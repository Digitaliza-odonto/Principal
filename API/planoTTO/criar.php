<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $dados = json_decode(file_get_contents('php://input'), true);
    $CPF = $dados['CPF'];
    $data = $dados['data'];
    $especialidade = $dados['especialidade'];
    $descricao = $dados['descricao'];
    $responsavel = $dados['responsavel'];
    $componente_curricular = $dados['componente_curricular'];

    $insertQuery = "INSERT INTO `plano_tto`(`CPF`, `data`, `especialidade`, `descricao`, `responsavel`, `componente_curricular`) VALUES ('$CPF', '$data', '$especialidade', '$descricao', '$responsavel', '$componente_curricular')";

    
    echo json_encode(array("message" => "Encaminhamento criado com sucesso"));
    
    db($insertQuery);
    
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
