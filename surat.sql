-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2019 at 12:48 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` int(1) NOT NULL,
  `app_name` varchar(100) NOT NULL,
  `app_company` varchar(100) NOT NULL,
  `app_logo` varchar(100) DEFAULT NULL,
  `app_logo_lg` varchar(20) NOT NULL,
  `app_logo_mini` varchar(5) NOT NULL,
  `app_theme` varchar(50) NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `app_name`, `app_company`, `app_logo`, `app_logo_lg`, `app_logo_mini`, `app_theme`, `updated_at`) VALUES
(1, 'Apps Name', 'Company', NULL, 'AdminLTE', 'LTE', 'skin-black', '2018-01-03 14:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `log` varchar(128) NOT NULL,
  `activity` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_by` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `log`, `activity`, `user_id`, `created_by`, `created_at`) VALUES
(1, '/users/add', '', 1, 'admin', '2018-01-22 03:51:11'),
(2, '/users/update', '', 1, 'admin', '2018-01-22 03:56:29'),
(3, '/users/update', '', 1, 'admin', '2018-01-22 03:57:33'),
(4, '/users/update', '', 1, 'admin', '2018-01-22 03:58:15'),
(5, '/users/update', '', 1, 'admin', '2018-01-22 03:59:06'),
(9, '/users/update', '', 1, 'admin', '2018-01-22 04:01:02'),
(10, '/users/update', '', 1, 'admin', '2018-01-22 04:12:06'),
(11, '/users/update/3', '', 1, 'admin', '2018-01-22 04:18:05'),
(12, '/users/delete/3', '', 1, 'admin', '2018-01-22 04:19:08'),
(13, '/users/add', '{\"username\":\"username\",\"password\":\"$2y$11$2Xhy0ci\\/Ctxs6pfFmqCMbuHVNa107sYGXofwcy419Ix8D62cfpslm\",\"role_id\":2,\"created_at\":\"2018-01-22 07:15:42\",\"user_id\":21,\"fullname\":\"fullmane\",\"address\":\"address\",\"phone\":\"09877\",\"gender\":\"2\"}', 1, 'admin', '2018-01-22 07:15:42'),
(14, '/users/update/21', '{\"password\":\"$2y$11$HSXEVFb6zqFd6TwWpd.aY.VdNLRv0xaVdFdw7w0a.VLIEenohufZu\",\"fullname\":\"update\",\"address\":\"update\",\"phone\":\"09877\",\"gender\":\"2\",\"created_at\":\"2018-01-22 07:21:06\"}', 1, 'admin', '2018-01-22 07:21:06'),
(15, '/users/delete/21', '{\"id\":\"21\",\"user_id\":\"21\",\"fullname\":\"update\",\"address\":\"update\",\"phone\":\"09877\",\"gender\":\"2\",\"created_at\":\"2018-01-22 07:15:42\",\"updated_at\":\"2018-01-22 13:21:06\",\"role_id\":\"2\",\"username\":\"username\",\"password\":\"$2y$11$HSXEVFb6zqFd6TwWpd.aY.VdNLRv0xaVdFdw7w0a.VLIEenohufZu\",\"last_login\":\"0000-00-00 00:00:00\"}', 1, 'admin', '2018-01-22 07:30:15'),
(16, '/group_user/add', '[{\"role_id\":3,\"menu_id\":\"23\",\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2018-01-22 07:39:30\"},{\"role_id\":3,\"menu_id\":\"22\",\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2018-01-22 07:39:30\"},{\"role_id\":3,\"menu_id\":\"21\",\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2018-01-22 07:39:30\"},{\"role_id\":3,\"menu_id\":\"20\",\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2018-01-22 07:39:30\"},{\"role_id\":3,\"menu_id\":\"9\",\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2018-01-22 07:39:30\"},{\"role_id\":3,\"menu_id\":\"8\",\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2018-01-22 07:39:30\"}]', 1, 'admin', '2018-01-22 07:39:30'),
(17, '/group_user/delete/3', '{\"id\":\"3\",\"role\":\"oemar bakri\",\"created_at\":\"2018-01-22 07:39:30\",\"updated_at\":null}', 1, 'admin', '2018-01-22 07:41:05'),
(18, '/privileges_user/update_priv/34', '{\"priv_update\":\"0\"}', 1, 'admin', '2018-01-22 08:09:56'),
(19, '/privileges_user/update_priv/34', '{\"priv_update\":\"1\"}', 1, 'admin', '2018-01-22 08:10:11'),
(20, '/list_menus/add', '{\"menu\":\"tambah\",\"parent\":\"0\",\"link\":\"link\",\"is_published\":1,\"menu_order\":\"8000\",\"created_at\":\"2018-01-22 10:43:56\",\"level\":0,\"icon\":\"fa-bars\",\"0\":{\"role_id\":\"2\",\"menu_id\":24,\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2018-01-22 10:43:56\"},\"1\":{\"role_id\":\"1\",\"menu_id\":24,\"priv_create\":1,\"priv_read\":1,\"priv_update\":1,\"priv_delete\":1,\"created_at\":\"2018-01-22 10:43:56\"}}', 1, 'admin', '2018-01-22 10:43:56'),
(24, '/list_menus/add', '{\"menu\":\"gabut\",\"parent\":\"0\",\"link\":\"gabut\",\"is_published\":1,\"menu_order\":\"1111111\",\"created_at\":\"2018-01-22 10:54:56\",\"level\":0,\"icon\":\"fa-bitbucket-square\",\"0\":{\"role_id\":\"2\",\"menu_id\":25,\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2018-01-22 10:54:56\"},\"1\":{\"role_id\":\"1\",\"menu_id\":25,\"priv_create\":1,\"priv_read\":1,\"priv_update\":1,\"priv_delete\":1,\"created_at\":\"2018-01-22 10:54:56\"}}', 1, 'admin', '2018-01-22 10:54:56'),
(25, '/list_menus/delete/25', '{\"id\":\"54\",\"level\":\"0\",\"parent\":\"0\",\"menu\":\"gabut\",\"link\":\"gabut\",\"is_published\":\"1\",\"menu_order\":\"1111111\",\"icon\":\"fa-bitbucket-square\",\"created_at\":\"2018-01-22 10:54:56\",\"updated_at\":null,\"role_id\":\"1\",\"menu_id\":\"25\",\"priv_create\":\"1\",\"priv_read\":\"1\",\"priv_update\":\"1\",\"priv_delete\":\"1\"}', 1, 'admin', '2018-01-22 10:55:16'),
(26, '/users/update/2', '{\"username\":\"djuned92\",\"password\":\"$2y$11$Iyo4rJ6MpGhl93z7wNf5zOZAx8QDmugqz2Eoc6\\/HK0YEp0CTCIrRy\",\"fullname\":\"User\",\"address\":\"user\",\"phone\":\"988833\",\"gender\":\"1\",\"created_at\":\"2018-01-23 02:25:43\"}', 1, 'admin', '2018-01-23 02:25:43'),
(27, '/users/update/2', '{\"username\":\"djuned92\",\"password\":\"$2y$11$zTMEv9\\/HI0gK5SpU3CMjbuMiyWrJIyV1CdGOTdZyVUom1VaMQKJO6\",\"fullname\":\"Ahmad Djunaedi\",\"address\":\"Bekasi, Jati Asih\",\"phone\":\"988833\",\"gender\":\"1\",\"created_at\":\"2018-01-23 02:26:10\"}', 1, 'admin', '2018-01-23 02:26:10'),
(28, '/users/update/1', '{\"username\":\"admin\",\"password\":\"$2y$11$qrn0A.uXSnfGGGul\\/JSLGOxmtrYhbJf7rlkKTkYyM0h.TRewUKt.2\",\"fullname\":\"Admin\",\"address\":\"Indonesia\",\"phone\":\"218489878\",\"gender\":\"2\",\"created_at\":\"2018-01-23 02:29:56\"}', 1, 'admin', '2018-01-23 02:29:56'),
(29, '/privileges_user/update_priv/9', '{\"priv_read\":\"1\"}', 1, 'admin', '2018-01-31 07:50:19'),
(30, '/privileges_user/update_priv/36', '{\"priv_update\":\"0\"}', 1, 'admin', '2018-01-31 08:02:22'),
(31, '/privileges_user/update_priv/36', '{\"priv_update\":\"1\"}', 1, 'admin', '2018-01-31 08:02:36'),
(32, '/privileges_user/update_priv/36', '{\"priv_update\":\"0\"}', 1, 'admin', '2018-01-31 08:02:38'),
(33, '/privileges_user/update_priv/36', '{\"priv_delete\":\"0\"}', 1, 'admin', '2018-01-31 08:02:39'),
(34, '/privileges_user/update_priv/36', '{\"priv_create\":\"0\"}', 1, 'admin', '2018-01-31 08:02:50'),
(35, '/privileges_user/update_priv/34', '{\"priv_update\":\"1\"}', 1, 'admin', '2018-01-31 08:03:16'),
(36, '/privileges_user/update_priv/34', '{\"priv_delete\":\"1\"}', 1, 'admin', '2018-01-31 08:03:18'),
(37, '/privileges_user/update_priv/34', '{\"priv_create\":\"1\"}', 1, 'admin', '2018-01-31 08:03:19'),
(38, '/privileges_user/update_priv/36', '{\"priv_update\":\"1\"}', 1, 'admin', '2018-01-31 08:03:24'),
(39, '/privileges_user/update_priv/36', '{\"priv_delete\":\"1\"}', 1, 'admin', '2018-01-31 08:03:25'),
(40, '/privileges_user/update_priv/36', '{\"priv_create\":\"1\"}', 1, 'admin', '2018-01-31 08:03:27'),
(41, '/privileges_user/update_priv/35', '{\"priv_read\":\"1\"}', 1, 'admin', '2018-04-07 07:18:12'),
(42, '/privileges_user/update_priv/9', '{\"priv_read\":\"0\"}', 1, 'admin', '2018-04-07 07:18:16'),
(43, '/list_menus/add', '{\"menu\":\"Master\",\"parent\":\"0\",\"link\":\"\",\"is_published\":1,\"menu_order\":\"500\",\"created_at\":\"2018-06-11 14:18:11\",\"level\":0,\"icon\":\"fa-circle\",\"0\":{\"role_id\":\"2\",\"menu_id\":24,\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2018-06-11 14:18:11\"},\"1\":{\"role_id\":\"1\",\"menu_id\":24,\"priv_create\":1,\"priv_read\":1,\"priv_update\":1,\"priv_delete\":1,\"created_at\":\"2018-06-11 14:18:11\"}}', 1, 'admin', '2018-06-11 14:18:11'),
(44, '/list_menus/add', '{\"menu\":\"Kategori\",\"parent\":\"24\",\"link\":\"category\",\"is_published\":1,\"menu_order\":\"510\",\"created_at\":\"2018-06-11 14:18:51\",\"level\":1,\"icon\":null,\"0\":{\"role_id\":\"2\",\"menu_id\":25,\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2018-06-11 14:18:51\"},\"1\":{\"role_id\":\"1\",\"menu_id\":25,\"priv_create\":1,\"priv_read\":1,\"priv_update\":1,\"priv_delete\":1,\"created_at\":\"2018-06-11 14:18:51\"}}', 1, 'admin', '2018-06-11 14:18:51'),
(45, '/list_menus/update/24', '{\"menu\":\"Master\",\"parent\":\"0\",\"link\":\"\",\"is_published\":1,\"menu_order\":\"500\",\"level\":0,\"icon\":\"fa-th-large\"}', 1, 'admin', '2018-06-11 14:20:17'),
(46, '/list_menus/update/21', '{\"menu\":\"Data Users\",\"parent\":\"0\",\"link\":\"users\",\"is_published\":1,\"menu_order\":\"300\",\"level\":0,\"icon\":\"fa-users\"}', 1, 'admin', '2018-06-11 14:22:17'),
(47, '/list_menus/update/21', '{\"menu\":\"List Users\",\"parent\":\"20\",\"link\":\"users\",\"is_published\":1,\"menu_order\":\"1110\",\"level\":2,\"icon\":null}', 1, 'admin', '2018-06-11 14:34:54'),
(48, '/list_menus/update/21', '{\"menu\":\"List Users\",\"parent\":\"20\",\"link\":\"users\",\"is_published\":1,\"menu_order\":\"1311\",\"level\":2,\"icon\":null}', 1, 'admin', '2018-06-11 14:35:43'),
(49, '/list_menus/delete/25', '{\"id\":\"48\",\"level\":\"1\",\"parent\":\"24\",\"menu\":\"Kategori\",\"link\":\"category\",\"is_published\":\"1\",\"menu_order\":\"510\",\"icon\":null,\"created_at\":\"2018-06-11 14:18:51\",\"updated_at\":null,\"role_id\":\"1\",\"menu_id\":\"25\",\"priv_create\":\"1\",\"priv_read\":\"1\",\"priv_update\":\"1\",\"priv_delete\":\"1\"}', 1, 'admin', '2018-06-11 14:36:02'),
(50, '/list_menus/delete/24', '{\"id\":\"46\",\"level\":\"0\",\"parent\":\"0\",\"menu\":\"Master\",\"link\":\"\",\"is_published\":\"1\",\"menu_order\":\"500\",\"icon\":\"fa-th-large\",\"created_at\":\"2018-06-11 14:18:11\",\"updated_at\":null,\"role_id\":\"1\",\"menu_id\":\"24\",\"priv_create\":\"1\",\"priv_read\":\"1\",\"priv_update\":\"1\",\"priv_delete\":\"1\"}', 1, 'admin', '2018-06-11 14:36:09'),
(51, '/list_menus/update_is_published/22', '{\"is_published\":\"0\"}', 1, 'admin', '2018-09-22 12:30:07'),
(52, '/privileges_user/update_priv/44', '{\"priv_create\":\"0\"}', 1, 'admin', '2018-09-22 12:30:42'),
(53, '/privileges_user/update_priv/44', '{\"priv_create\":\"1\"}', 1, 'admin', '2018-09-22 12:30:54'),
(54, '/privileges_user/update_priv/34', '{\"priv_create\":\"0\"}', 1, 'admin', '2018-09-22 12:31:10'),
(55, '/privileges_user/update_priv/34', '{\"priv_delete\":\"0\"}', 1, 'admin', '2018-09-22 12:31:23'),
(56, '/privileges_user/update_priv/34', '{\"priv_create\":\"1\"}', 1, 'admin', '2018-09-22 12:31:38'),
(57, '/list_menus/update_is_published/22', '{\"is_published\":\"1\"}', 1, 'admin', '2018-09-22 12:33:27'),
(58, '/privileges_user/update_priv/34', '{\"priv_delete\":\"1\"}', 1, 'admin', '2018-09-22 12:33:39'),
(59, '/privileges_user/update_priv/7', '{\"priv_create\":\"1\"}', 1, 'admin', '2018-09-22 12:34:56'),
(60, '/privileges_user/update_priv/7', '{\"priv_create\":\"0\"}', 1, 'admin', '2018-09-22 12:35:04'),
(61, '/privileges_user/update_priv/9', '{\"priv_read\":\"1\"}', 1, 'admin', '2018-09-22 12:37:02'),
(62, '/list_menus/add', '{\"menu\":\"Juned\",\"parent\":\"0\",\"link\":\"juned\",\"is_published\":1,\"menu_order\":\"90000\",\"created_at\":\"2019-03-27 11:25:14\",\"level\":0,\"icon\":\"fa-caret-square-o-down\",\"0\":{\"role_id\":\"2\",\"menu_id\":true,\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2019-03-27 11:25:14\"},\"1\":{\"role_id\":\"1\",\"menu_id\":true,\"priv_create\":1,\"priv_read\":1,\"priv_update\":1,\"priv_delete\":1,\"created_at\":\"2019-03-27 11:25:14\"}}', 1, 'admin', '2019-03-27 11:25:15'),
(63, '/list_menus/add', '{\"menu\":\"123\",\"parent\":\"0\",\"link\":\"1\",\"is_published\":1,\"menu_order\":\"1000\",\"created_at\":\"2019-03-27 11:25:58\",\"level\":0,\"icon\":\"fa-anchor\",\"0\":{\"role_id\":\"2\",\"menu_id\":true,\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2019-03-27 11:25:58\"},\"1\":{\"role_id\":\"1\",\"menu_id\":true,\"priv_create\":1,\"priv_read\":1,\"priv_update\":1,\"priv_delete\":1,\"created_at\":\"2019-03-27 11:25:58\"}}', 1, 'admin', '2019-03-27 11:25:58'),
(64, '/list_menus/update/25', '{\"menu\":\"MENU\",\"parent\":\"0\",\"link\":\"1\",\"is_published\":1,\"menu_order\":\"1000\",\"level\":0,\"icon\":\"fa-anchor\"}', 1, 'admin', '2019-03-27 11:26:57'),
(65, '/list_menus/update/25', '{\"menu\":\"MENU\",\"parent\":\"0\",\"link\":\"menu\",\"is_published\":1,\"menu_order\":\"1000\",\"level\":0,\"icon\":\"fa-anchor\"}', 1, 'admin', '2019-03-27 11:27:12'),
(66, '/privileges_user/update_priv/9', '{\"priv_read\":\"0\"}', 1, 'admin', '2019-03-27 11:29:00'),
(67, '/privileges_user/update_priv/35', '{\"priv_create\":\"1\"}', 1, 'admin', '2019-03-27 11:30:52'),
(68, '/privileges_user/update_priv/35', '{\"priv_update\":\"1\"}', 1, 'admin', '2019-03-27 11:31:23'),
(69, '/list_menus/delete/25', '{\"id\":\"46\",\"level\":\"0\",\"parent\":\"0\",\"menu\":\"MENU\",\"link\":\"menu\",\"is_published\":\"1\",\"menu_order\":\"1000\",\"icon\":\"fa-anchor\",\"created_at\":\"2019-03-27 11:25:14\",\"updated_at\":\"2019-03-27 17:42:32\",\"role_id\":\"1\",\"menu_id\":\"25\",\"priv_create\":\"1\",\"priv_read\":\"1\",\"priv_update\":\"1\",\"priv_delete\":\"1\"}', 1, 'admin', '2019-06-23 16:06:06'),
(70, '/list_menus/delete/24', '{\"id\":\"48\",\"level\":\"0\",\"parent\":\"0\",\"menu\":\"Juned\",\"link\":\"juned\",\"is_published\":\"1\",\"menu_order\":\"90000\",\"icon\":\"fa-caret-square-o-down\",\"created_at\":\"2019-03-27 11:25:58\",\"updated_at\":\"2019-03-27 17:42:26\",\"role_id\":\"1\",\"menu_id\":\"24\",\"priv_create\":\"1\",\"priv_read\":\"1\",\"priv_update\":\"1\",\"priv_delete\":\"1\"}', 1, 'admin', '2019-06-23 16:06:17'),
(71, '/list_menus/add', '{\"menu\":\"Surat\",\"parent\":\"0\",\"link\":\"surat\",\"is_published\":1,\"menu_order\":\"100\",\"created_at\":\"2019-06-23 16:07:33\",\"level\":0,\"icon\":\"fa-envelope-o\",\"0\":{\"role_id\":\"2\",\"menu_id\":true,\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2019-06-23 16:07:33\"},\"1\":{\"role_id\":\"1\",\"menu_id\":true,\"priv_create\":1,\"priv_read\":1,\"priv_update\":1,\"priv_delete\":1,\"created_at\":\"2019-06-23 16:07:33\"}}', 1, 'admin', '2019-06-23 16:07:33'),
(72, '/list_menus/add', '{\"menu\":\"Surat\",\"parent\":\"0\",\"link\":\"list_surat\",\"is_published\":1,\"menu_order\":\"100\",\"created_at\":\"2019-06-23 16:13:09\",\"level\":0,\"icon\":\"fa-envelope-o\",\"0\":{\"role_id\":\"2\",\"menu_id\":true,\"priv_create\":0,\"priv_read\":0,\"priv_update\":0,\"priv_delete\":0,\"created_at\":\"2019-06-23 16:13:09\"},\"1\":{\"role_id\":\"1\",\"menu_id\":true,\"priv_create\":1,\"priv_read\":1,\"priv_update\":1,\"priv_delete\":1,\"created_at\":\"2019-06-23 16:13:09\"}}', 1, 'admin', '2019-06-23 16:13:09'),
(73, '/privileges_user/update_priv/64', '{\"priv_create\":\"1\"}', 1, 'admin', '2019-06-23 16:21:32'),
(74, '/privileges_user/update_priv/64', '{\"priv_read\":\"1\"}', 1, 'admin', '2019-06-23 16:21:33'),
(75, '/privileges_user/update_priv/64', '{\"priv_update\":\"1\"}', 1, 'admin', '2019-06-23 16:21:34'),
(76, '/privileges_user/update_priv/64', '{\"priv_delete\":\"1\"}', 1, 'admin', '2019-06-23 16:21:36'),
(77, '/privileges_user/update_priv/49', '{\"priv_create\":\"1\"}', 1, 'admin', '2019-06-23 16:21:37'),
(78, '/privileges_user/update_priv/55', '{\"priv_create\":\"1\"}', 1, 'admin', '2019-06-23 16:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `level` int(4) NOT NULL DEFAULT '0',
  `parent` int(4) NOT NULL DEFAULT '0',
  `menu` varchar(64) NOT NULL,
  `link` varchar(64) NOT NULL,
  `is_published` int(1) NOT NULL DEFAULT '0',
  `menu_order` int(4) NOT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `level`, `parent`, `menu`, `link`, `is_published`, `menu_order`, `icon`, `created_at`, `updated_at`) VALUES
