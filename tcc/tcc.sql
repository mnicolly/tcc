-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 31-Out-2023 às 16:56
-- Versão do servidor: 8.0.31
-- versão do PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atend`
--

DROP TABLE IF EXISTS `atend`;
CREATE TABLE IF NOT EXISTS `atend` (
  `proced` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descricao` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `defciv` tinyint(1) NOT NULL,
  `situacao` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ocorrencia` int NOT NULL,
  `tipo` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `chefsoc` varchar(30) NOT NULL,
  `numvit` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `camnec` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `bairro` varchar(25) NOT NULL,
  `compl` varchar(20) NOT NULL,
  `pontoref` varchar(20) NOT NULL,
  `fk_situacao_atend` int DEFAULT NULL,
  `fk_ocorrencia_atend` int DEFAULT NULL,
  KEY `fk_situacao_atend` (`fk_situacao_atend`),
  KEY `fk_ocorrencia_atend` (`fk_ocorrencia_atend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `atend`
--

INSERT INTO `atend` (`proced`, `descricao`, `defciv`, `situacao`, `ocorrencia`, `tipo`, `data`, `hora`, `chefsoc`, `numvit`, `camnec`, `cidade`, `bairro`, `compl`, `pontoref`, `fk_situacao_atend`, `fk_ocorrencia_atend`) VALUES
('0', 'mmm', 0, '0', 0, '0', '2023-09-20', '00:20:23', 'kkk', '10', '0', 'aa', 'bb', 'ooo', 'lll', NULL, NULL),
('a', 'mmm', 0, '0', 0, '0', '2023-09-20', '00:20:23', 'kkk', '10-40', '0', 'aa', 'bb', 'ooo', 'lll', NULL, NULL),
('b', 'mmm', 0, 'hhh', 0, 'jjj', '2023-09-20', '00:20:23', 'kkk', '0-10', 'Caminhão pequeno', 'sombrio', 'centro', 'ooo', 'lll', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastra`
--

DROP TABLE IF EXISTS `cadastra`;
CREATE TABLE IF NOT EXISTS `cadastra` (
  `cod` int NOT NULL,
  `codvia` int NOT NULL,
  `codatend` int NOT NULL,
  `fk_cadastra_codvia` int NOT NULL,
  `fk_cadastra_codatend` int NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

DROP TABLE IF EXISTS `cadastro`;
CREATE TABLE IF NOT EXISTS `cadastro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nomeC` varchar(30) NOT NULL,
  `NomeU` varchar(30) NOT NULL,
  `cll` int NOT NULL,
  `cpf` int NOT NULL,
  `email` varchar(40) NOT NULL,
  `senha` int NOT NULL,
  `nivel_acesso` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id`, `nomeC`, `NomeU`, `cll`, `cpf`, `email`, `senha`, `nivel_acesso`) VALUES
