<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $dados = json_decode(file_get_contents('php://input'), true);
    $CPF = $dados['CPF']; 
    $data = date('Y-m-d');
    $queixa = $dados['queixa'];
    $aspectoRelevante = $dados['aspectoRelevante'];
    $especialidade = implode(',', $dados['especialidade']); // Convert array to comma-separated string
    $descricao = $dados['descricao'];
    $aluno_id = $dados['aluno_id'];
    $responsavel = $dados['responsavel'];
    $componente_curricular = $dados['componente_curricular'];

    $insertQuery = "INSERT INTO `plano_tto`(`CPF`, `data`, `queixa`, `aspectoRelevante`, `especialidade`, `descricao`, `aluno_id`, `responsavel`, `componente_curricular`) VALUES ('$CPF', '$data', '$queixa', '$aspectoRelevante', '$especialidade', '$descricao', '$aluno_id', '$responsavel', '$componente_curricular')";

    echo json_encode(array("message" => "Plano de tratamento cadastrado com sucesso"));

    db($insertQuery);

} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
