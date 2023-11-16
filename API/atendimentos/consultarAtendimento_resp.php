<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the database connection file

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id = $data['id'];  // Use lowercase 'id' to match the JSON key

    $query = "SELECT * FROM `historicoAtendimentos` WHERE `responsavel` = '$id' AND `homologado` = 0";

    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum atendimento encontrado."));
    } else {
        // Loop through the result and perform additional SQL queries
        foreach ($result as &$row) {
            $cpf = $row['cpf'];
            $id_aluno = $row['id_aluno'];

            // Query to retrieve Nome from pacientes table based on CPF
            $queryPacientes = "SELECT `Nome` FROM `pacientes` WHERE `CPF` = '$cpf'";
            $resultPacientes = db($queryPacientes);
            $row['nome_paciente'] = $resultPacientes[0]['Nome'];

            // Query to retrieve nome from alunos table based on id_aluno
            $queryAlunos = "SELECT `nome` FROM `alunos` WHERE `matricula` = '$id_aluno'";
            $resultAlunos = db($queryAlunos);
            $row['nome_aluno'] = $resultAlunos[0]['nome'];
        }
        unset($row); // Unset the reference to the last element to avoid potential side effects

        echo json_encode($result);
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
