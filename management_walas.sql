-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 02:31 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `management_walas`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensikelas`
--

CREATE TABLE `absensikelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jumlahSiswaHadir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlahKetidakhadiran` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namaSiswaTidakHadir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buktiKBM` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `absensikelas`
--

INSERT INTO `absensikelas` (`id`, `tanggal`, `jumlahSiswaHadir`, `jumlahKetidakhadiran`, `namaSiswaTidakHadir`, `buktiKBM`, `created_at`, `updated_at`, `kode`) VALUES
(2, '2020-11-17', '2', '1', '-', '1.jpg', '2020-11-16 07:00:40', '2020-11-16 19:54:33', '1234'),
(3, '2020-11-23', '31', '0', '0', '6.png', '2020-11-23 04:19:38', '2020-11-23 04:19:38', '1234'),
(4, '2020-09-09', '34', '1', 'Anisa', '1.jpg', '2020-11-24 20:22:46', '2020-11-24 20:22:46', '1234'),
(5, '2020-09-10', '35', '0', '-', 'bukti.jpg', '2020-11-24 20:23:21', '2020-11-24 20:23:21', '4321'),
(6, '2020-09-11', '34', '1', 'ALiffio', 'bukti.jpg', '2020-11-24 20:23:55', '2020-11-24 20:23:55', '4321');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-11-02 03:27:58', '2020-11-02 03:27:58'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-11-02 03:27:58', '2020-11-02 03:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `dataadms`
--

