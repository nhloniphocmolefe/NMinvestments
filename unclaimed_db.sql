-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2019 at 04:05 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unclaimed_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `arrears_db`
--

CREATE TABLE `arrears_db` (
  `customer_number` int(255) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `due_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pension_db`
--

CREATE TABLE `pension_db` (
  `id_number` int(13) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `withdrawal_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `provident_db`
--

CREATE TABLE `provident_db` (
  `id_number` varchar(13) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `amount` decimal(65,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provident_db`
--

INSERT INTO `provident_db` (`id_number`, `company_name`, `address`, `amount`) VALUES
('9307300097086', 'Standerton General Dealer', 'Cnr. Makapane Street', '900'),
('9607018038081', 'Energy Work', 'Cnr. Juta Street', '2000');

-- --------------------------------------------------------

--
-- Table structure for table `surplus_db`
--

CREATE TABLE `surplus_db` (
  `customer_number` int(255) NOT NULL,
  `id_number` varchar(13) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` char(100) NOT NULL DEFAULT '''not specified'''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surplus_db`
--

INSERT INTO `surplus_db` (`customer_number`, `id_number`, `first_name`, `last_name`, `gender`) VALUES
(1, '9307300097086', 'Nhlonipho', 'Molefe', 'F'),
(4, '9102085363088', 'Katleho', 'Motloung', 'M'),
(5, '9208120492087', 'Simangele', 'Mntungwa', 'F'),
(6, '9607018038081', 'Paul', 'Ntshabeleng Marome', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `Name` varchar(30) DEFAULT NULL,
  `Last Name` varchar(30) DEFAULT NULL,
  `Amount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arrears_db`
--
ALTER TABLE `arrears_db`
  ADD PRIMARY KEY (`customer_number`);

--
-- Indexes for table `pension_db`
--
ALTER TABLE `pension_db`
  ADD PRIMARY KEY (`id_number`),
  ADD UNIQUE KEY `id_number` (`id_number`);

--
-- Indexes for table `provident_db`
--
ALTER TABLE `provident_db`
  ADD KEY `id_number` (`id_number`);

--
-- Indexes for table `surplus_db`
--
ALTER TABLE `surplus_db`
  ADD PRIMARY KEY (`customer_number`),
  ADD UNIQUE KEY `id_number` (`id_number`),
  ADD KEY `id_number_2` (`id_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `surplus_db`
--
ALTER TABLE `surplus_db`
  MODIFY `customer_number` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
