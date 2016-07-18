-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2016 at 01:51 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phim`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `sys_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `parent` bigint(20) DEFAULT '0',
  `child` text,
  `taxonomy` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(32) DEFAULT NULL,
  `priority` int(8) DEFAULT '0',
  `slug` varchar(32) NOT NULL,
  `keywords` text,
  `count` int(11) DEFAULT NULL,
  `ancestry` text,
  `metadata` text,
  `thumb` text,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`sys_id`, `id`, `parent`, `child`, `taxonomy`, `name`, `description`, `priority`, `slug`, `keywords`, `count`, `ancestry`, `metadata`, `thumb`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(137, 1, 0, NULL, 'film', 'Hành động', '', 0, 'phim-hanh-dong', 'hanh dong phim-hanh-dong', 0, NULL, '{"id":137,"title":"Phim h\\u00e0nh \\u0111\\u1ed9ng hay, phim h\\u00e0nh \\u0111\\u1ed9ng m\\u1ef9 m\\u1edbi hot v\\u00e0 h\\u1ea5p d\\u1eabn nh\\u1ea5t hi\\u1ec7n nay","description":"Phim hanh dong - xem nh\\u1eefng tuy\\u1ec3n t\\u1eadp phim h\\u00e0nh \\u0111\\u1ed9ng hay v\\u00e0 m\\u1edbi h\\u1ea5p d\\u1eabn nh\\u1ea5t n\\u0103m 2016  v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng HD \\u0111\\u01b0\\u1ee3c c\\u1eadp nh\\u1eadt li\\u00ean t\\u1ee5c","keywords":"phim hanh dong, phim h\\u00e0nh \\u0111\\u1ed9ng, phim hanh dong my","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(128, 2, 0, NULL, 'film', 'Phiêu lưu', '', 0, 'phim-phieu-luu', 'phieu luu phim-phieu-luu', 0, NULL, '{"id":128,"title":"Xem phim phi\\u00eau l\\u01b0u hay v\\u00e0 phim phi\\u00eau l\\u01b0u m\\u1edbi nh\\u1ea5t, phim phieu luu hot nh\\u1ea5t","description":"Phim phieu luu - Tuy\\u1ec3n t\\u1eadp nh\\u1eefng b\\u1ed9 phim phi\\u00eau l\\u01b0u hay v\\u00e0 m\\u1edbi nh\\u1ea5t n\\u0103m 2016 \\u0111\\u01b0\\u1ee3c c\\u1eadp nh\\u1eadt li\\u00ean t\\u1ee5c ch\\u1ea5t l\\u01b0\\u1ee3ng HD","keywords":"phim phieu luu, phim phi\\u00eau l\\u01b0u,","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(127, 5, 0, NULL, 'film', 'Tình cảm', '', 0, 'phim-tinh-cam', 'tinh cam phim-tinh-cam', 0, NULL, '{"id":127,"title":"Xem phim t\\u00ecnh c\\u1ea3m l\\u00e3ng m\\u1ea1n m\\u1edbi v\\u00e0 hay nh\\u1ea5t, phim tinh cam moi nhat","description":"Xem phim t\\u00ecnh c\\u1ea3m l\\u00e3ng m\\u1ea1n m\\u1edbi nh\\u1ea5t v\\u00e0 phim tinh c\\u00e0m h\\u00e0n qu\\u1ed1c hay nh\\u1ea5t \\u0111\\u01b0\\u1ee3c c\\u1eadp nh\\u1eadt n\\u0103m 2016 v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng HD","keywords":"phim tinh cam, phim t\\u00ecnh c\\u1ea3m","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(126, 6, 0, NULL, 'film', 'Hoạt hình', '', 0, 'phim-hoat-hinh', 'hoat hinh phim-hoat-hinh', 0, NULL, '{"id":126,"title":"Phim ho\\u1ea1t h\\u00ecnh hay v\\u00e0 hot nh\\u1ea5t, phim hoat hinh ch\\u1ecdn l\\u1ecdc m\\u1edbi nh\\u1ea5t","description":"Xem phim ho\\u1ea1t h\\u00ecnh hay, xem phim ho\\u1ea1t h\\u00ecnh m\\u1edbi nh\\u1ea5t v\\u00e0 mi\\u1ec5n ph\\u00ed n\\u0103m 2016 \\u0111\\u01b0\\u1ee3c c\\u1eadp nh\\u1eadt li\\u00ean t\\u1ee5c v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng HD n\\u00e9t nh\\u1ea5t","keywords":"phim hoat hinh, phim ho\\u1ea1t h\\u00ecnh","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(125, 7, 0, NULL, 'film', 'Hình sự', '', 0, 'phim-hinh-su', 'hinh su phim-hinh-su', 0, NULL, '{"id":125,"title":"Phim h\\u00ecnh s\\u1ef1 m\\u1edbi nh\\u1ea5t, phim h\\u00ecnh s\\u1ef1 hay nh\\u1ea5t v\\u00e0 ch\\u1ecdn l\\u1ecdc 2016","description":"Xem phim h\\u00ecnh s\\u1ef1 m\\u1edbi nh\\u1ea5t mi\\u1ec5n ph\\u00ed, phim h\\u00ecnh s\\u1ef1 hay nh\\u1ea5t n\\u0103m 2016 \\u0111\\u01b0\\u1ee3c c\\u1eadp nh\\u1eadt li\\u00ean t\\u1ee5c v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng HD","keywords":"phim h\\u00ecnh s\\u1ef1, phim hinh su","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(124, 8, 0, NULL, 'film', 'Tâm lý', '', 0, 'phim-tam-ly', 'tam ly phim-tam-ly', 0, NULL, '{"id":124,"title":"Phim t\\u00e2m l\\u00fd hay, phim t\\u00ecnh c\\u1ea3m hot v\\u00e0 phim t\\u00e2m l\\u00fd t\\u00ecnh c\\u1ea3m n\\u00f3ng b\\u1ecfng nh\\u1ea5t","description":"Xem phim t\\u00e2m ly t\\u00ecnh c\\u1ea3m, phim tam ly, phim tinh cam v\\u1edbi nh\\u1eefng b\\u1ed9 phim \\u0111\\u01b0\\u1ee3c ch\\u1ecdn l\\u1ecdc v\\u00e0 m\\u1edbi nh\\u1ea5t 2016 ch\\u1ea5t l\\u01b0\\u1ee3ng HD \\u0111\\u01b0\\u1ee3c xem mi\\u1ec5n ph\\u00ed","keywords":"phim tam ly, phim tinh cam, phim tam ly tinh cam","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(122, 9, 0, NULL, 'film', 'Viễn tưởng', '', 0, 'phim-vien-tuong', 'vien tuong phim-vien-tuong', 0, NULL, '{"id":122,"title":"Xem phim khoa h\\u1ecdc vi\\u1ec5n t\\u01b0\\u1edfng, phim vi\\u1ec5n t\\u01b0\\u1edfng hay v\\u00e0 hot nh\\u1ea5t","description":"Tuy\\u1ec3n t\\u1eadp nh\\u1eefng b\\u1ed9 phim vi\\u1ec5n t\\u01b0\\u1edfng v\\u00e0 phim khoa h\\u1ecdc vi\\u1ec5n t\\u01b0\\u1edfng hay v\\u00e0 m\\u1edbi nh\\u1ea5t n\\u0103m 2016 \\u0111\\u01b0\\u1ee3c c\\u1eadp nh\\u1eadt li\\u00ean t\\u1ee5c v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng HD","keywords":"phim khoa hoc, phim vien tuong, phim vi\\u1ec5n t\\u01b0\\u1edfng, phim khoa h\\u1ecdc","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(121, 10, 0, NULL, 'film', 'Cổ trang', '', 0, 'phim-co-trang', 'co trang phim-co-trang', 0, NULL, '{"id":121,"title":"Phim c\\u1ed5 trang, phim co trang kiem hiep hay hot nh\\u1ea5t 2016","description":"Xem nh\\u1eefng b\\u1ed9 phim c\\u1ed5 trang, phim co trang kiem hiep, phim ki\\u1ebfm hi\\u1ec7p \\u0111\\u01b0\\u1ee3c tuy\\u1ec3n ch\\u1ecdn v\\u1edbi n\\u1ed9i dung h\\u1ea5p d\\u1eabn v\\u00e0 ch\\u1ea5t l\\u01b0\\u1ee3ng HD mi\\u1ec5n ph\\u00ed","keywords":"phim co trang, phim c\\u1ed5 trang","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(120, 11, 0, NULL, 'film', 'Hài hước', '', 0, 'phim-hai-huoc', 'hai huoc phim-hai-huoc', 0, NULL, '{"id":120,"title":"Xem phim h\\u00e0i h\\u01b0\\u1edbc, xem phim h\\u00e0i h\\u01b0\\u1edbc m\\u1edbi v\\u00e0 hay nh\\u1ea5t 2016","description":"Phim hai huoc - tuy\\u1ec3n t\\u1eadp nh\\u1eefng b\\u1ed9 phim h\\u00e0i h\\u01b0\\u1edbc mi\\u1ec5n ph\\u00ed hay v\\u00e0 m\\u1edbi nh\\u1ea5t n\\u0103m 2016 v\\u1edbi ch\\u1ea5t l\\u01b0\\u1ee3ng HD \\u0111\\u01b0\\u1ee3c c\\u1eadp nh\\u1eadt li\\u00ean t\\u1ee5c","keywords":"phim h\\u00e0i h\\u01b0\\u1edbc, phim hai huoc","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(119, 12, 0, NULL, 'film', 'Chiến tranh', '', 0, 'phim-chien-tranh', 'chien tranh phim-chien-tranh', 0, NULL, '{"id":119,"title":"Phim chi\\u1ebfn tranh m\\u1edbi, hot nh\\u1ea5t n\\u0103m 2016, phim chien tranh hay nhat","description":"Xem nh\\u1eefng b\\u1ed9 phim chi\\u1ebfn tranh m\\u1edbi v\\u00e0 hot nh\\u1ea5t n\\u0103m 2016 v\\u1edbi nh\\u1eefng b\\u1ed9 phim chien tranh ch\\u1ea5t l\\u01b0\\u1ee3ng HD \\u0111\\u01b0\\u1ee3c c\\u1eadp nh\\u1eadt li\\u00ean t\\u1ee5c","keywords":"phim chien tranh, phim chi\\u1ebfn tranh","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(118, 13, 0, NULL, 'film', 'Ma Kinh Dị', 'Phim kinh dị', 0, 'phim-ma-kinh-di', 'ma kinh di phim-ma-kinh-di', 0, NULL, '{"id":118,"title":"Phim ma kinh d\\u1ecb v\\u00e0 tuy\\u1ec3n t\\u1eadp nh\\u1eefng phim ma hay v\\u00e0 m\\u1edbi nh\\u1ea5t","description":"Xem nh\\u1eefng b\\u1ed9 phim kinh di, phim ma hay nh\\u1ea5t v\\u00e0 m\\u1edbi nh\\u1ea5t n\\u0103m 2016 tr\\u00ean th\\u1ebf gi\\u1edbi v\\u1edbi nh\\u1eefng t\\u00ecnh ti\\u1ebft r\\u00f9ng r\\u1ee3n v\\u00e0 h\\u1ea5p d\\u1eabn nh\\u1ea5t hi\\u1ec7n nay.","keywords":"kinh di, phim kinh di, phim ma,","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(85, 14, 0, NULL, 'posts', 'Phim', '', 0, 'phim', 'phim phim', 0, NULL, '{"id":85,"title":"Phim","description":"","keywords":"Phim","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(86, 15, 0, NULL, 'posts', 'Diễn viên', '', 0, 'dien-vien', 'dien vien dien-vien', 0, NULL, '{"id":86,"title":"Di\\u1ec5n vi\\u00ean","description":"","keywords":"Dien vien","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(87, 16, 0, NULL, 'posts', 'Tin tức khác', '', 0, 'tin-tuc-khac', 'tin tuc khac tin-tuc-khac', 0, NULL, '{"id":87,"title":"Tin t\\u1ee9c kh\\u00e1c","description":"","keywords":"Tin tuc khac","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(117, 17, 0, NULL, 'film', 'Gia đình', '', 0, 'phim-gia-dinh', 'gia dinh phim-gia-dinh', 0, NULL, '{"id":117,"title":"Phim gia \\u0111\\u00ecnh hay hot nh\\u1ea5t, phim gia dinh HD m\\u1edbi nh\\u1ea5t n\\u0103m 2016","description":"Xem nh\\u1eefng b\\u1ed9 phim v\\u1ec1 gia \\u0111\\u00ecnh, phim gia dinh hay nh\\u1ea5t ch\\u1ea5t l\\u01b0\\u1ee3ng. Nh\\u1eefng b\\u1ed9 phim l\\u1ebb v\\u00e0 phim b\\u1ed9 \\u0111\\u01b0\\u1ee3c c\\u1eadp nh\\u1eadt th\\u01b0\\u1eddng xuy\\u00ean v\\u00e0 xem mi\\u1ec5n ph\\u00ed","keywords":"phim gia dinh, phim gia \\u0111\\u00ecnh","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `sys_id` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(32) DEFAULT NULL,
  `priority` int(8) DEFAULT '0',
  `slug` varchar(32) NOT NULL,
  `keywords` text,
  `count` int(11) DEFAULT NULL,
  `ancestry` text,
  `metadata` text,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`sys_id`, `id`, `name`, `description`, `priority`, `slug`, `keywords`, `count`, `ancestry`, `metadata`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'Vietnam', '', 0, 'vietnam', 'vietnam vietnam', 0, NULL, '{"id":1,"title":"Vietnam","description":"","keywords":"Vietnam","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(2, 2, 'America', '', 0, 'america', 'america america', 0, NULL, '{"id":2,"title":"America","description":"","keywords":"America","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(3, 3, 'Korea', '', 0, 'korea', 'korea korea', 0, NULL, '{"id":3,"title":"Korea","description":"","keywords":"Korea","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(4, 4, 'China', '', 0, 'china', 'china china', 0, NULL, '{"id":4,"title":"China","description":"","keywords":"China","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(5, 5, 'United Kingdom', '', 0, 'united-kingdom', 'united kingdom united-kingdom', 0, NULL, '{"id":5,"title":"United Kingdom","description":"","keywords":"United Kingdom","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(6, 6, 'Africa', '', 0, 'africa', 'africa africa', 0, NULL, '{"id":6,"title":"Africa","description":"","keywords":"Africa","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(32, 7, 'Hongkong', '', 0, 'hongkong', 'hongkong hongkong', 0, NULL, '{"id":32,"title":"Hongkong","description":"","keywords":"Hongkong","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(33, 8, 'Japan', '', 0, 'japan', 'japan japan', 0, NULL, '{"id":33,"title":"Japan","description":"","keywords":"Japan","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(46, 9, 'India', '', 0, 'india', 'india india', 0, NULL, '{"id":46,"title":"India","description":"","keywords":"India","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `crew`
--

CREATE TABLE `crew` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `count` int(11) DEFAULT NULL,
  `metadata` text,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `taxonomy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `crew`
--

INSERT INTO `crew` (`id`, `name`, `slug`, `image`, `description`, `keywords`, `count`, `metadata`, `created_user`, `updated_user`, `created_at`, `updated_at`, `taxonomy`) VALUES
(1, 'Greg Berlanti', 'greg-berlanti', '/upload/image/crew/greg-berlanti.jpg', '&lt;p&gt;Nghề nghiệp:&amp;nbsp;Nh&amp;agrave; bi&amp;ecirc;n kịch&lt;/p&gt;\r\n&lt;p&gt;Sinh: 24 th&amp;aacute;ng 5, 1972 (tuổi 42), Rye, Tiểu bang New York, Hoa Kỳ 1&lt;/p&gt;', 'greg berlanti greg-berlanti', 0, '{"id":null,"title":"Greg Berlanti","description":"Ngh\\u1ec1 nghi\\u1ec7p:\\u00a0Nh\\u00e0 bi\\u00ean k\\u1ecbchSinh: 24 th\\u00e1ng 5, 1972 (tu\\u1ed5i 42), Rye, Ti\\u1ec3u bang New York, Hoa K\\u1ef3","keywords":"Greg Berlanti","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(4, 'Jaume Collet-Serra', 'jaume-collet-serra', '/upload/image/crew/jaume-collet-serra.jpg', '&lt;p&gt;Nghề nghiệp:&amp;nbsp;Đạo di&amp;ecirc;̃n phim&lt;/p&gt;\r\n&lt;p&gt;Sinh: 23 th&amp;aacute;ng 3, 1974 (tuổi 40), Sant Iscle de Vallalta, T&amp;acirc;y Ban Nha&lt;/p&gt;', 'jaume collet-serra jaume-collet-serra', 0, '{"id":null,"title":"Jaume Collet-Serra","description":"Ngh\\u1ec1 nghi\\u1ec7p:\\u00a0\\u0110a\\u0323o di\\u00ea\\u0303n phimSinh: 23 th\\u00e1ng 3, 1974 (tu\\u1ed5i 40), Sant Iscle de Vallalta, T\\u00e2y Ban Nha","keywords":"Jaume Collet-Serra","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(5, 'Grant Gustin', 'grant-gustin', '/upload/image/crew/grant-gustin.jpg', '&lt;p&gt;Thomas Grant Gustin was born on January 14, 1990 in Norfolk, Virginia, to Tina (Sweeney), a pediatric nurse, and Thomas Gustin. In 2008, he graduated from Granby High School and went on to attend the BFA Music Theatre Program at Elon University in North Carolina for two years. He left school to take the role of Baby John in the Broadway Revival Tour of West Side Story, and performed with the tour from its opening on September 30, 2010 through September 23, 2011. On November 8, 2011, he debuted on the television series Glee as Sebastian Smythe, a member of the Dalton Academy Warblers.&lt;/p&gt;', 'grant gustin grant-gustin', 0, '{"id":null,"title":"Grant Gustin","description":"Thomas Grant Gustin was born on January 14, 1990 in Norfolk, Virginia, to Tina (Sweeney), a pediatric nurse, and Thomas Gustin. In 2008, he graduated from Granby High School and went on to attend the BFA Music Theatre Program at Elon University in North Carolina for two years. He left school to take the role of Baby John in the Broadway Revival Tour of West Side Story, and performed with the tour from its opening on September 30, 2010 through September 23, 2011. On November 8, 2011, he debuted on the television series Glee as Sebastian Smythe, a member of the Dalton Academy Warblers.","keywords":"Grant Gustin","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(6, 'Candice Patton', 'candice-patton', '/upload/image/crew/candice-patton.jpg', '&lt;p&gt;Raised in Plano, Texas, Candice continued her childhood dream of becoming an actress by attending Southern Methodist University in Dallas where she graduated Summa Cum Laude with a B.F.A in Theatre. It was here that she was scouted by The Young and the Restless for a CBS Soap Star Contest and flew out to Los Angeles to briefly join the cast. Candice finished her college education at SMU and moved to Los Angeles shortly after.&lt;/p&gt;', 'candice patton candice-patton', 0, '{"id":null,"title":"Candice Patton","description":"Raised in Plano, Texas, Candice continued her childhood dream of becoming an actress by attending Southern Methodist University in Dallas where she graduated Summa Cum Laude with a B.F.A in Theatre. It was here that she was scouted by The Young and the Restless for a CBS Soap Star Contest and flew out to Los Angeles to briefly join the cast. Candice finished her college education at SMU and moved to Los Angeles shortly after.","keywords":"Candice Patton","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(7, 'Rick Cosnett', 'rick-cosnett', '/upload/image/crew/rick-cosnett.jpg', '&lt;p&gt;Richard James Cosnett was born on April 6, 1983. Early life, grew up in Zimbabwe, moved to Australia and studied BFA Acting at QUT. He now lives in the USA. His work began in the theatre and has spread into film and television and producing. His great grandfather was the head of the Royal School of Music. He has 2 sisters and is a cousin of Hugh Grant.&lt;/p&gt;', 'rick cosnett rick-cosnett', 0, '{"id":null,"title":"Rick Cosnett","description":"Richard James Cosnett was born on April 6, 1983. Early life, grew up in Zimbabwe, moved to Australia and studied BFA Acting at QUT. He now lives in the USA. His work began in the theatre and has spread into film and television and producing. His great grandfather was the head of the Royal School of Music. He has 2 sisters and is a cousin of Hugh Grant.","keywords":"Rick Cosnett","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(8, 'David Nutter', 'david-nutter', NULL, NULL, 'david nutter david-nutter', 0, '{"id":null,"title":"David Nutter","description":"","keywords":"David Nutter","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(9, 'David Nutter', 'david-nutter', NULL, NULL, 'david nutter david-nutter', 0, '{"id":null,"title":"David Nutter","description":"","keywords":"David Nutter","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(10, 'Grant Gustin', 'grant-gustin', NULL, NULL, 'grant gustin grant-gustin', 0, '{"id":null,"title":"Grant Gustin","description":"","keywords":"Grant Gustin","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(11, 'Candice Patton', 'candice-patton', NULL, NULL, 'candice patton candice-patton', 0, '{"id":null,"title":"Candice Patton","description":"","keywords":"Candice Patton","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(12, 'Danielle Panabaker', 'danielle-panabaker', NULL, NULL, 'danielle panabaker danielle-panabaker', 0, '{"id":null,"title":"Danielle Panabaker","description":"","keywords":"Danielle Panabaker","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(13, 'Rick Cosnett', 'rick-cosnett', NULL, NULL, 'rick cosnett rick-cosnett', 0, '{"id":null,"title":"Rick Cosnett","description":"","keywords":"Rick Cosnett","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(14, 'Greg Berlanti', 'greg-berlanti', NULL, NULL, 'greg berlanti greg-berlanti', 0, '{"id":null,"title":"Greg Berlanti","description":"","keywords":"Greg Berlanti","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(15, 'Andrew Kreisberg', 'andrew-kreisberg', NULL, NULL, 'andrew kreisberg andrew-kreisberg', 0, '{"id":null,"title":"Andrew Kreisberg","description":"","keywords":"Andrew Kreisberg","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(16, 'Geoff Johns', 'geoff-johns', NULL, NULL, 'geoff johns geoff-johns', 0, '{"id":null,"title":"Geoff Johns","description":"","keywords":"Geoff Johns","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(17, 'Joss Whedon', 'joss-whedon', NULL, NULL, 'joss whedon joss-whedon', 0, '{"id":null,"title":"Joss Whedon","description":"","keywords":"Joss Whedon","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(18, 'Robert Downey Jr.', 'robert-downey-jr', NULL, NULL, 'robert downey jr. robert-downey-jr', 0, '{"id":null,"title":"Robert Downey Jr.","description":"","keywords":"Robert Downey Jr.","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(19, 'Chris Evans', 'chris-evans', NULL, NULL, 'chris evans chris-evans', 0, '{"id":null,"title":"Chris Evans","description":"","keywords":"Chris Evans","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(20, 'Mark Ruffalo', 'mark-ruffalo', NULL, NULL, 'mark ruffalo mark-ruffalo', 0, '{"id":null,"title":"Mark Ruffalo","description":"","keywords":"Mark Ruffalo","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(21, 'Chris Hemsworth', 'chris-hemsworth', NULL, NULL, 'chris hemsworth chris-hemsworth', 0, '{"id":null,"title":"Chris Hemsworth","description":"","keywords":"Chris Hemsworth","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(22, 'Marvel', 'marvel', NULL, NULL, 'marvel marvel', 0, '{"id":null,"title":"Marvel","description":"","keywords":"Marvel","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(23, 'George Miller', 'george-miller', NULL, NULL, 'george miller george-miller', 0, '{"id":null,"title":"George Miller","description":"","keywords":"George Miller","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(24, 'Tom Hardy', 'tom-hardy', NULL, NULL, 'tom hardy tom-hardy', 0, '{"id":null,"title":"Tom Hardy","description":"","keywords":"Tom Hardy","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(25, 'Charlize Theron', 'charlize-theron', NULL, NULL, 'charlize theron charlize-theron', 0, '{"id":null,"title":"Charlize Theron","description":"","keywords":"Charlize Theron","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(26, 'Nicholas Hoult', 'nicholas-hoult', NULL, NULL, 'nicholas hoult nicholas-hoult', 0, '{"id":null,"title":"Nicholas Hoult","description":"","keywords":"Nicholas Hoult","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(27, 'Zoë Kravitz', 'zoe-kravitz', NULL, NULL, 'zoe kravitz zoe-kravitz', 0, '{"id":null,"title":"Zo\\u00eb Kravitz","description":"","keywords":"Zoe Kravitz","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(28, 'Bruce Berman', 'bruce-berman', NULL, NULL, 'bruce berman bruce-berman', 0, '{"id":null,"title":"Bruce Berman","description":"","keywords":"Bruce Berman","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(29, 'Graham Burke', 'graham-burke', NULL, NULL, 'graham burke graham-burke', 0, '{"id":null,"title":"Graham Burke","description":"","keywords":"Graham Burke","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(30, 'James Wan', 'james-wan', NULL, NULL, 'james wan james-wan', 0, '{"id":null,"title":"James Wan","description":"","keywords":"James Wan","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(31, 'Vin Diesel', 'vin-diesel', NULL, NULL, 'vin diesel vin-diesel', 0, '{"id":null,"title":"Vin Diesel","description":"","keywords":"Vin Diesel","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(32, 'Paul Walker', 'paul-walker', NULL, NULL, 'paul walker paul-walker', 0, '{"id":null,"title":"Paul Walker","description":"","keywords":"Paul Walker","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(33, 'Dwayne Johnson', 'dwayne-johnson', NULL, NULL, 'dwayne johnson dwayne-johnson', 0, '{"id":null,"title":"Dwayne Johnson","description":"","keywords":"Dwayne Johnson","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(34, 'Jason Statham', 'jason-statham', NULL, NULL, 'jason statham jason-statham', 0, '{"id":null,"title":"Jason Statham","description":"","keywords":"Jason Statham","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(35, 'Universal Pictures', 'universal-pictures', NULL, NULL, 'universal pictures universal-pictures', 0, '{"id":null,"title":"Universal Pictures","description":"","keywords":"Universal Pictures","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(36, 'Media Rights Capital', 'media-rights-capital', NULL, NULL, 'media rights capital media-rights-capital', 0, '{"id":null,"title":"Media Rights Capital","description":"","keywords":"Media Rights Capital","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(37, 'Nhĩ Đông Thăng', 'nhi-dong-thang', NULL, NULL, 'nhi dong thang nhi-dong-thang', 0, '{"id":null,"title":"Nh\\u0129 \\u0110\\u00f4ng Th\\u0103ng","description":"","keywords":"Nhi Dong Thang","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(38, 'Lưu Thanh Vân', 'luu-thanh-van', NULL, NULL, 'luu thanh van luu-thanh-van', 0, '{"id":null,"title":"L\\u01b0u Thanh V\\u00e2n","description":"","keywords":"Luu Thanh Van","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(39, 'Huỳnh Hiểu Minh', 'huynh-hieu-minh', NULL, NULL, 'huynh hieu minh huynh-hieu-minh', 0, '{"id":null,"title":"Hu\\u1ef3nh Hi\\u1ec3u Minh","description":"","keywords":"Huynh Hieu Minh","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(40, 'Diệp Tuyền', 'diep-tuyen', NULL, NULL, 'diep tuyen diep-tuyen', 0, '{"id":null,"title":"Di\\u1ec7p Tuy\\u1ec1n","description":"","keywords":"Diep Tuyen","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(41, 'Phương Lực Thân', 'phuong-luc-than', NULL, NULL, 'phuong luc than phuong-luc-than', 0, '{"id":null,"title":"Ph\\u01b0\\u01a1ng L\\u1ef1c Th\\u00e2n","description":"","keywords":"Phuong Luc Than","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(42, 'Keishi Ohtomo', 'keishi-ohtomo', NULL, NULL, 'keishi ohtomo keishi-ohtomo', 0, '{"id":null,"title":"Keishi Ohtomo","description":"","keywords":"Keishi Ohtomo","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(43, 'Takeru Satô', 'takeru-sato', NULL, NULL, 'takeru sato takeru-sato', 0, '{"id":null,"title":"Takeru Sat\\u00f4","description":"","keywords":"Takeru Sato","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(44, 'Emi Takei', 'emi-takei', NULL, NULL, 'emi takei emi-takei', 0, '{"id":null,"title":"Emi Takei","description":"","keywords":"Emi Takei","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(45, 'Tatsuya Fujiwara', 'tatsuya-fujiwara', NULL, NULL, 'tatsuya fujiwara tatsuya-fujiwara', 0, '{"id":null,"title":"Tatsuya Fujiwara","description":"","keywords":"Tatsuya Fujiwara","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(46, 'Yôsuke Eguchi', 'yosuke-eguchi', NULL, NULL, 'yosuke eguchi yosuke-eguchi', 0, '{"id":null,"title":"Y\\u00f4suke Eguchi","description":"","keywords":"Yosuke Eguchi","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(47, 'Nhiếp Viễn', 'nhiep-vien', NULL, NULL, 'nhiep vien nhiep-vien', 0, '{"id":null,"title":"Nhi\\u1ebfp Vi\\u1ec5n","description":"","keywords":"Nhiep Vien","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(48, 'Mao Tuấn Kiệt', 'mao-tuan-kiet', NULL, NULL, 'mao tuan kiet mao-tuan-kiet', 0, '{"id":null,"title":"Mao Tu\\u1ea5n Ki\\u1ec7t","description":"","keywords":"Mao Tuan Kiet","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(49, 'Phùng Văn Quyên', 'phung-van-quyen', NULL, NULL, 'phung van quyen phung-van-quyen', 0, '{"id":null,"title":"Ph\\u00f9ng V\\u0103n Quy\\u00ean","description":"","keywords":"Phung Van Quyen","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(50, 'Cao Hổ', 'cao-ho', NULL, NULL, 'cao ho cao-ho', 0, '{"id":null,"title":"Cao H\\u1ed5","description":"","keywords":"Cao Ho","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(51, 'Vương Du Du', 'vuong-du-du', NULL, NULL, 'vuong du du vuong-du-du', 0, '{"id":null,"title":"V\\u01b0\\u01a1ng Du Du","description":"","keywords":"Vuong Du Du","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(52, 'Liễu Nham', 'lieu-nham', NULL, NULL, 'lieu nham lieu-nham', 0, '{"id":null,"title":"Li\\u1ec5u Nham","description":"","keywords":"Lieu Nham","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(53, 'Grant Gustin', 'grant-gustin', NULL, NULL, 'grant gustin grant-gustin', 0, '{"id":null,"title":"Grant Gustin","description":"","keywords":"Grant Gustin","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(54, 'Candice Patton', 'candice-patton', NULL, NULL, 'candice patton candice-patton', 0, '{"id":null,"title":"Candice Patton","description":"","keywords":"Candice Patton","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(55, 'Rick Cosnett', 'rick-cosnett', NULL, NULL, 'rick cosnett rick-cosnett', 0, '{"id":null,"title":"Rick Cosnett","description":"","keywords":"Rick Cosnett","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(56, 'Carlos Valdes', 'carlos-valdes', NULL, NULL, 'carlos valdes carlos-valdes', 0, '{"id":null,"title":"Carlos Valdes","description":"","keywords":"Carlos Valdes","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(57, 'Tom Cavanagh', 'tom-cavanagh', NULL, NULL, 'tom cavanagh tom-cavanagh', 0, '{"id":null,"title":"Tom Cavanagh","description":"","keywords":"Tom Cavanagh","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(58, 'Jesse L. Martin', 'jesse-l-martin', NULL, NULL, 'jesse l. martin jesse-l-martin', 0, '{"id":null,"title":"Jesse L. Martin","description":"","keywords":"Jesse L. Martin","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(59, 'John Wesley Shipp', 'john-wesley-shipp', NULL, NULL, 'john wesley shipp john-wesley-shipp', 0, '{"id":null,"title":"John Wesley Shipp","description":"","keywords":"John Wesley Shipp","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(60, 'Stephen Amell', 'stephen-amell', NULL, NULL, 'stephen amell stephen-amell', 0, '{"id":null,"title":"Stephen Amell","description":"","keywords":"Stephen Amell","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(61, 'Yoshie Bancroft', 'yoshie-bancroft', NULL, NULL, 'yoshie bancroft yoshie-bancroft', 0, '{"id":null,"title":"Yoshie Bancroft","description":"","keywords":"Yoshie Bancroft","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(62, 'Fulvio Cecere', 'fulvio-cecere', NULL, NULL, 'fulvio cecere fulvio-cecere', 0, '{"id":null,"title":"Fulvio Cecere","description":"","keywords":"Fulvio Cecere","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(63, 'Marc Gaudet', 'marc-gaudet', NULL, NULL, 'marc gaudet marc-gaudet', 0, '{"id":null,"title":"Marc Gaudet","description":"","keywords":"Marc Gaudet","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(64, 'Michelle Harrison', 'michelle-harrison', NULL, NULL, 'michelle harrison michelle-harrison', 0, '{"id":null,"title":"Michelle Harrison","description":"","keywords":"Michelle Harrison","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(65, 'Matthew Robert Kelly', 'matthew-robert-kelly', NULL, NULL, 'matthew robert kelly matthew-robert-kelly', 0, '{"id":null,"title":"Matthew Robert Kelly","description":"","keywords":"Matthew Robert Kelly","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(66, 'Jennifer Kitchen', 'jennifer-kitchen', NULL, NULL, 'jennifer kitchen jennifer-kitchen', 0, '{"id":null,"title":"Jennifer Kitchen","description":"","keywords":"Jennifer Kitchen","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(67, 'Nelson Leis', 'nelson-leis', NULL, NULL, 'nelson leis nelson-leis', 0, '{"id":null,"title":"Nelson Leis","description":"","keywords":"Nelson Leis","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(68, 'Rowan Longworth', 'rowan-longworth', NULL, NULL, 'rowan longworth rowan-longworth', 0, '{"id":null,"title":"Rowan Longworth","description":"","keywords":"Rowan Longworth","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(69, 'Chad Rook', 'chad-rook', NULL, NULL, 'chad rook chad-rook', 0, '{"id":null,"title":"Chad Rook","description":"","keywords":"Chad Rook","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(70, 'Troy Rudolph', 'troy-rudolph', NULL, NULL, 'troy rudolph troy-rudolph', 0, '{"id":null,"title":"Troy Rudolph","description":"","keywords":"Troy Rudolph","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(71, 'Patrick Sabongui', 'patrick-sabongui', NULL, NULL, 'patrick sabongui patrick-sabongui', 0, '{"id":null,"title":"Patrick Sabongui","description":"","keywords":"Patrick Sabongui","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(72, 'Al Sapienza', 'al-sapienza', NULL, NULL, 'al sapienza al-sapienza', 0, '{"id":null,"title":"Al Sapienza","description":"","keywords":"Al Sapienza","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(73, 'Eli Shapera', 'eli-shapera', NULL, NULL, 'eli shapera eli-shapera', 0, '{"id":null,"title":"Eli Shapera","description":"","keywords":"Eli Shapera","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(74, 'Logan Williams', 'logan-williams', NULL, NULL, 'logan williams logan-williams', 0, '{"id":null,"title":"Logan Williams","description":"","keywords":"Logan Williams","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(75, 'Brendon Zub', 'brendon-zub', NULL, NULL, 'brendon zub brendon-zub', 0, '{"id":null,"title":"Brendon Zub","description":"","keywords":"Brendon Zub","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(76, 'Berlanti Productions', 'berlanti-productions', NULL, NULL, 'berlanti productions berlanti-productions', 0, '{"id":null,"title":"Berlanti Productions","description":"","keywords":"Berlanti Productions","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(77, 'DC Entertainment', 'dc-entertainment', NULL, NULL, 'dc entertainment dc-entertainment', 0, '{"id":null,"title":"DC Entertainment","description":"","keywords":"DC Entertainment","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(78, 'Warner Bros', 'warner-bros', NULL, NULL, 'warner bros warner-bros', 0, '{"id":null,"title":"Warner Bros","description":"","keywords":"Warner Bros","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(79, 'Y Năng Tịnh', 'y-nang-tinh', NULL, NULL, 'y nang tinh y-nang-tinh', 0, '{"id":null,"title":"Y N\\u0103ng T\\u1ecbnh","description":"","keywords":"Y Nang Tinh","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(80, 'Trần Kiều Ân', 'tran-kieu-an', NULL, NULL, 'tran kieu an tran-kieu-an', 0, '{"id":null,"title":"Tr\\u1ea7n Ki\\u1ec1u \\u00c2n","description":"","keywords":"Tran Kieu An","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(81, 'Y Năng Tịnh', 'y-nang-tinh', NULL, NULL, 'y nang tinh y-nang-tinh', 0, '{"id":null,"title":"Y N\\u0103ng T\\u1ecbnh","description":"","keywords":"Y Nang Tinh","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(82, 'Song Hye Kyo', 'song-hye-kyo', NULL, NULL, 'song hye kyo song-hye-kyo', 0, '{"id":null,"title":"Song Hye Kyo","description":"","keywords":"Song Hye Kyo","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(83, 'P.J. Hogan', 'pj-hogan', NULL, NULL, 'p.j. hogan pj-hogan', 0, '{"id":null,"title":"P.J. Hogan","description":"","keywords":"P.J. Hogan","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(84, 'Isla Fisher', 'isla-fisher', NULL, NULL, 'isla fisher isla-fisher', 0, '{"id":null,"title":"Isla Fisher","description":"","keywords":"Isla Fisher","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(85, 'Hugh Dancy', 'hugh-dancy', NULL, NULL, 'hugh dancy hugh-dancy', 0, '{"id":null,"title":"Hugh Dancy","description":"","keywords":"Hugh Dancy","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(86, 'Krysten Ritter', 'krysten-ritter', NULL, NULL, 'krysten ritter krysten-ritter', 0, '{"id":null,"title":"Krysten Ritter","description":"","keywords":"Krysten Ritter","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(87, 'Joan Cusack', 'joan-cusack', NULL, NULL, 'joan cusack joan-cusack', 0, '{"id":null,"title":"Joan Cusack","description":"","keywords":"Joan Cusack","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(88, 'Tony Goldwyn', 'tony-goldwyn', NULL, NULL, 'tony goldwyn tony-goldwyn', 0, '{"id":null,"title":"Tony Goldwyn","description":"","keywords":"Tony Goldwyn","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(89, 'Hilary Swank', 'hilary-swank', NULL, NULL, 'hilary swank hilary-swank', 0, '{"id":null,"title":"Hilary Swank","description":"","keywords":"Hilary Swank","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(90, 'Sam Rockwell', 'sam-rockwell', NULL, NULL, 'sam rockwell sam-rockwell', 0, '{"id":null,"title":"Sam Rockwell","description":"","keywords":"Sam Rockwell","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(91, 'Melissa Leo', 'melissa-leo', NULL, NULL, 'melissa leo melissa-leo', 0, '{"id":null,"title":"Melissa Leo","description":"","keywords":"Melissa Leo","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(92, 'Thomas D. Mahard', 'thomas-d-mahard', NULL, NULL, 'thomas d. mahard thomas-d-mahard', 0, '{"id":null,"title":"Thomas D. Mahard","description":"","keywords":"Thomas D. Mahard","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(93, 'Jalmari Helander', 'jalmari-helander', NULL, NULL, 'jalmari helander jalmari-helander', 0, '{"id":null,"title":"Jalmari Helander","description":"","keywords":"Jalmari Helander","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(94, 'Samuel L. Jackson', 'samuel-l-jackson', NULL, NULL, 'samuel l. jackson samuel-l-jackson', 0, '{"id":null,"title":"Samuel L. Jackson","description":"","keywords":"Samuel L. Jackson","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(95, 'Onni Tommila', 'onni-tommila', NULL, NULL, 'onni tommila onni-tommila', 0, '{"id":null,"title":"Onni Tommila","description":"","keywords":"Onni Tommila","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(96, 'Ray Stevenson', 'ray-stevenson', NULL, NULL, 'ray stevenson ray-stevenson', 0, '{"id":null,"title":"Ray Stevenson","description":"","keywords":"Ray Stevenson","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(97, 'Victor Garber', 'victor-garber', NULL, NULL, 'victor garber victor-garber', 0, '{"id":null,"title":"Victor Garber","description":"","keywords":"Victor Garber","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(98, 'John Baumgartner', 'john-baumgartner', NULL, NULL, 'john baumgartner john-baumgartner', 0, '{"id":null,"title":"John Baumgartner","description":"","keywords":"John Baumgartner","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(99, 'Jhey Castles', 'jhey-castles', NULL, NULL, 'jhey castles jhey-castles', 0, '{"id":null,"title":"Jhey Castles","description":"","keywords":"Jhey Castles","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(100, 'Jason Woods', 'jason-woods', NULL, NULL, 'jason woods jason-woods', 0, '{"id":null,"title":"Jason Woods","description":"","keywords":"Jason Woods","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(101, 'Grace Van Dien', 'grace-van-dien', NULL, NULL, 'grace van dien grace-van-dien', 0, '{"id":null,"title":"Grace Van Dien","description":"","keywords":"Grace Van Dien","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(102, 'Elaine Partnow', 'elaine-partnow', NULL, NULL, 'elaine partnow elaine-partnow', 0, '{"id":null,"title":"Elaine Partnow","description":"","keywords":"Elaine Partnow","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(103, 'Jonah Loop', 'jonah-loop', NULL, NULL, 'jonah loop jonah-loop', 0, '{"id":null,"title":"Jonah Loop","description":"","keywords":"Jonah Loop","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(104, 'Kellan Lutz', 'kellan-lutz', NULL, NULL, 'kellan lutz kellan-lutz', 0, '{"id":null,"title":"Kellan Lutz","description":"","keywords":"Kellan Lutz","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(105, 'Johnny Messner', 'johnny-messner', NULL, NULL, 'johnny messner johnny-messner', 0, '{"id":null,"title":"Johnny Messner","description":"","keywords":"Johnny Messner","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(106, 'Katia Winter', 'katia-winter', NULL, NULL, 'katia winter katia-winter', 0, '{"id":null,"title":"Katia Winter","description":"","keywords":"Katia Winter","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(107, 'A.R. Murugadoss', 'ar-murugadoss', NULL, NULL, 'a.r. murugadoss ar-murugadoss', 0, '{"id":null,"title":"A.R. Murugadoss","description":"","keywords":"A.R. Murugadoss","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(108, 'Aamir Khan', 'aamir-khan', NULL, NULL, 'aamir khan aamir-khan', 0, '{"id":null,"title":"Aamir Khan","description":"","keywords":"Aamir Khan","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(109, 'Asin', 'asin', NULL, NULL, 'asin asin', 0, '{"id":null,"title":"Asin","description":"","keywords":"Asin","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(110, 'Jiah Khan', 'jiah-khan', NULL, NULL, 'jiah khan jiah-khan', 0, '{"id":null,"title":"Jiah Khan","description":"","keywords":"Jiah Khan","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(111, 'Tinnu Anand', 'tinnu-anand', NULL, NULL, 'tinnu anand tinnu-anand', 0, '{"id":null,"title":"Tinnu Anand","description":"","keywords":"Tinnu Anand","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(112, 'Daniel Yee Heng Chan', 'daniel-yee-heng-chan', NULL, NULL, 'daniel yee heng chan daniel-yee-heng-chan', 0, '{"id":null,"title":"Daniel Yee Heng Chan","description":"","keywords":"Daniel Yee Heng Chan","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(113, 'Ronald Cheng', 'ronald-cheng', NULL, NULL, 'ronald cheng ronald-cheng', 0, '{"id":null,"title":"Ronald Cheng","description":"","keywords":"Ronald Cheng","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(114, 'Tony Ho', 'tony-ho', NULL, NULL, 'tony ho tony-ho', 0, '{"id":null,"title":"Tony Ho","description":"","keywords":"Tony Ho","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(115, 'Michelle Hu', 'michelle-hu', NULL, NULL, 'michelle hu michelle-hu', 0, '{"id":null,"title":"Michelle Hu","description":"","keywords":"Michelle Hu","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(116, 'Luxia Jiang', 'luxia-jiang', NULL, NULL, 'luxia jiang luxia-jiang', 0, '{"id":null,"title":"Luxia Jiang","description":"","keywords":"Luxia Jiang","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(117, 'Takashi Miike', 'takashi-miike', NULL, NULL, 'takashi miike takashi-miike', 0, '{"id":null,"title":"Takashi Miike","description":"","keywords":"Takashi Miike","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(118, 'Shôta Sometani', 'shota-sometani', NULL, NULL, 'shota sometani shota-sometani', 0, '{"id":null,"title":"Sh\\u00f4ta Sometani","description":"","keywords":"Shota Sometani","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(119, 'Ryûnosuke Kamiki', 'ryunosuke-kamiki', NULL, NULL, 'ryunosuke kamiki ryunosuke-kamiki', 0, '{"id":null,"title":"Ry\\u00fbnosuke Kamiki","description":"","keywords":"Ryunosuke Kamiki","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(120, 'Rirî Furankî', 'riri-furanki', NULL, NULL, 'riri furanki riri-furanki', 0, '{"id":null,"title":"Rir\\u00ee Furank\\u00ee","description":"","keywords":"Riri Furanki","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(121, 'Sôta Fukushi', 'sota-fukushi', NULL, NULL, 'sota fukushi sota-fukushi', 0, '{"id":null,"title":"S\\u00f4ta Fukushi","description":"","keywords":"Sota Fukushi","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(122, 'Eiichiro Oda', 'eiichiro-oda', NULL, NULL, 'eiichiro oda eiichiro-oda', 0, '{"id":null,"title":"Eiichiro Oda","description":"","keywords":"Eiichiro Oda","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(123, 'Tony Beck', 'tony-beck', NULL, NULL, 'tony beck tony-beck', 0, '{"id":null,"title":"Tony Beck","description":"","keywords":"Tony Beck","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(124, 'Laurent Vernin', 'laurent-vernin', NULL, NULL, 'laurent vernin laurent-vernin', 0, '{"id":null,"title":"Laurent Vernin","description":"","keywords":"Laurent Vernin","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(125, 'Mayumi Tanaka', 'mayumi-tanaka', NULL, NULL, 'mayumi tanaka mayumi-tanaka', 0, '{"id":null,"title":"Mayumi Tanaka","description":"","keywords":"Mayumi Tanaka","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(126, 'Yoon Sung Shik', 'yoon-sung-shik', NULL, NULL, 'yoon sung shik yoon-sung-shik', 0, '{"id":null,"title":"Yoon Sung Shik","description":"","keywords":"Yoon Sung Shik","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(127, 'Seo In Guk', 'seo-in-guk', NULL, NULL, 'seo in guk seo-in-guk', 0, '{"id":null,"title":"Seo In Guk","description":"","keywords":"Seo In Guk","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(128, 'Jo Yoon Hee', 'jo-yoon-hee', NULL, NULL, 'jo yoon hee jo-yoon-hee', 0, '{"id":null,"title":"Jo Yoon Hee","description":"","keywords":"Jo Yoon Hee","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(129, 'Shin Sung Rok', 'shin-sung-rok', NULL, NULL, 'shin sung rok shin-sung-rok', 0, '{"id":null,"title":"Shin Sung Rok","description":"","keywords":"Shin Sung Rok","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(130, 'Lee Sung Jae', 'lee-sung-jae', NULL, NULL, 'lee sung jae lee-sung-jae', 0, '{"id":null,"title":"Lee Sung Jae","description":"","keywords":"Lee Sung Jae","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(131, 'Kim Kyu Ri', 'kim-kyu-ri', NULL, NULL, 'kim kyu ri kim-kyu-ri', 0, '{"id":null,"title":"Kim Kyu Ri","description":"","keywords":"Kim Kyu Ri","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(132, 'Jodie Foster', 'jodie-foster', NULL, NULL, 'jodie foster jodie-foster', 0, '{"id":null,"title":"Jodie Foster","description":"","keywords":"Jodie Foster","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(133, 'Michael Trim', 'michael-trim', NULL, NULL, 'michael trim michael-trim', 0, '{"id":null,"title":"Michael Trim","description":"","keywords":"Michael Trim","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(134, 'Phil Abraham', 'phil-abraham', NULL, NULL, 'phil abraham phil-abraham', 0, '{"id":null,"title":"Phil Abraham","description":"","keywords":"Phil Abraham","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(135, 'Andrew McCarthy', 'andrew-mccarthy', NULL, NULL, 'andrew mccarthy andrew-mccarthy', 0, '{"id":null,"title":"Andrew McCarthy","description":"","keywords":"Andrew McCarthy","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(136, 'Michael Harney', 'michael-harney', NULL, NULL, 'michael harney michael-harney', 0, '{"id":null,"title":"Michael Harney","description":"","keywords":"Michael Harney","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(137, 'Kate Mulgrew', 'kate-mulgrew', NULL, NULL, 'kate mulgrew kate-mulgrew', 0, '{"id":null,"title":"Kate Mulgrew","description":"","keywords":"Kate Mulgrew","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(138, 'Natasha Lyonne', 'natasha-lyonne', NULL, NULL, 'natasha lyonne natasha-lyonne', 0, '{"id":null,"title":"Natasha Lyonne","description":"","keywords":"Natasha Lyonne","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(139, 'Uzo Aduba', 'uzo-aduba', NULL, NULL, 'uzo aduba uzo-aduba', 0, '{"id":null,"title":"Uzo Aduba","description":"","keywords":"Uzo Aduba","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(140, 'Âu Dương Chấn Hoa', 'au-duong-chan-hoa', NULL, NULL, 'au duong chan hoa au-duong-chan-hoa', 0, '{"id":null,"title":"\\u00c2u D\\u01b0\\u01a1ng Ch\\u1ea5n Hoa","description":"","keywords":"Au Duong Chan Hoa","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(141, 'Tuyên Huyên', 'tuyen-huyen', NULL, NULL, 'tuyen huyen tuyen-huyen', 0, '{"id":null,"title":"Tuy\\u00ean Huy\\u00ean","description":"","keywords":"Tuyen Huyen","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(142, 'Đường Ninh', 'duong-ninh', NULL, NULL, 'duong ninh duong-ninh', 0, '{"id":null,"title":"\\u0110\\u01b0\\u1eddng Ninh","description":"","keywords":"Duong Ninh","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(143, 'Yoo-chun Park', 'yoo-chun-park', NULL, NULL, 'yoo-chun park yoo-chun-park', 0, '{"id":null,"title":"Yoo-chun Park","description":"","keywords":"Yoo-chun Park","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(144, 'Se-Kyung Shin', 'se-kyung-shin', NULL, NULL, 'se-kyung shin se-kyung-shin', 0, '{"id":null,"title":"Se-Kyung Shin","description":"","keywords":"Se-Kyung Shin","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(145, 'Tae-Joon Choi', 'tae-joon-choi', NULL, NULL, 'tae-joon choi tae-joon-choi', 0, '{"id":null,"title":"Tae-Joon Choi","description":"","keywords":"Tae-Joon Choi","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(146, 'Hie-bong Jo', 'hie-bong-jo', NULL, NULL, 'hie-bong jo hie-bong-jo', 0, '{"id":null,"title":"Hie-bong Jo","description":"","keywords":"Hie-bong Jo","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(147, 'Seo Soo Min', 'seo-soo-min', NULL, NULL, 'seo soo min seo-soo-min', 0, '{"id":null,"title":"Seo Soo Min","description":"","keywords":"Seo Soo Min","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(148, 'Park Ji Eun', 'park-ji-eun', NULL, NULL, 'park ji eun park-ji-eun', 0, '{"id":null,"title":"Park Ji Eun","description":"","keywords":"Park Ji Eun","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(149, 'Park Ji Eun', 'park-ji-eun', NULL, NULL, 'park ji eun park-ji-eun', 0, '{"id":null,"title":"Park Ji Eun","description":"","keywords":"Park Ji Eun","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(150, 'IU', 'iu', NULL, NULL, 'iu iu', 0, '{"id":null,"title":"IU","description":"","keywords":"IU","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(151, 'Gong Hyo Jin', 'gong-hyo-jin', NULL, NULL, 'gong hyo jin gong-hyo-jin', 0, '{"id":null,"title":"Gong Hyo Jin","description":"","keywords":"Gong Hyo Jin","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(152, 'James McTeigue', 'james-mcteigue', NULL, NULL, 'james mcteigue james-mcteigue', 0, '{"id":null,"title":"James McTeigue","description":"","keywords":"James McTeigue","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(153, 'Paddy Wallace', 'paddy-wallace', NULL, NULL, 'paddy wallace paddy-wallace', 0, '{"id":null,"title":"Paddy Wallace","description":"","keywords":"Paddy Wallace","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(154, 'Parker Sawyers', 'parker-sawyers', NULL, NULL, 'parker sawyers parker-sawyers', 0, '{"id":null,"title":"Parker Sawyers","description":"","keywords":"Parker Sawyers","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(155, 'Bashar Rahal', 'bashar-rahal', NULL, NULL, 'bashar rahal bashar-rahal', 0, '{"id":null,"title":"Bashar Rahal","description":"","keywords":"Bashar Rahal","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(156, 'Royce Pierreson', 'royce-pierreson', NULL, NULL, 'royce pierreson royce-pierreson', 0, '{"id":null,"title":"Royce Pierreson","description":"","keywords":"Royce Pierreson","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(157, 'Ben Starr', 'ben-starr', NULL, NULL, 'ben starr ben-starr', 0, '{"id":null,"title":"Ben Starr","description":"","keywords":"Ben Starr","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(158, 'Sean Teale', 'sean-teale', NULL, NULL, 'sean teale sean-teale', 0, '{"id":null,"title":"Sean Teale","description":"","keywords":"Sean Teale","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(159, 'Rege-Jean Page', 'rege-jean-page', NULL, NULL, 'rege-jean page rege-jean-page', 0, '{"id":null,"title":"Rege-Jean Page","description":"","keywords":"Rege-Jean Page","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(160, 'Veselin Karadjov', 'veselin-karadjov', NULL, NULL, 'veselin karadjov veselin-karadjov', 0, '{"id":null,"title":"Veselin Karadjov","description":"","keywords":"Veselin Karadjov","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(161, 'Suzie Shearer', 'suzie-shearer', NULL, NULL, 'suzie shearer suzie-shearer', 0, '{"id":null,"title":"Suzie Shearer","description":"","keywords":"Suzie Shearer","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(162, 'Joe Johnston', 'joe-johnston', NULL, NULL, 'joe johnston joe-johnston', 0, '{"id":null,"title":"Joe Johnston","description":"","keywords":"Joe Johnston","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(163, 'Sam Neill', 'sam-neill', NULL, NULL, 'sam neill sam-neill', 0, '{"id":null,"title":"Sam Neill","description":"","keywords":"Sam Neill","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(164, 'William H. Macy', 'william-h-macy', NULL, NULL, 'william h. macy william-h-macy', 0, '{"id":null,"title":"William H. Macy","description":"","keywords":"William H. Macy","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(165, 'Téa Leoni', 'tea-leoni', NULL, NULL, 'tea leoni tea-leoni', 0, '{"id":null,"title":"T\\u00e9a Leoni","description":"","keywords":"Tea Leoni","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(166, 'Alessandro Nivola', 'alessandro-nivola', NULL, NULL, 'alessandro nivola alessandro-nivola', 0, '{"id":null,"title":"Alessandro Nivola","description":"","keywords":"Alessandro Nivola","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(167, 'Larry J. Franco', 'larry-j-franco', NULL, NULL, 'larry j. franco larry-j-franco', 0, '{"id":null,"title":"Larry J. Franco","description":"","keywords":"Larry J. Franco","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(168, 'Kathleen Kennedy', 'kathleen-kennedy', NULL, NULL, 'kathleen kennedy kathleen-kennedy', 0, '{"id":null,"title":"Kathleen Kennedy","description":"","keywords":"Kathleen Kennedy","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(169, 'Steven Spielberg', 'steven-spielberg', NULL, NULL, 'steven spielberg steven-spielberg', 0, '{"id":null,"title":"Steven Spielberg","description":"","keywords":"Steven Spielberg","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(170, 'Cheryl A. Tkach', 'cheryl-a-tkach', NULL, NULL, 'cheryl a. tkach cheryl-a-tkach', 0, '{"id":null,"title":"Cheryl A. Tkach","description":"","keywords":"Cheryl A. Tkach","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(171, 'David Womark', 'david-womark', NULL, NULL, 'david womark david-womark', 0, '{"id":null,"title":"David Womark","description":"","keywords":"David Womark","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(172, 'Cao Hy Hy', 'cao-hy-hy', NULL, NULL, 'cao hy hy cao-hy-hy', 0, '{"id":null,"title":"Cao Hy Hy","description":"","keywords":"Cao Hy Hy","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(173, 'Trần Kiến Bân', 'tran-kien-ban', NULL, NULL, 'tran kien ban tran-kien-ban', 0, '{"id":null,"title":"Tr\\u1ea7n Ki\\u1ebfn B\\u00e2n","description":"","keywords":"Tran Kien Ban","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(174, 'Vu Hòa Vĩ', 'vu-hoa-vi', NULL, NULL, 'vu hoa vi vu-hoa-vi', 0, '{"id":null,"title":"Vu H\\u00f2a V\\u0129","description":"","keywords":"Vu Hoa Vi","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(175, 'Trần Hảo', 'tran-hao', NULL, NULL, 'tran hao tran-hao', 0, '{"id":null,"title":"Tr\\u1ea7n H\\u1ea3o","description":"","keywords":"Tran Hao","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(176, 'Triệu Kha', 'trieu-kha', NULL, NULL, 'trieu kha trieu-kha', 0, '{"id":null,"title":"Tri\\u1ec7u Kha","description":"","keywords":"Trieu Kha","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(177, 'Ân Đào', 'an-dao', NULL, NULL, 'an dao an-dao', 0, '{"id":null,"title":"\\u00c2n \\u0110\\u00e0o","description":"","keywords":"An Dao","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(178, 'Lục Nghị', 'luc-nghi', NULL, NULL, 'luc nghi luc-nghi', 0, '{"id":null,"title":"L\\u1ee5c Ngh\\u1ecb","description":"","keywords":"Luc Nghi","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(179, 'Tân Bách Thanh', 'tan-bach-thanh', NULL, NULL, 'tan bach thanh tan-bach-thanh', 0, '{"id":null,"title":"T\\u00e2n B\\u00e1ch Thanh","description":"","keywords":"Tan Bach Thanh","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(180, 'Lâm Tâm Như', 'lam-tam-nhu', NULL, NULL, 'lam tam nhu lam-tam-nhu', 0, '{"id":null,"title":"L\\u00e2m T\\u00e2m Nh\\u01b0","description":"","keywords":"Lam Tam Nhu","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor');
INSERT INTO `crew` (`id`, `name`, `slug`, `image`, `description`, `keywords`, `count`, `metadata`, `created_user`, `updated_user`, `created_at`, `updated_at`, `taxonomy`) VALUES
(181, 'Hầu Dũng', 'hau-dung', NULL, NULL, 'hau dung hau-dung', 0, '{"id":null,"title":"H\\u1ea7u D\\u0169ng","description":"","keywords":"Hau Dung","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(182, 'Hà Nhuận Đông', 'ha-nhuan-dong', NULL, NULL, 'ha nhuan dong ha-nhuan-dong', 0, '{"id":null,"title":"H\\u00e0 Nhu\\u1eadn \\u0110\\u00f4ng","description":"","keywords":"Ha Nhuan Dong","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(183, 'Nghê Đại Hồng', 'nghe-dai-hong', NULL, NULL, 'nghe dai hong nghe-dai-hong', 0, '{"id":null,"title":"Ngh\\u00ea \\u0110\\u1ea1i H\\u1ed3ng","description":"","keywords":"Nghe Dai Hong","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(184, 'Vu Quang Vinh', 'vu-quang-vinh', NULL, NULL, 'vu quang vinh vu-quang-vinh', 0, '{"id":null,"title":"Vu Quang Vinh","description":"","keywords":"Vu Quang Vinh","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(185, 'Chu Tô Tiến', 'chu-to-tien', NULL, NULL, 'chu to tien chu-to-tien', 0, '{"id":null,"title":"Chu T\\u00f4 Ti\\u1ebfn","description":"","keywords":"Chu To Tien","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(186, 'Dương Hiểu Minh', 'duong-hieu-minh', NULL, NULL, 'duong hieu minh duong-hieu-minh', 0, '{"id":null,"title":"D\\u01b0\\u01a1ng Hi\\u1ec3u Minh","description":"","keywords":"Duong Hieu Minh","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(187, 'Louie Psihoyos', 'louie-psihoyos', NULL, NULL, 'louie psihoyos louie-psihoyos', 0, '{"id":null,"title":"Louie Psihoyos","description":"","keywords":"Louie Psihoyos","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(188, 'Paul Hilton', 'paul-hilton', NULL, NULL, 'paul hilton paul-hilton', 0, '{"id":null,"title":"Paul Hilton","description":"","keywords":"Paul Hilton","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(189, 'Elon Musk', 'elon-musk', NULL, NULL, 'elon musk elon-musk', 0, '{"id":null,"title":"Elon Musk","description":"","keywords":"Elon Musk","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(190, 'Joel Sartore', 'joel-sartore', NULL, NULL, 'joel sartore joel-sartore', 0, '{"id":null,"title":"Joel Sartore","description":"","keywords":"Joel Sartore","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(191, 'Louie Psihoyos', 'louie-psihoyos', NULL, NULL, 'louie psihoyos louie-psihoyos', 0, '{"id":null,"title":"Louie Psihoyos","description":"","keywords":"Louie Psihoyos","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(192, 'Leilani Münter', 'leilani-munter', NULL, NULL, 'leilani munter leilani-munter', 0, '{"id":null,"title":"Leilani M\\u00fcnter","description":"","keywords":"Leilani Munter","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(193, 'Charles Hambleton', 'charles-hambleton', NULL, NULL, 'charles hambleton charles-hambleton', 0, '{"id":null,"title":"Charles Hambleton","description":"","keywords":"Charles Hambleton","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(194, 'Heather Dawn Rally', 'heather-dawn-rally', NULL, NULL, 'heather dawn rally heather-dawn-rally', 0, '{"id":null,"title":"Heather Dawn Rally","description":"","keywords":"Heather Dawn Rally","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(195, 'Shawn Heinrichs', 'shawn-heinrichs', NULL, NULL, 'shawn heinrichs shawn-heinrichs', 0, '{"id":null,"title":"Shawn Heinrichs","description":"","keywords":"Shawn Heinrichs","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(196, 'Travis Threlkel', 'travis-threlkel', NULL, NULL, 'travis threlkel travis-threlkel', 0, '{"id":null,"title":"Travis Threlkel","description":"","keywords":"Travis Threlkel","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(197, 'J.J. Abrams', 'jj-abrams', NULL, NULL, 'j.j. abrams jj-abrams', 0, '{"id":null,"title":"J.J. Abrams","description":"","keywords":"J.J. Abrams","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(198, 'Harrison Ford', 'harrison-ford', NULL, NULL, 'harrison ford harrison-ford', 0, '{"id":null,"title":"Harrison Ford","description":"","keywords":"Harrison Ford","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(199, 'John Boyega', 'john-boyega', NULL, NULL, 'john boyega john-boyega', 0, '{"id":null,"title":"John Boyega","description":"","keywords":"John Boyega","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(200, 'Oscar Isaac', 'oscar-isaac', NULL, NULL, 'oscar isaac oscar-isaac', 0, '{"id":null,"title":"Oscar Isaac","description":"","keywords":"Oscar Isaac","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(201, 'Adam Driver', 'adam-driver', NULL, NULL, 'adam driver adam-driver', 0, '{"id":null,"title":"Adam Driver","description":"","keywords":"Adam Driver","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(202, 'Mark Hamill', 'mark-hamill', NULL, NULL, 'mark hamill mark-hamill', 0, '{"id":null,"title":"Mark Hamill","description":"","keywords":"Mark Hamill","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(203, 'Carrie Fisher', 'carrie-fisher', NULL, NULL, 'carrie fisher carrie-fisher', 0, '{"id":null,"title":"Carrie Fisher","description":"","keywords":"Carrie Fisher","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(204, 'Daisy Ridley', 'daisy-ridley', NULL, NULL, 'daisy ridley daisy-ridley', 0, '{"id":null,"title":"Daisy Ridley","description":"","keywords":"Daisy Ridley","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(205, 'Alejandro González Iñárritu', 'alejandro-gonzalez-inarritu', NULL, NULL, 'alejandro gonzalez inarritu alejandro-gonzalez-inarritu', 0, '{"id":null,"title":"Alejandro Gonz\\u00e1lez I\\u00f1\\u00e1rritu","description":"","keywords":"Alejandro Gonzalez Inarritu","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(206, 'Will Poulter', 'will-poulter', NULL, NULL, 'will poulter will-poulter', 0, '{"id":null,"title":"Will Poulter","description":"","keywords":"Will Poulter","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(207, 'Leonardo DiCaprio', 'leonardo-dicaprio', NULL, NULL, 'leonardo dicaprio leonardo-dicaprio', 0, '{"id":null,"title":"Leonardo DiCaprio","description":"","keywords":"Leonardo DiCaprio","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(208, 'Domhnall Gleeson', 'domhnall-gleeson', NULL, NULL, 'domhnall gleeson domhnall-gleeson', 0, '{"id":null,"title":"Domhnall Gleeson","description":"","keywords":"Domhnall Gleeson","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(209, 'Matthew Vaughn', 'matthew-vaughn', NULL, NULL, 'matthew vaughn matthew-vaughn', 0, '{"id":null,"title":"Matthew Vaughn","description":"","keywords":"Matthew Vaughn","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(210, 'Colin Firth', 'colin-firth', NULL, NULL, 'colin firth colin-firth', 0, '{"id":null,"title":"Colin Firth","description":"","keywords":"Colin Firth","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(211, 'Taron Egerton', 'taron-egerton', NULL, NULL, 'taron egerton taron-egerton', 0, '{"id":null,"title":"Taron Egerton","description":"","keywords":"Taron Egerton","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(212, 'Jack Davenport', 'jack-davenport', NULL, NULL, 'jack davenport jack-davenport', 0, '{"id":null,"title":"Jack Davenport","description":"","keywords":"Jack Davenport","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(213, 'Bryan Singer', 'bryan-singer', NULL, NULL, 'bryan singer bryan-singer', 0, '{"id":null,"title":"Bryan Singer","description":"","keywords":"Bryan Singer","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(214, 'James Mcavoy', 'james-mcavoy', NULL, NULL, 'james mcavoy james-mcavoy', 0, '{"id":null,"title":"James Mcavoy","description":"","keywords":"James Mcavoy","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(215, 'Michael Fassbender', 'michael-fassbender', NULL, NULL, 'michael fassbender michael-fassbender', 0, '{"id":null,"title":"Michael Fassbender","description":"","keywords":"Michael Fassbender","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(216, 'Jennifer Lawrence', 'jennifer-lawrence', NULL, NULL, 'jennifer lawrence jennifer-lawrence', 0, '{"id":null,"title":"Jennifer Lawrence","description":"","keywords":"Jennifer Lawrence","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(217, 'Bryan Singer', 'bryan-singer', NULL, NULL, 'bryan singer bryan-singer', 0, '{"id":null,"title":"Bryan Singer","description":"","keywords":"Bryan Singer","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(218, 'Simon Kinberg', 'simon-kinberg', NULL, NULL, 'simon kinberg simon-kinberg', 0, '{"id":null,"title":"Simon Kinberg","description":"","keywords":"Simon Kinberg","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(219, 'Lauren Shuler Donner', 'lauren-shuler-donner', NULL, NULL, 'lauren shuler donner lauren-shuler-donner', 0, '{"id":null,"title":"Lauren Shuler Donner","description":"","keywords":"Lauren Shuler Donner","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(220, 'Hutch Parker', 'hutch-parker', NULL, NULL, 'hutch parker hutch-parker', 0, '{"id":null,"title":"Hutch Parker","description":"","keywords":"Hutch Parker","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'producer'),
(221, 'Kishimoto Masashi', 'kishimoto-masashi', NULL, NULL, 'kishimoto masashi kishimoto-masashi', 0, '{"id":null,"title":"Kishimoto Masashi","description":"","keywords":"Kishimoto Masashi","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(237, 'Jon Favreau', 'jon-favreau', NULL, NULL, 'jon favreau jon-favreau', 0, '{"id":null,"title":"Jon Favreau","description":"","keywords":"Jon Favreau","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'director'),
(238, 'Idris Elba', 'idris-elba', NULL, NULL, 'idris elba idris-elba', 0, '{"id":null,"title":"Idris Elba","description":"","keywords":"Idris Elba","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(239, 'Bill Murray', 'bill-murray', NULL, NULL, 'bill murray bill-murray', 0, '{"id":null,"title":"Bill Murray","description":"","keywords":"Bill Murray","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(240, 'Ben Kingsley', 'ben-kingsley', NULL, NULL, 'ben kingsley ben-kingsley', 0, '{"id":null,"title":"Ben Kingsley","description":"","keywords":"Ben Kingsley","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(241, 'Scarlett Johansson', 'scarlett-johansson', NULL, NULL, 'scarlett johansson scarlett-johansson', 0, '{"id":null,"title":"Scarlett Johansson","description":"","keywords":"Scarlett Johansson","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(242, 'Jon Favreau', 'jon-favreau', NULL, NULL, 'jon favreau jon-favreau', 0, '{"id":null,"title":"Jon Favreau","description":"","keywords":"Jon Favreau","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor'),
(243, 'Neel Sethi', 'neel-sethi', NULL, NULL, 'neel sethi neel-sethi', 0, '{"id":null,"title":"Neel Sethi","description":"","keywords":"Neel Sethi","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00', 'actor');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(10) NOT NULL,
  `sys_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` varchar(500) DEFAULT NULL,
  `original_name` varchar(255) DEFAULT NULL,
  `original_slug` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `duration` varchar(50) DEFAULT NULL,
  `release_year` smallint(4) DEFAULT NULL,
  `type` enum('movies','series') NOT NULL DEFAULT 'movies',
  `cinema` enum('yes','no') NOT NULL DEFAULT 'no',
  `content` text,
  `note` varchar(255) DEFAULT NULL,
  `likes` int(10) NOT NULL DEFAULT '0',
  `views` int(10) NOT NULL DEFAULT '0',
  `author` int(10) NOT NULL,
  `editer` int(10) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_episode_date` datetime DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `imdb` varchar(10) NOT NULL DEFAULT '',
  `top` varchar(30) DEFAULT 'new',
  `order` int(10) DEFAULT NULL,
  `expired` date DEFAULT NULL,
  `push_top` enum('yes','no') NOT NULL DEFAULT 'yes',
  `metadata` text,
  `trailer` text,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `sys_id`, `name`, `slug`, `excerpt`, `original_name`, `original_slug`, `image`, `poster`, `duration`, `release_year`, `type`, `cinema`, `content`, `note`, `likes`, `views`, `author`, `editer`, `created_at`, `updated_at`, `updated_episode_date`, `status`, `imdb`, `top`, `order`, `expired`, `push_top`, `metadata`, `trailer`, `created_user`, `updated_user`) VALUES
(1, 32, 'Người hùng tia chớp (Phần 1)', 'nguoi-hung-tia-chop-phan-1', 'Barry Allen was just 11 years old when his mother was killed in a bizarre and terrifying incident and his father was falsely convicted of the murder. With his life changed forever by the tragedy, Barry was taken in and raised by Detective Joe West, the father of Barry’s best friend, Iris. Now, Barry has become a brilliant, driven and endearingly geeky CSI investigator, whose determination to uncover the truth about his mother’s strange death leads him to follow up on every unexplained urban lege', 'The Flash 1', 'the-flash-1', '/upload/image/film/the-flash.jpg', '/upload/image/film/the-flash-1.jpg', '23 tập', 2015, 'movies', 'yes', '&lt;p&gt;Barry Allen was just 11 years old when his mother was killed in a bizarre and terrifying incident and his father was falsely convicted of the murder. With his life changed forever by the tragedy, Barry was taken in and raised by Detective Joe West, the father of Barry&amp;rsquo;s best friend, Iris. Now, Barry has become a brilliant, driven and endearingly geeky CSI investigator, whose determination to uncover the truth about his mother&amp;rsquo;s strange death leads him to follow up on every unexplained urban legend and scientific advancement that comes along. Barry&amp;rsquo;s latest obsession is a cutting edge particle accelerator, created by visionary physicist Harrison Wells and his S.T.A.R. Labs team, who claim that this invention will bring about unimaginable advancements in power and medicine. However, something goes horribly wrong during the public unveiling, and when the devastating explosion causes a freak storm, many lives are lost and Barry is struck by lightning. After nine months in a coma, Barry awakens to find his life has changed once again &amp;ndash; the accident has given him the power of super speed, granting him the ability to move through Central City like an unseen guardian angel. Though initially excited by his newfound powers, Barry is shocked to discover he is not the only &amp;ldquo;meta-human&amp;rdquo; who was created in the wake of the accelerator explosion &amp;ndash; and not everyone is using their new powers for good. In the months since the accident, the city has seen a sharp increase in missing people, unexplained deaths and other strange phenomena. Barry now has a renewed purpose &amp;ndash; using his gift of speed to protect the innocent, while never giving up on his quest to solve his mother&amp;rsquo;s murder and clear his father&amp;rsquo;s name. For now, only a few close friends and associates know that Barry is literally the fastest man alive, but it won&amp;rsquo;t be long before the world learns what Barry Allen has become&amp;hellip;The Flash.&lt;/p&gt;', NULL, 0, 0, 1, NULL, '2015-05-20 11:29:55', '2016-05-22 08:41:00', NULL, 'active', '8.2', 'finish', NULL, NULL, 'yes', '{"id":"32","title":"Ng\\u01b0\\u1eddi h\\u00f9ng tia ch\\u1edbp (Ph\\u1ea7n 1)","description":"Barry Allen was just 11 years old when his mother was killed in a bizarre and terrifying incident and his father was falsely convicted of the murder. With his life changed forever by the tragedy, Barry was taken in and raised by Detective Joe West, the father of Barry\\u2019s best friend, Iris. Now, Barry has become a brilliant, driven and endearingly geeky CSI investigator, whose determination to uncover the truth about his mother\\u2019s strange death leads him to follow up on every unexplained urban lege","keywords":"Nguoi hung tia chop (Phan 1)","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1),
(2, 42, 'Đế Chế Ultron', 'de-che-ultron', 'Mệt mỏi vì công việc của một nhà sáng chế, doanh nhân và cả trách nhiệm của một siêu anh hùng, Tony đã quyết định tạo ra Ultron để thay mình bảo vệ thế giới. Nhưng ý tưởng đã thất bại, Ultron trở nên mất kiểm soát và biến thành một cỗ', 'Avengers: Age Of Ultron', 'avengers-age-of-ultron', '/upload/image/film/624189-avengers-2015-megabox-pst-sd.jpg', '/upload/image/film/avengers-age-of-ultron.png', '132 minutes', 2015, 'movies', 'yes', '&lt;p&gt;Mệt mỏi v&amp;igrave; c&amp;ocirc;ng việc của một nh&amp;agrave; s&amp;aacute;ng chế, doanh nh&amp;acirc;n v&amp;agrave; cả tr&amp;aacute;ch nhiệm của một si&amp;ecirc;u anh h&amp;ugrave;ng, Tony đ&amp;atilde; quyết định tạo ra Ultron để thay m&amp;igrave;nh bảo vệ thế giới. Nhưng &amp;yacute; tưởng đ&amp;atilde; thất bại, Ultron trở n&amp;ecirc;n mất kiểm so&amp;aacute;t v&amp;agrave; biến th&amp;agrave;nh một cỗ m&amp;aacute;y s&amp;aacute;t nh&amp;acirc;n m&amp;aacute;u lạnh. Khi h&amp;ograve;a b&amp;igrave;nh lại bị đe dọa, đ&amp;oacute; cũng l&amp;agrave; l&amp;uacute;c biệt đội Avengers phải trở lại v&amp;agrave; ra tay.&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-24 00:00:22', '2015-06-05 15:17:33', NULL, 'active', 'na', 'hot', NULL, NULL, 'yes', '{"id":"42","title":"\\u0110\\u1ebf Ch\\u1ebf Ultron","description":"M\\u1ec7t m\\u1ecfi v\\u00ec c\\u00f4ng vi\\u1ec7c c\\u1ee7a m\\u1ed9t nh\\u00e0 s\\u00e1ng ch\\u1ebf, doanh nh\\u00e2n v\\u00e0 c\\u1ea3 tr\\u00e1ch nhi\\u1ec7m c\\u1ee7a m\\u1ed9t si\\u00eau anh h\\u00f9ng, Tony \\u0111\\u00e3 quy\\u1ebft \\u0111\\u1ecbnh t\\u1ea1o ra Ultron \\u0111\\u1ec3 thay m\\u00ecnh b\\u1ea3o v\\u1ec7 th\\u1ebf gi\\u1edbi. Nh\\u01b0ng \\u00fd t\\u01b0\\u1edfng \\u0111\\u00e3 th\\u1ea5t b\\u1ea1i, Ultron tr\\u1edf n\\u00ean m\\u1ea5t ki\\u1ec3m so\\u00e1t v\\u00e0 bi\\u1ebfn th\\u00e0nh m\\u1ed9t c\\u1ed7","keywords":"De Che Ultron","customize":""}', NULL, 1, 1),
(3, 46, 'Max Điên: Con Đường Tử Thần', 'max-dien-con-duong-tu-than', 'Bối cảnh phim ở một nơi rất xa của trái đất, nơi ấy sa mạc bao phủ hầu hết bề mặt và hầu hết mọi người đều điên cuồng đấu tranh cho những nhu cầu của cuộc sống. Trong thế giới này tồn tại hai phiến quân đang chạy trốn những người được coi là có thể để khôi phục lại trật tự thế giới. Trong đó', 'Mad Max: Fury Road', 'mad-max-fury-road', '/upload/image/film/642226-mad-max-megabox-pst.jpg', '/upload/image/film/mad-max.jpg', '112 phút', 2015, 'movies', 'yes', '&lt;p&gt;Bối cảnh phim ở một nơi rất xa của tr&amp;aacute;i đất, nơi ấy sa mạc bao phủ hầu hết bề mặt v&amp;agrave; hầu hết mọi người đều đi&amp;ecirc;n cuồng đấu tranh cho những nhu cầu của cuộc sống. Trong thế giới n&amp;agrave;y tồn tại hai phiến qu&amp;acirc;n đang chạy trốn những người được coi l&amp;agrave; c&amp;oacute; thể để kh&amp;ocirc;i phục lại trật tự thế giới. Trong đ&amp;oacute; c&amp;oacute; Max, một người đ&amp;agrave;n &amp;ocirc;ng của h&amp;agrave;nh động v&amp;agrave; &amp;iacute;t n&amp;oacute;i, đang t&amp;igrave;m kiếm sự an t&amp;acirc;m sau khi mất vợ v&amp;agrave; con của m&amp;igrave;nh do hậu quả của sự hỗn loạn. V&amp;agrave; Furiosa, một phụ nữ lu&amp;ocirc;n h&amp;agrave;nh động v&amp;agrave; tin rằng con đường của m&amp;igrave;nh để tồn tại c&amp;oacute; thể đạt được nếu c&amp;ocirc; ấy c&amp;oacute; thể vượt sa mạc sở về qu&amp;ecirc; hương y&amp;ecirc;u dấu.&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-24 00:03:58', '2015-06-05 15:17:27', NULL, 'active', 'na', 'new', NULL, NULL, 'yes', '{"id":"46","title":"Max \\u0110i\\u00ean: Con \\u0110\\u01b0\\u1eddng T\\u1eed Th\\u1ea7n","description":"B\\u1ed1i c\\u1ea3nh phim \\u1edf m\\u1ed9t n\\u01a1i r\\u1ea5t xa c\\u1ee7a tr\\u00e1i \\u0111\\u1ea5t, n\\u01a1i \\u1ea5y sa m\\u1ea1c bao ph\\u1ee7 h\\u1ea7u h\\u1ebft b\\u1ec1 m\\u1eb7t v\\u00e0 h\\u1ea7u h\\u1ebft m\\u1ecdi ng\\u01b0\\u1eddi \\u0111\\u1ec1u \\u0111i\\u00ean cu\\u1ed3ng \\u0111\\u1ea5u tranh cho nh\\u1eefng nhu c\\u1ea7u c\\u1ee7a cu\\u1ed9c s\\u1ed1ng. Trong th\\u1ebf gi\\u1edbi n\\u00e0y t\\u1ed3n t\\u1ea1i hai phi\\u1ebfn qu\\u00e2n \\u0111ang ch\\u1ea1y tr\\u1ed1n nh\\u1eefng ng\\u01b0\\u1eddi \\u0111\\u01b0\\u1ee3c coi l\\u00e0 c\\u00f3 th\\u1ec3 \\u0111\\u1ec3 kh\\u00f4i ph\\u1ee5c l\\u1ea1i tr\\u1eadt t\\u1ef1 th\\u1ebf gi\\u1edbi. Trong \\u0111\\u00f3","keywords":"Max Dien: Con Duong Tu Than","customize":""}', NULL, 1, 1),
(6, 51, 'Đại Hỏa Kyoto Kenshin', 'dai-hoa-kyoto-kenshin', 'Kenshin sau khi bắt đầu cuộc sống mới cùng Kaoru và bạn bè thì nhận được yêu cầu từ chính quyền Minh Trị. Makoto Shishio là một cựu sát thủ như Kenshin, bị phản bội và bị thiêu sống, nhưng đã thoát chết và hiện đang ở Kyoto, cùng đồng bọn âm mưu lật đổ', 'Rurouni Kenshin: Kyoto Taika- Hen', 'rurouni-kenshin-kyoto-taika-hen', '/upload/image/film/272cc4cb62ce081d2ed091cda53fcf17.jpg', '/upload/image/film/rurouni-kenshin-kyoto-taika-hen.jpg', '138 phút', 2015, 'movies', 'no', '&lt;p&gt;Kenshin sau khi bắt đầu cuộc sống mới c&amp;ugrave;ng Kaoru v&amp;agrave; bạn b&amp;egrave; th&amp;igrave; nhận được y&amp;ecirc;u cầu từ ch&amp;iacute;nh quyền Minh Trị. Makoto Shishio l&amp;agrave; một cựu s&amp;aacute;t thủ như Kenshin, bị phản bội v&amp;agrave; bị thi&amp;ecirc;u sống, nhưng đ&amp;atilde; tho&amp;aacute;t chết v&amp;agrave; hiện đang ở Kyoto, c&amp;ugrave;ng đồng bọn &amp;acirc;m mưu lật đổ ch&amp;iacute;nh quyền. Tr&amp;aacute;i với &amp;yacute; nguyện của Kaoru, Kenshin bất đắc dĩ nhận nhiệm vụ, đến Kyoto để ngăn cản cuộc nội chiến sắp xảy đến với đất nước của m&amp;igrave;nh.&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-24 00:23:45', '2015-06-05 15:17:03', NULL, 'active', 'na', 'new', NULL, NULL, 'yes', '{"id":"51","title":"\\u0110\\u1ea1i H\\u1ecfa Kyoto Kenshin","description":"Kenshin sau khi b\\u1eaft \\u0111\\u1ea7u cu\\u1ed9c s\\u1ed1ng m\\u1edbi c\\u00f9ng Kaoru v\\u00e0 b\\u1ea1n b\\u00e8 th\\u00ec nh\\u1eadn \\u0111\\u01b0\\u1ee3c y\\u00eau c\\u1ea7u t\\u1eeb ch\\u00ednh quy\\u1ec1n Minh Tr\\u1ecb. Makoto Shishio l\\u00e0 m\\u1ed9t c\\u1ef1u s\\u00e1t th\\u1ee7 nh\\u01b0 Kenshin, b\\u1ecb ph\\u1ea3n b\\u1ed9i v\\u00e0 b\\u1ecb thi\\u00eau s\\u1ed1ng, nh\\u01b0ng \\u0111\\u00e3 tho\\u00e1t ch\\u1ebft v\\u00e0 hi\\u1ec7n \\u0111ang \\u1edf Kyoto, c\\u00f9ng \\u0111\\u1ed3ng b\\u1ecdn \\u00e2m m\\u01b0u l\\u1eadt \\u0111\\u1ed5","keywords":"Dai Hoa Kyoto Kenshin","customize":""}', NULL, 1, 1),
(4, 49, 'Báo Thù', 'bao-thu', 'Quá Nhanh Quá Nguy Hiểm 7: Sau cái chết của Paul Walker, có rất nhiều câu hỏi đặt ra cho nhà sản xuất phim Fast and Furious. Các nhà làm phim nhận thấy họ cần một ai đó giống ngôi sao quá cố để hoàn thành bộ phim dang dở. Trong', '( Fast And Furious 7 )', '-fast-and-furious-7-', '/upload/image/film/75ca9606de7f59dfb614bc6e9cff0536.jpg', '/upload/image/film/fast-furious-7-2015-poster.jpg', '137 phút', 2015, 'movies', 'yes', '&lt;p&gt;&lt;strong&gt;Qu&amp;aacute; Nhanh Qu&amp;aacute; Nguy Hiểm 7&lt;/strong&gt;: Sau c&amp;aacute;i chết của Paul Walker, c&amp;oacute; rất nhiều c&amp;acirc;u hỏi đặt ra cho nh&amp;agrave; sản xuất phim &lt;strong&gt;Fast and Furious&lt;/strong&gt;. C&amp;aacute;c nh&amp;agrave; l&amp;agrave;m phim nhận thấy họ cần một ai đ&amp;oacute; giống ng&amp;ocirc;i sao qu&amp;aacute; cố để ho&amp;agrave;n th&amp;agrave;nh bộ phim dang dở. Trong nh&amp;agrave; Walker, em &amp;uacute;t Cody Walker c&amp;oacute; ngoại h&amp;igrave;nh kh&amp;aacute; giống anh trai. Cody được mong đợi sẽ lấp đầy chỗ trống m&amp;agrave; Paul để lại cho Fast And&amp;nbsp;Furious 7. Cody cũng từng tham gia đ&amp;oacute;ng thế trong một số bộ phim. Trong tập 7 cua &lt;strong&gt;Fast and Furious&lt;/strong&gt; , Ian Shaw cung đồng đội của m&amp;igrave;nh sẽ chiến đấu chống lại Dominic Toretto để trả th&amp;ugrave; cho cai chết của anh trai m&amp;igrave;nh.&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-24 00:08:16', '2015-06-05 15:17:23', NULL, 'active', 'na', 'hot', NULL, NULL, 'yes', '{"id":"49","title":"B\\u00e1o Th\\u00f9","description":"Qu\\u00e1 Nhanh Qu\\u00e1 Nguy Hi\\u1ec3m 7: Sau c\\u00e1i ch\\u1ebft c\\u1ee7a Paul Walker, c\\u00f3 r\\u1ea5t nhi\\u1ec1u c\\u00e2u h\\u1ecfi \\u0111\\u1eb7t ra cho nh\\u00e0 s\\u1ea3n xu\\u1ea5t phim Fast and Furious. C\\u00e1c nh\\u00e0 l\\u00e0m phim nh\\u1eadn th\\u1ea5y h\\u1ecd c\\u1ea7n m\\u1ed9t ai \\u0111\\u00f3 gi\\u1ed1ng ng\\u00f4i sao qu\\u00e1 c\\u1ed1 \\u0111\\u1ec3 ho\\u00e0n th\\u00e0nh b\\u1ed9 phim dang d\\u1edf. Trong","keywords":"Bao Thu","customize":""}', NULL, 1, 1),
(5, 50, 'Bạo Phong Ngữ', 'bao-phong-ngu', 'Phim Bạo Phong Ngữ Insanity Đạo diễn Nhĩ Đông Thăng tiếp tục khai thác dòng phim hình sự giật gân sở trường trong năm nay với Insanity cùng bộ đôi Lưu Thanh Vân và Huỳnh Hiểu Minh.\r\nPhim là cuộc đối đầu căng thẳng giữa một tên sát nhân tâm thần', 'Insanity 2015', 'insanity-2015', '/upload/image/film/632909-insanity-2015-poster.jpg', '/upload/image/film/insanity-poster-goldposter-com-5.jpg', '98 phút', 2015, 'movies', 'no', '&lt;p&gt;Phim&amp;nbsp;Bạo Phong Ngữ&amp;nbsp;Insanity&amp;nbsp;Đạo diễn Nhĩ Đ&amp;ocirc;ng Thăng tiếp tục khai th&amp;aacute;c d&amp;ograve;ng phim h&amp;igrave;nh sự giật g&amp;acirc;n sở trường trong năm nay với Insanity c&amp;ugrave;ng bộ đ&amp;ocirc;i Lưu Thanh V&amp;acirc;n v&amp;agrave; Huỳnh Hiểu Minh.&lt;/p&gt;\r\n&lt;p&gt;Phim l&amp;agrave; cuộc đối đầu căng thẳng giữa một t&amp;ecirc;n s&amp;aacute;t nh&amp;acirc;n t&amp;acirc;m thần v&amp;agrave; một b&amp;aacute;c sĩ chuy&amp;ecirc;n khoa thần kinh. Theo chia sẻ của Nhĩ Đ&amp;ocirc;ng Thăng, &amp;ocirc;ng từng mất tới 5 năm để ph&amp;aacute;t triển kịch bản của Insanity sao cho vừa &amp;yacute; c&amp;aacute;c nh&amp;agrave; sản xuất.&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-24 00:11:28', '2015-06-05 15:17:06', NULL, 'active', 'na', 'new', NULL, NULL, 'yes', '{"id":"50","title":"B\\u1ea1o Phong Ng\\u1eef","description":"Phim\\u00a0B\\u1ea1o Phong Ng\\u1eef\\u00a0Insanity\\u00a0\\u0110\\u1ea1o di\\u1ec5n Nh\\u0129 \\u0110\\u00f4ng Th\\u0103ng ti\\u1ebfp t\\u1ee5c khai th\\u00e1c d\\u00f2ng phim h\\u00ecnh s\\u1ef1 gi\\u1eadt g\\u00e2n s\\u1edf tr\\u01b0\\u1eddng trong n\\u0103m nay v\\u1edbi Insanity c\\u00f9ng b\\u1ed9 \\u0111\\u00f4i L\\u01b0u Thanh V\\u00e2n v\\u00e0 Hu\\u1ef3nh Hi\\u1ec3u Minh.\\r\\nPhim l\\u00e0 cu\\u1ed9c \\u0111\\u1ed1i \\u0111\\u1ea7u c\\u0103ng th\\u1eb3ng gi\\u1eefa m\\u1ed9t t\\u00ean s\\u00e1t nh\\u00e2n t\\u00e2m th\\u1ea7n","keywords":"Bao Phong Ngu","customize":""}', NULL, 1, 1),
(7, 52, 'Long Môn Phi Giáp', 'long-mon-phi-giap', 'Phim lấy bối cảnh từ thời nhà Minh. Câu chuyện bắt đầu khi hiệp khách Triệu Hoài An (Nhiếp Viễn) quyết định ẩn náu tại quán trọ Long Môn, sau thời gian bị truy đuổi vì tội giải thoát một trong những phạm nhân triều đình. Tại nơi đây, anh được bà chủ trước đây của', 'Flying Swords Of Dragon Gate', 'flying-swords-of-dragon-gate', '/upload/image/film/304526-long-mon-phi-giap-2015-megabox-pst.jpg', '/upload/image/film/flying-swords-of-dragon-gate.jpg', '50 tập', 2015, 'movies', 'yes', '&lt;p&gt;Phim lấy bối cảnh từ thời nh&amp;agrave; Minh. C&amp;acirc;u chuyện bắt đầu khi hiệp kh&amp;aacute;ch Triệu Ho&amp;agrave;i An (Nhiếp Viễn) quyết định ẩn n&amp;aacute;u tại qu&amp;aacute;n trọ Long M&amp;ocirc;n, sau thời gian bị truy đuổi v&amp;igrave; tội giải tho&amp;aacute;t một trong những phạm nh&amp;acirc;n triều đ&amp;igrave;nh. Tại nơi đ&amp;acirc;y, anh được b&amp;agrave; chủ trước đ&amp;acirc;y của qu&amp;aacute;n trọ Long M&amp;ocirc;n - Kim Tương N&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-24 00:25:22', '2015-06-05 15:16:59', NULL, 'active', 'na', 'new', NULL, NULL, 'yes', '{"id":"52","title":"Long M\\u00f4n Phi Gi\\u00e1p","description":"Phim l\\u1ea5y b\\u1ed1i c\\u1ea3nh t\\u1eeb th\\u1eddi nh\\u00e0 Minh. C\\u00e2u chuy\\u1ec7n b\\u1eaft \\u0111\\u1ea7u khi hi\\u1ec7p kh\\u00e1ch Tri\\u1ec7u Ho\\u00e0i An (Nhi\\u1ebfp Vi\\u1ec5n) quy\\u1ebft \\u0111\\u1ecbnh \\u1ea9n n\\u00e1u t\\u1ea1i qu\\u00e1n tr\\u1ecd Long M\\u00f4n, sau th\\u1eddi gian b\\u1ecb truy \\u0111u\\u1ed5i v\\u00ec t\\u1ed9i gi\\u1ea3i tho\\u00e1t m\\u1ed9t trong nh\\u1eefng ph\\u1ea1m nh\\u00e2n tri\\u1ec1u \\u0111\\u00ecnh. T\\u1ea1i n\\u01a1i \\u0111\\u00e2y, anh \\u0111\\u01b0\\u1ee3c b\\u00e0 ch\\u1ee7 tr\\u01b0\\u1edbc \\u0111\\u00e2y c\\u1ee7a","keywords":"Long Mon Phi Giap","customize":""}', NULL, 1, 1),
(8, 36, 'Tôi Là Nữ Vương', 'toi-la-nu-vuong', ' Bộ phim xoay quanh cuộc sống, những thăng trầm và tình yêu của ba cô gái thành đạt chốn đô thị. Song Hye Kyo, Trần Kiều Ân và Y Năng Tịnh sẽ hóa thân vào vai ba cô bạn thân của nhau, cũng chính là ba nhân vật trung tâm của bộ phim. Hye Kyo', 'The Queens', 'the-queens', '/upload/image/film/799314-toi-la-nu-vuong-pst1.jpg', '/upload/image/film/toi-la-nu-vuong.jpg', '100 phút', 2015, 'movies', 'no', '&lt;p&gt;&amp;nbsp;Bộ phim xoay quanh cuộc sống, những thăng trầm v&amp;agrave; t&amp;igrave;nh y&amp;ecirc;u của ba c&amp;ocirc; g&amp;aacute;i th&amp;agrave;nh đạt chốn đ&amp;ocirc; thị. Song Hye Kyo, Trần Kiều &amp;Acirc;n v&amp;agrave; Y Năng Tịnh sẽ h&amp;oacute;a th&amp;acirc;n v&amp;agrave;o vai ba c&amp;ocirc; bạn th&amp;acirc;n của nhau, cũng ch&amp;iacute;nh l&amp;agrave; ba nh&amp;acirc;n vật trung t&amp;acirc;m của bộ phim. Hye Kyo v&amp;agrave;o vai một minh tinh xinh đẹp, t&amp;agrave;i năng. Cuộc đời thay đổi khi c&amp;ocirc; chia tay người y&amp;ecirc;u sau t&amp;aacute;m năm gắn b&amp;oacute;.&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:10:51', '2015-06-05 15:16:54', NULL, 'active', '', 'new', NULL, NULL, 'yes', '{"id":"36","title":"T\\u00f4i L\\u00e0 N\\u1eef V\\u01b0\\u01a1ng","description":"\\u00a0B\\u1ed9 phim xoay quanh cu\\u1ed9c s\\u1ed1ng, nh\\u1eefng th\\u0103ng tr\\u1ea7m v\\u00e0 t\\u00ecnh y\\u00eau c\\u1ee7a ba c\\u00f4 g\\u00e1i th\\u00e0nh \\u0111\\u1ea1t ch\\u1ed1n \\u0111\\u00f4 th\\u1ecb. Song Hye Kyo, Tr\\u1ea7n Ki\\u1ec1u \\u00c2n v\\u00e0 Y N\\u0103ng T\\u1ecbnh s\\u1ebd h\\u00f3a th\\u00e2n v\\u00e0o vai ba c\\u00f4 b\\u1ea1n th\\u00e2n c\\u1ee7a nhau, c\\u0169ng ch\\u00ednh l\\u00e0 ba nh\\u00e2n v\\u1eadt trung t\\u00e2m c\\u1ee7a b\\u1ed9 phim. Hye Kyo","keywords":"Toi La Nu Vuong","customize":""}', NULL, 1, 1),
(9, 37, 'Lời Tự Thú Của Một Tín Đồ Shopping', 'loi-tu-thu-cua-mot-tin-do-shopping', 'Tham vọng lớn nhất của Rebecca Bloomwood (Isla Fisher) là được nhận vào làm ở tờ tạp chí thời trang danh tiếng, Alette. Nhưng trong lúc chờ thời, cô phóng viên chuyên viết bài về chủ đề vườn tược cho một tạp chí nhỏ coi mua', 'Confessions of a Shopaholic', 'confessions-of-a-shopaholic', '/upload/image/film/e0279bc5e373b09bcec7147d51fc1ab7.jpg', '/upload/image/film/confessions-of-a-shopaholic.jpg', '104 phút', 2015, 'movies', 'no', '&lt;div id=&quot;mCSB_2_container&quot; class=&quot;mCSB_container&quot; dir=&quot;ltr&quot;&gt;\r\n&lt;p&gt;Tham vọng lớn nhất của Rebecca Bloomwood (Isla Fisher) l&amp;agrave; được nhận v&amp;agrave;o l&amp;agrave;m ở tờ tạp ch&amp;iacute; thời trang danh tiếng, Alette. Nhưng trong l&amp;uacute;c chờ thời, c&amp;ocirc; ph&amp;oacute;ng vi&amp;ecirc;n chuy&amp;ecirc;n viết b&amp;agrave;i về chủ đề vườn tược cho một tạp ch&amp;iacute; nhỏ coi mua sắm l&amp;agrave; niềm đam m&amp;ecirc; lớn nhất. Rebecca sẵn s&amp;agrave;ng lao tới mọi cuộc giảm gi&amp;aacute; của những cửa h&amp;agrave;ng thời trang h&amp;agrave;ng hiệu v&amp;agrave; ti&amp;ecirc;u tiền kh&amp;ocirc;ng t&amp;iacute;nh to&amp;aacute;n trước những m&amp;oacute;n đồ đắt gi&amp;aacute;. C&amp;ocirc; n&amp;agrave;ng ho&amp;agrave;n to&amp;agrave;n kh&amp;ocirc;ng c&amp;oacute; khả năng kiềm chế th&amp;uacute; vui mua sắm, bất lực trước việc kiểm so&amp;aacute;t chi ti&amp;ecirc;u. Hậu quả l&amp;agrave; m&amp;oacute;n nợ hơn 9.000 USD vượt xa khả năng thanh to&amp;aacute;n. Sống c&amp;ugrave;ng c&amp;ocirc; bạn th&amp;acirc;n, ph&amp;ograve;ng ngủ của Rebecca tr&amp;agrave;n ngập quần &amp;aacute;o gi&amp;agrave;y d&amp;eacute;p, m&amp;agrave; phần lớn trong số đ&amp;oacute; chưa từng được d&amp;ugrave;ng tới. Được bạn khuy&amp;ecirc;n can bao lần, nhưng Rebecca chẳng hề c&amp;oacute; dấu hiệu của sự tỉnh ngộ. Giữa l&amp;uacute;c cần kiếm tiền để trả nợ, c&amp;ocirc; n&amp;agrave;ng lại bị mất việc. Lối tho&amp;aacute;t duy nhất l&amp;uacute;c đ&amp;oacute; l&amp;agrave; xin v&amp;agrave;o l&amp;agrave;m ở tờ tạp ch&amp;iacute; thời trang. Nhưng con đường tới đ&amp;iacute;ch quả thật ch&amp;ocirc;ng gai, khi Rebecca lại được nhận v&amp;agrave;o tạp ch&amp;iacute; t&amp;agrave;i ch&amp;iacute;nh Successful Savings.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div id=&quot;mCSB_2_scrollbar_vertical&quot; class=&quot;mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical&quot;&gt;\r\n&lt;div class=&quot;mCSB_draggerContainer&quot;&gt;\r\n&lt;div id=&quot;mCSB_2_dragger_vertical&quot; class=&quot;mCSB_dragger&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:13:00', '2015-06-05 15:16:50', NULL, 'active', '', 'new', NULL, NULL, 'yes', '{"id":"37","title":"L\\u1eddi T\\u1ef1 Th\\u00fa C\\u1ee7a M\\u1ed9t T\\u00edn \\u0110\\u1ed3 Shopping","description":"Tham v\\u1ecdng l\\u1edbn nh\\u1ea5t c\\u1ee7a Rebecca Bloomwood (Isla Fisher) l\\u00e0 \\u0111\\u01b0\\u1ee3c nh\\u1eadn v\\u00e0o l\\u00e0m \\u1edf t\\u1edd t\\u1ea1p ch\\u00ed th\\u1eddi trang danh ti\\u1ebfng, Alette. Nh\\u01b0ng trong l\\u00fac ch\\u1edd th\\u1eddi, c\\u00f4 ph\\u00f3ng vi\\u00ean chuy\\u00ean vi\\u1ebft b\\u00e0i v\\u1ec1 ch\\u1ee7 \\u0111\\u1ec1 v\\u01b0\\u1eddn t\\u01b0\\u1ee3c cho m\\u1ed9t t\\u1ea1p ch\\u00ed nh\\u1ecf coi mua","keywords":"Loi Tu Thu Cua Mot Tin Do Shopping","customize":""}', NULL, 1, 1),
(10, 40, 'Kết Án', 'ket-an', 'Bộ phim dựa trên một câu chuyện có thật về Betty Anne Waters, một bà mẹ phải một mình nuôi hai đứa con trong khi cố gắng đạt được bằng đại học Luật để bào chữa cho em trai mình, người đã bị buộc tội giết người. Cô đã phải học để lấy bằng cấp hai, bằng cấp ba, sau đó là', 'Conviction', 'conviction', '/upload/image/film/9d607b62f1bfb684f61bb29e1f0bd32b.jpg', '/upload/image/film/conviction.jpg', '107 phút', 2015, 'movies', 'no', '&lt;p&gt;Bộ phim dựa tr&amp;ecirc;n một c&amp;acirc;u chuyện c&amp;oacute; thật về Betty Anne Waters, một b&amp;agrave; mẹ phải một m&amp;igrave;nh nu&amp;ocirc;i hai đứa con trong khi cố gắng đạt được bằng đại học Luật để b&amp;agrave;o chữa cho em trai m&amp;igrave;nh, người đ&amp;atilde; bị buộc tội giết người. C&amp;ocirc; đ&amp;atilde; phải học để lấy bằng cấp hai, bằng cấp ba, sau đ&amp;oacute; l&amp;agrave; bằng đại học, bằng thạc sĩ luật v&amp;agrave; cuối c&amp;ugrave;ng đ&amp;atilde; t&amp;igrave;m được bằng chứng quan trọng gi&amp;uacute;p giải oan cho em m&amp;igrave;nh.&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:17:22', '2015-06-05 15:16:45', NULL, 'active', '7.2', 'new', NULL, NULL, 'yes', '{"id":"40","title":"K\\u1ebft \\u00c1n","description":"B\\u1ed9 phim d\\u1ef1a tr\\u00ean m\\u1ed9t c\\u00e2u chuy\\u1ec7n c\\u00f3 th\\u1eadt v\\u1ec1 Betty Anne Waters, m\\u1ed9t b\\u00e0 m\\u1eb9 ph\\u1ea3i m\\u1ed9t m\\u00ecnh nu\\u00f4i hai \\u0111\\u1ee9a con trong khi c\\u1ed1 g\\u1eafng \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c b\\u1eb1ng \\u0111\\u1ea1i h\\u1ecdc Lu\\u1eadt \\u0111\\u1ec3 b\\u00e0o ch\\u1eefa cho em trai m\\u00ecnh, ng\\u01b0\\u1eddi \\u0111\\u00e3 b\\u1ecb bu\\u1ed9c t\\u1ed9i gi\\u1ebft ng\\u01b0\\u1eddi. C\\u00f4 \\u0111\\u00e3 ph\\u1ea3i h\\u1ecdc \\u0111\\u1ec3 l\\u1ea5y b\\u1eb1ng c\\u1ea5p hai, b\\u1eb1ng c\\u1ea5p ba, sau \\u0111\\u00f3 l\\u00e0","keywords":"Ket An","customize":""}', NULL, 1, 1),
(11, 41, 'Săn Lùng', 'san-lung', 'vào khoang cứu hộ khẩn cấp và đưa xuống mặt đất. Ngờ đâu, chính Morris lại là kẻ sắp đặt tất cả để biến ông thành mục tiêu săn đuổi của một nhóm khủng bố. May mắn thay, ông nhận được sự giúp đỡ từ cậu bé người địa phương Oskari (Onni Tommila) đang nhận nhiệm vụ săn linh', 'Big Game', 'big-game', '/upload/image/film/91093f0643bf1689e18e2c3593b21211.jpg', '/upload/image/film/big-game.jpg', '86 phút', 2015, 'movies', 'no', '&lt;p&gt;v&amp;agrave;o khoang cứu hộ khẩn cấp v&amp;agrave; đưa xuống mặt đất. Ngờ đ&amp;acirc;u, ch&amp;iacute;nh Morris lại l&amp;agrave; kẻ sắp đặt tất cả để biến &amp;ocirc;ng th&amp;agrave;nh mục ti&amp;ecirc;u săn đuổi của một nh&amp;oacute;m khủng bố. May mắn thay, &amp;ocirc;ng nhận được sự gi&amp;uacute;p đỡ từ cậu b&amp;eacute; người địa phương Oskari (Onni Tommila) đang nhận nhiệm vụ săn linh dương để chứng tỏ sự trưởng th&amp;agrave;nh theo tục lệ của người d&amp;acirc;n nơi đ&amp;acirc;y. Liệu chỉ với cung nỏ l&amp;agrave;m vũ kh&amp;iacute;, Tổng thống v&amp;agrave; Oskari sẽ vượt qua mọi chuyện như thế n&amp;agrave;o?&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:19:20', '2015-06-05 15:16:39', NULL, 'active', '6.3', 'new', NULL, NULL, 'yes', '{"id":"41","title":"S\\u0103n L\\u00f9ng","description":"v\\u00e0o khoang c\\u1ee9u h\\u1ed9 kh\\u1ea9n c\\u1ea5p v\\u00e0 \\u0111\\u01b0a xu\\u1ed1ng m\\u1eb7t \\u0111\\u1ea5t. Ng\\u1edd \\u0111\\u00e2u, ch\\u00ednh Morris l\\u1ea1i l\\u00e0 k\\u1ebb s\\u1eafp \\u0111\\u1eb7t t\\u1ea5t c\\u1ea3 \\u0111\\u1ec3 bi\\u1ebfn \\u00f4ng th\\u00e0nh m\\u1ee5c ti\\u00eau s\\u0103n \\u0111u\\u1ed5i c\\u1ee7a m\\u1ed9t nh\\u00f3m kh\\u1ee7ng b\\u1ed1. May m\\u1eafn thay, \\u00f4ng nh\\u1eadn \\u0111\\u01b0\\u1ee3c s\\u1ef1 gi\\u00fap \\u0111\\u1ee1 t\\u1eeb c\\u1eadu b\\u00e9 ng\\u01b0\\u1eddi \\u0111\\u1ecba ph\\u01b0\\u01a1ng Oskari (Onni Tommila) \\u0111ang nh\\u1eadn nhi\\u1ec7m v\\u1ee5 s\\u0103n linh","keywords":"San Lung","customize":""}', NULL, 1, 1),
(12, 43, 'Động Đất San Andreas', 'dong-dat-san-andreas', 'Khi một nhà địa chấn học ko nổi tiếng cảnh báo về một trận động đất 12.7 độ, ko ai quan tâm đến cảnh báo của cô. Vì lẽ đó, cô một mình đưa gia đình đến nơi ai toàn trước khi trận động đất làm tan nát và khiến LA tách ra khỏi đất', 'San Andreas Quake 2015', 'san-andreas-quake-2015', '/upload/image/film/6c6fe9261f2515d67736019981a85cb5.jpg', '/upload/image/film/san-andreas-quake-2015.jpg', '83 phút', 2015, 'movies', 'no', '&lt;p&gt;Khi một nh&amp;agrave; địa chấn học ko nổi tiếng cảnh b&amp;aacute;o về một trận động đất 12.7 độ, ko ai quan t&amp;acirc;m đến cảnh b&amp;aacute;o của c&amp;ocirc;. V&amp;igrave; lẽ đ&amp;oacute;, c&amp;ocirc; một m&amp;igrave;nh đưa gia đ&amp;igrave;nh đến nơi ai to&amp;agrave;n trước khi trận động đất l&amp;agrave;m tan n&amp;aacute;t v&amp;agrave; khiến LA t&amp;aacute;ch ra khỏi đất liền&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:21:23', '2015-06-05 15:16:36', NULL, 'active', '', 'new', NULL, NULL, 'yes', '{"id":"43","title":"\\u0110\\u1ed9ng \\u0110\\u1ea5t San Andreas","description":"Khi m\\u1ed9t nh\\u00e0 \\u0111\\u1ecba ch\\u1ea5n h\\u1ecdc ko n\\u1ed5i ti\\u1ebfng c\\u1ea3nh b\\u00e1o v\\u1ec1 m\\u1ed9t tr\\u1eadn \\u0111\\u1ed9ng \\u0111\\u1ea5t 12.7 \\u0111\\u1ed9, ko ai quan t\\u00e2m \\u0111\\u1ebfn c\\u1ea3nh b\\u00e1o c\\u1ee7a c\\u00f4. V\\u00ec l\\u1ebd \\u0111\\u00f3, c\\u00f4 m\\u1ed9t m\\u00ecnh \\u0111\\u01b0a gia \\u0111\\u00ecnh \\u0111\\u1ebfn n\\u01a1i ai to\\u00e0n tr\\u01b0\\u1edbc khi tr\\u1eadn \\u0111\\u1ed9ng \\u0111\\u1ea5t l\\u00e0m tan n\\u00e1t v\\u00e0 khi\\u1ebfn LA t\\u00e1ch ra kh\\u1ecfi \\u0111\\u1ea5t","keywords":"Dong Dat San Andreas","customize":""}', NULL, 1, 1),
(13, 44, 'Đấu Trường Đẫm Máu', 'dau-truong-dam-mau', 'David Chúa thấy mình bị buộc vào thế giới hoang dã của một trường võ sĩ giác đấu hiện đại, nơi mà những người đàn ông chiến đấu đến cùng cho vui chơi giải trí của quần chúng trực', 'Arena ', 'arena', '/upload/image/film/0aa4d2cc84908eb940acac9fdf4982b7.jpg', '/upload/image/film/arena.jpg', ' 94 phút', 2015, 'movies', 'no', '&lt;p&gt;David Ch&amp;uacute;a thấy m&amp;igrave;nh bị buộc v&amp;agrave;o thế giới hoang d&amp;atilde; của một trường v&amp;otilde; sĩ gi&amp;aacute;c đấu hiện đại, nơi m&amp;agrave; những người đ&amp;agrave;n &amp;ocirc;ng chiến đấu đến c&amp;ugrave;ng cho vui chơi giải tr&amp;iacute; của quần ch&amp;uacute;ng trực tuyến.&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:22:50', '2015-06-05 15:16:30', NULL, 'active', '4.8', 'new', NULL, NULL, 'yes', '{"id":"44","title":"\\u0110\\u1ea5u Tr\\u01b0\\u1eddng \\u0110\\u1eabm M\\u00e1u","description":"David Ch\\u00faa th\\u1ea5y m\\u00ecnh b\\u1ecb bu\\u1ed9c v\\u00e0o th\\u1ebf gi\\u1edbi hoang d\\u00e3 c\\u1ee7a m\\u1ed9t tr\\u01b0\\u1eddng v\\u00f5 s\\u0129 gi\\u00e1c \\u0111\\u1ea5u hi\\u1ec7n \\u0111\\u1ea1i, n\\u01a1i m\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi \\u0111\\u00e0n \\u00f4ng chi\\u1ebfn \\u0111\\u1ea5u \\u0111\\u1ebfn c\\u00f9ng cho vui ch\\u01a1i gi\\u1ea3i tr\\u00ed c\\u1ee7a qu\\u1ea7n ch\\u00fang tr\\u1ef1c","keywords":"Dau Truong Dam Mau","customize":""}', NULL, 1, 1),
(14, 45, 'Báo Thù', 'bao-thu-ghajini', 'Một chàng trai là chủ tịch của 1 tập đoàn máy tính lớn đem lòng yêu 1 cô gái đã tung tin đồn là cô gái đó là bạn gái của anh, cho dù 2 người chưa từng gặp mặt. Và rồi 2 người bắt đầu yêu nhau nhưng cô gái đã', 'Ghajini ', 'ghajini', '/upload/image/film/2c0f199150b8a9717724ee2b7e9debef.jpg', '/upload/image/film/ghajini-21.jpg', '184 phút', 2015, 'movies', 'no', '&lt;p&gt;Một ch&amp;agrave;ng trai l&amp;agrave; chủ tịch của 1 tập đo&amp;agrave;n m&amp;aacute;y t&amp;iacute;nh lớn đem l&amp;ograve;ng y&amp;ecirc;u 1 c&amp;ocirc; g&amp;aacute;i đ&amp;atilde; tung tin đồn l&amp;agrave; c&amp;ocirc; g&amp;aacute;i đ&amp;oacute; l&amp;agrave; bạn g&amp;aacute;i của anh, cho d&amp;ugrave; 2 người chưa từng gặp mặt. V&amp;agrave; rồi 2 người bắt đầu y&amp;ecirc;u nhau nhưng c&amp;ocirc; g&amp;aacute;i đ&amp;atilde; bị 1 t&amp;ecirc;n tr&amp;ugrave;m bu&amp;ocirc;n người trả th&amp;ugrave; v&amp;igrave; đ&amp;atilde; chỉ mặt tố c&amp;aacute;o &amp;ocirc;ng ta. Kết quả c&amp;ocirc; bị giết chết c&amp;ograve;n ch&amp;agrave;ng trai th&amp;igrave; bị đ&amp;aacute;nh đến nỗi bị bệnh mất tr&amp;iacute; nhớ sau mỗi 15 ph&amp;uacute;t, những g&amp;igrave; trước đ&amp;oacute; sẽ qu&amp;ecirc;n hết. Ch&amp;agrave;ng trai l&amp;agrave;m sao c&amp;oacute; thể trả th&amp;ugrave; được với tr&amp;iacute; nhớ sao&lt;/p&gt;', NULL, 0, 0, 1, NULL, '2015-05-25 21:24:39', '2016-05-21 04:41:07', NULL, 'active', '7.3', 'hot', NULL, NULL, 'yes', '{"id":"45","title":"B\\u00e1o Th\\u00f9","description":"M\\u1ed9t ch\\u00e0ng trai l\\u00e0 ch\\u1ee7 t\\u1ecbch c\\u1ee7a 1 t\\u1eadp \\u0111o\\u00e0n m\\u00e1y t\\u00ednh l\\u1edbn \\u0111em l\\u00f2ng y\\u00eau 1 c\\u00f4 g\\u00e1i \\u0111\\u00e3 tung tin \\u0111\\u1ed3n l\\u00e0 c\\u00f4 g\\u00e1i \\u0111\\u00f3 l\\u00e0 b\\u1ea1n g\\u00e1i c\\u1ee7a anh, cho d\\u00f9 2 ng\\u01b0\\u1eddi ch\\u01b0a t\\u1eebng g\\u1eb7p m\\u1eb7t. V\\u00e0 r\\u1ed3i 2 ng\\u01b0\\u1eddi b\\u1eaft \\u0111\\u1ea7u y\\u00eau nhau nh\\u01b0ng c\\u00f4 g\\u00e1i \\u0111\\u00e3","keywords":"Bao Thu","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1),
(15, 47, 'Ghajini Phải Chết', 'ghajini-phai-chet', 'Một chàng trai là chủ tịch của 1 tập đoàn máy tính lớn đem lòng yêu 1 cô gái đã tung tin đồn là cô gái đó là bạn gái của anh, cho dù 2 người chưa từng gặp mặt. Và rồi 2 người bắt đầu yêu nhau nhưng cô gái đã', 'Ghajini 2', 'ghajini-2', '/upload/image/film/968789-ghajini-2-pst.jpg', '/upload/image/film/ghajini-2.jpg', '', 2015, 'movies', 'yes', '&lt;p&gt;Một ch&amp;agrave;ng trai l&amp;agrave; chủ tịch của 1 tập đo&amp;agrave;n m&amp;aacute;y t&amp;iacute;nh lớn đem l&amp;ograve;ng y&amp;ecirc;u 1 c&amp;ocirc; g&amp;aacute;i đ&amp;atilde; tung tin đồn l&amp;agrave; c&amp;ocirc; g&amp;aacute;i đ&amp;oacute; l&amp;agrave; bạn g&amp;aacute;i của anh, cho d&amp;ugrave; 2 người chưa từng gặp mặt. V&amp;agrave; rồi 2 người bắt đầu y&amp;ecirc;u nhau nhưng c&amp;ocirc; g&amp;aacute;i đ&amp;atilde; bị 1 t&amp;ecirc;n tr&amp;ugrave;m bu&amp;ocirc;n người trả th&amp;ugrave; v&amp;igrave; đ&amp;atilde; chỉ mặt tố c&amp;aacute;o &amp;ocirc;ng ta. Kết quả c&amp;ocirc; bị giết chết c&amp;ograve;n ch&amp;agrave;ng trai th&amp;igrave; bị đ&amp;aacute;nh đến nỗi bị bệnh mất tr&amp;iacute; nhớ sau mỗi 15 ph&amp;uacute;t, những g&amp;igrave; trước đ&amp;oacute; sẽ qu&amp;ecirc;n hết. Ch&amp;agrave;ng trai l&amp;agrave;m sao c&amp;oacute; thể trả th&amp;ugrave; được với tr&amp;iacute; nhớ sao&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:26:28', '2015-06-05 15:16:06', NULL, 'active', '7.3', 'new', NULL, NULL, 'yes', '{"id":"47","title":"Ghajini Ph\\u1ea3i Ch\\u1ebft","description":"M\\u1ed9t ch\\u00e0ng trai l\\u00e0 ch\\u1ee7 t\\u1ecbch c\\u1ee7a 1 t\\u1eadp \\u0111o\\u00e0n m\\u00e1y t\\u00ednh l\\u1edbn \\u0111em l\\u00f2ng y\\u00eau 1 c\\u00f4 g\\u00e1i \\u0111\\u00e3 tung tin \\u0111\\u1ed3n l\\u00e0 c\\u00f4 g\\u00e1i \\u0111\\u00f3 l\\u00e0 b\\u1ea1n g\\u00e1i c\\u1ee7a anh, cho d\\u00f9 2 ng\\u01b0\\u1eddi ch\\u01b0a t\\u1eebng g\\u1eb7p m\\u1eb7t. V\\u00e0 r\\u1ed3i 2 ng\\u01b0\\u1eddi b\\u1eaft \\u0111\\u1ea7u y\\u00eau nhau nh\\u01b0ng c\\u00f4 g\\u00e1i \\u0111\\u00e3","keywords":"Ghajini Phai Chet","customize":""}', NULL, 1, 1),
(16, 48, 'Bầu Trời Sắt', 'bau-troi-sat', 'Trong khoảnh khắc cuối cùng của chiến tranh thế giới thứ II, chương trình không gian bí mật của Đức Quốc xã đã trốn tránh việc bị phá hủy bằng cách chạy trốn tới phía tối của Mặt Trăng.Trong suốt 70 năm ẩn dấu bí mật, Đức quốc xã đã cho xây dựng một pháo', 'Iron Sky', 'iron-sky', '/upload/image/film/470aba3413222a4a4233254798f709da.jpg', '/upload/image/film/iron-sky.jpg', '92 phút', 2015, 'movies', 'yes', '&lt;p&gt;Trong khoảnh khắc cuối c&amp;ugrave;ng của chiến tranh thế giới thứ II, chương tr&amp;igrave;nh kh&amp;ocirc;ng gian b&amp;iacute; mật của Đức Quốc x&amp;atilde; đ&amp;atilde; trốn tr&amp;aacute;nh việc bị ph&amp;aacute; hủy bằng c&amp;aacute;ch chạy trốn tới ph&amp;iacute;a tối của Mặt Trăng.Trong suốt 70 năm ẩn dấu b&amp;iacute; mật, Đức quốc x&amp;atilde; đ&amp;atilde; cho x&amp;acirc;y dựng một ph&amp;aacute;o đ&amp;agrave;i kh&amp;ocirc;ng gian khổng lồ với một hạm đội c&amp;aacute;c phi thuyền tối t&amp;acirc;n. Năm 2018,với sức mạnh của c&amp;ocirc;ng nghệ v&amp;agrave; lực lượng đ&amp;ocirc;ng đảo.Ch&amp;uacute;ng trở lại Tr&amp;aacute;i Đất để lấy lại những g&amp;igrave; thuộc về ch&amp;uacute;ng.&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:27:42', '2015-06-05 15:15:57', NULL, 'active', '6.0', 'new', NULL, NULL, 'yes', '{"id":"48","title":"B\\u1ea7u Tr\\u1eddi S\\u1eaft","description":"Trong kho\\u1ea3nh kh\\u1eafc cu\\u1ed1i c\\u00f9ng c\\u1ee7a chi\\u1ebfn tranh th\\u1ebf gi\\u1edbi th\\u1ee9 II, ch\\u01b0\\u01a1ng tr\\u00ecnh kh\\u00f4ng gian b\\u00ed m\\u1eadt c\\u1ee7a \\u0110\\u1ee9c Qu\\u1ed1c x\\u00e3 \\u0111\\u00e3 tr\\u1ed1n tr\\u00e1nh vi\\u1ec7c b\\u1ecb ph\\u00e1 h\\u1ee7y b\\u1eb1ng c\\u00e1ch ch\\u1ea1y tr\\u1ed1n t\\u1edbi ph\\u00eda t\\u1ed1i c\\u1ee7a M\\u1eb7t Tr\\u0103ng.Trong su\\u1ed1t 70 n\\u0103m \\u1ea9n d\\u1ea5u b\\u00ed m\\u1eadt, \\u0110\\u1ee9c qu\\u1ed1c x\\u00e3 \\u0111\\u00e3 cho x\\u00e2y d\\u1ef1ng m\\u1ed9t ph\\u00e1o","keywords":"Bau Troi Sat","customize":""}', NULL, 1, 1),
(17, 49, 'Ông Nội Tôi Là Cương Thi', 'ong-noi-toi-la-cuong-thi', 'Bộ phim Sifu vs vampire kể về hai tên giang hồ vô tình đánh thức một xác chết nhiều năm sau một vụ cá cược. Từ đó hồi sinh hàng loạt cương thi khác, các xác chết cương thi tràn ra đường phố HongKong và gây ra cảnh hỗn loạn. Mọi chuyện bắt đầu rối rắm và', 'Sifu Vs. Vampire', 'sifu-vs-vampire', '/upload/image/film/108144-sifu-vs-vampire-pst.jpg', '/upload/image/film/sifu-vs.-vampire.jpg', '95 phút', 2015, 'movies', 'yes', '&lt;p&gt;Phim &amp;Ocirc;ng T&amp;ocirc;i L&amp;agrave; Cương Thi &amp;ndash; Sifu vs Vampire do đạo diễn Trần Dực Hằng phụ tr&amp;aacute;ch thực hiện. Khi Nicky v&amp;agrave; Boo nhận lệnh của &amp;ocirc;ng chủ đi t&amp;igrave;m l&amp;atilde;o sư phụ phong thủy để khai quật một ng&amp;ocirc;i mộ đ&amp;atilde; bị phong ấn nhiều năm, l&amp;atilde;o sư phụ kh&amp;ocirc;ng đồng &amp;yacute;. Trước sự phản đối v&amp;agrave; cảnh b&amp;aacute;o của l&amp;atilde;o sư phụ về khai quật ng&amp;ocirc;i mộ, họ kh&amp;ocirc;ng tin về chuyện ma quỷ v&amp;agrave; đ&amp;atilde; đ&amp;aacute;nh thức một ma lực rất lớn l&amp;agrave;m hồi sinh h&amp;agrave;ng loạt c&amp;aacute;c cương thi kh&amp;aacute;c, khiến ch&amp;uacute;ng tr&amp;agrave;n ra khắp đường phố Hongkong. Mọi thứ trở n&amp;ecirc;n o&amp;aacute;i ăm hơn khi đo&amp;agrave;n cương thi n&amp;agrave;y tiến v&amp;agrave;o một phim trường đang quay một bộ phim về cuộc x&amp;acirc;m lăng của bọn cương thi.&lt;/p&gt;', NULL, 0, 0, 1, NULL, '2015-05-25 21:29:18', '2016-05-20 15:46:57', NULL, 'active', '5.3', 'new', NULL, NULL, 'yes', '{"id":"49","title":"\\u00d4ng N\\u1ed9i T\\u00f4i L\\u00e0 C\\u01b0\\u01a1ng Thi","description":"B\\u1ed9 phim Sifu vs vampire k\\u1ec3 v\\u1ec1 hai t\\u00ean giang h\\u1ed3 v\\u00f4 t\\u00ecnh \\u0111\\u00e1nh th\\u1ee9c m\\u1ed9t x\\u00e1c ch\\u1ebft nhi\\u1ec1u n\\u0103m sau m\\u1ed9t v\\u1ee5 c\\u00e1 c\\u01b0\\u1ee3c. T\\u1eeb \\u0111\\u00f3 h\\u1ed3i sinh h\\u00e0ng lo\\u1ea1t c\\u01b0\\u01a1ng thi kh\\u00e1c, c\\u00e1c x\\u00e1c ch\\u1ebft c\\u01b0\\u01a1ng thi tr\\u00e0n ra \\u0111\\u01b0\\u1eddng ph\\u1ed1 HongKong v\\u00e0 g\\u00e2y ra c\\u1ea3nh h\\u1ed7n lo\\u1ea1n. M\\u1ecdi chuy\\u1ec7n b\\u1eaft \\u0111\\u1ea7u r\\u1ed1i r\\u1eafm v\\u00e0","keywords":"Ong Noi Toi La Cuong Thi","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1),
(18, 50, 'Trò chơi sinh tồn', 'tro-choi-sinh-ton', 'Tại một trường trung học, một giáo viên đang giảng bài bất thình lình bị nổ tung sọ ngay bên bục giảng. Kế sau đó, những vụ nổ xảy ra liên tiếp. Shun Takahata và những học sinh trong lớp bị ép buộc phải cùng tham gia một trò chơi sinh tử mà họ không hề biết ai đứng đằng', 'As the Gods Will', 'as-the-gods-will', '/upload/image/film/c8e869f5eddabb814ca1adb02450e303.jpg', '/upload/image/film/as-the-gods-will.jpg', '116 phút', 2015, 'series', 'no', '&lt;p&gt;Tại một trường trung học, một gi&amp;aacute;o vi&amp;ecirc;n đang giảng b&amp;agrave;i bất th&amp;igrave;nh l&amp;igrave;nh bị nổ tung sọ ngay b&amp;ecirc;n bục giảng. Kế sau đ&amp;oacute;, những vụ nổ xảy ra li&amp;ecirc;n tiếp. Shun Takahata v&amp;agrave; những học sinh trong lớp bị &amp;eacute;p buộc phải c&amp;ugrave;ng tham gia một tr&amp;ograve; chơi sinh tử m&amp;agrave; họ kh&amp;ocirc;ng hề biết ai đứng đằng sau chuyện n&amp;agrave;y, tại sao v&amp;agrave; mọi việc sẽ đi về đ&amp;acirc;u?&lt;/p&gt;', NULL, 0, 0, 1, NULL, '2015-05-25 21:31:10', '2016-05-22 13:11:43', NULL, 'active', '6.4', 'new', NULL, NULL, 'yes', '{"id":"50","title":"Tr\\u00f2 ch\\u01a1i sinh t\\u1ed3n","description":"T\\u1ea1i m\\u1ed9t tr\\u01b0\\u1eddng trung h\\u1ecdc, m\\u1ed9t gi\\u00e1o vi\\u00ean \\u0111ang gi\\u1ea3ng b\\u00e0i b\\u1ea5t th\\u00ecnh l\\u00ecnh b\\u1ecb n\\u1ed5 tung s\\u1ecd ngay b\\u00ean b\\u1ee5c gi\\u1ea3ng. K\\u1ebf sau \\u0111\\u00f3, nh\\u1eefng v\\u1ee5 n\\u1ed5 x\\u1ea3y ra li\\u00ean ti\\u1ebfp. Shun Takahata v\\u00e0 nh\\u1eefng h\\u1ecdc sinh trong l\\u1edbp b\\u1ecb \\u00e9p bu\\u1ed9c ph\\u1ea3i c\\u00f9ng tham gia m\\u1ed9t tr\\u00f2 ch\\u01a1i sinh t\\u1eed m\\u00e0 h\\u1ecd kh\\u00f4ng h\\u1ec1 bi\\u1ebft ai \\u0111\\u1ee9ng \\u0111\\u1eb1ng","keywords":"Tro choi sinh ton","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1),
(19, 51, 'Đảo Hải Tặc', 'dao-hai-tac', 'Phim One Piece là chuyện về cậu bé Monkey D. Luffy rất ngưỡng mộ những hải tặc. Chuyện phim One Piece bắt đầu khi một ngày do ăn nhầm Trái Ác Quỷ, bị biến thành người cao su và sẽ không bao giờ biết hơi. 10 năm sau sự việc đó, cậu rời quê mình và kiếm đủ 10 thành viên để', 'One Piece ', 'one-piece', '/upload/image/film/e14f56ba299adffdd8fc6635af27388f.jpg', '/upload/image/film/one-piece.jpg', '', 2015, 'series', 'no', '&lt;p&gt;Phim One Piece l&amp;agrave; chuyện về cậu b&amp;eacute; Monkey D. Luffy rất ngưỡng mộ những hải tặc. Chuyện phim One Piece bắt đầu khi một ng&amp;agrave;y do ăn nhầm Tr&amp;aacute;i &amp;Aacute;c Quỷ, bị biến th&amp;agrave;nh người cao su v&amp;agrave; sẽ kh&amp;ocirc;ng bao giờ biết hơi. 10 năm sau sự việc đ&amp;oacute;, cậu rời qu&amp;ecirc; m&amp;igrave;nh v&amp;agrave; kiếm đủ 10 th&amp;agrave;nh vi&amp;ecirc;n để th&amp;agrave;nh 1 nh&amp;oacute;m cướp biển, biệt hiệu Hải tặc Mũ Rơm. Khi đ&amp;oacute; của phi&amp;ecirc;u lưu t&amp;igrave;m kiếm kho b&amp;aacute;u One Piece bắt đầu. Trong cuộc phi&amp;ecirc;u lưu t&amp;igrave;m kiếm One Piece, băng Hải tặc mũ rơm&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:32:45', '2015-06-05 15:15:34', NULL, 'active', '', 'new', NULL, NULL, 'yes', '{"id":"51","title":"\\u0110\\u1ea3o H\\u1ea3i T\\u1eb7c","description":"Phim One Piece l\\u00e0 chuy\\u1ec7n v\\u1ec1 c\\u1eadu b\\u00e9 Monkey D. Luffy r\\u1ea5t ng\\u01b0\\u1ee1ng m\\u1ed9 nh\\u1eefng h\\u1ea3i t\\u1eb7c. Chuy\\u1ec7n phim One Piece b\\u1eaft \\u0111\\u1ea7u khi m\\u1ed9t ng\\u00e0y do \\u0103n nh\\u1ea7m Tr\\u00e1i \\u00c1c Qu\\u1ef7, b\\u1ecb bi\\u1ebfn th\\u00e0nh ng\\u01b0\\u1eddi cao su v\\u00e0 s\\u1ebd kh\\u00f4ng bao gi\\u1edd bi\\u1ebft h\\u01a1i. 10 n\\u0103m sau s\\u1ef1 vi\\u1ec7c \\u0111\\u00f3, c\\u1eadu r\\u1eddi qu\\u00ea m\\u00ecnh v\\u00e0 ki\\u1ebfm \\u0111\\u1ee7 10 th\\u00e0nh vi\\u00ean \\u0111\\u1ec3","keywords":"Dao Hai Tac","customize":""}', NULL, 1, 1),
(20, 53, 'Diện Mạo Hoàng Đế', 'dien-mao-hoang-de', 'Đây là dự án truyền hình mới nhất của nam ca sĩ - diễn viên Seo In Guk. Anh sẽ vào vai Hoàng tử Gwanghee, vốn là con trai của một nàng hầu nên tư cách thừa kế ngai vàng của Gwanghee bị nghi ngờ. Trước ngày lên ngai vàng, Gwanghee từng bị truất ngôi và phải', 'The King''s Face', 'the-kings-face', '/upload/image/film/929122-kingface-pst.jpg', '/upload/image/film/the-kings-face.jpg', '', 2015, 'series', 'no', '&lt;p&gt;Đ&amp;acirc;y l&amp;agrave; dự &amp;aacute;n truyền h&amp;igrave;nh mới nhất của nam ca sĩ - diễn vi&amp;ecirc;n Seo In Guk. Anh sẽ v&amp;agrave;o vai Ho&amp;agrave;ng tử Gwanghee, vốn l&amp;agrave; con trai của một n&amp;agrave;ng hầu n&amp;ecirc;n tư c&amp;aacute;ch thừa kế ngai v&amp;agrave;ng của Gwanghee bị nghi ngờ. Trước ng&amp;agrave;y l&amp;ecirc;n ngai v&amp;agrave;ng, Gwanghee từng bị truất ng&amp;ocirc;i v&amp;agrave; phải t&amp;igrave;m c&amp;aacute;ch vượt qua nhiều mối nguy hiểm chết người. Nhưng nhờ việc học được thuật xem tướng, Gwanghee dần biết c&amp;aacute;ch bảo vệ bản th&amp;acirc;n v&amp;agrave; cuối c&amp;ugrave;ng trở th&amp;agrave;nh vị vua thứ 15 của triều đại&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:36:31', '2015-06-05 15:15:28', NULL, 'active', '', 'new', NULL, NULL, 'yes', '{"id":"53","title":"Di\\u1ec7n M\\u1ea1o Ho\\u00e0ng \\u0110\\u1ebf","description":"\\u0110\\u00e2y l\\u00e0 d\\u1ef1 \\u00e1n truy\\u1ec1n h\\u00ecnh m\\u1edbi nh\\u1ea5t c\\u1ee7a nam ca s\\u0129 - di\\u1ec5n vi\\u00ean Seo In Guk. Anh s\\u1ebd v\\u00e0o vai Ho\\u00e0ng t\\u1eed Gwanghee, v\\u1ed1n l\\u00e0 con trai c\\u1ee7a m\\u1ed9t n\\u00e0ng h\\u1ea7u n\\u00ean t\\u01b0 c\\u00e1ch th\\u1eeba k\\u1ebf ngai v\\u00e0ng c\\u1ee7a Gwanghee b\\u1ecb nghi ng\\u1edd. Tr\\u01b0\\u1edbc ng\\u00e0y l\\u00ean ngai v\\u00e0ng, Gwanghee t\\u1eebng b\\u1ecb tru\\u1ea5t ng\\u00f4i v\\u00e0 ph\\u1ea3i","keywords":"Dien Mao Hoang De","customize":""}', NULL, 1, 1),
(21, 54, 'Trại Giam Kiểu Mỹ 2', 'trai-giam-kieu-my-2', 'Orange Is the New Black 2 tiếp tục miêu tả chân thực cuộc sống có phần thác loạn của những nữ tù nhân khi họ phải tìm mọi cách để sống sót trong tù. Sau việc làm rất tệ của cô, thì lần này Piper đã được chuyển đến một nhà tù khác', 'Orange Is the New Black - Season 2', 'orange-is-the-new-black-season-2', '/upload/image/film/635490-orange-new-black-season-2-pst.png', '/upload/image/film/orange-is-the-new-black.jpg', '', 2015, 'series', 'no', '&lt;p&gt;Orange Is the New Black 2 tiếp tục mi&amp;ecirc;u tả ch&amp;acirc;n thực cuộc sống c&amp;oacute; phần th&amp;aacute;c loạn của những nữ t&amp;ugrave; nh&amp;acirc;n khi họ phải t&amp;igrave;m mọi c&amp;aacute;ch để sống s&amp;oacute;t trong t&amp;ugrave;. Sau việc l&amp;agrave;m rất tệ của c&amp;ocirc;, th&amp;igrave; lần n&amp;agrave;y Piper đ&amp;atilde; được chuyển đến một nh&amp;agrave; t&amp;ugrave; kh&amp;aacute;c c&amp;oacute; phần khắc nghiệt hơn. Liệu lần n&amp;agrave;y Piper sẽ phải l&amp;agrave;m sao để sống s&amp;oacute;t trong nơi n&amp;agrave;y đ&amp;acirc;y?&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:38:36', '2015-06-05 15:15:23', NULL, 'active', '', 'new', NULL, NULL, 'yes', '{"id":"54","title":"Tr\\u1ea1i Giam Ki\\u1ec3u M\\u1ef9 2","description":"Orange Is the New Black 2 ti\\u1ebfp t\\u1ee5c mi\\u00eau t\\u1ea3 ch\\u00e2n th\\u1ef1c cu\\u1ed9c s\\u1ed1ng c\\u00f3 ph\\u1ea7n th\\u00e1c lo\\u1ea1n c\\u1ee7a nh\\u1eefng n\\u1eef t\\u00f9 nh\\u00e2n khi h\\u1ecd ph\\u1ea3i t\\u00ecm m\\u1ecdi c\\u00e1ch \\u0111\\u1ec3 s\\u1ed1ng s\\u00f3t trong t\\u00f9. Sau vi\\u1ec7c l\\u00e0m r\\u1ea5t t\\u1ec7 c\\u1ee7a c\\u00f4, th\\u00ec l\\u1ea7n n\\u00e0y Piper \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c chuy\\u1ec3n \\u0111\\u1ebfn m\\u1ed9t nh\\u00e0 t\\u00f9 kh\\u00e1c","keywords":"Trai Giam Kieu My 2","customize":""}', NULL, 1, 1),
(22, 55, 'Kỳ Án Nhà Thanh 2', 'ky-an-nha-thanh-2', 'Một năm trước, 2 người vợ Lệ Thư, Hương Dung và con cái của Thi Thế Luân (Âu Dương Chấn Hoa) chết trong vụ đắm thuyền, từ sự việc đó đã làm thay đổi quan điểm sống của ông ta, ông quyết định sống những ngày tháng an', ' A Pillow Case Of Mystery 2', 'a-pillow-case-of-mystery-2', '/upload/image/film/871121-kyannhathanh2-pst.jpg', '/upload/image/film/a-pillow-case-of-mystery-2.jpg', '20 tập', 2015, 'series', 'no', '&lt;div id=&quot;mCSB_2_container&quot; class=&quot;mCSB_container&quot; dir=&quot;ltr&quot;&gt;\r\n&lt;p&gt;Một năm trước, 2 người vợ Lệ Thư, Hương Dung v&amp;agrave; con c&amp;aacute;i của Thi Thế Lu&amp;acirc;n (&amp;Acirc;u Dương Chấn Hoa) chết trong vụ đắm thuyền, từ sự việc đ&amp;oacute; đ&amp;atilde; l&amp;agrave;m thay đổi quan điểm sống của &amp;ocirc;ng ta, &amp;ocirc;ng quyết định sống những ng&amp;agrave;y th&amp;aacute;ng an nh&amp;agrave;n, &amp;ocirc;ng dẫn mẹ Triệu Nguyệt Nga (L&amp;yacute; Phụng) v&amp;agrave; người vợ ch&amp;iacute;nh thức B&amp;agrave;ng C&amp;aacute;t &amp;Aacute;i (Lữ San) v&amp;agrave; vợ hai Giả T&amp;uacute; Nguyễn Ngọc (Đ&amp;agrave;o Doanh Doanh) đi du ngoạn tại huyện Xian Yu, kết quả Thế Lu&amp;acirc;n hữu duy&amp;ecirc;n gặp được Trẫm Ti&amp;ecirc;n (c&amp;aacute;i gối mới &amp;ndash; L&amp;yacute; Tư Tiệp) v&amp;agrave; s&amp;aacute;nh duy&amp;ecirc;n được 2 người vợ kh&amp;aacute;c trong cuộc đời l&amp;agrave; Ng&amp;ocirc; Qu&amp;acirc;n Nhu (Tuy&amp;ecirc;n Huy&amp;ecirc;n) v&amp;agrave; Lục Tiểu Điệp (Đường Ninh)&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;div id=&quot;mCSB_2_scrollbar_vertical&quot; class=&quot;mCSB_scrollTools mCSB_2_scrollbar mCS-light mCSB_scrollTools_vertical&quot;&gt;&amp;nbsp;&lt;/div&gt;', NULL, 0, 0, 1, NULL, '2015-05-25 21:40:50', '2016-05-24 09:34:46', NULL, 'active', '', 'new', NULL, NULL, 'yes', '{"id":"55","title":"K\\u1ef3 \\u00c1n Nh\\u00e0 Thanh 2","description":"M\\u1ed9t n\\u0103m tr\\u01b0\\u1edbc, 2 ng\\u01b0\\u1eddi v\\u1ee3 L\\u1ec7 Th\\u01b0, H\\u01b0\\u01a1ng Dung v\\u00e0 con c\\u00e1i c\\u1ee7a Thi Th\\u1ebf Lu\\u00e2n (\\u00c2u D\\u01b0\\u01a1ng Ch\\u1ea5n Hoa) ch\\u1ebft trong v\\u1ee5 \\u0111\\u1eafm thuy\\u1ec1n, t\\u1eeb s\\u1ef1 vi\\u1ec7c \\u0111\\u00f3 \\u0111\\u00e3 l\\u00e0m thay \\u0111\\u1ed5i quan \\u0111i\\u1ec3m s\\u1ed1ng c\\u1ee7a \\u00f4ng ta, \\u00f4ng quy\\u1ebft \\u0111\\u1ecbnh s\\u1ed1ng nh\\u1eefng ng\\u00e0y th\\u00e1ng an","keywords":"Ky An Nha Thanh 2","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1);
INSERT INTO `film` (`id`, `sys_id`, `name`, `slug`, `excerpt`, `original_name`, `original_slug`, `image`, `poster`, `duration`, `release_year`, `type`, `cinema`, `content`, `note`, `likes`, `views`, `author`, `editer`, `created_at`, `updated_at`, `updated_episode_date`, `status`, `imdb`, `top`, `order`, `expired`, `push_top`, `metadata`, `trailer`, `created_user`, `updated_user`) VALUES
(23, 56, 'Cặp Đôi Ngoại Cảm', 'cap-doi-ngoai-cam', 'Bộ phim dựa trên một tác phẩm truyện tranh nổi tiếng cùng tên, trong đó Park Yoochun sẽ vào vai Choi Moogak bị vô cảm (mất đi vị giác, xúc giác, cảm giác đau đớn hay rung cảm), một cảnh sát truy đuổi kẻ giết người hàng loạt sau khi người em gái duy nhất của mình bị', 'The Girl Who Sees Smells', 'the-girl-who-sees-smells', '/upload/image/film/995495-naemsaereul-boneun-sonyeo-megabox-pst.jpg', '/upload/image/film/the-girl-who-sees-smells.jpg', '16 tập', 2015, 'series', 'no', '&lt;p&gt;Bộ phim dựa tr&amp;ecirc;n một t&amp;aacute;c phẩm truyện tranh nổi tiếng c&amp;ugrave;ng t&amp;ecirc;n, trong đ&amp;oacute; Park Yoochun sẽ v&amp;agrave;o vai Choi Moogak bị v&amp;ocirc; cảm (mất đi vị gi&amp;aacute;c, x&amp;uacute;c gi&amp;aacute;c, cảm gi&amp;aacute;c đau đớn hay rung cảm), một cảnh s&amp;aacute;t truy đuổi kẻ giết người h&amp;agrave;ng loạt sau khi người em g&amp;aacute;i duy nhất của m&amp;igrave;nh bị mất sau vụ &amp;aacute;n b&amp;iacute; ẩn đ&amp;oacute;.&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:42:36', '2015-06-05 15:15:10', NULL, 'active', '8.6', 'hot', NULL, NULL, 'yes', '{"id":"56","title":"C\\u1eb7p \\u0110\\u00f4i Ngo\\u1ea1i C\\u1ea3m","description":"B\\u1ed9 phim d\\u1ef1a tr\\u00ean m\\u1ed9t t\\u00e1c ph\\u1ea9m truy\\u1ec7n tranh n\\u1ed5i ti\\u1ebfng c\\u00f9ng t\\u00ean, trong \\u0111\\u00f3 Park Yoochun s\\u1ebd v\\u00e0o vai Choi Moogak b\\u1ecb v\\u00f4 c\\u1ea3m (m\\u1ea5t \\u0111i v\\u1ecb gi\\u00e1c, x\\u00fac gi\\u00e1c, c\\u1ea3m gi\\u00e1c \\u0111au \\u0111\\u1edbn hay rung c\\u1ea3m), m\\u1ed9t c\\u1ea3nh s\\u00e1t truy \\u0111u\\u1ed5i k\\u1ebb gi\\u1ebft ng\\u01b0\\u1eddi h\\u00e0ng lo\\u1ea1t sau khi ng\\u01b0\\u1eddi em g\\u00e1i duy nh\\u1ea5t c\\u1ee7a m\\u00ecnh b\\u1ecb","keywords":"Cap Doi Ngoai Cam","customize":""}', NULL, 1, 1),
(24, 59, 'Hậu Trường', 'hau-truong', 'Đây là bộ phim kể về hậu trường, những gì xảy ra phía sau màn ảnh của các chương trình truyền hình (variety show). Baek Seung Chan (Kim Soo Hyun) trong vai 1 đạo diễn muốn thực hiện 1 chương trình lớn. Anh ấy cộng tác với Cindy (IU), ngôi sao nhạc Pop và Tak Ye Ji (Gong Hyo Jin), đạo diễn âm', 'Producers ', 'producers', '/upload/image/film/163730-producer-2015-megabox-pst1.jpg', '/upload/image/film/producer_poster5.png', '16', 2015, 'series', 'no', '&lt;p&gt;Đ&amp;acirc;y l&amp;agrave; bộ phim kể về hậu trường, những g&amp;igrave; xảy ra ph&amp;iacute;a sau m&amp;agrave;n ảnh của c&amp;aacute;c chương tr&amp;igrave;nh truyền h&amp;igrave;nh (variety show). Baek Seung Chan (Kim Soo Hyun) trong vai 1 đạo diễn muốn thực hiện 1 chương tr&amp;igrave;nh lớn. Anh ấy cộng t&amp;aacute;c với Cindy (IU), ng&amp;ocirc;i sao nhạc Pop v&amp;agrave; Tak Ye Ji (Gong Hyo Jin), đạo diễn &amp;acirc;m nhạc v&amp;agrave; Ra Jun Mo (Cha Tae Hyun) l&amp;agrave; 1 đạo diễn gạo cội kh&amp;aacute;c.&lt;/p&gt;', NULL, 0, 0, 2, NULL, '2015-05-25 21:44:33', '2015-06-09 14:42:40', NULL, 'active', '', 'hot', NULL, NULL, 'yes', '{"id":"59","title":"H\\u1eadu Tr\\u01b0\\u1eddng","description":"\\u0110\\u00e2y l\\u00e0 b\\u1ed9 phim k\\u1ec3 v\\u1ec1 h\\u1eadu tr\\u01b0\\u1eddng, nh\\u1eefng g\\u00ec x\\u1ea3y ra ph\\u00eda sau m\\u00e0n \\u1ea3nh c\\u1ee7a c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh truy\\u1ec1n h\\u00ecnh (variety show). Baek Seung Chan (Kim Soo Hyun) trong vai 1 \\u0111\\u1ea1o di\\u1ec5n mu\\u1ed1n th\\u1ef1c hi\\u1ec7n 1 ch\\u01b0\\u01a1ng tr\\u00ecnh l\\u1edbn. Anh \\u1ea5y c\\u1ed9ng t\\u00e1c v\\u1edbi Cindy (IU), ng\\u00f4i sao nh\\u1ea1c Pop v\\u00e0 Tak Ye Ji (Gong Hyo Jin), \\u0111\\u1ea1o di\\u1ec5n \\u00e2m","keywords":"Hau Truong","customize":""}', NULL, 1, 1),
(25, 60, 'Survivor 2015', 'survivor-2015', 'A Foreign Service Officer in London tries to prevent a terrorist attack set to hit New York, but is forced to go on the run when she is framed for crimes she did not commit.', 'Survivor 2015', 'survivor-2015', '/upload/image/film/survivor.jpg', '/upload/image/film/survivor_poster.jpg', '96 phút', 2015, 'movies', 'yes', '&lt;p&gt;A State Department employee newly posted to the American embassy in London is charged with stopping terrorists from getting into the U.S. That puts her right in the line of fire and she is targeted for death and framed for crimes. Discredited, she is forced to go on the run while she tries to clear her name and stop a large-scale terrorist attack set for New Year''s Eve in Times Square.&lt;/p&gt;', NULL, 0, 0, 1, NULL, '2015-06-17 08:43:20', '2016-05-20 17:13:44', NULL, 'active', '5.5', 'new', NULL, NULL, 'yes', '{"id":"60","title":"Survivor 2015","description":"A Foreign Service Officer in London tries to prevent a terrorist attack set to hit New York, but is forced to go on the run when she is framed for crimes she did not commit.","keywords":"Survivor 2015","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1),
(26, 62, 'Jurassic Park 3', 'jurassic-park-3', 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.', 'Jurassic Park 3', 'jurassic-park-3', '/upload/image/film/jurassic-park-3.jpg', '/upload/image/film/jurassic-park-3-poster.jpg', '92', 2015, 'series', 'yes', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;A decidedly odd couple with ulterior motives convince Dr. Alan Grant to go to Isla Sorna (the second InGen dinosaur lab.), resulting in an unexpected landing...and unexpected new inhabitants on the island.&lt;/p&gt;', NULL, 0, 0, 1, NULL, '2015-06-29 15:42:41', '2016-05-02 02:37:55', NULL, 'active', '5.9', 'new', NULL, NULL, 'yes', '{"id":"62","title":"Jurassic Park 3","description":"During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.","keywords":"Jurassic Park 3","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1),
(27, 66, 'Tân Tam Quốc Diễn Nghĩa 2010', 'tan-tam-quoc-dien-nghia-2010', 'Bắt đầu viết kịch bản từ năm 2004, qua 5 lần chỉnh sửa, chính thức bấm máy vào tháng 9/2008. Bộ phim quy tụ lực lượng diễn viên hùng hậu với dàn sao đến từ cả Trung Quốc đại lục, Hongkong và Đài Loan với kinh phí đầu tư khổng lồ. Bộ phim nói về triều đại Đông Hán Võ Đế tới Tây Tấn Võ Đế, lịch sử kéo dài gần 100 năm. ', 'Three Kingdoms', 'three-kingdoms', '/upload/image/film/tam-quoc-dien-nghia-three-kingdoms-2010.png', '/upload/image/film/maxresdefault.jpg', '85 tập', 2015, 'movies', 'yes', '&lt;p&gt;Bắt đầu viết kịch bản từ năm 2004, qua 5 lần chỉnh sửa, ch&amp;iacute;nh thức bấm m&amp;aacute;y v&amp;agrave;o th&amp;aacute;ng 9/2008. Bộ phim quy tụ lực lượng diễn vi&amp;ecirc;n h&amp;ugrave;ng hậu với d&amp;agrave;n sao đến từ cả Trung Quốc đại lục, Hongkong v&amp;agrave; Đ&amp;agrave;i Loan với kinh ph&amp;iacute; đầu tư khổng lồ. Bộ phim n&amp;oacute;i về triều đại Đ&amp;ocirc;ng H&amp;aacute;n V&amp;otilde; Đế tới T&amp;acirc;y Tấn V&amp;otilde; Đế, lịch sử k&amp;eacute;o d&amp;agrave;i gần 100 năm. Bộ phim n&amp;agrave;y căn cứ v&amp;agrave;o 1 trong tứ đại danh t&amp;aacute;c của Trung Quốc - &quot;Tam Quốc Diễn Nghĩa&quot;, cải bi&amp;ecirc;n th&amp;agrave;nh phim. Tam Quốc l&amp;agrave; thời đại chiến loạn chiến sự li&amp;ecirc;n mi&amp;ecirc;n, kh&amp;oacute;i lửa chiến tranh tr&amp;agrave;n lan khắp nơi. Đồng thời cũng l&amp;agrave; thời kỳ c&amp;oacute; nhiều nh&amp;acirc;n t&amp;agrave;i xuất hiện. Những vị mưu sĩ t&amp;agrave;i ba, những nh&amp;agrave; qu&amp;acirc;n sự lỗi lạc đ&amp;atilde; c&amp;oacute; dịp ph&amp;ocirc; triển h&amp;ugrave;ng t&amp;agrave;i đại lược, tr&amp;iacute; tuệ dăm thước của m&amp;igrave;nh trong thời đại chiến loạn. Đ&amp;uacute;ng như c&amp;acirc;u &quot;Loạn thế xuất anh t&amp;agrave;i&quot;.Ch&amp;uacute; trọng tới việc tranh h&amp;ugrave;ng của Ngụy - Thục - Ng&amp;ocirc; tam h&amp;ugrave;ng. Mi&amp;ecirc;u tả r&amp;otilde; t&amp;iacute;nh c&amp;aacute;ch của từng nh&amp;acirc;n vật theo đ&amp;uacute;ng nguy&amp;ecirc;n t&amp;aacute;c :&lt;/p&gt;\r\n&lt;p&gt;* Lưu Bị - Ch&amp;iacute;nh thống hiền qu&amp;acirc;n.&lt;br /&gt;* T&amp;agrave;o Th&amp;aacute;o - Gi&amp;aacute;p thi&amp;ecirc;n tứ linh chư hầu.&lt;br /&gt;* Gia C&amp;aacute;t Lượng - Tầm nh&amp;igrave;n cao xa, đo&amp;aacute;n việc như thần.&lt;br /&gt;* Quan Vũ - Ph&amp;aacute; ngũ quan, tr&amp;atilde;m lục tướng, đơn đao ph&amp;oacute; hội, thuỷ yểm, nghĩa th&amp;iacute;ch T&amp;agrave;o Th&amp;aacute;o...&lt;br /&gt;* Ngo&amp;agrave;i ra : Triệu V&amp;acirc;n trung th&amp;agrave;nh; Trương Phi lỗ m&amp;atilde;ng; Chu Du ganh tị; Lỗ T&amp;uacute;c trung hậu; Tư M&amp;atilde; &amp;Yacute; th&amp;acirc;m trầm... đều được mi&amp;ecirc;u tả th&amp;agrave;nh c&amp;ocirc;ng.&lt;/p&gt;\r\n&lt;p&gt;Những cảnh chiến tranh được ph&amp;aacute;c hoạ lại 1 c&amp;aacute;ch quy m&amp;ocirc; với trận chiến Dục Thủy, X&amp;iacute;ch B&amp;iacute;ch...Tiết tấu dồn dập, n&amp;aacute;o nhiệt, tạo cảm gi&amp;aacute;c cho người xem tựa hồ như đang trực tiếp tham gia với chiến sự của Tam Quốc.&lt;/p&gt;\r\n&lt;p&gt;Bộ phim n&amp;agrave;y từ Bi&amp;ecirc;n đạo, thu h&amp;igrave;nh, mỹ thuật đều được thực hiện bởi tổ quay phim v&amp;agrave; đội ngũ diễn vi&amp;ecirc;n nổi tiếng ở Trung Quốc.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', NULL, 0, 0, 1, NULL, '2016-05-07 05:27:27', '2016-05-07 05:36:11', NULL, 'active', '', 'new', NULL, NULL, 'yes', '{"id":"66","title":"T\\u00e2n Tam Qu\\u1ed1c Di\\u1ec5n Ngh\\u0129a 2010","description":"B\\u1eaft \\u0111\\u1ea7u vi\\u1ebft k\\u1ecbch b\\u1ea3n t\\u1eeb n\\u0103m 2004, qua 5 l\\u1ea7n ch\\u1ec9nh s\\u1eeda, ch\\u00ednh th\\u1ee9c b\\u1ea5m m\\u00e1y v\\u00e0o th\\u00e1ng 9\\/2008. B\\u1ed9 phim quy t\\u1ee5 l\\u1ef1c l\\u01b0\\u1ee3ng di\\u1ec5n vi\\u00ean h\\u00f9ng h\\u1eadu v\\u1edbi d\\u00e0n sao \\u0111\\u1ebfn t\\u1eeb c\\u1ea3 Trung Qu\\u1ed1c \\u0111\\u1ea1i l\\u1ee5c, Hongkong v\\u00e0 \\u0110\\u00e0i Loan v\\u1edbi kinh ph\\u00ed \\u0111\\u1ea7u t\\u01b0 kh\\u1ed5ng l\\u1ed3. B\\u1ed9 phim n\\u00f3i v\\u1ec1 tri\\u1ec1u \\u0111\\u1ea1i \\u0110\\u00f4ng H\\u00e1n V\\u00f5 \\u0110\\u1ebf t\\u1edbi T\\u00e2y T\\u1ea5n V\\u00f5 \\u0110\\u1ebf, l\\u1ecbch s\\u1eed k\\u00e9o d\\u00e0i g\\u1ea7n 100 n\\u0103m. ","keywords":"Tan Tam Quoc Dien Nghia 2010","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1),
(28, 71, 'Cuộc Đua Tuyệt Chủng', 'cuoc-dua-tuyet-chung', 'Phim nói về hàng loạt các nghiên cứu bí mật nhằm ngăn chặn sự tuyệt chủng của các loài động vật quý hiếm. Phim có sự tham gia của các diễn viên như Elon Musk, Joel Sartore, Louie Psihoyos...', 'Racing Extinction', 'racing-extinction', '/upload/image/film/re_festival_poster.jpg', '/upload/image/film/racing-extinction-poster.jpg', '90 phút', 2015, 'movies', 'yes', '', NULL, 0, 0, 1, NULL, '2016-05-22 05:43:30', '2016-05-22 05:46:17', NULL, 'active', '', 'new', NULL, NULL, 'yes', '{"id":71,"title":"Cu\\u1ed9c \\u0110ua Tuy\\u1ec7t Ch\\u1ee7ng","description":"Phim n\\u00f3i v\\u1ec1 h\\u00e0ng lo\\u1ea1t c\\u00e1c nghi\\u00ean c\\u1ee9u b\\u00ed m\\u1eadt nh\\u1eb1m ng\\u0103n ch\\u1eb7n s\\u1ef1 tuy\\u1ec7t ch\\u1ee7ng c\\u1ee7a c\\u00e1c lo\\u00e0i \\u0111\\u1ed9ng v\\u1eadt qu\\u00fd hi\\u1ebfm. Phim c\\u00f3 s\\u1ef1 tham gia c\\u1ee7a c\\u00e1c di\\u1ec5n vi\\u00ean nh\\u01b0 Elon Musk, Joel Sartore, Louie Psihoyos...","keywords":"Cuoc Dua Tuyet Chung","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1),
(29, 73, 'CHIẾN TRANH GIỮA CÁC VÌ SAO 7: THẦN LỰC THỨC TỈNH', 'chien-tranh-giua-cac-vi-sao-7-than-luc-thuc-tinh', 'Phim lấy bối cảnh 30 năm sau sự kiện của Star Wars phần IV – Return of the Jedi (Sự trở lại của Jedi). Bộ phim sẽ theo chân các nhân vật quen thuộc như Luke, Han Solo, Công chúa Leia… đến một hành tinh lạ với mục đích thu thập mẫu vật. ', 'Star Wars: Episode VII - The Force Awakens (2015)', 'star-wars-episode-vii-the-force-awakens-2015', '/upload/image/film/startwars.jpg', '/upload/image/film/star-wars1.jpg', '136 phút', 2015, 'movies', 'yes', '&lt;p&gt;Phim lấy bối cảnh 30 năm sau sự kiện của Star Wars phần IV &amp;ndash; Return of the Jedi (Sự trở lại của Jedi). Bộ phim sẽ theo ch&amp;acirc;n c&amp;aacute;c nh&amp;acirc;n vật quen thuộc như Luke, Han Solo, C&amp;ocirc;ng ch&amp;uacute;a Leia&amp;hellip; đến một h&amp;agrave;nh tinh lạ với mục đ&amp;iacute;ch thu thập mẫu vật. Nhưng họ kh&amp;ocirc;ng ngờ m&amp;igrave;nh sắp đ&amp;aacute;nh thức một kẻ th&amp;ugrave; nguy hiểm bậc nhất vũ trụ hiện đang ngủ y&amp;ecirc;n nơi đ&amp;acirc;y. Star Wars: The Force Awakens sẽ được chỉ đạo bởi một người mới, đạo diễn J.J. Abrams, thay cho người s&amp;aacute;ng tạo George Lucas, v&amp;agrave; sẽ mở đầu cho bộ 3 phần phim tiếp theo của loạt phim n&amp;agrave;y.&lt;/p&gt;', NULL, 0, 0, 5, NULL, '2016-05-22 06:54:57', '2016-07-15 06:52:56', NULL, 'active', '', 'finish', NULL, NULL, 'yes', '{"id":"73","title":"CHI\\u1ebeN TRANH GI\\u1eeeA C\\u00c1C V\\u00cc SAO 7: TH\\u1ea6N L\\u1ef0C TH\\u1ee8C T\\u1ec8NH","description":"Phim l\\u1ea5y b\\u1ed1i c\\u1ea3nh 30 n\\u0103m sau s\\u1ef1 ki\\u1ec7n c\\u1ee7a Star Wars ph\\u1ea7n IV \\u2013 Return of the Jedi (S\\u1ef1 tr\\u1edf l\\u1ea1i c\\u1ee7a Jedi). B\\u1ed9 phim s\\u1ebd theo ch\\u00e2n c\\u00e1c nh\\u00e2n v\\u1eadt quen thu\\u1ed9c nh\\u01b0 Luke, Han Solo, C\\u00f4ng ch\\u00faa Leia\\u2026 \\u0111\\u1ebfn m\\u1ed9t h\\u00e0nh tinh l\\u1ea1 v\\u1edbi m\\u1ee5c \\u0111\\u00edch thu th\\u1eadp m\\u1eabu v\\u1eadt. ","keywords":"CHIEN TRANH GIUA CAC VI SAO 7: THAN LUC THUC TINH","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', '', 1, 1),
(30, 74, 'Người về từ cõi chết', 'nguoi-ve-tu-coi-chet', 'The Revenant dựa trên câu chuyện có thật, phim kể về người thợ săn Hugh Glass (Leonardo Dicaprio thủ vai). Sau một trận chiến đẫm máu với những người Mỹ bản địa, Hugh bị thương và bị đồng đội tàn nhẫn bỏ lại trong khu núi tuyết giá rét. Từ đó, Hugh Glass phải làm tất cả mọi thứ để có thể tồn tại giữa cái lạnh tàn bạo, những động vật ăn thịt và chiến tranh với những bộ lạc nơi vùng núi hoang vu. ', 'The Revenant (2015)', 'the-revenant-2015', '/upload/image/film/poster.medium.jpg', '/upload/image/film/the-revenant-nguoi-ve-tu-coi-chet-54483.jpg', '151 phút', 2015, 'movies', 'yes', '&lt;p&gt;&lt;strong&gt;The Revenant&lt;/strong&gt; dựa tr&amp;ecirc;n c&amp;acirc;u chuyện c&amp;oacute; thật, phim kể về người thợ săn &lt;strong&gt;Hugh Glass&lt;/strong&gt; (Leonardo Dicaprio thủ vai). Sau một trận chiến đẫm m&amp;aacute;u với những người Mỹ bản địa, Hugh bị thương v&amp;agrave; bị đồng đội t&amp;agrave;n nhẫn bỏ lại trong khu n&amp;uacute;i tuyết gi&amp;aacute; r&amp;eacute;t. Từ đ&amp;oacute;, Hugh Glass phải l&amp;agrave;m tất cả mọi thứ để c&amp;oacute; thể tồn tại giữa c&amp;aacute;i lạnh t&amp;agrave;n bạo, những động vật ăn thịt v&amp;agrave; chiến tranh với những bộ lạc nơi v&amp;ugrave;ng n&amp;uacute;i hoang vu. &lt;br /&gt;&lt;br /&gt;Nhờ &amp;yacute; ch&amp;iacute; ki&amp;ecirc;n cường, người thợ săn đ&amp;atilde; sống s&amp;oacute;t một c&amp;aacute;ch kỳ diệu, một m&amp;igrave;nh băng qua qu&amp;atilde;ng đường d&amp;agrave;i hơn &lt;strong&gt;3.000 dặm&lt;/strong&gt; (4.828 km) để trở về v&amp;agrave; trả th&amp;ugrave; được &lt;strong&gt;John Fitzgerald&lt;/strong&gt; (Tom Hardy thủ vai) &amp;ndash; kẻ từng l&amp;agrave; bạn của m&amp;igrave;nh năm xưa.&lt;br /&gt;&lt;br /&gt;Điều đặc biệt l&amp;agrave; bộ phim n&amp;agrave;y quay tại một địa điểm ngo&amp;agrave;i trời v&amp;ocirc; c&amp;ugrave;ng hoang vu hẻo l&amp;aacute;nh, chưa ai đặt ch&amp;acirc;n tới, v&amp;agrave; chỉ sử dụng &amp;aacute;nh s&amp;aacute;ng tự nhi&amp;ecirc;n.&lt;/p&gt;', NULL, 0, 0, 5, NULL, '2016-05-22 08:58:23', '2016-07-15 04:10:22', NULL, 'pending', '', 'finish', NULL, NULL, 'no', '{"id":"74","title":"Ng\\u01b0\\u1eddi v\\u1ec1 t\\u1eeb c\\u00f5i ch\\u1ebft","description":"The Revenant d\\u1ef1a tr\\u00ean c\\u00e2u chuy\\u1ec7n c\\u00f3 th\\u1eadt, phim k\\u1ec3 v\\u1ec1 ng\\u01b0\\u1eddi th\\u1ee3 s\\u0103n Hugh Glass (Leonardo Dicaprio th\\u1ee7 vai). Sau m\\u1ed9t tr\\u1eadn chi\\u1ebfn \\u0111\\u1eabm m\\u00e1u v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi M\\u1ef9 b\\u1ea3n \\u0111\\u1ecba, Hugh b\\u1ecb th\\u01b0\\u01a1ng v\\u00e0 b\\u1ecb \\u0111\\u1ed3ng \\u0111\\u1ed9i t\\u00e0n nh\\u1eabn b\\u1ecf l\\u1ea1i trong khu n\\u00fai tuy\\u1ebft gi\\u00e1 r\\u00e9t. T\\u1eeb \\u0111\\u00f3, Hugh Glass ph\\u1ea3i l\\u00e0m t\\u1ea5t c\\u1ea3 m\\u1ecdi th\\u1ee9 \\u0111\\u1ec3 c\\u00f3 th\\u1ec3 t\\u1ed3n t\\u1ea1i gi\\u1eefa c\\u00e1i l\\u1ea1nh t\\u00e0n b\\u1ea1o, nh\\u1eefng \\u0111\\u1ed9ng v\\u1eadt \\u0103n th\\u1ecbt v\\u00e0 chi\\u1ebfn tranh v\\u1edbi nh\\u1eefng b\\u1ed9 l\\u1ea1c n\\u01a1i v\\u00f9ng n\\u00fai hoang vu. ","keywords":"Nguoi ve tu coi chet","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', '', 1, 1),
(31, 82, 'Mật vụ KINGSMAN', 'mat-vu-kingsman', 'Phim Mật vụ Kingsman kể về một tổ chức điệp viên cực kỳ bí mật trong quá trình tuyển mộ Eggs một đứa trẻ đường phố không có học thức gì nhưng cực thông minh và có tố chất trở thành một điệp viên công nghệ cao', 'Kingsman: The Secret Service (2015)', 'kingsman-the-secret-service-2015', '/upload/image/film/mat-vu-kingsman.jpg', '/upload/image/film/1-d1211.png', '129 phút', 2015, 'movies', 'yes', '&lt;p&gt;Phim Mật vụ Kingsman kể về một tổ chức điệp vi&amp;ecirc;n cực kỳ b&amp;iacute; mật trong qu&amp;aacute; tr&amp;igrave;nh tuyển mộ Eggs một đứa trẻ đường phố kh&amp;ocirc;ng c&amp;oacute; học thức g&amp;igrave; nhưng cực th&amp;ocirc;ng minh v&amp;agrave; c&amp;oacute; tố chất trở th&amp;agrave;nh một điệp vi&amp;ecirc;n c&amp;ocirc;ng nghệ cao, một người c&amp;oacute; triển vọng v&amp;agrave;o chương tr&amp;igrave;nh đ&amp;agrave;o tạo điệp vi&amp;ecirc;n v&amp;ocirc; c&amp;ugrave;ng khắc nghiệt nhằm đối ph&amp;oacute; với c&amp;aacute;c hiểm họa to&amp;agrave;n cầu phần tử khủng bố l&amp;agrave; thi&amp;ecirc;n t&amp;agrave;i c&amp;ocirc;ng nghệ biến chất...&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\r\n&lt;div&gt;&lt;img src=&quot;http://bomtan.biz/upload/image/film/93e902df-b5a2-45c8-bcb9-1be0c2ac1cea.jpg&quot; alt=&quot;&quot; width=&quot;600&quot; height=&quot;339&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;&lt;br /&gt;&lt;br /&gt;Liệu qu&amp;yacute; &amp;ocirc;ng mật vụ Harry d&amp;agrave;y dặn kinh nghiệm v&amp;agrave; nữ điệp vi&amp;ecirc;n trẻ tuổi Roxy c&amp;oacute; thể huấn luyện t&amp;ecirc;n điệp vi&amp;ecirc;n kh&amp;oacute; ưa n&amp;agrave;y để c&amp;ugrave;ng thực hiện nhiệm vụ chống lại &amp;aacute;c nh&amp;acirc;n Richmond Valentine đang &amp;acirc;m mưu x&amp;oacute;a sổ phần lớn d&amp;acirc;n cư tr&amp;ecirc;n tr&amp;aacute;i đất th&amp;agrave;nh một thế giới mới?&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\r\n&lt;div&gt;&lt;img src=&quot;http://bomtan.biz/upload/image/film/hinh_anh_kingsman_the_secret_service_10.jpg&quot; alt=&quot;&quot; width=&quot;612&quot; height=&quot;344&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', NULL, 0, 0, 1, NULL, '2016-05-22 09:05:22', '2016-05-22 09:49:28', NULL, 'pending', '7.8', 'new', NULL, NULL, 'no', '{"id":"82","title":"M\\u1eadt v\\u1ee5 KINGSMAN","description":"Phim M\\u1eadt v\\u1ee5 Kingsman k\\u1ec3 v\\u1ec1 m\\u1ed9t t\\u1ed5 ch\\u1ee9c \\u0111i\\u1ec7p vi\\u00ean c\\u1ef1c k\\u1ef3 b\\u00ed m\\u1eadt trong qu\\u00e1 tr\\u00ecnh tuy\\u1ec3n m\\u1ed9 Eggs m\\u1ed9t \\u0111\\u1ee9a tr\\u1ebb \\u0111\\u01b0\\u1eddng ph\\u1ed1 kh\\u00f4ng c\\u00f3 h\\u1ecdc th\\u1ee9c g\\u00ec nh\\u01b0ng c\\u1ef1c th\\u00f4ng minh v\\u00e0 c\\u00f3 t\\u1ed1 ch\\u1ea5t tr\\u1edf th\\u00e0nh m\\u1ed9t \\u0111i\\u1ec7p vi\\u00ean c\\u00f4ng ngh\\u1ec7 cao","keywords":"Mat vu KINGSMAN","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1),
(32, 91, 'Dị nhân: Khải huyền', 'di-nhan-khai-huyen', 'X-Men: Apocalypse là bộ phim siêu anh hùng dựa trên X-Men, những nhân vật xuất hiện trong Marvel Comics. Bộ phim là phần tiếp theo của X-Men: Days of Future Past và là phần thứ 9 trong loạt phim X-Men.', 'X-Men: Apocalypse', 'x-men-apocalypse', '/upload/image/film/mv5bmju1odm1mzyxn15bml5banbnxkftztgwota4nde2ode._v1_sx640_sy720_.jpg', '/upload/image/film/561d41eca2c3f3bfd09d9b04582ea2c2-x-men-apocalypse-latino-1463774848.jpg', '144 phút', 2015, 'movies', 'no', '&lt;p&gt;&lt;strong&gt;Apocalypse&lt;/strong&gt; l&amp;agrave; dị nh&amp;acirc;n đầu ti&amp;ecirc;n v&amp;agrave; h&amp;ugrave;ng mạnh nhất của vũ trụ X-Men, đ&amp;atilde; t&amp;iacute;ch lũy được rất nhiều quyền năng đột biến kh&amp;aacute;c nhau, trở th&amp;agrave;nh kẻ bất tử v&amp;agrave; bất khả chiến bại. Sau khi tỉnh dậy từ giấc ngủ h&amp;agrave;ng ng&amp;agrave;n năm, hắn cảm thấy thất vọng với thế giới n&amp;agrave;y v&amp;agrave; năng lực đ&amp;aacute;ng sợ nhất của hắn l&amp;agrave; khống chế những người kh&amp;aacute;c v&amp;agrave; biến họ th&amp;agrave;nh kỵ sĩ của m&amp;igrave;nh, nhằm tẩy sạch nh&amp;acirc;n loại v&amp;agrave; tạo ra một trật tự thế giới mới v&amp;agrave; qua đ&amp;oacute;, hắn sẽ trị v&amp;igrave; n&amp;oacute;. Số phận của Tr&amp;aacute;i Đất phải đối mặt với t&amp;igrave;nh huống ng&amp;agrave;n c&amp;acirc;n treo sợi t&amp;oacute;c, Raven c&amp;ugrave;ng với sự gi&amp;uacute;p đỡ của Gi&amp;aacute;o Sư X buộc phải dẫn dắt một đội X-Men trẻ tuổi nhằm chống lại kẻ th&amp;ugrave; lớn nhất từ trước đến nay v&amp;agrave; cứu rỗi nh&amp;acirc;n loại khỏi sự diệt chủng.&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;\r\n&lt;div&gt;&lt;img src=&quot;https://images2-focus-opensocial.googleusercontent.com/gadgets/proxy?container=focus&amp;amp;gadget=a&amp;amp;no_expand=1&amp;amp;refresh=604800&amp;amp;url=http://image.phimmoi.net/post/2016/05/21/amazing-x-men-apocalypse-movie-4k-wallpaper-680x425.jpg&quot; alt=&quot;Dị Nh&amp;acirc;n 7: Cuộc chiến chống Apocalypse - X-Men: Apocalypse&quot; /&gt;&lt;/div&gt;\r\n&lt;p&gt;&lt;br /&gt;&lt;br /&gt;C&amp;acirc;u chuyện trong &lt;strong&gt;X-Men: Apocalypse&lt;/strong&gt; diễn ra 10 năm sau c&amp;aacute;c sự kiện trong &lt;strong&gt;X-Men: Days of Future Past&lt;/strong&gt;, thiết lập lại to&amp;agrave;n bộ thời gian của bộ truyện. L&amp;uacute;c n&amp;agrave;y Magneto đang trốn ở Ba Lan, sống một cuộc sống b&amp;igrave;nh thường với người phụ nữ &amp;ocirc;ng y&amp;ecirc;u. Nhưng sự mất m&amp;aacute;t của c&amp;ocirc; ấy đẩy &amp;ocirc;ng v&amp;agrave;o thế giới của sự tuyệt vọng v&amp;agrave; b&amp;oacute;ng tối. &amp;Ocirc;ng ta t&amp;igrave;m đến &lt;strong&gt;Apocalypse&lt;/strong&gt; như một vị cứu tinh, một vị thần v&amp;agrave; cảm thấy m&amp;atilde;n nguyện khi được ở b&amp;ecirc;n &amp;ocirc;ng ta c&amp;ugrave;ng 3 th&amp;agrave;nh vi&amp;ecirc;n kh&amp;aacute;c trong nh&amp;oacute;m &lt;strong&gt;Tứ kỵ&lt;/strong&gt; gồm &lt;strong&gt;Storm, Psylocke v&amp;agrave; Archangel &lt;/strong&gt;.&lt;/p&gt;', NULL, 0, 0, 1, NULL, '2016-05-22 15:31:41', '2016-05-23 04:32:59', NULL, 'pending', '7.7', 'hot', NULL, NULL, 'yes', '{"id":"91","title":"D\\u1ecb nh\\u00e2n: Kh\\u1ea3i huy\\u1ec1n","description":"X-Men: Apocalypse l\\u00e0 b\\u1ed9 phim si\\u00eau anh h\\u00f9ng d\\u1ef1a tr\\u00ean X-Men, nh\\u1eefng nh\\u00e2n v\\u1eadt xu\\u1ea5t hi\\u1ec7n trong Marvel Comics. B\\u1ed9 phim l\\u00e0 ph\\u1ea7n ti\\u1ebfp theo c\\u1ee7a X-Men: Days of Future Past v\\u00e0 l\\u00e0 ph\\u1ea7n th\\u1ee9 9 trong lo\\u1ea1t phim X-Men.","keywords":"Di nhan: Khai huyen","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1),
(33, 99, 'Naruto Shippuuden', 'naruto-shippuuden', 'Sau khi huấn luyện 2 năm rưỡi với Jiraiya, Naruto trở về làng Lá, đoàn tụ với những người bạn cậu đã chia tay, và lập lại Nhóm 7, giờ được gọi là Nhóm Kakashi, với Sai thế chỗ Sasuke. Tất cả những người bạn của Naruto đều đã trưởng thành và thăng cấp.', 'Naruto Shippuuden', 'naruto-shippuuden', '/upload/image/film/4984b3f77c488fd8f81009b51687c392_1364544877.jpg', '/upload/image/film/cf5b1c35b7629f8a8ce618a2a18e586e_1396405819.jpg', '461 tập', 2015, 'movies', 'yes', '&lt;p&gt;Naruto (&amp;mdash;ナルト&amp;mdash; NARUTO?) l&amp;agrave; loạt manga Nhật Bản bằng văn bản v&amp;agrave; minh họa bởi t&amp;aacute;c giả Kishimoto Masashi, đ&amp;atilde; được dựng th&amp;agrave;nh anime (phim hoạt h&amp;igrave;nh Nhật). Nh&amp;acirc;n vật ch&amp;iacute;nh l&amp;agrave; Uzumaki Naruto, một thiếu ni&amp;ecirc;n ồn &amp;agrave;o, hiếu động, một ninja lu&amp;ocirc;n muốn t&amp;igrave;m c&amp;aacute;ch khẳng định m&amp;igrave;nh để được mọi người c&amp;ocirc;ng nhận, rất muốn trở th&amp;agrave;nh Hokage (Hỏa Ảnh) - người l&amp;atilde;nh đạo ninja cả l&amp;agrave;ng, được tất cả mọi người k&amp;iacute;nh trọng. Kishimoto ban đầu đ&amp;atilde; ph&amp;aacute;c hoạ Naruto trong một ấn bản Akamaru Jump v&amp;agrave;o th&amp;aacute;ng 8 năm 1997.[2] Sự kh&amp;aacute;c biệt ở chỗ Naruto l&amp;agrave; con trai của Hồ Li Ch&amp;iacute;n Đu&amp;ocirc;i thay v&amp;igrave; l&amp;agrave; người chứa đựng, v&amp;agrave; c&amp;acirc;u chuyện được đặt trong bối cảnh hiện đại hơn.[3] Phi&amp;ecirc;n bản ban đầu của Naruto n&amp;agrave;y đ&amp;atilde; c&amp;oacute; khả năng biến th&amp;agrave;nh một phụ nữ quyến rũ &amp;ndash; nhưng khi cậu ta l&amp;agrave;m vậy, một c&amp;aacute;i đu&amp;ocirc;i c&amp;aacute;o xuất hiện. Kishimoto sau đ&amp;oacute; mới s&amp;aacute;ng t&amp;aacute;c lại c&amp;acirc;u chuyện th&amp;agrave;nh hiện trạng, v&amp;agrave; được ph&amp;aacute;t h&amp;agrave;nh lần đầu bởi Shueisha v&amp;agrave;o năm 1999 trong ấn bản thứ 43 của tạp ch&amp;iacute; Shonen Jump H&amp;agrave;ng tuần tại Nhật. Đến tập 36, bộ manga đ&amp;atilde; b&amp;aacute;n được hơn 71 triệu bản tại Nhật.[4] Tập truyện được cấp giấy ph&amp;eacute;p cho việc ph&amp;aacute;t h&amp;agrave;nh bản dịch sang tiếng Anh bởi Viz Media. Được đăng nhiều kỳ tr&amp;ecirc;n tạp ch&amp;iacute; Shonen Jump, Naruto đ&amp;atilde; trở th&amp;agrave;nh loạt manga b&amp;aacute;n chạy nhất của c&amp;ocirc;ng ty.[5] Cho đến 2 th&amp;aacute;ng 4 năm 2008, 28 tập đầu ti&amp;ecirc;n của bộ truyện đ&amp;atilde; c&amp;oacute; mặt trong tiếng Anh.&lt;/p&gt;', NULL, 0, 0, 1, NULL, '2016-05-24 15:22:21', '2016-05-24 16:24:57', NULL, 'pending', '', 'finish', NULL, NULL, 'yes', '{"id":"99","title":"Naruto Shippuuden","description":"Sau khi hu\\u1ea5n luy\\u1ec7n 2 n\\u0103m r\\u01b0\\u1ee1i v\\u1edbi Jiraiya, Naruto tr\\u1edf v\\u1ec1 l\\u00e0ng L\\u00e1, \\u0111o\\u00e0n t\\u1ee5 v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi b\\u1ea1n c\\u1eadu \\u0111\\u00e3 chia tay, v\\u00e0 l\\u1eadp l\\u1ea1i Nh\\u00f3m 7, gi\\u1edd \\u0111\\u01b0\\u1ee3c g\\u1ecdi l\\u00e0 Nh\\u00f3m Kakashi, v\\u1edbi Sai th\\u1ebf ch\\u1ed7 Sasuke. T\\u1ea5t c\\u1ea3 nh\\u1eefng ng\\u01b0\\u1eddi b\\u1ea1n c\\u1ee7a Naruto \\u0111\\u1ec1u \\u0111\\u00e3 tr\\u01b0\\u1edfng th\\u00e0nh v\\u00e0 th\\u0103ng c\\u1ea5p.","keywords":"Naruto Shippuuden","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', NULL, 1, 1),
(34, 103, 'Cậu bé rừng xanh', 'cau-be-rung-xanh', 'Phim THE JUNGLE BOOK 2016 nói về chuyến phiêu lưu của Mowgli – một cậu bé mồ côi được đàn chó sói nuôi dưỡng trong rừng già Ấn Độ. Ngày qua ngày, Mowgli cảm thấy mình không còn được chào đón ở mái nhà tự nhiên này nữa,', 'The Jungle Book (2016)', 'the-jungle-book-2016', '/upload/image/film/cau-be-rung-xanh-the-jungle-book-201603165.jpg', '/upload/image/film/cau-be-rung-xanh-the-jungle-book-2016-201603726.jpg', '100 phút', 2016, 'movies', 'yes', '&lt;p&gt;Phim THE JUNGLE BOOK 2016 n&amp;oacute;i về chuyến phi&amp;ecirc;u lưu của Mowgli &amp;ndash; một cậu b&amp;eacute; mồ c&amp;ocirc;i được đ&amp;agrave;n ch&amp;oacute; s&amp;oacute;i nu&amp;ocirc;i dưỡng trong rừng gi&amp;agrave; Ấn Độ. Ng&amp;agrave;y qua ng&amp;agrave;y, Mowgli cảm thấy m&amp;igrave;nh kh&amp;ocirc;ng c&amp;ograve;n được ch&amp;agrave;o đ&amp;oacute;n ở m&amp;aacute;i nh&amp;agrave; tự nhi&amp;ecirc;n n&amp;agrave;y nữa, bởi một con hổ hung dữ t&amp;ecirc;n Shere Khan tuy&amp;ecirc;n bố sẽ ti&amp;ecirc;u diệt những sinh vật c&amp;oacute; khả năng g&amp;acirc;y n&amp;ecirc;n hiểm họa, sau khi hắn bị lo&amp;agrave;i người tấn c&amp;ocirc;ng. Buộc phải rời khỏi chốn dung th&amp;acirc;n duy nhất, Mogwli dấn bước v&amp;agrave;o một h&amp;agrave;nh tr&amp;igrave;nh kh&amp;aacute;m ph&amp;aacute;, với sự dẫn dắt của b&amp;aacute;o đen Bagheera v&amp;agrave; gấu Baloo. Tr&amp;ecirc;n đường đi, Mowgli đ&amp;atilde; gặp những sinh vật xấu xa: một con trăn t&amp;ecirc;n Kaa c&amp;oacute; &amp;aacute;nh mắt th&amp;ocirc;imi&amp;ecirc;n, con khỉ đột King Louie với khả năng n&amp;oacute;i tiếng người lưu lo&amp;aacute;t. Ch&amp;uacute;ng cố &amp;eacute;p buộc Mowgli h&amp;eacute; lộ c&amp;ocirc;ng thức tạo ra &amp;ldquo;b&amp;ocirc;ng hoa đỏ&amp;rdquo; lập l&amp;ograve;e, được gọi l&amp;agrave; Lửa.&lt;/p&gt;', NULL, 0, 0, 1, NULL, '2016-05-26 04:20:03', '2016-05-26 04:48:14', NULL, 'pending', '8.1', 'hot', NULL, NULL, 'yes', '{"id":"103","title":"C\\u1eadu b\\u00e9 r\\u1eebng xanh","description":"Phim THE JUNGLE BOOK 2016 n\\u00f3i v\\u1ec1 chuy\\u1ebfn phi\\u00eau l\\u01b0u c\\u1ee7a Mowgli \\u2013 m\\u1ed9t c\\u1eadu b\\u00e9 m\\u1ed3 c\\u00f4i \\u0111\\u01b0\\u1ee3c \\u0111\\u00e0n ch\\u00f3 s\\u00f3i nu\\u00f4i d\\u01b0\\u1ee1ng trong r\\u1eebng gi\\u00e0 \\u1ea4n \\u0110\\u1ed9. Ng\\u00e0y qua ng\\u00e0y, Mowgli c\\u1ea3m th\\u1ea5y m\\u00ecnh kh\\u00f4ng c\\u00f2n \\u0111\\u01b0\\u1ee3c ch\\u00e0o \\u0111\\u00f3n \\u1edf m\\u00e1i nh\\u00e0 t\\u1ef1 nhi\\u00ean n\\u00e0y n\\u1eefa,","keywords":"Cau be rung xanh","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 'https://youtu.be/ZrO2JGtEjo4', 1, 1),
(35, 142, 'Người hùng tia chớp (PHẦN 2)', 'nguoi-hung-tia-chop-phan-2', 'Phim tập trung vào khoa học Barry Allen, người trở thành siêu anh hùng với sức mạnh và tốc độ đáng kinh ngạc sau khi bị sét đánh do vụ nổ máy gia tốc Harrison Wells.', 'The Flash (Season 2) (2015)', 'the-flash-season-2-2015', '/upload/image/film/poster.medium.flash2015.jpg', '/upload/image/film/nguoi-hung-tia-chop.jpg', '23 tập', 2015, 'movies', 'yes', '&lt;p&gt;Phim Người H&amp;ugrave;ng Tia Chớp Phần 2 VietSub.&lt;strong&gt;&amp;nbsp;Người H&amp;ugrave;ng Tia Chớp&lt;/strong&gt; l&amp;agrave; một series phim truyền h&amp;igrave;nh Mỹ, được ph&amp;aacute;t triển bởi nh&amp;agrave; văn/nh&amp;agrave; sản xuất Greg Berlanti, Andrew Kreisberg v&amp;agrave; Geoff Johns, được ph&amp;aacute;t s&amp;oacute;ng tr&amp;ecirc;n The CW. Bộ phim dựa tr&amp;ecirc;n nh&amp;acirc;n vật Barry Allen / Flash, được xuất bản bởi DC Comics, một si&amp;ecirc;u anh h&amp;ugrave;ng trong trang phục chiến đấu với tốc độ di chuyển si&amp;ecirc;u ph&amp;agrave;m. Bộ phim kể về Allen, do Grant Gustin thủ vai, một cảnh s&amp;aacute;t điều tra hiện trường, người đạt được tốc độ si&amp;ecirc;u ph&amp;agrave;m. Anh sử dụng tốc độ si&amp;ecirc;u ph&amp;agrave;m của m&amp;igrave;nh để chống lại bọn tội phạm, ngay cả những người c&amp;oacute; si&amp;ecirc;u năng lực kh&amp;aacute;c.The Flash được c&amp;ocirc;ng chiếu tại Bắc Mỹ v&amp;agrave;o ng&amp;agrave;y 7 th&amp;aacute;ng 10 năm 2014. Bộ phim nhận được sự đ&amp;oacute;n nhận của c&amp;aacute;c nh&amp;agrave; ph&amp;ecirc; b&amp;igrave;nh v&amp;agrave; kh&amp;aacute;n giả. N&amp;oacute; đ&amp;atilde; gi&amp;agrave;nh được giải People''s Choice Award cho &quot;Favorite New TV Drama&quot; trong năm 2014. Ng&amp;agrave;y 11 th&amp;aacute;ng 1 năm 2015, The CW đ&amp;atilde; giới thiệu The Flash m&amp;ugrave;a thứ 2, dự kiến ra mắt v&amp;agrave;o ng&amp;agrave;y 6 th&amp;aacute;ng 10 năm 2015.&lt;/p&gt;\r\n&lt;p&gt;&lt;img title=&quot;Người H&amp;ugrave;ng Tia Chớp Phần 2&quot; src=&quot;http://media.bilutv.com/uploads/2015/11/640/nguoi-hung-tia-chop-phan-2-2015-201511151.jpg&quot; alt=&quot;&quot; /&gt;&lt;/p&gt;\r\n&lt;p&gt;Phim The Flash (Season 2) n&amp;oacute;i về tiến sĩ Stein (Victor Garber) v&amp;agrave; Cisco (Carlos Valdez) đang chuẩn bị &amp;ldquo;đ&amp;oacute;n tiếp&amp;rdquo; một vị kh&amp;aacute;ch kh&amp;ocirc;ng mời n&amp;agrave;o đ&amp;oacute; tại S.T.A.R. Labs. Đ&amp;oacute; ch&amp;iacute;nh l&amp;agrave; Jay l&amp;agrave; một nh&amp;acirc;n vật b&amp;iacute; ẩn đ&amp;atilde; đến Central city để cảnh b&amp;aacute;o cho Bary Allen v&amp;agrave; đội của anh về mối nguy hiểm sẽ xảy ra trong tương lai gần. B&amp;ecirc;n cạnh đ&amp;oacute;, một c&amp;acirc;u chuyện t&amp;igrave;nh y&amp;ecirc;u mới sẽ được viết l&amp;ecirc;n bởi Barry Allen v&amp;agrave; Patty Spivot , cộng sự của thanh tra Joe West thay cho Eddie đ&amp;atilde; chết.Trong phần 2 n&amp;agrave;y, kh&amp;aacute;n giả cũng sẽ được chi&amp;ecirc;m ngưỡng chiếc huy hiệu trắng huyền thoại thay v&amp;igrave; chiếc huy hiệu đỏ ch&amp;oacute;t tr&amp;ecirc;n ngực &amp;aacute;o của The Flash season 1. H&amp;atilde;y c&amp;ugrave;ng đ&amp;oacute;n xem bạn nh&amp;eacute;!&lt;/p&gt;\r\n&lt;p&gt;&lt;img title=&quot;Người H&amp;ugrave;ng Tia Chớp Phần 2 2015&quot; src=&quot;http://media.bilutv.com/uploads/2015/11/640/5466f58addd0e-201511347.jpg&quot; alt=&quot;&quot; /&gt;&lt;/p&gt;', NULL, 0, 0, 5, NULL, '2016-06-03 13:13:12', '2016-07-15 04:01:35', NULL, 'pending', '8.3', 'new', NULL, NULL, 'yes', '{"id":"142","title":"Ng\\u01b0\\u1eddi h\\u00f9ng tia ch\\u1edbp (PH\\u1ea6N 2)","description":"Phim t\\u1eadp trung v\\u00e0o khoa h\\u1ecdc Barry Allen, ng\\u01b0\\u1eddi tr\\u1edf th\\u00e0nh si\\u00eau anh h\\u00f9ng v\\u1edbi s\\u1ee9c m\\u1ea1nh v\\u00e0 t\\u1ed1c \\u0111\\u1ed9 \\u0111\\u00e1ng kinh ng\\u1ea1c sau khi b\\u1ecb s\\u00e9t \\u0111\\u00e1nh do v\\u1ee5 n\\u1ed5 m\\u00e1y gia t\\u1ed1c Harrison Wells.","keywords":"Nguoi hung tia chop (PHAN 2)","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', '', 1, 1),
(36, 135, 'Người hùng tia chớp test', 'nguoi-hung-tia-chop-test', 'Nội dugn về người hùng tia', 'Người hùng tia chớp test', 'nguoi-hung-tia-chop-test', 'upload/image//no_image.png', 'upload/image//no_image.png', '', 2015, 'movies', 'no', '&lt;p&gt;Nội dugn về người h&amp;ugrave;ng tia chớp&lt;/p&gt;', NULL, 0, 0, 5, NULL, '2016-07-15 04:07:08', '2016-07-15 04:16:21', NULL, 'active', '8', 'finish', NULL, NULL, 'yes', '{"id":"135","title":"Ng\\u01b0\\u1eddi h\\u00f9ng tia ch\\u1edbp test","description":"N\\u1ed9i dugn v\\u1ec1 ng\\u01b0\\u1eddi h\\u00f9ng tia","keywords":"Nguoi hung tia chop test","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `film_category`
--

CREATE TABLE `film_category` (
  `film_id` int(20) NOT NULL,
  `category_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_category`
--

INSERT INTO `film_category` (`film_id`, `category_id`) VALUES
(1, 1),
(1, 2),
(1, 5),
(1, 10),
(1, 11),
(2, 1),
(2, 2),
(2, 9),
(3, 1),
(3, 2),
(3, 8),
(4, 1),
(4, 2),
(4, 5),
(5, 1),
(6, 1),
(7, 1),
(8, 6),
(9, 4),
(9, 6),
(10, 9),
(10, 13),
(11, 1),
(11, 12),
(12, 1),
(13, 1),
(13, 8),
(14, 1),
(14, 11),
(15, 1),
(15, 12),
(16, 1),
(16, 4),
(16, 12),
(17, 8),
(18, 8),
(19, 1),
(19, 3),
(19, 4),
(20, 7),
(20, 10),
(20, 13),
(21, 4),
(21, 13),
(22, 1),
(22, 7),
(23, 4),
(23, 6),
(23, 10),
(24, 6),
(24, 10),
(25, 1),
(25, 8),
(26, 1),
(26, 2),
(26, 11),
(27, 7),
(28, 1),
(29, 1),
(30, 1),
(30, 9),
(30, 11),
(31, 1),
(32, 1),
(32, 2),
(32, 6),
(33, 3),
(34, 1),
(34, 6),
(35, 1),
(35, 6),
(35, 10),
(36, 1),
(36, 9);

-- --------------------------------------------------------

--
-- Table structure for table `film_country`
--

CREATE TABLE `film_country` (
  `film_id` int(20) NOT NULL,
  `country_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_country`
--

INSERT INTO `film_country` (`film_id`, `country_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 4),
(5, 7),
(6, 8),
(7, 4),
(7, 7),
(8, 3),
(8, 4),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 9),
(15, 9),
(16, 2),
(17, 7),
(18, 8),
(19, 8),
(20, 3),
(21, 2),
(22, 4),
(22, 7),
(23, 3),
(24, 3),
(25, 2),
(26, 2),
(27, 4),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 8),
(34, 2),
(35, 2),
(36, 2);

-- --------------------------------------------------------

--
-- Table structure for table `film_crew`
--

CREATE TABLE `film_crew` (
  `film_id` int(20) NOT NULL,
  `crew_id` int(20) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_crew`
--

INSERT INTO `film_crew` (`film_id`, `crew_id`, `type`) VALUES
(1, 5, 'actor'),
(1, 6, 'actor'),
(1, 7, 'actor'),
(1, 12, 'actor'),
(1, 53, 'director'),
(1, 54, 'director'),
(1, 55, 'director'),
(1, 56, 'actor'),
(1, 57, 'actor'),
(1, 58, 'actor'),
(1, 59, 'actor'),
(1, 60, 'actor'),
(1, 61, 'actor'),
(1, 62, 'actor'),
(1, 63, 'actor'),
(1, 64, 'actor'),
(1, 65, 'actor'),
(1, 66, 'actor'),
(1, 67, 'actor'),
(1, 68, 'actor'),
(1, 69, 'actor'),
(1, 70, 'actor'),
(1, 71, 'actor'),
(1, 72, 'actor'),
(1, 73, 'actor'),
(1, 74, 'actor'),
(1, 75, 'actor'),
(1, 76, 'producer'),
(1, 77, 'producer'),
(1, 78, 'producer'),
(2, 17, 'director'),
(2, 18, 'actor'),
(2, 19, 'actor'),
(2, 20, 'actor'),
(2, 21, 'actor'),
(2, 22, 'producer'),
(3, 23, 'director'),
(3, 24, 'actor'),
(3, 25, 'actor'),
(3, 26, 'actor'),
(3, 27, 'actor'),
(4, 30, 'director'),
(4, 31, 'actor'),
(4, 32, 'actor'),
(4, 33, 'actor'),
(4, 34, 'actor'),
(5, 37, 'director'),
(5, 38, 'actor'),
(5, 39, 'actor'),
(5, 40, 'actor'),
(5, 41, 'actor'),
(6, 42, 'director'),
(6, 43, 'actor'),
(6, 44, 'actor'),
(6, 45, 'actor'),
(6, 46, 'actor'),
(7, 40, 'actor'),
(7, 47, 'actor'),
(7, 48, 'actor'),
(7, 49, 'actor'),
(7, 50, 'actor'),
(7, 51, 'actor'),
(7, 52, 'actor'),
(8, 79, 'director'),
(8, 80, 'actor'),
(8, 81, 'actor'),
(8, 82, 'actor'),
(9, 83, 'director'),
(9, 84, 'actor'),
(9, 85, 'actor'),
(9, 86, 'actor'),
(9, 87, 'actor'),
(10, 88, 'director'),
(10, 89, 'actor'),
(10, 90, 'actor'),
(10, 91, 'actor'),
(10, 92, 'actor'),
(11, 93, 'director'),
(11, 94, 'actor'),
(11, 95, 'actor'),
(11, 96, 'actor'),
(11, 97, 'actor'),
(12, 98, 'director'),
(12, 99, 'actor'),
(12, 100, 'actor'),
(12, 101, 'actor'),
(12, 102, 'actor'),
(13, 94, 'actor'),
(13, 103, 'director'),
(13, 104, 'actor'),
(13, 105, 'actor'),
(13, 106, 'actor'),
(14, 107, 'director'),
(14, 108, 'actor'),
(14, 109, 'actor'),
(14, 110, 'actor'),
(14, 111, 'actor'),
(15, 107, 'director'),
(15, 108, 'actor'),
(15, 109, 'actor'),
(15, 110, 'actor'),
(15, 111, 'actor'),
(17, 112, 'director'),
(17, 113, 'actor'),
(17, 114, 'actor'),
(17, 115, 'actor'),
(17, 116, 'actor'),
(18, 117, 'director'),
(18, 118, 'actor'),
(18, 119, 'actor'),
(18, 120, 'actor'),
(18, 121, 'actor'),
(19, 122, 'director'),
(19, 123, 'actor'),
(19, 124, 'actor'),
(19, 125, 'actor'),
(20, 126, 'director'),
(20, 127, 'actor'),
(20, 128, 'actor'),
(20, 129, 'actor'),
(20, 130, 'actor'),
(20, 131, 'actor'),
(21, 132, 'director'),
(21, 133, 'director'),
(21, 134, 'director'),
(21, 135, 'director'),
(21, 136, 'actor'),
(21, 137, 'actor'),
(21, 138, 'actor'),
(21, 139, 'actor'),
(22, 140, 'actor'),
(22, 141, 'actor'),
(22, 142, 'actor'),
(23, 143, 'actor'),
(23, 144, 'actor'),
(23, 145, 'actor'),
(23, 146, 'actor'),
(24, 147, 'director'),
(24, 148, 'director'),
(24, 149, 'actor'),
(24, 150, 'actor'),
(24, 151, 'actor'),
(25, 152, 'director'),
(25, 153, 'actor'),
(25, 154, 'actor'),
(25, 155, 'actor'),
(25, 156, 'actor'),
(25, 157, 'actor'),
(25, 158, 'actor'),
(25, 159, 'actor'),
(25, 160, 'producer'),
(25, 161, 'producer'),
(26, 162, 'director'),
(26, 163, 'actor'),
(26, 164, 'actor'),
(26, 165, 'actor'),
(26, 166, 'actor'),
(26, 167, 'producer'),
(26, 168, 'producer'),
(26, 169, 'producer'),
(26, 170, 'producer'),
(26, 171, 'producer'),
(27, 47, 'actor'),
(27, 172, 'director'),
(27, 173, 'actor'),
(27, 174, 'actor'),
(27, 175, 'actor'),
(27, 176, 'actor'),
(27, 177, 'actor'),
(27, 178, 'actor'),
(27, 179, 'actor'),
(27, 180, 'actor'),
(27, 181, 'actor'),
(27, 182, 'actor'),
(27, 183, 'actor'),
(27, 184, 'actor'),
(27, 185, 'producer'),
(27, 186, 'producer'),
(28, 187, 'director'),
(28, 188, 'actor'),
(28, 189, 'actor'),
(28, 190, 'actor'),
(28, 191, 'actor'),
(28, 192, 'actor'),
(28, 193, 'actor'),
(28, 194, 'actor'),
(28, 195, 'actor'),
(28, 196, 'actor'),
(29, 197, 'director'),
(29, 198, 'actor'),
(29, 199, 'actor'),
(29, 200, 'actor'),
(29, 201, 'actor'),
(29, 202, 'actor'),
(29, 203, 'actor'),
(29, 204, 'actor'),
(30, 24, 'actor'),
(30, 205, 'director'),
(30, 206, 'actor'),
(30, 207, 'actor'),
(30, 208, 'actor'),
(31, 94, 'actor'),
(31, 209, 'director'),
(31, 210, 'actor'),
(31, 211, 'actor'),
(31, 212, 'actor'),
(32, 213, 'director'),
(32, 214, 'actor'),
(32, 215, 'actor'),
(32, 216, 'actor'),
(32, 217, 'producer'),
(32, 218, 'producer'),
(32, 219, 'producer'),
(32, 220, 'producer'),
(33, 221, 'director'),
(34, 237, 'director'),
(34, 238, 'actor'),
(34, 239, 'actor'),
(34, 240, 'actor'),
(34, 241, 'actor'),
(34, 242, 'actor'),
(34, 243, 'actor'),
(35, 5, 'actor'),
(35, 6, 'actor'),
(35, 7, 'actor');

-- --------------------------------------------------------

--
-- Table structure for table `film_episode`
--

CREATE TABLE `film_episode` (
  `id` int(10) NOT NULL,
  `episode_name` varchar(500) NOT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `film_id` int(10) NOT NULL,
  `server_id` int(5) NOT NULL DEFAULT '1',
  `source` varchar(500) DEFAULT NULL,
  `streaming_url` varchar(500) DEFAULT NULL,
  `sub_url` text,
  `error` tinyint(2) DEFAULT NULL,
  `report_reason` text,
  `report_date` datetime DEFAULT NULL,
  `fix` enum('no','yes') NOT NULL DEFAULT 'no',
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_episode`
--

INSERT INTO `film_episode` (`id`, `episode_name`, `slug`, `film_id`, `server_id`, `source`, `streaming_url`, `sub_url`, `error`, `report_reason`, `report_date`, `fix`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(12, 'Full', 'full-hd', 17, 1, 'https://photos.google.com/share/AF1QipNsLPij46VPEy_56wkodZSdRYt3ZQWRNzCY6jRTD-DVRWAkotODhS3SYFGz8JiHEw/photo/AF1QipM7L_K_ex9mS_opHj0GH9Jdt6Cjl-uU3n2pCXZ-?key=TmNYblRMODlnd3JBTDdrX2Fya0RqTVJkUW5weENn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '1', '1', 24, 1, 'http://data.ayeweb.com/Producer-2015/1/Producer.E01.HD.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '2', '2', 24, 1, 'http://data.ayeweb.com/Producer-2015/2/Producer.E02.HD.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '3', '3', 24, 1, 'http://data.ayeweb.com/Producer-2015/3/Producer.E03.HD.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '720HD', '720hd', 25, 1, 'https://photos.google.com/share/AF1QipNLdadKB_yz3ipcHKm7t_NorpXFdjt8P8iUK7sxHXy83o2e2jXmoZcYm6caH8Neng/photo/AF1QipPLNQ4a4oqI6JZq0OIkwPzq09YczZWULZBqVdwG?key=elRMTVhzNjQ2Q05CTTZhWnRHcG5TMC16ajhOcUFR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Full', 'full', 14, 1, 'https://photos.google.com/share/AF1QipPBLGVrlblhYYmGwZwe2nfNdQ0tqVddGTZkyIIRdW0SMk2O4fuAO7W9DGO2Mv0iBQ/photo/AF1QipMfbfksfo7AouPO-LuZW4awM2NSE4-KDwWx7erO?key=dHJUSmduc2tVZE5uX1RmRElLb0dZMjVEYVl3RWpR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Full', 'full', 16, 1, 'https://photos.google.com/share/AF1QipOnkvVFMMSHGLKFYSLn9wxHN9VuGCYLkMi2BEB2AVeXu4wJHCxkvQ6oLa2G7DiRTQ/photo/AF1QipPMnqcI9_iejknFCbgKYRZ0ugjGgVcE3hF43jdk?key=dlk5Q0FRMDQzQUNfWnRqc19COXNjekpHU05BY2p3', 'https://photos.google.com/share/AF1QipOnkvVFMMSHGLKFYSLn9wxHN9VuGCYLkMi2BEB2AVeXu4wJHCxkvQ6oLa2G7DiRTQ/photo/AF1QipPMnqcI9_iejknFCbgKYRZ0ugjGgVcE3hF43jdk?key=dlk5Q0FRMDQzQUNfWnRqc19COXNjekpHU05BY2p3', 'http://bomtan.biz/upload/file/data/Avengers.Age.of.Ultron.2015.720p.BluRay.x264-SPARKS.vtt', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'mHD', 'mhd', 13, 1, 'https://photos.google.com/share/AF1QipOmCmRLkXeKekWnVjxP4MtEgBXXeWH7m2Hehp1KVY-4buRH9x7YzmTZN4WAtMMe0A/photo/AF1QipMFe8SeBZW9vRA6K0BA0fiAZziIuJ2H7uE6PP86?key=U04zRjFGLTNTc0dWcFh0cGhHdEVnaE5rclNxTGhR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '480', '480', 12, 1, 'http://data.ayeweb.com/San-Andreas-Quake-2015/480/San.Andreas.Quake.2015.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Full', 'full', 26, 1, 'https://photos.google.com/share/AF1QipMbpzwDTsB2TtDFiCGXOzU_EfxKtAP2OGq6CoT9erfu19rF-wkZ4i05Z7cls_S5HQ/photo/AF1QipPaKRS5lgsGuv-l-IT1rOQr3YKO0j12U1X1IPpG?key=aXE5aEFwdTZsR2FJbXZ4aksxb2FfeFdZekNGZFNB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'mHD', 'mhd', 3, 1, 'http://data.ayeweb.com/Mad.Max.Fury.Road.2015/Mad.Max.Fury.Road.2015.720p.WEB-DL.X264.AC3-EVO-muxed.mp4', 'https://www.youtube.com/watch?v=CtOQpzTTTZI', NULL, NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Tập 31', 'tap-31', 27, 1, 'https://photos.google.com/share/AF1QipP4xyXQioHrJEJ2HKBxYAx14Ol5TALQXpSJq6LX4R62JPK8Fi502O8Yg7fC107-Mw/photo/AF1QipNgckIhMSieZYz-0ffzC0VvOxUGlGfr-Vdx_8rH?key=Y3BmSEF5VE9OSjNNaWNCQWlhSE5SM19Rb0VGUDBR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Tập 1', 'tap-1', 27, 1, 'https://photos.google.com/share/AF1QipMQK1mTcDanKGS_4dD__0oN6Cb9OdCaLpcZDtOKflvasLHyC_p9nbT-tmO3G1Z7mQ/photo/AF1QipN3-him6H7rSjZpWqUxYqlA4hS-Nt-74hneK6KY?key=NUhrLW1CeDYxRUUxNERjNWRzZmpCeTRhQ2FucHhn', '', NULL, NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Tập 2', 'tap-2', 27, 1, 'https://photos.google.com/share/AF1QipOlnYZlsATXwQ_FtRkxI7zP9qm4MRaw6GOuUSSVByjXCXwVA6d5Z1eHAHHkdv9dIg/photo/AF1QipOJPW3wxl5Cd9ungnyqu0UzXomiwWEusW7Y75P6?key=VjJrdExydHVqVi1pbk45cFcxTjZheVlKU3hWRldR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Tập 3', 'tap-3', 27, 1, 'https://photos.google.com/share/AF1QipNYHTnogea7MqcmRfI_KuGm1vT8y3PyAPHWunvmou750_SPyZ4dRfMVM-vX9UqIqQ/photo/AF1QipOSy7i1SemJxLhYocSK7baX-Jaw15LbDuMkGs44?key=Z1I0b3dkc3FPbEdMd2hycGJyUnpBSFotMEdoeWhn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Tập 4', 'tap-4', 27, 1, 'https://photos.google.com/share/AF1QipOxcqtOzU23d8kGUk1mUFQEKmo9_kS700oKN-Kzypx7wRIbnJ9Oo4I2bv7WEmEtfg/photo/AF1QipPhFX0CWLPpyhCZucy1kExJXP2gCSMpg4JSD8sj?key=X1JMQmJBSXBid2RRc04tMGVIcGtRMzlUZnNzUE1B', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Tập 5', 'tap-5', 27, 1, 'https://photos.google.com/share/AF1QipNB0G2DHj0z1G5DZQpDwuLsbhr_IVC4p1hesV52yj5UH8mwxC-hZlt5WpGCaTnTkw/photo/AF1QipM5Q9xta-DXu4_IAh8CiPW9D0plVeM8O7WhXrnP?key=Zl95WW9HU0lwd3dhR2pBTS1EV2t5RVVDd0VEX0l3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Tập 6', 'tap-6', 27, 1, 'https://photos.google.com/share/AF1QipPrJGRn4M-MjvXOd3OkPDu9o53o3U3fyFrPyaUDZThUwN7k_xQ6tKXSKEFWKHQJVw/photo/AF1QipMcRDln1FO3UrCya4sFBfWqSYiseXQpfT2MPSYa?key=VVZPeUt3ck5yN1hRV3R6b0lFTC1PUEdPRkFLTUJR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Tập 7', 'tap-7', 27, 1, 'https://photos.google.com/share/AF1QipOWOwD8F6TapjcIRF8E4G51B_yhz3SBbWa6xf-dH0ybTmMyCVkO3tz7eoiR2OF4mg/photo/AF1QipNgpbMr4hU9rCsO5bmnAy-2o3Yq8qC8hNeGGBFC?key=cy1SdWZiWlhubDY2R05xQjRPR09yWDVlLU14dHZR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Tập 8', 'tap-8', 27, 1, 'https://photos.google.com/share/AF1QipPRs6bj2hLQF3xG6tAujmDdegjnkIWutKeZTWqmH8T_-792iTqTb6NJNa2XGlgHcQ/photo/AF1QipNtr_gwPYU6pggF9QlV3N6B4c54qLnV-qJz1TJy?key=NFc1LXptakVtRlN5ZzM5WFNweXNRRlZKaThxTnRR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Tập 9', 'tap-9', 27, 1, 'https://photos.google.com/share/AF1QipNAxKs7Hl47OmZceh_BOzBzUO9AKAZlp1anGwHFqqSh2D4LJMzCcj080EIk1p5oxw/photo/AF1QipNRDZQflTXgZjMIHHgRJ_BjAmhyVH04gBYi4kex?key=VEJDaXNNU0x2UUpCWjBUZElKSC1BZjBoWjNmV2N3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Tập 10', 'tap-10', 27, 1, 'https://photos.google.com/share/AF1QipMGhSUIk8SkpTP8mTjaLtkGXPvwJ3wxz_7x4riZ0XsBwakipLB5E20V6B1annGJmA/photo/AF1QipMInBLvkXip39ArWQsxmYcX5HtXjoG_dzCeIHIB?key=UkMwV1AxaXhES2YzZkxTanI3WFFnNDdJaHF2QWNR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Tập 11', 'tap-11', 27, 1, 'https://photos.google.com/share/AF1QipMu_WpfEilw22Odz88F4WLIziorA7uz1dUJQv108zCqBI7zafBGvY78pNp4KI38rg/photo/AF1QipMPhNklB-1h8pU3ZDEKv57JCBbpxk5A510sjAk6?key=R3Q4RHlDRGhrcE04dTRHZzVyb1UtRGoyR3lkSFR3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Tập 12', 'tap-12', 27, 1, 'https://photos.google.com/share/AF1QipOtaJeYDet_939MJqDrnZFnpRER9OojhPwNZ2_zFGJ4so890GaqmFTrCu7UlpHT9Q/photo/AF1QipNi9dxQ2rHo3EnAc9pN-5KJB1GsE9vX7mIRq3yP?key=ems3T0hBQXJkZ2o4eHJGQ29KbktydVJ6QjdmbWh3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Tập 13', 'tap-13', 27, 1, 'https://photos.google.com/share/AF1QipOx2L7h4AZEyHXVig4sYBMmmTIgT0TlHzbwDE67d_RqFxjBknqom5GItjdDB6-ZlQ/photo/AF1QipOo6a3NoaLoxiUYidTcwcLBpyFjZyoi1u7wfPBB?key=UHgyNkV2cmlDZ2JpV3kxaWc0ZnZhd3hzMTZaMlJB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Tập 14', 'tap-14', 27, 1, 'https://photos.google.com/share/AF1QipN5kSrj5rHd-7p3wgk4qEA1XQuZB6PUUHhHO0anOlmxtRIZJjGbGm57PCWEoAOpWg/photo/AF1QipPIVsQoytg7HbiduMtbTwA2QYIT26CCKmQuQPt0?key=SDE1dGYySGNvT09iLUJiNjd3MEM2bDFTcVQ2akhB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Tập 15', 'tap-15', 27, 1, 'https://photos.google.com/share/AF1QipMFWzMvyg2DVh6ZM347JQ50s6s1mpM4aL3QUSMNYIrFKyWiILcJ82SEBsyV75Vopw/photo/AF1QipPJQb5RrL9BpXORkPjTxsX94UdN-Q_VB-a4wX0o?key=S3ExMkt5R21qQkZ3RGVYYmVFalZLMGZmQjJsbXJB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Tập 16', 'tap-16', 27, 1, 'https://photos.google.com/share/AF1QipP_poYbhSOBvwVLwnTXnkVBzU-VqPvXOcPj2zuKqHuSlafo_6d8kKfS5aOPviyklg/photo/AF1QipM54QAvr6cjOB-w3EW6UrLucNwaNXqeznSK_92Q?key=VEVjWS1iR0pQQ0pDNGVCNkhSbVhqMTk1MVB2LUJR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Tập 17', 'tap-17', 27, 1, 'https://photos.google.com/share/AF1QipOMzn52r9DpsCrYdlRXNyJLlb1AUaav4gyoAMh4-cJRCTteqvhElMMTohmrFWez0w/photo/AF1QipOXo45E49S15InX8vgaqTUeaYmhHN3KdyTP-ye6?key=Q29KeTVCZEU3bjI3ajRHWFNLUzVWcTBxY1NSbldn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Tập 18', 'tap-18', 27, 1, 'https://photos.google.com/share/AF1QipPJMor8OwwjmPJk0nFZ8zW_FyPC_oqkcqliXe7fEN7IquhbwGSy_nTzkeXsQdglow/photo/AF1QipNOICZpolTEYZ1_6hVvXByV60y3wzuiaGfOpdi4?key=VUFsOFpkQTZweFNIeWhtVEtoVmd4djdZbjFDbVFn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Tập 19', 'tap-19', 27, 1, 'https://photos.google.com/share/AF1QipOeUBmPWfq_Jz0c_AIvp79hJYSuYItemjbjrTtXvBXYrvWSa5JUqYnrOOr_hrqjEg/photo/AF1QipPTYsbhCEc-TwWMrHa-hiGWqPcyYDrDjUPcykgm?key=WWQ1NWhoZmRCQk1lb05KOVFzSEV2NmFicUdiTXdn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Tập 20', 'tap-20', 27, 1, 'https://photos.google.com/share/AF1QipN_xrllhbUceqkf-AwVhrKCpisqvV0IFSIOOnMXou3KUtbpeA-YEJY2L5xhtDYVfA/photo/AF1QipON5FrOWrk622hFisTA8GJTbSCciDNkqT3bGQe-?key=cVhMVmRlRlFBbVNqcWhhLWF1N2xTWkF2WmhUbll3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Full', 'full', 2, 1, 'https://photos.google.com/share/AF1QipOnkvVFMMSHGLKFYSLn9wxHN9VuGCYLkMi2BEB2AVeXu4wJHCxkvQ6oLa2G7DiRTQ/photo/AF1QipPMnqcI9_iejknFCbgKYRZ0ugjGgVcE3hF43jdk?key=dlk5Q0FRMDQzQUNfWnRqc19COXNjekpHU05BY2p3', '', 'http://bomtan.biz/upload/file/data/Avengers.Age.of.Ultron.2015.720p.BluRay.x264-SPARKS.vtt', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Tập 21', 'tap-21', 27, 1, 'https://photos.google.com/share/AF1QipM6QOFpcDR5CETOavofSPlOU13Ta-N9g7EuJXf30BsU52cbXr_NGhXiOr8eDx3-og/photo/AF1QipPNv2QtotVGTdbf-Uh4ovdDHHzCmUk9AtyBPIG4?key=UE54Y1NOMU9wTnliajA5Q3RuTzRqMkhGbDd4dDln', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Tập 22', 'tap-22', 27, 1, 'https://photos.google.com/share/AF1QipNFH3AhSGXljo-m0zOsFGuuzZRAbERJLwLK0xlfva4bz-FYv27iRSYxPs23L76hZg/photo/AF1QipMsiLpgoNTivhHIuTXznrObc6QzgFa2B0Aw2vAy?key=b3FLTXBOSC1oeHdobXNDZEVOUDllcFN2NmNMTWpn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Tập 23', 'tap-23', 27, 1, 'https://photos.google.com/share/AF1QipPdNoI4fv2J5LdIeMphvFDUo70J4fZJBDbad8C8D15U4qUXJdxn2-Pg3KzrnCfR4g/photo/AF1QipOR-C2uH2h7mjzOnxMjVUW4kj8gZAZx4FCTKQ2Z?key=YWlrTDJybXVPbC00d2JDUUhuaVVxbDZleHhvVUtB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Tập 24', 'tap-24', 27, 1, 'https://photos.google.com/share/AF1QipPpErkV3QcJwywBvaAdPIfevgNx_jo2FE_J4xM7yNG4zpAc9dK0zp1d14lx7spTIw/photo/AF1QipPVGdGjIASSseBgSvDAwAQTE2e0iYuG6BFpN29-?key=b3JpS2hwakxKNzRIa3k4RUtSQi1GakxhVGlWX1pR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Tập 25', 'tap-25', 27, 1, 'https://photos.google.com/share/AF1QipNvLT1o_4QlzdqSrR2fxq3VEnrnqA6yEy8OEkW5AQ8HqKhm8zyLb5WYs3UA9cleng/photo/AF1QipP0W7vkaW1NBon9bBKHObCT9h4zzSPBtsyuFOfh?key=MXFpSDdZZ0pmSDFVLUVGWk42SzN5Q3VLTnVMNGdR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Tập 26', 'tap-26', 27, 1, 'https://photos.google.com/share/AF1QipPSd25FOQdmLktj7Z1a0-CR3_4NXLsxpifpuzoYUgMVQRjjgYyMyvxHRiIWT371BA/photo/AF1QipO-wpCzAu_X9eUFLGjFcIllsiGu8TrRGvtLAXDO?key=bE1xZVB5SkIySW9nYzh5RDk5LVRGamJuMVg5SHNn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Tập 27', 'tap-27', 27, 1, 'https://photos.google.com/share/AF1QipPArUyK9SXdnwObs1nJkhR9iLKf6hXujMWVgZ7lKN3U1Roj44u6N-jzEf7SokXO9A/photo/AF1QipPr9iv1mKsqe9XcwxjBKC_O_TLgyK-Rp76H66ig?key=LUJaRzloWkVUTHdiZ1hULUszbmw2NkotOW1TNG13', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Tập 28', 'tap-28', 27, 1, 'https://photos.google.com/share/AF1QipNe5ANmRBMYBctILhZdPwWAVyOC9NkQBxO6nGc2DJ1-pO1X8p_sCv97rPyb6sxxFw/photo/AF1QipPpolNJmxxCTLTMSw2aTBZM3l9mCMPVQ_njnIB_?key=bWhUN0gyQlZoT1pYbDVDV28tSTV2XzFFTy1JZ05R', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Tập 29', 'tap-29', 27, 1, 'https://photos.google.com/share/AF1QipOsrnm4V1x2VAqM4WuL1IyG5C_yyQKAFjK07anABXYcdHyfAjIwCN9insM89EVwRQ/photo/AF1QipPz_TLZbYp3YbXs0ucYXH7JKPahSQIuwNiW9GnY?key=STNXbUItbkgwQmVWb3p1eVpSZ1V2dkFNRFN4ODJn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Tập 30', 'tap-30', 27, 1, 'https://photos.google.com/share/AF1QipMHjYhpIY6at5LG_KVCIfKDwNhLfPCYcGLQRmsO8ish3H8qoqTscthTFw9asfK6Ew/photo/AF1QipOmj9S_3Rbb_uHA1YOK4oHgSjzkun8axqbaaEm4?key=Mk1iOERBOE05YkNQWXlnWjBXMTlLVE9iQzZuNTVR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Tập 32', 'tap-32', 27, 1, 'https://photos.google.com/share/AF1QipPuD4E0-R7ucWGMZuArCpv5XLxuf_gjOe9PEM6kVUQ_FBP5dIQFVRKOGn_veiEMWg/photo/AF1QipNaSizPD8ZUbgy-P9S7KbpCPIFEPFDd7Fex4X79?key=V0ctTWxHOC1iOWVCTWhSQW1HTGoxY1k1V25JOXZn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Tập 33', 'tap-33', 27, 1, 'https://photos.google.com/share/AF1QipMw7MjEdc9ZT8xzCvByOXqtTDgjMqrz66AtnetboFNiezDCev2W9--qCq9caGc6Yw/photo/AF1QipM6zVAx210Fhev5zvuyR-m4hFL4Uwws_CGYzy3L?key=SEZ5RnpWdmVpWXJlcmQ5VE9oMWFvR3Ixb0FGV29B', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Tập 34', 'tap-34', 27, 1, 'https://photos.google.com/share/AF1QipNshnYaPHOASDbv-Oh6S3Xi2yyby0XDEY0zatn-15DRFi3LwYy9j4iCrAKqSF5JZA/photo/AF1QipMtkqxUwcU8zhsLvgMQirXupDNmBzMjovRFG1Lf?key=S1lXSTd5OHBUajloMHB6Y2ZkSFAzQ0NSNHI0bXpR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Tập 35', 'tap-35', 27, 1, 'https://photos.google.com/share/AF1QipNyC6jvC8Ha-ZeAHt1zCjHgMTrvULX00QWgyP4xr9m-q__On59VQahiK7Vq8mtN9Q/photo/AF1QipPcwIakKBSZFMqq9Sf113xT6f9iPUFGL8tpKhUa?key=anRmTTM4ZlpaS0FoUDV0QmkxOFdGZ1gtV0xUdGRB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Tập 36', 'tap-36', 27, 1, 'https://photos.google.com/share/AF1QipNd0Tq6_DbcliTOFEJZg7aHlBdIbDIXuMexr6aeH_sfiAOs-rbVMzAC_tnJwxGFkA/photo/AF1QipOhIddRQLuFyqpk-VZ3wgz4rArENnfX8NZil1As?key=WFJLcXdfWDhXWE1MaHV0TUVpeldjRDhUOW5XQnNB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Tập 37', 'tap-37', 27, 1, 'https://photos.google.com/share/AF1QipN2jeHsBHrNDmYHxCnpIRD4AUvlaT4__K0JDKkSi5m2WcbLnPakHi7Egrb43QsQxw/photo/AF1QipO4eGCmb0Z2LVyPAOkb1iM_cLc3LFA_CWMO5sBt?key=WVNxNm5odGdBWWwzR2cyNVVZeWFDam9Gdll5dHB3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Tập 38', 'tap-38', 27, 1, 'https://photos.google.com/share/AF1QipMgahaB0DTvR6RSSIrpaaAnWXc_TH2gAsZV2I6A4rTJKkM-CJe8pL3MYq6cV33lPQ/photo/AF1QipMKIOYvo5sMJH9Bk0zTdbFVthV5cxPVzrVLQEGs?key=RVkwcGhFRThud2lrejV2aHhtZmR0eHp0LXBrcFJR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Tập 39', 'tap-39', 27, 1, 'https://photos.google.com/share/AF1QipNXed9YJfA2gEWB0cEpbRnIFU24j8C2zMSHj732V4vgwIsAslpdUMheVq7XtcEobQ/photo/AF1QipMSyvv6VCTw-d3hwkbST_B2W1gBZQFh2P_B-skq?key=ZG1IQkJvUzZFdTZ5X0FmQkpDd05Gc251cnlFQmdn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Tập 40', 'tap-40', 27, 1, 'https://photos.google.com/share/AF1QipOfXbj_9X03lUoF19KKTccAVDz71X1XwOdB3kgTV9Ae7i0NiOadiCXqteTPutvqqg/photo/AF1QipPAdlV9QI0i5PAWi-PqQRxJiR015dI6kRP9k0Np?key=ZEZEeEJOTGNZLXRWS043bXFFZkFiZUJfeEZCMENR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Full', 'full', 18, 1, 'https://photos.google.com/share/AF1QipNVcShvc6qcOFuukoh5JcFpVAL4DKBx90lp1qe8gLofqlytgZkdNgN58ycB93wxug/photo/AF1QipPbfasEI_X7IHjVOKl_mcTtGgNQNW7TrxtZqAss?key=YzFDaHVUNzNOcUJHNXdiX0dFVkR4cHFucEZDOFdB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Tập 1', 'tap-1', 1, 1, 'https://photos.google.com/share/AF1QipMXs6TSN16Z8DEY3JvQzD3Umu90KakCilInXJcWA5xxQfPvRBMUJg67DXRy55Rg_A/photo/AF1QipOKlDnNzxQXtpc9B1qOXrQ8TdeGOmzkAwRXqZzv?key=QTlPNDZmNjdJR0JVd1Y4bE1TeEVKallmNTlzYnpR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Tập 2', 'tap-2', 1, 1, 'https://photos.google.com/share/AF1QipNGunBbyGMY9Em5pcNyGksLIfRlB-wSXwogrffknWZR0pyiVpl2m_KBlr0ZqJNkEw/photo/AF1QipN7MrpEqandAq68MBMN-SCrKfZz2HIUxayayrem?key=bUxVWm9nYkhMSko3RVlqQXIyaWh5aUFadmdEOHd3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Tập 3', 'tap-3', 1, 1, 'https://photos.google.com/share/AF1QipMMoMOZZSBLsmKGywxggoYiQ_ICK6MFRR12qiwGq94g7aIaLoeuBrRHzZXekcQRkw/photo/AF1QipOpr_e2kHVcvT4CvHc0wvoyggAMFsmSkNThzTKI?key=b0lCSUMxcWVGVXYwVXEzQnlzMVFzNWVWLU5fUVpn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Tập 4', 'tap-4', 1, 1, 'https://photos.google.com/share/AF1QipMEJsC13R18aAdkaD82IBXuRtsWVoEileQFtxqQfNSU6WtY3N5nWNTWnx_c8FmprA/photo/AF1QipOodKi3v7huiaJW_YLS_cUxx4ws1dN1L8vCnCPy?key=R3pMU2FXaDFjd3h3SEFqcElRb2Zna1FrYWhhS0tR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Tập 5', 'tap-5', 1, 1, 'https://photos.google.com/share/AF1QipNoU5XIm5HuxcI7anB4feRNUCP7h9wHhv2giIdzbJqGqmbcde61-EP_FM_kLLuGdQ/photo/AF1QipOPpc472q9vwwIrTKK6Owq8cPjPf8JFyYwHXqsf?key=REZVdEhCMEdHc0E1ZnowZ3huUTZSdk1nRzRzVVZ3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Tập 6', 'tap-6', 1, 1, 'https://photos.google.com/share/AF1QipPeIySL_2SlaK8beOuFiwAn57RMjmELnnhHP7GbtPJXKU4v66WhuK-csiO9PL4alQ/photo/AF1QipNAlEyeoBMo9DD4Ttto2Ygk86wWnIPYO5NxLzzT?key=MWY4WUpTUDNNRS1PLWZKa01RME1PREJTN0YtRHd3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Tập 7', 'tap-7', 1, 1, 'https://photos.google.com/share/AF1QipNhMrg4pwJsWE29B_GRaxSCeEGg1w5toSGbpWo-vKt4xCrkyOt2Frd6Jvr6eUjiLQ/photo/AF1QipP8cen4gZzpCom0AU3bspH2-prxC8DGv88dDjrp?key=UmhXSDY1ZXNVOFd5akR3WjhSamVpVE1tM0FNX2Fn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Tập 8', 'tap-8', 1, 1, 'https://photos.google.com/share/AF1QipOraDeBGkrHk5y2FQrfWxSMMHJoZq2mqB-CaC1rzinD_OQy4A3uV6PHOyuMjwZkLA/photo/AF1QipNCwCOqIs14GmSkE2vZDKWYS-_n5WPRNMPKaXbh?key=UHhwU0hqTWlCQkxvUDRlLW05blo2U2hzMHJ4c1FR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'Tập 9', 'tap-9', 1, 1, 'https://photos.google.com/share/AF1QipOkjkQ70CAIqIVAt-xml5hOSgbzJzvC0d8RFFdt41-4b0rk3K-ukGFLYQQSAogofQ/photo/AF1QipNOZvSu8O6IlRqLwWDHT9BP3AsH__wbkX6WiNB3?key=cVQzQnFwT1Y5cFFCUHRDTmZzMllmYXpaS21fR0pB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'Tập 10', 'tap-10', 1, 1, 'https://photos.google.com/share/AF1QipN3mcpTxYIlTX2ARxFM7Lje8WXorcUuD93C-AZF1iKUrBmje65W4CS85DPDHL1FQA/photo/AF1QipN_mqbj8FEx2Ho2N-13RJ6KLDcEi_TBIwkpIe0g?key=Rkd5YkZZWEpfUmVxMzNZRXZfZzViZEt5ZXdqd2dn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Tập 11', 'tap-11', 1, 1, 'https://photos.google.com/share/AF1QipMjsMs0dmGgWQwF5OgE2m8e5-1GweSE0Ev9tTbnL-Onyqm60LYS5DNn-AX-mKJ1ig/photo/AF1QipMmIjcQfi1Yg8Cr6wD6XMYCJTOYqXpXQVPJ4dm8?key=ZHV2UEt1dUVaTDgwcW1UQWNuQlZLWlBWMmZYLWJB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Tập 12', 'tap-12', 1, 1, 'https://photos.google.com/share/AF1QipMuZ5AzCh-DnhYz4jQG0UQawA9btsT7Yf8g9wH_794EchJswIRgj5L7EejYulAG-Q/photo/AF1QipN7zk3JHOn40t47uVZgq5M00FsUm9k_Oi2SM9qy?key=aVRMYVY2dllLRThWUk5STk1qV3NRZXZjY21wWHpB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Tập 13', 'tap-13', 1, 1, 'https://photos.google.com/share/AF1QipOzcqXfR4jXbcdV9ENHpCBJ-gGXDhk7X67ulnjDfH5vPf7ohUrUzANf9yJ9XUe0YA/photo/AF1QipMpYkAHa5PhZwCDsgSo50z5joMwy-_Vc_ov6gwN?key=WS1wTjY3a0RYbDhlQzRYaTF6VlZIUFZOMklVRHdn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Tập 14', 'tap-14', 1, 1, 'https://photos.google.com/share/AF1QipMTVLsTnraupEHgTfXs2lbzjsv8B5anagtmwFJDZzeIttXu3kDkOJBMZK1MxN6_bQ/photo/AF1QipPM-CoBCBSLtb6OTt3hG5fMKGiTYzGT0Th1f3Qu?key=TGZicGdqdWhrcU5tbmRsNlhtTlZ5U0QwZ3VrZlB3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Tập 15', 'tap-15', 1, 1, 'https://photos.google.com/share/AF1QipMDlxZbkI3b2GinkRH33aJkch3Hm_FQZnRAMKt4rIGIDKVZ4l-jOKWxzDi4Rtw6sw/photo/AF1QipN8LJ5byn53388mb0ZkD2RHjVcfq4COFl9UFg4U?key=djVZUGNzRjhoVU1pbmpZeDZ2MnFKWnFYeWdsa1lB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Tập 16', 'tap-16', 1, 1, 'https://photos.google.com/share/AF1QipPtiBPFa3RSOHKwu2mEl058MCVa541pHqTXr2k94L6nHVGaCZ2lA327B4sjgFm7Zw/photo/AF1QipMJBIAbJCfZ7XZSjfLSKy4ccTp7SBZR7xdg0qFL?key=dnJ4R3NDY3JsUGtzd1JuUjc0RXBSdkd6eF8wUV9n', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Tập 17', 'tap-17', 1, 1, 'https://photos.google.com/share/AF1QipOlFrCiapmgX9hdc_b1xlra9A8EkpRYRS8KEUgeNRil0VhDRyZE1aiMwQn-U-AYGA/photo/AF1QipOLtWgUwuqCWVFClrfeUTBxk10JR1kmSGBQsJrA?key=eFFNMEJTaV9OOUhRRy1VeERiRE1GdE1lRldaZDBn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Tập 18', 'tap-18', 1, 1, 'https://photos.google.com/share/AF1QipNHume7ydbRsqqIXgTlyhKBpIrcKh1wrNCLW4Icuah_LYy667dashLEfPWED5SyWg/photo/AF1QipNS3kAKAOFQEL88u4II3yWX48TysbYu-PkGVZiD?key=TjQwb1UtZUpQbkRVV0JIeFp5VHlWQ3BUZnhobkp3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Tập 19', 'tap-19', 1, 1, 'https://photos.google.com/share/AF1QipMzPPTF4H9Memcs-PW7-9bY-CFYRmHdBaVHSdEtrC_3jRy1JVSbap4G2EdQvQBD7A/photo/AF1QipPGwhaMrYyrrVdC3q_EHStZLpJZBk9ET1InVenb?key=cHNHcl9IZnhPRWlOTWZyVTlBb2NtZXdsbG0zUk93', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Tập 20', 'tap-20', 1, 1, 'https://photos.google.com/share/AF1QipNx4vrB_pQ9ZGXABCahr19zYPRWIDjBOgz_HJomSqhke0rF_WxKyoQt6LkQhdZGig/photo/AF1QipPKQ25BXmZf__tFSFHJ027QUMeT8ZtV0-wza76f?key=R0lSdldoUzllcDYxdi13MWlibGJzMDlMN0NMVm9B', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Tập 21', 'tap-21', 1, 1, 'https://photos.google.com/share/AF1QipOrpjAwSZz3mrdouSIJEr_LJnJTPVR33zEjxmUccPptclKISnYW9Y60to9ow4Z5JQ/photo/AF1QipMf0TurwLWlvm3Sh_TSPsRoZYxZAVxBMRFEIKLS?key=ZlFrcHVKMTA5ZGo4dzNEVjFZcEJxRkoxSjItR2dn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Tập 22', 'tap-22', 1, 1, 'https://photos.google.com/share/AF1QipOiD1mfpZ2-sdCkV-1NyIhsEx0rB29E-dfo0mVUKpdCBXIzWqZwXgbCcdmC9PKgXA/photo/AF1QipPkE9s-N9e3w2Ya7lYg0D9gaWRQfsKfiIeT3CKK?key=Qk16c2RGNk5rVVBocTBnOUNtV0QyVzZ0Yzctd2FB', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Tập 23', 'tap-23', 1, 1, 'https://photos.google.com/share/AF1QipOU5Szyxu2qkqr1qYCeIvJNqduZaAbcZPuqZAh0KbNH4eS-PwkBgdHhRQNqTtOZzg/photo/AF1QipPIrwFJ2NFBPFK4uxy8L7jNnk8B1tOpXxI-Pngq?key=LTlWdU5TVHl0amZnUUQyY3VoSWU3N1VHZ1J2MW93', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'mHD', 'mhd', 32, 1, 'https://photos.google.com/share/AF1QipOOeDrsWWO6WKPOn98ni3f2ZGjMUB0T6l8HzfiBLQ1xoY843nUd9GRqSE6uTJvK_w/photo/AF1QipNNXemdMRbvDTgEUCeF7rEczCv0IqFQMb0JIGlP?key=YVllZjg0bkRSNE11Rko2T2s4UjVpVFVWNWdVZkN3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Full', 'full', 4, 1, 'https://photos.google.com/share/AF1QipMceBcsEtWTRANEM8xdfYSd3YB8eD7SUEx7tqOrvt3wAW56fwPL7GOeCZ-R6-uVVQ/photo/AF1QipO0F4cgigKTZ9aUJDHJVeYdYPqBONUdUNIzmVH1?key=dGpSeDJST0JVVUJTNGlLWjg4WTd1Y1AyQ2J6R1FR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Full', 'full', 31, 1, 'https://photos.google.com/share/AF1QipPe2HvC5qmcatRKGYkfNRrANnuIkQnczvUSiKFGL2lhYLJ_iPbWmcyQob_fR6nhAg/photo/AF1QipOuDFCnge7iYrLVhSqoTWfaW6rEnrz0wS4RB6YK?key=S2JiYV9SYUNLb2hLVnVqWHAwb1JUS2VidHFGd0Nn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Tập 1', 'tap-1', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-1/IWZ9CUA8.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Tập 2', 'tap-2', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-2/IWZ9CUA9.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Tập 3', 'tap-3', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-3/IWZ9CUAA.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Tập 4', 'tap-4', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-4/IWZ9CUAB.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Tập 5', 'tap-5', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-5/IWZ9CUAC.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Tập 6', 'tap-6', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-6/IWZ9CUAD.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Tập 7', 'tap-7', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-7/IWZ9CUAF.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Tập 8', 'tap-8', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-8/IWZ9CUB0.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Tập 9', 'tap-9', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-9/IWZ9CUBI.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Tập 10', 'tap-10', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-10/IWZ9CUBO.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Tập 11', 'tap-11', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-11/IWZ9CUB6.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Tập 12', 'tap-12', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-12/IWZ9CUB7.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Tập 13', 'tap-13', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-13/IWZ9CUB8.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Tập 14', 'tap-14', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-14/IWZ9CUB9.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Tập 15', 'tap-15', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-15/IWZ9CUBA.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Tập 16', 'tap-16', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-16/IWZ9CUBB.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Tập 17', 'tap-17', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-17/IWZ9CUBC.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Tập 18', 'tap-18', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-18/IWZ9CUBD.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Tập 19', 'tap-19', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-19/IWZ9CUBE.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Tập 20 - End', 'tap-20-end', 22, 1, 'http://tv.zing.vn/video/Ky-An-Nha-Thanh-2-Tap-20-End/IWZ9CUBF.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Full', 'full', 29, 1, 'https://photos.google.com/share/AF1QipOsnpMXjdBSgsLcqXEp9M0XAjikH2GUNeZQM72eVk-iS1lHup2ZOQEANwmtCiQEYw/photo/AF1QipMeCkeggBhAt5Y3bdwdrbFIYEuWl_5pvy3hLYyb?key=S2RoeF9DV3NYZUxoNmhSSHh2aVotb0dYeXlMSENR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Tập 1', 'tap-1', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-1/IWZ9BCD0.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Tập 2', 'tap-2', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-2/IWZ9BCDI.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Tập 3', 'tap-3', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-3/IWZ9BCDW.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Tập 4', 'tap-4', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-4/IWZ9BCDO.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Tập 5', 'tap-5', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-5/IWZ9BCDU.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Tập 6', 'tap-6', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-6/IWZ9BCDZ.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Tập 7', 'tap-7', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-7/IWZ9BCD6.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Tập 8', 'tap-8', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-8/IWZ9BCD7.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Tập 9', 'tap-9', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-9/IWZ9BCD8.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Tập 10', 'tap-10', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-10/IWZ9BD60.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Tập 11', 'tap-11', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-11/IWZ9BD6I.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Tập 12', 'tap-12', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-12/IWZ9BD6O.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Tập 13', 'tap-13', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-13/IWZ9BD6U.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Tập 14', 'tap-14', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-14/IWZ9BD6Z.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Tập 15', 'tap-15', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-15/IWZ9BD66.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Tập 16', 'tap-16', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-16/IWZ9BD67.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Tập 17', 'tap-17', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-17/IWZ9BD68.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Tập 18', 'tap-18', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-18/IWZ9BD69.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Tập 19', 'tap-19', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-19/IWZ9BD6A.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Tập 20', 'tap-20', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-20/IWZ9BD6B.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Tập 21', 'tap-21', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-21/IWZ9BEZD.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Tập 22', 'tap-22', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-22/IWZ9BEZE.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Tập 23', 'tap-23', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-23/IWZ9BE60.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Tập 24', 'tap-24', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-24/IWZ9BE6I.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Tập 25', 'tap-25', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-25/IWZ9BE6O.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Tập 26', 'tap-26', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-26/IWZ9BE6U.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Tập 27', 'tap-27', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-27/IWZ9BE6Z.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Tập 28', 'tap-28', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-28/IWZ9BE67.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Tập 29', 'tap-29', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-29/IWZ9BE68.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Tập 30', 'tap-30', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-30/IWZ9BE6A.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Tập 31', 'tap-31', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-31/IWZ9BE9O.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Tập 32', 'tap-32', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-32/IWZ9BE9U.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Tập 33', 'tap-33', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-33/IWZ9BE9Z.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Tập 34', 'tap-34', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-34/IWZ9BE96.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Tập 35', 'tap-35', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-35/IWZ9BE97.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Tập 36', 'tap-36', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-36/IWZ9BE98.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Tập 37', 'tap-37', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-37/IWZ9BE99.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Tập 38', 'tap-38', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-38/IWZ9BE9A.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Tập 39', 'tap-39', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-39/IWZ9BE9B.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Tập 40', 'tap-40', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-40/IWZ9BE9C.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Tập 41', 'tap-41', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-41/IWZ9BE9D.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Tập 42', 'tap-42', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-42/IWZ9BE9F.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Tập 43', 'tap-43', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-43/IWZ9BEA0.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'Tập 44', 'tap-44', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-44/IWZ9BEAI.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'Tập 45', 'tap-45', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-45/IWZ9BEAW.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Tập 46', 'tap-46', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-46/IWZ9BEAO.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Tập 47', 'tap-47', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-47/IWZ9BEAU.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Tập 48', 'tap-48', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-48/IWZ9BEAZ.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Tập 49', 'tap-49', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-49/IWZ9BEA6.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Tập 50', 'tap-50', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-50/IWZ9BEA7.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Tập 51', 'tap-51', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-51/IWZ9BEA8.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Tập 52', 'tap-52', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-52/IWZ9BEA9.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Tập 53', 'tap-53', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-53/IWZ9BEAB.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Tập 54', 'tap-54', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-54/IWZ9BEAC.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Tập 55', 'tap-55', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-55/IWZ9BEAD.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Tập 56', 'tap-56', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-56/IWZ9BEAE.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Tập 57', 'tap-57', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-57/IWZ9BEAF.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Tập 58', 'tap-58', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-58/IWZ9BEB0.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Tập 59', 'tap-59', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-59/IWZ9BEBI.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Tập 60', 'tap-60', 33, 1, 'http://tv.zing.vn/video/Naruto-Shippuuden-Tap-60/IWZ9BEBW.html', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Tập 1', 'tap-1', 35, 1, 'https://photos.google.com/share/AF1QipPsDb54SjGltowszHwuCFmep6gxCj6Y5yFbiWRtFPA33Bcfs2Xa6PXDy3OhaQ7bHQ/photo/AF1QipMccJu6A5XSPy2I8ewDdT13uNPt2xX5tKyL2V9x?key=cUlBeHhLTml3dWNjMWRQLXNVQnQ2M2Y3Ui01OUh3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Tập 2', 'tap-2', 35, 1, 'https://photos.google.com/share/AF1QipOzchFORJK70U0g1qfL363BO68ttpaj-Iamq2ElEp9qr_h6qraDWT1hkmclwiVRPQ/photo/AF1QipORw69AhjvrcAdKAgUdaQLhkmsOggqDWS3nsopy?key=ZjZTZEloUE9TTi0xTlllaTV6WXVCMzFhRnFfUU5R', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Tập 3', 'tap-3', 35, 1, 'https://photos.google.com/share/AF1QipP0Y6NDhUdRl0lxaIrq_aD-pnkQdGcpxCArzCDRbAIzIfQof__04euTqPMsYDL4Bg/photo/AF1QipMUCNlxEvqet_LfAFECiaPG-I6OywpisySJpEbc?key=WUZHYjNPS29sSHdaWjczMVZnS2I1XzZHckg0a1Nn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Tập 4', 'tap-4', 35, 1, 'https://photos.google.com/share/AF1QipM9b6snKTzHhdQquQw18OgR53gSre5fLmLsMDWDEiNgwVGV92Xj_ChIxkBNvY4zeA/photo/AF1QipN32hj2-yEiHhI5nnGLz32iUv1vbVbjZLKouTIc?key=ZXVOT2RzOE45WDQ1VDczR2huaXZRWmxQcHE4TFB3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Tập 5', 'tap-5', 35, 1, 'https://photos.google.com/share/AF1QipMpObT3lpkhyHoRNFEbraRggiTMiBSkKbosD-OWwBvTroc4-k-BfGdm6UORefTsQA/photo/AF1QipMEynGOw_HqADErtPOHuxpgFqfnvw1eDhTdnqUw?key=eXlpanlSVUlOTXJMNzZLZWx6Nno2Vy1SSkVWMlln', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Tập 6', 'tap-6', 35, 1, 'https://photos.google.com/share/AF1QipMYpVPw2Pp-KN0ACdBXvGzLgLRygR1Li3yVoQoXbzlpeKbnegqengMGnEF7HbW4gw/photo/AF1QipP-fmsEdCOUPyggl_MyIH7jdOdSQ648dAirz8SK?key=aVRqRmVXVXE4T2YtRUkzejNOajVkS3VYWGM1Ui1R', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Tập 7', 'tap-7', 35, 1, 'https://photos.google.com/share/AF1QipP4Npna7HHIVW6FiMh9uNThucIYDJOUxT_-MEOuEdKMU__wi6rBGApNGlQ0DpLMTQ/photo/AF1QipOiMB1XNKPwwtXZ0HzL62MoLs_MVtDShSsXFmzt?key=T0dfdVVGVTlWem5VS2dIQlhVaUY3NjNLeXh6aGhR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Tập 8', 'tap-8', 35, 1, 'https://photos.google.com/share/AF1QipMQv_MzjjMWs5tehefuvvmAKuV6zUiFv_KLtML1seYpkHfWt7Ot_oIC_d9Bv1vdZQ/photo/AF1QipNMO-5TE9QdcR_VuA7Atk4VDqnd8jNArqFxGtrA?key=TEV4cExyZFU1allsalFtZzYtVnRGU19ZOUpMV21n', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Tập 9', 'tap-9', 35, 1, 'https://photos.google.com/share/AF1QipMgcRd6G1HA4viQpXs9yI17ZOpX8sLigO2tQT4oBCCPnPKzrZmn22LRz9sOeuRlDw/photo/AF1QipPVTmnLNQjeoW6F8t4JVAR-td3-PcbFspoada54?key=WWJic2xJQ3pIU21FWFJSSW9fVEg1X05iRFNpMkdR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Tập 10', 'tap-10', 35, 1, 'https://photos.google.com/share/AF1QipPjgYpH8wHDPqTUntuXG0L2jmzhTFSNGhQKCkZfc0XF52HY0i50B4jZr35tOTgveA/photo/AF1QipOfrwnvvv4gVig5boh719mLPmpYXENBWJwTbgbS?key=SWxhMHkxNkt6cGhnVWwxTEcyY3VSNFFmMjhnSVdn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Tập 11', 'tap-11', 35, 1, 'https://photos.google.com/share/AF1QipMmkXt7PLVBg1yTnptSnkS7lASDPJ-zNKSFzG2AB0QaJ_ttpCRw8aNk6tok0I5ttA/photo/AF1QipMRmLL33L6sNDDAM9cOnjGf9RPceprEQyYWPWT2?key=U0hoMTBNdlB6aEUzVlFUZ1Yxbzd3ajg5OE1lOWxR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Tập 12', 'tap-12', 35, 1, 'https://photos.google.com/share/AF1QipPpNxK45u-XX1FGW6Nbb3fsGQMu2Hyx7SAg75pv45XXepAXWwNMdDUbslM3d0AR-Q/photo/AF1QipPUlnU-4mml4j3AmFDnwta9dZUMFSwayNHDSUg_?key=SW4yZGNVYXRjQTBFam9rY2ExdHBFN0prM2h4RDZ3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Tập 13', 'tap-13', 35, 1, 'https://photos.google.com/share/AF1QipNKVcybNFJ2_QUNL69UYe0w9gkvOMFv6pomPcdJyk0PmZb1oL7NZP3E6nO-y4_v4w/photo/AF1QipNXvmyfLY1KW5kaOIGGO8fS57cbR2FNlm-B2F5W?key=d09zRzBXdkpUVFBIUEdkR29laVVtWEpOTTdjTVR3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Tập 14', 'tap-14', 35, 1, 'https://photos.google.com/share/AF1QipNbVKjffejdtQwkLVz5ymKtetOSS2K3QKYDlDYpCIagNS73lLNoF-JipTjVJKo4kQ/photo/AF1QipM9oN0zF8bNeT-Ynpt5rCPffOs5iOHasYS5JZnw?key=d3BNZGE2dXFJV3MyVVg5dl9Xbmx3bFRJNjJRbFNR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Tập 15', 'tap-15', 35, 1, 'https://photos.google.com/share/AF1QipPQGs4qnoIhx3rRGX975M-V8TfBqUh1vDh67q512861OZRz2QfpsF4ZcmorWBT9vw/photo/AF1QipPsT54JtP6hSSansrcdW5vTw3z9hVZ98wawZco9?key=dldOVy12Z1VZM3lMMUJfd19iN19RWS1XR3oyZnVn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Tập 16', 'tap-16', 35, 1, 'https://photos.google.com/share/AF1QipMe-rRwO8nTnj5c8rsQPw_9sKbGOVtCjhCbs9VvvkFN9ZI7s1MLF5hQ9fFM2SfELA/photo/AF1QipNVbo-mG86g_xhCjc5aTm6OEKUAgMzoLHBjON8q?key=ZzVKbU01cnR3YUJBam9RNFRQdXV4cUJKcUlzVHB3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Tập 17', 'tap-17', 35, 1, 'https://photos.google.com/share/AF1QipOWJ5jQ46Eb4a6LhXxwEvArc3-xm-LwPdcFeLSPSPxTRmgg49y1Y2UBBdwnjjXI_Q/photo/AF1QipOyGPMTthWR_zR5yiA6wqnTuU7JBcJNU-28SAah?key=OHotNmZwX2tPSDhURGQ0cXVfa3MtR3hSQ1BGdm9B', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Tập 18', 'tap-18', 35, 1, 'https://photos.google.com/share/AF1QipO2xberHEmLnVn1H6tExwQY2bOxzk87wDH3e0iKj6wEr5hM4Gd3ehNqpdJXx8E7ZQ/photo/AF1QipMXGawGtoxkZ-Tm21SiNbdZwrT8K7GDvLb2mjo1?key=SXZyMWhnSXFRYzhvWlJnYnJvTzRxaWhvcnRab3pR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Tập 19', 'tap-19', 35, 1, 'https://photos.google.com/share/AF1QipP2ujqpKelxmytJRK5peN2YYsOmMySy9AlZnyWTnIketAGA53mT49gDr21cx8nibA/photo/AF1QipMRjoAROH1scjEgNjRVvLmEvVh3ZOup5jblMDQa?key=UjB4SXBoT3JZNk1Ub0FSVFBqN3dkOVhuT0JWOHlR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Tập 20', 'tap-20', 35, 1, 'https://photos.google.com/share/AF1QipMCNZcuLSQTJ-W147c1iJqEirQD04fu8C5uKKo85uKfD-KFBDzQn2KpNtyMWLmmLA/photo/AF1QipPteFtx9citUfNRwUISCzPDRx8G9IzwZMUH9L2v?key=eXJieFdzSk5Bei1SVm9VRk5PSkxsbzd3TDBmV1Bn', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Tập 21', 'tap-21', 35, 1, 'https://photos.google.com/share/AF1QipM_FTEz72QrJm8t_8d5zT0zxyvghhvtJD1VZ6tDz0Hm0hWFFObokPYAPqID-j08XA/photo/AF1QipP5fcNloq0DW9gYwLgH1ExZZLROlByUpUHmTjMp?key=bFJSc0gxcU92VTRDcEZucXFfRVQwRTZMVFJIeDZ3', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Tập 22', 'tap-22', 35, 1, 'https://photos.google.com/share/AF1QipMMzfneU5XsGHPCCDBbecW5MNtgyPHgF2ySCMcD5B6OaUhiYa49p-DfUWvi1b5vJw/photo/AF1QipNqtSzjrNQ28tviEKZLIBKBpDU7ojzgxGHLkimf?key=cTd5VTZDQlRYcTNIZjhYNTRtVGlhUXlmX3NHRVln', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Tập 23 - End', 'tap-23-end', 35, 1, 'https://photos.google.com/share/AF1QipMzCjEIjnn--WazIYLgLAh1iDMygeEqvqtjwkKI0Z1iip7zRy2LkmrqTG-wRy6n6w/photo/AF1QipNFuNOFtPjzK4bb0kHIjmK7PTNuDjInM8Rui5x-?key=VDhHUklpTXlpcUxnVlY0OHYtMElUeEwyaXd1cTdR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Tập 21', 'tap-21', 36, 1, 'https://photos.google.com/share/AF1QipMzCjEIjnn--WazIYLgLAh1iDMygeEqvqtjwkKI0Z1iip7zRy2LkmrqTG-wRy6n6w/photo/AF1QipNFuNOFtPjzK4bb0kHIjmK7PTNuDjInM8Rui5x-?key=VDhHUklpTXlpcUxnVlY0OHYtMElUeEwyaXd1cTdR', '', '', NULL, NULL, NULL, 'no', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `film_tag`
--

CREATE TABLE `film_tag` (
  `film_id` int(20) NOT NULL,
  `tag_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_tag`
--

INSERT INTO `film_tag` (`film_id`, `tag_id`) VALUES
(1, 5),
(1, 6),
(1, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(3, 12),
(3, 13),
(4, 14),
(4, 15),
(6, 16),
(7, 17),
(11, 18),
(17, 26),
(17, 27),
(17, 28),
(17, 29),
(19, 19),
(22, 43),
(22, 44),
(22, 45),
(23, 20),
(23, 21),
(25, 1),
(25, 22),
(26, 23),
(26, 24),
(26, 25),
(30, 35),
(32, 39),
(32, 40),
(32, 41),
(32, 42),
(33, 46),
(33, 47),
(33, 48);

-- --------------------------------------------------------

--
-- Table structure for table `film_views`
--

CREATE TABLE `film_views` (
  `film_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `views` bigint(20) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `film_views`
--

INSERT INTO `film_views` (`film_id`, `date`, `views`) VALUES
(1, '2015-06-01', 102),
(1, '2015-06-02', 15),
(1, '2015-06-03', 2),
(1, '2015-06-05', 1),
(1, '2015-06-08', 1),
(1, '2015-06-09', 5),
(1, '2015-06-12', 2),
(1, '2016-05-08', 3),
(1, '2016-05-12', 1),
(1, '2016-05-22', 12),
(1, '2016-05-23', 50),
(1, '2016-05-24', 288),
(1, '2016-05-25', 173),
(1, '2016-05-26', 70),
(1, '2016-05-27', 353),
(1, '2016-05-28', 279),
(1, '2016-05-29', 254),
(1, '2016-05-30', 151),
(1, '2016-05-31', 12),
(1, '2016-06-01', 37),
(1, '2016-06-02', 3),
(1, '2016-06-03', 16),
(1, '2016-06-04', 5),
(1, '2016-06-05', 6),
(1, '2016-07-08', 25),
(2, '2015-06-01', 400),
(2, '2015-06-02', 364),
(2, '2015-06-04', 2),
(2, '2015-06-05', 1),
(2, '2015-06-12', 4),
(2, '2015-06-18', 1),
(2, '2015-06-21', 1),
(2, '2015-06-27', 1),
(2, '2015-09-13', 1),
(2, '2016-05-09', 2),
(2, '2016-05-11', 1),
(2, '2016-05-17', 1),
(2, '2016-05-18', 1),
(2, '2016-05-19', 2),
(2, '2016-05-20', 6),
(2, '2016-05-27', 1),
(2, '2016-05-31', 2),
(2, '2016-06-01', 1),
(2, '2016-06-04', 1),
(2, '2016-07-08', 3),
(3, '2015-06-01', 204),
(3, '2015-06-02', 2031),
(3, '2015-06-05', 3),
(3, '2015-06-09', 1),
(3, '2015-06-12', 4),
(3, '2015-06-23', 1),
(3, '2015-07-01', 4),
(3, '2015-07-04', 1),
(3, '2015-09-13', 1),
(3, '2016-05-09', 4),
(3, '2016-05-10', 1),
(3, '2016-05-11', 1),
(3, '2016-05-13', 1),
(3, '2016-05-14', 2),
(3, '2016-05-18', 1),
(3, '2016-05-27', 1),
(3, '2016-05-28', 1),
(3, '2016-05-29', 2),
(3, '2016-06-04', 1),
(3, '2016-07-08', 2),
(4, '2015-06-01', 800),
(4, '2015-06-12', 2),
(4, '2015-06-18', 1),
(4, '2015-09-13', 1),
(4, '2016-05-09', 3),
(4, '2016-05-13', 1),
(4, '2016-05-20', 1),
(4, '2016-05-22', 2),
(4, '2016-05-24', 1),
(4, '2016-05-25', 1),
(4, '2016-05-30', 7),
(4, '2016-06-01', 1),
(4, '2016-06-12', 1),
(4, '2016-07-08', 3),
(5, '2015-06-01', 1000),
(5, '2016-05-09', 4),
(5, '2016-05-12', 1),
(5, '2016-05-13', 1),
(5, '2016-05-16', 1),
(5, '2016-05-23', 3),
(5, '2016-05-27', 1),
(5, '2016-05-30', 1),
(5, '2016-06-04', 1),
(5, '2016-07-08', 2),
(6, '2015-06-09', 6),
(6, '2015-06-12', 1),
(6, '2016-05-09', 4),
(6, '2016-05-11', 1),
(6, '2016-05-13', 1),
(6, '2016-05-16', 1),
(6, '2016-05-23', 3),
(6, '2016-05-27', 1),
(6, '2016-05-30', 1),
(6, '2016-06-04', 1),
(6, '2016-07-08', 2),
(7, '2015-06-05', 3),
(7, '2015-06-09', 1),
(7, '2015-06-10', 1),
(7, '2015-06-12', 3),
(7, '2016-05-09', 4),
(7, '2016-05-11', 1),
(7, '2016-05-13', 1),
(7, '2016-05-16', 1),
(7, '2016-05-23', 1),
(7, '2016-05-27', 1),
(7, '2016-06-04', 1),
(7, '2016-07-08', 2),
(7, '2016-07-12', 5),
(8, '2015-06-09', 2),
(8, '2015-06-10', 1),
(8, '2015-06-12', 1),
(8, '2016-05-09', 3),
(8, '2016-05-12', 1),
(8, '2016-05-13', 1),
(8, '2016-05-27', 1),
(8, '2016-06-04', 1),
(8, '2016-06-13', 5),
(8, '2016-07-08', 2),
(9, '2015-06-03', 1),
(9, '2015-06-08', 1),
(9, '2015-06-10', 1),
(9, '2015-06-12', 1),
(9, '2015-09-13', 1),
(9, '2016-05-09', 3),
(9, '2016-05-13', 1),
(9, '2016-05-14', 1),
(9, '2016-05-23', 8),
(9, '2016-05-24', 1),
(9, '2016-06-01', 1),
(9, '2016-07-11', 1),
(10, '2015-06-03', 2),
(10, '2015-06-08', 2),
(10, '2015-06-09', 1),
(10, '2015-06-10', 1),
(10, '2015-06-12', 1),
(10, '2016-05-09', 4),
(10, '2016-05-10', 1),
(10, '2016-05-11', 1),
(10, '2016-05-16', 2),
(10, '2016-05-20', 1),
(10, '2016-05-23', 2),
(10, '2016-05-24', 3),
(10, '2016-05-30', 3),
(10, '2016-06-01', 1),
(10, '2016-06-02', 2),
(10, '2016-07-08', 1),
(10, '2016-07-10', 1),
(11, '2015-06-02', 46),
(11, '2015-06-03', 27),
(11, '2015-06-08', 2),
(11, '2015-06-09', 3),
(11, '2015-06-10', 1),
(11, '2015-06-12', 1),
(11, '2016-05-08', 1),
(11, '2016-05-09', 4),
(11, '2016-05-11', 1),
(11, '2016-05-15', 1),
(11, '2016-05-16', 2),
(11, '2016-05-17', 1),
(11, '2016-05-20', 1),
(11, '2016-05-23', 1),
(11, '2016-05-24', 1),
(11, '2016-05-30', 1),
(11, '2016-05-31', 4),
(11, '2016-06-01', 1),
(11, '2016-06-04', 2),
(11, '2016-06-05', 1),
(11, '2016-07-08', 2),
(12, '2015-06-02', 1),
(12, '2015-06-03', 1),
(12, '2015-06-10', 1),
(12, '2015-06-12', 3),
(12, '2015-06-18', 16),
(12, '2015-06-19', 4),
(12, '2015-06-20', 1),
(12, '2015-06-23', 1),
(12, '2015-06-29', 1),
(12, '2015-07-09', 3),
(12, '2016-05-09', 8),
(12, '2016-05-11', 1),
(12, '2016-05-12', 1),
(12, '2016-05-13', 2),
(12, '2016-05-14', 1),
(12, '2016-05-16', 1),
(12, '2016-05-18', 1),
(12, '2016-05-24', 1),
(12, '2016-05-26', 5),
(12, '2016-05-30', 1),
(12, '2016-05-31', 73),
(12, '2016-06-01', 40),
(12, '2016-06-04', 1),
(12, '2016-06-05', 4),
(12, '2016-06-13', 1),
(12, '2016-07-08', 5),
(12, '2016-07-13', 1),
(12, '2016-07-15', 1),
(13, '2015-06-02', 3),
(13, '2015-06-03', 31),
(13, '2015-06-09', 7),
(13, '2015-06-10', 1),
(13, '2015-06-12', 4),
(13, '2015-06-17', 1),
(13, '2015-06-18', 29),
(13, '2015-06-20', 10),
(13, '2015-06-23', 1),
(13, '2015-07-07', 1),
(13, '2016-05-07', 3),
(13, '2016-05-09', 4),
(13, '2016-05-10', 29),
(13, '2016-05-11', 103),
(13, '2016-05-12', 50),
(13, '2016-05-13', 48),
(13, '2016-05-14', 7),
(13, '2016-05-15', 5),
(13, '2016-05-19', 2),
(13, '2016-05-20', 1),
(13, '2016-05-24', 1),
(13, '2016-05-25', 10),
(13, '2016-05-26', 3),
(13, '2016-05-29', 2),
(13, '2016-05-30', 12),
(13, '2016-05-31', 20),
(13, '2016-06-01', 2),
(13, '2016-06-04', 1),
(13, '2016-06-05', 2),
(13, '2016-06-12', 8),
(13, '2016-06-13', 1),
(13, '2016-07-08', 5),
(13, '2016-07-13', 1),
(14, '2015-06-02', 16),
(14, '2015-06-03', 4),
(14, '2015-06-05', 1),
(14, '2015-06-08', 4),
(14, '2015-06-09', 3),
(14, '2015-06-10', 1),
(14, '2015-06-12', 7),
(14, '2015-07-01', 1),
(14, '2015-07-09', 1),
(14, '2015-09-13', 1),
(14, '2016-05-07', 1),
(14, '2016-05-08', 4),
(14, '2016-05-09', 1),
(14, '2016-05-10', 1),
(14, '2016-05-13', 1),
(14, '2016-05-17', 2),
(14, '2016-05-18', 1),
(14, '2016-05-19', 2),
(14, '2016-05-20', 1),
(14, '2016-05-21', 9),
(14, '2016-05-23', 2),
(14, '2016-05-24', 3),
(14, '2016-05-29', 3),
(14, '2016-05-30', 11),
(14, '2016-05-31', 7),
(14, '2016-06-01', 2),
(14, '2016-06-02', 1),
(14, '2016-06-03', 1),
(14, '2016-06-05', 1),
(14, '2016-06-13', 7),
(14, '2016-07-08', 7),
(14, '2016-07-11', 2),
(14, '2016-07-12', 1),
(14, '2016-07-13', 3),
(15, '2015-06-02', 19),
(15, '2015-06-03', 25),
(15, '2015-06-05', 1),
(15, '2015-06-08', 3),
(15, '2015-06-09', 3),
(15, '2015-06-10', 3),
(15, '2015-06-12', 9),
(15, '2015-06-13', 1),
(15, '2015-06-18', 1),
(15, '2015-06-20', 1),
(15, '2015-06-23', 1),
(15, '2015-07-07', 1),
(15, '2015-09-13', 2),
(15, '2016-05-07', 1),
(15, '2016-05-09', 1),
(15, '2016-05-10', 2),
(15, '2016-05-12', 1),
(15, '2016-05-15', 1),
(15, '2016-05-20', 1),
(15, '2016-05-21', 4),
(15, '2016-05-24', 1),
(15, '2016-05-25', 2),
(15, '2016-05-30', 1),
(15, '2016-05-31', 4),
(15, '2016-06-01', 6),
(15, '2016-06-03', 1),
(15, '2016-06-04', 1),
(15, '2016-06-05', 5),
(15, '2016-06-13', 5),
(15, '2016-07-08', 6),
(15, '2016-07-13', 15),
(15, '2016-07-14', 1),
(16, '2015-06-02', 29),
(16, '2015-06-03', 10),
(16, '2015-06-05', 4),
(16, '2015-06-08', 28),
(16, '2015-06-09', 25),
(16, '2015-06-10', 2),
(16, '2015-06-12', 11),
(16, '2015-06-15', 58),
(16, '2015-06-16', 21),
(16, '2015-06-17', 4),
(16, '2015-06-18', 10),
(16, '2015-06-19', 1),
(16, '2015-06-20', 2),
(16, '2015-06-23', 1),
(16, '2015-06-25', 1),
(16, '2015-07-06', 1),
(16, '2015-07-07', 2),
(16, '2015-09-09', 1),
(16, '2015-09-13', 2),
(16, '2016-05-07', 2),
(16, '2016-05-09', 4),
(16, '2016-05-10', 13),
(16, '2016-05-11', 35),
(16, '2016-05-12', 4),
(16, '2016-05-13', 13),
(16, '2016-05-14', 4),
(16, '2016-05-15', 9),
(16, '2016-05-18', 1),
(16, '2016-05-20', 3),
(16, '2016-05-21', 1),
(16, '2016-05-23', 62),
(16, '2016-05-24', 5),
(16, '2016-05-25', 43),
(16, '2016-05-27', 1),
(16, '2016-05-29', 1),
(16, '2016-05-30', 9),
(16, '2016-05-31', 16),
(16, '2016-06-01', 1),
(16, '2016-06-05', 5),
(16, '2016-06-12', 3),
(16, '2016-06-13', 1),
(16, '2016-07-08', 7),
(16, '2016-07-11', 2),
(16, '2016-07-12', 2),
(16, '2016-07-13', 1),
(17, '2015-06-02', 8),
(17, '2015-06-03', 14),
(17, '2015-06-04', 6),
(17, '2015-06-05', 3),
(17, '2015-06-08', 20),
(17, '2015-06-09', 6),
(17, '2015-06-12', 33),
(17, '2015-06-13', 1),
(17, '2015-06-14', 2),
(17, '2015-06-17', 1),
(17, '2015-06-18', 1),
(17, '2015-06-19', 1),
(17, '2015-06-24', 1),
(17, '2015-06-27', 1),
(17, '2015-06-29', 1),
(17, '2015-07-01', 1),
(17, '2015-07-07', 1),
(17, '2015-08-09', 1),
(17, '2015-09-13', 1),
(17, '2016-05-08', 1),
(17, '2016-05-09', 4),
(17, '2016-05-10', 43),
(17, '2016-05-11', 22),
(17, '2016-05-12', 45),
(17, '2016-05-13', 35),
(17, '2016-05-14', 9),
(17, '2016-05-15', 6),
(17, '2016-05-16', 2),
(17, '2016-05-19', 2),
(17, '2016-05-21', 6),
(17, '2016-05-22', 3),
(17, '2016-05-24', 1),
(17, '2016-05-26', 15),
(17, '2016-05-28', 2),
(17, '2016-05-30', 56),
(17, '2016-05-31', 104),
(17, '2016-06-01', 45),
(17, '2016-06-02', 11),
(17, '2016-06-03', 44),
(17, '2016-06-04', 42),
(17, '2016-06-05', 5),
(17, '2016-06-13', 3),
(17, '2016-07-08', 5),
(17, '2016-07-12', 11),
(17, '2016-07-13', 5),
(18, '2015-06-03', 4),
(18, '2015-06-04', 2),
(18, '2015-06-09', 2),
(18, '2015-06-12', 1),
(18, '2015-06-14', 1),
(18, '2016-05-09', 2),
(18, '2016-05-11', 1),
(18, '2016-05-13', 1),
(18, '2016-05-22', 4),
(18, '2016-07-08', 2),
(19, '2015-06-03', 1),
(19, '2015-06-09', 2),
(19, '2015-06-12', 1),
(19, '2015-06-19', 1),
(19, '2016-05-09', 2),
(19, '2016-05-11', 1),
(19, '2016-05-13', 1),
(19, '2016-07-08', 1),
(19, '2016-07-11', 1),
(20, '2015-06-03', 1),
(20, '2015-06-05', 1),
(20, '2015-06-08', 1),
(20, '2015-06-09', 2),
(20, '2015-06-12', 1),
(20, '2015-09-13', 1),
(20, '2016-05-09', 2),
(20, '2016-05-13', 2),
(20, '2016-07-08', 1),
(21, '2015-06-03', 2),
(21, '2015-06-05', 2),
(21, '2015-06-09', 1),
(21, '2015-06-12', 3),
(21, '2015-07-19', 1),
(21, '2015-09-13', 1),
(21, '2016-05-09', 3),
(21, '2016-05-13', 2),
(21, '2016-07-11', 1),
(21, '2016-07-13', 1),
(22, '2015-06-02', 1),
(22, '2015-06-05', 1),
(22, '2015-06-09', 2),
(22, '2015-06-12', 1),
(22, '2015-06-13', 1),
(22, '2015-09-13', 1),
(22, '2016-05-09', 2),
(22, '2016-05-10', 1),
(22, '2016-05-13', 1),
(22, '2016-05-23', 2),
(22, '2016-05-24', 14),
(22, '2016-05-26', 4),
(22, '2016-05-28', 1),
(22, '2016-05-30', 23),
(22, '2016-06-01', 6),
(22, '2016-06-02', 3),
(22, '2016-06-03', 33),
(22, '2016-06-04', 155),
(22, '2016-06-05', 10),
(22, '2016-07-08', 15),
(22, '2016-07-09', 6),
(22, '2016-07-11', 3),
(23, '2015-06-03', 17),
(23, '2015-06-04', 1),
(23, '2015-06-05', 2),
(23, '2015-06-08', 11),
(23, '2015-06-09', 4),
(23, '2015-06-10', 6),
(23, '2015-06-12', 6),
(23, '2015-06-14', 1),
(23, '2015-06-18', 1),
(23, '2015-06-19', 2),
(23, '2015-07-01', 1),
(23, '2015-09-13', 1),
(23, '2016-05-09', 4),
(23, '2016-05-11', 1),
(23, '2016-05-13', 1),
(23, '2016-05-15', 1),
(23, '2016-05-18', 1),
(23, '2016-05-24', 1),
(23, '2016-05-31', 3),
(23, '2016-06-01', 1),
(23, '2016-06-05', 1),
(23, '2016-06-13', 1),
(23, '2016-07-08', 4),
(23, '2016-07-11', 1),
(23, '2016-07-14', 1),
(24, '2015-06-03', 44),
(24, '2015-06-04', 178),
(24, '2015-06-05', 9),
(24, '2015-06-08', 3),
(24, '2015-06-09', 182),
(24, '2015-06-10', 11),
(24, '2015-06-12', 48),
(24, '2015-06-18', 5),
(24, '2015-06-19', 3),
(24, '2015-06-20', 9),
(24, '2015-06-24', 2),
(24, '2015-07-01', 26),
(24, '2015-07-03', 2),
(24, '2015-07-04', 1),
(24, '2015-07-08', 1),
(24, '2015-07-21', 16),
(24, '2015-08-01', 136),
(24, '2015-09-13', 1),
(24, '2016-05-09', 252),
(24, '2016-05-10', 101),
(24, '2016-05-11', 90),
(24, '2016-05-12', 203),
(24, '2016-05-13', 461),
(24, '2016-05-14', 199),
(24, '2016-05-15', 68),
(24, '2016-05-16', 3),
(24, '2016-05-17', 232),
(24, '2016-05-18', 273),
(24, '2016-05-19', 351),
(24, '2016-05-20', 300),
(24, '2016-05-21', 62),
(24, '2016-05-22', 81),
(24, '2016-05-23', 15),
(24, '2016-05-24', 6),
(24, '2016-05-25', 8),
(24, '2016-05-26', 141),
(24, '2016-05-27', 7),
(24, '2016-05-28', 123),
(24, '2016-05-29', 109),
(24, '2016-05-30', 49),
(24, '2016-05-31', 110),
(24, '2016-06-01', 6),
(24, '2016-06-02', 43),
(24, '2016-06-03', 12),
(24, '2016-06-04', 29),
(24, '2016-06-05', 58),
(24, '2016-06-13', 6),
(24, '2016-07-08', 5),
(24, '2016-07-11', 4),
(24, '2016-07-12', 1),
(25, '2015-06-17', 10),
(25, '2015-06-18', 26),
(25, '2015-06-19', 9),
(25, '2015-06-20', 4),
(25, '2015-06-23', 3),
(25, '2015-06-29', 1),
(25, '2015-07-01', 2),
(25, '2015-07-07', 1),
(25, '2015-07-08', 2),
(25, '2015-07-13', 2),
(25, '2015-09-13', 2),
(25, '2016-05-07', 1),
(25, '2016-05-09', 9),
(25, '2016-05-10', 4),
(25, '2016-05-11', 1),
(25, '2016-05-14', 1),
(25, '2016-05-15', 1),
(25, '2016-05-21', 4),
(25, '2016-05-23', 3),
(25, '2016-05-24', 30),
(25, '2016-05-25', 97),
(25, '2016-05-26', 1),
(25, '2016-05-29', 3),
(25, '2016-05-30', 21),
(25, '2016-05-31', 21),
(25, '2016-06-01', 1),
(25, '2016-06-05', 1),
(25, '2016-06-12', 2),
(25, '2016-06-13', 1),
(25, '2016-07-08', 6),
(25, '2016-07-13', 4),
(25, '2016-07-15', 1),
(26, '2015-06-29', 15),
(26, '2015-07-01', 3),
(26, '2015-07-07', 2),
(26, '2015-07-24', 1),
(26, '2015-09-09', 1),
(26, '2015-09-11', 2),
(26, '2015-09-13', 3),
(26, '2016-05-07', 24),
(26, '2016-05-09', 17),
(26, '2016-05-10', 28),
(26, '2016-05-13', 1),
(26, '2016-05-15', 1),
(26, '2016-05-20', 2),
(26, '2016-05-29', 2),
(26, '2016-05-30', 1),
(26, '2016-06-05', 1),
(26, '2016-07-08', 2),
(26, '2016-07-11', 1),
(27, '2016-05-07', 42),
(27, '2016-05-08', 9),
(27, '2016-05-09', 162),
(27, '2016-05-10', 225),
(27, '2016-05-11', 226),
(27, '2016-05-12', 276),
(27, '2016-05-13', 167),
(27, '2016-05-14', 413),
(27, '2016-05-15', 403),
(27, '2016-05-16', 382),
(27, '2016-05-17', 154),
(27, '2016-05-18', 34),
(27, '2016-05-19', 28),
(27, '2016-05-20', 95),
(27, '2016-05-21', 763),
(27, '2016-05-22', 235),
(27, '2016-05-23', 324),
(27, '2016-05-24', 28),
(27, '2016-05-25', 12),
(27, '2016-05-26', 194),
(27, '2016-05-27', 51),
(27, '2016-05-28', 3),
(27, '2016-05-29', 10),
(27, '2016-05-30', 55),
(27, '2016-05-31', 9),
(27, '2016-06-01', 7),
(27, '2016-06-02', 4),
(27, '2016-06-03', 2),
(27, '2016-06-04', 86),
(27, '2016-06-05', 60),
(27, '2016-06-12', 1),
(27, '2016-06-13', 2),
(27, '2016-07-08', 33),
(27, '2016-07-09', 13),
(27, '2016-07-11', 2),
(27, '2016-07-12', 15),
(27, '2016-07-13', 1),
(28, '2016-05-22', 4),
(28, '2016-05-23', 4),
(28, '2016-05-24', 1),
(28, '2016-05-31', 1),
(28, '2016-06-01', 1),
(28, '2016-06-02', 1),
(28, '2016-06-05', 6),
(28, '2016-06-13', 1),
(28, '2016-07-08', 3),
(28, '2016-07-12', 12),
(28, '2016-07-15', 1),
(29, '2016-05-22', 2),
(29, '2016-05-23', 1),
(29, '2016-05-24', 1),
(29, '2016-05-25', 2),
(29, '2016-05-27', 1),
(29, '2016-05-29', 1),
(29, '2016-05-30', 3),
(29, '2016-05-31', 1),
(29, '2016-06-01', 1),
(29, '2016-06-02', 1),
(29, '2016-06-05', 3),
(29, '2016-06-13', 1),
(29, '2016-07-08', 3),
(29, '2016-07-09', 2),
(29, '2016-07-12', 1),
(29, '2016-07-15', 1),
(30, '2016-05-23', 2),
(30, '2016-05-24', 2),
(30, '2016-05-30', 1),
(30, '2016-05-31', 1),
(30, '2016-06-01', 1),
(30, '2016-06-02', 1),
(30, '2016-06-05', 18),
(30, '2016-06-13', 1),
(30, '2016-07-08', 3),
(30, '2016-07-11', 1),
(30, '2016-07-12', 4),
(31, '2016-05-22', 3),
(31, '2016-05-23', 3),
(31, '2016-05-24', 4),
(31, '2016-05-25', 2),
(31, '2016-05-27', 2),
(31, '2016-05-28', 1),
(31, '2016-05-31', 1),
(31, '2016-06-01', 1),
(31, '2016-06-02', 1),
(31, '2016-06-03', 2),
(31, '2016-06-05', 1),
(31, '2016-06-12', 3),
(31, '2016-06-13', 5),
(31, '2016-07-08', 5),
(31, '2016-07-09', 1),
(31, '2016-07-11', 3),
(31, '2016-07-13', 3),
(32, '2016-05-22', 3),
(32, '2016-05-23', 13),
(32, '2016-05-24', 1),
(32, '2016-05-25', 1),
(32, '2016-05-27', 9),
(32, '2016-05-28', 240),
(32, '2016-05-29', 199),
(32, '2016-05-30', 21),
(32, '2016-05-31', 5),
(32, '2016-06-01', 3),
(32, '2016-06-02', 2),
(32, '2016-06-03', 2),
(32, '2016-06-04', 1),
(32, '2016-06-05', 818),
(32, '2016-06-13', 1),
(32, '2016-07-08', 6),
(32, '2016-07-11', 1),
(32, '2016-07-12', 2),
(33, '2016-05-24', 4),
(33, '2016-05-25', 23),
(33, '2016-05-27', 4),
(33, '2016-05-28', 20),
(33, '2016-05-31', 3),
(33, '2016-06-01', 254),
(33, '2016-06-02', 312),
(33, '2016-06-03', 272),
(33, '2016-06-04', 111),
(33, '2016-06-05', 237),
(33, '2016-06-13', 2),
(33, '2016-07-08', 3),
(33, '2016-07-11', 4),
(33, '2016-07-12', 1),
(34, '2016-05-26', 4),
(34, '2016-05-27', 7),
(34, '2016-05-28', 1),
(34, '2016-05-30', 1),
(34, '2016-05-31', 1),
(34, '2016-06-01', 1),
(34, '2016-06-02', 1),
(34, '2016-06-03', 2),
(34, '2016-06-05', 8),
(34, '2016-06-13', 1),
(34, '2016-07-08', 6),
(34, '2016-07-11', 1),
(34, '2016-07-12', 1),
(34, '2016-07-14', 1),
(35, '2016-06-03', 8),
(35, '2016-06-04', 16),
(35, '2016-06-05', 16),
(35, '2016-06-12', 1),
(35, '2016-06-13', 1),
(35, '2016-07-08', 23),
(35, '2016-07-09', 5),
(35, '2016-07-11', 10),
(35, '2016-07-12', 4),
(12282, '2015-06-02', 4),
(14190, '2015-06-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `value` longtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'general'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `value`, `type`) VALUES
(1, 'base_url', 'http://nghien.biz', 'general'),
(2, 'site_title', 'Xem phim hay,  Bom Tấn Online chuẩn HD ', 'general'),
(3, 'site_description', 'Trang xem phim hay online với chuẩn HD, cập nhật đầy đủ các thể loại phim, tốc độ load cực nhanh và xem phim hoàn toàn miễn phí.', 'general'),
(4, 'site_keywords', 'xem phim, phim hay, phim online, phim hd, phim miễn phí, xem phim hay, xem phim online, xem phim hd, xem phim miễn phí', 'general'),
(5, 'admin_email', 'nghien.biz@gmail.com', 'general'),
(6, 'gmt_offset', 'Asia/Ho_Chi_Minh', 'general'),
(7, 'date_format', 'd/m/Y', 'general'),
(8, 'time_format', 'H:i', 'general'),
(9, 'membership', '0', 'general'),
(10, 'default_role', 'subscriber', 'general'),
(11, 'admin_url_format', '/admin.php/:c:.con/:a:', 'general'),
(12, 'index_url_format', '/:a:.:c:', 'general'),
(13, 'index_theme', '123movies', 'general'),
(14, 'log_error_type', '5', 'general'),
(15, 'root_theme', 'themes', 'general'),
(16, 'image_save', '/upload/images/', 'general'),
(17, 'file_save', '/upload/files/', 'general'),
(18, 'download_save', '/upload/downloads/', 'general'),
(19, 'admin_theme', 'adminthemefilms', 'general'),
(20, 'temp', 'temp/', 'general'),
(21, 'default_category', '1', 'writing'),
(22, 'mail_server', 'mail.example.com', 'writing'),
(23, 'mail_login_name', 'login@example.com', 'writing'),
(24, 'mail_password', 'password', 'writing'),
(25, 'upload_file_rules', 'a:2:{s:13:"max_file_size";i:20;s:16:"allow_file_types";a:6:{i:0;s:9:"image/gif";i:1;s:10:"image/jpeg";i:2;s:9:"image/jpg";i:3;s:9:"image/png";i:4;s:11:"image/pjpeg";i:5;s:11:"image/x-png";}}', 'writing'),
(26, 'upload_file_location', '/upload/files/', 'writing'),
(27, 'upload_image_rules', 'a:4:{s:13:"max_file_size";i:3;s:16:"allow_file_types";a:6:{i:0;s:9:"image/gif";i:1;s:10:"image/jpeg";i:2;s:9:"image/jpg";i:3;s:9:"image/png";i:4;s:11:"image/pjpeg";i:5;s:11:"image/x-png";}s:9:"max_width";i:4096;s:10:"max_height";i:10000;}', 'writing'),
(28, 'upload_image_location', '/upload/images/', 'writing'),
(29, 'theme', 'quangcaoled', 'theme'),
(30, 'url_rewrite', 'a:4:{s:28:"#^/([a-zA-Z0-9_\\- ]+)\\.page#";a:3:{s:3:"con";s:4:"page";s:2:"me";s:5:"index";s:3:"arg";i:1;}s:26:"#^/[a-zA-Z0-9_\\- ]+\\.post#";a:2:{s:3:"con";s:4:"home";s:2:"me";s:5:"index";}s:46:"#^/([a-zA-Z0-9_\\- ]+)\\.con/([a-zA-Z0-9_\\- ]+)#";a:2:{s:3:"con";i:1;s:2:"me";i:2;}s:27:"#^/([a-zA-Z0-9_\\- ]+)\\.con#";a:1:{s:3:"con";i:1;}}', 'theme'),
(31, 'default_comment_status', 'publish', 'comment'),
(32, 'post_tag_mapper', '\\mod\\post\\db\\post_tag', 'term'),
(33, 'post_category_mapper', '\\admin\\post\\db\\post_term', 'term'),
(34, 'post_tag_type', 'tag', 'term'),
(35, 'term_category_type', 'category', 'term'),
(36, 'post_tag_name', 'Post Tags', 'term'),
(37, 'theme_category_mapper', '\\admin\\ctptheme\\db\\ctptheme_term', 'term'),
(38, 'theme_category_type', 'category', 'term'),
(39, 'theme_category_name', 'Theme Categories', 'term'),
(40, 'product_category_mapper', '\\admin\\product\\db\\product_term', 'term'),
(41, 'product_tag_mapper', '\\admin\\product\\db\\product_term', 'term'),
(42, 'product_category_type', 'category', 'term'),
(43, 'produc_tag_type', 'tag', 'term'),
(44, 'product_category_name', 'Danh mục sản phẩm', 'term'),
(45, 'product_tag_name', 'Thẻ tag sản phẩm', 'term'),
(46, 'product_status_mapper', '\\admin\\product\\db\\product_term', 'term'),
(47, 'product_status_type', 'tag', 'term'),
(48, 'product_status_name', 'Product Status', 'term'),
(49, 'product_filter_mapper', '\\admin\\product\\db\\product_term', 'term'),
(50, 'product_filter_type', 'category', 'term'),
(51, 'product_filter_name', 'Product Filters', 'term'),
(52, 'posts_mapper', '\\mod\\posts\\mysql\\m_posts_category', 'category'),
(53, 'posts_name', 'Danh mục tin tức', 'category'),
(54, 'posts_mapper', '\\mod\\posts\\mysql\\m_posts_tag', 'tag'),
(55, 'posts_name', 'Thẻ tag tin tức', 'tag'),
(56, 'upload_image', 'upload/image/', 'image'),
(57, 'thumb_location', 'cache/', 'image'),
(58, 'thumw', '100', 'image'),
(59, 'thumh', '100', 'image'),
(60, 'product_mapper', '\\mod\\product\\mysql\\m_product_category', 'category'),
(61, 'product_name', 'Danh mục sản phẩm', 'category'),
(105, 'site_name', 'Xem phim hay,  Bom Tấn Online chuẩn HD ', 'general'),
(106, 'company_name', 'Nha khoa Việt Khoa', 'company'),
(107, 'company_slogan', 'You Smile We Care', 'company'),
(108, 'company_address', 'a:1:{i:0;s:73:"9A Nguyễn Đình Chiểu, Quận Hai Bà Trưng, Thành Phố Hà Nội";}', 'company'),
(109, 'company_phone', 'a:1:{i:0;a:2:{s:4:"name";s:7:"Hotline";s:5:"phone";s:10:"0968668836";}}', 'company'),
(110, 'company_fax', '', 'company'),
(111, 'company_email', 'nhakhoavietkhoa@gmail.com', 'company'),
(112, 'company_website', 'http://nhakhoavietkhoa.com', 'company'),
(113, 'google_analystic', 'UA-78246182-1', 'general'),
(114, 'facebook_appid', '1704278759791793', 'general'),
(115, 'google_fanpage', '', 'company'),
(116, 'facebook_fanpage', 'https://www.facebook.com/nhakhoavietkhoa', 'company'),
(117, 'twitter_fanpage', '', 'company'),
(118, 'company_bank', 'a:1:{i:0;a:3:{s:19:"account_holder_name";s:0:"";s:10:"account_id";s:0:"";s:6:"branch";s:0:"";}}', 'company'),
(119, 'product_home_limit', '8', 'display'),
(120, 'product_category_limit', '8', 'display'),
(121, 'product_related_limit', '8', 'display'),
(122, 'post_home_limit', '8', 'display'),
(123, 'post_category_limit', '8', 'display'),
(124, 'post_related_limit', '8', 'display'),
(125, 'custom_product_related', 'no', 'display'),
(126, 'product_mapper', '\\mod\\product\\mysql\\m_product_tag', 'tag'),
(127, 'product_name', 'Thẻ tag sản phẩm', 'tag'),
(129, 'dateformat', 'd-m-Y H:i:s', 'general'),
(130, 'logo', '/upload/image/options/logo-250x72.png', 'general'),
(131, 'favicon', '/upload/image/options/icon-logo-85x85.png', 'general'),
(132, 'display_popup', 'no', 'display'),
(133, 'popup_name', 'Popup trang chủ', 'display'),
(134, 'popup_image', '/upload/image/ads/tintuc-1.jpg', 'display'),
(135, 'popup_time', '20', 'display'),
(136, 'popup_url', '', 'display'),
(137, 'banner', '/upload/image/options/banner_xintrum_fashion.png', 'general'),
(138, 'index_mtheme', '123movies', 'general'),
(139, 'dichvu_content', 'a:1:{i:0;a:3:{s:11:"ten_dich_vu";s:27:"Quy Trình Chuyên Nghiệp";s:10:"icon_image";s:36:"/upload/image/icons/icon-dvvt-21.jpg";s:13:"mo_ta_dich_vu";s:144:"Nha Khoa Việt Khoa áp dụng quy trình chuyên nghiệp về: Khử trùng, vô khuẩn, máy hấp nhiệt, hộp bảo quản thiết bị";}}', 'company'),
(140, 'watermark', '/upload/image/options/logo-250x721.png', 'general');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sys_id` bigint(20) DEFAULT NULL,
  `slug` varchar(200) NOT NULL DEFAULT '',
  `title` text NOT NULL,
  `excerpt` text NOT NULL,
  `image` text,
  `content` longtext NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'publish',
  `type` varchar(20) NOT NULL DEFAULT 'post',
  `format` varchar(20) DEFAULT NULL,
  `author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `modified_author` bigint(20) DEFAULT NULL,
  `date` datetime DEFAULT '0000-00-00 00:00:00',
  `gmt` datetime DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `modified_gmt` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `metadata` text,
  `search` text,
  `link_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `sys_id`, `slug`, `title`, `excerpt`, `image`, `content`, `status`, `type`, `format`, `author`, `modified_author`, `date`, `gmt`, `modified_date`, `modified_gmt`, `publish_date`, `metadata`, `search`, `link_id`) VALUES
(135, 88, 'lam-tam-nhu-dap-may-bay-di-tham-hoac-kien-hoa-ngay-sau-khi-cong-khai-tinh-cam', 'Lâm Tâm Như đáp máy bay đi thăm Hoắc Kiến Hoa ngay sau khi công khai tình cảm', 'Xuất hiện tại s&acirc;n bay tr&ecirc;n đường đến Thanh Đảo (Trung Quốc), nữ diễn vi&ecirc;n 40 tuổi kh&aacute; ngượng ng&ugrave;ng khi bị hỏi chuyện lặn lội đường xa đến thăm Hoắc Kiến Hoa.\r\n\r\nSina đưa tin, chiều 21/5, L&acirc;m T&acirc;m Như xuất hiện tại s&acirc;n bay đ&aacute;p chuyến từ Đ&agrave;i Loan đến Thanh', '/upload/image/posts/4fb32c2e929a5626d8c212e47407fac9_1463823617_d633jpg1.jpg', '&lt;div&gt;Xuất hiện tại s&amp;acirc;n bay tr&amp;ecirc;n đường đến Thanh Đảo (Trung Quốc), nữ diễn vi&amp;ecirc;n 40 tuổi kh&amp;aacute; ngượng ng&amp;ugrave;ng khi bị hỏi chuyện lặn lội đường xa đến thăm Hoắc Kiến Hoa.&lt;/div&gt;\r\n&lt;div id=&quot;content-news&quot;&gt;\r\n&lt;p&gt;Sina đưa tin, chiều 21/5, L&amp;acirc;m T&amp;acirc;m Như xuất hiện tại s&amp;acirc;n bay đ&amp;aacute;p chuyến từ Đ&amp;agrave;i Loan đến Thanh Đảo. Trang tin cho biết, Hoắc Kiến Hoa đang đ&amp;oacute;ng phim tại đ&amp;acirc;y n&amp;ecirc;n người đẹp 40 tuổi đến thăm bạn trai.&lt;/p&gt;\r\n&lt;p&gt;&lt;img title=&quot;Vừa c&amp;ocirc;ng khai y&amp;ecirc;u, L&amp;acirc;m T&amp;acirc;m Như đ&amp;aacute;p m&amp;aacute;y bay đi thăm bạn trai h&amp;igrave;nh ảnh 1&quot; src=&quot;http://hdonline.vn/i/resources/new/post/screen/2016/05/21/4fb32c2e929a5626d8c212e47407fac9_1463823617_d633jpg.jpg&quot; alt=&quot;Vua cong khai yeu, Lam Tam Nhu dap may bay di tham ban trai hinh anh 1&quot; /&gt;&lt;br /&gt;L&amp;acirc;m T&amp;acirc;m Như giản dị xuất hiện tại s&amp;acirc;n bay tr&amp;ecirc;n đường đến thăm bạn trai tại Thanh Đảo. Ảnh: Apple.&lt;/p&gt;\r\n&lt;p&gt;Khi c&amp;oacute; mặt tại s&amp;acirc;n bay, c&amp;ocirc; đội mũ đen, mặc &amp;aacute;o ph&amp;ocirc;ng trắng, quần jeans đơn giản. Ph&amp;aacute;t hiện k&amp;yacute; giả, c&amp;ocirc; cố t&amp;igrave;nh c&amp;uacute;i thấp tr&amp;aacute;nh sự ch&amp;uacute; &amp;yacute;. Nguồn tin cho biết, Hoắc Kiến Hoa cũng c&amp;oacute; mặt tại s&amp;acirc;n bay Thanh Đảo c&amp;ugrave;ng thời điểm để chờ bạn g&amp;aacute;i. Cảnh tượng được mi&amp;ecirc;u tả giống như &amp;ldquo;vợ chồng son&amp;rdquo;.&lt;/p&gt;\r\n&lt;p&gt;Trả lời phỏng vấn Ettoday ngay tại s&amp;acirc;n bay, L&amp;acirc;m T&amp;acirc;m Như mỉm cười cảm ơn sự ch&amp;uacute;c ph&amp;uacute;c của kh&amp;aacute;n giả. Trước nghi vấn về việc sắp cưới do gia đ&amp;igrave;nh th&amp;uacute;c giục v&amp;agrave; mang bầu, c&amp;ocirc; phủ nhận: &amp;ldquo;Chưa thể nhanh thế được. H&amp;ocirc;m qua ch&amp;uacute;ng t&amp;ocirc;i mới n&amp;oacute;i y&amp;ecirc;u, l&amp;agrave;m thế n&amp;agrave;o h&amp;ocirc;m nay đ&amp;atilde; mang thai&amp;rdquo;.&lt;/p&gt;\r\n&lt;div id=&quot;bscontainer&quot;&gt;\r\n&lt;div id=&quot;bsplayer&quot; tabindex=&quot;0&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;p&gt;Nhận x&amp;eacute;t về bạn trai, c&amp;ocirc; cười: &amp;ldquo;Ch&amp;uacute;ng t&amp;ocirc;i l&amp;agrave; bạn th&amp;acirc;n nhiều năm, kh&amp;oacute; nhận x&amp;eacute;t&amp;rdquo;. Đối với tin tức dọn đến sống chung với Hoắc Kiến Hoa sau khi anh mua nh&amp;agrave; tại Đ&amp;agrave;i Loan, nữ diễn vi&amp;ecirc;n phủ nhận: &amp;ldquo;Kh&amp;ocirc;ng c&amp;oacute; chuyện đ&amp;oacute;&amp;rdquo;.&lt;/p&gt;\r\n&lt;p&gt;&lt;img title=&quot;Vừa c&amp;ocirc;ng khai y&amp;ecirc;u, L&amp;acirc;m T&amp;acirc;m Như đ&amp;aacute;p m&amp;aacute;y bay đi thăm bạn trai h&amp;igrave;nh ảnh 2&quot; src=&quot;http://hdonline.vn/i/resources/new/post/screen/2016/05/21/222685871c6513feee25fa8ea5b4689d_201605211528557b47f_550jpg.jpg&quot; alt=&quot;Vua cong khai yeu, Lam Tam Nhu dap may bay di tham ban trai hinh anh 2&quot; /&gt;&lt;br /&gt;Theo mi&amp;ecirc;u tả của Sina, L&amp;acirc;m T&amp;acirc;m Như đến Thanh Đảo thăm người y&amp;ecirc;u. Hoắc Kiến Hoa cũng ra tận s&amp;acirc;n bay đ&amp;oacute;n c&amp;ocirc;. Ảnh: ETtoday.&lt;/p&gt;\r\n&lt;p&gt;B&amp;aacute;o ch&amp;iacute; Đ&amp;agrave;i Loan cho biết, gia đ&amp;igrave;nh hai b&amp;ecirc;n rất ủng hộ mối quan hệ giữa L&amp;acirc;m T&amp;acirc;m Như v&amp;agrave; t&amp;agrave;i tử k&amp;eacute;m 3 tuổi. Mẹ Hoắc Kiến Hoa trả lời phỏng vấn tiết lộ b&amp;agrave; vui mừng khi biết con trai c&amp;ocirc;ng khai bạn g&amp;aacute;i. &amp;ldquo;T&amp;ocirc;i cũng giục ch&amp;aacute;u, tuổi t&amp;aacute;c kh&amp;ocirc;ng c&amp;ograve;n nhỏ nữa phải sớm kết h&amp;ocirc;n đi th&amp;ocirc;i&amp;rdquo;. N&amp;oacute;i về L&amp;acirc;m T&amp;acirc;m Như, b&amp;agrave; nhấn mạnh: &amp;ldquo;T&amp;ocirc;i tin v&amp;agrave;o mắt nh&amp;igrave;n người của con trai&amp;rdquo;.&lt;/p&gt;\r\n&lt;p&gt;Hoắc Kiến Hoa sinh năm 1979 tại Đ&amp;agrave;i Loan. Anh từng c&amp;oacute; thời gian chật vật khi đ&amp;oacute;ng phim thần tượng tại qu&amp;ecirc; nh&amp;agrave;. Thời điểm sang Đại lục ph&amp;aacute;t triển, nam diễn vi&amp;ecirc;n đ&amp;atilde; bước sang trang mới trong sự nghiệp v&amp;agrave; trở th&amp;agrave;nh t&amp;agrave;i tử xứ Đ&amp;agrave;i đắt gi&amp;aacute; nhất hiện nay. Về đời tư, anh từng c&amp;ocirc;ng khai y&amp;ecirc;u Trần Kiều &amp;Acirc;n v&amp;agrave; vướng tin đồn t&amp;igrave;nh &amp;aacute;i với Diệp Tuyền, Trương Hinh Dư, Quan Chi L&amp;acirc;m.&lt;/p&gt;\r\n&lt;p&gt;L&amp;acirc;m T&amp;acirc;m Như sinh năm 1976, c&amp;ocirc; từng c&amp;oacute; đoạn t&amp;igrave;nh với L&amp;acirc;m Ch&amp;iacute; Dĩnh, đạo diễn Đường Qu&amp;yacute; Lễ.&lt;/p&gt;\r\nTheo Zing&lt;/div&gt;', 'publish', 'posts', NULL, 1, 1, '2016-05-22 20:35:22', '2016-05-22 13:35:22', '2016-05-22 20:35:22', '2016-05-22 13:35:22', '2016-05-22 13:32:56', '{"id":88,"title":"L\\u00e2m T\\u00e2m Nh\\u01b0 \\u0111\\u00e1p m\\u00e1y bay \\u0111i th\\u0103m Ho\\u1eafc Ki\\u1ebfn Hoa ngay sau khi c\\u00f4ng khai t\\u00ecnh c\\u1ea3m","description":"Xu\\u1ea5t hi\\u1ec7n t\\u1ea1i s&acirc;n bay tr&ecirc;n \\u0111\\u01b0\\u1eddng \\u0111\\u1ebfn Thanh \\u0110\\u1ea3o (Trung Qu\\u1ed1c), n\\u1eef di\\u1ec5n vi&ecirc;n 40 tu\\u1ed5i kh&aacute; ng\\u01b0\\u1ee3ng ng&ugrave;ng khi b\\u1ecb h\\u1ecfi chuy\\u1ec7n l\\u1eb7n l\\u1ed9i \\u0111\\u01b0\\u1eddng xa \\u0111\\u1ebfn th\\u0103m Ho\\u1eafc Ki\\u1ebfn Hoa.\\r\\n\\r\\nSina \\u0111\\u01b0a tin, chi\\u1ec1u 21\\/5, L&acirc;m T&acirc;m Nh\\u01b0 xu\\u1ea5t hi\\u1ec7n t\\u1ea1i s&acirc;n bay \\u0111&aacute;p chuy\\u1ebfn t\\u1eeb \\u0110&agrave;i Loan \\u0111\\u1ebfn Thanh","keywords":"Lam Tam Nhu dap may bay di tham Hoac Kien Hoa ngay sau khi cong khai tinh cam","customize":"","status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":"","link_download":null,"link_password":null,"youtubeid":""}', 'Lam Tam Nhu dap may bay di tham Hoac Kien Hoa ngay sau khi cong khai tinh cam', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts_category`
--

CREATE TABLE `posts_category` (
  `posts_id` int(20) NOT NULL,
  `category_id` int(20) NOT NULL,
  `order` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts_category`
--

INSERT INTO `posts_category` (`posts_id`, `category_id`, `order`) VALUES
(135, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts_metadata`
--

CREATE TABLE `posts_metadata` (
  `posts_id` bigint(20) NOT NULL,
  `key` varchar(20) NOT NULL DEFAULT '',
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `posts_tag`
--

CREATE TABLE `posts_tag` (
  `tag_id` int(20) NOT NULL,
  `posts_id` int(20) NOT NULL,
  `order` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `posts_tag`
--

INSERT INTO `posts_tag` (`tag_id`, `posts_id`, `order`) VALUES
(37, 135, 0),
(38, 135, 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_id`
--

CREATE TABLE `system_id` (
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_id`
--

INSERT INTO `system_id` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69),
(70),
(71),
(73),
(74),
(75),
(76),
(77),
(78),
(79),
(80),
(81),
(82),
(85),
(86),
(87),
(88),
(89),
(90),
(91),
(92),
(93),
(94),
(95),
(96),
(97),
(98),
(99),
(100),
(101),
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109),
(110),
(111),
(112),
(113),
(114),
(115),
(116),
(117),
(118),
(119),
(120),
(121),
(122),
(123),
(124),
(125),
(126),
(127),
(128),
(129),
(130),
(131),
(132),
(133),
(134),
(135),
(136),
(137);

-- --------------------------------------------------------

--
-- Table structure for table `system_metadata`
--

CREATE TABLE `system_metadata` (
  `id` bigint(20) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `keywords` varchar(1000) DEFAULT NULL,
  `customize` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_metadata`
--

INSERT INTO `system_metadata` (`id`, `title`, `description`, `keywords`, `customize`) VALUES
(1, 'Vietnam', '', 'Vietnam', ''),
(2, 'America', '', 'America', ''),
(3, 'Korea', '', 'Korea', ''),
(4, 'China', '', 'China', ''),
(5, 'United Kingdom', '', 'United Kingdom', ''),
(6, 'Africa', '', 'Africa', ''),
(7, 'Action', '', 'Action', ''),
(8, 'Adventure', '', 'Adventure', ''),
(9, 'Animation', '', 'Animation', ''),
(10, 'Comedy', '', 'Comedy', ''),
(11, 'Family', '', 'Family', ''),
(12, 'Fantasy', '', 'Fantasy', ''),
(13, 'History', '', 'History', ''),
(14, 'Thriller', '', 'Thriller', ''),
(15, 'Biography', '', 'Biography', ''),
(19, 'The Flash', '', 'The Flash', NULL),
(20, 'The Flash Season 1', '', 'The Flash Season 1', NULL),
(21, 'TV Series', '', 'TV Series', NULL),
(22, 'Drama', '', 'Drama', ''),
(23, 'Sci-Fi', '', 'Sci-Fi', ''),
(24, 'Marvel', '', 'Marvel', NULL),
(25, 'Age Of Ultron', '', 'Age Of Ultron', NULL),
(26, 'Avengers', '', 'Avengers', NULL),
(27, 'Avengers 2015', '', 'Avengers 2015', NULL),
(28, 'ciname movies', '', 'ciname movies', NULL),
(29, 'thriller', '', 'thriller', NULL),
(30, 'Fast and Furious 7', '', 'Fast and Furious 7', NULL),
(31, 'Fast 7', '', 'Fast 7', NULL),
(32, 'Người hùng tia chớp (Phần 1)', 'Barry Allen was just 11 years old when his mother was killed in a bizarre and terrifying incident and his father was falsely convicted of the murder. With his life changed forever by the tragedy, Barry was taken in and raised by Detective Joe West, the father of Barry’s best friend, Iris. Now, Barry has become a brilliant, driven and endearingly geeky CSI investigator, whose determination to uncover the truth about his mother’s strange death leads him to follow up on every unexplained urban lege', 'Nguoi hung tia chop (Phan 1)', ''),
(33, 'Japan', '', 'Japan', ''),
(34, 'Kyoto Kenshin', '', 'Kyoto Kenshin', NULL),
(35, 'Flying Swords Of Dragon Gate', '', 'Flying Swords Of Dragon Gate', NULL),
(36, 'Tôi Là Nữ Vương', ' Bộ phim xoay quanh cuộc sống, những thăng trầm và tình yêu của ba cô gái thành đạt chốn đô thị. Song Hye Kyo, Trần Kiều Ân và Y Năng Tịnh sẽ hóa thân vào vai ba cô bạn thân của nhau, cũng chính là ba nhân vật trung tâm của bộ phim. Hye Kyo', 'Toi La Nu Vuong', ''),
(37, 'Lời Tự Thú Của Một Tín Đồ Shopping', 'Tham vọng lớn nhất của Rebecca Bloomwood (Isla Fisher) là được nhận vào làm ở tờ tạp chí thời trang danh tiếng, Alette. Nhưng trong lúc chờ thời, cô phóng viên chuyên viết bài về chủ đề vườn tược cho một tạp chí nhỏ coi mua', 'Loi Tu Thu Cua Mot Tin Do Shopping', ''),
(38, 'Mystery', '', 'Mystery', ''),
(39, 'Horror', '', 'Horror', ''),
(40, 'Kết Án', 'Bộ phim dựa trên một câu chuyện có thật về Betty Anne Waters, một bà mẹ phải một mình nuôi hai đứa con trong khi cố gắng đạt được bằng đại học Luật để bào chữa cho em trai mình, người đã bị buộc tội giết người. Cô đã phải học để lấy bằng cấp hai, bằng cấp ba, sau đó là', 'Ket An', ''),
(41, 'Săn Lùng', 'vào khoang cứu hộ khẩn cấp và đưa xuống mặt đất. Ngờ đâu, chính Morris lại là kẻ sắp đặt tất cả để biến ông thành mục tiêu săn đuổi của một nhóm khủng bố. May mắn thay, ông nhận được sự giúp đỡ từ cậu bé người địa phương Oskari (Onni Tommila) đang nhận nhiệm vụ săn linh', 'San Lung', ''),
(42, 'Đế Chế Ultron', 'Mệt mỏi vì công việc của một nhà sáng chế, doanh nhân và cả trách nhiệm của một siêu anh hùng, Tony đã quyết định tạo ra Ultron để thay mình bảo vệ thế giới. Nhưng ý tưởng đã thất bại, Ultron trở nên mất kiểm soát và biến thành một cỗ', 'De Che Ultron', ''),
(43, 'Động Đất San Andreas', 'Khi một nhà địa chấn học ko nổi tiếng cảnh báo về một trận động đất 12.7 độ, ko ai quan tâm đến cảnh báo của cô. Vì lẽ đó, cô một mình đưa gia đình đến nơi ai toàn trước khi trận động đất làm tan nát và khiến LA tách ra khỏi đất', 'Dong Dat San Andreas', ''),
(44, 'Đấu Trường Đẫm Máu', 'David Chúa thấy mình bị buộc vào thế giới hoang dã của một trường võ sĩ giác đấu hiện đại, nơi mà những người đàn ông chiến đấu đến cùng cho vui chơi giải trí của quần chúng trực', 'Dau Truong Dam Mau', ''),
(45, 'Báo Thù', 'Một chàng trai là chủ tịch của 1 tập đoàn máy tính lớn đem lòng yêu 1 cô gái đã tung tin đồn là cô gái đó là bạn gái của anh, cho dù 2 người chưa từng gặp mặt. Và rồi 2 người bắt đầu yêu nhau nhưng cô gái đã', 'Bao Thu', ''),
(46, 'Max Điên: Con Đường Tử Thần', 'Bối cảnh phim ở một nơi rất xa của trái đất, nơi ấy sa mạc bao phủ hầu hết bề mặt và hầu hết mọi người đều điên cuồng đấu tranh cho những nhu cầu của cuộc sống. Trong thế giới này tồn tại hai phiến quân đang chạy trốn những người được coi là có thể để khôi phục lại trật tự thế giới. Trong đó', 'Max Dien: Con Duong Tu Than', ''),
(47, 'Ghajini Phải Chết', 'Một chàng trai là chủ tịch của 1 tập đoàn máy tính lớn đem lòng yêu 1 cô gái đã tung tin đồn là cô gái đó là bạn gái của anh, cho dù 2 người chưa từng gặp mặt. Và rồi 2 người bắt đầu yêu nhau nhưng cô gái đã', 'Ghajini Phai Chet', ''),
(48, 'Bầu Trời Sắt', 'Trong khoảnh khắc cuối cùng của chiến tranh thế giới thứ II, chương trình không gian bí mật của Đức Quốc xã đã trốn tránh việc bị phá hủy bằng cách chạy trốn tới phía tối của Mặt Trăng.Trong suốt 70 năm ẩn dấu bí mật, Đức quốc xã đã cho xây dựng một pháo', 'Bau Troi Sat', ''),
(49, 'Ông Nội Tôi Là Cương Thi', 'Bộ phim Sifu vs vampire kể về hai tên giang hồ vô tình đánh thức một xác chết nhiều năm sau một vụ cá cược. Từ đó hồi sinh hàng loạt cương thi khác, các xác chết cương thi tràn ra đường phố HongKong và gây ra cảnh hỗn loạn. Mọi chuyện bắt đầu rối rắm và', 'Ong Noi Toi La Cuong Thi', ''),
(50, 'Trò chơi sinh tồn', 'Tại một trường trung học, một giáo viên đang giảng bài bất thình lình bị nổ tung sọ ngay bên bục giảng. Kế sau đó, những vụ nổ xảy ra liên tiếp. Shun Takahata và những học sinh trong lớp bị ép buộc phải cùng tham gia một trò chơi sinh tử mà họ không hề biết ai đứng đằng', 'Tro choi sinh ton', ''),
(51, 'Đại Hỏa Kyoto Kenshin', 'Kenshin sau khi bắt đầu cuộc sống mới cùng Kaoru và bạn bè thì nhận được yêu cầu từ chính quyền Minh Trị. Makoto Shishio là một cựu sát thủ như Kenshin, bị phản bội và bị thiêu sống, nhưng đã thoát chết và hiện đang ở Kyoto, cùng đồng bọn âm mưu lật đổ', 'Dai Hoa Kyoto Kenshin', ''),
(52, 'Long Môn Phi Giáp', 'Phim lấy bối cảnh từ thời nhà Minh. Câu chuyện bắt đầu khi hiệp khách Triệu Hoài An (Nhiếp Viễn) quyết định ẩn náu tại quán trọ Long Môn, sau thời gian bị truy đuổi vì tội giải thoát một trong những phạm nhân triều đình. Tại nơi đây, anh được bà chủ trước đây của', 'Long Mon Phi Giap', ''),
(53, 'Diện Mạo Hoàng Đế', 'Đây là dự án truyền hình mới nhất của nam ca sĩ - diễn viên Seo In Guk. Anh sẽ vào vai Hoàng tử Gwanghee, vốn là con trai của một nàng hầu nên tư cách thừa kế ngai vàng của Gwanghee bị nghi ngờ. Trước ngày lên ngai vàng, Gwanghee từng bị truất ngôi và phải', 'Dien Mao Hoang De', ''),
(54, 'Trại Giam Kiểu Mỹ 2', 'Orange Is the New Black 2 tiếp tục miêu tả chân thực cuộc sống có phần thác loạn của những nữ tù nhân khi họ phải tìm mọi cách để sống sót trong tù. Sau việc làm rất tệ của cô, thì lần này Piper đã được chuyển đến một nhà tù khác', 'Trai Giam Kieu My 2', ''),
(55, 'Kỳ Án Nhà Thanh 2', 'Một năm trước, 2 người vợ Lệ Thư, Hương Dung và con cái của Thi Thế Luân (Âu Dương Chấn Hoa) chết trong vụ đắm thuyền, từ sự việc đó đã làm thay đổi quan điểm sống của ông ta, ông quyết định sống những ngày tháng an', 'Ky An Nha Thanh 2', ''),
(56, 'Cặp Đôi Ngoại Cảm', 'Bộ phim dựa trên một tác phẩm truyện tranh nổi tiếng cùng tên, trong đó Park Yoochun sẽ vào vai Choi Moogak bị vô cảm (mất đi vị giác, xúc giác, cảm giác đau đớn hay rung cảm), một cảnh sát truy đuổi kẻ giết người hàng loạt sau khi người em gái duy nhất của mình bị', 'Cap Doi Ngoai Cam', ''),
(57, 'fantasy', '', 'fantasy', NULL),
(58, 'drama', '', 'drama', NULL),
(59, 'Hậu Trường', 'Đây là bộ phim kể về hậu trường, những gì xảy ra phía sau màn ảnh của các chương trình truyền hình (variety show). Baek Seung Chan (Kim Soo Hyun) trong vai 1 đạo diễn muốn thực hiện 1 chương trình lớn. Anh ấy cộng tác với Cindy (IU), ngôi sao nhạc Pop và Tak Ye Ji (Gong Hyo Jin), đạo diễn âm', 'Hau Truong', ''),
(60, 'Survivor 2015', 'A Foreign Service Officer in London tries to prevent a terrorist attack set to hit New York, but is forced to go on the run when she is framed for crimes she did not commit.', 'Survivor 2015', ''),
(61, 'Survivor 2015', '', 'Survivor 2015', NULL),
(62, 'Jurassic Park 3', 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.', 'Jurassic Park 3', ''),
(63, 'Jurassic', '', 'Jurassic', NULL),
(64, 'Jurassic Park 3', '', 'Jurassic Park 3', NULL),
(65, 'Jurassic 2001', '', 'Jurassic 2001', NULL),
(66, 'Tân Tam Quốc Diễn Nghĩa 2010', 'Bắt đầu viết kịch bản từ năm 2004, qua 5 lần chỉnh sửa, chính thức bấm máy vào tháng 9/2008. Bộ phim quy tụ lực lượng diễn viên hùng hậu với dàn sao đến từ cả Trung Quốc đại lục, Hongkong và Đài Loan với kinh phí đầu tư khổng lồ. Bộ phim nói về triều đại Đông Hán Võ Đế tới Tây Tấn Võ Đế, lịch sử kéo dài gần 100 năm. ', 'Tan Tam Quoc Dien Nghia 2010', ''),
(67, 'sifu vs vampire', '', 'sifu vs vampire', NULL),
(68, 'phim ma', '', 'phim ma', NULL),
(69, 'ông tôi là cương thi', '', 'ong toi la cuong thi', NULL),
(70, 'cương thi', '', 'cuong thi', NULL),
(71, 'Cuộc Đua Tuyệt Chủng', 'Phim nói về hàng loạt các nghiên cứu bí mật nhằm ngăn chặn sự tuyệt chủng của các loài động vật quý hiếm. Phim có sự tham gia của các diễn viên như Elon Musk, Joel Sartore, Louie Psihoyos...', 'Cuoc Dua Tuyet Chung', ''),
(73, 'CHIẾN TRANH GIỮA CÁC VÌ SAO 7: THẦN LỰC THỨC TỈNH', 'Phim lấy bối cảnh 30 năm sau sự kiện của Star Wars phần IV – Return of the Jedi (Sự trở lại của Jedi). Bộ phim sẽ theo chân các nhân vật quen thuộc như Luke, Han Solo, Công chúa Leia… đến một hành tinh lạ với mục đích thu thập mẫu vật. ', 'CHIEN TRANH GIUA CAC VI SAO 7: THAN LUC THUC TINH', ''),
(74, 'Người về từ cõi chết', 'The Revenant dựa trên câu chuyện có thật, phim kể về người thợ săn Hugh Glass (Leonardo Dicaprio thủ vai). Sau một trận chiến đẫm máu với những người Mỹ bản địa, Hugh bị thương và bị đồng đội tàn nhẫn bỏ lại trong khu núi tuyết giá rét. Từ đó, Hugh Glass phải làm tất cả mọi thứ để có thể tồn tại giữa cái lạnh tàn bạo, những động vật ăn thịt và chiến tranh với những bộ lạc nơi vùng núi hoang vu. ', 'Nguoi ve tu coi chet', ''),
(75, 'The Revenant 2015', '', 'The Revenant 2015', NULL),
(76, 'The Revenant VietSub', '', 'The Revenant VietSub', NULL),
(77, 'The Revenant Thuyết minh', '', 'The Revenant Thuyet minh', NULL),
(78, 'The Revenant full HD', '', 'The Revenant full HD', NULL),
(79, 'The Revenant bản đẹp', '', 'The Revenant ban dep', NULL),
(80, 'The Revenant trọn bộ', '', 'The Revenant tron bo', NULL),
(81, 'The Revenant phụ đề', '', 'The Revenant phu de', NULL),
(82, 'Mật vụ KINGSMAN', 'Phim Mật vụ Kingsman kể về một tổ chức điệp viên cực kỳ bí mật trong quá trình tuyển mộ Eggs một đứa trẻ đường phố không có học thức gì nhưng cực thông minh và có tố chất trở thành một điệp viên công nghệ cao', 'Mat vu KINGSMAN', ''),
(85, 'Phim', '', 'Phim', ''),
(86, 'Diễn viên', '', 'Dien vien', ''),
(87, 'Tin tức khác', '', 'Tin tuc khac', ''),
(88, 'Lâm Tâm Như đáp máy bay đi thăm Hoắc Kiến Hoa ngay sau khi công khai tình cảm', 'Xuất hiện tại s&acirc;n bay tr&ecirc;n đường đến Thanh Đảo (Trung Quốc), nữ diễn vi&ecirc;n 40 tuổi kh&aacute; ngượng ng&ugrave;ng khi bị hỏi chuyện lặn lội đường xa đến thăm Hoắc Kiến Hoa.\r\n\r\nSina đưa tin, chiều 21/5, L&acirc;m T&acirc;m Như xuất hiện tại s&acirc;n bay đ&aacute;p chuyến từ Đ&agrave;i Loan đến Thanh', 'Lam Tam Nhu dap may bay di tham Hoac Kien Hoa ngay sau khi cong khai tinh cam', ''),
(89, 'lâm tâm như', '', 'lam tam nhu', NULL),
(90, 'hoắc kiến hoa', '', 'hoac kien hoa', NULL),
(91, 'Dị nhân: Khải huyền', 'X-Men: Apocalypse là bộ phim siêu anh hùng dựa trên X-Men, những nhân vật xuất hiện trong Marvel Comics. Bộ phim là phần tiếp theo của X-Men: Days of Future Past và là phần thứ 9 trong loạt phim X-Men.', 'Di nhan: Khai huyen', ''),
(92, 'x-men', '', 'x-men', NULL),
(93, 'dị nhân', '', 'di nhan', NULL),
(94, 'Apocalypse', '', 'Apocalypse', NULL),
(95, 'Days of Future Past', '', 'Days of Future Past', NULL),
(96, 'kỳ án nhà thanh', '', 'ky an nha thanh', NULL),
(97, 'ky an nha thanh tap 1', '', 'ky an nha thanh tap 1', NULL),
(98, 'ky an nha thanh 2', '', 'ky an nha thanh 2', NULL),
(99, 'Naruto Shippuuden', 'Sau khi huấn luyện 2 năm rưỡi với Jiraiya, Naruto trở về làng Lá, đoàn tụ với những người bạn cậu đã chia tay, và lập lại Nhóm 7, giờ được gọi là Nhóm Kakashi, với Sai thế chỗ Sasuke. Tất cả những người bạn của Naruto đều đã trưởng thành và thăng cấp.', 'Naruto Shippuuden', ''),
(100, 'naruto', '', 'naruto', NULL),
(101, 'Naruto Shippuuden', '', 'Naruto Shippuuden', NULL),
(102, 'Uzumaki Naruto', '', 'Uzumaki Naruto', NULL),
(103, 'Phim kinh dị', 'Phim kinh dị', 'kinh di, phim kinh di', ''),
(104, 'Phim ma kinh dị và tuyển tập những phim ma hay và mới nhất ', 'Xem những bộ phim kinh di, phim ma hay nhất và mới nhất năm 2016 trên thế giới với những tình tiết rùng rợn và hấp dẫn nhất hiện nay.', 'kinh di, phim kinh di, phim ma, ', ''),
(105, 'Phim hành động hay, phim hành động mỹ mới hot và hấp dẫn nhất hiện nay', 'Phim hanh dong - xem những tuyển tập phim hành động hay và mới hấp dẫn nhất năm 2016  với chất lượng HD được cập nhật liên tục', 'phim hanh dong, phim hành động, phim hanh dong my', ''),
(106, 'Xem phim phiêu lưu hay và phim phiêu lưu mới nhất, phim phieu luu hot nhất ', 'Phim phieu luu - Tuyển tập những bộ phim phiêu lưu hay và mới nhất năm 2016 được cập nhật liên tục chất lượng HD ', 'phim phieu luu, phim phiêu lưu, ', ''),
(107, 'Phim ma kinh dị và tuyển tập những phim ma hay và mới nhất', 'Xem những bộ phim kinh di, phim ma hay nhất và mới nhất năm 2016 trên thế giới với những tình tiết rùng rợn và hấp dẫn nhất hiện nay.', 'kinh di, phim kinh di, phim ma,', ''),
(108, 'Phim chiến tranh mới, hot nhất năm 2016, phim chien tranh hay nhat', 'Xem những bộ phim chiến tranh mới và hot nhất năm 2016 với những bộ phim chien tranh chất lượng HD được cập nhật liên tục', 'phim chien tranh, phim chiến tranh', ''),
(109, 'Xem phim hài hước, xem phim hài hước mới và hay nhất 2016', 'Phim hai huoc - tuyển tập những bộ phim hài hước miễn phí hay và mới nhất năm 2016 với chất lượng HD được cập nhật liên tục', 'phim hài hước, phim hai huoc', ''),
(110, 'Phim cổ trang, phim co trang kiem hiep hay hot nhất 2016', 'Xem những bộ phim cổ trang, phim co trang kiem hiep, phim kiếm hiệp được tuyển chọn với nội dung hấp dẫn và chất lượng HD miễn phí', 'phim co trang, phim cổ trang', ''),
(111, 'Xem phim khoa học viễn tưởng, phim viễn tưởng hay và hot nhất', 'Tuyển tập những bộ phim viễn tưởng và phim khoa học viễn tưởng hay và mới nhất năm 2016 được cập nhật liên tục với chất lượng HD', 'phim khoa hoc, phim vien tuong, phim viễn tưởng, phim khoa học', ''),
(112, 'Phim tâm lý hay, phim tình cảm hot và phim tâm lý tình cảm nóng bỏng nhất', 'Xem phim tâm ly tình cảm, phim tam ly, phim tinh cam với những bộ phim được chọn lọc và mới nhất 2016 chất lượng HD được xem miễn phí', 'phim tam ly, phim tinh cam, phim tam ly tinh cam', ''),
(113, 'Phim hình sự mới nhất, phim hình sự hay nhất và chọn lọc 2016', 'Xem phim hình sự mới nhất miễn phí, phim hình sự hay nhất năm 2016 được cập nhật liên tục với chất lượng HD', 'phim hình sự, phim hinh su', ''),
(114, 'Phim hoạt hình hay và hot nhất, phim hoat hinh chọn lọc mới nhất', 'Xem phim hoạt hình hay, xem phim hoạt hình mới nhất và miễn phí năm 2016 được cập nhật liên tục với chất lượng HD nét nhất', 'phim hoat hinh, phim hoạt hình', ''),
(115, 'Xem phim tình cảm lãng mạn mới và hay nhất, phim tinh cam moi nhat', 'Xem phim tình cảm lãng mạn mới nhất và phim tinh càm hàn quốc hay nhất được cập nhật năm 2016 với chất lượng HD ', 'phim tinh cam, phim tình cảm', ''),
(116, 'Phim gia đình hay hot nhất, phim gia dinh HD mới nhất năm 2016', 'Xem những bộ phim về gia đình, phim gia dinh hay nhất chất lượng. Những bộ phim lẻ và phim bộ được cập nhật thường xuyên và xem miễn phí', 'phim gia dinh, phim gia đình', ''),
(117, 'Phim gia đình hay hot nhất, phim gia dinh HD mới nhất năm 2016', 'Xem những bộ phim về gia đình, phim gia dinh hay nhất chất lượng. Những bộ phim lẻ và phim bộ được cập nhật thường xuyên và xem miễn phí', 'phim gia dinh, phim gia đình', ''),
(118, 'Phim ma kinh dị và tuyển tập những phim ma hay và mới nhất', 'Xem những bộ phim kinh di, phim ma hay nhất và mới nhất năm 2016 trên thế giới với những tình tiết rùng rợn và hấp dẫn nhất hiện nay.', 'kinh di, phim kinh di, phim ma,', ''),
(119, 'Phim chiến tranh mới, hot nhất năm 2016, phim chien tranh hay nhat', 'Xem những bộ phim chiến tranh mới và hot nhất năm 2016 với những bộ phim chien tranh chất lượng HD được cập nhật liên tục', 'phim chien tranh, phim chiến tranh', ''),
(120, 'Xem phim hài hước, xem phim hài hước mới và hay nhất 2016', 'Phim hai huoc - tuyển tập những bộ phim hài hước miễn phí hay và mới nhất năm 2016 với chất lượng HD được cập nhật liên tục', 'phim hài hước, phim hai huoc', ''),
(121, 'Phim cổ trang, phim co trang kiem hiep hay hot nhất 2016', 'Xem những bộ phim cổ trang, phim co trang kiem hiep, phim kiếm hiệp được tuyển chọn với nội dung hấp dẫn và chất lượng HD miễn phí', 'phim co trang, phim cổ trang', ''),
(122, 'Xem phim khoa học viễn tưởng, phim viễn tưởng hay và hot nhất', 'Tuyển tập những bộ phim viễn tưởng và phim khoa học viễn tưởng hay và mới nhất năm 2016 được cập nhật liên tục với chất lượng HD', 'phim khoa hoc, phim vien tuong, phim viễn tưởng, phim khoa học', ''),
(123, 'Phim hành động hay, phim hành động mỹ mới hot và hấp dẫn nhất hiện nay', 'Phim hanh dong - xem những tuyển tập phim hành động hay và mới hấp dẫn nhất năm 2016  với chất lượng HD được cập nhật liên tục', 'phim hanh dong, phim hành động, phim hanh dong my', ''),
(124, 'Phim tâm lý hay, phim tình cảm hot và phim tâm lý tình cảm nóng bỏng nhất', 'Xem phim tâm ly tình cảm, phim tam ly, phim tinh cam với những bộ phim được chọn lọc và mới nhất 2016 chất lượng HD được xem miễn phí', 'phim tam ly, phim tinh cam, phim tam ly tinh cam', ''),
(125, 'Phim hình sự mới nhất, phim hình sự hay nhất và chọn lọc 2016', 'Xem phim hình sự mới nhất miễn phí, phim hình sự hay nhất năm 2016 được cập nhật liên tục với chất lượng HD', 'phim hình sự, phim hinh su', ''),
(126, 'Phim hoạt hình hay và hot nhất, phim hoat hinh chọn lọc mới nhất', 'Xem phim hoạt hình hay, xem phim hoạt hình mới nhất và miễn phí năm 2016 được cập nhật liên tục với chất lượng HD nét nhất', 'phim hoat hinh, phim hoạt hình', ''),
(127, 'Xem phim tình cảm lãng mạn mới và hay nhất, phim tinh cam moi nhat', 'Xem phim tình cảm lãng mạn mới nhất và phim tinh càm hàn quốc hay nhất được cập nhật năm 2016 với chất lượng HD', 'phim tinh cam, phim tình cảm', ''),
(128, 'Xem phim phiêu lưu hay và phim phiêu lưu mới nhất, phim phieu luu hot nhất', 'Phim phieu luu - Tuyển tập những bộ phim phiêu lưu hay và mới nhất năm 2016 được cập nhật liên tục chất lượng HD', 'phim phieu luu, phim phiêu lưu,', ''),
(129, 'a', 'aaâ', 'a', ''),
(130, 'b', 'b', 'b', ''),
(131, 'c', 'c', 'c', ''),
(132, 'd', 'd', 'd', ''),
(133, 'e', 'e', 'e', ''),
(134, 'f', 'f', 'f', ''),
(135, 'Người hùng tia chớp test', 'Nội dugn về người hùng tia', 'Nguoi hung tia chop test', ''),
(136, 'Phim hành động hay, phim hành động mỹ mới hot và hấp dẫn nhất hiện nay', 'Phim hanh dong - xem những tuyển tập phim hành động hay và mới hấp dẫn nhất năm 2016  với chất lượng HD được cập nhật liên tục', 'phim hanh dong, phim hành động, phim hanh dong my', ''),
(137, 'Phim hành động hay, phim hành động mỹ mới hot và hấp dẫn nhất hiện nay', 'Phim hanh dong - xem những tuyển tập phim hành động hay và mới hấp dẫn nhất năm 2016  với chất lượng HD được cập nhật liên tục', 'phim hanh dong, phim hành động, phim hanh dong my', ''),
(142, 'Người hùng tia chớp (PHẦN 2)', 'Phim tập trung vào khoa học Barry Allen, người trở thành siêu anh hùng với sức mạnh và tốc độ đáng kinh ngạc sau khi bị sét đánh do vụ nổ máy gia tốc Harrison Wells.', 'Nguoi hung tia chop (PHAN 2)', '');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) NOT NULL,
  `sys_id` bigint(20) DEFAULT NULL,
  `slug` varchar(32) NOT NULL,
  `taxonomy` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(32) DEFAULT NULL,
  `priority` int(8) DEFAULT '0',
  `keywords` text,
  `count` int(11) DEFAULT NULL,
  `metadata` text,
  `created_user` tinyint(4) NOT NULL,
  `updated_user` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `sys_id`, `slug`, `taxonomy`, `name`, `description`, `priority`, `keywords`, `count`, `metadata`, `created_user`, `updated_user`, `created_at`, `updated_at`) VALUES
(1, 2, 'action-movies', 'film', 'action movies', '', 0, 'action movies action-movies', 0, '{"id":2,"title":"action movies","description":"","keywords":"action movies","customize":""}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(5, 19, 'the-flash', 'film', 'The Flash', NULL, 0, 'the flash the-flash', 0, '{"id":19,"title":"The Flash","description":"","keywords":"The Flash","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(6, 20, 'the-flash-season-1', 'film', 'The Flash Season 1', NULL, 0, 'the flash season 1 the-flash-season-1', 0, '{"id":20,"title":"The Flash Season 1","description":"","keywords":"The Flash Season 1","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(7, 21, 'tv-series', 'film', 'TV Series', NULL, 0, 'tv series tv-series', 0, '{"id":21,"title":"TV Series","description":"","keywords":"TV Series","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(8, 24, 'marvel', 'film', 'Marvel', NULL, 0, 'marvel marvel', 0, '{"id":24,"title":"Marvel","description":"","keywords":"Marvel","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(9, 25, 'age-of-ultron', 'film', 'Age Of Ultron', NULL, 0, 'age of ultron age-of-ultron', 0, '{"id":25,"title":"Age Of Ultron","description":"","keywords":"Age Of Ultron","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(10, 26, 'avengers', 'film', 'Avengers', NULL, 0, 'avengers avengers', 0, '{"id":26,"title":"Avengers","description":"","keywords":"Avengers","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(11, 27, 'avengers-2015', 'film', 'Avengers 2015', NULL, 0, 'avengers 2015 avengers-2015', 0, '{"id":27,"title":"Avengers 2015","description":"","keywords":"Avengers 2015","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(12, 28, 'ciname-movies', 'film', 'ciname movies', NULL, 0, 'ciname movies ciname-movies', 0, '{"id":28,"title":"ciname movies","description":"","keywords":"ciname movies","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(13, 29, 'thriller', 'film', 'thriller', NULL, 0, 'thriller thriller', 0, '{"id":29,"title":"thriller","description":"","keywords":"thriller","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(14, 30, 'fast-and-furious-7', 'film', 'Fast and Furious 7', NULL, 0, 'fast and furious 7 fast-and-furious-7', 0, '{"id":30,"title":"Fast and Furious 7","description":"","keywords":"Fast and Furious 7","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(15, 31, 'fast-7', 'film', 'Fast 7', NULL, 0, 'fast 7 fast-7', 0, '{"id":31,"title":"Fast 7","description":"","keywords":"Fast 7","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(16, 34, 'kyoto-kenshin', 'film', 'Kyoto Kenshin', NULL, 0, 'kyoto kenshin kyoto-kenshin', 0, '{"id":34,"title":"Kyoto Kenshin","description":"","keywords":"Kyoto Kenshin","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(17, 35, 'flying-swords-of-dragon-gate', 'film', 'Flying Swords Of Dragon Gate', NULL, 0, 'flying swords of dragon gate flying-swords-of-dragon-gate', 0, '{"id":35,"title":"Flying Swords Of Dragon Gate","description":"","keywords":"Flying Swords Of Dragon Gate","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(18, 42, 'cinema-movie', 'film', 'cinema movie', NULL, 0, 'cinema movie cinema-movie', 0, '{"id":42,"title":"cinema movie","description":"","keywords":"cinema movie","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(19, 52, 'one-piece', 'film', 'One Piece', NULL, 0, 'one piece one-piece', 0, '{"id":52,"title":"One Piece","description":"","keywords":"One Piece","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(20, 57, 'fantasy', 'film', 'fantasy', NULL, 0, 'fantasy fantasy', 0, '{"id":57,"title":"fantasy","description":"","keywords":"fantasy","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(21, 58, 'drama', 'film', 'drama', NULL, 0, 'drama drama', 0, '{"id":58,"title":"drama","description":"","keywords":"drama","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(22, 61, 'survivor-2015', 'film', 'Survivor 2015', NULL, 0, 'survivor 2015 survivor-2015', 0, '{"id":61,"title":"Survivor 2015","description":"","keywords":"Survivor 2015","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(23, 63, 'jurassic', 'film', 'Jurassic', NULL, 0, 'jurassic jurassic', 0, '{"id":63,"title":"Jurassic","description":"","keywords":"Jurassic","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(24, 64, 'jurassic-park-3', 'film', 'Jurassic Park 3', NULL, 0, 'jurassic park 3 jurassic-park-3', 0, '{"id":64,"title":"Jurassic Park 3","description":"","keywords":"Jurassic Park 3","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(25, 65, 'jurassic-2001', 'film', 'Jurassic 2001', NULL, 0, 'jurassic 2001 jurassic-2001', 0, '{"id":65,"title":"Jurassic 2001","description":"","keywords":"Jurassic 2001","customize":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(26, 67, 'sifu-vs-vampire', 'film', 'sifu vs vampire', NULL, 0, 'sifu vs vampire sifu-vs-vampire', 0, '{"id":67,"title":"sifu vs vampire","description":"","keywords":"sifu vs vampire","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(27, 68, 'phim-ma', 'film', 'phim ma', NULL, 0, 'phim ma phim-ma', 0, '{"id":68,"title":"phim ma","description":"","keywords":"phim ma","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(28, 69, 'ong-toi-la-cuong-thi', 'film', 'ông tôi là cương thi', NULL, 0, 'ong toi la cuong thi ong-toi-la-cuong-thi', 0, '{"id":69,"title":"\\u00f4ng t\\u00f4i l\\u00e0 c\\u01b0\\u01a1ng thi","description":"","keywords":"ong toi la cuong thi","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(29, 70, 'cuong-thi', 'film', 'cương thi', NULL, 0, 'cuong thi cuong-thi', 0, '{"id":70,"title":"c\\u01b0\\u01a1ng thi","description":"","keywords":"cuong thi","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(35, 80, 'the-revenant-tron-bo', 'film', 'The Revenant trọn bộ', NULL, 0, 'the revenant tron bo the-revenant-tron-bo', 0, '{"id":80,"title":"The Revenant tr\\u1ecdn b\\u1ed9","description":"","keywords":"The Revenant tron bo","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(37, 89, 'lam-tam-nhu', 'posts', 'lâm tâm như', NULL, 0, 'lam tam nhu lam-tam-nhu', 0, '{"id":89,"title":"l\\u00e2m t\\u00e2m nh\\u01b0","description":"","keywords":"lam tam nhu","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(38, 90, 'hoac-kien-hoa', 'posts', 'hoắc kiến hoa', NULL, 0, 'hoac kien hoa hoac-kien-hoa', 0, '{"id":90,"title":"ho\\u1eafc ki\\u1ebfn hoa","description":"","keywords":"hoac kien hoa","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(41, 94, 'apocalypse', 'film', 'Apocalypse', NULL, 0, 'apocalypse apocalypse', 0, '{"id":94,"title":"Apocalypse","description":"","keywords":"Apocalypse","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(42, 95, 'days-of-future-past', 'film', 'Days of Future Past', NULL, 0, 'days of future past days-of-future-past', 0, '{"id":95,"title":"Days of Future Past","description":"","keywords":"Days of Future Past","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(43, 96, 'ky-an-nha-thanh', 'film', 'kỳ án nhà thanh', NULL, 0, 'ky an nha thanh ky-an-nha-thanh', 0, '{"id":96,"title":"k\\u1ef3 \\u00e1n nh\\u00e0 thanh","description":"","keywords":"ky an nha thanh","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(44, 97, 'ky-an-nha-thanh-tap-1', 'film', 'ky an nha thanh tap 1', NULL, 0, 'ky an nha thanh tap 1 ky-an-nha-thanh-tap-1', 0, '{"id":97,"title":"ky an nha thanh tap 1","description":"","keywords":"ky an nha thanh tap 1","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(45, 98, 'ky-an-nha-thanh-2', 'film', 'ky an nha thanh 2', NULL, 0, 'ky an nha thanh 2 ky-an-nha-thanh-2', 0, '{"id":98,"title":"ky an nha thanh 2","description":"","keywords":"ky an nha thanh 2","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(46, 100, 'naruto', 'film', 'naruto', NULL, 0, 'naruto naruto', 0, '{"id":100,"title":"naruto","description":"","keywords":"naruto","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(47, 101, 'naruto-shippuuden', 'film', 'Naruto Shippuuden', NULL, 0, 'naruto shippuuden naruto-shippuuden', 0, '{"id":101,"title":"Naruto Shippuuden","description":"","keywords":"Naruto Shippuuden","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00'),
(48, 102, 'uzumaki-naruto', 'film', 'Uzumaki Naruto', NULL, 0, 'uzumaki naruto uzumaki-naruto', 0, '{"id":102,"title":"Uzumaki Naruto","description":"","keywords":"Uzumaki Naruto","customize":null,"status":null,"display_status":null,"promotion_content":null,"promotion_start":null,"promotion_end":null,"unit":null,"weight":null,"call_for_pricing_label":null,"total_sold":null,"facebookvideoid":null,"link_download":null,"link_password":null,"youtubeid":null}', 1, 1, '2016-01-01 00:00:00', '2016-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `pass` varchar(64) DEFAULT '',
  `nicename` varchar(50) DEFAULT '',
  `avatar` varchar(300) DEFAULT NULL,
  `registered` datetime DEFAULT '0000-00-00 00:00:00',
  `activation_key` varchar(60) DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) DEFAULT '',
  `salt` varchar(10) DEFAULT NULL,
  `role` varchar(20) DEFAULT 'administrator',
  `type` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `nicename`, `avatar`, `registered`, `activation_key`, `status`, `display_name`, `salt`, `role`, `type`) VALUES
(1, 'admin', 'chuongact@gmail.com', 'f4190e5399b3bd2b5aca2f28c009916b6228072e', NULL, 'upload/image//no_image.png', '0000-00-00 00:00:00', NULL, 1, 'admin', '8e0cd0d48', 'administrator', NULL),
(5, 'ngocphan', 'ngocphandang@gmail.com', '025a8aa517c35bddc1003076334324f81c645eb5', NULL, 'upload/image//no_image.png', '0000-00-00 00:00:00', NULL, 1, 'Phan Ngọc', 'b416939fd', 'administrator', NULL),
(6, 'sonlh.ga2603@gmail.com', 'sonlh.ga2603@gmail.com', '', NULL, 'https://graph.facebook.com/253253641696904/picture?type=large', '0000-00-00 00:00:00', NULL, 0, 'Sơn Lê', NULL, 'member', 'fbconnect'),
(7, 'codonbg34@gmail.com', 'codonbg34@gmail.com', '', NULL, 'https://graph.facebook.com/1741728666107932/picture?type=large', '0000-00-00 00:00:00', NULL, 0, 'Tu Nguyen', NULL, 'member', 'fbconnect'),
(8, '509828709207890@facebook.com', '509828709207890@facebook.com', '', NULL, 'https://graph.facebook.com/509828709207890/picture?type=large', '0000-00-00 00:00:00', NULL, 0, 'Chi Linh Bùi', NULL, 'member', 'fbconnect');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `role_description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crew`
--
ALTER TABLE `crew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `cinema` (`cinema`),
  ADD KEY `sub` (`imdb`),
  ADD KEY `id` (`id`,`type`),
  ADD KEY `expired` (`expired`),
  ADD KEY `created` (`created_at`);

--
-- Indexes for table `film_category`
--
ALTER TABLE `film_category`
  ADD PRIMARY KEY (`film_id`,`category_id`);

--
-- Indexes for table `film_country`
--
ALTER TABLE `film_country`
  ADD PRIMARY KEY (`film_id`,`country_id`);

--
-- Indexes for table `film_crew`
--
ALTER TABLE `film_crew`
  ADD PRIMARY KEY (`film_id`,`crew_id`);

--
-- Indexes for table `film_episode`
--
ALTER TABLE `film_episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `film_id` (`film_id`),
  ADD KEY `server_id` (`server_id`);

--
-- Indexes for table `film_tag`
--
ALTER TABLE `film_tag`
  ADD PRIMARY KEY (`film_id`,`tag_id`);

--
-- Indexes for table `film_views`
--
ALTER TABLE `film_views`
  ADD PRIMARY KEY (`film_id`,`date`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `option_name` (`name`,`type`) USING BTREE;

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sys_id` (`sys_id`),
  ADD KEY `post_name` (`slug`) USING BTREE,
  ADD KEY `type_status_date` (`type`,`status`,`date`,`id`) USING BTREE,
  ADD KEY `post_author` (`author`) USING BTREE;

--
-- Indexes for table `posts_category`
--
ALTER TABLE `posts_category`
  ADD PRIMARY KEY (`posts_id`,`category_id`);

--
-- Indexes for table `posts_metadata`
--
ALTER TABLE `posts_metadata`
  ADD PRIMARY KEY (`posts_id`,`key`);

--
-- Indexes for table `posts_tag`
--
ALTER TABLE `posts_tag`
  ADD PRIMARY KEY (`tag_id`,`posts_id`);

--
-- Indexes for table `system_id`
--
ALTER TABLE `system_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_metadata`
--
ALTER TABLE `system_metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_login_key` (`name`),
  ADD KEY `user_nicename` (`nicename`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `crew`
--
ALTER TABLE `crew`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `film_episode`
--
ALTER TABLE `film_episode`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
--
-- AUTO_INCREMENT for table `posts_metadata`
--
ALTER TABLE `posts_metadata`
  MODIFY `posts_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_id`
--
ALTER TABLE `system_id`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
