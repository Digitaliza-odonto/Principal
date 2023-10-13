<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // If 'selectedId' is not present, it's an insert operation
    // Check if the form fields are set and meet the required conditions
    if (
        isset($_POST['agendado_por']) &&
        isset($_POST['cpf_paciente']) && isset($_POST['descricao']) &&
        isset($_POST['data_agendamento']) && isset($_POST['horario_agendamento']) &&
        isset($_POST['minuto_agendamento']) && isset($_POST['atividade_curricular']) && 
        isset($_POST['local'])
    ) {
        // Retrieve form data
        $agendado_por = $_POST['agendado_por'];
        $cpf_paciente = $_POST['cpf_paciente'];
        $descricao = $_POST['descricao'];
        $data_agendamento = $_POST['data_agendamento'];
        $horario_agendamento = $_POST['horario_agendamento'];
        $minuto_agendamento = $_POST['minuto_agendamento'];
        $atividade_curricular = $_POST['atividade_curricular'];
        $local = $_POST['local'];

        // Ensure 'data_agendamento' is greater than the current date
        $currentDate = date('Y-m-d');
        if ($data_agendamento <= $currentDate) {
            // Return error message as JSON
            echo json_encode("Data do agendamento deve ser maior que a data atual.");
            exit;
        }

        // Perform the database insertion with the auto-incremented ID
        $sql = "INSERT INTO `agenda-clinicas`(`id_agendamento`, `agendado_por`, `cpf_paciente`, `data_agendamento`, `horario_agendamento`, `minuto_agendamento`, `atividade_curricular`, `descricao`, `local`, `status_agendamento`)
         VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, 'Agendado')";

        $stmt = $connection->prepare($sql);

        // Bind parameters and execute the statement
        $stmt->bind_param("sssssssss", $id_agendamento, $agendado_por, $cpf_paciente, $data_agendamento, $horario_agendamento, $minuto_agendamento, $atividade_curricular, $descricao, $local);


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
} else {
    // Handle the case where the form was not submitted
    echo json_encode("Form not submitted.");
}
?>
