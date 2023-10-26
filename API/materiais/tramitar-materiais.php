<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");
// não exibir erros
error_reporting(0);
include_once('../config.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Get the request body
    $request_body = file_get_contents('php://input');

    // Decode the JSON request body into a PHP object
    $request_data = json_decode($request_body);

    // Get the form data from the PHP object
    $data_tramite = $request_data->data_tramite;
    $statusSolicitacao = $request_data->statusSolicitacao;
    $ids_atendidos = $request_data->lista_ids;
    $qtd_atendida = $request_data->qtd_atendida;
    $obs_tramite = $request_data->obs_tramite;
    $id_solicitacao = $request_data->id_solicitacao;

    // Validate subtraction results
    $validSubtractions = true;
    foreach ($qtd_atendida as $key => $qtd) {
        $id_material = $ids_atendidos[$key];
        $stmtCheckQuantity = $connection->prepare("SELECT quantidade FROM materiais WHERE id = ?");
        $stmtCheckQuantity->bind_param("i", $id_material);
        $stmtCheckQuantity->execute();
        $stmtCheckQuantity->bind_result($existingQuantity);
        $stmtCheckQuantity->fetch();
        $stmtCheckQuantity->close();

        if ($existingQuantity - $qtd < 0) {
            $validSubtractions = false;
            break; // Exit the loop if a negative value is encountered
        }
    }

    // If all subtractions are valid, execute the queries
    if ($validSubtractions) {
        // Prepare SQL statement for updating existing row in solicitacao_materiais table
        $updateSolicitacaoQuery = "UPDATE solicitacao_materiais SET data_tramite=?, statusSolicitacao=?, obs_tramite=? WHERE id_solicitacao=?";
        $stmtSolicitacao = $connection->prepare($updateSolicitacaoQuery);
        $stmtSolicitacao->bind_param("ssss", $data_tramite, $statusSolicitacao, $obs_tramite, $id_solicitacao);

        // Prepare SQL statement for updating materiais table
        $updateMateriaisQuery = "UPDATE materiais SET quantidade = quantidade - ? WHERE id = ?";
        $stmtMateriais = $connection->prepare($updateMateriaisQuery);
        $stmtMateriais->bind_param("ii", $qtd, $id_material);

        // Execute the statements for both tables
        $success = true;
        foreach ($qtd_atendida as $key => $qtd) {
            $id_material = $ids_atendidos[$key];
            if (!$stmtSolicitacao->execute() || !$stmtMateriais->execute()) {
                $success = false;
                break;
            }
        }

        // Check if the queries were successful
        if ($success) {
            echo json_encode(["success" => true, "message" => "Tramitação de material realizada com sucesso"]);
        } else {
            echo json_encode(["success" => false, "message" => "Erro ao processar a tramitação. Por favor, tente novamente."]);
        }

        // Close the statements
        $stmtSolicitacao->close();
        $stmtMateriais->close();
    } else {
        echo json_encode(["success" => false, "message" => "Erro ao processar a tramitação. A quantidade atendida não pode ser maior do que a quantidade disponível."]);
    }
} else {
    echo json_encode(["success" => false, "message" => "Erro ao processar a tramitação"]);
}

// Close the connection
$connection->close();
?>