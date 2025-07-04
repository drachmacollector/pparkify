-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2025 at 12:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
-- Table structure for table `booking_history`
--

CREATE TABLE `booking_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` time DEFAULT NULL,
  `slot_number` varchar(10) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_history`
--

INSERT INTO `booking_history` (`id`, `user_id`, `booking_date`, `booking_time`, `slot_number`, `user_name`, `area`) VALUES
(62, 8, '2025-04-16', '16:23:15', '5', NULL, NULL),
(63, 8, '2025-04-16', '16:53:00', '10', 'nxkul', 'Mumbai Central Parking'),
(64, 8, '2025-04-16', '16:56:19', '10', 'nxkul', 'Mumbai Central Parking'),
(65, 8, '2025-04-16', '17:02:04', '10', 'nxkul', 'Mumbai Central Parking'),
(66, 8, '2025-04-16', '17:02:55', '1', 'nxkul', 'Rambhag'),
(67, 8, '2025-04-16', '17:08:36', '2', 'nxkul', 'butibori'),
(68, 8, '2025-04-16', '17:17:09', '11', 'nxkul', 'butibori'),
(69, 8, '2025-04-16', '17:27:57', '1', 'nxkul', 'ambazari'),
(70, 8, '2025-04-16', '17:41:37', '9', 'nxkul', 'Rambhag'),
(71, 5, '2025-04-16', '19:36:05', '3', 'lakshuki123', 'butibori'),
(72, 5, '2025-04-16', '19:39:14', '10', 'lakshuki123', 'Mumbai Central Parking'),
(73, 5, '2025-04-16', '19:41:03', '4', 'lakshuki123', 'Mumbai Central Parking'),
(74, 8, '2025-04-16', '12:40:26', '7', 'nxkul', 'Mumbai Central Parking');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_history`
--
ALTER TABLE `booking_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_history`
--
ALTER TABLE `booking_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
