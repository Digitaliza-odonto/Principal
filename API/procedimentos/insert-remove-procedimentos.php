<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Read the raw POST data as JSON
    $json_data = json_decode(file_get_contents("php://input"), true);

    // Check if required fields are present in the JSON data
    if (
        isset($json_data['codSUS']) &&
        isset($json_data['DescricaoSUS']) &&
        isset($json_data['tipoSUS']) &&
        $json_data['tipoSUS'] !== "Escolher"
    ) {
        // Retrieve data from JSON
        $codSUS = $json_data['codSUS'];
        $descricaoSUS = $json_data['DescricaoSUS'];
        $tipoSUS = $json_data['tipoSUS'];

        // Perform database insertion
        $sql = "INSERT INTO `procedimentos_sus` (`cod_sus`, `nome`, `tipo`) VALUES (?, ?, ?)";
        $stmt = $connection->prepare($sql);
        $stmt->bind_param("iss", $codSUS, $descricaoSUS, $tipoSUS);

        if ($stmt->execute()) {
            // Return success message as JSON
            echo json_encode("Procedimento cadastrado com sucesso.");
        } else {
            // Return error message as JSON
            echo json_encode("Erro ao cadastrar procedimento: " . $stmt->error);
        }

        // Close the prepared statement
        $stmt->close();
    } else {
        // Return error message as JSON
        echo json_encode("Um ou mais campos do formulário estão faltando ou não atendem às condições necessárias.");
    }
} else {
    // Handle the case where the form was not submitted
    echo json_encode("Formulário não submetido.");
}
?>
