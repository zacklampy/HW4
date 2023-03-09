-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 05, 2023 at 10:18 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HW3`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `forename` varchar(128) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `forename`, `surname`, `password`) VALUES
(1, 'zacklampy', 'zack', 'lampkin', 'zack3225'),
(2, 'jstizz', 'jackson', 'stark', 'gg44'),
(3, 'gmoney', 'greyson', 'rydners', 'gmoney35'),
(4, 'driveski', 'jackson', 'drivers', 'driver44'),
(5, 'hbishop', 'hannah', 'bishop', 'hannah22'),
(6, 'lit', 'grace', 'westbrook', 'gwesty'),
(7, 'jrod', 'jonathon', 'rodrigues', 'jrod25'),
(8, 'arod', 'anthony', 'rodrigues', 'arod32'),
(9, 'thelampkin', 'jonathon', 'lampkin', 'lampy88'),
(10, 'bill32', 'robert', 'lampkin', 'bill22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;