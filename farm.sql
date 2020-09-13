-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2020 at 12:18 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Fruits', '2020-09-09 10:36:04', '2020-09-10 00:56:20'),
(2, 'Vegetable', '2020-09-09 10:36:08', '2020-09-09 10:36:08');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'nduc@gmail.com', '$2y$10$64wp8ntga4GKyu6RFq79U.nA/QsjHRoQextouVSj6Nln3ARLuwuzC', '2020-09-11 02:44:43', '2020-09-11 02:44:43'),
(2, 'nguyendinhduc1403@gmail.com', '$2y$10$EznJFOq5GP08rvwpujG3buq9D6gCJ3rMPnM9Ty53sE2XvZnodfwxy', '2020-09-11 23:52:44', '2020-09-11 23:52:44'),
(3, 'nguyendinhducbg2904@gmail.com', '$2y$10$JrO4rH.XqF8gGkOYDM/GQOzUOWha4mHDf/flHcXo26bP5/VytHe2m', '2020-09-12 02:39:08', '2020-09-12 02:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2020_09_08_071835_create_categories_table', 1),
(10, '2014_10_12_000000_create_users_table', 2),
(11, '2014_10_12_100000_create_password_resets_table', 2),
(12, '2019_08_19_000000_create_failed_jobs_table', 2),
(13, '2020_09_08_081129_create_categories_table', 2),
(14, '2020_09_08_145504_create_products_table', 2),
(15, '2020_09_09_180213_create_sliders_table', 3),
(16, '2020_09_11_090443_create_orders_table', 4),
(17, '2020_09_11_091843_create_clients_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `address`, `cart`, `payment_id`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:5;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:1000000;}', 'ch_1HQUF0KbbimwNOBlYvzukpUt', '2020-09-12 01:37:51', '2020-09-12 01:37:51'),
(2, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:4;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"4\";s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:5;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:1020000;}', 'ch_1HQULkKbbimwNOBlh8zckMKM', '2020-09-12 01:44:49', '2020-09-12 01:44:49'),
(3, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:5;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:1000000;}', 'ch_1HQVDaKbbimwNOBl1tnYcgnS', '2020-09-12 02:40:27', '2020-09-12 02:40:27'),
(4, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:5;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:1000000;}', 'ch_1HQVEEKbbimwNOBlLvDFHngo', '2020-09-12 02:41:07', '2020-09-12 02:41:07'),
(5, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:5;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:1000000;}', 'ch_1HQVFSKbbimwNOBl4tU9MhCW', '2020-09-12 02:42:23', '2020-09-12 02:42:23'),
(6, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:5;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:4;a:6:{s:3:\"qty\";i:2;s:10:\"product_id\";s:1:\"4\";s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:1040000;}', 'ch_1HQVI9KbbimwNOBl8LSQKNKA', '2020-09-12 02:45:11', '2020-09-12 02:45:11'),
(7, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:5;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:4;a:6:{s:3:\"qty\";i:2;s:10:\"product_id\";s:1:\"4\";s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:1040000;}', 'ch_1HQVM0KbbimwNOBlgfgMGGx3', '2020-09-12 02:49:09', '2020-09-12 02:49:09'),
(8, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:5;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:4;a:6:{s:3:\"qty\";i:2;s:10:\"product_id\";s:1:\"4\";s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:1040000;}', 'ch_1HQVMtKbbimwNOBlflytB5py', '2020-09-12 02:50:04', '2020-09-12 02:50:04'),
(9, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:4;a:6:{s:3:\"qty\";s:1:\"1\";s:10:\"product_id\";s:1:\"4\";s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:20000;}', 'ch_1HQm2fKbbimwNOBlD2EhPhM8', '2020-09-12 20:38:20', '2020-09-12 20:38:20'),
(10, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:5;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:1000000;}', 'ch_1HQmG7KbbimwNOBlZbKOitcA', '2020-09-12 20:52:13', '2020-09-12 20:52:13'),
(11, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:5;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:1;s:10:\"totalPrice\";i:1000000;}', 'ch_1HQmNdKbbimwNOBl7y2Qc94i', '2020-09-12 21:00:00', '2020-09-12 21:00:00'),
(12, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:4;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"4\";s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:5;a:6:{s:3:\"qty\";i:2;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:3;s:10:\"totalPrice\";i:2020000;}', 'ch_1HQmSrKbbimwNOBlkIzjGHxr', '2020-09-12 21:05:23', '2020-09-12 21:05:23'),
(13, 'Nguyen Dinh Duc', 'Ha noi - Viet Nam', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:4;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"4\";s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:4;s:12:\"product_name\";s:6:\"Tomato\";s:13:\"product_price\";i:20000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:25:\"product-12_1599673968.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:52:48\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:03\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}i:5;a:6:{s:3:\"qty\";i:1;s:10:\"product_id\";s:1:\"5\";s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:5;s:12:\"product_name\";s:6:\"Banana\";s:13:\"product_price\";i:1000000;s:16:\"product_category\";s:6:\"Fruits\";s:13:\"product_image\";s:24:\"product-9_1599674070.jpg\";s:6:\"status\";i:0;s:10:\"created_at\";s:19:\"2020-09-09 17:54:30\";s:10:\"updated_at\";s:19:\"2020-09-09 17:59:05\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}}s:8:\"totalQty\";i:2;s:10:\"totalPrice\";i:1020000;}', 'ch_1HQmZIKbbimwNOBl7RJHGaAR', '2020-09-12 21:12:02', '2020-09-12 21:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_category`, `product_image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Bell pepper', 3000, 'Vegetable', 'product-1_1599977998.jpg', 1, '2020-09-12 23:19:58', '2020-09-13 03:13:32'),
(7, 'Strawberry', 20000, 'Fruits', 'product-2_1599978040.jpg', 1, '2020-09-12 23:20:41', '2020-09-13 03:11:34'),
(8, 'bean', 1001, 'Vegetable', 'product-3_1599978077.jpg', 1, '2020-09-12 23:21:17', '2020-09-13 03:11:39'),
(9, 'purple cabbage', 3000, 'Vegetable', 'product-4_1599978122.jpg', 1, '2020-09-12 23:22:02', '2020-09-13 03:11:43'),
(10, 'Tomato', 3000, 'Vegetable', 'product-5_1599978160.jpg', 1, '2020-09-12 23:22:40', '2020-09-13 03:12:02'),
(11, 'cauliflower', 25000, 'Vegetable', 'product-6_1599978239.jpg', 1, '2020-09-12 23:23:59', '2020-09-13 03:11:58'),
(12, 'carrot', 3000, 'Vegetable', 'product-7_1599978267.jpg', 1, '2020-09-12 23:24:27', '2020-09-12 23:24:27'),
(13, 'purple onions', 3000, 'Vegetable', 'product-9_1599978311.jpg', 1, '2020-09-12 23:25:11', '2020-09-12 23:25:11'),
(14, 'Apple', 20000, 'Fruits', 'product-10_1599978331.jpg', 1, '2020-09-12 23:25:31', '2020-09-12 23:25:31'),
(15, 'Garlic', 1001, 'Vegetable', 'product-11_1599978355.jpg', 1, '2020-09-12 23:25:55', '2020-09-12 23:25:55'),
(16, 'Chili', 1001, 'Vegetable', 'product-12_1599978378.jpg', 1, '2020-09-12 23:26:18', '2020-09-12 23:26:18');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `description1`, `description2`, `slider_image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Fresh fruit', 'we always provide quality fruit', 'about_1599978953.jpg', 1, '2020-09-12 23:35:53', '2020-09-13 00:07:54'),
(7, 'Fresh vegetable', 'we always supply quality vegetable', 'bg_1_1599979016.jpg', 1, '2020-09-12 23:36:56', '2020-09-12 23:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Dinh Duc', 'nguyendinhducbg2904@gmail.com', NULL, '$2y$10$W9.8bZuQmY5nLCyDhVNDN.PULHMciBsNGBt7IeuJT/91l4D1b6XjS', NULL, '2020-09-12 21:48:52', '2020-09-12 21:48:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
