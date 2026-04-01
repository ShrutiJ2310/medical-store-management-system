-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2025 at 06:47 PM
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
-- Database: `medical`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `country` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `contact_person`, `contact_no`, `email`, `address`, `created_at`, `country`) VALUES
(1, 'Sun Pharmaceuticals', 'John Smith', '+91-9876543210', 'contact@sunpharma.com', '123 Pharma Street, Mumbai, Maharashtra', '2025-02-24 17:07:38', 'India'),
(2, 'Cipla Limited', 'Mary Johnson', '+91-9876543211', 'contact@cipla.com', '456 Health Avenue, Pune, Maharashtra', '2025-02-24 17:07:38', 'India'),
(3, 'Dr. Reddy\'s', 'David Wilson', '+91-9876543212', 'contact@drreddys.com', '789 Med Road, Hyderabad, Telangana', '2025-02-24 17:07:38', 'India'),
(4, 'Mankind Pharma', 'Sarah Brown', '+91-9876543213', 'contact@mankind.com', '321 Drug Lane, New Delhi', '2025-02-24 17:07:38', 'India'),
(5, 'Zydus Healthcare', 'Michael Lee', '+91-9876543214', 'contact@zydus.com', '654 Care Blvd, Ahmedabad, Gujarat', '2025-02-24 17:07:38', 'India'),
(6, 'GlaxoSmithKline', NULL, '+44-7700123456', 'contact@gsk.com', '980 Pharma Road, London', '2025-02-24 17:17:11', 'United Kingdom'),
(7, 'Pfizer', NULL, '+1-555-0123456', 'contact@pfizer.com', '235 East 42nd Street, New York', '2025-02-24 17:17:11', 'USA'),
(8, 'Novartis', NULL, '+41-789012345', 'contact@novartis.com', '123 Basel Square, Basel', '2025-02-24 17:17:11', 'Switzerland'),
(9, 'Sanofi', NULL, '+33-612345678', 'contact@sanofi.com', '54 Rue La Boétie, Paris', '2025-02-24 17:17:11', 'France'),
(10, 'Bayer', NULL, '+49-3012345678', 'contact@bayer.com', '123 Pharma Strasse, Berlin', '2025-02-24 17:17:11', 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `medicine_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `price_per_unit` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `company_name`, `product_category`, `quantity`, `price_per_unit`, `created_at`, `updated_at`) VALUES
(1, 'Paracetamol 500mg', 'Sun Pharmaceuticals', 'Tablets', 1000, 2.50, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(2, 'Amoxicillin 250mg', 'Cipla Limited', 'Tablets', 500, 5.75, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(3, 'Cetirizine 10mg', 'Dr. Reddy\'s', 'Tablets', 750, 3.25, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(4, 'Omeprazole 20mg', 'Mankind Pharma', 'Tablets', 600, 4.50, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(5, 'Metformin 500mg', 'Zydus Healthcare', 'Tablets', 800, 3.75, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(6, 'Vitamin D3 60K', 'Sun Pharmaceuticals', 'Capsules', 400, 12.50, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(7, 'Omega-3 1000mg', 'Cipla Limited', 'Capsules', 300, 15.75, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(8, 'Azithromycin 500mg', 'Dr. Reddy\'s', 'Capsules', 450, 18.25, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(9, 'Pregabalin 75mg', 'Mankind Pharma', 'Capsules', 350, 16.50, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(10, 'CoQ10 300mg', 'Zydus Healthcare', 'Capsules', 250, 22.75, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(11, 'Cough Syrup 100ml', 'Sun Pharmaceuticals', 'Syrups', 200, 45.00, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(12, 'Children\'s Paracetamol 60ml', 'Cipla Limited', 'Syrups', 150, 35.75, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(13, 'Antacid Suspension 200ml', 'Dr. Reddy\'s', 'Syrups', 180, 28.50, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(14, 'Multivitamin Syrup 200ml', 'Mankind Pharma', 'Syrups', 160, 42.25, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(15, 'Iron Supplement 100ml', 'Zydus Healthcare', 'Syrups', 140, 38.75, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(16, 'Vitamin B12 1ml', 'Sun Pharmaceuticals', 'Injections', 100, 85.50, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(17, 'Insulin Regular 10ml', 'Cipla Limited', 'Injections', 80, 245.75, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(18, 'Tetanus Toxoid 0.5ml', 'Dr. Reddy\'s', 'Injections', 120, 65.25, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(19, 'Diclofenac 3ml', 'Mankind Pharma', 'Injections', 90, 35.50, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(20, 'Dexamethasone 2ml', 'Zydus Healthcare', 'Injections', 110, 55.75, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(21, 'Antibiotic Cream 20g', 'Sun Pharmaceuticals', 'Ointments', 150, 28.50, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(22, 'Anti-fungal Ointment 15g', 'Cipla Limited', 'Ointments', 120, 32.75, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(23, 'Pain Relief Gel 30g', 'Dr. Reddy\'s', 'Ointments', 180, 45.25, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(24, 'Burn Cream 25g', 'Mankind Pharma', 'Ointments', 100, 38.50, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(25, 'Antiseptic Cream 50g', 'Zydus Healthcare', 'Ointments', 130, 42.75, '2025-02-24 17:17:37', '2025-02-24 17:17:37'),
(26, 'test', 'Bayer', 'Capsules', 1000, 20.00, '2025-02-24 17:21:12', '2025-02-24 17:21:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `category_id` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`category_id`, `category`, `description`, `created_at`) VALUES
(1, 'Tablets', NULL, '2025-02-24 16:59:02'),
(2, 'Capsules', NULL, '2025-02-24 16:59:02'),
(3, 'Syrups', NULL, '2025-02-24 16:59:02'),
(4, 'Injections', NULL, '2025-02-24 16:59:02'),
(5, 'Ointments', NULL, '2025-02-24 16:59:02');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `sale_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `total_amount` decimal(10,2) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_record`
--

CREATE TABLE `sales_record` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `date_of_sale` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `customer_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_record`
--

INSERT INTO `sales_record` (`id`, `product_name`, `company_name`, `date_of_sale`, `quantity`, `amount`, `created_at`, `customer_name`) VALUES
(1, 'test', 'Bayer', '2025-02-24', 10, 200.00, '2025-02-24 17:29:59', ''),
(2, 'Omega-3 1000mg', 'Cipla Limited', '2025-02-24', 100, 1575.00, '2025-02-24 17:38:47', 'Akshay');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `full_name`, `created_at`) VALUES
(1, 'admin', 'admin', 'Administrator', '2025-02-24 16:59:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`),
  ADD UNIQUE KEY `company_name` (`company_name`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`medicine_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `company_name` (`company_name`),
  ADD KEY `product_category` (`product_category`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category` (`category`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `sales_record`
--
ALTER TABLE `sales_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `medicine_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_record`
--
ALTER TABLE `sales_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  ADD CONSTRAINT `medicines_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`category_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`company_name`) REFERENCES `company` (`company_name`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`product_category`) REFERENCES `product_category` (`category`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
