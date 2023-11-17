<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $matricula = $data['matricula'];

    $vinculos = db("SELECT * FROM `vinculo_aluno_paciente` WHERE `Matricula_aluno` = '$matricula';");

    $result = array();

    foreach ($vinculos as $vinculo) {
        $cpf_paciente = $vinculo['CPF_paciente'];
        $turma = $vinculo['Turma'];

        // Query to get `atividade` from `disciplinas`
        $query_disciplinas = db("SELECT `atividade` FROM `disciplinas` WHERE `id` = '$turma';");

        // Query to get `Nome` from `pacientes`
        $query_pacientes = db("SELECT `Nome` FROM `pacientes` WHERE `CPF` = '$cpf_paciente';");

        // Adding fetched data to the result array
        $result[] = array(
            "vinculo" => $vinculo,
            "disciplinas" => $query_disciplinas,
            "pacientes" => $query_pacientes
        );
    }

    echo json_encode($result);
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
