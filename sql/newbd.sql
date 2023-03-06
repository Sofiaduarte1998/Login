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

--
-- Estrutura da tabela `teste`
--

DROP TABLE IF EXISTS `teste`;
CREATE TABLE IF NOT EXISTS `teste` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `utilizador` varchar(50) NOT NULL,
  `timestamp` int NOT NULL,
  `distrito_id` int NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT FK_Distritos FOREIGN KEY (`distrito_id`)
    REFERENCES `distritos`(`id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `teste`
--
INSERT INTO `teste` (`id`, `email`, `pass`, `utilizador`, `timestamp`, `distrito_id`) VALUES
(11, 'nnnnn', 'nnnn', '', 1525376494, 1),
(12, 'oooo', 'kkkk', 'kkkkk', 1525376494, 1),
(13, 'sd@hotmail-com', '1222333', '', 1525376494, 1),
(14, 'sofiadua@hotmail.com', 'nnnn', '', 1525376494, 1),
(15, 'aaa@ddd', 'aaa', 'aaa', 1525376494, 1),
(16, 'aaa', 'aaa', 'aaa', 1525376494, 1),
(17, '', '', 'ee', 1525376494, 1),
(18, '', '', 'ttt', 1525376494, 1),
(19, '', '', 'ttt', 1525376494, 1),
(20, 'ddddd@hotmail.com', '12345', 'adeus', 1525376494, 1),
(21, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(22, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(23, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(24, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com',1525376494, 1),
(25, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(26, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(27, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(28, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(29, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(30, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(31, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(32, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com',1525376494, 1),
(33, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(34, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(35, '', 'Sofia Duarte Neto', 'sofiaduarteneto1998@gmail.com', 1525376494, 1),
(36, '', '1234', '111', 1525376494, 1),
(37, '', '1234', '111', 1525376494, 1),
(38, '', '1234', '111', 1525376494, 1),
(39, '', '1234', '111', 1525376494, 1),
(40, '', '1234', '111', 1525376494, 1),
(41, '', '1234', '111', 1525376494,1),
(42, '', '1234', '111', 1525376494, 1),
(43, '', 'ttt', 'ttt', 1525376494, 1),
(44, '', 'ttt', 'ttt', 1525376494, 1),
(45, '', 'ttt', 'ttt', 1525376494, 1),
(46, '', 'ss', 'ss', 1525376494, 1),
(47, 'sssddd@hotmail.com', '12345', 'sssdddd', 1525376494, 1),
(48, 'ssssddnn@gmail.com', 'nnnn', 'ssddnn', 1525376494, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
