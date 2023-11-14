<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the database connection file

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    
    // Retrieve data from the received JSON
    $alunoEncaminhamento = $data['alunoEncaminhamento'];
    $Complexidade = $data['Complexidade'];
    $CPF = $data['CPF'];
    $OriginalDate = $data['Data'];
    $FormattedDate = DateTime::createFromFormat('d/m/Y', $OriginalDate)->format('Y-m-d');
    $Demanda = $data['Demanda'];
    $origemID = $data['origemID'];
    $encaminhamentoOrigem = $data['encaminhamentoOrigem'];
    $Especialidade = $data['Especialidade'];
    $responsavelEncaminhamento = $data['responsavelProcedimento']; // Ensure this matches the key in your JSON data
    $Status = $data['Status'];
    
    $insertQuery = "INSERT INTO `encaminhamentos` 
                    (`CPF`, `Data`, `Especialidade`, `Complexidade`, `Demanda`, `origemID`, `encaminhamentoOrigem`, 
                    `alunoEncaminhamento`, `responsavelEncaminhamento`, `Status`)
                    VALUES  
                    ('$CPF', '$FormattedDate', '$Especialidade', '$Complexidade', '$Demanda', '$origemID', 
                    '$encaminhamentoOrigem', '$alunoEncaminhamento', '$responsavelEncaminhamento', '$Status')";

    
    // After the query execution, check for errors and handle them
    $result = db($insertQuery);

    if ($result) {
        echo json_encode(array("message" => "Encaminhamento criado com sucesso"));
    } else {
        echo json_encode(array("message" => "Encaminhamento criado com sucesso"));
    }
}

?>