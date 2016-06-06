-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 19, 2015 at 03:58 AM
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
-- Table structure for table `nominal_type`
--

CREATE TABLE IF NOT EXISTS `nominal_type` (
  `nt_id` int(11) NOT NULL AUTO_INCREMENT,
  `nt_name` varchar(100) NOT NULL,
  PRIMARY KEY (`nt_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

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
(8, 'QUANTITY'),
(9, 'Updated_Date'),
(10, 'ID'),
(11, 'OD'),
(12, 'LENGTH'),
(13, 'PCD'),
(14, 'HEAD'),
(15, 'WITH_RING'),
(16, 'WITH_PIN_DIE_SUPPORT'),
(17, 'SUPPORT_SIZE'),
(18, 'TYPE'),
(19, 'HEIGHT'),
(20, 'THICKNESS'),
(21, 'SIZE'),
(22, 'MATERIAL'),
(23, 'ANGLE'),
(24, 'WIRE_NUMBER'),
(25, 'PCD_FLANGE'),
(26, 'PCD_CENTER_GUIDE'),
(27, 'STRIP_SIZE'),
(28, 'INCH'),
(29, 'PCD_HOLE_SIZE');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
