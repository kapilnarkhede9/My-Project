-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2021 at 06:44 PM
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
  `Name` varchar(80) NOT NULL,
  `ID` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `sub1` varchar(20) NOT NULL,
  `sub2` varchar(20) NOT NULL,
  `sub3` varchar(20) NOT NULL,
  `sub4` varchar(20) NOT NULL,
  `sub5` varchar(20) NOT NULL,
  `sub6` varchar(20) NOT NULL,
  `sub7` varchar(20) NOT NULL,
  `Course` varchar(50) NOT NULL DEFAULT 'Engineering',
  `Semister` varchar(20) NOT NULL DEFAULT 'Sem-I',
  `R_ID` varchar(30) NOT NULL DEFAULT 'R_ID1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`Name`, `ID`, `password`, `sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `Course`, `Semister`, `R_ID`) VALUES
('Modern College of Engineerig Pune', 'MCOE-01', 'mcoe', 'MCA_SEM_11', 'MCA_SEM_12', 'MCA_SEM_13', 'MCA_SEM_14', 'MCA_SEM_15', 'MCA_SEM_16', 'MCA_SEM_17', 'MCA', 'Sem-I', 'MCA Sem-I'),
('Modern College Of Enginering', 'MCOE-01', 'mcoe', 'MCA_SEM21', 'MCA_SEM22', 'MCA_SEM234', 'MCA_SEM24', 'MCA_SEM25', 'MCA_SEM26', 'MCA_SEM27', 'MCA', 'Sem-II', 'MCA Sem-II'),
('Modern College Of Enginering', 'MCOE-01', 'mcoe', 'MCA_SEM31', 'MCA_SEM32', 'MCA_SEM33', 'MCA_SEM34', 'MCA_SEM35', 'MCA_SEM36', 'MCA_SEM37', 'MCA', 'Sem-III', 'MCA Sem-III'),
('Modern College of Engineerig Pune', 'MCOE-01', 'mcoe', 'MCA_SEM_41', 'MCA_SEM_42', 'MCA_SEM_43', 'MCA_SEM_44', 'MCA_SEM_45', 'MCA_SEM_46', 'MCA_SEM_47', 'MCA', 'Sem-IV', 'MCA Sem-IV'),
('Modern College of Engineerig Pune', 'MCOE-01', 'mcoe', 'MCA_SEM_51', 'MCA_SEM_52', 'MCA_SEM_53', 'MCA_SEM_54', 'MCA_SEM_55', 'MCA_SEM_56', 'MCA_SEM_57', 'MCA', 'Sem-V', 'MCA Sem-V'),
('Modern College of Engineerig Pune', 'MCOE-01', 'mcoe', 'MCA_SEM_61', 'MCA_SEM_62', 'MCA_SEM_63', 'MCA_SEM_64', 'MCA_SEM_65', 'MCA_SEM_66', 'MCA_SEM_67', 'MCA', 'Sem-VI', 'MCA Sem-VI'),
('Savitribai Phule Pune University', 'SPPU-01', 'pwd', 'MCA_SEM_11', 'MCA_SEM_12', 'MCA_SEM_13', 'MCA_SEM_14', 'MCA_SEM_15', 'MCA_SEM_16', 'MCA_SEM_17', 'MCA', 'Sem-I', 'MCA Sem-I'),
('Savitribai Phule Pune University', 'SPPU-01', 'pwd', 'CPP', 'Python', 'DS', 'Java', 'Mock', 'Linu', 'OS', 'MCA', 'Sem-III', 'MCA Sem-IV');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `Roll_no` varchar(10) NOT NULL DEFAULT '1',
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
('51151', '45', '54', '54', '99', '75', '54', '99', 'SPPU-01'),
('51141', '45', '89', '75', '79', '85', '65', '78', 'SPPU-01'),
('533', '67', '87', '65', '75', '75', '67', '79', 'SPPU-01'),
('52143', '4', '45', '46', '8', '8', '4', '78', 'MCOE-01'),
('52443', '4', '45', '46', '8', '8', '4', '78', 'MCOE-01'),
('52101', '44', '45', '46', '35', '65', '56', '31', 'MCOE-01'),
('52102', '44', '45', '46', '35', '65', '56', '31', 'MCOE-01'),
('52103', '44', '45', '46', '35', '65', '56', '31', 'MCOE-01'),
('52104', '44', '45', '46', '35', '65', '56', '31', 'MCOE-01'),
('52105', '44', '45', '46', '35', '65', '56', '31', 'MCOE-01'),
('52106', '44', '45', '46', '35', '65', '56', '31', 'MCOE-01'),
('52111', '44', '45', '46', '35', '65', '56', '31', 'MCOE-01'),
('52112', '44', '45', '46', '35', '65', '56', '31', 'MCOE-01'),
('52113', '44', '45', '46', '35', '65', '56', '31', 'MCOE-01'),
('52114', '44', '45', '46', '35', '65', '56', '31', 'MCOE-01'),
('52115', '44', '45', '46', '35', '65', '56', '31', 'MCOE-01'),
('52116', '44', '45', '46', '35', '65', '56', '31', 'MCOE-01');

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
('MCA', 'Sem-III', 533, 'Ajay Sureshrao Raut', 'Naina', 'male', 'SPPU-01'),
('MCA', 'Sem-III', 51141, 'Manasi Kulkarni', 'Mname', 'female', 'SPPU-01'),
('MCA', 'Sem-I', 51151, 'kapil Narkhede', 'Priti', 'male', 'SPPU-01'),
('MCA', 'Sem-I', 52101, 'ABC1', 'Mname', 'female', 'MCOE-01'),
('MCA', 'Sem-II', 52102, 'ABC2', 'Mname', 'male', 'MCOE-01'),
('MCA', 'Sem-III', 52103, 'ABC3', 'Mname', 'female', 'MCOE-01'),
('MCA', 'Sem-IV', 52104, 'ABC4', 'Mname', 'male', 'MCOE-01'),
('MCA', 'Sem-V', 52105, 'ABC5', 'Mname', 'female', 'MCOE-01'),
('MCA', 'Sem-VI', 52106, 'ABC6', 'Mname', 'male', 'MCOE-01'),
('MCA', 'Sem-I', 52111, 'ABC11', 'Mname', 'female', 'MCOE-01'),
('MCA', 'Sem-II', 52112, 'ABC12', 'Mname', 'male', 'MCOE-01'),
('MCA', 'Sem-III', 52113, 'ABC13', 'Mname', 'female', 'MCOE-01'),
('MCA', 'Sem-IV', 52114, 'ABC14', 'Mname', 'male', 'MCOE-01'),
('MCA', 'Sem-V', 52115, 'ABC15', 'Mname', 'female', 'MCOE-01'),
('MCA', 'Sem-VI', 52116, 'ABC16', 'Mname', 'male', 'MCOE-01'),
('MCA', 'Sem-II', 52143, 'Aditi Kulkarni', 'M_name', 'female', 'MCOE-01'),
('MCA', 'Sem-II', 52443, 'Mansi Kulkarni', 'Mname', 'female', 'MCOE-01');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `I_ID` varchar(11) NOT NULL DEFAULT '',
  `R-ID` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`I_ID`, `R-ID`) VALUES
