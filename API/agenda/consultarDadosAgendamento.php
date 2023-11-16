<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the database connection file

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);

    if (isset($data['id'])) { // Check if 'id' key exists in the received data
        $id = $data['id'];  // Use lowercase 'id' to match the JSON key
        
        $query = "SELECT * FROM `agenda-clinicas` WHERE `id_agendamento` = '$id'";
        
        $result = db($query);

        if ($result && count($result) > 0) {
            echo json_encode($result);
        } else {
            echo json_encode(array("error" => "Nenhum agendamento encontrado para o ID fornecido."));
        }
    } else {
        echo json_encode(array("error" => "Parâmetro 'id' ausente ou inválido."));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
