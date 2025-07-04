-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2025 at 04:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkingspots`
--

-- --------------------------------------------------------

--
-- Table structure for table `parkingspots`
--

CREATE TABLE `parkingspots` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `lon` float DEFAULT NULL,
  `total_slots` int(11) DEFAULT NULL,
  `available_slots` int(11) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parkingspots`
--

INSERT INTO `parkingspots` (`id`, `name`, `lat`, `lon`, `total_slots`, `available_slots`, `city`, `area`) VALUES
(1, 'Airport Parking', 21.0909, 79.0547, 10, 10, 'Nagpur', 'Airport'),
(2, 'VR mall parking', 21.1293, 79.1059, 10, 10, 'Nagpur', 'Rambhag'),
(3, 'Eternity mall parking', 21.1517, 79.078, 10, 10, 'Nagpur', 'Sitaburdi'),
(4, 'Nagpur railway station parking', 21.1512, 79.0884, 10, 10, 'Nagpur', 'Railway station'),
(5, 'IIITN parking', 20.9447, 79.0266, 10, 10, 'Nagpur', 'butibori'),
(6, 'VNIT parking', 21.1265, 79.0503, 10, 10, 'Nagpur', 'ambazari'),
(7, 'IIIM parkings', 21.0344, 79.0203, 10, 10, 'Nagpur', 'jamtha'),
(8, 'AIIMS parking', 21.0332, 79.0385, 10, 10, 'Nagpur', 'jamtha'),
(9, 'Khapri metro station parking', 21.062, 79.0292, 10, 10, 'Nagpur', 'khapri'),
(10, 'Itwari parking', 21.1586, 79.1127, 10, 10, 'Nagpur', 'itwari'),
(11, 'Kasturchand Park parking', 21.1625, 79.0846, 10, 10, 'Nagpur', 'dhantoli');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parkingspots`
--
ALTER TABLE `parkingspots`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parkingspots`
--
ALTER TABLE `parkingspots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
