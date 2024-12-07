-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2024 at 04:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_paymentgetway`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_configs`
--

CREATE TABLE `api_configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `app_id` varchar(255) NOT NULL,
  `api_url` varchar(255) NOT NULL,
  `api_key` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_configs`
--

INSERT INTO `api_configs` (`id`, `name`, `app_id`, `api_url`, `api_key`, `created_at`, `updated_at`) VALUES
(1, 'Game List', '771', 'https://api-gametest.omgapi.cc/api/game/loadlist', 'dc7df6a77d8e82fcf26062d773b8d385', '2024-10-17 04:52:28', '2024-10-17 04:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `percentage_amt` varchar(100) DEFAULT NULL COMMENT '%',
  `store_price` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `sort_order` int(11) DEFAULT 0,
  `file` varchar(255) DEFAULT NULL,
  `bg_images` varchar(255) DEFAULT NULL,
  `store_images` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `mobile_view_class` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `percentage_amt`, `store_price`, `slug`, `language`, `description`, `meta_title`, `meta_description`, `meta_keyword`, `parent_id`, `sort_order`, `file`, `bg_images`, `store_images`, `status`, `mobile_view_class`, `keyword`, `created_at`, `updated_at`) VALUES
(1, '4K Ultra HD', '', NULL, '4k-ultra-hd', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, '4K Ultra HD', '2024-09-09 18:21:09', '2024-09-09 18:21:09'),
(2, '60 FPS', '', NULL, '60-fps', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, '', '2024-09-09 18:21:27', '2024-09-09 18:21:27'),
(3, 'Amateur', '', NULL, 'amateur', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Amateur', '2024-09-09 18:21:38', '2024-09-09 18:21:38'),
(4, 'Anal', '', NULL, 'anal', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Anal', '2024-09-09 18:21:45', '2024-09-09 18:21:45'),
(5, 'Asian', '', NULL, 'asian', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Asian', '2024-09-09 18:21:51', '2024-09-09 18:21:51'),
(6, 'ASMR', '', NULL, 'asmr', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'ASMR', '2024-09-09 18:21:59', '2024-09-09 18:21:59'),
(7, 'BBW', '', NULL, 'bbw', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'BBW', '2024-09-09 18:22:06', '2024-09-09 18:22:06'),
(8, 'BDSM', '', NULL, 'bdsm', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'BDSM', '2024-09-09 18:22:20', '2024-09-09 18:22:20'),
(9, 'Big Ass', '', NULL, 'big-ass', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Big Ass', '2024-09-09 18:22:29', '2024-09-09 18:22:29'),
(10, 'Big Dick', '', NULL, 'big-dick', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Big Dick', '2024-09-09 18:22:35', '2024-09-09 18:22:35'),
(11, 'Big Tits', '', NULL, 'big-tits', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, '', '2024-09-09 18:22:41', '2024-09-09 18:22:41'),
(12, 'Bisexual', '', NULL, 'bisexual', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Bisexual', '2024-09-09 18:22:48', '2024-09-09 18:22:48'),
(13, 'Blonde', '', NULL, 'blonde', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Blonde', '2024-09-09 18:22:56', '2024-09-09 18:22:56'),
(14, 'Blowjob', '', NULL, 'blowjob', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Blowjob', '2024-09-09 18:23:05', '2024-09-09 18:23:05'),
(15, 'Bondage', '', NULL, 'bondage', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Bondage', '2024-09-09 18:23:12', '2024-09-09 18:23:12'),
(16, 'Brunette', '', NULL, 'brunette', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Brunette', '2024-09-09 18:23:19', '2024-09-09 18:23:19'),
(17, 'Bukkake', '', NULL, 'bukkake', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Bukkake', '2024-09-09 18:23:25', '2024-09-09 18:23:25'),
(18, 'Creampie', '', NULL, 'creampie', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Creampie', '2024-09-09 18:23:31', '2024-09-09 18:23:31'),
(19, 'Cumshot', '', NULL, 'cumshot', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Cumshot', '2024-09-09 18:23:37', '2024-09-09 18:23:37'),
(20, 'Double Penetration', '', NULL, 'double-penetration', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Double Penetration', '2024-09-09 18:24:15', '2024-09-09 18:24:15'),
(21, 'Ebony', '', NULL, 'ebony', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Ebony', '2024-09-09 18:24:21', '2024-09-09 18:24:21'),
(22, 'Fat', '', NULL, 'fat', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Fat', '2024-09-09 18:24:27', '2024-09-09 18:24:27'),
(23, 'Fetish', '', NULL, 'fetish', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Fetish', '2024-09-09 18:24:33', '2024-09-09 18:24:33'),
(24, 'Fisting', '', NULL, 'fisting', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Fisting', '2024-09-09 18:24:40', '2024-09-09 18:24:40'),
(25, 'Footjob', '', NULL, 'footjob', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Footjob', '2024-09-09 18:24:50', '2024-09-09 18:24:50'),
(26, 'For Women', '', NULL, 'for-women', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'For Women', '2024-09-09 18:24:57', '2024-09-09 18:25:18'),
(27, 'Gay', '', NULL, 'gay', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Gay', '2024-09-09 18:25:27', '2024-09-09 18:25:27'),
(28, 'Group Sex', '', NULL, 'group-sex', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Group Sex', '2024-09-09 18:25:40', '2024-09-09 18:25:40'),
(29, 'Handjob', '', NULL, 'handjob', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Handjob', '2024-09-09 18:25:48', '2024-09-09 18:25:48'),
(30, 'Hardcore', '', NULL, 'hardcore', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Hardcore', '2024-09-09 18:25:54', '2024-09-09 18:25:54'),
(31, 'HD Porn', '', NULL, 'hd-porn', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'HD Porn', '2024-09-09 18:26:01', '2024-09-09 18:26:01'),
(32, 'HD Sex', '', NULL, 'hd-sex', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'HD Sex', '2024-09-09 18:26:07', '2024-09-09 18:26:07'),
(33, 'Hentai', '', NULL, 'hentai', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Hentai', '2024-09-09 18:26:13', '2024-09-09 18:26:13'),
(34, 'Homemade', '', NULL, 'homemade', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Homemade', '2024-09-09 18:26:21', '2024-09-09 18:26:21'),
(35, 'Hotel', '', NULL, 'hotel', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Hotel', '2024-09-09 18:26:26', '2024-09-09 18:26:26'),
(36, 'Housewives', '', NULL, 'housewives', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Housewives', '2024-09-09 18:26:32', '2024-09-09 18:26:32'),
(37, 'HQ Porn', '', NULL, 'hq-porn', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'HQ Porn', '2024-09-09 18:26:40', '2024-09-09 18:26:40'),
(38, 'Indian', '', NULL, 'indian', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Indian', '2024-09-09 18:26:46', '2024-09-09 18:26:46'),
(39, 'Interracial', '', NULL, 'interracial', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Interracial', '2024-09-09 18:26:52', '2024-09-09 18:26:52'),
(40, 'Japanese', '', NULL, 'japanese', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, '', '2024-09-09 18:27:04', '2024-09-09 18:27:04'),
(41, 'Latina', '', NULL, 'latina', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Latina', '2024-09-09 18:27:11', '2024-09-09 18:27:11'),
(42, 'Lesbian', '', NULL, 'lesbian', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Lesbian', '2024-09-09 18:27:17', '2024-09-09 18:27:17'),
(43, 'Lingerie', '', NULL, 'lingerie', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Lingerie', '2024-09-09 18:27:23', '2024-09-09 18:27:23'),
(44, 'Massage', '', NULL, 'massage', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Massage', '2024-09-09 18:27:30', '2024-09-09 18:27:30'),
(45, 'Masturbation', '', NULL, 'masturbation', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Masturbation', '2024-09-09 18:27:35', '2024-09-09 18:27:35'),
(46, 'Mature', '', NULL, 'mature', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Mature', '2024-09-09 18:27:44', '2024-09-09 18:27:44'),
(47, 'MILF', '', NULL, 'milf', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'MILF', '2024-09-09 18:27:51', '2024-09-09 18:27:51'),
(48, 'Nurses', '', NULL, 'nurses', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Nurses', '2024-09-09 18:27:57', '2024-09-09 18:27:57'),
(49, 'Office', '', NULL, 'office', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Office', '2024-09-09 18:28:09', '2024-09-09 18:28:09'),
(50, 'Older Men', '', NULL, 'older-men', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Older Men', '2024-09-09 18:28:18', '2024-09-09 18:28:18'),
(51, 'Orgy', '', NULL, 'orgy', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Orgy', '2024-09-09 18:28:23', '2024-09-09 18:28:23'),
(52, 'Outdoor', '', NULL, 'outdoor', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Outdoor', '2024-09-09 18:28:28', '2024-09-09 18:28:28'),
(53, 'Petite', '', NULL, 'petite', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Petite', '2024-09-09 18:28:33', '2024-09-09 18:28:33'),
(54, 'Pornstar', '', NULL, 'pornstar', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Pornstar', '2024-09-09 18:28:39', '2024-09-09 18:28:39'),
(55, 'POV', '', NULL, 'pov', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'POV', '2024-09-09 18:28:53', '2024-09-09 18:28:53'),
(56, 'Public', '', NULL, 'public', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Public', '2024-09-09 18:28:58', '2024-09-09 18:28:58'),
(57, 'Redhead', '', NULL, 'redhead', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Redhead', '2024-09-09 18:29:04', '2024-09-09 18:29:04'),
(58, 'Shemale', '', NULL, 'shemale', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Shemale', '2024-09-09 18:29:10', '2024-09-09 18:29:10'),
(59, 'Sleep', '', NULL, 'sleep', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Sleep', '2024-09-09 18:29:17', '2024-09-09 18:29:17'),
(60, 'Small Tits', '', NULL, 'small-tits', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Small Tits', '2024-09-09 18:29:28', '2024-09-09 18:29:28'),
(61, 'Squirt', '', NULL, 'squirt', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Squirt', '2024-09-09 18:29:33', '2024-09-09 18:29:33'),
(62, 'Striptease', '', NULL, 'striptease', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Striptease', '2024-09-09 18:29:39', '2024-09-09 18:29:39'),
(63, 'Students', '', NULL, 'students', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Students', '2024-09-09 18:29:45', '2024-09-09 18:29:45'),
(64, 'Swinger', '', NULL, 'swinger', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Swinger', '2024-09-09 18:29:52', '2024-09-09 18:29:52'),
(65, 'Teen', '', NULL, 'teen', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Teen', '2024-09-09 18:29:58', '2024-09-09 18:29:58'),
(66, 'Threesome', '', NULL, 'threesome', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Threesome', '2024-09-09 18:30:05', '2024-09-09 18:30:05'),
(67, 'Toys', '', NULL, 'toys', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Toys', '2024-09-09 18:30:10', '2024-09-09 18:30:10'),
(68, 'Uncategorized', '', NULL, 'uncategorized', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Uncategorized', '2024-09-09 18:30:18', '2024-09-09 18:30:18'),
(69, 'Uniform', '', NULL, 'uniform', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Uniform', '2024-09-09 18:30:24', '2024-09-09 18:30:24'),
(70, 'Vintage', '', NULL, 'vintage', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Vintage', '2024-09-09 18:30:29', '2024-09-09 18:30:29'),
(71, 'VR Porn', '', NULL, 'vr-porn', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'VR Porn', '2024-09-09 18:30:38', '2024-09-09 18:30:38'),
(72, 'Webcam', '', NULL, 'webcam', 'en', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Webcam', '2024-09-09 18:30:44', '2024-09-09 18:30:44'),
(77, 'ফোর কে আল্ট্রা এইচডি ', '', NULL, '4k-ultra-hd', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, '4K Ultra HD', '2024-09-09 18:21:09', '2024-09-09 18:21:09'),
(78, '৬০ ফপিস', '', NULL, '60-fps', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, '', '2024-09-09 18:21:27', '2024-09-09 18:21:27'),
(79, 'অ্যামেচার ', '', NULL, 'amateur', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Amateur', '2024-09-09 18:21:38', '2024-09-09 18:21:38'),
(80, 'এনাল ', '', NULL, 'anal', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Anal', '2024-09-09 18:21:45', '2024-09-09 18:21:45'),
(81, 'অসমৰ ', '', NULL, 'asmr', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'ASMR', '2024-09-09 18:21:59', '2024-09-09 18:21:59'),
(82, 'বাবু ', '', NULL, 'bbw', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'BBW', '2024-09-09 18:22:06', '2024-09-09 18:22:06'),
(83, 'বিডিএসএম', '', NULL, 'bdsm', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'BDSM', '2024-09-09 18:22:20', '2024-09-09 18:22:20'),
(84, 'বিগ অ্যাস', '', NULL, 'big-ass', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Big Ass', '2024-09-09 18:22:29', '2024-09-09 18:22:29'),
(85, 'বিগ ডিক', '', NULL, 'big-dick', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Big Dick', '2024-09-09 18:22:35', '2024-09-09 18:22:35'),
(86, 'বিগ টিটস', '', NULL, 'big-tits', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, '', '2024-09-09 18:22:41', '2024-09-09 18:22:41'),
(87, 'বিসেক্সচুয়াল', '', NULL, 'bisexual', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Bisexual', '2024-09-09 18:22:48', '2024-09-09 18:22:48'),
(88, 'ব্লন্ডে ', '', NULL, 'blonde', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Blonde', '2024-09-09 18:22:56', '2024-09-09 18:22:56'),
(89, 'ব্লউজবি', '', NULL, 'blowjob', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Blowjob', '2024-09-09 18:23:05', '2024-09-09 18:23:05'),
(90, 'বোন্দাজে', '', NULL, 'brunette', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Brunette', '2024-09-09 18:23:19', '2024-09-09 18:23:19'),
(91, 'ব্রুনেটতে ', '', NULL, 'brunette', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Brunette', '2024-09-09 18:23:19', '2024-09-09 18:23:19'),
(92, 'বুক্কাকে ', '', NULL, 'bukkake', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Bukkake', '2024-09-09 18:23:25', '2024-09-09 18:23:25'),
(93, 'ক্রিমপিএ', '', NULL, 'creampie', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Creampie', '2024-09-09 18:23:31', '2024-09-09 18:23:31'),
(94, 'কামশত', '', NULL, 'cumshot', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Cumshot', '2024-09-09 18:23:37', '2024-09-09 18:23:37'),
(95, 'ডাবল পেনিট্রেশন', '', NULL, 'double-penetration', 'bn', '', '', '', '', 0, 0, NULL, NULL, NULL, 1, NULL, 'Double Penetration', '2024-09-09 18:24:15', '2024-09-09 18:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `shortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `shortname`, `name`, `phonecode`, `status`) VALUES
(1, 'AF', 'Afghanistan', 93, 1),
(2, 'AL', 'Albania', 355, 1),
(3, 'DZ', 'Algeria', 213, 1),
(4, 'AS', 'American Samoa', 1684, 1),
(5, 'AD', 'Andorra', 376, 1),
(6, 'AO', 'Angola', 244, 1),
(7, 'AI', 'Anguilla', 1264, 1),
(8, 'AQ', 'Antarctica', 0, 1),
(9, 'AG', 'Antigua And Barbuda', 1268, 1),
(10, 'AR', 'Argentina', 54, 1),
(11, 'AM', 'Armenia', 374, 1),
(12, 'AW', 'Aruba', 297, 1),
(13, 'AU', 'Australia', 61, 1),
(14, 'AT', 'Austria', 43, 1),
(15, 'AZ', 'Azerbaijan', 994, 1),
(16, 'BS', 'Bahamas The', 1242, 1),
(17, 'BH', 'Bahrain', 973, 1),
(18, 'BD', 'Bangladesh', 880, 1),
(19, 'BB', 'Barbados', 1246, 1),
(20, 'BY', 'Belarus', 375, 1),
(21, 'BE', 'Belgium', 32, 1),
(22, 'BZ', 'Belize', 501, 1),
(23, 'BJ', 'Benin', 229, 1),
(24, 'BM', 'Bermuda', 1441, 1),
(25, 'BT', 'Bhutan', 975, 1),
(26, 'BO', 'Bolivia', 591, 1),
(27, 'BA', 'Bosnia and Herzegovina', 387, 1),
(28, 'BW', 'Botswana', 267, 1),
(29, 'BV', 'Bouvet Island', 0, 1),
(30, 'BR', 'Brazil', 55, 1),
(31, 'IO', 'British Indian Ocean Territory', 246, 1),
(32, 'BN', 'Brunei', 673, 1),
(33, 'BG', 'Bulgaria', 359, 1),
(34, 'BF', 'Burkina Faso', 226, 1),
(35, 'BI', 'Burundi', 257, 1),
(36, 'KH', 'Cambodia', 855, 1),
(37, 'CM', 'Cameroon', 237, 1),
(38, 'CA', 'Canada', 1, 1),
(39, 'CV', 'Cape Verde', 238, 1),
(40, 'KY', 'Cayman Islands', 1345, 1),
(41, 'CF', 'Central African Republic', 236, 1),
(42, 'TD', 'Chad', 235, 1),
(43, 'CL', 'Chile', 56, 1),
(44, 'CN', 'China', 86, 1),
(45, 'CX', 'Christmas Island', 61, 1),
(46, 'CC', 'Cocos (Keeling) Islands', 672, 1),
(47, 'CO', 'Colombia', 57, 1),
(48, 'KM', 'Comoros', 269, 1),
(49, 'CG', 'Republic Of The Congo', 242, 1),
(50, 'CD', 'Democratic Republic Of The Congo', 242, 1),
(51, 'CK', 'Cook Islands', 682, 1),
(52, 'CR', 'Costa Rica', 506, 1),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, 1),
(54, 'HR', 'Croatia (Hrvatska)', 385, 1),
(55, 'CU', 'Cuba', 53, 1),
(56, 'CY', 'Cyprus', 357, 1),
(57, 'CZ', 'Czech Republic', 420, 1),
(58, 'DK', 'Denmark', 45, 1),
(59, 'DJ', 'Djibouti', 253, 1),
(60, 'DM', 'Dominica', 1767, 1),
(61, 'DO', 'Dominican Republic', 1809, 1),
(62, 'TP', 'East Timor', 670, 1),
(63, 'EC', 'Ecuador', 593, 1),
(64, 'EG', 'Egypt', 20, 1),
(65, 'SV', 'El Salvador', 503, 1),
(66, 'GQ', 'Equatorial Guinea', 240, 1),
(67, 'ER', 'Eritrea', 291, 1),
(68, 'EE', 'Estonia', 372, 1),
(69, 'ET', 'Ethiopia', 251, 1),
(70, 'XA', 'External Territories of Australia', 61, 1),
(71, 'FK', 'Falkland Islands', 500, 1),
(72, 'FO', 'Faroe Islands', 298, 1),
(73, 'FJ', 'Fiji Islands', 679, 1),
(74, 'FI', 'Finland', 358, 1),
(75, 'FR', 'France', 33, 1),
(76, 'GF', 'French Guiana', 594, 1),
(77, 'PF', 'French Polynesia', 689, 1),
(78, 'TF', 'French Southern Territories', 0, 1),
(79, 'GA', 'Gabon', 241, 1),
(80, 'GM', 'Gambia The', 220, 1),
(81, 'GE', 'Georgia', 995, 1),
(82, 'DE', 'Germany', 49, 1),
(83, 'GH', 'Ghana', 233, 1),
(84, 'GI', 'Gibraltar', 350, 1),
(85, 'GR', 'Greece', 30, 1),
(86, 'GL', 'Greenland', 299, 1),
(87, 'GD', 'Grenada', 1473, 1),
(88, 'GP', 'Guadeloupe', 590, 1),
(89, 'GU', 'Guam', 1671, 1),
(90, 'GT', 'Guatemala', 502, 1),
(91, 'XU', 'Guernsey and Alderney', 44, 1),
(92, 'GN', 'Guinea', 224, 1),
(93, 'GW', 'Guinea-Bissau', 245, 1),
(94, 'GY', 'Guyana', 592, 1),
(95, 'HT', 'Haiti', 509, 1),
(96, 'HM', 'Heard and McDonald Islands', 0, 1),
(97, 'HN', 'Honduras', 504, 1),
(98, 'HK', 'Hong Kong S.A.R.', 852, 1),
(99, 'HU', 'Hungary', 36, 1),
(100, 'IS', 'Iceland', 354, 1),
(101, 'IN', 'India', 91, 1),
(102, 'ID', 'Indonesia', 62, 1),
(103, 'IR', 'Iran', 98, 1),
(104, 'IQ', 'Iraq', 964, 1),
(105, 'IE', 'Ireland', 353, 1),
(106, 'IL', 'Israel', 972, 1),
(107, 'IT', 'Italy', 39, 1),
(108, 'JM', 'Jamaica', 1876, 1),
(109, 'JP', 'Japan', 81, 1),
(110, 'XJ', 'Jersey', 44, 1),
(111, 'JO', 'Jordan', 962, 1),
(112, 'KZ', 'Kazakhstan', 7, 1),
(113, 'KE', 'Kenya', 254, 1),
(114, 'KI', 'Kiribati', 686, 1),
(115, 'KP', 'Korea North', 850, 1),
(116, 'KR', 'Korea South', 82, 1),
(117, 'KW', 'Kuwait', 965, 1),
(118, 'KG', 'Kyrgyzstan', 996, 1),
(119, 'LA', 'Laos', 856, 1),
(120, 'LV', 'Latvia', 371, 1),
(121, 'LB', 'Lebanon', 961, 1),
(122, 'LS', 'Lesotho', 266, 1),
(123, 'LR', 'Liberia', 231, 1),
(124, 'LY', 'Libya', 218, 1),
(125, 'LI', 'Liechtenstein', 423, 1),
(126, 'LT', 'Lithuania', 370, 1),
(127, 'LU', 'Luxembourg', 352, 1),
(128, 'MO', 'Macau S.A.R.', 853, 1),
(129, 'MK', 'Macedonia', 389, 1),
(130, 'MG', 'Madagascar', 261, 1),
(131, 'MW', 'Malawi', 265, 1),
(132, 'MY', 'Malaysia', 60, 1),
(133, 'MV', 'Maldives', 960, 1),
(134, 'ML', 'Mali', 223, 1),
(135, 'MT', 'Malta', 356, 1),
(136, 'XM', 'Man (Isle of)', 44, 1),
(137, 'MH', 'Marshall Islands', 692, 1),
(138, 'MQ', 'Martinique', 596, 1),
(139, 'MR', 'Mauritania', 222, 1),
(140, 'MU', 'Mauritius', 230, 1),
(141, 'YT', 'Mayotte', 269, 1),
(142, 'MX', 'Mexico', 52, 1),
(143, 'FM', 'Micronesia', 691, 1),
(144, 'MD', 'Moldova', 373, 1),
(145, 'MC', 'Monaco', 377, 1),
(146, 'MN', 'Mongolia', 976, 1),
(147, 'MS', 'Montserrat', 1664, 1),
(148, 'MA', 'Morocco', 212, 1),
(149, 'MZ', 'Mozambique', 258, 1),
(150, 'MM', 'Myanmar', 95, 1),
(151, 'NA', 'Namibia', 264, 1),
(152, 'NR', 'Nauru', 674, 1),
(153, 'NP', 'Nepal', 977, 1),
(154, 'AN', 'Netherlands Antilles', 599, 1),
(155, 'NL', 'Netherlands The', 31, 1),
(156, 'NC', 'New Caledonia', 687, 1),
(157, 'NZ', 'New Zealand', 64, 1),
(158, 'NI', 'Nicaragua', 505, 1),
(159, 'NE', 'Niger', 227, 1),
(160, 'NG', 'Nigeria', 234, 1),
(161, 'NU', 'Niue', 683, 1),
(162, 'NF', 'Norfolk Island', 672, 1),
(163, 'MP', 'Northern Mariana Islands', 1670, 1),
(164, 'NO', 'Norway', 47, 1),
(165, 'OM', 'Oman', 968, 1),
(166, 'PK', 'Pakistan', 92, 1),
(167, 'PW', 'Palau', 680, 1),
(168, 'PS', 'Palestinian Territory Occupied', 970, 1),
(169, 'PA', 'Panama', 507, 1),
(170, 'PG', 'Papua new Guinea', 675, 1),
(171, 'PY', 'Paraguay', 595, 1),
(172, 'PE', 'Peru', 51, 1),
(173, 'PH', 'Philippines', 63, 1),
(174, 'PN', 'Pitcairn Island', 0, 1),
(175, 'PL', 'Poland', 48, 1),
(176, 'PT', 'Portugal', 351, 1),
(177, 'PR', 'Puerto Rico', 1787, 1),
(178, 'QA', 'Qatar', 974, 1),
(179, 'RE', 'Reunion', 262, 1),
(180, 'RO', 'Romania', 40, 1),
(181, 'RU', 'Russia', 70, 1),
(182, 'RW', 'Rwanda', 250, 1),
(183, 'SH', 'Saint Helena', 290, 1),
(184, 'KN', 'Saint Kitts And Nevis', 1869, 1),
(185, 'LC', 'Saint Lucia', 1758, 1),
(186, 'PM', 'Saint Pierre and Miquelon', 508, 1),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, 1),
(188, 'WS', 'Samoa', 684, 1),
(189, 'SM', 'San Marino', 378, 1),
(190, 'ST', 'Sao Tome and Principe', 239, 1),
(191, 'SA', 'Saudi Arabia', 966, 1),
(192, 'SN', 'Senegal', 221, 1),
(193, 'RS', 'Serbia', 381, 1),
(194, 'SC', 'Seychelles', 248, 1),
(195, 'SL', 'Sierra Leone', 232, 1),
(196, 'SG', 'Singapore', 65, 1),
(197, 'SK', 'Slovakia', 421, 1),
(198, 'SI', 'Slovenia', 386, 1),
(199, 'XG', 'Smaller Territories of the UK', 44, 1),
(200, 'SB', 'Solomon Islands', 677, 1),
(201, 'SO', 'Somalia', 252, 1),
(202, 'ZA', 'South Africa', 27, 1),
(203, 'GS', 'South Georgia', 0, 1),
(204, 'SS', 'South Sudan', 211, 1),
(205, 'ES', 'Spain', 34, 1),
(206, 'LK', 'Sri Lanka', 94, 1),
(207, 'SD', 'Sudan', 249, 1),
(208, 'SR', 'Suriname', 597, 1),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, 1),
(210, 'SZ', 'Swaziland', 268, 1),
(211, 'SE', 'Sweden', 46, 1),
(212, 'CH', 'Switzerland', 41, 1),
(213, 'SY', 'Syria', 963, 1),
(214, 'TW', 'Taiwan', 886, 1),
(215, 'TJ', 'Tajikistan', 992, 1),
(216, 'TZ', 'Tanzania', 255, 1),
(217, 'TH', 'Thailand', 66, 1),
(218, 'TG', 'Togo', 228, 1),
(219, 'TK', 'Tokelau', 690, 1),
(220, 'TO', 'Tonga', 676, 1),
(221, 'TT', 'Trinidad And Tobago', 1868, 1),
(222, 'TN', 'Tunisia', 216, 1),
(223, 'TR', 'Turkey', 90, 1),
(224, 'TM', 'Turkmenistan', 7370, 1),
(225, 'TC', 'Turks And Caicos Islands', 1649, 1),
(226, 'TV', 'Tuvalu', 688, 1),
(227, 'UG', 'Uganda', 256, 1),
(228, 'UA', 'Ukraine', 380, 1),
(229, 'AE', 'United Arab Emirates', 971, 1),
(230, 'GB', 'United Kingdom', 44, 1),
(231, 'US', 'United States', 1, 1),
(232, 'UM', 'United States Minor Outlying Islands', 1, 1),
(233, 'UY', 'Uruguay', 598, 1),
(234, 'UZ', 'Uzbekistan', 998, 1),
(235, 'VU', 'Vanuatu', 678, 1),
(236, 'VA', 'Vatican City State (Holy See)', 39, 1),
(237, 'VE', 'Venezuela', 58, 1),
(238, 'VN', 'Vietnam', 84, 1),
(239, 'VG', 'Virgin Islands (British)', 1284, 1),
(240, 'VI', 'Virgin Islands (US)', 1340, 1),
(241, 'WF', 'Wallis And Futuna Islands', 681, 1),
(242, 'EH', 'Western Sahara', 212, 1),
(243, 'YE', 'Yemen', 967, 1),
(244, 'YU', 'Yugoslavia', 38, 1),
(245, 'ZM', 'Zambia', 260, 1),
(246, 'ZW', 'Zimbabwe', 263, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_type`
--

CREATE TABLE `currency_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_type`
--

INSERT INTO `currency_type` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'USDT-TRC20-TRX', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(2, 'USDT-ERC20', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(3, 'USDT-OMNI', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(4, 'BTC', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(5, 'LTC', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(6, 'ETH', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(7, 'TRX', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(8, 'ADA', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `depositID` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deposit_amount` double(10,2) DEFAULT NULL,
  `receivable_amount` double(10,2) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `to_crypto_wallet_address` varchar(255) DEFAULT NULL,
  `frm_wallet_address` varchar(255) DEFAULT NULL,
  `trxId` varchar(255) DEFAULT NULL,
  `depscription` text DEFAULT NULL,
  `wallet_address` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0=Review,2=Reject,1=Approved',
  `approved_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `depositID`, `user_id`, `deposit_amount`, `receivable_amount`, `payment_method`, `to_crypto_wallet_address`, `frm_wallet_address`, `trxId`, `depscription`, `wallet_address`, `status`, `approved_by`, `created_at`, `updated_at`) VALUES
(1, 'DEPOSIT.70c767c26cb3143bad5e660504fd6a76', 8, 24.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo1', 'DEPOSIT.70c767c26cb3143bad5e660504fd6a76', NULL, 0, NULL, '2024-07-14 04:52:20', '2024-07-14 04:52:20'),
(2, 'DEPOSIT.97e62d270e5e358a21b15119a6147b2f', 8, 151.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.97e62d270e5e358a21b15119a6147b2f', NULL, 0, NULL, '2024-07-14 04:52:44', '2024-07-14 04:52:44'),
(3, 'DEPOSIT.c4fa7aecedac73641320d24d5bf3bf38', 8, 801.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.c4fa7aecedac73641320d24d5bf3bf38', NULL, 0, NULL, '2024-07-14 04:52:55', '2024-07-14 04:52:55'),
(4, 'DEPOSIT.de58bfe3d33dada41a9398c30e21eeed', 8, 901.00, 33.00, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.de58bfe3d33dada41a9398c30e21eeed', NULL, 2, 1, '2024-07-14 04:53:09', '2024-07-14 11:58:35'),
(5, 'DEPOSIT.0b3f44d9054402de39441e165a4bdfe0', 8, 23.00, 20.00, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'ALSDJFLSAWOIESLDKFL', 'DEPOSIT.0b3f44d9054402de39441e165a4bdfe0', NULL, 1, 1, '2024-07-14 04:53:34', '2024-07-14 10:13:54'),
(6, 'DEPOSIT.182e6c2d3d78eef40e5dac7da77a748f', 8, 21.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TRX(TRC20)', 'DEPOSIT.182e6c2d3d78eef40e5dac7da77a748f', NULL, 0, NULL, '2024-07-14 11:58:58', '2024-07-14 11:58:58'),
(7, 'DEPOSIT.bc5fcb0018cecacba559dc512740091b', 8, 501.00, 501.00, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.bc5fcb0018cecacba559dc512740091b', NULL, 1, NULL, '2024-07-15 18:02:33', '2024-07-15 18:02:33'),
(8, 'DEPOSIT.0cc6928e741d75e7a92396317522069e', 9, 10001.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.0cc6928e741d75e7a92396317522069e', NULL, 1, NULL, '2024-07-16 04:18:09', '2024-07-16 04:18:09'),
(9, 'DEPOSIT.0c9cefe1e8ae67b9e0420e6a2f276876', 17, 501.00, NULL, 'TRX(TRC20)', 'TKpRQQeykiNPuTjy5vw8do1QK3G64U6VxR', 'TKpRQQeykiNPuTjy5vw8do1QK3G64U6VxR', 'TKpRQQeykiNPuTjy5vw8do1QK3G64U6VxR', 'DEPOSIT.0c9cefe1e8ae67b9e0420e6a2f276876', NULL, 1, NULL, '2024-07-16 23:44:37', '2024-07-16 23:44:37'),
(13, 'DEPOSIT.741a0099c9ac04c7bfc822caf7c7459f', 9, 1000.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.741a0099c9ac04c7bfc822caf7c7459f', NULL, 0, NULL, '2024-07-31 16:19:02', '2024-07-31 16:19:02'),
(14, 'DEPOSIT.24ec8468b67314c2013d215b77034476', 9, 200.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.24ec8468b67314c2013d215b77034476', NULL, 0, NULL, '2024-08-02 17:57:31', '2024-08-02 17:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(1, '5d64097e-af0c-492d-931d-2ec78ed2263f', 'database', 'default', '{\"uuid\":\"5d64097e-af0c-492d-931d-2ec78ed2263f\",\"displayName\":\"App\\\\Jobs\\\\LargeExcelJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\LargeExcelJob\",\"command\":\"O:22:\\\"App\\\\Jobs\\\\LargeExcelJob\\\":1:{s:11:\\\"\\u0000*\\u0000filePath\\\";s:53:\\\"huploads\\/yNlsQVYw7dLxM3zU17nsxt6uJUpS0yNnKLANMVXD.csv\\\";}\"}}', 'PDOException: SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'title\' cannot be null in D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\MySqlConnection.php:45\nStack trace:\n#0 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\MySqlConnection.php(45): PDOStatement->execute()\n#1 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(816): Illuminate\\Database\\MySqlConnection->Illuminate\\Database\\{closure}(\'insert into `vi...\', Array)\n#2 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(783): Illuminate\\Database\\Connection->runQueryCallback(\'insert into `vi...\', Array, Object(Closure))\n#3 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\MySqlConnection.php(50): Illuminate\\Database\\Connection->run(\'insert into `vi...\', Array, Object(Closure))\n#4 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Processors\\MySqlProcessor.php(35): Illuminate\\Database\\MySqlConnection->insert(\'insert into `vi...\', Array, \'id\')\n#5 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(3549): Illuminate\\Database\\Query\\Processors\\MySqlProcessor->processInsertGetId(Object(Illuminate\\Database\\Query\\Builder), \'insert into `vi...\', Array, \'id\')\n#6 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(1982): Illuminate\\Database\\Query\\Builder->insertGetId(Array, \'id\')\n#7 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1334): Illuminate\\Database\\Eloquent\\Builder->__call(\'insertGetId\', Array)\n#8 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1299): Illuminate\\Database\\Eloquent\\Model->insertAndSetId(Object(Illuminate\\Database\\Eloquent\\Builder), Array)\n#9 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1138): Illuminate\\Database\\Eloquent\\Model->performInsert(Object(Illuminate\\Database\\Eloquent\\Builder))\n#10 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1166): Illuminate\\Database\\Eloquent\\Model->save(Array)\n#11 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Concerns\\ManagesTransactions.php(30): Illuminate\\Database\\Eloquent\\Model->Illuminate\\Database\\Eloquent\\{closure}(Object(Illuminate\\Database\\MySqlConnection))\n#12 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1166): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#13 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelManager.php(167): Illuminate\\Database\\Eloquent\\Model->saveOrFail()\n#14 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Collections\\Traits\\EnumeratesValues.php(240): Maatwebsite\\Excel\\Imports\\ModelManager->Maatwebsite\\Excel\\Imports\\{closure}(Object(App\\Models\\Video), 0)\n#15 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelManager.php(172): Illuminate\\Support\\Collection->each(Object(Closure))\n#16 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Collections\\Traits\\EnumeratesValues.php(240): Maatwebsite\\Excel\\Imports\\ModelManager->Maatwebsite\\Excel\\Imports\\{closure}(Array, 18102)\n#17 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelManager.php(173): Illuminate\\Support\\Collection->each(Object(Closure))\n#18 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelManager.php(82): Maatwebsite\\Excel\\Imports\\ModelManager->singleFlush(Object(App\\Imports\\LargeHostersmport))\n#19 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelImporter.php(114): Maatwebsite\\Excel\\Imports\\ModelManager->flush(Object(App\\Imports\\LargeHostersmport), false)\n#20 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelImporter.php(95): Maatwebsite\\Excel\\Imports\\ModelImporter->flush(Object(App\\Imports\\LargeHostersmport), 1, 18102)\n#21 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Sheet.php(258): Maatwebsite\\Excel\\Imports\\ModelImporter->import(Object(PhpOffice\\PhpSpreadsheet\\Worksheet\\Worksheet), Object(App\\Imports\\LargeHostersmport), 1)\n#22 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Reader.php(116): Maatwebsite\\Excel\\Sheet->import(Object(App\\Imports\\LargeHostersmport), 1)\n#23 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Concerns\\ManagesTransactions.php(30): Maatwebsite\\Excel\\Reader->Maatwebsite\\Excel\\{closure}(Object(Illuminate\\Database\\MySqlConnection))\n#24 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Transactions\\DbTransactionHandler.php(30): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#25 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Reader.php(130): Maatwebsite\\Excel\\Transactions\\DbTransactionHandler->__invoke(Object(Closure))\n#26 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Excel.php(155): Maatwebsite\\Excel\\Reader->read(Object(App\\Imports\\LargeHostersmport), \'huploads/yNlsQV...\', \'Csv\', NULL)\n#27 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(355): Maatwebsite\\Excel\\Excel->import(Object(App\\Imports\\LargeHostersmport), \'huploads/yNlsQV...\')\n#28 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\app\\Jobs\\largeExcelJob.php(26): Illuminate\\Support\\Facades\\Facade::__callStatic(\'import\', Array)\n#29 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\LargeExcelJob->handle()\n#30 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#31 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#32 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#33 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#34 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#35 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\LargeExcelJob))\n#36 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\LargeExcelJob))\n#37 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#38 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\LargeExcelJob), false)\n#39 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\LargeExcelJob))\n#40 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\LargeExcelJob))\n#41 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\LargeExcelJob))\n#43 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#44 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#45 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#46 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#47 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(138): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#48 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(121): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#49 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#50 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#51 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#52 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#53 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#54 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#55 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#56 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(181): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#57 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#58 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#59 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#60 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#61 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#62 {main}\n\nNext Illuminate\\Database\\QueryException: SQLSTATE[23000]: Integrity constraint violation: 1048 Column \'title\' cannot be null (Connection: mysql, SQL: insert into `videos_1` (`video_id`, `category`, `title`, `url`, `thumb_src`, `keywords`, `thumb_size`, `length_sec`, `length_min`, `embed`, `status`, `updated_at`, `created_at`) values (18188, Asian, ?, https://www.eporner.com/video-WsDBaYjd63i//, https://static-ca-cdn.eporner.com/thumbs/static4/1/11/115/11502288/8_240.jpg, medium, 48, amateur, , , brunette, asian, pov, 1677, 27, https://www.eporner.com/embed/WsDBaYjd63i/, 2024-10-20 16:09:02, 2024-10-20 16:09:02)) in D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:829\nStack trace:\n#0 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(783): Illuminate\\Database\\Connection->runQueryCallback(\'insert into `vi...\', Array, Object(Closure))\n#1 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\MySqlConnection.php(50): Illuminate\\Database\\Connection->run(\'insert into `vi...\', Array, Object(Closure))\n#2 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Processors\\MySqlProcessor.php(35): Illuminate\\Database\\MySqlConnection->insert(\'insert into `vi...\', Array, \'id\')\n#3 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(3549): Illuminate\\Database\\Query\\Processors\\MySqlProcessor->processInsertGetId(Object(Illuminate\\Database\\Query\\Builder), \'insert into `vi...\', Array, \'id\')\n#4 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(1982): Illuminate\\Database\\Query\\Builder->insertGetId(Array, \'id\')\n#5 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1334): Illuminate\\Database\\Eloquent\\Builder->__call(\'insertGetId\', Array)\n#6 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1299): Illuminate\\Database\\Eloquent\\Model->insertAndSetId(Object(Illuminate\\Database\\Eloquent\\Builder), Array)\n#7 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1138): Illuminate\\Database\\Eloquent\\Model->performInsert(Object(Illuminate\\Database\\Eloquent\\Builder))\n#8 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1166): Illuminate\\Database\\Eloquent\\Model->save(Array)\n#9 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Concerns\\ManagesTransactions.php(30): Illuminate\\Database\\Eloquent\\Model->Illuminate\\Database\\Eloquent\\{closure}(Object(Illuminate\\Database\\MySqlConnection))\n#10 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1166): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#11 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelManager.php(167): Illuminate\\Database\\Eloquent\\Model->saveOrFail()\n#12 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Collections\\Traits\\EnumeratesValues.php(240): Maatwebsite\\Excel\\Imports\\ModelManager->Maatwebsite\\Excel\\Imports\\{closure}(Object(App\\Models\\Video), 0)\n#13 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelManager.php(172): Illuminate\\Support\\Collection->each(Object(Closure))\n#14 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Collections\\Traits\\EnumeratesValues.php(240): Maatwebsite\\Excel\\Imports\\ModelManager->Maatwebsite\\Excel\\Imports\\{closure}(Array, 18102)\n#15 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelManager.php(173): Illuminate\\Support\\Collection->each(Object(Closure))\n#16 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelManager.php(82): Maatwebsite\\Excel\\Imports\\ModelManager->singleFlush(Object(App\\Imports\\LargeHostersmport))\n#17 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelImporter.php(114): Maatwebsite\\Excel\\Imports\\ModelManager->flush(Object(App\\Imports\\LargeHostersmport), false)\n#18 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Imports\\ModelImporter.php(95): Maatwebsite\\Excel\\Imports\\ModelImporter->flush(Object(App\\Imports\\LargeHostersmport), 1, 18102)\n#19 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Sheet.php(258): Maatwebsite\\Excel\\Imports\\ModelImporter->import(Object(PhpOffice\\PhpSpreadsheet\\Worksheet\\Worksheet), Object(App\\Imports\\LargeHostersmport), 1)\n#20 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Reader.php(116): Maatwebsite\\Excel\\Sheet->import(Object(App\\Imports\\LargeHostersmport), 1)\n#21 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Concerns\\ManagesTransactions.php(30): Maatwebsite\\Excel\\Reader->Maatwebsite\\Excel\\{closure}(Object(Illuminate\\Database\\MySqlConnection))\n#22 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Transactions\\DbTransactionHandler.php(30): Illuminate\\Database\\Connection->transaction(Object(Closure))\n#23 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Reader.php(130): Maatwebsite\\Excel\\Transactions\\DbTransactionHandler->__invoke(Object(Closure))\n#24 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\maatwebsite\\excel\\src\\Excel.php(155): Maatwebsite\\Excel\\Reader->read(Object(App\\Imports\\LargeHostersmport), \'huploads/yNlsQV...\', \'Csv\', NULL)\n#25 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(355): Maatwebsite\\Excel\\Excel->import(Object(App\\Imports\\LargeHostersmport), \'huploads/yNlsQV...\')\n#26 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\app\\Jobs\\largeExcelJob.php(26): Illuminate\\Support\\Facades\\Facade::__callStatic(\'import\', Array)\n#27 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\LargeExcelJob->handle()\n#28 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#29 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#30 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#31 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#32 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#33 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\LargeExcelJob))\n#34 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\LargeExcelJob))\n#35 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#36 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\LargeExcelJob), false)\n#37 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\LargeExcelJob))\n#38 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\LargeExcelJob))\n#39 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(126): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\LargeExcelJob))\n#41 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#42 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#43 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#44 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#45 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(138): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#46 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(121): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#47 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#48 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#49 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#50 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#51 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#52 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#53 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#54 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(181): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#55 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\symfony\\console\\Application.php(1096): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#56 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\symfony\\console\\Application.php(324): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#57 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\symfony\\console\\Application.php(175): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#58 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#59 D:\\xampp\\htdocs\\apps\\fgames_v2\\api\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#60 {main}', '2024-10-20 10:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `global_wallet_address`
--

CREATE TABLE `global_wallet_address` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `lock_unlock` int(11) NOT NULL COMMENT '1=lock,0=unlock',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_wallet_address`
--

INSERT INTO `global_wallet_address` (`id`, `name`, `status`, `lock_unlock`, `created_at`, `updated_at`) VALUES
(1, 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 1, 1, '2024-07-12 18:37:40', '2024-07-15 22:18:01'),
(2, 'TKpRQQeykiNPuTjy5vw8do1QK3G64U6VxR', 1, 1, '2024-07-12 18:37:49', '2024-07-16 17:44:30'),
(3, 'TPuP8UP5CRBG5RxGy4fSQ1xf69ft5iwDWP', 1, 0, '2024-07-12 18:37:49', '2024-07-13 03:40:19'),
(4, 'TKhvhGhUjkn1GzTZrpM9hwoMZhXaPt9iVt', 1, 0, '2024-07-12 18:37:49', '2024-07-13 03:46:32'),
(5, 'TPNPcdTMUnq9HS1ejeZzGf7BJukq3NscQV', 1, 0, '2024-07-12 18:37:49', '2024-07-13 03:49:20'),
(6, 'TBhZ5ZyMbZjGpqYm8cxip9M2Nm3SjFeAgR', 1, 0, '2024-07-12 18:37:49', '2024-07-13 03:51:50'),
(7, 'TSZHRpspB9vZyUnX2JvHVjDo8MhpiNLjz9', 1, 0, '2024-07-12 18:37:49', '2024-07-13 05:38:18'),
(8, 'TZBt8EZmyFdxnRy7nCDUuNE1LFisSTqkLh', 1, 0, '2024-07-12 18:37:49', '2024-07-13 06:16:18'),
(9, 'TNkpRg6Zy6pZAM4hbCQe8jt3XVqM6HRRU5', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(10, 'TVp7PV8q3wSVKoj32DhpoMgH6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(11, 'TVp7PV8q3wSVKoj232DhpoMgH6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(12, 'TVp7PV8q3wSVKoj232DhpoMg2H6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(13, 'TVp7PV8q3wSVKoj23223DhpoMg2H6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(14, 'TVp7PV8q3wSVKoj232223DhpoMg2H6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(15, 'TVp7PV8q3wSVKoj232223DhpoM3g2H6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(16, 'TVp7PV8q3wSVKoj233DhpoM3g2H6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `status` int(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 1, '2024-10-26 11:34:03', '2024-10-26 11:34:03'),
(2, 'Bengali', 'bn', 1, '2024-10-26 11:34:03', '2024-10-27 06:00:00'),
(3, 'Hindi', 'hi', 0, '2024-10-26 11:34:03', '2024-10-26 11:34:03'),
(4, 'Tamil', 'ta', 0, '2024-10-26 11:34:03', '2024-10-27 10:16:45'),
(5, 'Chinese', 'zh', 0, '2024-10-26 11:34:03', '2024-10-27 11:10:21'),
(6, 'Spanish', 'es', 0, '2024-10-26 11:34:03', '2024-10-26 11:34:03');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `method` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(3, '2019_08_19_000000_create_failed_jobs_table', 3),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'gazigiashuddin@gmail.com', 'cBk8LmFh6xfydQ2ao78Qznbj4XtNcPMSJRlNxSUePN07sEr9Vg2yCl3Ou9Y9', '2024-07-11 17:39:05'),
(2, 'gazigiashuddin@gmail.com', 'mhEUCcET2u0JHkrS9srpcahx1Uz9g7D4AcohXUW4VutHE5qiNw73Ozjifyi4', '2024-07-11 17:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `post_category_id` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `description`, `post_category_id`, `entry_by`, `thumnail_img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'sdfds', 'sdfds', '<div style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #000000; font-family: Inter, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\n<h4 class=\"css-rtej3a\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-style: normal; font-stretch: normal; font-weight: 600; font-family: \'Inter VF\', Inter, sans-serif; letter-spacing: 0.09px; color: #070b1a;\">Access to every feature TinyMCE offers</h4>\n<p class=\"css-g41btx\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-weight: normal; font-style: normal; font-stretch: normal; letter-spacing: normal; font-family: \'Inter VF\', Inter, sans-serif; color: #070b1a;\">Optimize the content creation and editing experience in your app with some of our most popular features - from out-of-the-box tools your users expect to endless customization possibilities.</p>\n</div>\n<div style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #000000; font-family: Inter, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\n<h4 class=\"css-rtej3a\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-style: normal; font-stretch: normal; font-weight: 600; font-family: \'Inter VF\', Inter, sans-serif; letter-spacing: 0.09px; color: #070b1a;\">Unlimited editor loads</h4>\n<p class=\"css-g41btx\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-weight: normal; font-style: normal; font-stretch: normal; letter-spacing: normal; font-family: \'Inter VF\', Inter, sans-serif; color: #070b1a;\">We know it can be hard to estimate your editor loads at first, so spend a stress-free 14 days on us evaluating your usage without incurring overage fees.</p>\n</div>', 7, 1, NULL, 1, '2024-12-07 15:23:32', '2024-12-07 15:23:32'),
(2, 'For Testing Post', 'for-testing-post', '<div style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #000000; font-family: Inter, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h4 class=\"css-rtej3a\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-style: normal; font-stretch: normal; font-weight: 600; font-family: \'Inter VF\', Inter, sans-serif; letter-spacing: 0.09px; color: #070b1a;\">Access to every feature TinyMCE offers</h4>\r\n<p class=\"css-g41btx\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-weight: normal; font-style: normal; font-stretch: normal; letter-spacing: normal; font-family: \'Inter VF\', Inter, sans-serif; color: #070b1a;\">Optimize the content creation and editing experience in your app with some of our most popular features - from out-of-the-box tools your users expect to endless customization possibilities.</p>\r\n</div>\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #000000; font-family: Inter, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h4 class=\"css-rtej3a\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-style: normal; font-stretch: normal; font-weight: 600; font-family: \'Inter VF\', Inter, sans-serif; letter-spacing: 0.09px; color: #070b1a;\">Unlimited editor loads</h4>\r\n<p class=\"css-g41btx\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-weight: normal; font-style: normal; font-stretch: normal; letter-spacing: normal; font-family: \'Inter VF\', Inter, sans-serif; color: #070b1a;\">We know it can be hard to estimate your editor loads at first, so spend a stress-free 14 days on us evaluating your usage without incurring overage fees.</p>\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #000000; font-family: Inter, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h4 class=\"css-rtej3a\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-style: normal; font-stretch: normal; font-weight: 600; font-family: \'Inter VF\', Inter, sans-serif; letter-spacing: 0.09px; color: #070b1a;\">Access to every feature TinyMCE offers</h4>\r\n<p class=\"css-g41btx\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-weight: normal; font-style: normal; font-stretch: normal; letter-spacing: normal; font-family: \'Inter VF\', Inter, sans-serif; color: #070b1a;\">Optimize the content creation and editing experience in your app with some of our most popular features - from out-of-the-box tools your users expect to endless customization possibilities.</p>\r\n</div>\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #000000; font-family: Inter, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h4 class=\"css-rtej3a\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-style: normal; font-stretch: normal; font-weight: 600; font-family: \'Inter VF\', Inter, sans-serif; letter-spacing: 0.09px; color: #070b1a;\">Unlimited editor loads</h4>\r\n<p class=\"css-g41btx\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-weight: normal; font-style: normal; font-stretch: normal; letter-spacing: normal; font-family: \'Inter VF\', Inter, sans-serif; color: #070b1a;\">We know it can be hard to estimate your editor loads at first, so spend a stress-free 14 days on us evaluating your usage without incurring overage fees.</p>\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #000000; font-family: Inter, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h4 class=\"css-rtej3a\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-style: normal; font-stretch: normal; font-weight: 600; font-family: \'Inter VF\', Inter, sans-serif; letter-spacing: 0.09px; color: #070b1a;\">Access to every feature TinyMCE offers</h4>\r\n<p class=\"css-g41btx\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-weight: normal; font-style: normal; font-stretch: normal; letter-spacing: normal; font-family: \'Inter VF\', Inter, sans-serif; color: #070b1a;\">Optimize the content creation and editing experience in your app with some of our most popular features - from out-of-the-box tools your users expect to endless customization possibilities.</p>\r\n</div>\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #000000; font-family: Inter, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h4 class=\"css-rtej3a\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-style: normal; font-stretch: normal; font-weight: 600; font-family: \'Inter VF\', Inter, sans-serif; letter-spacing: 0.09px; color: #070b1a;\">Unlimited editor loads</h4>\r\n<p class=\"css-g41btx\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-weight: normal; font-style: normal; font-stretch: normal; letter-spacing: normal; font-family: \'Inter VF\', Inter, sans-serif; color: #070b1a;\">We know it can be hard to estimate your editor loads at first, so spend a stress-free 14 days on us evaluating your usage without incurring overage fees.</p>\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #000000; font-family: Inter, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h4 class=\"css-rtej3a\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-style: normal; font-stretch: normal; font-weight: 600; font-family: \'Inter VF\', Inter, sans-serif; letter-spacing: 0.09px; color: #070b1a;\">Access to every feature TinyMCE offers</h4>\r\n<p class=\"css-g41btx\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-weight: normal; font-style: normal; font-stretch: normal; letter-spacing: normal; font-family: \'Inter VF\', Inter, sans-serif; color: #070b1a;\">Optimize the content creation and editing experience in your app with some of our most popular features - from out-of-the-box tools your users expect to endless customization possibilities.</p>\r\n</div>\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #000000; font-family: Inter, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h4 class=\"css-rtej3a\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-style: normal; font-stretch: normal; font-weight: 600; font-family: \'Inter VF\', Inter, sans-serif; letter-spacing: 0.09px; color: #070b1a;\">Unlimited editor loads</h4>\r\n<p class=\"css-g41btx\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-weight: normal; font-style: normal; font-stretch: normal; letter-spacing: normal; font-family: \'Inter VF\', Inter, sans-serif; color: #070b1a;\">We know it can be hard to estimate your editor loads at first, so spend a stress-free 14 days on us evaluating your usage without incurring overage fees.</p>\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #000000; font-family: Inter, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h4 class=\"css-rtej3a\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-style: normal; font-stretch: normal; font-weight: 600; font-family: \'Inter VF\', Inter, sans-serif; letter-spacing: 0.09px; color: #070b1a;\">Access to every feature TinyMCE offers</h4>\r\n<p class=\"css-g41btx\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-weight: normal; font-style: normal; font-stretch: normal; letter-spacing: normal; font-family: \'Inter VF\', Inter, sans-serif; color: #070b1a;\">Optimize the content creation and editing experience in your app with some of our most popular features - from out-of-the-box tools your users expect to endless customization possibilities.</p>\r\n</div>\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; font-size: 16px; vertical-align: baseline; color: #000000; font-family: Inter, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\r\n<h4 class=\"css-rtej3a\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-style: normal; font-stretch: normal; font-weight: 600; font-family: \'Inter VF\', Inter, sans-serif; letter-spacing: 0.09px; color: #070b1a;\">Unlimited editor loads</h4>\r\n<p class=\"css-g41btx\" style=\"margin: 0px; padding: 0px; border: 0px; font-size: 1rem; vertical-align: baseline; line-height: 1.5; font-weight: normal; font-style: normal; font-stretch: normal; letter-spacing: normal; font-family: \'Inter VF\', Inter, sans-serif; color: #070b1a;\">We know it can be hard to estimate your editor loads at first, so spend a stress-free 14 days on us evaluating your usage without incurring overage fees.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 46, 1, NULL, 1, '2024-12-07 15:24:25', '2024-12-07 15:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FAQs', 'faqs', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(2, 'Technology', 'technology', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(3, 'Health', 'health', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(4, 'Education', 'education', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(5, 'Finance', 'finance', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(6, 'Lifestyle', 'lifestyle', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(7, 'Travel', 'travel', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(8, 'Food', 'food', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(9, 'Entertainment', 'entertainment', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(10, 'Sports', 'sports', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(11, 'Science', 'science', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(12, 'Politics', 'politics', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(13, 'Business', 'business', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(14, 'Art', 'art', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(15, 'Music', 'music', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(16, 'Books', 'books', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(17, 'Movies', 'movies', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(18, 'DIY', 'diy', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(19, 'Parenting', 'parenting', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(20, 'Fitness', 'fitness', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(21, 'Photography', 'photography', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(22, 'Gaming', 'gaming', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(23, 'Programming', 'programming', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(24, 'AI', 'ai', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(25, 'Machine Learning', 'machine-learning', 1, '2024-12-07 12:27:29', '2024-12-07 12:27:29'),
(26, 'Startups', 'startups', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(27, 'Marketing', 'marketing', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(28, 'SEO', 'seo', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(29, 'E-commerce', 'e-commerce', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(30, 'Fashion', 'fashion', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(31, 'Beauty', 'beauty', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(32, 'Design', 'design', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(33, 'Environment', 'environment', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(34, 'Sustainability', 'sustainability', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(35, 'Culture', 'culture', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(36, 'History', 'history', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(37, 'Psychology', 'psychology', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(38, 'Self-Improvement', 'self-improvement', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(39, 'Relationships', 'relationships', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(40, 'Career', 'career', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(41, 'Productivity', 'productivity', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(42, 'Real Estate', 'real-estate', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(43, 'Investment', 'investment', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(44, 'Cryptocurrency', 'cryptocurrency', 1, '2024-12-07 12:27:30', '2024-12-07 12:27:30'),
(45, 'Cooking', 'cooking', 1, '2024-12-07 12:27:31', '2024-12-07 12:27:31'),
(46, 'Recipes', 'recipes', 1, '2024-12-07 12:27:31', '2024-12-07 12:27:31'),
(47, 'Automobiles', 'automobiles', 1, '2024-12-07 12:27:31', '2024-12-07 12:27:31'),
(48, 'Technology News', 'technology-news', 1, '2024-12-07 12:27:31', '2024-12-07 12:27:31'),
(49, 'Mobile Devices', 'mobile-devices', 1, '2024-12-07 12:27:31', '2024-12-07 12:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 1, '2024-04-16 10:33:46', '2024-04-16 10:33:46'),
(2, 'Merchant', 1, '2024-04-16 10:56:15', '2024-04-16 10:56:15'),
(3, 'Admin', 1, '2024-04-16 10:56:27', '2024-12-06 12:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deposit_service_charge` int(11) DEFAULT NULL COMMENT '%',
  `convert_php_amt` float DEFAULT NULL,
  `withdraw_service_charge` int(11) DEFAULT NULL COMMENT '%',
  `withdraw_minimum_amount` int(11) DEFAULT NULL,
  `withdraw_maximum_amount` int(11) DEFAULT NULL,
  `minimum_trade_amount` int(11) DEFAULT NULL,
  `minimum_purchages_amt` int(11) DEFAULT NULL,
  `minimum_deposit_amount` int(11) DEFAULT NULL,
  `trade_fee` int(11) DEFAULT NULL COMMENT '%',
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `whatsApp` varchar(255) NOT NULL,
  `emergency` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `admin_photo` varchar(244) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `meta_keywords` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `pphoto` varchar(255) NOT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `currency` varchar(150) DEFAULT NULL,
  `openinig_balance_date` date DEFAULT NULL,
  `reffer_bonus` int(11) DEFAULT NULL,
  `maximum_supply` double(10,2) DEFAULT NULL,
  `total_supply` varchar(255) DEFAULT NULL,
  `openinig_balance_comments` mediumtext DEFAULT NULL,
  `fblink` varchar(255) DEFAULT NULL,
  `twitterlink` varchar(255) DEFAULT NULL,
  `linkdinlink` varchar(255) DEFAULT NULL,
  `instragramlink` varchar(255) DEFAULT NULL,
  `store_policy` longtext DEFAULT NULL,
  `crypto_wallet_address` varchar(255) DEFAULT NULL,
  `master_pass_acc_no` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `register_bonus` int(11) DEFAULT NULL,
  `mininmum_deposit_amount` double(10,2) DEFAULT NULL,
  `maximum_deposit_amount` double(10,2) DEFAULT NULL,
  `minimum_withdrawal` double(10,2) DEFAULT NULL,
  `maximum_withdrawal` double(10,2) DEFAULT NULL,
  `level_1_bonus` int(11) DEFAULT NULL,
  `level_2_bonus` int(11) DEFAULT NULL,
  `level_3_bonus` int(11) DEFAULT NULL,
  `ocn_purchage` double(10,2) DEFAULT NULL,
  `daily_max_withdraw_request` double(10,2) DEFAULT NULL,
  `withdrawal_free_amount` double(10,2) DEFAULT NULL,
  `withdrawal_free_on_percentage` double(10,2) DEFAULT NULL,
  `maximum_supply_level` varchar(255) DEFAULT NULL,
  `mimumun_transfer_amount_to_other_user` double(10,2) DEFAULT NULL,
  `maximum_transfer_amount_to_other_user` double(10,2) DEFAULT NULL,
  `transfer_fee_fixed_amount` double(10,2) DEFAULT NULL,
  `traansfer_fee_on_percentage` double(10,2) DEFAULT NULL,
  `total_supply_level` varchar(255) DEFAULT NULL,
  `liquidity_total_supply` varchar(255) DEFAULT NULL,
  `beganing_price` varchar(255) DEFAULT NULL,
  `circlation` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `deposit_service_charge`, `convert_php_amt`, `withdraw_service_charge`, `withdraw_minimum_amount`, `withdraw_maximum_amount`, `minimum_trade_amount`, `minimum_purchages_amt`, `minimum_deposit_amount`, `trade_fee`, `tel`, `email`, `address`, `whatsApp`, `emergency`, `photo`, `description`, `copyright`, `status`, `admin_photo`, `admin_name`, `admin_email`, `admin_phone`, `meta_keywords`, `meta_description`, `pphoto`, `bg_color`, `currency`, `openinig_balance_date`, `reffer_bonus`, `maximum_supply`, `total_supply`, `openinig_balance_comments`, `fblink`, `twitterlink`, `linkdinlink`, `instragramlink`, `store_policy`, `crypto_wallet_address`, `master_pass_acc_no`, `website`, `telegram`, `register_bonus`, `mininmum_deposit_amount`, `maximum_deposit_amount`, `minimum_withdrawal`, `maximum_withdrawal`, `level_1_bonus`, `level_2_bonus`, `level_3_bonus`, `ocn_purchage`, `daily_max_withdraw_request`, `withdrawal_free_amount`, `withdrawal_free_on_percentage`, `maximum_supply_level`, `mimumun_transfer_amount_to_other_user`, `maximum_transfer_amount_to_other_user`, `transfer_fee_fixed_amount`, `traansfer_fee_on_percentage`, `total_supply_level`, `liquidity_total_supply`, `beganing_price`, `circlation`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 'OCN TRADE AI', 5, 64, 5, 20, 4000, 5, 20, 20, 6, '+44245454545', 'ocn@abcd.com', 'Addres', '00000055555', '+000000', 'pic/2tAjiUpJ0X8GziIrKJJJ.png', 'Business Description', 'Copyright Â© 2024 uic . All Rights Reserved', 1, 'pic/ZOdc8nsWAMY1YELkp9zH.jpg', 'admin', 'info@admin.com', '+44245454545', NULL, NULL, '', '#ffffff', '$', '2020-05-13', 5, 30000000.00, '4500000', NULL, 'https://www.fiverr.com', 'https://www.facebook.com', 'https://web.whatsapp.com/', '#', '', 'TPpMvdKfhENfJqYZsDJQLgEopMRBy15jeU', '225588996633', 'http://winup360.com', '116898999999', 5, 55.00, 5.00, 20.00, 3690.00, 3, 2, 1, NULL, 5.00, 5.00, 5.00, '30 MILLION', 5.00, 5.00, 5.00, 50.00, '4.5 MILLION', '5000', '0.0011244444', 'null', 2993, '2024-05-12 05:32:50', '2024-05-12 03:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fg_id` varchar(255) DEFAULT NULL,
  `fg_wallet_address` varchar(255) DEFAULT NULL,
  `inviteCode` varchar(255) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `available_balance` double(10,8) DEFAULT NULL,
  `show_password` varchar(225) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(225) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `doc_file` varchar(255) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `website` varchar(225) DEFAULT NULL,
  `github` varchar(225) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `twitter` varchar(225) DEFAULT NULL,
  `instagram` varchar(225) DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `facebook` varchar(225) DEFAULT NULL,
  `wallet_balance` decimal(10,2) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `whtsapp` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `register_ip` varchar(255) DEFAULT NULL,
  `lastlogin_ip` varchar(255) DEFAULT NULL,
  `lastlogin_country` varchar(255) DEFAULT NULL,
  `lastlogin_datetime` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `logged_out` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fg_id`, `fg_wallet_address`, `inviteCode`, `ref_id`, `employee_id`, `company_name`, `role_id`, `name`, `email`, `username`, `phone`, `available_balance`, `show_password`, `password`, `real_name`, `phone_number`, `image`, `doc_file`, `address`, `address_1`, `address_2`, `website`, `github`, `gender`, `date_of_birth`, `twitter`, `instagram`, `nationality_id`, `state_id`, `otp`, `facebook`, `wallet_balance`, `email_verified_at`, `telegram`, `whtsapp`, `remember_token`, `entry_by`, `register_ip`, `lastlogin_ip`, `lastlogin_country`, `lastlogin_datetime`, `created_at`, `updated_at`, `status`, `logged_out`) VALUES
(1, NULL, '6f21357fs863ce24ce21c1a82f49a7d5d13', '0000123', 0, 4, 'FG', 1, 'Black Jons', 'dev1@mail.com', 'dev', '01915728982', NULL, 'dev', '$2y$10$egNt4iHOZ4sWab8IcaHE9..QCyQc3z4oFRYUwesyeTH52KDFzM5.y', NULL, '01915728982', '/backend/files/hZkagctUSINKsFU64UJr.png', NULL, 'Dhaka', '', '', 'http://localhost:3000/profile', 'http://localhost:3000/profile', '', '1982-01-30', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 0, 0, NULL, 'http://localhost:3000/profile', NULL, NULL, NULL, NULL, NULL, 1, NULL, '127.0.0.1', NULL, '2024-11-22 09:50:10', '2023-06-22 03:20:43', '2024-12-07 10:42:29', 1, NULL),
(2, 'FG000000002', 'be036e59dd06bfa6d13d36110d3d96a3', '9234087', 0, NULL, 'FG', 3, 'Mamun', 'mrmamun@gmail.com', 'mamun', '01915728983', NULL, 'Password', '$2y$10$VQOKQNqr6/WAhN004ea0Nu.N/j4Tgy2TQL8rzAeEGhm.LBeoUzW5a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-10-17 07:13:54', '2024-10-17 07:13:54', 1, NULL),
(3, 'FG000000003', '52f02f16c2f22a233e76a84fe87f73f4', '2843662', 0, NULL, 'FG', 2, 'Mamun Ahmed', 'mrmamunahmed@gmail.com', 'mamunahmed', '01915728984', NULL, 'Password', '$2y$10$L53y8kGnH7XRqY5Bgr6LaOuhWKtxcZfbzIlLFqoevJVynD9LOipfm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-10-17 07:14:44', '2024-10-17 07:14:44', 1, NULL),
(4, 'FG000000004', '0294d090cc9b186adac2d2f0bd8ced42', '4941998', 0, NULL, 'FG', 2, 'Kabir', 'kabirahmed@gmail.com', 'kabirahmed', '01915728985', NULL, 'kabirahmed', '$2y$10$lmzA0KbNyMantkLl55QsWO1VzooI7rpLZXTozHrOatTLhSn3wSZ/i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-10-17 07:18:14', '2024-10-17 07:18:14', 1, NULL),
(5, 'FG000000005', '08247c76f2cf3eed3bff4456509cc593', '9598693', 0, NULL, 'FG', 2, 'Ibraheem', 'ibraheem@gmail.com', 'Ibraheem', '01915728986', NULL, 'Ibraheem', '$2y$10$6a9KsR/hyDkbiBhu8Qa74.G88m6JzIZ3RgXNFNtAuBqpyMUko2FtC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-10-17 09:05:59', '2024-10-17 09:05:59', 1, NULL),
(6, 'FG000000006', 'fc375fb7c06ab05b400f730b53754aeb', '0369589', 0, NULL, 'FG', 2, 'Ayesha', 'ayesha@gmail.com', 'ayesha', '01915728987', NULL, 'ayesha', '$2y$10$YXGs5Rf7tFbBWeW91LFyW.AXjTLIeX7xRrvMAZaqAtlZ764VJo4Hy', NULL, '', NULL, NULL, '', NULL, NULL, 'http://localhost:5173/my-profile', '', NULL, NULL, 'http://localhost:5173/my-profileTwitter', '', NULL, NULL, NULL, 'http://localhost:5173/my-profileFacebook', NULL, NULL, 'Teelegram', '01954784555', NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-10-17 09:07:16', '2024-10-17 09:07:16', 1, NULL),
(21, 'FG000000021', '6537aff00a10a37930603165a2da53f4', '2009591', 0, NULL, 'FG', 2, 'Postman', 'postman@gmail.com', 'postman@gmail.com', '01915728988', NULL, 'postman@gmail.com', '$2y$10$0uPrvPrY83vXfd2KJCA9AOkRRC7sdNVAsmB4larhW8FG3g5KL9ZNu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-11-27 07:40:00', '2024-11-27 07:40:00', 1, NULL),
(22, 'FG000000022', '8e3c461a604cc05851d6461b764ff56d', '7234009', 0, NULL, 'FG', 2, 'Alamin', 'pc@gmail.com', 'pc', '01915728989', NULL, 'bijonpassword', '$2y$10$20dlwRdo55XEHA90nIiNQ.RA6aXq.c12LJ36/N5JVyQyEcxx/uKnG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, '127.0.0.1', NULL, NULL, NULL, '2024-11-27 09:28:43', '2024-12-07 08:44:05', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_configs`
--
ALTER TABLE `api_configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_code_unique` (`app_id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_type`
--
ALTER TABLE `currency_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `global_wallet_address`
--
ALTER TABLE `global_wallet_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `fg_wallet_address` (`fg_wallet_address`),
  ADD UNIQUE KEY `fg_id` (`fg_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_configs`
--
ALTER TABLE `api_configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currency_type`
--
ALTER TABLE `currency_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `global_wallet_address`
--
ALTER TABLE `global_wallet_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
