<?php
require_once 'db.php';

echo 'Teste de conexão com o banco de dados: <br>';
$result = db("select * from pacientes");
if ($result) {
    echo 'Conexão com o banco de dados realizada com sucesso!';
} else {
    echo 'Erro ao conectar com o banco de dados.';
}
// converte o resultado para um array
$result = json_encode($result[1], true);
echo $result;
?>