<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $Data = json_decode(file_get_contents('php://input'), true);
    $ano = $Data['ano'];
    $semestre = $Data['semestre'];

    // Determine the months based on the semester
    $startMonth = ($semestre == 1) ? 1 : 7;
    $endMonth = ($semestre == 1) ? 6 : 12;

    // Construct the SQL query
    $query = "SELECT codSus, COUNT(*) as count FROM historicoatendimentos WHERE YEAR(data) = $ano AND MONTH(data) BETWEEN $startMonth AND $endMonth GROUP BY codSus";
    
    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum procedimento SUS registrado."));
    } else {
        echo json_encode($result);
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
