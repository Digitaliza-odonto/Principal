<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id_solicitante = $data['id_solicitante'];
    
    $query = "SELECT * FROM `solicitacao_materiais` WHERE `id_solicitante` = '$id_solicitante'";
    
    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhuma solicitação de material encontrada."));
    } else {
        echo json_encode($result);
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>