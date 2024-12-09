-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2024 at 02:18 AM
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
-- Database: `ted_pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bundleproducts`
--

CREATE TABLE `bundleproducts` (
  `bundle_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bundleproducts`
--

INSERT INTO `bundleproducts` (`bundle_id`, `product_id`, `createdAt`, `updatedAt`) VALUES
(2, 8, '2024-12-02 09:57:59', '2024-12-02 09:57:59'),
(2, 9, '2024-12-02 09:57:59', '2024-12-02 09:57:59'),
(2, 10, '2024-12-02 09:57:59', '2024-12-02 09:57:59'),
(3, 8, '2024-12-04 05:30:54', '2024-12-04 05:30:54'),
(3, 9, '2024-12-04 05:30:54', '2024-12-04 05:30:54'),
(3, 10, '2024-12-04 05:30:54', '2024-12-04 05:30:54'),
(3, 1, '2024-12-04 05:30:54', '2024-12-04 05:30:54'),
(3, 2, '2024-12-04 05:30:54', '2024-12-04 05:30:54'),
(1, 1, '2024-12-08 03:21:32', '2024-12-08 03:21:32'),
(1, 6, '2024-12-08 03:21:32', '2024-12-08 03:21:32'),
(1, 7, '2024-12-08 03:21:32', '2024-12-08 03:21:32'),
(1, 10, '2024-12-08 03:21:32', '2024-12-08 03:21:32'),
(1, 3, '2024-12-08 03:21:32', '2024-12-08 03:21:32'),
(4, 5, '2024-12-08 03:22:47', '2024-12-08 03:22:47'),
(4, 6, '2024-12-08 03:22:47', '2024-12-08 03:22:47'),
(4, 10, '2024-12-08 03:22:47', '2024-12-08 03:22:47'),
(5, 1, '2024-12-08 10:13:46', '2024-12-08 10:13:46'),
(5, 2, '2024-12-08 10:13:46', '2024-12-08 10:13:46'),
(5, 11, '2024-12-08 10:13:46', '2024-12-08 10:13:46'),
(5, 10, '2024-12-08 10:13:46', '2024-12-08 10:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `bundles`
--

CREATE TABLE `bundles` (
  `bundle_id` int(11) NOT NULL,
  `bundle_name` varchar(255) NOT NULL,
  `bundle_image` varchar(255) DEFAULT NULL,
  `bundle_description` varchar(255) DEFAULT NULL,
  `total_price` decimal(10,0) NOT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `product_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `bundle_status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bundles`
--

INSERT INTO `bundles` (`bundle_id`, `bundle_name`, `bundle_image`, `bundle_description`, `total_price`, `discount`, `product_ids`, `bundle_status`, `createdAt`, `updatedAt`) VALUES
(1, 'Productivity Starter Pack', '1733132737139.png', 'A perfect combination for students and professionals, including a reliable monitor, wireless keyboard, and mouse to enhance productivity.', 59500, 15, '[\"1\",\"6\",\"7\",\"10\",\"3\"]', 'Available', '2024-12-02 09:45:37', '2024-12-08 03:21:32'),
(2, 'Ultimate Gaming Gear Set', '1733133479052.jpg', 'An all-in-one setup for gamers featuring a high-refresh-rate monitor, mechanical keyboard, and gaming mouse for a seamless gaming experience.', 25440, 20, '[\"8\",\"9\",\"10\"]', 'Available', '2024-12-02 09:57:59', '2024-12-02 09:57:59'),
(3, 'summerDeal', '1733290254070.png', 'For summer deals', 62370, 10, '[\"8\",\"9\",\"10\",\"1\",\"2\"]', 'Available', '2024-12-04 05:30:54', '2024-12-04 05:30:54'),
(4, 'Sample Daw', '1733377540231.png', 'Sample Description', 18900, 10, '[\"5\",\"6\",\"10\"]', 'Available', '2024-12-05 05:45:40', '2024-12-08 03:22:47'),
(5, 'Limited Edition', '1733649983732.jpg', 'Limited Edition Pc Set 2', 37655, 15, '[\"1\",\"2\",\"11\",\"10\"]', 'Unavailable', '2024-12-08 09:26:23', '2024-12-08 10:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `category_description`) VALUES
(1, 'Graphics Cards', 'High-performance GPUs designed for gaming and professional use, delivering exceptional graphics rendering and computational power.'),
(2, 'RAM (Random Access Memory)', 'High-speed memory modules designed for gaming and multitasking performance.'),
(3, 'CPUs (Central Processing Units)', 'High-performance processors for gaming, streaming, and multitasking.'),
(4, 'Motherboards', 'Reliable and versatile boards for assembling custom PCs with advanced features.'),
(5, 'SSDs (Solid State Drives)', 'High-speed storage solutions for faster boot times and data access.'),
(6, 'Monitors', 'Full HD monitors designed for clarity and vibrant display performance.'),
(7, 'Keyboards & Mice', 'Compact and reliable wireless input devices for everyday use.'),
(8, 'Keyboards', 'Premium wireless mechanical keyboard with tactile feedback for gamers.'),
(9, 'Mice', 'High-performance gaming mouse with customizable DPI settings and precision.'),
(10, 'sample', 'sample');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `inventory_id` int(11) NOT NULL,
  `stocks` int(11) DEFAULT NULL,
  `date_received` datetime DEFAULT NULL,
  `purchase_price` decimal(65,0) NOT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `inventory_status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`inventory_id`, `stocks`, `date_received`, `purchase_price`, `supplier_id`, `product_id`, `user_id`, `inventory_status`, `createdAt`, `updatedAt`) VALUES
(1, 39, '2024-12-02 00:00:00', 27000, 4, 1, 1, 'active', '2024-12-02 09:12:17', '2024-12-09 00:13:23'),
(2, 21, '2024-12-02 00:00:00', 4800, 2, 2, 1, 'active', '2024-12-02 09:15:26', '2024-12-09 00:13:23'),
(3, 29, '2024-12-02 00:00:00', 19000, 3, 3, 1, 'active', '2024-12-02 09:18:34', '2024-12-05 05:46:55'),
(4, 35, '2024-12-02 00:00:00', 11500, 4, 4, 1, 'active', '2024-12-02 09:21:35', '2024-12-07 12:19:35'),
(5, 55, '2024-12-02 00:00:00', 6800, 5, 5, 1, 'active', '2024-12-02 09:24:57', '2024-12-07 12:20:15'),
(6, 13, '2024-12-02 00:00:00', 7500, 4, 6, 1, 'active', '2024-12-02 09:36:52', '2024-12-07 12:20:15'),
(7, 9, '2024-12-02 00:00:00', 1800, 5, 7, 1, 'active', '2024-12-02 09:39:32', '2024-12-07 12:20:14'),
(8, 6, '2024-12-02 00:00:00', 15000, 1, 8, 1, 'active', '2024-12-02 09:48:59', '2024-12-08 11:00:04'),
(9, 12, '2024-12-02 00:00:00', 8500, 4, 9, 1, 'active', '2024-12-02 09:51:33', '2024-12-08 11:00:04'),
(10, 10, '2024-12-02 00:00:00', 3000, 5, 10, 1, 'active', '2024-12-02 09:53:46', '2024-12-09 00:13:23'),
(11, 3, '2024-12-05 00:00:00', 2500, 2, 11, 1, 'active', '2024-12-05 05:43:34', '2024-12-09 00:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `order_items_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `orders_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `bundle_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`order_items_id`, `quantity`, `price`, `amount`, `orders_id`, `product_id`, `bundle_id`, `createdAt`, `updatedAt`) VALUES
(1, 2, 500, 1000, 1, 1, NULL, '2024-12-08 22:37:22', '2024-12-08 22:37:22'),
(2, 3, 300, 900, 2, 2, NULL, '2024-12-08 22:37:22', '2024-12-08 22:37:22'),
(3, 1, 100, 100, 3, 3, NULL, '2024-12-08 22:37:22', '2024-12-08 22:37:22'),
(4, 4, 250, 1000, 4, 4, NULL, '2024-12-08 22:37:22', '2024-12-08 22:37:22'),
(5, 5, 200, 1000, 5, 5, NULL, '2024-12-08 22:37:22', '2024-12-08 22:37:22'),
(6, 6, 150, 900, 6, 6, NULL, '2024-12-08 22:37:22', '2024-12-08 22:37:22'),
(7, 2, 450, 900, 7, 7, NULL, '2024-12-08 22:37:22', '2024-12-08 22:37:22'),
(8, 2, 31500, 63000, 8, 1, NULL, '2024-12-09 00:13:23', '2024-12-09 00:13:23'),
(9, 1, 32006.8, 32006.8, 8, NULL, 5, '2024-12-09 00:13:23', '2024-12-09 00:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `ref_num` varchar(255) DEFAULT NULL,
  `or_num` varchar(255) DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  `amount_rendered` float DEFAULT NULL,
  `change_amount` float NOT NULL,
  `total_items` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orders_id`, `ref_num`, `or_num`, `total_amount`, `amount_rendered`, `change_amount`, `total_items`, `date_created`, `user_id`, `createdAt`, `updatedAt`) VALUES
(1, 'REF001', 'OR001', 1000, 1200, 200, 3, '2024-12-01 00:00:00', 1, '2024-12-08 22:35:55', '2024-12-08 22:35:55'),
(2, 'REF002', 'OR002', 1500, 1600, 100, 5, '2024-12-02 00:00:00', 1, '2024-12-08 22:35:55', '2024-12-08 22:35:55'),
(3, 'REF003', 'OR003', 2000, 2100, 100, 6, '2024-12-03 00:00:00', 2, '2024-12-08 22:35:55', '2024-12-08 22:35:55'),
(4, 'REF004', 'OR004', 1200, 1300, 100, 4, '2024-12-04 00:00:00', 2, '2024-12-08 22:35:55', '2024-12-08 22:35:55'),
(5, 'REF005', 'OR005', 1800, 2000, 200, 7, '2024-12-05 00:00:00', 3, '2024-12-08 22:35:55', '2024-12-08 22:35:55'),
(6, 'REF006', 'OR006', 2500, 2700, 200, 8, '2024-12-06 00:00:00', 3, '2024-12-08 22:35:55', '2024-12-08 22:35:55'),
(7, 'REF007', 'OR007', 3000, 3200, 200, 9, '2024-12-07 00:00:00', 4, '2024-12-08 22:35:55', '2024-12-08 22:35:55'),
(8, 'INV-6O5WGAOTG', 'OR-OR440ZNQC', 95006.8, 100000, 4993.25, 3, '2024-12-09 00:13:23', 1, '2024-12-09 00:13:23', '2024-12-09 00:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_model` varchar(255) DEFAULT NULL,
  `product_img` varchar(255) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `selling_price` decimal(10,0) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_model`, `product_img`, `product_quantity`, `selling_price`, `category_id`, `product_status`, `createdAt`, `updatedAt`) VALUES
(1, 'ASUS ROG Strix GeForce RTX 3060 Ti', 'RTX3060Ti-O8G-Gaming', '1733144511679.webp', 39, 31500, 1, 'active', '2024-12-02 09:12:17', '2024-12-09 00:13:23'),
(2, 'Kingston FURY Beast DDR5 16GB RAM', 'KF552C40BBK2-16', '1733144587828.png', 21, 6000, 2, 'active', '2024-12-02 09:15:26', '2024-12-09 00:13:23'),
(3, 'Intel Core i7-12700K Processor', 'BX8071512700K', '1733131114889.jpg', 29, 23500, 3, 'active', '2024-12-02 09:18:34', '2024-12-05 05:46:55'),
(4, 'MSI MAG B660 TOMAHAWK WIFI Motherboard', 'MAGB660TWF', '1733131295464.jpg', 35, 14000, 4, 'active', '2024-12-02 09:21:35', '2024-12-07 12:19:35'),
(5, 'Samsung 970 EVO Plus 1TB NVMe SSD', 'MZ-V7S1T0BW', '1733131497272.jpg', 55, 8200, 5, 'active', '2024-12-02 09:24:57', '2024-12-07 12:20:15'),
(6, 'Dell 24\" Full HD Monitor', 'SE2422H', '1733132212253.jpg', 13, 9000, 6, 'active', '2024-12-02 09:36:52', '2024-12-07 12:20:15'),
(7, 'Logitech MK270 Wireless Keyboard and Mouse Combo', 'MK270', '1733132372141.jpg', 9, 2200, 7, 'active', '2024-12-02 09:39:32', '2024-12-07 12:20:14'),
(8, 'ASUS TUF Gaming 27\" 144Hz Monitor', 'VG27AQ1A', '1733132939904.jpg', 6, 18000, 6, 'active', '2024-12-02 09:48:59', '2024-12-08 11:00:04'),
(9, 'Razer BlackWidow V3 Pro Wireless Mechanical Keyboard', 'RZ03-03530100-R3M1', '1733133093696.jpg', 12, 10000, 8, 'active', '2024-12-02 09:51:33', '2024-12-08 11:00:04'),
(10, 'Logitech G502 HERO Gaming Mouse', 'G502HERO', '1733133226759.jpg', 10, 3800, 9, 'active', '2024-12-02 09:53:46', '2024-12-09 00:13:23'),
(11, 'Sample', 'SAmple', '1733377414820.png', 3, 3000, 1, 'active', '2024-12-05 05:43:34', '2024-12-09 00:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20241010123432-create-users.js'),
('20241016032443-create-categories.js'),
('20241019114057-create-user.js'),
('20241105082210-create-supplier.js'),
('20241108012104-suppliers.js'),
('20241108012707-create-suppliers-table.js'),
('20241108012916-create-suppliers.js'),
('20241108013446-create-suppliers.js'),
('20241108015459-create-suppliers.js'),
('20241110121150-create-inventory.js'),
('20241110122553-create-products.js'),
('20241117023221-create-inventory.js'),
('20241117023520-create-products.js'),
('20241123052915-create-bundles.js'),
('20241124235407-create-bundle-products.js'),
('20241127015543-create-order-item.js'),
('20241127015610-create-order.js');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_num` varchar(100) DEFAULT NULL,
  `supplier_status` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `address`, `contact_num`, `supplier_status`, `createdAt`, `updatedAt`) VALUES
(1, 'Tech Solutions PH', '123 Technology Avenue, Makati City, Metro Manila', '+63 917 123 4567', 'active', '2024-12-02 09:07:46', '2024-12-02 09:07:46'),
(2, 'Solutions Inc.', 'Unit 456 IT Hub, Ortigas Center, Pasig City', '+63 917 567 8901', 'active', '2024-12-02 09:13:13', '2024-12-02 09:13:13'),
(3, 'Processors Plus', '890 Silicon Valley Road, Cebu City', '+63 927 345 6789', 'active', '2024-12-02 09:16:14', '2024-12-02 09:16:14'),
(4, 'Board Masters PH', '567 Assembly Lane, Davao City', '+63 926 234 5678', 'active', '2024-12-02 09:19:11', '2024-12-02 09:19:11'),
(5, 'Digital Drives Co.', '345 Data Street, Quezon City', '+63 917 891 2345', 'active', '2024-12-02 09:22:22', '2024-12-02 09:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `userType`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', 'Admin', 'admin123', 'Admin', '2024-11-14 21:07:05', '2024-11-14 21:07:05'),
(2, 'Darel Briones', 'darel123x', '123', 'Cashier', '2024-11-21 15:09:34', '2024-11-21 15:10:07'),
(3, 'Aj mar Antido', 'Aj', '1234', 'Cashier', '2024-11-22 00:36:03', '2024-11-22 00:36:03'),
(4, 'Aj antido', 'mar', '12345', 'Cashier', '2024-11-22 01:16:21', '2024-11-22 01:16:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bundleproducts`
--
ALTER TABLE `bundleproducts`
  ADD KEY `bundle_id` (`bundle_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `bundles`
--
ALTER TABLE `bundles`
  ADD PRIMARY KEY (`bundle_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`inventory_id`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`order_items_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

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
-- AUTO_INCREMENT for table `bundles`
--
ALTER TABLE `bundles`
  MODIFY `bundle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `inventory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `order_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bundleproducts`
--
ALTER TABLE `bundleproducts`
  ADD CONSTRAINT `bundleproducts_ibfk_1` FOREIGN KEY (`bundle_id`) REFERENCES `bundles` (`bundle_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bundleproducts_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
