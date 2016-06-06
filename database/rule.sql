-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2014 at 05:06 AM
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
-- Table structure for table `rule`
--

CREATE TABLE IF NOT EXISTS `rule` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_number` varchar(100) NOT NULL,
  `var1` int(11) NOT NULL,
  `var2` int(11) NOT NULL,
  `cond` varchar(50) NOT NULL DEFAULT 'VAR1>X<=VAR2',
  `param1` varchar(100) DEFAULT NULL,
  `param2` varchar(100) DEFAULT NULL,
  `param3` varchar(100) DEFAULT NULL,
  `param4` varchar(100) DEFAULT NULL,
  `param5` varchar(100) DEFAULT NULL,
  `param6` varchar(100) DEFAULT NULL,
  `param7` varchar(100) DEFAULT NULL,
  `param8` varchar(100) DEFAULT NULL,
  `param9` varchar(100) DEFAULT NULL,
  `param10` varchar(100) DEFAULT NULL,
  `param11` varchar(100) DEFAULT NULL,
  `param12` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rule_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`rule_id`, `rule_number`, `var1`, `var2`, `cond`, `param1`, `param2`, `param3`, `param4`, `param5`, `param6`, `param7`, `param8`, `param9`, `param10`, `param11`, `param12`) VALUES
(1, 'mandrel_1', 0, 3, 'VAR1>X<=VAR2', '151.18', '175', '203.2', '36', '16', '18', '30', '362', '170', '150', NULL, NULL),
(2, 'mandrel_2', 3, 5, 'VAR1>X<=VAR2', '151.18', '175', '203.2', '36', '16', '18', '30', '362', '170', '150', NULL, NULL),
(3, 'mandrel_3', 5, 7, 'VAR1>X<=VAR2', '151.18', '245', '275', '111.18', '18', '22', '30', '352', '160', '150', NULL, NULL),
(4, 'mandrel_4', 7, 12, 'VAR1>X<=VAR2', '151.18', '275', '400', '101.18', '18', '18', '30', '342', '150', '150', NULL, NULL),
(5, 'mandrel_5', 12, 15, 'VAR1>X<=VAR2', '151.18', '400', '480', '81.8', '18', '18', '40', '332', '140', '150', NULL, NULL),
(6, 'mandrel_6', 15, 97, 'VAR1>X<=VAR2', '151.18', '505', '550', '71.8', '18', '18', '50', '312', '120', '150', NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
