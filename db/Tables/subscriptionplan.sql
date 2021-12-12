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
-- Table structure for table `subscriptionplan`
--

CREATE TABLE `subscriptionplan` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL,
  `planValue` varchar(255) NOT NULL,
  `planType` varchar(255) NOT NULL,
  `validitydays` int(255) NOT NULL,
  `users` varchar(255) NOT NULL,
  `isactive` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscriptionplan`
--

INSERT INTO `subscriptionplan` (`id`, `name`, `description`, `planValue`, `planType`, `validitydays`, `users`, `isactive`) VALUES
(1, 'Yearly Plan', '<i class=\"fa fa-check\"></i>All features in basic<br>\r\n<i class=\"fa fa-check\"></i>Flexible cancel policy<br>\r\n<i class=\"fa fa-check\"></i>unbeatable quality and price', '₹999', 'Yearly Plan', 365, '2 User', 1),
(2, 'Monthly Plan', '<i class=\"fa fa-check\"></i>All features in basic<br>\r\n<i class=\"fa fa-check\"></i>Flexible cancel policy<br>\r\n<i class=\"fa fa-check\"></i>unbeatable quality and price', '₹150', 'Monthly Plan', 30, '1 User', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subscriptionplan`
--
ALTER TABLE `subscriptionplan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subscriptionplan`
--
ALTER TABLE `subscriptionplan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
