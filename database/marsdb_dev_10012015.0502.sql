-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2015 at 09:02 PM
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
-- Table structure for table `admissible_pressure`
--

CREATE TABLE IF NOT EXISTS `admissible_pressure` (
  `ap_id` int(11) NOT NULL AUTO_INCREMENT,
  `ap_value` varchar(200) DEFAULT '0',
  `cwt_id` varchar(200) NOT NULL,
  `cid_id` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`ap_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admissible_pressure`
--

INSERT INTO `admissible_pressure` (`ap_id`, `ap_value`, `cwt_id`, `cid_id`, `category_id`) VALUES
(1, '23', '2.0 x 80', '6', 1),
(2, '240', '0.8 x 40', '5', 1),
(3, '12', '0.8 x 40', '6', 1),
(4, '11.23', '0.8 x 40', '6', 2);

-- --------------------------------------------------------

--
-- Table structure for table `carcass_internal_diameter`
--

CREATE TABLE IF NOT EXISTS `carcass_internal_diameter` (
  `cid_id` int(11) NOT NULL AUTO_INCREMENT,
  `cid_name` varchar(200) NOT NULL,
  PRIMARY KEY (`cid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `carcass_internal_diameter`
--

INSERT INTO `carcass_internal_diameter` (`cid_id`, `cid_name`) VALUES
(1, '2'),
(2, '3'),
(3, '4'),
(4, '5'),
(5, '6'),
(6, '7'),
(7, '8'),
(8, '9'),
(9, '10');

-- --------------------------------------------------------

--
-- Table structure for table `carcass_width_th`
--

CREATE TABLE IF NOT EXISTS `carcass_width_th` (
  `cwt_id` int(11) NOT NULL AUTO_INCREMENT,
  `cwt_width` varchar(200) NOT NULL,
  `cwt_th` varchar(200) NOT NULL,
  PRIMARY KEY (`cwt_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `carcass_width_th`
--

INSERT INTO `carcass_width_th` (`cwt_id`, `cwt_width`, `cwt_th`) VALUES
(1, '120', '3'),
(2, '106', '2.7'),
(6, '100', '2.5');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(200) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Category 1'),
(2, 'Category 2'),
(3, 'Category 3');

-- --------------------------------------------------------

--
-- Table structure for table `category_grade_sta`
--

CREATE TABLE IF NOT EXISTS `category_grade_sta` (
  `cgs_id` int(11) NOT NULL AUTO_INCREMENT,
  `cgs_grade` varchar(200) NOT NULL,
  `cgs_sta` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`cgs_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `category_grade_sta`
--

INSERT INTO `category_grade_sta` (`cgs_id`, `cgs_grade`, `cgs_sta`, `category_id`) VALUES
(1, 'Carbon Steel', 'FE 05', 1);

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
('64d46d86eb0e793dcf5eb1617a91c834', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.95 Safari/537.36', 1420837309, 'a:3:{s:9:"user_data";s:0:"";s:16:"flash:old:sucess";b:0;s:16:"flash:new:sucess";b:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `imported_project`
--

CREATE TABLE IF NOT EXISTS `imported_project` (
  `imported_project_id` int(11) NOT NULL AUTO_INCREMENT,
  `APPLICATION` varchar(200) DEFAULT NULL,
  `LINEIC_VOLUME_INTERNAL` varchar(200) DEFAULT NULL,
  `MAX_TEST_PRESSURE` varchar(200) DEFAULT NULL,
  `BENDING_STIFFNESS` varchar(200) DEFAULT NULL,
  `FAT_DRUM_DIAMETER` varchar(200) DEFAULT NULL,
  `SERVICE` varchar(200) DEFAULT NULL,
  `ST_STORAGE_DRUM_DIAMETER` varchar(200) DEFAULT NULL,
  `WATERTIGHTNESS` varchar(200) DEFAULT NULL,
  `MANUFACTURING_ELONGATION_MIN` varchar(200) DEFAULT NULL,
  `MANUFACTURING_ELONGATION_MAX` varchar(200) DEFAULT NULL,
  `ENG_STORAGE_DRUM_DIAMETER` varchar(200) DEFAULT NULL,
  `DOMAIN_ID` varchar(200) DEFAULT NULL,
  `AFFAIRE` varchar(200) DEFAULT NULL,
  `DIAINTERST` varchar(200) DEFAULT NULL,
  `STRUCTURE` varchar(200) DEFAULT NULL,
  `STRUCTURE_REVISION` varchar(200) DEFAULT NULL,
  `CDC` varchar(200) DEFAULT NULL,
  `CDC_STRUCTURE_REVISION` varchar(200) DEFAULT NULL,
  `NOLIGNE` varchar(200) DEFAULT NULL,
  `COUCHE` varchar(200) DEFAULT NULL,
  `CODEOPERATION` varchar(200) DEFAULT NULL,
  `CODEPREPARATION` varchar(200) DEFAULT NULL,
  `OPERATION` varchar(200) DEFAULT NULL,
  `LAYER_NAME` varchar(200) DEFAULT NULL,
  `LAYER_TYPE_DESCRIPTION` varchar(200) DEFAULT NULL,
  `LAYER_VARIETY_DESCRIPTION` varchar(200) DEFAULT NULL,
  `DIAINTER` varchar(200) DEFAULT NULL,
  `EP` varchar(200) DEFAULT NULL,
  `ANGLE` varchar(200) DEFAULT NULL,
  `NOMBREFIL` varchar(200) DEFAULT NULL,
  `MASSECOUCHE` varchar(200) DEFAULT NULL,
  `CODEMP` varchar(200) DEFAULT NULL,
  `CODEMP_IFS` varchar(200) DEFAULT NULL,
  `DESCRIPTIONMP` varchar(200) DEFAULT NULL,
  `DESCRIPTIONMPN_2` varchar(200) DEFAULT NULL,
  `EPMP` varchar(200) DEFAULT NULL,
  `LARGMP` varchar(200) DEFAULT NULL,
  `CODEPRODUITGENERIQUE` varchar(200) DEFAULT NULL,
  `CODEPRODUITUSUEL` varchar(200) DEFAULT NULL,
  `DIAINTERCOUCHE` varchar(200) DEFAULT NULL,
  `DIAINTERCOUCHETOLINF` varchar(200) DEFAULT NULL,
  `DIAINTERCOUCHETOLSUP` varchar(200) DEFAULT NULL,
  `DIAEXTERCOUCHE` varchar(200) DEFAULT NULL,
  `DIAEXTERCOUCHETOLSUP` varchar(200) DEFAULT NULL,
  `DIAEXTERCOUCHETOLINF` varchar(200) DEFAULT NULL,
  `DIAEXTERNONRETREINT` varchar(200) DEFAULT NULL,
  `DIAEXTERTOLSUPNONRETREINT` varchar(200) DEFAULT NULL,
  `DIAEXTERTOLINFNONRETREINT` varchar(200) DEFAULT NULL,
  `EPCOUCHE` varchar(200) DEFAULT NULL,
  `EPCOUCHETOLINF` varchar(200) DEFAULT NULL,
  `EPCOUCHETOLSUP` varchar(200) DEFAULT NULL,
  `ARMANGLE` varchar(200) DEFAULT NULL,
  `DIAEXTERCLI` varchar(200) DEFAULT NULL,
  `LGCLI` varchar(200) DEFAULT NULL,
  `CLITOLINF` varchar(200) DEFAULT NULL,
  `CLITOLSUP` varchar(200) DEFAULT NULL,
  `DIAINTERCLE` varchar(200) DEFAULT NULL,
  `LGCLE` varchar(200) DEFAULT NULL,
  `CLETOLSUP` varchar(200) DEFAULT NULL,
  `CLETOLINF` varchar(200) DEFAULT NULL,
  `EPMAXICOUCHE` varchar(200) DEFAULT NULL,
  `ARMPASRATIO` varchar(200) DEFAULT NULL,
  `NOMAFFAIRE` varchar(200) DEFAULT NULL,
  `CHAMP` varchar(200) DEFAULT NULL,
  `INGENIEURAFF` varchar(200) DEFAULT NULL,
  `DATELIVRAISON` varchar(200) DEFAULT NULL,
  `MBR` varchar(200) DEFAULT NULL,
  `PASNOMINAL` varchar(200) DEFAULT NULL,
  `TOLPASNOMINAL` varchar(200) DEFAULT NULL,
  `NBTOURCONTROLEPAS` varchar(200) DEFAULT NULL,
  `COMMENTAIRES` varchar(200) DEFAULT NULL,
  `MAN_LINEIC_OBJ_MPITCH` varchar(200) DEFAULT NULL,
  `AVG_PITCH_MAN` varchar(200) DEFAULT NULL,
  `AVG_PITCH_ENG` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`imported_project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=346 ;

--
-- Dumping data for table `imported_project`
--

INSERT INTO `imported_project` (`imported_project_id`, `APPLICATION`, `LINEIC_VOLUME_INTERNAL`, `MAX_TEST_PRESSURE`, `BENDING_STIFFNESS`, `FAT_DRUM_DIAMETER`, `SERVICE`, `ST_STORAGE_DRUM_DIAMETER`, `WATERTIGHTNESS`, `MANUFACTURING_ELONGATION_MIN`, `MANUFACTURING_ELONGATION_MAX`, `ENG_STORAGE_DRUM_DIAMETER`, `DOMAIN_ID`, `AFFAIRE`, `DIAINTERST`, `STRUCTURE`, `STRUCTURE_REVISION`, `CDC`, `CDC_STRUCTURE_REVISION`, `NOLIGNE`, `COUCHE`, `CODEOPERATION`, `CODEPREPARATION`, `OPERATION`, `LAYER_NAME`, `LAYER_TYPE_DESCRIPTION`, `LAYER_VARIETY_DESCRIPTION`, `DIAINTER`, `EP`, `ANGLE`, `NOMBREFIL`, `MASSECOUCHE`, `CODEMP`, `CODEMP_IFS`, `DESCRIPTIONMP`, `DESCRIPTIONMPN_2`, `EPMP`, `LARGMP`, `CODEPRODUITGENERIQUE`, `CODEPRODUITUSUEL`, `DIAINTERCOUCHE`, `DIAINTERCOUCHETOLINF`, `DIAINTERCOUCHETOLSUP`, `DIAEXTERCOUCHE`, `DIAEXTERCOUCHETOLSUP`, `DIAEXTERCOUCHETOLINF`, `DIAEXTERNONRETREINT`, `DIAEXTERTOLSUPNONRETREINT`, `DIAEXTERTOLINFNONRETREINT`, `EPCOUCHE`, `EPCOUCHETOLINF`, `EPCOUCHETOLSUP`, `ARMANGLE`, `DIAEXTERCLI`, `LGCLI`, `CLITOLINF`, `CLITOLSUP`, `DIAINTERCLE`, `LGCLE`, `CLETOLSUP`, `CLETOLINF`, `EPMAXICOUCHE`, `ARMPASRATIO`, `NOMAFFAIRE`, `CHAMP`, `INGENIEURAFF`, `DATELIVRAISON`, `MBR`, `PASNOMINAL`, `TOLPASNOMINAL`, `NBTOURCONTROLEPAS`, `COMMENTAIRES`, `MAN_LINEIC_OBJ_MPITCH`, `AVG_PITCH_MAN`, `AVG_PITCH_ENG`) VALUES
(1, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '0.000', '0.000', '1.94', '91', '78033', '6', 'ST15261797', '0', '', '', '1', 'PC', '60', '0', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '152.4', '5.00', '-88.1', '1', '11.6987', 'MP169', '10100600', 'Feuillard inox 1,0* 48 AISI 316L FE02 EN 1.4404 ( ex MP169)', '', '1', '48', 'FI', 'FE02', '152.4', '-1.5', '1.5', '162.4', '1.6', '-1.6', '162.4', '1.6', '-1.6', '5.00', '0.0', '0.0', '-88.15', '150.', '152.', '0', '0.5', '164', '152.', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', '\n\rJeffa PCRM7 ou Wynn''Draw sp30 ( LP851 )', '15.9350', '15.9350', '15.9350'),
(2, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '2', '0.000', '0.000', '2.08', '91', '78033', '6', 'ST15261797', '0', '', '', '2', 'GP', '140', '0', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '162.4', '5.40', '', '1', '2.8726', 'MP406', '12000040', 'PE  CROSSFLEX                  TP10', ' ', '', '', 'PL', 'TP10', '162.4', '-1.6', '1.6', '173.2', '2.1', '-2.1', '173.2', '2.1', '-2.1', '5.40', '-0.8', '0.8', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '7', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', '', '0.0000', '0.0000', '0.0000'),
(3, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.34', '91', '78033', '6', 'ST15261797', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '173.2', '8.00', '-87.4', '2', '30.1319', 'MP234', '10800080', 'Fil zeta 8 - FM35 - FI09  KISWIRE  ( ex MP234)', '', '8', '0', 'FZ', 'FI09', '173.2', '-2.1', '2.1', '189.2', '2.3', '-2.3', '189.2', '2.3', '-2.3', '8.00', '0.0', '0.1', '-87.45', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '253.0', '2.0', '20', '', '25.3000', '25.3000', '25.3000'),
(4, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.71', '91', '78033', '6', 'ST15261797', '0', '', '', '4', 'F', '340', '337', 'FRETTAGE', 'FLAT SPIRALLING', 'FRETTE', 'PLATS HOMOGENS', '189.2', '5.00', '87.49', '2', '20.0891', 'MP581', '10404110', 'Fil plat 12 * 5 - FM35 - FI09 avec courant de Foucault  ( ex MP581)', '', '5', '12', 'FP', 'FI09', '189.2', '-2.3', '2.3', '199.2', '2.5', '-2.5', '199.2', '2.5', '-2.5', '5.00', '-0.1', '0.1', '87.49', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '267.0', '3.0', '20', '', '26.7600', '26.7000', '26.7600'),
(5, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.70', '91', '78033', '6', 'ST15261797', '0', '', '', '5', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '199.2', '1.50', '', '1', '0.9005', 'MP978', '12600600', 'BANDE A-U  75*1,5MM  PIPELON   BF01', ' ', '', '', 'RU', 'BF01', '199.2', '-2.5', '2.5', '202.2', '2.7', '-2.7', '202.2', '2.7', '-2.7', '1.50', '-0.1', '0.1', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', 'Lubrification : VETO86 \n\r', '173.1851', '173.1851', '173.1851'),
(6, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.69', '91', '78033', '6', 'ST15261797', '0', '', '', '6', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '202.2', '5.00', '35', '42', '22.5676', 'MP581', '10404110', 'Fil plat 12 * 5 - FM35 - FI09 avec courant de Foucault  ( ex MP581)', '', '5', '12', 'FP', 'FI09', '202.2', '-2.7', '2.7', '212.2', '2.9', '-2.9', '212.2', '2.9', '-2.9', '5.00', '-0.1', '0.1', '35.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '1.064', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '929.6', '13.9', '1', 'Lubrification : VETO86 \n\r', '929.6358', '929.6000', '929.6358'),
(7, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.69', '91', '78033', '6', 'ST15261797', '0', '', '', '7', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '212.2', '1.50', '', '1', '0.9588', 'MP978', '12600600', 'BANDE A-U  75*1,5MM  PIPELON   BF01', ' ', '', '', 'RU', 'BF01', '212.2', '-2.9', '2.9', '215.2', '3.1', '-3.1', '215.2', '3.1', '-3.1', '1.50', '-0.1', '0.1', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', 'Lubrification : VETO86 \n\r', '172.4195', '172.4195', '172.4195'),
(8, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.68', '91', '78033', '6', 'ST15261797', '0', '', '', '8', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '215.2', '5.00', '-34.9', '45', '24.1769', 'MP581', '10404110', 'Fil plat 12 * 5 - FM35 - FI09 avec courant de Foucault  ( ex MP581)', '', '5', '12', 'FP', 'FI09', '215.2', '-3.1', '3.1', '225.2', '3.3', '-3.3', '225.2', '3.3', '-3.3', '5.00', '-0.1', '0.1', '-34.99', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '989.6', '14.8', '1', 'Lubrification : VETO86 \n\r', '989.5973', '989.6000', '989.5973'),
(9, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.67', '91', '78033', '6', 'ST15261797', '0', '', '', '9', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '225.2', '0.25', '', '1', '0.1348', 'MP146', '12500010', 'RUBAN ADHESIF 145  MM * 3000 M BA07', 'TSP 8983P - (3M)', '', '', 'RU', 'BA07', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', 'Lubrification : VETO86 \n\r', '137.5212', '0.0000', '0.0000'),
(10, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.67', '91', '78033', '6', 'ST15261797', '0', '', '', '9', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '225.7', '0.25', '', '1', '0.1351', 'MP146', '12500010', 'RUBAN ADHESIF 145  MM * 3000 M BA07', 'TSP 8983P - (3M)', '', '', 'RU', 'BA07', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', 'Lubrification : VETO86 \n\r', '137.5097', '0.0000', '0.0000'),
(11, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.67', '91', '78033', '6', 'ST15261797', '0', '', '', '9', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '226.2', '0.25', '', '1', '0.1354', 'MP146', '12500010', 'RUBAN ADHESIF 145  MM * 3000 M BA07', 'TSP 8983P - (3M)', '', '', 'RU', 'BA07', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', 'Lubrification : VETO86 \n\r', '137.4984', '0.0000', '0.0000'),
(12, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.67', '91', '78033', '6', 'ST15261797', '0', '', '', '9', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '226.7', '0.50', '', '1', '0.1271', 'MP240', '12600110', 'BANDE TISSEE KEVLAR R=230 DAN- BA01', '/REF.9081 CHOMARAT LA:130MM/ 24GR/M', '', '', 'RU', 'BA01', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', 'Lubrification : VETO86 \n\r', '134.8437', '0.0000', '0.0000'),
(13, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.67', '91', '78033', '6', 'ST15261797', '0', '', '', '9', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '227.7', '0.50', '', '1', '0.1277', 'MP240', '12600110', 'BANDE TISSEE KEVLAR R=230 DAN- BA01', '/REF.9081 CHOMARAT LA:130MM/ 24GR/M', '', '', 'RU', 'BA01', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', 'Lubrification : VETO86 \n\r', '134.8227', '0.0000', '0.0000'),
(14, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.67', '91', '78033', '6', 'ST15261797', '0', '', '', '9', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '228.7', '0.40', '', '1', '0.1063', 'MP141', '12600010', 'BANDE TISSEE  150  MM * 3000 M BA04', 'POLYESTER', '', '', 'RU', 'BA04', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', 'Lubrification : VETO86 \n\r', '132.1739', '0.0000', '0.0000'),
(15, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '2.67', '91', '78033', '6', 'ST15261797', '0', '', '', '9', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '229.5', '0.40', '', '1', '0.1067', 'MP141', '12600010', 'BANDE TISSEE  150  MM * 3000 M BA04', 'POLYESTER', '', '', 'RU', 'BA04', '225.2', '-3.3', '3.3', '230.3', '3.3', '-3.3', '230.3', '3.3', '-3.3', '2.55', '0.0', '0.0', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', 'Lubrification : VETO86 \n\r', '132.1584', '0.0000', '0.0000'),
(16, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '1', '-0.005', '0.015', '3.05', '91', '78033', '6', 'ST15261797', '0', '', '', '10', 'GSA', '540', '538', 'GAINAGE SUR ARMAGE', 'OVER ARMOUR LAYER SHEATH', 'INTERNAL SHEATH', 'INTERMEDIATE SHEATH', '230.3', '12.00', '', '1', '8.6504', 'MP968', '11800020', 'TP FLEX                   TP26/TP27', ' ', '', '', 'TP', 'TP26', '230.3', '-3.3', '3.3', '254.3', '4.5', '-4.5', '254.3', '4.5', '-4.5', '12.00', '-1.7', '1.7', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '15.', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', '', '0.0000', '0.0000', '0.0000'),
(17, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '3.03', '91', '78033', '6', 'ST15261797', '0', '', '', '11', 'FM1', '580', '577', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'ISOLATION', 'ISOLATION', '254.3', '5.50', '-82.5', '1', '2.2868', 'MP225', '12800040', 'Bande mousse COFOAM L:50 E:5,5 MO01 Densit?=0.54 g/ml TYPE PVC-C SOVEPLAST ( ex MP225)', '', '5.', '50', 'BI', 'MO01', '254.3', '-4.5', '4.5', '276.3', '6.0', '-5.4', '276.3', '6.0', '-5.4', '11.00', '-0.5', '0.8', '-82.54', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '320.0', '5.0', '6', '', '106.9064', '0.0000', '0.0000'),
(18, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '3.03', '91', '78033', '6', 'ST15261797', '0', '', '', '11', 'FM1', '580', '577', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'ISOLATION', 'ISOLATION', '265.3', '5.50', '-82.8', '1', '2.3837', 'MP225', '12800040', 'Bande mousse COFOAM L:50 E:5,5 MO01 Densit?=0.54 g/ml TYPE PVC-C SOVEPLAST ( ex MP225)', '', '5.', '50', 'BI', 'MO01', '254.3', '-4.5', '4.5', '276.3', '6.0', '-5.4', '276.3', '6.0', '-5.4', '11.00', '-0.5', '0.8', '-82.84', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '320.0', '5.0', '6', '', '106.8334', '0.0000', '0.0000'),
(19, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '3.01', '91', '78033', '6', 'ST15261797', '0', '', '', '12', 'FM2', '660', '657', 'FRETTAGE MOUSSE PASSAGE 2', 'INSULATION FOAM (2nd)', 'ISOLATION', 'ISOLATION', '276.3', '5.50', '83.12', '1', '2.4805', 'MP225', '12800040', 'Bande mousse COFOAM L:50 E:5,5 MO01 Densit?=0.54 g/ml TYPE PVC-C SOVEPLAST ( ex MP225)', '', '5.', '50', 'BI', 'MO01', '276.3', '-5.4', '6.0', '298.3', '7.5', '-6.3', '298.3', '7.5', '-6.3', '11.00', '-0.5', '0.8', '83.12', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '320.0', '5.0', '6', '', '106.7689', '0.0000', '0.0000'),
(20, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '3.01', '91', '78033', '6', 'ST15261797', '0', '', '', '12', 'FM2', '660', '657', 'FRETTAGE MOUSSE PASSAGE 2', 'INSULATION FOAM (2nd)', 'ISOLATION', 'ISOLATION', '287.3', '5.50', '83.38', '1', '2.5773', 'MP225', '12800040', 'Bande mousse COFOAM L:50 E:5,5 MO01 Densit?=0.54 g/ml TYPE PVC-C SOVEPLAST ( ex MP225)', '', '5.', '50', 'BI', 'MO01', '276.3', '-5.4', '6.0', '298.3', '7.5', '-6.3', '298.3', '7.5', '-6.3', '11.00', '-0.5', '0.8', '83.38', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '320.0', '5.0', '6', '', '106.7117', '0.0000', '0.0000'),
(21, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '3.01', '91', '78033', '6', 'ST15261797', '0', '', '', '13', 'FM2', '660', '0', 'FRETTAGE MOUSSE PASSAGE 2', 'INSULATION FOAM (2nd)', 'FABRIC TAPE', 'FABRIC TAPE', '298.3', '0.10', '', '1', '0.1514', 'MP364', '12600250', 'TERPHANE 150 MM* 1500 M  EP:0,1 MM', 'MANDRIN  76MM', '', '', 'RU', 'ADHE', '298.3', '-6.3', '7.5', '300.6', '7.5', '-6.3', '300.6', '7.5', '-6.3', '1.15', '0.0', '0.0', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', '', '131.2683', '0.0000', '0.0000'),
(22, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '3.01', '91', '78033', '6', 'ST15261797', '0', '', '', '13', 'FM2', '660', '0', 'FRETTAGE MOUSSE PASSAGE 2', 'INSULATION FOAM (2nd)', 'FABRIC TAPE', 'FABRIC TAPE', '298.5', '0.25', '', '1', '0.1787', 'MP146', '12500010', 'RUBAN ADHESIF 145  MM * 3000 M BA07', 'TSP 8983P - (3M)', '', '', 'RU', 'BA07', '298.3', '-6.3', '7.5', '300.6', '7.5', '-6.3', '300.6', '7.5', '-6.3', '1.15', '0.0', '0.0', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', '', '136.4186', '0.0000', '0.0000'),
(23, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '3.01', '91', '78033', '6', 'ST15261797', '0', '', '', '13', 'FM2', '660', '0', 'FRETTAGE MOUSSE PASSAGE 2', 'INSULATION FOAM (2nd)', 'FABRIC TAPE', 'FABRIC TAPE', '299.0', '0.40', '', '1', '0.1389', 'MP141', '12600010', 'BANDE TISSEE  150  MM * 3000 M BA04', 'POLYESTER', '', '', 'RU', 'BA04', '298.3', '-6.3', '7.5', '300.6', '7.5', '-6.3', '300.6', '7.5', '-6.3', '1.15', '0.0', '0.0', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', '', '131.2597', '0.0000', '0.0000'),
(24, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '0', '-0.005', '0.015', '3.01', '91', '78033', '6', 'ST15261797', '0', '', '', '13', 'FM2', '660', '0', 'FRETTAGE MOUSSE PASSAGE 2', 'INSULATION FOAM (2nd)', 'FABRIC TAPE', 'FABRIC TAPE', '299.8', '0.40', '', '1', '0.1393', 'MP141', '12600010', 'BANDE TISSEE  150  MM * 3000 M BA04', 'POLYESTER', '', '', 'RU', 'BA04', '298.3', '-6.3', '7.5', '300.6', '7.5', '-6.3', '300.6', '7.5', '-6.3', '1.15', '0.0', '0.0', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', '', '131.2529', '0.0000', '0.0000'),
(25, '', '19.22', '13327', '85938.67553', '3.9', 'Sweet', '3.9', '1', '-0.005', '0.010', '3.90', '91', '78033', '6', 'ST15261797', '0', '', '', '14', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '300.6', '12.00', '', '1', '11.1602', 'MP968', '11800020', 'TP FLEX                   TP26/TP27', ' ', '', '', 'TP', 'TP26', '300.6', '-6.3', '7.5', '324.6', '8.7', '-7.5', '324.6', '8.7', '-7.5', '12.00', '-2.0', '2.0', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '16.', '', 'PETRONAS SEPAT', '', 'EXPLOITATION', '', '2108', '0.0', '0.0', '0', '', '0.0000', '0.0000', '0.0000'),
(26, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '0.000', '0.000', '1.62', '91', '78389', '5', 'ST12740400', '0', '', '', '1', 'PC', '60', '0', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '127.0', '4.00', '-88.0', '1', '7.2212', 'MP460', '10101710', 'Feuillard inox 0,8x40 duplex FE04 EN 1.4462/ UNS S31803 (MP460)', '', '0.', '40', 'FI', 'FE04', '127.0', '-1.3', '1.3', '135.0', '1.4', '-1.4', '135.0', '1.4', '-1.4', '4.00', '0.0', '0.0', '-88.01', '125.', '127', '0', '0.5', '136', '127', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', 'Jeffa PCRM7 ou Wynn Draw sp30 ( LP851 )', '14.3250', '14.3250', '14.3250'),
(27, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '2', '0.000', '0.000', '2.01', '91', '78389', '5', 'ST12740400', '0', '', '', '2', 'GP', '140', '0', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '135.0', '8.10', '', '1', '6.4618', 'MP125', '11900010', 'PVDF TP06 amendement S (MP125)', '', '', '', 'FF', 'TP06', '135.0', '-1.4', '1.4', '151.2', '2.2', '-2.2', '151.2', '2.2', '-2.2', '8.10', '-1.2', '1.2', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '10.', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', '', '0.0000', '0.0000', '0.0000'),
(28, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.11', '91', '78389', '5', 'ST12740400', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '151.2', '8.00', '-87.1', '2', '26.5821', 'MP326', '10800090', 'Fil zeta 8 - FM35 - FI11 KISWIRE (MP326) Qualification en cours', '', '8', '0', 'FZ', 'FI11', '151.2', '-2.2', '2.2', '167.2', '2.4', '-2.4', '167.2', '2.4', '-2.4', '8.00', '0.0', '0.1', '-87.10', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '253.0', '2.0', '20', '', '25.3000', '25.3000', '25.3000'),
(29, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.66', '91', '78389', '5', 'ST12740400', '0', '', '', '4', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '167.2', '4.00', '-45', '30', '15.0814', 'MP646', '10404240', 'Fil plat 12x4 - FI41 avec courant de Foucault (MP646)', '', '4', '12', 'FP', 'FI41', '167.2', '-2.4', '2.4', '175.2', '2.6', '-2.6', '175.2', '2.6', '-2.6', '4.00', '-0.1', '0.1', '-45.00', '', '', '0', '0.5', '', '', '0', '-0.5', '', '1.062', 'STONE ENERGY A', '', 'TBD', '', '1685', '537.8', '8.0', '1', 'Lubrification : VETO86', '537.8407', '537.8000', '537.8407'),
(30, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.65', '91', '78389', '5', 'ST12740400', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '175.2', '4.00', '44.57', '32', '15.9680', 'MP646', '10404240', 'Fil plat 12x4 - FI41 avec courant de Foucault (MP646)', '', '4', '12', 'FP', 'FI41', '175.2', '-2.6', '2.6', '183.2', '2.8', '-2.8', '183.2', '2.8', '-2.8', '4.00', '-0.1', '0.1', '44.57', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '571.5', '8.5', '1', 'Lubrification : VETO86', '571.4557', '571.5000', '571.4557'),
(31, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.64', '91', '78389', '5', 'ST12740400', '0', '', '', '6', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '183.2', '0.15', '-76.4', '1', '0.1097', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '183.2', '-2.8', '2.8', '187.3', '2.8', '-2.8', '187.3', '2.8', '-2.8', '2.05', '0.0', '0.0', '-76.45', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', 'Lubrification : VETO86', '138.8678', '0.0000', '0.0000'),
(32, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.64', '91', '78389', '5', 'ST12740400', '0', '', '', '6', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '183.5', '0.55', '-76.7', '1', '0.1405', 'MP101', '12600700', 'Bande tissee 130mm TECHNORA T200 BA10 R=360daN TRAME VERRE (MP1013)', '', '', '', 'RU', 'BA10', '183.2', '-2.8', '2.8', '187.3', '2.8', '-2.8', '187.3', '2.8', '-2.8', '2.05', '0.0', '0.0', '-76.75', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', 'Lubrification : VETO86', '136.1222', '0.0000', '0.0000'),
(33, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.64', '91', '78389', '5', 'ST12740400', '0', '', '', '6', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '184.6', '0.55', '76.83', '1', '0.1414', 'MP101', '12600700', 'Bande tissee 130mm TECHNORA T200 BA10 R=360daN TRAME VERRE (MP1013)', '', '', '', 'RU', 'BA10', '183.2', '-2.8', '2.8', '187.3', '2.8', '-2.8', '187.3', '2.8', '-2.8', '2.05', '0.0', '0.0', '76.83', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', 'Lubrification : VETO86', '136.0776', '0.0000', '0.0000'),
(34, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.64', '91', '78389', '5', 'ST12740400', '0', '', '', '6', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '185.7', '0.40', '77.15', '1', '0.0863', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '183.2', '-2.8', '2.8', '187.3', '2.8', '-2.8', '187.3', '2.8', '-2.8', '2.05', '0.0', '0.0', '77.15', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', 'Lubrification : VETO86', '133.3380', '0.0000', '0.0000'),
(35, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.64', '91', '78389', '5', 'ST12740400', '0', '', '', '6', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '186.5', '0.40', '77.21', '1', '0.0867', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '183.2', '-2.8', '2.8', '187.3', '2.8', '-2.8', '187.3', '2.8', '-2.8', '2.05', '0.0', '0.0', '77.21', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', 'Lubrification : VETO86', '133.3084', '0.0000', '0.0000'),
(36, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '1', '-0.009', '0.013', '2.63', '91', '78389', '5', 'ST12740400', '0', '', '', '7', 'GSA', '540', '538', 'GAINAGE SUR ARMAGE', 'OVER ARMOUR LAYER SHEATH', 'INTERNAL SHEATH', 'INTERMEDIATE SHEATH', '187.3', '5.40', '', '1', '3.0958', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '187.3', '-2.8', '2.8', '198.1', '3.3', '-3.3', '198.1', '3.3', '-3.3', '5.40', '-0.6', '0.6', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '7', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', '', '0.0000', '0.0000', '0.0000'),
(37, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.59', '91', '78389', '5', 'ST12740400', '0', '', '', '8', 'FM1', '580', '577', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'ISOLATION', 'ISOLATION', '198.1', '11.00', '-80.7', '1', '4.5946', 'MP229', '12800050', 'Bande mousse 50x11mm COFOAM MO03 Type PC.415 pds:380g/m (MP229)', '', '11', '50', 'BI', 'MO03', '198.1', '-3.3', '3.3', '242.1', '6.3', '-5.1', '242.1', '6.3', '-5.1', '22.00', '-0.9', '1.5', '-80.71', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '321.0', '5.0', '6', '', '107.4091', '0.0000', '0.0000'),
(38, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.59', '91', '78389', '5', 'ST12740400', '0', '', '', '8', 'FM1', '580', '577', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'ISOLATION', 'ISOLATION', '220.1', '11.00', '-81.6', '1', '5.0780', 'MP229', '12800050', 'Bande mousse 50x11mm COFOAM MO03 Type PC.415 pds:380g/m (MP229)', '', '11', '50', 'BI', 'MO03', '198.1', '-3.3', '3.3', '242.1', '6.3', '-5.1', '242.1', '6.3', '-5.1', '22.00', '-0.9', '1.5', '-81.60', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '321.0', '5.0', '6', '', '107.1494', '0.0000', '0.0000'),
(39, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.59', '91', '78389', '5', 'ST12740400', '0', '', '', '9', 'FM1', '580', '0', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '242.1', '0.10', '80.16', '1', '0.1229', 'MP364', '12600250', 'Terphane 150mmx1500m EP:0,1mm Mandrin:76mm (MP364)', '', '', '', 'RU', 'N.A.', '242.1', '-5.1', '6.3', '244.5', '6.3', '-5.1', '244.5', '6.3', '-5.1', '1.20', '0.0', '0.0', '80.16', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', '', '131.9399', '0.0000', '0.0000'),
(40, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.59', '91', '78389', '5', 'ST12740400', '0', '', '', '9', 'FM1', '580', '0', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '242.3', '0.15', '79.79', '1', '0.1450', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '242.1', '-5.1', '6.3', '244.5', '6.3', '-5.1', '244.5', '6.3', '-5.1', '1.20', '0.0', '0.0', '79.79', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', '', '137.1717', '0.0000', '0.0000'),
(41, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.59', '91', '78389', '5', 'ST12740400', '0', '', '', '9', 'FM1', '580', '0', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '242.6', '0.15', '-79.8', '1', '0.1452', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '242.1', '-5.1', '6.3', '244.5', '6.3', '-5.1', '244.5', '6.3', '-5.1', '1.20', '0.0', '0.0', '-79.80', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', '', '137.1663', '0.0000', '0.0000'),
(42, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.59', '91', '78389', '5', 'ST12740400', '0', '', '', '9', 'FM1', '580', '0', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '242.9', '0.40', '-80.2', '1', '0.1129', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '242.1', '-5.1', '6.3', '244.5', '6.3', '-5.1', '244.5', '6.3', '-5.1', '1.20', '0.0', '0.0', '-80.21', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', '', '131.9221', '0.0000', '0.0000'),
(43, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '0', '-0.009', '0.013', '2.59', '91', '78389', '5', 'ST12740400', '0', '', '', '9', 'FM1', '580', '0', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '243.7', '0.40', '-80.2', '1', '0.1133', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '242.1', '-5.1', '6.3', '244.5', '6.3', '-5.1', '244.5', '6.3', '-5.1', '1.20', '0.0', '0.0', '-80.24', '', '', '0', '0.5', '', '', '0', '-0.5', '', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', '', '131.9092', '0.0000', '0.0000'),
(44, '', '13.39', '15994', '32464.53837', '3.1', 'Sweet', '3.1', '1', '-0.009', '0.008', '3.12', '91', '78389', '5', 'ST12740400', '0', '', '', '10', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '244.5', '7.50', '', '1', '5.6229', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '244.5', '-5.1', '6.3', '259.5', '7.1', '-5.9', '259.5', '7.1', '-5.9', '7.50', '-1.1', '1.1', '0.00', '', '', '0', '0.5', '', '', '0', '-0.5', '9.8', '', 'STONE ENERGY A', '', 'TBD', '', '1685', '0.0', '0.0', '0', '', '0.0000', '0.0000', '0.0000'),
(45, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '1', '0', '.015', '4', '91', '78061', '9.5', 'ST24171184', '0', '', '', '7', 'GEX', '780', '000', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '312.2', '8.1', '', '1', '7.6616', 'MP595', '12000050', 'PE MD jaune TP14 GI-GEX - ASTM1248-89/TY:II/CL:B/CAT:5/GR:P34 (MP595)', '', '', '', 'PL', 'TP14', '312.2', '-3.8', '3.8', '328.4', '4.6', '-4.6', '328.4', '4.6', '-4.6', '8.1', '-1.2', '1.2', '0', '', '', '0', '.5', '', '', '0', '-.5', '10.9', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', '', '0', '0', '0'),
(46, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '1', '0', '.015', '4', '91', '78061', '9.5', 'ST24171184', '0', '', '', '7', 'GEX', '780', '000', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '312.2', '8.1', '', '1', '7.6616', 'MP595', '12000050', 'PE MD jaune TP14 GI-GEX - ASTM1248-89/TY:II/CL:B/CAT:5/GR:P34 (MP595)', '', '', '', 'PL', 'TP14', '312.2', '-3.8', '3.8', '328.4', '4.6', '-4.6', '328.4', '4.6', '-4.6', '8.1', '-1.2', '1.2', '0', '', '', '0', '.5', '', '', '0', '-.5', '10.9', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', '', '0', '0', '0'),
(47, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '2', '0', '0', '3.36', '91', '78061', '9.5', 'ST24171184', '0', '', '', '2', 'GP', '140', '138', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '266.3', '7', '', '1', '6.976', 'MP57', '12200010', 'Rilsan besno P40 TL+ TP01 (MP57)', '', '', '', 'PA', 'TP01', '266.3', '-2.7', '2.7', '280.3', '3.4', '-3.4', '280.3', '3.4', '-3.4', '7', '-1.1', '1.1', '0', '', '', '0', '.5', '', '', '0', '-.5', '9.5', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', '', '0', '0', '0'),
(48, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '2', '0', '0', '3.36', '91', '78061', '9.5', 'ST24171184', '0', '', '', '2', 'GP', '140', '138', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '266.3', '7', '', '1', '6.976', 'MP57', '12200010', 'Rilsan besno P40 TL+ TP01 (MP57)', '', '', '', 'PA', 'TP01', '266.3', '-2.7', '2.7', '280.3', '3.4', '-3.4', '280.3', '3.4', '-3.4', '7', '-1.1', '1.1', '0', '', '', '0', '.5', '', '', '0', '-.5', '9.5', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', '', '0', '0', '0'),
(49, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.39', '91', '78061', '9.5', 'ST24171184', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '302.3', '3', '31', '65', '20.6084', 'MP485', '10401150', 'Fil plat 12x3 - FI41 avec courant de Foucault (MP485)', '', '3', '12', 'FP', 'FI41', '302.3', '-3.7', '3.7', '308.3', '3.8', '-3.8', '308.3', '3.8', '-3.8', '3', '-.1', '.1', '31', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '1596.3', '23.9', '1', 'Lubrification : VETO86 \n\r', '1596.2574', '1596.3', '1596.2574'),
(50, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.39', '91', '78061', '9.5', 'ST24171184', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '302.3', '3', '31', '65', '20.6084', 'MP485', '10401150', 'Fil plat 12x3 - FI41 avec courant de Foucault (MP485)', '', '3', '12', 'FP', 'FI41', '302.3', '-3.7', '3.7', '308.3', '3.8', '-3.8', '308.3', '3.8', '-3.8', '3', '-.1', '.1', '31', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '1596.3', '23.9', '1', 'Lubrification : VETO86 \n\r', '1596.2574', '1596.3', '1596.2574'),
(51, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.39', '91', '78061', '9.5', 'ST24171184', '0', '', '', '4', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '296.3', '3', '-31', '64', '20.2914', 'MP485', '10401150', 'Fil plat 12x3 - FI41 avec courant de Foucault (MP485)', '', '3', '12', 'FP', 'FI41', '296.3', '-3.6', '3.6', '302.3', '3.7', '-3.7', '302.3', '3.7', '-3.7', '3', '-.1', '.1', '-31', '', '', '0', '.5', '', '', '0', '-.5', '', '1.02', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '1564.9', '23.4', '1', 'Lubrification : VETO86 \n\r', '1564.8865', '1564.9', '1564.8865'),
(52, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.39', '91', '78061', '9.5', 'ST24171184', '0', '', '', '4', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '296.3', '3', '-31', '64', '20.2914', 'MP485', '10401150', 'Fil plat 12x3 - FI41 avec courant de Foucault (MP485)', '', '3', '12', 'FP', 'FI41', '296.3', '-3.6', '3.6', '302.3', '3.7', '-3.7', '302.3', '3.7', '-3.7', '3', '-.1', '.1', '-31', '', '', '0', '.5', '', '', '0', '-.5', '', '1.02', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '1564.9', '23.4', '1', 'Lubrification : VETO86 \n\r', '1564.8865', '1564.9', '1564.8865'),
(53, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '0', '3.12', '91', '78061', '9.5', 'ST24171184', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '241.3', '12.5', '-87.67', '1', '48.3204', 'MP438', '10101570', 'Feuillard inox 2,5x100 AISI 304L FE02 EN 1.4307 (MP438)', '', '2.5', '100', 'FI', 'FE02', '241.3', '-2.4', '2.4', '266.3', '2.7', '-2.7', '266.3', '2.7', '-2.7', '12.5', '0', '0', '-87.67', '238.9', '200', '0', '.5', '269', '200', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '32.41', '32.41', '32.41'),
(54, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '0', '3.12', '91', '78061', '9.5', 'ST24171184', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '241.3', '12.5', '-87.67', '1', '48.3204', 'MP438', '10101570', 'Feuillard inox 2,5x100 AISI 304L FE02 EN 1.4307 (MP438)', '', '2.5', '100', 'FI', 'FE02', '241.3', '-2.4', '2.4', '266.3', '2.7', '-2.7', '266.3', '2.7', '-2.7', '12.5', '0', '0', '-87.67', '238.9', '200', '0', '.5', '269', '200', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '32.41', '32.41', '32.41'),
(55, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4', '91', '78061', '9.5', 'ST24171184', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '280.3', '8', '-88.39', '2', '47.8938', 'MP326', '10800090', 'Fil zeta 8 - FM35 - FI11 KISWIRE (MP326) Qualification en cours', '', '8', '0', 'FZ', 'FI11', '280.3', '-3.4', '3.4', '296.3', '3.6', '-3.6', '296.3', '3.6', '-3.6', '8', '0', '.1', '-88.39', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '252', '2', '20', '', '25.2', '25.2', '25.2'),
(56, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4', '91', '78061', '9.5', 'ST24171184', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '280.3', '8', '-88.39', '2', '47.8938', 'MP326', '10800090', 'Fil zeta 8 - FM35 - FI11 KISWIRE (MP326) Qualification en cours', '', '8', '0', 'FZ', 'FI11', '280.3', '-3.4', '3.4', '296.3', '3.6', '-3.6', '296.3', '3.6', '-3.6', '8', '0', '.1', '-88.39', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '252', '2', '20', '', '25.2', '25.2', '25.2'),
(57, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.38', '91', '78061', '9.5', 'ST24171184', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '309.6', '.5', '82.18', '1', '.3309', 'MP239', '12600100', 'Bande tissee 130mm KEVLAR 29 BA01 R=500daN Ref:9083 CHOMARAT pds:44g/m (MP239)', '', '', '', 'RU', 'BA01', '308.3', '-3.8', '3.8', '312.2', '3.8', '-3.8', '312.2', '3.8', '-3.8', '1.95', '0', '0', '82.18', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.7428', '0', '0'),
(58, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.38', '91', '78061', '9.5', 'ST24171184', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '309.6', '.5', '82.18', '1', '.3309', 'MP239', '12600100', 'Bande tissee 130mm KEVLAR 29 BA01 R=500daN Ref:9083 CHOMARAT pds:44g/m (MP239)', '', '', '', 'RU', 'BA01', '308.3', '-3.8', '3.8', '312.2', '3.8', '-3.8', '312.2', '3.8', '-3.8', '1.95', '0', '0', '82.18', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.7428', '0', '0'),
(59, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.38', '91', '78061', '9.5', 'ST24171184', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '308.6', '.5', '-82.16', '1', '.3298', 'MP239', '12600100', 'Bande tissee 130mm KEVLAR 29 BA01 R=500daN Ref:9083 CHOMARAT pds:44g/m (MP239)', '', '', '', 'RU', 'BA01', '308.3', '-3.8', '3.8', '312.2', '3.8', '-3.8', '312.2', '3.8', '-3.8', '1.95', '0', '0', '-82.16', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.7509', '0', '0'),
(60, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.38', '91', '78061', '9.5', 'ST24171184', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '308.6', '.5', '-82.16', '1', '.3298', 'MP239', '12600100', 'Bande tissee 130mm KEVLAR 29 BA01 R=500daN Ref:9083 CHOMARAT pds:44g/m (MP239)', '', '', '', 'RU', 'BA01', '308.3', '-3.8', '3.8', '312.2', '3.8', '-3.8', '312.2', '3.8', '-3.8', '1.95', '0', '0', '-82.16', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.7509', '0', '0'),
(61, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.38', '91', '78061', '9.5', 'ST24171184', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '311.4', '.4', '82.37', '1', '.1447', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '308.3', '-3.8', '3.8', '312.2', '3.8', '-3.8', '312.2', '3.8', '-3.8', '1.95', '0', '0', '82.37', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.1602', '0', '0'),
(62, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.38', '91', '78061', '9.5', 'ST24171184', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '311.4', '.4', '82.37', '1', '.1447', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '308.3', '-3.8', '3.8', '312.2', '3.8', '-3.8', '312.2', '3.8', '-3.8', '1.95', '0', '0', '82.37', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.1602', '0', '0'),
(63, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.38', '91', '78061', '9.5', 'ST24171184', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '310.6', '.4', '82.35', '1', '.1443', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '308.3', '-3.8', '3.8', '312.2', '3.8', '-3.8', '312.2', '3.8', '-3.8', '1.95', '0', '0', '82.35', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.1663', '0', '0'),
(64, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.38', '91', '78061', '9.5', 'ST24171184', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '310.6', '.4', '82.35', '1', '.1443', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '308.3', '-3.8', '3.8', '312.2', '3.8', '-3.8', '312.2', '3.8', '-3.8', '1.95', '0', '0', '82.35', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.1663', '0', '0'),
(65, '', '8.69', '11472', '4285.2614782004', '2.06', 'Sweet', '2.11', '3', '0', '.015', '1.9', '91', '78060', '4', 'ST10170426', '0', '', '', '7', 'GEX', '780', '000', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '142.1', '3.8', '', '1', '1.6373', 'MP595', '12000050', 'PE MD jaune TP14 GI-GEX - ASTM1248-89/TY:II/CL:B/CAT:5/GR:P34 (MP595)', '', '', '', 'PL', 'TP14', '142.1', '-1.8', '1.8', '149.7', '2.2', '-2.2', '149.7', '2.2', '-2.2', '3.8', '-.4', '.4', '0', '', '', '0', '.2', '', '', '0', '-.2', '4.9', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', '', '0', '0', '0'),
(66, '', '8.69', '11472', '4285.2614782004', '2.06', 'Sweet', '2.11', '2', '0', '0', '1.41', '91', '78060', '4', 'ST10170426', '0', '', '', '2', 'GP', '140', '138', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '109.6', '4', '', '1', '1.5737', 'MP57', '12200010', 'Rilsan besno P40 TL+ TP01 (MP57)', '', '', '', 'PA', 'TP01', '109.6', '-1.1', '1.1', '117.6', '1.5', '-1.5', '117.6', '1.5', '-1.5', '4', '-.6', '.6', '0', '', '', '0', '.2', '', '', '0', '-.2', '5.2', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', '', '0', '0', '0'),
(67, '', '8.69', '11472', '4285.2614782004', '2.06', 'Sweet', '2.11', '0', '0', '.02', '1.99', '91', '78060', '4', 'ST10170426', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '134', '2', '35.98', '47', '6.0501', 'MP481', '10401110', 'Fil plat 7x2 - FI41 avec courant de Foucault (MP481)', '', '2', '7', 'FP', 'FI41', '134', '-1.7', '1.7', '138', '1.8', '-1.8', '138', '1.8', '-1.8', '2', '-.1', '.1', '35.98', '', '', '0', '.2', '', '', '0', '-.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '588.5', '8.8', '1', 'Lubrification : VETO86 \n\r', '588.5434', '588.5', '588.5434'),
(68, '', '8.69', '11472', '4285.2614782004', '2.06', 'Sweet', '2.11', '0', '0', '.02', '1.99', '91', '78060', '4', 'ST10170426', '0', '', '', '4', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '130', '2', '-36', '46', '5.923', 'MP481', '10401110', 'Fil plat 7x2 - FI41 avec courant de Foucault (MP481)', '', '2', '7', 'FP', 'FI41', '130', '-1.6', '1.6', '134', '1.7', '-1.7', '134', '1.7', '-1.7', '2', '-.1', '.1', '-36', '', '', '0', '.2', '', '', '0', '-.2', '', '1.0311', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '570.8', '8.5', '1', 'Lubrification : VETO86 \n\r', '570.7721', '570.8', '570.7721'),
(69, '', '8.69', '11472', '4285.2614782004', '2.06', 'Sweet', '2.11', '0', '0', '.02', '1.98', '91', '78060', '4', 'ST10170426', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '139.5', '.5', '', '1', '.0783', 'MP240', '12600110', 'Bande tissee 130mm KEVLAR 29 BA01 R=230daN Ref:9081 CHOMARAT pds:24g/m (MP240)', '', '', '', 'RU', 'BA01', '138', '-1.8', '1.8', '142.1', '1.8', '-1.8', '142.1', '1.8', '-1.8', '2.05', '0', '0', '0', '', '', '0', '.2', '', '', '0', '-.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', 'Lubrification : VETO86 \n\r', '138.9555', '0', '0'),
(70, '', '8.69', '11472', '4285.2614782004', '2.06', 'Sweet', '2.11', '0', '0', '.02', '1.98', '91', '78060', '4', 'ST10170426', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '138.5', '.5', '', '1', '.0778', 'MP240', '12600110', 'Bande tissee 130mm KEVLAR 29 BA01 R=230daN Ref:9081 CHOMARAT pds:24g/m (MP240)', '', '', '', 'RU', 'BA01', '138', '-1.8', '1.8', '142.1', '1.8', '-1.8', '142.1', '1.8', '-1.8', '2.05', '0', '0', '0', '', '', '0', '.2', '', '', '0', '-.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', 'Lubrification : VETO86 \n\r', '139.0557', '0', '0'),
(71, '', '8.69', '11472', '4285.2614782004', '2.06', 'Sweet', '2.11', '0', '0', '.02', '1.92', '91', '78060', '4', 'ST10170426', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '117.6', '6.2', '-87.12', '2', '16.046', 'MP152', '10800040', 'Fil zeta 6,2 - FM35 - FI11 N.V. BEKAERT (MP152)', '', '6.2', '0', 'FZ', 'FI11', '117.6', '-1.5', '1.5', '130', '1.6', '-1.6', '130', '1.6', '-1.6', '6.2', '0', '.1', '-87.12', '', '', '0', '.2', '', '', '0', '-.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '194', '2', '20', '', '19.4', '19.4', '19.4'),
(72, '', '8.69', '11472', '4285.2614782004', '2.06', 'Sweet', '2.11', '0', '0', '.02', '1.98', '91', '78060', '4', 'ST10170426', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '141.3', '.4', '', '1', '.0657', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '138', '-1.8', '1.8', '142.1', '1.8', '-1.8', '142.1', '1.8', '-1.8', '2.05', '0', '0', '0', '', '', '0', '.2', '', '', '0', '-.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', 'Lubrification : VETO86 \n\r', '135.925', '0', '0'),
(73, '', '8.69', '11472', '4285.2614782004', '2.06', 'Sweet', '2.11', '0', '0', '.02', '1.98', '91', '78060', '4', 'ST10170426', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '140.5', '.4', '', '1', '.0654', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '138', '-1.8', '1.8', '142.1', '1.8', '-1.8', '142.1', '1.8', '-1.8', '2.05', '0', '0', '0', '', '', '0', '.2', '', '', '0', '-.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', 'Lubrification : VETO86 \n\r', '135.9972', '0', '0'),
(74, '', '8.69', '11472', '4285.2614782004', '2.06', 'Sweet', '2.11', '0', '0', '0', '1.3', '91', '78060', '4', 'ST10170426', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '101.6', '4', '-87.53', '1', '5.823', 'MP119', '10100370', 'Feuillard inox 0,8x40 AISI 316L FE02 EN 1.4404 (MP119)', '', '.8', '40', 'FI', 'FE02', '101.6', '-1', '1', '109.6', '1.1', '-1.1', '109.6', '1.1', '-1.1', '4', '0', '0', '-87.53', '100.6', '152.4', '0', '.2', '110.7', '152.4', '0', '-.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '14.325', '14.325', '14.325'),
(75, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '1', '-.009', '.008', '2.52', '91', '78351', '5.5', 'ST13970157', '0', '', '', '9', 'GEX', '780', '000', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '184.4', '4.3', '', '1', '2.3962', 'MP595', '12000050', 'PE MD jaune TP14 GI-GEX - ASTM1248-89/TY:II/CL:B/CAT:5/GR:P34 (MP595)', '', '', '', 'PL', 'TP14', '184.4', '-2.4', '2.4', '193', '2.8', '-2.8', '193', '2.8', '-2.8', '4.3', '-.5', '.5', '0', '', '', '0', '.5', '', '', '0', '-.5', '5.6', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', '', '0', '0', '0');
INSERT INTO `imported_project` (`imported_project_id`, `APPLICATION`, `LINEIC_VOLUME_INTERNAL`, `MAX_TEST_PRESSURE`, `BENDING_STIFFNESS`, `FAT_DRUM_DIAMETER`, `SERVICE`, `ST_STORAGE_DRUM_DIAMETER`, `WATERTIGHTNESS`, `MANUFACTURING_ELONGATION_MIN`, `MANUFACTURING_ELONGATION_MAX`, `ENG_STORAGE_DRUM_DIAMETER`, `DOMAIN_ID`, `AFFAIRE`, `DIAINTERST`, `STRUCTURE`, `STRUCTURE_REVISION`, `CDC`, `CDC_STRUCTURE_REVISION`, `NOLIGNE`, `COUCHE`, `CODEOPERATION`, `CODEPREPARATION`, `OPERATION`, `LAYER_NAME`, `LAYER_TYPE_DESCRIPTION`, `LAYER_VARIETY_DESCRIPTION`, `DIAINTER`, `EP`, `ANGLE`, `NOMBREFIL`, `MASSECOUCHE`, `CODEMP`, `CODEMP_IFS`, `DESCRIPTIONMP`, `DESCRIPTIONMPN_2`, `EPMP`, `LARGMP`, `CODEPRODUITGENERIQUE`, `CODEPRODUITUSUEL`, `DIAINTERCOUCHE`, `DIAINTERCOUCHETOLINF`, `DIAINTERCOUCHETOLSUP`, `DIAEXTERCOUCHE`, `DIAEXTERCOUCHETOLSUP`, `DIAEXTERCOUCHETOLINF`, `DIAEXTERNONRETREINT`, `DIAEXTERTOLSUPNONRETREINT`, `DIAEXTERTOLINFNONRETREINT`, `EPCOUCHE`, `EPCOUCHETOLINF`, `EPCOUCHETOLSUP`, `ARMANGLE`, `DIAEXTERCLI`, `LGCLI`, `CLITOLINF`, `CLITOLSUP`, `DIAINTERCLE`, `LGCLE`, `CLETOLSUP`, `CLETOLINF`, `EPMAXICOUCHE`, `ARMPASRATIO`, `NOMAFFAIRE`, `CHAMP`, `INGENIEURAFF`, `DATELIVRAISON`, `MBR`, `PASNOMINAL`, `TOLPASNOMINAL`, `NBTOURCONTROLEPAS`, `COMMENTAIRES`, `MAN_LINEIC_OBJ_MPITCH`, `AVG_PITCH_MAN`, `AVG_PITCH_ENG`) VALUES
(76, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '1', '-.009', '.008', '2.52', '91', '78351', '5.5', 'ST13970157', '0', '', '', '9', 'GEX', '780', '000', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '184.4', '4.3', '', '1', '2.3962', 'MP595', '12000050', 'PE MD jaune TP14 GI-GEX - ASTM1248-89/TY:II/CL:B/CAT:5/GR:P34 (MP595)', '', '', '', 'PL', 'TP14', '184.4', '-2.4', '2.4', '193', '2.8', '-2.8', '193', '2.8', '-2.8', '4.3', '-.5', '.5', '0', '', '', '0', '.5', '', '', '0', '-.5', '5.6', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', '', '0', '0', '0'),
(77, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '0', '0', '1.77', '91', '78351', '5.5', 'ST13970157', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '139.7', '4', '-88.18', '1', '7.9205', 'MP460', '10101710', 'Feuillard inox 0,8x40 duplex FE04 EN 1.4462/ UNS S31803 (MP460)', '', '.8', '40', 'FI', 'FE04', '139.7', '-1.4', '1.4', '147.7', '1.5', '-1.5', '147.7', '1.5', '-1.5', '4', '0', '0', '-88.18', '138.3', '139.7', '0', '.5', '149.2', '139.7', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '14.325', '14.325', '14.325'),
(78, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '0', '0', '1.77', '91', '78351', '5.5', 'ST13970157', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '139.7', '4', '-88.18', '1', '7.9205', 'MP460', '10101710', 'Feuillard inox 0,8x40 duplex FE04 EN 1.4462/ UNS S31803 (MP460)', '', '.8', '40', 'FI', 'FE04', '139.7', '-1.4', '1.4', '147.7', '1.5', '-1.5', '147.7', '1.5', '-1.5', '4', '0', '0', '-88.18', '138.3', '139.7', '0', '.5', '149.2', '139.7', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '14.325', '14.325', '14.325'),
(79, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.79', '91', '78351', '5.5', 'ST13970157', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '176.3', '2', '35', '63', '8.0116', 'MP207', '10403470', 'Fil plat 7x2 - FM35 - FI09 avec courant de Foucault (MP207)', '', '2', '7', 'FP', 'FI09', '176.3', '-2.3', '2.3', '180.3', '2.4', '-2.4', '180.3', '2.4', '-2.4', '2', '-.1', '.1', '35', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '800', '11.9', '1', 'Lubrification : VETO86 \n\r', '799.9714', '800', '799.9714'),
(80, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.79', '91', '78351', '5.5', 'ST13970157', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '176.3', '2', '35', '63', '8.0116', 'MP207', '10403470', 'Fil plat 7x2 - FM35 - FI09 avec courant de Foucault (MP207)', '', '2', '7', 'FP', 'FI09', '176.3', '-2.3', '2.3', '180.3', '2.4', '-2.4', '180.3', '2.4', '-2.4', '2', '-.1', '.1', '35', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '800', '11.9', '1', 'Lubrification : VETO86 \n\r', '799.9714', '800', '799.9714'),
(81, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.79', '91', '78351', '5.5', 'ST13970157', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '170.7', '2', '-35', '61', '7.7572', 'MP207', '10403470', 'Fil plat 7x2 - FM35 - FI09 avec courant de Foucault (MP207)', '', '2', '7', 'FP', 'FI09', '170.7', '-2.2', '2.2', '174.7', '2.3', '-2.3', '174.7', '2.3', '-2.3', '2', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0324', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '774.8', '11.6', '1', 'Lubrification : VETO86 \n\r', '774.8461', '774.8', '774.8461'),
(82, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.79', '91', '78351', '5.5', 'ST13970157', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '170.7', '2', '-35', '61', '7.7572', 'MP207', '10403470', 'Fil plat 7x2 - FM35 - FI09 avec courant de Foucault (MP207)', '', '2', '7', 'FP', 'FI09', '170.7', '-2.2', '2.2', '174.7', '2.3', '-2.3', '174.7', '2.3', '-2.3', '2', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0324', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '774.8', '11.6', '1', 'Lubrification : VETO86 \n\r', '774.8461', '774.8', '774.8461'),
(83, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.21', '91', '78351', '5.5', 'ST13970157', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '156.7', '6.2', '-87.81', '2', '21.1025', 'MP205', '10800070', 'Fil zeta 6,2 - FM35 - FI09  KISWIRE (MP205)', '', '6.2', '0', 'FZ', 'FI09', '156.7', '-2', '2', '169.1', '2.2', '-2.2', '169.1', '2.2', '-2.2', '6.2', '0', '.1', '-87.81', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '196', '2', '20', '', '19.6', '19.6', '19.6'),
(84, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.21', '91', '78351', '5.5', 'ST13970157', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '156.7', '6.2', '-87.81', '2', '21.1025', 'MP205', '10800070', 'Fil zeta 6,2 - FM35 - FI09  KISWIRE (MP205)', '', '6.2', '0', 'FZ', 'FI09', '156.7', '-2', '2', '169.1', '2.2', '-2.2', '169.1', '2.2', '-2.2', '6.2', '0', '.1', '-87.81', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '196', '2', '20', '', '19.6', '19.6', '19.6'),
(85, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.78', '91', '78351', '5.5', 'ST13970157', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '183.6', '.4', '77', '1', '.0854', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '180.3', '-2.4', '2.4', '184.4', '2.4', '-2.4', '184.4', '2.4', '-2.4', '2.05', '0', '0', '77', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.4177', '0', '0'),
(86, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.78', '91', '78351', '5.5', 'ST13970157', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '183.6', '.4', '77', '1', '.0854', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '180.3', '-2.4', '2.4', '184.4', '2.4', '-2.4', '184.4', '2.4', '-2.4', '2.05', '0', '0', '77', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.4177', '0', '0'),
(87, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.78', '91', '78351', '5.5', 'ST13970157', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '182.8', '.4', '76.95', '1', '.085', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '180.3', '-2.4', '2.4', '184.4', '2.4', '-2.4', '184.4', '2.4', '-2.4', '2.05', '0', '0', '76.95', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.4488', '0', '0'),
(88, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.78', '91', '78351', '5.5', 'ST13970157', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '182.8', '.4', '76.95', '1', '.085', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '180.3', '-2.4', '2.4', '184.4', '2.4', '-2.4', '184.4', '2.4', '-2.4', '2.05', '0', '0', '76.95', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.4488', '0', '0'),
(89, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.79', '91', '78351', '5.5', 'ST13970157', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'FABRIC TAPE', 'FABRIC TAPE', '175.5', '.4', '76.39', '1', '.0816', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '174.7', '-2.3', '2.3', '176.3', '2.3', '-2.3', '176.3', '2.3', '-2.3', '.8', '0', '0', '76.39', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.7538', '0', '0'),
(90, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.79', '91', '78351', '5.5', 'ST13970157', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'FABRIC TAPE', 'FABRIC TAPE', '175.5', '.4', '76.39', '1', '.0816', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '174.7', '-2.3', '2.3', '176.3', '2.3', '-2.3', '176.3', '2.3', '-2.3', '.8', '0', '0', '76.39', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.7538', '0', '0'),
(91, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.79', '91', '78351', '5.5', 'ST13970157', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'FABRIC TAPE', 'FABRIC TAPE', '174.7', '.4', '76.33', '1', '.0812', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '174.7', '-2.3', '2.3', '176.3', '2.3', '-2.3', '176.3', '2.3', '-2.3', '.8', '0', '0', '76.33', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.7897', '0', '0'),
(92, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.79', '91', '78351', '5.5', 'ST13970157', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'FABRIC TAPE', 'FABRIC TAPE', '174.7', '.4', '76.33', '1', '.0812', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '174.7', '-2.3', '2.3', '176.3', '2.3', '-2.3', '176.3', '2.3', '-2.3', '.8', '0', '0', '76.33', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.7897', '0', '0'),
(93, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.8', '91', '78351', '5.5', 'ST13970157', '0', '', '', '4', 'SFT', '300', '000', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'FABRIC TAPE', 'FABRIC TAPE', '169.9', '.4', '75.94', '1', '.079', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '169.1', '-2.2', '2.2', '170.7', '2.2', '-2.2', '170.7', '2.2', '-2.2', '.8', '0', '0', '75.94', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', '', '134.0165', '0', '0'),
(94, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.8', '91', '78351', '5.5', 'ST13970157', '0', '', '', '4', 'SFT', '300', '000', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'FABRIC TAPE', 'FABRIC TAPE', '169.9', '.4', '75.94', '1', '.079', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '169.1', '-2.2', '2.2', '170.7', '2.2', '-2.2', '170.7', '2.2', '-2.2', '.8', '0', '0', '75.94', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', '', '134.0165', '0', '0'),
(95, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.8', '91', '78351', '5.5', 'ST13970157', '0', '', '', '4', 'SFT', '300', '000', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'FABRIC TAPE', 'FABRIC TAPE', '169.1', '.4', '75.87', '1', '.0786', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '169.1', '-2.2', '2.2', '170.7', '2.2', '-2.2', '170.7', '2.2', '-2.2', '.8', '0', '0', '75.87', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', '', '134.0563', '0', '0'),
(96, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.8', '91', '78351', '5.5', 'ST13970157', '0', '', '', '4', 'SFT', '300', '000', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'FABRIC TAPE', 'FABRIC TAPE', '169.1', '.4', '75.87', '1', '.0786', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '169.1', '-2.2', '2.2', '170.7', '2.2', '-2.2', '170.7', '2.2', '-2.2', '.8', '0', '0', '75.87', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', '', '134.0563', '0', '0'),
(97, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '2', '0', '0', '2.09', '91', '78351', '5.5', 'ST13970157', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '147.7', '4.5', '', '1', '3.8363', 'MP125', '11900010', 'PVDF TP06 amendement S (MP125)', '', '', '', 'FF', 'TP06', '147.7', '-1.5', '1.5', '156.7', '2', '-2', '156.7', '2', '-2', '4.5', '-.7', '.7', '0', '', '', '0', '.5', '', '', '0', '-.5', '5.9', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', '', '0', '0', '0'),
(98, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '2', '0', '0', '2.09', '91', '78351', '5.5', 'ST13970157', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '147.7', '4.5', '', '1', '3.8363', 'MP125', '11900010', 'PVDF TP06 amendement S (MP125)', '', '', '', 'FF', 'TP06', '147.7', '-1.5', '1.5', '156.7', '2', '-2', '156.7', '2', '-2', '4.5', '-.7', '.7', '0', '', '', '0', '.5', '', '', '0', '-.5', '5.9', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', '', '0', '0', '0'),
(99, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.78', '91', '78351', '5.5', 'ST13970157', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '181.7', '.55', '76.62', '1', '.1391', 'MP1013', '12600700', 'Bande tissee 130mm TECHNORA T200 BA10 R=360daN TRAME VERRE (MP1013)', '', '', '', 'RU', 'BA10', '180.3', '-2.4', '2.4', '184.4', '2.4', '-2.4', '184.4', '2.4', '-2.4', '2.05', '0', '0', '76.62', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1972', '0', '0'),
(100, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.78', '91', '78351', '5.5', 'ST13970157', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '181.7', '.55', '76.62', '1', '.1391', 'MP1013', '12600700', 'Bande tissee 130mm TECHNORA T200 BA10 R=360daN TRAME VERRE (MP1013)', '', '', '', 'RU', 'BA10', '180.3', '-2.4', '2.4', '184.4', '2.4', '-2.4', '184.4', '2.4', '-2.4', '2.05', '0', '0', '76.62', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1972', '0', '0'),
(101, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.78', '91', '78351', '5.5', 'ST13970157', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '180.6', '.55', '-76.54', '1', '.1383', 'MP1013', '12600700', 'Bande tissee 130mm TECHNORA T200 BA10 R=360daN TRAME VERRE (MP1013)', '', '', '', 'RU', 'BA10', '180.3', '-2.4', '2.4', '184.4', '2.4', '-2.4', '184.4', '2.4', '-2.4', '2.05', '0', '0', '-76.54', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.2441', '0', '0'),
(102, '', '16.12', '6151', '15192.5415662487', '2.8', 'Sour', '2.79', '0', '-.009', '.013', '2.78', '91', '78351', '5.5', 'ST13970157', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '180.6', '.55', '-76.54', '1', '.1383', 'MP1013', '12600700', 'Bande tissee 130mm TECHNORA T200 BA10 R=360daN TRAME VERRE (MP1013)', '', '', '', 'RU', 'BA10', '180.3', '-2.4', '2.4', '184.4', '2.4', '-2.4', '184.4', '2.4', '-2.4', '2.05', '0', '0', '-76.54', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'UZMA ENGINEERING TANJONG BARAM', '', 'TBD', '', '1488', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.2441', '0', '0'),
(103, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '1', '-.009', '.013', '2.59', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '7', 'GSA', '540', '538', 'GAINAGE SUR ARMAGE', 'OVER ARMOUR LAYER SHEATH', 'INTERNAL SHEATH', 'INTERMEDIATE SHEATH', '184.1', '5.4', '', '1', '3.0444', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '184.1', '-2.7', '2.7', '194.9', '3.2', '-3.2', '194.9', '3.2', '-3.2', '5.4', '-.6', '.6', '0', '', '', '0', '.5', '', '', '0', '-.5', '7', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', '', '0', '0', '0'),
(104, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.6', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '172', '4', '44.57', '31', '15.469', 'MP646', '10404240', 'Fil plat 12x4 - FI41 (MP646)', '', '4', '12', 'FP', 'FI41', '172', '-2.5', '2.5', '180', '2.7', '-2.7', '180', '2.7', '-2.7', '4', '-.1', '.1', '44.57', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '561.2', '8.4', '1', 'Lubrification : VETO86 \n\r', '561.2433', '561.2', '561.2433'),
(105, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.61', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '4', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '164', '4', '-45', '30', '15.0814', 'MP646', '10404240', 'Fil plat 12x4 - FI41 (MP646)', '', '4', '12', 'FP', 'FI41', '164', '-2.3', '2.3', '172', '2.5', '-2.5', '172', '2.5', '-2.5', '4', '-.1', '.1', '-45', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0634', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '527.8', '7.9', '1', 'Lubrification : VETO86 \n\r', '527.7876', '527.8', '527.7876'),
(106, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '0', '0', '1.62', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '127', '4', '-88.01', '1', '7.2212', 'MP460', '10101710', 'Feuillard inox 0,8x40 duplex FE04 EN 1.4462/ UNS S31803 (MP460)', '', '.8', '40', 'FI', 'FE04', '127', '-1.3', '1.3', '135', '1.4', '-1.4', '135', '1.4', '-1.4', '4', '0', '0', '-88.01', '125.7', '127', '0', '.5', '136.4', '127', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '14.325', '14.325', '14.325'),
(107, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '9', 'FM1', '580', '000', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '238.9', '.1', '80.03', '1', '.1213', 'MP364', '12600250', 'Terphane 150mmx1500m EP:0,1mm Mandrin:76mm (MP364)', '', '', '', 'RU', 'N.A.', '238.9', '-5', '6.2', '241.3', '6.2', '-5', '241.3', '6.2', '-5', '1.2', '0', '0', '80.03', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', '', '131.9935', '0', '0'),
(108, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.07', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '148', '8', '-87.04', '2', '26.0516', 'MP326', '10800090', 'Fil zeta 8 - FM35 - FI11 KISWIRE (MP326) Qualification en cours', '', '8', '0', 'FZ', 'FI11', '148', '-2.1', '2.1', '164', '2.3', '-2.3', '164', '2.3', '-2.3', '8', '0', '.1', '-87.04', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(109, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '8', 'FM1', '580', '577', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'ISOLATION', 'ISOLATION', '216.9', '11', '-81.49', '1', '5.0077', 'MP229', '12800050', 'Bande mousse 50x11mm COFOAM MO03 Type PC.415 pds:380g/m (MP229)', '', '11', '50', 'BI', 'MO03', '194.9', '-3.2', '3.2', '238.9', '6.2', '-5', '238.9', '6.2', '-5', '22', '-.9', '1.5', '-81.49', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '321', '5', '6', '', '107.1825', '0', '0'),
(110, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '8', 'FM1', '580', '577', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'ISOLATION', 'ISOLATION', '194.9', '11', '-80.57', '1', '4.5242', 'MP229', '12800050', 'Bande mousse 50x11mm COFOAM MO03 Type PC.415 pds:380g/m (MP229)', '', '11', '50', 'BI', 'MO03', '194.9', '-3.2', '3.2', '238.9', '6.2', '-5', '238.9', '6.2', '-5', '22', '-.9', '1.5', '-80.57', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '321', '5', '6', '', '107.4542', '0', '0'),
(111, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '2', '0', '0', '1.97', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '135', '6.5', '', '1', '5.3003', 'MP213', '11900020', 'PVDF TP29 (MP213)', '', '', '', 'FF', 'TP29', '135', '-1.4', '1.4', '148', '2.1', '-2.1', '148', '2.1', '-2.1', '6.5', '-1', '1', '0', '', '', '0', '.5', '', '', '0', '-.5', '8.5', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', '', '0', '0', '0'),
(112, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '9', 'FM1', '580', '000', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '239.4', '.15', '-79.67', '1', '.1433', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '238.9', '-5', '6.2', '241.3', '6.2', '-5', '241.3', '6.2', '-5', '1.2', '0', '0', '-79.67', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', '', '137.226', '0', '0'),
(113, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '9', 'FM1', '580', '000', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '239.1', '.15', '79.65', '1', '.1431', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '238.9', '-5', '6.2', '241.3', '6.2', '-5', '241.3', '6.2', '-5', '1.2', '0', '0', '79.65', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', '', '137.2317', '0', '0'),
(114, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.6', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '180', '.15', '-76.2', '1', '.1077', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '180', '-2.7', '2.7', '184.1', '2.7', '-2.7', '184.1', '2.7', '-2.7', '2.05', '0', '0', '-76.2', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', 'Lubrification : VETO86 \n\r', '139.0127', '0', '0'),
(115, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '9', 'FM1', '580', '000', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '240.5', '.4', '-80.11', '1', '.1118', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '238.9', '-5', '6.2', '241.3', '6.2', '-5', '241.3', '6.2', '-5', '1.2', '0', '0', '-80.11', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', '', '131.9614', '0', '0'),
(116, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '9', 'FM1', '580', '000', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '239.7', '.4', '-80.08', '1', '.1114', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '238.9', '-5', '6.2', '241.3', '6.2', '-5', '241.3', '6.2', '-5', '1.2', '0', '0', '-80.08', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', '', '131.9748', '0', '0'),
(117, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.6', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '183.3', '.4', '76.98', '1', '.0852', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '180', '-2.7', '2.7', '184.1', '2.7', '-2.7', '184.1', '2.7', '-2.7', '2.05', '0', '0', '76.98', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.4293', '0', '0'),
(118, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.6', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '182.5', '.4', '76.92', '1', '.0849', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '180', '-2.7', '2.7', '184.1', '2.7', '-2.7', '184.1', '2.7', '-2.7', '2.05', '0', '0', '76.92', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.4606', '0', '0'),
(119, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.6', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '181.4', '.55', '76.6', '1', '.1389', 'MP1013', '12600700', 'Bande tissee 130mm TECHNORA T200 BA10 R=360daN TRAME VERRE (MP1013)', '', '', '', 'RU', 'BA10', '180', '-2.7', '2.7', '184.1', '2.7', '-2.7', '184.1', '2.7', '-2.7', '2.05', '0', '0', '76.6', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.2099', '0', '0'),
(120, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.6', '91', '037803CLMA', '5', 'ST12740407', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '180.3', '.55', '-76.51', '1', '.1381', 'MP1013', '12600700', 'Bande tissee 130mm TECHNORA T200 BA10 R=360daN TRAME VERRE (MP1013)', '', '', '', 'RU', 'BA10', '180', '-2.7', '2.7', '184.1', '2.7', '-2.7', '184.1', '2.7', '-2.7', '2.05', '0', '0', '-76.51', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY Amethyst', '037803CLMA - STONE ENERGY Amethyst', 'GENIS BASTIEN', '18/09/2019', '1664', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.2571', '0', '0'),
(121, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '1', '-.009', '.008', '3.08', '91', '78389', '5', 'ST12740407', '0', '', '', '10', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '241.3', '7.5', '', '1', '5.5515', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '241.3', '-5', '6.2', '256.3', '7', '-5.8', '256.3', '7', '-5.8', '7.5', '-1.1', '1.1', '0', '', '', '0', '.5', '', '', '0', '-.5', '9.8', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', '', '0', '0', '0'),
(122, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '1', '-.009', '.013', '2.59', '91', '78389', '5', 'ST12740407', '0', '', '', '7', 'GSA', '540', '538', 'GAINAGE SUR ARMAGE', 'OVER ARMOUR LAYER SHEATH', 'INTERNAL SHEATH', 'INTERMEDIATE SHEATH', '184.1', '5.4', '', '1', '3.0444', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '184.1', '-2.7', '2.7', '194.9', '3.2', '-3.2', '194.9', '3.2', '-3.2', '5.4', '-.6', '.6', '0', '', '', '0', '.5', '', '', '0', '-.5', '7', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', '', '0', '0', '0'),
(123, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.6', '91', '78389', '5', 'ST12740407', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '172', '4', '44.57', '31', '15.469', 'MP646', '10404240', 'Fil plat 12x4 - FI41 (MP646)', '', '4', '12', 'FP', 'FI41', '172', '-2.5', '2.5', '180', '2.7', '-2.7', '180', '2.7', '-2.7', '4', '-.1', '.1', '44.57', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '561.2', '8.4', '1', 'Lubrification : VETO86 \n\r', '561.2433', '561.2', '561.2433'),
(124, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.61', '91', '78389', '5', 'ST12740407', '0', '', '', '4', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '164', '4', '-45', '30', '15.0814', 'MP646', '10404240', 'Fil plat 12x4 - FI41 (MP646)', '', '4', '12', 'FP', 'FI41', '164', '-2.3', '2.3', '172', '2.5', '-2.5', '172', '2.5', '-2.5', '4', '-.1', '.1', '-45', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0634', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '527.8', '7.9', '1', 'Lubrification : VETO86 \n\r', '527.7876', '527.8', '527.7876'),
(125, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '0', '0', '1.62', '91', '78389', '5', 'ST12740407', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '127', '4', '-88.01', '1', '7.2212', 'MP460', '10101710', 'Feuillard inox 0,8x40 duplex FE04 EN 1.4462/ UNS S31803 (MP460)', '', '.8', '40', 'FI', 'FE04', '127', '-1.3', '1.3', '135', '1.4', '-1.4', '135', '1.4', '-1.4', '4', '0', '0', '-88.01', '125.7', '127', '0', '.5', '136.4', '127', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '14.325', '14.325', '14.325'),
(126, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '78389', '5', 'ST12740407', '0', '', '', '9', 'FM1', '580', '000', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '238.9', '.1', '80.03', '1', '.1213', 'MP364', '12600250', 'Terphane 150mmx1500m EP:0,1mm Mandrin:76mm (MP364)', '', '', '', 'RU', 'N.A.', '238.9', '-5', '6.2', '241.3', '6.2', '-5', '241.3', '6.2', '-5', '1.2', '0', '0', '80.03', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', '', '131.9935', '0', '0'),
(127, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.07', '91', '78389', '5', 'ST12740407', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '148', '8', '-87.04', '2', '26.0516', 'MP326', '10800090', 'Fil zeta 8 - FM35 - FI11 KISWIRE (MP326) Qualification en cours', '', '8', '0', 'FZ', 'FI11', '148', '-2.1', '2.1', '164', '2.3', '-2.3', '164', '2.3', '-2.3', '8', '0', '.1', '-87.04', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(128, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '78389', '5', 'ST12740407', '0', '', '', '8', 'FM1', '580', '577', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'ISOLATION', 'ISOLATION', '216.9', '11', '-81.49', '1', '5.0077', 'MP229', '12800050', 'Bande mousse 50x11mm COFOAM MO03 Type PC.415 pds:380g/m (MP229)', '', '11', '50', 'BI', 'MO03', '194.9', '-3.2', '3.2', '238.9', '6.2', '-5', '238.9', '6.2', '-5', '22', '-.9', '1.5', '-81.49', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '321', '5', '6', '', '107.1825', '0', '0'),
(129, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '78389', '5', 'ST12740407', '0', '', '', '8', 'FM1', '580', '577', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'ISOLATION', 'ISOLATION', '194.9', '11', '-80.57', '1', '4.5242', 'MP229', '12800050', 'Bande mousse 50x11mm COFOAM MO03 Type PC.415 pds:380g/m (MP229)', '', '11', '50', 'BI', 'MO03', '194.9', '-3.2', '3.2', '238.9', '6.2', '-5', '238.9', '6.2', '-5', '22', '-.9', '1.5', '-80.57', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '321', '5', '6', '', '107.4542', '0', '0'),
(130, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '2', '0', '0', '1.97', '91', '78389', '5', 'ST12740407', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '135', '6.5', '', '1', '5.3003', 'MP213', '11900020', 'PVDF TP29 (MP213)', '', '', '', 'FF', 'TP29', '135', '-1.4', '1.4', '148', '2.1', '-2.1', '148', '2.1', '-2.1', '6.5', '-1', '1', '0', '', '', '0', '.5', '', '', '0', '-.5', '8.5', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', '', '0', '0', '0'),
(131, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '78389', '5', 'ST12740407', '0', '', '', '9', 'FM1', '580', '000', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '239.4', '.15', '-79.67', '1', '.1433', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '238.9', '-5', '6.2', '241.3', '6.2', '-5', '241.3', '6.2', '-5', '1.2', '0', '0', '-79.67', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', '', '137.226', '0', '0'),
(132, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '78389', '5', 'ST12740407', '0', '', '', '9', 'FM1', '580', '000', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '239.1', '.15', '79.65', '1', '.1431', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '238.9', '-5', '6.2', '241.3', '6.2', '-5', '241.3', '6.2', '-5', '1.2', '0', '0', '79.65', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', '', '137.2317', '0', '0'),
(133, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.6', '91', '78389', '5', 'ST12740407', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '180', '.15', '-76.2', '1', '.1077', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '180', '-2.7', '2.7', '184.1', '2.7', '-2.7', '184.1', '2.7', '-2.7', '2.05', '0', '0', '-76.2', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', 'Lubrification : VETO86 \n\r', '139.0127', '0', '0'),
(134, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '78389', '5', 'ST12740407', '0', '', '', '9', 'FM1', '580', '000', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '240.5', '.4', '-80.11', '1', '.1118', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '238.9', '-5', '6.2', '241.3', '6.2', '-5', '241.3', '6.2', '-5', '1.2', '0', '0', '-80.11', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', '', '131.9614', '0', '0'),
(135, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.54', '91', '78389', '5', 'ST12740407', '0', '', '', '9', 'FM1', '580', '000', 'FRETTAGE MOUSSE PASSAGE 1', 'INSULATION FOAM (1st)', 'FABRIC TAPE', 'FABRIC TAPE', '239.7', '.4', '-80.08', '1', '.1114', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '238.9', '-5', '6.2', '241.3', '6.2', '-5', '241.3', '6.2', '-5', '1.2', '0', '0', '-80.08', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', '', '131.9748', '0', '0'),
(136, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.6', '91', '78389', '5', 'ST12740407', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '183.3', '.4', '76.98', '1', '.0852', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '180', '-2.7', '2.7', '184.1', '2.7', '-2.7', '184.1', '2.7', '-2.7', '2.05', '0', '0', '76.98', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.4293', '0', '0'),
(137, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.6', '91', '78389', '5', 'ST12740407', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '182.5', '.4', '76.92', '1', '.0849', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '180', '-2.7', '2.7', '184.1', '2.7', '-2.7', '184.1', '2.7', '-2.7', '2.05', '0', '0', '76.92', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.4606', '0', '0'),
(138, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.6', '91', '78389', '5', 'ST12740407', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '181.4', '.55', '76.6', '1', '.1389', 'MP1013', '12600700', 'Bande tissee 130mm TECHNORA T200 BA10 R=360daN TRAME VERRE (MP1013)', '', '', '', 'RU', 'BA10', '180', '-2.7', '2.7', '184.1', '2.7', '-2.7', '184.1', '2.7', '-2.7', '2.05', '0', '0', '76.6', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.2099', '0', '0'),
(139, '', '13.39', '16288', '29921.1346050474', '3.08', 'Sweet', '3.08', '0', '-.009', '.013', '2.6', '91', '78389', '5', 'ST12740407', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '180.3', '.55', '-76.51', '1', '.1381', 'MP1013', '12600700', 'Bande tissee 130mm TECHNORA T200 BA10 R=360daN TRAME VERRE (MP1013)', '', '', '', 'RU', 'BA10', '180', '-2.7', '2.7', '184.1', '2.7', '-2.7', '184.1', '2.7', '-2.7', '2.05', '0', '0', '-76.51', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STONE ENERGY AMETHYST', '', 'TBD', '', '1664', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.2571', '0', '0'),
(140, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.99', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '4', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '191.6', '1.5', '', '1', '.8664', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '191.6', '-2.3', '2.3', '194.6', '2.5', '-2.5', '194.6', '2.5', '-2.5', '1.5', '-.1', '.1', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '173.7118', '173.7118', '173.7118'),
(141, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '1', '-.005', '.01', '2.84', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '9', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '210.1', '5', '', '1', '3.1997', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '210.1', '-2.9', '2.9', '220.1', '3.4', '-3.4', '220.1', '3.4', '-3.4', '5', '-.6', '.6', '0', '', '', '0', '.5', '', '', '0', '-.5', '6.5', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', '', '0', '0', '0'),
(142, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.99', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '4', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '191.6', '1.5', '', '1', '.8664', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '191.6', '-2.3', '2.3', '194.6', '2.5', '-2.5', '194.6', '2.5', '-2.5', '1.5', '-.1', '.1', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '173.7118', '173.7118', '173.7118'),
(143, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '201.6', '2', '35', '71', '9.0289', 'MP481', '10401110', 'Fil plat 7x2 - FI41 avec courant de Foucault (MP481)', '', '2', '7', 'FP', 'FI41', '201.6', '-2.8', '2.8', '205.6', '2.9', '-2.9', '205.6', '2.9', '-2.9', '2', '-.1', '.1', '35', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '913.5', '13.7', '1', 'Lubrification : VETO86 \n\r', '913.4838', '913.5', '913.4838'),
(144, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '1', '-.005', '.01', '2.84', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '9', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '210.1', '5', '', '1', '3.1997', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '210.1', '-2.9', '2.9', '220.1', '3.4', '-3.4', '220.1', '3.4', '-3.4', '5', '-.6', '.6', '0', '', '', '0', '.5', '', '', '0', '-.5', '6.5', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', '', '0', '0', '0'),
(145, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.99', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '194.6', '2', '-35', '69', '8.7746', 'MP481', '10401110', 'Fil plat 7x2 - FI41 avec courant de Foucault (MP481)', '', '2', '7', 'FP', 'FI41', '194.6', '-2.5', '2.5', '198.6', '2.6', '-2.6', '198.6', '2.6', '-2.6', '2', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0356', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '882.1', '13.2', '1', 'Lubrification : VETO86 \n\r', '882.0772', '882.1', '882.0772'),
(146, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '201.6', '2', '35', '71', '9.0289', 'MP481', '10401110', 'Fil plat 7x2 - FI41 avec courant de Foucault (MP481)', '', '2', '7', 'FP', 'FI41', '201.6', '-2.8', '2.8', '205.6', '2.9', '-2.9', '205.6', '2.9', '-2.9', '2', '-.1', '.1', '35', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '913.5', '13.7', '1', 'Lubrification : VETO86 \n\r', '913.4838', '913.5', '913.4838'),
(147, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '2', '0', '0', '2.15', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '170', '4.6', '', '1', '2.5553', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '170', '-1.7', '1.7', '179.2', '2.2', '-2.2', '179.2', '2.2', '-2.2', '4.6', '-.7', '.7', '0', '', '', '0', '.5', '', '', '0', '-.5', '6', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', '', '0', '0', '0'),
(148, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.99', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '194.6', '2', '-35', '69', '8.7746', 'MP481', '10401110', 'Fil plat 7x2 - FI41 avec courant de Foucault (MP481)', '', '2', '7', 'FP', 'FI41', '194.6', '-2.5', '2.5', '198.6', '2.6', '-2.6', '198.6', '2.6', '-2.6', '2', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0356', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '882.1', '13.2', '1', 'Lubrification : VETO86 \n\r', '882.0772', '882.1', '882.0772'),
(149, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '207.5', '.5', '', '1', '.1164', 'MP240', '12600110', 'Bande tissee 130mm KEVLAR 29 BA01 R=230daN Ref:9081 CHOMARAT pds:24g/m (MP240)', '', '', '', 'RU', 'BA01', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '135.3109', '0', '0');
INSERT INTO `imported_project` (`imported_project_id`, `APPLICATION`, `LINEIC_VOLUME_INTERNAL`, `MAX_TEST_PRESSURE`, `BENDING_STIFFNESS`, `FAT_DRUM_DIAMETER`, `SERVICE`, `ST_STORAGE_DRUM_DIAMETER`, `WATERTIGHTNESS`, `MANUFACTURING_ELONGATION_MIN`, `MANUFACTURING_ELONGATION_MAX`, `ENG_STORAGE_DRUM_DIAMETER`, `DOMAIN_ID`, `AFFAIRE`, `DIAINTERST`, `STRUCTURE`, `STRUCTURE_REVISION`, `CDC`, `CDC_STRUCTURE_REVISION`, `NOLIGNE`, `COUCHE`, `CODEOPERATION`, `CODEPREPARATION`, `OPERATION`, `LAYER_NAME`, `LAYER_TYPE_DESCRIPTION`, `LAYER_VARIETY_DESCRIPTION`, `DIAINTER`, `EP`, `ANGLE`, `NOMBREFIL`, `MASSECOUCHE`, `CODEMP`, `CODEMP_IFS`, `DESCRIPTIONMP`, `DESCRIPTIONMPN_2`, `EPMP`, `LARGMP`, `CODEPRODUITGENERIQUE`, `CODEPRODUITUSUEL`, `DIAINTERCOUCHE`, `DIAINTERCOUCHETOLINF`, `DIAINTERCOUCHETOLSUP`, `DIAEXTERCOUCHE`, `DIAEXTERCOUCHETOLSUP`, `DIAEXTERCOUCHETOLINF`, `DIAEXTERNONRETREINT`, `DIAEXTERTOLSUPNONRETREINT`, `DIAEXTERTOLINFNONRETREINT`, `EPCOUCHE`, `EPCOUCHETOLINF`, `EPCOUCHETOLSUP`, `ARMANGLE`, `DIAEXTERCLI`, `LGCLI`, `CLITOLINF`, `CLITOLSUP`, `DIAINTERCLE`, `LGCLE`, `CLETOLSUP`, `CLETOLINF`, `EPMAXICOUCHE`, `ARMPASRATIO`, `NOMAFFAIRE`, `CHAMP`, `INGENIEURAFF`, `DATELIVRAISON`, `MBR`, `PASNOMINAL`, `TOLPASNOMINAL`, `NBTOURCONTROLEPAS`, `COMMENTAIRES`, `MAN_LINEIC_OBJ_MPITCH`, `AVG_PITCH_MAN`, `AVG_PITCH_ENG`) VALUES
(150, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '2', '0', '0', '2.15', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '170', '4.6', '', '1', '2.5553', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '170', '-1.7', '1.7', '179.2', '2.2', '-2.2', '179.2', '2.2', '-2.2', '4.6', '-.7', '.7', '0', '', '', '0', '.5', '', '', '0', '-.5', '6', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', '', '0', '0', '0'),
(151, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '206.5', '.5', '', '1', '.1158', 'MP240', '12600110', 'Bande tissee 130mm KEVLAR 29 BA01 R=230daN Ref:9081 CHOMARAT pds:24g/m (MP240)', '', '', '', 'RU', 'BA01', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '135.339', '0', '0'),
(152, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '207.5', '.5', '', '1', '.1164', 'MP240', '12600110', 'Bande tissee 130mm KEVLAR 29 BA01 R=230daN Ref:9081 CHOMARAT pds:24g/m (MP240)', '', '', '', 'RU', 'BA01', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '135.3109', '0', '0'),
(153, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.65', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '179.2', '6.2', '-88.07', '2', '24.0132', 'MP152', '10800040', 'Fil zeta 6,2 - FM35 - FI11 N.V. BEKAERT (MP152)', '', '6.2', '0', 'FZ', 'FI11', '179.2', '-2.2', '2.2', '191.6', '2.3', '-2.3', '191.6', '2.3', '-2.3', '6.2', '0', '.1', '-88.07', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '195', '2', '20', '', '19.5', '19.5', '19.5'),
(154, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '206.5', '.5', '', '1', '.1158', 'MP240', '12600110', 'Bande tissee 130mm KEVLAR 29 BA01 R=230daN Ref:9081 CHOMARAT pds:24g/m (MP240)', '', '', '', 'RU', 'BA01', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '135.339', '0', '0'),
(155, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '206.2', '.15', '', '1', '.1234', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '138.0261', '0', '0'),
(156, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.65', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '179.2', '6.2', '-88.07', '2', '24.0132', 'MP152', '10800040', 'Fil zeta 6,2 - FM35 - FI11 N.V. BEKAERT (MP152)', '', '6.2', '0', 'FZ', 'FI11', '179.2', '-2.2', '2.2', '191.6', '2.3', '-2.3', '191.6', '2.3', '-2.3', '6.2', '0', '.1', '-88.07', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '195', '2', '20', '', '19.5', '19.5', '19.5'),
(157, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '205.9', '.15', '', '1', '.1232', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '138.0352', '0', '0'),
(158, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '206.2', '.15', '', '1', '.1234', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '138.0261', '0', '0'),
(159, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '205.6', '.15', '', '1', '.1231', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '138.0443', '0', '0'),
(160, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '205.9', '.15', '', '1', '.1232', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '138.0352', '0', '0'),
(161, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '209.3', '.4', '', '1', '.0973', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '132.6075', '0', '0'),
(162, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '205.6', '.15', '', '1', '.1231', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '138.0443', '0', '0'),
(163, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '208.5', '.4', '', '1', '.0969', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '132.6281', '0', '0'),
(164, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '209.3', '.4', '', '1', '.0973', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '132.6075', '0', '0'),
(165, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '0', '0', '2.05', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '162', '4', '-88.43', '1', '9.1484', 'MP119', '10100370', 'Feuillard inox 0,8x40 AISI 316L FE02 EN 1.4404 (MP119)', '', '.8', '40', 'FI', 'FE02', '162', '-1.6', '1.6', '170', '1.7', '-1.7', '170', '1.7', '-1.7', '4', '0', '0', '-88.43', '160.4', '162', '0', '.5', '171.7', '162', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '14.325', '14.325', '14.325'),
(166, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '-.005', '.015', '2.98', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '208.5', '.4', '', '1', '.0969', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '205.6', '-2.9', '2.9', '210.1', '2.9', '-2.9', '210.1', '2.9', '-2.9', '2.25', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', 'Lubrification : VETO86 \n\r', '132.6281', '0', '0'),
(167, '', '21.53', '7444', '16487.1400472608', '3.1', 'Sweet', '3.15', '0', '0', '0', '2.05', '91', '78294', '6.37795275590551181102362204724409448819', 'ST16271201', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '162', '4', '-88.43', '1', '9.1484', 'MP119', '10100370', 'Feuillard inox 0,8x40 AISI 316L FE02 EN 1.4404 (MP119)', '', '.8', '40', 'FI', 'FE02', '162', '-1.6', '1.6', '170', '1.7', '-1.7', '170', '1.7', '-1.7', '4', '0', '0', '-88.43', '160.4', '162', '0', '.5', '171.7', '162', '0', '-.5', '', '', 'SALAMANDER ENERGY BUALUANG', '', 'TBD', '', '1683', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '14.325', '14.325', '14.325'),
(168, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.93', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '347.7', '3', '35', '72', '23.8872', 'MP485', '10401150', 'Fil plat 12x3 - FI41 avec courant de Foucault (MP485)', '', '3', '12', 'FP', 'FI41', '347.7', '-4.2', '4.2', '353.7', '4.3', '-4.3', '353.7', '4.3', '-4.3', '3', '-.1', '.1', '35', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '1573.5', '23.6', '1', 'Lubrification : VETO86 \n\r', '1573.4714', '1573.5', '1573.4714'),
(169, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.93', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '4', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '341.7', '3', '-35', '71', '23.5554', 'MP485', '10401150', 'Fil plat 12x3 - FI41 avec courant de Foucault (MP485)', '', '3', '12', 'FP', 'FI41', '341.7', '-4.1', '4.1', '347.7', '4.2', '-4.2', '347.7', '4.2', '-4.2', '3', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0174', 'ENI JANGKRIK', '', 'TBD', '', '2770', '1546.6', '23.1', '1', 'Lubrification : VETO86 \n\r', '1546.5515', '1546.6', '1546.5515'),
(170, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.93', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '347.7', '3', '35', '72', '23.8872', 'MP485', '10401150', 'Fil plat 12x3 - FI41 avec courant de Foucault (MP485)', '', '3', '12', 'FP', 'FI41', '347.7', '-4.2', '4.2', '353.7', '4.3', '-4.3', '353.7', '4.3', '-4.3', '3', '-.1', '.1', '35', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '1573.5', '23.6', '1', 'Lubrification : VETO86 \n\r', '1573.4714', '1573.5', '1573.4714'),
(171, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '2', '0', '0', '3.91', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '308.9', '8.4', '', '1', '8.7686', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '308.9', '-3.1', '3.1', '325.7', '3.9', '-3.9', '325.7', '3.9', '-3.9', '8.4', '-1.4', '1.4', '0', '', '', '0', '.5', '', '', '0', '-.5', '11.3', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', '', '0', '0', '0'),
(172, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.93', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '4', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '341.7', '3', '-35', '71', '23.5554', 'MP485', '10401150', 'Fil plat 12x3 - FI41 avec courant de Foucault (MP485)', '', '3', '12', 'FP', 'FI41', '341.7', '-4.1', '4.1', '347.7', '4.2', '-4.2', '347.7', '4.2', '-4.2', '3', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0174', 'ENI JANGKRIK', '', 'TBD', '', '2770', '1546.6', '23.1', '1', 'Lubrification : VETO86 \n\r', '1546.5515', '1546.6', '1546.5515'),
(173, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.37', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '325.7', '8', '-88.61', '2', '55.4087', 'MP326', '10800090', 'Fil zeta 8 - FM35 - FI11 KISWIRE (MP326) Qualification en cours', '', '8', '0', 'FZ', 'FI11', '325.7', '-3.9', '3.9', '341.7', '4.1', '-4.1', '341.7', '4.1', '-4.1', '8', '0', '.1', '-88.61', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(174, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '2', '0', '0', '3.91', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '308.9', '8.4', '', '1', '8.7686', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '308.9', '-3.1', '3.1', '325.7', '3.9', '-3.9', '325.7', '3.9', '-3.9', '8.4', '-1.4', '1.4', '0', '', '', '0', '.5', '', '', '0', '-.5', '11.3', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', '', '0', '0', '0'),
(175, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '354.3', '.15', '', '1', '.212', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.0032', '0', '0'),
(176, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.37', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '325.7', '8', '-88.61', '2', '55.4087', 'MP326', '10800090', 'Fil zeta 8 - FM35 - FI11 KISWIRE (MP326) Qualification en cours', '', '8', '0', 'FZ', 'FI11', '325.7', '-3.9', '3.9', '341.7', '4.1', '-4.1', '341.7', '4.1', '-4.1', '8', '0', '.1', '-88.61', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(177, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '354', '.15', '', '1', '.2118', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.0049', '0', '0'),
(178, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '354.3', '.15', '', '1', '.212', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.0032', '0', '0'),
(179, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '353.7', '.15', '', '1', '.2116', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.0066', '0', '0'),
(180, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '354', '.15', '', '1', '.2118', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.0049', '0', '0'),
(181, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '357.68', '.4', '', '1', '.1661', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '130.8768', '0', '0'),
(182, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '353.7', '.15', '', '1', '.2116', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.0066', '0', '0'),
(183, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '356.88', '.4', '', '1', '.1658', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '130.8808', '0', '0'),
(184, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '357.68', '.4', '', '1', '.1661', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '130.8768', '0', '0'),
(185, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '0', '0', '3.68', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '288.9', '10', '-88.42', '1', '45.5018', 'MP108', '10100260', 'Feuillard inox 2,0x80 AISI 304L FE02 EN 1.4307 (MP108)', '', '2', '80', 'FI', 'FE02', '288.9', '-2.9', '2.9', '308.9', '3.1', '-3.1', '308.9', '3.1', '-3.1', '10', '0', '0', '-88.42', '286', '200', '0', '.5', '312', '200', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '25.93', '25.93', '25.93'),
(186, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '356.88', '.4', '', '1', '.1658', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '130.8808', '0', '0'),
(187, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '355.74', '.57', '', '1', '.3556', 'MP1015', '12600720', 'Bande tissee 130mm TECHNORA T200 BA10 R=550daN TRAME VERRE (MP1015)', '', '', '', 'RU', 'BA10', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.4381', '0', '0'),
(188, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '0', '0', '3.68', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '288.9', '10', '-88.42', '1', '45.5018', 'MP108', '10100260', 'Feuillard inox 2,0x80 AISI 304L FE02 EN 1.4307 (MP108)', '', '2', '80', 'FI', 'FE02', '288.9', '-2.9', '2.9', '308.9', '3.1', '-3.1', '308.9', '3.1', '-3.1', '10', '0', '0', '-88.42', '286', '200', '0', '.5', '312', '200', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '25.93', '25.93', '25.93'),
(189, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '354.6', '.57', '', '1', '.3545', 'MP1015', '12600720', 'Bande tissee 130mm TECHNORA T200 BA10 R=550daN TRAME VERRE (MP1015)', '', '', '', 'RU', 'BA10', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.4442', '0', '0'),
(190, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '355.74', '.57', '', '1', '.3556', 'MP1015', '12600720', 'Bande tissee 130mm TECHNORA T200 BA10 R=550daN TRAME VERRE (MP1015)', '', '', '', 'RU', 'BA10', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.4381', '0', '0'),
(191, '', '69.15', '5386', '241481.12588335', '5', 'Sweet', '5.17', '0', '-.005', '.015', '4.92', '91', '78088', '11.37401574803149606299212598425196850394', 'ST28870995', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '354.6', '.57', '', '1', '.3545', 'MP1015', '12600720', 'Bande tissee 130mm TECHNORA T200 BA10 R=550daN TRAME VERRE (MP1015)', '', '', '', 'RU', 'BA10', '353.7', '-4.3', '4.3', '358.48', '4.3', '-4.3', '358.48', '4.3', '-4.3', '2.39', '0', '0', '0', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ENI JANGKRIK', '', 'TBD', '', '2770', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.4442', '0', '0'),
(192, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '1', '0', '.015', '4', '91', '78061', '9.5', 'ST24171184', '0', '', '', '7', 'GEX', '780', '000', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '312.2', '8.1', '', '1', '7.6616', 'MP595', '12000050', 'PE MD jaune TP14 GI-GEX - ASTM1248-89/TY:II/CL:B/CAT:5/GR:P34 (MP595)', '', '', '', 'PL', 'TP14', '312.2', '-3.8', '3.8', '328.4', '4.6', '-4.6', '328.4', '4.6', '-4.6', '8.1', '-1.2', '1.2', '0', '', '', '0', '.5', '', '', '0', '-.5', '10.9', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', '', '0', '0', '0'),
(193, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '2', '0', '0', '3.36', '91', '78061', '9.5', 'ST24171184', '0', '', '', '2', 'GP', '140', '138', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '266.3', '7', '', '1', '6.976', 'MP57', '12200010', 'Rilsan besno P40 TL+ TP01 (MP57)', '', '', '', 'PA', 'TP01', '266.3', '-2.7', '2.7', '280.3', '3.4', '-3.4', '280.3', '3.4', '-3.4', '7', '-1.1', '1.1', '0', '', '', '0', '.5', '', '', '0', '-.5', '9.5', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', '', '0', '0', '0'),
(194, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.39', '91', '78061', '9.5', 'ST24171184', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '302.3', '3', '31', '65', '20.6084', 'MP485', '10401150', 'Fil plat 12x3 - FI41 avec courant de Foucault (MP485)', '', '3', '12', 'FP', 'FI41', '302.3', '-3.7', '3.7', '308.3', '3.8', '-3.8', '308.3', '3.8', '-3.8', '3', '-.1', '.1', '31', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '1596.3', '23.9', '1', 'Lubrification : VETO86 \n\r', '1596.2574', '1596.3', '1596.2574'),
(195, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.39', '91', '78061', '9.5', 'ST24171184', '0', '', '', '4', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '296.3', '3', '-31', '64', '20.2914', 'MP485', '10401150', 'Fil plat 12x3 - FI41 avec courant de Foucault (MP485)', '', '3', '12', 'FP', 'FI41', '296.3', '-3.6', '3.6', '302.3', '3.7', '-3.7', '302.3', '3.7', '-3.7', '3', '-.1', '.1', '-31', '', '', '0', '.5', '', '', '0', '-.5', '', '1.02', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '1564.9', '23.4', '1', 'Lubrification : VETO86 \n\r', '1564.8865', '1564.9', '1564.8865'),
(196, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '0', '3.12', '91', '78061', '9.5', 'ST24171184', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '241.3', '12.5', '-87.67', '1', '48.3204', 'MP438', '10101570', 'Feuillard inox 2,5x100 AISI 304L FE02 EN 1.4307 (MP438)', '', '2.5', '100', 'FI', 'FE02', '241.3', '-2.4', '2.4', '266.3', '2.7', '-2.7', '266.3', '2.7', '-2.7', '12.5', '0', '0', '-87.67', '238.9', '200', '0', '.5', '269', '200', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '32.41', '32.41', '32.41'),
(197, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4', '91', '78061', '9.5', 'ST24171184', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '280.3', '8', '-88.39', '2', '47.8938', 'MP326', '10800090', 'Fil zeta 8 - FM35 - FI11 KISWIRE (MP326) Qualification en cours', '', '8', '0', 'FZ', 'FI11', '280.3', '-3.4', '3.4', '296.3', '3.6', '-3.6', '296.3', '3.6', '-3.6', '8', '0', '.1', '-88.39', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '252', '2', '20', '', '25.2', '25.2', '25.2'),
(198, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.38', '91', '78061', '9.5', 'ST24171184', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '309.6', '.5', '82.18', '1', '.3309', 'MP239', '12600100', 'Bande tissee 130mm KEVLAR 29 BA01 R=500daN Ref:9083 CHOMARAT pds:44g/m (MP239)', '', '', '', 'RU', 'BA01', '308.3', '-3.8', '3.8', '312.2', '3.8', '-3.8', '312.2', '3.8', '-3.8', '1.95', '0', '0', '82.18', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.7428', '0', '0'),
(199, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.38', '91', '78061', '9.5', 'ST24171184', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '308.6', '.5', '-82.16', '1', '.3298', 'MP239', '12600100', 'Bande tissee 130mm KEVLAR 29 BA01 R=500daN Ref:9083 CHOMARAT pds:44g/m (MP239)', '', '', '', 'RU', 'BA01', '308.3', '-3.8', '3.8', '312.2', '3.8', '-3.8', '312.2', '3.8', '-3.8', '1.95', '0', '0', '-82.16', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.7509', '0', '0'),
(200, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.38', '91', '78061', '9.5', 'ST24171184', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '311.4', '.4', '82.37', '1', '.1447', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '308.3', '-3.8', '3.8', '312.2', '3.8', '-3.8', '312.2', '3.8', '-3.8', '1.95', '0', '0', '82.37', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.1602', '0', '0'),
(201, '', '49.54', '5761', '98096.1170687874', '4.4', 'Sweet', '4.53', '0', '0', '.02', '4.38', '91', '78061', '9.5', 'ST24171184', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '310.6', '.4', '82.35', '1', '.1443', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '308.3', '-3.8', '3.8', '312.2', '3.8', '-3.8', '312.2', '3.8', '-3.8', '1.95', '0', '0', '82.35', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'CHEVRON BANGKA', '', 'EXPLOITATION', '', '2427', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.1663', '0', '0'),
(202, '', '130.59', '2890', '729889.964487792', '5.99', 'Sour', '5.99', '2', '0', '0', '5.34', '91', '78039', '15.74803149606299212598425196850393700787', 'ST40070204', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '420', '12.4', '', '1', '17.4357', 'MP64', '12000020', 'PE MD translucide TP11 ETE-GP-GAC - ASTM1248-89/TY:II/CL:A/CAT:5/GR:P34 (MP64)', '', '', '', 'PL', 'TP11', '420', '-4.2', '4.2', '444.8', '5.4', '-5.4', '444.8', '5.4', '-5.4', '12.4', '-2.5', '2.5', '0', '', '', '0', '1', '', '', '0', '-1', '16.7', '', 'SWIBER CHAMPION WATERFLOOD', '', 'EXPLOITATION', '', '3242', '0', '0', '0', '', '0', '0', '0'),
(203, '', '130.59', '2890', '729889.964487792', '5.99', 'Sour', '5.99', '1', '0', '0', '5.99', '91', '78039', '15.74803149606299212598425196850393700787', 'ST40070204', '0', '', '', '7', 'GEX', '780', '000', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '473.7', '12.8', '', '1', '18.3895', 'MP595', '12000050', 'PE MD jaune TP14 GI-GEX - ASTM1248-89/TY:II/CL:B/CAT:5/GR:P34 (MP595)', '', '', '', 'PL', 'TP14', '473.7', '-6', '6', '499.3', '7.3', '-7.3', '499.3', '7.3', '-7.3', '12.8', '-2.1', '2.1', '0', '', '', '0', '1', '', '', '0', '-1', '17.3', '', 'SWIBER CHAMPION WATERFLOOD', '', 'EXPLOITATION', '', '3242', '0', '0', '0', '', '0', '0', '0'),
(204, '', '130.59', '2890', '729889.964487792', '5.99', 'Sour', '5.99', '0', '0', '0', '5.31', '91', '78039', '15.74803149606299212598425196850393700787', 'ST40070204', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '457.6', '6', '53.82', '58', '60.6928', 'MP317', '10403570', 'Fil plat 14x6 - FM35 - FI09 (MP317)', '', '6', '14', 'FP', 'FI09', '457.6', '-5.7', '5.7', '469.6', '6', '-6', '469.6', '6', '-6', '6', '-.2', '.2', '53.82', '', '', '0', '1', '', '', '0', '-1', '', '', 'SWIBER CHAMPION WATERFLOOD', '', 'EXPLOITATION', '', '3242', '1065.2', '15.9', '1', 'Lubrification : VETO86 \n\r', '1065.2145', '1065.2', '1065.2145'),
(205, '', '130.59', '2890', '729889.964487792', '5.99', 'Sour', '5.99', '0', '0', '0', '5.32', '91', '78039', '15.74803149606299212598425196850393700787', 'ST40070204', '0', '', '', '3', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '444.8', '6', '-53.9', '58', '60.8017', 'MP317', '10403570', 'Fil plat 14x6 - FM35 - FI09 (MP317)', '', '6', '14', 'FP', 'FI09', '444.8', '-5.4', '5.4', '456.8', '5.7', '-5.7', '456.8', '5.7', '-5.7', '6', '-.2', '.2', '-53.9', '', '', '0', '1', '', '', '0', '-1', '', '1.0313', 'SWIBER CHAMPION WATERFLOOD', '', 'EXPLOITATION', '', '3242', '1032.9', '15.4', '1', 'Lubrification : VETO86 \n\r', '1032.8852', '1032.9', '1032.8852'),
(206, '', '130.59', '2890', '729889.964487792', '5.99', 'Sour', '5.99', '0', '0', '0', '5.31', '91', '78039', '15.74803149606299212598425196850393700787', 'ST40070204', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '471.1', '.5', '', '1', '.2639', 'MP240', '12600110', 'Bande tissee 130mm KEVLAR 29 BA01 R=230daN Ref:9081 CHOMARAT pds:24g/m (MP240)', '', '', '', 'RU', 'BA01', '469.6', '-6', '6', '473.7', '6', '-6', '473.7', '6', '-6', '2.05', '0', '0', '0', '', '', '0', '1', '', '', '0', '-1', '', '', 'SWIBER CHAMPION WATERFLOOD', '', 'EXPLOITATION', '', '3242', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.0331', '0', '0'),
(207, '', '130.59', '2890', '729889.964487792', '5.99', 'Sour', '5.99', '0', '0', '0', '5.31', '91', '78039', '15.74803149606299212598425196850393700787', 'ST40070204', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '470.1', '.5', '', '1', '.2633', 'MP240', '12600110', 'Bande tissee 130mm KEVLAR 29 BA01 R=230daN Ref:9081 CHOMARAT pds:24g/m (MP240)', '', '', '', 'RU', 'BA01', '469.6', '-6', '6', '473.7', '6', '-6', '473.7', '6', '-6', '2.05', '0', '0', '0', '', '', '0', '1', '', '', '0', '-1', '', '', 'SWIBER CHAMPION WATERFLOOD', '', 'EXPLOITATION', '', '3242', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.0354', '0', '0'),
(208, '', '130.59', '2890', '729889.964487792', '5.99', 'Sour', '5.99', '0', '0', '0', '5.31', '91', '78039', '15.74803149606299212598425196850393700787', 'ST40070204', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '472.9', '.4', '', '1', '.2196', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '469.6', '-6', '6', '473.7', '6', '-6', '473.7', '6', '-6', '2.05', '0', '0', '0', '', '', '0', '1', '', '', '0', '-1', '', '', 'SWIBER CHAMPION WATERFLOOD', '', 'EXPLOITATION', '', '3242', '0', '0', '0', 'Lubrification : VETO86 \n\r', '130.4997', '0', '0'),
(209, '', '130.59', '2890', '729889.964487792', '5.99', 'Sour', '5.99', '0', '0', '0', '5.31', '91', '78039', '15.74803149606299212598425196850393700787', 'ST40070204', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '472.1', '.4', '', '1', '.2192', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '469.6', '-6', '6', '473.7', '6', '-6', '473.7', '6', '-6', '2.05', '0', '0', '0', '', '', '0', '1', '', '', '0', '-1', '', '', 'SWIBER CHAMPION WATERFLOOD', '', 'EXPLOITATION', '', '3242', '0', '0', '0', 'Lubrification : VETO86 \n\r', '130.5014', '0', '0'),
(210, '', '130.59', '2890', '729889.964487792', '5.99', 'Sour', '5.99', '0', '0', '0', '5.32', '91', '78039', '15.74803149606299212598425196850393700787', 'ST40070204', '0', '', '', '4', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'FABRIC TAPE', 'FABRIC TAPE', '456.8', '.4', '', '1', '.2121', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '456.8', '-5.7', '5.7', '457.6', '5.7', '-5.7', '457.6', '5.7', '-5.7', '.4', '0', '0', '0', '', '', '0', '1', '', '', '0', '-1', '', '', 'SWIBER CHAMPION WATERFLOOD', '', 'EXPLOITATION', '', '3242', '0', '0', '0', 'Lubrification : VETO86 \n\r', '130.5358', '0', '0'),
(211, '', '130.59', '2890', '729889.964487792', '5.99', 'Sour', '5.99', '0', '0', '0', '5.05', '91', '78039', '15.74803149606299212598425196850393700787', 'ST40070204', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '400', '10', '-88.85', '1', '62.4035', 'MP123', '10100410', 'Feuillard inox 2,0x80 AISI 316L FE02 EN 1.4404 (MP123)', '', '2', '80', 'FI', 'FE02', '400', '-4', '4', '420', '4.2', '-4.2', '420', '4.2', '-4.2', '10', '0', '0', '-88.85', '396', '300', '0', '1', '424.2', '300', '0', '-1', '', '', 'SWIBER CHAMPION WATERFLOOD', '', 'EXPLOITATION', '', '3242', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '25.93', '25.93', '25.93'),
(212, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.37', '91', '78016', '10', 'ST25470878', '0', '', '', '4', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '300', '1.5', '79.85', '1', '1.3527', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '300', '-3.7', '3.7', '303', '3.9', '-3.9', '303', '3.9', '-3.9', '1.5', '-.1', '.1', '79.85', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.6578', '169.6578', '169.6578'),
(213, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '1', '-.005', '.01', '4.19', '91', '78016', '10', 'ST25470878', '0', '', '', '9', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '332.14', '8.7', '', '1', '8.8221', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '332.14', '-4.5', '4.5', '349.54', '5.4', '-5.4', '349.54', '5.4', '-5.4', '8.7', '-1.4', '1.4', '', '', '', '0', '.5', '', '', '0', '-.5', '11.7', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(214, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78016', '10', 'ST25470878', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '316', '5', '35.3', '65', '35.0537', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '316', '-4.3', '4.3', '326', '4.5', '-4.5', '326', '4.5', '-4.5', '5', '-.1', '.1', '35.3', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '1425.1', '21.3', '1', 'Lubrification : VETO86 \n\r', '1425.1443', '1425.1', '1425.1443'),
(215, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78016', '10', 'ST25470878', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '303', '5', '-35', '63', '33.8514', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '303', '-3.9', '3.9', '313', '4.1', '-4.1', '313', '4.1', '-4.1', '5', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0313', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '1381.9', '20.7', '1', 'Lubrification : VETO86 \n\r', '1381.8911', '1381.9', '1381.8911'),
(216, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '0', '0', '3.22', '91', '78016', '10', 'ST25470878', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '254', '7.5', '-88.64', '1', '29.8648', 'MP449', '10101630', 'Feuillard inox 1,5x60 duplex FE04 EN 1.4462/ UNS S31803 (MP449)', '', '1.5', '60', 'FI', 'FE04', '254', '-2.5', '2.5', '269', '2.7', '-2.7', '269', '2.7', '-2.7', '7.5', '0', '0', '-88.64', '251.5', '200', '0', '.5', '271.7', '200', '0', '-.5', '', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '19.44', '19.44', '19.44'),
(217, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '2', '0', '0', '3.41', '91', '78016', '10', 'ST25470878', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '269', '7.5', '', '1', '6.8224', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '269', '-2.7', '2.7', '284', '3.5', '-3.5', '284', '3.5', '-3.5', '7.5', '-1.1', '1.1', '', '', '', '0', '.5', '', '', '0', '-.5', '10.1', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(218, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78016', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '329.02', '.76', '82.65', '1', '.5082', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.65', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.5971', '0', '0'),
(219, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78016', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327.5', '.76', '-82.62', '1', '.5059', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.62', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.6074', '0', '0'),
(220, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '3.78', '91', '78016', '10', 'ST25470878', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '284', '8', '-88.41', '2', '48.5272', 'MP234', '10800080', 'Fil zeta 8 - FM35 - FI09  KISWIRE (MP234)', '', '8', '0', 'FZ', 'FI09', '284', '-3.5', '3.5', '300', '3.7', '-3.7', '300', '3.7', '-3.7', '8', '0', '.1', '-88.41', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(221, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78016', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327', '.25', '-82.45', '1', '.1957', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.45', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1792', '0', '0'),
(222, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78016', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326.5', '.25', '-82.44', '1', '.1954', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.44', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1828', '0', '0');
INSERT INTO `imported_project` (`imported_project_id`, `APPLICATION`, `LINEIC_VOLUME_INTERNAL`, `MAX_TEST_PRESSURE`, `BENDING_STIFFNESS`, `FAT_DRUM_DIAMETER`, `SERVICE`, `ST_STORAGE_DRUM_DIAMETER`, `WATERTIGHTNESS`, `MANUFACTURING_ELONGATION_MIN`, `MANUFACTURING_ELONGATION_MAX`, `ENG_STORAGE_DRUM_DIAMETER`, `DOMAIN_ID`, `AFFAIRE`, `DIAINTERST`, `STRUCTURE`, `STRUCTURE_REVISION`, `CDC`, `CDC_STRUCTURE_REVISION`, `NOLIGNE`, `COUCHE`, `CODEOPERATION`, `CODEPREPARATION`, `OPERATION`, `LAYER_NAME`, `LAYER_TYPE_DESCRIPTION`, `LAYER_VARIETY_DESCRIPTION`, `DIAINTER`, `EP`, `ANGLE`, `NOMBREFIL`, `MASSECOUCHE`, `CODEMP`, `CODEMP_IFS`, `DESCRIPTIONMP`, `DESCRIPTIONMPN_2`, `EPMP`, `LARGMP`, `CODEPRODUITGENERIQUE`, `CODEPRODUITUSUEL`, `DIAINTERCOUCHE`, `DIAINTERCOUCHETOLINF`, `DIAINTERCOUCHETOLSUP`, `DIAEXTERCOUCHE`, `DIAEXTERCOUCHETOLSUP`, `DIAEXTERCOUCHETOLINF`, `DIAEXTERNONRETREINT`, `DIAEXTERTOLSUPNONRETREINT`, `DIAEXTERTOLINFNONRETREINT`, `EPCOUCHE`, `EPCOUCHETOLINF`, `EPCOUCHETOLSUP`, `ARMANGLE`, `DIAEXTERCLI`, `LGCLI`, `CLITOLINF`, `CLITOLSUP`, `DIAINTERCLE`, `LGCLE`, `CLETOLSUP`, `CLETOLINF`, `EPMAXICOUCHE`, `ARMPASRATIO`, `NOMAFFAIRE`, `CHAMP`, `INGENIEURAFF`, `DATELIVRAISON`, `MBR`, `PASNOMINAL`, `TOLPASNOMINAL`, `NBTOURCONTROLEPAS`, `COMMENTAIRES`, `MAN_LINEIC_OBJ_MPITCH`, `AVG_PITCH_MAN`, `AVG_PITCH_ENG`) VALUES
(223, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78016', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326', '.25', '-82.43', '1', '.1951', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.43', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1865', '0', '0'),
(224, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78016', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '331.34', '.4', '82.83', '1', '.1539', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.83', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0233', '0', '0'),
(225, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78016', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '330.54', '.4', '82.82', '1', '.1536', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.82', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STOCK PIPES', '', 'EXPLOITATION', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0283', '0', '0'),
(226, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78220', '10', 'ST25470878', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '313', '1.5', '80.27', '1', '1.4111', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '313', '-4.1', '4.1', '316', '4.3', '-4.3', '316', '4.3', '-4.3', '1.5', '-.1', '.1', '80.27', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB FLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.4379', '169.4379', '169.4379'),
(227, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.37', '91', '78220', '10', 'ST25470878', '0', '', '', '4', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '300', '1.5', '79.85', '1', '1.3527', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '300', '-3.7', '3.7', '303', '3.9', '-3.9', '303', '3.9', '-3.9', '1.5', '-.1', '.1', '79.85', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB FLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.6578', '169.6578', '169.6578'),
(228, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '1', '-.005', '.01', '4.19', '91', '78220', '10', 'ST25470878', '0', '', '', '9', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '332.14', '8.7', '', '1', '8.8221', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '332.14', '-4.5', '4.5', '349.54', '5.4', '-5.4', '349.54', '5.4', '-5.4', '8.7', '-1.4', '1.4', '', '', '', '0', '.5', '', '', '0', '-.5', '11.7', '', 'PCSB FLNG', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(229, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78220', '10', 'ST25470878', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '316', '5', '35.3', '65', '35.0537', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '316', '-4.3', '4.3', '326', '4.5', '-4.5', '326', '4.5', '-4.5', '5', '-.1', '.1', '35.3', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB FLNG', '', 'TBD', '', '2395', '1425.1', '21.3', '1', 'Lubrification : VETO86 \n\r', '1425.1443', '1425.1', '1425.1443'),
(230, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78220', '10', 'ST25470878', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '303', '5', '-35', '63', '33.8514', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '303', '-3.9', '3.9', '313', '4.1', '-4.1', '313', '4.1', '-4.1', '5', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0313', 'PCSB FLNG', '', 'TBD', '', '2395', '1381.9', '20.7', '1', 'Lubrification : VETO86 \n\r', '1381.8911', '1381.9', '1381.8911'),
(231, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '0', '0', '3.22', '91', '78220', '10', 'ST25470878', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '254', '7.5', '-88.64', '1', '29.8648', 'MP449', '10101630', 'Feuillard inox 1,5x60 duplex FE04 EN 1.4462/ UNS S31803 (MP449)', '', '1.5', '60', 'FI', 'FE04', '254', '-2.5', '2.5', '269', '2.7', '-2.7', '269', '2.7', '-2.7', '7.5', '0', '0', '-88.64', '251.5', '200', '0', '.5', '271.7', '200', '0', '-.5', '', '', 'PCSB FLNG', '', 'TBD', '', '2395', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '19.44', '19.44', '19.44'),
(232, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '2', '0', '0', '3.41', '91', '78220', '10', 'ST25470878', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '269', '7.5', '', '1', '6.8224', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '269', '-2.7', '2.7', '284', '3.5', '-3.5', '284', '3.5', '-3.5', '7.5', '-1.1', '1.1', '', '', '', '0', '.5', '', '', '0', '-.5', '10.1', '', 'PCSB FLNG', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(233, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78220', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '329.02', '.76', '82.65', '1', '.5082', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.65', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB FLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.5971', '0', '0'),
(234, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78220', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327.5', '.76', '-82.62', '1', '.5059', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.62', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB FLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.6074', '0', '0'),
(235, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '3.78', '91', '78220', '10', 'ST25470878', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '284', '8', '-88.41', '2', '48.5272', 'MP234', '10800080', 'Fil zeta 8 - FM35 - FI09  KISWIRE (MP234)', '', '8', '0', 'FZ', 'FI09', '284', '-3.5', '3.5', '300', '3.7', '-3.7', '300', '3.7', '-3.7', '8', '0', '.1', '-88.41', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB FLNG', '', 'TBD', '', '2395', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(236, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78220', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327', '.25', '-82.45', '1', '.1957', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.45', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB FLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1792', '0', '0'),
(237, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78220', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326.5', '.25', '-82.44', '1', '.1954', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.44', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB FLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1828', '0', '0'),
(238, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78220', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326', '.25', '-82.43', '1', '.1951', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.43', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB FLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1865', '0', '0'),
(239, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78220', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '331.34', '.4', '82.83', '1', '.1539', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.83', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB FLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0233', '0', '0'),
(240, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78220', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '330.54', '.4', '82.82', '1', '.1536', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.82', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB FLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0283', '0', '0'),
(241, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78280', '10', 'ST25470878', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '313', '1.5', '80.27', '1', '1.4111', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '313', '-4.1', '4.1', '316', '4.3', '-4.3', '316', '4.3', '-4.3', '1.5', '-.1', '.1', '80.27', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.4379', '169.4379', '169.4379'),
(242, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.37', '91', '78280', '10', 'ST25470878', '0', '', '', '4', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '300', '1.5', '79.85', '1', '1.3527', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '300', '-3.7', '3.7', '303', '3.9', '-3.9', '303', '3.9', '-3.9', '1.5', '-.1', '.1', '79.85', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.6578', '169.6578', '169.6578'),
(243, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '1', '-.005', '.01', '4.19', '91', '78280', '10', 'ST25470878', '0', '', '', '9', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '332.14', '8.7', '', '1', '8.8221', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '332.14', '-4.5', '4.5', '349.54', '5.4', '-5.4', '349.54', '5.4', '-5.4', '8.7', '-1.4', '1.4', '', '', '', '0', '.5', '', '', '0', '-.5', '11.7', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(244, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78280', '10', 'ST25470878', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '316', '5', '35.3', '65', '35.0537', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '316', '-4.3', '4.3', '326', '4.5', '-4.5', '326', '4.5', '-4.5', '5', '-.1', '.1', '35.3', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '1425.1', '21.3', '1', 'Lubrification : VETO86 \n\r', '1425.1443', '1425.1', '1425.1443'),
(245, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78280', '10', 'ST25470878', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '303', '5', '-35', '63', '33.8514', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '303', '-3.9', '3.9', '313', '4.1', '-4.1', '313', '4.1', '-4.1', '5', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0313', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '1381.9', '20.7', '1', 'Lubrification : VETO86 \n\r', '1381.8911', '1381.9', '1381.8911'),
(246, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '0', '0', '3.22', '91', '78280', '10', 'ST25470878', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '254', '7.5', '-88.64', '1', '29.8648', 'MP449', '10101630', 'Feuillard inox 1,5x60 duplex FE04 EN 1.4462/ UNS S31803 (MP449)', '', '1.5', '60', 'FI', 'FE04', '254', '-2.5', '2.5', '269', '2.7', '-2.7', '269', '2.7', '-2.7', '7.5', '0', '0', '-88.64', '251.5', '200', '0', '.5', '271.7', '200', '0', '-.5', '', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '19.44', '19.44', '19.44'),
(247, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '2', '0', '0', '3.41', '91', '78280', '10', 'ST25470878', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '269', '7.5', '', '1', '6.8224', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '269', '-2.7', '2.7', '284', '3.5', '-3.5', '284', '3.5', '-3.5', '7.5', '-1.1', '1.1', '', '', '', '0', '.5', '', '', '0', '-.5', '10.1', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(248, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78280', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '329.02', '.76', '82.65', '1', '.5082', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.65', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.5971', '0', '0'),
(249, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78280', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327.5', '.76', '-82.62', '1', '.5059', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.62', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.6074', '0', '0'),
(250, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '3.78', '91', '78280', '10', 'ST25470878', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '284', '8', '-88.41', '2', '48.5272', 'MP234', '10800080', 'Fil zeta 8 - FM35 - FI09  KISWIRE (MP234)', '', '8', '0', 'FZ', 'FI09', '284', '-3.5', '3.5', '300', '3.7', '-3.7', '300', '3.7', '-3.7', '8', '0', '.1', '-88.41', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(251, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78280', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327', '.25', '-82.45', '1', '.1957', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.45', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1792', '0', '0'),
(252, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78280', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326.5', '.25', '-82.44', '1', '.1954', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.44', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1828', '0', '0'),
(253, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78280', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326', '.25', '-82.43', '1', '.1951', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.43', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1865', '0', '0'),
(254, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78280', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '331.34', '.4', '82.83', '1', '.1539', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.83', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0233', '0', '0'),
(255, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78280', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '330.54', '.4', '82.82', '1', '.1536', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.82', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'STARENERGY KAKAP NATUNA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0283', '0', '0'),
(256, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78353', '10', 'ST25470878', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '313', '1.5', '80.27', '1', '1.4111', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '313', '-4.1', '4.1', '316', '4.3', '-4.3', '316', '4.3', '-4.3', '1.5', '-.1', '.1', '80.27', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.4379', '169.4379', '169.4379'),
(257, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.37', '91', '78353', '10', 'ST25470878', '0', '', '', '4', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '300', '1.5', '79.85', '1', '1.3527', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '300', '-3.7', '3.7', '303', '3.9', '-3.9', '303', '3.9', '-3.9', '1.5', '-.1', '.1', '79.85', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.6578', '169.6578', '169.6578'),
(258, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '1', '-.005', '.01', '4.19', '91', '78353', '10', 'ST25470878', '0', '', '', '9', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '332.14', '8.7', '', '1', '8.8221', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '332.14', '-4.5', '4.5', '349.54', '5.4', '-5.4', '349.54', '5.4', '-5.4', '8.7', '-1.4', '1.4', '', '', '', '0', '.5', '', '', '0', '-.5', '11.7', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(259, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78353', '10', 'ST25470878', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '316', '5', '35.3', '65', '35.0537', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '316', '-4.3', '4.3', '326', '4.5', '-4.5', '326', '4.5', '-4.5', '5', '-.1', '.1', '35.3', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '1425.1', '21.3', '1', 'Lubrification : VETO86 \n\r', '1425.1443', '1425.1', '1425.1443'),
(260, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78353', '10', 'ST25470878', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '303', '5', '-35', '63', '33.8514', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '303', '-3.9', '3.9', '313', '4.1', '-4.1', '313', '4.1', '-4.1', '5', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0313', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '1381.9', '20.7', '1', 'Lubrification : VETO86 \n\r', '1381.8911', '1381.9', '1381.8911'),
(261, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '0', '0', '3.22', '91', '78353', '10', 'ST25470878', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '254', '7.5', '-88.64', '1', '29.8648', 'MP449', '10101630', 'Feuillard inox 1,5x60 duplex FE04 EN 1.4462/ UNS S31803 (MP449)', '', '1.5', '60', 'FI', 'FE04', '254', '-2.5', '2.5', '269', '2.7', '-2.7', '269', '2.7', '-2.7', '7.5', '0', '0', '-88.64', '251.5', '200', '0', '.5', '271.7', '200', '0', '-.5', '', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '19.44', '19.44', '19.44'),
(262, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '2', '0', '0', '3.41', '91', '78353', '10', 'ST25470878', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '269', '7.5', '', '1', '6.8224', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '269', '-2.7', '2.7', '284', '3.5', '-3.5', '284', '3.5', '-3.5', '7.5', '-1.1', '1.1', '', '', '', '0', '.5', '', '', '0', '-.5', '10.1', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(263, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78353', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '329.02', '.76', '82.65', '1', '.5082', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.65', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.5971', '0', '0'),
(264, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78353', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327.5', '.76', '-82.62', '1', '.5059', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.62', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.6074', '0', '0'),
(265, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '3.78', '91', '78353', '10', 'ST25470878', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '284', '8', '-88.41', '2', '48.5272', 'MP234', '10800080', 'Fil zeta 8 - FM35 - FI09  KISWIRE (MP234)', '', '8', '0', 'FZ', 'FI09', '284', '-3.5', '3.5', '300', '3.7', '-3.7', '300', '3.7', '-3.7', '8', '0', '.1', '-88.41', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(266, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78353', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327', '.25', '-82.45', '1', '.1957', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.45', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1792', '0', '0'),
(267, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78353', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326.5', '.25', '-82.44', '1', '.1954', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.44', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1828', '0', '0'),
(268, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78353', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326', '.25', '-82.43', '1', '.1951', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.43', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1865', '0', '0'),
(269, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78353', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '331.34', '.4', '82.83', '1', '.1539', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.83', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0233', '0', '0'),
(270, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78353', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '330.54', '.4', '82.82', '1', '.1536', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.82', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PCSB KANOWIT PFLNG', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0283', '0', '0'),
(271, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78379', '10', 'ST25470878', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '313', '1.5', '80.27', '1', '1.4111', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '313', '-4.1', '4.1', '316', '4.3', '-4.3', '316', '4.3', '-4.3', '1.5', '-.1', '.1', '80.27', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.4379', '169.4379', '169.4379'),
(272, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.37', '91', '78379', '10', 'ST25470878', '0', '', '', '4', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '300', '1.5', '79.85', '1', '1.3527', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '300', '-3.7', '3.7', '303', '3.9', '-3.9', '303', '3.9', '-3.9', '1.5', '-.1', '.1', '79.85', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.6578', '169.6578', '169.6578'),
(273, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '1', '-.005', '.01', '4.19', '91', '78379', '10', 'ST25470878', '0', '', '', '9', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '332.14', '8.7', '', '1', '8.8221', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '332.14', '-4.5', '4.5', '349.54', '5.4', '-5.4', '349.54', '5.4', '-5.4', '8.7', '-1.4', '1.4', '', '', '', '0', '.5', '', '', '0', '-.5', '11.7', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(274, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78379', '10', 'ST25470878', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '316', '5', '35.3', '65', '35.0537', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '316', '-4.3', '4.3', '326', '4.5', '-4.5', '326', '4.5', '-4.5', '5', '-.1', '.1', '35.3', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '1425.1', '21.3', '1', 'Lubrification : VETO86 \n\r', '1425.1443', '1425.1', '1425.1443'),
(275, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78379', '10', 'ST25470878', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '303', '5', '-35', '63', '33.8514', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '303', '-3.9', '3.9', '313', '4.1', '-4.1', '313', '4.1', '-4.1', '5', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0313', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '1381.9', '20.7', '1', 'Lubrification : VETO86 \n\r', '1381.8911', '1381.9', '1381.8911'),
(276, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '0', '0', '3.22', '91', '78379', '10', 'ST25470878', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '254', '7.5', '-88.64', '1', '29.8648', 'MP449', '10101630', 'Feuillard inox 1,5x60 duplex FE04 EN 1.4462/ UNS S31803 (MP449)', '', '1.5', '60', 'FI', 'FE04', '254', '-2.5', '2.5', '269', '2.7', '-2.7', '269', '2.7', '-2.7', '7.5', '0', '0', '-88.64', '251.5', '200', '0', '.5', '271.7', '200', '0', '-.5', '', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '19.44', '19.44', '19.44'),
(277, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '2', '0', '0', '3.41', '91', '78379', '10', 'ST25470878', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '269', '7.5', '', '1', '6.8224', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '269', '-2.7', '2.7', '284', '3.5', '-3.5', '284', '3.5', '-3.5', '7.5', '-1.1', '1.1', '', '', '', '0', '.5', '', '', '0', '-.5', '10.1', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(278, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78379', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '329.02', '.76', '82.65', '1', '.5082', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.65', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.5971', '0', '0'),
(279, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78379', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327.5', '.76', '-82.62', '1', '.5059', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.62', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.6074', '0', '0'),
(280, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '3.78', '91', '78379', '10', 'ST25470878', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '284', '8', '-88.41', '2', '48.5272', 'MP234', '10800080', 'Fil zeta 8 - FM35 - FI09  KISWIRE (MP234)', '', '8', '0', 'FZ', 'FI09', '284', '-3.5', '3.5', '300', '3.7', '-3.7', '300', '3.7', '-3.7', '8', '0', '.1', '-88.41', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(281, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78379', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327', '.25', '-82.45', '1', '.1957', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.45', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1792', '0', '0'),
(282, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78379', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326.5', '.25', '-82.44', '1', '.1954', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.44', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1828', '0', '0'),
(283, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78379', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326', '.25', '-82.43', '1', '.1951', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.43', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1865', '0', '0'),
(284, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78379', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '331.34', '.4', '82.83', '1', '.1539', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.83', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0233', '0', '0'),
(285, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78379', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '330.54', '.4', '82.82', '1', '.1536', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.82', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'WOODSIDE CWLH (OKHA)', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0283', '0', '0'),
(286, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78382', '10', 'ST25470878', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '313', '1.5', '80.27', '1', '1.4111', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '313', '-4.1', '4.1', '316', '4.3', '-4.3', '316', '4.3', '-4.3', '1.5', '-.1', '.1', '80.27', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.4379', '169.4379', '169.4379'),
(287, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.37', '91', '78382', '10', 'ST25470878', '0', '', '', '4', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '300', '1.5', '79.85', '1', '1.3527', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '300', '-3.7', '3.7', '303', '3.9', '-3.9', '303', '3.9', '-3.9', '1.5', '-.1', '.1', '79.85', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.6578', '169.6578', '169.6578'),
(288, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '1', '-.005', '.01', '4.19', '91', '78382', '10', 'ST25470878', '0', '', '', '9', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '332.14', '8.7', '', '1', '8.8221', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '332.14', '-4.5', '4.5', '349.54', '5.4', '-5.4', '349.54', '5.4', '-5.4', '8.7', '-1.4', '1.4', '', '', '', '0', '.5', '', '', '0', '-.5', '11.7', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(289, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78382', '10', 'ST25470878', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '316', '5', '35.3', '65', '35.0537', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '316', '-4.3', '4.3', '326', '4.5', '-4.5', '326', '4.5', '-4.5', '5', '-.1', '.1', '35.3', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '1425.1', '21.3', '1', 'Lubrification : VETO86 \n\r', '1425.1443', '1425.1', '1425.1443'),
(290, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78382', '10', 'ST25470878', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '303', '5', '-35', '63', '33.8514', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '303', '-3.9', '3.9', '313', '4.1', '-4.1', '313', '4.1', '-4.1', '5', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0313', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '1381.9', '20.7', '1', 'Lubrification : VETO86 \n\r', '1381.8911', '1381.9', '1381.8911'),
(291, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '0', '0', '3.22', '91', '78382', '10', 'ST25470878', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '254', '7.5', '-88.64', '1', '29.8648', 'MP449', '10101630', 'Feuillard inox 1,5x60 duplex FE04 EN 1.4462/ UNS S31803 (MP449)', '', '1.5', '60', 'FI', 'FE04', '254', '-2.5', '2.5', '269', '2.7', '-2.7', '269', '2.7', '-2.7', '7.5', '0', '0', '-88.64', '251.5', '200', '0', '.5', '271.7', '200', '0', '-.5', '', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '19.44', '19.44', '19.44'),
(292, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '2', '0', '0', '3.41', '91', '78382', '10', 'ST25470878', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '269', '7.5', '', '1', '6.8224', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '269', '-2.7', '2.7', '284', '3.5', '-3.5', '284', '3.5', '-3.5', '7.5', '-1.1', '1.1', '', '', '', '0', '.5', '', '', '0', '-.5', '10.1', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(293, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78382', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '329.02', '.76', '82.65', '1', '.5082', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.65', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.5971', '0', '0'),
(294, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78382', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327.5', '.76', '-82.62', '1', '.5059', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.62', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.6074', '0', '0'),
(295, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '3.78', '91', '78382', '10', 'ST25470878', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '284', '8', '-88.41', '2', '48.5272', 'MP234', '10800080', 'Fil zeta 8 - FM35 - FI09  KISWIRE (MP234)', '', '8', '0', 'FZ', 'FI09', '284', '-3.5', '3.5', '300', '3.7', '-3.7', '300', '3.7', '-3.7', '8', '0', '.1', '-88.41', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(296, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78382', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327', '.25', '-82.45', '1', '.1957', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.45', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1792', '0', '0'),
(297, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78382', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326.5', '.25', '-82.44', '1', '.1954', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.44', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1828', '0', '0'),
(298, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78382', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326', '.25', '-82.43', '1', '.1951', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.43', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1865', '0', '0');
INSERT INTO `imported_project` (`imported_project_id`, `APPLICATION`, `LINEIC_VOLUME_INTERNAL`, `MAX_TEST_PRESSURE`, `BENDING_STIFFNESS`, `FAT_DRUM_DIAMETER`, `SERVICE`, `ST_STORAGE_DRUM_DIAMETER`, `WATERTIGHTNESS`, `MANUFACTURING_ELONGATION_MIN`, `MANUFACTURING_ELONGATION_MAX`, `ENG_STORAGE_DRUM_DIAMETER`, `DOMAIN_ID`, `AFFAIRE`, `DIAINTERST`, `STRUCTURE`, `STRUCTURE_REVISION`, `CDC`, `CDC_STRUCTURE_REVISION`, `NOLIGNE`, `COUCHE`, `CODEOPERATION`, `CODEPREPARATION`, `OPERATION`, `LAYER_NAME`, `LAYER_TYPE_DESCRIPTION`, `LAYER_VARIETY_DESCRIPTION`, `DIAINTER`, `EP`, `ANGLE`, `NOMBREFIL`, `MASSECOUCHE`, `CODEMP`, `CODEMP_IFS`, `DESCRIPTIONMP`, `DESCRIPTIONMPN_2`, `EPMP`, `LARGMP`, `CODEPRODUITGENERIQUE`, `CODEPRODUITUSUEL`, `DIAINTERCOUCHE`, `DIAINTERCOUCHETOLINF`, `DIAINTERCOUCHETOLSUP`, `DIAEXTERCOUCHE`, `DIAEXTERCOUCHETOLSUP`, `DIAEXTERCOUCHETOLINF`, `DIAEXTERNONRETREINT`, `DIAEXTERTOLSUPNONRETREINT`, `DIAEXTERTOLINFNONRETREINT`, `EPCOUCHE`, `EPCOUCHETOLINF`, `EPCOUCHETOLSUP`, `ARMANGLE`, `DIAEXTERCLI`, `LGCLI`, `CLITOLINF`, `CLITOLSUP`, `DIAINTERCLE`, `LGCLE`, `CLETOLSUP`, `CLETOLINF`, `EPMAXICOUCHE`, `ARMPASRATIO`, `NOMAFFAIRE`, `CHAMP`, `INGENIEURAFF`, `DATELIVRAISON`, `MBR`, `PASNOMINAL`, `TOLPASNOMINAL`, `NBTOURCONTROLEPAS`, `COMMENTAIRES`, `MAN_LINEIC_OBJ_MPITCH`, `AVG_PITCH_MAN`, `AVG_PITCH_ENG`) VALUES
(299, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78382', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '331.34', '.4', '82.83', '1', '.1539', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.83', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0233', '0', '0'),
(300, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78382', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '330.54', '.4', '82.82', '1', '.1536', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.82', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'ESSO AUSTRALIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0283', '0', '0'),
(301, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78383', '10', 'ST25470878', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '313', '1.5', '80.27', '1', '1.4111', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '313', '-4.1', '4.1', '316', '4.3', '-4.3', '316', '4.3', '-4.3', '1.5', '-.1', '.1', '80.27', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.4379', '169.4379', '169.4379'),
(302, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.37', '91', '78383', '10', 'ST25470878', '0', '', '', '4', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '300', '1.5', '79.85', '1', '1.3527', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '300', '-3.7', '3.7', '303', '3.9', '-3.9', '303', '3.9', '-3.9', '1.5', '-.1', '.1', '79.85', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.6578', '169.6578', '169.6578'),
(303, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '1', '-.005', '.01', '4.19', '91', '78383', '10', 'ST25470878', '0', '', '', '9', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '332.14', '8.7', '', '1', '8.8221', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '332.14', '-4.5', '4.5', '349.54', '5.4', '-5.4', '349.54', '5.4', '-5.4', '8.7', '-1.4', '1.4', '', '', '', '0', '.5', '', '', '0', '-.5', '11.7', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(304, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78383', '10', 'ST25470878', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '316', '5', '35.3', '65', '35.0537', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '316', '-4.3', '4.3', '326', '4.5', '-4.5', '326', '4.5', '-4.5', '5', '-.1', '.1', '35.3', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '1425.1', '21.3', '1', 'Lubrification : VETO86 \n\r', '1425.1443', '1425.1', '1425.1443'),
(305, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78383', '10', 'ST25470878', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '303', '5', '-35', '63', '33.8514', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '303', '-3.9', '3.9', '313', '4.1', '-4.1', '313', '4.1', '-4.1', '5', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0313', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '1381.9', '20.7', '1', 'Lubrification : VETO86 \n\r', '1381.8911', '1381.9', '1381.8911'),
(306, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '0', '0', '3.22', '91', '78383', '10', 'ST25470878', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '254', '7.5', '-88.64', '1', '29.8648', 'MP449', '10101630', 'Feuillard inox 1,5x60 duplex FE04 EN 1.4462/ UNS S31803 (MP449)', '', '1.5', '60', 'FI', 'FE04', '254', '-2.5', '2.5', '269', '2.7', '-2.7', '269', '2.7', '-2.7', '7.5', '0', '0', '-88.64', '251.5', '200', '0', '.5', '271.7', '200', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '19.44', '19.44', '19.44'),
(307, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '2', '0', '0', '3.41', '91', '78383', '10', 'ST25470878', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '269', '7.5', '', '1', '6.8224', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '269', '-2.7', '2.7', '284', '3.5', '-3.5', '284', '3.5', '-3.5', '7.5', '-1.1', '1.1', '', '', '', '0', '.5', '', '', '0', '-.5', '10.1', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(308, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78383', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '329.02', '.76', '82.65', '1', '.5082', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.65', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.5971', '0', '0'),
(309, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78383', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327.5', '.76', '-82.62', '1', '.5059', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.62', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.6074', '0', '0'),
(310, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '3.78', '91', '78383', '10', 'ST25470878', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '284', '8', '-88.41', '2', '48.5272', 'MP234', '10800080', 'Fil zeta 8 - FM35 - FI09  KISWIRE (MP234)', '', '8', '0', 'FZ', 'FI09', '284', '-3.5', '3.5', '300', '3.7', '-3.7', '300', '3.7', '-3.7', '8', '0', '.1', '-88.41', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(311, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78383', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327', '.25', '-82.45', '1', '.1957', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.45', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1792', '0', '0'),
(312, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78383', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326.5', '.25', '-82.44', '1', '.1954', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.44', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1828', '0', '0'),
(313, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78383', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326', '.25', '-82.43', '1', '.1951', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.43', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1865', '0', '0'),
(314, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78383', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '331.34', '.4', '82.83', '1', '.1539', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.83', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0233', '0', '0'),
(315, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78383', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '330.54', '.4', '82.82', '1', '.1536', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.82', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0283', '0', '0'),
(316, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78390', '10', 'ST25470878', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '313', '1.5', '80.27', '1', '1.4111', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '313', '-4.1', '4.1', '316', '4.3', '-4.3', '316', '4.3', '-4.3', '1.5', '-.1', '.1', '80.27', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.4379', '169.4379', '169.4379'),
(317, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.37', '91', '78390', '10', 'ST25470878', '0', '', '', '4', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '300', '1.5', '79.85', '1', '1.3527', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '300', '-3.7', '3.7', '303', '3.9', '-3.9', '303', '3.9', '-3.9', '1.5', '-.1', '.1', '79.85', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.6578', '169.6578', '169.6578'),
(318, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '1', '-.005', '.01', '4.19', '91', '78390', '10', 'ST25470878', '0', '', '', '9', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '332.14', '8.7', '', '1', '8.8221', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '332.14', '-4.5', '4.5', '349.54', '5.4', '-5.4', '349.54', '5.4', '-5.4', '8.7', '-1.4', '1.4', '', '', '', '0', '.5', '', '', '0', '-.5', '11.7', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(319, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78390', '10', 'ST25470878', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '316', '5', '35.3', '65', '35.0537', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '316', '-4.3', '4.3', '326', '4.5', '-4.5', '326', '4.5', '-4.5', '5', '-.1', '.1', '35.3', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '1425.1', '21.3', '1', 'Lubrification : VETO86 \n\r', '1425.1443', '1425.1', '1425.1443'),
(320, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78390', '10', 'ST25470878', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '303', '5', '-35', '63', '33.8514', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '303', '-3.9', '3.9', '313', '4.1', '-4.1', '313', '4.1', '-4.1', '5', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0313', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '1381.9', '20.7', '1', 'Lubrification : VETO86 \n\r', '1381.8911', '1381.9', '1381.8911'),
(321, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '0', '0', '3.22', '91', '78390', '10', 'ST25470878', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '254', '7.5', '-88.64', '1', '29.8648', 'MP449', '10101630', 'Feuillard inox 1,5x60 duplex FE04 EN 1.4462/ UNS S31803 (MP449)', '', '1.5', '60', 'FI', 'FE04', '254', '-2.5', '2.5', '269', '2.7', '-2.7', '269', '2.7', '-2.7', '7.5', '0', '0', '-88.64', '251.5', '200', '0', '.5', '271.7', '200', '0', '-.5', '', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '19.44', '19.44', '19.44'),
(322, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '2', '0', '0', '3.41', '91', '78390', '10', 'ST25470878', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '269', '7.5', '', '1', '6.8224', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '269', '-2.7', '2.7', '284', '3.5', '-3.5', '284', '3.5', '-3.5', '7.5', '-1.1', '1.1', '', '', '', '0', '.5', '', '', '0', '-.5', '10.1', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(323, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78390', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '329.02', '.76', '82.65', '1', '.5082', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.65', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.5971', '0', '0'),
(324, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78390', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327.5', '.76', '-82.62', '1', '.5059', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.62', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.6074', '0', '0'),
(325, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '3.78', '91', '78390', '10', 'ST25470878', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '284', '8', '-88.41', '2', '48.5272', 'MP234', '10800080', 'Fil zeta 8 - FM35 - FI09  KISWIRE (MP234)', '', '8', '0', 'FZ', 'FI09', '284', '-3.5', '3.5', '300', '3.7', '-3.7', '300', '3.7', '-3.7', '8', '0', '.1', '-88.41', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(326, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78390', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327', '.25', '-82.45', '1', '.1957', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.45', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1792', '0', '0'),
(327, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78390', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326.5', '.25', '-82.44', '1', '.1954', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.44', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1828', '0', '0'),
(328, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78390', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326', '.25', '-82.43', '1', '.1951', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.43', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1865', '0', '0'),
(329, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78390', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '331.34', '.4', '82.83', '1', '.1539', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.83', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0233', '0', '0'),
(330, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78390', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '330.54', '.4', '82.82', '1', '.1536', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.82', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETROFAC WEST DESARU', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0283', '0', '0'),
(331, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78500', '10', 'ST25470878', '0', '', '', '6', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '313', '1.5', '80.27', '1', '1.4111', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '313', '-4.1', '4.1', '316', '4.3', '-4.3', '316', '4.3', '-4.3', '1.5', '-.1', '.1', '80.27', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.4379', '169.4379', '169.4379'),
(332, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.37', '91', '78500', '10', 'ST25470878', '0', '', '', '4', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'BANDE ANTI FRICTION', 'BANDE ANTI-FRICTION', '300', '1.5', '79.85', '1', '1.3527', 'MP978', '12600600', 'Bande anti usure 75x1,5mm PIPELON BF01 bobine Joly (MP978)', '', '', '', 'RU', 'BF01', '300', '-3.7', '3.7', '303', '3.9', '-3.9', '303', '3.9', '-3.9', '1.5', '-.1', '.1', '79.85', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '169.6578', '169.6578', '169.6578'),
(333, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '1', '-.005', '.01', '4.19', '91', '78500', '10', 'ST25470878', '0', '', '', '9', 'GEX', '780', '778', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '332.14', '8.7', '', '1', '8.8221', 'MP968', '11800020', 'TP FLEX TP26/TP27 (MP968)', '', '', '', 'TP', 'TP27', '332.14', '-4.5', '4.5', '349.54', '5.4', '-5.4', '349.54', '5.4', '-5.4', '8.7', '-1.4', '1.4', '', '', '', '0', '.5', '', '', '0', '-.5', '11.7', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(334, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78500', '10', 'ST25470878', '0', '', '', '7', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '316', '5', '35.3', '65', '35.0537', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '316', '-4.3', '4.3', '326', '4.5', '-4.5', '326', '4.5', '-4.5', '5', '-.1', '.1', '35.3', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '1425.1', '21.3', '1', 'Lubrification : VETO86 \n\r', '1425.1443', '1425.1', '1425.1443'),
(335, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.36', '91', '78500', '10', 'ST25470878', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '303', '5', '-35', '63', '33.8514', 'MP581', '10404110', 'Fil plat 12x5 - FM35 - FI09 (MP581)', '', '5', '12', 'FP', 'FI09', '303', '-3.9', '3.9', '313', '4.1', '-4.1', '313', '4.1', '-4.1', '5', '-.1', '.1', '-35', '', '', '0', '.5', '', '', '0', '-.5', '', '1.0313', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '1381.9', '20.7', '1', 'Lubrification : VETO86 \n\r', '1381.8911', '1381.9', '1381.8911'),
(336, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '0', '0', '3.22', '91', '78500', '10', 'ST25470878', '0', '', '', '1', 'PC', '060', '000', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '254', '7.5', '-88.64', '1', '29.8648', 'MP449', '10101630', 'Feuillard inox 1,5x60 duplex FE04 EN 1.4462/ UNS S31803 (MP449)', '', '1.5', '60', 'FI', 'FE04', '254', '-2.5', '2.5', '269', '2.7', '-2.7', '269', '2.7', '-2.7', '7.5', '0', '0', '-88.64', '251.5', '200', '0', '.5', '271.7', '200', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', '\n\rJeffa PCRM7 ou WynnDraw sp30 ( LP851 )', '19.44', '19.44', '19.44'),
(337, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '2', '0', '0', '3.41', '91', '78500', '10', 'ST25470878', '0', '', '', '2', 'GP', '140', '000', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '269', '7.5', '', '1', '6.8224', 'MP406', '12000040', 'PE CROSSFLEX TP10 (MP406)', '', '', '', 'PL', 'TP10', '269', '-2.7', '2.7', '284', '3.5', '-3.5', '284', '3.5', '-3.5', '7.5', '-1.1', '1.1', '', '', '', '0', '.5', '', '', '0', '-.5', '10.1', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', '', '0', '0', '0'),
(338, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78500', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '329.02', '.76', '82.65', '1', '.5082', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.65', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.5971', '0', '0'),
(339, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78500', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327.5', '.76', '-82.62', '1', '.5059', 'MP324', '12600160', 'Bande tissee 130mm TECHNORA BA10 R=840daN Ref:9248 CHOMARAT TRAME VERRE (MP324)', '', '', '', 'RU', 'BA10', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.62', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '133.6074', '0', '0'),
(340, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '3.78', '91', '78500', '10', 'ST25470878', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '284', '8', '-88.41', '2', '48.5272', 'MP234', '10800080', 'Fil zeta 8 - FM35 - FI09  KISWIRE (MP234)', '', '8', '0', 'FZ', 'FI09', '284', '-3.5', '3.5', '300', '3.7', '-3.7', '300', '3.7', '-3.7', '8', '0', '.1', '-88.41', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '253', '2', '20', '', '25.3', '25.3', '25.3'),
(341, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78500', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '327', '.25', '-82.45', '1', '.1957', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.45', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1792', '0', '0'),
(342, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78500', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326.5', '.25', '-82.44', '1', '.1954', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.44', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1828', '0', '0'),
(343, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78500', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '326', '.25', '-82.43', '1', '.1951', 'MP146', '12500010', 'Ruban adhesif 145mmx3000m BA07 (MP146)', '', '', '', 'RU', 'BA07', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '-82.43', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.1865', '0', '0'),
(344, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78500', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '331.34', '.4', '82.83', '1', '.1539', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.83', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0233', '0', '0'),
(345, '', '53.03', '5084', '109916.160346838', '4.22', 'Sour', '4.45', '0', '-.005', '.015', '4.35', '91', '78500', '10', 'ST25470878', '0', '', '', '8', 'A1', '420', '000', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '330.54', '.4', '82.82', '1', '.1536', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '326', '-4.5', '4.5', '332.14', '4.5', '-4.5', '332.14', '4.5', '-4.5', '3.07', '0', '0', '82.82', '', '', '0', '.5', '', '', '0', '-.5', '', '', 'PETRONAS INDONESIA', '', 'TBD', '', '2395', '0', '0', '0', 'Lubrification : VETO86 \n\r', '131.0283', '0', '0');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `layer_tool`
--

INSERT INTO `layer_tool` (`layer_tool_id`, `layer_id`, `tool_id`, `priority`) VALUES
(1, 1, 1, 6),
(2, 1, 3, 5),
(11, 2, 7, 0),
(4, 1, 5, 4),
(5, 1, 6, 1),
(6, 1, 4, 2),
(7, 1, 2, 3),
(8, 5, 7, 0),
(9, 5, 9, 1),
(10, 5, 8, 2),
(12, 2, 9, 1),
(13, 2, 8, 2),
(14, 6, 7, 0),
(15, 6, 9, 1),
(16, 6, 8, 2),
(17, 1, 10, 0);

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
  `nom_pitch` varchar(200) DEFAULT '0',
  `oil1` varchar(200) DEFAULT '0',
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`material_id`, `material_code`, `type_of_production`, `type_of_production_size`, `code_one`, `code_two`, `ref_num`, `crimping_rollers`, `max_scroll_speed`, `nom_pitch`, `oil1`, `category_id`) VALUES
(1, 'MP10', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'AISI 304', 'FE02', '0', '0', '0', '16.71', '0', 0),
(2, 'MP4', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'AISI 304', 'FE02', '5416', '0', '0', '16.71', '0', 0),
(3, 'MP5', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'AISI 304', 'FE02', '5415', '0', '0', '16.71', '0', 1),
(4, 'MP8', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'AISI 304', 'FE02', '0', '0', '0', '16.71', '0', 0),
(5, 'MP9', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'AISI 304', 'FE02', '0', '0', '0', '16.71', '0', 0),
(6, 'MP80', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'AISI 304', 'FE02', '0', '0', '0', '16.71', '0', 0),
(7, 'MP145', 'STEEL STRIP STAINLESS STEEL', '2.5 x 100', 'AISI 304', 'FE02', '0', '0', '0', '16.71', '0', 0),
(8, 'MP723', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'AISI 304', 'FE02', '0', '0', '0', '16.71', '0', 0),
(9, 'MP100', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'AISI 304L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(10, 'MP105', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'AISI 304L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(11, 'MP106', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'AISI 304L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(12, 'MP108', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'AISI 304L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(13, 'MP438', 'STEEL STRIP STAINLESS STEEL', '2.5 x 100', 'AISI 304L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(14, 'MP633', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'AISI 304L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(15, 'MP708', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'AISI 304L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(16, 'MP119', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'AISI 316L', 'FE02', '5416', '0', '0', '16.71', '0', 0),
(17, 'MP121', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'AISI 316L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(18, 'MP122', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'AISI 316L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(19, 'MP123', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'AISI 316L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(20, 'MP169', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'AISI 316L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(21, 'MP693', 'STEEL STRIP STAINLESS STEEL', '2.5 x 100', 'AISI 316L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(22, 'MP91', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'AISI 316L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(23, 'MP99', 'STEEL STRIP STAINLESS STEEL', '40 X 0.8 ', 'AISI 304L', 'FE02', '0', '0', '0', '14.33', '0', 0),
(24, 'MP716', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'AISI 316L', 'FE02', '0', '0', '0', '16.71', '0', 0),
(25, 'MP886', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'DUPLEX 2304', 'FE08', '0', '0', '0', '16.71', '0', 0),
(26, 'MP887', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'DUPLEX 2304', 'FE08', '0', '0', '0', '16.71', '0', 0),
(27, 'MP888', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'DUPLEX 2304', 'FE08', '0', '0', '0', '16.71', '0', 0),
(28, 'MP907', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'DUPLEX 2304', 'FE08', '0', '0', '0', '16.71', '0', 0),
(29, 'MP910', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'DUPLEX 2304', 'FE08', '0', '0', '0', '16.71', '0', 0),
(30, 'MP911', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'DUPLEX 2304', 'FE08', '5416', '0', '0', '16.71', '0', 0),
(31, 'MP923', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'DUPLEX 2304', 'FE08', '0', '0', '0', '16.71', '0', 0),
(32, 'MP930', 'STEEL STRIP STAINLESS STEEL', '2.5 x 10', '0 DUPLEX 2304', 'FE08', '0', '0', '0', '16.71', '0', 0),
(33, 'MP950', 'STEEL STRIP STAINLESS STEEL', '0.7 x 28', 'DUPLEX 2304', 'FE08', '0', '0', '0', '16.71', '0', 0),
(34, 'MP449', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'DUPLEX 2205', 'FE04', '0', '0', '0', '16.71', '0', 0),
(35, 'MP144', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'DUPLEX 2205', 'FE04', '0', '0', '0', '16.71', '0', 0),
(36, 'MP180', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'DUPLEX 2205', 'FE04', '0', '0', '0', '16.71', '0', 0),
(37, 'MP196', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'DUPLEX 2205', 'FE04', '5416', '0', '0', '16.71', '0', 0),
(38, 'MP454', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'DUPLEX 2205', 'FE04', '0', '0', '0', '16.71', '0', 0),
(39, 'MP460', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'DUPLEX 2205', 'FE04', '5416', '0', '0', '16.71', '0', 0),
(40, 'MP461', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'DUPLEX 2205', 'FE04', '0', '0', '0', '16.71', '0', 0),
(41, 'MP590', 'STEEL STRIP STAINLESS STEEL', '0.7 x 28', 'DUPLEX 2205', 'FE04', '0', '0', '0', '16.71', '0', 0),
(42, 'MP680', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'DUPLEX 2205', 'FE04', '0', '0', '0', '16.71', '0', 0),
(43, 'MP855', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'DUPLEX 2205', 'FE04', '0', '0', '0', '16.71', '0', 0),
(44, 'MP856', 'STEEL STRIP STAINLESS STEEL', '108.0 x 2.7 x 13.5', 'DUPLEX 2206', 'FE04', '0', '0', '0', '16.71', '0', 0),
(45, 'MP876', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(46, 'MP159', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(47, 'MP160', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(48, 'MP161', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(49, 'MP162', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(50, 'MP163', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(51, 'MP164', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(52, 'MP165', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(53, 'MP166', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(54, 'MP136', 'STEEL STRIP .ACIER', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(55, 'MP197', 'STEEL STRIP .ACIER', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(56, 'MP107', 'STEEL STRIP .ACIER', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(57, 'MPX300', 'STEEL STRIP .ACIER', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(58, 'MP227', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(59, 'MP321', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(60, 'MP524', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(61, 'MP636', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(62, 'MP319', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(63, 'MP207', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(64, 'MP206', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(65, 'MP410', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(66, 'MP323', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(67, 'MP411', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(68, 'MP368', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(69, 'MP211', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(70, 'MP208', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(71, 'MP794', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(72, 'MP525', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(73, 'MP413', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(74, 'MP331', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(75, 'MP652', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(76, 'MP581', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(77, 'MP318', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(78, 'MP526', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(79, 'MP317', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(80, 'MP552', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(81, 'MP474', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(82, 'MP212', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(83, 'MP205', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(84, 'MP234', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(85, 'MP154', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(86, 'MP514', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(87, 'MP316', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(88, 'MP243', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(89, 'MP241', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(90, 'MP242', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(91, 'MP457', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(92, 'MP582', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(93, 'MPX283', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(94, 'MP152', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(95, 'MP326', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(96, 'MP407', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(97, 'MP746', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(98, 'MP778', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(99, 'MP833', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(100, 'MP779', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(101, 'MP737', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(102, 'MP733', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(103, 'MP735', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(104, 'MP791', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(105, 'MP734', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(106, 'MP780', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(107, 'MP939', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(108, 'MP991', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(109, 'MP989', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(110, 'MP966', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(111, 'MP940', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(112, 'MP941', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(113, 'MP999', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(114, 'MP943', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(115, 'MP944', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(116, 'MP946', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(117, 'MP947', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(118, 'MP948', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(119, 'MP186', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(120, 'MP467', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(121, 'MP477', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(122, 'MP478', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(123, 'MP479', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(124, 'MP691', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(125, 'MP480', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(126, 'MP481', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(127, 'MP482', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(128, 'MP483', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(129, 'MP36', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(130, 'MP38', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(131, 'MP484', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(132, 'MP98', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(133, 'MP39', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(134, 'MP127', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(135, 'MP485', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(136, 'MP129', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(137, 'MP646', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(138, 'MP647', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(139, 'MP37', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(140, 'MP131', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(141, 'MP90', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(142, 'MP685', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(143, 'MP486', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(144, 'MP487', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(145, 'MP476', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(146, 'MP613', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(147, 'MP260', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(148, 'MP191', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(149, 'MP981', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(150, 'MP366', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(151, 'MP841', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(152, 'MP472', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(153, 'MP550', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(154, 'MP365', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(155, 'MP471', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(156, 'MP744', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(157, 'MP364', 'TERPHANE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(158, 'MP240', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(159, 'MP238', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(160, 'MP797', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(161, 'MP798', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(162, 'MP239', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(163, 'MP799', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(164, 'MP237', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(165, 'MP800', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(166, 'MP391', 'BANDE TISSEE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(167, 'MP332', 'BANDE TISSEE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(168, 'MP905', 'TECHNORA STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(169, 'MP866', 'ESTER TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(170, 'MP142', 'ESTER TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(171, 'MP141', 'ESTER TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(172, 'MP349', 'ESTER TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(173, 'MP689', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(174, 'MP688', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(175, 'MP687', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(176, 'MP174', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(177, 'MP173', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(178, 'MP146', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(179, 'MP175', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(180, 'MP250', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(181, 'MP773', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(182, 'MP898', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(183, 'MP324', 'TECHNORA STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(184, 'MP967', 'TECHNORA STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(185, 'MP983', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(186, 'MP977', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(187, 'MP972', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(188, 'MP984', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(189, 'MP978', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(190, 'MP973', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(191, 'MP985', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(192, 'MP979', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(193, 'MP974', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(194, 'MP279', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(195, 'MP248', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(196, 'MP225', 'COFOAM INSULATION STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(197, 'MP229', 'COFOAM INSULATION STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(198, 'MP901', 'WOVEN STRIP KEVLAR', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(199, 'MP549', 'COFOAM INSULATION STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(200, 'MP57', 'RILSAN BESNO', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(201, 'MP62', 'PE HD NOIR', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(202, 'MP125', 'PVDF COFLON STA', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(203, 'MP213', 'COFLON XD TP29', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(204, 'MP223', 'RILSAN BESNO', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(205, 'MP406', 'PE  CROSSFLEX', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(206, 'MP406', 'PE  CROSSFLEX', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(207, 'MP1001', 'PE  CROSSFLEX', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(208, 'MP1002', 'PE  CROSSFLEX', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(209, 'MP64', 'PE  MEDIUM DENSITY TRANSLUCENT', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(210, 'MP606', 'RILSAN BESN  NOIR', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(211, 'MP595', 'PE  MEDIUM DENSITY YELLOW', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(212, 'MP961', 'PE  MEDIUM DENSITY BLACK', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(213, 'MP987', 'PIPELON', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(214, 'MP933', 'ELASTOMER THERMOPLASTIC', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(215, 'MP170', 'HDFLEX', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(216, 'MP170', 'HDFLEX', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(217, 'MP968', 'TPFLEX', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(218, 'MP968', 'TPFLEX', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(219, 'MP934', 'MAIN MIX', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(220, 'MP1020', 'PRESSURE SHEATH POLYAMIDE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(221, 'MP1030', 'FLAT WIRES', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(222, 'MP1013', 'TECHNORA STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(223, 'MP1016', 'STRIP', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(224, 'MP1015', 'TECHNORA', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(225, 'MP885', 'GAMMAFLEX', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(226, 'MP980', 'GAMMAFLEX', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(227, 'MP171', 'MAIN MIX', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(228, 'MP599', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(229, 'MP814', 'FIRST ARMOUR LAY.FMS', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0),
(230, 'MP138', 'INTERLOCKED CARCAS', NULL, NULL, NULL, '0', '0', '0', '16.71', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nominal_column`
--

CREATE TABLE IF NOT EXISTS `nominal_column` (
  `nc_id` int(11) NOT NULL AUTO_INCREMENT,
  `nc_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `nc_description` text CHARACTER SET utf8,
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `nominal_type`
--

INSERT INTO `nominal_type` (`nt_id`, `nt_name`) VALUES
(1, 'tm_id'),
(2, 'DRAWING_NO'),
(3, 'DRAWING_NAME'),
(4, 'TOOLING_NAME'),
(5, 'MACHINE_TYPE'),
(6, 'LOCATION'),
(7, 'STATUS'),
(8, 'QUANTITY_NOT_REVERSED'),
(9, 'RESERVED_QUANTITY'),
(10, 'Updated_Date'),
(11, 'INCH'),
(12, 'TOP_MOUNTING_HOLE'),
(13, 'SEAL_RING'),
(14, 'MOUNTING_CENTER_DIAMETER'),
(15, 'ID'),
(16, 'OD'),
(17, 'LENGTH'),
(18, 'SURFACE_THICKNESS'),
(19, 'SURFACE_HEIGHT'),
(20, 'OVERALL_HEIGHT'),
(21, 'OVERALL_WIDTH'),
(22, 'WIDTH'),
(23, 'MOUNTING_HOLE'),
(24, 'HEIGHT'),
(25, 'THICKNESS'),
(26, 'TYPE');

-- --------------------------------------------------------

--
-- Table structure for table `param`
--

CREATE TABLE IF NOT EXISTS `param` (
  `param_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_id` int(11) DEFAULT NULL,
  `param_tol_min` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `param_tol_plus` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `param_tool_code` varchar(100) CHARACTER SET utf8 NOT NULL,
  `param_number` int(11) DEFAULT NULL,
  `param_code` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `nt_id` int(11) DEFAULT NULL,
  `param_code_mex` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`param_id`),
  KEY `tool_id` (`tool_id`),
  KEY `tool_id_2` (`tool_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `param`
--

INSERT INTO `param` (`param_id`, `tool_id`, `param_tol_min`, `param_tol_plus`, `param_tool_code`, `param_number`, `param_code`, `nt_id`, `param_code_mex`) VALUES
(1, 1, '-0.2', '0', 'MANDREL', 1, 'ØD', 16, ''),
(2, 1, '', '', 'MANDREL', 2, 'ØB', 0, NULL),
(3, 1, '-0.2', '0', 'MANDREL', 3, 'ØC', 0, NULL),
(4, 1, '-3', '3', 'MANDREL', 4, 'ØE', 0, NULL),
(5, 1, '', '', 'MANDREL', 5, 'RxØF', 0, NULL),
(6, 1, '', '', 'MANDREL', 6, 'K', 0, NULL),
(7, 1, '', '', 'MANDREL', 7, 'P', 0, NULL),
(8, 1, '', '', 'MANDREL', 8, 'H', 0, NULL),
(9, 1, '-5', '5', 'MANDREL', 9, 'L', 17, ''),
(11, 3, '0.5', '', 'EXTERNAL CALIPER', 1, 'ØD', 0, NULL),
(21, 7, '1', '1', 'DIE', 1, 'OOD', 0, NULL),
(14, 5, '', '', 'BRACKET 2:4', 1, 'A', 0, NULL),
(15, 5, '', '', 'BRACKET 2:4', 2, 'E', 0, NULL),
(20, 7, '1', '1', 'DIE', 2, 'ID', 0, NULL),
(17, 5, '', '', 'BRACKET 2:4', 3, 'L', 0, NULL),
(18, 5, '', '', 'BRACKET 2:4', 4, 'P', 0, NULL),
(19, 5, '', '', 'BRACKET 2:4', 5, 'R', 0, NULL),
(22, 7, NULL, NULL, 'DIE', 3, 'HEAD', 0, NULL),
(47, 6, NULL, NULL, 'BRACKET 1:2', 1, 'A', 0, NULL),
(24, 2, '', '', 'INTERNAL CALIPER', 1, 'ØD', 0, NULL),
(25, 2, '', '', 'INTERNAL CALIPER', 2, 'V', 0, NULL),
(26, 2, '-10', '5', 'INTERNAL CALIPER', 3, 'ØC', 0, NULL),
(29, 2, NULL, NULL, 'INTERNAL CALIPER', 4, 'ØE', 0, NULL),
(30, 2, NULL, NULL, 'INTERNAL CALIPER', 5, 'P', 0, NULL),
(31, 2, NULL, NULL, 'INTERNAL CALIPER', 6, 'Q', 0, NULL),
(32, 2, '-5', '5', 'INTERNAL CALIPER', 7, 'L', 0, NULL),
(33, 2, '-5', '5', 'INTERNAL CALIPER', 8, 'T', 0, NULL),
(34, 3, '', '', 'EXTERNAL CALIPER', 2, 'L', 0, NULL),
(35, 3, '', '', 'EXTERNAL CALIPER', 3, 'F', 0, NULL),
(36, 3, '', '', 'EXTERNAL CALIPER', 4, 'G', 0, NULL),
(46, 10, '-5', '5', 'MANDREL-15', 9, 'L', 0, NULL),
(37, 10, '-0.2', '0', 'MANDREL-15', 1, 'ØD', 0, NULL),
(38, 10, '', '', 'MANDREL-15', 2, 'ØB', 0, NULL),
(39, 10, '-0.2', '0', 'MANDREL-15', 3, 'ØC', 0, NULL),
(40, 10, '-3', '3', 'MANDREL-15', 4, 'ØE', 0, NULL),
(41, 10, '', '', 'MANDREL-15', 5, 'RxØF', 0, NULL),
(42, 10, '', '', 'MANDREL-15', 6, 'K', 0, NULL),
(43, 10, '', '', 'MANDREL-15', 7, 'P', 0, NULL),
(48, 6, NULL, NULL, 'BRACKET 1:2', 2, 'E', 0, NULL),
(45, 10, '', '', 'MANDREL-15', 8, 'H', 0, NULL),
(49, 6, NULL, NULL, 'BRACKET 1:2', 3, 'L', 0, NULL),
(50, 6, NULL, NULL, 'BRACKET 1:2', 4, 'P', 0, NULL),
(51, 6, NULL, NULL, 'BRACKET 1:2', 5, 'R', 0, NULL);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `selected_layer_id`, `selected_tool_id`, `idnom`, `structure_number`, `project_name`, `project_number`, `section_number`, `plf_length`, `overlength`, `mass`, `transaction_id`) VALUES
(1, 1, 1, '152.4', 'ST15261797', 'Test One', '1', '1', 1, 1, NULL, '1411002921'),
(2, 1, 1, '152.4', 'ST15261797', 'ddd', 'dd', 'dd', 0, 0, NULL, '1413129846'),
(3, NULL, NULL, NULL, 'ST15261757', 'd', 'a', 'a', 0, 0, NULL, '1413895573'),
(4, 1, 5, '127.0', 'ST12740400', 'PROJECT BARU 08112014', 'test umar', '2', 3, 100, NULL, '1415467718'),
(5, NULL, NULL, NULL, 'ST24171184', 'bakut', 'j234', 'h34', 1200, 25, NULL, '1419389870'),
(6, 1, 3, '241.3', 'ST10170426', 'project 4', 'proj4', 'sect4', 4000, 40, NULL, '1419394394'),
(7, NULL, NULL, NULL, 'ST24171184', 'baru 1', '1234321', '3', 1, 2, NULL, '1419404087'),
(8, 1, 1, '139.7', 'ST13970157', 'Tanjung Baram', '78351', '01', 4000, 20, NULL, '1419408703'),
(9, 1, 1, '127', 'ST12740407', 'Amethyst', '78389', '01', 2400, 10, NULL, '1419408977'),
(10, 1, 1, '162', 'ST16271201', 'Bualuang', '78294', '01', 2400, 100, NULL, '1419409344'),
(11, 1, 1, '288.9', 'ST28870995', 'Jangkrik', '78088', '01', 2000, 10, NULL, '1419409524'),
(12, 1, 10, '400', 'ST40070204', '15" Champion ', '78039', '41-45', 2000, 25, NULL, '1420180903');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`rule_id`, `rule_number`, `var1`, `var2`, `cond`) VALUES
(1, 'mandrel_1', 0, 76.2, ''),
(2, 'mandrel_2', 76.2, 127, ''),
(20, 'internalcaliper_1', 0, 999, ''),
(15, 'mandrel_5', 228.6, 304.8, ''),
(5, 'externalcaliper_1', 0, 127, ''),
(6, 'externalcaliper_2', 127, 999, ''),
(16, 'mandrel_6', 304.8, 381, ''),
(19, 'mandrel-15_1', 381, 999, ''),
(13, 'mandrel_3', 127, 177.8, ''),
(14, 'mandrel_4', 177.8, 228.6, ''),
(21, 'bracket2:4_1', 177.8, 228.6, ''),
(22, 'bracket2:4_2', 228.6, 999, ''),
(23, 'bracket1:2_1', 0, 101.6, ''),
(24, 'bracket1:2_2', 101.6, 127, ''),
(25, 'bracket1:2_3', 127, 177.8, '');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=170 ;

--
-- Dumping data for table `rule_param`
--

INSERT INTO `rule_param` (`rp_id`, `rule_id`, `param_id`, `pio_id`, `rp_pre_value`, `rp_formula`, `rp_post_value`) VALUES
(1, 1, 1, 3, 'DIAINTERCOUCHE', 'DIAINTERCOUCHE', '0'),
(2, 1, 2, 1, '175', '175', '175'),
(3, 1, 3, 1, '203.2', '203.2', '203.2'),
(4, 1, 4, 1, '36', '36', '36'),
(5, 1, 5, 4, '16 x Ø18', '16 x Ø18', '16 x Ø18'),
(6, 1, 6, 1, '30', '30', '30'),
(7, 1, 7, 1, '362', '362', '362'),
(8, 1, 8, 1, '170', '170', '170'),
(9, 1, 9, 3, 'TOOL_1_P + 80 + ( 1.5 * nom_pitch )', 'TOOL_1_P + 80 + ( 1.5 * nom_pitch )', '0'),
(10, 2, 1, 3, 'DIAINTERCOUCHE', 'DIAINTERCOUCHE', '127'),
(11, 2, 2, 1, '175', '175', '175'),
(12, 2, 3, 1, '203.2', '203.2', '203.2'),
(13, 2, 4, 3, 'TOOL_1_ØD - 40', 'TOOL_1_ØD - 40', '-40'),
(14, 2, 5, 4, '16 x Ø18', '16 x Ø18', '16 x Ø18'),
(15, 2, 6, 1, '30', '30', '30'),
(16, 2, 7, 1, '362', '362', '362'),
(17, 2, 8, 1, '170', '170', '170'),
(18, 2, 9, 3, 'TOOL_1_P + 80 + ( 1.5 + nom_pitch )', 'TOOL_1_P + 80 + ( 1.5 + nom_pitch )', '460.21'),
(143, 20, 33, 3, 'LGCLE - 15', 'LGCLE - 15', '112'),
(142, 20, 32, 3, 'LGCLE + 45', 'LGCLE + 45', '0'),
(141, 20, 31, 3, 'TOOL_2_L - 20', 'TOOL_2_L - 20', '-20'),
(140, 20, 30, 2, 'nc_23', 'LGCLE', '152.'),
(139, 20, 29, 1, '22', '22', '22'),
(138, 20, 26, 3, 'TOOL_2_ØD - 25', 'TOOL_2_ØD - 25', '0'),
(137, 20, 25, 2, 'nc_24', 'CLETOLSUP', '0'),
(136, 20, 24, 2, 'nc_22', 'DIAINTERCLE', '164'),
(98, 14, 8, 1, '150', '150', '150'),
(94, 14, 4, 3, 'TOOL_1_ØD - 50', 'TOOL_1_ØD - 50', '0'),
(92, 14, 2, 1, '304', '304', '304'),
(87, 13, 6, 1, '30', '30', '30'),
(36, 5, 11, 2, 'nc_8', 'DIAEXTERCOUCHE', '162.4'),
(37, 5, 12, 2, 'nc_9', 'DIAEXTERCOUCHETOLSUP', '1.6'),
(38, 5, 34, 2, 'nc_19', 'LGCLI', '152.'),
(39, 5, 35, 4, 'Ø11', 'Ø11', 'Ø11'),
(40, 5, 36, 4, 'M10', 'M10', 'M10'),
(41, 6, 11, 2, 'nc_8', 'DIAEXTERCOUCHE', '162.4'),
(42, 6, 12, 2, 'nc_9', 'DIAEXTERCOUCHETOLSUP', '1.6'),
(43, 6, 34, 2, 'nc_19', 'LGCLI', '152.'),
(44, 6, 35, 4, 'Ø17', 'Ø17', 'Ø17'),
(45, 6, 36, 4, 'M16', 'M16', 'M16'),
(97, 14, 7, 1, '300', '300', '300'),
(96, 14, 6, 1, '30', '30', '30'),
(95, 14, 5, 4, '18 x Ø18', '18 x Ø18', '18 x Ø18'),
(93, 14, 3, 1, '330', '330', '330'),
(91, 14, 1, 3, 'DIAINTERCOUCHE', 'DIAINTERCOUCHE', '0'),
(90, 13, 9, 3, 'TOOL_1_P + 80 + ( 1.5 * nom_pitch )', 'TOOL_1_P + 80 + ( 1.5 * nom_pitch )', '457.065'),
(89, 13, 8, 1, '160', '160', '160'),
(88, 13, 7, 1, '352', '352', '352'),
(82, 13, 1, 3, 'DIAINTERCOUCHE', 'DIAINTERCOUCHE', '0'),
(83, 13, 2, 1, '245', '245', '245'),
(84, 13, 3, 1, '275', '275', '275'),
(85, 13, 4, 3, 'TOOL_1_ØD - 40', 'TOOL_1_ØD - 40', '-40'),
(86, 13, 5, 4, '18 x Ø22', '18 x Ø22', '18 x Ø22'),
(104, 15, 5, 4, '18 x Ø18', '18 x Ø18', '18 x Ø18'),
(105, 15, 6, 1, '30', '30', '30'),
(111, 16, 3, 1, '480', '480', '480'),
(110, 16, 2, 1, '440', '440', '440'),
(109, 16, 1, 3, 'DIAINTERCOUCHE', 'DIAINTERCOUCHE', '0'),
(108, 15, 9, 3, 'TOOL_1_P + 80 + ( 1.5 * nom_pitch )', 'TOOL_1_P + 80 + ( 1.5 * nom_pitch )', '0'),
(107, 15, 8, 1, '150', '150', '150'),
(106, 15, 7, 1, '342', '342', '342'),
(99, 14, 9, 3, 'TOOL_1_P + 80 + ( 1.5 * nom_pitch )', 'TOOL_1_P + 80 + ( 1.5 * nom_pitch )', '0'),
(100, 15, 1, 3, 'DIAINTERCOUCHE', 'DIAINTERCOUCHE', '0'),
(101, 15, 2, 1, '360', '360', '360'),
(102, 15, 3, 1, '400', '400', '400'),
(103, 15, 4, 3, 'TOOL_1_ØD - 50', 'TOOL_1_ØD - 50', '0'),
(134, 19, 43, 1, '312', '312', '312'),
(116, 16, 8, 1, '140', '140', '140'),
(117, 16, 9, 3, 'TOOL_1_P + 80 + ( 1.5 * nom_pitch )', 'TOOL_1_P + 80 + ( 1.5 * nom_pitch )', '0'),
(135, 19, 45, 1, '120', '120', '120'),
(112, 16, 4, 3, 'TOOL_1_ØD - 70', 'TOOL_1_ØD - 70', '0'),
(113, 16, 5, 4, '18 x Ø18', '18 x Ø18', '18 x Ø18'),
(114, 16, 6, 1, '40', '40', '40'),
(115, 16, 7, 1, '332', '332', '332'),
(133, 19, 42, 1, '50', '50', '50'),
(132, 19, 41, 4, '18 x Ø18', '18 x Ø18', '18 x Ø18'),
(127, 19, 46, 3, 'TOOL_10_P + 80 + ( 1.5 * nom_pitch )', 'TOOL_10_P + 80 + ( 1.5 * nom_pitch )', '0'),
(128, 19, 37, 3, 'DIAINTERCOUCHE', 'DIAINTERCOUCHE', '0'),
(129, 19, 38, 1, '505', '505', '505'),
(130, 19, 39, 1, '550', '550', '550'),
(131, 19, 40, 3, 'TOOL_1_ØD - 80', 'TOOL_1_ØD - 80', '0'),
(144, 21, 14, 3, 'DIAINTERCOUCHE - 1', 'DIAINTERCOUCHE - 1', '0'),
(145, 21, 15, 1, '12', '12', '12'),
(146, 21, 17, 1, '200', '200', '200'),
(147, 21, 18, 1, '250', '250', '250'),
(148, 21, 19, 1, '12', '12', '12'),
(149, 21, 23, 1, '0', NULL, '0'),
(150, 22, 14, 3, 'DIAINTERCOUCHE - 1', 'DIAINTERCOUCHE - 1', '399'),
(151, 22, 15, 1, '16', '16', '16'),
(152, 22, 17, 1, '200', '200', '200'),
(153, 22, 18, 1, '320', '320', '320'),
(154, 22, 19, 1, '18', '18', '18'),
(155, 23, 47, 3, 'DIAINTERCOUCHE - 1', 'DIAINTERCOUCHE - 1', '0'),
(156, 23, 48, 1, '8', '8', '8'),
(157, 23, 49, 1, '150', '150', '150'),
(158, 23, 50, 1, '150', '150', '150'),
(159, 23, 51, 1, '10', '10', '10'),
(160, 24, 47, 3, 'DIAINTERCOUCHE - 1', 'DIAINTERCOUCHE - 1', '0'),
(161, 24, 48, 1, '8', '8', '8'),
(162, 24, 49, 1, '200', '200', '200'),
(163, 24, 50, 1, '200', '200', '200'),
(164, 24, 51, 1, '12', '12', '12'),
(165, 25, 47, 3, 'DIAINTERCOUCHE - 1', 'DIAINTERCOUCHE - 1', '0'),
(166, 25, 48, 1, '12', '12', '12'),
(167, 25, 49, 1, '200', '200', '200'),
(168, 25, 50, 1, '200', '200', '200'),
(169, 25, 51, 1, '12', '12', '12');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tool`
--

INSERT INTO `tool` (`tool_id`, `tool_code`, `tool_description`, `file_url`, `min_range`, `max_range`) VALUES
(1, 'MANDREL', 'Mandrel', '0c8f5-mandrel_1.png', 0, 380),
(2, 'INTERNAL CALIPER', 'Internal Caliper', 'c36fc-internal-caliper.jpg', 0, 999),
(3, 'EXTERNAL CALIPER', 'External Caliper', 'f3ea0-external-caliper.jpg', 0, 999),
(4, 'ENDCAP', 'End Cap', 'c04ee-end-cap.jpg', 0, 999),
(5, 'BRACKET 2:4', 'BRACKET SP17\r\n', '4e60f-4-bracket.jpg', 178, 999),
(6, 'BRACKET 1:2', 'BRACKET SP17', '4e576-2-bracket.jpg', 0, 178),
(7, 'DIE', 'DIE HEAD R', NULL, 0, 250),
(8, 'PIN', 'PIN HEAD R', NULL, 0, 200),
(9, 'GUIDE TUBE', 'GUIDE TUBE HEAD R', NULL, 0, 250),
(10, 'MANDREL-15', 'Mandrel > 15"', '379d0-mandrel-15''''.jpg', 381, 999);

-- --------------------------------------------------------

--
-- Table structure for table `tooling_master`
--

CREATE TABLE IF NOT EXISTS `tooling_master` (
  `tm_id` int(11) NOT NULL AUTO_INCREMENT,
  `DRAWING_NO` varchar(200) DEFAULT NULL,
  `DRAWING_NAME` varchar(200) DEFAULT NULL,
  `TOOLING_NAME` varchar(200) DEFAULT NULL,
  `MACHINE_TYPE` varchar(200) DEFAULT NULL,
  `LOCATION` varchar(200) DEFAULT NULL,
  `STATUS` varchar(200) DEFAULT NULL,
  `QUANTITY_NOT_REVERSED` varchar(200) DEFAULT NULL,
  `RESERVED_QUANTITY` varchar(200) DEFAULT NULL,
  `Updated_Date` varchar(200) DEFAULT NULL,
  `INCH` varchar(200) DEFAULT NULL,
  `TOP_MOUNTING_HOLE` varchar(200) DEFAULT NULL,
  `SEAL_RING` varchar(200) DEFAULT NULL,
  `MOUNTING_CENTER_DIAMETER` varchar(200) DEFAULT NULL,
  `ID` varchar(200) DEFAULT NULL,
  `OD` varchar(200) DEFAULT NULL,
  `LENGTH` varchar(200) DEFAULT NULL,
  `SURFACE_THICKNESS` varchar(200) DEFAULT NULL,
  `SURFACE_HEIGHT` varchar(200) DEFAULT NULL,
  `OVERALL_HEIGHT` varchar(200) DEFAULT NULL,
  `OVERALL_WIDTH` varchar(200) DEFAULT NULL,
  `WIDTH` varchar(200) DEFAULT NULL,
  `MOUNTING_HOLE` varchar(200) DEFAULT NULL,
  `HEIGHT` varchar(200) DEFAULT NULL,
  `THICKNESS` varchar(200) DEFAULT NULL,
  `TYPE` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tm_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=724 ;

--
-- Dumping data for table `tooling_master`
--

INSERT INTO `tooling_master` (`tm_id`, `DRAWING_NO`, `DRAWING_NAME`, `TOOLING_NAME`, `MACHINE_TYPE`, `LOCATION`, `STATUS`, `QUANTITY_NOT_REVERSED`, `RESERVED_QUANTITY`, `Updated_Date`, `INCH`, `TOP_MOUNTING_HOLE`, `SEAL_RING`, `MOUNTING_CENTER_DIAMETER`, `ID`, `OD`, `LENGTH`, `SURFACE_THICKNESS`, `SURFACE_HEIGHT`, `OVERALL_HEIGHT`, `OVERALL_WIDTH`, `WIDTH`, `MOUNTING_HOLE`, `HEIGHT`, `THICKNESS`, `TYPE`) VALUES
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
INSERT INTO `tooling_master` (`tm_id`, `DRAWING_NO`, `DRAWING_NAME`, `TOOLING_NAME`, `MACHINE_TYPE`, `LOCATION`, `STATUS`, `QUANTITY_NOT_REVERSED`, `RESERVED_QUANTITY`, `Updated_Date`, `INCH`, `TOP_MOUNTING_HOLE`, `SEAL_RING`, `MOUNTING_CENTER_DIAMETER`, `ID`, `OD`, `LENGTH`, `SURFACE_THICKNESS`, `SURFACE_HEIGHT`, `OVERALL_HEIGHT`, `OVERALL_WIDTH`, `WIDTH`, `MOUNTING_HOLE`, `HEIGHT`, `THICKNESS`, `TYPE`) VALUES
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
INSERT INTO `tooling_master` (`tm_id`, `DRAWING_NO`, `DRAWING_NAME`, `TOOLING_NAME`, `MACHINE_TYPE`, `LOCATION`, `STATUS`, `QUANTITY_NOT_REVERSED`, `RESERVED_QUANTITY`, `Updated_Date`, `INCH`, `TOP_MOUNTING_HOLE`, `SEAL_RING`, `MOUNTING_CENTER_DIAMETER`, `ID`, `OD`, `LENGTH`, `SURFACE_THICKNESS`, `SURFACE_HEIGHT`, `OVERALL_HEIGHT`, `OVERALL_WIDTH`, `WIDTH`, `MOUNTING_HOLE`, `HEIGHT`, `THICKNESS`, `TYPE`) VALUES
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tool_nominal_type`
--

INSERT INTO `tool_nominal_type` (`tnt_id`, `nt_id`, `tool_id`, `tnt_value`, `priority`) VALUES
(1, 16, 10, NULL, 0),
(2, 17, 10, NULL, 1),
(3, 16, 1, NULL, 0),
(5, 15, 2, NULL, 0);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tool_rule`
--

INSERT INTO `tool_rule` (`tool_rule_id`, `tool_id`, `rule_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(17, 2, 20),
(11, 1, 13),
(5, 3, 5),
(6, 3, 6),
(12, 1, 14),
(13, 1, 15),
(14, 1, 16),
(16, 10, 19),
(18, 5, 21),
(19, 5, 22),
(20, 6, 23),
(21, 6, 24),
(22, 6, 25);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

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
(11, 9, 5, 0),
(12, 10, 5, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `role_id`, `fullname`, `username`, `user_pass`, `user_date`, `user_modified`, `user_last_login`, `magicnum`, `email_activation`) VALUES
(1, 1, 'Administrator MARS', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2014-06-25 07:44:41', '2014-06-25 07:44:41', '2015-01-09 20:24:11', '5c7a5ae3a37e6ef4ff9ffdff1785ee55', 1),
(2, 2, 'Umar Mukhtar', 'umar', '92deb3f274aaee236194c05729bfa443', '2014-09-09 12:06:13', '2014-09-09 12:06:13', '2015-01-09 20:24:42', '92deb3f274aaee236194c05729bfa443', 0),
(5, 2, '', 'sakina', '827ccb0eea8a706c4c34a16891f84e7b', '2014-12-24 07:17:14', '2014-12-24 07:17:14', NULL, 'f538b3189f47663c97ed48883ccb27f5', 0),
(11, 2, '', 'asd', '7815696ecbf1c96e6894b779456d330e', '2015-01-06 19:45:05', '2015-01-06 19:45:05', '2015-01-06 20:00:40', '7815696ecbf1c96e6894b779456d330e', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
