-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2024 lúc 11:01 AM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `codeweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `product_size` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `size` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `material` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `product_page` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `image_url`, `price`, `description`, `size`, `material`, `product_page`, `sale_price`) VALUES
(5, 'túi 1', 'uploads/1.jpg', '6.00', 'Quý khách hàng cần Làm Túi Vải Bố - Canvas In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn và thiết kế miễn phí.', '25 x 35', 'Vải bố canvas – thân thiện môi trường.', 'sp2.php', NULL),
(6, 'túi 2', 'uploads/2.jpg', '2.50', 'Quý khách hàng cần Làm Túi Vải Không Dệt In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn', '20 x 10', 'Vải không dệt', 'sp1.php', NULL),
(7, 'túi 3', 'uploads/3.png', '5.00', 'Quý khách hàng cần Làm Túi Giấy In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn', '10 x 20', 'Giấy', 'sp3.php', NULL),
(8, 'túi 4', 'uploads/12.png', '10.50', 'Quý khách hàng cần Làm Túi Vải Bố - Canvas In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn và thiết kế miễn phí.	', '5 x 25', 'Vải bố canvas – thân thiện môi trường.', 'sp2.php', NULL),
(9, 'túi 5', 'uploads/13.png', '399.00', 'Quý khách hàng cần Làm Túi Vải Bố - Canvas In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn và thiết kế miễn phí.	', '10 x 25', 'Vải bố canvas – thân thiện môi trường.', 'sp2.php', NULL),
(10, 'túi 6', 'uploads/14.png', '16.00', 'Quý khách hàng cần Làm Túi Vải Bố - Canvas In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn và thiết kế miễn phí.	', '15 x 20', 'Vải bố canvas – thân thiện môi trường.	', 'spc.php', NULL),
(11, 'túi 7', 'uploads/15.png', '7.50', 'Quý khách hàng cần Làm Túi Vải Bố - Canvas In logo theo yêu cầu vui lòng để lại thông tin để được hỗ trợ tư vấn và thiết kế miễn phí.	', '11.5 x 14.5', 'Vải bố canvas – thân thiện môi trường.	', 'sp2.php', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `address` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `role` enum('admin','staff','customer') COLLATE utf8_vietnamese_ci NOT NULL DEFAULT 'customer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `role`) VALUES
(2, 'admin', 'admin@gmail.com', '$2y$10$6WEDWz4TTrciYdsh.hEYO.mNQzaIWZgLr0r5LgNMuKmlMHkzwK4pS', '0891020202', 'hcm', 'admin'),
(3, 'staff', 'staff@gmail.com', '$2y$10$.D39RaGQJzk1qaP0Bv3WRu4uqG8rHFmJhOXEW81uZBn3dWVzdT9zO', NULL, NULL, 'staff'),
(4, 'tram', 'tram@gmail.com', '$2y$10$fpcs1TXvFCei/Z0EI/rqvO5v5LBfOhQR0iq3MmQCw.9odzsfTDcsS', '0899449253', 'hcm', 'customer');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
