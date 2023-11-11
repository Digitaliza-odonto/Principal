<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $Matricula = $data['Matricula'];

    // Fetch vinculos
    $vinculos = db("SELECT * FROM `vinculo_aluno_paciente` WHERE `Matricula_aluno` = '$Matricula'");

    // Check if there are vinculos
    if (!empty($vinculos)) {
        $pacienteInfoList = array();

        // Loop through each vinculo
        foreach ($vinculos as $vinculo) {
            // Extract CPF_paciente from the vinculo
            $CPF_paciente = $vinculo['CPF_paciente'];

            // Perform the second SQL operation for each 'CPF_paciente'
            $pacienteInfo = db("SELECT * FROM pacientes WHERE CPF = '$CPF_paciente'");

            // Add the result to the list
            $pacienteInfoList[] = $pacienteInfo;
        }

        // Include vinculos and pacienteInfoList in the JSON response
        echo json_encode(array("vinculos" => $vinculos, "pacienteInfoList" => $pacienteInfoList));
    } else {
        echo json_encode(array("message" => "No vinculos found"));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
