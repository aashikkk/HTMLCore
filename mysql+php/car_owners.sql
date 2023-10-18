-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2021 at 08:34 AM
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
-- Database: `car_owners`
--

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `insurance_id` int(11) NOT NULL,
  `company` varchar(30) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(40) DEFAULT NULL,
  `nic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `f_name`, `l_name`, `nic`) VALUES
(1001, 'Koshila', 'Kalansooriya', 2147483647),
(1002, 'Manori', 'Mendis', 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `brand` varchar(10) NOT NULL,
  `reg_yr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `brand`, `reg_yr`) VALUES
(1111, 'TOYOTA', 2019),
(2222, 'NISSAN', 0),
(3333, 'HONDA', 2020),
(4444, 'TOYOTA', 2000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`insurance_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
