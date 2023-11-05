<?php


header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id_vinculo = $data['id_vinculo'];

    $existingVinculo = db("SELECT * FROM vinculo_aluno_paciente WHERE id = '$id_vinculo'");

    if (count($existingVinculo) > 0) {
        $deleteQuery = "DELETE FROM vinculo_aluno_paciente WHERE id = '$id_vinculo'";

        try {
            db($deleteQuery);
            echo json_encode(array("vinculoExcluido" => true, "message" => "Vínculo excluído com sucesso"));
        } catch (PDOException $e) {
            echo json_encode(array("message" => "Erro ao excluir vínculo: " . $e->getMessage()));
        }
    } else {
        echo json_encode(array("vinculoExcluido" => false, "message" => "Vínculo não encontrado"));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>