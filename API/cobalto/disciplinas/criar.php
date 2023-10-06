<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $Nome = $data['Nome'];
    $turma = $data['turma'];
    $periodo = $data['periodo'];
    $alunos = json_encode($data['alunos']);
    $ano = $data['ano'];
    $curso = $data['curso'];
    $codigo = $data['codigo'];
    $datadecadastro = $data['datadecadastro'];

    $existingDisciplina = db("SELECT * FROM disciplinas WHERE Nome = '$Nome' AND turma = '$turma' AND periodo = '$periodo'");

    if (count($existingDisciplina) > 0) {
        echo json_encode(array("diciplinaCriada" => false, "message" => "Disciplina já existe"));
    } else {
        $insertQuery = "INSERT INTO disciplinas (Nome, turma, periodo, alunos, ano, curso, codigo, datadecadastro) 
                        VALUES ('$Nome', '$turma', '$periodo', '$alunos', '$ano', '$curso', '$codigo', '$datadecadastro')";

        try {
            db($insertQuery);
            echo json_encode(array("diciplinaCriada" => true, "message" => "Disciplina criada com sucesso"));
        } catch (PDOException $e) {
            echo json_encode(array("message" => "Erro ao criar disciplina: " . $e->getMessage()));
        }
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}

?>
