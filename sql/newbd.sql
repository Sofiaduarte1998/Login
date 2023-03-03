-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 03-Mar-2023 às 12:16
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
  `pass` varchar(50) NOT NULL,
  `utilizador` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL,
  `distritos` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `teste`
--

INSERT INTO `teste` (`id`, `email`, `pass`, `utilizador`, `timestamp`, `distritos`) VALUES
(11, 'nnnnn', 'nnnn', '', '0000-00-00 00:00:00', 0),
(12, 'oooo', 'kkkk', 'kkkkk', '0000-00-00 00:00:00', 0),
(13, 'sd@hotmail-com', '1222333', '', '2023-02-09 12:36:58', 0),
(14, 'sofiadua@hotmail.com', 'nnnn', '', '2023-02-09 12:40:55', 0),
(15, 'aaa@ddd', 'aaa', 'aaa', '2023-02-17 16:48:17', 0),
(16, 'aaa', 'aaa', 'aaa', '2023-02-17 16:49:42', 0),
(17, '', '', 'ee', '0000-00-00 00:00:00', 0),
(18, '', '', 'ttt', '0000-00-00 00:00:00', 0),
(19, '', '', 'ttt', '0000-00-00 00:00:00', 0),
(20, 'ddddd@hotmail.com', '12345', 'adeus', '2023-02-20 12:35:52', 0),
(21, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(22, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(23, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(24, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(25, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(26, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(27, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(28, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(29, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(30, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(31, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(32, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(33, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(34, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(35, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', '0000-00-00 00:00:00', 0),
(36, '', '1234', '111', '0000-00-00 00:00:00', 0),
(37, '', '1234', '111', '0000-00-00 00:00:00', 0),
(38, '', '1234', '111', '0000-00-00 00:00:00', 0),
(39, '', '1234', '111', '0000-00-00 00:00:00', 0),
(40, '', '1234', '111', '0000-00-00 00:00:00', 0),
(41, '', '1234', '111', '0000-00-00 00:00:00', 0),
(42, '', '1234', '111', '0000-00-00 00:00:00', 0),
(43, '', 'ttt', 'ttt', '0000-00-00 00:00:00', 0),
(44, '', 'ttt', 'ttt', '0000-00-00 00:00:00', 0),
(45, '', 'ttt', 'ttt', '0000-00-00 00:00:00', 0),
(46, '', 'ss', 'ss', '0000-00-00 00:00:00', 0),
(47, 'sssddd@hotmail.com', '12345', 'sssdddd', '2023-03-02 10:58:21', 0),
(48, 'ssssddnn@gmail.com', 'nnnn', 'ssddnn', '2023-03-02 11:12:26', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