(8, 0, 0, 'Settings', '', 1, 1300, 'fa-gear', '2017-12-21 05:46:14', '2018-01-15 14:55:03'),
(9, 1, 8, 'Menu', 'list_menus', 1, 1320, NULL, '2017-12-21 05:47:19', '2018-01-15 14:55:06'),
(20, 1, 8, 'User', '', 1, 1310, NULL, '2017-12-23 07:23:25', '2018-01-15 14:55:10'),
(21, 2, 20, 'List Users', 'users', 1, 1311, NULL, '2017-12-23 07:24:31', '2018-06-11 19:35:43'),
(22, 2, 20, 'Group User', 'group_user', 1, 1312, NULL, '2017-12-23 07:25:25', '2018-09-22 17:33:27'),
(23, 2, 20, 'Privileges User', 'privileges_user', 1, 1313, NULL, '2017-12-23 11:03:14', '2018-01-15 14:55:20'),
(30, 0, 0, 'Surat', 'list_surat', 1, 100, 'fa-envelope-o', '2019-06-23 16:13:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `npd`
--

CREATE TABLE `npd` (
  `id` int(11) NOT NULL,
  `npd_id` int(11) DEFAULT NULL,
  `npd` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `kegiatan` text NOT NULL,
  `jumlah` float(10,2) NOT NULL,
  `nomor` varchar(20) NOT NULL,
  `image_surat` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(16) NOT NULL,
  `gender` int(1) NOT NULL COMMENT '1.male 2.female',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `fullname`, `address`, `phone`, `gender`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'Indonesia', '218489878', 2, '2018-01-23 02:29:56', '2018-01-23 08:29:56'),
(2, 2, 'Ahmad Djunaedi', 'Bekasi, Jati Asih', '988833', 1, '2018-01-23 02:26:10', '2018-01-23 08:26:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(2) NOT NULL,
  `role` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-12-16 00:00:00', '2017-12-23 14:24:15'),
(2, 'user', '2017-12-22 00:00:00', '2017-12-23 14:23:52');

-- --------------------------------------------------------

--
-- Table structure for table `tm_npd`
--

CREATE TABLE `tm_npd` (
  `id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tm_npd`
--

INSERT INTO `tm_npd` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'GU', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'TU', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'UP', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(60) NOT NULL,
  `last_login` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `password`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', '$2y$11$XBYAcNFBwa1e1dvc1zrUdOfBvvA1LQoWWVZNDW2kKyF7kqWU.iezG', '2019-07-01 10:01:24', '2017-12-11 04:57:04', '2019-07-01 15:01:24'),
(2, 2, 'user', '$2y$10$PLVitkXzShdRrb80edlpPehVM4tu8/2IxmlCHgkyyxTvNuIbxcwdi', '2019-03-27 11:28:39', '2017-12-24 11:55:52', '2019-03-27 17:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_privileges`
--

CREATE TABLE `user_privileges` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `priv_create` int(1) NOT NULL DEFAULT '0',
  `priv_read` int(1) NOT NULL DEFAULT '0',
  `priv_update` int(1) NOT NULL DEFAULT '0',
  `priv_delete` int(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_privileges`
--

INSERT INTO `user_privileges` (`id`, `role_id`, `menu_id`, `priv_create`, `priv_read`, `priv_update`, `priv_delete`, `created_at`, `updated_at`) VALUES
(7, 2, 8, 0, 1, 0, 0, '2017-12-21 05:46:14', '2018-09-22 17:35:03'),
(8, 1, 8, 1, 1, 1, 1, '2017-12-21 05:46:14', NULL),
(9, 2, 9, 0, 0, 0, 0, '2017-12-21 05:47:19', '2019-03-27 17:29:00'),
(10, 1, 9, 1, 1, 1, 1, '2017-12-21 05:47:19', '2017-12-27 10:19:23'),
(31, 2, 20, 0, 1, 0, 0, '2017-12-23 07:23:25', '2017-12-24 17:53:55'),
(32, 1, 20, 1, 1, 1, 1, '2017-12-23 07:23:25', '2017-12-24 22:45:33'),
(33, 2, 21, 1, 1, 0, 0, '2017-12-23 07:24:31', '2017-12-29 11:16:59'),
(34, 1, 21, 1, 1, 1, 1, '2017-12-23 07:24:31', '2018-09-22 17:33:39'),
(35, 2, 22, 1, 1, 1, 0, '2017-12-23 07:25:25', '2019-03-27 17:31:23'),
(36, 1, 22, 1, 1, 1, 1, '2017-12-23 07:25:25', '2018-01-31 14:03:26'),
(43, 2, 23, 0, 0, 0, 0, '2017-12-23 11:03:14', NULL),
(44, 1, 23, 1, 1, 1, 1, '2017-12-23 11:03:14', '2018-09-22 17:30:54'),
(63, 1, 30, 1, 1, 1, 1, '2017-12-23 11:03:14', '2018-09-22 17:30:54'),
(64, 2, 30, 1, 1, 1, 1, '2017-12-23 11:03:14', '2019-06-23 21:21:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `npd`
--
ALTER TABLE `npd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tm_npd`
--
ALTER TABLE `tm_npd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_privileges`
--
ALTER TABLE `user_privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_previllages_ibfk_1_idx` (`role_id`),
  ADD KEY `user_previllages_ibfk_2_idx` (`menu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `npd`
--
ALTER TABLE `npd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tm_npd`
--
ALTER TABLE `tm_npd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_privileges`
--
ALTER TABLE `user_privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
