-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2024 at 06:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aprilstudio_bismillah`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_02_023058_create_products_table', 1),
(6, '2023_11_02_023309_create_carts_table', 1),
(7, '2023_11_02_023323_create_orders_table', 1),
(8, '2023_11_02_023348_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `payment_receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `is_paid`, `payment_receipt`, `user_id`, `created_at`, `updated_at`) VALUES
(16, 1, '1702106693-16.jpeg', 13, '2023-12-09 00:24:43', '2023-12-09 00:36:20'),
(17, 1, '1702106743-17.jpeg', 13, '2023-12-09 00:25:32', '2023-12-09 00:36:20'),
(18, 0, NULL, 13, '2023-12-09 00:29:05', '2023-12-09 00:29:05'),
(20, 1, '1709541471-20.png', 15, '2024-03-04 01:37:37', '2024-03-04 01:38:47'),
(21, 1, '1715041389-21.png', 17, '2024-05-06 17:22:32', '2024-05-06 17:32:31');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('apriliatso26@gmail.com', '$2y$10$Wqp1f908k0LOpqYffqwSH.McyMfziKjWf43OgfIw2487d27/qa7yu', '2023-12-09 02:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` enum('ui/ux','feeds') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ui/ux',
  `image_product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name_product`, `price`, `description`, `link`, `creator`, `kategori`, `image_product`, `created_at`, `updated_at`) VALUES
