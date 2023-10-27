<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../db.php');

// Get the JSON data from the request body
$jsonData = file_get_contents('php://input');
$data = json_decode($jsonData);

// Check if 'Matricula' and 'CPF' keys exist in the JSON data
if (isset($data->Matricula) && isset($data->CPF)) {
    // Get the values of 'Matricula' and 'CPF' from the JSON data
    $Matricula = $data->Matricula;
    $CPF = $data->CPF;

    // Check if the aluno (Matricula) exists in the database
    $alunoQuery = "SELECT * FROM alunos WHERE Matricula = $Matricula";
    $alunoResult = db($alunoQuery);

    if ($alunoResult) {
        // Retrieve the current list of patients associated with the aluno
        $currentPatients = json_decode($alunoResult[0]['Pacientes'], true);
        
        // Check if the patient (CPF) is not already associated with the aluno
        if (!in_array($CPF, $currentPatients)) {
            $currentPatients[] = $CPF; // Add the patient to the list
            $updatedPatients = json_encode($currentPatients); // Convert the list back to JSON

            // Update the aluno's record with the updated list of patients
            $updateAlunoQuery = "UPDATE alunos SET Pacientes = $updatedPatients WHERE Matricula = $Matricula";
            if (db($updateAlunoQuery)) {
                // Return a success message
                echo json_encode(array("message" => "Paciente vinculado ao aluno com sucesso."));
            } else {
                echo json_encode(array("error" => "Erro ao atualizar o aluno."));
            }
        } else {
            echo json_encode(array("message" => "Paciente já vinculado ao aluno."));
        }
    } else {
        echo json_encode(array("error" => "Aluno não encontrado."));
    }
} else {
    echo json_encode(array("error" => "Parâmetros inválidos ou ausentes no corpo da requisição."));
}

$connection->close();
?>
