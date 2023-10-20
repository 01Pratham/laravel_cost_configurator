-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2023 at 03:25 PM
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
(10, '2023_10_19_054258_tbl_region', 6);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku_code` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` int(11) NOT NULL,
  `primary_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sec_category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_int` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product_list`
--

INSERT INTO `tbl_product_list` (`id`, `sku_code`, `region_id`, `primary_category`, `sec_category`, `prod_int`, `product_name`) VALUES
(1, 'CCSTNKASP3000000', 1, 'storage', 'archival_storage', 'arc_strg', 'Archive Storage  '),
(2, 'CCSTMUASP3000000', 2, 'storage', 'archival_storage', 'arc_strg', 'Archive Storage   '),
(3, 'CCSTBNASP3000000', 3, 'storage', 'archival_storage', 'arc_strg', 'Archive Storage  '),
(4, 'CCSTNKORP3000000', 1, 'storage', 'object_storage', 'obj_03', 'Object Storage 0.3 IOPS per GB  '),
(5, 'CCSTMUORP3000000', 2, 'storage', 'object_storage', 'obj_03', 'Object Storage 0.3 IOPS per GB  '),
(6, 'CCSTBNORP3000000', 3, 'storage', 'object_storage', 'obj_03', 'Object Storage 0.3 IOPS per GB  '),
(7, 'CCSTNKORP0000000', 1, 'storage', 'object_storage', 'obj_10', 'Object Storage 10 IOPS per GB  '),
(8, 'CCSTMUORP0000000', 2, 'storage', 'object_storage', 'obj_10', 'Object Storage 10 IOPS per GB  '),
(9, 'CCSTBNORP0000000', 3, 'storage', 'object_storage', 'obj_10', 'Object Storage 10 IOPS per GB  '),
(10, 'CCSTNKORP1000000', 1, 'storage', 'object_storage', 'obj_1', 'Object Storage 1 IOPS per GB  '),
(11, 'CCSTMUORP1000000', 2, 'storage', 'object_storage', 'obj_1', 'Object Storage 1 IOPS per GB  '),
(12, 'CCSTBNORP1000000', 3, 'storage', 'object_storage', 'obj_1', 'Object Storage 1 IOPS per GB  '),
(13, 'CCSTNKORI3000000', 1, 'storage', 'object_storage', 'obj_3', 'Object Storage 3 IOPS per GB  '),
(14, 'CCSTMUORI3000000', 2, 'storage', 'object_storage', 'obj_3', 'Object Storage 3 IOPS per GB  '),
(15, 'CCSTBNORI3000000', 3, 'storage', 'object_storage', 'obj_3', 'Object Storage 3 IOPS per GB  '),
(16, 'CCSTNKORI5000000', 1, 'storage', 'object_storage', 'obj_5', 'Object Storage 5 IOPS per GB  '),
(17, 'CCSTMUORI5000000', 2, 'storage', 'object_storage', 'obj_5', 'Object Storage 5 IOPS per GB  '),
(18, 'CCSTBNORI5000000', 3, 'storage', 'object_storage', 'obj_5', 'Object Storage 5 IOPS per GB  '),
(19, 'CCSTNKORI8000000', 1, 'storage', 'object_storage', 'obj_8', 'Object Storage 8 IOPS per GB  '),
(20, 'CCSTMUORI8000000', 2, 'storage', 'object_storage', 'obj_8', 'Object Storage 8 IOPS per GB  '),
(21, 'CCSTBNORI8000000', 3, 'storage', 'object_storage', 'obj_8', 'Object Storage 8 IOPS per GB  '),
(22, 'CCSTNKBTP3000000', 1, 'storage', 'block_storage', 'block_03', 'Block Storage 0.3 IOPS per GB '),
(23, 'CCSTMUBTP3000000', 2, 'storage', 'block_storage', 'block_03', 'Block Storage 0.3 IOPS per GB  '),
(24, 'CCSTBNBTP3000000', 3, 'storage', 'block_storage', 'block_03', 'Block Storage 0.3 IOPS per GB '),
(25, 'CCSTNKBTP0000000', 1, 'storage', 'block_storage', 'block_10', 'Block Storage 10 IOPS per GB  '),
(26, 'CCSTMUBTP0000000', 2, 'storage', 'block_storage', 'block_10', 'Block Storage 10 IOPS per GB   '),
(27, 'CCSTBNBTP0000000', 3, 'storage', 'block_storage', 'block_10', 'Block Storage 10 IOPS per GB  '),
(28, 'CCSTNKBTP1000000', 1, 'storage', 'block_storage', 'block_1', 'Block Storage  1 IOPS per GB  '),
(29, 'CCSTMUBTP1000000', 2, 'storage', 'block_storage', 'block_1', 'Block Storage  1 IOPS per GB   '),
(30, 'CCSTBNBTP1000000', 3, 'storage', 'block_storage', 'block_1', 'Block Storage  1 IOPS per GB  '),
(31, 'CCSTNKBTI3000000', 1, 'storage', 'block_storage', 'block_3', 'Block Storage 3 IOPS per GB  '),
(32, 'CCSTMUBTI3000000', 2, 'storage', 'block_storage', 'block_3', 'Block Storage 3 IOPS per GB   '),
(33, 'CCSTBNBTI3000000', 3, 'storage', 'block_storage', 'block_3', 'Block Storage 3 IOPS per GB  '),
(34, 'CCSTNKBTI5000000', 1, 'storage', 'block_storage', 'block_5', 'Block Storage 5 IOPS per GB  '),
(35, 'CCSTMUBTI5000000', 2, 'storage', 'block_storage', 'block_5', 'Block Storage 5 IOPS per GB   '),
(36, 'CCSTBNBTI5000000', 3, 'storage', 'block_storage', 'block_5', 'Block Storage 5 IOPS per GB  '),
(37, 'CCSTNKBTI8000000', 1, 'storage', 'block_storage', 'block_8', 'Block Storage 8 IOPS per GB  '),
(38, 'CCSTMUBTI8000000', 2, 'storage', 'block_storage', 'block_8', 'Block Storage 8 IOPS per GB   '),
(39, 'CCSTBNBTI8000000', 3, 'storage', 'block_storage', 'block_8', 'Block Storage 8 IOPS per GB  '),
(40, 'CCSTNKFSP3000000', 1, 'storage', 'file_storage', 'file_03', 'File Storage 0.3 IOPS per GB  '),
(41, 'CCSTMUFSP3000000', 2, 'storage', 'file_storage', 'file_03', 'File Storage 0.3 IOPS per GB  '),
(42, 'CCSTBNFSP3000000', 3, 'storage', 'file_storage', 'file_03', 'File Storage 0.3 IOPS per GB  '),
(43, 'CCSTNKFSP0000000', 1, 'storage', 'file_storage', 'file_10', 'File Storage 10 IOPS per GB  '),
(44, 'CCSTMUFSP0000000', 2, 'storage', 'file_storage', 'file_10', 'File Storage 10 IOPS per GB  '),
(45, 'CCSTBNFSP0000000', 3, 'storage', 'file_storage', 'file_10', 'File Storage 10 IOPS per GB  '),
(46, 'CCSTNKFSP1000000', 1, 'storage', 'file_storage', 'file_1', 'File Storage 1 IOPS per GB  '),
(47, 'CCSTMUFSP1000000', 2, 'storage', 'file_storage', 'file_1', 'File Storage 1 IOPS per GB  '),
(48, 'CCSTBNFSP1000000', 3, 'storage', 'file_storage', 'file_1', 'File Storage 1 IOPS per GB  '),
(49, 'CCSTNKFSI3000000', 1, 'storage', 'file_storage', 'file_3', 'File Storage 3 IOPS per GB  '),
(50, 'CCSTMUFSI3000000', 2, 'storage', 'file_storage', 'file_3', 'File Storage 3 IOPS per GB  '),
(51, 'CCSTBNFSI3000000', 3, 'storage', 'file_storage', 'file_3', 'File Storage 3 IOPS per GB  '),
(52, 'CCSTNKFSI5000000', 1, 'storage', 'file_storage', 'file_5', 'File Storage 5 IOPS per GB  '),
(53, 'CCSTMUFSI5000000', 2, 'storage', 'file_storage', 'file_5', 'File Storage 5 IOPS per GB  '),
(54, 'CCSTBNFSI5000000', 3, 'storage', 'file_storage', 'file_5', 'File Storage 5 IOPS per GB  '),
(55, 'CCSTNKFSI8000000', 1, 'storage', 'file_storage', 'file_8', 'File Storage 8 IOPS per GB  '),
(56, 'CCSTMUFSI8000000', 2, 'storage', 'file_storage', 'file_8', 'File Storage 8 IOPS per GB  '),
(57, 'CCSTBNFSI8000000', 3, 'storage', 'file_storage', 'file_8', 'File Storage 8 IOPS per GB  '),
(58, 'SOBANKCT00000000', 1, 'software', 'backup_soft', 'carbonite', ' Backup Agent - Carbonite '),
(59, 'SOBAMUCT00000000', 2, 'software', 'backup_soft', 'carbonite', ' Backup Agent - Carbonite '),
(60, 'SOBABNCT00000000', 3, 'software', 'backup_soft', 'carbonite', ' Backup Agent - Carbonite '),
(61, 'SOBANKVE00000000', 1, 'software', 'backup_soft', 'veeam', ' Backup Agent - Veeam '),
(62, 'SOBAMUVE00000000', 2, 'software', 'backup_soft', 'veeam', ' Backup Agent - Veeam '),
(63, 'SOBABNVE00000000', 3, 'software', 'backup_soft', 'veeam', ' Backup Agent - Veeam '),
(64, '0000000000000000', 0, 'storage', 'offline_backup', 'tl', 'Tape Library'),
(65, '0000000000000000', 0, 'storage', 'offline_backup', 'tc', 'Tape Cartridge'),
(66, '0000000000000000', 0, 'storage', 'offline_backup', 'fc', 'Fireproof Cabinate'),
(67, 'ICSRNKDWGS000000', 1, 'sec', 'ssl_certificate', 'domain_wild_ssl', 'Domain SSL Wild Card  '),
(68, 'ICSRMUDWGS000000', 2, 'sec', 'ssl_certificate', 'domain_wild_ssl', 'Domain SSL Wild Card  '),
(69, 'ICSRBNDWGS000000', 3, 'sec', 'ssl_certificate', 'domain_wild_ssl', 'Domain SSL Wild Card  '),
(70, 'MSEGNKFWVT000000', 1, 'mng', 'firewall_mgmt', 'vfirewall_mgmt', 'Virtual Firewall External - Managed Services '),
(71, 'MSEGMUFWVT000000', 2, 'mng', 'firewall_mgmt', 'vfirewall_mgmt', 'Virtual Firewall External - Managed Services  '),
(72, 'MSEGBNFWVT000000', 3, 'mng', 'firewall_mgmt', 'vfirewall_mgmt', 'Virtual Firewall External - Managed Services '),
(73, 'MSEGNKFWPF000000', 1, 'mng', 'firewall_mgmt', 'pfirewall_mgmt', 'Physical Firewall - Managed Services  '),
(74, 'MSEGMUFWPF000000', 2, 'mng', 'firewall_mgmt', 'pfirewall_mgmt', 'Physical Firewall - Managed Services   '),
(75, 'MSEGBNFWPF000000', 3, 'mng', 'firewall_mgmt', 'pfirewall_mgmt', 'Physical Firewall - Managed Services  '),
(76, 'ICSRNKAWGS000000', 1, 'sec', 'ssl_certificate', 'alpha_wild_ssl', 'Alpha SSL Wild Card  '),
(77, 'ICSRMUAWGS000000', 2, 'sec', 'ssl_certificate', 'alpha_wild_ssl', 'Alpha SSL Wild Card  '),
(78, 'ICSRBNAWGS000000', 3, 'sec', 'ssl_certificate', 'alpha_wild_ssl', 'Alpha SSL Wild Card  '),
(79, 'ICVUNKFN1G000000', 1, 'sec', 'utm', 'forti_vutm_1g', 'Fortinet  - Virtual UTM- 1 Gpbs'),
(80, 'ICVUMUFN1G000000', 2, 'sec', 'utm', 'forti_vutm_1g', 'Fortinet  - Virtual UTM- 1 Gpbs'),
(81, 'ICVUBNFN1G000000', 3, 'sec', 'utm', 'forti_vutm_1g', 'Fortinet  - Virtual UTM- 1 Gpbs'),
(82, 'ICVUNKFN2G000000', 1, 'sec', 'utm', 'forti_vutm_2g', 'Fortinet  - Virtual UTM- 2 Gpbs'),
(83, 'ICVUMUFN2G000000', 2, 'sec', 'utm', 'forti_vutm_2g', 'Fortinet  - Virtual UTM- 2 Gpbs'),
(84, 'ICVUBNFN2G000000', 3, 'sec', 'utm', 'forti_vutm_2g', 'Fortinet  - Virtual UTM- 2 Gpbs'),
(85, 'ICVUNKCK1G000000', 1, 'sec', 'utm', 'check_vutm_1g', 'CheckPoint  - Virtual UTM- 1 Gpbs'),
(86, 'ICVUMUCK1G000000', 2, 'sec', 'utm', 'check_vutm_1g', 'CheckPoint  - Virtual UTM- 1 Gpbs'),
(87, 'ICVUBNCK1G000000', 3, 'sec', 'utm', 'check_vutm_1g', 'CheckPoint  - Virtual UTM- 1 Gpbs'),
(88, 'ICVUNKCK2G000000', 1, 'sec', 'utm', 'check_vutm_2g', 'CheckPoint  - Virtual UTM- 2 Gpbs'),
(89, 'ICVUMUCK2G000000', 2, 'sec', 'utm', 'check_vutm_2g', 'CheckPoint  - Virtual UTM- 2 Gpbs'),
(90, 'ICVUBNCK2G000000', 3, 'sec', 'utm', 'check_vutm_2g', 'CheckPoint  - Virtual UTM- 2 Gpbs'),
(91, 'ICVUNKPA1G000000', 1, 'sec', 'utm', 'palo_vutm_1g', 'Palo alto - Virtual UTM- 1 Gpbs'),
(92, 'ICVUMUPA1G000000', 2, 'sec', 'utm', 'palo_vutm_1g', 'Palo alto - Virtual UTM- 1 Gpbs'),
(93, 'ICVUBNPA1G000000', 3, 'sec', 'utm', 'palo_vutm_1g', 'Palo alto - Virtual UTM- 1 Gpbs'),
(94, 'ICVUNKPA2G000000', 1, 'sec', 'utm', 'palo_vutm_2g', 'Palo alto - Virtual UTM- 2 Gpbs'),
(95, 'ICVUMUPA2G000000', 2, 'sec', 'utm', 'palo_vutm_2g', 'Palo alto - Virtual UTM- 2 Gpbs'),
(96, 'ICVUBNPA2G000000', 3, 'sec', 'utm', 'palo_vutm_2g', 'Palo alto - Virtual UTM- 2 Gpbs'),
(97, 'ICVUNKSO1G000000', 1, 'sec', 'utm', 'sopo_vutm_1g', 'Sopohs - Virtual UTM- 1 Gpbs'),
(98, 'ICVUMUSO1G000000', 2, 'sec', 'utm', 'sopo_vutm_1g', 'Sopohs - Virtual UTM- 1 Gpbs'),
(99, 'ICVUBNSO1G000000', 3, 'sec', 'utm', 'sopo_vutm_1g', 'Sopohs - Virtual UTM- 1 Gpbs'),
(100, 'ICVUNKSO2G000000', 1, 'sec', 'utm', 'sopo_vutm_2g', 'Sopohs - Virtual UTM- 2 Gpbs'),
(101, 'ICVUMUSO2G000000', 2, 'sec', 'utm', 'sopo_vutm_2g', 'Sopohs - Virtual UTM- 2 Gpbs'),
(102, 'ICVUBNSO2G000000', 3, 'sec', 'utm', 'sopo_vutm_2g', 'Sopohs - Virtual UTM- 2 Gpbs'),
(103, 'ICVUNKJU1G000000', 1, 'sec', 'utm', 'juni_vutm_1g', 'Juniper  - Virtual UTM- 1 Gpbs'),
(104, 'ICVUMUJU1G000000', 2, 'sec', 'utm', 'juni_vutm_1g', 'Juniper  - Virtual UTM- 1 Gpbs'),
(105, 'ICVUBNJU1G000000', 3, 'sec', 'utm', 'juni_vutm_1g', 'Juniper  - Virtual UTM- 1 Gpbs'),
(106, 'ICVUNKJU2G000000', 1, 'sec', 'utm', 'juni_vutm_2g', 'Juniper  - Virtual UTM- 2 Gpbs'),
(107, 'ICVUMUJU2G000000', 2, 'sec', 'utm', 'juni_vutm_2g', 'Juniper  - Virtual UTM- 2 Gpbs'),
(108, 'ICVUBNJU2G000000', 3, 'sec', 'utm', 'juni_vutm_2g', 'Juniper  - Virtual UTM- 2 Gpbs'),
(109, 'ICVUNKC11G000000', 1, 'sec', 'utm', 'clii_vutm_1g', 'Client Specific - Virtual UTM- 1 Gpbs'),
(110, 'ICVUMUC11G000000', 2, 'sec', 'utm', 'clii_vutm_1g', 'Client Specific - Virtual UTM- 1 Gpbs'),
(111, 'ICVUBNC11G000000', 3, 'sec', 'utm', 'clii_vutm_1g', 'Client Specific - Virtual UTM- 1 Gpbs'),
(112, 'ICVUNKC12G000000', 1, 'sec', 'utm', 'clii_vutm_2g', 'Client Specific - Virtual UTM- 2 Gpbs'),
(113, 'ICVUMUC12G000000', 2, 'sec', 'utm', 'clii_vutm_2g', 'Client Specific - Virtual UTM- 2 Gpbs'),
(114, 'ICVUBNC12G000000', 3, 'sec', 'utm', 'clii_vutm_2g', 'Client Specific - Virtual UTM- 2 Gpbs'),
(115, 'ICSRNKOLGS000000', 1, 'sec', 'ssl_certificate', 'org_wild_ssl', 'Organizational SSL Wild Card  '),
(116, 'ICSRMUOLGS000000', 2, 'sec', 'ssl_certificate', 'org_wild_ssl', 'Organizational SSL Wild Card  '),
(117, 'ICSRBNOLGS000000', 3, 'sec', 'ssl_certificate', 'org_wild_ssl', 'Organizational SSL Wild Card  '),
(118, 'ICVTNKTS3S000000', 1, 'sec', 'vtm_scan', 'vtm_scan_30', 'VTMScan -30Scan'),
(119, 'ICVTMUTS3S000000', 2, 'sec', 'vtm_scan', 'vtm_scan_30', 'VTMScan -30Scan'),
(120, 'ICVTBNTS3S000000', 3, 'sec', 'vtm_scan', 'vtm_scan_30', 'VTMScan -30Scan'),
(121, 'ICVTNKTS6S000000', 1, 'sec', 'vtm_scan', 'vtm_scan_60', 'VTMScan - 60Scan'),
(122, 'ICVTMUTS6S000000', 2, 'sec', 'vtm_scan', 'vtm_scan_60', 'VTMScan - 60Scan'),
(123, 'ICVTBNTS6S000000', 3, 'sec', 'vtm_scan', 'vtm_scan_60', 'VTMScan - 60Scan'),
(124, 'ICSRNKDRGS000000', 1, 'sec', 'ssl_certificate', 'domain_ssl', 'Domain SSL  '),
(125, 'ICSRMUDRGS000000', 2, 'sec', 'ssl_certificate', 'domain_ssl', 'Domain SSL  '),
(126, 'ICSRBNDRGS000000', 3, 'sec', 'ssl_certificate', 'domain_ssl', 'Domain SSL  '),
(127, 'ICVTNKTS1S000000', 1, 'sec', 'vtm_scan', 'vtm_scan_1', 'VTMScan- 1Scan'),
(128, 'ICVTMUTS1S000000', 2, 'sec', 'vtm_scan', 'vtm_scan_1', 'VTMScan- 1Scan'),
(129, 'ICVTBNTS1S000000', 3, 'sec', 'vtm_scan', 'vtm_scan_1', 'VTMScan- 1Scan'),
(130, 'ICVTNKTS4S000000', 1, 'sec', 'vtm_scan', 'vtm_scan_4', 'VTMScan 4Scan'),
(131, 'ICVTMUTS4S000000', 2, 'sec', 'vtm_scan', 'vtm_scan_4', 'VTMScan 4Scan'),
(132, 'ICVTBNTS4S000000', 3, 'sec', 'vtm_scan', 'vtm_scan_4', 'VTMScan 4Scan'),
(133, 'ICSRNKALGS000000', 1, 'sec', 'ssl_certificate', 'alpha_ssl', 'Alpha SSL  '),
(134, 'ICSRMUALGS000000', 2, 'sec', 'ssl_certificate', 'alpha_ssl', 'Alpha SSL  '),
(135, 'ICSRBNALGS000000', 3, 'sec', 'ssl_certificate', 'alpha_ssl', 'Alpha SSL  '),
(136, 'MSEGNKFWUM000000', 1, 'mng', 'firewall_mgmt', 'utm_mgmt', 'vUTM Firewall - Managed Services '),
(137, 'MSEGMUFWUM000000', 2, 'mng', 'firewall_mgmt', 'utm_mgmt', 'vUTM Firewall - Managed Services  '),
(138, 'MSEGBNFWUM000000', 3, 'mng', 'firewall_mgmt', 'utm_mgmt', 'vUTM Firewall - Managed Services '),
(139, 'ICSRNKOZGS000000', 1, 'sec', 'ssl_certificate', 'org_ssl', 'Organizational SSL  '),
(140, 'ICSRMUOZGS000000', 2, 'sec', 'ssl_certificate', 'org_ssl', 'Organizational SSL  '),
(141, 'ICSRBNOZGS000000', 3, 'sec', 'ssl_certificate', 'org_ssl', 'Organizational SSL  '),
(142, 'ICSRNKXVGS000000', 1, 'sec', 'ssl_certificate', 'ext_ssl', 'Extended SSL - SSL-Internal Security '),
(143, 'ICSRMUXVGS000000', 2, 'sec', 'ssl_certificate', 'ext_ssl', 'Extended SSL - SSL-Internal Security '),
(144, 'ICSRBNXVGS000000', 3, 'sec', 'ssl_certificate', 'ext_ssl', 'Extended SSL - SSL-Internal Security '),
(145, 'ICPUNKFN1G000000', 1, 'sec', 'utm', 'forti_putm_1g', 'Fortinet  - Physical UTM- 1 Gpbs'),
(146, 'ICPUMUFN1G000000', 2, 'sec', 'utm', 'forti_putm_1g', 'Fortinet  - Physical UTM- 1 Gpbs'),
(147, 'ICPUBNFN1G000000', 3, 'sec', 'utm', 'forti_putm_1g', 'Fortinet  - Physical UTM- 1 Gpbs'),
(148, 'ICPUNKFN2G000000', 1, 'sec', 'utm', 'forti_putm_2g', 'Fortinet  - Physical UTM- 2 Gpbs'),
(149, 'ICPUMUFN2G000000', 2, 'sec', 'utm', 'forti_putm_2g', 'Fortinet  - Physical UTM- 2 Gpbs'),
(150, 'ICPUBNFN2G000000', 3, 'sec', 'utm', 'forti_putm_2g', 'Fortinet  - Physical UTM- 2 Gpbs'),
(151, 'ICPUNKCK1G000000', 1, 'sec', 'utm', 'check_putm_1g', 'CheckPoint  - Physical UTM- 1 Gpbs'),
(152, 'ICPUMUCK1G000000', 2, 'sec', 'utm', 'check_putm_1g', 'CheckPoint  - Physical UTM- 1 Gpbs'),
(153, 'ICPUBNCK1G000000', 3, 'sec', 'utm', 'check_putm_1g', 'CheckPoint  - Physical UTM- 1 Gpbs'),
(154, 'ICPUNKCK2G000000', 1, 'sec', 'utm', 'check_putm_2g', 'CheckPoint  - Physical UTM- 2 Gpbs'),
(155, 'ICPUMUCK2G000000', 2, 'sec', 'utm', 'check_putm_2g', 'CheckPoint  - Physical UTM- 2 Gpbs'),
(156, 'ICPUBNCK2G000000', 3, 'sec', 'utm', 'check_putm_2g', 'CheckPoint  - Physical UTM- 2 Gpbs'),
(157, 'ICPUNKPA1G000000', 1, 'sec', 'utm', 'palo_putm_1g', 'Palo alto - Physical UTM- 1 Gpbs'),
(158, 'ICPUMUPA1G000000', 2, 'sec', 'utm', 'palo_putm_1g', 'Palo alto - Physical UTM- 1 Gpbs'),
(159, 'ICPUBNPA1G000000', 3, 'sec', 'utm', 'palo_putm_1g', 'Palo alto - Physical UTM- 1 Gpbs'),
(160, 'ICPUNKPA2G000000', 1, 'sec', 'utm', 'palo_putm_2g', 'Palo alto - Physical UTM- 2 Gpbs'),
(161, 'ICPUMUPA2G000000', 2, 'sec', 'utm', 'palo_putm_2g', 'Palo alto - Physical UTM- 2 Gpbs'),
(162, 'ICPUBNPA2G000000', 3, 'sec', 'utm', 'palo_putm_2g', 'Palo alto - Physical UTM- 2 Gpbs'),
(163, 'ICPUNKSO1G000000', 1, 'sec', 'utm', 'sopo_putm_1g', 'Sopohs - Physical UTM- 1 Gpbs'),
(164, 'ICPUMUSO1G000000', 2, 'sec', 'utm', 'sopo_putm_1g', 'Sopohs - Physical UTM- 1 Gpbs'),
(165, 'ICPUBNSO1G000000', 3, 'sec', 'utm', 'sopo_putm_1g', 'Sopohs - Physical UTM- 1 Gpbs'),
(166, 'ICPUNKSO2G000000', 1, 'sec', 'utm', 'sopo_putm_2g', 'Sopohs - Physical UTM- 2 Gpbs'),
(167, 'ICPUMUSO2G000000', 2, 'sec', 'utm', 'sopo_putm_2g', 'Sopohs - Physical UTM- 2 Gpbs'),
(168, 'ICPUBNSO2G000000', 3, 'sec', 'utm', 'sopo_putm_2g', 'Sopohs - Physical UTM- 2 Gpbs'),
(169, 'ICPUNKJU1G000000', 1, 'sec', 'utm', 'juni_putm_1g', 'Juniper  - Physical UTM- 1 Gpbs'),
(170, 'ICPUMUJU1G000000', 2, 'sec', 'utm', 'juni_putm_1g', 'Juniper  - Physical UTM- 1 Gpbs'),
(171, 'ICPUBNJU1G000000', 3, 'sec', 'utm', 'juni_putm_1g', 'Juniper  - Physical UTM- 1 Gpbs'),
(172, 'ICPUNKJU2G000000', 1, 'sec', 'utm', 'juni_putm_2g', 'Juniper  - Physical UTM- 2 Gpbs'),
(173, 'ICPUMUJU2G000000', 2, 'sec', 'utm', 'juni_putm_2g', 'Juniper  - Physical UTM- 2 Gpbs'),
(174, 'ICPUBNJU2G000000', 3, 'sec', 'utm', 'juni_putm_2g', 'Juniper  - Physical UTM- 2 Gpbs'),
(175, 'ICPUNKC11G000000', 1, 'sec', 'utm', 'clii_putm_1g', 'Client Specific - Physical UTM- 1 Gpbs'),
(176, 'ICPUMUC11G000000', 2, 'sec', 'utm', 'clii_putm_1g', 'Client Specific - Physical UTM- 1 Gpbs'),
(177, 'ICPUBNC11G000000', 3, 'sec', 'utm', 'clii_putm_1g', 'Client Specific - Physical UTM- 1 Gpbs'),
(178, 'ICPUNKC12G000000', 1, 'sec', 'utm', 'clii_putm_2g', 'Client Specific - Physical UTM- 2 Gpbs'),
(179, 'ICPUMUC12G000000', 2, 'sec', 'utm', 'clii_putm_2g', 'Client Specific - Physical UTM- 2 Gpbs'),
(180, 'ICPUBNC12G000000', 3, 'sec', 'utm', 'clii_putm_2g', 'Client Specific - Physical UTM- 2 Gpbs'),
(181, 'MSBMNKBR00000000', 1, 'mng', 'storage_mgmt', 'backup_mgmt', 'Backup Management - Managed Services '),
(182, 'MSBMMUBR00000000', 2, 'mng', 'storage_mgmt', 'backup_mgmt', 'Backup Management - Managed Services '),
(183, 'MSBMBNBR00000000', 3, 'mng', 'storage_mgmt', 'backup_mgmt', 'Backup Management - Managed Services '),
(184, 'MSTNNKPB00000000', 1, 'mng', 'storage_mgmt', 'strg_mgmt', 'Storage Management (Per TB)  Mng - Managed Services '),
(185, 'MSTNMUPB00000000', 2, 'mng', 'storage_mgmt', 'strg_mgmt', 'Storage Management (Per TB)  Mng - Managed Services  '),
(186, 'MSTNBNPB00000000', 3, 'mng', 'storage_mgmt', 'strg_mgmt', 'Storage Management (Per TB)  Mng - Managed Services '),
(187, 'CCSTNKBSP3000000', 1, 'storage', 'backup', 'backup_gb_03', 'Backup Storage  - Per GB 0.3 IOPS'),
(188, 'CCSTMUBSP3000000', 2, 'storage', 'backup', 'backup_gb_03', 'Backup Storage  - Per GB 0.3 IOPS'),
(189, 'CCSTBNBSP3000000', 3, 'storage', 'backup', 'backup_gb_03', 'Backup Storage  - Per GB 0.3 IOPS'),
(190, 'CCSTNKBSP0000000', 1, 'storage', 'backup', 'backup_gb_10', 'Backup Storage  - Per GB 10 IOPS'),
(191, 'CCSTMUBSP0000000', 2, 'storage', 'backup', 'backup_gb_10', 'Backup Storage  - Per GB 10 IOPS'),
(192, 'CCSTBNBSP0000000', 3, 'storage', 'backup', 'backup_gb_10', 'Backup Storage  - Per GB 10 IOPS'),
(193, 'CCSTNKBSP1000000', 1, 'storage', 'backup', 'backup_gb_1', 'Backup Storage  - Per GB 1 IOPS'),
(194, 'CCSTMUBSP1000000', 2, 'storage', 'backup', 'backup_gb_1', 'Backup Storage  - Per GB 1 IOPS'),
(195, 'CCSTBNBSP1000000', 3, 'storage', 'backup', 'backup_gb_1', 'Backup Storage  - Per GB 1 IOPS'),
(196, 'CCSTNKBSI3000000', 1, 'storage', 'backup', 'backup_gb_3', 'Backup Storage  - Per GB 3 IOPS'),
(197, 'CCSTMUBSI3000000', 2, 'storage', 'backup', 'backup_gb_3', 'Backup Storage  - Per GB 3 IOPS'),
(198, 'CCSTBNBSI3000000', 3, 'storage', 'backup', 'backup_gb_3', 'Backup Storage  - Per GB 3 IOPS'),
(199, 'CCSTNKBSI5000000', 1, 'storage', 'backup', 'backup_gb_5', 'Backup Storage  - Per GB 5 IOPS'),
(200, 'CCSTMUBSI5000000', 2, 'storage', 'backup', 'backup_gb_5', 'Backup Storage  - Per GB 5 IOPS'),
(201, 'CCSTBNBSI5000000', 3, 'storage', 'backup', 'backup_gb_5', 'Backup Storage  - Per GB 5 IOPS'),
(202, 'CCSTNKBSI8000000', 1, 'storage', 'backup', 'backup_gb_8', 'Backup Storage  - Per GB 8 IOPS'),
(203, 'CCSTMUBSI8000000', 2, 'storage', 'backup', 'backup_gb_8', 'Backup Storage  - Per GB 8 IOPS'),
(204, 'CCSTBNBSI8000000', 3, 'storage', 'backup', 'backup_gb_8', 'Backup Storage  - Per GB 8 IOPS'),
(205, 'MSDMNKMG00000000', 1, 'mng', 'db_mgmt', 'mong_db_mgmt', 'MongoDB Database Managed Services (Up to 100 GB) '),
(206, 'MSDMMUMG00000000', 2, 'mng', 'db_mgmt', 'mong_db_mgmt', 'MongoDB Database Managed Services (Up to 100 GB)  '),
(207, 'MSDMBNMG00000000', 3, 'mng', 'db_mgmt', 'mong_db_mgmt', 'MongoDB Database Managed Services (Up to 100 GB) '),
(208, 'MSDMNKOA00000000', 1, 'mng', 'db_mgmt', 'orc_db_mgmt', 'Oracle Database Managed Services (Up to 100 GB)  '),
(209, 'MSDMMUOA00000000', 2, 'mng', 'db_mgmt', 'orc_db_mgmt', 'Oracle Database Managed Services (Up to 100 GB)   '),
(210, 'MSDMBNOA00000000', 3, 'mng', 'db_mgmt', 'orc_db_mgmt', 'Oracle Database Managed Services (Up to 100 GB)  '),
(211, 'MSDMNKSD00000000', 1, 'mng', 'db_mgmt', 'syb_db_mgmt', 'Sybase Database Managed Services(Up to 100 GB)  '),
(212, 'MSDMMUSD00000000', 2, 'mng', 'db_mgmt', 'syb_db_mgmt', 'Sybase Database Managed Services(Up to 100 GB)   '),
(213, 'MSDMBNSD00000000', 3, 'mng', 'db_mgmt', 'syb_db_mgmt', 'Sybase Database Managed Services(Up to 100 GB)  '),
(214, 'MSOGNKDD00000000', 1, 'mng', 'dr_mng', 'dr_drill', 'DR Drill (Per Application) '),
(215, 'MSOGMUDD00000000', 2, 'mng', 'dr_mng', 'dr_drill', 'DR Drill (Per Application)  '),
(216, 'MSOGBNDD00000000', 3, 'mng', 'dr_mng', 'dr_drill', 'DR Drill (Per Application) '),
(217, 'MSOGNKRA00000000', 1, 'mng', 'dr_mng', 'rep_mgmt', 'Replication Mng - Managed Services  '),
(218, 'MSOGMURA00000000', 2, 'mng', 'dr_mng', 'rep_mgmt', 'Replication Mng - Managed Services   '),
(219, 'MSOGBNRA00000000', 3, 'mng', 'dr_mng', 'rep_mgmt', 'Replication Mng - Managed Services  '),
(220, 'MSDMNKMQ00000000', 1, 'mng', 'db_mgmt', 'ms_db_mgmt', 'MSSQL Database Managed Services (Up to 100 GB) '),
(221, 'MSDMMUMQ00000000', 2, 'mng', 'db_mgmt', 'ms_db_mgmt', 'MSSQL Database Managed Services (Up to 100 GB)  '),
(222, 'MSDMBNMQ00000000', 3, 'mng', 'db_mgmt', 'ms_db_mgmt', 'MSSQL Database Managed Services (Up to 100 GB) '),
(223, 'MSDMNKMY00000000', 1, 'mng', 'db_mgmt', 'my_db_mgmt', 'MYSQL Database  Managed Services (Up to 100 GB)  '),
(224, 'MSDMMUMY00000000', 2, 'mng', 'db_mgmt', 'my_db_mgmt', 'MYSQL Database  Managed Services (Up to 100 GB)   '),
(225, 'MSDMBNMY00000000', 3, 'mng', 'db_mgmt', 'my_db_mgmt', 'MYSQL Database  Managed Services (Up to 100 GB)  '),
(226, 'MSDMNKPS00000000', 1, 'mng', 'db_mgmt', 'post_db_mgmt', 'PostgresSQL Database Managed Services (Up to 100 GB) '),
(227, 'MSDMMUPS00000000', 2, 'mng', 'db_mgmt', 'post_db_mgmt', 'PostgresSQL Database Managed Services (Up to 100 GB)  '),
(228, 'MSDMBNPS00000000', 3, 'mng', 'db_mgmt', 'post_db_mgmt', 'PostgresSQL Database Managed Services (Up to 100 GB) '),
(229, 'CCVRNKAT00000000', 1, 'compute', 'vRAM', 'vram_static', 'vRAM Static- Compute '),
(230, 'CCVRMUAT00000000', 2, 'compute', 'vRAM', 'vram_static', 'vRAM Static- Compute '),
(231, 'CCVRBNAT00000000', 3, 'compute', 'vRAM', 'vram_static', 'vRAM Static- Compute '),
(232, 'CCVCNKVE00000000', 1, 'compute', 'vCPU', 'vcpu_elastic', 'vCPU Elastic Cloud - Compute '),
(233, 'CCVCMUVE00000000', 2, 'compute', 'vCPU', 'vcpu_elastic', 'vCPU Elastic Cloud - Compute '),
(234, 'CCVCBNVE00000000', 3, 'compute', 'vCPU', 'vcpu_elastic', 'vCPU Elastic Cloud - Compute '),
(235, 'CCVRNKRL00000000', 1, 'compute', 'vRAM', 'vram_elastic', 'vRAM Elastic Cloud- Compute '),
(236, 'CCVRMURL00000000', 2, 'compute', 'vRAM', 'vram_elastic', 'vRAM Elastic Cloud- Compute '),
(237, 'CCVRBNRL00000000', 3, 'compute', 'vRAM', 'vram_elastic', 'vRAM Elastic Cloud- Compute '),
(238, 'CCVCNKVS00000000', 1, 'compute', 'vCPU', 'vcpu_static', 'vCPU Static Cloud- Compute '),
(239, 'CCVCMUVS00000000', 2, 'compute', 'vCPU', 'vcpu_static', 'vCPU Static Cloud- Compute '),
(240, 'CCVCBNVS00000000', 3, 'compute', 'vCPU', 'vcpu_static', 'vCPU Static Cloud- Compute '),
(241, 'ICSINKLR00000000', 1, 'sec', 'siem', 'logrythm_siem', 'LogRythm OEM -SIEM-Internal Security '),
(242, 'ICSIMULR00000000', 2, 'sec', 'siem', 'logrythm_siem', 'LogRythm OEM -SIEM-Internal Security '),
(243, 'ICSIBNLR00000000', 3, 'sec', 'siem', 'logrythm_siem', 'LogRythm OEM -SIEM-Internal Security '),
(244, 'ESVANKNVQY000000', 1, 'sec', 'vapt', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(245, 'ESVAMUNVQY000000', 2, 'sec', 'vapt', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(246, 'ESVABNNVQY000000', 3, 'sec', 'vapt', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(247, 'ESVANKNVHY000000', 1, 'sec', 'vapt', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(248, 'ESVAMUNVHY000000', 2, 'sec', 'vapt', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(249, 'ESVABNNVHY000000', 3, 'sec', 'vapt', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(250, 'ESVANKNVYE000000', 1, 'sec', 'vapt', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(251, 'ESVAMUNVYE000000', 2, 'sec', 'vapt', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(252, 'ESVABNNVYE000000', 3, 'sec', 'vapt', 'noncert_vapt', 'NON CERT IN- VAPT Audit '),
(253, 'CNIBNKVO00000000', 1, 'net', 'bandwidth', 'volume_band', 'Volume Based : Internet Bandwidth '),
(254, 'CNIBMUVO00000000', 2, 'net', 'bandwidth', 'volume_band', 'Volume Based : Internet Bandwidth '),
(255, 'CNIBBNVO00000000', 3, 'net', 'bandwidth', 'volume_band', 'Volume Based : Internet Bandwidth '),
(256, 'CNIBNKVO00000000', 1, 'net', 'bandwidth', 'speed_band', 'Speed Based : Internet Bandwidth'),
(257, 'CNIBMUVO00000000', 2, 'net', 'bandwidth', 'speed_band', 'Speed Based : Internet Bandwidth'),
(258, 'CNIBBNVO00000000', 3, 'net', 'bandwidth', 'speed_band', 'Speed Based : Internet Bandwidth'),
(259, 'ESDINKIDTT000000', 1, 'sec', 'ddos', 'ddos_1gbps', 'DDOS Mitigation - 1Gbps'),
(260, 'ESDIMUIDTT000000', 2, 'sec', 'ddos', 'ddos_1gbps', 'DDOS Mitigation - 1Gbps'),
(261, 'ESDIBNIDTT000000', 3, 'sec', 'ddos', 'ddos_1gbps', 'DDOS Mitigation - 1Gbps'),
(262, 'ESDINKIDTT000000', 1, 'sec', 'ddos', 'ddos_2gbps', 'DDOS Mitigation - 2Gbps'),
(263, 'ESDIMUIDTT000000', 2, 'sec', 'ddos', 'ddos_2gbps', 'DDOS Mitigation - 2Gbps'),
(264, 'ESDIBNIDTT000000', 3, 'sec', 'ddos', 'ddos_2gbps', 'DDOS Mitigation - 2Gbps'),
(265, 'ICSINKCS00000000', 1, 'sec', 'siem', 'secon_siem', 'SECEON - SIEM-Internal Security '),
(266, 'ICSIMUCS00000000', 2, 'sec', 'siem', 'secon_siem', 'SECEON - SIEM-Internal Security '),
(267, 'ICSIBNCS00000000', 3, 'sec', 'siem', 'secon_siem', 'SECEON - SIEM-Internal Security '),
(268, 'ICSINKKA00000000', 1, 'sec', 'siem', 'khika_siem', 'KHIKA - SIEM-Internal Security '),
(269, 'ICSIMUKA00000000', 2, 'sec', 'siem', 'khika_siem', 'KHIKA - SIEM-Internal Security '),
(270, 'ICSIBNKA00000000', 3, 'sec', 'siem', 'khika_siem', 'KHIKA - SIEM-Internal Security '),
(271, 'CNMSNKAR00000000', 0, 'net', 'link', 'mpls_link', 'MPLS Link'),
(272, 'ESVANKCVQY000000', 1, 'sec', 'vapt', 'cert_vapt', 'CERTIN- VAPT Audit '),
(273, 'ESVAMUCVQY000000', 2, 'sec', 'vapt', 'cert_vapt', 'CERTIN- VAPT Audit '),
(274, 'ESVABNCVQY000000', 3, 'sec', 'vapt', 'cert_vapt', 'CERTIN- VAPT Audit '),
(275, 'ESVANKCVHY000000', 1, 'sec', 'vapt', 'cert_vapt', 'CERTIN- VAPT Audit '),
(276, 'ESVAMUCVHY000000', 2, 'sec', 'vapt', 'cert_vapt', 'CERTIN- VAPT Audit '),
(277, 'ESVABNCVHY000000', 3, 'sec', 'vapt', 'cert_vapt', 'CERTIN- VAPT Audit '),
(278, 'ESVANKCVYE000000', 1, 'sec', 'vapt', 'cert_vapt', 'CERTIN- VAPT Audit '),
(279, 'ESVAMUCVYE000000', 2, 'sec', 'vapt', 'cert_vapt', 'CERTIN- VAPT Audit '),
(280, 'ESVABNCVYE000000', 3, 'sec', 'vapt', 'cert_vapt', 'CERTIN- VAPT Audit '),
(281, 'CNPRNMPP00000000', 0, 'net', 'link', 'p2p_link', 'P2P Link'),
(282, 'ICSONKSOSO000000', 1, 'sec', 'soar', 'soar', 'Security orchestration, automation and response '),
(283, 'ICSOMUSOSO000000', 2, 'sec', 'soar', 'soar', 'Security orchestration, automation and response '),
(284, 'ICSOBNSOSO000000', 3, 'sec', 'soar', 'soar', 'Security orchestration, automation and response '),
(285, 'SODSNKPLVA000000', 1, 'software', 'drm', 'veeam_drm', 'DRM -Software- veeam '),
(286, 'SODSMUPLVA000000', 2, 'software', 'drm', 'veeam_drm', 'DRM -Software- veeam  '),
(287, 'SODSBNPLVA000000', 3, 'software', 'drm', 'veeam_drm', 'DRM -Software- veeam '),
(288, 'SODSNKVICT000000', 1, 'software', 'drm', 'carb_drm', 'DRM -Software- Carbonite '),
(289, 'SODSMUVICT000000', 2, 'software', 'drm', 'carb_drm', 'DRM -Software- carbonite  '),
(290, 'SODSBNVICT000000', 3, 'software', 'drm', 'carb_drm', 'DRM -Software- carbonite '),
(291, 'ICWFNKCK1G000000', 1, 'sec', 'waf', 'checkpoint _vwaf_1gbps', 'Checkpoint -VWAF - 1Gbps'),
(292, 'ICWFMUCK1G000000', 2, 'sec', 'waf', 'checkpoint _vwaf_1gbps', 'Checkpoint -VWAF - 1Gbps'),
(293, 'ICWFBNCK1G000000', 3, 'sec', 'waf', 'checkpoint _vwaf_1gbps', 'Checkpoint -VWAF - 1Gbps'),
(294, 'ICWFNKCK2G000000', 1, 'sec', 'waf', 'checkpoint _vwaf_2gbps', 'Checkpoint -VWAF - 2Gbps'),
(295, 'ICWFMUCK2G000000', 2, 'sec', 'waf', 'checkpoint _vwaf_2gbps', 'Checkpoint -VWAF - 2Gbps'),
(296, 'ICWFBNCK2G000000', 3, 'sec', 'waf', 'checkpoint _vwaf_2gbps', 'Checkpoint -VWAF - 2Gbps'),
(297, 'ICWFNKFN1G000000', 1, 'sec', 'waf', 'fortinet _ vwaf_1gbps', 'Fortinet - VWAF - 1Gbps'),
(298, 'ICWFMUFN1G000000', 2, 'sec', 'waf', 'fortinet _ vwaf_1gbps', 'Fortinet - VWAF - 1Gbps'),
(299, 'ICWFBNFN1G000000', 3, 'sec', 'waf', 'fortinet _ vwaf_1gbps', 'Fortinet - VWAF - 1Gbps'),
(300, 'ICWFNKFN2G000000', 1, 'sec', 'waf', 'fortinet _ vwaf_2gbps', 'Fortinet - VWAF - 2Gbps'),
(301, 'ICWFMUFN2G000000', 2, 'sec', 'waf', 'fortinet _ vwaf_2gbps', 'Fortinet - VWAF - 2Gbps'),
(302, 'ICWFBNFN2G000000', 3, 'sec', 'waf', 'fortinet _ vwaf_2gbps', 'Fortinet - VWAF - 2Gbps'),
(303, 'ICWFNKRD1G000000', 1, 'sec', 'waf', 'radware _ vwaf_1gbps', 'RADWARE - VWAF - 1Gbps'),
(304, 'ICWFMURD1G000000', 2, 'sec', 'waf', 'radware _ vwaf_1gbps', 'RADWARE - VWAF - 1Gbps'),
(305, 'ICWFBNRD1G000000', 3, 'sec', 'waf', 'radware _ vwaf_1gbps', 'RADWARE - VWAF - 1Gbps'),
(306, 'ICWFNKRD2G000000', 1, 'sec', 'waf', 'radware _ vwaf_2gbps', 'RADWARE - VWAF - 2Gbps'),
(307, 'ICWFMURD2G000000', 2, 'sec', 'waf', 'radware _ vwaf_2gbps', 'RADWARE - VWAF - 2Gbps'),
(308, 'ICWFBNRD2G000000', 3, 'sec', 'waf', 'radware _ vwaf_2gbps', 'RADWARE - VWAF - 2Gbps'),
(309, 'ICFWNKFN1G000000', 1, 'sec', 'ifw', 'ifw_fortinet_1gbps', 'Fortinet - Virtual Internal Firewall - 1 Gpbs'),
(310, 'ICFWMUFN1G000000', 2, 'sec', 'ifw', 'ifw_fortinet_1gbps', 'Fortinet - Virtual Internal Firewall - 1 Gpbs'),
(311, 'ICFWBNFN1G000000', 3, 'sec', 'ifw', 'ifw_fortinet_1gbps', 'Fortinet - Virtual Internal Firewall - 1 Gpbs'),
(312, 'ICFWNKFN2G000000', 1, 'sec', 'ifw', 'ifw_fortinet_2gbps', 'Fortinet - Virtual Internal Firewall - 2 Gpbs'),
(313, 'ICFWMUFN2G000000', 2, 'sec', 'ifw', 'ifw_fortinet_2gbps', 'Fortinet - Virtual Internal Firewall - 2 Gpbs'),
(314, 'ICFWBNFN2G000000', 3, 'sec', 'ifw', 'ifw_fortinet_2gbps', 'Fortinet - Virtual Internal Firewall - 2 Gpbs'),
(315, 'ICFWNKFN1G000000', 1, 'sec', 'efw', 'efw_fortinet_1gbps', 'Fortinet - Virtual External Firewall - 1 Gpbs'),
(316, 'ICFWMUFN1G000000', 2, 'sec', 'efw', 'efw_fortinet_1gbps', 'Fortinet - Virtual External Firewall - 1 Gpbs'),
(317, 'ICFWBNFN1G000000', 3, 'sec', 'efw', 'efw_fortinet_1gbps', 'Fortinet - Virtual External Firewall - 1 Gpbs'),
(318, 'ICFWNKFN2G000000', 1, 'sec', 'efw', 'efw_fortinet_2gbps', 'Fortinet - Virtual External Firewall - 2 Gpbs'),
(319, 'ICFWMUFN2G000000', 2, 'sec', 'efw', 'efw_fortinet_2gbps', 'Fortinet - Virtual External Firewall - 2 Gpbs'),
(320, 'ICFWBNFN2G000000', 3, 'sec', 'efw', 'efw_fortinet_2gbps', 'Fortinet - Virtual External Firewall - 2 Gpbs'),
(321, 'ICWFNKE31G000000', 1, 'sec', 'waf', 'enligh_vwaf_1gbps', 'eNlight - VWAF - 1Gbps'),
(322, 'ICWFMUE31G000000', 2, 'sec', 'waf', 'enligh_vwaf_1gbps', 'eNlight - VWAF - 1Gbps'),
(323, 'ICWFBNE31G000000', 3, 'sec', 'waf', 'enligh_vwaf_1gbps', 'eNlight - VWAF - 1Gbps'),
(324, 'ICWFNKE32G000000', 1, 'sec', 'waf', 'enligh_vwaf_2gbps', 'eNlight - VWAF - 2Gbps'),
(325, 'ICWFMUE32G000000', 2, 'sec', 'waf', 'enligh_vwaf_2gbps', 'eNlight - VWAF - 2Gbps'),
(326, 'ICWFBNE32G000000', 3, 'sec', 'waf', 'enligh_vwaf_2gbps', 'eNlight - VWAF - 2Gbps'),
(327, 'ICWFNKC11G000000', 1, 'sec', 'waf', 'other_ vwaf_1gbps', 'Other- VWAF - 1Gbps'),
(328, 'ICWFMUC11G000000', 2, 'sec', 'waf', 'other_ vwaf_1gbps', 'Other- VWAF - 1Gbps'),
(329, 'ICWFBNC11G000000', 3, 'sec', 'waf', 'other_ vwaf_1gbps', 'Other- VWAF - 1Gbps'),
(330, 'ICWFNKC12G000000', 1, 'sec', 'waf', 'other_ vwaf_2gbps', 'Other- VWAF - 2Gbps'),
(331, 'ICWFMUC12G000000', 2, 'sec', 'waf', 'other_ vwaf_2gbps', 'Other- VWAF - 2Gbps'),
(332, 'ICWFBNC12G000000', 3, 'sec', 'waf', 'other_ vwaf_2gbps', 'Other- VWAF - 2Gbps'),
(333, 'CNPTNKCPG1000000', 1, 'net', 'net', 'copper_port_10g', 'Copper -10 Gig-Port Termination - Connectivity '),
(334, 'CNPTMUCPG1000000', 2, 'net', 'net', 'copper_port_10g', 'Copper -10 Gig-Port Termination - Connectivity '),
(335, 'CNPTBNCPG1000000', 3, 'net', 'net', 'copper_port_10g', 'Copper -10 Gig-Port Termination - Connectivity '),
(336, 'ICFWNKCK1G000000', 1, 'sec', 'ifw', 'ifw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(337, 'ICFWMUCK1G000000', 2, 'sec', 'ifw', 'ifw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(338, 'ICFWBNCK1G000000', 3, 'sec', 'ifw', 'ifw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(339, 'ICFWNKCK2G000000', 1, 'sec', 'ifw', 'ifw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(340, 'ICFWMUCK2G000000', 2, 'sec', 'ifw', 'ifw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(341, 'ICFWBNCK2G000000', 3, 'sec', 'ifw', 'ifw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(342, 'ICFWNKCK1G000000', 1, 'sec', 'efw', 'efw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(343, 'ICFWMUCK1G000000', 2, 'sec', 'efw', 'efw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(344, 'ICFWBNCK1G000000', 3, 'sec', 'efw', 'efw_check_1gbps', 'CHECKPOINT - Virtual Firewall - 1 Gpbs'),
(345, 'ICFWNKCK2G000000', 1, 'sec', 'efw', 'efw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(346, 'ICFWMUCK2G000000', 2, 'sec', 'efw', 'efw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(347, 'ICFWBNCK2G000000', 3, 'sec', 'efw', 'efw_check_2gbps', 'CHECKPOINT - Virtual Firewall - 2 Gpbs'),
(348, 'CNPTNKCP1G000000', 1, 'net', 'net', 'copper_port_1g', 'Copper-1 Gig -Port Termination - Connectivity '),
(349, 'CNPTMUCP1G000000', 2, 'net', 'net', 'copper_port_1g', 'Copper-1 Gig -Port Termination - Connectivity '),
(350, 'CNPTBNCP1G000000', 3, 'net', 'net', 'copper_port_1g', 'Copper-1 Gig -Port Termination - Connectivity '),
(351, 'CNPTNKFBG1000000', 1, 'net', 'net', 'fiber_port_10g', 'Fiber-10 Gig - Port Termination - Connectivity '),
(352, 'CNPTMUFBG1000000', 2, 'net', 'net', 'fiber_port_10g', 'Fiber-10 Gig - Port Termination - Connectivity '),
(353, 'CNPTBNFBG1000000', 3, 'net', 'net', 'fiber_port_10g', 'Fiber-10 Gig - Port Termination - Connectivity '),
(354, 'ICFWNKPA1G000000', 1, 'sec', 'ifw', 'ifw_palo_1gbps', 'PALO ALTO - Virtual Internal Firewall - 1 Gpbs'),
(355, 'ICFWMUPA1G000000', 2, 'sec', 'ifw', 'ifw_palo_1gbps', 'PALO ALTO - Virtual Internal Firewall - 1 Gpbs'),
(356, 'ICFWBNPA1G000000', 3, 'sec', 'ifw', 'ifw_palo_1gbps', 'PALO ALTO - Virtual Internal Firewall - 1 Gpbs'),
(357, 'ICFWNKPA2G000000', 1, 'sec', 'ifw', 'ifw_palo_2gbps', 'PALO ALTO - Virtual Internal Firewall - 2 Gpbs'),
(358, 'ICFWMUPA2G000000', 2, 'sec', 'ifw', 'ifw_palo_2gbps', 'PALO ALTO - Virtual Internal Firewall - 2 Gpbs'),
(359, 'ICFWBNPA2G000000', 3, 'sec', 'ifw', 'ifw_palo_2gbps', 'PALO ALTO - Virtual Internal Firewall - 2 Gpbs'),
(360, 'ICFWNKPA1G000000', 1, 'sec', 'efw', 'efw_palo_1gbps', 'PALO ALTO -Virtual External Firewall - 1 Gpbs'),
(361, 'ICFWMUPA1G000000', 2, 'sec', 'efw', 'efw_palo_1gbps', 'PALO ALTO -Virtual External Firewall - 1 Gpbs'),
(362, 'ICFWBNPA1G000000', 3, 'sec', 'efw', 'efw_palo_1gbps', 'PALO ALTO -Virtual External Firewall - 1 Gpbs'),
(363, 'ICFWNKPA2G000000', 1, 'sec', 'efw', 'efw_palo_2gbps', 'PALO ALTO -Virtual External Firewall - 2 Gpbs'),
(364, 'ICFWMUPA2G000000', 2, 'sec', 'efw', 'efw_palo_2gbps', 'PALO ALTO -Virtual External Firewall - 2 Gpbs'),
(365, 'ICFWBNPA2G000000', 3, 'sec', 'efw', 'efw_palo_2gbps', 'PALO ALTO -Virtual External Firewall - 2 Gpbs'),
(366, 'ICWFNKF51G000000', 1, 'sec', 'waf', 'f5 _vwaf_1gbps', 'F5 -VWAF - 1Gbps'),
(367, 'ICWFMUF51G000000', 2, 'sec', 'waf', 'f5 _vwaf_1gbps', 'F5 -VWAF - 1Gbps'),
(368, 'ICWFBNF51G000000', 3, 'sec', 'waf', 'f5 _vwaf_1gbps', 'F5 -VWAF - 1Gbps'),
(369, 'ICWFNKF52G000000', 1, 'sec', 'waf', 'f5 _vwaf_2gbps', 'F5 -VWAF - 2Gbps'),
(370, 'ICWFMUF52G000000', 2, 'sec', 'waf', 'f5 _vwaf_2gbps', 'F5 -VWAF - 2Gbps'),
(371, 'ICWFBNF52G000000', 3, 'sec', 'waf', 'f5 _vwaf_2gbps', 'F5 -VWAF - 2Gbps'),
(372, 'MSEGNKEVWB000000', 1, 'mng', 'waf_mgmt', 'esds_waf_mgmt', 'ESDS vWAF - Managed Services '),
(373, 'MSEGMUEVWB000000', 2, 'mng', 'waf_mgmt', 'esds_waf_mgmt', 'ESDS vWAF - Managed Services  '),
(374, 'MSEGBNEVWB000000', 3, 'mng', 'waf_mgmt', 'esds_waf_mgmt', 'ESDS vWAF - Managed Services '),
(375, 'CNPTNKFB1G000000', 1, 'net', 'net', 'fiber_port_1g', 'Fiber- 1 Gig-Port Termination - Connectivity '),
(376, 'CNPTMUFB1G000000', 2, 'net', 'net', 'fiber_port_1g', 'Fiber- 1 Gig-Port Termination - Connectivity '),
(377, 'CNPTBNFB1G000000', 3, 'net', 'net', 'fiber_port_1g', 'Fiber- 1 Gig-Port Termination - Connectivity '),
(378, 'CNNR000000000000', 0, 'net', 'net', 'cross_connect', 'Cross-connect'),
(379, 'MSEGNKEVPH000000', 1, 'mng', 'waf_mgmt', 'phy_waf_mgmt', 'Physical WAF - Managed Services  '),
(380, 'MSEGMUEVPH000000', 2, 'mng', 'waf_mgmt', 'phy_waf_mgmt', 'Physical WAF - Managed Services   '),
(381, 'MSEGBNEVPH000000', 3, 'mng', 'waf_mgmt', 'phy_waf_mgmt', 'Physical WAF - Managed Services  '),
(382, 'ICHSNKDHHS000000', 1, 'sec', 'hsm', 'dedicate_hsm', 'Hardware Security Module - Dedicated '),
(383, 'ICHSMUDHHS000000', 2, 'sec', 'hsm', 'dedicate_hsm', 'Hardware Security Module - Dedicated '),
(384, 'ICHSBNDHHS000000', 3, 'sec', 'hsm', 'dedicate_hsm', 'Hardware Security Module - Dedicated '),
(385, 'ESDLNKDVFN000000', 1, 'sec', 'dlp', 'dlp_fortinet', 'DLP VM - Fortinet  '),
(386, 'ESDLMUDVFN000000', 2, 'sec', 'dlp', 'dlp_fortinet', 'DLP VM - Fortinet  '),
(387, 'ESDLBNDVFN000000', 3, 'sec', 'dlp', 'dlp_fortinet', 'DLP VM - Fortinet  '),
(388, 'ESDLNKDVEP000000', 1, 'sec', 'dlp', 'dlp_endpoint', 'DLP VM - End Point '),
(389, 'ESDLMUDVEP000000', 2, 'sec', 'dlp', 'dlp_endpoint', 'DLP VM - End Point '),
(390, 'ESDLBNDVEP000000', 3, 'sec', 'dlp', 'dlp_endpoint', 'DLP VM - End Point '),
(391, 'ICHSNKSMHS000000', 1, 'sec', 'hsm', 'shared_hsm', 'Hardware Security Module - Shared '),
(392, 'ICHSNKSMHS000000', 2, 'sec', 'hsm', 'shared_hsm', 'Hardware Security Module - Shared '),
(393, 'ICHSNKSMHS000000', 3, 'sec', 'hsm', 'shared_hsm', 'Hardware Security Module - Shared '),
(394, 'ESDLNKDVMA000000', 1, 'sec', 'dlp', 'dlp_mcafee', 'DLP VM - McAfee   '),
(395, 'ESDLMUDVMA000000', 2, 'sec', 'dlp', 'dlp_mcafee', 'DLP VM - McAfee   '),
(396, 'ESDLBNDVMA000000', 3, 'sec', 'dlp', 'dlp_mcafee', 'DLP VM - McAfee   '),
(397, 'CNVNNKIV00000000', 1, 'net', 'vpn', 'ipsec_vpn', 'IPSEC-VPN - Connectivity '),
(398, 'CNVNMUIV00000000', 2, 'net', 'vpn', 'ipsec_vpn', 'IPSEC-VPN - Connectivity '),
(399, 'CNVNBNIV00000000', 3, 'net', 'vpn', 'ipsec_vpn', 'IPSEC-VPN - Connectivity '),
(400, 'ESPDNKAR00000000', 1, 'sec', 'pim', 'arcon_pim', 'ARCON- Priviledge Identity Management-OEM '),
(401, 'ESPDMUAR00000000', 2, 'sec', 'pim', 'arcon_pim', 'ARCON- Priviledge Identity Management-OEM '),
(402, 'ESPDBNAR00000000', 3, 'sec', 'pim', 'arcon_pim', 'ARCON- Priviledge Identity Management-OEM '),
(403, 'ESPDNKIR00000000', 1, 'sec', 'pim', 'iraje_pim', 'iRaje- Priviledge Identity Management-OEM '),
(404, 'ESPDMUIR00000000', 2, 'sec', 'pim', 'iraje_pim', 'iRaje- Priviledge Identity Management-OEM '),
(405, 'ESPDBNIR00000000', 3, 'sec', 'pim', 'iraje_pim', 'iRaje- Priviledge Identity Management-OEM '),
(406, 'CNVNNKSV00000000', 1, 'net', 'vpn', 'ssl_vpn', 'SSL-VPN - Connectivity '),
(407, 'CNVNMUSV00000000', 2, 'net', 'vpn', 'ssl_vpn', 'SSL-VPN - Connectivity '),
(408, 'CNVNBNSV00000000', 3, 'net', 'vpn', 'ssl_vpn', 'SSL-VPN - Connectivity '),
(409, 'CNVNNKWV00000000', 1, 'net', 'vpn', 'web_vpn', 'ESDS-WEB VPN -VPN - Connectivity '),
(410, 'CNVNMUWV00000000', 2, 'net', 'vpn', 'web_vpn', 'ESDS-WEB VPN -VPN - Connectivity '),
(411, 'CNVNBNWV00000000', 3, 'net', 'vpn', 'web_vpn', 'ESDS-WEB VPN -VPN - Connectivity '),
(412, 'SOCMNKEO00000000', 1, 'mng', 'emagic', 'emagic', 'eMagic- Cloud Monitoring  '),
(413, 'SOCMMUEO00000000', 2, 'mng', 'emagic', 'emagic', 'eMagic- Cloud Monitoring   '),
(414, 'SOCMBNEO00000000', 3, 'mng', 'emagic', 'emagic', 'eMagic- Cloud Monitoring  '),
(415, 'ICIMNKIMIM000000', 1, 'sec', 'iam', 'iam', 'Identity Access Management '),
(416, 'ICIMMUIMIM000000', 2, 'sec', 'iam', 'iam', 'Identity Access Management '),
(417, 'ICIMBNIMIM000000', 3, 'sec', 'iam', 'iam', 'Identity Access Management '),
(418, 'ICEDNKERER000000', 1, 'sec', 'edr', 'edr', 'Endpoint Detection & Response Service '),
(419, 'ICEDMUERER000000', 2, 'sec', 'edr', 'edr', 'Endpoint Detection & Response Service '),
(420, 'ICEDBNERER000000', 3, 'sec', 'edr', 'edr', 'Endpoint Detection & Response Service '),
(421, 'ESDMNKMf00000000', 1, 'sec', 'dam', 'mc_dam', 'McAfee - Database activity monitoring  '),
(422, 'ESDMMUMf00000000', 2, 'sec', 'dam', 'mc_dam', 'McAfee - Database activity monitoring  '),
(423, 'ESDMBNMf00000000', 3, 'sec', 'dam', 'mc_dam', 'McAfee - Database activity monitoring  '),
(424, 'ICDMNKDMDA000000', 1, 'sec', 'dam', 'enlight_dam', 'ESDS - Database activity monitoring  '),
(425, 'ICDMMUDMDA000000', 2, 'sec', 'dam', 'enlight_dam', 'ESDS - Database activity monitoring  '),
(426, 'ICDMBNDMDA000000', 3, 'sec', 'dam', 'enlight_dam', 'ESDS - Database activity monitoring  '),
(427, 'ESMFNKFN00000000', 1, 'sec', 'mfa', 'mfa', 'OEM MFA Fortinet '),
(428, 'ESMFMUFN00000000', 2, 'sec', 'mfa', 'mfa', 'OEM MFA Fortinet '),
(429, 'ESMFBNFN00000000', 3, 'sec', 'mfa', 'mfa', 'OEM MFA Fortinet '),
(430, 'SOMQNKEX00000000', 1, 'software', 'db', 'ms_express', 'MSSQL-Express-Software '),
(431, 'SOMQMUEX00000000', 2, 'software', 'db', 'ms_express', 'MSSQL-Express-Software  '),
(432, 'SOMQBNEX00000000', 3, 'software', 'db', 'ms_express', 'MSSQL-Express-Software '),
(433, 'SOPSNKCE00000000', 1, 'software', 'db', 'post_com', 'PostgreSQL-DB-Community  '),
(434, 'SOPSMUCE00000000', 2, 'software', 'db', 'post_com', 'PostgreSQL-DB-Community   '),
(435, 'SOPSBNCE00000000', 3, 'software', 'db', 'post_com', 'PostgreSQL-DB-Community  '),
(436, 'SOPSNKSE00000000', 1, 'software', 'db', 'post_ent', 'PostgreSQL-DB-Enterprise  '),
(437, 'SOPSMUSE00000000', 2, 'software', 'db', 'post_ent', 'PostgreSQL-DB-Enterprise   '),
(438, 'SOPSBNSE00000000', 3, 'software', 'db', 'post_ent', 'PostgreSQL-DB-Enterprise  '),
(439, 'SOMGNKCE00000000', 1, 'software', 'db', 'mong_com', 'MongoDB - Community  '),
(440, 'SOMGMUCE00000000', 2, 'software', 'db', 'mong_com', 'MongoDB - Community   '),
(441, 'SOMGBNCE00000000', 3, 'software', 'db', 'mong_com', 'MongoDB - Community  '),
(442, 'SOMGNKSE00000000', 1, 'software', 'db', 'mong_std', 'MongoDB - Standard '),
(443, 'SOMGMUSE00000000', 2, 'software', 'db', 'mong_std', 'MongoDB - Standard  '),
(444, 'SOMGBNSE00000000', 3, 'software', 'db', 'mong_std', 'MongoDB - Standard '),
(445, 'SOMGNKEE00000000', 1, 'software', 'db', 'mong_ent', 'MongoDB - Enterprise '),
(446, 'SOMGMUEE00000000', 2, 'software', 'db', 'mong_ent', 'MongoDB - Enterprise  '),
(447, 'SOMGBNEE00000000', 3, 'software', 'db', 'mong_ent', 'MongoDB - Enterprise '),
(448, 'SOD2NKCE00000000', 1, 'software', 'db', 'db2_comm', 'DB2 - Community  '),
(449, 'SOD2MUCE00000000', 2, 'software', 'db', 'db2_comm', 'DB2 - Community   '),
(450, 'SOD2BNCE00000000', 3, 'software', 'db', 'db2_comm', 'DB2 - Community  '),
(451, 'SOOANKNU00000000', 1, 'software', 'db', 'orc_nup', 'OracleDB-NUP   '),
(452, 'SOOAMUNU00000000', 2, 'software', 'db', 'orc_nup', 'OracleDB-NUP    '),
(453, 'SOOABNNU00000000', 3, 'software', 'db', 'orc_nup', 'OracleDB-NUP   '),
(454, 'SOOANKSE00000000', 1, 'software', 'db', 'orc_std', 'OracleDB-Standard  '),
(455, 'SOOAMUSE00000000', 2, 'software', 'db', 'orc_std', 'OracleDB-Standard   '),
(456, 'SOOABNSE00000000', 3, 'software', 'db', 'orc_std', 'OracleDB-Standard  '),
(457, 'SOOANKEE00000000', 1, 'software', 'db', 'orc_ent', 'OracleDB-Enterprise   '),
(458, 'SOOAMUEE00000000', 2, 'software', 'db', 'orc_ent', 'OracleDB-Enterprise    '),
(459, 'SOOABNEE00000000', 3, 'software', 'db', 'orc_ent', 'OracleDB-Enterprise   '),
(460, 'SOSDNKEE00000000', 1, 'software', 'db', 'syb_ent', 'SybaseDB -Enterprise  '),
(461, 'SOSDMUEE00000000', 2, 'software', 'db', 'syb_ent', 'SybaseDB -Enterprise   '),
(462, 'SOSDBNEE00000000', 3, 'software', 'db', 'syb_ent', 'SybaseDB -Enterprise  '),
(463, 'SOSDNKSL00000000', 1, 'software', 'db', 'syb_smb', 'SybaseDB -SmallBusinnes  '),
(464, 'SOSDMUSL00000000', 2, 'software', 'db', 'syb_smb', 'SybaseDB -SmallBusinnes   '),
(465, 'SOSDBNSL00000000', 3, 'software', 'db', 'syb_smb', 'SybaseDB -SmallBusinnes  '),
(466, 'SOSDNKED00000000', 1, 'software', 'db', 'syb_eva', 'SybaseDB -Evaluation '),
(467, 'SOSDMUED00000000', 2, 'software', 'db', 'syb_eva', 'SybaseDB -Evaluation  '),
(468, 'SOSDBNED00000000', 3, 'software', 'db', 'syb_eva', 'SybaseDB -Evaluation '),
(469, 'SOSDNKEJ00000000', 1, 'software', 'db', 'syb_exp', 'SybaseDB -Express  '),
(470, 'SOSDMUEJ00000000', 2, 'software', 'db', 'syb_exp', 'SybaseDB -Express   '),
(471, 'SOSDBNEJ00000000', 3, 'software', 'db', 'syb_exp', 'SybaseDB -Express  '),
(472, 'SOD2NKSE00000000', 1, 'software', 'db', 'db2_std', 'DB2 - Standard '),
(473, 'SOD2MUSE00000000', 2, 'software', 'db', 'db2_std', 'DB2 - Standard  '),
(474, 'SOD2BNSE00000000', 3, 'software', 'db', 'db2_std', 'DB2 - Standard '),
(475, 'SOD2NKAE00000000', 1, 'software', 'db', 'db2_adv', 'DB2 - Advanced '),
(476, 'SOD2MUAE00000000', 2, 'software', 'db', 'db2_adv', 'DB2 - Advanced  '),
(477, 'SOD2BNAE00000000', 3, 'software', 'db', 'db2_adv', 'DB2 - Advanced '),
(478, 'SOWINKSN00000000', 1, 'software', 'os', 'win_se', 'Windows Standard Edition  '),
(479, 'SOWIMUSN00000000', 2, 'software', 'os', 'win_se', 'Windows Standard Edition   '),
(480, 'SOWIBNSN00000000', 3, 'software', 'os', 'win_se', 'Windows Standard Edition  '),
(481, 'SOWINKDE00000000', 1, 'software', 'os', 'win_dc', 'Windows Data Center Edition  '),
(482, 'SOWIMUDE00000000', 2, 'software', 'os', 'win_dc', 'Windows Data Center Edition   '),
(483, 'SOWIBNDE00000000', 3, 'software', 'os', 'win_dc', 'Windows Data Center Edition  '),
(484, 'SOCONKCO00000000', 1, 'software', 'os', 'centos', 'Linux : CentOS  '),
(485, 'SOCOMUCO00000000', 2, 'software', 'os', 'centos', 'Linux : CentOS   '),
(486, 'SOCOBNCO00000000', 3, 'software', 'os', 'centos', 'Linux : CentOS '),
(487, 'SOUBNKUB00000000', 1, 'software', 'os', 'ubuntu', 'Linux : Ubuntu  '),
(488, 'SOUBMUUB00000000', 2, 'software', 'os', 'ubuntu', 'Linux : Ubuntu   '),
(489, 'SOUBBNUB00000000', 3, 'software', 'os', 'ubuntu', 'Linux : Ubuntu  '),
(490, 'SODNNKDE00000000', 1, 'software', 'os', 'debian', 'Linux : Debian  '),
(491, 'SODNMUDE00000000', 2, 'software', 'os', 'debian', 'Linux : Debian   '),
(492, 'SODNBNDE00000000', 3, 'software', 'os', 'debian', 'Linux : Debian '),
(493, 'SOMQNKSE00000000', 1, 'software', 'db', 'ms_std', 'MSSQL-STD   '),
(494, 'SOMQMUSE00000000', 2, 'software', 'db', 'ms_std', 'MSSQL-STD    '),
(495, 'SOMQBNSE00000000', 3, 'software', 'db', 'ms_std', 'MSSQL-STD   '),
(496, 'SOMQNKEE00000000', 1, 'software', 'db', 'ms_ent', 'MSSQL-Enterprise   '),
(497, 'SOMQMUEE00000000', 2, 'software', 'db', 'ms_ent', 'MSSQL-Enterprise    '),
(498, 'SOMQBNEE00000000', 3, 'software', 'db', 'ms_ent', 'MSSQL-Enterprise   '),
(499, 'SOMQNKDE00000000', 1, 'software', 'db', 'ms_dev', 'MSSQL-Development-Software '),
(500, 'SOMQMUDE00000000', 2, 'software', 'db', 'ms_dev', 'MSSQL-Development-Software  '),
(501, 'SOMQBNDE00000000', 3, 'software', 'db', 'ms_dev', 'MSSQL-Development-Software '),
(502, 'SOMQNKWE00000000', 1, 'software', 'db', 'ms_web', 'MSSQL-Web-Software '),
(503, 'SOMQMUWE00000000', 2, 'software', 'db', 'ms_web', 'MSSQL-Web-Software  '),
(504, 'SOMQBNWE00000000', 3, 'software', 'db', 'ms_web', 'MSSQL-Web-Software '),
(505, 'SOMYNKCE00000000', 1, 'software', 'db', 'my_com', 'MYSQL-Community   '),
(506, 'SOMYMUCE00000000', 2, 'software', 'db', 'my_com', 'MYSQL-Community    '),
(507, 'SOMYBNCE00000000', 3, 'software', 'db', 'my_com', 'MYSQL-Community   '),
(508, 'SOMYNKSE00000000', 1, 'software', 'db', 'my_std', 'MYSQL-Standard   '),
(509, 'SOMYMUSE00000000', 2, 'software', 'db', 'my_std', 'MYSQL-Standard    '),
(510, 'SOMYBNSE00000000', 3, 'software', 'db', 'my_std', 'MYSQL-Standard   '),
(511, 'SOMYNKEE00000000', 1, 'software', 'db', 'my_ent', 'MYSQL-Enterprise   '),
(512, 'SOMYMUEE00000000', 2, 'software', 'db', 'my_ent', 'MYSQL-Enterprise   '),
(513, 'SOMYBNEE00000000', 3, 'software', 'db', 'my_ent', 'MYSQL-Enterprise   '),
(514, 'SOLONKRI00000000', 1, 'software', 'os', 'rhel', 'Linux : RHEL  '),
(515, 'SOLOMURI00000000', 2, 'software', 'os', 'rhel', 'Linux : RHEL   '),
(516, 'SOLOBNRI00000000', 3, 'software', 'os', 'rhel', 'Linux : RHEL '),
(517, 'SOSUNKSU00000000', 1, 'software', 'os', 'suse', 'Linux : SUSE  '),
(518, 'SOSUNKSU00000000', 2, 'software', 'os', 'suse', 'Linux : SUSE  '),
(519, 'SOSUNKSU00000000', 3, 'software', 'os', 'suse', 'Linux : SUSE  '),
(520, 'MSNMNKLMVI000000', 1, 'mng', 'lb_mgmt', 'virt_lb_mgmt', 'Virtual Load Balancer Management'),
(521, 'MSNMMULMVI000000', 2, 'mng', 'lb_mgmt', 'virt_lb_mgmt', 'Virtual Load Balancer Management '),
(522, 'MSNMBNLMVI000000', 3, 'mng', 'lb_mgmt', 'virt_lb_mgmt', 'Virtual Load Balancer Management'),
(523, 'ESAVNKBASM000000', 1, 'sec', 'av', 'sym_av_basic', 'SYMENTEC - Basic Antivirus '),
(524, 'ESAVMUBASM000000', 2, 'sec', 'av', 'sym_av_basic', 'SYMENTEC - Basic Antivirus '),
(525, 'ESAVBNBASM000000', 3, 'sec', 'av', 'sym_av_basic', 'SYMENTEC - Basic Antivirus '),
(526, 'MSOYNKNU00000000', 1, 'mng', 'os_mgmt', 'centos_mgmt', 'CENTOS Operating System Managed Services'),
(527, 'MSOYMUNU00000000', 2, 'mng', 'os_mgmt', 'centos_mgmt', 'CENTOS Operating System Managed Services '),
(528, 'MSOYBNNU00000000', 3, 'mng', 'os_mgmt', 'centos_mgmt', 'CENTOS Operating System Managed Services'),
(529, 'MSOYNKUB00000000', 1, 'mng', 'os_mgmt', 'ubuntu_mgmt', 'UBUNTU Operating System Managed Services'),
(530, 'MSOYMUUB00000000', 2, 'mng', 'os_mgmt', 'ubuntu_mgmt', 'UBUNTU Operating System Managed Services '),
(531, 'MSOYBNUB00000000', 3, 'mng', 'os_mgmt', 'ubuntu_mgmt', 'UBUNTU Operating System Managed Services'),
(532, 'MSNMNKLMPB000000', 1, 'mng', 'lb_mgmt', 'phy_lb_mgmt', 'Physical Load Balancer Management'),
(533, 'MSNMMULMPB000000', 2, 'mng', 'lb_mgmt', 'phy_lb_mgmt', 'Physical Load Balancer Management '),
(534, 'MSNMBNLMPB000000', 3, 'mng', 'lb_mgmt', 'phy_lb_mgmt', 'Physical Load Balancer Management');
INSERT INTO `tbl_product_list` (`id`, `sku_code`, `region_id`, `primary_category`, `sec_category`, `prod_int`, `product_name`) VALUES
(535, 'ESAVNKBATM000000', 1, 'sec', 'av', 'tm_av_basic', 'Trend Micro - Basic Antivirus '),
(536, 'ESAVMUBATM000000', 2, 'sec', 'av', 'tm_av_basic', 'Trend Micro - Basic Antivirus '),
(537, 'ESAVBNBATM000000', 3, 'sec', 'av', 'tm_av_basic', 'Trend Micro - Basic Antivirus '),
(538, 'ESAVNKBAMA000000', 1, 'sec', 'av', 'mc_av_basic', 'McAfee - Basic Antivirus '),
(539, 'ESAVMUBAMA000000', 2, 'sec', 'av', 'mc_av_basic', 'McAfee - Basic Antivirus '),
(540, 'ESAVBNBAMA000000', 3, 'sec', 'av', 'mc_av_basic', 'McAfee - Basic Antivirus '),
(541, 'ESAVNKAHSM000000', 1, 'sec', 'av', 'sym_av_hips', 'SYMENTEC - AV + HIPS '),
(542, 'ESAVMUAHSM000000', 2, 'sec', 'av', 'sym_av_hips', 'SYMENTEC - AV + HIPS '),
(543, 'ESAVBNAHSM000000', 3, 'sec', 'av', 'sym_av_hips', 'SYMENTEC - AV + HIPS '),
(544, 'ESAVNKAHTM000000', 1, 'sec', 'av', 'tm_av_hips', 'Trend Micro - AV + HIPS '),
(545, 'ESAVMUAHTM000000', 2, 'sec', 'av', 'tm_av_hips', 'Trend Micro - AV + HIPS '),
(546, 'ESAVBNAHTM000000', 3, 'sec', 'av', 'tm_av_hips', 'Trend Micro - AV + HIPS '),
(547, 'ESAVNKAHMA000000', 1, 'sec', 'av', 'mc_av_hips', 'McAfee - AV + HIPS '),
(548, 'ESAVMUAHMA000000', 2, 'sec', 'av', 'mc_av_hips', 'McAfee - AV + HIPS '),
(549, 'ESAVBNAHMA000000', 3, 'sec', 'av', 'mc_av_hips', 'McAfee - AV + HIPS '),
(550, 'MSOYNKRE00000000', 1, 'mng', 'os_mgmt', 'rhel_mgmt', 'RHEL - OSMng- Managed Services '),
(551, 'MSOYMURE00000000', 2, 'mng', 'os_mgmt', 'rhel_mgmt', 'RHEL - OSMng- Managed Services  '),
(552, 'MSOYBNRE00000000', 3, 'mng', 'os_mgmt', 'rhel_mgmt', 'RHEL - OSMng- Managed Services '),
(553, 'MSOYNKSU00000000', 1, 'mng', 'os_mgmt', 'suse_mgmt', 'SUSE - OSMng- Managed Services '),
(554, 'MSOYMUSU00000000', 2, 'mng', 'os_mgmt', 'suse_mgmt', 'SUSE - OSMng- Managed Services  '),
(555, 'MSOYBNSU00000000', 3, 'mng', 'os_mgmt', 'suse_mgmt', 'SUSE - OSMng- Managed Services '),
(556, 'MSOYNKSH00000000', 1, 'mng', 'os_mgmt', 'hana_mgmt', 'SUSE HANA Failover OSMng - Managed Services '),
(557, 'MSOYMUSH00000000', 2, 'mng', 'os_mgmt', 'hana_mgmt', 'SUSE HANA Failover OSMng - Managed Services  '),
(558, 'MSOYBNSH00000000', 3, 'mng', 'os_mgmt', 'hana_mgmt', 'SUSE HANA Failover OSMng - Managed Services '),
(559, 'MSOYNKWI00000000', 1, 'mng', 'os_mgmt', 'win_mgmt', 'Windows Operating System Managed Services'),
(560, 'MSOYMUWI00000000', 2, 'mng', 'os_mgmt', 'win_mgmt', 'Windows Operating System Managed Services '),
(561, 'MSOYBNWI00000000', 3, 'mng', 'os_mgmt', 'win_mgmt', 'Windows Operating System Managed Services'),
(562, 'CNVLNKHP5M000000', 1, 'net', 'lb', 'lb_proxy', 'HA Proxy - Virtual Load Balancer - 512 Mbps'),
(563, 'CNVLMUHP5M000000', 2, 'net', 'lb', 'lb_proxy', 'HA Proxy - Virtual Load Balancer - 512 Mbps'),
(564, 'CNVLBNHP5M000000', 3, 'net', 'lb', 'lb_proxy', 'HA Proxy - Virtual Load Balancer - 512 Mbps'),
(565, 'CNVLNKHP1G000000', 1, 'net', 'lb', 'lb_proxy', 'HA Proxy - Virtual Load Balancer - 1 Gpbs'),
(566, 'CNVLMUHP1G000000', 2, 'net', 'lb', 'lb_proxy', 'HA Proxy - Virtual Load Balancer - 1 Gpbs'),
(567, 'CNVLBNHP1G000000', 3, 'net', 'lb', 'lb_proxy', 'HA Proxy - Virtual Load Balancer - 1 Gpbs'),
(568, 'CNVLNKF55M000000', 1, 'net', 'lb', 'lb_proxy', 'F5-Virtual Load Balancer   - 512 Mbps'),
(569, 'CNVLMUF55M000000', 2, 'net', 'lb', 'lb_proxy', 'F5-Virtual Load Balancer   - 512 Mbps'),
(570, 'CNVLBNF55M000000', 3, 'net', 'lb', 'lb_proxy', 'F5-Virtual Load Balancer   - 512 Mbps'),
(571, 'CNVLNKF51G000000', 1, 'net', 'lb', 'lb_proxy', 'F5-Virtual Load Balancer   - 1 Gpbs'),
(572, 'CNVLMUF51G000000', 2, 'net', 'lb', 'lb_proxy', 'F5-Virtual Load Balancer   - 1 Gpbs'),
(573, 'CNVLBNF51G000000', 3, 'net', 'lb', 'lb_proxy', 'F5-Virtual Load Balancer   - 1 Gpbs'),
(574, 'CNVLNKNX5M000000', 1, 'net', 'lb', 'lb_proxy', 'NGINX -Virtual Load Balancer   - 512 Mbps'),
(575, 'CNVLMUNX5M000000', 2, 'net', 'lb', 'lb_proxy', 'NGINX -Virtual Load Balancer   - 512 Mbps'),
(576, 'CNVLBNNX5M000000', 3, 'net', 'lb', 'lb_proxy', 'NGINX -Virtual Load Balancer   - 512 Mbps'),
(577, 'CNVLNKNX1G000000', 1, 'net', 'lb', 'lb_proxy', 'NGINX -Virtual Load Balancer   - 1 Gpbs'),
(578, 'CNVLMUNX1G000000', 2, 'net', 'lb', 'lb_proxy', 'NGINX -Virtual Load Balancer   - 1 Gpbs'),
(579, 'CNVLBNNX1G000000', 3, 'net', 'lb', 'lb_proxy', 'NGINX -Virtual Load Balancer   - 1 Gpbs'),
(580, 'CNVLNKCI5M000000', 1, 'net', 'lb', 'lb_proxy', 'CITRIX - Virtual Load Balancer - 512 Mbps'),
(581, 'CNVLMUCI5M000000', 2, 'net', 'lb', 'lb_proxy', 'CITRIX - Virtual Load Balancer - 512 Mbps'),
(582, 'CNVLBNCI5M000000', 3, 'net', 'lb', 'lb_proxy', 'CITRIX - Virtual Load Balancer - 512 Mbps'),
(583, 'CNVLNKCI1G000000', 1, 'net', 'lb', 'lb_proxy', 'CITRIX - Virtual Load Balancer - 1 Gpbs'),
(584, 'CNVLMUCI1G000000', 2, 'net', 'lb', 'lb_proxy', 'CITRIX - Virtual Load Balancer - 1 Gpbs'),
(585, 'CNVLBNCI1G000000', 3, 'net', 'lb', 'lb_proxy', 'CITRIX - Virtual Load Balancer - 1 Gpbs'),
(586, 'CNVLNKAY5M000000', 1, 'net', 'lb', 'lb_proxy', 'ARRAY - Virtual Load Balancer   - 512 Mbps'),
(587, 'CNVLMUAY5M000000', 2, 'net', 'lb', 'lb_proxy', 'ARRAY - Virtual Load Balancer   - 512 Mbps'),
(588, 'CNVLBNAY5M000000', 3, 'net', 'lb', 'lb_proxy', 'ARRAY - Virtual Load Balancer   - 512 Mbps'),
(589, 'CNVLNKAY1G000000', 1, 'net', 'lb', 'lb_proxy', 'ARRAY - Virtual Load Balancer   - 1 Gpbs'),
(590, 'CNVLMUAY1G000000', 2, 'net', 'lb', 'lb_proxy', 'ARRAY - Virtual Load Balancer   - 1 Gpbs'),
(591, 'CNVLBNAY1G000000', 3, 'net', 'lb', 'lb_proxy', 'ARRAY - Virtual Load Balancer   - 1 Gpbs'),
(592, 'CNPLNKF55M000000', 1, 'net', 'lb', 'lb_proxy', 'F5-Physical Load Balancer   - 512 Mbps'),
(593, 'CNPLMUF55M000000', 2, 'net', 'lb', 'lb_proxy', 'F5-Physical Load Balancer   - 512 Mbps'),
(594, 'CNPLBNF55M000000', 3, 'net', 'lb', 'lb_proxy', 'F5-Physical Load Balancer   - 512 Mbps'),
(595, 'CNPLNKF51G000000', 1, 'net', 'lb', 'lb_proxy', 'F5-Physical Load Balancer   - 1 Gpbs'),
(596, 'CNPLMUF51G000000', 2, 'net', 'lb', 'lb_proxy', 'F5-Physical Load Balancer   - 1 Gpbs'),
(597, 'CNPLBNF51G000000', 3, 'net', 'lb', 'lb_proxy', 'F5-Physical Load Balancer   - 1 Gpbs'),
(598, 'CNPLNKCI5M000000', 1, 'net', 'lb', 'lb_proxy', 'CITRIX - Physical Load Balancer - 512 Mbps'),
(599, 'CNPLMUCI5M000000', 2, 'net', 'lb', 'lb_proxy', 'CITRIX - Physical Load Balancer - 512 Mbps'),
(600, 'CNPLBNCI5M000000', 3, 'net', 'lb', 'lb_proxy', 'CITRIX - Physical Load Balancer - 512 Mbps'),
(601, 'CNPLNKCI1G000000', 1, 'net', 'lb', 'lb_proxy', 'CITRIX - Physical Load Balancer - 1 Gpbs'),
(602, 'CNPLMUCI1G000000', 2, 'net', 'lb', 'lb_proxy', 'CITRIX - Physical Load Balancer - 1 Gpbs'),
(603, 'CNPLBNCI1G000000', 3, 'net', 'lb', 'lb_proxy', 'CITRIX - Physical Load Balancer - 1 Gpbs'),
(604, 'CNPLNKAY5M000000', 1, 'net', 'lb', 'lb_proxy', 'ARRAY - Physical Load Balancer   - 512 Mbps'),
(605, 'CNPLMUAY5M000000', 2, 'net', 'lb', 'lb_proxy', 'ARRAY - Physical Load Balancer   - 512 Mbps'),
(606, 'CNPLBNAY5M000000', 3, 'net', 'lb', 'lb_proxy', 'ARRAY - Physical Load Balancer   - 512 Mbps'),
(607, 'CNPLNKAY1G000000', 1, 'net', 'lb', 'lb_proxy', 'ARRAY - Physical Load Balancer   - 1 Gpbs'),
(608, 'CNPLMUAY1G000000', 2, 'net', 'lb', 'lb_proxy', 'ARRAY - Physical Load Balancer   - 1 Gpbs'),
(609, 'CNPLBNAY1G000000', 3, 'net', 'lb', 'lb_proxy', 'ARRAY - Physical Load Balancer   - 1 Gpbs'),
(610, 'CNIPNKPPI4000000', 1, 'net', 'ip', 'ipv4', 'IPv4- Public IP  '),
(611, 'CNIPMUPPI4000000', 2, 'net', 'ip', 'ipv4', 'IPv4- Public IP  '),
(612, 'CNIPBNPPI4000000', 3, 'net', 'ip', 'ipv4', 'IPv4- Public IP  '),
(613, 'CNIPNKPPI6000000', 1, 'net', 'ip', 'ipv6', 'IPv6 - Public IP  '),
(614, 'CNIPMUPPI6000000', 2, 'net', 'ip', 'ipv6', 'IPv6 - Public IP  '),
(615, 'CNIPBNPPI6000000', 3, 'net', 'ip', 'ipv6', 'IPv6 - Public IP  '),
(616, 'CCSTNKBT15000000', 1, 'storage', 'block_storage', 'block_15', 'Block Storage 15 IOPS per GB '),
(617, 'CCSTNKBTP2000000', 1, 'storage', 'block_storage', 'block_20', 'Block Storage 20 IOPS per GB '),
(618, 'CCSTNKBT25000000', 1, 'storage', 'block_storage', 'block_25', 'Block Storage 25 IOPS per GB '),
(619, 'CCSTNKBTP3000000', 1, 'storage', 'block_storage', 'block_30', 'Block Storage 30 IOPS per GB '),
(620, 'CCSTNKBTP4000000', 1, 'storage', 'block_storage', 'block_40', 'Block Storage 40 IOPS per GB '),
(621, 'CCSTNKBTP5000000', 1, 'storage', 'block_storage', 'block_50', 'Block Storage 50 IOPS per GB '),
(622, 'CCSTNKBTH1000000', 1, 'storage', 'block_storage', 'block_100', 'Block Storage 100 IOPS per GB ');

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
  `id` bigint(20) UNSIGNED NOT NULL,
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
(1, 'Prathamesh', 'Chavan', 'prathamesh.chavan', 'Prathamesh.chavan@esds.co.in', '$2y$10$.yUpa1/XhNr/0AlUKGqVY.TSPZ7NC7XxxH6AIovhgF5pm6pmJ88KS', NULL, 'Pre-sales', 'Jr-solution Architecht', NULL, NULL, NULL, 'c4R5Eg8wqvJWhhfzRUbrktsf2fjbsfMkHlg06C7oGRtGRU4GpGaBnGZGJJHU', '2023-10-16 06:49:46', '2023-10-16 06:49:46');

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_product_list`
--
ALTER TABLE `tbl_product_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=623;

--
-- AUTO_INCREMENT for table `tbl_quot_type`
--
ALTER TABLE `tbl_quot_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_rate_card`
--
ALTER TABLE `tbl_rate_card`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_region`
--
ALTER TABLE `tbl_region`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_saved_estimates`
--
ALTER TABLE `tbl_saved_estimates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
