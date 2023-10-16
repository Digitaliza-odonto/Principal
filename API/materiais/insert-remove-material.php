<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

include_once('../config.php');

$input = json_decode(file_get_contents('php://input'), true);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($input['selectedId']) && is_array($input['selectedId'])) {
        // Delete operation
        $selectedIds = $input['selectedId'];
        $successMessage = "";
        $errorMessage = "";

        foreach ($selectedIds as $idToDelete) {
            $sql = "DELETE FROM `materiais` WHERE `materiais`.`id` = ?";
            $stmt = $connection->prepare($sql);
            $stmt->bind_param("i", $idToDelete);

            if ($stmt->execute()) {
                $successMessage = "Material(s) deletado(s) com sucesso.";
            } else {
                $errorMessage = "Erro ao deletar material: " . $stmt->error;
            }

            $stmt->close();
        }

        if ($errorMessage !== "") {
            echo json_encode(["error" => $errorMessage]);
        } else {
            echo json_encode(["message" => $successMessage]);
        }
    } else {
        // Insert or update operation
        if (
            isset($input['nomeMaterial']) &&
            isset($input['tipoMaterial']) && $input['tipoMaterial'] !== "Escolher" &&
            isset($input['qtdMaterial']) && $input['qtdMaterial'] > 0 &&
            isset($input['apresentacao']) && $input['apresentacao'] !== "Escolher"
        ) {
            $nomeMaterial = $input['nomeMaterial'];
            $tipoMaterial = $input['tipoMaterial'];
            $qtdMaterial = $input['qtdMaterial'];
            $apresentacao = $input['apresentacao'];

            if (isset($input['idMaterial']) && $input['idMaterial'] !== "") {
                // Update operation
                $idMaterial = $input['idMaterial'];
                $sql = "UPDATE `materiais` SET `nome` = ?, `quantidade` = ?, `tipo_material` = ?, `apresentacao` = ? WHERE `id` = ?";
                $stmt = $connection->prepare($sql);
                $stmt->bind_param("sissi", $nomeMaterial, $qtdMaterial, $tipoMaterial, $apresentacao, $idMaterial);

                if ($stmt->execute()) {
                    echo json_encode(["message" => "Material atualizado com sucesso."]);
                } else {
                    echo json_encode(["error" => "Erro ao atualizar material: " . $stmt->error]);
                }

                $stmt->close();
            } else {
                // Insert operation
                $sql = "INSERT INTO materiais (nome, quantidade, tipo_material, apresentacao) VALUES (?, ?, ?, ?)";
                $stmt = $connection->prepare($sql);
                $stmt->bind_param("siss", $nomeMaterial, $qtdMaterial, $tipoMaterial, $apresentacao);

                if ($stmt->execute()) {
                    echo json_encode(["message" => "Material inserido com sucesso."]);
                } else {
                    echo json_encode(["error" => "Erro ao inserir material: " . $stmt->error]);
                }

                $stmt->close();
            }
        } else {
            echo json_encode(["error" => "Um ou mais campos do formulário estão faltando ou não atendem às condições necessárias."]);
        }
    }
} else {
    echo json_encode(["error" => "Form not submitted."]);
}
?>