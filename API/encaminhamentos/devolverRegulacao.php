<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the database connection file

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id_regulacao = $data['id_regulacao'];
    $solicitacaoDescricao = $data['solicitacaoDescricao'];
    $statusPendencia = $data['statusPendencia'];
    $data_tramite = date('Y-m-d');


    // Update query to modify 'solicitacaoDescricao', 'status_regulacao', and 'data_tramite'
    $updateQuery = "UPDATE `regulacaointerna` SET `solicitacaoDescricao`='$solicitacaoDescricao', `status_regulacao`='$statusPendencia', `data_tramite`='$data_tramite' WHERE `id_regulacao`='$id_regulacao'";

    try {
        db($updateQuery);
        echo json_encode(array("updated" => true, "message" => "Dados atualizados com sucesso para a Regulação de ID: $id_regulacao"));
    } catch (PDOException $e) {
        echo json_encode(array("updated" => false, "message" => "Erro ao atualizar os dados para a Regulação de ID: $id_regulacao - " . $e->getMessage()));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
