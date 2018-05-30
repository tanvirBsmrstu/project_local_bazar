-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2016 at 06:17 PM
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
-- Table structure for table `logbybkash`
--

CREATE TABLE IF NOT EXISTS `logbybkash` (
  `TnxId` text NOT NULL,
  `Pay_code` text NOT NULL,
  `Stamp` datetime NOT NULL,
  `stat` int(11) NOT NULL,
  `SubmitId` bigint(20) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logbybkash`
--

INSERT INTO `logbybkash` (`TnxId`, `Pay_code`, `Stamp`, `stat`, `SubmitId`, `amount`) VALUES
('123456', '0121', '0000-00-00 00:00:00', 1, 25, 5000),
('123456', '0121', '0000-00-00 00:00:00', 1, 25, 5000),
('1', '0121', '0000-00-00 00:00:00', 0, 0, 3000),
('2', '0122', '0000-00-00 00:00:00', 0, 0, 3000),
('3', '0122', '0000-00-00 00:00:00', 0, 0, 1950),
('4', '0112', '0000-00-00 00:00:00', 0, 0, 1000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
