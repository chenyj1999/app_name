-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2022-11-22 18:40:17
-- 伺服器版本： 8.0.21
-- PHP 版本： 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `back_db`
--
CREATE DATABASE IF NOT EXISTS `back_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `back_db`;

-- --------------------------------------------------------

--
-- 資料表結構 `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` enum('draft','published') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `host` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `co_organizer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `start_date`, `end_date`, `event_date`, `host`, `co_organizer`, `image_1`, `image_2`, `image_3`, `image_4`, `link`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(29, '活動標題(連到外部)', NULL, NULL, NULL, NULL, NULL, NULL, '3isCCx64UjfShd0uIOP0YSNq6HmGlPegFnTe6iKl.png', NULL, NULL, NULL, 'https://femf.feg.com.tw/feada/', 'link', '2022-11-22', '2022-11-22 06:33:45', NULL),
(28, '活動標題(活動日期已過)', '徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。', '2022-11-21', '2022-11-21', '2022-11-26', '徐元智先生紀念基金會', '亞東科大', 'kAac2tToZGtMj4654EsPg8jO67U7hd4K4gEg6czv.jpg', NULL, NULL, NULL, 'undefined', 'text', '2022-11-13', '2022-11-22 06:31:38', NULL),
(27, '活動文章標題(活動日期還沒到)', '徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。', '2022-11-23', '2022-11-23', '2022-11-23', '徐元智先生紀念基金會', '亞東科大', 'BvmWBMg6qW3tv6iIznhaloxIhpRyoujyOEn7eO3V.jpg', 'kAac2tToZGtMj4654EsPg8jO67U7hd4K4gEg6czv.jpg', '3isCCx64UjfShd0uIOP0YSNq6HmGlPegFnTe6iKl.png', 'WbiQZXk3EZ81jpBfo188G9r4UbXQckIDfpHzyECn.jpg', 'undefined', 'text', '2022-11-22', '2022-11-22 06:30:37', NULL),
(25, '新增活動標題(外部連結)', NULL, NULL, NULL, NULL, NULL, NULL, 'QKO9aXXpmyDZuo6hlcZUl6SnU4TIxFX5clUGjZNt.jpg', NULL, NULL, NULL, 'https://femf.feg.com.tw/feada/', 'link', '2022-11-22', '2022-11-22 06:22:28', NULL),
(26, '活動日期已過期221120', 'https://femf.feg.com.tw/feada/https://femf.feg.com.tw/feada/https://femf.feg.com.tw/feada/https://femf.feg.com.tw/feada/https://femf.feg.com.tw/feada/', '2022-11-22', '2022-11-22', '2022-11-08', '徐元智先生紀念基金會', '亞東科大', 'WbiQZXk3EZ81jpBfo188G9r4UbXQckIDfpHzyECn.jpg', NULL, NULL, NULL, 'https://femf.feg.com.tw/feada/', 'text', '2022-11-22', '2022-11-22 06:23:55', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_07_20_132436_create_sessions_table', 1),
(7, '2022_08_01_144436_create_articles_table', 1),
(8, '2022_10_04_134411_create_tests_table', 1),
(9, '2022_10_11_123752_create_news_table', 1),
(10, '2022_11_17_142250_create_users_table', 2),
(11, '2022_11_17_143658_create_users_table', 3);

-- --------------------------------------------------------

--
-- 資料表結構 `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `date`, `image`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(31, '最新消息0958up', '徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。up', '2022-11-17', 'CygmCFK9x0Ca8jAYYfgSjr3byA7nocHmUc8yvEUU.jpg', 'care', NULL, '2022-11-15', '2022-11-22 08:35:41'),
(37, '新增最新消息標題221122', '徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。', '2022-11-23', 'SelF4ydScexkADBbhX5YXAIDv5ewRZO0xNrZ54uB.jpg', 'green', NULL, '2022-11-22', '2022-11-22 06:20:28'),
(38, '最新消息標題221028', '徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。', '2022-11-23', 'krKEJLTVCTuvPWuENKFwh0Ei9paY9r84TgRdFfwM.jpg', 'green', NULL, '2022-11-22', '2022-11-22 06:29:14');

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE IF NOT EXISTS `tests` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'root', '1234', NULL, '2022-11-17 14:37:46', '2022-11-17 14:37:46'),
(2, 'b', 'b', NULL, '2022-11-19 16:08:56', '2022-11-19 16:08:56');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
