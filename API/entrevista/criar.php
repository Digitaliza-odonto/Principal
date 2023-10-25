<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    
    $Data = date('Y-m-d');
    $id_aluno = $data['id_aluno'];

    //ADULTO
    $id_disciplina = $data['id_disciplina'];
    $CPF = $data['CPF'];
    $queixa = $data['queixa'];
    $doenca_YN = $data['doenca_YN'];
    $doenca = $data['doenca'];
    $tto_medico_YN = $data['tto_medico_YN'];
    $tto_medico = $data['tto_medico'];
    $medicacao_YN = $data['medicacao_YN'];
    $medicacao = $data['medicacao'];
    $alergia_YN = $data['alergia_YN'];
    $alergia = $data['alergia'];
    $fumante_YN = $data['fumante_YN'];
    $fumante = $data['fumante'];
    $etilista_YN = $data['etilista_YN'];
    $etilista = $data['etilista'];
    $ultimaConsulta = $data['ultimaConsulta'];
    $ultimoTTO = $data['ultimoTTO'];
    $freq_higiene = $data['freq_higiene'];
    $instr_higiene = $data['instr_higiene'];
    $fluor = $data['fluor'];
    $operado_YN = $data['operado_YN'];
    $operado = $data['operado'];
    $cicatrizacao_YN = $data['cicatrizacao_YN'];
    $cicatrizacao = $data['cicatrizacao'];
    $anestesia_YN = $data['anestesia_YN'];
    $anestesia = $data['anestesia'];
    $hemorragia_YN = $data['hemorragia_YN'];
    $hemorragia = $data['hemorragia'];
    $gravidez_YN = $data['gravidez_YN'];
    $gravidez = $data['gravidez'];
    $historicoFamiliar = $data['historicoFamiliar'];
    $obs = $data['obs'];
    $medico = $data['medico'];
    $medicoTEL = $data['medicoTEL'];
    
    //PEDIATRIA
    $queixaPed = $data['queixaPed'];
    $id_disciplinaPed = $data['id_disciplinaPed'];
    $probGravidez_YN = $data['probGravidez_YN'];
    $probGravidez = $data['probGravidez'];
    $tipoParto = $data['tipoParto'];
    $doencaInfancia_YN = $data['doencaInfancia_YN'];
    $doencaInfancia = $data['doencaInfancia'];
    $internacao_YN = $data['internacao_YN'];
    $internacao = $data['internacao'];
    $historicoMedicacao_YN = $data['historicoMedicacao_YN'];
    $historicoMedicacao = $data['historicoMedicacao'];
    $alergia_YN_Ped = $data['alergia_YN_Ped'];
    $alergia_Ped = $data['alergia_Ped'];
    $respiratorio_YN = $data['respiratorio_YN'];
    $respiratorio = $data['respiratorio'];
    $cardiaco_YN = $data['cardiaco_YN'];
    $cardiaco = $data['cardiaco'];
    $sanguineo_YN = $data['sanguineo_YN'];
    $sanguineo = $data['sanguineo'];
    $diabetes_YN = $data['diabetes_YN'];
    $diabetes = $data['diabetes'];
    $medicacao_YN_Ped = $data['medicacao_YN_Ped'];
    $medicacao_Ped = $data['medicacao_Ped'];
    $pediatra = $data['pediatra'];
    $telPediatra = $data['telPediatra'];
    $obs_ped = $data['obs_ped'];
    
    
// Check if 'queixa' field is empty
if (empty($data['queixa'])) {
    // If 'queixa' is empty, use the query for entrevistaped table
    $insertQuery = "INSERT INTO `entrevistaped` (`id_aluno`, `id_disciplinaPed`, `Data`, `CPF`, `queixaPed`, `probGravidez_YN`, `probGravidez`, `tipoParto`, `doencaInfancia_YN`, `doencaInfancia`, `internacao_YN`, `internacao`, `historicoMedicacao_YN`, `historicoMedicacao`, `alergia_YN_Ped`, `alergia_Ped`, `respiratorio_YN`, `respiratorio`, `cardiaco_YN`, `cardiaco`, `sanguineo_YN`, `sanguineo`, `diabetes_YN`, `diabetes`, `medicacao_YN_Ped`, `medicacao_Ped`, `pediatra`, `telPediatra`, `obs_ped`)
            VALUES ('$id_aluno', '$id_disciplinaPed', '$Data', '$CPF', '$queixaPed', '$probGravidez_YN', '$probGravidez', '$tipoParto', '$doencaInfancia_YN', '$doencaInfancia', '$internacao_YN', '$internacao', '$historicoMedicacao_YN', '$historicoMedicacao', '$alergia_YN_Ped', '$alergia_Ped', '$respiratorio_YN', '$respiratorio', '$cardiaco_YN', '$cardiaco', '$sanguineo_YN', '$sanguineo', '$diabetes_YN', '$diabetes', '$medicacao_YN_Ped', '$medicacao_Ped', '$pediatra', '$telPediatra', '$obs_ped')";


} else {
    // If 'queixa' is not empty, use the query for entrevista table
    $insertQuery = "INSERT INTO `entrevista` (`id_aluno`, `id_disciplina`, `data`, `CPF`, `queixa`, `doenca_YN`, `doenca`, `tto_medico_YN`, `tto_medico`, `medicacao_YN`, `medicacao`, `alergia_YN`, `alergia`, `fumante_YN`, `fumante`, `etilista_YN`, `etilista`, `ultimaConsulta`, `ultimoTTO`, `freq_higiene`, `instr_higiene`, `fluor`, `operado_YN`, `operado`, `cicatrizacao_YN`, `cicatrizacao`, `anestesia_YN`, `anestesia`, `hemorragia_YN`, `hemorragia`, `gravidez_YN`, `gravidez`, `historicoFamiliar`, `obs`, `medico`, `medicoTEL`) 
            VALUES ('$id_aluno', '$id_disciplina', '$Data', '$CPF', '$queixa', '$doenca_YN', '$doenca', '$tto_medico_YN', '$tto_medico', '$medicacao_YN', '$medicacao', '$alergia_YN', '$alergia', '$fumante_YN', '$fumante', '$etilista_YN', '$etilista', '$ultimaConsulta', '$ultimoTTO', '$freq_higiene', '$instr_higiene', '$fluor', '$operado_YN', '$operado', '$cicatrizacao_YN', '$cicatrizacao', '$anestesia_YN', '$anestesia', '$hemorragia_YN', '$hemorragia', '$gravidez_YN', '$gravidez', '$historicoFamiliar', '$obs', '$medico', '$medicoTEL')";
}

// Execute the query
db($insertQuery);

echo json_encode(array("message" => "Entrevista dialogada registrada com sucesso"));
} else {
echo json_encode(array("message" => "Método inválido"));
}

?>