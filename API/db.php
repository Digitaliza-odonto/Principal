<?php
function db($query) {

    $pdo = new PDO("mysql:host=localhost;dbname=id21352215_gestaosaude", "id21352215_pedroaf", "33551047pP!");
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // executa a query e retorna os resultados
    $stmt = $pdo->prepare($query);
    $stmt->execute();
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

    // retorna os resultados
    return $result;

}

?>