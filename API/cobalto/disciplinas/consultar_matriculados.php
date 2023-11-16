<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $turma_id = $data['turma_id'];

    $selectQuery = "SELECT * FROM relação_alunos_disciplinas WHERE turma_id = '$turma_id'";

    try {
        $result = db($selectQuery);
                
        echo json_encode($result);
        
    } catch (PDOException $e) {
        echo json_encode(array("message" => "Erro ao consultar alunos matriculados: " . $e->getMessage()));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>