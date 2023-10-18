<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

// Get the JSON data from the request body
$jsonData = file_get_contents('php://input');
$data = json_decode($jsonData);

// Check if 'id' key exists in the JSON data
if (isset($data->id)) {
    // Get the value of 'id' from the JSON data
    $id = $data->id;

    // Use prepared statement to avoid SQL injection
    $stmt = $connection->prepare("SELECT * FROM `agenda-clinicas` WHERE `agendado_por` = ? AND (`status_agendamento` = 'Agendado' OR `status_agendamento` = 'No local')");
    $stmt->bind_param("s", $id);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result) {
        while ($linha = $result->fetch_assoc()) {
            $responseData[] = $linha;
        }

        // Output the data as JSON
        echo json_encode($responseData);
    } else {
        // Handle the error gracefully and return an error JSON response
        $error = array("error" => "Database query error: " . $connection->error);
        echo json_encode($error);
    }

    // Close the prepared statement and the database connection
    $stmt->close();
} else {
    // Return an error JSON response if 'id' key is not present in the JSON data
    $error = array("error" => "Invalid or missing 'id' parameter in the request body");
    echo json_encode($error);
}

$connection->close();
?>
