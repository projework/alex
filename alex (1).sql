-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2021 at 06:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alex`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booking_tbl`
--

CREATE TABLE `booking_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobileno` int(15) NOT NULL,
  `category` varchar(50) NOT NULL,
  `time` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `emp_id` int(50) DEFAULT NULL,
  `charges` int(255) NOT NULL,
  `paymentmode` varchar(50) NOT NULL,
  `is_confirm` int(1) NOT NULL DEFAULT 0,
  `is_complete` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_tbl`
--

CREATE TABLE `category_tbl` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee_tbl`
--

CREATE TABLE `employee_tbl` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_address` varchar(255) NOT NULL,
  `emp_Mobileno` int(12) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services_tbl`
--

CREATE TABLE `services_tbl` (
  `id` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `user_mobileno` int(50) NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_tbl`
--
ALTER TABLE `category_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_tbl`
--
ALTER TABLE `employee_tbl`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `services_tbl`
--
ALTER TABLE `services_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_tbl`
--
ALTER TABLE `booking_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_tbl`
--
ALTER TABLE `category_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_tbl`
--
ALTER TABLE `employee_tbl`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services_tbl`
--
ALTER TABLE `services_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
