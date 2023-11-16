<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id = $data['id'];

    // Fetch vinculos
    $query = db("SELECT * FROM `agenda-clinicas` WHERE `agendado_por` = '$id' AND (`status_agendamento` = 'Agendado' OR `status_agendamento` = 'No local')");

    // Check if there are vinculos
    if (!empty($query)) {
        $pacienteInfoList = array();

        // Loop through each vinculo
        foreach ($query as $queryCPF) {
            // Extract CPF_paciente from the queryCPF
            $cpf_paciente = $queryCPF['cpf_paciente'];

            // Perform the second SQL operation for each 'cpf_paciente'
            $pacienteInfo = db("SELECT `Nome` FROM `pacientes` WHERE CPF = '$cpf_paciente'");

            // Add the result to the list
            $pacienteInfoList[] = $pacienteInfo;
        }

        // Include vinculos, pacienteInfoList, and TurmaInfo in the JSON response
        echo json_encode(array("vinculos" => $query, "pacienteInfoList" => $pacienteInfoList));
    } else {
        echo json_encode(array("message" => "Nenhum paciente encontrado"));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
