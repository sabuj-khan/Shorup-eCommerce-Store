-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2024 at 11:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shorup-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(50) NOT NULL,
  `brand_img` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_img`, `created_at`, `updated_at`) VALUES
(1, 'Apple ', 'https://photo.teamrabbil.com/images/2023/08/15/brands.jpeg', '2024-08-27 08:32:44', '2024-08-27 08:32:44'),
(2, 'Microsoft', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9GPwIj9oIR_jungBFlQ-JrEPqQ6OzqYD1EA&s', '2024-08-27 08:32:44', '2024-08-27 08:32:44'),
(3, 'Samsung', 'https://photo.teamrabbil.com/images/2023/08/15/brands.jpeg', '2024-08-27 08:32:44', '2024-08-27 08:32:44'),
(4, 'HP', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiQub1_Y-XBqcejVYqspzj7g9AR4BUqN6T2Q&s', '2024-08-27 08:32:44', '2024-08-27 08:32:44'),
(5, 'Dell', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw4XYScvpa04JSokQZce-mcj15TK5hbo7CsQ&s', '2024-08-27 08:32:44', '2024-08-27 08:32:44'),
(6, 'Dell', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw4XYScvpa04JSokQZce-mcj15TK5hbo7CsQ&s', '2024-08-27 08:32:44', '2024-08-27 08:32:44'),
(7, 'Samsung', 'https://photo.teamrabbil.com/images/2023/08/15/brands.jpeg', '2024-08-27 08:32:44', '2024-08-27 08:32:44'),
(8, 'Microsoft', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9GPwIj9oIR_jungBFlQ-JrEPqQ6OzqYD1EA&s', '2024-08-27 08:32:44', '2024-08-27 08:32:44'),
(9, 'HP', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiQub1_Y-XBqcejVYqspzj7g9AR4BUqN6T2Q&s', '2024-08-27 08:32:44', '2024-08-27 08:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_img` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_img`, `created_at`, `updated_at`) VALUES
(1, 'HeadPhone', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbOK52lwTq44oMeHlniRxZVarPBOC-jscGng&s', '2024-08-27 08:36:04', '2024-08-27 08:36:04'),
(2, 'Television', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7m46cT3Qk7CcxcOAbtbgU18PDizfLUh9ozA&s', '2024-08-27 08:36:04', '2024-08-27 08:36:04'),
(3, 'Mobile', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbKcOZTdaiWWNRavf5vUwjQlU3nHO1G2GubA&s', '2024-08-27 08:36:04', '2024-08-27 08:36:04'),
(4, 'Laptop', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX_X17SFaRG6BSz42hKHwz2NwWOHc2u5we3g&s', '2024-08-27 08:36:04', '2024-08-27 08:36:04'),
(5, 'Watch', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_Owjj-vvmBc7wEek2U3SaA3ZTbgFmxviTKA&s', '2024-08-27 08:36:04', '2024-08-27 08:36:04'),
(6, 'Camera', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8ltWFgNLCPJexcqSPEVG-1Lh277Q-cutNyA&s', '2024-08-27 08:36:04', '2024-08-27 08:36:04'),
(7, 'Game', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLG8406_0AIcvruhSd6V4XBtQNwyp_HdhUiA&s', '2024-08-27 08:36:04', '2024-08-27 08:36:04'),
(8, 'Drone', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgbg4wuntf1ZD8s9g4SguDQl9rY282MmlFAA&s', '2024-08-27 08:36:04', '2024-08-27 08:36:04'),
(9, 'Laptop', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX_X17SFaRG6BSz42hKHwz2NwWOHc2u5we3g&s', '2024-08-27 08:36:04', '2024-08-27 08:36:04'),
(10, 'Watch', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_Owjj-vvmBc7wEek2U3SaA3ZTbgFmxviTKA&s', '2024-08-27 08:36:04', '2024-08-27 08:36:04'),
(11, 'Mobile', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbKcOZTdaiWWNRavf5vUwjQlU3nHO1G2GubA&s', '2024-08-27 08:36:04', '2024-08-27 08:36:04'),
(12, 'HeadPhone', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbOK52lwTq44oMeHlniRxZVarPBOC-jscGng&s', '2024-08-27 08:36:04', '2024-08-27 08:36:04');

-- --------------------------------------------------------

--
-- Table structure for table `customer_profiles`
--

CREATE TABLE `customer_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cus_nam` varchar(100) NOT NULL,
  `cus_add` varchar(250) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_state` varchar(50) NOT NULL,
  `cus_postcode` varchar(50) NOT NULL,
  `cus_country` varchar(50) NOT NULL,
  `cus_phone` varchar(15) NOT NULL,
  `cus_fax` varchar(50) NOT NULL,
  `ship_name` varchar(100) NOT NULL,
  `ship_add` varchar(250) NOT NULL,
  `ship_city` varchar(50) NOT NULL,
  `ship_state` varchar(50) NOT NULL,
  `ship_postcode` varchar(50) NOT NULL,
  `ship_country` varchar(50) NOT NULL,
  `ship_phone` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_profiles`
--

INSERT INTO `customer_profiles` (`id`, `cus_nam`, `cus_add`, `cus_city`, `cus_state`, `cus_postcode`, `cus_country`, `cus_phone`, `cus_fax`, `ship_name`, `ship_add`, `ship_city`, `ship_state`, `ship_postcode`, `ship_country`, `ship_phone`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Mohammad Rupantor Khan', 'Airport Road, Tangail sadar, Tangail', 'Tangail', 'Dhaka', '1900', 'Bangladesh', '01322158321', '01322158321', 'Mohammad Rupantor Khan', 'Airport Road, Tangail sadar, Tangail', 'Tangail', 'Dhaka', '1900', 'Bangladesh', '01322158321', 2, '2024-08-26 14:24:34', '2024-08-26 14:29:35'),
(2, 'MD Sabuj Khan', 'Airport Road, Tangail sadar, Tangail', 'Tangail', 'Dhaka', '1900', 'Bangladesh', '01908241281', '01908241281', 'MD Sabuj Khan', 'Airport Road, Tangail sadar, Tangail', 'Tangail', 'Dhaka', '1900', 'Bangladesh', '01908241281', 1, '2024-08-26 14:32:57', '2024-09-03 12:04:15'),
(3, 'Mohammad Shobuj Khan', 'Village: Lalhara, Post: Lalhara, P.S: Delduar', 'Tangail', 'Dhaka', '1910', 'Bangladesh', '01908241281', '01908241281', 'MOhammad Shobuj Khan', 'Village: Lalhara, Post: Lalhara, P.S: Delduar', 'Tangail', 'Dhaka', '1910', 'Bangladesh', '01908241281', 4, '2024-09-04 05:53:48', '2024-09-04 05:53:48');

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

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` varchar(50) NOT NULL,
  `vat` varchar(50) NOT NULL,
  `payable` varchar(50) NOT NULL,
  `cus_details` varchar(500) NOT NULL,
  `ship_details` varchar(500) NOT NULL,
  `tran_id` varchar(100) NOT NULL,
  `val_id` varchar(100) NOT NULL DEFAULT '0',
  `delivery_status` enum('Pending','Processing','Completed') NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `total`, `vat`, `payable`, `cus_details`, `ship_details`, `tran_id`, `val_id`, `delivery_status`, `payment_status`, `user_id`, `created_at`, `updated_at`) VALUES
