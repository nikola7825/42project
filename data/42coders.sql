-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2019 at 10:23 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `42coders`
--

-- --------------------------------------------------------

--
-- Table structure for table `dailylist`
--

CREATE TABLE `dailylist` (
  `id_list` int(5) NOT NULL,
  `listName` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dailylist`
--

INSERT INTO `dailylist` (`id_list`, `listName`) VALUES
(1, 'Prva'),
(2, 'Druga');

-- --------------------------------------------------------

--
-- Table structure for table `listdays`
--

CREATE TABLE `listdays` (
  `id` int(5) NOT NULL,
  `id_day` int(5) NOT NULL,
  `id_list` int(5) NOT NULL,
  `Movie` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `listdays`
--

INSERT INTO `listdays` (`id`, `id_day`, `id_list`, `Movie`) VALUES
(1, 1, 1, 'Rocky1'),
(2, 2, 1, 'Rocky2'),
(4, 2, 1, 'Oh Lucy!'),
(7, 6, 2, 'Pelle Kanin'),
(9, 3, 1, 'Grottmannen Dug'),
(10, 7, 2, 'Maze Runner: The Dea'),
(11, 5, 1, 'The Shape of Water'),
(12, 3, 1, 'Mind Game'),
(13, 2, 1, 'The Post');

-- --------------------------------------------------------

--
-- Table structure for table `week`
--

CREATE TABLE `week` (
  `id_day` int(5) NOT NULL,
  `dayName` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `week`
--

INSERT INTO `week` (`id_day`, `dayName`) VALUES
(1, 'Monday'),
(2, 'Tuesday'),
(3, 'Wednesday'),
(4, 'Thursday'),
(5, 'Friday'),
(6, 'Saturday'),
(7, 'Sunday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dailylist`
--
ALTER TABLE `dailylist`
  ADD PRIMARY KEY (`id_list`);

--
-- Indexes for table `listdays`
--
ALTER TABLE `listdays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_day` (`id_day`,`id_list`),
  ADD KEY `id_list` (`id_list`);

--
-- Indexes for table `week`
--
ALTER TABLE `week`
  ADD PRIMARY KEY (`id_day`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dailylist`
--
ALTER TABLE `dailylist`
  MODIFY `id_list` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `listdays`
--
ALTER TABLE `listdays`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listdays`
--
ALTER TABLE `listdays`
  ADD CONSTRAINT `listdays_ibfk_1` FOREIGN KEY (`id_list`) REFERENCES `dailylist` (`id_list`),
  ADD CONSTRAINT `listdays_ibfk_2` FOREIGN KEY (`id_day`) REFERENCES `week` (`id_day`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
