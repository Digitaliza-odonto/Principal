<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $CPF = $data['CPF'];
    $informacoesImportantes = $data['informacoesImportantes'];
    $CNS = $data['CNS'];
    $Nome = $data['Nome'];
    $nomeSocial = $data['nomeSocial'];
    $Rg = $data['Rg'];
    $DataNasc = $data['DataNasc'];
    $Email = $data['Email'];
    $Tel = $data['Tel'];
    $Tel2 = $data['Tel2'];
    $Tel3 = $data['Tel3'];
    $EstadoCivil = $data['EstadoCivil'];
    $Sexo = $data['Sexo'];
    $NomeMae = $data['NomeMae'];
    $NomePai = $data['NomePai'];
    $CorRaca = $data['CorRaca'];
    $PNE = $data['PNE'];
    $EnderecoTipo = $data['EnderecoTipo'];
    $Cep = $data['Cep'];
    $Rua = $data['Rua'];
    $EndNumero = $data['EndNumero'];
    $EndComplemento = $data['EndComplemento'];
    $Bairro = $data['Bairro'];
    $Cidade = $data['Cidade'];

    // Convert DataNasc from DD/MM/YYYY to YYYY-MM-DD
    $DataNasc = DateTime::createFromFormat('d/m/Y', $data['DataNasc']);
    if ($DataNasc !== false) {
        $DataNasc = $DataNasc->format('Y-m-d');
    } else {
        // Handle invalid date format
        echo json_encode(array("error" => true, "message" => "DataNasc format is invalid. Use DD/MM/YYYY."));
        exit();
    }

    $existingPatient = db("SELECT * FROM pacientes WHERE CPF = '$CPF'");

    if (count($existingPatient) > 0) {
        echo json_encode(array("pacienteCriado" => false, "message" => "Paciente com esse CPF já existe"));
    } else {
        $insertQuery = "INSERT INTO `pacientes`(`CPF`, `informacoesImportantes`, `CNS`, `Nome`, `nomeSocial`, `Rg`, `DataNasc`, `Tel`, `Tel2`, `Tel3`, `Email`, `EstadoCivil`, `Sexo`, `NomeMae`, `NomePai`, `CorRaca`, `PNE`, `EnderecoTipo`, `Cep`, `Rua`, `EndNumero`, `EndComplemento`, `Bairro`, `Cidade`)
                            VALUES ('$CPF', '$informacoesImportantes', '$CNS', '$Nome', '$nomeSocial', '$Rg', '$DataNasc', '$Tel', '$Tel2', '$Tel3', '$Email', '$EstadoCivil', '$Sexo', '$NomeMae', '$NomePai', '$CorRaca', '$PNE', '$EnderecoTipo', '$Cep', '$Rua', '$EndNumero', '$EndComplemento', '$Bairro', '$Cidade')";

        db($insertQuery);

        echo json_encode(array("pacienteCriado" => true, "message" => "Paciente criado com sucesso"));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
