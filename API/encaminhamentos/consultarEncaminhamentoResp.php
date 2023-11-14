<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id = $data['id'];  // Use lowercase 'id' to match the JSON key

    $query = "SELECT * FROM `encaminhamentos` WHERE `responsavelEncaminhamento` = '$id' AND `homologado` != 'Sim'";
    
    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum atendimento encontrado."));
    } else {
        $finalResult = array();
        foreach ($result as $row) {
            $CPF = $row['CPF'];
            $alunoEncaminhamento = $row['alunoEncaminhamento'];

            // Query to get 'Nome' from 'pacientes' table using 'CPF'
            $queryCPF = "SELECT `Nome` FROM `pacientes` WHERE `CPF` = '$CPF'";
            $resultCPF = db($queryCPF);

            // Query to get 'nome' from 'alunos' table using 'alunoEncaminhamento'
            $queryAluno = "SELECT `nome` FROM `alunos` WHERE `matricula` = '$alunoEncaminhamento'";
            $resultAluno = db($queryAluno);

            // Merge data and add to final result
            $row['NomePaciente'] = $resultCPF[0]['Nome'] ?? null;
            $row['NomeAluno'] = $resultAluno[0]['nome'] ?? null;
            $finalResult[] = $row;
        }
        echo json_encode($finalResult);
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
