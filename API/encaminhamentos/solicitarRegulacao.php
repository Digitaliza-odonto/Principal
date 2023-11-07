<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $requestData = json_decode(file_get_contents('php://input'), true);
    error_log(print_r($requestData, true)); // Log request data for debugging
    
    // Assuming all required fields are present in the JSON data
    $Turma = $requestData['Turma'];
    $matricula = $requestData['matriculaAluno'];
    $solicitacaoData = $requestData['solicitacaoData'];
    $solicitacaoDescricao = $requestData['solicitacaoDescricao'];
    $status_regulacao = 'Solicitado';

    $insertQuery = "INSERT INTO `regulacaointerna`(`id_turma`, `id_matricula`, `data_pedido`, `solicitacaoDescricao`, `status_regulacao`) VALUES (:Turma, :matricula, :solicitacaoData, :solicitacaoDescricao, :status_regulacao)";
    
    try {
        $pdo = new PDO("mysql:host=localhost;dbname=id21352215_gestaosaude", "id21352215_pedroaf", "33551047pP!");
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $stmt = $pdo->prepare($insertQuery);
        $stmt->bindParam(':Turma', $Turma);
        $stmt->bindParam(':matricula', $matricula);
        $stmt->bindParam(':solicitacaoData', $solicitacaoData);
        $stmt->bindParam(':solicitacaoDescricao', $solicitacaoDescricao);
        $stmt->bindParam(':status_regulacao', $status_regulacao);
        
        $stmt->execute();

        echo json_encode(array("message" => "Solicitação de regulação interna cadastrada com sucesso"));
    } catch (PDOException $e) {
        echo json_encode(array("message" => "Erro ao cadastrar o pedido: " . $e->getMessage()));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
