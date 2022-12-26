-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 09:23 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id` int(11) NOT NULL,
  `idUser` varchar(50) NOT NULL,
  `acc` time NOT NULL,
  `annotation` varchar(100) NOT NULL,
  `from` time NOT NULL,
  `isVerify` varchar(100) NOT NULL,
  `to` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`id`, `idUser`, `acc`, `annotation`, `from`, `isVerify`, `to`) VALUES
(1, '1', '08:13:53', 'weqeq', '08:15:53', 'wwq', '08:23:53'),
(2, '1', '08:57:26', 'sdkj', '08:57:26', 'jdhsjk', '23:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `ijin`
--

CREATE TABLE `ijin` (
  `id` int(11) NOT NULL,
  `idUser` varchar(50) NOT NULL,
  `acc` time NOT NULL,
  `annotation` varchar(100) NOT NULL,
  `from` time NOT NULL,
  `isVerify` varchar(100) NOT NULL,
  `to` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ijin`
--

INSERT INTO `ijin` (`id`, `idUser`, `acc`, `annotation`, `from`, `isVerify`, `to`) VALUES
(2, '1', '08:57:26', 'sdkj', '08:57:26', 'jdhsjk', '23:23:11'),
(3, '1', '08:57:26', 'dsda', '08:57:26', 'jdhsjk', '23:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `overtimein`
--

CREATE TABLE `overtimein` (
  `id` int(11) NOT NULL,
  `idUser` varchar(50) NOT NULL,
  `acc` time DEFAULT NULL,
  `annotation` varchar(100) DEFAULT NULL,
  `from` time DEFAULT NULL,
  `isVerify` varchar(100) DEFAULT NULL,
  `to` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `overtimein`
--

INSERT INTO `overtimein` (`id`, `idUser`, `acc`, `annotation`, `from`, `isVerify`, `to`) VALUES
(3, '1', '08:57:26', 'jk', '48:57:26', 'jkb', '56:57:26'),
(4, '1', NULL, 'wkwk', NULL, 'sukse', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `overtimeout`
--

CREATE TABLE `overtimeout` (
  `id` int(11) NOT NULL,
  `idUser` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `foto` varchar(100) NOT NULL,
  `lokasi` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `overtimeout`
--

INSERT INTO `overtimeout` (`id`, `idUser`, `date`, `foto`, `lokasi`, `time`) VALUES
(1, '1', '0000-00-00', '', 'jogja', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl-clockin`
--

CREATE TABLE `tbl-clockin` (
  `id` int(11) NOT NULL,
  `idUser` varchar(50) NOT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `lokasi` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl-clockin`
--

INSERT INTO `tbl-clockin` (`id`, `idUser`, `foto`, `lokasi`, `date`, `time`) VALUES
(1, '1', 'sddd', 'dsad', '2022-12-15', '14:31:20'),
(2, '1', 'fdssss', 'kudus', '2022-12-02', '14:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl-clockout`
--

CREATE TABLE `tbl-clockout` (
  `id` int(11) NOT NULL,
  `idUser` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `foto` varchar(100) NOT NULL,
  `lokasi` text NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl-clockout`
--

INSERT INTO `tbl-clockout` (`id`, `idUser`, `date`, `foto`, `lokasi`, `time`) VALUES
(2, '1', '2022-12-02', 'kamu', 'kudus', '14:31:12'),
(3, '1', '2022-12-12', 'djk', 'mjhds', '08:57:12'),
(4, '1', '2022-12-16', 'ih', 'jk', '08:22:00'),
(6, '1', '2022-12-12', 'djk', 'mjhds', '08:57:12'),
(7, '1', '2022-12-12', 'djk', 'mjhds', '08:57:12'),
(8, '1', '2022-12-12', 'djk', 'mjhds', '08:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `tbl-user`
--

CREATE TABLE `tbl-user` (
  `id` int(11) NOT NULL,
  `idUser` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` text DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl-user`
--

INSERT INTO `tbl-user` (`id`, `idUser`, `email`, `foto`, `job`, `phone`, `username`) VALUES
(1, '1', 'mls@gmail.com', 'lf', 'Web Dev', '08922319381', 'munif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ijin`
--
ALTER TABLE `ijin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `overtimein`
--
ALTER TABLE `overtimein`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `overtimeout`
--
ALTER TABLE `overtimeout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `tbl-clockin`
--
ALTER TABLE `tbl-clockin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `tbl-clockout`
--
ALTER TABLE `tbl-clockout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `tbl-user`
--
ALTER TABLE `tbl-user`
  ADD PRIMARY KEY (`idUser`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ijin`
--
ALTER TABLE `ijin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `overtimein`
--
ALTER TABLE `overtimein`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `overtimeout`
--
ALTER TABLE `overtimeout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl-clockin`
--
ALTER TABLE `tbl-clockin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl-clockout`
--
ALTER TABLE `tbl-clockout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl-user`
--
ALTER TABLE `tbl-user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ijin`
--
ALTER TABLE `ijin`
  ADD CONSTRAINT `ijin_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `tbl-user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `overtimein`
--
ALTER TABLE `overtimein`
  ADD CONSTRAINT `overtimein_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `tbl-user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `overtimeout`
--
ALTER TABLE `overtimeout`
  ADD CONSTRAINT `overtimeout_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `tbl-user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl-clockout`
--
ALTER TABLE `tbl-clockout`
  ADD CONSTRAINT `tbl-clockout_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `tbl-user` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
