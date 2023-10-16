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
    $CPF = $_POST['CPF'];
    $Descricao = $_POST['Descricao'];
    $Tipo = $_POST['Tipo'];
    $Data = $_POST['Data'];
    $Arquivo = $_FILES['Arquivo'];

    // Cria um diretório com o CPF do usuário se ele ainda não existir.
    $uploadDir = "uploads/$CPF/";
    if (!file_exists($uploadDir)) {
        mkdir($uploadDir, 0777, true); // Você pode ajustar as permissões de acordo com as necessidades do servidor.
    }

    // Verifica se um arquivo foi enviado.
    if ($Arquivo && $Arquivo['error'] === UPLOAD_ERR_OK) {
        $fileName = uniqid() . "_" . $Arquivo['name'];
        $filePath = $uploadDir . $fileName;

        if (move_uploaded_file($Arquivo['tmp_name'], $filePath)) {
            // Insere as informações do arquivo no banco de dados.
            $insertQuery = "INSERT INTO arquivos (CPF, Descricao, Tipo, Data, Link) VALUES ('$CPF', '$Descricao', '$Tipo', '$Data', '$filePath')";
            try {
                db($insertQuery);
                echo json_encode(array("message" => "Arquivo enviado e registrado com sucesso."));
            } catch (PDOException $e) {
                echo json_encode(array("message" => "Erro ao registrar o arquivo: " . $e->getMessage()));
            }
        } else {
            echo json_encode(array("message" => "Falha ao mover o arquivo para a pasta."));
        }
    } else {
        echo json_encode(array("message" => "Falha no upload do arquivo."));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
