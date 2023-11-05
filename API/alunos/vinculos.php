<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $turma_id = $data['turma_id'];

    $vinculos = db("SELECT * FROM vinculo_aluno_paciente WHERE Turma = '$turma_id'");

    echo json_encode($vinculos);
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>