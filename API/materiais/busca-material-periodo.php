<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

// Initialize an array to store the data
$data = array();

// Get user inputs for year and semester
$year = mysqli_real_escape_string($connection, $_GET['year']);
$semester = mysqli_real_escape_string($connection, $_GET['semester']);

// Define start and end dates for the selected semester
if ($semester == '1st') {
    $startDate = "$year-01-01";
    $endDate = "$year-06-30";
} elseif ($semester == '2nd') {
    $startDate = "$year-07-01";
    $endDate = "$year-12-31";
} else {
    $startDate = "$year-01-01";
    $endDate = "$year-12-31";
}

// Fetch data from the database based on user inputs
$consulta = mysqli_query($connection, "SELECT * FROM materiais WHERE data_tramite BETWEEN '$startDate' AND '$endDate'");

if ($consulta) {
    while ($linha = mysqli_fetch_assoc($consulta)) {
        $data[] = $linha;
    }

    // Output the filtered data as JSON
    echo json_encode($data);
} else {
    // Handle the error gracefully and return an error JSON response
    $error = array("error" => "Database query error: " . mysqli_error($connection));
    echo json_encode($error);
}

// Close the database connection
mysqli_close($connection);
?>
