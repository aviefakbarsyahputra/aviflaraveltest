-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2023 at 01:19 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avifakbarsyah`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `teacher_id`, `created_at`, `updated_at`) VALUES
(1, '1A', 7, '2023-03-03 14:08:47', '2023-03-03 14:08:47'),
(2, '1B', 3, '2023-03-03 14:08:47', '2023-03-03 14:08:47'),
(3, '1C', 2, '2023-03-03 14:08:47', '2023-03-03 14:08:47'),
(4, '1D', 1, '2023-03-03 14:08:47', '2023-03-03 14:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `extracurriculars`
--

CREATE TABLE `extracurriculars` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extracurriculars`
--

INSERT INTO `extracurriculars` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Basket', NULL, NULL),
(2, 'Voli', NULL, NULL),
(3, 'Pramuka', NULL, NULL),
(4, 'Sepak Bola', NULL, NULL),
(5, 'Badminton', NULL, NULL),
(6, 'PMR', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_03_170758_create_students_table', 2),
(6, '2023_03_03_171725_add_gender_column_to_students_table', 3),
(9, '2023_03_03_173114_change_gender_attributes_in_students_table', 4),
(10, '2023_03_03_174328_create_class_table', 4),
(12, '2023_03_03_174919_add_class_id_column_to_students_table', 5),
(14, '2023_03_03_200256_add_unique_rule_in_class_table', 6),
(15, '2023_03_06_072615_create_extracurriculars_table', 7),
(18, '2023_03_06_075455_create_student_extracurricular_table', 8),
(19, '2023_03_06_095904_create_teachers_table', 9),
(20, '2023_03_06_102307_add_techer_id_column_to_class_table', 10),
(21, '2023_03_07_151938_add_soft_delete_column_to_students_table', 11),
(23, '2023_03_07_172351_add_image_column_to_students_table', 12),
(24, '2023_03_07_184747_create_roles_table', 13),
(25, '2023_03_07_190216_add_role_id_column_to_users_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2023-03-07 11:58:28', '2023-03-07 11:58:28'),
(2, 'Techer', '2023-03-07 11:58:28', '2023-03-07 11:58:28'),
(3, 'Student', '2023-03-07 11:58:28', '2023-03-07 11:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nis` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `gender`, `nis`, `class_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Cindy Yuvia', 'P', '1411500497', 1, NULL, '2023-03-03 14:08:47', '2023-03-03 14:08:47', NULL),
(2, 'Haruka Nakagawa', 'P', '1411500777', 1, NULL, '2023-03-03 14:08:47', '2023-03-03 14:08:47', NULL),
(3, 'Avief Akbarsyah Putra', 'L', '1411500666', 1, NULL, '2023-03-03 14:08:47', '2023-03-06 18:28:59', NULL),
(4, 'Cordell Lynch', 'P', '4130644988', 1, NULL, '2023-03-03 16:22:25', '2023-03-03 16:22:25', NULL),
(5, 'Precious Kozey', 'L', '139685825', 4, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(6, 'Mrs. Mabel Becker I', 'P', '7493678290', 3, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(7, 'Dr. General O\'Keefe III', 'L', '6550928771', 1, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(8, 'Jayde Kling', 'L', '3391774925', 3, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(9, 'Daniella Moore', 'L', '851962931', 3, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(10, 'Dion Schneider', 'P', '7844943173', 1, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(11, 'Jerod Torp', 'P', '5514946702', 1, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(12, 'Ms. Norene Oberbrunner I', 'L', '9134576462', 2, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(13, 'Prof. Isai Keeling MD', 'L', '7903115621', 3, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(14, 'Prof. Leola Bartell', 'L', '5403195232', 2, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(15, 'Ericka Murray', 'L', '9625801045', 2, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(16, 'Lennie Crona', 'P', '5170394284', 2, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(17, 'Matilde Russel II', 'L', '7058159562', 1, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(18, 'Gunnar Kris', 'P', '6491078468', 3, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(19, 'Giovanni Spinka', 'P', '8139657489', 3, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(20, 'Hershel D\'Amore MD', 'L', '8970298608', 4, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(21, 'Billie Dicki', 'P', '4469516508', 1, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(22, 'Antonio Langosh', 'P', '4085966816', 4, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(23, 'Karina Medhurst', 'P', '8752119229', 1, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(24, 'Frida Halvorson Sr.', 'P', '7722132881', 4, NULL, '2023-03-03 16:25:14', '2023-03-03 16:25:14', NULL),
(25, 'QBLDR', 'L', '3174101310', 1, NULL, NULL, '2023-03-07 08:23:59', '2023-03-07 08:23:59'),
(26, 'Eloquent', 'P', '3174101311', 2, NULL, '2023-03-03 17:04:24', '2023-03-07 09:03:57', NULL),
(27, 'Taylor Swift', 'P', '1411500478', 2, NULL, '2023-03-06 17:06:58', '2023-03-06 17:06:58', NULL),
(28, 'Mariah Carey', 'P', '1411500479', 3, NULL, '2023-03-06 17:17:33', '2023-03-06 17:17:33', NULL),
(29, 'Atthoriq Syechalam', 'L', '2011500497', 1, NULL, '2023-03-06 17:25:02', '2023-03-06 17:25:02', NULL),
(30, 'James Bond', 'L', '1411505642', 1, NULL, '2023-03-06 19:01:46', '2023-03-06 19:01:46', NULL),
(31, 'Davnee Keen', 'P', '1411500567', 4, NULL, '2023-03-07 06:11:55', '2023-03-07 09:01:52', NULL),
(33, 'Ophelia Adams', 'L', '5851137830', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(34, 'Kayley Gottlieb', 'L', '4187329518', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(35, 'Montana McDermott', 'L', '1962125580', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(36, 'Jackeline Crona', 'L', '3668343031', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(37, 'Shanel Senger', 'P', '4717825117', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(38, 'Anthony Abshire IV', 'L', '9805828095', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(39, 'Xzavier Beier', 'P', '824972631', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(40, 'Coty Marquardt', 'P', '1770069333', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(41, 'Althea Kihn', 'P', '769251539', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(42, 'Octavia Dietrich', 'P', '304775478', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(43, 'Mr. Devan Heathcote', 'P', '4263250394', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(44, 'Isabella Herman', 'L', '6220298252', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(45, 'Reid Harris', 'L', '8301466834', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(46, 'Bethel Gaylord', 'L', '1643873833', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(47, 'Alvena Baumbach', 'L', '9560027590', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(48, 'Miss Laury Corkery', 'L', '9565579622', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(49, 'Prof. Toy Carter', 'L', '2498843664', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(50, 'Karen Kuhic', 'L', '2982902126', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(51, 'Deangelo Lang', 'P', '5094806488', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(52, 'Reanna Bruen III', 'P', '7065588938', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(53, 'Mr. Cade Heller', 'L', '1032850363', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(54, 'Casimir Yundt', 'P', '224997105', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(55, 'Prof. Tillman Koch I', 'L', '2990017896', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(56, 'Ms. Gina Nicolas', 'P', '5608692653', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(57, 'Eunice Hauck', 'P', '14090469', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(58, 'Arjun Gottlieb', 'L', '7080362583', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(59, 'Prof. Xavier Kulas', 'L', '6980410027', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(60, 'Dr. Dayton Lang', 'P', '7828021023', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(61, 'Courtney Denesik', 'P', '7103857258', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(62, 'Freddy Wuckert', 'P', '5265701117', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(63, 'Brando Kuhlman', 'P', '3123869647', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(64, 'Nia Mitchell', 'L', '7777153571', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(65, 'Ms. Harmony Nitzsche', 'P', '7927269205', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(66, 'Loraine Gulgowski', 'L', '4308490786', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(67, 'Dr. Frederik Kunze I', 'L', '8667992487', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(68, 'Niko Feest', 'P', '1497858233', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(69, 'Frieda Crist', 'L', '6764859648', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(70, 'Velma O\'Keefe', 'P', '5297522219', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(71, 'Cameron Cruickshank', 'L', '2645857616', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(72, 'Sigrid Thompson Jr.', 'P', '1156663292', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(73, 'Elbert Gutkowski III', 'P', '797030746', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(74, 'Prof. Lauriane Kirlin', 'P', '7035421979', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(75, 'Prof. Christopher Feil MD', 'P', '949854446', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(76, 'Karine Lubowitz', 'P', '5125047693', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(77, 'Dr. Eleazar Yost V', 'P', '4080237150', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(78, 'Clemmie Zieme', 'L', '4280903198', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(79, 'Ms. Mia Crona', 'L', '9814249073', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(80, 'Hailey Reilly', 'P', '7040910957', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(81, 'Wava Collier', 'L', '2354425901', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(82, 'Amalia Mayer V', 'P', '7672180008', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(83, 'Keely Mills', 'L', '277092660', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(84, 'Tamara Marks', 'L', '2647982587', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(85, 'Effie Reynolds', 'P', '7256961807', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(86, 'Angus Nikolaus', 'P', '9017175481', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(87, 'Jimmy Wisoky IV', 'L', '1277618923', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(88, 'Stacey Stehr', 'P', '3145833592', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(89, 'Prof. Alisha Batz', 'P', '4697506007', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(90, 'Mrs. Amalia Steuber', 'L', '3852129842', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(91, 'Jay Lueilwitz', 'L', '2915840538', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(92, 'Cynthia Durgan', 'L', '7305628918', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(93, 'Olaf Moen', 'L', '9645937300', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(94, 'Seth Lockman', 'P', '5224576315', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(95, 'Pietro Gusikowski III', 'P', '188121789', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(96, 'Eriberto Feeney', 'L', '2158556981', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(97, 'Reva Feest', 'L', '9099311206', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(98, 'Brown Jenkins', 'P', '7861688335', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(99, 'Mr. Esteban Conn Sr.', 'L', '733425997', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(100, 'Darrell Balistreri', 'L', '5721741470', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(101, 'Mr. Major Moen Sr.', 'L', '1652359714', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(102, 'Lori Lowe', 'P', '178695616', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(103, 'Ms. Zola Fahey V', 'P', '9249908525', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(104, 'Cyril West DVM', 'L', '6032705702', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(105, 'Oceane Boehm Sr.', 'P', '4956685613', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(106, 'Cassandre Lockman', 'P', '5272033548', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(107, 'Ms. Angeline Stoltenberg V', 'L', '5100244554', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(108, 'Dillan Auer IV', 'P', '6304956174', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(109, 'Prof. Clare Witting', 'L', '4231025882', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(110, 'Prof. Alejandrin Gorczany', 'P', '894014503', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(111, 'Hettie Ratke', 'L', '9119123893', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(112, 'Prof. Gabrielle Schimmel', 'L', '5258425298', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(113, 'Myah Kulas', 'L', '8940452607', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(114, 'Palma Beer', 'P', '1498513639', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(115, 'Marco Grant', 'L', '4741174328', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(116, 'Parker Hand', 'L', '2049154738', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(117, 'Timothy Leuschke', 'P', '1388867386', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(118, 'Benjamin Kshlerin', 'L', '6622609778', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(119, 'Dr. Chelsey Yost', 'P', '9100714955', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(120, 'Ms. Savannah Cole', 'L', '9612180424', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(121, 'Coty Herman', 'P', '6805544471', 1, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(122, 'Miss Jacquelyn Davis I', 'L', '8397194724', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(123, 'Maci Homenick', 'P', '388153164', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(124, 'Prof. Davonte Pagac', 'P', '6452121023', 3, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(125, 'Prof. Keyshawn Rosenbaum', 'L', '432670349', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(126, 'Dr. Jennyfer Kiehn', 'P', '1865433507', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(127, 'Mr. Carol Batz Jr.', 'L', '7816484376', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(128, 'Prof. Ramon Pollich', 'L', '7515926902', 2, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(129, 'Miss Ruby Watsica Jr.', 'L', '6333704400', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(130, 'Coy Effertz', 'L', '3128838536', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(131, 'Ms. Lia Ward III', 'P', '5652064628', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(132, 'Beryl Raynor', 'P', '5496408028', 4, NULL, '2023-03-07 09:14:40', '2023-03-07 09:14:40', NULL),
(133, 'Alexandra Willms', 'P', '7869605608', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(134, 'Fausto Carter', 'P', '4138399254', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(135, 'Raheem O\'Hara', 'L', '584624933', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(136, 'Jasmin Schinner Sr.', 'P', '9610660636', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(137, 'Tommie Schultz', 'L', '120847194', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(138, 'Sister Jones', 'L', '526706615', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(139, 'Mathilde Heaney', 'P', '1582604757', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(140, 'Mrs. Valentine Upton II', 'L', '4861349776', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(141, 'Dr. Jett Stark DDS', 'L', '4617595538', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(142, 'Dr. Delta West Sr.', 'L', '5046815975', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(143, 'Hal Blanda', 'L', '9786289626', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(144, 'Prof. Gilda Balistreri', 'L', '132407790', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(145, 'Mrs. Antonetta Legros', 'L', '1633691873', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(146, 'Henri Bode', 'P', '4912710047', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(147, 'Hillard Swift', 'L', '6578331664', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(148, 'Prof. Angelo Gleason Sr.', 'P', '4417021870', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(149, 'Jordyn Turner', 'P', '4383694203', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(150, 'Mrs. Adeline Kozey I', 'L', '8572487448', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(151, 'Emilie Sawayn', 'L', '5979331345', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(152, 'Adelbert Gerhold', 'L', '4565989249', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(153, 'Rocio Hirthe', 'L', '1635031732', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(154, 'Gertrude Murazik', 'L', '6768410476', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(155, 'Kathryn Waters', 'L', '7462648611', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(156, 'Frieda Kub', 'L', '7927335227', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(157, 'Florida Sauer', 'L', '5434119092', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(158, 'Prof. Braulio Greenfelder', 'L', '3347728539', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(159, 'Cora Spencer', 'L', '1251690729', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(160, 'Pierre Wunsch', 'L', '758389119', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(161, 'Richard Hartmann', 'P', '7486046838', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(162, 'Eva Gleason', 'P', '9575918812', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(163, 'Malinda Cormier', 'L', '3795043796', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(164, 'Finn Pfannerstill', 'L', '4573130736', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(165, 'Lesly Wisozk', 'L', '2663838586', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(166, 'Tabitha Boyle', 'L', '6504056545', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(167, 'Cathryn Lueilwitz', 'P', '7430908249', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(168, 'Devin Davis Jr.', 'P', '2137399107', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(169, 'Prof. Timmothy O\'Reilly', 'L', '4446775332', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(170, 'Prof. Princess Reynolds IV', 'L', '2408062773', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(171, 'Jazmyn Labadie MD', 'P', '878868957', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(172, 'Andrew Donnelly DDS', 'L', '1758753390', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(173, 'Prof. Unique Gleichner MD', 'P', '4128161044', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(174, 'Gabrielle Kirlin', 'L', '5213142624', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(175, 'Prof. Roy Roberts IV', 'P', '6500916575', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(176, 'Eileen Beier', 'P', '4494892324', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(177, 'Mrs. America Kovacek', 'L', '7893043278', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(178, 'Madelynn Mann', 'P', '2660884722', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(179, 'Mr. Isidro Collier', 'L', '9996641080', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(180, 'Ilene Ledner', 'L', '8302884145', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(181, 'Alicia Eichmann', 'L', '3416614991', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(182, 'Susanna Gaylord V', 'P', '7271080971', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(183, 'Laurence Kemmer', 'P', '844881668', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(184, 'Miss Angelita Kutch', 'P', '9074867964', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(185, 'Angelo Thiel', 'L', '4731491829', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(186, 'Miss Adrienne Hahn V', 'P', '8425974272', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(187, 'Dewitt Schmitt', 'L', '3950711491', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(188, 'Luis Cassin', 'P', '6427106814', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(189, 'Mr. Eladio Gottlieb MD', 'L', '4785667592', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(190, 'Mrs. Zoie Hickle V', 'L', '198523220', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(191, 'Susana Paucek II', 'L', '6268169610', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(192, 'Dr. Orie Stark Sr.', 'L', '301354552', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(193, 'Evert Gerlach', 'P', '7519697878', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(194, 'Mitchell Witting Jr.', 'L', '8115159786', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(195, 'Prof. Ottis Lakin', 'P', '5918562322', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(196, 'Destini Fritsch', 'P', '2301839368', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(197, 'Briana Anderson', 'L', '2132780526', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(198, 'Rahul Hoeger', 'P', '6096597949', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(199, 'Christa Schaden', 'L', '8174460416', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(200, 'Ms. Dorothea Thompson I', 'P', '4248423290', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(201, 'Melody Deckow', 'L', '8639471738', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(202, 'Ms. Rosetta Dare DDS', 'L', '1175099870', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(203, 'Alexandro Crooks', 'P', '7428953641', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(204, 'Ms. Jaquelin Gutmann', 'L', '2165033853', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(205, 'Salvador Doyle', 'P', '3074180584', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(206, 'Allen Russel', 'P', '67725641', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(207, 'Prof. Magnus Larson II', 'L', '5824312259', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(208, 'Prof. Agnes Feest', 'L', '7304077789', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(209, 'Dixie Murray', 'L', '6563358952', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(210, 'Michelle Stamm', 'P', '3793744357', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(211, 'Blaise Will', 'P', '2141626881', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(212, 'Aletha Wuckert I', 'L', '9292581913', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(213, 'Tierra Reichel MD', 'L', '4683689164', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(214, 'Mallie Mertz', 'P', '6457320319', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(215, 'Krystal Simonis', 'L', '618276639', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(216, 'Ethyl Larson Sr.', 'L', '4250034402', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(217, 'Maegan Cartwright', 'L', '6755453383', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(218, 'Myrtie Lueilwitz', 'L', '9536572701', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(219, 'Dr. Thaddeus Torphy IV', 'L', '7055354268', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(220, 'Mrs. Shanel Ernser DDS', 'L', '730396636', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(221, 'Fidel Hackett PhD', 'L', '5039623340', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(222, 'Marcelo Bergnaum', 'L', '8275190828', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(223, 'Miss Ludie Botsford', 'L', '6665663126', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(224, 'Maxwell Gutmann', 'P', '8039011242', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(225, 'Johann Heaney', 'L', '1859335884', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(226, 'Liliana Larkin', 'P', '4318484464', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(227, 'Beryl Keebler', 'L', '2398461753', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(228, 'Kendra Gutkowski', 'L', '2327289546', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(229, 'Clarissa Crona', 'P', '5264583453', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(230, 'Morgan Hauck', 'L', '9212088106', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(231, 'Dr. Ben Fisher', 'P', '5396130341', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(232, 'Alaina Heller', 'L', '2503619384', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(233, 'Elias Davis', 'L', '578911757', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(234, 'Miss Tia Roob', 'L', '9661250308', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(235, 'Aaliyah Beatty II', 'P', '1114524236', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(236, 'Crystel Schamberger', 'L', '6915561270', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(237, 'Myrtie Schaefer Jr.', 'P', '4030288945', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(238, 'Laurel Dicki', 'P', '4658545962', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(239, 'Prof. Mortimer Runolfsson', 'P', '3092705924', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(240, 'Miguel Kessler', 'P', '2470987368', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(241, 'Verona Rodriguez', 'P', '6427288794', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(242, 'Francis Crist', 'L', '7660521733', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(243, 'Prof. Drake Walsh Sr.', 'L', '8487022605', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(244, 'Chance Pollich', 'L', '1781059135', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(245, 'Chadrick Grimes', 'P', '4357315676', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(246, 'Allan Kuphal V', 'L', '6093868701', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(247, 'Maye Bergnaum', 'L', '3578305914', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(248, 'Dr. Rafael Corkery', 'P', '205678444', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(249, 'Eusebio Fritsch', 'P', '3588566974', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(250, 'Prof. Elian Hahn V', 'L', '2738275451', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(251, 'Mrs. Wilma Wiza', 'L', '48899275', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(252, 'Miss Shyanne Senger Sr.', 'L', '7023314200', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(253, 'Angus Simonis', 'P', '7659439775', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(254, 'Icie Wiza', 'L', '2112857578', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(255, 'Faye Cartwright', 'L', '8642971668', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(256, 'Rafaela Gorczany', 'L', '6371740689', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(257, 'Cleora Rice', 'P', '6352832064', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(258, 'Prof. Bo Willms', 'L', '5375506361', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(259, 'Estell Mueller', 'L', '4292709906', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(260, 'Ashtyn Romaguera', 'L', '8402485715', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(261, 'Andy Mraz', 'P', '338281567', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(262, 'Vern Upton', 'P', '6681474402', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(263, 'Mark Hammes', 'P', '2775426927', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(264, 'Mr. Rory Lebsack', 'P', '9179063651', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(265, 'Miss Pearlie Herzog', 'L', '8475002952', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(266, 'Edgardo Jaskolski', 'L', '5928041308', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(267, 'Bridgette Nitzsche', 'L', '2140303399', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(268, 'Alexandrea Bode MD', 'P', '9207765076', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(269, 'Gregorio Rutherford', 'P', '8675903464', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(270, 'Prof. Tremaine Schumm III', 'P', '3713836321', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(271, 'Luisa Hills', 'P', '1384131478', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(272, 'Dr. Palma Sporer II', 'P', '7805955038', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(273, 'Delores Goyette', 'L', '8005168441', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(274, 'Mr. Adolfo Breitenberg', 'P', '9832176060', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(275, 'Edwina Turcotte', 'P', '9428684924', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(276, 'Genevieve Kozey', 'L', '1607856183', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(277, 'Terrence Rohan Sr.', 'L', '7942695799', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(278, 'Tomasa Hoeger', 'L', '869969292', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(279, 'Dr. Lennie Ullrich DVM', 'P', '3355173492', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(280, 'Fannie Blick', 'P', '5585428309', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(281, 'Ms. Christelle Roberts MD', 'L', '6307511654', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(282, 'Miss Earline Schulist DDS', 'P', '7714953421', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(283, 'Shaniya Leannon', 'L', '325460536', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(284, 'Mariana Leuschke', 'L', '3280809593', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(285, 'Prof. Demarcus Gutmann I', 'L', '1756700956', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(286, 'Antwon Kiehn', 'L', '8063077188', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(287, 'Devin Dooley', 'L', '8265555361', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(288, 'Kiel Hermiston', 'P', '4810751157', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(289, 'Oren Bogisich DDS', 'P', '5019727761', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(290, 'Mr. Keenan Willms', 'L', '351890243', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(291, 'Arlie Stroman MD', 'L', '7292584512', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(292, 'Ephraim Schaden', 'P', '9351234931', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(293, 'Maynard Quitzon', 'L', '1623352031', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(294, 'Fidel Emard', 'L', '6764321968', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(295, 'Kenna Carter Sr.', 'L', '1531274352', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(296, 'Morton Ratke', 'P', '6852903461', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(297, 'Dr. Samson Terry', 'P', '6598935757', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(298, 'Craig Daugherty', 'P', '22817623', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(299, 'Dallas Ebert', 'L', '3850202007', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(300, 'Ashly White', 'L', '4495055972', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(301, 'Malcolm Kuhlman', 'P', '4283571077', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(302, 'Mrs. Zaria Gleason', 'P', '8665699686', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(303, 'Cicero Price', 'P', '5781976034', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(304, 'Jordy Leuschke', 'L', '565372593', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(305, 'Mr. Baron Waelchi Sr.', 'P', '6488821638', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(306, 'Vida Heller', 'L', '8459649948', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(307, 'Ruben Kassulke', 'L', '2113606023', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(308, 'Ashtyn Gerhold Jr.', 'P', '5304429225', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(309, 'Kieran Hickle', 'L', '874824940', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(310, 'Augustus Reinger II', 'L', '5223662691', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(311, 'Deborah Steuber', 'L', '2515333924', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(312, 'Evan Robel MD', 'P', '2958034641', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(313, 'Mr. Russel Stroman DVM', 'P', '285130862', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(314, 'Melody Parisian', 'P', '7145350174', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(315, 'Camden Howell Sr.', 'P', '1255094659', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(316, 'Modesto Kunde', 'P', '5500784293', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(317, 'Janet Jerde', 'P', '592295530', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(318, 'Louvenia Conn', 'P', '933901259', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(319, 'Prof. Velva Gleichner PhD', 'P', '2120135317', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(320, 'Mr. Paul Bailey', 'P', '717455675', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(321, 'Miss Muriel Kertzmann', 'P', '922821404', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(322, 'Miss Elena Borer', 'L', '5554142796', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(323, 'Connie Wehner III', 'L', '8300941847', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(324, 'Scarlett Okuneva', 'P', '226133108', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(325, 'Ernest Schroeder', 'P', '7689752380', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(326, 'Allene Bednar', 'L', '2704214698', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(327, 'Prof. Oscar Kuhn Jr.', 'L', '8316602496', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(328, 'Samantha Ebert', 'P', '3545626393', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(329, 'Dr. Astrid Upton Jr.', 'L', '338659', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(330, 'Tressie Crooks', 'L', '2029794784', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(331, 'Hobart Prohaska', 'L', '6730922160', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(332, 'Tina Lubowitz', 'P', '4591623347', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(333, 'Charles Stanton', 'L', '4540503016', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(334, 'Miss Nyasia Collier MD', 'L', '3373339280', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(335, 'Prof. Elvis Gerhold I', 'L', '6359379883', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(336, 'Jena Wiza', 'L', '9482190716', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(337, 'Dashawn Kohler', 'P', '7539812092', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(338, 'Dawson Hettinger V', 'P', '9383584310', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(339, 'Mariano Beer', 'P', '1579302281', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(340, 'Ms. Tina O\'Hara DVM', 'L', '5575934834', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(341, 'Prof. Marcelo Kohler III', 'L', '8212482240', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(342, 'Mr. Gunner Satterfield IV', 'L', '937463022', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(343, 'Prof. Maryse Hartmann MD', 'P', '8280165369', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(344, 'Dorothy Murphy', 'P', '5975446700', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(345, 'Ruthie D\'Amore', 'P', '2804381409', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(346, 'Dr. Lucie Von', 'P', '3108496202', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(347, 'Marietta Block DDS', 'P', '8734072414', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(348, 'Dr. Zola Cassin II', 'P', '4132962191', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(349, 'Edwina Tillman', 'L', '6100316481', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(350, 'Brent Pacocha MD', 'L', '9967074937', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(351, 'Araceli Schroeder', 'L', '488413325', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(352, 'Royce Botsford DVM', 'P', '5771455556', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(353, 'Josie Kuhlman', 'L', '3026944214', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(354, 'Daphnee Jenkins', 'L', '8248650089', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(355, 'Teresa Marks', 'P', '11235525', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(356, 'Florian Kirlin', 'P', '9678901762', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(357, 'Ms. Selina Bosco PhD', 'L', '1163877568', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(358, 'Bettie Kemmer', 'P', '7304770307', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(359, 'Geovany Kuhlman', 'P', '3017295495', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(360, 'Gino Lowe', 'L', '6580975772', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(361, 'Eusebio McKenzie V', 'P', '5986351314', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(362, 'Drew O\'Keefe', 'P', '9466171006', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(363, 'Mrs. Christy Braun', 'L', '2449134681', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(364, 'Trevion Hane', 'P', '6287341992', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(365, 'Mohammad Gislason', 'L', '2709703243', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(366, 'Ezekiel Hansen', 'L', '3707059530', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(367, 'Prof. Carroll Howe', 'L', '2745786320', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(368, 'Fern Wiegand', 'L', '4458211684', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(369, 'Mr. Hayden Tillman II', 'L', '4835167909', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(370, 'Elisa Douglas', 'L', '3223244934', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(371, 'Mrs. Francisca Carroll', 'P', '1936881682', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(372, 'Mrs. Marietta Wilderman', 'P', '9912253916', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(373, 'Colten Howell III', 'L', '6623410826', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(374, 'Dr. Bessie Nicolas', 'P', '5395812952', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(375, 'Kitty Kirlin', 'L', '8216358647', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(376, 'Rowland Goyette', 'L', '4441595580', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(377, 'Mr. Junior Langosh', 'P', '6795362002', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(378, 'Tierra Kozey', 'P', '8328221940', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(379, 'Andy Wolff', 'P', '2421064250', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(380, 'Mr. Nigel Ward', 'L', '4777053325', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(381, 'Kathryn Jacobson', 'P', '1563732158', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(382, 'Ms. Neva Kutch', 'L', '1880124009', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(383, 'Maryjane Watsica', 'L', '4024561626', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(384, 'Emmet Schumm DDS', 'L', '7307430744', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(385, 'Dr. Burley Predovic Jr.', 'P', '1478055493', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(386, 'Courtney Donnelly', 'P', '9532301042', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(387, 'Celine Feil', 'P', '2477128365', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(388, 'Afton Price', 'P', '6603582724', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(389, 'Isai Bahringer', 'P', '517525751', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(390, 'Ms. Antonietta Langworth IV', 'L', '863202847', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(391, 'Ally Vandervort', 'L', '1301993371', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(392, 'Dr. Lavina Hirthe V', 'P', '1377972086', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(393, 'Prof. Magdalen Schmitt', 'P', '9285565635', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(394, 'Jayden Emmerich', 'P', '9922370791', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(395, 'Brown Bednar', 'L', '9120605532', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(396, 'Prof. Carson Harvey DDS', 'P', '6178707060', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(397, 'Dr. Ressie Fadel IV', 'L', '6385284329', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(398, 'Ms. Aileen Maggio', 'L', '969042816', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(399, 'Prof. Korey Kassulke', 'L', '6446836604', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(400, 'Carmen Emard DVM', 'P', '2933719075', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(401, 'Clemens Christiansen', 'P', '6101161330', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(402, 'London Spencer DVM', 'L', '8030279812', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(403, 'Ms. Nona Kreiger I', 'P', '3579018911', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(404, 'Trystan Adams', 'P', '6166031421', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(405, 'Amya Fadel', 'L', '8664755364', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(406, 'Rod Thompson', 'L', '6363700289', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(407, 'Dr. Zella Quigley III', 'L', '4527283220', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(408, 'Mack Mayer', 'L', '780590246', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(409, 'Giles Herman I', 'L', '1588697548', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(410, 'Dayne Zulauf', 'L', '2201072880', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(411, 'Leann Ledner', 'L', '3428573822', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(412, 'Mr. Markus Herman', 'L', '4621875621', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(413, 'Breanne Leuschke', 'L', '4418122807', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(414, 'Brenden Johns', 'P', '7513474591', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(415, 'Jude Nitzsche', 'P', '676607187', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(416, 'Johanna Wilderman', 'L', '8561527767', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(417, 'Ms. Betsy Prohaska', 'P', '1008249941', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(418, 'Alford Lueilwitz', 'P', '7571056116', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(419, 'Citlalli Bailey', 'L', '608387874', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(420, 'Paxton Feest', 'P', '7210773799', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(421, 'Anne Reichel', 'L', '7778028685', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(422, 'Gus Ziemann III', 'P', '2379567262', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(423, 'Kathleen Hoeger', 'L', '7754995414', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(424, 'Sandrine Lesch', 'P', '5949608371', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(425, 'Jeramy Graham', 'L', '3103589410', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(426, 'Dr. Marcos Kris', 'P', '4505062425', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(427, 'Toby Little', 'L', '7783824669', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(428, 'Hollie Raynor', 'L', '9025149468', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(429, 'Renee Schneider', 'L', '3214106060', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(430, 'Alexander Lynch', 'P', '71103201', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(431, 'Mr. Brice Ledner', 'L', '4817878255', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(432, 'Ms. May Farrell', 'P', '3393640557', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(433, 'Alfred McCullough', 'L', '1658298878', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(434, 'Jefferey Gulgowski', 'P', '8455549530', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(435, 'Keeley Torp Jr.', 'L', '3882867152', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(436, 'Mozelle Franecki', 'L', '5975048500', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(437, 'Mr. Ewell Hermiston III', 'P', '7457963342', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(438, 'Will Zboncak', 'P', '8293800585', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(439, 'Dominic Cassin', 'P', '4509416678', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(440, 'Keaton Marquardt', 'P', '9950681662', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(441, 'Prof. Christophe Thiel IV', 'P', '1030982749', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(442, 'Bernhard Kreiger', 'L', '1846694029', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(443, 'Imelda Frami', 'P', '6845609655', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(444, 'Ronaldo Leuschke', 'P', '408842127', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(445, 'Karlie Hegmann', 'P', '4307389300', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(446, 'Stacey Schowalter', 'L', '4345659886', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(447, 'Fausto Kshlerin', 'P', '1232692976', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(448, 'Hailee Parisian DDS', 'L', '9992983841', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(449, 'Florence Terry', 'L', '140669571', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(450, 'Prof. Nels Feeney Jr.', 'P', '5752318297', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(451, 'Timothy Schaden', 'L', '8616471964', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(452, 'Gus Armstrong', 'P', '4816053831', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(453, 'Cesar Mayer DVM', 'L', '9777166269', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(454, 'Jessica Lockman', 'L', '5236551758', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(455, 'Charlie Tromp', 'P', '3451917654', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(456, 'Ms. Aaliyah Mann', 'L', '6676128468', 3, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(457, 'Prof. Jordyn Morar', 'P', '9475972826', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(458, 'Delbert Lang', 'L', '1861182421', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(459, 'Kenya Ernser', 'P', '5718668845', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(460, 'Fannie Bechtelar', 'L', '1939965248', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(461, 'Jace Braun', 'L', '8158984578', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(462, 'Eveline Murphy V', 'L', '8623888730', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(463, 'Vernice Torphy', 'L', '7197743142', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(464, 'Jazlyn Pollich', 'P', '7019551550', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(465, 'Janie Wehner', 'L', '5695070692', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(466, 'Dr. Waylon Tillman IV', 'L', '4102051275', 2, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(467, 'Mr. Vito Pollich V', 'P', '9751107688', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(468, 'Orpha Heller', 'P', '8324160873', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(469, 'Ezekiel Reinger', 'P', '6444079427', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(470, 'Prof. Steve Gutkowski I', 'L', '37712245', 1, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(471, 'Jennyfer Witting', 'L', '5972868849', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(472, 'Tiffany Weber V', 'P', '9570060599', 4, NULL, '2023-03-07 09:14:41', '2023-03-07 09:14:41', NULL),
(473, 'Reuben Labadie', 'P', '705302302', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(474, 'Adolph Zieme', 'L', '1039373613', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(475, 'Dena Boehm', 'P', '1928005569', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(476, 'Miss Maggie Lockman', 'P', '9787468995', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(477, 'Icie Casper', 'L', '5483385361', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(478, 'Miss Jaida Bogan II', 'P', '3177783015', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(479, 'Prof. Conrad Keeling', 'L', '5708807836', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL);
INSERT INTO `students` (`id`, `name`, `gender`, `nis`, `class_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(480, 'Mrs. Shanelle Hamill', 'L', '3354692154', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(481, 'Roberto Kozey DVM', 'L', '8258716604', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(482, 'Jewel Lowe', 'P', '8404789198', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(483, 'Ewald Barton', 'L', '9890074106', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(484, 'Roscoe Renner', 'L', '4814716429', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(485, 'Rusty Prohaska', 'P', '9970258963', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(486, 'Dr. Elfrieda Stoltenberg', 'P', '5277827740', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(487, 'Dr. Shad Nicolas IV', 'P', '409716536', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(488, 'Carolyn Hahn', 'P', '7334436374', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(489, 'Morris Abbott', 'P', '3422657283', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(490, 'Jayde Kunze', 'P', '229945871', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(491, 'Leonel Breitenberg', 'P', '4724094785', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(492, 'Allene Lebsack', 'L', '1432690150', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(493, 'Carleton Lockman', 'P', '6337728153', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(494, 'Dr. Abby Cormier', 'P', '7581592526', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(495, 'Ms. Heidi Medhurst', 'P', '4574806615', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(496, 'Tod Nolan', 'P', '3503190764', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(497, 'Brandyn Douglas', 'P', '1479148821', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(498, 'Prof. Garrett Moore', 'L', '8107225952', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(499, 'Joel Conn', 'P', '6475296929', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(500, 'Brooks Farrell', 'P', '9791493055', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(501, 'Jerrod Ernser', 'L', '6424032941', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(502, 'Prof. Dandre Stoltenberg', 'P', '9844750648', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(503, 'Mrs. Delta Welch II', 'L', '2672733094', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(504, 'Rasheed Gerhold V', 'L', '4313854566', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(505, 'Louie Zboncak V', 'P', '495220701', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(506, 'Kyler Mills DVM', 'P', '999362938', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(507, 'Estevan Ondricka', 'L', '4866319040', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(508, 'Jordy Gibson', 'L', '7546322819', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(509, 'Dr. Jodie Keebler II', 'P', '1074293154', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(510, 'Claudie Kovacek MD', 'P', '5516065842', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(511, 'Laney Grady', 'P', '1520245729', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(512, 'Prof. Anthony Gutkowski', 'P', '3829418267', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(513, 'Ephraim Nader', 'L', '4203690500', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(514, 'Jake Spinka', 'P', '613138163', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(515, 'Maxie Kuvalis', 'P', '948252305', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(516, 'Dr. Roselyn Kertzmann MD', 'L', '9070499278', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(517, 'Mrs. Leilani Bergstrom', 'L', '402945948', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(518, 'Zola Feest', 'P', '7046244574', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(519, 'Mr. Trenton Hill', 'P', '2545008110', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(520, 'Dr. Antoinette Reichert DVM', 'L', '1619524972', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(521, 'Jordyn Shanahan', 'L', '4627224930', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(522, 'Mr. Benny Ortiz', 'P', '2760962680', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(523, 'Johann Reilly IV', 'P', '3798554670', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(524, 'Mr. Conrad Windler PhD', 'L', '8496672878', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(525, 'Clemens Kulas', 'L', '5188547662', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(526, 'Pablo Hermiston IV', 'L', '2236124849', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(527, 'Herminia Dicki', 'L', '7712524078', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(528, 'Mr. Maximillian Veum DVM', 'L', '6584659073', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(529, 'Curtis Bosco V', 'P', '5576167038', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(530, 'Dr. Damien Mraz V', 'P', '6746006299', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(531, 'Miss Lelah Torphy V', 'L', '1638059464', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(532, 'Rebeca Nitzsche', 'P', '286216459', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(533, 'Prof. Nestor Adams DVM', 'P', '8718156804', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(534, 'Prof. Nora Raynor', 'P', '3991321322', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(535, 'Christop Donnelly', 'L', '6324179432', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(536, 'Ms. Elyse Graham V', 'P', '9603663293', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(537, 'Otto Jerde', 'L', '3672383057', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(538, 'Durward Abernathy', 'P', '3128121411', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(539, 'Jasen Watsica', 'P', '9173668310', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(540, 'Jaquan Gutmann', 'L', '9744669360', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(541, 'Bradley Schamberger Jr.', 'P', '5297837094', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(542, 'Delmer Runolfsdottir', 'L', '8142440997', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(543, 'Velda Adams', 'L', '6642330019', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(544, 'Orie Larkin', 'P', '6047988911', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(545, 'Verna Wunsch III', 'L', '6230394197', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(546, 'Addie Sanford', 'L', '7501155969', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(547, 'Diego Heaney MD', 'P', '7370552222', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(548, 'Felix Dietrich DVM', 'P', '2524018308', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(549, 'Geraldine Greenholt', 'L', '6042933708', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(550, 'Mr. Gus Cassin', 'P', '4475968783', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(551, 'Lonnie Crooks', 'P', '936428616', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(552, 'Mekhi Daugherty', 'L', '7581799885', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(553, 'Dasia Hahn', 'P', '8924593566', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(554, 'Dewayne Borer', 'L', '4233895299', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(555, 'Dayna Williamson', 'P', '5000248447', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(556, 'Shanny Okuneva', 'P', '1198840251', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(557, 'Jannie Schaefer', 'P', '4304707691', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(558, 'Mr. Dillan Streich', 'P', '8948542115', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(559, 'Dr. Sedrick Kuvalis III', 'L', '6043871143', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(560, 'Ruth Willms DDS', 'L', '4578667170', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(561, 'Marcelo Nitzsche', 'L', '591626618', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(562, 'Sammie Barrows PhD', 'P', '6084416922', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(563, 'Meagan Roob', 'L', '1850209794', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(564, 'Amya Beatty', 'P', '6597946707', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(565, 'Jeffrey McCullough PhD', 'L', '9889492156', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(566, 'Cleora Dietrich', 'P', '1913183348', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(567, 'Miss Beryl Kling', 'L', '1979682770', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(568, 'Lawrence Kautzer', 'P', '9830050595', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(569, 'Rosie Crooks', 'P', '2765664096', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(570, 'Adriel Lind', 'L', '9367498140', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(571, 'Larissa Boyle', 'P', '1442014852', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(572, 'Ocie Koepp', 'P', '7193772418', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(573, 'Mrs. Else Kuvalis', 'L', '9962620000', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(574, 'Sydney Lowe', 'P', '3191307709', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(575, 'Dr. Micaela Reilly', 'L', '8715449834', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(576, 'Cortez Adams DVM', 'P', '3135667209', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(577, 'Esta Yost IV', 'P', '8826172876', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(578, 'Marilie Olson', 'L', '5357481600', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(579, 'Jaeden Carroll', 'L', '50430310', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(580, 'Kali Jast', 'L', '212746572', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(581, 'Dr. Jaiden Mann', 'P', '864657975', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(582, 'Garland Anderson', 'P', '8548999639', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(583, 'Marjorie Welch', 'L', '9066607773', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(584, 'Mara Jacobi', 'L', '6871569369', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(585, 'Miss Kari Ankunding II', 'L', '6489030109', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(586, 'Dahlia Erdman V', 'L', '1164490573', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(587, 'Marlin Howe', 'L', '9450106052', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(588, 'Cathy Collins', 'P', '3740172428', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(589, 'Carrie Terry V', 'L', '3367579682', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(590, 'Neha Beier', 'P', '8652944855', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(591, 'Frederique Barton', 'P', '3213613063', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(592, 'Emerson Kreiger', 'L', '3222931285', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(593, 'Abdul Baumbach', 'L', '4142877850', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(594, 'Rosalind Williamson', 'L', '8926186422', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(595, 'Prof. Zion Baumbach V', 'L', '805084991', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(596, 'Ms. Agnes Gleichner', 'L', '4235890365', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(597, 'Marcus Gorczany', 'P', '9708650313', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(598, 'Fabiola Rodriguez', 'P', '6590416096', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(599, 'Marques Schulist', 'P', '7954557302', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(600, 'Miss Janice Prohaska Sr.', 'P', '9711632616', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(601, 'Anita Bailey', 'P', '8703356235', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(602, 'Alexander Bauch', 'L', '7811917945', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(603, 'Dr. Braulio Conn Sr.', 'P', '4055387257', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(604, 'Miss Nadia Gerlach V', 'P', '3730679876', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(605, 'Florida Nader III', 'L', '9788652964', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(606, 'Dr. Demarcus Herman', 'L', '9050771492', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(607, 'Dr. Bradley Wunsch Sr.', 'P', '1123993119', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(608, 'Marilie Buckridge', 'P', '6133959723', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(609, 'Melyssa Langworth', 'L', '2102277614', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(610, 'Zane Zboncak', 'P', '9736477745', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(611, 'Mellie Ryan', 'P', '6399143087', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(612, 'Pat Hermiston', 'L', '3319517126', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(613, 'Alycia Bergnaum', 'L', '1785489309', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(614, 'Chadrick Altenwerth', 'L', '854098392', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(615, 'Laurianne Donnelly', 'L', '6171434680', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(616, 'Dr. Alisa Kertzmann', 'L', '1374106701', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(617, 'Miss Hildegard Luettgen DVM', 'L', '4807531847', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(618, 'Della Rogahn I', 'L', '776907098', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(619, 'Prof. Ubaldo Kessler PhD', 'L', '1489254591', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(620, 'Luther Lockman', 'P', '3977871558', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(621, 'Dr. Alene Wyman', 'L', '4004135743', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(622, 'Miss Destiny Lind', 'P', '4189964492', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(623, 'Prof. Markus Davis DVM', 'L', '4010882382', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(624, 'Jaida Legros', 'P', '1886399251', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(625, 'Chyna Beatty', 'P', '3230122697', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(626, 'Chandler Auer', 'L', '2677709384', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(627, 'Ms. Celine Hills', 'L', '8386176400', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(628, 'Prof. Garth Runte PhD', 'L', '9939958242', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(629, 'Tavares Mayer', 'P', '2417938943', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(630, 'Prof. Nelson Lueilwitz Sr.', 'P', '6348137645', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(631, 'Prof. Jackie Schaden Sr.', 'L', '3790866673', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(632, 'Mr. Mose Corwin DDS', 'L', '1432887275', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(633, 'Prof. Elmore Hammes I', 'L', '9817001524', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(634, 'Jalyn Kilback', 'P', '2735926421', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(635, 'Dr. Douglas Ryan', 'P', '9986943750', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(636, 'Baron Hane', 'L', '5747333754', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(637, 'Ms. Jennifer Langworth DVM', 'P', '3812682700', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(638, 'Zoie Kilback', 'P', '1112880816', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(639, 'Miss Nichole Fahey', 'L', '9002198331', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(640, 'Misty Murray', 'L', '9001729496', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(641, 'Prof. Fiona Runolfsson', 'P', '9757674947', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(642, 'Dr. Sandy Towne Jr.', 'P', '2367463872', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(643, 'Mrs. Eulah Kuhn II', 'L', '4285111978', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(644, 'Dr. Damien Hill III', 'P', '4516606063', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(645, 'Brain Johnson', 'L', '8458420053', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(646, 'Colton Dietrich I', 'L', '4764993819', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(647, 'Cleta Walsh', 'L', '9527335724', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(648, 'Dr. Cleora Ward', 'P', '414872434', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(649, 'Mrs. Dakota Olson III', 'L', '5894159125', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(650, 'Anna Schowalter', 'L', '1655009770', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(651, 'Queen VonRueden', 'L', '711299448', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(652, 'Dr. Caterina Ritchie MD', 'P', '7429967240', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(653, 'Cara Doyle', 'P', '1945016288', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(654, 'Jaydon Labadie', 'L', '2683584737', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(655, 'Florencio Gibson', 'P', '8582199512', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(656, 'Mrs. Larissa Toy I', 'L', '6505207470', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(657, 'Adrain Deckow II', 'L', '8001749161', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(658, 'Mr. Desmond Johnston Jr.', 'L', '8487265079', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(659, 'Kenneth O\'Reilly', 'P', '4425897713', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(660, 'Justyn Murazik', 'P', '6510831819', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(661, 'Loy Schamberger II', 'L', '1965059690', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(662, 'Mireya Casper', 'P', '8618260256', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(663, 'Robyn Ritchie', 'P', '3161715059', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(664, 'Aditya Price', 'P', '6815672803', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(665, 'Garret Reichel Sr.', 'P', '3898452798', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(666, 'Guido Keebler', 'L', '5405868421', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(667, 'Stephania Grimes III', 'P', '905341024', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(668, 'Mr. Trace O\'Reilly II', 'P', '2677520052', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(669, 'Mr. Colby Bergstrom', 'P', '2075099601', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(670, 'Jovany Kuhn Sr.', 'P', '8272550169', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(671, 'Taryn Muller', 'P', '4972920409', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(672, 'Prof. Erick Jaskolski', 'L', '516204286', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(673, 'Mathias Durgan', 'P', '8531386308', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(674, 'Larry Collier', 'P', '5720892505', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(675, 'Dr. Laurence Douglas I', 'L', '1724239917', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(676, 'Damon Yost MD', 'L', '3782107298', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(677, 'Prof. Tia Hickle', 'P', '830348329', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(678, 'Alphonso Quitzon II', 'P', '178293973', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(679, 'Jean Zulauf DVM', 'P', '4542625718', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(680, 'Bethany Yundt', 'P', '597217297', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(681, 'Kira Berge V', 'L', '7423251201', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(682, 'Margaret Cole II', 'L', '2375747499', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(683, 'Phoebe Cummerata V', 'P', '7918114042', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(684, 'Sammie Moen', 'P', '7757712544', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(685, 'Mrs. Charlene Glover IV', 'P', '539693570', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(686, 'Dr. Cielo Simonis Jr.', 'L', '3847521543', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(687, 'Fleta Watsica', 'P', '4953121651', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(688, 'Mr. Brant Bode MD', 'L', '5502715491', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(689, 'Prof. Mack Heidenreich', 'L', '8542711528', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(690, 'Syble Predovic', 'P', '4632076581', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(691, 'Demarco Strosin PhD', 'P', '7901409110', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(692, 'Frankie Larkin', 'P', '1391585790', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(693, 'Hardy VonRueden', 'L', '7024266041', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(694, 'Rhianna Feil', 'L', '1750942924', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(695, 'Dr. Gerard Keebler V', 'P', '7450346662', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(696, 'Prof. Serenity O\'Hara Sr.', 'L', '4105310784', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(697, 'Linnie Adams', 'L', '9882859606', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(698, 'Mrs. Christine Hagenes', 'P', '2786898801', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(699, 'Prof. Cody Dach III', 'L', '4025928969', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(700, 'Dr. Elta Jenkins PhD', 'P', '174231629', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(701, 'Prof. Arianna Marvin Jr.', 'L', '6909552152', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(702, 'Ms. Lilyan Reichel', 'L', '7047855323', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(703, 'Ms. Janelle Pouros', 'P', '4948625603', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(704, 'Tierra Bailey', 'L', '4104885226', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(705, 'Charity Koepp', 'L', '4819208883', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(706, 'Benjamin Hand DDS', 'L', '116387378', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(707, 'Sydnie Cormier', 'L', '6789646001', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(708, 'Curtis Renner', 'L', '550125196', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(709, 'Jacquelyn O\'Reilly', 'P', '3040144611', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(710, 'Prof. Deanna Fisher DDS', 'L', '8018653040', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(711, 'Mrs. Bethel Tromp DVM', 'L', '8950790311', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(712, 'Monserrat Runolfsdottir', 'L', '8173403127', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(713, 'Mrs. Veda Hahn PhD', 'P', '9810894385', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(714, 'Jewell Mayert', 'L', '5005612504', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(715, 'Kelsie Carter Jr.', 'P', '4189889579', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(716, 'Kaleb Terry', 'P', '4273236400', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(717, 'Tyra Weber', 'P', '9445749005', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(718, 'Dr. Katheryn Ondricka', 'L', '8567975575', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(719, 'Marion Kilback', 'P', '6891120989', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(720, 'Prof. Meta Shields DVM', 'P', '4564596313', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(721, 'Marisa Stiedemann III', 'L', '2911243512', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(722, 'Ms. Lenora Lind', 'P', '624676340', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(723, 'Dr. Sammie Krajcik DDS', 'P', '4671429189', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(724, 'Jules Ondricka', 'P', '5394891327', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(725, 'Dr. Madeline Bashirian DDS', 'P', '1988942057', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(726, 'Davonte Hettinger', 'P', '7213803848', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(727, 'Virginia Batz MD', 'L', '5346462032', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(728, 'Aditya Hammes Sr.', 'P', '7292317595', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(729, 'Mrs. Roslyn Wilkinson', 'P', '563386274', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(730, 'Leonora Hessel', 'L', '1258644366', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(731, 'Mrs. Bettie DuBuque', 'L', '1079743979', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(732, 'Julien Lemke V', 'L', '741850651', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(733, 'Dr. Brooklyn Beier Jr.', 'L', '5884133476', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(734, 'Derek King', 'L', '9527632239', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(735, 'Tillman Treutel', 'P', '9725277794', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(736, 'Maynard Upton', 'P', '5848532116', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(737, 'Delilah Macejkovic', 'L', '803864679', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(738, 'Jessyca Mosciski', 'L', '2581297253', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(739, 'Russel Hackett', 'P', '6477412719', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(740, 'Prof. Carli Durgan DVM', 'L', '5284159509', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(741, 'Prof. Katelin Boyer', 'L', '6276644653', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(742, 'Hermina Gibson', 'L', '5667275880', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(743, 'Mrs. Annabelle Kuhlman', 'L', '3651719587', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(744, 'Tommie Wehner', 'L', '1213656923', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(745, 'Marilou Quigley', 'L', '7481129055', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(746, 'Nia Mraz', 'L', '2162461010', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(747, 'Eliza Braun', 'L', '4424409656', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(748, 'Cale Kessler IV', 'P', '933251973', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(749, 'Daren Eichmann', 'P', '1753503366', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(750, 'Cathrine Renner MD', 'P', '2958157558', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(751, 'Garry Pagac', 'P', '9491421045', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(752, 'Elouise Mosciski', 'L', '357284504', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(753, 'Veronica Sanford', 'L', '5589562517', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(754, 'Luna Spencer', 'P', '579678444', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(755, 'Tony Torp', 'P', '4531149048', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(756, 'Dr. Brayan Tremblay', 'P', '515393969', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(757, 'Whitney Toy DVM', 'L', '1799968045', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(758, 'Cristina Gusikowski', 'P', '8419516690', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(759, 'Elias McClure DDS', 'P', '7405022062', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(760, 'Virginia Schuppe', 'P', '7504435727', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(761, 'Holly Homenick', 'P', '7798174444', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(762, 'Marlee Dibbert', 'L', '969082823', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(763, 'Adan Jakubowski', 'P', '5490989035', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(764, 'Adell Predovic', 'L', '8074170602', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(765, 'Trystan White DVM', 'L', '8635223602', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(766, 'Aracely Cummerata', 'P', '8417852161', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(767, 'Mr. Clyde Green DDS', 'P', '1292398132', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(768, 'Riley Bashirian', 'P', '6571269911', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(769, 'Trinity Orn', 'L', '2936805596', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(770, 'Eva Dietrich', 'P', '2700447360', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(771, 'Valentin Homenick', 'L', '6802315540', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(772, 'Alverta Reichel', 'L', '2724454246', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(773, 'Mr. Steve Hane V', 'L', '7631008960', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(774, 'Nat Brown Jr.', 'P', '9285594452', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(775, 'Dr. Jakayla Kozey Sr.', 'P', '2895756875', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(776, 'Kacey Mayer', 'P', '4509567003', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(777, 'Whitney Carroll', 'L', '1566299548', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(778, 'Lorena Christiansen', 'P', '6347535466', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(779, 'Fabiola D\'Amore', 'L', '944922050', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(780, 'Kamryn Considine', 'L', '1381629352', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(781, 'Zachary Rodriguez', 'L', '9051924989', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(782, 'Russel Lowe', 'P', '4636609554', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(783, 'Dr. Ford Corkery II', 'P', '846496440', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(784, 'Jalon Bogan PhD', 'P', '3393769317', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(785, 'Miss Lisette Wunsch DVM', 'P', '9073182227', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(786, 'Javonte Ebert', 'P', '9576573030', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(787, 'Dr. Jamar Jaskolski', 'P', '2793006231', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(788, 'Dr. Kory Berge', 'L', '1342227679', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(789, 'Cristopher Grady', 'L', '7961270890', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(790, 'Prof. Lelah Fay', 'L', '9216495001', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(791, 'Dr. Benedict Prohaska', 'L', '2407008492', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(792, 'Brent Quigley', 'L', '6953133712', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(793, 'Jesse Conroy Jr.', 'L', '4921002179', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(794, 'Felton Hermann', 'P', '6532646557', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(795, 'Tess Rodriguez', 'P', '5620403713', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(796, 'Mr. German Gleichner', 'P', '1557290136', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(797, 'Kobe Schmitt V', 'P', '2384480988', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(798, 'Dallin Gerlach', 'L', '5184873915', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(799, 'Mr. Osborne Greenfelder IV', 'L', '6378747488', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(800, 'Jaylon Jenkins', 'L', '3069978229', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(801, 'Jadon Waters', 'L', '3039109153', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(802, 'Ivory Hermann Jr.', 'P', '1449710361', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(803, 'Gordon Ebert', 'P', '8186623370', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(804, 'Mrs. Tania D\'Amore Jr.', 'L', '8759211542', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(805, 'Dr. Hardy Hane', 'L', '2600641966', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(806, 'Evan Champlin Sr.', 'L', '5124457365', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(807, 'Dustin Boyle', 'P', '3494460089', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(808, 'Salvatore Konopelski', 'L', '6904500324', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(809, 'Seth Senger', 'L', '5218106689', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(810, 'Jamison Batz', 'L', '1414661675', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(811, 'Mr. Vaughn Hessel IV', 'L', '843029818', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(812, 'Leanne Abbott', 'P', '4243960089', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(813, 'Mr. Charles Jacobs II', 'L', '1456358284', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(814, 'Lorenz Moen', 'L', '8914332844', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(815, 'Mr. Clifton Klocko', 'P', '7904047356', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(816, 'Dr. Ronny Nicolas', 'P', '9528913879', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(817, 'Prof. Hobart Kilback DVM', 'P', '3273146678', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(818, 'Romaine Bartoletti', 'L', '3978646062', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(819, 'Violet Ruecker', 'L', '2079791919', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(820, 'Leone Kling', 'P', '7262080195', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(821, 'Jenifer Marquardt Jr.', 'P', '4376206913', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(822, 'Summer Homenick DVM', 'P', '1972827256', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(823, 'Twila Sauer', 'L', '9595351627', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(824, 'Dr. Damien Spencer', 'L', '1369512491', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(825, 'Gus Volkman', 'P', '3257288365', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(826, 'Amy Auer', 'P', '7394094378', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(827, 'Prof. Brennan Wisozk', 'P', '1196160237', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(828, 'Derek Hudson', 'P', '8486536886', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(829, 'Dr. Declan Bergstrom DVM', 'P', '9433320977', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(830, 'Mrs. Kayli Kshlerin', 'P', '9187527744', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(831, 'Miss Mattie Gerhold', 'L', '9609499785', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(832, 'Linnie Hahn Jr.', 'L', '3190988719', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(833, 'Mr. Jalon Witting', 'P', '8969613839', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(834, 'Domingo Lang', 'L', '2372379039', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(835, 'Eliane Wunsch', 'P', '4160782848', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(836, 'Prof. Eddie McDermott', 'P', '1477779823', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(837, 'Stuart Sporer', 'L', '8682584596', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(838, 'Prof. Ruthe Rodriguez IV', 'P', '4653505312', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(839, 'Mr. Cleve Lubowitz', 'L', '3463723468', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(840, 'Angelita Bayer', 'P', '9635378855', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(841, 'Reese Carter I', 'P', '9501227001', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(842, 'Melvina Emard', 'L', '8216750232', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(843, 'Sydnie Fisher', 'P', '7208138582', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(844, 'Krystel Quitzon', 'L', '760979706', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(845, 'Kyleigh Rath', 'P', '9144467933', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(846, 'Prof. Etha Bashirian DVM', 'L', '1440034598', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(847, 'Clementina Herzog', 'L', '6835084464', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(848, 'Dr. Keshaun Balistreri Jr.', 'L', '3751525370', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(849, 'Eladio Aufderhar', 'P', '5765555284', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(850, 'Fidel Volkman I', 'P', '9113532264', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(851, 'Fred Kertzmann', 'L', '9452463475', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(852, 'Eudora Zboncak', 'L', '2625567883', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(853, 'Judy Schultz IV', 'L', '2812441833', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(854, 'Eryn Witting', 'P', '1343336040', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(855, 'Brendon Sauer', 'P', '5227405015', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(856, 'Fredrick Murazik MD', 'L', '1094446542', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(857, 'Mr. Buford Cormier', 'P', '5774669222', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(858, 'Mr. Jayme Kunze', 'L', '4691387626', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(859, 'Gracie Kuvalis DDS', 'P', '4431045237', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(860, 'Nicholaus Braun', 'P', '317319856', 2, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(861, 'Winifred Luettgen', 'P', '1478552162', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(862, 'Fred Marvin', 'L', '9446407416', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(863, 'Ms. Sarina Murazik', 'P', '6379918229', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(864, 'Korey Ratke', 'P', '2007756107', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(865, 'Rosalee Prosacco', 'L', '7741829608', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(866, 'Verner Koepp', 'L', '8033181903', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(867, 'Celine Lowe I', 'L', '9270075188', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(868, 'Katelin Cummerata', 'L', '943266867', 4, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(869, 'Jessika Ward I', 'L', '5704985632', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(870, 'Audra Trantow', 'L', '1558456159', 3, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(871, 'Tiara Keebler', 'P', '9007919345', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(872, 'Burdette Hill', 'P', '9692336240', 1, NULL, '2023-03-07 09:14:42', '2023-03-07 09:14:42', NULL),
(873, 'Jordyn Leffler', 'P', '7281849634', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(874, 'Giovani Sawayn', 'L', '2884005213', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(875, 'Alberta Heaney', 'P', '3838149261', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(876, 'Matilda Marks V', 'L', '3793407809', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(877, 'Rowena Weimann', 'P', '4977932680', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(878, 'Alda Feest', 'P', '6619470107', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(879, 'Pascale Dickinson PhD', 'L', '1790923739', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(880, 'Dr. Megane Nitzsche', 'P', '1187914321', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(881, 'Hal Steuber Sr.', 'L', '3464055437', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(882, 'Aurelio Tremblay', 'L', '2828043606', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(883, 'Dr. Adrienne Vandervort', 'L', '8576102180', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(884, 'Prof. Julie Cole', 'P', '6656862701', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(885, 'Tess Thiel', 'P', '8270761896', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(886, 'Estella Altenwerth', 'L', '2354531871', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(887, 'Ewald Huel', 'L', '6178568630', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(888, 'Oceane Wehner', 'L', '2450960687', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(889, 'Ms. Bessie Weissnat I', 'P', '2005935041', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(890, 'Zena Mann', 'L', '8566645937', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(891, 'Dessie Stokes', 'P', '7344313845', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(892, 'Brady Stiedemann II', 'P', '8185766717', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(893, 'Chet Bechtelar', 'L', '5583963394', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(894, 'Dr. Mya McDermott', 'L', '7991945524', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(895, 'Estelle Heidenreich', 'L', '4638685702', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(896, 'Maybell Jacobi', 'P', '2370515795', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(897, 'Zakary Champlin V', 'L', '2905757638', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(898, 'Palma Bailey', 'L', '5373848982', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(899, 'Genesis McLaughlin', 'P', '8999463360', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(900, 'Mr. Ellsworth Mayer DDS', 'L', '8515334988', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(901, 'Ignacio Batz', 'L', '6271520951', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(902, 'Mr. Monserrate Rohan III', 'L', '8392382503', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(903, 'Juana Spinka', 'P', '1188455341', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(904, 'Remington Friesen', 'P', '4357054364', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(905, 'Jacquelyn Little', 'L', '1919840778', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(906, 'Sandra Osinski', 'P', '7412386114', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(907, 'Velda Kohler', 'P', '2201145738', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(908, 'Mona Frami', 'L', '2535617447', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(909, 'Hester Dickinson', 'L', '6023715977', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(910, 'Emilia Kris II', 'P', '5986979225', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(911, 'Eunice Wiza', 'P', '9042606214', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(912, 'Coy Erdman', 'P', '7014523931', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(913, 'Alana Rau', 'P', '1842626563', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(914, 'Tyrel Beatty', 'L', '6219610245', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(915, 'Angela King', 'P', '4084841944', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(916, 'Sophia Schroeder', 'P', '4300735541', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(917, 'Herta Lowe', 'L', '2035517803', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(918, 'Joy Conroy', 'L', '9415687015', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(919, 'Uriel Turner', 'P', '6427836275', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(920, 'Piper Crooks II', 'L', '4755194977', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(921, 'Mr. Hubert Braun', 'L', '8997105954', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(922, 'Rosalyn Hilpert', 'P', '5589640090', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(923, 'Juston Stoltenberg', 'P', '114578167', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(924, 'Daisha Bins', 'P', '5454065699', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(925, 'Miss Janice Heidenreich III', 'P', '759167513', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(926, 'Darrick Denesik', 'P', '18912261', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(927, 'Elda Heathcote', 'L', '857526573', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(928, 'Bernardo Weber', 'L', '9558872735', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(929, 'Prof. Etha Hyatt', 'L', '3222816046', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(930, 'Guillermo Collins', 'P', '8334099993', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(931, 'Triston Wolf', 'P', '5465609841', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(932, 'Chris Hansen', 'P', '6067172597', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(933, 'Mr. Tyrique Kris', 'P', '2122399220', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(934, 'Luella Langworth', 'L', '8491200158', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(935, 'Holden Fahey', 'L', '7067531935', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(936, 'Mr. Damion Blick MD', 'P', '494047838', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(937, 'Delmer Wilderman', 'L', '2039954699', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(938, 'Dr. Hardy Bechtelar', 'L', '1546456651', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(939, 'Amani Mertz', 'P', '5715409068', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(940, 'Dr. Adalberto Krajcik', 'P', '5497756297', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(941, 'Mr. Jaydon Krajcik', 'P', '7623607785', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(942, 'Vernon Berge', 'P', '1189177094', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(943, 'Ottilie Weissnat', 'L', '3245803680', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(944, 'Mr. Dewayne Grimes', 'P', '3641784328', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(945, 'Maude Waelchi', 'L', '4372591512', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(946, 'Mr. Sanford Bednar', 'L', '5659103465', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(947, 'Mrs. Lilla Medhurst IV', 'L', '8207718866', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(948, 'Robb Veum', 'L', '317820813', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(949, 'Dr. Nels Jaskolski MD', 'P', '414091349', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(950, 'Prof. Arielle Carter', 'L', '9602485293', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(951, 'Jacinthe Jast', 'L', '4393512011', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(952, 'Maci Kassulke', 'P', '1363255686', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(953, 'Lottie Gleichner', 'P', '4350292158', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(954, 'Jo Bogisich', 'P', '8502958394', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL);
INSERT INTO `students` (`id`, `name`, `gender`, `nis`, `class_id`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(955, 'Gilbert Altenwerth', 'L', '1880231109', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(956, 'Hope Lynch MD', 'P', '2303436056', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(957, 'Isai Cruickshank', 'L', '5291281647', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(958, 'Alberta Schmitt', 'L', '611974504', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(959, 'Mrs. Gerda Rogahn V', 'L', '3611048401', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(960, 'Mr. Candelario Cummings', 'P', '2352999960', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(961, 'Prof. Dejon Hill I', 'L', '2263365693', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(962, 'Stanford Miller', 'P', '4980428444', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(963, 'Ferne Bayer', 'L', '680513675', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(964, 'Ana Harvey', 'P', '4975208198', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(965, 'Tressie Klein', 'L', '8881456952', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(966, 'Mrs. Genoveva Gorczany PhD', 'L', '1869032542', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(967, 'Dr. Alexys Heller I', 'L', '1203813409', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(968, 'Janie Collins', 'P', '8367292780', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(969, 'Garth Emmerich III', 'P', '5186327227', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(970, 'Prof. Geovany Hilpert PhD', 'L', '7737197083', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(971, 'Dr. Tessie Ankunding I', 'L', '8313985241', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(972, 'Mr. Garfield Larkin', 'P', '4405590349', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(973, 'Kurt Dickinson', 'P', '9146865285', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(974, 'Lila Wiza', 'L', '3450332898', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(975, 'Miss Eveline Goodwin Sr.', 'P', '5599253607', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(976, 'Halle Klein', 'P', '4423985919', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(977, 'Torey Mayert MD', 'L', '81038260', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(978, 'Stone Rau IV', 'L', '988166798', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(979, 'Sibyl Carter', 'P', '8282109479', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(980, 'Prof. Salvador Baumbach', 'P', '7239632274', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(981, 'Melyssa Bailey', 'P', '6288659971', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(982, 'Dusty Armstrong', 'P', '9512203081', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(983, 'Prof. Kory Dare Sr.', 'L', '2437918040', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(984, 'Vesta Schumm', 'P', '938378065', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(985, 'Prof. Tierra Schaden', 'L', '6078788967', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(986, 'Jayce Gleichner IV', 'P', '1240961063', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(987, 'Delia Lowe', 'P', '20255535', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(988, 'Amber Casper DDS', 'P', '5527904100', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(989, 'Bell Macejkovic', 'P', '2464165147', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(990, 'Elenor Ziemann', 'P', '9817911670', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(991, 'Lue Walsh II', 'P', '5403095984', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(992, 'Mr. Osborne Kulas I', 'L', '8371220167', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(993, 'Elisha Hansen', 'P', '9807626166', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(994, 'Elinor Tromp', 'L', '9912788384', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(995, 'Pinkie Bartell', 'P', '7943459777', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(996, 'Dr. Shawn Powlowski IV', 'P', '4657495536', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(997, 'Prof. Gavin Batz', 'L', '7513160992', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(998, 'Ms. Deborah Bauch', 'P', '6964745027', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(999, 'Hayden Ratke', 'P', '5871781931', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1000, 'Mr. Edgar Boyle PhD', 'P', '482836916', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1001, 'Raegan Bosco', 'L', '7546709510', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1002, 'Rahsaan Macejkovic', 'L', '194264495', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1003, 'Bartholome Paucek', 'P', '8427384531', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1004, 'Ms. Daisy Fadel II', 'P', '3768084795', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1005, 'Kristofer Marks', 'L', '773827924', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1006, 'Phyllis Sporer', 'P', '3366006902', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1007, 'Lenore Hyatt', 'L', '492779105', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1008, 'Mr. Christop Dooley PhD', 'P', '1890116536', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1009, 'Melyssa Aufderhar', 'L', '2806058317', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1010, 'Prof. Brady Hickle', 'L', '6515695518', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1011, 'Prof. Daren Turcotte DDS', 'L', '6425181615', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1012, 'Sydnie Barrows', 'L', '9771301439', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1013, 'Lamont Hettinger Sr.', 'L', '8697032007', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1014, 'Dr. Jazmin Thiel I', 'P', '547047667', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1015, 'Rozella Sporer', 'L', '2168850466', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1016, 'Mrs. Noemi Bashirian II', 'L', '9250427003', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1017, 'Prof. Cassie Homenick Sr.', 'L', '2930083952', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1018, 'Rubye Berge', 'P', '2610779352', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1019, 'Mr. Isaac Moore V', 'L', '6456909253', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1020, 'Hailee Ferry', 'P', '6745704168', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1021, 'Enrico Aufderhar II', 'P', '1541826213', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1022, 'Jarrell Waters V', 'L', '5870493391', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1023, 'Yessenia Howe III', 'L', '8026010318', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1024, 'Dylan Boehm', 'P', '8528881082', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1025, 'Elise Crist MD', 'L', '6460743831', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1026, 'Morton Beier', 'L', '1666358025', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1027, 'Danielle Kozey', 'L', '7415376249', 3, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1028, 'Miss Paige Klocko', 'L', '8663816292', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1029, 'Aric Medhurst MD', 'L', '6134207027', 4, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1030, 'Mekhi Dicki', 'L', '605973797', 1, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1031, 'Dr. Deondre Funk', 'P', '8279962235', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1032, 'Dr. Donnie Gislason', 'L', '801592591', 2, NULL, '2023-03-07 09:14:43', '2023-03-07 09:14:43', NULL),
(1033, 'Shani Indira Natio', 'P', '14115001', 1, NULL, '2023-03-07 11:17:03', '2023-03-07 11:17:03', NULL),
(1034, 'Shani Gracia', 'P', '14115002', 1, 'Shani Gracia.1678213309.jpeg', '2023-03-07 11:21:49', '2023-03-07 11:21:49', NULL),
(1035, 'Jacqueline', 'P', '12345678', 1, 'Jacqueline.1678214312.jpg', '2023-03-07 11:38:32', '2023-03-07 11:38:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_extracurricular`
--

CREATE TABLE `student_extracurricular` (
  `student_id` bigint UNSIGNED NOT NULL,
  `extracurricular_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_extracurricular`
--

INSERT INTO `student_extracurricular` (`student_id`, `extracurricular_id`) VALUES
(22, 1),
(3, 2),
(21, 3),
(1, 5),
(4, 3),
(9, 6),
(10, 4),
(7, 1),
(15, 6),
(24, 5),
(19, 4),
(18, 4),
(2, 5),
(20, 5),
(8, 1),
(11, 1),
(23, 6),
(17, 6),
(6, 3),
(12, 6);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Wahono', NULL, NULL),
(2, 'Tumijan', NULL, NULL),
(3, 'Hamiah', NULL, NULL),
(7, 'Andreas', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@avief.com', 1, NULL, '$2y$10$d2bn90z5DXH.WBCNj/Ba0uwhkpjzn2sVowTimtQLjug1SPpb5pSs.', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_name_unique` (`name`),
  ADD KEY `class_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `extracurriculars`
--
ALTER TABLE `extracurriculars`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_class_id_foreign` (`class_id`);

--
-- Indexes for table `student_extracurricular`
--
ALTER TABLE `student_extracurricular`
  ADD KEY `student_extracurricular_student_id_foreign` (`student_id`),
  ADD KEY `student_extracurricular_extracurricular_id_foreign` (`extracurricular_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `extracurriculars`
--
ALTER TABLE `extracurriculars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `student_extracurricular`
--
ALTER TABLE `student_extracurricular`
  ADD CONSTRAINT `student_extracurricular_extracurricular_id_foreign` FOREIGN KEY (`extracurricular_id`) REFERENCES `extracurriculars` (`id`) ON DELETE RESTRICT,
  ADD CONSTRAINT `student_extracurricular_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
