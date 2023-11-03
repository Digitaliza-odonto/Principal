<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, PATCH, DELETE");
header("Access-Control-Allow-Headers: X-Requested-With, Content-Type");
header("Access-Control-Allow-Credentials: true");

include_once '../../db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $matricula = $data['matricula'];
    $nome = $data['nome'];
    $curso = $data['curso'];
    $especial = $data['especial'];
    $situação = $data['situação'];
    $vacina = $data['vacina'];
    $id = $data['id'];

    $existingAluno = db("SELECT * FROM alunos WHERE matricula = '$matricula'");

    if (count($existingAluno) > 0) {
        echo json_encode(array("alunoCriado" => false, "message" => "Aluno já existe"));
    } else {
        $insertQuery = "INSERT INTO alunos (id, matricula, nome, curso, especial, situação, vacina) 
                        VALUES ('$id', '$matricula', '$nome', '$curso', '$especial', '$situação', '$vacina')";

        try {
            db($insertQuery);
            echo json_encode(array("alunoCriado" => true, "message" => "Aluno criado com sucesso"));
        } catch (PDOException $e) {
            echo json_encode(array("message" => "Erro ao criar aluno: " . $e->getMessage()));
        }
    }
} else {
    echo json_encode(array("message" => "Método inválido"));
}
?>