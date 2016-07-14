-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2016 at 08:08 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icho`
--

-- --------------------------------------------------------

--
-- Table structure for table `loai_sp`
--

CREATE TABLE `loai_sp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text,
  `icon_url` varchar(255) DEFAULT NULL,
  `bg_color` varchar(10) DEFAULT NULL,
  `home_style` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1: banner lớn 2:banner nho 3 banner ngang',
  `ads_url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `display_order` tinyint(4) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loai_sp`
--

INSERT INTO `loai_sp` (`id`, `name`, `alias`, `slug`, `description`, `icon_url`, `bg_color`, `home_style`, `ads_url`, `image_url`, `display_order`, `is_hot`, `status`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Máy chủ', 'May chu', 'may-chu', '', '', 'red', 1, NULL, '', 0, 1, 1, 1, 0, '2016-07-14 14:07:53', '2016-07-14 14:07:53'),
(2, 'Test', 'Test', 'test', 'asfasfsg adsg dgsadg dsgsdgsg', 'desert_1468512493.jpg', 'fgdsfhdfhd', 2, NULL, 'koala_1468512496.jpg', 0, 1, 1, 1, 0, '2016-07-14 16:40:06', '2016-07-14 16:40:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loai_sp`
--
ALTER TABLE `loai_sp`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loai_sp`
--
ALTER TABLE `loai_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
