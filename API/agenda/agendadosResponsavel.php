<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id = $data['aluno'];

    // Fetch agenda-clinicas for the given user ID
    $query = db("SELECT * FROM `agenda-clinicas` WHERE `agendado_por` = '$id' AND (`status_agendamento` = 'Agendado' OR `status_agendamento` = 'No local')");

    if (!empty($query)) {
        $result = array();

        // Loop through each entry in the query
        foreach ($query as $entry) {
            $cpf = $entry['cpf_paciente'];

            // Fetch the Nome from the pacientes table using the retrieved cpf_paciente
            $pacienteInfo = db("SELECT `Nome` FROM `pacientes` WHERE `CPF` = '$cpf'");
            $entry['Nome'] = $pacienteInfo[0]['Nome']; // Add Nome to the entry

            // Push the modified entry to the result array
            $result[] = $entry;
        }

        echo json_encode($result);
    } else {
        echo json_encode(array("message" => "Nenhum agendamento encontrado para este usuário"));
    }
} else {
    echo json_encode(array("message" => "Método inválido. Este endpoint suporta apenas solicitações POST."));
}
?>
