<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id = $data['id'];  // Use lowercase 'id' to match the JSON key
    
    $query1 = "SELECT * FROM `encaminhamentos` WHERE `id` = '$id'";
    $result1 = db($query1);

    if (count($result1) === 0) {
        echo json_encode(array("error" => "Nenhum atendimento encontrado."));
    } else {
        $alunoEncaminhamento = $result1[0]['alunoEncaminhamento'];

        $query2 = "SELECT `nome` FROM `usuarios` WHERE `Matricula` = '$alunoEncaminhamento'";
        $result2 = db($query2);

        if (count($result2) === 0) {
            echo json_encode(array("error" => "Aluno não encontrado."));
        } else {
            $result1[0]['nomeAluno'] = $result2[0]['nome'];
            echo json_encode($result1);
        }
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
