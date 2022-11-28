-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 31, 2021 at 02:45 PM
-- Server version: 10.1.48-MariaDB
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
-- Database: `s332985_shoppingcart`
--
CREATE DATABASE IF NOT EXISTS `s332985_shoppingcart` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `s332985_shoppingcart`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` text NOT NULL,
  `website` decimal(7,2) NOT NULL,
  `comment` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `website`, `comment`) VALUES
(1, 'Quang', 'phamvinhquang77@gmail.com', 0.00, 'This is my website and designed by me. '),
(3, 'Quang Pham', 'jackphambs@gmail.com', 0.00, 'Good product, good service'),
(4, 'Simran', 'simran@gmail.com', 0.00, 'Best place to buy the art work'),
(5, 'Basanta', 'basanta@gmail.com', 0.00, 'Best quality product');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(7,2) NOT NULL,
  `rrp` decimal(7,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'product 1', '<p>Unique watch made with stainless steel, ideal for those that prefer interative watches.</p>\r\n<h3>Features</h3>\r\n<ul>\r\n<li>Powered by Android with built-in apps.</li>\r\n<li>Adjustable to fit most.</li>\r\n<li>Long battery life, continuous wear for up to 2 days.</li>\r\n<li>Lightweight design, comfort on your wrist.</li>\r\n</ul>', 27.00, 0.00, 9, '3.jpg', '2019-03-13 17:55:22'),
(2, 'product 2', '', 14.99, 19.99, 34, '4.jpg', '2019-03-13 18:52:49'),
(3, 'product 3', '', 19.99, 0.00, 23, '5.jpg', '2019-03-13 18:47:56'),
(4, 'product 4', '', 69.99, 0.00, 7, '6.jpg', '2019-03-13 17:42:04'),
(5, 'product 5', '', 14.99, 19.99, 34, '7.jpg', '2019-03-13 18:52:49'),
(6, 'product 6', '', 19.99, 0.00, 23, '8.jpg', '2019-03-13 18:47:56'),
(15, 'Shark ', 'For watching, entertainment, relex', 100.00, 500.00, 1, 'Shark art work.jpg', '2021-05-19 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `postCode` int(255) DEFAULT NULL,
  `phone` int(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`id`, `name`, `userName`, `title`, `address`, `city`, `state`, `country`, `postCode`, `phone`, `password`) VALUES
(1, 'Quang Pham', 'phamvinhquang77@gmail.com', 'jackpham97', '299 Victoria Street', 'Richmond', 'VIC', 'Australia', 3121, 401035999, '123'),
(2, 'Quang Pham', 's332985@students.cdu.edu.au', 'jackpham97', '299 Victoria Street', 'Richmond', 'VIC', 'Australia', 3121, 401035999, '123'),
(3, 'Quang Pham', 'hit328@gmail.com', 'jackpham97', '299 Victoria Street', 'Richmond', 'VIC', 'Australia', 3121, 401035999, '123'),
(5, 'mukesh', 'mukeshgangwar654@gmail.com', 'mukesh', 'himkarpur', 'pilibhit', 'other', 'India', 262121, 2147483647, '123'),
(6, 'neetu', 'neetu@gmail.com', 'neetu', 'himkarpur', 'pilibhit', 'other', 'India', 262121, 2147483647, '123');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'mukesh', '123', '0000-00-00 00:00:00'),
(2, 'admin', 'admin', '2021-05-30 11:56:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
