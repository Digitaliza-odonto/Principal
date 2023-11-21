<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

// Retrieve JSON data from the request body
$input_data = json_decode(file_get_contents("php://input"), true);

// Check if 'selectedId' is present in the input data
if (isset($input_data['selectedId']) && is_array($input_data['selectedId']) && !empty($input_data['selectedId'])) {
    // Sanitize and prepare the array of selected IDs for the DELETE query
    $selectedIds = array_map(function ($id) use ($connection) {
        return mysqli_real_escape_string($connection, $id);
    }, $input_data['selectedId']);

    // Convert the array of IDs to a comma-separated string for the SQL query
    $idList = implode(",", $selectedIds);

    // Perform the DELETE query
    $sql = "UPDATE `agenda-clinicas` SET `status_agendamento`='Desmarcado pelo aluno' WHERE `id_agendamento` IN ($idList)";

    if (mysqli_query($connection, $sql)) {
        // Return success message as JSON
        echo json_encode("Agendamento(s) excluído(s) com sucesso.");
    } else {
        // Return error message as JSON
        echo json_encode("Erro ao excluir agendamento(s): " . mysqli_error($connection));
    }
} else {
    // Return error message as JSON if 'selectedId' is missing or empty
    echo json_encode("Nenhum ID de agendamento foi fornecido para exclusão.");
}
?>