(18, 'Teknologi Bisnis', 45000, 'Ciptakan bisnis dengan solusi revolusioner untuk dunia digital', 'https://shorturl.at/iDESX', 'Rensi Meila', 'feeds', '1702103523_Teknologi Bisnis.png', '2023-12-08 21:58:17', '2023-12-08 23:32:03'),
(20, 'Kenali & tips kerja', 45000, 'Wujudkan kesuksesan dengan berpegang pada prinsip integritas', 'https://shorturl.at/tASTZ', 'Rensi Meila', 'feeds', '1702099426_Kenali & tips kerja.png', '2023-12-08 22:23:46', '2023-12-08 22:23:46'),
(21, 'Keilmuan & games', 50000, 'Menelusuri keilmuan dengan semangat menjadi petualangan', 'https://shorturl.at/djlvR', 'Rensi Meila', 'feeds', '1702099691_Keilmuan & games.png', '2023-12-08 22:28:11', '2023-12-08 22:28:11'),
(22, 'Warisan & budaya', 50000, 'Membentuk jembatan untuk identitas masa depan bangsa', 'https://shorturl.at/AGHPU', 'Rensi Meila', 'feeds', '1702101242_Warisan & budaya.png', '2023-12-08 22:54:03', '2023-12-08 22:54:03'),
(23, 'Warisan dunia', 55000, 'Petualangan tak terhingga membuka jendela misteri alam semesta', 'https://shorturl.at/oAR38', 'Rensi Meila', 'feeds', '1702101781_Warisan dunia.png', '2023-12-08 22:57:52', '2023-12-08 23:03:01'),
(24, 'Smartphone', 55000, 'Membawa dunia di genggamanmu dengan teknologi canggih', 'https://shorturl.at/bopv4', 'Rensi Meila', 'feeds', '1702101871_Smartphone.png', '2023-12-08 23:04:31', '2023-12-08 23:04:31'),
(25, 'EXVECTO', 70000, 'E-commerce yang memadukan gaya untuk melampaui batasan fashion', 'https://shorturl.at/dsxFX', 'Aprilia Comel', 'ui/ux', '1702102059_EXVECTO.png', '2023-12-08 23:07:39', '2023-12-08 23:07:39'),
(26, 'Out Textile', 70000, 'Mengukir jejak industri tekstil, mewujudkan kualitas membanggakan', 'https://shorturl.at/qvCD8', 'Aprilia Comel', 'ui/ux', '1702102243_Out Textile.png', '2023-12-08 23:10:43', '2023-12-08 23:10:43'),
(27, 'Controll view', 80000, 'Gabungkan elemen-elemen desain dalam antarmuka komprehensif', 'https://rb.gy/z5caw8', 'Aprilia Comel', 'ui/ux', '1702102497_Controll view.png', '2023-12-08 23:14:57', '2023-12-08 23:14:57'),
(28, 'Targetvoter.ai', 80000, 'Penuhi targetmu dengan optimalisasi potensi pemilihan anda', 'https://rb.gy/gl98ya', 'Aprilia Comel', 'ui/ux', '1702102697_Targetvoter.ai.png', '2023-12-08 23:18:17', '2023-12-08 23:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(20, 16, 22, '2023-12-09 00:24:43', '2023-12-09 00:24:43'),
(21, 16, 26, '2023-12-09 00:24:43', '2023-12-09 00:24:43'),
(22, 16, 24, '2023-12-09 00:24:43', '2023-12-09 00:24:43'),
(23, 17, 23, '2023-12-09 00:25:32', '2023-12-09 00:25:32'),
(24, 17, 22, '2023-12-09 00:25:32', '2023-12-09 00:25:32'),
(25, 18, 18, '2023-12-09 00:29:05', '2023-12-09 00:29:05'),
(26, 18, 20, '2023-12-09 00:29:05', '2023-12-09 00:29:05'),
(30, 20, 18, '2024-03-04 01:37:37', '2024-03-04 01:37:37'),
(31, 20, 21, '2024-03-04 01:37:37', '2024-03-04 01:37:37'),
(32, 21, 18, '2024-05-06 17:22:32', '2024-05-06 17:22:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `telp`, `email_verified_at`, `password`, `remember_token`, `is_admin`, `created_at`, `updated_at`) VALUES
(3, 'Admin Ika', 'info.fixit.id@gmail.com', '081336730560', NULL, '$2y$10$0yHERH7BQyNadZusEfFiAugD5UFR2KhCREXm2L6ibzIgMd0Ev7g0C', 'XAKaVg6o3kn5srIPi4TePFyZ1S1qGVl9Bb2zxZcq41mcbSvVCXEpb6YBZKJb', 1, '2023-11-25 20:43:13', '2023-12-09 01:31:48'),
(13, 'dilla fauzia', 'dila@gmail.com', '081776543231', NULL, '$2y$10$9G2fJXYn6aeZDM9Gupvde.RbE6pIIaIi.7u3Scq1FPAU2T2CHKGZW', NULL, 0, '2023-12-09 00:24:05', '2023-12-09 00:29:32'),
(15, 'Andruw', 'im.andrflaa26@gmail.com', '089671382734', NULL, '$2y$10$4Kj6zBQvQBYYJxF4Zzl4SOruzh7f.4XGjl4GdGsE9uKqX8Tr/gIVK', NULL, 0, '2024-03-04 01:37:02', '2024-03-04 01:37:02'),
(16, 'tiwi', 'fadhilahmargi@gmail.com', '081259622941', NULL, '$2y$10$LrAhiFGEqlS7f2Qy4s12K..S1Ay5Gm1AlPeApS1s2p2YX/RPylBvW', NULL, 0, '2024-05-06 08:01:27', '2024-05-06 08:01:27'),
(17, 'aprilia', 'apriliatso26@gmail.com', '081336730560', NULL, '$2y$10$8nQVEiOhTlSPdt39ETluPOjTsExiauSUa8bZbgURERwGj2W5wf4jK', '4akdnoq5n6tPksra0XQvanStkh0cVoUVsl1hXxvPIdCC4IgN568EbCmNrhNr', 0, '2024-05-06 17:20:56', '2024-05-06 17:20:56'),
(18, 'aprilia admin', 'tsoaprilia@gmail.com', '081336730560', NULL, '12345678', NULL, 1, NULL, NULL),
(19, 'admin11', 'admin1@gmail.com', '888', '2024-05-07 00:26:53', '12345667', '1', 1, '2024-05-07 00:26:53', '2024-05-07 00:26:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`),
  ADD KEY `transactions_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
