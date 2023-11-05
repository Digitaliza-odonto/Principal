<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        
    $firstQuery = "SELECT * FROM `agenda-clinicas`";
    
    $firstResult = db($firstQuery);

    if (count($firstResult) === 0) {
        echo json_encode(array("error" => "Nenhum procedimento SUS cadastrado."));
    } else {
        $finalResult = array();

        foreach ($firstResult as $row) {
            $cpf_paciente = $row['cpf_paciente'];
            $agendadoPor = $row['agendado_por'];

            $secondQuery = "SELECT `Nome` FROM `pacientes` WHERE `CPF` = '$cpf_paciente'";
            $pacienteResult = db($secondQuery);
            $nomePaciente = $pacienteResult[0]['Nome'];

            $thirdQuery = "SELECT `Nome` FROM `usuarios` WHERE `Matricula` = '$agendadoPor'";
            $usuarioResult = db($thirdQuery);
            $nomeUsuario = $usuarioResult[0]['Nome'];

            $row['nome_paciente'] = $nomePaciente;
            $row['nome_usuario'] = $nomeUsuario;

            $finalResult[] = $row;
        }

        echo json_encode($finalResult);
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