CREATE TABLE `dataadms` (
  `id` int(10) UNSIGNED NOT NULL,
  `materiPokok` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `targetPengerjaan` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dataadms`
--

INSERT INTO `dataadms` (`id`, `materiPokok`, `targetPengerjaan`, `created_at`, `updated_at`, `kode`) VALUES
(3, 'Pengambilan Rapot', '2021-01-01', '2020-11-13 08:24:00', '2020-11-24 20:13:35', '1234'),
(4, 'Pertemuan Wali Murid', '2020-12-12', '2020-11-13 08:24:00', '2020-11-24 20:14:39', '1234'),
(5, 'Penuntasan Remedial', '2020-12-12', '2020-11-24 20:15:50', '2020-11-24 20:15:50', '1234'),
(6, 'Penilaian Tengah Semester Ganjil', '2020-06-06', '2020-11-24 20:16:53', '2020-11-24 20:16:53', '4321'),
(7, 'Penilaian', '2020-12-12', '2020-11-24 20:17:00', '2020-11-24 20:18:05', '4321'),
(8, 'Penilaian Akhir Semester Ganjil', '2020-12-12', '2020-11-24 20:17:40', '2020-11-24 20:17:40', '4321'),
(9, 'LARAVEL', '2020-11-25', '2020-11-25 00:12:05', '2020-11-25 00:12:05', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `datasiswas`
--

CREATE TABLE `datasiswas` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datasiswas`
--

INSERT INTO `datasiswas` (`id`, `nama`, `kelas`, `phone`, `email`, `status`, `created_at`, `updated_at`, `kode`) VALUES
(1, 'Anisa', 'XII RPL 1', '083806891628', 'anisaaabcd@gmail.com', 'Aktif', '2020-11-23 01:23:55', '2020-11-23 01:23:55', '1234'),
(2, 'Dian Sulistyarini', 'XII RPL 1', '083806891622', 'dian@gmail.com', 'Aktif', '2020-11-24 20:18:57', '2020-11-24 20:18:57', '1234'),
(3, 'Deva Abel Khan', 'XII RPL 1', '083806881627', 'devaabel@gmail.com', 'Aktif', '2020-11-24 20:19:36', '2020-11-24 20:19:36', '1234'),
(4, 'Anwar Syarifudin', 'XII RPL 2', '083809877898', 'Anwar@gmail.com', 'Aktif', '2020-11-24 20:20:34', '2020-11-24 20:20:34', '4321'),
(5, 'Aliffio', 'XII RPL 2', '083807861728', 'aliffio@gmail.com', 'Aktif', '2020-11-24 20:21:13', '2020-11-24 20:21:13', '4321'),
(6, 'zazam', 'XII RPL 2', '089898897878', 'zazamm@gmail.com', 'Aktif', '2020-11-24 20:21:53', '2020-11-24 20:21:53', '4321');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(71, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(72, 12, 'author_id', 'text', 'Author Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(73, 12, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(74, 12, 'excerpt', 'text', 'Excerpt', 0, 1, 1, 1, 1, 1, '{}', 4),
(75, 12, 'body', 'text', 'Body', 0, 1, 1, 1, 1, 1, '{}', 5),
(76, 12, 'image', 'text', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
(77, 12, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{}', 7),
(78, 12, 'meta_description', 'text', 'Meta Description', 0, 1, 1, 1, 1, 1, '{}', 8),
(79, 12, 'meta_keywords', 'text', 'Meta Keywords', 0, 1, 1, 1, 1, 1, '{}', 9),
(80, 12, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, '{}', 10),
(81, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(82, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(105, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(106, 17, 'namaSiswa', 'text', 'NamaSiswa', 0, 1, 1, 1, 1, 1, '{}', 2),
(107, 17, 'jenisKasus', 'text', 'JenisKasus', 0, 1, 1, 1, 1, 1, '{}', 3),
(108, 17, 'point', 'text', 'Point', 0, 1, 1, 1, 1, 1, '{}', 4),
(109, 17, 'Tanggal', 'text', 'Tanggal', 0, 1, 1, 1, 1, 1, '{}', 5),
(110, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(111, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(126, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(127, 26, 'tanggal', 'text', 'Tanggal', 0, 1, 1, 1, 1, 1, '{}', 2),
(128, 26, 'jumlahSiswaHadir', 'text', 'JumlahSiswaHadir', 0, 1, 1, 1, 1, 1, '{}', 3),
(129, 26, 'jumlahKetidakhadiran', 'text', 'JumlahKetidakhadiran', 0, 1, 1, 1, 1, 1, '{}', 4),
(130, 26, 'namaSiswaTidakHadir', 'text', 'NamaSiswaTidakHadir', 0, 1, 1, 1, 1, 1, '{}', 5),
(131, 26, 'buktiKBM', 'text', 'BuktiKBM', 0, 1, 1, 1, 1, 1, '{}', 6),
(132, 26, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(133, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(134, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(135, 28, 'materiPokok', 'text', 'MateriPokok', 0, 1, 1, 1, 1, 1, '{}', 2),
(136, 28, 'targetPengerjaan', 'text', 'TargetPengerjaan', 0, 1, 1, 1, 1, 1, '{}', 3),
(137, 28, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(138, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(139, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(140, 29, 'nama', 'text', 'Nama', 0, 1, 1, 1, 1, 1, '{}', 2),
(141, 29, 'kelas', 'text', 'Kelas', 0, 1, 1, 1, 1, 1, '{}', 3),
(142, 29, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, '{}', 4),
(143, 29, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 5),
(144, 29, 'status', 'text', 'Status', 0, 1, 1, 1, 1, 1, '{}', 6),
(145, 29, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(146, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(154, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(155, 31, 'materiPertemuan', 'text', 'MateriPertemuan', 0, 1, 1, 1, 1, 1, '{}', 2),
(156, 31, 'tglPertemuan', 'text', 'TglPertemuan', 0, 1, 1, 1, 1, 1, '{}', 3),
(157, 31, 'jumlahHadir', 'text', 'JumlahHadir', 0, 1, 1, 1, 1, 1, '{}', 4),
(158, 31, 'bukti', 'text', 'Bukti', 0, 1, 1, 1, 1, 1, '{}', 5),
(159, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(160, 32, 'jurusan', 'text', 'Jurusan', 0, 1, 1, 1, 1, 1, '{}', 2),
(161, 32, 'kelas', 'text', 'Kelas', 0, 1, 1, 1, 1, 1, '{}', 3),
(162, 32, 'kode', 'text', 'Kode', 0, 1, 1, 1, 1, 1, '{}', 4),
(163, 32, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(164, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(166, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(167, 34, 'hari', 'text', 'Hari', 0, 1, 1, 1, 1, 1, '{}', 2),
(168, 34, 'tanggal', 'text', 'Tanggal', 0, 1, 1, 1, 1, 1, '{\"format\":\"%Y-%m-%d\"}', 3),
(169, 34, 'nama_guru', 'text', 'Nama Guru', 0, 1, 1, 1, 1, 1, '{}', 4),
(170, 34, 'mata_pelajaran', 'text', 'Mata Pelajaran', 0, 1, 1, 1, 1, 1, '{}', 5),
(171, 34, 'jam', 'text', 'Jam', 0, 1, 1, 1, 1, 1, '{}', 6),
(172, 34, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(173, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(190, 37, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(191, 37, 'bulan', 'text', 'Bulan', 0, 1, 1, 1, 1, 1, '{}', 2),
(192, 37, 'pemasukan', 'text', 'Pemasukan', 0, 1, 1, 1, 1, 1, '{}', 3),
(193, 37, 'pengeluaran', 'text', 'Pengeluaran', 0, 1, 1, 1, 1, 1, '{}', 4),
(194, 37, 'saldo', 'text', 'Saldo', 0, 1, 1, 1, 1, 1, '{}', 5),
(195, 37, 'kode', 'text', 'Kode', 0, 1, 1, 1, 1, 1, '{}', 6),
(196, 37, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(197, 37, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(198, 26, 'kode', 'text', 'Kode', 0, 1, 1, 1, 1, 1, '{}', 9),
(199, 28, 'kode', 'text', 'Kode', 0, 1, 1, 1, 1, 1, '{}', 6),
(200, 29, 'kode', 'text', 'Kode', 0, 1, 1, 1, 1, 1, '{}', 9),
(201, 34, 'kode', 'text', 'Kode', 1, 1, 1, 1, 1, 1, '{}', 9),
(202, 38, 'id_jadwal', 'text', 'Id Jadwal', 1, 0, 0, 0, 0, 0, '{}', 1),
(203, 38, 'materi_pertemuan', 'text', 'Materi Pertemuan', 1, 1, 1, 1, 1, 1, '{}', 2),
(204, 38, 'date', 'text', 'Date', 1, 1, 1, 1, 1, 1, '{}', 3),
(205, 38, 'jml_hadir', 'text', 'Jml Hadir', 1, 1, 1, 1, 1, 1, '{}', 4),
(206, 38, 'bukti', 'text', 'Bukti', 1, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 5),
(207, 38, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(208, 38, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(209, 38, 'kode', 'text', 'Kode', 0, 1, 1, 1, 1, 1, '{}', 8),
(210, 17, 'kode', 'text', 'Kode', 0, 1, 1, 1, 1, 1, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2020-11-02 03:27:25', '2020-11-02 03:27:25'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-11-02 03:27:25', '2020-11-06 01:39:40'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-11-02 03:27:25', '2020-11-02 03:27:25'),
(10, 'kelass', 'admin.voyager.kelas', 'Kelass', 'Kelas', NULL, 'App\\Kelas', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-02 08:51:27', '2020-11-03 23:35:48'),
(12, 'pages', 'pages', 'Page', 'Pages', NULL, NULL, NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-02 08:54:49', '2020-11-02 08:54:49'),
(17, 'kasussiswas', 'kasussiswas', 'Kasussiswa', 'Kasussiswas', NULL, 'App\\kasussiswa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-06 01:43:00', '2020-11-23 01:27:15'),
(26, 'absensikelas', 'absensikelas', 'Absensikela', 'Absensikelas', NULL, 'App\\Absensikela', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-06 02:16:57', '2020-11-22 23:38:39'),
(28, 'dataadms', 'dataadms', 'Dataadm', 'Dataadms', NULL, 'App\\Dataadm', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-06 07:47:01', '2020-11-22 23:40:25'),
(29, 'datasiswas', 'datasiswas', 'Datasiswa', 'Datasiswas', NULL, 'App\\Datasiswa', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-06 07:48:52', '2020-11-22 23:42:29'),
(31, 'rapatortus', 'rapatortus', 'Rapatortu', 'Rapatortus', NULL, 'App\\Rapatortu', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-06 08:36:35', '2020-11-06 08:36:35'),
(32, 'kelas', 'kelas', 'Kela', 'Kelas', NULL, 'App\\Kela', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-06 08:40:08', '2020-11-06 08:40:08'),
(34, 'jadwals', 'jadwals', 'Jadwal', 'Jadwals', NULL, 'App\\jadwalguru', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-19 09:06:38', '2020-11-26 01:25:06'),
(37, 'keuangankelas', 'keuangankelas', 'Keuangankela', 'Keuangankelas', NULL, 'App\\Keuangankela', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-11-22 04:14:10', '2020-11-22 04:14:10'),
(38, 'rapats', 'rapats', 'Rapat', 'Rapats', NULL, 'App\\Rapat', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-11-22 23:52:57', '2020-11-26 01:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwals`
--

CREATE TABLE `jadwals` (
  `id` int(10) UNSIGNED NOT NULL,
  `hari` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `nama_guru` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mata_pelajaran` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jadwals`
--

INSERT INTO `jadwals` (`id`, `hari`, `tanggal`, `nama_guru`, `mata_pelajaran`, `jam`, `created_at`, `updated_at`, `kode`) VALUES
(1, 'Senin', '2020-09-09', 'Bu Andin', 'Matematika', '07.00-09.00', '2020-11-19 09:12:00', '2020-11-24 20:07:56', '1234'),
(2, 'Selasa', '2020-09-10', 'Bu Syla', 'Bahasa Indonesia', '07.00-09.00', '2020-11-24 20:09:11', '2020-11-24 20:09:11', '1234'),
(3, 'Rabu', '2020-09-11', 'Bu Syin', 'Bahasa Inggri', '07.00-09.00', '2020-11-24 20:09:58', '2020-11-24 20:09:58', '1234'),
(4, 'Senin', '2020-09-09', 'Bu Kila', 'Bahasa Sunda', '07.00-09.00', '2020-11-24 20:10:38', '2020-11-24 20:10:38', '4321'),
(5, 'Selasa', '2020-09-10', 'Pak Bubud', 'Bahasa Inggris', '07.00-09.00', '2020-11-24 20:11:25', '2020-11-24 20:11:25', '4321'),
(6, 'Rabu', '2020-09-11', 'pak mamat', 'Olah Raga', '07.00-09.00', '2020-11-24 20:12:13', '2020-11-24 20:12:13', '4321'),
(7, 'Kamis', '2020-09-09', 'Bu Dian', 'Matematika', '07.00-09.00', '2020-11-24 23:56:23', '2020-11-24 23:56:23', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `kasussiswas`
--

CREATE TABLE `kasussiswas` (
  `id` int(10) UNSIGNED NOT NULL,
  `namaSiswa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenisKasus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `point` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kasussiswas`
--

INSERT INTO `kasussiswas` (`id`, `namaSiswa`, `jenisKasus`, `point`, `Tanggal`, `created_at`, `updated_at`, `kode`) VALUES
(4, 'Anisa', 'Terlambat', '10', '2020-11-17', '2020-11-16 20:51:00', '2020-11-23 01:28:36', '1234'),
(5, 'nisa', 'bully', '10', '2020-11-19', '2020-11-19 07:25:00', '2020-11-23 01:28:14', '4321'),
(6, 'nis', 'berkelahi', '10', '2020-11-19', '2020-11-19 07:27:00', '2020-11-23 01:27:56', '1234'),
(7, 'Dian', 'berkelahi', '10', '2020-11-24', '2020-11-25 00:29:05', '2020-11-25 00:29:05', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `jurusan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `jurusan`, `kelas`, `kode`, `created_at`, `updated_at`) VALUES
(1, 'Rekayasa Perangkat Lunak', 'XII RPL 1', '1234', '2020-11-12 06:13:05', '2020-11-12 06:13:05'),
(2, 'Rekayasa Perangkat Lunak', 'XII RPL 2', '4321', '2020-11-12 06:13:31', '2020-11-12 06:13:31'),
(3, 'Rekayasa Perangkat Lunak', 'XI RPL 1', '123', '2020-11-12 08:45:46', '2020-11-12 08:45:46'),
(4, 'Rekayasa Perangkat Lunak', 'XI RPL 2', '321', '2020-11-12 08:46:07', '2020-11-12 08:46:07'),
(5, 'Rekayasa Perangkat Lunak', 'XI RPL 3', '231', '2020-11-12 08:46:55', '2020-11-12 08:46:55'),
(6, 'Rekayasa Perangkat Lunak', 'X RPL 1', '12345', '2020-11-12 08:47:20', '2020-11-12 08:47:20'),
(7, 'Rekayasa Perangkat Lunak', 'X RPL 2', '54321', '2020-11-12 08:47:38', '2020-11-12 08:47:38'),
(8, 'Rekayasa Perangkat Lunak', 'X RPL 3', '34521', '2020-11-12 08:48:00', '2020-11-12 08:48:00');

-- --------------------------------------------------------

--
-- Table structure for table `keuangankelas`
--

CREATE TABLE `keuangankelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pemasukan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengeluaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saldo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keuangankelas`
--

INSERT INTO `keuangankelas` (`id`, `bulan`, `pemasukan`, `pengeluaran`, `saldo`, `kode`, `created_at`, `updated_at`) VALUES
(1, 'januari', '100000', '50000', '50000', '1234', '2020-11-22 04:14:59', '2020-11-22 04:14:59'),
(2, 'februari', '50000', '10000', '40000', '4321', '2020-11-22 04:16:24', '2020-11-22 04:16:24'),
(3, 'Maret', '70000', '10000', '6000', NULL, '2020-11-22 22:40:23', '2020-11-22 22:40:23'),
(4, 'Maret', '60000', '10000', '50000', NULL, '2020-11-22 22:43:53', '2020-11-22 22:43:53'),
(5, 'Maret', '100000', '50000', '50000', '4321', '2020-11-22 22:45:24', '2020-11-22 22:45:24'),
(6, 'November', '12000', '5000', '7000', '1234', '2020-11-25 00:28:02', '2020-11-25 00:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-11-02 03:27:28', '2020-11-02 03:27:28'),
(2, 'home', '2020-11-02 07:45:04', '2020-11-06 07:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-11-02 03:27:28', '2020-11-02 03:27:28', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 7, '2020-11-02 03:27:28', '2020-11-23 01:30:16', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 2, '2020-11-02 03:27:28', '2020-11-03 22:40:26', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 3, '2020-11-02 03:27:28', '2020-11-03 22:42:14', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2020-11-02 03:27:29', '2020-11-23 01:30:15', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-11-02 03:27:29', '2020-11-02 19:57:10', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-11-02 03:27:30', '2020-11-06 09:19:30', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 4, '2020-11-02 03:27:30', '2020-11-23 01:30:50', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 3, '2020-11-02 03:27:30', '2020-11-23 01:30:23', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2020-11-02 03:27:30', '2020-11-23 01:30:16', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-11-02 03:28:13', '2020-11-23 01:30:50', 'voyager.hooks', NULL),
(15, 2, 'coba', '/coba', '_self', NULL, '#000000', NULL, 15, '2020-11-02 07:45:47', '2020-11-02 07:45:47', NULL, ''),
(17, 1, 'Manage', '', '_self', 'voyager-documentation', '#000000', NULL, 4, '2020-11-02 08:20:03', '2020-11-03 22:47:22', NULL, ''),
(23, 1, 'WaliKelas', '', '_self', 'voyager-study', '#000000', NULL, 5, '2020-11-02 19:41:47', '2020-11-03 22:42:14', NULL, ''),
(31, 1, 'Kasus Siswa', '', '_self', 'voyager-bug', '#000000', 23, 1, '2020-11-06 01:43:01', '2020-11-26 01:42:02', 'voyager.kasussiswas.index', 'null'),
(35, 1, 'Absensi Kelas', '', '_self', 'voyager-list', '#000000', 23, 3, '2020-11-06 02:16:57', '2020-11-26 01:43:21', 'voyager.absensikelas.index', 'null'),
(36, 1, 'Data Adm', '', '_self', 'voyager-documentation', '#000000', 23, 2, '2020-11-06 07:47:02', '2020-11-26 01:42:36', 'voyager.dataadms.index', 'null'),
(37, 1, 'Data Siswa', '', '_self', 'voyager-data', '#000000', 17, 1, '2020-11-06 07:48:53', '2020-11-26 01:45:49', 'voyager.datasiswas.index', 'null'),
(38, 2, 'Data Adm', '', '_self', NULL, '#000000', NULL, 16, '2020-11-06 07:54:22', '2020-11-06 07:54:22', 'voyager.dataadms.index', NULL),
(40, 1, 'Rapat Orang Tua', '', '_self', NULL, '#000000', 23, 4, '2020-11-06 08:36:35', '2020-11-24 20:36:36', 'voyager.rapatortus.index', 'null'),
(41, 1, 'Kelas', '', '_self', 'voyager-trophy', '#000000', 17, 2, '2020-11-06 08:40:08', '2020-11-26 01:45:52', 'voyager.kelas.index', 'null'),
(42, 1, 'Jadwals', '', '_self', 'voyager-calendar', '#000000', 17, 3, '2020-11-19 09:06:40', '2020-11-26 01:45:52', 'voyager.jadwals.index', 'null'),
(45, 1, 'Keuangankelas', '', '_self', 'voyager-diamond', '#000000', 23, 5, '2020-11-22 04:14:10', '2020-11-26 01:47:23', 'voyager.keuangankelas.index', 'null'),
(46, 1, 'Rapats', '', '_self', 'voyager-external', '#000000', 23, 6, '2020-11-22 23:52:57', '2020-11-26 01:48:26', 'voyager.rapats.index', 'null');

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
(2, '2016_01_01_000000_add_voyager_user_fields', 1),
(3, '2016_01_01_000000_create_data_types_table', 1),
(4, '2016_05_19_173453_create_menu_table', 1),
(5, '2016_10_21_190000_create_roles_table', 1),
(6, '2016_10_21_190000_create_settings_table', 1),
(7, '2016_11_30_135954_create_permission_table', 1),
(8, '2016_11_30_141208_create_permission_role_table', 1),
(9, '2016_12_26_201236_data_types__add__server_side', 1),
(10, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(11, '2017_01_14_005015_create_translations_table', 1),
(12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(13, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(14, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(15, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(16, '2017_08_05_000000_add_group_to_settings_table', 1),
(17, '2017_11_26_013050_add_user_role_relationship', 1),
(18, '2017_11_26_015000_create_user_roles_table', 1),
(19, '2018_03_11_000000_add_user_settings', 1),
(20, '2018_03_14_000000_add_details_to_data_types_table', 1),
(21, '2018_03_16_000000_make_settings_value_nullable', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2014_10_12_100000_create_password_resets_table', 3),
(28, '2020_11_23_061801_create_rapats_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-11-02 03:28:06', '2020-11-02 03:28:06');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-11-02 03:27:31', '2020-11-02 03:27:31'),
(2, 'browse_bread', NULL, '2020-11-02 03:27:31', '2020-11-02 03:27:31'),
(3, 'browse_database', NULL, '2020-11-02 03:27:32', '2020-11-02 03:27:32'),
(4, 'browse_media', NULL, '2020-11-02 03:27:32', '2020-11-02 03:27:32'),
(5, 'browse_compass', NULL, '2020-11-02 03:27:32', '2020-11-02 03:27:32'),
(6, 'browse_menus', 'menus', '2020-11-02 03:27:32', '2020-11-02 03:27:32'),
(7, 'read_menus', 'menus', '2020-11-02 03:27:32', '2020-11-02 03:27:32'),
(8, 'edit_menus', 'menus', '2020-11-02 03:27:33', '2020-11-02 03:27:33'),
(9, 'add_menus', 'menus', '2020-11-02 03:27:33', '2020-11-02 03:27:33'),
(10, 'delete_menus', 'menus', '2020-11-02 03:27:33', '2020-11-02 03:27:33'),
(11, 'browse_roles', 'roles', '2020-11-02 03:27:33', '2020-11-02 03:27:33'),
(12, 'read_roles', 'roles', '2020-11-02 03:27:34', '2020-11-02 03:27:34'),
(13, 'edit_roles', 'roles', '2020-11-02 03:27:34', '2020-11-02 03:27:34'),
(14, 'add_roles', 'roles', '2020-11-02 03:27:34', '2020-11-02 03:27:34'),
(15, 'delete_roles', 'roles', '2020-11-02 03:27:34', '2020-11-02 03:27:34'),
(16, 'browse_users', 'users', '2020-11-02 03:27:35', '2020-11-02 03:27:35'),
(17, 'read_users', 'users', '2020-11-02 03:27:35', '2020-11-02 03:27:35'),
(18, 'edit_users', 'users', '2020-11-02 03:27:35', '2020-11-02 03:27:35'),
(19, 'add_users', 'users', '2020-11-02 03:27:35', '2020-11-02 03:27:35'),
(20, 'delete_users', 'users', '2020-11-02 03:27:35', '2020-11-02 03:27:35'),
(21, 'browse_settings', 'settings', '2020-11-02 03:27:35', '2020-11-02 03:27:35'),
(22, 'read_settings', 'settings', '2020-11-02 03:27:35', '2020-11-02 03:27:35'),
(23, 'edit_settings', 'settings', '2020-11-02 03:27:35', '2020-11-02 03:27:35'),
(24, 'add_settings', 'settings', '2020-11-02 03:27:35', '2020-11-02 03:27:35'),
(25, 'delete_settings', 'settings', '2020-11-02 03:27:36', '2020-11-02 03:27:36'),
(41, 'browse_hooks', NULL, '2020-11-02 03:28:13', '2020-11-02 03:28:13'),
(52, 'browse_kelass', 'kelass', '2020-11-02 08:51:28', '2020-11-02 08:51:28'),
(53, 'read_kelass', 'kelass', '2020-11-02 08:51:28', '2020-11-02 08:51:28'),
(54, 'edit_kelass', 'kelass', '2020-11-02 08:51:28', '2020-11-02 08:51:28'),
(55, 'add_kelass', 'kelass', '2020-11-02 08:51:28', '2020-11-02 08:51:28'),
(56, 'delete_kelass', 'kelass', '2020-11-02 08:51:28', '2020-11-02 08:51:28'),
(57, 'browse_pages', 'pages', '2020-11-02 08:54:49', '2020-11-02 08:54:49'),
(58, 'read_pages', 'pages', '2020-11-02 08:54:49', '2020-11-02 08:54:49'),
(59, 'edit_pages', 'pages', '2020-11-02 08:54:49', '2020-11-02 08:54:49'),
(60, 'add_pages', 'pages', '2020-11-02 08:54:49', '2020-11-02 08:54:49'),
(61, 'delete_pages', 'pages', '2020-11-02 08:54:49', '2020-11-02 08:54:49'),
(72, 'browse_kasussiswas', 'kasussiswas', '2020-11-06 01:43:01', '2020-11-06 01:43:01'),
(73, 'read_kasussiswas', 'kasussiswas', '2020-11-06 01:43:01', '2020-11-06 01:43:01'),
(74, 'edit_kasussiswas', 'kasussiswas', '2020-11-06 01:43:01', '2020-11-06 01:43:01'),
(75, 'add_kasussiswas', 'kasussiswas', '2020-11-06 01:43:01', '2020-11-06 01:43:01'),
(76, 'delete_kasussiswas', 'kasussiswas', '2020-11-06 01:43:01', '2020-11-06 01:43:01'),
(92, 'browse_absensikelas', 'absensikelas', '2020-11-06 02:16:57', '2020-11-06 02:16:57'),
(93, 'read_absensikelas', 'absensikelas', '2020-11-06 02:16:57', '2020-11-06 02:16:57'),
(94, 'edit_absensikelas', 'absensikelas', '2020-11-06 02:16:57', '2020-11-06 02:16:57'),
(95, 'add_absensikelas', 'absensikelas', '2020-11-06 02:16:57', '2020-11-06 02:16:57'),
(96, 'delete_absensikelas', 'absensikelas', '2020-11-06 02:16:57', '2020-11-06 02:16:57'),
(97, 'browse_dataadms', 'dataadms', '2020-11-06 07:47:02', '2020-11-06 07:47:02'),
(98, 'read_dataadms', 'dataadms', '2020-11-06 07:47:02', '2020-11-06 07:47:02'),
(99, 'edit_dataadms', 'dataadms', '2020-11-06 07:47:02', '2020-11-06 07:47:02'),
(100, 'add_dataadms', 'dataadms', '2020-11-06 07:47:02', '2020-11-06 07:47:02'),
(101, 'delete_dataadms', 'dataadms', '2020-11-06 07:47:02', '2020-11-06 07:47:02'),
(102, 'browse_datasiswas', 'datasiswas', '2020-11-06 07:48:53', '2020-11-06 07:48:53'),
(103, 'read_datasiswas', 'datasiswas', '2020-11-06 07:48:53', '2020-11-06 07:48:53'),
(104, 'edit_datasiswas', 'datasiswas', '2020-11-06 07:48:53', '2020-11-06 07:48:53'),
(105, 'add_datasiswas', 'datasiswas', '2020-11-06 07:48:53', '2020-11-06 07:48:53'),
(106, 'delete_datasiswas', 'datasiswas', '2020-11-06 07:48:53', '2020-11-06 07:48:53'),
(112, 'browse_rapatortus', 'rapatortus', '2020-11-06 08:36:35', '2020-11-06 08:36:35'),
(113, 'read_rapatortus', 'rapatortus', '2020-11-06 08:36:35', '2020-11-06 08:36:35'),
(114, 'edit_rapatortus', 'rapatortus', '2020-11-06 08:36:35', '2020-11-06 08:36:35'),
(115, 'add_rapatortus', 'rapatortus', '2020-11-06 08:36:35', '2020-11-06 08:36:35'),
(116, 'delete_rapatortus', 'rapatortus', '2020-11-06 08:36:35', '2020-11-06 08:36:35'),
(117, 'browse_kelas', 'kelas', '2020-11-06 08:40:08', '2020-11-06 08:40:08'),
(118, 'read_kelas', 'kelas', '2020-11-06 08:40:08', '2020-11-06 08:40:08'),
(119, 'edit_kelas', 'kelas', '2020-11-06 08:40:08', '2020-11-06 08:40:08'),
(120, 'add_kelas', 'kelas', '2020-11-06 08:40:08', '2020-11-06 08:40:08'),
(121, 'delete_kelas', 'kelas', '2020-11-06 08:40:08', '2020-11-06 08:40:08'),
(122, 'browse_jadwals', 'jadwals', '2020-11-19 09:06:39', '2020-11-19 09:06:39'),
(123, 'read_jadwals', 'jadwals', '2020-11-19 09:06:39', '2020-11-19 09:06:39'),
(124, 'edit_jadwals', 'jadwals', '2020-11-19 09:06:39', '2020-11-19 09:06:39'),
(125, 'add_jadwals', 'jadwals', '2020-11-19 09:06:39', '2020-11-19 09:06:39'),
(126, 'delete_jadwals', 'jadwals', '2020-11-19 09:06:39', '2020-11-19 09:06:39'),
(137, 'browse_keuangankelas', 'keuangankelas', '2020-11-22 04:14:10', '2020-11-22 04:14:10'),
(138, 'read_keuangankelas', 'keuangankelas', '2020-11-22 04:14:10', '2020-11-22 04:14:10'),
(139, 'edit_keuangankelas', 'keuangankelas', '2020-11-22 04:14:10', '2020-11-22 04:14:10'),
(140, 'add_keuangankelas', 'keuangankelas', '2020-11-22 04:14:10', '2020-11-22 04:14:10'),
(141, 'delete_keuangankelas', 'keuangankelas', '2020-11-22 04:14:10', '2020-11-22 04:14:10'),
(142, 'browse_rapats', 'rapats', '2020-11-22 23:52:57', '2020-11-22 23:52:57'),
(143, 'read_rapats', 'rapats', '2020-11-22 23:52:57', '2020-11-22 23:52:57'),
(144, 'edit_rapats', 'rapats', '2020-11-22 23:52:57', '2020-11-22 23:52:57'),
(145, 'add_rapats', 'rapats', '2020-11-22 23:52:57', '2020-11-22 23:52:57'),
(146, 'delete_rapats', 'rapats', '2020-11-22 23:52:57', '2020-11-22 23:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(72, 1),
(73, 1),
(92, 1),
(93, 1),
(97, 1),
(97, 2),
(98, 1),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(137, 1),
(138, 1),
(142, 1),
(143, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-11-02 03:28:03', '2020-11-02 03:28:03'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-11-02 03:28:03', '2020-11-02 03:28:03'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-11-02 03:28:03', '2020-11-02 03:28:03'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-11-02 03:28:03', '2020-11-02 03:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `rapatortus`
--

CREATE TABLE `rapatortus` (
  `id` int(10) UNSIGNED NOT NULL,
  `materiPertemuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tglPertemuan` date DEFAULT NULL,
  `jumlahHadir` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bukti` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rapatortus`
--

INSERT INTO `rapatortus` (`id`, `materiPertemuan`, `tglPertemuan`, `jumlahHadir`, `bukti`, `created_at`, `updated_at`) VALUES
(2, 'A', '2020-11-08', 'AS', '`WS``', '2020-11-19 08:49:15', '2020-11-19 08:49:15'),
(3, 'a', '2020-11-02', 'a', '`', '2020-11-19 08:49:57', '2020-11-19 08:49:57');

-- --------------------------------------------------------

--
-- Table structure for table `rapats`
--

CREATE TABLE `rapats` (
  `id_jadwal` bigint(20) UNSIGNED NOT NULL,
  `materi_pertemuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `jml_hadir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rapats`
--

INSERT INTO `rapats` (`id_jadwal`, `materi_pertemuan`, `date`, `jml_hadir`, `bukti`, `created_at`, `updated_at`, `kode`) VALUES
(1, 'Pengambilan Raport', '2020-11-23', '33', 'abstrak.jpg', '2020-11-22 23:31:00', '2020-11-23 01:05:41', '1234'),
(2, 'ghjkdfgh', '2020-11-23', '21', '1.png', '2020-11-22 23:32:00', '2020-11-23 01:05:22', '1234'),
(3, 'aa', '2020-11-23', '31', 'nomer kuota_XII_RPL1.xlsx', '2020-11-23 03:48:00', '2020-11-24 20:26:24', '1234'),
(4, 'Rapat', '2020-09-09', '30', 'abstrak.jpg', '2020-11-24 20:27:04', '2020-11-24 20:27:04', '4321'),
(5, 'Kasus', '2020-11-25', '32', '5.png', '2020-11-25 00:30:31', '2020-11-25 00:30:31', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-11-02 03:27:31', '2020-11-02 03:27:31'),
(2, 'user', 'Normal User', '2020-11-02 03:27:31', '2020-11-02 03:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\November2020\\95LKDxFCwUCRJen5v5P1.jpg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'M\'Starbhak', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Selamat Datang di Management Starhak', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-11-02 03:28:06', '2020-11-02 03:28:06'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-11-02 03:28:06', '2020-11-02 03:28:06'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-11-02 03:28:06', '2020-11-02 03:28:06'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-11-02 03:28:07', '2020-11-02 03:28:07'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-11-02 03:28:07', '2020-11-02 03:28:07'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-11-02 03:28:07', '2020-11-02 03:28:07'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-11-02 03:28:07', '2020-11-02 03:28:07'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-11-02 03:28:07', '2020-11-02 03:28:07'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-11-02 03:28:07', '2020-11-02 03:28:07'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-11-02 03:28:07', '2020-11-02 03:28:07'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-11-02 03:28:07', '2020-11-02 03:28:07'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-11-02 03:28:08', '2020-11-02 03:28:08'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-11-02 03:28:08', '2020-11-02 03:28:08'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-11-02 03:28:08', '2020-11-02 03:28:08'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-11-02 03:28:08', '2020-11-02 03:28:08'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-11-02 03:28:08', '2020-11-02 03:28:08'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-11-02 03:28:08', '2020-11-02 03:28:08'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-11-02 03:28:09', '2020-11-02 03:28:09'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-11-02 03:28:09', '2020-11-02 03:28:09'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-11-02 03:28:09', '2020-11-02 03:28:09'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-11-02 03:28:09', '2020-11-02 03:28:09'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-11-02 03:28:09', '2020-11-02 03:28:09'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-11-02 03:28:09', '2020-11-02 03:28:09'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-11-02 03:28:09', '2020-11-02 03:28:09'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-11-02 03:28:09', '2020-11-02 03:28:09'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-11-02 03:28:09', '2020-11-02 03:28:09'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-11-02 03:28:10', '2020-11-02 03:28:10'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-11-02 03:28:10', '2020-11-02 03:28:10'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-11-02 03:28:10', '2020-11-02 03:28:10'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-11-02 03:28:10', '2020-11-02 03:28:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$m6JgfnlZMcedXd1MI.pRwORWapx7rt3WxClVHUf6uRTZWNuL8/S1C', 'RDjSERjeMARw9wXqeziYYmgMF9jI95leRmpGQcOddIMzG4IilZbGAWVC6hof', NULL, '2020-11-02 03:27:59', '2020-11-02 03:27:59'),
(2, 2, 'nisa', 'nisa@gmail.com', 'users\\November2020\\FAh5HB7eTxNWXKGnNB37.jpg', NULL, '$2y$10$28l43VMreNPEFTsx/0XcoOe1YLWuWa09VEWPAlJHSrbBhVoo76Ot.', NULL, '{\"locale\":\"en\"}', '2020-11-02 04:25:07', '2020-11-26 01:33:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensikelas`
--
ALTER TABLE `absensikelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `dataadms`
--
ALTER TABLE `dataadms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datasiswas`
--
ALTER TABLE `datasiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kasussiswas`
--
ALTER TABLE `kasussiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keuangankelas`
--
ALTER TABLE `keuangankelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `rapatortus`
--
ALTER TABLE `rapatortus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rapats`
--
ALTER TABLE `rapats`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensikelas`
--
ALTER TABLE `absensikelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dataadms`
--
ALTER TABLE `dataadms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `datasiswas`
--
ALTER TABLE `datasiswas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwals`
--
ALTER TABLE `jadwals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kasussiswas`
--
ALTER TABLE `kasussiswas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `keuangankelas`
--
ALTER TABLE `keuangankelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rapatortus`
--
ALTER TABLE `rapatortus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rapats`
--
ALTER TABLE `rapats`
  MODIFY `id_jadwal` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
