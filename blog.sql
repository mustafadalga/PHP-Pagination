-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2019 at 01:36 PM
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
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `makaleler`
--

CREATE TABLE `makaleler` (
  `id` int(11) NOT NULL,
  `baslik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `makaleler`
--

INSERT INTO `makaleler` (`id`, `baslik`) VALUES
(1, 'Python'),
(2, 'ASP'),
(3, 'PHP'),
(4, 'HTML'),
(5, 'CSS'),
(6, 'Jquery'),
(7, 'Javascript'),
(8, 'NodeJs'),
(9, 'AngularJs'),
(10, 'React'),
(11, 'Selenium'),
(12, 'C#'),
(13, 'Thread'),
(14, 'Powershell'),
(15, 'Metasploit'),
(16, 'ARP SPoofing'),
(17, 'DNS SPOOF'),
(18, 'ARP Detector'),
(19, 'PHP Security'),
(20, 'Instagram Bot'),
(21, 'Python -OpenCV'),
(22, 'Siber güvenlik'),
(23, 'PHP - Pagination'),
(24, 'Selenium - İnstagram Bot Yapımı'),
(25, 'Github Kullanımı'),
(26, 'Mqsql Nedir?'),
(27, 'Github && Gitlab'),
(28, 'Youtube Premium nedir'),
(29, 'Tkinder Kütüphanesi'),
(30, 'Ajax kullanımı'),
(31, 'NodeJS ile anlık mesajlaşma uygulaması yapımı'),
(32, 'Python ile ReverseShell Yapımı');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `makaleler`
--
ALTER TABLE `makaleler`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `makaleler`
--
ALTER TABLE `makaleler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
