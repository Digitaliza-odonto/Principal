<?php
try {
   require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

    // Tabela "pacientes"
    db("CREATE TABLE pacientes (
        id INT AUTO_INCREMENT PRIMARY KEY,
        CPF VARCHAR(255) NOT NULL,
        CNS VARCHAR(255),
        Nome VARCHAR(255),
        Rg VARCHAR(255),
        DataNasc VARCHAR(255),
        Email VARCHAR(255),
        Tel VARCHAR(255),
        EstadoCivil VARCHAR(255),
        Sexo VARCHAR(255),
        NomeMae VARCHAR(255),
        NomePai VARCHAR(255),
        CorRaca VARCHAR(255),
        PNE VARCHAR(255),
        EnderecoTipo VARCHAR(255),
        Cep VARCHAR(255),
        Rua VARCHAR(255),
        EndNumero VARCHAR(255),
        EndComplemento VARCHAR(255),
        Bairro VARCHAR(255),
        Cidade VARCHAR(255)
    )");

    // Tabela "encaminhamentos"
    db("CREATE TABLE encaminhamentos (
        id INT AUTO_INCREMENT PRIMARY KEY,
        CPF VARCHAR(255),
        Data VARCHAR(255) NOT NULL,
        Curso VARCHAR(255),
        Especialidade VARCHAR(255),
        Demanda VARCHAR(255),
        Status VARCHAR(255),
        Observacoes VARCHAR(255),
        Complexidade VARCHAR(255)
    )");

    // Tabela "usuarios"
    db("CREATE TABLE usuarios (
        id INT AUTO_INCREMENT PRIMARY KEY,
        Matricula VARCHAR(255) NOT NULL,
        Nome VARCHAR(255) NOT NULL,
        Tipo VARCHAR(255) NOT NULL,
        Pacientes VARCHAR(255)
    )");

    // Tabela "disciplinas"
    db("CREATE TABLE disciplinas (
        id INT AUTO_INCREMENT PRIMARY KEY,
        Nome VARCHAR(255) NOT NULL,
        turma VARCHAR(255) NOT NULL,
        periodo VARCHAR(255) NOT NULL,
        alunos VARCHAR(255) NOT NULL,
        ano VARCHAR(255) NOT NULL,
        curso VARCHAR(255) NOT NULL,
        codigo VARCHAR(255) NOT NULL,
        datadecadastro VARCHAR(255) NOT NULL
    )");


    echo "Tabelas criadas com sucesso!";
} catch (PDOException $e) {
    echo "Erro ao criar tabelas: " . $e->getMessage();
}
?>
