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

// Check if periodo and cod_disciplina parameters are present in the JSON data
if(isset($request_data['periodo']) && isset($request_data['cod_disciplina'])){
    $periodo = $request_data['periodo'];
    $cod_disciplina = $request_data['cod_disciplina'];

    // Use prepared statement to prevent SQL injection
    $query = "SELECT * FROM avaliacoesAtendimento WHERE periodo = ? AND cod_disciplina = ?";
    $stmt = mysqli_prepare($connection, $query);

    // Check for errors in the prepared statement
    if ($stmt === false) {
        $error = array("error" => "Error in SQL statement: " . mysqli_error($connection));
        echo json_encode($error);
    } else {
        // Bind the parameters
        mysqli_stmt_bind_param($stmt, "ss", $periodo, $cod_disciplina);

        // Execute the statement
        mysqli_stmt_execute($stmt);

        // Get the results
        $result = mysqli_stmt_get_result($stmt);

        // Fetch data and store it in the array
        while ($row = mysqli_fetch_assoc($result)) {
            $data[] = $row;
        }

        // Output the data as JSON
        echo json_encode($data);

        // Close the statement
        mysqli_stmt_close($stmt);
    }
} else {
    // Handle the case when periodo and/or cod_disciplina parameters are not provided in the JSON data
    $error = array("error" => "Invalid or missing parameters.");
    echo json_encode($error);
}

// Close the database connection
mysqli_close($connection);
?>
