-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Ago-2020 às 22:27
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fluxo_wid`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `categoria_id` int(11) NOT NULL,
  `categoria_nome` varchar(45) NOT NULL,
  `categoria_ativa` tinyint(1) DEFAULT NULL,
  `categoria_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`categoria_id`, `categoria_nome`, `categoria_ativa`, `categoria_data_alteracao`) VALUES
(1, 'Gráfica', 1, '2020-08-17 16:48:38');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(11) NOT NULL,
  `cliente_data_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `cliente_tipo` tinyint(1) DEFAULT NULL,
  `cliente_nome` varchar(45) NOT NULL,
  `cliente_sobrenome` varchar(150) NOT NULL,
  `cliente_data_nascimento` date NOT NULL,
  `cliente_cpf_cnpj` varchar(20) NOT NULL,
  `cliente_rg_ie` varchar(20) NOT NULL,
  `cliente_email` varchar(50) NOT NULL,
  `cliente_telefone` varchar(20) NOT NULL,
  `cliente_celular` varchar(20) NOT NULL,
  `cliente_cep` varchar(10) NOT NULL,
  `cliente_endereco` varchar(155) NOT NULL,
  `cliente_numero_endereco` varchar(20) NOT NULL,
  `cliente_bairro` varchar(45) NOT NULL,
  `cliente_complemento` varchar(145) NOT NULL,
  `cliente_cidade` varchar(105) NOT NULL,
  `cliente_estado` varchar(2) NOT NULL,
  `cliente_ativo` tinyint(1) NOT NULL DEFAULT 1,
  `cliente_obs` tinytext DEFAULT NULL,
  `cliente_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `cliente_data_cadastro`, `cliente_tipo`, `cliente_nome`, `cliente_sobrenome`, `cliente_data_nascimento`, `cliente_cpf_cnpj`, `cliente_rg_ie`, `cliente_email`, `cliente_telefone`, `cliente_celular`, `cliente_cep`, `cliente_endereco`, `cliente_numero_endereco`, `cliente_bairro`, `cliente_complemento`, `cliente_cidade`, `cliente_estado`, `cliente_ativo`, `cliente_obs`, `cliente_data_alteracao`) VALUES
