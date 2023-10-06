<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $Matricula = $data['Matricula'];
    $Nome = $data['Nome'];
    $Tipo = $data['Tipo'];
    $Pacientes = json_encode($data['Pacientes']);

    $existingUser = db("SELECT * FROM usuarios WHERE Matricula = '$Matricula'");

    if (count($existingUser) > 0) {
        echo json_encode(array("usuarioCriado" => false, "message" => "Usuário com essa Matricula já existe"));
    } else {
        $insertQuery = "INSERT INTO usuarios (Matricula, Nome, Tipo, Pacientes) VALUES ('$Matricula', '$Nome', '$Tipo', '$Pacientes')";

        try {
            db($insertQuery);
            echo json_encode(array("usuarioCriado" => true, "message" => "Usuário criado com sucesso"));
        } catch (PDOException $e) {
            echo json_encode(array("message" => "Erro ao criar usuário: " . $e->getMessage()));
        }
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
