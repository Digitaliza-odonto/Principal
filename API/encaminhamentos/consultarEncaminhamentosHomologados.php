<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        
    $query = "SELECT * FROM `encaminhamentos` WHERE `Status` = 'Aguardando homologação da alta' OR `Status` = 'Aguardando homologação do encaminhamento'";

    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum encaminhamento encontrado."));
    } else {
        $finalResult = array();
        foreach ($result as $row) {
            $alunoEncaminhamento = $row['alunoEncaminhamento'];
            $origemID = $row['origemID'];

            $queryAlunos = "SELECT `nome` FROM `alunos` WHERE `matricula` = '$alunoEncaminhamento'";
            $resultAlunos = db($queryAlunos);

            $queryDisciplinas = "SELECT `atividade` FROM `disciplinas` WHERE `id` = '$origemID'";
            $resultDisciplinas = db($queryDisciplinas);

            $row['nomeAluno'] = count($resultAlunos) > 0 ? $resultAlunos[0]['nome'] : 'Aluno não encontrado';
            $row['atividadeDisciplina'] = count($resultDisciplinas) > 0 ? $resultDisciplinas[0]['atividade'] : 'Atividade não encontrada';

            $finalResult[] = $row;
        }
        echo json_encode($finalResult);
    }
}
?>
