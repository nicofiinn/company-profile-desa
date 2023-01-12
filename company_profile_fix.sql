-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 07:24 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_profile_fix`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, '85000', 'Luas wilayah desa sumber kedawung', 'service.png', '2022-12-21 05:04:32', '2022-12-21 05:04:32'),
(2, '26', 'Jumlah Kartu Keluarga di desa dumber kedawung', 'service.png', '2022-12-21 05:05:27', '2022-12-21 05:05:27'),
(3, '150', 'Jumla Penduduk di desa Sumberkedawung', 'service.png', '2022-12-21 05:06:00', '2022-12-21 05:06:00'),
(4, '10', 'Prestasi desa Sumberkedawung', 'service.png', '2022-12-21 05:06:32', '2022-12-21 05:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Rapat Tahun Baru', 'Tasyakuran bersama warga kedawung untuk mempererat silaturahmi', 'Desa - Musyawarah Pergantian BUMDes-02.jpg', '2022-12-21 05:53:48', '2022-12-21 05:53:48'),
(2, 'Sepeda santai', 'Penyambung keharmonisan desa kedawung dengan menjag kesehatan', 'Desa - Sepeda Santai 77TH-18.jpg', '2022-12-21 06:04:19', '2022-12-21 06:04:19');

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
-- Table structure for table `galeris`
--

CREATE TABLE `galeris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeris`
--

INSERT INTO `galeris` (`id`, `image`, `created_at`, `updated_at`) VALUES
(2, 'g2-01.jpg', '2022-12-21 05:14:06', '2022-12-21 05:14:06'),
(3, 'g4-01.jpg', '2022-12-21 05:14:25', '2022-12-21 05:14:25'),
(4, 'g3-01.jpg', '2022-12-21 05:14:41', '2022-12-21 05:14:41'),
(5, 'g1-01.jpg', '2022-12-21 05:44:52', '2022-12-21 05:44:52'),
(6, 'g2-01.jpg', '2022-12-21 05:45:49', '2022-12-21 05:45:49');

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
(5, '2022_11_26_103730_create_sliders', 1),
(6, '2022_11_30_101732_create_services', 1),
(7, '2022_12_06_145631_create_umkms', 1),
(8, '2022_12_13_140930_create_perangkats', 1),
(9, '2022_12_13_141110_create_sambutans', 1),
(10, '2022_12_13_141213_create_testimonis', 1),
(11, '2022_12_13_141241_create_galeris', 1),
(12, '2022_12_13_154943_create_data', 1),
(13, '2022_12_14_043332_create_news', 1),
(14, '2022_12_14_051501_create_events', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Hidup Sehat bersama Kedawung', 'Perayaan lomba pacu kuda untuk kesehatan massyarakat desa Sumberkedawung', 'slide2-01.jpg', '2022-12-21 05:08:44', '2022-12-21 05:08:44'),
(2, 'Ramaikan Lomba Catur', 'Ayo dulur dulur gabung lomba catur, sambung silaturahmi bersama warga kedawung', 'Desa - Catur-5 (1).jpg', '2022-12-21 05:50:39', '2022-12-21 05:51:12');

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
-- Table structure for table `perangkats`
--

CREATE TABLE `perangkats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perangkats`
--

INSERT INTO `perangkats` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Desa', 'Samsul Arifin', 'SAMSUL ARIFIN, S.Sos-01.png', '2022-12-21 04:11:07', '2022-12-21 04:18:43'),
(2, 'Wakil Kepala Desa', 'Ahmad Riyadi', '08-01.png', '2022-12-21 04:11:46', '2022-12-21 04:18:03'),
(3, 'Siti Hana', 'Bendahara', '09-01.png', '2022-12-21 04:13:25', '2022-12-21 04:15:26'),
(4, 'Vitria Alfiana', 'Sekretaris', '07-01.png', '2022-12-21 04:13:51', '2022-12-21 04:16:22');

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
-- Table structure for table `sambutans`
--

CREATE TABLE `sambutans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sambutans`
--

INSERT INTO `sambutans` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Selamat Hari Raya Natal dan Tahun Baru', 'Assalamualaikum wr.wb \r\nTidak terasa saat ini kita sudah ada di puncak tahun 2022. Saya segenap Kepala Desa Sumberkedawung mengucapkan Selamat Hari Raya Natal dan Tahun Baru 2023, semoga apa yang kita laksanakan pada tahun ini selalu berkah .', 'IMG_20221221_102521.png', '2022-12-21 10:59:09', '2022-12-21 10:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Pembuatan KTP', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'service.png', '2022-12-21 04:20:22', '2022-12-21 04:20:22'),
(2, 'Pembuatan Kartu Keluarga', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'service.png', '2022-12-21 04:25:49', '2022-12-21 04:25:49'),
(3, 'Pembuatan Akte Kelahiran', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'service.png', '2022-12-21 04:26:21', '2022-12-21 04:26:21'),
(4, 'Pembuatan AKte Kematian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'service.png', '2022-12-21 04:33:50', '2022-12-21 04:33:50'),
(5, 'Prosedur Pindah Domisili', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'service.png', '2022-12-21 04:34:28', '2022-12-21 04:34:28'),
(6, 'Pembuatan Surat Izin Keramaian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'service.png', '2022-12-21 04:36:44', '2022-12-21 04:36:44');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Slider 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'slide1-01.jpg', '2022-12-21 04:05:21', '2022-12-21 04:38:44'),
(2, 'Slider 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'slide2-01.jpg', '2022-12-21 04:44:07', '2022-12-21 04:53:44'),
(3, 'Slider 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'slide3-01.jpg', '2022-12-21 04:59:02', '2022-12-21 04:59:02'),
(4, 'Slider 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'slide4-01.jpg', '2022-12-21 04:59:28', '2022-12-21 04:59:28');

-- --------------------------------------------------------

--
-- Table structure for table `testimonis`
--

CREATE TABLE `testimonis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `umkms`
--