('MCOE-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `total_marks`
--

CREATE TABLE `total_marks` (
  `sub1` int(11) NOT NULL DEFAULT 100,
  `sub2` int(11) NOT NULL DEFAULT 100,
  `sub3` int(11) NOT NULL DEFAULT 100,
  `sub4` int(11) NOT NULL DEFAULT 100,
  `sub5` int(11) DEFAULT 100,
  `sub6` int(11) DEFAULT 100,
  `sub7` int(11) DEFAULT 100,
  `total` int(11) NOT NULL DEFAULT 700,
  `I_ID` varchar(50) NOT NULL,
  `Semister` varchar(30) NOT NULL DEFAULT 'Sem-I'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_marks`
--

INSERT INTO `total_marks` (`sub1`, `sub2`, `sub3`, `sub4`, `sub5`, `sub6`, `sub7`, `total`, `I_ID`, `Semister`) VALUES
(108, 100, 16, 15, 100, 107, 100, 546, 'MCOE-01', 'Sem-II'),
(108, 100, 100, 150, 100, 100, 100, 758, 'MCOE-01', 'Sem-III'),
(100, 100, 100, 100, 100, 100, 100, 700, 'SPPU-01', 'Sem-III'),
(100, 60, 40, 80, 60, 41, 80, 461, 'SPPU-01', 'Sem-I'),
(60, 60, 60, 60, 60, 80, 80, 460, 'MCOE-01', 'Sem-I'),
(60, 60, 60, 60, 60, 80, 80, 460, 'MCOE-01', 'Sem-IV'),
(100, 100, 100, 100, 100, 50, 50, 600, 'MCOE-01', 'Sem-V'),
(60, 60, 60, 60, 60, 80, 80, 460, 'MCOE-01', 'Sem-VI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `institute`
--
ALTER TABLE `institute`
  ADD UNIQUE KEY `ID` (`ID`,`Course`,`Semister`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`rollNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
