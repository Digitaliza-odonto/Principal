<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $CPF = $data['Cpf'];
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

    $existingPatient = db("SELECT * FROM pacientes WHERE CPF = '$CPF'");

    if (count($existingPatient) > 0) {
        // Update the existing patient record
        $updateQuery = "UPDATE pacientes SET informacoesImportantes = '$informacoesImportantes', Nome = '$Nome', nomeSocial = '$nomeSocial', Rg = '$Rg', DataNasc = '$DataNasc', Email = '$Email', Tel = '$Tel', Tel2 = '$Tel2', Tel3 = '$Tel3',EstadoCivil = '$EstadoCivil', Sexo = '$Sexo', NomeMae = '$NomeMae', NomePai = '$NomePai', CorRaca = '$CorRaca', PNE = '$PNE', EnderecoTipo = '$EnderecoTipo', Cep = '$Cep', Rua = '$Rua', EndNumero = '$EndNumero', EndComplemento = '$EndComplemento', Bairro = '$Bairro', Cidade = '$Cidade' WHERE CPF = '$CPF'";
        
        db($updateQuery);

        echo json_encode(array("pacienteAtualizado" => true, "message" => "Paciente atualizado com sucesso"));
    } else {
        echo json_encode(array("pacienteAtualizado" => false, "message" => "Paciente não encontrado"));
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
