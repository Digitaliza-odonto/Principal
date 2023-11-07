<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    
    $Matricula = $data['Matricula'];
    $Turma = $data['Turma'];

    // First SQL operation to retrieve data from 'alunos' table
    $alunosResult = db("SELECT * FROM `alunos` WHERE `matricula` = '$Matricula'");

    // Second SQL operation to retrieve data from 'disciplinas' table based on Turma ID
    $disciplinasResult = db("SELECT * FROM `disciplinas` WHERE `id` = '$Turma'");

    // Check if any results are found
    if (count($alunosResult) === 0) {
        echo json_encode(array("error" => "Nenhum aluno encontrado."));
    } else if (count($disciplinasResult) === 0) {
        echo json_encode(array("error" => "Nenhuma disciplina encontrada."));
    } else {
        // Prepare the response with both sets of data
        $response = array(
            "alunos" => $alunosResult,
            "disciplinas" => $disciplinasResult
        );
        echo json_encode($response);
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
