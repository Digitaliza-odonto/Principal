<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);

    $id = $data['id'];
    $Especialidade = $data['Especialidade'];
    $Complexidade = $data['Complexidade'];
    $Demanda = $data['Demanda'];
    $Status = $data['Status'];
    $homologado = 'Sim';
    $data_homolog = date('Y-m-d');


    $updateQuery = "UPDATE `encaminhamentos` SET 
                        `Especialidade`='$Especialidade',
                        `Complexidade`='$Complexidade',
                        `Demanda`='$Demanda',
                        `Status`='$Status',
                        `homologado`='$homologado',
                        `data_homolog`='$data_homolog'
                    WHERE `id`='$id';
                    ";

    db($updateQuery);

    echo json_encode(array("message" => "Encaminhamento/Alta homologado com sucesso"));
    
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>