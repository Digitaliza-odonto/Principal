<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the database connection file

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
      
    $id = $data['id'];
    $encaminhamentoDemanda = $data['encaminhamentoDemanda'];
    $statusPendencia = $data['statusPendencia'];
    $homologado = 'Sim';
    
    // Update query to modify 'solicitacaoDescricao', 'status_regulacao', and 'data_tramite'
    $updateQuery = "UPDATE `encaminhamentos` SET `Demanda`='$encaminhamentoDemanda', `homologado` = '$homologado', `Status`='$statusPendencia' WHERE `id` = '$id'";

    try {
        db($updateQuery);
        echo json_encode(array("updated" => true, "message" => "Demanda: '$id' '$statusPendencia' com sucesso"));
    } catch (PDOException $e) {
        echo json_encode(array("updated" => false, "message" => "Erro ao processar o pedido" . $e->getMessage()));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
