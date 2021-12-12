-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 10:20 AM
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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(25) DEFAULT NULL,
  `lastName` varchar(25) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signUpDate` datetime NOT NULL DEFAULT current_timestamp(),
  `isSubscribed` tinyint(4) NOT NULL DEFAULT 0,
  `isactive` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `mobile_no`, `password`, `signUpDate`, `isSubscribed`, `isactive`) VALUES
(1, 'Prabakaran', 'Kannan', 'prabaerode1', 'kannanprabakaran84@gmail.com', '', '36098c17900de2eaf5b4b586bd15c6af5039ac4ce291767a1ba033ea27fe11187417e62ab988d2b9bec52da9f1f5af021443eaa37bab4fcf9c90a4763f957022', '2020-10-23 11:46:22', 0, 1),
(2, 'Praba', 'Karan', 'prabaerode', 'prabaerode@gmail.com', '', '$2a$10$EHmnNIoGjBn.WVUYoTvTieWtkDSFLYUE10S3sykTUU7JLuOqQZSaq', '2020-10-26 00:00:00', 0, 1),
(4, 'Praba', 'Karan', 'prabaerode11', 'prabaerode1gmail.com', '', '$2a$10$Tdz10RvaHocFjVdGjArbXeLV02AfU66wo6BBOUZbpTkhhpfhCkjHW', '2020-11-01 00:00:00', 0, 1),
(6, 'Praba', 'Karan', 'prabaerode112', 'prabaerode12@gmail.com', '', '$2a$10$Iv.yG5silI4sYjpIWfqr6erY9qgEDR0Ldlkcns6jD4Z4iRJgQLhSC', '2020-11-01 00:00:00', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
