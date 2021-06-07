-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2021 at 08:31 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_db`
--

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
(4, '2021_06_06_163501_create_products_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('00872743f0080fa19ddcdf148052458078e94a4124c77c0a24e40961e4943b65ae47201d8736d847', 1, 1, NULL, '[]', 0, '2021-06-07 00:31:47', '2021-06-07 00:31:47', '2022-06-07 06:31:47'),
('173133c6d57aaefb3c0134c7f3fff9a8b8754af66a86248514d62f139d74b51e2a598004ba41c43b', 1, 1, NULL, '[]', 0, '2021-06-07 00:41:51', '2021-06-07 00:41:51', '2022-06-07 06:41:51'),
('22e0763d639d8024a16f5fb9468e7f6b16e1a9cefbd52e528bd109e485aaa0baeadb3e680a6268c5', 1, 1, NULL, '[]', 0, '2021-06-07 00:41:53', '2021-06-07 00:41:53', '2022-06-07 06:41:53'),
('2b0566e43ba11dad728a4014c481a32fe41153ad304eb6c1be5a33f0558a3af1b59703a14578bce1', 1, 1, NULL, '[]', 0, '2021-06-07 00:42:14', '2021-06-07 00:42:14', '2022-06-07 06:42:14'),
('59aceefcc73129eb1a578dd962803a2cc1e873965a6a633db4a10bdb83a4f0a40378271e10ef81be', 1, 1, NULL, '[]', 0, '2021-06-07 00:27:15', '2021-06-07 00:27:15', '2022-06-07 06:27:15'),
('6605e1f3f83d207311625b49a4f9d22a19f4e47f83c7d80340ebf35d282589fa26e85290e797fc5a', 1, 1, NULL, '[]', 0, '2021-06-07 00:42:47', '2021-06-07 00:42:47', '2022-06-07 06:42:47'),
('798bb68c717cd90d0c9620e13939f5625d3bf46f7ed07ec875983fd7f9e8343c40c8bb80e6a80de8', 1, 1, NULL, '[]', 0, '2021-06-07 00:27:28', '2021-06-07 00:27:28', '2022-06-07 06:27:28'),
('808bec66f3be331ed9f4c0e83f6b67c0912c6530fb9c4d311e517f2666f5c801ac588132d00d862e', 1, 1, NULL, '[]', 0, '2021-06-07 00:40:38', '2021-06-07 00:40:38', '2022-06-07 06:40:38'),
('82710dece1930c465056f47d021ad4c248f2acf208a770876972d5547a85e9ea900b650fbb3c3037', 1, 1, NULL, '[]', 0, '2021-06-07 00:37:31', '2021-06-07 00:37:31', '2022-06-07 06:37:31'),
('a84ea3f40ca39a8a4dd48e53615431d59854fa73d5b96d6d4f498b3d0de25f80cb712cb4fa4b85b2', 1, 1, NULL, '[]', 0, '2021-06-07 12:18:25', '2021-06-07 12:18:25', '2022-06-07 18:18:25'),
('a979fa448119eec696c30e28202c4d612da3fb3cd85dce1fbf695eff03764e49eea1e9dc8f3b6bb6', 1, 1, NULL, '[]', 0, '2021-06-07 00:30:10', '2021-06-07 00:30:10', '2022-06-07 06:30:10'),
('c57c1c4d463f8d85fa71c0ef539b489d77a6cd52dfadf67c5be1f5d87e09cf912ff0cfe984170d3d', 1, 1, NULL, '[]', 0, '2021-06-07 00:39:08', '2021-06-07 00:39:08', '2022-06-07 06:39:08'),
('c594da88a4aced66f47d10f29d0acd45908ee27601874f0b447b1989b9a8ff4f6fdc9afb587f7b1a', 1, 1, NULL, '[]', 0, '2021-06-07 12:17:35', '2021-06-07 12:17:35', '2022-06-07 18:17:35'),
('c9419f4ef118d342568e91a401ae992ddf9c11bfa9eb7140893ced5aadd8d08949f4a9b1e3983053', 1, 1, NULL, '[]', 0, '2021-06-07 00:35:57', '2021-06-07 00:35:57', '2022-06-07 06:35:57'),
('d256f4f98cc05512693582918be4090c736ba32c6de4b0a37582e902fb7b86a6d4f23dbc206457be', 1, 1, NULL, '[]', 0, '2021-06-07 00:32:07', '2021-06-07 00:32:07', '2022-06-07 06:32:07'),
('e13806f44aff6bcfa16d7adf68b2f710b608a15e925cb84b6b328317532d858c797106abbaa91bcd', 1, 1, NULL, '[]', 0, '2021-06-07 00:32:06', '2021-06-07 00:32:06', '2022-06-07 06:32:06'),
('ef5daf973622d6aeca9301febe5d631a5096e3986d9cbffbeaecee89de7d30d4489daeb79c5fcf53', 1, 1, NULL, '[]', 0, '2021-06-07 12:19:18', '2021-06-07 12:19:18', '2022-06-07 18:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '70dYpm4tWIykaEQCfAt8bka2vNjXnMmYAQKDYTnL', NULL, 'http://localhost', 1, 0, 0, '2021-06-06 11:53:57', '2021-06-06 11:53:57'),
(2, NULL, 'Laravel Password Grant Client', 'T349vvuxbJ3EJNIRz4hJsopYjX7te2Ou42b7Lst1', 'users', 'http://localhost', 0, 1, 0, '2021-06-06 11:53:57', '2021-06-06 11:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-06-06 11:53:57', '2021-06-06 11:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Et error in duis omn', 'Praesentium rem null', 592, 'uploads/1623003767_appstore.png', '2021-06-06 12:13:04', '2021-06-06 12:22:47'),
(4, 'Consectetur esse ip', 'Illum repudiandae e', 908, 'uploads/1623003496_octa.png', '2021-06-06 12:18:16', '2021-06-06 12:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Phillip Thompson', 'bytefica@mailinator.com', NULL, '$2y$10$zDkSQCZHrgD6mFGwd21ZXuv9kVVW/ECQ6zmaQPflANwUUyV0cvZdK', NULL, '2021-06-06 11:59:10', '2021-06-06 11:59:10');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
