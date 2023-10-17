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

// Check if matricula parameter is present in the JSON data
if(isset($request_data['matricula'])) {
    $matricula = $request_data['matricula'];

    // Prepare the SQL query with a placeholder for matricula
    $query = "SELECT * FROM avaliacoesAtendimento WHERE matricula = ?";
    
    // Prepare the statement
    $stmt = mysqli_prepare($connection, $query);

    // Check for errors in the prepared statement
    if ($stmt === false) {
        $error = array("error" => "Error in SQL statement: " . mysqli_error($connection));
        echo json_encode($error);
    } else {
        // Bind the matricula parameter to the placeholder
        mysqli_stmt_bind_param($stmt, "s", $matricula);

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
    // Handle the case when matricula parameter is not provided in the JSON data
    $error = array("error" => "Matricula parameter is missing.");
    echo json_encode($error);
}

// Close the database connection
mysqli_close($connection);
?>
