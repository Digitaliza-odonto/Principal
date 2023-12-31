<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $ID = $data['ID'];  // Use lowercase 'ID' to match the JSON key
    
    $query = "SELECT * FROM `historicoAtendimentos` WHERE `id_atendimentos` = '$ID'";
    
    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum atendimento encontrado."));
    } else {
        // Perform additional queries for each result
        $finalResult = array();
        foreach ($result as $row) {
            $componente_curricular = $row['componente_curricular'];
            $responsavel = $row['responsavel'];
            
            // Query 1: SELECT DISTINCT `cod_atividade` FROM `disciplinas` WHERE `atividade` = 'componente_curricular';
            $query1 = "SELECT DISTINCT `cod_atividade` FROM `disciplinas` WHERE `atividade` = '$componente_curricular'";
            $result1 = db($query1);
            
            // Query 2: SELECT `Matricula` FROM `usuarios` WHERE `Nome` = 'responsavel';
            $query2 = "SELECT `Matricula` FROM `usuarios` WHERE `Nome` = '$responsavel'";
            $result2 = db($query2);
            
            // Create an array with the original data and the additional results
            $row['distinct_cod_atividade'] = $result1;
            $row['responsavel_matricula'] = $result2;
            
            // Push the modified row into the final result array
            array_push($finalResult, $row);
        }
        
        echo json_encode($finalResult);
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}


?>
