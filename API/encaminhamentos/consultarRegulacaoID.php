<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id = $data['id_regulacao'];  // Use lowercase 'id' to match the JSON key
    
    // First SQL operation to retrieve data from 'regulacaointerna' table
    $query1 = "SELECT * FROM `regulacaointerna` WHERE `id_regulacao` = '$id'";
    $result1 = db($query1);

    if (count($result1) === 0) {
        echo json_encode(array("error" => "Nenhuma solicitação encontrada."));
    } else {
        $alunoRegulacao = $result1[0]['id_matricula'];

        // Second SQL operation to retrieve data from 'usuarios' table based on 'matricula'
        $query2 = "SELECT `nome` FROM `usuarios` WHERE `Matricula` = '$alunoRegulacao'";
        $result2 = db($query2);

        if (count($result2) === 0) {
            echo json_encode(array("error" => "Aluno não encontrado."));
        } else {
            $result1[0]['nomeAluno'] = $result2[0]['nome'];

            // Third SQL operation to retrieve data from 'disciplinas' table based on 'id_turma'
            $Turma = $result1[0]['id_turma'];
            $query3 = "SELECT * FROM `disciplinas` WHERE `id` = '$Turma'";
            $disciplinasResult = db($query3);

            if (count($disciplinasResult) === 0) {
                echo json_encode(array("error" => "Nenhuma disciplina encontrada para esta turma."));
            } else {
                $result1[0]['disciplinas'] = $disciplinasResult[0];
                echo json_encode($result1);
            }
        }
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
