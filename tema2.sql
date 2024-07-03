-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 03, 2024 at 03:01 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tema2`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `judul`, `text`, `video`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Jasa Fotografi Terbaik Plihan Anda', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo! Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'https://www.youtube.com/embed/sEhS83z3XRM?si=x5izIReQ5NraJXHx', 'websidn/uploads/JGZPovEtkGnHtx7nXHrfbqzzRqMLB61vQ86utRMQ.jpg', '2024-07-02 07:31:04', '2024-07-02 07:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `blogconsoles`
--

CREATE TABLE `blogconsoles` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogkategoris`
--

CREATE TABLE `blogkategoris` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogkategoris`
--

INSERT INTO `blogkategoris` (`id`, `kategori`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Fotografi', 'fotografi', '2024-07-02 11:37:54', '2024-07-02 11:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` bigint UNSIGNED DEFAULT NULL,
  `deskripsi_singkat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_penulis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `judul`, `slug`, `id_kategori`, `deskripsi_singkat`, `keyword`, `deskripsi`, `status`, `date`, `image`, `nama_penulis`, `created_at`, `updated_at`) VALUES
(1, 'Jasa Sewa Fotografi Terbaik Di Kota Anda', 'jasa-sewa-fotografi-terbaik-di-kota-anda', 1, 'Pilihan yang tepat untuk jasa fotografi kebutuhan anda', 'fotografi', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo! Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!&nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo! Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!</p>\r\n<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo! Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!&nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo! Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!</div>\r\n<div>&nbsp;</div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo! Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!&nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo! Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!</div>\r\n<div>&nbsp;</div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo! Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!&nbsp; Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo! Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!</div>\r\n</div>', '1', '2024-07-01', 'websidn/blogs/H4PEQ7QN7tbr2v6mcZVL4U5XuMTgIZqEVuxXqAXB.jpg', 'James Born', '2024-07-02 11:40:54', '2024-07-02 11:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `blogtags`
--

CREATE TABLE `blogtags` (
  `id` bigint UNSIGNED NOT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogtags`
--

