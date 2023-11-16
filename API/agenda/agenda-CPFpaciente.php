<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

// Initialize an array to store the data
$data = array();
$stmt = null; // Define $stmt variable here

// Get the JSON data from the request body
$json_data = file_get_contents("php://input");
$request_data = json_decode($json_data, true);

// Check if 'cpf_paciente' parameter is present in the JSON data
if(isset($request_data['cpf_paciente'])){
    $cpf_paciente = $request_data['cpf_paciente'];

    // Modified SQL query to include the condition for 'data_agendamento'
    $stmt = mysqli_prepare($connection, "SELECT * FROM `agenda-clinicas` WHERE `cpf_paciente` = ? AND `data_agendamento` >= CURRENT_DATE");
    mysqli_stmt_bind_param($stmt, "s", $cpf_paciente);

    // Execute the statement
    mysqli_stmt_execute($stmt);

    // Get results from the statement
    $result = mysqli_stmt_get_result($stmt);

    // Fetch data from the result set
    while ($linha = mysqli_fetch_assoc($result)) {
        $agendado_por = $linha['agendado_por'];

        // New SQL query to fetch 'Nome' from 'usuarios' based on 'Matricula' (agendado_por)
        $stmt_nome = mysqli_prepare($connection, "SELECT `Nome` FROM `usuarios` WHERE `Matricula` = ?");
        mysqli_stmt_bind_param($stmt_nome, "s", $agendado_por);
        mysqli_stmt_execute($stmt_nome);
        $result_nome = mysqli_stmt_get_result($stmt_nome);

        // Fetching 'Nome' from the result set and adding it to the data array
        if ($row_nome = mysqli_fetch_assoc($result_nome)) {
            $linha['nome_usuario'] = $row_nome['Nome']; // Adding 'Nome' to the existing data
        }

        // Adding the modified row to the data array
        $data[] = $linha;
    }

    // Output the data as JSON
    echo json_encode($data);

} else {
    // Handle the case when 'cpf_paciente' parameter is not provided
    $error = array("error" => "Missing 'cpf_paciente' parameter");
    echo json_encode($error);
}

// Close the prepared statement and the database connection
if ($stmt != null) {
    mysqli_stmt_close($stmt);
}
mysqli_close($connection);

?>
