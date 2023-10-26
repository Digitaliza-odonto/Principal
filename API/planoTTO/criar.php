<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $requestData = json_decode(file_get_contents('php://input'), true);
    error_log(print_r($requestData, true)); // Log request data for debugging
    
    if (isset($requestData['CPF'])) {
        $CPF = $requestData['CPF']; 
        $data = date('Y-m-d');
        $queixa = $requestData['queixa'];
        $aspectoRelevante = $requestData['aspectoRelevante'];
        $especialidade = implode(',', $requestData['especialidade']); // Convert array to comma-separated string
        $descricao = $requestData['descricao'];
        $aluno_id = $requestData['aluno_id'];
        $responsavel = $requestData['responsavel'];
        $componente_curricular = $requestData['componente_curricular'];

        $insertQuery = "INSERT INTO `plano_tto`(`CPF`, `data`, `queixa`, `aspectoRelevante`, `especialidade`, `descricao`, `aluno_id`, `responsavel`, `componente_curricular`) VALUES (:CPF, :data, :queixa, :aspectoRelevante, :especialidade, :descricao, :aluno_id, :responsavel, :componente_curricular)";

        try {
            $pdo = new PDO("mysql:host=localhost;dbname=id21352215_gestaosaude", "id21352215_pedroaf", "33551047pP!");
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

            $stmt = $pdo->prepare($insertQuery);
            $stmt->bindParam(':CPF', $CPF);
            $stmt->bindParam(':data', $data);
            $stmt->bindParam(':queixa', $queixa);
            $stmt->bindParam(':aspectoRelevante', $aspectoRelevante);
            $stmt->bindParam(':especialidade', $especialidade);
            $stmt->bindParam(':descricao', $descricao);
            $stmt->bindParam(':aluno_id', $aluno_id);
            $stmt->bindParam(':responsavel', $responsavel);
            $stmt->bindParam(':componente_curricular', $componente_curricular);

            $stmt->execute();

            echo json_encode(array("message" => "Plano de tratamento cadastrado com sucesso"));
        } catch (PDOException $e) {
            echo json_encode(array("message" => "Erro ao cadastrar o plano de tratamento: " . $e->getMessage()));
        }
    } else {
        echo json_encode(array("message" => "Campo 'CPF' não encontrado no JSON"));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
