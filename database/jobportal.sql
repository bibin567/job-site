-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2019 at 07:32 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `logid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(123) NOT NULL,
  `role` varchar(123) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`logid`, `username`, `password`, `role`) VALUES
(2, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `postjob`
--

CREATE TABLE `postjob` (
  `id` int(100) NOT NULL,
  `jobcode` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `comp` varchar(123) NOT NULL,
  `type` varchar(123) NOT NULL,
  `loc` varchar(567) NOT NULL,
  `des` varchar(1000) NOT NULL,
  `exp` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `ldate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postjob`
--

INSERT INTO `postjob` (`id`, `jobcode`, `title`, `comp`, `type`, `loc`, `des`, `exp`, `website`, `date`, `ldate`) VALUES
(1, '143', 'php developer', 'logic software solution', 'Full Time', 'Eranakulam', 'qwertyuiopasdfghjklzxcvbnmqwertyuiopasdfghjklzxcvbnm', '0-2 year', 'logic.in', '2019 Nov 28', '2019-12-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `postjob`
--
ALTER TABLE `postjob`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `logid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `postjob`
--
ALTER TABLE `postjob`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
