-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 17-Fev-2023 às 17:00
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
-- Banco de dados: `sofia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `teste`
--

DROP TABLE IF EXISTS `teste`;
CREATE TABLE IF NOT EXISTS `teste` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `utilizador` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL,
  `distrito` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `teste`
--

INSERT INTO `teste` (`id`, `email`, `descricao`, `pass`, `utilizador`, `timestamp`, `distrito`) VALUES
(11, 'nnnnn', 'nnnnn', 'nnnn', '', '0000-00-00 00:00:00', ''),
(12, 'oooo', 'kkkkkk', 'kkkk', 'kkkkk', '0000-00-00 00:00:00', ''),
(13, 'sd@hotmail-com', '', '1222333', '', '2023-02-09 12:36:58', ''),
(14, 'sofiadua@hotmail.com', '', 'nnnn', '', '2023-02-09 12:40:55', ''),
(15, 'aaa@ddd', 'aaaa', 'aaa', 'aaa', '2023-02-17 16:48:17', 'Lisboa'),
(16, 'aaa', 'aaa', 'aaa', 'aaa', '2023-02-17 16:49:42', 'Faro'),
(17, '', 'ee', '', 'ee', '0000-00-00 00:00:00', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
