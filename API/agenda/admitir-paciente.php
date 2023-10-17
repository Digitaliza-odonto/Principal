<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

// Get JSON data from the request body
$data = json_decode(file_get_contents("php://input"), true);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Check if 'status' and 'ids' are set in the JSON data
    if(isset($data['status']) && isset($data['ids'])){
        // Get the form data
        $alteraStatus = $data['status'];
        $ids_agendamento = $data['ids']; // IDs are already in array format
        
        // Prepare SQL statement
        $query = "UPDATE `agenda-clinicas` SET `status_agendamento`=? WHERE `id_agendamento` IN (";
        $placeholders = str_repeat('?,', count($ids_agendamento) - 1) . '?)';
        $query .= $placeholders;
        $stmt = $connection->prepare($query);
        
        // Check if the query was prepared successfully
        if($stmt === false) {
            die(json_encode(["success" => false, "message" => "Prepare failed: " . $connection->error]));
        }
        
        // Bind parameters dynamically
        $bindParams = array_merge([$alteraStatus], $ids_agendamento);
        
        // Determine the types for bind_param dynamically
        $types = str_repeat('s', count($ids_agendamento) + 1); // Assuming 'status' is a string
        
        // Bind parameters
        if ($stmt->bind_param($types, ...$bindParams)) {
            // Execute the statement
            if ($stmt->execute()) {
                echo json_encode(["success" => true, "message" => "Status do agendamento alterado com sucesso"]);
            } else {
                echo json_encode(["success" => false, "message" => "Erro ao alterar o status do agendamento: " . $stmt->error]);
            }
        } else {
            echo json_encode(["success" => false, "message" => "Binding parameters failed: " . $stmt->error]);
        }
        
        // Close the statement
        $stmt->close();
    } else {
        echo json_encode(["success" => false, "message" => "Parâmetros inválidos"]);
    }
}

// Close the connection
$connection->close();
?>
