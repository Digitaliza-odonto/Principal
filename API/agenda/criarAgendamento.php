<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

// Retrieve JSON data from the request body
$input_data = json_decode(file_get_contents("php://input"), true);

// Check if the required fields are present and not empty
if (
    isset($input_data['agendado_por']) &&
    isset($input_data['cpf_paciente']) &&
    isset($input_data['descricao']) &&
    isset($input_data['data_agendamento']) &&
    isset($input_data['horario_agendamento']) &&
    isset($input_data['minuto_agendamento']) &&
    isset($input_data['atividade_curricular']) &&
    isset($input_data['local'])
) {
    // Retrieve form data
    $agendado_por = $input_data['agendado_por'];
    $cpf_paciente = $input_data['cpf_paciente'];
    $descricao = $input_data['descricao'];
    
    // Convert 'data_agendamento' to YYYY-MM-DD format
    $data_agendamento = DateTime::createFromFormat('d/m/Y', $input_data['data_agendamento']);
    $data_agendamento = $data_agendamento->format('Y-m-d');
    
    $horario_agendamento = $input_data['horario_agendamento'];
    $minuto_agendamento = $input_data['minuto_agendamento'];
    $atividade_curricular = $input_data['atividade_curricular'];
    $local = $input_data['local'];

    // Perform the database insertion with the auto-incremented ID
    $sql = "INSERT INTO `agenda-clinicas`(`agendado_por`, `cpf_paciente`, `data_agendamento`, `horario_agendamento`, `minuto_agendamento`, `atividade_curricular`, `descricao`, `local`, `status_agendamento`)
     VALUES (?, ?, ?, ?, ?, ?, ?, ?, 'Agendado')";

    $stmt = $connection->prepare($sql);

    // Bind parameters and execute the statement
    $stmt->bind_param("ssssssss", $agendado_por, $cpf_paciente, $data_agendamento, $horario_agendamento, $minuto_agendamento, $atividade_curricular, $descricao, $local);

    if ($stmt->execute()) {
        // Return success message as JSON
        echo json_encode("Agendamento cadastrado com sucesso.");
    } else {
        // Return error message as JSON
        echo json_encode("Erro ao cadastrar agendamento: " . $stmt->error);
    }

    // Close the prepared statement
    $stmt->close();
} else {
    // Return error message as JSON
    echo json_encode("Um ou mais campos não estão preenchidos ou não atendem às condições necessárias.");
}
?>
