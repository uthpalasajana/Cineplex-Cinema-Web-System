-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 04:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uthpalaweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `EventID` int(11) NOT NULL,
  `EventName` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`EventID`, `EventName`, `Image`) VALUES
(0, 'sahara', 'http://localhost/wonka.webp');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(5) NOT NULL,
  `image` varchar(200) NOT NULL,
  `time` time NOT NULL,
  `date` varchar(100) NOT NULL,
  `Trailer` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieId`, `name`, `price`, `image`, `time`, `date`, `Trailer`) VALUES
(0, 'Dune 2 ', 300, 'http://localhost/dila/img/films/kathurumithuru.jpeg', '10:30:00', 'Tuesday', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `movieId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(5) NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` time NOT NULL,
  `Trailer` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specials`
--

INSERT INTO `specials` (`movieId`, `name`, `price`, `image`, `date`, `time`, `Trailer`) VALUES
(0, 'mission Impossible', '500', 'http://localhost/dila/img/specialscreening/background.jpg', 'Friday', '10:30:00', 'hfsfsf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `phoneNumber` int(15) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UID`, `fullName`, `username`, `Email`, `phoneNumber`, `Password`, `type`) VALUES
(0, 'kaviya', 'kavimihiraj', 'kavidu@gmail.com', 112241202, 'kavi123', 'admin'),
(1, 'induwarakavidu', 'induwara2001', 'induwara@gmail.com', 332214562, 'induwara123', 'admin'),
(2, 'dewmidewmi', 'dewmichetha', 'Yasasbcg@Gmail.Com', 114215236, '12345', 'admin'),
(0, 'hello', 'hello123', 'hello@gmail.com', 774898756, 'hello123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
