-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2020 at 03:17 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swapsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `number` int(15) DEFAULT NULL,
  `image` longtext DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `zone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `password`, `number`, `image`, `role`, `zone`) VALUES
('admin', 'admin@test.com', '$2y$10$IKTP1HP8XPLFXMcPZip9xuqmqPHG9kUoGqYHy2Nfe4aVWNCQRnaQm', 999, 'McDonalds-Drive-Thru.jpg', 'admin', 'all'),
('inventory', 'inventory@test.com', '$2y$10$IKTP1HP8XPLFXMcPZip9xuqmqPHG9kUoGqYHy2Nfe4aVWNCQRnaQm', 123, 'jayPrichett.jpg', 'admin', 'inventory'),
('user', 'user@test.com', '$2y$10$3XVf.QMsGIvd6Sx6.l39qu6gMB0jcttS/9/zNDEpro0lMLBc6EP2G', 123, 'jayPrichett.jpg', 'users', 'normaluser');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
