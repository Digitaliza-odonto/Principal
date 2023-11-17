<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id_demanda = $data['id'];
    $CPF_paciente = $data['CPF'];
    $Matricula_aluno = $data['matricula'];
    $StatusVinculo = 'Ativo';
    $Turma = $data['turma_id'];
    $Complexidade = $data['Complexidade'];
    $Especialidade = $data['Especialidade'];
    $Descricao = $data['Demanda'];
    $inicioVinculo = date('Y-m-d');
    $id_regulacao = $data['id_regulacao'];

    $existingVinculo = db("SELECT * FROM vinculo_aluno_paciente WHERE CPF_paciente = '$CPF_paciente' AND Matricula_aluno = '$Matricula_aluno'");

    if (count($existingVinculo) > 0) {
        echo json_encode(array("vinculoCriado" => false, "message" => "Vínculo já existe"));
    } else {
        $insertQuery = "INSERT INTO `vinculo_aluno_paciente`(`id_demanda`, `CPF_paciente`, `Matricula_aluno`, `Turma`, `Complexidade`, `Especialidade`, `Descrição`, `StatusVinculo`, `inicioVinculo`)
                            VALUES ('$id_demanda', '$CPF_paciente', '$Matricula_aluno', '$Turma', '$Complexidade', '$Especialidade', '$Descricao', '$StatusVinculo', '$inicioVinculo')"; 

        try {
            db($insertQuery);

            // Perform the SQL UPDATE operation
            $updateQuery = "UPDATE `encaminhamentos` SET `Status`='Em atendimento', `tramitado` = 'Sim', `data_tramite` = CURRENT_DATE WHERE `id` = '$id_demanda';";
            db($updateQuery);

            // Perform the SQL UPDATE2 operation
            $updateQuery2 = "UPDATE `regulacaointerna` SET `status_regulacao`='Tramitado',`data_tramite`= CURRENT_DATE WHERE `id_regulacao` = '$id_regulacao'";
            db($updateQuery2);

            $lastInsertedId = db("SELECT id FROM vinculo_aluno_paciente ORDER BY id DESC LIMIT 1");
            echo json_encode(array("vinculoCriado" => true, "message" => "Vínculo criado com sucesso", "id_vinculo" => $lastInsertedId[0]['id']));
        } catch (PDOException $e) {
            echo json_encode(array("message" => "Erro ao criar vínculo: " . $e->getMessage()));
        }
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
