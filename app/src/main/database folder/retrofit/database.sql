-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2020 at 05:03 PM
-- Server version: 5.6.45-log
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cseiiucc_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cell` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `cell`, `password`) VALUES
(1, 'Noor Mohammed Anik ', '01672902634', '1234'),
(2, 'Anik', '01778001401', '1234'),
(3, 'name', '05555555555', '1234'),
(4, 'ggg', '05123456789', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(97, 'Kamal Uddin aaaa', 'kamal@gmail.com'),
(100, 'Rakib', 'rakib@gmail.com'),
(107, 'Noor Mohammed Anik', 'anik@gmail.com'),
(109, 'Naser', 'naser@gmail.com'),
(111, 'Kamal', 'kamal@gmail.com'),
(112, 'Rakib', 'rakib@gmail.com'),
(113, 'Noor Mohammed Anik', 'anik@gmail.com'),
(114, 'Naser', 'naser@gmail.com'),
(115, 'Emu Khan', 'emu@gmail.com'),
(116, 'Kamal', 'kamal@gmail.com'),
(117, 'Rakib', 'rakib@gmail.com'),
(118, 'Noor Mohammed Anik', 'anik@gmail.com'),
(119, 'Naser', 'naser@gmail.com'),
(120, 'Emu Khan', 'emu@gmail.com'),
(121, 'Kamal', 'kamal@gmail.com'),
(122, 'Rakib', 'rakib@gmail.com'),
(123, 'Noor Mohammed Anik', 'anik@gmail.com'),
(124, 'Naser', 'naser@gmail.com'),
(125, 'Emu Khan', 'emu@gmail.com'),
(126, 'Kamal', 'kamal@gmail.com'),
(127, 'Rakib', 'rakib@gmail.com'),
(128, 'Noor Mohammed Anik', 'anik@gmail.com'),
(129, 'Naser', 'naser@gmail.com'),
(130, 'Emu Khan', 'emu@gmail.com'),
(131, 'Kamal', 'kamal@gmail.com'),
(132, 'Rakib', 'rakib@gmail.com'),
(133, 'Noor Mohammed Anik', 'anik@gmail.com'),
(134, 'Naser', 'naser@gmail.com'),
(135, 'Emu Khan', 'emu@gmail.com'),
(136, 'Kamal', 'kamal@gmail.com'),
(137, 'Rakib', 'rakib@gmail.com'),
(138, 'Noor Mohammed Anik', 'anik@gmail.com'),
(139, 'Naser', 'naser@gmail.com'),
(140, 'Emu Khan', 'sayeeraemu@gmail.com'),
(141, 'Kamal', 'kamal@gmail.com'),
(142, 'Rakib', 'rakib@gmail.com'),
(143, 'Noor Mohammed Anik', 'anik@gmail.com'),
(144, 'Naser', 'naser@gmail.com'),
(145, 'Emu Khan', 'emu@gmail.com'),
(146, 'Ã‘ÃÃ±Ã¡Ã±]', 'ÃŸÃ°[ÃŸÃ°[');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
