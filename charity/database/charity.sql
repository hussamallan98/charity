-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2021 at 05:22 PM
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
-- Database: `charity`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(3) NOT NULL,
  `admin_email` date NOT NULL,
  `admin_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`) VALUES
(1, '0000-00-00', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `charity`
--

CREATE TABLE `charity` (
  `charity_id` int(3) NOT NULL,
  `charity_name` text NOT NULL,
  `charity_email` text NOT NULL,
  `charity_password` text NOT NULL,
  `charity_phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `charity`
--

INSERT INTO `charity` (`charity_id`, `charity_name`, `charity_email`, `charity_password`, `charity_phone`) VALUES
(2, 'hussam', 'hussamallan@gmail.com', 'hussamallan', '0795676636'),
(3, 'ali', 'ali@gmail.com', 'aliallan', '0791517006'),
(4, 's', 's@gmail.com', 's1234567', '0788129260'),
(6, '', '', '', ''),
(7, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `supporter`
--

CREATE TABLE `supporter` (
  `supporter_id` int(3) NOT NULL,
  `supporter_name` text NOT NULL,
  `supporter_email` text NOT NULL,
  `supporter_password` text NOT NULL,
  `supporter_phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supporter`
--

INSERT INTO `supporter` (`supporter_id`, `supporter_name`, `supporter_email`, `supporter_password`, `supporter_phone`) VALUES
(2, 'ali', 'ali@gmail.com', 'aliallan123', '0791517006'),
(4, 'hussm', 'hussamallan@gmail.com', 'hussamallan', '0795676636');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `charity`
--
ALTER TABLE `charity`
  ADD PRIMARY KEY (`charity_id`);

--
-- Indexes for table `supporter`
--
ALTER TABLE `supporter`
  ADD PRIMARY KEY (`supporter_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `charity`
--
ALTER TABLE `charity`
  MODIFY `charity_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `supporter`
--
ALTER TABLE `supporter`
  MODIFY `supporter_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
