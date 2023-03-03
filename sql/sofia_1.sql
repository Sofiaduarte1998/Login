-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 24-Fev-2023 às 16:40
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
-- Estrutura da tabela `distritos`
--

DROP TABLE IF EXISTS `distritos`;
CREATE TABLE IF NOT EXISTS `distritos` (
  `id` int NOT NULL,
  `distritos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `distritos`
--

INSERT INTO `distritos` (`id`, `distritos`) VALUES
(1, 'Santarém'),
(2, 'Faro '),
(3, 'Aveiro'),
(4, 'Leiria');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `teste`
--

INSERT INTO `teste` (`id`, `email`, `descricao`, `pass`, `utilizador`, `timestamp`) VALUES
(11, 'nnnnn', 'nnnnn', 'nnnn', '', '0000-00-00 00:00:00'),
(12, 'oooo', 'kkkkkk', 'kkkk', 'kkkkk', '0000-00-00 00:00:00'),
(13, 'sd@hotmail-com', '', '1222333', '', '2023-02-09 12:36:58'),
(14, 'sofiadua@hotmail.com', '', 'nnnn', '', '2023-02-09 12:40:55'),
(15, 'aaa@ddd', 'aaaa', 'aaa', 'aaa', '2023-02-17 16:48:17'),
(16, 'aaa', 'aaa', 'aaa', 'aaa', '2023-02-17 16:49:42'),
(17, '', 'ee', '', 'ee', '0000-00-00 00:00:00'),
(18, '', 'TTT', '', 'ttt', '0000-00-00 00:00:00'),
(19, '', 'TTT', '', 'ttt', '0000-00-00 00:00:00'),
(20, 'ddddd@hotmail.com', 'olá', '12345', 'adeus', '2023-02-20 12:35:52'),
(21, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(22, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(23, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(24, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(25, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(26, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(27, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(28, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(29, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(30, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(31, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(32, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(33, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(34, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(35, '', '550a141f12de6341fba65b0ad0433500', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00'),
(36, '', '698d51a19d8a121ce581499d7b701668', '1234', '111', '0000-00-00 00:00:00'),
(37, '', '698d51a19d8a121ce581499d7b701668', '1234', '111', '0000-00-00 00:00:00'),
(38, '', '698d51a19d8a121ce581499d7b701668', '1234', '111', '0000-00-00 00:00:00'),
(39, '', '698d51a19d8a121ce581499d7b701668', '1234', '111', '0000-00-00 00:00:00'),
(40, '', '698d51a19d8a121ce581499d7b701668', '1234', '111', '0000-00-00 00:00:00'),
(41, '', '698d51a19d8a121ce581499d7b701668', '1234', '111', '0000-00-00 00:00:00'),
(42, '', '698d51a19d8a121ce581499d7b701668', '1234', '111', '0000-00-00 00:00:00'),
(43, '', '9990775155c3518a0d7917f7780b24aa', 'ttt', 'ttt', '0000-00-00 00:00:00'),
(44, '', '9990775155c3518a0d7917f7780b24aa', 'ttt', 'ttt', '0000-00-00 00:00:00'),
(45, '', '9990775155c3518a0d7917f7780b24aa', 'ttt', 'ttt', '0000-00-00 00:00:00'),
(46, '', '3691308f2a4c2f6983f2880d32e29c84', 'ss', 'ss', '0000-00-00 00:00:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
