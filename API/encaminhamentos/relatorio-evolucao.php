<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the database connection file

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $ano = $data['ano'];
    $semestre = $data['semestre'];
    $status = isset($data['status']) && !empty($data['status']) ? $data['status'] : null;
    $especialidade = isset($data['especialidade']) && !empty($data['especialidade']) ? $data['especialidade'] : null;
    $complexidade = isset($data['complexidade']) && !empty($data['complexidade']) ? $data['complexidade'] : null;

    // Determine the start and end dates based on semestre
    if ($semestre == 1) {
        $start_date = "$ano-01-01";
        $end_date = "$ano-06-30";
    } else if ($semestre == 2) {
        $start_date = "$ano-07-01";
        $end_date = "$ano-12-31";
    } else {
        echo json_encode(array("error" => "Semestre inválido"));
        exit;
    }

    // Construct the base query
    $query = "SELECT encaminhamentos.*, pacientes.Nome FROM `encaminhamentos`";
    $query .= " LEFT JOIN `pacientes` ON encaminhamentos.CPF = pacientes.CPF";
    $query .= " WHERE encaminhamentos.Data BETWEEN '$start_date' AND '$end_date'";

    // Add additional conditions for status, especialidade, and complexidade if they are provided
    if ($status !== null) {
        $query .= " AND encaminhamentos.Status = '$status'";
    }
    if ($especialidade !== null) {
        $query .= " AND encaminhamentos.Especialidade = '$especialidade'";
    }
    if ($complexidade !== null) {
        $query .= " AND encaminhamentos.Complexidade = '$complexidade'";
    }

    // Perform the database query
    $result = db($query);

    // Check if there are results and send the JSON response
    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum encaminhamento encontrado no período."));
    } else {
        echo json_encode($result);
    }
} else {
    echo json_encode(array("error" => "Método inválido"));
}
?>