INSERT INTO `blogtags` (`id`, `tags`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Jasa', 'jasa', '2024-07-02 11:38:26', '2024-07-02 11:38:26'),
(2, 'Fotografi', 'fotografi', '2024-07-02 11:38:38', '2024-07-02 11:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `kategori`, `judul`, `detail`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Pegawai', 'Jemes Born', 'Fotografer', 'websidn/cards/9o8nM0ZaemHRcwHAHZHpRTjOaA8eDIR77VqM7INy.jpg', '2024-07-02 07:39:50', '2024-07-02 07:39:50'),
(2, 'Pegawai', 'Orion Frost', 'Fotografer', 'websidn/cards/hi4JdkxPpscG3xP7V8dMA877tSedfEFSq1dxGk0r.jpg', '2024-07-02 07:40:07', '2024-07-02 07:40:07'),
(4, 'Pegawai', 'James Sky', 'Fotografer', 'websidn/cards/wQKP89RufzQesG6ce0GjeErydBV75wQwPoouIMhq.jpg', '2024-07-02 07:40:55', '2024-07-02 07:40:55'),
(5, 'Pegawai', 'Maria Hill', 'Fotografer', 'websidn/cards/36187NJTr7dlLm00BZL6plQpdFVsbI8OF1OghzF7.jpg', '2024-07-02 07:41:09', '2024-07-02 07:41:09'),
(6, 'Layanan', 'Layanan 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/cards/er6Rq1dvdA1Qoifb7yuyRY4lQYkQrfiOIxuHzHwx.jpg', '2024-07-02 07:41:43', '2024-07-02 07:41:43'),
(7, 'Layanan', 'Layanan 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/cards/EfoGESBITBEFnkarZfgcc9G7OJkxv7jqemBFiSd0.jpg', '2024-07-02 07:41:56', '2024-07-02 07:41:56'),
(8, 'Layanan', 'Layanan 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/cards/XXWtl9DFWLp0CLoLPXZK8mddFb1mfdeDIzqhoCMl.jpg', '2024-07-02 07:42:13', '2024-07-02 07:42:33'),
(9, 'Layanan', 'Layanan 4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/cards/Zvatm5BbrBstSJ1k6VzJhkQe5ijdQk5sWsxGePz8.jpg', '2024-07-02 07:42:51', '2024-07-02 07:42:51'),
(10, 'Layanan', 'Layanan 5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/cards/IU8aTo7apwnC9V7tzp69aLOKiyZl7E8W25eL5d8x.jpg', '2024-07-02 07:43:07', '2024-07-02 07:43:07'),
(11, 'Portofolio', 'Project 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/cards/4JXSt0IYIchZ4mefjweyIDMLYD1N9w17FfET7RMn.jpg', '2024-07-02 07:43:21', '2024-07-02 07:43:21'),
(12, 'Portofolio', 'Project 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/cards/OlAWVcbnDpv7BuqArvc5hyqp4svYj68Wh5ayMx9u.jpg', '2024-07-02 07:43:35', '2024-07-02 07:43:35'),
(13, 'Portofolio', 'Project 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/cards/DZliaqMc9ijSPBfcVaFpuX260mVg8riR7N2HuKZw.jpg', '2024-07-02 07:43:47', '2024-07-02 07:43:47'),
(14, 'Portofolio', 'Project 4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/cards/6ybydzWTwWqiZ0mjsJOo00ZW4gfPxM7BhFLTL3Go.jpg', '2024-07-02 07:44:11', '2024-07-02 07:44:11'),
(15, 'Portofolio', 'Project 5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/cards/8hGo5xYsAHCr8JOi6LSfGBrrdFyUzyg8d7qmv9hr.jpg', '2024-07-02 07:44:29', '2024-07-02 07:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiktok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `whatsapp`, `facebook`, `instagram`, `tiktok`, `youtube`, `linkedin`, `map`, `created_at`, `updated_at`) VALUES
(1, '082038491283', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.tiktok.com/', 'https://www.youtube.com/', 'https://www.linkedin.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7074.183936675103!2d-73.98354113874954!3d40.75243152133734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c2f7b6376d9b53%3A0xd27fd8e9d8b605d8!2sPerfect%20Wedding%20NYC!5e0!3m2!1sid!2sid!4v1719289912387!5m2!1sid!2sid', '2024-07-02 07:28:06', '2024-07-02 07:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `corosels`
--

CREATE TABLE `corosels` (
  `id` bigint UNSIGNED NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `corosels`
--

INSERT INTO `corosels` (`id`, `resolusi`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Landscape', 'websidn/corosels/52JDQoGQLtqU0z9volesBeur5dzPZ7o1aLzMuvHv.jpg', '2024-07-02 07:24:50', '2024-07-02 07:24:50'),
(2, 'Landscape', 'websidn/corosels/gGLQTAs7LbvkE3jz9F7K0plTVgzmETmzMlZxz4MT.jpg', '2024-07-02 07:25:04', '2024-07-02 07:25:04'),
(3, 'Landscape', 'websidn/corosels/1YB68bgXjTTrlHwdi5kinZeIL1E8bVxAvbHeR3lw.jpg', '2024-07-02 07:25:15', '2024-07-02 07:25:15');

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
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `kategori`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Brosur', 'websidn/uploads/files/3QfHrV5hHLktVaPbgjMliJu8muvHYzNrhmLzBw67.pdf', '2024-07-02 07:31:25', '2024-07-02 07:31:25'),
(2, 'Pricelist', 'websidn/uploads/files/hRGSLbRbUJZazzy3g2j0V30A82Ck2udhSw3L9JsM.pdf', '2024-07-02 07:36:46', '2024-07-02 07:36:46'),
(3, 'Portofolio', 'websidn/uploads/files/9eIzCWEvfFjhGXY8FcvpNf4vKdcpBIguLpkGlGqQ.pdf', '2024-07-02 07:36:58', '2024-07-02 07:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `galeris`
--

CREATE TABLE `galeris` (
  `id` bigint UNSIGNED NOT NULL,
  `id_image` bigint UNSIGNED DEFAULT NULL,
  `id_text` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galeris`
--

INSERT INTO `galeris` (`id`, `id_image`, `id_text`, `created_at`, `updated_at`) VALUES
(1, 4, 2, '2024-07-02 07:22:41', '2024-07-02 07:22:41'),
(2, 2, 1, '2024-07-02 07:22:51', '2024-07-02 07:22:51'),
(3, 3, 3, '2024-07-02 07:23:01', '2024-07-02 07:23:01'),
(4, 3, 3, '2024-07-02 07:23:09', '2024-07-02 07:23:09'),
(5, 4, 2, '2024-07-02 07:23:19', '2024-07-02 07:23:19'),
(6, 2, 1, '2024-07-02 07:23:32', '2024-07-02 07:23:32');

-- --------------------------------------------------------

--
-- Table structure for table `homes`
--

CREATE TABLE `homes` (
  `id` bigint UNSIGNED NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_image` bigint UNSIGNED DEFAULT NULL,
  `id_text` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `homes`
--

INSERT INTO `homes` (`id`, `kategori`, `id_image`, `id_text`, `created_at`, `updated_at`) VALUES
(1, 'Logo', 1, 4, '2024-07-02 07:21:41', '2024-07-02 07:21:41'),
(2, 'Header', 5, 5, '2024-07-02 12:04:25', '2024-07-02 12:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `resolusi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `resolusi`, `path`, `created_at`, `updated_at`) VALUES
(1, 'Landscape', 'websidn/images/HAz4wJPwhstn7xlG4lL1Hx3tg4bJ4h2a2QblL6II.png', '2024-07-02 07:16:33', '2024-07-02 07:16:33'),
(2, 'Landscape', 'websidn/images/njSTsotRF1MdDwPWc4jBb8aLIBu4njwiSCx0Mo8p.jpg', '2024-07-02 07:19:03', '2024-07-02 07:19:03'),
(3, 'Landscape', 'websidn/images/048NYr4YT4Q3Nrb70FgEXvZ7KsxjGxiwZF86C98H.jpg', '2024-07-02 07:19:18', '2024-07-02 07:19:18'),
(4, 'Landscape', 'websidn/images/KP9IHPlOax4JF8OzMJZ5dBjMiyYvCDN5Uonmm8e2.jpg', '2024-07-02 07:19:55', '2024-07-02 07:19:55'),
(5, 'Landscape', 'websidn/images/KKCbYtzcgpE7bRb5Uj1rbw1iDzkW8k6avjxh2iAU.jpg', '2024-07-02 12:04:10', '2024-07-02 12:04:10');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `layanans`
--

CREATE TABLE `layanans` (
  `id` bigint UNSIGNED NOT NULL,
  `id_image` bigint UNSIGNED DEFAULT NULL,
  `id_text` bigint UNSIGNED DEFAULT NULL,
  `insertfile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_0000010_create_contact_table', 1),
(3, '0001_01_01_0000012_create_card_table', 1),
(4, '0001_01_01_0000013_create_corosel_table', 1),
(5, '0001_01_01_0000014_create_price_table', 1),
(6, '0001_01_01_0000015_create_file_table', 1),
(7, '0001_01_01_0000016_create_blogkategori_table', 1),
(8, '0001_01_01_0000017_create_blogtag_table', 1),
(9, '0001_01_01_0000018_create_blogconsole_table', 1),
(10, '0001_01_01_000001_create_cache_table', 1),
(11, '0001_01_01_0000020_create_blog_table', 1),
(12, '0001_01_01_0000021_create_multitagblog_table', 1),
(13, '0001_01_01_000002_create_jobs_table', 1),
(14, '0001_01_01_000003_create_image_table', 1),
(15, '0001_01_01_000004_create_text_table', 1),
(16, '0001_01_01_000005_create_testimoni_table', 1),
(17, '0001_01_01_000006_create_home_table', 1),
(18, '0001_01_01_000007_create_layanan_table', 1),
(19, '0001_01_01_000008_create_galeri_table', 1),
(20, '0001_01_01_000009_create_about_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multitagblog`
--

CREATE TABLE `multitagblog` (
  `id` bigint UNSIGNED NOT NULL,
  `blog_id` bigint UNSIGNED NOT NULL,
  `blogtag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multitagblog`
--

INSERT INTO `multitagblog` (`id`, `blog_id`, `blogtag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL);

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
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `judul`, `item1`, `item2`, `item3`, `item4`, `item5`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Basic Package', 'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'websidn/prices/XioV5kTGttl4wUw3PjCPkbo4da78Wp6UtdSp8yos.jpg', '2024-07-02 07:26:21', '2024-07-02 07:26:21'),
(2, 'Standard Package', 'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'websidn/prices/qkqSLxenoiiPd5lmZyrDQxJRQQsYpvIKC3EOr6jf.jpg', '2024-07-02 07:26:46', '2024-07-02 07:26:46'),
(3, 'Premium Package', 'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Riasan Percobaan', 'websidn/prices/HpvfgK8vDXmkWHgrOKJhejJxBooUTie3XPyjfZxs.jpg', '2024-07-02 07:27:10', '2024-07-02 07:27:10'),
(4, 'Ultimate Package', 'Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5', 'websidn/prices/mVrm4T1IGhTLaIkSaMulOGyVRq8LJEUTdlCo7qUX.jpg', '2024-07-02 07:27:35', '2024-07-02 07:27:35');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('O67NqhQjjv56M9rFFKjJ35CisfDZsbz1Fr6bRU61', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUkZhU090UzFLQWx6NWJUWG1mcXk4YmFNYlRjMm12ZlZENlVncXFxZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1719948412);

-- --------------------------------------------------------

--
-- Table structure for table `testimonis`
--

CREATE TABLE `testimonis` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonis`
--

INSERT INTO `testimonis` (`id`, `name`, `job`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'James Fernando', 'Pengusaha', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/testimonis/Mu2RjyAalM9bQEdI57hoDJTRa0cHBbqx7I1VT87J.jpg', '2024-07-02 07:37:40', '2024-07-02 07:37:40'),
(2, 'Mernanda Vercy', 'Beauty Blogger', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/testimonis/doybLpimWqzjZOsNoXjc55AHOVtvmXkFOh1qGzfb.jpg', '2024-07-02 07:37:55', '2024-07-02 07:37:55'),
(3, 'Jacque Philips', 'Arsitek', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Provident, explicabo!', 'websidn/testimonis/kI8neuFr4mwSGnmY0VdaRhI28BzcaMMtxfgDwoxd.jpg', '2024-07-02 07:38:14', '2024-07-02 07:38:14');

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subheading` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paragraph` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `texts`
--

INSERT INTO `texts` (`id`, `title`, `heading`, `subheading`, `paragraph`, `created_at`, `updated_at`) VALUES
(1, 'Wedding', 'Wedding', 'Wedding', 'Wedding', '2024-07-02 07:20:42', '2024-07-02 07:20:42'),
(2, 'Models', 'Models', 'Models', 'Models', '2024-07-02 07:20:55', '2024-07-02 07:20:55'),
(3, 'Fashion', 'Fashion', 'Fashion', 'Fashion', '2024-07-02 07:21:04', '2024-07-02 07:21:04'),
(4, 'Logo', 'Logo', 'Logo', 'Logo', '2024-07-02 07:21:16', '2024-07-02 07:21:16'),
(5, 'Header', 'Header', 'Header', 'Header', '2024-07-02 07:21:25', '2024-07-02 07:21:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'SuperAdmin', 'superadmin@gmail.com', '2024-07-02 07:13:42', '$2y$12$mI9v5kt12YkDdsSV/J4nH.bV7rp/VjZzvI0PZaJpuEPyAGBJa4.pW', 'bO7rJO6p9m', '2024-07-02 07:13:42', '2024-07-02 07:13:42'),
(2, 'Admin', 'admin@gmail.com', '2024-07-02 07:13:43', '$2y$12$zdTrRSS8mWTTovJgYpEdDuWMAKeZ/hz5QAM2dwnrFttnFk4yE/RvO', 'WMUXQNwDi2', '2024-07-02 07:13:43', '2024-07-02 07:13:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogconsoles`
--
ALTER TABLE `blogconsoles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogkategoris`
--
ALTER TABLE `blogkategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `blogtags`
--
ALTER TABLE `blogtags`
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
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `corosels`
--
ALTER TABLE `corosels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galeris`
--
ALTER TABLE `galeris`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galeris_id_image_foreign` (`id_image`),
  ADD KEY `galeris_id_text_foreign` (`id_text`);

--
-- Indexes for table `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homes_id_image_foreign` (`id_image`),
  ADD KEY `homes_id_text_foreign` (`id_text`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `layanans`
--
ALTER TABLE `layanans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `layanans_id_image_foreign` (`id_image`),
  ADD KEY `layanans_id_text_foreign` (`id_text`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multitagblog`
--
ALTER TABLE `multitagblog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `multitagblog_blog_id_foreign` (`blog_id`),
  ADD KEY `multitagblog_blogtag_id_foreign` (`blogtag_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `testimonis`
--
ALTER TABLE `testimonis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
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
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogconsoles`
--
ALTER TABLE `blogconsoles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogkategoris`
--
ALTER TABLE `blogkategoris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogtags`
--
ALTER TABLE `blogtags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `corosels`
--
ALTER TABLE `corosels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galeris`
--
ALTER TABLE `galeris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `homes`
--
ALTER TABLE `homes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `layanans`
--
ALTER TABLE `layanans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `multitagblog`
--
ALTER TABLE `multitagblog`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonis`
--
ALTER TABLE `testimonis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `blogkategoris` (`id`);

--
-- Constraints for table `galeris`
--
ALTER TABLE `galeris`
  ADD CONSTRAINT `galeris_id_image_foreign` FOREIGN KEY (`id_image`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `galeris_id_text_foreign` FOREIGN KEY (`id_text`) REFERENCES `texts` (`id`);

--
-- Constraints for table `homes`
--
ALTER TABLE `homes`
  ADD CONSTRAINT `homes_id_image_foreign` FOREIGN KEY (`id_image`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `homes_id_text_foreign` FOREIGN KEY (`id_text`) REFERENCES `texts` (`id`);

--
-- Constraints for table `layanans`
--
ALTER TABLE `layanans`
  ADD CONSTRAINT `layanans_id_image_foreign` FOREIGN KEY (`id_image`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `layanans_id_text_foreign` FOREIGN KEY (`id_text`) REFERENCES `texts` (`id`);

--
-- Constraints for table `multitagblog`
--
ALTER TABLE `multitagblog`
  ADD CONSTRAINT `multitagblog_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `multitagblog_blogtag_id_foreign` FOREIGN KEY (`blogtag_id`) REFERENCES `blogtags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
