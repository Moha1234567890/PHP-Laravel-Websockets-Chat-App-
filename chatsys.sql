-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2022 at 12:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatsys`
--

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `last_message_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `name`, `uuid`, `user_id`, `last_message_at`, `created_at`, `updated_at`) VALUES
(1, 'Family Group', '114e45d0-3325-4591-9019-3881e22364e6', 1, '2021-08-28 08:58:18', '2021-08-23 09:31:36', '2021-08-28 08:58:18'),
(2, 'Work Group', '81ca3ec7-9a66-4a85-b541-7da43482a1ef', 4, '2021-08-25 10:30:24', '2021-08-23 09:31:36', '2021-08-25 10:30:24'),
(3, 'Friends Group', '74377176-1608-40a7-afd5-0efa40b5ec3f', 3, '2021-08-31 09:02:48', '2021-08-23 09:31:36', '2021-08-31 09:02:48'),
(4, 'Guys Group', '39c7b4b2-3d29-479d-be77-1e098a27420c', 1, '2021-08-23 09:31:39', '2021-08-23 09:31:36', '2021-08-23 09:31:39'),
(5, 'Art Group', 'ed3a9273-8139-4274-ae25-fb709dc03e37', 2, '2021-08-24 11:17:23', '2021-08-23 09:31:36', '2021-08-24 11:17:23'),
(6, 'test new group', '24a63ab3-fc77-4208-accd-beeb53109737', 1, '2021-08-31 11:29:05', '2021-08-31 09:29:05', '2021-08-31 09:29:05'),
(7, 'test group', '677550fa-6205-45e4-b9da-f5d8d4f01c68', 1, '2021-08-31 11:34:02', '2021-08-31 09:34:02', '2021-08-31 09:34:02'),
(8, 'test group', 'e64a3afa-8aba-44e5-8362-507eee5b165a', 1, '2021-08-31 11:38:37', '2021-08-31 09:38:37', '2021-08-31 09:38:37'),
(9, 'gg', 'a515bfd4-2f53-4088-b01c-35477b9dc620', 1, '2021-08-31 11:42:35', '2021-08-31 09:42:35', '2021-08-31 09:42:35'),
(10, 'test group ', '5ed5dfeb-f92f-44ac-9285-b844f80682b9', 1, '2021-08-31 09:44:44', '2021-08-31 09:43:37', '2021-08-31 09:44:44'),
(11, 'three freinds', '4200c820-670f-45e7-b699-4ae97dcbdf59', 1, '2021-08-31 12:25:44', '2021-08-31 10:25:44', '2021-08-31 10:25:44'),
(12, 'three freinds', '52548323-fcc0-48f2-9deb-a26e371c09d2', 1, '2021-08-31 12:28:43', '2021-08-31 10:28:43', '2021-08-31 10:28:43'),
(13, 'my best three buds', '42fcd585-6587-4964-98f1-5f2d5e81d052', 1, '2021-08-31 12:29:26', '2021-08-31 10:29:26', '2021-08-31 10:29:26'),
(14, 'hello three ', '716d6764-c501-4b8a-ac77-723844e93888', 1, '2021-08-31 12:34:03', '2021-08-31 10:34:03', '2021-08-31 10:34:03'),
(15, 'i guess it is on', 'c3ca12a5-f654-4816-bc10-aab2abf49071', 1, '2021-08-31 12:42:33', '2021-08-31 10:42:33', '2021-08-31 10:42:33'),
(16, 'oh boy', '08422d4a-333e-4b68-9236-1dc231d9e77c', 1, '2021-08-31 12:48:03', '2021-08-31 10:48:03', '2021-08-31 10:48:03'),
(17, 'i am done', '333dccfb-31da-4371-b611-6bcd5932d88e', 1, '2021-08-31 10:59:18', '2021-08-31 10:52:04', '2021-08-31 10:59:18'),
(18, 'after a while', 'f7a3f131-5501-443e-973f-aa95dd7c1dda', 1, '2021-08-31 15:29:30', '2021-08-31 13:29:29', '2021-08-31 13:29:29'),
(19, 'howdy', '092e6dcc-50c6-4695-a942-d7e399c44033', 1, '2021-08-31 13:41:37', '2021-08-31 13:40:28', '2021-08-31 13:41:37'),
(20, 'y\'all ok', '348319b3-5281-4477-9dfc-d30678811321', 1, '2021-08-31 14:00:46', '2021-08-31 14:00:19', '2021-08-31 14:00:46'),
(21, 'well', 'cdd437b7-1f74-4f44-814b-3176af580377', 1, '2021-08-31 14:11:16', '2021-08-31 14:03:07', '2021-08-31 14:11:16'),
(22, 'ddd', 'b200343e-e036-41df-853d-6f40388eb02f', 1, '2021-08-31 14:12:15', '2021-08-31 14:11:51', '2021-08-31 14:12:15'),
(23, 'heyy', 'f689b75f-8d57-4605-a3ef-d1f4483646e8', 1, '2021-08-31 15:38:54', '2021-08-31 15:38:29', '2021-08-31 15:38:54'),
(24, 'hope it works', '05efb2bf-7356-4120-a5e3-2a83d15e2f19', 1, '2021-09-01 09:05:44', '2021-09-01 09:05:16', '2021-09-01 09:05:44'),
(25, 'hello', 'e244f731-c637-48e5-9e00-288dc4396051', 1, '2021-09-01 11:33:57', '2021-09-01 09:33:57', '2021-09-01 09:33:57'),
(26, 'hi all', 'aceb3a73-0c82-49d3-a9dc-8c8f8391f222', 1, '2021-09-01 11:53:42', '2021-09-01 09:53:42', '2021-09-01 09:53:42'),
(27, 'after show', 'df52a83d-4d49-4900-b304-e653ccdd0aa8', 1, '2021-09-01 11:59:53', '2021-09-01 09:59:53', '2021-09-01 09:59:53'),
(28, 'after show 2', 'ef28dde1-e769-4cbb-8a54-90e267861735', 1, '2021-09-01 11:33:35', '2021-09-01 10:02:01', '2021-09-01 11:33:35'),
(29, 'final group', 'ba3b22a1-4f88-4fc2-978a-7c9a4d552404', 1, '2021-09-01 12:33:04', '2021-09-01 12:31:25', '2021-09-01 12:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `conversation_user`
--

CREATE TABLE `conversation_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversation_user`
--

INSERT INTO `conversation_user` (`id`, `conversation_id`, `user_id`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-09-01 10:09:57', '2021-08-23 09:31:36', '2021-08-23 09:31:36'),
(2, 1, 2, NULL, '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(3, 1, 3, NULL, '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(4, 1, 4, '2021-09-01 12:23:57', '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(5, 2, 1, '2021-08-29 10:28:30', '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(6, 2, 2, NULL, '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(7, 3, 1, '2021-08-31 09:02:33', '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(8, 3, 3, NULL, '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(9, 3, 4, '2021-09-01 12:23:41', '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(10, 4, 2, NULL, '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(11, 4, 3, NULL, '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(12, 4, 4, NULL, '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(13, 5, 3, NULL, '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(14, 5, 4, NULL, '2021-08-23 09:31:37', '2021-08-23 09:31:37'),
(15, 7, 4, NULL, '2021-08-31 09:34:02', '2021-08-31 09:34:02'),
(16, 7, 3, NULL, '2021-08-31 09:34:02', '2021-08-31 09:34:02'),
(17, 8, 4, NULL, '2021-08-31 09:38:37', '2021-08-31 09:38:37'),
(18, 8, 3, NULL, '2021-08-31 09:38:37', '2021-08-31 09:38:37'),
(19, 9, 4, NULL, '2021-08-31 09:42:35', '2021-08-31 09:42:35'),
(20, 9, 3, NULL, '2021-08-31 09:42:35', '2021-08-31 09:42:35'),
(21, 9, 1, NULL, '2021-08-31 09:42:35', '2021-08-31 09:42:35'),
(22, 10, 4, '2021-08-31 09:44:38', '2021-08-31 09:43:38', '2021-08-31 09:43:38'),
(23, 10, 3, '2021-08-31 10:53:14', '2021-08-31 09:43:38', '2021-08-31 09:43:38'),
(24, 10, 1, '2021-08-31 10:24:06', '2021-08-31 09:43:38', '2021-08-31 09:43:38'),
(25, 11, 4, NULL, '2021-08-31 10:25:44', '2021-08-31 10:25:44'),
(26, 11, 3, NULL, '2021-08-31 10:25:44', '2021-08-31 10:25:44'),
(27, 11, 1, NULL, '2021-08-31 10:25:45', '2021-08-31 10:25:45'),
(28, 12, 4, NULL, '2021-08-31 10:28:44', '2021-08-31 10:28:44'),
(29, 12, 3, NULL, '2021-08-31 10:28:44', '2021-08-31 10:28:44'),
(30, 12, 1, NULL, '2021-08-31 10:28:44', '2021-08-31 10:28:44'),
(31, 13, 4, NULL, '2021-08-31 10:29:26', '2021-08-31 10:29:26'),
(32, 13, 3, NULL, '2021-08-31 10:29:26', '2021-08-31 10:29:26'),
(33, 13, 1, '2021-08-31 10:33:16', '2021-08-31 10:29:26', '2021-08-31 10:29:26'),
(34, 14, 4, NULL, '2021-08-31 10:34:03', '2021-08-31 10:34:03'),
(35, 14, 3, NULL, '2021-08-31 10:34:03', '2021-08-31 10:34:03'),
(36, 14, 1, NULL, '2021-08-31 10:34:03', '2021-08-31 10:34:03'),
(37, 15, 4, NULL, '2021-08-31 10:42:33', '2021-08-31 10:42:33'),
(38, 15, 3, NULL, '2021-08-31 10:42:33', '2021-08-31 10:42:33'),
(39, 15, 1, '2021-08-31 10:42:35', '2021-08-31 10:42:34', '2021-08-31 10:42:34'),
(40, 16, 4, NULL, '2021-08-31 10:48:04', '2021-08-31 10:48:04'),
(41, 16, 3, NULL, '2021-08-31 10:48:04', '2021-08-31 10:48:04'),
(42, 16, 1, '2021-08-31 10:50:49', '2021-08-31 10:48:04', '2021-08-31 10:48:04'),
(43, 17, 3, '2021-08-31 13:23:59', '2021-08-31 10:52:04', '2021-08-31 10:52:04'),
(44, 17, 4, '2021-09-01 12:23:46', '2021-08-31 10:52:04', '2021-08-31 10:52:04'),
(45, 17, 1, '2021-08-31 13:23:51', '2021-08-31 10:52:05', '2021-08-31 10:52:05'),
(46, 18, 4, NULL, '2021-08-31 13:29:30', '2021-08-31 13:29:30'),
(47, 18, 3, '2021-08-31 13:30:05', '2021-08-31 13:29:30', '2021-08-31 13:29:30'),
(48, 18, 1, '2021-08-31 13:38:28', '2021-08-31 13:29:30', '2021-08-31 13:29:30'),
(49, 19, 4, NULL, '2021-08-31 13:40:28', '2021-08-31 13:40:28'),
(50, 19, 3, '2021-09-01 09:04:34', '2021-08-31 13:40:28', '2021-08-31 13:40:28'),
(51, 19, 1, '2021-08-31 13:59:27', '2021-08-31 13:40:28', '2021-08-31 13:40:28'),
(52, 20, 4, '2021-08-31 14:02:39', '2021-08-31 14:00:19', '2021-08-31 14:00:19'),
(53, 20, 3, NULL, '2021-08-31 14:00:19', '2021-08-31 14:00:19'),
(54, 20, 1, '2021-08-31 14:02:14', '2021-08-31 14:00:19', '2021-08-31 14:00:19'),
(55, 21, 4, '2021-08-31 14:11:07', '2021-08-31 14:03:07', '2021-08-31 14:03:07'),
(56, 21, 3, NULL, '2021-08-31 14:03:08', '2021-08-31 14:03:08'),
(57, 21, 1, NULL, '2021-08-31 14:03:08', '2021-08-31 14:03:08'),
(58, 22, 4, '2021-08-31 14:12:09', '2021-08-31 14:11:51', '2021-08-31 14:11:51'),
(59, 22, 3, NULL, '2021-08-31 14:11:51', '2021-08-31 14:11:51'),
(60, 22, 1, '2021-08-31 15:37:50', '2021-08-31 14:11:51', '2021-08-31 14:11:51'),
(61, 23, 4, '2021-08-31 15:38:40', '2021-08-31 15:38:29', '2021-08-31 15:38:29'),
(62, 23, 3, NULL, '2021-08-31 15:38:29', '2021-08-31 15:38:29'),
(63, 23, 1, '2021-09-01 08:59:04', '2021-08-31 15:38:29', '2021-08-31 15:38:29'),
(64, 24, 4, '2021-09-01 09:05:37', '2021-09-01 09:05:16', '2021-09-01 09:05:16'),
(65, 24, 3, NULL, '2021-09-01 09:05:16', '2021-09-01 09:05:16'),
(66, 24, 1, '2021-09-01 09:32:51', '2021-09-01 09:05:16', '2021-09-01 09:05:16'),
(67, 25, 3, '2021-09-01 09:34:43', '2021-09-01 09:33:57', '2021-09-01 09:33:57'),
(68, 25, 1, '2021-09-01 09:51:34', '2021-09-01 09:33:58', '2021-09-01 09:33:58'),
(69, 26, 3, '2021-09-01 10:13:52', '2021-09-01 09:53:42', '2021-09-01 09:53:42'),
(70, 26, 1, '2021-09-01 10:00:16', '2021-09-01 09:53:42', '2021-09-01 09:53:42'),
(71, 27, 4, NULL, '2021-09-01 09:59:54', '2021-09-01 09:59:54'),
(72, 27, 1, '2021-09-01 09:59:55', '2021-09-01 09:59:54', '2021-09-01 09:59:54'),
(73, 28, 4, '2021-09-01 12:23:21', '2021-09-01 10:02:01', '2021-09-01 10:02:01'),
(74, 28, 1, '2021-09-01 11:46:23', '2021-09-01 10:02:01', '2021-09-01 10:02:01'),
(75, 28, 3, NULL, '2021-09-01 10:13:30', '2021-09-01 10:13:30'),
(76, 28, 2, NULL, '2021-09-01 10:27:01', '2021-09-01 10:27:01'),
(78, 29, 4, NULL, '2021-09-01 12:31:26', '2021-09-01 12:31:26'),
(79, 29, 5, '2021-09-01 12:32:35', '2021-09-01 12:31:26', '2021-09-01 12:31:26'),
(80, 29, 1, NULL, '2021-09-01 12:31:26', '2021-09-01 12:31:26');

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_id`, `body`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Est perspiciatis quos dolor.', NULL, '2021-08-23 09:31:38', '2021-08-23 09:31:38'),
(2, 1, 2, 'Quis reprehenderit dolores laudantium impedit.', NULL, '2021-08-23 09:31:38', '2021-08-23 09:31:38'),
(3, 1, 3, 'Mollitia incidunt corrupti sint laborum quo sint ullam.', NULL, '2021-08-23 09:31:38', '2021-08-23 09:31:38'),
(4, 1, 4, 'Rem voluptatem aut ut.', NULL, '2021-08-23 09:31:38', '2021-08-23 09:31:38'),
(5, 1, 4, 'Deleniti perferendis repellat voluptas blanditiis vitae placeat.', NULL, '2021-08-23 09:31:38', '2021-08-23 09:31:38'),
(6, 2, 2, 'Occaecati quasi possimus expedita voluptas laboriosam.', NULL, '2021-08-23 09:31:38', '2021-08-23 09:31:38'),
(7, 2, 2, 'Quas voluptatem quo fuga cupiditate.', NULL, '2021-08-23 09:31:38', '2021-08-23 09:31:38'),
(8, 2, 2, 'Nesciunt vel eveniet sed et quia amet quia numquam.', NULL, '2021-08-23 09:31:38', '2021-08-23 09:31:38'),
(9, 2, 2, 'Perspiciatis aut laudantium id deserunt.', NULL, '2021-08-23 09:31:38', '2021-08-23 09:31:38'),
(10, 2, 2, 'Veniam et omnis similique quaerat tempore libero.', NULL, '2021-08-23 09:31:38', '2021-08-23 09:31:38'),
(11, 3, 3, 'Architecto voluptatum quidem occaecati iure.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(12, 3, 1, 'Sit et cum dicta fugit.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(13, 3, 3, 'Rem totam possimus laborum qui blanditiis blanditiis et.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(14, 3, 3, 'Molestiae doloribus a exercitationem et voluptatem labore nisi.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(15, 3, 3, 'Voluptas voluptas perspiciatis blanditiis quam laborum nihil.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(16, 4, 3, 'Asperiores optio et omnis.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(17, 4, 3, 'Omnis provident dolorum quo et similique.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(18, 4, 3, 'Aliquam sed fugit id est perferendis.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(19, 4, 4, 'Facilis occaecati suscipit rem a ea est.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(20, 4, 2, 'Qui quo dolor explicabo nihil.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(21, 5, 4, 'Odio et aperiam repellendus dolor maxime.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(22, 5, 3, 'Voluptatem et dicta est et id voluptatem.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(23, 5, 3, 'Esse deserunt quibusdam repellat incidunt fugit sit aut.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(24, 5, 4, 'Officiis ut sunt dolore quo dolor sit quas.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(25, 5, 3, 'Ab soluta cupiditate consequatur quia.', NULL, '2021-08-23 09:31:39', '2021-08-23 09:31:39'),
(62, 1, 1, 'xxxxxx', NULL, '2021-08-25 14:23:42', '2021-08-25 14:23:42'),
(63, 1, 1, 'ssss', NULL, '2021-08-25 14:30:11', '2021-08-25 14:30:11'),
(64, 1, 1, 'dddd', NULL, '2021-08-25 14:30:59', '2021-08-25 14:30:59'),
(65, 1, 1, 'ddddd', NULL, '2021-08-25 14:34:57', '2021-08-25 14:34:57'),
(66, 1, 1, 'ddd', NULL, '2021-08-25 14:38:32', '2021-08-25 14:38:32'),
(67, 1, 1, 'ssssss', NULL, '2021-08-25 14:38:47', '2021-08-25 14:38:47'),
(68, 1, 1, 'llll', NULL, '2021-08-25 14:40:07', '2021-08-25 14:40:07'),
(69, 1, 1, 'll', NULL, '2021-08-25 14:45:48', '2021-08-25 14:45:48'),
(70, 1, 1, ';;;', NULL, '2021-08-25 14:46:25', '2021-08-25 14:46:25'),
(71, 1, 1, 'sssss', NULL, '2021-08-26 08:04:49', '2021-08-26 08:04:49'),
(72, 1, 1, 'sss', NULL, '2021-08-26 08:11:41', '2021-08-26 08:11:41'),
(73, 1, 1, 'ssss', NULL, '2021-08-26 09:07:51', '2021-08-26 09:07:51'),
(74, 1, 1, 'sssssssssssssssssssssss', NULL, '2021-08-26 09:12:09', '2021-08-26 09:12:09'),
(75, 1, 1, 'ssssssssssssssssaaa', NULL, '2021-08-26 09:12:25', '2021-08-26 09:12:25'),
(76, 1, 1, 'ssss', NULL, '2021-08-26 09:43:20', '2021-08-26 09:43:20'),
(77, 1, 1, ';;;;;', NULL, '2021-08-26 09:44:46', '2021-08-26 09:44:46'),
(78, 1, 1, ';;;', NULL, '2021-08-26 09:44:56', '2021-08-26 09:44:56'),
(79, 1, 4, ';;;;', NULL, '2021-08-26 09:46:49', '2021-08-26 09:46:49'),
(80, 1, 4, 'aaaaaa', NULL, '2021-08-26 09:47:19', '2021-08-26 09:47:19'),
(81, 3, 4, 'ssss', NULL, '2021-08-26 09:47:32', '2021-08-26 09:47:32'),
(82, 1, 4, 'hello', NULL, '2021-08-26 09:54:53', '2021-08-26 09:54:53'),
(83, 1, 1, 'hi', NULL, '2021-08-26 09:55:24', '2021-08-26 09:55:24'),
(84, 1, 4, 'hello again', NULL, '2021-08-26 09:55:54', '2021-08-26 09:55:54'),
(85, 1, 1, 'auth', NULL, '2021-08-26 09:57:58', '2021-08-26 09:57:58'),
(86, 1, 4, 'auth2', NULL, '2021-08-26 09:59:02', '2021-08-26 09:59:02'),
(87, 1, 1, 'another error ', NULL, '2021-08-26 09:59:48', '2021-08-26 09:59:48'),
(88, 1, 4, 'help', NULL, '2021-08-26 10:00:09', '2021-08-26 10:00:09'),
(89, 1, 1, 'hell is real', NULL, '2021-08-26 10:02:27', '2021-08-26 10:02:27'),
(90, 1, 4, 'd', NULL, '2021-08-26 10:02:51', '2021-08-26 10:02:51'),
(91, 1, 1, 'ggg', NULL, '2021-08-26 10:05:13', '2021-08-26 10:05:13'),
(92, 1, 1, 'hhhh', NULL, '2021-08-26 10:06:03', '2021-08-26 10:06:03'),
(93, 1, 1, 'jjj', NULL, '2021-08-26 10:06:18', '2021-08-26 10:06:18'),
(94, 1, 1, 'dddddddddddd', NULL, '2021-08-26 10:51:32', '2021-08-26 10:51:32'),
(95, 1, 2, 'dddddd', NULL, '2021-08-26 10:53:06', '2021-08-26 10:53:06'),
(96, 1, 2, 'ffff', NULL, '2021-08-26 10:53:10', '2021-08-26 10:53:10'),
(97, 1, 1, 'ddddddaaavvv', NULL, '2021-08-26 10:54:05', '2021-08-26 10:54:05'),
(98, 1, 1, 'mounted', NULL, '2021-08-26 10:59:06', '2021-08-26 10:59:06'),
(99, 1, 2, 'ddddd', NULL, '2021-08-26 10:59:48', '2021-08-26 10:59:48'),
(100, 1, 1, 'dddd', NULL, '2021-08-26 11:00:52', '2021-08-26 11:00:52'),
(101, 1, 2, 'it worked', NULL, '2021-08-26 11:01:11', '2021-08-26 11:01:11'),
(102, 1, 1, 'woow', NULL, '2021-08-26 11:01:48', '2021-08-26 11:01:48'),
(103, 1, 4, 'cute', NULL, '2021-08-26 11:03:26', '2021-08-26 11:03:26'),
(104, 1, 1, 'hu', NULL, '2021-08-26 11:12:15', '2021-08-26 11:12:15'),
(105, 1, 1, 'dddd', NULL, '2021-08-26 11:13:01', '2021-08-26 11:13:01'),
(106, 1, 1, 'اثننخ', NULL, '2021-08-26 11:38:14', '2021-08-26 11:38:14'),
(107, 1, 1, 'yeah', NULL, '2021-08-26 11:45:50', '2021-08-26 11:45:50'),
(108, 1, 4, 'oh yrah', NULL, '2021-08-26 11:46:13', '2021-08-26 11:46:13'),
(109, 1, 1, 'ddddddddd', NULL, '2021-08-26 12:21:41', '2021-08-26 12:21:41'),
(110, 1, 4, 'f u', NULL, '2021-08-26 12:22:28', '2021-08-26 12:22:28'),
(111, 1, 1, 'woooow', NULL, '2021-08-26 12:22:42', '2021-08-26 12:22:42'),
(112, 3, 1, 'hello from friends', NULL, '2021-08-26 12:24:48', '2021-08-26 12:24:48'),
(113, 3, 4, 'hello back from firends', NULL, '2021-08-26 12:25:04', '2021-08-26 12:25:04'),
(114, 1, 1, 'it\'s working', NULL, '2021-08-28 08:58:17', '2021-08-28 08:58:17'),
(115, 3, 1, 'hello', NULL, '2021-08-29 14:28:54', '2021-08-29 14:28:54'),
(116, 3, 1, 'hello', NULL, '2021-08-31 09:02:46', '2021-08-31 09:02:46'),
(117, 7, 1, 'hello fellas', NULL, '2021-08-31 09:34:02', '2021-08-31 09:34:02'),
(118, 8, 1, 'hello fellas', NULL, '2021-08-31 09:38:37', '2021-08-31 09:38:37'),
(119, 9, 1, 'ggggg', NULL, '2021-08-31 09:42:35', '2021-08-31 09:42:35'),
(120, 10, 1, 'hello fellas', NULL, '2021-08-31 09:43:38', '2021-08-31 09:43:38'),
(121, 10, 4, 'hi', NULL, '2021-08-31 09:44:44', '2021-08-31 09:44:44'),
(122, 11, 1, 'hhello buds', NULL, '2021-08-31 10:25:44', '2021-08-31 10:25:44'),
(123, 12, 1, 'hhello buds', NULL, '2021-08-31 10:28:43', '2021-08-31 10:28:43'),
(124, 13, 1, 'my best three buds', NULL, '2021-08-31 10:29:26', '2021-08-31 10:29:26'),
(125, 14, 1, 'hello three ', NULL, '2021-08-31 10:34:03', '2021-08-31 10:34:03'),
(126, 15, 1, 'i guess it is on', NULL, '2021-08-31 10:42:33', '2021-08-31 10:42:33'),
(127, 16, 1, 'oh boy', NULL, '2021-08-31 10:48:04', '2021-08-31 10:48:04'),
(128, 17, 1, 'i am done', NULL, '2021-08-31 10:52:04', '2021-08-31 10:52:04'),
(129, 17, 3, 'hello it\'s zain', NULL, '2021-08-31 10:57:14', '2021-08-31 10:57:14'),
(130, 17, 4, 'hello it\'s ali', NULL, '2021-08-31 10:59:18', '2021-08-31 10:59:18'),
(131, 18, 1, 'after a whileafter a while', NULL, '2021-08-31 13:29:30', '2021-08-31 13:29:30'),
(132, 19, 1, 'howdy', NULL, '2021-08-31 13:40:28', '2021-08-31 13:40:28'),
(133, 19, 3, 'hello', NULL, '2021-08-31 13:41:37', '2021-08-31 13:41:37'),
(134, 20, 1, 'y\'all ok', NULL, '2021-08-31 14:00:19', '2021-08-31 14:00:19'),
(135, 20, 4, 'ddd', NULL, '2021-08-31 14:00:46', '2021-08-31 14:00:46'),
(136, 21, 1, 'well', NULL, '2021-08-31 14:03:07', '2021-08-31 14:03:07'),
(137, 21, 4, 'd', NULL, '2021-08-31 14:03:44', '2021-08-31 14:03:44'),
(138, 21, 1, 'dddd', NULL, '2021-08-31 14:06:41', '2021-08-31 14:06:41'),
(139, 21, 4, 'hell yea', NULL, '2021-08-31 14:11:16', '2021-08-31 14:11:16'),
(140, 22, 1, 'ddd', NULL, '2021-08-31 14:11:51', '2021-08-31 14:11:51'),
(141, 22, 4, 'woow', NULL, '2021-08-31 14:12:14', '2021-08-31 14:12:14'),
(142, 23, 1, 'heyy', NULL, '2021-08-31 15:38:29', '2021-08-31 15:38:29'),
(143, 23, 4, 'dd', NULL, '2021-08-31 15:38:54', '2021-08-31 15:38:54'),
(144, 24, 1, 'hope it works', NULL, '2021-09-01 09:05:16', '2021-09-01 09:05:16'),
(145, 24, 4, 'hi', NULL, '2021-09-01 09:05:44', '2021-09-01 09:05:44'),
(146, 25, 1, 'hello', NULL, '2021-09-01 09:33:57', '2021-09-01 09:33:57'),
(147, 26, 1, 'hello', NULL, '2021-09-01 09:53:42', '2021-09-01 09:53:42'),
(148, 27, 1, 'hello', NULL, '2021-09-01 09:59:53', '2021-09-01 09:59:53'),
(149, 28, 1, 'after show 2', NULL, '2021-09-01 10:02:01', '2021-09-01 10:02:01'),
(150, 28, 2, 'hi it\'s mans', NULL, '2021-09-01 10:27:20', '2021-09-01 10:27:20'),
(151, 28, 5, 'hello it\'s mahmoud', NULL, '2021-09-01 10:29:44', '2021-09-01 10:29:44'),
(152, 28, 4, 'adele my friends from ali', 'a6ff985098c4696499f9464e27ad246e.mp3', '2021-09-01 11:33:35', '2021-09-01 11:33:35'),
(153, 29, 1, 'final group', NULL, '2021-09-01 12:31:26', '2021-09-01 12:31:26'),
(154, 29, 4, 'hello it\'s ali', NULL, '2021-09-01 12:31:59', '2021-09-01 12:31:59'),
(155, 29, 5, 'my pic', 'e0d2a1fdbf58c6b2e64748988e927855.jpg', '2021-09-01 12:33:04', '2021-09-01 12:33:04');

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
(1, '0000_00_00_000000_create_websockets_statistics_entries_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_08_21_154432_create_conversations_table', 1),
(7, '2021_08_22_135033_create_conversation_user_table', 1),
(8, '2021_08_22_151014_create_messages_table', 1);

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
(1, 'Sami', 'sami@gmail.com', '2021-08-23 09:31:35', '$2y$10$thUUeT7nVr2eNJI7G80WPeBd.gYwEq9OuAzN7B7MLunATf2K8BgE2', 'gnaJ64cZBQIT8Up2ygVzoSD9nuWkhP8dmNJ94xJpTPb3F8mSHpMFbQJdctT0', '2021-08-23 09:31:35', '2021-08-23 09:31:35'),
(2, 'Mansour', 'mansour@gmail.com', '2021-08-23 09:31:35', '$2y$10$8zmX5iTQr6pYNenrTWoekePomqT8Y54Y7kALXlnPcMQJy81rJX3bu', '0jvtneNQTD9jqaqByJF3LxqkHvsCAlqzwFmnYfIXoXGFJFryPocZZ3Qug9oG', '2021-08-23 09:31:35', '2021-08-23 09:31:35'),
(3, 'Zain', 'zain@gmail.com', '2021-08-23 09:31:35', '$2y$10$YzthZNoFh9nx1vYBkEW43e1H7RkTNfVgfn3dMTFZHMLvIGEalzktW', '9aeWul5wihoH9QetASpjKEwW7QAyJWMqrmrihB93REr8BfOCF4iZvptcvhjp', '2021-08-23 09:31:36', '2021-08-23 09:31:36'),
(4, 'Ali', 'ali@gmail.com', '2021-08-23 09:31:36', '$2y$10$bYYYppyHRqH7snKJVWJwvOFJniHSjFEhgqBa2kFcTQiHABc5BpBUS', 'joUmjhlQ6ltEiGv9NTTHRgQ5wJCnyoNdRNCfLIzoNRa95tEl9ydxHdEUVLjs', '2021-08-23 09:31:36', '2021-08-23 09:31:36'),
(5, 'mahmoud', 'mahmoud@gmail.com', '2021-08-23 09:31:36', '$2y$10$bYYYppyHRqH7snKJVWJwvOFJniHSjFEhgqBa2kFcTQiHABc5BpBUS', 'gNnc2Hw7wzXTtpI4yvE763xsMax0MN9eoKog1jo8QpKuVWkWzY02iDtYWrvr', '2021-08-23 09:31:36', '2021-08-23 09:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_user_id_foreign` (`user_id`);

--
-- Indexes for table `conversation_user`
--
ALTER TABLE `conversation_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversation_user_conversation_id_foreign` (`conversation_id`),
  ADD KEY `conversation_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `conversation_user`
--
ALTER TABLE `conversation_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `conversation_user`
--
ALTER TABLE `conversation_user`
  ADD CONSTRAINT `conversation_user_conversation_id_foreign` FOREIGN KEY (`conversation_id`) REFERENCES `conversations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conversation_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
