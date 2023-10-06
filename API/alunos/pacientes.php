<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $Matricula = $data['Matricula'];

    $result = db("SELECT Pacientes FROM usuarios WHERE Matricula = '$Matricula'");

    if (count($result) === 0) {
        echo json_encode(array("error" => "Usuário não encontrado."));
    } else {
        $pacientes = json_decode($result[0]['Pacientes']);

        $patientData = array();
        $cont = 0;
        foreach ($pacientes as $CPF) {
            $patientResult = db("SELECT * FROM pacientes WHERE CPF = '$CPF'");
            
            if (count($patientResult) > 0) {
                $patientData[$cont] = $patientResult[0];
                $cont++;
            }
        }

        echo json_encode($patientData);
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
