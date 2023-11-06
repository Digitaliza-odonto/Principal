<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the database connection file

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    
    $alunoEncaminhamento = $data['alunoEncaminhamento'];
    $Complexidade = $data['Complexidade'];
    $CPF = $data['CPF'];
    $OriginalDate = $data['Data'];
    $FormattedDate = DateTime::createFromFormat('d/m/Y', $OriginalDate)->format('Y-m-d'); // Convert to YYYY-MM-DD format
    $Demanda = $data['Demanda'];
    $encaminhamentoOrigem = $data['encaminhamentoOrigem'];
    $Especialidade = $data['Especialidade'];
    $responsavelEncaminhamento = $data['responsavelEncaminhamento'];
    $Status = $data['Status'];
        

    $insertQuery = "INSERT INTO `encaminhamentos`(`CPF`, `Data`, `Especialidade`, `Complexidade`, `Demanda`, `encaminhamentoOrigem`, `alunoEncaminhamento`, `responsavelEncaminhamento`, `Status`) 
            VALUES ('$CPF', '$FormattedDate', '$Especialidade', '$Complexidade', '$Demanda', '$encaminhamentoOrigem', '$alunoEncaminhamento', '$responsavelEncaminhamento', '$Status')";
        
    echo json_encode(array("message" => "Encaminhamento criado com sucesso"));
    
    db($insertQuery);
    
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
