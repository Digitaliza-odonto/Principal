-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2023 at 10:52 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21352215_gestaosaude`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda-clinicas`
--

CREATE TABLE `agenda-clinicas` (
  `id_agendamento` bigint(20) NOT NULL,
  `agendado_por` varchar(50) NOT NULL,
  `cpf_paciente` varchar(50) NOT NULL,
  `data_agendamento` date NOT NULL,
  `horario_agendamento` varchar(2) NOT NULL,
  `minuto_agendamento` varchar(2) NOT NULL,
  `atividade_curricular` varchar(40) NOT NULL,
  `local` varchar(30) CHARACTER SET latin1 COLLATE latin1_danish_ci NOT NULL,
  `descricao` varchar(25) NOT NULL,
  `status_agendamento` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `agenda-clinicas`
--

INSERT INTO `agenda-clinicas` (`id_agendamento`, `agendado_por`, `cpf_paciente`, `data_agendamento`, `horario_agendamento`, `minuto_agendamento`, `atividade_curricular`, `local`, `descricao`, `status_agendamento`) VALUES
(1, '2010123', '111222333', '2023-10-16', '09', '00', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(2, '2010123', '2147483647', '2018-10-23', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Faltou'),
(3, '2010123', '654123789', '2023-10-26', '08', '00', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Atendido'),
(4, 'Aluno', '112.289.390-63', '2023-10-23', '15', '15', 'RADIOLOGIA E IMAGINOLOGIA', 'Radiologia', 'Primeira consulta', 'No local'),
(5, 'Aluno', '999.888.777-66', '2016-10-23', '09', '30', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'No local'),
(6, '2014321', '112.289.390-63', '2018-10-23', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Faltou'),
(7, '2014321', '321456789', '2020-10-23', '08', '00', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Faltou'),
(8, '2014321', '789987654', '2016-10-23', '15', '00', 'RADIOLOGIA E IMAGINOLOGIA', 'Radiologia', 'Primeira consulta', 'Faltou'),
(9, '2014321', '654123789', '2017-10-23', '18', '30', 'CETAT', 'Bloco - 3o Andar', 'Primeira consulta', 'Atendido'),
(10, '2011456', '321456789', '2016-10-23', '09', '00', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'No local'),
(11, '2011456', '789987654', '2018-10-23', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Faltou'),
(12, '2011456', '654123789', '2020-10-23', '08', '30', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Faltou'),
(13, '2012789', '112.289.390-63', '2023-10-10', '09', '45', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Faltou'),
(14, 'Pedro', '789987654', '2018-10-23', '14', '0', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Atendido'),
(15, '2012789', '654123789', '2020-10-23', '08', '00', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Faltou'),
(16, '2013654', '789987654', '2016-10-23', '09', '00', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Faltou'),
(17, '2013654', '654123789', '2018-10-23', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Faltou'),
(18, '2013654', '321456789', '2020-10-23', '08', '00', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Faltou'),
(19, '1111', '3333', '2024-09-11', '08', '15', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Sul - 1º Andar', 'Primeira consulta', 'Agendado'),
(20, '2010123', '123456', '2023-11-11', '14', '00', 'ODONTOPEDIATRIA', 'Clínica Sul - Clínica 1º Andar', 'Primeira consulta', 'Agendado'),
(21, '2010123', '123456', '2023-11-11', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica 1º Andar', 'Primeira consulta', 'Agendado'),
(37, 'Pedro', '790.588.720', '2023-10-19', '10', '15', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(38, 'Pedro', '790.588.720', '2023-10-18', '8', '15', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'No local'),
(39, 'Pedro', '790.588.720', '2023-10-18', '15', '0', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(40, 'Pedro', '964.940.820', '2023-10-17', '17', '15', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(41, 'Pedro', '790.588.720', '2023-10-18', '0', '0', 'undefined', '0', '', 'Agendado'),
(42, 'Pedro', '790.588.720', '2023-10-17', '11', '15', 'undefined', '0', 'Teste', 'Agendado'),
(43, 'Pedro', '790.588.720', '2023-10-20', '13', '30', 'undefined', '0', 'Anamnese', 'Agendado'),
(44, 'Pedro', '790.588.720', '2023-10-23', '9', '15', 'undefined', '0', 'asdfg', 'Agendado'),
(45, 'Pedro', '790.588.720', '2023-10-19', '8', '0', 'undefined', '0', 'Teste', 'Agendado'),
(46, 'Pedro', '790.588.720', '2023-10-19', '8', '0', 'undefined', '0', 'TESTANDO', 'Agendado'),
(48, 'Pedro', '790.588.720', '2023-10-16', '9', '15', 'undefined', '0', 'Teste', 'Agendado'),
(49, 'Pedro', '964.940.820', '2024-11-14', '8', '0', 'undefined', 'Clínica Oeste', 'Anamnese', 'Agendado'),
(52, 'Pedro', '790.588.720', '2023-10-19', '17', '45', 'undefined', '0', 'Teste', 'Agendado'),
(53, 'Pedro', '790.588.720', '2023-10-17', '8', '0', '0', '', 'aaaaaaaaaaaa', 'Agendado'),
(54, 'Pedro', '964.940.820', '2023-10-16', '8', '0', '0', '', 'Teste', 'Agendado'),
(55, 'Pedro', '964.940.820', '2023-10-17', '9', '0', '0', 'Clínica Sul - 1º Andar', '0', 'Agendado'),
(56, 'Pedro', '790.588.720', '2023-10-17', '14', '15', '0', 'Bloco - 3º Andar', '0', 'Agendado'),
(57, 'Pedro', '790.588.720', '2024-11-14', '8', '15', '0', 'Clínica Sul - 1º Andar', '0', 'Agendado'),
(58, 'Pedro', '964.940.820', '2024-11-14', '9', '15', '0', 'Clínica Sul - 1º Andar', '0', 'Agendado'),
(59, 'Pedro', '790.588.720', '2023-10-18', '09', '15', '0', 'Clínica Sul - 2º Andar', 'Teste', 'Agendado');

-- --------------------------------------------------------

--
-- Table structure for table `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int(11) NOT NULL,
  `CPF` varchar(255) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `Tipo` varchar(255) NOT NULL,
  `Data` varchar(255) NOT NULL,
  `Link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `avaliacoesatendimento`
--

CREATE TABLE `avaliacoesatendimento` (
  `id_avaliacao` bigint(20) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `avaliacoesatendimento`
--

INSERT INTO `avaliacoesatendimento` (`id_avaliacao`, `data_avaliacao`, `matricula`, `id_responsavel`, `responsavel`, `cod_disciplina`, `disciplina`, `periodo`, `pontualidade`, `comportamento`, `materiais`, `conhecimento`, `cuidado`, `adversidades`, `dupla`, `autoavaliacao`, `obs`) VALUES
(1, '2023-04-03', 2010123, 123456789, 'Ciclano', 3470016, 'PERIODONTIA CLÍNICA', '2023/1', 'Satisfatório', 'Bom', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Bom', ''),
(2, '2003-03-23', 2011456, 123456789, 'Ciclano', 3500053, 'ODONTOPEDIATRIA', '2023/1', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', ''),
(3, '2003-03-23', 2012789, 123456789, 'Ciclano', 3490047, 'CIRURGIA BUCO-MAXILAR III', '2023/1', 'Insatisfatório', 'Insatisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', ''),
(4, '2004-04-23', 2012789, 123456789, 'Ciclano', 3500053, 'ODONTOPEDIATRIA', '2023/2', 'Bom', 'Satisfatório', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', ''),
(5, '2004-04-23', 2010123, 123456789, 'Ciclano', 3470016, 'PERIODONTIA CLÍNICA', '2023/2', 'Bom', 'Satisfatório', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', ''),
(6, '2004-04-23', 2011456, 123456789, 'Ciclano', 3470016, 'PERIODONTIA CLÍNICA', '2023/1', 'Insatisfatório', 'Bom', 'Muito Bom', 'Muito Bom', 'Muito Bom', 'Muito Bom', 'Satisfatório', 'Muito Bom', 'Aluno chegou atrasado'),
(7, '2004-04-23', 2010123, 123456789, 'Ciclano', 3500053, 'ODONTOPEDIATRIA', '2023/1', 'Bom', 'Satisfatório', 'Bom', 'Parcialmente', 'Bom', 'Parcialmente', 'Satisfatório', 'Bom', ''),
(8, '2004-04-23', 2013654, 123456789, 'Ciclano', 3500053, 'ODONTOPEDIATRIA', '2023/1', 'Bom', 'Muito Bom', 'Satisfatório', 'Parcialmente', 'Satisfatório', 'Parcialmente', 'Satisfatório', 'Bom', ''),
(9, '2004-10-23', 2012789, 123456789, 'Ciclano', 3500053, 'ODONTOPEDIATRIA', '2023/1', 'Bom', 'Muito Bom', 'Bom', 'Parcialmente', 'Bom', 'Parcialmente', 'Satisfatório', 'Bom', ''),
(10, '2004-10-23', 2014321, 123456789, 'Ciclano', 3500053, 'ODONTOPEDIATRIA', '2023/1', 'Satisfatório', 'Muito Bom', 'Bom', 'Bom', 'Parcialmente', 'Satisfatório', 'Satisfatório', 'Bom', ''),
(11, '2004-10-23', 2010123, 987654321, 'Fulano', 3490047, 'CIRURGIA BUCO-MAXILAR III', '2023/2', 'Satisfatório', 'Muito Bom', 'Bom', 'Parcialmente', 'Parcialmente', 'Satisfatório', 'Satisfatório', 'Bom', ''),
(12, '2004-10-23', 2010123, 987654321, 'Fulano', 3470016, 'PERIODONTIA CLÍNICA', '2023/1', 'Satisfatório', 'Parcialmente', 'Bom', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Muito Bom', ''),
(13, '2004-11-23', 2014321, 987654321, 'Fulano', 3470016, 'PERIODONTIA CLÍNICA', '2023/1', 'Parcialmente', 'Bom', 'Bom', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Muito Bom', ''),
(14, '2004-11-23', 2014321, 987654321, 'Fulano', 3470016, 'PERIODONTIA CLÍNICA', '2023/1', 'Bom', 'Parcialmente', 'Bom', 'Bom', 'Bom', 'Parcialmente', 'Bom', 'Muito Bom', ''),
(15, '2004-11-23', 2013654, 987654321, 'Fulano', 3470016, 'PERIODONTIA CLÍNICA', '2023/1', 'Bom', 'Satisfatório', 'Parcialmente', 'Parcialmente', 'Bom', 'Satisfatório', 'Bom', 'Muito Bom', ''),
(16, '2004-11-23', 2011456, 987654321, 'Fulano', 3470016, 'PERIODONTIA CLÍNICA', '2023/1', 'Insatisfatório', 'Satisfatório', 'Insatisfatório', 'Parcialmente', 'Bom', 'Satisfatório', 'Bom', 'Insatisfatório', 'Aluno não tem comportamento compatível com o ambiente'),
(17, '2004-11-23', 2013654, 987654321, 'Fulano', 3490047, 'CIRURGIA BUCO-MAXILAR III', '2023/1', 'Bom', 'Satisfatório', 'Parcialmente', 'Parcialmente', 'Satisfatório', 'Parcialmente', 'Bom', 'Muito Bom', ''),
(18, '2004-11-23', 2012789, 987654321, 'Fulano', 3490047, 'CIRURGIA BUCO-MAXILAR III', '2023/1', 'Bom', 'Parcialmente', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', 'Bom', 'Muito Bom', ''),
(19, '2004-11-23', 2013654, 987654321, 'Fulano', 3470016, 'PERIODONTIA CLÍNICA', '2023/1', 'Bom', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Bom', 'Muito Bom', ''),
(20, '2004-11-23', 2013654, 987654321, 'Fulano', 3490047, 'CIRURGIA BUCO-MAXILAR III', '2023/1', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Bom', 'Bom', '');

-- --------------------------------------------------------

--
-- Table structure for table `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` bigint(20) NOT NULL,
  `cod_disciplina` varchar(20) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `turma` varchar(255) NOT NULL,
  `periodo` varchar(255) NOT NULL,
  `alunos` varchar(255) NOT NULL,
  `ano` varchar(255) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `datadecadastro` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `cod_disciplina`, `Nome`, `turma`, `periodo`, `alunos`, `ano`, `curso`, `codigo`, `datadecadastro`) VALUES
(1, '03470016', 'PERIODONTIA CLÍNICA', 'M1', '2020/1', '\"[\"Pedro\", \"Aluno\",\"Jou00e3o\", \"Ana\", \"Bruno\", \"Carlos\"]\"', '2020', 'Odontologia', '03470016', '01/01/2020'),
(2, '03500053', 'ODONTOPEDIATRIA', 'M2', '2020/1', '\"[\"Pedro\", \"Aluno\",\"Jou00e3o\", \"Ana\", \"Bruno\", \"Carlos\"]\"', '2020', 'Odontologia', '03500053', '01/01/2020'),
(3, '03490047', 'CIRURGIA BUCO-MAXILAR III', 'M1', '2020/1', '\"[\"Pedro\", \"Aluno\", \"Sandra\", \"Isabela\", \"Patricia\", \"Ricardo\"]\"', '2020', 'Odontologia', '03490047', '01/01/2020'),
(4, '003470016', 'PERIODONTIA CLÍNICA', 'M2', '2020/1', '\"[\"Daniela\", \"Eduardo\", \"Fabiana\", \"Gustavo\", \"Henrique, Ivana\"]\"', '2020', 'Odontologia', '03470016', '01/01/2020'),
(5, '03470031', 'ESTÁGIO EM PRONTO ATENDIMENTO', 'M1', '2020/1', '\"[\"Pedro\", \"Aluno\"]\"', '2020', 'Odontologia', '03470031', '01/01/2020'),
(6, '03470031', 'ESTÁGIO EM PRONTO ATENDIMENTO', 'M2', '2020/1', '\"[\"Pedro\", \"Aluno\"]\"', '2020', 'Odontologia', '03470031', '01/01/2020'),
(7, '03490047', 'CIRURGIA BUCO-MAXILAR III', 'M2', '2020/1', '\"[\"Renato\", \"William\", \"Leandro\", \"Lucas\", \"Ana\", \"Daniela\"]\"', '2020', 'Odontologia', '03490047', '01/01/2020'),
(8, '03480031', 'PRÓTESE DENTÁRIA PARCIAL III', 'M2', '2020/1', '\"[\"William\", \"Aluno\", \"Sandra\", \"Isabela\", \"Patricia\", \"Carlos\"]\"', '2020', 'Odontologia', '03480031', '01/01/2020'),
(9, '003500053', 'ODONTOPEDIATRIA', 'M1', '2020/1', '\"[\"Daniela\", \"Eduardo\", \"Fabiana\", \"Gustavo\", \"Henrique, Ivana\"]\"', '2020', 'Odontologia', '03500053', '01/01/2020'),
(10, '03480031', 'PRÓTESE DENTÁRIA PARCIAL III', 'M1', '2020/1', '\"[\"Renato\", \"Henrique\", \"Leandro\", \"Lucas\", \"Sandra\", \"Daniela\"]\"', '2020', 'Odontologia', '03480031', '01/01/2020');

-- --------------------------------------------------------

--
-- Table structure for table `encaminhamentos`
--

CREATE TABLE `encaminhamentos` (
  `id` int(11) NOT NULL,
  `CPF` varchar(255) DEFAULT NULL,
  `Data` varchar(255) NOT NULL,
  `Curso` varchar(255) DEFAULT NULL,
  `Especialidade` varchar(255) DEFAULT NULL,
  `Demanda` varchar(255) DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Observacoes` varchar(255) DEFAULT NULL,
  `Complexidade` varchar(255) DEFAULT NULL,
  `homologado` varchar(3) NOT NULL,
  `tramitado` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `encaminhamentos`
--

INSERT INTO `encaminhamentos` (`id`, `CPF`, `Data`, `Curso`, `Especialidade`, `Demanda`, `Status`, `Observacoes`, `Complexidade`, `homologado`, `tramitado`) VALUES
(1, '112.289.390-63', '01/01/2020', 'Odontologia', 'Cirurgia', 'Exodontia do 38', 'Em espera', 'Tratamento de rotina.', 'Média', '', ''),
(2, '790.588.720-09', '01/01/2020', 'Odontologia', 'Prótese dentária', 'Coroa unitária no dente 24', 'Em espera', 'Tratamento de rotina de odontopediatria.', 'Média', '', ''),
(3, '112.289.390-63', '01/01/2020', 'Odontologia', 'Prótese Dentária', 'Confeccção de PPR superior', 'Em espera', 'Necessita de acompanhamento constante.', 'Baixa', '', ''),
(4, '790.588.720-09', '01/01/2020', 'Odontologia', 'Periodontia', 'Aumento de coroa clínica no 24', 'Em espera', 'Problema identificado durante a consulta inicial.', 'Média', '', ''),
(5, '112.289.390-63', '01/01/2020', 'Odontologia', 'Periodontia', 'Raspagem subgengival em todos os sextantes', 'Em espera', 'Paciente relatou dor intensa.', 'Média', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `entrevista`
--

CREATE TABLE `entrevista` (
  `id_entrevista` bigint(20) NOT NULL,
  `id_aluno` varchar(50) NOT NULL,
  `id_disciplina` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `CPF` varchar(50) NOT NULL,
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
  `medicoTEL` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrevista`
--

INSERT INTO `entrevista` (`id_entrevista`, `id_aluno`, `id_disciplina`, `data`, `CPF`, `queixa`, `doenca_YN`, `doenca`, `tto_medico_YN`, `tto_medico`, `medicacao_YN`, `medicacao`, `alergia_YN`, `alergia`, `fumante_YN`, `fumante`, `etilista_YN`, `etilista`, `ultimaConsulta`, `ultimoTTO`, `freq_Higiene`, `instr_Higiene`, `fluor`, `operado_YN`, `operado`, `cicatrizacao_YN`, `cicatrizacao`, `anestesia_YN`, `anestesia`, `hemorragia_YN`, `hemorragia`, `gravidez_YN`, `gravidez`, `historicoFamiliar`, `obs`, `medico`, `medicoTEL`) VALUES
(1, '', '', '2023-10-23', '112.289.390-63', '', 'Sim', 'teste', 'Não', '', 'Sim', 'TESTE', 'Não', '', 'Não', '', 'Não', '', '12/03/2021', 'teste', '3x ao dia', 'Enxaguante,Escova', 'Dentifirício', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Nada consta', 'teste observação', 'Dr. X', '99999999'),
(2, '', '', '2023-10-23', '112.289.390-63', '', 'Sim', 'teste', 'Não', '', 'Sim', 'TESTE', 'Não', '', 'Não', '', 'Não', '', '12/03/2021', 'teste', '3x ao dia', 'Enxaguante,Escova', 'Dentifirício', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Nada consta', 'teste observação', 'Dr. X', '99999999'),
(7, 'Pedro', 'PERIODONTIA CLÍNICA', '2023-10-25', '790.588.720-09', 'queixaaaaaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '0'),
(8, 'Pedro', 'PRÓTESE DENTÁRIA PARCIAL III', '2023-10-25', '964.940.820-76', 'queixaadulto', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '0'),
(9, 'Pedro', 'PERIODONTIA CLÍNICA', '2023-10-25', '964.940.820-76', 'Queixa Adulto', 'Não', 'mmmmm', 'Não', '', 'Não', 'mmmmmmmm', 'Não', '', 'Não', '', 'Não', '', '2023-10-25', 'tto', '3x ao dia', 'Array', 'Array', 'Não', 'aaaaaaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'avvvvvvvv', 'ccccccc', '', ''),
(10, 'Pedro', 'ODONTOPEDIATRIA', '2023-10-25', '790.588.720-09', 'queixaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', ''),
(11, 'Pedro', 'ODONTOPEDIATRIA', '2023-10-25', '790.588.720-09', 'queixaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', ''),
(12, 'Pedro', 'ODONTOPEDIATRIA', '2023-10-25', '790.588.720-09', 'queixaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', ''),
(13, 'Pedro', 'ESTÁGIO EM PRONTO ATENDIMENTO (EPA)', '2023-10-25', '790.588.720-09', 'queixaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', ''),
(14, 'Pedro', 'PERIODONTIA CLÍNICA', '2023-10-25', '964.940.820-76', 'queixaAdultoooooooo', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `entrevistaped`
--

CREATE TABLE `entrevistaped` (
  `id_entrevista` bigint(20) NOT NULL,
  `id_aluno` varchar(50) NOT NULL,
  `id_disciplinaPed` varchar(255) NOT NULL,
  `data` date NOT NULL,
  `CPF` varchar(50) NOT NULL,
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
  `telPediatra` varchar(20) NOT NULL,
  `obs_ped` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrevistaped`
--

INSERT INTO `entrevistaped` (`id_entrevista`, `id_aluno`, `id_disciplinaPed`, `data`, `CPF`, `queixaPed`, `probGravidez_YN`, `probGravidez`, `tipoParto`, `doencaInfancia_YN`, `doencaInfancia`, `internacao_YN`, `internacao`, `historicoMedicacao_YN`, `historicoMedicacao`, `alergia_YN_Ped`, `alergia_Ped`, `respiratorio_YN`, `respiratorio`, `cardiaco_YN`, `cardiaco`, `sanguineo_YN`, `sanguineo`, `diabetes_YN`, `diabetes`, `medicacao_YN_Ped`, `medicacao_Ped`, `pediatra`, `telPediatra`, `obs_ped`) VALUES
(1, '', 'PRÓTESE DENTÁRIA PARCIAL III', '2023-10-25', '112.289.390-63', 'queixa ped', 'Sim', 'Não', 'Cesárea', 'Não', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pediatra', '0', 'teste_obs'),
(5, 'Pedro', 'PRÓTESE DENTÁRIA PARCIAL III', '2023-10-25', '964.940.820-76', 'queixaPed', 'Não', '', '', 'Não', '', 'Não', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '0', ''),
(6, 'Pedro', 'ODONTOPEDIATRIA', '2023-10-25', '964.940.820-76', 'queixa ped', 'Não', '', '', 'Não', '', 'Não', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'aaaaaaaa', '(12) 3455-66665', 'aaaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `historicoatendimentos`
--

CREATE TABLE `historicoatendimentos` (
  `id_atendimentos` bigint(20) NOT NULL,
  `id_aluno` varchar(255) NOT NULL,
  `cpf` varchar(50) NOT NULL,
  `data` date NOT NULL,
  `especialidade` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `responsavel` varchar(255) NOT NULL,
  `componente_curricular` varchar(255) NOT NULL,
  `homologado` tinyint(1) NOT NULL,
  `codSus` text NOT NULL,
  `descricao_SUS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historicoatendimentos`
--

INSERT INTO `historicoatendimentos` (`id_atendimentos`, `id_aluno`, `cpf`, `data`, `especialidade`, `descricao`, `responsavel`, `componente_curricular`, `homologado`, `codSus`, `descricao_SUS`) VALUES
(1, 'Pedro', '112.289.390-63', '2023-10-31', 'Periodontia', 'Descrição 01', 'Aluno', 'componente', 0, '[\"101020090\",\"201010232\"]', '[\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\",\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\"]'),
(2, 'Aluno', '112.289.390-63', '2023-10-27', 'Dentística', 'Descrição 02', 'Aluno', 'componente', 0, '[\"204010055\",\"301100152\"]', '[\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\",\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\"]'),
(3, 'Aluno', '112.289.390-63', '2023-10-26', 'Cirurgia', 'Descrição 03', 'Aluno', 'disc', 0, '[\"101020090\"]', '[\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\",\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\"]'),
(4, 'Pedro', '', '2023-10-27', 'Prótese Dentária', 'aaaaaa', 'profe', 'componente', 0, '[\"101020090\",\"201010526\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]'),
(5, 'Pedro', '', '2023-10-27', 'Prótese Dentária', 'aaaaaa', 'profe', 'componente', 0, '[\"101020090\",\"201010526\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]'),
(6, 'Pedro', '', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', 0, '[]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]'),
(7, 'Pedro', '', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', 0, '[\"201010232\",\"204010128\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]'),
(8, 'Pedro', '', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', 0, '[\"201010232\",\"204010128\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]'),
(9, 'Pedro', '', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', 0, '[\"201010232\",\"101020090\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]'),
(10, 'Pedro', '', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', 0, '[\"101020090\",\"201010232\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]'),
(11, 'Pedro', '', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', 0, '[\"101020090\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]'),
(12, 'Pedro', '', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', 0, '[\"203020049\",\"203020049\"]', '[\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\",\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\"]'),
(13, 'Pedro', '', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', 0, '[\"203020049\",\"203020049\",\"101020090\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]');

-- --------------------------------------------------------

--
-- Table structure for table `materiais`
--

CREATE TABLE `materiais` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nome` varchar(30) NOT NULL,
  `quantidade` int(6) NOT NULL,
  `tipo_material` varchar(30) DEFAULT NULL,
  `apresentacao` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `materiais`
--

INSERT INTO `materiais` (`id`, `nome`, `quantidade`, `tipo_material`, `apresentacao`) VALUES
(3, 'Resina Composta cor A1', 15, 'Resina', 'Bisnaga'),
(5, 'teste2', 3, 'Cimento', 'Bisnaga'),
(6, 'teste3', 4, 'Cimento', 'Bisnaga'),
(8, 'teste7', 4, 'Resina composta', 'Frasco'),
(9, 'teste10', 5, 'Hospitalar', 'Kit'),
(10, 'gaze', 50, 'Hospitalar', 'Pacote'),
(11, 'rolo de algodão', 48, 'Hospitalar', 'Pacote'),
(12, 'anestésico', 3, 'Hospitalar', 'Frasco'),
(13, 'bbbbbbbbb', 3, 'Resina composta', 'Bisnaga'),
(14, 'ccccccccc', 3, 'Resina composta', 'Frasco'),
(15, 'teste3', 3, 'Resina composta', 'Bisnaga'),
(16, 'hauhauhauh', 4, 'Resina composta', 'Bisnaga'),
(17, 'testematerial', 12, 'Cimento', 'Frasco'),
(18, 'testeqqer coisa', 4, 'Cimento', 'Bisnaga'),
(19, 'testedenovo', 0, 'Resina composta', 'Bisnaga'),
(20, 'ionomero de vidro', 2, 'Cimento', 'Kit'),
(21, 'fosfato de zinco', 2, 'Cimento', 'Kit'),
(22, 'alginato', 1, 'Moldagem', 'Pacote'),
(23, 'polieter', 9, 'Moldagem', 'Kit'),
(24, 'silicone de condensação', 8, 'Moldagem', 'Kit'),
(26, 'resina acrílica', 116, 'Resina composta', 'Frasco'),
(46, 'Bioplic', 20, 'Resina', 'Bisnaga'),
(47, 'material novo', 5, 'Hospitalar', 'Kit'),
(48, 'Material novo1', 6, 'Resina composta', 'Bisnaga'),
(49, 'Material novo2', 3, 'Moldagem', 'Kit'),
(50, 'Material novo3', 12, 'Hospitalar', 'Frasco');

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `CPF` varchar(255) NOT NULL,
  `informacoesImportantes` varchar(255) NOT NULL,
  `CNS` varchar(255) DEFAULT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `nomeSocial` varchar(255) NOT NULL,
  `Rg` varchar(255) DEFAULT NULL,
  `DataNasc` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Tel` varchar(255) DEFAULT NULL,
  `Tel2` varchar(20) NOT NULL,
  `Tel3` varchar(20) NOT NULL,
  `EstadoCivil` varchar(255) DEFAULT NULL,
  `Sexo` varchar(255) DEFAULT NULL,
  `NomeMae` varchar(255) DEFAULT NULL,
  `NomePai` varchar(255) DEFAULT NULL,
  `CorRaca` varchar(255) DEFAULT NULL,
  `PNE` varchar(255) DEFAULT NULL,
  `EnderecoTipo` varchar(255) DEFAULT NULL,
  `Cep` varchar(255) DEFAULT NULL,
  `Rua` varchar(255) DEFAULT NULL,
  `EndNumero` varchar(255) DEFAULT NULL,
  `EndComplemento` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) DEFAULT NULL,
  `Cidade` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pacientes`
--

INSERT INTO `pacientes` (`id`, `CPF`, `informacoesImportantes`, `CNS`, `Nome`, `nomeSocial`, `Rg`, `DataNasc`, `Email`, `Tel`, `Tel2`, `Tel3`, `EstadoCivil`, `Sexo`, `NomeMae`, `NomePai`, `CorRaca`, `PNE`, `EnderecoTipo`, `Cep`, `Rua`, `EndNumero`, `EndComplemento`, `Bairro`, `Cidade`) VALUES
(1, '999.888.777-66', 'TESTE', NULL, 'Ricardo Santos', 'Joana Santos', '33221100', '', 'ricardo@example.com', '', '', '', 'CASADO', 'Masculino', 'Marta Santos', 'José Santos', '', '', 'Residencial', '98765-432', 'Rua dos Sonhos', '', '', 'Jardim Esperança', 'Cidade Feliz'),
(2, '222.111.333-55', '', NULL, 'Sandra Oliveira', '', '54321098', '', 'sandra@example.com', '', '', '', 'SOLTEIRA', 'Feminino', 'Ana Oliveira', 'José Oliveira', '', 'Array', 'Residencial', '98765-432', 'Rua dos Sonhos', '', '', 'Jardim Esperança', 'Cidade Feliz'),
(3, '444.333.222-11', '', NULL, 'João Pereira', '', '12345678', '', 'joao@example.com', '', '', '', 'CASADO', 'Masculino', 'Maria Pereira', 'Antônio Pereira', '', 'Array', 'Residencial', '76543-210', 'Rua das Flores', '', '', 'Jardim das Flores', 'Cidadefeliz'),
(4, '790.588.720-09', '', NULL, 'Ciclana Pereira', '', '7654321', '', 'ciclana@example.com', '', '', '', 'CASADO', 'Feminino', 'Maria Pereira', 'José Pereira', '', 'Array', 'Residencial', '54321-987', 'Avenida das Flores', '', '', 'Bairro Central', 'Cidadelândia'),
(5, '999.888.777-33', '', NULL, 'Larissa Pereira', '', '76543210', '', 'larissa@example.com', '', '', '', 'SOLTEIRA', 'Feminino', 'Maria Pereira', 'José Pereira', '', 'Array', 'Residencial', '76543-210', 'Rua das Flores', '', '', 'Jardim das Flores', 'Cidadefeliz'),
(6, '333.222.111-00', '', NULL, 'Isabela Lima', '', '65432109', '', 'isabela@example.com', '', '', '', 'SOLTEIRA', 'Feminino', 'Marta Lima', 'Pedro Lima', '', 'Array', 'Residencial', '54321-123', 'Rua das Palmeiras', '', '', 'Jardim Tropical', 'Cidadeverde'),
(7, '964.940.820-76', '', NULL, 'Beltrano Alves', '', '11223344', '', 'beltrano@example.com', '', '', '', 'DIVORCIADO', 'Masculino', 'Joana Alves', 'Pedro Alves', '', 'Array', 'Comercial', '98765-432', 'Rua do Comércio', '', '', 'Centro Empresarial', 'Cidadeforte'),
(8, '111.222.333-44', '', NULL, 'José da Silva', '', '12345678', '', 'jose@example.com', '', '', '', 'CASADO', 'Masculino', 'Maria da Silva', 'Antônio da Silva', '', 'Array', 'Residencial', '76543-210', 'Rua das Árvores', '', '', 'Jardim das Flores', 'Cidadefeliz'),
(9, '112.289.390-63', '', NULL, 'Fulano da Silva', '', '1234567', '', 'fulano@example.com', '', '', '', 'SOLTEIRO', 'Masculino', 'Ciclana da Silva', 'Beltrano da Silva', '', 'Array', 'Residencial', '12345-678', 'Rua dos Exemplos', '', '', 'Bairro das Amostras', 'Cidadópolis'),
(10, '555.666.777-88', '', NULL, 'Ana Souza', '', '88776655', '', 'ana@example.com', '', '', '', 'CASADA', 'Feminino', 'Maria Souza', 'João Souza', '', 'Array', 'Residencial', '12345-678', 'Rua da Praia', '', '', 'Beira Mar', 'Cidade Marítima'),
(11, '666.555.444-33', '', NULL, 'Pedro Rodrigues', '', '56789012', '', 'pedro@example.com', '', '', '', 'SOLTEIRO', 'Masculino', 'Clara Rodrigues', 'José Rodrigues', '', 'Array', 'Residencial', '98765-432', 'Rua dos Sonhos', '', '', 'Jardim Esperança', 'Cidade Feliz'),
(12, '777.888.999-11', '', NULL, 'Lucia Lima', '', '11223344', '', 'lucia@example.com', '', '', '', 'SOLTEIRA', 'Feminino', 'Ana Lima', 'Pedro Lima', '', 'Array', 'Residencial', '54321-123', 'Rua das Palmeiras', '', '', 'Jardim Tropical', 'Cidadeverde'),
(13, '111.222.333-55', '', NULL, 'Mariana Costa', '', '98765432', '', 'mariana@example.com', '', '', '', 'CASADA', 'Feminino', 'Ana Costa', 'José Costa', '', 'Array', 'Residencial', '76543-210', 'Rua das Flores', '', '', 'Jardim das Flores', 'Cidadefeliz'),
(14, '888.777.666-44', '', NULL, 'Carlos Santos', '', '43210987', '', 'carlos@example.com', '', '', '', 'CASADO', 'Masculino', 'Marta Santos', 'Pedro Santos', '', 'Array', 'Residencial', '54321-123', 'Rua das Palmeiras', '', '', 'Jardim Tropical', 'Cidadeverde');

-- --------------------------------------------------------

--
-- Table structure for table `plano_tto`
--

CREATE TABLE `plano_tto` (
  `id` int(11) NOT NULL,
  `CPF` varchar(50) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `queixa` varchar(255) DEFAULT NULL,
  `aspectoRelevante` varchar(255) DEFAULT NULL,
  `especialidade` varchar(255) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `aluno_id` varchar(255) DEFAULT NULL,
  `responsavel` varchar(255) DEFAULT NULL,
  `componente_curricular` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plano_tto`
--

INSERT INTO `plano_tto` (`id`, `CPF`, `data`, `queixa`, `aspectoRelevante`, `especialidade`, `descricao`, `aluno_id`, `responsavel`, `componente_curricular`) VALUES
(1, '790.588.720-09', '2023-10-19', 'Queixa', 'Aspectos', 'Odontopediatria,Dentística', 'Descrição', 'Aluno', 'Professor', 'Disciplina'),
(2, '112.289.390-63', '2023-10-09', 'queixa 1', 'relevancia', 'prótese, cirurgia', 'descricao', 'ALUNO X', 'PROF. Y', 'UPD-2'),
(3, '112.289.390-63', '2023-10-24', 'queixa 2', 'aspectos2', 'Dentística', 'Descr2', 'ALUNO W', 'PROF. Z', 'ECO-2'),
(7, '790.588.720-09', '2023-10-25', 'plano com CPF', 'aspectos com CPF', 'Prótese Dentária,Odontopediatria,Periodontia,Dentística', 'Desc', 'Pedro', 'prof', 'disci'),
(8, '790.588.720-09', '2023-10-25', 'queixa', 'aspec', 'Prótese Dentária,Odontopediatria,Periodontia', 'des', 'Pedro', 'prof', 'disc'),
(9, '964.940.820-76', '2023-10-25', 'plano com CPF', 'aspects', 'Odontopediatria,Periodontia,Dentística', 'desc', 'Pedro', 'prof', 'disc'),
(15, '964.940.820-76', '2023-10-25', 'agora', 'a', 'Prótese Dentária,Odontopediatria', 'asb', 'Pedro', 'aaa', 'bbb');

-- --------------------------------------------------------

--
-- Table structure for table `procedimentos_sus`
--

CREATE TABLE `procedimentos_sus` (
  `cod_sus` int(6) NOT NULL,
  `nome` varchar(100) CHARACTER SET latin1 COLLATE latin1_danish_ci NOT NULL,
  `tipo` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `procedimentos_sus`
--

INSERT INTO `procedimentos_sus` (`cod_sus`, `nome`, `tipo`) VALUES
(101020090, 'SELAMENTO PROVISÓRIO DE CAVIDADE DENTÁRIA', 'AMB'),
(201010232, 'BIÓPSIA DE GLÂNDULA SALIVAR', 'CEO'),
(201010348, 'BIÓPSIA DE OSSO DO CR?NIO E DA FACE', 'CEO'),
(201010526, 'BIÓPSIA DOS TECIDOS MOLES DA BOCA', 'CEO'),
(203020049, 'IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)', 'AMB'),
(204010055, 'RADIOGRAFIA DE ARTICULACAO TEMPORO-MANDIBULAR BILATERAL', 'AMB'),
(204010080, 'RADIOGRAFIA DE CRANIO (PA + LATERAL)', 'AMB'),
(204010128, 'RADIOGRAFIA DE OSSOS DA FACE (MN + LATERAL + HIRTZ)', 'AMB'),
(204010144, 'RADIOGRAFIA DE SEIOS DA FACE (FN + MN + LATERAL + HIRTZ)', 'AMB'),
(204010160, 'RADIOGRAFIA OCLUSAL', 'AMB'),
(204010179, 'RADIOGRAFIA PANORÂMICA', 'AMB'),
(204010217, 'RADIOGRAFIA INTERPROXIMAL (BITE WING)', 'AMB'),
(204010225, 'RADIOGRAFIA PERIAPICAL', 'AMB'),
(301010153, 'PRIMEIRA CONSULTA ODONTOLOGICA PROGRAMÁTICA', 'AMB'),
(301100152, 'RETIRADA DE PONTOS DE CIRURGIAS BASICAS (POR PACIENTE)', 'AMB'),
(307010015, 'CAPEAMENTO PULPAR', 'AMB'),
(307010058, 'TRATAMENTO DE NEVRALGIAS FACIAIS', 'CEO'),
(307010066, 'TRATAMENTO INICIAL DO DENTE TRAUMATIZADO', 'AMB'),
(307010074, 'TRATAMENTO RESTAURADOR ATRAUMÁTICO (TRA/ART)', 'AMB'),
(307020010, 'ACESSO A POLPA DENTÁRIA E MEDICAÇÃO (POR DENTE)', 'AMB'),
(307020029, 'CURATIVO DE DEMORA C/ OU S/ PREPARO BIOMECÂNICO', 'AMB'),
(307020037, 'TRATAMENTO ENDODÔNTICO DE DENTE DECÍDUO', 'CEO'),
(307020045, 'TRATAMENTO ENDODÔNTICO DE DENTE PERMANENTE BIRRADICULAR', 'CEO'),
(307020053, 'TRATAMENTO ENDODÔNTICO DE DENTE PERMANENTE COM TRÊS OU MAIS RAÍZES', 'CEO'),
(307020061, 'TRATAMENTO ENDOD?NTICO DE DENTE PERMANENTE UNIRRADICULAR', 'CEO'),
(307020070, 'PULPOTOMIA DENTÁRIA', 'AMB'),
(307020088, 'RETRATAMENTO ENDOD?NTICO EM DENTE PERMANENTE BI-RADICULAR', 'CEO'),
(307020096, 'RETRATAMENTO ENDODÔNTICO EM DENTE PERMANENTE COM 3 OU MAIS RAÍZES', 'CEO'),
(307020100, 'RETRATAMENTO ENDODÔNTICO EM DENTE PERMANENTE UNI-RADICULAR', 'CEO'),
(307030024, 'RASPAGEM ALISAMENTO SUBGENGIVAIS (POR SEXTANTE)-PNE', 'PNE'),
(307030032, 'RASPAGEM CORONO-RADICULAR (POR SEXTANTE)', 'CEO'),
(307030059, 'RASPAGEM ALISAMENTO E POLIMENTO SUPRAGENGIVAIS (POR SEXTANTE)', 'AMB'),
(307030067, 'TRATAMENTO DE GENGIVITE ULCERATIVA NECROSANTE AGUDA (GUNA)', 'AMB'),
(307030075, 'TRATAMENTO DE LESÕES DA MUCOSA ORAL', 'AMB'),
(307030083, 'TRATAMENTO DE PERICORONARITE', 'AMB'),
(307040062, 'MANUTENÇÃO PERIÓDICA DE PRÓTESE BUCO-MAXILO-FACIAL', 'AMB'),
(307040089, 'REEMBASAMENTO E CONSERTO DE PRÓTESE DENTÁRIA', 'AMB'),
(307040151, 'AJUSTE OCLUSAL', 'AMB'),
(401010058, 'EXCISÃO DE LESÃO E/OU SUTURA DE FERIMENTO DA PELE ANEXOS E MUCOSA', 'AMB'),
(401010082, 'FRENECTOMIA', 'CEO'),
(404010512, 'SINUSOTOMIA TRANSMAXILAR', 'CEO'),
(404020054, 'DRENAGEM DE ABSCESSO DA BOCA E ANEXOS', 'CEO'),
(404020097, 'EXCISÃO E SUTURA DE LESÃO NA BOCA', 'CEO'),
(404020100, 'EXCISÃO EM CUNHA DE LÁBIO', 'CEO'),
(404020313, 'RETIRADA DE CORPO ESTRANHO DOS OSSOS DA FACE', 'CEO'),
(404020488, 'OSTEOTOMIA DAS FRATURAS ALVEOLO-DENTÁRIAS', 'CEO'),
(404020623, 'RETIRADA DE MATERIAL DE SÍNTESE ÓSSEA/ DENTÁRIA', 'CEO'),
(408060352, 'RETIRADA DE FIO OU PINO INTRA-ÓSSEO', 'AMB'),
(414010256, 'TRATAMENTO CIRÚRGICO DE FÍSTULA ORO-SINUSAL / ORO-NASAL', 'CEO'),
(414010345, 'EXCISÃO DE CÁLCULO DE GLÂNDULA SALIVAR', 'CEO'),
(414010361, 'EXERESE DE CISTO ODONTOGÊNICO E NÃO-ODONTOGÊNICO', 'CEO'),
(414010388, 'TRATAMENTO CIR?RGICO DE FÍSTULA INTRA/ EXTRA-ORAL', 'CEO'),
(414020030, 'APROFUNDAMENTO DE VESTÍBULO ORAL (POR SEXTANTE)', 'CEO'),
(414020073, 'CURETAGEM PERIAPICAL', 'CEO'),
(414020081, 'ENXERTO GENGIVAL', 'CEO'),
(414020090, 'ENXERTO ÓSSEO DE ÁREA DOADORA INTRABUCAL', 'CEO'),
(414020120, 'EXODONTIA DE DENTE DECÍDUO', 'AMB'),
(414020138, 'EXODONTIA DE DENTE PERMANENTE', 'AMB'),
(414020146, 'EXODONTIA MULTIPLA COM ALVEOLOPLASTIA POR SEXTANTE', 'CEO'),
(414020154, 'GENGIVECTOMIA (POR SEXTANTE)', 'CEO'),
(414020162, 'GENGIVOPLASTIA (POR SEXTANTE)', 'CEO'),
(414020170, 'GLOSSORRAFIA', 'CEO'),
(414020243, 'REIMPLANTE E TRANSPLANTE DENTAL (POR ELEMENTO)', 'CEO'),
(414020359, 'TRATAMENTO CIRÚRGICO DE HEMORRAGIA BUCO-DENTAL', 'CEO'),
(414020367, 'TRATAMENTO CIRÚRGICO PARA TRACIONAMENTO DENTAL', 'CEO'),
(414020375, 'TRATAMENTO CIRÚRGICO PERIODONTAL (POR SEXTANTE)', 'CEO'),
(414020383, 'TRATAMENTO DE ALVEOLITE', 'CEO'),
(414020405, 'ULOTOMIA/ULECTOMIA', 'CEO'),
(701070013, 'APARELHO FIXO BILATERAL PARA FECHAMENTO DE DIASTEMA', 'AMB'),
(701070056, 'COROA PROVISÓRIA', 'AMB'),
(701070072, 'PLACA OCLUSAL', 'CEO'),
(701070080, 'PLANO INCLINADO', 'AMB');

-- --------------------------------------------------------

--
-- Table structure for table `solicitacao_materiais`
--

CREATE TABLE `solicitacao_materiais` (
  `id_solicitacao` bigint(20) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `solicitacao_materiais`
--

INSERT INTO `solicitacao_materiais` (`id_solicitacao`, `setor`, `nome_solicitante`, `id_solicitante`, `data_pedido`, `data_tramite`, `lista_ids`, `lista_materiais`, `lista_qtd`, `statusSolicitacao`, `ids_atendidos`, `qtd_atendida`, `obs_tramite`) VALUES
(59, 'Clínica 1º Andar - Sul', 'Beltrano', 123456, '2023-09-26', NULL, '1', 'Fosfato de zinco', '1', 'Solicitado', '0', NULL, NULL),
(60, 'Clínica 1º Andar - Sul', 'Fulano', 987654, '2023-09-26', '2023-10-13', '1,4', 'Fosfato de zinco,Teste', '1,2', 'Atendido', '0', NULL, ''),
(61, 'Clínica 1º Andar - Sul', 'Beltrano', 123456, '2023-09-26', '2023-10-13', '11,1', 'rolo de algodão,Fosfato de zinco', '2,1', 'Parcialmente atendido', '0', NULL, ''),
(62, 'Clínica Oeste', 'Fulano', 987654, '2023-09-26', NULL, '1,20', 'Fosfato de zinco,ionomero de vidro', '1,3', 'Solicitado', '0', NULL, NULL),
(63, 'Clínica Oeste', 'Beltrano', 123456, '2023-09-26', '2023-10-24', '20,19', 'ionomero de vidro,testedenovo', '3,2', '', '0', NULL, 'aaa'),
(64, 'Clínica 4º Andar', 'Ciclano', 654321, '2023-09-26', NULL, '24,26', 'silicone de condensação,resina acrílica', '1,5', 'Solicitado', '0', NULL, NULL),
(65, 'Laboratórios pré-clínica', 'Ciclano', 654321, '2023-09-26', '2023-10-03', '24,26,23,22', 'silicone de condensação,resina acrílica,polieter,alginato', '1,5,2,2', 'Parcialmente atendido', '24,26,23,22', '1,5,2,2', 'Observação teste'),
(66, 'Clínica 1º Andar - Sul', 'Fulano', 987654, '2023-09-27', NULL, '7,5', 'teste3,teste2', '1,2', 'Solicitado', '0', NULL, NULL),
(67, 'Clínica Oeste', 'João da Silva', 321789, '2023-10-05', NULL, '3', 'Resina Composta cor A1', '1', 'Solicitado', NULL, NULL, NULL),
(68, 'Clínica Oeste', 'João da Silva', 321789, '2023-10-05', '2023-10-13', '2,3,21,22', 'Resina Acrílica,Resina Composta cor A1,fosfato de zinco,alginato', '3,1,2,1', 'Atendido', NULL, NULL, ''),
(69, 'Clínica 4º Andar', 'João da Silva', 321789, '2023-10-05', NULL, '1,17,13', 'Fosfato de zinco,testematerial,bbbbbbbbb', '1,2,2', 'Solicitado', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Matricula` varchar(255) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Tipo` varchar(255) NOT NULL,
  `Pacientes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `Matricula`, `Nome`, `Tipo`, `Pacientes`) VALUES
(1, 'Pedro', 'Pedro', 'Aluno', '\"[\"790.588.720-09\", \"964.940.820-76\"]\"'),
(2, 'Mateus', 'Mateus', 'Administrador', 'null'),
(3, 'Triagem', 'Triagem', 'Triagem', 'null'),
(4, 'Aluno', 'Aluno', 'Aluno', '\"[\"112.289.390-63\", \"964.940.820-76\"]\"'),
(5, 'Administrador', 'Administrador', 'Administrador', 'null'),
(6, 'João', 'João da Silva', 'Aluno', 'null'),
(7, 'Bruno', 'Bruno Souza', 'Aluno', 'null'),
(8, 'Carlos', 'Carlos Santana', 'Aluno', 'null'),
(9, 'Ana', 'Ana Lima', 'Aluno', 'null'),
(10, 'Daniela', 'Daniela Goes', 'Aluno', 'null'),
(11, 'Fabiana', 'Fabiana Silva', 'Aluno', 'null'),
(12, 'Eduardo', 'Eduardo Santos', 'Aluno', 'null'),
(13, 'Gustavo', 'Gustavo Dantas', 'Aluno', 'null'),
(14, 'Isabela', 'Isabela Souza', 'Aluno', 'null'),
(15, 'Henrique', 'Henrique Cruz', 'Aluno', 'null'),
(16, 'Sandra', 'Sandra Fernandes', 'Aluno', 'null'),
(17, 'Patricia', 'Patricia Silva', 'Aluno', 'null'),
(18, 'Ricardo', 'Ricardo Alves', 'Aluno', 'null'),
(19, 'Ivana', 'Ivana de Sá', 'Aluno', 'null'),
(20, 'Renato', 'Ivana de Sá', 'Aluno', 'null'),
(21, 'William', 'William Castro', 'Aluno', 'null'),
(22, 'Leandro', 'Leandro Rios', 'Aluno', 'null'),
(23, 'Lucas', 'Lucas Lima', 'Aluno', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `vinculospacientes`
--

CREATE TABLE `vinculospacientes` (
  `id_vinculo` bigint(20) NOT NULL,
  `id_demanda` varchar(50) NOT NULL,
  `cpf_paciente` varchar(50) NOT NULL,
  `id_aluno` varchar(50) NOT NULL,
  `demandaEspecialidade` varchar(255) NOT NULL,
  `demandaDescricao` int(11) NOT NULL,
  `complexidade` int(11) NOT NULL,
  `disciplina` int(11) NOT NULL,
  `turma` varchar(2) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda-clinicas`
--
ALTER TABLE `agenda-clinicas`
  ADD PRIMARY KEY (`id_agendamento`);

--
-- Indexes for table `avaliacoesatendimento`
--
ALTER TABLE `avaliacoesatendimento`
  ADD PRIMARY KEY (`id_avaliacao`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `encaminhamentos`
--
ALTER TABLE `encaminhamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrevista`
--
ALTER TABLE `entrevista`
  ADD PRIMARY KEY (`id_entrevista`);

--
-- Indexes for table `entrevistaped`
--
ALTER TABLE `entrevistaped`
  ADD PRIMARY KEY (`id_entrevista`);

--
-- Indexes for table `historicoatendimentos`
--
ALTER TABLE `historicoatendimentos`
  ADD PRIMARY KEY (`id_atendimentos`);

--
-- Indexes for table `materiais`
--
ALTER TABLE `materiais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plano_tto`
--
ALTER TABLE `plano_tto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `procedimentos_sus`
--
ALTER TABLE `procedimentos_sus`
  ADD PRIMARY KEY (`cod_sus`);

--
-- Indexes for table `solicitacao_materiais`
--
ALTER TABLE `solicitacao_materiais`
  ADD PRIMARY KEY (`id_solicitacao`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vinculospacientes`
--
ALTER TABLE `vinculospacientes`
  ADD PRIMARY KEY (`id_vinculo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda-clinicas`
--
ALTER TABLE `agenda-clinicas`
  MODIFY `id_agendamento` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `avaliacoesatendimento`
--
ALTER TABLE `avaliacoesatendimento`
  MODIFY `id_avaliacao` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `encaminhamentos`
--
ALTER TABLE `encaminhamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `entrevista`
--
ALTER TABLE `entrevista`
  MODIFY `id_entrevista` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `entrevistaped`
--
ALTER TABLE `entrevistaped`
  MODIFY `id_entrevista` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `historicoatendimentos`
--
ALTER TABLE `historicoatendimentos`
  MODIFY `id_atendimentos` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `materiais`
--
ALTER TABLE `materiais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `plano_tto`
--
ALTER TABLE `plano_tto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `solicitacao_materiais`
--
ALTER TABLE `solicitacao_materiais`
  MODIFY `id_solicitacao` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `update_falta` ON SCHEDULE EVERY 1 DAY STARTS '2023-10-12 00:01:00' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `agenda-clinicas` SET status_agendamento = 'Faltou' WHERE status_agendamento = 'Agendado' AND data_agendamento < CURDATE()$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
