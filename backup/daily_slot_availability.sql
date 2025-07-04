-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2025 at 08:51 PM
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
-- Database: `parkify`
--

-- --------------------------------------------------------

--
-- Table structure for table `daily_slot_availability`
--

CREATE TABLE `daily_slot_availability` (
  `id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `slot1` int(11) DEFAULT 0,
  `slot2` int(11) DEFAULT 0,
  `slot3` int(11) DEFAULT 0,
  `slot4` int(11) DEFAULT 0,
  `slot5` int(11) DEFAULT 0,
  `slot6` int(11) DEFAULT 0,
  `slot7` int(11) DEFAULT 0,
  `slot8` int(11) DEFAULT 0,
  `slot9` int(11) DEFAULT 0,
  `slot10` int(11) DEFAULT 0,
  `slot11` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daily_slot_availability`
--

INSERT INTO `daily_slot_availability` (`id`, `area_id`, `date`, `slot1`, `slot2`, `slot3`, `slot4`, `slot5`, `slot6`, `slot7`, `slot8`, `slot9`, `slot10`, `slot11`) VALUES
(1, 1, '2025-04-16', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
(2, 2, '2025-04-16', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
(3, 3, '2025-04-16', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
(4, 4, '2025-04-16', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
(5, 5, '2025-04-16', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
(6, 6, '2025-04-16', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
(7, 7, '2025-04-16', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
(8, 8, '2025-04-16', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
(9, 9, '2025-04-16', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
(10, 10, '2025-04-16', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
(11, 11, '2025-04-16', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
(12, 21, '2025-04-16', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10),
(13, 22, '2025-04-16', 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daily_slot_availability`
--
ALTER TABLE `daily_slot_availability`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `area_id` (`area_id`,`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daily_slot_availability`
--
ALTER TABLE `daily_slot_availability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daily_slot_availability`
--
ALTER TABLE `daily_slot_availability`
  ADD CONSTRAINT `daily_slot_availability_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `parkingspots` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
