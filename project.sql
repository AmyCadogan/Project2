-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 26, 2020 at 07:47 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` text NOT NULL,
  `pass` varchar(30) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  KEY `pass` (`pass`),
  KEY `pass_2` (`pass`),
  KEY `pass_3` (`pass`),
  KEY `pass_4` (`pass`),
  KEY `pass_5` (`pass`),
  KEY `pass_6` (`pass`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `pass`) VALUES
('akanksha', '*CC67043C7BCFF5EEA5566BD9B1F3C'),
('amrita', '*CC67043C7BCFF5EEA5566BD9B1F3C');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`pass`) REFERENCES `admin` (`pass`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- Table structure for table `tempstatus`
--

DROP TABLE IF EXISTS `tempstatus`;
CREATE TABLE IF NOT EXISTS `tempstatus` (
  `serialnum` varchar(100) NOT NULL,
  `time` datetime NOT NULL,
  `temparature` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempstatus`
--

INSERT INTO `tempstatus` (`serialnum`, `time`, `temparature`, `date`, `status`) VALUES
('0', '2020-02-11 17:27:49', '', '2020-02-11', 'active'),
('1', '2020-02-11 18:06:27', '', '2020-02-11', 'not active\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;