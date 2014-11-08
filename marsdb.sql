-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2014 at 03:52 PM
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
('20400a99082a059c444db910170edc4b', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.97 Safari/537.36', 1404150718, 'a:10:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:7:"role_id";s:1:"1";s:8:"username";s:5:"admin";s:9:"user_date";s:19:"2014-06-25 07:44:41";s:13:"user_modified";s:19:"2014-06-25 07:44:41";s:15:"user_last_login";s:19:"2014-06-25 07:45:38";s:8:"magicnum";s:32:"5c7a5ae3a37e6ef4ff9ffdff1785ee55";s:16:"email_activation";s:1:"1";s:9:"logged_in";b:1;}'),
('8fc4fd55eef9f4a721d12c732f8a16bb', '::1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.97 Safari/537.36', 1404222669, 'a:10:{s:9:"user_data";s:0:"";s:7:"user_id";s:1:"1";s:7:"role_id";s:1:"1";s:8:"username";s:5:"admin";s:9:"user_date";s:19:"2014-06-25 07:44:41";s:13:"user_modified";s:19:"2014-06-25 07:44:41";s:15:"user_last_login";s:19:"2014-06-30 18:59:47";s:8:"magicnum";s:32:"5c7a5ae3a37e6ef4ff9ffdff1785ee55";s:16:"email_activation";s:1:"1";s:9:"logged_in";b:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(30) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`) VALUES
(1, 'administrator'),
(2, 'tutor'),
(3, 'student');

-- --------------------------------------------------------

--
-- Table structure for table `structurenumber`
--

CREATE TABLE IF NOT EXISTS `structurenumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `COL 1` varchar(22) DEFAULT NULL,
  `COL 2` varchar(17) DEFAULT NULL,
  `COL 3` varchar(17) DEFAULT NULL,
  `COL 4` varchar(17) DEFAULT NULL,
  `COL 5` varchar(7) DEFAULT NULL,
  `COL 6` varchar(24) DEFAULT NULL,
  `COL 7` varchar(14) DEFAULT NULL,
  `COL 8` varchar(28) DEFAULT NULL,
  `COL 9` varchar(28) DEFAULT NULL,
  `COL 10` varchar(25) DEFAULT NULL,
  `COL 11` varchar(9) DEFAULT NULL,
  `COL 12` varchar(7) DEFAULT NULL,
  `COL 13` varchar(10) DEFAULT NULL,
  `COL 14` varchar(10) DEFAULT NULL,
  `COL 15` varchar(18) DEFAULT NULL,
  `COL 16` varchar(3) DEFAULT NULL,
  `COL 17` varchar(22) DEFAULT NULL,
  `COL 18` varchar(7) DEFAULT NULL,
  `COL 19` varchar(6) DEFAULT NULL,
  `COL 20` varchar(13) DEFAULT NULL,
  `COL 21` varchar(15) DEFAULT NULL,
  `COL 22` varchar(20) DEFAULT NULL,
  `COL 23` varchar(19) DEFAULT NULL,
  `COL 24` varchar(22) DEFAULT NULL,
  `COL 25` varchar(25) DEFAULT NULL,
  `COL 26` varchar(8) DEFAULT NULL,
  `COL 27` varchar(3) DEFAULT NULL,
  `COL 28` varchar(5) DEFAULT NULL,
  `COL 29` varchar(9) DEFAULT NULL,
  `COL 30` varchar(11) DEFAULT NULL,
  `COL 31` varchar(6) DEFAULT NULL,
  `COL 32` varchar(10) DEFAULT NULL,
  `COL 33` varchar(75) DEFAULT NULL,
  `COL 34` varchar(16) DEFAULT NULL,
  `COL 35` varchar(4) DEFAULT NULL,
  `COL 36` varchar(6) DEFAULT NULL,
  `COL 37` varchar(20) DEFAULT NULL,
  `COL 38` varchar(16) DEFAULT NULL,
  `COL 39` varchar(14) DEFAULT NULL,
  `COL 40` varchar(20) DEFAULT NULL,
  `COL 41` varchar(20) DEFAULT NULL,
  `COL 42` varchar(14) DEFAULT NULL,
  `COL 43` varchar(20) DEFAULT NULL,
  `COL 44` varchar(20) DEFAULT NULL,
  `COL 45` varchar(19) DEFAULT NULL,
  `COL 46` varchar(25) DEFAULT NULL,
  `COL 47` varchar(25) DEFAULT NULL,
  `COL 48` varchar(8) DEFAULT NULL,
  `COL 49` varchar(14) DEFAULT NULL,
  `COL 50` varchar(14) DEFAULT NULL,
  `COL 51` varchar(8) DEFAULT NULL,
  `COL 52` varchar(11) DEFAULT NULL,
  `COL 53` varchar(5) DEFAULT NULL,
  `COL 54` varchar(9) DEFAULT NULL,
  `COL 55` varchar(9) DEFAULT NULL,
  `COL 56` varchar(11) DEFAULT NULL,
  `COL 57` varchar(5) DEFAULT NULL,
  `COL 58` varchar(9) DEFAULT NULL,
  `COL 59` varchar(9) DEFAULT NULL,
  `COL 60` varchar(12) DEFAULT NULL,
  `COL 61` varchar(11) DEFAULT NULL,
  `COL 62` varchar(18) DEFAULT NULL,
  `COL 63` varchar(5) DEFAULT NULL,
  `COL 64` varchar(12) DEFAULT NULL,
  `COL 65` varchar(13) DEFAULT NULL,
  `COL 66` varchar(4) DEFAULT NULL,
  `COL 67` varchar(10) DEFAULT NULL,
  `COL 68` varchar(13) DEFAULT NULL,
  `COL 69` varchar(17) DEFAULT NULL,
  `COL 70` varchar(41) DEFAULT NULL,
  `COL 71` varchar(21) DEFAULT NULL,
  `COL 72` varchar(13) DEFAULT NULL,
  `COL 73` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `structurenumber`
--

INSERT INTO `structurenumber` (`id`, `COL 1`, `COL 2`, `COL 3`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`, `COL 9`, `COL 10`, `COL 11`, `COL 12`, `COL 13`, `COL 14`, `COL 15`, `COL 16`, `COL 17`, `COL 18`, `COL 19`, `COL 20`, `COL 21`, `COL 22`, `COL 23`, `COL 24`, `COL 25`, `COL 26`, `COL 27`, `COL 28`, `COL 29`, `COL 30`, `COL 31`, `COL 32`, `COL 33`, `COL 34`, `COL 35`, `COL 36`, `COL 37`, `COL 38`, `COL 39`, `COL 40`, `COL 41`, `COL 42`, `COL 43`, `COL 44`, `COL 45`, `COL 46`, `COL 47`, `COL 48`, `COL 49`, `COL 50`, `COL 51`, `COL 52`, `COL 53`, `COL 54`, `COL 55`, `COL 56`, `COL 57`, `COL 58`, `COL 59`, `COL 60`, `COL 61`, `COL 62`, `COL 63`, `COL 64`, `COL 65`, `COL 66`, `COL 67`, `COL 68`, `COL 69`, `COL 70`, `COL 71`, `COL 72`, `COL 73`) VALUES
(1, 'LINEIC_VOLUME_INTERNAL', 'MAX_TEST_PRESSURE', 'BENDING_STIFFNESS', 'FAT_DRUM_DIAMETER', 'SERVICE', 'ST_STORAGE_DRUM_DIAMETER', 'WATERTIGHTNESS', 'MANUFACTURING_ELONGATION_MIN', 'MANUFACTURING_ELONGATION_MAX', 'ENG_STORAGE_DRUM_DIAMETER', 'DOMAIN_ID', 'AFFAIRE', 'DIAINTERST', 'STRUCTURE', 'STRUCTURE_REVISION', 'CDC', 'CDC_STRUCTURE_REVISION', 'NOLIGNE', 'COUCHE', 'CODEOPERATION', 'CODEPREPARATION', 'OPERATION', 'LAYER_NAME', 'LAYER_TYPE_DESCRIPTION', 'LAYER_VARIETY_DESCRIPTION', 'DIAINTER', 'EP', 'ANGLE', 'NOMBREFIL', 'MASSECOUCHE', 'CODEMP', 'CODEMP_IFS', 'DESCRIPTIONMP', 'DESCRIPTIONMPN_2', 'EPMP', 'LARGMP', 'CODEPRODUITGENERIQUE', 'CODEPRODUITUSUEL', 'DIAINTERCOUCHE', 'DIAINTERCOUCHETOLINF', 'DIAINTERCOUCHETOLSUP', 'DIAEXTERCOUCHE', 'DIAEXTERCOUCHETOLSUP', 'DIAEXTERCOUCHETOLINF', 'DIAEXTERNONRETREINT', 'DIAEXTERTOLSUPNONRETREINT', 'DIAEXTERTOLINFNONRETREINT', 'EPCOUCHE', 'EPCOUCHETOLINF', 'EPCOUCHETOLSUP', 'ARMANGLE', 'DIAEXTERCLI', 'LGCLI', 'CLITOLINF', 'CLITOLSUP', 'DIAINTERCLE', 'LGCLE', 'CLETOLSUP', 'CLETOLINF', 'EPMAXICOUCHE', 'ARMPASRATIO', 'NOMAFFAIRE', 'CHAMP', 'INGENIEURAFF', 'DATELIVRAISON', 'MBR', 'PASNOMINAL', 'TOLPASNOMINAL', 'NBTOURCONTROLEPAS', 'COMMENTAIRES', 'MAN_LINEIC_OBJ_MPITCH', 'AVG_PITCH_MAN', 'AVG_PITCH_ENG'),
(2, '8.69', '11472', '4285.261478', '2.06', 'Sweet', '2.11', '0', '0', '0', '1.3', '91', '78060', '4', 'ST10170426', '0', '', '', '1', 'PC', '60', '0', 'PROFILAGE CARCASSE', 'INTERLOCKED CARCASS', 'CARCASS', 'FEUILLARD', '101.6', '4', '-87.5', '1', '5.823', 'MP119', '10100370', 'Feuillard inox 0,8x40 AISI 316L FE02 EN 1.4404 (MP119)', '', '0.8', '40', 'FI', 'FE02', '101.6', '-1', '1', '109.6', '1.1', '-1.1', '109.6', '1.1', '-1.1', '4', '0', '0', '-87.53', '100.6', '152.4', '0', '0.2', '110.7', '152.4', '0', '-0.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', '\n\rJeffa PCRM7 ou Wynn''Draw sp30 ( LP851 )', '14.325', '14.325', '14.325'),
(3, '8.69', '11472', '4285.261478', '2.06', 'Sweet', '2.11', '2', '0', '0', '1.41', '91', '78060', '4', 'ST10170426', '0', '', '', '2', 'GP', '140', '138', 'GAINAGE DE PRESSION', 'PRESSURE SHEATH', 'INTERNAL SHEATH', 'PRESSURE SHEATH', '109.6', '4', '', '1', '1.5737', 'MP57', '12200010', 'Rilsan besno P40 TL+ TP01 (MP57)', '', '', '', 'PA', 'TP01', '109.6', '-1.1', '1.1', '117.6', '1.5', '-1.5', '117.6', '1.5', '-1.5', '4', '-0.6', '0.6', '0', '', '', '0', '0.2', '', '', '0', '-0.2', '5.2', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', '', '0', '0', '0'),
(4, '8.69', '11472', '4285.261478', '2.06', 'Sweet', '2.11', '0', '0', '0.02', '1.92', '91', '78060', '4', 'ST10170426', '0', '', '', '3', 'SFT', '300', '297', 'SPIRALAGE FILS TIRES', 'ZETA SPIRALLING', 'ZETA', 'ZETA', '117.6', '6.2', '-87.1', '2', '16.046', 'MP152', '10800040', 'Fil zeta 6,2 - FM35 - FI11 KISWIRE (MP152) Qualification en cours', '', '6.2', '0', 'FZ', 'FI11', '117.6', '-1.5', '1.5', '130', '1.6', '-1.6', '130', '1.6', '-1.6', '6.2', '0', '0.1', '-87.12', '', '', '0', '0.2', '', '', '0', '-0.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '194', '2', '20', '', '19.4', '19.4', '19.4'),
(5, '8.69', '11472', '4285.261478', '2.06', 'Sweet', '2.11', '0', '0', '0.02', '1.99', '91', '78060', '4', 'ST10170426', '0', '', '', '4', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 1', 'PLATS HOMOGENS', '130', '2', '-36', '46', '5.923', 'MP481', '10401110', 'Fil plat 7x2 - FI41 avec courant de Foucault (MP481)', '', '2', '7', 'FP', 'FI41', '130', '-1.6', '1.6', '134', '1.7', '-1.7', '134', '1.7', '-1.7', '2', '-0.1', '0.1', '-36', '', '', '0', '0.2', '', '', '0', '-0.2', '', '1.0311', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '570.8', '8.5', '1', 'Lubrification : VETO86 \n\r', '570.7721', '570.8', '570.7721'),
(6, '8.69', '11472', '4285.261478', '2.06', 'Sweet', '2.11', '0', '0', '0.02', '1.99', '91', '78060', '4', 'ST10170426', '0', '', '', '5', 'A1', '420', '417', 'ARMAGE 1', 'FIRST ARMOURING', 'NAPPE 2', 'PLATS HOMOGENS', '134', '2', '35.98', '47', '6.0501', 'MP481', '10401110', 'Fil plat 7x2 - FI41 avec courant de Foucault (MP481)', '', '2', '7', 'FP', 'FI41', '134', '-1.7', '1.7', '138', '1.8', '-1.8', '138', '1.8', '-1.8', '2', '-0.1', '0.1', '35.98', '', '', '0', '0.2', '', '', '0', '-0.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '588.5', '8.8', '1', 'Lubrification : VETO86 \n\r', '588.5434', '588.5', '588.5434'),
(7, '8.69', '11472', '4285.261478', '2.06', 'Sweet', '2.11', '0', '0', '0.02', '1.98', '91', '78060', '4', 'ST10170426', '0', '', '', '6', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '138', '0.2', '', '1', '0.0795', 'MP687', '12500110', 'Ruban adhesif 145mmx3000m polyprop. Ref:L0381 (LEPERCQ) BA06 (MP687)', '', '', '', 'RU', 'BA06', '138', '-1.8', '1.8', '142.1', '1.8', '-1.8', '142.1', '1.8', '-1.8', '2.05', '0', '0', '0', '', '', '0', '0.2', '', '', '0', '-0.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', 'Lubrification : VETO86 \n\r', '136.2463', '0', '0'),
(8, '8.69', '11472', '4285.261478', '2.06', 'Sweet', '2.11', '0', '0', '0.02', '1.98', '91', '78060', '4', 'ST10170426', '0', '', '', '6', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '138.5', '0.5', '', '1', '0.0778', 'MP240', '12600110', 'Bande tissee 130mm KEVLAR BA01 R=230daN Ref:9081 CHOMARAT pds:24g/m (MP240)', '', '', '', 'RU', 'BA01', '138', '-1.8', '1.8', '142.1', '1.8', '-1.8', '142.1', '1.8', '-1.8', '2.05', '0', '0', '0', '', '', '0', '0.2', '', '', '0', '-0.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', 'Lubrification : VETO86 \n\r', '139.0557', '0', '0'),
(9, '8.69', '11472', '4285.261478', '2.06', 'Sweet', '2.11', '0', '0', '0.02', '1.98', '91', '78060', '4', 'ST10170426', '0', '', '', '6', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '139.5', '0.5', '', '1', '0.0783', 'MP240', '12600110', 'Bande tissee 130mm KEVLAR BA01 R=230daN Ref:9081 CHOMARAT pds:24g/m (MP240)', '', '', '', 'RU', 'BA01', '138', '-1.8', '1.8', '142.1', '1.8', '-1.8', '142.1', '1.8', '-1.8', '2.05', '0', '0', '0', '', '', '0', '0.2', '', '', '0', '-0.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', 'Lubrification : VETO86 \n\r', '138.9555', '0', '0'),
(10, '8.69', '11472', '4285.261478', '2.06', 'Sweet', '2.11', '0', '0', '0.02', '1.98', '91', '78060', '4', 'ST10170426', '0', '', '', '6', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '140.5', '0.4', '', '1', '0.0654', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '138', '-1.8', '1.8', '142.1', '1.8', '-1.8', '142.1', '1.8', '-1.8', '2.05', '0', '0', '0', '', '', '0', '0.2', '', '', '0', '-0.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', 'Lubrification : VETO86 \n\r', '135.9972', '0', '0'),
(11, '8.69', '11472', '4285.261478', '2.06', 'Sweet', '2.11', '0', '0', '0.02', '1.98', '91', '78060', '4', 'ST10170426', '0', '', '', '6', 'A1', '420', '0', 'ARMAGE 1', 'FIRST ARMOURING', 'HIGH STRENGTH', 'FABRIC TAPE', '141.3', '0.4', '', '1', '0.0657', 'MP141', '12600010', 'Bande tissee 150mmx3000m BA04 POLYESTER (MP141)', '', '', '', 'RU', 'BA04', '138', '-1.8', '1.8', '142.1', '1.8', '-1.8', '142.1', '1.8', '-1.8', '2.05', '0', '0', '0', '', '', '0', '0.2', '', '', '0', '-0.2', '', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', 'Lubrification : VETO86 \n\r', '135.925', '0', '0'),
(12, '8.69', '11472', '4285.261478', '2.06', 'Sweet', '2.11', '3', '0', '0.015', '1.9', '91', '78060', '4', 'ST10170426', '0', '', '', '7', 'GEX', '780', '0', 'GAINAGE EXTERIEUR', 'EXTERNAL SHEATH', 'EXTERNAL SHEATH', 'EXTERNE', '142.1', '3.8', '', '1', '1.6373', 'MP595', '12000050', 'PE MD jaune TP14 GI-GEX - ASTM1248-89/TY:II/CL:B/CAT:5/GR:P34 (MP595)', '', '', '', 'PL', 'TP14', '142.1', '-1.8', '1.8', '149.7', '2.2', '-2.2', '149.7', '2.2', '-2.2', '3.8', '-0.4', '0.4', '0', '', '', '0', '0.2', '', '', '0', '-0.2', '4.9', '', 'CHEVRON WHEATSTONE', '', 'EXPLOITATION', '', '1127', '0', '0', '0', '', '0', '0', '0');

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
(1, 1, 'admin', '$2a$08$HOvmyJ3443pTGyYUY5bSY.EXTv/xAoVHZV6bYl8VrP5kiLPW1Jfpi', '2014-06-25 07:44:41', '2014-06-25 07:44:41', '2014-07-01 15:51:09', '5c7a5ae3a37e6ef4ff9ffdff1785ee55', 1),
(2, 2, 'achmad@gmail.com', '$2a$08$wnShTVQFrZVtDn3ahAZsYuLgwVdCvvJaw/CXNb6O3vsrWQZidTOfe', '2014-06-25 07:51:26', '2014-06-25 07:51:26', '2014-06-25 07:53:08', 'e265a0d2d1885735e6a2e4efdec3521d', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
