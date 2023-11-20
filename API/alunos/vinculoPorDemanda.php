<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $CPF = $data['CPF'];
    $id_demanda = $data['id_demanda'];

    $vinculos = db("SELECT * FROM `vinculo_aluno_paciente` WHERE `CPF_paciente` = '$CPF' AND `id_demanda` = '$id_demanda'");

    $result = array();

    foreach ($vinculos as $vinculo) {
        $Matricula_aluno = $vinculo['Matricula_aluno'];
        $Turma = $vinculo['Turma'];

        // Query to get nome from alunos table
        $alunoQuery = db("SELECT `nome` FROM `alunos` WHERE `matricula` = '$Matricula_aluno'"); 
        $alunoNome = $alunoQuery[0]['nome']; // Assuming it returns only one row

        // Query to get atividade from disciplinas table
        $disciplinaQuery = db("SELECT `atividade` FROM `disciplinas` WHERE `id` = '$Turma'");
        $disciplinaAtividade = $disciplinaQuery[0]['atividade']; // Assuming it returns only one row

        // Creating an array with the additional information
        $additionalInfo = array(
            "nome_aluno" => $alunoNome,
            "atividade_turma" => $disciplinaAtividade
        );

        $result[] = array_merge($vinculo, $additionalInfo);
    }

    echo json_encode($result);
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
