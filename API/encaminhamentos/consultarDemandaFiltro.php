<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $Complexidade = $data['complexidade'];
    $Especialidade = $data['especialidade'];

    $query = "SELECT * FROM encaminhamentos WHERE 1=1";

    if ($Complexidade) {
        $query .= " AND Complexidade = '$Complexidade'";
    }

    if ($Especialidade) {
        $query .= " AND Especialidade = '$Especialidade'";
    }

    // Add condition to exclude 'Em atendimento' status
    $query .= " AND Status != 'Em atendimento'";

    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum encaminhamento encontrado."));
    } else {
        // Iterate through the results to fetch 'Nome' for each 'CPF'
        foreach ($result as &$row) {
            $CPF = $row['CPF'];
            // Perform the second SQL operation to fetch 'Nome' from 'pacientes' table
            $query_nome = "SELECT `Nome` FROM `pacientes` WHERE `CPF` = '$CPF'";
            $result_nome = db($query_nome);
            // If 'Nome' is found, assign it to the current row
            if (count($result_nome) > 0) {
                $row['Nome'] = $result_nome[0]['Nome'];
            } else {
                $row['Nome'] = 'Nome não encontrado'; // Or set a default value
            }
        }
        echo json_encode($result);
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
