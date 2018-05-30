-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2016 at 09:48 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `stu_info`
--

CREATE TABLE IF NOT EXISTS `stu_info` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mob` varchar(30) NOT NULL,
  `pass` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_info`
--

INSERT INTO `stu_info` (`id`, `name`, `email`, `mob`, `pass`) VALUES
(5, 'gu', 'h', '8', '5'),
(9, 'tan', 'ugf', '2', '9'),
(22, 'g', 'fyy', '522', '22'),
(25, 'tanvir hasan', 'tahvirh03@gmail.com', '0165398248', '25'),
(20131201027, 'tanvi', 'tanvirh03@gmail.com', '01687260053', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stu_info`
--
ALTER TABLE `stu_info`
 ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
