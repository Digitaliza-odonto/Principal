<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the file that contains the database connection

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);

    $Cpf = $data['cpf'];
    $aluno_id = $data['aluno_id'];
    $atendimentoData = DateTime::createFromFormat('d/m/Y', $data['atendimentoData'])->format('Y-m-d');
    $selectedEspecialidade = $data['selectedEspecialidade'];
    $atendimentoDescrição = $data['atendimentoDescrição'];
    $responsavelProcedimento = $data['responsavelProcedimento'];
    $componenteCurricular = $data['componenteCurricular'];
    $periodo = $data['periodo'];
    $codSUSArray = json_encode($data['codSUSArray']);
    $descricao_SUS_Array = json_encode($data['descricao_SUS_Array']);

    $insertQuery = "INSERT INTO `historicoatendimentos`(`id_aluno`, `cpf`, `data`, `especialidade`, `descricao`, `responsavel`, `componente_curricular`, `periodo`, `homologado`, `codSus`, `descricao_SUS`)
        VALUES ('$aluno_id','$Cpf','$atendimentoData','$selectedEspecialidade','$atendimentoDescrição','$responsavelProcedimento','$componenteCurricular', '$periodo','Não','$codSUSArray', '$descricao_SUS_Array');";
    
    db($insertQuery);

    echo json_encode(array("message" => "Atendimento registrado com sucesso"));
    
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>