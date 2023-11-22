-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2023 at 04:32 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

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
  `agendado_por` varchar(11) NOT NULL,
  `cpf_paciente` varchar(50) NOT NULL,
  `data_agendamento` date NOT NULL,
  `horario_agendamento` varchar(2) NOT NULL,
  `minuto_agendamento` varchar(2) NOT NULL,
  `atividade_curricular` varchar(40) NOT NULL,
  `local` varchar(25) NOT NULL,
  `descricao` varchar(25) NOT NULL,
  `status_agendamento` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `agenda-clinicas`
--

INSERT INTO `agenda-clinicas` (`id_agendamento`, `agendado_por`, `cpf_paciente`, `data_agendamento`, `horario_agendamento`, `minuto_agendamento`, `atividade_curricular`, `local`, `descricao`, `status_agendamento`) VALUES
(1, '2010123', '111222333', '2023-11-09', '09', '00', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Desmarcado pelo aluno'),
(2, 'Responsavel', '999.888.777-66', '2023-11-09', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'No local'),
(3, '2010123', '112.289.390-63', '2023-10-26', '08', '00', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Faltou'),
(4, '14200737', '999.888.777-66', '2023-11-23', '15', '15', 'RADIOLOGIA E IMAGINOLOGIA', 'Radiologia', 'Primeira consulta', 'Agendado'),
(5, '2014321', '789987654', '2016-10-23', '09', '30', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(6, '2014321', '654123789', '2018-10-23', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(7, '2014321', '321456789', '2020-10-23', '08', '00', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Agendado'),
(8, '2014321', '789987654', '2016-10-23', '15', '00', 'RADIOLOGIA E IMAGINOLOGIA', 'Radiologia', 'Primeira consulta', 'Agendado'),
(9, '2014321', '654123789', '2017-10-23', '18', '30', 'CETAT', 'Bloco - 3o Andar', 'Primeira consulta', 'Atendido'),
(10, '2011456', '321456789', '2016-10-23', '09', '00', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'No local'),
(11, '2011456', '789987654', '2018-10-23', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(12, '2011456', '654123789', '2020-10-23', '08', '30', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Agendado'),
(13, '2012789', '321456789', '2023-10-10', '09', '45', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(14, '2012789', '789987654', '2018-10-23', '14', '0', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(15, '2012789', '654123789', '2020-10-23', '08', '00', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Agendado'),
(16, '2010125', '789987654', '2016-10-23', '09', '00', 'ODONTOPEDIATRIA', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(17, '2013654', '654123789', '2018-10-23', '14', '00', 'CIRURGIA BUCO-MAXILAR III', 'Clínica Oeste', 'Primeira consulta', 'Agendado'),
(18, '2013654', '321456789', '2020-10-23', '08', '00', 'PERIODONTIA CLÍNICA', 'Bloco - 3o Andar', 'Primeira consulta', 'Agendado'),
(19, '2010125', '999.888.777-66', '2020-09-09', '08', '15', '55555', 'Clínica Sul - 1º Andar', '4444', 'Faltou'),
(20, '2010123', '123456', '2023-11-11', '14', '00', 'disciplina', 'Clínica Sul - 1º Andar', 'aaaaa', 'Agendado'),
(21, 'Responsavel', '790.588.720-09', '2023-11-13', '14', '00', 'disciplina', 'Clínica Sul - 1º Andar', 'aaaaa', 'No local'),
(65, 'Responsavel', '999.888.777-33', '2023-11-18', '10', '20', 'Implanto', 'Escolher', 'Teste responsável', 'Agendado'),
(67, '20102917', '555.666.777-88', '2023-11-23', '11', '15', 'UNIDADE DE PRÓTESE DENTÁRIA III', 'Clínica Sul - 1º Andar', 'Descrição de atendimento', 'Agendado'),
(68, '20102917', '112.289.390-63', '2023-11-21', '08', '00', 'UNIDADE DE PRÓTESE DENTÁRIA III', 'Clínica Sul - 1º Andar', 'Descrição', 'Agendado'),
(69, '20102917', '112.289.390-63', '2023-11-20', '08', '00', 'UNIDADE DE PRÓTESE DENTÁRIA III', 'Clínica Sul - 1º Andar', 'Descrição', 'Agendado'),
(70, '20102917', '112.289.390-63', '2023-11-23', '08', '00', 'UNIDADE DE PRÓTESE DENTÁRIA III', 'Clínica Sul - 1º Andar', 'Descrição', 'Agendado'),
(71, '20102917', '112.289.390-63', '2023-11-19', '09', '15', 'UNIDADE DE PRÓTESE DENTÁRIA III', 'Clínica Sul - 1º Andar', 'Descrição de atendimento', 'Agendado'),
(72, '20102917', '112.289.390-63', '2023-11-19', '09', '15', 'UNIDADE DE PRÓTESE DENTÁRIA III', 'Clínica Sul - 1º Andar', 'Descrição de atendimento', 'Agendado'),
(80, '14200737', '112.289.390-63', '2023-11-23', '08', '30', 'UNIDADE DE CIRURGIA BMF I', 'Clínica Sul - 1º Andar', 'Descrição', 'Desmarcado pelo aluno');

-- --------------------------------------------------------

--
-- Table structure for table `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `matricula` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `especial` varchar(255) NOT NULL,
  `situação` varchar(255) NOT NULL,
  `vacina` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alunos`
--

INSERT INTO `alunos` (`id`, `matricula`, `nome`, `curso`, `especial`, `situação`, `vacina`) VALUES
(107071, '14200737', 'Aluno Teste 1', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(109457, '15100197', 'Aluno Teste 2', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(111468, '15102080', 'Aluno Teste 3', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(117444, '15200280', 'Aluno Teste 4', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(118941, '15201769', 'Aluno Teste 5', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(126027, '16200568', 'Aluno Teste 6', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(126415, '16200953', 'Aluno Teste 7', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(126681, '16201165', 'Aluno Teste 8', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(127157, '16201301', 'Aluno Teste 9', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(132789, '17103708', 'Aluno Teste 10', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(136137, '17200428', 'Aluno Teste 11', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(136507, '17200781', 'Aluno Teste 12', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(137121, '17201346', 'Aluno Teste 13', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(139778, '18101209', 'Aluno Teste 14', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(139931, '17202738', 'Aluno Teste 15', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(141277, '18102598', 'Aluno Teste 16', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(141870, '18103171', 'Aluno Teste 17', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(142191, '18103467', 'Aluno Teste 18', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(143700, '18104926', 'Aluno Teste 19', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(143963, '18200101', 'Aluno Teste 20', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(143990, '18200128', 'Aluno Teste 21', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(145045, '18201145', 'Aluno Teste 22', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(145661, '18201741', 'Aluno Teste 23', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(145975, '18202052', 'Aluno Teste 24', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(145978, '18202055', 'Aluno Teste 25', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146205, '18202280', 'Aluno Teste 26', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146717, '19100431', 'Aluno Teste 27', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146749, '19100463', 'Aluno Teste 28', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146760, '19100474', 'Aluno Teste 29', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146761, '19100475', 'Aluno Teste 30', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146762, '19100476', 'Aluno Teste 31', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146807, '19100521', 'Aluno Teste 32', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146812, '19100526', 'Aluno Teste 33', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(146831, '19100545', 'Aluno Teste 34', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(148025, '19101706', 'Aluno Teste 35', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(148596, '19102268', 'Aluno Teste 36', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(148609, '19102280', 'Aluno Teste 37', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(148985, '19102617', 'Aluno Teste 38', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149257, '19102880', 'Aluno Teste 39', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149416, '19103039', 'Aluno Teste 40', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149427, '19103050', 'Aluno Teste 41', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149431, '19103054', 'Aluno Teste 400', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149432, '19103055', 'Aluno Teste 42', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149444, '19103067', 'Aluno Teste 43', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149543, '19103166', 'Aluno Teste 44', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149565, '19103188', 'Aluno Teste 45', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149796, '19103404', 'Aluno Teste 46', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149799, '19103407', 'Aluno Teste 47', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149818, '19103423', 'Aluno Teste 48', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(149937, '19103533', 'Aluno Teste 49', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(150175, '19103739', 'Aluno Teste 50', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(150181, '19103744', 'Aluno Teste 51', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(150792, '19104346', 'Aluno Teste 52', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(151260, '19104799', 'Aluno Teste 53', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(151644, '19105179', 'Aluno Teste 54', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(151864, '19200157', 'Aluno Teste 55', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(151879, '19200172', 'Aluno Teste 56', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(151884, '19200177', 'Aluno Teste 57', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(151905, '19200198', 'Aluno Teste 58', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152222, '19200513', 'Aluno Teste 59', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152334, '19200625', 'Aluno Teste 60', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152381, '19200672', 'Aluno Teste 61', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152497, '19200784', 'Aluno Teste 62', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152514, '19200801', 'Aluno Teste 63', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152579, '19200866', 'Aluno Teste 64', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152585, '19200872', 'Aluno Teste 65', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(152722, '19201007', 'Aluno Teste 66', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(153128, '19201409', 'Aluno Teste 67', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(153132, '19201412', 'Aluno Teste 68', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(153147, '19201427', 'Aluno Teste 69', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(153600, '19201877', 'Aluno Teste 70', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(153798, '19202075', 'Aluno Teste 71', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(154448, '20100574', 'Aluno Teste 72', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(154475, '20100601', 'Aluno Teste 73', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(154503, '20100629', 'Aluno Teste 74', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(154522, '20100648', 'Aluno Teste 75', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(154602, '20100728', 'Aluno Teste 76', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(154631, '20100757', 'Aluno Teste 77', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(155068, '20101175', 'Aluno Teste 78', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(155425, '20101522', 'Aluno Teste 79', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(155532, '20101628', 'Aluno Teste 80', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(155589, '20101684', 'Aluno Teste 81', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(155916, '20102005', 'Aluno Teste 82', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(156875, '20102917', 'Aluno Teste 83', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(156904, '20102946', 'Aluno Teste 84', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(156917, '20102959', 'Aluno Teste 85', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(156931, '20102973', 'Aluno Teste 86', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(156959, '20103001', 'Aluno Teste 87', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(156967, '20103009', 'Aluno Teste 88', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157037, '20103079', 'Aluno Teste 89', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157089, '20103131', 'Aluno Teste 90', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157559, '20103546', 'Aluno Teste 91', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157588, '20103575', 'Aluno Teste 92', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157599, '20103586', 'Aluno Teste 93', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157603, '20103590', 'Aluno Teste 94', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157656, '20103643', 'Aluno Teste 95', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(157701, '20103687', 'Aluno Teste 96', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(158613, '20104580', 'Aluno Teste 97', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(158797, '20104756', 'Aluno Teste 98', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(158812, '20104770', 'Aluno Teste 99', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(159541, '20200511', 'Aluno Teste 100', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(159542, '20200512', 'Aluno Teste 101', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(159543, '20200513', 'Aluno Teste 102', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(159544, '20200514', 'Aluno Teste 103', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(159617, '20200587', 'Aluno Teste 104', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(159744, '20200709', 'Aluno Teste 105', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160075, '20201038', 'Aluno Teste 106', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160084, '20201047', 'Aluno Teste 107', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160116, '20201079', 'Aluno Teste 108', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160117, '20201080', 'Aluno Teste 109', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160128, '20201089', 'Aluno Teste 110', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160146, '20201106', 'Aluno Teste 111', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160225, '20201171', 'Aluno Teste 112', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160245, '20201190', 'Aluno Teste 113', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160327, '20105018', 'Aluno Teste 114', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160749, '20105153', 'Aluno Teste 115', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(160920, '20105241', 'Aluno Teste 116', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161691, '20201954', 'Aluno Teste 117', '400 - Odontologia', 'Não', 'Cursando', 'Pendente'),
(161692, '20201955', 'Aluno Teste 118', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161693, '20201956', 'Aluno Teste 119', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161694, '20201957', 'Aluno Teste 120', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161696, '20201959', 'Aluno Teste 121', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161725, '20201988', 'Aluno Teste 122', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161762, '20202025', 'Aluno Teste 123', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161783, '20202045', 'Aluno Teste 124', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161822, '20202078', 'Aluno Teste 125', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(161836, '20202091', 'Aluno Teste 126', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(169437, '19200272', 'Aluno Teste 182', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(169664, '19201010', 'Aluno Teste 401', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(169874, '19200599', 'Aluno Teste 183', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(169879, '19200609', 'Aluno Teste 184', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(170327, '19200197', 'Aluno Teste 180', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(170391, '19103461', 'Aluno Teste 178', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(170920, '18201752', 'Aluno Teste 174', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(172296, '18202279', 'Aluno Teste 175', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(172551, '18102655', 'Aluno Teste 138', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(172813, '19200690', 'Aluno Teste 186', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(172973, '19102195', 'Aluno Teste 177', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(172974, '18200823', 'Aluno Teste 162', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(172980, '19200833', 'Aluno Teste 187', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173245, '19200617', 'Aluno Teste 185', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173248, '19200196', 'Aluno Teste 179', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173252, '19200231', 'Aluno Teste 181', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173576, '19100527', 'Aluno Teste 176', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173695, '18200747', 'Aluno Teste 158', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173697, '18200108', 'Aluno Teste 154', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173864, '18200105', 'Aluno Teste 152', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(173992, '18201045', 'Aluno Teste 169', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174031, '18200951', 'Aluno Teste 168', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174124, '18201098', 'Aluno Teste 171', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174125, '18200822', 'Aluno Teste 161', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174127, '18200107', 'Aluno Teste 153', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174286, '18200824', 'Aluno Teste 163', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174391, '18102739', 'Aluno Teste 140', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174558, '18103930', 'Aluno Teste 146', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174560, '18200913', 'Aluno Teste 167', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174567, '18200056', 'Aluno Teste 151', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(174570, '18101276', 'Aluno Teste 132', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(175021, '18101250', 'Aluno Teste 131', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(175831, '18103459', 'Aluno Teste 145', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(176137, '18200866', 'Aluno Teste 166', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(176299, '18200157', 'Aluno Teste 156', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(176315, '18200819', 'Aluno Teste 159', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(176316, '18200853', 'Aluno Teste 164', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177745, '18201109', 'Aluno Teste 172', '1100 - Nutrição', 'Sim', 'Cursando', 'Homologada'),
(177767, '18200821', 'Aluno Teste 160', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177769, '18200857', 'Aluno Teste 165', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177784, '18200110', 'Aluno Teste 155', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177787, '18200739', 'Aluno Teste 157', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177788, '18201051', 'Aluno Teste 170', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177795, '18201183', 'Aluno Teste 173', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177796, '18100871', 'Aluno Teste 127', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177802, '18102810', 'Aluno Teste 141', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177804, '18105072', 'Aluno Teste 148', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177806, '18101299', 'Aluno Teste 133', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177808, '18103162', 'Aluno Teste 144', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177810, '18101206', 'Aluno Teste 130', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177813, '18101179', 'Aluno Teste 128', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177815, '18102516', 'Aluno Teste 135', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177817, '18102654', 'Aluno Teste 137', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177820, '18105023', 'Aluno Teste 147', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(177872, '18102881', 'Aluno Teste 143', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178095, '18102727', 'Aluno Teste 139', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178236, '18105076', 'Aluno Teste 149', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178239, '18200013', 'Aluno Teste 150', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178274, '18101181', 'Aluno Teste 129', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178291, '18101407', 'Aluno Teste 134', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178339, '18102596', 'Aluno Teste 136', '400 - Odontologia', 'Não', 'Cursando', 'Homologada'),
(178342, '18102814', 'Aluno Teste 142', '400 - Odontologia', 'Sim', 'Cursando', 'Homologada');

-- --------------------------------------------------------

--
-- Table structure for table `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int(11) NOT NULL,
  `CPF` varchar(255) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `Tipo` varchar(255) NOT NULL,
  `Data` date NOT NULL,
  `Link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arquivos`
--

INSERT INTO `arquivos` (`id`, `CPF`, `Descricao`, `Tipo`, `Data`, `Link`) VALUES
(8, '555.666.777-88', 'panorâmica', 'Radiografia ', '2023-11-13', 'uploads/555.666.777-88/652ad9f85d9d2_panoramica-1643135898.jpg'),
(16, '555.666.777-88', 'qwertyu', 'Radiografia periapical', '2023-11-06', 'uploads/555.666.777-88/652ecd2a5e3f8_a.html'),
(18, '999.888.777-66', 'qwerty', 'Radiografia periapical', '2023-11-03', 'uploads/555.666.777-88/652ecf987bf33_a.html');

-- --------------------------------------------------------

--
-- Table structure for table `avaliacoesatendimento`
--

CREATE TABLE `avaliacoesatendimento` (
  `id_avaliacao` bigint(20) NOT NULL,
  `data_avaliacao` date NOT NULL,
  `matricula` varchar(55) NOT NULL,
  `id_responsavel` varchar(20) NOT NULL,
  `responsavel` varchar(40) NOT NULL,
  `cod_disciplina` varchar(20) NOT NULL,
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
(1, '2023-04-03', '2010123', '', 'Ciclano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Satisfatório', 'Bom', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Bom', ''),
(2, '2003-03-23', '2011456', '', 'Ciclano', '3500053', 'ODONTOPEDIATRIA', '2023/1', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', ''),
(3, '2003-03-23', '2012789', '', 'Ciclano', '3490047', 'CIRURGIA BUCO-MAXILAR III', '2023/1', 'Insatisfatório', 'Insatisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', ''),
(4, '2004-04-23', '2012789', '', 'Ciclano', '3500053', 'ODONTOPEDIATRIA', '2023/2', 'Bom', 'Satisfatório', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', ''),
(5, '2004-04-23', '2010123', '', 'Ciclano', '3470016', 'PERIODONTIA CLÍNICA', '2023/2', 'Bom', 'Satisfatório', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', ''),
(6, '2004-04-23', '2011456', '', 'Ciclano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Insatisfatório', 'Bom', 'Muito Bom', 'Muito Bom', 'Muito Bom', 'Muito Bom', 'Satisfatório', 'Muito Bom', 'Aluno chegou atrasado'),
(7, '2004-04-23', '2010123', '', 'Ciclano', '3500053', 'ODONTOPEDIATRIA', '2023/1', 'Bom', 'Satisfatório', 'Bom', 'Parcialmente', 'Bom', 'Parcialmente', 'Satisfatório', 'Bom', ''),
(8, '2004-04-23', '2013654', '', 'Ciclano', '3500053', 'ODONTOPEDIATRIA', '2023/1', 'Bom', 'Muito Bom', 'Satisfatório', 'Parcialmente', 'Satisfatório', 'Parcialmente', 'Satisfatório', 'Bom', ''),
(9, '2004-10-23', '2012789', '', 'Ciclano', '3500053', 'ODONTOPEDIATRIA', '2023/1', 'Bom', 'Muito Bom', 'Bom', 'Parcialmente', 'Bom', 'Parcialmente', 'Satisfatório', 'Bom', ''),
(10, '2004-10-23', '2014321', '', 'Ciclano', '3500053', 'ODONTOPEDIATRIA', '2023/1', 'Satisfatório', 'Muito Bom', 'Bom', 'Bom', 'Parcialmente', 'Satisfatório', 'Satisfatório', 'Bom', ''),
(11, '2004-10-23', '2010123', '', 'Fulano', '3490047', 'CIRURGIA BUCO-MAXILAR III', '2023/2', 'Satisfatório', 'Muito Bom', 'Bom', 'Parcialmente', 'Parcialmente', 'Satisfatório', 'Satisfatório', 'Bom', ''),
(12, '2004-10-23', '2010123', '', 'Fulano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Satisfatório', 'Parcialmente', 'Bom', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Muito Bom', ''),
(13, '2004-11-23', '2014321', '', 'Fulano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Parcialmente', 'Bom', 'Bom', 'Bom', 'Bom', 'Satisfatório', 'Satisfatório', 'Muito Bom', ''),
(14, '2004-11-23', '2014321', '', 'Fulano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Bom', 'Parcialmente', 'Bom', 'Bom', 'Bom', 'Parcialmente', 'Bom', 'Muito Bom', ''),
(15, '2004-11-23', '2013654', '', 'Fulano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Bom', 'Satisfatório', 'Parcialmente', 'Parcialmente', 'Bom', 'Satisfatório', 'Bom', 'Muito Bom', ''),
(16, '2004-11-23', '2011456', '', 'Fulano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Insatisfatório', 'Satisfatório', 'Insatisfatório', 'Parcialmente', 'Bom', 'Satisfatório', 'Bom', 'Insatisfatório', 'Aluno não tem comportamento compatível com o ambiente'),
(17, '2004-11-23', '2013654', '', 'Fulano', '3490047', 'CIRURGIA BUCO-MAXILAR III', '2023/1', 'Bom', 'Satisfatório', 'Parcialmente', 'Parcialmente', 'Satisfatório', 'Parcialmente', 'Bom', 'Muito Bom', ''),
(18, '2004-11-23', '2012789', '', 'Fulano', '3490047', 'CIRURGIA BUCO-MAXILAR III', '2023/1', 'Bom', 'Parcialmente', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Parcialmente', 'Bom', 'Muito Bom', ''),
(19, '2004-11-23', '2013654', '', 'Fulano', '3470016', 'PERIODONTIA CLÍNICA', '2023/1', 'Bom', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Bom', 'Muito Bom', ''),
(20, '2004-11-23', '2013654', '', 'Fulano', '3490047', 'CIRURGIA BUCO-MAXILAR III', '2023/1', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Bom', 'Bom', ''),
(26, '2023-11-14', '14200737', 'Carlos Santana', 'Carlos Santana', '03480007', 'UNIDADE CLÍNICA ODONTOLÓGICA I', '2023/2', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', 'Satisfatório', '');

-- --------------------------------------------------------

--
-- Table structure for table `disciplinas`
--

CREATE TABLE `disciplinas` (
  `id` int(11) NOT NULL,
  `cod_atividade` varchar(255) NOT NULL,
  `atividade` varchar(255) NOT NULL,
  `cod_turma` varchar(255) NOT NULL,
  `matriculas_vagas` varchar(255) NOT NULL,
  `nr_matricula_especial` varchar(255) NOT NULL,
  `nr_total_matricula` varchar(255) NOT NULL,
  `nr_total_vagas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `cod_atividade`, `atividade`, `cod_turma`, `matriculas_vagas`, `nr_matricula_especial`, `nr_total_matricula`, `nr_total_vagas`) VALUES
(308212, '03490001', 'UNIDADE DE CIRURGIA BMF I', 'M1', '400 - Odontologia (35 / 46)', '0', '35', '46'),
(308213, '03480007', 'UNIDADE CLÍNICA ODONTOLÓGICA I', 'M1', '400 - Odontologia (16 / 23)', '0', '16', '23'),
(308214, '03480007', 'UNIDADE CLÍNICA ODONTOLÓGICA I', 'M2', '400 - Odontologia (15 / 23)', '0', '15', '23'),
(308376, '03490002', 'UNIDADE DE CIRURGIA BMF II', 'M1', '400 - Odontologia (25 / 46)', '0', '25', '46'),
(308383, '03470006', 'UNIDADE CLÍNICA ODONTOLÓGICA II', 'M1', '400 - Odontologia (17 / 23)', '0', '17', '23'),
(308384, '03470006', 'UNIDADE CLÍNICA ODONTOLÓGICA II', 'M2', '400 - Odontologia (20 / 23)', '0', '20', '23'),
(308403, '03490003', 'UNIDADE DE CIRURGIA BMF III', 'M1', '400 - Odontologia (37 / 46)', '0', '37', '46'),
(308434, '03500006', 'UNIDADE DE CLÍNICA INFANTIL I', 'M1', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(308439, '03500006', 'UNIDADE DE CLÍNICA INFANTIL I', 'M2', '400 - Odontologia (15 / 18)', '0', '15', '18'),
(308454, '03470004', 'UNIDADE CLÍNICA ODONTOLÓGICA III', 'M1', '400 - Odontologia (13 / 33)', '0', '13', '33'),
(308456, '03470004', 'UNIDADE CLÍNICA ODONTOLÓGICA III', 'M2', '400 - Odontologia (15 / 33)', '0', '15', '33'),
(309145, '03500013', 'UNIDADE DE CLÍNICA INFANTIL II', 'M1', '400 - Odontologia (12 / 16)', '0', '12', '16'),
(309147, '03500013', 'UNIDADE DE CLÍNICA INFANTIL II', 'M2', '400 - Odontologia (15 / 16)', '0', '15', '16'),
(309151, '03470008', 'ESTÁGIO EM CLÍNICA ODONTOLÓGICA I', 'P1', '400 - Odontologia (15 / 33)', '0', '15', '33'),
(309154, '03470008', 'ESTÁGIO EM CLÍNICA ODONTOLÓGICA I', 'P2', '400 - Odontologia (16 / 33)', '0', '16', '33'),
(309155, '03480008', 'UNIDADE DE PRÓTESE DENTÁRIA II', 'M1', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(309157, '03480008', 'UNIDADE DE PRÓTESE DENTÁRIA II', 'M2', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(309191, '03490004', 'UNID. TRAUMAT. PRÓTESE BUCO-MAXILO-FACIAL', 'M1', '400 - Odontologia (34 / 46)', '0', '34', '46'),
(309199, '03480009', 'UNIDADE DE PRÓTESE DENTÁRIA III', 'M1', '400 - Odontologia (18 / 18)', '0', '18', '18'),
(309203, '03480009', 'UNIDADE DE PRÓTESE DENTÁRIA III', 'M2', '400 - Odontologia (16 / 18)', '1', '17', '18'),
(309207, '03500012', 'ESTÁGIO EM CLÍNICA INFANTIL', 'P1', '400 - Odontologia (17 / 18)', '0', '17', '18'),
(309212, '03500012', 'ESTÁGIO EM CLÍNICA INFANTIL', 'P2', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(309221, '03480010', 'ESTÁGIO SUPERVISIONADO EM ÁREA ESPECÍFICA I', 'P1', '400 - Odontologia (17 / 23)', '0', '17', '23'),
(309223, '03480010', 'ESTÁGIO SUPERVISIONADO EM ÁREA ESPECÍFICA I', 'P2', '400 - Odontologia (16 / 23)', '0', '16', '23'),
(309268, '03480014', 'ESTÁGIO EM CLÍNICA ODONTOLÓGICA II', 'P1', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(309269, '03480014', 'ESTÁGIO EM CLÍNICA ODONTOLÓGICA II', 'P2', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(316934, '03480012', 'ESTÁGIO INTRAMUROS EM ÁREAS ESPECÍFICAS II', 'P99', '400 - Odontologia (1 / 1)', '0', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `encaminhamentos`
--

CREATE TABLE `encaminhamentos` (
  `id` int(11) NOT NULL,
  `CPF` varchar(255) DEFAULT NULL,
  `Data` date NOT NULL,
  `Especialidade` varchar(255) DEFAULT NULL,
  `Complexidade` varchar(255) DEFAULT NULL,
  `Demanda` varchar(255) DEFAULT NULL,
  `origemID` varchar(20) NOT NULL,
  `encaminhamentoOrigem` varchar(255) NOT NULL,
  `alunoEncaminhamento` varchar(50) NOT NULL,
  `responsavelEncaminhamento` varchar(50) NOT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Observacoes` varchar(255) DEFAULT NULL,
  `homologado` varchar(3) DEFAULT NULL,
  `data_homolog` date DEFAULT NULL,
  `tramitado` varchar(3) DEFAULT NULL,
  `data_tramite` date DEFAULT NULL,
  `contato1` datetime DEFAULT NULL,
  `contato2` datetime DEFAULT NULL,
  `contato3` datetime DEFAULT NULL,
  `obsContato` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `encaminhamentos`
--

INSERT INTO `encaminhamentos` (`id`, `CPF`, `Data`, `Especialidade`, `Complexidade`, `Demanda`, `origemID`, `encaminhamentoOrigem`, `alunoEncaminhamento`, `responsavelEncaminhamento`, `Status`, `Observacoes`, `homologado`, `data_homolog`, `tramitado`, `data_tramite`, `contato1`, `contato2`, `contato3`, `obsContato`) VALUES
(1, '112.289.390-63', '2023-11-06', 'Prótese Dentária', 'Baixa', 'Confeccção de PPR superior', '', '', '', '', 'Em atendimento', 'Necessita de acompanhamento constante.', NULL, NULL, 'Sim', '2023-11-21', NULL, NULL, NULL, NULL),
(2, '790.588.720-09', '2023-11-01', 'Periodontia', 'Média', 'Aumento de coroa clínica no 24', '', 'Origem', '14200737', '14200737', 'Em atendimento', 'Problema identificado durante a consulta inicial.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '555.666.777-88', '2023-10-06', 'Periodontia', 'Média', 'Raspagem subgengival em todos os sextantes', '', '', '', '', 'Em atendimento', 'Paciente relatou dor intensa.', 'Sim', '0000-00-00', 'Sim', '2023-11-21', NULL, NULL, NULL, NULL),
(4, '112.289.390-63', '2023-09-12', 'Cirurgia', 'Média', 'Exodontia do 38', '', '', '', '', 'Em atendimento', 'Tratamento de rotina.', NULL, NULL, 'Sim', '2023-11-21', NULL, NULL, NULL, NULL),
(5, '790.588.720-09', '2023-11-06', 'Prótese dentária', 'Média', 'Coroa unitária no dente 24', '', '', '', '', 'Em atendimento', 'Tratamento de rotina de odontopediatria.', NULL, NULL, 'Sim', '2023-11-21', NULL, NULL, NULL, NULL),
(12, '555.666.777-88', '2023-11-06', 'Cirurgia', 'Média', 'Dados atualizados de novo', '345', 'Implanto', '15200280', 'Carlos Santana', 'Em atendimento', NULL, 'Sim', '2023-11-06', 'Sim', '2023-11-21', NULL, NULL, NULL, NULL),
(13, '790.588.720-09', '2023-11-06', 'Cirurgia', 'Média', 'Descrição da demanda feita no teste', '345', 'Implanto', '14200737', 'Carlos Santana', 'Em atendimento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '112.289.390-63', '2023-11-15', 'Prótese Dentária', 'Baixa', 'Descrição 15-11', '308403', 'UNIDADE DE CIRURGIA BMF III', '14200737', 'Carlos Santana', 'Aguardando homologação do encaminhamento', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '112.289.390-63', '2023-11-15', 'Cirurgia', 'Baixa', 'Descrição 15-11', '308403', 'UNIDADE DE CIRURGIA BMF III', '14200737', 'João da Silva', 'Aguardando homologação da alta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '112.289.390-63', '2023-11-15', 'Odontopediatria', 'Baixa', 'Descrição 15-11', '308403', 'UNIDADE DE CIRURGIA BMF III', '14200737', 'Responsavel', 'Aguardando homologação da alta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '112.289.390-63', '2023-11-15', 'Dentística', 'Alta', 'Teste voltar', '308403', 'UNIDADE DE CIRURGIA BMF III', '14200737', 'Carlos Santana', 'Em atendimento', NULL, NULL, NULL, 'Sim', '2023-11-21', NULL, NULL, NULL, NULL),
(34, '112.289.390-63', '2023-11-16', 'Periodontia', 'Baixa', 'Encaminhamento TESTE', '', 'Implanto', 'Encaminhado por responsável técnico', 'Responsavel', 'Encaminhamento registrado por responsável técnico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '112.289.390-63', '2023-11-20', 'Prótese Dentária', 'Média', 'TESTE DEVOLVER', '308403', 'UNIDADE DE CIRURGIA BMF III', '14200737', 'Carlos Santana', 'Devolvido ao usuário', NULL, 'Sim', '2023-11-20', NULL, NULL, NULL, NULL, NULL, NULL),
(37, '112.289.390-63', '2023-11-20', 'Prótese Dentária', 'Média', 'Teste 20/11', '', '', '', '', 'Em espera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '112.289.390-63', '2023-11-20', 'Prótese Dentária', 'Média', 'Teste 20/11', '', '', '', '', 'Em espera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '112.289.390-63', '2023-11-20', 'Prótese Dentária', 'Média', 'Teste 20/11', '', '', '', '', 'Em espera', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `medicoTEL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrevista`
--

INSERT INTO `entrevista` (`id_entrevista`, `id_aluno`, `id_disciplina`, `data`, `CPF`, `queixa`, `doenca_YN`, `doenca`, `tto_medico_YN`, `tto_medico`, `medicacao_YN`, `medicacao`, `alergia_YN`, `alergia`, `fumante_YN`, `fumante`, `etilista_YN`, `etilista`, `ultimaConsulta`, `ultimoTTO`, `freq_Higiene`, `instr_Higiene`, `fluor`, `operado_YN`, `operado`, `cicatrizacao_YN`, `cicatrizacao`, `anestesia_YN`, `anestesia`, `hemorragia_YN`, `hemorragia`, `gravidez_YN`, `gravidez`, `historicoFamiliar`, `obs`, `medico`, `medicoTEL`) VALUES
(1, '', '', '2023-10-23', '112.289.390-63', '', 'Sim', 'teste', 'Não', '', 'Sim', 'TESTE', 'Não', '', 'Não', '', 'Não', '', '12/03/2021', 'teste', '3x ao dia', 'Enxaguante,Escova', 'Dentifirício', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Nada consta', 'teste observação', 'Dr. X', 99999999),
(2, '', '', '2023-10-23', '112.289.390-63', '', 'Sim', 'teste', 'Não', '', 'Sim', 'TESTE', 'Não', '', 'Não', '', 'Não', '', '12/03/2021', 'teste', '3x ao dia', 'Enxaguante,Escova', 'Dentifirício', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Nada consta', 'teste observação', 'Dr. X', 99999999),
(7, 'Pedro', 'PERIODONTIA CLÍNICA', '2023-10-25', '790.588.720-09', 'queixaaaaaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0),
(8, 'Pedro', 'PRÓTESE DENTÁRIA PARCIAL III', '2023-10-25', '964.940.820-76', 'queixaadulto', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0),
(9, 'Pedro', 'PERIODONTIA CLÍNICA', '2023-10-25', '964.940.820-76', 'Queixa Adulto', 'Não', 'mmmmm', 'Não', '', 'Não', 'mmmmmmmm', 'Não', '', 'Não', '', 'Não', '', '2023-10-25', 'tto', '3x ao dia', 'Array', 'Array', 'Não', 'aaaaaaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'avvvvvvvv', 'ccccccc', '', 0),
(10, 'Pedro', 'ODONTOPEDIATRIA', '2023-10-25', '790.588.720-09', 'queixaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0),
(11, 'Pedro', 'ODONTOPEDIATRIA', '2023-10-25', '790.588.720-09', 'queixaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0),
(12, 'Pedro', 'ODONTOPEDIATRIA', '2023-10-25', '790.588.720-09', 'queixaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0),
(13, 'Pedro', 'ESTÁGIO EM PRONTO ATENDIMENTO (EPA)', '2023-10-25', '790.588.720-09', 'queixaaa', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0),
(14, 'Pedro', 'PERIODONTIA CLÍNICA', '2023-10-25', '964.940.820-76', 'queixaAdultoooooooo', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `entrevistaped`
--

CREATE TABLE `entrevistaped` (
  `id_entrevista` bigint(20) NOT NULL,
  `id_aluno` varchar(20) NOT NULL,
  `id_disciplinaPed` varchar(50) NOT NULL,
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
  `telPediatra` int(11) NOT NULL,
  `obs_ped` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrevistaped`
--

INSERT INTO `entrevistaped` (`id_entrevista`, `id_aluno`, `id_disciplinaPed`, `data`, `CPF`, `queixaPed`, `probGravidez_YN`, `probGravidez`, `tipoParto`, `doencaInfancia_YN`, `doencaInfancia`, `internacao_YN`, `internacao`, `historicoMedicacao_YN`, `historicoMedicacao`, `alergia_YN_Ped`, `alergia_Ped`, `respiratorio_YN`, `respiratorio`, `cardiaco_YN`, `cardiaco`, `sanguineo_YN`, `sanguineo`, `diabetes_YN`, `diabetes`, `medicacao_YN_Ped`, `medicacao_Ped`, `pediatra`, `telPediatra`, `obs_ped`) VALUES
(1, '', 'PRÓTESE DENTÁRIA PARCIAL III', '2023-10-25', '112.289.390-63', 'queixa ped', 'Sim', 'Não', 'Cesárea', 'Não', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Pediatra', 0, 'teste_obs'),
(5, 'Pedro', 'PRÓTESE DENTÁRIA PARCIAL III', '2023-10-25', '964.940.820-76', 'queixaPed', 'Não', '', '', 'Não', '', 'Não', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', '', 0, ''),
(6, 'Pedro', 'ODONTOPEDIATRIA', '2023-10-25', '964.940.820-76', 'queixa ped', 'Não', '', '', 'Não', '', 'Não', '', '', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'Não', '', 'aaaaaaaa', 0, 'aaaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `especialidades`
--

CREATE TABLE `especialidades` (
  `id_especialidade` int(20) NOT NULL,
  `especialidade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `especialidades`
--

INSERT INTO `especialidades` (`id_especialidade`, `especialidade`) VALUES
(1, 'Prótese Dentária'),
(2, 'Odontopediatria'),
(3, 'Periodontia'),
(4, 'Dentística'),
(5, 'Cirurgia'),
(6, 'Diagnóstico'),
(8, 'Endodontia');

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
  `periodo` varchar(10) NOT NULL,
  `codSus` text NOT NULL,
  `descricao_SUS` text NOT NULL,
  `homologado` varchar(3) NOT NULL,
  `data_homolog` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historicoatendimentos`
--

INSERT INTO `historicoatendimentos` (`id_atendimentos`, `id_aluno`, `cpf`, `data`, `especialidade`, `descricao`, `responsavel`, `componente_curricular`, `periodo`, `codSus`, `descricao_SUS`, `homologado`, `data_homolog`) VALUES
(1, '14200737', '999.888.777-66', '2023-11-14', 'Prótese Dentária', 'Teste regisro de atendimento', '8', 'RADIOLOGIA E IMAGINOLOGIA', '2023/2', '[\"204010225\",\"101020090\"]', '[\"RADIOGRAFIA PERIAPICAL\",\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(2, '14200737', '112.289.390-63', '2023-10-27', 'Dentística', 'Descrição 02', '2010123', 'componente', '2023/1', '[\"204010055\",\"301100152\"]', '[\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\",\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\"]', 'Não', NULL),
(3, 'Aluno', '112.289.390-63', '2023-10-26', 'Cirurgia', 'Descrição 03', 'Pedro', 'disc', '2023/1', '[\"204010055\",\"301100152\"]', '[\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\",\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\"]', 'Sim', '2023-10-30'),
(4, 'Pedro', '112.289.390-63', '2023-10-27', 'Prótese Dentária', 'aaaaaa', 'Pedro', 'componente', '2023/2', '[\"101020090\",\"201010526\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(5, 'Pedro', '112.289.390-63', '2023-10-27', 'Prótese Dentária', 'aaaaaa', 'Pedro', 'componente', '2023/2', '[\"101020090\",\"201010526\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(6, 'Pedro', '112.289.390-63', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2022/2', '[]', '[]', 'Não', NULL),
(7, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2022/2', '[\"201010232\",\"204010128\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(8, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2022/2', '[\"201010232\",\"204010128\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(9, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2022/2', '[\"201010232\",\"101020090\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(10, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2022/2', '[\"101020090\",\"201010232\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(11, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2023/1', '[\"101020090\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(12, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2023/1', '[\"203020049\",\"203020049\"]', '[\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\",\"IMUNOHISTOQUIMICA DE NEOPLASIAS MALIGNAS (POR MARCADOR)\"]', 'Não', NULL),
(13, 'Pedro', '790.588.720-09', '2023-10-27', 'Prótese Dentária', 'descrição de atendimento', 'Professor', 'Componente', '2023/1', '[\"203020049\",\"203020049\",\"101020090\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Não', NULL),
(14, 'Pedro', '654123789', '2023-10-30', 'Periodontia', 'aaaaaaaaaa', 'profe', 'comp', '2023/1', '[\"204010160\",\"301010153\"]', '[\"RADIOGRAFIA OCLUSAL\",\"PRIMEIRA CONSULTA ODONTOLOGICA PROGRAMu00c1TICA\"]', 'Não', NULL),
(154, '14200737', '999.888.777-66', '2023-11-14', 'Prótese Dentária', 'Teste 14-11-2023', 'Carlos Santana', 'UNIDADE CLÍNICA ODONTOLÓGICA I', '2023/2', '[\"101020090\"]', '[\"SELAMENTO PROVISu00d3RIO DE CAVIDADE DENTu00c1RIA\"]', 'Sim', '2023-11-14'),
(168, '14200737', '999.888.777-66', '2023-11-14', 'Prótese Dentária', 'Tesde combotao2', 'Responsavel', 'UNIDADE CLÍNICA ODONTOLÓGICA I', '2023/2', '[]', '[]', 'Não', NULL),
(169, '14200737', '999.888.777-66', '2023-11-14', 'Prótese Dentária', 'AAAAAAAAAA', 'Carlos Santana', 'UNIDADE CLÍNICA ODONTOLÓGICA I', '2023/2', '[]', '[]', 'Sim', '2023-11-14'),
(179, 'Atendimento registrado por responsável-técnico', '654123789', '2023-11-16', 'Odontopediatria', 'Descrição responsavel técnico ahauhauhauhauhauhuahua', 'Responsavel', 'PERIODONTIA CLÍNICA', '2023/2', '[]', '[]', 'Sim', '2023-11-16'),
(180, 'Atendimento registrado por responsável-técnico', '654123789', '2023-11-16', 'Prótese Dentária', 'Autocomplete', '14200737', 'Implanto', '2023/2', '[\"204010225\"]', '[\"RADIOGRAFIA PERIAPICAL\"]', 'Sim', '2023-11-16');

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
(1, 'Fosfato de zinco', 10, 'Cimento', 'Kit'),
(2, 'Resina Acrílica', 15, 'Resina', 'Bisnaga'),
(3, 'Resina Composta cor A1', 25, 'Resina', 'Bisnaga'),
(4, 'Teste', 3, 'Cimento', 'Bisnaga'),
(6, 'teste3', 4, 'Cimento', 'Bisnaga'),
(8, 'teste7', 4, 'Resina composta', 'Frasco'),
(9, 'teste10', 5, 'Hospitalar', 'Kit'),
(10, 'gaze', 50, 'Hospitalar', 'Pacote'),
(11, 'rolo de algodão', 50, 'Hospitalar', 'Pacote'),
(12, 'anestésico', 3, 'Hospitalar', 'Frasco'),
(13, 'bbbbbbbbb', 3, 'Resina composta', 'Bisnaga'),
(14, 'ccccccccc', 3, 'Resina composta', 'Frasco'),
(15, 'teste3', 3, 'Resina composta', 'Bisnaga'),
(16, 'hauhauhauh', 4, 'Resina composta', 'Bisnaga'),
(17, 'testematerial', 12, 'Cimento', 'Frasco'),
(18, 'testeqqer coisa', 4, 'Cimento', 'Bisnaga'),
(19, 'testedenovo', 3, 'Resina composta', 'Bisnaga'),
(20, 'ionomero de vidro', 7, 'Cimento', 'Kit'),
(21, 'fosfato de zinco', 4, 'Cimento', 'Kit'),
(22, 'alginato', 2, 'Moldagem', 'Pacote'),
(23, 'polieter', 9, 'Moldagem', 'Kit'),
(24, 'silicone de condensação', 8, 'Moldagem', 'Kit'),
(26, 'resina acrílica', 116, 'Resina composta', 'Frasco'),
(28, 'TESTE 21/09', 2, 'Cimento', 'Kit'),
(30, 'Teste 28-09', 222, 'Hospitalar', 'Frasco'),
(46, 'Bioplic', 20, 'Resina', 'Bisnaga'),
(47, 'material novo', 5, 'Hospitalar', 'Kit'),
(48, 'Material novo1', 6, 'Resina composta', 'Bisnaga'),
(49, 'Material novo2', 3, 'Moldagem', 'Kit'),
(50, 'Material novo3', 12, 'Hospitalar', 'Frasco'),
(51, 'Material novo4', 5, 'Resina composta', 'Bisnaga'),
(52, 'Material novo5', 10, 'Resina', 'Bisnaga');

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
  `DataNasc` date DEFAULT NULL,
  `Tel` varchar(255) DEFAULT NULL,
  `Tel2` varchar(20) NOT NULL,
  `Tel3` varchar(20) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
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

INSERT INTO `pacientes` (`id`, `CPF`, `informacoesImportantes`, `CNS`, `Nome`, `nomeSocial`, `Rg`, `DataNasc`, `Tel`, `Tel2`, `Tel3`, `Email`, `EstadoCivil`, `Sexo`, `NomeMae`, `NomePai`, `CorRaca`, `PNE`, `EnderecoTipo`, `Cep`, `Rua`, `EndNumero`, `EndComplemento`, `Bairro`, `Cidade`) VALUES
(1, '555.666.777-88', 'Alérgico a penicilina', NULL, 'Ana Souza', '', '88776655', '1985-10-24', '', '', '', 'ana@example.com', 'CASADA', 'Feminino', 'Maria Souza', 'João Souza', '', 'Array', 'Residencial', '12345-678', 'Rua da Praia', '', '', 'Beira Mar', 'Cidade Marítima'),
(2, '790.588.720-09', '', NULL, 'Ciclana Pereira', '', '7654321', '2013-11-04', '', '', '', 'ciclana@example.com', 'CASADO', 'Feminino', 'Maria Pereira', 'José Pereira', '', 'Array', 'Residencial', '54321-987', 'Avenida das Flores', '', '', 'Bairro Central', 'Cidadelândia'),
(3, '112.289.390-63', '', NULL, 'Fulano da Silva', '', '1234567', '1985-02-11', '53 999999', '53 33333333', '', 'fulano@example.com', 'SOLTEIRO', 'Masculino', 'Ciclana da Silva', 'Beltrano da Silva', '', 'Array', 'Residencial', '12345-678', 'Rua dos Exemplos', '', '', 'Bairro das Amostras', 'Cidadópolis'),
(4, '999.888.777-66', 'Alérgico a penicilina', '12345', 'Ricardo Santos', 'Joana Santos', '33221100', '1985-10-10', '539999999', '53888888', '53777777', 'ricardo@example.com', 'SOLTEIRO', 'Masculino', 'Marta Santos', 'José Santos', 'BRANCA', 'Array', 'Residencial', '98765-432', 'Rua dos Sonhos', '88', 'Apto. 1', 'Jardim Esperança', 'Cidade Feliz'),
(5, '111.222.333-44', '', NULL, 'José da Silva', '', '12345678', '1976-01-27', '', '', '', 'jose@example.com', 'CASADO', 'Masculino', 'Maria da Silva', 'Antônio da Silva', '', 'Array', 'Residencial', '76543-210', 'Rua das Árvores', '', '', 'Jardim das Flores', 'Cidadefeliz'),
(6, '964.940.820-76', '', NULL, 'Beltrano Alves', '', '11223344', '1984-01-10', '', '', '', 'beltrano@example.com', 'DIVORCIADO', 'Masculino', 'Joana Alves', 'Pedro Alves', '', 'Array', 'Comercial', '98765-432', 'Rua do Comércio', '', '', 'Centro Empresarial', 'Cidadeforte'),
(7, '777.888.999-11', '', NULL, 'Lucia Lima', '', '11223344', '1980-05-13', '', '', '', 'lucia@example.com', 'SOLTEIRA', 'Feminino', 'Ana Lima', 'Pedro Lima', '', 'Array', 'Residencial', '54321-123', 'Rua das Palmeiras', '', '', 'Jardim Tropical', 'Cidadeverde'),
(8, '111.222.333-55', '', NULL, 'Mariana Costa', '', '98765432', '1968-01-02', '', '', '', 'mariana@example.com', 'CASADA', 'Feminino', 'Ana Costa', 'José Costa', '', 'Array', 'Residencial', '76543-210', 'Rua das Flores', '', '', 'Jardim das Flores', 'Cidadefeliz'),
(9, '333.222.111-00', '', NULL, 'Isabela Lima', '', '65432109', '1976-04-21', '', '', '', 'isabela@example.com', 'SOLTEIRA', 'Feminino', 'Marta Lima', 'Pedro Lima', '', 'Array', 'Residencial', '54321-123', 'Rua das Palmeiras', '', '', 'Jardim Tropical', 'Cidadeverde'),
(10, '222.111.333-55', '', NULL, 'Sandra Oliveira', '', '54321098', '1966-03-17', '', '', '', 'sandra@example.com', 'SOLTEIRA', 'Feminino', 'Ana Oliveira', 'José Oliveira', '', 'Array', 'Residencial', '98765-432', 'Rua dos Sonhos', '', '', 'Jardim Esperança', 'Cidade Feliz'),
(11, '444.333.222-11', '', NULL, 'João Pereira', '', '12345678', '1975-04-15', '', '', '', 'joao@example.com', 'CASADO', 'Masculino', 'Maria Pereira', 'Antônio Pereira', '', 'Array', 'Residencial', '76543-210', 'Rua das Flores', '', '', 'Jardim das Flores', 'Cidadefeliz'),
(12, '666.555.444-33', '', NULL, 'Pedro Rodrigues', '', '56789012', '1956-08-06', '', '', '', 'pedro@example.com', 'SOLTEIRO', 'Masculino', 'Clara Rodrigues', 'José Rodrigues', '', 'Array', 'Residencial', '98765-432', 'Rua dos Sonhos', '', '', 'Jardim Esperança', 'Cidade Feliz'),
(13, '888.777.666-44', '', NULL, 'Carlos Santos', '', '43210987', '1971-05-10', '', '', '', 'carlos@example.com', 'CASADO', 'Masculino', 'Marta Santos', 'Pedro Santos', '', 'Array', 'Residencial', '54321-123', 'Rua das Palmeiras', '', '', 'Jardim Tropical', 'Cidadeverde'),
(14, '999.888.777-33', '', NULL, 'Larissa Pereira', '', '76543210', '1965-10-10', '', '', '', 'larissa@example.com', 'SOLTEIRA', 'Feminino', 'Maria Pereira', 'José Pereira', '', 'Array', 'Residencial', '76543-210', 'Rua das Flores', '', '', 'Jardim das Flores', 'Cidadefeliz');

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
(15, '964.940.820-76', '2023-10-25', 'agora', 'a', 'Prótese Dentária,Odontopediatria', 'asb', 'Pedro', 'aaa', 'bbb'),
(16, '112.289.390-63', '2023-11-16', 'Queixa responsavel', 'aspecto responsavel', 'Prótese Dentária,Periodontia', 'Descrição responsavel', 'Cadastrado pelo responsável técnico', 'Responsavel', 'Implanto');

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
-- Table structure for table `projetos`
--

CREATE TABLE `projetos` (
  `id_projeto` int(11) NOT NULL,
  `cod_atividade` int(11) NOT NULL,
  `atividade` varchar(255) NOT NULL,
  `tipoProjeto` varchar(25) NOT NULL,
  `statusProjeto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projetos`
--

INSERT INTO `projetos` (`id_projeto`, `cod_atividade`, `atividade`, `tipoProjeto`, `statusProjeto`) VALUES
(1, 1378, 'Implanto', 'Extensão', 'Ativo'),
(2, 123, 'Perio', 'Pesquisa', 'Ativo'),
(3, 9999, 'Prodente', 'Extensão', 'Ativo');

-- --------------------------------------------------------

--
-- Table structure for table `regulacaointerna`
--

CREATE TABLE `regulacaointerna` (
  `id_regulacao` bigint(20) NOT NULL,
  `id_turma` varchar(255) NOT NULL,
  `id_matricula` varchar(50) NOT NULL,
  `data_pedido` date NOT NULL,
  `tipo_regulacao` varchar(50) NOT NULL,
  `solicitacaoDescricao` text NOT NULL,
  `consultaPrevista` date DEFAULT NULL,
  `status_regulacao` varchar(255) NOT NULL,
  `data_tramite` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regulacaointerna`
--

INSERT INTO `regulacaointerna` (`id_regulacao`, `id_turma`, `id_matricula`, `data_pedido`, `tipo_regulacao`, `solicitacaoDescricao`, `consultaPrevista`, `status_regulacao`, `data_tramite`) VALUES
(4, '309151', '14200737', '2023-11-09', 'Desvincular', 'bbbbbbbbbb', NULL, 'Solicitado', '2023-11-17'),
(5, '308403', '14200737', '2023-11-08', 'Desvincular', 'Desistência/AbandonoUPDATE', NULL, 'Devolvido ao usuário', '2023-11-17'),
(6, '309155', '14200737', '2023-11-08', 'Novo vínculo', 'Paciente novo com pendência', NULL, 'Devolvido ao usuário', '2023-11-17'),
(7, '309155', '14200737', '2023-11-08', 'Novo vínculo', 'Paciente novo', NULL, 'Tramitado', '2023-11-17'),
(9, '308403', '14200737', '2023-11-09', 'Novo vínculo', 'Teste com data', '2023-11-10', 'Solicitado', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `relação_alunos_disciplinas`
--

CREATE TABLE `relação_alunos_disciplinas` (
  `id` int(11) NOT NULL,
  `matricula` varchar(255) NOT NULL COMMENT 'matricula do aluno',
  `nome` varchar(255) NOT NULL COMMENT 'nome do aluno',
  `turma_id` varchar(255) NOT NULL COMMENT 'Código da disciplina, é o mesmo para diferentes turmas',
  `periodo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `relação_alunos_disciplinas`
--

INSERT INTO `relação_alunos_disciplinas` (`id`, `matricula`, `nome`, `turma_id`, `periodo`) VALUES
(1, '20103643', 'Aluno Teste 95', '308376', '2023/2'),
(2, '20101175', 'Aluno Teste 78', '308214', '2023/2'),
(3, '20201106', 'Aluno Teste 111', '308214', '2023/2'),
(4, '20103586', 'Aluno Teste 93', '308376', '2023/2'),
(5, '18200108', 'Aluno Teste 154', '309157', '2023/2'),
(6, '19100431', 'Aluno Teste 27', '308403', '2023/2'),
(7, '20201190', 'Aluno Teste 113', '308213', '2023/2'),
(8, '20201171', 'Aluno Teste 112', '308214', '2023/2'),
(9, '20201954', 'Aluno Teste 117', '308213', '2023/2'),
(10, '20102959', 'Aluno Teste 85', '308376', '2023/2'),
(11, '19100476', 'Aluno Teste 31', '308456', '2023/2'),
(12, '20201957', 'Aluno Teste 120', '308214', '2023/2'),
(13, '20201959', 'Aluno Teste 121', '308213', '2023/2'),
(14, '20201089', 'Aluno Teste 110', '308214', '2023/2'),
(15, '19200272', 'Aluno Teste 182', '308384', '2023/2'),
(16, '20102973', 'Aluno Teste 86', '309191', '2023/2'),
(17, '20201988', 'Aluno Teste 122', '308213', '2023/2'),
(18, '20201080', 'Aluno Teste 109', '308212', '2023/2'),
(19, '20200514', 'Aluno Teste 103', '308212', '2023/2'),
(20, '20201955', 'Aluno Teste 118', '308213', '2023/2'),
(21, '20102917', 'Aluno Teste 83', '308376', '2023/2'),
(22, '20101628', 'Aluno Teste 80', '308376', '2023/2'),
(23, '20201079', 'Aluno Teste 108', '308212', '2023/2'),
(24, '20200513', 'Aluno Teste 102', '308212', '2023/2'),
(25, '20200709', 'Aluno Teste 105', '308213', '2023/2'),
(26, '20202045', 'Aluno Teste 124', '308212', '2023/2'),
(27, '20201047', 'Aluno Teste 107', '308212', '2023/2'),
(28, '20201956', 'Aluno Teste 119', '308214', '2023/2'),
(29, '20104756', 'Aluno Teste 98', '308376', '2023/2'),
(30, '20105241', 'Aluno Teste 190', '308376', '2023/2'),
(31, '20202078', 'Aluno Teste 125', '308376', '2023/2'),
(32, '18103930', 'Aluno Teste 146', '309191', '2023/2'),
(33, '18201752', 'Aluno Teste 174', '309145', '2023/2'),
(34, '18202280', 'Aluno Teste 25', '308384', '2023/2'),
(35, '19100431', 'Aluno Teste 27', '308439', '2023/2'),
(36, '20201959', 'Aluno Teste 121', '308212', '2023/2'),
(37, '20201988', 'Aluno Teste 122', '308212', '2023/2'),
(38, '18200747', 'Aluno Teste 158', '309145', '2023/2'),
(39, '20201106', 'Aluno Teste 111', '308212', '2023/2'),
(40, '20102973', 'Aluno Teste 86', '309203', '2023/2'),
(41, '20201080', 'Aluno Teste 109', '308214', '2023/2'),
(42, '20200513', 'Aluno Teste 102', '308214', '2023/2'),
(43, '20201047', 'Aluno Teste 107', '308213', '2023/2'),
(44, '20201957', 'Aluno Teste 120', '308212', '2023/2'),
(45, '20104770', 'Aluno Teste 99', '308212', '2023/2'),
(46, '20202091', 'Aluno Teste 126', '308376', '2023/2'),
(47, '18201752', 'Aluno Teste 174', '309155', '2023/2'),
(48, '20102005', 'Aluno Teste 82', '308376', '2023/2'),
(49, '20200709', 'Aluno Teste 105', '308212', '2023/2'),
(50, '18105072', 'Aluno Teste 148', '309191', '2023/2'),
(51, '20105153', 'Aluno Teste 115', '309191', '2023/2'),
(52, '20103131', 'Aluno Teste 90', '308212', '2023/2'),
(53, '20200587', 'Aluno Teste 104', '308214', '2023/2'),
(54, '20103079', 'Aluno Teste 89', '308212', '2023/2'),
(55, '20105153', 'Aluno Teste 189', '308376', '2023/2'),
(56, '20103079', 'Aluno Teste 89', '308214', '2023/2'),
(57, '20105018', 'Aluno Teste 188', '308214', '2023/2'),
(58, '20101684', 'Aluno Teste 81', '308376', '2023/2'),
(59, '20105018', 'Aluno Teste 188', '308212', '2023/2'),
(60, '20104770', 'Aluno Teste 99', '308213', '2023/2'),
(61, '20201089', 'Aluno Teste 110', '308212', '2023/2'),
(62, '20200511', 'Aluno Teste 100', '308376', '2023/2'),
(63, '20103546', 'Aluno Teste 91', '308376', '2023/2'),
(64, '20103575', 'Aluno Teste 92', '308376', '2023/2'),
(65, '20101175', 'Aluno Teste 78', '308212', '2023/2'),
(66, '20200587', 'Aluno Teste 104', '308212', '2023/2'),
(67, '20103009', 'Aluno Teste 89', '308212', '2023/2'),
(68, '20103131', 'Aluno Teste 90', '308213', '2023/2'),
(69, '19100463', 'Aluno Teste 28', '308456', '2023/2'),
(70, '20101522', 'Aluno Teste 79', '308214', '2023/2'),
(71, '19201010', 'Aluno Teste 401', '308384', '2023/2'),
(72, '20100648', 'Aluno Teste 75', '308212', '2023/2'),
(73, '19201427', 'Aluno Teste 69', '308383', '2023/2'),
(74, '19200599', 'Aluno Teste 183', '308384', '2023/2'),
(75, '18104926', 'Aluno Teste 19', '308384', '2023/2'),
(76, '19202075', 'Aluno Teste 71', '308383', '2023/2'),
(77, '19201412', 'Aluno Teste 68', '308383', '2023/2'),
(78, '19200609', 'Aluno Teste 184', '308384', '2023/2'),
(79, '20100601', 'Aluno Teste 73', '308214', '2023/2'),
(80, '19200872', 'Aluno Teste 65', '308383', '2023/2'),
(81, '19200672', 'Aluno Teste 61', '308383', '2023/2'),
(82, '16200568', 'Aluno Teste 6', '308403', '2023/2'),
(83, '18101276', 'Aluno Teste 132', '309203', '2023/2'),
(84, '20100728', 'Aluno Teste 76', '308376', '2023/2'),
(85, '20100574', 'Aluno Teste 72', '308376', '2023/2'),
(86, '20100757', 'Aluno Teste 77', '308376', '2023/2'),
(87, '20100629', 'Aluno Teste 74', '308376', '2023/2'),
(88, '19102617', 'Aluno Teste 38', '308439', '2023/2'),
(89, '19200172', 'Aluno Teste 56', '308383', '2023/2'),
(90, '20103687', 'Aluno Teste 96', '309221', '2023/2'),
(91, '19101706', 'Aluno Teste 35', '308403', '2023/2'),
(92, '19201007', 'Aluno Teste 66', '309221', '2023/2'),
(93, '19102268', 'Aluno Teste 36', '308403', '2023/2'),
(94, '19103744', 'Aluno Teste 51', '308403', '2023/2'),
(95, '19100474', 'Aluno Teste 29', '308384', '2023/2'),
(96, '17201346', 'Aluno Teste 13', '309223', '2023/2'),
(97, '19100475', 'Aluno Teste 30', '308454', '2023/2'),
(98, '19103423', 'Aluno Teste 48', '308434', '2023/2'),
(99, '19103039', 'Aluno Teste 40', '308434', '2023/2'),
(100, '19105179', 'Aluno Teste 54', '308439', '2023/2'),
(101, '18202055', 'Aluno Teste 25', '308213', '2023/2'),
(102, '19103067', 'Aluno Teste 43', '308439', '2023/2'),
(103, '19102280', 'Aluno Teste 37', '308403', '2023/2'),
(104, '19103054', 'Aluno Teste 400', '308439', '2023/2'),
(105, '19200197', 'Aluno Teste 180', '308384', '2023/2'),
(106, '19103739', 'Aluno Teste 50', '309207', '2023/2'),
(107, '20103590', 'Aluno Teste 94', '309223', '2023/2'),
(108, '19103166', 'Aluno Teste 44', '308434', '2023/2'),
(109, '19103055', 'Aluno Teste 42', '308434', '2023/2'),
(110, '19104799', 'Aluno Teste 53', '308439', '2023/2'),
(111, '19103188', 'Aluno Teste 45', '308434', '2023/2'),
(112, '19100526', 'Aluno Teste 33', '308439', '2023/2'),
(113, '19103407', 'Aluno Teste 47', '308439', '2023/2'),
(114, '19100521', 'Aluno Teste 32', '308439', '2023/2'),
(115, '19103050', 'Aluno Teste 41', '308434', '2023/2'),
(116, '19100545', 'Aluno Teste 34', '308403', '2023/2'),
(117, '17201346', 'Aluno Teste 13', '309203', '2023/2'),
(118, '16200568', 'Aluno Teste 6', '308434', '2023/2'),
(119, '19103533', 'Aluno Teste 49', '308403', '2023/2'),
(120, '20103590', 'Aluno Teste 94', '309269', '2023/2'),
(121, '18102654', 'Aluno Teste 137', '309269', '2023/2'),
(122, '19102880', 'Aluno Teste 39', '308439', '2023/2'),
(123, '19103404', 'Aluno Teste 46', '308434', '2023/2'),
(124, '19104346', 'Aluno Teste 52', '308434', '2023/2'),
(125, '19201007', 'Aluno Teste 66', '309268', '2023/2'),
(126, '19102617', 'Aluno Teste 38', '308456', '2023/2'),
(127, '19105179', 'Aluno Teste 54', '308456', '2023/2'),
(128, '19102280', 'Aluno Teste 37', '308439', '2023/2'),
(129, '18202279', 'Aluno Teste 175', '309145', '2023/2'),
(130, '19103055', 'Aluno Teste 42', '308454', '2023/2'),
(131, '19103166', 'Aluno Teste 44', '308454', '2023/2'),
(132, '19103407', 'Aluno Teste 47', '308456', '2023/2'),
(133, '18102655', 'Aluno Teste 138', '309145', '2023/2'),
(134, '15102080', 'Aluno Teste 3', '308403', '2023/2'),
(135, '19103404', 'Aluno Teste 46', '308454', '2023/2'),
(136, '19104346', 'Aluno Teste 52', '308454', '2023/2'),
(137, '19103054', 'Aluno Teste 400', '308456', '2023/2'),
(138, '19103423', 'Aluno Teste 48', '308454', '2023/2'),
(139, '19103744', 'Aluno Teste 51', '308439', '2023/2'),
(140, '19100521', 'Aluno Teste 32', '308456', '2023/2'),
(141, '19102880', 'Aluno Teste 39', '308403', '2023/2'),
(142, '19200157', 'Aluno Teste 55', '308212', '2023/2'),
(143, '19102280', 'Aluno Teste 37', '308456', '2023/2'),
(144, '19103067', 'Aluno Teste 43', '308403', '2023/2'),
(145, '19103188', 'Aluno Teste 45', '308403', '2023/2'),
(146, '19103423', 'Aluno Teste 48', '308403', '2023/2'),
(147, '18102655', 'Aluno Teste 138', '309155', '2023/2'),
(148, '19103407', 'Aluno Teste 47', '308403', '2023/2'),
(149, '19104799', 'Aluno Teste 53', '308403', '2023/2'),
(150, '19103055', 'Aluno Teste 42', '308403', '2023/2'),
(151, '19103461', 'Aluno Teste 178', '308384', '2023/2'),
(152, '19103744', 'Aluno Teste 51', '308456', '2023/2'),
(153, '19100526', 'Aluno Teste 33', '308403', '2023/2'),
(154, '18202279', 'Aluno Teste 175', '309155', '2023/2'),
(155, '18201752', 'Aluno Teste 174', '309151', '2023/2'),
(156, '18200105', 'Aluno Teste 152', '309147', '2023/2'),
(157, '18201051', 'Aluno Teste 170', '309157', '2023/2'),
(158, '18200823', 'Aluno Teste 162', '309157', '2023/2'),
(159, '18102727', 'Aluno Teste 139', '309268', '2023/2'),
(160, '18200107', 'Aluno Teste 153', '309157', '2023/2'),
(161, '18200866', 'Aluno Teste 166', '309155', '2023/2'),
(162, '18200951', 'Aluno Teste 168', '309155', '2023/2'),
(163, '19100431', 'Aluno Teste 27', '308456', '2023/2'),
(164, '18200822', 'Aluno Teste 161', '309157', '2023/2'),
(165, '18200913', 'Aluno Teste 167', '309157', '2023/2'),
(166, '18202279', 'Aluno Teste 175', '309151', '2023/2'),
(167, '18202052', 'Aluno Teste 24', '308213', '2023/2'),
(168, '18200105', 'Aluno Teste 152', '309157', '2023/2'),
(169, '18201051', 'Aluno Teste 170', '309154', '2023/2'),
(170, '18102739', 'Aluno Teste 140', '309191', '2023/2'),
(171, '18200823', 'Aluno Teste 162', '309154', '2023/2'),
(172, '18200107', 'Aluno Teste 153', '309147', '2023/2'),
(173, '18102598', 'Aluno Teste 16', '308403', '2023/2'),
(174, '18200866', 'Aluno Teste 166', '309151', '2023/2'),
(175, '18200951', 'Aluno Teste 168', '309151', '2023/2'),
(176, '19103739', 'Aluno Teste 50', '309268', '2023/2'),
(177, '19100463', 'Aluno Teste 28', '308403', '2023/2'),
(178, '17103708', 'Aluno Teste 10', '308403', '2023/2'),
(179, '18200822', 'Aluno Teste 161', '309147', '2023/2'),
(180, '18200913', 'Aluno Teste 167', '309154', '2023/2'),
(181, '17201346', 'Aluno Teste 13', '309207', '2023/2'),
(182, '18102881', 'Aluno Teste 143', '309207', '2023/2'),
(183, '20105153', 'Aluno Teste 115', '309212', '2023/2'),
(184, '18100871', 'Aluno Teste 127', '309221', '2023/2'),
(185, '18101407', 'Aluno Teste 134', '309212', '2023/2'),
(186, '20105018', 'Aluno Teste 114', '309191', '2023/2'),
(187, '15100197', 'Aluno Teste 2', '308403', '2023/2'),
(188, '18101181', 'Aluno Teste 129', '309221', '2023/2'),
(189, '16200953', 'Aluno Teste 7', '308212', '2023/2'),
(190, '18102739', 'Aluno Teste 140', '309212', '2023/2'),
(191, '18101276', 'Aluno Teste 132', '309212', '2023/2'),
(192, '18105023', 'Aluno Teste 147', '309191', '2023/2'),
(193, '16201301', 'Aluno Teste 9', '309155', '2023/2'),
(194, '18103930', 'Aluno Teste 146', '309199', '2023/2'),
(195, '18102810', 'Aluno Teste 141', '309221', '2023/2'),
(196, '18101250', 'Aluno Teste 131', '309199', '2023/2'),
(197, '18102598', 'Aluno Teste 16', '308434', '2023/2'),
(198, '18105076', 'Aluno Teste 149', '309207', '2023/2'),
(199, '19103739', 'Aluno Teste 50', '309207', '2023/2'),
(200, '17103708', 'Aluno Teste 10', '309154', '2023/2'),
(201, '18101206', 'Aluno Teste 130', '309221', '2023/2'),
(202, '18102598', 'Aluno Teste 16', '308454', '2023/2'),
(203, '18102814', 'Aluno Teste 142', '309212', '2023/2'),
(204, '19200513', 'Aluno Teste 59', '309191', '2023/2'),
(205, '20102973', 'Aluno Teste 86', '309212', '2023/2'),
(206, '20200512', 'Aluno Teste 101', '309191', '2023/2'),
(207, '18102655', 'Aluno Teste 138', '309151', '2023/2'),
(208, '18105072', 'Aluno Teste 148', '309212', '2023/2'),
(209, '18102596', 'Aluno Teste 136', '309191', '2023/2'),
(210, '18103459', 'Aluno Teste 145', '309199', '2023/2'),
(211, '18101299', 'Aluno Teste 133', '309212', '2023/2'),
(212, '15102080', 'Aluno Teste 3', '309151', '2023/2'),
(213, '18101179', 'Aluno Teste 128', '309212', '2023/2'),
(214, '18103162', 'Aluno Teste 144', '309207', '2023/2'),
(215, '18100871', 'Aluno Teste 127', '309212', '2023/2'),
(216, '18101407', 'Aluno Teste 134', '309223', '2023/2'),
(217, '18101181', 'Aluno Teste 129', '309207', '2023/2'),
(218, '18102739', 'Aluno Teste 140', '309223', '2023/2'),
(219, '18101276', 'Aluno Teste 132', '309223', '2023/2'),
(220, '18105023', 'Aluno Teste 147', '309203', '2023/2'),
(221, '18103930', 'Aluno Teste 146', '309221', '2023/2'),
(222, '18200013', 'Aluno Teste 150', '309151', '2023/2'),
(223, '18102810', 'Aluno Teste 141', '309212', '2023/2'),
(224, '18101250', 'Aluno Teste 131', '309221', '2023/2'),
(225, '18105076', 'Aluno Teste 149', '309221', '2023/2'),
(226, '18101206', 'Aluno Teste 130', '309207', '2023/2'),
(227, '18102814', 'Aluno Teste 142', '309223', '2023/2'),
(228, '18102727', 'Aluno Teste 139', '309191', '2023/2'),
(229, '18103459', 'Aluno Teste 145', '309221', '2023/2'),
(230, '17200781', 'Aluno Teste 12', '308376', '2023/2'),
(231, '18101179', 'Aluno Teste 128', '309223', '2023/2'),
(232, '18103162', 'Aluno Teste 144', '309221', '2023/2'),
(233, '18200056', 'Aluno Teste 151', '309145', '2023/2'),
(234, '20104580', 'Aluno Teste 97', '308212', '2023/2'),
(235, '20101522', 'Aluno Teste 79', '308212', '2023/2'),
(236, '20201171', 'Aluno Teste 112', '308212', '2023/2'),
(237, '20201954', 'Aluno Teste 117', '308212', '2023/2'),
(238, '20201190', 'Aluno Teste 113', '308212', '2023/2'),
(239, '20201955', 'Aluno Teste 118', '308212', '2023/2'),
(240, '20103001', 'Aluno Teste 88', '308376', '2023/2'),
(241, '20202025', 'Aluno Teste 123', '308213', '2023/2'),
(242, '20200514', 'Aluno Teste 103', '308213', '2023/2'),
(243, '20201956', 'Aluno Teste 119', '308212', '2023/2'),
(244, '20102946', 'Aluno Teste 84', '308376', '2023/2'),
(245, '20201079', 'Aluno Teste 108', '308214', '2023/2'),
(246, '20201038', 'Aluno Teste 106', '308376', '2023/2'),
(247, '20202045', 'Aluno Teste 124', '308214', '2023/2'),
(248, '19200690', 'Aluno Teste 186', '308384', '2023/2'),
(249, '19104346', 'Aluno Teste 52', '308403', '2023/2'),
(250, '19200784', 'Aluno Teste 62', '308383', '2023/2'),
(251, '20100601', 'Aluno Teste 73', '308212', '2023/2'),
(252, '18105072', 'Aluno Teste 148', '309199', '2023/2'),
(253, '19103739', 'Aluno Teste 50', '309203', '2023/2'),
(254, '19102195', 'Aluno Teste 177', '308384', '2023/2'),
(255, '19200625', 'Aluno Teste 60', '308383', '2023/2'),
(256, '20105241', 'Aluno Teste 116', '316934', '2023/2'),
(257, '19100521', 'Aluno Teste 32', '308403', '2023/2'),
(258, '20105153', 'Aluno Teste 115', '309199', '2023/2'),
(259, '19200866', 'Aluno Teste 64', '308383', '2023/2'),
(260, '18200823', 'Aluno Teste 162', '309147', '2023/2'),
(261, '19102617', 'Aluno Teste 38', '308403', '2023/2'),
(262, '19201877', 'Aluno Teste 70', '308383', '2023/2'),
(263, '19200801', 'Aluno Teste 63', '308383', '2023/2'),
(264, '19100474', 'Aluno Teste 29', '308212', '2023/2'),
(265, '19200833', 'Aluno Teste 187', '308384', '2023/2'),
(266, '19200617', 'Aluno Teste 185', '308384', '2023/2'),
(267, '19201409', 'Aluno Teste 67', '308383', '2023/2'),
(268, '19101706', 'Aluno Teste 35', '308434', '2023/2'),
(269, '19102268', 'Aluno Teste 36', '308434', '2023/2'),
(270, '19200177', 'Aluno Teste 57', '308383', '2023/2'),
(271, '19103067', 'Aluno Teste 43', '308456', '2023/2'),
(272, '19200198', 'Aluno Teste 58', '308383', '2023/2'),
(273, '19103188', 'Aluno Teste 45', '308454', '2023/2'),
(274, '19100526', 'Aluno Teste 33', '308456', '2023/2'),
(275, '19100476', 'Aluno Teste 31', '308403', '2023/2'),
(276, '19103039', 'Aluno Teste 40', '308454', '2023/2'),
(277, '19102880', 'Aluno Teste 39', '308456', '2023/2'),
(278, '19100545', 'Aluno Teste 34', '308439', '2023/2'),
(279, '19100475', 'Aluno Teste 30', '308403', '2023/2'),
(280, '19103533', 'Aluno Teste 49', '308434', '2023/2'),
(281, '19103050', 'Aluno Teste 41', '308454', '2023/2'),
(282, '19104799', 'Aluno Teste 53', '308456', '2023/2'),
(283, '19101706', 'Aluno Teste 35', '308454', '2023/2'),
(284, '19102268', 'Aluno Teste 36', '308454', '2023/2'),
(285, '19200196', 'Aluno Teste 179', '308384', '2023/2'),
(286, '19103166', 'Aluno Teste 44', '308403', '2023/2'),
(287, '19200231', 'Aluno Teste 181', '308384', '2023/2'),
(288, '19103404', 'Aluno Teste 46', '308403', '2023/2'),
(289, '19100527', 'Aluno Teste 176', '308384', '2023/2'),
(290, '19100476', 'Aluno Teste 31', '308439', '2023/2'),
(291, '19103050', 'Aluno Teste 41', '308403', '2023/2'),
(292, '19103039', 'Aluno Teste 40', '308403', '2023/2'),
(293, '19100545', 'Aluno Teste 34', '308456', '2023/2'),
(294, '19100475', 'Aluno Teste 30', '308434', '2023/2'),
(295, '18200747', 'Aluno Teste 158', '309155', '2023/2'),
(296, '18200110', 'Aluno Teste 155', '309157', '2023/2'),
(297, '18200824', 'Aluno Teste 163', '309147', '2023/2'),
(298, '20103687', 'Aluno Teste 96', '309268', '2023/2'),
(299, '18200157', 'Aluno Teste 156', '309157', '2023/2'),
(300, '18201183', 'Aluno Teste 173', '309151', '2023/2'),
(301, '18201109', 'Aluno Teste 172', '309157', '2023/2'),
(302, '18201045', 'Aluno Teste 169', '309157', '2023/2'),
(303, '18200108', 'Aluno Teste 154', '309147', '2023/2'),
(304, '18200110', 'Aluno Teste 155', '309154', '2023/2'),
(305, '18200857', 'Aluno Teste 165', '309155', '2023/2'),
(306, '18201145', 'Aluno Teste 22', '308213', '2023/2'),
(307, '18200857', 'Aluno Teste 165', '309151', '2023/2'),
(308, '18200853', 'Aluno Teste 164', '309155', '2023/2'),
(309, '18200739', 'Aluno Teste 157', '309147', '2023/2'),
(310, '19103054', 'Aluno Teste 400', '308403', '2023/2'),
(311, '14200737', 'Aluno Teste 1', '308403', '2023/2'),
(312, '18200821', 'Aluno Teste 160', '309145', '2023/2'),
(313, '18201098', 'Aluno Teste 171', '309157', '2023/2'),
(314, '18200824', 'Aluno Teste 163', '309154', '2023/2'),
(315, '18200747', 'Aluno Teste 158', '309151', '2023/2'),
(316, '19105179', 'Aluno Teste 54', '308403', '2023/2'),
(317, '18200157', 'Aluno Teste 156', '309147', '2023/2'),
(318, '19103533', 'Aluno Teste 49', '308454', '2023/2'),
(319, '18201098', 'Aluno Teste 171', '309154', '2023/2'),
(320, '18201109', 'Aluno Teste 172', '309154', '2023/2'),
(321, '18200821', 'Aluno Teste 160', '309155', '2023/2'),
(322, '18201741', 'Aluno Teste 23', '308403', '2023/2'),
(323, '14200737', 'Aluno Teste 1', '309155', '2023/2'),
(324, '18200853', 'Aluno Teste 164', '309151', '2023/2'),
(325, '18200108', 'Aluno Teste 154', '309154', '2023/2'),
(326, '18200739', 'Aluno Teste 157', '309157', '2023/2'),
(327, '18201045', 'Aluno Teste 169', '309154', '2023/2'),
(328, '18201183', 'Aluno Teste 173', '309145', '2023/2'),
(329, '18102881', 'Aluno Teste 143', '309221', '2023/2'),
(330, '20105153', 'Aluno Teste 115', '309223', '2023/2'),
(331, '20105018', 'Aluno Teste 114', '309203', '2023/2'),
(332, '15100197', 'Aluno Teste 2', '308434', '2023/2'),
(333, '16200953', 'Aluno Teste 7', '308213', '2023/2'),
(334, '15102080', 'Aluno Teste 3', '309155', '2023/2'),
(335, '16201301', 'Aluno Teste 9', '309151', '2023/2'),
(336, '19103739', 'Aluno Teste 50', '309268', '2023/2'),
(337, '17200428', 'Aluno Teste 11', '308384', '2023/2'),
(338, '18102654', 'Aluno Teste 137', '309191', '2023/2'),
(339, '19200513', 'Aluno Teste 59', '309203', '2023/2'),
(340, '20102973', 'Aluno Teste 86', '309223', '2023/2'),
(341, '20200512', 'Aluno Teste 101', '309203', '2023/2'),
(342, '18105072', 'Aluno Teste 148', '309223', '2023/2'),
(343, '18102596', 'Aluno Teste 136', '309203', '2023/2'),
(344, '18101299', 'Aluno Teste 133', '309223', '2023/2'),
(345, '15200280', 'Aluno Teste 4', '308384', '2023/2'),
(346, '18202280', 'Aluno Teste 25', '308376', '2023/2'),
(347, '18200105', 'Aluno Teste 152', '309154', '2023/2'),
(348, '18201045', 'Aluno Teste 169', '309147', '2023/2'),
(349, '17103708', 'Aluno Teste 10', '309157', '2023/2'),
(350, '19100463', 'Aluno Teste 28', '308439', '2023/2'),
(351, '18202055', 'Aluno Teste 25', '308212', '2023/2'),
(352, '18200951', 'Aluno Teste 168', '309145', '2023/2'),
(353, '18201098', 'Aluno Teste 171', '309147', '2023/2'),
(354, '19103739', 'Aluno Teste 50', '309191', '2023/2'),
(355, '18200822', 'Aluno Teste 161', '309154', '2023/2'),
(356, '18200107', 'Aluno Teste 153', '309154', '2023/2'),
(357, '18200824', 'Aluno Teste 163', '309157', '2023/2'),
(358, '18102739', 'Aluno Teste 140', '309199', '2023/2'),
(359, '17201346', 'Aluno Teste 13', '309268', '2023/2'),
(360, '18200056', 'Aluno Teste 151', '309155', '2023/2'),
(361, '18103162', 'Aluno Teste 144', '309268', '2023/2'),
(362, '18102739', 'Aluno Teste 140', '309269', '2023/2'),
(363, '17202738', 'Aluno Teste 15', '309203', '2023/2'),
(364, '20105018', 'Aluno Teste 114', '309221', '2023/2'),
(365, '19103739', 'Aluno Teste 50', '309223', '2023/2'),
(366, '20105018', 'Aluno Teste 114', '309207', '2023/2'),
(367, '18101206', 'Aluno Teste 130', '309268', '2023/2'),
(368, '20200512', 'Aluno Teste 101', '309221', '2023/2'),
(369, '18101250', 'Aluno Teste 131', '309207', '2023/2'),
(370, '20105153', 'Aluno Teste 115', '309269', '2023/2'),
(371, '19200513', 'Aluno Teste 59', '309207', '2023/2'),
(372, '18101209', 'Aluno Teste 14', '308383', '2023/2'),
(373, '19103739', 'Aluno Teste 50', '309191', '2023/2'),
(374, '18105023', 'Aluno Teste 147', '309212', '2023/2'),
(375, '18103930', 'Aluno Teste 146', '309212', '2023/2'),
(376, '18101250', 'Aluno Teste 131', '309268', '2023/2'),
(377, '19201007', 'Aluno Teste 66', '309191', '2023/2'),
(378, '15201769', 'Aluno Teste 5', '308383', '2023/2'),
(379, '18101276', 'Aluno Teste 132', '309269', '2023/2'),
(380, '18100871', 'Aluno Teste 127', '309191', '2023/2'),
(381, '17201346', 'Aluno Teste 13', '309191', '2023/2'),
(382, '18103930', 'Aluno Teste 146', '309269', '2023/2'),
(383, '18102814', 'Aluno Teste 142', '309269', '2023/2'),
(384, '18200913', 'Aluno Teste 167', '309147', '2023/2'),
(385, '18103459', 'Aluno Teste 145', '309207', '2023/2'),
(386, '18102810', 'Aluno Teste 141', '309191', '2023/2'),
(387, '18101299', 'Aluno Teste 133', '309191', '2023/2'),
(388, '20102973', 'Aluno Teste 86', '309269', '2023/2'),
(389, '16201165', 'Aluno Teste 8', '308403', '2023/2'),
(390, '20200512', 'Aluno Teste 101', '309207', '2023/2'),
(391, '18103459', 'Aluno Teste 145', '309268', '2023/2'),
(392, '18200056', 'Aluno Teste 151', '309151', '2023/2'),
(393, '18101179', 'Aluno Teste 128', '309269', '2023/2'),
(394, '18103171', 'Aluno Teste 17', '308212', '2023/2'),
(395, '18100871', 'Aluno Teste 127', '309199', '2023/2'),
(396, '20105018', 'Aluno Teste 114', '309268', '2023/2'),
(397, '19201007', 'Aluno Teste 66', '309203', '2023/2'),
(398, '18102810', 'Aluno Teste 141', '309199', '2023/2'),
(399, '18101299', 'Aluno Teste 133', '309199', '2023/2'),
(400, '18104926', 'Aluno Teste 19', '308376', '2023/2'),
(401, '18101276', 'Aluno Teste 132', '309191', '2023/2'),
(402, '15201769', 'Aluno Teste 5', '308403', '2023/2'),
(403, '18101250', 'Aluno Teste 131', '309191', '2023/2'),
(404, '19200513', 'Aluno Teste 59', '309268', '2023/2'),
(405, '16201301', 'Aluno Teste 9', '308403', '2023/2'),
(406, '20200512', 'Aluno Teste 101', '309268', '2023/2'),
(407, '18103467', 'Aluno Teste 18', '308383', '2023/2'),
(408, '19103739', 'Aluno Teste 50', '309203', '2023/2'),
(409, '18200101', 'Aluno Teste 20', '308212', '2023/2'),
(410, '18103459', 'Aluno Teste 145', '309191', '2023/2'),
(411, '18200866', 'Aluno Teste 166', '309145', '2023/2'),
(412, '20105241', 'Aluno Teste 116', '309199', '2023/2'),
(413, '18200157', 'Aluno Teste 156', '309154', '2023/2'),
(414, '18200819', 'Aluno Teste 159', '308384', '2023/2'),
(415, '18200853', 'Aluno Teste 164', '309145', '2023/2'),
(416, '18200128', 'Aluno Teste 21', '308213', '2023/2'),
(417, '18201109', 'Aluno Teste 172', '309147', '2023/2'),
(418, '18201145', 'Aluno Teste 22', '308212', '2023/2'),
(419, '18200821', 'Aluno Teste 160', '309151', '2023/2'),
(420, '18201741', 'Aluno Teste 23', '308434', '2023/2'),
(421, '14200737', 'Aluno Teste 1', '309151', '2023/2'),
(422, '18200857', 'Aluno Teste 165', '309145', '2023/2'),
(423, '18200110', 'Aluno Teste 155', '309147', '2023/2'),
(424, '18200739', 'Aluno Teste 157', '309154', '2023/2'),
(425, '18201051', 'Aluno Teste 170', '309147', '2023/2'),
(426, '18201183', 'Aluno Teste 173', '309155', '2023/2'),
(427, '18102881', 'Aluno Teste 143', '309268', '2023/2'),
(428, '18100871', 'Aluno Teste 127', '309269', '2023/2'),
(429, '18101407', 'Aluno Teste 134', '309269', '2023/2'),
(430, '18101181', 'Aluno Teste 129', '309268', '2023/2'),
(431, '18105023', 'Aluno Teste 147', '309223', '2023/2'),
(432, '20103590', 'Aluno Teste 94', '309191', '2023/2'),
(433, '18102810', 'Aluno Teste 141', '309269', '2023/2'),
(434, '18105076', 'Aluno Teste 149', '309268', '2023/2'),
(435, '20103687', 'Aluno Teste 96', '309191', '2023/2'),
(436, '18102654', 'Aluno Teste 137', '309199', '2023/2'),
(437, '18102881', 'Aluno Teste 143', '309191', '2023/2'),
(438, '18102727', 'Aluno Teste 139', '309199', '2023/2'),
(439, '18105072', 'Aluno Teste 148', '309269', '2023/2'),
(440, '18102596', 'Aluno Teste 136', '309212', '2023/2'),
(441, '18101299', 'Aluno Teste 133', '309269', '2023/2'),
(442, '18101181', 'Aluno Teste 129', '309191', '2023/2'),
(443, '18103162', 'Aluno Teste 144', '309191', '2023/2'),
(444, '18101179', 'Aluno Teste 128', '309191', '2023/2'),
(445, '18102516', 'Aluno Teste 135', '309155', '2023/2'),
(446, '18101206', 'Aluno Teste 130', '309191', '2023/2'),
(447, '19201007', 'Aluno Teste 66', '309207', '2023/2'),
(448, '20103590', 'Aluno Teste 94', '309203', '2023/2'),
(449, '18102814', 'Aluno Teste 142', '309191', '2023/2'),
(450, '18200013', 'Aluno Teste 150', '309145', '2023/2'),
(451, '20103687', 'Aluno Teste 96', '309203', '2023/2'),
(452, '18103162', 'Aluno Teste 144', '309199', '2023/2'),
(453, '18102596', 'Aluno Teste 136', '309223', '2023/2'),
(454, '18101407', 'Aluno Teste 134', '309191', '2023/2'),
(455, '18102727', 'Aluno Teste 139', '309221', '2023/2'),
(456, '19103739', 'Aluno Teste 50', '309221', '2023/2'),
(457, '19200513', 'Aluno Teste 59', '309223', '2023/2'),
(458, '18105076', 'Aluno Teste 149', '309191', '2023/2'),
(459, '18101206', 'Aluno Teste 130', '309199', '2023/2'),
(460, '18101179', 'Aluno Teste 128', '309199', '2023/2'),
(461, '18102516', 'Aluno Teste 135', '309191', '2023/2'),
(462, '18102654', 'Aluno Teste 137', '309212', '2023/2'),
(463, '18105023', 'Aluno Teste 147', '309269', '2023/2'),
(464, '20103590', 'Aluno Teste 94', '309212', '2023/2'),
(465, '18102881', 'Aluno Teste 143', '309199', '2023/2'),
(466, '18102727', 'Aluno Teste 139', '309207', '2023/2'),
(467, '18105076', 'Aluno Teste 149', '309199', '2023/2'),
(468, '20103687', 'Aluno Teste 96', '309207', '2023/2'),
(469, '18200013', 'Aluno Teste 150', '309155', '2023/2'),
(470, '18102654', 'Aluno Teste 137', '309223', '2023/2'),
(471, '18101181', 'Aluno Teste 129', '309199', '2023/2'),
(472, '18101407', 'Aluno Teste 134', '309203', '2023/2'),
(473, '18102596', 'Aluno Teste 136', '309269', '2023/2'),
(474, '18102814', 'Aluno Teste 142', '309203', '2023/2'),
(475, '17200781', 'Aluno Teste 12', '308384', '2023/2');

-- --------------------------------------------------------

--
-- Table structure for table `servidores`
--

CREATE TABLE `servidores` (
  `id` int(11) NOT NULL,
  `cpf_servidor` varchar(50) NOT NULL,
  `nome_servidor` varchar(255) NOT NULL,
  `acessoUsuário` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(60, 'Clínica 1º Andar - Sul', 'Fulano', 987654, '2023-09-26', NULL, '1,4', 'Fosfato de zinco,Teste', '1,2', 'Solicitado', '0', NULL, NULL),
(61, 'Clínica 1º Andar - Sul', 'Beltrano', 123456, '2023-09-26', NULL, '11,1', 'rolo de algodão,Fosfato de zinco', '2,1', 'Solicitado', '0', NULL, NULL),
(62, 'Clínica Oeste', 'Fulano', 987654, '2023-09-26', NULL, '1,20', 'Fosfato de zinco,ionomero de vidro', '1,3', 'Solicitado', '0', NULL, NULL),
(63, 'Clínica Oeste', 'Beltrano', 123456, '2023-09-26', NULL, '20,19', 'ionomero de vidro,testedenovo', '3,2', 'Solicitado', '0', NULL, NULL),
(64, 'Clínica 4º Andar', 'Ciclano', 654321, '2023-09-26', NULL, '24,26', 'silicone de condensação,resina acrílica', '1,5', 'Solicitado', '0', NULL, NULL),
(65, 'Laboratórios pré-clínica', 'Ciclano', 654321, '2023-09-26', '2023-10-03', '24,26,23,22', 'silicone de condensação,resina acrílica,polieter,alginato', '1,5,2,2', 'Parcialmente atendido', '24,26,23,22', '1,5,2,2', 'Observação teste'),
(66, 'Clínica 1º Andar - Sul', 'Fulano', 987654, '2023-09-27', NULL, '7,5', 'teste3,teste2', '1,2', 'Solicitado', '0', NULL, NULL),
(67, 'Clínica Oeste', 'João da Silva', 321789, '2023-10-05', NULL, '3', 'Resina Composta cor A1', '1', 'Solicitado', NULL, NULL, NULL),
(68, 'Clínica Oeste', 'João da Silva', 321789, '2023-10-05', NULL, '2,3,21,22', 'Resina Acrílica,Resina Composta cor A1,fosfato de zinco,alginato', '3,1,2,1', 'Solicitado', NULL, NULL, NULL),
(69, 'Clínica 4º Andar', 'João da Silva', 321789, '2023-10-05', NULL, '1,17,13', 'Fosfato de zinco,testematerial,bbbbbbbbb', '1,2,2', 'Solicitado', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Matricula` varchar(255) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `Matricula`, `Nome`, `Tipo`) VALUES
(1, 'Triagem', 'Triagem', 'Triagem'),
(2, 'Mateus', 'Mateus', 'Administrador'),
(3, 'Administrador 1', 'Administrador 1', 'Administrador'),
(4, 'Enfermagem 1', 'Enfermagem 1', 'Enfermagem'),
(5, 'Enfermagem 2', 'Enfermagem 2', 'Enfermagem'),
(6, 'Enfermagem 3', 'Enfermagem 3', 'Enfermagem'),
(7, 'Enfermagem 4', 'Enfermagem 4', 'Enfermagem'),
(8, 'Enfermagem 5', 'Enfermagem 5', 'Enfermagem'),
(9, 'Triagem 1', 'Triagem 1', 'Triagem'),
(10, 'Triagem 2', 'Triagem 2', 'Triagem'),
(11, 'Triagem 3', 'Triagem 3', 'Triagem'),
(12, 'Triagem 4', 'Triagem 4', 'Triagem'),
(13, 'Triagem 5', 'Triagem 5', 'Triagem'),
(14, 'Responsavel 1', 'Responsavel 1', 'Responsavel'),
(15, 'Responsavel 2', 'Responsavel 2', 'Responsavel'),
(16, 'Responsavel 3', 'Responsavel 3', 'Responsavel'),
(17, 'Responsavel 4', 'Responsavel 4', 'Responsavel'),
(18, 'Responsavel 5', 'Responsavel 5', 'Responsavel'),
(19, 'Responsavel 6', 'Responsavel 6', 'Responsavel'),
(20, 'Responsavel 7', 'Responsavel 7', 'Responsavel'),
(21, 'Responsavel 8', 'Responsavel 8', 'Responsavel'),
(22, 'Responsavel 9', 'Responsavel 9', 'Responsavel'),
(23, 'Responsavel 10', 'Responsavel 10', 'Responsavel'),
(24, '14200737', 'Aluno Teste 1', 'Aluno'),
(25, '15100197', 'Aluno Teste 2', 'Aluno'),
(26, '15102080', 'Aluno Teste 3', 'Aluno'),
(27, '15200280', 'Aluno Teste 4', 'Aluno'),
(28, '15201769', 'Aluno Teste 5', 'Aluno'),
(29, '16200568', 'Aluno Teste 6', 'Aluno'),
(30, '16200953', 'Aluno Teste 7', 'Aluno'),
(31, '16201165', 'Aluno Teste 8', 'Aluno'),
(32, '16201301', 'Aluno Teste 9', 'Aluno'),
(33, '17103708', 'Aluno Teste 10', 'Aluno'),
(34, '17200428', 'Aluno Teste 11', 'Aluno'),
(35, '17200781', 'Aluno Teste 12', 'Aluno'),
(36, '17201346', 'Aluno Teste 13', 'Aluno'),
(37, '18101209', 'Aluno Teste 14', 'Aluno'),
(38, '17202738', 'Aluno Teste 15', 'Aluno'),
(39, '18102598', 'Aluno Teste 16', 'Aluno'),
(40, '18103171', 'Aluno Teste 17', 'Aluno'),
(41, '18103467', 'Aluno Teste 18', 'Aluno'),
(42, '18104926', 'Aluno Teste 19', 'Aluno'),
(43, '18200101', 'Aluno Teste 20', 'Aluno'),
(44, '18200128', 'Aluno Teste 21', 'Aluno'),
(45, '18201145', 'Aluno Teste 22', 'Aluno'),
(46, '18201741', 'Aluno Teste 23', 'Aluno'),
(47, '18202052', 'Aluno Teste 24', 'Aluno'),
(48, '18202055', 'Aluno Teste 25', 'Aluno'),
(49, '18202280', 'Aluno Teste 26', 'Aluno'),
(50, '19100431', 'Aluno Teste 27', 'Aluno'),
(51, '19100463', 'Aluno Teste 28', 'Aluno'),
(52, '19100474', 'Aluno Teste 29', 'Aluno'),
(53, '19100475', 'Aluno Teste 30', 'Aluno'),
(54, '19100476', 'Aluno Teste 31', 'Aluno'),
(55, '19100521', 'Aluno Teste 32', 'Aluno'),
(56, '19100526', 'Aluno Teste 33', 'Aluno'),
(57, '19100545', 'Aluno Teste 34', 'Aluno'),
(58, '19101706', 'Aluno Teste 35', 'Aluno'),
(59, '19102268', 'Aluno Teste 36', 'Aluno'),
(60, '19102280', 'Aluno Teste 37', 'Aluno'),
(61, '19102617', 'Aluno Teste 38', 'Aluno'),
(62, '19102880', 'Aluno Teste 39', 'Aluno'),
(63, '19103039', 'Aluno Teste 40', 'Aluno'),
(64, '19103050', 'Aluno Teste 41', 'Aluno'),
(65, '19103054', 'Aluno Teste 400', 'Aluno'),
(66, '19103055', 'Aluno Teste 42', 'Aluno'),
(67, '19103067', 'Aluno Teste 43', 'Aluno'),
(68, '19103166', 'Aluno Teste 44', 'Aluno'),
(69, '19103188', 'Aluno Teste 45', 'Aluno'),
(70, '19103404', 'Aluno Teste 46', 'Aluno'),
(71, '19103407', 'Aluno Teste 47', 'Aluno'),
(72, '19103423', 'Aluno Teste 48', 'Aluno'),
(73, '19103533', 'Aluno Teste 49', 'Aluno'),
(74, '19103739', 'Aluno Teste 50', 'Aluno'),
(75, '19103744', 'Aluno Teste 51', 'Aluno'),
(76, '19104346', 'Aluno Teste 52', 'Aluno'),
(77, '19104799', 'Aluno Teste 53', 'Aluno'),
(78, '19105179', 'Aluno Teste 54', 'Aluno'),
(79, '19200157', 'Aluno Teste 55', 'Aluno'),
(80, '19200172', 'Aluno Teste 56', 'Aluno'),
(81, '19200177', 'Aluno Teste 57', 'Aluno'),
(82, '19200198', 'Aluno Teste 58', 'Aluno'),
(83, '19200513', 'Aluno Teste 59', 'Aluno'),
(84, '19200625', 'Aluno Teste 60', 'Aluno'),
(85, '19200672', 'Aluno Teste 61', 'Aluno'),
(86, '19200784', 'Aluno Teste 62', 'Aluno'),
(87, '19200801', 'Aluno Teste 63', 'Aluno'),
(88, '19200866', 'Aluno Teste 64', 'Aluno'),
(89, '19200872', 'Aluno Teste 65', 'Aluno'),
(90, '19201007', 'Aluno Teste 66', 'Aluno'),
(91, '19201409', 'Aluno Teste 67', 'Aluno'),
(92, '19201412', 'Aluno Teste 68', 'Aluno'),
(93, '19201427', 'Aluno Teste 69', 'Aluno'),
(94, '19201877', 'Aluno Teste 70', 'Aluno'),
(95, '19202075', 'Aluno Teste 71', 'Aluno'),
(96, '20100574', 'Aluno Teste 72', 'Aluno'),
(97, '20100601', 'Aluno Teste 73', 'Aluno'),
(98, '20100629', 'Aluno Teste 74', 'Aluno'),
(99, '20100648', 'Aluno Teste 75', 'Aluno'),
(100, '20100728', 'Aluno Teste 76', 'Aluno'),
(101, '20100757', 'Aluno Teste 77', 'Aluno'),
(102, '20101175', 'Aluno Teste 78', 'Aluno'),
(103, '20101522', 'Aluno Teste 79', 'Aluno'),
(104, '20101628', 'Aluno Teste 80', 'Aluno'),
(105, '20101684', 'Aluno Teste 81', 'Aluno'),
(106, '20102005', 'Aluno Teste 82', 'Aluno'),
(107, '20102917', 'Aluno Teste 83', 'Aluno'),
(108, '20102946', 'Aluno Teste 84', 'Aluno'),
(109, '20102959', 'Aluno Teste 85', 'Aluno'),
(110, '20102973', 'Aluno Teste 86', 'Aluno'),
(111, '20103001', 'Aluno Teste 87', 'Aluno'),
(112, '20103009', 'Aluno Teste 88', 'Aluno'),
(113, '20103079', 'Aluno Teste 89', 'Aluno'),
(114, '20103131', 'Aluno Teste 90', 'Aluno'),
(115, '20103546', 'Aluno Teste 91', 'Aluno'),
(116, '20103575', 'Aluno Teste 92', 'Aluno'),
(117, '20103586', 'Aluno Teste 93', 'Aluno'),
(118, '20103590', 'Aluno Teste 94', 'Aluno'),
(119, '20103643', 'Aluno Teste 95', 'Aluno'),
(120, '20103687', 'Aluno Teste 96', 'Aluno'),
(121, '20104580', 'Aluno Teste 97', 'Aluno'),
(122, '20104756', 'Aluno Teste 98', 'Aluno'),
(123, '20104770', 'Aluno Teste 99', 'Aluno'),
(124, '20200511', 'Aluno Teste 100', 'Aluno'),
(125, '20200512', 'Aluno Teste 101', 'Aluno'),
(126, '20200513', 'Aluno Teste 102', 'Aluno'),
(127, '20200514', 'Aluno Teste 103', 'Aluno'),
(128, '20200587', 'Aluno Teste 104', 'Aluno'),
(129, '20200709', 'Aluno Teste 105', 'Aluno'),
(130, '20201038', 'Aluno Teste 106', 'Aluno'),
(131, '20201047', 'Aluno Teste 107', 'Aluno'),
(132, '20201079', 'Aluno Teste 108', 'Aluno'),
(133, '20201080', 'Aluno Teste 109', 'Aluno'),
(134, '20201089', 'Aluno Teste 110', 'Aluno'),
(135, '20201106', 'Aluno Teste 111', 'Aluno'),
(136, '20201171', 'Aluno Teste 112', 'Aluno'),
(137, '20201190', 'Aluno Teste 113', 'Aluno'),
(138, '20105018', 'Aluno Teste 114', 'Aluno'),
(139, '20105153', 'Aluno Teste 115', 'Aluno'),
(140, '20105241', 'Aluno Teste 116', 'Aluno'),
(141, '20201954', 'Aluno Teste 117', 'Aluno'),
(142, '20201955', 'Aluno Teste 118', 'Aluno'),
(143, '20201956', 'Aluno Teste 119', 'Aluno'),
(144, '20201957', 'Aluno Teste 120', 'Aluno'),
(145, '20201959', 'Aluno Teste 121', 'Aluno'),
(146, '20201988', 'Aluno Teste 122', 'Aluno'),
(147, '20202025', 'Aluno Teste 123', 'Aluno'),
(148, '20202045', 'Aluno Teste 124', 'Aluno'),
(149, '20202078', 'Aluno Teste 125', 'Aluno'),
(150, '20202091', 'Aluno Teste 126', 'Aluno'),
(151, '19200272', 'Aluno Teste 182', 'Aluno'),
(152, '19201010', 'Aluno Teste 401', 'Aluno'),
(153, '19200599', 'Aluno Teste 183', 'Aluno'),
(154, '19200609', 'Aluno Teste 184', 'Aluno'),
(155, '19200197', 'Aluno Teste 180', 'Aluno'),
(156, '19103461', 'Aluno Teste 178', 'Aluno'),
(157, '18201752', 'Aluno Teste 174', 'Aluno'),
(158, '18202279', 'Aluno Teste 175', 'Aluno'),
(159, '18102655', 'Aluno Teste 138', 'Aluno'),
(160, '19200690', 'Aluno Teste 186', 'Aluno'),
(161, '19102195', 'Aluno Teste 177', 'Aluno'),
(162, '18200823', 'Aluno Teste 162', 'Aluno'),
(163, '19200833', 'Aluno Teste 187', 'Aluno'),
(164, '19200617', 'Aluno Teste 185', 'Aluno'),
(165, '19200196', 'Aluno Teste 179', 'Aluno'),
(166, '19200231', 'Aluno Teste 181', 'Aluno'),
(167, '19100527', 'Aluno Teste 176', 'Aluno'),
(168, '18200747', 'Aluno Teste 158', 'Aluno'),
(169, '18200108', 'Aluno Teste 154', 'Aluno'),
(170, '18200105', 'Aluno Teste 152', 'Aluno'),
(171, '18201045', 'Aluno Teste 169', 'Aluno'),
(172, '18200951', 'Aluno Teste 168', 'Aluno'),
(173, '18201098', 'Aluno Teste 171', 'Aluno'),
(174, '18200822', 'Aluno Teste 161', 'Aluno'),
(175, '18200107', 'Aluno Teste 153', 'Aluno'),
(176, '18200824', 'Aluno Teste 163', 'Aluno'),
(177, '18102739', 'Aluno Teste 140', 'Aluno'),
(178, '18103930', 'Aluno Teste 146', 'Aluno'),
(179, '18200913', 'Aluno Teste 167', 'Aluno'),
(180, '18200056', 'Aluno Teste 151', 'Aluno'),
(181, '18101276', 'Aluno Teste 132', 'Aluno'),
(182, '18101250', 'Aluno Teste 131', 'Aluno'),
(183, '18103459', 'Aluno Teste 145', 'Aluno'),
(184, '18200866', 'Aluno Teste 166', 'Aluno'),
(185, '18200157', 'Aluno Teste 156', 'Aluno'),
(186, '18200819', 'Aluno Teste 159', 'Aluno'),
(187, '18200853', 'Aluno Teste 164', 'Aluno'),
(188, '18201109', 'Aluno Teste 172', 'Aluno'),
(189, '18200821', 'Aluno Teste 160', 'Aluno'),
(190, '18200857', 'Aluno Teste 165', 'Aluno'),
(191, '18200110', 'Aluno Teste 155', 'Aluno'),
(192, '18200739', 'Aluno Teste 157', 'Aluno'),
(193, '18201051', 'Aluno Teste 170', 'Aluno'),
(194, '18201183', 'Aluno Teste 173', 'Aluno'),
(195, '18100871', 'Aluno Teste 127', 'Aluno'),
(196, '18102810', 'Aluno Teste 141', 'Aluno'),
(197, '18105072', 'Aluno Teste 148', 'Aluno'),
(198, '18101299', 'Aluno Teste 133', 'Aluno'),
(199, '18103162', 'Aluno Teste 144', 'Aluno'),
(200, '18101206', 'Aluno Teste 130', 'Aluno'),
(201, '18101179', 'Aluno Teste 128', 'Aluno'),
(202, '18102516', 'Aluno Teste 135', 'Aluno'),
(203, '18102654', 'Aluno Teste 137', 'Aluno'),
(204, '18105023', 'Aluno Teste 147', 'Aluno'),
(205, '18102881', 'Aluno Teste 143', 'Aluno'),
(206, '18102727', 'Aluno Teste 139', 'Aluno'),
(207, '18105076', 'Aluno Teste 149', 'Aluno'),
(208, '18200013', 'Aluno Teste 150', 'Aluno'),
(209, '18101181', 'Aluno Teste 129', 'Aluno'),
(210, '18101407', 'Aluno Teste 134', 'Aluno'),
(211, '18102596', 'Aluno Teste 136', 'Aluno'),
(212, '18102814', 'Aluno Teste 142', 'Aluno');

-- --------------------------------------------------------

--
-- Table structure for table `vinculo_aluno_paciente`
--

CREATE TABLE `vinculo_aluno_paciente` (
  `id` int(11) NOT NULL,
  `id_demanda` varchar(255) NOT NULL,
  `CPF_paciente` varchar(255) NOT NULL,
  `Matricula_aluno` varchar(255) NOT NULL,
  `Turma` varchar(255) NOT NULL,
  `Complexidade` varchar(255) NOT NULL,
  `Especialidade` varchar(255) NOT NULL,
  `Descrição` varchar(255) NOT NULL,
  `StatusVinculo` varchar(255) NOT NULL,
  `inicioVinculo` date DEFAULT NULL,
  `fimVinculo` date DEFAULT NULL,
  `motivoDesvinculacao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vinculo_aluno_paciente`
--

INSERT INTO `vinculo_aluno_paciente` (`id`, `id_demanda`, `CPF_paciente`, `Matricula_aluno`, `Turma`, `Complexidade`, `Especialidade`, `Descrição`, `StatusVinculo`, `inicioVinculo`, `fimVinculo`, `motivoDesvinculacao`) VALUES
(43, '35', '112.289.390-63', '14200737', '308403', 'Média', 'Periodontia', 'Raspagem subgengival em todos os sextantes', 'Inativo', '2023-11-09', '2023-11-20', 'Encaminhamento'),
(45, '4', '112.289.390-63', '14200737', '308212', 'Média', 'Cirurgia', 'Exodontia do 38', 'Ativo', '2023-11-16', '2023-11-20', 'Encaminhamento'),
(54, '3', '555.666.777-88', '17200488', '316934', 'Média', 'Periodontia', 'Raspagem subgengival em todos os sextantes', 'Ativo', '2023-11-21', NULL, NULL),
(55, '30', '112.289.390-63', '17200488', '316934', 'Alta', 'Dentística', 'Teste voltar', 'Ativo', '2023-11-21', NULL, NULL),
(56, '1', '112.289.390-63', '18102814', '309269', 'Baixa', 'Prótese Dentária', 'Confeccção de PPR superior', 'Ativo', '2023-11-21', NULL, NULL),
(57, '5', '790.588.720-09', '20102917', '309269', 'Média', 'Prótese dentária', 'Coroa unitária no dente 24', 'Ativo', '2023-11-21', NULL, NULL),
(58, '4', '112.289.390-63', '20102917', '309203', 'Média', 'Cirurgia', 'Exodontia do 38', 'Ativo', '2023-11-21', NULL, NULL),
(59, '12', '555.666.777-88', '20102917', '309203', 'Média', 'Cirurgia', 'Dados atualizados de novo', 'Ativo', '2023-11-21', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda-clinicas`
--
ALTER TABLE `agenda-clinicas`
  ADD PRIMARY KEY (`id_agendamento`);

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arquivos`
--
ALTER TABLE `arquivos`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id_especialidade`);

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
-- Indexes for table `projetos`
--
ALTER TABLE `projetos`
  ADD PRIMARY KEY (`id_projeto`);

--
-- Indexes for table `regulacaointerna`
--
ALTER TABLE `regulacaointerna`
  ADD PRIMARY KEY (`id_regulacao`);

--
-- Indexes for table `relação_alunos_disciplinas`
--
ALTER TABLE `relação_alunos_disciplinas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `servidores`
--
ALTER TABLE `servidores`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `vinculo_aluno_paciente`
--
ALTER TABLE `vinculo_aluno_paciente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda-clinicas`
--
ALTER TABLE `agenda-clinicas`
  MODIFY `id_agendamento` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `avaliacoesatendimento`
--
ALTER TABLE `avaliacoesatendimento`
  MODIFY `id_avaliacao` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `encaminhamentos`
--
ALTER TABLE `encaminhamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `entrevista`
--
ALTER TABLE `entrevista`
  MODIFY `id_entrevista` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `entrevistaped`
--
ALTER TABLE `entrevistaped`
  MODIFY `id_entrevista` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id_especialidade` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `historicoatendimentos`
--
ALTER TABLE `historicoatendimentos`
  MODIFY `id_atendimentos` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `materiais`
--
ALTER TABLE `materiais`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `plano_tto`
--
ALTER TABLE `plano_tto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `projetos`
--
ALTER TABLE `projetos`
  MODIFY `id_projeto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `regulacaointerna`
--
ALTER TABLE `regulacaointerna`
  MODIFY `id_regulacao` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `relação_alunos_disciplinas`
--
ALTER TABLE `relação_alunos_disciplinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT for table `servidores`
--
ALTER TABLE `servidores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `solicitacao_materiais`
--
ALTER TABLE `solicitacao_materiais`
  MODIFY `id_solicitacao` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `vinculo_aluno_paciente`
--
ALTER TABLE `vinculo_aluno_paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

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
