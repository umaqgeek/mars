-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 06, 2014 at 11:04 PM
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
  PRIMARY KEY (`material_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

--
-- Dumping data for table `material`
--

INSERT INTO `material` (`material_id`, `material_code`, `type_of_production`, `type_of_production_size`, `code_one`, `code_two`, `ref_num`, `crimping_rollers`, `max_scroll_speed`, `criteria`, `ratio`) VALUES
(1, 'MP10', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'AISI 304', 'FE02', '0', '0', '0', '0', '0'),
(2, 'MP4', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'AISI 304', 'FE02', '5416', '0', '0', '0', '0'),
(3, 'MP5', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'AISI 304', 'FE02', '5415', '0', '0', '0', '0'),
(4, 'MP8', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'AISI 304', 'FE02', '0', '0', '0', '0', '0'),
(5, 'MP9', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'AISI 304', 'FE02', '0', '0', '0', '0', '0'),
(6, 'MP80', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'AISI 304', 'FE02', '0', '0', '0', '0', '0'),
(7, 'MP145', 'STEEL STRIP STAINLESS STEEL', '2.5 x 100', 'AISI 304', 'FE02', '0', '0', '0', '0', '0'),
(8, 'MP723', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'AISI 304', 'FE02', '0', '0', '0', '0', '0'),
(9, 'MP100', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0'),
(10, 'MP105', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0'),
(11, 'MP106', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0'),
(12, 'MP108', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0'),
(13, 'MP438', 'STEEL STRIP STAINLESS STEEL', '2.5 x 100', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0'),
(14, 'MP633', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0'),
(15, 'MP708', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0'),
(16, 'MP119', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'AISI 316L', 'FE02', '5416', '0', '0', '0', '0'),
(17, 'MP121', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0'),
(18, 'MP122', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0'),
(19, 'MP123', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0'),
(20, 'MP169', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0'),
(21, 'MP693', 'STEEL STRIP STAINLESS STEEL', '2.5 x 100', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0'),
(22, 'MP91', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0'),
(23, 'MP99', 'STEEL STRIP STAINLESS STEEL', '40.0X 0.8 X 4.0', 'AISI 304L', 'FE02', '0', '0', '0', '0', '0'),
(24, 'MP716', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'AISI 316L', 'FE02', '0', '0', '0', '0', '0'),
(25, 'MP886', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0'),
(26, 'MP887', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0'),
(27, 'MP888', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0'),
(28, 'MP907', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0'),
(29, 'MP910', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0'),
(30, 'MP911', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'DUPLEX 2304', 'FE08', '5416', '0', '0', '0', '0'),
(31, 'MP923', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0'),
(32, 'MP930', 'STEEL STRIP STAINLESS STEEL', '2.5 x 10', '0 DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0'),
(33, 'MP950', 'STEEL STRIP STAINLESS STEEL', '0.7 x 28', 'DUPLEX 2304', 'FE08', '0', '0', '0', '0', '0'),
(34, 'MP449', 'STEEL STRIP STAINLESS STEEL', '1.5 x 60', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0'),
(35, 'MP144', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0'),
(36, 'MP180', 'STEEL STRIP STAINLESS STEEL', '1.8 x 72', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0'),
(37, 'MP196', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'DUPLEX 2205', 'FE04', '5416', '0', '0', '0', '0'),
(38, 'MP454', 'STEEL STRIP STAINLESS STEEL', '2.0 x 80', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0'),
(39, 'MP460', 'STEEL STRIP STAINLESS STEEL', '0.8 x 40', 'DUPLEX 2205', 'FE04', '5416', '0', '0', '0', '0'),
(40, 'MP461', 'STEEL STRIP STAINLESS STEEL', '1.0 x 48', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0'),
(41, 'MP590', 'STEEL STRIP STAINLESS STEEL', '0.7 x 28', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0'),
(42, 'MP680', 'STEEL STRIP STAINLESS STEEL', '1.2 x 48', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0'),
(43, 'MP855', 'STEEL STRIP STAINLESS STEEL', '2.2 x 88', 'DUPLEX 2205', 'FE04', '0', '0', '0', '0', '0'),
(44, 'MP856', 'STEEL STRIP STAINLESS STEEL', '108.0 x 2.7 x 13.5', 'DUPLEX 2206', 'FE04', '0', '0', '0', '0', '0'),
(45, 'MP876', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(46, 'MP159', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(47, 'MP160', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(48, 'MP161', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(49, 'MP162', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(50, 'MP163', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(51, 'MP164', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(52, 'MP165', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(53, 'MP166', 'STEEL STRIP STAINLESS STEEL', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(54, 'MP136', 'STEEL STRIP .ACIER', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(55, 'MP197', 'STEEL STRIP .ACIER', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(56, 'MP107', 'STEEL STRIP .ACIER', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(57, 'MPX300', 'STEEL STRIP .ACIER', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(58, 'MP227', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(59, 'MP321', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(60, 'MP524', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(61, 'MP636', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(62, 'MP319', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(63, 'MP207', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(64, 'MP206', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(65, 'MP410', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(66, 'MP323', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(67, 'MP411', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(68, 'MP368', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(69, 'MP211', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(70, 'MP208', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(71, 'MP794', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(72, 'MP525', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(73, 'MP413', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(74, 'MP331', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(75, 'MP652', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(76, 'MP581', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(77, 'MP318', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(78, 'MP526', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(79, 'MP317', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(80, 'MP552', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(81, 'MP474', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(82, 'MP212', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(83, 'MP205', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(84, 'MP234', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(85, 'MP154', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(86, 'MP514', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(87, 'MP316', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(88, 'MP243', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(89, 'MP241', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(90, 'MP242', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(91, 'MP457', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(92, 'MP582', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(93, 'MPX283', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(94, 'MP152', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(95, 'MP326', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(96, 'MP407', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(97, 'MP746', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(98, 'MP778', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(99, 'MP833', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(100, 'MP779', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(101, 'MP737', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(102, 'MP733', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(103, 'MP735', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(104, 'MP791', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(105, 'MP734', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(106, 'MP780', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(107, 'MP939', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(108, 'MP991', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(109, 'MP989', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(110, 'MP966', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(111, 'MP940', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(112, 'MP941', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(113, 'MP999', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(114, 'MP943', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(115, 'MP944', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(116, 'MP946', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(117, 'MP947', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(118, 'MP948', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(119, 'MP186', 'ZETA WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(120, 'MP467', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(121, 'MP477', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(122, 'MP478', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(123, 'MP479', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(124, 'MP691', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(125, 'MP480', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(126, 'MP481', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(127, 'MP482', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(128, 'MP483', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(129, 'MP36', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(130, 'MP38', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(131, 'MP484', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(132, 'MP98', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(133, 'MP39', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(134, 'MP127', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(135, 'MP485', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(136, 'MP129', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(137, 'MP646', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(138, 'MP647', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(139, 'MP37', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(140, 'MP131', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(141, 'MP90', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(142, 'MP685', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(143, 'MP486', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(144, 'MP487', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(145, 'MP476', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(146, 'MP613', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(147, 'MP260', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(148, 'MP191', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(149, 'MP981', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(150, 'MP366', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(151, 'MP841', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(152, 'MP472', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(153, 'MP550', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(154, 'MP365', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(155, 'MP471', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(156, 'MP744', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(157, 'MP364', 'TERPHANE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(158, 'MP240', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(159, 'MP238', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(160, 'MP797', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(161, 'MP798', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(162, 'MP239', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(163, 'MP799', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(164, 'MP237', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(165, 'MP800', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(166, 'MP391', 'BANDE TISSEE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(167, 'MP332', 'BANDE TISSEE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(168, 'MP905', 'TECHNORA STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(169, 'MP866', 'ESTER TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(170, 'MP142', 'ESTER TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(171, 'MP141', 'ESTER TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(172, 'MP349', 'ESTER TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(173, 'MP689', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(174, 'MP688', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(175, 'MP687', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(176, 'MP174', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(177, 'MP173', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(178, 'MP146', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(179, 'MP175', 'ADHESIVE TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(180, 'MP250', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(181, 'MP773', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(182, 'MP898', 'KEVLAR STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(183, 'MP324', 'TECHNORA STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(184, 'MP967', 'TECHNORA STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(185, 'MP983', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(186, 'MP977', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(187, 'MP972', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(188, 'MP984', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(189, 'MP978', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(190, 'MP973', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(191, 'MP985', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(192, 'MP979', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(193, 'MP974', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(194, 'MP279', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(195, 'MP248', 'ANTI WEAR TAPE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(196, 'MP225', 'COFOAM INSULATION STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(197, 'MP229', 'COFOAM INSULATION STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(198, 'MP901', 'WOVEN STRIP KEVLAR', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(199, 'MP549', 'COFOAM INSULATION STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(200, 'MP57', 'RILSAN BESNO', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(201, 'MP62', 'PE HD NOIR', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(202, 'MP125', 'PVDF COFLON STA', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(203, 'MP213', 'COFLON XD TP29', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(204, 'MP223', 'RILSAN BESNO', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(205, 'MP406', 'PE  CROSSFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(206, 'MP406', 'PE  CROSSFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(207, 'MP1001', 'PE  CROSSFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(208, 'MP1002', 'PE  CROSSFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(209, 'MP64', 'PE  MEDIUM DENSITY TRANSLUCENT', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(210, 'MP606', 'RILSAN BESN  NOIR', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(211, 'MP595', 'PE  MEDIUM DENSITY YELLOW', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(212, 'MP961', 'PE  MEDIUM DENSITY BLACK', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(213, 'MP987', 'PIPELON', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(214, 'MP933', 'ELASTOMER THERMOPLASTIC', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(215, 'MP170', 'HDFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(216, 'MP170', 'HDFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(217, 'MP968', 'TPFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(218, 'MP968', 'TPFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(219, 'MP934', 'MAIN MIX', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(220, 'MP1020', 'PRESSURE SHEATH POLYAMIDE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(221, 'MP1030', 'FLAT WIRES', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(222, 'MP1013', 'TECHNORA STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(223, 'MP1016', 'STRIP', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(224, 'MP1015', 'TECHNORA', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(225, 'MP885', 'GAMMAFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(226, 'MP980', 'GAMMAFLEX', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(227, 'MP171', 'MAIN MIX', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(228, 'MP599', 'FLAT WIRE', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(229, 'MP814', 'FIRST ARMOUR LAY.FMS', NULL, NULL, NULL, '0', '0', '0', '0', '0'),
(230, 'MP138', 'INTERLOCKED CARCAS', NULL, NULL, NULL, '0', '0', '0', '0', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
