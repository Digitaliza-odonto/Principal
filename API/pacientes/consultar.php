<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

    $data = json_decode(file_get_contents('php://input'), true);
    $CPF = $data['CPF'];
    $Nome = $data['Nome'];

    if ($CPF) {
        $result = db("SELECT * FROM pacientes WHERE CPF = '$CPF'");

        if (count($result) === 0) {
            echo json_encode(array("error" => "Paciente não encontrado."));
        } else {
            echo json_encode($result);
        }
    } elseif ($Nome) {
        $result = db("SELECT * FROM pacientes WHERE Nome LIKE '%$Nome%'");

        if (count($result) === 0) {
            echo json_encode(array("error" => "Paciente não encontrado."));
        } else {
            echo json_encode($result);
        }
    } else {
        echo json_encode(array("error" => "Informe CPF ou Nome para consulta."));
    }


?>
