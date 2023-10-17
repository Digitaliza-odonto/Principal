<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

// Get JSON data from the request body
$json_data = file_get_contents("php://input");
$request_data = json_decode($json_data, true);

// Initialize an array to store the data
$data = array();

// Check if required parameters are present in the JSON data
if(isset($request_data['matricula']) && isset($request_data['cod_disciplina']) && isset($request_data['periodo'])){
    // Use prepared statement to prevent SQL injection
    $query = "SELECT * FROM avaliacoesAtendimento WHERE matricula = ? AND cod_disciplina = ? AND periodo = ?";
    $stmt = mysqli_prepare($connection, $query);

    // Bind the parameters
    mysqli_stmt_bind_param($stmt, "sss", $request_data['matricula'], $request_data['cod_disciplina'], $request_data['periodo']);
    
    // Check for errors in the prepared statement
    if ($stmt === false) {
        $error = array("error" => "Error in SQL statement: " . mysqli_error($connection));
        echo json_encode($error);
    } else {
        // Execute the statement
        mysqli_stmt_execute($stmt);
        
        // Get the result
        $result = mysqli_stmt_get_result($stmt);
        
        // Fetch data and add to the $data array
        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row; // Add each row to the data array
        }

        // Output the data as JSON
        echo json_encode($data);

        // Close the statement
        mysqli_stmt_close($stmt);
    }
} else {
    // Handle the case where parameters are missing in the JSON data
    $error = array("error" => "Invalid or missing parameters.");
    echo json_encode($error);
}

// Close the database connection
mysqli_close($connection);
?>