(7, '37600', '1880', '39480', 'Name:MD Sabuj Khan,Address:Airport Road, Tangail sadar, Tangail, City:Tangail,PostCode:1900,State:Dhaka,Country:Bangladesh,Phone:01908241281, Fax:01908241281', 'Name:MD Sabuj Khan, Address:Airport Road, Tangail sadar, Tangail, City:Tangail, PostCode:1900, State:Dhaka, Country:Bangladesh, Phone:01908241281', '66cfb0fc0a961', '0', 'Pending', 'Pending', 1, '2024-08-28 17:21:33', '2024-08-28 17:21:33'),
(8, '37600', '1880', '39480', 'Name:MD Sabuj Khan,Address:Airport Road, Tangail sadar, Tangail, City:Tangail,PostCode:1900,State:Dhaka,Country:Bangladesh,Phone:01908241281, Fax:01908241281', 'Name:MD Sabuj Khan, Address:Airport Road, Tangail sadar, Tangail, City:Tangail, PostCode:1900, State:Dhaka, Country:Bangladesh, Phone:01908241281', '66cfb51444dde', '0', 'Pending', 'Pending', 1, '2024-08-28 17:39:00', '2024-08-28 17:39:00'),
(9, '18800', '940', '19740', 'Name:Mohammad Rupantor Khan,Address:Airport Road, Tangail sadar, Tangail, City:Tangail,PostCode:1900,State:Dhaka,Country:Bangladesh,Phone:01322158321, Fax:01322158321', 'Name:Mohammad Rupantor Khan, Address:Airport Road, Tangail sadar, Tangail, City:Tangail, PostCode:1900, State:Dhaka, Country:Bangladesh, Phone:01322158321', '66cfb721c8ca0', '0', 'Pending', 'Pending', 2, '2024-08-28 17:47:45', '2024-08-28 17:47:45'),
(10, '18800', '940', '19740', 'Name:Mohammad Rupantor Khan,Address:Airport Road, Tangail sadar, Tangail, City:Tangail,PostCode:1900,State:Dhaka,Country:Bangladesh,Phone:01322158321, Fax:01322158321', 'Name:Mohammad Rupantor Khan, Address:Airport Road, Tangail sadar, Tangail, City:Tangail, PostCode:1900, State:Dhaka, Country:Bangladesh, Phone:01322158321', '66cfb7ab59a31', '0', 'Pending', 'Pending', 2, '2024-08-28 17:50:05', '2024-08-28 17:50:05'),
(11, '56400', '2820', '59220', 'Name:MD Sabuj Khan,Address:Airport Road, Tangail sadar, Tangail, City:Tangail,PostCode:1900,State:Dhaka,Country:Bangladesh,Phone:01908241281, Fax:01908241281', 'Name:MD Sabuj Khan, Address:Airport Road, Tangail sadar, Tangail, City:Tangail, PostCode:1900, State:Dhaka, Country:Bangladesh, Phone:01908241281', '66d737eb8a3a2', '0', 'Pending', 'Pending', 1, '2024-09-03 10:23:07', '2024-09-03 10:23:07'),
(12, '75200', '3760', '78960', 'Name:MD Sabuj Khan,Address:Airport Road, Tangail sadar, Tangail, City:Tangail,PostCode:1900,State:Dhaka,Country:Bangladesh,Phone:01908241281, Fax:01908241281', 'Name:MD Sabuj Khan, Address:Airport Road, Tangail sadar, Tangail, City:Tangail, PostCode:1900, State:Dhaka, Country:Bangladesh, Phone:01908241281', '66d8aa0c98577', '0', 'Pending', 'Pending', 1, '2024-09-04 12:42:20', '2024-09-04 12:42:20'),
(13, '75200', '3760', '78960', 'Name:MD Sabuj Khan,Address:Airport Road, Tangail sadar, Tangail, City:Tangail,PostCode:1900,State:Dhaka,Country:Bangladesh,Phone:01908241281, Fax:01908241281', 'Name:MD Sabuj Khan, Address:Airport Road, Tangail sadar, Tangail, City:Tangail, PostCode:1900, State:Dhaka, Country:Bangladesh, Phone:01908241281', '66d8aa1b1a886', '0', 'Pending', 'Pending', 1, '2024-09-04 12:42:35', '2024-09-04 12:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(10) NOT NULL,
  `sale_price` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`id`, `invoice_id`, `user_id`, `product_id`, `qty`, `sale_price`, `created_at`, `updated_at`) VALUES
