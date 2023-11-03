<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the file that contains the database connection

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);

    $idAtendimentos = $data['id_atendimentos'];
    $atendimentoDescrição = $data['atendimentoDescrição'];
    $homologado = '1';
    $data_homolog = date('Y-m-d');

    $updateQuery = "UPDATE `historicoatendimentos` SET 
                    `descricao`='$atendimentoDescrição',
                    `homologado`='$homologado',
                    `data_homolog`='$data_homolog'
                    WHERE `id_atendimentos`='$idAtendimentos';";

    db($updateQuery);

    echo json_encode(array("message" => "Atendimento homologado com sucesso"));
    
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>