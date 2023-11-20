<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the database connection file

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id_vinculo = $data['id_vinculo'];
    $novoStatus = $data['novoStatus'];
    $motivoDesvinculacao = $data['motivoDesvinculacao'];
    $fimVinculo = date('Y-m-d');

    // DADOS PARA CRIAR NOVA DEMANDA
    $CPF = $data['CPF'];
    $Especialidade = $data['Especialidade'];
    $Complexidade = $data['Complexidade'];
    $Demanda = $data['encaminhamentoDemanda'];

    $existingVinculo = db("SELECT * FROM vinculo_aluno_paciente WHERE id = '$id_vinculo'");

    if (count($existingVinculo) > 0) {
        $id_demanda = $existingVinculo[0]['id_demanda'];

        $updateQuery = "UPDATE `vinculo_aluno_paciente` SET StatusVinculo='Inativo', `fimVinculo`='$fimVinculo', `motivoDesvinculacao`='$motivoDesvinculacao' WHERE id = '$id_vinculo'";

        try {
            db($updateQuery);
            echo json_encode(array("vinculoExcluido" => true, "message" => "Vínculo marcado como inativo com sucesso para o ID: $id_vinculo e a demanda ID: $id_demanda"));

            if ($novoStatus === 'Em espera') {
                $updateEncaminhamentosQuery = "UPDATE `encaminhamentos` SET `Status`='Encaminhado', `tramitado`='Sim',`data_tramite`='$fimVinculo' WHERE `id` = '$id_demanda'";

                try {
                    db($updateEncaminhamentosQuery);

                    // Insert new demanda
                    $insertNewDemanda = "INSERT INTO `encaminhamentos`(`CPF`, `Data`, `Especialidade`, `Complexidade`, `Demanda`, `Status`) VALUES ('$CPF', '$fimVinculo', '$Especialidade', '$Complexidade', '$Demanda', '$novoStatus')";

                    db($insertNewDemanda);
                } catch (PDOException $e) {
                    echo json_encode(array("message" => "Erro ao executar as consultas adicionais para o ID: $id_demanda - " . $e->getMessage()));
                }
            } else {
                $updateEncaminhamentosQuery = "UPDATE `encaminhamentos` SET `Status`='$novoStatus',`tramitado`='Sim', `data_tramite`='$fimVinculo' WHERE id = '$id_demanda'";
                  

                try {
                    db($updateEncaminhamentosQuery);
                } catch (PDOException $e) {
                    echo json_encode(array("message" => "Erro ao executar as consultas adicionais para o ID: $id_demanda - " . $e->getMessage()));
                }
            }
        } catch (PDOException $e) {
            echo json_encode(array("message" => "Erro ao marcar vínculo como inativo para o ID: $id_vinculo - " . $e->getMessage()));
        }
    } else {
        echo json_encode(array("vinculoExcluido" => false, "message" => "Vínculo não encontrado para o ID: $id_vinculo"));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
