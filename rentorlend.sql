-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Lip 30, 2024 at 05:16 PM
-- Wersja serwera: 10.4.34-MariaDB-1:10.4.34+maria~ubu2004
-- Wersja PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `rentorlend`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `uid` bigint(20) UNSIGNED NOT NULL,
  `production_year` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `transmission` varchar(255) NOT NULL,
  `fuel` varchar(255) NOT NULL,
  `photos` varchar(255) NOT NULL,
  `fuel_usage` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `make` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `created_at`, `updated_at`, `uid`, `production_year`, `mileage`, `transmission`, `fuel`, `photos`, `fuel_usage`, `type`, `make`, `model`, `location`, `price`) VALUES
(1, '2024-07-30 17:08:39', '2024-07-30 17:08:39', 1, 2019, 92000, 'automatic', 'hybrid', 'photos/znTqnDUdJdO3KyXEjtxCvWM4FRNIqMe14WUggv8M.jpg', 7, 'sedan', 'Toyota', 'Camry', 'Gdansk', 65),
(2, '2024-07-30 17:09:46', '2024-07-30 17:09:46', 1, 2017, 108000, 'automatic', 'gasoline', 'photos/8dGc5QPq7597vOnKD18lWaUe4SLTKq9QLv2yVp04.jpg', 9, 'sedan', 'Mazda', '6', 'Szczecin', 50),
(3, '2024-07-30 17:11:11', '2024-07-30 17:11:11', 2, 2011, 61000, 'manual', 'gasoline', 'photos/E3oFL3uypU6VT6Me3N52QsTC4IeUchw7waeiS1KF.jpg', 14, 'sedan', 'BMW', 'M3', 'Warsaw', 80),
(4, '2024-07-30 17:12:09', '2024-07-30 17:12:09', 2, 2012, 153000, 'automatic', 'gasoline', 'photos/zMvfhblusZ32z1d1wOjVOjl5Q4nCHzOwFZ4i4Tys.jpg', 11, 'coupe', 'Mercedes-Benz', 'CLS', 'Poznan', 57),
(5, '2024-07-30 17:13:49', '2024-07-30 17:13:49', 3, 2014, 171000, 'automatic', 'hybrid', 'photos/YCmNmbosB9Sc3a6gfNASn2E6BajH4jKYeOPEHq8u.png', 8, 'suv', 'Lexus', 'RX', 'Wroclaw', 45),
(6, '2024-07-30 17:14:38', '2024-07-30 17:14:38', 3, 2022, 16000, 'automatic', 'gasoline', 'photos/JryzKVnk5bNv05zri4AUQ0jIvg8XM0Z7RpwuaxtF.jpg', 9, 'sedan', 'Volkswagen', 'Passat', 'Krakow', 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
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
-- Struktura tabeli dla tabeli `migrations`
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_21_134747_create_cars_table', 1),
(6, '2024_04_04_132024_create_rates_table', 1),
(7, '2024_04_04_172558_create_reviews_table', 1),
(8, '2024_04_09_123440_create_reservations_table', 1),
(9, '2024_07_16_202559_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
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
-- Struktura tabeli dla tabeli `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rated_user_id` bigint(20) UNSIGNED NOT NULL,
  `rate_author_id` bigint(20) UNSIGNED NOT NULL,
  `rate_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `reserved_car_id` bigint(20) UNSIGNED NOT NULL,
  `uid` bigint(20) UNSIGNED DEFAULT NULL,
  `total_cost` int(11) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rate_value` int(11) NOT NULL,
  `comment` longtext DEFAULT NULL,
  `reviewed_car_id` bigint(20) UNSIGNED NOT NULL,
  `uid` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, NULL, '$2y$12$H8PkH9hMovJR.ceKCXtjd.4/686PlHmlQMASwWgsjg4rAfVFMcMVS', NULL, '2024-07-30 17:07:18', '2024-07-30 17:07:18'),
(2, 'sampleUser2', 'sample2@example.com', NULL, NULL, '$2y$12$LOSWmdO6PVBJDB2g7dE6CecMc0zJNgscZ2iBN9jkKpXOCJbZ/zLY.', NULL, '2024-07-30 17:10:27', '2024-07-30 17:10:27'),
(3, 'sampleUser3', 'sample3@example.com', NULL, NULL, '$2y$12$AgDLGy.emwDXh/ZjFTPwLexC4T1dAcQVlT/UyROYKJMfptRM0e/2a', NULL, '2024-07-30 17:12:54', '2024-07-30 17:12:54');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cars_uid_foreign` (`uid`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeksy dla tabeli `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksy dla tabeli `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rates_rated_user_id_foreign` (`rated_user_id`),
  ADD KEY `rates_rate_author_id_foreign` (`rate_author_id`);

--
-- Indeksy dla tabeli `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_reserved_car_id_foreign` (`reserved_car_id`),
  ADD KEY `reservations_uid_foreign` (`uid`);

--
-- Indeksy dla tabeli `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_reviewed_car_id_foreign` (`reviewed_car_id`),
  ADD KEY `reviews_uid_foreign` (`uid`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_uid_foreign` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rates`
--
ALTER TABLE `rates`
  ADD CONSTRAINT `rates_rate_author_id_foreign` FOREIGN KEY (`rate_author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `rates_rated_user_id_foreign` FOREIGN KEY (`rated_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_reserved_car_id_foreign` FOREIGN KEY (`reserved_car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reservations_uid_foreign` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_reviewed_car_id_foreign` FOREIGN KEY (`reviewed_car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_uid_foreign` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;
