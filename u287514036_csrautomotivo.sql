-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 11-Jul-2023 às 03:02
-- Versão do servidor: 10.5.19-MariaDB-cll-lve
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `u287514036_csrautomotivo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexos`
--

CREATE TABLE `anexos` (
  `idAnexos` int(11) NOT NULL,
  `anexo` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `os_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anotacoes_os`
--

CREATE TABLE `anotacoes_os` (
  `idAnotacoes` int(11) NOT NULL,
  `anotacao` varchar(255) NOT NULL,
  `data_hora` datetime NOT NULL,
  `os_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `anotacoes_os`
--

INSERT INTO `anotacoes_os` (`idAnotacoes`, `anotacao`, `data_hora`, `os_id`) VALUES
(1, 'Compra de oleo de motor', '2022-03-16 18:43:37', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `idCategorias` int(11) NOT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('69175c7d95a54eba1660bfbf939dfa20d2989bfa', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a', 1688591703, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383539313730333b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('3da23c635940e256029c0d13fbb35858c23bf056', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a', 1688592006, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383539323030363b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('59539cf31f9f8fd2becfe408cbb8032e28a4b9e0', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a', 1688593159, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383539333135393b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('629723779dbbac570005861b0b143cdd4d49f03f', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a', 1688593194, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383539333135393b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('d233bbe0937b34f77f100b21c428c020aab6d006', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4', 1688754548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383735343534383b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('4493fc5ef216f34bfe6f2a139e7c618d3946a82e', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4', 1688754856, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383735343835363b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('aa29e37201d63b8055ffc68455d2da15d29e7c5b', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4', 1688755172, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383735353137323b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('fdfbba7e011c2090200a0f4ee6a9df908bd69fca', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4', 1688755508, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383735353530383b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('7dd383fb8d162d2dd908fa7ac213cd699ee31bb5', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4', 1688756344, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383735363334343b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('4e09eae5d5e40b94e866a56bb722b4c14553cb99', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4', 1688756377, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383735363334343b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('a4261b436559f8384c4ecf881213ddf01268f68c', '2804:d55:5500:ae00:1426:9d77:61b4:6582', 1688782989, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383738323938393b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('dde50f46616268f1b8c1b5d5aa00d352a2c9c33d', '2804:d55:5500:ae00:1426:9d77:61b4:6582', 1688783372, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383738333337323b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('8df757a8495ece50c6f48e9eb1d5e851d4e38dad', '2804:d55:5500:ae00:1426:9d77:61b4:6582', 1688783486, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638383738333337323b6e6f6d657c733a353a225465737465223b656d61696c7c733a32303a227573756172696f4074657374652e636f6d2e6272223b75726c5f696d6167655f757365727c4e3b69647c733a313a2233223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('68a074ee04f91ce8b615c1e5fa1968166e452343', '191.5.80.156', 1689042279, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638393034323237393b6e6f6d657c733a383a224d6563616e69636f223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('2e26f377764c989defabdb446a861ecac85b122a', '191.5.80.156', 1689043239, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638393034333233393b6e6f6d657c733a383a224d6563616e69636f223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('a6b116471c321cf59067d42612b5e1367f6c33dc', '191.5.80.156', 1689044204, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638393034343230343b6e6f6d657c733a383a224d6563616e69636f223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b),
('960441042f1b27b89cb70ee99715aba4cd1e091b', '191.5.80.156', 1689044257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313638393034343230343b6e6f6d657c733a383a224d6563616e69636f223b656d61696c7c733a31353a2261646d696e4061646d696e2e636f6d223b75726c5f696d6167655f757365727c4e3b69647c733a313a2232223b7065726d697373616f7c733a313a2231223b6c6f6761646f7c623a313b737563636573737c733a32393a2250726f6475746f206578636c7569646f20636f6d207375636573736f21223b5f5f63695f766172737c613a313a7b733a373a2273756363657373223b733a333a226f6c64223b7d);

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `idClientes` int(11) NOT NULL,
  `nomeCliente` varchar(255) NOT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `pessoa_fisica` tinyint(1) NOT NULL DEFAULT 1,
  `documento` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `dataCadastro` date DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `contato` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `fornecedor` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cobrancas`
--

CREATE TABLE `cobrancas` (
  `idCobranca` int(11) NOT NULL,
  `charge_id` varchar(255) DEFAULT NULL,
  `conditional_discount_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `custom_id` int(11) DEFAULT NULL,
  `expire_at` date NOT NULL,
  `message` varchar(255) NOT NULL,
  `payment_method` varchar(11) DEFAULT NULL,
  `payment_url` varchar(255) DEFAULT NULL,
  `request_delivery_address` varchar(64) DEFAULT NULL,
  `status` varchar(36) NOT NULL,
  `total` varchar(15) DEFAULT NULL,
  `barcode` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `payment_gateway` varchar(255) DEFAULT NULL,
  `payment` varchar(64) NOT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `vendas_id` int(11) DEFAULT NULL,
  `os_id` int(11) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracoes`
--

CREATE TABLE `configuracoes` (
  `idConfig` int(11) NOT NULL,
  `config` varchar(20) NOT NULL,
  `valor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `configuracoes`
--

INSERT INTO `configuracoes` (`idConfig`, `config`, `valor`) VALUES
(2, 'app_name', 'TPNS Tecnologia & Informatica'),
(3, 'app_theme', 'white'),
(4, 'per_page', '10'),
(5, 'os_notification', 'cliente'),
(6, 'control_estoque', '1'),
(7, 'notifica_whats', 'Prezado(a), {CLIENTE_NOME} a OS de nÂº {NUMERO_OS} teve o status alterado para :{STATUS_OS} segue a descriÃ§Ã£o {DESCRI_PRODUTOS} com valor total de {VALOR_OS}!\r\n Para mais informaÃ§Ãµes entre em contato conosco.\r\n Atenciosamente, {EMITENTE} {TELEFONE_EMITENTE}.'),
(8, 'control_baixa', '0'),
(9, 'control_editos', '1'),
(10, 'control_datatable', '1'),
(11, 'pix_key', ''),
(12, 'os_status_list', '[\"Aberto\",\"Faturado\",\"Negocia\\u00e7\\u00e3o\",\"Em Andamento\",\"Or\\u00e7amento\",\"Finalizado\",\"Cancelado\",\"Aguardando Pe\\u00e7as\",\"Aprovado\"]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contas`
--

CREATE TABLE `contas` (
  `idContas` int(11) NOT NULL,
  `conta` varchar(45) DEFAULT NULL,
  `banco` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `saldo` decimal(10,2) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `idDocumentos` int(11) NOT NULL,
  `documento` varchar(70) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `email_queue`
--

CREATE TABLE `email_queue` (
  `id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  `message` text NOT NULL,
  `status` enum('pending','sending','sent','failed') DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `headers` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `email_queue`
--

INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES
(1, 'diretoria@andergrafonline.com.br', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 3<br>\n                                Data Inicial: 26/03/2022 <br>\n                                Data Final: 31/03/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Ander<br>\n                                , , <br>\n                                 - PR <br>\n                                diretoria@andergrafonline.com.br <br>\n                                (43)99152-0059                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Flavio Renato<br>\n                                flaviorenato88@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        Reparo Injeção Eletronica                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        -                    </td>\n                </tr>\n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-03-26 14:56:25', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(2, 'diretoria@andergrafonline.com.br', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 3<br>\n                                Data Inicial: 26/03/2022 <br>\n                                Data Final: 31/03/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Ander<br>\n                                , , <br>\n                                 - PR <br>\n                                diretoria@andergrafonline.com.br <br>\n                                (43)99152-0059                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Flavio Renato<br>\n                                flaviorenato88@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        Reparo Injeção Eletronica                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        -                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Observações</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        Novos Bicos a caminho                    </td>\n                </tr>\n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-03-26 14:59:09', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(3, 'flaviorenato2021@gmail.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 4<br>\n                                Data Inicial: 04/04/2022 <br>\n                                Data Final: 04/04/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Flavio Renato Freitas<br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR <br>\n                                flaviorenato2021@gmail.com <br>\n                                                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Mecanico<br>\n                                flaviorenato2021@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-04-04 21:01:20', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(4, 'maria@maria.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 5<br>\n                                Data Inicial: 07/04/2022 <br>\n                                Data Final: 07/04/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Maria<br>\n                                Afonso, 345, Centro<br>\n                                Porto Alegre - RS <br>\n                                maria@maria.com <br>\n                                (98)87766-5544                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Mecanico<br>\n                                flaviorenato2021@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-04-07 13:46:58', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(5, 'maria@maria.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 5<br>\n                                Data Inicial: 07/04/2022 <br>\n                                Data Final: 07/04/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Maria<br>\n                                Afonso, 345, Centro<br>\n                                Porto Alegre - RS <br>\n                                maria@maria.com <br>\n                                (98)87766-5544                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Mecanico<br>\n                                flaviorenato2021@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        Teste descrição                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        teste defeito                    </td>\n                </tr>\n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-04-07 14:12:52', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(6, 'joao@joao.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 6<br>\n                                Data Inicial: 10/04/2022 <br>\n                                Data Final: 14/04/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: João de Barro<br>\n                                Avenida Afonso Pena, 43545, Centro<br>\n                                Belo Horizonte - MG <br>\n                                joao@joao.com <br>\n                                (31)99887-777                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Mecanico<br>\n                                flaviorenato2021@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        ordem de serviço teste                    </td>\n                </tr>\n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-04-10 17:58:59', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(7, 'rafaela@rafaela.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 1<br>\n                                Data Inicial: 10/04/2022 <br>\n                                Data Final: 12/04/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Rafaela Lisboa<br>\n                                Avenida Afonso Pena, 998, Centro<br>\n                                Belo Horizonte - MG <br>\n                                rafaela@rafaela.com <br>\n                                (31)87778-888                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Mecanico<br>\n                                flaviorenato2021@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        Veiculo Golf&nbsp;                    </td>\n                </tr>\n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-04-10 19:27:22', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(8, 'rafaela@rafaela.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 1<br>\n                                Data Inicial: 10/04/2022 <br>\n                                Data Final: 12/04/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Rafaela Lisboa<br>\n                                Avenida Afonso Pena, 998, Centro<br>\n                                Belo Horizonte - MG <br>\n                                rafaela@rafaela.com <br>\n                                (31)87778-888                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Mecanico<br>\n                                flaviorenato2021@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Descrição</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        Cliente trouxe veiculo em tal estado                    </td>\n                </tr>\n            \n                            <tr class=\"heading\">\n                    <td colspan=\"4\">\n                        <b>Defeito Apresentado</b>\n                    </td>\n                </tr>\n                <tr>\n                    <td class=\"justify\" colspan=\"4\">\n                        nao liga                    </td>\n                </tr>\n            \n            \n            \n            \n                <tr class=\"heading\">\n                    <td>Produto</td>\n                    <td>Quantidade</td>\n                    <td>Preço unit.</td>\n                    <td style=\"text-align: center\">Sub-total</td>\n                </tr>\n\n                <tr class=\"item\"><td>Cabo de Vela do Golf</td><td>1</td><td>150.00<td style=\"text-align: center\">R$ 150,00</td></tr>\n                <tr class=\"item\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\"><strong>Total em Produtos: R$ 150,00</strong></td>\n                </tr>\n            \n            \n                <tr class=\"heading\">\n                    <td>Serviço</td>\n                    <td>Quantidade</td>\n                    <td>Preço unit.</td>\n                    <td style=\"text-align: center\">Sub-total</td>\n                </tr>\n\n                <tr class=\"item\"><td>Troca de Óleo</td><td>1</td><td>50.00</td><td>R$ 50,00</td></tr>\n                <tr class=\"item\">\n                    <td colspan=\"3\"></td>\n                    <td style=\"text-align: center\"><strong>Total em Serviços: R$ 50,00</strong></td>\n                </tr>\n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 200,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-04-10 19:32:24', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}');
INSERT INTO `email_queue` (`id`, `to`, `cc`, `bcc`, `message`, `status`, `date`, `headers`) VALUES
(9, 'joao@joao.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 2<br>\n                                Data Inicial: 25/04/2022 <br>\n                                Data Final: 25/04/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: João Pereira da Silva<br>\n                                Avenida Afonso Pena, 43545, Centro<br>\n                                Belo Horizonte - MG <br>\n                                joao@joao.com <br>\n                                (31)99887-777                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Mecanico<br>\n                                flaviorenato2021@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-04-26 00:39:24', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(10, 'joao@joao.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 2<br>\n                                Data Inicial: 25/04/2022 <br>\n                                Data Final: 25/04/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: João Pereira da Silva<br>\n                                Avenida Afonso Pena, 43545, Centro<br>\n                                Belo Horizonte - MG <br>\n                                joao@joao.com <br>\n                                (31)99887-777                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Mecanico<br>\n                                flaviorenato2021@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-04-26 00:56:39', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(11, 'joao@joao.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 2<br>\n                                Data Inicial: 25/04/2022 <br>\n                                Data Final: 25/04/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: João Pereira da Silva<br>\n                                Avenida Afonso Pena, 43545, Centro<br>\n                                Belo Horizonte - MG <br>\n                                joao@joao.com <br>\n                                (31)99887-777                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Mecanico<br>\n                                flaviorenato2021@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-04-26 01:27:30', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(12, 'joao@joao.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 3<br>\n                                Data Inicial: 02/05/2022 <br>\n                                Data Final: 02/05/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: João Pereira da Silva<br>\n                                Avenida Afonso Pena, 43545, Centro<br>\n                                Belo Horizonte - MG <br>\n                                joao@joao.com <br>\n                                (31)99887-777                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Mecanico<br>\n                                flaviorenato2021@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-05-03 04:24:34', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(13, 'joao@joao.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 4<br>\n                                Data Inicial: 04/05/2022 <br>\n                                Data Final: 04/05/2022                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: João Pereira da Silva<br>\n                                Avenida Afonso Pena, 43545, Centro<br>\n                                Belo Horizonte - MG <br>\n                                joao@joao.com <br>\n                                (31)99887-777                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Mecanico<br>\n                                flaviorenato2021@gmail.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2022-05-05 00:30:39', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(14, 'joao@joao.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/595e40c8171241b4fff19af4f3891e7a.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 5<br>\n                                Data Inicial: 28/05/2023 <br>\n                                Data Final: 28/05/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: João Pereira da Silva<br>\n                                Avenida Afonso Pena, 43545, Centro<br>\n                                Belo Horizonte - MG <br>\n                                joao@joao.com <br>\n                                (31)99887-777                            </td>\n\n                            <td style=\"text-align: right\">\n                                Ander Auto System <br>\n                                Rua Iretama, 80, Lindóia<br>\n                                Londrina - PR CEP: 86031-110 <br>\n                                Responsável: Mecanico<br>\n                                admin@admin.com                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-05-28 18:13:28', 'a:3:{s:4:\"From\";s:24:\"flaviorenato88@gmail.com\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(15, 'joao@joao.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/9005b0ca2de15e30c831a313550831b9.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 6<br>\n                                Data Inicial: 05/07/2023 <br>\n                                Data Final: 06/07/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: João Pereira da Silva<br>\n                                Avenida Afonso Pena, 43545, Centro<br>\n                                Belo Horizonte - MG <br>\n                                joao@joao.com <br>\n                                (31)99887-777                            </td>\n\n                            <td style=\"text-align: right\">\n                                TPNS Tecnologia & Informática <br>\n                                Rua São Paulo, 80, Centro<br>\n                                BH - MG CEP: 86031-110 <br>\n                                Responsável: Teste<br>\n                                usuario@teste.com.br                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-07-05 21:16:14', 'a:3:{s:4:\"From\";s:21:\"comercial@tpns.com.br\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}'),
(16, 'joao@joao.com', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/9005b0ca2de15e30c831a313550831b9.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 6<br>\n                                Data Inicial: 05/07/2023 <br>\n                                Data Final: 06/07/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: João Pereira da Silva<br>\n                                Avenida Afonso Pena, 43545, Centro<br>\n                                Belo Horizonte - MG <br>\n                                joao@joao.com <br>\n                                (31)99887-777                            </td>\n\n                            <td style=\"text-align: right\">\n                                TPNS Tecnologia & Informática <br>\n                                Rua São Paulo, 80, Centro<br>\n                                BH - MG CEP: 86031-110 <br>\n                                Responsável: Teste<br>\n                                usuario@teste.com.br                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Orçamento                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-07-05 21:22:33', 'a:3:{s:4:\"From\";s:21:\"comercial@tpns.com.br\";s:7:\"Subject\";s:27:\"Ordem de Serviço - Editada\";s:11:\"Return-Path\";s:0:\"\";}'),
(17, '', NULL, NULL, '\n<!doctype html>\n<html>\n\n<head>\n    <meta charset=\"utf-8\">\n    <style>\n        .invoice-box {\n            max-width: 1100px;\n            margin: auto;\n            padding: 10px;\n            border: 1px solid #eee;\n            box-shadow: 0 0 10px rgba(0, 0, 0, .15);\n            font-size: 16px;\n            line-height: 24px;\n            font-family: \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n            color: #555;\n        }\n\n        .invoice-box table {\n            width: 100%;\n            line-height: inherit;\n            text-align: left;\n        }\n\n        .invoice-box table td {\n            padding: 5px;\n            vertical-align: top;\n        }\n\n        .invoice-box table tr td:nth-child(2) {\n            text-align: right;\n        }\n\n        .invoice-box table tr.top table td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.top table td.title {\n            font-size: 45px;\n            line-height: 45px;\n            color: #333;\n        }\n\n        .invoice-box table tr.information table td {\n            padding-bottom: 40px;\n        }\n\n        .invoice-box table tr.heading td {\n            background: #eee;\n            border-bottom: 1px solid #ddd;\n            font-weight: bold;\n        }\n\n        .invoice-box table tr.details td {\n            padding-bottom: 20px;\n        }\n\n        .invoice-box table tr.item td {\n            border-bottom: 1px solid #eee;\n        }\n\n        .invoice-box table tr.item.last td {\n            border-bottom: none;\n        }\n\n        .invoice-box table tr.total td:nth-child(2) {\n            border-top: 2px solid #eee;\n            font-weight: bold;\n        }\n\n        @media only screen and (max-width: 600px) {\n            .invoice-box table tr.top table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n\n            .invoice-box table tr.information table td {\n                width: 100%;\n                display: block;\n                text-align: center;\n            }\n        }\n\n        /** RTL **/\n        .rtl {\n            direction: rtl;\n            font-family: Tahoma, \'Helvetica Neue\', \'Helvetica\', Helvetica, Arial, sans-serif;\n        }\n\n        .rtl table {\n            text-align: right;\n        }\n\n        .rtl table tr td:nth-child(2) {\n            text-align: left;\n        }\n\n        .justify {\n            text-align: justify;\n        }\n    </style>\n</head>\n\n<body>\n    <div class=\"invoice-box\">\n        <table cellpadding=\"0\" cellspacing=\"0\">\n            <tr class=\"top\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td class=\"title\">\n                                <img src=\"http://localhost/mapos2/assets/uploads/9005b0ca2de15e30c831a313550831b9.png\" style=\"width:100%; max-width:120px;\">\n                            </td>\n                            <td style=\"text-align: right\">\n                                OS #: 7<br>\n                                Data Inicial: 07/07/2023 <br>\n                                Data Final: 08/07/2023                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"information\">\n                <td colspan=\"4\">\n                    <table>\n                        <tr>\n                            <td>\n                                Cliente: Daniele<br>\n                                , , <br>\n                                 -  <br>\n                                 <br>\n                                (41)99530-4165                            </td>\n\n                            <td style=\"text-align: right\">\n                                TPNS Tecnologia & Informática <br>\n                                Rua São Paulo, 80, Centro<br>\n                                BH - MG CEP: 86031-110 <br>\n                                Responsável: Teste<br>\n                                usuario@teste.com.br                            </td>\n                        </tr>\n                    </table>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"2\">\n                    Status\n                </td>\n                <td colspan=\"2\" style=\"text-align: center\">\n                    Aberto                </td>\n            </tr>\n\n            \n            \n            \n            \n            \n            \n                        <tr class=\"heading\">\n                <td colspan=\"4\">\n                    <br>\n                </td>\n            </tr>\n\n            <tr class=\"heading\">\n                <td colspan=\"3\"></td>\n                <td style=\"text-align: center\">\n                    <strong>Total: R$ 0,00</strong>\n                </td>\n            </tr>\n        </table>\n    </div>\n</body>\n\n</html>\n', 'pending', '2023-07-07 18:33:57', 'a:3:{s:4:\"From\";s:21:\"comercial@tpns.com.br\";s:7:\"Subject\";s:26:\"Ordem de Serviço - Criada\";s:11:\"Return-Path\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emitente`
--

CREATE TABLE `emitente` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cnpj` varchar(45) DEFAULT NULL,
  `ie` varchar(50) DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url_logo` varchar(225) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `emitente`
--

INSERT INTO `emitente` (`id`, `nome`, `cnpj`, `ie`, `rua`, `numero`, `bairro`, `cidade`, `uf`, `telefone`, `email`, `url_logo`, `cep`) VALUES
(1, 'TPNS Tecnologia & Informática', '00.000.000/0000-00', 'ISENTO', 'Rua São Paulo', '80', 'Centro', 'BH', 'MG', '(43)0000-000', 'comercial@tpns.com.br', 'http://localhost/mapos2/assets/uploads/9005b0ca2de15e30c831a313550831b9.png', '86031-110');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `idEquipamentos` int(11) NOT NULL,
  `equipamento` varchar(150) NOT NULL,
  `num_serie` varchar(80) DEFAULT NULL,
  `modelo` varchar(80) DEFAULT NULL,
  `cor` varchar(45) DEFAULT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  `tensao` varchar(45) DEFAULT NULL,
  `potencia` varchar(45) DEFAULT NULL,
  `voltagem` varchar(45) DEFAULT NULL,
  `data_fabricacao` date DEFAULT NULL,
  `marcas_id` int(11) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos_os`
--

CREATE TABLE `equipamentos_os` (
  `idEquipamentos_os` int(11) NOT NULL,
  `defeito_declarado` varchar(200) DEFAULT NULL,
  `defeito_encontrado` varchar(200) DEFAULT NULL,
  `solucao` varchar(45) DEFAULT NULL,
  `equipamentos_id` int(11) DEFAULT NULL,
  `os_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `idFotos` int(11) NOT NULL,
  `idVeiculo` int(11) DEFAULT NULL,
  `documento` varchar(70) DEFAULT NULL,
  `descricao` text DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `fotos`
--

INSERT INTO `fotos` (`idFotos`, `idVeiculo`, `documento`, `descricao`, `file`, `path`, `url`, `cadastro`, `categoria`, `tipo`, `tamanho`) VALUES
(1, 2, 'Flavio Renato de Freitas', 'teste', '8421ddecc27e731b27dfdd9561dd220d.jpg', 'C:/laragon/www/mapos2/assets/arquivos/16-03-2022/8421ddecc27e731b27dfdd9561dd220d.jpg', 'http://localhost/mapos2/assets/arquivos/16-03-2022/8421ddecc27e731b27dfdd9561dd220d.jpg', '2022-03-16', NULL, '.jpg', '135.57'),
(2, 2, 'Foto-2', 'conecta', '3e40f2742b4e27a917cf6821a7230119.jpg', 'C:/laragon/www/mapos2/assets/arquivos/16-03-2022/3e40f2742b4e27a917cf6821a7230119.jpg', 'http://localhost/mapos2/assets/arquivos/16-03-2022/3e40f2742b4e27a917cf6821a7230119.jpg', '2022-03-17', NULL, '.jpg', '97.11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `garantias`
--

CREATE TABLE `garantias` (
  `idGarantias` int(11) NOT NULL,
  `dataGarantia` date DEFAULT NULL,
  `refGarantia` varchar(15) DEFAULT NULL,
  `textoGarantia` text DEFAULT NULL,
  `usuarios_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_de_vendas`
--

CREATE TABLE `itens_de_vendas` (
  `idItens` int(11) NOT NULL,
  `subTotal` varchar(45) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `preco` varchar(15) DEFAULT NULL,
  `vendas_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lancamentos`
--

CREATE TABLE `lancamentos` (
  `idLancamentos` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` varchar(15) NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `baixado` tinyint(1) DEFAULT 0,
  `cliente_fornecedor` varchar(255) DEFAULT NULL,
  `forma_pgto` varchar(100) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL,
  `categorias_id` int(11) DEFAULT NULL,
  `contas_id` int(11) DEFAULT NULL,
  `vendas_id` int(11) DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `idLogs` int(11) NOT NULL,
  `usuario` varchar(80) DEFAULT NULL,
  `tarefa` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `logs`
--

INSERT INTO `logs` (`idLogs`, `usuario`, `tarefa`, `data`, `hora`, `ip`) VALUES
(1, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-05', '00:11:21', '::1'),
(2, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-08', '19:07:56', '::1'),
(3, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-08', '19:12:36', '::1'),
(4, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-09', '19:19:10', '::1'),
(5, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-09', '19:19:12', '::1'),
(6, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-09', '19:19:13', '::1'),
(7, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-16', '17:46:52', '::1'),
(8, 'Flavio Renato', 'Adicionou um cliente.', '2022-03-16', '17:54:00', '::1'),
(9, 'Flavio Renato', 'Adicionou um cliente.', '2022-03-16', '18:11:26', '::1'),
(10, 'José da Silva', 'Adicionou um cliente.', '2022-03-16', '18:19:19', '::1'),
(11, 'José da Silva', 'Adicionou um serviço', '2022-03-16', '18:19:54', '::1'),
(12, 'José da Silva', 'Adicionou uma receita', '2022-03-16', '18:21:14', '::1'),
(13, 'José da Silva', 'Adicionou uma OS', '2022-03-16', '18:41:45', '::1'),
(14, 'José da Silva', 'Adicionou serviço a uma OS. ID (OS): 1', '2022-03-16', '18:42:04', '::1'),
(15, 'José da Silva', 'Adicionou serviço a uma OS. ID (OS): 1', '2022-03-16', '18:42:34', '::1'),
(16, 'José da Silva', 'Adicionou serviço a uma OS. ID (OS): 1', '2022-03-16', '18:43:01', '::1'),
(17, 'José da Silva', 'Adicionou anotação a uma OS. ID (OS): 1', '2022-03-16', '18:43:37', '::1'),
(18, 'José da Silva', 'Adicionou um arquivo', '2022-03-16', '19:35:24', '::1'),
(19, 'José da Silva', 'Adicionou um arquivo', '2022-03-16', '19:35:47', '::1'),
(20, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-19', '13:20:42', '::1'),
(21, 'Flavio Renato', 'Adicionou um serviço', '2022-03-19', '13:21:36', '::1'),
(22, 'Flavio Renato', 'Adicionou um produto', '2022-03-19', '13:38:21', '::1'),
(23, 'Flavio Renato', 'Alterou um produto. ID: 1', '2022-03-19', '15:16:56', '::1'),
(24, 'Flavio Renato', 'Adicionou uma receita', '2022-03-19', '15:18:02', '::1'),
(25, 'Flavio Renato', 'Adicionou uma OS', '2022-03-19', '15:19:05', '::1'),
(26, 'Flavio Renato', 'Alterou um produto. ID: 1', '2022-03-19', '15:44:56', '::1'),
(27, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-19', '18:17:34', '::1'),
(28, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-22', '19:48:36', '::1'),
(29, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-23', '02:30:40', '::1'),
(30, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-25', '04:11:15', '::1'),
(31, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-25', '15:48:53', '::1'),
(32, 'Flavio Renato', 'Alterou um cliente. ID1', '2022-03-25', '15:58:52', '::1'),
(33, 'Flavio Renato', 'Adicionou um cliente.', '2022-03-25', '16:01:12', '::1'),
(34, 'Flavio Renato', 'Adicionou informações de emitente.', '2022-03-25', '18:41:33', '::1'),
(35, 'Flavio Renato', 'Adicionou uma receita', '2022-03-25', '19:10:35', '::1'),
(36, 'Flavio Renato', 'Adicionou um cliente.', '2022-03-25', '19:16:13', '::1'),
(37, 'Flavio Renato', 'Alterou um cliente. ID5', '2022-03-25', '19:17:33', '::1'),
(38, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-25', '23:42:03', '::1'),
(39, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-26', '12:28:06', '::1'),
(40, 'Flavio Renato', 'Adicionou uma receita', '2022-03-26', '12:28:50', '::1'),
(41, 'Flavio Renato', 'Adicionou uma venda.', '2022-03-26', '12:30:43', '::1'),
(42, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-26', '14:44:47', '::1'),
(43, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-26', '14:54:28', '::1'),
(44, 'Flavio Renato', 'Adicionou uma OS', '2022-03-26', '14:56:25', '::1'),
(45, 'Flavio Renato', 'Alterou uma OS. ID: 3', '2022-03-26', '14:59:09', '::1'),
(46, 'Adriana Lima', 'Adicionou um usuário.', '2022-03-26', '15:04:00', '::1'),
(47, 'Mecanico', 'Efetuou login no sistema', '2022-03-26', '15:04:29', '::1'),
(48, 'Ander', 'Adicionou um produto', '2022-03-26', '15:29:42', '::1'),
(49, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-26', '15:31:44', '::1'),
(50, 'Ander', 'Alterou uma permissão. ID: 1', '2022-03-26', '17:15:17', '::1'),
(51, 'Ander', 'Alterou uma permissão. ID: 1', '2022-03-26', '17:15:33', '::1'),
(52, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-27', '21:05:42', '::1'),
(53, 'Flavio Renato', 'Alterou uma venda. ID: 1', '2022-03-27', '21:08:40', '::1'),
(54, 'Flavio Renato', 'Efetuou login no sistema', '2022-03-28', '19:28:46', '::1'),
(55, 'Flavio Renato', 'Efetuou login no sistema', '2022-04-01', '20:05:42', '::1'),
(56, 'Flavio Renato', 'Efetuou login no sistema', '2022-04-02', '05:16:35', '::1'),
(57, 'Mecanico', 'Efetuou login no sistema', '2022-04-02', '05:18:11', '::1'),
(58, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-02', '05:19:09', '::1'),
(59, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-02', '05:19:24', '::1'),
(60, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-02', '05:27:58', '::1'),
(61, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-02', '05:56:41', '::1'),
(62, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-02', '05:57:02', '::1'),
(63, 'Mecanico', 'Efetuou login no sistema', '2022-04-02', '22:48:54', '::1'),
(64, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-02', '22:49:28', '::1'),
(65, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-02', '22:49:45', '::1'),
(66, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-02', '22:57:23', '::1'),
(67, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-02', '22:57:40', '::1'),
(68, 'Mecanico', 'Adicionou um produto', '2022-04-02', '23:02:04', '::1'),
(69, 'Mecanico', 'Removeu um veiculo. ID: 2', '2022-04-03', '00:39:39', '::1'),
(70, 'Mecanico', 'Alterou um produto. ID: 1', '2022-04-03', '01:35:37', '::1'),
(71, 'Mecanico', 'Removeu um veiculo. ID: 1', '2022-04-03', '03:44:15', '::1'),
(72, 'Mecanico', 'Removeu um veiculo. ID: 1', '2022-04-03', '03:44:23', '::1'),
(73, 'Mecanico', 'Removeu um veiculo. ID: 1', '2022-04-03', '04:04:07', '::1'),
(74, 'Mecanico', 'Adicionou um produto', '2022-04-03', '04:32:45', '::1'),
(75, 'Mecanico', 'Removeu um veiculo. ID: 5', '2022-04-03', '05:04:11', '::1'),
(76, 'Mecanico', 'Alterou um produto. ID: 1', '2022-04-03', '05:09:38', '::1'),
(77, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-03', '05:31:42', '::1'),
(78, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-03', '05:32:22', '::1'),
(79, 'Mecanico', 'Efetuou login no sistema', '2022-04-03', '14:20:11', '::1'),
(80, 'Mecanico', 'Efetuou login no sistema', '2022-04-03', '14:20:13', '::1'),
(81, 'Mecanico', 'Alterou um cliente. ID5', '2022-04-03', '16:00:25', '::1'),
(82, 'Mecanico', 'Removeu um veiculo. ID: 5', '2022-04-03', '16:34:25', '::1'),
(83, 'Mecanico', 'Removeu um veiculo. ID: 1', '2022-04-03', '17:55:55', '::1'),
(84, 'Mecanico', 'Removeu um veiculo. ID: 2', '2022-04-03', '18:39:50', '::1'),
(85, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-03', '18:49:27', '::1'),
(86, 'Mecanico', 'Alterou uma permissão. ID: 1', '2022-04-03', '18:50:03', '::1'),
(87, 'Mecanico', 'Efetuou login no sistema', '2022-04-04', '02:43:13', '::1'),
(88, 'Mecanico', 'Removeu um veiculo. ID: 3', '2022-04-04', '03:19:50', '::1'),
(89, 'Mecanico', 'Removeu um veiculo. ID: 0', '2022-04-04', '04:31:02', '::1'),
(90, 'Mecanico', 'Efetuou login no sistema', '2022-04-04', '17:48:37', '::1'),
(91, 'Mecanico', 'Removeu um veiculo. ID: 1', '2022-04-04', '17:50:19', '::1'),
(92, 'Mecanico', 'Adicionou um veiculo', '2022-04-04', '18:04:31', '::1'),
(93, 'Mecanico', 'Adicionou um veiculo', '2022-04-04', '18:11:25', '::1'),
(94, 'Mecanico', 'Alterou um produto. ID: 5', '2022-04-04', '18:12:26', '::1'),
(95, 'Mecanico', 'Alterou um veiculo. ID: 4', '2022-04-04', '18:13:34', '::1'),
(96, 'Mecanico', 'Atualizou estoque de um produto. ID: 5', '2022-04-04', '18:30:43', '::1'),
(97, 'Mecanico', 'Adicionou um veiculo', '2022-04-04', '20:20:55', '::1'),
(98, 'Mecanico', 'Alterou um veiculo. ID: 13', '2022-04-04', '20:21:11', '::1'),
(99, 'Mecanico', 'Adicionou um veiculo', '2022-04-04', '20:34:09', '::1'),
(100, 'Mecanico', 'Alterou um veiculo. ID: 14', '2022-04-04', '21:00:14', '::1'),
(101, 'Mecanico', 'Adicionou uma OS', '2022-04-04', '21:01:20', '::1'),
(102, 'Mecanico', 'Adicionou um veiculo', '2022-04-04', '21:10:12', '::1'),
(103, 'Mecanico', 'Removeu um veiculo. ID: 15', '2022-04-04', '21:10:55', '::1'),
(104, 'Mecanico', 'Alterou um veiculo. ID: 14', '2022-04-04', '21:11:05', '::1'),
(105, 'Mecanico', 'Efetuou login no sistema', '2022-04-05', '01:59:44', '::1'),
(106, 'Mecanico', 'Efetuou login no sistema', '2022-04-05', '01:59:47', '::1'),
(107, 'Mecanico', 'Adicionou um veiculo', '2022-04-05', '02:38:36', '::1'),
(108, 'Mecanico', 'Adicionou um veiculo', '2022-04-05', '02:44:06', '::1'),
(109, 'Mecanico', 'Alterou um veiculo. ID: 16', '2022-04-05', '02:55:53', '::1'),
(110, 'Mecanico', 'Removeu uma OS. ID: 4', '2022-04-05', '03:10:05', '::1'),
(111, 'Mecanico', 'Removeu uma OS. ID: 3', '2022-04-05', '03:10:10', '::1'),
(112, 'Mecanico', 'Removeu uma OS. ID: 2', '2022-04-05', '03:10:16', '::1'),
(113, 'Mecanico', 'Removeu uma OS. ID: 1', '2022-04-05', '03:10:22', '::1'),
(114, 'Mecanico', 'Removeu uma venda. ID: 1', '2022-04-05', '03:10:31', '::1'),
(115, 'Mecanico', 'Removeu um veiculo. ID: 17', '2022-04-05', '03:10:41', '::1'),
(116, 'Mecanico', 'Removeu um veiculo. ID: 16', '2022-04-05', '03:10:47', '::1'),
(117, 'Mecanico', 'Removeu um veiculo. ID: 14', '2022-04-05', '03:10:52', '::1'),
(118, 'Mecanico', 'Removeu um veiculo. ID: 13', '2022-04-05', '03:10:57', '::1'),
(119, 'Mecanico', 'Removeu um cliente. ID5', '2022-04-05', '03:11:07', '::1'),
(120, 'Mecanico', 'Removeu um cliente. ID4', '2022-04-05', '03:11:12', '::1'),
(121, 'Mecanico', 'Removeu um cliente. ID4', '2022-04-05', '03:11:18', '::1'),
(122, 'Mecanico', 'Removeu um cliente. ID4', '2022-04-05', '03:11:23', '::1'),
(123, 'Mecanico', 'Removeu um cliente. ID1', '2022-04-05', '03:11:29', '::1'),
(124, 'Mecanico', 'Removeu um cliente. ID2', '2022-04-05', '03:11:36', '::1'),
(125, 'Mecanico', 'Removeu um cliente. ID3', '2022-04-05', '03:11:43', '::1'),
(126, 'Mecanico', 'Adicionou um veiculo', '2022-04-05', '03:34:44', '::1'),
(127, 'Mecanico', 'Alterou um veiculo. ID: 18', '2022-04-05', '03:35:04', '::1'),
(128, 'Mecanico', 'Adicionou um cliente.', '2022-04-05', '04:58:48', '::1'),
(129, 'Mecanico', 'Adicionou um veiculo', '2022-04-05', '05:00:52', '::1'),
(130, 'Mecanico', 'Adicionou um cliente.', '2022-04-05', '05:02:25', '::1'),
(131, 'Mecanico', 'Adicionou um veiculo', '2022-04-05', '05:03:29', '::1'),
(132, 'Mecanico', 'Efetuou login no sistema', '2022-04-05', '21:04:26', '::1'),
(133, 'Mecanico', 'Alterou um veiculo. ID: 20', '2022-04-05', '21:09:02', '::1'),
(134, 'Mecanico', 'Alterou um veiculo. ID: 19', '2022-04-05', '21:09:15', '::1'),
(135, 'Mecanico', 'Alterou um veiculo. ID: 18', '2022-04-05', '21:09:27', '::1'),
(136, 'Mecanico', 'Efetuou login no sistema', '2022-04-05', '21:10:54', '127.0.0.1'),
(137, 'Mecanico', 'Alterou um veiculo. ID: 19', '2022-04-05', '21:11:35', '127.0.0.1'),
(138, 'Mecanico', 'Efetuou login no sistema', '2022-04-07', '04:06:27', '::1'),
(139, 'Mecanico', 'Efetuou login no sistema', '2022-04-07', '04:12:31', '::1'),
(140, 'Mecanico', 'Adicionou um veiculo', '2022-04-07', '04:43:43', '::1'),
(141, 'Mecanico', 'Alterou um veiculo. ID: 21', '2022-04-07', '04:48:42', '::1'),
(142, 'Mecanico', 'Alterou um veiculo. ID: 21', '2022-04-07', '04:56:57', '::1'),
(143, 'Mecanico', 'Alterou um veiculo. ID: 21', '2022-04-07', '05:00:26', '::1'),
(144, 'Mecanico', 'Alterou um veiculo. ID: 20', '2022-04-07', '05:00:54', '::1'),
(145, 'Mecanico', 'Alterou um veiculo. ID: 18', '2022-04-07', '05:08:14', '::1'),
(146, 'Mecanico', 'Removeu um veiculo. ID: 21', '2022-04-07', '05:14:50', '::1'),
(147, 'Mecanico', 'Removeu um veiculo. ID: 20', '2022-04-07', '05:14:56', '::1'),
(148, 'Mecanico', 'Removeu um veiculo. ID: 19', '2022-04-07', '05:15:02', '::1'),
(149, 'Mecanico', 'Removeu um veiculo. ID: 19', '2022-04-07', '05:15:08', '::1'),
(150, 'Mecanico', 'Removeu um veiculo. ID: 18', '2022-04-07', '05:15:15', '::1'),
(151, 'Mecanico', 'Removeu um cliente. ID7', '2022-04-07', '05:15:28', '::1'),
(152, 'Mecanico', 'Removeu um cliente. ID6', '2022-04-07', '05:15:34', '::1'),
(153, 'Mecanico', 'Removeu um veiculo. ID: 19', '2022-04-07', '05:15:42', '::1'),
(154, 'Mecanico', 'Removeu um veiculo. ID: 18', '2022-04-07', '05:15:48', '::1'),
(155, 'Mecanico', 'Adicionou um cliente.', '2022-04-07', '05:47:43', '::1'),
(156, 'Mecanico', 'Adicionou um veiculo', '2022-04-07', '05:55:29', '::1'),
(157, 'Mecanico', 'Alterou um veiculo. ID: 22', '2022-04-07', '06:26:51', '::1'),
(158, 'Mecanico', 'Alterou um veiculo. ID: 22', '2022-04-07', '06:27:28', '::1'),
(159, 'Mecanico', 'Alterou um veiculo. ID: 22', '2022-04-07', '06:32:44', '::1'),
(160, 'Mecanico', 'Alterou um veiculo. ID: 22', '2022-04-07', '06:32:52', '::1'),
(161, 'Mecanico', 'Adicionou um veiculo', '2022-04-07', '06:54:40', '::1'),
(162, 'Mecanico', 'Adicionou um veiculo', '2022-04-07', '06:59:13', '::1'),
(163, 'Mecanico', 'Adicionou um veiculo', '2022-04-07', '07:05:31', '::1'),
(164, 'Mecanico', 'Removeu um veiculo. ID: 22', '2022-04-07', '07:05:52', '::1'),
(165, 'Mecanico', 'Removeu um veiculo. ID: 23', '2022-04-07', '07:05:58', '::1'),
(166, 'Mecanico', 'Efetuou login no sistema', '2022-04-07', '13:45:29', '::1'),
(167, 'Mecanico', 'Adicionou uma OS', '2022-04-07', '13:46:58', '::1'),
(168, 'Mecanico', 'Alterou uma OS. ID: 5', '2022-04-07', '14:12:52', '::1'),
(169, 'Mecanico', 'Efetuou login no sistema', '2022-04-08', '00:26:54', '::1'),
(170, 'Mecanico', 'Adicionou serviço a uma OS. ID (OS): 5', '2022-04-08', '01:23:30', '::1'),
(171, 'Mecanico', 'Efetuou login no sistema', '2022-04-09', '01:53:12', '::1'),
(172, 'Mecanico', 'Removeu um veiculo. ID: 25', '2022-04-09', '02:06:54', '::1'),
(173, 'Mecanico', 'Adicionou um veiculo', '2022-04-09', '02:07:17', '::1'),
(174, 'Mecanico', 'Alterou um veiculo. ID: 27', '2022-04-09', '03:00:26', '::1'),
(175, 'Mecanico', 'Adicionou um cliente.', '2022-04-09', '03:05:51', '::1'),
(176, 'Mecanico', 'Alterou um veiculo. ID: 27', '2022-04-09', '03:06:07', '::1'),
(177, 'Mecanico', 'Alterou um veiculo. ID: 27', '2022-04-09', '04:06:03', '::1'),
(178, 'Mecanico', 'Alterou um veiculo. ID: 28', '2022-04-09', '04:06:23', '::1'),
(179, 'Mecanico', 'Efetuou login no sistema', '2022-04-09', '14:41:50', '::1'),
(180, 'Mecanico', 'Efetuou login no sistema', '2022-04-10', '05:31:21', '::1'),
(181, 'Mecanico', 'Adicionou um veiculo', '2022-04-10', '05:31:49', '::1'),
(182, 'Mecanico', 'Alterou um veiculo. ID: 29', '2022-04-10', '05:32:08', '::1'),
(183, 'Mecanico', 'Alterou um veiculo. ID: 29', '2022-04-10', '05:32:08', '::1'),
(184, 'Mecanico', 'Alterou um veiculo. ID: 29', '2022-04-10', '05:32:25', '::1'),
(185, 'Mecanico', 'Adicionou uma venda.', '2022-04-10', '05:34:44', '::1'),
(186, 'Mecanico', 'Adicionou um veiculo', '2022-04-10', '05:57:18', '::1'),
(187, 'Mecanico', 'Adicionou um veiculo', '2022-04-10', '06:21:43', '::1'),
(188, 'Mecanico', 'Adicionou um veiculo', '2022-04-10', '06:31:02', '::1'),
(189, 'Mecanico', 'Efetuou login no sistema', '2022-04-10', '17:09:14', '::1'),
(190, 'Mecanico', 'Adicionou uma OS', '2022-04-10', '17:58:59', '::1'),
(191, 'Mecanico', 'Adicionou um veiculo', '2022-04-10', '18:33:39', '::1'),
(192, 'Mecanico', 'Removeu um veiculo. ID: 27', '2022-04-10', '18:59:27', '::1'),
(193, 'Mecanico', 'Removeu um veiculo. ID: 33', '2022-04-10', '18:59:33', '::1'),
(194, 'Mecanico', 'Removeu um veiculo. ID: 32', '2022-04-10', '18:59:38', '::1'),
(195, 'Mecanico', 'Removeu um veiculo. ID: 31', '2022-04-10', '18:59:44', '::1'),
(196, 'Mecanico', 'Removeu um veiculo. ID: 30', '2022-04-10', '18:59:49', '::1'),
(197, 'Mecanico', 'Removeu um veiculo. ID: 29', '2022-04-10', '18:59:55', '::1'),
(198, 'Mecanico', 'Removeu um veiculo. ID: 28', '2022-04-10', '19:00:01', '::1'),
(199, 'Mecanico', 'Alterou um cliente. ID9', '2022-04-10', '19:00:33', '::1'),
(200, 'Mecanico', 'Removeu uma OS. ID: 5', '2022-04-10', '19:02:03', '::1'),
(201, 'Mecanico', 'Removeu uma OS. ID: 6', '2022-04-10', '19:02:09', '::1'),
(202, 'Mecanico', 'Removeu um produto. ID: 1', '2022-04-10', '19:03:15', '::1'),
(203, 'Mecanico', 'Removeu um produto. ID: 2', '2022-04-10', '19:03:20', '::1'),
(204, 'Mecanico', 'Removeu um produto. ID: 3', '2022-04-10', '19:03:25', '::1'),
(205, 'Mecanico', 'Removeu um produto. ID: 4', '2022-04-10', '19:03:31', '::1'),
(206, 'Mecanico', 'Removeu um produto. ID: 5', '2022-04-10', '19:03:37', '::1'),
(207, 'Mecanico', 'Removeu uma venda. ID: 2', '2022-04-10', '19:03:58', '::1'),
(208, 'Mecanico', 'Adicionou um cliente.', '2022-04-10', '19:06:06', '::1'),
(209, 'Mecanico', 'Removeu um cliente. ID10', '2022-04-10', '19:06:31', '::1'),
(210, 'Mecanico', 'Adicionou um cliente.', '2022-04-10', '19:08:38', '::1'),
(211, 'Mecanico', 'Adicionou um cliente.', '2022-04-10', '19:11:44', '::1'),
(212, 'Mecanico', 'Adicionou um cliente.', '2022-04-10', '19:15:26', '::1'),
(213, 'Mecanico', 'Adicionou um cliente.', '2022-04-10', '19:16:20', '::1'),
(214, 'Mecanico', 'Adicionou um veiculo', '2022-04-10', '19:24:46', '::1'),
(215, 'Mecanico', 'Adicionou um produto', '2022-04-10', '19:26:54', '::1'),
(216, 'Mecanico', 'Adicionou uma OS', '2022-04-10', '19:27:22', '::1'),
(217, 'Mecanico', 'Adicionou produto a uma OS. ID (OS): 1', '2022-04-10', '19:27:34', '::1'),
(218, 'Mecanico', 'Adicionou serviço a uma OS. ID (OS): 1', '2022-04-10', '19:27:42', '::1'),
(219, 'Mecanico', 'Alterou uma OS. ID: 1', '2022-04-10', '19:32:24', '::1'),
(220, 'Mecanico', 'Alterou um cliente. ID6', '2022-04-10', '20:36:45', '::1'),
(221, 'Mecanico', 'Efetuou login no sistema', '2022-04-12', '02:54:39', '::1'),
(222, 'Mecanico', 'Alterou um veiculo. ID: 1', '2022-04-12', '02:54:54', '::1'),
(223, 'Mecanico', 'Alterou um veiculo. ID: 1', '2022-04-12', '03:09:46', '::1'),
(224, 'Mecanico', 'Alterou um veiculo. ID: 1', '2022-04-12', '03:20:30', '::1'),
(225, 'Mecanico', 'Alterou um veiculo. ID: 1', '2022-04-12', '03:43:25', '::1'),
(226, 'Mecanico', 'Efetuou login no sistema', '2022-04-12', '20:47:58', '::1'),
(227, 'Mecanico', 'Alterou um veiculo. ID: 1', '2022-04-12', '20:48:26', '::1'),
(228, 'Mecanico', 'Adicionou um veiculo', '2022-04-12', '22:20:32', '::1'),
(229, 'Mecanico', 'Efetuou login no sistema', '2022-04-13', '04:03:31', '::1'),
(230, 'Mecanico', 'Alterou um veiculo. ID: 2', '2022-04-13', '04:18:36', '::1'),
(231, 'Mecanico', 'Adicionou uma venda.', '2022-04-13', '04:56:44', '::1'),
(232, 'Mecanico', 'Efetuou login no sistema', '2022-04-25', '22:47:55', '::1'),
(233, 'Mecanico', 'Alterou um veiculo. ID: 2', '2022-04-25', '22:48:21', '::1'),
(234, 'Mecanico', 'ESTOQUE: produto id 1 teve baixa de estoque quantidade: 1', '2022-04-26', '00:11:55', '::1'),
(235, 'Mecanico', 'Removeu uma OS. ID: 1', '2022-04-26', '00:11:56', '::1'),
(236, 'Mecanico', 'Adicionou uma OS', '2022-04-26', '00:39:24', '::1'),
(237, 'Mecanico', 'Alterou uma OS. ID: 2', '2022-04-26', '00:56:39', '::1'),
(238, 'Mecanico', 'Alterou uma OS. ID: 2', '2022-04-26', '01:27:30', '::1'),
(239, 'Mecanico', 'Efetuou login no sistema', '2022-05-03', '03:09:11', '::1'),
(240, 'Mecanico', 'Adicionou uma OS', '2022-05-03', '04:24:34', '::1'),
(241, 'Mecanico', 'Efetuou login no sistema', '2022-05-04', '00:59:55', '::1'),
(242, 'Mecanico', 'Efetuou login no sistema', '2022-05-04', '15:34:19', '::1'),
(243, 'Mecanico', 'Alterou um produto. ID: 1', '2022-05-04', '15:36:14', '::1'),
(244, 'Mecanico', 'Efetuou login no sistema', '2022-05-05', '00:29:40', '::1'),
(245, 'Mecanico', 'Adicionou uma OS', '2022-05-05', '00:30:39', '::1'),
(246, 'Mecanico', 'Adicionou produto a uma OS. ID (OS): 3', '2022-05-05', '01:48:02', '::1'),
(247, 'Mecanico', 'Efetuou login no sistema', '2022-05-06', '01:29:39', '::1'),
(248, 'Mecanico', 'Adicionou produto a uma OS. ID (OS): 4', '2022-05-06', '02:43:38', '::1'),
(249, 'Mecanico', 'Removeu produto de uma OS. ID (OS): 4', '2022-05-06', '03:02:51', '::1'),
(250, 'Mecanico', 'Adicionou um produto', '2022-05-06', '03:43:57', '::1'),
(251, 'Mecanico', 'Adicionou produto a uma OS. ID (OS): 4', '2022-05-06', '03:44:46', '::1'),
(252, 'Mecanico', 'Adicionou um produto', '2022-05-06', '04:25:41', '::1'),
(253, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:01:38', '::1'),
(254, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:01:41', '::1'),
(255, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:01:43', '::1'),
(256, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:01:45', '::1'),
(257, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:01:47', '::1'),
(258, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:01:49', '::1'),
(259, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:01:50', '::1'),
(260, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:01:53', '::1'),
(261, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:17', '::1'),
(262, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:19', '::1'),
(263, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:21', '::1'),
(264, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:21', '::1'),
(265, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:22', '::1'),
(266, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:22', '::1'),
(267, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:23', '::1'),
(268, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:23', '::1'),
(269, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:23', '::1'),
(270, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:24', '::1'),
(271, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:24', '::1'),
(272, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:24', '::1'),
(273, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:25', '::1'),
(274, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:25', '::1'),
(275, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:26', '::1'),
(276, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:27', '::1'),
(277, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:28', '::1'),
(278, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:28', '::1'),
(279, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:29', '::1'),
(280, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:30', '::1'),
(281, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:30', '::1'),
(282, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:31', '::1'),
(283, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:32', '::1'),
(284, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:07:33', '::1'),
(285, 'Mecanico', 'Removeu um produto. ID: 34', '2022-05-06', '05:08:26', '::1'),
(286, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:14:16', '::1'),
(287, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:21:23', '::1'),
(288, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:21:25', '::1'),
(289, 'Mecanico', 'Faturou uma OS. ID: 3', '2022-05-06', '05:23:16', '::1'),
(290, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:30:15', '::1'),
(291, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:32:28', '::1'),
(292, 'Mecanico', 'Adicionou produto a uma OS. ID (OS): 2', '2022-05-06', '05:32:57', '::1'),
(293, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:37:22', '::1'),
(294, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:38:44', '::1'),
(295, 'Mecanico', 'Adicionou um produto', '2022-05-06', '05:39:55', '::1'),
(296, 'Mecanico', 'Efetuou login no sistema', '2022-05-06', '15:59:03', '::1'),
(297, 'Mecanico', 'Adicionou um produto', '2022-05-06', '16:03:57', '::1'),
(298, 'Mecanico', 'Adicionou produto a uma OS. ID (OS): 2', '2022-05-06', '16:04:13', '::1'),
(299, 'Mecanico', 'Adicionou um produto', '2022-05-06', '17:27:00', '::1'),
(300, 'Mecanico', 'Adicionou um produto', '2022-05-06', '17:27:04', '::1'),
(301, 'Mecanico', 'Adicionou um produto', '2022-05-06', '17:27:19', '::1'),
(302, 'Mecanico', 'Adicionou um produto', '2022-05-06', '17:27:38', '::1'),
(303, 'Mecanico', 'Efetuou login no sistema', '2022-05-25', '04:49:24', '::1'),
(304, 'Mecanico', 'Efetuou login no sistema', '2022-06-03', '01:51:19', '::1'),
(305, 'Mecanico', 'Efetuou login no sistema', '2023-05-28', '18:00:05', '::1'),
(306, 'Mecanico', 'Efetuou login no sistema', '2023-05-28', '18:04:06', '::1'),
(307, 'Mecanico', 'Efetuou login no sistema', '2023-05-28', '18:06:17', '127.0.0.1'),
(308, 'Mecanico', 'Adicionou um veiculo', '2023-05-28', '18:10:33', '127.0.0.1'),
(309, 'Mecanico', 'Adicionou uma OS', '2023-05-28', '18:13:29', '127.0.0.1'),
(310, 'Mecanico', 'Adicionou um produto', '2023-05-28', '18:16:18', '127.0.0.1'),
(311, 'Mecanico', 'Adicionou produto a uma OS. ID (OS): 5', '2023-05-28', '18:17:35', '127.0.0.1'),
(312, 'Mecanico', 'Alterou a logomarca do emitente.', '2023-05-28', '18:19:02', '127.0.0.1'),
(313, 'Mecanico', 'Alterou informações de emitente.', '2023-05-28', '18:20:15', '127.0.0.1'),
(314, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '14:12:37', '::1'),
(315, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '14:19:36', '127.0.0.1'),
(316, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '14:32:00', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(317, 'Mecanico', 'Adicionou uma permissão', '2023-05-29', '14:33:49', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(318, 'Mecanico', 'Adicionou um usuário.', '2023-05-29', '14:36:07', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(319, 'Teste', 'Efetuou login no sistema', '2023-05-29', '14:36:38', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(320, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '14:37:23', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(321, 'Mecanico', 'Alterou uma permissão. ID: 2', '2023-05-29', '14:38:28', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(322, 'Teste', 'Efetuou login no sistema', '2023-05-29', '14:38:44', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(323, 'Teste', 'Alterou um usuário. ID: 2', '2023-05-29', '14:39:37', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(324, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '14:40:05', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(325, 'Teste', 'Efetuou login no sistema', '2023-05-29', '14:47:01', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(326, 'Teste', 'Efetuou login no sistema', '2023-05-29', '14:47:20', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(327, 'Teste', 'Efetuou login no sistema', '2023-05-29', '14:47:49', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(328, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '14:48:04', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(329, 'Mecanico', 'Alterou um usuário. ID: 2', '2023-05-29', '14:48:51', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(330, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '14:49:09', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(331, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '14:49:38', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(332, 'Teste', 'Efetuou login no sistema', '2023-05-29', '14:49:56', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(333, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '14:50:11', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(334, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '14:50:43', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(335, 'Teste', 'Efetuou login no sistema', '2023-05-29', '14:51:06', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(336, 'Teste', 'Efetuou login no sistema', '2023-05-29', '14:55:15', '2804:5c:578e:7100:bc4a:3f31:6111:8d7b'),
(337, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '15:03:56', '138.121.64.205'),
(338, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '15:22:30', '189.127.20.190'),
(339, 'Mecanico', 'Efetuou login no sistema', '2023-05-29', '20:48:39', '191.20.184.225'),
(340, 'Mecanico', 'Efetuou login no sistema', '2023-05-30', '15:55:18', '189.127.20.190'),
(341, 'Mecanico', 'Adicionou um produto', '2023-05-30', '15:56:15', '189.127.20.190'),
(342, 'Mecanico', 'Adicionou um produto', '2023-05-30', '16:02:11', '189.127.20.190'),
(343, 'Mecanico', 'Efetuou login no sistema', '2023-06-02', '03:19:23', '2804:10fc:311:8300:8923:af85:fc2f:db5d'),
(344, 'Teste', 'Efetuou login no sistema', '2023-07-05', '16:06:51', '2804:5c:4dd9:c000:e4ff:53d0:5f86:d8cc'),
(345, 'Teste', 'Efetuou login no sistema', '2023-07-05', '21:11:23', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a'),
(346, 'Teste', 'Adicionou uma venda.', '2023-07-05', '21:13:46', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a'),
(347, 'Teste', 'Adicionou produto a uma venda.', '2023-07-05', '21:14:18', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a'),
(348, 'Teste', 'Adicionou produto a uma venda.', '2023-07-05', '21:14:35', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a'),
(349, 'Teste', 'Adicionou uma OS', '2023-07-05', '21:16:14', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a'),
(350, 'Teste', 'Adicionou produto a uma venda.', '2023-07-05', '21:21:40', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a'),
(351, 'Teste', 'Adicionou produto a uma venda.', '2023-07-05', '21:22:01', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a'),
(352, 'Teste', 'Alterou uma OS. ID: 6', '2023-07-05', '21:22:33', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a'),
(353, 'Teste', 'Adicionou um produto', '2023-07-05', '21:23:17', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a'),
(354, 'Teste', 'Adicionou produto a uma OS. ID (OS): 6', '2023-07-05', '21:23:36', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a'),
(355, 'Teste', 'Adicionou serviço a uma OS. ID (OS): 6', '2023-07-05', '21:23:57', '2804:d55:5500:ae00:f5e0:a9e0:3fc9:e50a'),
(356, 'Teste', 'Efetuou login no sistema', '2023-07-07', '18:24:20', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4'),
(357, 'Teste', 'Adicionou um cliente.', '2023-07-07', '18:29:08', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4'),
(358, 'Teste', 'Adicionou uma OS', '2023-07-07', '18:33:57', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4'),
(359, 'Teste', 'Adicionou um produto', '2023-07-07', '18:34:49', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4'),
(360, 'Teste', 'Adicionou produto a uma OS. ID (OS): 7', '2023-07-07', '18:35:30', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4'),
(361, 'Teste', 'Adicionou serviço a uma OS. ID (OS): 7', '2023-07-07', '18:35:39', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4'),
(362, 'Teste', 'Faturou uma OS. ID: 7', '2023-07-07', '18:41:19', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4'),
(363, 'Teste', 'Removeu um cliente. ID1', '2023-07-07', '18:42:11', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4'),
(364, 'Teste', 'Removeu um cliente. ID2', '2023-07-07', '18:42:15', '2804:d55:5500:ae00:3ded:d7cd:2f28:7ff4'),
(365, 'Teste', 'Efetuou login no sistema', '2023-07-08', '02:18:25', '2804:d55:5500:ae00:1426:9d77:61b4:6582'),
(366, 'Teste', 'Alterou um cliente. ID7', '2023-07-08', '02:22:22', '2804:d55:5500:ae00:1426:9d77:61b4:6582'),
(367, 'Teste', 'Alterou um cliente. ID7', '2023-07-08', '02:22:33', '2804:d55:5500:ae00:1426:9d77:61b4:6582'),
(368, 'Teste', 'Adicionou um produto', '2023-07-08', '02:29:32', '2804:d55:5500:ae00:1426:9d77:61b4:6582'),
(369, 'Mecanico', 'Efetuou login no sistema', '2023-07-11', '02:13:21', '191.5.80.156'),
(370, 'Mecanico', 'ESTOQUE: produto id 53 teve baixa de estoque quantidade: 1', '2023-07-11', '02:41:00', '191.5.80.156'),
(371, 'Mecanico', 'Removeu uma OS. ID: 7', '2023-07-11', '02:41:00', '191.5.80.156'),
(372, 'Mecanico', 'Removeu um veiculo. ID: 1', '2023-07-11', '02:41:18', '191.5.80.156'),
(373, 'Mecanico', 'Removeu um veiculo. ID: 2', '2023-07-11', '02:41:24', '191.5.80.156'),
(374, 'Mecanico', 'Removeu um veiculo. ID: 3', '2023-07-11', '02:41:30', '191.5.80.156'),
(375, 'Mecanico', 'Removeu um cliente. ID2', '2023-07-11', '02:41:48', '191.5.80.156'),
(376, 'Mecanico', 'Removeu um cliente. ID3', '2023-07-11', '02:41:54', '191.5.80.156'),
(377, 'Mecanico', 'Removeu um cliente. ID4', '2023-07-11', '02:41:59', '191.5.80.156'),
(378, 'Mecanico', 'Removeu um cliente. ID5', '2023-07-11', '02:42:04', '191.5.80.156'),
(379, 'Mecanico', 'Removeu um cliente. ID6', '2023-07-11', '02:42:10', '191.5.80.156'),
(380, 'Mecanico', 'Removeu um cliente. ID7', '2023-07-11', '02:42:14', '191.5.80.156'),
(381, 'Mecanico', 'Removeu um produto. ID: 45', '2023-07-11', '02:42:46', '191.5.80.156'),
(382, 'Mecanico', 'Removeu um produto. ID: 44', '2023-07-11', '02:42:51', '191.5.80.156'),
(383, 'Mecanico', 'Removeu um serviço. ID: 1', '2023-07-11', '02:43:01', '191.5.80.156'),
(384, 'Mecanico', 'Removeu um serviço. ID: 2', '2023-07-11', '02:43:05', '191.5.80.156'),
(385, 'Mecanico', 'Removeu um serviço. ID: 2', '2023-07-11', '02:43:06', '191.5.80.156'),
(386, 'Mecanico', 'Adicionou um arquivo', '2023-07-11', '02:43:52', '191.5.80.156'),
(387, 'Mecanico', 'Removeu um arquivo. ID: 3', '2023-07-11', '02:44:07', '191.5.80.156'),
(388, 'Mecanico', 'Adicionou um produto', '2023-07-11', '02:57:01', '191.5.80.156'),
(389, 'Mecanico', 'Removeu um produto. ID: 1', '2023-07-11', '02:57:11', '191.5.80.156'),
(390, 'Mecanico', 'Adicionou um produto', '2023-07-11', '02:57:29', '191.5.80.156'),
(391, 'Mecanico', 'Removeu um produto. ID: 2', '2023-07-11', '02:57:36', '191.5.80.156'),
(392, 'Mecanico', 'Removeu um produto. ID: 2', '2023-07-11', '02:57:36', '191.5.80.156');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

CREATE TABLE `marcas` (
  `idMarcas` int(11) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `situacao` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `marcas`
--

INSERT INTO `marcas` (`idMarcas`, `marca`, `cadastro`, `situacao`) VALUES
(1, 'VW', NULL, 1),
(2, 'FIAT', NULL, 1),
(3, 'FORD', NULL, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20210125173741);

-- --------------------------------------------------------

--
-- Estrutura da tabela `montadoras`
--

CREATE TABLE `montadoras` (
  `idMontadoras` int(11) NOT NULL,
  `montadora` varchar(100) DEFAULT NULL,
  `montadoraCadastro` datetime DEFAULT NULL,
  `montadoraStatus` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `montadoras`
--

INSERT INTO `montadoras` (`idMontadoras`, `montadora`, `montadoraCadastro`, `montadoraStatus`) VALUES
(10, 'AUDI', '2008-05-23 12:22:55', 1),
(14, 'BMW', '2008-05-23 12:22:55', 1),
(30, 'CITROEN', '2008-05-23 12:22:55', 1),
(33, 'DAEWOO', '2008-05-23 12:22:55', 1),
(39, 'DODGE', '2008-05-23 12:22:55', 1),
(46, 'FIAT', '2008-05-23 12:22:55', 1),
(48, 'FORD', '2008-05-23 12:22:55', 1),
(53, 'GM - CHEVROLET', '2008-05-23 12:22:55', 1),
(61, 'HONDA', '2008-05-23 12:22:55', 1),
(68, 'JEEP', '2008-05-23 12:22:55', 1),
(83, 'MERCEDES-BENZ', '2008-05-23 12:22:55', 1),
(89, 'VOLKSWAGEN', '2008-05-23 12:22:55', 1),
(90, 'VOLVO', '2008-05-23 12:22:55', 1),
(93, 'TOYOTA', '2008-06-18 17:55:48', 1),
(96, 'RENAULT', '2008-06-18 17:56:09', 1),
(97, 'PEUGEOT', '2008-06-18 17:56:23', 1),
(99, 'MITSUBISHI', '2008-06-18 17:56:39', 1),
(102, 'CHRYSLER', '2008-06-20 15:48:01', 1),
(103, 'ALFA ROMEO', '2008-06-28 18:45:33', 1),
(104, 'BUGGY', '2008-06-28 18:59:58', 1),
(105, 'PUMA', '2008-07-02 15:12:06', 1),
(106, 'WILLYS', '2008-07-09 17:28:59', 1),
(227, 'KIA MOTORS', '2008-10-19 21:58:38', 1),
(228, 'LADA', '2008-12-16 10:25:10', 1),
(229, 'COBRA', '2011-10-12 21:43:29', 1),
(230, 'HYUNDAI', '2012-02-05 21:58:07', 1),
(231, 'NISSAN', '2012-03-09 10:34:15', 1),
(232, 'BY CRISTO', '2013-01-14 21:22:42', 1),
(233, 'JEEP', '2019-07-27 21:18:43', 1),
(234, 'MP', '2020-01-29 11:47:02', 1),
(235, 'SEAT', '2021-03-15 09:31:46', 1),
(236, 'GURGEL', '2021-08-08 14:00:56', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

CREATE TABLE `os` (
  `idOs` int(11) NOT NULL,
  `dataInicial` date DEFAULT NULL,
  `dataFinal` date DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `descricaoProduto` text DEFAULT NULL,
  `defeito` text DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `laudoTecnico` text DEFAULT NULL,
  `valorTotal` varchar(15) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `lancamento` int(11) DEFAULT NULL,
  `faturado` tinyint(1) NOT NULL,
  `garantias_id` int(11) DEFAULT NULL,
  `veiculos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissoes`
--

CREATE TABLE `permissoes` (
  `idPermissao` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `permissoes` text DEFAULT NULL,
  `situacao` tinyint(1) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `permissoes`
--

INSERT INTO `permissoes` (`idPermissao`, `nome`, `permissoes`, `situacao`, `data`) VALUES
(1, 'Administrador', 'a:58:{s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:8:\"aServico\";s:1:\"1\";s:8:\"eServico\";s:1:\"1\";s:8:\"dServico\";s:1:\"1\";s:8:\"vServico\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:9:\"aGarantia\";s:1:\"1\";s:9:\"eGarantia\";s:1:\"1\";s:9:\"dGarantia\";s:1:\"1\";s:9:\"vGarantia\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:10:\"aPagamento\";N;s:10:\"ePagamento\";N;s:10:\"dPagamento\";N;s:10:\"vPagamento\";N;s:11:\"aLancamento\";s:1:\"1\";s:11:\"eLancamento\";s:1:\"1\";s:11:\"dLancamento\";s:1:\"1\";s:11:\"vLancamento\";s:1:\"1\";s:8:\"cUsuario\";s:1:\"1\";s:9:\"cEmitente\";s:1:\"1\";s:10:\"cPermissao\";s:1:\"1\";s:7:\"cBackup\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:8:\"cSistema\";s:1:\"1\";s:8:\"rCliente\";s:1:\"1\";s:8:\"rProduto\";s:1:\"1\";s:8:\"rVeiculo\";N;s:8:\"rServico\";s:1:\"1\";s:3:\"rOs\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:11:\"rFinanceiro\";s:1:\"1\";s:9:\"aCobranca\";s:1:\"1\";s:9:\"eCobranca\";s:1:\"1\";s:9:\"dCobranca\";s:1:\"1\";s:9:\"vCobranca\";s:1:\"1\";}', 1, '2022-03-05'),
(2, 'teste', 'a:58:{s:8:\"aCliente\";s:1:\"1\";s:8:\"eCliente\";s:1:\"1\";s:8:\"dCliente\";s:1:\"1\";s:8:\"vCliente\";s:1:\"1\";s:8:\"aProduto\";s:1:\"1\";s:8:\"eProduto\";s:1:\"1\";s:8:\"dProduto\";s:1:\"1\";s:8:\"vProduto\";s:1:\"1\";s:8:\"aVeiculo\";s:1:\"1\";s:8:\"eVeiculo\";s:1:\"1\";s:8:\"dVeiculo\";s:1:\"1\";s:8:\"vVeiculo\";s:1:\"1\";s:8:\"aServico\";s:1:\"1\";s:8:\"eServico\";s:1:\"1\";s:8:\"dServico\";s:1:\"1\";s:8:\"vServico\";s:1:\"1\";s:3:\"aOs\";s:1:\"1\";s:3:\"eOs\";s:1:\"1\";s:3:\"dOs\";s:1:\"1\";s:3:\"vOs\";s:1:\"1\";s:6:\"aVenda\";s:1:\"1\";s:6:\"eVenda\";s:1:\"1\";s:6:\"dVenda\";s:1:\"1\";s:6:\"vVenda\";s:1:\"1\";s:9:\"aGarantia\";s:1:\"1\";s:9:\"eGarantia\";s:1:\"1\";s:9:\"dGarantia\";s:1:\"1\";s:9:\"vGarantia\";s:1:\"1\";s:8:\"aArquivo\";s:1:\"1\";s:8:\"eArquivo\";s:1:\"1\";s:8:\"dArquivo\";s:1:\"1\";s:8:\"vArquivo\";s:1:\"1\";s:10:\"aPagamento\";N;s:10:\"ePagamento\";N;s:10:\"dPagamento\";N;s:10:\"vPagamento\";N;s:11:\"aLancamento\";s:1:\"1\";s:11:\"eLancamento\";s:1:\"1\";s:11:\"dLancamento\";s:1:\"1\";s:11:\"vLancamento\";s:1:\"1\";s:8:\"cUsuario\";N;s:9:\"cEmitente\";s:1:\"1\";s:10:\"cPermissao\";N;s:7:\"cBackup\";s:1:\"1\";s:10:\"cAuditoria\";s:1:\"1\";s:6:\"cEmail\";s:1:\"1\";s:8:\"cSistema\";N;s:8:\"rCliente\";s:1:\"1\";s:8:\"rProduto\";s:1:\"1\";s:8:\"rVeiculo\";N;s:8:\"rServico\";s:1:\"1\";s:3:\"rOs\";s:1:\"1\";s:6:\"rVenda\";s:1:\"1\";s:11:\"rFinanceiro\";s:1:\"1\";s:9:\"aCobranca\";s:1:\"1\";s:9:\"eCobranca\";s:1:\"1\";s:9:\"dCobranca\";s:1:\"1\";s:9:\"vCobranca\";s:1:\"1\";}', 1, '2023-05-29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idProdutos` int(11) NOT NULL,
  `codDeBarra` varchar(70) NOT NULL,
  `descricao` varchar(80) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `precoCompra` decimal(10,2) DEFAULT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `estoque` int(4) NOT NULL,
  `estoqueMinimo` int(11) DEFAULT NULL,
  `saida` tinyint(1) DEFAULT NULL,
  `entrada` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_os`
--

CREATE TABLE `produtos_os` (
  `idProdutos_os` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `descricao` varchar(80) DEFAULT NULL,
  `preco` varchar(15) DEFAULT NULL,
  `os_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `idServicos` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_os`
--

CREATE TABLE `servicos_os` (
  `idServicos_os` int(11) NOT NULL,
  `servico` varchar(80) DEFAULT NULL,
  `quantidade` double DEFAULT NULL,
  `preco` varchar(15) DEFAULT NULL,
  `os_id` int(11) NOT NULL,
  `servicos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuarios` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `cpf` varchar(20) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL,
  `dataCadastro` date NOT NULL,
  `permissoes_id` int(11) NOT NULL,
  `dataExpiracao` date DEFAULT NULL,
  `asaas_id` varchar(255) DEFAULT NULL,
  `url_image_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nome`, `rg`, `cpf`, `cep`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `email`, `senha`, `telefone`, `celular`, `situacao`, `dataCadastro`, `permissoes_id`, `dataExpiracao`, `asaas_id`, `url_image_user`) VALUES
(2, 'Mecanico', '259467950', '954.369.570-99', '86031-110', 'Rua Iretama', '80', 'Lindóia', 'Londrina', 'PR', 'admin@admin.com', '$2y$10$sQW52i5eYet85HApmgfoL.XuPURpJZO6fY24t7aeOu7KPnrkaFAly', '(43)9996-4217', '', 1, '2022-03-26', 1, '2026-11-26', NULL, NULL),
(3, 'Teste', 'jk', '372.141.220-65', '34585-090', 'Rua Itabirito', '34', 'Vila Rica', 'Sabará', 'MG', 'usuario@teste.com.br', '$2y$10$kzD0OcM5PMiSeWNvKlOCLeRXhrHBsNHC8DEUjXaYpdO6ZRoVvi.ji', '(31)8989-8989', '(31)89898-9898', 1, '2023-05-29', 1, '2032-10-19', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos`
--

CREATE TABLE `veiculos` (
  `idVeiculos` int(11) NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `placa` varchar(11) NOT NULL,
  `cor` varchar(255) NOT NULL,
  `combustivel` varchar(255) NOT NULL,
  `ano` int(4) NOT NULL,
  `montadora` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculos_os`
--

CREATE TABLE `veiculos_os` (
  `IdVeiculo` int(11) DEFAULT NULL,
  `descritivo` varchar(255) DEFAULT NULL,
  `os_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='OS de Veiculos';

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `idVendas` int(11) NOT NULL,
  `dataVenda` date DEFAULT NULL,
  `valorTotal` varchar(45) DEFAULT NULL,
  `desconto` varchar(45) DEFAULT NULL,
  `faturado` tinyint(1) DEFAULT NULL,
  `observacoes` text DEFAULT NULL,
  `observacoes_cliente` text DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) DEFAULT NULL,
  `lancamentos_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anexos`
--
ALTER TABLE `anexos`
  ADD PRIMARY KEY (`idAnexos`),
  ADD KEY `fk_anexos_os1` (`os_id`);

--
-- Índices para tabela `anotacoes_os`
--
ALTER TABLE `anotacoes_os`
  ADD PRIMARY KEY (`idAnotacoes`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategorias`);

--
-- Índices para tabela `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idClientes`);

--
-- Índices para tabela `cobrancas`
--
ALTER TABLE `cobrancas`
  ADD PRIMARY KEY (`idCobranca`),
  ADD KEY `fk_cobrancas_os1` (`os_id`),
  ADD KEY `fk_cobrancas_vendas1` (`vendas_id`),
  ADD KEY `fk_cobrancas_clientes1` (`clientes_id`);

--
-- Índices para tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  ADD PRIMARY KEY (`idConfig`),
  ADD UNIQUE KEY `config` (`config`);

--
-- Índices para tabela `contas`
--
ALTER TABLE `contas`
  ADD PRIMARY KEY (`idContas`);

--
-- Índices para tabela `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`idDocumentos`);

--
-- Índices para tabela `email_queue`
--
ALTER TABLE `email_queue`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `emitente`
--
ALTER TABLE `emitente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`idEquipamentos`),
  ADD KEY `fk_equipanentos_marcas1_idx` (`marcas_id`),
  ADD KEY `fk_equipanentos_clientes1_idx` (`clientes_id`);

--
-- Índices para tabela `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  ADD PRIMARY KEY (`idEquipamentos_os`),
  ADD KEY `fk_equipamentos_os_equipanentos1_idx` (`equipamentos_id`),
  ADD KEY `fk_equipamentos_os_os1_idx` (`os_id`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`idFotos`) USING BTREE,
  ADD KEY `idVeiculo` (`idVeiculo`);

--
-- Índices para tabela `garantias`
--
ALTER TABLE `garantias`
  ADD PRIMARY KEY (`idGarantias`),
  ADD KEY `fk_garantias_usuarios1` (`usuarios_id`);

--
-- Índices para tabela `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  ADD PRIMARY KEY (`idItens`),
  ADD KEY `fk_itens_de_vendas_vendas1` (`vendas_id`),
  ADD KEY `fk_itens_de_vendas_produtos1` (`produtos_id`);

--
-- Índices para tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD PRIMARY KEY (`idLancamentos`),
  ADD KEY `fk_lancamentos_clientes1` (`clientes_id`),
  ADD KEY `fk_lancamentos_categorias1_idx` (`categorias_id`),
  ADD KEY `fk_lancamentos_contas1_idx` (`contas_id`),
  ADD KEY `fk_lancamentos_usuarios1` (`usuarios_id`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`idLogs`);

--
-- Índices para tabela `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`idMarcas`);

--
-- Índices para tabela `montadoras`
--
ALTER TABLE `montadoras`
  ADD PRIMARY KEY (`idMontadoras`);

--
-- Índices para tabela `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`idOs`),
  ADD KEY `fk_os_clientes1` (`clientes_id`),
  ADD KEY `fk_os_usuarios1` (`usuarios_id`),
  ADD KEY `fk_os_lancamentos1` (`lancamento`),
  ADD KEY `fk_os_garantias1` (`garantias_id`),
  ADD KEY `fk_os_veiculos1` (`veiculos_id`);

--
-- Índices para tabela `permissoes`
--
ALTER TABLE `permissoes`
  ADD PRIMARY KEY (`idPermissao`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idProdutos`);

--
-- Índices para tabela `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD PRIMARY KEY (`idProdutos_os`),
  ADD KEY `fk_produtos_os_os1` (`os_id`),
  ADD KEY `fk_produtos_os_produtos1` (`produtos_id`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`idServicos`);

--
-- Índices para tabela `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD PRIMARY KEY (`idServicos_os`),
  ADD KEY `fk_servicos_os_os1` (`os_id`),
  ADD KEY `fk_servicos_os_servicos1` (`servicos_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD KEY `fk_usuarios_permissoes1_idx` (`permissoes_id`);

--
-- Índices para tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD PRIMARY KEY (`idVeiculos`),
  ADD KEY `fk_veiculos_clientes1` (`clientes_id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`idVendas`),
  ADD KEY `fk_vendas_clientes1` (`clientes_id`),
  ADD KEY `fk_vendas_usuarios1` (`usuarios_id`),
  ADD KEY `fk_vendas_lancamentos1` (`lancamentos_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anexos`
--
ALTER TABLE `anexos`
  MODIFY `idAnexos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `anotacoes_os`
--
ALTER TABLE `anotacoes_os`
  MODIFY `idAnotacoes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategorias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idClientes` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cobrancas`
--
ALTER TABLE `cobrancas`
  MODIFY `idCobranca` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `configuracoes`
--
ALTER TABLE `configuracoes`
  MODIFY `idConfig` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `contas`
--
ALTER TABLE `contas`
  MODIFY `idContas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `documentos`
--
ALTER TABLE `documentos`
  MODIFY `idDocumentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `email_queue`
--
ALTER TABLE `email_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `emitente`
--
ALTER TABLE `emitente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `idEquipamentos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  MODIFY `idEquipamentos_os` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `idFotos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `garantias`
--
ALTER TABLE `garantias`
  MODIFY `idGarantias` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  MODIFY `idItens` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  MODIFY `idLancamentos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `idLogs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT de tabela `marcas`
--
ALTER TABLE `marcas`
  MODIFY `idMarcas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `os`
--
ALTER TABLE `os`
  MODIFY `idOs` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `permissoes`
--
ALTER TABLE `permissoes`
  MODIFY `idPermissao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idProdutos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `produtos_os`
--
ALTER TABLE `produtos_os`
  MODIFY `idProdutos_os` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `idServicos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `servicos_os`
--
ALTER TABLE `servicos_os`
  MODIFY `idServicos_os` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `veiculos`
--
ALTER TABLE `veiculos`
  MODIFY `idVeiculos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `idVendas` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `anexos`
--
ALTER TABLE `anexos`
  ADD CONSTRAINT `fk_anexos_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `cobrancas`
--
ALTER TABLE `cobrancas`
  ADD CONSTRAINT `fk_cobrancas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cobrancas_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_cobrancas_vendas1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`idVendas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD CONSTRAINT `fk_equipanentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_equipanentos_marcas1` FOREIGN KEY (`marcas_id`) REFERENCES `marcas` (`idMarcas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `equipamentos_os`
--
ALTER TABLE `equipamentos_os`
  ADD CONSTRAINT `fk_equipamentos_os_equipanentos1` FOREIGN KEY (`equipamentos_id`) REFERENCES `equipamentos` (`idEquipamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_equipamentos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `garantias`
--
ALTER TABLE `garantias`
  ADD CONSTRAINT `fk_garantias_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  ADD CONSTRAINT `fk_itens_de_vendas_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_itens_de_vendas_vendas1` FOREIGN KEY (`vendas_id`) REFERENCES `vendas` (`idVendas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD CONSTRAINT `fk_lancamentos_categorias1` FOREIGN KEY (`categorias_id`) REFERENCES `categorias` (`idCategorias`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lancamentos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lancamentos_contas1` FOREIGN KEY (`contas_id`) REFERENCES `contas` (`idContas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lancamentos_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `os`
--
ALTER TABLE `os`
  ADD CONSTRAINT `fk_os_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_lancamentos1` FOREIGN KEY (`lancamento`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_os_veiculos1` FOREIGN KEY (`veiculos_id`) REFERENCES `veiculos` (`idVeiculos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD CONSTRAINT `fk_produtos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produtos_os_produtos1` FOREIGN KEY (`produtos_id`) REFERENCES `produtos` (`idProdutos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD CONSTRAINT `fk_servicos_os_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_servicos_os_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`idServicos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_permissoes1` FOREIGN KEY (`permissoes_id`) REFERENCES `permissoes` (`idPermissao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `veiculos`
--
ALTER TABLE `veiculos`
  ADD CONSTRAINT `fk_veiculos_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`idClientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_lancamentos1` FOREIGN KEY (`lancamentos_id`) REFERENCES `lancamentos` (`idLancamentos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`idUsuarios`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
