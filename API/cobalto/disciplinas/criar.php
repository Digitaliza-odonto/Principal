<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $cod_atividade = $data['cod_atividade'];
    $atividade = $data['atividade'];
    $cod_turma = $data['cod_turma'];
    $matriculas_vagas = $data['matriculas_vagas'];
    $nr_matricula_especial = $data['nr_matricula_especial'];
    $nr_total_matricula = $data['nr_total_matricula'];
    $nr_total_vagas = $data['nr_total_vagas'];
    $id = $data['id'];

    $existingDisciplina = db("SELECT * FROM disciplinas WHERE cod_atividade = '$cod_atividade' AND cod_turma = '$cod_turma'");

    if (count($existingDisciplina) > 0) {
        echo json_encode(array("diciplinaCriada" => false, "message" => "Disciplina já existe"));
    } else {
        $insertQuery = "INSERT INTO disciplinas (id, cod_atividade, atividade, cod_turma, matriculas_vagas, nr_matricula_especial, nr_total_matricula, nr_total_vagas) 
                        VALUES ('$id', '$cod_atividade', '$atividade', '$cod_turma', '$matriculas_vagas', '$nr_matricula_especial', '$nr_total_matricula', '$nr_total_vagas')";

        try {
            db($insertQuery);
            echo json_encode(array("diciplinaCriada" => true, "message" => "Disciplina criada com sucesso"));
        } catch (PDOException $e) {
            echo json_encode(array("message" => "Erro ao criar disciplina: " . $e->getMessage()));
        }
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
