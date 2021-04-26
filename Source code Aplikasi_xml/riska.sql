-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2021 at 11:44 PM
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
-- Table structure for table `foodorder`
--

CREATE TABLE `foodorder` (
  `menu` varchar(30) NOT NULL,
  `lokasi_merchant` varchar(30) NOT NULL,
  `lokasi_tujuan` varchar(30) NOT NULL,
  `jarak` int(30) NOT NULL,
  `nama_pemesan` varchar(30) NOT NULL,
  `harga` int(30) NOT NULL,
  `pembayaran` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodorder`
--

INSERT INTO `foodorder` (`menu`, `lokasi_merchant`, `lokasi_tujuan`, `jarak`, `nama_pemesan`, `harga`, `pembayaran`) VALUES
('Fettucini Carbonara', 'Cimenyan 2', 'Jl. Dewi Sartika', 5, 'Riska Nur', 20, 'Dana'),
('Burger chill', 'Banjarkolot', 'Balokang', 8, 'Ridha M', 30, 'BCA Mobile'),
('Beef Steak', 'Balokang', 'Cimenyan 2', 3, 'Alpan B', 60, 'mandiri'),
('Chicken Steak', 'Jl. Dewi Sartika', 'Balokang', 9, 'Riza M', 40, 'gopay'),
('Kebab', 'Cimenyan 2', 'Jl. Dewi Sartika', 3, 'Hartono', 35, 'Shopee pay'),
('Chocolate oreo', 'Banjarkolot', 'Cimenyan 2', 2, 'Niki Esa', 45, 'BRI'),
('Lemon tea', 'Balokang', 'Jl. Dewi Sartika', 4, 'Retni R', 34, 'Gopay'),
('Mie nyemek', 'Jl. Dewi Sartika', 'Balokang', 2, 'Nurcahyati', 25, 'Dana');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
