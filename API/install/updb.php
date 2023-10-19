<?php
try {
   require_once '../db.php';   // Importa o arquivo de conexão com o banco de dados

    // Tabela "pacientes"
    db("CREATE TABLE pacientes (
        id INT AUTO_INCREMENT PRIMARY KEY,
        CPF VARCHAR(255) NOT NULL,
        CNS VARCHAR(255),
        Nome VARCHAR(255),
        nomeSocial VARCHAR(255),
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

    // Tabela agenda de clínicas
    db("CREATE TABLE `agenda-clinicas` (
        `id_agendamento` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `agendado_por` varchar(11) NOT NULL,
        `cpf_paciente` varchar(11) NOT NULL,
        `data_agendamento` date NOT NULL,
        `horario_agendamento` varchar(2) NOT NULL,
        `minuto_agendamento` varchar(2) NOT NULL,
        `atividade_curricular` varchar(40) NOT NULL,
        `local` varchar(30) CHARACTER SET latin1 COLLATE latin1_danish_ci NOT NULL,
        `descricao` varchar(25) NOT NULL,
        `status_agendamento` varchar(10) NOT NULL
      )");

    // Tabela avaliações de atendimento
    db("CREATE TABLE `avaliacoesatendimento` (
        `id_avaliacao` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `data_avaliacao` date NOT NULL,
        `matricula` int(11) NOT NULL,
        `id_responsavel` int(11) NOT NULL,
        `responsavel` varchar(40) NOT NULL,
        `cod_disciplina` int(11) NOT NULL,
        `disciplina` varchar(30) NOT NULL,
        `periodo` varchar(6) NOT NULL,
        `pontualidade` varchar(15) NOT NULL,
        `comportamento` varchar(15) NOT NULL,
        `materiais` varchar(15) NOT NULL,
        `conhecimento` varchar(15) NOT NULL,
        `cuidado` varchar(15) NOT NULL,
        `adversidades` varchar(15) NOT NULL,
        `dupla` varchar(15) NOT NULL,
        `autoavaliacao` varchar(15) NOT NULL,
        `obs` text DEFAULT NULL
      ");

    // Tabela materiais
    db("CREATE TABLE `materiais` (
        `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `nome` varchar(30) NOT NULL,
        `quantidade` int(6) NOT NULL,
        `tipo_material` varchar(30) DEFAULT NULL,
        `apresentacao` varchar(10) DEFAULT NULL
      )");
    
    // Tabela requisição de materiais
    db("CREATE TABLE `solicitacao_materiais` (
        `id_solicitacao` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `setor` varchar(30) NOT NULL,
        `nome_solicitante` varchar(40) NOT NULL,
        `id_solicitante` int(11) NOT NULL,
        `data_pedido` date NOT NULL,
        `data_tramite` date DEFAULT NULL,
        `lista_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
        `lista_materiais` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
        `lista_qtd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
        `statusSolicitacao` varchar(22) NOT NULL,
        `ids_atendidos` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
        `qtd_atendida` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
        `obs_tramite` varchar(100) DEFAULT NULL
      )");

    // Tabela procedimentos SUS
    db("CREATE TABLE `procedimentos_sus` (
        `id_procedimento` int(6) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        `cod_sus` int(6) NOT NULL,
        `nome` varchar(100) CHARACTER SET latin1 COLLATE latin1_danish_ci NOT NULL,
        `tipo` varchar(3) NOT NULL
      )");

    // Tabela Entrevista dialogada pediatria
    db("CREATE TABLE `entrevistaped` (
      `id_entrevista` bigint(20) PRIMARY KEY AUTO_INCREMENT,
      `data` date NOT NULL,
      `CPF` varchar(11) NOT NULL,
      `queixaPed` text NOT NULL,
      `probGravidez_YN` varchar(3) NOT NULL,
      `probGravidez` varchar(8) NOT NULL,
      `tipoParto` varchar(12) NOT NULL,
      `doencaInfancia_YN` varchar(3) NOT NULL,
      `doencaInfancia` varchar(60) NOT NULL,
      `internacao_YN` varchar(3) NOT NULL,
      `internacao` varchar(60) NOT NULL,
      `historicoMedicacao_YN` varchar(3) NOT NULL,
      `historicoMedicacao` varchar(60) NOT NULL,
      `alergia_YN_Ped` varchar(3) NOT NULL,
      `alergia_Ped` varchar(60) NOT NULL,
      `respiratorio_YN` varchar(3) NOT NULL,
      `respiratorio` varchar(60) NOT NULL,
      `cardiaco_YN` varchar(3) NOT NULL,
      `cardiaco` varchar(60) NOT NULL,
      `sanguineo_YN` varchar(3) NOT NULL,
      `sanguineo` varchar(60) NOT NULL,
      `diabetes_YN` varchar(3) NOT NULL,
      `diabetes` varchar(60) NOT NULL,
      `medicacao_YN_Ped` varchar(3) NOT NULL,
      `medicacao_Ped` varchar(60) NOT NULL,
      `pediatra` varchar(64) NOT NULL,
      `telPediatra` int(11) NOT NULL,
      `obs_ped` varchar(120) NOT NULL
    );");

    // Tabela Entrevista dialogada ADULTOS
    db("CREATE TABLE `entrevista` (
      `id_entrevista` bigint(20) NOT NULL PRIMARY KEY AUTO_INCREMENT,
      `data` date NOT NULL,
      `CPF` varchar(11) NOT NULL,
      `queixa` text NOT NULL,
      `doenca_YN` varchar(3) NOT NULL,
      `doenca` varchar(60) NOT NULL,
      `tto_medico_YN` varchar(3) NOT NULL,
      `tto_medico` varchar(60) NOT NULL,
      `medicacao_YN` varchar(3) NOT NULL,
      `medicacao` varchar(60) NOT NULL,
      `alergia_YN` varchar(3) NOT NULL,
      `alergia` varchar(60) NOT NULL,
      `fumante_YN` varchar(3) NOT NULL,
      `fumante` varchar(60) NOT NULL,
      `etilista_YN` varchar(3) NOT NULL,
      `etilista` varchar(60) NOT NULL,
      `ultimaConsulta` varchar(15) NOT NULL,
      `ultimoTTO` varchar(60) NOT NULL,
      `freq_Higiene` varchar(60) NOT NULL,
      `instr_Higiene` text NOT NULL,
      `fluor` text NOT NULL,
      `operado_YN` varchar(3) NOT NULL,
      `operado` varchar(60) NOT NULL,
      `cicatrizacao_YN` varchar(3) NOT NULL,
      `cicatrizacao` varchar(60) NOT NULL,
      `anestesia_YN` varchar(3) NOT NULL,
      `anestesia` varchar(60) NOT NULL,
      `hemorragia_YN` varchar(3) NOT NULL,
      `hemorragia` varchar(60) NOT NULL,
      `gravidez_YN` varchar(3) NOT NULL,
      `gravidez` varchar(8) NOT NULL,
      `historicoFamiliar` varchar(60) NOT NULL,
      `obs` varchar(120) NOT NULL,
      `medico` varchar(64) NOT NULL,
      `medicoTEL` int(11) NOT NULL
    );");

    // Tabela plano de tratamentos
    db("CREATE TABLE plano_tto (
      id INT AUTO_INCREMENT PRIMARY KEY,
      CPF VARCHAR(11),
      data DATE,
      queixa VARCHAR(255),
      aspectoRelevante VARCHAR(255),
      especialidade VARCHAR(255),
      descricao TEXT,
      aluno_id VARCHAR(255),
      responsavel VARCHAR(255),
      componente_curricular VARCHAR(255)
    );");


    // SET EVENT PARA TROCAR STATUS DE PACIENTES QUE FALTAM
    // SET SQL_MODE = `NO_AUTO_VALUE_ON_ZERO`;
    // START TRANSACTION;
    // SET time_zone = "-03:00";
    
    // DELIMITER $$

    // CREATE DEFINER=`root`@`localhost` EVENT `update_falta` ON SCHEDULE EVERY 1 DAY STARTS '2023-10-12 00:01:00' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `agenda-clinicas` SET status_agendamento = 'Faltou' WHERE status_agendamento = 'Agendado' AND data_agendamento < CURDATE()$$

    // DELIMITER ;
    // COMMIT;
    

    echo "Tabelas criadas com sucesso!";
} catch (PDOException $e) {
    echo "Erro ao criar tabelas: " . $e->getMessage();
}
?>
