-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2021 at 05:59 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE `institute` (
  `Name` varchar(30) NOT NULL,
  `ID` varchar(15) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sub1` varchar(20) NOT NULL,
  `sub2` varchar(20) NOT NULL,
  `sub3` varchar(20) NOT NULL,
  `sub4` varchar(20) NOT NULL,
  `sub5` varchar(20) NOT NULL,
  `sub6` varchar(20) NOT NULL,
  `sub7` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`Name`, `ID`, `password`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`) VALUES
('DES', '123', 'pwd', 'marathi', 'english', 'hindi', 'math', 'science', 's science', 'history'),
('MCOE', 'SPPU-01', 'mcoe', 'CPP', 'Python', 'DS', 'Java', 'Mock', 'Linux', 'OS');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `Roll_no` varchar(5) NOT NULL DEFAULT '1',
  `sub1` varchar(5) NOT NULL DEFAULT '0',
  `sub2` varchar(5) NOT NULL DEFAULT '0',
  `sub3` varchar(5) NOT NULL DEFAULT '0',
  `sub4` varchar(5) NOT NULL DEFAULT '0',
  `sub5` varchar(5) NOT NULL DEFAULT '0',
  `sub6` varchar(5) NOT NULL DEFAULT '0',
  `sub7` varchar(5) NOT NULL DEFAULT '0',
  `I_ID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`Roll_no`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `I_ID`) VALUES
('51151', '45', '54', '54', '45', '75', '54', '52', 'SPPU-01'),
('51141', '45', '89', '75', '79', '85', '65', '78', 'SPPU-01');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `course` varchar(20) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `rollNo` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `fatherName` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `I_ID` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`course`, `branch`, `rollNo`, `name`, `fatherName`, `gender`, `I_ID`) VALUES
('MCA', 'DIV-B', 51139, 'Ishvar Krushna Kharche', 'Krushna', 'male', 'SPPU-01'),
('MCA', 'DIV-B', 51141, 'Manasi Kulkarni', 'Suhas', 'female', 'SPPU-01'),
('MCA', 'DIV-B', 51142, 'Aditi Kulkarni', 'Ambadas', 'femaie', 'SPPU-01'),
('MCA', 'DIV-B', 51151, 'Kapil Prashant Narkhede', 'Prashant', 'male', 'SPPU-01');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `I_ID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`I_ID`) VALUES
('SPPU-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
