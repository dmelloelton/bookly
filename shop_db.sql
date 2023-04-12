-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2023 at 02:37 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `weight` float NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `weight`, `quantity`, `image`) VALUES
(80, 7, 'Sin Eater', 100, 0, 1, 'WhatsApp Image 2022-05-18 at 12.15.02 PM.jpeg'),
(81, 7, 'Six of Crows', 150, 0, 1, 'WhatsApp Image 2022-05-18 at 12.16.57 PM.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`) VALUES
(2, 'Justin', 'golringgg.jpg'),
(3, 'piyal', 'payal3.jpg'),
(4, 'test', 'payal3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(12, 11, 'wolverine', 'rrd@gmail.com', '1236547893', 'very nice site'),
(13, 12, 'Justin', 'eltonjohndmello@gmail.com', '212121', 'justin here');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(20, 11, 'Sandeep', '123', '123@gmail.com', 'credit card', 'flat no. 581320, Sgah, Bhatkal, India - 581320', ', The Road (1) ', 300, '14-Aug-2022', 'pending'),
(21, 12, 'Justin ', '8088312419', 'mathaisjustin@gmail.com', 'credit card', 'flat no. 1, mangalore, mangalore, india - 576120', ', Six of Crows (4) ', 600, '12-Apr-2023', 'completed'),
(22, 12, 'pritam', '909089034809', 'mathaisjustin@gmail.com', 'cash on delivery', 'flat no. 32, sfadf, afdfasd, asdf - 2341314', ', piyal (3) ', 7500, '12-Apr-2023', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `weight` float NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `weight`, `image`) VALUES
(9, 'Sin Eater', 100, 'For the crime of stealing bread, fourteen-year-old May receives a life sentence: she must become a Sin Eater—a shunned woman, brutally marked, whose fate is to hear the final confessions of the dying, eat ritual foods symbolizing their sins as a funeral r', 0, 'WhatsApp Image 2022-05-18 at 12.15.02 PM.jpeg'),
(10, 'Six of Crows', 150, 'Six of Crows is the story of Kaz Brekker and his crew, attempting to pull off an impossible heist. There is Kaz, known as \'Dirtyhands\' in the Barrel (the slums of Ketterdam), who is part of The Dregs. The Dregs is a gang, and as the name suggests consists', 0, 'WhatsApp Image 2022-05-18 at 12.16.57 PM.jpeg'),
(11, 'The Road', 300, 'The Road is a 2006 post-apocalyptic novel by American writer Cormac McCarthy. The book details the grueling journey of a father and his young son over a period of several months across a landscape blasted by an unspecified cataclysm that has destroyed ind', 0, 'WhatsApp Image 2022-05-18 at 12.16.03 PM.jpeg'),
(12, 'A Million Little Pieces', 270, 'A Million Little Pieces is a book by James Frey, originally sold as a memoir and later marketed as a semi-fictional novel following accusations of literary forgery. It tells the story of a 23-year-old alcoholic and abuser of other drugs and how he copes w', 0, 'WhatsApp Image 2022-05-18 at 12.16.30 PM.jpeg'),
(16, 'The Shy Creatures ', 499, '', 0, 'images (8).jpeg'),
(17, 'Rapunzel ', 399, '', 0, 'images (2).jpeg'),
(18, 'Unleash The Dragon ', 299, '', 0, 'images (1).jpeg'),
(19, 'A Million To One', 799, '', 0, 'images.jpeg'),
(20, 'The Great Gatsby', 599, '', 0, 'images (4).jpeg'),
(21, 'A Kite For Moon', 899, '', 0, 'images (7).jpeg'),
(22, 'Every Thing You Never Had', 299, '', 0, 'images (5).jpeg'),
(23, 'I Can Make This Promise ', 699, '', 0, 'images (6).jpeg'),
(24, 'Kgf', 333, '', 0, 'Screenshot_20220813-215417_Quickstep.png'),
(28, 'piyal', 2500, 'test', 19, 'bangel1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(10, 'Admin', 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(12, 'Justin', 'user@user.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
