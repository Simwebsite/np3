-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 08-Dez-2018 às 12:47
-- Versão do servidor: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cartao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso`
--

DROP TABLE IF EXISTS `acesso`;
CREATE TABLE IF NOT EXISTS `acesso` (
  `id_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `departamento_id` int(11) NOT NULL,
  `departamentos` varchar(20) NOT NULL,
  `clientes` varchar(20) NOT NULL,
  `produtos` varchar(20) NOT NULL,
  `funcionarios` varchar(20) NOT NULL,
  `fornecedores` varchar(20) NOT NULL,
  `agendaVendas` varchar(20) NOT NULL,
  `agendaAdm` varchar(20) NOT NULL,
  `contaPagar` varchar(20) NOT NULL,
  `contaReceber` varchar(20) NOT NULL,
  `entradaSaida` varchar(20) NOT NULL,
  `equipamentos` varchar(20) NOT NULL,
  `veiculos` varchar(20) NOT NULL,
  `infestacoes` varchar(20) NOT NULL,
  `documentos` varchar(20) NOT NULL,
  `lixeira` varchar(20) NOT NULL,
  `configuracoes` varchar(20) NOT NULL,
  `excluirHistorico` varchar(10) NOT NULL,
  PRIMARY KEY (`id_acesso`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE IF NOT EXISTS `agenda` (
  `agenda_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `datavenvimento` date NOT NULL,
  `hora` time NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `acao` text NOT NULL,
  `prioridade` varchar(30) NOT NULL,
  `descricao` text NOT NULL,
  `datafechamento` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `reagendado` varchar(10) NOT NULL DEFAULT 'nao',
  `motivoreagendamento` text NOT NULL,
  `usuarioreagendado` varchar(200) NOT NULL,
  `datareagendamento` varchar(30) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`agenda_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendavendas`
--

DROP TABLE IF EXISTS `agendavendas`;
CREATE TABLE IF NOT EXISTS `agendavendas` (
  `agenda_id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `datavenvimento` date NOT NULL,
  `hora` time NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `acao` text NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `datafechamento` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `reagendado` varchar(10) NOT NULL DEFAULT 'nao',
  `motivoreagendamento` text NOT NULL,
  `usuarioreagendado` varchar(200) NOT NULL,
  `datareagendamento` varchar(30) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`agenda_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE IF NOT EXISTS `album` (
  `id_album` int(11) NOT NULL AUTO_INCREMENT,
  `album` varchar(100) NOT NULL,
  `publicado` varchar(10) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alertaemail`
--

DROP TABLE IF EXISTS `alertaemail`;
CREATE TABLE IF NOT EXISTS `alertaemail` (
  `id_alerta` int(11) NOT NULL AUTO_INCREMENT,
  `agenda_id` int(11) NOT NULL,
  `data` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`id_alerta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alertaemailvendas`
--

DROP TABLE IF EXISTS `alertaemailvendas`;
CREATE TABLE IF NOT EXISTS `alertaemailvendas` (
  `id_alerta` int(11) NOT NULL AUTO_INCREMENT,
  `agenda_id` int(11) NOT NULL,
  `data` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`id_alerta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `assinatura`
--

DROP TABLE IF EXISTS `assinatura`;
CREATE TABLE IF NOT EXISTS `assinatura` (
  `id_assinatura` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_assinatura`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ativacao_plano_veiculo`
--

DROP TABLE IF EXISTS `ativacao_plano_veiculo`;
CREATE TABLE IF NOT EXISTS `ativacao_plano_veiculo` (
  `id` int(10) UNSIGNED NOT NULL,
  `departamento_id` int(10) UNSIGNED NOT NULL,
  `placa` varchar(45) COLLATE utf8_lithuanian_ci NOT NULL,
  `beneficio_frota_id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) COLLATE utf8_lithuanian_ci NOT NULL,
  `beneficio_frota_valor` decimal(11,2) NOT NULL,
  `categoria_cartao_frota_id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `usuario` varchar(45) COLLATE utf8_lithuanian_ci NOT NULL,
  `data` date NOT NULL,
  `data_visual` varchar(45) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `data_ativacao` date NOT NULL,
  `ip` varchar(45) COLLATE utf8_lithuanian_ci NOT NULL,
  PRIMARY KEY (`id`,`departamento_id`,`placa`,`beneficio_frota_id`,`nome`,`beneficio_frota_valor`,`categoria_cartao_frota_id`,`cliente_id`,`valor`,`usuario`,`data`,`data_ativacao`,`ip`),
  KEY `fk_ativacao_plano_veiculo_beneficio_frota1_idx` (`beneficio_frota_id`,`nome`,`beneficio_frota_valor`,`categoria_cartao_frota_id`,`cliente_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ativ_col`
--

DROP TABLE IF EXISTS `ativ_col`;
CREATE TABLE IF NOT EXISTS `ativ_col` (
  `colaborador_cliente_id_colaborador_cliente` int(10) UNSIGNED NOT NULL,
  `colaborador_cliente_cliente_id` int(10) UNSIGNED NOT NULL,
  `colaborador_cliente_departamento_id` int(10) UNSIGNED NOT NULL,
  `beneficio_colaborador_id_beneficio_colaborador` int(10) UNSIGNED NOT NULL,
  `beneficio_colaborador_nome` varchar(45) COLLATE utf8_lithuanian_ci NOT NULL,
  `beneficio_colaborador_valor` decimal(11,2) NOT NULL,
  `beneficio_colaborador_data` date NOT NULL,
  `beneficio_colaborador_categoria_cartao_colaborador_id` int(10) UNSIGNED NOT NULL,
  `beneficio_colaborador_cliente_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`colaborador_cliente_id_colaborador_cliente`,`colaborador_cliente_cliente_id`,`colaborador_cliente_departamento_id`,`beneficio_colaborador_id_beneficio_colaborador`,`beneficio_colaborador_nome`,`beneficio_colaborador_valor`,`beneficio_colaborador_data`,`beneficio_colaborador_categoria_cartao_colaborador_id`,`beneficio_colaborador_cliente_id`),
  KEY `fk_colaborador_cliente_has_beneficio_colaborador_beneficio__idx` (`beneficio_colaborador_id_beneficio_colaborador`,`beneficio_colaborador_nome`,`beneficio_colaborador_valor`,`beneficio_colaborador_data`,`beneficio_colaborador_categoria_cartao_colaborador_id`,`beneficio_colaborador_cliente_id`),
  KEY `fk_colaborador_cliente_has_beneficio_colaborador_colaborado_idx` (`colaborador_cliente_id_colaborador_cliente`,`colaborador_cliente_cliente_id`,`colaborador_cliente_departamento_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bancos`
--

DROP TABLE IF EXISTS `bancos`;
CREATE TABLE IF NOT EXISTS `bancos` (
  `id_banco` int(11) NOT NULL AUTO_INCREMENT,
  `banco` varchar(100) NOT NULL,
  `ag` varchar(50) NOT NULL,
  `cta` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_banco`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `beneficio_colaborador`
--

DROP TABLE IF EXISTS `beneficio_colaborador`;
CREATE TABLE IF NOT EXISTS `beneficio_colaborador` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8_lithuanian_ci NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `data` date NOT NULL,
  `categoria_cartao_colaborador_id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`nome`,`valor`,`data`,`categoria_cartao_colaborador_id`,`cliente_id`),
  KEY `fk_beneficio_colaborador_categoria_cartao_colaborador1_idx` (`categoria_cartao_colaborador_id`,`cliente_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `beneficio_frota`
--

DROP TABLE IF EXISTS `beneficio_frota`;
CREATE TABLE IF NOT EXISTS `beneficio_frota` (
  `id_beneficio_frota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8_lithuanian_ci NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `data` date NOT NULL,
  `categoria_cartao_frota_id` int(10) UNSIGNED NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_beneficio_frota`,`nome`,`valor`,`data`,`categoria_cartao_frota_id`,`cliente_id`),
  KEY `fk_beneficio_frota_categoria_cartao_frota1_idx` (`categoria_cartao_frota_id`,`cliente_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `caixa_pagamento`
--

DROP TABLE IF EXISTS `caixa_pagamento`;
CREATE TABLE IF NOT EXISTS `caixa_pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estabelecimento_id` int(11) NOT NULL,
  `valor` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(300) NOT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_cartao_colaborador`
--

DROP TABLE IF EXISTS `categoria_cartao_colaborador`;
CREATE TABLE IF NOT EXISTS `categoria_cartao_colaborador` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) COLLATE utf8_lithuanian_ci NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`cliente_id`),
  KEY `fk_categoria_cartao_colaborador_gestor1_idx` (`cliente_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_cartao_frota`
--

DROP TABLE IF EXISTS `categoria_cartao_frota`;
CREATE TABLE IF NOT EXISTS `categoria_cartao_frota` (
  `id_categoria_cartao_frota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_categoria_cartao_frota`,`cliente_id`),
  KEY `fk_categoria_cartao_frota_gestor1_idx` (`cliente_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_lithuanian_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

DROP TABLE IF EXISTS `cidade`;
CREATE TABLE IF NOT EXISTS `cidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) DEFAULT NULL,
  `estado` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Cidade_estado` (`estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade_envia_proposta`
--

DROP TABLE IF EXISTS `cidade_envia_proposta`;
CREATE TABLE IF NOT EXISTS `cidade_envia_proposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `cidade_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

DROP TABLE IF EXISTS `clientes`;
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `tipoCliente` varchar(20) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cpf` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `cnpj` varchar(30) NOT NULL,
  `responsavel` varchar(200) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `numero` varchar(30) NOT NULL,
  `bairro` varchar(200) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `cel` varchar(30) NOT NULL,
  `site` varchar(50) NOT NULL,
  `obs` text NOT NULL,
  `tipoAcesso` varchar(30) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `desconto` float NOT NULL DEFAULT '0',
  `deleta_item_proposta` varchar(10) NOT NULL DEFAULT 'nao',
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `colaborador_cliente`
--

DROP TABLE IF EXISTS `colaborador_cliente`;
CREATE TABLE IF NOT EXISTS `colaborador_cliente` (
  `id_colaborador_cliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `departamento_id` int(10) UNSIGNED NOT NULL,
  `cod_cartao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_colaborador_cliente`,`cliente_id`,`departamento_id`),
  KEY `fk_colaborador_gestor_gestor_idx` (`cliente_id`),
  KEY `fk_colaborador_gestor_departamento1_idx` (`departamento_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `comprovante_pagamento`
--

DROP TABLE IF EXISTS `comprovante_pagamento`;
CREATE TABLE IF NOT EXISTS `comprovante_pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL,
  `estabelecimento_id` int(11) NOT NULL,
  `arquivo` varchar(300) NOT NULL,
  `descricao` text NOT NULL,
  `taxa_bancaria` float NOT NULL,
  `taxa_administrativa` float NOT NULL,
  `taxa_antecipacao` float NOT NULL,
  `os` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'Ativo',
  `usuario` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id_config` int(11) NOT NULL AUTO_INCREMENT,
  `adm` varchar(10) NOT NULL,
  `banco` decimal(11,2) NOT NULL,
  `desconto` decimal(11,2) NOT NULL,
  `fonte_conteudo` int(11) NOT NULL,
  `email1` varchar(100) NOT NULL,
  `email2` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_config`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracao_cliente`
--

DROP TABLE IF EXISTS `configuracao_cliente`;
CREATE TABLE IF NOT EXISTS `configuracao_cliente` (
  `id_configuracao_cliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dia_pag_refeicao` varchar(45) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `qtd_dias_pag-refeicao` varchar(45) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id_configuracao_cliente`,`cliente_id`),
  KEY `fk_configuracao_gestor1_idx` (`cliente_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contasdecorrentes`
--

DROP TABLE IF EXISTS `contasdecorrentes`;
CREATE TABLE IF NOT EXISTS `contasdecorrentes` (
  `id_conta` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `status` varchar(30) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_conta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contaspagar`
--

DROP TABLE IF EXISTS `contaspagar`;
CREATE TABLE IF NOT EXISTS `contaspagar` (
  `id_contasPagar` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `datavencimento` date NOT NULL,
  `tabela` varchar(50) NOT NULL,
  `beneficiario_id` varchar(300) NOT NULL,
  `status` varchar(30) NOT NULL,
  `descricao` text NOT NULL,
  `dataultimoacesso` varchar(30) NOT NULL,
  `ultimousuario` varchar(100) NOT NULL,
  `historico` text NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_contasPagar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contasreceber`
--

DROP TABLE IF EXISTS `contasreceber`;
CREATE TABLE IF NOT EXISTS `contasreceber` (
  `id_contasReceber` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `datavencimento` date NOT NULL,
  `tabela` varchar(50) NOT NULL,
  `beneficiario_id` varchar(300) NOT NULL,
  `status` varchar(30) NOT NULL,
  `descricao` text NOT NULL,
  `dataultimoacesso` varchar(30) NOT NULL,
  `ultimousuario` varchar(100) NOT NULL,
  `historico` text NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_contasReceber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contasreceberdecorrentes`
--

DROP TABLE IF EXISTS `contasreceberdecorrentes`;
CREATE TABLE IF NOT EXISTS `contasreceberdecorrentes` (
  `id_conta` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `status` varchar(30) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_conta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadoscontasdecorrentes`
--

DROP TABLE IF EXISTS `dadoscontasdecorrentes`;
CREATE TABLE IF NOT EXISTS `dadoscontasdecorrentes` (
  `id_conta` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) NOT NULL,
  `conta_id` int(11) NOT NULL,
  `datavencimento` date NOT NULL,
  `datavisual` varchar(30) NOT NULL,
  `qtd` int(11) NOT NULL,
  `tabela` varchar(50) NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `beneficiario_id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `dataultimoacesso` varchar(30) NOT NULL,
  `ultimousuario` varchar(120) NOT NULL,
  `historico` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_conta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dadoscontasreceberdecorrentes`
--

DROP TABLE IF EXISTS `dadoscontasreceberdecorrentes`;
CREATE TABLE IF NOT EXISTS `dadoscontasreceberdecorrentes` (
  `id_conta` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) NOT NULL,
  `conta_id` int(11) NOT NULL,
  `datavencimento` date NOT NULL,
  `datavisual` varchar(30) NOT NULL,
  `qtd` int(11) NOT NULL,
  `tabela` varchar(50) NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `beneficiario_id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `dataultimoacesso` varchar(30) NOT NULL,
  `ultimousuario` varchar(120) NOT NULL,
  `historico` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_conta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

DROP TABLE IF EXISTS `departamento`;
CREATE TABLE IF NOT EXISTS `departamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`id`, `nome`, `cliente_id`, `usuario`, `data`, `ip`) VALUES
(1, 'ADMINISTRAÃ‡ÃƒO', 1, 'sim', '06-12-2018 01:40:20', '::1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
CREATE TABLE IF NOT EXISTS `departamentos` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) COLLATE utf8_lithuanian_ci NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`nome`,`cliente_id`),
  KEY `fk_departamento_gestor1_idx` (`cliente_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `entradacaixa`
--

DROP TABLE IF EXISTS `entradacaixa`;
CREATE TABLE IF NOT EXISTS `entradacaixa` (
  `id_entrada` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `dataentrada` date NOT NULL,
  `beneficiario_id` int(11) NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `tabela` varchar(50) NOT NULL,
  `observacoes` text NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_entrada`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos`
--

DROP TABLE IF EXISTS `equipamentos`;
CREATE TABLE IF NOT EXISTS `equipamentos` (
  `id_equipamento` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `qtd` varchar(20) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `descricao` text NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_equipamento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estabelecimentos`
--

DROP TABLE IF EXISTS `estabelecimentos`;
CREATE TABLE IF NOT EXISTS `estabelecimentos` (
  `id_estabelecimento` int(11) NOT NULL AUTO_INCREMENT,
  `tipoEstabelecimento` varchar(20) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `cpf` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `cnpj` varchar(30) NOT NULL,
  `responsavel` varchar(200) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `numero` varchar(30) NOT NULL,
  `bairro` varchar(200) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `cidade_id` int(11) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `cel` varchar(30) NOT NULL,
  `site` varchar(50) NOT NULL,
  `obs` text NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `banco1` varchar(100) NOT NULL,
  `ag1` varchar(30) NOT NULL,
  `cta1` varchar(30) NOT NULL,
  `tipo1` varchar(30) NOT NULL,
  `op1` varchar(30) NOT NULL,
  `obs1` text NOT NULL,
  `banco2` varchar(100) NOT NULL,
  `ag2` varchar(30) NOT NULL,
  `cta2` varchar(30) NOT NULL,
  `tipo2` varchar(30) NOT NULL,
  `op2` varchar(20) NOT NULL,
  `obs2` text NOT NULL,
  `mapa` text NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_estabelecimento`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

DROP TABLE IF EXISTS `estado`;
CREATE TABLE IF NOT EXISTS `estado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(75) DEFAULT NULL,
  `uf` varchar(5) DEFAULT NULL,
  `pais` int(7) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Estado_pais` (`pais`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado_envia_proposta`
--

DROP TABLE IF EXISTS `estado_envia_proposta`;
CREATE TABLE IF NOT EXISTS `estado_envia_proposta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `cod_uf` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `excluidos`
--

DROP TABLE IF EXISTS `excluidos`;
CREATE TABLE IF NOT EXISTS `excluidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `os` varchar(50) NOT NULL,
  `motivo` text NOT NULL,
  `placa` varchar(10) NOT NULL,
  `modelo` varchar(60) NOT NULL,
  `anoF` varchar(10) NOT NULL,
  `anoM` varchar(10) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `chassi` varchar(60) NOT NULL,
  `renavam` varchar(60) NOT NULL,
  `servico` text NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
CREATE TABLE IF NOT EXISTS `fornecedores` (
  `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(100) NOT NULL,
  `razao` varchar(100) NOT NULL,
  `cnpj` varchar(30) NOT NULL,
  `responsavel` varchar(200) NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `numero` varchar(30) NOT NULL,
  `bairro` varchar(200) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `cel` varchar(30) NOT NULL,
  `site` varchar(50) NOT NULL,
  `obs` text NOT NULL,
  `banco1` varchar(100) NOT NULL,
  `ag1` varchar(20) NOT NULL,
  `conta1` varchar(20) NOT NULL,
  `tipo1` varchar(20) NOT NULL,
  `banco2` varchar(100) NOT NULL,
  `ag2` varchar(20) NOT NULL,
  `conta2` varchar(20) NOT NULL,
  `tipo2` varchar(20) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotocliente`
--

DROP TABLE IF EXISTS `fotocliente`;
CREATE TABLE IF NOT EXISTS `fotocliente` (
  `id_foto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) NOT NULL,
  `foto` varchar(300) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `transacao` varchar(10) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotolaudo`
--

DROP TABLE IF EXISTS `fotolaudo`;
CREATE TABLE IF NOT EXISTS `fotolaudo` (
  `id_foto` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(300) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `laudo_id` int(11) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `grupo`
--

DROP TABLE IF EXISTS `grupo`;
CREATE TABLE IF NOT EXISTS `grupo` (
  `id_grupo` int(11) NOT NULL AUTO_INCREMENT,
  `nome_grupo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_grupo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagem`
--

DROP TABLE IF EXISTS `imagem`;
CREATE TABLE IF NOT EXISTS `imagem` (
  `id_imagem` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) NOT NULL,
  `foto` varchar(500) NOT NULL,
  `estabelecimento_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `dataconsulta` date NOT NULL,
  `dataVisual` varchar(30) NOT NULL,
  `transacao` varchar(20) NOT NULL,
  `usuario` varchar(300) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_imagem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `id_item` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) NOT NULL,
  `qtd` varchar(10) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itensproposta`
--

DROP TABLE IF EXISTS `itensproposta`;
CREATE TABLE IF NOT EXISTS `itensproposta` (
  `id_itensProposta` int(11) NOT NULL AUTO_INCREMENT,
  `proposta_id` int(11) NOT NULL,
  `nome` varchar(600) NOT NULL,
  `qtd` int(11) NOT NULL,
  `valorUnitario` decimal(11,2) NOT NULL,
  `subTotal` decimal(11,2) NOT NULL,
  `desconto` decimal(11,2) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_itensProposta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lembretecliente`
--

DROP TABLE IF EXISTS `lembretecliente`;
CREATE TABLE IF NOT EXISTS `lembretecliente` (
  `id_lembrete` int(11) NOT NULL AUTO_INCREMENT,
  `lembrete` text NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_lembrete`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lembreteestabelecimento`
--

DROP TABLE IF EXISTS `lembreteestabelecimento`;
CREATE TABLE IF NOT EXISTS `lembreteestabelecimento` (
  `id_lembrete` int(11) NOT NULL AUTO_INCREMENT,
  `lembrete` text NOT NULL,
  `estabelecimento_id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_lembrete`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensalidades`
--

DROP TABLE IF EXISTS `mensalidades`;
CREATE TABLE IF NOT EXISTS `mensalidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `referencia` varchar(200) NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `vencimento` date NOT NULL,
  `status` int(11) NOT NULL,
  `visual_vencimento` varchar(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `motoristas`
--

DROP TABLE IF EXISTS `motoristas`;
CREATE TABLE IF NOT EXISTS `motoristas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `cnh` varchar(20) NOT NULL,
  `tel` varchar(60) NOT NULL,
  `cpf` varchar(60) NOT NULL,
  `status` varchar(60) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `data` varchar(30) NOT NULL,
  `dataconsulta` date NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `motoristas`
--

INSERT INTO `motoristas` (`id`, `nome`, `cnh`, `tel`, `cpf`, `status`, `usuario_id`, `cliente_id`, `departamento_id`, `usuario`, `data`, `dataconsulta`, `ip`) VALUES
(1, 'JULIO CESAR ROCHA DE LIMA', 'AC', '(11) 11111-1111', '111.111.111-11', 'Ativo', 1, 1, 1, 'sim', '06-12-2018 01:41', '2018-12-06', '::1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivel_acesso`
--

DROP TABLE IF EXISTS `nivel_acesso`;
CREATE TABLE IF NOT EXISTS `nivel_acesso` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notafiscal`
--

DROP TABLE IF EXISTS `notafiscal`;
CREATE TABLE IF NOT EXISTS `notafiscal` (
  `id_nota` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) NOT NULL,
  `pdf` varchar(500) NOT NULL,
  `estabelecimento_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `data-anexa_nota` date NOT NULL,
  `dataVisual` varchar(30) NOT NULL,
  `transacao` varchar(20) NOT NULL,
  `usuario` varchar(300) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

DROP TABLE IF EXISTS `os`;
CREATE TABLE IF NOT EXISTS `os` (
  `id_os` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(300) NOT NULL,
  `dataexecucao` date NOT NULL,
  `datavalidade` date NOT NULL,
  `horainicial` varchar(30) NOT NULL,
  `horafinal` varchar(30) NOT NULL,
  `datafechamento` varchar(30) NOT NULL,
  `pragas` varchar(500) NOT NULL,
  `p1` varchar(500) NOT NULL,
  `qtd1` varchar(30) NOT NULL,
  `p2` varchar(200) NOT NULL,
  `qtd2` varchar(30) NOT NULL,
  `p3` varchar(200) NOT NULL,
  `qtd3` varchar(30) NOT NULL,
  `p4` varchar(200) NOT NULL,
  `qtd4` varchar(30) NOT NULL,
  `p5` varchar(200) NOT NULL,
  `qtd5` varchar(30) NOT NULL,
  `orientacoes` text NOT NULL,
  `tecnico` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `descricaoretorno` text NOT NULL,
  `status` varchar(20) NOT NULL,
  `visivel` varchar(20) NOT NULL DEFAULT 'sim',
  `cliente_id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_os`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

DROP TABLE IF EXISTS `pagamento`;
CREATE TABLE IF NOT EXISTS `pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomepedido` varchar(300) NOT NULL,
  `estabelecimento_id` int(11) NOT NULL,
  `pedido_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `dataVisual` varchar(30) NOT NULL,
  `data` date NOT NULL,
  `data_status` date NOT NULL,
  `totalGeralProposta` decimal(11,2) NOT NULL,
  `tipopagamento` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pendente',
  `historico` text NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pdfcliente`
--

DROP TABLE IF EXISTS `pdfcliente`;
CREATE TABLE IF NOT EXISTS `pdfcliente` (
  `id_pdf` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) NOT NULL,
  `pdf` varchar(300) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `transacao` varchar(10) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_pdf`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
CREATE TABLE IF NOT EXISTS `pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_id` int(11) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `modelo` varchar(150) NOT NULL,
  `anoF` int(4) NOT NULL,
  `anoM` int(4) NOT NULL,
  `marca` varchar(150) NOT NULL,
  `chassi` varchar(50) NOT NULL,
  `km` varchar(20) NOT NULL,
  `renavam` varchar(30) NOT NULL,
  `servico` varchar(300) NOT NULL,
  `motorista` varchar(300) NOT NULL,
  `motorista_id` int(11) NOT NULL,
  `departamento` varchar(200) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `usuarioCliente_id` int(11) NOT NULL,
  `data_aprovacao` date NOT NULL,
  `data_finalizacao` date NOT NULL,
  `observacao` text NOT NULL,
  `motivo_cancelamento` text NOT NULL,
  `notificacao` varchar(300) NOT NULL,
  `data_notificacao` date NOT NULL,
  `usuario_criou` varchar(150) NOT NULL,
  `usuario_aprovou` varchar(150) NOT NULL,
  `status` varchar(30) NOT NULL,
  `enviar` varchar(10) NOT NULL,
  `historico` text NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `dataVisual` varchar(30) NOT NULL,
  `dataConsulta` date NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidosatendidos`
--

DROP TABLE IF EXISTS `pedidosatendidos`;
CREATE TABLE IF NOT EXISTS `pedidosatendidos` (
  `id_Pedido` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `estabelecimento_id` int(11) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `dataVisual` varchar(30) NOT NULL,
  `dataConsulta` date NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_Pedido`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos_has_categoria`
--

DROP TABLE IF EXISTS `pedidos_has_categoria`;
CREATE TABLE IF NOT EXISTS `pedidos_has_categoria` (
  `pedido_id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`pedido_id`,`categoria_id`),
  KEY `fk_pedidos_has_categoria_categoria1_idx` (`categoria_id`),
  KEY `fk_pedidos_has_categoria_pedidos_idx` (`pedido_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

DROP TABLE IF EXISTS `produtos`;
CREATE TABLE IF NOT EXISTS `produtos` (
  `id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `grupo_id` int(11) NOT NULL,
  `referencia1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referencia2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `referencia3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `referencia4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `referencia5` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fornecedor_id_ref1` int(11) NOT NULL,
  `fornecedor_id_ref2` int(11) NOT NULL,
  `fornecedor_id_ref3` int(11) NOT NULL,
  `fornecedor_id_ref4` int(11) NOT NULL,
  `fornecedor_id_ref5` int(11) NOT NULL,
  `foto1` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `foto2` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `foto3` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `foto4` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `foto5` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci,
  `usuario` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `ip` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_produto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `propostas`
--

DROP TABLE IF EXISTS `propostas`;
CREATE TABLE IF NOT EXISTS `propostas` (
  `id_proposta` int(11) NOT NULL AUTO_INCREMENT,
  `nomepedido` varchar(300) DEFAULT NULL,
  `estabelecimento_id` int(11) DEFAULT NULL,
  `pedido_id` int(11) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `servico` varchar(300) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `valorunitario` decimal(11,2) DEFAULT NULL,
  `desconto` decimal(11,2) DEFAULT NULL,
  `subtotal` decimal(11,2) DEFAULT NULL,
  `valortotal` decimal(11,2) DEFAULT NULL,
  `tipo` varchar(10) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `data_aprovacao` date DEFAULT NULL,
  `previsao_inicio_obra` date DEFAULT NULL,
  `previsao_fim_obra` date DEFAULT NULL,
  `obra_iniciada` varchar(10) DEFAULT NULL,
  `usuario_inicio_obra` varchar(300) DEFAULT NULL,
  `nota_anexa` varchar(10) DEFAULT NULL,
  `data_anexa_nota` date DEFAULT NULL,
  `usuario_anexo_nota` varchar(300) DEFAULT NULL,
  `servico_finalizado` varchar(50) DEFAULT NULL,
  `data_ser_finalizado` date DEFAULT NULL,
  `usuario_ser_finalizado` varchar(300) DEFAULT NULL,
  `pagamento_autorizado` varchar(10) DEFAULT NULL,
  `usuario_autorizou_pagamento` varchar(300) DEFAULT NULL,
  `data_pag_autorizado` date DEFAULT NULL,
  `observacao` text,
  `motivo_cancelamento` text,
  `notificacao` varchar(300) DEFAULT NULL,
  `data_notificacao` date DEFAULT NULL,
  `usuarioProposta` varchar(150) DEFAULT NULL,
  `usuario_aprovou` varchar(150) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `enviar` varchar(10) DEFAULT NULL,
  `historico` text,
  `dataVisual` varchar(30) DEFAULT NULL,
  `dataConsulta` date DEFAULT NULL,
  `totalGeralServico` decimal(11,2) NOT NULL,
  `totalGeralProdutos` decimal(11,2) NOT NULL,
  `totalGeralProposta` decimal(11,2) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_proposta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `recibo`
--

DROP TABLE IF EXISTS `recibo`;
CREATE TABLE IF NOT EXISTS `recibo` (
  `id_recibo` int(11) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `endereco` varchar(200) NOT NULL,
  `valor` varchar(20) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_recibo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `recuperacao`
--

DROP TABLE IF EXISTS `recuperacao`;
CREATE TABLE IF NOT EXISTS `recuperacao` (
  `utilizador` varchar(255) NOT NULL,
  `confirmacao` varchar(40) NOT NULL,
  KEY `utilizador` (`utilizador`,`confirmacao`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `registros`
--

DROP TABLE IF EXISTS `registros`;
CREATE TABLE IF NOT EXISTS `registros` (
  `id_registro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `emailDeAcesso` varchar(50) NOT NULL,
  `ip` varchar(300) NOT NULL,
  `dataacesso` varchar(300) NOT NULL,
  `datanavegacao` varchar(300) NOT NULL,
  `dominio` varchar(300) NOT NULL,
  `parametros` varchar(300) NOT NULL,
  `paginas` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `acao` varchar(500) NOT NULL,
  PRIMARY KEY (`id_registro`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `registros`
--

INSERT INTO `registros` (`id_registro`, `nome`, `id_usuario`, `emailDeAcesso`, `ip`, `dataacesso`, `datanavegacao`, `dominio`, `parametros`, `paginas`, `url`, `tipo`, `acao`) VALUES
(1, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:28:13', 'localhost', '', '/cartao/avisoCliente.php', 'localhost/cartao/avisoCliente.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes'),
(2, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:28:20', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(3, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:14', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(4, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:21', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(5, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:23', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(6, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:24', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(7, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:25', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(8, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:26', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(9, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:26', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(10, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:27', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(11, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:27', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(12, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:28', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(13, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:28', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(14, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:29', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(15, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:31', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(16, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:29:54', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(17, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:31:41', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(18, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:32:12', 'localhost', '', '/cartao/avisoCliente.php', 'localhost/cartao/avisoCliente.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes'),
(19, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:34:28', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(20, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:34:54', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(21, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:35:40', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(22, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:36:29', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(23, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:37:07', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(24, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:38:51', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php?', 'consultar', 'Acessou a Pagina Inicial'),
(25, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:39:08', 'localhost', '', '/cartao/criarPedidos.php', 'localhost/cartao/criarPedidos.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes'),
(26, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:39:40', 'localhost', '', '/cartao/cadastrarVeiculos.php', 'localhost/cartao/cadastrarVeiculos.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes'),
(27, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:40:00', 'localhost', '', '/cartao/cadastrar_departamento.php', 'localhost/cartao/cadastrar_departamento.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes'),
(28, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:40:24', 'localhost', '', '/cartao/cadastrarVeiculos.php', 'localhost/cartao/cadastrarVeiculos.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes'),
(29, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:40:58', 'localhost', '', '/cartao/cadastrarMotoristaCliente.php', 'localhost/cartao/cadastrarMotoristaCliente.php', 'cadastrar', 'Acessou a Pagina de Cadastro de Usuarios'),
(30, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:41:24', 'localhost', '', '/cartao/criarPedidos.php', 'localhost/cartao/criarPedidos.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes'),
(31, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:41:48', 'localhost', '', '/cartao/salvarpedido.php', 'localhost/cartao/salvarpedido.php', 'salvar', 'Erro ao tentar Cadastrar o grupo '),
(32, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:42:06', 'localhost', '', '/cartao/salvarpedido.php', 'localhost/cartao/salvarpedido.php', 'salvar', 'Erro ao tentar Cadastrar o grupo '),
(33, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:51:40', 'localhost', '', '/cartao/listar_estabelecimento_para_clientes.php', 'localhost/cartao/listar_estabelecimento_para_clientes.php', 'listar', 'Acessou a Pagina de Lista de Clientes'),
(34, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:52:23', 'localhost', '', '/cartao/listar_estabelecimento_para_clientes.php', 'localhost/cartao/listar_estabelecimento_para_clientes.php', 'listar', 'Acessou a Pagina de Lista de Clientes'),
(35, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:53:11', 'localhost', '', '/cartao/listar_estabelecimento_para_clientes.php', 'localhost/cartao/listar_estabelecimento_para_clientes.php', 'listar', 'Acessou a Pagina de Lista de Clientes'),
(36, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:54:27', 'localhost', '', '/cartao/listar_usuarios_clientes.php', 'localhost/cartao/listar_usuarios_clientes.php', 'listar', 'Acessou a Pagina de Lista de Usuarios'),
(37, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:58:15', 'localhost', '', '/cartao/listar_usuarios_clientes.php', 'localhost/cartao/listar_usuarios_clientes.php', 'listar', 'Acessou a Pagina de Lista de Usuarios'),
(38, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:58:33', 'localhost', '', '/cartao/ajuda.php', 'localhost/cartao/ajuda.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes'),
(39, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:59:24', 'localhost', '', '/cartao/ajuda.php', 'localhost/cartao/ajuda.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes'),
(40, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 01:59:52', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php', 'consultar', 'Acessou a Pagina Inicial'),
(41, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 02:00:21', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php', 'consultar', 'Acessou a Pagina Inicial'),
(42, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 02:01:15', 'localhost', '', '/cartao/criarPedidos.php', 'localhost/cartao/criarPedidos.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes'),
(43, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 02:01:40', 'localhost', '', '/cartao/salvarpedido.php', 'localhost/cartao/salvarpedido.php', 'salvar', 'Erro ao tentar Cadastrar o grupo '),
(44, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 02:01:49', 'localhost', '', '/cartao/criarPedidos.php', 'localhost/cartao/criarPedidos.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes'),
(45, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 02:02:13', 'localhost', '', '/cartao/salvarpedido.php', 'localhost/cartao/salvarpedido.php', 'salvar', 'Erro ao tentar Cadastrar o grupo '),
(46, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 02:03:53', 'localhost', '', '/cartao/salvarpedido.php', 'localhost/cartao/salvarpedido.php', 'salvar', 'Erro ao tentar Cadastrar o grupo '),
(47, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 02:04:50', 'localhost', '', '/cartao/salvarpedido.php', 'localhost/cartao/salvarpedido.php', 'salvar', 'Erro ao tentar Cadastrar o grupo '),
(48, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 02:10:42', 'localhost', '', '/cartao/salvarpedido.php', 'localhost/cartao/salvarpedido.php', 'salvar', 'Erro ao tentar Cadastrar o grupo '),
(49, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 02:10:48', 'localhost', '', '/cartao/financeiro_propostas_aprovada_geral_cliente.php', 'localhost/cartao/financeiro_propostas_aprovada_geral_cliente.php', 'listar', 'Acessou a Pagina de Lista de Clientes'),
(50, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 02:16:08', 'localhost', '', '/cartao/criarPedidos.php', 'localhost/cartao/criarPedidos.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes'),
(51, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 02:20:05', 'localhost', '', '/cartao/indexCliente.php', 'localhost/cartao/indexCliente.php', 'consultar', 'Acessou a Pagina Inicial'),
(52, 'sim', 1, 'sim@sim.com', '::1', '06-12-2018 03:28:13', '06-12-2018 02:22:56', 'localhost', '', '/cartao/criarPedidos.php', 'localhost/cartao/criarPedidos.php', 'cadastrar', 'Acessou a Pagina de cadastro de clientes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `saidacaixa`
--

DROP TABLE IF EXISTS `saidacaixa`;
CREATE TABLE IF NOT EXISTS `saidacaixa` (
  `id_saida` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `datasaida` date NOT NULL,
  `beneficiario_id` int(11) NOT NULL,
  `valor` decimal(11,2) NOT NULL,
  `tabela` varchar(50) NOT NULL,
  `observacoes` text NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_saida`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `saldo`
--

DROP TABLE IF EXISTS `saldo`;
CREATE TABLE IF NOT EXISTS `saldo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estabelecimento_id` int(11) NOT NULL,
  `saldo` decimal(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `saldo_colaborador`
--

DROP TABLE IF EXISTS `saldo_colaborador`;
CREATE TABLE IF NOT EXISTS `saldo_colaborador` (
  `idsaldo_colaborador` int(11) NOT NULL,
  `ativ_col_colaborador_cliente_id_colaborador_cliente` int(10) UNSIGNED NOT NULL,
  `ativ_col_colaborador_cliente_cliente_id` int(10) UNSIGNED NOT NULL,
  `ativ_col_colaborador_cliente_departamento_id` int(10) UNSIGNED NOT NULL,
  `ativ_col_beneficio_colaborador_id_beneficio_colaborador` int(10) UNSIGNED NOT NULL,
  `ativ_col_beneficio_colaborador_nome` varchar(45) COLLATE utf8_lithuanian_ci NOT NULL,
  `ativ_col_beneficio_colaborador_valor` decimal(11,2) NOT NULL,
  `ativ_col_beneficio_colaborador_data` date NOT NULL,
  `ativ_col_beneficio_colaborador_categoria_cartao_colaborador_id` int(10) UNSIGNED NOT NULL,
  `ativ_col_beneficio_colaborador_cliente_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idsaldo_colaborador`,`ativ_col_colaborador_cliente_id_colaborador_cliente`,`ativ_col_colaborador_cliente_cliente_id`,`ativ_col_colaborador_cliente_departamento_id`,`ativ_col_beneficio_colaborador_id_beneficio_colaborador`,`ativ_col_beneficio_colaborador_nome`,`ativ_col_beneficio_colaborador_valor`,`ativ_col_beneficio_colaborador_data`,`ativ_col_beneficio_colaborador_categoria_cartao_colaborador_id`,`ativ_col_beneficio_colaborador_cliente_id`),
  KEY `fk_saldo_colaborador_ativ_col1_idx` (`ativ_col_colaborador_cliente_id_colaborador_cliente`,`ativ_col_colaborador_cliente_cliente_id`,`ativ_col_colaborador_cliente_departamento_id`,`ativ_col_beneficio_colaborador_id_beneficio_colaborador`,`ativ_col_beneficio_colaborador_nome`,`ativ_col_beneficio_colaborador_valor`,`ativ_col_beneficio_colaborador_data`,`ativ_col_beneficio_colaborador_categoria_cartao_colaborador_id`,`ativ_col_beneficio_colaborador_cliente_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicitacao_pagamento`
--

DROP TABLE IF EXISTS `solicitacao_pagamento`;
CREATE TABLE IF NOT EXISTS `solicitacao_pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estabelecimento_id` int(11) NOT NULL,
  `valor` float NOT NULL,
  `descricao` text NOT NULL,
  `usuario` varchar(300) NOT NULL,
  `data` date NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `solicita_antecipacao_pagamento`
--

DROP TABLE IF EXISTS `solicita_antecipacao_pagamento`;
CREATE TABLE IF NOT EXISTS `solicita_antecipacao_pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL,
  `estabelecimento_id` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipocontas`
--

DROP TABLE IF EXISTS `tipocontas`;
CREATE TABLE IF NOT EXISTS `tipocontas` (
  `id_tipoConta` int(11) NOT NULL AUTO_INCREMENT,
  `conta` varchar(200) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tipoConta`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_aprovacao_proposta`
--

DROP TABLE IF EXISTS `tipo_aprovacao_proposta`;
CREATE TABLE IF NOT EXISTS `tipo_aprovacao_proposta` (
  `cliente_id` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `data` int(30) NOT NULL,
  `ip` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(16) COLLATE utf8_lithuanian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `password` varchar(32) COLLATE utf8_lithuanian_ci NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(30) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `data` varchar(30) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuariocliente`
--

DROP TABLE IF EXISTS `usuariocliente`;
CREATE TABLE IF NOT EXISTS `usuariocliente` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(30) NOT NULL,
  `cargo` varchar(60) NOT NULL,
  `nivel` varchar(60) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `data` varchar(30) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuariocliente`
--

INSERT INTO `usuariocliente` (`id_usuario`, `nome`, `tel`, `email`, `cpf`, `cargo`, `nivel`, `tipo`, `status`, `senha`, `cliente_id`, `data`, `usuario`, `ip`) VALUES
(1, 'sim', '00', 'sim@sim.com', '54655656', '00', 'AdministradorCliente', 'Cliente', 'Ativo', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1, '05-08-2017 00:41:06', 'sim', '342423');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarioestabelecimento`
--

DROP TABLE IF EXISTS `usuarioestabelecimento`;
CREATE TABLE IF NOT EXISTS `usuarioestabelecimento` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cpf` varchar(30) NOT NULL,
  `cargo` varchar(60) NOT NULL,
  `nivel` varchar(60) NOT NULL,
  `tipo` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `senha` varchar(40) NOT NULL,
  `estabelecimento_id` int(11) NOT NULL,
  `data` varchar(30) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL,
  `clientes_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`,`clientes_id`),
  KEY `fk_usuarios_clientes1_idx` (`clientes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

DROP TABLE IF EXISTS `veiculos`;
CREATE TABLE IF NOT EXISTS `veiculos` (
  `id_veiculo` int(11) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `modelo` varchar(200) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `anoF` int(11) NOT NULL,
  `anoM` int(11) NOT NULL,
  `chassi` varchar(100) NOT NULL,
  `renavam` varchar(100) NOT NULL,
  `departamento_id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_veiculo`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculos`
--

INSERT INTO `veiculos` (`id_veiculo`, `cliente_id`, `usuario_id`, `placa`, `modelo`, `marca`, `anoF`, `anoM`, `chassi`, `renavam`, `departamento_id`, `usuario`, `data`, `ip`) VALUES
(1, 1, 1, 'ASD-1234', 'MAX', 'COROLLA', 1111, 1111, '1111111111111', '111111111111111', 1, 'sim', '06-12-2018 01:40', '::1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wordcliente`
--

DROP TABLE IF EXISTS `wordcliente`;
CREATE TABLE IF NOT EXISTS `wordcliente` (
  `id_word` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) NOT NULL,
  `word` varchar(300) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `transacao` varchar(10) NOT NULL,
  `usuario` varchar(150) NOT NULL,
  `data` varchar(30) NOT NULL,
  `ip` varchar(30) NOT NULL,
  PRIMARY KEY (`id_word`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `colaborador_cliente`
--
ALTER TABLE `colaborador_cliente`
  ADD CONSTRAINT `fk_colaborador_gestor_departamento1` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_colaborador_gestor_gestor` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `departamentos`
--
ALTER TABLE `departamentos`
  ADD CONSTRAINT `fk_departamento_gestor1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
