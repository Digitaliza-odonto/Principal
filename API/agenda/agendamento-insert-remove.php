<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['selectedId']) && is_array($_POST['selectedId'])) {
        // Check if 'selectedId' is present; if so, it's a delete operation
        $selectedIds = $_POST['selectedId'];

        // Loop through the selected IDs and delete the corresponding records
        $successMessage = "";
        $errorMessage = "";

        foreach ($selectedIds as $idToDelete) {
            // Perform the database deletion
            $sql = "DELETE FROM `agenda-clinicas` WHERE `agenda-clinicas`.`id_agendamento` = ?";
            $stmt = $connection->prepare($sql);
            $stmt->bind_param("i", $idToDelete);

            if ($stmt->execute()) {
                $successMessage = "Agendamento(s) deletado(s) com sucesso.";
            } else {
                $errorMessage = "Erro ao deletar agendamento: " . $stmt->error;
            }

            // Close the prepared statement
            $stmt->close();
        }

        // Return the response as JSON
        if ($errorMessage !== "") {
            echo json_encode($errorMessage);
        } else {
            echo json_encode($successMessage);
        }
    } else {
        // If 'selectedId' is not present, it's an insert or update operation
        // Check if the form fields are set and meet the required conditions
        if (
            isset($_POST['id_agendamento']) && 
            isset($_POST['agendado_por']) && // Check if agendado_por is set
            isset($_POST['cpf_paciente']) && isset($_POST['descricao']) && 
            isset($_POST['data_agendamento']) && isset($_POST['horario_agendamento']) &&
            isset($_POST['minuto_agendamento'])  && isset($_POST['local']) && isset($_POST['atividade_curricular'])
        ) {
            // Retrieve form data
            $id_agendamento = $_POST['id_agendamento'];
            $agendado_por = $_POST['agendado_por']; // Assign agendado_por to a variable
            $cpf_paciente = $_POST['cpf_paciente'];
            $descricao = $_POST['descricao'];
            $data_agendamento = $_POST['data_agendamento'];
            $horario_agendamento = $_POST['horario_agendamento'];
            $minuto_agendamento = $_POST['minuto_agendamento'];
            $local = $_POST['local'];
            $atividade_curricular = $_POST['atividade_curricular'];
        
            // Ensure 'data_agendamento' is greater than the current date
            $currentDate = date('Y-m-d');
            if ($data_agendamento <= $currentDate) {
                // Return error message as JSON
                echo json_encode("Data do agendamento deve ser maior que a data atual.");
                exit;
            }
    
            // Check if 'id_agendamento' is present; if so, it's an update operation
            if (isset($_POST['id_agendamento']) && $_POST['id_agendamento'] !== "") {
                $id_agendamento = $_POST['id_agendamento'];
                // Perform the database update
                $sql = "UPDATE `agenda-clinicas` SET `data_agendamento` = ?, `horario_agendamento` = ?, `minuto_agendamento` = ?, `local` = ?, `atividade_curricular` = ? WHERE `id_agendamento` = ?";
                $stmt = $connection->prepare($sql);
                $stmt->bind_param("sissi", $data_agendamento, $horario_agendamento, $minuto_agendamento, $local, $atividade_curricular, $id_agendamento);

                if ($stmt->execute()) {
                    // Return success message as JSON
                    echo json_encode("Agendamento atualizado com sucesso.");
                } else {
                    // Return error message as JSON
                    echo json_encode("Erro ao atualizar agendamento: " . $stmt->error);
                }

                // Close the prepared statement
                $stmt->close();
            } else {
                // It's an insert operation as 'id_agendamento' is not present
                // Perform the database insertion with the auto-incremented ID
              
                $sql = "INSERT INTO `agenda-clinicas` 
                    (agendado_por, cpf_paciente, descricao, data_agendamento, horario_agendamento, minuto_agendamento, local, atividade_curricular, status_agendamento) 
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, 'Agendado')";
            
                $stmt = $connection->prepare($sql);
                
                // "ssssiiiis" represents the data types of the parameters in the same order they appear in the query
                $stmt->bind_param("ssssiiis", $agendado_por, $cpf_paciente, $descricao, $data_agendamento, $horario_agendamento, $minuto_agendamento, $local, $atividade_curricular);
                
                if ($stmt->execute()) {
                    // Return success message as JSON
                    echo json_encode("Agendamento cadastrado com sucesso.");
                } else {
                    // Return error message as JSON
                    echo json_encode("Erro ao cadastrar agendamento: " . $stmt->error);
                }
                
                // Close the prepared statement
                $stmt->close();
 }
        } else {
            // Return error message as JSON
            echo json_encode("Um ou mais campos não estão preenchidos ou não atendem às condições necessárias.");
        }
    }
} else {
    // Handle the case where the form was not submitted
    echo json_encode("Form not submitted.");
}
?>