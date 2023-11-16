<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../db.php');

// Get the JSON data from the request body
$jsonData = file_get_contents('php://input');
$data = json_decode($jsonData);

// Check if 'id' key exists in the JSON data
if (isset($data->id)) {
    // Get the value of 'id' from the JSON data
    $id = $data->id;

    // Use prepared statement to avoid SQL injection
    $query = "SELECT * FROM `agenda-clinicas` WHERE `agendado_por` = '$id' AND (`status_agendamento` = 'No local')";

    $result = db($query);

    if ($result) {
        $patientsData = array();
        
        foreach ($result as $row) {
            $cpf = $row['cpf_paciente'];
            
            $queryPatient = "SELECT `Nome` FROM `pacientes` WHERE `CPF` = '$cpf'";
            $resultPatient = db($queryPatient);
            
            if ($resultPatient && count($resultPatient) > 0) {
                $patientName = $resultPatient[0]['Nome'];
                $row['Nome'] = $patientName;
                $patientsData[] = $row;
            } else {
                $row['Nome'] = "Nome not found";
                $patientsData[] = $row;
            }
        }
        
        // Output the data as JSON
        echo json_encode($patientsData);
    } else {
        // Handle the error gracefully and return an error JSON response
        $error = array("error" => "No data found for the given ID");
        echo json_encode($error);
    }
} else {
    // Return an error JSON response if 'id' key is not present in the JSON data
    $error = array("error" => "Invalid or missing 'id' parameter in the request body");
    echo json_encode($error);
}

?>
