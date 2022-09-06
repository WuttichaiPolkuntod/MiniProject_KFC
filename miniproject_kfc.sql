-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2022 at 06:38 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniproject_kfc`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `bran_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `bran_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `bran_tel` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bran_address_housenumber` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bran_address_district` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bran_address_sub-district` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bran_address_province` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bran_address_postalnumber` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `title_name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cus_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cus_lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cus_tel` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cus_address_housenumber` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cus_address_district` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cus_address_sub-district` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cus_address_province` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cus_address_postalnumber` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `emp_idcard` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `emp_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `emp_lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `emp_tel` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `emp_address_housenumber` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_address_district` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_address_sub-district` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_address_province` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_address_postalnumber` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ord_id` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `pos_id` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `queue` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `cus_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `bran_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `emp_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `ord_date` datetime NOT NULL,
  `status` int(1) NOT NULL,
  `total_price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `ord_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pro_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(10) NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `discount` decimal(6,2) DEFAULT NULL,
  `details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pro_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pro_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pro_price` decimal(6,2) NOT NULL,
  `amount` int(10) NOT NULL,
  `details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `pro_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pro_typename` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `name`, `email`, `user_pic`) VALUES
('admin', '123456', 'Nuttokung', 'nutzagg02@gmail.com', ''),
('MinokiChan', '1234', 'MinokiChan', 'minokiploychan12345@gmail.com', 'S__30441474.jpg'),
('testuser', '12345', 'user', 'user@gmail.com', 'robot.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`bran_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`ord_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`pro_type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
