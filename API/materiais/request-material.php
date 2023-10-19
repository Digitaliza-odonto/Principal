<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

// Get the raw JSON data from the request body
$data = json_decode(file_get_contents("php://input"));

// Check if the JSON data is valid
if ($data && isset($data->setor) && isset($data->nome_solicitante) && isset($data->id_solicitante) && isset($data->qtd_solicitada) && isset($data->material) && isset($data->id_material)) {
    // Extract data from the JSON object
    $setor = $data->setor;
    $nome_solicitante = $data->nome_solicitante;
    $id_solicitante = $data->id_solicitante;
    $qtd_solicitadas = $data->qtd_solicitada;
    $materiais = $data->material;
    $id_materiais = $data->id_material;
    $data_pedido = date('Y-m-d'); // Format: YYYY-MM-DD

    // Prepare the SQL statement with placeholders
    $sql = "INSERT INTO solicitacao_materiais (setor, nome_solicitante, id_solicitante, data_pedido, lista_ids, lista_materiais, lista_qtd, statusSolicitacao) VALUES (?, ?, ?, ?, ?, ?, ?, 'Solicitado')";
    $stmt = $connection->prepare($sql);

    if ($stmt) {
        // Bind parameters
        $lista_ids = implode(',', $id_materiais);
        $lista_qtd = implode(',', $qtd_solicitadas);
        $lista_materiais = implode(',', $materiais);
        $stmt->bind_param("sssssss", $setor, $nome_solicitante, $id_solicitante, $data_pedido, $lista_ids, $lista_materiais, $lista_qtd);

        // Execute the statement
        if ($stmt->execute()) {
            echo json_encode(["message" => "Records inserted successfully."]);
        } else {
            echo json_encode(["error" => "Error: " . $stmt->error]);
        }

        // Close the statement
        $stmt->close();
    } else {
        echo json_encode(["error" => "Error in preparing the SQL statement."]);
    }
} else {
    echo json_encode(["error" => "Invalid data format for id_material, nome, and qtd_solicitada."]);
}

// Close the database connection
$connection->close();
?>
