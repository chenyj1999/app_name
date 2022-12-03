-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2022-12-03 03:39:13
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
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `editordata` text COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `start_date`, `end_date`, `event_date`, `host`, `co_organizer`, `address`, `image_1`, `image_2`, `image_3`, `image_4`, `editordata`, `link`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(101, '護眼EYECARE', '事業有成後徐有庠先生本著「取諸社會、用諸社會」精神，投身公益。1976年成立徐元智先生紀念基金會。徐元智先生紀念基金會創立40餘年來，曾歷經石油危機和地區性戰爭，但其捐助會務卻未曾受影響，各項工作成果也獲得各界讚賞。\r\n\r\n事業有成後徐有庠先生本著「取諸社會、用諸社會」精神，投身公益。1976年成立徐元智先生紀念基金會。徐元智先生紀念基金會創立40餘年來，曾歷經石油危機和地區性戰爭，但其捐助會務卻未曾受影響，各項工作成果也獲得各界讚賞。 事業有成後徐有庠先生本著「取諸社會、用諸社會」精神，投身公益。1976年成立徐元智先生紀念基金會。徐元智先生紀念基金會創立40餘年來，曾歷經石油危機和地區性戰爭，但其捐助會務卻未曾受影響，各項工作成果也獲得各界讚賞。 事業有成後徐有庠先生本著「取諸社會、用諸社會」精神，投身公益。1976年成立徐元智先生紀念基金會。徐元智先生紀念基金會創立40餘年來，曾歷經石油危機和地區性戰爭，但其捐助會務卻未曾受影響，各項工作成果也獲得各界讚賞。 事業有成後徐有庠先生本著「取諸社會、用諸社會」精神，投身公益。1976年成立徐元智先生紀念基金會。徐元智先生紀念基金會創立40餘年來，曾歷經石油危機和地區性戰爭，但其捐助會務卻未曾受影響，各項工作成果也獲得各界讚賞。事業有成後徐有庠先生本著「取諸社會、用諸社會」精神，投身公益。1976年成立徐元智先生紀念基金會。徐元智先生紀念基金會創立40餘年來，曾歷經石油危機和地區性戰爭，但其捐助會務卻未曾受影響，各項工作成果也獲得各界讚賞。 事業有成後徐有庠先生本著', '2022-08-01', '2022-08-31', '2022-09-07', '徐元智先生紀念基金會', '國立陽明交通大學　亞東科技大學', '亞東科技大學', 'ELTAy9ZVODO2DGVR0asbpPG7UBhKodMshbzc1sNt.jpg', '7v5VEBn91zWxsWeeC9kflKX3U3XlhI9wM5mYvsqO.jpg', 'AWcT4SlBHYzM1r8525Uayd862X5WG7MY5vfOJQ2x.jpg', 'oriyzfruXiHi8Zlovj49ww7an5EvzHeajg3kbnGG.jpg', '<h2 style=\"margin-left:auto;text-align:center;\"><strong>活動期程</strong></h2><figure class=\"table\" style=\"width:100%;\"><table class=\"ck-table-resized\"><colgroup><col style=\"width:49.65%;\"><col style=\"width:50.35%;\"></colgroup><tbody><tr><td rowspan=\"2\"><p style=\"text-align:center;\"><span class=\"text-big\"><strong>8/6(六)</strong></span></p></td><td style=\"width:166.625px;\"><p style=\"margin-left:0px;text-align:center;\"><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);\">09:30-12:00</span></p></td></tr><tr><td><p style=\"text-align:center;\"><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);\">14:00-16:30</span></p></td></tr><tr><td rowspan=\"2\"><p style=\"text-align:center;\"><span class=\"text-big\"><strong>8/7(六)</strong></span></p></td><td><p style=\"text-align:center;\"><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);\">09:30-12:00</span></p></td></tr><tr><td style=\"width:166.625px;\"><p style=\"margin-left:0px;text-align:center;\"><span class=\"text-small\" style=\"color:hsl(0,0%,0%);\">14:00-16:30</span></p></td></tr><tr><td rowspan=\"2\"><p style=\"text-align:center;\"><span class=\"text-big\"><strong>8/20(六)</strong></span></p></td><td><p style=\"text-align:center;\"><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);\">09:30-12:00</span></p></td></tr><tr><td style=\"width:166.625px;\"><p style=\"margin-left:0px;text-align:center;\"><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);\">14:00-16:30</span></p></td></tr></tbody></table></figure>', 'https://femf.kktix.cc/events/20220924monuments', 'text', '2022-12-02', '2022-12-02 05:25:47', NULL);

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
  `created_at` date NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `news`
