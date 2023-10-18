-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 07:46 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `lecturer_id` varchar(255) NOT NULL,
  `lecturer_name` varchar(30) NOT NULL,
  `faculty` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`lecturer_id`, `lecturer_name`, `faculty`) VALUES
('L101', 'John Bostan', 'Computing'),
('L102', 'Marina Johnson', 'Engineering'),
('L103', 'Jason Patric', 'HR'),
('L104', 'Gill Peterson', 'Computing');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `marks_id` int(11) NOT NULL,
  `s_student_id` varchar(255) NOT NULL,
  `m_module_id` varchar(255) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`marks_id`, `s_student_id`, `m_module_id`, `marks`) VALUES
(1, 'ST001', 'MO1101', 85),
(2, 'ST001', 'MO1104', 67),
(3, 'ST004', 'MO1102', 67),
(5, 'ST003', 'MO1103', 55),
(6, 'ST002', 'MO1104', 56);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` varchar(30) NOT NULL,
  `module_title` varchar(30) NOT NULL,
  `year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `l_lecturer_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `module_title`, `year`, `semester`, `l_lecturer_id`) VALUES
('MO1101', 'Operating Systems', 2, 1, 'L104'),
('MO1102', 'Human Resource Management', 1, 1, 'L103'),
('MO1103', 'Engineering Maths', 2, 2, 'L102'),
('MO1104', 'Database Management', 1, 1, 'L104');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` varchar(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `first_name`, `last_name`, `dob`, `gender`) VALUES
('ST001', 'Akila', 'Fernando', '1994-01-05', 'M'),
('ST002', 'Nimali', 'Mendis', '1995-05-30', 'F'),
('ST003', 'Yomal', 'Danushka', '1994-01-01', 'M'),
('ST004', 'Pawani', 'Dulanjali', '0994-02-03', 'F'),
('ST005', 'Shehani', 'Silva', '1995-10-17', 'F');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`lecturer_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`marks_id`),
  ADD KEY `m_module_id` (`m_module_id`),
  ADD KEY `s_student_id` (`s_student_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `lecturer_id` (`l_lecturer_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `marks_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`m_module_id`) REFERENCES `module` (`module_id`),
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`s_student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `module_ibfk_1` FOREIGN KEY (`l_lecturer_id`) REFERENCES `lecturer` (`lecturer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