CREATE TABLE `umkms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `umkms`
--

INSERT INTO `umkms` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'UMKM 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'IMG_20221221_185513.jpg', '2022-12-21 05:00:30', '2022-12-21 05:00:30'),
(2, 'UMKM 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'IMG_20221221_185454.jpg', '2022-12-21 05:00:50', '2022-12-21 05:00:50'),
(3, 'UMKM 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ultricies gravida erat, ac molestie diam varius ut. Aliquam sed arcu justo. Donec massa dolor, fringilla at purus eu, ullamcorper interdum nibh. Sed mollis augue vel eleifend pretium.', 'IMG_20221221_185503.jpg', '2022-12-21 05:01:05', '2022-12-21 05:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `level`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'user1', 'admin', 'user1@gmail.com', NULL, '$2y$10$/4joFpYuO14XI8zzZvIm4eAEDyZyO6BpqiRPnN0dV.TRhM9SVppVS', '1l2vpds7VGoRJZwNMm3mp3pw7ze06S9RvoGwjWR0ttuxOjeuvX6hsNmPx2RZ', '2022-12-19 20:00:19', '2022-12-19 20:03:36'),
(6, 'sumber kedawung', 'superadmin', 'ked4wung@gmail.com', NULL, '$2y$10$TOZRXt2oO0tNo7APMiSfeOiSqK4fkepgHhqrEDZ8b4L.JPqPibeYy', 'b6tZrRqMEIF6SJ5ppGb3QpQg0xs8QqkIXHpI53lS26Ct5Kiv4TgNuWI8THRT', '2022-12-19 20:15:29', '2022-12-19 20:15:29'),
(7, 'Nabila Dwi Paramita', 'admin', 'bila@gmail.com', NULL, '$2y$10$/6qXVTv0La96D5LKYrsYdOTzTGsB4upnwx/gi55tZ4AkUe3QhDEpW', '6ix3OFLDUOuAfX6TgfKROHilLIroYOf3oUk5IQjpEmBpgs52zc7ylqjvTiIk', '2022-12-20 07:56:16', '2022-12-20 07:56:16'),
(8, 'Kurnia Nur Aisyah', 'admin', 'aisyah@gmail.com', NULL, '$2y$10$H0bA4JdNGkNwt4My4psJ.ejP0/qLGEllOwul.bfzEJst/lR11CfYu', 'orDSP8hY2YZL1clY34FVN2SAcwjzGsMIkefB42tKvhUmV8W3XgE3nrQEWsmS', '2022-12-20 07:58:19', '2022-12-20 07:58:19'),
(9, 'David Kurniawan', 'admin', 'david@gmail.com', NULL, '$2y$10$jfqvZREslxiJt4VUlBsfhe/VIUqJQJNkJT/QUll4I8dD5d9.NLn5m', 'MBBuxDI7QNZlOxfrnzP3gVaDAorshau5uWc4pEkpbVQGXhWCuGZ4OCVLJe9Z', '2022-12-20 07:59:04', '2022-12-20 07:59:04'),
(10, 'Arno Purboyo', 'admin', 'arno@gmail.com', NULL, '$2y$10$.P9La8V4FTrKLQqn3NOumONb4L47ayGNkxMu5K/8X8XbfHYrg1bs6', 'TFqWrQ6x3EpmsiOPK2I73JS5vuhr5shEAFJ31nPa1EznuIgpI0p5iJp5Tvnj', '2022-12-20 08:02:26', '2022-12-20 08:02:26'),
(11, 'Nico Tambunan', 'admin', 'nico@gmail.com', NULL, '$2y$10$JQvPgGG0ffECVyEf1l17veTeHzsTZTZ6Ded00InExU1dVl8vDlV0u', 'Y8YXZlGziNffWdJl83GKqvt3Rtb41pghqIGm5lX6qteP6O6IS4bPA0kxbWhF', '2022-12-20 08:03:09', '2022-12-20 08:03:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `perangkats`
--
ALTER TABLE `perangkats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sambutans`
--
ALTER TABLE `sambutans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonis`
--
ALTER TABLE `testimonis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `umkms`
--
ALTER TABLE `umkms`
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
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `perangkats`
--
ALTER TABLE `perangkats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sambutans`
--
ALTER TABLE `sambutans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonis`
--
ALTER TABLE `testimonis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `umkms`
--
ALTER TABLE `umkms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
