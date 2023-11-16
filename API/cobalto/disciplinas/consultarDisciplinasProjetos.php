<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $disciplinasResult = db("SELECT DISTINCT atividade FROM disciplinas");
    $projetosResult = db("SELECT DISTINCT atividade FROM projetos");

    $combinedResult = array(
        "disciplinas" => $disciplinasResult,
        "projetos" => $projetosResult
    );

    echo json_encode($combinedResult);
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
