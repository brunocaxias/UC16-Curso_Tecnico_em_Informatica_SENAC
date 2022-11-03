-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Out-2022 às 02:08
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `petshopuc16`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `idAnimal` int(11) NOT NULL,
  `nome` varchar(55) DEFAULT NULL,
  `tipo` varchar(55) DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`idAnimal`, `nome`, `tipo`, `idUsuario`) VALUES
(12, 'Robson', 'bugdog', 9),
(13, 'Guilherme', 'bugdog', 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal_servico`
--

CREATE TABLE `animal_servico` (
  `idAnimalServ` int(11) NOT NULL,
  `idServ` int(11) NOT NULL,
  `idAnimal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `animal_servico`
--

INSERT INTO `animal_servico` (`idAnimalServ`, `idServ`, `idAnimal`) VALUES
(5, 5, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `autenticar`
--

CREATE TABLE `autenticar` (
  `id` int(11) NOT NULL,
  `loginUsuario` varchar(45) DEFAULT NULL,
  `senhaUsuario` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `autenticar`
--

INSERT INTO `autenticar` (`id`, `loginUsuario`, `senhaUsuario`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servico`
--

CREATE TABLE `servico` (
  `idServ` int(11) NOT NULL,
  `nome` varchar(55) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `servico`
--

INSERT INTO `servico` (`idServ`, `nome`, `valor`, `descricao`) VALUES
(5, 'Banho', 20, 'Banho higienico do animal'),
(6, 'Tosa', 654, 'dsadasda'),
(7, 'Cirurgia', 100, 'dasdasdadsa'),
(8, 'Hospedagem', 50, 'dsadasda'),
(9, 'Lazer', 478, 'sdadsadsa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nome` varchar(55) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `endereco` varchar(155) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nome`, `idade`, `endereco`) VALUES
(9, 'Guilherme', 24, 'Santos');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`idAnimal`),
  ADD KEY `idUsuario` (`idUsuario`);

--
-- Índices para tabela `animal_servico`
--
ALTER TABLE `animal_servico`
  ADD PRIMARY KEY (`idAnimalServ`),
  ADD KEY `idServ` (`idServ`),
  ADD KEY `idAnimal` (`idAnimal`);

--
-- Índices para tabela `autenticar`
--
ALTER TABLE `autenticar`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servico`
--
ALTER TABLE `servico`
  ADD PRIMARY KEY (`idServ`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `animal`
--
ALTER TABLE `animal`
  MODIFY `idAnimal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `animal_servico`
--
ALTER TABLE `animal_servico`
  MODIFY `idAnimalServ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `autenticar`
--
ALTER TABLE `autenticar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `servico`
--
ALTER TABLE `servico`
  MODIFY `idServ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Limitadores para a tabela `animal_servico`
--
ALTER TABLE `animal_servico`
  ADD CONSTRAINT `animal_servico_ibfk_1` FOREIGN KEY (`idServ`) REFERENCES `servico` (`idServ`),
  ADD CONSTRAINT `animal_servico_ibfk_2` FOREIGN KEY (`idAnimal`) REFERENCES `animal` (`idAnimal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
