<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $matricula = $data['matricula'];
    $nome = $data['nome'];
    $turma_id = $data['turma_id'];

    $insertQuery = "INSERT INTO `relação_alunos_disciplinas` (`matricula`, `nome`, `turma_id`) 
                    VALUES ('$matricula', '$nome', '$turma_id')";

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