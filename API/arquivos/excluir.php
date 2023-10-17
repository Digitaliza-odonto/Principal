<?php

// Configura os cabeçalhos CORS para permitir solicitações de origens diferentes.
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

// Inclui o arquivo de conexão com o banco de dados.
require_once('../db.php');

    $data = json_decode(file_get_contents('php://input'), true);
    $fileId = $data['id'];

    if (!empty($fileId)) {
        // Consulta o banco de dados para obter o caminho do arquivo a ser excluído.
        $query = "SELECT Link FROM arquivos WHERE id = $fileId";
        $result = db($query);

        if ($result) {
            $filePath = $result[0]['Link'];
            
            // Verifica se o arquivo existe no sistema de arquivos antes de excluí-lo.
            if (file_exists($filePath)) {
                // Exclui o arquivo.
                unlink($filePath);

                // Remove o registro do arquivo do banco de dados.
                $deleteQuery = "DELETE FROM arquivos WHERE id = $fileId";
                try {
                    db($deleteQuery);
                    echo json_encode(array("message" => "Arquivo excluído com sucesso."));
                } catch (PDOException $e) {
                    echo json_encode(array("message" => "Erro ao excluir o arquivo: " . $e->getMessage()));
                }
            } else {
                echo json_encode(array("message" => "Arquivo não encontrado no sistema de arquivos."));
            }
        } else {
            echo json_encode(array("message" => "ID do arquivo não encontrado no banco de dados."));
        }
    } else {
        echo json_encode(array("message" => "ID do arquivo não especificado na solicitação."));
    }

?>
