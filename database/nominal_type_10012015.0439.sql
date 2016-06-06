-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 09, 2015 at 08:37 PM
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
