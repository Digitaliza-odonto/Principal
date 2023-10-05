<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $CPF = $data['CPF'];
    $Especialidade = $data['Especialidade'];

    $query = "SELECT * FROM encaminhamentos";

    if ($CPF) {
        $query .= " WHERE CPF = '$CPF'";
    }

    if ($Especialidade) {
        if (strpos($query, "WHERE") !== false) {
            $query .= " AND Especialidade = '$Especialidade'";
        } else {
            $query .= " WHERE Especialidade = '$Especialidade'";
        }
    }

    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum encaminhamento encontrado."));
    } else {
        echo json_encode($result);
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
