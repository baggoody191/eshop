-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2022 at 12:37 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `session_id`, `user_id`, `product_id`, `product_name`, `product_price`, `image`, `quantity`, `created_at`, `updated_at`) VALUES
(38, '45EU4psLfHUvdZosGYXxjXouZwXnDdLFukNsOTiJ', 1, 9, 'phone 2', '3500', 'http://127.0.0.1:8000/images/Infinix-Zero-X.gif', 4, '2022-04-07 07:58:04', '2022-04-14 11:22:32'),
(39, 'L4PWBScmqGSRJ8LmK6k7mEPeyffJ3WOPl4MpEG4J', 1, 7, 'car', '2450', 'http://127.0.0.1:8000/images/car.jpg', 2, '2022-04-08 13:02:57', '2022-04-11 13:05:59');

-- --------------------------------------------------------

--
-- Table structure for table `checkouts`
--

CREATE TABLE `checkouts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `town` varchar(500) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkouts`
--

INSERT INTO `checkouts` (`id`, `name`, `email`, `country`, `state`, `town`, `street`, `apartment`, `zipcode`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin@gmail.com', 'Nigeria', 'Abia', 'umuahia', 'olokoro umuobia', '12 tdtzon road', 440102, '2022-04-08 12:55:59', '2022-04-08 12:55:59'),
(5, 'admin', 'admin@gmail.com', 'Nigeria', 'Abia', 'umuahia', 'olokoro umuobia', '12 tdtzon road', 440102, '2022-04-08 13:01:02', '2022-04-08 13:01:02'),
(6, 'Emmanuel uzor', 'emma@admin.com', 'Nigeria', 'Abia', 'umuahia', 'olokoro umuobia', '12 tdtzon road', 440102, '2022-04-08 13:12:51', '2022-04-08 13:12:51'),
(7, 'Emmanuel uzor', 'emma@admin.com', 'Nigeria', 'Abia', 'umuahia', 'olokoro umuobia', '12 tdtzon road', 440102, '2022-04-08 13:30:47', '2022-04-08 13:30:47'),
(8, 'admin', 'admin@gmail.com', 'Nigeria', 'Abia', 'umuahia', 'olokoro umuobia', '12 tdtzon road', 440102, '2022-04-11 13:06:55', '2022-04-11 13:06:55'),
(9, 'admin', 'admin@gmail.com', 'Nigeria', 'Abia', 'umuahia', 'olokoro umuobia', '12 tdtzon road', 440102, '2022-04-11 13:40:25', '2022-04-11 13:40:25'),
(10, 'admin', 'admin@gmail.com', 'Nigeria', 'Abia', 'umuahia', 'olokoro umuobia', 'wwdwdwdppppp', 440102, '2022-04-11 13:41:57', '2022-04-11 13:41:57'),
(11, 'admin', 'admin@gmail.com', 'Nigeria', 'Abia', 'umuahia', 'olokoro umuobia', '12 tdtzon road', 440102, '2022-04-11 14:44:42', '2022-04-11 14:44:42'),
(12, 'admin', 'admin@gmail.com', 'Nigeria', 'Abia', 'umuahia', 'olokoro umuobia', '12 tdtzon road', 440102, '2022-04-14 11:15:27', '2022-04-14 11:15:27'),
(13, 'admin', 'admin@gmail.com', 'Nigeria', 'Abia', 'umuahia', 'olokoro umuobia', '12 tdtzon road', 440102, '2022-04-14 11:22:38', '2022-04-14 11:22:38');

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
(5, '2022_03_01_101533_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `name`, `price`, `image`, `quantity`, `created_at`, `updated_at`) VALUES
(3, 8, 'phone 2', '3500', 'http://127.0.0.1:8000/images/Infinix-Zero-X.gif', 4, '2022-04-14 11:22:53', '2022-04-14 11:22:53'),
(4, 8, 'car', '2450', 'http://127.0.0.1:8000/images/car.jpg', 2, '2022-04-14 11:22:53', '2022-04-14 11:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `email`, `amount`, `status`, `reference`, `created_at`, `updated_at`) VALUES
(8, 'admin@gmail.com', '1890000', 'success', 'po6f7klhl6', '2022-04-14 11:22:53', '2022-04-14 11:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `details`, `image`, `created_at`, `updated_at`) VALUES
(4, 'shirt', '400', 'This shirt is blue', 'images.jpg', '2022-03-12 11:22:52', '2022-03-12 11:22:52'),
(7, 'car', '2450', 'new car', 'car.jpg', '2022-03-12 19:30:29', '2022-03-12 19:30:29'),
(9, 'phone 2', '3500', 'this is a nice phone', 'Infinix-Zero-X.gif', '2022-03-22 08:16:08', '2022-03-22 08:16:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 2,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `phone`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', 1, NULL, NULL, NULL, '$2y$10$C/fMvdTttA2rTZUBJmCkA.pGrbcHkgIcDTXYLaqx8rSTN9q7tdns6', NULL, '2022-03-01 09:58:27', '2022-03-01 09:58:27'),
(2, 'new user', 'new@gmail.com', 2, NULL, NULL, NULL, '$2y$10$eUIR3mbMr.j6Bz2RXnkRVeyemihlNWuP412DgvsXEC5u1UqisBLVC', NULL, '2022-03-01 12:12:22', '2022-03-01 12:12:22'),
(3, 'new user', 'newuser@gmail.com', 2, NULL, NULL, NULL, '$2y$10$D7iwGNxMmCCmE19nlYtQLO7XyTptA5BrcOJjnPU.fDD4sXA/UDksi', NULL, '2022-03-07 07:13:39', '2022-03-07 07:13:39'),
(4, 'Emmanuel uzor', 'emma@admin.com', 2, NULL, NULL, NULL, '$2y$10$QU1N3/mk075kM8YEwEShPOX0YFx0IvPxTwzLHSJ.uYkZXLDgU8GNC', NULL, '2022-04-08 13:02:38', '2022-04-08 13:02:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkouts`
--
ALTER TABLE `checkouts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `checkouts`
--
ALTER TABLE `checkouts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
