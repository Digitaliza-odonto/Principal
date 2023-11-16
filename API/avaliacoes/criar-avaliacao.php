<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

require_once '../db.php';   // Import the file that contains the database connection

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);

    // Identificação do atendimento
    $data_avaliacao = date('Y-m-d');
    $id_aluno = $data['id_aluno'];
    $id_responsavel = $data['id_responsavel'];
    $responsavel = $data['responsavel'];
    $cod_disciplina = $data['cod_disciplina'];
    $componente_curricular = $data['componente_curricular'];
    $periodo = $data['periodo'];

    // Avaliação de atendimento
    $avaliarPontualidade = $data['avaliarPontualidade'];
    $avaliarComportamento = $data['avaliarComportamento'];
    $avaliarMateriais = $data['avaliarMateriais'];
    $avaliarConhecimento = $data['avaliarConhecimento'];
    $avaliarCuidado = $data['avaliarCuidado'];
    $avaliarAdversidades = $data['avaliarAdversidades'];
    $avaliarDupla = $data['avaliarDupla'];
    $avaliarAuto = $data['avaliarAuto'];
    $avaliarObservações = $data['avaliarObservações'];

    $insertQuery = "INSERT INTO `avaliacoesatendimento`(`data_avaliacao`, `matricula`, `id_responsavel`, `responsavel`, `cod_disciplina`, `disciplina`, `periodo`, `pontualidade`, `comportamento`, `materiais`, `conhecimento`, `cuidado`, `adversidades`, `dupla`, `autoavaliacao`, `obs`) 
        VALUES ('$data_avaliacao','$id_aluno','$id_responsavel', '$responsavel', '$cod_disciplina', '$componente_curricular','$periodo', '$avaliarPontualidade', '$avaliarComportamento', '$avaliarMateriais', '$avaliarConhecimento', '$avaliarCuidado', '$avaliarAdversidades', '$avaliarDupla', '$avaliarAuto', '$avaliarObservações')";
    
    db($insertQuery);

    echo json_encode(array("message" => "Avaliação de atendimento registrada com sucesso"));
    
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>