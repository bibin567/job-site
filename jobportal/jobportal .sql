-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2019 at 12:39 AM
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
  `role` varchar(123) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `fname` varchar(123) NOT NULL,
  `active` int(100) NOT NULL,
  `hash` varchar(109) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`logid`, `username`, `password`, `role`, `email`, `phone`, `fname`, `active`, `hash`) VALUES
(2, 'admin', 'admin', 'admin', '', '', '', 0, '');

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
(1, '', 'python', 'az', 'on', 'kottayam', '', 'freshers ', '', '', ''),
(3, '', 'python', 'e', 'free', 'kottayam', 'number of jobs available', '', '', '', ''),
(4, '1002', 'php ', 'Logic softwares', 'term', 'eranakulam', 'salary Pakege \r\nexperinced candiate\r\n', '', '', '', ''),
(5, '', 'php', 'helo company', 'full', 'alappuzha', 'other requirements...', '', '', '', ''),
(6, '1003', 'php', 'i net info tech kochi', 'free', 'eranakulam', 'About the company....', '1-8 yrs', '', '', ''),
(7, '', 'web development internship', 'tesz', 'Internship', 'alappuzha', 'about the company:\r\n\r\nabout the internship/job:\r\n\r\nWho can apply:\r\n\r\nother requirements:\r\n\r\nnumber of internship/jobs available:\r\n\r\ncategories:', 'fresher', '', '', ''),
(8, '1001', 'php', 'automate SMB', 'Freelance', 'Chenni', 'zxcvbnmasdfghjklqwertyuiop', '0-2 year', 'serverfosters.gmail.com', '', ''),
(9, '1004', 'php', 'Logi software solution', 'Part  Time', 'Eranakulam', 'qwertyuiopasdfghjkllzxcvbnm', '0-2 year', 'contact@serverfosters.com', '', ''),
(10, '1004', 'php', 'Server fosters technologis', 'Part  Time', 'Eranakulam', 'zxcvbnmasdfghjkl', '0-1yr', 'www.google.com', '', ''),
(11, '1005', 'python', 'Zh health care', 'Full Time', 'Trivandrum', 'qwertyuiopasdfghjklzxcvbnm,', 'fresher', 'www.', '2019-11-05', ''),
(12, '11', 'e', 'az', 'Part  Time', 'Eranakulam', 'qwerfghj', '0-1yr', 'contact@serverfosters.com', '2019-11-05', ''),
(13, '1006', 'html developer', 'digital mesh', 'Part  Time', 'Trivandrum', 'Job Summary\r\nLooking for HTML developers who has very good knowledge of HTML conversion of Designs using Dreamweaver, CSS, Bootstrap, Responsive websites\r\nResponsibilities and Duties\r\n\r\nCode Websites.\r\nEnsure Cross-Platform Functionality\r\nMeet Publication Deadline.\r\nCollaborate with Designers.\r\nTest Websites.', '0-1yr', 'contact@serverfosters.com', '2019 Nov 08', '2019-11-14');

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