--

INSERT INTO `news` (`id`, `title`, `content`, `date`, `image`, `type`, `deleted_at`, `created_at`, `updated_at`) VALUES
(44, '遠東建築獎', '提昇社會建築意識，關懷本土，放眼全球。\r\n提昇社會建築意識，關懷本土，放眼全球。\r\n提昇社會建築意識，關懷本土，放眼全球。\r\n提昇社會建築意識，關懷本土，放眼全球。\r\n提昇社會建築意識，關懷本土，放眼全球。\r\n提昇社會建築意識，關懷本土，放眼全球。', '2022-11-09', 'vFLF0hhAd29kPbwSHvKqB09m9kOIOI6zyeLCstBY.jpg', 'build', NULL, '2022-12-02', '2022-12-02 05:14:46'),
(43, '兒童護眼彩繪活動', '展現台灣之人文風情與環境建築之美，也增加小學生及家長到戶外作畫以及欣賞景物的時間，使眼睛能放鬆以達護眼保健之成效。\r\n\r\n展現台灣之人文風情與環境建築之美，也增加小學生及家長到戶外作畫以及欣賞景物的時間，使眼睛能放鬆以達護眼保健之成效。', '2022-10-03', 'emhp6lIhhT2Vw5L25JI3lO2FddfiMihD7KxtHsdt.jpg', 'care', NULL, '2022-12-02', '2022-12-02 05:13:40'),
(42, '活動標題', '事業有成後徐有庠先生本著「取諸社會、用諸社會」精神，投身公益。1976年成立徐元智先生紀念基金會。徐元智先生紀念基金會創立40餘年來，曾歷經石油危機和地區性戰爭，但其捐助會務卻未曾受影響，各項工作成果也獲得各界讚賞。\r\n\r\n在眾多捐助案件中，對我國工商與科技發展影響最深遠的。 關懷面向多元，40年來，徐元智先生紀念基金會共核定資助計逾2,000項，獎助支出近新台幣40億元，均由基金孽息撥付，公益服務範疇廣含藝文公益活動、科技、政經、人文之國際學術研討、學校輔助及學術研究、獎助學金、兒童及成人社會教育、醫學教育研究、體育等項目。', '2022-08-31', 'x3QGMYY7iMwZTXa7zVb6qyCyexFNbH1D0xKWOKgL.jpg', 'green', NULL, '2022-12-02', '2022-12-02 05:12:17'),
(45, '護眼EYECARE', '徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。\r\n徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。\r\n徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。\r\n徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。\r\n徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。\r\n徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。', '2022-12-16', 'wTXROg6bQKXr8jyugkX5T50tn6DDARUBrNc2rDU4.jpg', 'green', NULL, '2022-12-02', '2022-12-02 05:15:12'),
(46, '亞泥生態園區', '徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。\r\n徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。\r\n徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。\r\n徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。\r\n徐元智先生紀念基金會希望透過對於文教將藝術種子散播於各個角落，打造一個真善美的社會。', '2022-12-15', 'TJqkAg58bZ5VXYUXrowdirK5jM2ozXydDEbQOp1g.jpg', 'care', NULL, '2022-12-02', '2022-12-02 05:15:42');

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
(1, 'root', '1234', NULL, '2022-11-17 14:37:46', '2022-11-17 14:37:46');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
