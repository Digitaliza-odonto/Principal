<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the file that contains the database connection

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    
    $Matricula = $data['Matricula'];
    
    // First query to get all rows from relação_alunos_disciplinas
    $queryRelacaoAlunosDisciplinas = "SELECT * FROM `relação_alunos_disciplinas` WHERE `matricula` = '$Matricula'";
    $resultRelacaoAlunosDisciplinas = db($queryRelacaoAlunosDisciplinas);
    
    if (count($resultRelacaoAlunosDisciplinas) === 0) {
        echo json_encode(array("error" => "Nenhuma matricula encontrada."));
    } else {
        $resultDisciplinas = array();
        
        // Loop through the result of relação_alunos_disciplinas and fetch corresponding rows from disciplinas
        foreach ($resultRelacaoAlunosDisciplinas as $row) {
            $turmaId = $row['turma_id'];
            
            // Second query to get disciplinas based on turma_id
            $queryDisciplinas = "SELECT * FROM `disciplinas` WHERE `id` = '$turmaId'";
            $resultDisciplinas[] = db($queryDisciplinas);
        }
        
        // Combine the arrays into a single array of objects
        $formattedResult = array();
        foreach ($resultDisciplinas as $disciplinas) {
            foreach ($disciplinas as $disciplina) {
                $formattedResult[] = $disciplina;
            }
        }
        
        echo json_encode($formattedResult);
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
