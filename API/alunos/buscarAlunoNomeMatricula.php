<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';

    $data = json_decode(file_get_contents('php://input'), true);
    $matricula = $data['matricula'];
    $Nome = $data['Nome'];

    if ($matricula) {
        $result = db("SELECT * FROM `alunos` WHERE `matricula` = '$matricula'");

        if (count($result) === 0) {
            echo json_encode(array("error" => "Aluno não encontrado."));
        } else {
            echo json_encode($result);
        }
    } elseif ($Nome) {
        $result = db("SELECT * FROM `alunos` WHERE Nome LIKE '%$Nome%'");

        if (count($result) === 0) {
            echo json_encode(array("error" => "Aluno não encontrado."));
        } else {
            echo json_encode($result);
        }
    } else {
        echo json_encode(array("error" => "Informe Matrícula ou Nome para consulta."));
    }

?>
