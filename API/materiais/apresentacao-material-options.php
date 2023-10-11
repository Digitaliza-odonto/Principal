<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

// Initialize an array to store the distinct values
$distinctValues = array();

// Fetch distinct values from the database
$consulta = mysqli_query($connection, "SELECT DISTINCT apresentacao FROM materiais");

if ($consulta) {
    while ($linha = mysqli_fetch_assoc($consulta)) {
        $distinctValues[] = $linha['apresentacao'];
    }

    // Generate the HTML options dynamically
    $optionsHTML = '';
    foreach ($distinctValues as $value) {
        $optionsHTML .= '<option value="' . htmlspecialchars($value) . '">' . htmlspecialchars($value) . '</option>';
    }

    // Output the HTML options
    echo $optionsHTML;
} else {
    // Handle the error gracefully and return an error JSON response
    $error = array("error" => "Database query error: " . mysqli_error($connection));
    echo json_encode($error);
}

// Close the database connection
mysqli_close($connection);
?>
