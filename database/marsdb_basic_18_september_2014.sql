-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2014 at 03:15 AM
-- Server version: 5.5.36
-- PHP Version: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `marsdb`
--

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('13bcba018262044367ddec71f6ba3ee2', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.44 Safari/537.36', 1411002937, 'a:2:{s:9:"user_data";s:0:"";s:16:"flash:new:sucess";b:0;}');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

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
(25, '', '19.22', 13327, '85938.67553', '3.9', 'Sweet', '3.9', 1, '-0.005', '0.010', '3.90', 91, 78033, 6, 'ST15261797', 0, '', '', 14, 'GEX', 780, 778, 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '300.6', '12.00', '', 1, '11.1602', 'MP968', 11800020, 'TP FLEX                   TP26/TP27', ' ', '', '', 'TP', 'TP26', '300.6', '-6.3', '7.5', '324.6', '8.7', '-7.5', '324.6', '8.7', '-7.5', '12.00', '-2.0', '2.0', '0.00', '', '', 0, '0.5', '', '', 0, '-0.5', '16.', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', 2108, '0.0', '0.0', 0, '', '0.0000', '0.0000', '0.0000');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `layer`
--

INSERT INTO `layer` (`layer_id`, `layer_code`, `layer_description`, `machine_code`) VALUES
(1, 'IC', 'Interlocked Carcass', 'SP17'),
(2, 'PS', 'Pressure Sheath', 'SP17');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `layer_tool`
--

INSERT INTO `layer_tool` (`layer_tool_id`, `layer_id`, `tool_id`, `priority`) VALUES
(1, 1, 1, 0);

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
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`material_id`, `material_code`, `type_of_production`, `type_of_production_size`, `code_one`, `code_two`) VALUES
(1, 'MP10', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'AISI 304', 'FE02'),
(2, 'MP4', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'AISI 304', 'FE02'),
(3, 'MP5', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'AISI 304', 'FE02'),
(4, 'MP8', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'AISI 304', 'FE02'),
(5, 'MP9', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'AISI 304', 'FE02'),
(6, 'MP80', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'AISI 304', 'FE02'),
(7, 'MP145', 'STEEL STRIP STAINLESS STEEL', '2.5 x 100', 'AISI 304', 'FE02'),
(8, 'MP723', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'AISI 304', 'FE02'),
(9, 'MP100', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'AISI 304L', 'FE02'),
(10, 'MP105', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'AISI 304L', 'FE02'),
(11, 'MP106', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'AISI 304L', 'FE02'),
(12, 'MP108', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'AISI 304L', 'FE02'),
(13, 'MP438', 'STEEL STRIP STAINLESS STEEL', '2.5 x 100', 'AISI 304L', 'FE02'),
(14, 'MP633', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'AISI 304L', 'FE02'),
(15, 'MP708', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'AISI 304L', 'FE02'),
(16, 'MP119', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'AISI 316L', 'FE02'),
(17, 'MP121', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'AISI 316L', 'FE02'),
(18, 'MP122', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'AISI 316L', 'FE02'),
(19, 'MP123', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'AISI 316L', 'FE02'),
(20, 'MP169', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'AISI 316L', 'FE02'),
(21, 'MP693', 'STEEL STRIP STAINLESS STEEL', '2.5 x 100', 'AISI 316L', 'FE02'),
(22, 'MP91', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'AISI 316L', 'FE02'),
(23, 'MP99', 'STEEL STRIP STAINLESS STEEL', '40.0X 0.8 X 4.0', 'AISI 304L', 'FE02'),
(24, 'MP716', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'AISI 316L', 'FE02'),
(25, 'MP886', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'DUPLEX 2304', 'FE08'),
(26, 'MP887', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'DUPLEX 2304', 'FE08'),
(27, 'MP888', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'DUPLEX 2304', 'FE08'),
(28, 'MP907', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'DUPLEX 2304', 'FE08'),
(29, 'MP910', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'DUPLEX 2304', 'FE08'),
(30, 'MP911', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'DUPLEX 2304', 'FE08'),
(31, 'MP923', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'DUPLEX 2304', 'FE08'),
(32, 'MP930', 'STEEL STRIP STAINLESS STEEL', '2.5 x 10', '0 DUPLEX 2304', 'FE08'),
(33, 'MP950', 'STEEL STRIP STAINLESS STEEL', '0.7 x 28', 'DUPLEX 2304', 'FE08'),
(34, 'MP449', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'DUPLEX 2205', 'FE04'),
(35, 'MP144', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'DUPLEX 2205', 'FE04'),
(36, 'MP180', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'DUPLEX 2205', 'FE04'),
(37, 'MP196', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'DUPLEX 2205', 'FE04'),
(38, 'MP454', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'DUPLEX 2205', 'FE04'),
(39, 'MP460', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'DUPLEX 2205', 'FE04'),
(40, 'MP461', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'DUPLEX 2205', 'FE04'),
(41, 'MP590', 'STEEL STRIP STAINLESS STEEL', '0.7 x 28', 'DUPLEX 2205', 'FE04'),
(42, 'MP680', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'DUPLEX 2205', 'FE04'),
(43, 'MP855', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'DUPLEX 2205', 'FE04'),
(44, 'MP856', 'STEEL STRIP STAINLESS STEEL', '108.0 x 2.7 x 13.5', 'DUPLEX 2206', 'FE04'),
(45, 'MP876', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL),
(46, 'MP159', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL),
(47, 'MP160', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL),
(48, 'MP161', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL),
(49, 'MP162', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL),
(50, 'MP163', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL),
(51, 'MP164', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL),
(52, 'MP165', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL),
(53, 'MP166', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL),
(54, 'MP136', 'STEEL STRIP .ACIER', NULL, NULL, NULL),
(55, 'MP197', 'STEEL STRIP .ACIER', NULL, NULL, NULL),
(56, 'MP107', 'STEEL STRIP .ACIER', NULL, NULL, NULL),
(57, 'MPX300', 'STEEL STRIP .ACIER', NULL, NULL, NULL),
(58, 'MP227', 'FLAT WIRE', NULL, NULL, NULL),
(59, 'MP321', 'FLAT WIRE', NULL, NULL, NULL),
(60, 'MP524', 'FLAT WIRE', NULL, NULL, NULL),
(61, 'MP636', 'FLAT WIRE', NULL, NULL, NULL),
(62, 'MP319', 'FLAT WIRE', NULL, NULL, NULL),
(63, 'MP207', 'FLAT WIRE', NULL, NULL, NULL),
(64, 'MP206', 'FLAT WIRE', NULL, NULL, NULL),
(65, 'MP410', 'FLAT WIRE', NULL, NULL, NULL),
(66, 'MP323', 'FLAT WIRE', NULL, NULL, NULL),
(67, 'MP411', 'FLAT WIRE', NULL, NULL, NULL),
(68, 'MP368', 'FLAT WIRE', NULL, NULL, NULL),
(69, 'MP211', 'FLAT WIRE', NULL, NULL, NULL),
(70, 'MP208', 'FLAT WIRE', NULL, NULL, NULL),
(71, 'MP794', 'FLAT WIRE', NULL, NULL, NULL),
(72, 'MP525', 'FLAT WIRE', NULL, NULL, NULL),
(73, 'MP413', 'FLAT WIRE', NULL, NULL, NULL),
(74, 'MP331', 'FLAT WIRE', NULL, NULL, NULL),
(75, 'MP652', 'FLAT WIRE', NULL, NULL, NULL),
(76, 'MP581', 'FLAT WIRE', NULL, NULL, NULL),
(77, 'MP318', 'FLAT WIRE', NULL, NULL, NULL),
(78, 'MP526', 'FLAT WIRE', NULL, NULL, NULL),
(79, 'MP317', 'FLAT WIRE', NULL, NULL, NULL),
(80, 'MP552', 'FLAT WIRE', NULL, NULL, NULL),
(81, 'MP474', 'FLAT WIRE', NULL, NULL, NULL),
(82, 'MP212', 'FLAT WIRE', NULL, NULL, NULL),
(83, 'MP205', 'ZETA WIRE', NULL, NULL, NULL),
(84, 'MP234', 'ZETA WIRE', NULL, NULL, NULL),
(85, 'MP154', 'ZETA WIRE', NULL, NULL, NULL),
(86, 'MP514', 'ZETA WIRE', NULL, NULL, NULL),
(87, 'MP316', 'ZETA WIRE', NULL, NULL, NULL),
(88, 'MP243', 'ZETA WIRE', NULL, NULL, NULL),
(89, 'MP241', 'ZETA WIRE', NULL, NULL, NULL),
(90, 'MP242', 'ZETA WIRE', NULL, NULL, NULL),
(91, 'MP457', 'ZETA WIRE', NULL, NULL, NULL),
(92, 'MP582', 'ZETA WIRE', NULL, NULL, NULL),
(93, 'MPX283', 'FLAT WIRE', NULL, NULL, NULL),
(94, 'MP152', 'ZETA WIRE', NULL, NULL, NULL),
(95, 'MP326', 'ZETA WIRE', NULL, NULL, NULL),
(96, 'MP407', 'ZETA WIRE', NULL, NULL, NULL),
(97, 'MP746', 'ZETA WIRE', NULL, NULL, NULL),
(98, 'MP778', 'FLAT WIRE', NULL, NULL, NULL),
(99, 'MP833', 'FLAT WIRE', NULL, NULL, NULL),
(100, 'MP779', 'FLAT WIRE', NULL, NULL, NULL),
(101, 'MP737', 'FLAT WIRE', NULL, NULL, NULL),
(102, 'MP733', 'FLAT WIRE', NULL, NULL, NULL),
(103, 'MP735', 'FLAT WIRE', NULL, NULL, NULL),
(104, 'MP791', 'ZETA WIRE', NULL, NULL, NULL),
(105, 'MP734', 'ZETA WIRE', NULL, NULL, NULL),
(106, 'MP780', 'ZETA WIRE', NULL, NULL, NULL),
(107, 'MP939', 'FLAT WIRE', NULL, NULL, NULL),
(108, 'MP991', 'FLAT WIRE', NULL, NULL, NULL),
(109, 'MP989', 'FLAT WIRE', NULL, NULL, NULL),
(110, 'MP966', 'FLAT WIRE', NULL, NULL, NULL),
(111, 'MP940', 'FLAT WIRE', NULL, NULL, NULL),
(112, 'MP941', 'FLAT WIRE', NULL, NULL, NULL),
(113, 'MP999', 'FLAT WIRE', NULL, NULL, NULL),
(114, 'MP943', 'FLAT WIRE', NULL, NULL, NULL),
(115, 'MP944', 'FLAT WIRE', NULL, NULL, NULL),
(116, 'MP946', 'ZETA WIRE', NULL, NULL, NULL),
(117, 'MP947', 'ZETA WIRE', NULL, NULL, NULL),
(118, 'MP948', 'ZETA WIRE', NULL, NULL, NULL),
(119, 'MP186', 'ZETA WIRE', NULL, NULL, NULL),
(120, 'MP467', 'FLAT WIRE', NULL, NULL, NULL),
(121, 'MP477', 'FLAT WIRE', NULL, NULL, NULL),
(122, 'MP478', 'FLAT WIRE', NULL, NULL, NULL),
(123, 'MP479', 'FLAT WIRE', NULL, NULL, NULL),
(124, 'MP691', 'FLAT WIRE', NULL, NULL, NULL),
(125, 'MP480', 'FLAT WIRE', NULL, NULL, NULL),
(126, 'MP481', 'FLAT WIRE', NULL, NULL, NULL),
(127, 'MP482', 'FLAT WIRE', NULL, NULL, NULL),
(128, 'MP483', 'FLAT WIRE', NULL, NULL, NULL),
(129, 'MP36', 'FLAT WIRE', NULL, NULL, NULL),
(130, 'MP38', 'FLAT WIRE', NULL, NULL, NULL),
(131, 'MP484', 'FLAT WIRE', NULL, NULL, NULL),
(132, 'MP98', 'FLAT WIRE', NULL, NULL, NULL),
(133, 'MP39', 'FLAT WIRE', NULL, NULL, NULL),
(134, 'MP127', 'FLAT WIRE', NULL, NULL, NULL),
(135, 'MP485', 'FLAT WIRE', NULL, NULL, NULL),
(136, 'MP129', 'FLAT WIRE', NULL, NULL, NULL),
(137, 'MP646', 'FLAT WIRE', NULL, NULL, NULL),
(138, 'MP647', 'FLAT WIRE', NULL, NULL, NULL),
(139, 'MP37', 'FLAT WIRE', NULL, NULL, NULL),
(140, 'MP131', 'FLAT WIRE', NULL, NULL, NULL),
(141, 'MP90', 'FLAT WIRE', NULL, NULL, NULL),
(142, 'MP685', 'FLAT WIRE', NULL, NULL, NULL),
(143, 'MP486', 'FLAT WIRE', NULL, NULL, NULL),
(144, 'MP487', 'FLAT WIRE', NULL, NULL, NULL),
(145, 'MP476', 'FLAT WIRE', NULL, NULL, NULL),
(146, 'MP613', 'FLAT WIRE', NULL, NULL, NULL),
(147, 'MP260', 'FLAT WIRE', NULL, NULL, NULL),
(148, 'MP191', 'FLAT WIRE', NULL, NULL, NULL),
(149, 'MP981', 'FLAT WIRE', NULL, NULL, NULL),
(150, 'MP366', 'FLAT WIRE', NULL, NULL, NULL),
(151, 'MP841', 'FLAT WIRE', NULL, NULL, NULL),
(152, 'MP472', 'FLAT WIRE', NULL, NULL, NULL),
(153, 'MP550', 'FLAT WIRE', NULL, NULL, NULL),
(154, 'MP365', 'FLAT WIRE', NULL, NULL, NULL),
(155, 'MP471', 'FLAT WIRE', NULL, NULL, NULL),
(156, 'MP744', 'FLAT WIRE', NULL, NULL, NULL),
(157, 'MP364', 'TERPHANE', NULL, NULL, NULL),
(158, 'MP240', 'KEVLAR STRIP', NULL, NULL, NULL),
(159, 'MP238', 'KEVLAR STRIP', NULL, NULL, NULL),
(160, 'MP797', 'KEVLAR STRIP', NULL, NULL, NULL),
(161, 'MP798', 'KEVLAR STRIP', NULL, NULL, NULL),
(162, 'MP239', 'KEVLAR STRIP', NULL, NULL, NULL),
(163, 'MP799', 'KEVLAR STRIP', NULL, NULL, NULL),
(164, 'MP237', 'KEVLAR STRIP', NULL, NULL, NULL),
(165, 'MP800', 'KEVLAR STRIP', NULL, NULL, NULL),
(166, 'MP391', 'BANDE TISSEE', NULL, NULL, NULL),
(167, 'MP332', 'BANDE TISSEE', NULL, NULL, NULL),
(168, 'MP905', 'TECHNORA STRIP', NULL, NULL, NULL),
(169, 'MP866', 'ESTER TAPE', NULL, NULL, NULL),
(170, 'MP142', 'ESTER TAPE', NULL, NULL, NULL),
(171, 'MP141', 'ESTER TAPE', NULL, NULL, NULL),
(172, 'MP349', 'ESTER TAPE', NULL, NULL, NULL),
(173, 'MP689', 'ADHESIVE TAPE', NULL, NULL, NULL),
(174, 'MP688', 'ADHESIVE TAPE', NULL, NULL, NULL),
(175, 'MP687', 'ADHESIVE TAPE', NULL, NULL, NULL),
(176, 'MP174', 'ADHESIVE TAPE', NULL, NULL, NULL),
(177, 'MP173', 'ADHESIVE TAPE', NULL, NULL, NULL),
(178, 'MP146', 'ADHESIVE TAPE', NULL, NULL, NULL),
(179, 'MP175', 'ADHESIVE TAPE', NULL, NULL, NULL),
(180, 'MP250', 'KEVLAR STRIP', NULL, NULL, NULL),
(181, 'MP773', 'KEVLAR STRIP', NULL, NULL, NULL),
(182, 'MP898', 'KEVLAR STRIP', NULL, NULL, NULL),
(183, 'MP324', 'TECHNORA STRIP', NULL, NULL, NULL),
(184, 'MP967', 'TECHNORA STRIP', NULL, NULL, NULL),
(185, 'MP983', 'ANTI WEAR TAPE', NULL, NULL, NULL),
(186, 'MP977', 'ANTI WEAR TAPE', NULL, NULL, NULL),
(187, 'MP972', 'ANTI WEAR TAPE', NULL, NULL, NULL),
(188, 'MP984', 'ANTI WEAR TAPE', NULL, NULL, NULL),
(189, 'MP978', 'ANTI WEAR TAPE', NULL, NULL, NULL),
(190, 'MP973', 'ANTI WEAR TAPE', NULL, NULL, NULL),
(191, 'MP985', 'ANTI WEAR TAPE', NULL, NULL, NULL),
(192, 'MP979', 'ANTI WEAR TAPE', NULL, NULL, NULL),
(193, 'MP974', 'ANTI WEAR TAPE', NULL, NULL, NULL),
(194, 'MP279', 'ANTI WEAR TAPE', NULL, NULL, NULL),
(195, 'MP248', 'ANTI WEAR TAPE', NULL, NULL, NULL),
(196, 'MP225', 'COFOAM INSULATION STRIP', NULL, NULL, NULL),
(197, 'MP229', 'COFOAM INSULATION STRIP', NULL, NULL, NULL),
(198, 'MP901', 'WOVEN STRIP KEVLAR', NULL, NULL, NULL),
(199, 'MP549', 'COFOAM INSULATION STRIP', NULL, NULL, NULL),
(200, 'MP57', 'RILSAN BESNO', NULL, NULL, NULL),
(201, 'MP62', 'PE HD NOIR', NULL, NULL, NULL),
(202, 'MP125', 'PVDF COFLON STA', NULL, NULL, NULL),
(203, 'MP213', 'COFLON XD TP29', NULL, NULL, NULL),
(204, 'MP223', 'RILSAN BESNO', NULL, NULL, NULL),
(205, 'MP406', 'PE  CROSSFLEX', NULL, NULL, NULL),
(206, 'MP406', 'PE  CROSSFLEX', NULL, NULL, NULL),
(207, 'MP1001', 'PE  CROSSFLEX', NULL, NULL, NULL),
(208, 'MP1002', 'PE  CROSSFLEX', NULL, NULL, NULL),
(209, 'MP64', 'PE  MEDIUM DENSITY TRANSLUCENT', NULL, NULL, NULL),
(210, 'MP606', 'RILSAN BESN  NOIR', NULL, NULL, NULL),
(211, 'MP595', 'PE  MEDIUM DENSITY YELLOW', NULL, NULL, NULL),
(212, 'MP961', 'PE  MEDIUM DENSITY BLACK', NULL, NULL, NULL),
(213, 'MP987', 'PIPELON', NULL, NULL, NULL),
(214, 'MP933', 'ELASTOMER THERMOPLASTIC', NULL, NULL, NULL),
(215, 'MP170', 'HDFLEX', NULL, NULL, NULL),
(216, 'MP170', 'HDFLEX', NULL, NULL, NULL),
(217, 'MP968', 'TPFLEX', NULL, NULL, NULL),
(218, 'MP968', 'TPFLEX', NULL, NULL, NULL),
(219, 'MP934', 'MAIN MIX', NULL, NULL, NULL),
(220, 'MP1020', 'PRESSURE SHEATH POLYAMIDE', NULL, NULL, NULL),
(221, 'MP1030', 'FLAT WIRES', NULL, NULL, NULL),
(222, 'MP1013', 'TECHNORA STRIP', NULL, NULL, NULL),
(223, 'MP1016', 'STRIP', NULL, NULL, NULL),
(224, 'MP1015', 'TECHNORA', NULL, NULL, NULL),
(225, 'MP885', 'GAMMAFLEX', NULL, NULL, NULL),
(226, 'MP980', 'GAMMAFLEX', NULL, NULL, NULL),
(227, 'MP171', 'MAIN MIX', NULL, NULL, NULL),
(228, 'MP599', 'FLAT WIRE', NULL, NULL, NULL),
(229, 'MP814', 'FIRST ARMOUR LAY.FMS', NULL, NULL, NULL),
(230, 'MP138', 'INTERLOCKED CARCAS', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nominal_column`
--

CREATE TABLE IF NOT EXISTS `nominal_column` (
  `nc_id` int(11) NOT NULL AUTO_INCREMENT,
  `nc_name` varchar(100) NOT NULL,
  `nc_description` text,
  PRIMARY KEY (`nc_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `param`
--

INSERT INTO `param` (`param_id`, `tool_id`, `param_tol_min`, `param_tol_plus`, `param_tool_code`, `param_number`, `param_code`) VALUES
(1, 1, '-0.2', '0', 'MANDREL', 1, 'ØD'),
(2, 1, NULL, NULL, 'MANDREL', 2, 'ØB'),
(3, 1, '-0.2', '0', 'MANDREL', 3, 'ØC'),
(4, 1, '-0.3', '3', 'MANDREL', 4, 'E'),
(5, 1, NULL, NULL, 'MANDREL', 5, 'R'),
(6, 1, NULL, NULL, 'MANDREL', 6, 'ØF'),
(7, 1, NULL, NULL, 'MANDREL', 7, 'K'),
(8, 1, NULL, NULL, 'MANDREL', 8, 'P'),
(9, 1, NULL, NULL, 'MANDREL', 9, 'H'),
(10, 1, '-5', '5', 'MANDREL', 10, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `param_input_options`
--

CREATE TABLE IF NOT EXISTS `param_input_options` (
  `pio_id` int(11) NOT NULL AUTO_INCREMENT,
  `pio_code` varchar(100) NOT NULL,
  `pio_description` text NOT NULL,
  PRIMARY KEY (`pio_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `selected_layer_id`, `selected_tool_id`, `idnom`, `structure_number`, `project_name`, `project_number`, `section_number`, `plf_length`, `overlength`, `mass`, `transaction_id`) VALUES
(1, 1, 1, '152.4', 'ST15261797', 'Test One', '1', '1', 1, 1, NULL, '1411002921');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

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
  `var1` int(11) NOT NULL,
  `var2` int(11) NOT NULL,
  `cond` varchar(50) NOT NULL DEFAULT 'VAR1>X<=VAR2',
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`rule_id`, `rule_number`, `var1`, `var2`, `cond`) VALUES
(1, 'mandrel_1', 0, 3, '>  <='),
(2, 'mandrel_2', 3, 5, '>  <='),
(3, 'mandrel_3', 5, 7, '>  <='),
(4, 'mandrel_4', 7, 12, '>  <='),
(5, 'mandrel_5', 12, 15, '>  <='),
(6, 'mandrel_6', 15, 99, '>  <=');

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
  `rp_post_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rp_id`),
  KEY `rule_id` (`rule_id`,`param_id`),
  KEY `pio_id` (`pio_id`),
  KEY `param_id` (`param_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `rule_param`
--

INSERT INTO `rule_param` (`rp_id`, `rule_id`, `param_id`, `pio_id`, `rp_pre_value`, `rp_post_value`) VALUES
(1, 1, 1, 1, '0', '0'),
(2, 1, 2, 1, '0', '0'),
(3, 1, 3, 1, '0', '0'),
(4, 1, 4, 1, '0', '0'),
(5, 1, 5, 1, '0', '0'),
(6, 1, 6, 1, '0', '0'),
(7, 1, 7, 1, '0', '0'),
(8, 1, 8, 1, '0', '0'),
(9, 1, 9, 1, '0', '0'),
(10, 1, 10, 1, '0', '0'),
(11, 2, 1, 1, '0', '0'),
(12, 2, 2, 1, '0', '0'),
(13, 2, 3, 1, '0', '0'),
(14, 2, 4, 1, '0', '0'),
(15, 2, 5, 1, '0', '0'),
(16, 2, 6, 1, '0', '0'),
(17, 2, 7, 1, '0', '0'),
(18, 2, 8, 1, '0', '0'),
(19, 2, 9, 1, '0', '0'),
(20, 2, 10, 1, '0', '0'),
(21, 3, 1, 1, '0', '0'),
(22, 3, 2, 1, '0', '0'),
(23, 3, 3, 1, '0', '0'),
(24, 3, 4, 1, '0', '0'),
(25, 3, 5, 1, '0', '0'),
(26, 3, 6, 1, '0', '0'),
(27, 3, 7, 1, '0', '0'),
(28, 3, 8, 1, '0', '0'),
(29, 3, 9, 1, '0', '0'),
(30, 3, 10, 1, '0', '0'),
(31, 4, 1, 1, '0', '0'),
(32, 4, 2, 1, '0', '0'),
(33, 4, 3, 1, '0', '0'),
(34, 4, 4, 1, '0', '0'),
(35, 4, 5, 1, '0', '0'),
(36, 4, 6, 1, '0', '0'),
(37, 4, 7, 1, '0', '0'),
(38, 4, 8, 1, '0', '0'),
(39, 4, 9, 1, '0', '0'),
(40, 4, 10, 1, '0', '0'),
(41, 5, 1, 1, '0', '0'),
(42, 5, 2, 1, '0', '0'),
(43, 5, 3, 1, '0', '0'),
(44, 5, 4, 1, '0', '0'),
(45, 5, 5, 1, '0', '0'),
(46, 5, 6, 1, '0', '0'),
(47, 5, 7, 1, '0', '0'),
(48, 5, 8, 1, '0', '0'),
(49, 5, 9, 1, '0', '0'),
(50, 5, 10, 1, '0', '0'),
(51, 6, 1, 1, '0', '0'),
(52, 6, 2, 1, '0', '0'),
(53, 6, 3, 1, '0', '0'),
(54, 6, 4, 1, '0', '0'),
(55, 6, 5, 1, '0', '0'),
(56, 6, 6, 1, '0', '0'),
(57, 6, 7, 1, '0', '0'),
(58, 6, 8, 1, '0', '0'),
(59, 6, 9, 1, '0', '0'),
(60, 6, 10, 1, '0', '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tool`
--

CREATE TABLE IF NOT EXISTS `tool` (
  `tool_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_code` varchar(50) NOT NULL,
  `tool_description` text NOT NULL,
  `nominal_type` varchar(50) NOT NULL,
  `file_url` text,
  PRIMARY KEY (`tool_id`),
  KEY `tool_code` (`tool_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tool`
--

INSERT INTO `tool` (`tool_id`, `tool_code`, `tool_description`, `nominal_type`, `file_url`) VALUES
(1, 'MANDREL', 'Mandrel', 'OD Nominal', '0c8f5-mandrel_1.png'),
(2, 'INTERNAL CALIPER', 'Internal Caliper', 'OD Nominal', NULL),
(3, 'EXTERNAL CALIPER', 'External Caliper', 'OD Nominal', NULL),
(4, 'ENDCAP', 'End Cap', 'ID Nominal', NULL),
(5, 'BRACKET', 'OD Nominal\r\n', 'OD Nominal', NULL);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tool_measurement`
--

INSERT INTO `tool_measurement` (`tm_id`, `tool_id`, `tm_name`, `tm_description`, `tm_conversion_formula`) VALUES
(1, 1, 'mandrel_inch', 'mandrel use inch', 'idnom/25.4');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tool_rule`
--

INSERT INTO `tool_rule` (`tool_rule_id`, `tool_id`, `rule_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tool_tool_nominal`
--

INSERT INTO `tool_tool_nominal` (`ttn_id`, `tool_id`, `nc_id`, `priority`) VALUES
(1, 4, 5, 0),
(2, 1, 5, 0),
(3, 3, 5, 0),
(4, 2, 5, 0),
(5, 5, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(2) NOT NULL DEFAULT '2',
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

INSERT INTO `users` (`user_id`, `role_id`, `username`, `user_pass`, `user_date`, `user_modified`, `user_last_login`, `magicnum`, `email_activation`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2014-06-25 07:44:41', '2014-06-25 07:44:41', '2014-09-18 03:13:37', '5c7a5ae3a37e6ef4ff9ffdff1785ee55', 1),
(2, 2, 'umar', '92deb3f274aaee236194c05729bfa443', '2014-09-09 12:06:13', '2014-09-09 12:06:13', '2014-09-18 03:15:11', '92deb3f274aaee236194c05729bfa443', 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `layer_tool`
--
ALTER TABLE `layer_tool`
  ADD CONSTRAINT `layer_tool_ibfk_1` FOREIGN KEY (`layer_id`) REFERENCES `layer` (`layer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `layer_tool_ibfk_2` FOREIGN KEY (`tool_id`) REFERENCES `tool` (`tool_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rule_param`
--
ALTER TABLE `rule_param`
  ADD CONSTRAINT `rule_param_ibfk_1` FOREIGN KEY (`rule_id`) REFERENCES `rule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rule_param_ibfk_3` FOREIGN KEY (`pio_id`) REFERENCES `param_input_options` (`pio_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tool_measurement`
--
ALTER TABLE `tool_measurement`
  ADD CONSTRAINT `tool_measurement_ibfk_1` FOREIGN KEY (`tool_id`) REFERENCES `tool` (`tool_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tool_rule`
--
ALTER TABLE `tool_rule`
  ADD CONSTRAINT `tool_rule_ibfk_1` FOREIGN KEY (`tool_id`) REFERENCES `tool` (`tool_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tool_rule_ibfk_2` FOREIGN KEY (`rule_id`) REFERENCES `rule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tool_tool_nominal`
--
ALTER TABLE `tool_tool_nominal`
  ADD CONSTRAINT `tool_tool_nominal_ibfk_1` FOREIGN KEY (`nc_id`) REFERENCES `nominal_column` (`nc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tool_tool_nominal_ibfk_2` FOREIGN KEY (`tool_id`) REFERENCES `tool` (`tool_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
