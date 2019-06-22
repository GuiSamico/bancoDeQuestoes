-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 22-Jun-2019 às 15:40
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

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

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `login` varchar(20) NOT NULL,
  `senha` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `nome`, `login`, `senha`) VALUES
(1, 'Fred', 'henrique', 'c0f70e034774ebd1d92ae507c564e81e');

-- --------------------------------------------------------

--
-- Estrutura da tabela `assunto`
--

DROP TABLE IF EXISTS `assunto`;
CREATE TABLE IF NOT EXISTS `assunto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) DEFAULT NULL,
  `disciplina` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `disciplina`;
CREATE TABLE IF NOT EXISTS `disciplina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

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

DROP TABLE IF EXISTS `professor`;
CREATE TABLE IF NOT EXISTS `professor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `login` varchar(20) DEFAULT NULL,
  `senha` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id`, `nome`, `login`, `senha`) VALUES
(3, 'Fred Henrique', 'henrique', 'c0f70e034774ebd1d92ae507c564e81e'),
(2, 'Matheus Vasco', 'matheuzin', 'e56b6eea9b0bc782bbb9ea6098ead641'),
(4, 'Pethe Souza', 'pethin', '5592f5f6cf8b98a3fb91540a1708e619'),
(5, 'Maria Irilene', 'irilene', '5621455638ff13eaf716eb1b4b54f428');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prova`
--

DROP TABLE IF EXISTS `prova`;
CREATE TABLE IF NOT EXISTS `prova` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `questoes` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `questoes`
--

DROP TABLE IF EXISTS `questoes`;
CREATE TABLE IF NOT EXISTS `questoes` (
  `idquestao` int(11) NOT NULL AUTO_INCREMENT,
  `questao` varchar(1000) NOT NULL,
  `resposta` varchar(20) NOT NULL,
  `img` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`idquestao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

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
(28, 'Considere os períodos:\r\nI. A Constituição é  a lei suprema, todos devemos obedecê-la.\r\nII. Preferimos ficar em casa do que sair.\r\nDe acordo com a norma culta:\r\na)somente I está correta\r\nb)somente II está correta\r\nc)I e II estão corretas\r\nd)nenhuma está correta', 'd)', ''),
(29, 'Quanto vale 1+1?\r\na) 1\r\nb) 2\r\nc) 3\r\nd) 0', 'b) 2', NULL),
(31, 'Sobre a constituicao das primeiras estruturas urbanas e correto afirmar:\r\n\r\na) Durante o surgimento das primeiras formacoes urbanas os homens viviam em cavernas.\r\n\r\nb) Nas primeiras formacoes urbanas apareceram instrumentos rudimentares produzidos pelo homem.\r\n\r\nc) O inicio das primeiras cidades ja indicava um processo de sedentarizacao do homem, proporcionado pela Revolucao Agricola.\r\n\r\nd) Quando surgiram as primeiras formacoes urbanas o homem era essencialmente cacador e coletor.\r\n\r\ne) Na formacao das primeiras cidades o homem foi ganhando capacidade de agarrar-se em arvores, tornando-se bipedes.', 'c)', NULL),
(32, 'A transicao do Paleolitico Superior para o Neolitico (entre 10 000 a.C. e 7000 a.C.) foi acompanhada por algumas mudancas basicas para a humanidade. Entre essas, poderiamos citar:\r\n\r\na) o aparecimento da linguagem falada;\r\n\r\nb) a domesticacao dos animais e plantas, isto e o aparecimento da agricultura e do pastoreio;\r\n\r\nc) o aparecimento da magia e da arte;\r\n\r\nd) o povoamento de amplas areas antes nao povoadas, como a Europa Central e Ocidental;\r\n\r\ne) o aparecimento de varios novos instrumentos, como a agulha de osso, os arpoes, os anzois, a machadinha, a lanca e a faca.', 'b)', NULL),
(33, '\"Ja se afirmou ser a Pre-Historia uma continuidade da Historia Natural, havendo uma analogia entre a evolucao organica e o progresso da cultura\"\r\n\r\nSobre a Pre-historia, qual das alternativas a seguir e incorreta?\r\n\r\na) Varias ciencias auxiliam no estudo, como a antropologia, a arqueologia e a quimica.\r\n\r\nb) A Pre-historia pode ser dividida em Paleolitico e Neolitico, no que se refere ao processo tecnico de trabalhar a pedra.\r\n\r\nc) Sobre o Paleolitico, podemos afirmar que foi o periodo de grande desenvolvimento artistico, cujo exemplo sao as pinturas antropomorfas e zoomorfas realizadas nas cavernas.\r\n\r\nd) O Neolitico apresentou um desenvolvimento artistico diferente do Paleolitico, atraves dos tracos geometricos do desenho e da pintura.\r\n\r\ne) Os primeiros seres semelhantes ao homem foram o Australopithecus e o Homem de Java que eram bem mais adaptados que o Homem de Neanderthal.', 'e)', NULL),
(34, 'Indique as alternativas corretas:\r\nI) A palavra moralidade vem do latim \"mos\" ou \"moris\" e significa \"costumes\".\r\nII) As palavras \"etica\" e \"moralidade\" sao sinonimas e correspondem a mesma ideia.\r\nIII) As normas morais nao variam a depender da cultura e do periodo historico.\r\nIV) A palavra \"etica\" vem do grego ethikos e significa modos de ser.\r\n\r\nAs corretas sao: \r\na)  I e IV\r\nb) I e II\r\nc) III e IV\r\nd) II e IV', 'a)', NULL),
(35, '\"As normas morais variam a depender da cultura e do periodo historico. Tambem podem ser questionadas e destituidas\". Isso significa que:\r\n\r\na) Nos nao podemos pensar sobre as normas morais que sao impostas;\r\n\r\nb) Nos temos que concordar com as normas morais porque sao as normas da nossa cultura;\r\n\r\nc) A moral e um conjunto de valores pelos quais as pessoas guiam seus comportamentos e, por isso, esta sujeita a mudancas a depender do pais e do momento historico em que as pessoas estao inseridas.\r\n\r\nd) Nao agimos de forma \"moral\" se obedecermos as regras que a sociedade estabelece.', 'c)', NULL),
(36, 'Como podemos diferenciar \"moral\" e \"Ã©tica\"?\r\n\r\na) Nao podemos diferenciar, sao palavras sinonimas.\r\n\r\nb) Moral e um conjunto de valores, e Etica e a reflexao sobre esses valores.\r\n\r\nc) Moral e a pratica da Etica no nosso dia a dia.\r\n\r\nd) Moral e sinonimo de \"Ã©tica aplicada\".', 'b)', NULL),
(37, 'Leia o fragmento abaixo:\r\n\r\n\"Os homens nao sao maus, mas submissos aos seus interesses... Portanto, nao e da maldade dos homens que e preciso se queixar, mas da ignorancia dos legisladores que sempre colocam o interesse particular em oposicao ao geral. Ate hoje, as mais belas maximas morais nao conseguem traduzir nenhuma mudanca nos costumes das nacoes. Qual e a causa? E que os vicios de um povo estao, se ouso falar, escondidos no fundo de sua legislacao.\" Helvetius\r\n\r\nQuais sao as ideias principais contidas no fragmento acima?\r\n\r\na) Nao ha nenhuma relacao entre as leis e os costumes, pois saos os homens que fazem as leis que os beneficiam.\r\n\r\nb) Para limitar os interesses humanos particulares, e preciso haver leis que prefiram os interesses gerais.\r\n\r\nc) Os homens buscam seus interesses e isso nao significa que eles sejam maus;\r\n\r\nd) Ha uma relacao entre as leis e os costumes, pois as leis permitem ou impedem que os homens cometam erros.', 'b)', NULL),
(38, 'E a camada da atmosfera mais proxima da superficie terrestre, com uma altitude que varia entre 12 e 18 km. Nela se concentra cerca de 80% dos gases atmosfericos.\r\n\r\nEstamos falando da:\r\na) Troposfera\r\nb) Ionosfera\r\nc) Mesosfera\r\nd) Estratosfera\r\ne) Biosfera', 'a)', NULL),
(39, 'Dentre os elementos abaixo enumerados, assinale aquele que nao e um fenomeno atmosferico:\r\n\r\na) Variacao de temperatura\r\n\r\nb) Indice de umidade\r\n\r\nc) Formacao de nuvens\r\n\r\nd) Derretimento de geleiras\r\n\r\ne) Formacao de neblinas', 'd)', NULL),
(40, 'Em relacao aos graficos dos movimentos progressivos e retrogrados, assinale o que for correto:\r\n\r\na) no movimento progressivo, a reta da velocidade e uma reta descendente.\r\n\r\nb) no movimento regressivo, a reta da velocidade e uma reta ascendente.\r\n\r\nc) no movimento regressivo, o grafico de posicao em funcao do tempo e uma reta ascendente.\r\n\r\nd) no movimento progressivo, o grafico de posicao em funcao do tempo e uma reta descendente.\r\n\r\ne) no movimento progressivo, a reta da velocidade e paralela ao eixo x e encontra-se acima do eixo das abscissas.', 'e)', NULL),
(41, 'Um movel desloca-se de acordo com a seguinte funcao horaria da posicao:\r\nS = 10 + 2.t\r\nAssinale a alternativa que esta correta em relacao ao movimento desse corpo:\r\n\r\na) o movimento e acelerado, sua aceleracao vale 10 m/s2, e a posicao inicial do movimento e de 2 m/s.\r\n\r\nb) o movimento e retrogrado, a posicao inicial do movimento e 2 m, e a velocidade do corpo e de 10 m/s.\r\n\r\nc) o movimento e progressivo, a posicao inicial do movimento e 10 m, e a velocidade do movel e de 2 m/s.\r\n\r\nd) o movimento e retardado, a posicao inicial e de 10 m, e a velocidade e de 2 m/s.\r\n\r\ne) o movimento e uniformemente variado, a posicao inicial e de 10 m, e a aceleracao e de 2 m/s.', 'c)', NULL),
(42, 'A Biologia Celular, ou citologia, e a parte da Biologia responsavel por estudar o funcionamento das celulas e suas estruturas. Analise as alternativas a seguir e marque aquela que indica corretamente o nome do pesquisador que denominou essas estruturas funcionais dos seres vivos de celulas.\r\n\r\na) Theodor Schwann.\r\n\r\nb) Mathias Schleiden.\r\n\r\nc) Rudolf Virchow.\r\n\r\nd) Robert Hooke.\r\n\r\ne) Walther Flemming.', 'd)', NULL),
(43, 'A Teoria Celular pode ser resumida, atualmente, em tres pontos principais. Analise e marque a alternativa que nao apresenta uma afirmacao relacionada com essa teoria.\r\n\r\na) Todos os seres vivos sao formadas por uma ou mais celulas.\r\n\r\nb) Todas as celulas sao formadas por membrana, citoplasma e nucleo.\r\n\r\nc) As celulas sao as unidades funcionais dos organismos vivos.\r\n\r\nd) Uma celula so pode originar-se de outra existente.', 'b)', NULL),
(44, 'Costuma-se dizer que as celulas sao formadas por membrana, citoplasma e nucleo. Entretanto, nao sao todas as celulas que apresentam um nucleo definido e delimitado por membrana nuclear. Baseando-se nisso, o mais correto seria afirmar que todas as celulas possuem membrana, citoplasma e material genetico.\r\nAs celulas que apresentam nucleo definido sao chamadas de\r\n\r\na) autotroficas.\r\n\r\nb) heterotroficas.\r\n\r\nc) eucarioticas.\r\n\r\nd) procarioticas.\r\n\r\ne) termofilas.', 'c)', NULL),
(45, 'A membrana plasmatica e encontrada em todas as celulas e apresenta como funcao principal controlar a entrada e a saida de substancias no interior dessa estrutura. Essa membrana e formada por uma bicamada fosfolipidica onde estao inseridas algumas proteinas. O modelo que descreve a estrutura da membrana plasmatica recebe o nome de:\r\na) modelo de permeabilidade seletiva.\r\n\r\nb) modelo de organizacao membranar.\r\n\r\nc) modelo fosfolipidico.\r\n\r\nd) modelo do mosaico fluido.\r\n\r\ne) modelo celular.', 'd)', NULL),
(46, 'A estrategia de obtencao de plantas transgenicas pela insercao de transgenes em cloroplastos, em substituicao a metodologia classica de insercao do transgene no nucleo da celula hospedeira, resultou no aumento quantitativo da producao de proteinas recombinantes com diversas finalidades biotecnologicas. O mesmo tipo de estrategia poderia ser utilizada para produzir proteinas recombinantes em celulas de organismos eucarioticos nao fotossintetizantes, como as leveduras, que sao usadas para producao comercial de varias proteinas recombinantes e que podem ser cultivadas em grandes fermentadores.\r\n\r\nConsiderando a estrategia metodologica descrita, qual organela celular poderia ser utilizada para insercao de transgenes em leveduras?\r\na) Lisossomo.\r\nb) Mitocondria.\r\nc) Peroxissomo.\r\nd) Complexo golgiense.\r\ne) Reticulo endoplasmatico.', 'b)', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