(13, 7, 1, 3, '2', '18800', '2024-08-28 17:21:33', '2024-08-28 17:21:33'),
(14, 7, 1, 4, '2', '18800', '2024-08-28 17:21:33', '2024-08-28 17:21:33'),
(15, 8, 1, 3, '2', '18800', '2024-08-28 17:39:00', '2024-08-28 17:39:00'),
(16, 8, 1, 4, '2', '18800', '2024-08-28 17:39:00', '2024-08-28 17:39:00'),
(17, 9, 2, 5, '2', '18800', '2024-08-28 17:47:45', '2024-08-28 17:47:45'),
(18, 10, 2, 5, '2', '18800', '2024-08-28 17:50:05', '2024-08-28 17:50:05'),
(19, 11, 1, 3, '2', '18800', '2024-09-03 10:23:07', '2024-09-03 10:23:07'),
(20, 11, 1, 4, '2', '18800', '2024-09-03 10:23:07', '2024-09-03 10:23:07'),
(21, 11, 1, 2, '2', '18800', '2024-09-03 10:23:07', '2024-09-03 10:23:07'),
(22, 12, 1, 3, '4', '37600', '2024-09-04 12:42:20', '2024-09-04 12:42:20'),
(23, 12, 1, 4, '2', '18800', '2024-09-04 12:42:20', '2024-09-04 12:42:20'),
(24, 12, 1, 2, '2', '18800', '2024-09-04 12:42:20', '2024-09-04 12:42:20'),
(25, 13, 1, 3, '4', '37600', '2024-09-04 12:42:35', '2024-09-04 12:42:35'),
(26, 13, 1, 4, '2', '18800', '2024-09-04 12:42:35', '2024-09-04 12:42:35'),
(27, 13, 1, 2, '2', '18800', '2024-09-04 12:42:35', '2024-09-04 12:42:35');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2024_08_24_102110_create_users_table', 1),
(4, '2024_08_24_102332_create_sessions_table', 2),
(5, '2024_08_24_104511_create_customer_profiles_table', 3),
(6, '2024_08_24_105138_create_brands_table', 4),
(7, '2024_08_24_105523_create_categories_table', 4),
(8, '2024_08_24_110005_create_products_table', 5),
(9, '2024_08_24_111423_create_product_sliders_table', 6),
(10, '2024_08_24_112014_create_product_details_table', 7),
(11, '2024_08_24_112758_create_product_reviews_table', 8),
(12, '2024_08_24_113705_create_product_wishes_table', 9),
(13, '2024_08_24_114039_create_product_carts_table', 9),
(14, '2024_08_24_114601_create_policies_table', 10),
(15, '2024_08_24_114858_create_invoices_table', 10),
(16, '2024_08_24_115620_create_invoice_products_table', 11),
(17, '2024_08_24_120221_create_sslcommerz_accounts_table', 12),
(18, '2024_08_27_083532_create_personal_access_tokens_table', 13),
(19, '2024_08_28_185505_add_columns_to_invoice_products_table', 14);

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
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('about','refund','terms','how to by','contact','complain') NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'about', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2024-08-28 08:04:36', '2024-08-28 08:04:36'),
(2, 'refund', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2024-08-28 08:04:36', '2024-08-28 08:04:36'),
(3, 'terms', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2024-08-28 08:05:11', '2024-08-28 08:05:11'),
(4, 'how to by', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2024-08-28 08:05:11', '2024-08-28 08:05:11'),
(5, 'contact', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2024-08-28 08:05:48', '2024-08-28 08:05:48'),
(6, 'complain', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2024-08-28 08:05:48', '2024-08-28 08:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `short_des` varchar(500) NOT NULL,
  `price` varchar(50) NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `discount_price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `stock` tinyint(1) NOT NULL,
  `star` double NOT NULL,
  `remark` enum('popular','new','top','special','trending','regular') NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `short_des`, `price`, `discount`, `discount_price`, `image`, `stock`, `star`, `remark`, `brand_id`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'MacBook New', 'MacBook Air M1 8/256GB 13-inch Space Gray', '9400', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 50, 'new', 1, 1, '2024-08-27 09:01:13', '2024-08-27 09:01:13'),
(3, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '9400', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.5, 'new', 1, 1, '2024-08-27 09:01:13', '2024-08-27 09:01:13'),
(4, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '9400', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.5, 'regular', 1, 1, '2024-08-27 09:01:13', '2024-08-27 09:01:13'),
(5, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '9400', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.5, 'regular', 2, 2, '2024-08-27 09:01:13', '2024-08-27 09:01:13'),
(6, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '9400', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.5, 'top', 1, 2, '2024-08-27 09:01:13', '2024-08-27 09:01:13'),
(7, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '9400', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.5, 'popular', 3, 2, '2024-08-27 09:01:13', '2024-08-27 09:01:13'),
(8, 'MacBook Air M1 8/256GB 13-inch Space Gray', 'MacBook Air M1 8/256GB 13-inch Space Gray', '9400', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.5, 'trending', 1, 2, '2024-08-27 09:01:13', '2024-08-27 09:01:13'),
(9, 'MacBook Air M1 8/256GB 13-inch Space Gray 2', 'MacBook Air M1 8/256GB 13-inch Space Gray', '9400', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.5, 'popular', 1, 2, '2024-08-27 09:01:13', '2024-08-27 09:01:13'),
(10, 'MacBook Air M1 8/256GB 13-inch Space Gray 2', 'MacBook Air M1 8/256GB 13-inch Space Gray', '9400', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.5, 'special', 1, 2, '2024-08-27 09:01:13', '2024-08-27 09:01:13'),
(11, 'MacBook Air M1 8/256GB 13-inch Space Gray 2', 'MacBook Air M1 8/256GB 13-inch Space Gray', '9400', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.5, 'special', 1, 2, '2024-08-27 09:01:13', '2024-08-27 09:01:13'),
(12, 'MacBook Air M1 8/256GB 13-inch Space Gray 2', 'MacBook Air M1 8/256GB 13-inch Space Gray', '9400', 0, '0', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.jpeg', 1, 4.5, 'special', 1, 3, '2024-08-27 09:01:13', '2024-08-27 09:01:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `user_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Red', '3X', '4', '37600', '2024-08-28 04:45:43', '2024-09-04 11:53:48'),
(2, 1, 4, 'red', 'xl', '2', '18800', '2024-08-28 04:48:02', '2024-08-28 04:48:02'),
(4, 2, 5, 'red', 'xl', '2', '18800', '2024-08-28 17:45:32', '2024-08-28 17:45:32'),
(6, 1, 2, 'White', '3X', '2', '18800', '2024-08-31 01:41:38', '2024-08-31 01:41:38'),
(7, 4, 2, 'Red', '3X', '18', '169200', '2024-08-31 01:44:49', '2024-08-31 01:54:41'),
(8, 4, 3, 'Green', '3X', '4', '37600', '2024-08-31 15:53:27', '2024-08-31 15:53:27'),
(9, 4, 4, 'White', 'X', '2', '18800', '2024-08-31 15:57:19', '2024-08-31 15:57:19'),
(10, 4, 6, 'Green', '2X', '2', '18800', '2024-08-31 16:24:08', '2024-08-31 16:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image1` varchar(200) NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(200) NOT NULL,
  `image4` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `color` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `image1`, `image2`, `image3`, `image4`, `description`, `color`, `size`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX_X17SFaRG6BSz42hKHwz2NwWOHc2u5we3g&s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 2, '2024-08-27 12:17:52', '2024-08-27 12:17:52'),
(4, 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 3, '2024-08-27 12:17:52', '2024-08-27 12:17:52'),
(5, 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 4, '2024-08-27 12:17:52', '2024-08-27 12:17:52'),
(6, 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 6, '2024-08-27 12:17:52', '2024-08-27 12:17:52'),
(7, 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 5, '2024-08-27 12:17:52', '2024-08-27 12:17:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `rating` varchar(10) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `description`, `rating`, `product_id`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator', '4', 2, 2, '2024-08-28 06:31:09', '2024-08-28 06:31:09'),
(2, 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator', '5', 3, 1, '2024-08-28 06:31:09', '2024-08-28 06:31:09'),
(3, 'eference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator', '9', 3, 2, '2024-08-28 01:54:11', '2024-08-28 01:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `product_sliders`
--

CREATE TABLE `product_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_des` varchar(500) NOT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(200) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sliders`
--

INSERT INTO `product_sliders` (`id`, `title`, `short_des`, `price`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'MacBook Air M1 New Addition', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '$900USD', 'https://img.freepik.com/premium-photo/sleek-flatlay-with-laptop_925613-33575.jpg?ga=GA1.1.1437437461.1724964733&semt=ais_hybrid', 2, '2024-08-27 19:29:01', '2024-08-27 19:29:01'),
(2, 'MacBook Air M1 New Addition', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '$900USD', 'https://img.freepik.com/free-photo/top-view-menstruation-cup_23-2148889886.jpg?ga=GA1.1.1437437461.1724964733&semt=ais_hybrid', 3, '2024-08-27 19:29:01', '2024-08-27 19:29:01'),
(3, 'MacBook Air M1 New Addition', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '$900USD', 'https://img.freepik.com/free-photo/laptop-with-smartphone-plant-table_23-2148037053.jpg?ga=GA1.1.1437437461.1724964733&semt=ais_hybrid', 4, '2024-08-27 19:29:01', '2024-08-27 19:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `product_wishes`
--

CREATE TABLE `product_wishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_wishes`
--

INSERT INTO `product_wishes` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-08-28 06:15:16', '2024-08-28 06:15:16'),
(2, 1, 3, '2024-08-28 06:15:55', '2024-08-28 06:15:55'),
(4, 1, 4, '2024-08-31 01:23:45', '2024-08-31 01:23:45'),
(5, 1, 5, '2024-08-31 01:25:47', '2024-08-31 01:25:47'),
(8, 4, 4, '2024-08-31 03:53:11', '2024-08-31 03:53:11');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('inTQ4IcNFGeDGIXxm3B0Ma64jPkAbqyeIMDohZzo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2ZoMFcxNkhOSVJCaFY5d25IQXgxcWJ4eFBwY3dmM2VYY0MyUFNISiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9icmFuZC1saXN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1725615670);

-- --------------------------------------------------------

--
-- Table structure for table `sslcommerz_accounts`
--

CREATE TABLE `sslcommerz_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` varchar(255) NOT NULL,
  `store_password` varchar(255) NOT NULL,
  `store_currency` varchar(255) NOT NULL,
  `success_url` varchar(255) NOT NULL,
  `fail_url` varchar(255) NOT NULL,
  `cancel_url` varchar(255) NOT NULL,
  `ipn_url` varchar(255) NOT NULL,
  `unit_url` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sslcommerz_accounts`
--

INSERT INTO `sslcommerz_accounts` (`id`, `store_id`, `store_password`, `store_currency`, `success_url`, `fail_url`, `cancel_url`, `ipn_url`, `unit_url`, `created_at`, `updated_at`) VALUES
(1, 'teamr64c9e84055219', 'teamr64c9e84055219@ssl', 'BDT', 'http://127.0.0.1:8000/PaymentSuccess', 'http://127.0.0.1:8000/PaymentFail', 'http://127.0.0.1:8000/PaymentCancel', 'http://127.0.0.1:8000/api/PaymentIPN', 'https://sandbox.sslcommerz.com/gwprocess/v4/api.php', '2024-08-28 23:08:20', '2024-08-28 23:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'sabuj@khan.com', '1', '2024-08-26 09:41:23', '2024-09-06 03:40:58'),
(2, 'rupantor@khan.com', '1', '2024-08-26 14:13:51', '2024-08-31 16:11:58'),
(3, 'ru', '485965', '2024-08-31 00:53:55', '2024-08-31 00:53:55'),
(4, 'shobuj@khan.com', '1', '2024-08-31 01:43:58', '2024-09-04 05:50:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_products_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_products_user_id_foreign` (`user_id`),
  ADD KEY `invoice_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_carts_user_id_foreign` (`user_id`),
  ADD KEY `product_carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_details_product_id_unique` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`),
  ADD KEY `product_reviews_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_sliders_product_id_unique` (`product_id`);

--
-- Indexes for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_wishes_user_id_foreign` (`user_id`),
  ADD KEY `product_wishes_product_id_foreign` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sslcommerz_accounts`
--
ALTER TABLE `sslcommerz_accounts`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_sliders`
--
ALTER TABLE `product_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_wishes`
--
ALTER TABLE `product_wishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sslcommerz_accounts`
--
ALTER TABLE `sslcommerz_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  ADD CONSTRAINT `customer_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD CONSTRAINT `invoice_products_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD CONSTRAINT `product_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_profiles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD CONSTRAINT `product_sliders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD CONSTRAINT `product_wishes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_wishes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
