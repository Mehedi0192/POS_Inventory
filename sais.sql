-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2018 at 11:52 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sais`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `date_created` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `account_type`, `date_created`, `created_by`) VALUES
(6, 'admin', '$2y$10$sz3qGH0YY5i2LdfCNVLzx.781iqyy7rGTVfD50N/9OXlV7SXwgs1G', 'Admin', '2017-07-07 02:10:21 am', 'admin'),
(7, 'cashier', '$2y$10$sz3qGH0YY5i2LdfCNVLzx.781iqyy7rGTVfD50N/9OXlV7SXwgs1G', 'Cashier', '2017-07-07 02:10:28 am', 'admin'),
(8, 'clerk', '$2y$10$sz3qGH0YY5i2LdfCNVLzx.781iqyy7rGTVfD50N/9OXlV7SXwgs1G', 'Clerk', '2017-07-07 02:10:42 am', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `date_time` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `creator` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `date_time`, `category`, `creator`) VALUES
(20, '2017-07-07 01:48:30 am', 'Liqour', 'admin'),
(21, '2017-07-07 01:48:34 am', 'Junk Food', 'admin'),
(22, '2017-07-07 03:47:09 am', 'Soap', 'admin'),
(23, '2017-07-07 03:47:18 am', 'Can Goods', 'admin'),
(24, '2017-07-07 03:47:33 am', 'Drinks', 'admin'),
(25, '2017-07-07 03:47:52 am', 'Biscuit', 'admin'),
(26, '2017-07-07 03:47:57 am', 'Candy', 'admin'),
(27, '2017-07-07 03:48:23 am', 'Detergents', 'admin'),
(28, '2017-07-07 03:49:44 am', 'Shampoo', 'admin'),
(29, '2018-02-25 04:46:44 am', 'Laptop', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date_time` varchar(50) NOT NULL,
  `creator` varchar(50) NOT NULL,
  `quantities` int(11) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category`, `description`, `date_time`, `creator`, `quantities`, `price`) VALUES
(23, 'Tide Powder ', 'Detergents', 'Tide Jumbo Powder 50Grams', '2017-07-07 03:48:43 am', 'admin', 50, 12),
(24, 'Wings', 'Detergents', 'Wings Powder 8G', '2017-07-07 03:49:12 am', 'admin', 50, 7),
(25, 'Safeguard', 'Soap', 'Safeguard 18G', '2017-07-07 03:49:30 am', 'admin', 45, 22),
(26, 'Guard', 'Shampoo', 'Guard Shampoo 5ml', '2017-07-07 03:50:00 am', 'admin', 5, 6),
(27, 'Sunsilk Condition', 'Shampoo', 'Sunsilk Conditioner 5g', '2017-07-07 03:50:51 am', 'admin', 50, 6),
(28, 'Mega Sardines', 'Can Goods', 'Mega Sardines Chilly', '2017-07-07 03:51:41 am', 'admin', 50, 17),
(29, 'Asus jenbook', 'Laptop', 'Asus jenbook', '2018-02-25 04:47:45 am', 'admin', -10, 45000);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `item_id` varchar(100) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_price` double NOT NULL,
  `quantity` double NOT NULL,
  `sub_total` double NOT NULL,
  `date` varchar(50) NOT NULL,
  `month` varchar(50) NOT NULL,
  `year` varchar(50) NOT NULL,
  `week` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_id`, `date_time`, `item_id`, `item_name`, `item_price`, `quantity`, `sub_total`, `date`, `month`, `year`, `week`) VALUES
(52, 687978323, '2017-07-05 14:58:51', '18', 'Red Horse', 100, 10, 1000, '2017-07-06', '07', '2017', '27'),
(53, 687978323, '2017-07-05 14:58:51', '15', 'Tanduay Lapad', 110, 5, 550, '2017-07-06', '07', '2017', '27'),
(58, 358750377, '2017-07-06 12:20:39', '28', 'Mega Sardines', 17, 2, 34, '2017-07-07', '07', '2017', '27'),
(59, 358750377, '2017-07-06 12:20:39', '24', 'Wings', 7, 1, 7, '2017-07-07', '07', '2017', '27'),
(60, 358750377, '2017-07-06 12:20:39', '27', 'Sunsilk Condition', 6, 5, 30, '2017-07-07', '07', '2017', '27'),
(61, 358750377, '2017-07-06 12:20:39', '25', 'Safeguard', 22, 5, 110, '2017-07-07', '07', '2017', '27'),
(62, 753893973, '2017-07-06 12:22:01', '28', 'Mega Sardines', 17, 2, 34, '2017-07-07', '07', '2017', '27'),
(63, 753893973, '2017-07-06 12:22:01', '24', 'Wings', 7, 1, 7, '2017-07-07', '07', '2017', '27'),
(64, 753893973, '2017-07-06 12:22:01', '27', 'Sunsilk Condition', 6, 5, 30, '2017-07-07', '07', '2017', '27'),
(65, 753893973, '2017-07-06 12:22:01', '25', 'Safeguard', 22, 5, 110, '2017-07-07', '07', '2017', '27'),
(69, 1296680715, '2017-07-06 13:12:18', '24', 'Wings', 7, 5, 35, '2017-07-07', '07', '2017', '27'),
(71, 1641941656, '2017-07-06 13:35:46', '25', 'Safeguard', 22, 5, 110, '2017-07-07', '07', '2017', '27'),
(72, 1184663673, '2017-07-06 13:42:33', '25', 'Safeguard', 22, 5, 110, '2017-07-07', '07', '2017', '27'),
(73, 331584523, '2017-07-06 13:44:05', '25', 'Safeguard', 22, 5, 110, '2017-07-07', '07', '2017', '27'),
(74, 1169854922, '2018-02-25 02:50:42', '29', 'Asus jenbook', 45000, 5, 225000, '2018-02-25', '02', '2018', '08'),
(75, 904134671, '2018-02-25 02:53:37', '29', 'Asus jenbook', 45000, 5, 225000, '2018-02-25', '02', '2018', '08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
