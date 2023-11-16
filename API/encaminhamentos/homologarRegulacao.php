<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);

    $id_regulacao = $data['id_regulacao'];
    
    $updateQuery = "UPDATE `regulacaointerna` SET `status_regulacao`='Atendido' WHERE `id_regulacao` = '$id_regulacao'";
    
    db($updateQuery);

    echo json_encode(array("message" => "Encaminhamento/Alta homologado com sucesso"));
    
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>










 