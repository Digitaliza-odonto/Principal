<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");
header('Content-Type: application/json');

require_once '../db.php'; // Import the database connection file

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);

    // Validate and sanitize input data (if necessary)
    $ano = filter_var($data['ano'], FILTER_SANITIZE_STRING);
    $semestre = filter_var($data['semestre'], FILTER_SANITIZE_STRING);

    // Construct the SQL query to select data based on year and semester
    $query = "SELECT `ids_atendidos`, `qtd_atendida` FROM `solicitacao_materiais` WHERE YEAR(`data_tramite`) = $ano AND MONTH(`data_tramite`) BETWEEN (($semestre - 1) * 6 + 1) AND $semestre * 6";

    $result = db($query);

    if (count($result) === 0) {
        echo json_encode(array("error" => "Nenhum consumo de material registrado no período."));
    } else {
        $response = [];

        // Process and format the response data
        foreach ($result as $row) {
            $ids_atendidos = explode(',', $row['ids_atendidos']);
            $qtd_atendida = explode(',', $row['qtd_atendida']);

            // Calculate sum and fetch material names for each 'ids_atendidos'
            foreach ($ids_atendidos as $key => $materialCode) {
                $materialCode = trim($materialCode);
                $quantity = trim($qtd_atendida[$key]);

                // Check if $materialCode is not empty and is numeric before querying the database
                if (!empty($materialCode) && is_numeric($materialCode)) {
                    // Fetch material name for the current 'id_atendido'
                    $materialNameQuery = "SELECT `nome` FROM `materiais` WHERE `id` = $materialCode";
                    $materialNameResult = db($materialNameQuery);

                    // Check if material name was found
                    if (count($materialNameResult) > 0) {
                        $materialName = $materialNameResult[0]['nome'];

                        // Include data in the response if the sum is greater than zero
                        if ($quantity > 0) {
                            $response[] = array(
                                "id_atendido" => intval($materialCode),
                                "nome" => $materialName,
                                "sum" => intval($quantity)
                            );
                        }
                    }
                }
            }
        }

        echo json_encode($response); // Return the formatted JSON response
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
