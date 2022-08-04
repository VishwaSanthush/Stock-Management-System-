-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2021 at 08:28 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblstock`
--

CREATE TABLE `tblstock` (
  `id` int(11) NOT NULL,
  `stockname` varchar(300) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `person` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstock`
--

INSERT INTO `tblstock` (`id`, `stockname`, `quantity`, `date`, `person`) VALUES
(1, 'Coke', 120, '12/06/2021', 'Admin'),
(2, 'Coke 1L', 120, '12/06/2021', 'User'),
(3, 'Mountain dew', 120, '12/06/2021', 'Admin'),
(4, 'Sprite', 120, '12/06/2021', 'Admin'),
(5, 'Beer', 120, '12/06/2021', 'Admin'),
(6, 'Redhorse Beer', 120, '12/06/2021', 'User'),
(7, 'SanMig Light', 120, '12/06/2021', 'Admin'),
(10, 'Royal', 120, '12/06/2021', 'Admin'),
(15, 'ddfff', 12, '12', 'Admin'),
(16, 'fsd', 777, '12', 'Admin'),
(17, 'hh', 12, '12', 'Admin'),
(18, 'ssa', 12, '12', 'Admin'),
(19, 'fffcc', 123, '12', 'Admin'),
(20, 'ass', 12, '12', 'Admin'),
(21, 'qw', 12, '12', 'Admin'),
(22, 'aa', 12, '2', 'User'),
(23, 'aa', 11, '11', 'User'),
(24, 'aa', 11, '11', 'User'),
(25, 'qq', 1, '1', 'User'),
(26, 'sss', 22, '22', 'User'),
(27, 'qqq', 11, '11', 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `userid` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`userid`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblstock`
--
ALTER TABLE `tblstock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblstock`
--
ALTER TABLE `tblstock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
