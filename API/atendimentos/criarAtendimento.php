<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the file that contains the database connection

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);

    $CPF = $data['CPF'];
    $aluno_id = $data['aluno_id'];
    $atendimentoData = $data['atendimentoData'];
    $Especialidade = $data['Especialidade'];
    $atendimentoDescrição = $data['atendimentoDescrição'];
    $responsavelProcedimento = $data['responsavelProcedimento'];
    $componenteCurricular = $data['componenteCurricular'];
    $codSUSArray = json_encode($data['codSUSArray']); // Serialize the array to JSON before insertion

    $insertQuery = "INSERT INTO `historicoatendimentos`(`id_aluno`, `cpf`, `data`, `especialidade`, `descricao`, `responsavel`, `componente_curricular`, `homologado`, `codSus`)
        VALUES ('$aluno_id','$CPF','$atendimentoData','$especAreaSaúde','$atendimentoDescrição','$responsavelProcedimento','$componenteCurricular','Não','$codSUSArray');";
    
    db($insertQuery);

    echo json_encode(array("message" => "Atendimento registrado com sucesso"));
    
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
