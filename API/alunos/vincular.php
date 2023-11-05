<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id_demanda = $data['id_demanda'];
    $CPF_paciente = $data['CPF'];
    $Matricula_aluno = $data['matricula'];
    $Status = 'Ativo';
    $Turma = $data['turma_id'];
    $Complexidade = $data['Complexidade'];
    $Especialidade = $data['Especialidade'];
    $Descricao = $data['Demanda'];

    $existingVinculo = db("SELECT * FROM vinculo_aluno_paciente WHERE CPF_paciente = '$CPF_paciente' AND Matricula_aluno = '$Matricula_aluno'");

    if (count($existingVinculo) > 0) {
        echo json_encode(array("vinculoCriado" => false, "message" => "Vínculo já existe"));
    } else {
        $insertQuery = "INSERT INTO vinculo_aluno_paciente (id_demanda, CPF_paciente, Matricula_aluno, Status, Turma, Complexidade, Especialidade, Descrição) 
                        VALUES ('$id_demanda', '$CPF_paciente', '$Matricula_aluno', '$Status', '$Turma', '$Complexidade', '$Especialidade', '$Descricao')";

        try {
            db($insertQuery);
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