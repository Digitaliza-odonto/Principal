<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");
header("Content-Type: application/json");

require_once '../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = date('Y-m-d');
    $CPF = $_POST['Cpf'];
    $queixa = $_POST['queixa'];
    $doenca_YN = $_POST['doenca_YN'];
    $doenca = $_POST['doenca'];
    $tto_medico_YN = $_POST['tto_medico_YN'];
    $tto_medico = $_POST['tto_medico'];
    $medicacao_YN = $_POST['medicacao_YN'];
    $medicacao = $_POST['medicacao'];
    $alergia_YN = $_POST['alergia_YN'];
    $alergia = $_POST['alergia'];
    $fumante_YN = $_POST['fumante_YN'];
    $fumante = $_POST['fumante'];
    $etilista_YN = $_POST['etilista_YN'];
    $etilista = $_POST['etilista'];
    $ultimaConsulta = $_POST['ultimaConsulta'];
    $ultimoTTO = $_POST['ultimoTTO'];
    $freq_higiene = $_POST['freq_higiene'];
    $instr_higiene = implode(',', $_POST['instr_higiene']);
    $fluor = implode(',', $_POST['fluor']);
    $operado_YN = $_POST['operado_YN'];
    $operado = $_POST['operado'];
    $cicatrizacao_YN = $_POST['cicatrizacao_YN'];
    $cicatrizacao = $_POST['cicatrizacao'];
    $anestesia_YN = $_POST['anestesia_YN'];
    $anestesia = $_POST['anestesia'];
    $hemorragia_YN = $_POST['hemorragia_YN'];
    $hemorragia = $_POST['hemorragia'];
    $gravidez_YN = $_POST['gravidez_YN'];
    $gravidez = $_POST['gravidez'];
    $historicoFamiliar = $_POST['historicoFamiliar'];
    $obs = $_POST['obs'];
    $medico = $_POST['medico'];
    $medicoTEL = $_POST['medicoTEL'];

    if (!empty($queixa)) {
        // If 'queixa' is not empty, execute $insertQuery1
        $insertQuery = "INSERT INTO `entrevista`(`data`, `CPF`, `queixa`, `doenca_YN`, `doenca`, `tto_medico_YN`, `tto_medico`, `medicacao_YN`, `medicacao`, `alergia_YN`, `alergia`, `fumante_YN`, `fumante`, `etilista_YN`, `etilista`, `ultimaConsulta`, `ultimoTTO`, `freq_Higiene`, `instr_Higiene`, `fluor`, `operado_YN`, `operado`, `cicatrizacao_YN`, `cicatrizacao`, `anestesia_YN`, `anestesia`, `hemorragia_YN`, `hemorragia`, `gravidez_YN`, `gravidez`, `historicoFamiliar`, `obs`, `medico`, `medicoTEL`) 
        VALUES ('$data', '$CPF', '$queixa', '$doenca_YN', '$doenca', '$tto_medico_YN', '$tto_medico', '$medicacao_YN', '$medicacao', '$alergia_YN', '$alergia', '$fumante_YN', '$fumante', '$etilista_YN', '$etilista', '$ultimaConsulta', '$ultimoTTO', '$freq_higiene', '$instr_higiene', '$fluor', '$operado_YN', '$operado', '$cicatrizacao_YN', '$cicatrizacao', '$anestesia_YN', '$anestesia', '$hemorragia_YN', '$hemorragia', '$gravidez_YN', '$gravidez', '$historicoFamiliar', '$obs', '$medico', '$medicoTEL')";
    } else {
        // If 'queixa' is empty, execute $insertQuery2
        $queixaPed = $_POST['queixaPed'];
        $probGravidez_YN = $_POST['probGravidez_YN'];
        $probGravidez = $_POST['probGravidez'];
        $tipoParto = $_POST['tipoParto'];
        $doencaInfancia_YN = $_POST['doencaInfancia_YN'];
        $doencaInfancia = $_POST['doencaInfancia'];
        $internacao_YN = $_POST['internacao_YN'];
        $internacao = $_POST['internacao'];
        $historicoMedicacao_YN = $_POST['historicoMedicacao_YN'];
        $historicoMedicacao = $_POST['historicoMedicacao'];
        $alergia_YN_Ped = $_POST['alergia_YN_Ped'];
        $alergia_Ped = $_POST['alergia_Ped'];
        $respiratorio_YN = $_POST['respiratorio_YN'];
        $respiratorio = $_POST['respiratorio'];
        $cardiaco_YN = $_POST['cardiaco_YN'];
        $cardiaco = $_POST['cardiaco'];
        $sanguineo_YN = $_POST['sanguineo_YN'];
        $sanguineo = $_POST['sanguineo'];
        $diabetes_YN = $_POST['diabetes_YN'];
        $diabetes = $_POST['diabetes'];
        $medicacao_YN_Ped = $_POST['medicacao_YN_Ped'];
        $medicacao_Ped = $_POST['medicacao_Ped'];
        $pediatra = $_POST['pediatra'];
        $telPediatra = $_POST['telPediatra'];
        $obs_ped = $_POST['obs_ped'];

        $insertQuery = "INSERT INTO `entrevistaped`(`data`, `CPF`, `queixaPed`, `probGravidez_YN`, `probGravidez`, `tipoParto`, `doencaInfancia_YN`, `doencaInfancia`, `internacao_YN`, `internacao`, `historicoMedicacao_YN`, `historicoMedicacao`, `alergia_YN_Ped`, `alergia_Ped`, `respiratorio_YN`, `respiratorio`, `cardiaco_YN`, `cardiaco`, `sanguineo_YN`, `sanguineo`, `diabetes_YN`, `diabetes`, `medicacao_YN_Ped`, `medicacao_Ped`, `pediatra`, `telPediatra`, `obs_ped`) 
        VALUES ('$data', '$CPF', '$queixaPed', '$probGravidez_YN', '$probGravidez', '$tipoParto', '$doencaInfancia_YN', '$doencaInfancia', '$internacao_YN', '$internacao', '$historicoMedicacao_YN', '$historicoMedicacao', '$alergia_YN_Ped', '$alergia_Ped', '$respiratorio_YN', '$respiratorio', '$cardiaco_YN', '$cardiaco', '$sanguineo_YN', '$sanguineo', '$diabetes_YN', '$diabetes', '$medicacao_YN_Ped', '$medicacao_Ped', '$pediatra', '$telPediatra', '$obs_ped')";
    }

    if (db($insertQuery)) {
        echo json_encode(array("message" => "Entrevista dialogada cadastrada com sucesso"));
    } else {
        echo json_encode(array("error" => "Erro ao cadastrar entrevista dialogada"));
    }
} else {
    echo json_encode(array("error" => "Método inválido"));
}
?>
