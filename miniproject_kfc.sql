-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2022 at 06:10 PM
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
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `cus_password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
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

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_password`, `title_name`, `cus_name`, `cus_lastname`, `cus_tel`, `cus_address_housenumber`, `cus_address_district`, `cus_address_sub-district`, `cus_address_province`, `cus_address_postalnumber`) VALUES
('12345', '123456', 'test', 'user', 'user', '090', '11', 'brrr', 'brrrrrr', 'brrburi', '20150'),
('C0001', '12345', 'นาง', 'ใจดี', 'จริงจริง', '0657131514', '105/8 หมู่ 1', 'อำเภอบางละมุง', 'ตำบลห้วยใหญ่', 'ตำบลห้วยใหญ่', '20150'),
('C0002', '12345', 'นาย', 'พล', 'ภูมิ', '0645819699', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_fullname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `order_address` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `order_phone` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `order_fullname`, `order_address`, `order_phone`) VALUES
(1, '2022-08-15 16:49:32', 'นาย วุฒติชัย พลขุนทด', 'lkijoij', '0909610635'),
(2, '2022-08-15 16:58:06', 'นาย วุฒติชัย พลขุนทด', 'my home', '0909610635'),
(3, '2022-09-17 14:02:30', 'นาย วุฒติชัย พลขุนทด', 'test', '0909610635');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_detail_quantity` tinyint(4) NOT NULL,
  `order_detail_price` decimal(10,2) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_detail_quantity`, `order_detail_price`, `product_id`, `order_id`) VALUES
(1, 1, '25000.00', 4, 1),
(2, 1, '25000.00', 4, 2),
(3, 1, '23000.00', 6, 2),
(4, 1, '25000.00', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(5) NOT NULL,
  `pro_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pro_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `pro_price` decimal(6,2) NOT NULL,
  `amount` int(10) NOT NULL,
  `details` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pro_pic` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_type`, `pro_price`, `amount`, `details`, `pro_pic`) VALUES
(1, 'เดอะบอกซ์ ซิกเนเจอร์ (The Box Signature)', 'Food', '149.00', 93, 'ไก่ทอด 2 ชิ้น ไก่วิงซ์แซ่บ 2 ชิ้น ทาร์ตไข่ 1 ชิ้น เฟรนช์ฟรายส์ (ปกติ) 1 ที่ เป๊ปซี่ 1 แก้ว', 'The Box Signature.jpg'),
(2, 'ไก่พอใจ (Kai Por Jai)', 'Food', '199.00', 84, 'ไก่ทอด 5 ชิ้น ชิคเก้นป๊อป 7 ชิ้น เฟรนฟรายส์ ขนาดปกติ 2 ชุด', 'Kai Por Jai.jpg'),
(3, 'ทุกอังคาร 9 ชิ้น 159 บาท (Every Tuesday 9pcs. for 159B)', 'Food', '159.00', 56, 'ไก่ทอดเคเอฟซี 4 ชิ้น และวิงซ์แซ่บ 5 ชิ้น', 'Every Tuesday 9pcs. for 159B.jpg'),
(4, 'ไก่จุใจ (Chicken Ju jai)', 'Food', '315.00', 75, 'ไก่ทอด 6 ชิ้น ไก่วิงซ์แซ่บ 4 ชิ้น นักเก็ตส์ 4 ชิ้น เฟรนช์ฟรายส์ (ปกติ) 1 ที่', 'Chicken Ju jai.jpg'),
(5, 'เดอะบอกซ์ ออลสตาร์ (The Box All Star)', 'Food', '149.00', 25, 'ซิงเกอร์เบอร์เกอร์ 1 ชิ้น ไก่ทอด 1 ชิ้น ไก่วิงซ์แซ่บ 2 ชิ้น เฟรนช์ฟรายส์ (ปกติ) 1 ที่ เป๊ปซี่ 1 แก้ว', 'The Box All Star.jpg'),
(6, 'เฟรนช์ฟรายส์ (ปกติ) (Regular French Fries)', 'Snack', '39.00', 21, 'เฟรนช์ฟรายส์กรอบนอกนุ่มใน (ปกติ)', 'FF_Regular.png'),
(7, 'เฟรนช์ฟรายส์ (ใหญ่) (Large French Fries)', 'Snack', '49.00', 25, 'เฟรนช์ฟรายส์กรอบนอกนุ่มใน (ใหญ่)', 'FF_Large.png'),
(8, 'เฟรนช์ฟรายส์ (จัมโบ้) (Jumbo French Fries)', 'Snack', '59.00', 18, 'เฟรนช์ฟรายส์กรอบนอกนุ่มใน (จัมโบ้)', 'FF_Jumbo.png'),
(9, 'มันบด (ปกติ) (Regular Mashed Potato)', 'Snack', '39.00', 58, 'มันบดเนื้อเนียนนุ่ม ราดน้ำเกรวี่ เข้มข้น ชุ่มฉ่ำ (ปกติ)', 'mashed_potato_R.png'),
(10, 'มันบด (ใหญ่) (Large Mashed Potato)', 'Snack', '45.00', 69, 'มันบดเนื้อเนียนนุ่ม ราดน้ำเกรวี่ เข้มข้น ชุ่มฉ่ำ (ใหญ่)', 'mashed_potato_L.png'),
(11, 'KFC Refill น้ำ', 'Drinks', '45.00', 126, 'แก้วน้ำ Refill 1 แก้ว', 'pepsi_nrf.png'),
(12, 'โกโก้มอลต์โฟลต 12 ออนซ์ (Cocoa Malt 12 Oz.)', 'Drinks', '29.00', 49, 'เครื่องดื่มเย็นโกโก้มอลต์โฟลต ขนาด 12 ออนซ์', 'Iced_Cocoa_Malt_12_Oz.png'),
(13, 'โกโก้มอลต์โฟลต 16 ออนซ์ (Cocoa Malt 16 Oz.)', 'Drinks', '45.00', 32, 'เครื่องดื่มเย็นโกโก้มอลต์โฟลต ขนาด 16 ออนซ์', 'Iced_Cocoa_Malt_16_Oz.png'),
(14, 'ทาร์ตไข่ KFC (1 pc. Egg tart)', 'Snack', '25.00', 58, 'ทาร์ตไข่สูตรต้นตำรับ อบสดใหม่ 1 ชิ้น', 'eggtart_new.png'),
(15, 'ทาร์ตไข่ KFC 6 ชิ้น (6 pcs. Egg Tart)', 'Snack', '150.00', 27, 'ทาร์ตไข่สูตรต้นตำรับ อบสดใหม่ 6 ชิ้น', 'EggTart_6pc.png'),
(16, 'ไอศกรีมโคนดิปวานิลลา (KFC Sundae Vanila)', 'Sweet', '10.00', 34, 'ไอศกรีมโคนดิปวานิลลา 1 โคน', 'KFC Sundae Vanila.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_pic` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `name`, `email`, `user_pic`) VALUES
('admin', '123456', 'Nuttokung', 'nutzagg02@gmail.com', 'brrrr.png'),
('MinokiChan', '1234', 'MinokiChan', 'minokiploychan12345@gmail.com', 'S__30441474.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
