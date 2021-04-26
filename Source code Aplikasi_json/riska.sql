-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 11:48 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riska`
--

-- --------------------------------------------------------

--
-- Table structure for table `boarding_pass`
--

CREATE TABLE `boarding_pass` (
  `nama` varchar(30) NOT NULL,
  `seat` varchar(30) NOT NULL,
  `no_penerbangan` int(30) NOT NULL,
  `pos_from` varchar(30) NOT NULL,
  `pos_to` varchar(30) NOT NULL,
  `maskapai` varchar(30) NOT NULL,
  `status_class` varchar(30) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boarding_pass`
--

INSERT INTO `boarding_pass` (`nama`, `seat`, `no_penerbangan`, `pos_from`, `pos_to`, `maskapai`, `status_class`, `date`) VALUES
('Riska Nur', '1A', 308655678, 'Jakarta', 'Singapore', 'Riskano Airlines', 'First class', '2028-10-21'),
('Muhammad Ridha', '4A', 2147483647, 'Jakarta', 'Dubai', 'Arabian Airlines', 'First class', '2018-11-21'),
('Rifqi A.', '6C', 467657768, 'Jakarta', 'London', 'Citylink', 'Economy class', '0000-00-00'),
('Ridha M', '5F', 2147483647, 'Jakarta', 'Papua', 'Garuda Indonesia', 'Business class', '0007-05-21'),
('Riza M', '10B', 308655678, 'Jakarta', 'Singapore', 'Riskano Airlines', 'First class', '0000-00-00'),
('Niki Esa', '2D', 2147483647, 'Tasikmalaya', 'Jakarta', 'Batik Air', 'First class', '0008-07-21');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
