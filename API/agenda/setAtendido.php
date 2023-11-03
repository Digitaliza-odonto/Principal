<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

// Get JSON data from the request body
$data = json_decode(file_get_contents("php://input"), true);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Check if 'id' is set in the JSON data
    if(isset($data['id'])){
        // Get the form data
        $id_agendamento = $data['id'];
        
        // Prepare SQL statement
        $query = "UPDATE `agenda-clinicas` SET `status_agendamento`='Atendido' WHERE `id_agendamento`=?";
        $stmt = $connection->prepare($query);
        
        // Check if the query was prepared successfully
        if($stmt === false) {
            die(json_encode(["success" => false, "message" => "Prepare failed: " . $connection->error]));
        }
        
        // Bind parameters
        if ($stmt->bind_param("s", $id_agendamento)) {
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
        echo json_encode(["success" => false, "message" => "ID de agendamento inválido ou ausente."]);
    }
}

// Close the connection
$connection->close();
?>
