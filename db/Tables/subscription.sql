-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2020 at 06:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `queenprime`
--

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `userId` varchar(10) CHARACTER SET latin1 NOT NULL,
  `planId` varchar(255) CHARACTER SET latin1 NOT NULL,
  `expiryDate` varchar(255) NOT NULL,
  `remainingDate` varchar(255) NOT NULL,
  `paymentStatus` varchar(255) DEFAULT NULL,
  `misc1` varchar(11) DEFAULT NULL,
  `misc2` varchar(255) DEFAULT NULL,
  `isactive` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `userId`, `planId`, `expiryDate`, `remainingDate`, `paymentStatus`, `misc1`, `misc2`, `isactive`) VALUES
(20, '168', '2', '2021-01-11T16:29:10.132Z', '30', 'Monthly Plan', NULL, NULL, 1),
(21, '169', '1', '2054-10-08T16:29:52.597Z', '365', 'Yearly Plan', NULL, NULL, 1),
(22, '171', '1', '2054-10-08T16:30:56.269Z', '365', 'Yearly Plan', NULL, NULL, 1),
(23, '172', '1', '2054-10-08T16:40:46.852Z', '365', 'Yearly Plan', NULL, NULL, 1),
(24, '173', '1', '2054-10-08T16:41:58.564Z', '365', 'Yearly Plan', NULL, NULL, 1),
(25, '174', '2', '2024-04-13T16:43:28.420Z', '30', 'Monthly Plan', NULL, NULL, 1),
(26, '175', '2', '2020-12-12T16:48:56.941Z', '30', 'Monthly Plan', NULL, NULL, 1),
(27, '176', '1', '2020-12-12T16:51:54.156Z', '365', 'Yearly Plan', NULL, NULL, 1),
(28, '177', '2', '2024-04-13T16:53:51.965Z', '30', 'Monthly Plan', NULL, NULL, 1),
(29, '178', '1', '2054-10-08T16:55:06.733Z', '365', 'Yearly Plan', NULL, NULL, 1),
(30, '179', '1', '2021-12-12T16:56:42.948Z', '365', 'Yearly Plan', NULL, NULL, 1),
(31, '182', '1', '2021-12-12T16:57:50.972Z', '365', 'Yearly Plan', NULL, NULL, 1),
(32, '183', '1', '2021-12-12T16:58:41.556Z', '365', 'Yearly Plan', NULL, NULL, 1),
(33, '185', '2', '2021-01-11T16:59:04.133Z', '30', 'Monthly Plan', NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