(1, '2020-08-17 02:03:19', 1, 'Donizetti Reis', 'CRM Suportes', '0000-00-00', '927.750.720-97', '', 'vendas_crm@yahoo.com.br', '(19) 99162-4997', '(19) 99162-4997', '13972-090', 'Avenida São Paulo, Jardim Magali', '88', 'Vila Ilze', '', 'Itapira', 'SP', 1, '', '2020-08-17 02:03:49'),
(5, '2020-08-17 02:06:05', 2, 'Rubiana', 'Uniformes e Cia', '0000-00-00', '32.886.835/0001-87', '', 'rubianarizzibr@hotmail.com', '', '(19) 99393-5593', '13974-330', 'Rua General Carneiro', '214', 'Santa Cruz', '', 'Itapira', 'SP', 1, '', '2020-08-17 02:06:05'),
(6, '2020-08-17 02:10:41', 1, 'Flavio', 'Sette Embalagens', '0000-00-00', '641.133.490-02', '', 'setteembalagens@hotmail.com', '', '(19) 99185-5822', '13970-700', 'Rua Andorinhas', '15', 'Prados', '', 'Itapira', 'SP', 1, '', '2020-08-17 12:52:56'),
(7, '2020-08-17 02:12:25', 1, 'Lais', 'LM Estampas', '0000-00-00', '938.298.550-60', '', 'laisrecchia@hotmail.com', '', '(19) 99850-7263', '13974-502', 'Rua Anita Garibalde', '38', 'Boa Vista', '', 'Itapira', 'SP', 1, '', '2020-08-17 02:12:25'),
(8, '2020-08-17 12:37:03', 2, 'Lar São José', 'Lar São José', '0000-00-00', '49.915.549/0001-03', 'Isenta', 'larsaojoseita@gmail.com', '(19) 99239-2313', '(19) 99982-8469', '13974-290', 'Rua São José', '231', 'Nova Itapira', '', 'Itapira', 'SP', 1, '', '2020-08-17 12:37:03'),
(9, '2020-08-17 12:42:24', 2, 'KR Saúde', 'KR Saúde', '0000-00-00', '26.371.527/0002-05', '', 'gerente@krsaude.com.br', '(19) 98828-4830', '(19) 99685-1351', '13600-060', 'Rua Julio Mesquita', '711', 'Centro', '', 'Araras', 'SP', 1, 'Responsável pela parte financeira do site https://tranquilitycommodities.com.br/ -&gt; mensalidade 100,00\r\nkrsaude.com.br -&gt; mensalidade 50,00', '2020-08-17 12:42:24'),
(10, '2020-08-17 12:45:57', 2, 'Edgar', 'Custom Parts', '0000-00-00', '32.738.172/0001-53', '', 'edgaraquino584@gmail.com', '', '(19) 98156-1825', '13970-140', 'RUA FRANCISCO GLICÉRIO', '494', 'Centro', '', 'Itapira', 'SP', 1, '', '2020-08-17 12:45:57'),
(11, '2020-08-17 12:49:05', 2, 'Marcos', 'Ejecy', '0000-00-00', '21.291.541/0001-96', '', 'marcos@ejecty.com.br', '(35) 9274-1645', '(19) 99808-7035', '37590-000', 'avenida minas gerais', '767', 'vila rica', '', 'JACUTINGA', 'MG', 1, '17/08 = valor pago 8,75 hora', '2020-08-17 12:49:05'),
(12, '2020-08-17 12:52:42', 2, 'JOTA F. TELECOMUNICACOES', 'JOTA F. TELECOMUNICACOES', '0000-00-00', '10.847.222/0001-06', '', 'victorfreire@jotaftelecom.com.br', '', '(19) 98878-0623', '13973-255', 'AVENIDA BRASIL', '201', 'parque felicidade', '', 'Itapira', 'SP', 1, '', '2020-08-17 12:52:42'),
(13, '2020-08-17 12:56:10', 2, 'Andre', 'Imperio Cimenticios', '0000-00-00', '41.312.546/0001-65', '', 'andremacos@hotmail.com', '', '(35) 9143-2044', '37590-000', 'Rodovia MG-290', '80', 'Kilometro 80', '', 'jacutinga', 'MG', 1, '', '2020-08-17 12:56:10'),
(14, '2020-08-17 12:57:37', 1, 'Alexandre', 'Metallar Suportes', '0000-00-00', '518.960.960-00', '', 'aaa@gmail.com', '', '(19) 98202-2433', '11111-111', '...', '...', '...', '', 'Itapira', 'SP', 1, '', '2020-08-17 12:57:37'),
(15, '2020-08-17 12:58:53', 1, 'Alessandra', 'Embalagens', '0000-00-00', '469.956.010-50', '', 'alesembalagens@hotmail.com', '', '(19) 99246-6906', '11111-111', '....', '...', '....', '', 'Itapira', 'SP', 1, '', '2020-08-17 12:58:53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas_pagar`
--

CREATE TABLE `contas_pagar` (
  `conta_pagar_id` int(11) NOT NULL,
  `conta_pagar_fornecedor_id` int(11) DEFAULT NULL,
  `conta_pagar_data_vencto` date DEFAULT NULL,
  `conta_pagar_data_pagamento` datetime DEFAULT NULL,
  `conta_pagar_valor` varchar(15) DEFAULT NULL,
  `conta_pagar_status` tinyint(1) DEFAULT NULL,
  `conta_pagar_obs` tinytext DEFAULT NULL,
  `conta_pagar_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='		';

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas_receber`
--

CREATE TABLE `contas_receber` (
  `conta_receber_id` int(11) NOT NULL,
  `conta_receber_cliente_id` int(11) NOT NULL,
  `conta_receber_data_vencto` date DEFAULT NULL,
  `conta_receber_data_pagamento` datetime DEFAULT NULL,
  `conta_receber_valor` varchar(20) DEFAULT NULL,
  `conta_receber_status` tinyint(1) DEFAULT NULL,
  `conta_receber_obs` tinytext DEFAULT NULL,
  `conta_receber_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `formas_pagamentos`
--

CREATE TABLE `formas_pagamentos` (
  `forma_pagamento_id` int(11) NOT NULL,
  `forma_pagamento_nome` varchar(45) DEFAULT NULL,
  `forma_pagamento_aceita_parc` tinyint(1) DEFAULT NULL,
  `forma_pagamento_ativa` tinyint(1) DEFAULT NULL,
  `forma_pagamento_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `formas_pagamentos`
--

INSERT INTO `formas_pagamentos` (`forma_pagamento_id`, `forma_pagamento_nome`, `forma_pagamento_aceita_parc`, `forma_pagamento_ativa`, `forma_pagamento_data_alteracao`) VALUES
(1, 'Cartão de crédito ', 1, 1, '2020-08-12 00:57:17'),
(2, 'Dinheiro', 2, 2, '2020-08-11 21:20:50'),
(3, 'Boleto bancário', 1, 1, '2020-08-11 21:20:43'),
(4, 'Transferencia Bancaria', 2, 1, '2020-08-11 21:25:12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

CREATE TABLE `fornecedores` (
  `fornecedor_id` int(11) NOT NULL,
  `fornecedor_data_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `fornecedor_razao` varchar(200) DEFAULT NULL,
  `fornecedor_nome_fantasia` varchar(145) DEFAULT NULL,
  `fornecedor_cnpj` varchar(20) DEFAULT NULL,
  `fornecedor_ie` varchar(20) DEFAULT NULL,
  `fornecedor_telefone` varchar(20) DEFAULT NULL,
  `fornecedor_celular` varchar(20) DEFAULT NULL,
  `fornecedor_email` varchar(100) DEFAULT NULL,
  `fornecedor_contato` varchar(45) DEFAULT NULL,
  `fornecedor_cep` varchar(10) DEFAULT NULL,
  `fornecedor_endereco` varchar(145) DEFAULT NULL,
  `fornecedor_numero_endereco` varchar(20) DEFAULT NULL,
  `fornecedor_bairro` varchar(45) DEFAULT NULL,
  `fornecedor_complemento` varchar(45) DEFAULT NULL,
  `fornecedor_cidade` varchar(45) DEFAULT NULL,
  `fornecedor_estado` varchar(2) DEFAULT NULL,
  `fornecedor_ativo` tinyint(1) DEFAULT 1,
  `fornecedor_obs` tinytext DEFAULT NULL,
  `fornecedor_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedores`
--

INSERT INTO `fornecedores` (`fornecedor_id`, `fornecedor_data_cadastro`, `fornecedor_razao`, `fornecedor_nome_fantasia`, `fornecedor_cnpj`, `fornecedor_ie`, `fornecedor_telefone`, `fornecedor_celular`, `fornecedor_email`, `fornecedor_contato`, `fornecedor_cep`, `fornecedor_endereco`, `fornecedor_numero_endereco`, `fornecedor_bairro`, `fornecedor_complemento`, `fornecedor_cidade`, `fornecedor_estado`, `fornecedor_ativo`, `fornecedor_obs`, `fornecedor_data_alteracao`) VALUES
(3, '2020-08-17 01:59:04', 'WID Solution', 'WID Solution', '11.111.111/1111-11', '', '', '(19) 99760-2942', 'contato@widsolution.com.br', 'Whatsapp', '13972-090', 'Av. São Paulo', '88', 'Vila Ilze', NULL, 'Itapira', 'SP', 1, 'www.widsolution.com.br', '2020-08-17 01:59:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'vendedor', 'Vendedores');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

CREATE TABLE `marcas` (
  `marca_id` int(11) NOT NULL,
  `marca_nome` varchar(45) NOT NULL,
  `marca_ativa` tinyint(1) DEFAULT NULL,
  `marca_data_alteracao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `marcas`
--

INSERT INTO `marcas` (`marca_id`, `marca_nome`, `marca_ativa`, `marca_data_alteracao`) VALUES
(1, 'ZAP', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem_tem_servicos`
--

CREATE TABLE `ordem_tem_servicos` (
  `ordem_ts_id` int(11) NOT NULL,
  `ordem_ts_id_servico` int(11) DEFAULT NULL,
  `ordem_ts_id_ordem_servico` int(11) DEFAULT NULL,
  `ordem_ts_servico_descricao_servico` varchar(255) DEFAULT NULL,
  `ordem_ts_quantidade` int(11) DEFAULT NULL,
  `ordem_ts_valor_unitario` varchar(45) DEFAULT NULL,
  `ordem_ts_valor_desconto` varchar(45) DEFAULT NULL,
  `ordem_ts_valor_total` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Tabela de relacionamento entre as tabelas servicos e ordem_servico';

--
-- Extraindo dados da tabela `ordem_tem_servicos`
--

INSERT INTO `ordem_tem_servicos` (`ordem_ts_id`, `ordem_ts_id_servico`, `ordem_ts_id_ordem_servico`, `ordem_ts_servico_descricao_servico`, `ordem_ts_quantidade`, `ordem_ts_valor_unitario`, `ordem_ts_valor_desconto`, `ordem_ts_valor_total`) VALUES
(198, 8, 15, 'luxus', 2, ' 5.00', '0 ', ' 10.00'),
(199, 6, 15, 'day modas', 1, ' 20.00', '0 ', ' 20.00'),
(200, 6, 15, 'oticas look', 1, ' 20.00', '0 ', ' 20.00'),
(201, 6, 15, 'ponta +', 1, ' 20.00', '0 ', ' 20.00'),
(202, 6, 15, 'vibe shop', 1, ' 20.00', '0 ', ' 20.00'),
(203, 6, 15, 'alteração layout luxus', 1, ' 10.00', '0 ', ' 10.00'),
(204, 8, 15, '2 day modas / 1 ro alves / 1 ponto +', 4, ' 5.00', '0 ', ' 20.00'),
(211, 6, 18, NULL, 1, ' 40.00', '0 ', ' 40.00'),
(212, 6, 19, NULL, 1, ' 20.00', '0 ', ' 20.00'),
(213, 6, 19, NULL, 1, ' 10.00', '0 ', ' 10.00'),
(214, 6, 19, NULL, 1, ' 30.00', '0 ', ' 30.00'),
(215, 6, 16, 'uefa super cup', 1, ' 20.00', '0 ', ' 20.00'),
(216, 6, 16, 'nossa senhora ', 1, ' 25.00', '0 ', ' 25.00'),
(217, 9, 14, 'Mundo Bita', 1, ' 10.00', '0 ', ' 10.00'),
(218, 5, 14, 'Trevo Veiculos', 1, ' 10.00', '0 ', ' 10.00'),
(219, 5, 14, 'Molão Express', 1, ' 10.00', '0 ', ' 10.00'),
(220, 6, 14, 'Esportes em casa / barbeiro tossini / nomes adidas', 1, ' 15.00', '0 ', ' 15.00'),
(221, 5, 14, 'Olimpikus Nova Itapira', 1, ' 10.00', '0 ', ' 10.00'),
(222, 9, 14, 'Da Horta', 1, ' 5.00', '0 ', ' 5.00'),
(223, 5, 14, 'Vidas Negras Importam Botafogo', 1, ' 10.00', '0 ', ' 10.00'),
(224, 9, 14, 'Posto Arena / Relevo', 1, ' 10.00', '0 ', ' 10.00'),
(225, 5, 14, 'Escritorio Ita Fic', 1, ' 10.00', '0 ', ' 10.00'),
(226, 9, 14, 'Flora Panhan', 1, ' 5.00', '0 ', ' 5.00'),
(227, 5, 14, 'Now United', 1, ' 5.00', '0 ', ' 5.00'),
(228, 5, 14, 'Remover fundo Zeni', 1, ' 5.00', '0 ', ' 5.00'),
(229, 5, 14, 'Logo Carvão Mariana', 1, ' 15.00', '0 ', ' 15.00'),
(230, 5, 14, 'BC Serralheria', 1, ' 10.00', '0 ', ' 10.00'),
(231, 7, 14, 'bone la casa de pastel e mascara agro julio', 1, ' 2.00', '0 ', ' 2.00'),
(232, 5, 14, 'Logo scapex', 1, ' 10.00', '0 ', ' 10.00'),
(233, 7, 14, 'Mascara agro barão (1) /viana (1) / d dione (1) / toledo metais (1)/ papel timbrado (5) /  nacional gas (3)', 1, ' 12.00', '0 ', ' 12.00'),
(234, 7, 14, 'mascara aquarismo (1) / alf (2) / santa fe (1) / iori (1) / ad itapira (1) / mecanica soares (1) / elite pinturas (2) /amiguitos (1) / agromel (3)', 1, ' 13.00', '0 ', ' 13.00'),
(235, 7, 14, 'Mascara Eletronica central (2) / cantinho do espeto (2) / vingadores (1)', 1, ' 5.00', '0 ', ' 5.00'),
(236, 6, 14, 'mascara zana capelli (1) / logo doril (10) / alba massas (10) / psv(5) / hr (1) / marquinho camiseta (5) / café coppo (1)', 1, ' 33.00', '0 ', ' 33.00'),
(237, 7, 14, 'mascara usinagem (1) / joselma santana (1) / agro pires (1) / cantinho das unhas (1) / micropack (1) / transluz (1)', 1, ' 6.00', '0 ', ' 6.00'),
(238, 6, 14, 'layout coc 3º (10) / cristalia (3) /  marquinho vetor (10)', 1, ' 23.00', '0 ', ' 23.00'),
(239, 6, 14, 'viana camiseta (5) / mascara hotel apore (1) / itaplacas camiseta e mascara (6) / funeraria são jose (1) / frutatem(1)   ', 1, ' 14.00', '0 ', ' 14.00'),
(240, 5, 14, 'logo s lima usinagem 10', 1, ' 10.00', '0 ', ' 10.00'),
(241, 6, 14, 'Santa catarina (10) / waffles (2) / sanjer (1) / secretaria da educação (1) / ajeita pa nois (1) ', 1, ' 15.00', '0 ', ' 15.00'),
(242, 5, 14, 'Mascara Penha (2) / máscara + logo Fazenda boa vista (11)', 1, ' 13.00', '0 ', ' 13.00'),
(243, 5, 14, 'lf moveis planejados (10)', 1, ' 10.00', '0 ', ' 10.00'),
(244, 6, 14, 'Camiseta Talento (10) / mascara marchioretto (1)', 1, ' 11.00', '0 ', ' 11.00'),
(245, 7, 14, 'mascara pia (1) / colete rofatto (5)', 1, ' 6.00', '0 ', ' 6.00'),
(246, 5, 14, 'vetor time paulista fc', 1, ' 10.00', '0 ', ' 10.00'),
(247, 7, 14, 'mascara touch cell(1) / nomes (2)', 1, ' 3.00', '0 ', ' 3.00'),
(248, 7, 14, 'mascara lacerda', 1, ' 1.00', '0 ', ' 1.00'),
(249, 5, 14, 'santec', 1, ' 10.00', '0 ', ' 10.00'),
(250, 7, 14, 'anderson 2 / brollezi 2 / kanguru 1 / doces sensacoes 2 / feaco 3 / nucci 1 / marcelo 1 /', 1, ' 12.00', '0 ', ' 12.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordens_servicos`
--

CREATE TABLE `ordens_servicos` (
  `ordem_servico_id` int(11) NOT NULL,
  `ordem_servico_forma_pagamento_id` int(11) DEFAULT NULL,
  `ordem_servico_cliente_id` int(11) DEFAULT NULL,
  `ordem_servico_data_emissao` timestamp NULL DEFAULT current_timestamp(),
  `ordem_servico_data_conclusao` varchar(100) DEFAULT NULL,
  `ordem_servico_equipamento` varchar(80) DEFAULT NULL,
  `ordem_servico_marca_equipamento` varchar(80) DEFAULT NULL,
  `ordem_servico_modelo_equipamento` varchar(80) DEFAULT NULL,
  `ordem_servico_acessorios` tinytext DEFAULT NULL,
  `ordem_servico_defeito` tinytext DEFAULT NULL,
  `ordem_servico_valor_desconto` varchar(25) DEFAULT NULL,
  `ordem_servico_valor_total` varchar(25) DEFAULT NULL,
  `ordem_servico_status` tinyint(1) DEFAULT NULL,
  `ordem_servico_obs` tinytext DEFAULT NULL,
  `ordem_servico_data_alteracao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ordens_servicos`
--

INSERT INTO `ordens_servicos` (`ordem_servico_id`, `ordem_servico_forma_pagamento_id`, `ordem_servico_cliente_id`, `ordem_servico_data_emissao`, `ordem_servico_data_conclusao`, `ordem_servico_equipamento`, `ordem_servico_marca_equipamento`, `ordem_servico_modelo_equipamento`, `ordem_servico_acessorios`, `ordem_servico_defeito`, `ordem_servico_valor_desconto`, `ordem_servico_valor_total`, `ordem_servico_status`, `ordem_servico_obs`, `ordem_servico_data_alteracao`) VALUES
(14, NULL, 5, '2020-08-17 02:13:58', NULL, '.', '.', '.', '.', '.', 'R$ 0.00', '349.00', 0, '', '2020-08-17 19:54:43'),
(15, NULL, 6, '2020-08-17 14:44:42', NULL, NULL, NULL, NULL, NULL, NULL, 'R$ 0.00', '120.00', 0, '', '2020-08-17 14:49:58'),
(16, NULL, 7, '2020-08-17 14:50:49', NULL, NULL, NULL, NULL, NULL, NULL, 'R$ 0.00', '45.00', 0, '', NULL),
(18, NULL, 14, '2020-08-17 14:53:08', NULL, NULL, NULL, NULL, NULL, NULL, 'R$ 0.00', '40.00', 0, 'JÁ PAGOU 100,00 DO CATÁLOGO | E NÃO RESPONDE WHATSAPP | LOGO VETOR JÁ ENTREGUE', NULL),
(19, NULL, 1, '2020-08-17 14:55:00', NULL, NULL, NULL, NULL, NULL, NULL, 'R$ 0.00', '60.00', 0, 'valor será descontado da nota fiscal restante', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `produto_id` int(11) NOT NULL,
  `produto_codigo` varchar(45) DEFAULT NULL,
  `produto_data_cadastro` datetime DEFAULT NULL,
  `produto_categoria_id` int(11) NOT NULL,
  `produto_marca_id` int(11) NOT NULL,
  `produto_fornecedor_id` int(11) NOT NULL,
  `produto_descricao` varchar(145) DEFAULT NULL,
  `produto_unidade` varchar(25) DEFAULT NULL,
  `produto_codigo_barras` varchar(45) DEFAULT NULL,
  `produto_ncm` varchar(15) DEFAULT NULL,
  `produto_preco_custo` varchar(45) DEFAULT NULL,
  `produto_preco_venda` varchar(45) DEFAULT NULL,
  `produto_estoque_minimo` varchar(10) DEFAULT NULL,
  `produto_qtde_estoque` varchar(10) DEFAULT NULL,
  `produto_ativo` tinyint(1) DEFAULT NULL,
  `produto_obs` tinytext DEFAULT NULL,
  `produto_data_alteracao` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`produto_id`, `produto_codigo`, `produto_data_cadastro`, `produto_categoria_id`, `produto_marca_id`, `produto_fornecedor_id`, `produto_descricao`, `produto_unidade`, `produto_codigo_barras`, `produto_ncm`, `produto_preco_custo`, `produto_preco_venda`, `produto_estoque_minimo`, `produto_qtde_estoque`, `produto_ativo`, `produto_obs`, `produto_data_alteracao`) VALUES
(15, '23974561', NULL, 1, 1, 0, 'Cartão Visita', NULL, NULL, NULL, '22,00', '80,00', '2', '49', 1, '', '0000-00-00 00:00:00'),
(16, '31854702', NULL, 1, 1, 0, 'Cartão Visita 2', NULL, NULL, NULL, '2,00', '40,00', '2', '40', 1, '', '0000-00-00 00:00:00'),
(17, '75928603', NULL, 1, 1, 0, 'Cartão Visita  3', NULL, NULL, NULL, '33,33', '333,33', '2', '22', 1, '', '0000-00-00 00:00:00'),
(18, '06725183', NULL, 1, 1, 0, 'Cartão Visita 4', NULL, NULL, NULL, '3,22', '32,32', '1', '22', 1, '', '0000-00-00 00:00:00'),
(19, '29475310', NULL, 1, 1, 0, 'Cartão Visita  5', NULL, NULL, NULL, '2,22', '22,22', '2', '121', 1, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `servico_id` int(11) NOT NULL,
  `servico_nome` varchar(145) DEFAULT NULL,
  `servico_preco` varchar(15) DEFAULT NULL,
  `servico_descricao` tinytext DEFAULT NULL,
  `servico_ativo` tinyint(1) DEFAULT NULL,
  `servico_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`servico_id`, `servico_nome`, `servico_preco`, `servico_descricao`, `servico_ativo`, `servico_data_alteracao`) VALUES
(5, 'Arte - Vetorização Simples', '10,00', 'Vetorização simples, arte até 15 min', 1, '2020-08-17 01:54:53'),
(6, 'Arte - Simples', '20,00', 'Arte comum simples', 1, '2020-08-17 01:55:38'),
(7, 'Arte - layout máscara', '1,00', 'Arte - Layout máscara', 1, '2020-08-17 01:55:28'),
(8, 'Arte - Chapa', '5,00', 'Arte para chapas sácola', 1, '2020-08-17 01:55:17'),
(9, 'Arte - Layout Camiseta Simples', '5,00', 'Arte - Layout Camiseta Simples', 1, '2020-08-17 01:57:16'),
(10, 'Arte - Vetorização Comum', '25,00', 'Vetorização Comum, arte de 15 a 45 min', 1, '2020-08-17 14:02:16'),
(11, 'Arte - Vetorização Complexa', '50,00', 'Vetorização Complexa, arte a partir de 1h', 1, '2020-08-17 14:02:28'),
(12, 'Servico de Teste', '323,21', 'teste', 1, '2020-08-17 15:08:30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sistema`
--

CREATE TABLE `sistema` (
  `sistema_id` int(11) NOT NULL,
  `sistema_razao_social` varchar(145) DEFAULT NULL,
  `sistema_nome_fantasia` varchar(145) DEFAULT NULL,
  `sistema_cnpj` varchar(25) DEFAULT NULL,
  `sistema_ie` varchar(25) DEFAULT NULL,
  `sistema_telefone_fixo` varchar(25) DEFAULT NULL,
  `sistema_telefone_movel` varchar(25) NOT NULL,
  `sistema_email` varchar(100) DEFAULT NULL,
  `sistema_site_url` varchar(100) DEFAULT NULL,
  `sistema_cep` varchar(25) DEFAULT NULL,
  `sistema_endereco` varchar(145) DEFAULT NULL,
  `sistema_numero` varchar(25) DEFAULT NULL,
  `sistema_bairro` varchar(150) DEFAULT NULL,
  `sistema_cidade` varchar(45) DEFAULT NULL,
  `sistema_estado` varchar(2) DEFAULT NULL,
  `sistema_txt_ordem_servico` tinytext DEFAULT NULL,
  `sistema_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sistema`
--

INSERT INTO `sistema` (`sistema_id`, `sistema_razao_social`, `sistema_nome_fantasia`, `sistema_cnpj`, `sistema_ie`, `sistema_telefone_fixo`, `sistema_telefone_movel`, `sistema_email`, `sistema_site_url`, `sistema_cep`, `sistema_endereco`, `sistema_numero`, `sistema_bairro`, `sistema_cidade`, `sistema_estado`, `sistema_txt_ordem_servico`, `sistema_data_alteracao`) VALUES
(1, 'WID Solution', 'WID Solution', '11.111.111/1111-11', '', '', '(19) 99760-2943', 'contato@widsolution.com.br', 'www.widsolution.com.br', '13972-090', 'Av. São Paulo', '88', 'Vila Ilze', 'Itapira', 'SP', '.', '2020-08-14 14:54:02');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$12$IBpQu8HsIjs/6uIFS2FllOscgMbBbRCviASc1v8INowOpZMRFaN5K', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1268889823, 1, 'Admin123', 'istrator-789', 'ADMIN', '0'),
(3, '::1', 'rato', '$2y$12$NzZxchEyFhmKx07/UPglgufDztnXzIySQuJ.vcPlSxvV1UZQ.Exc.', 'matheusreis1334@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1596240486, 1597693799, 1, 'Matheus', 'Reis', NULL, NULL),
(9, '::1', 'wid_solut', '$2y$10$ZHwAwo880cGGEzX5T9qovOE1A1EwAgNFkjkMbiws4OBHbXm/RXJ52', 'contato@widsolution.com.br', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1597510068, 1597521351, 1, 'WID', 'Solution', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(12, 1, 1),
(21, 3, 1),
(26, 9, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `venda_id` int(11) NOT NULL,
  `venda_cliente_id` int(11) DEFAULT NULL,
  `venda_forma_pagamento_id` int(11) DEFAULT NULL,
  `venda_vendedor_id` int(11) DEFAULT NULL,
  `venda_tipo` tinyint(1) DEFAULT NULL,
  `venda_data_emissao` timestamp NULL DEFAULT current_timestamp(),
  `venda_valor_desconto` varchar(25) DEFAULT NULL,
  `venda_valor_total` varchar(25) DEFAULT NULL,
  `venda_data_alteracao` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda_produtos`
--

CREATE TABLE `venda_produtos` (
  `id_venda_produtos` int(11) NOT NULL,
  `venda_produto_id_venda` int(11) DEFAULT NULL,
  `venda_produto_id_produto` int(11) DEFAULT NULL,
  `venda_produto_quantidade` varchar(15) DEFAULT NULL,
  `venda_produto_valor_unitario` varchar(20) DEFAULT NULL,
  `venda_produto_desconto` varchar(10) DEFAULT NULL,
  `venda_produto_valor_total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedores`
--

CREATE TABLE `vendedores` (
  `vendedor_id` int(11) NOT NULL,
  `vendedor_codigo` varchar(10) NOT NULL,
  `vendedor_data_cadastro` timestamp NULL DEFAULT current_timestamp(),
  `vendedor_nome_completo` varchar(145) NOT NULL,
  `vendedor_cpf` varchar(25) NOT NULL,
  `vendedor_rg` varchar(25) NOT NULL,
  `vendedor_telefone` varchar(15) DEFAULT NULL,
  `vendedor_celular` varchar(15) DEFAULT NULL,
  `vendedor_email` varchar(45) DEFAULT NULL,
  `vendedor_cep` varchar(15) DEFAULT NULL,
  `vendedor_endereco` varchar(45) DEFAULT NULL,
  `vendedor_numero_endereco` varchar(25) DEFAULT NULL,
  `vendedor_complemento` varchar(45) DEFAULT NULL,
  `vendedor_bairro` varchar(45) DEFAULT NULL,
  `vendedor_cidade` varchar(45) DEFAULT NULL,
  `vendedor_estado` varchar(2) DEFAULT NULL,
  `vendedor_ativo` tinyint(1) DEFAULT NULL,
  `vendedor_obs` tinytext DEFAULT NULL,
  `vendedor_data_alteracao` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `vendedores`
--

INSERT INTO `vendedores` (`vendedor_id`, `vendedor_codigo`, `vendedor_data_cadastro`, `vendedor_nome_completo`, `vendedor_cpf`, `vendedor_rg`, `vendedor_telefone`, `vendedor_celular`, `vendedor_email`, `vendedor_cep`, `vendedor_endereco`, `vendedor_numero_endereco`, `vendedor_complemento`, `vendedor_bairro`, `vendedor_cidade`, `vendedor_estado`, `vendedor_ativo`, `vendedor_obs`, `vendedor_data_alteracao`) VALUES
(1, '', '2020-08-03 23:30:33', 'Matheus Henrique Reis', '087.162.260-20', '2321', '(99) 99999-9999', '(99) 99999-9999', 'matheusreis13341212@gmail.com', '13972-090', 'Avenida São Paulo', '45', NULL, 'Centro', 'Itapira', 'SP', 1, '', '2020-08-17 01:47:23');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Índices para tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  ADD PRIMARY KEY (`conta_pagar_id`),
  ADD KEY `fk_conta_pagar_id_fornecedor` (`conta_pagar_fornecedor_id`);

--
-- Índices para tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  ADD PRIMARY KEY (`conta_receber_id`),
  ADD KEY `fk_conta_receber_id_cliente` (`conta_receber_cliente_id`);

--
-- Índices para tabela `formas_pagamentos`
--
ALTER TABLE `formas_pagamentos`
  ADD PRIMARY KEY (`forma_pagamento_id`);

--
-- Índices para tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  ADD PRIMARY KEY (`fornecedor_id`);

--
-- Índices para tabela `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`marca_id`);

--
-- Índices para tabela `ordem_tem_servicos`
--
ALTER TABLE `ordem_tem_servicos`
  ADD PRIMARY KEY (`ordem_ts_id`),
  ADD KEY `fk_ordem_ts_id_servico` (`ordem_ts_id_servico`),
  ADD KEY `fk_ordem_ts_id_ordem_servico` (`ordem_ts_id_ordem_servico`);

--
-- Índices para tabela `ordens_servicos`
--
ALTER TABLE `ordens_servicos`
  ADD PRIMARY KEY (`ordem_servico_id`),
  ADD KEY `fk_ordem_servico_id_cliente` (`ordem_servico_cliente_id`),
  ADD KEY `fk_ordem_servico_id_forma_pagto` (`ordem_servico_forma_pagamento_id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`produto_id`),
  ADD KEY `produto_categoria_id` (`produto_categoria_id`,`produto_marca_id`,`produto_fornecedor_id`),
  ADD KEY `fk_produto_marca_id` (`produto_marca_id`),
  ADD KEY `fk_produto_forncedor_id` (`produto_fornecedor_id`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`servico_id`);

--
-- Índices para tabela `sistema`
--
ALTER TABLE `sistema`
  ADD PRIMARY KEY (`sistema_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`);

--
-- Índices para tabela `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`venda_id`),
  ADD KEY `fk_venda_cliente_id` (`venda_cliente_id`),
  ADD KEY `fk_venda_forma_pagto_id` (`venda_forma_pagamento_id`),
  ADD KEY `fk_venda_vendedor_id` (`venda_vendedor_id`);

--
-- Índices para tabela `venda_produtos`
--
ALTER TABLE `venda_produtos`
  ADD PRIMARY KEY (`id_venda_produtos`),
  ADD KEY `fk_venda_produtos_id_produto` (`venda_produto_id_produto`),
  ADD KEY `fk_venda_produtos_id_venda` (`venda_produto_id_venda`);

--
-- Índices para tabela `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`vendedor_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  MODIFY `conta_pagar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contas_receber`
--
ALTER TABLE `contas_receber`
  MODIFY `conta_receber_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `formas_pagamentos`
--
ALTER TABLE `formas_pagamentos`
  MODIFY `forma_pagamento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `fornecedores`
--
ALTER TABLE `fornecedores`
  MODIFY `fornecedor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `marcas`
--
ALTER TABLE `marcas`
  MODIFY `marca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ordem_tem_servicos`
--
ALTER TABLE `ordem_tem_servicos`
  MODIFY `ordem_ts_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT de tabela `ordens_servicos`
--
ALTER TABLE `ordens_servicos`
  MODIFY `ordem_servico_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `produto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `servico_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `sistema`
--
ALTER TABLE `sistema`
  MODIFY `sistema_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `venda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `venda_produtos`
--
ALTER TABLE `venda_produtos`
  MODIFY `id_venda_produtos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `vendedor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `contas_pagar`
--
ALTER TABLE `contas_pagar`
  ADD CONSTRAINT `fk_conta_pagar_id_fornecedor` FOREIGN KEY (`conta_pagar_fornecedor_id`) REFERENCES `fornecedores` (`fornecedor_id`);

--
-- Limitadores para a tabela `ordem_tem_servicos`
--
ALTER TABLE `ordem_tem_servicos`
  ADD CONSTRAINT `fk_ordem_ts_id_ordem_servico` FOREIGN KEY (`ordem_ts_id_ordem_servico`) REFERENCES `ordens_servicos` (`ordem_servico_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_ordem_ts_id_servico` FOREIGN KEY (`ordem_ts_id_servico`) REFERENCES `servicos` (`servico_id`);

--
-- Limitadores para a tabela `ordens_servicos`
--
ALTER TABLE `ordens_servicos`
  ADD CONSTRAINT `fk_ordem_servico_id_cliente` FOREIGN KEY (`ordem_servico_cliente_id`) REFERENCES `clientes` (`cliente_id`),
  ADD CONSTRAINT `fk_ordem_servico_id_forma_pagto` FOREIGN KEY (`ordem_servico_forma_pagamento_id`) REFERENCES `formas_pagamentos` (`forma_pagamento_id`);

--
-- Limitadores para a tabela `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_venda_cliente_id` FOREIGN KEY (`venda_cliente_id`) REFERENCES `clientes` (`cliente_id`),
  ADD CONSTRAINT `fk_venda_forma_pagto_id` FOREIGN KEY (`venda_forma_pagamento_id`) REFERENCES `formas_pagamentos` (`forma_pagamento_id`),
  ADD CONSTRAINT `fk_venda_vendedor_id` FOREIGN KEY (`venda_vendedor_id`) REFERENCES `vendedores` (`vendedor_id`);

--
-- Limitadores para a tabela `venda_produtos`
--
ALTER TABLE `venda_produtos`
  ADD CONSTRAINT `fk_venda_produtos_id_produto` FOREIGN KEY (`venda_produto_id_produto`) REFERENCES `produtos` (`produto_id`),
  ADD CONSTRAINT `fk_venda_produtos_id_venda` FOREIGN KEY (`venda_produto_id_venda`) REFERENCES `vendas` (`venda_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
