-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Out-2023 às 04:18
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `id21352215_gestaosaude`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
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
-- Extraindo dados da tabela `disciplinas`
--

INSERT INTO `disciplinas` (`id`, `cod_atividade`, `atividade`, `cod_turma`, `matriculas_vagas`, `nr_matricula_especial`, `nr_total_matricula`, `nr_total_vagas`) VALUES
(307682, '12000473', 'BIOQUÍMICA', 'M1', '400 - Odontologia (25 / 25)', '0', '25', '25'),
(307684, '12000473', 'BIOQUÍMICA', 'M2', '400 - Odontologia (21 / 25)', '0', '21', '25'),
(307687, '09040011', 'ANATOMIA HUMANA GERAL', 'M1', '400 - Odontologia (26 / 26)', '0', '26', '26'),
(307689, '09040011', 'ANATOMIA HUMANA GERAL', 'M2', '400 - Odontologia (25 / 25)', '0', '25', '25'),
(307699, '09020064', 'FISIOLOGIA GERAL E APLICADA I', 'M1', '400 - Odontologia (48 / 50)', '2', '50', '50'),
(307704, '09040049', 'HISTOLOGIA GERAL', 'M1', '400 - Odontologia (51 / 60)', '1', '52', '60'),
(307713, '09040050', 'ANATOMIA HUMANA DA CABEÇA E PESCOÇO', 'M1', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(307715, '09040050', 'ANATOMIA HUMANA DA CABEÇA E PESCOÇO', 'M2', '400 - Odontologia (22 / 23)', '0', '22', '23'),
(307718, '09020065', 'FISIOLOGIA GERAL E APLICADA II', 'M1', '400 - Odontologia (46 / 47)', '1', '47', '47'),
(307728, '09050098', 'GENÉTICA HUMANA', 'M1', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(307730, '09050098', 'GENÉTICA HUMANA', 'M2', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(307736, '03470009', 'METODOLOGIA DO APRENDIZADO E DA PESQUISA EM ODONTOLOGIA', 'M1', '400 - Odontologia (46 / 46)', '0', '46', '46'),
(307743, '09030074', 'MICROBIOLOGIA E IMUNOLOGIA PARA ODONTOLOGIA', 'M1', '400 - Odontologia (19 / 23)', '0', '19', '23'),
(307748, '09030074', 'MICROBIOLOGIA E IMUNOLOGIA PARA ODONTOLOGIA', 'M2', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(307750, '09040051', 'HISTOLOGIA BUCAL E EMBRIOLOGIA', 'M2', '400 - Odontologia (44 / 46)', '0', '44', '46'),
(307754, '03470001', 'PATOLOGIA GERAL', 'M1', '400 - Odontologia (17 / 17)', '0', '17', '17'),
(307758, '03470001', 'PATOLOGIA GERAL', 'M4', '400 - Odontologia (14 / 17)', '0', '14', '17'),
(307762, '03470001', 'PATOLOGIA GERAL', 'M2', '400 - Odontologia (17 / 17)', '0', '17', '17'),
(307765, '03470001', 'PATOLOGIA GERAL', 'M3', '400 - Odontologia (2 / 17)', '0', '2', '17'),
(307776, '03470005', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO I', 'M1', '400 - Odontologia (6 / 17)', '0', '6', '17'),
(307777, '03470005', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO I', 'M2', '400 - Odontologia (10 / 17)', '0', '10', '17'),
(307784, '03470005', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO I', 'M3', '400 - Odontologia (8 / 17)', '0', '8', '17'),
(307785, '03470005', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO I', 'M4', '400 - Odontologia (8 / 17)', '0', '8', '17'),
(307787, '03480006', 'UNIDADE PRÉ-CLÍNICA I', 'M1', '400 - Odontologia (21 / 23)', '0', '21', '23'),
(307788, '03480006', 'UNIDADE PRÉ-CLÍNICA I', 'M2', '400 - Odontologia (19 / 23)', '0', '19', '23'),
(307797, '09020002', 'FARMACOLOGIA', 'M1', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(307799, '09020002', 'FARMACOLOGIA', 'M2', '400 - Odontologia (17 / 23)', '0', '17', '23'),
(307801, '09050001', 'GENÉTICA E EVOLUÇÃO', 'M1', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(307803, '09050001', 'GENÉTICA E EVOLUÇÃO', 'M2', '400 - Odontologia (18 / 23)', '0', '18', '23'),
(308161, '03470007', 'ESTÁGIO OBSERVACIONAL ROTATÓRIO', 'P1', '400 - Odontologia (11 / 17)', '0', '11', '17'),
(308162, '03470007', 'ESTÁGIO OBSERVACIONAL ROTATÓRIO', 'P2', '400 - Odontologia (14 / 17)', '0', '14', '17'),
(308163, '03470007', 'ESTÁGIO OBSERVACIONAL ROTATÓRIO', 'P3', '400 - Odontologia (17 / 17)', '0', '17', '17'),
(308164, '03470007', 'ESTÁGIO OBSERVACIONAL ROTATÓRIO', 'P4', '400 - Odontologia (17 / 17)', '0', '17', '17'),
(308166, '03480003', 'UNIDADE PRÉ-CLINICA II', 'M1', '400 - Odontologia (12 / 12)', '0', '12', '12'),
(308168, '03480003', 'UNIDADE PRÉ-CLINICA II', 'M2', '400 - Odontologia (12 / 12)', '0', '12', '12'),
(308169, '03480003', 'UNIDADE PRÉ-CLINICA II', 'M3', '400 - Odontologia (8 / 12)', '0', '8', '12'),
(308170, '03480003', 'UNIDADE PRÉ-CLINICA II', 'M4', '400 - Odontologia (0 / 12)', '0', '0', '12'),
(308173, '03470002', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO II', 'M1', '400 - Odontologia (12 / 17)', '0', '12', '17'),
(308174, '03470002', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO II', 'M2', '400 - Odontologia (14 / 17)', '0', '14', '17'),
(308175, '03470002', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO II', 'M3', '400 - Odontologia (11 / 17)', '0', '11', '17'),
(308176, '03470002', 'UNIDADE DE DIAGNÓSTICO ESTOMATOLÓGICO II', 'M4', '400 - Odontologia (2 / 17)', '0', '2', '17'),
(308177, '03500001', 'UNIDADE SAÚDE BUCAL COLETIVA I', 'T1', '400 - Odontologia (36 / 66)', '0', '36', '66'),
(308178, '06730026', 'BIOÉTICA', 'T1', '400 - Odontologia (35 / 46)', '2', '37', '46'),
(308212, '03490001', 'UNIDADE DE CIRURGIA BMF I', 'M1', '400 - Odontologia (35 / 46)', '0', '35', '46'),
(308213, '03480007', 'UNIDADE CLÍNICA ODONTOLÓGICA I', 'M1', '400 - Odontologia (16 / 23)', '0', '16', '23'),
(308214, '03480007', 'UNIDADE CLÍNICA ODONTOLÓGICA I', 'M2', '400 - Odontologia (15 / 23)', '0', '15', '23'),
(308215, '03500002', 'UNIDADE SAÚDE BUCAL COLETIVA II', 'M1', '400 - Odontologia (36 / 46)', '0', '36', '46'),
(308376, '03490002', 'UNIDADE DE CIRURGIA BMF II', 'M1', '400 - Odontologia (25 / 46)', '0', '25', '46'),
(308379, '03500004', 'UNID. DE ORTODONTIA E ORTOPEDIA DOS MAX.', 'M1', '400 - Odontologia (23 / 23)', '0', '23', '23'),
(308381, '03500004', 'UNID. DE ORTODONTIA E ORTOPEDIA DOS MAX.', 'M2', '400 - Odontologia (4 / 23)', '0', '4', '23'),
(308382, '03500003', 'UNIDADE SAÚDE BUCAL COLETIVA III', 'M1', '400 - Odontologia (23 / 46)', '0', '23', '46'),
(308383, '03470006', 'UNIDADE CLÍNICA ODONTOLÓGICA II', 'M1', '400 - Odontologia (17 / 23)', '0', '17', '23'),
(308384, '03470006', 'UNIDADE CLÍNICA ODONTOLÓGICA II', 'M2', '400 - Odontologia (20 / 23)', '0', '20', '23'),
(308386, '03480004', 'UNIDADE PRÉ-CLINICA IV', 'M1', '400 - Odontologia (22 / 23)', '0', '22', '23'),
(308388, '03480004', 'UNIDADE PRÉ-CLINICA IV', 'M2', '400 - Odontologia (20 / 23)', '0', '20', '23'),
(308403, '03490003', 'UNIDADE DE CIRURGIA BMF III', 'M1', '400 - Odontologia (37 / 46)', '0', '37', '46'),
(308414, '03480005', 'UNIDADE DE PRÓTESE DENTÁRIA I', 'M1', '400 - Odontologia (8 / 23)', '0', '8', '23'),
(308417, '03480005', 'UNIDADE DE PRÓTESE DENTÁRIA I', 'M2', '400 - Odontologia (20 / 23)', '0', '20', '23'),
(308434, '03500006', 'UNIDADE DE CLÍNICA INFANTIL I', 'M1', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(308439, '03500006', 'UNIDADE DE CLÍNICA INFANTIL I', 'M2', '400 - Odontologia (15 / 18)', '0', '15', '18'),
(308454, '03470004', 'UNIDADE CLÍNICA ODONTOLÓGICA III', 'M1', '400 - Odontologia (13 / 33)', '0', '13', '33'),
(308456, '03470004', 'UNIDADE CLÍNICA ODONTOLÓGICA III', 'M2', '400 - Odontologia (15 / 33)', '0', '15', '33'),
(308458, '03500007', 'ODONTOLOGIA LEGAL E ORIENTAÇÃO PROFISSIONAL', 'T1', '400 - Odontologia (16 / 65)', '1', '17', '65'),
(309145, '03500013', 'UNIDADE DE CLÍNICA INFANTIL II', 'M1', '400 - Odontologia (12 / 16)', '0', '12', '16'),
(309147, '03500013', 'UNIDADE DE CLÍNICA INFANTIL II', 'M2', '400 - Odontologia (15 / 16)', '0', '15', '16'),
(309151, '03470008', 'ESTÁGIO EM CLÍNICA ODONTOLÓGICA I', 'P1', '400 - Odontologia (15 / 33)', '0', '15', '33'),
(309154, '03470008', 'ESTÁGIO EM CLÍNICA ODONTOLÓGICA I', 'P2', '400 - Odontologia (16 / 33)', '0', '16', '33'),
(309155, '03480008', 'UNIDADE DE PRÓTESE DENTÁRIA II', 'M1', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(309157, '03480008', 'UNIDADE DE PRÓTESE DENTÁRIA II', 'M2', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(309159, '03480013', 'TRABALHO DE CONCLUSÃO DE CURSO: PROJETO', 'P1', '400 - Odontologia (32 / 46)', '0', '32', '46'),
(309191, '03490004', 'UNID. TRAUMAT. PRÓTESE BUCO-MAXILO-FACIAL', 'M1', '400 - Odontologia (34 / 46)', '0', '34', '46'),
(309199, '03480009', 'UNIDADE DE PRÓTESE DENTÁRIA III', 'M1', '400 - Odontologia (18 / 18)', '0', '18', '18'),
(309203, '03480009', 'UNIDADE DE PRÓTESE DENTÁRIA III', 'M2', '400 - Odontologia (16 / 18)', '1', '17', '18'),
(309207, '03500012', 'ESTÁGIO EM CLÍNICA INFANTIL', 'P1', '400 - Odontologia (17 / 18)', '0', '17', '18'),
(309212, '03500012', 'ESTÁGIO EM CLÍNICA INFANTIL', 'P2', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(309218, '03480016', 'ESTÁGIO EM PESQUISA ODONTOLÓGICA II', 'P1', '400 - Odontologia (7 / 45)', '0', '7', '45'),
(309221, '03480010', 'ESTÁGIO SUPERVISIONADO EM ÁREA ESPECÍFICA I', 'P1', '400 - Odontologia (17 / 23)', '0', '17', '23'),
(309223, '03480010', 'ESTÁGIO SUPERVISIONADO EM ÁREA ESPECÍFICA I', 'P2', '400 - Odontologia (16 / 23)', '0', '16', '23'),
(309268, '03480014', 'ESTÁGIO EM CLÍNICA ODONTOLÓGICA II', 'P1', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(309269, '03480014', 'ESTÁGIO EM CLÍNICA ODONTOLÓGICA II', 'P2', '400 - Odontologia (16 / 18)', '0', '16', '18'),
(310705, '03470003', 'UNIDADE PRÉ-CLINICA III', 'M1', '400 - Odontologia (22 / 22)', '0', '22', '22'),
(316772, '03500008', 'ESTÁGIO EM SAÚDE BUCAL COLETIVA ', 'P99', '400 - Odontologia (1 / 1)', '0', '1', '1'),
(316829, '03470003', 'UNIDADE PRÉ-CLINICA III', 'M2', '400 - Odontologia (1 / 10)', '0', '1', '10');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
