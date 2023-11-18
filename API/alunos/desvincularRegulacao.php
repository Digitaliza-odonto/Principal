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

    $existingVinculo = db("SELECT * FROM vinculo_aluno_paciente WHERE id = '$id_vinculo'");

    if (count($existingVinculo) > 0) {
        // Assuming 'id_demanda' is returned from the first query
        $id_demanda = $existingVinculo[0]['id_demanda'];

        $updateQuery = "UPDATE `vinculo_aluno_paciente` SET StatusVinculo='Inativo', `fimVinculo`='$fimVinculo', `motivoDesvinculacao`='$motivoDesvinculacao' WHERE id = '$id_vinculo'";

        try {
            db($updateQuery);
            echo json_encode(array("vinculoExcluido" => true, "message" => "Vínculo marcado como inativo com sucesso para o ID: $id_vinculo e a demanda ID: $id_demanda"));

            // Perform the additional queries using 'id_demanda'
            $updateRegulacaoQuery = "UPDATE regulacaointerna SET status_regulacao='Tramitado', data_tramite='$fimVinculo' WHERE id_regulacao = '$id_demanda'";
            $updateEncaminhamentosQuery = "UPDATE `encaminhamentos` SET `Status`='$novoStatus',`dataFimVinculo`='$fimVinculo' WHERE id = '$id_demanda'";

            // Execute the additional queries
            try {
                db($updateRegulacaoQuery);
                db($updateEncaminhamentosQuery);
            } catch (PDOException $e) {
                echo json_encode(array("message" => "Erro ao executar as consultas adicionais para o ID: $id_demanda - " . $e->getMessage()));
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
