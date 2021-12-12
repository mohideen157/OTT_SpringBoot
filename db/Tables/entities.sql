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
-- Table structure for table `entities`
--

CREATE TABLE `entities` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `thumbnail` varchar(250) NOT NULL,
  `posterimg` varchar(255) NOT NULL,
  `preview` varchar(250) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `isactive` int(100) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entities`
--

INSERT INTO `entities` (`id`, `name`, `thumbnail`, `posterimg`, `preview`, `categoryId`, `isactive`) VALUES
(1, 'Friends', '/images/movie1.png', '/poster/slider.png', '/videos/asuran/index.m3u8', 1, 1),
(2, 'The Simpsons', '/images/movie2.png', '/poster/slider2.png', '/videos/avengers/index.m3u8', 1, 1),
(3, 'Toy Story', '/images/movie3.png', '/poster/slider3.png', '/videos/jagame/index.m3u8', 1, 1),
(4, 'Inbetweeners', '/images/movie4.png', '/poster/slider.png', '/videos/need4speed/index.m3u8', 1, 1),
(5, 'Suits', '/images/movie5.png', '/poster/slider2.png', '/videos/shortfilm/index.m3u8', 1, 1),
(6, 'Captain Underpants', '/images/movie6.png', '/poster/slider3.png', '/videos/vathi/index.m3u8', 1, 1),
(7, 'Brooklyn Nine-Nine', '/images/movie7.png', '/poster/slider.png', '/videos/asuran/index.m3u8', 1, 1),
(8, 'That 70s Show', '/images/movie8.png', '/poster/slider2.png', '/videos/avengers/index.m3u8', 1, 1),
(9, 'Pokemon', '/images/movie1.png', '/poster/slider3.png', '/videos/asuran/index.m3u8', 1, 1),
(10, 'Spongebob Squarepants', '/images/movie2.png', '/poster/slider.png', '/videos/avengers/index.m3u8', 1, 1),
(11, 'Futurama', '/images/movie3.png', '/poster/slider2.png', '/videos/jagame/index.m3u8', 1, 1),
(12, 'Johnny Bravo', '/images/movie4.png', '/poster/slider3.png', '/videos/need4speed/index.m3u8', 1, 1),
(13, 'Teenage Mutant Ninja Turtles', '/images/movie5.png', '/poster/slider.png', '/videos/shortfilm/index.m3u8', 2, 1),
(14, 'Power Puff Girls', '/images/movie6.png', '/poster/slider2.png', '/videos/vathi/index.m3u8', 2, 1),
(15, 'Teen Titans Go', '/images/movie7.png', '/poster/slider3.png', '/videos/asuran/index.m3u8', 2, 1),
(16, 'Jurassic Park', '/images/movie8.png', '/poster/slider.png', '/videos/avengers/index.m3u8', 2, 1),
(17, 'Grease', '/images/movie1.png', '/poster/slider2.png', '/videos/asuran/index.m3u8', 2, 1),
(18, 'Paddington Bear', '/images/movie2.png', '/poster/slider3.png', '/videos/avengers/index.m3u8', 2, 1),
(19, 'Santa Clause', '/images/movie3.png', '/poster/slider.png', '/videos/jagame/index.m3u8', 2, 1),
(20, 'Monster Family', '/images/movie4.png', '/poster/slider2.png', '/videos/need4speed/index.m3u8', 2, 1),
(21, 'Top Gun', '/images/movie5.png', '/poster/slider3.png', '/videos/shortfilm/index.m3u8', 2, 1),
(22, 'Home Alone', '/images/movie6.png', '/poster/slider.png', '/videos/vathi/index.m3u8', 2, 1),
(23, 'The Grinch', '/images/movie7.png', '/poster/slider2.png', '/videos/asuran/index.m3u8', 2, 1),
(24, 'National Lampoon\'s Christmas Vacation', '/images/movie8.png', '/poster/slider3.png', '/videos/avengers/index.m3u8', 2, 1),
(25, 'Elf', '/images/movie1.png', '/poster/slider.png', '/videos/asuran/index.m3u8', 3, 1),
(26, 'Fred Claus', '/images/movie2.png', '/poster/slider2.png', '/videos/avengers/index.m3u8', 3, 1),
(27, 'Jaws', '/images/movie3.png', '/poster/slider3.png', '/videos/jagame/index.m3u8', 3, 1),
(28, 'Live Die Repeat', '/images/movie4.png', '/poster/slider.png', '/videos/need4speed/index.m3u8', 3, 1),
(29, 'Into the Storm', '/images/movie5.png', '/poster/slider2.png', '/videos/shortfilm/index.m3u8', 3, 1),
(30, 'Mission Impossible', '/images/movie6.png', '/poster/slider3.png', '/videos/vathi/index.m3u8', 3, 1),
(31, 'Never Back Down', '/images/movie7.png', '/poster/slider.png', '/videos/asuran/index.m3u8', 3, 1),
(32, 'Mechanic', '/images/movie8.png', '/poster/slider2.png', '/videos/avengers/index.m3u8', 3, 1),
(33, 'Need for Speed', '/images/movie1.png', '/poster/slider3.png', '/videos/asuran/index.m3u8', 3, 1),
(34, 'Gravity', '/images/movie2.png', '/poster/slider.png', '/videos/avengers/index.m3u8', 3, 1),
(35, 'Step Brothers', '/images/movie3.png', '/poster/slider2.png', '/videos/jagame/index.m3u8', 3, 1),
(36, 'Game of Thrones', '/images/movie4.png', '/poster/slider3.png', '/videos/need4speed/index.m3u8', 3, 1),
(37, 'Dark Money', '/images/movie5.png', '/poster/slider.png', '/videos/shortfilm/index.m3u8', 4, 1),
(38, 'Yellowstone', '/images/movie6.png', '/poster/slider2.png', '/videos/vathi/index.m3u8', 4, 1),
(39, 'Manifest', '/images/movie7.png', '/poster/slider3.png', '/videos/asuran/index.m3u8', 4, 1),
(40, 'The Sound of Music', '/images/movie8.png', '/poster/slider.png', '/videos/avengers/index.m3u8', 4, 1),
(41, 'Hairspray', '/images/movie1.png', '/poster/slider2.png', '/videos/asuran/index.m3u8', 4, 1),
(42, 'Believe', '/images/movie2.png', '/poster/slider3.png', '/videos/avengers/index.m3u8', 4, 1),
(43, 'Chris Brown: Till I Die', '/images/movie3.png', '/poster/slider.png', '/videos/jagame/index.m3u8', 4, 1),
(44, 'Men in Black', '/images/movie4.png', '/poster/slider2.png', '/videos/need4speed/index.m3u8', 4, 1),
(45, 'Interstellar', '/images/movie5.png', '/poster/slider3.png', '/videos/shortfilm/index.m3u8', 4, 1),
(46, 'Transformers', '/images/movie6.png', '/poster/slider.png', '/videos/vathi/index.m3u8', 4, 1),
(47, 'Cloudy with a Chance of Meatballs', '/images/movie7.png', '/poster/slider2.png', '/videos/asuran/index.m3u8', 4, 1),
(48, 'District 9', '/images/movie8.png', '/poster/slider3.png', '/videos/avengers/index.m3u8', 4, 1),
(49, 'name', '/images/movie1.png', '/poster/slider.png', '/videos/asuran/index.m3u8', 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `entities`
--
ALTER TABLE `entities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `entities`
--
ALTER TABLE `entities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `entities`
--
ALTER TABLE `entities`
  ADD CONSTRAINT `entities_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
