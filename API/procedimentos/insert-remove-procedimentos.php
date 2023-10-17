<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

$input = json_decode(file_get_contents('php://input'), true);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Delete operation
    if (isset($input['selectedId']) && is_array($input['selectedId'])) {
        $selectedIds = $input['selectedId'];
        $successMessage = "";
        $errorMessage = "";

        foreach ($selectedIds as $idToDelete) {
            $sql = "DELETE FROM `procedimentos_sus` WHERE `procedimentos_sus`.`id_procedimento` = ?";
            $stmt = $connection->prepare($sql);
            $stmt->bind_param("i", $idToDelete);

            if ($stmt->execute()) {
                $successMessage = "Procedimento(s) deletado(s) com sucesso.";
            } else {
                $errorMessage = "Erro ao deletar procedimento: " . $stmt->error;
            }

            $stmt->close();
        }

        if ($errorMessage !== "") {
            echo json_encode(["error" => $errorMessage]);
        } else {
            echo json_encode(["message" => $successMessage]);
        }
    }
    // Update operation
    else if (isset($input['id_procedimento'], $input['codSUS'], $input['descricaoSUS'], $input['tipoSUS']) && !empty($input['id_procedimento'])) {
        $id_procedimento = $input['id_procedimento'];
        $codSUS = $input['codSUS'];
        $descricaoSUS = $input['descricaoSUS'];
        $tipoSUS = $input['tipoSUS'];

        $sql = "UPDATE `procedimentos_sus` SET `cod_sus` = ?, `nome` = ?, `tipo` = ? WHERE `id_procedimento` = ?";
        $stmt = $connection->prepare($sql);
        $stmt->bind_param("issi", $codSUS, $descricaoSUS, $tipoSUS, $id_procedimento);

        if ($stmt->execute()) {
            echo json_encode(["message" => "Procedimento atualizado com sucesso."]);
        } else {
            echo json_encode(["error" => "Erro ao atualizar procedimento: " . $stmt->error]);
        }

        $stmt->close();
    }
    // Insert operation
    else if (isset($input['codSUS'], $input['descricaoSUS'], $input['tipoSUS']) && $input['tipoSUS'] !== "Escolher") {
        $codSUS = $input['codSUS'];
        $descricaoSUS = $input['descricaoSUS'];
        $tipoSUS = $input['tipoSUS'];

        $sql = "INSERT INTO `procedimentos_sus` (cod_sus, nome, tipo) VALUES (?, ?, ?)";
        $stmt = $connection->prepare($sql);
        $stmt->bind_param("sss", $codSUS, $descricaoSUS, $tipoSUS);

        if ($stmt->execute()) {
            echo json_encode(["message" => "Procedimento cadastrado com sucesso."]);
        } else {
            echo json_encode(["error" => "Erro ao cadastrar procedimento: " . $stmt->error]);
        }

        $stmt->close();
    }
    else {
        echo json_encode(["error" => "Invalid request or missing required parameters."]);
    }
} else {
    echo json_encode(["error" => "Form not submitted."]);
}
?>