-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 18, 2018 at 04:21 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `security`
--

-- --------------------------------------------------------

--
-- Table structure for table `2018-01`
--

CREATE TABLE IF NOT EXISTS `2018-01` (
  `id` int(11) NOT NULL,
  `emp_wdays` double NOT NULL,
  `emp_rwages` float NOT NULL,
  `emp_odays` int(11) NOT NULL,
  `emp_owages` double NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2018-01`
--

INSERT INTO `2018-01` (`id`, `emp_wdays`, `emp_rwages`, `emp_odays`, `emp_owages`) VALUES
(23, 15, 733, 1, 250);

-- --------------------------------------------------------

--
-- Table structure for table `2018-02`
--

CREATE TABLE IF NOT EXISTS `2018-02` (
  `id` int(11) NOT NULL,
  `emp_wdays` double NOT NULL,
  `emp_rwages` float NOT NULL,
  `emp_odays` int(11) NOT NULL,
  `emp_owages` double NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `2018-02`
--

INSERT INTO `2018-02` (`id`, `emp_wdays`, `emp_rwages`, `emp_odays`, `emp_owages`) VALUES
(324398, 26, 733, 10, 250),
(324399, 12, 733, 2, 250),
(324404, 25, 733, 5, 250),
(324405, 23, 733, 6, 250),
(324406, 15, 733, 10, 250),
(324407, 15, 733, 2, 250),
(324408, 20, 733, 6, 250),
(324409, 20, 733, 5, 250),
(324410, 12, 733, 12, 250),
(324438, 15, 733, 5, 250),
(324449, 26, 733, 5, 250),
(324450, 25, 733, 5, 250),
(324451, 26, 733, 5, 250),
(324460, 22, 733, 5, 250),
(324463, 26, 733, 5, 250);

-- --------------------------------------------------------

--
-- Table structure for table `discarded`
--

CREATE TABLE IF NOT EXISTS `discarded` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(60) NOT NULL,
  `emp_father_name` varchar(30) NOT NULL,
  `emp_dob` date DEFAULT NULL,
  `emp_account_no` int(11) NOT NULL,
  `emp_esic_no` int(11) NOT NULL,
  `emp_pf_no` int(11) NOT NULL,
  `emp_gender` varchar(7) NOT NULL,
  `emp_designation` varchar(30) NOT NULL,
  `uan_no` int(11) NOT NULL,
  `emp_address` text NOT NULL,
  `emp_phn` varchar(10) NOT NULL,
  `emp_image` varchar(200) NOT NULL,
  `emp_zone` varchar(50) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=324464 ;

--
-- Dumping data for table `discarded`
--

INSERT INTO `discarded` (`emp_id`, `emp_name`, `emp_father_name`, `emp_dob`, `emp_account_no`, `emp_esic_no`, `emp_pf_no`, `emp_gender`, `emp_designation`, `uan_no`, `emp_address`, `emp_phn`, `emp_image`, `emp_zone`) VALUES
(324398, 'Shailesh ', 'SC Sahu', '1999-01-13', 10240340, 3232, 234532, 'male', 'S/G', 123, 'k-6,pipal wala road,New Delhi,110059', '9205652411', 'null', 'Karol Bagh'),
(324400, 'Gaurav Sharma', 'Sharma ', '1996-10-23', 1023103, 3943022, 2324645, 'male', 'S/G', 294, 'Rama Park Block-5,New Delhi,110059', '9540067845', 'null', 'RML'),
(324463, 'ASHA GOHAR', 'MR.DEV ', '1956-12-04', 2147483647, 1452916466, 1611697166, 'male', 'S/G', 2147483647, '860-RAMA PARK,,3', '', 'null', 'Karol Bagh');

-- --------------------------------------------------------

--
-- Table structure for table `guard_info`
--

CREATE TABLE IF NOT EXISTS `guard_info` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(60) NOT NULL,
  `emp_father_name` varchar(30) NOT NULL,
  `emp_dob` date DEFAULT NULL,
  `emp_account_no` int(11) NOT NULL,
  `emp_esic_no` int(11) NOT NULL,
  `emp_pf_no` int(11) NOT NULL,
  `emp_gender` varchar(7) NOT NULL,
  `emp_designation` varchar(30) NOT NULL,
  `uan_no` int(11) NOT NULL,
  `emp_address` text NOT NULL,
  `emp_phn` varchar(10) NOT NULL,
  `emp_image` varchar(200) NOT NULL,
  `emp_zone` varchar(50) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `guard_info`
--

INSERT INTO `guard_info` (`emp_id`, `emp_name`, `emp_father_name`, `emp_dob`, `emp_account_no`, `emp_esic_no`, `emp_pf_no`, `emp_gender`, `emp_designation`, `uan_no`, `emp_address`, `emp_phn`, `emp_image`, `emp_zone`) VALUES
(1, 'di', 'ree', '2018-02-27', 1212, 121, 1212, 'male', 'S/G', 1212, 'MITRA VISHAL PARK HNO 73 LINGRAJNAGAR ROAD\r\nVIDYANAGAR\r\nHUBLI', '1122', 'null', 'HUBLI'),
(2, 'RAJU', 'K', '1990-12-27', 1245, 1245, 1245, 'male', 'House Keeping', 1245, 'KMC HUBLI,Karnataka,580024', '123456786', 'null', 'DHARWAD');

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE IF NOT EXISTS `month` (
  `id` int(11) NOT NULL,
  `emp_wdays` double NOT NULL,
  `emp_rwages` float NOT NULL,
  `emp_odays` int(11) NOT NULL,
  `emp_owages` double NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`id`, `emp_wdays`, `emp_rwages`, `emp_odays`, `emp_owages`) VALUES
(1, 12, 733, 1, 250);

-- --------------------------------------------------------

--
-- Table structure for table `monthlyupdate`
--

CREATE TABLE IF NOT EXISTS `monthlyupdate` (
  `emp_id` int(10) NOT NULL,
  `emp_month` date NOT NULL,
  `emp_wdays` int(10) NOT NULL,
  `emp_odays` int(10) NOT NULL,
  `emp_wrate` int(10) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `monthlyupdate`
--

INSERT INTO `monthlyupdate` (`emp_id`, `emp_month`, `emp_wdays`, `emp_odays`, `emp_wrate`) VALUES
(1, '0000-00-00', 733, 1, 300),
(2, '0000-00-00', 733, 1, 250),
(11, '0000-00-00', 733, 1, 250);

-- --------------------------------------------------------

--
-- Table structure for table `sitename`
--

CREATE TABLE IF NOT EXISTS `sitename` (
  `emp_id` int(255) NOT NULL AUTO_INCREMENT,
  `emp_site_name` varchar(255) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `sitename`
--

INSERT INTO `sitename` (`emp_id`, `emp_site_name`) VALUES
(1, 'HUBLI'),
(6, 'HANGAL'),
(7, 'HANGAL'),
(28, 'DHARWAD'),
(29, 'GADAG'),
(30, 'HAVERI'),
(31, 'BAGALKOT'),
(32, 'eee');
