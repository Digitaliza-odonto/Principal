<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

// Initialize an array to store the distinct values
$distinctValues = array();

// Fetch distinct values from the database
$consulta = mysqli_query($connection, "SELECT DISTINCT tipo_material FROM materiais");

if ($consulta) {
    while ($linha = mysqli_fetch_assoc($consulta)) {
        $distinctValues[] = $linha['tipo_material'];
    }

    // Output the JSON response
    echo json_encode($distinctValues);
} else {
    // Handle the error gracefully and return an error JSON response
    $error = array("error" => "Database query error: " . mysqli_error($connection));
    echo json_encode($error);
}

// Close the database connection
mysqli_close($connection);

?>
