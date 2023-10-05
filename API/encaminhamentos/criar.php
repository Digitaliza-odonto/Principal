<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $CPF = $data['CPF'];
    $Data = $data['Data'];
    $Especialidade = $data['Especialidade'];
    $Demanda = $data['Demanda'];
    $Status = $data['Status'];
    $Curso = $data['Curso'];
    $Complexidade = $data['Complexidade'];
    $Observacoes = $data['Observacoes'];

    $insertQuery = "INSERT INTO encaminhamentos (CPF, Data, Especialidade, Demanda, Status, Curso, Complexidade, Observacoes) VALUES ('$CPF', '$Data', '$Especialidade', '$Demanda', '$Status', '$Curso', '$Complexidade', '$Observacoes')";

    
    echo json_encode(array("message" => "Encaminhamento criado com sucesso"));
    
    db($insertQuery);
    
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
