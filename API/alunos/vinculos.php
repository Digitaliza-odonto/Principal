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
    
    // Loop through the fetched vinculos to perform additional SQL operation
    foreach ($vinculos as &$vinculo) {
        $matricula_aluno = $vinculo['Matricula_aluno'];
        
        // Perform SQL operation to get 'nome' from 'alunos' table based on 'Matricula_aluno'
        $aluno_info = db("SELECT nome FROM alunos WHERE matricula = '$matricula_aluno'");
        
        // Add 'nome' to each JSON object in the $vinculos array
        $vinculo['nome_aluno'] = $aluno_info[0]['nome']; // Assuming one result is expected
    }

    echo json_encode($vinculos);
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
