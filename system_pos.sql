-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2021 at 08:27 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `user_id` int(25) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`user_id`, `fullname`, `username`, `password`, `position`) VALUES
(1, 'Marjorie Entoma', 'marjGorgeous', 'joyax', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_type` varchar(255) NOT NULL,
  `availability` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_type`, `availability`, `price`, `created_at`, `updated_at`) VALUES
(1, 'adobong manok', 'lunch', 'available', 165.75, '2021-05-28 10:59:04', NULL),
(2, 'vegetable salad', 'dinner', 'available', 259, '2021-05-28 10:59:34', NULL),
(3, 'Tapsilog', 'breakfast', 'available', 55.25, '2021-05-28 10:59:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `order_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `bill` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_ordered` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`order_id`, `menu_id`, `menu_name`, `bill`, `quantity`, `status`, `date_ordered`) VALUES
(1, 3, 'Tapsilog', 55.25, 2, 1, '2021-05-28 11:31:36'),
(2, 3, 'Tapsilog', 55.25, 2, 1, '2021-05-28 22:12:48'),
(3, 2, 'vegetable salad', 259, 23, 1, '2021-05-29 11:18:20'),
(4, 2, 'vegetable salad', 259, 23, 1, '2021-05-29 11:18:24'),
(5, 3, 'Tapsilog', 55.25, 2, 1, '2021-05-30 12:35:11'),
(6, 3, 'Tapsilog', 55.25, 1, 1, '2021-05-30 12:50:27'),
(7, 3, 'Tapsilog', 221, 4, 1, '2021-05-30 13:18:24'),
(8, 3, 'Tapsilog', 331.5, 6, 1, '2021-05-30 13:24:25'),
(9, 1, 'adobong manok', 994.5, 6, 1, '2021-05-30 13:24:41'),
(10, 1, 'adobong manok', 165.75, 1, 1, '2021-05-30 13:26:47'),
(11, 3, 'Tapsilog', 55.25, 1, 1, '2021-05-30 13:26:52'),
(12, 1, 'adobong manok', 497.25, 3, 1, '2021-05-30 13:30:40'),
(13, 1, 'adobong manok', 663, 4, 1, '2021-05-30 13:34:16'),
(14, 2, 'vegetable salad', 518, 2, 1, '2021-05-30 14:09:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `user_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
