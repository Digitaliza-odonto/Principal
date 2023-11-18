<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the file for the database connection

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        
    $query = "SELECT * FROM `regulacaointerna` WHERE `status_regulacao` = 'Solicitado'";

    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum encaminhamento encontrado."));
    } else {
        $finalResult = array();

        foreach ($result as $row) {
            $id_matricula = $row['id_matricula'];
            $id_turma = $row['id_turma'];

            // Query to get aluno's name
            $queryAluno = "SELECT `nome` FROM `alunos` WHERE `matricula` = '$id_matricula'";
            $resultAluno = db($queryAluno);
            $alunoNome = ($resultAluno && count($resultAluno) > 0) ? $resultAluno[0]['nome'] : '';

            // Query to get atividade from disciplinas
            $queryDisciplina = "SELECT `atividade` FROM `disciplinas` WHERE `id` = '$id_turma'";
            $resultDisciplina = db($queryDisciplina);
            $atividade = ($resultDisciplina && count($resultDisciplina) > 0) ? $resultDisciplina[0]['atividade'] : '';

            $row['aluno_nome'] = $alunoNome;
            $row['atividade'] = $atividade;

            $finalResult[] = $row;
        }

        echo json_encode($finalResult);
    }
} 
?>
