<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $turma_ids = $data['turma_ids'];

    $result = array();

    // Loop through the array of turma_ids
    foreach ($turma_ids as $turma_id) {
        $selectQuery = "SELECT * FROM `disciplinas` WHERE `id` = '$turma_id'";
        
        try {
            $turmaResult = db($selectQuery);

            // Add the result to the array
            $result[] = $turmaResult;
        } catch (PDOException $e) {
            // Handle errors if needed
            $result[] = array("error" => "Erro ao consultar disciplina: " . $e->getMessage());
        }
    }

    // Output the combined results as JSON
    echo json_encode($result);
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
