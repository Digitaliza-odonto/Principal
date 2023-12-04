<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);

    $id_projeto = $data['id_projeto'];
    $cod_atividade = $data['cod_atividade'];
    $atividade = $data['atividade'];
    $tipoProjeto = $data['tipoProjeto'];
    $statusProjeto = $data['statusProjeto'];

    // Check if id_projeto exists in the database
    $selectQuery = "SELECT * FROM `projetos` WHERE `id_projeto`='$id_projeto' OR `cod_atividade`='$cod_atividade'";
    $existingProject = db($selectQuery);

    if (!empty($existingProject)) {
        // If the id_projeto exists, perform an UPDATE operation
        $updateQuery = "UPDATE `projetos` SET `cod_atividade`='$cod_atividade', `atividade`='$atividade', `tipoProjeto`='$tipoProjeto', `statusProjeto`='$statusProjeto' WHERE `id_projeto`='$id_projeto'";
        try {
            db($updateQuery);
            echo json_encode(array("projetoAtualizado" => true, "message" => "Projeto atualizado com sucesso"));
        } catch (PDOException $e) {
            echo json_encode(array("message" => "Erro ao atualizar projeto: " . $e->getMessage()));
        }
    } else {
        // If id_projeto does not exist, perform an INSERT operation
        $insertQuery = "INSERT INTO `projetos`(`id_projeto`, `cod_atividade`, `atividade`, `tipoProjeto`, `statusProjeto`) VALUES ('$id_projeto', '$cod_atividade', '$atividade', '$tipoProjeto', '$statusProjeto')";
        try {
            db($insertQuery);
            echo json_encode(array("projetoCriado" => true, "message" => "Projeto criado com sucesso"));
        } catch (PDOException $e) {
            echo json_encode(array("message" => "Erro ao criar projeto: " . $e->getMessage()));
        }
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
