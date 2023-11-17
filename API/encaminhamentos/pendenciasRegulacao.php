<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        
    $query = "SELECT * FROM `regulacaointerna` WHERE `status_regulacao` = 'Devolvido ao usuário'";

    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum encaminhamento encontrado."));
    } else {
        $finalResult = array();

        foreach ($result as $row) {
            $id_matricula = $row['id_matricula'];
            $id_turma = $row['id_turma'];

            // Query to fetch nome from alunos table
            $queryAlunos = "SELECT `nome` FROM `alunos` WHERE `matricula` = '$id_matricula'";
            $resultAlunos = db($queryAlunos);

            // Query to fetch atividade from disciplinas table
            $queryDisciplinas = "SELECT `atividade` FROM `disciplinas` WHERE `id` = '$id_turma'";
            $resultDisciplinas = db($queryDisciplinas);

            $row['nome_aluno'] = (count($resultAlunos) > 0) ? $resultAlunos[0]['nome'] : null;
            $row['atividade_disciplina'] = (count($resultDisciplinas) > 0) ? $resultDisciplinas[0]['atividade'] : null;

            $finalResult[] = $row;
        }

        echo json_encode($finalResult);
    }
} 
?>
