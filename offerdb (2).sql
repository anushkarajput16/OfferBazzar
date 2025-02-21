-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2024 at 06:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `offerdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertiser`
--

CREATE TABLE `advertiser` (
  `aid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `shopName` varchar(256) NOT NULL,
  `category` varchar(256) NOT NULL,
  `openTime` varchar(256) NOT NULL,
  `closeTime` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `area` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `latitude` varchar(6) NOT NULL,
  `longitude` varchar(6) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertiser`
--

INSERT INTO `advertiser` (`aid`, `name`, `shopName`, `category`, `openTime`, `closeTime`, `address`, `area`, `city`, `pincode`, `latitude`, `longitude`, `contact`, `email`, `password`, `status`) VALUES
(1, 'Flipcart', 'Anushka\' shop', 'cloths', '9:00 am', '10:00pm', 'shirpur', 'ram nagar', 'shirpur', '405678', '12', '34', '3545465657', 'a@gmail.com', '456', 'disapproved'),
(2, 'komal', 'Meesho Shop', 'jwellery', '9:00 am', '10:00 pm', 'aurangabad', 'Ram Nagar', 'ndb', '6655', '78', '80', '43555667', 'k@gmail.com', 'kkk', 'disapproved'),
(3, 'Flipcart', 'Mitra Shop', 'Watches', '9:00 am', '10:00 am', 'near gandhi road', 'gandhi nagar', 'mumbai', '232345', '23', '45', '2233445566', 'mitra@gmail.com', 'mit123', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) NOT NULL,
  `aid` int(10) NOT NULL,
  `offerName` varchar(100) NOT NULL,
  `offerDetails` varchar(100) NOT NULL,
  `startDate` varchar(256) NOT NULL,
  `endDate` varchar(100) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `area` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `category` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `aid`, `offerName`, `offerDetails`, `startDate`, `endDate`, `pincode`, `area`, `city`, `category`) VALUES
(1, 1, 'Diwali offer', '50% discount', '24/1/2024', '30/1/2024', '6655', 'sneh nagar', 'dhule', 'cloths'),
(2, 2, 'Navratri Offer', '30% discount', '2/2/2024', '5/2/2024', '111222', 'nimzari naka', 'shirpur', 'Electonics'),
(3, 2, 'winter offer', '60% discount', '1/1/2024', '1/2/2024', '223344', 'Ram Nagar', 'shirpur', 'socks');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `address` varchar(256) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `city`, `contact`, `address`, `email`, `password`) VALUES
(1, 'anushka', 'ndb', '24556677', 'balaji nagar', 'anu@gmail.com', '456'),
(2, 'komal', 'shirpur', '23142424', 'nandurbar', 'kk@gmail.com', 'kkk'),
(3, 'Riya', 'chalisgav', '1212454566', 'sharada nagar', 'riya@gmail.com', 'riya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertiser`
--
ALTER TABLE `advertiser`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertiser`
--
ALTER TABLE `advertiser`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
