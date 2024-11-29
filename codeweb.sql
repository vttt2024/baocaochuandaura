-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 03:23 AM
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
-- Database: `codeweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_size` varchar(50) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `size` varchar(50) NOT NULL,
  `material` varchar(100) NOT NULL,
  `product_page` varchar(255) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image_url`, `price`, `description`, `size`, `material`, `product_page`, `sale_price`) VALUES
(5, 'túi 1', 'uploads/1.jpg', 6.00, 'Quý khách hàng cần Làm Túi Vải Bố - Canvas In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn và thiết kế miễn phí.', '25 x 35', 'Vải bố canvas – thân thiện môi trường.', 'sp2.php', NULL),
(6, 'túi 2', 'uploads/2.jpg', 2.50, 'Quý khách hàng cần Làm Túi Vải Không Dệt In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn', '20 x 10', 'Vải không dệt', 'sp1.php', NULL),
(7, 'túi 3', 'uploads/3.png', 5.00, 'Quý khách hàng cần Làm Túi Giấy In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn', '10 x 20', 'Giấy', 'sp3.php', NULL),
(8, 'túi 4', 'uploads/12.png', 10.50, 'Quý khách hàng cần Làm Túi Vải Bố - Canvas In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn và thiết kế miễn phí.	', '5 x 25', 'Vải bố canvas – thân thiện môi trường.', 'sp2.php', NULL),
(9, 'túi 5', 'uploads/13.png', 399.00, 'Quý khách hàng cần Làm Túi Vải Bố - Canvas In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn và thiết kế miễn phí.	', '10 x 25', 'Vải bố canvas – thân thiện môi trường.', 'sp2.php', NULL),
(10, 'túi 6', 'uploads/14.png', 16.00, 'Quý khách hàng cần Làm Túi Vải Bố - Canvas In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn và thiết kế miễn phí.	', '15 x 20', 'Vải bố canvas – thân thiện môi trường.	', 'spc.php', NULL),
(11, 'túi 7', 'uploads/15.png', 7.50, 'Quý khách hàng cần Làm Túi Vải Bố - Canvas In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn và thiết kế miễn phí.	', '11.5 x 14.5', 'Vải bố canvas – thân thiện môi trường.	', 'sp2.php', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','staff','customer') NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `role`) VALUES
(2, 'admin', 'admin@gmail.com', '$2y$10$6WEDWz4TTrciYdsh.hEYO.mNQzaIWZgLr0r5LgNMuKmlMHkzwK4pS', '0891020202', 'hcm', 'admin'),
(3, 'staff', 'staff@gmail.com', '$2y$10$.D39RaGQJzk1qaP0Bv3WRu4uqG8rHFmJhOXEW81uZBn3dWVzdT9zO', NULL, NULL, 'staff'),
(4, 'tram', 'tram@gmail.com', '$2y$10$fpcs1TXvFCei/Z0EI/rqvO5v5LBfOhQR0iq3MmQCw.9odzsfTDcsS', '0899449253', 'hcm', 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
