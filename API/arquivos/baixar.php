<?php
// Configura os cabeçalhos CORS para permitir solicitações de origens diferentes.
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

// Inclui o arquivo de conexão com o banco de dados.
require_once('../db.php');

// Verifica se o método da requisição HTTP é GET.
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Verifica se o parâmetro 'id' foi fornecido na URL.
    $data = json_decode(file_get_contents('php://input'), true);
    $id = $data['id'];

    if (isset($id)) {
        // Consulta o banco de dados para obter o link do arquivo com base no ID.
        $selectQuery = "SELECT Link FROM arquivos WHERE ID = $id";
        try {
           $result = db($selectQuery);

            if ($result) {
                // Retorna o link do arquivo como resposta.
                echo json_encode($result[0]);
            } else {
                echo json_encode(array("message" => "Arquivo não encontrado."));
            }
        } catch (PDOException $e) {
            echo json_encode(array("message" => "Erro ao consultar arquivo: " . $e->getMessage()));
        }
    } else {
        echo json_encode(array("message" => "ID do arquivo não fornecido."));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
