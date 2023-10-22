-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 05:11 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patient_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`) VALUES
('a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `package_ID` varchar(30) NOT NULL,
  `bill_ID` int(11) NOT NULL,
  `bill_name` varchar(30) NOT NULL,
  `patient_ID` varchar(20) NOT NULL,
  `patient_name` varchar(20) DEFAULT NULL,
  `hospital_name` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `cost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`package_ID`, `bill_ID`, `bill_name`, `patient_ID`, `patient_name`, `hospital_name`, `date`, `cost`) VALUES
('007', 7001, 'pharmacy', 'emon007', 'emon', NULL, '01 Jan 2024', '500'),
('007', 7002, 'physician', 'emon007', 'emon', NULL, '01 Jan 2024', '700'),
('011', 11001, 'physician', 'efty2f', 'efty', NULL, '01 Jan 2023', '500'),
('011', 11002, 'pharmacy', 'efty2f', 'efty', NULL, '01 Jan 2023', '200'),
('011', 11003, 'over night', 'efty2f', 'efty', NULL, '01 Jan 2023', '700'),
('011', 11004, 'others', 'efty2f', 'efty', NULL, '01 Jan 2023', '400');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_ID` varchar(20) NOT NULL,
  `doctor_name` varchar(20) DEFAULT NULL,
  `specialization` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(30) NOT NULL,
  `schedule` varchar(30) NOT NULL,
  `photos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_ID`, `doctor_name`, `specialization`, `email`, `phone`, `schedule`, `photos`) VALUES
('abid123', 'Abid', 'Otolaryngology', 'abid@gmail.com', '1724080441', '8am-10am', 'https://cdn-icons-png.flaticon.com/512/4497/4497898.png'),
('arefin123', 'Arefin', 'Pediatrics', 'arefin@gmail.com', '1743794723', '10am-12am', 'https://i.ibb.co/WzFgqtf/322731985-1406551639876484-4566395420581937278-n-1.jpg'),
('arefin222', 'Sabbir', 'Pediatrics', 'eftysss@gmail.com', '01780803873', '10am-12am', 'https://i.ibb.co/gt3CzdW/313320270-1293052174851127-1064857185847928417-n.jpg'),
('efty123', 'Efty', 'Dermatology', 'efty@gmail.com', '1724080441', '11am-1pm', 'https://i.ibb.co/wNKX2Yd/134724667-2717780091807716-8203479091427035376-n.jpg'),
('efty222', 'Raju', 'Dermatology', 'eftys@gmail.com', '01724080441', '11am-1pm', 'https://i.ibb.co/FVbd46n/download.jpg'),
('emon123', 'Emon', 'Otolaryngology', 'emon@gmail.com', '1780803873', '03pm-5pm', 'https://i.ibb.co/8bKPfs3/309714254-5652711291460814-800357568969738650-n.jpg'),
('galib123', 'Galib', 'Pediatrics', 'galib@gmail.com', '01724080441', '03pm-5pm', 'https://i.ibb.co/1nxP71X/95392501-681341552424025-3439927710678253568-n.jpg'),
('leo123', 'Leo', 'Psychiatry', 'leo@gmail.com', '1724080441', '4pm-6pm', 'https://i.ibb.co/VNnCT76/294674533-3151252228425553-7415361779914525034-n.jpg'),
('sajid123', 'Sajid', 'Psychiatry', 'sajid@gmail.com', '01724080441', '4pm-6pm', 'https://i.ibb.co/D59YTcS/83522285-771215823368412-2657167816448278528-n.jpg'),
('shipon123', 'Shipon', 'Psychiatry', 'eftysda@gmail.com', '01780803873', '11am-1pm', 'https://i.ibb.co/pJ7xbNH/65293797-1213116282201990-1177406576290430976-n.jpg'),
('sourav123', 'Sourav', 'Otolaryngology', 'sourav@gmail.com', '1743794723', '7pm-10pm', 'https://i.ibb.co/ZYwZR1V/280786703-376996451143965-453533987652838006-n.jpg'),
('van123', 'Van Dijk', 'Dermatology', 'evan@gmail.com', '01780803873', '9pm-10pm', 'https://cdn-icons-png.flaticon.com/512/4497/4497898.png');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_ID` varchar(20) NOT NULL,
  `patient_name` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `prescription` varchar(500) DEFAULT NULL,
  `doctor_ID` int(11) DEFAULT NULL,
  `doctor_name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` enum('male','female') NOT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_ID`, `patient_name`, `phone`, `email`, `address`, `prescription`, `doctor_ID`, `doctor_name`, `age`, `gender`, `password`) VALUES
('efty2f', 'eee', '01780802222', 'eeeddd@re', '', NULL, NULL, NULL, 22, 'male', '12'),
('emon007', 'emon', '01780802222', 'emon@gmail.com', 'dubai', NULL, NULL, NULL, 24, 'female', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`package_ID`,`bill_ID`,`patient_ID`),
  ADD KEY `fk_bill_pat_name` (`patient_ID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_doctor_ID` (`doctor_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_bill_hos_name` FOREIGN KEY (`hospital_name`) REFERENCES `hospital` (`hospital_name`),
  ADD CONSTRAINT `fk_bill_pat_name` FOREIGN KEY (`patient_ID`) REFERENCES `patient` (`patient_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
