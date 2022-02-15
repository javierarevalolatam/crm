-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-02-2022 a las 19:09:11
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crm`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `account_type`, `industry`, `annual_revenue`, `phone_fax`, `billing_address_street`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `rating`, `phone_office`, `phone_alternate`, `website`, `ownership`, `employees`, `ticker_symbol`, `shipping_address_street`, `shipping_address_city`, `shipping_address_state`, `shipping_address_postalcode`, `shipping_address_country`, `parent_id`, `sic_code`, `campaign_id`) VALUES
('1368dfec-3647-82fd-0f9b-5c3a7ec7a2af', 'BEISA\'S', '2019-01-12 23:55:18', '2019-01-12 23:55:18', '1', '1', NULL, 0, '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Prospect', 'Construction', NULL, '4141151561', NULL, NULL, NULL, NULL, NULL, NULL, '4141151561', NULL, 'http://beisaslegacy.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('42176e11-179a-9330-8f38-5c3a7eea42a4', 'BEISA\'S', '2019-01-12 23:55:41', '2019-01-12 23:55:41', '1', '1', NULL, 0, '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Prospect', 'Construction', NULL, '4141151561', NULL, NULL, NULL, NULL, NULL, NULL, '4141151561', NULL, 'http://beisaslegacy.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('6113255b-e96f-3e32-134c-5bdfce86c702', 'VENTA DE CRM', '2018-11-05 05:02:52', '2018-11-05 05:02:52', '1', '1', NULL, 0, '1', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '4141151561', NULL, 'http://beisaslegacy.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('721605d9-d1b3-04e7-3b92-5c3a7ff461c4', 'BEISA\'S', '2019-01-12 23:55:32', '2019-01-12 23:55:32', '1', '1', NULL, 0, '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Prospect', 'Construction', NULL, '4141151561', NULL, NULL, NULL, NULL, NULL, NULL, '4141151561', NULL, 'http://beisaslegacy.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('ad19a97d-bc58-cdac-a78c-5bdfce8043f7', 'ANWAR BEISA', '2018-11-05 05:01:25', '2018-11-05 05:01:25', '1', '1', 'Maneja un holding de empresas...', 0, '1', 'Partner', 'Construction', '20000', '4141151561', 'Esquina de Ceiba a Dr Gonzalez, Edif. Tibisay', 'Caracas', 'Distrito Capital', '1010', 'Venezuela', NULL, '4141151561', NULL, 'http://beisaslegacy.com', NULL, '130', NULL, '', '', '', '', '', '', NULL, ''),
('c8b095e7-e664-818b-1a62-5c3a80b6b704', 'BEISA\'S', '2019-01-12 23:55:25', '2019-01-12 23:55:25', '1', '1', NULL, 0, '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Prospect', 'Construction', NULL, '4141151561', NULL, NULL, NULL, NULL, NULL, NULL, '4141151561', NULL, 'http://beisaslegacy.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('d5b05fb9-319d-bc6c-09bc-5c3a7f2b4eca', 'BEISA\'S', '2019-01-12 23:55:51', '2019-02-22 23:05:31', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', '1', NULL, 0, '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Prospect', 'Construction', NULL, '4141151561', '791 SE 202nd Ave Portland, OR 97233', NULL, NULL, NULL, NULL, NULL, '4141151561', NULL, 'http://beisaslegacy.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accounts_contacts`
--

INSERT INTO `accounts_contacts` (`id`, `contact_id`, `account_id`, `date_modified`, `deleted`) VALUES
('cb3455da-f056-3537-a8b6-59136371bcbc', 'c5d295a1-3152-5d3c-0168-5913636a6784', '1b3c7622-205c-b741-4825-59136322ac04', '2018-10-16 18:52:44', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_cstm`
--

CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `accounts_cstm`
--

INSERT INTO `accounts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('1368dfec-3647-82fd-0f9b-5c3a7ec7a2af', 0.00000000, 0.00000000, NULL, NULL),
('15a4dd96-9b8d-fc46-fc9d-5941468dd107', 0.00000000, 0.00000000, '', ''),
('1b3c7622-205c-b741-4825-59136322ac04', 0.00000000, 0.00000000, '', ''),
('1eb1a057-6392-af1b-d728-59301475db56', 0.00000000, 0.00000000, NULL, NULL),
('1f4e0967-711c-5d13-3ce0-593094ea2424', 0.00000000, 0.00000000, NULL, NULL),
('22dac178-cd42-07f4-1b82-59945c021bf7', 0.00000000, 0.00000000, NULL, NULL),
('3424ea1c-6a29-7ed1-6e1f-595aa2dc341e', 0.00000000, 0.00000000, NULL, NULL),
('42176e11-179a-9330-8f38-5c3a7eea42a4', 0.00000000, 0.00000000, NULL, NULL),
('4cfb3385-8b10-b34a-f1c7-59442eb17012', 0.00000000, 0.00000000, '', ''),
('5b2d4eb5-2c36-2575-6fc4-594146fdae56', 0.00000000, 0.00000000, '', ''),
('6113255b-e96f-3e32-134c-5bdfce86c702', 0.00000000, 0.00000000, NULL, NULL),
('721605d9-d1b3-04e7-3b92-5c3a7ff461c4', 0.00000000, 0.00000000, NULL, NULL),
('74d5827c-eb50-d537-dbd8-59bbd2c20144', 0.00000000, 0.00000000, NULL, NULL),
('80a3b177-a08f-ea26-4b50-59a56b317e05', 0.00000000, 0.00000000, NULL, NULL),
('81d1d47b-fe45-a0e1-9d5a-594924d33ce9', 0.00000000, 0.00000000, '', ''),
('83b1dc3a-6c28-5845-a18b-5941457f1736', 0.00000000, 0.00000000, '', ''),
('8e30a6c7-5618-1698-c2ac-59307a71047a', 0.00000000, 0.00000000, NULL, NULL),
('957f9c12-4004-8201-023c-594837a479c3', 0.00000000, 0.00000000, '', ''),
('9f6e2888-4e4a-5d68-c7e4-5930733e69fd', 0.00000000, 0.00000000, '', ''),
('ad19a97d-bc58-cdac-a78c-5bdfce8043f7', 0.00000000, 0.00000000, NULL, NULL),
('b03cabad-7dae-91d0-c1cf-59972e0c1dc8', 0.00000000, 0.00000000, '', ''),
('b26d50b8-b6c4-ea64-84e2-596270f7101f', 0.00000000, 0.00000000, NULL, NULL),
('bf9b42f4-0828-58fa-fecc-594d82a1fc9d', 0.00000000, 0.00000000, '', ''),
('c8b095e7-e664-818b-1a62-5c3a80b6b704', 0.00000000, 0.00000000, NULL, NULL),
('c9a0a91a-5d4d-92b8-20a1-59bbd1451eef', 0.00000000, 0.00000000, '', ''),
('ccf7a2c7-7b2d-e1fb-92c6-59a575616615', 0.00000000, 0.00000000, '', ''),
('cf1df7ae-4fc6-d0b3-06c7-59949ab9fb3d', 0.00000000, 0.00000000, NULL, NULL),
('d5b05fb9-319d-bc6c-09bc-5c3a7f2b4eca', 0.00000000, 0.00000000, '', ''),
('e191ac93-4fd2-3eab-ec6f-59301bf539b1', 0.00000000, 0.00000000, '', ''),
('e467db0d-5e64-34f3-c68d-599ddd82c9b0', 0.00000000, 0.00000000, '', ''),
('ef0b574d-5a87-fcbf-701d-599ddf2beff8', 0.00000000, 0.00000000, NULL, NULL),
('f2ccaa5d-623c-3865-fa99-5994a7d2c26d', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('122e826c-71ca-ac47-aa6b-582da51c6812', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('13d24f72-0476-04fd-9a84-582da577adc7', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Emails', 'module', 90, 0),
('14da9923-488e-53f2-7487-582da5f5282a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('165564ab-69b6-897c-1f47-582da59365cd', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOS_PDF_Templates', 'module', 89, 0),
('169c948d-dd72-cc7a-f880-582da5e64d35', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('178bdeb3-59f7-2253-d454-582da55e903f', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('1820484a-5aa0-1a00-cc0a-582da5f9f999', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOP_Case_Events', 'module', 89, 0),
('18e15e96-6b78-9518-cf55-582da54ddea6', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOW_Processed', 'module', 90, 0),
('19132ddb-524a-65d7-546f-582da52bd67a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOD_Index', 'module', 90, 0),
('191dcf82-81db-b809-047d-582da5368171', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Documents', 'module', 90, 0),
('192c6ffa-adec-1026-e616-582da501df8c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'OutboundEmailAccounts', 'module', 90, 0),
('194406d1-6925-4dc1-4a20-582da5d94956', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('1a582db2-fa65-1ef0-f52e-582da5d4cc70', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOK_Knowledge_Base_Categories', 'module', 89, 0),
('1b03b58c-52a0-8ea2-062d-582da59793f0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOS_Product_Categories', 'module', 89, 0),
('1cf505f7-4f2c-1494-c8ae-582da5c6683e', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Tasks', 'module', 90, 0),
('1e33d0bb-ba40-4b34-8079-582da5906625', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOS_Product_Categories', 'module', 90, 0),
('1e9ebcc1-63b4-2a13-5e78-582da54e498f', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('1eb97fd3-2ab5-f087-93c7-582da593fe26', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Notes', 'module', 90, 0),
('1ed5f8ad-9960-63ee-fef9-582da56faa6f', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('1f186e94-97c4-9a03-517a-582da5df3015', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOS_Invoices', 'module', 90, 0),
('1f2836b7-cef8-1f14-4f52-582da5a6bc64', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('214744fb-27a2-14df-051c-582da5e26da0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'FP_events', 'module', 90, 0),
('215217f0-d056-6715-6047-582da58de063', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOS_PDF_Templates', 'module', 90, 0),
('22b8d2fc-a320-a623-4326-582da52f7a98', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Spots', 'module', 90, 0),
('23b2c0c1-350d-50bd-a2dc-582da54dd941', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Contacts', 'module', 89, 0),
('23b2fe3d-c726-853b-c2f3-582da513a55c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOR_Reports', 'module', 90, 0),
('23e4c4e2-a2a7-fc43-c33a-582da59a5019', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Calls', 'module', 90, 0),
('24d7cb8d-90f1-9d20-70ee-582da50469e1', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('254bcfef-14b0-f6a6-42dd-582da54241bb', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Alerts', 'module', 90, 0),
('26543a9d-3e2c-aaeb-2e3f-582da55b27ec', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOP_Case_Updates', 'module', 90, 0),
('2668eba7-4a32-58d1-2a7d-582e68250811', '2016-11-18 02:35:37', '2016-11-18 02:35:37', '1', '1', 'access', 'KReports', 'module', 89, 0),
('26dd9d33-2fac-bdae-bb7d-582da5613536', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Emails', 'module', 90, 0),
('27a76efc-37c7-a81b-d876-582da59f9ef2', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Tasks', 'module', 90, 0),
('29760cdd-a230-8464-fdf0-582da5194321', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOP_Case_Events', 'module', 90, 0),
('2a040b8f-3f33-abea-e592-582da5c3a4bf', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Alerts', 'module', 90, 0),
('2ab20da1-ab24-14a0-90b5-582da5fb56bb', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Documents', 'module', 90, 0),
('2b30e231-7679-1376-443e-582da59780eb', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('2bbabeae-b691-b614-da49-582da5419a7d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'OutboundEmailAccounts', 'module', 90, 0),
('2c7b68dd-d939-28f5-5298-582da5da55a3', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOS_Contracts', 'module', 90, 0),
('2d0c1ed9-9cee-d57c-eda6-582da5cd5634', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOS_Quotes', 'module', 89, 0),
('2e911934-5a00-74ba-7781-582da519975d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('2edfd4f2-0e09-f987-9aa1-582da525f099', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOP_Case_Updates', 'module', 90, 0),
('2ef72929-7bf6-d7e1-8755-582da5e99fc0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOS_Invoices', 'module', 90, 0),
('2f0ff672-d142-a193-f491-582da528da3f', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Alerts', 'module', 90, 0),
('2f1539f4-6671-a3aa-b452-582da51b612c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Notes', 'module', 90, 0),
('2f20344a-1279-5a47-3dff-582da548454b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOR_Scheduled_Reports', 'module', 90, 0),
('3107a9bb-2573-9b6f-e1df-582da582c668', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOP_Case_Events', 'module', 90, 0),
('317d809c-922e-7e5e-e2ef-582da577b55a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOD_Index', 'module', 90, 0),
('31add6a6-6282-ce11-cf93-582da508f327', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOS_PDF_Templates', 'module', 90, 0),
('31e88c49-f138-7260-2a4a-582da514f58a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Tasks', 'module', 90, 0),
('31f4fab5-5d26-a1c5-8d51-582da509b6a1', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('321ae085-5cde-875a-dd27-582da5ad0b9d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'TemplateSectionLine', 'module', 90, 0),
('32f60665-f859-f047-d271-582da57c7b84', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOS_Products', 'module', 90, 0),
('343982c6-0362-4cc4-fc9c-582da5239bdb', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('34783ae6-4798-f3cf-0ffd-582da5d049ab', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOW_Processed', 'module', 90, 0),
('3557065f-8c76-5af8-d9ed-582da5d6c903', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('35c42b04-1ad0-d3b9-a337-582da50dae3c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Spots', 'module', 90, 0),
('36c8c8c3-b709-4512-b077-582da50dc362', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Accounts', 'module', 89, 0),
('36d9247e-98e6-8ff1-229e-582da56bf539', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOS_Product_Categories', 'module', 90, 0),
('373b0167-0d6f-ae22-4a43-582da58ba1d0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Contacts', 'module', 90, 0),
('37444688-9b08-56c9-4fa7-582da5bcf033', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOS_Invoices', 'module', 90, 0),
('377478ac-e0d8-7431-3314-582da5aa27a0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOS_Contracts', 'module', 89, 0),
('37d83639-87bd-3183-d20d-582da54cbd71', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('37ea1f03-ab5b-3bc5-9df6-582da5065e9e', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Calls', 'module', 90, 0),
('380c1ad4-809a-5586-da22-582da5666a80', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AM_ProjectTemplates', 'module', 89, 0),
('38571a2c-4652-6e91-4823-582da56c42fc', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Alerts', 'module', 90, 0),
('385e3532-1010-a82d-e480-582da5db9551', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Documents', 'module', 90, 0),
('38d21353-5027-5161-3907-582da52ca864', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Leads', 'module', 89, 0),
('3993465a-3718-8b02-f76b-582da5cfec2d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOP_Case_Events', 'module', 90, 0),
('3ab2a274-b81e-c75c-725a-582da5620537', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('3adde465-d62f-843d-0373-582da5aa5a02', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'OutboundEmailAccounts', 'module', 90, 0),
('3c82f547-991c-d5bc-ec4a-582da5b154b2', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('3d53d59d-45d9-5c58-6b93-582da521cf7e', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Emails', 'module', 90, 0),
('3d862e8a-686c-135b-ce99-582da5279af6', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOS_Products', 'module', 89, 0),
('3f0b4bab-99b6-907b-db07-582da56ff0bd', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Spots', 'module', 90, 0),
('3f29a430-7f70-3c2c-6587-582da50ef299', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOD_Index', 'module', 90, 0),
('3fd1665d-f245-d2ed-dd08-582da52f6992', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Accounts', 'module', 90, 0),
('4104bf0b-6949-41fc-006d-582da5a8e619', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'FP_events', 'module', 90, 0),
('41636b07-75a0-0fcd-faa6-582da57de6e7', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOP_Case_Events', 'module', 90, 0),
('41856e17-4570-3f89-8efa-582da53bb41a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOS_Invoices', 'module', 90, 0),
('42099f91-540d-1d59-81f9-582da506f557', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOS_PDF_Templates', 'module', 90, 0),
('428f3c95-7e28-47ac-19ca-582da51f0f06', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('42a171f7-6011-adf5-9992-582da5818194', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOW_Processed', 'module', 90, 0),
('43d9b43f-d448-5139-9a59-582da5009227', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('448c27ff-148e-dd95-750f-582da5b260bf', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Prospects', 'module', 89, 0),
('44eca986-5715-ba83-6375-582da5cb4d0c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Meetings', 'module', 89, 0),
('45cbe8c1-4df2-083c-dd01-582da5457bd0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Documents', 'module', 90, 0),
('45d3323d-bb1a-d1c3-ca38-582da5e11683', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOP_Case_Updates', 'module', 90, 0),
('4764fcd8-8d68-7f84-2288-582da5fd8ea3', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'FP_Event_Locations', 'module', 90, 0),
('47901147-15bb-6097-a7a3-582da5415b8a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'OutboundEmailAccounts', 'module', 90, 0),
('49d8099a-c3d0-77e1-b1e5-582da52ad2e4', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOW_Processed', 'module', 90, 0),
('49ef08e9-8cc0-48af-e8e7-582da5f3a2b6', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOP_Case_Events', 'module', 90, 0),
('4a5107d7-ae27-9fd1-a876-582da593c437', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Accounts', 'module', 90, 0),
('4a9fe455-293d-7b9a-6b57-582da5b9ae00', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOS_Product_Categories', 'module', 90, 0),
('4b20a885-fc03-7e3d-2cfd-582da5a4fe33', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Calls_Reschedule', 'module', 89, 0),
('4b625303-35ea-b04a-aff5-582da52e8d6c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Alerts', 'module', 90, 0),
('4b7279ff-2923-24d1-d616-582da5fe7879', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOK_KnowledgeBase', 'module', 89, 0),
('4ccce086-8128-9e8e-1ca1-582da594d423', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AM_ProjectTemplates', 'module', 90, 0),
('4d160038-9756-cbfa-f2b9-582da5572d19', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('4e25d000-8205-90ab-9ce8-582da52316e2', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'jjwg_Maps', 'module', 90, 0),
('4f168e0a-bbe1-c910-2c81-582da5356c5a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('4f5363ca-13f9-4062-92f2-582da53fe958', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('4f98fea7-6ffb-9d07-338f-582da5e41773', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Calls', 'module', 90, 0),
('4fc57116-6516-2ad2-abeb-582da5b96659', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Leads', 'module', 90, 0),
('5070ef1f-bb70-00b6-58a1-582da5f56ccb', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('5180ac09-6dfa-aa4f-d83e-582da55796dd', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOP_Case_Events', 'module', 90, 0),
('51d80fbf-caea-cf8a-093d-582da5fcb1f0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Spots', 'module', 90, 0),
('51f9dac3-ee1e-1770-d098-582da55ba686', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Prospects', 'module', 90, 0),
('52085da4-fe43-713a-772b-582da57e88be', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOP_Case_Updates', 'module', 90, 0),
('52336fc5-0d19-2dbe-cd6f-582da592e533', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOW_WorkFlow', 'module', 89, 0),
('54d65e90-3113-20cc-0915-582da5112336', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOS_PDF_Templates', 'module', 90, 0),
('54f82ed1-5722-41cb-133c-582da5ee849b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOK_KnowledgeBase', 'module', 90, 0),
('5509e1fc-c789-3c7b-c669-582da50649a1', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Meetings', 'module', 90, 0),
('5539ff28-16d1-33df-48ca-582da5ed6d8d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Users', 'module', 89, 0),
('55fb1975-2deb-6f9c-4266-582e68429fc0', '2016-11-18 02:35:37', '2016-11-18 02:35:37', '1', '1', 'view', 'KReports', 'module', 90, 0),
('5627a4ae-323d-eede-02d6-582da57e5b20', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('56bf8466-e2c6-78d7-630c-582da5444d50', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'FP_events', 'module', 90, 0),
('57823e49-299c-5d66-36b4-582da5617a13', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'FP_Event_Locations', 'module', 90, 0),
('57b4040e-ace1-8972-911b-582da5a73887', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Contacts', 'module', 90, 0),
('59a4b991-cf1b-d162-1f9b-582da53218e6', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOR_Reports', 'module', 89, 0),
('5ac80b32-2f26-5990-3cf6-582da5e762b4', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'SecurityGroups', 'module', 89, 0),
('5be77ee7-cd0a-e0d8-b291-582da5cf05aa', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'jjwg_Areas', 'module', 89, 0),
('5c0cb4c0-4557-cc75-cfcc-582da59fee0b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOK_KnowledgeBase', 'module', 90, 0),
('5c74461c-4a1e-e091-bb78-582da525439a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AM_TaskTemplates', 'module', 89, 0),
('5c8806be-a31c-d353-04fb-582da56fcdd8', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOP_Case_Updates', 'module', 90, 0),
('5cbbc46a-6695-3763-1f38-582da5cb1a16', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOP_Case_Events', 'module', 90, 0),
('5cea21f3-33c6-6f85-b50a-582da54d0c9a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AM_ProjectTemplates', 'module', 90, 0),
('5dc0ad57-0754-6a99-38a7-582da5d3f9ad', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOS_Products', 'module', 90, 0),
('5e128a0c-df9f-03d1-7a2e-582da57445bc', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Meetings', 'module', 90, 0),
('5e2be85d-1b5d-fbce-940d-582da5b11167', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Calls_Reschedule', 'module', 90, 0),
('5eb526da-5d44-5b99-9840-582da57326f1', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('602dc6a3-d5ee-2b81-7b85-582da579aa4f', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('604a5139-4e55-e40e-d44c-582da58ccc9f', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('607e04ab-383b-a4fd-2e19-582da5236aad', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOD_Index', 'module', 90, 0),
('608e2084-749c-157b-ef1f-582da563b75d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('60dcd96b-8f5e-adce-062b-582da5c09af9', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('629230c9-f814-50d0-1d21-582da5622153', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Leads', 'module', 90, 0),
('6324a425-d7fc-574a-c2ad-582da583a583', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Users', 'module', 90, 0),
('63a59571-70b8-fe81-ead1-582da5325bb2', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOS_Contracts', 'module', 90, 0),
('64a52f61-d6a1-d297-7e85-582da5e9db90', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'TemplateSectionLine', 'module', 90, 0),
('6513ac87-aca3-32f0-d535-582da5b11872', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOP_Case_Updates', 'module', 90, 0),
('651553d7-591b-5635-28cc-582da5a48aaf', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOK_KnowledgeBase', 'module', 90, 0),
('6553c50e-a004-efda-47e0-582da5f019ce', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Calls', 'module', 90, 0),
('65ea234e-b13a-3499-9af8-582da5692668', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'jjwg_Areas', 'module', 90, 0),
('665f8cf3-49c9-5172-7afd-582da502d0b3', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('668f0a7e-fdbe-4f15-cae2-582e680e86ca', '2016-11-18 02:35:37', '2016-11-18 02:35:37', '1', '1', 'list', 'KReports', 'module', 90, 0),
('66f3fae1-2ab9-6b04-2c2b-582da5876dc7', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AM_TaskTemplates', 'module', 90, 0),
('67299b68-a6ac-da1f-9046-582da5ffeb0a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOD_IndexEvent', 'module', 89, 0),
('6756333c-1310-d93d-32c5-582da5939c32', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'FP_events', 'module', 89, 0),
('6780d123-425c-2162-8dac-582da5b56434', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('679bf41f-807c-c43c-e001-582da5a605eb', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOS_Invoices', 'module', 90, 0),
('67d6a032-84a7-a6b9-7535-582da5ce18dd', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('67fc40b4-1ba1-f5ac-99d0-582da5abccbe', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOK_Knowledge_Base_Categories', 'module', 90, 0),
('6a0e9a68-b54a-5c80-7bbd-582da5048de1', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'EAPM', 'module', 89, 0),
('6a29b35f-d46e-a52f-9b96-582da5db9002', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'SecurityGroups', 'module', 90, 0),
('6a7a10c8-470d-a10a-60b6-582da5d0b1a3', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'OutboundEmailAccounts', 'module', 90, 0),
('6abd9af8-77ff-aa6c-3cbe-582da5d0fc63', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('6b5c766c-33c3-7e31-a458-582da5ac47d4', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('6d0ec633-9040-961e-0eee-582da5ee0dd3', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOW_WorkFlow', 'module', 90, 0),
('6d3d0c04-998d-fce4-ed65-582da5e0c4b7', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'FP_Event_Locations', 'module', 90, 0),
('6e3a5496-9af4-e052-84d3-582da5366dec', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('6f180b63-5466-5ae7-b6ff-582da581f4ff', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOK_KnowledgeBase', 'module', 90, 0),
('6f76b741-de26-0bc2-3645-582da5d7d72a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOD_IndexEvent', 'module', 90, 0),
('6fb39f14-df6a-0e8b-6fe8-582da53095d8', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOS_Quotes', 'module', 90, 0),
('6fcc92c8-75bf-cfd5-6509-582da51bb6a2', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOW_Processed', 'module', 90, 0),
('6ffc9770-3e95-dcdb-92b4-582da56dfee3', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AM_TaskTemplates', 'module', 90, 0),
('701e5505-a076-7376-75e5-582da551cd8e', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('70cd6d77-3208-fcb7-c32b-582da50a2777', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Calls', 'module', 90, 0),
('71a97d6b-1ba8-a708-85da-582da5c78bd6', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'jjwg_Address_Cache', 'module', 89, 0),
('72a4f293-63dc-28c9-f25b-582da55c2afb', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AM_ProjectTemplates', 'module', 90, 0),
('73806134-8a88-49f5-f8b6-582da5b885ed', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Users', 'module', 90, 0),
('74253abe-67ac-a879-9003-582da55b803b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Calls_Reschedule', 'module', 90, 0),
('750d542b-9400-e46b-3e30-582da54904b7', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'jjwg_Areas', 'module', 90, 0),
('756b95c1-6b1f-9c33-ca8e-582da538c69d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('7574ea4f-0c79-7679-a45a-582da5392489', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'jjwg_Maps', 'module', 90, 0),
('757f647f-964e-040c-ab43-582da50bf296', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'FP_events', 'module', 90, 0),
('759f57b0-595b-0028-d119-582da5a99399', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Prospects', 'module', 90, 0),
('76176991-33bc-7fdc-6bfe-582da56803d6', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOW_WorkFlow', 'module', 90, 0),
('770591b2-b486-5a36-f5d5-582e687e479c', '2016-11-18 02:35:37', '2016-11-18 02:35:37', '1', '1', 'edit', 'KReports', 'module', 90, 0),
('77a202f3-63c1-bc6e-2fa6-582da5a5b143', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOS_Products', 'module', 90, 0),
('77d5edfd-e910-140a-a8d6-582da55c2856', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'SecurityGroups', 'module', 90, 0),
('780258c7-5cdb-436a-d5e9-582da59427c2', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOD_IndexEvent', 'module', 90, 0),
('7805a9cf-b175-b249-e8a3-582da5be2fe4', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('7820add9-512c-77f4-5dfd-582da5ef1808', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOK_KnowledgeBase', 'module', 90, 0),
('7870c800-4524-4688-7eea-582da559f66c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('78980482-4d5d-0504-826d-582da506434b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Documents', 'module', 90, 0),
('78b4bdc5-2030-c459-d5eb-582da5373db1', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('78ca0848-0322-2e27-b48f-582da5c6deb2', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Leads', 'module', 90, 0),
('79039be8-fecb-6e7d-32e2-582da50cc7fe', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOS_Product_Categories', 'module', 90, 0),
('7aaab729-1e2d-9422-02a5-582da59c5438', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'FP_Event_Locations', 'module', 90, 0),
('7ae7501e-488f-6c7d-8021-582da5690c4e', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'EAPM', 'module', 90, 0),
('7ba81d23-8b47-d86f-588c-582da5898567', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('7c43ceff-b498-43b8-7cad-582da59d7b63', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOR_Scheduled_Reports', 'module', 90, 0),
('7e6667a8-5bb5-bdeb-56d0-582da513cfaf', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Calls_Reschedule', 'module', 90, 0),
('7ed89846-a388-ee12-8114-582da570000c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'jjwg_Address_Cache', 'module', 90, 0),
('7ee4c6c3-e37c-920f-c207-582da55e007a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('7f470d5e-27f9-6c3c-271e-582da5ffc72e', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('7f73b5af-f9fb-372c-b2e1-582da5fcafb6', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOK_KnowledgeBase', 'module', 90, 0),
('7f93d6f4-4f0d-7ed2-11c7-582da5e01c83', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOD_IndexEvent', 'module', 90, 0),
('7fdb7d90-dd24-7858-51fc-582da5cfc80a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOW_WorkFlow', 'module', 90, 0),
('803b9450-fa97-4c1c-6a8d-582da5b5a839', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('80cadd51-f636-9ba7-712f-582da5a32218', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOS_Quotes', 'module', 90, 0),
('80ee1f48-2f55-6c99-e4c0-582da5dfcf45', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Users', 'module', 90, 0),
('814cc1ec-1027-daef-b0f5-582da51c1dae', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('823c5c6e-11d2-ba75-b259-582da507d1eb', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'FP_Event_Locations', 'module', 90, 0),
('82d3d8ef-f88b-5418-9d3a-582da560a498', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Cases', 'module', 89, 0),
('82d7ecad-02f2-77cb-c41d-582da5e5194d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOW_Processed', 'module', 90, 0),
('82ed166a-a3df-9b0d-fc78-582da5a95f35', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'FP_events', 'module', 90, 0),
('8317c5f6-77bc-2fbb-b40a-582da57a0077', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('8398b41e-dd2f-5c45-f098-582da5dcaf98', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOS_Products', 'module', 90, 0),
('846d05f5-9420-a214-5050-582da58b896a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'EAPM', 'module', 90, 0),
('84b63995-bfb4-99e2-9fd7-582da52c4957', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AM_ProjectTemplates', 'module', 90, 0),
('8543a4c7-6f18-d610-3217-582da5aaa174', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'SecurityGroups', 'module', 90, 0),
('858a88eb-62b3-60eb-33ee-582da5a182ce', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Bugs', 'module', 89, 0),
('85e93f09-8b4e-2a08-9124-582da5e6be98', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('86ad03cd-a8d1-9cdc-a63f-582da503bfe3', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'jjwg_Areas', 'module', 90, 0),
('881fcc34-34fb-fd1c-00c2-582da5b0f786', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'jjwg_Address_Cache', 'module', 90, 0),
('882d921b-588b-a9da-3c84-582da5280b14', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('885e12a1-0ac4-60f9-48ce-582da50aa088', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOD_IndexEvent', 'module', 90, 0),
('887c6bc7-fbd1-a71e-702c-582da506221b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOK_KnowledgeBase', 'module', 90, 0),
('899f7ddd-b206-7b09-2fe4-582da50bc734', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AM_TaskTemplates', 'module', 90, 0),
('8a01f69b-1f6c-dfbd-4346-582da5ea5d7e', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'jjwg_Markers', 'module', 89, 0),
('8a89ae50-667f-0fc3-ccb8-582da53ed92b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'jjwg_Areas', 'module', 90, 0),
('8aa23a4e-ea40-e8a0-5bdd-582da5449415', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('8acd79c0-4cd6-872b-d7c4-582da5caff16', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOS_Quotes', 'module', 90, 0),
('8ae7ec00-32ad-0f2c-ecd9-582da521b4ea', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('8b4f7b3d-8883-d3b8-a63f-582da5a906a2', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('8b86d819-4229-237d-bf3f-582e68a1bd0b', '2016-11-18 02:35:37', '2016-11-18 02:35:37', '1', '1', 'delete', 'KReports', 'module', 90, 0),
('8bdc7a4f-f1c2-9356-fe58-582da5d16ffc', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Cases', 'module', 90, 0),
('8db424af-8fc9-1c1a-dcd3-582da55bc4fc', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('8e9a5281-7b71-b6c4-891f-582da555322f', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Users', 'module', 90, 0),
('8eb3b4ec-1f28-06da-53d4-582da5f3b94b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOS_PDF_Templates', 'module', 90, 0),
('8ec214b3-7e39-4207-88a4-582da535b07a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Calls_Reschedule', 'module', 90, 0),
('8ed1a433-8822-b114-4592-582da552c644', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Bugs', 'module', 90, 0),
('8edb20c5-b71a-aba8-4cd8-582da532edc9', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'OutboundEmailAccounts', 'module', 90, 0),
('8ee24781-ebab-b297-24cf-582da5101fc7', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'TemplateSectionLine', 'module', 90, 0),
('902e2185-0ccf-2998-4690-582da521a5d4', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOD_IndexEvent', 'module', 90, 0),
('90a404d9-e250-734d-1f82-582da537769d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'FP_Event_Locations', 'module', 90, 0),
('9178cccb-8ca9-b4fd-5bd6-582da5fdd004', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'SecurityGroups', 'module', 90, 0),
('92b6aa24-adc7-51aa-4fb2-582da5e3e53d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOW_Processed', 'module', 90, 0),
('9336d3cc-9bed-e78e-f19f-582da59ca00d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Calls', 'module', 89, 0),
('93c3eb11-8847-dddc-31b4-582da5381f2a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Contacts', 'module', 90, 0),
('93ce94a9-b94b-a5eb-5f2d-582da564a48f', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Accounts', 'module', 90, 0),
('93d61268-1eac-401f-7ce1-582da50ff80d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOS_Quotes', 'module', 90, 0),
('9454f404-1215-f0b3-7d17-582da5168456', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'jjwg_Address_Cache', 'module', 90, 0),
('946113f9-5544-3a0c-92a5-582da50e875b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('9557d9c5-a610-77f9-4583-582da54bbeb1', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOW_WorkFlow', 'module', 90, 0),
('96167b76-02e5-ba19-0754-582da5771b39', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Leads', 'module', 90, 0),
('97345dc7-c65a-c271-16c6-582da5b41fdb', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Meetings', 'module', 90, 0),
('975f7dd7-a346-a22e-ddf0-582da50cd63b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOS_Products', 'module', 90, 0),
('97f54bad-2f50-1ec5-933a-582da5342370', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('98321ef8-5433-5f23-9473-582da5a74e42', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'FP_Event_Locations', 'module', 89, 0),
('9835e5f8-d7a2-2b42-13de-582da53ca209', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'jjwg_Areas', 'module', 90, 0),
('987b4cf6-666a-61c9-8284-582da550b791', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOD_IndexEvent', 'module', 90, 0),
('98a298f3-c73f-87ec-0044-582da5a6f2db', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOR_Reports', 'module', 90, 0),
('98c7ddfd-48ac-5acd-eb93-582da5401a2a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('98d45b7f-5439-539d-98df-582da5eec9db', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Bugs', 'module', 90, 0),
('98dbfc47-4e81-711b-2b1f-582da5947386', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'jjwg_Maps', 'module', 90, 0),
('99012715-e713-ad48-ced9-582da5f822b8', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AM_TaskTemplates', 'module', 90, 0),
('9921124b-68cd-067b-390f-582da52a28bb', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Project', 'module', 89, 0),
('995873b5-7f75-c82e-6173-582da53849df', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Users', 'module', 90, 0),
('99b72c9d-5e6d-8454-4fb5-582da5688caf', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('9afe7ad1-3954-2adc-9266-582da55ca1a9', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'SecurityGroups', 'module', 90, 0),
('9b193410-5714-7b50-79e5-582da5308279', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'jjwg_Markers', 'module', 90, 0),
('9ba99967-4143-2866-eeac-582da595f6f5', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AM_ProjectTemplates', 'module', 90, 0),
('9c12fcf6-615c-aa0d-3dc9-582da51f2ddb', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'FP_events', 'module', 90, 0),
('9cfa0e77-82f5-611a-367b-582da5ed8e4b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Emails', 'module', 90, 0),
('9d9c19b7-e6dd-b5c2-b2d1-582da5b30046', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'jjwg_Address_Cache', 'module', 90, 0),
('9dd8ccf6-65aa-d69d-80ca-582da5082ceb', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOS_Quotes', 'module', 90, 0),
('9e2c490b-6796-3c24-66eb-582da5b541a5', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Cases', 'module', 90, 0),
('9f5c5fd8-603c-91e4-3875-582da515a938', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Calls_Reschedule', 'module', 90, 0),
('a0a4c951-42f3-c0c5-5adf-582da50cc2f8', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOR_Scheduled_Reports', 'module', 90, 0),
('a1b16614-4e03-3423-617c-582e68592fae', '2016-11-18 02:35:37', '2016-11-18 02:35:37', '1', '1', 'import', 'KReports', 'module', 90, 0),
('a1bb8ca6-ec5c-0a27-ea97-582da5cbbf7a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'jjwg_Areas', 'module', 90, 0),
('a1bef257-bf97-7b2d-3184-582da53debc6', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOS_PDF_Templates', 'module', 90, 0),
('a1e0e91c-aecd-8e34-b1ba-582da5d817a7', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOR_Scheduled_Reports', 'module', 90, 0),
('a1e7c090-3ece-365c-2356-582da5aac123', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Emails', 'module', 89, 0),
('a3041194-b984-9854-430a-582da5aa53d0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOW_WorkFlow', 'module', 90, 0),
('a399a22d-8eb1-1430-6d8a-582da51bab6b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Users', 'module', 90, 0),
('a3a0cd5d-1255-f8f6-8424-582da59dc3f1', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Project', 'module', 90, 0),
('a3c2aa9e-1902-f028-b9e4-582da5a9d9e7', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Leads', 'module', 90, 0),
('a49ed60f-0d68-2819-2e53-582da5de7e8b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'jjwg_Markers', 'module', 90, 0),
('a4c29566-81e9-0c39-a1b1-582da56a9673', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'SecurityGroups', 'module', 90, 0),
('a5d5a583-3fdf-a2d3-eec8-582da5068eb2', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'TemplateSectionLine', 'module', 90, 0),
('a6376f21-5eab-a8a3-8cb2-582da55bc8e9', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Notes', 'module', 89, 0),
('a6cdafc8-cecb-ea7b-6081-582da5e6bbd0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOS_Contracts', 'module', 90, 0),
('a6e16a6a-0ff2-df17-dd72-582da58e8cff', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOS_Quotes', 'module', 90, 0),
('a724d6da-7bf6-de56-cbcc-582da5b4f0a0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('a8e512e6-2714-ab8d-be3b-582da595e480', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Prospects', 'module', 90, 0),
('a9300627-c6eb-6b4b-989b-582da5339813', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('a9b4b506-4730-9d19-2175-582da5e5b47b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'jjwg_Maps', 'module', 90, 0),
('aa0fc680-13cb-aa45-f1b0-582da56ef1f2', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'jjwg_Address_Cache', 'module', 90, 0),
('aa2c4ba5-97e7-ba49-8074-582da59bea86', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOS_Products', 'module', 90, 0),
('abb13930-9982-adb0-2bf9-582da5644aa5', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Contacts', 'module', 90, 0),
('ac0fc6d9-4995-d5e1-5eaa-582da5232914', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Leads', 'module', 90, 0),
('ac33a609-2d2b-b441-f482-582da532b5c8', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Meetings', 'module', 90, 0),
('ac6962d9-3631-0e3b-8dcb-582da5d02b7a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOR_Reports', 'module', 90, 0),
('ac6aeea7-8ff1-e428-b811-582da5314747', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Project', 'module', 90, 0),
('ac89b05e-d71a-a05a-fb11-582da541fdfd', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOW_WorkFlow', 'module', 90, 0),
('ae5bb2ce-82d5-2a72-e261-582da5b434f8', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOS_Contracts', 'module', 90, 0),
('aedff244-8897-f56a-8ccc-582da56a7321', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'jjwg_Markers', 'module', 90, 0),
('af04f25b-c1ae-cb67-3b17-582da5f3c834', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Cases', 'module', 90, 0),
('af48e710-dab3-a21f-bd74-582da5033bf5', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('b00b8ada-5506-d7f8-98af-582e68e6f77c', '2016-11-18 02:35:37', '2016-11-18 02:35:37', '1', '1', 'export', 'KReports', 'module', 90, 0),
('b0670ef7-41f9-eed9-438b-582da5a5fcd0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOS_Quotes', 'module', 90, 0),
('b1278b00-1503-5a65-82bc-582da5c34103', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('b1bbad7f-7a8a-e345-93fb-582da5c646b6', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('b2b9befe-b8d6-cc6e-64d6-582da5596432', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'jjwg_Maps', 'module', 89, 0),
('b2bcdf25-1197-cc8d-d5eb-582da5073383', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('b361abe8-b9a6-7351-3249-582da5c69bc4', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Calls_Reschedule', 'module', 90, 0),
('b368c0f1-dd68-8b15-8b41-582da595e30d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'SecurityGroups', 'module', 90, 0),
('b395660d-f527-3911-fb28-582da5d56e7c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'jjwg_Address_Cache', 'module', 90, 0),
('b4093b69-43ab-37d3-6ba8-582da5130c24', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'EAPM', 'module', 90, 0),
('b41e665b-430d-853b-e8cd-582da51155bc', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('b45d0d3e-2672-916c-d2ef-582da55d1d8f', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('b64be4d1-655d-9702-441a-582da58efafa', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOD_Index', 'module', 89, 0),
('b66f6755-9aae-6d75-9652-582da5fe6299', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('b6ac0cde-480d-b48d-4de2-582da592b47e', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Project', 'module', 90, 0),
('b779c5dc-fa76-93a7-9333-582da5ece8b9', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOS_PDF_Templates', 'module', 90, 0),
('b85921e6-1790-4a86-0b34-582da5bf8d98', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'OutboundEmailAccounts', 'module', 89, 0),
('b8693ed9-56c4-5043-c008-582da564bac2', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'jjwg_Markers', 'module', 90, 0),
('b8fd6b55-707d-8a3d-c3c3-582da5dd91aa', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOW_WorkFlow', 'module', 90, 0),
('b93709ff-06e2-5601-a7af-582da503eff3', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Tasks', 'module', 90, 0),
('ba57e2df-b36c-906c-cba3-582da5da54ad', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'TemplateSectionLine', 'module', 90, 0),
('bad12ba4-70d3-a666-c0a4-582da5df3b06', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOR_Reports', 'module', 90, 0),
('bbdb270e-7f49-155a-6961-582da54cddb1', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'FP_Event_Locations', 'module', 90, 0),
('bbfcd366-2d13-837a-f831-582da5050293', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Bugs', 'module', 90, 0),
('bcbffcb9-427e-e65e-a787-582da5e07856', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'jjwg_Maps', 'module', 90, 0),
('bf1ec2dd-d616-4288-ffc0-582da5ece9ca', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Notes', 'module', 90, 0),
('bf6be33b-ca34-91fb-2cc7-582da5c8e94a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'jjwg_Maps', 'module', 90, 0),
('c01c3489-8605-6c3b-7c58-582da58af136', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Cases', 'module', 90, 0),
('c02753e6-3176-93ce-6b63-582da5e4be38', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOR_Scheduled_Reports', 'module', 90, 0),
('c0743234-6616-881e-25f1-582da51c98e9', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'jjwg_Markers', 'module', 90, 0),
('c07b083c-1554-e147-1860-582e68f9843a', '2016-11-18 02:35:37', '2016-11-18 02:35:37', '1', '1', 'massupdate', 'KReports', 'module', 90, 0),
('c225b33c-0f54-e137-3699-582da505e174', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Project', 'module', 90, 0),
('c23ece5c-eb73-1eac-dce7-582da503096d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('c33e4475-234b-eba5-10e5-582da59d26e0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AM_TaskTemplates', 'module', 90, 0),
('c37ee893-6a13-09a0-b032-582da51420b4', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Calls_Reschedule', 'module', 90, 0),
('c5340a8a-c846-2d34-747d-582da53290e9', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Alerts', 'module', 89, 0),
('c58f23f2-58f2-0a6d-c60f-582da5dccdbf', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Spots', 'module', 89, 0),
('c5b60296-0ddb-9697-0cc0-582da50cbc52', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('c6bd3b83-b5aa-3a03-c00b-582da514085c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOS_Products', 'module', 90, 0),
('c6ed0932-35ca-362b-69ae-582da516bb8d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Prospects', 'module', 90, 0),
('c749ebb8-d258-8060-cfbe-582da542ddd0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('c911b364-1b21-d155-af2f-582da5a04e08', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'jjwg_Address_Cache', 'module', 90, 0),
('c9a1e4ab-9e6b-f160-02ad-582da51cc7b6', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Cases', 'module', 90, 0),
('c9d44c95-9942-3c08-682a-582da556a8c7', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOS_Product_Categories', 'module', 90, 0),
('ca260e65-a53f-bbf3-a175-582da5e52e6a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Bugs', 'module', 90, 0),
('cb3b0193-a214-725e-9231-582da5d1d134', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'EAPM', 'module', 90, 0),
('cba9d90b-ef4f-4d54-ad39-582da5eee78b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOR_Reports', 'module', 90, 0),
('cbba209b-ef64-5c20-12ce-582da517806a', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'jjwg_Areas', 'module', 90, 0),
('cc01445d-26ff-f110-fa7d-582da59a7566', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AM_ProjectTemplates', 'module', 90, 0),
('cc2fa288-25b9-4b56-c193-582da5f4c8e7', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('cc5c4f33-a27e-5f77-dda9-582da5252fdd', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Calls', 'module', 90, 0),
('cc63a3fc-ec18-078a-eba9-582da5c34f3d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOS_Contracts', 'module', 90, 0),
('cc66ed6a-fef1-ddfc-2d11-582da5a25487', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'Project', 'module', 90, 0),
('cc8c7538-4727-842b-8f8c-582da5b753e6', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Notes', 'module', 90, 0),
('cc90683e-ffc6-169c-14c7-582da5c174ef', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOW_Processed', 'module', 89, 0),
('cd2ef9a8-fe68-57d5-1d30-582da5820c53', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Accounts', 'module', 90, 0),
('cdd3a521-c1e5-a6f1-a7d2-582da5a76541', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'jjwg_Maps', 'module', 90, 0),
('ce400f33-fee4-c5a7-af61-582da5eb27a0', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'FP_events', 'module', 90, 0),
('ce5d374b-9f40-7c5e-ac03-582da5aecffe', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'TemplateSectionLine', 'module', 90, 0);
INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('cf066f92-14ac-1d1a-083e-582da5b84128', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('cfeaf066-860e-125b-fdc1-582da596b272', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('d07da672-d710-833a-e49f-582da57672f3', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOP_Case_Updates', 'module', 89, 0),
('d0ac061f-2421-7d59-183c-582da585e68c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AM_TaskTemplates', 'module', 90, 0),
('d19d2735-f2aa-3d75-e1c8-582da5fcb62c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOD_IndexEvent', 'module', 90, 0),
('d1c98129-5fe9-4bd2-730c-582da57add54', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('d22d83ac-f899-9635-6184-582da5155955', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Cases', 'module', 90, 0),
('d382fef0-35fc-5856-b11f-582da503d19e', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOS_Invoices', 'module', 89, 0),
('d4673a8b-ad36-36b9-4b9c-582da5a23599', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('d5310c5e-ad0d-85eb-f23b-582da5c8255e', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'Project', 'module', 90, 0),
('d5350f02-d037-7110-c5e9-582da52492d9', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'jjwg_Markers', 'module', 90, 0),
('d67637f7-966a-047b-8471-582da575db21', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('d68676f9-e083-1444-7759-582da53a83ef', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOS_Product_Categories', 'module', 90, 0),
('d6dc2f0f-03e3-5fd2-b6bc-582da506163b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOR_Scheduled_Reports', 'module', 90, 0),
('d7035976-71a0-02ff-48e1-582da5b5ef2b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOD_Index', 'module', 90, 0),
('da93a843-dc66-1c86-4d6d-582da5631471', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('dc8b9d0a-ba60-1573-9c8b-582da5ed38a7', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOS_Invoices', 'module', 90, 0),
('dcad2295-2123-64fa-fdc2-582da5682d77', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('dcbf2de4-3863-07ca-8049-582da506684c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Emails', 'module', 90, 0),
('ddf9e404-7a85-c634-64df-582da55319cf', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'TemplateSectionLine', 'module', 89, 0),
('df722165-ada3-2dad-aec1-582da512aa2e', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('df8975e4-0a15-0d59-4629-582da5a67097', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('e0a9076a-130a-fd15-b9a2-582da54dd7c4', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Spots', 'module', 90, 0),
('e0c9319d-6cc8-c404-ae85-582da5952b2c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AM_TaskTemplates', 'module', 90, 0),
('e1830a6d-f9a9-abc6-d81d-582da5efc136', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOD_Index', 'module', 90, 0),
('e1dff261-7c6d-734c-31db-582da5e89fcd', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'AOS_Contracts', 'module', 90, 0),
('e2c44cf5-7365-ee7f-8945-582da53e1f51', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Notes', 'module', 90, 0),
('e3a051d5-6c98-3ccb-e3e1-582da51f5ee7', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'jjwg_Markers', 'module', 90, 0),
('e3c5b011-6163-f60a-3c93-582da526a96e', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'AOR_Scheduled_Reports', 'module', 89, 0),
('e45bba8f-bf13-a53a-23cf-582da52750b4', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'AOS_Invoices', 'module', 90, 0),
('e491318a-c25c-1134-37ef-582da5ade772', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOR_Reports', 'module', 90, 0),
('e4aa2832-dff4-63bf-74fc-582da53c2d5d', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AM_ProjectTemplates', 'module', 90, 0),
('e4b3076e-38ec-07d2-06f6-582da55add84', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Alerts', 'module', 90, 0),
('e4d4ceb9-b49a-8bd7-e4f7-582da5dd3b6f', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('e4fff91c-c2a2-413c-cf35-582da5ed9855', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'AOP_Case_Updates', 'module', 90, 0),
('e575add4-9686-1cf0-396e-582da5a2223c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Documents', 'module', 89, 0),
('e5dc01c5-8778-25f7-4178-582da547f42f', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'Notes', 'module', 90, 0),
('e79dbf99-2693-fd2d-27b6-582da54ec105', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOS_Product_Categories', 'module', 90, 0),
('e9d02d7d-6476-ba81-8b4a-582da5b47dca', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'AOD_Index', 'module', 90, 0),
('ea47933c-a9ad-cb36-0b5e-582da5cfc886', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('ec6da974-76c3-99d9-2f38-582da53c7f56', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'access', 'Tasks', 'module', 89, 0),
('ecd5362f-00b3-c3f3-6c7f-582da5435b50', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('ed13fe61-9789-772f-2ea1-582da5779c11', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'massupdate', 'AOR_Scheduled_Reports', 'module', 90, 0),
('ef8bead6-0fc6-4e48-dd9c-582da53a3839', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Emails', 'module', 90, 0),
('ef8de57d-38aa-133d-e79c-582da56757b4', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'export', 'AOR_Reports', 'module', 90, 0),
('f08cf200-a344-5f72-9439-582da5b7f3ac', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('f104c357-67b1-96af-6af9-582da56f047c', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Spots', 'module', 90, 0),
('f105280f-6cb1-61f3-3fa1-582da506c1cc', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'TemplateSectionLine', 'module', 90, 0),
('f2368602-d5b3-4f92-b7aa-582da52f42d6', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'OutboundEmailAccounts', 'module', 90, 0),
('f23bbf00-5115-3ca1-5683-582da540a55b', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'import', 'AOS_Contracts', 'module', 90, 0),
('f2a4e653-880b-a5a5-81ac-582da5295f00', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'view', 'Documents', 'module', 90, 0),
('f2d332c5-d13d-a987-8458-582da50e7727', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('fcf70a50-2127-f410-2f6e-582da52c3052', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Alerts', 'module', 90, 0),
('fec10ba9-4467-b6a7-4fc3-582da52bea14', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '', 'edit', 'Spots', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acl_roles`
--

INSERT INTO `acl_roles` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`) VALUES
('101d0eec-099a-0b07-97cb-59d4d9c1f6b4', '2017-10-04 12:53:18', '2017-10-04 12:53:18', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Usuario', '', 0),
('5af0d976-e44d-c118-dddf-590009e66560', '2017-04-26 02:45:26', '2017-04-26 03:48:32', '1', '1', 'Soporte de TS Talent Soluciones', 'Unidad de Soporte de TS Talent Soluciones', 1),
('5e989a55-4600-6083-df0f-590019e937eb', '2017-04-26 03:52:58', '2017-04-26 03:54:48', '1', '1', 'SOPORTE TS TALENT', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acl_roles_actions`
--

INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('760560a2-c58d-fc78-3623-59001b98a9de', '5e989a55-4600-6083-df0f-590019e937eb', 'access', 0, '2017-04-26 04:01:26', 0),
('79438cba-a78c-f566-451a-59001bede41f', '5e989a55-4600-6083-df0f-590019e937eb', 'delete', 0, '2017-04-26 04:01:26', 0),
('79b602df-5fc6-e39b-6918-59001bae1e44', '5e989a55-4600-6083-df0f-590019e937eb', 'edit', 0, '2017-04-26 04:01:26', 0),
('7a5f88a6-696e-29e4-d149-59001b622041', '5e989a55-4600-6083-df0f-590019e937eb', 'export', 0, '2017-04-26 04:01:26', 0),
('7aa770af-591c-fb8e-4a68-59001b33ce00', '5e989a55-4600-6083-df0f-590019e937eb', 'import', 0, '2017-04-26 04:01:26', 0),
('7ae38245-0529-b0a1-5752-59001b63b224', '5e989a55-4600-6083-df0f-590019e937eb', 'list', 0, '2017-04-26 04:01:26', 0),
('7b2c293a-7788-2504-65e3-59001b641b00', '5e989a55-4600-6083-df0f-590019e937eb', 'massupdate', 0, '2017-04-26 04:01:26', 0),
('7b6ee985-bf7b-04fc-1ad5-59001bf6201d', '5e989a55-4600-6083-df0f-590019e937eb', 'view', 0, '2017-04-26 04:01:26', 0),
('7baaa4ff-ebb8-b509-1d3f-59001bf46ea4', '5e989a55-4600-6083-df0f-590019e937eb', 'd07da672-d710-833a-e49f-582da57672f3', 0, '2017-04-26 04:01:26', 0),
('7beb8619-4a84-dd2d-8de6-59001b391095', '5e989a55-4600-6083-df0f-590019e937eb', '45d3323d-bb1a-d1c3-ca38-582da5e11683', 0, '2017-04-26 04:01:26', 0),
('7c2a246a-4f57-4c43-46be-59001bcd0c20', '5e989a55-4600-6083-df0f-590019e937eb', '2edfd4f2-0e09-f987-9aa1-582da525f099', 0, '2017-04-26 04:01:26', 0),
('7c5bc755-1864-4d86-73d5-59001b730d23', '5e989a55-4600-6083-df0f-590019e937eb', '5c8806be-a31c-d353-04fb-582da56fcdd8', 0, '2017-04-26 04:01:26', 0),
('7c8b4dd8-4673-1136-f7ff-59001bb0804f', '5e989a55-4600-6083-df0f-590019e937eb', '52085da4-fe43-713a-772b-582da57e88be', 0, '2017-04-26 04:01:26', 0),
('7cb199a2-b1c6-4747-bb66-59001b850782', '5e989a55-4600-6083-df0f-590019e937eb', '26543a9d-3e2c-aaeb-2e3f-582da55b27ec', 0, '2017-04-26 04:01:26', 0),
('7ceb9401-57a5-d532-2280-59001b4ea8c9', '5e989a55-4600-6083-df0f-590019e937eb', '6513ac87-aca3-32f0-d535-582da5b11872', 0, '2017-04-26 04:01:26', 0),
('7d31577c-7df2-7831-64f4-59001b5187eb', '5e989a55-4600-6083-df0f-590019e937eb', 'e4fff91c-c2a2-413c-cf35-582da5ed9855', 0, '2017-04-26 04:01:26', 0),
('7d65e974-070d-8d7d-e649-59001b54138c', '5e989a55-4600-6083-df0f-590019e937eb', '5ac80b32-2f26-5990-3cf6-582da5e762b4', 0, '2017-04-26 04:01:26', 0),
('7d9e6813-83a8-bef0-2f40-59001bcbe79e', '5e989a55-4600-6083-df0f-590019e937eb', '9178cccb-8ca9-b4fd-5bd6-582da5fdd004', 0, '2017-04-26 04:01:26', 0),
('7ddb1ddc-00d7-bee1-80a2-59001bfe57af', '5e989a55-4600-6083-df0f-590019e937eb', '8543a4c7-6f18-d610-3217-582da5aaa174', 0, '2017-04-26 04:01:26', 0),
('7e15dea8-1bd6-31b2-5911-59001bc9dc06', '5e989a55-4600-6083-df0f-590019e937eb', 'a4c29566-81e9-0c39-a1b1-582da56a9673', 0, '2017-04-26 04:01:26', 0),
('7e4ec69d-a305-074b-7792-59001b98f6dc', '5e989a55-4600-6083-df0f-590019e937eb', '9afe7ad1-3954-2adc-9266-582da55ca1a9', 0, '2017-04-26 04:01:26', 0),
('7e824f2b-cf2c-49f2-eea5-59001be94e21', '5e989a55-4600-6083-df0f-590019e937eb', '77d5edfd-e910-140a-a8d6-582da55c2856', 0, '2017-04-26 04:01:26', 0),
('7eb4925b-dcd5-5c4c-7bea-59001bc1b597', '5e989a55-4600-6083-df0f-590019e937eb', 'b368c0f1-dd68-8b15-8b41-582da595e30d', 0, '2017-04-26 04:01:26', 0),
('7ee3ce7c-b6ee-af8d-14c5-59001babe354', '5e989a55-4600-6083-df0f-590019e937eb', '6a29b35f-d46e-a52f-9b96-582da5db9002', 0, '2017-04-26 04:01:26', 0),
('7f19a3b8-d1ea-74fa-a537-59001b8f0d3d', '5e989a55-4600-6083-df0f-590019e937eb', 'c5340a8a-c846-2d34-747d-582da53290e9', 0, '2017-04-26 04:01:26', 0),
('7f516739-db34-3737-151c-59001b535542', '5e989a55-4600-6083-df0f-590019e937eb', '254bcfef-14b0-f6a6-42dd-582da54241bb', 0, '2017-04-26 04:01:26', 0),
('7f8a24b4-4e99-6835-485c-59001b2bb731', '5e989a55-4600-6083-df0f-590019e937eb', 'fcf70a50-2127-f410-2f6e-582da52c3052', 0, '2017-04-26 04:01:26', 0),
('7fcb1bbc-79b2-176a-9c72-59001b8b3d18', '5e989a55-4600-6083-df0f-590019e937eb', '38571a2c-4652-6e91-4823-582da56c42fc', 0, '2017-04-26 04:01:26', 0),
('80081382-5186-1695-b74e-59001b5c3086', '5e989a55-4600-6083-df0f-590019e937eb', '2f0ff672-d142-a193-f491-582da528da3f', 0, '2017-04-26 04:01:26', 0),
('803cd3f1-1ba8-c600-cb19-59001b8cf2ac', '5e989a55-4600-6083-df0f-590019e937eb', '2a040b8f-3f33-abea-e592-582da5c3a4bf', 0, '2017-04-26 04:01:26', 0),
('806de54f-0749-fc80-d6d9-59001b8de89a', '5e989a55-4600-6083-df0f-590019e937eb', '4b625303-35ea-b04a-aff5-582da52e8d6c', 0, '2017-04-26 04:01:26', 0),
('8094d88d-6725-4699-abbe-59001b7fc2fc', '5e989a55-4600-6083-df0f-590019e937eb', 'e4b3076e-38ec-07d2-06f6-582da55add84', 0, '2017-04-26 04:01:26', 0),
('80c54c37-d0b6-51c3-9def-59001bc5ffad', '5e989a55-4600-6083-df0f-590019e937eb', 'cc90683e-ffc6-169c-14c7-582da5c174ef', 0, '2017-04-26 04:01:26', 0),
('80f8af11-89b0-2f32-3a78-59001bd0b30e', '5e989a55-4600-6083-df0f-590019e937eb', '42a171f7-6011-adf5-9992-582da5818194', 0, '2017-04-26 04:01:26', 0),
('812aff96-65b0-0d1e-7caf-59001bf8612f', '5e989a55-4600-6083-df0f-590019e937eb', '34783ae6-4798-f3cf-0ffd-582da5d049ab', 0, '2017-04-26 04:01:26', 0),
('81551ab1-678a-8560-0251-59001b376bff', '5e989a55-4600-6083-df0f-590019e937eb', '82d7ecad-02f2-77cb-c41d-582da5e5194d', 0, '2017-04-26 04:01:26', 0),
('81922b8e-ac99-5150-3bcb-59001b97d46c', '5e989a55-4600-6083-df0f-590019e937eb', '6fcc92c8-75bf-cfd5-6509-582da51bb6a2', 0, '2017-04-26 04:01:26', 0),
('81d19e61-cbf4-a614-c7cc-59001b43c9c9', '5e989a55-4600-6083-df0f-590019e937eb', '18e15e96-6b78-9518-cf55-582da54ddea6', 0, '2017-04-26 04:01:26', 0),
('820a5823-e41f-94c4-7735-59001bc2e13c', '5e989a55-4600-6083-df0f-590019e937eb', '92b6aa24-adc7-51aa-4fb2-582da5e3e53d', 0, '2017-04-26 04:01:26', 0),
('823cbcb9-6bae-cd92-ffcb-59001b624cc2', '5e989a55-4600-6083-df0f-590019e937eb', '49d8099a-c3d0-77e1-b1e5-582da52ad2e4', 0, '2017-04-26 04:01:26', 0),
('8275b32b-e8b0-f8b1-0372-59001b9ff76f', '5e989a55-4600-6083-df0f-590019e937eb', '4b7279ff-2923-24d1-d616-582da5fe7879', 0, '2017-04-26 04:01:26', 0),
('82a5b83c-0edb-77db-d4dd-59001baf83e0', '5e989a55-4600-6083-df0f-590019e937eb', '6f180b63-5466-5ae7-b6ff-582da581f4ff', 0, '2017-04-26 04:01:26', 0),
('82c9e129-f2ec-804b-80ce-59001bc074bf', '5e989a55-4600-6083-df0f-590019e937eb', '651553d7-591b-5635-28cc-582da5a48aaf', 0, '2017-04-26 04:01:26', 0),
('83007ba1-f0cb-5642-d42c-59001b12bee1', '5e989a55-4600-6083-df0f-590019e937eb', '7f73b5af-f9fb-372c-b2e1-582da5fcafb6', 0, '2017-04-26 04:01:26', 0),
('8335e637-6e57-1f82-7ef4-59001bf72499', '5e989a55-4600-6083-df0f-590019e937eb', '7820add9-512c-77f4-5dfd-582da5ef1808', 0, '2017-04-26 04:01:26', 0),
('83699217-2a25-ee5e-1eee-59001b932651', '5e989a55-4600-6083-df0f-590019e937eb', '5c0cb4c0-4557-cc75-cfcc-582da59fee0b', 0, '2017-04-26 04:01:26', 0),
('83a10b65-9dcf-d29c-e2cf-59001bd55204', '5e989a55-4600-6083-df0f-590019e937eb', '887c6bc7-fbd1-a71e-702c-582da506221b', 0, '2017-04-26 04:01:26', 0),
('83c3dc4b-bb96-f407-cde1-59001b91a646', '5e989a55-4600-6083-df0f-590019e937eb', '54f82ed1-5722-41cb-133c-582da5ee849b', 0, '2017-04-26 04:01:26', 0),
('83f27cfd-ab43-bec3-9f54-59001b837e83', '5e989a55-4600-6083-df0f-590019e937eb', '4b20a885-fc03-7e3d-2cfd-582da5a4fe33', 0, '2017-04-26 04:01:26', 0),
('841d8cb5-459d-df79-97b0-59001b010d85', '5e989a55-4600-6083-df0f-590019e937eb', '8ec214b3-7e39-4207-88a4-582da535b07a', 0, '2017-04-26 04:01:26', 0),
('843fd259-81b2-bc69-6038-59001b88fda5', '5e989a55-4600-6083-df0f-590019e937eb', '7e6667a8-5bb5-bdeb-56d0-582da513cfaf', 0, '2017-04-26 04:01:26', 0),
('847f5957-9e62-e7ed-2d8b-59001bb172ba', '5e989a55-4600-6083-df0f-590019e937eb', 'b361abe8-b9a6-7351-3249-582da5c69bc4', 0, '2017-04-26 04:01:26', 0),
('84b5c53b-2338-8722-23bd-59001b0b4732', '5e989a55-4600-6083-df0f-590019e937eb', '9f5c5fd8-603c-91e4-3875-582da515a938', 0, '2017-04-26 04:01:26', 0),
('84ef74da-3c9b-0d40-83fe-59001be7dbe2', '5e989a55-4600-6083-df0f-590019e937eb', '74253abe-67ac-a879-9003-582da55b803b', 0, '2017-04-26 04:01:26', 0),
('852af450-a4c4-863c-6099-59001becc8fb', '5e989a55-4600-6083-df0f-590019e937eb', 'c37ee893-6a13-09a0-b032-582da51420b4', 0, '2017-04-26 04:01:26', 0),
('855ee893-bdf7-acb9-33ac-59001be0007e', '5e989a55-4600-6083-df0f-590019e937eb', '5e2be85d-1b5d-fbce-940d-582da5b11167', 0, '2017-04-26 04:01:26', 0),
('85980bfc-0221-9a47-802d-59001b6e978e', '5e989a55-4600-6083-df0f-590019e937eb', '194406d1-6925-4dc1-4a20-582da5d94956', 0, '2017-04-26 04:01:26', 0),
('85c9d926-5263-012d-02d8-59001baf4e2b', '5e989a55-4600-6083-df0f-590019e937eb', '608e2084-749c-157b-ef1f-582da563b75d', 0, '2017-04-26 04:01:26', 0),
('85f0bbce-a605-2a0e-0620-59001b7d2e0c', '5e989a55-4600-6083-df0f-590019e937eb', '5070ef1f-bb70-00b6-58a1-582da5f56ccb', 0, '2017-04-26 04:01:26', 0),
('862868cc-b19c-ffbe-1d56-59001bed0586', '5e989a55-4600-6083-df0f-590019e937eb', '7ba81d23-8b47-d86f-588c-582da5898567', 0, '2017-04-26 04:01:26', 0),
('8664fee7-28f9-d5c8-856d-59001bf8dfe6', '5e989a55-4600-6083-df0f-590019e937eb', '6e3a5496-9af4-e052-84d3-582da5366dec', 0, '2017-04-26 04:01:26', 0),
('869b7755-9c55-3705-24f0-59001bda064e', '5e989a55-4600-6083-df0f-590019e937eb', '3557065f-8c76-5af8-d9ed-582da5d6c903', 0, '2017-04-26 04:01:26', 0),
('86cd4aae-846c-6a25-b096-59001b3c775a', '5e989a55-4600-6083-df0f-590019e937eb', '85e93f09-8b4e-2a08-9124-582da5e6be98', 0, '2017-04-26 04:01:26', 0),
('86f3f52e-73c9-7c72-8ef9-59001bcdc0e4', '5e989a55-4600-6083-df0f-590019e937eb', '122e826c-71ca-ac47-aa6b-582da51c6812', 0, '2017-04-26 04:01:26', 0),
('8724fce7-c088-88de-bf17-59001b7c61a5', '5e989a55-4600-6083-df0f-590019e937eb', '82d3d8ef-f88b-5418-9d3a-582da560a498', 0, '2017-04-26 04:01:26', 0),
('8758810b-0263-2444-78d9-59001bbfe275', '5e989a55-4600-6083-df0f-590019e937eb', 'c01c3489-8605-6c3b-7c58-582da58af136', 0, '2017-04-26 04:01:26', 0),
('878bb99a-80e9-cb79-41fa-59001b495fa7', '5e989a55-4600-6083-df0f-590019e937eb', 'af04f25b-c1ae-cb67-3b17-582da5f3c834', 0, '2017-04-26 04:01:26', 0),
('87c19f18-ee49-7624-f4f5-59001b9d40f5', '5e989a55-4600-6083-df0f-590019e937eb', 'd22d83ac-f899-9635-6184-582da5155955', 0, '2017-04-26 04:01:26', 0),
('87eccf7a-4ab0-dac3-906e-59001bfe5dab', '5e989a55-4600-6083-df0f-590019e937eb', 'c9a1e4ab-9e6b-f160-02ad-582da51cc7b6', 0, '2017-04-26 04:01:26', 0),
('8837d56d-8cfc-2309-eec4-59001b3d4444', '5e989a55-4600-6083-df0f-590019e937eb', '9e2c490b-6796-3c24-66eb-582da5b541a5', 0, '2017-04-26 04:01:26', 0),
('886d0995-cb6f-4efa-3f40-59001b6abc33', '5e989a55-4600-6083-df0f-590019e937eb', 'dcad2295-2123-64fa-fdc2-582da5682d77', 0, '2017-04-26 04:01:26', 0),
('88a3c71c-40b9-dd7b-cf7d-59001bcd38df', '5e989a55-4600-6083-df0f-590019e937eb', '8bdc7a4f-f1c2-9356-fe58-582da5d16ffc', 0, '2017-04-26 04:01:26', 0),
('88d78f98-fd96-cdd5-56b3-59001bd3a616', '5e989a55-4600-6083-df0f-590019e937eb', '38d21353-5027-5161-3907-582da52ca864', 0, '2017-04-26 04:01:26', 0),
('890fd6a9-b972-aaa3-0973-59001bc63f55', '5e989a55-4600-6083-df0f-590019e937eb', '96167b76-02e5-ba19-0754-582da5771b39', 0, '2017-04-26 04:01:26', 0),
('8941bba3-0e9c-b402-403d-59001bd290a9', '5e989a55-4600-6083-df0f-590019e937eb', '78ca0848-0322-2e27-b48f-582da5c6deb2', 0, '2017-04-26 04:01:26', 0),
('8971d953-665b-5769-25ab-59001b167f93', '5e989a55-4600-6083-df0f-590019e937eb', 'ac0fc6d9-4995-d5e1-5eaa-582da5232914', 0, '2017-04-26 04:01:26', 0),
('899d0bab-013c-f87c-b1ee-59001b8d073e', '5e989a55-4600-6083-df0f-590019e937eb', 'a3c2aa9e-1902-f028-b9e4-582da5a9d9e7', 0, '2017-04-26 04:01:26', 0),
('89d840e0-a2b2-ddb7-3ddc-59001b4c7a6e', '5e989a55-4600-6083-df0f-590019e937eb', '629230c9-f814-50d0-1d21-582da5622153', 0, '2017-04-26 04:01:26', 0),
('8a133c72-6982-d9ff-6760-59001b1aa912', '5e989a55-4600-6083-df0f-590019e937eb', 'b41e665b-430d-853b-e8cd-582da51155bc', 0, '2017-04-26 04:01:26', 0),
('8a60a39d-0391-b6b7-1706-59001bb7ed55', '5e989a55-4600-6083-df0f-590019e937eb', '4fc57116-6516-2ad2-abeb-582da5b96659', 0, '2017-04-26 04:01:26', 0),
('8a965554-60ab-6582-5480-59001b7f0d91', '5e989a55-4600-6083-df0f-590019e937eb', '23b2c0c1-350d-50bd-a2dc-582da54dd941', 0, '2017-04-26 04:01:26', 0),
('8acddfee-aa2d-d877-ebcf-59001bf5b722', '5e989a55-4600-6083-df0f-590019e937eb', '803b9450-fa97-4c1c-6a8d-582da5b5a839', 0, '2017-04-26 04:01:26', 0),
('8b019d2e-95d5-bfa9-00b3-59001bab6965', '5e989a55-4600-6083-df0f-590019e937eb', '701e5505-a076-7376-75e5-582da551cd8e', 0, '2017-04-26 04:01:26', 0),
('8b31fc6b-a031-4226-5043-59001b83cde4', '5e989a55-4600-6083-df0f-590019e937eb', 'abb13930-9982-adb0-2bf9-582da5644aa5', 0, '2017-04-26 04:01:26', 0),
('8b54624c-9eaf-db21-ac8c-59001bdce41c', '5e989a55-4600-6083-df0f-590019e937eb', '93c3eb11-8847-dddc-31b4-582da5381f2a', 0, '2017-04-26 04:01:26', 0),
('8b85462e-7c36-9962-1a86-59001b13b27d', '5e989a55-4600-6083-df0f-590019e937eb', '57b4040e-ace1-8972-911b-582da5a73887', 0, '2017-04-26 04:01:26', 0),
('8bbb5d37-9385-7f86-b2d3-59001bbcacfe', '5e989a55-4600-6083-df0f-590019e937eb', 'b66f6755-9aae-6d75-9652-582da5fe6299', 0, '2017-04-26 04:01:26', 0),
('8bf43bda-5629-803a-36c8-59001b881633', '5e989a55-4600-6083-df0f-590019e937eb', '373b0167-0d6f-ae22-4a43-582da58ba1d0', 0, '2017-04-26 04:01:26', 0),
('8c2b2c92-8fa5-6bff-8448-59001b0f63d2', '5e989a55-4600-6083-df0f-590019e937eb', '377478ac-e0d8-7431-3314-582da5aa27a0', 0, '2017-04-26 04:01:26', 0),
('8c4ecb83-114e-bf09-f3f7-59001b7b0c14', '5e989a55-4600-6083-df0f-590019e937eb', 'e1dff261-7c6d-734c-31db-582da5e89fcd', 0, '2017-04-26 04:01:26', 0),
('8c84ff84-993b-01b4-1541-59001bf4c62c', '5e989a55-4600-6083-df0f-590019e937eb', 'cc63a3fc-ec18-078a-eba9-582da5c34f3d', 0, '2017-04-26 04:01:26', 0),
('8cbb24fa-e0ed-5bb3-4138-59001ba7a51a', '5e989a55-4600-6083-df0f-590019e937eb', '2c7b68dd-d939-28f5-5298-582da5da55a3', 0, '2017-04-26 04:01:26', 0),
('8cf523a0-4699-0e11-364d-59001be1829f', '5e989a55-4600-6083-df0f-590019e937eb', 'f23bbf00-5115-3ca1-5683-582da540a55b', 0, '2017-04-26 04:01:26', 0),
('8d2bbaed-c986-612d-18f6-59001b5afcbf', '5e989a55-4600-6083-df0f-590019e937eb', 'ae5bb2ce-82d5-2a72-e261-582da5b434f8', 0, '2017-04-26 04:01:26', 0),
('8d645dfa-6bc6-a4d1-ed04-59001b167020', '5e989a55-4600-6083-df0f-590019e937eb', 'a6cdafc8-cecb-ea7b-6081-582da5e6bbd0', 0, '2017-04-26 04:01:26', 0),
('8d8e16cd-0b4d-e773-868d-59001b9b0c25', '5e989a55-4600-6083-df0f-590019e937eb', '63a59571-70b8-fe81-ead1-582da5325bb2', 0, '2017-04-26 04:01:26', 0),
('8dc5580f-8ca8-1ae3-7195-59001baf799b', '5e989a55-4600-6083-df0f-590019e937eb', 'a1e7c090-3ece-365c-2356-582da5aac123', 0, '2017-04-26 04:01:26', 0),
('8dfc5409-eabd-8fce-56ae-59001b369aee', '5e989a55-4600-6083-df0f-590019e937eb', '13d24f72-0476-04fd-9a84-582da577adc7', 0, '2017-04-26 04:01:26', 0),
('8e33205c-f5c0-2690-23ff-59001bebbbfe', '5e989a55-4600-6083-df0f-590019e937eb', '9cfa0e77-82f5-611a-367b-582da5ed8e4b', 0, '2017-04-26 04:01:26', 0),
('8e75a1c5-5843-2501-1130-59001ba99a11', '5e989a55-4600-6083-df0f-590019e937eb', '3d53d59d-45d9-5c58-6b93-582da521cf7e', 0, '2017-04-26 04:01:26', 0),
('8eb08725-888d-8c57-1c6b-59001b35c616', '5e989a55-4600-6083-df0f-590019e937eb', '26dd9d33-2fac-bdae-bb7d-582da5613536', 0, '2017-04-26 04:01:26', 0),
('8ee4e13a-3cf1-2722-9328-59001ba985c5', '5e989a55-4600-6083-df0f-590019e937eb', 'ef8bead6-0fc6-4e48-dd9c-582da53a3839', 0, '2017-04-26 04:01:26', 0),
('8f145a8b-c1ce-7eda-4db1-59001be88ddc', '5e989a55-4600-6083-df0f-590019e937eb', '6abd9af8-77ff-aa6c-3cbe-582da5d0fc63', 0, '2017-04-26 04:01:26', 0),
('8f3695c2-56e6-9a1f-6b8c-59001b91c640', '5e989a55-4600-6083-df0f-590019e937eb', 'dcbf2de4-3863-07ca-8049-582da506684c', 0, '2017-04-26 04:01:26', 0),
('8f66d12c-d15f-b5dc-e2a1-59001b96f95d', '5e989a55-4600-6083-df0f-590019e937eb', '36c8c8c3-b709-4512-b077-582da50dc362', 0, '2017-04-26 04:01:26', 0),
('8f950f3f-39cd-8acc-efa6-59001b49e346', '5e989a55-4600-6083-df0f-590019e937eb', '78b4bdc5-2030-c459-d5eb-582da5373db1', 0, '2017-04-26 04:01:26', 0),
('8fb7dbcf-5113-15fb-7048-59001b661ec2', '5e989a55-4600-6083-df0f-590019e937eb', '604a5139-4e55-e40e-d44c-582da58ccc9f', 0, '2017-04-26 04:01:26', 0),
('8fec9636-44f9-7b23-182e-59001b8760a9', '5e989a55-4600-6083-df0f-590019e937eb', 'cd2ef9a8-fe68-57d5-1d30-582da5820c53', 0, '2017-04-26 04:01:26', 0),
('90215aa0-0b69-6c2b-eb1f-59001bd9bcc2', '5e989a55-4600-6083-df0f-590019e937eb', '93ce94a9-b94b-a5eb-5f2d-582da564a48f', 0, '2017-04-26 04:01:26', 0),
('90555f6c-005a-c2e3-7c4f-59001be3d419', '5e989a55-4600-6083-df0f-590019e937eb', '4a5107d7-ae27-9fd1-a876-582da593c437', 0, '2017-04-26 04:01:26', 0),
('90781263-a94d-0fee-42e8-59001bfb7f6a', '5e989a55-4600-6083-df0f-590019e937eb', '178bdeb3-59f7-2253-d454-582da55e903f', 0, '2017-04-26 04:01:26', 0),
('90b8f87b-8b5e-ae3f-f42e-59001b5deece', '5e989a55-4600-6083-df0f-590019e937eb', '3fd1665d-f245-d2ed-dd08-582da52f6992', 0, '2017-04-26 04:01:26', 0),
('90ec7178-c384-2d80-073d-59001b17d4b7', '5e989a55-4600-6083-df0f-590019e937eb', 'b85921e6-1790-4a86-0b34-582da5bf8d98', 0, '2017-04-26 04:01:26', 0),
('91240840-ebee-1663-c6c8-59001bdb2087', '5e989a55-4600-6083-df0f-590019e937eb', '3adde465-d62f-843d-0373-582da5aa5a02', 0, '2017-04-26 04:01:26', 0),
('915b84b1-b26b-bdce-c54e-59001b9a76f2', '5e989a55-4600-6083-df0f-590019e937eb', '2bbabeae-b691-b614-da49-582da5419a7d', 0, '2017-04-26 04:01:26', 0),
('9198592a-a55d-04cc-9b4f-59001bb8d7bf', '5e989a55-4600-6083-df0f-590019e937eb', '6a7a10c8-470d-a10a-60b6-582da5d0b1a3', 0, '2017-04-26 04:01:26', 0),
('91cae6d5-3028-6b2a-b492-59001b36141f', '5e989a55-4600-6083-df0f-590019e937eb', '47901147-15bb-6097-a7a3-582da5415b8a', 0, '2017-04-26 04:01:26', 0),
('91ed6b48-cf60-dbc4-4482-59001b39c4df', '5e989a55-4600-6083-df0f-590019e937eb', '192c6ffa-adec-1026-e616-582da501df8c', 0, '2017-04-26 04:01:26', 0),
('92262ce3-851a-2cbd-b7d2-59001b36495a', '5e989a55-4600-6083-df0f-590019e937eb', '8edb20c5-b71a-aba8-4cd8-582da532edc9', 0, '2017-04-26 04:01:26', 0),
('925bba1c-49cf-684c-387e-59001b415624', '5e989a55-4600-6083-df0f-590019e937eb', 'f2368602-d5b3-4f92-b7aa-582da52f42d6', 0, '2017-04-26 04:01:26', 0),
('929f0258-26e4-d1d4-1d47-59001b03b3b8', '5e989a55-4600-6083-df0f-590019e937eb', 'e575add4-9686-1cf0-396e-582da5a2223c', 0, '2017-04-26 04:01:26', 0),
('92d596c6-4a10-14fa-44bc-59001b021adf', '5e989a55-4600-6083-df0f-590019e937eb', '2ab20da1-ab24-14a0-90b5-582da5fb56bb', 0, '2017-04-26 04:01:26', 0),
('930d4fc4-6403-f5e9-122b-59001b6af469', '5e989a55-4600-6083-df0f-590019e937eb', '191dcf82-81db-b809-047d-582da5368171', 0, '2017-04-26 04:01:26', 0),
('934358f2-199f-9019-02e0-59001bdf0cb2', '5e989a55-4600-6083-df0f-590019e937eb', '45cbe8c1-4df2-083c-dd01-582da5457bd0', 0, '2017-04-26 04:01:26', 0),
('93672433-8806-adbe-487f-59001bb4c47d', '5e989a55-4600-6083-df0f-590019e937eb', '385e3532-1010-a82d-e480-582da5db9551', 0, '2017-04-26 04:01:26', 0),
('939d6df2-ddd5-1199-5a82-59001b2572a8', '5e989a55-4600-6083-df0f-590019e937eb', '78980482-4d5d-0504-826d-582da506434b', 0, '2017-04-26 04:01:26', 0),
('93d9234d-fcaf-d4b0-52bf-59001b9955f6', '5e989a55-4600-6083-df0f-590019e937eb', '5627a4ae-323d-eede-02d6-582da57e5b20', 0, '2017-04-26 04:01:26', 0),
('9415cc4a-d36b-80e2-5ec7-59001b83567e', '5e989a55-4600-6083-df0f-590019e937eb', 'f2a4e653-880b-a5a5-81ac-582da5295f00', 0, '2017-04-26 04:01:26', 0),
('945a7caa-3718-7718-b87d-59001b5a617d', '5e989a55-4600-6083-df0f-590019e937eb', '6a0e9a68-b54a-5c80-7bbd-582da5048de1', 0, '2017-04-26 04:01:26', 0),
('949edc8b-ec60-962e-7b50-59001b2d5ae6', '5e989a55-4600-6083-df0f-590019e937eb', '97f54bad-2f50-1ec5-933a-582da5342370', 0, '2017-04-26 04:01:26', 0),
('94db3d0c-a8a6-43da-b28f-59001b9ce03e', '5e989a55-4600-6083-df0f-590019e937eb', '8db424af-8fc9-1c1a-dcd3-582da55bc4fc', 0, '2017-04-26 04:01:26', 0),
('951a1a2e-8509-7f41-744d-59001b9a53d7', '5e989a55-4600-6083-df0f-590019e937eb', 'cb3b0193-a214-725e-9231-582da5d1d134', 0, '2017-04-26 04:01:26', 0),
('955412af-49b1-b732-dbb7-59001b4817c1', '5e989a55-4600-6083-df0f-590019e937eb', 'b4093b69-43ab-37d3-6ba8-582da5130c24', 0, '2017-04-26 04:01:26', 0),
('958e15f8-fc87-8871-f117-59001b08da33', '5e989a55-4600-6083-df0f-590019e937eb', '846d05f5-9420-a214-5050-582da58b896a', 0, '2017-04-26 04:01:26', 0),
('95c156d5-b6be-1174-100d-59001b7fda24', '5e989a55-4600-6083-df0f-590019e937eb', 'd67637f7-966a-047b-8471-582da575db21', 0, '2017-04-26 04:01:26', 0),
('95f9020b-f5c5-ce60-b284-59001bdfab12', '5e989a55-4600-6083-df0f-590019e937eb', '7ae7501e-488f-6c7d-8021-582da5690c4e', 0, '2017-04-26 04:01:26', 0),
('96258daf-c89f-d2dc-f0ac-59001b50c6e4', '5e989a55-4600-6083-df0f-590019e937eb', '67299b68-a6ac-da1f-9046-582da5ffeb0a', 0, '2017-04-26 04:01:26', 0),
('964c4d65-d69c-45c5-bb3a-59001bbdf196', '5e989a55-4600-6083-df0f-590019e937eb', '885e12a1-0ac4-60f9-48ce-582da50aa088', 0, '2017-04-26 04:01:26', 0),
('967d8735-c478-a34c-ad6b-59001b8a9131', '5e989a55-4600-6083-df0f-590019e937eb', '7f93d6f4-4f0d-7ed2-11c7-582da5e01c83', 0, '2017-04-26 04:01:26', 0),
('96acb928-5ddd-cc9f-ef02-59001bdc46a3', '5e989a55-4600-6083-df0f-590019e937eb', '987b4cf6-666a-61c9-8284-582da550b791', 0, '2017-04-26 04:01:26', 0),
('96d0f1e8-c505-b35c-ed85-59001bd4d972', '5e989a55-4600-6083-df0f-590019e937eb', '902e2185-0ccf-2998-4690-582da521a5d4', 0, '2017-04-26 04:01:26', 0),
('972fd325-9185-798b-a672-59001b0f7401', '5e989a55-4600-6083-df0f-590019e937eb', '780258c7-5cdb-436a-d5e9-582da59427c2', 0, '2017-04-26 04:01:26', 0),
('9760ced6-a8a3-9967-c393-59001bc57373', '5e989a55-4600-6083-df0f-590019e937eb', 'd19d2735-f2aa-3d75-e1c8-582da5fcb62c', 0, '2017-04-26 04:01:26', 0),
('9785ab11-eb1c-dd54-0890-59001b26a031', '5e989a55-4600-6083-df0f-590019e937eb', '6f76b741-de26-0bc2-3645-582da5d7d72a', 0, '2017-04-26 04:01:26', 0),
('97b62b4e-b167-e95c-0766-59001b4c72ce', '5e989a55-4600-6083-df0f-590019e937eb', '6756333c-1310-d93d-32c5-582da5939c32', 0, '2017-04-26 04:01:26', 0),
('97e61afd-2ffc-cede-4a9c-59001bbf014c', '5e989a55-4600-6083-df0f-590019e937eb', 'ce400f33-fee4-c5a7-af61-582da5eb27a0', 0, '2017-04-26 04:01:26', 0),
('98103b3e-bd1b-07a9-65c0-59001bc8373a', '5e989a55-4600-6083-df0f-590019e937eb', '9c12fcf6-615c-aa0d-3dc9-582da51f2ddb', 0, '2017-04-26 04:01:26', 0),
('983d69eb-156d-26d6-8ff0-59001bc3d6c5', '5e989a55-4600-6083-df0f-590019e937eb', '4104bf0b-6949-41fc-006d-582da5a8e619', 0, '2017-04-26 04:01:26', 0),
('986effea-c63b-87b4-c698-59001bf5be41', '5e989a55-4600-6083-df0f-590019e937eb', '214744fb-27a2-14df-051c-582da5e26da0', 0, '2017-04-26 04:01:26', 0),
('98a8bca1-8dfe-e65d-c8bd-59001bdd93f3', '5e989a55-4600-6083-df0f-590019e937eb', '82ed166a-a3df-9b0d-fc78-582da5a95f35', 0, '2017-04-26 04:01:26', 0),
('98d936c9-7bb3-b5b3-f615-59001bc13361', '5e989a55-4600-6083-df0f-590019e937eb', '56bf8466-e2c6-78d7-630c-582da5444d50', 0, '2017-04-26 04:01:26', 0),
('99064e55-2c28-2de9-5428-59001bce78f5', '5e989a55-4600-6083-df0f-590019e937eb', '757f647f-964e-040c-ab43-582da50bf296', 0, '2017-04-26 04:01:26', 0),
('993c8ee6-bc1a-0caa-d808-59001b286135', '5e989a55-4600-6083-df0f-590019e937eb', '1820484a-5aa0-1a00-cc0a-582da5f9f999', 0, '2017-04-26 04:01:26', 0),
('997789f5-c910-ece9-5d1e-59001b97a1f0', '5e989a55-4600-6083-df0f-590019e937eb', '41636b07-75a0-0fcd-faa6-582da57de6e7', 0, '2017-04-26 04:01:26', 0),
('99aad184-6f8c-7955-3d3b-59001b596db7', '5e989a55-4600-6083-df0f-590019e937eb', '3993465a-3718-8b02-f76b-582da5cfec2d', 0, '2017-04-26 04:01:26', 0),
('99d92dbd-6d1e-fa6e-9f8e-59001b561199', '5e989a55-4600-6083-df0f-590019e937eb', '5180ac09-6dfa-aa4f-d83e-582da55796dd', 0, '2017-04-26 04:01:26', 0),
('99fa8202-4fd0-91f2-2374-59001b614a70', '5e989a55-4600-6083-df0f-590019e937eb', '49ef08e9-8cc0-48af-e8e7-582da5f3a2b6', 0, '2017-04-26 04:01:26', 0),
('9a30870d-5c4e-46ac-2628-59001b34d987', '5e989a55-4600-6083-df0f-590019e937eb', '3107a9bb-2573-9b6f-e1df-582da582c668', 0, '2017-04-26 04:01:26', 0),
('9a6d740d-ec16-a295-1eda-59001b74d895', '5e989a55-4600-6083-df0f-590019e937eb', '5cbbc46a-6695-3763-1f38-582da5cb1a16', 0, '2017-04-26 04:01:26', 0),
('9aa2bb30-6af4-571f-204f-59001be0e8a3', '5e989a55-4600-6083-df0f-590019e937eb', '29760cdd-a230-8464-fdf0-582da5194321', 0, '2017-04-26 04:01:26', 0),
('9ad385d6-31b2-78cb-b101-59001bbfbb44', '5e989a55-4600-6083-df0f-590019e937eb', 'd382fef0-35fc-5856-b11f-582da503d19e', 0, '2017-04-26 04:01:26', 0),
('9af6581e-b685-8984-85a1-59001b056c86', '5e989a55-4600-6083-df0f-590019e937eb', '2ef72929-7bf6-d7e1-8755-582da5e99fc0', 0, '2017-04-26 04:01:26', 0),
('9b2596af-d688-323b-3148-59001b53321e', '5e989a55-4600-6083-df0f-590019e937eb', '1f186e94-97c4-9a03-517a-582da5df3015', 0, '2017-04-26 04:01:26', 0),
('9b55971a-9a9a-1862-ebb4-59001b37156e', '5e989a55-4600-6083-df0f-590019e937eb', '41856e17-4570-3f89-8efa-582da53bb41a', 0, '2017-04-26 04:01:26', 0),
('9ba9229b-a148-4715-193a-59001bec33fc', '5e989a55-4600-6083-df0f-590019e937eb', '37444688-9b08-56c9-4fa7-582da5bcf033', 0, '2017-04-26 04:01:26', 0),
('9be4061f-2783-2ffd-8b60-59001b403abc', '5e989a55-4600-6083-df0f-590019e937eb', 'e45bba8f-bf13-a53a-23cf-582da52750b4', 0, '2017-04-26 04:01:26', 0),
('9c18c12d-d498-ad40-44a1-59001b26c4fc', '5e989a55-4600-6083-df0f-590019e937eb', '679bf41f-807c-c43c-e001-582da5a605eb', 0, '2017-04-26 04:01:26', 0),
('9c466bdc-22fd-98a0-98c4-59001bd461c5', '5e989a55-4600-6083-df0f-590019e937eb', 'dc8b9d0a-ba60-1573-9c8b-582da5ed38a7', 0, '2017-04-26 04:01:26', 0),
('9c6b63e9-b51c-265b-e052-59001b04a3bf', '5e989a55-4600-6083-df0f-590019e937eb', '52336fc5-0d19-2dbe-cd6f-582da592e533', 0, '2017-04-26 04:01:26', 0),
('9c9814e4-a264-649a-af53-59001b18ae75', '5e989a55-4600-6083-df0f-590019e937eb', '9557d9c5-a610-77f9-4583-582da54bbeb1', 0, '2017-04-26 04:01:26', 0),
('9cc78d0b-db9f-8f4f-423f-59001ba4be08', '5e989a55-4600-6083-df0f-590019e937eb', '7fdb7d90-dd24-7858-51fc-582da5cfc80a', 0, '2017-04-26 04:01:26', 0),
('9d036955-c6ce-00f6-48b2-59001bb24c7b', '5e989a55-4600-6083-df0f-590019e937eb', 'ac89b05e-d71a-a05a-fb11-582da541fdfd', 0, '2017-04-26 04:01:26', 0),
('9d294572-0e61-4892-4164-59001b3d381b', '5e989a55-4600-6083-df0f-590019e937eb', 'a3041194-b984-9854-430a-582da5aa53d0', 0, '2017-04-26 04:01:26', 0),
('9d5d1501-aa71-ee2e-69bd-59001bac9e08', '5e989a55-4600-6083-df0f-590019e937eb', '76176991-33bc-7fdc-6bfe-582da56803d6', 0, '2017-04-26 04:01:26', 0),
('9d964d8a-d74f-6ee4-1537-59001b1ca77b', '5e989a55-4600-6083-df0f-590019e937eb', 'b8fd6b55-707d-8a3d-c3c3-582da5dd91aa', 0, '2017-04-26 04:01:26', 0),
('9dccfd03-b4d5-0ead-c012-59001bd0b4fb', '5e989a55-4600-6083-df0f-590019e937eb', '6d0ec633-9040-961e-0eee-582da5ee0dd3', 0, '2017-04-26 04:01:26', 0),
('9dfaf9cb-2172-2d81-63ea-59001bff7047', '5e989a55-4600-6083-df0f-590019e937eb', '858a88eb-62b3-60eb-33ee-582da5a182ce', 0, '2017-04-26 04:01:26', 0),
('9e210843-a1e2-e78c-8228-59001bf36215', '5e989a55-4600-6083-df0f-590019e937eb', 'b1bbad7f-7a8a-e345-93fb-582da5c646b6', 0, '2017-04-26 04:01:26', 0),
('9e58738d-3c84-2fd9-312d-59001b1e5290', '5e989a55-4600-6083-df0f-590019e937eb', 'a9300627-c6eb-6b4b-989b-582da5339813', 0, '2017-04-26 04:01:26', 0),
('9e92f5a2-539b-f083-b74f-59001b4c6cf3', '5e989a55-4600-6083-df0f-590019e937eb', 'ca260e65-a53f-bbf3-a175-582da5e52e6a', 0, '2017-04-26 04:01:26', 0),
('9ec9fc99-1b25-1f5d-dba4-59001b0fc20e', '5e989a55-4600-6083-df0f-590019e937eb', 'bbfcd366-2d13-837a-f831-582da5050293', 0, '2017-04-26 04:01:26', 0),
('9ef61698-282d-b15e-2510-59001b937d90', '5e989a55-4600-6083-df0f-590019e937eb', '98d45b7f-5439-539d-98df-582da5eec9db', 0, '2017-04-26 04:01:26', 0),
('9f1bc7e3-35df-0fd8-4582-59001b3f6074', '5e989a55-4600-6083-df0f-590019e937eb', 'd4673a8b-ad36-36b9-4b9c-582da5a23599', 0, '2017-04-26 04:01:26', 0),
('9f5170cf-6728-f718-952f-59001bc6772f', '5e989a55-4600-6083-df0f-590019e937eb', '8ed1a433-8822-b114-4592-582da552c644', 0, '2017-04-26 04:01:26', 0),
('9f918486-d79d-c3d9-e055-59001be4af09', '5e989a55-4600-6083-df0f-590019e937eb', '59a4b991-cf1b-d162-1f9b-582da53218e6', 0, '2017-04-26 04:01:26', 0),
('9fc9553a-2dd1-7c06-30bb-59001b710b15', '5e989a55-4600-6083-df0f-590019e937eb', 'cba9d90b-ef4f-4d54-ad39-582da5eee78b', 0, '2017-04-26 04:01:26', 0),
('9ffef9f1-dec2-cdd5-c1e9-59001b729ae2', '5e989a55-4600-6083-df0f-590019e937eb', 'bad12ba4-70d3-a666-c0a4-582da5df3b06', 0, '2017-04-26 04:01:26', 0),
('a0343b0b-00be-6745-ccf8-59001bb25710', '5e989a55-4600-6083-df0f-590019e937eb', 'ef8de57d-38aa-133d-e79c-582da56757b4', 0, '2017-04-26 04:01:26', 0),
('a06e29d8-b3bc-3528-ea55-59001b6215c1', '5e989a55-4600-6083-df0f-590019e937eb', 'e491318a-c25c-1134-37ef-582da5ade772', 0, '2017-04-26 04:01:26', 0),
('a0966e22-1d1f-48ae-f6c8-59001b7e50c1', '5e989a55-4600-6083-df0f-590019e937eb', 'ac6962d9-3631-0e3b-8dcb-582da5d02b7a', 0, '2017-04-26 04:01:26', 0),
('a0c92e28-6a74-4c3c-7aba-59001be06dbf', '5e989a55-4600-6083-df0f-590019e937eb', '23b2fe3d-c726-853b-c2f3-582da513a55c', 0, '2017-04-26 04:01:26', 0),
('a0fee4bb-6f54-abad-dd1b-59001b18a274', '5e989a55-4600-6083-df0f-590019e937eb', '98a298f3-c73f-87ec-0044-582da5a6f2db', 0, '2017-04-26 04:01:26', 0),
('a132c6d4-aefd-fc9e-7034-59001b4ee818', '5e989a55-4600-6083-df0f-590019e937eb', 'e3c5b011-6163-f60a-3c93-582da526a96e', 0, '2017-04-26 04:01:26', 0),
('a162e35b-f7bb-240b-e5d1-59001b64b38d', '5e989a55-4600-6083-df0f-590019e937eb', 'a1e0e91c-aecd-8e34-b1ba-582da5d817a7', 0, '2017-04-26 04:01:26', 0),
('a19357e8-b5e3-91a4-a57a-59001b70ff09', '5e989a55-4600-6083-df0f-590019e937eb', '2f20344a-1279-5a47-3dff-582da548454b', 0, '2017-04-26 04:01:26', 0),
('a1c44aaa-6fc2-92ca-70ae-59001bf1f1ef', '5e989a55-4600-6083-df0f-590019e937eb', 'd6dc2f0f-03e3-5fd2-b6bc-582da506163b', 0, '2017-04-26 04:01:26', 0),
('a1f49763-f887-c4ce-65c4-59001bb61e3c', '5e989a55-4600-6083-df0f-590019e937eb', 'c02753e6-3176-93ce-6b63-582da5e4be38', 0, '2017-04-26 04:01:26', 0),
('a22323ba-674a-a741-1f6c-59001b9e6732', '5e989a55-4600-6083-df0f-590019e937eb', 'a0a4c951-42f3-c0c5-5adf-582da50cc2f8', 0, '2017-04-26 04:01:26', 0),
('a2453f85-aa5a-7137-fa08-59001b562ded', '5e989a55-4600-6083-df0f-590019e937eb', 'ed13fe61-9789-772f-2ea1-582da5779c11', 0, '2017-04-26 04:01:26', 0),
('a27f03d4-75e3-ea7b-8cdb-59001b119412', '5e989a55-4600-6083-df0f-590019e937eb', '7c43ceff-b498-43b8-7cad-582da59d7b63', 0, '2017-04-26 04:01:26', 0),
('a2b6114e-a76c-7b6b-bcf7-59001bb5e114', '5e989a55-4600-6083-df0f-590019e937eb', '1a582db2-fa65-1ef0-f52e-582da5d4cc70', 0, '2017-04-26 04:01:26', 0),
('a2e9004e-db51-f2a4-e466-59001b5c1247', '5e989a55-4600-6083-df0f-590019e937eb', '43d9b43f-d448-5139-9a59-582da5009227', 0, '2017-04-26 04:01:26', 0),
('a3436da0-37ea-247e-3925-59001b17d55f', '5e989a55-4600-6083-df0f-590019e937eb', '343982c6-0362-4cc4-fc9c-582da5239bdb', 0, '2017-04-26 04:01:26', 0),
('a37949b7-3124-e1ed-4cd6-59001bfa292c', '5e989a55-4600-6083-df0f-590019e937eb', '5eb526da-5d44-5b99-9840-582da57326f1', 0, '2017-04-26 04:01:26', 0),
('a3adc679-f0e5-8141-a8ae-59001b0eaa3b', '5e989a55-4600-6083-df0f-590019e937eb', '4f5363ca-13f9-4062-92f2-582da53fe958', 0, '2017-04-26 04:01:26', 0),
('a40a148b-3007-5651-bc08-59001b2b45a7', '5e989a55-4600-6083-df0f-590019e937eb', '2b30e231-7679-1376-443e-582da59780eb', 0, '2017-04-26 04:01:26', 0),
('a440f356-b4c8-cc52-c44e-59001b24a31c', '5e989a55-4600-6083-df0f-590019e937eb', '67fc40b4-1ba1-f5ac-99d0-582da5abccbe', 0, '2017-04-26 04:01:26', 0),
('a4725dc7-b3a7-0e2b-1da6-59001b6639d3', '5e989a55-4600-6083-df0f-590019e937eb', '24d7cb8d-90f1-9d20-70ee-582da50469e1', 0, '2017-04-26 04:01:26', 0),
('a4a26444-c911-87f0-f57a-59001b668556', '5e989a55-4600-6083-df0f-590019e937eb', '2668eba7-4a32-58d1-2a7d-582e68250811', 0, '2017-04-26 04:01:26', 0),
('a4cf8fb7-21a7-76f7-7d75-59001bf1e7b3', '5e989a55-4600-6083-df0f-590019e937eb', '8b86d819-4229-237d-bf3f-582e68a1bd0b', 0, '2017-04-26 04:01:26', 0),
('a4f23c15-c6a3-eb2f-d5fd-59001be754f1', '5e989a55-4600-6083-df0f-590019e937eb', '770591b2-b486-5a36-f5d5-582e687e479c', 0, '2017-04-26 04:01:26', 0),
('a5331e75-ace7-68e0-e72a-59001b517fcf', '5e989a55-4600-6083-df0f-590019e937eb', 'b00b8ada-5506-d7f8-98af-582e68e6f77c', 0, '2017-04-26 04:01:26', 0),
('a5655f0a-3c33-9ce4-60a0-59001b03d746', '5e989a55-4600-6083-df0f-590019e937eb', 'a1b16614-4e03-3423-617c-582e68592fae', 0, '2017-04-26 04:01:26', 0),
('a595eff4-1a82-d911-83b8-59001bbce4fc', '5e989a55-4600-6083-df0f-590019e937eb', '668f0a7e-fdbe-4f15-cae2-582e680e86ca', 0, '2017-04-26 04:01:26', 0),
('a5ca06d3-a0ac-f88a-0c2c-59001ba6d3c2', '5e989a55-4600-6083-df0f-590019e937eb', 'c07b083c-1554-e147-1860-582e68f9843a', 0, '2017-04-26 04:01:26', 0),
('a5f45161-6a77-42d1-3c3d-59001bc2c6b3', '5e989a55-4600-6083-df0f-590019e937eb', '55fb1975-2deb-6f9c-4266-582e68429fc0', 0, '2017-04-26 04:01:26', 0),
('a62889de-8764-b2ab-85b6-59001b90552c', '5e989a55-4600-6083-df0f-590019e937eb', '9336d3cc-9bed-e78e-f19f-582da59ca00d', 0, '2017-04-26 04:01:26', 0),
('a66c8ed2-b2c8-55ce-a753-59001bf9c652', '5e989a55-4600-6083-df0f-590019e937eb', '6553c50e-a004-efda-47e0-582da5f019ce', 0, '2017-04-26 04:01:26', 0),
('a6e540fa-d481-2496-1524-59001bd263b6', '5e989a55-4600-6083-df0f-590019e937eb', '4f98fea7-6ffb-9d07-338f-582da5e41773', 0, '2017-04-26 04:01:26', 0),
('a71fec97-c147-149c-81a4-59001b8c1ffc', '5e989a55-4600-6083-df0f-590019e937eb', 'cc5c4f33-a27e-5f77-dda9-582da5252fdd', 0, '2017-04-26 04:01:26', 0),
('a759ae86-435e-b963-a90e-59001bb547e3', '5e989a55-4600-6083-df0f-590019e937eb', '70cd6d77-3208-fcb7-c32b-582da50a2777', 0, '2017-04-26 04:01:26', 0),
('a7910ef6-c6cf-9f31-07dc-59001b027225', '5e989a55-4600-6083-df0f-590019e937eb', '37ea1f03-ab5b-3bc5-9df6-582da5065e9e', 0, '2017-04-26 04:01:26', 0),
('a7c273e8-58e1-431d-04a2-59001bc179c1', '5e989a55-4600-6083-df0f-590019e937eb', 'ecd5362f-00b3-c3f3-6c7f-582da5435b50', 0, '2017-04-26 04:01:26', 0),
('a7e8b8ed-af27-f10c-c0b6-59001b32b3ff', '5e989a55-4600-6083-df0f-590019e937eb', '23e4c4e2-a2a7-fc43-c33a-582da59a5019', 0, '2017-04-26 04:01:26', 0),
('a8218eac-56db-7a4c-d747-59001bb14228', '5e989a55-4600-6083-df0f-590019e937eb', 'b2b9befe-b8d6-cc6e-64d6-582da5596432', 0, '2017-04-26 04:01:26', 0),
('a857379c-82a8-d331-88e2-59001b786fa3', '5e989a55-4600-6083-df0f-590019e937eb', '7574ea4f-0c79-7679-a45a-582da5392489', 0, '2017-04-26 04:01:26', 0),
('a88d9cff-dc8c-e779-6f41-59001b523b4c', '5e989a55-4600-6083-df0f-590019e937eb', '4e25d000-8205-90ab-9ce8-582da52316e2', 0, '2017-04-26 04:01:26', 0),
('a8c04737-ddda-89e8-a723-59001b24a511', '5e989a55-4600-6083-df0f-590019e937eb', 'a9b4b506-4730-9d19-2175-582da5e5b47b', 0, '2017-04-26 04:01:26', 0),
('a8f37cc6-c1ec-67ad-13cf-59001bf00b91', '5e989a55-4600-6083-df0f-590019e937eb', '98dbfc47-4e81-711b-2b1f-582da5947386', 0, '2017-04-26 04:01:26', 0),
('a9170cc0-bf40-9ca4-1eb5-59001b91db37', '5e989a55-4600-6083-df0f-590019e937eb', 'cdd3a521-c1e5-a6f1-a7d2-582da5a76541', 0, '2017-04-26 04:01:26', 0),
('a95719f6-9acd-b63f-ce90-59001b2bea9b', '5e989a55-4600-6083-df0f-590019e937eb', 'bcbffcb9-427e-e65e-a787-582da5e07856', 0, '2017-04-26 04:01:26', 0),
('a99326c7-963b-35fa-f99a-59001b5785b0', '5e989a55-4600-6083-df0f-590019e937eb', 'bf6be33b-ca34-91fb-2cc7-582da5c8e94a', 0, '2017-04-26 04:01:26', 0),
('a9cfc117-5a51-e1de-b450-59001b30ee9b', '5e989a55-4600-6083-df0f-590019e937eb', '71a97d6b-1ba8-a708-85da-582da5c78bd6', 0, '2017-04-26 04:01:26', 0),
('aa0ef044-8735-643d-6d57-59001b6c6b36', '5e989a55-4600-6083-df0f-590019e937eb', '9d9c19b7-e6dd-b5c2-b2d1-582da5b30046', 0, '2017-04-26 04:01:26', 0),
('aa550e8e-52e2-e928-1344-59001badafcf', '5e989a55-4600-6083-df0f-590019e937eb', '9454f404-1215-f0b3-7d17-582da5168456', 0, '2017-04-26 04:01:26', 0),
('aa86a388-ca63-2e29-18ec-59001b2f9674', '5e989a55-4600-6083-df0f-590019e937eb', 'b395660d-f527-3911-fb28-582da5d56e7c', 0, '2017-04-26 04:01:26', 0),
('aab90f0d-eb30-47b8-7fc1-59001b519312', '5e989a55-4600-6083-df0f-590019e937eb', 'aa0fc680-13cb-aa45-f1b0-582da56ef1f2', 0, '2017-04-26 04:01:26', 0),
('aaec8c2c-4868-6c45-4323-59001b108902', '5e989a55-4600-6083-df0f-590019e937eb', '881fcc34-34fb-fd1c-00c2-582da5b0f786', 0, '2017-04-26 04:01:26', 0),
('ab152d00-2b54-41d0-f7e3-59001bc4695e', '5e989a55-4600-6083-df0f-590019e937eb', 'c911b364-1b21-d155-af2f-582da5a04e08', 0, '2017-04-26 04:01:26', 0),
('ab4a7281-152c-13d9-8790-59001bda1698', '5e989a55-4600-6083-df0f-590019e937eb', '7ed89846-a388-ee12-8114-582da570000c', 0, '2017-04-26 04:01:26', 0),
('ab80b163-bbdd-8b84-016a-59001be9b097', '5e989a55-4600-6083-df0f-590019e937eb', '8a01f69b-1f6c-dfbd-4346-582da5ea5d7e', 0, '2017-04-26 04:01:26', 0),
('abb7f40a-bcc0-34ad-cc12-59001bd54521', '5e989a55-4600-6083-df0f-590019e937eb', 'c0743234-6616-881e-25f1-582da51c98e9', 0, '2017-04-26 04:01:26', 0),
('abf1cbe8-acc4-d6dc-590a-59001be63b32', '5e989a55-4600-6083-df0f-590019e937eb', 'aedff244-8897-f56a-8ccc-582da56a7321', 0, '2017-04-26 04:01:26', 0),
('ac27ccf1-d5e4-05e3-2f80-59001b442528', '5e989a55-4600-6083-df0f-590019e937eb', 'b8693ed9-56c4-5043-c008-582da564bac2', 0, '2017-04-26 04:01:26', 0),
('ac4c34eb-9cd2-0e99-bd5c-59001b22fe2c', '5e989a55-4600-6083-df0f-590019e937eb', 'd5350f02-d037-7110-c5e9-582da52492d9', 0, '2017-04-26 04:01:26', 0),
('ac8388b9-560e-eb1e-1987-59001b5c79b8', '5e989a55-4600-6083-df0f-590019e937eb', 'a49ed60f-0d68-2819-2e53-582da5de7e8b', 0, '2017-04-26 04:01:26', 0),
('acbc5fbe-2be4-95e7-f14b-59001bd29f85', '5e989a55-4600-6083-df0f-590019e937eb', 'e3a051d5-6c98-3ccb-e3e1-582da51f5ee7', 0, '2017-04-26 04:01:26', 0),
('acf85677-9b4e-5657-6d66-59001b1f627e', '5e989a55-4600-6083-df0f-590019e937eb', '9b193410-5714-7b50-79e5-582da5308279', 0, '2017-04-26 04:01:26', 0),
('ad325487-9048-5b0c-b999-59001b3908d4', '5e989a55-4600-6083-df0f-590019e937eb', '5be77ee7-cd0a-e0d8-b291-582da5cf05aa', 0, '2017-04-26 04:01:26', 0),
('ad6dd8d1-4837-1f29-90e0-59001ba37e1d', '5e989a55-4600-6083-df0f-590019e937eb', '9835e5f8-d7a2-2b42-13de-582da53ca209', 0, '2017-04-26 04:01:26', 0),
('ada7fd3a-0171-88fe-6cc9-59001b5d4706', '5e989a55-4600-6083-df0f-590019e937eb', '8a89ae50-667f-0fc3-ccb8-582da53ed92b', 0, '2017-04-26 04:01:26', 0),
('ade1bdb7-8e76-1af0-17a7-59001b5c3b0e', '5e989a55-4600-6083-df0f-590019e937eb', 'cbba209b-ef64-5c20-12ce-582da517806a', 0, '2017-04-26 04:01:26', 0),
('ae1b612b-aefd-6680-6fd1-59001b987915', '5e989a55-4600-6083-df0f-590019e937eb', 'a1bb8ca6-ec5c-0a27-ea97-582da5cbbf7a', 0, '2017-04-26 04:01:26', 0),
('ae50d605-493a-3e26-362f-59001bbf6a63', '5e989a55-4600-6083-df0f-590019e937eb', '750d542b-9400-e46b-3e30-582da54904b7', 0, '2017-04-26 04:01:26', 0),
('ae8c53a6-6904-62d7-7e9a-59001be3d1e7', '5e989a55-4600-6083-df0f-590019e937eb', '86ad03cd-a8d1-9cdc-a63f-582da503bfe3', 0, '2017-04-26 04:01:26', 0),
('aec364d0-7196-fd57-f5cc-59001bd5549c', '5e989a55-4600-6083-df0f-590019e937eb', '65ea234e-b13a-3499-9af8-582da5692668', 0, '2017-04-26 04:01:26', 0),
('aefc9f77-877e-05d6-5830-59001b6e3244', '5e989a55-4600-6083-df0f-590019e937eb', '4f168e0a-bbe1-c910-2c81-582da5356c5a', 0, '2017-04-26 04:01:26', 0),
('af3029fd-3fd8-d8f6-e257-59001bdf62dc', '5e989a55-4600-6083-df0f-590019e937eb', '8317c5f6-77bc-2fbb-b40a-582da57a0077', 0, '2017-04-26 04:01:26', 0),
('af73caaa-b953-fdf1-6ef2-59001bdeb327', '5e989a55-4600-6083-df0f-590019e937eb', '756b95c1-6b1f-9c33-ca8e-582da538c69d', 0, '2017-04-26 04:01:26', 0),
('afae079a-820d-24ef-6294-59001bbbe197', '5e989a55-4600-6083-df0f-590019e937eb', 'af48e710-dab3-a21f-bd74-582da5033bf5', 0, '2017-04-26 04:01:26', 0),
('afec3df5-9299-a745-3ac4-59001b01f4bc', '5e989a55-4600-6083-df0f-590019e937eb', '8ae7ec00-32ad-0f2c-ecd9-582da521b4ea', 0, '2017-04-26 04:01:26', 0),
('b02c4dfe-9e33-ddd2-ae16-59001bbd76a6', '5e989a55-4600-6083-df0f-590019e937eb', '6780d123-425c-2162-8dac-582da5b56434', 0, '2017-04-26 04:01:26', 0),
('b06780e6-24bd-816e-6c0a-59001b1b2dfa', '5e989a55-4600-6083-df0f-590019e937eb', 'cf066f92-14ac-1d1a-083e-582da5b84128', 0, '2017-04-26 04:01:26', 0),
('b0a19b17-30eb-2d37-2271-59001bcf000d', '5e989a55-4600-6083-df0f-590019e937eb', '602dc6a3-d5ee-2b81-7b85-582da579aa4f', 0, '2017-04-26 04:01:26', 0),
('b0dea6c0-ace9-dd57-8764-59001b25c8aa', '5e989a55-4600-6083-df0f-590019e937eb', 'a6376f21-5eab-a8a3-8cb2-582da55bc8e9', 0, '2017-04-26 04:01:26', 0),
('b14551bf-b83f-7c4a-b99b-59001b4e004c', '5e989a55-4600-6083-df0f-590019e937eb', 'e5dc01c5-8778-25f7-4178-582da547f42f', 0, '2017-04-26 04:01:26', 0),
('b1aa831c-390a-3b09-665e-59001bf734ab', '5e989a55-4600-6083-df0f-590019e937eb', 'e2c44cf5-7365-ee7f-8945-582da53e1f51', 0, '2017-04-26 04:01:26', 0),
('b1e3823b-7cb1-b44b-dca7-59001bbecfaa', '5e989a55-4600-6083-df0f-590019e937eb', '2f1539f4-6671-a3aa-b452-582da51b612c', 0, '2017-04-26 04:01:26', 0),
('b21b5378-941a-3e24-947f-59001bcca2ac', '5e989a55-4600-6083-df0f-590019e937eb', '1eb97fd3-2ab5-f087-93c7-582da593fe26', 0, '2017-04-26 04:01:26', 0),
('b255d166-5a26-0abf-ee60-59001bed85eb', '5e989a55-4600-6083-df0f-590019e937eb', 'cc8c7538-4727-842b-8f8c-582da5b753e6', 0, '2017-04-26 04:01:26', 0),
('b29d5550-bc65-73a3-8de9-59001b6d6199', '5e989a55-4600-6083-df0f-590019e937eb', '3c82f547-991c-d5bc-ec4a-582da5b154b2', 0, '2017-04-26 04:01:26', 0),
('b2d94d14-2a99-7e2b-b146-59001b1eac7d', '5e989a55-4600-6083-df0f-590019e937eb', 'bf1ec2dd-d616-4288-ffc0-582da5ece9ca', 0, '2017-04-26 04:01:26', 0),
('b334d5dc-f608-10e7-4dec-59001b5e67cb', '5e989a55-4600-6083-df0f-590019e937eb', 'df8975e4-0a15-0d59-4629-582da5a67097', 0, '2017-04-26 04:01:26', 0),
('b399b30d-4602-02f3-9d47-59001b587645', '5e989a55-4600-6083-df0f-590019e937eb', '169c948d-dd72-cc7a-f880-582da5e64d35', 0, '2017-04-26 04:01:26', 0),
('b3ca35c3-4142-bad9-bbbb-59001b046447', '5e989a55-4600-6083-df0f-590019e937eb', 'c5b60296-0ddb-9697-0cc0-582da50cbc52', 0, '2017-04-26 04:01:26', 0),
('b3f7c705-62d3-1ce5-fe26-59001ba960bf', '5e989a55-4600-6083-df0f-590019e937eb', '31f4fab5-5d26-a1c5-8d51-582da509b6a1', 0, '2017-04-26 04:01:26', 0),
('b41d146d-8617-4159-dc9e-59001b59c5d1', '5e989a55-4600-6083-df0f-590019e937eb', '1f2836b7-cef8-1f14-4f52-582da5a6bc64', 0, '2017-04-26 04:01:26', 0),
('b44d182a-643d-3b7a-1fc5-59001b3531a4', '5e989a55-4600-6083-df0f-590019e937eb', 'f2d332c5-d13d-a987-8458-582da50e7727', 0, '2017-04-26 04:01:26', 0),
('b4864b79-76e2-03d6-e4b9-59001b25b0c2', '5e989a55-4600-6083-df0f-590019e937eb', '428f3c95-7e28-47ac-19ca-582da51f0f06', 0, '2017-04-26 04:01:26', 0),
('b4be0b33-d83b-5131-e97c-59001b65bc62', '5e989a55-4600-6083-df0f-590019e937eb', 'ea47933c-a9ad-cb36-0b5e-582da5cfc886', 0, '2017-04-26 04:01:26', 0),
('b4f48e35-b90f-13fb-7be5-59001bba4b7c', '5e989a55-4600-6083-df0f-590019e937eb', '165564ab-69b6-897c-1f47-582da59365cd', 0, '2017-04-26 04:01:26', 0),
('b5293269-29db-2113-fb09-59001bdcce7e', '5e989a55-4600-6083-df0f-590019e937eb', '54d65e90-3113-20cc-0915-582da5112336', 0, '2017-04-26 04:01:26', 0),
('b54feae2-8e74-838b-50b9-59001b067901', '5e989a55-4600-6083-df0f-590019e937eb', '42099f91-540d-1d59-81f9-582da506f557', 0, '2017-04-26 04:01:26', 0),
('b589778b-7702-b7ff-550e-59001ba40c15', '5e989a55-4600-6083-df0f-590019e937eb', 'a1bef257-bf97-7b2d-3184-582da53debc6', 0, '2017-04-26 04:01:26', 0),
('b5c116dc-e626-6ca0-483d-59001b26b219', '5e989a55-4600-6083-df0f-590019e937eb', '8eb3b4ec-1f28-06da-53d4-582da5f3b94b', 0, '2017-04-26 04:01:26', 0),
('b5fb8c00-63d0-7a37-fd78-59001bf82429', '5e989a55-4600-6083-df0f-590019e937eb', '31add6a6-6282-ce11-cf93-582da508f327', 0, '2017-04-26 04:01:26', 0),
('b633b2dc-b864-2d55-218c-59001b04e740', '5e989a55-4600-6083-df0f-590019e937eb', 'b779c5dc-fa76-93a7-9333-582da5ece8b9', 0, '2017-04-26 04:01:26', 0),
('b6643317-6dc9-98c1-2f4d-59001b60fe80', '5e989a55-4600-6083-df0f-590019e937eb', '215217f0-d056-6715-6047-582da58de063', 0, '2017-04-26 04:01:26', 0),
('b6874e7f-8766-4a49-41a5-59001b282577', '5e989a55-4600-6083-df0f-590019e937eb', '2e911934-5a00-74ba-7781-582da519975d', 0, '2017-04-26 04:01:26', 0),
('b6bebe29-d5f0-8632-9a15-59001bbc9b6f', '5e989a55-4600-6083-df0f-590019e937eb', '6b5c766c-33c3-7e31-a458-582da5ac47d4', 0, '2017-04-26 04:01:26', 0),
('b6f62ce2-a9aa-91fa-ec91-59001b328567', '5e989a55-4600-6083-df0f-590019e937eb', '60dcd96b-8f5e-adce-062b-582da5c09af9', 0, '2017-04-26 04:01:26', 0),
('b751a3e2-3e75-e25e-be77-59001b45ad94', '5e989a55-4600-6083-df0f-590019e937eb', '946113f9-5544-3a0c-92a5-582da50e875b', 0, '2017-04-26 04:01:26', 0),
('b78eb155-1668-ba1f-e969-59001b20282c', '5e989a55-4600-6083-df0f-590019e937eb', '7ee4c6c3-e37c-920f-c207-582da55e007a', 0, '2017-04-26 04:01:26', 0),
('b7c5b9a9-30f4-6eb0-718c-59001b12ed3d', '5e989a55-4600-6083-df0f-590019e937eb', '4d160038-9756-cbfa-f2b9-582da5572d19', 0, '2017-04-26 04:01:26', 0),
('b7feeb73-9e67-0704-51dd-59001bea8ed2', '5e989a55-4600-6083-df0f-590019e937eb', 'b45d0d3e-2672-916c-d2ef-582da55d1d8f', 0, '2017-04-26 04:01:26', 0),
('b83500a2-ec0b-97ba-a5b8-59001b4d57f9', '5e989a55-4600-6083-df0f-590019e937eb', '37d83639-87bd-3183-d20d-582da54cbd71', 0, '2017-04-26 04:01:26', 0),
('b86b8f19-3d33-c9a9-f721-59001b98850c', '5e989a55-4600-6083-df0f-590019e937eb', '5c74461c-4a1e-e091-bb78-582da525439a', 0, '2017-04-26 04:01:26', 0),
('b8a0b0e7-faa2-27b6-beba-59001bcc5485', '5e989a55-4600-6083-df0f-590019e937eb', '99012715-e713-ad48-ced9-582da5f822b8', 0, '2017-04-26 04:01:26', 0),
('b8d481c1-384e-012d-3ddb-59001b55522a', '5e989a55-4600-6083-df0f-590019e937eb', '899f7ddd-b206-7b09-2fe4-582da50bc734', 0, '2017-04-26 04:01:26', 0),
('b8fd1395-bf19-0d24-b956-59001b1d5cc6', '5e989a55-4600-6083-df0f-590019e937eb', 'd0ac061f-2421-7d59-183c-582da585e68c', 0, '2017-04-26 04:01:26', 0),
('b935cb1f-1fb2-9d71-81f0-59001b538e50', '5e989a55-4600-6083-df0f-590019e937eb', 'c33e4475-234b-eba5-10e5-582da59d26e0', 0, '2017-04-26 04:01:26', 0),
('b970506b-caa0-c26c-760e-59001b1cce32', '5e989a55-4600-6083-df0f-590019e937eb', '6ffc9770-3e95-dcdb-92b4-582da56dfee3', 0, '2017-04-26 04:01:26', 0),
('b9c50481-33dc-6101-e9a3-59001b93c047', '5e989a55-4600-6083-df0f-590019e937eb', 'e0c9319d-6cc8-c404-ae85-582da5952b2c', 0, '2017-04-26 04:01:26', 0),
('b9fd7873-8095-42e2-a9c9-59001ba7754e', '5e989a55-4600-6083-df0f-590019e937eb', '66f3fae1-2ab9-6b04-2c2b-582da5876dc7', 0, '2017-04-26 04:01:26', 0),
('ba361abb-58c5-4b85-f582-59001be642c4', '5e989a55-4600-6083-df0f-590019e937eb', '2d0c1ed9-9cee-d57c-eda6-582da5cd5634', 0, '2017-04-26 04:01:26', 0),
('ba706390-2269-c45a-54f3-59001b386ed3', '5e989a55-4600-6083-df0f-590019e937eb', '93d61268-1eac-401f-7ce1-582da50ff80d', 0, '2017-04-26 04:01:26', 0),
('baad65d7-ce04-6e31-04ea-59001b227a72', '5e989a55-4600-6083-df0f-590019e937eb', '8acd79c0-4cd6-872b-d7c4-582da5caff16', 0, '2017-04-26 04:01:26', 0),
('bb018a69-f108-3e1e-4b83-59001b68f6f0', '5e989a55-4600-6083-df0f-590019e937eb', 'a6e16a6a-0ff2-df17-dd72-582da58e8cff', 0, '2017-04-26 04:01:26', 0),
('bb33a2d7-c756-7cf6-7063-59001b4b336c', '5e989a55-4600-6083-df0f-590019e937eb', '9dd8ccf6-65aa-d69d-80ca-582da5082ceb', 0, '2017-04-26 04:01:26', 0),
('bb6407ac-0e16-1ead-dbd4-59001bf6e240', '5e989a55-4600-6083-df0f-590019e937eb', '80cadd51-f636-9ba7-712f-582da5a32218', 0, '2017-04-26 04:01:26', 0),
('bb9e22ab-47a5-2b52-36b0-59001bf5a784', '5e989a55-4600-6083-df0f-590019e937eb', 'b0670ef7-41f9-eed9-438b-582da5a5fcd0', 0, '2017-04-26 04:01:26', 0),
('bbd65c8a-8a28-202c-6631-59001ba6345a', '5e989a55-4600-6083-df0f-590019e937eb', '6fb39f14-df6a-0e8b-6fe8-582da53095d8', 0, '2017-04-26 04:01:26', 0),
('bc181389-61d2-8267-433f-59001b433807', '5e989a55-4600-6083-df0f-590019e937eb', '3d862e8a-686c-135b-ce99-582da5279af6', 0, '2017-04-26 04:01:26', 0),
('bc507c2a-c881-fec0-3e98-59001b4efe0e', '5e989a55-4600-6083-df0f-590019e937eb', '975f7dd7-a346-a22e-ddf0-582da50cd63b', 0, '2017-04-26 04:01:26', 0),
('bc8b82fc-5247-e6e2-a2b3-59001b22440e', '5e989a55-4600-6083-df0f-590019e937eb', '8398b41e-dd2f-5c45-f098-582da5dcaf98', 0, '2017-04-26 04:01:26', 0),
('bcdbc3f6-8793-c91a-89d6-59001b5f36f6', '5e989a55-4600-6083-df0f-590019e937eb', 'c6bd3b83-b5aa-3a03-c00b-582da514085c', 0, '2017-04-26 04:01:26', 0),
('bd20da92-6f31-859d-43d1-59001b496540', '5e989a55-4600-6083-df0f-590019e937eb', 'aa2c4ba5-97e7-ba49-8074-582da59bea86', 0, '2017-04-26 04:01:26', 0),
('bd5189e0-5056-abea-c0ec-59001b6ffd90', '5e989a55-4600-6083-df0f-590019e937eb', '77a202f3-63c1-bc6e-2fa6-582da5a5b143', 0, '2017-04-26 04:01:26', 0),
('bd881d56-fce4-bc19-0318-59001ba6b1e8', '5e989a55-4600-6083-df0f-590019e937eb', '32f60665-f859-f047-d271-582da57c7b84', 0, '2017-04-26 04:01:26', 0),
('bdbc4d16-d42a-18d7-5e84-59001b2debb5', '5e989a55-4600-6083-df0f-590019e937eb', '5dc0ad57-0754-6a99-38a7-582da5d3f9ad', 0, '2017-04-26 04:01:26', 0),
('bde549e3-ef16-94de-00c1-59001bee4bca', '5e989a55-4600-6083-df0f-590019e937eb', '1b03b58c-52a0-8ea2-062d-582da59793f0', 0, '2017-04-26 04:01:26', 0),
('be1b7dfb-7522-a048-78d8-59001ba1be7e', '5e989a55-4600-6083-df0f-590019e937eb', 'c9d44c95-9942-3c08-682a-582da556a8c7', 0, '2017-04-26 04:01:26', 0),
('be50be02-916a-5419-744b-59001bbd4c30', '5e989a55-4600-6083-df0f-590019e937eb', '79039be8-fecb-6e7d-32e2-582da50cc7fe', 0, '2017-04-26 04:01:26', 0),
('be8be365-21fe-00d4-b13a-59001b10779e', '5e989a55-4600-6083-df0f-590019e937eb', 'e79dbf99-2693-fd2d-27b6-582da54ec105', 0, '2017-04-26 04:01:26', 0),
('bec5e502-d47d-15b5-3e80-59001bcb534a', '5e989a55-4600-6083-df0f-590019e937eb', 'd68676f9-e083-1444-7759-582da53a83ef', 0, '2017-04-26 04:01:26', 0),
('befdbd6c-d07f-6dae-72cf-59001b21aa8f', '5e989a55-4600-6083-df0f-590019e937eb', '4a9fe455-293d-7b9a-6b57-582da5b9ae00', 0, '2017-04-26 04:01:26', 0),
('bf357bb3-ee89-ceed-015b-59001be79ce1', '5e989a55-4600-6083-df0f-590019e937eb', '1e33d0bb-ba40-4b34-8079-582da5906625', 0, '2017-04-26 04:01:26', 0),
('c0791701-4c51-709e-712d-59001b8e0963', '5e989a55-4600-6083-df0f-590019e937eb', '36d9247e-98e6-8ff1-229e-582da56bf539', 0, '2017-04-26 04:01:26', 0),
('c105549a-4ea9-5d91-b666-59001b89ced4', '5e989a55-4600-6083-df0f-590019e937eb', '9921124b-68cd-067b-390f-582da52a28bb', 0, '2017-04-26 04:01:26', 0),
('c146e5fe-95da-3daa-dc7c-59001bc496aa', '5e989a55-4600-6083-df0f-590019e937eb', 'c225b33c-0f54-e137-3699-582da505e174', 0, '2017-04-26 04:01:26', 0),
('c1869f7f-5b97-7e6b-57cd-59001b7db935', '5e989a55-4600-6083-df0f-590019e937eb', 'b6ac0cde-480d-b48d-4de2-582da592b47e', 0, '2017-04-26 04:01:26', 0),
('c1bfac4e-a92a-c761-3be3-59001b585c3a', '5e989a55-4600-6083-df0f-590019e937eb', 'd5310c5e-ad0d-85eb-f23b-582da5c8255e', 0, '2017-04-26 04:01:26', 0),
('c1f3e9cf-6093-707c-0cfe-59001b0b8f44', '5e989a55-4600-6083-df0f-590019e937eb', 'cc66ed6a-fef1-ddfc-2d11-582da5a25487', 0, '2017-04-26 04:01:26', 0),
('c22a24c0-c8e4-789a-fcbb-59001b969555', '5e989a55-4600-6083-df0f-590019e937eb', 'ac6aeea7-8ff1-e428-b811-582da5314747', 0, '2017-04-26 04:01:26', 0),
('c262fcfe-1005-8541-e152-59001bc52cb8', '5e989a55-4600-6083-df0f-590019e937eb', 'df722165-ada3-2dad-aec1-582da512aa2e', 0, '2017-04-26 04:01:26', 0),
('c2b432dc-89d1-f4fb-9b53-59001bda9fb0', '5e989a55-4600-6083-df0f-590019e937eb', 'a3a0cd5d-1255-f8f6-8424-582da59dc3f1', 0, '2017-04-26 04:01:26', 0);
INSERT INTO `acl_roles_actions` (`id`, `role_id`, `action_id`, `access_override`, `date_modified`, `deleted`) VALUES
('c310d25f-eb6f-c0bf-8a74-59001b1f7b12', '5e989a55-4600-6083-df0f-590019e937eb', '380c1ad4-809a-5586-da22-582da5666a80', 0, '2017-04-26 04:01:26', 0),
('c3433735-4e00-b1df-aa1b-59001b602dde', '5e989a55-4600-6083-df0f-590019e937eb', '84b63995-bfb4-99e2-9fd7-582da52c4957', 0, '2017-04-26 04:01:26', 0),
('c37c7e2c-c393-5ed3-0849-59001b295834', '5e989a55-4600-6083-df0f-590019e937eb', '72a4f293-63dc-28c9-f25b-582da55c2afb', 0, '2017-04-26 04:01:26', 0),
('c3b43752-72e6-d992-cf36-59001b4c24a1', '5e989a55-4600-6083-df0f-590019e937eb', 'cc01445d-26ff-f110-fa7d-582da59a7566', 0, '2017-04-26 04:01:26', 0),
('c3ee19b2-8519-b7bf-8690-59001b8ce2cc', '5e989a55-4600-6083-df0f-590019e937eb', '9ba99967-4143-2866-eeac-582da595f6f5', 0, '2017-04-26 04:01:26', 0),
('c4363bef-8572-86b3-e930-59001b315e4d', '5e989a55-4600-6083-df0f-590019e937eb', '5cea21f3-33c6-6f85-b50a-582da54d0c9a', 0, '2017-04-26 04:01:26', 0),
('c46f058a-5a1c-5714-38a5-59001b40b6e4', '5e989a55-4600-6083-df0f-590019e937eb', 'e4aa2832-dff4-63bf-74fc-582da53c2d5d', 0, '2017-04-26 04:01:26', 0),
('c4b5b506-2828-8ef1-8e92-59001b37db86', '5e989a55-4600-6083-df0f-590019e937eb', '4ccce086-8128-9e8e-1ca1-582da594d423', 0, '2017-04-26 04:01:26', 0),
('c4e94cc7-478e-4ac9-966f-59001b51c112', '5e989a55-4600-6083-df0f-590019e937eb', 'c58f23f2-58f2-0a6d-c60f-582da5dccdbf', 0, '2017-04-26 04:01:26', 0),
('c5264a7a-4369-5098-7a96-59001b395805', '5e989a55-4600-6083-df0f-590019e937eb', '22b8d2fc-a320-a623-4326-582da52f7a98', 0, '2017-04-26 04:01:26', 0),
('c5653a12-0c0a-438c-091d-59001bf333fa', '5e989a55-4600-6083-df0f-590019e937eb', 'fec10ba9-4467-b6a7-4fc3-582da52bea14', 0, '2017-04-26 04:01:26', 0),
('c5ac493a-1416-9b19-6460-59001b8835ab', '5e989a55-4600-6083-df0f-590019e937eb', '3f0b4bab-99b6-907b-db07-582da56ff0bd', 0, '2017-04-26 04:01:26', 0),
('c5e1f459-0d2e-f2b2-23f2-59001b4e3e1f', '5e989a55-4600-6083-df0f-590019e937eb', '35c42b04-1ad0-d3b9-a337-582da50dae3c', 0, '2017-04-26 04:01:26', 0),
('c619a30f-33a8-50fb-1f85-59001b8cfc18', '5e989a55-4600-6083-df0f-590019e937eb', 'f104c357-67b1-96af-6af9-582da56f047c', 0, '2017-04-26 04:01:26', 0),
('c64a834a-d51d-ccd2-ad57-59001b0e321e', '5e989a55-4600-6083-df0f-590019e937eb', '51d80fbf-caea-cf8a-093d-582da5fcb1f0', 0, '2017-04-26 04:01:26', 0),
('c68572d3-9ffe-6254-5e23-59001b8e6958', '5e989a55-4600-6083-df0f-590019e937eb', 'e0a9076a-130a-fd15-b9a2-582da54dd7c4', 0, '2017-04-26 04:01:26', 0),
('c6ae1933-4db1-7abe-7f24-59001b10dd23', '5e989a55-4600-6083-df0f-590019e937eb', '448c27ff-148e-dd95-750f-582da5b260bf', 0, '2017-04-26 04:01:26', 0),
('c6e3447e-5fb4-58c7-2b7f-59001b1dd388', '5e989a55-4600-6083-df0f-590019e937eb', '98c7ddfd-48ac-5acd-eb93-582da5401a2a', 0, '2017-04-26 04:01:26', 0),
('c72f2908-41a9-ead9-338f-59001bb181c6', '5e989a55-4600-6083-df0f-590019e937eb', '882d921b-588b-a9da-3c84-582da5280b14', 0, '2017-04-26 04:01:26', 0),
('c76cc544-7e7e-92ed-5133-59001b0f6e6b', '5e989a55-4600-6083-df0f-590019e937eb', 'c6ed0932-35ca-362b-69ae-582da516bb8d', 0, '2017-04-26 04:01:26', 0),
('c7a13d40-aaa8-85fd-eefe-59001b822be2', '5e989a55-4600-6083-df0f-590019e937eb', 'a8e512e6-2714-ab8d-be3b-582da595e480', 0, '2017-04-26 04:01:26', 0),
('c7da9938-09bb-3b74-f049-59001b66927a', '5e989a55-4600-6083-df0f-590019e937eb', '759f57b0-595b-0028-d119-582da5a99399', 0, '2017-04-26 04:01:26', 0),
('c80aa6b1-77ce-98a9-8202-59001b450eb0', '5e989a55-4600-6083-df0f-590019e937eb', '8aa23a4e-ea40-e8a0-5bdd-582da5449415', 0, '2017-04-26 04:01:26', 0),
('c83aa5f8-f843-65e3-d07c-59001b8de83d', '5e989a55-4600-6083-df0f-590019e937eb', '51f9dac3-ee1e-1770-d098-582da55ba686', 0, '2017-04-26 04:01:26', 0),
('c860dfea-06f4-5cfb-da52-59001b588baf', '5e989a55-4600-6083-df0f-590019e937eb', '7805a9cf-b175-b249-e8a3-582da5be2fe4', 0, '2017-04-26 04:01:26', 0),
('c890e2bb-b8b2-18c5-895c-59001b8284f7', '5e989a55-4600-6083-df0f-590019e937eb', 'a724d6da-7bf6-de56-cbcc-582da5b4f0a0', 0, '2017-04-26 04:01:26', 0),
('c8c4af2a-0dcd-f167-0baf-59001ba2c924', '5e989a55-4600-6083-df0f-590019e937eb', '99b72c9d-5e6d-8454-4fb5-582da5688caf', 0, '2017-04-26 04:01:26', 0),
('c8fbe3b3-353a-4b57-75b6-59001b6a9880', '5e989a55-4600-6083-df0f-590019e937eb', 'c23ece5c-eb73-1eac-dce7-582da503096d', 0, '2017-04-26 04:01:26', 0),
('c933b996-e7a6-7606-0204-59001b0cb268', '5e989a55-4600-6083-df0f-590019e937eb', 'b1278b00-1503-5a65-82bc-582da5c34103', 0, '2017-04-26 04:01:26', 0),
('c95a058b-dba8-50a8-5d3d-59001be2f8dc', '5e989a55-4600-6083-df0f-590019e937eb', '8b4f7b3d-8883-d3b8-a63f-582da5a906a2', 0, '2017-04-26 04:01:26', 0),
('c98c89d1-7459-a4c5-22d2-59001b374925', '5e989a55-4600-6083-df0f-590019e937eb', 'cfeaf066-860e-125b-fdc1-582da596b272', 0, '2017-04-26 04:01:26', 0),
('c9d1a61c-e3ee-8ccb-7239-59001b7c335d', '5e989a55-4600-6083-df0f-590019e937eb', '814cc1ec-1027-daef-b0f5-582da51c1dae', 0, '2017-04-26 04:01:26', 0),
('ca13b752-1d3e-eb64-e4cb-59001b4e7a4c', '5e989a55-4600-6083-df0f-590019e937eb', '44eca986-5715-ba83-6375-582da5cb4d0c', 0, '2017-04-26 04:01:26', 0),
('ca4f2733-758e-1331-1482-59001bf63ed1', '5e989a55-4600-6083-df0f-590019e937eb', '7f470d5e-27f9-6c3c-271e-582da5ffc72e', 0, '2017-04-26 04:01:26', 0),
('ca8679d6-26cd-4cac-0e78-59001b910130', '5e989a55-4600-6083-df0f-590019e937eb', '67d6a032-84a7-a6b9-7535-582da5ce18dd', 0, '2017-04-26 04:01:26', 0),
('cabdba8a-eacc-2143-78da-59001b72968d', '5e989a55-4600-6083-df0f-590019e937eb', 'ac33a609-2d2b-b441-f482-582da532b5c8', 0, '2017-04-26 04:01:26', 0),
('caf97fbc-a16a-0283-a946-59001b17e59f', '5e989a55-4600-6083-df0f-590019e937eb', '97345dc7-c65a-c271-16c6-582da5b41fdb', 0, '2017-04-26 04:01:26', 0),
('cb2cb3bd-e375-f5dd-77e1-59001b9879d3', '5e989a55-4600-6083-df0f-590019e937eb', '5e128a0c-df9f-03d1-7a2e-582da57445bc', 0, '2017-04-26 04:01:26', 0),
('cb6696bf-ec67-4b2e-15ee-59001b9fcc03', '5e989a55-4600-6083-df0f-590019e937eb', 'cc2fa288-25b9-4b56-c193-582da5f4c8e7', 0, '2017-04-26 04:01:26', 0),
('cb8b9c64-3b99-27c7-bfa1-59001b298a07', '5e989a55-4600-6083-df0f-590019e937eb', '5509e1fc-c789-3c7b-c669-582da50649a1', 0, '2017-04-26 04:01:26', 0),
('cbc03e11-8f89-6dc9-51f9-59001bcafd5e', '5e989a55-4600-6083-df0f-590019e937eb', 'ec6da974-76c3-99d9-2f38-582da53c7f56', 0, '2017-04-26 04:01:26', 0),
('cbfed140-8caa-38c5-c1fc-59001bd1d254', '5e989a55-4600-6083-df0f-590019e937eb', '1e9ebcc1-63b4-2a13-5e78-582da54e498f', 0, '2017-04-26 04:01:26', 0),
('cc33de59-9057-7570-8222-59001b3795c1', '5e989a55-4600-6083-df0f-590019e937eb', '14da9923-488e-53f2-7487-582da5f5282a', 0, '2017-04-26 04:01:26', 0),
('cc655715-4adb-614f-bc8b-59001b3736b5', '5e989a55-4600-6083-df0f-590019e937eb', '31e88c49-f138-7260-2a4a-582da514f58a', 0, '2017-04-26 04:01:26', 0),
('ccb883cd-3a5f-fd14-ae38-59001b81086c', '5e989a55-4600-6083-df0f-590019e937eb', '27a76efc-37c7-a81b-d876-582da59f9ef2', 0, '2017-04-26 04:01:26', 0),
('cd037d4d-99b1-0df0-1208-59001b93cfc7', '5e989a55-4600-6083-df0f-590019e937eb', 'b93709ff-06e2-5601-a7af-582da503eff3', 0, '2017-04-26 04:01:26', 0),
('cd36b78d-fc80-8cbf-6cac-59001b4242c2', '5e989a55-4600-6083-df0f-590019e937eb', '3ab2a274-b81e-c75c-725a-582da5620537', 0, '2017-04-26 04:01:26', 0),
('cd6860e7-599d-8aed-4910-59001bd793d3', '5e989a55-4600-6083-df0f-590019e937eb', '1cf505f7-4f2c-1494-c8ae-582da5c6683e', 0, '2017-04-26 04:01:26', 0),
('cd9ecd97-65ba-4342-3c28-59001b08a388', '5e989a55-4600-6083-df0f-590019e937eb', 'c749ebb8-d258-8060-cfbe-582da542ddd0', 0, '2017-04-26 04:01:26', 0),
('cdcde01b-6843-f335-d907-59001b2da406', '5e989a55-4600-6083-df0f-590019e937eb', 'f08cf200-a344-5f72-9439-582da5b7f3ac', 0, '2017-04-26 04:01:26', 0),
('ce2d1fd1-03fa-fbbd-1757-59001bf0781c', '5e989a55-4600-6083-df0f-590019e937eb', 'e4d4ceb9-b49a-8bd7-e4f7-582da5dd3b6f', 0, '2017-04-26 04:01:26', 0),
('ce686b41-7eee-f37a-7afd-59001b5cb94e', '5e989a55-4600-6083-df0f-590019e937eb', '665f8cf3-49c9-5172-7afd-582da502d0b3', 0, '2017-04-26 04:01:26', 0),
('cea65096-0f37-ddd9-31e3-59001ba6ca94', '5e989a55-4600-6083-df0f-590019e937eb', '1ed5f8ad-9960-63ee-fef9-582da56faa6f', 0, '2017-04-26 04:01:26', 0),
('cee5f093-03e0-3d89-234b-59001b4c4d7a', '5e989a55-4600-6083-df0f-590019e937eb', 'da93a843-dc66-1c86-4d6d-582da5631471', 0, '2017-04-26 04:01:26', 0),
('cf22839a-e1ff-f362-1099-59001b657583', '5e989a55-4600-6083-df0f-590019e937eb', '7870c800-4524-4688-7eea-582da559f66c', 0, '2017-04-26 04:01:26', 0),
('cf625d5e-fd50-3274-5daf-59001beac039', '5e989a55-4600-6083-df0f-590019e937eb', 'd1c98129-5fe9-4bd2-730c-582da57add54', 0, '2017-04-26 04:01:26', 0),
('cf9ea14b-e31f-3b58-27ff-59001b5b25e2', '5e989a55-4600-6083-df0f-590019e937eb', 'ddf9e404-7a85-c634-64df-582da55319cf', 0, '2017-04-26 04:01:26', 0),
('cfe03fc7-1116-df23-4128-59001b54ed8f', '5e989a55-4600-6083-df0f-590019e937eb', '8ee24781-ebab-b297-24cf-582da5101fc7', 0, '2017-04-26 04:01:26', 0),
('d02bab72-211d-a521-ff37-59001bcb42bd', '5e989a55-4600-6083-df0f-590019e937eb', '64a52f61-d6a1-d297-7e85-582da5e9db90', 0, '2017-04-26 04:01:26', 0),
('d07880f4-1361-5988-64f4-59001b6326a0', '5e989a55-4600-6083-df0f-590019e937eb', 'ba57e2df-b36c-906c-cba3-582da5da54ad', 0, '2017-04-26 04:01:26', 0),
('d0b41fd2-f8a3-a1cf-cc12-59001b0fbbc3', '5e989a55-4600-6083-df0f-590019e937eb', 'a5d5a583-3fdf-a2d3-eec8-582da5068eb2', 0, '2017-04-26 04:01:26', 0),
('d0f08041-3618-cd8a-2ce5-59001b77947c', '5e989a55-4600-6083-df0f-590019e937eb', '321ae085-5cde-875a-dd27-582da5ad0b9d', 0, '2017-04-26 04:01:26', 0),
('d12831a3-632a-16c4-c581-59001bc99b70', '5e989a55-4600-6083-df0f-590019e937eb', 'ce5d374b-9f40-7c5e-ac03-582da5aecffe', 0, '2017-04-26 04:01:26', 0),
('d15cc683-7b8e-b83e-9fa4-59001b4ec0d9', '5e989a55-4600-6083-df0f-590019e937eb', 'f105280f-6cb1-61f3-3fa1-582da506c1cc', 0, '2017-04-26 04:01:26', 0),
('d195aae4-adb2-73e3-65b9-59001bc3bb58', '5e989a55-4600-6083-df0f-590019e937eb', '98321ef8-5433-5f23-9473-582da5a74e42', 0, '2017-04-26 04:01:26', 0),
('d1d070f1-1ec4-5552-43b9-59001bb90e09', '5e989a55-4600-6083-df0f-590019e937eb', '7aaab729-1e2d-9422-02a5-582da59c5438', 0, '2017-04-26 04:01:26', 0),
('d2066ee9-23f2-d69f-027e-59001b529f41', '5e989a55-4600-6083-df0f-590019e937eb', '6d3d0c04-998d-fce4-ed65-582da5e0c4b7', 0, '2017-04-26 04:01:26', 0),
('d23c7d8e-d3fb-6b28-acee-59001b90cdc0', '5e989a55-4600-6083-df0f-590019e937eb', '90a404d9-e250-734d-1f82-582da537769d', 0, '2017-04-26 04:01:26', 0),
('d26454e7-0638-c466-a5a6-59001be39b0d', '5e989a55-4600-6083-df0f-590019e937eb', '823c5c6e-11d2-ba75-b259-582da507d1eb', 0, '2017-04-26 04:01:26', 0),
('d29d0a62-e412-9657-eb83-59001bf1b534', '5e989a55-4600-6083-df0f-590019e937eb', '57823e49-299c-5d66-36b4-582da5617a13', 0, '2017-04-26 04:01:26', 0),
('d2d01b45-5964-4e05-2df1-59001b833f17', '5e989a55-4600-6083-df0f-590019e937eb', 'bbdb270e-7f49-155a-6961-582da54cddb1', 0, '2017-04-26 04:01:26', 0),
('d318ec82-0afa-4f6d-ae85-59001b9ae9f7', '5e989a55-4600-6083-df0f-590019e937eb', '4764fcd8-8d68-7f84-2288-582da5fd8ea3', 0, '2017-04-26 04:01:26', 0),
('d3577809-e250-29cb-3f5d-59001b54f364', '5e989a55-4600-6083-df0f-590019e937eb', 'b64be4d1-655d-9702-441a-582da58efafa', 0, '2017-04-26 04:01:26', 0),
('d395e763-a4bc-e6d9-367b-59001b21ed73', '5e989a55-4600-6083-df0f-590019e937eb', '607e04ab-383b-a4fd-2e19-582da5236aad', 0, '2017-04-26 04:01:26', 0),
('d3cbfe5e-dfe0-0098-86a7-59001bc89dc5', '5e989a55-4600-6083-df0f-590019e937eb', 'e9d02d7d-6476-ba81-8b4a-582da5b47dca', 0, '2017-04-26 04:01:26', 0),
('d411304d-3e26-49ab-bae4-59001b153a87', '5e989a55-4600-6083-df0f-590019e937eb', '317d809c-922e-7e5e-e2ef-582da577b55a', 0, '2017-04-26 04:01:26', 0),
('d449dad9-a14f-6342-5555-59001bf92fa5', '5e989a55-4600-6083-df0f-590019e937eb', '19132ddb-524a-65d7-546f-582da52bd67a', 0, '2017-04-26 04:01:26', 0),
('d48330e9-4925-104e-7527-59001b4ca86b', '5e989a55-4600-6083-df0f-590019e937eb', 'e1830a6d-f9a9-abc6-d81d-582da5efc136', 0, '2017-04-26 04:01:26', 0),
('d4c0d1e6-1259-4606-1479-59001b4e93a7', '5e989a55-4600-6083-df0f-590019e937eb', '3f29a430-7f70-3c2c-6587-582da50ef299', 0, '2017-04-26 04:01:26', 0),
('d4fd5ff6-2f8a-9e50-fb54-59001b2b79ca', '5e989a55-4600-6083-df0f-590019e937eb', 'd7035976-71a0-02ff-48e1-582da5b5ef2b', 0, '2017-04-26 04:01:26', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `acl_roles_users`
--

INSERT INTO `acl_roles_users` (`id`, `role_id`, `user_id`, `date_modified`, `deleted`) VALUES
('95210ed1-99ee-7c70-1d75-59000c2ee26d', '5af0d976-e44d-c118-dddf-590009e66560', 'af9ce444-116c-4ece-ebd7-5900089ba8d9', '2017-04-26 03:48:32', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alerts`
--

CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_projecttemplates`
--

CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_projecttemplates_audit`
--

CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_projecttemplates_contacts_1_c`
--

CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_projecttemplates_project_1_c`
--

CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_projecttemplates_users_1_c`
--

CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_tasktemplates`
--

CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT '0',
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_tasktemplates_am_projecttemplates_c`
--

CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `am_tasktemplates_audit`
--

CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aobh_businesshours`
--

CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aod_index`
--

CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aod_index`
--

INSERT INTO `aod_index` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `last_optimised`, `location`) VALUES
('1', 'Index', '2016-11-17 12:58:41', '2016-11-17 12:58:41', '1', '1', NULL, 0, NULL, NULL, 'modules/AOD_Index/Index/Index');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aod_indexevent`
--

CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `aod_indexevent`
--

INSERT INTO `aod_indexevent` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `error`, `success`, `record_id`, `record_module`) VALUES
('6ca85ce0-1d28-1a57-25a5-582dc2683080', 'Type changed from  to Administration.', '2016-11-17 14:44:29', '2016-11-17 14:44:29', '1', '1', NULL, 0, NULL, NULL, 1, '987e03ac-9b23-ba76-66fc-582dc200841a', 'AOP_Case_Events'),
('b0c6d525-dda4-f1cb-d1a5-582dc23891d0', 'System not responding', '2016-11-17 14:44:29', '2016-11-17 14:44:29', '1', '1', NULL, 0, NULL, NULL, 1, '1460875e-1f2b-35d1-a555-582da66f6e10', 'Cases');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aod_indexevent_audit`
--

CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aod_index_audit`
--

CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aok_knowledgebase`
--

CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aok_knowledgebase_audit`
--

CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aok_knowledgebase_categories`
--

CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aok_knowledge_base_categories`
--

CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aok_knowledge_base_categories_audit`
--

CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aop_case_events`
--

CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aop_case_events_audit`
--

CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aop_case_updates`
--

CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aop_case_updates_audit`
--

CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_charts`
--

CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_conditions`
--

CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_fields`
--

CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_reports`
--

CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_reports_audit`
--

CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aor_scheduled_reports`
--

CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_contracts`
--

CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_contracts_audit`
--

CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_contracts_documents`
--

CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_invoices`
--

CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_invoices_audit`
--

CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_line_item_groups`
--

CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_line_item_groups_audit`
--

CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_pdf_templates`
--

CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_pdf_templates_audit`
--

CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products`
--

CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products_audit`
--

CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products_quotes`
--

CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_products_quotes_audit`
--

CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_product_categories`
--

CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_product_categories_audit`
--

CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes`
--

CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_aos_invoices_c`
--

CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_audit`
--

CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_os_contracts_c`
--

CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aos_quotes_project_c`
--

CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_actions`
--

CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_conditions`
--

CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_processed`
--

CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_processed_aow_actions`
--

CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_workflow`
--

CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aow_workflow_audit`
--

CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `calls`
--

INSERT INTO `calls` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `duration_hours`, `duration_minutes`, `date_start`, `date_end`, `parent_type`, `status`, `direction`, `parent_id`, `reminder_time`, `email_reminder_time`, `email_reminder_sent`, `outlook_id`, `repeat_type`, `repeat_interval`, `repeat_dow`, `repeat_until`, `repeat_count`, `repeat_parent_id`, `recurring_source`) VALUES
('a43b9dac-c743-44ed-9c14-59f880039b25', 'Llamar a Ricay de DIALCA', '2017-10-31 13:55:02', '2017-11-25 12:45:23', '1', '1', NULL, 0, '4aa108b5-0830-49bf-b0e0-594d5c3aec2f', 0, 15, '2017-10-31 14:00:00', '2017-10-31 14:15:00', 'Accounts', 'Held', 'Outbound', '', -1, -1, 0, NULL, NULL, 1, NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_reschedule`
--

CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_reschedule_audit`
--

CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `calls_users`
--

INSERT INTO `calls_users` (`id`, `call_id`, `user_id`, `required`, `accept_status`, `date_modified`, `deleted`) VALUES
('d7c53771-6f70-d593-c629-59f88096ce33', 'a43b9dac-c743-44ed-9c14-59f880039b25', '1', '1', 'none', '2017-10-31 13:55:02', 0),
('d8600192-de0b-2f61-0b35-59f880958dff', 'a43b9dac-c743-44ed-9c14-59f880039b25', '4aa108b5-0830-49bf-b0e0-594d5c3aec2f', '1', 'none', '2018-10-16 19:14:13', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cases`
--

INSERT INTO `cases` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `case_number`, `type`, `status`, `priority`, `resolution`, `work_log`, `account_id`, `state`, `contact_created_by_id`) VALUES
('24291dad-ebef-44e1-157c-59a6bae1dab1', 'SOLICITUD PARA LA WEB AIAG', '2017-08-30 13:17:14', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p><span>Sirva la presente para solicitar subir a la p&aacute;gina web las siguientes im&aacute;genes con el fin de sustituir las actuales.</span></p>', 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 35, 'Administration', 'Closed_Closed', 'P2', 'Se modificaron las imágenes según  lo solicitado por el cliente', NULL, '', 'Closed', ''),
('2d97b329-6293-46fd-6261-5931a8e5e509', 'Cambios en el contenido de la sección de Mantenimiento', '2017-06-02 18:02:43', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<div class=\"gmail_default\">\r\n<p>Buenas tardes Alexander te anexo el texto que debe aparecer en la pagina para servicio t&eacute;cnico</p>\r\n<p>Para que dia puede estar listo?</p>\r\n<p>Saludos</p>\r\n</div>', 1, '392003a9-b9b0-05cf-1c16-5911f5143e69', 10, 'Administration', 'Closed_Closed', 'P1', 'Se cambiaron 3 palabras al contenido original y esto ya fue actualizado. Los años de experiencia, de 15 a 20, la palabra \"incluimos\" por \"realizamos\" y la sección de engrase por lubricación. Así mismo informo que no me ha llegado correo de Josefina, igual estaré llamando al teléfono de su local.\r\n \r\n', NULL, '', 'Closed', ''),
('2f0913cb-5139-2cf3-77fa-59627011939d', '         Más  3 de 4.177     Imprimir todo En una ventana nueva Cambios para el logo de Farmacia Familiar', '2017-07-09 18:05:56', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', '<div class=\"gmail_default\">CHicos,</div>\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n<div class=\"gmail_default\">Logo aprobado:</div>\r\n<div class=\"gmail_default\"><img class=\"CToWUd a6T\" src=\"https://mail.google.com/mail/u/0/?ui=2&ik=7a72632738&view=fimg&th=15d24c4774056472&attid=0.1&disp=emb&realattid=ii_15d24c1937441e8a&attbid=ANGjdJ8F6i5n_AHJuUt43orJR3cK_vIY0EvhmqelmW-sx9Wf2Op3aTD-lvDMFnoO1eZDWRvmCsv20F42asoBVQ-XgnCEco_Uq1daeYGJNCjYJVzTfrVDn8-aq7RCoDY&sz=w1070-h446&ats=1499622929844&rm=15d24c4774056472&zw&atsh=1\" alt=\"Im&aacute;genes integradas 1\" width=\"535\" height=\"223\" /></div>\r\n<div class=\"gmail_default\">\r\n<ul>\r\n<li>Cambiar los colores y utilizar el slogan de la farmacia.</li>\r\n</ul>\r\n<div>Les aviso para iniciar la web.</div>\r\n<div>&nbsp;</div>\r\n<div>Atte.</div>\r\n</div>', 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 24, 'Administration', 'Open_Assigned', 'P1', NULL, NULL, '', 'Open', ''),
('31f7258b-30c3-3e9b-e220-59a56b2b7333', 'CORRECCIONES PAGINA WED REED', '2017-08-29 13:27:39', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p><span>Modificaciones e incorporaciones que queremos se le haga a la p&aacute;gina (por los momentos), Trate de ser lo mas especifica posible, pero en caso de alguna duda o sugerencia, no dudes en escribirme. As&iacute; que, quedo atenta a tus comentarios.&nbsp;</span></p>', 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 33, 'Administration', 'Closed_Closed', 'P2', NULL, NULL, '', 'Closed', ''),
('3c9f356e-f312-be17-8c9a-59f87f61723e', 'nombre que aparece en la pagina del sitio web de QUP', '2017-10-31 13:51:40', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<p>Buenos d&iacute;as, Sres. Ts talento.</p>\r\n<div dir=\"auto\">Un gusto saludarles, espero se encuentren muy bien.&nbsp;</div>\r\n<div dir=\"auto\">&nbsp;</div>\r\n<div dir=\"auto\">Les escribo hoy a raz&oacute;n de un ajuste del nombre que aparece en la pagina del sitio web de QUP.&nbsp;</div>\r\n<div dir=\"auto\">&nbsp;</div>\r\n<div dir=\"auto\">&nbsp;Les anexo una imagen para que puedan ver a que me refiero. Actualmente dice: \"QUIERO UN PAIS, tu voto construye\" y deber&iacute;a se decir: \"QUIERO UN PAIS, tu participaci&oacute;n construye\"</div>\r\n<div dir=\"auto\">&nbsp;</div>\r\n<div dir=\"auto\">Es algo muy sencillo, pero importante para el equipo de QUP.&nbsp;</div>\r\n<div dir=\"auto\">Sin mas que agregar, quedo atenta a sus respuestas.&nbsp;</div>\r\n<div dir=\"auto\">&nbsp;</div>\r\n<div dir=\"auto\">Saludos cordiales,</div>\r\n<div dir=\"auto\">Abril Tovar.</div>', 1, '392003a9-b9b0-05cf-1c16-5911f5143e69', 41, 'User', 'Open_Assigned', 'P1', 'Buenos días,\r\n\r\nEstimada Aby Tovar el cambio fue realizado.', NULL, '', 'Open', ''),
('417e1cf0-8ae0-bd42-0153-594963cad36a', 'Subir pagina Adopta Venezuela', '2017-06-20 18:05:24', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', '<p>Alex,</p>\r\n<p>&nbsp;</p>\r\n<p>Jose solicito que subieramos la pagina al dominio final</p>', 1, '392003a9-b9b0-05cf-1c16-5911f5143e69', 21, 'Administration', 'Closed_Closed', 'P1', NULL, NULL, '', 'Closed', ''),
('429d2fa3-8356-2b9f-040e-59301bd8f46b', 'Imágenes que sustituirán a los actuales calendarios en la Pag Web de la Asociación', '2017-06-01 13:51:23', '2018-12-15 18:38:36', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<p><span style=\"color: #ff0000;\">Buenos d&iacute;as</span></p>\r\n<p><span style=\"color: #ff0000;\">Sirva la presente para solicitar suban las siguientes im&aacute;genes que sustituir&aacute;n a los actuales calendarios en la Pag Web de la Asociaci&oacute;n.</span></p>\r\n<p><span style=\"color: #ff0000;\">Quedo atenta a sus comentarios.</span></p>\r\n<p>*******</p>\r\n<p>Luis realizar a primera hora luego te incorporas al proyecto de TS Talent</p>', 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 2, 'Administration', 'Closed_Closed', 'P1', 'Buen día,\r\nEn respuesta a su solicitud (cambio de las imágenes del calendario), las mismas ya fueron sustituidas y puede visualizarlas en su portal web: http://aiag.org.ve\r\nQuedamos atentos   a sus comentarios.\r\n\r\nSaludos Cordiales\r\n\r\n', NULL, '', 'Closed', ''),
('433c2cd5-717b-145f-12bf-59a960cff896', 'SVC CONTENIDO NUEVO', '2017-09-01 13:29:58', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<div class=\"gmail_default\">Adjunto manuscrito para publicar en la secci&oacute;n \"Ahead of print\".&nbsp;</div>\r\n<div class=\"gmail_default\">&nbsp;</div>', 1, 'aa556237-4b1e-57ef-b6ab-594419f727b2', 36, 'Administration', 'Closed_Closed', 'P2', NULL, NULL, '', 'Closed', ''),
('49cd4802-e6a1-b99d-55d9-59308de0a71e', 'Cambios en la cantidad de los artículos', '2017-06-01 21:56:17', '2018-12-15 18:38:36', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<p>Cambios en la cantidad de los art&iacute;culos para evitar el mensaje de falta de existencia</p>', 1, '1', 8, 'Administration', 'Closed_Closed', 'P1', 'Cambio en los productos de tecnomed ya fue realizado.', NULL, '', 'Closed', ''),
('4e513191-9d31-4e72-4190-59945c46a372', 'AGREGAR LOS ITEMS', '2017-08-16 14:54:06', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p>AGREGAR ITEMS CON SUS RESPECTIVAS DESCRIPCIONES A LA PAGINA DE BELLA Y ELEGANTE.</p>', 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 26, 'Administration', 'Closed_Closed', 'P2', 'Los ITEMS fueron agregados exitosamente', NULL, '', 'Closed', ''),
('563706de-49af-8cd4-11cb-593073509250', 'Website is not configured', '2017-06-01 20:05:43', '2018-12-15 18:38:36', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<p><span style=\"font-size: 11.0pt;\">Looks like the godady is not pointing to right folder or the website is not configured&hellip;since it showing me 404 on their end</span></p>\r\n<p><span style=\"font-size: 11.0pt;\">*************</span></p>\r\n<p>&nbsp;</p>', 1, '392003a9-b9b0-05cf-1c16-5911f5143e69', 5, 'Administration', 'Closed_Closed', 'P1', 'Mr. Marty already configured the Redirects Service and is ready. The page is already published.​', NULL, '', 'Closed', ''),
('5f4cee07-88a4-e752-1feb-595aa3313a55', 'Modificar la plataforma de CRM', '2017-07-03 20:05:28', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<p>Realizar las modificaciones t&eacute;cnicas de la plataforma CRM, para el funcionamiento debido y posterior de la misma...</p>', 1, 'aa556237-4b1e-57ef-b6ab-594419f727b2', 23, 'Administration', 'Closed_Closed', 'P1', 'Organizar primero la inducción, aclarar las dudas y después desarrollar los cambios y customización de la plataforma CRM', NULL, '', 'Closed', ''),
('6266a29a-fdd2-5d98-8cf4-594430b23868', 'Modificaciones al Portal Web de TECNOMED J TRAPP', '2017-06-16 19:26:44', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p>Estimado Alexander y equipo TS Talent</p>\r\n<p>Quiero FELICITARLOS por este excelente trabajo! Por mi parte esta aprobado!</p>\r\n<p>&nbsp;</p>\r\n<p>Tambi&eacute;n aprovecho la oportunidad para solicitarles un presupuesto de grabaci&oacute;n de videos para montarlos en la p&aacute;gina web y el canal de You Tube. Los mismos son de dos tipos:</p>\r\n<p class=\"m_-3548207845852461918MsoListParagraph\">1)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Para una conferencia internacional el cual tendr&aacute; una duraci&oacute;n de 30 a 45 min y somos 4 ponentes. Esos videos los debemos montar en&nbsp;<a href=\"https://www.facebook.com/coinfisio\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=https://www.facebook.com/coinfisio&source=gmail&ust=1497727016124000&usg=AFQjCNFT8MRlLMJMPFMfCF3C48-34tFUrA\">https://www.facebook.com/coinfisio</a></p>\r\n<p class=\"m_-3548207845852461918MsoListParagraph\">2)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Video de uso del equipo (a medida que lleguen los equipos se har&aacute;n los videos) podr&iacute;amos hacer los videos por categor&iacute;a es decir electroterapia, ultrasonido, electrodiagnostico. Serian unos 10 videos con una duraci&oacute;n de 10 min aproximadamente. Ahorita ya tenemos los equipos listos.</p>\r\n<p>&nbsp;</p>\r\n<p>Muchas gracias y quedo atenta a su cotizaci&oacute;n</p>\r\n<p>&nbsp;</p>\r\n<p>Saludos</p>', 1, '392003a9-b9b0-05cf-1c16-5911f5143e69', 17, 'Administration', 'Open_Assigned', 'P2', NULL, NULL, '', 'Open', ''),
('65eb2aa9-0038-fad4-f641-593015d1ffdd', 'Solicitud de cambios en la página web REED', '2017-06-01 13:22:46', '2018-12-15 18:38:36', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<p>Caso solictado por el cliente:</p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">*********************************</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">Buenos d&iacute;as Alexander.&nbsp;</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">&nbsp;</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">Le&iacute; tu correo con los detalles de los cambios que se hicieron, &iexcl;muchas gracias!</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">&nbsp;</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">Adjunto a la presente una presentaci&oacute;n de power point en la cual se se&ntilde;alan con im&aacute;genes de pantalla de la pagina de la <span class=\"il\">REED</span> los cambios que requerimos se realicen.&nbsp;</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">&nbsp;</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">As&iacute; mismo en la presentaci&oacute;n se indican los contenidos que deben eliminarse y los que deben agregarse, y toda la documentaci&oacute;n, fotos, v&iacute;deos, PDF, se adjunta.&nbsp;</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">&nbsp;</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">Al final de esta semana, les estar&eacute; enviando otros documentos que se deben incorporar y otros cambios que se deben realizar.&nbsp;</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">&nbsp;</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">Cualquier duda, quedo atenta por aqu&iacute; o a trav&eacute;s de n&uacute;mero <a href=\"tel:0414-2080928\" target=\"_blank\"><span style=\"color: #800000;\">0414-2080928</span></a>.</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">&nbsp;</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">&iexcl;Muchas gracias, Alexander!</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #800000;\">***********************************</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\">&nbsp;</p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\"><span style=\"color: #000000;\">Se env&iacute;o junto a la asignaci&oacute;n del caso el correo del 29 de Mayo. Fecha de entrega: 01/06/2017</span></p>\r\n<p style=\"margin-top: 0pt; margin-bottom: 0pt; margin-left: 0in; unicode-bidi: embed; word-break: normal;\">&nbsp;</p>', 1, '8aff5677-c52f-7d82-3237-5911fcc9c488', 1, 'Administration', 'Open_Assigned', 'P1', NULL, NULL, '', 'Closed', ''),
('6896890b-a6cc-8652-950c-59307597a9ef', 'Actualizar Sitio de Supreme Landscaping', '2017-06-01 20:14:25', '2018-12-15 18:38:36', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<p>Actualizar sitio por falla en el actualizador autom&aacute;tico</p>\r\n<p>*************</p>', 1, '392003a9-b9b0-05cf-1c16-5911f5143e69', 6, 'Administration', 'Closed_Closed', 'P2', 'Se actualizó manualmente y se corrigio base de datos por detalles de actualización previa', NULL, '', 'Closed', ''),
('74054fae-38a1-1a48-3c8c-599ddfb68031', 'CARGAR PRODUCTOS ', '2017-08-23 20:03:37', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p><span>PRIORIDAD: como es parte del servicio, cargar la web y hacerlo de manera paulatina, por semana cargar una serie de productos por categor&iacute;as... ya que son muchos. La facilidad es que la mayor&iacute;a de esos productos fueron editados por Alejandro en O&D, lo que permitir&aacute; una edici&oacute;n m&aacute;s r&aacute;pida y consolidada.&nbsp;</span></p>', 1, 'aa556237-4b1e-57ef-b6ab-594419f727b2', 32, 'Administration', 'Closed_Closed', 'P1', NULL, NULL, '', 'Closed', ''),
('773e7078-c2af-3aba-d63d-594d8313dc7b', 'Clave CRM Dinaserf', '2017-06-23 21:08:19', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', '8aff5677-c52f-7d82-3237-5911fcc9c488', '<p>Buenas tardes, la presente es para notificar que tengo problemas con mi clave de acceso al CRM con el login de Coordinador CC no me toma la clave ni me deja enviar el correo por olvido de la clave, por esta razon requiero el reseteo de la misma o me indiquen la clave.</p>\r\n<div>&nbsp;</div>\r\n<div>Saludos Cordiales,</div>\r\n<div><br clear=\"all\" />\r\n<div>\r\n<div class=\"gmail_signature\" data-smartmail=\"gmail_signature\">\r\n<div dir=\"ltr\">\r\n<div dir=\"ltr\">\r\n<div dir=\"ltr\">\r\n<div dir=\"ltr\">\r\n<div dir=\"ltr\">\r\n<div dir=\"ltr\">\r\n<div dir=\"ltr\">\r\n<div dir=\"ltr\">\r\n<div dir=\"ltr\">\r\n<div dir=\"ltr\">\r\n<div dir=\"ltr\">\r\n<div dir=\"ltr\"><span><span style=\"color: #0000ff;\"><strong><em>Luis Alfredo D\' Gregorio F.</em></strong></span></span>\r\n<div><span><strong><span style=\"color: #0000ff;\">Coordinador Call Center</span></strong></span></div>\r\n<div><strong><span style=\"color: #0000ff;\">G<span>rupo Dinaserf C.A.</span></span></strong></div>\r\n<div><strong><span style=\"color: #0000ff;\">Tel&eacute;fonos: 0416-4061976 / 0212-7932267 / 0212-7932237</span></strong></div>\r\n<div><span><span style=\"color: #0000ff;\"><strong>Web:<span style=\"text-decoration: underline;\"> <a href=\"http://www.dinaserf.com/\" target=\"_blank\">www.dinaserf.com</a></span></strong></span></span></div>\r\n<div><span style=\"color: #0000ff;\"><em>&nbsp;</em></span></div>\r\n<div><span style=\"color: #0000ff;\"><em>&nbsp;</em></span><img src=\"https://mail.google.com/mail/u/0/?ui=2&ik=3034c0baf0&view=fimg&th=15c0c6dcfba9af2c&attid=0.1&disp=inline&realattid=f_j2q77y2p0&safe=1&attbid=ANGjdJ_1wpXSfzIOdWewU75nY2utVxIEWr2ej5r3SSiS32uhCkjzzI0Fm_YyeqSxUe4kstW_05K7EUoEJ4LyDINO0-XIi82rz77nzmI_ix6oQ6GSZEcBE4Qna0FbyZA&ats=1494860307822&rm=15c0c6dcfba9af2c&zw&sz=w1600-h794\" alt=\"Mostrando Firmas grupo Dinaserf.jpg\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, '392003a9-b9b0-05cf-1c16-5911f5143e69', 22, 'Administration', 'Closed_Closed', 'P1', 'Buenos días,\r\n\r\nSr. D\' Gregorio su clave fue restaurada. Para acceder utilice las siguientes credenciales:\r\n\r\n    Usuario: CoordinadorCC\r\n    Clave: D1n4s3rf_2017', NULL, '', 'Closed', ''),
('79de9740-8e43-5ff1-4deb-59972f56c144', 'PROYECTO (QUIERO UN PAIS)', '2017-08-18 18:17:00', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p><span>&nbsp;Quiero un Pa&iacute;s y aun tienen algunos peque&ntilde;os detalles que se quisiera revisar.</span></p>', 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 30, 'Administration', 'Open_Assigned', 'P2', NULL, NULL, '', 'Open', ''),
('7e7f08c5-8c8d-d0cb-b70a-59307adcc362', 'Diseño de Logotipo', '2017-06-01 20:36:51', '2018-12-15 18:38:36', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<p>Buenas tardes,</p>\r\n<p>Por favor Alejandro ma&ntilde;ana en la ma&ntilde;ana, antes del mediodia enviar 3 opciones al cliente.</p>', 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 7, 'Administration', 'Open_Assigned', 'P1', NULL, NULL, '', 'Open', ''),
('91e9964a-a58c-d6fc-2f73-59492747c628', 'Categoría desaparecida', '2017-06-20 13:48:27', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', '<p><span>Buenos d&iacute;as,</span><br /><br /><span>Estoy cambiando las im&aacute;genes de las subcategorias de asesor&iacute;as (estoy subiendo poco a poco las fotos para identificarlas) y he perdido la de asesoria de porteo.</span><br /><br /><span>Deber&iacute;a aparecer en el men&uacute; de asesor&iacute;as pero no la encuentro all&iacute;.</span></p>', 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 19, 'Administration', 'Closed_Closed', 'P1', 'Se le asigno Asesori de porteo a Servicios y asi se muestra donde el cliente quiere, naturalmente estaba asi pero quizas ella modificando lo cambio', NULL, '', 'Closed', ''),
('a01ec9be-e6ae-b952-b18c-59492856b298', 'Usuario y clave de Administrador', '2017-06-20 13:51:02', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', '<div class=\"gmail_default\">Buenas tardes Rihard, espero est&eacute;s bien.</div>\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n<div class=\"gmail_default\">Abril y yo, estamos atentas a recibir la clave y el usuario para acceder en calidad de administrador a la p&aacute;gina web.&nbsp;</div>\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n<div class=\"gmail_default\">Agradecida no la puedas enviar lo m&aacute;s pronto posible,&nbsp;</div>\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n<div class=\"gmail_default\">Saludos.&nbsp;</div>', 1, '8aff5677-c52f-7d82-3237-5911fcc9c488', 20, 'Administration', 'Open_Assigned', 'P1', NULL, NULL, '', 'Open', ''),
('a99d7dab-4142-b3ce-a0c0-59442f682c30', 'Artículo para mi blog', '2017-06-16 19:18:43', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', '<div>Hola Alberto, podr&iacute;as colgar este art&iacute;culo en mi blog.</div>\r\n<div>&nbsp;</div>\r\n<div>A partir de ahora escribir&eacute; con una frecuecia mensual y seguramente ser&aacute; ya nuerstro nuevo proveedor qui&eacute;n nos brinde el apoyo.</div>\r\n<div>&nbsp;</div>\r\n<div>Aprovecho para darte las gracias por el apoyo que nos has brindado en este tiempo.&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>Por aqu&iacute; estamos a tu orden y espero que volvamos a coincidir en otra oportunidad.</div>\r\n<div>&nbsp;</div>\r\n<div>&Eacute;xitos Alberto.</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<p><a href=\"http://www.elmundo.com.ve/firmas/moises-bittan/escuelas-kipp--mayor-dedidacion-al-aprendizaje.aspx\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=http://www.elmundo.com.ve/firmas/moises-bittan/escuelas-kipp--mayor-dedidacion-al-aprendizaje.aspx&source=gmail&ust=1497726275198000&usg=AFQjCNF-lhVYO_09CbNGgLd8dx-eIZqGcg\">http://www.elmundo.com.ve/firmas/moises-bittan/escuelas-kipp--mayor-dedidacion-al-aprendizaje.aspx</a></p>', 1, '392003a9-b9b0-05cf-1c16-5911f5143e69', 16, 'Administration', 'Closed_Closed', 'P2', 'Montado el artículo', NULL, '', 'Closed', ''),
('aa4c29a7-136f-3115-9972-59949a9548da', 'MODIFICACIONES SOLICITADAS POR EGERENTE', '2017-08-16 19:17:25', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<div>1.-en la pagina inicio en el bloque de \"Suscribete a Nuestros Boletines\" el bot&oacute;n falt&oacute; corregir lo del bot&oacute;n ya no se ve por que esta inicialmente negro. &nbsp;</div>\r\n<div>-->Lo mismo sucede en el menu Nosotros-->Sobre Nososotros &nbsp;en el bloque de \"Cont&aacute;ctanos para m&aacute;s Informaci&oacute;n\"</div>\r\n<div>-->Tambien falta modificar el bot&oacute;n en Servicios-->FITness Financiero en el bloque de \"Cont&aacute;ctanos para m&aacute;s Informaci&oacute;n\"</div>\r\n<div>--> Igual en Coaching-->Espacios NeuroReflexivos en el bloque \"Cont&aacute;ctanos para m&aacute;s Informaci&oacute;n\"</div>\r\n<div>--> LiteForex-->Acerca de Lite Forex en el Bloque \"Conviertase en miembro del Club\"</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp;</div>\r\n<div>2.- El el menu Servicio-->Coaching &nbsp; cuando uno hace click en \"leer m&aacute;s\" de cualquiera de los entrenamientos de NeuroCoaching al abrir el contenido no se muestra la im&aacute;gen de cada uno de los entrenamientos.</div>\r\n<div>&nbsp;</div>\r\n<div>3.- &nbsp;Cuando se va al portal &nbsp;News E-GERENTE &nbsp;en la pesta&ntilde;a de navegaci&oacute;n aparece como NEWS E-GERENTES.... con una S al final que no corresponde y si te posicionas sobre la pesta&ntilde;a hace menci&oacute;n a la p&aacute;gina de la Oruga</div>\r\n<div>&nbsp;</div>\r\n<div>4.- Se sigue presentando el problema con el componente SP PAGE BUILDER, en lo quew respecta a que presenta conflictos con el editor de texto, es decir el mismo problema segun las ultimas im&aacute;genes que te envi&eacute;.</div>\r\n<p>&nbsp;</p>', 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 27, 'Administration', 'Closed_Closed', 'P1', 'Se le realizaron los cambios solicitados por el cliente ', NULL, '', 'Closed', ''),
('b4d62ef5-94cc-28aa-00ef-59441ae5c98d', 'Prueba ', '2017-06-16 17:52:34', '2017-07-04 13:31:29', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 15, 'Administration', 'Closed_Closed', 'P1', NULL, NULL, '15a4dd96-9b8d-fc46-fc9d-5941468dd107', 'Closed', ''),
('b7d33bb8-8a2d-b23a-4868-59ad6fe1b863', 'INFORMACION DE MOVIMIENTO URBANO DE RADIO AZUCAR', '2017-09-04 15:21:06', '2017-09-04 15:22:13', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p><span>JUNTO CON SALUDARLO Y EN &nbsp; RELACI&Oacute;N &nbsp;A LA &nbsp;NUEVA &nbsp;INFORMACI&Oacute;N DE NUESTRO &nbsp;PROGRAMA MOVIMIENTO URBANO &nbsp;EN &nbsp;LA &nbsp;WEB &nbsp;DE &nbsp;RADIO &nbsp;AZ&Uacute;CAR Y LAS &nbsp;PROMOCIONES DE &nbsp;FACEBOOK. LE &nbsp;ENVIO LA &nbsp;SIGUIENTE &nbsp;INFORMACI&Oacute;N,</span></p>\r\n<p><span>(<span>Agregar este evento en el slideshow principal y publicitar en gran manera en las redes sociales)</span></span></p>', 1, 'aa556237-4b1e-57ef-b6ab-594419f727b2', 37, 'Administration', 'Closed_Closed', 'P2', '', NULL, '5b2d4eb5-2c36-2575-6fc4-594146fdae56', 'Closed', NULL),
('bae6e80d-5bbc-0ab8-dffb-593094c41ae4', 'Correcciones al Portal Web', '2017-06-01 22:26:11', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<p>Buenos dias, Alexander segun lo acordado te envio las correcciones de la pagina Web de DInaserf, cualquier duda o comentario por favor me lo indicas, gracias.</p>\r\n<div>Saludos Cordiales,</div>\r\n<div>***********************</div>\r\n<div>El correo fue enviado con el contenido.</div>', 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 9, 'Administration', 'Closed_Closed', 'P2', 'Se hicieron los cambios solicitados por el cliente, solo queda pendiente que el indique las imágenes que quiere actualizar o quitar de la galería', NULL, '', 'Closed', ''),
('bc8d2837-0bb2-04fa-373a-5941468f4e10', 'Imprimir todo En una ventana nueva Claves de caveperu', '2017-06-14 14:20:55', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', '<p>Buenos d&iacute;as,</p>\r\n<div>&nbsp;</div>\r\n<div>A quien corresponda, no recuerdo si ya hice esta solicitud en el pasado y de ser as&iacute;, me disculpo por la reincidencia, pero debo solicitarles&nbsp;<span>&nbsp;los datos de acceso al web ( usuario y clave de joomla) de Caveperu</span></div>\r\n<div><span>&nbsp;</span></div>\r\n<div><span><span><span>En espera de su respuesta, los saludo cordialmente</span></span></span>\r\n<div class=\"yj6qo ajU\">&nbsp;</div>\r\n</div>', 1, '392003a9-b9b0-05cf-1c16-5911f5143e69', 12, 'Administration', 'Closed_Closed', 'P1', NULL, NULL, '', 'Closed', ''),
('be9c5698-86d2-f632-5743-5941469a6e94', 'Solicita modificación formulario de contacto web Radio Azucar', '2017-06-14 14:23:13', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', '<div class=\"gmail_default\">Luis,</div>\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n<div class=\"gmail_default\">Adicional a las solicitudes que ha hecho la gente de Radio Az&uacute;car se incorpora un campo tel&eacute;fono obligatorio. Entonces, tenemos lo siguiente:</div>\r\n<div class=\"gmail_default\">\r\n<ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Integrar el campo tel&eacute;fono. (obligatorio)</span></li>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Integrar el campo Empresas.</span></li>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Integrar el campo Correo electr&oacute;nico.&nbsp;(obligatorio)</span></li>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Integrar el campo Persona Contacto.</span></li>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Mensaje de solicitud.</span></li>\r\n</ul>\r\n<div><span style=\"font-family: verdana, sans-serif;\">Podemos utilizar el Breezing o componente diferente al implementado actualmente.</span></div>\r\n<div><span style=\"font-family: verdana, sans-serif;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: verdana, sans-serif;\">Aprobado los cambios, pueden proceder a realizarlos.</span></div>\r\n<div><span style=\"font-family: verdana, sans-serif;\">&nbsp;</span></div>\r\n<div><span style=\"font-family: verdana, sans-serif;\">Atte.</span></div>\r\n</div>', 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 13, 'Administration', 'Closed_Closed', 'P2', 'Se  creo el formulario de contacto según lo solicitado por el cliente', NULL, '', 'Closed', ''),
('c384488c-cd78-9b87-3d14-59483737b011', 'website', '2017-06-19 20:42:44', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', '<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19779\">Algunos de las cambios que necesita la website</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19757\">&nbsp;</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19781\" dir=\"ltr\">1. quita el programa para bebes de 0-12 month ya no tenemos mas ese programa porque no teniamos mucha demanda asi que si puedes eliminarlo donde aparezca</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19783\" dir=\"ltr\">&nbsp;</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19785\" dir=\"ltr\">2, El horario tambien modificalo donde aparezca de 7am a 5:45 pm en lugar 6:30 am to 6pm&nbsp;</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19787\" dir=\"ltr\">&nbsp;</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19791\" dir=\"ltr\">3. &nbsp;Que agreges en una pestana o en la pantalla principal que estamos muy cerca de la parada del northgate y puedes poner una foto de la para de autobus porque esa es una estacion principal y es una gran ventaja, te adjunto las fotos de la estacion</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19791\" dir=\"ltr\">&nbsp;</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19791\" dir=\"ltr\">4. Que tenemos programa para verano para los ninos que van a la escuela: summer camp registration for july and agust 2017</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19791\" dir=\"ltr\">&nbsp;</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19791\" dir=\"ltr\">5. Que tenemos programa para out of school empezando en septiembre 2017</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19791\" dir=\"ltr\">&nbsp;</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19791\" dir=\"ltr\">6. Eliminar el nino que dice open house en april&nbsp;</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19791\" dir=\"ltr\">&nbsp;</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19791\" dir=\"ltr\">eso por ahora</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19791\" dir=\"ltr\">&nbsp;</div>\r\n<div id=\"m_-7444232582530916700yui_3_16_0_ym19_1_1497899491656_19791\" dir=\"ltr\">&nbsp;gracias</div>', 1, '80343642-e355-1c38-662f-59121e97591e', 18, 'Administration', 'Open_Assigned', 'P1', 'Javier despublique el programa de 0 -12 meses\r\ny cambie el horario donde aparecia son las tareas 1 y 2 de la lista del correo.\r\nla tarea 6 no la hice porque no se a que  imagen es a la que se refieren en el correo, no la ubiqué, y no hallé en la página a un niño que diga open house.', NULL, '', 'Open', ''),
('c77c33ba-ef86-3848-2af5-59bbd2a168bf', 'Detalles administrativos', '2017-09-15 13:17:45', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p><span>los archivos editables o los archivos en lenguaje de programaci&oacute;n o edici&oacute;n del arte que me hicieron llegar, ya que el cliente me pidi&oacute; que le solicitara cotizaci&oacute;n para la impresi&oacute;n de los volantes y tarjetas de presentaci&oacute;n. En ese sentido, no me queda claro algunas cosas:</span></p>\r\n<ol>\r\n<li>El volante es el que aparece identificado como volante; pero la parte de atr&aacute;s del volante cual es ? la direcci&oacute;n de ubicaci&oacute;n ? por favor me podr&iacute;an enviar en un solo archivo o en dos el volante indicando uno volante frente y el otro volante parte de atr&aacute;s, ya que siempre se indic&oacute; que el volante deb&iacute;a tener el mapa de ubicaci&oacute;n del local.</li>\r\n<li>Las tarjetas de presentaci&oacute;n aparecen dos modelos o por lo menos as&iacute; creo que me lo enviaron, por favor me podr&iacute;an indicar si las tarjetas de presentaci&oacute;n estar&aacute;n escritas por la parte de atr&aacute;s ? ya que como debo pedir presupuesto requiero se me indique con precisi&oacute;n en un archivo tarjeta de presentaci&oacute;n frente y en otro tarjeta de presentaci&oacute;n parte de atr&aacute;s, por favor agradecer&iacute;a su colaboraci&oacute;n al respecto y como se indic&oacute; al principio voy a requerir los archivos de dise&ntilde;o gr&aacute;fico para poder mandar hacer la papeler&iacute;a.</li>\r\n<li>El resto de los archivos publicitarios enviados donde se deben usar o para que son ? agradecer&iacute;a me indicaran para darles uso o solicitar cotizaciones para esas impresiones.</li>\r\n</ol>', 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 40, 'Administration', 'Open_Assigned', 'P1', NULL, NULL, '', 'Open', ''),
('c7f3dec2-f085-d89b-9731-59ad6f395634', 'INFORMACION DE MOVIMIENTO URBANO DE RADIO AZUCAR', '2017-09-04 15:21:08', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p><span>JUNTO CON SALUDARLO Y EN &nbsp; RELACI&Oacute;N &nbsp;A LA &nbsp;NUEVA &nbsp;INFORMACI&Oacute;N DE NUESTRO &nbsp;PROGRAMA MOVIMIENTO URBANO &nbsp;EN &nbsp;LA &nbsp;WEB &nbsp;DE &nbsp;RADIO &nbsp;AZ&Uacute;CAR Y LAS &nbsp;PROMOCIONES DE &nbsp;FACEBOOK. LE &nbsp;ENVIO LA &nbsp;SIGUIENTE &nbsp;INFORMACI&Oacute;N,</span></p>\r\n<p><span>(<span>Agregar este evento en el slideshow principal y publicitar en gran manera en las redes sociales)</span></span></p>', 1, 'aa556237-4b1e-57ef-b6ab-594419f727b2', 38, 'Administration', 'Closed_Closed', 'P2', NULL, NULL, '', 'Closed', ''),
('ca594cab-0c3c-9be8-19e1-5994a74dfa44', 'CORRECIONES DE AVANCES CARDIOLOGICOS', '2017-08-16 20:14:59', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p>No se visualizan los autores, no est&aacute; la opci&oacute;n de descargar PDF y las im&aacute;genes no abren y en algunos, no corresponden. Pendiente los errores en los t&iacute;tulos y nombres de autores (detallado en el reporte anterior y de suma importancia) y el acceso al n&uacute;mero desde todas las entradas.<br />Nos mantendremos pendiente.</p>', 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 28, 'Administration', 'Closed_Closed', 'P2', 'Se realizaron todas las modificaciones solicitadas por nel clientes, esta vez pasaron tantos errores por el problemas que a ellos se le presento al cargar los contenidos de las ediciones, se tuvo que transcribir uno a uno los autores para luego cargarlos en cada uno de los articulos, ya que ellos no los mandaron  y tampoco lo montaron que ellos lo hacían anteriormente .\r\nDe igual forma se le dio la respuesta al cliente esperando su verificación', NULL, '', 'Closed', ''),
('cc157680-3553-af99-0f9b-59441a651b24', 'prueba', '2017-06-16 17:50:46', '2017-07-04 13:31:29', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'e15f7895-d759-e10d-e6d4-59121d13beb0', '<p>Prueba</p>', 1, 'aa556237-4b1e-57ef-b6ab-594419f727b2', 14, 'Administration', 'Closed_Closed', 'P1', NULL, NULL, '1eb1a057-6392-af1b-d728-59301475db56', 'Closed', ''),
('cf70a052-5d14-4397-1beb-59306a05ee86', 'Página Web de Tecnomed', '2017-06-01 19:28:57', '2018-12-15 18:38:36', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<p>Estimada Kenia, revisando la p&aacute;gina Web de Tecnomed, quiero manifestar lo siguiente:</p>\r\n<p>La p&aacute;gina est&aacute; posicionada en Google como primera opci&oacute;n, sin embargo, la misma sigue con errores que sin duda afecta la interacci&oacute;n con nuestros &nbsp;prospectos y/o futuros clientes, al encontrarse con lo que describo a continuaci&oacute;n. Quisiera que por favor solicitaras un reuni&oacute;n con las personas responsables en TS Talent y poder llegar a un acuerdo de c&oacute;mo vamos a manejar de manera eficiente dicha situaci&oacute;n, el prop&oacute;sito siempre ser&aacute; una relaci&oacute;n ganar-ganar.</p>\r\n<p>P.D No puedo asegurar que sean los &uacute;nicos errores, no termine de revisar la p&aacute;gina.</p>\r\n<p>********************</p>\r\n<p>&nbsp;</p>', 1, '392003a9-b9b0-05cf-1c16-5911f5143e69', 4, 'User', 'Closed_Closed', 'P1', 'Kenia\r\n\r\nYa se corrigio el registro de usuario. Aparecía un bloqueo porque debía habilitarse el proceso de registro y uds identificar o enviar que áreas de las que estan desarrolladas o van a desarrollarse van a ser para los clientes registrados y cuales para el cliente publico.\r\n\r\nHice el registro de tu cuenta y este fue hecho sin problemas. En tu correo debe estar el enlace que lo certifique. Por favor confirmarlos\r\n\r\nLo de la sección de compra y venta y soporte técnico fue tratado en correo anterior.\r\n\r\nEn cuanto al punto 5 hay una captura de pantalla del área de consultorías y ella lo describe como \"errores de transcripción\". PAra que haya un error de transcripción debe haber una fuente, y la fuente del desarrollo de ese contenido no es publico, fue un documento de prueba hecho por nuestro departamento técnico para que uds explotarn como negocio el modelo de asesoría, y sirviera como base para el trabajo de comercialización.\r\n\r\nAsí que si Ayari aclara mejopr ese punto se corregirá. En cuanto a los equipos se le colocara la existencia. Un detalle en el proceso de carga.', NULL, '', 'Closed', '');
INSERT INTO `cases` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `case_number`, `type`, `status`, `priority`, `resolution`, `work_log`, `account_id`, `state`, `contact_created_by_id`) VALUES
('cf95fc62-1c1d-3231-e719-594145a097ca', 'Cambios en la pagina', '2017-06-14 14:17:25', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', '<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16560\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16561\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16562\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16563\"><a href=\"http://adoptavenezuela.com/\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=http://ADOPTAVENEZUELA.COM&source=gmail&ust=1497535559152000&usg=AFQjCNFVfvog-0QQwjjouh_sZGWooQGkdg\">ADOPTAVENEZUELA.COM</a></span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16564\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16565\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16566\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16567\" lang=\"ES-VE\">Nosotros: Adoptavenezuela.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16569\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16570\">com</span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16571\" lang=\"ES-VE\">&nbsp;es un Proyecto realizado en conjunto con la Casa de la Cultura Venezolana en Nueva York para colaborar con las fundaciones&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16573\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16574\">Fundana</span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16575\" lang=\"ES-VE\">, Hogar Casa de Ana y Sonar Despierto Caracas</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16577\" lang=\"ES-VE\">&nbsp;que se encuentran en Venezuela y que requieren de asistencia para poder m</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16579\" lang=\"ES-VE\">antener la calidad de vida de los ni&ntilde;os y adolescentes de estas instituciones</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16581\" lang=\"ES-VE\">.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16583\" lang=\"ES-VE\">&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16585\" lang=\"ES-VE\">&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16587\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16588\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16589\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16590\" lang=\"ES-VE\">Misi&oacute;n</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16592\" lang=\"ES-VE\">:&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16594\" lang=\"ES-VE\">esta&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16596\" lang=\"ES-VE\">p&aacute;gina</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16598\" lang=\"ES-VE\">&nbsp;esta creada con el prop&oacute;sito de colaborar con los hermanos venezolano</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16600\" lang=\"ES-VE\">s</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16602\" lang=\"ES-VE\">&nbsp;que en estos momentos se encuentran en una situaci&oacute;n socioecon&oacute;mica dif&iacute;cil en el pa&iacute;s. De acuerdo al gran&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16604\" lang=\"ES-VE\">n&uacute;mero</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16606\" lang=\"ES-VE\">&nbsp;de venezolanos que se encuentran fuera de las fronteras&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16608\" lang=\"ES-VE\">del pa&iacute;s&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16610\" lang=\"ES-VE\">muchos de ellos desean colaborar con las personas que se encuentran&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16612\" lang=\"ES-VE\">all&aacute;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16614\" lang=\"ES-VE\">, de igual forma personas de otras nacionalidades tambi&eacute;n se sensibilizan con lo que&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16616\" lang=\"ES-VE\">est&aacute;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16618\" lang=\"ES-VE\">&nbsp;sucediendo en el pa&iacute;s y desean brindar colaboraci&oacute;n</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16620\" lang=\"ES-VE\">. En relaci&oacute;n a esta&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16622\" lang=\"ES-VE\">solicitud</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16624\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16625\">&nbsp;de muchas personas para colaborar en Venezuela se desarrolla este proyecto de&nbsp;<a href=\"http://adoptavenezuela.com/\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=http://adoptavenezuela.com&source=gmail&ust=1497535559152000&usg=AFQjCNEs0dTYd17VwLSfsGuUIgmKP6AgtQ\">adoptavenezuela.com</a></span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16626\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16627\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16628\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16629\" lang=\"ES-VE\">Visi&oacute;n</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16631\" lang=\"ES-VE\">: con&nbsp;<a href=\"http://adoptavenezuela.com/\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=http://adoptavenezuela.com&source=gmail&ust=1497535559152000&usg=AFQjCNEs0dTYd17VwLSfsGuUIgmKP6AgtQ\">adoptavenezuela.com</a>&nbsp;se quiere lograr que las personas que se encuentran fuera del pa&iacute;s puedan brindar colaboraci&oacute;n a sus hermanos venezolanos y que las fundaciones a las cuales se les brinda apoyo puedan prestar un servicio de calidad a los integrantes de dichas fundaciones.&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16633\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16634\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16635\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16636\" lang=\"ES-VE\">Para La&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16638\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16639\">Seccion</span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16640\" lang=\"ES-VE\">&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16642\" lang=\"ES-VE\">de La Cultura con su Logo dentro de la Web.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16644\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16645\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16646\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16647\" lang=\"ES-VE\">Sobre la Casa de la Cultura Venezolana en Nueva York&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16649\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16650\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16651\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16652\" lang=\"ES-VE\">&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16654\" lang=\"ES-VE\">La Casa de la cultura venezolana en Nueva York es una organizaci&oacute;n sin fines de lucros creada en el a&ntilde;o 2017 por y para los venezolanos que actualmente viven en la Ciudad de Nueva York (USA). Esta iniciativa surge ya que en la actualidad la poblaci&oacute;n venezolana se ha incrementado, por tal raz&oacute;n se gesta un espacio de encuentro para los venezolanos.&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16656\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16657\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16658\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16659\" lang=\"ES-VE\">Nuestra misi&oacute;n es fortalecer la cultura venezolana fuera de nuestras fronteras. Promover diversos movimientos art&iacute;sticos y culturales. Generar un espacio plural para la poblaci&oacute;n venezolana. Fomentar y dar a conocer el talento venezolano. Brindar informaci&oacute;n de inter&eacute;s para la comunidad.&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16661\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16662\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16663\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16664\" lang=\"ES-VE\">Dentro de nuestros objetivos tenemos:</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16666\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16667\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16668\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16669\" lang=\"ES-VE\">Establecer alianzas con grupos venezolanos que compartan nuestra misi&oacute;n.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16671\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16672\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16673\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16674\" lang=\"ES-VE\">Brindar un espacio donde se puedan desarrollar movimientos art&iacute;sticos y culturales.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16676\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16677\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16678\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16679\" lang=\"ES-VE\">Fomentar la cultura venezolana fuera del pa&iacute;s.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16681\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16682\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16683\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16684\" lang=\"ES-VE\">Realizar talleres en la diversas manifestaciones art&iacute;sticas y culturales.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16686\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16687\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16688\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16689\" lang=\"ES-VE\">Organizar eventos donde se destaque el talento venezolano.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16691\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16692\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16693\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16694\" lang=\"ES-VE\">Apoyar el emprendimiento (empresarial, art&iacute;stico, cultural, social).</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16696\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16697\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16698\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16699\" lang=\"ES-VE\">Brindar informaci&oacute;n sobre la comunidad venezolana.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16701\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16702\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16703\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16704\" lang=\"ES-VE\">Realizar actividades de responsabilidad social.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16706\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16707\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16708\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16709\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16710\"></span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16711\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16712\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16713\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16714\" lang=\"ES-VE\">Fundaciones:</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16716\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16717\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16718\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16719\"></span><a id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16720\" href=\"http://www.fundana.org/\" rel=\"noreferrer\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=http://www.fundana.org/&source=gmail&ust=1497535559152000&usg=AFQjCNFrzLfW-kteNSRCFOF7irz6AKpWdg\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16721\" lang=\"ES-VE\">http://www.fundana.org/</span></a><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16723\"></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16724\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16725\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16726\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16727\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16728\"></span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16729\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16730\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16731\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16732\"></span><a id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16733\" href=\"http://fundacionlacasadeana.blogspot.com/2009/08/bienvenidos-la-fundacion-la-casa-de-ana.html\" rel=\"noreferrer\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=http://fundacionlacasadeana.blogspot.com/2009/08/bienvenidos-la-fundacion-la-casa-de-ana.html&source=gmail&ust=1497535559152000&usg=AFQjCNFqJ_6eT1XSevH-Ab5hSUkallw8hw\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16734\" lang=\"ES-VE\">http://fundacionlacasadeana.blogspot.com/2009/08/bienvenidos-la-fundacion-la-casa-de-ana.html</span></a><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16736\"></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16737\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16738\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16739\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16740\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16741\"></span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16742\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16743\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16744\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16745\"></span><a id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16746\" href=\"https://www.facebook.com/sdcaracas/\" rel=\"noreferrer\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=https://www.facebook.com/sdcaracas/&source=gmail&ust=1497535559152000&usg=AFQjCNFcr6wMsFask0G4DuIMcq6th3oxgw\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16747\" lang=\"ES-VE\">https://www.facebook.com/sdcaracas/</span></a><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16749\"></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16750\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16751\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16752\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16753\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16754\"></span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16755\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16756\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16757\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16758\" lang=\"ES-VE\">Im&aacute;genes</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16760\" lang=\"ES-VE\">&nbsp;Web:</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16762\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16763\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16764\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16765\" lang=\"ES-VE\">Colocar Im&aacute;genes mas Neutrales y de&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16767\" lang=\"ES-VE\">colaboraci&oacute;n</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16769\" lang=\"ES-VE\">.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16771\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16772\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16773\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16774\" lang=\"ES-VE\">Im&aacute;genes</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16776\" lang=\"ES-VE\">&nbsp;de&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16778\" lang=\"ES-VE\">ni&ntilde;os</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16780\" lang=\"ES-VE\">, adolescentes, enfermeras cuidando&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16782\" lang=\"ES-VE\">un toque especial.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16784\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16785\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16786\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16787\" lang=\"ES-VE\">Apoyarnos con im&aacute;genes de las Fundaciones...</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16789\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16790\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16791\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16792\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16793\"></span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16794\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16795\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16796\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16797\" lang=\"ES-VE\">Referencias de fotos:</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16799\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16800\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16801\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16802\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16803\"><a href=\"http://www.istockphoto.com/photos/charity-children?excludenudity=true&phrase=charity%20children&sort=best\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=http://www.istockphoto.com/photos/charity-children?excludenudity%3Dtrue%26phrase%3Dcharity%2520children%26sort%3Dbest&source=gmail&ust=1497535559153000&usg=AFQjCNHfcHkdA9dH52B-D6JWA0graa1zCQ\">http://www.istockphoto.com/photos/charity-children?excludenudity=true&phrase=charity%20children&sort=best</a></span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16804\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16805\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16806\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16807\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16808\"></span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16809\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16810\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16811\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16812\" lang=\"ES-VE\">Dentro de la pagina se puede colocar una foto y una breve&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16814\" lang=\"ES-VE\">rese&ntilde;a</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16816\" lang=\"ES-VE\">&nbsp;de las fundaciones a las cuales se le esta prestando la ayuda.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16818\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16819\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16820\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16821\" lang=\"ES-VE\">No colocar fotos que tengan que ver con pastillas o medicinas.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16823\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16824\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16825\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16826\" lang=\"ES-VE\">Todo que tenga que ver mas de personas, compartir, ayuda....</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16828\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16829\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16830\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16831\" lang=\"ES-VE\">En vez de Nuestros Aliados pondremos Nuestros Beneficiarios.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16833\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16834\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16835\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16836\" lang=\"ES-VE\">Y&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16838\" lang=\"ES-VE\">all&iacute;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16840\" lang=\"ES-VE\">&nbsp;se colocara la foto de&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16842\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16843\">de</span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16844\" lang=\"ES-VE\">&nbsp;las fundaciones y un poco explicando lo que son cada una de ellas..</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16846\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16847\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16848\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16849\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16850\"></span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16851\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16852\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16853\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16854\" lang=\"ES-VE\">Comentario adicional en la parte de donaciones:</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16856\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16857\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16858\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16859\" lang=\"ES-VE\">Debido al Control Cambiario que existe en Venezuela AdoptaVenezuela.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16861\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16862\">com</span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16863\" lang=\"ES-VE\">&nbsp;permite que tus donaciones monetarias se transformen en&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16865\" lang=\"ES-VE\">art&iacute;culos</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16867\" lang=\"ES-VE\">&nbsp;que estas fundaciones requieren.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16869\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16870\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16871\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16872\" lang=\"ES-VE\">ELIMINAR LA SECCION QUE DICE ULTIMAS NOTICIAS Y COLOCAR LO DE LOS BENEFICIARIOS.</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16874\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16875\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16876\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16877\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16878\"></span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16879\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16880\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16881\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16882\" lang=\"EN-US\">Nuestra&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16884\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16885\">Ubicaci&oacute;n</span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16886\">&nbsp;</span></div>\r\n</div>\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16887\">\r\n<div id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16888\" lang=\"EN-US\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16889\" lang=\"ES-VE\">La Casa de la Cultura Venezolana en Nueva York,&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16891\" lang=\"ES-VE\">esta ubicado en una accesible calle en&nbsp;30-16&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16893\" lang=\"ES-VE\"><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16894\">Steinway</span></span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16895\" lang=\"ES-VE\">&nbsp;Street, Astoria NY, es el lugar ideal para el encuentro y realizar eventos, ya que contamos con&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16897\" lang=\"ES-VE\">c&oacute;modas</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16899\" lang=\"ES-VE\">&nbsp;instalaciones donde&nbsp;</span><span id=\"m_8254239434113231275yui_3_16_0_1_1497405453175_16901\" lang=\"ES-VE\">podr&aacute;n</span></div>\r\n</div>', 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 11, 'Administration', 'Closed_Closed', 'P2', 'Se espera respuesta del cliente en cuanto a unas imágenes  de los voluntarios  y  el id de paypal para la configuración  ', NULL, '', 'Closed', ''),
('d586014a-a106-d115-b782-59bbd16ca47f', 'Faltantes (New Hope ESL)', '2017-09-15 13:11:01', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Queda pendiente &uacute;nicamente mejorarle la secci&oacute;n de programas en sus tres test con sus etapas. Por ello, detallar&eacute; por programa uno a uno lo que se debe hacer:</span></li>\r\n<ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\"><strong>CLBEnglish</strong>, se cambia el nombre a Canadian Language Benchmarks English (Solamente el cambio de nombre), por lo que debemos modificar tanto la secci&oacute;n como el art&iacute;culo K2 que tenemos con el contenido completo de esta informaci&oacute;n.</span></li>\r\n<ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Banner para header que diga&nbsp;CLB ASSESSMENT.</span></li>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Quiere que utilicemos aqu&iacute;&nbsp;<a href=\"https://goo.gl/R7w3Hf\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=https://goo.gl/R7w3Hf&source=gmail&ust=1505565478464000&usg=AFQjCNGJGWWZ1QND1Jz8yKSRyxRa7zhoYA\">https://goo.gl/R7w3Hf</a>&nbsp;el m&eacute;todo de Eventos donde lo listamos en SP LMS Pero, que le cambiemos los colores, algo que ya avanzamos, tendr&iacute;amos te sugiero que hagamos un SP Builder de 2+8 (dos columnas) y de all&iacute; utilicemos los colores que ya hiciste, este podr&iacute;a encargarme yo si tienes dudas.</span></li>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Ac&aacute; debemos agregar en cualquier parte el test de preparaci&oacute;n con el logo de esta instituci&oacute;n:&nbsp;</span></li>\r\n<ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Logo:&nbsp;<a href=\"https://larcc.cssalberta.ca/\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=https://larcc.cssalberta.ca/&source=gmail&ust=1505565478464000&usg=AFQjCNEaWS_sofskCR4TeGuQLybLtTnQpw\">https://larcc.cssalberta.ca/</a></span></li>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Enlace del test:&nbsp;<a href=\"https://larcc.cssalberta.ca/Contact-Us\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=https://larcc.cssalberta.ca/Contact-Us&source=gmail&ust=1505565478464000&usg=AFQjCNEpqtRQXmFTaSuLuxQqU29VpfxV-Q\">https://larcc.cssalberta.ca/Contact-Us</a>&nbsp;(El bot&oacute;n debe decir: Test Center).</span></li>\r\n</ul>\r\n</ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\">CELPIP GENERAL: Aqu&iacute; se mantiene la informaci&oacute;n pero que hagamos algo similar al m&eacute;todo de evento, esto en las tablas de todos los programas... &eacute;l quiere que en visual se vea m&aacute;s atractivo y no una tabla anticuada como la que mostramos,&nbsp;<strong>recuerda que las tablas tienen enlaces, por lo que debe verse de la forma que expliqu&eacute; en CLBEnglish, pero debemos mantener en todas las tablas los enlaces activos.</strong></span></li>\r\n<ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Colocar tal cual en cada nivel:&nbsp;</span></li>\r\n<ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\">CLB 4-5/ Required for some immigration and citizenship.</span></li>\r\n<li><span style=\"font-family: verdana, sans-serif;\">CLB 5-6/ required for Canadian Experience Class and Federal Skilled Trades Program.</span></li>\r\n<li><span style=\"font-family: verdana, sans-serif;\">CLB 7-9/ Required for Federal Skilled Worker Program.<br /></span></li>\r\n</ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Agregar el logo del CIC y el enlace siguiente:&nbsp;<a href=\"http://www.cic.gc.ca/english/immigrate/skilled/apply-who-express.asp\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=http://www.cic.gc.ca/english/immigrate/skilled/apply-who-express.asp&source=gmail&ust=1505565478465000&usg=AFQjCNHIGvFzYzo5JaNj4U-ztDzOpaM71g\">http://www.cic.gc.ca/english/immigrate/skilled/apply-who-express.asp</a></span></li>\r\n<li><span style=\"font-family: verdana, sans-serif;\">La p&aacute;gina est&aacute; en K2:&nbsp;<a href=\"https://goo.gl/fB5iGa\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=https://goo.gl/fB5iGa&source=gmail&ust=1505565478465000&usg=AFQjCNECTS_UNoKK72L3_0s7pkVLI8T-Ow\">https://goo.gl/fB5iGa</a></span></li>\r\n</ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\"><strong>IELTS ACADEMIC:&nbsp;</strong>Estos cambios me lo dejan a mi,&nbsp;&nbsp;keep original page information, just make it more like the other new pages; remove the table; under the New Hope ESL advantage, change to-Full review of Cambridge official tests./ change to-Focus on development of academic ideas for written and oral sections./;&nbsp;</span></li>\r\n<ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Hagan este cambio: agregar el logo y enlace de la siguiente p&aacute;gina (<a href=\"http://ieltsedmonton.com/\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=http://ieltsedmonton.com/&source=gmail&ust=1505565478465000&usg=AFQjCNFkZHFLnHqqujjUy1p-k7LyjNaa0g\">http://ieltsedmonton.com</a><span>/).</span></span></li>\r\n<li><span style=\"font-family: verdana, sans-serif;\"><span>La p&aacute;gina est&aacute; en K2:&nbsp;</span><a href=\"https://goo.gl/usqXE3\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=https://goo.gl/usqXE3&source=gmail&ust=1505565478465000&usg=AFQjCNEBBrUnVoFY3S5WkSD7UZ7SQV7CLQ\">https://goo.gl/usqXE3</a></span></li>\r\n</ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\"><strong>PROFESSIONAL ENGLISH PROGRAMS</strong>, colocar im&aacute;genes m&aacute;s atractivas del &aacute;rea profesional donde se estar&aacute;n desarrollando iconos &uacute;nicos para cada programa sin repetirlos y fondo de imagen alusivos al tema.<br /></span></li>\r\n<ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Cambiar el bot&oacute;n de courses schedules y que vaya al breezing form:&nbsp;Contact for a full program overview</span></li>\r\n</ul>\r\n</ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\">Ahora bien, en la secci&oacute;n de servicios debemos hacer estas peque&ntilde;as modificaciones y quedamos listo:</span></li>\r\n<ul>\r\n<li><span style=\"font-family: verdana, sans-serif;\"><strong>START IN CANADA:</strong>&nbsp;Agregar un enlace con que lleve a la web con el siguiente nombre:&nbsp;<strong>Link to study permit information</strong>&nbsp;(<a href=\"http://www.cic.gc.ca/english/study/study-who.asp\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=http://www.cic.gc.ca/english/study/study-who.asp&source=gmail&ust=1505565478465000&usg=AFQjCNHLkFqxEklkzx3FFUBh2-iY1XfY2w\">http://www.cic.gc.ca/english/study/study-who.asp</a>)</span></li>\r\n<li><span style=\"font-family: verdana, sans-serif;\"><strong>WORK IN CANADA:</strong>&nbsp;Agregar un enlace con que lleve a la web con el siguiente nombre:&nbsp;<strong>L</strong><strong>ink to working in canada</strong>&nbsp;(<a href=\"http://www.cic.gc.ca/english/work/index.asp\" target=\"_blank\" data-saferedirecturl=\"https://www.google.com/url?hl=es&q=http://www.cic.gc.ca/english/work/index.asp&source=gmail&ust=1505565478465000&usg=AFQjCNHijDTc6kSZzeZ3GTX1GDWB7HjvMg\">http://www.cic.gc.ca/english/work/index.asp</a>)</span></li>\r\n</ul>\r\n</ul>', 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 39, 'Administration', 'Open_Assigned', 'P1', NULL, NULL, '', 'Open', ''),
('d7a561bc-65dd-db52-1901-599703bf8410', 'CORREGIR EL EDITORIAL PUBLICADO EN LA PAGINA WEB', '2017-08-18 15:09:44', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p><span>Requiero de sus gentiles atenciones para corregir el editorial publicado en la pagina web de la sociedad titulado:\" EL CAP&Iacute;TULO CIENT&Iacute;FICO EN CARDIO-ONCOLOG&Iacute;A DE LA SOCIEDAD VENEZOLANA DE CARDIOLOG&Iacute;A\".</span></p>', 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 29, 'Administration', 'Closed_Closed', 'P2', NULL, NULL, '', 'Closed', ''),
('e48865d9-1079-8b59-5451-59a57680b90d', 'CARGA DE IMAGENES', '2017-08-29 14:12:11', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<div class=\"gmail_default\">En la secci&oacute;n de Nuestro Equipo:</div>\r\n<div class=\"gmail_default\">- WA0010 y WA0013: Junior Celaimy (Director General)</div>\r\n<div class=\"gmail_default\">- WA0008 y WA0009: Robenson Pierre (Gerente de Log&iacute;stica)</div>\r\n<div class=\"gmail_default\">- Im&aacute;genes adjuntas: Vladimir Volcy (Secretario General)</div>\r\n<div class=\"gmail_default\">- &nbsp;En las im&aacute;genes del evento tom&eacute; varias de perfil de C&eacute;sar Tascon: (Gerente de Finanzas)</div>\r\n<div class=\"gmail_default\">&nbsp;</div>\r\n<div class=\"gmail_default\"><br /><span>Tratar de editar la calidad de las im&aacute;genes, caso contrario, tom&eacute; fotos a ellos en el palco de entrada; por lo que les servir&aacute;n est&aacute;s im&aacute;genes de referencia.</span></div>', 1, '81e37113-55ef-cf8d-f510-594d53e4ebcd', 34, 'Administration', 'Closed_Closed', 'P2', NULL, NULL, '', 'Closed', ''),
('e4a973c6-1aaf-05fc-058c-59945b64e3f7', 'PROBLEMAS CON LOS CORREOS', '2017-08-16 14:48:01', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p>PROBLEMAS CON LOS CORREOS QUE SALEN AUTOMATICAMENTE DESDE EL SERVIDOR LINUX DE LA BASE DE DATOS. NO SE ENVIAN.</p>', 1, '392003a9-b9b0-05cf-1c16-5911f5143e69', 25, 'Administration', 'Closed_Closed', 'P2', 'Buenos días,\r\n\r\nEstimado Oscar, disculpa por lo retrasos, pero yo le dije al equipo que yo lo respondería. Inicialmente y según el correo del amigo que les apoya en la configuración del esquema del correo, infiere un sub-dominio que no está creado (atendiendo a que se puede colocar un re-dirección interna para la configuración del servidor SMTP).\r\n\r\nLa configuración del servidor SMTP se puede hacer bajo conexión segura (recomendada) y bajo conexión no segura. Expongo igual ambas para su consideración, incluyendo no solo la configuración saliente, sino tambien la entrante:\r\n\r\nSecure SSL/TLS Settings (Recomendado)\r\n\r\n    Servidor entrante: \r\n        mail.tecnomedjtrapp.com\r\n        IMAP Port: 993\r\n        POP3 Port: 995\r\n\r\n    Servidor de correo:\r\n        mail.tecnomedjtrapp.com\r\n        SMTP Port: 465\r\n\r\nEs importante recordar, que IMAP, POP3 y SMTP requiere autenticación, por lo que al correo de salida deberán definirle el usuario (con el dominio completo) y la clave, para que a través de él se envién los correos a su clientes, empleados y proveedores (según la configuración del sistema). El esquema sería:\r\n\r\n    Nombre de usuario:     nombre_de_correo@tecnomedjtrapp.com\r\n    Contraseña:     Utilice la contraseña de la cuenta de correo electrónico.\r\n\r\n\r\nConfiguración diferente de SSL (NO se recomienda)\r\n\r\n    Servidor entrante:\r\n        mail.tecnomedjtrapp.com\r\n        IMAP Port: 143\r\n        POP3 Port: 110\r\n\r\n    Servidor de correo:\r\n        mail.tecnomedjtrapp.com\r\n        SMTP Port: 25\r\n\r\nIgaulmente es importante recordar, que IMAP, POP3 y SMTP requiere autenticación, por lo que al correo de salida deberán definirle el usuario (con el dominio completo) y la clave, para que a través de él se envién los correos a su clientes, empleados y proveedores (según la configuración del sistema).\r\n\r\nLo que no puedo explicar es que configuración tenían previamente que les servía, ya que las definiciones enviadas bajo el esquema de servidor actual no funcionarían. Si requieren más detalles o mal interpreté lo solicitado, ser un poco más especifico.\r\n\r\n', NULL, '', 'Closed', ''),
('e68954e9-7a32-1294-d0a6-59305f9f23c2', 'Pagina web de Tecnomed', '2017-06-01 18:37:57', '2018-12-15 18:38:36', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', '<p>Requerimiento:</p>\r\n<p>Buenas Alexander por favor si nos puedes ayudar con la paguna porq aun siguen estando los errores ortogr&aacute;ficos, abajo se detallan nuevamente los inconvenientes.</p>\r\n<p>Por favor que dia podrias reunirte con nosotros?</p>\r\n<p>Gracias y quedo atenta a tus comentarios y la soluci&oacute;n r&aacute;pida de los errores</p>\r\n<p>Saludos</p>\r\n<p>****************************************************************</p>\r\n<p>&nbsp;</p>', 1, '392003a9-b9b0-05cf-1c16-5911f5143e69', 3, 'Administration', 'Closed_Closed', 'P1', 'Buenos tardes,\r\n\r\nKenia ya hay una sección de mantenimiento, esta sección de compra y venta, estaba en razón de esos equipos que les dejaban a ustedes en consignación para venta como equipo usado, pero al entender que no es objetivo de negocio de ustedes, y al pendiente del hecho de que ya había una sección de servicio y mantenimiento, se despublicó la opción del menú y el artículo, modificándose el contenido adicionalmente del Servicio de Mantenimiento con menos detalles y mejor redacción.\r\n\r\nEstoy revisando personalmente si hay otros detalles adicionales a corregir. ', NULL, '', 'Closed', ''),
('f35541bb-2b40-eae0-76dc-599ddde690e9', 'INICIO DE SERVICIOS DE REDES SOCIALES', '2017-08-23 19:55:06', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '<p><br /><span>EcoAseo aprob&oacute; los servicios de soporte y gesti&oacute;n de redes sociales, que iniciaremos el mes pr&oacute;ximo; para ellos crear la cuenta de instagram y twitter, adem&aacute;s recomiendo la cuenta de mercadolibre Chile, todos deben tener el mismo nombre para evitar confusi&oacute;n.</span></p>', 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 31, 'Administration', 'Closed_Closed', 'P2', NULL, NULL, '', 'Closed', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cases_audit`
--

INSERT INTO `cases_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('164c5c4a-30dc-2287-3526-59947bbd82d7', '4e513191-9d31-4e72-4190-59945c46a372', '2017-08-16 17:04:40', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('16e31245-c26e-c677-5eaa-5bc6338d30ed', '31f7258b-30c3-3e9b-e220-59a56b2b7333', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '80a3b177-a08f-ea26-4b50-59a56b317e05', '', NULL, NULL),
('170b855c-db4f-8142-7654-59947b7c15ae', '4e513191-9d31-4e72-4190-59945c46a372', '2017-08-16 17:04:40', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('18f4b138-1d5a-e3b8-ebe0-594fbac0099f', 'a99d7dab-4142-b3ce-a0c0-59442f682c30', '2017-06-25 13:26:59', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('19414f77-cd3e-5ee1-8fe0-594fba9b00d4', 'a99d7dab-4142-b3ce-a0c0-59442f682c30', '2017-06-25 13:26:59', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('1ac019cd-6cfd-8557-29cb-594fb8dce159', '773e7078-c2af-3aba-d63d-594d8313dc7b', '2017-06-25 13:21:07', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'status', 'dynamicenum', 'Open_New', 'Closed_Closed', NULL, NULL),
('1afdbaa0-7929-04fa-faa7-594fb81c299c', '773e7078-c2af-3aba-d63d-594d8313dc7b', '2017-06-25 13:21:07', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('1f09ab69-6080-4784-504e-5bc633cb209d', '74054fae-38a1-1a48-3c8c-599ddfb68031', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'ef0b574d-5a87-fcbf-701d-599ddf2beff8', '', NULL, NULL),
('265cd7ad-df85-5aad-1807-5bc633b62c79', 'f35541bb-2b40-eae0-76dc-599ddde690e9', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'e467db0d-5e64-34f3-c68d-599ddd82c9b0', '', NULL, NULL),
('2ce1b60c-a23a-e687-35b4-5bc633cb9339', '79de9740-8e43-5ff1-4deb-59972f56c144', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'b03cabad-7dae-91d0-c1cf-59972e0c1dc8', '', NULL, NULL),
('2d0b0924-9c28-90fc-ead4-59301c29d101', '429d2fa3-8356-2b9f-040e-59301bd8f46b', '2017-06-01 13:52:48', '1', 'assigned_user_id', 'relate', '1', 'e15f7895-d759-e10d-e6d4-59121d13beb0', NULL, NULL),
('30071eff-dadc-79b4-c4a3-594980cccfa2', 'c384488c-cd78-9b87-3d14-59483737b011', '2017-06-20 20:06:11', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'assigned_user_id', 'relate', '8aff5677-c52f-7d82-3237-5911fcc9c488', '80343642-e355-1c38-662f-59121e97591e', NULL, NULL),
('3107ef1d-a8a7-0c39-667e-59442010ce15', 'cc157680-3553-af99-0f9b-59441a651b24', '2017-06-16 18:17:00', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('32179936-b3cf-c42f-a493-59a973c73e15', '433c2cd5-717b-145f-12bf-59a960cff896', '2017-09-01 14:47:38', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('32670dd3-d2c0-ae52-878b-59a9739e2e01', '433c2cd5-717b-145f-12bf-59a960cff896', '2017-09-01 14:47:38', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('34adc4d8-7bbe-e437-fe40-594d37a06530', '91e9964a-a58c-d6fc-2f73-59492747c628', '2017-06-23 15:43:32', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('34e59cff-3137-3e41-6afa-5bc633314792', '433c2cd5-717b-145f-12bf-59a960cff896', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'f2ccaa5d-623c-3865-fa99-5994a7d2c26d', '', NULL, NULL),
('35926f6a-af3a-0d3d-929f-594d3738dcf9', '91e9964a-a58c-d6fc-2f73-59492747c628', '2017-06-23 15:43:32', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('36257756-00be-3aba-1d0c-5bc6335714ec', 'ca594cab-0c3c-9be8-19e1-5994a74dfa44', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'f2ccaa5d-623c-3865-fa99-5994a7d2c26d', '', NULL, NULL),
('37117370-dedc-05bb-ca46-5944207e4de9', 'b4d62ef5-94cc-28aa-00ef-59441ae5c98d', '2017-06-16 18:18:11', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('373ebbc0-a8fd-8d42-8c40-5bc633415483', 'd7a561bc-65dd-db52-1901-599703bf8410', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'f2ccaa5d-623c-3865-fa99-5994a7d2c26d', '', NULL, NULL),
('3754be76-df56-a542-8dc3-594420abbd1e', 'b4d62ef5-94cc-28aa-00ef-59441ae5c98d', '2017-06-16 18:18:11', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('38841078-f805-cabe-5644-59443ece774a', '6266a29a-fdd2-5d98-8cf4-594430b23868', '2017-06-16 20:26:03', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'status', 'dynamicenum', 'Open_New', 'Open_Assigned', NULL, NULL),
('39c92de6-9867-58ef-87da-59a962caf30c', 'aa4c29a7-136f-3115-9972-59949a9548da', '2017-09-01 13:38:53', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('3a8880de-ea62-019c-7ecc-59a962490978', 'aa4c29a7-136f-3115-9972-59949a9548da', '2017-09-01 13:38:53', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('3e038c54-8780-adb6-f4ae-5bc6332dbe91', 'aa4c29a7-136f-3115-9972-59949a9548da', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'cf1df7ae-4fc6-d0b3-06c7-59949ab9fb3d', '', NULL, NULL),
('46b8ceb9-7e02-8b9e-8dae-5bc63381787c', '4e513191-9d31-4e72-4190-59945c46a372', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '22dac178-cd42-07f4-1b82-59945c021bf7', '', NULL, NULL),
('46f825c5-07c3-cc3e-0872-59441769b03c', 'bc8d2837-0bb2-04fa-373a-5941468f4e10', '2017-06-16 17:38:34', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('47481567-7b7e-30d9-86fc-59441717e1bd', 'bc8d2837-0bb2-04fa-373a-5941468f4e10', '2017-06-16 17:38:34', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('480491e5-9bd8-c645-4508-59960127c7b2', 'ca594cab-0c3c-9be8-19e1-5994a74dfa44', '2017-08-17 20:50:23', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('48d861e0-3622-9c12-a8f9-59960157e466', 'ca594cab-0c3c-9be8-19e1-5994a74dfa44', '2017-08-17 20:50:23', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('4edd0805-93e8-354d-ab13-5bc63375726e', 'd586014a-a106-d115-b782-59bbd16ca47f', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'c9a0a91a-5d4d-92b8-20a1-59bbd1451eef', '', NULL, NULL),
('4eff02a9-cf38-60fa-6b83-5bc6335f7dc1', '2f0913cb-5139-2cf3-77fa-59627011939d', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'b26d50b8-b6c4-ea64-84e2-596270f7101f', '', NULL, NULL),
('5079016f-3bb2-8e1c-c819-594fb8da36fd', '417e1cf0-8ae0-bd42-0153-594963cad36a', '2017-06-25 13:20:16', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'status', 'dynamicenum', 'Open_New', 'Closed_Closed', NULL, NULL),
('512554e3-bf20-04cf-dd00-594fb81c0bfb', '417e1cf0-8ae0-bd42-0153-594963cad36a', '2017-06-25 13:20:16', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('52b415b7-72d0-15bb-bbf6-599ad014dca9', 'd7a561bc-65dd-db52-1901-599703bf8410', '2017-08-21 12:23:20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('53874e73-722d-eab8-4ace-599ad06fbbb5', 'd7a561bc-65dd-db52-1901-599703bf8410', '2017-08-21 12:23:20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('58eccd58-802b-7ea1-b2c4-5bc633377c2b', '5f4cee07-88a4-e752-1feb-595aa3313a55', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '3424ea1c-6a29-7ed1-6e1f-595aa2dc341e', '', NULL, NULL),
('624eba8c-66d5-dd2c-fa01-593ad72f89dd', '65eb2aa9-0038-fad4-f641-593015d1ffdd', '2017-06-09 17:14:31', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('627c98b5-49e2-f31b-de1e-5bc6333abf30', '773e7078-c2af-3aba-d63d-594d8313dc7b', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'bf9b42f4-0828-58fa-fecc-594d82a1fc9d', '', NULL, NULL),
('644bdb49-1606-b231-1790-5bc633b80b75', 'c77c33ba-ef86-3848-2af5-59bbd2a168bf', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '74d5827c-eb50-d537-dbd8-59bbd2c20144', '', NULL, NULL),
('66ca085d-11c2-6403-b100-59a6c3f93ce5', '24291dad-ebef-44e1-157c-59a6bae1dab1', '2017-08-30 13:52:20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('69a314ab-ac61-f01d-0b8d-5bc63372b000', '91e9964a-a58c-d6fc-2f73-59492747c628', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '81d1d47b-fe45-a0e1-9d5a-594924d33ce9', '', NULL, NULL),
('6bf0489d-81b8-cebf-bcdf-59a6af611ff2', 'f35541bb-2b40-eae0-76dc-599ddde690e9', '2017-08-30 12:28:21', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('6ca08266-7459-6f84-c1c3-59a6afbce64d', 'f35541bb-2b40-eae0-76dc-599ddde690e9', '2017-08-30 12:28:21', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('70f96387-bd83-5dfe-7409-5bc6335c4e93', 'c384488c-cd78-9b87-3d14-59483737b011', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '957f9c12-4004-8201-023c-594837a479c3', '', NULL, NULL),
('73ca0368-0025-971f-cd49-59a6c3263a8a', '24291dad-ebef-44e1-157c-59a6bae1dab1', '2017-08-30 13:52:20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('79ed4794-2a93-61ff-ea1a-5bc633441b96', 'a99d7dab-4142-b3ce-a0c0-59442f682c30', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '4cfb3385-8b10-b34a-f1c7-59442eb17012', '', NULL, NULL),
('7bda6408-a638-ee03-c77e-59aff65c9738', '5f4cee07-88a4-e752-1feb-595aa3313a55', '2017-09-06 13:20:43', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('7c1df3f7-05dd-3d5b-1d8a-59aff62e869a', '5f4cee07-88a4-e752-1feb-595aa3313a55', '2017-09-06 13:20:43', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('81b16d51-d904-f9ee-ef05-5bc633cb9854', 'be9c5698-86d2-f632-5743-5941469a6e94', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '5b2d4eb5-2c36-2575-6fc4-594146fdae56', '', NULL, NULL),
('831dbf5f-3fa2-d5d5-5b9f-5bc633a4cf6e', 'c7f3dec2-f085-d89b-9731-59ad6f395634', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '5b2d4eb5-2c36-2575-6fc4-594146fdae56', '', NULL, NULL),
('8b241760-55ef-2a04-385c-5bc633b3fbbc', 'bc8d2837-0bb2-04fa-373a-5941468f4e10', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '15a4dd96-9b8d-fc46-fc9d-5941468dd107', '', NULL, NULL),
('9115b658-b923-0a59-d06e-59306b77a681', '65eb2aa9-0038-fad4-f641-593015d1ffdd', '2017-06-01 19:32:04', '1', 'status', 'dynamicenum', 'Open_New', 'Open_Assigned', NULL, NULL),
('94a6ad44-65e5-5fd6-0ba2-5bc63302da1f', '417e1cf0-8ae0-bd42-0153-594963cad36a', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '83b1dc3a-6c28-5845-a18b-5941457f1736', '', NULL, NULL),
('96cf2cd7-2ba8-e103-2f1e-5bc63384f68e', 'cf95fc62-1c1d-3231-e719-594145a097ca', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '83b1dc3a-6c28-5845-a18b-5941457f1736', '', NULL, NULL),
('a0b3be6e-173c-7d39-e9a4-5bc633ce7229', 'bae6e80d-5bbc-0ab8-dffb-593094c41ae4', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '1f4e0967-711c-5d13-3ce0-593094ea2424', '', NULL, NULL),
('a9b0934b-f394-cc2b-dbc5-5bc633a653bb', '7e7f08c5-8c8d-d0cb-b70a-59307adcc362', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '8e30a6c7-5618-1698-c2ac-59307a71047a', '', NULL, NULL),
('b01f9905-6e67-d4c9-8506-59aff504f99d', '74054fae-38a1-1a48-3c8c-599ddfb68031', '2017-09-06 13:16:41', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('b12baf61-5173-b93b-dad9-59aff5021179', '74054fae-38a1-1a48-3c8c-599ddfb68031', '2017-09-06 13:16:41', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('b1a21cef-0450-804a-a408-5bc633ab8d82', '563706de-49af-8cd4-11cb-593073509250', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '9f6e2888-4e4a-5d68-c7e4-5930733e69fd', '', NULL, NULL),
('b2cfa3a0-27c9-88a7-6357-5bc633d4fd76', '6896890b-a6cc-8652-950c-59307597a9ef', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '9f6e2888-4e4a-5d68-c7e4-5930733e69fd', '', NULL, NULL),
('b737fd77-b066-9ca3-e555-595b986d382a', '563706de-49af-8cd4-11cb-593073509250', '2017-07-04 13:30:57', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'name', 'name', 'website is not configured', 'Website is not configured', NULL, NULL),
('ba158d84-77a3-3ba0-c655-5bc6335d5eca', '24291dad-ebef-44e1-157c-59a6bae1dab1', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'e191ac93-4fd2-3eab-ec6f-59301bf539b1', '', NULL, NULL),
('bb55c2d4-dfb0-f01f-4843-5bc633771841', '429d2fa3-8356-2b9f-040e-59301bd8f46b', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'e191ac93-4fd2-3eab-ec6f-59301bf539b1', '', NULL, NULL),
('c43ff816-b66c-2b36-9eda-5bc633b47936', '3c9f356e-f312-be17-8c9a-59f87f61723e', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '1eb1a057-6392-af1b-d728-59301475db56', '', NULL, NULL),
('c6353122-a665-e19d-2c3c-5bc633d3f0f5', '65eb2aa9-0038-fad4-f641-593015d1ffdd', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '1eb1a057-6392-af1b-d728-59301475db56', '', NULL, NULL),
('c7d42217-e580-ecfa-a5c0-5bc633f08c58', 'a01ec9be-e6ae-b952-b18c-59492856b298', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '1eb1a057-6392-af1b-d728-59301475db56', '', NULL, NULL),
('c7ec9129-b101-9bc1-c333-595b98a3693b', 'cf70a052-5d14-4397-1beb-59306a05ee86', '2017-07-04 13:31:06', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'name', 'name', 'página Web de Tecnomed', 'Página Web de Tecnomed', NULL, NULL),
('cac8792d-d8ec-e04a-d57e-59414717149e', 'bc8d2837-0bb2-04fa-373a-5941468f4e10', '2017-06-14 14:25:04', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'name', 'name', '         Más  3 de 4.035     Imprimir todo En una ventana nueva Claves de caveperu', 'Imprimir todo En una ventana nueva Claves de caveperu', NULL, NULL),
('cd4083d8-e6ae-47e1-30fd-59306bf17e9b', '429d2fa3-8356-2b9f-040e-59301bd8f46b', '2017-06-01 19:31:22', '1', 'status', 'dynamicenum', 'Open_New', 'Closed_Closed', NULL, NULL),
('cd9d2240-0c79-4c1a-745d-59306bff4b21', '429d2fa3-8356-2b9f-040e-59301bd8f46b', '2017-06-01 19:31:22', '1', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('d0b39ad2-84c1-7372-38ca-593173b9e203', 'bae6e80d-5bbc-0ab8-dffb-593094c41ae4', '2017-06-02 14:18:43', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('d1585c71-3ce0-bba0-96a5-5931737f19e6', 'bae6e80d-5bbc-0ab8-dffb-593094c41ae4', '2017-06-02 14:18:43', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('d188e695-a393-2066-b2a3-5bc633486b69', '2d97b329-6293-46fd-6261-5931a8e5e509', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '1b3c7622-205c-b741-4825-59136322ac04', '', NULL, NULL),
('d270378b-8c8f-364d-fbb6-59949a7c24a2', 'aa4c29a7-136f-3115-9972-59949a9548da', '2017-08-16 19:19:39', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'assigned_user_id', 'relate', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('d2ca7756-4e6a-eb41-c00b-5bc6337a0869', '49cd4802-e6a1-b99d-55d9-59308de0a71e', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '1b3c7622-205c-b741-4825-59136322ac04', '', NULL, NULL),
('d31a0895-18e8-1f59-634d-59aff579bff4', 'e48865d9-1079-8b59-5451-59a57680b90d', '2017-09-06 13:18:37', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('d4022b8d-2ff0-d6dc-cfc6-5bc633e55937', '6266a29a-fdd2-5d98-8cf4-594430b23868', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '1b3c7622-205c-b741-4825-59136322ac04', '', NULL, NULL),
('d5437ff5-cbb4-e5d0-4968-5bc6339f00ba', 'cf70a052-5d14-4397-1beb-59306a05ee86', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '1b3c7622-205c-b741-4825-59136322ac04', '', NULL, NULL),
('d5790e34-2e64-8273-f384-59441750bd7d', 'be9c5698-86d2-f632-5743-5941469a6e94', '2017-06-16 17:38:03', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('d61d4f86-0fc3-cfbf-f3d7-59aff63a8349', '31f7258b-30c3-3e9b-e220-59a56b2b7333', '2017-09-06 13:20:18', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('d6607055-21fa-7286-7f5e-59aff6acd3fd', '31f7258b-30c3-3e9b-e220-59a56b2b7333', '2017-09-06 13:20:18', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('d6b80822-8557-c0a6-1d08-59aff56cb471', 'e48865d9-1079-8b59-5451-59a57680b90d', '2017-09-06 13:18:37', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('d6ce6dab-5463-a159-6161-5bc633f9453d', 'e4a973c6-1aaf-05fc-058c-59945b64e3f7', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '1b3c7622-205c-b741-4825-59136322ac04', '', NULL, NULL),
('d6ef0ec0-d58c-d428-0894-5bc6338f1393', 'e48865d9-1079-8b59-5451-59a57680b90d', '2018-10-16 18:52:44', '1', 'account_id', 'relate', 'ccf7a2c7-7b2d-e1fb-92c6-59a575616615', '', NULL, NULL),
('d81ae7e3-e091-e091-1c6d-5bc633411d0f', 'e68954e9-7a32-1294-d0a6-59305f9f23c2', '2018-10-16 18:52:44', '1', 'account_id', 'relate', '1b3c7622-205c-b741-4825-59136322ac04', '', NULL, NULL),
('d9d80ea0-b270-334c-8916-5995a475b814', 'e4a973c6-1aaf-05fc-058c-59945b64e3f7', '2017-08-17 14:13:57', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('daa11558-540a-c3a3-218d-5995a421762b', 'e4a973c6-1aaf-05fc-058c-59945b64e3f7', '2017-08-17 14:13:57', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('e17865c0-74ae-0e6b-bb3f-594420384cf5', 'cc157680-3553-af99-0f9b-59441a651b24', '2017-06-16 18:15:27', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('e27b0b8e-17f9-dd67-9c9e-594417463b3f', 'be9c5698-86d2-f632-5743-5941469a6e94', '2017-06-16 17:38:03', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'state', 'enum', 'Open', 'Closed', NULL, NULL),
('ec0b9300-794d-91c0-61e1-59443d3094c1', 'cf95fc62-1c1d-3231-e719-594145a097ca', '2017-06-16 20:18:59', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'status', 'dynamicenum', 'Open_Assigned', 'Closed_Closed', NULL, NULL),
('ec55a153-c90b-9460-7d31-59443d3f9c26', 'cf95fc62-1c1d-3231-e719-594145a097ca', '2017-06-16 20:18:59', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'state', 'enum', 'Open', 'Closed', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cases_cstm`
--

CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cases_cstm`
--

INSERT INTO `cases_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('24291dad-ebef-44e1-157c-59a6bae1dab1', 0.00000000, 0.00000000, '', ''),
('2d97b329-6293-46fd-6261-5931a8e5e509', 0.00000000, 0.00000000, '', ''),
('2f0913cb-5139-2cf3-77fa-59627011939d', 0.00000000, 0.00000000, '', ''),
('31f7258b-30c3-3e9b-e220-59a56b2b7333', 0.00000000, 0.00000000, '', ''),
('3c9f356e-f312-be17-8c9a-59f87f61723e', 0.00000000, 0.00000000, '', ''),
('417e1cf0-8ae0-bd42-0153-594963cad36a', 0.00000000, 0.00000000, '', ''),
('429d2fa3-8356-2b9f-040e-59301bd8f46b', 0.00000000, 0.00000000, '', ''),
('433c2cd5-717b-145f-12bf-59a960cff896', 0.00000000, 0.00000000, '', ''),
('49cd4802-e6a1-b99d-55d9-59308de0a71e', 0.00000000, 0.00000000, '', ''),
('4e513191-9d31-4e72-4190-59945c46a372', 0.00000000, 0.00000000, '', ''),
('563706de-49af-8cd4-11cb-593073509250', 0.00000000, 0.00000000, '', ''),
('5f4cee07-88a4-e752-1feb-595aa3313a55', 0.00000000, 0.00000000, '', ''),
('6266a29a-fdd2-5d98-8cf4-594430b23868', 0.00000000, 0.00000000, '', ''),
('65eb2aa9-0038-fad4-f641-593015d1ffdd', 0.00000000, 0.00000000, '', ''),
('6896890b-a6cc-8652-950c-59307597a9ef', 0.00000000, 0.00000000, '', ''),
('74054fae-38a1-1a48-3c8c-599ddfb68031', 0.00000000, 0.00000000, '', ''),
('773e7078-c2af-3aba-d63d-594d8313dc7b', 0.00000000, 0.00000000, '', ''),
('79de9740-8e43-5ff1-4deb-59972f56c144', 0.00000000, 0.00000000, '', ''),
('7e7f08c5-8c8d-d0cb-b70a-59307adcc362', 0.00000000, 0.00000000, '', ''),
('91e9964a-a58c-d6fc-2f73-59492747c628', 0.00000000, 0.00000000, '', ''),
('a01ec9be-e6ae-b952-b18c-59492856b298', 0.00000000, 0.00000000, '', ''),
('a99d7dab-4142-b3ce-a0c0-59442f682c30', 0.00000000, 0.00000000, '', ''),
('aa4c29a7-136f-3115-9972-59949a9548da', 0.00000000, 0.00000000, '', ''),
('b4d62ef5-94cc-28aa-00ef-59441ae5c98d', 0.00000000, 0.00000000, '', ''),
('b7d33bb8-8a2d-b23a-4868-59ad6fe1b863', 0.00000000, 0.00000000, NULL, NULL),
('bae6e80d-5bbc-0ab8-dffb-593094c41ae4', 0.00000000, 0.00000000, '', ''),
('bc8d2837-0bb2-04fa-373a-5941468f4e10', 0.00000000, 0.00000000, '', ''),
('be9c5698-86d2-f632-5743-5941469a6e94', 0.00000000, 0.00000000, '', ''),
('c384488c-cd78-9b87-3d14-59483737b011', 0.00000000, 0.00000000, '', ''),
('c77c33ba-ef86-3848-2af5-59bbd2a168bf', 0.00000000, 0.00000000, '', ''),
('c7f3dec2-f085-d89b-9731-59ad6f395634', 0.00000000, 0.00000000, '', ''),
('ca594cab-0c3c-9be8-19e1-5994a74dfa44', 0.00000000, 0.00000000, '', ''),
('cc157680-3553-af99-0f9b-59441a651b24', 0.00000000, 0.00000000, '', ''),
('cf70a052-5d14-4397-1beb-59306a05ee86', 0.00000000, 0.00000000, '', ''),
('cf95fc62-1c1d-3231-e719-594145a097ca', 0.00000000, 0.00000000, '', ''),
('d586014a-a106-d115-b782-59bbd16ca47f', 0.00000000, 0.00000000, '', ''),
('d7a561bc-65dd-db52-1901-599703bf8410', 0.00000000, 0.00000000, '', ''),
('e48865d9-1079-8b59-5451-59a57680b90d', 0.00000000, 0.00000000, '', ''),
('e4a973c6-1aaf-05fc-058c-59945b64e3f7', 0.00000000, 0.00000000, '', ''),
('e68954e9-7a32-1294-d0a6-59305f9f23c2', 0.00000000, 0.00000000, '', ''),
('f35541bb-2b40-eae0-76dc-599ddde690e9', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'info@tstalent.net'),
('notify', 'fromname', 'TS TALENT SOLUCIONES, C.A. - SISTEMA CRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('info', 'sugar_version', '6.5.24'),
('MySettings', 'tab', 'YTozNjp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6MTA6IkFPU19RdW90ZXMiO3M6MTA6IkFPU19RdW90ZXMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjU6IlNwb3RzIjtzOjU6IlNwb3RzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6MTI6IkFPU19JbnZvaWNlcyI7czoxMjoiQU9TX0ludm9pY2VzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjU6IkNhc2VzIjtzOjU6IkNhc2VzIjtzOjk6IlByb3NwZWN0cyI7czo5OiJQcm9zcGVjdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6NzoiUHJvamVjdCI7czo3OiJQcm9qZWN0IjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjk6IkZQX2V2ZW50cyI7czo5OiJGUF9ldmVudHMiO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtzOjEyOiJBT1NfUHJvZHVjdHMiO3M6MTI6IkFPU19Qcm9kdWN0cyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtzOjk6Impqd2dfTWFwcyI7czo5OiJqandnX01hcHMiO3M6MTI6Impqd2dfTWFya2VycyI7czoxMjoiamp3Z19NYXJrZXJzIjtzOjEwOiJqandnX0FyZWFzIjtzOjEwOiJqandnX0FyZWFzIjtzOjE4OiJqandnX0FkZHJlc3NfQ2FjaGUiO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7czoxMToiQU9SX1JlcG9ydHMiO3M6MTE6IkFPUl9SZXBvcnRzIjtzOjEyOiJBT1dfV29ya0Zsb3ciO3M6MTI6IkFPV19Xb3JrRmxvdyI7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtzOjI5OiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllcyI7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO3M6ODoiS1JlcG9ydHMiO3M6ODoiS1JlcG9ydHMiO30='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'manual'),
('system', 'name', '.: TS TALENT SOLUCIONES :.'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '2'),
('captcha', 'on', '0'),
('captcha', 'public_key', ''),
('captcha', 'private_key', ''),
('ldap', 'hostname', ''),
('ldap', 'port', ''),
('ldap', 'base_dn', ''),
('ldap', 'login_filter', ''),
('ldap', 'bind_attr', ''),
('ldap', 'login_attr', ''),
('ldap', 'group_dn', ''),
('ldap', 'group_name', ''),
('ldap', 'group_user_attr', ''),
('ldap', 'group_attr', ''),
('ldap', 'admin_user', ''),
('ldap', 'admin_password', ''),
('ldap', 'auto_create_users', '0'),
('ldap', 'enc_key', ''),
('system', 'ldap_enabled', '0'),
('ldap', 'group_attr_req_dn', '0'),
('ldap', 'group', '0'),
('ldap', 'authentication', '0'),
('proxy', 'on', '0'),
('proxy', 'host', ''),
('proxy', 'port', ''),
('proxy', 'auth', '0'),
('proxy', 'username', 'admin'),
('proxy', 'password', 'riJrCAepN1B4Oeui9p72uQ==');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacts`
--

INSERT INTO `contacts` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `lead_source`, `reports_to_id`, `birthdate`, `campaign_id`, `joomla_account_id`, `portal_account_disabled`, `portal_user_type`) VALUES
('c5d295a1-3152-5d3c-0168-5913636a6784', '2017-05-10 19:01:16', '2018-12-15 18:37:33', '98ae7237-30e0-7e2f-d263-5c153d029c20', '8aff5677-c52f-7d82-3237-5911fcc9c488', '', 1, '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Ms.', 'Kenia', 'Santana', 'Gerente de Productos', NULL, '04120599846', 0, NULL, '04242675059', '0212575441 (ext 226)', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', NULL, '', NULL, NULL, 'Single');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_cstm`
--

CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contacts_cstm`
--

INSERT INTO `contacts_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('c5d295a1-3152-5d3c-0168-5913636a6784', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `date_created`, `date_modified`, `deleted`) VALUES
('223d18cc-cc29-f298-aac5-59121eb098e8', 'aavila@tstalent.net', 'AAVILA@TSTALENT.NET', 0, 0, '2017-05-09 19:53:45', '2017-05-09 19:53:45', 0),
('23980e38-dcf7-d735-4c66-595260ac0cb9', 'Yvizquel@tstalent.net', 'YVIZQUEL@TSTALENT.NET', 0, 0, '2017-06-27 13:40:15', '2017-06-27 13:40:15', 0),
('25f7bee2-35b1-e2af-3b90-59945cbd9df6', 'irlandah@shaw.ca', 'IRLANDAH@SHAW.CA', 0, 0, '2017-08-16 14:53:41', '2017-08-16 14:53:41', 0),
('2f2ae64f-dd74-d225-aaa7-5bc6345af52b', 'operacionesgerencialesmt@gmail.com', 'OPERACIONESGERENCIALESMT@GMAIL.COM', 0, 0, '2018-10-16 18:55:32', '2018-10-16 18:55:32', 0),
('50bf8acd-1781-74d1-b59c-594d5cab7606', 'mcarreno@tstalent.net', 'MCARRENO@TSTALENT.NET', 0, 0, '2017-06-23 18:23:21', '2017-06-23 18:23:21', 0),
('734be8f7-49ef-34b2-57cc-595aa21f1d73', 'info@tstalent.net', 'INFO@TSTALENT.NET', 0, 0, '2017-07-03 20:02:16', '2017-07-03 20:02:16', 0),
('76becf00-784d-ef96-5d0e-5c3a91267a9e', 'oscars@beisaslegacy.com', 'OSCARS@BEISASLEGACY.COM', 0, 0, '2019-01-13 01:17:06', '2019-01-13 01:17:06', 0),
('82e40172-2c24-e305-3a5b-5911f5efb19f', 'avizquel@tstalent.net', 'AVIZQUEL@TSTALENT.NET', 0, 0, '2017-05-09 16:59:32', '2017-05-09 16:59:32', 0),
('85e01d07-67ee-d23d-1374-594d53358178', 'ivaldez@tstalent.net', 'IVALDEZ@TSTALENT.NET', 0, 0, '2017-06-23 17:44:52', '2017-06-23 17:44:52', 0),
('85fa845b-f760-f6bf-e61d-59121e164f8d', 'jarevalo@tstalent.net', 'JAREVALO@TSTALENT.NET', 0, 0, '2017-05-09 19:54:49', '2017-05-09 19:54:49', 0),
('8c530855-86ba-5f0c-47b6-5911f5cab83f', 'avizquel@gmail.com', 'AVIZQUEL@GMAIL.COM', 0, 0, '2017-05-09 16:59:32', '2017-05-09 16:59:32', 0),
('8e4950a4-c9ff-d628-733b-5911fcf33219', 'rolimpio@tstalent.net', 'ROLIMPIO@TSTALENT.NET', 0, 0, '2017-05-09 17:28:57', '2017-05-09 17:28:57', 0),
('9ed85445-54b0-758c-07b6-5c153df0c494', 'anwar@beisaslegacy.com', 'ANWAR@BEISASLEGACY.COM', 0, 0, '2018-12-15 17:43:13', '2018-12-15 17:43:13', 0),
('a5c33066-1e6b-daf9-a35e-5a35516720cb', 'guillermo.penaloza@gmail.com', 'GUILLERMO.PENALOZA@GMAIL.COM', 0, 0, '2017-12-16 17:01:27', '2017-12-16 17:01:27', 0),
('b3030781-167b-a4aa-74fa-590008fe41b6', 'soporte@tstalent.net', 'SOPORTE@TSTALENT.NET', 0, 0, '2017-04-26 02:38:19', '2017-04-26 02:38:19', 0),
('b3d8955b-e043-da54-61b4-594419ca2388', 'alezama@tstalent.net', 'ALEZAMA@TSTALENT.NET', 0, 0, '2017-06-16 17:46:57', '2017-06-16 17:46:57', 0),
('b5373ef8-2236-9314-712b-5bdfce47fc97', 'badboyzenator@gmail.com', 'BADBOYZENATOR@GMAIL.COM', 0, 0, '2018-11-05 05:01:25', '2018-11-05 05:01:25', 0),
('b71414d3-9497-8ff5-cd15-590008c97b76', 'crm@tecnomedjtrapp.com', 'CRM@TECNOMEDJTRAPP.COM', 0, 0, '2017-04-26 02:40:25', '2017-04-26 02:40:25', 0),
('b9909b03-0997-8eec-4b48-59e8d0d36e9f', 'Ayriarte@tstalent.net', 'AYRIARTE@TSTALENT.NET', 0, 0, '2017-10-19 16:17:43', '2017-10-19 16:17:43', 0),
('be9f0dc1-c66c-20bf-9cee-5c3caf8949e1', 'info@beisaslegacy.com', 'INFO@BEISASLEGACY.COM', 0, 0, '2019-01-14 15:47:50', '2019-01-14 15:47:50', 0),
('cf8e84c1-565e-d1ce-1163-5913638ce904', 'ksantana@tecnomedjtrapp.com', 'KSANTANA@TECNOMEDJTRAPP.COM', 0, 0, '2017-05-10 19:01:16', '2017-05-10 19:01:16', 0),
('d53787f6-ca83-3952-b742-594d554c022b', 'aquintana@tstalent.net', 'AQUINTANA@TSTALENT.NET', 0, 0, '2017-06-23 17:51:56', '2017-06-23 17:51:56', 0),
('e05a0b2f-1c94-2f1e-93d1-59c27efb4996', 'mgonzalez@tstalent.net', 'MGONZALEZ@TSTALENT.NET', 0, 0, '2017-09-20 14:44:21', '2017-09-20 14:44:21', 0),
('e61681eb-0abb-a964-6cbc-59121d93e3b2', 'lperez@tstalent.net', 'LPEREZ@TSTALENT.NET', 0, 0, '2017-05-09 19:52:21', '2017-05-09 19:52:21', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('18abfcef-9518-9183-1dd2-5a35525c1283', '734be8f7-49ef-34b2-57cc-595aa21f1d73', '1', 'Users', 1, 0, '2017-12-16 17:04:31', '2017-12-16 17:04:31', 1),
('222fde8b-a1d7-820f-f3c4-59121e243437', '223d18cc-cc29-f298-aac5-59121eb098e8', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'Users', 1, 0, '2017-05-09 19:53:45', '2018-10-16 19:15:44', 1),
('2384b043-6bf0-65a7-1270-595260f49799', '23980e38-dcf7-d735-4c66-595260ac0cb9', '10ccb807-5647-a0cc-a0c8-5952609bf6b7', 'Users', 1, 0, '2017-06-27 13:40:15', '2018-10-16 19:13:36', 1),
('25c9b189-2523-f740-9df6-59945c1bd86b', '25f7bee2-35b1-e2af-3b90-59945cbd9df6', '22dac178-cd42-07f4-1b82-59945c021bf7', 'Accounts', 1, 0, '2017-08-16 14:53:41', '2018-10-16 18:52:44', 1),
('2eb0fc83-6750-bfab-89a3-5bc634082c6a', '2f2ae64f-dd74-d225-aaa7-5bc6345af52b', '1', 'Users', 1, 0, '2018-10-16 18:55:32', '2018-10-16 18:55:32', 0),
('3ee295ce-e3fe-064d-b362-5c3a809167f9', 'b5373ef8-2236-9314-712b-5bdfce47fc97', 'd5b05fb9-319d-bc6c-09bc-5c3a7f2b4eca', 'Accounts', 1, 0, '2019-01-12 23:55:51', '2019-01-12 23:55:51', 0),
('416821d1-8276-d35d-b21a-5c3a80304f57', 'b5373ef8-2236-9314-712b-5bdfce47fc97', 'c8b095e7-e664-818b-1a62-5c3a80b6b704', 'Accounts', 1, 0, '2019-01-12 23:55:25', '2019-01-12 23:55:25', 0),
('50a5878c-09a9-3c53-c309-594d5ca0ebaf', '50bf8acd-1781-74d1-b59c-594d5cab7606', '4aa108b5-0830-49bf-b0e0-594d5c3aec2f', 'Users', 1, 0, '2017-06-23 18:23:21', '2018-10-16 19:14:13', 1),
('61ff6898-7b3a-c538-14b5-5c3a7f5e5e1d', 'b5373ef8-2236-9314-712b-5bdfce47fc97', '721605d9-d1b3-04e7-3b92-5c3a7ff461c4', 'Accounts', 1, 0, '2019-01-12 23:55:32', '2019-01-12 23:55:32', 0),
('715dc3eb-1b66-0842-1e1b-5bdfce461bc6', 'b5373ef8-2236-9314-712b-5bdfce47fc97', '6113255b-e96f-3e32-134c-5bdfce86c702', 'Accounts', 1, 0, '2018-11-05 05:02:52', '2018-11-05 05:02:52', 0),
('731d0c3f-aae5-9e2c-da22-595aa2a83daa', '734be8f7-49ef-34b2-57cc-595aa21f1d73', '3424ea1c-6a29-7ed1-6e1f-595aa2dc341e', 'Accounts', 1, 0, '2017-07-03 20:02:16', '2018-10-16 18:52:44', 1),
('7409288c-e816-8edb-19b2-595aa29e6668', 'b3030781-167b-a4aa-74fa-590008fe41b6', '3424ea1c-6a29-7ed1-6e1f-595aa2dc341e', 'Accounts', 0, 0, '2017-07-03 20:02:16', '2018-10-16 18:52:44', 1),
('76a5f874-3cee-9fd0-57ac-5c3a91deeb2d', '76becf00-784d-ef96-5d0e-5c3a91267a9e', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'Users', 1, 0, '2019-01-13 01:17:06', '2019-01-13 01:17:06', 0),
('821000f2-acd4-7d82-7990-5911f5ea1d16', '82e40172-2c24-e305-3a5b-5911f5efb19f', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'Users', 1, 0, '2017-05-09 16:59:32', '2018-10-16 19:17:36', 1),
('85cb8ac9-f09a-2666-778d-59121e7ab3f8', '85fa845b-f760-f6bf-e61d-59121e164f8d', '80343642-e355-1c38-662f-59121e97591e', 'Users', 1, 0, '2017-05-09 19:54:49', '2018-10-16 19:15:29', 1),
('85cd200d-8891-206e-515a-594d53068b14', '85e01d07-67ee-d23d-1374-594d53358178', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'Users', 1, 0, '2017-06-23 17:44:52', '2018-10-16 19:14:53', 1),
('8b710f8f-c270-4d30-a20a-5911f5e93142', '8c530855-86ba-5f0c-47b6-5911f5cab83f', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'Users', 0, 0, '2017-05-09 16:59:32', '2018-10-16 19:17:36', 1),
('8e3cd6f2-c5e1-e71c-2af7-5911fc62b170', '8e4950a4-c9ff-d628-733b-5911fcf33219', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Users', 1, 0, '2017-05-09 17:28:57', '2018-10-16 19:18:08', 1),
('9e60b2e1-fecd-f997-eb63-5c153d0e37b1', '9ed85445-54b0-758c-07b6-5c153df0c494', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Users', 1, 0, '2018-12-15 17:43:13', '2018-12-15 17:43:13', 0),
('a546b855-9214-84b7-2b11-5a355284fe25', 'a5c33066-1e6b-daf9-a35e-5a35516720cb', 'a1a85ead-a865-136f-28c5-5a35526b73fb', 'Users', 1, 0, '2017-12-16 17:05:08', '2018-10-16 19:12:26', 1),
('a57dd3cf-66b3-d33b-83c3-5a35510b0c7b', 'a5c33066-1e6b-daf9-a35e-5a35516720cb', '1', 'Users', 1, 0, '2017-12-16 17:01:27', '2017-12-16 17:01:27', 1),
('b2f24bc9-181b-0f88-a75b-5900086829ed', 'b3030781-167b-a4aa-74fa-590008fe41b6', 'af9ce444-116c-4ece-ebd7-5900089ba8d9', 'Users', 1, 0, '2017-04-26 02:38:19', '2018-10-16 19:18:22', 1),
('b361733f-4e11-d325-f59a-5c3a7f0d43f2', 'b5373ef8-2236-9314-712b-5bdfce47fc97', '42176e11-179a-9330-8f38-5c3a7eea42a4', 'Accounts', 1, 0, '2019-01-12 23:55:41', '2019-01-12 23:55:41', 0),
('b3c69483-1865-b5c5-cb84-5944199193c6', 'b3d8955b-e043-da54-61b4-594419ca2388', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Users', 1, 0, '2017-06-16 17:46:57', '2018-10-16 19:15:12', 1),
('b4d08737-d8c5-7a7e-8113-5bdfce10a81f', 'b5373ef8-2236-9314-712b-5bdfce47fc97', 'ad19a97d-bc58-cdac-a78c-5bdfce8043f7', 'Accounts', 1, 0, '2018-11-05 05:01:25', '2018-11-05 05:01:25', 0),
('b706ca12-3e31-7bf3-b1fd-5900084ac134', 'b71414d3-9497-8ff5-cd15-590008c97b76', '1', 'Users', 1, 0, '2017-04-26 02:40:25', '2017-04-26 02:40:25', 1),
('b93db923-cd49-1892-c3a8-59e8d055d2fe', 'b9909b03-0997-8eec-4b48-59e8d0d36e9f', 'b3d0d241-25b1-54b6-fc8e-59e8d0d9bb10', 'Users', 1, 0, '2017-10-19 16:17:43', '2018-10-16 19:12:43', 1),
('cd8cfc36-42a1-ef1e-8bf5-5c3a7e751d6e', 'b5373ef8-2236-9314-712b-5bdfce47fc97', '1368dfec-3647-82fd-0f9b-5c3a7ec7a2af', 'Accounts', 1, 0, '2019-01-12 23:55:18', '2019-01-12 23:55:18', 0),
('cf81906e-fbac-3cf2-cada-591363b31d20', 'cf8e84c1-565e-d1ce-1163-5913638ce904', 'c5d295a1-3152-5d3c-0168-5913636a6784', 'Contacts', 1, 0, '2017-05-10 19:01:16', '2018-12-15 18:37:33', 1),
('d52a4a1c-4da5-3f39-61b2-594d551fe308', 'd53787f6-ca83-3952-b742-594d554c022b', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'Users', 1, 0, '2017-06-23 17:51:56', '2018-10-16 19:14:32', 1),
('d716b22a-665e-539a-ca73-5c3a86dcc436', 'b5373ef8-2236-9314-712b-5bdfce47fc97', 'cf6f8f2e-f1e8-1765-81e5-5c3a86999895', 'Leads', 1, 0, '2019-01-13 00:28:37', '2019-01-13 00:28:37', 0),
('e04d0fe1-f33d-a52e-9da1-59c27ec337a4', 'e05a0b2f-1c94-2f1e-93d1-59c27efb4996', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'Users', 1, 0, '2017-09-20 14:44:21', '2018-10-16 19:13:51', 1),
('e5ff0915-ddf6-ad61-2fe1-59121dd0a601', 'e61681eb-0abb-a964-6cbc-59121d93e3b2', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Users', 1, 0, '2017-05-09 19:52:21', '2018-10-16 19:17:09', 1),
('ec93be93-6efa-d89e-ba03-5c3caf9f6af7', 'be9f0dc1-c66c-20bf-9cee-5c3caf8949e1', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'Users', 1, 0, '2019-01-14 15:47:50', '2019-01-14 15:47:50', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('1de21129-a09c-dfa8-8f07-582da5c82939', '2016-11-17 12:39:24', '2019-01-15 03:22:46', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', 'Here is your account username and temporary password:\r\nUsername : $contact_user_user_name\r\nPassword : $contact_user_user_hash\r\n\r\n$config_site_url\r\n\r\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.\r\n\r\nBeisa\'s Legacy Contractor\r\nExteriors & Interiors', '<div class=\"mozaik-inner\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px;\"><div style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><table width=\"550\" class=\"mce-item-table\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:3px 3px 3px 0px;margin:0px;\"><tbody style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\"><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Here is your account username and temporary password:</p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Username : $contact_user_user_name</p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">Password : $contact_user_user_hash</p><br style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">$config_site_url</p><br style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\">After you log in using the above password, you may be required to reset the password to one of your own choice.</p></td></tr><tr style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:5px 0px;margin:0px;\"><td style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(83,77,100);padding:3px 3px 3px 0px;margin:0px;\"> </td></tr></tbody></table></div><div class=\"mozaik-clear\" style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;height:0px;\"> <br style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px;margin:0px;\" /></div></div>', 0, '', 0, NULL),
('21657202-c7aa-9615-06b1-5c3d0e57ef47', '2019-01-14 22:35:35', '2019-01-14 22:36:02', '98ae7237-30e0-7e2f-d263-5c153d029c20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'off', 'Beisa\'s Legacy', 'Password Generator', NULL, NULL, NULL, 0, '', 0, 'email'),
('218f3d28-97e0-7fe4-9fd9-582da5e6e598', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '1', 'off', 'Case Creation', 'Template to send to a contact when a case is received from them.', '$acase_name [CASE:$acase_case_number]', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>', 0, NULL, NULL, NULL),
('2ff6fa6f-590e-3a4f-2f18-582da5cfd888', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '1', 'off', 'Contact Case Update', 'Template to send to a contact when their case is updated.', '$acase_name update [CASE:$acase_case_number]', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description', '<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>', 0, NULL, NULL, NULL),
('387ef2ec-d25b-6ca7-34b9-582da58c3ffc', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user\'s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL),
('3baf13e9-987b-b702-7135-582da56b59c5', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '1', 'off', 'User Case Update', 'Email template to send to a Sugar user when their case is updated.', '$acase_name (# $acase_case_number) update', 'Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;', '<p>Hi $user_first_name $user_last_name,</p>\r\n					   <p> </p>\r\n					   <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					   <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					   <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					   <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>\r\n					   ', 0, NULL, NULL, NULL),
('7d5c8241-6a4d-7731-dd5f-582da5406352', '2013-05-24 14:31:45', '2016-11-17 12:39:24', '1', '1', 'off', 'Event Invite Template', 'Default event invite template.', 'You have been invited to $fp_events_name', 'Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n', '\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n', 0, NULL, NULL, 'email'),
('99300676-03c4-7a12-2a6d-582da5d43058', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '1', 'off', 'Joomla Account Creation', 'Template used when informing a contact that they\'ve been given an account on the joomla portal.', 'Support Portal Account Created', 'Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass', '<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>', 0, NULL, NULL, NULL),
('db1a577b-6510-3913-d73b-582da5baff46', '2016-11-17 12:39:24', '2016-11-17 12:39:24', '1', '1', 'off', 'Case Closure', 'Template for informing a contact that their case has been closed.', '$acase_name [CASE:$acase_case_number] closed', 'Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution', '<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favorites`
--

CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `favorites`
--

INSERT INTO `favorites` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `parent_id`, `parent_type`) VALUES
('3f0b0b0a-ac67-9125-4863-59001534cacd', 'Users af9ce444-116c-4ece-ebd7-5900089ba8d9 1', '2017-04-26 03:35:48', '2017-04-26 03:35:48', '1', '1', NULL, 0, '1', 'af9ce444-116c-4ece-ebd7-5900089ba8d9', 'Users'),
('b5fe9b26-e2e5-5719-14e7-5c3a86ee1593', 'Leads cf6f8f2e-f1e8-1765-81e5-5c3a86999895 1', '2019-01-13 00:28:47', '2019-01-13 00:28:49', '1', '1', NULL, 1, '1', 'cf6f8f2e-f1e8-1765-81e5-5c3a86999895', 'Leads');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `fields_meta_data`
--

INSERT INTO `fields_meta_data` (`id`, `name`, `vname`, `comments`, `help`, `custom_module`, `type`, `len`, `required`, `default_value`, `date_modified`, `deleted`, `audited`, `massupdate`, `duplicate_merge`, `reportable`, `importable`, `ext1`, `ext2`, `ext3`, `ext4`) VALUES
('Accountsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Accounts', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Accounts', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Accountsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Accounts', 'float', 10, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Accountsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Accounts', 'float', 11, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Cases', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Cases', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Casesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Cases', 'float', 10, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Casesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Cases', 'float', 11, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Contacts', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Contacts', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Contactsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Contacts', 'float', 10, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Contactsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Contacts', 'float', 11, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Leads', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Leads', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Leadsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Leads', 'float', 10, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Leadsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Leads', 'float', 11, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Meetings', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Meetings', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Meetingsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Meetings', 'float', 10, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Meetingsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Meetings', 'float', 11, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Opportunities', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Opportunities', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Opportunitiesjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Opportunities', 'float', 10, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Opportunitiesjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Opportunities', 'float', 11, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Project', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Project', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Projectjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Project', 'float', 10, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Projectjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Project', 'float', 11, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_address_c', 'jjwg_maps_address_c', 'LBL_JJWG_MAPS_ADDRESS', 'Address', 'Address', 'Prospects', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_geocode_status_c', 'jjwg_maps_geocode_status_c', 'LBL_JJWG_MAPS_GEOCODE_STATUS', 'Geocode Status', 'Geocode Status', 'Prospects', 'varchar', 255, 0, NULL, '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', NULL, '', '', ''),
('Prospectsjjwg_maps_lat_c', 'jjwg_maps_lat_c', 'LBL_JJWG_MAPS_LAT', '', 'Latitude', 'Prospects', 'float', 10, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', ''),
('Prospectsjjwg_maps_lng_c', 'jjwg_maps_lng_c', 'LBL_JJWG_MAPS_LNG', '', 'Longitude', 'Prospects', 'float', 11, 0, '0.00000000', '2016-11-17 12:39:24', 0, 0, 0, 0, 1, 'true', '8', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `folders`
--

INSERT INTO `folders` (`id`, `name`, `folder_type`, `parent_folder`, `has_child`, `is_group`, `is_dynamic`, `dynamic_query`, `assign_to_id`, `created_by`, `modified_by`, `deleted`) VALUES
('3cdf2f5a-b75e-df1a-059f-582e65be6c75', 'Borradores', 'draft', 'f4ae09ea-fa8a-5101-1a58-582e65894316', 0, 0, 1, 'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'draft\' OR status = \'draft\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')', '', '1', '1', 0),
('5170f16b-4c19-1a39-6a43-5832f2cc32bd', 'Emails Enviados', 'sent', 'e7ca39dc-44bc-507b-bbff-5832f2956e52', 0, 0, 1, 'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'out\' OR status = \'sent\') AND assigned_user_id = \'seed_will_id\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')', '', 'seed_will_id', 'seed_will_id', 0),
('842d2373-7b79-a038-9ff0-582e657528f0', 'Emails Enviados', 'sent', 'f4ae09ea-fa8a-5101-1a58-582e65894316', 0, 0, 1, 'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'out\' OR status = \'sent\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')', '', '1', '1', 0),
('88b739a8-e3e1-99bb-eeec-5832f23a5c80', 'Borradores', 'draft', 'e7ca39dc-44bc-507b-bbff-5832f2956e52', 0, 0, 1, 'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'draft\' OR status = \'draft\') AND assigned_user_id = \'seed_will_id\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')', '', 'seed_will_id', 'seed_will_id', 0),
('9ae8af61-42b0-b1f3-553d-595b8b662626', 'Mi Correo', 'inbound', '', 1, 0, 1, 'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'inbound\' OR status = \'inbound\') AND assigned_user_id = \'cf6410f0-e40d-f9e6-14cb-594d55057db3\' AND emails.deleted = \'0\' AND status NOT IN (\'sent\', \'archived\', \'draft\') AND type NOT IN (\'out\', \'archived\', \'draft\')', '', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 0),
('9c62e3a0-81c2-840e-0d91-595b8b6aecb2', 'Borradores', 'draft', '9ae8af61-42b0-b1f3-553d-595b8b662626', 0, 0, 1, 'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'draft\' OR status = \'draft\') AND assigned_user_id = \'cf6410f0-e40d-f9e6-14cb-594d55057db3\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')', '', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 0),
('9cdba848-e7c6-f825-e23b-595b8b6cd3d9', 'Emails Enviados', 'sent', '9ae8af61-42b0-b1f3-553d-595b8b662626', 0, 0, 1, 'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'out\' OR status = \'sent\') AND assigned_user_id = \'cf6410f0-e40d-f9e6-14cb-594d55057db3\' AND emails.deleted = \'0\' AND status NOT IN (\'archived\') AND type NOT IN (\'archived\')', '', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 0),
('9d4e87c5-3d84-8123-53a0-595b8b6949dc', 'Mis Emails Archivados', 'archived', '9ae8af61-42b0-b1f3-553d-595b8b662626', 0, 0, 1, '', '', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 0),
('aeffbb1c-85a2-744d-5904-582e655845a1', 'Mis Emails Archivados', 'archived', 'f4ae09ea-fa8a-5101-1a58-582e65894316', 0, 0, 1, '', '', '1', '1', 0),
('b689036a-e783-7749-9838-5832f28b1ff2', 'Mis Emails Archivados', 'archived', 'e7ca39dc-44bc-507b-bbff-5832f2956e52', 0, 0, 1, '', '', 'seed_will_id', 'seed_will_id', 0),
('e7ca39dc-44bc-507b-bbff-5832f2956e52', 'Mi Correo', 'inbound', '', 1, 0, 1, 'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'inbound\' OR status = \'inbound\') AND assigned_user_id = \'seed_will_id\' AND emails.deleted = \'0\' AND status NOT IN (\'sent\', \'archived\', \'draft\') AND type NOT IN (\'out\', \'archived\', \'draft\')', '', 'seed_will_id', 'seed_will_id', 0),
('f4ae09ea-fa8a-5101-1a58-582e65894316', 'Mi Correo', 'inbound', '', 1, 0, 1, 'SELECT emails.id polymorphic_id, \'Emails\' polymorphic_module FROM emails\n								   JOIN emails_text on emails.id = emails_text.email_id\n                                   WHERE (type = \'inbound\' OR status = \'inbound\') AND assigned_user_id = \'1\' AND emails.deleted = \'0\' AND status NOT IN (\'sent\', \'archived\', \'draft\') AND type NOT IN (\'out\', \'archived\', \'draft\')', '', '1', '1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `folders_subscriptions`
--

INSERT INTO `folders_subscriptions` (`id`, `folder_id`, `assigned_user_id`) VALUES
('9aeac3fa-a0be-250b-4a49-595b8bcb2883', '9ae8af61-42b0-b1f3-553d-595b8b662626', 'cf6410f0-e40d-f9e6-14cb-594d55057db3'),
('9c6488cd-a673-ea62-0773-595b8bab691c', '9c62e3a0-81c2-840e-0d91-595b8b6aecb2', 'cf6410f0-e40d-f9e6-14cb-594d55057db3'),
('9cde49f7-fda1-b60b-50f4-595b8bb5a166', '9cdba848-e7c6-f825-e23b-595b8b6cd3d9', 'cf6410f0-e40d-f9e6-14cb-594d55057db3'),
('9d530668-10c1-74c4-62fe-595b8b00fd8d', '9d4e87c5-3d84-8123-53a0-595b8b6949dc', 'cf6410f0-e40d-f9e6-14cb-594d55057db3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events`
--

CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_audit`
--

CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_contacts_c`
--

CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_fp_event_delegates_1_c`
--

CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_fp_event_locations_1_c`
--

CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_leads_1_c`
--

CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_events_prospects_1_c`
--

CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_event_locations`
--

CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_event_locations_audit`
--

CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fp_event_locations_fp_events_1_c`
--

CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_address_cache`
--

CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_address_cache_audit`
--

CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_areas`
--

CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_areas_audit`
--

CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_maps`
--

CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_maps_audit`
--

CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_maps_jjwg_areas_c`
--

CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_maps_jjwg_markers_c`
--

CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_markers`
--

CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jjwg_markers_audit`
--

CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `kreports`
--

CREATE TABLE `kreports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(45) DEFAULT NULL,
  `report_status` varchar(1) DEFAULT NULL,
  `union_modules` text,
  `reportoptions` text,
  `listtype` varchar(10) DEFAULT NULL,
  `listtypeproperties` text,
  `selectionlimit` varchar(25) DEFAULT NULL,
  `presentation_params` text,
  `visualization_params` text,
  `integration_params` text,
  `wheregroups` text,
  `whereconditions` text,
  `listfields` text,
  `unionlistfields` text,
  `advancedoptions` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `leads`
--

INSERT INTO `leads` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `salutation`, `first_name`, `last_name`, `title`, `photo`, `department`, `do_not_call`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `assistant`, `assistant_phone`, `converted`, `refered_by`, `lead_source`, `lead_source_description`, `status`, `status_description`, `reports_to_id`, `account_name`, `account_description`, `contact_id`, `account_id`, `opportunity_id`, `opportunity_name`, `opportunity_amount`, `campaign_id`, `birthdate`, `portal_name`, `portal_app`, `website`) VALUES
('cf6f8f2e-f1e8-1765-81e5-5c3a86999895', '2019-01-13 00:28:37', '2019-01-13 00:28:37', '1', '1', 'ES UN CLIENTE DE SERVICIOS DE LIMPIEZA...', 0, '1', 'Mr.', 'JUAN', 'PEREZ', 'GERENTE GENERAL', NULL, 'GENERAL MANAGER', 0, NULL, '04141151561', '323453454', NULL, '', 'Esquina de Ceiba a Dr Gonzalez, Edif. Tibisay', 'Caracas', 'Distrito Capital', '1010', 'Venezuela', 'Esquina de Ceiba a Dr Gonzalez, Edif. Tibisay', 'Caracas', 'Distrito Capital', '1010', 'Venezuela', NULL, NULL, 0, '', '', '', 'New', 'ESTE CLIENTE ES UN POCO TEDIOSO, TENER CUIDADO CON EL TRATO Y VENTAS...', NULL, 'Liz Carreño', NULL, '', '', '', NULL, '80000', '', NULL, NULL, NULL, 'http://GEFCLEANING.COM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `leads_cstm`
--

CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `leads_cstm`
--

INSERT INTO `leads_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('1dc40205-88e8-3ca0-9523-582da82e8b11', NULL, NULL, '', ''),
('cf6f8f2e-f1e8-1765-81e5-5c3a86999895', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `meetings`
--

INSERT INTO `meetings` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `location`, `password`, `join_url`, `host_url`, `displayed_url`, `creator`, `external_id`, `duration_hours`, `duration_minutes`, `date_start`, `date_end`, `parent_type`, `status`, `type`, `parent_id`, `reminder_time`, `email_reminder_time`, `email_reminder_sent`, `outlook_id`, `sequence`, `repeat_type`, `repeat_interval`, `repeat_dow`, `repeat_until`, `repeat_count`, `repeat_parent_id`, `recurring_source`) VALUES
('19dba154-91dc-d95a-ac2f-595aa540de05', 'Inducción de la Plataforma CRM', '2017-07-03 20:12:34', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', 'Segunda fase de la inducción CRM', 0, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 15, '2017-07-04 16:15:00', '2017-07-04 17:30:00', 'Cases', 'Held', 'Sugar', '', -1, -1, 0, NULL, 0, NULL, 1, NULL, NULL, NULL, '', NULL),
('404653f6-2327-45da-0866-5c3a873eacb1', 'VENTA DE SERVICIOS DE SIDING', '2019-01-13 00:32:22', '2019-01-13 00:32:22', '1', '1', '', 0, '1', 'direccion', NULL, '', '', NULL, '', '', 1, 0, '2019-01-14 00:30:00', '2019-01-14 01:30:00', 'Leads', 'Planned', 'Sugar', 'cf6f8f2e-f1e8-1765-81e5-5c3a86999895', -1, -1, 0, NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL),
('4a15ab25-3d53-4b7a-c290-59566ecd1ad2', 'Guardia', '2017-06-30 15:31:48', '2017-06-30 15:53:51', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, '8aff5677-c52f-7d82-3237-5911fcc9c488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0, '2017-07-15 13:00:00', '2017-07-15 19:00:00', 'Tasks', 'Planned', 'Sugar', '', -1, -1, 0, NULL, 0, NULL, 0, NULL, NULL, 0, '', NULL),
('53b2572e-727a-7539-2460-59566b6f08d9', 'Guardia', '2017-06-30 15:17:19', '2017-06-30 15:53:51', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, '8aff5677-c52f-7d82-3237-5911fcc9c488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0, '2017-07-01 13:00:00', '2017-07-01 19:00:00', 'Tasks', 'Planned', 'Sugar', '', -1, -1, 0, NULL, 0, NULL, 0, NULL, NULL, 0, '', NULL),
('92f11869-06c5-e096-94b9-59566d855905', 'Guardia', '2017-06-30 15:26:34', '2017-06-30 15:29:42', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '', 1, '', '', NULL, '', '', NULL, '', '', 6, 0, '2017-07-01 13:00:00', '2017-07-01 19:00:00', 'Accounts', 'Planned', 'Sugar', '', -1, -1, 0, NULL, 0, '', 0, '', NULL, 0, '', NULL),
('bab26615-00fc-8c30-302b-5956738c44be', 'Guardia', '2017-06-30 15:51:43', '2017-06-30 15:53:51', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '', 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', '', NULL, '', '', NULL, '', '', 6, 0, '2017-06-22 13:00:00', '2017-06-22 19:00:00', 'Accounts', 'Planned', 'Sugar', '', -1, -1, 0, NULL, 0, '', 0, '', NULL, 0, '', NULL),
('c2fd23a0-9f3d-9fd9-0f7e-595672a987d4', 'Guardia', '2017-06-30 15:45:48', '2017-06-30 15:53:51', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0, '2017-07-05 13:00:00', '2017-07-05 19:00:00', 'Tasks', 'Planned', 'Sugar', '', -1, -1, 0, NULL, 0, NULL, 0, NULL, NULL, 0, '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings_cstm`
--

CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `meetings_cstm`
--

INSERT INTO `meetings_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('19dba154-91dc-d95a-ac2f-595aa540de05', 0.00000000, 0.00000000, '', ''),
('404653f6-2327-45da-0866-5c3a873eacb1', 0.00000000, 0.00000000, NULL, NULL),
('4a15ab25-3d53-4b7a-c290-59566ecd1ad2', 0.00000000, 0.00000000, '', ''),
('53b2572e-727a-7539-2460-59566b6f08d9', 0.00000000, 0.00000000, '', ''),
('92f11869-06c5-e096-94b9-59566d855905', 0.00000000, 0.00000000, NULL, NULL),
('bab26615-00fc-8c30-302b-5956738c44be', 0.00000000, 0.00000000, NULL, NULL),
('c2fd23a0-9f3d-9fd9-0f7e-595672a987d4', 0.00000000, 0.00000000, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `meetings_leads`
--

INSERT INTO `meetings_leads` (`id`, `meeting_id`, `lead_id`, `required`, `accept_status`, `date_modified`, `deleted`) VALUES
('42e4f3dc-492d-2f10-529d-5c3a87d814b2', '404653f6-2327-45da-0866-5c3a873eacb1', 'cf6f8f2e-f1e8-1765-81e5-5c3a86999895', '1', 'none', '2019-01-13 00:32:22', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `meetings_users`
--

INSERT INTO `meetings_users` (`id`, `meeting_id`, `user_id`, `required`, `accept_status`, `date_modified`, `deleted`) VALUES
('20d9e45a-e15f-5f99-b995-595aa56c98a3', '19dba154-91dc-d95a-ac2f-595aa540de05', '1', '1', 'accept', '2017-07-03 20:12:34', 0),
('5d2444e9-f5a0-e131-7366-5c3a87132b1e', '404653f6-2327-45da-0866-5c3a873eacb1', '1', '1', 'accept', '2019-01-13 00:32:22', 0),
('99effaef-35c9-5671-52dc-59566d890d7b', '92f11869-06c5-e096-94b9-59566d855905', '8aff5677-c52f-7d82-3237-5911fcc9c488', '1', 'none', '2017-06-30 15:29:42', 1),
('bf7f99cb-20de-635d-e877-59567150142a', '4a15ab25-3d53-4b7a-c290-59566ecd1ad2', '8aff5677-c52f-7d82-3237-5911fcc9c488', '1', 'none', '2017-06-30 15:53:51', 1),
('c766eb34-f093-0da7-1575-59566bac3f2e', '53b2572e-727a-7539-2460-59566b6f08d9', '8aff5677-c52f-7d82-3237-5911fcc9c488', '1', 'none', '2017-06-30 15:53:51', 1),
('d5e15a83-92ca-b769-dd50-595673579f13', 'bab26615-00fc-8c30-302b-5956738c44be', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', '1', 'none', '2017-06-30 15:53:51', 1),
('e130c9ce-3b8b-dcb1-3399-595672d57054', 'c2fd23a0-9f3d-9fd9-0f7e-595672a987d4', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', '1', 'none', '2017-06-30 15:53:51', 1),
('efca3b45-b298-d541-0e64-59566e9fc893', '4a15ab25-3d53-4b7a-c290-59566ecd1ad2', '8aff5677-c52f-7d82-3237-5911fcc9c488', '1', 'none', '2017-06-30 15:53:51', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opportunities_cstm`
--

CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `deleted`, `assigned_user_id`, `type`, `user_id`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`) VALUES
('563a5ec9-8cb3-574e-dd36-582da6830648', 'system', NULL, NULL, NULL, NULL, 0, NULL, 'system', '1', 'SMTP', 'other', 'mail.tstalent.net', 465, 'info@tstalent.net', 'cc/kH4FJsBRinsK+sTf4ug==', 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `outbound_email_audit`
--

CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `project`
--

INSERT INTO `project` (`id`, `date_entered`, `date_modified`, `assigned_user_id`, `modified_user_id`, `created_by`, `name`, `description`, `deleted`, `estimated_start_date`, `estimated_end_date`, `status`, `priority`, `override_business_hours`) VALUES
('519d69da-7781-763c-77ed-5a1961b6ab34', '2017-11-25 12:25:06', '2017-11-25 12:25:06', '392003a9-b9b0-05cf-1c16-5911f5143e69', '1', '1', 'QUIERO VINOS', NULL, 0, '2017-11-24', '2017-11-30', 'Underway', 'high', 1),
('8f1df7c3-c64e-f2d8-d61c-59f881277986', '2017-10-31 13:58:46', '2017-11-25 12:39:58', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', '1', '1', 'PORTAL VINOS EN CHILE', NULL, 1, '2017-10-30', '2017-11-12', 'Underway', 'high', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_contacts_1_c`
--

CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_cstm`
--

CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `project_cstm`
--

INSERT INTO `project_cstm` (`id_c`, `jjwg_maps_lng_c`, `jjwg_maps_lat_c`, `jjwg_maps_geocode_status_c`, `jjwg_maps_address_c`) VALUES
('519d69da-7781-763c-77ed-5a1961b6ab34', 0.00000000, 0.00000000, NULL, NULL),
('8f1df7c3-c64e-f2d8-d61c-59f881277986', 0.00000000, 0.00000000, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `project_task`
--

INSERT INTO `project_task` (`id`, `date_entered`, `date_modified`, `project_id`, `project_task_id`, `name`, `status`, `relationship_type`, `description`, `predecessors`, `date_start`, `time_start`, `time_finish`, `date_finish`, `duration`, `duration_unit`, `actual_duration`, `percent_complete`, `date_due`, `time_due`, `parent_task_id`, `assigned_user_id`, `modified_user_id`, `priority`, `created_by`, `milestone_flag`, `order_number`, `task_number`, `estimated_effort`, `actual_effort`, `deleted`, `utilization`) VALUES
('24dba56d-abbb-6760-6352-5a196573e09c', '2017-11-25 12:42:25', '2017-11-25 12:42:25', '519d69da-7781-763c-77ed-5a1961b6ab34', NULL, 'DISEÑO DE PLANTILLA', 'Completed', 'FS', '', NULL, '2017-11-24', NULL, NULL, '2017-11-24', 0, NULL, NULL, 100, NULL, NULL, NULL, '392003a9-b9b0-05cf-1c16-5911f5143e69', '1', 'High', '1', 0, 1, 0, 18, 25, 0, 100),
('9bfa627e-724a-ef2f-95f3-5a19671d758b', '2017-11-25 12:52:19', '2017-11-25 12:52:19', '519d69da-7781-763c-77ed-5a1961b6ab34', NULL, 'GESTIÓN DE CONTENIDO', 'In Progress', 'FS', '', NULL, '2017-11-25', NULL, NULL, '2017-11-25', 0, NULL, NULL, 80, NULL, NULL, NULL, '392003a9-b9b0-05cf-1c16-5911f5143e69', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'High', '392003a9-b9b0-05cf-1c16-5911f5143e69', 0, 1, 0, 30, 10, 0, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `project_users_1_c`
--

CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `project_users_1_c`
--

INSERT INTO `project_users_1_c` (`id`, `date_modified`, `deleted`, `project_users_1project_ida`, `project_users_1users_idb`) VALUES
('b5e2813a-5022-a373-9a4a-59f8811b24d8', '2017-11-25 12:39:58', 1, '8f1df7c3-c64e-f2d8-d61c-59f881277986', '1'),
('e8480978-7f54-cc5d-6b57-5a1961574224', '2017-11-25 12:25:06', 0, '519d69da-7781-763c-77ed-5a1961b6ab34', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospects_cstm`
--

CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('16b13c98-11d0-4141-4302-590019352e86', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16ed4865-2bae-3e78-1987-590019e5962f', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1732d5ee-da85-866e-e370-59001957e357', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1769b111-ccc6-4bc0-c4c0-59001962bcb3', 'securitygroups_calls', 'SecurityGroups', 'securitygroups', 'id', 'Calls', 'calls', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Calls', 0, 0),
('177725ae-9567-1e41-e292-590019236544', 'aos_contracts_modified_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('179c0dce-bb3d-71aa-36ab-590019124f7e', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('17d036f2-d8a6-f391-34eb-59001950f524', 'aos_contracts_created_by', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('17d30b96-a00a-9b64-5d5b-590019cfa8f5', 'calls_reschedule', 'Calls', 'calls', 'id', 'Calls_Reschedule', 'calls_reschedule', 'call_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('180aca9b-3e97-aab5-2693-590019c8cfa9', 'aos_contracts_assigned_user', 'Users', 'users', 'id', 'AOS_Contracts', 'aos_contracts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('18467821-680a-19fd-bf82-5900192207fa', 'securitygroups_aos_contracts', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Contracts', 0, 0),
('187aa7e1-1bf5-45a7-c7cc-5900193fb1d8', 'aos_contracts_tasks', 'AOS_Contracts', 'aos_contracts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('18aaf7ca-f5e2-d96d-3fa5-590019f545f2', 'aos_contracts_notes', 'AOS_Contracts', 'aos_contracts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('18d092b5-0250-9bef-fd49-590019a7649d', 'aos_contracts_meetings', 'AOS_Contracts', 'aos_contracts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('1902b29b-c0e7-23ab-2c22-590019054a36', 'aos_contracts_calls', 'AOS_Contracts', 'aos_contracts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOS_Contracts', 0, 0),
('193191c7-690c-3da7-f0f0-59001922ad73', 'aos_contracts_aos_products_quotes', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('19608ea1-d63e-8ecb-a521-590019d5ec05', 'aos_contracts_aos_line_item_groups', 'AOS_Contracts', 'aos_contracts', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('19cf0333-4242-41bb-5333-59001947ce38', 'securitygroups_emailtemplates', 'SecurityGroups', 'securitygroups', 'id', 'EmailTemplates', 'email_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'EmailTemplates', 0, 0),
('1d880cdb-6092-df22-bbd2-59001988ccc4', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1deb9043-3f37-3e3a-fbf7-59001929905e', 'securitygroups_emails', 'SecurityGroups', 'securitygroups', 'id', 'Emails', 'emails', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Emails', 0, 0),
('1e3a9f41-294d-ae58-3863-590019caed3c', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1e7505ab-3b4f-2831-1def-590019ed170b', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1eacff04-389b-a62e-1a9c-590019e7f166', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1edfd6fb-3c1a-b0d9-d386-590019af717b', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f10122a-d5d0-2c6c-f2e5-590019014b3c', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('1f45855f-2189-df8d-c3b1-59001985e0de', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('1f745d72-63a0-a725-c446-59001918e868', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('1faf6b3f-1efa-6248-d8bb-5900199b9667', 'emails_aos_contracts_rel', 'Emails', 'emails', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'AOS_Contracts', 0, 0),
('1fe838a3-2189-cbc2-619e-5900193453f8', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2577e60e-56f8-1d89-d2ec-590019430303', 'aos_invoices_modified_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('25ce2eb9-78c2-4223-2853-590019270ef2', 'aos_invoices_created_by', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('260dcf4c-04f8-4d7e-1cb2-590019b4fb01', 'aos_invoices_assigned_user', 'Users', 'users', 'id', 'AOS_Invoices', 'aos_invoices', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('264709f2-0b8c-2fbf-f477-590019931f4f', 'securitygroups_aos_invoices', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Invoices', 0, 0),
('2688bbbc-186b-570c-dde6-59001969fc12', 'aos_invoices_aos_product_quotes', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('26c11e1f-3b50-3a63-f556-590019d472be', 'aos_invoices_aos_line_item_groups', 'AOS_Invoices', 'aos_invoices', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2bc2b9c5-ce96-5a85-fff0-5900198ddeed', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2bfc2139-5878-292b-390d-59001984d9b6', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c207ac6-8e69-f23f-ba2c-590019c8c6df', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2c57be9f-2cb9-49ea-4036-590019569194', 'securitygroups_meetings', 'SecurityGroups', 'securitygroups', 'id', 'Meetings', 'meetings', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Meetings', 0, 0),
('2c974ffc-9793-5e42-77ae-590019b9c4dc', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('2cfb3ad6-f97d-68ce-53b0-5900199fffa1', 'aos_pdf_templates_modified_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d3f2438-fd51-ff54-bc34-59001975a135', 'aos_pdf_templates_created_by', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d716705-d877-370d-afc1-590019cffbb9', 'aos_pdf_templates_assigned_user', 'Users', 'users', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d97e0d6-699b-b5b5-4cb3-59001923f98a', 'securitygroups_aos_pdf_templates', 'SecurityGroups', 'securitygroups', 'id', 'AOS_PDF_Templates', 'aos_pdf_templates', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_PDF_Templates', 0, 0),
('346e8d0d-fff1-5b89-2d74-590019c8e61d', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34b79031-ef79-42ff-bddd-590019424a77', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('34f3b63d-aed5-2bd8-66ac-59001938e2a1', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('353938cf-ac67-f08e-0e26-590019756374', 'securitygroups_tasks', 'SecurityGroups', 'securitygroups', 'id', 'Tasks', 'tasks', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Tasks', 0, 0),
('3545f8a7-3c2e-bf8a-ff49-5900197d8d4e', 'aos_product_categories_modified_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('35768f22-8a30-cdfb-8280-590019b6a3bb', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('358c6202-2ad2-ed85-8f71-590019fd750a', 'aos_product_categories_created_by', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('35c84099-a085-b4cb-6db5-5900193dd672', 'aos_product_categories_assigned_user', 'Users', 'users', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36011e76-ca37-939d-0d87-5900191d7588', 'securitygroups_aos_product_categories', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Product_Categories', 0, 0),
('363e0859-cb35-cb84-adf0-5900192f20e4', 'sub_product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Product_Categories', 'aos_product_categories', 'parent_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b4ef07f-5f03-1fff-7422-5900190b2625', 'aos_products_modified_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3b9c3505-5b21-a5bd-c570-59001936cdc9', 'aos_products_created_by', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3bdec403-ae48-203c-5f5c-590019fb5163', 'aos_products_assigned_user', 'Users', 'users', 'id', 'AOS_Products', 'aos_products', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c1e887b-a385-069c-9886-5900195cc2bc', 'securitygroups_aos_products', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Products', 'aos_products', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Products', 0, 0),
('3c90a0de-8e4c-8c99-1462-5900198748ce', 'product_categories', 'AOS_Product_Categories', 'aos_product_categories', 'id', 'AOS_Products', 'aos_products', 'aos_product_category_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('45cdf9af-6aff-5b75-dfe6-59001932838d', 'alerts_modified_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4626219d-84a2-7467-b465-590019f91e9d', 'alerts_created_by', 'Users', 'users', 'id', 'Alerts', 'alerts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('462fe553-316a-91e0-999c-590019d9be88', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('465df18f-6360-e2c1-23df-590019b020c3', 'alerts_assigned_user', 'Users', 'users', 'id', 'Alerts', 'alerts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46a792aa-a6c7-4b8d-2521-59001953ea02', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('46eba4bc-1734-bdad-872d-5900198f747b', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('472b39e6-a62b-9d82-42c6-5900199bf743', 'securitygroups_leads', 'SecurityGroups', 'securitygroups', 'id', 'Leads', 'leads', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Leads', 0, 0),
('476a8aba-7bdc-e7b0-e163-59001936a800', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('47875b5c-eddc-4b72-3e4e-590019c2a467', 'aos_products_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('47a9fec2-d96e-97b3-d6d9-590019ec0cba', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('47ce6771-7e7b-cfea-582b-590019ea61e3', 'aos_products_quotes_created_by', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('47e84162-25cf-e38f-4f1c-590019cb6b4b', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('48099dca-e23d-708c-6a35-590019bb4211', 'aos_products_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4821a35f-e7bd-cf5f-1f80-59001945b2ed', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('484a51f4-5563-336d-3567-590019ae5625', 'aos_product_quotes_aos_products', 'AOS_Products', 'aos_products', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'product_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('485eccc3-4102-f0cb-6c63-590019098e60', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('48a30041-a223-d685-4f2d-590019618d00', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('48e471f0-54f5-d0ee-801a-5900195f55f7', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('49203e6e-2fcf-180d-c514-590019945dd9', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('496266a9-0a68-a7cd-a66b-590019e96668', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('4f038d2e-a37a-8f94-bc79-590019caa8b8', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f548ff5-dcfd-f54c-f2fe-5900195223a4', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f9aef51-4970-8e13-5436-5900190054cb', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4fd3ba38-3b10-8650-3fda-590019007ee5', 'securitygroups_documents', 'SecurityGroups', 'securitygroups', 'id', 'Documents', 'documents', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Documents', 0, 0),
('5010d503-027d-f7fa-c1e4-590019d15ac2', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('50a7ce9a-8cdd-24d2-90b0-590019528203', 'aos_line_item_groups_modified_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('50eb8003-e713-3b3c-4e73-5900194946a2', 'aos_line_item_groups_created_by', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5128a272-cb73-b48b-0cef-590019e46592', 'aos_line_item_groups_assigned_user', 'Users', 'users', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5161ed50-3e29-5957-baf4-59001998bca8', 'groups_aos_product_quotes', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'group_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('51a64fb5-4855-fd8a-d06c-590019fe6072', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5c451e33-7264-e269-22e8-5900196aa16e', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('5c8cb9cf-3cbe-09e9-e504-5900198fea92', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('5d2b7081-b26c-ab83-61ff-590019001d94', 'aos_quotes_modified_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d6dd02c-e962-eb2a-58e4-5900193ad272', 'aos_quotes_created_by', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5db78b69-a74a-9304-657c-590019f9fd75', 'aos_quotes_assigned_user', 'Users', 'users', 'id', 'AOS_Quotes', 'aos_quotes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5df24ff0-4787-185f-7251-590019a6eb54', 'securitygroups_aos_quotes', 'SecurityGroups', 'securitygroups', 'id', 'AOS_Quotes', 'aos_quotes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOS_Quotes', 0, 0),
('5e3912cf-9512-e945-72a5-590019751153', 'aos_quotes_aos_product_quotes', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Products_Quotes', 'aos_products_quotes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e8006ec-ae45-4dbe-cd91-590019cb1ce6', 'aos_quotes_aos_line_item_groups', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Line_Item_Groups', 'aos_line_item_groups', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5f556fe0-ed03-32f0-66b9-590019117af2', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('60940cb3-7ec5-a027-a46c-59001924af26', 'aor_scheduled_reports_modified_user', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('612ebcdb-8860-a32b-8a73-590019a4e7ad', 'aow_actions_modified_user', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('617f7e78-c089-d218-a54d-5900199a1d49', 'aow_actions_created_by', 'Users', 'users', 'id', 'AOW_Actions', 'aow_actions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('641c0e15-3838-3559-9065-590019656df8', 'aor_scheduled_reports_created_by', 'Users', 'users', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('675ae98e-b2bd-9b72-53bf-590019a1a8e1', 'spots_modified_user', 'Users', 'users', 'id', 'Spots', 'spots', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('679d8810-4af3-eafe-719a-590019c1672b', 'spots_created_by', 'Users', 'users', 'id', 'Spots', 'spots', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('679faeb8-5eb0-1c6d-87a8-590019c2d507', 'aow_workflow_modified_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67d90e8c-3f4a-8fa5-66aa-590019aafc5e', 'spots_assigned_user', 'Users', 'users', 'id', 'Spots', 'spots', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('67e9af07-f8ce-0ca6-f839-590019a78719', 'aow_workflow_created_by', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6815e25c-9591-ceaa-38a7-590019ba8f8c', 'securitygroups_spots', 'SecurityGroups', 'securitygroups', 'id', 'Spots', 'spots', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Spots', 0, 0),
('682a0e6e-544e-2822-6133-5900190050fc', 'aow_workflow_assigned_user', 'Users', 'users', 'id', 'AOW_WorkFlow', 'aow_workflow', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6869c6e2-aa50-7d78-4c32-590019d7bfa2', 'securitygroups_aow_workflow', 'SecurityGroups', 'securitygroups', 'id', 'AOW_WorkFlow', 'aow_workflow', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOW_WorkFlow', 0, 0),
('68a644ed-d122-079f-8c4a-590019e2ea35', 'aow_workflow_aow_conditions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Conditions', 'aow_conditions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('68e8e2a4-eb57-2a56-26d7-5900192761d4', 'aow_workflow_aow_actions', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Actions', 'aow_actions', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('69219ab1-1871-79f1-d3b4-59001910b8c9', 'aow_workflow_aow_processed', 'AOW_WorkFlow', 'aow_workflow', 'id', 'AOW_Processed', 'aow_processed', 'aow_workflow_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ca00d65-11d4-9923-7e5b-590019d09556', 'aobh_businesshours_modified_user', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6ce760ad-ce68-9296-48da-590019e25bf7', 'aobh_businesshours_created_by', 'Users', 'users', 'id', 'AOBH_BusinessHours', 'aobh_businesshours', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6dac2118-5331-1f94-78a6-590019eaa110', 'aow_processed_modified_user', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6df04583-2262-935f-ce4d-5900194b6dd3', 'aow_processed_created_by', 'Users', 'users', 'id', 'AOW_Processed', 'aow_processed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('718f91c5-f455-bbdb-f121-59001915e004', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('71d967aa-3f6e-5dc4-04e7-5900196392f5', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('720ff771-d0c6-c856-2147-590019b3cc2f', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('73bd94f2-9bde-f0b4-ae38-590019921d42', 'aow_conditions_modified_user', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('73f97a3b-9089-8edb-8d5c-590019766df8', 'aow_conditions_created_by', 'Users', 'users', 'id', 'AOW_Conditions', 'aow_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('75c9fd39-259b-8829-d539-59001983b066', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7627263f-63f3-d308-c559-590019fd258a', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7660030c-bd8b-ed7a-7ead-59001972fb16', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('769639d5-db6b-4a41-c054-590019b8f189', 'securitygroups_cases', 'SecurityGroups', 'securitygroups', 'id', 'Cases', 'cases', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Cases', 0, 0),
('76d26b0f-2370-2592-3043-59001968a5fa', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('7709c48b-8870-cf56-45f2-5900191ef5f0', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('773b7d8f-d593-0a81-1f70-5900197e24ce', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('776fda2e-1a2f-50ad-0ff8-59001996fb0c', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('77b5062f-0397-1276-ebc0-590019c2c607', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('77e93a0f-c29a-ebe3-b7d8-590019352b5d', 'cases_created_contact', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'contact_created_by_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('786fff45-393c-e6fa-b86e-590019f8dc09', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('78b0a170-9c54-9e6b-9197-590019a8f830', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('78f89248-58db-78a1-98f9-5900197aa9e0', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7a0f0c85-3aa0-22e8-41de-5900197e11c2', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7cc1c2eb-38f3-5828-9aa1-590019d3761e', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d05237e-0531-ec5e-d4e7-590019aed3cd', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d4921c4-4e39-1d89-5e00-590019f7978e', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauth_consumer', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7ec9846a-94cc-873c-19a4-590019d0cac0', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f040d5b-db1b-5496-b146-590019733f8c', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f0606d2-1f73-48f5-c32f-5900192137dd', 'securitygroups_notes', 'SecurityGroups', 'securitygroups', 'id', 'Notes', 'notes', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Notes', 0, 0),
('7f40116d-fa8f-d95f-f95e-5900191ff4c6', 'jjwg_maps_modified_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7f8343a0-15a5-b6f6-16e6-590019b60c05', 'jjwg_maps_created_by', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7fc09996-081d-d389-6923-590019afdced', 'jjwg_maps_assigned_user', 'Users', 'users', 'id', 'jjwg_Maps', 'jjwg_maps', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('800bf609-cf9b-1054-78b4-590019464fe2', 'securitygroups_jjwg_maps', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Maps', 'jjwg_maps', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Maps', 0, 0),
('80435732-12a6-3f99-d4fd-5900196a8eec', 'jjwg_Maps_accounts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Accounts', 'accounts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('808de72e-72a7-7b6f-db43-5900196bae11', 'jjwg_Maps_contacts', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('80d34f40-75dc-409c-e59c-59001993ca05', 'jjwg_Maps_leads', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('810cea0d-e2e4-0e36-1b5f-590019770544', 'jjwg_Maps_opportunities', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('81554b70-3c22-49c8-72b9-590019b8e2c8', 'jjwg_Maps_cases', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Cases', 'cases', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('819004d3-9091-fb0f-9d3d-590019e6a092', 'jjwg_Maps_projects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Project', 'project', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('81cdf4f1-f93b-56fa-8938-590019288599', 'jjwg_Maps_meetings', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Meetings', 'meetings', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('821992c6-2735-b1f6-1311-590019d42d82', 'jjwg_Maps_prospects', 'jjwg_Maps', 'jjwg_Maps', 'parent_id', 'Prospects', 'prospects', 'id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('82810489-fef2-8ced-f241-59001916c6a4', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('840485e3-f3b3-f2ec-83ea-5900191212a1', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8446c9c6-e6d2-d102-0b6a-59001979adf7', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('847cf50f-c33f-f270-d444-5900191d587d', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('84c571bf-81c7-e3c2-d441-5900196601bf', 'securitygroups_bugs', 'SecurityGroups', 'securitygroups', 'id', 'Bugs', 'bugs', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Bugs', 0, 0),
('84fd46ae-023c-fbcc-ba59-5900190d0431', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('8537f7ec-8e19-eba9-e557-5900197d012b', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('85715bb0-f0eb-4cef-14b5-590019e02b59', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('85ac0b98-9363-d5ff-c6a1-590019ff5812', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('85e39b30-7559-3df4-521b-590019536ef3', 'am_projecttemplates_modified_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('85ecb277-1880-cc35-f6ca-590019b02cda', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('85f90379-aab7-23c3-4b10-590019c499ae', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86271a71-aced-71ac-54b8-590019317d8b', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8629618c-338d-c570-b2ef-5900193fc8f3', 'am_projecttemplates_created_by', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86639e32-ad1d-52c3-4b0e-59001931f8e2', 'am_projecttemplates_assigned_user', 'Users', 'users', 'id', 'AM_ProjectTemplates', 'am_projecttemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('866705a8-9250-ef8c-1b06-5900192340fb', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('86ee7e3f-5437-4deb-0d98-590019aaf7b4', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8728f7ad-489f-5c7e-b06a-590019265d7c', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('87703877-7970-43ed-bb95-59001912bf70', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('87e6477a-74a1-8acf-6308-590019d0858f', 'jjwg_markers_modified_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('882549d7-d859-18b7-c94e-590019d73f78', 'jjwg_markers_created_by', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8863befd-d2dd-f2c8-d2ca-590019a230d8', 'jjwg_markers_assigned_user', 'Users', 'users', 'id', 'jjwg_Markers', 'jjwg_markers', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('886bb97e-7fc1-e121-8fe7-5900193a213f', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('88a1132e-1a7f-7864-c873-590019af80f5', 'securitygroups_jjwg_markers', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Markers', 0, 0),
('88a7b6a8-68b3-0144-62e3-590019213339', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('88dd2342-55ca-684d-19f5-5900198776f5', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('89143a7f-7b72-77e5-2c04-59001931a0dc', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('894b15b0-fce3-9774-b1dd-590019e817f8', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8b1366d8-2ab5-0dd6-d4b2-59001939a681', 'securitygroups_project', 'SecurityGroups', 'securitygroups', 'id', 'Project', 'project', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Project', 0, 0),
('8b5b0ef5-28eb-68e7-db28-5900197c6d70', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('8b9b74b2-fc86-aeb9-7ccf-590019abbb18', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('8bd7c3a4-0d92-34a0-6de1-590019a1f77d', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('8c162299-464d-9471-0ca0-590019846e33', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('8c4bd0ec-3af5-e27e-b459-590019cc85df', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('8c8b38a0-b1ce-884d-fc37-590019a77f7c', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ccd93f3-3090-6992-e6a1-59001941dd42', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d0af0f5-1424-f478-5e8c-59001975c001', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d468346-a052-59dd-7dc0-5900194795db', 'am_tasktemplates_modified_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d48f0fb-641b-648f-8d64-590019b8fe78', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8d8fba22-ca78-73bf-1489-5900193f992c', 'am_tasktemplates_created_by', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8dceb230-3ca9-6372-8a2a-590019917925', 'am_tasktemplates_assigned_user', 'Users', 'users', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8e62ef4e-39e6-e0ec-1fbc-590019bb4487', 'favorites_modified_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8e8273bc-6e67-aaee-0b21-590019d7b938', 'jjwg_areas_modified_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8e9ece18-c423-f119-f61d-59001918d706', 'favorites_created_by', 'Users', 'users', 'id', 'Favorites', 'favorites', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ec2024f-ebae-37b8-b698-59001999ec99', 'jjwg_areas_created_by', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8ed87531-f9ea-9108-ec40-590019438954', 'favorites_assigned_user', 'Users', 'users', 'id', 'Favorites', 'favorites', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f19e0d2-c1d6-a210-63fb-590019ba774e', 'jjwg_areas_assigned_user', 'Users', 'users', 'id', 'jjwg_Areas', 'jjwg_areas', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8f2a382f-f9af-31e4-55c9-59001967a0a3', 'securitygroups_projecttask', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('8f5a1522-6749-d7aa-b4fd-590019643bf1', 'securitygroups_jjwg_areas', 'SecurityGroups', 'securitygroups', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'jjwg_Areas', 0, 0),
('8f70cb87-cbc9-a88b-0ba3-590019bd27db', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('8faf4795-7267-159d-ab8a-5900197377a5', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('8ffbf1eb-4a98-1582-7eb2-590019100817', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('903f298b-ed7c-2b3c-5aa8-590019f180d2', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('9087b1c5-9275-f577-6f26-590019761eef', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('90b7e6f1-402f-6d53-8677-590019a82b6f', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90eb36cc-80de-35d4-f492-590019a97655', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('91219d62-71ef-f833-8abc-59001939b5e2', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('941103be-0654-5603-ff18-590019cf8bcf', 'jjwg_address_cache_modified_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('946651f2-b55b-e451-437c-590019e55500', 'jjwg_address_cache_created_by', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('946d72bb-3b4c-d91d-e893-590019276c2a', 'aok_knowledge_base_categories_modified_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94ad7272-a17c-40da-b689-590019e27be1', 'aok_knowledge_base_categories_created_by', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94ad7c3d-c759-e41d-7574-5900197e69b8', 'jjwg_address_cache_assigned_user', 'Users', 'users', 'id', 'jjwg_Address_Cache', 'jjwg_address_cache', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('94eb90b7-b4df-c21d-1ea8-590019061849', 'aok_knowledge_base_categories_assigned_user', 'Users', 'users', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9900cb30-6b4c-b1df-6213-5900196be2cf', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9946c35e-ff19-c607-129c-590019d5997a', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('998d6dde-005a-c389-5b44-5900195c5105', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('99c198b4-480a-724c-96e6-5900194ef9d8', 'securitygroups_campaigns', 'SecurityGroups', 'securitygroups', 'id', 'Campaigns', 'campaigns', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Campaigns', 0, 0),
('99f49581-744b-3b9f-512b-590019180684', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a29e8e5-7420-90cf-c2e5-590019736671', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a57cbe4-d8cd-3575-8b27-590019a330b8', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a8328c6-7736-9de7-0501-59001957c5c5', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9a84561c-c5d3-51d7-f3bc-59001981d6df', 'calls_reschedule_modified_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9aab7774-b877-6573-64e8-590019f0bccc', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ace3d17-82f0-668e-0fb8-59001906ff37', 'calls_reschedule_created_by', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ae25723-e6d8-47cc-0453-5900194e63f6', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b0fae96-b7bf-4f19-4614-590019a2b5bb', 'calls_reschedule_assigned_user', 'Users', 'users', 'id', 'Calls_Reschedule', 'calls_reschedule', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b24354e-cc48-47b1-d4b0-590019c86a28', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b54cbf6-e478-e622-13b7-590019648444', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9b8c32b0-e2c4-70e3-2b85-5900193ca4e4', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9bab894b-0950-fad6-cf8e-5900192862d7', 'aok_knowledgebase_modified_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9bc850e6-9996-3f18-6a4d-590019ba3577', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9bf03eb5-2552-e464-a433-590019a5bbcf', 'aok_knowledgebase_created_by', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c2ad1ec-ac8e-bd4d-0cd6-5900190e1487', 'aok_knowledgebase_assigned_user', 'Users', 'users', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c6ef19b-77b9-9d23-9fbb-590019755c2a', 'securitygroups_aok_knowledgebase', 'SecurityGroups', 'securitygroups', 'id', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOK_KnowledgeBase', 0, 0),
('9f5b2642-dec1-9c09-7618-5900199ae91c', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9f9cdcb6-8ea0-ba4b-834b-59001924ed87', 'securitygroups_prospectlists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('a0ee32fb-8f5b-f145-23dc-59001978f85d', 'securitygroups_modified_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1290f44-791b-7541-8450-5900198fecdd', 'reminders_modified_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a14424f7-67a6-d810-6673-59001902cd05', 'securitygroups_created_by', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a16f0abe-1a9a-a2ba-a0af-590019412e2b', 'reminders_created_by', 'Users', 'users', 'id', 'Reminders', 'reminders', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a18ad17e-9cea-522b-aede-5900193e6412', 'securitygroups_assigned_user', 'Users', 'users', 'id', 'SecurityGroups', 'securitygroups', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a1a9096a-88c9-d013-00aa-590019deb4a8', 'reminders_assigned_user', 'Users', 'users', 'id', 'Reminders', 'reminders', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a451afe6-67a1-c86c-c21b-590019803925', 'outbound_email_modified_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a492d2fa-1a5d-78f0-1b9b-590019d2c8a1', 'outbound_email_created_by', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4ca35a6-4f2f-81d9-ce31-59001967f5a3', 'outbound_email_assigned_user', 'Users', 'users', 'id', 'OutboundEmailAccounts', 'outbound_email', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);
INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('a64421df-465c-35a2-45e6-590019ba605b', 'reminders_invitees_modified_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6819c7b-6e9b-739a-3c41-590019190a59', 'reminders_invitees_created_by', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a6c33120-c68b-a546-d806-590019b09191', 'reminders_invitees_assigned_user', 'Users', 'users', 'id', 'Reminders_Invitees', 'reminders_invitees', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8611ef9-ba63-4719-61a9-590019c7e924', 'templatesectionline_modified_user', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a8a0dcad-c19b-0a27-c6d1-590019ee83fb', 'templatesectionline_created_by', 'Users', 'users', 'id', 'TemplateSectionLine', 'templatesectionline', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ad884ddf-315e-c456-442f-590019b1a91a', 'fp_events_modified_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('adc9362a-369d-64a5-1ae0-590019d426ba', 'fp_events_created_by', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae0b651b-0ac2-57a3-56f1-590019a62568', 'fp_events_assigned_user', 'Users', 'users', 'id', 'FP_events', 'fp_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ae453820-e14b-5427-689b-5900198ed41a', 'securitygroups_fp_events', 'SecurityGroups', 'securitygroups', 'id', 'FP_events', 'fp_events', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_events', 0, 0),
('aecb53a0-1f6d-2bdd-10df-5900190c3c61', 'kreports_modified_user', 'Users', 'users', 'id', 'KReports', 'kreports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af065d13-a200-3071-9dac-59001949a600', 'kreports_created_by', 'Users', 'users', 'id', 'KReports', 'kreports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af404da1-744e-3b4f-eb85-590019e1b27d', 'kreports_assigned_user', 'Users', 'users', 'id', 'KReports', 'kreports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b142a4fd-4e9c-e50e-f25c-590019271a37', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b295e556-4940-9367-05ec-590019e1ec72', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b2cdc774-7855-6f56-6215-590019159d61', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b30d3200-666d-c0ff-bfd8-5900190f1774', 'fp_event_locations_modified_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b30ed13e-b793-977e-92fa-5900190b8025', 'securitygroups_prospects', 'SecurityGroups', 'securitygroups', 'id', 'Prospects', 'prospects', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Prospects', 0, 0),
('b34c9e59-e521-7ee4-ddf5-590019b64615', 'fp_event_locations_created_by', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b3563238-b0ae-5c44-5827-590019410433', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('b3841cf2-ef38-469f-0bd7-59001960bc11', 'fp_event_locations_assigned_user', 'Users', 'users', 'id', 'FP_Event_Locations', 'fp_event_locations', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b38cf6cd-2922-dd54-bf5f-590019dc581e', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('b3b9fdb1-6185-16ff-09b9-590019246c94', 'securitygroups_fp_event_locations', 'SecurityGroups', 'securitygroups', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'FP_Event_Locations', 0, 0),
('b3c4cab8-55d7-1434-48b6-5900196fec0e', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('b3ed7eb1-1c28-2087-4c38-5900195ec7ac', 'optimistic_locking', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('b3fa4f0c-b046-534d-013e-590019c043a9', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('b4143156-a47f-41a4-84ab-590019fdac50', 'unified_search', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0),
('b4375717-7717-a65a-2e0d-5900199d61b0', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('b477209a-cf31-16c5-69b2-59001959a579', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('b4adbf18-7c1a-86be-fac1-590019a6a980', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('b4d783c9-f9af-1d13-f4a4-590019993efb', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('b6deea36-d059-88af-4f8d-59001907fac8', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b73b15ff-ba6c-5306-6cd4-5900195c54fa', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('b77d3cc5-d2b6-8772-364b-5900190232e9', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('b79ca213-4546-8bd5-633f-59001944db8d', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7bb4d27-4ca9-bd7c-3227-59001984cb79', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('b7f49004-fbd9-df5a-59f7-590019f0a8a8', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('b82afa82-64a1-f77b-2e12-59001979a09e', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('b861496a-a2f0-8e3a-b3cf-590019190953', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('b8999f29-ac1b-5bdc-1a32-590019ba9c99', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('b8bf6bcb-9602-0da5-ccdd-59001904be44', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('b90eb44d-c066-1067-0eb6-590019a4de81', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('b9451efb-c28f-15bd-8ea2-5900194dc75e', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('b984f749-b0fc-cfde-3aa1-59001910f8f7', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('b9bdd0f8-402f-6819-dbc5-5900198f06fd', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('b9dbf557-ec1d-32d5-6266-5900196606cb', 'aod_indexevent_modified_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba19c6f6-d6d7-a000-0e35-59001961e721', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('ba23dd94-dbc0-e449-82c4-590019b93d61', 'aod_indexevent_created_by', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba4cf228-0dc4-221a-087e-590019de9ced', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('ba637a3a-9a7d-2fac-fa00-5900193d939b', 'aod_indexevent_assigned_user', 'Users', 'users', 'id', 'AOD_IndexEvent', 'aod_indexevent', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ba7616b2-12a0-97f0-0ae0-590019382f5b', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('baaf6db4-e5b6-f741-6a5e-590019c8d557', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('bae73b19-91f8-f842-97b8-590019399951', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('bb2c6fda-2f34-4611-2bfd-590019638f62', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('bb6c01b1-03ec-e2e7-41de-5900199ed60b', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('bbbb09a6-27da-a5f8-0fc1-590019f32b92', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('bc06e4e0-98f6-a540-e2b3-59001992d4df', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('bc3fbf05-d645-8630-1282-590019d7ab23', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('bc786064-f25d-644d-874f-590019924711', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('bcb97688-f2bb-5e31-cd0d-5900198fc9dc', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('bcf5230b-4b55-493b-da10-590019dfff48', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('bd2d78b3-045e-1bc6-cef2-590019d820e0', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('bd6bde90-edf4-2588-d881-59001945958c', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('bdbf513d-ac24-25be-4906-59001956ab63', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('bdf9ab15-7cad-dd24-721e-590019d8e1e3', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('be3cd407-d2f4-611f-a674-59001951ab91', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('bea1e92d-318d-d5b7-3482-5900192fa3f7', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('bef0326b-f5b1-f5a5-1d84-590019f9d1cf', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('bf329eb9-36d6-225b-3806-590019d8ae94', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('bf7642c5-d521-986f-c654-590019d235db', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('bfb32f2c-6f29-ff3e-b13b-590019d78af0', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('bfed34c9-0da8-a7e5-b7df-5900193786f0', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('c01676ca-ec92-290a-e1a9-590019b37449', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0),
('c04329c1-e6b6-dcac-cbf3-590019e99f62', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('c054fb60-41ff-6937-251d-59001969017e', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('c077c2b8-a957-ea78-406e-59001974d5bb', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c08e27b6-6084-a9f8-ee76-5900195f2634', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('c0b5d4ca-adb6-be1b-3de5-590019f13980', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c0da0556-f981-cbb5-d3b1-590019ca438b', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('c1084876-e6d8-0b3e-3941-590019e3e34b', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'job_queue', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1178bb2-7082-a055-ee10-590019e60c22', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('c16b2cb9-d105-c3a2-7589-590019d3f623', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('c1a74746-6fdc-ce26-4ab8-59001911e22d', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('c1dda902-0cd7-6ed2-96bd-590019520aaa', 'aok_knowledgebase_categories', 'AOK_KnowledgeBase', 'aok_knowledgebase', 'id', 'AOK_Knowledge_Base_Categories', 'aok_knowledge_base_categories', 'id', 'aok_knowledgebase_categories', 'aok_knowledgebase_id', 'aok_knowledge_base_categories_id', 'many-to-many', NULL, NULL, 0, 0),
('c202b9f0-34e2-df7e-1923-5900197a5401', 'am_projecttemplates_project_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Project', 'project', 'id', 'am_projecttemplates_project_1_c', 'am_projecttemplates_project_1am_projecttemplates_ida', 'am_projecttemplates_project_1project_idb', 'many-to-many', NULL, NULL, 0, 0),
('c23d9690-b8f7-60f5-6cf9-59001905ecdb', 'am_projecttemplates_contacts_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Contacts', 'contacts', 'id', 'am_projecttemplates_contacts_1_c', 'am_projecttemplates_ida', 'contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('c253a854-a51e-08df-9e4b-59001990cdd6', 'aod_index_modified_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c2774003-ddc3-2bf1-b004-590019068e30', 'am_projecttemplates_users_1', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'Users', 'users', 'id', 'am_projecttemplates_users_1_c', 'am_projecttemplates_ida', 'users_idb', 'many-to-many', NULL, NULL, 0, 0),
('c297a55e-eef6-0510-3572-59001976dbc6', 'aod_index_created_by', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c2b53763-9dde-f6e1-9a83-590019d32e41', 'am_tasktemplates_am_projecttemplates', 'AM_ProjectTemplates', 'am_projecttemplates', 'id', 'AM_TaskTemplates', 'am_tasktemplates', 'id', 'am_tasktemplates_am_projecttemplates_c', 'am_tasktemplates_am_projecttemplatesam_projecttemplates_ida', 'am_tasktemplates_am_projecttemplatesam_tasktemplates_idb', 'many-to-many', NULL, NULL, 0, 0),
('c2d6ed9a-4801-1d09-47dc-5900198cce26', 'aod_index_assigned_user', 'Users', 'users', 'id', 'AOD_Index', 'aod_index', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c2fef7d8-bd84-a862-27c6-590019d85a20', 'aos_contracts_documents', 'AOS_Contracts', 'aos_contracts', 'id', 'Documents', 'documents', 'id', 'aos_contracts_documents', 'aos_contracts_id', 'documents_id', 'many-to-many', NULL, NULL, 0, 0),
('c34d147b-66de-0460-a1f9-590019d9461e', 'aos_quotes_aos_contracts', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Contracts', 'aos_contracts', 'id', 'aos_quotes_os_contracts_c', 'aos_quotese81e_quotes_ida', 'aos_quotes4dc0ntracts_idb', 'many-to-many', NULL, NULL, 0, 0),
('c38c0a3c-57bb-89bc-f476-590019667e2c', 'aos_quotes_aos_invoices', 'AOS_Quotes', 'aos_quotes', 'id', 'AOS_Invoices', 'aos_invoices', 'id', 'aos_quotes_aos_invoices_c', 'aos_quotes77d9_quotes_ida', 'aos_quotes6b83nvoices_idb', 'many-to-many', NULL, NULL, 0, 0),
('c3bf88bd-09e2-8e5c-86c3-59001923f4b8', 'aos_quotes_project', 'AOS_Quotes', 'aos_quotes', 'id', 'Project', 'project', 'id', 'aos_quotes_project_c', 'aos_quotes1112_quotes_ida', 'aos_quotes7207project_idb', 'many-to-many', NULL, NULL, 0, 0),
('c4060e13-72ef-6f3e-03c0-590019a49b78', 'aow_processed_aow_actions', 'AOW_Processed', 'aow_processed', 'id', 'AOW_Actions', 'aow_actions', 'id', 'aow_processed_aow_actions', 'aow_processed_id', 'aow_action_id', 'many-to-many', NULL, NULL, 0, 0),
('c4440e33-0e1d-4a52-3e25-5900198eaa8d', 'fp_event_locations_fp_events_1', 'FP_Event_Locations', 'fp_event_locations', 'id', 'FP_events', 'fp_events', 'id', 'fp_event_locations_fp_events_1_c', 'fp_event_locations_fp_events_1fp_event_locations_ida', 'fp_event_locations_fp_events_1fp_events_idb', 'many-to-many', NULL, NULL, 0, 0),
('c483f8a4-b879-e8ec-8c3e-59001989e60a', 'fp_events_contacts', 'FP_events', 'fp_events', 'id', 'Contacts', 'contacts', 'id', 'fp_events_contacts_c', 'fp_events_contactsfp_events_ida', 'fp_events_contactscontacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('c4b8346f-e85e-ac48-f076-590019c5d2c1', 'fp_events_fp_event_locations_1', 'FP_events', 'fp_events', 'id', 'FP_Event_Locations', 'fp_event_locations', 'id', 'fp_events_fp_event_locations_1_c', 'fp_events_fp_event_locations_1fp_events_ida', 'fp_events_fp_event_locations_1fp_event_locations_idb', 'many-to-many', NULL, NULL, 0, 0),
('c4eefd1d-5e11-461b-9bbc-590019109f9d', 'fp_events_leads_1', 'FP_events', 'fp_events', 'id', 'Leads', 'leads', 'id', 'fp_events_leads_1_c', 'fp_events_leads_1fp_events_ida', 'fp_events_leads_1leads_idb', 'many-to-many', NULL, NULL, 0, 0),
('c53d9915-248a-47c7-ce32-590019dc2226', 'fp_events_prospects_1', 'FP_events', 'fp_events', 'id', 'Prospects', 'prospects', 'id', 'fp_events_prospects_1_c', 'fp_events_prospects_1fp_events_ida', 'fp_events_prospects_1prospects_idb', 'many-to-many', NULL, NULL, 0, 0),
('c57df342-de0b-d01d-9b5f-590019e34b3e', 'jjwg_maps_jjwg_areas', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Areas', 'jjwg_areas', 'id', 'jjwg_maps_jjwg_areas_c', 'jjwg_maps_5304wg_maps_ida', 'jjwg_maps_41f2g_areas_idb', 'many-to-many', NULL, NULL, 0, 0),
('c5fad93c-c8a2-2c64-db39-590019118e15', 'jjwg_maps_jjwg_markers', 'jjwg_Maps', 'jjwg_maps', 'id', 'jjwg_Markers', 'jjwg_markers', 'id', 'jjwg_maps_jjwg_markers_c', 'jjwg_maps_b229wg_maps_ida', 'jjwg_maps_2e31markers_idb', 'many-to-many', NULL, NULL, 0, 0),
('c645a24d-4c0a-790b-5c06-59001951ef93', 'project_contacts_1', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'project_contacts_1_c', 'project_contacts_1project_ida', 'project_contacts_1contacts_idb', 'many-to-many', NULL, NULL, 0, 0),
('c685f1c5-ee3e-059e-84c4-590019f5775d', 'project_users_1', 'Project', 'project', 'id', 'Users', 'users', 'id', 'project_users_1_c', 'project_users_1project_ida', 'project_users_1users_idb', 'many-to-many', NULL, NULL, 0, 0),
('c6c413d0-4f0c-1600-d072-59001967035a', 'securitygroups_acl_roles', 'SecurityGroups', 'securitygroups', 'id', 'ACLRoles', 'acl_roles', 'id', 'securitygroups_acl_roles', 'securitygroup_id', 'role_id', 'many-to-many', NULL, NULL, 0, 0),
('c776b9ad-7707-bf74-6707-590019ac6fca', 'aop_case_events_modified_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c780e89b-ee0a-5907-fb1f-5900199d3eb5', 'securitygroups_project_task', 'SecurityGroups', 'securitygroups', 'id', 'ProjectTask', 'project_task', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProjectTask', 0, 0),
('c7b28571-f488-fbb1-5d60-5900197da212', 'aop_case_events_created_by', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c7bbe84f-af72-427e-d175-5900190ba0ad', 'securitygroups_prospect_lists', 'SecurityGroups', 'securitygroups', 'id', 'ProspectLists', 'prospect_lists', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'ProspectLists', 0, 0),
('c7e52f61-8bfb-2647-d2c5-5900194d6df7', 'aop_case_events_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Events', 'aop_case_events', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c7fc5b09-4e94-fd94-d699-590019164ae9', 'securitygroups_users', 'SecurityGroups', 'securitygroups', 'id', 'Users', 'users', 'id', 'securitygroups_users', 'securitygroup_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('c82158c4-a937-5e78-5295-5900191a866f', 'cases_aop_case_events', 'Cases', 'cases', 'id', 'AOP_Case_Events', 'aop_case_events', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cdd88851-6058-cb87-acec-590019d91922', 'aop_case_updates_modified_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ce3768cc-4130-7b7b-0e1a-59001973cf8f', 'aop_case_updates_created_by', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ce7024c2-6c2a-7dff-a1a3-590019a49fa2', 'aop_case_updates_assigned_user', 'Users', 'users', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ceadfed3-1862-6b89-c4af-590019a560b3', 'cases_aop_case_updates', 'Cases', 'cases', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'case_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ceef6ed2-d28b-ddef-16f2-59001998fd26', 'aop_case_updates_notes', 'AOP_Case_Updates', 'aop_case_updates', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'AOP_Case_Updates', 0, 0),
('d16a7ec7-2d41-d839-19aa-590019f10af5', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d1a7cb93-5afc-9c26-533a-590019c92d5b', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d1ef90a5-fc2a-287c-e60b-590019f64953', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d235e226-9e24-e9b2-3b59-590019ad0275', 'securitygroups_contacts', 'SecurityGroups', 'securitygroups', 'id', 'Contacts', 'contacts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Contacts', 0, 0),
('d27bfba6-475b-63f5-9386-590019a80198', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('d2b3b100-eac8-0520-4a3b-59001981e770', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('d2e4b739-d83d-291c-d54e-590019b10fb7', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d32be945-1662-f7a3-fe5d-590019b9e59b', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d370a5a9-e714-ed1d-42a1-590019ede0c8', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d3bdd67b-c569-dedd-0755-590019040423', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d40379bc-9e08-4ab3-dabd-59001959debb', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('d44171ac-9beb-fb8a-bdd5-5900194e460b', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('d47a74fc-4164-efc6-7f42-59001939ff37', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('d4c08ab0-d179-4ca9-ac7b-590019df0d76', 'contact_aos_quotes', 'Contacts', 'contacts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d4f61838-ae3e-2dfc-ab3f-5900194ae812', 'contact_aos_invoices', 'Contacts', 'contacts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d530aace-9c73-ee26-e03e-590019ab234b', 'contact_aos_contracts', 'Contacts', 'contacts', 'id', 'AOS_Contracts', 'aos_contracts', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d56e3764-4ecb-ee53-b2d9-590019bdecae', 'contacts_aop_case_updates', 'Contacts', 'contacts', 'id', 'AOP_Case_Updates', 'aop_case_updates', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6326097-489f-217e-95ad-590019c0a968', 'aor_reports_modified_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6723bff-7cab-b118-97d3-590019cfb4cd', 'aor_reports_created_by', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6aa89d1-576f-c60e-b2fe-59001938059b', 'aor_reports_assigned_user', 'Users', 'users', 'id', 'AOR_Reports', 'aor_reports', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6df44b2-10b1-26b7-6ed1-5900196fa9c0', 'securitygroups_aor_reports', 'SecurityGroups', 'securitygroups', 'id', 'AOR_Reports', 'aor_reports', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'AOR_Reports', 0, 0),
('d70412ef-4040-32f5-0b54-590019772bf3', 'aor_reports_aor_fields', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Fields', 'aor_fields', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d733259c-0198-717d-0242-590019fef353', 'aor_reports_aor_conditions', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Conditions', 'aor_conditions', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d7654902-8942-1307-c214-590019e1af8c', 'aor_scheduled_reports_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Scheduled_Reports', 'aor_scheduled_reports', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e0cfcd66-7f2e-07fe-4627-5900196ead9b', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e1148cb0-9a42-7ec4-2dbb-590019b1abb8', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e14ffedc-43a5-06c7-8c58-59001932bcba', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e195dd00-5622-14c3-7396-590019b376b7', 'securitygroups_accounts', 'SecurityGroups', 'securitygroups', 'id', 'Accounts', 'accounts', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Accounts', 0, 0),
('e1d2e163-082d-9f61-95aa-590019825221', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('e211200f-dd60-8236-0a4b-59001929d2f0', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('e2500f65-3c4c-235a-551d-590019eeae24', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e28ccb72-a010-3b70-0789-590019bf21f6', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e2dbb6ef-b27e-a2b5-9623-5900199d8496', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('e3141459-5340-0e86-8b55-59001974329d', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('e33cfa96-41ca-443f-e545-590019b3ca94', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('e36ace8f-f29d-60b2-82dc-590019ccc5ee', 'aor_fields_modified_user', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3727bdd-b8cd-4582-f474-590019512faa', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('e3aada89-caaa-5191-ef65-5900192bb780', 'aor_fields_created_by', 'Users', 'users', 'id', 'AOR_Fields', 'aor_fields', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e3acaffe-594e-069e-9e27-5900195f845f', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('e3e84f9c-aecd-0700-6c33-590019a03231', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e42361c9-4cb3-9f16-5dfd-590019d86655', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('e46105d5-6eea-c2c5-b800-590019e1504e', 'account_aos_quotes', 'Accounts', 'accounts', 'id', 'AOS_Quotes', 'aos_quotes', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e49ad43f-625f-f67d-7106-590019459c1b', 'account_aos_invoices', 'Accounts', 'accounts', 'id', 'AOS_Invoices', 'aos_invoices', 'billing_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e4d767d3-701c-fc7f-00a2-590019fb0b97', 'account_aos_contracts', 'Accounts', 'accounts', 'id', 'AOS_Contracts', 'aos_contracts', 'contract_account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eaa07a05-48bf-7b77-45a5-590019b4c1cc', 'aor_charts_modified_user', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eaeaab98-8dc5-b269-a490-590019dc7e57', 'aor_charts_created_by', 'Users', 'users', 'id', 'AOR_Charts', 'aor_charts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eb1b59d2-cf5d-8452-085c-59001960a201', 'aor_charts_aor_reports', 'AOR_Reports', 'aor_reports', 'id', 'AOR_Charts', 'aor_charts', 'aor_report_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eec5dc9f-1c09-22ea-aef6-590019132547', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef0f56f0-970a-139f-5672-590019842702', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef46927d-aae3-6e7c-020a-590019abbc75', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ef6ecfe8-345f-b208-4807-5900190cfbf3', 'securitygroups_opportunities', 'SecurityGroups', 'securitygroups', 'id', 'Opportunities', 'opportunities', 'id', 'securitygroups_records', 'securitygroup_id', 'record_id', 'many-to-many', 'module', 'Opportunities', 0, 0),
('ef9d33d6-5cde-5b89-951b-5900194973a5', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('efd67c6e-0254-3d24-fd06-59001938e364', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('f01157bd-92af-0ad7-dc51-590019823e18', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('f03f7148-98df-449c-1709-590019e8a794', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('f065d4fb-d16a-3d61-3089-59001922caf6', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('f0ad198f-e38d-7920-b663-590019e1d335', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0f04034-938b-1ef2-9484-590019e65324', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1306ac3-46dd-47c6-e7ff-5900198f8911', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f16a9de5-1e32-ceab-e05a-59001962245e', 'opportunity_aos_quotes', 'Opportunities', 'opportunities', 'id', 'AOS_Quotes', 'aos_quotes', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1a25e01-4b97-6ee2-7636-59001956c5fe', 'opportunity_aos_contracts', 'Opportunities', 'opportunities', 'id', 'AOS_Contracts', 'aos_contracts', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1ec6d3c-993a-54e0-434c-590019783896', 'aor_conditions_modified_user', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f227443f-af20-0c35-4a25-5900198bc440', 'aor_conditions_created_by', 'Users', 'users', 'id', 'AOR_Conditions', 'aor_conditions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `releases`
--

INSERT INTO `releases` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `list_order`, `status`) VALUES
('25c61857-7e4e-498a-e269-582e6429ff84', 0, '2016-11-18 02:17:16', '2016-11-18 02:17:16', '1', '1', 'Base SuiteCRM 7.7.7 y SugarCRM CE 6.5.24', 1, 'Inactive'),
('ccca937e-9acf-3274-bf23-582e6487c3d4', 0, '2016-11-18 02:17:56', '2016-11-18 02:18:32', '1', '1', 'Framework TS EXPRESSIONS V.5.5 - 17/11/2016', 3, 'Active'),
('da8fb152-1956-146a-862f-582e64525bae', 0, '2016-11-18 02:17:30', '2016-11-18 02:17:30', '1', '1', 'Base SuiteCRM 7.7.8 y SugarCRM CE 6.5.24', 2, 'Active');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reminders`
--

CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reminders`
--

INSERT INTO `reminders` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `popup`, `email`, `email_sent`, `timer_popup`, `timer_email`, `related_event_module`, `related_event_module_id`) VALUES
('3497eabb-bbbd-b4c5-7f31-59567107c387', '', '2017-06-30 15:41:28', '2017-06-30 15:43:23', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, 1, 1, 0, '86400', '3600', 'Meetings', '53b2572e-727a-7539-2460-59566b6f08d9'),
('4efa1c98-88e7-ab5e-a663-5c3a87021c1c', '', '2019-01-13 00:32:22', '2019-01-13 00:32:22', '1', '1', NULL, 0, NULL, 1, 1, 0, '7200', '3600', 'Meetings', '404653f6-2327-45da-0866-5c3a873eacb1'),
('57ac5f1f-bb16-07b7-904c-5c3a8795eddb', '', '2019-01-13 00:32:22', '2019-01-13 00:32:22', '1', '1', NULL, 0, NULL, 1, 0, 0, '1800', '3600', 'Meetings', '404653f6-2327-45da-0866-5c3a873eacb1'),
('671903ea-b1b8-110b-f965-59567232d195', '', '2017-06-30 15:48:15', '2017-06-30 15:48:15', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 0, NULL, 1, 1, 0, '86400', '86400', 'Meetings', '53b2572e-727a-7539-2460-59566b6f08d9'),
('8eba0f29-4c38-2433-62bc-595670254bf0', '', '2017-06-30 15:38:08', '2017-06-30 15:38:32', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, 1, 1, 0, '86400', '86400', 'Meetings', '4a15ab25-3d53-4b7a-c290-59566ecd1ad2'),
('9317dd64-ccf2-21ab-3afd-5956726bf9b5', '', '2017-06-30 15:48:42', '2017-06-30 15:48:42', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 0, NULL, 1, 1, 0, '86400', '86400', 'Meetings', 'c2fd23a0-9f3d-9fd9-0f7e-595672a987d4'),
('962d10cf-dfc1-2172-c3bd-59566d75645c', '', '2017-06-30 15:26:34', '2017-06-30 15:26:34', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 0, NULL, 1, 1, 0, '1800', '1800', 'Meetings', '92f11869-06c5-e096-94b9-59566d855905'),
('9da00e02-c81d-3fde-4dae-5956738101a3', '', '2017-06-30 15:49:29', '2017-06-30 15:49:29', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 0, NULL, 1, 1, 0, '86400', '86400', 'Meetings', '4a15ab25-3d53-4b7a-c290-59566ecd1ad2'),
('bbc2923d-7957-c0ea-c86f-595671c9b674', '', '2017-06-30 15:42:31', '2017-06-30 15:49:29', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, 1, 1, 0, '1800', '3600', 'Meetings', '4a15ab25-3d53-4b7a-c290-59566ecd1ad2'),
('bc39181f-1ec5-9339-cfd6-59566b3efd67', '', '2017-06-30 15:17:19', '2017-06-30 15:41:28', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, 1, 1, 0, '1800', '3600', 'Meetings', '53b2572e-727a-7539-2460-59566b6f08d9'),
('c36b8d28-bf71-89a9-02ba-59567122fb51', '', '2017-06-30 15:43:23', '2017-06-30 15:48:15', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, 1, 1, 0, '86400', '86400', 'Meetings', '53b2572e-727a-7539-2460-59566b6f08d9'),
('c5da79f3-5faf-c9be-ea14-59f880017904', '', '2017-10-31 13:55:02', '2017-10-31 13:55:02', '1', '1', NULL, 0, NULL, 1, 0, 0, '1800', '3600', 'Calls', 'a43b9dac-c743-44ed-9c14-59f880039b25'),
('d14ede3e-72c3-bd04-b2a0-5956732f3af1', '', '2017-06-30 15:51:43', '2017-06-30 15:51:43', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 0, NULL, 1, 1, 0, '86400', '86400', 'Meetings', 'bab26615-00fc-8c30-302b-5956738c44be'),
('de0e2eff-c9ff-46ea-539f-595672faa1f3', '', '2017-06-30 15:45:48', '2017-06-30 15:48:42', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, 1, 1, 0, '86400', '86400', 'Meetings', 'c2fd23a0-9f3d-9fd9-0f7e-595672a987d4'),
('ec9d7ec2-33a4-3f19-80f6-59566efa07ee', '', '2017-06-30 15:31:48', '2017-06-30 15:38:08', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, 1, 1, 0, '1800', '3600', 'Meetings', '4a15ab25-3d53-4b7a-c290-59566ecd1ad2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reminders_invitees`
--

CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reminders_invitees`
--

INSERT INTO `reminders_invitees` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `reminder_id`, `related_invitee_module`, `related_invitee_module_id`) VALUES
('36199146-23b0-363f-b457-5956711978e6', '', '2017-06-30 15:41:28', '2017-06-30 15:43:23', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, '3497eabb-bbbd-b4c5-7f31-59567107c387', 'Users', '8aff5677-c52f-7d82-3237-5911fcc9c488'),
('51d30afd-962c-2d12-ac1a-5c3a872c2e7f', '', '2019-01-13 00:32:22', '2019-01-13 00:32:22', '1', '1', NULL, 0, NULL, '4efa1c98-88e7-ab5e-a663-5c3a87021c1c', 'Users', '1'),
('55b7ad66-b818-32ff-ff49-5c3a87d8b450', '', '2019-01-13 00:32:22', '2019-01-13 00:32:22', '1', '1', NULL, 0, NULL, '4efa1c98-88e7-ab5e-a663-5c3a87021c1c', 'Leads', 'cf6f8f2e-f1e8-1765-81e5-5c3a86999895'),
('5890cb64-77d9-48f0-dad3-5c3a87dabcac', '', '2019-01-13 00:32:22', '2019-01-13 00:32:22', '1', '1', NULL, 0, NULL, '57ac5f1f-bb16-07b7-904c-5c3a8795eddb', 'Users', '1'),
('5988d519-4818-8a8f-719a-5c3a87076b62', '', '2019-01-13 00:32:22', '2019-01-13 00:32:22', '1', '1', NULL, 0, NULL, '57ac5f1f-bb16-07b7-904c-5c3a8795eddb', 'Leads', 'cf6f8f2e-f1e8-1765-81e5-5c3a86999895'),
('68796008-57c8-6b22-8b6b-595672e262cc', '', '2017-06-30 15:48:15', '2017-06-30 15:48:15', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 0, NULL, '671903ea-b1b8-110b-f965-59567232d195', 'Users', '8aff5677-c52f-7d82-3237-5911fcc9c488'),
('900a323a-3f25-164d-2985-59567046435f', '', '2017-06-30 15:38:08', '2017-06-30 15:38:32', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, '8eba0f29-4c38-2433-62bc-595670254bf0', 'Users', '8aff5677-c52f-7d82-3237-5911fcc9c488'),
('97694c4d-e43f-8cca-ff2e-59566d916c25', '', '2017-06-30 15:26:34', '2017-06-30 15:26:34', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 0, NULL, '962d10cf-dfc1-2172-c3bd-59566d75645c', 'Users', '8aff5677-c52f-7d82-3237-5911fcc9c488'),
('9c4e8b50-b959-0352-8263-595672c36d44', '', '2017-06-30 15:48:42', '2017-06-30 15:48:42', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 0, NULL, '9317dd64-ccf2-21ab-3afd-5956726bf9b5', 'Users', '1eb9a9c7-3cbc-6e01-b142-59121ed50004'),
('b2a10a7f-8eec-3dab-e340-59567341b58e', '', '2017-06-30 15:49:29', '2017-06-30 15:49:29', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 0, NULL, '9da00e02-c81d-3fde-4dae-5956738101a3', 'Users', '8aff5677-c52f-7d82-3237-5911fcc9c488'),
('bd23b25b-b34f-2778-0ffd-5956714512d8', '', '2017-06-30 15:42:31', '2017-06-30 15:49:29', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, 'bbc2923d-7957-c0ea-c86f-595671c9b674', 'Users', '8aff5677-c52f-7d82-3237-5911fcc9c488'),
('c4c9e9de-48a9-73a0-fa4a-59566b8e18fc', '', '2017-06-30 15:17:19', '2017-06-30 15:41:28', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, 'bc39181f-1ec5-9339-cfd6-59566b3efd67', 'Users', '8aff5677-c52f-7d82-3237-5911fcc9c488'),
('c4d6e569-6540-2587-f49b-59567100bf0b', '', '2017-06-30 15:43:23', '2017-06-30 15:48:15', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, 'c36b8d28-bf71-89a9-02ba-59567122fb51', 'Users', '8aff5677-c52f-7d82-3237-5911fcc9c488'),
('d2c13112-c145-f586-4f39-5956734fb583', '', '2017-06-30 15:51:43', '2017-06-30 15:51:43', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 0, NULL, 'd14ede3e-72c3-bd04-b2a0-5956732f3af1', 'Users', '1eb9a9c7-3cbc-6e01-b142-59121ed50004'),
('d53b84a8-9bb4-585f-a725-59f880383e49', '', '2017-10-31 13:55:02', '2017-10-31 13:55:02', '1', '1', NULL, 0, NULL, 'c5da79f3-5faf-c9be-ea14-59f880017904', 'Users', '1'),
('df3161b8-e9b1-cc66-324a-59567278ab24', '', '2017-06-30 15:45:48', '2017-06-30 15:48:42', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, 'de0e2eff-c9ff-46ea-539f-595672faa1f3', 'Users', '1eb9a9c7-3cbc-6e01-b142-59121ed50004'),
('edc2261b-b993-d136-1d1c-59566e288707', '', '2017-06-30 15:31:48', '2017-06-30 15:38:08', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', NULL, 1, NULL, 'ec9d7ec2-33a4-3f19-80f6-59566efa07ee', 'Users', '8aff5677-c52f-7d82-3237-5911fcc9c488');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `saved_search`
--

INSERT INTO `saved_search` (`id`, `name`, `search_module`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`, `description`) VALUES
('294e4521-236f-4771-9d76-59e2870bd70c', 'VENTAS', 'Opportunities', 0, '2017-10-14 21:54:23', '2019-01-13 00:17:49', '1', 'YToyNDp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MTM6Im5hbWVfYWR2YW5jZWQiO3M6OToiVkVOVEEgQ1JNIjtzOjIxOiJhY2NvdW50X25hbWVfYWR2YW5jZWQiO3M6MTA6IkNISUNLRU4yR08iO3M6Mjg6ImFtb3VudF9hZHZhbmNlZF9yYW5nZV9jaG9pY2UiO3M6MTI6ImdyZWF0ZXJfdGhhbiI7czoyMToicmFuZ2VfYW1vdW50X2FkdmFuY2VkIjtzOjY6IjY3ODAwMCI7czoyNzoic3RhcnRfcmFuZ2VfYW1vdW50X2FkdmFuY2VkIjtzOjA6IiI7czoyNToiZW5kX3JhbmdlX2Ftb3VudF9hZHZhbmNlZCI7czowOiIiO3M6MjU6ImFzc2lnbmVkX3VzZXJfaWRfYWR2YW5jZWQiO2E6MTp7aTowO3M6MToiMSI7fXM6MjA6InNhbGVzX3N0YWdlX2FkdmFuY2VkIjthOjE6e2k6MDtzOjIwOiJQcm9wb3NhbC9QcmljZSBRdW90ZSI7fXM6MjA6ImxlYWRfc291cmNlX2FkdmFuY2VkIjthOjE6e2k6MDtzOjg6IkVtcGxveWVlIjt9czozMzoiZGF0ZV9jbG9zZWRfYWR2YW5jZWRfcmFuZ2VfY2hvaWNlIjtzOjExOiJsYXN0XzdfZGF5cyI7czoyNjoicmFuZ2VfZGF0ZV9jbG9zZWRfYWR2YW5jZWQiO3M6MTM6IltsYXN0XzdfZGF5c10iO3M6MzI6InN0YXJ0X3JhbmdlX2RhdGVfY2xvc2VkX2FkdmFuY2VkIjtzOjA6IiI7czozMDoiZW5kX3JhbmdlX2RhdGVfY2xvc2VkX2FkdmFuY2VkIjtzOjA6IiI7czoxODoibmV4dF9zdGVwX2FkdmFuY2VkIjtzOjMwOiJFc3BlcmFyIHJlc3B1ZXN0YSBkZSBwcm9wdWVzdGEiO3M6OToic2hvd1NTRElWIjtzOjM6InllcyI7czoxMzoic2VhcmNoX21vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxOToic2F2ZWRfc2VhcmNoX2FjdGlvbiI7czo2OiJ1cGRhdGUiO3M6MTQ6ImRpc3BsYXlDb2x1bW5zIjtzOjg5OiJOQU1FfEFDQ09VTlRfTkFNRXxTQUxFU19TVEFHRXxBTU9VTlRfVVNET0xMQVJ8REFURV9DTE9TRUR8QVNTSUdORURfVVNFUl9OQU1FfERBVEVfRU5URVJFRCI7czo4OiJoaWRlVGFicyI7czo4MzoiT1BQT1JUVU5JVFlfVFlQRXxMRUFEX1NPVVJDRXxORVhUX1NURVB8UFJPQkFCSUxJVFl8Q1JFQVRFRF9CWV9OQU1FfE1PRElGSUVEX0JZX05BTUUiO3M6Nzoib3JkZXJCeSI7czo0OiJOQU1FIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO3M6ODoiYWR2YW5jZWQiO2I6MTt9', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups`
--

CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `securitygroups`
--

INSERT INTO `securitygroups` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `noninheritable`) VALUES
('833648b6-795f-baaa-e2a6-59000c7ef0dc', 'SOPORTE TS TALENT', '2017-04-26 02:58:43', '2017-04-26 03:50:58', '1', '1', NULL, 1, 'af9ce444-116c-4ece-ebd7-5900089ba8d9', 0),
('ed6c42ed-1189-2c26-f5e8-5900195d1db5', 'ADMINISTRADOR', '2017-04-26 03:52:05', '2019-01-18 04:06:57', '1', '1', 'Unidad de Soporte', 0, '1', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_acl_roles`
--

CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `securitygroups_acl_roles`
--

INSERT INTO `securitygroups_acl_roles` (`id`, `securitygroup_id`, `role_id`, `date_modified`, `deleted`) VALUES
('2e1d2aa6-a3da-a86d-5aaa-59000dd9c0ee', '833648b6-795f-baaa-e2a6-59000c7ef0dc', '5af0d976-e44d-c118-dddf-590009e66560', '2017-04-26 03:48:32', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_audit`
--

CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `securitygroups_audit`
--

INSERT INTO `securitygroups_audit` (`id`, `parent_id`, `date_created`, `created_by`, `field_name`, `data_type`, `before_value_string`, `after_value_string`, `before_value_text`, `after_value_text`) VALUES
('7bd36117-653d-5ca6-7bc1-5c4150c49cc4', 'ed6c42ed-1189-2c26-f5e8-5900195d1db5', '2019-01-18 04:05:59', '1', 'assigned_user_id', 'relate', 'af9ce444-116c-4ece-ebd7-5900089ba8d9', '1', NULL, NULL),
('baaad80e-035e-b864-bbc6-5900198e2275', 'ed6c42ed-1189-2c26-f5e8-5900195d1db5', '2017-04-26 03:52:24', '1', 'assigned_user_id', 'relate', '1', 'af9ce444-116c-4ece-ebd7-5900089ba8d9', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_default`
--

CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_records`
--

CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `securitygroups_records`
--

INSERT INTO `securitygroups_records` (`id`, `securitygroup_id`, `record_id`, `module`, `date_modified`, `modified_user_id`, `created_by`, `deleted`) VALUES
('47b05c83-36f6-11e9-826b-deadbe102100', 'ed6c42ed-1189-2c26-f5e8-5900195d1db5', 'd5b05fb9-319d-bc6c-09bc-5c3a7f2b4eca', 'Accounts', '2019-02-22 00:00:00', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `securitygroups_users`
--

CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `securitygroups_users`
--

INSERT INTO `securitygroups_users` (`id`, `date_modified`, `deleted`, `securitygroup_id`, `user_id`, `primary_group`, `noninheritable`) VALUES
('77bf10f8-9640-d553-675c-5c41508ae9a4', '2019-01-18 04:06:57', 0, 'ed6c42ed-1189-2c26-f5e8-5900195d1db5', '98ae7237-30e0-7e2f-d263-5c153d029c20', NULL, 0),
('cb3e5cf0-9d91-0786-d3d3-59000d599654', '2017-04-26 03:50:58', 1, '833648b6-795f-baaa-e2a6-59000c7ef0dc', 'af9ce444-116c-4ece-ebd7-5900089ba8d9', NULL, 0),
('d5a9ccad-964c-d038-dcfb-590019146729', '2018-10-16 19:18:22', 1, 'ed6c42ed-1189-2c26-f5e8-5900195d1db5', 'af9ce444-116c-4ece-ebd7-5900089ba8d9', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `spots`
--

CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sugarfeed`
--

INSERT INTO `sugarfeed` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `related_module`, `related_id`, `link_url`, `link_type`) VALUES
('18e40508-afe9-2f9e-7178-595a91486d8a', '<b>{this.CREATED_BY}</b> logo ORLANDO FLORIDA VILLAS RENTALS', '2017-07-03 18:50:31', '2017-07-03 18:51:00', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('1b49ec34-dccc-0217-ce49-595fa9f8cd6f', '<b>{this.CREATED_BY}</b> 2 Propuestas de Logo para FARMANORTE', '2017-07-07 15:32:43', '2018-12-15 18:35:28', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('1d903db6-d7d4-6293-b8aa-595bcf03c3bc', '<b>{this.CREATED_BY}</b> Modificación al fan page de quisqueya travel', '2017-07-04 17:26:36', '2017-07-04 17:26:46', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('21ee0dbd-157b-3294-3fea-5963b918e000', '<b>{this.CREATED_BY}</b> modificaciones del logo O&D para la web', '2017-07-10 17:28:25', '2018-12-15 18:35:10', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('24e9c902-c8e5-e5ad-17ab-59677b9f8454', '<b>{this.CREATED_BY}</b> Montar las imagenes de los productos cloro kris', '2017-07-13 13:54:44', '2018-01-23 17:28:24', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('25917bb5-3c4d-ed8f-592c-5956ba5d1845', '<b>{this.CREATED_BY}</b> Realize un nuevo marco para ojo producción', '2017-06-30 20:55:01', '2018-12-15 18:36:57', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('280dfb4a-2a8b-ace3-b4ac-5964d95e4beb', '<b>{this.CREATED_BY}</b> marco shopping smart', '2017-07-11 13:56:59', '2018-12-15 18:34:34', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('2bd38372-ea88-1328-95a3-5963dd6c324a', '<b>{this.CREATED_BY}</b> Nosotros QUP terminado, revisare una ultima vez', '2017-07-10 20:05:14', '2018-12-15 18:34:45', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('2d6a6e8a-6509-528f-c9bc-59677b80455f', '<b>{this.CREATED_BY}</b> revicion de video para tecnomed', '2017-07-13 13:55:01', '2018-01-23 17:28:19', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('2dfd99d1-8731-552f-8869-595a39d3f367', '<b>{this.CREATED_BY}</b> Avatar y Fan page Quisqueya Travel', '2017-07-03 12:31:39', '2018-12-15 18:36:58', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('32c6de5e-1103-f3c0-aee0-5963db78674b', '<b>{this.CREATED_BY}</b> tarjetas para O&D', '2017-07-10 19:56:34', '2018-12-15 18:35:21', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('35f7f557-68b2-2cab-7e21-595fed90f8d5', '<b>{this.CREATED_BY}</b> vectores para quiero un pais', '2017-07-07 20:21:51', '2018-12-15 18:35:23', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('39d8d0fb-61bc-7ecf-6f3d-5963dbe6ba28', '<b>{this.CREATED_BY}</b> tarjetas para O&D', '2017-07-10 19:56:35', '2018-12-15 18:34:57', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('3ca425ea-554b-add9-2126-59779b778075', '<b>{this.CREATED_BY}</b> MODIFICACIONES EN LA PAGINA DE E-GERENTES', '2017-07-25 19:28:39', '2018-01-23 17:27:18', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('3ecefd40-8dec-a16a-888d-595f9c18f7d2', '<b>{this.CREATED_BY}</b> se esta realizando cambios en la sección de productos de cloro kris', '2017-07-07 14:36:17', '2018-12-15 18:35:33', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('3f26e492-df5e-b610-600d-5963de4d3e50', '<b>{this.CREATED_BY}</b> Proyectos 70% listo', '2017-07-10 20:06:10', '2018-12-15 18:34:39', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('4b52a90f-a7a0-2e4a-92d6-595bde631fdf', '<b>{this.CREATED_BY}</b> Cambios cloro kris', '2017-07-04 18:30:52', '2018-12-15 18:35:40', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('5317912d-3d7a-2208-eae4-596fbc12378c', '<b>{this.CREATED_BY}</b> 2 propuestas pendones o&d', '2017-07-19 20:11:22', '2018-01-23 17:27:59', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('53f76955-2f66-c0c0-9b86-595fedc905d9', '<b>{this.CREATED_BY}</b> Adelanto pagina quiero un pais', '2017-07-07 20:21:39', '2018-12-15 18:35:13', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('54a7809b-5e2b-61c0-2def-59651ded2b12', '<b>{this.CREATED_BY}</b> seccion de fotos productos clorokris.', '2017-07-11 18:49:24', '2018-01-23 17:28:47', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('563cd617-9787-0d74-62b2-595bcf918882', '<b>{this.CREATED_BY}</b> Modificación al fan page de quisqueya travel', '2017-07-04 17:26:33', '2018-12-15 18:35:40', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('5f9391d7-176f-bb0b-7b57-5963de58196f', '<b>{this.CREATED_BY}</b> Faltan algunos detalles QUP ', '2017-07-10 20:06:57', '2018-12-15 18:34:55', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('60421f74-9a4c-d047-53f5-595a917cbbe1', '<b>{this.CREATED_BY}</b> logo ORLANDO FLORIDA VILLAS RENTALS', '2017-07-03 18:50:32', '2017-07-03 18:51:14', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('61bc31ae-2062-f932-d98c-5956517a9e6a', '<b>{this.CREATED_BY}</b> Revisión y cambios para la pagina de cloro kris', '2017-06-30 13:26:07', '2018-12-15 18:36:57', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('64e94da2-72a4-8a5e-5b4e-595fed4f456d', '<b>{this.CREATED_BY}</b> vectores para quiero un pais', '2017-07-07 20:21:51', '2018-12-15 18:35:23', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('65fe916c-cdd8-8425-26d7-596e6bbf72f7', '<b>{this.CREATED_BY}</b> Cambios cloro kris', '2017-07-18 20:13:35', '2018-01-23 17:28:09', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('676ee0d9-26c4-c2ee-6fa3-59677f1ed07e', '<b>{this.CREATED_BY}</b> fotos desfile de moda revision y edición', '2017-07-13 14:10:24', '2018-01-23 17:28:14', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('6a00b654-e147-b5dc-1acd-595e31ba0bd0', '<b>{this.CREATED_BY}</b> Cambios cloro kris', '2017-07-06 12:49:09', '2018-12-15 18:35:38', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('6c49175c-d20b-855c-f6b8-5963cbecdcf9', '<b>{this.CREATED_BY}</b> fan page y avatar para montemare youtube', '2017-07-10 18:46:23', '2018-12-15 18:35:09', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('6dce58bb-db18-4713-a7fc-598b26e55ab9', '<b>{this.CREATED_BY}</b> modificaciones flayers new york', '2017-08-09 15:13:46', '2018-01-23 17:27:13', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('6fef49cd-f210-54b5-b769-595aae8335c3', '<b>{this.CREATED_BY}</b> 2: Portada de facebook', '2017-07-03 20:52:03', '2018-12-15 18:35:54', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('72f8a2c2-6c96-28e9-8a10-5963800cbed8', '<b>{this.CREATED_BY}</b> realizar cambio de colores al logo seleccionado para farmaciafamiliar', '2017-07-10 13:27:12', '2018-12-15 18:35:17', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('7649cf7b-4d23-0a52-34bf-595a92f51c3b', '<b>{this.CREATED_BY}</b> logo ORLANDO FLORIDA VILLAS RENTALS', '2017-07-03 18:51:58', '2018-12-15 18:36:48', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('7820d624-73e5-03a5-e47f-59947dbe463c', '<b>{this.CREATED_BY}</b> creación de identidad corporativa de CHICKEN 2 GO', '2017-08-16 17:12:46', '2018-01-23 17:27:10', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('787b2a24-af6f-e948-ee79-595a4491c4da', '<b>{this.CREATED_BY}</b> Diseño de la imagen del dia del locutor', '2017-07-03 13:19:30', '2018-12-15 18:36:52', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('788c227e-b0b2-efd1-df5c-5963dee14205', '<b>{this.CREATED_BY}</b> Proyectos 70% listo', '2017-07-10 20:06:08', '2018-12-15 18:34:55', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('79e30e4f-cd64-74ec-5af2-595a91dcfa6b', '<b>{this.CREATED_BY}</b> logo ORLANDO FLORIDA VILLAS RENTALS', '2017-07-03 18:50:33', '2017-07-03 18:51:07', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('7d20678f-bc9a-a8ef-26c5-59651d923f68', '<b>{this.CREATED_BY}</b> seccion de fotos productos clorokris.', '2017-07-11 18:49:19', '2018-01-23 17:28:41', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('81c8e109-ab96-e57c-85c4-595aaec6cceb', '<b>{this.CREATED_BY}</b> 3- Estilo gráfico a usar en área gráfica TsTalent', '2017-07-03 20:52:29', '2018-12-15 18:35:53', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('840059fd-0f31-52da-7e7d-595e33e6749a', '<b>{this.CREATED_BY}</b> marco para quisqueya travel', '2017-07-06 12:57:22', '2017-07-06 14:10:15', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('865608bc-1ac8-be2e-ef6a-59651df61b04', '<b>{this.CREATED_BY}</b> seccion de fotos productos clorokris.', '2017-07-11 18:49:25', '2018-01-23 17:28:37', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('86c41a42-d915-b729-6e91-595feda38c5a', '<b>{this.CREATED_BY}</b> logos para farmacia familiar', '2017-07-07 20:22:03', '2018-12-15 18:35:13', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('8b44218c-98c3-6302-eeb6-59779ce225c3', '<b>{this.CREATED_BY}</b> MODIFICACIONES EN LA PAGINA DE RADIO CARICIAS', '2017-07-25 19:29:10', '2018-01-23 17:27:51', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('90e5d70b-cdf5-855a-f049-59652511cebf', '<b>{this.CREATED_BY}</b> edicion imagenes clorokris', '2017-07-11 19:23:18', '2018-01-23 17:28:28', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('a0e7f8d1-9d6a-ee53-f563-595aaf710968', '<b>{this.CREATED_BY}</b> \"Base de datos gráfica en proceso\"', '2017-07-03 20:56:17', '2018-12-15 18:36:44', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('a435b6dc-b8fe-2297-9514-595a9adb0341', '<b>{this.CREATED_BY}</b> Ah ok! Perfecto, gracias...', '2017-07-03 19:27:23', '2017-07-03 19:27:23', '1', '1', NULL, 0, '1', 'SugarFeed', '7649cf7b-4d23-0a52-34bf-595a92f51c3b', NULL, NULL),
('a5a800ea-2c46-d08b-3069-5994401607d1', '<b>{this.CREATED_BY}</b> Montar productos en bella y elegante', '2017-08-16 12:54:15', '2018-01-23 17:27:13', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('a63b67aa-e068-91a4-d40d-595aafd854d3', '<b>{this.CREATED_BY}</b> Publicidad de TsTalent ya con identidad gráfica de marca, recopilando info para base d datos grafica', '2017-07-03 20:55:31', '2018-12-15 18:35:44', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('ac7925b7-8c23-b71e-8f20-595aae36b92e', '<b>{this.CREATED_BY}</b> Diseño publicitario de TsTalent', '2017-07-03 20:51:17', '2018-12-15 18:35:51', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('b1952fb6-9175-2134-2674-595ba733f77f', '<b>{this.CREATED_BY}</b> modificaciones al avatar y fan page de e-gerente', '2017-07-04 14:32:35', '2018-12-15 18:35:47', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('b8922279-c138-1d58-1c21-596679e2b84c', '<b>{this.CREATED_BY}</b> edicion imagenes clorokris', '2017-07-12 19:31:31', '2018-01-23 17:28:26', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('b964df74-76e6-63a1-4476-595b8c021c09', '<b>{this.CREATED_BY}</b> propuestas logo ORLANDO FLORIDA VILLAS RENTALS', '2017-07-04 12:40:26', '2018-12-15 18:35:48', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('baa8c9fa-2afd-8957-3165-596e6b515648', '<b>{this.CREATED_BY}</b> Cambios cloro kris', '2017-07-18 20:13:37', '2018-01-23 17:28:06', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('be34decd-9c5e-e5bd-73c4-595a915be33f', '<b>{this.CREATED_BY}</b> logo ORLANDO FLORIDA VILLAS RENTALS', '2017-07-03 18:50:30', '2017-07-03 18:51:01', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('c1ab16f8-7262-36fe-3b68-5964dbf291d6', '<b>{this.CREATED_BY}</b> tarjetas para O&D', '2017-07-11 14:05:43', '2018-01-23 17:29:51', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('c72e0875-365a-3359-945a-5963dd7bc9ee', '<b>{this.CREATED_BY}</b> Adaptando titulos todas las paginas', '2017-07-10 20:04:02', '2018-12-15 18:34:55', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('c7e31944-058a-8583-54cc-5964c756a239', '<b>{this.CREATED_BY}</b> cambios avatar y fan page shopping smart', '2017-07-11 12:41:16', '2018-12-15 18:34:33', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('cadc8834-261b-1289-88ce-596fbc8c7ff9', '<b>{this.CREATED_BY}</b> 2 propuestas pendones o&d', '2017-07-19 20:11:15', '2018-01-23 17:28:00', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('ce9ee0db-bf73-5a6f-b24f-59835116a245', '<b>{this.CREATED_BY}</b> propuestas logo radio caricia', '2017-08-03 16:39:16', '2018-01-23 17:27:15', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('cee9a91e-7de5-d4ad-31ef-5963dd44f057', '<b>{this.CREATED_BY}</b> Paginas internas quiero un pais', '2017-07-10 20:03:24', '2018-12-15 18:35:03', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('cf4e9b78-e6ad-03d0-de61-595fd55db7a1', '<b>{this.CREATED_BY}</b> fan page y avatar para orlando villa-rentals', '2017-07-07 18:38:00', '2018-12-15 18:35:34', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('d13bb61b-69b7-ad58-ace5-595fd597130f', '<b>{this.CREATED_BY}</b> fan page y avatar para orlando villa-rentals', '2017-07-07 18:38:08', '2018-12-15 18:35:36', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('d23f61d2-0079-194e-8666-59651de79354', '<b>{this.CREATED_BY}</b> seccion de fotos productos clorokris.', '2017-07-11 18:49:25', '2018-01-23 17:29:49', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('d3a256f6-01ad-4e0d-ebc6-595aaee0c550', '<b>{this.CREATED_BY}</b> agregar info a pagina civenpa de vencred', '2017-07-03 20:53:32', '2018-12-15 18:35:49', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('d5955a0e-e501-a76b-1bbf-595a9ac3fc72', '<b>{this.CREATED_BY}</b> Arizay, excelente trabajo...', '2017-07-03 19:26:31', '2018-12-15 18:36:54', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1', NULL, 1, '1', 'UserFeed', '1', NULL, NULL),
('d82f1261-b170-1c9b-f8d0-595a5430081a', '<b>{this.CREATED_BY}</b> Cambios cloro kris', '2017-07-03 14:27:58', '2018-12-15 18:36:53', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('da9e5103-b3ba-da5d-5d6b-596e6b94c43c', '<b>{this.CREATED_BY}</b> edicion de imagenes para oyd', '2017-07-18 20:12:56', '2018-01-23 17:28:10', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('df064f0b-6ab1-7f05-7274-595a9118468b', '<b>{this.CREATED_BY}</b> logo ORLANDO FLORIDA VILLAS RENTALS', '2017-07-03 18:50:38', '2017-07-03 18:50:58', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('e074929e-1201-e102-06e1-595aaeb55e64', '<b>{this.CREATED_BY}</b> Imagen red social jose romero para instagram ', '2017-07-03 20:52:50', '2018-12-15 18:35:52', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('e227729b-1a7a-99e5-e894-595aae7c53a8', '<b>{this.CREATED_BY}</b> 1: Carnets corporativos TsTalent', '2017-07-03 20:51:49', '2018-12-15 18:36:42', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('e2a550d6-237d-00be-27f4-5963de392d2e', '<b>{this.CREATED_BY}</b> Participación 90% listo', '2017-07-10 20:05:36', '2018-12-15 18:34:55', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('e69e5542-72fe-08b7-e3b1-595fed424d35', '<b>{this.CREATED_BY}</b> vectores para quiero un pais', '2017-07-07 20:21:47', '2018-12-15 18:35:12', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('ea7679e0-7d1d-c32c-e07d-595a9a983278', '<b>{this.CREATED_BY}</b> ¿Qué cliente es este?', '2017-07-03 19:27:04', '2017-07-03 19:27:04', '1', '1', NULL, 0, '1', 'SugarFeed', '7649cf7b-4d23-0a52-34bf-595a92f51c3b', NULL, NULL),
('eafa1509-e02a-f7ce-8e83-595e3303ea40', '<b>{this.CREATED_BY}</b> marco para quisqueya travel', '2017-07-06 12:57:20', '2018-12-15 18:35:32', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('ee3d2dc3-4ded-5ae6-39b9-595aae538124', '<b>{this.CREATED_BY}</b> Busqueda de diseños para mejorar oficina TsTalent', '2017-07-03 20:54:22', '2018-12-15 18:35:45', '98ae7237-30e0-7e2f-d263-5c153d029c20', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'UserFeed', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', NULL, NULL),
('ef1729b1-041e-791c-9223-596fbcd7ee12', '<b>{this.CREATED_BY}</b> 2 propuestas pendones o&d', '2017-07-19 20:11:16', '2018-01-23 17:28:04', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('efd23773-4ba7-fcd6-d56e-5963ba2d329a', '<b>{this.CREATED_BY}</b> fan page y avatar para ojo produccion youtube', '2017-07-10 17:34:39', '2018-12-15 18:35:09', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL),
('f3414e4d-5072-6877-4830-595f9c8d5d1a', '<b>{this.CREATED_BY}</b> se esta realizando cambios en la sección de productos de cloro kris', '2017-07-07 14:36:18', '2018-12-15 18:35:31', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, 1, 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'UserFeed', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `assigned_user_id`, `status`, `date_due_flag`, `date_due`, `date_start_flag`, `date_start`, `parent_type`, `parent_id`, `contact_id`, `priority`) VALUES
('4b6ebc7a-28c8-10b9-dc9b-591238d5ec1f', 'Ojo Producción', '2017-05-09 21:44:20', '2017-11-25 12:21:33', '1', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Reemplazar portadas de las redes sociales facebook y twitter de ojo producción.', 1, 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Not Started', 0, '2017-05-11 04:00:00', 0, '2017-05-10 04:00:00', 'Tasks', '', '', 'High'),
('525009a2-bbb9-feef-acd3-595aaf0ea4c7', 'Base de datos gráfica tstalent', '2017-07-03 20:58:33', '2017-11-25 12:21:33', '1', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'Crear una imagen gráfica, con una base de datos compuesta por gráficos, lineas e iconos para toda la publicidad de tstalent. Esto se implementara a partir de la fecha a todas las publicidades de tstalent.', 1, '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'Completed', 1, NULL, 0, '2017-07-04 04:00:00', 'Accounts', '', '', 'Medium'),
('a0c97539-461f-a68b-89a0-595aa7bf1ecb', '', '2017-07-03 20:21:15', '2017-11-25 12:21:33', '1', '1', '', 1, '1', 'Completed', 1, NULL, 1, NULL, 'Accounts', '', '', 'High'),
('f38326e0-0491-d267-3f00-595b96eb3753', 'RESPALDOS', '2017-07-04 13:23:42', '2017-07-04 13:26:28', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', '', 1, '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'Completed', 0, '2017-07-14 13:00:00', 0, '2017-07-14 12:00:00', 'Tasks', '', '', 'High');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `templatesectionline`
--

CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `templatesectionline`
--

INSERT INTO `templatesectionline` (`id`, `name`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `description`, `deleted`, `thumbnail`, `grp`, `ord`) VALUES
('1369af5c-a13f-82eb-f058-5832f3a932e8', 'Content', '2016-11-21 13:14:10', '2016-11-21 13:14:10', 'seed_will_id', 'seed_will_id', '<h2>Title</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</p>', 0, 'include/javascript/mozaik/tpls/default/thumbs/content1.png', NULL, 2),
('1f087ea8-8fea-9f44-4f41-5832f35789d7', 'Content with three image', '2016-11-21 13:14:10', '2016-11-21 13:14:10', 'seed_will_id', 'seed_will_id', '<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://tstalent.net/clientes/crm_tecnomed/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"http://tstalent.net/clientes/crm_tecnomed/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"http://tstalent.net/clientes/crm_tecnomed/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td></tr><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image3.png', NULL, 8),
('4d6744ad-9bae-7373-19b5-5832f3c82374', 'Content with right image', '2016-11-21 13:14:10', '2016-11-21 13:14:10', 'seed_will_id', 'seed_will_id', '<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"http://tstalent.net/clientes/crm_tecnomed/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image1right.png', NULL, 6),
('60330258-8b86-44ad-e5ec-5832f3ce4f1a', 'Content with two columns', '2016-11-21 13:14:10', '2016-11-21 13:14:10', 'seed_will_id', 'seed_will_id', '<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/content2.png', NULL, 3),
('85c6a85d-1480-b606-3c27-5832f3d21e49', 'Footer', '2016-11-21 13:14:10', '2016-11-21 13:14:10', 'seed_will_id', 'seed_will_id', '<p class=\"footer\">Take your footer contents and information here..</p>', 0, 'include/javascript/mozaik/tpls/default/thumbs/footer.png', NULL, 9),
('9b60df67-64a8-7905-b0fc-5832f37f8fbf', 'Content with two image', '2016-11-21 13:14:10', '2016-11-21 13:14:10', 'seed_will_id', 'seed_will_id', '<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://tstalent.net/clientes/crm_tecnomed/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"http://tstalent.net/clientes/crm_tecnomed/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image2.png', NULL, 7),
('a37245ce-c83f-eede-0bf2-5832f3142413', 'Content with three columns', '2016-11-21 13:14:10', '2016-11-21 13:14:10', 'seed_will_id', 'seed_will_id', '<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/content3.png', NULL, 4),
('d08ea577-5ed8-46ae-414e-5832f3233469', 'Content with left image', '2016-11-21 13:14:10', '2016-11-21 13:14:10', 'seed_will_id', 'seed_will_id', '<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://tstalent.net/clientes/crm_tecnomed/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>', 0, 'include/javascript/mozaik/tpls/default/thumbs/image1left.png', NULL, 5),
('db5b9712-3de2-2bf7-da2d-5832f34d7a78', 'Headline', '2016-11-21 13:14:10', '2016-11-21 13:14:10', 'seed_will_id', 'seed_will_id', '<p></p><h1>Add your headline here..</h1>', 0, 'include/javascript/mozaik/tpls/default/thumbs/headline.png', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tracker`
--

INSERT INTO `tracker` (`id`, `monitor_id`, `user_id`, `module_name`, `item_id`, `item_summary`, `date_modified`, `action`, `session_id`, `visible`, `deleted`) VALUES
(22, '9f31cc3b-8bb9-ef52-c142-59000d755a15', '1', 'SecurityGroups', '833648b6-795f-baaa-e2a6-59000c7ef0dc', 'SOPORTE TS TALENT', '2017-04-26 03:00:34', 'detailview', '4gbf9f05v4g85q9u7s1i94b8p4', 0, 0),
(25, '7cdfcad3-b801-6532-4b4f-590013257f15', '1', 'ACLRoles', '5af0d976-e44d-c118-dddf-590009e66560', 'Soporte de TS Talent Soluciones', '2017-04-26 03:28:45', 'detailview', 'j5gtek17atjnktjvn4el3i06i4', 0, 0),
(39, 'ebf7047a-d7bc-57c3-fdd4-59001be0a145', '1', 'ACLRoles', '5e989a55-4600-6083-df0f-590019e937eb', 'SOPORTE TS TALENT', '2017-04-26 04:00:55', 'detailview', 'alnam75ufj5siabib8970ek6g7', 1, 0),
(42, 'd2222720-8140-dfef-b607-5911fcbd198a', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'Users', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Rihard Olimpio', '2017-05-09 17:28:57', 'detailview', 't2ene5vt8komtnbtj2ptkkq384', 0, 0),
(43, '3e6f5630-c480-65dc-951b-59121d14f97d', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Users', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Luis Perez', '2017-05-09 19:52:22', 'detailview', 'mkf2co6m0o8rbnq5olqn3bthr3', 0, 0),
(44, '73b4abe5-a8aa-f894-32fc-59121eb8ebac', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Users', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'Alejandro Avila', '2017-05-09 19:53:45', 'detailview', 'mkf2co6m0o8rbnq5olqn3bthr3', 0, 0),
(48, 'ed2e5d39-35f9-3bcd-1f86-591221725a68', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Users', '80343642-e355-1c38-662f-59121e97591e', 'Javier Arevalo', '2017-05-09 20:05:26', 'detailview', 'nsuiepnru055gvm6f79l6erq70', 0, 0),
(50, '4aff0e49-0a72-759d-d846-591238629926', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Tasks', '4b6ebc7a-28c8-10b9-dc9b-591238d5ec1f', 'Ojo Producción', '2017-05-09 21:45:39', 'detailview', 'nsuiepnru055gvm6f79l6erq70', 0, 0),
(51, '4a960b1a-7130-8b54-a0a2-5913631ddfb6', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Accounts', '1b3c7622-205c-b741-4825-59136322ac04', 'Tecnomed J Trapp c.a', '2017-05-10 18:59:20', 'save', 'nsuiepnru055gvm6f79l6erq70', 0, 0),
(53, '2285472c-b8d1-7887-fac1-59136301d432', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Contacts', 'c5d295a1-3152-5d3c-0168-5913636a6784', 'Sra. Kenia Santana', '2017-05-10 19:01:18', 'detailview', 'nsuiepnru055gvm6f79l6erq70', 0, 0),
(65, '461b1921-5ccb-dbca-faef-59301c024757', '1', 'Accounts', '1b3c7622-205c-b741-4825-59136322ac04', 'TECONMED J TRAPP', '2017-06-01 13:55:32', 'detailview', 'dia19751cngacj2t1e9oott5j0', 0, 0),
(66, '76a8e771-e492-070c-8da7-59305f2d5781', '1', 'Cases', 'e68954e9-7a32-1294-d0a6-59305f9f23c2', 'Pagina web de Tecnomed', '2017-06-01 18:37:58', 'detailview', 'dia19751cngacj2t1e9oott5j0', 0, 0),
(67, 'de2d087d-3b06-c5e0-52e0-59306b4d5597', '1', 'Cases', 'cf70a052-5d14-4397-1beb-59306a05ee86', 'página Web de Tecnomed', '2017-06-01 19:29:05', 'detailview', 'dia19751cngacj2t1e9oott5j0', 0, 0),
(70, '907fbc31-17d3-dc1f-1ac5-59306b7a8bbe', '1', 'Cases', '429d2fa3-8356-2b9f-040e-59301bd8f46b', 'Imágenes que sustituirán a los actuales calendarios en la Pag Web de la Asociación', '2017-06-01 19:31:23', 'detailview', 'dia19751cngacj2t1e9oott5j0', 0, 0),
(72, '8491044c-5843-913c-8df3-59306b285dce', '1', 'Accounts', 'e191ac93-4fd2-3eab-ec6f-59301bf539b1', 'AIAG - ASOCIACIÓN DE INDUSTRIAS DE LAS ARTES GRÁFICAS', '2017-06-01 19:31:49', 'detailview', '0eb7bp0atqddnv24u8r8bio3d5', 0, 0),
(74, 'c01903fa-95a1-ca89-438b-59306b77754a', '1', 'Cases', '65eb2aa9-0038-fad4-f641-593015d1ffdd', 'Solicitud de cambios en la página web REED', '2017-06-01 19:32:04', 'detailview', 'dia19751cngacj2t1e9oott5j0', 0, 0),
(77, '7a6e2ca9-1a50-4e40-bbcc-593073ccf01d', '1', 'Accounts', '9f6e2888-4e4a-5d68-c7e4-5930733e69fd', 'SUPREME LANDSCAPING (CANADA)', '2017-06-01 20:05:16', 'save', 'dia19751cngacj2t1e9oott5j0', 0, 0),
(78, 'd71a084c-71b6-0aba-f9a5-593073e065ac', '1', 'Cases', '563706de-49af-8cd4-11cb-593073509250', 'website is not configured', '2017-06-01 20:05:43', 'detailview', 'dia19751cngacj2t1e9oott5j0', 0, 0),
(80, 'e759154a-14b2-ee09-f9b1-5930779b66f3', '1', 'Cases', '6896890b-a6cc-8652-950c-59307597a9ef', 'Actualizar Sitio de Supreme Landscaping', '2017-06-01 20:23:44', 'detailview', 'dia19751cngacj2t1e9oott5j0', 0, 0),
(81, '8a3e0b1c-ba6e-e315-b9d4-59307a876217', '1', 'Accounts', '8e30a6c7-5618-1698-c2ac-59307a71047a', 'FREINDS BALLONSVE', '2017-06-01 20:35:43', 'save', 'dia19751cngacj2t1e9oott5j0', 0, 0),
(83, 'adfe497b-6949-2ed8-aecb-59308df302c5', '1', 'Cases', '49cd4802-e6a1-b99d-55d9-59308de0a71e', 'Cambios en la cantidad de los artículos', '2017-06-01 21:56:17', 'detailview', 'dia19751cngacj2t1e9oott5j0', 0, 0),
(84, 'ef9dadf6-640e-f44d-43c1-593094b8fe02', '1', 'Accounts', '1f4e0967-711c-5d13-3ce0-593094ea2424', 'GRUPO DINASERF', '2017-06-01 22:24:58', 'save', '1l39d6rh815hj2o0nc8v7ffst3', 0, 0),
(85, '47cfe15f-8571-3478-5c4e-59309469b018', '1', 'Cases', 'bae6e80d-5bbc-0ab8-dffb-593094c41ae4', 'Correcciones al Portal Web', '2017-06-01 22:26:12', 'detailview', '1l39d6rh815hj2o0nc8v7ffst3', 0, 0),
(90, '2bc3e765-4e74-e741-ffcd-593173c167fd', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', 'bae6e80d-5bbc-0ab8-dffb-593094c41ae4', 'Correcciones al Portal Web', '2017-06-02 14:18:44', 'detailview', '88abcm7drfl02h5tgqulr58513', 0, 0),
(91, '5101d1b4-89ad-7fd3-ddba-5931a8a074a1', '1', 'Cases', '2d97b329-6293-46fd-6261-5931a8e5e509', 'Cambios en el contenido de la sección de Mantenimiento', '2017-06-02 18:02:49', 'detailview', 'llekn0k91h43klecqh77ca5ql7', 0, 0),
(92, '83945d01-5947-386f-9a8e-5931addadb24', '1', 'Cases', '7e7f08c5-8c8d-d0cb-b70a-59307adcc362', 'Diseño de Logotipo', '2017-06-02 18:27:00', 'detailview', 'llekn0k91h43klecqh77ca5ql7', 0, 0),
(99, '66358aca-5ea0-51ab-7e70-594145f03ccc', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Accounts', '83b1dc3a-6c28-5845-a18b-5941457f1736', 'Adopta Venezuela (Jose Romero)', '2017-06-14 14:16:16', 'save', '19lptdmivi6alci3ucursb5k91', 0, 0),
(101, '11b10532-937c-5280-3f9e-594146da82bc', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Accounts', '15a4dd96-9b8d-fc46-fc9d-5941468dd107', 'Caveperu', '2017-06-14 14:20:09', 'save', '19lptdmivi6alci3ucursb5k91', 0, 0),
(103, '4d396b7e-d3de-508f-4ff1-594146f07b5f', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Accounts', '5b2d4eb5-2c36-2575-6fc4-594146fdae56', 'Radio Azucar', '2017-06-14 14:22:52', 'save', '19lptdmivi6alci3ucursb5k91', 0, 0),
(113, '6c058d29-be04-9c76-414c-59441787495a', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', 'be9c5698-86d2-f632-5743-5941469a6e94', 'Solicita modificación formulario de contacto web Radio Azucar', '2017-06-16 17:38:04', 'detailview', '3to1487poecbmtk0cdehobmdi4', 0, 0),
(115, 'cee8e077-b59e-df1b-4d46-594417f8ce2a', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', 'bc8d2837-0bb2-04fa-373a-5941468f4e10', 'Imprimir todo En una ventana nueva Claves de caveperu', '2017-06-16 17:38:34', 'detailview', '3to1487poecbmtk0cdehobmdi4', 0, 0),
(117, '401efbba-1999-264b-dbcf-59441ac2aa30', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', 'cc157680-3553-af99-0f9b-59441a651b24', 'prueba', '2017-06-16 17:50:47', 'detailview', '3to1487poecbmtk0cdehobmdi4', 0, 0),
(118, '59fb62f3-0223-5f87-bb00-59441aa15c44', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'b4d62ef5-94cc-28aa-00ef-59441ae5c98d', 'Prueba ', '2017-06-16 17:52:35', 'detailview', 'j1fag26qpvoh5mgc49g60vsq30', 0, 0),
(119, 'a7bcf7ef-6222-a459-8fcf-59441f673d6b', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Accounts', '1eb1a057-6392-af1b-d728-59301475db56', 'REED - LVQQT', '2017-06-16 18:13:41', 'detailview', '5qd12oom0hrn8n97cr9lnc6jh2', 0, 0),
(120, 'd826b839-a23d-eac1-b688-59441fe588df', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Cases', '65eb2aa9-0038-fad4-f641-593015d1ffdd', 'Solicitud de cambios en la página web REED', '2017-06-16 18:14:17', 'detailview', '5qd12oom0hrn8n97cr9lnc6jh2', 0, 0),
(124, 'ef54584f-8d7b-97ae-b663-594420c947d5', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Cases', 'cc157680-3553-af99-0f9b-59441a651b24', 'prueba', '2017-06-16 18:17:00', 'detailview', '5qd12oom0hrn8n97cr9lnc6jh2', 0, 0),
(127, 'a1e0a2b2-89f3-0146-216a-59442010f2f0', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Cases', 'b4d62ef5-94cc-28aa-00ef-59441ae5c98d', 'Prueba ', '2017-06-16 18:18:11', 'detailview', '5qd12oom0hrn8n97cr9lnc6jh2', 0, 0),
(128, '491806ee-beb2-1e52-4526-59442e0300a4', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Accounts', '4cfb3385-8b10-b34a-f1c7-59442eb17012', 'Moises Bittan', '2017-06-16 19:17:38', 'save', '3to1487poecbmtk0cdehobmdi4', 0, 0),
(129, 'e5c2b1d9-626f-c1b5-466e-59442fdde250', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', 'a99d7dab-4142-b3ce-a0c0-59442f682c30', 'Artículo para mi blog', '2017-06-16 19:18:48', 'detailview', '3to1487poecbmtk0cdehobmdi4', 0, 0),
(132, '47d3830c-8eb4-c0c4-23b1-59443ddd225e', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', 'cf95fc62-1c1d-3231-e719-594145a097ca', 'Cambios en la pagina', '2017-06-16 20:19:00', 'detailview', '3to1487poecbmtk0cdehobmdi4', 0, 0),
(133, 'd4e501f6-ef6c-9cb0-aa34-59443ee94391', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', '6266a29a-fdd2-5d98-8cf4-594430b23868', 'Modificaciones al Portal Web de TECNOMED J TRAPP', '2017-06-16 20:24:23', 'detailview', 'mvb42cbm7mcqife1psh1bb6cl3', 0, 0),
(134, '76b452e6-8dcc-95d4-3de6-59483796aa13', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Accounts', '957f9c12-4004-8201-023c-594837a479c3', 'Daycare', '2017-06-19 20:41:36', 'save', '5ck1lothvmunec8mabudcpe3p7', 0, 0),
(135, '54b34393-ecfd-2c77-7ac3-594837d399ed', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', 'c384488c-cd78-9b87-3d14-59483737b011', 'website', '2017-06-19 20:42:45', 'detailview', '5ck1lothvmunec8mabudcpe3p7', 0, 0),
(136, '6fe572ea-e4ce-7c52-b557-594924bc3fcf', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Accounts', '81d1d47b-fe45-a0e1-9d5a-594924d33ce9', 'TopaTopa', '2017-06-20 13:34:49', 'save', 'f47714saqkpvv95sq3r3b4pc30', 0, 0),
(138, '65b8425a-8f81-8a42-4e8c-59492806af3d', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', 'a01ec9be-e6ae-b952-b18c-59492856b298', 'Usuario y clave de Administrador', '2017-06-20 13:51:03', 'detailview', 'f47714saqkpvv95sq3r3b4pc30', 0, 0),
(139, '1603490b-94ee-8319-ce14-5949635b806b', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', '417e1cf0-8ae0-bd42-0153-594963cad36a', 'Subir pagina Adopta Venezuela', '2017-06-20 18:05:25', 'detailview', 'f47714saqkpvv95sq3r3b4pc30', 0, 0),
(140, '1c162786-6e3a-9000-d32c-59497f29f6c2', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Cases', 'c384488c-cd78-9b87-3d14-59483737b011', 'website', '2017-06-20 20:02:03', 'editview', 'hk44cf7pp6to6gmit09fgqjr82', 0, 0),
(141, '9938c891-7929-7e6c-bf6a-59498074d2a8', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Cases', 'a01ec9be-e6ae-b952-b18c-59492856b298', 'Usuario y clave de Administrador', '2017-06-20 20:08:45', 'editview', 'hk44cf7pp6to6gmit09fgqjr82', 0, 0),
(152, '792eb0c5-bc24-e84b-28ca-594d4ff7d1e9', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', '91e9964a-a58c-d6fc-2f73-59492747c628', 'Categoría desaparecida', '2017-06-23 17:27:12', 'detailview', '4n87lq6ssfiu1a8sqhjduaggc0', 0, 0),
(155, '13745480-b031-3265-f979-594d50eab1ad', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Users', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Ana Lezama', '2017-06-23 17:32:17', 'detailview', '3uq2b0g86vdqf1nr2jbll8ue60', 0, 0),
(165, 'bb92dc46-93c5-eb0c-7ef8-594d82c55463', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Accounts', 'bf9b42f4-0828-58fa-fecc-594d82a1fc9d', 'Dinaserf', '2017-06-23 21:06:35', 'save', '3uq2b0g86vdqf1nr2jbll8ue60', 0, 0),
(168, '9a6fccdc-8592-a0ea-cb08-594ea79d4557', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Cases', '773e7078-c2af-3aba-d63d-594d8313dc7b', 'Clave CRM Dinaserf', '2017-06-24 17:56:17', 'detailview', '3uq2b0g86vdqf1nr2jbll8ue60', 0, 0),
(173, 'ab0e0b56-1f22-0ada-63a9-594fb8354ded', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'Cases', '417e1cf0-8ae0-bd42-0153-594963cad36a', 'Subir pagina Adopta Venezuela', '2017-06-25 13:20:16', 'detailview', 'eg0g5vlqmmd981klh0umgs3rj2', 0, 0),
(175, '765cb854-8741-1f7c-27e4-594fb8abc825', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'Cases', '773e7078-c2af-3aba-d63d-594d8313dc7b', 'Clave CRM Dinaserf', '2017-06-25 13:21:07', 'detailview', 'eg0g5vlqmmd981klh0umgs3rj2', 0, 0),
(177, '68d2a475-f624-5821-4b4c-594fba445971', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'Cases', 'a99d7dab-4142-b3ce-a0c0-59442f682c30', 'Artículo para mi blog', '2017-06-25 13:26:59', 'detailview', 'eg0g5vlqmmd981klh0umgs3rj2', 0, 0),
(208, '588595c4-7886-4174-5cbb-595672c0f642', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'Meetings', 'c2fd23a0-9f3d-9fd9-0f7e-595672a987d4', 'Guardia', '2017-06-30 15:48:43', 'detailview', 'lt2ol78vf2sboevugp47mp4ka4', 0, 0),
(209, '8fcebc00-320c-dac8-bb7e-5956727bfeda', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Meetings', '53b2572e-727a-7539-2460-59566b6f08d9', 'Guardia', '2017-06-30 15:48:48', 'detailview', 'jvi5kn3fdei5rt8267snbr1vr1', 0, 0),
(212, '6513c856-74a3-564d-7a8d-595673b9b82f', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Meetings', '4a15ab25-3d53-4b7a-c290-59566ecd1ad2', 'Guardia', '2017-06-30 15:49:30', 'detailview', 'jvi5kn3fdei5rt8267snbr1vr1', 0, 0),
(213, '9a7588a4-d3b6-7659-0ec5-595673ab48bb', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Meetings', 'c2fd23a0-9f3d-9fd9-0f7e-595672a987d4', 'Guardia', '2017-06-30 15:52:13', 'detailview', 'jvi5kn3fdei5rt8267snbr1vr1', 0, 0),
(214, '4bb50f9f-0b25-dc89-4810-595aa2cdb502', '1', 'Accounts', '3424ea1c-6a29-7ed1-6e1f-595aa2dc341e', 'TS TALENT SOLUCIONES', '2017-07-03 20:02:16', 'save', '4a1gqfdfges8dsc8ulsfgp8t00', 0, 0),
(217, '15f7615a-6b6e-2ea2-c75e-595aa359e600', '1', 'Cases', '5f4cee07-88a4-e752-1feb-595aa3313a55', 'Modificar la plataforma de CRM', '2017-07-03 20:06:38', 'detailview', '4a1gqfdfges8dsc8ulsfgp8t00', 0, 0),
(218, 'f49c02b9-6a9c-9539-9cac-595aa74cd131', '1', 'Tasks', 'a0c97539-461f-a68b-89a0-595aa7bf1ecb', NULL, '2017-07-03 20:21:15', 'editview', '4a1gqfdfges8dsc8ulsfgp8t00', 0, 0),
(221, '2eed8dfa-aacd-dff9-43c6-595aa9e42e2f', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Users', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'Arizay Quintana', '2017-07-03 20:32:28', 'detailview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(228, 'b7a141e5-1d3b-d35e-1bfa-595aaa2ae31c', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Users', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'Iliana Valdez', '2017-07-03 20:35:16', 'detailview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(233, '4556b500-54d0-c598-974a-595aabb91a4f', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', '417e1cf0-8ae0-bd42-0153-594963cad36a', 'Subir pagina Adopta Venezuela', '2017-07-03 20:37:56', 'editview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(243, '85ea24ad-fdf1-a329-7520-595b9346c810', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', '15a4dd96-9b8d-fc46-fc9d-5941468dd107', 'CAVEPERU', '2017-07-04 13:10:52', 'editview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(245, 'a0edee43-1050-1c36-9112-595b941e6105', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', 'bf9b42f4-0828-58fa-fecc-594d82a1fc9d', 'DINASERF', '2017-07-04 13:11:59', 'detailview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(247, 'fec3045f-6acb-a1d3-e075-595b9465b98c', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', '81d1d47b-fe45-a0e1-9d5a-594924d33ce9', 'TOPATOPA', '2017-07-04 13:12:42', 'detailview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(250, '4e472d62-1b79-6cc4-9e94-595b94182218', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', '957f9c12-4004-8201-023c-594837a479c3', 'DAYCARE', '2017-07-04 13:14:18', 'detailview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(253, '6a6e24b9-ba7c-0f7b-d288-595b953b3116', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', '4cfb3385-8b10-b34a-f1c7-59442eb17012', 'MOISES BITTAN', '2017-07-04 13:16:54', 'detailview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(255, '122edc7a-d5b8-d5bc-06ee-595b950aac50', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', '5b2d4eb5-2c36-2575-6fc4-594146fdae56', 'RADIO AZUCAR', '2017-07-04 13:18:08', 'detailview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(257, 'af38a2d6-0114-b664-c470-595b9512fefd', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', '83b1dc3a-6c28-5845-a18b-5941457f1736', 'ADOPTA VENEZUELA', '2017-07-04 13:19:30', 'detailview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(260, '13c93c4e-4616-b2e4-d157-595b965e9dc5', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', '9f6e2888-4e4a-5d68-c7e4-5930733e69fd', 'SUPREME LANDSCAPING', '2017-07-04 13:20:17', 'detailview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(262, '7f17e227-65bc-6ff1-91d4-595b976c5c3a', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Tasks', 'f38326e0-0491-d267-3f00-595b96eb3753', 'RESPALDOS', '2017-07-04 13:26:14', 'editview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(265, '17517184-017d-90d9-6505-595b982b2240', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', '563706de-49af-8cd4-11cb-593073509250', 'Website is not configured', '2017-07-04 13:30:58', 'detailview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(266, '25c28cd8-c9f0-80fe-bfb0-595b98a799fb', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'cf70a052-5d14-4397-1beb-59306a05ee86', 'Página Web de Tecnomed', '2017-07-04 13:31:07', 'detailview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(267, '43d941c0-7b3a-d9af-8ad5-595b98366984', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'c384488c-cd78-9b87-3d14-59483737b011', 'website', '2017-07-04 13:31:22', 'detailview', '3gj2ofepvk83jmac8rmscmjua1', 0, 0),
(268, 'a4efed9f-dd78-fe51-53dd-5962704a226d', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Accounts', 'b26d50b8-b6c4-ea64-84e2-596270f7101f', 'Farmacia familiar', '2017-07-09 18:05:30', 'save', 'l53262396hab691sauk50eej62', 0, 0),
(269, 'dab205ae-20f8-d10a-e258-5962705268ec', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', '2f0913cb-5139-2cf3-77fa-59627011939d', '         Más  3 de 4.177     Imprimir todo En una ventana nueva Cambios para el logo de Farmacia Familiar', '2017-07-09 18:05:56', 'detailview', 'l53262396hab691sauk50eej62', 0, 0),
(270, '1afdcdeb-0514-3651-17a3-59945b681cd7', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'e4a973c6-1aaf-05fc-058c-59945b64e3f7', 'PROBLEMAS CON LOS CORREOS', '2017-08-16 14:48:02', 'detailview', 'ptct1osd750et2d6254q8c89i7', 0, 0),
(271, '1bb8f251-bdb9-be2d-c860-59945c05b1bb', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', '22dac178-cd42-07f4-1b82-59945c021bf7', 'BELLA Y ELEGANTE', '2017-08-16 14:53:41', 'save', 'ptct1osd750et2d6254q8c89i7', 0, 0),
(272, 'd6a2644f-17f9-7a26-a0b9-59945c2b3ba7', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', '4e513191-9d31-4e72-4190-59945c46a372', 'AGREGAR LOS ITEMS', '2017-08-16 14:54:06', 'detailview', 'ptct1osd750et2d6254q8c89i7', 0, 0),
(275, '7b452dd8-25be-cd6f-a449-59947b787fa3', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'Cases', '4e513191-9d31-4e72-4190-59945c46a372', 'AGREGAR LOS ITEMS', '2017-08-16 17:04:41', 'detailview', '5b3f5rj1vm4lvmpke2udef1g21', 0, 0),
(276, 'eafe4263-b7dd-f48e-dbf3-59947bb5150a', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'Cases', 'e4a973c6-1aaf-05fc-058c-59945b64e3f7', 'PROBLEMAS CON LOS CORREOS', '2017-08-16 17:04:46', 'editview', '5b3f5rj1vm4lvmpke2udef1g21', 0, 0),
(277, '898e1bf3-72ed-5599-6ff8-59949aa73c4a', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', 'cf1df7ae-4fc6-d0b3-06c7-59949ab9fb3d', 'E-GERENTE', '2017-08-16 19:16:37', 'save', '80pbi6svnh58ad9em26j5ujtu3', 0, 0),
(281, '4d30094d-620b-e16c-f94f-59949a5de9a8', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'aa4c29a7-136f-3115-9972-59949a9548da', 'MODIFICACIONES SOLICITADAS POR EGERENTE', '2017-08-16 19:19:40', 'detailview', '80pbi6svnh58ad9em26j5ujtu3', 0, 0),
(283, '89798a8b-a937-57c5-8c69-5994a7c4be44', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'ca594cab-0c3c-9be8-19e1-5994a74dfa44', 'CORRECIONES DE AVANCES CARDIOLOGICOS', '2017-08-16 20:15:00', 'detailview', '80pbi6svnh58ad9em26j5ujtu3', 0, 0),
(286, '5fdf47d3-dcfb-fa95-2ad0-5994a83536fe', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', 'f2ccaa5d-623c-3865-fa99-5994a7d2c26d', 'AVANCES CARDIOLOGICOS', '2017-08-16 20:19:46', 'detailview', '80pbi6svnh58ad9em26j5ujtu3', 0, 0),
(288, '54111d1f-e956-42a2-99bb-5995a471464b', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'Cases', 'e68954e9-7a32-1294-d0a6-59305f9f23c2', 'Pagina web de Tecnomed', '2017-08-17 14:12:19', 'editview', 'lfdeol2f2fvc6icbci0ko60c50', 0, 0),
(291, '3f56a68c-ca91-0bd0-97d1-5995a4404149', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'Cases', 'e4a973c6-1aaf-05fc-058c-59945b64e3f7', 'PROBLEMAS CON LOS CORREOS', '2017-08-17 14:13:58', 'detailview', 'lfdeol2f2fvc6icbci0ko60c50', 0, 0),
(292, 'c60fcd02-7e1d-ff66-a546-5995e4a80425', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'Tasks', '525009a2-bbb9-feef-acd3-595aaf0ea4c7', 'Base de datos gráfica tstalent', '2017-08-17 18:45:36', 'detailview', 'k5hlqoq7j4gdpdipk5948tdsq3', 0, 0),
(295, '9f0ea715-28d3-847f-8e57-59970307f497', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'd7a561bc-65dd-db52-1901-599703bf8410', 'CORREGIR EL EDITORIAL PUBLICADO EN LA PAGINA WEB', '2017-08-18 15:09:45', 'detailview', '9o2nk8d1462igp4sgsenlne0u5', 0, 0),
(301, '49f4c834-b399-a53b-ab18-59973127e7d9', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', 'b03cabad-7dae-91d0-c1cf-59972e0c1dc8', 'QUIERO UN PAIS', '2017-08-18 18:28:52', 'detailview', 'lsilbrpmi9dhv4davqktsdp134', 0, 0),
(303, '22bfeae8-59e8-5aaa-7aa3-599732977998', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', '79de9740-8e43-5ff1-4deb-59972f56c144', 'PROYECTO (QUIERO UN PAIS)', '2017-08-18 18:32:13', 'editview', 'lsilbrpmi9dhv4davqktsdp134', 0, 0),
(312, '679972f6-4103-3262-ad27-599dde25aaf7', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', 'e467db0d-5e64-34f3-c68d-599ddd82c9b0', 'ECOASEO', '2017-08-23 20:00:21', 'detailview', 'lhnv3fhhl85v7oilchptrqnv87', 0, 0),
(313, 'eaf856af-7578-853c-07a7-599ddf393dc2', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', 'ef0b574d-5a87-fcbf-701d-599ddf2beff8', 'ELIGEOFERTAS', '2017-08-23 20:01:59', 'save', 'lhnv3fhhl85v7oilchptrqnv87', 0, 0),
(315, '6c68cf9c-3473-fe82-6679-59a56b1ff344', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', '80a3b177-a08f-ea26-4b50-59a56b317e05', 'LA RED DE LIDERAZGO', '2017-08-29 13:26:44', 'save', '4b8elf0isqbme8qb2900gfm0n4', 0, 0),
(320, 'bb7d4ccc-4e98-4bcd-c13e-59a6afbdaf0c', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'f35541bb-2b40-eae0-76dc-599ddde690e9', 'INICIO DE SERVICIOS DE REDES SOCIALES', '2017-08-30 12:28:21', 'detailview', 'r89tg9f73cj67tvii7ti952lr1', 0, 0),
(321, 'eff3a592-ce87-de79-c6bb-59a6bacbc27c', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', '24291dad-ebef-44e1-157c-59a6bae1dab1', 'SOLICITUD PARA LA WEB AIAG', '2017-08-30 13:17:14', 'detailview', 'ifd3lshgltevsqgudtmqklq847', 0, 0),
(324, 'b72da3fa-1b38-5909-6586-59a8163a98be', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', 'd7a561bc-65dd-db52-1901-599703bf8410', 'CORREGIR EL EDITORIAL PUBLICADO EN LA PAGINA WEB', '2017-08-31 13:59:39', 'editview', 'meafaioit496jusf1q3t62g0j2', 0, 0),
(325, '1de1aab2-b837-c7a7-8de7-59a96016dc2f', '1', 'Cases', '433c2cd5-717b-145f-12bf-59a960cff896', 'SVC CONTENIDO NUEVO', '2017-09-01 13:29:59', 'detailview', 'fvbcl0oq2n1gcksn870ac5s874', 0, 0),
(330, 'ad1db7b9-6cb1-8486-0a0e-59a971dfd346', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'Cases', '2f0913cb-5139-2cf3-77fa-59627011939d', '         Más  3 de 4.177     Imprimir todo En una ventana nueva Cambios para el logo de Farmacia Familiar', '2017-09-01 14:42:50', 'editview', 'qcu6o3pmjfba0cu5unqbjt4m15', 0, 0),
(332, '7630eace-6b21-f6d1-b4f3-59a9732688e5', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', '433c2cd5-717b-145f-12bf-59a960cff896', 'SVC CONTENIDO NUEVO', '2017-09-01 14:47:38', 'detailview', 'qbbhuu25bq4oajsu7lk4htogn1', 0, 0),
(334, '22674e3d-9036-2113-f27a-59ad6ff425fa', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'c7f3dec2-f085-d89b-9731-59ad6f395634', 'INFORMACION DE MOVIMIENTO URBANO DE RADIO AZUCAR', '2017-09-04 15:21:09', 'detailview', '64ro6niuvskahg4p4a6n1uoaf1', 0, 0),
(335, '9a3871e5-50e2-8d11-deac-59ad6f915918', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'b7d33bb8-8a2d-b23a-4868-59ad6fe1b863', 'INFORMACION DE MOVIMIENTO URBANO DE RADIO AZUCAR', '2017-09-04 15:21:50', 'editview', '64ro6niuvskahg4p4a6n1uoaf1', 0, 0),
(337, '14aaaba7-eeed-bb9e-7c93-59aff5d65e5b', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', '74054fae-38a1-1a48-3c8c-599ddfb68031', 'CARGAR PRODUCTOS ', '2017-09-06 13:16:42', 'detailview', 'n85roc8h5096c7ed7kracp1614', 0, 0),
(339, '514471b7-b931-a0c9-8f50-59aff53f7392', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'e48865d9-1079-8b59-5451-59a57680b90d', 'CARGA DE IMAGENES', '2017-09-06 13:18:38', 'detailview', 'n85roc8h5096c7ed7kracp1614', 0, 0),
(341, '309fad3c-8a0a-67df-eaae-59aff6090d30', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', '31f7258b-30c3-3e9b-e220-59a56b2b7333', 'CORRECCIONES PAGINA WED REED', '2017-09-06 13:20:19', 'detailview', 'n85roc8h5096c7ed7kracp1614', 0, 0),
(343, 'c8c08deb-1682-ea46-4310-59aff6bb3796', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', '5f4cee07-88a4-e752-1feb-595aa3313a55', 'Modificar la plataforma de CRM', '2017-09-06 13:20:43', 'detailview', 'n85roc8h5096c7ed7kracp1614', 0, 0),
(345, 'acc465ba-c569-9657-c2b4-59bbd1a583e7', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'd586014a-a106-d115-b782-59bbd16ca47f', 'Faltantes (New Hope ESL)', '2017-09-15 13:11:02', 'detailview', '7lp8geqtf8ddtfgo7d7jbld4j5', 0, 0),
(348, 'deab8abb-8719-2706-c0b6-59bbd1797d42', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', 'c9a0a91a-5d4d-92b8-20a1-59bbd1451eef', 'NEW HOPE', '2017-09-15 13:13:13', 'detailview', '7lp8geqtf8ddtfgo7d7jbld4j5', 0, 0),
(351, 'a24efc36-e68f-2c7a-1e82-59bbd2eeb525', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', 'ccf7a2c7-7b2d-e1fb-92c6-59a575616615', 'OJO PRODUCCION', '2017-09-15 13:13:41', 'detailview', '7lp8geqtf8ddtfgo7d7jbld4j5', 0, 0),
(352, '70f54fa3-491d-cd34-2f49-59bbd259e296', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Accounts', '74d5827c-eb50-d537-dbd8-59bbd2c20144', 'CHICKEN2GO', '2017-09-15 13:16:26', 'save', '7lp8geqtf8ddtfgo7d7jbld4j5', 0, 0),
(353, '3ac1d026-b393-5df4-5bca-59bbd2997a2c', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Cases', 'c77c33ba-ef86-3848-2af5-59bbd2a168bf', 'Detalles administrativos', '2017-09-15 13:17:46', 'detailview', '7lp8geqtf8ddtfgo7d7jbld4j5', 0, 0),
(376, '406fe966-3caf-3ef5-5cc5-59d4d7fa0e41', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Employees', '10ccb807-5647-a0cc-a0c8-5952609bf6b7', 'Yoshua Vizquel', '2017-10-04 12:42:38', 'detailview', 'ga11gs55lr67rjsr8b34uikci2', 0, 0),
(377, 'c739b529-92dd-b716-d4d5-59d4d74f0eef', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Employees', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Ana Lezama', '2017-10-04 12:42:46', 'detailview', 'ga11gs55lr67rjsr8b34uikci2', 0, 0),
(378, 'c983c532-8f18-4cbc-8e11-59d4d771f4e5', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Employees', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'Alexander Vizquel', '2017-10-04 12:43:09', 'detailview', 'ga11gs55lr67rjsr8b34uikci2', 0, 0),
(389, 'cd2dbbe9-ad54-2714-4ff5-59d4d88b31ef', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Employees', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'Alexander Vizquel', '2017-10-04 12:48:36', 'editview', 'mqbjgs579a75s7ad34ccjurqq5', 0, 0),
(390, '48f1f28d-c628-e450-a2c7-59d4d8615319', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', 'aa4c29a7-136f-3115-9972-59949a9548da', 'MODIFICACIONES SOLICITADAS POR EGERENTE', '2017-10-04 12:48:51', 'detailview', 'mqbjgs579a75s7ad34ccjurqq5', 0, 0),
(391, '4045725c-fc42-b73b-35d2-59d4d8898462', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', '24291dad-ebef-44e1-157c-59a6bae1dab1', 'SOLICITUD PARA LA WEB AIAG', '2017-10-04 12:48:56', 'detailview', 'mqbjgs579a75s7ad34ccjurqq5', 0, 0),
(392, 'd0d8b906-4818-37d6-ac1d-59d4d822e102', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Cases', 'ca594cab-0c3c-9be8-19e1-5994a74dfa44', 'CORRECIONES DE AVANCES CARDIOLOGICOS', '2017-10-04 12:48:59', 'detailview', 'mqbjgs579a75s7ad34ccjurqq5', 0, 0),
(393, '3780f20d-7d5a-6949-2b69-59d4d8068a54', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'ACLRoles', '5e989a55-4600-6083-df0f-590019e937eb', 'SOPORTE TS TALENT', '2017-10-04 12:49:15', 'detailview', 'ga11gs55lr67rjsr8b34uikci2', 1, 0),
(395, '28a2e44c-21cb-4985-c0a3-59d4d95aade0', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'ACLRoles', '5e989a55-4600-6083-df0f-590019e937eb', 'SOPORTE TS TALENT', '2017-10-04 12:52:33', 'editview', 'mqbjgs579a75s7ad34ccjurqq5', 1, 0),
(396, '3e710f50-1b46-cdd9-0bf6-59d4d96ba242', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'ACLRoles', '101d0eec-099a-0b07-97cb-59d4d9c1f6b4', 'Usuario', '2017-10-04 12:53:18', 'save', 'mqbjgs579a75s7ad34ccjurqq5', 1, 0),
(397, '5f515161-6eaa-2d1d-41e7-59d4d995090e', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'ACLRoles', '101d0eec-099a-0b07-97cb-59d4d9c1f6b4', 'Usuario', '2017-10-04 12:53:19', 'detailview', 'mqbjgs579a75s7ad34ccjurqq5', 1, 0),
(398, 'b7fa1129-861d-0789-c7c4-59d4dacb96b0', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Users', '10ccb807-5647-a0cc-a0c8-5952609bf6b7', 'Yoshua Vizquel', '2017-10-04 12:54:40', 'editview', 'mqbjgs579a75s7ad34ccjurqq5', 0, 0),
(399, '3c909495-276e-bdc9-5288-59d4da4dc74c', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Users', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Luis Perez', '2017-10-04 12:56:33', 'editview', 'mqbjgs579a75s7ad34ccjurqq5', 0, 0),
(400, '10224dfa-769e-5d30-8297-59d4da7df344', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Users', '4aa108b5-0830-49bf-b0e0-594d5c3aec2f', 'Marta Carreño', '2017-10-04 12:56:50', 'detailview', 'ga11gs55lr67rjsr8b34uikci2', 0, 0),
(404, '3295ce98-65fc-96be-291a-59e8cd7d947e', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Employees', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'Miguel González', '2017-10-19 16:06:56', 'editview', 'uj3b7j8cf5jpdsmhr5566c5302', 0, 0),
(409, '4976293c-6ed4-5455-9631-59f38a1099f3', '1', 'Accounts', '74d5827c-eb50-d537-dbd8-59bbd2c20144', 'CHICKEN2GO', '2017-10-27 19:34:02', 'detailview', '2tgladm85h8h9uo7togtdqack3', 0, 0),
(410, 'e4fbe91a-be74-693f-e763-59f38a4ff4ca', '1', 'Accounts', '1eb1a057-6392-af1b-d728-59301475db56', 'REED - LVQQT', '2017-10-27 19:34:40', 'detailview', '2tgladm85h8h9uo7togtdqack3', 0, 0),
(412, 'cf99db33-dbb0-4556-e9c5-59f87f8e55a9', '1', 'Cases', '3c9f356e-f312-be17-8c9a-59f87f61723e', 'nombre que aparece en la pagina del sitio web de QUP', '2017-10-31 13:51:40', 'detailview', '2m8sfapqncgchhqjv1v3a7gjv2', 0, 0),
(424, 'a0cc18a8-7e29-48da-a199-5a1967353b78', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'ProjectTask', '9bfa627e-724a-ef2f-95f3-5a19671d758b', 'GESTIÓN DE CONTENIDO', '2017-11-25 12:52:19', 'save', 'd8fi8a6tjmbimaaghhlrhjpqc2', 1, 0),
(425, 'ec13018f-24b1-0b93-6841-5a196755078b', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'Project', '519d69da-7781-763c-77ed-5a1961b6ab34', 'QUIERO VINOS', '2017-11-25 12:52:19', 'detailview', 'd8fi8a6tjmbimaaghhlrhjpqc2', 1, 0),
(426, '2d925854-a78a-4b74-6d0d-5a35504d8121', '1', 'Project', '519d69da-7781-763c-77ed-5a1961b6ab34', 'QUIERO VINOS', '2017-12-16 16:59:42', 'detailview', '1109vud2adr2m9pd1g8gnah6h6', 1, 0),
(427, '1983355c-cb76-d6fc-002b-5a355160b59d', '1', 'Calls', 'a43b9dac-c743-44ed-9c14-59f880039b25', 'Llamar a Ricay de DIALCA', '2017-12-16 16:59:59', 'detailview', '1109vud2adr2m9pd1g8gnah6h6', 1, 0),
(445, '971b7efb-f2e6-c178-d2c6-5b3ed7bfe4c1', '1', 'ProjectTask', '24dba56d-abbb-6760-6352-5a196573e09c', 'DISEÑO DE PLANTILLA', '2018-07-06 02:46:14', 'detailview', 'cef01af27bbde5dc54527ed86e0bf4e8', 1, 0),
(450, 'b57dd816-6ecb-c968-9f94-5bc6336f3d51', '1', 'Meetings', '19dba154-91dc-d95a-ac2f-595aa540de05', 'Inducción de la Plataforma CRM', '2018-10-16 18:52:10', 'detailview', '760s2lg7lv5682b31e087t3n37', 1, 0),
(455, 'cc23b334-9229-55de-8905-5bc637ac8331', '1', 'Users', 'a1a85ead-a865-136f-28c5-5a35526b73fb', 'Guillermo Peñaloza', '2018-10-16 19:08:36', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(456, '44aeac8f-b41a-4048-9f84-5bc638d4ada1', '1', 'Users', 'b3d0d241-25b1-54b6-fc8e-59e8d0d9bb10', 'Andreina Yriarte', '2018-10-16 19:12:33', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(459, '839a09b3-db0c-b143-c110-5bc638c1f577', '1', 'Users', '10ccb807-5647-a0cc-a0c8-5952609bf6b7', 'Yoshua Vizquel', '2018-10-16 19:13:28', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(460, '23c43c04-19c3-584d-f5fc-5bc638a1c041', '1', 'Users', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'Miguel González', '2018-10-16 19:13:40', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(461, '52e92e6c-e069-1d31-84b5-5bc6385ef581', '1', 'Users', '4aa108b5-0830-49bf-b0e0-594d5c3aec2f', 'Marta Carreño', '2018-10-16 19:13:59', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(462, '6f549e2b-4bfd-f176-b1f9-5bc638e93629', '1', 'Users', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'Arizay Quintana', '2018-10-16 19:14:25', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(463, 'e9bf4bd8-17bc-36a0-616a-5bc6381541d9', '1', 'Users', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'Iliana Valdez', '2018-10-16 19:14:38', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(464, '15dae914-a8c4-b2c8-3ffa-5bc638b7057b', '1', 'Users', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'Ana Lezama', '2018-10-16 19:15:03', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(465, '8c0c1dc4-fdc1-f682-b438-5bc6380545b0', '1', 'Users', '80343642-e355-1c38-662f-59121e97591e', 'Javier Arevalo', '2018-10-16 19:15:18', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(466, '53c908ef-efac-9586-f04c-5bc638b2d8f3', '1', 'Users', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'Alejandro Avila', '2018-10-16 19:15:34', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(467, '29895fee-4864-1f94-ef6b-5bc639e66d14', '1', 'Users', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'Luis Perez', '2018-10-16 19:17:02', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(468, '55109bbd-9113-de80-090d-5bc6399129cb', '1', 'Users', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'Alexander Vizquel', '2018-10-16 19:17:21', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(469, '55ffd6bd-c628-6291-695d-5bc639f76313', '1', 'Users', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'Rihard Olimpio', '2018-10-16 19:17:44', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(470, '6b6cae46-34f2-ff6b-f4be-5bc63978e423', '1', 'Users', 'af9ce444-116c-4ece-ebd7-5900089ba8d9', 'SOPORTE TS TALENT', '2018-10-16 19:18:14', 'detailview', '760s2lg7lv5682b31e087t3n37', 0, 0),
(500, '94a9cf27-846f-04ce-7b39-5c3a89533119', '1', 'Leads', 'cf6f8f2e-f1e8-1765-81e5-5c3a86999895', 'Sr. JUAN PEREZ', '2019-01-13 00:42:43', 'detailview', '7b5d9arct9h3ivugh1svj3rua6', 1, 0),
(501, '37edf98f-37fd-3a81-fb66-5c3a8a294ea6', '1', 'Accounts', 'd5b05fb9-319d-bc6c-09bc-5c3a7f2b4eca', 'BEISA\'S', '2019-01-13 00:46:19', 'detailview', '7b5d9arct9h3ivugh1svj3rua6', 1, 0),
(502, '319107a9-1bcf-9b37-ef81-5c3a8ac0bd93', '1', 'Accounts', '42176e11-179a-9330-8f38-5c3a7eea42a4', 'BEISA\'S', '2019-01-13 00:46:54', 'detailview', '7b5d9arct9h3ivugh1svj3rua6', 1, 0),
(503, '29d1536f-d6b5-3391-0c25-5c3a8a1118d7', '1', 'Accounts', '721605d9-d1b3-04e7-3b92-5c3a7ff461c4', 'BEISA\'S', '2019-01-13 00:47:03', 'detailview', '7b5d9arct9h3ivugh1svj3rua6', 1, 0),
(504, '85d66b7e-2ace-f755-1ec6-5c3a8a380977', '1', 'Accounts', 'c8b095e7-e664-818b-1a62-5c3a80b6b704', 'BEISA\'S', '2019-01-13 00:47:06', 'detailview', '7b5d9arct9h3ivugh1svj3rua6', 1, 0),
(505, '6f7a06b1-6ea7-5404-e5c5-5c3a8a9d3f27', '1', 'Accounts', '1368dfec-3647-82fd-0f9b-5c3a7ec7a2af', 'BEISA\'S', '2019-01-13 00:47:09', 'detailview', '7b5d9arct9h3ivugh1svj3rua6', 1, 0),
(506, '191386a4-ec86-60a3-13ce-5c3a8aa399a2', '1', 'Accounts', '6113255b-e96f-3e32-134c-5bdfce86c702', 'VENTA DE CRM', '2019-01-13 00:47:12', 'detailview', '7b5d9arct9h3ivugh1svj3rua6', 1, 0),
(507, 'b4079fef-082e-d188-d030-5c3a8a96d054', '1', 'Accounts', 'ad19a97d-bc58-cdac-a78c-5bdfce8043f7', 'ANWAR BEISA', '2019-01-13 00:47:15', 'detailview', '7b5d9arct9h3ivugh1svj3rua6', 1, 0),
(517, '8109ac4f-2687-36d2-703a-5c3c0cedf66b', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Employees', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'Oscar Sanchez', '2019-01-14 04:11:45', 'save', '4fskghuue5tl8idjij2gdt2gp4', 1, 0),
(520, 'a2b35c1c-58e1-9886-dced-5c3c0c130400', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Employees', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'Oscar Sanchez', '2019-01-14 04:12:32', 'editview', '4fskghuue5tl8idjij2gdt2gp4', 1, 0),
(521, '8d6cb73f-d560-9ce0-7e19-5c3c0c26127b', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Users', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'ANWAR BEISA', '2019-01-14 04:12:54', 'detailview', '4fskghuue5tl8idjij2gdt2gp4', 1, 0),
(540, '56b4a943-cefa-6a28-0877-5c3c109153d0', '1', 'Employees', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'ANWAR BEISA', '2019-01-14 04:31:10', 'detailview', 'taggll1k5r4324pc1l2tp88n50', 1, 0),
(541, 'b75acbc4-b92b-03fc-b86b-5c3c10c37d64', '1', 'Employees', '1', 'SUPER USER', '2019-01-14 04:31:14', 'detailview', 'taggll1k5r4324pc1l2tp88n50', 1, 0),
(548, 'd67822ae-2e26-8d64-2d2f-5c3c1197297a', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Employees', '1', 'SUPER USER', '2019-01-14 04:36:54', 'detailview', '79r1u1hsgrh2enobqandsuipa3', 1, 0),
(549, '13e6fd25-3270-7e32-136d-5c3c114b5edb', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Employees', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'ANWAR BEISA', '2019-01-14 04:36:56', 'detailview', '79r1u1hsgrh2enobqandsuipa3', 1, 0),
(554, '5c0dbebe-ce69-d716-0752-5c3c129ca5b7', '1', 'Users', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'Oscar Sanchez', '2019-01-14 04:39:56', 'editview', 'taggll1k5r4324pc1l2tp88n50', 1, 0),
(563, 'eacbff47-2c00-2d75-1647-5c3cafd84e26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Employees', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'Glenda Mercado', '2019-01-14 15:47:50', 'save', 'ea9q2vpog6arqjovdqrl67gls7', 1, 0),
(586, 'ceb9f985-0027-e46d-bf71-5c3d0d9ef7d1', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'Users', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'OSCAR SANCHEZ RAMIREZ', '2019-01-14 22:28:55', 'detailview', 'l8rprgh4r8akdf1jsdkufqdre0', 1, 0),
(594, '2abc7ec5-690b-0d43-fd5e-5c3d0e7e4b33', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'EmailTemplates', '21657202-c7aa-9615-06b1-5c3d0e57ef47', 'Beisa\'s Legacy', '2019-01-14 22:35:35', 'save', 'ea9q2vpog6arqjovdqrl67gls7', 1, 0),
(595, '9a834231-47e0-ce04-bd5b-5c3d0efea81a', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'EmailTemplates', '21657202-c7aa-9615-06b1-5c3d0e57ef47', 'Beisa\'s Legacy', '2019-01-14 22:35:52', 'editview', 'ea9q2vpog6arqjovdqrl67gls7', 1, 0),
(603, 'bf8bbb7c-71af-489e-427c-5c3d52179354', '1', 'EmailTemplates', '1de21129-a09c-dfa8-8f07-582da5c82939', 'System-generated password email', '2019-01-15 03:22:46', 'save', '985ri43d30cu4eecsbrqdiuo50', 1, 0),
(613, '88fec6fa-f23d-a5e7-adf0-5c3fa8637fc0', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'EmailTemplates', '21657202-c7aa-9615-06b1-5c3d0e57ef47', 'Beisa\'s Legacy', '2019-01-16 21:55:19', 'detailview', 'ea9q2vpog6arqjovdqrl67gls7', 1, 0),
(615, '7a80cf4b-5890-11b6-1fbf-5c3fbfd50066', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Users', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'Glenda Mercado', '2019-01-16 23:32:27', 'editview', 'ea9q2vpog6arqjovdqrl67gls7', 1, 0),
(622, '4ccc2074-4181-98a5-622a-5c415008481a', '1', 'SecurityGroups', 'ed6c42ed-1189-2c26-f5e8-5900195d1db5', 'ADMINISTRADOR', '2019-01-18 04:06:35', 'detailview', 'cbc18trr3s46bk7ceiqisaih72', 1, 0),
(623, 'e46da711-9198-11f8-c0d2-5c41501a63e4', '1', 'ACLRoles', '101d0eec-099a-0b07-97cb-59d4d9c1f6b4', 'Usuario', '2019-01-18 04:07:22', 'detailview', 'cbc18trr3s46bk7ceiqisaih72', 1, 0),
(628, 'a5fb5c6a-1dc2-f239-20e5-5c41671b9492', '1', 'Users', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'Glenda Mercado', '2019-01-18 05:41:22', 'editview', 'cbc18trr3s46bk7ceiqisaih72', 1, 0),
(633, 'f288d3bb-a2a8-b1fa-d8ec-5c4b4aff8c73', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Users', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'OSCAR SANCHEZ RAMIREZ', '2019-01-25 17:41:20', 'detailview', 'ea9q2vpog6arqjovdqrl67gls7', 1, 0),
(641, '7a9c68f2-3efe-8b71-5b38-5c523d90026a', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Users', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'ANWAR BEISA', '2019-01-31 00:14:53', 'editview', 'ea9q2vpog6arqjovdqrl67gls7', 1, 0),
(643, 'ce6e6f52-0637-6bb3-86ec-5c5a11e1daf7', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'Users', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'ANWAR BEISA', '2019-02-05 22:43:58', 'editview', 'itj8hf8tdaag38qbing3cl3rt4', 1, 0),
(656, '175e232a-57dd-03d4-94da-5c5dfaa7824a', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'Accounts', 'ad19a97d-bc58-cdac-a78c-5bdfce8043f7', 'ANWAR BEISA', '2019-02-08 21:53:17', 'detailview', 'us79rtg79mt0utttq31g2ua2v0', 1, 0),
(664, 'dda3ba7f-be69-e59f-ce2e-5c5e0393b2cc', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'Users', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'Mercado, Glenda', '2019-02-08 22:31:02', 'editview', 'us79rtg79mt0utttq31g2ua2v0', 1, 0),
(666, '1ab3a1cf-0bb9-f12e-0d01-5c7715d26fc4', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'Accounts', 'd5b05fb9-319d-bc6c-09bc-5c3a7f2b4eca', 'BEISA\'S', '2019-02-27 22:53:53', 'detailview', 'elmjf4s76ttrd8vo0r5qreg5n6', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('3ef60917-c718-9f8a-f62c-582e69c8bb3a', 'upload/upgrades/module/KReporter_Core_4_1_0.zip', '2760bda870f8f9b883d64f77e194d1d9', 'module', 'installed', 'v4.1.0', 'KReporter Core', 'Reporting Module for SugarCRM', 'KReporterCore', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6NDp7aTowO3M6MjoiQ0UiO2k6MTtzOjQ6IkNPUlAiO2k6MjtzOjM6IlBSTyI7aTozO3M6MzoiRU5UIjt9czoyNToiYWNjZXB0YWJsZV9zdWdhcl92ZXJzaW9ucyI7YToyOntpOjA7czo1OiI2LiouKiI7aToxO3M6NToiNy4qLioiO31zOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czoxMzoicmVtb3ZlX3RhYmxlcyI7czo2OiJwcm9tcHQiO3M6NDoibmFtZSI7czoxNDoiS1JlcG9ydGVyIENvcmUiO3M6NjoiYXV0aG9yIjtzOjE3OiJhYWMgc2VydmljZXMgay5zLiI7czoxMToiZGVzY3JpcHRpb24iO3M6Mjk6IlJlcG9ydGluZyBNb2R1bGUgZm9yIFN1Z2FyQ1JNIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxNi8xMS8wMyI7czo3OiJ2ZXJzaW9uIjtzOjY6InY0LjEuMCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjQ6e3M6MjoiaWQiO3M6MTM6IktSZXBvcnRlckNvcmUiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6ODoiS1JlcG9ydHMiO3M6NToiY2xhc3MiO3M6NzoiS1JlcG9ydCI7czo0OiJwYXRoIjtzOjI4OiJtb2R1bGVzL0tSZXBvcnRzL0tSZXBvcnQucGhwIjtzOjM6InRhYiI7YjoxO319czo4OiJsYW5ndWFnZSI7YToxOntpOjA7YTozOntzOjQ6ImZyb20iO3M6Mzg6IjxiYXNlcGF0aD4vbGFuZ3VhZ2UvZW5fdXMuS1JlcG9ydHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319czo0OiJjb3B5IjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoyNzoiPGJhc2VwYXRoPi9tb2R1bGVzL0tSZXBvcnRzIjtzOjI6InRvIjtzOjE2OiJtb2R1bGVzL0tSZXBvcnRzIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjM5OiI8YmFzZXBhdGg+L2luY2x1ZGUvS1JlcG9ydHMuQWpheEJhbi5waHAiO3M6MjoidG8iO3M6NjE6ImN1c3RvbS9FeHRlbnNpb24vYXBwbGljYXRpb24vRXh0L0luY2x1ZGUvS1JlcG9ydHMuQWpheEJhbi5waHAiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2016-11-18 02:35:37', 1),
('6a6f5486-fe4f-c374-c339-582e6d763ccb', 'upload/upgrades/module/KReporter_Base_4_1_0.zip', '1884ad921504be7b7064de4927c77771', 'module', 'installed', 'v4.1.0', 'KReporter Base Package', 'K Base Enhancement package', 'kbasepackage', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6MjQ6ImFjY2VwdGFibGVfc3VnYXJfZmxhdm9ycyI7YTo1OntpOjA7czoyOiJDRSI7aToxO3M6MzoiUFJPIjtpOjI7czo0OiJDT1JQIjtpOjM7czozOiJFTlQiO2k6NDtzOjM6IlVMVCI7fXM6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6Mjp7aTowO3M6NToiNi4qLioiO2k6MTtzOjU6IjcuKi4qIjt9czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czoyMjoiS1JlcG9ydGVyIEJhc2UgUGFja2FnZSI7czo2OiJhdXRob3IiO3M6MTc6ImFhYyBzZXJ2aWNlcyBrLnMuIjtzOjExOiJkZXNjcmlwdGlvbiI7czoyNjoiSyBCYXNlIEVuaGFuY2VtZW50IHBhY2thZ2UiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDE2LzExLzAzIjtzOjc6InZlcnNpb24iO3M6NjoidjQuMS4wIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mjp7czoyOiJpZCI7czoxMjoia2Jhc2VwYWNrYWdlIjtzOjQ6ImNvcHkiO2E6Mzp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjE5OiI8YmFzZXBhdGg+L2N1c3RvbS9rIjtzOjI6InRvIjtzOjg6ImN1c3RvbS9rIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjE2OiI8YmFzZXBhdGg+L0tSRVNUIjtzOjI6InRvIjtzOjE2OiJLUkVTVC9leHRlbnNpb25zIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjE3OiI8YmFzZXBhdGg+L3ZlbmRvciI7czoyOiJ0byI7czo2OiJ2ZW5kb3IiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2016-11-18 02:53:26', 1),
('c3466d22-35a9-b201-ecd7-582e0f7ab453', 'upload/upgrades/langpack/SuiteCRM_es-ES.zip', 'a3891d59c0e37ba95fd68c7a60f464cf', 'langpack', 'installed', '7.7.8.1', 'Spanish (Spain)', 'Traducción: www.crowdin.com/project/suitecrmtranslations', 'es_ES', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czoxNToiU3BhbmlzaCAoU3BhaW4pIjtzOjExOiJkZXNjcmlwdGlvbiI7czo1NzoiVHJhZHVjY2nDs246IHd3dy5jcm93ZGluLmNvbS9wcm9qZWN0L3N1aXRlY3JtdHJhbnNsYXRpb25zIjtzOjQ6InR5cGUiO3M6ODoibGFuZ3BhY2siO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO3M6MzoiWWVzIjtzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjA6e31zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO31zOjY6ImF1dGhvciI7czoxODoiU3VpdGVDUk0gQ29tbXVuaXR5IjtzOjc6InZlcnNpb24iO3M6NzoiNy43LjguMSI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTA6IjIwMTYtMTEtMTYiO31zOjExOiJpbnN0YWxsZGVmcyI7YTozOntzOjI6ImlkIjtzOjU6ImVzX0VTIjtzOjk6ImltYWdlX2RpciI7czoxNzoiPGJhc2VwYXRoPi9pbWFnZXMiO3M6NDoiY29weSI7YTozOntpOjA7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5jbHVkZSI7czoyOiJ0byI7czo3OiJpbmNsdWRlIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L21vZHVsZXMiO3M6MjoidG8iO3M6NzoibW9kdWxlcyI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9pbnN0YWxsIjtzOjI6InRvIjtzOjc6Imluc3RhbGwiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2016-11-17 20:15:18', 1),
('fd090972-0f88-eed3-571f-582e6f0ba8cc', 'upload/upgrades/module/krest_core_2_5_2.zip', '6a13b7e197fac6f902748c3b9822317f', 'module', 'installed', 'v2.5.2', 'KREST Core', 'REST Interface for SugarCRM', '', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6NTp7aTowO3M6MjoiQ0UiO2k6MTtzOjQ6IkNPUlAiO2k6MjtzOjM6IlBSTyI7aTozO3M6MzoiVUxUIjtpOjQ7czozOiJFTlQiO31zOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjI6e2k6MDtzOjU6IjYuKi4qIjtpOjE7czo1OiI3LiouKiI7fXM6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7czo0OiJuYW1lIjtzOjEwOiJLUkVTVCBDb3JlIjtzOjY6ImF1dGhvciI7czoxNzoiYWFjIHNlcnZpY2VzIGsucy4iO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjI3OiJSRVNUIEludGVyZmFjZSBmb3IgU3VnYXJDUk0iO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDE2LzExLzE1IjtzOjc6InZlcnNpb24iO3M6NjoidjIuNS4yIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjt9czoxMToiaW5zdGFsbGRlZnMiO2E6MTp7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoxNjoiPGJhc2VwYXRoPi9LUkVTVCI7czoyOiJ0byI7czo1OiJLUkVTVCI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2016-11-18 03:02:42', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `photo`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`) VALUES
('1', 'admin', '$1$YC4.BI/.$qVKJIctE7YZo/3GQqVazh.', 0, NULL, NULL, 1, 'SUPER', 'USER', 1, 0, 1, NULL, '2016-11-17 12:39:24', '2018-10-16 19:35:48', '1', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0),
('6fb285d6-48db-42b6-79d6-5c3a917a604a', 'OSCAR', '$1$OwP9uHFy$EDtp/zyxm4Q2lnV5P6CgV0', 0, '2019-01-14 04:50:00', NULL, 1, 'OSCAR', 'SANCHEZ RAMIREZ', 0, 0, 1, 'Se encarga de organizar las Operaciones y logisticas delos travajos.', '2019-01-13 01:17:06', '2019-01-14 22:28:53', '6fb285d6-48db-42b6-79d6-5c3a917a604a', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Operation Manager', 'STDF0167.JPG', 'Operaciones', NULL, '3606093704', '5037092944', NULL, NULL, 'Active', '620 Martin Way', 'VANCOUVER', 'WA', NULL, '98661', 0, 0, 1, 'Active', 'OSCAR  SANCHEZ RAMIREZ', 'MSN', '98ae7237-30e0-7e2f-d263-5c153d029c20', 0),
('80343642-e355-1c38-662f-59121e97591e', 'jarevalo', '$1$thbiMOVC$pmPnXfI/qgF5YLwTn3yFm/', 0, '2017-05-09 19:54:00', NULL, 1, 'Javier', 'Arevalo', 1, 0, 1, NULL, '2017-05-09 19:54:49', '2018-10-16 19:15:29', '1', '8aff5677-c52f-7d82-3237-5911fcc9c488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Inactive', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 'Terminated', NULL, NULL, '', 0),
('98ae7237-30e0-7e2f-d263-5c153d029c20', 'anwar', '$1$GyRTYenn$xUFPA4.K/JSgMgwcHwneW1', 0, '2019-01-12 20:39:23', NULL, 1, 'ANWAR', 'BEISA', 1, 0, 1, NULL, '2018-12-15 17:43:13', '2019-01-12 20:39:23', '1', '1', 'CEO', 'anwar2016.jpg', 'GENERAL MANAGER', NULL, NULL, NULL, NULL, NULL, 'Active', NULL, '791 SE 202nd Ave. Portland Or', 'OREGON', 'USA', '97233', 0, 0, 1, 'Active', NULL, NULL, '', 0),
('d2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'Glenda', '4f9e4e5b0175075f22e0cc6343c919fa', 0, '2019-01-14 00:00:00', NULL, 1, 'Glenda', 'Mercado', 0, 0, 1, 'Front desk expert, creates all estimates, schedule all sales app, follow up, organize and keep office in shape.', '2019-01-14 15:47:50', '2019-02-05 23:04:30', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'Office specialist', NULL, 'Administrative', NULL, NULL, '5036766702', NULL, NULL, 'Active', '791 SE 202nd Ave.', 'Portland', 'OR', 'United States', '97233', 0, 0, 1, 'Active', 'Anwar Beisa', NULL, '98ae7237-30e0-7e2f-d263-5c153d029c20', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('10f70e94-6a4d-176f-4369-5911f57eb2dd', 'global', 0, '2017-05-09 16:59:32', '2018-10-16 19:17:36', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YTozODp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjg6InRpbWV6b25lIjtzOjE1OiJBbWVyaWNhL0NhcmFjYXMiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6Ii4iO3M6NzoiZGVjX3NlcCI7czoxOiIsIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImUzZjIwN2IxLTNkZjEtMzAxMi1lZTU5LTU5MTFmNTA5MWYyOCI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7czoxMDoiRW1wbG95ZWVzUSI7YToyODp7czo2OiJtb2R1bGUiO3M6OToiRW1wbG95ZWVzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjE2OiJzdWdhcl91c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czozMjoiMTg0NDBhMWY1NWJhNDNiOWIxZDlhZGFiM2E4YjcxYTAiO3M6MjY6ImRxYnB1a3NmbWphdDEyNnFkb2NidXBuZzk1IjtzOjMyOiI1ODQ2NzQyZjgwMjZiMmY5NGY2N2NiM2Y0N2ExZTk4NCI7czoyNjoicm5oaHFzdWs5ODRnbGtqNGExZWZla3RpNzQiO3M6MzI6IjRiMzI1NDU0ZThlN2FkNjY3MWFhMGMwNWY3YzkyMzhkIjtzOjU6ImVuLUdCIjtzOjMyOiI1ODRlMDE4OTk3MGZlZTAzOGY1ZmIyNmZhMmY5YzYxYiI7czoyNjoiNjJnbTE4M3A0Y2MxOWV1NmtrZnNkcGFkbDQiO3M6MzI6IjE0MTE5Y2ZjZmQ2Y2Y2M2RhODkyNjQxZTM5NDJhZGU3IjtzOjI2OiIxajQwcjhwcG50N2JnanIwdGpxdWlkZDR1MiI7czo4OiJ0aW1lem9uZSI7czoyMToiQW1lcmljYS9TYW50b19Eb21pbmdvIjtzOjMyOiJhZmMwYTA4ZWM1NGM1NzYyOTdhNmM3ZDA2ZWEzYjU0MCI7czoyNjoiYmcxNzQ1cHRzdWdpYmk5NmZxNW5lanZsczUiO3M6MzI6ImNiMTc2YzNiYTdhZTkxNjZhMzcyMDAxZjJkOTU1YjYwIjtzOjI2OiJucWo1bnFwazZlbmVjNDlmYWU4ZHY2bG81NCI7czozMjoiMzBjM2M3Zjc0MmY5NmY0NmZkZDQxYjliNGJiMWY3ZjMiO3M6MjY6InN0amRjc2lrbDUxOWVhMTBuYjlhNWYxOTAwIjtzOjMyOiI4OTA4OGU2NTMyMGRjMWMyNjc3NTI1NGRmMzQ4YzBhMyI7czoyNjoic3AxcGo5N21iNzFsNGkxcjFlNDk3NDIzZzAiO3M6NjoiX191dG1hIjtzOjU1OiIxMDU5MjU4OTQuMTc2NzM4MTg3Ny4xNDk0NjAxNDcyLjE0OTQ2MDE0NzIuMTQ5NTQ4MzI4Ni4yIjtzOjY6Il9fdXRtYyI7czo5OiIxMDU5MjU4OTQiO3M6NjoiX191dG16IjtzOjcwOiIxMDU5MjU4OTQuMTQ5NDYwMTQ3Mi4xLjEudXRtY3NyPShkaXJlY3QpfHV0bWNjbj0oZGlyZWN0KXx1dG1jbWQ9KG5vbmUpIjtzOjMyOiJlYTFhODFmMTM2ZGE0ZjIwNWY4ZDk2NjMyZWRlZTBlOCI7czo1OiJlcy1FUyI7czozMjoiZGM4M2EyYjc4MzYzYmZiNDEwNjA5YmFlZjRhOTA5M2UiO3M6MjY6Imxia3FzM2FibTQ1aWNlbGNycWdwY2o5dHIxIjtzOjMyOiJlYTNiNTcyNjM0MzE4ODc3YjY4YTMxZWFiYzZjMDUwMCI7czo1OiJlcy1FUyI7czozMjoiYTUwMDc5YWY2MzViMjZhMWZhZjY5NGQ2MmJhZTMxZDUiO3M6MjY6Ijgxc2U3Z3ZjM242Y2ltcnNrMjA0ZzA3MzE2IjtzOjMyOiIyOTI1OTRiMTI3ZmRlMGYwMzk0ODMyYWRkM2M5Yzc2ZSI7czoyNjoib2Y4YTc1aHFpYW5nODJsbzdibjNsYWVldDUiO3M6MzI6ImMxMmQ4Y2MyNjI3MjkzNmI3MWVhYTg0YzA2ZTNhNWMyIjtzOjI2OiJpYm1mN2U4cXBoZ21kN3NwdWQxYWc4cmhiNyI7czoxNzoiY2tfbG9naW5fdGhlbWVfMjAiO3M6NjoiU3VpdGVQIjtzOjMyOiI0NmI4MjU5MDU4YzBjNDI0ZGRjZGI0OTRjMWExZjI2MyI7czoyNjoiOGc5MnFlbXI3aHM3N2RwbXFrbTU1bHVkdDIiO3M6OToiUEhQU0VTU0lEIjtzOjI2OiJsbjk5NXBsOG83bWY5YWoxYWY3OWM4MmhkNyI7czoxNDoiY2tfbG9naW5faWRfMjAiO3M6MzY6IjM5MjAwM2E5LWI5YjAtMDVjZi0xYzE2LTU5MTFmNTE0M2U2OSI7czoyMDoiY2tfbG9naW5fbGFuZ3VhZ2VfMjAiO3M6NToiZXNfRVMiO31zOjY6IkNhc2VzUSI7YToyNjp7czo2OiJtb2R1bGUiO3M6NToiQ2FzZXMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7czoyMDoiY2FzZV9udW1iZXJfYWR2YW5jZWQiO3M6MDoiIjtzOjEzOiJuYW1lX2FkdmFuY2VkIjtzOjA6IiI7czoyMToiYWNjb3VudF9uYW1lX2FkdmFuY2VkIjtzOjA6IiI7czoyNToiYXNzaWduZWRfdXNlcl9pZF9hZHZhbmNlZCI7YToxOntpOjA7czozNjoiMzkyMDAzYTktYjliMC0wNWNmLTFjMTYtNTkxMWY1MTQzZTY5Ijt9czo5OiJzaG93U1NESVYiO3M6Mjoibm8iO3M6MTc6InNhdmVkX3NlYXJjaF9uYW1lIjtzOjA6IiI7czoxMzoic2VhcmNoX21vZHVsZSI7czowOiIiO3M6MTk6InNhdmVkX3NlYXJjaF9hY3Rpb24iO3M6MDoiIjtzOjE0OiJkaXNwbGF5Q29sdW1ucyI7czo3NzoiQ0FTRV9OVU1CRVJ8TkFNRXxBQ0NPVU5UX05BTUV8UFJJT1JJVFl8U1RBVFVTfEFTU0lHTkVEX1VTRVJfTkFNRXxEQVRFX0VOVEVSRUQiO3M6ODoiaGlkZVRhYnMiO3M6MDoiIjtzOjc6Im9yZGVyQnkiO3M6MTE6IkNBU0VfTlVNQkVSIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO3M6NjoiYnV0dG9uIjtzOjY6IkJ1c2NhciI7czoxNjoic3VnYXJfdXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MzI6IjRiMzI1NDU0ZThlN2FkNjY3MWFhMGMwNWY3YzkyMzhkIjtzOjU6ImVzLUVTIjtzOjE0OiJja19sb2dpbl9pZF8yMCI7czozNjoiMzkyMDAzYTktYjliMC0wNWNmLTFjMTYtNTkxMWY1MTQzZTY5IjtzOjIwOiJja19sb2dpbl9sYW5ndWFnZV8yMCI7czo1OiJlc19FUyI7czoxNzoiY2tfbG9naW5fdGhlbWVfMjAiO3M6NjoiU3VpdGVQIjtzOjY6Il9fdXRtYSI7czo1NToiMTA1OTI1ODk0LjE1MTA5ODAxOTUuMTQ5NjY2ODEwMS4xNDk2NjY4MTAxLjE0OTc5NzYxMTQuMiI7czo2OiJfX3V0bXoiO3M6NzA6IjEwNTkyNTg5NC4xNDk2NjY4MTAxLjEuMS51dG1jc3I9KGRpcmVjdCl8dXRtY2NuPShkaXJlY3QpfHV0bWNtZD0obm9uZSkiO3M6OToic3N1cHBfdmlkIjtzOjQ4OiJueDZYRHFTNGNra1J6SVh0VzM3QWxVeFVsYUhYaE1IUmkyNTUxNzE4MjAwNjIwMTciO3M6OToiUEhQU0VTU0lEIjtzOjI2OiJlZzBnNXZscW1tZDk4MWtsaDB1bWdzM3JqMiI7fX0='),
('11fffd78-301a-c9d3-1591-594419d9263d', 'Home', 0, '2017-06-16 17:47:49', '2017-06-16 17:49:52', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjM6e3M6MzY6Ijc2YTJjYzFhLTc2ZjMtZWFmZS02M2MxLTU5NDQxOTczODM3YSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjJkNWU4ZTRjLTcyYmEtMDA3OC1kN2YyLTU5NDQxOTBmM2EyNiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYXNlc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhc2VzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYXNlcy9EYXNobGV0cy9NeUNhc2VzRGFzaGxldC9NeUNhc2VzRGFzaGxldC5waHAiO31zOjM2OiI1ZjlkMDI1YS1hYjUwLTFiZGMtYzNhZC01OTQ0MWEyMDAxNTgiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15VGFza3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJUYXNrcyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvVGFza3MvRGFzaGxldHMvTXlUYXNrc0Rhc2hsZXQvTXlUYXNrc0Rhc2hsZXQucGhwIjt9fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjI6e2k6MDtzOjM2OiIyZDVlOGU0Yy03MmJhLTAwNzgtZDdmMi01OTQ0MTkwZjNhMjYiO2k6MTtzOjM2OiI1ZjlkMDI1YS1hYjUwLTFiZGMtYzNhZC01OTQ0MWEyMDAxNTgiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6Ijc2YTJjYzFhLTc2ZjMtZWFmZS02M2MxLTU5NDQxOTczODM3YSI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('14e3039b-247f-089c-ec52-5944191d10cb', 'Home2_CALL', 0, '2017-06-16 17:47:49', '2017-06-16 17:47:49', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1501586b-d703-2759-976e-59c2b0c5567c', 'Home', 0, '2017-09-20 18:14:46', '2017-09-20 18:14:46', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImIxMjcyNzczLTczYjItODIyZi00OTNiLTU5YzJiMGVjNTM1ZCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImIxOTgyOTMzLTkyYWQtMzgxYy0zOGQwLTU5YzJiMDYyOWRjOCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImIyMWNmYzc2LWE0M2MtZjhmZC04ZjI1LTU5YzJiMGU4NDQxZiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImIyNzI5ZjhiLWYzZTUtZDYwNS05MDIyLTU5YzJiMDkxZTI0ZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYjJlMGU1NzAtODU1Yy05MDdlLTBhNjItNTljMmIwMDRiYjg1IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYjYyZDU1N2ItMWVjMS00ODA2LWQzY2EtNTljMmIwYjg5Yzk0IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJiMTk4MjkzMy05MmFkLTM4MWMtMzhkMC01OWMyYjA2MjlkYzgiO2k6MTtzOjM2OiJiMjFjZmM3Ni1hNDNjLWY4ZmQtOGYyNS01OWMyYjBlODQ0MWYiO2k6MjtzOjM2OiJiMjcyOWY4Yi1mM2U1LWQ2MDUtOTAyMi01OWMyYjA5MWUyNGQiO2k6MztzOjM2OiJiMmUwZTU3MC04NTVjLTkwN2UtMGE2Mi01OWMyYjAwNGJiODUiO2k6NDtzOjM2OiJiNjJkNTU3Yi0xZWMxLTQ4MDYtZDNjYS01OWMyYjBiODljOTQiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImIxMjcyNzczLTczYjItODIyZi00OTNiLTU5YzJiMGVjNTM1ZCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('150e79bd-61c0-ecf5-f753-5c153cad442d', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2018-12-15 17:41:57', '2018-12-15 17:41:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1516d1b0-db8a-1f59-cdeb-5c2100a0f28d', 'Users2_USER', 0, '2018-12-24 15:51:57', '2019-01-14 22:31:50', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo5OiJ1c2VyX25hbWUiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('1615cc0b-6f1a-306a-86f2-5944198468fe', 'Home2_MEETING', 0, '2017-06-16 17:47:49', '2017-06-16 17:47:49', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('168045ee-1fd6-e849-9628-5c153ca64228', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2018-12-15 17:41:57', '2018-12-15 17:41:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('16e5e7a1-bbc2-a471-81dd-5911fc167547', 'ETag', 0, '2017-05-09 17:29:32', '2017-05-09 17:29:32', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),
('174f509f-c191-e6c5-99ca-594419034f8b', 'Home2_OPPORTUNITY', 0, '2017-06-16 17:47:49', '2017-06-16 17:47:49', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('179a4535-dd70-cfd9-ae93-59c2b0b82125', 'Home2_CALL', 0, '2017-09-20 18:14:46', '2017-09-20 18:14:46', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('17cc1e38-3941-521b-3ac8-594d588d6b16', 'Home2_LEAD_8d3a4cd0-66af-8ccd-3336-594d5770f576', 0, '2017-06-23 18:04:08', '2017-06-23 18:04:08', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('17e11e05-5387-2140-bd88-5c153c1e82b0', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2018-12-15 17:41:57', '2018-12-15 17:41:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('18321cf8-e854-d255-9173-595a9a464729', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-07-03 19:28:43', '2017-07-03 19:28:43', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('186f5079-b83e-f395-e94a-59441931f8b7', 'Home2_ACCOUNT', 0, '2017-06-16 17:47:49', '2017-06-16 17:47:49', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('18c1e77c-0839-9514-1cf4-59c2b08a7962', 'Home2_MEETING', 0, '2017-09-20 18:14:46', '2017-09-20 18:14:46', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('19959c8c-407b-aca8-1473-5944195bb981', 'Home2_LEAD', 0, '2017-06-16 17:47:49', '2017-06-16 17:47:49', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('19e56c99-50ab-0794-9800-59c2b077cbe8', 'Home2_OPPORTUNITY', 0, '2017-09-20 18:14:46', '2017-09-20 18:14:46', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1a2107c4-e4ba-3e7a-d596-5c154a9a60f8', 'Leads2_LEAD', 0, '2018-12-15 18:38:02', '2018-12-15 18:38:02', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1a3467a4-eb8c-bb91-2768-596d37b3a89a', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-07-17 22:17:28', '2017-07-17 22:17:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1a5007b3-237e-0b4e-af9a-59a971c9ceb4', 'Home2_AOK_KNOWLEDGEBASE_25bd6881-94d2-1c6e-baf9-59', 0, '2017-09-01 14:40:44', '2017-09-01 14:40:44', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1ac9541e-367b-1a81-4a96-594419f21ee0', 'Home2_SUGARFEED', 0, '2017-06-16 17:47:49', '2017-06-16 17:47:49', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1b1d1c95-87fc-975f-1dd1-59c2b0b6bb33', 'Home2_ACCOUNT', 0, '2017-09-20 18:14:46', '2017-09-20 18:14:46', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1b89f535-2dbe-172f-8eed-591220888b7c', 'Home2_TASK_1413485d-2da8-b47f-76a8-591220c41a1d', 0, '2017-05-09 20:01:34', '2017-05-09 20:01:34', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1b970132-aae0-3c72-cbb8-59121e7e7599', 'Home2_OPPORTUNITY', 0, '2017-05-09 19:55:25', '2017-05-09 19:55:25', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1c336686-95ed-0208-fff9-59c2b0f29e9f', 'Home2_LEAD', 0, '2017-09-20 18:14:46', '2017-09-20 18:14:46', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1c747d2c-f7f8-b6c5-2fc3-59e288a78961', 'AOS_Quotes2_AOS_QUOTES', 0, '2017-10-14 21:56:24', '2017-10-14 21:56:24', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1c8eb8eb-901d-97ff-b759-594d540b40c0', 'ACLRoles2_ACLROLE', 0, '2017-06-23 17:49:49', '2017-06-23 17:49:49', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1d51ec95-575b-b427-55db-59c2b0181c2e', 'Home2_SUGARFEED', 0, '2017-09-20 18:14:46', '2017-09-20 18:14:46', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1ddcf09e-8ca1-22a4-1a5a-5c3a4fd7f002', 'Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_834416ec-4323-', 0, '2019-01-12 20:36:17', '2019-01-12 20:36:17', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1e1b0c75-ca0f-795d-d933-5c154884779f', 'Home2_LEAD_c3e6df55-2afe-5934-7e7b-5c154864ae6b', 0, '2018-12-15 18:33:30', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('1e9e4f97-a668-3712-fef8-59120767b4c4', 'Users2_USER', 0, '2017-05-09 18:16:38', '2017-05-09 18:16:38', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('21195c1b-c14e-454d-68e7-5c1548005db2', 'Home', 0, '2018-12-15 18:33:22', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImMwMzZjYmNjLTYzNzQtNGJmOC0xYjdiLTVjMTU0ODVkMTMxZCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImMwZjQ2NDI1LWU0NGItNmQwMC0wNjNhLTVjMTU0OGRlOGUwYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImMxYzUyNDBlLTQ3NGYtNzg2YS04MGRlLTVjMTU0ODIxMjczMiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImMyNWQ4NmM0LWIwMWEtMjkwNC0wNDY3LTVjMTU0ODhjMTgzZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYzMxMzY3ODAtOGM4OS1iNjg5LTc2ZTMtNWMxNTQ4MWI3MzM1IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYzNlNmRmNTUtMmFmZS01OTM0LTdlN2ItNWMxNTQ4NjRhZTZiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJjMGY0NjQyNS1lNDRiLTZkMDAtMDYzYS01YzE1NDhkZThlMGMiO2k6MTtzOjM2OiJjMWM1MjQwZS00NzRmLTc4NmEtODBkZS01YzE1NDgyMTI3MzIiO2k6MjtzOjM2OiJjMjVkODZjNC1iMDFhLTI5MDQtMDQ2Ny01YzE1NDg4YzE4M2UiO2k6MztzOjM2OiJjMzEzNjc4MC04Yzg5LWI2ODktNzZlMy01YzE1NDgxYjczMzUiO2k6NDtzOjM2OiJjM2U2ZGY1NS0yYWZlLTU5MzQtN2U3Yi01YzE1NDg2NGFlNmIiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImMwMzZjYmNjLTYzNzQtNGJmOC0xYjdiLTVjMTU0ODVkMTMxZCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('219a0919-d7ee-39a7-526e-59f87d902d34', 'Home2_AOW_WORKFLOW_86b3108d-2d67-ba23-4aa4-59e2874', 0, '2017-10-31 13:39:59', '2017-10-31 13:39:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('21c5137e-db96-27ac-6496-5c2100b2f1b9', 'Dashboard', 0, '2018-12-24 15:51:05', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YTowOnt9'),
('22020a57-4386-c850-a455-594c1ef605de', 'Accounts2_ACCOUNT', 0, '2017-06-22 19:45:58', '2017-06-22 19:45:58', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('22780b3c-001b-865e-30b0-59e8cd26dd75', 'Home2_AOW_WORKFLOW_86b3108d-2d67-ba23-4aa4-59e2874', 0, '2017-10-19 16:07:33', '2017-10-19 16:07:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('22abb430-6f86-831b-49c2-59121eed487f', 'global', 0, '2017-05-09 19:53:45', '2018-10-16 19:15:44', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YTozNjp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjg6InRpbWV6b25lIjtzOjE1OiJBbWVyaWNhL0NhcmFjYXMiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6Ii4iO3M6NzoiZGVjX3NlcCI7czoxOiIsIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjIyOGZmNTVhLTdmOWItMGFlZi0zOWRkLTU5MTIxZTliY2YwZCI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7fQ=='),
('2306123c-2a0f-d472-d464-5c3a80a75df7', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2019-01-13 00:02:18', '2019-01-13 00:02:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('232c9d9b-d6e8-062f-04d6-594d5feb710e', 'Contacts2_CONTACT', 0, '2017-06-23 18:34:12', '2017-06-23 18:34:12', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('234889b2-d473-cf4e-045a-5c1549a18f4b', 'Contacts2_CONTACT', 0, '2018-12-15 18:37:24', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2448eb71-ef53-e366-9080-5c15486eb1f4', 'Home2_CALL', 0, '2018-12-15 18:33:22', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('248b412a-7051-76ae-5a0d-59e8cdfd856c', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-10-19 16:07:33', '2017-10-19 16:07:33', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('25512cc4-c0b0-9293-cbb9-59c27c6e6677', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-09-20 14:33:41', '2017-09-20 14:33:41', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('257fe396-1de5-48b9-79e6-5a1966bae48b', 'Home2_PROJECT', 0, '2017-11-25 12:47:05', '2017-11-25 12:47:05', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('258773ff-8a68-42c9-a193-5c15489399cf', 'Home2_MEETING', 0, '2018-12-15 18:33:22', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('25cafc5d-5578-a661-3927-5911faa2a8bd', 'ETag', 0, '2017-05-09 17:22:07', '2017-05-09 17:22:07', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),
('260d4f22-9dd1-2ccd-d0ef-5c154ac27013', 'Cases2_CASE', 0, '2018-12-15 18:38:20', '2018-12-15 18:38:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('266b8692-8e49-6553-61ea-5c3a80b53e3b', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2019-01-13 00:02:18', '2019-01-13 00:02:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('26c68a01-ed10-36df-ddf8-5c1548e887f5', 'Home2_OPPORTUNITY', 0, '2018-12-15 18:33:22', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('272d0e9c-66d5-391e-de65-595aac533b60', 'Tasks2_TASK', 0, '2017-07-03 20:45:05', '2017-07-03 20:45:05', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('28088e33-43b8-993f-6904-5c1548b85565', 'Home2_ACCOUNT', 0, '2018-12-15 18:33:22', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('280f0616-1239-9b9d-7783-5c3a80988bb3', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2019-01-13 00:02:18', '2019-01-13 00:02:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2987a2fc-6a14-99e6-488f-5c15482603b7', 'Home2_LEAD', 0, '2018-12-15 18:33:22', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2a7affec-ce53-b24c-e824-5952604fbb63', 'global', 0, '2017-06-27 13:40:15', '2018-10-16 19:13:36', '10ccb807-5647-a0cc-a0c8-5952609bf6b7', 'YTozNTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czo4OiJ0aW1lem9uZSI7czoxNToiQW1lcmljYS9DYXJhY2FzIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIuIjtzOjc6ImRlY19zZXAiO3M6MToiLCI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjM2OiIyN2M1MzRiYi05NjAzLWNlZDUtODg3OC01OTUyNjBhZjY3ZmQiO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),
('2aa887dd-ef06-5382-30b5-5c1548e466c3', 'Home2_SUGARFEED', 0, '2018-12-15 18:33:22', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2deb4f23-c5d5-2757-7817-5bc953a344ed', 'Emails', 0, '2018-10-19 03:46:47', '2018-10-19 03:46:47', '1', 'YToxOntzOjExOiJmb2N1c0ZvbGRlciI7czo2MjoiYToyOntzOjQ6ImllSWQiO3M6OToidW5kZWZpbmVkIjtzOjY6ImZvbGRlciI7czo5OiJ1bmRlZmluZWQiO30iO30='),
('2e883f97-2355-2443-7882-5c21004d4f60', 'Emails', 0, '2018-12-24 15:51:05', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YTowOnt9'),
('2eb3be02-5bee-9a66-413c-5b3ed6a84977', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2018-07-06 02:41:32', '2018-07-06 02:41:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2f780c75-9df6-faa2-dcd7-5a19669ede32', 'Home2_PROJECTTASK', 0, '2017-11-25 12:47:14', '2017-11-25 12:47:14', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2f8d0acd-fbf3-de9f-9f57-59121e382eea', 'Home2_ACCOUNT', 0, '2017-05-09 19:55:25', '2017-05-09 19:55:25', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('30125b0e-e698-c849-1c19-5bb223a9ceea', 'Home2_JJWG_AREAS', 0, '2018-10-01 13:39:50', '2018-10-01 13:39:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3135d493-2847-a37a-f82d-5bb22255c526', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2018-10-01 13:35:46', '2018-10-01 13:35:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3219b69f-b05e-d91b-18d7-5bb2225e8b09', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2018-10-01 13:35:46', '2018-10-01 13:35:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3260340e-1d15-7b1c-3b98-594144abb5e2', 'Contacts2_CONTACT', 0, '2017-06-14 14:12:37', '2017-06-14 14:12:37', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('32966684-6339-3cfa-261b-5c2100f93dff', 'Users', 0, '2018-12-24 15:51:05', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YTowOnt9'),
('32c07034-48e3-2c84-111b-594419b5096c', 'Home2_CASE_2d5e8e4c-72ba-0078-d7f2-5944190f3a26', 0, '2017-06-16 17:48:37', '2017-06-16 17:48:37', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('32e90e3f-76e8-86b3-409b-5c153e3edde7', 'ETag', 0, '2018-12-15 17:47:28', '2019-01-12 20:39:23', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Njt9'),
('3384f0f0-ae8b-1934-d0df-5911fca5625d', 'Home2_CASE_4bb3b516-180e-ed51-037e-5911fc8128e3', 0, '2017-05-09 17:31:00', '2017-05-09 17:31:00', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('33ae6a9e-f23d-c100-24f3-5c153d88f690', 'global', 0, '2018-12-15 17:46:13', '2019-01-14 15:57:58', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YTozNzp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjQ6IjE4MDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6NDoiMzYwMCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTQ6IkFtZXJpY2EvRGVudmVyIjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIuIjtzOjc6ImRlY19zZXAiO3M6MToiLCI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjA6IiI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7czoxMDoiRW1wbG95ZWVzUSI7YTozOntzOjY6Im1vZHVsZSI7czo5OiJFbXBsb3llZXMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO319'),
('36125e31-88e8-15a3-3169-5911fcac8280', 'Home2_CASE_3576e820-d4ba-e246-08b8-5911fcb2c55d', 0, '2017-05-09 17:31:00', '2017-05-09 17:31:00', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('36dc6db3-0bed-3e2f-d747-59441a7d5db1', 'Users2_USER', 0, '2017-06-16 17:52:18', '2017-06-16 17:52:18', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3747ca9f-a7e3-01bb-028b-5911fc8ee2ef', 'Home2_CASE_d9150699-0033-c18e-e429-5911fca476da', 0, '2017-05-09 17:31:00', '2017-05-09 17:31:00', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3a022cc7-cae2-f744-5e76-5a1966d71bdd', 'Project2_PROJECT', 0, '2017-11-25 12:49:22', '2017-11-25 12:49:22', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3ae90c35-31c5-9f18-3357-59121e2187f9', 'Home2_LEAD_daa21a1c-3c00-4d05-ceab-59121eecd899', 0, '2017-05-09 19:55:30', '2017-05-09 19:55:30', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3aec8e6f-da5e-635a-e283-595b97504bfb', 'Notes2_NOTE', 0, '2017-07-04 13:27:06', '2017-07-04 13:27:06', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3c04c942-b4cd-a12e-62dc-5955132b7d3b', 'Home2_LEAD_b6ac2393-9506-d3be-6e87-594d57efb8ea', 0, '2017-06-29 14:51:26', '2017-06-29 14:51:26', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3c9090c8-394f-b163-84bb-595aada3ef77', 'Home2_AOK_KNOWLEDGEBASE_25bd6881-94d2-1c6e-baf9-59', 0, '2017-07-03 20:48:51', '2017-07-03 20:48:51', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3d094f09-c94b-f4e8-9eb1-595b8b5b8af1', 'Contacts2_CONTACT', 0, '2017-07-04 12:37:12', '2017-07-04 12:37:12', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3d22058e-70e0-d643-e97d-59566e5c8d58', 'Tasks2_TASK', 0, '2017-06-30 15:28:51', '2017-06-30 15:28:51', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3e9180fd-00d2-f506-fdd4-594d5856a2db', 'Cases2_CASE', 0, '2017-06-23 18:06:18', '2017-06-23 18:06:18', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3ed9e23d-998f-6b03-68ac-595aad96729b', 'Meetings2_MEETING', 0, '2017-07-03 20:47:34', '2017-07-03 20:47:34', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('3f8e24cb-9fd0-21b9-b27f-59f87d9bf7cd', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-10-31 13:39:59', '2017-10-31 13:39:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('400aa104-bde9-89b5-2b2f-5c4b4d9d8d99', 'Home2_LEAD_28469aeb-e41e-47d7-109f-5c4b4da999e9', 0, '2019-01-25 17:55:21', '2019-01-25 17:55:21', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('414b9cc7-cdf9-844f-8857-595a9af184b9', 'Home2_AOS_CONTRACTS', 0, '2017-07-03 19:28:43', '2017-07-03 19:28:43', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4218249e-dbfc-390f-fcf2-5c7715ac6728', 'Contacts2_CONTACT', 0, '2019-02-27 22:56:18', '2019-02-27 22:56:18', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('42f55133-00c6-c1db-0dba-59f881107160', 'Project2_PROJECT', 0, '2017-10-31 13:56:58', '2017-10-31 13:56:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('43ac569a-fcd3-0d90-1c00-5911fb8495ab', 'Home2_CASE', 0, '2017-05-09 17:24:15', '2017-05-09 17:24:15', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('44480b9b-960e-ac3d-08b1-59121e619b73', 'Home2_LEAD', 0, '2017-05-09 19:55:25', '2017-05-09 19:55:25', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('444a93de-40b6-20d9-8233-59f6776e7663', 'Home2_AOW_WORKFLOW_86b3108d-2d67-ba23-4aa4-59e2874', 0, '2017-10-30 00:51:20', '2017-10-30 00:51:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('44f7a64e-0cf1-fb38-2305-59121dfe783b', 'Accounts2_ACCOUNT', 0, '2017-05-09 19:49:39', '2017-05-09 19:49:39', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4575af0c-b57a-2add-960d-5c3c1121cadd', 'global', 0, '2019-01-14 04:35:22', '2019-01-14 22:23:57', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'YTozNjp7czo4OiJ0aW1lem9uZSI7czoxNDoiQW1lcmljYS9EZW52ZXIiO3M6MTI6Im1haWxtZXJnZV9vbiI7czoyOiJvbiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czowOiIiO3M6MTA6InVzZXJfdGhlbWUiO3M6NjoiU3VpdGVQIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7aToxODAwO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO2k6MzYwMDtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyOiJ1dCI7czoxOiIxIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLiI7czo3OiJkZWNfc2VwIjtzOjE6IiwiO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6ImQvbS9ZIjtzOjU6InRpbWVmIjtzOjQ6Img6aWEiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czowOiIiO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjQ6IlRvZG8iO30='),
('463f2b16-d2cc-e29c-fd58-595b9872a7bf', 'Home2_AOK_KNOWLEDGEBASE_25bd6881-94d2-1c6e-baf9-59', 0, '2017-07-04 13:30:58', '2017-07-04 13:30:58', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('465a60a3-ad47-ebf4-cc60-59414450e92b', 'Tasks2_TASK', 0, '2017-06-14 14:13:55', '2017-06-14 14:13:55', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('46ff81d9-a048-0199-fa86-59f677738d0e', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-10-30 00:51:20', '2017-10-30 00:51:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('471eb0e7-d73f-6d81-7d04-5a196441e449', 'ProjectTask2_PROJECTTASK', 0, '2017-11-25 12:39:16', '2017-11-25 12:39:16', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('48f706b8-21b4-2e45-6764-5bb22346a089', 'Home2_AOK_KNOWLEDGE_BASE_CATEGORIES', 0, '2018-10-01 13:41:02', '2018-10-01 13:41:02', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('495e815d-5a40-099d-4598-593172cd6450', 'Cases2_CASE', 0, '2017-06-02 14:13:36', '2017-08-17 20:45:51', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4a798c49-fcc7-074b-5aef-5a196075f237', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-11-25 12:20:41', '2017-11-25 12:20:41', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4bc056f1-e287-d774-64e2-593014706fc6', 'Accounts2_ACCOUNT', 0, '2017-06-01 13:19:20', '2017-06-01 13:19:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4bf34b58-d774-eb6f-1f7d-595b980873d7', 'Home2_AOW_PROCESSED_e57487df-c4a0-da01-23b7-595aad', 0, '2017-07-04 13:30:58', '2017-07-04 13:30:58', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('4ffa717d-8d60-2e51-aade-5bc951861f20', 'Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_834416ec-4323-', 0, '2018-10-19 03:37:13', '2018-10-19 03:37:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('502a0ea6-b0e5-3519-ea6c-5900086ac55d', 'ETag', 0, '2017-04-26 02:41:59', '2018-10-16 19:35:48', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Njt9'),
('5188a2f9-392f-b295-cbd9-594d5c084358', 'global', 0, '2017-06-23 18:23:21', '2018-10-16 19:14:13', '4aa108b5-0830-49bf-b0e0-594d5c3aec2f', 'YTozNTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czo4OiJ0aW1lem9uZSI7czoxNToiQW1lcmljYS9DYXJhY2FzIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIuIjtzOjc6ImRlY19zZXAiO3M6MToiLCI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjM2OiI1MTVkYjE4Mi03ZmRmLWZiYWMtMDdiNS01OTRkNWNmYmU3ODgiO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),
('52bb3e69-6ccf-a8ba-b44c-59e287534c64', 'Opportunities2_OPPORTUNITY', 0, '2017-10-14 21:52:20', '2017-10-14 21:54:24', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),
('53507418-34d2-4812-8660-594419f128bd', 'Home2_LEAD_77eb9fd2-a8b3-01db-8704-5944194fd10f', 0, '2017-06-16 17:47:51', '2017-06-16 17:47:51', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('576e09aa-d3ca-a01d-6ca1-59121ee80ca8', 'Home2_SUGARFEED', 0, '2017-05-09 19:55:25', '2017-05-09 19:55:25', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('58bb38b3-bba4-7cb4-c7ff-59f3895d2c61', 'Home2_AOW_WORKFLOW_86b3108d-2d67-ba23-4aa4-59e2874', 0, '2017-10-27 19:32:46', '2017-10-27 19:32:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('58df19ba-4867-eb8e-5575-5911fc5ac9d5', 'Home2_TASK', 0, '2017-05-09 17:31:38', '2017-05-09 17:31:38', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('58efcdff-5452-d3c6-cf2b-59c2847e1388', 'global', 0, '2017-09-20 15:09:04', '2018-10-16 19:13:51', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'YTozNzp7czo4OiJ0aW1lem9uZSI7czoxNToiQW1lcmljYS9DYXJhY2FzIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOjM2MDA7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6Ii4iO3M6NzoiZGVjX3NlcCI7czoxOiIsIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjE1OiJsb2dpbmV4cGlyYXRpb24iO3M6MToiMCI7czo3OiJsb2Nrb3V0IjtzOjA6IiI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czo0OiJUb2RvIjtzOjEwOiJFbXBsb3llZXNRIjthOjg6e3M6NjoibW9kdWxlIjtzOjk6IkVtcGxveWVlcyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7czoxNjoic3VnYXJfdXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6OToiUEhQU0VTU0lEIjtzOjI2OiJxcmticGM0YWtlazk4MDNuZGdjNjc4anRlNiI7czoxNDoiY2tfbG9naW5faWRfMjAiO3M6MzY6ImRiZjA4YzA0LTU1YTEtNDQ4My1jNDgzLTU5YzI3ZTQ0ZjRhNCI7czoxNzoiY2tfbG9naW5fdGhlbWVfMjAiO3M6NjoiU3VpdGVQIjtzOjIwOiJja19sb2dpbl9sYW5ndWFnZV8yMCI7czo1OiJlc19FUyI7fX0='),
('598d30fb-df75-490a-7bdb-5a1960acb72b', 'Home2_AOW_WORKFLOW_86b3108d-2d67-ba23-4aa4-59e2874', 0, '2017-11-25 12:20:41', '2017-11-25 12:20:41', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5ac25b9c-4f8f-3963-e5f7-59441a9037bf', 'Home2_CASE_657344da-c2f6-9112-0f81-59441acdf5f9', 0, '2017-06-16 17:48:56', '2017-06-16 17:48:56', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5b601795-3dee-cab6-e842-595aada8a757', 'Home2_AOW_PROCESSED', 0, '2017-07-03 20:48:55', '2017-07-03 20:48:55', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5bbcca2c-2798-72e6-569c-59441ad80f72', 'Cases2_CASE', 0, '2017-06-16 17:50:28', '2017-06-16 17:50:28', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5cf0b6c1-3ddc-0e35-16a6-59441a9bae0c', 'Home2_TASK_5f9d025a-ab50-1bdc-c3ad-59441a200158', 0, '2017-06-16 17:49:18', '2017-06-16 17:49:18', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5d0b7801-2875-01da-586b-59441aac7956', 'Home2_CASE_3e172ad1-5fd0-5e95-1a90-59441a1aba1a', 0, '2017-06-16 17:48:56', '2017-06-16 17:48:56', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5d513bc6-f688-f891-3cb2-5c3a4f31677f', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2019-01-12 20:36:17', '2019-01-12 20:36:17', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5d5be29c-465c-825d-9525-5bc95184f08b', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2018-10-19 03:37:13', '2018-10-19 03:37:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5e1b480f-08a1-2f51-f8dd-594d54a4b0b5', 'ETag', 0, '2017-06-23 17:47:26', '2017-07-03 20:35:16', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mzt9'),
('5e77eff2-3c32-056f-06f7-59441ac77dbe', 'Home2_CASE_24847548-2da1-1360-b5b1-59441ae69dc2', 0, '2017-06-16 17:48:56', '2017-06-16 17:48:56', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5eb42ac1-d39f-532c-d0ac-59d4d53a2cae', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-10-04 12:37:11', '2017-10-04 12:37:11', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5f7f1140-bf5e-ec6c-4d3b-5c3a4f682591', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2019-01-12 20:36:17', '2019-01-12 20:36:17', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5f8674ca-ae5a-973f-ba66-5bc9511671b3', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2018-10-19 03:37:13', '2018-10-19 03:37:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5fb7d818-1e69-cc51-7346-59441a686211', 'Home2_CASE_e794335f-11b2-649a-d04d-59441a074bbe', 0, '2017-06-16 17:48:56', '2017-06-16 17:48:56', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('5fef4fc1-dbfd-541d-013f-5c4207590c1b', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2019-01-18 17:05:28', '2019-01-18 17:05:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('61a2f672-4e21-524a-664d-59a9710af51b', 'Cases2_CASE', 0, '2017-09-01 14:40:46', '2017-09-01 14:40:46', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('61b951a2-642d-98dd-da16-5bc9517a912c', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2018-10-19 03:37:13', '2018-10-19 03:37:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6209f209-6772-43d7-2b0e-5c5a1355d52c', 'Employees2_EMPLOYEE', 0, '2019-02-05 22:52:58', '2019-02-05 22:52:58', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('62605892-c466-c28b-0a5a-5c3a4f544008', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2019-01-12 20:36:17', '2019-01-12 20:36:17', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('63bd0d3b-b04e-27a1-9705-5911fc39994b', 'Home2_CASE', 0, '2017-05-09 17:30:29', '2017-05-09 17:30:29', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6469e529-0f56-5535-04f4-59f8824e77e4', 'Home2_AOW_WORKFLOW_86b3108d-2d67-ba23-4aa4-59e2874', 0, '2017-10-31 14:03:49', '2017-10-31 14:03:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('64c80653-3f25-5cfa-4ea5-5a1965cf02ff', 'Home2_PROJECTTASK', 0, '2017-11-25 12:44:06', '2017-11-25 12:44:06', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('658fb674-86bc-2f43-15d5-59c2b0ab1cfe', 'Employees2_EMPLOYEE', 0, '2017-09-20 18:17:15', '2017-09-20 18:17:15', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('66187aec-e010-9623-844f-59f8828a7e34', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-10-31 14:03:49', '2017-10-31 14:03:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('669008ba-935f-593d-b395-59dfd80fec0d', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-10-12 21:03:27', '2017-10-12 21:03:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('66d0b135-79f0-2580-701a-595aa737b102', 'Tasks2_TASK', 0, '2017-07-03 20:20:29', '2017-07-03 20:20:29', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('66d202dd-925b-946c-29d5-5c7715d11d2f', 'Documents2_DOCUMENT', 0, '2019-02-27 22:57:05', '2019-02-27 22:57:05', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('695dbd74-99bc-993d-8f94-595aa454893e', 'Bugs2_BUG', 0, '2017-07-03 20:09:49', '2017-07-03 20:09:49', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6a942720-d1a0-b9a6-e29f-5c3a7be02fc2', 'Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_834416ec-4323-', 0, '2019-01-12 23:40:50', '2019-01-12 23:40:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6adfb970-60dd-dca4-b456-59121f5335b1', 'Home2_TASK_85cff70d-6598-6513-f56d-59121fa6b8a7', 0, '2017-05-09 19:59:04', '2017-05-09 19:59:04', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6b782013-9f75-f287-6493-5911fb2c55b3', 'Users2_USER', 0, '2017-05-09 17:26:16', '2017-05-09 17:26:16', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6c2bdb04-f23d-3592-961a-5a19653de501', 'Home2_PROJECT_c1342a40-1b59-7385-f79d-5a1965ca95b5', 0, '2017-11-25 12:43:50', '2018-07-06 02:42:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxODoiYXNzaWduZWRfdXNlcl9uYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),
('6cc86980-4323-e66f-068f-5963ddcedf2b', 'Home2_AOK_KNOWLEDGEBASE_25bd6881-94d2-1c6e-baf9-59', 0, '2017-07-10 20:02:09', '2017-07-10 20:02:09', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6eb2f2d8-1009-a7b8-08e4-590008faf735', 'global', 0, '2017-04-26 02:38:42', '2019-01-14 04:35:51', '1', 'YTo0Njp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjZhODUxZGRjLTAzZmItMDg5Ni00ZTYzLTU4MmRhNTRhODUyMCI7czo4OiJ0aW1lem9uZSI7czoxNToiQW1lcmljYS9DYXJhY2FzIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO3M6NDoiMTgwMCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czo0OiIzNjAwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czoyOiJ1dCI7czoxOiIxIjtzOjU6ImRhdGVmIjtzOjU6ImQvbS9ZIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMToiZGVmYXVsdF9lbWFpbF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjQ6IlRvZG8iO3M6MTA6IkVtcGxveWVlc1EiO2E6Mzp7czo2OiJtb2R1bGUiO3M6OToiRW1wbG95ZWVzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjt9czoxNDoiT3Bwb3J0dW5pdGllc1EiO2E6Mjc6e3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxOToic2F2ZWRfc2VhcmNoX3NlbGVjdCI7czozNjoiMjk0ZTQ1MjEtMjM2Zi00NzcxLTlkNzYtNTllMjg3MGJkNzBjIjtzOjc6Im9yZGVyQnkiO3M6NDoiTkFNRSI7czo5OiJzb3J0T3JkZXIiO3M6MzoiQVNDIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7czo5OiJzaG93U1NESVYiO3M6MzoieWVzIjtzOjg6ImFkdmFuY2VkIjtzOjQ6InRydWUiO3M6MTM6Im5hbWVfYWR2YW5jZWQiO3M6OToiVkVOVEEgQ1JNIjtzOjIxOiJhY2NvdW50X25hbWVfYWR2YW5jZWQiO3M6MTA6IkNISUNLRU4yR08iO3M6Mjg6ImFtb3VudF9hZHZhbmNlZF9yYW5nZV9jaG9pY2UiO3M6MTI6ImdyZWF0ZXJfdGhhbiI7czoyMToicmFuZ2VfYW1vdW50X2FkdmFuY2VkIjtzOjY6IjY3ODAwMCI7czoyNzoic3RhcnRfcmFuZ2VfYW1vdW50X2FkdmFuY2VkIjtzOjA6IiI7czoyNToiZW5kX3JhbmdlX2Ftb3VudF9hZHZhbmNlZCI7czowOiIiO3M6MjU6ImFzc2lnbmVkX3VzZXJfaWRfYWR2YW5jZWQiO2E6MTp7aTowO3M6MToiMSI7fXM6MjA6InNhbGVzX3N0YWdlX2FkdmFuY2VkIjthOjE6e2k6MDtzOjIwOiJQcm9wb3NhbC9QcmljZSBRdW90ZSI7fXM6MjA6ImxlYWRfc291cmNlX2FkdmFuY2VkIjthOjE6e2k6MDtzOjg6IkVtcGxveWVlIjt9czozMzoiZGF0ZV9jbG9zZWRfYWR2YW5jZWRfcmFuZ2VfY2hvaWNlIjtzOjExOiJsYXN0XzdfZGF5cyI7czoyNjoicmFuZ2VfZGF0ZV9jbG9zZWRfYWR2YW5jZWQiO3M6MTM6IltsYXN0XzdfZGF5c10iO3M6MzI6InN0YXJ0X3JhbmdlX2RhdGVfY2xvc2VkX2FkdmFuY2VkIjtzOjA6IiI7czozMDoiZW5kX3JhbmdlX2RhdGVfY2xvc2VkX2FkdmFuY2VkIjtzOjA6IiI7czoxODoibmV4dF9zdGVwX2FkdmFuY2VkIjtzOjMwOiJFc3BlcmFyIHJlc3B1ZXN0YSBkZSBwcm9wdWVzdGEiO3M6MTM6InNlYXJjaF9tb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTk6InNhdmVkX3NlYXJjaF9hY3Rpb24iO3M6NjoidXBkYXRlIjtzOjE0OiJkaXNwbGF5Q29sdW1ucyI7czo4OToiTkFNRXxBQ0NPVU5UX05BTUV8U0FMRVNfU1RBR0V8QU1PVU5UX1VTRE9MTEFSfERBVEVfQ0xPU0VEfEFTU0lHTkVEX1VTRVJfTkFNRXxEQVRFX0VOVEVSRUQiO3M6ODoiaGlkZVRhYnMiO3M6ODM6Ik9QUE9SVFVOSVRZX1RZUEV8TEVBRF9TT1VSQ0V8TkVYVF9TVEVQfFBST0JBQklMSVRZfENSRUFURURfQllfTkFNRXxNT0RJRklFRF9CWV9OQU1FIjt9czozNDoiSW5ib3VuZEVtYWlsX0luYm91bmRFbWFpbF9PUkRFUl9CWSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjIyOiJPdXRib3VuZEVtYWlsQWNjb3VudHNRIjthOjI0OntzOjY6Im1vZHVsZSI7czoyMToiT3V0Ym91bmRFbWFpbEFjY291bnRzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MTM6Im5hbWVfYWR2YW5jZWQiO3M6MDoiIjtzOjIyOiJtYWlsX3NtdHB1c2VyX2FkdmFuY2VkIjtzOjA6IiI7czoyNDoibWFpbF9zbXRwc2VydmVyX2FkdmFuY2VkIjtzOjA6IiI7czoyNToiYXNzaWduZWRfdXNlcl9pZF9hZHZhbmNlZCI7YToxOntpOjA7czoxMzoic2VlZF9jaHJpc19pZCI7fXM6OToic2hvd1NTRElWIjtzOjI6Im5vIjtzOjE3OiJzYXZlZF9zZWFyY2hfbmFtZSI7czowOiIiO3M6MTM6InNlYXJjaF9tb2R1bGUiO3M6MDoiIjtzOjE5OiJzYXZlZF9zZWFyY2hfYWN0aW9uIjtzOjA6IiI7czoxNDoiZGlzcGxheUNvbHVtbnMiO3M6NDoiTkFNRSI7czo4OiJoaWRlVGFicyI7czoyNDoiVVNFUk5BTUV8c210cF9zZXJ2ZXJuYW1lIjtzOjc6Im9yZGVyQnkiO3M6NDoiTkFNRSI7czo5OiJzb3J0T3JkZXIiO3M6MzoiQVNDIjtzOjY6ImJ1dHRvbiI7czo2OiJCdXNjYXIiO3M6MTM6InNpZGViYXJ0b2dnbGUiO3M6OToiY29sbGFwc2VkIjtzOjE2OiJzdWdhcl91c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czozMjoiMTg0NDBhMWY1NWJhNDNiOWIxZDlhZGFiM2E4YjcxYTAiO3M6MjY6Im8wNDV0NXVrb28xamo1MG4zb2g2bDQ4ZGI2IjtzOjg6InRpbWV6b25lIjtzOjE2OiJBbWVyaWNhL1NhbnRpYWdvIjtzOjk6IlBIUFNFU1NJRCI7czoyNjoiaWczNTFrN3VsY2Q5OWtwazZhN29ycGFlMTUiO3M6MTQ6ImNrX2xvZ2luX2lkXzIwIjtzOjE6IjEiO3M6MjA6ImNrX2xvZ2luX2xhbmd1YWdlXzIwIjtzOjU6ImVzX0VTIjt9czoyNToiUmVsZWFzZXNfUkVMRUFTRV9PUkRFUl9CWSI7czoxMDoibGlzdF9vcmRlciI7czoxMToibG9naW5mYWlsZWQiO3M6MToiMCI7czo5OiJDb250YWN0c1EiO2E6MzI6e3M6NjoibW9kdWxlIjtzOjg6IkNvbnRhY3RzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MTk6ImZpcnN0X25hbWVfYWR2YW5jZWQiO3M6MDoiIjtzOjE0OiJlbWFpbF9hZHZhbmNlZCI7czowOiIiO3M6MTQ6InBob25lX2FkdmFuY2VkIjtzOjA6IiI7czoxODoibGFzdF9uYW1lX2FkdmFuY2VkIjtzOjA6IiI7czoyMzoiYWRkcmVzc19zdHJlZXRfYWR2YW5jZWQiO3M6MDoiIjtzOjIxOiJhZGRyZXNzX2NpdHlfYWR2YW5jZWQiO3M6MDoiIjtzOjIxOiJhY2NvdW50X25hbWVfYWR2YW5jZWQiO3M6MDoiIjtzOjIyOiJhZGRyZXNzX3N0YXRlX2FkdmFuY2VkIjtzOjA6IiI7czoyNzoiYWRkcmVzc19wb3N0YWxjb2RlX2FkdmFuY2VkIjtzOjA6IiI7czoyNToiYXNzaWduZWRfdXNlcl9pZF9hZHZhbmNlZCI7YToxOntpOjA7czoxMToic2VlZF9qaW1faWQiO31zOjMyOiJwcmltYXJ5X2FkZHJlc3NfY291bnRyeV9hZHZhbmNlZCI7czowOiIiO3M6OToic2hvd1NTRElWIjtzOjI6Im5vIjtzOjE3OiJzYXZlZF9zZWFyY2hfbmFtZSI7czowOiIiO3M6MTM6InNlYXJjaF9tb2R1bGUiO3M6MDoiIjtzOjE5OiJzYXZlZF9zZWFyY2hfYWN0aW9uIjtzOjA6IiI7czoxNDoiZGlzcGxheUNvbHVtbnMiO3M6NzM6Ik5BTUV8VElUTEV8QUNDT1VOVF9OQU1FfEVNQUlMMXxQSE9ORV9XT1JLfEFTU0lHTkVEX1VTRVJfTkFNRXxEQVRFX0VOVEVSRUQiO3M6ODoiaGlkZVRhYnMiO3M6MzI1OiJERVBBUlRNRU5UfERPX05PVF9DQUxMfFBIT05FX0hPTUV8UEhPTkVfTU9CSUxFfFBIT05FX09USEVSfFBIT05FX0ZBWHxFTUFJTDJ8RU1BSUxfT1BUX09VVHxQUklNQVJZX0FERFJFU1NfU1RSRUVUfFBSSU1BUllfQUREUkVTU19DSVRZfFBSSU1BUllfQUREUkVTU19TVEFURXxQUklNQVJZX0FERFJFU1NfUE9TVEFMQ09ERXxBTFRfQUREUkVTU19DT1VOVFJZfEFMVF9BRERSRVNTX1NUUkVFVHxBTFRfQUREUkVTU19DSVRZfEFMVF9BRERSRVNTX1NUQVRFfEFMVF9BRERSRVNTX1BPU1RBTENPREV8Q1JFQVRFRF9CWV9OQU1FfE1PRElGSUVEX0JZX05BTUV8U1lOQ19DT05UQUNUIjtzOjc6Im9yZGVyQnkiO3M6NDoiTkFNRSI7czo5OiJzb3J0T3JkZXIiO3M6MzoiQVNDIjtzOjY6ImJ1dHRvbiI7czo2OiJCdXNjYXIiO3M6MTM6InNpZGViYXJ0b2dnbGUiO3M6OToiY29sbGFwc2VkIjtzOjEzOiJDb250YWN0c19kaXZzIjtzOjExOiJ1bmRlZmluZWQ9IyI7czoxNjoic3VnYXJfdXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6NjoiX191dG1hIjtzOjU1OiIxMDU5MjU4OTQuMTIyNzEyNTI5Mi4xNDc5MzMxMzYxLjE0NzkzMzEzNjEuMTQ3OTMzMTM2MS4xIjtzOjY6Il9fdXRteiI7czo3MDoiMTA1OTI1ODk0LjE0NzkzMzEzNjEuMS4xLnV0bWNzcj0oZGlyZWN0KXx1dG1jY249KGRpcmVjdCl8dXRtY21kPShub25lKSI7czo5OiJQSFBTRVNTSUQiO3M6MjY6ImtrZm81cG1zZ21kbjVtZHVndmdxcWpha3A1IjtzOjE0OiJja19sb2dpbl9pZF8yMCI7czoxOiIxIjtzOjIwOiJja19sb2dpbl9sYW5ndWFnZV8yMCI7czo1OiJlc19FUyI7fXM6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIuIjtzOjc6ImRlY19zZXAiO3M6MToiLCI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToidGltZWYiO3M6MzoiSDppIjtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6OToiQWNjb3VudHNRIjthOjI3OntzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6OToicGFyZW50VGFiIjtzOjk6Ik1hcmtldGluZyI7czo5OiJhamF4X2xvYWQiO3M6MToiMSI7czoxNDoibG9hZExhbmd1YWdlSlMiO3M6MToiMSI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7czoxMDoibmFtZV9iYXNpYyI7czowOiIiO3M6MjM6ImN1cnJlbnRfdXNlcl9vbmx5X2Jhc2ljIjtzOjE6IjAiO3M6MjA6ImZhdm9yaXRlc19vbmx5X2Jhc2ljIjtzOjE6IjAiO3M6NjoiYnV0dG9uIjtzOjY6IkJ1c2NhciI7czoxMDoiQ2FzZXNfZGl2cyI7czoxMToidW5kZWZpbmVkPSMiO3M6MTY6InN1Z2FyX3VzZXJfdGhlbWUiO3M6NjoiU3VpdGVQIjtzOjMyOiI0YjMyNTQ1NGU4ZTdhZDY2NzFhYTBjMDVmN2M5MjM4ZCI7czo1OiJlcy1FUyI7czo5OiJzc3VwcF92aWQiO3M6NDg6IlNCQ2N3WXoxY3h1U2huZUJpbHFuMGJyN25lamZaeFhRQ08zMDUxMDkyMDA2MjAxNyI7czo4OiJ0aW1lem9uZSI7czoxNjoiQW1lcmljYS9TYW50aWFnbyI7czozMjoiMTg0NDBhMWY1NWJhNDNiOWIxZDlhZGFiM2E4YjcxYTAiO3M6MjY6InZjN3A2NmNtZTB0cWE1bzlnbHBkY3NkOGw1IjtzOjY6Il9fdXRtdCI7czoxOiIxIjtzOjY6Il9fdXRtYSI7czo1NDoiMTA1OTI1ODk0LjEzMzg3MTkwLjE0OTUyOTg0NTkuMTQ5ODE2MDYzMi4xNDk5MTEwMjk5LjEzIjtzOjY6Il9fdXRtYiI7czoyNToiMTA1OTI1ODk0LjQuMTAuMTQ5OTExMDI5OSI7czo2OiJfX3V0bWMiO3M6OToiMTA1OTI1ODk0IjtzOjY6Il9fdXRteiI7czoxMzI6IjEwNTkyNTg5NC4xNDk3ODk5MDUwLjEwLjIudXRtY3NyPWxvY2FsaG9zdHx1dG1jY249KHJlZmVycmFsKXx1dG1jbWQ9cmVmZXJyYWx8dXRtY2N0PS9zaXRlX25ldy9sZXZlbC9pbmRleC5waHAvbm9zb3Ryb3MvcXVpZW5lcy1zb21vcyI7czoxNDoiY2tfbG9naW5faWRfMjAiO3M6MToiMSI7czoyMDoiY2tfbG9naW5fbGFuZ3VhZ2VfMjAiO3M6NToiZXNfRVMiO3M6MTQ6ImZvclF1aWNrQ3JlYXRlIjtiOjE7fX0='),
('6edc9459-b58b-e814-cd47-5c1549a2f4fb', 'Accounts2_ACCOUNT', 0, '2018-12-15 18:37:09', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('6f152fd1-88c2-7f0f-0502-5a196531d1bb', 'Home2_PROJECT', 0, '2017-11-25 12:43:49', '2018-10-01 13:35:40', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxODoiYXNzaWduZWRfdXNlcl9uYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),
('6f714fdc-6284-3463-40f5-5963dd86f313', 'Home2_AOW_PROCESSED_e57487df-c4a0-da01-23b7-595aad', 0, '2017-07-10 20:02:09', '2017-07-10 20:02:09', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7103fdaa-6596-2a78-96cc-5c4207c2b27f', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2019-01-18 17:05:28', '2019-01-18 17:05:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('71051623-cf74-c1a2-37a7-59122056fd9f', 'Home2_TASK', 0, '2017-05-09 20:01:33', '2017-05-09 20:01:33', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('71aa4313-34c5-dd20-fe9c-59442b24600e', 'Meetings2_MEETING', 0, '2017-06-16 19:01:33', '2017-06-16 19:01:33', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('71ab251c-cd9b-93a6-ed1e-591234454987', 'Cases2_CASE', 0, '2017-05-09 21:28:40', '2017-05-09 21:28:40', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('72621ef9-02ac-6c6b-3a67-5c4207d19dd1', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2019-01-18 17:05:28', '2019-01-18 17:05:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('738ed5ac-49c8-a0d9-c683-5c77151f23ed', 'Project2_PROJECT', 0, '2019-02-27 22:57:27', '2019-02-27 22:57:27', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7621efca-1912-81b8-1560-59f389bca5ac', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-10-27 19:32:46', '2017-10-27 19:32:46', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7654a434-ea5a-9653-46f5-5911fb41eba0', 'Home2_TASK_2ee1cd15-95f9-81f1-aca0-5911fbd598ab', 0, '2017-05-09 17:23:30', '2017-05-09 17:23:30', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('76a42202-3c30-9ff3-a581-59c2b01a6f4b', 'Home2_LEAD_b62d557b-1ec1-4806-d3ca-59c2b0b89c94', 0, '2017-09-20 18:15:04', '2017-09-20 18:15:04', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('77b1bdb5-8de5-3c76-dd9d-5bc95254c83d', 'Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_834416ec-4323-', 0, '2018-10-19 03:40:52', '2018-10-19 03:40:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('77ecd154-f07f-ee41-d0e7-59121f60ef38', 'Home2_CASE_26639d4f-57a6-d644-04d9-59121f2d5163', 0, '2017-05-09 20:00:36', '2017-05-09 20:00:36', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('797eb7c1-f091-0c8b-a6cd-595b8be2a286', 'Emails', 0, '2017-07-04 12:36:49', '2017-07-04 12:36:49', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YToxOntzOjExOiJmb2N1c0ZvbGRlciI7czo2MjoiYToyOntzOjQ6ImllSWQiO3M6OToidW5kZWZpbmVkIjtzOjY6ImZvbGRlciI7czo5OiJ1bmRlZmluZWQiO30iO30='),
('7af8b818-7314-a358-46a4-593014b65fb4', 'Cases2_CASE', 0, '2017-06-01 13:19:03', '2017-06-01 13:19:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7b2b0242-194c-149b-9169-5bc9521634d5', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2018-10-19 03:40:52', '2018-10-19 03:40:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7c19066a-695c-753f-f952-59121e7cb061', 'ETag', 0, '2017-05-09 19:55:24', '2017-05-09 19:55:24', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),
('7c643e7c-5aa0-49a3-c0f2-5911faef0634', 'Home2_LEAD_aa308483-4ad1-f168-c1c4-5911fa919c2d', 0, '2017-05-09 17:22:09', '2017-05-09 17:22:09', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7c7963b0-1f7d-1139-721e-5bc6335f4b2b', 'Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_834416ec-4323-', 0, '2018-10-16 18:51:59', '2018-10-16 18:51:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7d2daacb-6486-0784-88b9-5bc9526fcf36', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2018-10-19 03:40:52', '2018-10-19 03:40:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7d3208d8-ed3c-75ef-ad3e-5c3d0ceaa0c9', 'Home', 0, '2019-01-14 22:24:08', '2019-01-14 22:24:08', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImJlZmY1NWZjLWYxOTUtMWMzNy1kZjAzLTVjM2QwYzc3ZmVkZSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImMwMDdjMzA4LWFlNDgtNmFlZC05YzEwLTVjM2QwYzU3OWE3YSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImMwZDc3Y2UzLWYxMjYtNmYzNS1jYjNhLTVjM2QwYzM1ZTQzZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImMxNjBkNDczLTJlZTktOTgyZC1mYTM4LTVjM2QwYzQ0ZGQ3MiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYzIxMjZiNjgtNTg0Ny1hOTRmLTZkMWMtNWMzZDBjNTVhMjkzIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYzJlNDkyOGQtYzA5Mi1mZWZiLTc5Y2UtNWMzZDBjZjllOTFiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJjMDA3YzMwOC1hZTQ4LTZhZWQtOWMxMC01YzNkMGM1NzlhN2EiO2k6MTtzOjM2OiJjMGQ3N2NlMy1mMTI2LTZmMzUtY2IzYS01YzNkMGMzNWU0M2QiO2k6MjtzOjM2OiJjMTYwZDQ3My0yZWU5LTk4MmQtZmEzOC01YzNkMGM0NGRkNzIiO2k6MztzOjM2OiJjMjEyNmI2OC01ODQ3LWE5NGYtNmQxYy01YzNkMGM1NWEyOTMiO2k6NDtzOjM2OiJjMmU0OTI4ZC1jMDkyLWZlZmItNzljZS01YzNkMGNmOWU5MWIiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImJlZmY1NWZjLWYxOTUtMWMzNy1kZjAzLTVjM2QwYzc3ZmVkZSI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('7e0fc683-bdbc-432c-6d2d-59f880c072b5', 'Calls2_CALL', 0, '2017-10-31 13:52:13', '2017-10-31 13:52:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7e7ca34a-2212-73ef-0039-595aad6b9f1a', 'Home2_AOK_KNOWLEDGEBASE', 0, '2017-07-03 20:48:50', '2017-07-03 20:48:50', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7f0b2116-fe53-0ab7-e825-5a3553269bea', 'global', 0, '2017-12-16 17:08:23', '2018-10-16 19:12:26', 'a1a85ead-a865-136f-28c5-5a35526b73fb', 'YTozNTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjI6Im9uIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOjM2MDA7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTU6IkFtZXJpY2EvQ2FyYWNhcyI7czoyOiJ1dCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLiI7czo3OiJkZWNfc2VwIjtzOjE6IiwiO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6ImRhdGVmIjtzOjU6ImQvbS9ZIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjA6IiI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO30='),
('7f213c20-8a8c-01fc-051e-5bc952d077a7', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2018-10-19 03:40:52', '2018-10-19 03:40:52', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('7f400563-6dd1-78d2-ed55-59121ebf49e7', 'Home2_MEETING', 0, '2017-05-09 19:55:25', '2017-05-09 19:55:25', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('806dcd16-3336-b210-c481-5bb223f21377', 'Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_834416ec-4323-', 0, '2018-10-01 13:41:03', '2018-10-01 13:41:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('80f8ed31-49f1-0f02-f888-5c3a7bd6cac3', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2019-01-12 23:40:50', '2019-01-12 23:40:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('81f0955b-fd37-efc9-c6e0-59121f2e7bbc', 'Home2_TASK_a67c5d89-a036-4f7b-a2f6-59121f659ea6', 0, '2017-05-09 19:57:13', '2017-05-09 19:57:13', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('81fc0f9e-61a4-2619-0974-5bdfcd5d0e37', 'Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_834416ec-4323-', 0, '2018-11-05 04:57:59', '2018-11-05 04:57:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('82a8e95f-a2fc-5859-5c7b-5b3e830de797', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2018-07-05 20:43:47', '2018-07-05 20:43:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('83704427-7314-1997-816f-5c3a7b5e8663', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2019-01-12 23:40:50', '2019-01-12 23:40:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('840fc4c3-a3c1-f9ab-4e9b-5c3d0cea83d1', 'Home2_CALL', 0, '2019-01-14 22:24:08', '2019-01-14 22:24:08', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('84e57253-bca1-9ee8-f096-5bdfce5399d3', 'Prospects2_PROSPECT', 0, '2018-11-05 05:01:48', '2018-11-05 05:01:48', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('859cb406-56b7-d9a5-325f-5c3a7bb75cf2', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2019-01-12 23:40:50', '2019-01-12 23:40:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('85a0ad9c-2e4b-535a-61d2-5a19652c770d', 'Home2_TASK', 0, '2017-11-25 12:45:03', '2017-11-25 12:45:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8619a733-191c-3cd7-bfbb-59510b841304', 'Leads2_LEAD', 0, '2017-06-26 13:25:01', '2017-06-26 13:25:01', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('864695b6-6bd4-22d1-8280-5c3d0c9ea35d', 'Home2_MEETING', 0, '2019-01-14 22:24:08', '2019-01-14 22:24:08', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('86e843d2-55ce-911b-4da4-594d53a11e0d', 'global', 0, '2017-06-23 17:44:52', '2018-10-16 19:14:53', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'YTozNjp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjg6InRpbWV6b25lIjtzOjE1OiJBbWVyaWNhL0NhcmFjYXMiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6Ii4iO3M6NzoiZGVjX3NlcCI7czoxOiIsIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6Ijg2YzQ3ZjhjLWJmNGMtZjM3Ny00NDMwLTU5NGQ1MzJjNzgwYSI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7fQ=='),
('86f5ee8b-fd84-9080-4bf2-59414462a00a', 'Users2_USER', 0, '2017-06-14 14:12:17', '2017-06-14 14:12:17', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('87145c85-6146-b96c-b342-59121efeffc8', 'global', 0, '2017-05-09 19:54:49', '2018-10-16 19:15:29', '80343642-e355-1c38-662f-59121e97591e', 'YTozNjp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjg6InRpbWV6b25lIjtzOjE1OiJBbWVyaWNhL0NhcmFjYXMiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6Ii4iO3M6NzoiZGVjX3NlcCI7czoxOiIsIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6Ijg2ZGFkMjExLWFjNTktN2Q5Zi03OTVkLTU5MTIxZThjMGQzMCI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7fQ=='),
('88445ce0-b74d-5791-7095-5a6770a3994b', 'Home2_AOK_KNOWLEDGEBASE_25bd6881-94d2-1c6e-baf9-59', 0, '2018-01-23 17:26:41', '2018-01-23 17:26:41', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8a8dd91a-37a0-df5c-cee3-5bc6332a4a0a', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2018-10-16 18:51:59', '2018-10-16 18:51:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8c4472ff-3b59-ffff-cf2b-5bc6335270fd', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2018-10-16 18:51:59', '2018-10-16 18:51:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8c6feafb-23b7-7f5a-e1db-5c3d0c2fad34', 'Home2_OPPORTUNITY', 0, '2019-01-14 22:24:08', '2019-01-14 22:24:08', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8d501a04-632c-02e1-713c-59121f29b175', 'Home2_CASE_38219bb8-5b2a-be4f-867f-59121f94c982', 0, '2017-05-09 19:56:53', '2017-05-09 19:56:53', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8e21f2a0-8c53-8cd4-e6fc-59a586d94858', 'Home2_AOK_KNOWLEDGEBASE_25bd6881-94d2-1c6e-baf9-59', 0, '2017-08-29 15:19:45', '2017-08-29 15:19:45', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8eb44e96-c418-ec4f-012f-5bc63336594f', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2018-10-16 18:51:59', '2018-10-16 18:51:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('8ebacbe3-6163-ae91-8cee-5911fcb1c840', 'global', 0, '2017-05-09 17:28:57', '2018-10-16 19:18:08', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YTozNjp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjg6InRpbWV6b25lIjtzOjE1OiJBbWVyaWNhL0NhcmFjYXMiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6Ii4iO3M6NzoiZGVjX3NlcCI7czoxOiIsIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjhlOWViZmE2LTBiZGItZjBiZS0wMzM2LTU5MTFmYzQxYWY2OCI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7fQ=='),
('907db449-1e13-642b-c049-5c3d0c2f546b', 'Home2_ACCOUNT', 0, '2019-01-14 22:24:08', '2019-01-14 22:24:08', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('90e3f066-2654-8cea-f8f5-59121f451611', 'ETag', 0, '2017-05-09 19:57:58', '2017-05-09 19:58:02', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),
('91e8550f-82bf-99ce-a68d-590010a62af7', 'Home2_LEAD_a6abb1ce-2756-9878-7360-5900104dd824', 0, '2017-04-26 03:12:07', '2017-04-26 03:12:07', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('922d6977-f624-be09-40d9-59a5861dfe81', 'Home2_AOW_PROCESSED_e57487df-c4a0-da01-23b7-595aad', 0, '2017-08-29 15:19:45', '2017-08-29 15:19:45', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('92e16d5e-9271-fb89-b608-5c3d0cd17f20', 'Home2_LEAD', 0, '2019-01-14 22:24:08', '2019-01-14 22:24:08', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('92f5f50e-5307-bac2-e474-59121f09e3ef', 'Home2_CASE', 0, '2017-05-09 19:56:52', '2017-05-09 19:56:52', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('93789a74-372a-2ca5-bed5-595aade88b6d', 'Notes2_NOTE', 0, '2017-07-03 20:46:54', '2017-07-03 20:46:54', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9379353e-5033-4ef3-9407-59e286e1b5bd', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-10-14 21:49:13', '2017-10-14 21:49:13', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('952c2516-c976-ec7a-8ef8-5c3d0cb9476c', 'Home2_SUGARFEED', 0, '2019-01-14 22:24:08', '2019-01-14 22:24:08', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('97e44d65-245b-8e21-051d-591220365ab8', 'Home2_CASE_ab3953ae-d5f2-018d-6226-5912207d46e1', 0, '2017-05-09 20:01:52', '2017-05-09 20:01:52', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9864978b-c743-b368-447a-59f889337e3e', 'Documents2_DOCUMENT', 0, '2017-10-31 14:33:19', '2017-10-31 14:33:19', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('98eccc03-03f9-4152-28a6-5a67709cbcc6', 'Home2_AOW_PROCESSED_e57487df-c4a0-da01-23b7-595aad', 0, '2018-01-23 17:26:41', '2018-01-23 17:26:41', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9b086596-0b15-d577-d401-591234e90fea', 'Tasks2_TASK', 0, '2017-05-09 21:29:29', '2017-05-09 21:29:29', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9c59e43e-c76d-34f0-7d4a-594d580ab4eb', 'Employees2_EMPLOYEE', 0, '2017-06-23 18:04:02', '2017-06-23 18:04:02', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9c9d2feb-5ef3-c90f-fcc5-5a1965d93a8d', 'Home2_TASK_ef298d4f-e49e-29f6-bee4-5a1965f9d3ae', 0, '2017-11-25 12:45:04', '2017-11-25 12:45:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9d8f808f-cc57-66b6-26c5-594d5790cb70', 'Home', 0, '2017-06-23 18:03:36', '2017-06-23 18:03:36', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjhhZTc3MzBlLTZmMTYtM2JkNC0zZDAyLTU5NGQ1NzBlOTc5MyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjhiNjY2MmNkLWM0ZDktNDJhNC01OTYyLTU5NGQ1N2Q4YWRkNyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjhiZWQ2MjgxLTgzNGMtMjY5YS0wMzNmLTU5NGQ1NzgwNzk4YiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjhjNDRjMDU0LTQ2MzItZTExOC0wNWU4LTU5NGQ1NzVlMDRiMCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOGNiMzQzMTAtNzA3NS0yYzU4LTQxNTQtNTk0ZDU3ZTdiNzI0IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOGQzYTRjZDAtNjZhZi04Y2NkLTMzMzYtNTk0ZDU3NzBmNTc2IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI4YjY2NjJjZC1jNGQ5LTQyYTQtNTk2Mi01OTRkNTdkOGFkZDciO2k6MTtzOjM2OiI4YmVkNjI4MS04MzRjLTI2OWEtMDMzZi01OTRkNTc4MDc5OGIiO2k6MjtzOjM2OiI4YzQ0YzA1NC00NjMyLWUxMTgtMDVlOC01OTRkNTc1ZTA0YjAiO2k6MztzOjM2OiI4Y2IzNDMxMC03MDc1LTJjNTgtNDE1NC01OTRkNTdlN2I3MjQiO2k6NDtzOjM2OiI4ZDNhNGNkMC02NmFmLThjY2QtMzMzNi01OTRkNTc3MGY1NzYiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjhhZTc3MzBlLTZmMTYtM2JkNC0zZDAyLTU5NGQ1NzBlOTc5MyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('9ece327e-bdb5-0dc7-4d48-59121fd1c1e3', 'Home2_CASE', 0, '2017-05-09 20:00:33', '2017-05-09 20:00:33', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('9f5c4131-e6b8-79a3-b5b1-594fbacd8b40', 'Cases', 0, '2017-06-25 13:27:20', '2017-06-25 13:27:20', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjIyOiJMaXN0Vmlld0Rpc3BsYXlDb2x1bW5zIjthOjA6e319'),
('9fea7cd6-6f0d-480f-1cff-5a35502c4ef3', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2017-12-16 16:59:37', '2017-12-16 16:59:37', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('a06cbab7-6677-58ec-5e22-5944190cdf24', 'Home2_CASE', 0, '2017-06-16 17:48:36', '2017-06-16 17:48:36', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a207e015-c558-e6ae-6dba-5941443f4d57', 'Accounts2_ACCOUNT', 0, '2017-06-14 14:14:54', '2017-06-14 14:14:54', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a26a37e5-290c-f34f-5456-595aad23ea62', 'Home2_AOW_PROCESSED_e57487df-c4a0-da01-23b7-595aad', 0, '2017-07-03 20:48:56', '2017-07-03 20:48:56', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a27e2fe2-396e-30f5-e4fc-59566c0fd656', 'Meetings2_MEETING', 0, '2017-06-30 15:20:51', '2017-06-30 15:20:51', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a2c3d8b2-73ec-c600-4d02-594d57ff1e7e', 'Home2_CALL', 0, '2017-06-23 18:03:36', '2017-06-23 18:03:36', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a40dc5ab-640d-c44e-9388-594d574b3bbf', 'Home2_MEETING', 0, '2017-06-23 18:03:36', '2017-06-23 18:03:36', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a5228698-7832-8e93-64fa-59121feefa8a', 'Home', 0, '2017-05-09 19:59:57', '2017-05-09 20:02:10', '80343642-e355-1c38-662f-59121e97591e', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjQ6e3M6MzY6Ijk0ODBhYzg5LTE3MzItZDdmYS0wNjM0LTU5MTIxZjMyYmFlYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjI2NjM5ZDRmLTU3YTYtZDY0NC0wNGQ5LTU5MTIxZjJkNTE2MyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYXNlc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhc2VzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYXNlcy9EYXNobGV0cy9NeUNhc2VzRGFzaGxldC9NeUNhc2VzRGFzaGxldC5waHAiO31zOjM2OiIxNDEzNDg1ZC0yZGE4LWI0N2YtNzZhOC01OTEyMjBjNDFhMWQiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15VGFza3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJUYXNrcyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvVGFza3MvRGFzaGxldHMvTXlUYXNrc0Rhc2hsZXQvTXlUYXNrc0Rhc2hsZXQucGhwIjt9czozNjoiZjQyMzNiZWMtM2E3NS0yZGNhLWNkMzUtNTkxMjIwOWQzMTlhIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiMTQxMzQ4NWQtMmRhOC1iNDdmLTc2YTgtNTkxMjIwYzQxYTFkIjtpOjE7czozNjoiMjY2MzlkNGYtNTdhNi1kNjQ0LTA0ZDktNTkxMjFmMmQ1MTYzIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjI6e2k6MDtzOjM2OiJmNDIzM2JlYy0zYTc1LTJkY2EtY2QzNS01OTEyMjA5ZDMxOWEiO2k6MTtzOjM2OiI5NDgwYWM4OS0xNzMyLWQ3ZmEtMDYzNC01OTEyMWYzMmJhZWMiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),
('a542bdfa-bf7b-ed66-41b8-594d57e87c6a', 'Home2_OPPORTUNITY', 0, '2017-06-23 18:03:36', '2017-06-23 18:03:36', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a673819f-5e01-d80c-fe3e-594d574e34b5', 'Home2_ACCOUNT', 0, '2017-06-23 18:03:36', '2017-06-23 18:03:36', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a79bf0aa-1887-e816-08aa-5c3c0e5f29b9', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2019-01-14 04:23:00', '2019-01-14 04:23:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a7afedb9-5aed-3946-4bcd-594d57801115', 'Home2_LEAD', 0, '2017-06-23 18:03:36', '2017-06-23 18:03:36', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a7cd2ec3-5bf9-fcc0-285b-59121fedc202', 'Home2_CALL', 0, '2017-05-09 19:59:57', '2017-05-09 19:59:57', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a8202f8c-c3f8-c1ab-2ea0-5c4b4d6945ce', 'Home', 0, '2019-01-25 17:55:17', '2019-02-12 17:45:41', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjU6e3M6MzY6IjI0YTFkNjg2LWI4MWItY2JiNy0yNGFhLTVjNGI0ZDMwYTRlNSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6NToidGl0bGUiO3M6MzU6IlRoaW5ncyB0byBkbyBpbiBvcmRlciBvZiBpbXBvcnRhbmNlIjtzOjExOiJhdXRvUmVmcmVzaCI7czoyOiIzMCI7czo0OiJyb3dzIjtpOjE1O319czozNjoiMjU2MWNhY2QtZmIwMS00MjY1LWE3NmYtNWM0YjRkZGQyNWY3IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjY6e3M6NzoiZmlsdGVycyI7YTozOntzOjY6InN0YXR1cyI7YToxOntpOjA7czo3OiJQbGFubmVkIjt9czoxMjoiZGF0ZV9lbnRlcmVkIjthOjE6e3M6NDoidHlwZSI7czo4OiJUUF90b2RheSI7fXM6MTA6ImRhdGVfc3RhcnQiO2E6MDp7fX1zOjU6InRpdGxlIjtzOjEwOiJUbyBkbyBMaXN0IjtzOjExOiJteUl0ZW1zT25seSI7czo0OiJ0cnVlIjtzOjExOiJkaXNwbGF5Um93cyI7czoxOiI1IjtzOjE0OiJkaXNwbGF5Q29sdW1ucyI7YTo1OntpOjA7czoxODoiYXNzaWduZWRfdXNlcl9uYW1lIjtpOjE7czoxMjoiZGF0ZV9lbnRlcmVkIjtpOjI7czoxMToicGFyZW50X25hbWUiO2k6MztzOjQ6Im5hbWUiO2k6NDtzOjY6InN0YXR1cyI7fXM6MTE6ImF1dG9SZWZyZXNoIjtzOjM6IjYwMCI7fX1zOjM2OiIyNjMxY2U2ZC00YjFhLWYyOGItOWQ5OC01YzRiNGQ4NzkzYjEiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15TWVldGluZ3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJNZWV0aW5ncyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvTWVldGluZ3MvRGFzaGxldHMvTXlNZWV0aW5nc0Rhc2hsZXQvTXlNZWV0aW5nc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiIyNmMyMThiNC1jMjcxLWY0ZTEtYThlZS01YzRiNGRjYjQxNDIiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MjI6Ik15T3Bwb3J0dW5pdGllc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJPcHBvcnR1bml0aWVzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo4MDoibW9kdWxlcy9PcHBvcnR1bml0aWVzL0Rhc2hsZXRzL015T3Bwb3J0dW5pdGllc0Rhc2hsZXQvTXlPcHBvcnR1bml0aWVzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjI4NDY5YWViLWU0MWUtNDdkNy0xMDlmLTVjNGI0ZGE5OTllOSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlMZWFkc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkxlYWRzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9MZWFkcy9EYXNobGV0cy9NeUxlYWRzRGFzaGxldC9NeUxlYWRzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTo2OntzOjc6ImZpbHRlcnMiO2E6Mjp7czoxMjoiZGF0ZV9lbnRlcmVkIjthOjA6e31zOjIzOiJwcmltYXJ5X2FkZHJlc3NfY291bnRyeSI7czoxMzoiVW5pdGVkIFN0YXRlcyI7fXM6NToidGl0bGUiO3M6ODoiTXkgTGVhZHMiO3M6MTE6Im15SXRlbXNPbmx5IjtzOjQ6InRydWUiO3M6MTE6ImRpc3BsYXlSb3dzIjtzOjI6IjEwIjtzOjE0OiJkaXNwbGF5Q29sdW1ucyI7YTo2OntpOjA7czoxMToibGVhZF9zb3VyY2UiO2k6MTtzOjQ6Im5hbWUiO2k6MjtzOjEyOiJwaG9uZV9tb2JpbGUiO2k6MztzOjY6ImVtYWlsMSI7aTo0O3M6Njoic3RhdHVzIjtpOjU7czoxMzoiZGF0ZV9tb2RpZmllZCI7fXM6MTE6ImF1dG9SZWZyZXNoIjtzOjI6Ii0xIjt9fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo0OntpOjA7czozNjoiMjU2MWNhY2QtZmIwMS00MjY1LWE3NmYtNWM0YjRkZGQyNWY3IjtpOjE7czozNjoiMjRhMWQ2ODYtYjgxYi1jYmI3LTI0YWEtNWM0YjRkMzBhNGU1IjtpOjI7czozNjoiMjg0NjlhZWItZTQxZS00N2Q3LTEwOWYtNWM0YjRkYTk5OWU5IjtpOjM7czozNjoiMjZjMjE4YjQtYzI3MS1mNGUxLWE4ZWUtNWM0YjRkY2I0MTQyIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjE6e2k6MDtzOjM2OiIyNjMxY2U2ZC00YjFhLWYyOGItOWQ5OC01YzRiNGQ4NzkzYjEiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),
('a838b2d6-3048-2efe-63c8-59947af2f0a8', 'Cases2_CASE', 0, '2017-08-16 17:01:16', '2017-08-16 17:01:16', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a8f77144-6169-2ad0-45cd-59121ff4635b', 'Home2_MEETING', 0, '2017-05-09 19:59:57', '2017-05-09 19:59:57', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a9522abf-895f-3523-7e9e-594d57a5f706', 'Home2_SUGARFEED', 0, '2017-06-23 18:03:36', '2017-06-23 18:03:36', '81e37113-55ef-cf8d-f510-594d53e4ebcd', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a99c5b84-ac00-cdb2-14b3-5c5a20d1b813', 'Accounts2_ACCOUNT', 0, '2019-02-05 23:48:12', '2019-02-05 23:48:12', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('aa1e104a-26e5-4e2f-3b5e-59121f231dfe', 'Home2_OPPORTUNITY', 0, '2017-05-09 19:59:57', '2017-05-09 19:59:57', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('aa5fabc1-9106-b656-d576-59146b8b38a7', 'Home2_CONTACT', 0, '2017-05-11 13:46:19', '2017-05-11 13:46:19', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ab43a7a6-001c-3903-f731-59121f963ff5', 'Home2_ACCOUNT', 0, '2017-05-09 19:59:57', '2017-05-09 19:59:57', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('abcd04b6-059c-9896-4970-5bdfcd4ad95c', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2018-11-05 04:57:59', '2018-11-05 04:57:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ac9fef33-85de-e17d-b9c2-59121f4eb788', 'Home2_LEAD', 0, '2017-05-09 19:59:57', '2017-05-09 19:59:57', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ad7407fb-46ae-e884-a384-5911fc64c8b9', 'Home', 0, '2017-05-09 17:29:32', '2017-05-11 13:47:05', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6Ijk3ZjQ3ZjE3LTc5NWYtYjc1Yi01Mjc1LTU5MTFmYzEwYjZlOCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6Ijk4ODI3YTcyLWM0ZjUtYWVhMi1jYzY4LTU5MTFmY2MyYjM3MiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImFmZjdiNGFmLWMyZjEtMGQyNi0yMTcyLTU5MTFmYzI4NTJhZCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYXNlc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhc2VzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYXNlcy9EYXNobGV0cy9NeUNhc2VzRGFzaGxldC9NeUNhc2VzRGFzaGxldC5waHAiO31zOjM2OiI0YmIzYjUxNi0xODBlLWVkNTEtMDM3ZS01OTExZmM4MTI4ZTMiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15Q2FzZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYXNlcyI7czo3OiJvcHRpb25zIjthOjY6e3M6NzoiZmlsdGVycyI7YToxOntzOjEyOiJkYXRlX2VudGVyZWQiO2E6MDp7fX1zOjU6InRpdGxlIjtzOjE4OiJNaXMgQ2Fzb3MgQWJpZXJ0b3MiO3M6MTE6Im15SXRlbXNPbmx5IjtiOjA7czoxMToiZGlzcGxheVJvd3MiO3M6MjoiMTAiO3M6MTQ6ImRpc3BsYXlDb2x1bW5zIjthOjU6e2k6MDtzOjExOiJjYXNlX251bWJlciI7aToxO3M6NDoibmFtZSI7aToyO3M6Njoic3RhdHVzIjtpOjM7czoxMjoiZGF0ZV9lbnRlcmVkIjtpOjQ7czoxODoiYXNzaWduZWRfdXNlcl9uYW1lIjt9czoxMToiYXV0b1JlZnJlc2giO3M6MjoiMzAiO31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvQ2FzZXMvRGFzaGxldHMvTXlDYXNlc0Rhc2hsZXQvTXlDYXNlc0Rhc2hsZXQucGhwIjt9czozNjoiMTQ5NDhmN2QtYTZjNi1kNWZjLTA4MjctNTkxMWZjYzI5NzQ2IjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeVRhc2tzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiVGFza3MiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL1Rhc2tzL0Rhc2hsZXRzL015VGFza3NEYXNobGV0L015VGFza3NEYXNobGV0LnBocCI7fXM6MzY6IjE4ZjhkMjZmLTU4M2YtYWM5ZC1mMjAwLTU5MTQ2YjEzM2IwOCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlDb250YWN0c0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6IkNvbnRhY3RzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9Db250YWN0cy9EYXNobGV0cy9NeUNvbnRhY3RzRGFzaGxldC9NeUNvbnRhY3RzRGFzaGxldC5waHAiO319czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Mjp7aTowO3M6MzY6IjE0OTQ4ZjdkLWE2YzYtZDVmYy0wODI3LTU5MTFmY2MyOTc0NiI7aToxO3M6MzY6IjRiYjNiNTE2LTE4MGUtZWQ1MS0wMzdlLTU5MTFmYzgxMjhlMyI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YTozOntpOjA7czozNjoiOTg4MjdhNzItYzRmNS1hZWEyLWNjNjgtNTkxMWZjYzJiMzcyIjtpOjE7czozNjoiOTdmNDdmMTctNzk1Zi1iNzViLTUyNzUtNTkxMWZjMTBiNmU4IjtpOjI7czozNjoiMThmOGQyNmYtNTgzZi1hYzlkLWYyMDAtNTkxNDZiMTMzYjA4Ijt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjMiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('adbf238b-2c8a-5ef8-5022-59121f41e94a', 'Home2_SUGARFEED', 0, '2017-05-09 19:59:57', '2017-05-09 19:59:57', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ae1290cf-89ca-7525-b06f-5c1549ea34c1', 'Opportunities2_OPPORTUNITY', 0, '2018-12-15 18:37:42', '2018-12-24 15:51:20', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('af060b72-e56a-ce02-d114-5911fc6b559c', 'Home2_LEAD_99d5a552-f3ce-8b3b-af0f-5911fc48cf2c', 0, '2017-05-09 17:29:37', '2017-05-09 17:29:37', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('afc00b2d-6d5e-218b-2976-5c3c0e710c0e', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2019-01-14 04:23:00', '2019-01-14 04:23:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('aff09f44-6da0-797c-0f83-5c4b4d218473', 'Home2_CALL', 0, '2019-01-25 17:55:17', '2019-01-25 17:55:17', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b0dcbcbb-6671-dde2-5258-59441a395191', 'Home2_TASK', 0, '2017-06-16 17:49:17', '2017-06-16 17:49:17', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b148cd66-94c7-7d4a-fa62-5911fc541489', 'Home2_CALL', 0, '2017-05-09 17:29:32', '2017-05-09 17:29:32', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b16fe052-6346-f1af-498d-5c3cb003c3cf', 'ACLRoles2_ACLROLE', 0, '2019-01-14 15:53:26', '2019-01-14 15:53:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b1d0d04a-1317-f627-900e-59123739e711', 'Contacts2_CONTACT', 0, '2017-05-09 21:40:25', '2017-05-09 21:40:25', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b23783fd-714f-b444-055f-59e2872a085e', 'Home2_AOW_WORKFLOW_86b3108d-2d67-ba23-4aa4-59e2874', 0, '2017-10-14 21:55:28', '2017-10-14 21:55:28', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b255ff67-865d-4303-2878-5c4b4db3572c', 'Home2_MEETING', 0, '2019-01-25 17:55:17', '2019-01-25 17:55:17', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b2a78c84-bb4e-13b2-0f42-5911fc81819f', 'Home2_MEETING', 0, '2017-05-09 17:29:32', '2017-05-09 17:29:32', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b3581558-7f9e-df0f-7e71-5c3c0eb2c16e', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2019-01-14 04:23:00', '2019-01-14 04:23:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b3711c5f-8144-50cf-cf72-59306bf23e48', 'Contacts2_CONTACT', 0, '2017-06-01 19:33:04', '2017-06-01 19:33:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czo0OiJuYW1lIjtzOjk6InNvcnRPcmRlciI7czozOiJBU0MiO319'),
('b399a27c-b4d9-b180-9889-5900081688d0', 'global', 0, '2017-04-26 02:38:19', '2018-10-16 19:18:22', 'af9ce444-116c-4ece-ebd7-5900089ba8d9', 'YTozNTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7czoxNToiQW1lcmljYS9DYXJhY2FzIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIuIjtzOjc6ImRlY19zZXAiO3M6MToiLCI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiOyI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjM2OiJiMzdhM2RkOC04OWM5LTk0YmYtM2ZkMS01OTAwMDg2ZTU3MjMiO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),
('b3ea4f58-80c8-9d96-136b-5911fcc9704f', 'Home2_OPPORTUNITY', 0, '2017-05-09 17:29:32', '2017-05-09 17:29:32', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b47159e7-ebcd-db58-01f6-594419a7b9ff', 'global', 0, '2017-06-16 17:46:57', '2018-10-16 19:15:12', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YTozODp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjg6InRpbWV6b25lIjtzOjE1OiJBbWVyaWNhL0NhcmFjYXMiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6Ii4iO3M6NzoiZGVjX3NlcCI7czoxOiIsIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImI0NTQxOTg5LWUyMjctMTdhMy04Y2IzLTU5NDQxOTY4YzUzOCI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7czoxMDoiRW1wbG95ZWVzUSI7YToyMzp7czo2OiJtb2R1bGUiO3M6OToiRW1wbG95ZWVzIjtzOjY6ImFjdGlvbiI7czo1OiJpbmRleCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjE2OiJzdWdhcl91c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czozMjoiMTg0NDBhMWY1NWJhNDNiOWIxZDlhZGFiM2E4YjcxYTAiO3M6MjY6ImhqcjQ4OXE3NzBrbmRjcWxvMjkyNHZnNzIyIjtzOjMyOiJkMDJmYjM5M2Q1ZDlkOGUyZjVlMTkwZjBiMWRiZWNjYiI7czoyNjoiZzlwazZkdXNwN2tsMHViZ2w0OXYzM3NqODciO3M6MzI6ImNkMTIyMjM5ZTU5MDgyZWU5ZjM2ZDFlODlmMDczMGQ3IjtzOjI2OiJxZGI1MzIxMnJxbnRxdDJscHE3OGd0bmw4NiI7czozMjoiNDZiODI1OTA1OGMwYzQyNGRkY2RiNDk0YzFhMWYyNjMiO3M6MjY6ImVuc3RydGkwamNsN3AxbDdicGE4a2ljaGk0IjtzOjMyOiJkYzgzYTJiNzgzNjNiZmI0MTA2MDliYWVmNGE5MDkzZSI7czoyNjoiMnQwamM3aDI4ZXVoMHQzNm5qanFkNGp0MDYiO3M6MzI6IjU4NDY3NDJmODAyNmIyZjk0ZjY3Y2IzZjQ3YTFlOTg0IjtzOjI2OiI4NTc2ZmNkZ21lbmMxbW51Z3Bpcjk2aHBhMyI7czozMjoiNGIzMjU0NTRlOGU3YWQ2NjcxYWEwYzA1ZjdjOTIzOGQiO3M6NToiZXMtRVMiO3M6MzoiX2dhIjtzOjI3OiJHQTEuMi4xOTg1MjAzMTQ1LjE1MDQ3NDMxNTgiO3M6MzI6Ijc5YjExMjMyZmUwZmY4ZmY1ZDEwN2IwYzg5YzdhMGQwIjtzOjI2OiJldnVwN2xoMG51amZraTNwZWFxZWpmMXVrNCI7czozMjoiZGIxOGM2MjEwYTQ4YTFkZGI0MzFhNThjODAyOWMwMDkiO3M6MjY6IjAzdjByODU5cHBsY2l2azd0cnMwdm8xcGUxIjtzOjMyOiIzZGYwZTdmZTc3YjI1YTVhZjhmMmM1NmY0MjFjNmU3ZSI7czoyNjoicW01bmlkMHAycGQ2OTE4NTBnc2ZpZjQ5MjYiO3M6MzI6ImVmY2Y0YjhiNDc5NDA4NzhkMWE1YzVlZjFlOGE0YTU3IjtzOjI2OiI5cnZscGV2YTJ1NzMzZW4xYTQ5ajdvYnMxNSI7czozMjoiNTMwZTE1MDY2MWQ2NjY4YmQ2YzBjMjc4YzllZmI5NzMiO3M6MjY6Ijg3ZW1yZXFzZzVmbDV2ajR0aTAyYTIyNW0yIjtzOjMyOiIyOTI1OTRiMTI3ZmRlMGYwMzk0ODMyYWRkM2M5Yzc2ZSI7czoyNjoiY2lmNmZjcDE0Zm9iMW1oa2loazZicnR0MzciO3M6MzI6IjU4NGUwMTg5OTcwZmVlMDM4ZjVmYjI2ZmEyZjljNjFiIjtzOjI2OiJsaWlvdG51bm5qMXB1a3UydHFjbWV1azc1MCI7czozMjoiMmNmZjM2ZDg1ZjQ1YTQ5OWRhNzQ3NDIyN2MyYmUzMGIiO3M6MjY6InFmc3JqcmExdXB1dGJqOTFybTF1a2gyc3AwIjtzOjk6IlBIUFNFU1NJRCI7czoyNjoidWozYjdqOGNmNWpwZHNtaHI1NTY2YzUzMDIiO3M6MTQ6ImNrX2xvZ2luX2lkXzIwIjtzOjM2OiJhYTU1NjIzNy00YjFlLTU3ZWYtYjZhYi01OTQ0MTlmNzI3YjIiO3M6MjA6ImNrX2xvZ2luX2xhbmd1YWdlXzIwIjtzOjU6ImVzX0VTIjt9czo2OiJDYXNlc1EiO2E6NDI6e3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjY6Im1vZHVsZSI7czo1OiJDYXNlcyI7czo5OiJhamF4X2xvYWQiO3M6MToiMSI7czoxNDoibG9hZExhbmd1YWdlSlMiO3M6MToiMSI7czoxNjoic3VnYXJfdXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MzI6IjE4NDQwYTFmNTViYTQzYjliMWQ5YWRhYjNhOGI3MWEwIjtzOjI2OiJma3NqdnJsaXIwcjBwamNiMGUyaDFtZTl1MyI7czozMjoiY2QxMjIyMzllNTkwODJlZTlmMzZkMWU4OWYwNzMwZDciO3M6MjY6IjBoazhyM29tODlyMmlraHRsdW1kOXJkZjIzIjtzOjE0OiJja19sb2dpbl9pZF8yMCI7czozNjoiYWE1NTYyMzctNGIxZS01N2VmLWI2YWItNTk0NDE5ZjcyN2IyIjtzOjIwOiJja19sb2dpbl9sYW5ndWFnZV8yMCI7czo1OiJlc19FUyI7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6Nzoib3JkZXJCeSI7czowOiIiO3M6OToic29ydE9yZGVyIjtzOjA6IiI7czoxMDoibmFtZV9iYXNpYyI7czowOiIiO3M6MjM6ImN1cnJlbnRfdXNlcl9vbmx5X2Jhc2ljIjtzOjE6IjAiO3M6MTU6Im9wZW5fb25seV9iYXNpYyI7czoxOiIwIjtzOjIwOiJmYXZvcml0ZXNfb25seV9iYXNpYyI7czoxOiIwIjtzOjY6ImJ1dHRvbiI7czo2OiJCdXNjYXIiO3M6MTA6IkNhc2VzX2RpdnMiO3M6MTE6InVuZGVmaW5lZD0jIjtzOjEzOiJzaWRlYmFydG9nZ2xlIjtzOjg6ImV4cGFuZGVkIjtzOjMyOiJjYjE3NmMzYmE3YWU5MTY2YTM3MjAwMWYyZDk1NWI2MCI7czoyNjoidDMycG5yMDN0NG8zdWtibnB1bnVoOWc0NjQiO3M6MzI6Ijg5MDg4ZTY1MzIwZGMxYzI2Nzc1MjU0ZGYzNDhjMGEzIjtzOjI2OiJodXJhdnNyc3RjODVhc3BucXQ1YW05ajAyMCI7czozMjoiYzEyZDhjYzI2MjcyOTM2YjcxZWFhODRjMDZlM2E1YzIiO3M6MjY6ImRsM2ZqdXVoaTYwYTdna3UzNjc4ZHV1cmwzIjtzOjMyOiI0NmI4MjU5MDU4YzBjNDI0ZGRjZGI0OTRjMWExZjI2MyI7czoyNjoicnE1cmsxNDh2YjZjZmhyNWxxYTdpZml0MDEiO3M6MzI6ImVhMWE4MWYxMzZkYTRmMjA1ZjhkOTY2MzJlZGVlMGU4IjtzOjU6ImVzLUVTIjtzOjMyOiJkYzgzYTJiNzgzNjNiZmI0MTA2MDliYWVmNGE5MDkzZSI7czoyNjoiYW1objUxNjNoMWkyYTQwaGl1MzE2NGc1aDUiO3M6MzI6IjdhNjdiYzAwYWQwMGUyODcxMjk4MGE5Y2QzYmIyYzBhIjtzOjI2OiJvb21sNTE0ZWw5ZXM3YTU1bW83dmpqYjgyMiI7czozMjoiNTIzYzIxNmE1NTA1M2UyZTU4Y2NkNTZmODU1MmRjYTciO3M6MjY6IjJzZWt0OTZ0bTkzOWpvdnVxNjZzbW5ydXAzIjtzOjMyOiIxNjhjNzQyODg2MDkwYmJhZWI2NzVjMzM4MzU2Y2UzMSI7czoyNjoibDV2cGU1bGFwb3I5bG0yMjM2cWtjNTFqdTEiO3M6MzI6ImQwMmZiMzkzZDVkOWQ4ZTJmNWUxOTBmMGIxZGJlY2NiIjtzOjI2OiJpMDhyYnJhY2w2cm5qZGtpNzBkY2MyM2hpMCI7czoxNzoiY2tfbG9naW5fdGhlbWVfMjAiO3M6NjoiU3VpdGVQIjtzOjY6Il9fdXRtYSI7czo1NToiMTA1OTI1ODk0LjQ0NDQ3MjQ0Ni4xNDk2Njc0Mzc3LjE0OTczNTQ0NTQuMTQ5OTE3MjA3MS4xOCI7czo2OiJfX3V0bWMiO3M6OToiMTA1OTI1ODk0IjtzOjY6Il9fdXRteiI7czo3MDoiMTA1OTI1ODk0LjE0OTY2NzQzNzcuMS4xLnV0bWNzcj0oZGlyZWN0KXx1dG1jY249KGRpcmVjdCl8dXRtY21kPShub25lKSI7czozMjoiNjI1NGZiOWYxZjE1YjAwYTMyYTcyNzhlMWNlYzk2OWYiO3M6MjY6InZzamlqNXJrMGo1bW03cmFtbG4xYTMzYzExIjtzOjMyOiJjYWI4MDEyYjQ0NTE1ZWU1ZmQyMjVhNWVlZGZhNTFiZSI7czoyNjoiN2tudGJycHFtMjAzbHFuc2JpZzY2bmwyYTAiO3M6MzI6ImE1MDA3OWFmNjM1YjI2YTFmYWY2OTRkNjJiYWUzMWQ1IjtzOjI2OiI2NGRoc3A4aXUwZjNka3NtMDJ0MTYxanJtNyI7czozMjoiMjkyNTk0YjEyN2ZkZTBmMDM5NDgzMmFkZDNjOWM3NmUiO3M6MjY6ImRsMnZvbDhwOWZmcWtya3NhYjNjZWJuM3YxIjtzOjMyOiIwNzhkMDQ0NzlkZmQ2ZGIwMjg4Njg0OTlkMTdjNjYxMSI7czoyNjoiZXBlZmlwdWU2b2tlN2wxdmJzMHZvcmUzYjYiO3M6MzI6Ijg2YjJhYWJjNTk4MTkzZWYyOGMzOGEyNThiMzgxNjA3IjtzOjI2OiJxZmUxN2xlamkyNzE3aHNkcTljdDdsZjU3MSI7czozMjoiZjc1MzI4NzQ5M2VlYjI1NjhjZjdiNDEzMDk0ZDE2ZTIiO3M6MjY6IjJuZTVnYjdtZm1ybGVrcjkxM2FxbWN0bDI3IjtzOjg6InRpbWV6b25lIjtzOjE3OiJBbWVyaWNhL1Nhb19QYXVsbyI7fX0='),
('b49f4526-03fd-f5e9-a5eb-5c4b4dba72c7', 'Home2_OPPORTUNITY', 0, '2019-01-25 17:55:17', '2019-01-25 17:55:17', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b52dc1f2-b14b-c8d5-9453-5911fcc5da47', 'Home2_ACCOUNT', 0, '2017-05-09 17:29:32', '2017-05-09 17:29:32', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b6327574-9901-3b51-2703-5c4b4d403006', 'Home2_ACCOUNT', 0, '2019-01-25 17:55:17', '2019-01-25 17:55:17', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b65583ad-278e-f4ef-03a0-5c3a90dee3df', 'Employees2_EMPLOYEE', 0, '2019-01-13 01:11:18', '2019-01-13 01:11:18', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b67efeda-1bbb-ed39-85fb-5911fc201446', 'Home2_LEAD', 0, '2017-05-09 17:29:32', '2017-05-09 17:29:32', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b7c0281f-1d4d-852e-bc0b-5911fcf04b6c', 'Home2_SUGARFEED', 0, '2017-05-09 17:29:32', '2017-05-09 17:29:32', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b7d9fc8b-0d8e-57d4-612d-5c4b4da42c6a', 'Home2_LEAD', 0, '2019-01-25 17:55:17', '2019-01-25 17:55:17', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b84c5ad3-a44c-66e1-a194-59f881dba08d', 'AM_ProjectTemplates2_AM_PROJECTTEMPLATES', 0, '2017-10-31 13:58:38', '2017-10-31 13:58:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b8c6d6e6-5daa-2b40-798e-5bc3f72493e0', 'Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_834416ec-4323-', 0, '2018-10-15 02:11:47', '2018-10-15 02:11:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b99fc5b1-ed89-c447-c029-5c4b4d6e192f', 'Home2_SUGARFEED', 0, '2019-01-25 17:55:17', '2019-01-25 17:55:17', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b9c046e6-0cd3-dd9e-3201-5bc3f795dd50', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2018-10-15 02:11:47', '2018-10-15 02:11:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('b9caf8df-4ff5-b06b-a5f8-590011059a7e', 'ACLRoles2_ACLROLE', 0, '2017-04-26 03:16:31', '2017-04-26 03:16:31', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ba3be529-0745-32d0-2155-59e8d0e0e25d', 'global', 0, '2017-10-19 16:17:43', '2018-10-16 19:12:43', 'b3d0d241-25b1-54b6-fc8e-59e8d0d9bb10', 'YTozNTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoxMzoic3VicGFuZWxfdGFicyI7czoyOiJvbiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJ0aW1lem9uZSI7czoxNToiQW1lcmljYS9DYXJhY2FzIjtzOjI6InV0IjtzOjE6IjAiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIuIjtzOjc6ImRlY19zZXAiO3M6MToiLCI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToiZC9tL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MjA6ImNhbGVuZGFyX3B1Ymxpc2hfa2V5IjtzOjM2OiJiYTFhOTY1Yi1jNWJjLWQzM2ItNmMwYS01OWU4ZDA1YWY1OTAiO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),
('ba51f22c-40d3-6b1e-a926-5bc3f76e61f0', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2018-10-15 02:11:47', '2018-10-15 02:11:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('baa6d0b6-6433-7181-9d13-5911fbe8ceec', 'Home2_CASE_f25edb14-ef23-67fa-99cc-5911fb6443b5', 0, '2017-05-09 17:24:15', '2017-05-09 17:24:15', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bac2715d-2c33-508c-c65f-59442c0529d5', 'Employees2_EMPLOYEE', 0, '2017-06-16 19:08:14', '2017-06-16 19:08:14', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bae489bc-2868-5ed1-75c4-5bc3f7673917', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2018-10-15 02:11:47', '2018-10-15 02:11:47', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bb0ba63d-b0a2-ae44-eb8f-590010de63c9', 'Home', 0, '2017-04-26 03:12:04', '2019-01-13 00:59:27', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6ImE0NzE4NjE2LTc4ODItMGQ5NC1mYjE3LTU5MDAxMDlkMmVkYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImE1MTVhNTZmLWQ5MWYtYTdhOS01M2Y3LTU5MDAxMDI2OWEzYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjdkZjJmZTYxLTI1NmMtYzdmNy1hZDNjLTVhMTk2NTA0ODlmNiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyMDoiTXlQcm9qZWN0VGFza0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjExOiJQcm9qZWN0VGFzayI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NzQ6Im1vZHVsZXMvUHJvamVjdFRhc2svRGFzaGxldHMvTXlQcm9qZWN0VGFza0Rhc2hsZXQvTXlQcm9qZWN0VGFza0Rhc2hsZXQucGhwIjt9czozNjoiZWYyOThkNGYtZTQ5ZS0yOWY2LWJlZTQtNWExOTY1ZjlkM2FlIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeVRhc2tzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiVGFza3MiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL1Rhc2tzL0Rhc2hsZXRzL015VGFza3NEYXNobGV0L015VGFza3NEYXNobGV0LnBocCI7fXM6MzY6ImUyNDhjZDkwLTlhNWMtYTM2Yi0yZjE5LTViM2VkNzZjMjU2OSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxOToiQU9XX1dvcmtGbG93RGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTI6IkFPV19Xb3JrRmxvdyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NzM6Im1vZHVsZXMvQU9XX1dvcmtGbG93L0Rhc2hsZXRzL0FPV19Xb3JrRmxvd0Rhc2hsZXQvQU9XX1dvcmtGbG93RGFzaGxldC5waHAiO31zOjM2OiJmMjcyZjdkMy01ZmEzLThhNjctYjA0OS01YmIyMjNmNmQyMDgiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTc6IkFPUlJlcG9ydHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMToiQU9SX1JlcG9ydHMiO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY4OiJtb2R1bGVzL0FPUl9SZXBvcnRzL0Rhc2hsZXRzL0FPUlJlcG9ydHNEYXNobGV0L0FPUlJlcG9ydHNEYXNobGV0LnBocCI7fXM6MzY6ImM1ODkzZDAwLTc5ZWEtYTE2NS00OWM5LTViYjIyM2NiZTkxOCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiamp3Z19BcmVhc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEwOiJqandnX0FyZWFzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2NzoibW9kdWxlcy9qandnX0FyZWFzL0Rhc2hsZXRzL2pqd2dfQXJlYXNEYXNobGV0L2pqd2dfQXJlYXNEYXNobGV0LnBocCI7fXM6MzY6IjllMWEwYTM4LTUxNzAtNWNmYy1mNjY4LTVjM2E3Y2JiZTgzOCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyMzoiQ2FtcGFpZ25ST0lDaGFydERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IkNhbXBhaWducyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NzU6Im1vZHVsZXMvQ2hhcnRzL0Rhc2hsZXRzL0NhbXBhaWduUk9JQ2hhcnREYXNobGV0L0NhbXBhaWduUk9JQ2hhcnREYXNobGV0LnBocCI7fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTo4OntpOjA7czozNjoiN2RmMmZlNjEtMjU2Yy1jN2Y3LWFkM2MtNWExOTY1MDQ4OWY2IjtpOjE7czozNjoiYTUxNWE1NmYtZDkxZi1hN2E5LTUzZjctNTkwMDEwMjY5YTNjIjtpOjI7czozNjoiOWUxYTBhMzgtNTE3MC01Y2ZjLWY2NjgtNWMzYTdjYmJlODM4IjtpOjM7czozNjoiYzU4OTNkMDAtNzllYS1hMTY1LTQ5YzktNWJiMjIzY2JlOTE4IjtpOjQ7czozNjoiZjI3MmY3ZDMtNWZhMy04YTY3LWIwNDktNWJiMjIzZjZkMjA4IjtpOjU7czozNjoiZTI0OGNkOTAtOWE1Yy1hMzZiLTJmMTktNWIzZWQ3NmMyNTY5IjtpOjY7czozNjoiZWYyOThkNGYtZTQ5ZS0yOWY2LWJlZTQtNWExOTY1ZjlkM2FlIjtpOjc7czozNjoiYTQ3MTg2MTYtNzg4Mi0wZDk0LWZiMTctNTkwMDEwOWQyZWRjIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjE6e2k6MDtzOjA6IiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('bcf1990e-1f7d-0598-1362-5911faf0e472', 'Home', 0, '2017-05-09 17:22:07', '2017-11-25 12:47:54', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImE4NTZkMThhLWNkNGItYmI3YS0yODg0LTU5MTFmYTBmNWZhZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImE4ZTFjOTgxLWNmZTUtZTY0OC1hMDQ1LTU5MTFmYTEyNGRkMSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjJlZTFjZDE1LTk1ZjktODFmMS1hY2EwLTU5MTFmYmQ1OThhYiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlUYXNrc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IlRhc2tzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9UYXNrcy9EYXNobGV0cy9NeVRhc2tzRGFzaGxldC9NeVRhc2tzRGFzaGxldC5waHAiO31zOjM2OiJmMjVlZGIxNC1lZjIzLTY3ZmEtOTljYy01OTExZmI2NDQzYjUiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15Q2FzZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJDYXNlcyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvQ2FzZXMvRGFzaGxldHMvTXlDYXNlc0Rhc2hsZXQvTXlDYXNlc0Rhc2hsZXQucGhwIjt9czozNjoiOTRlMWVjZGItNzhhOS02MjUzLTMxZTUtNWExOTY2YzMyNzAxIjthOjQ6e3M6OToiY2xhc3NOYW1lIjtzOjE2OiJNeVByb2plY3REYXNobGV0IjtzOjY6Im1vZHVsZSI7czo3OiJQcm9qZWN0IjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2MjoibW9kdWxlcy9Qcm9qZWN0L0Rhc2hsZXRzL015UHJvamVjdERhc2hsZXQvTXlQcm9qZWN0RGFzaGxldC5waHAiO31zOjM2OiJjY2EyNTQ1ZS1mNjg4LTAzNTUtMWEyMy01YTE5NjY5YWI5N2YiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MjA6Ik15UHJvamVjdFRhc2tEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMToiUHJvamVjdFRhc2siO3M6Nzoib3B0aW9ucyI7YTowOnt9czoxMjoiZmlsZUxvY2F0aW9uIjtzOjc0OiJtb2R1bGVzL1Byb2plY3RUYXNrL0Rhc2hsZXRzL015UHJvamVjdFRhc2tEYXNobGV0L015UHJvamVjdFRhc2tEYXNobGV0LnBocCI7fX1zOjU6InBhZ2VzIjthOjE6e2k6MDthOjM6e3M6NzoiY29sdW1ucyI7YToyOntpOjA7YToyOntzOjU6IndpZHRoIjtzOjM6IjYwJSI7czo4OiJkYXNobGV0cyI7YTozOntpOjA7czozNjoiYThlMWM5ODEtY2ZlNS1lNjQ4LWEwNDUtNTkxMWZhMTI0ZGQxIjtpOjE7czozNjoiOTRlMWVjZGItNzhhOS02MjUzLTMxZTUtNWExOTY2YzMyNzAxIjtpOjI7czozNjoiY2NhMjU0NWUtZjY4OC0wMzU1LTFhMjMtNWExOTY2OWFiOTdmIjt9fWk6MTthOjI6e3M6NToid2lkdGgiO3M6MzoiNDAlIjtzOjg6ImRhc2hsZXRzIjthOjM6e2k6MDtzOjM2OiJhODU2ZDE4YS1jZDRiLWJiN2EtMjg4NC01OTExZmEwZjVmYWUiO2k6MTtzOjM2OiIyZWUxY2QxNS05NWY5LTgxZjEtYWNhMC01OTExZmJkNTk4YWIiO2k6MjtzOjM2OiJmMjVlZGIxNC1lZjIzLTY3ZmEtOTljYy01OTExZmI2NDQzYjUiO319fXM6MTA6Im51bUNvbHVtbnMiO3M6MToiMyI7czoxNDoicGFnZVRpdGxlTGFiZWwiO3M6MjA6IkxCTF9IT01FX1BBR0VfMV9OQU1FIjt9fX0='),
('bd2c67fd-3e0a-b5f7-abfd-594d57482019', 'ETag', 0, '2017-06-23 18:02:41', '2017-07-03 20:32:27', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),
('bd743cb5-b5c1-3409-b3d1-5c3cb178f71d', 'global', 0, '2019-01-14 15:57:20', '2019-02-27 22:53:27', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YTozNjp7czo4OiJ0aW1lem9uZSI7czoxOToiQW1lcmljYS9Mb3NfQW5nZWxlcyI7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZTciO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtzOjQ6IjE4MDAiO3M6MTk6ImVtYWlsX3JlbWluZGVyX3RpbWUiO3M6NDoiMzYwMCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlBIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo0OiJsLCBmIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czowOiIiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjtzOjEwOiJFbXBsb3llZXNRIjthOjM6e3M6NjoibW9kdWxlIjtzOjk6IkVtcGxveWVlcyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6NToicXVlcnkiO3M6NDoidHJ1ZSI7fXM6MjU6IkNvbnRhY3RzX0NPTlRBQ1RfT1JERVJfQlkiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),
('bdf27ceb-4916-9d06-2c82-5a1966883fcd', 'Home2_PROJECT_94e1ecdb-78a9-6253-31e5-5a1966c32701', 0, '2017-11-25 12:47:05', '2017-11-25 12:47:05', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bed4d492-8049-48e6-6bc8-5b291ec616c2', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2018-06-19 15:16:53', '2018-06-19 15:16:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('bfdeb10e-724d-f62f-748c-590014a2e744', 'Users2_USER', 0, '2017-04-26 03:32:03', '2017-04-26 03:32:03', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c06b6b20-5d0a-3d05-cfa1-5911fa7d8a6b', 'Home2_CALL', 0, '2017-05-09 17:22:07', '2017-05-09 17:22:07', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c30a2fad-2139-db27-9df8-5911fabc309e', 'Home2_MEETING', 0, '2017-05-09 17:22:07', '2017-05-09 17:22:07', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c39e00b5-2bc8-824c-f54a-5bdfcde1eb93', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2018-11-05 04:57:59', '2018-11-05 04:57:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c593935d-6b44-4f99-234b-590018ba58eb', 'Employees2_EMPLOYEE', 0, '2017-04-26 03:47:32', '2017-04-26 03:47:32', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c5adb101-9e5a-164c-8885-5911fa70e476', 'Home2_OPPORTUNITY', 0, '2017-05-09 17:22:07', '2017-05-09 17:22:07', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c6a7b386-219f-eef8-1573-5900105b53fc', 'Home2_CALL', 0, '2017-04-26 03:12:04', '2017-04-26 03:12:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c6e22852-ab33-a3dc-38a1-5c414bc0c79e', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2019-01-18 03:46:07', '2019-01-18 03:46:07', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c6e8b6bf-e8fb-c92e-4ce1-5c3c15093d4a', 'ETag', 0, '2019-01-14 04:50:14', '2019-01-14 22:23:57', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),
('c724b569-3017-aaaf-abcd-59121f45d7b8', 'Home2_LEAD_cef7ddf3-06cf-a370-1633-59121fa5387f', 0, '2017-05-09 19:58:04', '2017-05-09 19:58:04', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c7436cb7-4c06-17c3-ed98-5911fa7e3e25', 'Home2_ACCOUNT', 0, '2017-05-09 17:22:07', '2017-05-09 17:22:07', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c82cf341-0a62-43cc-225c-590010d833b5', 'Home2_MEETING', 0, '2017-04-26 03:12:04', '2017-04-26 03:12:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c8cd00a0-82ad-413d-349b-5a196509338c', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-11-25 12:42:53', '2017-11-25 12:42:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c8cec6d4-9a5a-be34-882a-595aa0120af8', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-07-03 19:54:00', '2017-07-03 19:54:00', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c918507a-de23-8408-38dd-5911faad544a', 'Home2_LEAD', 0, '2017-05-09 17:22:07', '2017-05-09 17:22:07', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c95e809b-cc12-3eda-842f-590010aa2c9c', 'Home2_OPPORTUNITY', 0, '2017-04-26 03:12:04', '2017-04-26 03:12:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c9a97e40-db65-60ea-927c-59e02bc0ecba', 'Home2_AOS_CONTRACTS_54878fcc-33a4-eab4-655c-595a9a', 0, '2017-10-13 02:56:58', '2017-10-13 02:56:58', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ca41c599-ed86-a974-fb5d-59c285dce9c1', 'ETag', 0, '2017-09-20 15:11:07', '2017-09-20 18:14:45', 'dbf08c04-55a1-4483-c483-59c27e44f4a4', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mzt9'),
('ca93cd11-af51-c33e-86ec-5911fa4bc612', 'Home2_SUGARFEED', 0, '2017-05-09 17:22:07', '2017-05-09 17:22:07', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cab6ad42-bea0-6c25-2e0a-590010419bf1', 'Home2_ACCOUNT', 0, '2017-04-26 03:12:04', '2017-04-26 03:12:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('caee58bf-6805-c298-d0ba-59d4d8f75a9d', 'Employees2_EMPLOYEE', 0, '2017-10-04 12:48:20', '2017-10-04 12:48:20', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cb784f31-87a4-0eac-6cd6-5a19650cf8b1', 'Home2_AOW_WORKFLOW_86b3108d-2d67-ba23-4aa4-59e2874', 0, '2017-11-25 12:42:53', '2017-11-25 12:42:53', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cb978c45-b3c2-5685-091e-5a19668fb461', 'Home2_PROJECTTASK_cca2545e-f688-0355-1a23-5a19669a', 0, '2017-11-25 12:47:14', '2017-11-25 12:47:14', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cbf59bd3-c451-b92d-ee21-59001044f63b', 'Home2_LEAD', 0, '2017-04-26 03:12:04', '2017-04-26 03:12:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ccf50a97-2d4e-9fcf-fd63-5911fb274ce6', 'Home2_TASK', 0, '2017-05-09 17:23:29', '2017-05-09 17:23:29', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cd2ff93e-11b5-e357-4604-5900105933fd', 'Home2_SUGARFEED', 0, '2017-04-26 03:12:04', '2017-04-26 03:12:04', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cda84954-f76e-5392-3a8d-593094e61cb6', 'Cases2_CASE', 0, '2017-06-01 22:27:30', '2017-06-25 13:27:20', '392003a9-b9b0-05cf-1c16-5911f5143e69', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMToiY2FzZV9udW1iZXIiO3M6OToic29ydE9yZGVyIjtzOjM6IkFTQyI7fX0='),
('ce9e9a53-b558-a09d-56bf-5c154a2493f9', 'Campaigns2_CAMPAIGN', 0, '2018-12-15 18:38:07', '2018-12-15 18:38:07', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ced50807-fac7-d6a7-a9a9-59e28728d9bc', 'Home2_AOW_WORKFLOW', 0, '2017-10-14 21:55:27', '2017-10-14 21:55:27', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cf4aac12-420a-1ee9-23d6-59121f50b6fa', 'Home2_TASK', 0, '2017-05-09 19:59:03', '2017-05-09 19:59:03', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('cf880639-b3e2-0d23-3099-5c153cc397f3', 'Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_834416ec-4323-', 0, '2018-12-15 17:41:57', '2018-12-15 17:41:57', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('d01bef49-47f2-ec1d-4539-5bb3950d2f9d', 'Home2_AOK_KNOWLEDGE_BASE_CATEGORIES_834416ec-4323-', 0, '2018-10-02 15:59:20', '2018-10-02 15:59:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d03ad66f-e0c1-e160-d0de-59e02d599590', 'Meetings2_MEETING', 0, '2017-10-13 03:06:48', '2017-10-13 03:06:48', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d0d20f94-234b-dcfc-559b-59a971934466', 'Home2_AOW_PROCESSED_e57487df-c4a0-da01-23b7-595aad', 0, '2017-09-01 14:40:44', '2017-09-01 14:40:44', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d115dfe5-54ff-d6d9-067a-5bb3955feb21', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2018-10-02 15:59:20', '2018-10-02 15:59:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d1c8177b-8ef7-b367-b595-5bb3952e4160', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2018-10-02 15:59:20', '2018-10-02 15:59:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d2661288-ea6c-c922-18a1-5bb395b06ee3', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2018-10-02 15:59:20', '2018-10-02 15:59:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d29ca74e-80c2-c29c-0f23-5bb2223cc3f2', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2018-10-01 13:36:38', '2018-10-01 13:36:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d32c4519-86af-0c74-a0e3-5c414b571b4b', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2019-01-18 03:46:07', '2019-01-18 03:46:07', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d36c24aa-9b50-c122-5e59-5bb2221d529b', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2018-10-01 13:36:38', '2018-10-01 13:36:38', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d43e4519-2b26-d254-c2f6-5c416690e50a', 'ETag', 0, '2019-01-18 05:40:59', '2019-02-05 23:04:30', 'd2bdb929-b744-c504-4d8b-5c3caf9f68b9', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6NTt9'),
('d5866b40-6277-bab0-a2a5-5c414b4f897f', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2019-01-18 03:46:07', '2019-01-18 03:46:07', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d5ada20b-bf24-f75c-bca9-594d556b47ae', 'global', 0, '2017-06-23 17:51:56', '2018-10-16 19:14:32', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YTozNjp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjg6InRpbWV6b25lIjtzOjE1OiJBbWVyaWNhL0NhcmFjYXMiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6Ii4iO3M6NzoiZGVjX3NlcCI7czoxOiIsIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImQ1OTI2ZjUzLWY2ZTQtYTRlZi0zZGUyLTU5NGQ1NTFjNjU0NSI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7fQ=='),
('d5f7df21-e075-6295-f284-59e02d28baf0', 'Leads2_LEAD', 0, '2017-10-13 03:06:26', '2017-10-13 03:06:26', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d6093172-6a43-3b69-5ede-594d578e28ab', 'Home', 0, '2017-06-23 18:02:42', '2017-06-23 18:02:42', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImI0NjFiMjE5LWQzODktMDllNC02ZTg0LTU5NGQ1NzYwYmJlNCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImI0ZGUwNjg5LTA2NTQtZWE1OS04NGRiLTU5NGQ1NzgzMjcwOCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImI1NjE0MzU1LTM0MmMtMWMyMS1kYTFhLTU5NGQ1NzI0MDFmYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImI1YjdkMjRmLTMyMGItZjZmZS1hYTc4LTU5NGQ1NzZkYjc4OSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYjYyODA4ZDctMWU0MS1iZWJlLTllMDQtNTk0ZDU3YzA1MGNjIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYjZhYzIzOTMtOTUwNi1kM2JlLTZlODctNTk0ZDU3ZWZiOGVhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJiNGRlMDY4OS0wNjU0LWVhNTktODRkYi01OTRkNTc4MzI3MDgiO2k6MTtzOjM2OiJiNTYxNDM1NS0zNDJjLTFjMjEtZGExYS01OTRkNTcyNDAxZmMiO2k6MjtzOjM2OiJiNWI3ZDI0Zi0zMjBiLWY2ZmUtYWE3OC01OTRkNTc2ZGI3ODkiO2k6MztzOjM2OiJiNjI4MDhkNy0xZTQxLWJlYmUtOWUwNC01OTRkNTdjMDUwY2MiO2k6NDtzOjM2OiJiNmFjMjM5My05NTA2LWQzYmUtNmU4Ny01OTRkNTdlZmI4ZWEiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImI0NjFiMjE5LWQzODktMDllNC02ZTg0LTU5NGQ1NzYwYmJlNCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('d72e9b50-fdde-229c-ff78-59121f75e28d', 'Home2_LEAD_95ca8982-1321-16a5-9440-59121f5edbd3', 0, '2017-05-09 19:59:58', '2017-05-09 19:59:58', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d79975b8-cef1-dec9-a338-59d4d8d422d9', 'ACLRoles2_ACLROLE', 0, '2017-10-04 12:48:45', '2017-10-04 12:48:45', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d85b0bc8-d1f5-06b8-a7ec-5bdfcdd1588a', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2018-11-05 04:57:59', '2018-11-05 04:57:59', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d87a5313-2ffd-3293-0e4a-594d570286b8', 'Home2_CALL', 0, '2017-06-23 18:02:42', '2017-06-23 18:02:42', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d87f1a58-7b6f-ed87-638e-5995e4ea97b8', 'Home2_AOK_KNOWLEDGEBASE_25bd6881-94d2-1c6e-baf9-59', 0, '2017-08-17 18:45:18', '2017-08-17 18:45:18', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d8d1a671-84cc-3fc5-08a6-59121f424a31', 'Home2_TASK', 0, '2017-05-09 19:57:12', '2017-05-09 19:57:12', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d9ac9814-10e4-7770-78cc-594d57d6ebc9', 'Home2_MEETING', 0, '2017-06-23 18:02:42', '2017-06-23 18:02:42', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('d9fd9a7d-7f60-db89-c8d6-5c3d0dbe444a', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2019-01-14 22:32:12', '2019-01-14 22:32:12', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('da5c0999-f8a0-fe1a-6f8e-5912348e3d2c', 'Meetings2_MEETING', 0, '2017-05-09 21:28:19', '2017-05-09 21:28:19', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dac922ac-e1ab-d23f-12d9-594d57c9f878', 'Home2_OPPORTUNITY', 0, '2017-06-23 18:02:42', '2017-06-23 18:02:42', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dbac261c-b344-ee3f-9231-595fed4c6efa', 'Home2_AOK_KNOWLEDGEBASE_25bd6881-94d2-1c6e-baf9-59', 0, '2017-07-07 20:20:52', '2017-07-07 20:20:52', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dbdda1c3-54e4-fca0-b15a-5a1965764e6a', 'Home2_PROJECTTASK_7df2fe61-256c-c7f7-ad3c-5a196504', 0, '2017-11-25 12:44:07', '2017-11-25 12:44:07', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dbf64dbc-5465-7b95-1b3e-594d577f91e8', 'Home2_ACCOUNT', 0, '2017-06-23 18:02:42', '2017-06-23 18:02:42', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('dd14da63-f147-c062-117e-594d57ea03cc', 'Home2_LEAD', 0, '2017-06-23 18:02:42', '2017-06-23 18:02:42', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ddbaa95a-c63f-7398-4ad3-59146bd5426c', 'Home2_CONTACT_18f8d26f-583f-ac9d-f200-59146b133b08', 0, '2017-05-11 13:46:20', '2017-05-11 13:46:20', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('de378bab-0021-e255-af7c-594d57775524', 'Home2_SUGARFEED', 0, '2017-06-23 18:02:42', '2017-06-23 18:02:42', 'cf6410f0-e40d-f9e6-14cb-594d55057db3', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('df377462-d435-e7a1-4726-5c3d0c5033fb', 'Home2_LEAD_c2e4928d-c092-fefb-79ce-5c3d0cf9e91b', 0, '2019-01-14 22:24:13', '2019-01-14 22:24:13', '6fb285d6-48db-42b6-79d6-5c3a917a604a', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('df4faa21-a05a-5cb2-c72c-595feda85bc2', 'Home2_AOW_PROCESSED_e57487df-c4a0-da01-23b7-595aad', 0, '2017-07-07 20:20:52', '2017-07-07 20:20:52', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e04a2009-cdcb-24da-908b-5bb223cf21d5', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2018-10-01 13:39:50', '2018-10-01 13:39:50', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e04c5ee2-e358-a119-3373-5c3d0d532be2', 'Home2_JJWG_AREAS_c5893d00-79ea-a165-49c9-5bb223cbe', 0, '2019-01-14 22:32:12', '2019-01-14 22:32:12', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e0729bfd-5094-eaf5-4736-59121fb7a35f', 'Home2_CASE_97032690-b68e-bb5c-384c-59121f245924', 0, '2017-05-09 19:58:45', '2017-05-09 19:58:45', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e1d6d03f-9821-7df9-7a73-5c3d0d4ce91d', 'Home2_AOW_WORKFLOW_e248cd90-9a5c-a36b-2f19-5b3ed76', 0, '2019-01-14 22:32:12', '2019-01-14 22:32:12', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e227b8fe-4ea6-118a-a079-594419931a07', 'ETag', 0, '2017-06-16 17:47:45', '2017-06-23 17:32:16', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),
('e325165c-11af-d9de-adc7-59121f909213', 'Home', 0, '2017-05-09 19:58:02', '2017-05-09 19:59:32', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjQ6e3M6MzY6ImNkMDdkOWYyLTkyOWEtMjBjZC1hNTZkLTU5MTIxZjZkNDBjYiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImNkOWI1ZGNlLTZkMTgtMTBjMi03Yjc1LTU5MTIxZjEwNTZiMiI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6Ijk3MDMyNjkwLWI2OGUtYmI1Yy0zODRjLTU5MTIxZjI0NTkyNCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYXNlc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhc2VzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYXNlcy9EYXNobGV0cy9NeUNhc2VzRGFzaGxldC9NeUNhc2VzRGFzaGxldC5waHAiO31zOjM2OiI4NWNmZjcwZC02NTk4LTY1MTMtZjU2ZC01OTEyMWZhNmI4YTciO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15VGFza3NEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJUYXNrcyI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvVGFza3MvRGFzaGxldHMvTXlUYXNrc0Rhc2hsZXQvTXlUYXNrc0Rhc2hsZXQucGhwIjt9fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjI6e2k6MDtzOjM2OiI4NWNmZjcwZC02NTk4LTY1MTMtZjU2ZC01OTEyMWZhNmI4YTciO2k6MTtzOjM2OiI5NzAzMjY5MC1iNjhlLWJiNWMtMzg0Yy01OTEyMWYyNDU5MjQiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6Mjp7aTowO3M6MzY6ImNkOWI1ZGNlLTZkMTgtMTBjMi03Yjc1LTU5MTIxZjEwNTZiMiI7aToxO3M6MzY6ImNkMDdkOWYyLTkyOWEtMjBjZC1hNTZkLTU5MTIxZjZkNDBjYiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),
('e45506d5-5b29-a637-6b3e-5995e4b2ae15', 'Home2_AOW_PROCESSED_e57487df-c4a0-da01-23b7-595aad', 0, '2017-08-17 18:45:18', '2017-08-17 18:45:18', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e55f924c-505f-1ea3-150a-59121f92b7cc', 'ETag', 0, '2017-05-09 19:59:56', '2017-05-09 20:05:18', '80343642-e355-1c38-662f-59121e97591e', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),
('e5ead67f-5694-e849-939f-59121f9c0bf1', 'Home2_CALL', 0, '2017-05-09 19:58:02', '2017-05-09 19:58:02', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e5f1cb86-b01d-be00-8420-59441a5b9493', 'Accounts2_ACCOUNT', 0, '2017-06-16 17:51:03', '2017-06-16 17:51:03', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e6a38d3a-b34b-378f-84c2-59121dce36bc', 'global', 0, '2017-05-09 19:52:21', '2018-10-16 19:17:09', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YTozNzp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWl0ZVAiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjc6Im5vX29wcHMiO3M6Mzoib2ZmIjtzOjEzOiJyZW1pbmRlcl90aW1lIjtpOjE4MDA7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTozNjAwO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjg6InRpbWV6b25lIjtzOjE1OiJBbWVyaWNhL0NhcmFjYXMiO3M6MjoidXQiO3M6MToiMSI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6Ii4iO3M6NzoiZGVjX3NlcCI7czoxOiIsIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJkL20vWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6ImU2ODExMzVjLTgyMmQtM2RmOS1hYmYwLTU5MTIxZDZjNjhiMyI7czoxNToibG9naW5leHBpcmF0aW9uIjtzOjE6IjAiO3M6NzoibG9ja291dCI7czowOiIiO3M6MTE6ImxvZ2luZmFpbGVkIjtzOjE6IjAiO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6NDoiVG9kbyI7czoxMDoiRW1wbG95ZWVzUSI7YTo5OntzOjY6Im1vZHVsZSI7czo5OiJFbXBsb3llZXMiO3M6NjoiYWN0aW9uIjtzOjU6ImluZGV4IjtzOjU6InF1ZXJ5IjtzOjQ6InRydWUiO3M6MTY6InN1Z2FyX3VzZXJfdGhlbWUiO3M6NjoiU3VpdGVQIjtzOjMyOiIxODQ0MGExZjU1YmE0M2I5YjFkOWFkYWIzYThiNzFhMCI7czoyNjoiZW1yMDdnM2dnNnM2dmZxZjRrN2V2ZW01MzMiO3M6MTc6ImxvZ2luRXJyb3JNZXNzYWdlIjtzOjE5OiJMQkxfU0VTU0lPTl9FWFBJUkVEIjtzOjk6IlBIUFNFU1NJRCI7czoyNjoibXFiamdzNTc5YTc1czdhZDM0Y2NqdXJxcTUiO3M6MTQ6ImNrX2xvZ2luX2lkXzIwIjtzOjM2OiJlMTVmNzg5NS1kNzU5LWUxMGQtZTZkNC01OTEyMWQxM2JlYjAiO3M6MjA6ImNrX2xvZ2luX2xhbmd1YWdlXzIwIjtzOjU6ImVzX0VTIjt9fQ=='),
('e73325de-7f48-ca10-2017-59121fdcaadc', 'Home2_MEETING', 0, '2017-05-09 19:58:02', '2017-05-09 19:58:02', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e7da81f6-4451-ebf9-2373-5911fc21fd90', 'Home2_TASK_14948f7d-a6c6-d5fc-0827-5911fcc29746', 0, '2017-05-09 17:31:38', '2017-05-09 17:31:38', '8aff5677-c52f-7d82-3237-5911fcc9c488', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e86c6d8c-7dc1-5d8c-019d-59121f34de7c', 'Home2_OPPORTUNITY', 0, '2017-05-09 19:58:02', '2017-05-09 19:58:02', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e990365b-a36a-7a27-b0d9-5c3a897a144a', 'Campaigns2_CAMPAIGN', 0, '2019-01-13 00:44:45', '2019-01-13 00:44:45', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e9c6d978-0424-b20e-a317-59121fc41f97', 'Home2_ACCOUNT', 0, '2017-05-09 19:58:02', '2017-05-09 19:58:02', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ea640f7c-cf67-dfd9-71d4-59000a41877c', 'SecurityGroups2_SECURITYGROUP', 0, '2017-04-26 02:47:08', '2017-04-26 02:47:08', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('eb0e07c6-e21d-e3b8-dc23-59121f6cb44f', 'Home2_LEAD', 0, '2017-05-09 19:58:02', '2017-05-09 19:58:02', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ec580ab9-56d5-f0ac-b5b8-59121f50c734', 'Home2_SUGARFEED', 0, '2017-05-09 19:58:02', '2017-05-09 19:58:02', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ed1bbb65-2a29-b3b9-0479-59121f32312a', 'Home2_CASE', 0, '2017-05-09 19:58:44', '2017-05-09 19:58:44', 'e15f7895-d759-e10d-e6d4-59121d13beb0', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('eede0e60-02dd-d5ef-aadb-59121e49b181', 'Home', 0, '2017-05-09 19:55:25', '2017-07-03 20:50:16', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImE2N2M1ZDg5LWEwMzYtNGY3Yi1hMmY2LTU5MTIxZjY1OWVhNiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlUYXNrc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IlRhc2tzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9UYXNrcy9EYXNobGV0cy9NeVRhc2tzRGFzaGxldC9NeVRhc2tzRGFzaGxldC5waHAiO31zOjM2OiJiMmFlYTFlZi1mYmNjLTA3YTUtZmQyZC01OTVhYWRlMGRmNmYiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czo3OiJvcHRpb25zIjthOjA6e31zOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiIyNWJkNjg4MS05NGQyLTFjNmUtYmFmOS01OTVhYWRhYmYxNGIiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MjQ6IkFPS19Lbm93bGVkZ2VCYXNlRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo4ODoibW9kdWxlcy9BT0tfS25vd2xlZGdlQmFzZS9EYXNobGV0cy9BT0tfS25vd2xlZGdlQmFzZURhc2hsZXQvQU9LX0tub3dsZWRnZUJhc2VEYXNobGV0LnBocCI7fXM6MzY6ImU1NzQ4N2RmLWM0YTAtZGEwMS0yM2I3LTU5NWFhZDY5Njk5ZCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoyMDoiQU9XX1Byb2Nlc3NlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEzOiJBT1dfUHJvY2Vzc2VkIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo3NjoibW9kdWxlcy9BT1dfUHJvY2Vzc2VkL0Rhc2hsZXRzL0FPV19Qcm9jZXNzZWREYXNobGV0L0FPV19Qcm9jZXNzZWREYXNobGV0LnBocCI7fXM6MzY6IjM5ZDQwNjg2LTMwZTYtZGM3ZS1iMGVlLTU5NWFhZGU4ZDgwMCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiamp3Z19BcmVhc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjEwOiJqandnX0FyZWFzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2NzoibW9kdWxlcy9qandnX0FyZWFzL0Rhc2hsZXRzL2pqd2dfQXJlYXNEYXNobGV0L2pqd2dfQXJlYXNEYXNobGV0LnBocCI7fXM6MzY6IjI1OWIwODVhLWE3MTctOWYzYS1lZGI0LTU5NWFhZDE5ZDM5NSI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjc6Im9wdGlvbnMiO2E6MDp7fXM6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO319czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Mzp7aTowO3M6MzY6IjI1OWIwODVhLWE3MTctOWYzYS1lZGI0LTU5NWFhZDE5ZDM5NSI7aToxO3M6MzY6IjI1YmQ2ODgxLTk0ZDItMWM2ZS1iYWY5LTU5NWFhZGFiZjE0YiI7aTo0O3M6MzY6ImE2N2M1ZDg5LWEwMzYtNGY3Yi1hMmY2LTU5MTIxZjY1OWVhNiI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiZTU3NDg3ZGYtYzRhMC1kYTAxLTIzYjctNTk1YWFkNjk2OTlkIjtpOjE7czozNjoiYjJhZWExZWYtZmJjYy0wN2E1LWZkMmQtNTk1YWFkZTBkZjZmIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjMiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('f2da0275-7ee3-2d5f-43fc-5944199fec19', 'Home2_CASE_14b423d0-5d7d-97c8-5d00-594419085a14', 0, '2017-06-16 17:48:43', '2017-06-16 17:48:43', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f34e9e6d-9991-ff61-0820-59121e747c32', 'Home2_CALL', 0, '2017-05-09 19:55:25', '2017-05-09 19:55:25', '1eb9a9c7-3cbc-6e01-b142-59121ed50004', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `vcals`
--

INSERT INTO `vcals` (`id`, `deleted`, `date_entered`, `date_modified`, `user_id`, `type`, `source`, `content`) VALUES
('23cd0989-9bac-9798-4c9e-595aa531a05a', 0, '2017-07-03 20:12:34', '2019-01-13 00:32:22', '1', 'vfb', 'sugar', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\r\nBEGIN:VFREEBUSY\r\nORGANIZER;CN=SUPER USER:VFREEBUSY\r\nDTSTART:2019-01-11 04:00:00\r\nDTEND:2019-03-11 04:00:00\r\nFREEBUSY:20190114T003000Z/20190114T013000Z\r\nX-FREEBUSY-ID:404653f6-2327-45da-0866-5c3a873eacb1\r\nX-FREEBUSY-TYPE:Meeting\r\nDTSTAMP:2019-01-13 00:32:22\r\nEND:VFREEBUSY\r\nEND:VCALENDAR\r\n'),
('c9bc0a95-fd1a-9991-f483-59566bb9bcd0', 0, '2017-06-30 15:17:19', '2017-06-30 15:53:51', 'aa556237-4b1e-57ef-b6ab-594419f727b2', 'vfb', 'sugar', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\r\nBEGIN:VFREEBUSY\r\nORGANIZER;CN=Ana Lezama:VFREEBUSY\r\nDTSTART:2017-06-29 00:00:00\r\nDTEND:2017-08-29 00:00:00\r\nDTSTAMP:2017-06-30 15:53:51\r\nEND:VFREEBUSY\r\nEND:VCALENDAR\r\n'),
('f9b90bb1-ee3c-db2d-5952-5c154a56b7da', 0, '2018-12-15 18:38:26', '2018-12-15 18:38:26', '98ae7237-30e0-7e2f-d263-5c153d029c20', 'vfb', 'sugar', 'BEGIN:VCALENDAR\r\nVERSION:2.0\r\nPRODID:-//SugarCRM//SugarCRM Calendar//EN\r\nBEGIN:VFREEBUSY\r\nORGANIZER;CN=ANWAR BEISA:VFREEBUSY\r\nDTSTART:2018-12-14 00:00:00\r\nDTEND:2019-02-14 00:00:00\r\nDTSTAMP:2018-12-15 18:38:26\r\nEND:VFREEBUSY\r\nEND:VCALENDAR\r\n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indices de la tabla `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indices de la tabla `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indices de la tabla `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indices de la tabla `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indices de la tabla `accounts_cstm`
--
ALTER TABLE `accounts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indices de la tabla `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indices de la tabla `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indices de la tabla `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indices de la tabla `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indices de la tabla `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indices de la tabla `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `am_projecttemplates`
--
ALTER TABLE `am_projecttemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `am_projecttemplates_audit`
--
ALTER TABLE `am_projecttemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_projecttemplates_parent_id` (`parent_id`);

--
-- Indices de la tabla `am_projecttemplates_contacts_1_c`
--
ALTER TABLE `am_projecttemplates_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`);

--
-- Indices de la tabla `am_projecttemplates_project_1_c`
--
ALTER TABLE `am_projecttemplates_project_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  ADD KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`);

--
-- Indices de la tabla `am_projecttemplates_users_1_c`
--
ALTER TABLE `am_projecttemplates_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`);

--
-- Indices de la tabla `am_tasktemplates`
--
ALTER TABLE `am_tasktemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `am_tasktemplates_am_projecttemplates_c`
--
ALTER TABLE `am_tasktemplates_am_projecttemplates_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  ADD KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`);

--
-- Indices de la tabla `am_tasktemplates_audit`
--
ALTER TABLE `am_tasktemplates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_am_tasktemplates_parent_id` (`parent_id`);

--
-- Indices de la tabla `aobh_businesshours`
--
ALTER TABLE `aobh_businesshours`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aod_index`
--
ALTER TABLE `aod_index`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aod_indexevent`
--
ALTER TABLE `aod_indexevent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_record_module` (`record_module`),
  ADD KEY `idx_record_id` (`record_id`);

--
-- Indices de la tabla `aod_indexevent_audit`
--
ALTER TABLE `aod_indexevent_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_indexevent_parent_id` (`parent_id`);

--
-- Indices de la tabla `aod_index_audit`
--
ALTER TABLE `aod_index_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aod_index_parent_id` (`parent_id`);

--
-- Indices de la tabla `aok_knowledgebase`
--
ALTER TABLE `aok_knowledgebase`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aok_knowledgebase_audit`
--
ALTER TABLE `aok_knowledgebase_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledgebase_parent_id` (`parent_id`);

--
-- Indices de la tabla `aok_knowledgebase_categories`
--
ALTER TABLE `aok_knowledgebase_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`);

--
-- Indices de la tabla `aok_knowledge_base_categories`
--
ALTER TABLE `aok_knowledge_base_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aok_knowledge_base_categories_audit`
--
ALTER TABLE `aok_knowledge_base_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`);

--
-- Indices de la tabla `aop_case_events`
--
ALTER TABLE `aop_case_events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aop_case_events_audit`
--
ALTER TABLE `aop_case_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_events_parent_id` (`parent_id`);

--
-- Indices de la tabla `aop_case_updates`
--
ALTER TABLE `aop_case_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aop_case_updates_audit`
--
ALTER TABLE `aop_case_updates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aop_case_updates_parent_id` (`parent_id`);

--
-- Indices de la tabla `aor_charts`
--
ALTER TABLE `aor_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aor_conditions`
--
ALTER TABLE `aor_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_conditions_index_report_id` (`aor_report_id`);

--
-- Indices de la tabla `aor_fields`
--
ALTER TABLE `aor_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aor_fields_index_report_id` (`aor_report_id`);

--
-- Indices de la tabla `aor_reports`
--
ALTER TABLE `aor_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aor_reports_audit`
--
ALTER TABLE `aor_reports_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aor_reports_parent_id` (`parent_id`);

--
-- Indices de la tabla `aor_scheduled_reports`
--
ALTER TABLE `aor_scheduled_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_contracts`
--
ALTER TABLE `aos_contracts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_contracts_audit`
--
ALTER TABLE `aos_contracts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_contracts_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_contracts_documents`
--
ALTER TABLE `aos_contracts_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`);

--
-- Indices de la tabla `aos_invoices`
--
ALTER TABLE `aos_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_invoices_audit`
--
ALTER TABLE `aos_invoices_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_invoices_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_line_item_groups`
--
ALTER TABLE `aos_line_item_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_line_item_groups_audit`
--
ALTER TABLE `aos_line_item_groups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_line_item_groups_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_pdf_templates`
--
ALTER TABLE `aos_pdf_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_pdf_templates_audit`
--
ALTER TABLE `aos_pdf_templates_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_pdf_templates_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_products`
--
ALTER TABLE `aos_products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_products_audit`
--
ALTER TABLE `aos_products_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_products_quotes`
--
ALTER TABLE `aos_products_quotes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`);

--
-- Indices de la tabla `aos_products_quotes_audit`
--
ALTER TABLE `aos_products_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_products_quotes_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_product_categories`
--
ALTER TABLE `aos_product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_product_categories_audit`
--
ALTER TABLE `aos_product_categories_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_product_categories_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_quotes`
--
ALTER TABLE `aos_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `aos_quotes_aos_invoices_c`
--
ALTER TABLE `aos_quotes_aos_invoices_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`);

--
-- Indices de la tabla `aos_quotes_audit`
--
ALTER TABLE `aos_quotes_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aos_quotes_parent_id` (`parent_id`);

--
-- Indices de la tabla `aos_quotes_os_contracts_c`
--
ALTER TABLE `aos_quotes_os_contracts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`);

--
-- Indices de la tabla `aos_quotes_project_c`
--
ALTER TABLE `aos_quotes_project_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`);

--
-- Indices de la tabla `aow_actions`
--
ALTER TABLE `aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_action_index_workflow_id` (`aow_workflow_id`);

--
-- Indices de la tabla `aow_conditions`
--
ALTER TABLE `aow_conditions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`);

--
-- Indices de la tabla `aow_processed`
--
ALTER TABLE `aow_processed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  ADD KEY `aow_processed_index_status` (`status`),
  ADD KEY `aow_processed_index_workflow_id` (`aow_workflow_id`);

--
-- Indices de la tabla `aow_processed_aow_actions`
--
ALTER TABLE `aow_processed_aow_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  ADD KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`);

--
-- Indices de la tabla `aow_workflow`
--
ALTER TABLE `aow_workflow`
  ADD PRIMARY KEY (`id`),
  ADD KEY `aow_workflow_index_status` (`status`);

--
-- Indices de la tabla `aow_workflow_audit`
--
ALTER TABLE `aow_workflow_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aow_workflow_parent_id` (`parent_id`);

--
-- Indices de la tabla `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indices de la tabla `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indices de la tabla `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indices de la tabla `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indices de la tabla `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indices de la tabla `calls_reschedule`
--
ALTER TABLE `calls_reschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calls_reschedule_audit`
--
ALTER TABLE `calls_reschedule_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_calls_reschedule_parent_id` (`parent_id`);

--
-- Indices de la tabla `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indices de la tabla `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`);

--
-- Indices de la tabla `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indices de la tabla `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indices de la tabla `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indices de la tabla `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indices de la tabla `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indices de la tabla `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indices de la tabla `cases_cstm`
--
ALTER TABLE `cases_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indices de la tabla `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indices de la tabla `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indices de la tabla `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indices de la tabla `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indices de la tabla `contacts_cstm`
--
ALTER TABLE `contacts_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indices de la tabla `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indices de la tabla `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indices de la tabla `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indices de la tabla `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indices de la tabla `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indices de la tabla `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indices de la tabla `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indices de la tabla `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indices de la tabla `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indices de la tabla `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indices de la tabla `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indices de la tabla `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indices de la tabla `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`);

--
-- Indices de la tabla `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indices de la tabla `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indices de la tabla `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indices de la tabla `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indices de la tabla `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indices de la tabla `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indices de la tabla `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indices de la tabla `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indices de la tabla `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indices de la tabla `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indices de la tabla `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indices de la tabla `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indices de la tabla `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indices de la tabla `fp_events`
--
ALTER TABLE `fp_events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fp_events_audit`
--
ALTER TABLE `fp_events_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_events_parent_id` (`parent_id`);

--
-- Indices de la tabla `fp_events_contacts_c`
--
ALTER TABLE `fp_events_contacts_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`);

--
-- Indices de la tabla `fp_events_fp_event_delegates_1_c`
--
ALTER TABLE `fp_events_fp_event_delegates_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  ADD KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`);

--
-- Indices de la tabla `fp_events_fp_event_locations_1_c`
--
ALTER TABLE `fp_events_fp_event_locations_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`);

--
-- Indices de la tabla `fp_events_leads_1_c`
--
ALTER TABLE `fp_events_leads_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`);

--
-- Indices de la tabla `fp_events_prospects_1_c`
--
ALTER TABLE `fp_events_prospects_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`);

--
-- Indices de la tabla `fp_event_locations`
--
ALTER TABLE `fp_event_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fp_event_locations_audit`
--
ALTER TABLE `fp_event_locations_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fp_event_locations_parent_id` (`parent_id`);

--
-- Indices de la tabla `fp_event_locations_fp_events_1_c`
--
ALTER TABLE `fp_event_locations_fp_events_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  ADD KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`);

--
-- Indices de la tabla `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indices de la tabla `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indices de la tabla `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jjwg_address_cache`
--
ALTER TABLE `jjwg_address_cache`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jjwg_address_cache_audit`
--
ALTER TABLE `jjwg_address_cache_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_address_cache_parent_id` (`parent_id`);

--
-- Indices de la tabla `jjwg_areas`
--
ALTER TABLE `jjwg_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jjwg_areas_audit`
--
ALTER TABLE `jjwg_areas_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_areas_parent_id` (`parent_id`);

--
-- Indices de la tabla `jjwg_maps`
--
ALTER TABLE `jjwg_maps`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jjwg_maps_audit`
--
ALTER TABLE `jjwg_maps_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_maps_parent_id` (`parent_id`);

--
-- Indices de la tabla `jjwg_maps_jjwg_areas_c`
--
ALTER TABLE `jjwg_maps_jjwg_areas_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`);

--
-- Indices de la tabla `jjwg_maps_jjwg_markers_c`
--
ALTER TABLE `jjwg_maps_jjwg_markers_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`);

--
-- Indices de la tabla `jjwg_markers`
--
ALTER TABLE `jjwg_markers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jjwg_markers_audit`
--
ALTER TABLE `jjwg_markers_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jjwg_markers_parent_id` (`parent_id`);

--
-- Indices de la tabla `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indices de la tabla `kreports`
--
ALTER TABLE `kreports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`);

--
-- Indices de la tabla `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indices de la tabla `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indices de la tabla `leads_cstm`
--
ALTER TABLE `leads_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indices de la tabla `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indices de la tabla `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indices de la tabla `meetings_cstm`
--
ALTER TABLE `meetings_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indices de la tabla `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indices de la tabla `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indices de la tabla `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indices de la tabla `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indices de la tabla `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indices de la tabla `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indices de la tabla `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indices de la tabla `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indices de la tabla `opportunities_cstm`
--
ALTER TABLE `opportunities_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `outbound_email_audit`
--
ALTER TABLE `outbound_email_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_outbound_email_parent_id` (`parent_id`);

--
-- Indices de la tabla `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indices de la tabla `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indices de la tabla `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indices de la tabla `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indices de la tabla `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indices de la tabla `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indices de la tabla `project_contacts_1_c`
--
ALTER TABLE `project_contacts_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`);

--
-- Indices de la tabla `project_cstm`
--
ALTER TABLE `project_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indices de la tabla `project_users_1_c`
--
ALTER TABLE `project_users_1_c`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`);

--
-- Indices de la tabla `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indices de la tabla `prospects_cstm`
--
ALTER TABLE `prospects_cstm`
  ADD PRIMARY KEY (`id_c`);

--
-- Indices de la tabla `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indices de la tabla `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indices de la tabla `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indices de la tabla `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indices de la tabla `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indices de la tabla `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_name` (`name`),
  ADD KEY `idx_reminder_deleted` (`deleted`),
  ADD KEY `idx_reminder_related_event_module` (`related_event_module`),
  ADD KEY `idx_reminder_related_event_module_id` (`related_event_module_id`);

--
-- Indices de la tabla `reminders_invitees`
--
ALTER TABLE `reminders_invitees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reminder_invitee_name` (`name`),
  ADD KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  ADD KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  ADD KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  ADD KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indices de la tabla `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indices de la tabla `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indices de la tabla `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indices de la tabla `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indices de la tabla `securitygroups`
--
ALTER TABLE `securitygroups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `securitygroups_acl_roles`
--
ALTER TABLE `securitygroups_acl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `securitygroups_audit`
--
ALTER TABLE `securitygroups_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_parent_id` (`parent_id`);

--
-- Indices de la tabla `securitygroups_default`
--
ALTER TABLE `securitygroups_default`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `securitygroups_records`
--
ALTER TABLE `securitygroups_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  ADD KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`);

--
-- Indices de la tabla `securitygroups_users`
--
ALTER TABLE `securitygroups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `securitygroups_users_idxa` (`securitygroup_id`),
  ADD KEY `securitygroups_users_idxb` (`user_id`),
  ADD KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  ADD KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`);

--
-- Indices de la tabla `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indices de la tabla `templatesectionline`
--
ALTER TABLE `templatesectionline`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indices de la tabla `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`);

--
-- Indices de la tabla `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indices de la tabla `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indices de la tabla `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indices de la tabla `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indices de la tabla `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indices de la tabla `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=667;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
