-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/03/2024 às 15:05
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
-- Banco de dados: `cursos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id_aluno` int(10) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id_aluno`, `nome`, `telefone`, `email`, `senha`) VALUES
(1, 'Marcia', '9299999999', 'marcia@gmail.com', '123'),
(2, 'Maria', '9299333399', 'maria@gmail.com', '1234'),
(3, 'Sanna', '9299999999', 'sana@gmail.com', '123');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id_curso` int(10) NOT NULL,
  `nome_curso` varchar(200) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descricao` varchar(800) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `link` varchar(800) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nome_curso`, `titulo`, `descricao`, `categoria`, `link`) VALUES
(1, 'phpmoderno', 'Curso de PHP Moderno', 'Você sempre quis aprender PHP e nunca achou um curso com as novidades das últimas versões da linguagem? Você já ouviu por aí que PHP vai morrer, que é uma linguagem ultrapassada e sem segurança? Pois começa agora o seu curso de PHP Moderno 100% grátis, criado pelo professor Gustavo Guanabara, do canal @CursoemVideo.', 'tecnologia, web, php, programação', 'https://www.youtube.com/embed/TfsO0BGvGn0?si=fimowtSa2yC9ntlx'),
(2, 'javascript1', 'Curso de JavaScript', 'No curso de #JavaScript você vai aprender do básico ao avançado, as aulas contem teoria e prática sobre JS. Alguns dos assuntos abordados serão: operadores lógicos, condicionais, estruturas de repetição e condição.\r\nPorém mais adiante também trabalharemos com #DOM e eventos em JavaScript, para dominar completamente a linguagem quando se trata de client-side, ou seja, JavaScript para front-end.', 'tecnologia, web, javascript, programação', 'https://www.youtube.com/embed/TkD0QMyBa28?si=5OXphl-cT6dgqius'),
(3, 'sqlmysql', 'Curso de SQL com MySQL (Completo)', 'Nessa playlist você vai aprender a linguagem SQL com o Curso de SQL com MySQL que promovo como bônus em todos os meus cursos. É importante que todo dev tenha conhecimento de SQL por que isso vai fazer parte da sua rotina. Melhor ainda quando conseguimos conteúdo de qualidade e grátis.\r\n\r\nNa primeira aula, vamos falar sobre o Diagrama Entidade Relacionamento, tabelas, atributos, primary keys (chaves primárias), foreign keys (chaves estrangeiras) e muito mais. Apesar de não existir nada prático nessa aula (tudo é teórico), é uma das aulas mais importantes para o seu entendimento sobre as relações entre entidades de um sistema.', 'tecnologia, web, mysql, sql, programação', 'https://www.youtube.com/embed/lHYV_H1526Q?si=8fK5yrS72WMH-Of1'),
(4, 'python3', 'Curso Python 3 - Aula 1', 'Aula do Curso de Programação em Linguagem Python criado pelo professor Gustavo Guanabara para o portal CursoemVideo.com.', 'Tecnologia, python, web, programação', 'https://www.youtube.com/embed/S9uPNppGsGo?si=bsbrmFXZHu3t2nL8'),
(5, 'construct3', 'Curso Completo - Construct 3', 'Dê asas à sua criatividade e adentre ao emocionante universo do desenvolvimento de jogos com o nosso envolvente curso \"Construct 3.', 'Tecnologia, Construct3, game, programação', 'https://www.youtube.com/embed/fYYE8kXsPsA?si=RKxSIWZZh2Vd8At7'),
(6, 'flutterflow', 'Curso FlutterFlow', 'Neste Curso de FlutterFlow você aprenderá passo a passo \r\ncomo criar seu primeiro aplicativo sem saber programar. \r\nAssista o curso de flutterflow gratuito e aprenda:\r\n\r\nO Curso de Flutterflow é perfeito para você dar os\r\nprimeiros passos na criação de apps sem saber programar.', 'Tecnologia, mobile, flutterflow, programação, web', 'https://www.youtube.com/embed/AhruhyKX8w4?si=WQqbkNaXBHayx5I5');

-- --------------------------------------------------------

--
-- Estrutura para tabela `destaque`
--

CREATE TABLE `destaque` (
  `id_destaque` int(10) NOT NULL,
  `nome_curso` varchar(50) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `descricao` varchar(800) DEFAULT NULL,
  `link` varchar(800) DEFAULT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `destaque`
--

INSERT INTO `destaque` (`id_destaque`, `nome_curso`, `titulo`, `descricao`, `link`, `ativo`) VALUES
(1, 'phpmoderno', '\r\nCurso de PHP Moderno', 'Comece agora o seu curso de PHP Moderno 100% grátis, criado pelo professor Gustavo Guanabara, do canal @CursoemVideo. \r\n\r\n\r\n\r\n  ', 'https://th.bing.com/th/id/OIP.Wt5Mi8Me_EUARCoMuLBaLwAAAA?rs=1&pid=ImgDetMain', 'SIM'),
(2, 'javascript1', 'Curso de JavaScript', 'No curso de #JavaScript você vai aprender do básico ao avançado, as aulas contem teoria e prática sobre JS. ', 'https://th.bing.com/th/id/OIP.g_OCRgMP0uEFRU4J-X0vZwHaEK?rs=1&pid=ImgDetMain', 'SIM'),
(3, 'sqlmysql', 'Curso de SQL com MySQL', 'Você vai aprender a linguagem SQL com o Curso de SQL com MySQL que promovo como bônus em todos os meus cursos. ', 'https://i.ytimg.com/vi/lHYV_H1526Q/hq720.jpg?sqp=-oaymwEXCK4FEIIDSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLDYLBQtICUFGcokHtilG7gYKG_jeA', 'SIM'),
(4, 'python3', 'Curso Python 3', 'Aula do Curso de Programação em Linguagem Python criado pelo professor Gustavo Guanabara para o portal CursoemVideo.com.', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRVUw79p0xQs0we_eJyj1sfjtTMLwrqw-Ff-2cHgip5B-11gJyt', 'curso'),
(5, 'construct3', 'Curso Completo - Construct 3', 'Dê asas à sua criatividade e adentre ao emocionante universo do desenvolvimento de jogos com o nosso envolvente curso \"Construct 3.', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRqqbpry_tzfj3zwba0y42MzRpfmfChqnhURkQIfZDUzoMms6ve', 'curso'),
(6, 'flutterflow', 'Curso FlutterFlow', 'Neste Curso de FlutterFlow você aprenderá passo a passo \r\ncomo criar seu primeiro aplicativo sem saber programar. \r\n\r\n', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSD09ct91Smil-YiwrKrwNCTN-VjVVw0b2Niva2JLKlnUroN_r3', 'curso');

-- --------------------------------------------------------

--
-- Estrutura para tabela `matricula`
--

CREATE TABLE `matricula` (
  `id_matricula` int(10) NOT NULL,
  `id_aluno` int(10) DEFAULT NULL,
  `nome_curso` varchar(50) DEFAULT NULL,
  `matriculado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `matricula`
--

INSERT INTO `matricula` (`id_matricula`, `id_aluno`, `nome_curso`, `matriculado`) VALUES
(1, 1, 'phpmoderno', 'sim'),
(2, 1, 'python3', 'sim'),
(3, 1, 'construct3', 'sim');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id_curso`);

--
-- Índices de tabela `destaque`
--
ALTER TABLE `destaque`
  ADD PRIMARY KEY (`id_destaque`);

--
-- Índices de tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id_matricula`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id_aluno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id_curso` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `destaque`
--
ALTER TABLE `destaque`
  MODIFY `id_destaque` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id_matricula` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