(25, 'João', 'marcelo', 123, 123, '123@gmail.com', 123, 0),
(37, 'ninini', 'nini', 123, 123, 'aaaa@gmail.com', 123, 0),
(36, 'nicolly menezes', 'nicolly', 2147483647, 2147483647, 'poucossabem1@gmail.com', 123, 0),
(35, '453', 'aaaa', 2147483647, 2147483647, 'ivanil3ton@hotmail.com', 0, 0),
(38, 'nicolly', 'ni', 2147483647, 2147483647, 'oito@gmail.com', 123, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_bomb`
--

DROP TABLE IF EXISTS `cadastro_bomb`;
CREATE TABLE IF NOT EXISTS `cadastro_bomb` (
  `Nome_Bombeiro` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Endereco` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Telefone` int NOT NULL,
  `Cargo` varchar(40) NOT NULL,
  `Sexo` varchar(40) NOT NULL,
  `Estado_Civil` varchar(40) NOT NULL,
  `Tipo_Sanguineo` tinytext NOT NULL,
  `Data_nascimento` date NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `cadastro_bomb`
--

INSERT INTO `cadastro_bomb` (`Nome_Bombeiro`, `Endereco`, `Email`, `Telefone`, `Cargo`, `Sexo`, `Estado_Civil`, `Tipo_Sanguineo`, `Data_nascimento`, `id`) VALUES
('test', 'KK', 'test@gmail.com', 123, 'Tenente coronel', 'Masculino', 'Divorciado', 'B+', '2023-08-26', 1),
('test1', 'n sei', 'aaa@gmail.com', 2147483647, 'Major', 'Feminino', 'Divorciado', 'O-', '2023-09-05', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `cod` int NOT NULL,
  `descricao` varchar(15) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Sender` int NOT NULL,
  `Reciever` int NOT NULL,
  `Message` varchar(500) NOT NULL,
  `Image` varchar(1000) NOT NULL,
  `Creation` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `chat`
--

INSERT INTO `chat` (`Id`, `Sender`, `Reciever`, `Message`, `Image`, `Creation`) VALUES
(1, 4, 2, 'oi', '', '2023-10-28 00:12:53'),
(2, 4, 2, 'oi', '', '2023-10-28 00:13:00'),
(3, 4, 2, 'ola', '', '2023-10-28 00:13:06'),
(4, 4, 2, '', 'laura_MESSAGE_575794Captura de Tela (4).png', '2023-10-28 00:13:46'),
(5, 5, 4, 'helo', '', '2023-10-28 00:17:27'),
(6, 5, 4, 'helo', '', '2023-10-28 00:17:36'),
(7, 4, 5, 'aaaa', '', '2023-10-28 00:34:15'),
(8, 5, 4, 'ou laura', '', '2023-10-29 02:17:59'),
(9, 5, 4, 'nunca monta um pc', '', '2023-10-29 02:18:11'),
(10, 5, 4, 'namoral', '', '2023-10-29 02:18:16'),
(11, 4, 5, 'eu odeo minecrfy', '', '2023-10-29 15:24:07'),
(12, 4, 5, 'aaa', '', '2023-10-30 22:47:40'),
(13, 4, 5, 'aaaa', '', '2023-10-30 22:47:42'),
(14, 4, 5, 'aaaa', '', '2023-10-30 22:47:44'),
(15, 4, 5, 'aaaaa', '', '2023-10-30 22:47:46'),
(16, 4, 5, 'aa', '', '2023-10-30 22:47:47'),
(17, 4, 5, 'oi', '', '2023-10-30 22:58:27'),
(18, 4, 9, 'k', '', '2023-10-31 13:28:00'),
(19, 4, 9, 'kk]', '', '2023-10-31 13:28:06'),
(20, 9, 5, 'ola', '', '2023-10-31 13:38:06'),
(21, 9, 5, 'olaweweweewee', '', '2023-10-31 13:38:17'),
(22, 5, 4, 'oi', '', '2023-10-31 13:41:52'),
(23, 5, 5, 'oi', '', '2023-10-31 13:42:10'),
(24, 11, 10, 'ola', '', '2023-10-31 13:44:29'),
(25, 11, 10, 'oi', '', '2023-10-31 13:45:16'),
(26, 10, 12, 'oi', '', '2023-10-31 14:07:14'),
(27, 12, 10, 'oi', '', '2023-10-31 14:07:32'),
(28, 12, 10, 'ojifdkjhslkerhdk', '', '2023-10-31 14:20:49'),
(29, 10, 12, 'hgcjhjcgch', '', '2023-10-31 14:20:59'),
(30, 12, 10, '', 'joaoo_MESSAGE_470246Captura de Tela (2).png', '2023-10-31 14:21:23'),
(31, 12, 10, 'ahahahhshs', '', '2023-10-31 14:24:58'),
(32, 10, 12, 'ksdjdhfiusk', '', '2023-10-31 14:25:10'),
(33, 10, 12, 'kkkkkkkkkkkk', '', '2023-10-31 14:30:02'),
(34, 13, 12, 'oi joaocuk', '', '2023-10-31 14:44:16'),
(35, 13, 12, 'oi joaocuk', '', '2023-10-31 14:44:20'),
(36, 13, 12, 'aloooo', '', '2023-10-31 14:45:01'),
(37, 13, 12, 'me come por favor', '', '2023-10-31 16:03:40'),
(38, 13, 12, 'papi', '', '2023-10-31 16:03:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comunica`
--

DROP TABLE IF EXISTS `comunica`;
CREATE TABLE IF NOT EXISTS `comunica` (
  `cod` int NOT NULL,
  `codpes` int NOT NULL,
  `codatend` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `conversations`
--

DROP TABLE IF EXISTS `conversations`;
CREATE TABLE IF NOT EXISTS `conversations` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `MainUser` int NOT NULL,
  `OtherUser` int NOT NULL,
  `Unread` varchar(1) NOT NULL DEFAULT 'n',
  `Modification` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Creation` datetime NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `conversations`
--

INSERT INTO `conversations` (`Id`, `MainUser`, `OtherUser`, `Unread`, `Modification`, `Creation`) VALUES
(1, 4, 2, 'n', '2023-10-28 00:12:53', '2023-10-28 00:12:53'),
(2, 2, 4, 'y', '2023-10-28 00:12:53', '2023-10-28 00:12:53'),
(3, 5, 4, 'n', '2023-10-28 00:17:27', '2023-10-28 00:17:27'),
(4, 4, 5, 'n', '2023-10-28 00:17:27', '2023-10-28 00:17:27'),
(5, 4, 9, 'n', '2023-10-31 13:28:00', '2023-10-31 13:28:00'),
(6, 9, 4, 'y', '2023-10-31 13:28:00', '2023-10-31 13:28:00'),
(7, 9, 5, 'n', '2023-10-31 13:38:06', '2023-10-31 13:38:06'),
(8, 5, 9, 'y', '2023-10-31 13:38:06', '2023-10-31 13:38:06'),
(9, 5, 5, 'n', '2023-10-31 13:42:10', '2023-10-31 13:42:10'),
(10, 5, 5, 'n', '2023-10-31 13:42:10', '2023-10-31 13:42:10'),
(11, 11, 10, 'n', '2023-10-31 13:44:29', '2023-10-31 13:44:29'),
(12, 10, 11, 'n', '2023-10-31 13:44:29', '2023-10-31 13:44:29'),
(13, 10, 12, 'n', '2023-10-31 14:07:14', '2023-10-31 14:07:14'),
(14, 12, 10, 'n', '2023-10-31 14:07:14', '2023-10-31 14:07:14'),
(15, 13, 12, 'n', '2023-10-31 14:44:16', '2023-10-31 14:44:16'),
(16, 12, 13, 'y', '2023-10-31 14:44:16', '2023-10-31 14:44:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `corporacao`
--

DROP TABLE IF EXISTS `corporacao`;
CREATE TABLE IF NOT EXISTS `corporacao` (
  `cod` int NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `fone` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(45) NOT NULL,
  `descricao` varchar(35) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `encam`
--

DROP TABLE IF EXISTS `encam`;
CREATE TABLE IF NOT EXISTS `encam` (
  `cod` int NOT NULL,
  `descricao` varchar(35) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_civ`
--

DROP TABLE IF EXISTS `estado_civ`;
CREATE TABLE IF NOT EXISTS `estado_civ` (
  `cod` int NOT NULL,
  `descricao` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `cod` int NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `senha` varchar(8) NOT NULL,
  `fk_login_cod` int NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `fk_login_cod` (`fk_login_cod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

DROP TABLE IF EXISTS `marcas`;
CREATE TABLE IF NOT EXISTS `marcas` (
  `cod` int NOT NULL,
  `descricao` varchar(10) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ocorrencia`
--

DROP TABLE IF EXISTS `ocorrencia`;
CREATE TABLE IF NOT EXISTS `ocorrencia` (
  `cod` int NOT NULL,
  `codoco` int NOT NULL,
  `procedimento` int NOT NULL,
  `defeciv` int NOT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

DROP TABLE IF EXISTS `pessoas`;
CREATE TABLE IF NOT EXISTS `pessoas` (
  `cod` int NOT NULL,
  `tiporis` int NOT NULL,
  `sexo` int NOT NULL,
  `encam` int NOT NULL,
  `sang` int NOT NULL,
  `fone` int NOT NULL,
  `datanasc` date NOT NULL,
  `obtos` tinyint(1) NOT NULL,
  `fk_tiporis_pessoas` int NOT NULL,
  `fk_sexo_pessoas` int NOT NULL,
  `fk_encam_pessoas` int NOT NULL,
  `fk_sang_pessoas` int NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `fk_tiporis_pessoas` (`fk_tiporis_pessoas`,`fk_sexo_pessoas`,`fk_encam_pessoas`,`fk_sang_pessoas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `profis`
--

DROP TABLE IF EXISTS `profis`;
CREATE TABLE IF NOT EXISTS `profis` (
  `cod` int NOT NULL,
  `codcorp` int NOT NULL,
  `sexo` int NOT NULL,
  `sang` int NOT NULL,
  `cargo` int NOT NULL,
  `estciv` int NOT NULL,
  `fone` int NOT NULL,
  `datanasc` date NOT NULL,
  `nome` varchar(45) NOT NULL,
  `ende` varchar(60) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fk_profis_cod` int NOT NULL,
  `fk_profis_sexo` int NOT NULL,
  `fk_profis_sang` int NOT NULL,
  `fk_profis_cargo` int NOT NULL,
  `fk_profis_estciv` int NOT NULL,
  UNIQUE KEY `fk_profis_cod` (`fk_profis_cod`,`fk_profis_sexo`,`fk_profis_sang`,`fk_profis_cargo`,`fk_profis_estciv`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `realiza`
--

DROP TABLE IF EXISTS `realiza`;
CREATE TABLE IF NOT EXISTS `realiza` (
  `cod` int NOT NULL,
  `codprofis` int NOT NULL,
  `codatend` int NOT NULL,
  `fk_realiza_codprofis` int NOT NULL,
  `fk_realiza_codatend` int NOT NULL,
  KEY `fk_realiza_codprofis` (`fk_realiza_codprofis`,`fk_realiza_codatend`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sexo`
--

DROP TABLE IF EXISTS `sexo`;
CREATE TABLE IF NOT EXISTS `sexo` (
  `cod` int NOT NULL,
  `genero` tinyint(1) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao`
--

DROP TABLE IF EXISTS `situacao`;
CREATE TABLE IF NOT EXISTS `situacao` (
  `cod` int NOT NULL,
  `descricao` varchar(20) NOT NULL,
  PRIMARY KEY (`descricao`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbchat`
--

DROP TABLE IF EXISTS `tbchat`;
CREATE TABLE IF NOT EXISTS `tbchat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `mensagem` text NOT NULL,
  `sender` int NOT NULL,
  `reciever` int NOT NULL,
  `creation` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tbchat`
--

INSERT INTO `tbchat` (`id`, `nome`, `mensagem`, `sender`, `reciever`, `creation`) VALUES
(19, 'Nome do Usuário', 'aa\r\n', 0, 0, '0000-00-00 00:00:00'),
(18, 'Nome do Usuário', 'helo', 0, 0, '0000-00-00 00:00:00'),
(17, 'o', 'ooo', 0, 0, '0000-00-00 00:00:00'),
(14, 'A', 'AA', 0, 0, '0000-00-00 00:00:00'),
(15, 'a', 'wee', 0, 0, '0000-00-00 00:00:00'),
(16, 'e', 'oo', 0, 0, '0000-00-00 00:00:00'),
(13, 'A', 'AAAA', 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_comb`
--

DROP TABLE IF EXISTS `tipo_comb`;
CREATE TABLE IF NOT EXISTS `tipo_comb` (
  `cod` int NOT NULL,
  `descricao` varchar(18) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_risco`
--

DROP TABLE IF EXISTS `tipo_risco`;
CREATE TABLE IF NOT EXISTS `tipo_risco` (
  `cod` int NOT NULL,
  `descricao` varchar(35) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_sang`
--

DROP TABLE IF EXISTS `tipo_sang`;
CREATE TABLE IF NOT EXISTS `tipo_sang` (
  `cod` int NOT NULL,
  `descricao` varchar(3) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Username` varchar(15) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(70) NOT NULL,
  `Picture` varchar(1000) NOT NULL DEFAULT 'user.jpg',
  `Online` datetime NOT NULL,
  `Token` varchar(100) NOT NULL,
  `Secure` bigint NOT NULL,
  `Creation` datetime NOT NULL,
  `CPF` int NOT NULL,
  `nivel_acesso` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`Id`, `Username`, `Email`, `Password`, `Picture`, `Online`, `Token`, `Secure`, `Creation`, `CPF`, `nivel_acesso`) VALUES
(10, 'user1', 'user1@gmail.com', '$2y$10$HfbZZE0vxjgIQ3ixCdbDAu/qlzoS2WYMXGVE.O7oe..HobzI68Aiq', 'user.jpg', '2023-10-31 14:42:37', '3d317fe115973f76e62bd4716e28e4a72e40783b', 6941163309, '2023-10-31 13:43:42', 2147483647, 0),
(11, 'user2', 'user2@gmail.com', '$2y$10$E8XxFZUQA2Ju97ARu0ECN.prOMS6Pl4CfkR5Fsohuh8f7yx8MwPV6', 'user.jpg', '2023-10-31 14:03:02', '4b30044179cf6634b7188c03fc67b510c8e83c03', 8009301841, '2023-10-31 13:44:18', 2147483647, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `utiliza`
--

DROP TABLE IF EXISTS `utiliza`;
CREATE TABLE IF NOT EXISTS `utiliza` (
  `cod` int NOT NULL,
  `codvia` int NOT NULL,
  `codprofis` int NOT NULL,
  `fk_utiliza_codvia` int NOT NULL,
  `fk_utiliza_codprofis` int NOT NULL,
  PRIMARY KEY (`cod`),
  UNIQUE KEY `fk_utiliza_codvia` (`fk_utiliza_codvia`,`fk_utiliza_codprofis`),
  KEY `fk_utiliza_codvia_2` (`fk_utiliza_codvia`,`fk_utiliza_codprofis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `viatura`
--

DROP TABLE IF EXISTS `viatura`;
CREATE TABLE IF NOT EXISTS `viatura` (
  `cod` int NOT NULL,
  `comb` int NOT NULL,
  `placa` varchar(7) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `ano` year NOT NULL,
  `datarev` date NOT NULL,
  `marcas` int NOT NULL,
  `quilom` double NOT NULL,
  `fk_comb_viatura` int NOT NULL,
  `fk_viatura_marcas1_idx` int NOT NULL,
  PRIMARY KEY (`cod`),
  KEY `fk_comb_viatura` (`fk_comb_viatura`,`fk_viatura_marcas1_idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
