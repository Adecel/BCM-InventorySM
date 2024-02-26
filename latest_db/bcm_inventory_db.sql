-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2024 at 09:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bcm_inventory_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Fer', 1, 15, NULL, '2023-02-17 18:56:27', NULL),
(3, 'planche', 1, 15, NULL, '2023-02-17 18:56:55', NULL),
(4, 'Construction', 1, 15, NULL, '2023-02-17 18:58:43', NULL),
(5, 'plamberie', 1, 15, NULL, '2023-02-17 18:59:12', NULL),
(6, 'Ampoule', 1, 15, NULL, '2023-02-17 19:16:37', NULL),
(7, 'Soudure', 1, 15, NULL, '2023-02-17 19:19:00', NULL),
(8, 'maison', 1, 15, NULL, '2023-02-17 19:31:35', NULL),
(9, 'électricité', 1, 15, NULL, '2023-02-17 19:35:18', NULL),
(10, 'Peinture', 1, 15, NULL, '2023-02-17 19:37:18', NULL),
(11, 'Clé', 1, 15, NULL, '2023-02-17 19:38:11', NULL),
(12, 'poulet', 1, 15, NULL, '2023-03-18 11:06:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(9, 'Adecel', '0813623440', 'rustymabiala150@gmail.com', 'mpaka patra, pointe-noire', 1, 15, NULL, '2023-02-17 18:50:31', NULL),
(10, 'Adele', NULL, NULL, NULL, 1, 15, NULL, '2023-02-17 18:50:55', NULL),
(11, 'Emmanuel', NULL, NULL, NULL, 1, 15, NULL, '2023-03-13 13:17:03', NULL);

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
  `invoice_no` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `selling_qty` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_02_04_051047_create_suppliers_table', 2),
(6, '2023_02_11_075923_create_customers_table', 3),
(7, '2023_02_11_201734_create_units_table', 4),
(8, '2023_02_16_001349_create_categories_table', 5),
(9, '2023_02_16_012618_create_products_table', 5),
(10, '2023_02_16_072855_create_purchases_table', 5),
(11, '2023_03_11_205718_create_invoices_table', 6),
(12, '2023_03_11_211112_create_invoice_details_table', 6),
(13, '2023_03_11_211751_create_payment_details_table', 6),
(14, '2023_03_11_211817_create_payments_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `paid_status` varchar(51) DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `supplier_id`, `unit_id`, `category_id`, `name`, `quantity`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 2, 'Fer n8', 0, 1, 15, NULL, '2023-02-17 19:47:20', NULL),
(2, 11, 3, 3, 'Contre plaquée', 0, 1, 15, NULL, '2023-02-17 19:54:47', NULL),
(3, 10, 4, 4, 'Pointe n9', 0, 1, 15, NULL, '2023-02-17 20:06:11', NULL),
(4, 10, 4, 4, 'Pointe n8', 0, 1, 15, NULL, '2023-02-17 20:06:57', NULL),
(5, 10, 4, 4, 'Pointe n7', 0, 1, 15, NULL, '2023-02-17 20:10:25', NULL),
(6, 10, 4, 4, 'Pointe n6', 0, 1, 15, NULL, '2023-02-17 20:14:00', NULL),
(7, 10, 4, 4, 'Pointe n2', 0, 1, 15, NULL, '2023-02-17 20:14:36', NULL),
(8, 10, 4, 4, 'pointe de mur', 0, 1, 15, NULL, '2023-02-17 20:15:12', NULL),
(9, 10, 4, 4, 'Pointe des tôles', 0, 1, 15, NULL, '2023-02-17 20:17:10', NULL),
(10, 11, 5, 11, 'Clé à bouton', 0, 1, 15, NULL, '2023-02-17 20:21:37', NULL),
(11, 11, 5, 11, 'Clé Laperche', 2, 1, 15, NULL, '2023-02-17 20:24:54', '2023-03-11 16:33:37'),
(12, 13, 5, 5, 'Tuyau', 0, 1, 15, NULL, '2023-02-17 20:25:53', NULL),
(13, 11, 5, 3, 'Lattes 4x4', 0, 1, 15, NULL, '2023-02-17 20:27:05', NULL),
(14, 11, 5, 4, 'tôles', 0, 1, 15, NULL, '2023-02-17 20:28:10', NULL),
(15, 12, 5, 6, 'Ampoule Economique', 0, 1, 15, NULL, '2023-02-17 20:41:12', NULL),
(16, 13, 5, 5, 'Colle 99, PVC', 0, 1, 15, NULL, '2023-02-17 20:41:50', NULL),
(17, 14, 10, 12, 'poulet 243', 0, 1, 15, NULL, '2023-03-18 11:07:27', NULL),
(18, 11, 2, 2, 'Fer de 9', 0, 1, 15, NULL, '2023-03-21 04:55:27', NULL),
(20, 11, 2, 2, '4', 0, 1, 15, 15, '2023-03-21 05:05:58', '2023-03-21 05:07:12'),
(21, 11, 2, 2, 'Fer de 11', 0, 1, 15, 15, '2023-03-21 05:18:37', '2023-03-21 05:20:39'),
(22, 12, 5, 5, 'pvc 03', 0, 1, 15, NULL, '2023-03-21 05:26:47', NULL),
(23, 13, 5, 5, 'pvc 75', 0, 1, 15, NULL, '2023-03-21 05:27:46', NULL),
(24, 12, 5, 5, 'pvc', 5, 1, 15, 15, '2023-03-21 05:28:22', '2023-03-21 05:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_no` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending, 1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `category_id`, `product_id`, `purchase_no`, `date`, `description`, `buying_qty`, `unit_price`, `buying_price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 10, 4, 3, '01', '2023-02-02', 'checking', 2, 1000, 2000, 0, 15, NULL, '2023-02-17 20:47:58', '2023-02-17 20:47:58'),
(2, 11, 2, 1, '01', '2023-02-02', 'checking', 11, 600, 6600, 0, 15, NULL, '2023-02-17 20:47:58', '2023-02-17 20:47:58'),
(3, 11, 3, 13, '01', '2023-02-02', 'checking', 4, 700, 2800, 0, 15, NULL, '2023-02-17 20:47:58', '2023-02-17 20:47:58'),
(4, 12, 6, 15, '01', '2023-02-02', 'checking', 5, 500, 2500, 0, 15, NULL, '2023-02-17 20:47:58', '2023-02-17 20:47:58'),
(5, 11, 11, 11, '02', '2023-02-05', NULL, 2, 5000, 10000, 1, 15, NULL, '2023-02-17 20:51:21', '2023-03-11 16:33:37'),
(6, 11, 2, 1, '12', '2023-03-02', 'checking', 3, 500, 1500, 0, 15, NULL, '2023-03-11 16:47:35', '2023-03-11 16:47:35'),
(7, 11, 2, 1, '12', '2023-03-02', 'checking', 3, 500, 1500, 0, 15, NULL, '2023-03-11 16:47:35', '2023-03-11 16:47:35'),
(8, 11, 3, 2, '099', '2023-03-06', 'www', 4, 400, 1600, 0, 15, NULL, '2023-03-21 05:10:49', '2023-03-21 05:10:49');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(10, 'Salemh', NULL, NULL, 'Grand marché', 1, 15, 15, '2023-02-17 17:45:05', '2023-02-17 17:46:43'),
(11, 'Quincaillerie A/C', NULL, NULL, 'Pointe-noire', 1, 15, NULL, '2023-02-17 18:35:51', NULL),
(12, 'GTEC SARL', '+242 05 537 4347', NULL, 'Av. Costode Zacherie, Pointe-Noire', 1, 15, NULL, '2023-02-17 18:37:11', NULL),
(13, 'REGAL Bâtiment et Industrie', '+242 05 347 5656', NULL, 'avenue François, Pointe-Noire, Congo - Brazzaville', 1, 15, NULL, '2023-02-17 18:39:43', NULL),
(14, 'Fanny', '+2430988835', 'fanny@gmail.com', '28 rue ngobo', 1, 15, NULL, '2023-03-18 11:06:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'barres', 1, 15, NULL, '2023-02-17 18:51:43', NULL),
(3, 'feuilles', 1, 15, NULL, '2023-02-17 18:52:28', NULL),
(4, 'kg', 1, 15, NULL, '2023-02-17 18:52:44', NULL),
(5, 'pièces', 1, 15, NULL, '2023-02-17 18:53:08', NULL),
(6, 'paquet', 1, 15, NULL, '2023-02-17 18:53:31', NULL),
(7, 'boîte', 1, 15, NULL, '2023-02-17 18:54:16', NULL),
(8, 'mètre', 1, 15, NULL, '2023-02-17 18:54:42', NULL),
(9, 'rouleaux', 1, 15, NULL, '2023-02-17 18:55:09', NULL),
(10, 'carton', 1, 15, NULL, '2023-03-18 11:06:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `profile_image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(15, 'Alice Kaswera Ngoie Emma', 'Alkas', 'alice12@gmail.com', NULL, '2023020219482385316B-C6A1-43EF-833D-7E44E33DAD96.jpeg', '$2y$10$D.QuQiwMyA4xbVpeA8fewunHpJ1qr.nc5bonxua1IIPY602XvEISa', NULL, '2023-02-02 17:45:27', '2023-03-13 13:16:21'),
(17, 'rusty@gmail.com', 'rusty@gmail.com', 'rusty@gmail.com', NULL, NULL, '$2y$10$Tcm0JN0HdZZqJXrM5urExObNr7.4V2kzJSDYFIMXm.X4C5SEJQHFO', NULL, '2024-02-26 18:29:39', '2024-02-26 18:29:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
