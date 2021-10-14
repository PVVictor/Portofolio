-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 22-Mar-2021 às 19:13
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `funvildevendas`
--
CREATE DATABASE IF NOT EXISTS `funvildevendas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `funvildevendas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tweet`
--

DROP TABLE IF EXISTS `tweet`;
CREATE TABLE IF NOT EXISTS `tweet` (
  `id_tweet` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `assunto` varchar(50) NOT NULL,
  `mensagem` varchar(140) NOT NULL,
  `data_inclusao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tweet`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(220) NOT NULL,
  `email` varchar(520) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `situacoe_id` int(11) NOT NULL DEFAULT '0',
  `niveis_acesso_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `situacoe_id`, `niveis_acesso_id`, `created`, `modified`) VALUES
(5, 'Root', 'pabloemilhoscobare@gmail.com', '7b24afc8bc80e548d66c4e7ff72171c5', 1, 1, '2020-12-01 10:10:01', '2016-02-20 21:58:57'),
(6, 'Nelson Segunda', 'conector.ns@gmail.com', '9596faacc723295e9831555abf5abe9e', 2, 4, '2021-02-14 00:00:01', '2016-02-20 21:58:01');
--
-- Database: `gestaodepauta`
--
CREATE DATABASE IF NOT EXISTS `gestaodepauta` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestaodepauta`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

DROP TABLE IF EXISTS `aluno`;
CREATE TABLE IF NOT EXISTS `aluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `BI` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `nome`, `nascimento`, `sexo`, `altura`, `BI`) VALUES
(1, 'Victor Estevao Paciencia', '2000-02-09', 'M', '1.45', '256458621469.56'),
(2, 'Perry', '2001-02-09', 'M', '1.55', '256458621469.56'),
(3, 'Derison da graça', '2005-02-09', 'F', '1.45', '256458621469.96'),
(4, 'Maria', '2000-01-06', 'F', '3.45', '256458621469.89'),
(5, 'Mateus', '1982-07-09', 'M', '2.45', '256458621469.16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestaodepautas`
--

DROP TABLE IF EXISTS `gestaodepautas`;
CREATE TABLE IF NOT EXISTS `gestaodepautas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `classe` int(11) NOT NULL,
  `curso` varchar(30) NOT NULL,
  `primeiro_trimestre` float DEFAULT NULL,
  `segundo_trimestre` float DEFAULT NULL,
  `terceiro_trimestre` float DEFAULT NULL,
  `ResutFinal` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gestaodepautas`
--

INSERT INTO `gestaodepautas` (`id`, `nome`, `classe`, `curso`, `primeiro_trimestre`, `segundo_trimestre`, `terceiro_trimestre`, `ResutFinal`) VALUES
(1, 'Victor Estevao', 12, 'Informatica', 13.05, 15.05, 19.05, 'Apto'),
(2, 'Perry ricth', 12, 'Informatica', 13.05, 15.05, 19.05, 'Apto'),
(3, 'Pedro', 12, 'Informatica', 13.05, 15.05, 19.05, 'Apto'),
(4, 'Mingo Estevao', 12, 'Informatica', 13.05, 15.05, 19.05, 'Apto'),
(5, 'Adao', 12, 'Informatica', 13.05, 15.05, 19.05, 'Apto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pauta`
--

DROP TABLE IF EXISTS `pauta`;
CREATE TABLE IF NOT EXISTS `pauta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `classe` int(11) NOT NULL,
  `curso` varchar(30) NOT NULL,
  `disciplina` varchar(30) NOT NULL,
  `Nota` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pauta`
--

INSERT INTO `pauta` (`id`, `nome`, `classe`, `curso`, `disciplina`, `Nota`) VALUES
(1, 'Victor Estevao Paciencia', 12, 'Informatica', 'TLP', 15.05),
(2, 'Derison Da graça', 11, 'Informatica', 'TLP', 10.05),
(3, 'Mateus', 11, 'Informatica', 'TLP', 15.05),
(4, 'Estevao Jacinto', 9, 'Informatica', 'TLP', 11.05),
(5, 'Helder', 10, 'Informatica', 'TLP', 19.05),
(6, 'Mirian', 8, 'Informatica', 'Quimica', 17.05);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

DROP TABLE IF EXISTS `professor`;
CREATE TABLE IF NOT EXISTS `professor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `BI` decimal(16,2) DEFAULT NULL,
  `disciplina` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id`, `nome`, `nascimento`, `sexo`, `altura`, `BI`, `disciplina`) VALUES
(1, 'Sabalo', '1985-02-13', 'M', '1.58', '1555461224.52', 'TLP'),
(2, 'Mendes', '1985-02-13', 'M', '1.59', '1555461224.58', 'Ingles'),
(3, 'Munanas', '1985-02-13', 'M', '1.51', '1555461224.52', 'Matematica'),
(4, 'Sabalo', '1985-02-13', 'M', '1.58', '1555461224.52', 'SEAC'),
(5, 'Mingo', '1985-02-13', 'M', '1.58', '1555461224.52', 'TREY');
--
-- Database: `gestaopautacjc`
--
CREATE DATABASE IF NOT EXISTS `gestaopautacjc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestaopautacjc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

DROP TABLE IF EXISTS `aluno`;
CREATE TABLE IF NOT EXISTS `aluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `BI` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `nome`, `nascimento`, `sexo`, `altura`, `BI`) VALUES
(1, 'Estevao jacinto', '2000-02-09', 'M', '1.45', '256458621469.56'),
(2, 'Perry', '2001-02-09', 'M', '1.55', '256458621469.56'),
(3, 'Derison da graça', '2005-02-09', 'F', '1.45', '256458621469.96'),
(4, 'Maria', '2000-01-06', 'F', '3.45', '256458621469.89'),
(5, 'Mateus', '1982-07-09', 'M', '2.45', '256458621469.16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestaodepautas`
--

DROP TABLE IF EXISTS `gestaodepautas`;
CREATE TABLE IF NOT EXISTS `gestaodepautas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `classe` int(11) NOT NULL,
  `curso` varchar(30) NOT NULL,
  `primeiro_trimestre` float DEFAULT NULL,
  `segundo_trimestre` float DEFAULT NULL,
  `terceiro_trimestre` float DEFAULT NULL,
  `ResutFinal` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gestaodepautas`
--

INSERT INTO `gestaodepautas` (`id`, `nome`, `classe`, `curso`, `primeiro_trimestre`, `segundo_trimestre`, `terceiro_trimestre`, `ResutFinal`) VALUES
(1, 'Estevao Jacinto', 12, 'Informatica', 13.05, 15.05, 19.05, 'Apto'),
(2, 'Perry ricth', 12, 'Informatica', 13.05, 15.05, 19.05, 'Apto'),
(3, 'Pedro', 12, 'Informatica', 13.05, 15.05, 19.05, 'Apto'),
(4, 'Mingo Estevao', 12, 'Informatica', 13.05, 15.05, 19.05, 'Apto'),
(5, 'Adao', 12, 'Informatica', 13.05, 15.05, 19.05, 'Apto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pauta`
--

DROP TABLE IF EXISTS `pauta`;
CREATE TABLE IF NOT EXISTS `pauta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `classe` int(11) NOT NULL,
  `curso` varchar(30) NOT NULL,
  `disciplina` varchar(30) NOT NULL,
  `Nota` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pauta`
--

INSERT INTO `pauta` (`id`, `nome`, `classe`, `curso`, `disciplina`, `Nota`) VALUES
(1, 'Estevao Jacinto', 12, 'Informatica', 'TLP', 15.05),
(2, 'Derison Da graça', 11, 'Informatica', 'TLP', 10.05),
(3, 'Mateus', 11, 'Informatica', 'TLP', 15.05),
(4, 'Estevao Jacinto', 9, 'Informatica', 'TLP', 11.05),
(5, 'Helder', 10, 'Informatica', 'TLP', 19.05),
(6, 'Mirian', 8, 'Informatica', 'Quimica', 17.05);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

DROP TABLE IF EXISTS `professor`;
CREATE TABLE IF NOT EXISTS `professor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `altura` decimal(3,2) DEFAULT NULL,
  `BI` decimal(16,2) DEFAULT NULL,
  `disciplina` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id`, `nome`, `nascimento`, `sexo`, `altura`, `BI`, `disciplina`) VALUES
(1, 'Sabalo', '1985-02-13', 'M', '1.58', '1555461224.52', 'TLP'),
(2, 'Mendes', '1985-02-13', 'M', '1.59', '1555461224.58', 'Ingles'),
(3, 'Munanas', '1985-02-13', 'M', '1.51', '1555461224.52', 'Matematica'),
(4, 'Sabalo', '1985-02-13', 'M', '1.58', '1555461224.52', 'SEAC'),
(5, 'Mingo', '1985-02-13', 'M', '1.58', '1555461224.52', 'TREY');
--
-- Database: `perry`
--
CREATE DATABASE IF NOT EXISTS `perry` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `perry`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nome`
--

DROP TABLE IF EXISTS `nome`;
CREATE TABLE IF NOT EXISTS `nome` (
  `mimkm` int(11) NOT NULL,
  `ohn` int(11) NOT NULL,
  `87hyi` int(11) NOT NULL,
  `uyh` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
--
-- Database: `poli`
--
CREATE DATABASE IF NOT EXISTS `poli` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `poli`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
