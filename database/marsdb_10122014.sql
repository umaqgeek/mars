-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 09, 2014 at 06:31 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `marsdb`
--
CREATE DATABASE IF NOT EXISTS `marsdb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `marsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('e231e500df976541e2bcd14c19584605', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 1417976046, 'a:11:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:7:"role_id";s:1:"1";s:8:"fullname";s:18:"Administrator MARS";s:8:"username";s:5:"admin";s:9:"user_date";s:19:"2014-06-25 07:44:41";s:13:"user_modified";s:19:"2014-06-25 07:44:41";s:15:"user_last_login";s:19:"2014-12-07 15:08:18";s:8:"magicnum";s:32:"5c7a5ae3a37e6ef4ff9ffdff1785ee55";s:16:"email_activation";s:1:"1";s:9:"logged_in";b:1;}'),
('21dde5d3835411429c81c5cde32ac0dd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 1418057569, ''),
('79a6b013b4a2802decdccf8b5682e465', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 1418064866, 'a:11:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:7:"role_id";s:1:"1";s:8:"fullname";s:18:"Administrator MARS";s:8:"username";s:5:"admin";s:9:"user_date";s:19:"2014-06-25 07:44:41";s:13:"user_modified";s:19:"2014-06-25 07:44:41";s:15:"user_last_login";s:19:"2014-12-07 18:14:06";s:8:"magicnum";s:32:"5c7a5ae3a37e6ef4ff9ffdff1785ee55";s:16:"email_activation";s:1:"1";s:9:"logged_in";b:1;}'),
('7907320a0a4b28b2e5b627fc2283a7d9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 1418149683, 'a:11:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:7:"role_id";s:1:"1";s:8:"fullname";s:18:"Administrator MARS";s:8:"username";s:5:"admin";s:9:"user_date";s:19:"2014-06-25 07:44:41";s:13:"user_modified";s:19:"2014-06-25 07:44:41";s:15:"user_last_login";s:19:"2014-12-08 16:52:57";s:8:"magicnum";s:32:"5c7a5ae3a37e6ef4ff9ffdff1785ee55";s:16:"email_activation";s:1:"1";s:9:"logged_in";b:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `imported_project`
--

CREATE TABLE IF NOT EXISTS `imported_project` (
  `imported_project_id` int(11) NOT NULL AUTO_INCREMENT,
  `APPLICATION` varchar(10) DEFAULT NULL,
  `LINEIC_VOLUME_INTERNAL` decimal(4,2) DEFAULT NULL,
  `MAX_TEST_PRESSURE` int(5) DEFAULT NULL,
  `BENDING_STIFFNESS` decimal(10,5) DEFAULT NULL,
  `FAT_DRUM_DIAMETER` decimal(2,1) DEFAULT NULL,
  `SERVICE` varchar(5) DEFAULT NULL,
  `ST_STORAGE_DRUM_DIAMETER` decimal(2,1) DEFAULT NULL,
  `WATERTIGHTNESS` int(1) DEFAULT NULL,
  `MANUFACTURING_ELONGATION_MIN` decimal(5,3) DEFAULT NULL,
  `MANUFACTURING_ELONGATION_MAX` decimal(4,3) DEFAULT NULL,
  `ENG_STORAGE_DRUM_DIAMETER` decimal(3,2) DEFAULT NULL,
  `DOMAIN_ID` int(2) DEFAULT NULL,
  `AFFAIRE` int(5) DEFAULT NULL,
  `DIAINTERST` int(1) DEFAULT NULL,
  `STRUCTURE` varchar(10) DEFAULT NULL,
  `STRUCTURE_REVISION` int(1) DEFAULT NULL,
  `CDC` varchar(10) DEFAULT NULL,
  `CDC_STRUCTURE_REVISION` varchar(10) DEFAULT NULL,
  `NOLIGNE` int(2) DEFAULT NULL,
  `COUCHE` varchar(3) DEFAULT NULL,
  `CODEOPERATION` int(3) DEFAULT NULL,
  `CODEPREPARATION` int(3) DEFAULT NULL,
  `OPERATION` varchar(25) DEFAULT NULL,
  `LAYER_NAME` varchar(24) DEFAULT NULL,
  `LAYER_TYPE_DESCRIPTION` varchar(19) DEFAULT NULL,
  `LAYER_VARIETY_DESCRIPTION` varchar(19) DEFAULT NULL,
  `DIAINTER` decimal(4,1) DEFAULT NULL,
  `EP` decimal(4,2) DEFAULT NULL,
  `ANGLE` varchar(5) DEFAULT NULL,
  `NOMBREFIL` int(2) DEFAULT NULL,
  `MASSECOUCHE` decimal(6,4) DEFAULT NULL,
  `CODEMP` varchar(5) DEFAULT NULL,
  `CODEMP_IFS` int(8) DEFAULT NULL,
  `DESCRIPTIONMP` varchar(86) DEFAULT NULL,
  `DESCRIPTIONMPN_2` varchar(35) DEFAULT NULL,
  `EPMP` varchar(2) DEFAULT NULL,
  `LARGMP` varchar(2) DEFAULT NULL,
  `CODEPRODUITGENERIQUE` varchar(2) DEFAULT NULL,
  `CODEPRODUITUSUEL` varchar(4) DEFAULT NULL,
  `DIAINTERCOUCHE` decimal(4,1) DEFAULT NULL,
  `DIAINTERCOUCHETOLINF` decimal(3,1) DEFAULT NULL,
  `DIAINTERCOUCHETOLSUP` decimal(2,1) DEFAULT NULL,
  `DIAEXTERCOUCHE` decimal(4,1) DEFAULT NULL,
  `DIAEXTERCOUCHETOLSUP` decimal(2,1) DEFAULT NULL,
  `DIAEXTERCOUCHETOLINF` decimal(3,1) DEFAULT NULL,
  `DIAEXTERNONRETREINT` decimal(4,1) DEFAULT NULL,
  `DIAEXTERTOLSUPNONRETREINT` decimal(2,1) DEFAULT NULL,
  `DIAEXTERTOLINFNONRETREINT` decimal(3,1) DEFAULT NULL,
  `EPCOUCHE` decimal(4,2) DEFAULT NULL,
  `EPCOUCHETOLINF` decimal(3,1) DEFAULT NULL,
  `EPCOUCHETOLSUP` decimal(2,1) DEFAULT NULL,
  `ARMANGLE` decimal(5,2) DEFAULT NULL,
  `DIAEXTERCLI` varchar(4) DEFAULT NULL,
  `LGCLI` varchar(4) DEFAULT NULL,
  `CLITOLINF` int(1) DEFAULT NULL,
  `CLITOLSUP` decimal(2,1) DEFAULT NULL,
  `DIAINTERCLE` varchar(3) DEFAULT NULL,
  `LGCLE` varchar(4) DEFAULT NULL,
  `CLETOLSUP` int(1) DEFAULT NULL,
  `CLETOLINF` decimal(3,1) DEFAULT NULL,
  `EPMAXICOUCHE` varchar(3) DEFAULT NULL,
  `ARMPASRATIO` varchar(5) DEFAULT NULL,
  `NOMAFFAIRE` varchar(14) DEFAULT NULL,
  `CHAMP` varchar(10) DEFAULT NULL,
  `INGENIEURAFF` varchar(12) DEFAULT NULL,
  `DATELIVRAISON` varchar(10) DEFAULT NULL,
  `MBR` int(4) DEFAULT NULL,
  `PASNOMINAL` decimal(4,1) DEFAULT NULL,
  `TOLPASNOMINAL` decimal(3,1) DEFAULT NULL,
  `NBTOURCONTROLEPAS` int(2) DEFAULT NULL,
  `COMMENTAIRES` varchar(41) DEFAULT NULL,
  `MAN_LINEIC_OBJ_MPITCH` decimal(7,4) DEFAULT NULL,
  `AVG_PITCH_MAN` decimal(7,4) DEFAULT NULL,
  `AVG_PITCH_ENG` decimal(7,4) DEFAULT NULL,
  PRIMARY KEY (`imported_project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `imported_project`
--

INSERT INTO `imported_project` (`imported_project_id`, `APPLICATION`, `LINEIC_VOLUME_INTERNAL`, `MAX_TEST_PRESSURE`, `BENDING_STIFFNESS`, `FAT_DRUM_DIAMETER`, `SERVICE`, `ST_STORAGE_DRUM_DIAMETER`, `WATERTIGHTNESS`, `MANUFACTURING_ELONGATION_MIN`, `MANUFACTURING_ELONGATION_MAX`, `ENG_STORAGE_DRUM_DIAMETER`, `DOMAIN_ID`, `AFFAIRE`, `DIAINTERST`, `STRUCTURE`, `STRUCTURE_REVISION`, `CDC`, `CDC_STRUCTURE_REVISION`, `NOLIGNE`, `COUCHE`, `CODEOPERATION`, `CODEPREPARATION`, `OPERATION`, `LAYER_NAME`, `LAYER_TYPE_DESCRIPTION`, `LAYER_VARIETY_DESCRIPTION`, `DIAINTER`, `EP`, `ANGLE`, `NOMBREFIL`, `MASSECOUCHE`, `CODEMP`, `CODEMP_IFS`, `DESCRIPTIONMP`, `DESCRIPTIONMPN_2`, `EPMP`, `LARGMP`, `CODEPRODUITGENERIQUE`, `CODEPRODUITUSUEL`, `DIAINTERCOUCHE`, `DIAINTERCOUCHETOLINF`, `DIAINTERCOUCHETOLSUP`, `DIAEXTERCOUCHE`, `DIAEXTERCOUCHETOLSUP`, `DIAEXTERCOUCHETOLINF`, `DIAEXTERNONRETREINT`, `DIAEXTERTOLSUPNONRETREINT`, `DIAEXTERTOLINFNONRETREINT`, `EPCOUCHE`, `EPCOUCHETOLINF`, `EPCOUCHETOLSUP`, `ARMANGLE`, `DIAEXTERCLI`, `LGCLI`, `CLITOLINF`, `CLITOLSUP`, `DIAINTERCLE`, `LGCLE`, `CLETOLSUP`, `CLETOLINF`, `EPMAXICOUCHE`, `ARMPASRATIO`, `NOMAFFAIRE`, `CHAMP`, `INGENIEURAFF`, `DATELIVRAISON`, `MBR`, `PASNOMINAL`, `TOLPASNOMINAL`, `NBTOURCONTROLEPAS`, `COMMENTAIRES`, `MAN_LINEIC_OBJ_MPITCH`, `AVG_PITCH_MAN`, `AVG_PITCH_ENG`) VALUES
(1, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '0.000', '0.000', '1.94', 91, 78033, 6, 'ST15261797', 0, '', '', 1, 'PC', 60, 0, 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '152.4', '5.00', '-88.1', 1, '11.6987', 'MP169', 10100600, 'Feuillard inox 1,0* 48 AISI 316L FE02 EN 1.4404 ( ex MP169)', '', '1', '48', 'FI', 'FE02', '152.4', '-1.5', '1.5', '162.4', '1.6', '-1.6', '162.4', '1.6', '-1.6', '5.00', '0.0', '0.0', '-88.15', '150.', '152.', 0, '0.5', '164', '152.', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, '\n\rJeffa PCRM7 ou Wynn''Draw sp30 ( LP851 )', '15.9350', '15.9350', '15.9350'),
(2, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 2, '0.000', '0.000', '2.08', 91, 78033, 6, 'ST15261797', 0, '', '', 2, 'GP', 140, 0, 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '162.4', '5.40', '', 1, '2.8726', 'MP406', 12000040, 'PE  CROSSFLEX                  TP10', ' ', '', '', 'PL', 'TP10', '162.4', '-1.6', '1.6', '173.2', '2.1', '-2.1', '173.2', '2.1', '-2.1', '5.40', '-0.8', '0.8', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '7', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, '', '0.0000', '0.0000', '0.0000'),
(3, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.34', 91, 78033, 6, 'ST15261797', 0, '', '', 3, 'SFT', 300, 297, 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '173.2', '8.00', '-87.4', 2, '30.1319', 'MP234', 10800080, 'Fil zeta 8 - FM35 - FI09  KISWIRE  ( ex MP234)', '', '8', '0', 'FZ', 'FI09', '173.2', '-2.1', '2.1', '189.2', '2.3', '-2.3', '189.2', '2.3', '-2.3', '8.00', '0.0', '0.1', '-87.45', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '253.0', '2.0', 20, '', '25.3000', '25.3000', '25.3000'),
(4, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.71', 91, 78033, 6, 'ST15261797', 0, '', '', 4, 'F', 340, 337, 'FRETTAGE', 'FLAT SPIRALLING', 'FRETTE', 'PLATS HOMOGENS', '189.2', '5.00', '87.49', 2, '20.0891', 'MP581', 10404110, 'Fil plat 12 * 5 - FM35 - FI09 avec courant de Foucault  ( ex MP581)', '', '5', '12', 'FP', 'FI09', '189.2', '-2.3', '2.3', '199.2', '2.5', '-2.5', '199.2', '2.5', '-2.5', '5.00', '-0.1', '0.1', '87.49', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '267.0', '3.0', 20, '', '26.7600', '26.7000', '26.7600'),
(5, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.70', 91, 78033, 6, 'ST15261797', 0, '', '', 5, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '199.2', '1.50', '', 1, '0.9005', 'MP978', 12600600, 'BANDE A-U  75*1,5MM  PIPELON   BF01', ' ', '', '', 'RU', 'BF01', '199.2', '-2.5', '2.5', '202.2', '2.7', '-2.7', '202.2', '2.7', '-2.7', '1.50', '-0.1', '0.1', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, 'Lubrification : VETO86 \n\r', '173.1851', '173.1851', '173.1851'),
(6, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.69', 91, 78033, 6, 'ST15261797', 0, '', '', 6, 'A1', 420, 417, 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '202.2', '5.00', '35', 42, '22.5676', 'MP581', 10404110, 'Fil plat 12 * 5 - FM35 - FI09 avec courant de Foucault  ( ex MP581)', '', '5', '12', 'FP', 'FI09', '202.2', '-2.7', '2.7', '212.2', '2.9', '-2.9', '212.2', '2.9', '-2.9', '5.00', '-0.1', '0.1', '35.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '1.064', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '929.6', '13.9', 1, 'Lubrification : VETO86 \n\r', '929.6358', '929.6000', '929.6358'),
(7, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.69', 91, 78033, 6, 'ST15261797', 0, '', '', 7, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '212.2', '1.50', '', 1, '0.9588', 'MP978', 12600600, 'BANDE A-U  75*1,5MM  PIPELON   BF01', ' ', '', '', 'RU', 'BF01', '212.2', '-2.9', '2.9', '215.2', '3.1', '-3.1', '215.2', '3.1', '-3.1', '1.50', '-0.1', '0.1', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, 'Lubrification : VETO86 \n\r', '172.4195', '172.4195', '172.4195'),
(8, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.68', 91, 78033, 6, 'ST15261797', 0, '', '', 8, 'A1', 420, 417, 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '215.2', '5.00', '-34.9', 45, '24.1769', 'MP581', 10404110, 'Fil plat 12 * 5 - FM35 - FI09 avec courant de Foucault  ( ex MP581)', '', '5', '12', 'FP', 'FI09', '215.2', '-3.1', '3.1', '225.2', '3.3', '-3.3', '225.2', '3.3', '-3.3', '5.00', '-0.1', '0.1', '-34.99', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '989.6', '14.8', 1, 'Lubrification : VETO86 \n\r', '989.5973', '989.6000', '989.5973'),
(9, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.67', 91, 78033, 6, 'ST15261797', 0, '', '', 9, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '225.2', '0.25', '', 1, '0.1348', 'MP146', 12500010, 'RUBAN ADHESIF 145  MM * 3000 M BA07', 'TSP 8983P - (3M)', '', '', 'RU', 'BA07', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, 'Lubrification : VETO86 \n\r', '137.5212', '0.0000', '0.0000'),
(10, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.67', 91, 78033, 6, 'ST15261797', 0, '', '', 9, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '225.7', '0.25', '', 1, '0.1351', 'MP146', 12500010, 'RUBAN ADHESIF 145  MM * 3000 M BA07', 'TSP 8983P - (3M)', '', '', 'RU', 'BA07', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, 'Lubrification : VETO86 \n\r', '137.5097', '0.0000', '0.0000'),
(11, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.67', 91, 78033, 6, 'ST15261797', 0, '', '', 9, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '226.2', '0.25', '', 1, '0.1354', 'MP146', 12500010, 'RUBAN ADHESIF 145  MM * 3000 M BA07', 'TSP 8983P - (3M)', '', '', 'RU', 'BA07', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, 'Lubrification : VETO86 \n\r', '137.4984', '0.0000', '0.0000'),
(12, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.67', 91, 78033, 6, 'ST15261797', 0, '', '', 9, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '226.7', '0.50', '', 1, '0.1271', 'MP240', 12600110, 'BANDE TISSEE KEVLAR R=230 DAN- BA01', '/REF.9081 CHOMARAT LA:130MM/ 24GR/M', '', '', 'RU', 'BA01', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, 'Lubrification : VETO86 \n\r', '134.8437', '0.0000', '0.0000'),
(13, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.67', 91, 78033, 6, 'ST15261797', 0, '', '', 9, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '227.7', '0.50', '', 1, '0.1277', 'MP240', 12600110, 'BANDE TISSEE KEVLAR R=230 DAN- BA01', '/REF.9081 CHOMARAT LA:130MM/ 24GR/M', '', '', 'RU', 'BA01', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, 'Lubrification : VETO86 \n\r', '134.8227', '0.0000', '0.0000'),
(14, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.67', 91, 78033, 6, 'ST15261797', 0, '', '', 9, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '228.7', '0.40', '', 1, '0.1063', 'MP141', 12600010, 'BANDE TISSEE  150  MM * 3000 M BA04', 'POLYESTER', '', '', 'RU', 'BA04', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, 'Lubrification : VETO86 \n\r', '132.1739', '0.0000', '0.0000'),
(15, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '2.67', 91, 78033, 6, 'ST15261797', 0, '', '', 9, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '229.5', '0.40', '', 1, '0.1067', 'MP141', 12600010, 'BANDE TISSEE  150  MM * 3000 M BA04', 'POLYESTER', '', '', 'RU', 'BA04', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, 'Lubrification : VETO86 \n\r', '132.1584', '0.0000', '0.0000'),
(16, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 1, '-0.005', '0.015', '3.05', 91, 78033, 6, 'ST15261797', 0, '', '', 10, 'GSA', 540, 538, 'GAINAGE SUR ARMAGE', 'OVER ARMOUR LAYER SHEATH', 'INTERNAL SHEATH', 'INTERMEDIATE SHEATH', '230.3', '12.00', '', 1, '8.6504', 'MP968', 11800020, 'TP FLEX                   TP26/TP27', ' ', '', '', 'TP', 'TP26', '230.3', '-3.3', '3.3', '254.3', '4.5', '-4.5', '254.3', '4.5', '-4.5', '12.00', '-1.7', '1.7', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '15.', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, '', '0.0000', '0.0000', '0.0000'),
(17, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '3.03', 91, 78033, 6, 'ST15261797', 0, '', '', 11, 'FM1', 580, 577, 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'ISOLATION', 'ISOLATION', '254.3', '5.50', '-82.5', 1, '2.2868', 'MP225', 12800040, 'Bande mousse COFOAM L:50 E:5,5 MO01 Densit?=0.54 g/ml TYPE PVC-C SOVEPLAST ( ex MP225)', '', '5.', '50', 'BI', 'MO01', '254.3', '-4.5', '4.5', '276.3', '6.0', '-5.4', '276.3', '6.0', '-5.4', '11.00', '-0.5', '0.8', '-82.54', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '320.0', '5.0', 6, '', '106.9064', '0.0000', '0.0000'),
(18, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '3.03', 91, 78033, 6, 'ST15261797', 0, '', '', 11, 'FM1', 580, 577, 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'ISOLATION', 'ISOLATION', '265.3', '5.50', '-82.8', 1, '2.3837', 'MP225', 12800040, 'Bande mousse COFOAM L:50 E:5,5 MO01 Densit?=0.54 g/ml TYPE PVC-C SOVEPLAST ( ex MP225)', '', '5.', '50', 'BI', 'MO01', '254.3', '-4.5', '4.5', '276.3', '6.0', '-5.4', '276.3', '6.0', '-5.4', '11.00', '-0.5', '0.8', '-82.84', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '320.0', '5.0', 6, '', '106.8334', '0.0000', '0.0000'),
(19, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '3.01', 91, 78033, 6, 'ST15261797', 0, '', '', 12, 'FM2', 660, 657, 'FRETTAGE MOUSSE PASSAGE 2', 'INSULATION FOAM (2nd)', 'ISOLATION', 'ISOLATION', '276.3', '5.50', '83.12', 1, '2.4805', 'MP225', 12800040, 'Bande mousse COFOAM L:50 E:5,5 MO01 Densit?=0.54 g/ml TYPE PVC-C SOVEPLAST ( ex MP225)', '', '5.', '50', 'BI', 'MO01', '276.3', '-5.4', '6.0', '298.3', '7.5', '-6.3', '298.3', '7.5', '-6.3', '11.00', '-0.5', '0.8', '83.12', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '320.0', '5.0', 6, '', '106.7689', '0.0000', '0.0000'),
(20, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '3.01', 91, 78033, 6, 'ST15261797', 0, '', '', 12, 'FM2', 660, 657, 'FRETTAGE MOUSSE PASSAGE 2', 'INSULATION FOAM (2nd)', 'ISOLATION', 'ISOLATION', '287.3', '5.50', '83.38', 1, '2.5773', 'MP225', 12800040, 'Bande mousse COFOAM L:50 E:5,5 MO01 Densit?=0.54 g/ml TYPE PVC-C SOVEPLAST ( ex MP225)', '', '5.', '50', 'BI', 'MO01', '276.3', '-5.4', '6.0', '298.3', '7.5', '-6.3', '298.3', '7.5', '-6.3', '11.00', '-0.5', '0.8', '83.38', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '320.0', '5.0', 6, '', '106.7117', '0.0000', '0.0000'),
(21, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '3.01', 91, 78033, 6, 'ST15261797', 0, '', '', 13, 'FM2', 660, 0, 'FRETTAGE MOUSSE PASSAGE 2', 'INSULATION FOAM (2nd)', 'FABRIC TAPE', 'FABRIC TAPE', '298.3', '0.10', '', 1, '0.1514', 'MP364', 12600250, 'TERPHANE 150 MM* 1500 M  EP:0,1 MM', 'MANDRIN  76MM', '', '', 'RU', 'ADHE', '298.3', '-6.3', '7.5', '300.6', '7.5', '-6.3', '300.6', '7.5', '-6.3', '1.15', '0.0', '0.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, '', '131.2683', '0.0000', '0.0000'),
(22, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '3.01', 91, 78033, 6, 'ST15261797', 0, '', '', 13, 'FM2', 660, 0, 'FRETTAGE MOUSSE PASSAGE 2', 'INSULATION FOAM (2nd)', 'FABRIC TAPE', 'FABRIC TAPE', '298.5', '0.25', '', 1, '0.1787', 'MP146', 12500010, 'RUBAN ADHESIF 145  MM * 3000 M BA07', 'TSP 8983P - (3M)', '', '', 'RU', 'BA07', '298.3', '-6.3', '7.5', '300.6', '7.5', '-6.3', '300.6', '7.5', '-6.3', '1.15', '0.0', '0.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, '', '136.4186', '0.0000', '0.0000'),
(23, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '3.01', 91, 78033, 6, 'ST15261797', 0, '', '', 13, 'FM2', 660, 0, 'FRETTAGE MOUSSE PASSAGE 2', 'INSULATION FOAM (2nd)', 'FABRIC TAPE', 'FABRIC TAPE', '299.0', '0.40', '', 1, '0.1389', 'MP141', 12600010, 'BANDE TISSEE  150  MM * 3000 M BA04', 'POLYESTER', '', '', 'RU', 'BA04', '298.3', '-6.3', '7.5', '300.6', '7.5', '-6.3', '300.6', '7.5', '-6.3', '1.15', '0.0', '0.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, '', '131.2597', '0.0000', '0.0000'),
(24, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 0, '-0.005', '0.015', '3.01', 91, 78033, 6, 'ST15261797', 0, '', '', 13, 'FM2', 660, 0, 'FRETTAGE MOUSSE PASSAGE 2', 'INSULATION FOAM (2nd)', 'FABRIC TAPE', 'FABRIC TAPE', '299.8', '0.40', '', 1, '0.1393', 'MP141', 12600010, 'BANDE TISSEE  150  MM * 3000 M BA04', 'POLYESTER', '', '', 'RU', 'BA04', '298.3', '-6.3', '7.5', '300.6', '7.5', '-6.3', '300.6', '7.5', '-6.3', '1.15', '0.0', '0.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, '', '131.2529', '0.0000', '0.0000'),
(25, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 1, '-0.005', '0.010', '3.90', 91, 78033, 6, 'ST15261797', 0, '', '', 14, 'GEX', 780, 778, 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '300.6', '12.00', '', 1, '11.1602', 'MP968', 11800020, 'TP FLEX                   TP26/TP27', ' ', '', '', 'TP', 'TP26', '300.6', '-6.3', '7.5', '324.6', '8.7', '-7.5', '324.6', '8.7', '-7.5', '12.00', '-2.0', '2.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '16.', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, '', '0.0000', '0.0000', '0.0000'),
(26, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '0.000', '0.000', '1.62', 91, 78389, 5, 'ST12740400', 0, '', '', 1, 'PC', 60, 0, 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '127.0', '4.00', '-88.0', 1, '7.2212', 'MP460', 10101710, 'Feuillard inox 0,8x40 duplex FE04 EN 1.4462/ UNS S31803 (MP460)', '', '0.', '40', 'FI', 'FE04', '127.0', '-1.3', '1.3', '135.0', '1.4', '-1.4', '135.0', '1.4', '-1.4', '4.00', '0.0', '0.0', '-88.01', '125.', '127', 0, '0.5', '136', '127', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, 'Jeffa PCRM7 ou Wynn Draw sp30 ( LP851 )', '14.3250', '14.3250', '14.3250'),
(27, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 2, '0.000', '0.000', '2.01', 91, 78389, 5, 'ST12740400', 0, '', '', 2, 'GP', 140, 0, 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '135.0', '8.10', '', 1, '6.4618', 'MP125', 11900010, 'PVDF TP06 amendement S (MP125)', '', '', '', 'FF', 'TP06', '135.0', '-1.4', '1.4', '151.2', '2.2', '-2.2', '151.2', '2.2', '-2.2', '8.10', '-1.2', '1.2', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '10.', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, '', '0.0000', '0.0000', '0.0000'),
(28, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.11', 91, 78389, 5, 'ST12740400', 0, '', '', 3, 'SFT', 300, 297, 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '151.2', '8.00', '-87.1', 2, '26.5821', 'MP326', 10800090, 'Fil zeta 8 - FM35 - FI11 KISWIRE (MP326) Qualification en cours', '', '8', '0', 'FZ', 'FI11', '151.2', '-2.2', '2.2', '167.2', '2.4', '-2.4', '167.2', '2.4', '-2.4', '8.00', '0.0', '0.1', '-87.10', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '253.0', '2.0', 20, '', '25.3000', '25.3000', '25.3000'),
(29, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.66', 91, 78389, 5, 'ST12740400', 0, '', '', 4, 'A1', 420, 417, 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '167.2', '4.00', '-45', 30, '15.0814', 'MP646', 10404240, 'Fil plat 12x4 - FI41 avec courant de Foucault (MP646)', '', '4', '12', 'FP', 'FI41', '167.2', '-2.4', '2.4', '175.2', '2.6', '-2.6', '175.2', '2.6', '-2.6', '4.00', '-0.1', '0.1', '-45.00', '', '', 0, '0.5', '', '', 0, '-0.5', '', '1.062', 'STONE ENERGY A', '', 'TBD', '', 1685, '537.8', '8.0', 1, 'Lubrification : VETO86', '537.8407', '537.8000', '537.8407'),
(30, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.65', 91, 78389, 5, 'ST12740400', 0, '', '', 5, 'A1', 420, 417, 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '175.2', '4.00', '44.57', 32, '15.9680', 'MP646', 10404240, 'Fil plat 12x4 - FI41 avec courant de Foucault (MP646)', '', '4', '12', 'FP', 'FI41', '175.2', '-2.6', '2.6', '183.2', '2.8', '-2.8', '183.2', '2.8', '-2.8', '4.00', '-0.1', '0.1', '44.57', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '571.5', '8.5', 1, 'Lubrification : VETO86', '571.4557', '571.5000', '571.4557'),
(31, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.64', 91, 78389, 5, 'ST12740400', 0, '', '', 6, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '183.2', '0.15', '-76.4', 1, '0.1097', 'MP146', 12500010, 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '183.2', '-2.8', '2.8', '187.3', '2.8', '-2.8', '187.3', '2.8', '-2.8', '2.05', '0.0', '0.0', '-76.45', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, 'Lubrification : VETO86', '138.8678', '0.0000', '0.0000'),
(32, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.64', 91, 78389, 5, 'ST12740400', 0, '', '', 6, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '183.5', '0.55', '-76.7', 1, '0.1405', 'MP101', 12600700, 'Bande tissee 130mm TECHNORA T200 BA10 R=360daN TRAME VERRE (MP1013)', '', '', '', 'RU', 'BA10', '183.2', '-2.8', '2.8', '187.3', '2.8', '-2.8', '187.3', '2.8', '-2.8', '2.05', '0.0', '0.0', '-76.75', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, 'Lubrification : VETO86', '136.1222', '0.0000', '0.0000'),
(33, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.64', 91, 78389, 5, 'ST12740400', 0, '', '', 6, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '184.6', '0.55', '76.83', 1, '0.1414', 'MP101', 12600700, 'Bande tissee 130mm TECHNORA T200 BA10 R=360daN TRAME VERRE (MP1013)', '', '', '', 'RU', 'BA10', '183.2', '-2.8', '2.8', '187.3', '2.8', '-2.8', '187.3', '2.8', '-2.8', '2.05', '0.0', '0.0', '76.83', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, 'Lubrification : VETO86', '136.0776', '0.0000', '0.0000'),
(34, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.64', 91, 78389, 5, 'ST12740400', 0, '', '', 6, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '185.7', '0.40', '77.15', 1, '0.0863', 'MP141', 12600010, 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '183.2', '-2.8', '2.8', '187.3', '2.8', '-2.8', '187.3', '2.8', '-2.8', '2.05', '0.0', '0.0', '77.15', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, 'Lubrification : VETO86', '133.3380', '0.0000', '0.0000'),
(35, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.64', 91, 78389, 5, 'ST12740400', 0, '', '', 6, 'A1', 420, 0, 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '186.5', '0.40', '77.21', 1, '0.0867', 'MP141', 12600010, 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '183.2', '-2.8', '2.8', '187.3', '2.8', '-2.8', '187.3', '2.8', '-2.8', '2.05', '0.0', '0.0', '77.21', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, 'Lubrification : VETO86', '133.3084', '0.0000', '0.0000'),
(36, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 1, '-0.009', '0.013', '2.63', 91, 78389, 5, 'ST12740400', 0, '', '', 7, 'GSA', 540, 538, 'GAINAGE SUR ARMAGE', 'OVER ARMOUR LAYER SHEATH', 'INTERNAL SHEATH', 'INTERMEDIATE SHEATH', '187.3', '5.40', '', 1, '3.0958', 'MP968', 11800020, 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '187.3', '-2.8', '2.8', '198.1', '3.3', '-3.3', '198.1', '3.3', '-3.3', '5.40', '-0.6', '0.6', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '7', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, '', '0.0000', '0.0000', '0.0000'),
(37, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.59', 91, 78389, 5, 'ST12740400', 0, '', '', 8, 'FM1', 580, 577, 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'ISOLATION', 'ISOLATION', '198.1', '11.00', '-80.7', 1, '4.5946', 'MP229', 12800050, 'Bande mousse 50x11mm COFOAM MO03 Type PC.415 pds:380g/m (MP229)', '', '11', '50', 'BI', 'MO03', '198.1', '-3.3', '3.3', '242.1', '6.3', '-5.1', '242.1', '6.3', '-5.1', '22.00', '-0.9', '1.5', '-80.71', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '321.0', '5.0', 6, '', '107.4091', '0.0000', '0.0000'),
(38, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.59', 91, 78389, 5, 'ST12740400', 0, '', '', 8, 'FM1', 580, 577, 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'ISOLATION', 'ISOLATION', '220.1', '11.00', '-81.6', 1, '5.0780', 'MP229', 12800050, 'Bande mousse 50x11mm COFOAM MO03 Type PC.415 pds:380g/m (MP229)', '', '11', '50', 'BI', 'MO03', '198.1', '-3.3', '3.3', '242.1', '6.3', '-5.1', '242.1', '6.3', '-5.1', '22.00', '-0.9', '1.5', '-81.60', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '321.0', '5.0', 6, '', '107.1494', '0.0000', '0.0000'),
(39, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.59', 91, 78389, 5, 'ST12740400', 0, '', '', 9, 'FM1', 580, 0, 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '242.1', '0.10', '80.16', 1, '0.1229', 'MP364', 12600250, 'Terphane 150mmx1500m EP:0,1mm Mandrin:76mm (MP364)', '', '', '', 'RU', 'N.A.', '242.1', '-5.1', '6.3', '244.5', '6.3', '-5.1', '244.5', '6.3', '-5.1', '1.20', '0.0', '0.0', '80.16', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, '', '131.9399', '0.0000', '0.0000'),
(40, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.59', 91, 78389, 5, 'ST12740400', 0, '', '', 9, 'FM1', 580, 0, 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '242.3', '0.15', '79.79', 1, '0.1450', 'MP146', 12500010, 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '242.1', '-5.1', '6.3', '244.5', '6.3', '-5.1', '244.5', '6.3', '-5.1', '1.20', '0.0', '0.0', '79.79', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, '', '137.1717', '0.0000', '0.0000'),
(41, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.59', 91, 78389, 5, 'ST12740400', 0, '', '', 9, 'FM1', 580, 0, 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '242.6', '0.15', '-79.8', 1, '0.1452', 'MP146', 12500010, 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '242.1', '-5.1', '6.3', '244.5', '6.3', '-5.1', '244.5', '6.3', '-5.1', '1.20', '0.0', '0.0', '-79.80', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, '', '137.1663', '0.0000', '0.0000'),
(42, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.59', 91, 78389, 5, 'ST12740400', 0, '', '', 9, 'FM1', 580, 0, 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '242.9', '0.40', '-80.2', 1, '0.1129', 'MP141', 12600010, 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '242.1', '-5.1', '6.3', '244.5', '6.3', '-5.1', '244.5', '6.3', '-5.1', '1.20', '0.0', '0.0', '-80.21', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, '', '131.9221', '0.0000', '0.0000'),
(43, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 0, '-0.009', '0.013', '2.59', 91, 78389, 5, 'ST12740400', 0, '', '', 9, 'FM1', 580, 0, 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '243.7', '0.40', '-80.2', 1, '0.1133', 'MP141', 12600010, 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '242.1', '-5.1', '6.3', '244.5', '6.3', '-5.1', '244.5', '6.3', '-5.1', '1.20', '0.0', '0.0', '-80.24', '', '', 0, '0.5', '', '', 0, '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, '', '131.9092', '0.0000', '0.0000'),
(44, '', '13.39', 15994, '32464.53837', '3.1', 'Sweet', '3.1', 1, '-0.009', '0.008', '3.12', 91, 78389, 5, 'ST12740400', 0, '', '', 10, 'GEX', 780, 778, 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '244.5', '7.50', '', 1, '5.6229', 'MP968', 11800020, 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '244.5', '-5.1', '6.3', '259.5', '7.1', '-5.9', '259.5', '7.1', '-5.9', '7.50', '-1.1', '1.1', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '9.8', '', 'STONE ENERGY A', '', 'TBD', '', 1685, '0.0', '0.0', 0, '', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `layer`
--

CREATE TABLE IF NOT EXISTS `layer` (
  `layer_id` int(10) NOT NULL AUTO_INCREMENT,
  `layer_code` varchar(10) NOT NULL,
  `layer_description` varchar(200) NOT NULL COMMENT 'LAYER NAME',
  `machine_code` varchar(10) NOT NULL,
  PRIMARY KEY (`layer_id`),
  KEY `machine_id` (`machine_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `layer`
--

INSERT INTO `layer` (`layer_id`, `layer_code`, `layer_description`, `machine_code`) VALUES
(1, 'IC', 'INTERLOCKED CARCASS', 'SP17'),
(2, 'PS', 'PRESSURE SHEATH', 'G203'),
(3, 'ZS', 'ZETA SPIRALLING', 'SP18'),
(4, 'TA', 'TENSILE ARMOUR', 'A9'),
(5, 'EXS', 'EXTERNAL SHEATH', 'G203'),
(6, 'IMS', 'INTERMEDIATE SHEATH', 'G203'),
(7, 'IF', 'INSULATION FOAM (1st)', 'SP19'),
(8, 'IF2', 'INSULATION FOAM (2nd)', 'SP17');

-- --------------------------------------------------------

--
-- Table structure for table `layer_tool`
--

CREATE TABLE IF NOT EXISTS `layer_tool` (
  `layer_tool_id` int(11) NOT NULL AUTO_INCREMENT,
  `layer_id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`layer_tool_id`),
  KEY `layer_id` (`layer_id`,`tool_id`),
  KEY `tool_id` (`tool_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `layer_tool`
--

INSERT INTO `layer_tool` (`layer_tool_id`, `layer_id`, `tool_id`, `priority`) VALUES
(1, 1, 1, 5),
(2, 1, 3, 4),
(11, 2, 7, 0),
(4, 1, 5, 3),
(5, 1, 6, 0),
(6, 1, 4, 1),
(7, 1, 2, 2),
(8, 5, 7, 0),
(9, 5, 9, 1),
(10, 5, 8, 2),
(12, 2, 9, 1),
(13, 2, 8, 2),
(14, 6, 7, 0),
(15, 6, 9, 1),
(16, 6, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE IF NOT EXISTS `material` (
  `material_id` int(11) NOT NULL AUTO_INCREMENT,
  `material_code` varchar(50) NOT NULL,
  `type_of_production` varchar(200) NOT NULL,
  `type_of_production_size` varchar(100) DEFAULT NULL,
  `code_one` varchar(50) DEFAULT NULL,
  `code_two` varchar(100) DEFAULT NULL,
  `ref_num` varchar(200) DEFAULT '0',
  `crimping_rollers` varchar(200) DEFAULT '0',
  `max_scroll_speed` varchar(200) DEFAULT '0',
  `criteria` varchar(200) DEFAULT '0',
  `ratio` varchar(200) DEFAULT '0',
  `nom_pitch` varchar(200) DEFAULT '0',
  `oil1` varchar(200) DEFAULT '0',
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`material_id`, `material_code`, `type_of_production`, `type_of_production_size`, `code_one`, `code_two`, `ref_num`, `crimping_rollers`, `max_scroll_speed`, `criteria`, `ratio`, `nom_pitch`, `oil1`) VALUES
(1, 'MP10', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'AISI 304', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(2, 'MP4', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'AISI 304', 'FE02', '5416', '0', '0', '0', '0', '16.71', '0'),
(3, 'MP5', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'AISI 304', 'FE02', '5415', '0', '0', '0', '0', '16.71', '0'),
(4, 'MP8', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'AISI 304', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(5, 'MP9', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'AISI 304', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(6, 'MP80', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'AISI 304', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(7, 'MP145', 'STEEL STRIP STAINLESS STEEL', '2.5 x 100', 'AISI 304', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(8, 'MP723', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'AISI 304', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(9, 'MP100', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(10, 'MP105', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(11, 'MP106', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(12, 'MP108', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(13, 'MP438', 'STEEL STRIP STAINLESS STEEL', '2.5 x 100', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(14, 'MP633', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(15, 'MP708', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(16, 'MP119', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'AISI 316L', 'FE02', '5416', '0', '0', '0', '0', '16.71', '0'),
(17, 'MP121', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(18, 'MP122', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(19, 'MP123', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(20, 'MP169', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(21, 'MP693', 'STEEL STRIP STAINLESS STEEL', '2.5 x 100', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(22, 'MP91', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(23, 'MP99', 'STEEL STRIP STAINLESS STEEL', '40.0X 0.8 X 4.0', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(24, 'MP716', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0', '16.71', '0'),
(25, 'MP886', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0', '16.71', '0'),
(26, 'MP887', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0', '16.71', '0'),
(27, 'MP888', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0', '16.71', '0'),
(28, 'MP907', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0', '16.71', '0'),
(29, 'MP910', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0', '16.71', '0'),
(30, 'MP911', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'DUPLEX 2304', 'FE08', '5416', '0', '0', '0', '0', '16.71', '0'),
(31, 'MP923', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0', '16.71', '0'),
(32, 'MP930', 'STEEL STRIP STAINLESS STEEL', '2.5 x 10', '0 DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0', '16.71', '0'),
(33, 'MP950', 'STEEL STRIP STAINLESS STEEL', '0.7 x 28', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0', '16.71', '0'),
(34, 'MP449', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0', '16.71', '0'),
(35, 'MP144', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0', '16.71', '0'),
(36, 'MP180', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0', '16.71', '0'),
(37, 'MP196', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'DUPLEX 2205', 'FE04', '5416', '0', '0', '0', '0', '16.71', '0'),
(38, 'MP454', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0', '16.71', '0'),
(39, 'MP460', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'DUPLEX 2205', 'FE04', '5416', '0', '0', '0', '0', '16.71', '0'),
(40, 'MP461', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0', '16.71', '0'),
(41, 'MP590', 'STEEL STRIP STAINLESS STEEL', '0.7 x 28', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0', '16.71', '0'),
(42, 'MP680', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0', '16.71', '0'),
(43, 'MP855', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0', '16.71', '0'),
(44, 'MP856', 'STEEL STRIP STAINLESS STEEL', '108.0 x 2.7 x 13.5', 'DUPLEX 2206', 'FE04', '0', '0', '0', '0', '0', '16.71', '0'),
(45, 'MP876', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(46, 'MP159', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(47, 'MP160', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(48, 'MP161', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(49, 'MP162', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(50, 'MP163', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(51, 'MP164', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(52, 'MP165', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(53, 'MP166', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(54, 'MP136', 'STEEL STRIP .ACIER', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(55, 'MP197', 'STEEL STRIP .ACIER', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(56, 'MP107', 'STEEL STRIP .ACIER', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(57, 'MPX300', 'STEEL STRIP .ACIER', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(58, 'MP227', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(59, 'MP321', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(60, 'MP524', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(61, 'MP636', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(62, 'MP319', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(63, 'MP207', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(64, 'MP206', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(65, 'MP410', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(66, 'MP323', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(67, 'MP411', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(68, 'MP368', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(69, 'MP211', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(70, 'MP208', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(71, 'MP794', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(72, 'MP525', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(73, 'MP413', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(74, 'MP331', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(75, 'MP652', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(76, 'MP581', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(77, 'MP318', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(78, 'MP526', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(79, 'MP317', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(80, 'MP552', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(81, 'MP474', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(82, 'MP212', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(83, 'MP205', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(84, 'MP234', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(85, 'MP154', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(86, 'MP514', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(87, 'MP316', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(88, 'MP243', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(89, 'MP241', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(90, 'MP242', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(91, 'MP457', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(92, 'MP582', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(93, 'MPX283', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(94, 'MP152', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(95, 'MP326', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(96, 'MP407', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(97, 'MP746', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(98, 'MP778', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(99, 'MP833', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(100, 'MP779', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(101, 'MP737', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(102, 'MP733', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(103, 'MP735', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(104, 'MP791', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(105, 'MP734', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(106, 'MP780', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(107, 'MP939', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(108, 'MP991', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(109, 'MP989', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(110, 'MP966', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(111, 'MP940', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(112, 'MP941', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(113, 'MP999', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(114, 'MP943', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(115, 'MP944', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(116, 'MP946', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(117, 'MP947', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(118, 'MP948', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(119, 'MP186', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(120, 'MP467', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(121, 'MP477', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(122, 'MP478', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(123, 'MP479', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(124, 'MP691', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(125, 'MP480', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(126, 'MP481', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(127, 'MP482', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(128, 'MP483', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(129, 'MP36', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(130, 'MP38', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(131, 'MP484', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(132, 'MP98', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(133, 'MP39', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(134, 'MP127', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(135, 'MP485', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(136, 'MP129', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(137, 'MP646', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(138, 'MP647', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(139, 'MP37', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(140, 'MP131', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(141, 'MP90', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(142, 'MP685', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(143, 'MP486', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(144, 'MP487', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(145, 'MP476', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(146, 'MP613', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(147, 'MP260', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(148, 'MP191', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(149, 'MP981', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(150, 'MP366', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(151, 'MP841', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(152, 'MP472', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(153, 'MP550', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(154, 'MP365', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(155, 'MP471', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(156, 'MP744', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(157, 'MP364', 'TERPHANE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(158, 'MP240', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(159, 'MP238', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(160, 'MP797', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(161, 'MP798', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(162, 'MP239', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(163, 'MP799', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(164, 'MP237', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(165, 'MP800', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(166, 'MP391', 'BANDE TISSEE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(167, 'MP332', 'BANDE TISSEE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(168, 'MP905', 'TECHNORA STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(169, 'MP866', 'ESTER TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(170, 'MP142', 'ESTER TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(171, 'MP141', 'ESTER TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(172, 'MP349', 'ESTER TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(173, 'MP689', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(174, 'MP688', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(175, 'MP687', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(176, 'MP174', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(177, 'MP173', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(178, 'MP146', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(179, 'MP175', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(180, 'MP250', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(181, 'MP773', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(182, 'MP898', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(183, 'MP324', 'TECHNORA STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(184, 'MP967', 'TECHNORA STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(185, 'MP983', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(186, 'MP977', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(187, 'MP972', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(188, 'MP984', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(189, 'MP978', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(190, 'MP973', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(191, 'MP985', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(192, 'MP979', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(193, 'MP974', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(194, 'MP279', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(195, 'MP248', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(196, 'MP225', 'COFOAM INSULATION STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(197, 'MP229', 'COFOAM INSULATION STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(198, 'MP901', 'WOVEN STRIP KEVLAR', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(199, 'MP549', 'COFOAM INSULATION STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(200, 'MP57', 'RILSAN BESNO', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(201, 'MP62', 'PE HD NOIR', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(202, 'MP125', 'PVDF COFLON STA', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(203, 'MP213', 'COFLON XD TP29', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(204, 'MP223', 'RILSAN BESNO', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(205, 'MP406', 'PE  CROSSFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(206, 'MP406', 'PE  CROSSFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(207, 'MP1001', 'PE  CROSSFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(208, 'MP1002', 'PE  CROSSFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(209, 'MP64', 'PE  MEDIUM DENSITY TRANSLUCENT', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(210, 'MP606', 'RILSAN BESN  NOIR', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(211, 'MP595', 'PE  MEDIUM DENSITY YELLOW', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(212, 'MP961', 'PE  MEDIUM DENSITY BLACK', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(213, 'MP987', 'PIPELON', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(214, 'MP933', 'ELASTOMER THERMOPLASTIC', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(215, 'MP170', 'HDFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(216, 'MP170', 'HDFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(217, 'MP968', 'TPFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(218, 'MP968', 'TPFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(219, 'MP934', 'MAIN MIX', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(220, 'MP1020', 'PRESSURE SHEATH POLYAMIDE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(221, 'MP1030', 'FLAT WIRES', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(222, 'MP1013', 'TECHNORA STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(223, 'MP1016', 'STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(224, 'MP1015', 'TECHNORA', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(225, 'MP885', 'GAMMAFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(226, 'MP980', 'GAMMAFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(227, 'MP171', 'MAIN MIX', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(228, 'MP599', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(229, 'MP814', 'FIRST ARMOUR LAY.FMS', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0'),
(230, 'MP138', 'INTERLOCKED CARCAS', NULL, NULL, NULL, '0', '0', '0', '0', '0', '16.71', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nominal_column`
--

CREATE TABLE IF NOT EXISTS `nominal_column` (
  `nc_id` int(11) NOT NULL AUTO_INCREMENT,
  `nc_name` varchar(100) NOT NULL,
  `nc_description` text,
  PRIMARY KEY (`nc_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `nominal_column`
--

INSERT INTO `nominal_column` (`nc_id`, `nc_name`, `nc_description`) VALUES
(1, 'EPMP', NULL),
(2, 'LARGMP', NULL),
(3, 'CODEPRODUITGENERIQUE', NULL),
(4, 'CODEPRODUITUSUEL', NULL),
(5, 'DIAINTERCOUCHE', NULL),
(6, 'DIAINTERCOUCHETOLINF', NULL),
(7, 'DIAINTERCOUCHETOLSUP', NULL),
(8, 'DIAEXTERCOUCHE', NULL),
(9, 'DIAEXTERCOUCHETOLSUP', NULL),
(10, 'DIAEXTERCOUCHETOLINF', NULL),
(11, 'DIAEXTERNONRETREINT', NULL),
(12, 'DIAEXTERTOLSUPNONRETREINT', NULL),
(13, 'DIAEXTERTOLINFNONRETREINT', NULL),
(14, 'EPCOUCHE', NULL),
(15, 'EPCOUCHETOLINF', NULL),
(16, 'EPCOUCHETOLSUP', NULL),
(17, 'ARMANGLE', NULL),
(18, 'DIAEXTERCLI', NULL),
(19, 'LGCLI', NULL),
(20, 'CLITOLINF', NULL),
(21, 'CLITOLSUP', NULL),
(22, 'DIAINTERCLE', NULL),
(23, 'LGCLE', NULL),
(24, 'CLETOLSUP', NULL),
(25, 'CLETOLINF', NULL),
(26, 'EPMAXICOUCHE', NULL),
(27, 'ARMPASRATIO', NULL),
(28, 'NOMAFFAIRE', NULL),
(29, 'CHAMP', NULL),
(30, 'INGENIEURAFF', NULL),
(31, 'DATELIVRAISON', NULL),
(32, 'MBR', NULL),
(33, 'PASNOMINAL', NULL),
(34, 'TOLPASNOMINAL', NULL),
(35, 'NBTOURCONTROLEPAS', NULL),
(36, 'COMMENTAIRES', NULL),
(37, 'MAN_LINEIC_OBJ_MPITCH', NULL),
(38, 'AVG_PITCH_MAN', NULL),
(39, 'AVG_PITCH_ENG', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nominal_type`
--

CREATE TABLE IF NOT EXISTS `nominal_type` (
  `nt_id` int(11) NOT NULL AUTO_INCREMENT,
  `nt_name` varchar(100) NOT NULL,
  PRIMARY KEY (`nt_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `nominal_type`
--

INSERT INTO `nominal_type` (`nt_id`, `nt_name`) VALUES
(1, 'DRAWING-NO'),
(2, 'DRAWING NAME'),
(3, 'TOOLING NAME'),
(4, 'MACHINE TYPE'),
(5, 'LOCATION'),
(6, 'STATUS'),
(7, 'QUANTITY'),
(8, 'Updated Date'),
(9, 'ID'),
(10, 'OD'),
(11, 'LENGTH'),
(12, 'PCD'),
(13, 'HEAD'),
(14, 'WITH RING'),
(15, 'WITH PIN/DIE SUPPORT'),
(16, 'SUPPORT SIZE'),
(17, 'TYPE'),
(18, 'HEIGHT'),
(19, 'THICKNESS'),
(20, 'SIZE'),
(21, 'MATERIAL'),
(22, 'ANGLE'),
(23, 'WIRE NUMBER'),
(24, 'PCD FLANGE'),
(25, 'PCD CENTER GUIDE'),
(26, 'STRIP SIZE'),
(27, 'INCH'),
(28, 'PCD HOLE SIZE');

-- --------------------------------------------------------

--
-- Table structure for table `param`
--

CREATE TABLE IF NOT EXISTS `param` (
  `param_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_id` int(11) DEFAULT NULL,
  `param_tol_min` varchar(10) DEFAULT NULL,
  `param_tol_plus` varchar(10) DEFAULT NULL,
  `param_tool_code` varchar(100) NOT NULL,
  `param_number` int(11) DEFAULT NULL,
  `param_code` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`param_id`),
  KEY `tool_id` (`tool_id`),
  KEY `tool_id_2` (`tool_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `param`
--

INSERT INTO `param` (`param_id`, `tool_id`, `param_tol_min`, `param_tol_plus`, `param_tool_code`, `param_number`, `param_code`) VALUES
(1, 1, '-0.2', '0', 'MANDREL', 1, 'OD'),
(2, 1, NULL, NULL, 'MANDREL', 2, 'OB'),
(3, 1, '-0.2', '0', 'MANDREL', 3, 'OC'),
(4, 1, '-0.3', '3', 'MANDREL', 4, 'E'),
(5, 1, '1', '1', 'MANDREL', 5, 'RxOF'),
(6, 1, '', '', 'MANDREL', 6, 'K'),
(7, 1, '', '', 'MANDREL', 7, 'P'),
(8, 1, '', '', 'MANDREL', 8, 'H'),
(9, 1, '', '', 'MANDREL', 9, 'L'),
(11, 3, '1', '1', 'EXTERNAL CALIPER', 1, 'D'),
(12, 3, '1', '1', 'EXTERNAL CALIPER', 2, 'L'),
(21, 7, '1', '1', 'DIE', 1, 'OD'),
(14, 5, '1', '1', 'BRACKET 2:4', 1, 'A'),
(15, 5, '1', '1', 'BRACKET 2:4', 2, 'E'),
(20, 7, '1', '1', 'DIE', 2, 'ID'),
(17, 5, '1', '1', 'BRACKET 2:4', 3, 'L'),
(18, 5, '1', '1', 'BRACKET 2:4', 4, 'P'),
(19, 5, '1', '1', 'BRACKET 2:4', 5, 'R'),
(22, 7, NULL, NULL, 'DIE', 3, 'HEAD'),
(23, 5, '-2', '2', 'BRACKET 2:4', 6, 'QQ'),
(24, 2, NULL, NULL, 'INTERNAL CALIPER', 1, 'IC1'),
(25, 2, NULL, NULL, 'INTERNAL CALIPER', 2, 'IC2'),
(26, 2, NULL, NULL, 'INTERNAL CALIPER', 3, 'IC3');

-- --------------------------------------------------------

--
-- Table structure for table `param_input_options`
--

CREATE TABLE IF NOT EXISTS `param_input_options` (
  `pio_id` int(11) NOT NULL AUTO_INCREMENT,
  `pio_code` varchar(100) NOT NULL,
  `pio_description` text NOT NULL,
  PRIMARY KEY (`pio_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `param_input_options`
--

INSERT INTO `param_input_options` (`pio_id`, `pio_code`, `pio_description`) VALUES
(1, 'constant', 'put the variable constants'),
(2, 'nominal_column', 'choose nominal column from imported data'),
(3, 'formula', 'put the formula'),
(4, 'text', 'Put custom text');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `project_id` int(10) NOT NULL AUTO_INCREMENT,
  `selected_layer_id` int(10) DEFAULT NULL,
  `selected_tool_id` int(10) DEFAULT NULL,
  `idnom` varchar(100) DEFAULT NULL,
  `structure_number` varchar(100) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `project_number` varchar(100) NOT NULL,
  `section_number` varchar(100) NOT NULL,
  `plf_length` double NOT NULL,
  `overlength` double NOT NULL,
  `mass` double DEFAULT NULL,
  `transaction_id` varchar(225) NOT NULL COMMENT 'transaction id for each query',
  PRIMARY KEY (`project_id`),
  KEY `pls_id` (`transaction_id`),
  KEY `selected_layer_id` (`selected_layer_id`),
  KEY `selected_tool_id` (`selected_tool_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `selected_layer_id`, `selected_tool_id`, `idnom`, `structure_number`, `project_name`, `project_number`, `section_number`, `plf_length`, `overlength`, `mass`, `transaction_id`) VALUES
(1, 1, 1, '152.4', 'ST15261797', 'Test One', '1', '1', 1, 1, NULL, '1411002921'),
(2, 1, 1, '152.4', 'ST15261797', 'ddd', 'dd', 'dd', 0, 0, NULL, '1413129846'),
(3, NULL, NULL, NULL, 'ST15261757', 'd', 'a', 'a', 0, 0, NULL, '1413895573'),
(4, 1, 5, '127.0', 'ST12740400', 'PROJECT BARU 08112014', 'test umar', '2', 3, 100, NULL, '1415467718');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'administrator'),
(2, 'staff');

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_number` varchar(100) NOT NULL,
  `var1` double NOT NULL,
  `var2` double NOT NULL,
  `cond` varchar(50) NOT NULL DEFAULT 'VAR1>X<=VAR2',
  PRIMARY KEY (`rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`rule_id`, `rule_number`, `var1`, `var2`, `cond`) VALUES
(1, 'mandrel_1', 0, 76.2, ''),
(2, 'BRACKET_1', 0, 160, ''),
(3, 'externalcaliper_1', 0, 127, ''),
(5, 'mandrel_2', 76.2, 127, ''),
(12, 'mandrel_3', 127, 199, ''),
(7, 'mandrel_4', 177.8, 304.8, ''),
(9, 'die_1', 300, 400, ''),
(10, 'die_2', 0, 10, ''),
(11, 'guidetube_1', 1, 5, ''),
(13, 'internalcaliper_1', 0, 200, ''),
(14, 'internalcaliper_1', 0, 200, '');

-- --------------------------------------------------------

--
-- Table structure for table `rule_param`
--

CREATE TABLE IF NOT EXISTS `rule_param` (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_id` int(11) NOT NULL,
  `param_id` int(11) NOT NULL DEFAULT '0',
  `pio_id` int(11) DEFAULT NULL,
  `rp_pre_value` varchar(100) DEFAULT NULL,
  `rp_formula` varchar(225) DEFAULT NULL,
  `rp_post_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rp_id`),
  KEY `rule_id` (`rule_id`,`param_id`),
  KEY `pio_id` (`pio_id`),
  KEY `param_id` (`param_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `rule_param`
--

INSERT INTO `rule_param` (`rp_id`, `rule_id`, `param_id`, `pio_id`, `rp_pre_value`, `rp_formula`, `rp_post_value`) VALUES
(1, 1, 1, 3, '152.4 * 0.992', 'DIAINTERCOUCHE * 0.992', '151.1808'),
(2, 1, 2, 1, '175', NULL, '0'),
(3, 1, 3, 1, '203.2', NULL, '0'),
(4, 1, 4, 1, '36', NULL, '0'),
(5, 1, 5, 4, '16 x Ø18', 'E * OF', '0'),
(6, 1, 6, 1, '30', NULL, '0'),
(7, 1, 7, 1, '362', NULL, '0'),
(8, 1, 8, 1, '170', NULL, '0'),
(9, 1, 9, 3, '80 + 1.5', '80 + 1.5', '81.5'),
(10, 2, 14, 3, '152.4 - 1', 'DIAINTERCOUCHE - 1', '151.4'),
(11, 2, 15, 1, '8', NULL, '8'),
(12, 3, 11, 2, 'nc_18', '', '0'),
(13, 3, 12, 1, '0', NULL, '0'),
(14, 3, 13, 3, '0100+21.89', '0100 + Haha1', '85.89'),
(15, 3, 16, 3, '110*0.199', 'X * 0.199', '21.89'),
(20, 5, 1, 3, '152.4 * 0.992', 'DIAINTERCOUCHE * 0.992', '125.984'),
(21, 5, 2, 1, '14', '14', '14'),
(22, 5, 3, 3, 'TOOL_2_130 * 2', 'TOOL_2_IC1 * 2', '260'),
(23, 5, 4, 3, 'TOOL_1_151.1808 - 40', 'TOOL_1_OD - 40', '85.984'),
(24, 5, 5, 4, '16 x Ø18', '', '0'),
(25, 5, 6, 1, '30', NULL, '0'),
(26, 5, 7, 1, '362', NULL, '0'),
(27, 5, 8, 1, '170', NULL, '0'),
(28, 5, 9, 1, '0', NULL, '0'),
(73, 12, 8, 1, '0', NULL, '0'),
(71, 12, 6, 1, '0', NULL, '0'),
(69, 12, 4, 3, 'TOOL_2_130 * 2 - nom_pitch', 'TOOL_2_IC1 * 2 - nom_pitch', '243.29'),
(66, 12, 1, 3, '152.4 + 10 * 2', 'DIAINTERCOUCHE + 10 * 2', '172.4'),
(74, 12, 9, 1, '0', NULL, '0'),
(68, 12, 3, 3, 'TOOL_1_151.1808 + 80 * ( 1.5 * nom_pitch )', 'TOOL_1_OD + 80 * ( 1.5 * nom_pitch )', '2177.6'),
(67, 12, 2, 3, '10 + nom_pitch', '10 + nom_pitch', '26.71'),
(38, 7, 1, 1, '0', NULL, '0'),
(39, 7, 2, 1, '360', NULL, '360'),
(40, 7, 3, 1, '400', NULL, '400'),
(41, 7, 4, 3, 'TOOL_1_151.1808 - 30', 'TOOL_1_OD - 30', '0'),
(42, 7, 5, 4, '18 x Ø18', '18 x O18', '18 x Ø18'),
(43, 7, 6, 1, '30', NULL, '30'),
(44, 7, 7, 1, '342', NULL, '342'),
(45, 7, 8, 1, '150', NULL, '150'),
(46, 7, 9, 1, '0', NULL, '0'),
(47, 2, 17, 1, '150', NULL, '150'),
(48, 2, 18, 1, '150', NULL, '150'),
(49, 2, 19, 1, '10', NULL, '0'),
(50, 8, 1, 1, '0', NULL, '0'),
(51, 8, 2, 1, '0', NULL, '0'),
(52, 8, 3, 1, '0', NULL, '0'),
(53, 8, 4, 1, '0', NULL, '0'),
(54, 8, 5, 1, '0', NULL, '0'),
(55, 8, 6, 1, '0', NULL, '0'),
(56, 8, 7, 1, '0', NULL, '0'),
(57, 8, 8, 1, '0', NULL, '0'),
(58, 8, 9, 1, '0', NULL, '0'),
(59, 9, 21, 2, '15.9350 - 2', 'AVG_PITCH_MAN - 2', '13.935'),
(60, 9, 20, 2, 'nc_2', '', '0'),
(61, 9, 22, 1, '0', NULL, '0'),
(72, 12, 7, 1, '0', NULL, '0'),
(70, 12, 5, 1, '0', NULL, '0'),
(62, 10, 21, 2, 'nc_14', '', '5.00'),
(63, 10, 20, 1, '0', NULL, '0'),
(64, 10, 22, 1, '0', NULL, '0'),
(65, 2, 23, 2, 'nc_2', '', '0'),
(75, 13, 24, 1, '130', '130', '130'),
(76, 13, 25, 1, '0', NULL, '0'),
(77, 13, 26, 1, '0', NULL, '0'),
(78, 14, 24, 1, '0', NULL, '0'),
(79, 14, 25, 1, '0', NULL, '0'),
(80, 14, 26, 1, '0', NULL, '0'),
(81, 13, 0, 1, '0', NULL, '0'),
(82, 14, 27, 1, '0', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `structure`
--

CREATE TABLE IF NOT EXISTS `structure` (
  `structure_id` int(11) NOT NULL AUTO_INCREMENT,
  `structure_number` varchar(100) NOT NULL,
  `layer_code` varchar(10) NOT NULL,
  `material_code` int(10) NOT NULL,
  `id_nominal` varchar(100) NOT NULL,
  `id_tol_plus` varchar(100) NOT NULL,
  `id_tol_minus` varchar(100) NOT NULL,
  `od_nominal` varchar(100) NOT NULL,
  `od_tol_plus` varchar(100) NOT NULL,
  `od_tol_minus` varchar(100) NOT NULL,
  PRIMARY KEY (`structure_id`),
  KEY `structure_number` (`structure_number`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tool`
--

CREATE TABLE IF NOT EXISTS `tool` (
  `tool_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_code` varchar(50) NOT NULL,
  `tool_description` text NOT NULL,
  `file_url` text,
  `min_range` int(11) DEFAULT '0',
  `max_range` int(11) DEFAULT '0',
  PRIMARY KEY (`tool_id`),
  KEY `tool_code` (`tool_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tool`
--

INSERT INTO `tool` (`tool_id`, `tool_code`, `tool_description`, `file_url`, `min_range`, `max_range`) VALUES
(1, 'MANDREL', 'Mandrel', '0c8f5-mandrel_1.png', 0, 160),
(2, 'INTERNAL CALIPER', 'Internal Caliper', '80249-internal-caliper-drwg.jpg', 0, 200),
(3, 'EXTERNAL CALIPER', 'External Caliper', 'b14ae-external-caliper-drwg.jpg', 0, 300),
(4, 'ENDCAP', 'End Cap', NULL, 0, 200),
(5, 'BRACKET 2:4', 'BRACKET SP17\n', '77f35-bracket.jpg', 0, 200),
(6, 'BRACKET 1:2', 'BRACKET SP17', 'af754-bracket-12.jpg', 0, 200),
(7, 'DIE', 'DIE HEAD R', 'c3574-die.jpg', 0, 250),
(8, 'PIN', 'PIN HEAD R', '22bec-pin.jpg', 0, 200),
(9, 'GUIDE TUBE', 'GUIDE TUBE HEAD R', 'ce3ed-guide-tube.jpg', 0, 250);

-- --------------------------------------------------------

--
-- Table structure for table `tooling_master`
--

CREATE TABLE IF NOT EXISTS `tooling_master` (
  `tm_id` int(11) NOT NULL AUTO_INCREMENT,
  `DRAWING-NO` varchar(24) DEFAULT NULL,
  `DRAWING NAME` varchar(66) DEFAULT NULL,
  `TOOLING NAME` varchar(25) DEFAULT NULL,
  `MACHINE TYPE` varchar(12) DEFAULT NULL,
  `LOCATION` varchar(8) DEFAULT NULL,
  `STATUS` varchar(8) DEFAULT NULL,
  `QUANTITY (NOT REVERSED)` varchar(6) DEFAULT NULL,
  `RESERVED QUANTITY` varchar(10) DEFAULT NULL,
  `Updated Date` varchar(10) DEFAULT NULL,
  `INCH` varchar(6) DEFAULT NULL,
  `TOP MOUNTING HOLE` varchar(5) DEFAULT NULL,
  `SEAL RING` varchar(11) DEFAULT NULL,
  `MOUNTING CENTER DIAMETER` varchar(11) DEFAULT NULL,
  `ID` varchar(4) DEFAULT NULL,
  `OD` varchar(5) DEFAULT NULL,
  `LENGTH` varchar(4) DEFAULT NULL,
  `SURFACE THICKNESS` varchar(2) DEFAULT NULL,
  `SURFACE HEIGHT` varchar(2) DEFAULT NULL,
  `OVERALL HEIGHT` varchar(2) DEFAULT NULL,
  `OVERALL WIDTH` varchar(2) DEFAULT NULL,
  `WIDTH` varchar(3) DEFAULT NULL,
  `MOUNTING HOLE` varchar(3) DEFAULT NULL,
  `HEIGHT` varchar(10) DEFAULT NULL,
  `THICKNESS` varchar(5) DEFAULT NULL,
  `TYPE` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`tm_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=724 ;

--
-- Dumping data for table `tooling_master`
--

INSERT INTO `tooling_master` (`tm_id`, `DRAWING-NO`, `DRAWING NAME`, `TOOLING NAME`, `MACHINE TYPE`, `LOCATION`, `STATUS`, `QUANTITY (NOT REVERSED)`, `RESERVED QUANTITY`, `Updated Date`, `INCH`, `TOP MOUNTING HOLE`, `SEAL RING`, `MOUNTING CENTER DIAMETER`, `ID`, `OD`, `LENGTH`, `SURFACE THICKNESS`, `SURFACE HEIGHT`, `OVERALL HEIGHT`, `OVERALL WIDTH`, `WIDTH`, `MOUNTING HOLE`, `HEIGHT`, `THICKNESS`, `TYPE`) VALUES
(1, 'MADD-00000366-178', ' Clamping Jaws 12"', 'CLAMPING JAWS', '', '', '', '', '', '', '12.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'MADD-00000366-182', ' Collar for US150', 'CLAMPING JAWS', 'MOUNTING', '', '', '', '', '', '12.00', '', '', '', '150.', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'MADD-00000366-489', ' External Caliper for End Fitting ?351', 'EXTERNAL CALIPER EF', 'MOUNTING', '', '', '', '', '', '10.00', '', '', '', '351.', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'MADD-00000366-185', ' External Caliper for End Fitting ?459.1', 'EXTERNAL CALIPER EF', 'MOUNTING', '', '', '', '', '', '12.00', '', '', '', '459.', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'MADD-00000366-173', ' Funnel 1/2" Pipe SCH10', 'FUNNEL', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 'MADD-00000366-183 REV.0', ' Intermediate Canula Pusher Ring ID ?358', 'FRONT CANULA JACK', 'MOUNTING', '', '', '', '', '', '12.00', '', '', '', '358.', '430.0', '', '', '', '', '', '', '', '', '', ''),
(7, 'MADD-00000366-572', ' TEST HUB GRAYLOCK IN 12M 94', 'FLANGE', 'TESTING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, 'MADD-00000365-916', '1/2 COLLAR ?100 TO ?200', 'ARMOUR WIRE COLLAR', 'MOUNTING', '', '', '', '', '', '', '', '', '', '270', '710', '80', '', '', '', '', '', '', '', '', ''),
(9, 'MADD-00000366-592', '10" ASME B16.5 RTJ FLANGE 300LBS FOR SEAL RING R53', 'FLANGE', 'TESTING', '', '', '', '', '', '', '', 'R53', '387.4', '', '445', '65.5', '', '', '', '', '', '', '', '', ''),
(10, '', '10" Wenchang Testing', 'FLANGE', 'TESTING', 'T2-N2', 'OK', '1', '', '11/06/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, '2012-076', '10-11 INCH CLAMPING JAWS', 'CLAMPING JAWS', '', '', '', '', '', '', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, '', '11'''' GRAYLOCK CLAMP', '', '', 'MTP', 'OK', '2 SET', '', '20/2/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, '2011-081', '12 INCH CLAMPING JAWS', 'CLAMPING JAWS', '', '', '', '', '', '', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, '', '12" Graylock Clamp', '', '', 'T2-O3', 'OK', '2 SET', '', '01/10/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, '', '12" Graylock Clamp', '', '', 'T2-O4', 'OK', '1 SET', '', '27/12/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, '2011-150', '4 PARTS NYLON MANDREL', 'NYLON MANDREL', 'EF', 'T2-E4', 'OK', '1', '', '26/11/2012', '', '', '', '', '145', '199', '150', '', '', '', '', '', '', '', '', ''),
(17, '2011-150', '4 PARTS NYLON MANDREL', 'NYLON MANDREL', 'EF', 'T2-E3', 'OK', '3', '', '26/11/2012', '', '', '', '', '145', '199', '150', '', '', '', '', '', '', '', '', ''),
(18, '2012-100', '4 PARTS NYLON MANDREL FOR 7"', 'NYLON MANDREL', 'MOUNTING', 'T2-E3', 'OK', '4', '', '26/11/2012', '', '', '', '', '145', '173.8', '150', '', '', '', '', '', '', '', '', ''),
(19, '2012-100', '4 PARTS NYLON MANDREL FOR 7"', 'NYLON MANDREL', 'MOUNTING', 'T2-A4', 'OK', '12 SET', '', '12/04/2012', '', '', '', '', '145', '173.8', '150', '', '', '', '', '', '', '', '', ''),
(20, '2012-1054', '4 PARTS NYLON MANDREL ?196 FOR 7.87 INCH', 'NYLON MANDREL', '', '', '', '', '', '', '', '', '', '', '145', '186', '150', '', '', '', '', '', '', '', '', ''),
(21, '2012-386', '4 PARTS NYLON MANDREL ?224 FOR 9 INCH', 'NYLON MANDREL', 'EF', 'T2-E4', 'OK', '29', '', '19/12/2012', '', '', '', '', '145', '224', '150', '', '', '', '', '', '', '', '', ''),
(22, '2012-386', '4 PARTS NYLON MANDREL ?224 FOR 9 INCH', 'NYLON MANDREL', 'EF', 'T2-E3', 'OK', '5', '', '26/11/2012', '', '', '', '', '145', '224', '150', '', '', '', '', '', '', '', '', ''),
(23, '2012-367', '4 PARTS NYLON MANDREL ?250', 'NYLON MANDREL', 'EF', 'T2-E4', 'OK', '2', '', '26/11/2012', '', '', '', '', '145', '250', '150', '', '', '', '', '', '', '', '', ''),
(24, '2012-367', '4 PARTS NYLON MANDREL ?250', 'NYLON MANDREL', 'MOUNTING', 'T2-E3', 'OK', '2', '', '26/11/2012', '', '', '', '', '145', '250', '150', '', '', '', '', '', '', '', '', ''),
(25, '2012-367', '4 PARTS NYLON MANDREL ?250', 'NYLON MANDREL', 'MOUNTING', 'T2-A4', 'OK', '3 SET', '', '12/04/2012', '', '', '', '', '145', '250', '150', '', '', '', '', '', '', '', '', ''),
(26, '2012-387', '4 PARTS NYLON MANDREL ?255 FOR 10.2 INCH', 'NYLON MANDREL', 'EF', 'T2-E4', 'OK', '27', '', '16/2/2013', '', '', '', '', '145', '255', '150', '', '', '', '', '', '', '', '', ''),
(27, '2012-387', '4 PARTS NYLON MANDREL ?255 FOR 10.2 INCH', 'NYLON MANDREL', 'EF', 'T2-E3', 'OK', '0', '', '21/1/2013', '', '', '', '', '145', '255', '150', '', '', '', '', '', '', '', '', ''),
(28, '2012-388', '4 PARTS NYLON MANDREL ?275 FOR 11 INCH', 'NYLON MANDREL', 'EF', 'T2-E4', 'OK', '13', '', '16/2/2013', '', '', '', '', '145', '175', '150', '', '', '', '', '', '', '', '', ''),
(29, '2012-549', '4 PARTS NYLON MANDREL ?277 FOR 11.06 INCH', 'NYLON MANDREL', 'EF', 'T2-E4', 'OK', '7', '', '26/11/2012', '', '', '', '', '145', '277', '150', '', '', '', '', '', '', '', '', ''),
(30, '2012-549', '4 PARTS NYLON MANDREL ?277 FOR 11.06 INCH', 'NYLON MANDREL', 'EF', 'T2-E4', 'OK', '1', '', '26/11/2012', '', '', '', '', '145', '277', '150', '', '', '', '', '', '', '', '', ''),
(31, '2012-1074', '4 PARTS NYLON MANDREL ?277 FOR 15.75 INCH', 'NYLON MANDREL', 'EF', '', '', '', '', '', '', '', '', '', '145', '395', '150', '', '', '', '', '', '', '', '', ''),
(32, '2012-1053', '4 PARTS NYLON MANDREL ?296 FOR 11.81 INCH', 'NYLON MANDREL', '', '', '', '', '', '', '', '', '', '', '145', '296', '150', '', '', '', '', '', '', '', '', ''),
(33, 'MADD-00000366-522', '4 PARTS NYLON MANDREL ?370 FOR 14.75 "', 'STRAIGHTENER', 'MOUNTING', '', '', '', '', '', '14.75"', '', '', '', '145.', '370.0', '', '', '', '', '', '', '', '', '', ''),
(34, '2012-1074', '4 PARTS NYLON MANDREL ?395 FOR 15.75 INCH (REWORK TO 15.12) ?380', 'NYLON MANDREL', 'EF', '', '', '3SET', '', '', '', '', '', '', '145', '395', '150', '', '', '', '', '', '', '', '', ''),
(35, '2012-405', '4 PARTS NYLON MANDREL ?72', 'NYLON MANDREL', '', '', '', '', '', '', '', '', '', '', '145', '72', '150', '', '', '', '', '', '', '', '', ''),
(36, '2012-398', '4 PARTS NYLON MANDREL ?98', 'NYLON MANDREL', '', '', '', '', '', '', '', '', '', '', '145', '98', '150', '', '', '', '', '', '', '', '', ''),
(37, '2012-446', '4 Parts Nylon Mandrell ?123', 'NYLON MANDREL', '', '', '', '', '', '', '', '', '', '', '145', '123', '150', '', '', '', '', '', '', '', '', ''),
(38, '2012-447', '4 Parts Nylon Mandrell ?148', 'NYLON MANDREL', '', '', '', '', '', '', '', '', '', '', '145', '148', '150', '', '', '', '', '', '', '', '', ''),
(39, 'MADD-00000365-342', '4 Parts Nylon Shell ?186 for 7.5 Inch', 'NYLON MANDREL', 'MOUNTING', '', '', '', '', '10/09/2013', '', '', '', '', '145.', '186.0', '150', '', '', '', '', '', '', '', '', ''),
(40, 'MADD-00000366-161', '4 PARTS NYLON SHELL ?191 FOR 7.68 INCH', 'NYLON MANDREL', '', '', '', '', '', '', '', '', '', '', '145.', '191.0', '150', '', '', '', '', '', '', '', '', ''),
(41, 'MADD-00000365-344', '4 Parts Nylon Shell ?243 for 9.75 Inch', 'NYLON MANDREL', 'MOUNTING', '', '', '', '', '10/09/2013', '', '', '', '', '145.', '243.0', '150', '', '', '', '', '', '', '', '', ''),
(42, 'MADD-00000365-343', '4 Parts Nylon Shell ?281 for 11.25 Inch', 'NYLON MANDREL', 'MOUNTING', '', '', '', '', '10/09/2013', '', '', '', '', '145.', '281.0', '150', '', '', '', '', '', '', '', '', ''),
(43, '2012-1073', '4 PARTS NYLON SHELL ?300 FOR 12 INCH', 'NYLON MANDREL', '', '', '', '', '', '', '', '', '', '', '145', '300', '150', '', '', '', '', '', '', '', '', ''),
(44, 'MADD-00000365-524', '6'''' SAWAGING DIE', 'SWAGING DIE', 'MOUNTING', '', '', '', '', '28-Mei', '6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(45, '2011-735', '6" EXPANDING MANDREL', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(46, '2012-299', '6" SWAGING MANDREL', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(47, '2011-050', '7" 1/16 API 6BX 15000 PSI BX 156 Seal Type', 'FLANGE', 'TESTING', '', '', '', '', '', '', '16', 'Bx156', '428.6', '', '', '', '', '', '', '', '', '', '', '', ''),
(48, 'MADD-00000366-591', '8'''' CLAMPING JAWS (DRAPS)', 'CLAMPING JAWS', 'US40', '', '', '', '', '03/07/2014', '8.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(49, '2011-027', '8 INCH CLAMPING JAWS', 'CLAMPING JAWS', '', '', '', '', '', '', '8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(50, '2011-334', 'ADAPTER 10 INCH', 'ADAPTOR X LINKING', '', '', '', '', '', '', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(51, '2012-128', 'ADAPTER- HUB GRAYLOC 8GR82 /HAMMER UNION 2" FIG 20,000 PSI FEMALE', 'FLANGE', 'TESTING', 'T2-T4', 'OK', '3', '', '18/9/2013', '', 'CLAMP', '82', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(52, '2012-128', 'ADAPTER- HUB GRAYLOC 8GR82 /HAMMER UNION 2" FIG 20,000 PSI FEMALE', 'FLANGE', 'TESTING', 'T2-T3', 'OK', '1', '', '18/9/2013', '', 'CLAMP', '82', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(53, '2011-298', 'Adapter-Hub Grayloc 6GR62/Hammer Union 2 Inch FIG 15000 PSI Female', 'FLANGE', 'TESTING', 'T2-T3', 'OK', '2', '', '18/9/2013', '', 'CLAMP', '62', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(54, '2011-049', 'Adapter-Hub Grayloc 6GR62/Hammer Union 2 Inch FIG 20000 PSI Female', 'FLANGE', 'TESTING', 'T2-T3', 'OK', '2', '', '18/9/2013', '', 'CLAMP', '62', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(55, '2011-663', 'ADAPTOR', 'ADAPTOR X LINKING', '', '', '', '', '', '', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, 'XL-C001-', 'ADAPTOR', 'ADAPTOR X LINKING', '', '', '', '', '', '', '6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 'MADD-00000365-225', 'ADAPTOR 14 INCH', 'ADAPTOR X LINKING', 'X-LINKING', '', '', '', '', '23-Mei', '14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(58, 'XL-C002-', 'ADAPTOR 8 INCH', 'ADAPTOR X LINKING', '', '', '', '', '', '', '8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(59, '2012-298', 'ADAPTOR -HUB GRAYLOC 6GR62', 'FLANGE', 'TESTING', 'T2-B5', 'OK', '2', '', '21/1/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(60, '2011-723', 'Adaptor Hub Grayloc 8 IN 76', 'FLANGE', 'TESTING', 'T2-T3', 'OK', '2', '', '18/9/2013', '', 'CLAMP', '76', '8IN CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(61, '2011-723', 'Adaptor Hub Grayloc 8 IN 76', 'FLANGE', 'TESTING', 'T2-B5', 'OK', '2', '', '12/04/2012', '', 'CLAMP', '76', '8IN CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(62, '2011-250', 'adaptor testing', '', '', 'T2-P3', 'OK', '2', '', '23/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(63, '2012-PIG-008', 'ASEEMBLE OF PIG 11.06 INCH UNBC', 'PIG ASSEMBLY', '', '', '', '', '', '', '11.06', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(64, '2012-PIG-016', 'ASSEMBLE FOR PIG 9" FLETCHER FINUCANE', 'PIG ASSEMBLY', '', '', '', '', '', '', '9', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(65, '2012-PIG-011', 'ASSEMBLE OF PIG 12 INCH KAMELIA', 'PIG ASSEMBLY', '', '', '', '', '', '', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(66, '2012-PIG-012', 'ASSEMBLE OF PIG 12 INCH KAMELIA', 'PIG ASSEMBLY', '', '', '', '', '', '', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(67, '2011-PIG-001', 'ASSEMBLE PIG 7"', 'PIG ASSEMBLY', '', '', '', '', '', '', '7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(68, 'MCRM-00000000-016', 'ASSEMBLY OF CRIMPING MANDREL ?10 INCH', 'CRIMPING MANDREL ASSEMBLY', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '10.0', '1360', '', '', '', '', '', '', '', '', ''),
(69, '2012-CRM-006', 'ASSEMBLY OF CRIMPING MANDREL ?10.2 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(70, '2012-CRM-003', 'ASSEMBLY OF CRIMPING MANDREL ?11 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(71, '2012-CRM-011', 'ASSEMBLY OF CRIMPING MANDREL ?11.06 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(72, 'MCRM-00000000-008', 'Assembly of Crimping Mandrel ?11.25"', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '285.7', '', '', '', '', '', '', '', '', '', ''),
(73, 'MCRM-00000000-009', 'Assembly of Crimping Mandrel ?11.25"', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '285.7', '', '', '', '', '', '', '', '', '', ''),
(74, '2013-CRM-001', 'ASSEMBLY OF CRIMPING MANDREL ?11.81 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, '2012-CRM-014', 'ASSEMBLY OF CRIMPING MANDREL ?15.75" - LONG EF-', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(76, '2012-CRM-013', 'ASSEMBLY OF CRIMPING MANDREL ?15.75" - SHORT EF-', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(77, '2012-CRM-004', 'ASSEMBLY OF CRIMPING MANDREL ?4 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(78, '2012-CRM-005', 'ASSEMBLY OF CRIMPING MANDREL ?5 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, 'MCRM-00000000-012', 'Assembly of Crimping Mandrel ?5.63"', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '143.0', '', '', '', '', '', '', '', '', '', ''),
(80, '2012-CRM-008', 'ASSEMBLY OF CRIMPING MANDREL ?6 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(81, '2012-CRM-009', 'ASSEMBLY OF CRIMPING MANDREL ?7 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(82, '2013-CRM-002', 'ASSEMBLY OF CRIMPING MANDREL ?7.87 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, '2012-CRM-010', 'ASSEMBLY OF CRIMPING MANDREL ?8 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(84, '2012-CRM-007', 'ASSEMBLY OF CRIMPING MANDREL ?9 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, 'MCRM-00000000-010', 'Assembly of Crimping Mandrel ?9.75"', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '247.7', '', '', '', '', '', '', '', '', '', ''),
(86, 'MCRM-00000000-011', 'Assembly of Crimping Mandrel ?9.75"', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '247.7', '', '', '', '', '', '', '', '', '', ''),
(87, 'MCRM-00000000-027', 'ASSEMBLY OF CRUMPING MANDREL 6" WITH SHELL', 'CRIMPING MANDREL ASSEMBLY', 'EF', '', '', '', '', '', '', '', '', '', '', '152.4', '929', '', '', '', '', '', '', '', '', ''),
(88, '2012-PIG-002', 'ASSEMBLY OF PIG 11" (GEOGRAPHE 279.70972)', 'PIG ASSEMBLY', '', '', '', '', '', '', '11', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(89, '2012-PIG-010', 'ASSEMBLY OF PIG 3"', 'PIG ASSEMBLY', '', '', '', '', '', '', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(90, '2012-PIG-013', 'ASSEMBLY OF PIG 3" FLETCHER FINUCANE', 'PIG ASSEMBLY', '', '', '', '', '', '', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(91, '2012-PIG-017', 'ASSEMBLY OF PIG 3" FLETCHER FINUCANE', 'PIG ASSEMBLY', '', '', '', '', '', '', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(92, '2012-PIG-018', 'ASSEMBLY OF PIG 3" FLETCHER FINUCANE', 'PIG ASSEMBLY', '', '', '', '', '', '', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(93, '2012-PIG-014', 'ASSEMBLY OF PIG 9" FLETCER FINUCANE', 'PIG ASSEMBLY', '', '', '', '', '', '', '9', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(94, '2013-PIG-001', 'ASSEMBLY OF PIG FOR 4" (KUITO FLOWLINE)', 'PIG ASSEMBLY', '', '', '', '', '', '', '4', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(95, '2012-CRM-012', 'ASSEMBLY OF REMOVABLE SHELL CRIMPING MANDREL', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(96, '2013-STR-002', 'ASSEMBLY OF STRAIGHTENEER 11.81" CHAMPION', 'STRAIGHTENER ASSEMBLY', 'EF', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(97, '2013-STR-001', 'ASSEMBLY OF STRAIGHTENEER 7.87" CHAMPION', 'STRAIGHTENER ASSEMBLY', 'EF', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(98, '2012-STR-011', 'ASSEMBLY OF STRAIGHTENER 10''''', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(99, '2012-STR-013', 'ASSEMBLY OF STRAIGHTENER 10" WITH REMOVABLE TUBE', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(100, '2012-STR-014', 'ASSEMBLY OF STRAIGHTENER 10" WITH REMOVABLE TUBE', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(101, '2012-STR-004', 'ASSEMBLY OF STRAIGHTENER 10.2''''', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(102, '2012-STR-015', 'ASSEMBLY OF STRAIGHTENER 11.06" WITH REMOVABLE TUBE', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(103, 'MSTR-0000000L-004', 'Assembly Of Straightener 11.25"', 'STRAIGHTENER ASSEMBLY', 'EF', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(104, '2013-STR-003', 'ASSEMBLY OF STRAIGHTENER 12" WITH REMOVABLE TUBE', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(105, 'MSTR-0000000L-005', 'Assembly Of Straightener 7.5" With Removable Tube', 'STRAIGHTENER ASSEMBLY', 'EF', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(106, '2012-STR-003', 'ASSEMBLY OF STRAIGHTENER 9''''', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(107, 'MSTR-0000000L-006', 'Assembly Of Straightener 9.75"', 'STRAIGHTENER ASSEMBLY', 'EF', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(108, 'MADD-00000366-621', 'ASSEMBLY OF TRI PART COLLAR DIA.300', 'TRI PARTS COLLAR', '', '', '', '', '', '', '', '', '', '', '300.', '330', '', '', '', '', '', '', '', '', '', ''),
(109, '2012-PIG-004', 'ASSEMBLY TESTING OF PIG 3"', 'PIG ASSEMBLY', '', '', '', '', '', '', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(110, '2012-PIG-005', 'ASSEMBLY TESTING OF PIG 7"', 'PIG ASSEMBLY', '', '', '', '', '', '', '7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(111, '2012-PIG-009', 'ASSEMLBE OF PIG WITH BRUSH 11.06 INCH UNBC', 'PIG ASSEMBLY', '', '', '', '', '', '', '11.06', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(112, '', 'Belt Heater', '', '', 'T2-N5', 'OK', '10', '', '26/12/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(113, '2012-212', 'Bicone Pusher Type I', 'BICONE PUSHER', '', 'T2-N2', 'OK', '1', '', '11/06/2012', '3', '', '', '', '', '', '', '3', '20', '56', '53', '', '', '', '', ''),
(114, '2012-212', 'Bicone Pusher Type I', 'BICONE PUSHER', '', '', '', '', '', '', '3', '', '', '', '', '', '', '3', '20', '56', '53', '', '', '', '', ''),
(115, '2012-214', 'Bicone Pusher Type II', 'BICONE PUSHER', '', 'T2-I5', 'OK', '48', '', '20/11/2012', '4', '', '', '', '', '', '', '4', '20', '60', '54', '', '', '', '', ''),
(116, '2012-214', 'Bicone Pusher Type II', 'BICONE PUSHER', '', '', '', '', '', '', '4', '', '', '', '', '', '', '4', '20', '60', '54', '', '', '', '', ''),
(117, '2012-222', 'Bicone Pusher Type III', 'BICONE PUSHER', '', 'T2-I5', 'OK', '118', '', '20/11/2012', '5', '', '', '', '', '', '', '5', '30', '65', '55', '', '', '', '', ''),
(118, '2012-222', 'Bicone Pusher Type III', 'BICONE PUSHER', 'MOUNTING', 'T2-G4', 'OK', '5 SET', '', '15/05/2012', '5', '', '', '', '', '', '', '5', '30', '65', '55', '', '', '', '', ''),
(119, '2011-689', 'Bicone Pusher Type IV', 'BICONE PUSHER', '', 'T2-I5', 'OK', '96', '', '20/11/2012', '5', '', '', '', '', '', '', '5', '40', '85', '55', '', '', '', '', ''),
(120, '2011-689', 'Bicone Pusher Type IV', 'BICONE PUSHER', '', '', '', '', '', '', '5', '', '', '', '', '', '', '5', '40', '85', '55', '', '', '', '', ''),
(121, '2012-214 sheet 1/1', 'Bicone Pusher Type ll', 'BICONE PUSHER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(122, 'MADD-00000365-602', 'BLIND 2'''' 1/16 API 17SS 5000 PSI BX152', 'FLANGE', 'TESTING', '', '', '', '', '07/08/2013', '', '8', 'BX 152', '165.1.', '', '', '', '', '', '', '', '', '', '', '', ''),
(123, 'MADD-00000365-601', 'BLIND 2'''' 1/16 HUB API 6BX 5000 PSI BX152', 'FLANGE', 'TESTING', '', '', '', '', '07/08/2013', '', 'CLAMP', 'BX 152', 'CLAMP No. 2', '', '', '', '', '', '', '', '', '', '', '', ''),
(124, 'MADD-00000365-600', 'BLIND 2'''' 9/16 HUB API 16BX 5000 PSI BX153', 'FLANGE', 'TESTING', '', '', '', '', '07/08/2013', '', 'CLAMP', 'BX 153', 'CLAMP No. 2', '', '', '', '', '', '', '', '', '', '', '', ''),
(125, 'MADD-00000365-603', 'BLIND 3'''' 1/16 HUB API 16BX 15000 PSI BX154', 'FLANGE', 'TESTING', '', '', '', '', '07/08/2013', '', 'CLAMP', 'BX 154', 'CLAMP No. 5', '', '', '', '', '', '', '', '', '', '', '', ''),
(126, 'MADD-00000365-614', 'BLIND 3'''' 1/16 HUB API 6BX 15000 PSI BX154', 'FLANGE', 'TESTING', '', '', '', '', '07/08/2013', '', '8', 'BX 154', '230.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(127, '2011-621', 'BLIND 3 1/8" API 6B 5000 PSI RX35', 'FLANGE', 'TESTING', '', '', '', '', '', '', '8', 'RX35', '203.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(128, '2011-528', 'Blind 3 1/8" Api 6B 5000 PSI Rx35 Hammer  Union 2" Fig 2002 Female', 'FLANGE', 'TESTING', '', '', '', '', '', '', '8', 'Rx35', '203.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(129, 'MADD-00000365-603', 'BLIND 3" 1/16 HUB API 16BX 15000 PSI BX154', 'BLIND', 'TESTING', 'T2-C3', 'OK', '1', '', '27/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(130, 'MADD-00000365-614', 'BLIND 3" 1/16 HUB API 6BX 15000 PSI BX154', 'BLIND', 'TESTING', 'T2-C3', 'OK', '1', '', '27/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(131, '2012-572', 'BLIND 4" 1/16 API 6B 5000 PSI RX39', 'FLANGE', 'TESTING', '', '', '', '', '', '', '8', 'RX39', '241.3', '', '', '', '', '', '', '', '', '', '', '', ''),
(132, 'MADD-00000366-462', 'BLOCKING DISC ?170', 'ANTI TORSION TOOLS', '', '', '', '', '', '', '', '', '', '', '50.0', '170.0', '30', '', '', '', '', '', '', '', '', ''),
(133, 'MADD-00000365-169', 'BLOCKING DISC ?220', 'ANTI TORSION TOOLS', 'MOUNTING', '', '', '', '', '', '', '', '', '', '62', '', '', '', '', '', '', '', '', '', '30', ''),
(134, 'MADD-00000365-870', 'Blocking disc ?240', 'Blocking Disc', 'MOUNTING', '', '', '8', '', '09/02/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(135, 'MADD-00000366-416', 'BLOCKING DISC ?300', 'ANTI TORSION TOOLS', '', '', '', '', '', '', '', '', '', '', '62.0', '300.0', '', '', '', '', '', '', '', '', '30', ''),
(136, 'MADD-00000365-345', 'Bolt M20 X P2.0 X 358', 'PIG ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '358', '', '', '', '', '', '', '', '', ''),
(137, '', 'Bracing Turn Buckle L Adjustable 0.8m to 0.3m ', 'BRACING', '', 'T2-M5', 'OK', '7', '', '18/3/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(138, '', 'Bracing Turn Buckle L Adjustable 1.1m to 1.5m ', 'BRACING', '', 'T2-O5', 'OK', '15', '', '28/12/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(139, '2012-222 sheet 4/4', 'BUSH PUSHER', 'BICONE PUSHER', '', '', '', '', '', '', '', '', '', '', '15.0', '23.0', '30', '', '', '', '', '', '', '', '', ''),
(140, 'BX 172', 'BX 172', 'SEAL RING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(141, 'BX153', 'BX153', 'SEAL RING', '', 'T2-A3', 'OK', '4', '', '30/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(142, 'BX156', 'BX156', 'SEAL RING', '', 'T2-A3', 'OK', '2', '', '30/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(143, 'BX156', 'BX156', 'SEAL RING', '', 'T2-A3', 'OK', '3', '', '12/04/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(144, 'BX157', 'BX157', 'SEAL RING', '', 'T2-A3', 'OK', '2', '', '12/04/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(145, 'BX157', 'BX157', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(146, 'MADD-00000366-031', 'CALIPER 152MM', 'CALIPER', 'TESTING', '', '', '', '', '', '', '', '', '', '', '152.0', '', '', '', '', '', '', '', '', '', ''),
(147, 'MADD-00000366-169', 'CALIPER 185MM', 'CALIPER', 'TESTING', '', '', '', '', '', '', '', '', '', '', '185.0', '', '', '', '', '', '', '', '', '', ''),
(148, '2011-423', 'CALIPER FOR ?14.5''''', 'CALIPER', 'TESTING', 'T2-K3-4', 'OK', '2', '', '01/02/2013', '', '', '', '', '', '350', '', '', '', '', '', '', '', '', '', ''),
(149, 'MADD-00000366-332', 'CALIPER ?129.7', 'CALIPER', 'TESTING', '', '', '', '', '', '', '', '', '', '', '129.7', '', '', '', '', '', '', '', '', '', ''),
(150, 'MADD-00000365-348', 'Caliper ?133', 'CALIPER', 'TESTING', '', '', '', '', '', '', '', '', '', '20.5', '133.0', '', '', '', '', '', '', '', '', '', ''),
(151, '2011-277', 'CALIPER ?142.4', 'CALIPER', 'TESTING', 'T2-K3-1', 'OK', '3', '', '01/02/2013', '', '', '', '', '', '142.4', '', '', '', '', '', '', '', '', '', ''),
(152, '2011-277', 'CALIPER ?142.4', 'CALIPER', 'TESTING', 'T2-L3-2', 'OK', '1', '', '01/02/2013', '', '', '', '', '', '142.4', '', '', '', '', '', '', '', '', '', ''),
(153, '2011-277', 'CALIPER ?142.4', 'CALIPER', 'TESTING', 'T2-L3-2', 'OK', '2', '', '01/02/2013', '', '', '', '', '', '142.4', '', '', '', '', '', '', '', '', '', ''),
(154, '2012-174', 'CALIPER ?167.8', 'CALIPER', 'TESTING', 'T2-K3-2', 'OK', '19', '', '01/02/2013', '', '', '', '', '', '167.8', '', '', '', '', '', '', '', '', '', ''),
(155, '2011-762', 'CALIPER ?177.7', 'CALIPER', 'TESTING', 'T2-K3-1', 'OK', '1', '', '01/02/2013', '', '', '', '', '', '177.7', '', '', '', '', '', '', '', '', '', ''),
(156, '2011-762', 'CALIPER ?177.7', 'CALIPER', 'TESTING', 'T2-L3-2', 'OK', '1', '', '01/02/2013', '', '', '', '', '', '177.7', '', '', '', '', '', '', '', '', '', ''),
(157, '2012-407', 'CALIPER ?188.5', 'CALIPER', 'TESTING', 'T2-K3-2', 'OK', '2', '', '01/02/2013', '', '', '', '', '', '188.5', '', '', '', '', '', '', '', '', '', ''),
(158, 'MADD-00000365-579', 'CALIPER ?188.7', 'CALIPER', 'TESTING', '', '', '', '', '10/09/2013', '', '', '', '', '20.5', '188.7', '', '', '', '', '', '', '', '', '', ''),
(159, '2011-173', 'CALIPER ?193.1', 'CALIPER', 'TESTING', 'T2-K3-2', 'OK', '10', '', '01/02/2013', '', '', '', '', '', '193.1', '', '', '', '', '', '', '', '', '', ''),
(160, '2011-173', 'CALIPER ?193.1', 'CALIPER', 'TESTING', 'T2-L3-4', 'OK', '1', '', '01/02/2013', '', '', '', '', '', '193.1', '', '', '', '', '', '', '', '', '', ''),
(161, '2012-470', 'CALIPER ?217.2', 'CALIPER', 'TESTING', 'T2-K3-3', 'OK', '9', '', '01/02/2013', '', '', '', '', '', '217.2', '', '', '', '', '', '', '', '', '', ''),
(162, '2012-470', 'CALIPER ?217.2', 'CALIPER', 'TESTING', 'T2-K3-3', 'OK', '6', '', '01/02/2013', '', '', '', '', '', '217.2', '', '', '', '', '', '', '', '', '', ''),
(163, '2012-470', 'CALIPER ?217.2', 'CALIPER', 'TESTING', 'T2-L3-3', 'OK', '2', '', '01/02/2013', '', '', '', '', '', '217.2', '', '', '', '', '', '', '', '', '', ''),
(164, 'MADD-00000365-372', 'Caliper ?235.3', 'CALIPER', 'TESTING', '', '', '', '', '', '', '', '', '', '20.5', '235.3', '', '', '', '', '', '', '', '', '', ''),
(165, '2012-137', 'CALIPER ?241.30', 'CALIPER', 'TESTING', 'T2-K3-3', 'OK', '1', '', '01/02/2013', '', '', '', '', '', '241.3', '', '', '', '', '', '', '', '', '', ''),
(166, '2012-137', 'CALIPER ?241.30', 'CALIPER', 'TESTING', 'T2-L3-4', 'OK', '1', '', '01/02/2013', '', '', '', '', '', '241.3', '', '', '', '', '', '', '', '', '', ''),
(167, '2012-473', 'CALIPER ?246.2', 'CALIPER', 'TESTING', 'T2-K3-3', 'OK', '0', '', '01/09/2013', '', '', '', '', '', '246.2', '', '', '', '', '', '', '', '', '', ''),
(168, '2011-942', 'CALIPER ?254.6', 'CALIPER', 'TESTING', 'T2-K3-1', 'OK', '3', '', '01/02/2013', '', '', '', '', '', '254.6', '', '', '', '', '', '', '', '', '', ''),
(169, '2011-942', 'CALIPER ?254.6', 'CALIPER', 'TESTING', 'T2-L3-4', 'OK', '1', '', '01/02/2013', '', '', '', '', '', '254.6', '', '', '', '', '', '', '', '', '', ''),
(170, '2012-351', 'CALIPER ?265.5', 'CALIPER', 'TESTING', 'T2-K3-4', 'OK', '1', '', '01/02/2013', '', '', '', '', '', '265.5', '', '', '', '', '', '', '', '', '', ''),
(171, '2012-424', 'CALIPER ?266.9', 'CALIPER', 'TESTING', 'T2-K3-4', 'OK', '1', '', '01/02/2013', '', '', '', '', '', '266.9', '', '', '', '', '', '', '', '', '', ''),
(172, '2012-424', 'CALIPER ?266.9', 'CALIPER', 'TESTING', 'T2-L3-1', 'OK', '3', '', '01/02/2013', '', '', '', '', '', '266.9', '', '', '', '', '', '', '', '', '', ''),
(173, '2011-765', 'CALIPER ?271.5', 'CALIPER', 'TESTING', 'T2-K3-1', 'OK', '6', '', '01/02/2013', '', '', '', '', '', '271.5', '', '', '', '', '', '', '', '', '', ''),
(174, '2011-765', 'CALIPER ?271.5', 'CALIPER', 'TESTING', 'T2-L3-2', 'OK', '8', '', '01/02/2013', '', '', '', '', '', '271.5', '', '', '', '', '', '', '', '', '', ''),
(175, 'MADD-00000365-369', 'CALIPER ?271.5', 'CALIPER', 'TESTING', '', '', '', '', '10/09/2013', '', '', '', '', '33.5', '271.5', '', '', '', '', '', '', '', '', '', ''),
(176, '2012-1043', 'CALIPER ?285', 'CALIPER', '', '', '', '', '', '', '', '', '', '', '', '285', '', '', '', '', '', '', '', '', '', ''),
(177, '2012-689', 'CALIPER ?289.60', 'CALIPER', 'TESTING', 'MTP', '', '1', '', '03/04/2013', '', '', '', '', '', '289.6', '', '', '', '', '', '', '', '', '', ''),
(178, '2012-689', 'CALIPER ?289.60', 'CALIPER', '', '', '', '', '', '', '', '', '', '', '', '289.6', '', '', '', '', '', '', '', '', '', ''),
(179, '2013-025', 'CALIPER ?363.3', 'CALIPER', '', '', '', '', '', '', '', '', '', '', '', '363.3', '', '', '', '', '', '', '', '', '', ''),
(180, 'MADD-00000366-294', 'CALIPER ?364.9', 'CALIPER', 'TESTING', '', '', '', '', '', '', '', '', '', '', '364.9', '', '', '', '', '', '', '', '', '', ''),
(181, 'MADD-00000366-294', 'CALIPER ?364.9', 'CALIPER', '', '', '', '', '', '', '', '', '', '', '33.5', '364.9', '', '', '', '', '', '', '', '', '12', ''),
(182, '2013-090', 'CALIPER ?380', 'CALIPER', 'TESTING', 'T2-L3', 'OK', '8', '', '05/02/2013', '', '', '', '', '', '271.5', '', '', '', '', '', '', '', '', '', ''),
(183, '2012-175', 'CALIPER ?66.2', 'CALIPER', 'TESTING', 'T2-K3-2', 'OK', '1', '', '01/02/2013', '', '', '', '', '', '66.2', '', '', '', '', '', '', '', '', '', ''),
(184, 'MADD-010000366-558', 'CALIPER ?78.9', 'CALIPER', 'TESTING', '', '', '4', '', '', '', '', '', '', '', '79', '', '', '', '', '', '', '', '', '', ''),
(185, '2012-270', 'CALIPER ?91.6', 'CALIPER', 'TESTING', 'T2-K3-2', 'OK', '1', '', '01/02/2013', '', '', '', '', '', '91.6', '', '', '', '', '', '', '', '', '', ''),
(186, '2012-270', 'CALIPER ?91.6', 'CALIPER', 'TESTING', 'T2-L3-1', 'OK', '1', '', '01/02/2013', '', '', '', '', '', '91.6', '', '', '', '', '', '', '', '', '', ''),
(187, 'MADD-00000366-175', 'CANULA FOR MACHINING (12" BUKIT TUA)', 'CANULA', 'MOUNTING', '', '', '', '', '', '12', '', '', '', '325', '359', '', '', '', '', '', '', '', '', '', ''),
(188, 'MADD-00000365-527', 'Canula For Machining 8" Manora', 'CANULA', 'MOUNTING', '', '', '', '', '', '', '', '', '', '217', '242', '173', '', '', '', '', '', '', '', '', ''),
(189, 'MADD-00000365-895', 'CENTERING SPACER', 'CANULA PUSHER ', 'MOUNTING', '', '', '', '', '', '', '', '', '', '36', '73', '75', '', '', '', '', '', '', '', '', ''),
(190, 'MADD-00000365-581', 'Chuck Sleeve Extension', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '35.0', '21.0', '350', '', '', '', '', '', '', '', '', ''),
(191, '2012-094', 'CLAMPING JAW 10.55 INCH', 'CLAMPING JAWS', '', '', '', '', '', '', '10.55', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(192, '2012-259', 'CLAMPING JAW 4 INCH', 'CLAMPING JAWS', '', '', '', '', '', '', '4', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(193, '2012-622', 'CLAMPING JAWS 10.2"', 'CLAMPING JAWS', '', '', '', '', '', '', '10.2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(194, '2012-439', 'CLAMPING JAWS 7" / 2ND DESIGN', 'CLAMPING JAWS', '', '', '', '', '', '', '7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(195, '2012-242', 'CLAMPING JAWS 7" ?177.8', 'CLAMPING JAWS', '', '', '', '', '', '', '7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(196, 'MADD-00000365-388', 'Clamping Jaws 8" Shrink 6mm', 'CLAMPING JAWS', '', '', '', '', '', '', '8', '', '', '', '', '201.2', '', '', '', '', '', '', '', '', '', ''),
(197, '2012-529', 'CLAMPING JAWS 9"', 'CLAMPING JAWS', '', '', '', '', '', '', '9', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(198, '2012-718', 'CLAMPING JAWS US40', 'CLAMPING JAWS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(199, 'MADD-00000365-876', 'Clamping plate', 'Plate', 'MOUNTING', '', '', '8', '', '09/02/2013', '', '', '', '', '296', '450', '', '', '', '', '', '', '', '', '', ''),
(200, 'MADD-00000365-387', 'Collar ID ?150', 'CLAMPING JAWS', '', '', '', '', '', '', '', '', '', '', '42.1', '201.2', '', '', '', '', '', '', '', '', '', ''),
(201, 'MADD-00000366-175', 'Collar OD ?300', 'CLAMPING JAWS', '', '', '', '', '', '', '12.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(202, 'ME465189', 'COLLIER  D''IMMIBOLISATION DES ARMURES EN TROIS PARTIES', 'TRI PARTS COLLAR', '', 'T2-F4', 'OK', '1', '', '26/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(203, 'ME465189', 'COLLIER  D''IMMIBOLISATION DES ARMURES EN TROIS PARTIES', 'TRI PARTS COLLAR', '', 'T2-G5', 'OK', '6', '', '12/05/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(204, 'ME465189', 'COLLIER  D''IMMIBOLISATION DES ARMURES EN TROIS PARTIES', 'TRI PARTS COLLAR', '', 'T2-G5', 'OK', '4', '', '12/05/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(205, 'ME465189', 'COLLIER  D''IMMIBOLISATION DES ARMURES EN TROIS PARTIES', 'TRI PARTS COLLAR', '', 'T2-G5', 'OK', '2', '', '12/05/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(206, 'MADD-00000365-863', 'COMPRESSION NUT', 'CANULA PUSHER', 'MOUNTING', '', '', '', '', '', '', '', '', '', '18', '28.5', '30', '', '', '', '', '', '', '', '', ''),
(207, 'MADD-00000365-852', 'COMPRESSION PULLER', 'CANULA PUSHER', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '46', '925', '', '', '', '', '', '', '', '', ''),
(208, 'MADD-00000365-886', 'COMPRESSION TUBE', 'CANULA PUSHER', 'MOUNTING', '', '', '', '', '', '', '', '', '', '22.5', '46.0', '645', '', '', '', '', '', '', '', '', ''),
(209, 'MADD-00000365-862', 'COMPRESSION WASHER ?29', 'CANULA PUSHER', 'MOUNTING', '', '', '', '', '', '', '', '', '', '18.5', '29', '15', '', '', '', '', '', '', '', '', ''),
(210, 'TE12610', 'COQUILLE EN 4 PARTIES', 'TRI PARTS COLLAR', '', 'T2-A4', 'OK', '3 SET', '', '12/04/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(211, '2012-CRM-001', 'CRIMPING MANDREL 3"', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(212, '2011-343', 'CRIMPING MANDREL ?10 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(213, '2012-CRM-002', 'CRIMPING MANDREL ?10.55 INCH', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(214, '2011-080', 'CRIMPING MANDREL ?6" UNTIL ?9"', 'CRIMPING MANDREL ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(215, '2013-047', 'CROWN', 'CROWN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(216, 'MADD-00000366-111', 'CROWN 10" TO 12"', 'CROWN', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(217, 'MADD-00000366-181', 'Crown ?338 to ?472', 'CROWN', '', '', '', '', '', '', '12.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(218, 'MADD-00000365-861', 'CYLINDER NUT', 'CANULA PUSHER', 'MOUNTING', '', '', '', '', '', '', '', '', '', '33', '70', '40', '', '', '', '', '', '', '', '', ''),
(219, '', 'D115 (Blue type)', 'SEAL RING', '', 'T2-A2', 'USED', '2', '', '16/05/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(220, '', 'D180 (Blue type)', 'SEAL RING', '', 'T2-A2', 'USED', '1', '', '16/05/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(221, '', 'D180 (Blue type)', 'SEAL RING', '', 'T2-A2', 'OK', '1', '', '16/05/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(222, '', 'D355 (Blue type)', 'SEAL RING', '', 'T2-A2', 'USED', '1', '', '16/05/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(223, 'MADD-00000366-548', 'END TUBE ?60.3 l 1575', 'ANTI TORSION TOOLS', 'MOUNTING', '', '', '', '', '', '', '', '', '', '52.0', '60.30', '1575', '', '', '', '', '', '', '', '', ''),
(224, 'MADD-00000366-029', 'EXTERNAL CALIPER  ?227', 'EXTERNAL CALIPER EF', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(225, '', 'EXTERNAL CALIPER  ?330', 'EXTERNAL CALIPER EF', 'MOUNTING', 'T2-D4', 'OK', '1', '', '28/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(226, 'MADD-00000365-525', 'EXTERNAL CALIPER FOR END FITTING ID ?300', 'EXTERNAL CALIPER EF', 'MOUNTING ', '', '', '', '', '10/09/2013', '', '', '', '', '300.', '', '', '', '', '', '', '', '', '', '', ''),
(227, 'MADD-00000366-540', 'EXTERNAL CALIPER FOR END FITTING ?202.1', 'EXTERNAL CALIPER EF', '', '', '', '', '', '', '', '', '', '', '202.', '', '', '', '', '', '', '', '', '', '', ''),
(228, 'MADD-00000365-324', 'EXTERNAL CALIPER FOR END FITTING ?229', 'EXTERNAL CALIPER EF', 'MOUNTING', '', '', '', '', '20/05/2013', '', '', '', '', '229', '', '', '', '', '', '', '', '', '', '', ''),
(229, '2012-399', 'EXTERNAL CALIPER FOR END FITTING ?282', 'EXTERNAL CALIPER EF', 'EF', 'T2-F3', 'OK', '1', '', '26/11/2012', '', '', '', '', '282', '', '', '', '', '', '', '', '', '', '', ''),
(230, 'MADD-00000365-325', 'EXTERNAL CALIPER FOR END FITTING ?286', 'EXTERNAL CALIPER EF', 'MOUNTING', '', '', '', '', '20/05/2013', '', '', '', '', '286', '', '', '', '', '', '', '', '', '', '', ''),
(231, '2011-820', 'EXTERNAL CALIPER FOR END FITTING ?369', 'EXTERNAL CALIPER EF', 'EF', 'T2-D4', 'OK', '1', '', '28/11/2012', '', '', '', '', '369', '', '', '', '', '', '', '', '', '', '', ''),
(232, '2012-365', 'EXTERNAL CALIPER FOR END FITTING ?385', 'EXTERNAL CALIPER EF', 'MOUNTING', 'T2-F3', 'OK', '1', '', '26/11/2012', '', '', '', '', '385', '', '', '', '', '', '', '', '', '', '', ''),
(233, '2011-821', 'EXTERNAL CALIPER FOR END FITTING ?386', 'EXTERNAL CALIPER EF', 'EF', 'T2-D4', 'OK', '1', '', '28/11/2012', '', '', '', '', '386', '', '', '', '', '', '', '', '', '', '', ''),
(234, 'MADD-00000365-376', 'EXTERNAL CALIPER FOR END FITTING ?412', 'EXTERNAL CALIPER EF', 'MOUNTING', '', '', '', '', '20/05/2013', '', '', '', '', '412', '', '', '', '', '', '', '', '', '', '', ''),
(235, '2012-474', 'EXTERNAL CALIPER FOR END FITTING ?419', 'EXTERNAL CALIPER EF', 'MOUNTING', 'T2-G4', 'OK', '1', '', '13/5/2013', '', '', '', '', '419', '', '', '', '', '', '', '', '', '', '', ''),
(236, 'MADD-00000365-377', 'EXTERNAL CALIPER FOR END FITTING ?450', 'EXTERNAL CALIPER EF', 'MOUNTING', '', '', '', '', '20/05/2013', '', '', '', '', '450', '', '', '', '', '', '', '', '', '', '', ''),
(237, '2011-651', 'EXTERNAL CALIPER FOR END ?494', 'EXTERNAL CALIPER EF', 'MOUNTING', 'T2-D4', 'OK', '1', '', '28/11/2012', '', '', '', '', '494', '', '', '', '', '', '', '', '', '', '', ''),
(238, 'MADD-00000366-345', 'EXTERNAL CALIPER FOR END-FITTING ?535.5', 'EXTERNAL CALIPER', 'E.F', '', '', '', '', '', '15.12', '', '', '', '535.', '', '', '', '', '', '', '', '', '', '', ''),
(239, '2011-652', 'EXTERNAL CALIPER FOR ?226', 'EXTERNAL CALIPER EF', 'MOUNTING', 'T2-D4', 'OK', '2', '', '28/11/2012', '', '', '', '', '226', '', '', '', '', '', '', '', '', '', '', ''),
(240, 'MADD-00000366-162 REV. 0', 'EXTERNAL CALIPER ID DIAM. 375', 'EXTERNAL CALIPER EF', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(241, 'MADD-00000366-502', 'External Caliper ?290', 'EXTERNAL CALIPER EF', 'MOUNTING', '', '', '', '', '', '', '', '', '', '290.', '', '', '', '', '', '', '', '', '', '', ''),
(242, '2013-064', 'EXTRACTOR', 'EXTRACTOR', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(243, 'MMAT-00000000-005', 'EXTRACTOR FOR ?338 to ?472', 'EXTRACTOR', 'MOUNTING', '', '', '', '', '', '12.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(244, 'MMAT-00000000-005', 'EXTRACTOR ?338 TO ?472 (ASSEMBLY)', 'EXTRACTOR', 'MOUNTING', '', '', '', '', '', '12.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(245, 'MMAT-00000000-001', 'FINISHING TOOL ASSEMBLY', 'RADIUS CUTTER', 'MOUNTING', '', '', '', '', '', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(246, 'UEMB-00000000-001', 'FINISHING TOOLS ASSEMBLY', 'RADIUS CUTTER', 'MOUNTING', '', '', '', '', '', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(247, 'MADD-00000365-894', 'FRONT PAKER WASHER', 'CANULA PUSHER ', 'MOUNTING', '', '', '', '', '', '', '', '', '', '31', '70', '15', '', '', '', '', '', '', '', '', ''),
(248, 'MADD-00000365-550', 'Funnel', 'Pipe', 'MOUNTING', '', '', '2', '', '09/02/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(249, '', 'GRAYLOCK 12M', '', '', 'T2-O2', 'OK', '1 SET', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(250, '', 'GRAYLOCK 12M', '', '', 'T2-P4', 'OK', '3 SET', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(251, 'A90099', 'GRAYLOCK 8"', '', '', 'T2-C2', 'OK', '2 SETS', '', '28/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(252, 'A90099-1', 'GRAYLOCK 8"', '', '', 'T2-C2', 'OK', '2 SETS', '', '28/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(253, '', 'GRAYLOCK H10', '', '', 'T2-R5', 'OK', '1 SET', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(254, '', 'GRAYLOCK M12', '', '', 'T2-R5', 'OK', '1 SET', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(255, 'MADD-00000366-100', 'GUIDE CANULA 253.5', 'GUIDE CANULA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(256, '2013-045', 'GUIDE CANULA FOR SMOOTH BORE 7.5'' PIPE', 'GUIDE CANULA', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(257, 'MADD-00000366-084', 'GUIDE CANULA FOR SMOOTH BORE 8" PIPE', 'GUIDE CANULA', 'MOUNTING', '', '', '', '', '08/11/2013', '', '', '', '', '20.5', '202.5', '80', '', '', '', '', '', '', '', '', ''),
(258, 'MADD-0000365-999', 'GUIDE CANULA ?151.5', 'GUIDE CANULA', 'MOUNTING', '', '', '', '', '', '', '', '', '', '20.0', '151.5', '', '', '', '', '', '', '', '', '', ''),
(259, '2011-811', 'GUIDE DISC', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '170', '', '', '', '', '', '', '', '', '', ''),
(260, 'XL-A002-05-', 'GUIDE DISC', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '115', '', '', '', '', '', '', '', '', '', ''),
(261, 'XL-A003-02', 'GUIDE DISC', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '219.0', '', '', '', '', '', '', '', '', '', ''),
(262, 'MADD-00000366-171', 'GUIDE DISC DIAM.298', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '298.0', '', '', '', '', '', '', '', '', '', ''),
(263, 'MADD-00000365-347', 'Guide Disc ?140', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '20.5', '140.0', '', '', '', '', '', '', '', '', '15', ''),
(264, '2011-825', 'GUIDE DISC ?145', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '145', '', '', '', '', '', '', '', '', '', ''),
(265, 'MADD-00000366-308', 'GUIDE DISC ?149.4', 'GUIDE DISC', 'X-LINK (PIG)', '', '', '', '', '', '', '', '', '', '20.5', '149.4', '', '', '', '', '', '', '', '', '', ''),
(266, '2011-760', 'GUIDE DISC ?179', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '179', '', '', '', '', '', '', '', '', '', ''),
(267, '2011-925', 'GUIDE DISC ?180.2', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '180.2', '', '', '', '', '', '', '', '', '', ''),
(268, 'MADD-00000365-384', 'GUIDE DISC ?186', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '20.5', '186.0', '', '', '', '', '', '', '', '', '', ''),
(269, '2012-413', 'GUIDE DISC ?190', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '190', '', '', '', '', '', '', '', '', '', ''),
(270, '2011-822', 'GUIDE DISC ?195', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '195', '', '', '', '', '', '', '', '', '', ''),
(271, '2012-203', 'GUIDE DISC ?218', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '218', '', '', '', '', '', '', '', '', '', ''),
(272, '2012-840', 'GUIDE DISC ?219.5', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '219.5', '', '', '', '', '', '', '', '', '', ''),
(273, '2012-889', 'GUIDE DISC ?225', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '225', '', '', '', '', '', '', '', '', '', ''),
(274, 'MADD-00000365-370', 'Guide Disc ?242', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '20.5', '242.0', '', '', '', '', '', '', '', '', '15', ''),
(275, '2011-319', 'GUIDE DISC ?243', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '240', '', '', '', '', '', '', '', '', '', ''),
(276, '2012-471', 'GUIDE DISC ?249', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '249', '', '', '', '', '', '', '', '', '', ''),
(277, '2012-924', 'GUIDE DISC ?249', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '249', '', '', '', '', '', '', '', '', '', ''),
(278, '2012-917', 'GUIDE DISC ?255', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '255', '', '', '', '', '', '', '', '', '', ''),
(279, '2011-940', 'GUIDE DISC ?255.9', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '255.9', '', '', '', '', '', '', '', '', '', ''),
(280, '2012-425', 'GUIDE DISC ?270', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '270', '', '', '', '', '', '', '', '', '', ''),
(281, '2011-763', 'GUIDE DISC ?273.5', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '273.5', '', '', '', '', '', '', '', '', '', ''),
(282, 'MADD-00000365-368', 'GUIDE DISC ?279', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '33.5', '279.0', '', '', '', '', '', '', '', '', '', ''),
(283, 'MADD-00000366-563', 'GUIDE DISC ?283', 'GUIDE DISC', 'TESTING', '', '', '24', '', '', '', '', '', '', '', '283', '', '', '', '', '', '', '', '', '', ''),
(284, '2012-343', 'GUIDE DISC ?291', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '291', '', '', '', '', '', '', '', '', '', ''),
(285, 'MADD-00000366-282', 'GUIDE DISC ?367', 'SEAL', '', '', '', '', '', '', '14.75', '', '', '', '33.5', '367', '', '', '', '', '', '', '', '', '10', ''),
(286, 'MADD-00000366-094', 'Guide Disc ?376', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(287, 'MADD-00000366-094', 'GUIDE DISC ?376', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '33.5', '376.0', '', '', '', '', '', '', '', '', '15', ''),
(288, '2012-670', 'GUIDE DISC ?53', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '53', '', '', '', '', '', '', '', '', '', ''),
(289, '2012-964', 'GUIDE DISC ?72', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '72', '', '', '', '', '', '', '', '', '', ''),
(290, 'MADD-00000366-556', 'GUIDE DISC ?87', 'GUIDE DISC', 'TESTING', '', '', '8', '', '', '', '', '', '', '', '87', '', '', '', '', '', '', '', '', '', ''),
(291, '2012-269', 'GUIDE DISC ?96', 'GUIDE DISC', 'TESTING', 'MTP', '', '6', '', '03/04/2013', '', '', '', '', '', '96.1', '', '', '', '', '', '', '', '', '', ''),
(292, '2012-269', 'GUIDE DISC ?96', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '96.1', '', '', '', '', '', '', '', '', '', ''),
(293, '2012-907', 'GUIDE DISC ?96 (85SH)', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '96', '', '', '', '', '', '', '', '', '', ''),
(294, '2012-900', 'GUIDE DISK ?225', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '225', '', '', '', '', '', '', '', '', '', ''),
(295, '2012-023', 'GUIDE DISK ?392', 'GUIDE DISC', 'TESTING', 'T2-L2', 'OK', '24', '', '05/02/2013', '', '', '', '', '', '271.5', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `tooling_master` (`tm_id`, `DRAWING-NO`, `DRAWING NAME`, `TOOLING NAME`, `MACHINE TYPE`, `LOCATION`, `STATUS`, `QUANTITY (NOT REVERSED)`, `RESERVED QUANTITY`, `Updated Date`, `INCH`, `TOP MOUNTING HOLE`, `SEAL RING`, `MOUNTING CENTER DIAMETER`, `ID`, `OD`, `LENGTH`, `SURFACE THICKNESS`, `SURFACE HEIGHT`, `OVERALL HEIGHT`, `OVERALL WIDTH`, `WIDTH`, `MOUNTING HOLE`, `HEIGHT`, `THICKNESS`, `TYPE`) VALUES
(296, '2012-202', 'GUIDING SEAL ?266', 'GUIDE DISC', '', '', '', '', '', '', '', '', '', '', '', '266', '', '', '', '', '', '', '', '', '', ''),
(297, '2011-549', 'HALF BENDED STEEL', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '200', '', '400', '', '', '', '', '', '', '', '', ''),
(298, '2011-685', 'HALF BENDED STEEL', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '260', '', '400', '', '', '', '', '', '', '', '', ''),
(299, '2011-687', 'HALF BENDED STEEL', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '160', '', '400', '', '', '', '', '', '', '', '', ''),
(300, '2011-757', 'HALF BENDED STEEL', 'ROLL BENDED STEEL', 'EF', 'T1-G1', 'OK', '6', '', '01/08/2012', '', '', '', '', '240', '', '400', '', '', '', '', '', '', '', '', ''),
(301, '2012-081', 'HALF BENDED STEEL', 'ROLL BENDED STEEL', 'EF', 'T1-G1', 'OK', '4', '', '01/08/2012', '', '', '', '', '108', '', '200', '', '', '', '', '', '', '', '', ''),
(302, '2011-759', 'HALF BENDED STEEL', '', '', 'T2-X1', 'OK', '4', '', '18/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(303, 'MADD00000365-357', 'HALF BENDED STEEL', '', '', 'T2-X1', 'OK', '1', '', '18/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(304, '2011-774', 'HALF BENDED STEEL ?180', 'ROLL BENDED STEEL', 'EF', 'T1-G1', 'OK', '2', '', '01/08/2012', '', '', '', '', '180', '', '400', '', '', '', '', '', '', '', '', ''),
(305, '2011-774', 'HALF BENDED STEEL ?180', 'ROLL BENDED STEEL', 'EF', 'T1-G1', 'OK', '4', '', '01/08/2012', '', '', '', '', '180', '', '400', '', '', '', '', '', '', '', '', ''),
(306, '2013-007', 'HALF BENDED STEEL ?280', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '280', '', '400', '', '', '', '', '', '', '', '', ''),
(307, 'MADD-00000365-113', 'HALF BENDED STEEL ?330', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '330', '', '400', '', '', '', '', '', '', '', '', ''),
(308, 'MADD-00000365-114', 'HALF BENDED STEEL ?390', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '390', '', '400', '', '', '', '', '', '', '', '', ''),
(309, 'MADD-00000366-307', 'HALF BENDED STEEL R108 - WITH WINDOW', 'HALF BENDED STEEL', 'X-LINK', '', '', '', '', '', '', '', '', '', '216.', '', '', '', '', '', '', '', '', '', '', ''),
(310, '2011-332', 'HALF BENDED STEEL R110', 'HALF BENDED STEEL', 'EF', 'T1-G1', 'OK', '5', '', '01/08/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(311, '2012-1010', 'HALF BENDED STEEL R110', 'ROLL BENDED STEEL', 'EF', 'T1-G1', 'OK', '1', '', '01/08/2012', '', '', '', '', '220', '', '400', '', '', '', '', '', '', '', '', ''),
(312, '2012-1010', 'HALF BENDED STEEL R110', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '220', '', '400', '', '', '', '', '', '', '', '', ''),
(313, '2012-332', 'HALF BENDED STEEL R110', 'ROLL BENDED STEEL', 'EF', 'T1-G1', 'OK', '9', '', '01/08/2012', '', '', '', '', '220', '', '400', '', '', '', '', '', '', '', '', ''),
(314, 'MADD-00000365-356', 'HALF BENDED STEEL R114 WITH WINDOW', 'HALF BENDED STEEL', 'EF', '', '', '', '', '', '', '', '', '', '', '228.0', '', '', '', '', '', '', '', '', '', ''),
(315, 'MADD-00000366-160', 'HALF BENDED STEEL R119', 'HALF BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(316, 'MADD-00000366-620', 'HALF BENDED STEEL R140', 'HALF BENDED STEEL', 'MOUNTING', '', '', '', '', '', '', '', '', '', '280.', '', '', '', '', '', '', '', '', '', '', ''),
(317, 'MADD-00000366-499', 'HALF BENDED STEEL R150', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '300.', '', '400', '', '', '', '', '', '', '', '', ''),
(318, 'MADD-00000365-358', 'Half Bended Steel R155', 'HALF BENDED STEEL', 'EF', '', '', '', '', '', '', '', '', '', '', '310.0', '', '', '', '', '', '', '', '', '', ''),
(319, '2012-418', 'HALF BENDED STEEL R165', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '330', '', '400', '', '', '', '', '', '', '', '', ''),
(320, '2012-418', 'HALF BENDED STEEL R165', 'ROLL BENDED STEEL', 'MOUNTING', 'T2-P5', 'OK', '2', '', '13/5/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(321, '2011-759', 'HALF BENDED STEEL R170', 'ROLL BENDED STEEL', 'EF', 'T1-G1', 'OK', '8', '', '01/08/2012', '', '', '', '', '340', '', '400', '', '', '', '', '', '', '', '', ''),
(322, 'MADD-00000365-355', 'Half Bended Steel R175', 'HALF BENDED STEEL', 'EF', '', '', '', '', '', '', '', '', '', '', '350.0', '', '', '', '', '', '', '', '', '', ''),
(323, 'MADD-00000366-179', 'Half Bended Steel R187', 'HALF BENDED STEEL', '', '', '', '', '', '', '12.00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(324, 'MADD-00000366-132', 'HALF BENDED STEEL R208', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', 'R224', '', '', '', '', '', '', '', '', '', '', ''),
(325, '2012-819', 'HALF BENDED STEEL R65', 'ROLL BENDED STEEL', '', 'T2-H1', 'OK', '2', '', '09/06/2013', '', '', '', '', '130', '', '400', '', '', '', '', '', '', '', '', ''),
(326, '2012-307', 'HALF BENDED STEEL R70', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '140', '', '200', '', '', '', '', '', '', '', '', ''),
(327, 'MADD-00000365-357', 'Half Bended Steel R90', 'HALF BENDED STEEL', 'EF', '', '', '', '', '', '', '', '', '', '', '180.0', '', '', '', '', '', '', '', '', '', ''),
(328, '', 'HAMMER UNION', '', '', 'T2-R5', 'OK', '4', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(329, '2011-250', 'Hammer Union 2 inch Fig 2002 Female', 'FLANGE', 'TESTING', 'T2-K5', 'OK', '4 SET', '', '03/07/2013', '', '8', 'BX153', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(330, '2011-250', 'Hammer Union 2 inch Fig 2002 Female', 'FLANGE', 'TESTING', 'T2-T3', 'OK', '3', '', '18/9/2013', '', '8', 'BX153', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(331, '2012-085', 'HAMMER UNION 3" FIG 2002 FEMALE', 'FLANGE', 'TESTING', '', '', '', '', '', '', '8', 'Rx31', '168.3', '', '', '', '', '', '', '', '', '', '', '', ''),
(332, '2012-084', 'HAMMER UNION 4" FIG 2002 FEMALE', 'FLANGE', 'TESTING', '', '', '', '', '', '', '12', 'Ix4', '171.7', '', '', '', '', '', '', '', '', '', '', '', ''),
(333, '', 'HAMMER UNION WITH STUD BOLT', '', '', 'T2-Q5', 'OK', '16', '', '17/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(334, 'MADD-00000365-877', 'Holding Plate', 'Plate', 'MOUNTING', '', '', '16', '', '09/02/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(335, 'MADD-00000366-172', 'HOLDING PLATE 12"', 'PLATE', 'MOUNTING', '', '', '', '', '', '12', '', '', '', '41', '300.0', '30', '', '', '', '', '', '', '', '', ''),
(336, 'MADD-00000365-549', 'Holding Plate 8"', 'Plate', 'MOUNTING', '', '', '2', '', '09/02/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(337, '', 'ID138', 'HALF BENDED STEEL', 'EF', 'T1-G1', 'OK', '2', '', '01/08/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(338, '', 'ID155', 'HALF BENDED STEEL', 'EF', 'T1-G1', 'OK', '2', '', '01/08/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(339, '', 'ID190', 'HALF BENDED STEEL', 'EF', 'T1-G1', 'OK', '7', '', '01/08/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(340, '', 'ID230', 'HALF BENDED STEEL', 'EF', 'T1-G1', 'OK', '1', '', '01/08/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(341, '', 'ID247', 'HALF BENDED STEEL', 'EF', 'T1-G1', 'OK', '3', '', '01/08/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(342, '', 'ID330', 'HALF BENDED STEEL', 'EF', 'T1-G1', 'OK', '4', '', '01/08/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(343, '', 'ID420', 'HALF BENDED STEEL', 'EF', 'T1-G1', 'OK', '8', '', '01/08/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(344, '', 'ID490', 'HALF BENDED STEEL', 'EF', 'T1-G1', 'OK', '0', '', '01/08/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(345, 'MADD-00000365-853', 'INSULATION TUBE', 'CANULA PUSHER', 'MOUNTING', '', '', '', '', '', '', '', '', '', '20.5', '30.5', '162', '', '', '', '', '', '', '', '', ''),
(346, 'MADD-00000365-548', 'INTERMEDIATE CANULA PUSHER RING', 'FRONT CANULA JACK', '', '', '', '', '', '', '', '', '', '', '234', '310', '', '', '', '', '', '', '', '', '', ''),
(347, 'IX14', 'IX14', 'SEAL RING', '', 'T2-A2', 'OK', '1', '', '16/05/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(348, 'MADD-00000365-846', 'Locking Ring Diam. 228', 'Ring', 'MOUNTING', '', '', '8', '', '09/02/2013', '', '', '', '', '228', '280', '', '', '', '', '', '', '', '', '', ''),
(349, 'MADD-00000366-174', 'Locking Ring for Cannula ?332', 'RING', 'MOUNTING', '', '', '', '', '', '12.00', '', '', '', '332.', '395.0', '', '', '', '', '', '', '', '', '', ''),
(350, 'MADD-0000366-001', 'LOCKING RING ?158', 'RING', 'MOUNTING', '', '', '', '', '', '', '', '', '', '158.', '200.0', '', '', '', '', '', '', '', '', '', ''),
(351, 'MADD-00000366-463', 'LOCKING RING ?158', 'RING', '', '', '', '', '', '', '', '', '', '', '158.', '210.0', '40', '', '', '', '', '', '', '', '', ''),
(352, '2013-046', 'LOCKING RING ?180', 'RING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(353, 'MADD-00000366-464', 'LOCKING RING ?191', 'RING', '', '', '', '', '', '', '', '', '', '', '191.', '240.0', '40', '', '', '', '', '', '', '', '', ''),
(354, 'MADD-00000-083', 'LOCKING RING ?210', 'RING', 'MOUNTING', '', '', '', '', '08/11/2013', '', '', '', '227.4', '210.', '250.0', '', '', '', '', '', '', '', '', '', ''),
(355, '2013-063', 'LOCKING RING ?220', 'RING', '', 'BOX T03', '', '1', '08/02/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(356, 'MADD-00000366-114', 'LOCKING RING ?257', 'RING', 'MOUNTING', '', '', '', '', '', '', '', '', '', '257.', '340.0', '', '', '', '', '', '', '', '', '', ''),
(357, '', 'M30 BOLT&NUT', 'BOLT', '', 'T2-N2', 'OK', '24', '', '16/7/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(358, '', 'M36X480', 'BOLT', '', 'T2-I5', 'OK', '118', '', '20/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(359, '', 'M36X480', 'NUT', '', 'T2-I5', 'OK', '236', '', '20/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(360, '', 'M42X320', 'BOLT', '', 'T2-I5', 'OK', '48', '', '20/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(361, '', 'M42X320', 'NUT', '', 'T2-I5', 'OK', '96', '', '20/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(362, '', 'M44X340', 'BOLT', '', 'T2-I4', 'OK', '12', '', '20/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(363, '', 'M44X340', 'NUT', '', 'T2-I4', 'OK', '24', '', '20/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(364, '', 'M48X500', 'BOLT', '', 'T2-I4', 'OK', '22', '', '03/09/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(365, '', 'M48X500', 'NUT', '', 'T2-I4', 'OK', '40', '', '20/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(366, '', 'M63X500', 'BOLT', '', 'T2-I4', 'OK', '24', '', '20/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(367, '', 'M63X500', 'NUT', '', 'T2-I4', 'OK', '36', '', '20/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(368, 'MADD-00000365-918', 'MADD-00000365-916', 'ARMOUR WIRE COLLAR', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '32', '95', '', '', '', '', '', '', '', '', ''),
(369, '2011-080-8/8', 'MANDREL', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '124', '152.4', '150', '', '', '', '', '', '', '', '', ''),
(370, '2011-344', 'MANDREL 10 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '200', '254', '150', '', '', '', '', '', '', '', '', ''),
(371, '2012-377', 'MANDREL 10.2 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '200', '259.1', '150', '', '', '', '', '', '', '', '', ''),
(372, '2012-098', 'MANDREL 10.55 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '200', '268', '150', '', '', '', '', '', '', '', '', ''),
(373, '2012-385', 'MANDREL 11 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '200', '279.4', '150', '', '', '', '', '', '', '', '', ''),
(374, '2012-1009', 'MANDREL 11.81 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '200', '300', '150', '', '', '', '', '', '', '', '', ''),
(375, '2011-372', 'MANDREL 12 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '200', '304.8', '150', '', '', '', '', '', '', '', '', ''),
(376, '2012-1063', 'MANDREL 13.3 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '200', '337', '150', '', '', '', '', '', '', '', '', ''),
(377, '2012-1063', 'MANDREL 13.3 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '200', '337', '150', '', '', '', '', '', '', '', '', ''),
(378, '2012-394', 'MANDREL 4 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '76', '101.6', '130', '', '', '', '', '', '', '', '', ''),
(379, '2012-438', 'MANDREL 5 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '76', '127', '130', '', '', '', '', '', '', '', '', ''),
(380, 'MADD-00000365-350', 'Mandrel 5.63"', 'SHELL', 'MOUNTING', '', '', '', '', '10/09/2013', '', '', '', '', '76.0', '143.0', '', '', '', '', '', '', '', '', '', ''),
(381, '2012-449', 'MANDREL 6"', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '124', '152.4', '150', '', '', '', '', '', '', '', '', ''),
(382, '2012-1008', 'MANDREL 6.38 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '124', '162', '150', '', '', '', '', '', '', '', '', ''),
(383, '2012-101', 'MANDREL 7"', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '124', '177.8', '150', '', '', '', '', '', '', '', '', ''),
(384, '2012-450', 'MANDREL 7"', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '124', '177.8', '150', '', '', '', '', '', '', '', '', ''),
(385, '2012-451', 'MANDREL 8 ''''', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '124', '203.2', '150', '', '', '', '', '', '', '', '', ''),
(386, '2011-135', 'MANDREL 8 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '124', '203.2', '150', '', '', '', '', '', '', '', '', ''),
(387, '2012-372', 'MANDREL 9 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '200', '228.6', '150', '', '', '', '', '', '', '', '', ''),
(388, 'MADD-00000365-919', 'MANIPULATING SCREW', 'ARMOUR WIRE COLLAR', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '16', '100', '', '', '', '', '', '', '', '', ''),
(389, 'MADD-00000366-549', 'MIDDLE LEG ', 'ANTI TORSION TOOLS', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '', '700', '', '', '', '', '38', '', '', '', ''),
(390, 'MADD-00000366-028', 'NULON MANDREL DIA.158 FOR 6.4"', 'MANDREL', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(391, '2012-294', 'NYLON COLLAR ?298', 'NYLON COLLAR', 'MOUNTING', 'T2-A4', 'OK', '2 SET', '', '12/04/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(392, '2012-445', 'NYLON COLLAR ?307', 'NYLON COLLAR', 'MOUNTING', 'T2-A4', 'OK', '2 SET', '', '12/04/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(393, '2012-293', 'NYLON COLLAR ?309', 'NYLON COLLAR', 'MOUNTING', 'T2-G4', 'OK', '1 SET', '', '16/05/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(394, 'MADD-00000366-426', 'NYLON COVER', 'COVER FOR SILICONE', 'MOUNTING', '', '', '', '', '29/04/2014', '', '', '', '', '132', '250', '93', '', '', '', '', '', '', '', '', ''),
(395, 'MADD-00000365-917', 'PAD FOR COLLAR', 'ARMOUR WIRE COLLAR', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '', '80', '', '', '', '', '', '', '', '15', ''),
(396, 'MADD-00000365-892', 'PAKER RUBBER', 'CANULA PUSHER', 'MOUNTING', '', '', '', '', '', '', '', '', '', '31', '73', '45', '', '', '', '', '', '', '', '', ''),
(397, 'MADD-00000365-896', 'PAKER WASHER', 'CANULA PUSHER ', 'MOUNTING', '', '', '', '', '', '', '', '', '', '31', '70', '5', '', '', '', '', '', '', '', '', ''),
(398, 'MADD-00000365-684', 'Paper holder', 'RADIUS CUTTER', 'MOUNTING', '', '', '', '', '', '12', '', '', '', '', '', '100', '', '', '', '', '', '', '', '', ''),
(399, 'XL-A001-', 'PIG', 'PIG ASSEMBLY', '', '', '', '', '', '', '3.5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(400, '2011-662', 'PIG 3"', 'PIG ASSEMBLY', '', '', '', '', '', '', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(401, '2011-313', 'PIG FOR 10 INCH', 'PIG ASSEMBLY', '', '', '', '', '', '', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(402, '2012-PIG-015', 'PIG FOR 10 INCH', 'PIG ASSEMBLY', '', '', '', '', '', '', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(403, '2012-PIG-007', 'PIG FOR 10.2"', 'PIG ASSEMBLY', '', '', '', '', '', '', '10.2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(404, '2012-PIG-019', 'PIG FOR 10.2"', 'PIG ASSEMBLY', '', '', '', '', '', '', '10.2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(405, '2012-PIG-021', 'PIG FOR 10.2" (STRUCTURE NO. 259.70978)', 'PIG ASSEMBLY', '', '', '', '', '', '', '10.2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(406, '2011-PIG-002', 'PIG FOR 10.55 INCH', 'PIG ASSEMBLY', '', '', '', '', '', '', '10.55', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(407, 'MPIG-0000000L-006', 'PIG FOR 11.25" TLDD', 'PIG ASSEMBLY', '', '', '', '', '', '', '11.25', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(408, '2012-PIG-020', 'PIG FOR 11.81" CHAMPION WATERFLOOD', 'PIG ASSEMBLY', '', '', '', '', '', '', '11.81', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(409, '2011-106', 'PIG FOR 14.5 INCHES', 'PIG ASSEMBLY', '', '', '', '', '', '', '14.5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(410, '2013-PIG-002', 'PIG FOR 15.75" CHAMPION WATERFLOOD', 'PIG ASSEMBLY', '', '', '', '', '', '', '15.75', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(411, '2013-PIG-004', 'PIG FOR 15.75" CHAMPION WATERFLOOD - NORMAL', 'PIG ASSEMBLY', '', '', '', '', '', '', '15.75', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(412, '2013-PIG-003', 'PIG FOR 15.75" CHAMPION WATERFLOOD 400.70204 & 03', 'PIG ASSEMBLY', '', '', '', '', '', '', '15.75', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(413, '2012-PIG-003', 'PIG FOR 4"', 'PIG ASSEMBLY', '', '', '', '', '', '', '4', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(414, '2011-PIG-003', 'PIG FOR 7"', 'PIG ASSEMBLY', '', '', '', '', '', '', '7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(415, 'XL-A002-', 'PIG FOR 8 INCH', 'PIG ASSEMBLY', '', '', '', '', '', '', '8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(416, '2012-PIG-001', 'PIG FOR 9"', 'PIG ASSEMBLY', '', '', '', '', '', '', '9', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(417, '2012-PIG-006', 'PIG FOR 9"', 'PIG ASSEMBLY', '', '', '', '', '', '', '9', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(418, '2011-104', 'PIG SHELTER', 'PIG SHELTER', 'X-LINKING', 'MTP', 'OK', '1', '', '25/1/2012', '16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(419, 'XL-B001', 'Pig Shelter', 'PIG SHELTER', 'X-LINKING', 'MTP', 'OK', '1', '', '25/1/2012', '6', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(420, '2011-335', 'PIG SHELTER 10"', 'PIG SHELTER', 'X-LINKING', 'MTP', 'OK', '4', '', '25/1/2012', '10', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(421, '2012-857', 'PIG SHELTER 12 ''''', 'PIG SHELTER', 'X-LINKING', 'MTP', 'OK', '2', '', '25/1/2012', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(422, 'MADD-00000365-226', 'PIG SHELTER 14"', 'PIG SHELTER', 'X-LINKING', 'MTP', '', '2', '', '', '14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(423, 'MADD-00000366-126', 'Pig Shelter 16 inch ', 'PIG SHELTER', 'X-LINKING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(424, '2011-661', 'PIG SHELTER 3"', 'PIG SHELTER', 'X-LINKING', 'MTP', 'OK', '1', '', '25/1/2012', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(425, 'XL-B002', 'PIG SHELTER 8 INCH', 'PIG SHELTER', 'X-LINKING', 'MTP', 'OK', '3', '', '25/1/2012', '8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(426, '', 'Pig Shelter 8 inch (Not XL-B002)', 'PIG SHELTER', 'X-LINKING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(427, '2011-105', 'PIPE LUMOX ADAPTER', 'ADAPTOR X LINKING', '', '', '', '', '', '', '16', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(428, '2012-858', 'PIPE LUMOX ADAPTER 12"', 'ADAPTOR X LINKING', '', '', '', '', '', '', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(429, 'MADD-00000365-226', 'PIPE LUMOX ADAPTER 14"', 'PIPE LUMOX ADAPTER', 'X-LINKING', 'MTP', '', '2', '', '', '14', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(430, 'MADD-00000365-174', 'Plate for 1/2" NPT Plug (Seal ID 53.64)', 'PORT TESTING PLATE', 'TESTING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(431, '2012-222 sheet 3/4', 'Pusher rod M14x2.0', 'BICONE PUSHER', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(432, 'MADD-00000365-859', 'PUSHER TUBE', 'CANULA PUSHER', 'MOUNTING', '', '', '', '', '', '', '', '', '', '36', '150', '90', '', '', '', '', '', '', '', '', ''),
(433, 'R49', 'R49', 'SEAL RING', '', 'T2-A3', 'OK', '4', '', '12/04/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(434, 'R58', 'R58', 'SEAL RING', '', 'T2-A3', 'OK', '2', '', '22/5/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(435, 'R60', 'R60', 'SEAL RING', '', 'T2-A3', 'OK', '2', '', '30/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(436, 'R67', 'R67', 'SEAL RING', '', 'T2-A3', 'OK', '1', '', '30/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(437, 'R67', 'R67', 'SEAL RING', '', 'T2-A3', 'OK', '2', '', '12/04/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(438, 'MADD-00000365-680', 'Radius cutter ?6mm', 'Radius Cutter', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '6', '', '', '', '', '', '', '', '', '', ''),
(439, 'MADD-00000365-680', 'Radius cutter ?6mm', 'RADIUS CUTTER', 'MOUNTING', '', '', '', '', '', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(440, 'MADD-00000365-682', 'Radius cutter ?8mm', 'Radius Cutter', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '8', '', '', '', '', '', '', '', '', '', ''),
(441, 'MADD-00000365-682', 'Radius cutter ?8mm', 'RADIUS CUTTER', 'MOUNTING', '', '', '', '', '', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(442, 'MADD-00000365-869', 'Retaining Plate', 'Plate', 'MOUNTING', '', '', '8', '', '09/02/2013', '', '', '', '', '160', '450', '', '', '', '', '', '', '', '', '', ''),
(443, 'MADD-00000366-491', 'RETAINING PLATE FOR ?564', 'ANTI TORSION TOOLS', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5', ''),
(444, 'XL-H001-', 'ROLL BENDED STEEL PLATE', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '225', '', '800', '', '', '', '', '', '', '', '', ''),
(445, 'XL-H002-', 'ROLL BENDED STEEL PLATE', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '250', '', '800', '', '', '', '', '', '', '', '', ''),
(446, '2011-137', 'ROLL BENDED STEEL PLATE R120', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '240', '', '800', '', '', '', '', '', '', '', '', ''),
(447, 'XL-H003', 'ROLL BENDED STEEL PLATE R122', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '268', '', '800', '', '', '', '', '', '', '', '', ''),
(448, '2011-337', 'ROLL BENDED STEEL PLATE R150', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '300', '', '400', '', '', '', '', '', '', '', '', ''),
(449, '338022', 'ROLLER FOR TNO MACHINE', 'TNO ROLLER', 'MOUNTING', '', '', '', '', '13/01/2014', '', '', '', '', '16', '68.4', '', '', '', '', '', '', '', '', '9', ''),
(450, '', 'RUBBER CORK', '', '', 'T2-P5', '', '', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(451, 'MADD-00000365-998', 'RUBBER DISC', 'canula jack', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(452, '2011-144', 'RUBBER DISK 7.5" (190.50)', 'FRONT CANULA JACK', '', '', '', '2', '', '', '', '', '', '', '20.5', '182.5', '', '', '', '', '', '', '', '', '', ''),
(453, 'MADD-00000365-742', 'Rubber for Retaining Plate', 'Rubber', 'MOUNTING', '', '', '8', '', '09/02/2013', '', '', '', '', '160', '347', '', '', '', '', '', '', '', '', '', ''),
(454, 'RX31', 'RX31', 'SEAL RING', '', 'T2-A3', 'OK', '1', '', '12/04/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(455, 'RX45', 'RX45', 'SEAL RING', '', 'T2-A3', 'OK', '4', '', '12/04/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(456, 'RX46', 'RX46', 'SEAL RING', '', 'T2-A3', 'OK', '2', '', '30/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(457, 'RX46', 'RX46', 'SEAL RING', '', 'T2-A3', 'OK', '8', '', '12/04/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(458, 'RX49', 'RX49', 'SEAL RING', '', 'T2-A3', 'OK', '1', '', '30/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(459, 'RX50', 'RX50', 'SEAL RING', '', 'T2-A3', 'OK', '4', '', '12/04/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(460, 'RX49', 'RX50', 'SEAL RING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(461, 'RX65', 'RX65', 'SEAL RING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(462, 'MADD-00000365-528', 'Sample Canula for Deplasticization', 'CANULA', 'MOUNTING', '', '', '', '', '', '', '', '', '', '217', '242', '133', '', '', '', '', '', '', '', '', ''),
(463, 'MADD-000000366-177', 'SAMPLE CANULA FOR DESPLATICIZATION (BUKIT TUA 12")', 'CANULA', 'MOUNTING', '', '', '', '', '', '12', '', '', '', '325', '359', '', '', '', '', '', '', '', '', '', ''),
(464, 'MADD-00000366-088', 'SAMPLING FRAME R130', 'ROLL BENDED STEEL', '', '', '', '', '', '', '', '', '', '', '270.', '', '375', '', '', '', '', '', '', '', '2', ''),
(465, 'MADD-00000366-280', 'SAMPLING FRAME R220', 'SAMPLING FRAME', '', '', '', '', '', '', '', '', '', '', 'R220', '', '', '', '', '', '', '', '', '', '', ''),
(466, '2011-778', 'SEAL', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(467, 'MADD-00000365-596', 'SEAL', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '20.5', '158.0', '', '', '', '', '', '', '', '', '', ''),
(468, 'MADD-00000365-597', 'SEAL', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '20.5', '166.0', '', '', '', '', '', '', '', '', '', ''),
(469, 'MADD-00000365-599', 'SEAL', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '20.5', '200.0', '', '', '', '', '', '', '', '', '', ''),
(470, 'XL-A003-04', 'SEAL', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(471, 'MADD-00000365-871', 'Seal Diam. 213.35', 'Seal', 'MOUNTING', '', '', '8', '', '09/02/2013', '', '', '', '', '60', '213.3', '', '', '', '', '', '', '', '', '', ''),
(472, '2012-271', 'SEAL FOR TESTING ?107.2', 'SEALING DISC', '', '', '', '8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(473, '2011-826', 'SEAL FOR TESTING ?159.5', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(474, '2011-276', 'SEAL FOR TESTING ?160.1', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(475, 'MADD-00000365-160', 'SEAL FOR TESTING ?188 (75SH)', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(476, 'MADD-00000365-160', 'SEAL FOR TESTING ?188 (90SH)', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(477, '2011-761', 'SEAL FOR TESTING ?197', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(478, '2011-823', 'SEAL FOR TESTING ?213', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(479, '2011-172', 'SEAL FOR TESTING ?213.4', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(480, '2012-469', 'SEAL FOR TESTING ?240', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(481, '2011-320', 'SEAL FOR TESTING ?264', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(482, '2012-472', 'SEAL FOR TESTING ?270', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(483, '2012-925', 'SEAL FOR TESTING ?270', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(484, '2011-941', 'SEAL FOR TESTING ?278.7', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(485, '2012-426', 'SEAL FOR TESTING ?292', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(486, '2011-764', 'SEAL FOR TESTING ?297', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(487, 'MADD-00000365-367', 'SEAL FOR TESTING ?298', 'SEALING DISC', '', '', '', '8', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(488, 'MADD-00000365-367', 'SEAL FOR TESTING ?298', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '33.5', '298.0', '', '', '', '', '', '', '', '', '', ''),
(489, 'MADD-00000366-562', 'SEAL FOR TESTING ?300', 'SEALING DISC', 'XLINKING', '', '', '48', '', '', '', '', '', '', '', '300', '', '', '', '', '', '', '', '', '', ''),
(490, '2012-1044', 'SEAL FOR TESTING ?310.4', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(491, '2012-113', 'SEAL FOR TESTING ?315', 'SEALING DISC', 'TESTING', 'MTP', '', '32', '', '03/04/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(492, '2012-113', 'SEAL FOR TESTING ?315', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(493, 'MADD-00000366-281', 'SEAL FOR TESTING ?377', 'SEAL', '', '', '', '', '', '', '14.75', '', '', '', '33.5', '377', '', '', '', '', '', '', '', '', '10', ''),
(494, '2011-426', 'SEAL FOR TESTING ?380', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(495, 'MADD-00000366-093', 'Seal for Testing ?388.6', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(496, 'MADD-00000366-388', 'SEAL FOR TESTING ?395.5', 'SEAL', '', '', '', '', '', '', '', '', '', '', '33.5', '395.5', '', '', '', '', '', '', '', '', '10', ''),
(497, '2013-024', 'SEAL FOR TESTING ?412', 'SEALING DISC', '', 'T2-L2', 'OK', '48', '', '05/02/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(498, 'MADD-00000366-563', 'SEAL FOR TESTING ?93.8', 'SEALING DISC', 'TESTING', '', '', '8', '', '', '', '', '', '', '', '93.8', '', '', '', '', '', '', '', '', '', ''),
(499, '2012-173', 'SEAL ?188', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(500, '2012-204', 'SEAL ?240', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(501, '', 'SEAL RING 64', 'SEAL RING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(502, '', 'SEAL RING R53', 'SEAL RING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(503, '', 'SEAL RING USED', '', '', 'T2-Q6', 'USED', '1 BOX', '', '17/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(504, 'MADD-00000365-346', 'Sealing Disc ?151', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '20.5', '151.0', '', '', '', '', '', '', '', '', '10', ''),
(505, 'MADD-00000365-360', 'SEALING DISC ?201', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '20.5', '201.0', '', '', '', '', '', '', '', '', '', ''),
(506, 'MADD-00000366-135', 'SEALING DISC ?203', 'SEALING DISC', 'XLINKING', '', '', '', '', '', '', '', '', '', '20.5', '203.0', '', '', '', '', '', '', '', '', '10', ''),
(507, 'MADD-00000365-371', 'Sealing Disc ?262', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '20.5', '262.0', '', '', '', '', '', '', '', '', '10', ''),
(508, '2012-963', 'SEALING DISC ?80.4', 'SEALING DISC', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(509, '2012-475', 'SHELL 11.06 "', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '200', '280', '150', '', '', '', '', '', '', '', '', ''),
(510, 'MADD-00000366-485', 'SHELL 3.5"', 'SHELL', 'MOUNTING', '', '', '', '', '', '', '', '', '', '30', '88.9', '200', '', '', '', '', '', '', '', '', ''),
(511, 'MADD-00000365-353', 'Shell 11.25"', 'SHELL', 'MOUNTING', '', '', '', '', '10/09/2013', '', '', '', '', '200.', '285.7', '', '', '', '', '', '', '', '', '', ''),
(512, '2012-1068', 'SHELL 12 INCH', 'MANDREL', '', '', '', '', '', '', '', '', '', '', '200', '304.8', '150', '', '', '', '', '', '', '', '', ''),
(513, '2012-635', 'shell 3''''', 'SHELL', 'MOUNTING', 'wardrobe', 'OK', '12', '', '16/2/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(514, 'MADD-00000365-835', 'SHELL 6.4"', 'SHELL', 'MOUNTING', '', '', '', '', '', '', '', '', '', '124.', '162.0', '', '', '', '', '', '', '', '', '', ''),
(515, 'MADD-00000366-583', 'SHELL 9.5"', 'SHELL', 'MOUNTING', '', '', '', '', '', '', '', '', '', '200.', '241.3', '', '', '', '', '', '', '', '', '', ''),
(516, 'MADD-00000365-352', 'Shell 9.75"', 'SHELL', 'MOUNTING', '', '', '', '', '10/09/2013', '', '', '', '', '200.', '247.7', '', '', '', '', '', '', '', '', '', ''),
(517, 'MADD-00000366-490', 'SHIELD PLATE ?564', 'ANTI TORSION TOOLS', '', '', '', '', '', '', '', '', '', '483.2', '', '', '', '', '', '', '', '', '49', '', '5', ''),
(518, '', 'Silicone Rubber Heating Tapes with Time Percentage Dial Control', '', '', 'T2-N5', 'OK', '40', '', '26/12/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(519, '', 'SIZE 102', 'SEAL RING', '', 'T2-A2', 'OK', '2', '', '25/3/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(520, '', 'SIZE 102', 'SEAL RING', '', 'T2-A2', 'USED', '4', '', '12/03/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(521, '', 'SIZE 112', 'SEAL RING', '', 'T2-A2', 'USED', '0', '', '12/03/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(522, '', 'SIZE 112', 'SEAL RING', 'TESTING', 'T2-P3', 'OK', '2', '', '01/05/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(523, '66179', 'SIZE 112', 'SEAL RING', '', 'T2-A2', 'OK', '6', '', '12/03/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(524, '', 'SIZE 62', 'SEAL RING', '', 'T2-A3', 'OK', '2', '', '12/04/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(525, '50566G', 'SIZE 62', 'SEAL RING', '', 'T2-A3', 'OK', '3', '', '30/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(526, '51279N', 'SIZE 62', 'SEAL RING', '', 'T2-A3', 'USED', '2', '', '30/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(527, '', 'SIZE 72', 'SEAL RING', '', 'T2-A2', 'USED', '4', '', '12/03/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(528, '', 'SIZE 72', 'SEAL RING', '', 'T2-A2', 'OK', '2', '', '16/05/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(529, '51247N', 'SIZE 76', 'SEAL RING', '', 'T2-A3', 'OK', '2', '6', '23/04/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(530, '66815', 'SIZE 76', 'SEAL RING', '', 'T2-A2', 'OK', '2', '', '12/03/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(531, '', 'SIZE 82', 'SEAL RING', '', 'T2-A2', 'USED', '4', '', '12/03/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(532, '66816', 'SIZE 82', 'SEAL RING', '', 'T2-A3', 'OK', '8', '', '30/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(533, '2012-STR-010', 'STRAIGHTENER 10''''', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(534, '2012-STR-005', 'STRAIGHTENER 11''''''', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(535, '2012-STR-007', 'STRAIGHTENER 3 ''''', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(536, '2012-STR-012', 'STRAIGHTENER 4 ''''', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(537, '2012-STR-008', 'STRAIGHTENER 5 ''''', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(538, '2012-STR-009', 'STRAIGHTENER 6 ''''', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(539, '2012-STR-001', 'STRAIGHTENER 7''''', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(540, '2011-153', 'STRAIGHTENER 8''''', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(541, '2012-STR-002', 'STRAIGHTENER 8" WITH MANDREL', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(542, '2012-STR-006', 'STRAIGHTNERS 4"', 'STRAIGHTENER ASSEMBLY', '', '', '', '', '', '', '', '', '', '', '', '', '2600', '', '', '', '', '', '', '', '', ''),
(543, 'MADD-00000365-683', 'STRIP', 'RADIUS CUTTER', 'MOUNTING', '', '', '', '', '', '12', '', '', '', '', '', '300', '', '', '', '', '', '', '', '', ''),
(544, '', 'STUD BOLT M52 X 600 WITH NUT', '', '', 'T2-Q5', 'OK', '16', '', '17/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(545, 'MADD-00000365-679', 'SUPPORT CUTTER  ?6 ', 'RADIUS CUTTER', 'MOUNTING', '', '', '', '', '', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(546, 'MADD-00000365-681', 'Support cutter ?8', 'RADIUS CUTTER ', 'MOUNTING', '', '', '', '', '', '12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(547, 'MADD-00000365-920', 'SUPPORT FOR COLLAR', 'ARMOUR WIRE COLLAR', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '', '80', '10', '', '', '', '70.', '', '', '', ''),
(548, '202857', 'TECHLOCK 10"', '', '', 'T2-D2', 'OK', '4 SETS', '', '28/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(549, '', 'TECHLOCK 4''''', '', '', 'T2-O4', 'OK', '2 SET', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(550, '', 'TECHLOCK 5''''', '', '', 'T2-O4', 'OK', '2 SET', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(551, '', 'TECHLOCK 5"', '', '', 'T2-C2', 'OK', '2 SET', '', '23/3/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(552, '', 'TECHLOCK 8''''', '', '', 'T2-R5', 'OK', '2 SET', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(553, 'I0012', 'TECHLOCK 8"', '', '', 'T2-C2', 'OK', '4 SETS', '', '28/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(554, '', 'TECHLOCK H20', '', '', 'T2-O2', 'OK', '1 SET', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(555, 'GA0836', 'TECHLOK ADAPTER SIZE 8 IN 76 ', 'FLANGE', 'TESTING', '', '', '', '', '17/05/2013', '', 'CLAMP', '76', '8IN CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(556, '2012-1015', 'test flange', '', '', 'T2-R2', '', '1', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(557, 'MADD-00000366-493', 'TEST FLANGE 10'''' ASME B16.5 RTJ FLANGE 1500 LBS (R54)', 'FLANGE', 'TESTING', '', '', '', '', '', '10''''', '12', 'R54', '482.6', '', '', '', '', '', '', '', '', '', '', '', ''),
(558, '2011-973', 'TEST FLANGE 10" ASME 20,000 PSI', 'FLANGE', 'TESTING', 'T2-M3', 'OK', '1', '', '16/9/2013', '', '16', 'BX158', '469.9', '', '', '', '', '', '', '', '', '', '', '', ''),
(559, 'MADD-00000366-067', 'TEST FLANGE 10" BX170', 'FLANGE', 'TESTING ', '', '', '', '', '', '', '10', 'BX170', '482.6', '', '', '', '', '', '', '', '', '', '', '', ''),
(560, 'MADD-00000365-200', 'TEST FLANGE 10" R53', 'FLANGE', 'TESTING', 'T2-M5', 'OK', '1', '', '16/9/2013', '', '16', 'R53', '431.8', '', '', '', '', '', '', '', '', '', '', '', ''),
(561, 'MADD-00000365-970', 'TEST FLANGE 10" R53', 'FLANGE', 'TESTING', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(562, 'MADD-00000365-898', 'TEST FLANGE 11" 16500 PSI BX 158', 'FLANGE', 'TESTING', '', '', '', '', '17/09/2013', '', '16', 'BX158', '565.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(563, '2012-459', 'Test Flange 11" 5000 PSI SBX 158', 'FLANGE', 'TESTING', 'T2-M3', 'OK', '1', '', '16/9/2013', '', '12', 'SBX158', '482.6', '', '', '', '', '', '', '', '', '', '', '', ''),
(564, '2012-459', 'Test Flange 11" 5000 PSI SBX 158', 'FLANGE', 'TESTING', 'T2-M2', 'OK', '1', '', '16/9/2013', '', '12', 'SBX158', '482.6', '', '', '', '', '', '', '', '', '', '', '', ''),
(565, '2012-459', 'Test Flange 11" 5000 PSI SBX 158', 'FLANGE', 'TESTING', 'T2-N2', 'OK', '2', '', '23/4/2013', '', '12', 'SBX158', '482.6', '', '', '', '', '', '', '', '', '', '', '', ''),
(566, '2012-420', 'Test Flange 11" 6594 PSI (UNBC)', 'FLANGE', 'TESTING', 'T2-S5', 'OK', '2', '', '19/9/2013', '', '18 ', 'No Seal', '412/440', '', '', '', '', '', '', '', '', '', '', '', ''),
(567, '2012-1040', 'TEST FLANGE 11.81'''' 3700 PSI RX57', 'FLANGE', 'TESTING', '', 'OBSELETE', '', '', '', '', '20', 'RX57', '488.9', '', '', '', '', '', '', '', '', '', '', '', ''),
(568, 'MADD-00000365-389', 'TEST FLANGE 11.81" 3700 PSI RX57 - MODIFIED', 'FLANGE', 'TESTING', 'T2-N2', 'OK', '1', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(569, '2011-725', 'Test Flange 12 inch 20000 PSI R58', 'FLANGE', 'TESTING', 'T2-Q5', 'OK', '1', '', '17/9/2013', '', '16', 'R58', '571.5', '', '', '', '', '', '', '', '', '', '', '', ''),
(570, '2012-996', 'TEST FLANGE 12'''' R58', 'FLANGE', 'TESTING', 'T2-P3', 'OK', '1 SET', '', '16/9/2013', '', '16', 'R58', '571.5', '', '', '', '', '', '', '', '', '', '', '', ''),
(571, 'MADD-00000366-170', 'TEST FLANGE 12" 4950 PSI RX57', 'FLANGE', 'TESTING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(572, 'MADD-00000366-202', 'TEST FLANGE 12" BX160', 'FLANGE', 'TESTING', '', '', '', '', '', '', '16', 'BX160', '590.6', '', '', '', '', '', '', '', '', '', '', '', ''),
(573, 'MADD-00000366-129', 'TEST FLANGE 12" BX170', 'FLANGE', 'TESTING', '', '', '', '', '', '', '12', 'BX170', '571.5', '', '', '', '', '', '', '', '', '', '', '', ''),
(574, 'MADD-00000366-471', 'TEST FLANGE 12" CLASS 2500 HXL 348', 'FLANGE', 'TESTING', '', '', '', '', '23/04/2014', '', '', 'HXL 348', '483.2', '', '564.0', '', '', '', '', '', '', '49', '', '99', ''),
(575, 'MADD-00000365-880', 'TEST FLANGE 12.8" RF 1500 LBS', 'FLANGE', 'TESTING', '', '', '', '', '', '', '16', 'RF', '571.5', '', '', '', '', '', '', '', '', '', '', '', ''),
(576, '2012-419', 'Test Flange 13-5/8" API 6B-30000 PSI BX160', 'FLANGE', 'TESTING', 'T2-S4', 'OK', '2', '', '17/9/2013', '', '20', 'BX160', '533.4', '', '', '', '', '', '', '', '', '', '', '', ''),
(577, '2012-419', 'Test Flange 13-5/8" API 6B-30000 PSI BX160', 'FLANGE', 'TESTING', 'T2-A1', 'OK', '1', '', '27/12/2012', '', '20', 'BX160', '533.4', '', '', '', '', '', '', '', '', '', '', '', ''),
(578, '2011-972', 'TEST FLANGE 14" SPO 20,000 PSI', 'FLANGE', 'TESTING', 'T2-N2', 'OK', '0', '', '31/12/2012', '', '16', 'IX14', '531.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(579, '2011-972', 'TEST FLANGE 14" SPO 20,000 PSI', 'FLANGE', 'TESTING', 'T2-N2', 'OK', '1', '', '28/11/2012', '', '16', 'IX14', '531.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(580, '2011-402', 'TEST FLANGE 16'''' ASME 16.5 1500 LBS FOR Rx67', 'FLANGE', 'TESTING', '', '', '', '', '', '', '16', 'RX67', '705', '', '', '', '', '', '', '', '', '', '', '', ''),
(581, '2012-1014', 'TEST FLANGE 16'''' RX65', 'FLANGE', 'TESTING', 'T2-N4', 'OK', '2', '', '16/9/2013', '', '20', 'RX65', '603.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(582, 'MADD-00000366-293', 'TEST FLANGE 16" RX 65', 'FLANGE', 'TESTING', '', '', '', '', '', '', '', '', '', '520.', '650.0', '', '', '', '', '', '', '', '', '', 'RX65'),
(583, 'MADD-00000366-293', 'TEST FLANGE 16" RX65', 'FLANGE', 'TESTING', '', '', '', '', '', '', '', 'RX 65', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(584, '2012-464', 'Test Flange 3" 5000 PSI SBX 152 (8 Holes)', 'FLANGE', 'TESTING', 'T2-P4', 'OK', '1', '', '01/02/2013', '', '8', 'SBX 152', '165.1', '', '', '', '', '', '', '', '', '', '', '', ''),
(585, '2012-464', 'Test Flange 3" 5000 PSI SBX 152 (8 Holes)', 'FLANGE', 'TESTING', 'T2-G3', 'OK', '2', '', '02/09/2013', '', '8', 'SBX 152', '165.1', '', '', '', '', '', '', '', '', '', '', '', ''),
(586, '2012-463', 'TEST FLANGE 3" GR31', 'FLANGE', 'TESTING', 'T2-P4', 'OK', '2', '', '13/2/2013', '', '', 'BX 155', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(587, 'MADD-00000365-390', 'Test Flange 4'''' SPO 7.5K Seal Ring IX4', 'FLANGE', 'TESTING', '', '', '', '', '11-Jul', '', '12', 'IX4', '201.5', '', '', '', '', '', '', '', '', '', '', '', ''),
(588, '2012-246', 'Test Flange 4" 10,000 PSI Bx155 (12 Holes)', 'FLANGE', 'TESTING', 'T2-T3', 'OK', '1', '', '18/9/2013', '', '12', 'Bx155', '258.8', '', '', '', '', '', '', '', '', '', '', '', ''),
(589, '2012-249', 'TEST FLANGE 4" 10000 PSI Bx155 (8 HOLES)', 'FLANGE', 'TESTING', 'T2-T3', 'OK', '2', '', '18/9/2013', '', '8', 'Bx155', '258.8', '', '', '', '', '', '', '', '', '', '', '', ''),
(590, 'MADD-00000366-208', 'TEST FLANGE 4" 8250 PSI RX39', 'FLANGE', 'TESTING', '', '', '', '', '', '', '31.7', 'RX39', '241.3', '', '', '', '', '', '', '', '', '', '', '', ''),
(591, 'MADD-00000366-363', 'TEST FLANGE 4" 8250 PSI RX39', 'FLANGE', 'TESTING', '', '', '', '', '', '', '8', 'RX39', '241.3', '', '', '', '', '', '', '', '', '', '', '', ''),
(592, 'MADD-00000365-390', 'TEST FLANGE 4" SPO 7.5K SEAL RING IX4', 'HAMMER', 'HYDRO TEST', 'T2-P2', 'OK', '2', '', '28/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(593, '2012-574', 'TEST FLANGE 5 1/8" 10000 PSI Bx169 (12 HOLES)', 'FLANGE', 'TESTING', 'T2-O4', 'OK', '2', '', '16/9/2013', '', '12', 'BX169', '300', '', '', '', '', '', '', '', '', '', '', '', ''),
(594, '2012-574', 'TEST FLANGE 5 1/8" 10000 PSI Bx169 (12 HOLES)', 'FLANGE', 'TESTING', '', '', '', '', '', '', '12', 'BX169', '300', '', '', '', '', '', '', '', '', '', '', '', ''),
(595, 'MADD-00000366-566', 'TEST FLANGE 5-1/8" 17600 PSI BX 169', 'FLANGE', 'TESTING', '', '', '', '', '', '', '12', 'BX169', '300', '', '', '', '', '', '', '', '', '', '', '', ''),
(596, '2011-061', 'TEST FLANGE 6 1500 LBS  HAMMER UNION 2 FIG 20,000 PSI FEMALE', 'FLANGE', 'TESTING', '', '', '', '', '', '', '12', 'Rx46', '317.5', '', '', '', '', '', '', '', '', '', '', '', ''),
(597, '2011-249', 'TEST FLANGE 6'''' 20,000PSI RX45', 'FLANGE', 'HYDRO TEST', 'T2-N2', 'OK', '1', '', '16/7/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(598, '2011-249', 'TEST FLANGE 6'''' 20,000PSI RX45', 'FLANGE', 'HYDRO TEST', 'T2-S5', 'OK', '1', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(599, '2011-531', 'Test Flange 6 Inch 20,000 PSI', 'FLANGE', 'TESTING', 'T2-R3', 'OK', '1', '', '17/9/2013', '', '12', 'RX45', '317.5', '', '', '', '', '', '', '', '', '', '', '', ''),
(600, '2011-907', 'Test Flange 6" 20 000 PSI RX45', 'FLANGE', 'TESTING', 'T2-O2', 'OK', '1', '', '28/11/2012', '', '12', 'Rx45', '317.5', '', '', '', '', '', '', '', '', '', '', '', ''),
(601, '2011-842', 'Test Flange 6" 20,000 PSI  ', 'FLANGE', 'TESTING', 'T2-Q2', 'OK', '4', '', '17/9/2013', '', '12', 'BX156', '403.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(602, '2011-531', 'TEST FLANGE 6" 20,000 PSI Rx45', 'FLANGE', 'HYDRO TEST', 'T2-R6', 'OK', '1', '', '17/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(603, 'MADD-00000365-305', 'TEST FLANGE 6" 20,000 PSI RX46', 'FLANGE', 'TESTING', 'T2-G3', 'OK', '4', '', '12/12/2012', '', '12', 'RX45', '317.5', '', '', '', '', '', '', '', '', '', '', '', ''),
(604, '2012-241', 'Test Flange 6" 4950 psi Rx45', 'FLANGE', 'TESTING', '', '', '1 SET', '', '08/05/2013', '', '12', 'RX45', '317.5', '', '', '', '', '', '', '', '', '', '', '', ''),
(605, 'MADD-00000366-030', 'TEST FLANGE 6" BX170', 'FLANGE', 'TESTING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(606, '2012-240', 'TEST FLANGE 7" 20,000 PSI 10DF25-D180', 'FLANGE', 'TESTING', 'T2-N1', 'OK', '2', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `tooling_master` (`tm_id`, `DRAWING-NO`, `DRAWING NAME`, `TOOLING NAME`, `MACHINE TYPE`, `LOCATION`, `STATUS`, `QUANTITY (NOT REVERSED)`, `RESERVED QUANTITY`, `Updated Date`, `INCH`, `TOP MOUNTING HOLE`, `SEAL RING`, `MOUNTING CENTER DIAMETER`, `ID`, `OD`, `LENGTH`, `SURFACE THICKNESS`, `SURFACE HEIGHT`, `OVERALL HEIGHT`, `OVERALL WIDTH`, `WIDTH`, `MOUNTING HOLE`, `HEIGHT`, `THICKNESS`, `TYPE`) VALUES
(607, '2012-241-', 'Test Flange 7" 20,000 PSI 10DF25-D180', 'FLANGE', 'TESTING', 'T2-P2', 'OK', '1', '', '16/9/2013', '', '12', '10DF25-D180', '409.6', '', '', '', '', '', '', '', '', '', '', '', ''),
(608, '2012-083', 'Test Flange 7" 20,000 PSI Bx157', 'FLANGE', 'TESTING', 'T2-P2', 'OK', '1', '', '16/9/2013', '', '20', 'Bx157', '673.1', '', '', '', '', '', '', '', '', '', '', '', ''),
(609, '2012-240', 'Test Flange 7" 20,000 PSI Bx157', 'FLANGE', 'TESTING', 'T2-P2', 'OK', '1', '', '16/9/2013', '', '20', 'Bx157', '673.1', '', '', '', '', '', '', '', '', '', '', '', ''),
(610, '2012-240', 'Test Flange 7" 20,000 PSI Bx157', 'FLANGE', 'TESTING', 'T2-M1', 'OK', '2', '', '28/11/2012', '', '20', 'Bx157', '673.1', '', '', '', '', '', '', '', '', '', '', '', ''),
(611, '2012-083', 'Test Flange 7" 20,000 PSI Rx49', 'FLANGE', 'TESTING', 'T2-R6', 'OK', '1', '', '16/9/2013', '', '12', 'Rx49', '349.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(612, '2012-083', 'Test Flange 7" 20,000 PSI Rx49', 'FLANGE', 'TESTING', 'T2-C3', 'OK', '1', '', '27/11/2012', '', '12', 'Rx49', '349.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(613, '2012-083', 'Test Flange 7" 20,000 PSI Rx49', 'FLANGE', 'TESTING', 'T2-N1', 'OK', '1', '', '28/11/2012', '', '12', 'Rx49', '349.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(614, '2012-1041', 'TEST FLANGE 7.87 '''' 3700 PSI RX49', 'FLANGE', 'TESTING', 'T2-M2', 'OK', '2', '', '16/9/2013', '', '12', 'RX49', '349.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(615, '2012-1041', 'TEST FLANGE 7.87 '''' 3700 PSI RX49', 'FLANGE', 'TESTING', 'T2-R2', 'OK', '2', '', '16/9/2013', '', '12', 'RX49', '349.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(616, '2012-1041', 'TEST FLANGE 7.87 '''' 3700 PSI RX49', 'FLANGE', 'TESTING', 'T2-Q2', 'OK', '2', '', '16/9/2013', '', '12', 'RX49', '349.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(617, '2012-1041', 'TEST FLANGE 7.87 '''' 3700 PSI RX49', 'FLANGE', 'TESTING', 'T2-Q4', 'OK', '2', '', '16/9/2013', '', '12', 'RX49', '349.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(618, '2011-530', 'Test Flange 8" 20 000 PSI RX49', 'FLANGE', 'TESTING', '', '', '', '', '', '', '12', 'Rx49', '393.7', '', '', '', '', '', '', '', '', '', '', '', ''),
(619, '2011-841', 'Test Flange 8" 20 000 PSI RX50', 'FLANGE', 'TESTING', 'T2-R3', 'OK', '1', '', '17/9/2013', '', '12', 'Rx50', '393.7', '', '', '', '', '', '', '', '', '', '', '', ''),
(620, '2011-841', 'Test Flange 8" 20 000 PSI RX50', 'FLANGE', 'TESTING', 'T2-B2', 'OK', '4', '', '12/12/2012', '', '12', 'Rx50', '393.7', '', '', '', '', '', '', '', '', '', '', '', ''),
(621, '2012-373', 'TEST FLANGE 8" 20,000 PSI Bx157', 'FLANGE', 'TESTING', 'T2-P6', 'OK', '2 SET', '', '16/9/2013', '', '12', 'BX157', '393.7', '', '', '', '', '', '', '', '', '', '', '', ''),
(622, 'MADD-00000366-115', 'TEST FLANGE 8" 4950PSI RX49', 'FLANGE', 'TESTING', '', '', '', '', '19/12/2013', '', '', 'RX49', '393.7', '32.0', '469.9', '', '', '', '', '', '', '', '', '104.5', ''),
(623, '2012-552', 'TEST FLANGE 8" 900 LBS R49', 'FLANGE', 'TESTING', '', '', '', '', '', '', '12', 'R49', '393.7', '', '', '', '', '', '', '', '', '', '', '', ''),
(624, 'MADD-00000366-081', 'Test Flange 8" BX171', 'FLANGE', 'TESTING', '', '', '', '', '07/11/2013', '8.00', '', 'BX171', '393.7', '', '482.6', '', '', '', '', '', '', '44.', '', '103.2', ''),
(625, 'MADD-00000366-104', 'TEST FLANGE 8" RF FLANGE 2500 LBS', 'FLANGE', 'TESTING', '', '', '1', '', '', '', '12', 'BX153', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(626, 'MADD-00000366-105', 'TEST FLANGE 8" RF FLANGE 600 LBS', 'FLANGE', 'TESTING', '', '', '', '', '', '', '12', 'BX153', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(627, '', 'test hub 8''''', '', '', 'T2-P3', 'OK', '2', '', '23/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(628, 'MADD-00000365-822', 'TEST HUB GRAYLOC 10H', 'FLANGE', '', '', '', '6', '', '30/8/2013', '', '', '', '', '', '345.9', '', '', '', '', '', '', '', '', '', ''),
(629, '2011-724', 'Test Hub Grayloc 12M 112', 'FLANGE', 'TESTING', 'T2-Q4', 'OK', '6', '', '17/9/2013', '', '8', '112', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(630, '2011-724', 'Test Hub Grayloc 12M 112', 'FLANGE', 'TESTING', 'T2-R6', 'OK', '1', '', '17/9/2013', '', '8', '112', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(631, 'MADD-00000366-209', 'TEST HUB GRAYLOC ADAPTOR 4GR34', 'FLANGE', 'TESTING', '', '', '', '', '', '', 'CLAMP', 'GR34', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(632, 'MADD-00000366-210', 'TEST HUB GRAYLOC ADAPTOR 6G52', 'FLANGE', 'TESTING', '', '', '', '', '', '', 'CLAMP', '52', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(633, '2012-239', 'TEST HUB GRAYLOCK ADAPTOR 10H72', 'FLANGE', 'TESTING', 'T2-R6', 'OK', '3', '', '17/9/2013', '', '10', '10H72', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(634, '2012-239', 'TEST HUB GRAYLOCK ADAPTOR 10H72', 'FLANGE', 'TESTING', 'T2-B4', 'OK', '3', '', '12/12/2012', '', '10', '10H72', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(635, '2012-239', 'TEST HUB GRAYLOCK ADAPTOR 10H72', 'FLANGE', 'TESTING', 'T2-T3', 'OK', '2', '', '18/9/2013', '', '10', '10H72', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(636, '2012-460', 'Test Hub Graylock Adaptor 12M 102', 'FLANGE', 'TESTING', 'T2-M3', 'OK', '1', '', '16/9/2013', '', 'CLAMP', '102', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(637, '2012-460', 'Test Hub Graylock Adaptor 12M 102', 'FLANGE', 'TESTING', 'T2-K5', 'OK', '3 SET', '', '25/3/2013', '', 'CLAMP', '102', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(638, '2012-460', 'Test Hub Graylock Adaptor 12M 102', 'FLANGE', 'TESTING', 'T2-Q3', 'OK', '4', '', '17/9/2013', '', 'CLAMP', '102', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(639, '2012-460', 'Test Hub Graylock Adaptor 12M 102', 'FLANGE', 'TESTING', 'T2-N3', 'OK', '1', '', '16/9/2013', '', 'CLAMP', '102', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(640, '2012-755', 'TEST HUB GRAYLOCK ADAPTOR 5GR40', 'FLANGE', 'TESTING', 'T2-O4', 'OK', '1 SET', '', '16/9/2013', '', 'CLAMP', '40', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(641, '2012-346', 'TEST HUB GRAYLOCK ADAPTOR P112', 'FLANGE', 'TESTING', 'T2-N3', 'OK', '2', '', '16/9/2013', '', '8', 'P122', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(642, '2012-499', 'TEST HUB GRAYLOCK ADAPTOR P112', 'FLANGE', 'TESTING', 'T2-N3', 'OK', '1', '', '16/9/2013', '', 'CLAMP', '112', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(643, '2012-1015', 'TEST HUB H20 160', 'FLANGE', 'TESTING', 'T2-M2', 'OK', '1', '', '16/9/2013', '', 'CLAMP', '160', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(644, '2012-1015', 'TEST HUB H20 160', 'FLANGE', 'TESTING', 'T2-M5', 'OK', '1', '', '16/9/2013', '', 'CLAMP', '160', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(645, '2012-1015', 'TEST HUB H20 160', 'FLANGE', 'TESTING', 'T2-N2', 'OK', '2', '', '16/9/2013', '', 'CLAMP', '160', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(646, '2012-1015', 'TEST HUB H20 160', 'FLANGE', 'TESTING', 'T2-R4', 'OK', '1', '', '16/9/2013', '', 'CLAMP', '160', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(647, 'MADD-00000365-308', 'Test Hub Techlock H10 In 102 ST', 'FLANGE', 'TESTING', 'T2-R5', 'OK', '2', '', '17/9/2013', '', 'CLAMP', '102', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(648, 'MADD-00000365-309', 'Test Hub Techlock H10 In 82 ST', 'FLANGE', 'TESTING', '', '', '1 SET', '', '08/05/2013', '', 'CLAMP', '82', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(649, 'MADD-00000366-492', 'TEST HUB TECHLOCK H10 IN 91 ST', 'FLANGE', 'TESTING', '', '', '', '', '', '10''''', 'CLAMP', '91', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(650, 'MADD-00000365-307', 'Test Hub Techlock H12 In 112 ST', 'FLANGE', 'TESTING', 'T2-Q5', 'OK', '1', '', '17/9/2013', '', 'CLAMP', '112', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(651, '2012-893', 'TEST HUB TECHLOCK H14', 'FLANGE', 'TESTING', 'T2-R3', 'OK', '1', '', '17/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(652, 'MADD-00000365-306', 'TEST HUB TECHLOCK H8 IN 62 ST', 'FLANGE', 'HYDRO TEST', 'T2-C4', 'OK', '4', '', '28/11/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(653, 'MADD-00000365-306', 'Test Hub Techlock H8 In 62 ST', 'FLANGE', 'TESTING', 'T2-R5', 'OK', '2', '', '17/9/2013', '', 'CLAMP', '62', '200.15', '', '', '', '', '', '', '', '', '', '', '', ''),
(654, 'MADD-00000365-306', 'Test Hub Techlock H8 In 62 ST', 'FLANGE', 'HYDRO TEST', 'T2-M3', 'OK', '1', '', '16/9/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(655, 'MADD-00000365-971', 'TEST HUB TECHLOCK H8 IN 64', 'FLANGE', 'TESTING', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(656, 'MADD-00000366-465', 'TEST HUB TECHLOK H12 IN 106 ST', 'FLANGE', 'TESTING', '', '', '', '', '', '', '', '106', '', '355.', '406.2', '101.', '', '', '', '', '', '', '', '', ''),
(657, '2012-1042', 'TEST HUB TECHLOK H12 IN 120 ST', 'FLANGE', 'TESTING', 'T2-O3', 'OK', '2', '', '16/9/2013', '', 'CLAMP', '120', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(658, '2012-893', 'TEST HUB TECHLOK H14 IN 124 ST', 'FLANGE', 'TESTING', '', '', '', '', '', '', 'CLAMP', '124', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(659, 'MADD-00000365-881', 'TEST HUB TECHLOK H14 IN 130 ST', 'FLANGE', 'TESTING', '', '', '', '', '', '', 'CLAMP', '130', 'CLAMP', '', '', '', '', '', '', '', '', '', '', '', ''),
(660, 'MADD-00000366-466', 'TEST HUB TECHLOK H8 IN 54ST', 'FLANGE', 'TESTING', '', '', '', '', '', '8.00', '', '54ST', '', '', '', '90', '', '', '', '', '', '', '', '', ''),
(661, 'MADD-00000366-534', 'TEST LUMOX BLIND', 'FLANGE', 'X-LINKING', '', '', '', '', '', '', '', '', '170', '', '210', '34', '', '', '', '', '', '', '', '', ''),
(662, '2011-915', 'Testing Flange 10.55"', 'FLANGE', 'TESTING', 'T2-Q1', 'OK', '2', '', '16/9/2013', '', '12', 'R60', '619.1', '', '', '', '', '', '', '', '', '', '', '', ''),
(663, '2011-915', 'Testing Flange 10.55"', 'FLANGE', 'TESTING', 'T2-R1', 'OK', '2', '', '16/9/2013', '', '12', 'R60', '619.1', '', '', '', '', '', '', '', '', '', '', '', ''),
(664, '2012-371', 'Testing Flange 8" 20000 PSI R49', 'FLANGE', 'TESTING', 'T2-P6', 'OK', '2 SET', '', '16/9/2013', '', '12', 'R49', '393.7', '', '', '', '', '', '', '', '', '', '', '', ''),
(665, '2012-1077', 'TESTING FLANGE FOR X-LINKING 55? TEST', 'FLANGE', 'TESTING', '', '', '', '', '', '', '12', '', '330.2', '', '', '', '', '', '', '', '', '', '', '', ''),
(666, 'MADD-00000366-087', 'TOP HSELL 7.67 INCH', 'SHELL', 'MOUNTING', '', '', '', '', '09/12/2013', '', '', '', '', '152.', '195.0', '150', '', '', '', '', '', '', '', '', ''),
(667, 'MADD-00000365-904', 'TOP SHELL', 'SHELL', 'MOUNTING', '', '', '', '', '17/09/2013', '', '', '', '', '162.', '254.0', '', '', '', '', '', '', '', '', '', ''),
(668, 'MADD-00000365-354', 'Top Shell 11.25"', 'SHELL', 'MOUNTING', '', '', '', '', '10/09/2013', '', '', '', '', '228.', '285.7', '', '', '', '', '', '', '', '', '', ''),
(669, 'MADD-00000366-279', 'TOP SHELL 14.75"', 'SHELL', '', '', '', '', '', '', '', '', '', '', '337.', '374.6', '', '', '', '', '', '', '', '', '', ''),
(670, 'MADD-00000366-068', 'TOP SHELL 15.12"', 'SHELL', 'MOUNTING', '', '', '', '', '', '', '', '', '', '168.', '384.0', '', '', '', '', '', '', '', '', '', ''),
(671, 'MADD-00000365-349', 'Top Shell 5.63"', 'SHELL', 'MOUNTING', '', '', '', '', '10/09/2013', '', '', '', '', '101.', '143.0', '', '', '', '', '', '', '', '', '', ''),
(672, 'MADD-00000366-487', 'TOP SHELL 6 INCH (For 4" Mandrel)', 'SHELL', 'MTG', 'EF', '', '', '', '', '6"', '', '', '', '101.', '152.4', '', '', '', '', '', '', '', '', '', ''),
(673, 'MADD-00000365-351', 'Top Shell 9.75"', 'SHELL', 'MOUNTING', '', '', '', '', '10/09/2013', '', '', '', '', '162.', '247.7', '', '', '', '', '', '', '', '', '', ''),
(674, '2012-284', 'TRI PART COLLAR ?210', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-H5', 'OK', '2', '', '12/12/2012', '', '', '', '', '210', '', '', '', '', '', '', '', '', '', '', ''),
(675, '2012-333', 'TRI PART COLLAR ?240', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-F4', 'OK', '6', '', '26/11/2012', '', '', '', '', '240', '', '', '', '', '', '', '', '', '', '', ''),
(676, '2012-333', 'TRI PART COLLAR ?240', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-H5', 'OK', '2', '', '12/12/2012', '', '', '', '', '240', '', '', '', '', '', '', '', '', '', '', ''),
(677, '2012-110', 'TRI PART COLLAR ?340', 'TRI PARTS COLLAR', '', '', '', '', '', '', '', '', '', '', '340', '', '', '', '', '', '', '', '', '', '', ''),
(678, '2012-1067', 'TRI PART COLLAR ?380', 'TRI PARTS COLLAR', '', '', '', '', '', '', '', '', '', '', '380', '', '', '', '', '', '', '', '', '', '', ''),
(679, 'MADD-00000366-184', 'Tri- Part Collar ?400', 'TRI PARTS COLLAR', 'MOUNTING', '', '', '', '', '', '12.00', '', '', '', '400.', '430.0', '', '', '', '', '', '', '', '', '', ''),
(680, '2011-051', 'TRI PARTS COLLAR', 'TRI PARTS COLLAR', 'EF', 'T2-F4', 'OK', '1', '', '26/11/2012', '', '', '', '', '250', '', '', '', '', '', '', '', '', '', '', ''),
(681, '2012-504', 'TRI PARTS COLLAR ?100', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-F4', 'OK', '4', '', '16/2/2013', '', '', '', '', '100', '', '', '', '', '', '', '', '', '', '', ''),
(682, '2012-082', 'TRI PARTS COLLAR ?130', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-B4', 'OK', '0', '', '02/01/2013', '', '', '', '', '130', '', '', '', '', '', '', '', '', '', '', ''),
(683, '2012-082', 'TRI PARTS COLLAR ?130', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-H5', 'OK', '0', '', '02/01/2013', '', '', '', '', '130', '', '', '', '', '', '', '', '', '', '', ''),
(684, '2012-874', 'TRI PARTS COLLAR ?150', 'TRI PARTS COLLAR', '', '', '', '', '', '', '', '', '', '', '150', '', '', '', '', '', '', '', '', '', '', ''),
(685, '2011-773', 'TRI PARTS COLLAR ?190', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-G5', 'OK', '2', '', '12/05/2012', '', '', '', '', '190', '', '', '', '', '', '', '', '', '', '', ''),
(686, '2011-773', 'TRI PARTS COLLAR ?190', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-H5', 'OK', '2', '', '12/12/2012', '', '', '', '', '190', '', '', '', '', '', '', '', '', '', '', ''),
(687, '2011-550', 'TRI PARTS COLLAR ?200', 'TRI PARTS COLLAR', '', '', '', '', '', '', '', '', '', '', '200', '', '', '', '', '', '', '', '', '', '', ''),
(688, '2011-650', 'TRI PARTS COLLAR ?210', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-G5', 'OK', '2', '', '12/05/2012', '', '', '', '', '210', '', '', '', '', '', '', '', '', '', '', ''),
(689, '2011-756', 'TRI PARTS COLLAR ?250', 'TRI PARTS COLLAR', 'EF', 'T2-G5', 'OK', '2', '', '12/05/2012', '', '', '', '', '250', '', '', '', '', '', '', '', '', '', '', ''),
(690, '2011-756', 'TRI PARTS COLLAR ?250', 'TRI PARTS COLLAR', 'EF', 'T2-H5', 'OK', '2', '', '12/12/2012', '', '', '', '', '250', '', '', '', '', '', '', '', '', '', '', ''),
(691, '2011-147', 'TRI PARTS COLLAR ?270', 'TRI PARTS COLLAR', '', '', '', '', '', '', '', '', '', '', '270', '', '', '', '', '', '', '', '', '', '', ''),
(692, '2012-505', 'TRI PARTS COLLAR ?310', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-F4', 'OK', '3', '', '16/2/2013', '', '', '', '', '310', '', '', '', '', '', '', '', '', '', '', ''),
(693, '2011-338', 'TRI PARTS COLLAR ?330', 'TRI PARTS COLLAR', 'EF', 'T2-F3', 'OK', '1 SET', '', '03/05/2013', '', '', '', '', '330', '', '', '', '', '', '', '', '', '', '', ''),
(694, '2011-338', 'TRI PARTS COLLAR ?330', 'TRI PARTS COLLAR', 'EF', 'T2-F4', 'OK', '1', '', '26/11/2012', '', '', '', '', '330', '', '', '', '', '', '', '', '', '', '', ''),
(695, '2011-338', 'TRI PARTS COLLAR ?330', 'TRI PARTS COLLAR', 'EF', 'T2-G5', 'OK', '1', '', '12/05/2012', '', '', '', '', '330', '', '', '', '', '', '', '', '', '', '', ''),
(696, '2012-417', 'TRI PARTS COLLAR ?345', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-F4', 'OK', '2', '', '26/11/2012', '', '', '', '', '345', '', '', '', '', '', '', '', '', '', '', ''),
(697, '2011-758', 'TRI PARTS COLLAR ?355', 'TRI PARTS COLLAR', 'EF', 'T2-F4', 'OK', '1', '', '26/11/2012', '', '', '', '', '355', '', '', '', '', '', '', '', '', '', '', ''),
(698, '2011-758', 'TRI PARTS COLLAR ?355', 'TRI PARTS COLLAR', 'EF', 'T2-H5', 'OK', '9', '', '12/12/2012', '', '', '', '', '355', '', '', '', '', '', '', '', '', '', '', ''),
(699, '2012-437', 'TRI PARTS COLLAR ?375', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-F3', 'OK', '2', '', '26/11/2012', '', '', '', '', '375', '', '', '', '', '', '', '', '', '', '', ''),
(700, '2012-1067', 'TRI PARTS COLLAR ?380', 'TRI PARTS COLLAR', 'MOUNTING', 'T2-F4', 'OK', '2', '', '13/5/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(701, '2013-021', 'TRI-PART COLLAR ?230', 'TRI PARTS COLLAR', '', '', '', '', '', '', '', '', '', '', '230', '', '', '', '', '', '', '', '', '', '', ''),
(702, 'MADD-00000365-359', 'TRI-PART COLLAR ?260', 'TRI PARTS COLLAR', '', '', '', '', '', '10/09/2013', '', '', '', '', '260.', '', '', '', '', '', '', '', '', '', '', ''),
(703, 'MADD-00000366-500', 'TRI-PART COLLAR ?320', 'TRI PARTS COLLAR', '', '', '', '', '', '', '', '', '', '', '320.', '', '150', '', '', '', '', '', '', '', '', ''),
(704, '2013-022', 'TRI-PART COLLAR ?360', 'TRI PARTS COLLAR', '', '', '', '', '', '', '', '', '', '', '360', '', '', '', '', '', '', '', '', '', '', ''),
(705, '2012-1064', 'TRI-PART COLLAR ?460', 'TRI PARTS COLLAR', '', '', '', '', '', '', '', '', '', '', '460', '', '', '', '', '', '', '', '', '', '', ''),
(706, 'MADD-00000365-864', 'TUBE ?50', 'CANULA PUSHER', 'MOUNTING', '', '', '', '', '', '', '', '', '', '36', '50', '65', '', '', '', '', '', '', '', '', ''),
(707, '', 'TYPE A 46', 'SEAL RING', '', 'T2-A2', 'OK', '1', '', '12/03/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(708, '69307', 'TYPE R R50', 'SEAL RING', '', 'T2-A2', 'OK', '3', '', '12/03/2012', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(709, 'MADD-00000366-313', 'UPPER SHELL 10"', 'SHELL', 'MOUNTING', '', '', '', '', '24/02/2014', '', '', '', '', '228.', '254.0', '', '', '', '', '', '', '', '', '', ''),
(710, 'MADD-00000366-109', 'UPPER SHELL 15.12"', 'SHELL', 'MOUNTING', '', '', '', '', '', '', '', '', '', '337.', '384.0', '', '', '', '', '', '', '', '', '', ''),
(711, '2012-1076', 'UPPER SHELL 15.75"', 'SHELL', 'MOUNTING', '', '', '', '', '', '', '', '', '', '337', '400', '', '', '', '', '', '', '', '', '', ''),
(712, 'MADD-00000366-002', 'UPRIGHT FLANGE', 'EXTRACTOR', 'MOUNTING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(713, '2013-048', 'UPRIGHT FLANGE', 'FLANGE', 'TESTING', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(714, '', 'Vertical bracing adjustable 0.8m to 1.3m', 'BRACING', '', 'T2-M3', 'OK', '7', '', '03/04/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(715, '2011-144', 'WASHER 7.5" - 10"', 'FRONT CANULA JACK', '', '', '', '4', '', '', '', '', '', '', '20.5', '115', '', '', '', '', '', '', '', '', '', ''),
(716, 'MADD-00000365-861', 'WASHER FOR CYLINDER', 'CANULA PUSHER', 'MOUNTING', '', '', '', '', '', '', '', '', '', '34', '115', '10', '', '', '', '', '', '', '', '', ''),
(717, '2011-824', 'WASHER ?115', 'WASHER', 'TESTING', 'T2-K3-1', 'OK', '2', '', '01/02/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(718, '2011-824', 'WASHER ?115', 'WASHER', 'TESTING', 'T2-L3-1', 'OK', '3', '', '01/02/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(719, '2011-321', 'WASHER ?190', 'WASHER', 'X-LINKING', 'T2-K3-2', 'OK', '2', '', '01/02/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(720, '2011-827', 'WASHER ?90', 'WASHER', 'TESTING', 'T2-K3-1', 'OK', '2', '', '01/02/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(721, '2011-827', 'WASHER ?90', 'WASHER', 'TESTING', 'T2-L3-1', 'OK', '3', '', '01/02/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(722, 'MADD-00000365-878', 'Wedge', 'Wedge', 'MOUNTING', '', '', '8', '', '09/02/2013', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(723, 'MADD-00000366-619', 'HALF BENDED STEEL R150 - WITH WINDOW', 'HALF BENDED STEEL', 'X-LINK', '', '', '', '', '', '', '', '', '', '300.', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tool_material`
--

CREATE TABLE IF NOT EXISTS `tool_material` (
  `tm_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_id` int(11) NOT NULL,
  `material_id` int(11) NOT NULL,
  PRIMARY KEY (`tm_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tool_material`
--

INSERT INTO `tool_material` (`tm_id`, `tool_id`, `material_id`) VALUES
(3, 6, 202),
(4, 6, 39),
(5, 1, 39);

-- --------------------------------------------------------

--
-- Table structure for table `tool_measurement`
--

CREATE TABLE IF NOT EXISTS `tool_measurement` (
  `tm_id` int(10) NOT NULL AUTO_INCREMENT,
  `tool_id` int(10) NOT NULL,
  `tm_name` varchar(100) DEFAULT NULL,
  `tm_description` text,
  `tm_conversion_formula` varchar(100) NOT NULL COMMENT 'ex: idnom/25.4',
  PRIMARY KEY (`tm_id`),
  KEY `layer_id` (`tool_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tool_measurement`
--

INSERT INTO `tool_measurement` (`tm_id`, `tool_id`, `tm_name`, `tm_description`, `tm_conversion_formula`) VALUES
(1, 1, 'mandrel_inch', 'mandrel use inch', 'idnom/25.4'),
(2, 5, 'bracket_measurement', NULL, 'idnom');

-- --------------------------------------------------------

--
-- Table structure for table `tool_nominal_type`
--

CREATE TABLE IF NOT EXISTS `tool_nominal_type` (
  `tnt_id` int(11) NOT NULL AUTO_INCREMENT,
  `nt_id` int(11) NOT NULL,
  `tool_id` int(11) NOT NULL,
  `tnt_value` varchar(100) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`tnt_id`),
  KEY `nt_id` (`nt_id`),
  KEY `tool_id` (`tool_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tool_nominal_type`
--

INSERT INTO `tool_nominal_type` (`tnt_id`, `nt_id`, `tool_id`, `tnt_value`, `priority`) VALUES
(7, 9, 6, NULL, 0),
(2, 9, 5, 'X', 0),
(12, 9, 8, NULL, 1),
(4, 10, 1, '300', 2),
(11, 9, 7, NULL, 3),
(6, 9, 3, NULL, 0),
(8, 9, 4, NULL, 0),
(10, 10, 2, NULL, 0),
(13, 15, 8, NULL, 2),
(14, 14, 8, NULL, 3),
(15, 15, 7, NULL, 1),
(16, 14, 7, NULL, 2),
(17, 13, 9, NULL, 0),
(18, 9, 9, NULL, 1),
(19, 13, 7, NULL, 0),
(20, 13, 8, NULL, 0),
(21, 11, 1, NULL, 0),
(22, 12, 1, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tool_rule`
--

CREATE TABLE IF NOT EXISTS `tool_rule` (
  `tool_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL,
  PRIMARY KEY (`tool_rule_id`),
  KEY `tool_id` (`tool_id`,`rule_id`),
  KEY `rule_id` (`rule_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `tool_rule`
--

INSERT INTO `tool_rule` (`tool_rule_id`, `tool_id`, `rule_id`) VALUES
(1, 1, 1),
(3, 3, 3),
(2, 5, 2),
(5, 1, 5),
(12, 1, 12),
(7, 1, 7),
(8, 1, 8),
(9, 7, 9),
(10, 7, 10),
(11, 9, 11),
(13, 2, 13),
(14, 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tool_tool_nominal`
--

CREATE TABLE IF NOT EXISTS `tool_tool_nominal` (
  `ttn_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_id` int(11) NOT NULL,
  `nc_id` int(11) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ttn_id`),
  KEY `layer_id` (`tool_id`,`nc_id`),
  KEY `nc_id` (`nc_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tool_tool_nominal`
--

INSERT INTO `tool_tool_nominal` (`ttn_id`, `tool_id`, `nc_id`, `priority`) VALUES
(1, 4, 5, 0),
(2, 1, 5, 0),
(7, 3, 18, 0),
(8, 2, 22, 0),
(5, 5, 5, 0),
(6, 6, 5, 0),
(9, 7, 14, 0),
(10, 8, 5, 0),
(11, 9, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(2) NOT NULL DEFAULT '2',
  `fullname` varchar(200) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `user_pass` varchar(60) NOT NULL DEFAULT '',
  `user_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_last_login` datetime DEFAULT NULL,
  `magicnum` varchar(225) NOT NULL,
  `email_activation` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`username`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `role_id`, `fullname`, `username`, `user_pass`, `user_date`, `user_modified`, `user_last_login`, `magicnum`, `email_activation`) VALUES
(1, 1, 'Administrator MARS', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2014-06-25 07:44:41', '2014-06-25 07:44:41', '2014-12-09 18:28:03', '5c7a5ae3a37e6ef4ff9ffdff1785ee55', 1),
(2, 2, 'Umar Mukhtar', 'umar', '92deb3f274aaee236194c05729bfa443', '2014-09-09 12:06:13', '2014-09-09 12:06:13', '2014-12-07 18:09:08', '92deb3f274aaee236194c05729bfa443', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
