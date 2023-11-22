-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22/11/2023 às 20:38
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

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
-- Estrutura para tabela `pacientes`
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
-- Despejando dados para a tabela `pacientes`
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


(15,	123.456.789-00,	'', '', 'Sofia Ramos da Silva', '', '12.345.678-9', '05/12/1990', '(11) 1234-5678', '','', 'sofia.ramos.silva@email.com'		1. Pai: Carlos Ramos / Mãe: Ana Silva	1. Rua das Flores, 123 - Bairro Felicidade - Cidade Alegre - Estado Feliz - CEP: 12345-678                                              Solteiro
(16,	987.654.321-01, '', '', 'Mateus Oliveira Costa',	'', '23.456.789-0', '18/07/1985','(22) 3456-7890', '', '', 'mateus.oliveira.costa@email.com'		2. Pai: Luiz Oliveira / Mãe: Maria Costa	2. Av. dos Pássaros, 456 - Bairro Vista Verde - Cidade Serena - Estado Tranquilo - CEP: 98765-432                                             Casado
(17,	234.567.890-12, '', '', 'Clara Rodrigues Almeida',	'', '34.567.890-1', '29/03/2000',	                          '(33) 4567-8901', 'clara.rodrigues.almeida@email.com'		3. Pai: Marcos Rodrigues / Mãe: Fernanda Almeida	3. Travessa das Estrelas, 789 - Bairro Harmonia - Cidade Paz - Estado Calmo - CEP: 54321-876                                              Solteiro
(18,	876.543.210-23, '', '', 'Lucas Pereira Santos',	'', '45.678.901-2', '14/09/1978',	                              '(44) 5678-9012', 'lucas.pereira.santos@email.com'		4. Pai: André Pereira / Mãe: Laura Santos	4. Rua das Árvores, 321 - Bairro Sol Nascente - Cidade Brilhante - Estado Radiante - CEP: 23456-789                                             Divorciado
(19,	345.678.901-34, '', '', 'Laura Ferreira Lima',	'', '56.789.012-3', '22/06/1995',	                              '(55) 6789-0123', 'laura.ferreira.lima@email.com'		5. Pai: Ricardo Ferreira / Mãe: Patricia Lima	5. Av. da Felicidade, 654 - Bairro Amanhecer - Cidade Esperança - Estado Encantado - CEP: 87654-321                                             Casado
(20,	210.987.654-45, '', '', 'Gabriel Sousa Castro',	'', '67.890.123-4', '30/11/1982',	                              '(66) 7890-1234', 'gabriel.sousa.castro@email.com'		6. Pai: Eduardo Sousa / Mãe: Carla Castro	6. Rua da Alegria, 987 - Bairro Harmonia - Cidade Serena - Estado Tranquilo - CEP: 13579-246                                              Solteiro
(21,	789.012.345-56, '', '', 'Julia Gomes Barbosa',	'', '78.901.234-5', '08/04/1993',	                              '(77) 8901-2345', 'julia.gomes.barbosa@email.com'		7. Pai: Fabio Gomes / Mãe: Paula Barbosa	7. Av. da Paz, 753 - Bairro Aurora - Cidade Serenidade - Estado Calmo - CEP: 98712-345                                              Viúvo
(22,	456.789.012-67, '', '', 'João Martins Fernandes',	'', '89.012.345-6', '19/10/1976',	                            '(88) 9012-3456', 'joao.martins.fernandes@email.com'		8. Pai: Roberto Martins / Mãe: Renata Fernandes	8. Travessa do Bem, 159 - Bairro Vida Nova - Cidade Esperança - Estado Radiante - CEP: 87612-543                                              Solteiro
(23,	901.234.567-78, '', '', 'Isabela Carvalho Mendes',	'', '90.123.456-7', '25/01/2005',	                          '(99) 1234-5678', 'isabela.carvalho.mendes@email.com'		9. Pai: Marcelo Carvalho / Mãe: Tatiana Mendes	9. Rua da Harmonia, 357 - Bairro Encanto - Cidade Serenidade - Estado Feliz - CEP: 23451-789                                              Casado
(24,	567.890.123-89, '', '', 'Pedro Alves Torres',	'', ' 01.234.567-8', '10/08/1998',	                              '(12) 2345-6789', 'pedro.alves.torres@email.com'		10. Pai: Fernando Alves / Mãe: Silvia Torres	10. Av. do Brilho, 753 - Bairro Sol Nascente - Cidade Radiante - Estado Encantado - CEP: 98765-123                                              Solteiro
(25,	432.109.876-90, '', '', 'Manuela Ribeiro Vieira',	'', ' 98.765.432-1', '03/05/1972',	                          '(21) 3456-7890', 'manuela.ribeiro.vieira@email.com'		11. Pai: Antonio Ribeiro / Mãe: Daniela Vieira	11. Rua da Tranquilidade, 951 - Bairro Vida Nova - Cidade Harmonia - Estado Calmo - CEP: 87654-321                                              Casado
(26,	789.123.456-01, '', '', 'Guilherme Cardoso Rodrigues',	'', ' 87.654.321-0', '21/12/1989',	                    '(32) 4567-8901', 'guilherme.cardoso.rodrigues@email.com'		12. Pai: Gabriel Cardoso / Mãe: Isabel Rodrigues	12. Travessa do Amor, 258 - Bairro Amanhecer - Cidade Paz - Estado Sereno - CEP: 54321-987                                              Divorciado
(27,	654.321.098-12, '', '', 'Alice Santos Oliveira',	'', ' 76.543.210-9', '07/09/2001',	                          '(43) 5678-9012', 'alice.santos.oliveira@email.com'		13. Pai: Paulo Santos / Mãe: Patricia Oliveira	13. Av. da Esperança, 654 - Bairro Aurora - Cidade Feliz - Estado Radiante - CEP: 23456-789                                             Solteiro
(28,	321.890.765-23, '', '', 'Rafael Ferreira Costa',	'', ' 65.432.109-8', '16/02/1987',	                          '(54) 6789-0123', 'rafael.ferreira.costa@email.com'		14. Pai: Bruno Ferreira / Mãe: Juliana Costa	14. Rua da Serenidade, 357 - Bairro Harmonia - Cidade Alegria - Estado Tranquilo - CEP: 87654-321                                             Casado
(29,	987.456.321-34, '', '', 'Giovanna Nunes Silva',	'', ' 54.321.098-7', '28/06/1996',	                            '(65) 7890-1234', 'giovanna.nunes.silva@email.com'		15. Pai: Gustavo Barbosa / Mãe: Raquel Carvalho	15. Av. do Sorriso, 753 - Bairro Vida Nova - Cidade Brilhante - Estado Encantado - CEP: 98765-432                                             Solteiro
(30,	654.901.876-45, '', '', 'Enzo Vieira Rodrigues',	'', ' 43.210.987-6', '12/11/1980',	                          '(76) 8901-2345', 'enzo.vieira.rodrigues@email.com'		16. Pai: Daniel Pereira / Mãe: Adriana Martins	16. Travessa da Alegria, 951 - Bairro Encanto - Cidade Paz - Estado Radiante - CEP: 54321-876                                             Viúvo
(31,	123.890.567-56, '', '', 'Valentina Lima Pereira',	'', ' 32.109.876-5', '01/03/1992',	                          '(87) 9012-3456', 'valentina.lima.pereira@email.com'		17. Pai: Jorge Lima / Mãe: Beatriz Nunes	17. Rua da Esperança, 258 - Bairro Serenidade - Cidade Felicidade - Estado Tranquilo - CEP: 23451-789                                             Solteiro
(32,	890.567.234-67, '', '', 'Miguel Fernandes Oliveira',	'', ' 21.098.765-4', '24/07/1974',	                      '(98) 1234-5678', 'miguel.fernandes.oliveira@email.com'		18. Pai: Cristiano Fernandes / Mãe: Vanessa Silva	18. Av. da Paz, 654 - Bairro Amanhecer - Cidade Serenidade - Estado Calmo - CEP: 87654-321                                              Casado
(33,	345.678.901-78, '', '', 'Helena Costa Almeida',	'', ' 10.987.654-3', '09/10/2003',	                            '(23) 2345-6789', 'helena.costa.almeida@email.com'		19. Pai: Rodrigo Oliveira / Mãe: Claudia Almeida	19. Rua do Brilho, 357 - Bairro Harmonia - Cidade Radiante - Estado Encantado - CEP: 98765-123                                              Solteiro
(34,	901.234.567-89, '', '', 'Leonardo Silva Santos',	'', ' 09.876.543-2', '05/05/1988',	                          '(31) 3456-7890', 'leonardo.silva.santos@email.com'		20. Pai: Vitor Silva / Mãe: Mariana Gomes	20. Travessa da Felicidade, 753 - Bairro Aurora - Cidade Esperança - Estado Sereno - CEP: 54321-987                                             Casado
(35,	678.901.234-90, '', '', 'Maria Eduarda Gomes', '', 'tins	21. 9', '5.432-1', '17/09/1997', 	                    (42), 'maria.eduarda.gomes.martins@email' 4567-8901		21. Pai: Diego Costa / Mãe: Natalia Martins	21. Av. da Alegria, 951 - Bairro Sol Nascente - Cidade Paz - Estado Radiante - CEP: 23456-789                                             Divorciado
(36,	456.789.012-01, '', '', 'Thiago Oliveira Rodrigues',	'', ' 87.654.321-0', '26/04/1979',	                      (53) 5678-9012, 'thiago.oliveira.rodrigues@email.com'		22. Pai: Mauro Torres / Mãe: Patricia Ferreira	22. Rua da Harmonia, 258 - Bairro Harmonia - Cidade Felicidade - Estado Tranquilo - CEP: 87654-321                                              Solteiro
(37,	234.567.890-12, '', '', 'Beatriz Torres Ferreira',	'', ' 76.543.210-9', '11/12/1991',	                        (64) 6789-0123, 'beatriz.torres.ferreira@email.com'		23. Pai: Ricardo Rodrigues / Mãe: Aline Sousa	23. Av. do Sorriso, 654 - Bairro Vida Nova - Cidade Brilhante - Estado Encantado - CEP: 98765-432                                             Casado
(38,	012.345.678-23, '', '', 'Daniel Rodrigues Sousa',	'', ' 65.432.109-8', '20/08/1975',	                          (75) 7890-1234, 'daniel.rodrigues.sousa@email.com'		24. Pai: Samuel Gomes / Mãe: Camila Lima	24. Travessa do Bem, 357 - Bairro Encanto - Cidade Serenidade - Estado Radiante - CEP: 54321-876                                              Solteiro
(39,	890.123.456-34, '', '', 'Larissa Almeida Gomes',	'', ' 54.321.098-7', '02/01/2004',	                          (86) 8901-2345, 'larissa.almeida.gomes@email.com'		25. Pai: Thiago Oliveira / Mãe: Larissa Barbosa	25. Rua da Felicidade, 753 - Bairro Harmonia - Cidade Alegria - Estado Tranquilo - CEP: 23451-789                                             Viúvo
(40,	678.901.234-45, '', '', 'Nicolas Castro Pereira',	'', ' 43.210.987-6', '15/06/1986',	                          (97) 9012-3456, 'nicolas.castro.pereira@email.com'		26. Pai: Jonas Martins / Mãe: Carla Almeida	26. Av. do Brilho, 951 - Bairro Sol Nascente - Cidade Radiante - Estado Encantado - CEP: 87654-321                                              Solteiro
(41,	456.789.012-56, '', '', 'Carolina Vieira Silva',	'', ' 32.109.876-5', '27/10/1999',	                          (34) 1234-5678, 'carolina.vieira.silva@email.com'		27. Pai: Leandro Carvalho / Mãe: Bruna Torres	27. Travessa da Paz, 258 - Bairro Vida Nova - Cidade Serenidade - Estado Calmo - CEP: 98765-123                                             Casado
(42,	234.567.890-67, '', '', 'Bruno Mendes Ramos',	'', ' 21.098.765-4', '04/03/1971',	                              (45) 2345-6789, 'bruno.mendes.ramos@email.com'		28. Pai: Joaquim Mendes / Mãe: Marisa Oliveira	28. Rua da Tranquilidade, 654 - Bairro Aurora - Cidade Paz - Estado Radiante - CEP: 54321-987                                             Solteiro
(43,	012.345.678-78, '', '', 'Mariana Costa Ferreira',	'', ' 10.987.654-3', '23/09/1983',	                          (52) 3456-7890, 'mariana.costa.ferreira@email.com'		29. Pai: Renato Barbosa / Mãe: Viviane Costa	29. Av. da Alegria, 357 - Bairro Amanhecer - Cidade Felicidade - Estado Tranquilo - CEP: 23456-789                                              Casado
(44,	890.123.456-89, '', '', 'Gustavo Barbosa Carvalho',	'', ' 09.876.543-2', '06/07/1994',	                        (63) 4567-8901, 'gustavo.barbosa.carvalho@email.com'		30. Pai: Marcos Carvalho / Mãe: Patricia Vieira	30. Rua do Bem, 753 - Bairro Harmonia - Cidade Serena - Estado Radiante - CEP: 87654-321                                              Divorciado
(45,	678.901.234-90, '', '', 'Antonella Martins Nunes',	'', ' 98.765.432-1', '13/11/1977',	                        (74) 5678-9012, 'antonella.martins.nunes@email.com'		31. Pai: Otavio Almeida / Mãe: Marcela Ramos	31. Av. da Paz, 951 - Bairro Vida Nova - Cidade Serenidade - Estado Calmo - CEP: 98765-432                                              Solteiro
(46,	456.789.012-01, '', '', 'Matheus Silva Oliveira',	'', ' 87.654.321-0', '31/05/1990',	                          (85) 6789-0123, 'matheus.silva.oliveira@email.com'		32. Pai: Lucas Lima / Mãe: Alice Fernandes	32. Travessa do Brilho, 258 - Bairro Encanto - Cidade Radiante - Estado Encantado - CEP: 54321-876                                              Casado
(47,	234.567.890-12, '', '', 'Sophia Alves Rodrigues',	'', ' 76.543.210-9', '09/02/2002',	                          (96) 7890-1234, 'sophia.alves.rodrigues@email.com'		33. Pai: Rafael Pereira / Mãe: Sandra Gomes	33. Rua da Felicidade, 654 - Bairro Harmonia - Cidade Alegria - Estado Tranquilo - CEP: 23451-789                                             Solteiro
(48,	012.345.678-23, '', '', 'Lucas Gomes Costa',	'', ' 65.432.109-8', ' 18/10/1984',	                              (41) 8901-2345, ' lucas.gomes.costa@email.com'		34. Pai: Miguel Barbosa / Mãe: Bianca Carvalho	34. Av. da Serenidade, 357 - Bairro Aurora - Cidade Felicidade - Estado Radiante - CEP: 87654-321                                             Viúvo
(49,	890.123.456-34, '', '', 'Isabella Ferreira Sousa',	'', ' 54.321.098-7', '29/04/1973',	                        (92) 9012-3456, 'isabella.ferreira.sousa@email.com'		35. Pai: Alex Fernandes / Mãe: Elisa Torres	35. Travessa do Sorriso, 753 - Bairro Vida Nova - Cidade Brilhante - Estado Encantado - CEP: 98765-123                                              Solteiro
(50,	678.901.234-45, '', '', 'Gabriel Pereira Martins',	'', ' 43.210.987-6', '07/08/1995',	                        (13) 1234-5678, 'gabriel.pereira.martins@email.com'		36. Pai: Felipe Nunes / Mãe: Luana Silva	36. Rua da Alegria, 951 - Bairro Sol Nascente - Cidade Radiante - Estado Sereno - CEP: 54321-987                                              Casado
(51,	456.789.012-56, '', '', 'Manuella Oliveira Lima',	'', ' 32.109.876-5', '22/01/1979',	                          (24) 2345-6789, ' manuella.oliveira.lima@email.com'		37. Pai: Pedro Oliveira / Mãe: Andreia Almeida	37. Av. da Harmonia, 258 - Bairro Harmonia - Cidade Felicidade - Estado Tranquilo - CEP: 23456-789                                              Solteiro
(52,	234.567.890-67, '', '', 'Felipe Santos Castro',	'', ' 21.098.765-4', '10/06/1988',	                            (35) 3456-7890, 'felipe.santos.castro@email.com'		38. Pai: Eduardo Costa / Mãe: Patricia Castro	38. Travessa do Brilho, 654 - Bairro Vida Nova - Cidade Radiante - Estado Encantado - CEP: 87654-321                                              Casado
(53,	012.345.678-78, '', '', 'Laura Costa Fernandes',	'', ' 10.987.654-3', '25/12/1971',	                          (46) 4567-8901, 'laura.costa.fernandes@email.com'		39. Pai: Douglas Silva / Mãe: Renata Martins	39. Rua da Paz, 357 - Bairro Encanto - Cidade Serenidade - Estado Radiante - CEP: 98765-432                                             Divorciado
(54,	890.123.456-89, '', '', 'Davi Vieira Ramos',	'', ' 09.876.543-2', '03/09/1996',	                              (57) 5678-9012, 'davi.vieira.ramos@email.com'		40. Pai: Victor Rodrigues / Mãe: Karina Sousa	40. Av. da Felicidade, 753 - Bairro Aurora - Cidade Esperança - Estado Calmo - CEP: 54321-876                                             Solteiro
(55,	678.901.234-90, '', '', 'Luiza Rodrigues Alves',	'', ' 98.765.432-1', '14/02/1974',	                          (68) 6789-0123, 'luiza.rodrigues.alves@email.com'		41. Pai: Alan Gomes / Mãe: Priscila Lima	41. Rua da Harmonia, 951 - Bairro Harmonia - Cidade Felicidade - Estado Tranquilo - CEP: 23456-789                                              Casado
(56,	456.789.012-01, '', '', 'Benjamin Mendes Gomes',	'', ' 87.654.321-0', '28/07/1983',	                          (79) 7890-1234, 'benjamin.mendes.gomes@email.com'		42. Pai: Carlos Barbosa / Mãe: Adriana Carvalho	42. Av. do Sorriso, 258 - Bairro Sol Nascente - Cidade Brilhante - Estado Encantado - CEP: 87654-321                                              Solteiro
(57,	234.567.890-12, '', '', 'Yasmin Torres Oliveira',	'', ' 76.543.210-9', '12/04/1999',	                          (91) 8901-2345, 'yasmin.torres.oliveira@email.com'		43. Pai: William Almeida / Mãe: Daiane Torres	43. Travessa da Paz, 654 - Bairro Vida Nova - Cidade Serenidade - Estado Radiante - CEP: 98765-123                                              Viúvo
(58,	012.345.678-23, '', '', 'João Pedro Silva', '', 'eida	44. 6', '2.109-8', '20/11/1976',	                        (14), 'joao.pedro.silva.almeida@email' 9012-3456		44. Pai: Roberto Ferreira / Mãe: Janaina Oliveira	44. Rua da Alegria, 357 - Bairro Harmonia - Cidade Paz - Estado Tranquilo - CEP: 54321-987                                              Solteiro
(59,	890.123.456-34, '', '', 'Eloá Ramos Costa',	'', ' 54.321.098-7', '01/05/1992',	                                (25) 1234-5678, 'eloa.ramos.costa@email.com'		45. Pai: Nelson Costa / Mãe: Flavia Vieira	45. Av. do Brilho, 753 - Bairro Aurora - Cidade Radiante - Estado Sereno - CEP: 23451-789                                             Casado
(60,	678.901.234-45, '', '', 'Leonardo Ferreira Martins',	'', '43.210.987-6', ' 16/09/1980',	                      (36) 2345-6789, 'leonardo.ferreira.martins@email.com'		46. Pai: Marcos Torres / Mãe: Patricia Mendes	46. Rua do Bem, 951 - Bairro Sol Nascente - Cidade Felicidade - Estado Tranquilo - CEP: 87654-321                                             Solteiro
(61,	456.789.012-56, '', '', 'Laura Oliveira Barbosa',	'', '32.109.876-5', ' 30/03/1987',	                          (47) 3456-7890, 'laura.oliveira.barbosa@email.com'		47. Pai: Caio Oliveira / Mãe: Vivian Ribeiro	47. Travessa da Tranquilidade, 258 - Bairro Vida Nova - Cidade Serenidade - Estado Radiante - CEP: 98765-432                                              Casado
(62,	234.567.890-67, '', '', 'Enzo Carvalho Pereira',	'', '21.098.765-4', ' 08/10/1975',	                          (58) 4567-8901, 'enzo.carvalho.pereira@email.com'		48. Pai: Rafael Sousa / Mãe: Carolina Silva	48. Av. da Paz, 654 - Bairro Encanto - Cidade Alegria - Estado Encantado - CEP: 54321-876                                             Divorciado
(63,	012.345.678-78, '', '', 'Valentina Almeida Nunes',	'', '10.987.654-3', ' 19/06/2000',	                        (69) 5678-9012, 'valentina.almeida.nunes@email.com'		49. Pai: Henrique Lima / Mãe: Priscila Fernandes	49. Rua da Esperança, 357 - Bairro Harmonia - Cidade Felicidade - Estado Tranquilo - CEP: 23456-789                                             Solteiro
(64,	890.123.456-89, '', '', 'Miguel Costa Rodrigues',	'', '09.876.543-2', ' 05/12/1989',	                          (82) 6789-0123, 'miguel.costa.rodrigues@email.com'		50. Pai: Lucas Carvalho / Mãe: Mariana Gomes	50. Av. da Serenidade, 753 - Bairro Aurora - Cidade Serenidade - Estado Radiante - CEP: 87654-321                                             Casado
(65,	678.901.234-90, '', '', 'Helena Gomes Silva',	'', '98.765.432-1', ' 18/07/1972',	                              (93) 7890-1234, 'helena.gomes.silva@email.com'		51. Pai: Diego Pereira / Mãe: Amanda Nunes	51. Travessa da Harmonia, 951 - Bairro Vida Nova - Cidade Paz - Estado Calmo - CEP: 98765-123                                             Solteiro
(66,	456.789.012-01, '', '', 'Theo Pereira Fernandes',	'', '87.654.321-0', ' 29/03/1998',	                          (15) 8901-2345, 'theo.pereira.fernandes@email.com'		52. Pai: Rodrigo Silva / Mãe: Renata Carvalho	52. Rua da Felicidade, 258 - Bairro Harmonia - Cidade Felicidade - Estado Tranquilo - CEP: 54321-987                                              Viúvo
(67,	234.567.890-12, '', '', 'Isabela Oliveira Torres',	'', ' 76.543.210-9', ' 14/09/1985',	                        (26) 9012-3456, 'isabela.oliveira.torres@email.com'		53. Pai: Gustavo Fernandes / Mãe: Valeria Torres	53. Av. do Brilho, 654 - Bairro Sol Nascente - Cidade Radiante - Estado Encantado - CEP: 23456-789                                              Solteiro
(68,	012.345.678-23, '', '', 'Gabriel Lima Gomes',	'', ' 65.432.109-8', ' 22/06/1977',	                              (37) 1234-5678, 'gabriel.lima.gomes@email.com'		54. Pai: Bruno Almeida / Mãe: Letícia Martins	54. Travessa do Sorriso, 357 - Bairro Vida Nova - Cidade Brilhante - Estado Encantado - CEP: 87654-321                                              Casado
(69,	890.123.456-34, '', '', 'Amanda Fernandes Costa',	'', ' 54.321.098-7', ' 30/11/1993',	                          (48) 2345-6789, 'amanda.fernandes.costa@email.com'		55. Pai: Ricardo Ramos / Mãe: Camila Oliveira	55. Rua da Paz, 753 - Bairro Encanto - Cidade Serenidade - Estado Radiante - CEP: 98765-432                                             Solteiro
(70,	678.901.234-45, '', '', 'Arthur Barbosa Oliveira',	'', ' 43.210.987-6', ' 08/04/1982',	                        (59) 3456-7890, 'arthur.barbosa.oliveira@email.com'		56. Pai: Cesar Gomes / Mãe: Silvia Costa	56. Av. da Alegria, 951 - Bairro Aurora - Cidade Paz - Estado Calmo - CEP: 54321-876                                              Casado
(71,	456.789.012-56, '', '', 'Rafaela Martins Sousa',	'', ' 32.109.876-5', ' 19/10/1990',	                          (61) 4567-8901, 'rafaela.martins.sousa@email.com'		57. Pai: Marcelo Barbosa / Mãe: Patricia Carvalho	57. Rua da Esperança, 258 - Bairro Harmonia - Cidade Felicidade - Estado Tranquilo - CEP: 23456-789                                             Divorciado
(72,	234.567.890-67, '', '', 'Matheus Alves Costa',	'', ' 21.098.765-4', ' 25/01/1976',	                            (72) 5678-9012, 'matheus.alves.costa@email.com'		58. Pai: Roberto Oliveira / Mãe: Mariana Sousa	58. Av. do Brilho, 654 - Bairro Sol Nascente - Cidade Radiante - Estado Encantado - CEP: 87654-321                                              Solteiro
(73,	012.345.678-78, '', '', 'Maria Luiza Rodrigues', '', 'es	59. 1', '7.654-3',	'10/08/2001,'	                    (83), 'maria.luiza.rodrigues.nunes@email' 6789-0123		59. Pai: Fabio Torres / Mãe: Leticia Lima	59. Travessa da Paz, 357 - Bairro Vida Nova - Cidade Serenidade - Estado Radiante - CEP: 98765-123                                              Casado
(74,	890.123.456-89, '', '', 'Davi Costa Ferreira',	'', '09.876.543-2', ' 03/05/1995',	                            (94) 7890-1234, 'davi.costa.ferreira@email.com'		60. Pai: Marco Mendes / Mãe: Gabriela Barbosa	60. Rua da Harmonia, 753 - Bairro Harmonia - Cidade Felicidade - Estado Tranquilo - CEP: 54321-987                                              Solteiro
(75,	678.901.234-90, '', '', 'Giovanna Nunes Almeida',	'', '98.765.432-1', ' 21/12/1988',	                          (16) 8901-2345, 'giovanna.nunes.almeida@email.com'		61. Pai: Leonardo Vieira / Mãe: Ana Torres	61. Av. da Alegria, 951 - Bairro Aurora - Cidade Paz - Estado Calmo - CEP: 23456-789                                              Viúvo
(76,	456.789.012-01, '', '', 'Lucas Torres Gomes',	'', ' 87.654.321-0', ' 07/09/1974',	                              (27) 9012-3456, 'lucas.torres.gomes@email.com'		62. Pai: Diego Carvalho / Mãe: Fernanda Oliveira	62. Rua da Felicidade, 258 - Bairro Harmonia - Cidade Felicidade - Estado Tranquilo - CEP: 87654-321                                              Solteiro
(77,	234.567.890-12, '', '', 'Maria Clara Pereira', '', 'va	63. 7', '3.210-9',	'16/02/1996',	                      (38), 'maria.clara.pereira.silva@email' 1234-5678		63. Pai: Renan Gomes / Mãe: Camila Carvalho	63. Av. do Sorriso, 654 - Bairro Vida Nova - Cidade Brilhante - Estado Encantado - CEP: 98765-432                                             Casado
(78,	012.345.678-23, '', '', 'Leonardo Carvalho Fernandes',	'', ' 65.432.109-8', ' 28/06/1983',	                    (49) 2345-6789, 'leonardo.carvalho.fernandes@email.com'		64. Pai: Marcos Silva / Mãe: Beatriz Almeida	64. Travessa da Paz, 357 - Bairro Encanto - Cidade Serenidade - Estado Radiante - CEP: 54321-876                                              Solteiro
(79,	890.123.456-34, '', '', 'Maria Alice Gomes', '', 'ta	65. 5', '1.098-7',	'12/11/1979',	                        (62), 'maria.alice.gomes.costa@email' 3456-7890		65. Pai: Marcelo Sousa / Mãe: Priscila Fernandes	65. Rua do Brilho, 753 - Bairro Harmonia - Cidade Radiante - Estado Encantado - CEP: 23456-789                                              Casado
(80,	678.901.234-45, '', '', 'Enzo Oliveira Martins',	'', ' 43.210.987-6', ' 01/03/1992',	                          (73) 4567-8901, 'enzo.oliveira.martins@email.com'		66. Pai: Eduardo Lima / Mãe: Amanda Gomes	66. Av. da Alegria, 951 - Bairro Sol Nascente - Cidade Radiante - Estado Sereno - CEP: 87654-321                                              Divorciado
(81,	456.789.012-56, '', '', 'Laura Barbosa Almeida',	'', ' 32.109.876-5', ' 24/07/1984',	                          (84) 5678-9012, 'laura.barbosa.almeida@email.com'		67. Pai: Fabio Ribeiro / Mãe: Daniela Oliveira	67. Rua da Harmonia, 258 - Bairro Harmonia - Cidade Felicidade - Estado Tranquilo - CEP: 54321-987                                              Solteiro
(82,	234.567.890-67, '', '', 'Guilherme Rodrigues Santos',	'', ' 21.098.765-4', ' 09/10/1978',	                      (95) 6789-0123, 'guilherme.rodrigues.santos@email.com'		68. Pai: Thiago Castro / Mãe: Renata Costa	68. Av. do Sorriso, 654 - Bairro Vida Nova - Cidade Brilhante - Estado Encantado - CEP: 23456-789                                             Casado
(83,	012.345.678-78, '', '', 'Luiza Fernandes Torres',	'', ' 10.987.654-3', ' 05/05/1990',	                          (17) 7890-1234, 'luiza.fernandes.torres@email.com'		69. Pai: Andre Fernandes / Mãe: Mariana Carvalho	69. Travessa da Tranquilidade, 357 - Bairro Encanto - Cidade Serenidade - Estado Radiante - CEP: 98765-432                                              Solteiro
(84,	890.123.456-89, '', '', 'João Lucas Almeida', '', 'a	70. 0', '6.543-2',	'17/09/1971',   	                    (28), 'joao.lucas.almeida.lima@email' 8901-2345		70. Pai: Lucas Almeida / Mãe: Carolina Torres	70. Rua da Felicidade, 753 - Bairro Harmonia - Cidade Alegria - Estado Tranquilo - CEP: 54321-876                                             Viúvo
(85,	678.901.234-90, '', '', 'Maria Helena Costa', '', 'veira	71. 9', '5.432-1', '26/04/1997',	                    (39), 'maria.helena.costa.oliveira@email' 9012-3456		71. Pai: Cesar Oliveira / Mãe: Vanessa Mendes	71. Av. do Brilho, 951 - Bairro Sol Nascente - Cidade Radiante - Estado Sereno - CEP: 23456-789                                             Solteiro
(86,	456.789.012-01, '', '', 'Miguel Martins Gomes',	'', ' 87.654.321-0', ' 11/12/1986',	                            (51) 1234-5678, 'miguel.martins.gomes@email.com'		72. Pai: Daniel Torres / Mãe: Luana Barbosa	72. Travessa do Bem, 258 - Bairro Vida Nova - Cidade Serenidade - Estado Radiante - CEP: 87654-321                                              Casado
(87,	234.567.890-12, '', '', 'Beatriz Pereira Barbosa',	'', ' 76.543.210-9', ' 20/08/1972',	                        (63) 2345-6789, 'beatriz.pereira.barbosa@email.com'		73. Pai: Bruno Carvalho / Mãe: Juliana Vieira	73. Rua da Tranquilidade, 654 - Bairro Aurora - Cidade Paz - Estado Radiante - CEP: 98765-432                                             Solteiro
(88,	012.345.678-23, '', '', 'Bruno Silva Fernandes',	'', ' 65.432.109-8', ' 02/01/1999',	                          (74) 3456-7890, 'bruno.silva.fernandes@email.com'		74. Pai: Rodrigo Martins / Mãe: Beatriz Gomes	74. Av. da Esperança, 357 - Bairro Harmonia - Cidade Felicidade - Estado Tranquilo - CEP: 54321-987                                             Casado
(89,	890.123.456-34, '', '', 'Ana Clara Alves', '', 'ta	75. 5', '1.098-7',	'15/06/1984',	                          (85), 'ana.clara.alves.costa@email' 4567-8901		75. Pai: Marcos Silva / Mãe: Luciana Carvalho	75. Rua da Serenidade, 753 - Bairro Aurora - Cidade Felicidade - Estado Radiante - CEP: 23456-789                                             Divorciado
(90,	678.901.234-45, '', '', 'Gustavo Oliveira Ramos',	'', ' 43.210.987-6', ' 27/10/1976',	                          (96) 5678-9012, 'gustavo.oliveira.ramos@email.com'		76. Pai: Felipe Fernandes / Mãe: Renata Sousa	76. Av. do Bem, 951 - Bairro Vida Nova - Cidade Serenidade - Estado Calmo - CEP: 87654-321                                              Solteiro
(91,	456.789.012-56, '', '', 'Clara Gomes Ferreira',	'', ' 32.109.876-5', ' 04/03/1991',	                            (18) 6789-0123, 'clara.gomes.ferreira@email.com'		77. Pai: Rafael Costa / Mãe: Adriana Oliveira	77. Travessa do Brilho, 258 - Bairro Encanto - Cidade Radiante - Estado Encantado - CEP: 98765-432                                              Casado
(92,	234.567.890-67, '', '', 'Felipe Rodrigues Castro',	'', ' 21.098.765-4', ' 23/09/1985',	                        (29) 7890-1234, 'felipe.rodrigues.castro@email.com'		78. Pai: Vinicius Barbosa / Mãe: Priscila Torres	78. Rua da Paz, 654 - Bairro Harmonia - Cidade Alegria - Estado Tranquilo - CEP: 54321-987                                              Solteiro
(93,	012.345.678-78, '', '', 'Yasmin Costa Silva',	'', ' 10.987.654-3', ' 06/07/1973',	                              (31) 8901-2345, 'yasmin.costa.silva@email.com'		79. Pai: Eduardo Oliveira / Mãe: Mariana Mendes	79. Av. da Felicidade, 357 - Bairro Aurora - Cidade Esperança - Estado Sereno - CEP: 23456-789                                              Viúvo
(94,	890.123.456-89, '', '', 'Eduardo Almeida Torres',	'', ' 09.876.543-2', ' 13/11/1998',	                          (42) 9012-3456, 'eduardo.almeida.torres@email.com'		80. Pai: Gustavo Torres / Mãe: Camila Lima	80. Rua da Harmonia, 753 - Bairro Harmonia - Cidade Felicidade - Estado Tranquilo - CEP: 87654-321                                              Solteiro





--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
