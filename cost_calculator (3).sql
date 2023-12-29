-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 02:34 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cost_calculator`
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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2),
(6, '2014_10_12_000000_create_users_table', 3),
(7, '2023_10_17_063856_tbl_saved_estimates', 4),
(8, '2023_10_17_092515_tbl_rate_card', 5),
(9, '2023_10_17_101535_tbl_quot_type', 5),
(10, '2023_10_19_054258_tbl_region', 6),
(11, '2023_10_19_071633_tbl_product_list', 7),
(12, '2023_10_25_065003_tbl_ui_options', 8),
(13, '2023_10_30_094607_tbl_category_list', 9),
(14, '2023_10_30_095244_tbl_item_list', 9),
(15, '2023_10_30_095819_tbl_product_options_list', 9),
(16, '2023_10_30_095834_tbl_product_oem_list', 9),
(17, '2023_12_21_070621_tbl_rate_card_prices', 10);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product_list`
--

CREATE TABLE `tbl_product_list` (
  `id` int(11) NOT NULL,
  `sku_code` varchar(18) DEFAULT NULL,
  `region_id` int(11) NOT NULL,
  `primary_category` varchar(25) NOT NULL,
  `sec_category` varchar(25) NOT NULL,
  `default_name` text NOT NULL,
  `prod_int` varchar(30) NOT NULL,
  `product_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_product_list`
--

INSERT INTO `tbl_product_list` (`id`, `sku_code`, `region_id`, `primary_category`, `sec_category`, `default_name`, `prod_int`, `product_name`) VALUES
(0, 'OT00000000000000', 0, 'otc', 'otc', 'One Time Cost', 'otc', 'otc-5'),
(1, 'CCSTNKASP3000000', 1, 'storage', 'archival_storage', 'Archive Storage  ', 'arc_strg', 'Archive Storage  '),
(2, 'CCSTMUASP3000000', 2, 'storage', 'archival_storage', 'Archive Storage   ', 'arc_strg', 'Archive Storage   '),
(3, 'CCSTBNASP3000000', 3, 'storage', 'archival_storage', 'Archive Storage  ', 'arc_strg', 'Archive Storage  '),
(4, 'CCSTNKORP3000000', 1, 'storage', 'object_storage', 'Object Storage 0.3 IOPS per GB  ', 'obj_03', 'Object Storage 0.3 IOPS per GB  '),
(5, 'CCSTMUORP3000000', 2, 'storage', 'object_storage', 'Object Storage 0.3 IOPS per GB  ', 'obj_03', 'Object Storage 0.3 IOPS per GB  '),
(6, 'CCSTBNORP3000000', 3, 'storage', 'object_storage', 'Object Storage 0.3 IOPS per GB  ', 'obj_03', 'Object Storage 0.3 IOPS per GB  '),
(7, 'CCSTNKORP0000000', 1, 'storage', 'object_storage', 'Object Storage 10 IOPS per GB  ', 'obj_10', 'Object Storage 10 IOPS per GB  '),
(8, 'CCSTMUORP0000000', 2, 'storage', 'object_storage', 'Object Storage 10 IOPS per GB  ', 'obj_10', 'Object Storage 10 IOPS per GB  '),
(9, 'CCSTBNORP0000000', 3, 'storage', 'object_storage', 'Object Storage 10 IOPS per GB  ', 'obj_10', 'Object Storage 10 IOPS per GB  '),
(10, 'CCSTNKORP1000000', 1, 'storage', 'object_storage', 'Object Storage 1 IOPS per GB  ', 'obj_1', 'Object Storage 1 IOPS per GB  '),
(11, 'CCSTMUORP1000000', 2, 'storage', 'object_storage', 'Object Storage 1 IOPS per GB  ', 'obj_1', 'Object Storage 1 IOPS per GB  '),
(12, 'CCSTBNORP1000000', 3, 'storage', 'object_storage', 'Object Storage 1 IOPS per GB  ', 'obj_1', 'Object Storage 1 IOPS per GB  '),
(13, 'CCSTNKORI3000000', 1, 'storage', 'object_storage', 'Object Storage 3 IOPS per GB  ', 'obj_3', 'Object Storage 3 IOPS per GB  '),
(14, 'CCSTMUORI3000000', 2, 'storage', 'object_storage', 'Object Storage 3 IOPS per GB  ', 'obj_3', 'Object Storage 3 IOPS per GB  '),
(15, 'CCSTBNORI3000000', 3, 'storage', 'object_storage', 'Object Storage 3 IOPS per GB  ', 'obj_3', 'Object Storage 3 IOPS per GB  '),
(16, 'CCSTNKORI5000000', 1, 'storage', 'object_storage', 'Object Storage 5 IOPS per GB  ', 'obj_5', 'Object Storage 5 IOPS per GB  '),
(17, 'CCSTMUORI5000000', 2, 'storage', 'object_storage', 'Object Storage 5 IOPS per GB  ', 'obj_5', 'Object Storage 5 IOPS per GB  '),
(18, 'CCSTBNORI5000000', 3, 'storage', 'object_storage', 'Object Storage 5 IOPS per GB  ', 'obj_5', 'Object Storage 5 IOPS per GB  '),
(19, 'CCSTNKORI8000000', 1, 'storage', 'object_storage', 'Object Storage 8 IOPS per GB  ', 'obj_8', 'Object Storage 8 IOPS per GB  '),
(20, 'CCSTMUORI8000000', 2, 'storage', 'object_storage', 'Object Storage 8 IOPS per GB  ', 'obj_8', 'Object Storage 8 IOPS per GB  '),
(21, 'CCSTBNORI8000000', 3, 'storage', 'object_storage', 'Object Storage 8 IOPS per GB  ', 'obj_8', 'Object Storage 8 IOPS per GB  '),
(22, 'CCSTNKBTP3000000', 1, 'storage', 'block_storage', 'Block Storage 0.3 IOPS per GB ', 'block_03', 'Block Storage 0.3 IOPS per GB '),
(23, 'CCSTMUBTP3000000', 2, 'storage', 'block_storage', 'Block Storage 0.3 IOPS per GB  ', 'block_03', 'Block Storage 0.3 IOPS per GB  '),
(24, 'CCSTBNBTP3000000', 3, 'storage', 'block_storage', 'Block Storage 0.3 IOPS per GB ', 'block_03', 'Block Storage 0.3 IOPS per GB '),
(25, 'CCSTNKBTP0000000', 1, 'storage', 'block_storage', 'Block Storage 10 IOPS per GB  ', 'block_10', 'Block Storage 10 IOPS per GB  '),
(26, 'CCSTMUBTP0000000', 2, 'storage', 'block_storage', 'Block Storage 10 IOPS per GB   ', 'block_10', 'Block Storage 10 IOPS per GB   '),
(27, 'CCSTBNBTP0000000', 3, 'storage', 'block_storage', 'Block Storage 10 IOPS per GB  ', 'block_10', 'Block Storage 10 IOPS per GB  '),
(28, 'CCSTNKBTP1000000', 1, 'storage', 'block_storage', 'Block Storage  1 IOPS per GB  ', 'block_1', 'Block Storage  1 IOPS per GB  '),
(29, 'CCSTMUBTP1000000', 2, 'storage', 'block_storage', 'Block Storage  1 IOPS per GB   ', 'block_1', 'Block Storage  1 IOPS per GB   '),
(30, 'CCSTBNBTP1000000', 3, 'storage', 'block_storage', 'Block Storage  1 IOPS per GB  ', 'block_1', 'Block Storage  1 IOPS per GB  '),
(31, 'CCSTNKBTI3000000', 1, 'storage', 'block_storage', 'Block Storage 3 IOPS per GB  ', 'block_3', 'Block Storage 3 IOPS per GB  '),
(32, 'CCSTMUBTI3000000', 2, 'storage', 'block_storage', 'Block Storage 3 IOPS per GB   ', 'block_3', 'Block Storage 3 IOPS per GB   '),
(33, 'CCSTBNBTI3000000', 3, 'storage', 'block_storage', 'Block Storage 3 IOPS per GB  ', 'block_3', 'Block Storage 3 IOPS per GB  '),
(34, 'CCSTNKBTI5000000', 1, 'storage', 'block_storage', 'Block Storage 5 IOPS per GB  ', 'block_5', 'Block Storage 5 IOPS per GB  '),
(35, 'CCSTMUBTI5000000', 2, 'storage', 'block_storage', 'Block Storage 5 IOPS per GB   ', 'block_5', 'Block Storage 5 IOPS per GB   '),
(36, 'CCSTBNBTI5000000', 3, 'storage', 'block_storage', 'Block Storage 5 IOPS per GB  ', 'block_5', 'Block Storage 5 IOPS per GB  '),
(37, 'CCSTNKBTI8000000', 1, 'storage', 'block_storage', 'Block Storage 8 IOPS per GB  ', 'block_8', 'Block Storage 8 IOPS per GB  '),
(38, 'CCSTMUBTI8000000', 2, 'storage', 'block_storage', 'Block Storage 8 IOPS per GB   ', 'block_8', 'Block Storage 8 IOPS per GB   '),
(39, 'CCSTBNBTI8000000', 3, 'storage', 'block_storage', 'Block Storage 8 IOPS per GB  ', 'block_8', 'Block Storage 8 IOPS per GB  '),
(40, 'CCSTNKFSP3000000', 1, 'storage', 'file_storage', 'File Storage 0.3 IOPS per GB  ', 'file_03', 'File Storage 0.3 IOPS per GB  '),
(41, 'CCSTMUFSP3000000', 2, 'storage', 'file_storage', 'File Storage 0.3 IOPS per GB  ', 'file_03', 'File Storage 0.3 IOPS per GB  '),
(42, 'CCSTBNFSP3000000', 3, 'storage', 'file_storage', 'File Storage 0.3 IOPS per GB  ', 'file_03', 'File Storage 0.3 IOPS per GB  '),
(43, 'CCSTNKFSP0000000', 1, 'storage', 'file_storage', 'File Storage 10 IOPS per GB  ', 'file_10', 'File Storage 10 IOPS per GB  '),
(44, 'CCSTMUFSP0000000', 2, 'storage', 'file_storage', 'File Storage 10 IOPS per GB  ', 'file_10', 'File Storage 10 IOPS per GB  '),
(45, 'CCSTBNFSP0000000', 3, 'storage', 'file_storage', 'File Storage 10 IOPS per GB  ', 'file_10', 'File Storage 10 IOPS per GB  '),
(46, 'CCSTNKFSP1000000', 1, 'storage', 'file_storage', 'File Storage 1 IOPS per GB  ', 'file_1', 'File Storage 1 IOPS per GB  '),
(47, 'CCSTMUFSP1000000', 2, 'storage', 'file_storage', 'File Storage 1 IOPS per GB  ', 'file_1', 'File Storage 1 IOPS per GB  '),
(48, 'CCSTBNFSP1000000', 3, 'storage', 'file_storage', 'File Storage 1 IOPS per GB  ', 'file_1', 'File Storage 1 IOPS per GB  '),
(49, 'CCSTNKFSI3000000', 1, 'storage', 'file_storage', 'File Storage 3 IOPS per GB  ', 'file_3', 'File Storage 3 IOPS per GB  '),
(50, 'CCSTMUFSI3000000', 2, 'storage', 'file_storage', 'File Storage 3 IOPS per GB  ', 'file_3', 'File Storage 3 IOPS per GB  '),
(51, 'CCSTBNFSI3000000', 3, 'storage', 'file_storage', 'File Storage 3 IOPS per GB  ', 'file_3', 'File Storage 3 IOPS per GB  '),
(52, 'CCSTNKFSI5000000', 1, 'storage', 'file_storage', 'File Storage 5 IOPS per GB  ', 'file_5', 'File Storage 5 IOPS per GB  '),
(53, 'CCSTMUFSI5000000', 2, 'storage', 'file_storage', 'File Storage 5 IOPS per GB  ', 'file_5', 'File Storage 5 IOPS per GB  '),
(54, 'CCSTBNFSI5000000', 3, 'storage', 'file_storage', 'File Storage 5 IOPS per GB  ', 'file_5', 'File Storage 5 IOPS per GB  '),
(55, 'CCSTNKFSI8000000', 1, 'storage', 'file_storage', 'File Storage 8 IOPS per GB  ', 'file_8', 'File Storage 8 IOPS per GB  '),
(56, 'CCSTMUFSI8000000', 2, 'storage', 'file_storage', 'File Storage 8 IOPS per GB  ', 'file_8', 'File Storage 8 IOPS per GB  '),
(57, 'CCSTBNFSI8000000', 3, 'storage', 'file_storage', 'File Storage 8 IOPS per GB  ', 'file_8', 'File Storage 8 IOPS per GB  '),
(58, 'SOBANKCT00000000', 1, 'software', 'backup_soft', 'Backup Agent', 'carbonite', ' Backup Agent - Carbonite '),
(59, 'SOBAMUCT00000000', 2, 'software', 'backup_soft', 'Backup Agent', 'carbonite', ' Backup Agent - Carbonite '),
(60, 'SOBABNCT00000000', 3, 'software', 'backup_soft', 'Backup Agent', 'carbonite', ' Backup Agent - Carbonite '),
(61, 'SOBANKVE00000000', 1, 'software', 'backup_soft', 'Backup Agent', 'veeam', ' Backup Agent - Veeam '),
(62, 'SOBAMUVE00000000', 2, 'software', 'backup_soft', 'Backup Agent', 'veeam', ' Backup Agent - Veeam '),
(63, 'SOBABNVE00000000', 3, 'software', 'backup_soft', 'Backup Agent', 'veeam', ' Backup Agent - Veeam '),
(64, '0', 0, 'storage', 'offline_backup', 'Tape Library', 'tl', 'Tape Library'),
(65, '0', 0, 'storage', 'offline_backup', 'Tape Cartridge', 'tc', 'Tape Cartridge'),
(66, '0', 0, 'storage', 'offline_backup', 'Fireproof Cabinate', 'fc', 'Fireproof Cabinate'),
(67, 'ICSRNKDWGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'domain_wild_ssl', 'Domain SSL Wild Card  '),
(68, 'ICSRMUDWGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'domain_wild_ssl', 'Domain SSL Wild Card  '),
(69, 'ICSRBNDWGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'domain_wild_ssl', 'Domain SSL Wild Card  '),
(70, 'MSEGNKFWVT000000', 1, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'vfirewall_mgmt', 'Virtual Firewall External - Managed Services '),
(71, 'MSEGMUFWVT000000', 2, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'vfirewall_mgmt', 'Virtual Firewall External - Managed Services  '),
(72, 'MSEGBNFWVT000000', 3, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'vfirewall_mgmt', 'Virtual Firewall External - Managed Services '),
(73, 'MSEGNKFWPF000000', 1, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'pfirewall_mgmt', 'Physical Firewall - Managed Services  '),
(74, 'MSEGMUFWPF000000', 2, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'pfirewall_mgmt', 'Physical Firewall - Managed Services   '),
(75, 'MSEGBNFWPF000000', 3, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'pfirewall_mgmt', 'Physical Firewall - Managed Services  '),
(76, 'ICSRNKAWGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'alpha_wild_ssl', 'Alpha SSL Wild Card  '),
(77, 'ICSRMUAWGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'alpha_wild_ssl', 'Alpha SSL Wild Card  '),
(78, 'ICSRBNAWGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'alpha_wild_ssl', 'Alpha SSL Wild Card  '),
(79, 'ICVUNKFN1G000000', 1, 'security', 'utm', 'UTM', 'forti_vutm_1g', 'Fortinet  - Virtual UTM- 1 Gpbs'),
(80, 'ICVUMUFN1G000000', 2, 'security', 'utm', 'UTM', 'forti_vutm_1g', 'Fortinet  - Virtual UTM- 1 Gpbs'),
(81, 'ICVUBNFN1G000000', 3, 'security', 'utm', 'UTM', 'forti_vutm_1g', 'Fortinet  - Virtual UTM- 1 Gpbs'),
(82, 'ICVUNKFN2G000000', 1, 'security', 'utm', 'UTM', 'forti_vutm_2g', 'Fortinet  - Virtual UTM- 2 Gpbs'),
(83, 'ICVUMUFN2G000000', 2, 'security', 'utm', 'UTM', 'forti_vutm_2g', 'Fortinet  - Virtual UTM- 2 Gpbs'),
(84, 'ICVUBNFN2G000000', 3, 'security', 'utm', 'UTM', 'forti_vutm_2g', 'Fortinet  - Virtual UTM- 2 Gpbs'),
(85, 'ICVUNKCK1G000000', 1, 'security', 'utm', 'UTM', 'check_vutm_1g', 'CheckPoint  - Virtual UTM- 1 Gpbs'),
(86, 'ICVUMUCK1G000000', 2, 'security', 'utm', 'UTM', 'check_vutm_1g', 'CheckPoint  - Virtual UTM- 1 Gpbs'),
(87, 'ICVUBNCK1G000000', 3, 'security', 'utm', 'UTM', 'check_vutm_1g', 'CheckPoint  - Virtual UTM- 1 Gpbs'),
(88, 'ICVUNKCK2G000000', 1, 'security', 'utm', 'UTM', 'check_vutm_2g', 'CheckPoint  - Virtual UTM- 2 Gpbs'),
(89, 'ICVUMUCK2G000000', 2, 'security', 'utm', 'UTM', 'check_vutm_2g', 'CheckPoint  - Virtual UTM- 2 Gpbs'),
(90, 'ICVUBNCK2G000000', 3, 'security', 'utm', 'UTM', 'check_vutm_2g', 'CheckPoint  - Virtual UTM- 2 Gpbs'),
(91, 'ICVUNKPA1G000000', 1, 'security', 'utm', 'UTM', 'palo_vutm_1g', 'Palo alto - Virtual UTM- 1 Gpbs'),
(92, 'ICVUMUPA1G000000', 2, 'security', 'utm', 'UTM', 'palo_vutm_1g', 'Palo alto - Virtual UTM- 1 Gpbs'),
(93, 'ICVUBNPA1G000000', 3, 'security', 'utm', 'UTM', 'palo_vutm_1g', 'Palo alto - Virtual UTM- 1 Gpbs'),
(94, 'ICVUNKPA2G000000', 1, 'security', 'utm', 'UTM', 'palo_vutm_2g', 'Palo alto - Virtual UTM- 2 Gpbs'),
(95, 'ICVUMUPA2G000000', 2, 'security', 'utm', 'UTM', 'palo_vutm_2g', 'Palo alto - Virtual UTM- 2 Gpbs'),
(96, 'ICVUBNPA2G000000', 3, 'security', 'utm', 'UTM', 'palo_vutm_2g', 'Palo alto - Virtual UTM- 2 Gpbs'),
(97, 'ICVUNKSO1G000000', 1, 'security', 'utm', 'UTM', 'sopo_vutm_1g', 'Sopohs - Virtual UTM- 1 Gpbs'),
(98, 'ICVUMUSO1G000000', 2, 'security', 'utm', 'UTM', 'sopo_vutm_1g', 'Sopohs - Virtual UTM- 1 Gpbs'),
(99, 'ICVUBNSO1G000000', 3, 'security', 'utm', 'UTM', 'sopo_vutm_1g', 'Sopohs - Virtual UTM- 1 Gpbs'),
(100, 'ICVUNKSO2G000000', 1, 'security', 'utm', 'UTM', 'sopo_vutm_2g', 'Sopohs - Virtual UTM- 2 Gpbs'),
(101, 'ICVUMUSO2G000000', 2, 'security', 'utm', 'UTM', 'sopo_vutm_2g', 'Sopohs - Virtual UTM- 2 Gpbs'),
(102, 'ICVUBNSO2G000000', 3, 'security', 'utm', 'UTM', 'sopo_vutm_2g', 'Sopohs - Virtual UTM- 2 Gpbs'),
(103, 'ICVUNKJU1G000000', 1, 'security', 'utm', 'UTM', 'juni_vutm_1g', 'Juniper  - Virtual UTM- 1 Gpbs'),
(104, 'ICVUMUJU1G000000', 2, 'security', 'utm', 'UTM', 'juni_vutm_1g', 'Juniper  - Virtual UTM- 1 Gpbs'),
(105, 'ICVUBNJU1G000000', 3, 'security', 'utm', 'UTM', 'juni_vutm_1g', 'Juniper  - Virtual UTM- 1 Gpbs'),
(106, 'ICVUNKJU2G000000', 1, 'security', 'utm', 'UTM', 'juni_vutm_2g', 'Juniper  - Virtual UTM- 2 Gpbs'),
(107, 'ICVUMUJU2G000000', 2, 'security', 'utm', 'UTM', 'juni_vutm_2g', 'Juniper  - Virtual UTM- 2 Gpbs'),
(108, 'ICVUBNJU2G000000', 3, 'security', 'utm', 'UTM', 'juni_vutm_2g', 'Juniper  - Virtual UTM- 2 Gpbs'),
(109, 'ICVUNKC11G000000', 1, 'security', 'utm', 'UTM', 'clii_vutm_1g', 'Client Specific - Virtual UTM- 1 Gpbs'),
(110, 'ICVUMUC11G000000', 2, 'security', 'utm', 'UTM', 'clii_vutm_1g', 'Client Specific - Virtual UTM- 1 Gpbs'),
(111, 'ICVUBNC11G000000', 3, 'security', 'utm', 'UTM', 'clii_vutm_1g', 'Client Specific - Virtual UTM- 1 Gpbs'),
(112, 'ICVUNKC12G000000', 1, 'security', 'utm', 'UTM', 'clii_vutm_2g', 'Client Specific - Virtual UTM- 2 Gpbs'),
(113, 'ICVUMUC12G000000', 2, 'security', 'utm', 'UTM', 'clii_vutm_2g', 'Client Specific - Virtual UTM- 2 Gpbs'),
(114, 'ICVUBNC12G000000', 3, 'security', 'utm', 'UTM', 'clii_vutm_2g', 'Client Specific - Virtual UTM- 2 Gpbs'),
(115, 'ICSRNKOLGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'org_wild_ssl', 'Organizational SSL Wild Card  '),
(116, 'ICSRMUOLGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'org_wild_ssl', 'Organizational SSL Wild Card  '),
(117, 'ICSRBNOLGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'org_wild_ssl', 'Organizational SSL Wild Card  '),
(118, 'ICVTNKTS3S000000', 1, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_30', 'VTMScan -30Scan'),
(119, 'ICVTMUTS3S000000', 2, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_30', 'VTMScan -30Scan'),
(120, 'ICVTBNTS3S000000', 3, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_30', 'VTMScan -30Scan'),
(121, 'ICVTNKTS6S000000', 1, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_60', 'VTMScan - 60Scan'),
(122, 'ICVTMUTS6S000000', 2, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_60', 'VTMScan - 60Scan'),
(123, 'ICVTBNTS6S000000', 3, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_60', 'VTMScan - 60Scan'),
(124, 'ICSRNKDRGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'domain_ssl', 'Domain SSL  '),
(125, 'ICSRMUDRGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'domain_ssl', 'Domain SSL  '),
(126, 'ICSRBNDRGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'domain_ssl', 'Domain SSL  '),
(127, 'ICVTNKTS1S000000', 1, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_1', 'VTMScan- 1Scan'),
(128, 'ICVTMUTS1S000000', 2, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_1', 'VTMScan- 1Scan'),
(129, 'ICVTBNTS1S000000', 3, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_1', 'VTMScan- 1Scan'),
(130, 'ICVTNKTS4S000000', 1, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_4', 'VTMScan 4Scan'),
(131, 'ICVTMUTS4S000000', 2, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_4', 'VTMScan 4Scan'),
(132, 'ICVTBNTS4S000000', 3, 'security', 'vtm_scan', 'VTM Scan', 'vtm_scan_4', 'VTMScan 4Scan'),
(133, 'ICSRNKALGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'alpha_ssl', 'Alpha SSL  '),
(134, 'ICSRMUALGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'alpha_ssl', 'Alpha SSL  '),
(135, 'ICSRBNALGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'alpha_ssl', 'Alpha SSL  '),
(136, 'MSEGNKFWUM000000', 1, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'utm_mgmt', 'vUTM Firewall - Managed Services '),
(137, 'MSEGMUFWUM000000', 2, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'utm_mgmt', 'vUTM Firewall - Managed Services  '),
(138, 'MSEGBNFWUM000000', 3, 'managed', 'firewall_mgmt', 'Firewall Managed Services', 'utm_mgmt', 'vUTM Firewall - Managed Services '),
(139, 'ICSRNKOZGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'org_ssl', 'Organizational SSL  '),
(140, 'ICSRMUOZGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'org_ssl', 'Organizational SSL  '),
(141, 'ICSRBNOZGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'org_ssl', 'Organizational SSL  '),
(142, 'ICSRNKXVGS000000', 1, 'security', 'ssl_certificate', 'SSL Certificate', 'ext_ssl', 'Extended SSL - SSL-Internal Security '),
(143, 'ICSRMUXVGS000000', 2, 'security', 'ssl_certificate', 'SSL Certificate', 'ext_ssl', 'Extended SSL - SSL-Internal Security '),
(144, 'ICSRBNXVGS000000', 3, 'security', 'ssl_certificate', 'SSL Certificate', 'ext_ssl', 'Extended SSL - SSL-Internal Security '),
(145, 'ICPUNKFN1G000000', 1, 'security', 'utm', 'UTM', 'forti_putm_1g', 'Fortinet  - Physical UTM- 1 Gpbs'),
(146, 'ICPUMUFN1G000000', 2, 'security', 'utm', 'UTM', 'forti_putm_1g', 'Fortinet  - Physical UTM- 1 Gpbs'),
(147, 'ICPUBNFN1G000000', 3, 'security', 'utm', 'UTM', 'forti_putm_1g', 'Fortinet  - Physical UTM- 1 Gpbs'),
(148, 'ICPUNKFN2G000000', 1, 'security', 'utm', 'UTM', 'forti_putm_2g', 'Fortinet  - Physical UTM- 2 Gpbs'),
(149, 'ICPUMUFN2G000000', 2, 'security', 'utm', 'UTM', 'forti_putm_2g', 'Fortinet  - Physical UTM- 2 Gpbs'),
(150, 'ICPUBNFN2G000000', 3, 'security', 'utm', 'UTM', 'forti_putm_2g', 'Fortinet  - Physical UTM- 2 Gpbs'),
(151, 'ICPUNKCK1G000000', 1, 'security', 'utm', 'UTM', 'check_putm_1g', 'CheckPoint  - Physical UTM- 1 Gpbs'),
(152, 'ICPUMUCK1G000000', 2, 'security', 'utm', 'UTM', 'check_putm_1g', 'CheckPoint  - Physical UTM- 1 Gpbs'),
(153, 'ICPUBNCK1G000000', 3, 'security', 'utm', 'UTM', 'check_putm_1g', 'CheckPoint  - Physical UTM- 1 Gpbs'),
(154, 'ICPUNKCK2G000000', 1, 'security', 'utm', 'UTM', 'check_putm_2g', 'CheckPoint  - Physical UTM- 2 Gpbs'),
(155, 'ICPUMUCK2G000000', 2, 'security', 'utm', 'UTM', 'check_putm_2g', 'CheckPoint  - Physical UTM- 2 Gpbs'),
(156, 'ICPUBNCK2G000000', 3, 'security', 'utm', 'UTM', 'check_putm_2g', 'CheckPoint  - Physical UTM- 2 Gpbs'),
(157, 'ICPUNKPA1G000000', 1, 'security', 'utm', 'UTM', 'palo_putm_1g', 'Palo alto - Physical UTM- 1 Gpbs'),
(158, 'ICPUMUPA1G000000', 2, 'security', 'utm', 'UTM', 'palo_putm_1g', 'Palo alto - Physical UTM- 1 Gpbs'),
(159, 'ICPUBNPA1G000000', 3, 'security', 'utm', 'UTM', 'palo_putm_1g', 'Palo alto - Physical UTM- 1 Gpbs'),
(160, 'ICPUNKPA2G000000', 1, 'security', 'utm', 'UTM', 'palo_putm_2g', 'Palo alto - Physical UTM- 2 Gpbs'),
(161, 'ICPUMUPA2G000000', 2, 'security', 'utm', 'UTM', 'palo_putm_2g', 'Palo alto - Physical UTM- 2 Gpbs'),
(162, 'ICPUBNPA2G000000', 3, 'security', 'utm', 'UTM', 'palo_putm_2g', 'Palo alto - Physical UTM- 2 Gpbs'),
(163, 'ICPUNKSO1G000000', 1, 'security', 'utm', 'UTM', 'sopo_putm_1g', 'Sopohs - Physical UTM- 1 Gpbs'),
(164, 'ICPUMUSO1G000000', 2, 'security', 'utm', 'UTM', 'sopo_putm_1g', 'Sopohs - Physical UTM- 1 Gpbs'),
(165, 'ICPUBNSO1G000000', 3, 'security', 'utm', 'UTM', 'sopo_putm_1g', 'Sopohs - Physical UTM- 1 Gpbs'),
(166, 'ICPUNKSO2G000000', 1, 'security', 'utm', 'UTM', 'sopo_putm_2g', 'Sopohs - Physical UTM- 2 Gpbs'),
(167, 'ICPUMUSO2G000000', 2, 'security', 'utm', 'UTM', 'sopo_putm_2g', 'Sopohs - Physical UTM- 2 Gpbs'),
(168, 'ICPUBNSO2G000000', 3, 'security', 'utm', 'UTM', 'sopo_putm_2g', 'Sopohs - Physical UTM- 2 Gpbs'),
(169, 'ICPUNKJU1G000000', 1, 'security', 'utm', 'UTM', 'juni_putm_1g', 'Juniper  - Physical UTM- 1 Gpbs'),
(170, 'ICPUMUJU1G000000', 2, 'security', 'utm', 'UTM', 'juni_putm_1g', 'Juniper  - Physical UTM- 1 Gpbs'),
(171, 'ICPUBNJU1G000000', 3, 'security', 'utm', 'UTM', 'juni_putm_1g', 'Juniper  - Physical UTM- 1 Gpbs'),
(172, 'ICPUNKJU2G000000', 1, 'security', 'utm', 'UTM', 'juni_putm_2g', 'Juniper  - Physical UTM- 2 Gpbs'),
(173, 'ICPUMUJU2G000000', 2, 'security', 'utm', 'UTM', 'juni_putm_2g', 'Juniper  - Physical UTM- 2 Gpbs'),
(174, 'ICPUBNJU2G000000', 3, 'security', 'utm', 'UTM', 'juni_putm_2g', 'Juniper  - Physical UTM- 2 Gpbs'),
(175, 'ICPUNKC11G000000', 1, 'security', 'utm', 'UTM', 'clii_putm_1g', 'Client Specific - Physical UTM- 1 Gpbs'),
(176, 'ICPUMUC11G000000', 2, 'security', 'utm', 'UTM', 'clii_putm_1g', 'Client Specific - Physical UTM- 1 Gpbs'),
(177, 'ICPUBNC11G000000', 3, 'security', 'utm', 'UTM', 'clii_putm_1g', 'Client Specific - Physical UTM- 1 Gpbs'),
(178, 'ICPUNKC12G000000', 1, 'security', 'utm', 'UTM', 'clii_putm_2g', 'Client Specific - Physical UTM- 2 Gpbs'),
(179, 'ICPUMUC12G000000', 2, 'security', 'utm', 'UTM', 'clii_putm_2g', 'Client Specific - Physical UTM- 2 Gpbs'),
(180, 'ICPUBNC12G000000', 3, 'security', 'utm', 'UTM', 'clii_putm_2g', 'Client Specific - Physical UTM- 2 Gpbs'),
(181, 'MSBMNKBR00000000', 1, 'managed', 'storage_mgmt', 'Backup Management', 'backup_mgmt', 'Backup Management - Managed Services '),
(182, 'MSBMMUBR00000000', 2, 'managed', 'storage_mgmt', 'Backup Management', 'backup_mgmt', 'Backup Management - Managed Services '),
(183, 'MSBMBNBR00000000', 3, 'managed', 'storage_mgmt', 'Backup Management', 'backup_mgmt', 'Backup Management - Managed Services '),
(184, 'MSTNNKPB00000000', 1, 'managed', 'storage_mgmt', 'Storage Management', 'strg_mgmt', 'Storage Management (Per TB)  Mng - Managed Services '),
(185, 'MSTNMUPB00000000', 2, 'managed', 'storage_mgmt', 'Storage Management', 'strg_mgmt', 'Storage Management (Per TB)  Mng - Managed Services  '),
(186, 'MSTNBNPB00000000', 3, 'managed', 'storage_mgmt', 'Storage Management', 'strg_mgmt', 'Storage Management (Per TB)  Mng - Managed Services '),
(187, 'CCSTNKBSP3000000', 1, 'storage', 'backup', 'Backup Storage', 'backup_gb_03', 'Backup Storage  - Per GB 0.3 IOPS'),
(188, 'CCSTMUBSP3000000', 2, 'storage', 'backup', 'Backup Storage', 'backup_gb_03', 'Backup Storage  - Per GB 0.3 IOPS'),
(189, 'CCSTBNBSP3000000', 3, 'storage', 'backup', 'Backup Storage', 'backup_gb_03', 'Backup Storage  - Per GB 0.3 IOPS'),
(190, 'CCSTNKBSP0000000', 1, 'storage', 'backup', 'Backup Storage', 'backup_gb_10', 'Backup Storage  - Per GB 10 IOPS'),
(191, 'CCSTMUBSP0000000', 2, 'storage', 'backup', 'Backup Storage', 'backup_gb_10', 'Backup Storage  - Per GB 10 IOPS'),
(192, 'CCSTBNBSP0000000', 3, 'storage', 'backup', 'Backup Storage', 'backup_gb_10', 'Backup Storage  - Per GB 10 IOPS'),
(193, 'CCSTNKBSP1000000', 1, 'storage', 'backup', 'Backup Storage', 'backup_gb_1', 'Backup Storage  - Per GB 1 IOPS'),
(194, 'CCSTMUBSP1000000', 2, 'storage', 'backup', 'Backup Storage', 'backup_gb_1', 'Backup Storage  - Per GB 1 IOPS'),
(195, 'CCSTBNBSP1000000', 3, 'storage', 'backup', 'Backup Storage', 'backup_gb_1', 'Backup Storage  - Per GB 1 IOPS'),
(196, 'CCSTNKBSI3000000', 1, 'storage', 'backup', 'Backup Storage', 'backup_gb_3', 'Backup Storage  - Per GB 3 IOPS'),
(197, 'CCSTMUBSI3000000', 2, 'storage', 'backup', 'Backup Storage', 'backup_gb_3', 'Backup Storage  - Per GB 3 IOPS'),
(198, 'CCSTBNBSI3000000', 3, 'storage', 'backup', 'Backup Storage', 'backup_gb_3', 'Backup Storage  - Per GB 3 IOPS'),
(199, 'CCSTNKBSI5000000', 1, 'storage', 'backup', 'Backup Storage', 'backup_gb_5', 'Backup Storage  - Per GB 5 IOPS'),
(200, 'CCSTMUBSI5000000', 2, 'storage', 'backup', 'Backup Storage', 'backup_gb_5', 'Backup Storage  - Per GB 5 IOPS'),
(201, 'CCSTBNBSI5000000', 3, 'storage', 'backup', 'Backup Storage', 'backup_gb_5', 'Backup Storage  - Per GB 5 IOPS'),
(202, 'CCSTNKBSI8000000', 1, 'storage', 'backup', 'Backup Storage', 'backup_gb_8', 'Backup Storage  - Per GB 8 IOPS'),
(203, 'CCSTMUBSI8000000', 2, 'storage', 'backup', 'Backup Storage', 'backup_gb_8', 'Backup Storage  - Per GB 8 IOPS'),
(204, 'CCSTBNBSI8000000', 3, 'storage', 'backup', 'Backup Storage', 'backup_gb_8', 'Backup Storage  - Per GB 8 IOPS'),
(205, 'MSDMNKMG00000000', 1, 'managed', 'db_mgmt', 'Database Managed Services', 'mong_db_mgmt', 'MongoDB Database Managed Services (Up to 100 GB) '),
(206, 'MSDMMUMG00000000', 2, 'managed', 'db_mgmt', 'Database Managed Services', 'mong_db_mgmt', 'MongoDB Database Managed Services (Up to 100 GB)  '),
(207, 'MSDMBNMG00000000', 3, 'managed', 'db_mgmt', 'Database Managed Services', 'mong_db_mgmt', 'MongoDB Database Managed Services (Up to 100 GB) '),
(208, 'MSDMNKOA00000000', 1, 'managed', 'db_mgmt', 'Database Managed Services', 'orc_db_mgmt', 'Oracle Database Managed Services (Up to 100 GB)  '),
(209, 'MSDMMUOA00000000', 2, 'managed', 'db_mgmt', 'Database Managed Services', 'orc_db_mgmt', 'Oracle Database Managed Services (Up to 100 GB)   '),
(210, 'MSDMBNOA00000000', 3, 'managed', 'db_mgmt', 'Database Managed Services', 'orc_db_mgmt', 'Oracle Database Managed Services (Up to 100 GB)  '),
(211, 'MSDMNKSD00000000', 1, 'managed', 'db_mgmt', 'Database Managed Services', 'syb_db_mgmt', 'Sybase Database Managed Services(Up to 100 GB)  '),
(212, 'MSDMMUSD00000000', 2, 'managed', 'db_mgmt', 'Database Managed Services', 'syb_db_mgmt', 'Sybase Database Managed Services(Up to 100 GB)   '),
(213, 'MSDMBNSD00000000', 3, 'managed', 'db_mgmt', 'Database Managed Services', 'syb_db_mgmt', 'Sybase Database Managed Services(Up to 100 GB)  '),
(214, 'MSOGNKDD00000000', 1, 'managed', 'dr_mng', 'DR Drill', 'dr_drill', 'DR Drill (Per Application) '),
(215, 'MSOGMUDD00000000', 2, 'managed', 'dr_mng', 'DR Drill', 'dr_drill', 'DR Drill (Per Application)  '),
(216, 'MSOGBNDD00000000', 3, 'managed', 'dr_mng', 'DR Drill', 'dr_drill', 'DR Drill (Per Application) '),
(217, 'MSOGNKRA00000000', 1, 'managed', 'dr_mng', 'Replication Link Management', 'rep_mgmt', 'Replication Mng - Managed Services  '),
(218, 'MSOGMURA00000000', 2, 'managed', 'dr_mng', 'Replication Link Management', 'rep_mgmt', 'Replication Mng - Managed Services   '),
(219, 'MSOGBNRA00000000', 3, 'managed', 'dr_mng', 'Replication Link Management', 'rep_mgmt', 'Replication Mng - Managed Services  '),
(220, 'MSDMNKMQ00000000', 1, 'managed', 'db_mgmt', 'Database Managed Services', 'ms_db_mgmt', 'MSSQL Database Managed Services (Up to 100 GB) '),
(221, 'MSDMMUMQ00000000', 2, 'managed', 'db_mgmt', 'Database Managed Services', 'ms_db_mgmt', 'MSSQL Database Managed Services (Up to 100 GB)  '),
(222, 'MSDMBNMQ00000000', 3, 'managed', 'db_mgmt', 'Database Managed Services', 'ms_db_mgmt', 'MSSQL Database Managed Services (Up to 100 GB) '),
(223, 'MSDMNKMY00000000', 1, 'managed', 'db_mgmt', 'Database Managed Services', 'my_db_mgmt', 'MYSQL Database  Managed Services (Up to 100 GB)  '),
(224, 'MSDMMUMY00000000', 2, 'managed', 'db_mgmt', 'Database Managed Services', 'my_db_mgmt', 'MYSQL Database  Managed Services (Up to 100 GB)   '),
(225, 'MSDMBNMY00000000', 3, 'managed', 'db_mgmt', 'Database Managed Services', 'my_db_mgmt', 'MYSQL Database  Managed Services (Up to 100 GB)  '),
(226, 'MSDMNKPS00000000', 1, 'managed', 'db_mgmt', 'Database Managed Services', 'post_db_mgmt', 'PostgresSQL Database Managed Services (Up to 100 GB) '),
(227, 'MSDMMUPS00000000', 2, 'managed', 'db_mgmt', 'Database Managed Services', 'post_db_mgmt', 'PostgresSQL Database Managed Services (Up to 100 GB)  '),
(228, 'MSDMBNPS00000000', 3, 'managed', 'db_mgmt', 'Database Managed Services', 'post_db_mgmt', 'PostgresSQL Database Managed Services (Up to 100 GB) '),
(229, 'CCVRNKAT00000000', 1, 'compute', 'vRAM', 'RAM', 'vram_static', 'vRAM Static- Compute '),
(230, 'CCVRMUAT00000000', 2, 'compute', 'vRAM', 'RAM', 'vram_static', 'vRAM Static- Compute '),
(231, 'CCVRBNAT00000000', 3, 'compute', 'vRAM', 'RAM', 'vram_static', 'vRAM Static- Compute '),
(232, 'CCVCNKVE00000000', 1, 'compute', 'vCPU', 'CPU', 'vcpu_elastic', 'vCPU Elastic Cloud - Compute '),
(233, 'CCVCMUVE00000000', 2, 'compute', 'vCPU', 'CPU', 'vcpu_elastic', 'vCPU Elastic Cloud - Compute '),
(234, 'CCVCBNVE00000000', 3, 'compute', 'vCPU', 'CPU', 'vcpu_elastic', 'vCPU Elastic Cloud - Compute '),
(235, 'CCVRNKRL00000000', 1, 'compute', 'vRAM', 'RAM', 'vram_elastic', 'vRAM Elastic Cloud- Compute '),
(236, 'CCVRMURL00000000', 2, 'compute', 'vRAM', 'RAM', 'vram_elastic', 'vRAM Elastic Cloud- Compute '),
(237, 'CCVRBNRL00000000', 3, 'compute', 'vRAM', 'RAM', 'vram_elastic', 'vRAM Elastic Cloud- Compute '),
(238, 'CCVCNKVS00000000', 1, 'compute', 'vCPU', 'CPU', 'vcpu_static', 'vCPU Static Cloud- Compute '),
(239, 'CCVCMUVS00000000', 2, 'compute', 'vCPU', 'CPU', 'vcpu_static', 'vCPU Static Cloud- Compute '),
(240, 'CCVCBNVS00000000', 3, 'compute', 'vCPU', 'CPU', 'vcpu_static', 'vCPU Static Cloud- Compute '),
(241, 'ICSINKLR00000000', 1, 'security', 'siem', 'SIEM', 'logrythm_siem', 'LogRythm OEM -SIEM-Internal Security '),
(242, 'ICSIMULR00000000', 2, 'security', 'siem', 'SIEM', 'logrythm_siem', 'LogRythm OEM -SIEM-Internal Security '),
(243, 'ICSIBNLR00000000', 3, 'security', 'siem', 'SIEM', 'logrythm_siem', 'LogRythm OEM -SIEM-Internal Security '),
(244, 'ESVANKNVQY000000', 1, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(245, 'ESVAMUNVQY000000', 2, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(246, 'ESVABNNVQY000000', 3, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(247, 'ESVANKNVHY000000', 1, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(248, 'ESVAMUNVHY000000', 2, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(249, 'ESVABNNVHY000000', 3, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(250, 'ESVANKNVYE000000', 1, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(251, 'ESVAMUNVYE000000', 2, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(252, 'ESVABNNVYE000000', 3, 'security', 'vapt', 'VAPT Audit', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(253, 'CNIBNKVO00000000', 1, 'network', 'bandwidth', 'Bandwidth', 'volume_band', 'Volume Based : Internet Bandwidth '),
(254, 'CNIBMUVO00000000', 2, 'network', 'bandwidth', 'Bandwidth', 'volume_band', 'Volume Based : Internet Bandwidth '),
(255, 'CNIBBNVO00000000', 3, 'network', 'bandwidth', 'Bandwidth', 'volume_band', 'Volume Based : Internet Bandwidth '),
(256, 'CNIBNKVO00000000', 1, 'network', 'bandwidth', 'Bandwidth', 'speed_band', 'Speed Based : Internet Bandwidth'),
(257, 'CNIBMUVO00000000', 2, 'network', 'bandwidth', 'Bandwidth', 'speed_band', 'Speed Based : Internet Bandwidth'),
(258, 'CNIBBNVO00000000', 3, 'network', 'bandwidth', 'Bandwidth', 'speed_band', 'Speed Based : Internet Bandwidth'),
(259, 'ESDINKIDTT000000', 1, 'security', 'ddos', 'DDOS Mitigation', 'ddos_1gbps', 'DDOS Mitigation - 1Gbps'),
(260, 'ESDIMUIDTT000000', 2, 'security', 'ddos', 'DDOS Mitigation', 'ddos_1gbps', 'DDOS Mitigation - 1Gbps'),
(261, 'ESDIBNIDTT000000', 3, 'security', 'ddos', 'DDOS Mitigation', 'ddos_1gbps', 'DDOS Mitigation - 1Gbps'),
(262, 'ESDINKIDTT000000', 1, 'security', 'ddos', 'DDOS Mitigation', 'ddos_2gbps', 'DDOS Mitigation - 2Gbps'),
(263, 'ESDIMUIDTT000000', 2, 'security', 'ddos', 'DDOS Mitigation', 'ddos_2gbps', 'DDOS Mitigation - 2Gbps'),
(264, 'ESDIBNIDTT000000', 3, 'security', 'ddos', 'DDOS Mitigation', 'ddos_2gbps', 'DDOS Mitigation - 2Gbps'),
(265, 'ICSINKCS00000000', 1, 'security', 'siem', 'SIEM', 'secon_siem', 'SECEON - SIEM-Internal Security '),
(266, 'ICSIMUCS00000000', 2, 'security', 'siem', 'SIEM', 'secon_siem', 'SECEON - SIEM-Internal Security '),
(267, 'ICSIBNCS00000000', 3, 'security', 'siem', 'SIEM', 'secon_siem', 'SECEON - SIEM-Internal Security '),
(268, 'ICSINKKA00000000', 1, 'security', 'siem', 'SIEM', 'khika_siem', 'KHIKA - SIEM-Internal Security '),
(269, 'ICSIMUKA00000000', 2, 'security', 'siem', 'SIEM', 'khika_siem', 'KHIKA - SIEM-Internal Security '),
(270, 'ICSIBNKA00000000', 3, 'security', 'siem', 'SIEM', 'khika_siem', 'KHIKA - SIEM-Internal Security '),
(271, 'CNMSNKAR00000000', 0, 'network', 'link', 'Replication Link', 'mpls_link', 'MPLS Link'),
(272, 'ESVANKCVQY000000', 1, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(273, 'ESVAMUCVQY000000', 2, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(274, 'ESVABNCVQY000000', 3, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(275, 'ESVANKCVHY000000', 1, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(276, 'ESVAMUCVHY000000', 2, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(277, 'ESVABNCVHY000000', 3, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(278, 'ESVANKCVYE000000', 1, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(279, 'ESVAMUCVYE000000', 2, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(280, 'ESVABNCVYE000000', 3, 'security', 'vapt', 'VAPT Audit', 'cert_vapt', 'CERTIN- VAPT Audit '),
(281, 'CNPRNMPP00000000', 0, 'network', 'link', 'Replication Link', 'p2p_link', 'P2P Link'),
(282, 'ICSONKSOSO000000', 1, 'security', 'soar', 'Security orchestration, automation and response ', 'soar', 'Security orchestration, automation and response '),
(283, 'ICSOMUSOSO000000', 2, 'security', 'soar', 'Security orchestration, automation and response ', 'soar', 'Security orchestration, automation and response '),
(284, 'ICSOBNSOSO000000', 3, 'security', 'soar', 'Security orchestration, automation and response ', 'soar', 'Security orchestration, automation and response '),
(285, 'SODSNKPLVA000000', 1, 'software', 'drm', 'DRM Tool', 'veeam_drm', 'DRM -Software- veeam '),
(286, 'SODSMUPLVA000000', 2, 'software', 'drm', 'DRM Tool', 'veeam_drm', 'DRM -Software- veeam  '),
(287, 'SODSBNPLVA000000', 3, 'software', 'drm', 'DRM Tool', 'veeam_drm', 'DRM -Software- veeam '),
(288, 'SODSNKVICT000000', 1, 'software', 'drm', 'DRM Tool', 'carb_drm', 'DRM -Software- Carbonite '),
(289, 'SODSMUVICT000000', 2, 'software', 'drm', 'DRM Tool', 'carb_drm', 'DRM -Software- carbonite  '),
(290, 'SODSBNVICT000000', 3, 'software', 'drm', 'DRM Tool', 'carb_drm', 'DRM -Software- carbonite '),
(291, 'ICWFNKCK1G000000', 1, 'security', 'waf', 'Web App Firewall', 'checkpoint_vwaf_1gbps', 'Checkpoint -VWAF - 1Gbps'),
(292, 'ICWFMUCK1G000000', 2, 'security', 'waf', 'Web App Firewall', 'checkpoint_vwaf_1gbps', 'Checkpoint -VWAF - 1Gbps'),
(293, 'ICWFBNCK1G000000', 3, 'security', 'waf', 'Web App Firewall', 'checkpoint_vwaf_1gbps', 'Checkpoint -VWAF - 1Gbps'),
(294, 'ICWFNKCK2G000000', 1, 'security', 'waf', 'Web App Firewall', 'checkpoint_vwaf_2gbps', 'Checkpoint -VWAF - 2Gbps'),
(295, 'ICWFMUCK2G000000', 2, 'security', 'waf', 'Web App Firewall', 'checkpoint_vwaf_2gbps', 'Checkpoint -VWAF - 2Gbps'),
(296, 'ICWFBNCK2G000000', 3, 'security', 'waf', 'Web App Firewall', 'checkpoint_vwaf_2gbps', 'Checkpoint -VWAF - 2Gbps'),
(297, 'ICWFNKFN1G000000', 1, 'security', 'waf', 'Web App Firewall', 'fortinet_vwaf_1gbps', 'Fortinet - VWAF - 1Gbps'),
(298, 'ICWFMUFN1G000000', 2, 'security', 'waf', 'Web App Firewall', 'fortinet_vwaf_1gbps', 'Fortinet - VWAF - 1Gbps'),
(299, 'ICWFBNFN1G000000', 3, 'security', 'waf', 'Web App Firewall', 'fortinet_vwaf_1gbps', 'Fortinet - VWAF - 1Gbps'),
(300, 'ICWFNKFN2G000000', 1, 'security', 'waf', 'Web App Firewall', 'fortinet_vwaf_2gbps', 'Fortinet - VWAF - 2Gbps'),
(301, 'ICWFMUFN2G000000', 2, 'security', 'waf', 'Web App Firewall', 'fortinet_vwaf_2gbps', 'Fortinet - VWAF - 2Gbps'),
(302, 'ICWFBNFN2G000000', 3, 'security', 'waf', 'Web App Firewall', 'fortinet_vwaf_2gbps', 'Fortinet - VWAF - 2Gbps'),
(303, 'ICWFNKRD1G000000', 1, 'security', 'waf', 'Web App Firewall', 'radware_vwaf_1gbps', 'RADWARE - VWAF - 1Gbps'),
(304, 'ICWFMURD1G000000', 2, 'security', 'waf', 'Web App Firewall', 'radware_vwaf_1gbps', 'RADWARE - VWAF - 1Gbps'),
(305, 'ICWFBNRD1G000000', 3, 'security', 'waf', 'Web App Firewall', 'radware_vwaf_1gbps', 'RADWARE - VWAF - 1Gbps'),
(306, 'ICWFNKRD2G000000', 1, 'security', 'waf', 'Web App Firewall', 'radware_vwaf_2gbps', 'RADWARE - VWAF - 2Gbps'),
(307, 'ICWFMURD2G000000', 2, 'security', 'waf', 'Web App Firewall', 'radware_vwaf_2gbps', 'RADWARE - VWAF - 2Gbps'),
(308, 'ICWFBNRD2G000000', 3, 'security', 'waf', 'Web App Firewall', 'radware_vwaf_2gbps', 'RADWARE - VWAF - 2Gbps'),
(309, 'ICFWNKFN1G000000', 1, 'security', 'ifw', 'Internal Firewall', 'ifw_fortinet_1gbps', 'Fortinet - Virtual Internal Firewall - 1 Gpbs'),
(310, 'ICFWMUFN1G000000', 2, 'security', 'ifw', 'Internal Firewall', 'ifw_fortinet_1gbps', 'Fortinet - Virtual Internal Firewall - 1 Gpbs'),
(311, 'ICFWBNFN1G000000', 3, 'security', 'ifw', 'Internal Firewall', 'ifw_fortinet_1gbps', 'Fortinet - Virtual Internal Firewall - 1 Gpbs'),
(312, 'ICFWNKFN2G000000', 1, 'security', 'ifw', 'Internal Firewall', 'ifw_fortinet_2gbps', 'Fortinet - Virtual Internal Firewall - 2 Gpbs'),
(313, 'ICFWMUFN2G000000', 2, 'security', 'ifw', 'Internal Firewall', 'ifw_fortinet_2gbps', 'Fortinet - Virtual Internal Firewall - 2 Gpbs'),
(314, 'ICFWBNFN2G000000', 3, 'security', 'ifw', 'Internal Firewall', 'ifw_fortinet_2gbps', 'Fortinet - Virtual Internal Firewall - 2 Gpbs'),
(315, 'ICFWNKFN1G000000', 1, 'security', 'efw', 'External Firewall', 'efw_fortinet_1gbps', 'Fortinet - Virtual External Firewall - 1 Gpbs'),
(316, 'ICFWMUFN1G000000', 2, 'security', 'efw', 'External Firewall', 'efw_fortinet_1gbps', 'Fortinet - Virtual External Firewall - 1 Gpbs'),
(317, 'ICFWBNFN1G000000', 3, 'security', 'efw', 'External Firewall', 'efw_fortinet_1gbps', 'Fortinet - Virtual External Firewall - 1 Gpbs'),
(318, 'ICFWNKFN2G000000', 1, 'security', 'efw', 'External Firewall', 'efw_fortinet_2gbps', 'Fortinet - Virtual External Firewall - 2 Gpbs'),
(319, 'ICFWMUFN2G000000', 2, 'security', 'efw', 'External Firewall', 'efw_fortinet_2gbps', 'Fortinet - Virtual External Firewall - 2 Gpbs'),
(320, 'ICFWBNFN2G000000', 3, 'security', 'efw', 'External Firewall', 'efw_fortinet_2gbps', 'Fortinet - Virtual External Firewall - 2 Gpbs'),
(321, 'ICWFNKE31G000000', 1, 'security', 'waf', 'Web App Firewall', 'enligh_vwaf_1gbps', 'eNlight - VWAF - 1Gbps'),
(322, 'ICWFMUE31G000000', 2, 'security', 'waf', 'Web App Firewall', 'enligh_vwaf_1gbps', 'eNlight - VWAF - 1Gbps'),
(323, 'ICWFBNE31G000000', 3, 'security', 'waf', 'Web App Firewall', 'enligh_vwaf_1gbps', 'eNlight - VWAF - 1Gbps'),
(324, 'ICWFNKE32G000000', 1, 'security', 'waf', 'Web App Firewall', 'enligh_vwaf_2gbps', 'eNlight - VWAF - 2Gbps'),
(325, 'ICWFMUE32G000000', 2, 'security', 'waf', 'Web App Firewall', 'enligh_vwaf_2gbps', 'eNlight - VWAF - 2Gbps'),
(326, 'ICWFBNE32G000000', 3, 'security', 'waf', 'Web App Firewall', 'enligh_vwaf_2gbps', 'eNlight - VWAF - 2Gbps'),
(327, 'ICWFNKC11G000000', 1, 'security', 'waf', 'Web App Firewall', 'other_vwaf_1gbps', 'Other- VWAF - 1Gbps'),
(328, 'ICWFMUC11G000000', 2, 'security', 'waf', 'Web App Firewall', 'other_vwaf_1gbps', 'Other- VWAF - 1Gbps'),
(329, 'ICWFBNC11G000000', 3, 'security', 'waf', 'Web App Firewall', 'other_vwaf_1gbps', 'Other- VWAF - 1Gbps'),
(330, 'ICWFNKC12G000000', 1, 'security', 'waf', 'Web App Firewall', 'other_vwaf_2gbps', 'Other- VWAF - 2Gbps'),
(331, 'ICWFMUC12G000000', 2, 'security', 'waf', 'Web App Firewall', 'other_vwaf_2gbps', 'Other- VWAF - 2Gbps'),
(332, 'ICWFBNC12G000000', 3, 'security', 'waf', 'Web App Firewall', 'other_vwaf_2gbps', 'Other- VWAF - 2Gbps'),
(333, 'CNPTNKCPG1000000', 1, 'network', 'net', 'Port Termination', 'copper_port_10g', 'Copper -10 Gig-Port Termination - Connectivity '),
(334, 'CNPTMUCPG1000000', 2, 'network', 'net', 'Port Termination', 'copper_port_10g', 'Copper -10 Gig-Port Termination - Connectivity '),
(335, 'CNPTBNCPG1000000', 3, 'network', 'net', 'Port Termination', 'copper_port_10g', 'Copper -10 Gig-Port Termination - Connectivity '),
(336, 'ICFWNKCK1G000000', 1, 'security', 'ifw', 'Internal Firewall', 'ifw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(337, 'ICFWMUCK1G000000', 2, 'security', 'ifw', 'Internal Firewall', 'ifw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(338, 'ICFWBNCK1G000000', 3, 'security', 'ifw', 'Internal Firewall', 'ifw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(339, 'ICFWNKCK2G000000', 1, 'security', 'ifw', 'Internal Firewall', 'ifw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(340, 'ICFWMUCK2G000000', 2, 'security', 'ifw', 'Internal Firewall', 'ifw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(341, 'ICFWBNCK2G000000', 3, 'security', 'ifw', 'Internal Firewall', 'ifw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(342, 'ICFWNKCK1G000000', 1, 'security', 'efw', 'External Firewall', 'efw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(343, 'ICFWMUCK1G000000', 2, 'security', 'efw', 'External Firewall', 'efw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(344, 'ICFWBNCK1G000000', 3, 'security', 'efw', 'External Firewall', 'efw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(345, 'ICFWNKCK2G000000', 1, 'security', 'efw', 'External Firewall', 'efw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(346, 'ICFWMUCK2G000000', 2, 'security', 'efw', 'External Firewall', 'efw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(347, 'ICFWBNCK2G000000', 3, 'security', 'efw', 'External Firewall', 'efw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(348, 'CNPTNKCP1G000000', 1, 'network', 'net', 'Port Termination', 'copper_port_1g', 'Copper-1 Gig -Port Termination - Connectivity '),
(349, 'CNPTMUCP1G000000', 2, 'network', 'net', 'Port Termination', 'copper_port_1g', 'Copper-1 Gig -Port Termination - Connectivity '),
(350, 'CNPTBNCP1G000000', 3, 'network', 'net', 'Port Termination', 'copper_port_1g', 'Copper-1 Gig -Port Termination - Connectivity '),
(351, 'CNPTNKFBG1000000', 1, 'network', 'net', 'Port Termination', 'fiber_port_10g', 'Fiber-10 Gig - Port Termination - Connectivity '),
(352, 'CNPTMUFBG1000000', 2, 'network', 'net', 'Port Termination', 'fiber_port_10g', 'Fiber-10 Gig - Port Termination - Connectivity '),
(353, 'CNPTBNFBG1000000', 3, 'network', 'net', 'Port Termination', 'fiber_port_10g', 'Fiber-10 Gig - Port Termination - Connectivity '),
(354, 'ICFWNKPA1G000000', 1, 'security', 'ifw', 'Internal Firewall', 'ifw_palo_1gbps', 'PALO ALTO - Virtual Internal Firewall - 1 Gpbs'),
(355, 'ICFWMUPA1G000000', 2, 'security', 'ifw', 'Internal Firewall', 'ifw_palo_1gbps', 'PALO ALTO - Virtual Internal Firewall - 1 Gpbs'),
(356, 'ICFWBNPA1G000000', 3, 'security', 'ifw', 'Internal Firewall', 'ifw_palo_1gbps', 'PALO ALTO - Virtual Internal Firewall - 1 Gpbs'),
(357, 'ICFWNKPA2G000000', 1, 'security', 'ifw', 'Internal Firewall', 'ifw_palo_2gbps', 'PALO ALTO - Virtual Internal Firewall - 2 Gpbs'),
(358, 'ICFWMUPA2G000000', 2, 'security', 'ifw', 'Internal Firewall', 'ifw_palo_2gbps', 'PALO ALTO - Virtual Internal Firewall - 2 Gpbs'),
(359, 'ICFWBNPA2G000000', 3, 'security', 'ifw', 'Internal Firewall', 'ifw_palo_2gbps', 'PALO ALTO - Virtual Internal Firewall - 2 Gpbs'),
(360, 'ICFWNKPA1G000000', 1, 'security', 'efw', 'External Firewall', 'efw_palo_1gbps', 'PALO ALTO -Virtual External Firewall - 1 Gpbs'),
(361, 'ICFWMUPA1G000000', 2, 'security', 'efw', 'External Firewall', 'efw_palo_1gbps', 'PALO ALTO -Virtual External Firewall - 1 Gpbs'),
(362, 'ICFWBNPA1G000000', 3, 'security', 'efw', 'External Firewall', 'efw_palo_1gbps', 'PALO ALTO -Virtual External Firewall - 1 Gpbs'),
(363, 'ICFWNKPA2G000000', 1, 'security', 'efw', 'External Firewall', 'efw_palo_2gbps', 'PALO ALTO -Virtual External Firewall - 2 Gpbs'),
(364, 'ICFWMUPA2G000000', 2, 'security', 'efw', 'External Firewall', 'efw_palo_2gbps', 'PALO ALTO -Virtual External Firewall - 2 Gpbs'),
(365, 'ICFWBNPA2G000000', 3, 'security', 'efw', 'External Firewall', 'efw_palo_2gbps', 'PALO ALTO -Virtual External Firewall - 2 Gpbs'),
(366, 'ICWFNKF51G000000', 1, 'security', 'waf', 'Web App Firewall', 'f5_vwaf_1gbps', 'F5 -VWAF - 1Gbps'),
(367, 'ICWFMUF51G000000', 2, 'security', 'waf', 'Web App Firewall', 'f5_vwaf_1gbps', 'F5 -VWAF - 1Gbps'),
(368, 'ICWFBNF51G000000', 3, 'security', 'waf', 'Web App Firewall', 'f5_vwaf_1gbps', 'F5 -VWAF - 1Gbps'),
(369, 'ICWFNKF52G000000', 1, 'security', 'waf', 'Web App Firewall', 'f5_vwaf_2gbps', 'F5 -VWAF - 2Gbps'),
(370, 'ICWFMUF52G000000', 2, 'security', 'waf', 'Web App Firewall', 'f5_vwaf_2gbps', 'F5 -VWAF - 2Gbps'),
(371, 'ICWFBNF52G000000', 3, 'security', 'waf', 'Web App Firewall', 'f5_vwaf_2gbps', 'F5 -VWAF - 2Gbps'),
(372, 'MSEGNKEVWB000000', 1, 'managed', 'waf_mgmt', 'Web App Firewall Managed Services', 'esds_waf_mgmt', 'ESDS vWAF - Managed Services '),
(373, 'MSEGMUEVWB000000', 2, 'managed', 'waf_mgmt', 'Web App Firewall Managed Services', 'esds_waf_mgmt', 'ESDS vWAF - Managed Services  '),
(374, 'MSEGBNEVWB000000', 3, 'managed', 'waf_mgmt', 'Web App Firewall Managed Services', 'esds_waf_mgmt', 'ESDS vWAF - Managed Services '),
(375, 'CNPTNKFB1G000000', 1, 'network', 'net', 'Port Termination', 'fiber_port_1g', 'Fiber- 1 Gig-Port Termination - Connectivity '),
(376, 'CNPTMUFB1G000000', 2, 'network', 'net', 'Port Termination', 'fiber_port_1g', 'Fiber- 1 Gig-Port Termination - Connectivity '),
(377, 'CNPTBNFB1G000000', 3, 'network', 'net', 'Port Termination', 'fiber_port_1g', 'Fiber- 1 Gig-Port Termination - Connectivity '),
(378, 'CNNR000000000000', 0, 'network', 'net', 'Cross Connect', 'cross_connect', 'Cross-connect'),
(379, 'MSEGNKEVPH000000', 1, 'managed', 'waf_mgmt', 'Web App Firewall Managed Services', 'phy_waf_mgmt', 'Physical WAF - Managed Services  '),
(380, 'MSEGMUEVPH000000', 2, 'managed', 'waf_mgmt', 'Web App Firewall Managed Services', 'phy_waf_mgmt', 'Physical WAF - Managed Services   '),
(381, 'MSEGBNEVPH000000', 3, 'managed', 'waf_mgmt', 'Web App Firewall Managed Services', 'phy_waf_mgmt', 'Physical WAF - Managed Services  '),
(382, 'ICHSNKDHHS000000', 1, 'security', 'hsm', 'Hardware Security Module', 'dedicate_hsm', 'Hardware Security Module - Dedicated '),
(383, 'ICHSMUDHHS000000', 2, 'security', 'hsm', 'Hardware Security Module', 'dedicate_hsm', 'Hardware Security Module - Dedicated '),
(384, 'ICHSBNDHHS000000', 3, 'security', 'hsm', 'Hardware Security Module', 'dedicate_hsm', 'Hardware Security Module - Dedicated '),
(385, 'ESDLNKDVFN000000', 1, 'security', 'dlp', 'DLP', 'dlp_fortinet', 'DLP VM - Fortinet  '),
(386, 'ESDLMUDVFN000000', 2, 'security', 'dlp', 'DLP', 'dlp_fortinet', 'DLP VM - Fortinet  '),
(387, 'ESDLBNDVFN000000', 3, 'security', 'dlp', 'DLP', 'dlp_fortinet', 'DLP VM - Fortinet  '),
(388, 'ESDLNKDVEP000000', 1, 'security', 'dlp', 'DLP', 'dlp_endpoint', 'DLP VM - End Point '),
(389, 'ESDLMUDVEP000000', 2, 'security', 'dlp', 'DLP', 'dlp_endpoint', 'DLP VM - End Point '),
(390, 'ESDLBNDVEP000000', 3, 'security', 'dlp', 'DLP', 'dlp_endpoint', 'DLP VM - End Point '),
(391, 'ICHSNKSMHS000000', 1, 'security', 'hsm', 'Hardware Security Module', 'shared_hsm', 'Hardware Security Module - Shared '),
(392, 'ICHSNKSMHS000000', 2, 'security', 'hsm', 'Hardware Security Module', 'shared_hsm', 'Hardware Security Module - Shared '),
(393, 'ICHSNKSMHS000000', 3, 'security', 'hsm', 'Hardware Security Module', 'shared_hsm', 'Hardware Security Module - Shared '),
(394, 'ESDLNKDVMA000000', 1, 'security', 'dlp', 'DLP', 'dlp_mcafee', 'DLP VM - McAfee   '),
(395, 'ESDLMUDVMA000000', 2, 'security', 'dlp', 'DLP', 'dlp_mcafee', 'DLP VM - McAfee   '),
(396, 'ESDLBNDVMA000000', 3, 'security', 'dlp', 'DLP', 'dlp_mcafee', 'DLP VM - McAfee   '),
(397, 'CNVNNKIV00000000', 1, 'network', 'vpn', 'IPSEC VPN', 'ipsec_vpn', 'IPSEC-VPN - Connectivity '),
(398, 'CNVNMUIV00000000', 2, 'network', 'vpn', 'IPSEC VPN', 'ipsec_vpn', 'IPSEC-VPN - Connectivity '),
(399, 'CNVNBNIV00000000', 3, 'network', 'vpn', 'IPSEC VPN', 'ipsec_vpn', 'IPSEC-VPN - Connectivity '),
(400, 'ESPDNKAR00000000', 1, 'security', 'pim', 'Priviledge Identity Management', 'arcon_pim', 'ARCON- Priviledge Identity Management-OEM '),
(401, 'ESPDMUAR00000000', 2, 'security', 'pim', 'Priviledge Identity Management', 'arcon_pim', 'ARCON- Priviledge Identity Management-OEM '),
(402, 'ESPDBNAR00000000', 3, 'security', 'pim', 'Priviledge Identity Management', 'arcon_pim', 'ARCON- Priviledge Identity Management-OEM '),
(403, 'ESPDNKIR00000000', 1, 'security', 'pim', 'Priviledge Identity Management', 'iraje_pim', 'iRaje- Priviledge Identity Management-OEM '),
(404, 'ESPDMUIR00000000', 2, 'security', 'pim', 'Priviledge Identity Management', 'iraje_pim', 'iRaje- Priviledge Identity Management-OEM '),
(405, 'ESPDBNIR00000000', 3, 'security', 'pim', 'Priviledge Identity Management', 'iraje_pim', 'iRaje- Priviledge Identity Management-OEM '),
(406, 'CNVNNKSV00000000', 1, 'network', 'vpn', 'SSL VPN', 'ssl_vpn', 'SSL-VPN - Connectivity '),
(407, 'CNVNMUSV00000000', 2, 'network', 'vpn', 'SSL VPN', 'ssl_vpn', 'SSL-VPN - Connectivity '),
(408, 'CNVNBNSV00000000', 3, 'network', 'vpn', 'SSL VPN', 'ssl_vpn', 'SSL-VPN - Connectivity '),
(409, 'CNVNNKWV00000000', 1, 'network', 'vpn', 'WEB VPN', 'web_vpn', 'ESDS-WEB VPN -VPN - Connectivity '),
(410, 'CNVNMUWV00000000', 2, 'network', 'vpn', 'WEB VPN', 'web_vpn', 'ESDS-WEB VPN -VPN - Connectivity '),
(411, 'CNVNBNWV00000000', 3, 'network', 'vpn', 'WEB VPN', 'web_vpn', 'ESDS-WEB VPN -VPN - Connectivity '),
(412, 'SOCMNKEO00000000', 1, 'managed', 'emagic', 'eMagic', 'emagic', 'eMagic- Cloud Monitoring  '),
(413, 'SOCMMUEO00000000', 2, 'managed', 'emagic', 'eMagic', 'emagic', 'eMagic- Cloud Monitoring   '),
(414, 'SOCMBNEO00000000', 3, 'managed', 'emagic', 'eMagic', 'emagic', 'eMagic- Cloud Monitoring  '),
(415, 'ICIMNKIMIM000000', 1, 'security', 'iam', 'Identity Access Management ', 'iam', 'Identity Access Management '),
(416, 'ICIMMUIMIM000000', 2, 'security', 'iam', 'Identity Access Management ', 'iam', 'Identity Access Management '),
(417, 'ICIMBNIMIM000000', 3, 'security', 'iam', 'Identity Access Management ', 'iam', 'Identity Access Management '),
(418, 'ICEDNKERER000000', 1, 'security', 'edr', 'Endpoint Detection & Response Service ', 'edr', 'Endpoint Detection & Response Service '),
(419, 'ICEDMUERER000000', 2, 'security', 'edr', 'Endpoint Detection & Response Service ', 'edr', 'Endpoint Detection & Response Service ');
INSERT INTO `tbl_product_list` (`id`, `sku_code`, `region_id`, `primary_category`, `sec_category`, `default_name`, `prod_int`, `product_name`) VALUES
(420, 'ICEDBNERER000000', 3, 'security', 'edr', 'Endpoint Detection & Response Service ', 'edr', 'Endpoint Detection & Response Service '),
(421, 'ESDMNKMf00000000', 1, 'security', 'dam', 'Database activity monitoring  ', 'mc_dam', 'McAfee - Database activity monitoring  '),
(422, 'ESDMMUMf00000000', 2, 'security', 'dam', 'Database activity monitoring  ', 'mc_dam', 'McAfee - Database activity monitoring  '),
(423, 'ESDMBNMf00000000', 3, 'security', 'dam', 'Database activity monitoring  ', 'mc_dam', 'McAfee - Database activity monitoring  '),
(424, 'ICDMNKDMDA000000', 1, 'security', 'dam', 'Database activity monitoring  ', 'enlight_dam', 'ESDS - Database activity monitoring  '),
(425, 'ICDMMUDMDA000000', 2, 'security', 'dam', 'Database activity monitoring  ', 'enlight_dam', 'ESDS - Database activity monitoring  '),
(426, 'ICDMBNDMDA000000', 3, 'security', 'dam', 'Database activity monitoring  ', 'enlight_dam', 'ESDS - Database activity monitoring  '),
(427, 'ESMFNKFN00000000', 1, 'security', 'mfa', 'Multi Factor Authentication', 'mfa', 'OEM MFA Fortinet '),
(428, 'ESMFMUFN00000000', 2, 'security', 'mfa', 'Multi Factor Authentication', 'mfa', 'OEM MFA Fortinet '),
(429, 'ESMFBNFN00000000', 3, 'security', 'mfa', 'Multi Factor Authentication', 'mfa', 'OEM MFA Fortinet '),
(430, 'SOMQNKEX00000000', 1, 'software', 'db', 'Database', 'ms_express', 'MSSQL-Express-Software '),
(431, 'SOMQMUEX00000000', 2, 'software', 'db', 'Database', 'ms_express', 'MSSQL-Express-Software  '),
(432, 'SOMQBNEX00000000', 3, 'software', 'db', 'Database', 'ms_express', 'MSSQL-Express-Software '),
(433, 'SOPSNKCE00000000', 1, 'software', 'db', 'Database', 'post_com', 'PostgreSQL-DB-Community  '),
(434, 'SOPSMUCE00000000', 2, 'software', 'db', 'Database', 'post_com', 'PostgreSQL-DB-Community   '),
(435, 'SOPSBNCE00000000', 3, 'software', 'db', 'Database', 'post_com', 'PostgreSQL-DB-Community  '),
(436, 'SOPSNKSE00000000', 1, 'software', 'db', 'Database', 'post_ent', 'PostgreSQL-DB-Enterprise  '),
(437, 'SOPSMUSE00000000', 2, 'software', 'db', 'Database', 'post_ent', 'PostgreSQL-DB-Enterprise   '),
(438, 'SOPSBNSE00000000', 3, 'software', 'db', 'Database', 'post_ent', 'PostgreSQL-DB-Enterprise  '),
(439, 'SOMGNKCE00000000', 1, 'software', 'db', 'Database', 'mong_com', 'MongoDB - Community  '),
(440, 'SOMGMUCE00000000', 2, 'software', 'db', 'Database', 'mong_com', 'MongoDB - Community   '),
(441, 'SOMGBNCE00000000', 3, 'software', 'db', 'Database', 'mong_com', 'MongoDB - Community  '),
(442, 'SOMGNKSE00000000', 1, 'software', 'db', 'Database', 'mong_std', 'MongoDB - Standard '),
(443, 'SOMGMUSE00000000', 2, 'software', 'db', 'Database', 'mong_std', 'MongoDB - Standard  '),
(444, 'SOMGBNSE00000000', 3, 'software', 'db', 'Database', 'mong_std', 'MongoDB - Standard '),
(445, 'SOMGNKEE00000000', 1, 'software', 'db', 'Database', 'mong_ent', 'MongoDB - Enterprise '),
(446, 'SOMGMUEE00000000', 2, 'software', 'db', 'Database', 'mong_ent', 'MongoDB - Enterprise  '),
(447, 'SOMGBNEE00000000', 3, 'software', 'db', 'Database', 'mong_ent', 'MongoDB - Enterprise '),
(448, 'SOD2NKCE00000000', 1, 'software', 'db', 'Database', 'db2_comm', 'DB2 - Community  '),
(449, 'SOD2MUCE00000000', 2, 'software', 'db', 'Database', 'db2_comm', 'DB2 - Community   '),
(450, 'SOD2BNCE00000000', 3, 'software', 'db', 'Database', 'db2_comm', 'DB2 - Community  '),
(451, 'SOOANKNU00000000', 1, 'software', 'db', 'Database', 'orc_nup', 'OracleDB-NUP   '),
(452, 'SOOAMUNU00000000', 2, 'software', 'db', 'Database', 'orc_nup', 'OracleDB-NUP    '),
(453, 'SOOABNNU00000000', 3, 'software', 'db', 'Database', 'orc_nup', 'OracleDB-NUP   '),
(454, 'SOOANKSE00000000', 1, 'software', 'db', 'Database', 'orc_std', 'OracleDB-Standard  '),
(455, 'SOOAMUSE00000000', 2, 'software', 'db', 'Database', 'orc_std', 'OracleDB-Standard   '),
(456, 'SOOABNSE00000000', 3, 'software', 'db', 'Database', 'orc_std', 'OracleDB-Standard  '),
(457, 'SOOANKEE00000000', 1, 'software', 'db', 'Database', 'orc_ent', 'OracleDB-Enterprise   '),
(458, 'SOOAMUEE00000000', 2, 'software', 'db', 'Database', 'orc_ent', 'OracleDB-Enterprise    '),
(459, 'SOOABNEE00000000', 3, 'software', 'db', 'Database', 'orc_ent', 'OracleDB-Enterprise   '),
(460, 'SOSDNKEE00000000', 1, 'software', 'db', 'Database', 'syb_ent', 'SybaseDB -Enterprise  '),
(461, 'SOSDMUEE00000000', 2, 'software', 'db', 'Database', 'syb_ent', 'SybaseDB -Enterprise   '),
(462, 'SOSDBNEE00000000', 3, 'software', 'db', 'Database', 'syb_ent', 'SybaseDB -Enterprise  '),
(463, 'SOSDNKSL00000000', 1, 'software', 'db', 'Database', 'syb_smb', 'SybaseDB -SmallBusinnes  '),
(464, 'SOSDMUSL00000000', 2, 'software', 'db', 'Database', 'syb_smb', 'SybaseDB -SmallBusinnes   '),
(465, 'SOSDBNSL00000000', 3, 'software', 'db', 'Database', 'syb_smb', 'SybaseDB -SmallBusinnes  '),
(466, 'SOSDNKED00000000', 1, 'software', 'db', 'Database', 'syb_eva', 'SybaseDB -Evaluation '),
(467, 'SOSDMUED00000000', 2, 'software', 'db', 'Database', 'syb_eva', 'SybaseDB -Evaluation  '),
(468, 'SOSDBNED00000000', 3, 'software', 'db', 'Database', 'syb_eva', 'SybaseDB -Evaluation '),
(469, 'SOSDNKEJ00000000', 1, 'software', 'db', 'Database', 'syb_exp', 'SybaseDB -Express  '),
(470, 'SOSDMUEJ00000000', 2, 'software', 'db', 'Database', 'syb_exp', 'SybaseDB -Express   '),
(471, 'SOSDBNEJ00000000', 3, 'software', 'db', 'Database', 'syb_exp', 'SybaseDB -Express  '),
(472, 'SOD2NKSE00000000', 1, 'software', 'db', 'Database', 'db2_std', 'DB2 - Standard '),
(473, 'SOD2MUSE00000000', 2, 'software', 'db', 'Database', 'db2_std', 'DB2 - Standard  '),
(474, 'SOD2BNSE00000000', 3, 'software', 'db', 'Database', 'db2_std', 'DB2 - Standard '),
(475, 'SOD2NKAE00000000', 1, 'software', 'db', 'Database', 'db2_adv', 'DB2 - Advanced '),
(476, 'SOD2MUAE00000000', 2, 'software', 'db', 'Database', 'db2_adv', 'DB2 - Advanced  '),
(477, 'SOD2BNAE00000000', 3, 'software', 'db', 'Database', 'db2_adv', 'DB2 - Advanced '),
(478, 'SOWINKSN00000000', 1, 'software', 'os', 'Operating System', 'win_se', 'Windows Standard Edition  '),
(479, 'SOWIMUSN00000000', 2, 'software', 'os', 'Operating System', 'win_se', 'Windows Standard Edition   '),
(480, 'SOWIBNSN00000000', 3, 'software', 'os', 'Operating System', 'win_se', 'Windows Standard Edition  '),
(481, 'SOWINKDE00000000', 1, 'software', 'os', 'Operating System', 'win_dc', 'Windows Data Center Edition  '),
(482, 'SOWIMUDE00000000', 2, 'software', 'os', 'Operating System', 'win_dc', 'Windows Data Center Edition   '),
(483, 'SOWIBNDE00000000', 3, 'software', 'os', 'Operating System', 'win_dc', 'Windows Data Center Edition  '),
(484, 'SOCONKCO00000000', 1, 'software', 'os', 'Operating System', 'centos', 'Linux : CentOS  '),
(485, 'SOCOMUCO00000000', 2, 'software', 'os', 'Operating System', 'centos', 'Linux : CentOS   '),
(486, 'SOCOBNCO00000000', 3, 'software', 'os', 'Operating System', 'centos', 'Linux : CentOS '),
(487, 'SOUBNKUB00000000', 1, 'software', 'os', 'Operating System', 'ubuntu', 'Linux : Ubuntu  '),
(488, 'SOUBMUUB00000000', 2, 'software', 'os', 'Operating System', 'ubuntu', 'Linux : Ubuntu   '),
(489, 'SOUBBNUB00000000', 3, 'software', 'os', 'Operating System', 'ubuntu', 'Linux : Ubuntu  '),
(490, 'SODNNKDE00000000', 1, 'software', 'os', 'Operating System', 'debian', 'Linux : Debian  '),
(491, 'SODNMUDE00000000', 2, 'software', 'os', 'Operating System', 'debian', 'Linux : Debian   '),
(492, 'SODNBNDE00000000', 3, 'software', 'os', 'Operating System', 'debian', 'Linux : Debian '),
(493, 'SOMQNKSE00000000', 1, 'software', 'db', 'Database', 'ms_std', 'MSSQL-STD   '),
(494, 'SOMQMUSE00000000', 2, 'software', 'db', 'Database', 'ms_std', 'MSSQL-STD    '),
(495, 'SOMQBNSE00000000', 3, 'software', 'db', 'Database', 'ms_std', 'MSSQL-STD   '),
(496, 'SOMQNKEE00000000', 1, 'software', 'db', 'Database', 'ms_ent', 'MSSQL-Enterprise   '),
(497, 'SOMQMUEE00000000', 2, 'software', 'db', 'Database', 'ms_ent', 'MSSQL-Enterprise    '),
(498, 'SOMQBNEE00000000', 3, 'software', 'db', 'Database', 'ms_ent', 'MSSQL-Enterprise   '),
(499, 'SOMQNKDE00000000', 1, 'software', 'db', 'Database', 'ms_dev', 'MSSQL-Development-Software '),
(500, 'SOMQMUDE00000000', 2, 'software', 'db', 'Database', 'ms_dev', 'MSSQL-Development-Software  '),
(501, 'SOMQBNDE00000000', 3, 'software', 'db', 'Database', 'ms_dev', 'MSSQL-Development-Software '),
(502, 'SOMQNKWE00000000', 1, 'software', 'db', 'Database', 'ms_web', 'MSSQL-Web-Software '),
(503, 'SOMQMUWE00000000', 2, 'software', 'db', 'Database', 'ms_web', 'MSSQL-Web-Software  '),
(504, 'SOMQBNWE00000000', 3, 'software', 'db', 'Database', 'ms_web', 'MSSQL-Web-Software '),
(505, 'SOMYNKCE00000000', 1, 'software', 'db', 'Database', 'my_com', 'MYSQL-Community   '),
(506, 'SOMYMUCE00000000', 2, 'software', 'db', 'Database', 'my_com', 'MYSQL-Community    '),
(507, 'SOMYBNCE00000000', 3, 'software', 'db', 'Database', 'my_com', 'MYSQL-Community   '),
(508, 'SOMYNKSE00000000', 1, 'software', 'db', 'Database', 'my_std', 'MYSQL-Standard   '),
(509, 'SOMYMUSE00000000', 2, 'software', 'db', 'Database', 'my_std', 'MYSQL-Standard    '),
(510, 'SOMYBNSE00000000', 3, 'software', 'db', 'Database', 'my_std', 'MYSQL-Standard   '),
(511, 'SOMYNKEE00000000', 1, 'software', 'db', 'Database', 'my_ent', 'MYSQL-Enterprise   '),
(512, 'SOMYMUEE00000000', 2, 'software', 'db', 'Database', 'my_ent', 'MYSQL-Enterprise   '),
(513, 'SOMYBNEE00000000', 3, 'software', 'db', 'Database', 'my_ent', 'MYSQL-Enterprise   '),
(514, 'SOLONKRI00000000', 1, 'software', 'os', 'Operating System', 'rhel', 'Linux : RHEL  '),
(515, 'SOLOMURI00000000', 2, 'software', 'os', 'Operating System', 'rhel', 'Linux : RHEL   '),
(516, 'SOLOBNRI00000000', 3, 'software', 'os', 'Operating System', 'rhel', 'Linux : RHEL '),
(517, 'SOSUNKSU00000000', 1, 'software', 'os', 'Operating System', 'suse', 'Linux : SUSE  '),
(518, 'SOSUNKSU00000000', 2, 'software', 'os', 'Operating System', 'suse', 'Linux : SUSE  '),
(519, 'SOSUNKSU00000000', 3, 'software', 'os', 'Operating System', 'suse', 'Linux : SUSE  '),
(520, 'MSNMNKLMVI000000', 1, 'managed', 'lb_mgmt', 'Load Balancer Management', 'virt_lb_mgmt', 'Virtual Load Balancer Management'),
(521, 'MSNMMULMVI000000', 2, 'managed', 'lb_mgmt', 'Load Balancer Management', 'virt_lb_mgmt', 'Virtual Load Balancer Management '),
(522, 'MSNMBNLMVI000000', 3, 'managed', 'lb_mgmt', 'Load Balancer Management', 'virt_lb_mgmt', 'Virtual Load Balancer Management'),
(523, 'ESAVNKBASM000000', 1, 'software', 'av', 'Anti Virus', 'sym_av_basic', 'SYMENTEC - Basic Antivirus '),
(524, 'ESAVMUBASM000000', 2, 'software', 'av', 'Anti Virus', 'sym_av_basic', 'SYMENTEC - Basic Antivirus '),
(525, 'ESAVBNBASM000000', 3, 'software', 'av', 'Anti Virus', 'sym_av_basic', 'SYMENTEC - Basic Antivirus '),
(526, 'MSOYNKNU00000000', 1, 'managed', 'os_mgmt', 'Operating System', 'centos_mgmt', 'CENTOS Operating System Managed Services'),
(527, 'MSOYMUNU00000000', 2, 'managed', 'os_mgmt', 'Operating System', 'centos_mgmt', 'CENTOS Operating System Managed Services '),
(528, 'MSOYBNNU00000000', 3, 'managed', 'os_mgmt', 'Operating System', 'centos_mgmt', 'CENTOS Operating System Managed Services'),
(529, 'MSOYNKUB00000000', 1, 'managed', 'os_mgmt', 'Operating System', 'ubuntu_mgmt', 'UBUNTU Operating System Managed Services'),
(530, 'MSOYMUUB00000000', 2, 'managed', 'os_mgmt', 'Operating System', 'ubuntu_mgmt', 'UBUNTU Operating System Managed Services '),
(531, 'MSOYBNUB00000000', 3, 'managed', 'os_mgmt', 'Operating System', 'ubuntu_mgmt', 'UBUNTU Operating System Managed Services'),
(532, 'MSNMNKLMPB000000', 1, 'managed', 'lb_mgmt', 'Load Balancer Management', 'phy_lb_mgmt', 'Physical Load Balancer Management'),
(533, 'MSNMMULMPB000000', 2, 'managed', 'lb_mgmt', 'Load Balancer Management', 'phy_lb_mgmt', 'Physical Load Balancer Management '),
(534, 'MSNMBNLMPB000000', 3, 'managed', 'lb_mgmt', 'Load Balancer Management', 'phy_lb_mgmt', 'Physical Load Balancer Management'),
(535, 'ESAVNKBATM000000', 1, 'software', 'av', 'Anti Virus', 'tm_av_basic', 'Trend Micro - Basic Antivirus '),
(536, 'ESAVMUBATM000000', 2, 'software', 'av', 'Anti Virus', 'tm_av_basic', 'Trend Micro - Basic Antivirus '),
(537, 'ESAVBNBATM000000', 3, 'software', 'av', 'Anti Virus', 'tm_av_basic', 'Trend Micro - Basic Antivirus '),
(538, 'ESAVNKBAMA000000', 1, 'software', 'av', 'Anti Virus', 'mc_av_basic', 'McAfee - Basic Antivirus '),
(539, 'ESAVMUBAMA000000', 2, 'software', 'av', 'Anti Virus', 'mc_av_basic', 'McAfee - Basic Antivirus '),
(540, 'ESAVBNBAMA000000', 3, 'software', 'av', 'Anti Virus', 'mc_av_basic', 'McAfee - Basic Antivirus '),
(541, 'ESAVNKAHSM000000', 1, 'software', 'av', 'Anti Virus', 'sym_av_hips', 'SYMENTEC - AV + HIPS '),
(542, 'ESAVMUAHSM000000', 2, 'software', 'av', 'Anti Virus', 'sym_av_hips', 'SYMENTEC - AV + HIPS '),
(543, 'ESAVBNAHSM000000', 3, 'software', 'av', 'Anti Virus', 'sym_av_hips', 'SYMENTEC - AV + HIPS '),
(544, 'ESAVNKAHTM000000', 1, 'software', 'av', 'Anti Virus', 'tm_av_hips', 'Trend Micro - AV + HIPS '),
(545, 'ESAVMUAHTM000000', 2, 'software', 'av', 'Anti Virus', 'tm_av_hips', 'Trend Micro - AV + HIPS '),
(546, 'ESAVBNAHTM000000', 3, 'software', 'av', 'Anti Virus', 'tm_av_hips', 'Trend Micro - AV + HIPS '),
(547, 'ESAVNKAHMA000000', 1, 'software', 'av', 'Anti Virus', 'mc_av_hips', 'McAfee - AV + HIPS '),
(548, 'ESAVMUAHMA000000', 2, 'software', 'av', 'Anti Virus', 'mc_av_hips', 'McAfee - AV + HIPS '),
(549, 'ESAVBNAHMA000000', 3, 'software', 'av', 'Anti Virus', 'mc_av_hips', 'McAfee - AV + HIPS '),
(550, 'MSOYNKRE00000000', 1, 'managed', 'os_mgmt', 'OS Management', 'rhel_mgmt', 'RHEL - OSMng- Managed Services '),
(551, 'MSOYMURE00000000', 2, 'managed', 'os_mgmt', 'OS Management', 'rhel_mgmt', 'RHEL - OSMng- Managed Services  '),
(552, 'MSOYBNRE00000000', 3, 'managed', 'os_mgmt', 'OS Management', 'rhel_mgmt', 'RHEL - OSMng- Managed Services '),
(553, 'MSOYNKSU00000000', 1, 'managed', 'os_mgmt', 'OS Management', 'suse_mgmt', 'SUSE - OSMng- Managed Services '),
(554, 'MSOYMUSU00000000', 2, 'managed', 'os_mgmt', 'OS Management', 'suse_mgmt', 'SUSE - OSMng- Managed Services  '),
(555, 'MSOYBNSU00000000', 3, 'managed', 'os_mgmt', 'OS Management', 'suse_mgmt', 'SUSE - OSMng- Managed Services '),
(556, 'MSOYNKSH00000000', 1, 'managed', 'os_mgmt', 'OS Management', 'hana_mgmt', 'SUSE HANA Failover OSMng - Managed Services '),
(557, 'MSOYMUSH00000000', 2, 'managed', 'os_mgmt', 'OS Management', 'hana_mgmt', 'SUSE HANA Failover OSMng - Managed Services  '),
(558, 'MSOYBNSH00000000', 3, 'managed', 'os_mgmt', 'OS Management', 'hana_mgmt', 'SUSE HANA Failover OSMng - Managed Services '),
(559, 'MSOYNKWI00000000', 1, 'managed', 'os_mgmt', 'OS Management', 'win_mgmt', 'Windows Operating System Managed Services'),
(560, 'MSOYMUWI00000000', 2, 'managed', 'os_mgmt', 'OS Management', 'win_mgmt', 'Windows Operating System Managed Services '),
(561, 'MSOYBNWI00000000', 3, 'managed', 'os_mgmt', 'OS Management', 'win_mgmt', 'Windows Operating System Managed Services'),
(562, 'CNVLNKHP5M000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_proxy_512', 'HA Proxy - Virtual Load Balancer - 512 Mbps'),
(563, 'CNVLMUHP5M000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_proxy_512', 'HA Proxy - Virtual Load Balancer - 512 Mbps'),
(564, 'CNVLBNHP5M000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_proxy_512', 'HA Proxy - Virtual Load Balancer - 512 Mbps'),
(565, 'CNVLNKHP1G000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_proxy_1G', 'HA Proxy - Virtual Load Balancer - 1 Gpbs'),
(566, 'CNVLMUHP1G000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_proxy_1G', 'HA Proxy - Virtual Load Balancer - 1 Gpbs'),
(567, 'CNVLBNHP1G000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_proxy_1G', 'HA Proxy - Virtual Load Balancer - 1 Gpbs'),
(568, 'CNVLNKF55M000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_f5_512', 'F5-Virtual Load Balancer   - 512 Mbps'),
(569, 'CNVLMUF55M000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_f5_512', 'F5-Virtual Load Balancer   - 512 Mbps'),
(570, 'CNVLBNF55M000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_f5_512', 'F5-Virtual Load Balancer   - 512 Mbps'),
(571, 'CNVLNKF51G000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_f5_1G', 'F5-Virtual Load Balancer   - 1 Gpbs'),
(572, 'CNVLMUF51G000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_f5_1G', 'F5-Virtual Load Balancer   - 1 Gpbs'),
(573, 'CNVLBNF51G000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_f5_1G', 'F5-Virtual Load Balancer   - 1 Gpbs'),
(574, 'CNVLNKNX5M000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_nginx_512', 'NGINX -Virtual Load Balancer   - 512 Mbps'),
(575, 'CNVLMUNX5M000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_nginx_512', 'NGINX -Virtual Load Balancer   - 512 Mbps'),
(576, 'CNVLBNNX5M000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_nginx_512', 'NGINX -Virtual Load Balancer   - 512 Mbps'),
(577, 'CNVLNKNX1G000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_nginx_1G', 'NGINX -Virtual Load Balancer   - 1 Gpbs'),
(578, 'CNVLMUNX1G000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_nginx_1G', 'NGINX -Virtual Load Balancer   - 1 Gpbs'),
(579, 'CNVLBNNX1G000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_nginx_1G', 'NGINX -Virtual Load Balancer   - 1 Gpbs'),
(580, 'CNVLNKCI5M000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_citrix_512', 'CITRIX - Virtual Load Balancer - 512 Mbps'),
(581, 'CNVLMUCI5M000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_citrix_512', 'CITRIX - Virtual Load Balancer - 512 Mbps'),
(582, 'CNVLBNCI5M000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_citrix_512', 'CITRIX - Virtual Load Balancer - 512 Mbps'),
(583, 'CNVLNKCI1G000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_citrix_1G', 'CITRIX - Virtual Load Balancer - 1 Gpbs'),
(584, 'CNVLMUCI1G000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_citrix_1G', 'CITRIX - Virtual Load Balancer - 1 Gpbs'),
(585, 'CNVLBNCI1G000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_citrix_1G', 'CITRIX - Virtual Load Balancer - 1 Gpbs'),
(586, 'CNVLNKAY5M000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_array_512', 'ARRAY - Virtual Load Balancer   - 512 Mbps'),
(587, 'CNVLMUAY5M000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_array_512', 'ARRAY - Virtual Load Balancer   - 512 Mbps'),
(588, 'CNVLBNAY5M000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_array_512', 'ARRAY - Virtual Load Balancer   - 512 Mbps'),
(589, 'CNVLNKAY1G000000', 1, 'network', 'lb', 'Load Balancer', 'vlb_array_1G', 'ARRAY - Virtual Load Balancer   - 1 Gpbs'),
(590, 'CNVLMUAY1G000000', 2, 'network', 'lb', 'Load Balancer', 'vlb_array_1G', 'ARRAY - Virtual Load Balancer   - 1 Gpbs'),
(591, 'CNVLBNAY1G000000', 3, 'network', 'lb', 'Load Balancer', 'vlb_array_1G', 'ARRAY - Virtual Load Balancer   - 1 Gpbs'),
(592, 'CNPLNKF55M000000', 1, 'network', 'lb', 'Load Balancer', 'plb_f5_512', 'F5-Physical Load Balancer   - 512 Mbps'),
(593, 'CNPLMUF55M000000', 2, 'network', 'lb', 'Load Balancer', 'plb_f5_512', 'F5-Physical Load Balancer   - 512 Mbps'),
(594, 'CNPLBNF55M000000', 3, 'network', 'lb', 'Load Balancer', 'plb_f5_512', 'F5-Physical Load Balancer   - 512 Mbps'),
(595, 'CNPLNKF51G000000', 1, 'network', 'lb', 'Load Balancer', 'plb_f5_1G', 'F5-Physical Load Balancer   - 1 Gpbs'),
(596, 'CNPLMUF51G000000', 2, 'network', 'lb', 'Load Balancer', 'plb_f5_1G', 'F5-Physical Load Balancer   - 1 Gpbs'),
(597, 'CNPLBNF51G000000', 3, 'network', 'lb', 'Load Balancer', 'plb_f5_1G', 'F5-Physical Load Balancer   - 1 Gpbs'),
(598, 'CNPLNKCI5M000000', 1, 'network', 'lb', 'Load Balancer', 'plb_citrix_512', 'CITRIX - Physical Load Balancer - 512 Mbps'),
(599, 'CNPLMUCI5M000000', 2, 'network', 'lb', 'Load Balancer', 'plb_citrix_512', 'CITRIX - Physical Load Balancer - 512 Mbps'),
(600, 'CNPLBNCI5M000000', 3, 'network', 'lb', 'Load Balancer', 'plb_citrix_512', 'CITRIX - Physical Load Balancer - 512 Mbps'),
(601, 'CNPLNKCI1G000000', 1, 'network', 'lb', 'Load Balancer', 'plb_citrix_1G', 'CITRIX - Physical Load Balancer - 1 Gpbs'),
(602, 'CNPLMUCI1G000000', 2, 'network', 'lb', 'Load Balancer', 'plb_citrix_1G', 'CITRIX - Physical Load Balancer - 1 Gpbs'),
(603, 'CNPLBNCI1G000000', 3, 'network', 'lb', 'Load Balancer', 'plb_citrix_1G', 'CITRIX - Physical Load Balancer - 1 Gpbs'),
(604, 'CNPLNKAY5M000000', 1, 'network', 'lb', 'Load Balancer', 'plb_array_512', 'ARRAY - Physical Load Balancer   - 512 Mbps'),
(605, 'CNPLMUAY5M000000', 2, 'network', 'lb', 'Load Balancer', 'plb_array_512', 'ARRAY - Physical Load Balancer   - 512 Mbps'),
(606, 'CNPLBNAY5M000000', 3, 'network', 'lb', 'Load Balancer', 'plb_array_512', 'ARRAY - Physical Load Balancer   - 512 Mbps'),
(607, 'CNPLNKAY1G000000', 1, 'network', 'lb', 'Load Balancer', 'plb_array_1G', 'ARRAY - Physical Load Balancer   - 1 Gpbs'),
(608, 'CNPLMUAY1G000000', 2, 'network', 'lb', 'Load Balancer', 'plb_array_1G', 'ARRAY - Physical Load Balancer   - 1 Gpbs'),
(609, 'CNPLBNAY1G000000', 3, 'network', 'lb', 'Load Balancer', 'plb_array_1G', 'ARRAY - Physical Load Balancer   - 1 Gpbs'),
(610, 'CNIPNKPPI4000000', 1, 'network', 'ip', 'IP Address', 'ipv4', 'IPv4- Public IP  '),
(611, 'CNIPMUPPI4000000', 2, 'network', 'ip', 'IP Address', 'ipv4', 'IPv4- Public IP  '),
(612, 'CNIPBNPPI4000000', 3, 'network', 'ip', 'IP Address', 'ipv4', 'IPv4- Public IP  '),
(613, 'CNIPNKPPI6000000', 1, 'network', 'ip', 'IP Address', 'ipv6', 'IPv6 - Public IP  '),
(614, 'CNIPMUPPI6000000', 2, 'network', 'ip', 'IP Address', 'ipv6', 'IPv6 - Public IP  '),
(615, 'CNIPBNPPI6000000', 3, 'network', 'ip', 'IP Address', 'ipv6', 'IPv6 - Public IP  '),
(616, 'CCSTNKBT15000000', 0, 'storage', 'block_storage', 'Block Storage 15 IOPS per GB ', 'block_15', 'Block Storage 15 IOPS per GB '),
(617, 'CCSTNKBTP2000000', 0, 'storage', 'block_storage', 'Block Storage 20 IOPS per GB ', 'block_20', 'Block Storage 20 IOPS per GB '),
(618, 'CCSTNKBT25000000', 0, 'storage', 'block_storage', 'Block Storage 25 IOPS per GB ', 'block_25', 'Block Storage 25 IOPS per GB '),
(619, 'CCSTNKBTP3000000', 0, 'storage', 'block_storage', 'Block Storage 30 IOPS per GB ', 'block_30', 'Block Storage 30 IOPS per GB '),
(620, 'CCSTNKBTP4000000', 0, 'storage', 'block_storage', 'Block Storage 40 IOPS per GB ', 'block_40', 'Block Storage 40 IOPS per GB '),
(621, 'CCSTNKBTP5000000', 0, 'storage', 'block_storage', 'Block Storage 50 IOPS per GB ', 'block_50', 'Block Storage 50 IOPS per GB '),
(622, 'CCSTNKBTH1000000', 0, 'storage', 'block_storage', 'Block Storage 100 IOPS per GB ', 'block_100', 'Block Storage 100 IOPS per GB ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quot_type`
--

CREATE TABLE `tbl_quot_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `template_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_quot_type`
--

INSERT INTO `tbl_quot_type` (`id`, `template_name`, `created_date`, `is_active`) VALUES
(1, 'DC_DR', '2023-10-17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rate_card`
--

CREATE TABLE `tbl_rate_card` (
  `id` int(20) NOT NULL,
  `rate_card_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `is_active` enum('True','False') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_rate_card`
--

INSERT INTO `tbl_rate_card` (`id`, `rate_card_name`, `created_by`, `created_date`, `is_active`) VALUES
(1, 'General Price List', 3094, '2023-10-17', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rate_card_prices`
--

CREATE TABLE `tbl_rate_card_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rate_card_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `input_price` float NOT NULL,
  `selling_price` float NOT NULL,
  `discountable_price` float NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_rate_card_prices`
--

INSERT INTO `tbl_rate_card_prices` (`id`, `rate_card_id`, `prod_id`, `input_price`, `selling_price`, `discountable_price`, `date_created`, `is_active`) VALUES
(1, 1, 1, 1, 1, 0.4, '2023-09-20 14:03:28', 'true'),
(2, 1, 2, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(3, 1, 3, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(4, 1, 4, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(5, 1, 5, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(6, 1, 6, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(7, 1, 7, 7, 12, 2.4, '2023-09-20 14:03:28', 'true'),
(8, 1, 8, 7, 12, 2.4, '2023-09-20 14:03:28', 'true'),
(9, 1, 9, 7, 12, 2.4, '2023-09-20 14:03:28', 'true'),
(10, 1, 10, 2, 3, 0.6, '2023-09-20 14:03:28', 'true'),
(11, 1, 11, 2, 3, 0.6, '2023-09-20 14:03:28', 'true'),
(12, 1, 12, 2, 3, 0.6, '2023-09-20 14:03:28', 'true'),
(13, 1, 13, 2, 4, 0.8, '2023-09-20 14:03:28', 'true'),
(14, 1, 14, 2, 4, 0.8, '2023-09-20 14:03:28', 'true'),
(15, 1, 15, 2, 4, 0.8, '2023-09-20 14:03:28', 'true'),
(16, 1, 16, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(17, 1, 17, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(18, 1, 18, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(19, 1, 19, 6, 10, 2, '2023-09-20 14:03:28', 'true'),
(20, 1, 20, 6, 10, 2, '2023-09-20 14:03:28', 'true'),
(21, 1, 21, 6, 10, 2, '2023-09-20 14:03:28', 'true'),
(22, 1, 22, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(23, 1, 23, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(24, 1, 24, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(25, 1, 25, 7, 12, 2.4, '2023-09-20 14:03:28', 'true'),
(26, 1, 26, 7, 12, 2.4, '2023-09-20 14:03:28', 'true'),
(27, 1, 27, 7, 12, 2.4, '2023-09-20 14:03:28', 'true'),
(28, 1, 28, 2, 2.02, 0.6, '2023-09-20 14:03:28', 'true'),
(29, 1, 29, 2, 2.02, 0.6, '2023-09-20 14:03:28', 'true'),
(30, 1, 30, 2, 2.02, 0.6, '2023-09-20 14:03:28', 'true'),
(31, 1, 31, 2, 4, 0.8, '2023-09-20 14:03:28', 'true'),
(32, 1, 32, 2, 4, 0.8, '2023-09-20 14:03:28', 'true'),
(33, 1, 33, 2, 4, 0.8, '2023-09-20 14:03:28', 'true'),
(34, 1, 34, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(35, 1, 35, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(36, 1, 36, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(37, 1, 37, 6, 10, 2, '2023-09-20 14:03:28', 'true'),
(38, 1, 38, 6, 10, 2, '2023-09-20 14:03:28', 'true'),
(39, 1, 39, 6, 10, 2, '2023-09-20 14:03:28', 'true'),
(40, 1, 40, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(41, 1, 41, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(42, 1, 42, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(43, 1, 43, 7, 12, 2.4, '2023-09-20 14:03:28', 'true'),
(44, 1, 44, 7, 12, 2.4, '2023-09-20 14:03:28', 'true'),
(45, 1, 45, 7, 12, 2.4, '2023-09-20 14:03:28', 'true'),
(46, 1, 46, 2, 3, 0.6, '2023-09-20 14:03:28', 'true'),
(47, 1, 47, 2, 3, 0.6, '2023-09-20 14:03:28', 'true'),
(48, 1, 48, 2, 3, 0.6, '2023-09-20 14:03:28', 'true'),
(49, 1, 49, 2, 4, 0.8, '2023-09-20 14:03:28', 'true'),
(50, 1, 50, 2, 4, 0.8, '2023-09-20 14:03:28', 'true'),
(51, 1, 51, 2, 4, 0.8, '2023-09-20 14:03:28', 'true'),
(52, 1, 52, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(53, 1, 53, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(54, 1, 54, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(55, 1, 55, 6, 10, 2, '2023-09-20 14:03:28', 'true'),
(56, 1, 56, 6, 10, 2, '2023-09-20 14:03:28', 'true'),
(57, 1, 57, 6, 10, 2, '2023-09-20 14:03:28', 'true'),
(58, 1, 58, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(59, 1, 59, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(60, 1, 60, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(61, 1, 61, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(62, 1, 62, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(63, 1, 63, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(64, 1, 64, 10500, 17500, 3500, '2023-09-20 14:03:28', 'true'),
(65, 1, 65, 9000, 15000, 3000, '2023-09-20 14:03:28', 'true'),
(66, 1, 66, 12000, 20000, 4000, '2023-09-20 14:03:28', 'true'),
(67, 1, 67, 1349, 2249, 449.8, '2023-09-20 14:03:28', 'true'),
(68, 1, 68, 1349, 2249, 449.8, '2023-09-20 14:03:28', 'true'),
(69, 1, 69, 1349, 2249, 449.8, '2023-09-20 14:03:28', 'true'),
(70, 1, 70, 1200, 2000, 400, '2023-09-20 14:03:28', 'true'),
(71, 1, 71, 1200, 2000, 400, '2023-09-20 14:03:28', 'true'),
(72, 1, 72, 1200, 2000, 400, '2023-09-20 14:03:28', 'true'),
(73, 1, 73, 1200, 2000, 400, '2023-09-20 14:03:28', 'true'),
(74, 1, 74, 1200, 2000, 400, '2023-09-20 14:03:28', 'true'),
(75, 1, 75, 1200, 2000, 400, '2023-09-20 14:03:28', 'true'),
(76, 1, 76, 125, 208, 41.6, '2023-09-20 14:03:28', 'true'),
(77, 1, 77, 125, 208, 41.6, '2023-09-20 14:03:28', 'true'),
(78, 1, 78, 125, 208, 41.6, '2023-09-20 14:03:28', 'true'),
(79, 1, 79, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(80, 1, 80, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(81, 1, 81, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(82, 1, 82, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(83, 1, 83, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(84, 1, 84, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(85, 1, 85, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(86, 1, 86, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(87, 1, 87, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(88, 1, 88, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(89, 1, 89, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(90, 1, 90, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(91, 1, 91, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(92, 1, 92, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(93, 1, 93, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(94, 1, 94, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(95, 1, 95, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(96, 1, 96, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(97, 1, 97, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(98, 1, 98, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(99, 1, 99, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(100, 1, 100, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(101, 1, 101, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(102, 1, 102, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(103, 1, 103, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(104, 1, 104, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(105, 1, 105, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(106, 1, 106, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(107, 1, 107, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(108, 1, 108, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(109, 1, 109, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(110, 1, 110, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(111, 1, 111, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(112, 1, 112, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(113, 1, 113, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(114, 1, 114, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(115, 1, 115, 1499, 2499, 499.8, '2023-09-20 14:03:28', 'true'),
(116, 1, 116, 1499, 2499, 499.8, '2023-09-20 14:03:28', 'true'),
(117, 1, 117, 1499, 2499, 499.8, '2023-09-20 14:03:28', 'true'),
(118, 1, 118, 600, 1000, 200, '2023-09-20 14:03:28', 'true'),
(119, 1, 119, 600, 1000, 200, '2023-09-20 14:03:28', 'true'),
(120, 1, 120, 600, 1000, 200, '2023-09-20 14:03:28', 'true'),
(121, 1, 121, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(122, 1, 122, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(123, 1, 123, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(124, 1, 124, 449, 749, 149.8, '2023-09-20 14:03:28', 'true'),
(125, 1, 125, 449, 749, 149.8, '2023-09-20 14:03:28', 'true'),
(126, 1, 126, 449, 749, 149.8, '2023-09-20 14:03:28', 'true'),
(127, 1, 127, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(128, 1, 128, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(129, 1, 129, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(130, 1, 130, 480, 800, 160, '2023-09-20 14:03:28', 'true'),
(131, 1, 131, 480, 800, 160, '2023-09-20 14:03:28', 'true'),
(132, 1, 132, 480, 800, 160, '2023-09-20 14:03:28', 'true'),
(133, 1, 133, 125, 208, 41.6, '2023-09-20 14:03:28', 'true'),
(134, 1, 134, 125, 208, 41.6, '2023-09-20 14:03:28', 'true'),
(135, 1, 135, 125, 208, 41.6, '2023-09-20 14:03:28', 'true'),
(136, 1, 136, 1200, 2000, 400, '2023-09-20 14:03:28', 'true'),
(137, 1, 137, 1200, 2000, 400, '2023-09-20 14:03:28', 'true'),
(138, 1, 138, 1200, 2000, 400, '2023-09-20 14:03:28', 'true'),
(139, 1, 139, 650, 1083, 216.6, '2023-09-20 14:03:28', 'true'),
(140, 1, 140, 650, 1083, 216.6, '2023-09-20 14:03:28', 'true'),
(141, 1, 141, 650, 1083, 216.6, '2023-09-20 14:03:28', 'true'),
(142, 1, 142, 1000, 1666, 333.2, '2023-09-20 14:03:28', 'true'),
(143, 1, 143, 1000, 1666, 333.2, '2023-09-20 14:03:28', 'true'),
(144, 1, 144, 1000, 1666, 333.2, '2023-09-20 14:03:28', 'true'),
(145, 1, 145, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(146, 1, 146, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(147, 1, 147, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(148, 1, 148, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(149, 1, 149, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(150, 1, 150, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(151, 1, 151, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(152, 1, 152, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(153, 1, 153, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(154, 1, 154, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(155, 1, 155, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(156, 1, 156, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(157, 1, 157, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(158, 1, 158, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(159, 1, 159, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(160, 1, 160, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(161, 1, 161, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(162, 1, 162, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(163, 1, 163, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(164, 1, 164, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(165, 1, 165, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(166, 1, 166, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(167, 1, 167, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(168, 1, 168, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(169, 1, 169, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(170, 1, 170, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(171, 1, 171, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(172, 1, 172, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(173, 1, 173, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(174, 1, 174, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(175, 1, 175, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(176, 1, 176, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(177, 1, 177, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(178, 1, 178, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(179, 1, 179, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(180, 1, 180, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(181, 1, 181, 180, 300, 60, '2023-09-20 14:03:28', 'true'),
(182, 1, 182, 180, 300, 60, '2023-09-20 14:03:28', 'true'),
(183, 1, 183, 180, 300, 60, '2023-09-20 14:03:28', 'true'),
(184, 1, 184, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(185, 1, 185, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(186, 1, 186, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(187, 1, 187, 2, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(188, 1, 188, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(189, 1, 189, 1, 2, 0.4, '2023-09-20 14:03:28', 'true'),
(190, 1, 190, 7, 12, 2.4, '2023-09-20 14:03:28', 'true'),
(191, 1, 191, 7, 12, 2.4, '2023-09-20 14:03:28', 'true'),
(192, 1, 192, 7, 12, 2.4, '2023-09-20 14:03:28', 'true'),
(193, 1, 193, 2, 3, 0.6, '2023-09-20 14:03:28', 'true'),
(194, 1, 194, 2, 3, 0.6, '2023-09-20 14:03:28', 'true'),
(195, 1, 195, 2, 3, 0.6, '2023-09-20 14:03:28', 'true'),
(196, 1, 196, 2, 4, 0.8, '2023-09-20 14:03:28', 'true'),
(197, 1, 197, 2, 4, 0.8, '2023-09-20 14:03:28', 'true'),
(198, 1, 198, 2, 4, 0.8, '2023-09-20 14:03:28', 'true'),
(199, 1, 199, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(200, 1, 200, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(201, 1, 201, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(202, 1, 202, 6, 10, 2, '2023-09-20 14:03:28', 'true'),
(203, 1, 203, 6, 10, 2, '2023-09-20 14:03:28', 'true'),
(204, 1, 204, 6, 10, 2, '2023-09-20 14:03:28', 'true'),
(205, 1, 205, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(206, 1, 206, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(207, 1, 207, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(208, 1, 208, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(209, 1, 209, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(210, 1, 210, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(211, 1, 211, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(212, 1, 212, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(213, 1, 213, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(214, 1, 214, 3300, 5500, 1100, '2023-09-20 14:03:28', 'true'),
(215, 1, 215, 3300, 5500, 1100, '2023-09-20 14:03:28', 'true'),
(216, 1, 216, 3300, 5500, 1100, '2023-09-20 14:03:28', 'true'),
(217, 1, 217, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(218, 1, 218, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(219, 1, 219, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(220, 1, 220, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(221, 1, 221, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(222, 1, 222, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(223, 1, 223, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(224, 1, 224, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(225, 1, 225, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(226, 1, 226, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(227, 1, 227, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(228, 1, 228, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(229, 1, 229, 45, 75, 15, '2023-09-20 14:03:28', 'true'),
(230, 1, 230, 45, 75, 15, '2023-09-20 14:03:28', 'true'),
(231, 1, 231, 45, 75, 15, '2023-09-20 14:03:28', 'true'),
(232, 1, 232, 57, 95, 19, '2023-09-20 14:03:28', 'true'),
(233, 1, 233, 57, 95, 19, '2023-09-20 14:03:28', 'true'),
(234, 1, 234, 57, 95, 19, '2023-09-20 14:03:28', 'true'),
(235, 1, 235, 45, 75, 15, '2023-09-20 14:03:28', 'true'),
(236, 1, 236, 45, 75, 15, '2023-09-20 14:03:28', 'true'),
(237, 1, 237, 45, 75, 15, '2023-09-20 14:03:28', 'true'),
(238, 1, 238, 57, 75, 19, '2023-09-20 14:03:28', 'true'),
(239, 1, 239, 57, 95, 19, '2023-09-20 14:03:28', 'true'),
(240, 1, 240, 57, 95, 19, '2023-09-20 14:03:28', 'true'),
(241, 1, 241, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(242, 1, 242, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(243, 1, 243, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(244, 1, 244, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(245, 1, 245, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(246, 1, 246, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(247, 1, 247, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(248, 1, 248, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(249, 1, 249, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(250, 1, 250, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(251, 1, 251, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(252, 1, 252, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(253, 1, 253, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(254, 1, 254, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(255, 1, 255, 4, 6, 1.2, '2023-09-20 14:03:28', 'true'),
(256, 1, 256, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(257, 1, 257, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(258, 1, 258, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(259, 1, 259, 8750, 14583, 2916.6, '2023-09-20 14:03:28', 'true'),
(260, 1, 260, 8750, 14583, 2916.6, '2023-09-20 14:03:28', 'true'),
(261, 1, 261, 8750, 14583, 2916.6, '2023-09-20 14:03:28', 'true'),
(262, 1, 262, 8750, 14583, 2916.6, '2023-09-20 14:03:28', 'true'),
(263, 1, 263, 8750, 14583, 2916.6, '2023-09-20 14:03:28', 'true'),
(264, 1, 264, 8750, 14583, 2916.6, '2023-09-20 14:03:28', 'true'),
(265, 1, 265, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(266, 1, 266, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(267, 1, 267, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(268, 1, 268, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(269, 1, 269, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(270, 1, 270, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(271, 1, 271, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(272, 1, 272, 3600, 6000, 1200, '2023-09-20 14:03:28', 'true'),
(273, 1, 273, 3600, 6000, 1200, '2023-09-20 14:03:28', 'true'),
(274, 1, 274, 3600, 6000, 1200, '2023-09-20 14:03:28', 'true'),
(275, 1, 275, 3600, 6000, 1200, '2023-09-20 14:03:28', 'true'),
(276, 1, 276, 3600, 6000, 1200, '2023-09-20 14:03:28', 'true'),
(277, 1, 277, 3600, 6000, 1200, '2023-09-20 14:03:28', 'true'),
(278, 1, 278, 3600, 6000, 1200, '2023-09-20 14:03:28', 'true'),
(279, 1, 279, 3600, 6000, 1200, '2023-09-20 14:03:28', 'true'),
(280, 1, 280, 3600, 6000, 1200, '2023-09-20 14:03:28', 'true'),
(281, 1, 281, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(282, 1, 282, 0, 500, 0, '2023-09-20 14:03:28', 'true'),
(283, 1, 283, 0, 500, 0, '2023-09-20 14:03:28', 'true'),
(284, 1, 284, 0, 500, 0, '2023-09-20 14:03:28', 'true'),
(285, 1, 285, 1350, 2250, 450, '2023-09-20 14:03:28', 'true'),
(286, 1, 286, 1350, 2250, 450, '2023-09-20 14:03:28', 'true'),
(287, 1, 287, 1350, 2250, 450, '2023-09-20 14:03:28', 'true'),
(288, 1, 288, 3000, 5000, 1000, '2023-09-20 14:03:28', 'true'),
(289, 1, 289, 3000, 5000, 1000, '2023-09-20 14:03:28', 'true'),
(290, 1, 290, 3000, 5000, 1000, '2023-09-20 14:03:28', 'true'),
(291, 1, 291, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(292, 1, 292, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(293, 1, 293, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(294, 1, 294, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(295, 1, 295, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(296, 1, 296, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(297, 1, 297, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(298, 1, 298, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(299, 1, 299, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(300, 1, 300, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(301, 1, 301, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(302, 1, 302, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(303, 1, 303, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(304, 1, 304, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(305, 1, 305, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(306, 1, 306, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(307, 1, 307, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(308, 1, 308, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(309, 1, 309, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(310, 1, 310, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(311, 1, 311, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(312, 1, 312, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(313, 1, 313, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(314, 1, 314, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(315, 1, 315, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(316, 1, 316, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(317, 1, 317, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(318, 1, 318, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(319, 1, 319, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(320, 1, 320, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(321, 1, 321, 6300, 10500, 2100, '2023-09-20 14:03:28', 'true'),
(322, 1, 322, 6300, 10500, 2100, '2023-09-20 14:03:28', 'true'),
(323, 1, 323, 6300, 10500, 2100, '2023-09-20 14:03:28', 'true'),
(324, 1, 324, 6300, 10500, 2100, '2023-09-20 14:03:28', 'true'),
(325, 1, 325, 6300, 10500, 2100, '2023-09-20 14:03:28', 'true'),
(326, 1, 326, 6300, 10500, 2100, '2023-09-20 14:03:28', 'true'),
(327, 1, 327, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(328, 1, 328, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(329, 1, 329, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(330, 1, 330, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(331, 1, 331, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(332, 1, 332, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(333, 1, 333, 1500, 2500, 500, '2023-09-20 14:03:28', 'true'),
(334, 1, 334, 1500, 2500, 500, '2023-09-20 14:03:28', 'true'),
(335, 1, 335, 1500, 2500, 500, '2023-09-20 14:03:28', 'true'),
(336, 1, 336, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(337, 1, 337, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(338, 1, 338, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(339, 1, 339, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(340, 1, 340, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(341, 1, 341, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(342, 1, 342, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(343, 1, 343, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(344, 1, 344, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(345, 1, 345, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(346, 1, 346, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(347, 1, 347, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(348, 1, 348, 1260, 2100, 420, '2023-09-20 14:03:28', 'true'),
(349, 1, 349, 1260, 2100, 420, '2023-09-20 14:03:28', 'true'),
(350, 1, 350, 1260, 2100, 420, '2023-09-20 14:03:28', 'true'),
(351, 1, 351, 1500, 2500, 500, '2023-09-20 14:03:28', 'true'),
(352, 1, 352, 1500, 2500, 500, '2023-09-20 14:03:28', 'true'),
(353, 1, 353, 1500, 2500, 500, '2023-09-20 14:03:28', 'true'),
(354, 1, 354, 5100, 8500, 1700, '2023-09-20 14:03:28', 'true'),
(355, 1, 355, 5100, 8500, 1700, '2023-09-20 14:03:28', 'true'),
(356, 1, 356, 5100, 8500, 1700, '2023-09-20 14:03:28', 'true'),
(357, 1, 357, 5100, 8500, 1700, '2023-09-20 14:03:28', 'true'),
(358, 1, 358, 5100, 8500, 1700, '2023-09-20 14:03:28', 'true'),
(359, 1, 359, 5100, 8500, 1700, '2023-09-20 14:03:28', 'true'),
(360, 1, 360, 5100, 8500, 1700, '2023-09-20 14:03:28', 'true'),
(361, 1, 361, 5100, 8500, 1700, '2023-09-20 14:03:28', 'true'),
(362, 1, 362, 5100, 8500, 1700, '2023-09-20 14:03:28', 'true'),
(363, 1, 363, 5100, 8500, 1700, '2023-09-20 14:03:28', 'true'),
(364, 1, 364, 5100, 8500, 1700, '2023-09-20 14:03:28', 'true'),
(365, 1, 365, 5100, 8500, 1700, '2023-09-20 14:03:28', 'true'),
(366, 1, 366, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(367, 1, 367, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(368, 1, 368, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(369, 1, 369, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(370, 1, 370, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(371, 1, 371, 9900, 16500, 3300, '2023-09-20 14:03:28', 'true'),
(372, 1, 372, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(373, 1, 373, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(374, 1, 374, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(375, 1, 375, 1260, 2100, 420, '2023-09-20 14:03:28', 'true'),
(376, 1, 376, 1260, 2100, 420, '2023-09-20 14:03:28', 'true'),
(377, 1, 377, 1260, 2100, 420, '2023-09-20 14:03:28', 'true'),
(378, 1, 378, 1260, 2100, 420, '2023-09-20 14:03:28', 'true'),
(379, 1, 379, 92580, 154300, 30860, '2023-09-20 14:03:28', 'true'),
(380, 1, 380, 92580, 154300, 30860, '2023-09-20 14:03:28', 'true'),
(381, 1, 381, 92580, 154300, 30860, '2023-09-20 14:03:28', 'true'),
(382, 1, 382, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(383, 1, 383, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(384, 1, 384, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(385, 1, 385, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(386, 1, 386, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(387, 1, 387, 4500, 7500, 1500, '2023-09-20 14:03:28', 'true'),
(388, 1, 388, 6000, 10000, 2000, '2023-09-20 14:03:28', 'true'),
(389, 1, 389, 6000, 10000, 2000, '2023-09-20 14:03:28', 'true'),
(390, 1, 390, 6000, 10000, 2000, '2023-09-20 14:03:28', 'true'),
(391, 1, 391, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(392, 1, 392, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(393, 1, 393, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(394, 1, 394, 6972, 11620, 2324, '2023-09-20 14:03:28', 'true'),
(395, 1, 395, 6972, 11620, 2324, '2023-09-20 14:03:28', 'true'),
(396, 1, 396, 6972, 11620, 2324, '2023-09-20 14:03:28', 'true'),
(397, 1, 397, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(398, 1, 398, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(399, 1, 399, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(400, 1, 400, 1200, 2000, 400, '2023-09-20 14:03:28', 'true'),
(401, 1, 401, 1200, 2000, 400, '2023-09-20 14:03:28', 'true'),
(402, 1, 402, 1200, 2000, 400, '2023-09-20 14:03:28', 'true'),
(403, 1, 403, 54, 90, 18, '2023-09-20 14:03:28', 'true'),
(404, 1, 404, 54, 90, 18, '2023-09-20 14:03:28', 'true'),
(405, 1, 405, 54, 90, 18, '2023-09-20 14:03:28', 'true'),
(406, 1, 406, 180, 300, 60, '2023-09-20 14:03:28', 'true'),
(407, 1, 407, 180, 300, 60, '2023-09-20 14:03:28', 'true'),
(408, 1, 408, 180, 300, 60, '2023-09-20 14:03:28', 'true'),
(409, 1, 409, 180, 300, 60, '2023-09-20 14:03:28', 'true'),
(410, 1, 410, 180, 300, 60, '2023-09-20 14:03:28', 'true'),
(411, 1, 411, 180, 300, 60, '2023-09-20 14:03:28', 'true'),
(412, 1, 412, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(413, 1, 413, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(414, 1, 414, 300, 500, 100, '2023-09-20 14:03:28', 'true'),
(415, 1, 415, 600, 1000, 200, '2023-09-20 14:03:28', 'true'),
(416, 1, 416, 600, 1000, 200, '2023-09-20 14:03:28', 'true'),
(417, 1, 417, 600, 1000, 200, '2023-09-20 14:03:28', 'true'),
(418, 1, 418, 768, 1280, 256, '2023-09-20 14:03:28', 'true'),
(419, 1, 419, 768, 1280, 256, '2023-09-20 14:03:28', 'true'),
(420, 1, 420, 768, 1280, 256, '2023-09-20 14:03:28', 'true'),
(421, 1, 421, 28800, 48000, 9600, '2023-09-20 14:03:28', 'true'),
(422, 1, 422, 28800, 48000, 9600, '2023-09-20 14:03:28', 'true'),
(423, 1, 423, 28800, 48000, 9600, '2023-09-20 14:03:28', 'true'),
(424, 1, 424, 3600, 6000, 1200, '2023-09-20 14:03:28', 'true'),
(425, 1, 425, 3600, 6000, 1200, '2023-09-20 14:03:28', 'true'),
(426, 1, 426, 3600, 6000, 1200, '2023-09-20 14:03:28', 'true'),
(427, 1, 427, 360, 600, 120, '2023-09-20 14:03:28', 'true'),
(428, 1, 428, 360, 600, 120, '2023-09-20 14:03:28', 'true'),
(429, 1, 429, 360, 600, 120, '2023-09-20 14:03:28', 'true'),
(430, 1, 430, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(431, 1, 431, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(432, 1, 432, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(433, 1, 433, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(434, 1, 434, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(435, 1, 435, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(436, 1, 436, 21835, 36391, 7278.2, '2023-09-20 14:03:28', 'true'),
(437, 1, 437, 21835, 36391, 7278.2, '2023-09-20 14:03:28', 'true'),
(438, 1, 438, 21835, 36391, 7278.2, '2023-09-20 14:03:28', 'true'),
(439, 1, 439, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(440, 1, 440, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(441, 1, 441, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(442, 1, 442, 2839, 4731, 946.2, '2023-09-20 14:03:28', 'true'),
(443, 1, 443, 2839, 4731, 946.2, '2023-09-20 14:03:28', 'true'),
(444, 1, 444, 2839, 4731, 946.2, '2023-09-20 14:03:28', 'true'),
(445, 1, 445, 26976, 44959, 8991.8, '2023-09-20 14:03:28', 'true'),
(446, 1, 446, 26976, 44959, 8991.8, '2023-09-20 14:03:28', 'true'),
(447, 1, 447, 26976, 44959, 8991.8, '2023-09-20 14:03:28', 'true'),
(448, 1, 448, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(449, 1, 449, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(450, 1, 450, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(451, 1, 451, 47310, 78850, 15770, '2023-09-20 14:03:28', 'true'),
(452, 1, 452, 47310, 78850, 15770, '2023-09-20 14:03:28', 'true'),
(453, 1, 453, 47310, 78850, 15770, '2023-09-20 14:03:28', 'true'),
(454, 1, 454, 22984, 38306, 7661.2, '2023-09-20 14:03:28', 'true'),
(455, 1, 455, 22984, 38306, 7661.2, '2023-09-20 14:03:28', 'true'),
(456, 1, 456, 22984, 38306, 7661.2, '2023-09-20 14:03:28', 'true'),
(457, 1, 457, 108571, 180952, 36190.4, '2023-09-20 14:03:28', 'true'),
(458, 1, 458, 108571, 180952, 36190.4, '2023-09-20 14:03:28', 'true'),
(459, 1, 459, 108571, 180952, 36190.4, '2023-09-20 14:03:28', 'true'),
(460, 1, 460, 37350, 62250, 12450, '2023-09-20 14:03:28', 'true'),
(461, 1, 461, 37350, 62250, 12450, '2023-09-20 14:03:28', 'true'),
(462, 1, 462, 37350, 62250, 12450, '2023-09-20 14:03:28', 'true'),
(463, 1, 463, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(464, 1, 464, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(465, 1, 465, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(466, 1, 466, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(467, 1, 467, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(468, 1, 468, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(469, 1, 469, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(470, 1, 470, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(471, 1, 471, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(472, 1, 472, 6225, 10375, 2075, '2023-09-20 14:03:28', 'true'),
(473, 1, 473, 6225, 10375, 2075, '2023-09-20 14:03:28', 'true'),
(474, 1, 474, 6225, 10375, 2075, '2023-09-20 14:03:28', 'true'),
(475, 1, 475, 6358, 10596, 2119.2, '2023-09-20 14:03:28', 'true'),
(476, 1, 476, 6358, 10596, 2119.2, '2023-09-20 14:03:28', 'true'),
(477, 1, 477, 6358, 10596, 2119.2, '2023-09-20 14:03:28', 'true'),
(478, 1, 478, 312, 520, 104, '2023-09-20 14:03:28', 'true'),
(479, 1, 479, 312, 520, 104, '2023-09-20 14:03:28', 'true'),
(480, 1, 480, 312, 520, 104, '2023-09-20 14:03:28', 'true'),
(481, 1, 481, 2106, 3510, 702, '2023-09-20 14:03:28', 'true'),
(482, 1, 482, 2106, 3510, 702, '2023-09-20 14:03:28', 'true'),
(483, 1, 483, 2106, 3510, 702, '2023-09-20 14:03:28', 'true'),
(484, 1, 484, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(485, 1, 485, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(486, 1, 486, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(487, 1, 487, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(488, 1, 488, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(489, 1, 489, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(490, 1, 490, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(491, 1, 491, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(492, 1, 492, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(493, 1, 493, 10140, 16900, 3380, '2023-09-20 14:03:28', 'true'),
(494, 1, 494, 10140, 16900, 3380, '2023-09-20 14:03:28', 'true'),
(495, 1, 495, 10140, 16900, 3380, '2023-09-20 14:03:28', 'true'),
(496, 1, 496, 37440, 62400, 12480, '2023-09-20 14:03:28', 'true'),
(497, 1, 497, 37440, 62400, 12480, '2023-09-20 14:03:28', 'true'),
(498, 1, 498, 37440, 62400, 12480, '2023-09-20 14:03:28', 'true'),
(499, 1, 499, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(500, 1, 500, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(501, 1, 501, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(502, 1, 502, 624, 1040, 208, '2023-09-20 14:03:28', 'true'),
(503, 1, 503, 624, 1040, 208, '2023-09-20 14:03:28', 'true'),
(504, 1, 504, 624, 1040, 208, '2023-09-20 14:03:28', 'true'),
(505, 1, 505, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(506, 1, 506, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(507, 1, 507, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(508, 1, 508, 8744, 14574, 2914.8, '2023-09-20 14:03:28', 'true'),
(509, 1, 509, 8744, 14574, 2914.8, '2023-09-20 14:03:28', 'true'),
(510, 1, 510, 8744, 14574, 2914.8, '2023-09-20 14:03:28', 'true'),
(511, 1, 511, 21869, 36449, 7289.8, '2023-09-20 14:03:28', 'true'),
(512, 1, 512, 21869, 36449, 7289.8, '2023-09-20 14:03:28', 'true'),
(513, 1, 513, 21869, 36449, 7289.8, '2023-09-20 14:03:28', 'true'),
(514, 1, 514, 2700, 4500, 900, '2023-09-20 14:03:28', 'true'),
(515, 1, 515, 2700, 4500, 900, '2023-09-20 14:03:28', 'true'),
(516, 1, 516, 2700, 4500, 900, '2023-09-20 14:03:28', 'true'),
(517, 1, 517, 1383, 2305, 461, '2023-09-20 14:03:28', 'true'),
(518, 1, 518, 1383, 2305, 461, '2023-09-20 14:03:28', 'true'),
(519, 1, 519, 1383, 2305, 461, '2023-09-20 14:03:28', 'true'),
(520, 1, 520, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(521, 1, 521, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(522, 1, 522, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(523, 1, 523, 540, 900, 180, '2023-09-20 14:03:28', 'true'),
(524, 1, 524, 540, 900, 180, '2023-09-20 14:03:28', 'true'),
(525, 1, 525, 540, 900, 180, '2023-09-20 14:03:28', 'true'),
(526, 1, 526, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(527, 1, 527, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(528, 1, 528, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(529, 1, 529, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(530, 1, 530, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(531, 1, 531, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(532, 1, 532, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(533, 1, 533, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(534, 1, 534, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(535, 1, 535, 540, 900, 180, '2023-09-20 14:03:28', 'true'),
(536, 1, 536, 540, 900, 180, '2023-09-20 14:03:28', 'true'),
(537, 1, 537, 540, 900, 180, '2023-09-20 14:03:28', 'true'),
(538, 1, 538, 540, 900, 180, '2023-09-20 14:03:28', 'true'),
(539, 1, 539, 540, 900, 180, '2023-09-20 14:03:28', 'true'),
(540, 1, 540, 540, 900, 180, '2023-09-20 14:03:28', 'true'),
(541, 1, 541, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(542, 1, 542, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(543, 1, 543, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(544, 1, 544, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(545, 1, 545, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(546, 1, 546, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(547, 1, 547, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(548, 1, 548, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(549, 1, 549, 720, 1200, 240, '2023-09-20 14:03:28', 'true'),
(550, 1, 550, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(551, 1, 551, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(552, 1, 552, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(553, 1, 553, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(554, 1, 554, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(555, 1, 555, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(556, 1, 556, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(557, 1, 557, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(558, 1, 558, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(559, 1, 559, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(560, 1, 560, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(561, 1, 561, 900, 1500, 300, '2023-09-20 14:03:28', 'true'),
(562, 1, 562, 2880, 4800, 960, '2023-09-20 14:03:28', 'true'),
(563, 1, 563, 2880, 4800, 960, '2023-09-20 14:03:28', 'true'),
(564, 1, 564, 2880, 4800, 960, '2023-09-20 14:03:28', 'true'),
(565, 1, 565, 2880, 4800, 960, '2023-09-20 14:03:28', 'true'),
(566, 1, 566, 2880, 4800, 960, '2023-09-20 14:03:28', 'true'),
(567, 1, 567, 2880, 4800, 960, '2023-09-20 14:03:28', 'true'),
(568, 1, 568, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(569, 1, 569, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(570, 1, 570, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(571, 1, 571, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(572, 1, 572, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(573, 1, 573, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(574, 1, 574, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(575, 1, 575, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(576, 1, 576, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(577, 1, 577, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(578, 1, 578, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(579, 1, 579, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(580, 1, 580, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(581, 1, 581, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(582, 1, 582, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(583, 1, 583, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(584, 1, 584, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(585, 1, 585, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(586, 1, 586, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(587, 1, 587, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(588, 1, 588, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(589, 1, 589, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(590, 1, 590, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(591, 1, 591, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(592, 1, 592, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(593, 1, 593, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(594, 1, 594, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(595, 1, 595, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(596, 1, 596, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(597, 1, 597, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(598, 1, 598, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(599, 1, 599, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(600, 1, 600, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(601, 1, 601, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(602, 1, 602, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(603, 1, 603, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(604, 1, 604, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(605, 1, 605, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(606, 1, 606, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(607, 1, 607, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(608, 1, 608, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(609, 1, 609, 0, 0, 0, '2023-09-20 14:03:28', 'true'),
(610, 1, 610, 600, 1000, 200, '2023-09-20 14:03:28', 'true'),
(611, 1, 611, 600, 1000, 200, '2023-09-20 14:03:28', 'true'),
(612, 1, 612, 600, 1000, 200, '2023-09-20 14:03:28', 'true'),
(613, 1, 613, 600, 1000, 200, '2023-09-20 14:03:28', 'true'),
(614, 1, 614, 600, 1000, 200, '2023-09-20 14:03:28', 'true'),
(615, 1, 615, 600, 1000, 200, '2023-09-20 14:03:28', 'true'),
(616, 1, 622, 100, 95, 1.736, '2023-09-20 14:03:28', 'true'),
(617, 1, 621, 51, 45, 1.168, '2023-09-20 14:03:28', 'true'),
(618, 1, 620, 41, 35, 3.096, '2023-09-20 14:03:28', 'true'),
(619, 1, 619, 31, 25, 5.024, '2023-09-20 14:03:28', 'true'),
(620, 1, 618, 26, 20, 5.984, '2023-09-20 14:03:28', 'true'),
(621, 1, 617, 21, 15, 1.952, '2023-09-20 14:03:28', 'true'),
(622, 1, 616, 16, 10, 2.912, '2023-09-20 14:03:28', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_region`
--

CREATE TABLE `tbl_region` (
  `id` int(20) NOT NULL,
  `region_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbrivation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` date NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_region`
--

INSERT INTO `tbl_region` (`id`, `region_name`, `abbrivation`, `created_date`, `is_active`) VALUES
(0, 'All', 'ALL', '2023-10-19', 1),
(1, 'Nashik', 'NSK', '2023-10-19', 1),
(2, 'Mumbai', 'MUM', '2023-10-19', 1),
(3, 'Bangalore', 'BAN', '2023-10-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saved_estimates`
--

CREATE TABLE `tbl_saved_estimates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `pot_id` int(11) NOT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  `last_changed_by` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  `date_updated` int(11) NOT NULL,
  `contract_period` int(11) NOT NULL,
  `total_upfront` int(11) NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prices` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ui_options`
--

CREATE TABLE `tbl_ui_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sec_category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_ui_options`
--

INSERT INTO `tbl_ui_options` (`id`, `sec_category_name`, `input_num`, `created_date`) VALUES
(1, 'archival_storage', 'True', '2023-10-24'),
(2, 'object_storage', 'True', '2023-10-24'),
(3, 'block_storage', 'True', '2023-10-24'),
(4, 'file_storage', 'True', '2023-10-24'),
(5, 'backup_soft', 'True', '2023-10-24'),
(6, 'offline_backup', 'True', '2023-10-24'),
(7, 'ssl_certificate', 'True', '2023-10-24'),
(8, 'firewall_mgmt', 'False', '0000-00-00'),
(9, 'utm', 'True', '2023-10-24'),
(10, 'vtm_scan', 'True', '2023-10-24'),
(11, 'storage_mgmt', 'True', '2023-10-24'),
(12, 'backup', 'True', '2023-10-24'),
(13, 'db_mgmt', 'False', '0000-00-00'),
(14, 'dr_mng', 'False', '0000-00-00'),
(15, 'vRAM', 'True', '2023-10-24'),
(16, 'vCPU', 'True', '2023-10-24'),
(17, 'siem', 'False', '0000-00-00'),
(18, 'vapt', 'False', '0000-00-00'),
(19, 'bandwidth', 'True', '2023-10-24'),
(20, 'ddos', 'True', '2023-10-24'),
(21, 'link', 'True', '2023-10-24'),
(22, 'soar', 'True', '2023-10-24'),
(23, 'drm', 'True', '2023-10-24'),
(24, 'waf', 'True', '2023-10-24'),
(25, 'ifw', 'True', '2023-10-24'),
(26, 'efw', 'True', '2023-10-24'),
(27, 'net', 'True', '2023-10-24'),
(28, 'waf_mgmt', 'True', '2023-10-24'),
(29, 'hsm', 'True', '2023-10-24'),
(30, 'dlp', 'True', '2023-10-24'),
(31, 'vpn', 'True', '2023-10-24'),
(32, 'pim', 'True', '2023-10-24'),
(33, 'emagic', 'False', '0000-00-00'),
(34, 'iam', 'True', '2023-10-24'),
(35, 'edr', 'True', '2023-10-24'),
(36, 'dam', 'True', '2023-10-24'),
(37, 'mfa', 'True', '2023-10-24'),
(38, 'db', 'False', '0000-00-00'),
(39, 'os', 'False', '0000-00-00'),
(40, 'lb_mgmt', 'False', '0000-00-00'),
(41, 'av', 'False', '0000-00-00'),
(42, 'os_mgmt', 'False', '0000-00-00'),
(43, 'lb', 'True', '2023-10-24'),
(44, 'ip', 'True', '2023-10-24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager_code` int(11) DEFAULT NULL,
  `user_role` int(11) DEFAULT NULL,
  `crm_user_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `email_verified_at`, `department`, `designation`, `manager_code`, `user_role`, `crm_user_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prathamesh', 'Chavan', 'prathamesh.chavan', 'Prathamesh.chavan@esds.co.in', '$2y$10$.yUpa1/XhNr/0AlUKGqVY.TSPZ7NC7XxxH6AIovhgF5pm6pmJ88KS', NULL, 'Pre-sales', 'Jr-solution Architecht', NULL, NULL, NULL, '1sJP8bzszvhrVwM3nnB2XtSjYZPSWRHWvTpumNYGKW1evZuoixyx5Xfhs57r', '2023-10-16 06:49:46', '2023-10-16 06:49:46');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- Indexes for table `tbl_product_list`
--
ALTER TABLE `tbl_product_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `prod_int` (`prod_int`),
  ADD KEY `sec_category` (`sec_category`),
  ADD KEY `fkc_region_id` (`region_id`);

--
-- Indexes for table `tbl_quot_type`
--
ALTER TABLE `tbl_quot_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rate_card`
--
ALTER TABLE `tbl_rate_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rate_card_prices`
--
ALTER TABLE `tbl_rate_card_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_fkc` (`prod_id`),
  ADD KEY `rate_card_fkc` (`rate_card_id`);

--
-- Indexes for table `tbl_region`
--
ALTER TABLE `tbl_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_saved_estimates`
--
ALTER TABLE `tbl_saved_estimates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ui_options`
--
ALTER TABLE `tbl_ui_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_quot_type`
--
ALTER TABLE `tbl_quot_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_rate_card`
--
ALTER TABLE `tbl_rate_card`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_rate_card_prices`
--
ALTER TABLE `tbl_rate_card_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=623;

--
-- AUTO_INCREMENT for table `tbl_region`
--
ALTER TABLE `tbl_region`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_saved_estimates`
--
ALTER TABLE `tbl_saved_estimates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_ui_options`
--
ALTER TABLE `tbl_ui_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_product_list`
--
ALTER TABLE `tbl_product_list`
  ADD CONSTRAINT `fkc_region_id` FOREIGN KEY (`region_id`) REFERENCES `tbl_region` (`id`);

--
-- Constraints for table `tbl_rate_card_prices`
--
ALTER TABLE `tbl_rate_card_prices`
  ADD CONSTRAINT `product_fkc` FOREIGN KEY (`prod_id`) REFERENCES `tbl_product_list` (`id`),
  ADD CONSTRAINT `rate_card_fkc` FOREIGN KEY (`rate_card_id`) REFERENCES `tbl_rate_card` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
