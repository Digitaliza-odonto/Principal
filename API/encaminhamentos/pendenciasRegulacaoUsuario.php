<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the file for database connection

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $Matricula = $data['Matricula'];

    $query = "SELECT * FROM `regulacaointerna` WHERE `id_matricula` = '$Matricula' AND `status_regulacao` = 'Devolvido ao usuário'";

    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum encaminhamento encontrado."));
    } else {
        $finalResult = array();

        foreach ($result as $row) {
            $id_matricula = $row['id_matricula'];
            $id_turma = $row['id_turma'];

            // Query to get nome from alunos table
            $queryNome = "SELECT `nome` FROM `alunos` WHERE `matricula` = '$id_matricula'";
            $resultNome = db($queryNome);

            // Query to get atividade from disciplinas table
            $queryAtividade = "SELECT `atividade` FROM `disciplinas` WHERE `id` = '$id_turma'";
            $resultAtividade = db($queryAtividade);

            $rowData = array(
                "id_matricula" => $id_matricula,
                "id_turma" => $id_turma,
                "nome_aluno" => ($resultNome) ? $resultNome[0]['nome'] : null,
                "atividade_disciplina" => ($resultAtividade) ? $resultAtividade[0]['atividade'] : null
            );

            // Merge initial_query_result into rowData
            $rowData = array_merge($rowData, $row);

            $finalResult[] = $rowData;
        }

        echo json_encode($finalResult);
    }
} 
?>
