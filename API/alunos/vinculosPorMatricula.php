<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $matricula = $data['id'];

    $query = "SELECT * FROM `vinculo_aluno_paciente` WHERE `Matricula_aluno` = '$matricula'";
    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum paciente vinculado a este aluno."));
    } else {
        $cpfPacientes = array_column($result, 'CPF_paciente');
        $pacientesInfo = array();

        foreach ($cpfPacientes as $cpf) {
            $queryPacientes = "SELECT * FROM `pacientes` WHERE `CPF` = '$cpf'";
            $resultPacientes = db($queryPacientes);

            if (count($resultPacientes) > 0) {
                $pacientesInfo[] = $resultPacientes[0];
            }
        }

        echo json_encode($pacientesInfo);
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
