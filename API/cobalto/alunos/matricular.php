<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $matricula = $data['matricula'];
    $nome_aluno = $data['nome_aluno'];
    $codigo_disciplina = $data['codigo_disciplina'];
    $turma_id = $data['turma_id'];
    $turma = $data['turma'];
    $nome_disciplina = $data['nome_disciplina'];

    $insertQuery = "INSERT INTO relação_alunos_disciplinas (matricula, nome_aluno, codigo_disciplina, turma_id, turma, nome_disciplina) 
                    VALUES ('$matricula', '$nome_aluno', '$codigo_disciplina', '$turma_id', '$turma', '$nome_disciplina')";

    try {
        db($insertQuery);
        echo json_encode(array("message" => "Aluno matriculado com sucesso"));
    } catch (PDOException $e) {
        echo json_encode(array("message" => "Erro ao matricular aluno: " . $e->getMessage()));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>