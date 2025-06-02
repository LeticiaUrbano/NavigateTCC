-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 02-Jun-2025 às 18:18
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `navigate`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'admin', 'admin@admin.com', '123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `email` varchar(255) DEFAULT NULL,
  `prontuario` varchar(50) NOT NULL,
  `senha` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`email`, `prontuario`, `senha`) VALUES
('teste@teste', '123', '123'),
('leticia@teste', '321', '321');

-- --------------------------------------------------------

--
-- Estrutura da tabela `favoritos`
--

CREATE TABLE `favoritos` (
  `id_favorito` int(11) NOT NULL,
  `prontuario` varchar(20) NOT NULL,
  `id_prestador` int(11) NOT NULL,
  `data_favorito` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `favoritos`
--

INSERT INTO `favoritos` (`id_favorito`, `prontuario`, `id_prestador`, `data_favorito`) VALUES
(20, '123', 34, '2025-05-14 16:39:26'),
(21, '123', 36, '2025-05-14 21:38:10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prestador`
--

CREATE TABLE `prestador` (
  `id_prestador` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `sobrenome` varchar(255) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `bairros_rota` varchar(255) DEFAULT NULL,
  `cidades_rota` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status_aprovacao` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `prestador`
--

INSERT INTO `prestador` (`id_prestador`, `nome`, `sobrenome`, `cpf`, `email`, `telefone`, `senha`, `bairros_rota`, `cidades_rota`, `foto`, `status_aprovacao`) VALUES
(34, 'Leticia', 'Urbano', '45466659894', 'leticia@teste', '19548756585', '$2y$10$grylLgTUpqtTNgSBdUUb8ehhVyraMe630qZKIrHJeNdX6on7pE2Xa', 'Jd. Boa esperança', 'Hortolândia', 'foto6821284cd0d32.jpg', 'aprovado'),
(35, 'Van ', 'Sonia', '45845845895', 'leticia@teste', '2514251425', '$2y$10$ob.MZBxdpuoPJnXjDrRWFOM.jW/d1d5EgAqdH3Fh4J7zzt23/aoi6', 'Centro', 'Campinas', 'foto6821297b50d22.png', 'reprovado'),
(36, 'Van', 'Emerson', '47547858756', 'leticia@teste', '47585858596', '$2y$10$wXxRkxqBTtbpwfJ6xLAm4uO5vfFlHq7oFiAcQw/ZyPpzPli9fZWl.', 'Jd. das Colinas', 'Hortolândia', 'foto682129af9ca67.png', 'aprovado'),
(38, 'Let', 'teste', '51848', 'teste@teste', '4651531', NULL, 'Remanso', 'Hortolândia', 'carona.jpg', 'aprovado'),
(39, 'Van', 'Teste', '458', 'teste@teste', '19', '$2y$10$GLdwW8NnUKuYRKUQ9ES3bOI7VOVoikPmqSHmZ.JRjPbJZK19o88mu', 'São Jorge', 'Campinas', 'foto68212b2202ff1.jpg', NULL),
(40, 'Marcia', 'Teresa', '475', 'teste@teste', '845', '$2y$10$L.cxZXPORW1CAf2moynLE.Lf/2TqqjMC.hCm9WcftBL1IkzhxLirq', 'Jd Auxiliadora', 'Hortolândia', 'foto68212b50b045c.jpg', 'aprovado'),
(41, 'tt', 'tt', 'tt', 'teste@teste', 'tt', '$2y$10$.N6iuqmCcsps96zjnGKOAuwpaVhRiYsW8IsyeNVhB8I4yVssDqtoO', 'tt', 'Campinas', 'foto682536bc6535d.jpg', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`prontuario`);

--
-- Índices para tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id_favorito`),
  ADD KEY `prontuario` (`prontuario`),
  ADD KEY `id_prestador` (`id_prestador`);

--
-- Índices para tabela `prestador`
--
ALTER TABLE `prestador`
  ADD PRIMARY KEY (`id_prestador`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id_favorito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `prestador`
--
ALTER TABLE `prestador`
  MODIFY `id_prestador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`prontuario`) REFERENCES `alunos` (`prontuario`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`id_prestador`) REFERENCES `prestador` (`id_prestador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
