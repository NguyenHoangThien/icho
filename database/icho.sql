-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2016 at 01:49 AM
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
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `ads_url` varchar(255) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1 : không liên kết, 2 : trỏ đến 1 trang, 3',
  `display_order` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cate`
--

CREATE TABLE `cate` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `loai_id` tinyint(4) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `home_style` tinyint(4) NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text,
  `is_hot` tinyint(1) NOT NULL,
  `bg_color` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `icon_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cate`
--

INSERT INTO `cate` (`id`, `name`, `alias`, `slug`, `description`, `loai_id`, `display_order`, `home_style`, `created_user`, `updated_user`, `created_at`, `updated_at`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`, `is_hot`, `bg_color`, `status`, `icon_url`) VALUES
(1, 'Máy chủ DELL', 'May chu DELL', 'may-chu-dell', '', 1, 0, 0, 1, 0, '2016-07-18 15:10:58', '2016-07-18 15:10:58', 'Máy chủ DELL', '', '', '', 0, '#EE484F', 1, ''),
(2, 'Máy chủ FPT', 'May chu FPT', 'may-chu-fpt', '', 1, 0, 0, 1, 0, '2016-07-18 15:11:35', '2016-07-18 15:11:35', 'Máy chủ FPT', '', '', '', 0, '#EE484F', 1, ''),
(3, 'Máy chủ HP', 'May chu HP', 'may-chu-hp', '', 1, 0, 0, 1, 0, '2016-07-18 15:11:53', '2016-07-18 15:11:53', 'Máy chủ HP', '', '', '', 0, '#EE484F', 1, ''),
(4, 'Máy chủ IBM', 'May chu IBM', 'may-chu-ibm', '', 1, 0, 0, 1, 0, '2016-07-18 15:12:04', '2016-07-18 15:12:04', 'Máy chủ IBM', '', '', '', 0, '#EE484F', 1, ''),
(5, 'Acer', 'Acer', 'acer', '', 2, 0, 0, 1, 0, '2016-07-18 15:13:31', '2016-07-18 15:13:31', 'Acer', '', '', '', 0, '#EE484F', 1, ''),
(6, 'Apple', 'Apple', 'apple', '', 2, 0, 0, 1, 0, '2016-07-18 15:14:25', '2016-07-18 15:14:25', 'Apple', '', '', '', 0, '#EE484F', 1, ''),
(7, 'Asus', 'Asus', 'asus', '', 2, 0, 0, 1, 0, '2016-07-18 15:14:34', '2016-07-18 15:14:34', 'Asus', '', '', '', 0, '#EE484F', 1, ''),
(8, 'Dell', 'Dell', 'dell', '', 2, 0, 0, 1, 0, '2016-07-18 15:14:46', '2016-07-18 15:14:46', 'Dell', '', '', '', 0, '#EE484F', 1, ''),
(9, 'HP', 'HP', 'hp', '', 2, 0, 0, 1, 0, '2016-07-18 15:14:56', '2016-07-18 15:14:56', 'HP', '', '', '', 0, '#EE484F', 1, ''),
(10, 'Lenovo', 'Lenovo', 'lenovo', '', 2, 0, 0, 1, 0, '2016-07-18 15:15:07', '2016-07-18 15:15:07', 'Lenovo', '', '', '', 0, '#EE484F', 1, ''),
(11, 'Máy bộ ACER', 'May bo ACER', 'may-bo-acer', '', 3, 0, 0, 1, 0, '2016-07-18 15:15:32', '2016-07-18 15:15:32', 'Máy bộ ACER', '', '', '', 0, '#EE484F', 1, ''),
(12, 'Máy bộ ASUS', 'May bo ASUS', 'may-bo-asus', '', 3, 0, 0, 1, 0, '2016-07-18 15:15:43', '2016-07-18 15:15:43', 'Máy bộ ASUS', '', '', '', 0, '#EE484F', 1, ''),
(13, 'Máy bộ DELL', 'May bo DELL', 'may-bo-dell', '', 3, 0, 0, 1, 0, '2016-07-18 15:16:02', '2016-07-18 15:16:02', 'Máy bộ DELL', '', '', '', 0, '#EE484F', 1, ''),
(14, 'Máy bộ FPT', 'May bo FPT', 'may-bo-fpt', '', 3, 0, 0, 1, 0, '2016-07-18 15:16:09', '2016-07-18 15:16:09', 'Máy bộ FPT', '', '', '', 0, '#EE484F', 1, ''),
(15, 'Máy bộ HP', 'May bo HP', 'may-bo-hp', '', 3, 0, 0, 1, 0, '2016-07-18 15:16:18', '2016-07-18 15:16:18', 'Máy bộ HP', '', '', '', 0, '#EE484F', 1, ''),
(16, 'Máy bộ LENOVO', 'May bo LENOVO', 'may-bo-lenovo', '', 3, 0, 0, 1, 0, '2016-07-18 15:16:27', '2016-07-18 15:16:27', 'Máy bộ LENOVO', '', '', '', 0, '#EE484F', 1, ''),
(17, 'AntiVirus', 'AntiVirus', 'antivirus', '', 4, 0, 0, 1, 0, '2016-07-18 15:16:51', '2016-07-18 15:16:51', 'AntiVirus', '', '', '', 0, '#EE484F', 1, ''),
(18, 'Microsoft', 'Microsoft', 'microsoft', '', 4, 0, 0, 1, 0, '2016-07-18 15:17:04', '2016-07-18 15:17:04', 'Microsoft', '', '', '', 0, '#EE484F', 1, ''),
(19, 'DLink', 'DLink', 'dlink', '', 5, 0, 0, 1, 0, '2016-07-18 15:18:19', '2016-07-18 15:18:19', 'DLink', '', '', '', 0, '#EE484F', 1, ''),
(20, 'Netis', 'Netis', 'netis', '', 5, 0, 0, 1, 0, '2016-07-18 15:18:28', '2016-07-18 15:18:28', 'Netis', '', '', '', 0, '#EE484F', 1, ''),
(21, 'Tenda', 'Tenda', 'tenda', '', 5, 0, 0, 1, 0, '2016-07-18 15:18:34', '2016-07-18 15:18:34', 'Tenda', '', '', '', 0, '#EE484F', 1, ''),
(22, 'Toto Link', 'Toto link', 'toto-link', '', 5, 0, 0, 1, 0, '2016-07-18 15:18:48', '2016-07-18 15:18:48', 'Toto Link', '', '', '', 0, '#EE484F', 1, ''),
(23, 'TP-Link', 'TP-Link', 'tp-link', '', 5, 0, 0, 1, 0, '2016-07-18 15:20:56', '2016-07-18 15:22:56', 'TP-Link', '', '', '', 0, '#EE484F', 1, ''),
(24, 'Bộ lưu điện', 'Bo luu dien', 'bo-luu-dien', '', 6, 0, 0, 1, 0, '2016-07-18 15:24:47', '2016-07-18 15:24:47', 'Bộ lưu điện', '', '', '', 0, '#EE484F', 1, ''),
(25, 'Máy chiếu', 'May chieu', 'may-chieu', '', 6, 0, 0, 1, 0, '2016-07-18 15:25:16', '2016-07-18 15:25:16', 'Máy chiếu', '', '', '', 0, '#EE484F', 1, ''),
(26, 'Máy fax', 'May fax', 'may-fax', '', 6, 0, 0, 1, 0, '2016-07-18 15:25:40', '2016-07-18 15:25:40', 'Máy fax', '', '', '', 0, '#EE484F', 1, ''),
(27, ' Máy in Brother', ' May in Brother', 'may-in-brother', '', 6, 0, 0, 1, 0, '2016-07-18 15:25:49', '2016-07-18 15:26:55', ' Máy in Brother', '', '', '', 0, '#EE484F', 1, ''),
(28, 'Máy in Canon', 'May in Canon', 'may-in-canon', '', 6, 0, 0, 1, 0, '2016-07-18 15:26:05', '2016-07-18 15:26:05', 'Máy in Canon', '', '', '', 0, '#EE484F', 1, ''),
(29, 'Máy in HP', 'May in HP', 'may-in-hp', '', 6, 0, 0, 1, 0, '2016-07-18 15:26:13', '2016-07-18 15:26:13', 'Máy in HP', '', '', '', 0, '#EE484F', 1, ''),
(30, 'Máy scan', 'May scan', 'may-scan', '', 6, 0, 0, 1, 0, '2016-07-18 15:27:18', '2016-07-18 15:27:18', 'Máy scan', '', '', '', 0, '#EE484F', 1, ''),
(31, 'Mainboard', 'Mainboard', 'mainboard', '', 7, 0, 0, 1, 0, '2016-07-18 15:27:56', '2016-07-18 15:27:56', 'Mainboard', '', '', '', 0, '#EE484F', 1, ''),
(32, 'CPU', 'CPU', 'cpu', '', 7, 0, 0, 1, 0, '2016-07-18 15:28:07', '2016-07-18 15:28:07', 'CPU', '', '', '', 0, '#EE484F', 1, ''),
(33, 'Nguồn', 'Nguon', 'nguon', '', 7, 0, 0, 1, 0, '2016-07-18 15:28:23', '2016-07-18 15:28:23', 'Nguồn', '', '', '', 0, '#EE484F', 1, ''),
(34, 'Ổ cứng', 'O cung', 'o-cung', '', 7, 0, 0, 1, 0, '2016-07-18 15:28:41', '2016-07-18 15:28:41', 'Ổ cứng', '', '', '', 0, '#EE484F', 1, ''),
(35, 'RAM', 'RAM', 'ram', '', 7, 0, 0, 1, 0, '2016-07-18 15:28:59', '2016-07-18 15:28:59', 'RAM', '', '', '', 0, '#EE484F', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `hang_sx`
--

CREATE TABLE `hang_sx` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `loai_id` tinyint(4) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `display_order` tinyint(4) NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `custom_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loai_sp`
--

INSERT INTO `loai_sp` (`id`, `name`, `alias`, `slug`, `description`, `icon_url`, `bg_color`, `home_style`, `display_order`, `is_hot`, `status`, `created_user`, `updated_user`, `created_at`, `updated_at`, `meta_title`, `meta_description`, `meta_keywords`, `custom_text`) VALUES
(1, 'Server', 'Server', 'server', '', 'server-1468649211.png', '#EE484F', 1, 1, 0, 1, 1, 0, '2016-07-16 06:03:57', '2016-07-18 15:06:26', 'Server', 'Server', 'Server', 'Server'),
(2, 'Laptop', 'Laptop', 'laptop', '', 'laptop-1468649338.png', '#EE484F', 1, 2, 0, 1, 1, 0, '2016-07-16 06:08:45', '2016-07-16 06:09:16', '', '', '', ''),
(3, 'Desktop', 'Desktop', 'desktop', '', 'desktop-1468649638.png', '#EE484F', 1, 5, 0, 1, 1, 0, '2016-07-16 06:14:00', '2016-07-16 06:14:00', '', '', '', ''),
(4, 'Phần mềm', 'Phan mem', 'phan-mem', '', 'phan-mem-1468650127.png', '#EE484F', 1, 4, 0, 1, 1, 0, '2016-07-16 06:21:58', '2016-07-16 06:22:13', '', '', '', ''),
(5, 'Thiết bị mạng', 'Thiet bi mang', 'thiet-bi-mang', '', 'thiet-bi-mang-1468650315.png', '#EE484F', 1, 3, 0, 1, 1, 0, '2016-07-16 06:25:21', '2016-07-16 06:25:21', '', '', '', ''),
(6, 'Văn phòng', 'Van phong', 'van-phong', '', 'thiet-bi-van-phong-1468650358.png', '#EE484F', 1, 7, 0, 1, 1, 0, '2016-07-16 06:26:04', '2016-07-16 06:26:04', '', '', '', ''),
(7, 'Linh kiện', 'Linh kien', 'linh-kien', '', 'linh-phu-kien-1468650384.png', '#EE484F', 1, 8, 0, 1, 1, 0, '2016-07-16 06:26:29', '2016-07-16 06:26:29', '', '', '', ''),
(8, 'Điện thoại', 'Dien thoai', 'dien-thoai', '', 'dien-thoai-1468650408.png', '#EE484F', 1, 9, 0, 1, 1, 0, '2016-07-16 06:26:52', '2016-07-16 06:26:52', '', '', '', ''),
(9, 'Phụ kiện', 'Phu kien', 'phu-kien', '', 'linh-phu-kien-1468650451.png', '#EE484F', 1, 6, 0, 1, 1, 0, '2016-07-16 06:27:35', '2016-07-16 06:27:35', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `loai_thuoc_tinh`
--

CREATE TABLE `loai_thuoc_tinh` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `loai_id` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loai_thuoc_tinh`
--

INSERT INTO `loai_thuoc_tinh` (`id`, `name`, `alias`, `display_order`, `loai_id`, `status`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'BỘ XỬ LÝ', 'BO XU LY', 1, 2, 1, 1, 1, '2016-09-04 02:12:22', '2016-09-04 02:17:00'),
(2, 'BỘ NHỚ', 'BO NHO', 1, 2, 1, 1, 1, '2016-09-04 02:25:02', '2016-09-04 02:25:02'),
(3, 'ĐĨA CỨNG', 'DIA CUNG', 1, 2, 1, 1, 1, '2016-09-04 02:25:13', '2016-09-04 02:25:13'),
(4, 'MÀN HÌNH', 'MAN HINH', 1, 2, 1, 1, 1, '2016-09-04 02:26:48', '2016-09-04 02:26:48'),
(5, 'ĐỒ HỌA', 'DO HOA', 1, 2, 1, 1, 1, '2016-09-04 02:26:56', '2016-09-04 02:26:56'),
(6, 'ĐĨA QUANG', 'DIA QUANG', 1, 2, 1, 1, 1, '2016-09-04 02:27:02', '2016-09-04 02:27:02'),
(7, 'TÌNH NĂNG MỞ RỘNG & CỔNG GIAO TIẾP', 'TINH NANG MO RONG & CONG GIAO TIEP', 1, 2, 1, 1, 1, '2016-09-04 02:27:10', '2016-09-04 02:27:10'),
(8, 'GIAO TIẾP MẠNG', 'GIAO TIEP MANG', 1, 2, 1, 1, 1, '2016-09-04 02:27:18', '2016-09-04 02:27:18'),
(9, 'CARD READER', 'CARD READER', 1, 2, 1, 1, 1, '2016-09-04 02:27:23', '2016-09-04 02:27:23'),
(10, 'WEBCAM', 'WEBCAM', 1, 2, 1, 1, 1, '2016-09-04 02:27:30', '2016-09-04 02:27:30'),
(11, 'PIN/BATTERY', 'PIN-BATTERY', 1, 2, 1, 1, 1, '2016-09-04 02:27:37', '2016-09-04 02:27:37'),
(12, 'HỆ ĐIỀU HÀNH, PHẦN MỀM SẴN CÓ/OS', 'HE DIEU HANH, PHAN MEM SAN CO-OS', 1, 2, 1, 1, 1, '2016-09-04 02:27:43', '2016-09-04 02:27:43'),
(13, 'KÍCH THƯỚC & TRỌNG LƯỢNG', 'KICH THUOC & TRONG LUONG', 1, 2, 1, 1, 1, '2016-09-04 02:27:51', '2016-09-04 02:27:51'),
(14, 'MÀN HÌNH', 'MAN HINH', 1, 8, 1, 1, 1, '2016-09-04 02:29:26', '2016-09-04 02:29:26'),
(15, 'CAMERA SAU', 'CAMERA SAU', 1, 8, 1, 1, 1, '2016-09-04 02:29:36', '2016-09-04 02:29:36'),
(16, 'CAMERA TRƯỚC', 'CAMERA TRUOC', 1, 8, 1, 1, 1, '2016-09-04 02:29:41', '2016-09-04 02:29:41'),
(17, 'HỆ ĐIỀU HÀNH - CPU', 'HE DIEU HANH - CPU', 1, 8, 1, 1, 1, '2016-09-04 02:29:46', '2016-09-04 02:47:17'),
(18, 'BỘ NHỚ & LƯU TRỮ', 'BO NHO & LUU TRU', 1, 8, 1, 1, 1, '2016-09-04 02:29:52', '2016-09-04 02:29:52'),
(19, 'KẾT NỐI', 'KET NOI', 1, 8, 1, 1, 1, '2016-09-04 02:29:58', '2016-09-04 02:29:58'),
(20, 'THIẾT KẾ & TRỌNG LƯỢNG', 'THIET KE & TRONG LUONG', 1, 8, 1, 1, 1, '2016-09-04 02:30:04', '2016-09-04 02:30:04'),
(21, 'THÔNG TIN PIN', 'THONG TIN PIN', 1, 8, 1, 1, 1, '2016-09-04 02:30:13', '2016-09-04 02:30:13'),
(22, 'GIẢI TRÍ VÀ ỨNG DỤNG', 'GIAI TRI VA UNG DUNG', 1, 8, 1, 1, 1, '2016-09-04 02:30:21', '2016-09-04 02:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `ma_sp` char(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_extend` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `alias_extend` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `slug_extend` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `is_sale` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) DEFAULT NULL,
  `hang_sx_id` tinyint(4) DEFAULT NULL,
  `loai_id` tinyint(4) NOT NULL,
  `cate_id` tinyint(4) NOT NULL,
  `mota_1` varchar(500) DEFAULT NULL,
  `mota_2` varchar(500) DEFAULT NULL,
  `xuat_xu` varchar(255) DEFAULT NULL,
  `khuyen_mai` text,
  `chi_tiet` text,
  `bao_hanh` varchar(500) DEFAULT NULL,
  `so_luong_ton` int(11) NOT NULL,
  `sale_percent` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sp_hinh`
--

CREATE TABLE `sp_hinh` (
  `id` int(11) NOT NULL,
  `sapham_id` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `display_order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sp_linhkien`
--

CREATE TABLE `sp_linhkien` (
  `sanpham_id` int(11) NOT NULL,
  `linhkien_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sp_sosanh`
--

CREATE TABLE `sp_sosanh` (
  `sanpham_id` int(11) NOT NULL,
  `sosanh_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `thuoc_tinh`
--

CREATE TABLE `thuoc_tinh` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `display_order` tinyint(4) NOT NULL,
  `loai_id` tinyint(4) NOT NULL,
  `loai_thuoc_tinh_id` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `changed_password` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(255) NOT NULL,
  `created_user` int(11) NOT NULL,
  `updated_user` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `role`, `status`, `changed_password`, `remember_token`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@icho.vn', '$2y$10$/vF4N2AKvZub7jnhWpTaWeBoejGkbad5DOx9IRfBTvKqWkzgPuTX6', 3, 1, 0, '', 1, 1, '2016-08-27 05:26:18', '2016-08-27 10:21:27'),
(6, 'Hoang Nguyen', 'hoangnhpublic@gmail.com', '$2y$10$8sMegaFE.07wPr6S74IhUe1a61CdrWjOOLEmFXvx2ATe/gVekhkEq', 1, 2, 0, '', 1, 1, '2016-08-27 05:26:18', '2016-08-27 13:54:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cate`
--
ALTER TABLE `cate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `hang_sx`
--
ALTER TABLE `hang_sx`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_sp`
--
ALTER TABLE `loai_sp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai_thuoc_tinh`
--
ALTER TABLE `loai_thuoc_tinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_hinh`
--
ALTER TABLE `sp_hinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sp_linhkien`
--
ALTER TABLE `sp_linhkien`
  ADD PRIMARY KEY (`sanpham_id`,`linhkien_id`),
  ADD UNIQUE KEY `sanpham_id` (`sanpham_id`,`linhkien_id`);

--
-- Indexes for table `sp_sosanh`
--
ALTER TABLE `sp_sosanh`
  ADD PRIMARY KEY (`sanpham_id`,`sosanh_id`),
  ADD UNIQUE KEY `sanpham_id` (`sanpham_id`,`sosanh_id`);

--
-- Indexes for table `thuoc_tinh`
--
ALTER TABLE `thuoc_tinh`
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
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cate`
--
ALTER TABLE `cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `hang_sx`
--
ALTER TABLE `hang_sx`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loai_sp`
--
ALTER TABLE `loai_sp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `loai_thuoc_tinh`
--
ALTER TABLE `loai_thuoc_tinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sp_hinh`
--
ALTER TABLE `sp_hinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `thuoc_tinh`
--
ALTER TABLE `thuoc_tinh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
