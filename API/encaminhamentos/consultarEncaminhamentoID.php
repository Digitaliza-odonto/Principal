<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the file for database connection

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id = $data['id'];  // Use lowercase 'id' to match the JSON key
    
    $query1 = "SELECT * FROM `encaminhamentos` WHERE `id` = '$id'";
    $result1 = db($query1);

    if (count($result1) === 0) {
        echo json_encode(array("error" => "Nenhum atendimento encontrado."));
    } else {
        $alunoEncaminhamento = $result1[0]['alunoEncaminhamento'];
        $CPF = $result1[0]['CPF']; // Assuming you have 'CPF' in the $result1 array

        $query2 = "SELECT `nome` FROM `alunos` WHERE `Matricula` = '$alunoEncaminhamento'";
        $result2 = db($query2);

        if (count($result2) === 0) {
            echo json_encode(array("error" => "Aluno não encontrado."));
        } else {
            $result1[0]['nomeAluno'] = $result2[0]['nome'];

            // New Query for patient information
            $query3 = "SELECT `Nome` FROM `pacientes` WHERE `CPF` = '$CPF'";
            $result3 = db($query3);

            if (count($result3) === 0) {
                echo json_encode(array("error" => "Paciente não encontrado."));
            } else {
                $result1[0]['nomePaciente'] = $result3[0]['Nome'];
                echo json_encode($result1);
            }
        }
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
