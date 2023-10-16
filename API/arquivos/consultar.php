<?php
// Configura os cabeçalhos CORS para permitir solicitações de origens diferentes.
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

// Inclui o arquivo de conexão com o banco de dados.
require_once('../db.php');

// Verifica se o método da requisição HTTP é POST.
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Analisa os dados JSON enviados no corpo da requisição.
    $data = json_decode(file_get_contents('php://input'), true);
    $CPF = $data['CPF'];

    // Verifica se o CPF foi fornecido.
    if (!empty($CPF)) {
        // Consulta os arquivos associados ao CPF no banco de dados.
        $Query = "SELECT * FROM arquivos WHERE CPF = '$CPF'";
        try {
            $result = db($Query);
            echo json_encode($result);
        } catch (PDOException $e) {
            echo json_encode(array("message" => "Erro ao consultar arquivos: " . $e->getMessage()));
        }
    } else {
        echo json_encode(array("message" => "CPF não fornecido."));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
