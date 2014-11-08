-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 27, 2014 at 04:30 PM
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
-- Table structure for table `rule1`
--

CREATE TABLE IF NOT EXISTS `rule1` (
  `tools_id` int(11) NOT NULL,
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `var1` varchar(200) NOT NULL,
  `cond` varchar(200) NOT NULL,
  `var2` varchar(200) NOT NULL,
  `param1` varchar(200) NOT NULL,
  `param2` varchar(200) NOT NULL,
  `param3` varchar(200) NOT NULL,
  `param4` varchar(200) NOT NULL,
  `param5` varchar(200) NOT NULL,
  `param6` varchar(200) NOT NULL,
  `param7` varchar(200) NOT NULL,
  `param8` varchar(200) NOT NULL,
  `param9` varchar(200) NOT NULL,
  `param10` varchar(200) NOT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `rule1`
--

INSERT INTO `rule1` (`tools_id`, `rule_id`, `var1`, `cond`, `var2`, `param1`, `param2`, `param3`, `param4`, `param5`, `param6`, `param7`, `param8`, `param9`, `param10`) VALUES
(1, 1, '0', '1', '3', 'DIAINTERCOUCHE * 0.992', '175', '203.2', '36', '16', '18', '30', '362', '170', 'param8 + 80 * ( 1.5 * nompitch)'),
(1, 2, '3', '1', '5', 'DIAINTERCOUCHE * 0.992', '175', '203.2', 'param1 - 40', '16', '18', '30', '362', '170', 'param8 + 80 * ( 1.5 * nompitch)');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
