-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Jun-2019 às 20:13
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bancodequestoes`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `nome`, `login`, `senha`) VALUES
(1, 'Fred', 'henrique', 'c0f70e034774ebd1d92ae507c564e81e');

-- --------------------------------------------------------

--
-- Estrutura da tabela `assunto`
--

CREATE TABLE `assunto` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `disciplina` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `assunto`
--

INSERT INTO `assunto` (`id`, `nome`, `disciplina`) VALUES
(1, 'Funcoes', 'Matematica'),
(2, 'PA e PG', 'Matematica'),
(3, 'Estatistica', 'Matematica'),
(4, 'Porcentagem', 'Matematica'),
(5, 'Literatura', 'Linguagens'),
(6, 'Ingles', 'Linguagens'),
(7, 'Espanhol', 'Linguagens'),
(8, 'Lingua Portuguesa', 'Linguagens'),
(9, 'Quimica Organica', 'Ciencias da Natureza'),
(10, 'Eletricidade', 'Ciencias da Natureza'),
(11, 'Evolucao', 'Ciencias da Natureza'),
(12, 'Bioquimica', 'Ciencias da Natureza'),
(13, 'Movimentos sociais', 'Ciencias Humanas'),
(14, 'Cidadania', 'Ciencias Humanas'),
(15, 'Questao ambiental', 'Ciencias Humanas'),
(16, 'Problemas urbanos', 'Ciencias Humanas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`id`, `nome`) VALUES
(1, 'Linguagens'),
(2, 'Matemática'),
(3, 'Ciencias da Natureza'),
(4, 'Ciencias Humanas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id`, `nome`, `login`, `senha`) VALUES
(3, 'Fred Henrique', 'henrique', 'c0f70e034774ebd1d92ae507c564e81e'),
(2, 'Matheus Vasco', 'matheuzin', 'e56b6eea9b0bc782bbb9ea6098ead641'),
(4, 'Pethe Souza', 'pethin', '5592f5f6cf8b98a3fb91540a1708e619');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prova`
--

CREATE TABLE `prova` (
  `id` int(11) NOT NULL,
  `questoes` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

CREATE TABLE `questoes` (
  `idquestao` int(11) NOT NULL,
  `questao` varchar(1000) NOT NULL,
  `resposta` varchar(20) NOT NULL,
  `img` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `questoes`
--

INSERT INTO `questoes` (`idquestao`, `questao`, `resposta`, `img`) VALUES
(1, '(UCPEL) Alterando-se as posições das letras da palavra JANEIRO, o número de permutações obtidas, nas quais as vogais aparecem sempre juntas é:\r\na) 5040  \r\nb) 576\r\nc) 288\r\nd) 144\r\ne) 24', 'b)576', ''),
(2, '(UNESP) Quatro amigos, Pedro, Luísa, João e Rita, vão ao cinema, sentando-se em consecutivos na mesma fila. O número de maneiras que os quatro podem ficar dispostos de forma que Pedro e Luísa fiquem sempre juntos e João e Rita fiquem sempre juntos é\r\na) 2\r\nb) 4\r\nc) 8\r\nd) 16\r\ne) 24', 'c)8', ''),
(3, '(FURG/2008) Manoela decidiu escolher uma senha para seu e-mail trocando de lugar as letras do seu nome. O número de maneiras como ela pode fazer isso, considerando que a senha escolhida deve ser diferente do próprio nome, e\r\na) 817.\r\nb) 48.\r\nc) 5039.\r\nd) 23.\r\ne) 2519.', 'e)2519', ''),
(4, '(UFG/2010) Num episódio de uma série policial de televisão, um agente secreto encontra-se diante do desafio de descobrir a senha de quatro dígitos digitada no teclado numérico, instalado na porta de entrada de um laboratório. Para isso, o agente utiliza o seguinte artifício: borrifa um spray sobre o teclado, fazendo com que os algarismos recém-digitados para abrir a porta fiquem destacados, como mostra a figura. Para sua surpresa, apenas três dígitos são ressaltados pelo spray, indicando que um dos dígitos aparece duas vezes na senha. Com base nestas informações, a quantidade de sequências de quatro dígitos que podem ser encontradas utilizando o artifício do agente secreto é a seguinte:\r\na) 36 \r\nb) 24\r\nc) 16\r\nd) 13\r\ne) 4', 'a)36', ''),
(5, '(UFSM/2014) Para cuidar da saúde, muitas pessoas buscam atendimento em cidades maiores onde ha centros médicos especializados e hospitais mais equipados. Muitas vezes, o transporte de essas cidades e feito por vans disponibilizadas elas prefeituras. Em uma van com 10 assentos, viajarão 9 passageiros e o motorista. De quantos modos distintos os 9 assageiros podem ocupar suas poltronas na van?\r\na) 4.032.\r\nb) 36.288.\r\nc) 40.320.\r\nd) 362.880.\r\ne) 403.200', 'd) 362.880', ''),
(6, '6. (PUC-RS/2010) Uma melodia é uma sequência e notas musicais. Para compor um trecho de três notas musicais sem repeti-las, um músico pode utilizar as sete notas que existem na escala musical. O número de melodias diferentes possíveis de serem escritas é:\r\na) 3\r\nb) 21\r\nc) 35\r\nd) 210\r\ne) 5040', 'd)210', ''),
(7, '(PUC-RS/2011) Numa estante da Biblioteca, encontram-se cinco livros de Física Quântica de autores diferentes, seis livros de Física Médica de autores diferentes e quatro livros de Física Nuclear, também de autores diferentes. Um grupo de alunos, para realizar uma pesquisa, precisa consultar dois livros de Física Quântica, três livros de Física Médica e um livro de Física Nuclear. O número de escolhas possíveis para essa consulta é\r\na) 8400\r\nb) 800\r\nc) 204\r\nd) 144\r\ne) 34', 'b)800', ''),
(8, '(MACK) Uma classe tem 10 alunos e 5 alunas. Formam-se comissões de 4 alunos e 2 alunas. O número de comissões em que participa o aluno X e não participa a aluna Y é:\r\na) 1260\r\nb) 2100\r\nc) 840\r\nd) 504\r\ne) 336', 'd)504', ''),
(9, '(UERJ/2011) Ao refazer seu calendário escolar para o segundo semestre, uma escola decidiu repor algumas aulas em exatamente 4 dos 9 sábados disponíveis nos meses de outubro e novembro de 2009, com a condição de que não fossem utilizados 4 sábados consecutivos. Para atender às condições de reposição das aulas, o número total de conjuntos distintos que podem ser formados contendo 4 sábados é de:\r\na) 80\r\nb) 96\r\nc) 120\r\nd) 126', 'c)120', ''),
(10, '(UENP/2011) Fatorial de um número natural n (notação n!) é o produto dos números naturais de 1 a n, ou seja, n! = 1.2.3. ...(n – 1).n. O resultado da expressão E = 3 . 6 . 9 . 12 . ... . 24 é equivalente a:\r\na) 3.8!\r\nb) 3!.8!\r\nc) 38.8\r\nd) 38.8!\r\ne) 8³.3!', 'd)38.8!', ''),
(11, '(UNIFRA/2010) Dado o avanço da tecnologiae o aumento crescente da necessidade de códigos de segurança, muitas empresas usam sistemas de códigos para identificação de seus colaboradores, no acesso aos computadores. Considerando que, num sistema de senhas de uma empresa, as senhas são indicadas por duas vogais seguidas de dois dígitos, o número máximo de senhas que pode ser produzido nesse sistema é\r\na) 1500\r\nb) 2025\r\nc) 2450\r\nd) 2500\r\ne) 6500 ', 'd)2500', ''),
(12, '(UERJ/2011) Uma rede é formada de triângulos equiláteros congruentes, conforme a representação abaixo: Uma formiga se desloca do ponto A para o ponto B sobre os lados dos triângulos, percorrendo X caminhos distintos, cujos comprimentos totais são todos iguais a d. Sabendo que d corresponde ao menor valor possível para os comprimentos desses caminhos, X equivale a:\r\na)20 \r\nb) 15 \r\nc) 12 \r\nd) 10', 'd)2500', ''),
(13, '(UFSM/2008) O setor de nutrição de determinada cantina sugere, para uma refeição rica em carboidratos, 4 tipos de macarrão, 3 tipos de molho e 5 tipos de queijo. O total de opções para quem vai servir um tipo de macarrão, um tipo de molho e três tipos de queijo é\r\na) 2.5!\r\nb) 5!\r\nc) (5!)2\r\nd) 5!/2\r\ne) 2/5! ', 'b)15', ''),
(14, 'Quantos números de 4 algarismos contêm pelo menos um algarismo 8?\r\na) 3168 \r\nb) 5832 \r\nc) 9000 \r\nd) 3024 \r\ne) 6480', 'b)5!', ''),
(15, '(FURG/2006) Uma pizzaria permite que seusclientes escolham pizzas com 1, 2 ou 3 sabores diferentes dentre os 7 sabores que constam no cardápio. O número de pizzas diferentes oferecidas por essa pizzaria, considerando somente os tipos e número de sabores possíveis, é igual a\r\na) 210.\r\nb) 269. \r\nc) 63. \r\nd) 70. \r\ne) 98. ', 'c)63', ''),
(16, '(UNIFRA/2008) Num grupo constituído de 12 pessoas, das quais 5 são americanas, 4 são brasileiras e 3 são canadenses, deseja-se formar uma fila de forma que as pessoas do mesmo país fiquem sempre juntas. Nessa situação, o número de maneiras distintas de se organizar tal fila é igual a\r\na) 11!\r\nb) 3!(5!4!3!)\r\nc) 5!4!3!\r\nd) 11!/5!4!3!\r\ne) 2!(5!4!3!)', 'b)3!(5!4!3!)', ''),
(17, '(UPF/2005) O número de anagramas da palavra MELHOR, que começam e terminam por vogal, é definido por\r\na) P6\r\nb) P5 \r\nc) 4! \r\nd) 2.P6 \r\ne) 2.P4', 'd)2.P6', ''),
(18, '(UFSM) Para ter acesso a uma sala reservada, cada usuário recebe um cartão de identificação com 4 listras coloridas, de modo que qualquer cartão deve diferir de todos os outros pela natureza das cores ou pela ordem das mesmas nas listras. Operando com 5 cores distintas e observando que listras vizinhas não tenham a mesma cor, quantos usuários podem ser identificados?\r\na) 10 \r\nb) 20 \r\nc) 120 \r\nd) 320 \r\ne) 625', 'd)320', ''),
(19, '(UNIFRA/2014) Um Posto de Atendimento Médico atende em plantões de emergência, com equipes de 2 médicos, 2 enfermeiros, 4 técnicos de enfermagem e 2 funcionários para limpeza e atendimento. Sabendo que o referido posto dispõe de 4 médicos, 5 enfermeiros, 6 técnicos de enfermagem e 4 funcionários, o número de maneiras distintas com que é possível formar a equipe de atendimento é\r\na) 37.\r\nb) 1.800.\r\nc) 5.200.\r\nd) 5.400.\r\ne) 6.912', 'd)5.400', ''),
(20, 'As embalagens dos produtos vendidos por uma empresa apresentam uma sequência formada por barras verticais: quatro de de largura 1,5 mm; três de largura 0,5 mm e duas de largura 0,25 mm como na figura abaixo. Cada sequência indica o preço de um produto. Quantos preços diferentes podem ser indicados por essas nove barras?\r\na) 1260\r\nb) 1150\r\nc) 930\r\nd) 815\r\ne) 536', 'a)1260', ''),
(21, 'Considere o período e as afirmações que se seguem:\r\nNa rua, viam-se os manifestantes que pediam por eleições diretas.\r\nI. O período é composto por subordinação.\r\nII. Existem três orações no período.\r\nEstá correto o que se afirma em:\r\na)somente I\r\nb)somente II\r\nc)I e II\r\nd)I e II\r\ne)Nenhuma', 'a)', ''),
(22, 'Em qual opção o conetivo foi empregado adequadamente, de acordo com a norma-padrão da língua portuguesa?\r\na)Até a pesquisa mais brilhante está condicionada às ferramentas que se dispõe em cada momento.\r\nb)O primeiro avanço tecnológico é a cápsula pressurizada atrelada a um balão de hélio a que ele será levado até a estratosfera.\r\nc)Extremamente triste com a condição que se encontra, ele passa a se culpar [...]\r\nd)De repente, é a solução que todos gostariam.\r\ne)Ninguém discorda de que é imperativo para o país ampliar o acesso ao ensino superior, em que somente ingressa hoje um de cada quatro jovens.', 'e)', ''),
(23, 'Um dos complexos estuarinos mais importantes do país \r\nestá morrendo. Em parte das lagoas já não se encontram mais as grandes e suculentas ostras, os siris tradicionais por seu coral e também o caranguejo. Sem falar na ausência que mais atinge os pescadores, a dos próprios peixes. Eles afirmam que existem mais pescadores do que peixe para ser pescado. \r\nNo trecho da Mundaú, que vai do cais da lancha no dique estrada até ao papódromo, não existe quase mais vida lacunar. É só lixo, e lixo, e lixo. E os peixes que ainda sobrevivem não são bons para o consumo  (O Jornal, 28/02/2010).\r\nConsiderando-se aspectos da norma-padrão da língua portuguesa, a oração Eles afirmam que existem mais pescadores do que peixe aceita a seguinte reescrita:\r\na)Eles afirmam: há mais pescadores do que peixe.\r\nb)Eles afirmam que devem haver mais pescadores do que peixe.\r\nc)Eles afirmam: existe mais pescadores do que peixe\r\nd)Eles afirmam que deve existir mais pescadores do que peixe\r\ne)Afirmam eles, que existem', 'a)', ''),
(24, 'Essa indagação perplexa é o lugar-comum  de cada história de gente. \r\nA palavra sublinhada na frase acima faz o plural da mesma forma que, EXCETO:\r\na)carro-forte\r\nb)cachorro-quente\r\nc)obra-prima\r\nd)ave-maria\r\ne)curto-circuito', 'd)', ''),
(25, 'A palavra se, no período abaixo, é, respectivamente, A prancha desliga-se automaticamente se alguém toca no \r\nequipamento ou se ele entra em contato com outro metal.\r\na)objeto direto, conjunção subordinativa, conjunção subordinativa\r\nb)partícula apassivadora, conjunção subordinativa, partícula de reciprocidade.\r\nc)partícula expletiva, partícula de indeterminação do sujeito, partícula apassivadora\r\nd)partícula integrante do verbo, partícula de indeterminação do sujeito, conjunção subordinativa\r\ne)objeto direto, conjunção subordinativa, partícula de indeterminação do sujeito', 'a)', ''),
(26, 'Já tive muitas capas e infinitos guarda-chuvas, mas acabei me cansando de tê-los e perdê-los; há anos vivo sem nenhum desses abrigos, e também como toda gente, sem chapéu (Rubem Braga).\r\ntê-los e perdê-los, disse o autor. Os pronomes nesse trecho são, respectivamente,\r\na)objeto direto; adjunto adverbial\r\nb)objeto direto; objeto indireto\r\nc)objeto indireto; objeto indireto\r\nd)adjunto adnominal; objeto direto\r\ne)objeto direto; objeto direto', 'e)', ''),
(27, '(Msconcursos - 2012 - Prefeitura de Pelotas - RS) Assinale a alternativa em que a concordância nominal esteja de acordo com a variedade padrão:\r\na)Fui eu quem comeu todo o chocolate.\r\nb)Hoje, tu e ele mentiu para o gerente.\r\nc)A multidão estavam ansiosa para o início do show.\r\nd)Às vezes, a gente ficamos sem ação.', 'a)', ''),
(28, 'Considere os períodos:\r\nI. A Constituição é  a lei suprema, todos devemos obedecê-la.\r\nII. Preferimos ficar em casa do que sair.\r\nDe acordo com a norma culta:\r\na)somente I está correta\r\nb)somente II está correta\r\nc)I e II estão corretas\r\nd)nenhuma está correta', 'd)', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assunto`
--
ALTER TABLE `assunto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prova`
--
ALTER TABLE `prova`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questoes`
--
ALTER TABLE `questoes`
  ADD PRIMARY KEY (`idquestao`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assunto`
--
ALTER TABLE `assunto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prova`
--
ALTER TABLE `prova`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questoes`
--
ALTER TABLE `questoes`
  MODIFY `idquestao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
