<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $matricula = $data['Matricula'];
    $CPF = $data['CPF'];

    $query = db("SELECT `Turma` FROM `vinculo_aluno_paciente` WHERE `CPF_paciente` = '$CPF' AND `Matricula_aluno` = '$matricula'");  

    if ($query && count($query) > 0) {
        $turma = $query[0]['Turma']; // Extract 'Turma' value from the result

        // Perform the second query using the obtained 'Turma' value
        $secondQuery = db("SELECT *  FROM `disciplinas` WHERE `id` = '$turma'");

        echo json_encode($secondQuery);
    } else {
        echo json_encode(array("message" => "No matching data found"));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
