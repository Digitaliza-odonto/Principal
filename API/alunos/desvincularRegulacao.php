<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the database connection file

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $id_vinculos = $data['id_vinculos']; // Updated to handle an array of ids
    $novoStatus = $data['novoStatus']; // New line to get 'novoStatus'

    // Loop through each id in the array
    foreach ($id_vinculos as $id_vinculo) {
        $existingVinculo = db("SELECT * FROM vinculo_aluno_paciente WHERE id = '$id_vinculo'");

        if (count($existingVinculo) > 0) {
            $updateQuery = "UPDATE vinculo_aluno_paciente SET StatusVinculo='Inativo', fimVinculo=CURDATE() WHERE id = '$id_vinculo'";

            try {
                db($updateQuery);
                echo json_encode(array("vinculoExcluido" => true, "message" => "Vínculo marcado como inativo com sucesso para o ID: $id_vinculo"));

                // Perform the additional queries for each id in the loop
                $updateRegulacaoQuery = "UPDATE regulacaointerna SET status_regulacao='Tramitado', data_tramite=CURRENT_DATE WHERE id_regulacao = '$id_vinculo'";
                $updateEncaminhamentosQuery = "UPDATE encaminhamentos SET Status='$novoStatus' WHERE id = '$id_vinculo'";

                // Execute the additional queries
                try {
                    db($updateRegulacaoQuery);
                    db($updateEncaminhamentosQuery);
                } catch (PDOException $e) {
                    echo json_encode(array("message" => "Erro ao executar as consultas adicionais para o ID: $id_vinculo - " . $e->getMessage()));
                }

            } catch (PDOException $e) {
                echo json_encode(array("message" => "Erro ao marcar vínculo como inativo para o ID: $id_vinculo - " . $e->getMessage()));
            }
        } else {
            echo json_encode(array("vinculoExcluido" => false, "message" => "Vínculo não encontrado para o ID: $id_vinculo"));
        }
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>
