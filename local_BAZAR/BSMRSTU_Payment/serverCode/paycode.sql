-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2016 at 06:11 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `uni_online_payment`
--

-- --------------------------------------------------------

--
-- Table structure for table `paycode`
--

CREATE TABLE IF NOT EXISTS `paycode` (
  `dept` varchar(10) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `semister` int(11) DEFAULT NULL,
  `cradit` float DEFAULT NULL,
  `craditfee` float DEFAULT NULL,
  `others` float DEFAULT NULL,
  `fee` double DEFAULT NULL,
  `pay_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paycode`
--

INSERT INTO `paycode` (`dept`, `year`, `semister`, `cradit`, `craditfee`, `others`, `fee`, `pay_code`) VALUES
('cse', 1, 2, 19, 100, 0, 1900, '112'),
('cse', 1, 1, 20, 100, 1500, 3500, '0111'),
('cse', 2, 2, 18, 100, 0, 1800, '0122');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
