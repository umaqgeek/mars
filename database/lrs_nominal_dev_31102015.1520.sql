-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 31, 2015 at 08:19 AM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

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
-- Table structure for table `lrs_nominal`
--

CREATE TABLE IF NOT EXISTS `lrs_nominal` (
  `ln_id` int(11) NOT NULL,
  `lrs_id` int(11) NOT NULL,
  `nc_id` int(11) NOT NULL,
  `ln_priority` int(11) NOT NULL,
  `ttnt_id` int(11) NOT NULL,
  `ln_value` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lrs_nominal`
--

INSERT INTO `lrs_nominal` (`ln_id`, `lrs_id`, `nc_id`, `ln_priority`, `ttnt_id`, `ln_value`) VALUES
(1, 2, 17, 0, 1, '0,6'),
(2, 2, 29, 0, 1, '16,19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lrs_nominal`
--
ALTER TABLE `lrs_nominal`
  ADD PRIMARY KEY (`ln_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lrs_nominal`
--
ALTER TABLE `lrs_nominal`
  MODIFY `ln_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
