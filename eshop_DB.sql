-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2020 at 11:17 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eshop_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduled_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(59, 'wc-admin_import_orders', 'complete', '2020-10-16 13:32:16', '2020-10-16 13:32:16', '[241]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602855136;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602855136;}', 2, 1, '2020-10-16 13:32:36', '2020-10-16 13:32:36', 0, NULL),
(60, 'wc-admin_import_orders', 'complete', '2020-10-16 13:47:06', '2020-10-16 13:47:06', '[241]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602856026;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602856026;}', 2, 1, '2020-10-16 13:47:38', '2020-10-16 13:47:38', 0, NULL),
(61, 'wc-admin_import_orders', 'complete', '2020-10-16 13:48:18', '2020-10-16 13:48:18', '[241]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1602856098;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1602856098;}', 2, 1, '2020-10-16 13:48:37', '2020-10-16 13:48:37', 0, NULL),
(62, 'woocommerce_update_marketplace_suggestions', 'complete', '2020-10-19 06:01:17', '2020-10-19 06:01:17', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1603087277;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1603087277;}', 0, 1, '2020-10-19 06:01:32', '2020-10-19 06:01:32', 0, NULL),
(63, 'wc-admin_import_customers', 'complete', '2020-10-19 06:02:48', '2020-10-19 06:02:48', '[1]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1603087368;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1603087368;}', 2, 1, '2020-10-19 06:03:00', '2020-10-19 06:03:00', 0, NULL),
(64, 'wc-admin_import_orders', 'complete', '2020-10-19 06:02:49', '2020-10-19 06:02:49', '[242]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1603087369;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1603087369;}', 2, 1, '2020-10-19 06:03:02', '2020-10-19 06:03:02', 0, NULL),
(65, 'wc-admin_import_orders', 'complete', '2020-10-19 06:06:14', '2020-10-19 06:06:14', '[243]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1603087574;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1603087574;}', 2, 1, '2020-10-19 06:06:32', '2020-10-19 06:06:32', 0, NULL),
(66, 'action_scheduler/migration_hook', 'complete', '2020-10-19 11:27:19', '2020-10-19 11:27:19', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1603106839;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1603106839;}', 1, 1, '2020-10-19 11:27:26', '2020-10-19 11:27:26', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wc-admin-data');

-- --------------------------------------------------------

--
-- Table structure for table `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(134, 59, 'action created', '2020-10-16 13:32:11', '2020-10-16 13:32:11'),
(137, 59, 'action started via WP Cron', '2020-10-16 13:32:32', '2020-10-16 13:32:32'),
(138, 59, 'action complete via WP Cron', '2020-10-16 13:32:36', '2020-10-16 13:32:36'),
(139, 60, 'action created', '2020-10-16 13:47:02', '2020-10-16 13:47:02'),
(140, 60, 'action started via Async Request', '2020-10-16 13:47:34', '2020-10-16 13:47:34'),
(141, 60, 'action complete via Async Request', '2020-10-16 13:47:37', '2020-10-16 13:47:37'),
(142, 61, 'action created', '2020-10-16 13:48:13', '2020-10-16 13:48:13'),
(143, 61, 'action started via Async Request', '2020-10-16 13:48:37', '2020-10-16 13:48:37'),
(144, 61, 'action complete via Async Request', '2020-10-16 13:48:37', '2020-10-16 13:48:37'),
(145, 62, 'action created', '2020-10-19 06:01:17', '2020-10-19 06:01:17'),
(146, 62, 'action started via WP Cron', '2020-10-19 06:01:31', '2020-10-19 06:01:31'),
(147, 62, 'action complete via WP Cron', '2020-10-19 06:01:32', '2020-10-19 06:01:32'),
(148, 63, 'action created', '2020-10-19 06:02:43', '2020-10-19 06:02:43'),
(149, 64, 'action created', '2020-10-19 06:02:44', '2020-10-19 06:02:44'),
(150, 63, 'action started via WP Cron', '2020-10-19 06:03:00', '2020-10-19 06:03:00'),
(151, 63, 'action complete via WP Cron', '2020-10-19 06:03:00', '2020-10-19 06:03:00'),
(152, 64, 'action started via WP Cron', '2020-10-19 06:03:01', '2020-10-19 06:03:01'),
(153, 64, 'action complete via WP Cron', '2020-10-19 06:03:02', '2020-10-19 06:03:02'),
(154, 65, 'action created', '2020-10-19 06:06:09', '2020-10-19 06:06:09'),
(155, 65, 'action started via Async Request', '2020-10-19 06:06:32', '2020-10-19 06:06:32'),
(156, 65, 'action complete via Async Request', '2020-10-19 06:06:32', '2020-10-19 06:06:32'),
(157, 66, 'action created', '2020-10-19 11:26:20', '2020-10-19 11:26:20'),
(158, 66, 'action started via WP Cron', '2020-10-19 11:27:25', '2020-10-19 11:27:25'),
(159, 66, 'action complete via WP Cron', '2020-10-19 11:27:26', '2020-10-19 11:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_commentmeta`
--

INSERT INTO `wp_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 8, 'verified', '0'),
(2, 9, 'rating', '5'),
(3, 9, 'verified', '0'),
(4, 10, 'rating', '4'),
(5, 10, 'verified', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-24 06:05:37', '2020-09-24 06:05:37', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 167, 'WooCommerce', '', '', '', '2020-09-28 04:42:38', '2020-09-28 04:42:38', 'Payment to be made upon delivery. Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 160, 'zaffar', 'zaffar@pixlogix.com', 'http://localhost/EShop', '::1', '2020-09-29 05:28:54', '2020-09-29 05:28:54', 'Enthusiastically leverage existing premium quality vectors with enterprise-wide innovation collaboration Phosfluorescently leverage others enterprisee Phosfluorescently leverage.', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 'comment', 0, 1),
(4, 160, 'me', 'me@me.com', '', '::1', '2020-09-29 06:41:40', '2020-09-29 06:41:40', 'Anonymous Comment', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 'comment', 0, 0),
(5, 160, 'zaffar', 'zaffar@pixlogix.com', 'http://localhost/EShop', '::1', '2020-09-29 06:50:39', '2020-09-29 06:50:39', 'Enthusiastically leverage existing premium quality vectors with enterprise-wide innovation collaboration Phosfluorescently leverage others enterprisee Phosfluorescently leverage.', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 'comment', 4, 1),
(6, 211, 'WooCommerce', '', '', '', '2020-10-01 12:37:16', '2020-10-01 12:37:16', 'Payment to be made upon delivery. Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 212, 'WooCommerce', '', '', '', '2020-10-01 12:46:12', '2020-10-01 12:46:12', 'Payment to be made upon delivery. Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(8, 142, 'zaffar', 'zaffar@pixlogix.com', 'http://localhost/EShop', '::1', '2020-10-02 09:12:16', '2020-10-02 09:12:16', 'good', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 'comment', 0, 1),
(9, 122, 'zaffar', 'zaffar@pixlogix.com', 'http://localhost/EShop', '::1', '2020-10-02 13:00:44', '2020-10-02 13:00:44', 'Perfect', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 'review', 0, 1),
(10, 142, 'zaffar', 'zaffar@pixlogix.com', 'http://localhost/EShop', '::1', '2020-10-02 13:03:35', '2020-10-02 13:03:35', 'good product', 0, '1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36', 'review', 0, 1),
(11, 236, 'WooCommerce', '', '', '', '2020-10-06 06:00:41', '2020-10-06 06:00:41', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(12, 237, 'WooCommerce', '', '', '', '2020-10-06 11:13:28', '2020-10-06 11:13:28', 'Awaiting BACS payment Order status changed from Pending payment to On hold.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 237, 'zaffar', 'zaffar@pixlogix.com', '', '', '2020-10-06 11:17:39', '2020-10-06 11:17:39', 'Order status changed from On hold to Completed.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(14, 236, 'zaffar', 'zaffar@pixlogix.com', '', '', '2020-10-06 11:18:11', '2020-10-06 11:18:11', 'Order status changed from On hold to Cancelled.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(15, 239, 'WooCommerce', '', '', '', '2020-10-10 11:29:38', '2020-10-10 11:29:38', 'Custom Order Note Here', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(16, 240, 'WooCommerce', '', '', '', '2020-10-10 11:29:55', '2020-10-10 11:29:55', 'Custom Order Note Here', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(17, 241, 'WooCommerce', '', '', '', '2020-10-16 13:32:20', '2020-10-16 13:32:20', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(18, 242, 'WooCommerce', '', '', '', '2020-10-19 06:02:52', '2020-10-19 06:02:52', 'Payment to be made upon delivery. Order status changed from Pending payment to Processing.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/EShop', 'yes'),
(2, 'home', 'http://localhost/EShop', 'yes'),
(3, 'blogname', 'Eshop', 'yes'),
(4, 'blogdescription', 'WooCommerce Site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'zaffar@pixlogix.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:195:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:47:\"(([^/]+/)*wishlist)(/(.*))?/page/([0-9]{1,})/?$\";s:76:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]&paged=$matches[5]\";s:30:\"(([^/]+/)*wishlist)(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&wishlist-action=$matches[4]\";s:17:\"index.php/shop/?$\";s:27:\"index.php?post_type=product\";s:47:\"index.php/shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:42:\"index.php/shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:34:\"index.php/shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:20:\"^quick-buy/([\\d]+)/?\";s:33:\"index.php?quickbuy_id=$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:39:\"index.php/tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:65:\"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:60:\"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:41:\"index.php/product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:53:\"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:35:\"index.php/product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:62:\"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:57:\"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:38:\"index.php/product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:50:\"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:32:\"index.php/product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:57:\"index.php//color/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pa_color=$matches[1]&feed=$matches[2]\";s:52:\"index.php//color/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pa_color=$matches[1]&feed=$matches[2]\";s:33:\"index.php//color/([^/]+)/embed/?$\";s:41:\"index.php?pa_color=$matches[1]&embed=true\";s:45:\"index.php//color/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pa_color=$matches[1]&paged=$matches[2]\";s:27:\"index.php//color/([^/]+)/?$\";s:30:\"index.php?pa_color=$matches[1]\";s:56:\"index.php//size/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?pa_size=$matches[1]&feed=$matches[2]\";s:51:\"index.php//size/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?pa_size=$matches[1]&feed=$matches[2]\";s:32:\"index.php//size/([^/]+)/embed/?$\";s:40:\"index.php?pa_size=$matches[1]&embed=true\";s:44:\"index.php//size/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?pa_size=$matches[1]&paged=$matches[2]\";s:26:\"index.php//size/([^/]+)/?$\";s:29:\"index.php?pa_size=$matches[1]\";s:45:\"index.php/product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:38:\"index.php/product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:58:\"index.php/product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:53:\"index.php/product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:46:\"index.php/product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:53:\"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:49:\"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"index.php/product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:34:\"index.php/product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"index.php/mc4wp-form/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:58:\"index.php/mc4wp-form/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"index.php/mc4wp-form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"index.php/mc4wp-form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"index.php/mc4wp-form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:54:\"index.php/mc4wp-form/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"index.php/mc4wp-form/([^/]+)/embed/?$\";s:43:\"index.php?mc4wp-form=$matches[1]&embed=true\";s:41:\"index.php/mc4wp-form/([^/]+)/trackback/?$\";s:37:\"index.php?mc4wp-form=$matches[1]&tb=1\";s:49:\"index.php/mc4wp-form/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?mc4wp-form=$matches[1]&paged=$matches[2]\";s:56:\"index.php/mc4wp-form/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?mc4wp-form=$matches[1]&cpage=$matches[2]\";s:46:\"index.php/mc4wp-form/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?mc4wp-form=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/mc4wp-form/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:63:\"index.php/mc4wp-form/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:45:\"index.php/mc4wp-form/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?mc4wp-form=$matches[1]&page=$matches[2]\";s:37:\"index.php/mc4wp-form/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/mc4wp-form/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/mc4wp-form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/mc4wp-form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/mc4wp-form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/mc4wp-form/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=19&cpage=$matches[1]\";s:27:\"index.php/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:36:\"index.php/comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:39:\"index.php/search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:64:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:51:\"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:38:\"index.php/([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:72:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:72:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:83:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:35:\"index.php/(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:38:\"index.php/(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:43:\"index.php/(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:35:\"index.php/(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:39:\"index.php/(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:38:\"index.php/(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:44:\"index.php/(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:42:\"index.php/(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:44:\"index.php/(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:47:\"index.php/(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:50:\"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:55:\"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:41:\"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:39:\"disable-gutenberg/disable-gutenberg.php\";i:3;s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";i:5;s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";i:6;s:27:\"wc-customizations/index.php\";i:7;s:38:\"woocommerce-quick-buy/wc-quick-buy.php\";i:8;s:27:\"woocommerce/woocommerce.php\";i:9;s:33:\"yith-woocommerce-compare/init.php\";i:10;s:34:\"yith-woocommerce-wishlist/init.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:99:\"/opt/lampp/htdocs/EShop/wp-content/plugins/woo-checkout-field-editor-pro/checkout-form-designer.php\";i:1;s:106:\"/opt/lampp/htdocs/EShop/wp-content/plugins/woo-checkout-field-editor-pro/classes/class-thwcfd-checkout.php\";i:3;s:77:\"/opt/lampp/htdocs/EShop/wp-content/plugins/advanced-custom-fields-pro/acf.php\";i:4;s:96:\"/opt/lampp/htdocs/EShop/wp-content/plugins/woocommerce-quick-buy/includes/class-url-endpoint.php\";i:5;s:97:\"/opt/lampp/htdocs/EShop/wp-content/plugins/woocommerce-quick-buy/includes/class-url-generator.php\";}', 'no'),
(40, 'template', 'EShop', 'yes'),
(41, 'stylesheet', 'EShop', 'yes'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '48748', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'file', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:15:\"Blog Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:53:\"products-compare-for-woocommerce/products-compare.php\";a:2:{i:0;s:25:\"BeRocket_Compare_Products\";i:1;s:12:\"deactivation\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '19', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '8', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1616479525', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:116:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:15:\"manage_berocket\";b:1;s:23:\"manage_berocket_account\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:93:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:14:\"manage_options\";b:1;}}s:15:\"wholesale_buyer\";a:2:{s:4:\"name\";s:15:\"Wholesale Buyer\";s:12:\"capabilities\";a:5:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;s:13:\"buy_wholesale\";b:1;s:9:\"wholesale\";b:1;}}s:18:\"wholesale_tax_free\";a:2:{s:4:\"name\";s:18:\"Wholesale Tax Free\";s:12:\"capabilities\";a:5:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;s:12:\"buy_tax_free\";b:1;s:9:\"wholesale\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:12:\"Search Posts\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:10:\"nav_menu-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:2:{i:0;s:10:\"nav_menu-4\";i:1;s:10:\"nav_menu-3\";}s:12:\"shop_sidebar\";a:3:{i:0;s:32:\"woocommerce_product_categories-5\";i:1;s:26:\"woocommerce_price_filter-2\";i:2;s:22:\"woocommerce_products-2\";}s:19:\"blog_single_sidebar\";a:3:{i:0;s:8:\"search-3\";i:1;s:12:\"categories-3\";i:2;s:37:\"recent-posts-widget-with-thumbnails-2\";}s:12:\"top_sidebar1\";a:1:{i:0;s:28:\"woocommerce_product_search-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:20:{i:1606125415;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1606125936;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1606125941;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1606125950;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1606127418;a:1:{s:35:\"wcct_clear_goaldeal_stock_meta_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1606128882;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1606134693;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1606154742;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1606176000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606195066;a:1:{s:34:\"yith_wcwl_delete_expired_wishlists\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606197940;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606197968;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606197972;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606199503;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606199504;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606199554;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}i:1606205142;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606210293;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1606457140;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:4:{i:2;a:0:{}i:3;a:2:{s:5:\"title\";s:16:\"Customer Service\";s:8:\"nav_menu\";i:17;}i:4;a:2:{s:5:\"title\";s:7:\"Explore\";s:8:\"nav_menu\";i:46;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1600928315;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(143, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:9:\"localhost\";s:8:\"username\";s:6:\"zaffar\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(145, 'disallowed_keys', '', 'no'),
(146, 'comment_previously_approved', '1', 'yes'),
(147, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(148, 'finished_updating_comment_type', '1', 'yes'),
(149, 'db_upgraded', '', 'yes'),
(152, 'can_compress_scripts', '1', 'no'),
(161, 'current_theme', '', 'yes'),
(162, 'theme_mods_EShop', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:11;s:16:\"header_textcolor\";s:0:\"\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601631184;s:4:\"data\";a:5:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:10:\"nav_menu-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:2:{i:0;s:10:\"nav_menu-4\";i:1;s:10:\"nav_menu-3\";}s:12:\"shop_sidebar\";a:3:{i:0;s:32:\"woocommerce_product_categories-5\";i:1;s:26:\"woocommerce_price_filter-2\";i:2;s:22:\"woocommerce_products-2\";}s:19:\"blog_single_sidebar\";a:3:{i:0;s:8:\"search-3\";i:1;s:12:\"categories-3\";i:2;s:37:\"recent-posts-widget-with-thumbnails-2\";}s:12:\"top_sidebar1\";a:1:{i:0;s:28:\"woocommerce_product_search-4\";}}}}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(165, 'recovery_mode_email_last_sent', '1602855923', 'yes'),
(175, 'bodhi_svgs_plugin_version', '2.3.18', 'yes'),
(176, 'png_to_jpg_settings', 'a:1:{s:7:\"general\";a:5:{s:14:\"upload_convert\";i:0;s:11:\"jpg_quality\";s:2:\"90\";s:10:\"only_lower\";s:7:\"checked\";s:14:\"leave_original\";s:7:\"checked\";s:10:\"autodetect\";s:7:\"checked\";}}', 'yes'),
(177, 'acf_version', '5.8.1', 'yes'),
(180, 'action_scheduler_hybrid_store_demarkation', '13', 'yes'),
(181, 'schema-ActionScheduler_StoreSchema', '3.0.1600934694', 'yes'),
(182, 'schema-ActionScheduler_LoggerSchema', '2.0.1600934695', 'yes'),
(185, 'woocommerce_schema_version', '430', 'yes'),
(186, 'woocommerce_store_address', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore', 'yes'),
(187, 'woocommerce_store_address_2', '', 'yes'),
(188, 'woocommerce_store_city', 'vellore', 'yes'),
(189, 'woocommerce_default_country', 'IN:TN', 'yes'),
(190, 'woocommerce_store_postcode', '632001', 'yes'),
(191, 'woocommerce_allowed_countries', 'all', 'yes'),
(192, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(193, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(194, 'woocommerce_ship_to_countries', '', 'yes'),
(195, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(196, 'woocommerce_default_customer_address', 'base', 'yes'),
(197, 'woocommerce_calc_taxes', 'yes', 'yes'),
(198, 'woocommerce_enable_coupons', 'yes', 'yes'),
(199, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(200, 'woocommerce_currency', 'INR', 'yes'),
(201, 'woocommerce_currency_pos', 'left', 'yes'),
(202, 'woocommerce_price_thousand_sep', ',', 'yes'),
(203, 'woocommerce_price_decimal_sep', '.', 'yes'),
(204, 'woocommerce_price_num_decimals', '2', 'yes'),
(205, 'woocommerce_shop_page_id', '14', 'yes'),
(206, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(207, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(208, 'woocommerce_placeholder_image', '13', 'yes'),
(209, 'woocommerce_weight_unit', 'kg', 'yes'),
(210, 'woocommerce_dimension_unit', 'cm', 'yes'),
(211, 'woocommerce_enable_reviews', 'yes', 'yes'),
(212, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(213, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(214, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(215, 'woocommerce_review_rating_required', 'yes', 'no'),
(216, 'woocommerce_manage_stock', 'yes', 'yes'),
(217, 'woocommerce_hold_stock_minutes', '60', 'no'),
(218, 'woocommerce_notify_low_stock', 'yes', 'no'),
(219, 'woocommerce_notify_no_stock', 'yes', 'no'),
(220, 'woocommerce_stock_email_recipient', 'zaffar@pixlogix.com', 'no'),
(221, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(222, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(223, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(224, 'woocommerce_stock_format', '', 'yes'),
(225, 'woocommerce_file_download_method', 'force', 'no'),
(226, 'woocommerce_downloads_require_login', 'no', 'no'),
(227, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(228, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(229, 'woocommerce_prices_include_tax', 'no', 'yes'),
(230, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(231, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(232, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(233, 'woocommerce_tax_classes', '', 'yes'),
(234, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(235, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(236, 'woocommerce_price_display_suffix', '', 'yes'),
(237, 'woocommerce_tax_total_display', 'itemized', 'no'),
(238, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(239, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(240, 'woocommerce_ship_to_destination', 'billing', 'no'),
(241, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(242, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(243, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(244, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(245, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(246, 'woocommerce_registration_generate_username', 'yes', 'no'),
(247, 'woocommerce_registration_generate_password', 'yes', 'no'),
(248, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(249, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(250, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(251, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(252, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(253, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(254, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(255, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(256, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(257, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(258, 'woocommerce_email_from_name', 'Eshop', 'no'),
(259, 'woocommerce_email_from_address', 'zaffar@pixlogix.com', 'no'),
(260, 'woocommerce_email_header_image', '', 'no'),
(261, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(262, 'woocommerce_email_base_color', '#96588a', 'no'),
(263, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(264, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(265, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(266, 'woocommerce_cart_page_id', '15', 'no'),
(267, 'woocommerce_checkout_page_id', '16', 'no'),
(268, 'woocommerce_myaccount_page_id', '17', 'no'),
(269, 'woocommerce_terms_page_id', '', 'no'),
(270, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(271, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(272, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(273, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(274, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(275, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(276, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(277, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(278, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(279, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(280, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(281, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(282, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(283, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(284, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(285, 'woocommerce_api_enabled', 'no', 'yes'),
(286, 'woocommerce_allow_tracking', 'no', 'no'),
(287, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(288, 'woocommerce_single_image_width', '600', 'yes'),
(289, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(290, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(291, 'woocommerce_demo_store', 'no', 'yes'),
(293, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(294, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(295, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(298, 'default_product_cat', '15', 'yes'),
(299, 'woocommerce_admin_notices', 'a:2:{i:0;s:7:\"install\";i:1;s:20:\"no_secure_connection\";}', 'yes'),
(304, 'woocommerce_homescreen_enabled', 'yes', 'yes'),
(307, 'action_scheduler_lock_async-request-runner', '1606125415', 'yes'),
(308, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"V8LbAw2SCROrtvSNoiKDllKs3QbVGhmx\";}', 'yes'),
(309, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(310, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(311, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(312, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(313, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:15:\"Filter by price\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(314, 'widget_woocommerce_product_categories', 'a:2:{i:5;a:8:{s:5:\"title\";s:18:\"Product categories\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:1;s:9:\"max_depth\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(315, 'widget_woocommerce_product_search', 'a:2:{i:4;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(316, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(317, 'widget_woocommerce_products', 'a:2:{i:2;a:7:{s:5:\"title\";s:15:\"Recent Products\";s:6:\"number\";i:3;s:4:\"show\";s:0:\"\";s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:9:\"hide_free\";i:0;s:11:\"show_hidden\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(319, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(320, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(321, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(324, 'woocommerce_admin_version', '1.5.0', 'yes'),
(325, 'woocommerce_admin_install_timestamp', '1600934742', 'yes'),
(329, 'wc_admin_note_home_screen_feedback_homescreen_accessed', '1600934743', 'yes'),
(331, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(333, 'wc_blocks_db_schema_version', '260', 'yes'),
(337, 'woocommerce_onboarding_profile', 'a:9:{s:9:\"completed\";b:1;s:12:\"setup_client\";b:0;s:8:\"industry\";a:7:{i:0;a:1:{s:4:\"slug\";s:27:\"fashion-apparel-accessories\";}i:1;a:1:{s:4:\"slug\";s:21:\"electronics-computers\";}i:2;a:1:{s:4:\"slug\";s:21:\"home-furniture-garden\";}i:3;a:1:{s:4:\"slug\";s:22:\"education-and-learning\";}i:4;a:1:{s:4:\"slug\";s:21:\"art-music-photography\";}i:5;a:1:{s:4:\"slug\";s:13:\"health-beauty\";}i:6;a:1:{s:4:\"slug\";s:10:\"food-drink\";}}s:13:\"product_types\";a:1:{i:0;s:8:\"physical\";}s:13:\"product_count\";s:1:\"0\";s:14:\"selling_venues\";s:2:\"no\";s:19:\"business_extensions\";a:1:{i:0;s:25:\"mailchimp-for-woocommerce\";}s:5:\"theme\";s:5:\"eshop\";s:7:\"plugins\";s:7:\"skipped\";}', 'yes'),
(338, 'woocommerce_onboarding_opt_in', 'yes', 'yes'),
(342, '_transient_woocommerce_reports-transient-version', '1606125350', 'yes'),
(357, 'widget_mc4wp_form_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(358, 'mc4wp_version', '4.8.1', 'yes'),
(359, 'mc4wp_flash_messages', 'a:0:{}', 'no'),
(360, 'wc_remote_inbox_notifications_specs', 'a:3:{s:37:\"ecomm-need-help-setting-up-your-store\";O:8:\"stdClass\":8:{s:4:\"slug\";s:37:\"ecomm-need-help-setting-up-your-store\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:32:\"Need help setting up your Store?\";s:7:\"content\";s:350:\"Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:16:\"set-up-concierge\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:21:\"Schedule free session\";}}s:3:\"url\";s:34:\"https://wordpress.com/me/concierge\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:1:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}}}s:20:\"woocommerce-services\";O:8:\"stdClass\":8:{s:4:\"slug\";s:20:\"woocommerce-services\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:20:\"WooCommerce Services\";s:7:\"content\";s:249:\"WooCommerce Services helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:10:\"learn-more\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:76:\"https://docs.woocommerce.com/document/woocommerce-services/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:10:\"unactioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:1:{i:0;s:20:\"woocommerce-services\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}s:32:\"ecomm-unique-shopping-experience\";O:8:\"stdClass\":8:{s:4:\"slug\";s:32:\"ecomm-unique-shopping-experience\";s:4:\"type\";s:4:\"info\";s:6:\"status\";s:10:\"unactioned\";s:12:\"is_snoozable\";i:0;s:6:\"source\";s:15:\"woocommerce.com\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":3:{s:6:\"locale\";s:5:\"en_US\";s:5:\"title\";s:53:\"For a shopping experience as unique as your customers\";s:7:\"content\";s:274:\"Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.\";}}s:7:\"actions\";a:1:{i:0;O:8:\"stdClass\":6:{s:4:\"name\";s:43:\"learn-more-ecomm-unique-shopping-experience\";s:7:\"locales\";a:1:{i:0;O:8:\"stdClass\":2:{s:6:\"locale\";s:5:\"en_US\";s:5:\"label\";s:10:\"Learn more\";}}s:3:\"url\";s:71:\"https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox\";s:18:\"url_is_admin_query\";b:0;s:10:\"is_primary\";b:1;s:6:\"status\";s:8:\"actioned\";}}s:5:\"rules\";a:2:{i:0;O:8:\"stdClass\":2:{s:4:\"type\";s:17:\"plugins_activated\";s:7:\"plugins\";a:3:{i:0;s:35:\"woocommerce-shipping-australia-post\";i:1;s:32:\"woocommerce-shipping-canada-post\";i:2;s:30:\"woocommerce-shipping-royalmail\";}}i:1;O:8:\"stdClass\":3:{s:4:\"type\";s:18:\"wcadmin_active_for\";s:9:\"operation\";s:1:\"<\";s:4:\"days\";i:2;}}}}', 'yes'),
(361, 'wc_remote_inbox_notifications_stored_state', 'O:8:\"stdClass\":2:{s:22:\"there_were_no_products\";b:1;s:22:\"there_are_now_products\";b:0;}', 'yes'),
(363, 'woocommerce_task_list_welcome_modal_dismissed', '1', 'yes'),
(364, 'woocommerce_task_list_tracked_completed_tasks', 'a:6:{i:0;s:13:\"store_details\";i:1;s:8:\"products\";i:2;s:8:\"payments\";i:3;s:3:\"tax\";i:4;s:8:\"shipping\";i:5;s:10:\"appearance\";}', 'yes'),
(380, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:26:{i:0;a:4:{s:4:\"slug\";s:28:\"product-edit-meta-tab-header\";s:7:\"context\";s:28:\"product-edit-meta-tab-header\";s:5:\"title\";s:22:\"Recommended extensions\";s:13:\"allow-dismiss\";b:0;}i:1;a:6:{s:4:\"slug\";s:39:\"product-edit-meta-tab-footer-browse-all\";s:7:\"context\";s:28:\"product-edit-meta-tab-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:2;a:9:{s:4:\"slug\";s:46:\"product-edit-mailchimp-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-mailchimp\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/mailchimp-for-memberships.svg\";s:5:\"title\";s:25:\"Mailchimp for Memberships\";s:4:\"copy\";s:79:\"Completely automate your email lists by syncing membership changes to Mailchimp\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/mailchimp-woocommerce-memberships/\";}i:3;a:9:{s:4:\"slug\";s:19:\"product-edit-addons\";s:7:\"product\";s:26:\"woocommerce-product-addons\";s:14:\"show-if-active\";a:2:{i:0;s:25:\"woocommerce-subscriptions\";i:1;s:20:\"woocommerce-bookings\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-add-ons.svg\";s:5:\"title\";s:15:\"Product Add-Ons\";s:4:\"copy\";s:93:\"Offer add-ons like gift wrapping, special messages or other special options for your products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-add-ons/\";}i:4;a:9:{s:4:\"slug\";s:46:\"product-edit-woocommerce-subscriptions-gifting\";s:7:\"product\";s:33:\"woocommerce-subscriptions-gifting\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:116:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/gifting-for-subscriptions.svg\";s:5:\"title\";s:25:\"Gifting for Subscriptions\";s:4:\"copy\";s:70:\"Let customers buy subscriptions for others - they\'re the ultimate gift\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:67:\"https://woocommerce.com/products/woocommerce-subscriptions-gifting/\";}i:5;a:9:{s:4:\"slug\";s:42:\"product-edit-teams-woocommerce-memberships\";s:7:\"product\";s:33:\"woocommerce-memberships-for-teams\";s:14:\"show-if-active\";a:1:{i:0;s:23:\"woocommerce-memberships\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:112:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/teams-for-memberships.svg\";s:5:\"title\";s:21:\"Teams for Memberships\";s:4:\"copy\";s:123:\"Adds B2B functionality to WooCommerce Memberships, allowing sites to sell team, group, corporate, or family member accounts\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/teams-woocommerce-memberships/\";}i:6;a:8:{s:4:\"slug\";s:29:\"product-edit-variation-images\";s:7:\"product\";s:39:\"woocommerce-additional-variation-images\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/additional-variation-images.svg\";s:5:\"title\";s:27:\"Additional Variation Images\";s:4:\"copy\";s:72:\"Showcase your products in the best light with a image for each variation\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:73:\"https://woocommerce.com/products/woocommerce-additional-variation-images/\";}i:7;a:9:{s:4:\"slug\";s:47:\"product-edit-woocommerce-subscription-downloads\";s:7:\"product\";s:34:\"woocommerce-subscription-downloads\";s:14:\"show-if-active\";a:1:{i:0;s:25:\"woocommerce-subscriptions\";}s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:113:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscription-downloads.svg\";s:5:\"title\";s:22:\"Subscription Downloads\";s:4:\"copy\";s:57:\"Give customers special downloads with their subscriptions\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:68:\"https://woocommerce.com/products/woocommerce-subscription-downloads/\";}i:8;a:8:{s:4:\"slug\";s:31:\"product-edit-min-max-quantities\";s:7:\"product\";s:30:\"woocommerce-min-max-quantities\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:109:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/min-max-quantities.svg\";s:5:\"title\";s:18:\"Min/Max Quantities\";s:4:\"copy\";s:81:\"Specify minimum and maximum allowed product quantities for orders to be completed\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/min-max-quantities/\";}i:9;a:8:{s:4:\"slug\";s:28:\"product-edit-name-your-price\";s:7:\"product\";s:27:\"woocommerce-name-your-price\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/name-your-price.svg\";s:5:\"title\";s:15:\"Name Your Price\";s:4:\"copy\";s:70:\"Let customers pay what they want - useful for donations, tips and more\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/name-your-price/\";}i:10;a:8:{s:4:\"slug\";s:42:\"product-edit-woocommerce-one-page-checkout\";s:7:\"product\";s:29:\"woocommerce-one-page-checkout\";s:7:\"context\";a:1:{i:0;s:26:\"product-edit-meta-tab-body\";}s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/one-page-checkout.svg\";s:5:\"title\";s:17:\"One Page Checkout\";s:4:\"copy\";s:92:\"Don\'t make customers click around - let them choose products, checkout & pay all on one page\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:63:\"https://woocommerce.com/products/woocommerce-one-page-checkout/\";}i:11;a:4:{s:4:\"slug\";s:19:\"orders-empty-header\";s:7:\"context\";s:24:\"orders-list-empty-header\";s:5:\"title\";s:20:\"Tools for your store\";s:13:\"allow-dismiss\";b:0;}i:12;a:6:{s:4:\"slug\";s:30:\"orders-empty-footer-browse-all\";s:7:\"context\";s:24:\"orders-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:13;a:8:{s:4:\"slug\";s:19:\"orders-empty-zapier\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:18:\"woocommerce-zapier\";s:4:\"icon\";s:97:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/zapier.svg\";s:5:\"title\";s:6:\"Zapier\";s:4:\"copy\";s:88:\"Save time and increase productivity by connecting your store to more than 1000+ services\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:52:\"https://woocommerce.com/products/woocommerce-zapier/\";}i:14;a:8:{s:4:\"slug\";s:30:\"orders-empty-shipment-tracking\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:29:\"woocommerce-shipment-tracking\";s:4:\"icon\";s:108:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipment-tracking.svg\";s:5:\"title\";s:17:\"Shipment Tracking\";s:4:\"copy\";s:86:\"Let customers know when their orders will arrive by adding shipment tracking to emails\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:51:\"https://woocommerce.com/products/shipment-tracking/\";}i:15;a:8:{s:4:\"slug\";s:32:\"orders-empty-table-rate-shipping\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:31:\"woocommerce-table-rate-shipping\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/table-rate-shipping.svg\";s:5:\"title\";s:19:\"Table Rate Shipping\";s:4:\"copy\";s:122:\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/table-rate-shipping/\";}i:16;a:8:{s:4:\"slug\";s:40:\"orders-empty-shipping-carrier-extensions\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:4:\"icon\";s:118:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/shipping-carrier-extensions.svg\";s:5:\"title\";s:27:\"Shipping Carrier Extensions\";s:4:\"copy\";s:116:\"Show live rates from FedEx, UPS, USPS and more directly on your store - never under or overcharge for shipping again\";s:11:\"button-text\";s:13:\"Find Carriers\";s:8:\"promoted\";s:26:\"category-shipping-carriers\";s:3:\"url\";s:99:\"https://woocommerce.com/product-category/woocommerce-extensions/shipping-methods/shipping-carriers/\";}i:17;a:8:{s:4:\"slug\";s:32:\"orders-empty-google-product-feed\";s:7:\"context\";s:22:\"orders-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-product-feeds\";s:4:\"icon\";s:110:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/google-product-feed.svg\";s:5:\"title\";s:19:\"Google Product Feed\";s:4:\"copy\";s:76:\"Increase sales by letting customers find you when they\'re shopping on Google\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:53:\"https://woocommerce.com/products/google-product-feed/\";}i:18;a:4:{s:4:\"slug\";s:35:\"products-empty-header-product-types\";s:7:\"context\";s:26:\"products-list-empty-header\";s:5:\"title\";s:23:\"Other types of products\";s:13:\"allow-dismiss\";b:0;}i:19;a:6:{s:4:\"slug\";s:32:\"products-empty-footer-browse-all\";s:7:\"context\";s:26:\"products-list-empty-footer\";s:9:\"link-text\";s:21:\"Browse all extensions\";s:3:\"url\";s:64:\"https://woocommerce.com/product-category/woocommerce-extensions/\";s:8:\"promoted\";s:31:\"category-woocommerce-extensions\";s:13:\"allow-dismiss\";b:0;}i:20;a:8:{s:4:\"slug\";s:30:\"products-empty-product-vendors\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-vendors\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-vendors.svg\";s:5:\"title\";s:15:\"Product Vendors\";s:4:\"copy\";s:47:\"Turn your store into a multi-vendor marketplace\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-vendors/\";}i:21;a:8:{s:4:\"slug\";s:26:\"products-empty-memberships\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:23:\"woocommerce-memberships\";s:4:\"icon\";s:102:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/memberships.svg\";s:5:\"title\";s:11:\"Memberships\";s:4:\"copy\";s:76:\"Give members access to restricted content or products, for a fee or for free\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:57:\"https://woocommerce.com/products/woocommerce-memberships/\";}i:22;a:9:{s:4:\"slug\";s:35:\"products-empty-woocommerce-deposits\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-deposits\";s:14:\"show-if-active\";a:1:{i:0;s:20:\"woocommerce-bookings\";}s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/deposits.svg\";s:5:\"title\";s:8:\"Deposits\";s:4:\"copy\";s:75:\"Make it easier for customers to pay by offering a deposit or a payment plan\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-deposits/\";}i:23;a:8:{s:4:\"slug\";s:40:\"products-empty-woocommerce-subscriptions\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:25:\"woocommerce-subscriptions\";s:4:\"icon\";s:104:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/subscriptions.svg\";s:5:\"title\";s:13:\"Subscriptions\";s:4:\"copy\";s:97:\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:59:\"https://woocommerce.com/products/woocommerce-subscriptions/\";}i:24;a:8:{s:4:\"slug\";s:35:\"products-empty-woocommerce-bookings\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:20:\"woocommerce-bookings\";s:4:\"icon\";s:99:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/bookings.svg\";s:5:\"title\";s:8:\"Bookings\";s:4:\"copy\";s:99:\"Allow customers to book appointments, make reservations or rent equipment without leaving your site\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:54:\"https://woocommerce.com/products/woocommerce-bookings/\";}i:25;a:8:{s:4:\"slug\";s:30:\"products-empty-product-bundles\";s:7:\"context\";s:24:\"products-list-empty-body\";s:7:\"product\";s:27:\"woocommerce-product-bundles\";s:4:\"icon\";s:106:\"https://woocommerce.com/wp-content/plugins/wccom-plugins/marketplace-suggestions/icons/product-bundles.svg\";s:5:\"title\";s:15:\"Product Bundles\";s:4:\"copy\";s:49:\"Offer customizable bundles and assembled products\";s:11:\"button-text\";s:10:\"Learn More\";s:3:\"url\";s:49:\"https://woocommerce.com/products/product-bundles/\";}}s:7:\"updated\";i:1603087291;}', 'no'),
(381, '_transient_product_query-transient-version', '1603183591', 'yes'),
(382, '_transient_product-transient-version', '1603183591', 'yes'),
(389, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(391, 'woocommerce_task_list_payments', 'a:2:{s:9:\"completed\";i:1;s:9:\"timestamp\";i:1600935237;}', 'yes'),
(398, '_transient_shipping-transient-version', '1602320559', 'yes'),
(400, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:6:\"250.00\";}', 'yes'),
(406, 'woocommerce_onboarding_homepage_post_id', '19', 'yes'),
(407, 'woocommerce_task_list_appearance_complete', '1', 'yes'),
(408, 'woocommerce_task_list_complete', 'yes', 'yes'),
(409, 'woocommerce_demo_store_notice', '', 'yes'),
(430, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(458, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(494, 'cptui_new_install', 'false', 'yes'),
(500, 'category_children', 'a:0:{}', 'yes'),
(506, 'options_phone_number', '60800801582', 'no'),
(507, '_options_phone_number', 'field_5f6c6d738098d', 'no'),
(508, 'options_email_id', 'support@shophub.com', 'no'),
(509, '_options_email_id', 'field_5f6c6db08098e', 'no'),
(510, 'options_facebook_page_link', 'https://facebook.com', 'no'),
(511, '_options_facebook_page_link', 'field_5f6c6dcb8098f', 'no'),
(512, 'options_twitter_link', 'https://twitter.com', 'no'),
(513, '_options_twitter_link', 'field_5f6c6dfe80990', 'no'),
(514, 'options_youtube_channel_link', 'https://youtube.com', 'no'),
(515, '_options_youtube_channel_link', 'field_5f6c6e2180991', 'no'),
(516, 'options_insta_page_link', 'https://instagram.com', 'no'),
(517, '_options_insta_page_link', 'field_5f6c6e3180992', 'no'),
(638, 'options_footer_logo', '66', 'no'),
(639, '_options_footer_logo', 'field_5f6c90524d7d1', 'no'),
(640, 'options_footer_description', '<p class=\"text\">Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue, magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>\r\n&nbsp;\r\n<p class=\"call\">Got Question? Call us 24/7</p>', 'no'),
(641, '_options_footer_description', 'field_5f6c90804d7d2', 'no'),
(735, 'pa_size_children', 'a:0:{}', 'yes'),
(804, 'disable_gutenberg_options', 'a:22:{s:14:\"post-type_page\";s:1:\"1\";s:25:\"post-type_acf-field-group\";s:1:\"1\";s:19:\"post-type_acf-field\";s:1:\"1\";s:17:\"post-type_product\";s:1:\"1\";s:27:\"post-type_product_variation\";s:1:\"1\";s:20:\"post-type_shop_order\";s:1:\"1\";s:27:\"post-type_shop_order_refund\";s:1:\"1\";s:21:\"post-type_shop_coupon\";s:1:\"1\";s:20:\"post-type_mc4wp-form\";s:1:\"1\";s:9:\"templates\";s:0:\"\";s:8:\"post-ids\";s:0:\"\";s:12:\"whitelist-id\";s:0:\"\";s:14:\"whitelist-slug\";s:0:\"\";s:15:\"whitelist-title\";s:0:\"\";s:11:\"disable-nag\";i:1;s:11:\"disable-all\";i:0;s:13:\"styles-enable\";i:0;s:9:\"whitelist\";i:0;s:9:\"hide-menu\";i:0;s:8:\"hide-gut\";i:0;s:12:\"links-enable\";i:0;s:10:\"acf-enable\";i:0;}', 'yes'),
(866, '_transient_health-check-site-status-result', '{\"good\":11,\"recommended\":9,\"critical\":0}', 'yes'),
(1329, 'yit_recently_activated', 'a:0:{}', 'yes'),
(1330, 'yith_wcwl_wishlist_page_id', '143', 'yes'),
(1331, 'yith_wcwl_version', '3.0.14', 'yes'),
(1332, 'yith_wcwl_db_version', '3.0.0', 'yes'),
(1333, 'yith_wcwl_ajax_enable', 'yes', 'yes'),
(1334, 'yith_wfbt_enable_integration', 'yes', 'yes'),
(1335, 'yith_wcwl_after_add_to_wishlist_behaviour', 'remove', 'yes'),
(1336, 'yith_wcwl_show_on_loop', 'yes', 'yes'),
(1337, 'yith_wcwl_loop_position', 'shortcode', 'yes'),
(1338, 'yith_wcwl_button_position', 'shortcode', 'yes'),
(1339, 'yith_wcwl_add_to_wishlist_text', 'Add to Wishlist', 'yes'),
(1340, 'yith_wcwl_product_added_text', 'Product added!', 'yes'),
(1341, 'yith_wcwl_browse_wishlist_text', 'Browse Wishlist', 'yes'),
(1342, 'yith_wcwl_already_in_wishlist_text', 'The product is already in your wishlist!', 'yes'),
(1343, 'yith_wcwl_add_to_wishlist_style', 'button_default', 'yes'),
(1344, 'yith_wcwl_rounded_corners_radius', '16', 'yes'),
(1345, 'yith_wcwl_add_to_wishlist_icon', 'fa-heart-o', 'yes'),
(1346, 'yith_wcwl_add_to_wishlist_custom_icon', '', 'yes'),
(1347, 'yith_wcwl_added_to_wishlist_icon', 'fa-heart', 'yes'),
(1348, 'yith_wcwl_added_to_wishlist_custom_icon', '', 'yes'),
(1349, 'yith_wcwl_custom_css', '', 'yes'),
(1350, 'yith_wcwl_variation_show', '', 'yes'),
(1351, 'yith_wcwl_price_show', '', 'yes'),
(1352, 'yith_wcwl_stock_show', '', 'yes'),
(1353, 'yith_wcwl_show_dateadded', '', 'yes'),
(1354, 'yith_wcwl_add_to_cart_show', '', 'yes'),
(1355, 'yith_wcwl_show_remove', 'yes', 'yes'),
(1356, 'yith_wcwl_repeat_remove_button', '', 'yes'),
(1357, 'yith_wcwl_redirect_cart', 'no', 'yes'),
(1358, 'yith_wcwl_remove_after_add_to_cart', 'yes', 'yes'),
(1359, 'yith_wcwl_enable_share', 'yes', 'yes'),
(1360, 'yith_wcwl_share_fb', 'yes', 'yes'),
(1361, 'yith_wcwl_share_twitter', 'yes', 'yes'),
(1362, 'yith_wcwl_share_pinterest', 'yes', 'yes'),
(1363, 'yith_wcwl_share_email', 'yes', 'yes'),
(1364, 'yith_wcwl_share_whatsapp', 'yes', 'yes'),
(1365, 'yith_wcwl_share_url', 'no', 'yes'),
(1366, 'yith_wcwl_socials_title', 'My wishlist on Eshop', 'yes'),
(1367, 'yith_wcwl_socials_text', '', 'yes'),
(1368, 'yith_wcwl_socials_image_url', '', 'yes'),
(1369, 'yith_wcwl_wishlist_title', 'My wishlist', 'yes'),
(1370, 'yith_wcwl_add_to_cart_text', 'Add to cart', 'yes'),
(1371, 'yith_wcwl_add_to_cart_style', 'link', 'yes'),
(1372, 'yith_wcwl_add_to_cart_rounded_corners_radius', '16', 'yes'),
(1373, 'yith_wcwl_add_to_cart_icon', 'fa-shopping-cart', 'yes'),
(1374, 'yith_wcwl_add_to_cart_custom_icon', '', 'yes'),
(1375, 'yith_wcwl_color_headers_background', '#F4F4F4', 'yes'),
(1376, 'yith_wcwl_fb_button_icon', 'fa-facebook', 'yes'),
(1377, 'yith_wcwl_fb_button_custom_icon', '', 'yes'),
(1378, 'yith_wcwl_tw_button_icon', 'fa-twitter', 'yes'),
(1379, 'yith_wcwl_tw_button_custom_icon', '', 'yes'),
(1380, 'yith_wcwl_pr_button_icon', 'fa-pinterest', 'yes'),
(1381, 'yith_wcwl_pr_button_custom_icon', '', 'yes'),
(1382, 'yith_wcwl_em_button_icon', 'fa-envelope-o', 'yes'),
(1383, 'yith_wcwl_em_button_custom_icon', '', 'yes'),
(1384, 'yith_wcwl_wa_button_icon', 'fa-whatsapp', 'yes'),
(1385, 'yith_wcwl_wa_button_custom_icon', '', 'yes'),
(1386, 'yit_plugin_fw_panel_wc_default_options_set', 'a:2:{s:15:\"yith_wcwl_panel\";b:1;s:21:\"yith_woocompare_panel\";b:1;}', 'yes'),
(1387, 'yith_plugin_fw_promo_2019_bis', '1', 'yes'),
(1388, '_site_transient_timeout_yith_promo_message', '3202281268', 'no'),
(1389, '_site_transient_yith_promo_message', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2019-12-10</expiry_date>\n    <promo>\n        <promo_id>yithblackfriday2019</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <description><![CDATA[\n            Don\'t miss our <strong>30% discount</strong> on all our products! No coupon needed in cart. Valid from <strong>28th November</strong> to <strong>2nd December</strong>.\n        ]]></description>\n        <link>\n            <label>Get your deals now!</label>\n            <url><![CDATA[https://yithemes.com]]></url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n            <border_color>#272121</border_color>\n            <background_color>#ffffff</background_color>\n        </style>\n        <start_date>2019-11-27 23:59:59</start_date>\n        <end_date>2019-12-03 08:00:00</end_date>\n    </promo>\n</promotions>', 'no'),
(1393, 'yith_system_info', 'a:2:{s:11:\"system_info\";a:13:{s:14:\"min_wp_version\";a:1:{s:5:\"value\";s:5:\"5.5.1\";}s:14:\"min_wc_version\";a:1:{s:5:\"value\";s:5:\"4.5.2\";}s:15:\"wp_memory_limit\";a:1:{s:5:\"value\";i:536870912;}s:15:\"min_php_version\";a:1:{s:5:\"value\";s:5:\"7.4.9\";}s:15:\"min_tls_version\";a:1:{s:5:\"value\";s:3:\"1.3\";}s:15:\"imagick_version\";a:1:{s:5:\"value\";s:3:\"n/a\";}s:15:\"wp_cron_enabled\";a:1:{s:5:\"value\";b:1;}s:16:\"mbstring_enabled\";a:1:{s:5:\"value\";b:1;}s:17:\"simplexml_enabled\";a:1:{s:5:\"value\";b:1;}s:10:\"gd_enabled\";a:1:{s:5:\"value\";b:1;}s:13:\"iconv_enabled\";a:1:{s:5:\"value\";b:1;}s:15:\"opcache_enabled\";a:1:{s:5:\"value\";b:0;}s:17:\"url_fopen_enabled\";a:1:{s:5:\"value\";s:1:\"1\";}}s:6:\"errors\";b:0;}', 'yes'),
(1408, 'yith_wcwl_color_add_to_wishlist', 'a:6:{s:10:\"background\";s:7:\"#333333\";s:4:\"text\";s:7:\"#FFFFFF\";s:6:\"border\";s:7:\"#333333\";s:16:\"background_hover\";s:7:\"#333333\";s:10:\"text_hover\";s:7:\"#FFFFFF\";s:12:\"border_hover\";s:7:\"#333333\";}', 'yes'),
(1596, 'wcct_posts_sample_ids', 'a:1:{s:14:\"wcct_timer_bar\";i:156;}', 'no'),
(1599, '_xlcore_transient_core_license_autoload', 'a:2:{s:4:\"time\";i:1632648617;s:5:\"value\";s:22:\"modified on 1601112617\";}', 'no'),
(1600, '_xl_transient_nextmove_upsell_hold_time', 'a:2:{s:4:\"time\";i:1602408619;s:5:\"value\";s:3:\"yes\";}', 'no'),
(1601, 'nextmove_upsell_displayed', '1', 'no'),
(1603, 'autonami_upsell_displayed', '1', 'no'),
(1604, 'wcct_heartbeat_run', '1601877396', 'yes'),
(1614, 'xl_track_day', '6', 'no'),
(1615, 'xlp_is_opted', 'yes', 'no'),
(1616, 'xl_optin_ref', 'wc-settings', 'no'),
(1629, '_xlcore_transient_xl-wp-posts_post_data_158', 'a:2:{s:4:\"time\";i:1601199406;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:158;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-26 09:36:38\";s:13:\"post_date_gmt\";s:19:\"2020-09-26 09:36:38\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:16:\"New Trendz  Copy\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:15:\"new-trendz-copy\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-26 09:36:38\";s:17:\"post_modified_gmt\";s:19:\"2020-09-26 09:36:38\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:54:\"http://localhost/EShop/?wcct_countdown=new-trendz-copy\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:14:\"wcct_countdown\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(1969, 'wc_fields_billing', 'a:11:{s:18:\"billing_first_name\";a:16:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:18:\"billing_first_name\";s:5:\"label\";s:10:\"First name\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:14:\"form-row-first\";}s:8:\"validate\";s:0:\"\";s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:1;s:7:\"enabled\";i:1;s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:10:\"given-name\";s:8:\"priority\";s:2:\"10\";s:6:\"custom\";i:0;}s:17:\"billing_last_name\";a:16:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:17:\"billing_last_name\";s:5:\"label\";s:9:\"Last name\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-last\";}s:8:\"validate\";s:0:\"\";s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:1;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:11:\"family-name\";s:8:\"priority\";i:20;s:6:\"custom\";i:0;}s:13:\"billing_email\";a:16:{s:4:\"type\";s:5:\"email\";s:4:\"name\";s:13:\"billing_email\";s:5:\"label\";s:13:\"Email address\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:14:\"form-row-first\";}s:8:\"validate\";a:1:{i:0;s:5:\"email\";}s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:1;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:14:\"email username\";s:8:\"priority\";i:30;s:6:\"custom\";i:0;}s:13:\"billing_phone\";a:16:{s:4:\"type\";s:3:\"tel\";s:4:\"name\";s:13:\"billing_phone\";s:5:\"label\";s:5:\"Phone\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-last\";}s:8:\"validate\";a:1:{i:0;s:5:\"phone\";}s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:1;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:3:\"tel\";s:8:\"priority\";i:40;s:6:\"custom\";i:0;}s:15:\"billing_country\";a:16:{s:4:\"type\";s:7:\"country\";s:4:\"name\";s:15:\"billing_country\";s:5:\"label\";s:16:\"Country / Region\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:3:{i:0;s:14:\"form-row-first\";i:1;s:13:\"address-field\";i:2;s:23:\"update_totals_on_change\";}s:8:\"validate\";s:0:\"\";s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:1;s:7:\"enabled\";i:1;s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:7:\"country\";s:8:\"priority\";s:2:\"50\";s:6:\"custom\";i:0;}s:13:\"billing_state\";a:16:{s:4:\"type\";s:5:\"state\";s:4:\"name\";s:13:\"billing_state\";s:5:\"label\";s:14:\"State / County\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-last\";i:1;s:13:\"address-field\";}s:8:\"validate\";a:1:{i:0;s:5:\"state\";}s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:1;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:14:\"address-level1\";s:8:\"priority\";i:60;s:6:\"custom\";i:0;}s:17:\"billing_address_1\";a:16:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:17:\"billing_address_1\";s:5:\"label\";s:14:\"Street address\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:28:\"House number and street name\";s:5:\"class\";a:2:{i:0;s:14:\"form-row-first\";i:1;s:13:\"address-field\";}s:8:\"validate\";s:0:\"\";s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:1;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:13:\"address-line1\";s:8:\"priority\";i:70;s:6:\"custom\";i:0;}s:17:\"billing_address_2\";a:16:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:17:\"billing_address_2\";s:5:\"label\";s:0:\"\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:39:\"Apartment, suite, unit, etc. (optional)\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-last\";i:1;s:13:\"address-field\";}s:8:\"validate\";s:0:\"\";s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:0;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:13:\"address-line2\";s:8:\"priority\";i:80;s:6:\"custom\";i:0;}s:12:\"billing_city\";a:16:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:12:\"billing_city\";s:5:\"label\";s:11:\"Town / City\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:14:\"form-row-first\";i:1;s:13:\"address-field\";}s:8:\"validate\";s:0:\"\";s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:1;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:14:\"address-level2\";s:8:\"priority\";i:90;s:6:\"custom\";i:0;}s:16:\"billing_postcode\";a:16:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:16:\"billing_postcode\";s:5:\"label\";s:14:\"Postcode / ZIP\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:2:{i:0;s:13:\"form-row-last\";i:1;s:13:\"address-field\";}s:8:\"validate\";a:1:{i:0;s:8:\"postcode\";}s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:1;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:11:\"postal-code\";s:8:\"priority\";i:100;s:6:\"custom\";i:0;}s:15:\"billing_company\";a:16:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:15:\"billing_company\";s:5:\"label\";s:12:\"Company name\";s:7:\"default\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:5:\"class\";a:1:{i:0;s:13:\"form-row-wide\";}s:8:\"validate\";s:0:\"\";s:10:\"disp_style\";s:0:\"\";s:8:\"required\";i:0;s:7:\"enabled\";s:1:\"1\";s:13:\"show_in_email\";i:0;s:13:\"show_in_order\";i:0;s:7:\"options\";s:0:\"\";s:12:\"autocomplete\";s:12:\"organization\";s:8:\"priority\";i:110;s:6:\"custom\";i:0;}}', 'yes'),
(2049, '_transient_orders-transient-version', '1603087371', 'yes'),
(2151, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.2.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1601277856;s:7:\"version\";s:5:\"5.2.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(2202, 'options_address', 'NO. 342 – London Oxford Street. 012 United Kingdom.', 'no'),
(2203, '_options_address', 'field_5f719b1c5ede3', 'no'),
(2763, 'woocommerce_sales_record_date', '2020-10-06', 'yes'),
(2764, 'woocommerce_sales_record_amount', '154', 'yes'),
(3114, 'widget_woof_widget', 'a:2:{i:2;a:8:{s:5:\"title\";s:15:\"Products Filter\";s:22:\"additional_text_before\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:24:\"woof_start_filtering_btn\";s:1:\"0\";s:11:\"ajax_redraw\";s:1:\"0\";s:12:\"btn_position\";s:1:\"b\";s:15:\"dynamic_recount\";s:2:\"-1\";s:10:\"autosubmit\";s:2:\"-1\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(3115, 'woof_first_init', '1', 'yes'),
(3116, 'woof_set_automatically', '0', 'yes'),
(3117, 'woof_autosubmit', '1', 'yes'),
(3118, 'woof_show_count', '1', 'yes'),
(3119, 'woof_show_count_dynamic', '0', 'yes'),
(3120, 'woof_hide_dynamic_empty_pos', '0', 'yes'),
(3121, 'woof_try_ajax', '0', 'yes'),
(3122, 'woof_checkboxes_slide', '1', 'yes'),
(3123, 'woof_hide_red_top_panel', '0', 'yes'),
(3124, 'woof_sort_terms_checked', '0', 'yes'),
(3125, 'woof_filter_btn_txt', '', 'yes'),
(3126, 'woof_reset_btn_txt', '', 'yes'),
(3127, 'woof_settings', 'a:50:{s:11:\"items_order\";s:68:\"by_price,product_visibility,product_cat,product_tag,pa_color,pa_size\";s:8:\"by_price\";a:9:{s:4:\"show\";s:1:\"3\";s:12:\"tooltip_text\";s:0:\"\";s:11:\"show_button\";s:1:\"0\";s:10:\"title_text\";s:0:\"\";s:18:\"show_toggle_button\";s:1:\"0\";s:6:\"ranges\";s:0:\"\";s:17:\"first_option_text\";s:0:\"\";s:15:\"ion_slider_step\";s:1:\"0\";s:9:\"price_tax\";s:1:\"0\";}s:8:\"tax_type\";a:5:{s:18:\"product_visibility\";s:5:\"radio\";s:11:\"product_cat\";s:5:\"radio\";s:11:\"product_tag\";s:5:\"radio\";s:8:\"pa_color\";s:5:\"radio\";s:7:\"pa_size\";s:5:\"radio\";}s:14:\"excluded_terms\";a:5:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:8:\"pa_color\";s:0:\"\";s:7:\"pa_size\";s:0:\"\";}s:16:\"tax_block_height\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:8:\"pa_color\";s:1:\"0\";s:7:\"pa_size\";s:1:\"0\";}s:16:\"show_title_label\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:8:\"pa_color\";s:1:\"0\";s:7:\"pa_size\";s:1:\"0\";}s:18:\"show_toggle_button\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:8:\"pa_color\";s:1:\"0\";s:7:\"pa_size\";s:1:\"0\";}s:12:\"tooltip_text\";a:5:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:8:\"pa_color\";s:0:\"\";s:7:\"pa_size\";s:0:\"\";}s:13:\"dispay_in_row\";a:5:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:8:\"pa_color\";s:1:\"0\";s:7:\"pa_size\";s:1:\"0\";}s:7:\"orderby\";a:5:{s:18:\"product_visibility\";s:2:\"-1\";s:11:\"product_cat\";s:2:\"-1\";s:11:\"product_tag\";s:2:\"-1\";s:8:\"pa_color\";s:2:\"-1\";s:7:\"pa_size\";s:2:\"-1\";}s:5:\"order\";a:5:{s:18:\"product_visibility\";s:3:\"ASC\";s:11:\"product_cat\";s:3:\"ASC\";s:11:\"product_tag\";s:3:\"ASC\";s:8:\"pa_color\";s:3:\"ASC\";s:7:\"pa_size\";s:3:\"ASC\";}s:16:\"comparison_logic\";a:5:{s:18:\"product_visibility\";s:2:\"OR\";s:11:\"product_cat\";s:2:\"OR\";s:11:\"product_tag\";s:2:\"OR\";s:8:\"pa_color\";s:2:\"OR\";s:7:\"pa_size\";s:2:\"OR\";}s:16:\"custom_tax_label\";a:5:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:8:\"pa_color\";s:0:\"\";s:7:\"pa_size\";s:0:\"\";}s:23:\"not_toggled_terms_count\";a:5:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:8:\"pa_color\";s:0:\"\";s:7:\"pa_size\";s:0:\"\";}s:11:\"icheck_skin\";s:4:\"none\";s:12:\"overlay_skin\";s:7:\"default\";s:19:\"overlay_skin_bg_img\";s:0:\"\";s:18:\"plainoverlay_color\";s:0:\"\";s:25:\"default_overlay_skin_word\";s:0:\"\";s:10:\"use_chosen\";s:1:\"1\";s:17:\"use_beauty_scroll\";s:1:\"0\";s:15:\"ion_slider_skin\";s:8:\"skinNice\";s:11:\"use_tooltip\";s:1:\"1\";s:16:\"woof_tooltip_img\";s:0:\"\";s:25:\"woof_auto_hide_button_img\";s:0:\"\";s:25:\"woof_auto_hide_button_txt\";s:0:\"\";s:26:\"woof_auto_subcats_plus_img\";s:0:\"\";s:27:\"woof_auto_subcats_minus_img\";s:0:\"\";s:11:\"toggle_type\";s:4:\"text\";s:18:\"toggle_opened_text\";s:0:\"\";s:18:\"toggle_closed_text\";s:0:\"\";s:19:\"toggle_opened_image\";s:0:\"\";s:19:\"toggle_closed_image\";s:0:\"\";s:16:\"custom_front_css\";s:0:\"\";s:15:\"custom_css_code\";s:0:\"\";s:18:\"js_after_ajax_done\";s:0:\"\";s:20:\"init_only_on_reverse\";s:1:\"0\";s:12:\"init_only_on\";s:0:\"\";s:8:\"per_page\";s:2:\"-1\";s:17:\"optimize_js_files\";s:1:\"0\";s:25:\"listen_catalog_visibility\";s:1:\"0\";s:23:\"disable_swoof_influence\";s:1:\"0\";s:16:\"cache_count_data\";s:1:\"0\";s:11:\"cache_terms\";s:1:\"0\";s:19:\"show_woof_edit_view\";s:1:\"1\";s:22:\"custom_extensions_path\";s:0:\"\";s:19:\"result_count_redraw\";s:0:\"\";s:21:\"order_dropdown_redraw\";s:0:\"\";s:15:\"per_page_redraw\";s:0:\"\";s:20:\"activated_extensions\";s:0:\"\";}', 'yes'),
(3129, 'woof_version', '1.2.4', 'yes'),
(3130, 'woof_alert', 'a:2:{s:29:\"woocommerce_currency_switcher\";s:0:\"\";s:23:\"woocommerce_bulk_editor\";s:0:\"\";}', 'no'),
(3131, 'woof_manage_rate_alert', '1601389039', 'yes'),
(3447, 'mc4wp', 'a:6:{s:19:\"grecaptcha_site_key\";s:0:\"\";s:21:\"grecaptcha_secret_key\";s:0:\"\";s:7:\"api_key\";s:36:\"f2cfde1ce47e983437a07ccdcb1dd6b1-us2\";s:20:\"allow_usage_tracking\";i:0;s:15:\"debug_log_level\";s:7:\"warning\";s:18:\"first_activated_on\";i:1601461815;}', 'yes'),
(3479, 'mc4wp_default_form_id', '179', 'yes'),
(3480, 'mc4wp_form_stylesheets', 'a:0:{}', 'yes'),
(3594, 'widget_yith-woocompare-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3595, 'yith_woocompare_is_button', 'button', 'yes'),
(3596, 'yith_woocompare_button_text', 'Add to compare', 'yes'),
(3597, 'yith_woocompare_compare_button_in_product_page', 'yes', 'yes'),
(3598, 'yith_woocompare_compare_button_in_products_list', 'yes', 'yes'),
(3599, 'yith_woocompare_auto_open', 'yes', 'yes'),
(3600, 'yith_woocompare_table_text', 'Compare products', 'yes'),
(3601, 'yith_woocompare_fields_attrs', 'a:11:{i:0;s:5:\"image\";i:1;s:5:\"title\";i:2;s:5:\"price\";i:3;s:11:\"add-to-cart\";i:4;s:11:\"description\";i:5;s:3:\"sku\";i:6;s:5:\"stock\";i:7;s:6:\"weight\";i:8;s:10:\"dimensions\";i:9;s:8:\"pa_color\";i:10;s:7:\"pa_size\";}', 'yes'),
(3602, 'yith_woocompare_price_end', 'yes', 'yes'),
(3603, 'yith_woocompare_add_to_cart_end', 'no', 'yes'),
(3604, 'yith_woocompare_image_size', 'a:3:{s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"154\";s:4:\"crop\";s:2:\"on\";}', 'yes'),
(3605, '_wponion_endpoints', '444e6b2ca1a58f88bcae771173500e20', 'yes'),
(3607, '_wponion_db_cache', 'a:0:{}', 'no'),
(3609, '_wc_quick_buy', 'a:15:{s:15:\"auto_clear_cart\";s:1:\"1\";s:8:\"url_type\";s:8:\"site_url\";s:12:\"url_endpoint\";s:14:\"quick-buy/{id}\";s:17:\"redirect_location\";s:8:\"checkout\";s:15:\"custom_location\";s:1:\"/\";s:21:\"enabled_product_types\";a:1:{i:0;s:6:\"simple\";}s:15:\"hide_if_in_cart\";s:4:\"none\";s:8:\"quantity\";s:1:\"1\";s:28:\"quick_buy_link_product_types\";a:1:{i:0;s:6:\"simple\";}s:29:\"single_product_page_placement\";s:4:\"none\";s:19:\"shop_page_placement\";s:12:\"after_button\";s:12:\"button_label\";s:0:\"\";s:19:\"button_style_styles\";s:4:\"none\";s:9:\"css_class\";s:6:\"ti-eye\";s:10:\"custom_css\";s:70:\".quick_buy_a_tag{}\r\n\r\n.quick_buy_button_tag{}\r\n\r\n.quick_buy_button{}\r\n\";}', 'yes'),
(3715, 'yith_woocompare_fields', 'a:11:{s:5:\"image\";b:1;s:5:\"title\";b:1;s:5:\"price\";b:1;s:11:\"add-to-cart\";b:1;s:11:\"description\";b:1;s:3:\"sku\";b:1;s:5:\"stock\";b:1;s:6:\"weight\";b:1;s:10:\"dimensions\";b:1;s:8:\"pa_color\";b:1;s:7:\"pa_size\";b:1;}', 'yes'),
(3787, 'widget_berocket_compare_products_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3788, 'BeRocket_Framework_plugins_version_check', 'a:1:{s:16:\"compare_products\";s:7:\"3.5.1.7\";}', 'yes'),
(3789, 'berocket_admin_notices', 'a:1:{i:20;a:1:{i:0;a:1:{i:0;a:1:{s:9:\"subscribe\";a:15:{s:5:\"start\";i:0;s:3:\"end\";i:0;s:4:\"name\";s:9:\"subscribe\";s:4:\"html\";s:136:\"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.\";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:400;s:9:\"subscribe\";b:1;s:6:\"closed\";s:1:\"0\";s:8:\"priority\";i:20;s:6:\"height\";i:50;s:6:\"repeat\";b:0;s:11:\"repeatcount\";i:1;s:5:\"image\";a:4:{s:5:\"local\";s:133:\"http://localhost/EShop/wp-content/plugins/products-compare-for-woocommerce/berocket/includes/../assets/images/ad_white_on_orange.webp\";s:5:\"width\";i:239;s:6:\"height\";i:118;s:5:\"scale\";d:0.4237288135593220150809656843193806707859039306640625;}}}}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3792, 'berocket_current_displayed_notice', 'a:15:{s:5:\"start\";i:0;s:3:\"end\";i:0;s:4:\"name\";s:9:\"subscribe\";s:4:\"html\";s:136:\"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.\";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:400;s:9:\"subscribe\";b:1;s:6:\"closed\";s:1:\"0\";s:8:\"priority\";i:20;s:6:\"height\";i:50;s:6:\"repeat\";b:0;s:11:\"repeatcount\";i:1;s:5:\"image\";a:4:{s:5:\"local\";s:133:\"http://localhost/EShop/wp-content/plugins/products-compare-for-woocommerce/berocket/includes/../assets/images/ad_white_on_orange.webp\";s:5:\"width\";i:239;s:6:\"height\";i:118;s:5:\"scale\";d:0.4237288135593220150809656843193806707859039306640625;}}', 'yes'),
(3793, 'berocket_admin_notices_rate_stars', 'a:1:{i:4;a:2:{s:4:\"time\";i:1602133042;s:5:\"count\";i:0;}}', 'yes'),
(3868, 'vtprd_setup_options', 'a:65:{s:25:\"register_under_tools_menu\";s:2:\"no\";s:23:\"use_lifetime_max_limits\";s:3:\"yes\";s:34:\"discount_floor_pct_per_single_item\";s:3:\"100\";s:22:\"discount_floor_pct_msg\";s:32:\"System Max xx% Discount reached.\";s:33:\"show_checkout_discount_total_line\";s:3:\"yes\";s:35:\"show_checkout_discount_detail_lines\";s:3:\"yes\";s:45:\"show_cartWidget_discount_titles_above_details\";s:3:\"yes\";s:17:\"debugging_mode_on\";s:2:\"no\";s:19:\"custom_checkout_css\";s:0:\"\";s:28:\"checkout_credit_detail_label\";s:1:\"-\";s:27:\"checkout_credit_total_label\";s:1:\"-\";s:27:\"checkout_html_colspan_value\";s:1:\"3\";s:29:\"cartWidget_html_colspan_value\";s:1:\"5\";s:35:\"max_purch_rule_lifetime_limit_by_ip\";s:2:\"no\";s:38:\"max_purch_rule_lifetime_limit_by_email\";s:3:\"yes\";s:44:\"max_purch_rule_lifetime_limit_by_billto_name\";s:3:\"yes\";s:44:\"max_purch_rule_lifetime_limit_by_billto_addr\";s:3:\"yes\";s:44:\"max_purch_rule_lifetime_limit_by_shipto_name\";s:3:\"yes\";s:44:\"max_purch_rule_lifetime_limit_by_shipto_addr\";s:3:\"yes\";s:24:\"use_plugin_front_end_css\";s:3:\"yes\";s:17:\"use_this_timeZone\";s:4:\"keep\";s:35:\"bogo_auto_add_the_same_product_type\";s:7:\"allAdds\";s:46:\"show_checkout_discount_details_grouped_by_what\";s:4:\"rule\";s:48:\"show_cartWidget_discount_details_grouped_by_what\";s:4:\"rule\";s:43:\"show_checkout_discount_titles_above_details\";s:3:\"yes\";s:32:\"show_checkout_purchases_subtotal\";s:13:\"withDiscounts\";s:34:\"show_cartWidget_purchases_subtotal\";s:4:\"none\";s:35:\"show_cartWidget_discount_total_line\";s:3:\"yes\";s:37:\"show_cartWidget_discount_detail_lines\";s:3:\"yes\";s:30:\"cartWidget_credit_detail_label\";s:1:\"-\";s:29:\"cartWidget_credit_total_label\";s:1:\"-\";s:30:\"checkout_credit_subtotal_title\";s:26:\"Subtotal - Cart Purchases:\";s:27:\"checkout_credit_total_title\";s:20:\"Cart Discount Total:\";s:45:\"show_checkout_credit_total_when_coupon_active\";s:3:\"yes\";s:32:\"cartWidget_credit_subtotal_title\";s:9:\"Products:\";s:29:\"cartWidget_credit_total_title\";s:10:\"Discounts:\";s:25:\"show_yousave_one_some_msg\";s:3:\"yes\";s:14:\"show_old_price\";s:7:\"docOnly\";s:14:\"show_rule_msgs\";s:7:\"docOnly\";s:21:\"discount_purchase_log\";s:3:\"yes\";s:28:\"max_purch_checkout_forms_set\";s:1:\"0\";s:44:\"show_error_before_checkout_products_selector\";s:11:\".shop_table\";s:43:\"show_error_before_checkout_address_selector\";s:17:\"#customer_details\";s:34:\"lifetime_purchase_button_error_msg\";s:264:\"Based on previous discounted order(s), a Discount Limit has been exceeded. The total Discount for this order has been reduced. Please return to the Cart page to see the change in the discount, or hit the \"Purchase\" button a second time to complete the transaction.\";s:26:\"checkout_new_subtotal_line\";s:3:\"yes\";s:27:\"checkout_new_subtotal_label\";s:23:\"Subtotal with Discount:\";s:28:\"cartWidget_new_subtotal_line\";s:3:\"yes\";s:29:\"cartWidget_new_subtotal_label\";s:23:\"Subtotal with Discount:\";s:27:\"show_catalog_price_crossout\";s:3:\"yes\";s:20:\"discount_taken_where\";s:17:\"discountUnitPrice\";s:26:\"give_more_or_less_discount\";s:4:\"more\";s:17:\"show_price_suffix\";s:0:\"\";s:38:\"show_unit_price_cart_discount_crossout\";s:3:\"yes\";s:41:\"show_unit_price_cart_discount_computation\";s:2:\"no\";s:31:\"unit_price_cart_savings_message\";s:28:\"You Saved {cart_save_amount}\";s:26:\"wholesale_products_display\";s:0:\"\";s:32:\"wholesale_products_price_display\";s:0:\"\";s:24:\"allow_license_info_reset\";s:2:\"no\";s:19:\"current_pro_version\";s:0:\"\";s:20:\"limit_cart_discounts\";s:0:\"\";s:27:\"coupon_discount_coupon_name\";s:0:\"\";s:35:\"show_woo_coupon_cart_totals_00_line\";s:2:\"no\";s:34:\"remove_all_extra_js_from_rule_page\";s:3:\"yes\";s:35:\"remove_all_extra_css_from_rule_page\";s:3:\"yes\";s:37:\"max_purch_rule_lifetime_limit_by_user\";s:3:\"yes\";}', 'yes'),
(3869, 'vtprd_data_update_options', 'a:2:{s:16:\"required_updates\";a:4:{s:22:\"2.0.0 Rule conversions\";b:1;s:25:\"2.0.0.7 Auto Coupon Label\";b:1;s:23:\"2.0.0.9 Remove Extra JS\";b:1;s:24:\"2.0.2.0 Rule conversions\";b:1;}s:16:\"optional_updates\";a:2:{s:19:\"2.0.0 Create Tables\";b:1;s:18:\"2.0.0 Alter Column\";b:1;}}', 'yes'),
(3870, 'vtprd_no_check_on_activation', 'yes', 'yes'),
(3871, 'vtprd_rule_category_children', 'a:0:{}', 'yes'),
(3872, 'vtprd_license_options', 'a:32:{s:3:\"key\";s:0:\"\";s:5:\"email\";s:0:\"\";s:12:\"prod_or_test\";s:4:\"prod\";s:31:\"prod_url_supplied_for_test_site\";s:0:\"\";s:3:\"url\";s:15:\"localhost/EShop\";s:6:\"status\";s:12:\"unregistered\";s:5:\"state\";s:12:\"unregistered\";s:3:\"msg\";s:0:\"\";s:7:\"strikes\";s:0:\"\";s:15:\"error_try_count\";i:0;s:11:\"last_action\";s:0:\"\";s:19:\"last_failed_rego_ts\";s:0:\"\";s:26:\"last_failed_rego_date_time\";s:0:\"\";s:23:\"last_successful_rego_ts\";s:0:\"\";s:30:\"last_successful_rego_date_time\";s:0:\"\";s:23:\"last_response_from_host\";s:0:\"\";s:26:\"last_check_date_in_seconds\";s:0:\"\";s:19:\"params_sent_to_host\";s:0:\"\";s:7:\"expires\";s:0:\"\";s:14:\"diagnostic_msg\";s:0:\"\";s:16:\"strikes_possible\";i:3;s:22:\"plugin_current_version\";N;s:18:\"plugin_new_version\";N;s:25:\"pro_plugin_version_status\";s:0:\"\";s:11:\"pro_version\";s:0:\"\";s:24:\"pro_minimum_free_version\";s:0:\"\";s:14:\"pro_deactivate\";s:0:\"\";s:22:\"localhost_warning_done\";s:0:\"\";s:29:\"user_role_editor_warning_done\";s:0:\"\";s:28:\"older_wordpress_warning_done\";s:0:\"\";s:8:\"home_url\";s:22:\"http://localhost/EShop\";s:9:\"rego_done\";s:0:\"\";}', 'yes'),
(3890, '_xlcore_transient_xl-wp-posts_post_data_156', 'a:2:{s:4:\"time\";i:1601619389;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:156;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-26 09:29:57\";s:13:\"post_date_gmt\";s:19:\"2020-09-26 09:29:57\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:21:\"Countdown Timer + Bar\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:12:\"wcctdisabled\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:19:\"countdown-timer-bar\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-26 09:29:57\";s:17:\"post_modified_gmt\";s:19:\"2020-09-26 09:29:57\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:64:\"http://localhost/EShop/index.php/2020/09/26/countdown-timer-bar/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:14:\"wcct_countdown\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(3891, '_xlcore_transient_finale_wcct_countdown_post_meta_156', 'a:2:{s:4:\"time\";i:1601540190;s:5:\"value\";a:48:{s:19:\"_wcct_campaign_type\";s:10:\"fixed_date\";s:41:\"_wcct_campaign_fixed_recurring_start_date\";s:10:\"2020-09-25\";s:41:\"_wcct_campaign_fixed_recurring_start_time\";s:8:\"12:00 AM\";s:29:\"_wcct_campaign_fixed_end_date\";s:10:\"2020-10-01\";s:29:\"_wcct_campaign_fixed_end_time\";s:8:\"12:00 AM\";s:22:\"_wcct_deal_enable_goal\";s:1:\"1\";s:16:\"_wcct_deal_units\";s:6:\"custom\";s:23:\"_wcct_deal_custom_units\";s:1:\"8\";s:29:\"_wcct_deal_inventory_goal_for\";s:10:\"recurrence\";s:39:\"_wcct_deal_custom_units_allow_backorder\";s:2:\"no\";s:23:\"_wcct_deal_end_campaign\";s:2:\"no\";s:32:\"_wcct_location_timer_show_single\";s:1:\"1\";s:36:\"_wcct_location_timer_single_location\";s:1:\"4\";s:34:\"_wcct_appearance_timer_single_skin\";s:11:\"round_ghost\";s:38:\"_wcct_appearance_timer_single_bg_color\";s:7:\"#8cc63f\";s:40:\"_wcct_appearance_timer_single_text_color\";s:7:\"#444444\";s:45:\"_wcct_appearance_timer_single_font_size_timer\";s:2:\"26\";s:39:\"_wcct_appearance_timer_single_font_size\";s:2:\"13\";s:40:\"_wcct_appearance_timer_single_label_days\";s:4:\"days\";s:39:\"_wcct_appearance_timer_single_label_hrs\";s:3:\"hrs\";s:40:\"_wcct_appearance_timer_single_label_mins\";s:4:\"mins\";s:40:\"_wcct_appearance_timer_single_label_secs\";s:4:\"secs\";s:42:\"_wcct_appearance_timer_single_border_width\";s:1:\"1\";s:42:\"_wcct_appearance_timer_single_border_color\";s:7:\"#f2f2f2\";s:42:\"_wcct_appearance_timer_single_border_style\";s:4:\"none\";s:37:\"_wcct_appearance_timer_single_display\";s:58:\"{{countdown_timer}}\nPrices go up when the timer hits zero.\";s:30:\"_wcct_location_bar_show_single\";s:1:\"1\";s:34:\"_wcct_location_bar_single_location\";s:1:\"4\";s:32:\"_wcct_appearance_bar_single_skin\";s:14:\"stripe_animate\";s:33:\"_wcct_appearance_bar_single_edges\";s:7:\"rounded\";s:39:\"_wcct_appearance_bar_single_orientation\";s:3:\"rtl\";s:36:\"_wcct_appearance_bar_single_bg_color\";s:7:\"#dddddd\";s:40:\"_wcct_appearance_bar_single_active_color\";s:7:\"#ee303c\";s:34:\"_wcct_appearance_bar_single_height\";s:2:\"12\";s:35:\"_wcct_appearance_bar_single_display\";s:83:\"Hurry up! Just <span>{{remaining_units}}</span> items left in stock\n{{counter_bar}}\";s:40:\"_wcct_appearance_bar_single_border_style\";s:4:\"none\";s:40:\"_wcct_appearance_bar_single_border_width\";s:1:\"0\";s:40:\"_wcct_appearance_bar_single_border_color\";s:7:\"#444444\";s:25:\"_wcct_campaign_menu_order\";s:1:\"0\";s:27:\"_wcct_current_status_timing\";s:7:\"running\";s:30:\"_wcct_location_timer_show_grid\";s:1:\"0\";s:30:\"_wcct_location_timer_show_cart\";s:1:\"0\";s:28:\"_wcct_location_bar_show_grid\";s:1:\"0\";s:32:\"_wcct_deal_enable_price_discount\";s:1:\"0\";s:17:\"_wcct_deal_amount\";s:1:\"5\";s:15:\"_wcct_deal_type\";s:15:\"percentage_sale\";s:26:\"_wcct_deal_threshold_units\";s:1:\"0\";s:39:\"_wcct_appearance_timer_mobile_reduction\";s:2:\"90\";}}', 'no'),
(3932, '_transient_timeout__sales_countdown_timer_demo_product_init', '1617087976', 'no'),
(3933, '_transient__sales_countdown_timer_demo_product_init', '1601535976', 'no'),
(3936, 'sales-countdown-timer_start_use', '1', 'yes'),
(3948, 'alg_product_countdown_version', '1.4.3', 'yes'),
(3949, 'alg_wc_product_countdown_plugin_notice_remindlater', '2020-10-08', 'yes'),
(3950, 'alg_wc_product_countdown_plugin_reviewtrack', '0', 'yes'),
(4172, 'widget_recent-posts-widget-with-thumbnails', 'a:2:{i:2;a:38:{s:5:\"title\";s:12:\"Recent Posts\";s:11:\"default_url\";s:95:\"http://localhost/EShop/wp-content/plugins/recent-posts-widget-with-thumbnails/default_thumb.gif\";s:16:\"thumb_dimensions\";s:6:\"custom\";s:12:\"category_ids\";a:1:{i:0;i:0;}s:14:\"excerpt_length\";i:55;s:12:\"number_posts\";i:5;s:17:\"post_title_length\";i:1000;s:12:\"thumb_height\";i:75;s:11:\"thumb_width\";i:75;s:17:\"hide_current_post\";b:1;s:17:\"only_sticky_posts\";b:0;s:17:\"hide_sticky_posts\";b:0;s:10:\"hide_title\";b:0;s:17:\"keep_aspect_ratio\";b:0;s:11:\"keep_sticky\";b:0;s:12:\"only_1st_img\";b:0;s:12:\"random_order\";b:0;s:11:\"show_author\";b:0;s:15:\"show_categories\";b:0;s:20:\"show_comments_number\";b:1;s:9:\"show_date\";b:1;s:12:\"show_excerpt\";b:0;s:14:\"ignore_excerpt\";b:0;s:27:\"ignore_post_content_excerpt\";b:0;s:16:\"set_more_as_link\";b:0;s:11:\"try_1st_img\";b:0;s:11:\"use_default\";b:0;s:16:\"use_default_only\";b:0;s:15:\"open_new_window\";b:0;s:21:\"print_post_categories\";b:0;s:17:\"set_cats_as_links\";b:0;s:14:\"use_inline_css\";b:0;s:10:\"use_no_css\";b:0;s:10:\"show_thumb\";b:1;s:12:\"author_label\";s:2:\"By\";s:12:\"excerpt_more\";s:6:\" […]\";s:14:\"category_label\";s:2:\"In\";s:9:\"thumb_alt\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(4490, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1606125293;s:7:\"checked\";a:1:{s:5:\"EShop\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(4492, 'theme_mods_blog-nano', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601624646;s:4:\"data\";a:6:{s:19:\"wp_inactive_widgets\";a:14:{i:0;s:10:\"nav_menu-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";i:7;s:32:\"woocommerce_product_categories-5\";i:8;s:26:\"woocommerce_price_filter-2\";i:9;s:22:\"woocommerce_products-2\";i:10;s:8:\"search-3\";i:11;s:12:\"categories-3\";i:12;s:37:\"recent-posts-widget-with-thumbnails-2\";i:13;s:28:\"woocommerce_product_search-4\";}s:19:\"woocommerce-section\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:10:\"nav_menu-4\";i:1;s:10:\"nav_menu-3\";i:2;s:32:\"woocommerce_product_categories-4\";i:3;s:28:\"woocommerce_product_search-2\";}}}}', 'yes'),
(4495, 'widget_blog_nano_featured_product', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4496, 'widget_web-log-recent-post', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4497, 'widget_author-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4544, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:16;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601626457;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:10:\"nav_menu-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:7:{i:0;s:10:\"nav_menu-4\";i:1;s:10:\"nav_menu-3\";i:2;s:32:\"woocommerce_product_categories-4\";i:3;s:28:\"woocommerce_product_search-2\";i:4;s:32:\"woocommerce_product_categories-5\";i:5;s:26:\"woocommerce_price_filter-2\";i:6;s:22:\"woocommerce_products-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:8:\"search-3\";i:1;s:12:\"categories-3\";i:2;s:37:\"recent-posts-widget-with-thumbnails-2\";}s:9:\"sidebar-3\";a:1:{i:0;s:28:\"woocommerce_product_search-4\";}}}}', 'yes'),
(4601, '_xlcore_transient_xl-wp-posts_post_data_83', 'a:2:{s:4:\"time\";i:1601712834;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:83;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:19\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:19\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:20:\"V-Neck T-Shirt - Red\";s:12:\"post_excerpt\";s:10:\"Color: Red\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:18:\"v-neck-t-shirt-red\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:02:31\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:02:31\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:69;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-76/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:17:\"product_variation\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(4602, '_xlcore_transient_xl-wp-posts_post_data_84', 'a:2:{s:4:\"time\";i:1601712834;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:84;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:23\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:23\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:22:\"V-Neck T-Shirt - Green\";s:12:\"post_excerpt\";s:12:\"Color: Green\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:20:\"v-neck-t-shirt-green\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:02:33\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:02:33\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:69;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-77/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:17:\"product_variation\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(4603, '_xlcore_transient_xl-wp-posts_post_data_85', 'a:2:{s:4:\"time\";i:1601712834;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:85;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:27\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:27\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:21:\"V-Neck T-Shirt - Blue\";s:12:\"post_excerpt\";s:11:\"Color: Blue\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:19:\"v-neck-t-shirt-blue\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:02:39\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:02:39\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:69;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-78/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:17:\"product_variation\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(4807, 'ivole_activation_notice', '1', 'yes'),
(4808, 'ivole_siteurl', 'http://loca_[ivole_siteurl]_lhost/EShop', 'yes'),
(4809, 'ivole_version', '3.127', 'yes'),
(4833, 'theme_mods_demo', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601631521;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:16:{i:0;s:10:\"nav_menu-2\";i:1;s:8:\"search-2\";i:2;s:14:\"recent-posts-2\";i:3;s:17:\"recent-comments-2\";i:4;s:10:\"archives-2\";i:5;s:12:\"categories-2\";i:6;s:6:\"meta-2\";i:7;s:10:\"nav_menu-4\";i:8;s:10:\"nav_menu-3\";i:9;s:32:\"woocommerce_product_categories-5\";i:10;s:26:\"woocommerce_price_filter-2\";i:11;s:22:\"woocommerce_products-2\";i:12;s:8:\"search-3\";i:13;s:12:\"categories-3\";i:14;s:37:\"recent-posts-widget-with-thumbnails-2\";i:15;s:28:\"woocommerce_product_search-4\";}}}}', 'yes'),
(4840, '_xlcore_transient_xl-wp-posts_post_data_93', 'a:2:{s:4:\"time\";i:1601717729;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:93;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:52\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:52\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:18:\"Hoodie - Blue, Yes\";s:12:\"post_excerpt\";s:22:\"Color: Blue, Logo: Yes\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:15:\"hoodie-blue-yes\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:03:23\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:03:23\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:70;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-90/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:17:\"product_variation\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(4841, '_xlcore_transient_xl-wp-posts_post_data_86', 'a:2:{s:4:\"time\";i:1601717729;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:86;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:30\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:30\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:16:\"Hoodie - Red, No\";s:12:\"post_excerpt\";s:20:\"Color: Red, Logo: No\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:13:\"hoodie-red-no\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:02:41\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:02:41\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:70;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-79/\";s:10:\"menu_order\";i:1;s:9:\"post_type\";s:17:\"product_variation\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(4842, '_xlcore_transient_xl-wp-posts_post_data_87', 'a:2:{s:4:\"time\";i:1601717729;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:87;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:36\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:36\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:18:\"Hoodie - Green, No\";s:12:\"post_excerpt\";s:22:\"Color: Green, Logo: No\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:15:\"hoodie-green-no\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:02:44\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:02:44\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:70;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-80/\";s:10:\"menu_order\";i:2;s:9:\"post_type\";s:17:\"product_variation\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(4843, '_xlcore_transient_xl-wp-posts_post_data_88', 'a:2:{s:4:\"time\";i:1601717730;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:88;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:38\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:38\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:17:\"Hoodie - Blue, No\";s:12:\"post_excerpt\";s:21:\"Color: Blue, Logo: No\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:14:\"hoodie-blue-no\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:02:45\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:02:45\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:70;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-81/\";s:10:\"menu_order\";i:3;s:9:\"post_type\";s:17:\"product_variation\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5050, '_xlcore_transient_xl-wp-posts_post_data_142', 'a:2:{s:4:\"time\";i:1601958627;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:142;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 14:04:35\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 14:04:35\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:12:\"Brown Jacket\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:12:\"brown-jacket\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-10-02 13:03:35\";s:17:\"post_modified_gmt\";s:19:\"2020-10-02 13:03:35\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=142\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"2\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5051, '_xlcore_transient_finale_wcct_campaign_query', 'a:2:{s:4:\"time\";i:1601879428;s:5:\"value\";a:1:{i:0;i:157;}}', 'no'),
(5052, '_xlcore_transient_finale_wcct_countdown_post_meta_157', 'a:2:{s:4:\"time\";i:1601879428;s:5:\"value\";a:51:{s:27:\"_wcct_current_status_timing\";s:8:\"finished\";s:10:\"_edit_last\";s:1:\"1\";s:10:\"_edit_lock\";s:12:\"1601113539:1\";s:9:\"wcct_rule\";a:1:{s:6:\"group0\";a:1:{s:17:\"rule5f6f0aa7e4d4a\";a:3:{s:9:\"rule_type\";s:16:\"product_category\";s:8:\"operator\";s:2:\"in\";s:9:\"condition\";a:1:{i:0;s:2:\"18\";}}}}s:19:\"_wcct_campaign_type\";s:10:\"fixed_date\";s:41:\"_wcct_campaign_fixed_recurring_start_date\";s:10:\"2020-09-26\";s:41:\"_wcct_campaign_fixed_recurring_start_time\";s:8:\"12:00 AM\";s:29:\"_wcct_campaign_fixed_end_date\";s:10:\"2020-10-01\";s:29:\"_wcct_campaign_fixed_end_time\";s:8:\"12:00 AM\";s:32:\"_wcct_deal_enable_price_discount\";s:1:\"1\";s:17:\"_wcct_deal_amount\";s:2:\"50\";s:15:\"_wcct_deal_type\";s:15:\"percentage_sale\";s:22:\"_wcct_deal_enable_goal\";s:1:\"0\";s:16:\"_wcct_deal_units\";s:6:\"custom\";s:23:\"_wcct_deal_custom_units\";s:1:\"8\";s:29:\"_wcct_deal_inventory_goal_for\";s:10:\"recurrence\";s:39:\"_wcct_deal_custom_units_allow_backorder\";s:2:\"no\";s:23:\"_wcct_deal_end_campaign\";s:2:\"no\";s:32:\"_wcct_location_timer_show_single\";s:1:\"0\";s:36:\"_wcct_location_timer_single_location\";s:1:\"4\";s:34:\"_wcct_appearance_timer_single_skin\";s:10:\"round_fill\";s:38:\"_wcct_appearance_timer_single_bg_color\";s:7:\"#444444\";s:40:\"_wcct_appearance_timer_single_text_color\";s:7:\"#ffffff\";s:45:\"_wcct_appearance_timer_single_font_size_timer\";s:2:\"22\";s:39:\"_wcct_appearance_timer_single_font_size\";s:2:\"13\";s:40:\"_wcct_appearance_timer_single_label_days\";s:4:\"days\";s:39:\"_wcct_appearance_timer_single_label_hrs\";s:3:\"hrs\";s:40:\"_wcct_appearance_timer_single_label_mins\";s:4:\"mins\";s:40:\"_wcct_appearance_timer_single_label_secs\";s:4:\"secs\";s:37:\"_wcct_appearance_timer_single_display\";s:58:\"{{countdown_timer}}\r\nPrices go up when the timer hits zero\";s:42:\"_wcct_appearance_timer_single_border_style\";s:4:\"none\";s:42:\"_wcct_appearance_timer_single_border_width\";s:1:\"1\";s:42:\"_wcct_appearance_timer_single_border_color\";s:7:\"#444444\";s:39:\"_wcct_appearance_timer_mobile_reduction\";s:2:\"90\";s:30:\"_wcct_location_bar_show_single\";s:1:\"0\";s:34:\"_wcct_location_bar_single_location\";s:1:\"4\";s:32:\"_wcct_appearance_bar_single_skin\";s:6:\"stripe\";s:33:\"_wcct_appearance_bar_single_edges\";s:7:\"rounded\";s:39:\"_wcct_appearance_bar_single_orientation\";s:3:\"rtl\";s:36:\"_wcct_appearance_bar_single_bg_color\";s:7:\"#dddddd\";s:40:\"_wcct_appearance_bar_single_active_color\";s:7:\"#ee303c\";s:34:\"_wcct_appearance_bar_single_height\";s:2:\"16\";s:35:\"_wcct_appearance_bar_single_display\";s:64:\"{{counter_bar}} {{sold_units}} units sold out of {{total_units}}\";s:40:\"_wcct_appearance_bar_single_border_style\";s:4:\"none\";s:40:\"_wcct_appearance_bar_single_border_width\";s:1:\"0\";s:40:\"_wcct_appearance_bar_single_border_color\";s:7:\"#444444\";s:25:\"_wcct_campaign_menu_order\";s:1:\"0\";s:30:\"_wcct_location_timer_show_grid\";s:1:\"0\";s:30:\"_wcct_location_timer_show_cart\";s:1:\"0\";s:28:\"_wcct_location_bar_show_grid\";s:1:\"0\";s:26:\"_wcct_deal_threshold_units\";s:1:\"0\";}}', 'no'),
(5053, '_xlcore_transient_xl-wp-posts_post_data_140', 'a:2:{s:4:\"time\";i:1601958629;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:140;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 14:01:32\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 14:01:32\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:14:\"Yellow T-Shirt\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:14:\"yellow-t-shirt\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-29 04:28:14\";s:17:\"post_modified_gmt\";s:19:\"2020-09-29 04:28:14\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=140\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5054, '_xlcore_transient_xl-wp-posts_post_data_132', 'a:2:{s:4:\"time\";i:1601958629;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:132;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 13:59:17\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 13:59:17\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:12:\"Pink T-Shirt\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:12:\"pink-t-shirt\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-29 04:31:15\";s:17:\"post_modified_gmt\";s:19:\"2020-09-29 04:31:15\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=132\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5055, '_xlcore_transient_xl-wp-posts_post_data_128', 'a:2:{s:4:\"time\";i:1601958630;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:128;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 13:58:39\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 13:58:39\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:13:\"Green T-shirt\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:13:\"green-t-shirt\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-29 04:31:55\";s:17:\"post_modified_gmt\";s:19:\"2020-09-29 04:31:55\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=128\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5056, '_xlcore_transient_xl-wp-posts_post_data_125', 'a:2:{s:4:\"time\";i:1601958630;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:125;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 13:57:12\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 13:57:12\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:11:\"Green Shirt\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:11:\"green-shirt\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-29 04:32:27\";s:17:\"post_modified_gmt\";s:19:\"2020-09-29 04:32:27\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=125\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5057, '_xlcore_transient_xl-wp-posts_post_data_124', 'a:2:{s:4:\"time\";i:1601958630;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:124;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 13:56:25\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 13:56:25\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:13:\"White T-Shirt\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:13:\"white-t-shirt\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-29 04:33:14\";s:17:\"post_modified_gmt\";s:19:\"2020-09-29 04:33:14\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=124\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5058, '_xlcore_transient_xl-wp-posts_post_data_122', 'a:2:{s:4:\"time\";i:1601958630;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:122;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 13:53:47\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 13:53:47\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:9:\"A T-Shirt\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:9:\"a-t-shirt\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-10-02 13:00:47\";s:17:\"post_modified_gmt\";s:19:\"2020-10-02 13:00:47\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=122\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"1\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5059, '_xlcore_transient_xl-wp-posts_post_data_89', 'a:2:{s:4:\"time\";i:1601958630;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:89;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:41\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:41\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:17:\"T-Shirt with Logo\";s:12:\"post_excerpt\";s:25:\"This is a simple product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:17:\"t-shirt-with-logo\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-25 13:33:06\";s:17:\"post_modified_gmt\";s:19:\"2020-09-25 13:33:06\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-83/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5060, '_xlcore_transient_xl-wp-posts_post_data_78', 'a:2:{s:4:\"time\";i:1601958632;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:78;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:04\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:04\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:18:\"Hoodie with Zipper\";s:12:\"post_excerpt\";s:25:\"This is a simple product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:18:\"hoodie-with-zipper\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-25 13:39:33\";s:17:\"post_modified_gmt\";s:19:\"2020-09-25 13:39:33\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-66/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5061, '_xlcore_transient_xl-wp-posts_post_data_77', 'a:2:{s:4:\"time\";i:1601958632;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:77;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:58:58\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:58:58\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:18:\"Hoodie with Pocket\";s:12:\"post_excerpt\";s:25:\"This is a simple product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:18:\"hoodie-with-pocket\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-25 13:41:12\";s:17:\"post_modified_gmt\";s:19:\"2020-09-25 13:41:12\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-64/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5062, '_xlcore_transient_xl-wp-posts_post_data_71', 'a:2:{s:4:\"time\";i:1601958633;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:71;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:58:37\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:58:37\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:16:\"Hoodie with Logo\";s:12:\"post_excerpt\";s:25:\"This is a simple product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:16:\"hoodie-with-logo\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-25 13:43:03\";s:17:\"post_modified_gmt\";s:19:\"2020-09-25 13:43:03\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-46/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5063, '_xlcore_transient_xl-wp-posts_post_data_137', 'a:2:{s:4:\"time\";i:1601958633;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:137;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 14:00:01\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 14:00:01\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:12:\"Kids T-shirt\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:12:\"kids-t-shirt\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-29 04:30:20\";s:17:\"post_modified_gmt\";s:19:\"2020-09-29 04:30:20\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=137\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5065, '_xlcore_transient_xl-wp-posts_post_data_120', 'a:2:{s:4:\"time\";i:1601958634;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:120;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 13:51:57\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 13:51:57\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:10:\"Kids Dress\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:10:\"kids-dress\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-29 04:37:47\";s:17:\"post_modified_gmt\";s:19:\"2020-09-29 04:37:47\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=120\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(5066, '_xlcore_transient_xl-wp-posts_post_data_118', 'a:2:{s:4:\"time\";i:1601958635;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:118;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 13:50:42\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 13:50:42\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:10:\"Doll Dress\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:10:\"doll-dress\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-29 04:38:37\";s:17:\"post_modified_gmt\";s:19:\"2020-09-29 04:38:37\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=118\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5067, '_xlcore_transient_xl-wp-posts_post_data_90', 'a:2:{s:4:\"time\";i:1601958636;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:90;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:44\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:44\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:16:\"Beanie with Logo\";s:12:\"post_excerpt\";s:25:\"This is a simple product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:16:\"beanie-with-logo\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:02:58\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:02:58\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-85/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5068, '_xlcore_transient_xl-wp-posts_post_data_76', 'a:2:{s:4:\"time\";i:1601958636;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:76;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:58:52\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:58:52\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:10:\"Sunglasses\";s:12:\"post_excerpt\";s:25:\"This is a simple product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:10:\"sunglasses\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:01:29\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:01:29\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-62/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5069, '_xlcore_transient_xl-wp-posts_post_data_75', 'a:2:{s:4:\"time\";i:1601958636;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:75;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:58:49\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:58:49\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:3:\"Cap\";s:12:\"post_excerpt\";s:25:\"This is a simple product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:3:\"cap\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:01:21\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:01:21\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-60/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5070, '_xlcore_transient_xl-wp-posts_post_data_74', 'a:2:{s:4:\"time\";i:1601958636;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:74;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:58:45\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:58:45\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:4:\"Belt\";s:12:\"post_excerpt\";s:25:\"This is a simple product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"belt\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:01:08\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:01:08\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-58/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5073, '_xlcore_transient_xl-wp-posts_post_data_73', 'a:2:{s:4:\"time\";i:1601958636;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:73;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:58:42\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:58:42\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:6:\"Beanie\";s:12:\"post_excerpt\";s:25:\"This is a simple product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:6:\"beanie\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:01:01\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:01:01\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-48/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5076, '_xlcore_transient_xl-wp-posts_post_data_82', 'a:2:{s:4:\"time\";i:1601958637;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:82;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:15\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:15\";s:12:\"post_content\";s:601:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.\";s:10:\"post_title\";s:6:\"Single\";s:12:\"post_excerpt\";s:34:\"This is a simple, virtual product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:6:\"single\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:02:26\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:02:26\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-75/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5078, '_xlcore_transient_xl-wp-posts_post_data_81', 'a:2:{s:4:\"time\";i:1601958637;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:81;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:12\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:12\";s:12:\"post_content\";s:601:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.\";s:10:\"post_title\";s:5:\"Album\";s:12:\"post_excerpt\";s:34:\"This is a simple, virtual product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:5:\"album\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-24 14:02:18\";s:17:\"post_modified_gmt\";s:19:\"2020-09-24 14:02:18\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-73/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5080, '_xlcore_transient_xl-wp-posts_post_data_141', 'a:2:{s:4:\"time\";i:1601958637;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:141;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 14:03:13\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 14:03:13\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:18:\"Men\'s Brown wallet\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:17:\"mens-brown-wallet\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-29 04:26:44\";s:17:\"post_modified_gmt\";s:19:\"2020-09-29 04:26:44\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=141\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5081, '_xlcore_transient_xl-wp-posts_post_data_139', 'a:2:{s:4:\"time\";i:1601958638;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:139;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 14:02:07\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 14:02:07\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:12:\"Men\'s Wallet\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:11:\"mens-wallet\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-29 04:27:48\";s:17:\"post_modified_gmt\";s:19:\"2020-09-29 04:27:48\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=139\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5084, '_xlcore_transient_xl-wp-posts_post_data_18', 'a:2:{s:4:\"time\";i:1601958638;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:18;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 08:13:23\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 08:13:23\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:3:\"New\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:3:\"new\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-25 13:44:10\";s:17:\"post_modified_gmt\";s:19:\"2020-09-25 13:44:10\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:51:\"http://localhost/EShop/?post_type=product&#038;p=18\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5085, '_xlcore_transient_xl-wp-posts_post_data_69', 'a:2:{s:4:\"time\";i:1601958639;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:69;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:58:25\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:58:25\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:14:\"V-Neck T-Shirt\";s:12:\"post_excerpt\";s:27:\"This is a variable product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:14:\"v-neck-t-shirt\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-25 13:36:32\";s:17:\"post_modified_gmt\";s:19:\"2020-09-25 13:36:32\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-44/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5086, '_xlcore_transient_xl-wp-posts_post_data_70', 'a:2:{s:4:\"time\";i:1601958639;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:70;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:58:32\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:58:32\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:6:\"Hoodie\";s:12:\"post_excerpt\";s:27:\"This is a variable product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:6:\"hoodie\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-25 13:43:45\";s:17:\"post_modified_gmt\";s:19:\"2020-09-25 13:43:45\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-45/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5088, '_xlcore_transient_xl-wp-posts_post_data_116', 'a:2:{s:4:\"time\";i:1601958649;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:116;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-25 13:48:56\";s:13:\"post_date_gmt\";s:19:\"2020-09-25 13:48:56\";s:12:\"post_content\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:10:\"post_title\";s:10:\"Brown Belt\";s:12:\"post_excerpt\";s:445:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:10:\"brown-belt\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-29 04:39:54\";s:17:\"post_modified_gmt\";s:19:\"2020-09-29 04:39:54\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:52:\"http://localhost/EShop/?post_type=product&#038;p=116\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5089, '_xlcore_transient_xl-wp-posts_post_data_157', 'a:2:{s:4:\"time\";i:1601958650;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:157;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-26 09:35:11\";s:13:\"post_date_gmt\";s:19:\"2020-09-26 09:35:11\";s:12:\"post_content\";s:0:\"\";s:10:\"post_title\";s:10:\"New Trendz\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:10:\"new-trendz\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-26 09:35:11\";s:17:\"post_modified_gmt\";s:19:\"2020-09-26 09:35:11\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:59:\"http://localhost/EShop/?post_type=wcct_countdown&#038;p=157\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:14:\"wcct_countdown\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5094, '_xlcore_transient_xl-wp-posts_post_data_92', 'a:2:{s:4:\"time\";i:1601958947;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:92;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:49\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:49\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:17:\"WordPress Pennant\";s:12:\"post_excerpt\";s:28:\"This is an external product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:17:\"wordpress-pennant\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-25 13:46:00\";s:17:\"post_modified_gmt\";s:19:\"2020-09-25 13:46:00\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-89/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5095, '_xlcore_transient_xl-wp-posts_post_data_72', 'a:2:{s:4:\"time\";i:1601958947;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:72;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:58:39\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:58:39\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:7:\"T-Shirt\";s:12:\"post_excerpt\";s:25:\"This is a simple product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:7:\"t-shirt\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-25 13:37:23\";s:17:\"post_modified_gmt\";s:19:\"2020-09-25 13:37:23\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-47/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5097, '_xlcore_transient_xl-wp-posts_post_data_91', 'a:2:{s:4:\"time\";i:1601958959;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:91;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:46\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:46\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:15:\"Logo Collection\";s:12:\"post_excerpt\";s:26:\"This is a grouped product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:15:\"logo-collection\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-25 13:44:37\";s:17:\"post_modified_gmt\";s:19:\"2020-09-25 13:44:37\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-87/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5098, '_xlcore_transient_xl-wp-posts_post_data_79', 'a:2:{s:4:\"time\";i:1601959009;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:79;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:07\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:07\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:15:\"Long Sleeve Tee\";s:12:\"post_excerpt\";s:25:\"This is a simple product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:15:\"long-sleeve-tee\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-25 13:35:40\";s:17:\"post_modified_gmt\";s:19:\"2020-09-25 13:35:40\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-68/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5099, '_xlcore_transient_xl-wp-posts_post_data_80', 'a:2:{s:4:\"time\";i:1601959009;s:5:\"value\";O:7:\"WP_Post\":24:{s:2:\"ID\";i:80;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-09-24 13:59:10\";s:13:\"post_date_gmt\";s:19:\"2020-09-24 13:59:10\";s:12:\"post_content\";s:278:\"Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.\";s:10:\"post_title\";s:4:\"Polo\";s:12:\"post_excerpt\";s:25:\"This is a simple product.\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:4:\"open\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:4:\"polo\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2020-09-25 13:34:49\";s:17:\"post_modified_gmt\";s:19:\"2020-09-25 13:34:49\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:67:\"http://localhost/EShop/index.php/product/import-placeholder-for-70/\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}', 'no'),
(5468, 'woocommerce_cheque_settings', 'a:4:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:14:\"Check payments\";s:11:\"description\";s:98:\"Please send a check to Store Name, Store Street, Store Town, Store State / County, Store Postcode.\";s:12:\"instructions\";s:0:\"\";}', 'yes'),
(5469, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:6:\"PayPal\";s:11:\"description\";s:85:\"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.\";s:5:\"email\";s:19:\"zaffar@pixlogix.com\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:3:\"yes\";s:14:\"receiver_email\";s:19:\"zaffar@pixlogix.com\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:13:\"send_shipping\";s:3:\"yes\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(5470, 'woocommerce_bacs_settings', 'a:11:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:20:\"Direct bank transfer\";s:11:\"description\";s:176:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}', 'yes'),
(5472, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(5786, 'woocommerce_admin_last_orders_milestone', '1', 'yes'),
(5811, 'theme_mods_web-log', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(5856, 'amp-options', 'a:10:{s:13:\"theme_support\";s:8:\"standard\";s:20:\"supported_post_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:9:\"analytics\";a:0:{}s:23:\"all_templates_supported\";b:1;s:19:\"supported_templates\";a:1:{i:0;s:11:\"is_singular\";}s:7:\"version\";s:5:\"2.0.4\";s:12:\"reader_theme\";s:6:\"legacy\";s:17:\"plugin_configured\";b:1;s:15:\"mobile_redirect\";b:0;s:18:\"suppressed_plugins\";a:0:{}}', 'no'),
(5858, 'amp_css_transient_monitor_time_series', 'a:2:{i:20201007;i:0;i:20201008;i:42;}', 'no'),
(6104, '_transient_amp_remote_request_101623f47561580a914e5d56e153cf6c', 's:2489:\"O:45:\"AmpProject\\AmpWP\\RemoteRequest\\CachedResponse\":4:{s:51:\"\0AmpProject\\AmpWP\\RemoteRequest\\CachedResponse\0body\";s:399:\"{\"ampRuntimeVersion\":\"012009252320001\",\"ampCssUrl\":\"https://cdn.ampproject.org/rtv/012009252320001/v0.css\",\"canaryPercentage\":\"0.005\",\"diversions\":[\"002009252320001\",\"002010010034000\",\"022009252320001\",\"032009252320001\",\"032010010034000\",\"042010080257000\",\"052009252320001\",\"102009252320001\"],\"ltsRuntimeVersion\":\"012008290323006\",\"ltsCssUrl\":\"https://cdn.ampproject.org/rtv/012008290323006/v0.css\"}\";s:54:\"\0AmpProject\\AmpWP\\RemoteRequest\\CachedResponse\0headers\";a:16:{s:13:\"accept-ranges\";s:5:\"bytes\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:27:\"access-control-allow-origin\";s:1:\"*\";s:23:\"content-security-policy\";s:741:\"default-src * blob: data:; script-src blob: https://cdn.ampproject.org/esm/ https://cdn.ampproject.org/lts/ https://cdn.ampproject.org/mp/ https://cdn.ampproject.org/rtv/ https://cdn.ampproject.org/sp/ https://cdn.ampproject.org/sw/ https://cdn.ampproject.org/v0.js https://cdn.ampproject.org/v0.mjs https://cdn.ampproject.org/v0/ https://cdn.ampproject.org/viewer/; object-src \'none\'; style-src \'unsafe-inline\' https://cdn.ampproject.org/rtv/ https://cdn.materialdesignicons.com https://cloud.typography.com https://fast.fonts.net https://fonts.googleapis.com https://maxcdn.bootstrapcdn.com https://p.typekit.net https://pro.fontawesome.com https://use.fontawesome.com https://use.typekit.net; report-uri https://csp.withgoogle.com/csp/amp\";s:19:\"timing-allow-origin\";s:1:\"*\";s:14:\"content-length\";s:3:\"399\";s:4:\"date\";s:29:\"Thu, 08 Oct 2020 12:23:15 GMT\";s:7:\"expires\";s:29:\"Thu, 08 Oct 2020 12:23:15 GMT\";s:13:\"cache-control\";s:17:\"public, max-age=0\";s:13:\"last-modified\";s:21:\"Invalid:9223372036854\";s:25:\"strict-transport-security\";s:44:\"max-age=31536000; includeSubDomains; preload\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:6:\"server\";s:4:\"sffe\";s:16:\"x-xss-protection\";s:1:\"0\";s:7:\"alt-svc\";s:219:\"h3-Q050=\":443\"; ma=2592000,h3-29=\":443\"; ma=2592000,h3-27=\":443\"; ma=2592000,h3-T051=\":443\"; ma=2592000,h3-T050=\":443\"; ma=2592000,h3-Q046=\":443\"; ma=2592000,h3-Q043=\":443\"; ma=2592000,quic=\":443\"; ma=2592000; v=\"46,43\"\";}s:58:\"\0AmpProject\\AmpWP\\RemoteRequest\\CachedResponse\0status_code\";i:200;s:53:\"\0AmpProject\\AmpWP\\RemoteRequest\\CachedResponse\0expiry\";O:17:\"DateTimeImmutable\":3:{s:4:\"date\";s:26:\"2020-10-09 12:23:15.900870\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}\";', 'yes'),
(6105, '_transient_amp_remote_request_5602bb6bb0292910f56ad18ec5da3131', 's:10167:\"O:45:\"AmpProject\\AmpWP\\RemoteRequest\\CachedResponse\":4:{s:51:\"\0AmpProject\\AmpWP\\RemoteRequest\\CachedResponse\0body\";s:9716:\"html{overflow-x:hidden!important}html.i-amphtml-fie{height:100%!important;width:100%!important}html:not([amp4ads]),html:not([amp4ads]) body{height:auto!important}html:not([amp4ads]) body{margin:0!important}body{-webkit-text-size-adjust:100%;-moz-text-size-adjust:100%;-ms-text-size-adjust:100%;text-size-adjust:100%}html.i-amphtml-singledoc.i-amphtml-embedded{-ms-touch-action:pan-y;touch-action:pan-y}html.i-amphtml-fie>body,html.i-amphtml-singledoc>body{overflow:visible!important}html.i-amphtml-fie:not(.i-amphtml-inabox)>body,html.i-amphtml-singledoc:not(.i-amphtml-inabox)>body{position:relative!important}html.i-amphtml-webview>body{overflow-x:hidden!important;overflow-y:visible!important;min-height:100vh!important}html.i-amphtml-ios-embed-legacy>body{overflow-x:hidden!important;overflow-y:auto!important;position:absolute!important}html.i-amphtml-ios-embed{overflow-y:auto!important;position:static}#i-amphtml-wrapper{overflow-x:hidden!important;overflow-y:auto!important;position:absolute!important;top:0!important;left:0!important;right:0!important;bottom:0!important;margin:0!important;display:block!important}html.i-amphtml-ios-embed.i-amphtml-ios-overscroll,html.i-amphtml-ios-embed.i-amphtml-ios-overscroll>#i-amphtml-wrapper{-webkit-overflow-scrolling:touch!important}#i-amphtml-wrapper>body{position:relative!important;border-top:1px solid transparent!important}#i-amphtml-wrapper+body{visibility:visible}#i-amphtml-wrapper+body .i-amphtml-lightbox-element,#i-amphtml-wrapper+body[i-amphtml-lightbox]{visibility:hidden}#i-amphtml-wrapper+body[i-amphtml-lightbox] .i-amphtml-lightbox-element{visibility:visible}#i-amphtml-wrapper.i-amphtml-scroll-disabled,.i-amphtml-scroll-disabled{overflow-x:hidden!important;overflow-y:hidden!important}amp-instagram{padding:54px 0px 0px!important;background-color:#fff}amp-iframe iframe{box-sizing:border-box!important}[amp-access][amp-access-hide]{display:none}[subscriptions-dialog],body:not(.i-amphtml-subs-ready) [subscriptions-action],body:not(.i-amphtml-subs-ready) [subscriptions-section]{display:none!important}amp-experiment,amp-live-list>[update]{display:none}.i-amphtml-jank-meter{position:fixed;background-color:rgba(232,72,95,0.5);bottom:0;right:0;color:#fff;font-size:16px;z-index:1000;padding:5px}amp-list[resizable-children]>.i-amphtml-loading-container.amp-hidden{display:none!important}amp-list [fetch-error],amp-list[load-more] [load-more-button],amp-list[load-more] [load-more-end],amp-list[load-more] [load-more-failed],amp-list[load-more] [load-more-loading]{display:none}amp-list[diffable] div[role=list]{display:block}amp-story-page,amp-story[standalone]{min-height:1px!important;display:block!important;height:100%!important;margin:0!important;padding:0!important;overflow:hidden!important;width:100%!important}amp-story[standalone]{background-color:#202125!important;position:relative!important}amp-story-page{background-color:#757575}amp-story .amp-active>div,amp-story .i-amphtml-loader-background{display:none!important}amp-story-page:not(:first-of-type):not([distance]):not([active]){transform:translateY(1000vh)!important}amp-autocomplete{position:relative!important;display:inline-block!important}amp-autocomplete>input,amp-autocomplete>textarea{padding:0.5rem;border:1px solid rgba(0,0,0,0.33)}.i-amphtml-autocomplete-results,amp-autocomplete>input,amp-autocomplete>textarea{font-size:1rem;line-height:1.5rem}[amp-fx^=fly-in]{visibility:hidden}amp-script[nodom]{position:fixed!important;top:0!important;width:1px!important;height:1px!important;overflow:hidden!important;visibility:hidden}\n/*# sourceURL=/css/ampdoc.css*/[hidden]{display:none!important}.i-amphtml-element{display:inline-block}.i-amphtml-blurry-placeholder{transition:opacity 0.3s cubic-bezier(0.0,0.0,0.2,1)!important;pointer-events:none}[layout=nodisplay]:not(.i-amphtml-element){display:none!important}.i-amphtml-layout-fixed,[layout=fixed][width][height]:not(.i-amphtml-layout-fixed){display:inline-block;position:relative}.i-amphtml-layout-responsive,[layout=responsive][width][height]:not(.i-amphtml-layout-responsive),[width][height][heights]:not([layout]):not(.i-amphtml-layout-responsive),[width][height][sizes]:not([layout]):not(.i-amphtml-layout-responsive){display:block;position:relative}.i-amphtml-layout-intrinsic,[layout=intrinsic][width][height]:not(.i-amphtml-layout-intrinsic){display:inline-block;position:relative;max-width:100%}.i-amphtml-layout-intrinsic .i-amphtml-sizer{max-width:100%}.i-amphtml-intrinsic-sizer{max-width:100%;display:block!important}.i-amphtml-layout-container,.i-amphtml-layout-fixed-height,[layout=container],[layout=fixed-height][height]:not(.i-amphtml-layout-fixed-height){display:block;position:relative}.i-amphtml-layout-fill,[layout=fill]:not(.i-amphtml-layout-fill){display:block;overflow:hidden!important;position:absolute;top:0;left:0;bottom:0;right:0}.i-amphtml-layout-flex-item,[layout=flex-item]:not(.i-amphtml-layout-flex-item){display:block;position:relative;-ms-flex:1 1 auto;flex:1 1 auto}.i-amphtml-layout-fluid{position:relative}.i-amphtml-layout-size-defined{overflow:hidden!important}.i-amphtml-layout-awaiting-size{position:absolute!important;top:auto!important;bottom:auto!important}i-amphtml-sizer{display:block!important}.i-amphtml-blurry-placeholder,.i-amphtml-fill-content{display:block;height:0;max-height:100%;max-width:100%;min-height:100%;min-width:100%;width:0;margin:auto}.i-amphtml-layout-size-defined .i-amphtml-fill-content{position:absolute;top:0;left:0;bottom:0;right:0}.i-amphtml-replaced-content,.i-amphtml-screen-reader{padding:0!important;border:none!important}.i-amphtml-screen-reader{position:fixed!important;top:0px!important;left:0px!important;width:4px!important;height:4px!important;opacity:0!important;overflow:hidden!important;margin:0!important;display:block!important;visibility:visible!important}.i-amphtml-screen-reader~.i-amphtml-screen-reader{left:8px!important}.i-amphtml-screen-reader~.i-amphtml-screen-reader~.i-amphtml-screen-reader{left:12px!important}.i-amphtml-screen-reader~.i-amphtml-screen-reader~.i-amphtml-screen-reader~.i-amphtml-screen-reader{left:16px!important}.i-amphtml-unresolved{position:relative;overflow:hidden!important}.i-amphtml-select-disabled{-webkit-user-select:none!important;-moz-user-select:none!important;-ms-user-select:none!important;user-select:none!important}.i-amphtml-notbuilt,[layout]:not(.i-amphtml-element),[width][height][heights]:not([layout]):not(.i-amphtml-element),[width][height][sizes]:not([layout]):not(.i-amphtml-element){position:relative;overflow:hidden!important;color:transparent!important}.i-amphtml-notbuilt:not(.i-amphtml-layout-container)>*,[layout]:not([layout=container]):not(.i-amphtml-element)>*,[width][height][heights]:not([layout]):not(.i-amphtml-element)>*,[width][height][sizes]:not([layout]):not(.i-amphtml-element)>*{display:none}.i-amphtml-notbuilt:not(.i-amphtml-layout-container),[layout]:not([layout=container]):not(.i-amphtml-element),[width][height][heights]:not([layout]):not(.i-amphtml-element),[width][height][sizes]:not([layout]):not(.i-amphtml-element){color:transparent!important;line-height:0!important}.i-amphtml-ghost{visibility:hidden!important}.i-amphtml-element>[placeholder],[layout]:not(.i-amphtml-element)>[placeholder],[width][height][heights]:not([layout]):not(.i-amphtml-element)>[placeholder],[width][height][sizes]:not([layout]):not(.i-amphtml-element)>[placeholder]{display:block}.i-amphtml-element>[placeholder].amp-hidden,.i-amphtml-element>[placeholder].hidden{visibility:hidden}.i-amphtml-element:not(.amp-notsupported)>[fallback],.i-amphtml-layout-container>[placeholder].amp-hidden,.i-amphtml-layout-container>[placeholder].hidden{display:none}.i-amphtml-layout-size-defined>[fallback],.i-amphtml-layout-size-defined>[placeholder]{position:absolute!important;top:0!important;left:0!important;right:0!important;bottom:0!important;z-index:1}.i-amphtml-notbuilt>[placeholder]{display:block!important}.i-amphtml-hidden-by-media-query{display:none!important}.i-amphtml-element-error{background:red!important;color:#fff!important;position:relative!important}.i-amphtml-element-error:before{content:attr(error-message)}i-amp-scroll-container,i-amphtml-scroll-container{position:absolute;top:0;left:0;right:0;bottom:0;display:block}i-amp-scroll-container.amp-active,i-amphtml-scroll-container.amp-active{overflow:auto;-webkit-overflow-scrolling:touch}.i-amphtml-loading-container{display:block!important;pointer-events:none;z-index:1}.i-amphtml-notbuilt>.i-amphtml-loading-container{display:block!important}.i-amphtml-loading-container.amp-hidden{visibility:hidden}.i-amphtml-element>[overflow]{cursor:pointer;position:relative;z-index:2;visibility:hidden;display:initial;line-height:normal}.i-amphtml-element>[overflow].amp-visible{visibility:visible}template{display:none!important}.amp-border-box,.amp-border-box *,.amp-border-box :after,.amp-border-box :before{box-sizing:border-box}amp-pixel{display:none!important}amp-analytics,amp-auto-ads,amp-story-auto-ads{position:fixed!important;top:0!important;width:1px!important;height:1px!important;overflow:hidden!important;visibility:hidden}html.i-amphtml-fie>amp-analytics{position:initial!important}[visible-when-invalid]:not(.visible),form [submit-error],form [submit-success],form [submitting]{display:none}amp-accordion{display:block!important}amp-accordion>section{float:none!important}amp-accordion>section>*{float:none!important;display:block!important;overflow:hidden!important;position:relative!important}amp-accordion,amp-accordion>section{margin:0}amp-accordion>section>:last-child{display:none!important}amp-accordion>section[expanded]>:last-child{display:block!important}\n/*# sourceURL=/css/ampshared.css*/\";s:54:\"\0AmpProject\\AmpWP\\RemoteRequest\\CachedResponse\0headers\";a:0:{}s:58:\"\0AmpProject\\AmpWP\\RemoteRequest\\CachedResponse\0status_code\";i:200;s:53:\"\0AmpProject\\AmpWP\\RemoteRequest\\CachedResponse\0expiry\";O:17:\"DateTimeImmutable\":3:{s:4:\"date\";s:26:\"2020-10-15 12:23:20.955348\";s:13:\"timezone_type\";i:3;s:8:\"timezone\";s:3:\"UTC\";}}\";', 'yes'),
(6543, 'woocommerce_new_shipping_method_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:12:\"New Shipping\";s:6:\"weight\";s:3:\"100\";}', 'yes'),
(6553, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}}', 'yes'),
(6554, 'woocommerce_version', '4.5.2', 'yes'),
(6555, 'woocommerce_db_version', '4.5.2', 'yes'),
(6864, 'orddd_lite_enable_delivery_date', 'on', 'yes'),
(6865, 'orddd_lite_weekday_0', 'checked', 'yes'),
(6866, 'orddd_lite_weekday_1', 'checked', 'yes'),
(6867, 'orddd_lite_weekday_2', 'checked', 'yes'),
(6868, 'orddd_lite_weekday_3', 'checked', 'yes'),
(6869, 'orddd_lite_weekday_4', 'checked', 'yes'),
(6870, 'orddd_lite_weekday_5', 'checked', 'yes'),
(6871, 'orddd_lite_weekday_6', 'checked', 'yes'),
(6872, 'orddd_lite_minimumOrderDays', '24', 'yes'),
(6873, 'orddd_lite_number_of_dates', '30', 'yes'),
(6874, 'orddd_lite_date_field_mandatory', '', 'yes'),
(6875, 'orddd_lite_lockout_date_after_orders', '', 'yes'),
(6876, 'orddd_lite_lockout_days', '[{\"o\":1,\"d\":\"10-20-2020\"}]', 'yes'),
(6877, 'orddd_lite_update_value', 'yes', 'yes'),
(6878, 'orddd_lite_abp_hrs', 'HOURS', 'yes'),
(6879, 'orddd_lite_default_appearance_settings', 'yes', 'yes'),
(6880, 'orddd_lite_enable_default_sorting_of_column', '', 'yes'),
(6881, 'orddd_lite_enable_delivery_date_enabled', 'yes', 'yes'),
(6882, 'orddd_lite_auto_populate_first_available_date', 'on', 'yes'),
(6883, 'orddd_lite_delivery_date_format', 'd MM, yy', 'yes'),
(6884, 'orddd_lite_delivery_date_field_label', 'Delivery Date', 'yes'),
(6885, 'orddd_lite_delivery_timeslot_field_label', 'Time Slot', 'yes'),
(6886, 'orddd_lite_delivery_date_field_placeholder', 'Choose a Date', 'yes'),
(6887, 'orddd_lite_delivery_date_field_note', 'We will try our best to deliver your order on the specified date.', 'yes'),
(6888, 'orddd_lite_number_of_months', '1', 'yes'),
(6889, 'orddd_lite_calendar_theme', 'smoothness', 'yes'),
(6890, 'orddd_lite_calendar_theme_name', 'Smoothness', 'yes'),
(6891, 'orddd_lite_language_selected', 'en-GB', 'yes'),
(6892, 'orddd_lite_delivery_date_fields_on_checkout_page', 'billing_section', 'yes'),
(6893, 'orddd_lite_no_fields_for_virtual_product', '', 'yes'),
(6894, 'orddd_lite_no_fields_for_featured_product', '', 'yes'),
(6895, 'orddd_lite_update_calculate_min_time_disabled_days', 'yes', 'yes'),
(6896, 'orddd_lite_activate_time', '1603086867', 'yes'),
(6897, 'orddd_lite_installed', 'yes', 'yes'),
(6898, 'orddd_lite_db_version', '3.11.3', 'yes'),
(6901, 'orddd_lite_calculate_min_time_disabled_days', '', 'yes'),
(6902, 'ts_reset_tracking', '', 'yes'),
(6930, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:7;s:3:\"all\";i:7;s:8:\"approved\";s:1:\"7\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(7242, 'action_scheduler_migration_status', 'complete', 'yes'),
(7393, 'product_cat_children', 'a:3:{i:18;a:6:{i:0;i:19;i:1;i:20;i:2;i:21;i:3;i:32;i:4;i:33;i:5;i:34;}i:32;a:3:{i:0;i:36;i:1;i:37;i:2;i:38;}i:33;a:2:{i:0;i:39;i:1;i:40;}}', 'yes'),
(7444, '_transient_timeout_wc_shipping_method_count_legacy', '1608717271', 'no'),
(7445, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1602320559\";s:5:\"value\";i:2;}', 'no'),
(7446, '_transient_timeout_wc_term_counts', '1608717271', 'no'),
(7447, '_transient_wc_term_counts', 'a:12:{i:21;s:1:\"5\";i:35;s:1:\"7\";i:18;s:2:\"24\";i:38;s:1:\"3\";i:39;s:1:\"3\";i:34;s:1:\"9\";i:32;s:2:\"15\";i:22;s:1:\"2\";i:37;s:1:\"2\";i:40;s:1:\"4\";i:36;s:2:\"10\";i:33;s:1:\"8\";}', 'no'),
(7449, '_transient_timeout_acf_plugin_updates', '1606298087', 'no'),
(7450, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.1\";}}', 'no'),
(7451, '_transient_timeout__woocommerce_helper_subscriptions', '1606126187', 'no'),
(7452, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(7453, '_site_transient_timeout_theme_roots', '1606127088', 'no'),
(7454, '_site_transient_theme_roots', 'a:1:{s:5:\"EShop\";s:7:\"/themes\";}', 'no'),
(7455, '_transient_timeout__woocommerce_helper_updates', '1606168489', 'no'),
(7456, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1606125289;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(7458, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1606125303;s:7:\"checked\";a:16:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.1\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:11:\"amp/amp.php\";s:5:\"2.0.4\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.2.2\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.2\";s:115:\"finale-woocommerce-sales-countdown-timer-discount/finale-woocommerce-sales-countdown-timer-discount-plugin-lite.php\";s:6:\"2.13.0\";s:9:\"hello.php\";s:5:\"1.7.2\";s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";s:5:\"4.8.1\";s:59:\"order-delivery-date-for-woocommerce/order_delivery_date.php\";s:6:\"3.11.3\";s:25:\"png-to-jpg/png-to-jpg.php\";s:3:\"3.9\";s:38:\"woocommerce-quick-buy/wc-quick-buy.php\";s:5:\"2.8.1\";s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";s:5:\"6.9.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.5.2\";s:27:\"wc-customizations/index.php\";s:0:\"\";s:33:\"yith-woocommerce-compare/init.php\";s:5:\"2.4.0\";s:34:\"yith-woocommerce-wishlist/init.php\";s:6:\"3.0.14\";}s:8:\"response\";a:10:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:11:\"amp/amp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:17:\"w.org/plugins/amp\";s:4:\"slug\";s:3:\"amp\";s:6:\"plugin\";s:11:\"amp/amp.php\";s:11:\"new_version\";s:5:\"2.0.7\";s:3:\"url\";s:34:\"https://wordpress.org/plugins/amp/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/amp.2.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:56:\"https://ps.w.org/amp/assets/icon-256x256.png?rev=2369906\";s:2:\"1x\";s:56:\"https://ps.w.org/amp/assets/icon-128x128.png?rev=2369906\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/amp/assets/banner-1544x500.png?rev=2369906\";s:2:\"1x\";s:58:\"https://ps.w.org/amp/assets/banner-772x250.png?rev=2369906\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";s:6:\"5.6.20\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:59:\"order-delivery-date-for-woocommerce/order_delivery_date.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:49:\"w.org/plugins/order-delivery-date-for-woocommerce\";s:4:\"slug\";s:35:\"order-delivery-date-for-woocommerce\";s:6:\"plugin\";s:59:\"order-delivery-date-for-woocommerce/order_delivery_date.php\";s:11:\"new_version\";s:6:\"3.11.4\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/order-delivery-date-for-woocommerce/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/order-delivery-date-for-woocommerce.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/order-delivery-date-for-woocommerce/assets/icon-256x256.png?rev=2379428\";s:2:\"1x\";s:88:\"https://ps.w.org/order-delivery-date-for-woocommerce/assets/icon-128x128.png?rev=2379428\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/order-delivery-date-for-woocommerce/assets/banner-1544x500.png?rev=2379428\";s:2:\"1x\";s:90:\"https://ps.w.org/order-delivery-date-for-woocommerce/assets/banner-772x250.png?rev=2379428\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:49:\"w.org/plugins/recent-posts-widget-with-thumbnails\";s:4:\"slug\";s:35:\"recent-posts-widget-with-thumbnails\";s:6:\"plugin\";s:75:\"recent-posts-widget-with-thumbnails/recent-posts-widget-with-thumbnails.php\";s:11:\"new_version\";s:5:\"7.0.1\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/recent-posts-widget-with-thumbnails/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/recent-posts-widget-with-thumbnails.7.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/icon-256x256.png?rev=1063492\";s:2:\"1x\";s:88:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/icon-128x128.png?rev=1063492\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/banner-1544x500.png?rev=1063492\";s:2:\"1x\";s:90:\"https://ps.w.org/recent-posts-widget-with-thumbnails/assets/banner-772x250.png?rev=1063492\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:61:\"<p>Added catalan translation, tested with WordPress 5.5.3</p>\";s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.7.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.3\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"yith-woocommerce-compare/init.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/yith-woocommerce-compare\";s:4:\"slug\";s:24:\"yith-woocommerce-compare\";s:6:\"plugin\";s:33:\"yith-woocommerce-compare/init.php\";s:11:\"new_version\";s:5:\"2.4.2\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/yith-woocommerce-compare/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/yith-woocommerce-compare.2.4.2.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/yith-woocommerce-compare/assets/icon-128x128.jpg?rev=1460909\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-1544x500.jpg?rev=1460909\";s:2:\"1x\";s:79:\"https://ps.w.org/yith-woocommerce-compare/assets/banner-772x250.jpg?rev=1460909\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"yith-woocommerce-wishlist/init.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:39:\"w.org/plugins/yith-woocommerce-wishlist\";s:4:\"slug\";s:25:\"yith-woocommerce-wishlist\";s:6:\"plugin\";s:34:\"yith-woocommerce-wishlist/init.php\";s:11:\"new_version\";s:6:\"3.0.16\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/yith-woocommerce-wishlist/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/yith-woocommerce-wishlist.3.0.16.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/yith-woocommerce-wishlist/assets/icon-128x128.jpg?rev=2215573\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-1544x500.jpg?rev=2209192\";s:2:\"1x\";s:80:\"https://ps.w.org/yith-woocommerce-wishlist/assets/banner-772x250.jpg?rev=2209192\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.5.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:115:\"finale-woocommerce-sales-countdown-timer-discount/finale-woocommerce-sales-countdown-timer-discount-plugin-lite.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:63:\"w.org/plugins/finale-woocommerce-sales-countdown-timer-discount\";s:4:\"slug\";s:49:\"finale-woocommerce-sales-countdown-timer-discount\";s:6:\"plugin\";s:115:\"finale-woocommerce-sales-countdown-timer-discount/finale-woocommerce-sales-countdown-timer-discount-plugin-lite.php\";s:11:\"new_version\";s:6:\"2.13.0\";s:3:\"url\";s:80:\"https://wordpress.org/plugins/finale-woocommerce-sales-countdown-timer-discount/\";s:7:\"package\";s:99:\"https://downloads.wordpress.org/plugin/finale-woocommerce-sales-countdown-timer-discount.2.13.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:102:\"https://ps.w.org/finale-woocommerce-sales-countdown-timer-discount/assets/icon-256x256.jpg?rev=1659516\";s:2:\"1x\";s:102:\"https://ps.w.org/finale-woocommerce-sales-countdown-timer-discount/assets/icon-128x128.jpg?rev=1659516\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:105:\"https://ps.w.org/finale-woocommerce-sales-countdown-timer-discount/assets/banner-1544x500.jpg?rev=1760065\";s:2:\"1x\";s:104:\"https://ps.w.org/finale-woocommerce-sales-countdown-timer-discount/assets/banner-772x250.jpg?rev=1760095\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/mailchimp-for-wp\";s:4:\"slug\";s:16:\"mailchimp-for-wp\";s:6:\"plugin\";s:37:\"mailchimp-for-wp/mailchimp-for-wp.php\";s:11:\"new_version\";s:5:\"4.8.1\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/mailchimp-for-wp/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/mailchimp-for-wp.4.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/mailchimp-for-wp/assets/icon-256x256.png?rev=1224577\";s:2:\"1x\";s:69:\"https://ps.w.org/mailchimp-for-wp/assets/icon-128x128.png?rev=1224577\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/mailchimp-for-wp/assets/banner-772x250.png?rev=1184706\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"png-to-jpg/png-to-jpg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/png-to-jpg\";s:4:\"slug\";s:10:\"png-to-jpg\";s:6:\"plugin\";s:25:\"png-to-jpg/png-to-jpg.php\";s:11:\"new_version\";s:3:\"3.9\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/png-to-jpg/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/png-to-jpg.3.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/png-to-jpg/assets/icon-256x256.png?rev=1484560\";s:2:\"1x\";s:63:\"https://ps.w.org/png-to-jpg/assets/icon-128x128.png?rev=1484560\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/png-to-jpg/assets/banner-772x250.png?rev=1484560\";}s:11:\"banners_rtl\";a:0:{}}s:38:\"woocommerce-quick-buy/wc-quick-buy.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/woocommerce-quick-buy\";s:4:\"slug\";s:21:\"woocommerce-quick-buy\";s:6:\"plugin\";s:38:\"woocommerce-quick-buy/wc-quick-buy.php\";s:11:\"new_version\";s:5:\"2.8.1\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/woocommerce-quick-buy/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woocommerce-quick-buy.2.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/woocommerce-quick-buy/assets/icon-256x256.jpg?rev=2157616\";s:2:\"1x\";s:74:\"https://ps.w.org/woocommerce-quick-buy/assets/icon-128x128.jpg?rev=2157616\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/woocommerce-quick-buy/assets/banner-772x250.jpg?rev=2081945\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(7459, '_transient_timeout_wc_upgrade_notice_4.7.0', '1606211709', 'no'),
(7460, '_transient_wc_upgrade_notice_4.7.0', '', 'no'),
(7461, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1606125333;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(7462, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"zaffar@pixlogix.com\";s:7:\"version\";s:5:\"5.5.3\";s:9:\"timestamp\";i:1606125334;}', 'no'),
(7466, '_site_transient_timeout_php_check_e26e33de4a278e301580d402dcb3d659', '1606730155', 'no'),
(7467, '_site_transient_php_check_e26e33de4a278e301580d402dcb3d659', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(7468, '_transient_timeout_wc_onboarding_product_data', '1606211758', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(7469, '_transient_wc_onboarding_product_data', 'a:6:{s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 23 Nov 2020 09:55:58 GMT\";s:12:\"content-type\";s:31:\"application/json; charset=UTF-8\";s:14:\"content-length\";s:5:\"11482\";s:12:\"x-robots-tag\";s:7:\"noindex\";s:4:\"link\";s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:29:\"access-control-expose-headers\";s:33:\"X-WP-Total, X-WP-TotalPages, Link\";s:28:\"access-control-allow-headers\";s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";s:13:\"cache-control\";s:10:\"max-age=60\";s:5:\"allow\";s:3:\"GET\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"x-rq\";s:16:\"bom2 86 170 3185\";s:3:\"age\";s:2:\"67\";s:7:\"x-cache\";s:5:\"grace\";s:4:\"vary\";s:23:\"Accept-Encoding, Origin\";s:13:\"accept-ranges\";s:5:\"bytes\";}}s:4:\"body\";s:48091:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-2.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/Thumbnail-Authorize.Net-3-cdclct.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-2.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-2.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-Avalara-3-vfulwb.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site with Pay Now, Pay Later and Slice It. No credit card numbers, no passwords, no worries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-2.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-2.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-GAPro-3-b3imif.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/02\\/Thumbnail-FirstData-3-c5ssqi.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-2.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"WooCommerce Product Search\",\"image\":\"\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-2.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-2.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-2.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-2.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709},{\"title\":\"Coupon Shortcodes\",\"image\":\"\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"Worldpay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/WorldpayLogo2018.png\",\"excerpt\":\"Take payments via Worldpay Business Gateway.\\r\\n\\r\\n&nbsp;\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/worldpay\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc48c9d12dc0c43add4b099665a80b0\",\"slug\":\"woocommerce-gateway-worldpay\",\"id\":18646},{\"title\":\"Per Product Shipping\",\"image\":\"\",\"excerpt\":\"Define separate shipping costs per product which are combined at checkout to provide a total shipping cost.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/per-product-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ba16bebba1d74992efc398d575bf269e\",\"slug\":\"woocommerce-shipping-per-product\",\"id\":18590},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2017\\/12\\/Thumbnail-Jilt-3-s6qjnb.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Intuit Payments Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/11\\/Thumbnail-Intuit-Payments-2-im8zes.png\",\"excerpt\":\"Allow customers to securely save multiple payment methods to their account for faster checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/intuit-qbms\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"56ee7c24d725409e3244401ed625b4f3\",\"slug\":\"woocommerce-gateway-intuit-qbms\",\"id\":272221},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"Cost of Goods\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Cost-of-Goods-2.png\",\"excerpt\":\"Easily track profit by including \\u00a0cost of goods in your reports\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-cost-of-goods\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9908a60a5feefec5e33b38359f5f6964\",\"slug\":\"woocommerce-cost-of-goods\",\"id\":185438},{\"title\":\"Local Pickup Plus\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Local-Pickup-Plus-2.png\",\"excerpt\":\"Let customers pick up products from specific locations, select a pickup date, and more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/local-pickup-plus\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"4d6fbe9e8968a669d11cec40b85a0caa\",\"slug\":\"woocommerce-shipping-local-pickup-plus\",\"id\":18696}]}\";s:8:\"response\";a:2:{s:4:\"code\";i:200;s:7:\"message\";s:2:\"OK\";}s:7:\"cookies\";a:0:{}s:8:\"filename\";N;s:13:\"http_response\";O:25:\"WP_HTTP_Requests_Response\":5:{s:11:\"\0*\0response\";O:17:\"Requests_Response\":10:{s:4:\"body\";s:48091:\"{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-2.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/Thumbnail-Authorize.Net-3-cdclct.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-2.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-2.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-Avalara-3-vfulwb.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site with Pay Now, Pay Later and Slice It. No credit card numbers, no passwords, no worries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-2.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-2.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-GAPro-3-b3imif.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/02\\/Thumbnail-FirstData-3-c5ssqi.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-2.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"WooCommerce Product Search\",\"image\":\"\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-2.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-2.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-2.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-2.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709},{\"title\":\"Coupon Shortcodes\",\"image\":\"\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"Worldpay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/WorldpayLogo2018.png\",\"excerpt\":\"Take payments via Worldpay Business Gateway.\\r\\n\\r\\n&nbsp;\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/worldpay\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc48c9d12dc0c43add4b099665a80b0\",\"slug\":\"woocommerce-gateway-worldpay\",\"id\":18646},{\"title\":\"Per Product Shipping\",\"image\":\"\",\"excerpt\":\"Define separate shipping costs per product which are combined at checkout to provide a total shipping cost.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/per-product-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ba16bebba1d74992efc398d575bf269e\",\"slug\":\"woocommerce-shipping-per-product\",\"id\":18590},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2017\\/12\\/Thumbnail-Jilt-3-s6qjnb.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Intuit Payments Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/11\\/Thumbnail-Intuit-Payments-2-im8zes.png\",\"excerpt\":\"Allow customers to securely save multiple payment methods to their account for faster checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/intuit-qbms\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"56ee7c24d725409e3244401ed625b4f3\",\"slug\":\"woocommerce-gateway-intuit-qbms\",\"id\":272221},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"Cost of Goods\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Cost-of-Goods-2.png\",\"excerpt\":\"Easily track profit by including \\u00a0cost of goods in your reports\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-cost-of-goods\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9908a60a5feefec5e33b38359f5f6964\",\"slug\":\"woocommerce-cost-of-goods\",\"id\":185438},{\"title\":\"Local Pickup Plus\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Local-Pickup-Plus-2.png\",\"excerpt\":\"Let customers pick up products from specific locations, select a pickup date, and more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/local-pickup-plus\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"4d6fbe9e8968a669d11cec40b85a0caa\",\"slug\":\"woocommerce-shipping-local-pickup-plus\",\"id\":18696}]}\";s:3:\"raw\";s:48711:\"HTTP/1.1 200 OK\r\nServer: nginx\r\nDate: Mon, 23 Nov 2020 09:55:58 GMT\r\nContent-Type: application/json; charset=UTF-8\r\nContent-Length: 11482\r\nConnection: close\r\nX-Robots-Tag: noindex\r\nLink: <https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\r\nX-Content-Type-Options: nosniff\r\nAccess-Control-Expose-Headers: X-WP-Total, X-WP-TotalPages, Link\r\nAccess-Control-Allow-Headers: Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\r\nCache-Control: max-age=60\r\nAllow: GET\r\nContent-Encoding: gzip\r\nX-rq: bom2 86 170 3185\r\nAge: 67\r\nX-Cache: grace\r\nVary: Accept-Encoding, Origin\r\nAccept-Ranges: bytes\r\n\r\n{\"products\":[{\"title\":\"WooCommerce Google Analytics\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/GA-Dark.png\",\"excerpt\":\"Understand your customers and increase revenue with world\\u2019s leading analytics platform - integrated with WooCommerce for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2d21f7de14dfb8e9885a4622be701ddf\",\"slug\":\"woocommerce-google-analytics-integration\",\"id\":1442927},{\"title\":\"WooCommerce Tax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Tax-Dark.png\",\"excerpt\":\"Get live rates, discounted labels, tracking numbers, and more \\u2013 without leaving your dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/tax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":3220291},{\"title\":\"Stripe\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Stripe-Dark-1.png\",\"excerpt\":\"Accept all major debit and credit cards as well as local payment methods with Stripe.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/stripe\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"50bb7a985c691bb943a9da4d2c8b5efd\",\"slug\":\"woocommerce-gateway-stripe\",\"id\":18627},{\"title\":\"Jetpack\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Jetpack-Dark.png\",\"excerpt\":\"Power up and protect your store with Jetpack\\r\\n\\r\\nFor free security, insights and monitoring, connect to Jetpack. It\'s everything you need for a strong, secure start.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jetpack\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"d5bfef9700b62b2b132c74c74c3193eb\",\"slug\":\"jetpack\",\"id\":2725249},{\"title\":\"Facebook for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Facebook-Dark.png\",\"excerpt\":\"Get the Official Facebook for WooCommerce plugin for three powerful ways to help grow your business.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/facebook\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"0ea4fe4c2d7ca6338f8a322fb3e4e187\",\"slug\":\"facebook-for-woocommerce\",\"id\":2127297},{\"title\":\"Amazon Pay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Amazon-Pay-Dark.png\",\"excerpt\":\"Amazon Pay is embedded in your WooCommerce store. Transactions take place via\\u00a0Amazon widgets, so the buyer never leaves your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/pay-with-amazon\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9865e043bbbe4f8c9735af31cb509b53\",\"slug\":\"woocommerce-gateway-amazon-payments-advanced\",\"id\":238816},{\"title\":\"Square for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Square-Dark.png\",\"excerpt\":\"Accepting payments is easy with Square. Clear rates, fast deposits (1-2 business days). Sell online and in person, and sync all payments, items and inventory.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/square\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e907be8b86d7df0c8f8e0d0020b52638\",\"slug\":\"woocommerce-square\",\"id\":1770503},{\"title\":\"WooCommerce Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Dark-1.png\",\"excerpt\":\"Print USPS and DHL labels right from your WooCommerce dashboard and instantly save up to 90%. WooCommerce Shipping is free to use and saves you time and money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"f31b3b9273cce188cc2b27f7849d02dd\",\"slug\":\"woocommerce-services\",\"id\":2165910},{\"title\":\"WooCommerce Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Pay-Dark.png\",\"excerpt\":\"The only payment method designed exclusively for WooCommerce, by WooCommerce. Securely accept major credit and debit cards on your site. View and manage your transactions within your WordPress dashboard.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"8c6319ca-8f41-4e69-be63-6b15ee37773b\",\"slug\":\"woocommerce-payments\",\"id\":5278104},{\"title\":\"Mailchimp for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/09\\/logo-mailchimp-dark-v2.png\",\"excerpt\":\"Increase traffic, drive repeat purchases, and personalize your marketing when you connect to Mailchimp.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/mailchimp-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b4481616ebece8b1ff68fc59b90c1a91\",\"slug\":\"mailchimp-for-woocommerce\",\"id\":2545166},{\"title\":\"WooCommerce Subscriptions\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Subscriptions-Dark.png\",\"excerpt\":\"Let customers subscribe to your products or services and pay on a weekly, monthly or annual basis.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscriptions\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"6115e6d7e297b623a169fdcf5728b224\",\"slug\":\"woocommerce-subscriptions\",\"id\":27147},{\"title\":\"ShipStation Integration\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Shipstation-Dark.png\",\"excerpt\":\"Fulfill all your Woo orders (and wherever else you sell) quickly and easily using ShipStation. Try it free for 30 days today!\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipstation-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"9de8640767ba64237808ed7f245a49bb\",\"slug\":\"woocommerce-shipstation-integration\",\"id\":18734},{\"title\":\"PayPal Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Dark.png\",\"excerpt\":\"PayPal Checkout now with Smart Payment Buttons\\u2122, dynamically displays, PayPal, Venmo, PayPal Credit, or other local payment options in a single stack giving customers the choice to pay with their preferred option.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"69e6cba62ac4021df9e117cc3f716d07\",\"slug\":\"woocommerce-gateway-paypal-express-checkout\",\"id\":1597922},{\"title\":\"PayFast Payment Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Payfast-Dark-1.png\",\"excerpt\":\"Take payments on your WooCommerce store via PayFast (redirect method).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/payfast-payment-gateway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"557bf07293ad916f20c207c6c9cd15ff\",\"slug\":\"woocommerce-payfast-gateway\",\"id\":18596},{\"title\":\"Product Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-Add-Ons-Dark.png\",\"excerpt\":\"Offer add-ons like gift wrapping, special messages or other special options for your products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"147d0077e591e16db9d0d67daeb8c484\",\"slug\":\"woocommerce-product-addons\",\"id\":18618},{\"title\":\"Google Ads &#038; Marketing by Kliken\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/02\\/GA-for-Woo-Logo-374x192px-qu3duk.png\",\"excerpt\":\"Get in front of shoppers and drive traffic to your store so you can grow your business with Smart Shopping Campaigns and free listings.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-ads-and-marketing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"bf66e173-a220-4da7-9512-b5728c20fc16\",\"slug\":\"kliken-marketing-for-google\",\"id\":3866145},{\"title\":\"Braintree for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2016\\/02\\/braintree-black-copy.png\",\"excerpt\":\"Accept PayPal, credit cards and debit cards with a single payment gateway solution \\u2014 PayPal Powered by Braintree.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-paypal-powered-by-braintree\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"27f010c8e34ca65b205ddec88ad14536\",\"slug\":\"woocommerce-gateway-paypal-powered-by-braintree\",\"id\":1489837},{\"title\":\"USPS Shipping Method\",\"image\":\"\",\"excerpt\":\"Get shipping rates from the USPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/usps-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"83d1524e8f5f1913e58889f83d442c32\",\"slug\":\"woocommerce-shipping-usps\",\"id\":18657},{\"title\":\"WooCommerce Memberships\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/06\\/Thumbnail-Memberships-2.png\",\"excerpt\":\"Give members access to restricted content or products, for a fee or for free.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-memberships\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;199.00\",\"hash\":\"9288e7609ad0b487b81ef6232efa5cfc\",\"slug\":\"woocommerce-memberships\",\"id\":958589},{\"title\":\"Product Bundles\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-PB.png?v=1\",\"excerpt\":\"Offer personalized product bundles, bulk discount packages and assembled\\u00a0products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-bundles\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa2518b5-ab19-4b75-bde9-60ca51e20f28\",\"slug\":\"woocommerce-product-bundles\",\"id\":18716},{\"title\":\"UPS Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/UPS-Shipping-Method-Dark.png\",\"excerpt\":\"Get shipping rates from the UPS API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ups-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8dae58502913bac0fbcdcaba515ea998\",\"slug\":\"woocommerce-shipping-ups\",\"id\":18665},{\"title\":\"Table Rate Shipping\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Product-Table-Rate-Shipping-Dark.png\",\"excerpt\":\"Advanced, flexible shipping. Define multiple shipping rates based on location, price, weight, shipping class or item count.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/table-rate-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"3034ed8aff427b0f635fe4c86bbf008a\",\"slug\":\"woocommerce-table-rate-shipping\",\"id\":18718},{\"title\":\"Checkout Field Editor\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Checkout-Field-Editor-Dark.png\",\"excerpt\":\"Optimize your checkout process by adding, removing or editing fields to suit your needs.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-field-editor\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"2b8029f0d7cdd1118f4d843eb3ab43ff\",\"slug\":\"woocommerce-checkout-field-editor\",\"id\":184594},{\"title\":\"Shipment Tracking\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Ship-Tracking-Dark-1.png\",\"excerpt\":\"Add shipment tracking information to your orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipment-tracking\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"1968e199038a8a001c9f9966fd06bf88\",\"slug\":\"woocommerce-shipment-tracking\",\"id\":18693},{\"title\":\"Authorize.Net\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/Thumbnail-Authorize.Net-3-cdclct.png\",\"excerpt\":\"Authorize.Net gateway with support for pre-orders and subscriptions.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/authorize-net\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8b61524fe53add7fdd1a8d1b00b9327d\",\"slug\":\"woocommerce-gateway-authorize-net-cim\",\"id\":178481},{\"title\":\"WooCommerce Bookings\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Bookings-Dark.png\",\"excerpt\":\"Allow customers to book appointments, make reservations or rent equipment without leaving your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/hotel\\/\",\"price\":\"&#36;249.00\",\"hash\":\"911c438934af094c2b38d5560b9f50f3\",\"slug\":\"WooCommerce Bookings\",\"id\":390890},{\"title\":\"WooCommerce Customer \\/ Order \\/ Coupon Export\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/Thumbnail-Customer-Order-Coupon-Export-2.png\",\"excerpt\":\"Export customers, orders, and coupons from WooCommerce manually or on an automated schedule.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/ordercustomer-csv-export\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"914de15813a903c767b55445608bf290\",\"slug\":\"woocommerce-customer-order-csv-export\",\"id\":18652},{\"title\":\"Amazon and eBay Integration for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/10\\/wooapplogoretina.png\",\"excerpt\":\"Sell on Amazon and eBay directly from your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-ebay-integration\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"e4000666-9275-4c71-8619-be61fb41c9f9\",\"slug\":\"woocommerce-amazon-ebay-integration\",\"id\":3545890},{\"title\":\"LiveChat for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2015\\/11\\/LC_woo_regular-zmiaym.png\",\"excerpt\":\"Live Chat and messaging platform for sales and support -- increase average order value and overall sales through live conversations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/livechat\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.livechat.com\\/livechat-for-ecommerce\\/?a=woocommerce&amp;utm_source=woocommerce.com&amp;utm_medium=integration&amp;utm_campaign=woocommerce.com\",\"price\":\"&#36;0.00\",\"hash\":\"5344cc1f-ed4a-4d00-beff-9d67f6d372f3\",\"slug\":\"livechat-woocommerce\",\"id\":1348888},{\"title\":\"Smart Coupons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/10\\/wc-product-smart-coupons.png\",\"excerpt\":\"Everything you need for discounts, coupons, credits, gift cards, product giveaways, offers, and promotions. Most popular and complete coupons plugin for WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/smart-coupons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demo.storeapps.org\\/?demo=sc\",\"price\":\"&#36;99.00\",\"hash\":\"05c45f2aa466106a466de4402fff9dde\",\"slug\":\"woocommerce-smart-coupons\",\"id\":18729},{\"title\":\"Min\\/Max Quantities\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Min-Max-Qua-Dark.png\",\"excerpt\":\"Specify minimum and maximum allowed product quantities for orders to be completed.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/minmax-quantities\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"2b5188d90baecfb781a5aa2d6abb900a\",\"slug\":\"woocommerce-min-max-quantities\",\"id\":18616},{\"title\":\"Dynamic Pricing\",\"image\":\"\",\"excerpt\":\"Bulk discounts, role-based pricing and much more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/dynamic-pricing\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"9a41775bb33843f52c93c922b0053986\",\"slug\":\"woocommerce-dynamic-pricing\",\"id\":18643},{\"title\":\"FedEx Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/01\\/FedEx_Logo_Wallpaper.jpeg\",\"excerpt\":\"Get shipping rates from the FedEx API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/fedex-shipping-module\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1a48b598b47a81559baadef15e320f64\",\"slug\":\"woocommerce-shipping-fedex\",\"id\":18620},{\"title\":\"WooCommerce Print Invoices &amp; Packing lists\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/03\\/Thumbnail-Print-Invoices-Packing-lists-2.png\",\"excerpt\":\"Generate invoices, packing slips, and pick lists for your WooCommerce orders.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/print-invoices-packing-lists\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"465de1126817cdfb42d97ebca7eea717\",\"slug\":\"woocommerce-pip\",\"id\":18666},{\"title\":\"Name Your Price\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/09\\/nyp-icon-dark-v83owf.png\",\"excerpt\":\"Allow customers to define the product price. Also useful for accepting user-set donations.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/name-your-price\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"31b4e11696cd99a3c0572975a84f1c08\",\"slug\":\"woocommerce-name-your-price\",\"id\":18738},{\"title\":\"WooCommerce Zapier\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/woocommerce-zapier-logo.png\",\"excerpt\":\"Integrate with 2000+ cloud apps and services today.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-zapier\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;59.00\",\"hash\":\"0782bdbe932c00f4978850268c6cfe40\",\"slug\":\"woocommerce-zapier\",\"id\":243589},{\"title\":\"Product CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Product-CSV-Import-Dark.png\",\"excerpt\":\"Import, merge, and export products and variations to and from WooCommerce using a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"7ac9b00a1fe980fb61d28ab54d167d0d\",\"slug\":\"woocommerce-product-csv-import-suite\",\"id\":18680},{\"title\":\"Follow-Ups\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-Follow-Ups-Dark.png\",\"excerpt\":\"Automatically contact customers after purchase - be it everyone, your most loyal or your biggest spenders - and keep your store top-of-mind.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/follow-up-emails\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"05ece68fe94558e65278fe54d9ec84d2\",\"slug\":\"woocommerce-follow-up-emails\",\"id\":18686},{\"title\":\"Google Product Feed\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2011\\/11\\/logo-regular-lscryp.png\",\"excerpt\":\"Allows you to create real-time product &amp; review feeds to supply product information to Google Merchant Center for setting up Google Product Ads. Also supports Bing Merchant Centre.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/google-product-feed\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d55b4f852872025741312839f142447e\",\"slug\":\"woocommerce-product-feeds\",\"id\":18619},{\"title\":\"PayPal Payments Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Paypal-Payments-Pro-Dark.png\",\"excerpt\":\"Take credit card payments directly on your checkout using PayPal Pro.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/paypal-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6d23ba7f0e0198937c0029f9e865b40e\",\"slug\":\"woocommerce-gateway-paypal-pro\",\"id\":18594},{\"title\":\"Gravity Forms Product Add-ons\",\"image\":\"\",\"excerpt\":\"Powerful product add-ons, Gravity style\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/gravity-forms-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/gravity-forms\\/\",\"price\":\"&#36;99.00\",\"hash\":\"a6ac0ab1a1536e3a357ccf24c0650ed0\",\"slug\":\"woocommerce-gravityforms-product-addons\",\"id\":18633},{\"title\":\"Product Vendors\",\"image\":\"\",\"excerpt\":\"Turn your store into a multi-vendor marketplace\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-vendors\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"a97d99fccd651bbdd728f4d67d492c31\",\"slug\":\"woocommerce-product-vendors\",\"id\":219982},{\"title\":\"Composite Products\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CP.png?v=1\",\"excerpt\":\"Create product kit builders and custom product configurators using existing products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/composite-products\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"0343e0115bbcb97ccd98442b8326a0af\",\"slug\":\"woocommerce-composite-products\",\"id\":216836},{\"title\":\"WooCommerce Accommodation Bookings\",\"image\":\"\",\"excerpt\":\"Book accommodation using WooCommerce and the WooCommerce Bookings extension.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-accommodation-bookings\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"99b2a7a4af90b6cefd2a733b3b1f78e7\",\"slug\":\"woocommerce-accommodation-bookings\",\"id\":1412069},{\"title\":\"WooCommerce Paid Courses\",\"image\":\"\",\"excerpt\":\"Sell your online courses using the most popular eCommerce platform on the web \\u2013 WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-paid-courses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"bad2a02a063555b7e2bee59924690763\",\"slug\":\"woothemes-sensei\",\"id\":152116},{\"title\":\"WooCommerce Brands\",\"image\":\"\",\"excerpt\":\"Create, assign and list brands for products, and allow customers to view by brand.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/brands\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"8a88c7cbd2f1e73636c331c7a86f818c\",\"slug\":\"woocommerce-brands\",\"id\":18737},{\"title\":\"WooCommerce AvaTax\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-Avalara-3-vfulwb.png\",\"excerpt\":\"Get 100% accurate sales tax calculations and on time tax return filing. No more tracking sales tax rates, rules, or jurisdictional boundaries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-avatax\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"57077a4b28ba71cacf692bcf4a1a7f60\",\"slug\":\"woocommerce-avatax\",\"id\":1389326},{\"title\":\"Xero\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/08\\/xero2.png\",\"excerpt\":\"Save time with automated sync between WooCommerce and your Xero account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/xero\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"f0dd29d338d3c67cf6cee88eddf6869b\",\"slug\":\"woocommerce-xero\",\"id\":18733},{\"title\":\"Klarna Checkout\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2018\\/01\\/Partner_marketing_Klarna_Checkout_Black-1.png\",\"excerpt\":\"Klarna Checkout is a full checkout experience embedded on your site with Pay Now, Pay Later and Slice It. No credit card numbers, no passwords, no worries.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/klarna-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.krokedil.se\\/klarnacheckout\\/\",\"price\":\"&#36;0.00\",\"hash\":\"90f8ce584e785fcd8c2d739fd4f40d78\",\"slug\":\"klarna-checkout-for-woocommerce\",\"id\":2754152},{\"title\":\"Catalog Visibility Options\",\"image\":\"\",\"excerpt\":\"Transform WooCommerce into an online catalog by removing eCommerce functionality\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/catalog-visibility-options\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"12e791110365fdbb5865c8658907967e\",\"slug\":\"woocommerce-catalog-visibility-options\",\"id\":18648},{\"title\":\"Advanced Notifications\",\"image\":\"\",\"excerpt\":\"Easily setup \\\"new order\\\" and stock email notifications for multiple recipients of your choosing.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/advanced-notifications\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"112372c44b002fea2640bd6bfafbca27\",\"slug\":\"woocommerce-advanced-notifications\",\"id\":18740},{\"title\":\"WooCommerce Points and Rewards\",\"image\":\"\",\"excerpt\":\"Reward your customers for purchases and other actions with points which can be redeemed for discounts.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-points-and-rewards\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"1649b6cca5da8b923b01ca56b5cdd246\",\"slug\":\"woocommerce-points-and-rewards\",\"id\":210259},{\"title\":\"eWAY\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/eway-logo-3000-2000.jpg\",\"excerpt\":\"Take credit card payments securely via eWay (SG, MY, HK, AU, and NZ) keeping customers on your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eway\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"2c497769d98d025e0d340cd0b5ea5da1\",\"slug\":\"woocommerce-gateway-eway\",\"id\":18604},{\"title\":\"Australia Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/australia-post.gif\",\"excerpt\":\"Get shipping rates for your WooCommerce store from the Australia Post API, which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/australia-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1dbd4dc6bd91a9cda1bd6b9e7a5e4f43\",\"slug\":\"woocommerce-shipping-australia-post\",\"id\":18622},{\"title\":\"AutomateWoo\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-AutomateWoo-Dark-1.png\",\"excerpt\":\"Powerful marketing automation for WooCommerce. AutomateWoo has the tools you need to grow your store and make more money.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/automatewoo\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"ba9299b8-1dba-4aa0-a313-28bc1755cb88\",\"slug\":\"automatewoo\",\"id\":4652610},{\"title\":\"WooCommerce Subscription Downloads\",\"image\":\"\",\"excerpt\":\"Offer additional downloads to your subscribers, via downloadable products listed in your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-subscription-downloads\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5be9e21c13953253e4406d2a700382ec\",\"slug\":\"woocommerce-subscription-downloads\",\"id\":420458},{\"title\":\"Canada Post Shipping Method\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/canada-post.png\",\"excerpt\":\"Get shipping rates from the Canada Post Ratings API which handles both domestic and international parcels.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/canada-post-shipping-method\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ac029cdf3daba20b20c7b9be7dc00e0e\",\"slug\":\"woocommerce-shipping-canada-post\",\"id\":18623},{\"title\":\"WooCommerce Pre-Orders\",\"image\":\"\",\"excerpt\":\"Allow customers to order products before they are available.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-pre-orders\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"b2dc75e7d55e6f5bbfaccb59830f66b7\",\"slug\":\"woocommerce-pre-orders\",\"id\":178477},{\"title\":\"Sequential Order Numbers Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Sequential-Order-Numbers-Pro-2.png\",\"excerpt\":\"Tame your order numbers! Advanced &amp; sequential order numbers with optional prefixes \\/ suffixes\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sequential-order-numbers-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"0b18a2816e016ba9988b93b1cd8fe766\",\"slug\":\"woocommerce-sequential-order-numbers-pro\",\"id\":18688},{\"title\":\"WooCommerce Checkout Add-Ons\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/07\\/Thumbnail-Checkout-Add-Ons-2.png\",\"excerpt\":\"Highlight relevant products, offers like free shipping and other up-sells during checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-checkout-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"8fdca00b4000b7a8cc26371d0e470a8f\",\"slug\":\"woocommerce-checkout-add-ons\",\"id\":466854},{\"title\":\"WooCommerce Google Analytics Pro\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2016\\/01\\/Thumbnail-GAPro-3-b3imif.png\",\"excerpt\":\"Add advanced event tracking and enhanced eCommerce tracking to your WooCommerce site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-google-analytics-pro\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"d8aed8b7306b509eec1589e59abe319f\",\"slug\":\"woocommerce-google-analytics-pro\",\"id\":1312497},{\"title\":\"Conditional Shipping and Payments\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/07\\/Logo-CSP.png?v=1\",\"excerpt\":\"Use conditional logic to restrict the shipping and payment options available on your store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/conditional-shipping-and-payments\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"1f56ff002fa830b77017b0107505211a\",\"slug\":\"woocommerce-conditional-shipping-and-payments\",\"id\":680253},{\"title\":\"First Data\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2012\\/02\\/Thumbnail-FirstData-3-c5ssqi.png\",\"excerpt\":\"FirstData gateway for WooCommerce\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/firstdata\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb3e32663ec0810592eaf0d097796230\",\"slug\":\"woocommerce-gateway-firstdata\",\"id\":18645},{\"title\":\"WooCommerce Additional Variation Images\",\"image\":\"\",\"excerpt\":\"Add gallery images per variation on variable products within WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-additional-variation-images\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/themes.woocommerce.com\\/storefront\\/product\\/woo-single-1\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c61dd6de57dcecb32bd7358866de4539\",\"slug\":\"woocommerce-additional-variation-images\",\"id\":477384},{\"title\":\"WooSlider\",\"image\":\"\",\"excerpt\":\"WooSlider is the ultimate responsive slideshow WordPress slider plugin\\r\\n\\r\\n\\u00a0\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/wooslider\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/www.wooslider.com\\/\",\"price\":\"&#36;49.00\",\"hash\":\"209d98f3ccde6cc3de7e8732a2b20b6a\",\"slug\":\"wooslider\",\"id\":46506},{\"title\":\"WooCommerce Order Status Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2015\\/02\\/Thumbnail-Order-Status-Manager-2.png\",\"excerpt\":\"Create, edit, and delete completely custom order statuses and integrate them seamlessly into your order management flow.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"51fd9ab45394b4cad5a0ebf58d012342\",\"slug\":\"woocommerce-order-status-manager\",\"id\":588398},{\"title\":\"WooCommerce One Page Checkout\",\"image\":\"\",\"excerpt\":\"Create special pages where customers can choose products, checkout &amp; pay all on the one page.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-one-page-checkout\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"c9ba8f8352cd71b5508af5161268619a\",\"slug\":\"woocommerce-one-page-checkout\",\"id\":527886},{\"title\":\"WooCommerce Deposits\",\"image\":\"\",\"excerpt\":\"Enable customers to pay for products using a deposit or a payment plan.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-deposits\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;179.00\",\"hash\":\"de192a6cf12c4fd803248da5db700762\",\"slug\":\"woocommerce-deposits\",\"id\":977087},{\"title\":\"WooCommerce Product Search\",\"image\":\"\",\"excerpt\":\"The perfect search engine helps customers to find and buy products quickly \\u2013 essential for every WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-product-search\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/demo.itthinx.com\\/wps\\/\",\"price\":\"&#36;49.00\",\"hash\":\"c84cc8ca16ddac3408e6b6c5871133a8\",\"slug\":\"woocommerce-product-search\",\"id\":512174},{\"title\":\"WooCommerce Social Login\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/08\\/Thumbnail-Social-Login-2.png\",\"excerpt\":\"Enable Social Login for seamless checkout and account creation.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-social-login\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"http:\\/\\/demos.skyverge.com\\/woocommerce-social-login\\/\",\"price\":\"&#36;79.00\",\"hash\":\"b231cd6367a79cc8a53b7d992d77525d\",\"slug\":\"woocommerce-social-login\",\"id\":473617},{\"title\":\"Amazon S3 Storage\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/09\\/amazon.png\",\"excerpt\":\"Serve digital products via Amazon S3\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/amazon-s3-storage\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"473bf6f221b865eff165c97881b473bb\",\"slug\":\"woocommerce-amazon-s3-storage\",\"id\":18663},{\"title\":\"Variation Swatches and Photos\",\"image\":\"\",\"excerpt\":\"Show color and image swatches instead of dropdowns for variable products.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/variation-swatches-and-photos\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"https:\\/\\/www.elementstark.com\\/woocommerce-extension-demos\\/product-category\\/swatches-and-photos\\/\",\"price\":\"&#36;99.00\",\"hash\":\"37bea8d549df279c8278878d081b062f\",\"slug\":\"woocommerce-variation-swatches-and-photos\",\"id\":18697},{\"title\":\"WooCommerce Blocks\",\"image\":\"\",\"excerpt\":\"WooCommerce Blocks offers a range of Gutenberg blocks you can use to build and customise your site.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gutenberg-products-block\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c2e9f13a-f90c-4ffe-a8a5-b432399ec263\",\"slug\":\"woo-gutenberg-products-block\",\"id\":3076677},{\"title\":\"Cart Add-ons\",\"image\":\"\",\"excerpt\":\"A powerful tool for driving incremental and impulse purchases by customers once they are in the shopping cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/cart-add-ons\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"3a8ef25334396206f5da4cf208adeda3\",\"slug\":\"woocommerce-cart-add-ons\",\"id\":18717},{\"title\":\"WooCommerce Order Status Control\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/06\\/Thumbnail-Order-Status-Control-2.png\",\"excerpt\":\"Use this extension to automatically change the order status to \\\"completed\\\" after successful payment.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-order-status-control\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"32400e509c7c36dcc1cd368e8267d981\",\"slug\":\"woocommerce-order-status-control\",\"id\":439037},{\"title\":\"Shipping Multiple Addresses\",\"image\":\"\",\"excerpt\":\"Allow your customers to ship individual items in a single order to multiple addresses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/shipping-multiple-addresses\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"aa0eb6f777846d329952d5b891d6f8cc\",\"slug\":\"woocommerce-shipping-multiple-addresses\",\"id\":18741},{\"title\":\"TaxJar\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2014\\/10\\/taxjar-logotype.png\",\"excerpt\":\"Save hours every month by putting your sales tax on autopilot. Automated, multi-state sales tax calculation, reporting, and filing for your WooCommerce store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/taxjar\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"12072d8e-e933-4561-97b1-9db3c7eeed91\",\"slug\":\"taxjar-simplified-taxes-for-woocommerce\",\"id\":514914},{\"title\":\"Opayo (Formerly SagePay)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2011\\/10\\/Opayo_logo_RGB.png\",\"excerpt\":\"Take payments on your WooCommerce store via Opayo (formally SagePay).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/sage-pay-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc0cca47d0274d8ef9b164f6fbec1cc\",\"slug\":\"woocommerce-gateway-sagepay-form\",\"id\":18599},{\"title\":\"Royal Mail\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/04\\/royalmail.png\",\"excerpt\":\"Offer Royal Mail shipping rates to your customers\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/royal-mail\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"03839cca1a16c4488fcb669aeb91a056\",\"slug\":\"woocommerce-shipping-royalmail\",\"id\":182719},{\"title\":\"EU VAT Number\",\"image\":\"\",\"excerpt\":\"Collect VAT numbers at checkout and remove the VAT charge for eligible EU businesses.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/eu-vat-number\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"d2720c4b4bb8d6908e530355b7a2d734\",\"slug\":\"woocommerce-eu-vat-number\",\"id\":18592},{\"title\":\"QuickBooks Commerce (formerly TradeGecko)\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/09\\/qbo-mark.png\",\"excerpt\":\"Get a wholesale and multichannel inventory &amp; order management platform for your WooCommerce store with QuickBooks Commerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tradegecko\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"21da7811f7fc1f13ee19daa7415f0ff3\",\"slug\":\"woocommerce-tradegecko\",\"id\":245960},{\"title\":\"WooCommerce Tab Manager\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/11\\/Thumbnail-Tab-Manager-2.png\",\"excerpt\":\"Gives you complete control over your product page tabs, create local and global tabs using a visual drag-and-drop interface, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-tab-manager\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;99.00\",\"hash\":\"89a9ac74850855cfe772b4b4ee1e31e0\",\"slug\":\"woocommerce-tab-manager\",\"id\":132195},{\"title\":\"QuickBooks Sync for WooCommerce\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2019\\/04\\/woocommerce-com-logo-1-hyhzbh.png\",\"excerpt\":\"Automatic two-way sync for orders, customers, products, inventory and more between WooCommerce and QuickBooks (Online, Desktop, or POS).\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/quickbooks-sync-for-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"c5e32e20-7c1f-4585-8b15-d930c2d842ac\",\"slug\":\"myworks-woo-sync-for-quickbooks-online\",\"id\":4065824},{\"title\":\"Bulk Stock Management\",\"image\":\"\",\"excerpt\":\"Edit product and variation stock levels in bulk via this handy interface\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/bulk-stock-management\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"02f4328d52f324ebe06a78eaaae7934f\",\"slug\":\"woocommerce-bulk-stock-management\",\"id\":18670},{\"title\":\"Customer\\/Order\\/Coupon CSV Import Suite\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/07\\/Thumbnail-Customer-Order-Coupon-CSV-Import-Suite-2.png\",\"excerpt\":\"Import both customers and orders into WooCommerce from a CSV file.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/customerorder-csv-import-suite\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"eb00ca8317a0f64dbe185c995e5ea3df\",\"slug\":\"woocommerce-customer-order-csv-import\",\"id\":18709},{\"title\":\"Coupon Shortcodes\",\"image\":\"\",\"excerpt\":\"Show coupon discount info using shortcodes. Allows to render coupon information and content conditionally, based on the validity of coupons.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/coupon-shortcodes\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"ac5d9d51-70b2-4d8f-8b89-24200eea1394\",\"slug\":\"woocommerce-coupon-shortcodes\",\"id\":244762},{\"title\":\"WooCommerce Email Customizer\",\"image\":\"\",\"excerpt\":\"Connect with your customers with each email you send by visually modifying your email templates via the WordPress Customizer.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-email-customizer\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"bd909fa97874d431f203b5336c7e8873\",\"slug\":\"woocommerce-email-customizer\",\"id\":853277},{\"title\":\"WooCommerce Quick View\",\"image\":\"\",\"excerpt\":\"Show a quick-view button to view product details and add to cart via lightbox popup\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-quick-view\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;29.00\",\"hash\":\"619c6e57ce72c49c4b57e15b06eddb65\",\"slug\":\"woocommerce-quick-view\",\"id\":187509},{\"title\":\"Force Sells\",\"image\":\"\",\"excerpt\":\"Force products to be added to the cart\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/force-sells\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"3ebddfc491ca168a4ea4800b893302b0\",\"slug\":\"woocommerce-force-sells\",\"id\":18678},{\"title\":\"Worldpay\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/02\\/WorldpayLogo2018.png\",\"excerpt\":\"Take payments via Worldpay Business Gateway.\\r\\n\\r\\n&nbsp;\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/worldpay\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"6bc48c9d12dc0c43add4b099665a80b0\",\"slug\":\"woocommerce-gateway-worldpay\",\"id\":18646},{\"title\":\"Per Product Shipping\",\"image\":\"\",\"excerpt\":\"Define separate shipping costs per product which are combined at checkout to provide a total shipping cost.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/per-product-shipping\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"ba16bebba1d74992efc398d575bf269e\",\"slug\":\"woocommerce-shipping-per-product\",\"id\":18590},{\"title\":\"WooCommerce Purchase Order Gateway\",\"image\":\"\",\"excerpt\":\"Receive purchase orders via your WooCommerce-powered online store.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-gateway-purchase-order\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"573a92318244ece5facb449d63e74874\",\"slug\":\"woocommerce-gateway-purchase-order\",\"id\":478542},{\"title\":\"Groups for WooCommerce\",\"image\":\"\",\"excerpt\":\"Sell Memberships with Groups and WooCommerce \\u2013\\u00a0the best Group Membership and Access Control solution for WordPress and WooCommerce.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/groups-woocommerce\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"aa2d455ed00566e4fb71bc9d53f2613b\",\"slug\":\"groups-woocommerce\",\"id\":18704},{\"title\":\"Jilt\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2017\\/12\\/Thumbnail-Jilt-3-s6qjnb.png\",\"excerpt\":\"All-in-one email marketing platform built for WooCommerce stores. Send newsletters, abandoned cart reminders, win-backs, welcome automations, and more.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/jilt\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;0.00\",\"hash\":\"b53aafb64dca33835e41ee06de7e9816\",\"slug\":\"jilt-for-woocommerce\",\"id\":2754876},{\"title\":\"Returns and Warranty Requests\",\"image\":\"\",\"excerpt\":\"Manage the RMA process, add warranties to products &amp; let customers request &amp; manage returns \\/ exchanges from their account.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/warranty-requests\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9b4c41102e6b61ea5f558e16f9b63e25\",\"slug\":\"woocommerce-warranty\",\"id\":228315},{\"title\":\"Intuit Payments Gateway\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/woocommerce_uploads\\/2013\\/11\\/Thumbnail-Intuit-Payments-2-im8zes.png\",\"excerpt\":\"Allow customers to securely save multiple payment methods to their account for faster checkout.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/intuit-qbms\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"56ee7c24d725409e3244401ed625b4f3\",\"slug\":\"woocommerce-gateway-intuit-qbms\",\"id\":272221},{\"title\":\"Product Enquiry Form\",\"image\":\"\",\"excerpt\":\"Allow visitors to contact you directly from the product details page via a reCAPTCHA protected form to enquire about a product.\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/product-enquiry-form\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;49.00\",\"hash\":\"5a0f5d72519a8ffcc86669f042296937\",\"slug\":\"woocommerce-product-enquiry-form\",\"id\":18601},{\"title\":\"WooCommerce Box Office\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2020\\/06\\/Logo-Woo-BO-Dark.png\",\"excerpt\":\"Sell tickets for your next event, concert, function, fundraiser or conference directly on your own site\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-box-office\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;129.00\",\"hash\":\"e704c9160de318216a8fa657404b9131\",\"slug\":\"woocommerce-box-office\",\"id\":1628717},{\"title\":\"Cost of Goods\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2013\\/04\\/Thumbnail-Cost-of-Goods-2.png\",\"excerpt\":\"Easily track profit by including \\u00a0cost of goods in your reports\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/woocommerce-cost-of-goods\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"9908a60a5feefec5e33b38359f5f6964\",\"slug\":\"woocommerce-cost-of-goods\",\"id\":185438},{\"title\":\"Local Pickup Plus\",\"image\":\"https:\\/\\/woocommerce.com\\/wp-content\\/uploads\\/2012\\/05\\/Thumbnail-Local-Pickup-Plus-2.png\",\"excerpt\":\"Let customers pick up products from specific locations, select a pickup date, and more\",\"link\":\"https:\\/\\/woocommerce.com\\/products\\/local-pickup-plus\\/?utm_source=product&utm_medium=upsell&utm_campaign=wcaddons\",\"demo_url\":\"\",\"price\":\"&#36;79.00\",\"hash\":\"4d6fbe9e8968a669d11cec40b85a0caa\",\"slug\":\"woocommerce-shipping-local-pickup-plus\",\"id\":18696}]}\";s:7:\"headers\";O:25:\"Requests_Response_Headers\":1:{s:7:\"\0*\0data\";a:17:{s:6:\"server\";a:1:{i:0;s:5:\"nginx\";}s:4:\"date\";a:1:{i:0;s:29:\"Mon, 23 Nov 2020 09:55:58 GMT\";}s:12:\"content-type\";a:1:{i:0;s:31:\"application/json; charset=UTF-8\";}s:14:\"content-length\";a:1:{i:0;s:5:\"11482\";}s:12:\"x-robots-tag\";a:1:{i:0;s:7:\"noindex\";}s:4:\"link\";a:1:{i:0;s:60:\"<https://woocommerce.com/wp-json/>; rel=\"https://api.w.org/\"\";}s:22:\"x-content-type-options\";a:1:{i:0;s:7:\"nosniff\";}s:29:\"access-control-expose-headers\";a:1:{i:0;s:33:\"X-WP-Total, X-WP-TotalPages, Link\";}s:28:\"access-control-allow-headers\";a:1:{i:0;s:73:\"Authorization, X-WP-Nonce, Content-Disposition, Content-MD5, Content-Type\";}s:13:\"cache-control\";a:1:{i:0;s:10:\"max-age=60\";}s:5:\"allow\";a:1:{i:0;s:3:\"GET\";}s:16:\"content-encoding\";a:1:{i:0;s:4:\"gzip\";}s:4:\"x-rq\";a:1:{i:0;s:16:\"bom2 86 170 3185\";}s:3:\"age\";a:1:{i:0;s:2:\"67\";}s:7:\"x-cache\";a:1:{i:0;s:5:\"grace\";}s:4:\"vary\";a:1:{i:0;s:23:\"Accept-Encoding, Origin\";}s:13:\"accept-ranges\";a:1:{i:0;s:5:\"bytes\";}}}s:11:\"status_code\";i:200;s:16:\"protocol_version\";d:1.100000000000000088817841970012523233890533447265625;s:7:\"success\";b:1;s:9:\"redirects\";i:0;s:3:\"url\";s:59:\"https://woocommerce.com/wp-json/wccom-extensions/1.0/search\";s:7:\"history\";a:0:{}s:7:\"cookies\";O:19:\"Requests_Cookie_Jar\":1:{s:10:\"\0*\0cookies\";a:0:{}}}s:11:\"\0*\0filename\";N;s:4:\"data\";N;s:7:\"headers\";N;s:6:\"status\";N;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(7470, '_transient_doing_cron', '1606125375.7228350639343261718750', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/09/favicon.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:19:\"2020/09/favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_attached_file', '2020/09/cropped-favicon.png'),
(6, 6, '_wp_attachment_context', 'custom-logo'),
(7, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:27:\"2020/09/cropped-favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 8, '_wp_attached_file', '2020/09/cropped-favicon-1.png'),
(11, 8, '_wp_attachment_context', 'site-icon'),
(12, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2020/09/cropped-favicon-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-favicon-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-favicon-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:29:\"cropped-favicon-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:29:\"cropped-favicon-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:29:\"cropped-favicon-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 10, '_wp_attached_file', '2020/09/logo.png'),
(15, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:32;s:4:\"file\";s:16:\"2020/09/logo.png\";s:5:\"sizes\";a:1:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-100x32.png\";s:5:\"width\";i:100;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(16, 11, '_wp_attached_file', '2020/09/cropped-logo.png'),
(17, 11, '_wp_attachment_context', 'custom-logo'),
(18, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:32;s:4:\"file\";s:24:\"2020/09/cropped-logo.png\";s:5:\"sizes\";a:1:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"cropped-logo-100x32.png\";s:5:\"width\";i:100;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 13, '_wp_attached_file', 'woocommerce-placeholder.png'),
(24, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 18, '_edit_last', '1'),
(26, 18, '_edit_lock', '1601041451:1'),
(27, 18, '_thumbnail_id', '10'),
(28, 18, '_regular_price', '599'),
(29, 18, '_sale_price', '149'),
(30, 18, 'total_sales', '0'),
(31, 18, '_tax_status', 'taxable'),
(32, 18, '_tax_class', ''),
(33, 18, '_manage_stock', 'no'),
(34, 18, '_backorders', 'no'),
(35, 18, '_sold_individually', 'no'),
(36, 18, '_virtual', 'no'),
(37, 18, '_downloadable', 'no'),
(38, 18, '_download_limit', '-1'),
(39, 18, '_download_expiry', '-1'),
(40, 18, '_stock', NULL),
(41, 18, '_stock_status', 'instock'),
(42, 18, '_wc_average_rating', '0'),
(43, 18, '_wc_review_count', '0'),
(44, 18, '_product_version', '4.5.2'),
(45, 18, '_price', '149'),
(46, 20, '_wp_attached_file', '2020/09/other-small.jpg'),
(47, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1280;s:4:\"file\";s:23:\"2020/09/other-small.jpg\";s:5:\"sizes\";a:11:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"other-small-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"other-small-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"other-small-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"other-small-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"other-small-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"other-small-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"other-small-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"other-small-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"other-small-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 20, '_source_url', 'http://localhost/EShop/wp-content/plugins/woocommerce/packages/woocommerce-admin/images/onboarding/other-small.jpg'),
(51, 23, '_menu_item_type', 'post_type'),
(52, 23, '_menu_item_menu_item_parent', '0'),
(53, 23, '_menu_item_object_id', '19'),
(54, 23, '_menu_item_object', 'page'),
(55, 23, '_menu_item_target', ''),
(56, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 23, '_menu_item_xfn', ''),
(58, 23, '_menu_item_url', ''),
(60, 24, '_menu_item_type', 'post_type'),
(61, 24, '_menu_item_menu_item_parent', '28'),
(62, 24, '_menu_item_object_id', '15'),
(63, 24, '_menu_item_object', 'page'),
(64, 24, '_menu_item_target', ''),
(65, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 24, '_menu_item_xfn', ''),
(67, 24, '_menu_item_url', ''),
(69, 25, '_menu_item_type', 'post_type'),
(70, 25, '_menu_item_menu_item_parent', '28'),
(71, 25, '_menu_item_object_id', '16'),
(72, 25, '_menu_item_object', 'page'),
(73, 25, '_menu_item_target', ''),
(74, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 25, '_menu_item_xfn', ''),
(76, 25, '_menu_item_url', ''),
(96, 28, '_menu_item_type', 'post_type'),
(97, 28, '_menu_item_menu_item_parent', '0'),
(98, 28, '_menu_item_object_id', '14'),
(99, 28, '_menu_item_object', 'page'),
(100, 28, '_menu_item_target', ''),
(101, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 28, '_menu_item_xfn', ''),
(103, 28, '_menu_item_url', ''),
(105, 29, '_menu_item_type', 'post_type'),
(106, 29, '_menu_item_menu_item_parent', '0'),
(107, 29, '_menu_item_object_id', '17'),
(108, 29, '_menu_item_object', 'page'),
(109, 29, '_menu_item_target', ''),
(110, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(111, 29, '_menu_item_xfn', ''),
(112, 29, '_menu_item_url', ''),
(114, 30, '_menu_item_type', 'custom'),
(115, 30, '_menu_item_menu_item_parent', '0'),
(116, 30, '_menu_item_object_id', '30'),
(117, 30, '_menu_item_object', 'custom'),
(118, 30, '_menu_item_target', ''),
(119, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 30, '_menu_item_xfn', ''),
(121, 30, '_menu_item_url', 'http://localhost'),
(123, 31, '_menu_item_type', 'custom'),
(124, 31, '_menu_item_menu_item_parent', '0'),
(125, 31, '_menu_item_object_id', '31'),
(126, 31, '_menu_item_object', 'custom'),
(127, 31, '_menu_item_target', ''),
(128, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(129, 31, '_menu_item_xfn', ''),
(130, 31, '_menu_item_url', '/'),
(132, 32, '_menu_item_type', 'custom'),
(133, 32, '_menu_item_menu_item_parent', '0'),
(134, 32, '_menu_item_object_id', '32'),
(135, 32, '_menu_item_object', 'custom'),
(136, 32, '_menu_item_target', ''),
(137, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(138, 32, '_menu_item_xfn', ''),
(139, 32, '_menu_item_url', '/'),
(141, 34, '_edit_last', '1'),
(142, 34, '_edit_lock', '1601280782:1'),
(179, 45, '_edit_last', '1'),
(180, 45, '_edit_lock', '1601553098:1'),
(181, 19, '_edit_lock', '1601879313:1'),
(182, 53, '_wp_attached_file', '2020/09/banner1.jpg'),
(183, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:621;s:6:\"height\";i:194;s:4:\"file\";s:19:\"2020/09/banner1.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"banner1-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"banner1-600x187.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner1-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"banner1-300x194.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"banner1-600x187.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"banner1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 19, '_edit_last', '1'),
(185, 19, 'banner_image1', '53'),
(186, 19, '_banner_image1', 'field_5f6c7a05dda13'),
(187, 19, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n<p class=\"text-white\">Maboriosam in a nesciung eget magnae dapibus disting tloctio in the find it pereri odiy maboriosm.</p>'),
(188, 19, '_banner_text1', 'field_5f6c7b3bdda18'),
(189, 19, 'product_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(190, 19, '_product_link', 'field_5f6c7b74dda19'),
(191, 19, 'small_banners', '3'),
(192, 19, '_small_banners', 'field_5f6c7b90dda1a'),
(193, 54, 'banner_image1', '53'),
(194, 54, '_banner_image1', 'field_5f6c7a05dda13'),
(195, 54, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\nMaboriosam in a nesciung eget magnae\r\ndapibus disting tloctio in the find it pereri\r\nodiy maboriosm.'),
(196, 54, '_banner_text1', 'field_5f6c7b3bdda18'),
(197, 54, 'product_link', 'http://localhost/'),
(198, 54, '_product_link', 'field_5f6c7b74dda19'),
(199, 54, 'small_banners', ''),
(200, 54, '_small_banners', 'field_5f6c7b90dda1a'),
(201, 55, 'banner_image1', '53'),
(202, 55, '_banner_image1', 'field_5f6c7a05dda13'),
(203, 55, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\nHEL\r\n\r\nMaboriosam in a nesciung eget magnae\r\ndapibus disting tloctio in the find it pereri\r\nodiy maboriosm.'),
(204, 55, '_banner_text1', 'field_5f6c7b3bdda18'),
(205, 55, 'product_link', 'http://localhost/'),
(206, 55, '_product_link', 'field_5f6c7b74dda19'),
(207, 55, 'small_banners', ''),
(208, 55, '_small_banners', 'field_5f6c7b90dda1a'),
(209, 57, 'banner_image1', '53'),
(210, 57, '_banner_image1', 'field_5f6c7a05dda13'),
(211, 57, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n&nbsp;\r\n\r\nMaboriosam in a nesciung eget magnae\r\ndapibus disting tloctio in the find it pereri\r\nodiy maboriosm.'),
(212, 57, '_banner_text1', 'field_5f6c7b3bdda18'),
(213, 57, 'product_link', 'http://localhost/'),
(214, 57, '_product_link', 'field_5f6c7b74dda19'),
(215, 57, 'small_banners', ''),
(216, 57, '_small_banners', 'field_5f6c7b90dda1a'),
(217, 58, '_wp_attached_file', '2020/09/small_banner3.jpeg'),
(218, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:284;s:6:\"height\";i:177;s:4:\"file\";s:26:\"2020/09/small_banner3.jpeg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"small_banner3-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"small_banner3-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"small_banner3-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(219, 59, '_wp_attached_file', '2020/09/small_banner2.jpeg'),
(220, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:26:\"2020/09/small_banner2.jpeg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"small_banner2-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"small_banner2-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"small_banner2-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(221, 60, '_wp_attached_file', '2020/09/small_banner1.jpeg'),
(222, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:174;s:4:\"file\";s:26:\"2020/09/small_banner1.jpeg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"small_banner1-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"small_banner1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"small_banner1-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 19, 'small_banners_0_small_banner_image', '60'),
(224, 19, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(225, 19, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(226, 19, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(227, 19, 'small_banners_0_product_link', 'http://localhost/EShop/index.php/product-category/clothing/accessories/'),
(228, 19, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(229, 19, 'small_banners_0_link_text', 'Discover More'),
(230, 19, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(231, 19, 'small_banners_1_small_banner_image', '59'),
(232, 19, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(233, 19, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(234, 19, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(235, 19, 'small_banners_1_product_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(236, 19, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(237, 19, 'small_banners_1_link_text', 'Shop Now'),
(238, 19, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(239, 19, 'small_banners_2_small_banner_image', '58'),
(240, 19, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(241, 19, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(242, 19, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(243, 19, 'small_banners_2_product_link', 'http://localhost/EShop/index.php/product/new/'),
(244, 19, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(245, 19, 'small_banners_2_link_text', 'Discover more'),
(246, 19, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(247, 62, 'banner_image1', '53'),
(248, 62, '_banner_image1', 'field_5f6c7a05dda13'),
(249, 62, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n&nbsp;\r\n\r\nMaboriosam in a nesciung eget magnae\r\ndapibus disting tloctio in the find it pereri\r\nodiy maboriosm.'),
(250, 62, '_banner_text1', 'field_5f6c7b3bdda18'),
(251, 62, 'product_link', 'http://localhost/'),
(252, 62, '_product_link', 'field_5f6c7b74dda19'),
(253, 62, 'small_banners', '3'),
(254, 62, '_small_banners', 'field_5f6c7b90dda1a'),
(255, 62, 'small_banners_0_small_banner_image', '60'),
(256, 62, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(257, 62, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(258, 62, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(259, 62, 'small_banners_0_product_link', 'http://localhost/'),
(260, 62, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(261, 62, 'small_banners_0_link_text', 'Discover More'),
(262, 62, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(263, 62, 'small_banners_1_small_banner_image', '59'),
(264, 62, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(265, 62, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(266, 62, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(267, 62, 'small_banners_1_product_link', 'http://localhost/'),
(268, 62, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(269, 62, 'small_banners_1_link_text', 'Shop Now'),
(270, 62, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(271, 62, 'small_banners_2_small_banner_image', '58'),
(272, 62, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(273, 62, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(274, 62, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(275, 62, 'small_banners_2_product_link', 'http://localhost/EShop/'),
(276, 62, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(277, 62, 'small_banners_2_link_text', 'Discover more'),
(278, 62, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(279, 63, '_edit_last', '1'),
(280, 63, '_edit_lock', '1600955181:1'),
(281, 66, '_wp_attached_file', '2020/09/logo2.png'),
(282, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:110;s:6:\"height\";i:32;s:4:\"file\";s:17:\"2020/09/logo2.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"logo2-100x32.png\";s:5:\"width\";i:100;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"logo2-100x32.png\";s:5:\"width\";i:100;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(283, 1, '_edit_lock', '1600955274:1'),
(284, 1, '_edit_last', '1'),
(285, 1, '_thumbnail_id', '20'),
(290, 69, '_sku', 'woo-vneck-tee'),
(291, 69, 'total_sales', '1'),
(292, 69, '_tax_status', 'taxable'),
(293, 69, '_tax_class', ''),
(294, 69, '_manage_stock', 'no'),
(295, 69, '_backorders', 'no'),
(296, 69, '_sold_individually', 'no'),
(297, 69, '_virtual', 'no'),
(298, 69, '_downloadable', 'no'),
(299, 69, '_download_limit', '0'),
(300, 69, '_download_expiry', '0'),
(301, 69, '_stock', NULL),
(302, 69, '_stock_status', 'instock'),
(303, 69, '_wc_average_rating', '0'),
(304, 69, '_wc_review_count', '0'),
(305, 69, '_product_version', '4.5.2'),
(307, 70, '_sku', 'woo-hoodie'),
(308, 70, 'total_sales', '0'),
(309, 70, '_tax_status', 'taxable'),
(310, 70, '_tax_class', ''),
(311, 70, '_manage_stock', 'no'),
(312, 70, '_backorders', 'no'),
(313, 70, '_sold_individually', 'no'),
(314, 70, '_virtual', 'no'),
(315, 70, '_downloadable', 'no'),
(316, 70, '_download_limit', '0'),
(317, 70, '_download_expiry', '0'),
(318, 70, '_stock', NULL),
(319, 70, '_stock_status', 'instock'),
(320, 70, '_wc_average_rating', '0'),
(321, 70, '_wc_review_count', '0'),
(322, 70, '_product_version', '4.5.2'),
(324, 71, '_sku', 'woo-hoodie-with-logo'),
(325, 71, 'total_sales', '0'),
(326, 71, '_tax_status', 'taxable'),
(327, 71, '_tax_class', ''),
(328, 71, '_manage_stock', 'no'),
(329, 71, '_backorders', 'no'),
(330, 71, '_sold_individually', 'no'),
(331, 71, '_virtual', 'no'),
(332, 71, '_downloadable', 'no'),
(333, 71, '_download_limit', '0'),
(334, 71, '_download_expiry', '0'),
(335, 71, '_stock', NULL),
(336, 71, '_stock_status', 'instock'),
(337, 71, '_wc_average_rating', '0'),
(338, 71, '_wc_review_count', '0'),
(339, 71, '_product_version', '4.5.2'),
(341, 72, '_sku', 'woo-tshirt'),
(342, 72, 'total_sales', '0'),
(343, 72, '_tax_status', 'taxable'),
(344, 72, '_tax_class', ''),
(345, 72, '_manage_stock', 'no'),
(346, 72, '_backorders', 'no'),
(347, 72, '_sold_individually', 'no'),
(348, 72, '_virtual', 'no'),
(349, 72, '_downloadable', 'no'),
(350, 72, '_download_limit', '0'),
(351, 72, '_download_expiry', '0'),
(352, 72, '_stock', NULL),
(353, 72, '_stock_status', 'instock'),
(354, 72, '_wc_average_rating', '0'),
(355, 72, '_wc_review_count', '0'),
(356, 72, '_product_version', '4.5.2'),
(358, 73, '_sku', 'woo-beanie'),
(359, 73, 'total_sales', '0'),
(360, 73, '_tax_status', 'taxable'),
(361, 73, '_tax_class', ''),
(362, 73, '_manage_stock', 'no'),
(363, 73, '_backorders', 'no'),
(364, 73, '_sold_individually', 'no'),
(365, 73, '_virtual', 'no'),
(366, 73, '_downloadable', 'no'),
(367, 73, '_download_limit', '0'),
(368, 73, '_download_expiry', '0'),
(369, 73, '_stock', NULL),
(370, 73, '_stock_status', 'instock'),
(371, 73, '_wc_average_rating', '0'),
(372, 73, '_wc_review_count', '0'),
(373, 73, '_product_version', '4.5.2'),
(375, 74, '_sku', 'woo-belt'),
(376, 74, 'total_sales', '0'),
(377, 74, '_tax_status', 'taxable'),
(378, 74, '_tax_class', ''),
(379, 74, '_manage_stock', 'no'),
(380, 74, '_backorders', 'no'),
(381, 74, '_sold_individually', 'no'),
(382, 74, '_virtual', 'no'),
(383, 74, '_downloadable', 'no'),
(384, 74, '_download_limit', '0'),
(385, 74, '_download_expiry', '0'),
(386, 74, '_stock', NULL),
(387, 74, '_stock_status', 'instock'),
(388, 74, '_wc_average_rating', '0'),
(389, 74, '_wc_review_count', '0'),
(390, 74, '_product_version', '4.5.2'),
(392, 75, '_sku', 'woo-cap'),
(393, 75, 'total_sales', '0'),
(394, 75, '_tax_status', 'taxable'),
(395, 75, '_tax_class', ''),
(396, 75, '_manage_stock', 'no'),
(397, 75, '_backorders', 'no'),
(398, 75, '_sold_individually', 'no'),
(399, 75, '_virtual', 'no'),
(400, 75, '_downloadable', 'no'),
(401, 75, '_download_limit', '0'),
(402, 75, '_download_expiry', '0'),
(403, 75, '_stock', NULL),
(404, 75, '_stock_status', 'instock'),
(405, 75, '_wc_average_rating', '0'),
(406, 75, '_wc_review_count', '0'),
(407, 75, '_product_version', '4.5.2'),
(409, 76, '_sku', 'woo-sunglasses'),
(410, 76, 'total_sales', '0'),
(411, 76, '_tax_status', 'taxable'),
(412, 76, '_tax_class', ''),
(413, 76, '_manage_stock', 'no'),
(414, 76, '_backorders', 'no'),
(415, 76, '_sold_individually', 'no'),
(416, 76, '_virtual', 'no'),
(417, 76, '_downloadable', 'no'),
(418, 76, '_download_limit', '0'),
(419, 76, '_download_expiry', '0'),
(420, 76, '_stock', NULL),
(421, 76, '_stock_status', 'instock'),
(422, 76, '_wc_average_rating', '0'),
(423, 76, '_wc_review_count', '0'),
(424, 76, '_product_version', '4.5.2'),
(426, 77, '_sku', 'woo-hoodie-with-pocket'),
(427, 77, 'total_sales', '0'),
(428, 77, '_tax_status', 'taxable'),
(429, 77, '_tax_class', ''),
(430, 77, '_manage_stock', 'no'),
(431, 77, '_backorders', 'no'),
(432, 77, '_sold_individually', 'no'),
(433, 77, '_virtual', 'no'),
(434, 77, '_downloadable', 'no'),
(435, 77, '_download_limit', '0'),
(436, 77, '_download_expiry', '0'),
(437, 77, '_stock', NULL),
(438, 77, '_stock_status', 'instock'),
(439, 77, '_wc_average_rating', '0'),
(440, 77, '_wc_review_count', '0'),
(441, 77, '_product_version', '4.5.2'),
(443, 78, '_sku', 'woo-hoodie-with-zipper'),
(444, 78, 'total_sales', '0'),
(445, 78, '_tax_status', 'taxable'),
(446, 78, '_tax_class', ''),
(447, 78, '_manage_stock', 'no'),
(448, 78, '_backorders', 'no'),
(449, 78, '_sold_individually', 'no'),
(450, 78, '_virtual', 'no'),
(451, 78, '_downloadable', 'no'),
(452, 78, '_download_limit', '0'),
(453, 78, '_download_expiry', '0'),
(454, 78, '_stock', NULL),
(455, 78, '_stock_status', 'instock'),
(456, 78, '_wc_average_rating', '0'),
(457, 78, '_wc_review_count', '0'),
(458, 78, '_product_version', '4.5.2'),
(460, 79, '_sku', 'woo-long-sleeve-tee'),
(461, 79, 'total_sales', '0'),
(462, 79, '_tax_status', 'taxable'),
(463, 79, '_tax_class', ''),
(464, 79, '_manage_stock', 'no'),
(465, 79, '_backorders', 'no'),
(466, 79, '_sold_individually', 'no'),
(467, 79, '_virtual', 'no'),
(468, 79, '_downloadable', 'no'),
(469, 79, '_download_limit', '0'),
(470, 79, '_download_expiry', '0'),
(471, 79, '_stock', NULL),
(472, 79, '_stock_status', 'instock'),
(473, 79, '_wc_average_rating', '0'),
(474, 79, '_wc_review_count', '0'),
(475, 79, '_product_version', '4.5.2'),
(477, 80, '_sku', 'woo-polo'),
(478, 80, 'total_sales', '0'),
(479, 80, '_tax_status', 'taxable'),
(480, 80, '_tax_class', ''),
(481, 80, '_manage_stock', 'no'),
(482, 80, '_backorders', 'no'),
(483, 80, '_sold_individually', 'no'),
(484, 80, '_virtual', 'no'),
(485, 80, '_downloadable', 'no'),
(486, 80, '_download_limit', '0'),
(487, 80, '_download_expiry', '0'),
(488, 80, '_stock', NULL),
(489, 80, '_stock_status', 'instock'),
(490, 80, '_wc_average_rating', '0'),
(491, 80, '_wc_review_count', '0'),
(492, 80, '_product_version', '4.5.2'),
(494, 81, '_sku', 'woo-album'),
(495, 81, 'total_sales', '3'),
(496, 81, '_tax_status', 'taxable'),
(497, 81, '_tax_class', ''),
(498, 81, '_manage_stock', 'no'),
(499, 81, '_backorders', 'no'),
(500, 81, '_sold_individually', 'no'),
(501, 81, '_virtual', 'yes'),
(502, 81, '_downloadable', 'yes'),
(503, 81, '_download_limit', '1'),
(504, 81, '_download_expiry', '1'),
(505, 81, '_stock', NULL),
(506, 81, '_stock_status', 'instock'),
(507, 81, '_wc_average_rating', '0'),
(508, 81, '_wc_review_count', '0'),
(509, 81, '_product_version', '4.5.2'),
(511, 82, '_sku', 'woo-single'),
(512, 82, 'total_sales', '2'),
(513, 82, '_tax_status', 'taxable'),
(514, 82, '_tax_class', ''),
(515, 82, '_manage_stock', 'no'),
(516, 82, '_backorders', 'no'),
(517, 82, '_sold_individually', 'no'),
(518, 82, '_virtual', 'yes'),
(519, 82, '_downloadable', 'yes'),
(520, 82, '_download_limit', '1'),
(521, 82, '_download_expiry', '1'),
(522, 82, '_stock', NULL),
(523, 82, '_stock_status', 'instock'),
(524, 82, '_wc_average_rating', '0'),
(525, 82, '_wc_review_count', '0'),
(526, 82, '_product_version', '4.5.2'),
(528, 83, '_sku', 'woo-vneck-tee-red'),
(529, 83, 'total_sales', '0'),
(530, 83, '_tax_status', 'taxable'),
(531, 83, '_tax_class', ''),
(532, 83, '_manage_stock', 'no'),
(533, 83, '_backorders', 'no'),
(534, 83, '_sold_individually', 'no'),
(535, 83, '_virtual', 'no'),
(536, 83, '_downloadable', 'no'),
(537, 83, '_download_limit', '0'),
(538, 83, '_download_expiry', '0'),
(539, 83, '_stock', NULL),
(540, 83, '_stock_status', 'instock'),
(541, 83, '_wc_average_rating', '0'),
(542, 83, '_wc_review_count', '0'),
(543, 83, '_product_version', '4.5.2'),
(545, 84, '_sku', 'woo-vneck-tee-green'),
(546, 84, 'total_sales', '0'),
(547, 84, '_tax_status', 'taxable'),
(548, 84, '_tax_class', ''),
(549, 84, '_manage_stock', 'no'),
(550, 84, '_backorders', 'no'),
(551, 84, '_sold_individually', 'no'),
(552, 84, '_virtual', 'no'),
(553, 84, '_downloadable', 'no'),
(554, 84, '_download_limit', '0'),
(555, 84, '_download_expiry', '0'),
(556, 84, '_stock', NULL),
(557, 84, '_stock_status', 'instock'),
(558, 84, '_wc_average_rating', '0'),
(559, 84, '_wc_review_count', '0'),
(560, 84, '_product_version', '4.5.2'),
(562, 85, '_sku', 'woo-vneck-tee-blue'),
(563, 85, 'total_sales', '0'),
(564, 85, '_tax_status', 'taxable'),
(565, 85, '_tax_class', ''),
(566, 85, '_manage_stock', 'no'),
(567, 85, '_backorders', 'no'),
(568, 85, '_sold_individually', 'no'),
(569, 85, '_virtual', 'no'),
(570, 85, '_downloadable', 'no'),
(571, 85, '_download_limit', '0'),
(572, 85, '_download_expiry', '0'),
(573, 85, '_stock', NULL),
(574, 85, '_stock_status', 'instock'),
(575, 85, '_wc_average_rating', '0'),
(576, 85, '_wc_review_count', '0'),
(577, 85, '_product_version', '4.5.2'),
(579, 86, '_sku', 'woo-hoodie-red'),
(580, 86, 'total_sales', '0'),
(581, 86, '_tax_status', 'taxable'),
(582, 86, '_tax_class', ''),
(583, 86, '_manage_stock', 'no'),
(584, 86, '_backorders', 'no'),
(585, 86, '_sold_individually', 'no'),
(586, 86, '_virtual', 'no'),
(587, 86, '_downloadable', 'no'),
(588, 86, '_download_limit', '0'),
(589, 86, '_download_expiry', '0'),
(590, 86, '_stock', NULL),
(591, 86, '_stock_status', 'instock'),
(592, 86, '_wc_average_rating', '0'),
(593, 86, '_wc_review_count', '0'),
(594, 86, '_product_version', '4.5.2'),
(596, 87, '_sku', 'woo-hoodie-green'),
(597, 87, 'total_sales', '0'),
(598, 87, '_tax_status', 'taxable'),
(599, 87, '_tax_class', ''),
(600, 87, '_manage_stock', 'no'),
(601, 87, '_backorders', 'no'),
(602, 87, '_sold_individually', 'no'),
(603, 87, '_virtual', 'no'),
(604, 87, '_downloadable', 'no'),
(605, 87, '_download_limit', '0'),
(606, 87, '_download_expiry', '0'),
(607, 87, '_stock', NULL),
(608, 87, '_stock_status', 'instock'),
(609, 87, '_wc_average_rating', '0'),
(610, 87, '_wc_review_count', '0'),
(611, 87, '_product_version', '4.5.2'),
(613, 88, '_sku', 'woo-hoodie-blue'),
(614, 88, 'total_sales', '0'),
(615, 88, '_tax_status', 'taxable'),
(616, 88, '_tax_class', ''),
(617, 88, '_manage_stock', 'no'),
(618, 88, '_backorders', 'no'),
(619, 88, '_sold_individually', 'no'),
(620, 88, '_virtual', 'no'),
(621, 88, '_downloadable', 'no'),
(622, 88, '_download_limit', '0'),
(623, 88, '_download_expiry', '0'),
(624, 88, '_stock', NULL),
(625, 88, '_stock_status', 'instock'),
(626, 88, '_wc_average_rating', '0'),
(627, 88, '_wc_review_count', '0'),
(628, 88, '_product_version', '4.5.2'),
(630, 89, '_sku', 'Woo-tshirt-logo'),
(631, 89, 'total_sales', '2'),
(632, 89, '_tax_status', 'taxable'),
(633, 89, '_tax_class', ''),
(634, 89, '_manage_stock', 'no'),
(635, 89, '_backorders', 'no'),
(636, 89, '_sold_individually', 'no'),
(637, 89, '_virtual', 'no'),
(638, 89, '_downloadable', 'no'),
(639, 89, '_download_limit', '0'),
(640, 89, '_download_expiry', '0'),
(641, 89, '_stock', NULL),
(642, 89, '_stock_status', 'instock'),
(643, 89, '_wc_average_rating', '0'),
(644, 89, '_wc_review_count', '0'),
(645, 89, '_product_version', '4.5.2'),
(647, 90, '_sku', 'Woo-beanie-logo'),
(648, 90, 'total_sales', '0'),
(649, 90, '_tax_status', 'taxable'),
(650, 90, '_tax_class', ''),
(651, 90, '_manage_stock', 'no'),
(652, 90, '_backorders', 'no'),
(653, 90, '_sold_individually', 'no'),
(654, 90, '_virtual', 'no'),
(655, 90, '_downloadable', 'no'),
(656, 90, '_download_limit', '0'),
(657, 90, '_download_expiry', '0'),
(658, 90, '_stock', NULL),
(659, 90, '_stock_status', 'instock'),
(660, 90, '_wc_average_rating', '0'),
(661, 90, '_wc_review_count', '0'),
(662, 90, '_product_version', '4.5.2'),
(664, 91, '_sku', 'logo-collection'),
(665, 91, 'total_sales', '0'),
(666, 91, '_tax_status', 'taxable'),
(667, 91, '_tax_class', ''),
(668, 91, '_manage_stock', 'no'),
(669, 91, '_backorders', 'no'),
(670, 91, '_sold_individually', 'no'),
(671, 91, '_virtual', 'no'),
(672, 91, '_downloadable', 'no'),
(673, 91, '_download_limit', '0'),
(674, 91, '_download_expiry', '0'),
(675, 91, '_stock', NULL),
(676, 91, '_stock_status', 'instock'),
(677, 91, '_wc_average_rating', '0'),
(678, 91, '_wc_review_count', '0'),
(679, 91, '_product_version', '4.5.2'),
(681, 92, '_sku', 'wp-pennant'),
(682, 92, 'total_sales', '0'),
(683, 92, '_tax_status', 'taxable'),
(684, 92, '_tax_class', ''),
(685, 92, '_manage_stock', 'no'),
(686, 92, '_backorders', 'no'),
(687, 92, '_sold_individually', 'no'),
(688, 92, '_virtual', 'no'),
(689, 92, '_downloadable', 'no'),
(690, 92, '_download_limit', '0'),
(691, 92, '_download_expiry', '0'),
(692, 92, '_stock', NULL),
(693, 92, '_stock_status', 'instock'),
(694, 92, '_wc_average_rating', '0'),
(695, 92, '_wc_review_count', '0'),
(696, 92, '_product_version', '4.5.2'),
(698, 93, '_sku', 'woo-hoodie-blue-logo'),
(699, 93, 'total_sales', '0'),
(700, 93, '_tax_status', 'taxable'),
(701, 93, '_tax_class', ''),
(702, 93, '_manage_stock', 'no'),
(703, 93, '_backorders', 'no'),
(704, 93, '_sold_individually', 'no'),
(705, 93, '_virtual', 'no'),
(706, 93, '_downloadable', 'no'),
(707, 93, '_download_limit', '0'),
(708, 93, '_download_expiry', '0'),
(709, 93, '_stock', NULL),
(710, 93, '_stock_status', 'instock'),
(711, 93, '_wc_average_rating', '0'),
(712, 93, '_wc_review_count', '0'),
(713, 93, '_product_version', '4.5.2'),
(715, 94, '_wp_attached_file', '2020/09/vneck-tee-2.jpg'),
(716, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:23:\"2020/09/vneck-tee-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"vneck-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"vneck-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(717, 94, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vneck-tee-2.jpg'),
(718, 95, '_wp_attached_file', '2020/09/vnech-tee-green-1.jpg'),
(719, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:29:\"2020/09/vnech-tee-green-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"vnech-tee-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"vnech-tee-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(720, 95, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-green-1.jpg'),
(721, 96, '_wp_attached_file', '2020/09/vnech-tee-blue-1.jpg'),
(722, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:28:\"2020/09/vnech-tee-blue-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:28:\"vnech-tee-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"vnech-tee-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(723, 96, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/vnech-tee-blue-1.jpg'),
(724, 69, '_wpcom_is_markdown', '1'),
(725, 69, '_wp_old_slug', 'import-placeholder-for-44'),
(726, 69, '_product_image_gallery', '95,96'),
(727, 69, '_thumbnail_id', '94'),
(728, 69, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}}'),
(729, 97, '_wp_attached_file', '2020/09/hoodie-2.jpg'),
(730, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2020/09/hoodie-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"hoodie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"hoodie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"hoodie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"hoodie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(731, 97, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-2.jpg'),
(732, 98, '_wp_attached_file', '2020/09/hoodie-blue-1.jpg'),
(733, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:25:\"2020/09/hoodie-blue-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:25:\"hoodie-blue-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"hoodie-blue-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(734, 98, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-blue-1.jpg'),
(735, 99, '_wp_attached_file', '2020/09/hoodie-green-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(736, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:26:\"2020/09/hoodie-green-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:26:\"hoodie-green-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"hoodie-green-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(737, 99, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-green-1.jpg'),
(738, 100, '_wp_attached_file', '2020/09/hoodie-with-logo-2.jpg'),
(739, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2020/09/hoodie-with-logo-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"hoodie-with-logo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-logo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(740, 100, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-logo-2.jpg'),
(741, 70, '_wpcom_is_markdown', '1'),
(742, 70, '_wp_old_slug', 'import-placeholder-for-45'),
(743, 70, '_product_image_gallery', '98,99,100'),
(744, 70, '_thumbnail_id', '97'),
(745, 70, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;}s:4:\"logo\";a:6:{s:4:\"name\";s:4:\"Logo\";s:5:\"value\";s:8:\"Yes | No\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:0;}}'),
(746, 71, '_wpcom_is_markdown', '1'),
(747, 71, '_wp_old_slug', 'import-placeholder-for-46'),
(748, 71, '_regular_price', '45'),
(749, 71, '_thumbnail_id', '100'),
(750, 71, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(751, 71, '_price', '45'),
(752, 101, '_wp_attached_file', '2020/09/tshirt-2.jpg'),
(753, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2020/09/tshirt-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"tshirt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"tshirt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"tshirt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"tshirt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(754, 101, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/tshirt-2.jpg'),
(755, 72, '_wpcom_is_markdown', '1'),
(756, 72, '_wp_old_slug', 'import-placeholder-for-47'),
(757, 72, '_regular_price', '18'),
(758, 72, '_thumbnail_id', '101'),
(759, 72, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(760, 72, '_price', '18'),
(761, 102, '_wp_attached_file', '2020/09/beanie-2.jpg'),
(762, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:20:\"2020/09/beanie-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"beanie-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"beanie-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"beanie-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"beanie-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(763, 102, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-2.jpg'),
(764, 73, '_wpcom_is_markdown', '1'),
(765, 73, '_wp_old_slug', 'import-placeholder-for-48'),
(766, 73, '_regular_price', '20'),
(767, 73, '_sale_price', '18'),
(768, 73, '_thumbnail_id', '102'),
(769, 73, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(770, 73, '_price', '18'),
(771, 103, '_wp_attached_file', '2020/09/belt-2.jpg'),
(772, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2020/09/belt-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"belt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"belt-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"belt-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"belt-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"belt-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(773, 103, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/belt-2.jpg'),
(774, 74, '_wpcom_is_markdown', '1'),
(775, 74, '_wp_old_slug', 'import-placeholder-for-58'),
(776, 74, '_regular_price', '65'),
(777, 74, '_sale_price', '55'),
(778, 74, '_thumbnail_id', '103'),
(779, 74, '_price', '55'),
(780, 104, '_wp_attached_file', '2020/09/cap-2.jpg'),
(781, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:17:\"2020/09/cap-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"cap-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cap-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"cap-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"cap-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"cap-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(782, 104, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/cap-2.jpg'),
(783, 75, '_wpcom_is_markdown', '1'),
(784, 75, '_wp_old_slug', 'import-placeholder-for-60'),
(785, 75, '_regular_price', '18'),
(786, 75, '_sale_price', '16'),
(787, 75, '_thumbnail_id', '104'),
(788, 75, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(789, 75, '_price', '16'),
(790, 105, '_wp_attached_file', '2020/09/sunglasses-2.jpg'),
(791, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:24:\"2020/09/sunglasses-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:24:\"sunglasses-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"sunglasses-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(792, 105, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/sunglasses-2.jpg'),
(793, 76, '_wpcom_is_markdown', '1'),
(794, 76, '_wp_old_slug', 'import-placeholder-for-62'),
(795, 76, '_regular_price', '90'),
(796, 76, '_thumbnail_id', '105'),
(797, 76, '_price', '90'),
(798, 106, '_wp_attached_file', '2020/09/hoodie-with-pocket-2.jpg'),
(799, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:32:\"2020/09/hoodie-with-pocket-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-pocket-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(800, 106, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-pocket-2.jpg'),
(801, 77, '_wpcom_is_markdown', '1'),
(802, 77, '_wp_old_slug', 'import-placeholder-for-64'),
(803, 77, '_regular_price', '45'),
(804, 77, '_sale_price', '35'),
(805, 77, '_thumbnail_id', '106'),
(806, 77, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(807, 77, '_price', '35'),
(808, 107, '_wp_attached_file', '2020/09/hoodie-with-zipper-2.jpg'),
(809, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:32:\"2020/09/hoodie-with-zipper-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"hoodie-with-zipper-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(810, 107, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/hoodie-with-zipper-2.jpg'),
(811, 78, '_wpcom_is_markdown', '1'),
(812, 78, '_wp_old_slug', 'import-placeholder-for-66'),
(813, 78, '_regular_price', '45'),
(814, 78, '_thumbnail_id', '107'),
(815, 78, '_price', '45'),
(816, 108, '_wp_attached_file', '2020/09/long-sleeve-tee-2.jpg'),
(817, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:29:\"2020/09/long-sleeve-tee-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:29:\"long-sleeve-tee-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"long-sleeve-tee-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(818, 108, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/long-sleeve-tee-2.jpg'),
(819, 79, '_wpcom_is_markdown', '1'),
(820, 79, '_wp_old_slug', 'import-placeholder-for-68'),
(821, 79, '_regular_price', '25'),
(822, 79, '_thumbnail_id', '108'),
(823, 79, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(824, 79, '_price', '25'),
(825, 109, '_wp_attached_file', '2020/09/polo-2.jpg'),
(826, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:18:\"2020/09/polo-2.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"polo-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"polo-2-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"polo-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"polo-2-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"polo-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(827, 109, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/polo-2.jpg'),
(828, 80, '_wpcom_is_markdown', '1'),
(829, 80, '_wp_old_slug', 'import-placeholder-for-70'),
(830, 80, '_regular_price', '20'),
(831, 80, '_thumbnail_id', '109'),
(832, 80, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(833, 80, '_price', '20'),
(834, 110, '_wp_attached_file', '2020/09/album-1.jpg'),
(835, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2020/09/album-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"album-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"album-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"album-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"album-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"album-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(836, 110, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/album-1.jpg'),
(837, 81, '_wpcom_is_markdown', '1'),
(838, 81, '_wp_old_slug', 'import-placeholder-for-73'),
(839, 81, '_regular_price', '15'),
(840, 81, '_thumbnail_id', '110'),
(841, 81, '_downloadable_files', 'a:2:{s:36:\"875c70cc-47fe-4605-83c9-a45363f46d13\";a:3:{s:2:\"id\";s:36:\"875c70cc-47fe-4605-83c9-a45363f46d13\";s:4:\"name\";s:8:\"Single 1\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}s:36:\"29c036f3-fb42-449b-b41b-1ffccea5e674\";a:3:{s:2:\"id\";s:36:\"29c036f3-fb42-449b-b41b-1ffccea5e674\";s:4:\"name\";s:8:\"Single 2\";s:4:\"file\";s:84:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/album.jpg\";}}'),
(842, 81, '_price', '15'),
(843, 111, '_wp_attached_file', '2020/09/single-1.jpg'),
(844, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:20:\"2020/09/single-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"single-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"single-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"single-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"single-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"single-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(845, 111, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/single-1.jpg'),
(846, 82, '_wpcom_is_markdown', '1'),
(847, 82, '_wp_old_slug', 'import-placeholder-for-75'),
(848, 82, '_regular_price', '3'),
(849, 82, '_sale_price', '2'),
(850, 82, '_thumbnail_id', '111'),
(851, 82, '_downloadable_files', 'a:1:{s:36:\"ab8233d2-74bc-43ca-8aca-7ef2fd2728b4\";a:3:{s:2:\"id\";s:36:\"ab8233d2-74bc-43ca-8aca-7ef2fd2728b4\";s:4:\"name\";s:6:\"Single\";s:4:\"file\";s:85:\"https://demo.woothemes.com/woocommerce/wp-content/uploads/sites/56/2017/08/single.jpg\";}}'),
(852, 82, '_price', '2'),
(853, 83, '_wpcom_is_markdown', ''),
(854, 83, '_wp_old_slug', 'import-placeholder-for-76'),
(855, 83, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(856, 83, '_regular_price', '20'),
(857, 83, '_thumbnail_id', '94'),
(858, 83, 'attribute_pa_color', 'red'),
(859, 83, 'attribute_pa_size', ''),
(860, 83, '_price', '20'),
(861, 84, '_wpcom_is_markdown', ''),
(862, 84, '_wp_old_slug', 'import-placeholder-for-77'),
(863, 84, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(864, 84, '_regular_price', '20'),
(865, 84, '_thumbnail_id', '95'),
(866, 84, 'attribute_pa_color', 'green'),
(867, 84, 'attribute_pa_size', ''),
(868, 84, '_price', '20'),
(870, 85, '_wpcom_is_markdown', ''),
(871, 85, '_wp_old_slug', 'import-placeholder-for-78'),
(872, 85, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(873, 85, '_regular_price', '15'),
(874, 85, '_thumbnail_id', '96'),
(875, 85, 'attribute_pa_color', 'blue'),
(876, 85, 'attribute_pa_size', ''),
(877, 85, '_price', '15'),
(878, 86, '_wpcom_is_markdown', ''),
(879, 86, '_wp_old_slug', 'import-placeholder-for-79'),
(880, 86, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(881, 86, '_regular_price', '45'),
(882, 86, '_sale_price', '42'),
(883, 86, '_thumbnail_id', '97'),
(884, 86, 'attribute_pa_color', 'red'),
(885, 86, 'attribute_logo', 'No'),
(886, 86, '_price', '42'),
(887, 87, '_wpcom_is_markdown', ''),
(888, 87, '_wp_old_slug', 'import-placeholder-for-80'),
(889, 87, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(890, 87, '_regular_price', '45'),
(891, 87, '_thumbnail_id', '99'),
(892, 87, 'attribute_pa_color', 'green'),
(893, 87, 'attribute_logo', 'No'),
(894, 87, '_price', '45'),
(895, 88, '_wpcom_is_markdown', ''),
(896, 88, '_wp_old_slug', 'import-placeholder-for-81'),
(897, 88, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(898, 88, '_regular_price', '45'),
(899, 88, '_thumbnail_id', '98'),
(900, 88, 'attribute_pa_color', 'blue'),
(901, 88, 'attribute_logo', 'No'),
(902, 88, '_price', '45'),
(903, 112, '_wp_attached_file', '2020/09/t-shirt-with-logo-1.jpg'),
(904, 112, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:31:\"2020/09/t-shirt-with-logo-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"t-shirt-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(905, 112, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/t-shirt-with-logo-1.jpg'),
(906, 89, '_wpcom_is_markdown', '1'),
(907, 89, '_wp_old_slug', 'import-placeholder-for-83'),
(908, 89, '_regular_price', '18'),
(909, 89, '_thumbnail_id', '112'),
(910, 89, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(911, 89, '_price', '18'),
(912, 113, '_wp_attached_file', '2020/09/beanie-with-logo-1.jpg'),
(913, 113, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2020/09/beanie-with-logo-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:30:\"beanie-with-logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"beanie-with-logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(914, 113, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/beanie-with-logo-1.jpg'),
(915, 90, '_wpcom_is_markdown', '1'),
(916, 90, '_wp_old_slug', 'import-placeholder-for-85'),
(917, 90, '_regular_price', '20'),
(918, 90, '_sale_price', '18'),
(919, 90, '_thumbnail_id', '113'),
(920, 90, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(921, 90, '_price', '18'),
(922, 69, '_price', '15'),
(923, 69, '_price', '20'),
(926, 114, '_wp_attached_file', '2020/09/logo-1.jpg'),
(927, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:799;s:4:\"file\";s:18:\"2020/09/logo-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"logo-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"logo-1-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:18:\"logo-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"logo-1-600x599.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"logo-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(928, 114, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/logo-1.jpg'),
(929, 91, '_wpcom_is_markdown', '1'),
(930, 91, '_wp_old_slug', 'import-placeholder-for-87'),
(931, 91, '_children', 'a:3:{i:0;i:71;i:1;i:72;i:2;i:73;}'),
(932, 91, '_product_image_gallery', '113,112,100'),
(933, 91, '_thumbnail_id', '114'),
(934, 91, '_price', '18'),
(935, 91, '_price', '45'),
(936, 115, '_wp_attached_file', '2020/09/pennant-1.jpg'),
(937, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2020/09/pennant-1.jpg\";s:5:\"sizes\";a:9:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"pennant-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"pennant-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:21:\"pennant-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"pennant-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"pennant-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(938, 115, '_wc_attachment_source', 'https://woocommercecore.mystagingwebsite.com/wp-content/uploads/2017/12/pennant-1.jpg'),
(939, 92, '_wpcom_is_markdown', '1'),
(940, 92, '_wp_old_slug', 'import-placeholder-for-89'),
(941, 92, '_regular_price', '11.05'),
(942, 92, '_thumbnail_id', '115'),
(943, 92, '_product_url', 'https://mercantile.wordpress.org/product/wordpress-pennant/'),
(944, 92, '_button_text', 'Buy on the WordPress swag store!'),
(945, 92, '_price', '11.05'),
(946, 93, '_wpcom_is_markdown', ''),
(947, 93, '_wp_old_slug', 'import-placeholder-for-90'),
(948, 93, '_variation_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.'),
(949, 93, '_regular_price', '45'),
(950, 93, '_thumbnail_id', '100'),
(951, 93, 'attribute_pa_color', 'blue'),
(952, 93, 'attribute_logo', 'Yes'),
(953, 93, '_price', '45'),
(954, 70, '_price', '42'),
(955, 70, '_price', '45'),
(956, 14, '_edit_lock', '1601118446:1'),
(957, 91, '_edit_lock', '1601041478:1'),
(958, 91, '_edit_last', '1'),
(959, 89, '_edit_lock', '1601040662:1'),
(960, 89, '_edit_last', '1'),
(961, 80, '_edit_lock', '1601353255:1'),
(962, 80, '_edit_last', '1'),
(963, 79, '_edit_lock', '1601040811:1'),
(964, 79, '_edit_last', '1'),
(965, 69, '_edit_lock', '1601040864:1'),
(966, 69, '_edit_last', '1'),
(967, 72, '_edit_lock', '1601040913:1'),
(968, 72, '_edit_last', '1'),
(969, 78, '_edit_lock', '1601041067:1');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(970, 78, '_edit_last', '1'),
(971, 77, '_edit_lock', '1601041188:1'),
(972, 77, '_edit_last', '1'),
(973, 71, '_edit_lock', '1601041252:1'),
(974, 71, '_edit_last', '1'),
(975, 70, '_edit_last', '1'),
(976, 70, '_edit_lock', '1601096790:1'),
(977, 92, '_edit_last', '1'),
(978, 92, '_edit_lock', '1601041561:1'),
(979, 117, '_wp_attached_file', '2020/09/download-8.png'),
(980, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2020/09/download-8.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-8-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-8-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(981, 116, '_edit_last', '1'),
(982, 116, '_edit_lock', '1601356270:1'),
(983, 116, '_thumbnail_id', '117'),
(984, 116, '_regular_price', '100'),
(985, 116, '_sale_price', '99'),
(986, 116, 'total_sales', '0'),
(987, 116, '_tax_status', 'taxable'),
(988, 116, '_tax_class', ''),
(989, 116, '_manage_stock', 'no'),
(990, 116, '_backorders', 'no'),
(991, 116, '_sold_individually', 'no'),
(992, 116, '_virtual', 'no'),
(993, 116, '_downloadable', 'no'),
(994, 116, '_download_limit', '-1'),
(995, 116, '_download_expiry', '-1'),
(996, 116, '_stock', NULL),
(997, 116, '_stock_status', 'instock'),
(998, 116, '_wc_average_rating', '0'),
(999, 116, '_wc_review_count', '0'),
(1000, 116, '_product_version', '4.5.2'),
(1001, 116, '_price', '99'),
(1002, 119, '_wp_attached_file', '2020/09/images-5.jpeg'),
(1003, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:196;s:6:\"height\";i:257;s:4:\"file\";s:21:\"2020/09/images-5.jpeg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"images-5-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"images-5-196x250.jpeg\";s:5:\"width\";i:196;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"images-5-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"images-5-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1004, 118, '_edit_last', '1'),
(1005, 118, '_thumbnail_id', '119'),
(1006, 118, '_regular_price', '50'),
(1007, 118, '_sale_price', '44'),
(1008, 118, 'total_sales', '3'),
(1009, 118, '_tax_status', 'taxable'),
(1010, 118, '_tax_class', ''),
(1011, 118, '_manage_stock', 'no'),
(1012, 118, '_backorders', 'no'),
(1013, 118, '_sold_individually', 'no'),
(1014, 118, '_virtual', 'no'),
(1015, 118, '_downloadable', 'no'),
(1016, 118, '_download_limit', '-1'),
(1017, 118, '_download_expiry', '-1'),
(1018, 118, '_stock', NULL),
(1019, 118, '_stock_status', 'instock'),
(1020, 118, '_wc_average_rating', '0'),
(1021, 118, '_wc_review_count', '0'),
(1022, 118, '_product_version', '4.5.2'),
(1023, 118, '_price', '44'),
(1024, 118, '_edit_lock', '1601354186:1'),
(1025, 121, '_wp_attached_file', '2020/09/images-1.png'),
(1026, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:199;s:6:\"height\";i:253;s:4:\"file\";s:20:\"2020/09/images-1.png\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"images-1-199x250.png\";s:5:\"width\";i:199;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1027, 120, '_edit_last', '1'),
(1028, 120, '_edit_lock', '1601354143:1'),
(1029, 120, '_thumbnail_id', '121'),
(1030, 120, '_regular_price', '199'),
(1031, 120, '_sale_price', '99'),
(1032, 120, 'total_sales', '0'),
(1033, 120, '_tax_status', 'taxable'),
(1034, 120, '_tax_class', ''),
(1035, 120, '_manage_stock', 'no'),
(1036, 120, '_backorders', 'no'),
(1037, 120, '_sold_individually', 'no'),
(1038, 120, '_virtual', 'no'),
(1039, 120, '_downloadable', 'no'),
(1040, 120, '_download_limit', '-1'),
(1041, 120, '_download_expiry', '-1'),
(1042, 120, '_stock', NULL),
(1043, 120, '_stock_status', 'instock'),
(1044, 120, '_wc_average_rating', '0'),
(1045, 120, '_wc_review_count', '0'),
(1046, 120, '_product_version', '4.5.2'),
(1047, 120, '_price', '99'),
(1048, 123, '_wp_attached_file', '2020/09/download-10.jpeg'),
(1049, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:204;s:6:\"height\";i:247;s:4:\"file\";s:24:\"2020/09/download-10.jpeg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"download-10-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"download-10-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"download-10-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1050, 122, '_edit_last', '1'),
(1051, 122, '_edit_lock', '1601354069:1'),
(1052, 122, '_thumbnail_id', '123'),
(1053, 122, 'total_sales', '1'),
(1054, 122, '_tax_status', 'taxable'),
(1055, 122, '_tax_class', ''),
(1056, 122, '_manage_stock', 'no'),
(1057, 122, '_backorders', 'no'),
(1058, 122, '_sold_individually', 'no'),
(1059, 122, '_virtual', 'no'),
(1060, 122, '_downloadable', 'no'),
(1061, 122, '_download_limit', '-1'),
(1062, 122, '_download_expiry', '-1'),
(1063, 122, '_stock', NULL),
(1064, 122, '_stock_status', 'instock'),
(1065, 122, '_wc_average_rating', '5.00'),
(1066, 122, '_wc_review_count', '1'),
(1067, 122, '_product_version', '4.5.2'),
(1068, 126, '_wp_attached_file', '2020/09/download-7.png'),
(1069, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:213;s:6:\"height\";i:236;s:4:\"file\";s:22:\"2020/09/download-7.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-7-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-7-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1070, 124, '_edit_last', '1'),
(1071, 124, '_thumbnail_id', '126'),
(1072, 124, 'total_sales', '0'),
(1073, 124, '_tax_status', 'taxable'),
(1074, 124, '_tax_class', ''),
(1075, 124, '_manage_stock', 'no'),
(1076, 124, '_backorders', 'no'),
(1077, 124, '_sold_individually', 'no'),
(1078, 124, '_virtual', 'no'),
(1079, 124, '_downloadable', 'no'),
(1080, 124, '_download_limit', '-1'),
(1081, 124, '_download_expiry', '-1'),
(1082, 124, '_stock', NULL),
(1083, 124, '_stock_status', 'instock'),
(1084, 124, '_wc_average_rating', '0'),
(1085, 124, '_wc_review_count', '0'),
(1086, 124, '_product_version', '4.5.2'),
(1087, 124, '_edit_lock', '1601353977:1'),
(1088, 127, '_wp_attached_file', '2020/09/download-6.png'),
(1089, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:204;s:6:\"height\";i:248;s:4:\"file\";s:22:\"2020/09/download-6.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-6-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-6-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1090, 125, '_edit_last', '1'),
(1091, 125, '_edit_lock', '1601353832:1'),
(1092, 125, '_thumbnail_id', '127'),
(1093, 125, 'total_sales', '0'),
(1094, 125, '_tax_status', 'taxable'),
(1095, 125, '_tax_class', ''),
(1096, 125, '_manage_stock', 'no'),
(1097, 125, '_backorders', 'no'),
(1098, 125, '_sold_individually', 'no'),
(1099, 125, '_virtual', 'no'),
(1100, 125, '_downloadable', 'no'),
(1101, 125, '_download_limit', '-1'),
(1102, 125, '_download_expiry', '-1'),
(1103, 125, '_stock', NULL),
(1104, 125, '_stock_status', 'instock'),
(1105, 125, '_wc_average_rating', '0'),
(1106, 125, '_wc_review_count', '0'),
(1107, 125, '_product_version', '4.5.2'),
(1108, 129, '_wp_attached_file', '2020/09/images-4.jpeg'),
(1109, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:21:\"2020/09/images-4.jpeg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"images-4-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"images-4-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"images-4-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1110, 130, '_wp_attached_file', '2020/09/download-5.png'),
(1111, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:215;s:6:\"height\";i:234;s:4:\"file\";s:22:\"2020/09/download-5.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-5-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1112, 131, '_wp_attached_file', '2020/09/download-4.png'),
(1113, 131, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:22:\"2020/09/download-4.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1114, 133, '_wp_attached_file', '2020/09/download-3.png'),
(1115, 133, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:215;s:6:\"height\";i:234;s:4:\"file\";s:22:\"2020/09/download-3.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"download-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1116, 134, '_wp_attached_file', '2020/09/download-9.jpeg'),
(1117, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:23:\"2020/09/download-9.jpeg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"download-9-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"download-9-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"download-9-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1118, 135, '_wp_attached_file', '2020/09/Brown-Wallet.jpeg'),
(1119, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:25:\"2020/09/Brown-Wallet.jpeg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"Brown-Wallet-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Brown-Wallet-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"Brown-Wallet-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1120, 136, '_wp_attached_file', '2020/09/men-Jacket.jpeg'),
(1121, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:23:\"2020/09/men-Jacket.jpeg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"men-Jacket-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"men-Jacket-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"men-Jacket-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1122, 128, '_edit_last', '1'),
(1123, 128, '_thumbnail_id', '129'),
(1124, 128, 'total_sales', '0'),
(1125, 128, '_tax_status', 'taxable'),
(1126, 128, '_tax_class', ''),
(1127, 128, '_manage_stock', 'no'),
(1128, 128, '_backorders', 'no'),
(1129, 128, '_sold_individually', 'no'),
(1130, 128, '_virtual', 'no'),
(1131, 128, '_downloadable', 'no'),
(1132, 128, '_download_limit', '-1'),
(1133, 128, '_download_expiry', '-1'),
(1134, 128, '_stock', NULL),
(1135, 128, '_stock_status', 'instock'),
(1136, 128, '_wc_average_rating', '0'),
(1137, 128, '_wc_review_count', '0'),
(1138, 128, '_product_version', '4.5.2'),
(1139, 128, '_edit_lock', '1601353783:1'),
(1140, 132, '_edit_last', '1'),
(1141, 132, '_thumbnail_id', '130'),
(1142, 132, 'total_sales', '2'),
(1143, 132, '_tax_status', 'taxable'),
(1144, 132, '_tax_class', ''),
(1145, 132, '_manage_stock', 'no'),
(1146, 132, '_backorders', 'no'),
(1147, 132, '_sold_individually', 'no'),
(1148, 132, '_virtual', 'no'),
(1149, 132, '_downloadable', 'no'),
(1150, 132, '_download_limit', '-1'),
(1151, 132, '_download_expiry', '-1'),
(1152, 132, '_stock', NULL),
(1153, 132, '_stock_status', 'instock'),
(1154, 132, '_wc_average_rating', '0'),
(1155, 132, '_wc_review_count', '0'),
(1156, 132, '_product_version', '4.5.2'),
(1157, 132, '_edit_lock', '1601353750:1'),
(1158, 137, '_edit_last', '1'),
(1159, 137, '_thumbnail_id', '131'),
(1160, 137, 'total_sales', '0'),
(1161, 137, '_tax_status', 'taxable'),
(1162, 137, '_tax_class', ''),
(1163, 137, '_manage_stock', 'no'),
(1164, 137, '_backorders', 'no'),
(1165, 137, '_sold_individually', 'no'),
(1166, 137, '_virtual', 'no'),
(1167, 137, '_downloadable', 'no'),
(1168, 137, '_download_limit', '-1'),
(1169, 137, '_download_expiry', '-1'),
(1170, 137, '_stock', NULL),
(1171, 137, '_stock_status', 'instock'),
(1172, 137, '_wc_average_rating', '0'),
(1173, 137, '_wc_review_count', '0'),
(1174, 137, '_product_version', '4.5.2'),
(1175, 137, '_edit_lock', '1601353705:1'),
(1176, 140, '_edit_last', '1'),
(1177, 140, '_thumbnail_id', '133'),
(1178, 140, 'total_sales', '0'),
(1179, 140, '_tax_status', 'taxable'),
(1180, 140, '_tax_class', ''),
(1181, 140, '_manage_stock', 'no'),
(1182, 140, '_backorders', 'no'),
(1183, 140, '_sold_individually', 'no'),
(1184, 140, '_virtual', 'no'),
(1185, 140, '_downloadable', 'no'),
(1186, 140, '_download_limit', '-1'),
(1187, 140, '_download_expiry', '-1'),
(1188, 140, '_stock', NULL),
(1189, 140, '_stock_status', 'instock'),
(1190, 140, '_wc_average_rating', '0'),
(1191, 140, '_wc_review_count', '0'),
(1192, 140, '_product_version', '4.5.2'),
(1193, 140, '_edit_lock', '1601353559:1'),
(1194, 139, '_edit_last', '1'),
(1195, 139, '_thumbnail_id', '134'),
(1196, 139, 'total_sales', '0'),
(1197, 139, '_tax_status', 'taxable'),
(1198, 139, '_tax_class', ''),
(1199, 139, '_manage_stock', 'no'),
(1200, 139, '_backorders', 'no'),
(1201, 139, '_sold_individually', 'no'),
(1202, 139, '_virtual', 'no'),
(1203, 139, '_downloadable', 'no'),
(1204, 139, '_download_limit', '-1'),
(1205, 139, '_download_expiry', '-1'),
(1206, 139, '_stock', NULL),
(1207, 139, '_stock_status', 'instock'),
(1208, 139, '_wc_average_rating', '0'),
(1209, 139, '_wc_review_count', '0'),
(1210, 139, '_product_version', '4.5.2'),
(1211, 139, '_edit_lock', '1601353534:1'),
(1212, 141, '_edit_last', '1'),
(1213, 141, '_edit_lock', '1603089994:1'),
(1214, 141, '_thumbnail_id', '135'),
(1215, 141, '_regular_price', '100'),
(1216, 141, '_sale_price', '50'),
(1217, 141, 'total_sales', '0'),
(1218, 141, '_tax_status', 'taxable'),
(1219, 141, '_tax_class', ''),
(1220, 141, '_manage_stock', 'no'),
(1221, 141, '_backorders', 'no'),
(1222, 141, '_sold_individually', 'no'),
(1223, 141, '_virtual', 'no'),
(1224, 141, '_downloadable', 'no'),
(1225, 141, '_download_limit', '-1'),
(1226, 141, '_download_expiry', '-1'),
(1227, 141, '_stock', NULL),
(1228, 141, '_stock_status', 'instock'),
(1229, 141, '_wc_average_rating', '0'),
(1230, 141, '_wc_review_count', '0'),
(1231, 141, '_product_version', '4.5.2'),
(1232, 141, '_price', '50'),
(1233, 142, '_edit_last', '1'),
(1234, 142, '_edit_lock', '1603106741:1'),
(1235, 142, '_thumbnail_id', '136'),
(1236, 142, '_regular_price', '599'),
(1237, 142, '_sale_price', '555'),
(1238, 142, 'total_sales', '0'),
(1239, 142, '_tax_status', 'taxable'),
(1240, 142, '_tax_class', ''),
(1241, 142, '_manage_stock', 'no'),
(1242, 142, '_backorders', 'no'),
(1243, 142, '_sold_individually', 'no'),
(1244, 142, '_virtual', 'no'),
(1245, 142, '_downloadable', 'no'),
(1246, 142, '_download_limit', '-1'),
(1247, 142, '_download_expiry', '-1'),
(1248, 142, '_stock', NULL),
(1249, 142, '_stock_status', 'instock'),
(1250, 142, '_wc_average_rating', '4.00'),
(1251, 142, '_wc_review_count', '1'),
(1252, 142, '_product_version', '4.5.2'),
(1253, 142, '_price', '555'),
(1254, 139, '_regular_price', '100'),
(1255, 139, '_sale_price', '99'),
(1256, 139, '_price', '99'),
(1257, 140, '_regular_price', '100'),
(1258, 140, '_sale_price', '99'),
(1259, 140, '_price', '99'),
(1260, 137, '_regular_price', '100'),
(1261, 137, '_sale_price', '99'),
(1262, 137, '_price', '99'),
(1263, 132, '_regular_price', '100'),
(1264, 132, '_sale_price', '99'),
(1265, 132, '_price', '99'),
(1266, 128, '_regular_price', '100'),
(1267, 128, '_sale_price', '99'),
(1268, 128, '_price', '99'),
(1269, 125, '_regular_price', '100'),
(1270, 125, '_sale_price', '99'),
(1271, 125, '_price', '99'),
(1272, 124, '_regular_price', '100'),
(1273, 124, '_sale_price', '99'),
(1274, 124, '_price', '99'),
(1275, 122, '_regular_price', '100'),
(1276, 122, '_sale_price', '99'),
(1277, 122, '_price', '99'),
(1278, 144, '_menu_item_type', 'post_type'),
(1279, 144, '_menu_item_menu_item_parent', '28'),
(1280, 144, '_menu_item_object_id', '143'),
(1281, 144, '_menu_item_object', 'page'),
(1282, 144, '_menu_item_target', ''),
(1283, 144, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1284, 144, '_menu_item_xfn', ''),
(1285, 144, '_menu_item_url', ''),
(1287, 149, '_wp_attached_file', '2020/09/banner-3.jpg'),
(1288, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1350;s:6:\"height\";i:504;s:4:\"file\";s:20:\"2020/09/banner-3.jpg\";s:5:\"sizes\";a:10:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"banner-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"banner-3-600x224.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"banner-3-300x112.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:112;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"banner-3-1024x382.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:382;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"banner-3-768x287.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:287;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:20:\"banner-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"banner-3-600x224.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:224;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"banner-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(1289, 19, 'event_sale_0_banner_image', '149'),
(1290, 19, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(1291, 19, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(1292, 19, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(1293, 19, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(1294, 19, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(1295, 19, 'event_sale', '2'),
(1296, 19, '_event_sale', 'field_5f6ee491d8d23'),
(1297, 150, 'banner_image1', '53'),
(1298, 150, '_banner_image1', 'field_5f6c7a05dda13'),
(1299, 150, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n&nbsp;\r\n\r\nMaboriosam in a nesciung eget magnae\r\ndapibus disting tloctio in the find it pereri\r\nodiy maboriosm.'),
(1300, 150, '_banner_text1', 'field_5f6c7b3bdda18'),
(1301, 150, 'product_link', 'http://localhost/'),
(1302, 150, '_product_link', 'field_5f6c7b74dda19'),
(1303, 150, 'small_banners', '3'),
(1304, 150, '_small_banners', 'field_5f6c7b90dda1a'),
(1305, 150, 'small_banners_0_small_banner_image', '60'),
(1306, 150, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(1307, 150, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(1308, 150, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(1309, 150, 'small_banners_0_product_link', 'http://localhost/'),
(1310, 150, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(1311, 150, 'small_banners_0_link_text', 'Discover More'),
(1312, 150, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(1313, 150, 'small_banners_1_small_banner_image', '59'),
(1314, 150, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(1315, 150, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(1316, 150, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(1317, 150, 'small_banners_1_product_link', 'http://localhost/'),
(1318, 150, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(1319, 150, 'small_banners_1_link_text', 'Shop Now'),
(1320, 150, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(1321, 150, 'small_banners_2_small_banner_image', '58'),
(1322, 150, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(1323, 150, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(1324, 150, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(1325, 150, 'small_banners_2_product_link', 'http://localhost/EShop/'),
(1326, 150, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(1327, 150, 'small_banners_2_link_text', 'Discover more'),
(1328, 150, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(1329, 150, 'event_sale_0_banner_image', '149'),
(1330, 150, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(1331, 150, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(1332, 150, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(1333, 150, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(1334, 150, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(1335, 150, 'event_sale', '1'),
(1336, 150, '_event_sale', 'field_5f6ee491d8d23'),
(1337, 151, '_wp_attached_file', '2020/09/download-11-e1601537846724.jpeg'),
(1338, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:174;s:4:\"file\";s:39:\"2020/09/download-11-e1601537846724.jpeg\";s:5:\"sizes\";a:5:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"download-11-e1601537846724-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"download-11-e1601537846724-250x174.jpeg\";s:5:\"width\";i:250;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"download-11-e1601537846724-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"download-11-e1601537846724-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"yith-woocompare-image\";a:4:{s:4:\"file\";s:39:\"download-11-e1601537846724-220x154.jpeg\";s:5:\"width\";i:220;s:6:\"height\";i:154;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1339, 19, 'event_sale_1_banner_image', '153'),
(1340, 19, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(1341, 19, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(1342, 19, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(1343, 19, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(1344, 19, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(1345, 152, 'banner_image1', '53'),
(1346, 152, '_banner_image1', 'field_5f6c7a05dda13'),
(1347, 152, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n&nbsp;\r\n\r\nMaboriosam in a nesciung eget magnae\r\ndapibus disting tloctio in the find it pereri\r\nodiy maboriosm.'),
(1348, 152, '_banner_text1', 'field_5f6c7b3bdda18'),
(1349, 152, 'product_link', 'http://localhost/'),
(1350, 152, '_product_link', 'field_5f6c7b74dda19'),
(1351, 152, 'small_banners', '3'),
(1352, 152, '_small_banners', 'field_5f6c7b90dda1a'),
(1353, 152, 'small_banners_0_small_banner_image', '60'),
(1354, 152, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(1355, 152, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(1356, 152, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(1357, 152, 'small_banners_0_product_link', 'http://localhost/'),
(1358, 152, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(1359, 152, 'small_banners_0_link_text', 'Discover More'),
(1360, 152, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(1361, 152, 'small_banners_1_small_banner_image', '59'),
(1362, 152, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(1363, 152, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(1364, 152, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(1365, 152, 'small_banners_1_product_link', 'http://localhost/'),
(1366, 152, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(1367, 152, 'small_banners_1_link_text', 'Shop Now'),
(1368, 152, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(1369, 152, 'small_banners_2_small_banner_image', '58'),
(1370, 152, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(1371, 152, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(1372, 152, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(1373, 152, 'small_banners_2_product_link', 'http://localhost/EShop/'),
(1374, 152, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(1375, 152, 'small_banners_2_link_text', 'Discover more'),
(1376, 152, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(1377, 152, 'event_sale_0_banner_image', '149'),
(1378, 152, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(1379, 152, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(1380, 152, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(1381, 152, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(1382, 152, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(1383, 152, 'event_sale', '2'),
(1384, 152, '_event_sale', 'field_5f6ee491d8d23'),
(1385, 152, 'event_sale_1_banner_image', '151'),
(1386, 152, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(1387, 152, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(1388, 152, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(1389, 152, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(1390, 152, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(1391, 151, '_wp_attachment_backup_sizes', 'a:8:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:290;s:6:\"height\";i:174;s:4:\"file\";s:16:\"download-11.jpeg\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:24:\"download-11-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:34:\"woocommerce_gallery_thumbnail-orig\";a:4:{s:4:\"file\";s:24:\"download-11-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"shop_thumbnail-orig\";a:4:{s:4:\"file\";s:24:\"download-11-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"full-1601537846724\";a:3:{s:5:\"width\";i:290;s:6:\"height\";i:174;s:4:\"file\";s:31:\"download-11-e1601104399506.jpeg\";}s:23:\"thumbnail-1601537846724\";a:4:{s:4:\"file\";s:39:\"download-11-e1601104399506-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:43:\"woocommerce_gallery_thumbnail-1601537846724\";a:4:{s:4:\"file\";s:39:\"download-11-e1601104399506-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:28:\"shop_thumbnail-1601537846724\";a:4:{s:4:\"file\";s:39:\"download-11-e1601104399506-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(1392, 153, '_wp_attached_file', '2020/09/editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126.jpg'),
(1393, 153, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:626;s:6:\"height\";i:626;s:4:\"file\";s:89:\"2020/09/editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:89:\"editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:89:\"editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:89:\"editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:89:\"editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:89:\"editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:89:\"editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:89:\"editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:89:\"editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1394, 154, 'banner_image1', '53'),
(1395, 154, '_banner_image1', 'field_5f6c7a05dda13'),
(1396, 154, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n&nbsp;\r\n\r\nMaboriosam in a nesciung eget magnae\r\ndapibus disting tloctio in the find it pereri\r\nodiy maboriosm.'),
(1397, 154, '_banner_text1', 'field_5f6c7b3bdda18'),
(1398, 154, 'product_link', 'http://localhost/'),
(1399, 154, '_product_link', 'field_5f6c7b74dda19'),
(1400, 154, 'small_banners', '3'),
(1401, 154, '_small_banners', 'field_5f6c7b90dda1a'),
(1402, 154, 'small_banners_0_small_banner_image', '60'),
(1403, 154, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(1404, 154, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(1405, 154, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(1406, 154, 'small_banners_0_product_link', 'http://localhost/'),
(1407, 154, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(1408, 154, 'small_banners_0_link_text', 'Discover More'),
(1409, 154, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(1410, 154, 'small_banners_1_small_banner_image', '59'),
(1411, 154, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(1412, 154, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(1413, 154, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(1414, 154, 'small_banners_1_product_link', 'http://localhost/'),
(1415, 154, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(1416, 154, 'small_banners_1_link_text', 'Shop Now'),
(1417, 154, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(1418, 154, 'small_banners_2_small_banner_image', '58'),
(1419, 154, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(1420, 154, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(1421, 154, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(1422, 154, 'small_banners_2_product_link', 'http://localhost/EShop/'),
(1423, 154, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(1424, 154, 'small_banners_2_link_text', 'Discover more'),
(1425, 154, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(1426, 154, 'event_sale_0_banner_image', '149'),
(1427, 154, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(1428, 154, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(1429, 154, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(1430, 154, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(1431, 154, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(1432, 154, 'event_sale', '2'),
(1433, 154, '_event_sale', 'field_5f6ee491d8d23'),
(1434, 154, 'event_sale_1_banner_image', '153'),
(1435, 154, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(1436, 154, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(1437, 154, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(1438, 154, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(1439, 154, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(1440, 156, '_wcct_campaign_type', 'fixed_date'),
(1441, 156, '_wcct_campaign_fixed_recurring_start_date', '2020-09-25'),
(1442, 156, '_wcct_campaign_fixed_recurring_start_time', '12:00 AM'),
(1443, 156, '_wcct_campaign_fixed_end_date', '2020-10-01'),
(1444, 156, '_wcct_campaign_fixed_end_time', '12:00 AM'),
(1445, 156, '_wcct_deal_enable_goal', '1'),
(1446, 156, '_wcct_deal_units', 'custom'),
(1447, 156, '_wcct_deal_custom_units', '8'),
(1448, 156, '_wcct_deal_inventory_goal_for', 'recurrence'),
(1449, 156, '_wcct_deal_custom_units_allow_backorder', 'no'),
(1450, 156, '_wcct_deal_end_campaign', 'no'),
(1451, 156, '_wcct_location_timer_show_single', '1'),
(1452, 156, '_wcct_location_timer_single_location', '4'),
(1453, 156, '_wcct_appearance_timer_single_skin', 'round_ghost'),
(1454, 156, '_wcct_appearance_timer_single_bg_color', '#8cc63f'),
(1455, 156, '_wcct_appearance_timer_single_text_color', '#444444'),
(1456, 156, '_wcct_appearance_timer_single_font_size_timer', '26'),
(1457, 156, '_wcct_appearance_timer_single_font_size', '13'),
(1458, 156, '_wcct_appearance_timer_single_label_days', 'days'),
(1459, 156, '_wcct_appearance_timer_single_label_hrs', 'hrs'),
(1460, 156, '_wcct_appearance_timer_single_label_mins', 'mins'),
(1461, 156, '_wcct_appearance_timer_single_label_secs', 'secs'),
(1462, 156, '_wcct_appearance_timer_single_border_width', '1'),
(1463, 156, '_wcct_appearance_timer_single_border_color', '#f2f2f2'),
(1464, 156, '_wcct_appearance_timer_single_border_style', 'none'),
(1465, 156, '_wcct_appearance_timer_single_display', '{{countdown_timer}}\nPrices go up when the timer hits zero.'),
(1466, 156, '_wcct_location_bar_show_single', '1'),
(1467, 156, '_wcct_location_bar_single_location', '4'),
(1468, 156, '_wcct_appearance_bar_single_skin', 'stripe_animate'),
(1469, 156, '_wcct_appearance_bar_single_edges', 'rounded'),
(1470, 156, '_wcct_appearance_bar_single_orientation', 'rtl'),
(1471, 156, '_wcct_appearance_bar_single_bg_color', '#dddddd'),
(1472, 156, '_wcct_appearance_bar_single_active_color', '#ee303c'),
(1473, 156, '_wcct_appearance_bar_single_height', '12'),
(1474, 156, '_wcct_appearance_bar_single_display', 'Hurry up! Just <span>{{remaining_units}}</span> items left in stock\n{{counter_bar}}'),
(1475, 156, '_wcct_appearance_bar_single_border_style', 'none'),
(1476, 156, '_wcct_appearance_bar_single_border_width', '0'),
(1477, 156, '_wcct_appearance_bar_single_border_color', '#444444'),
(1478, 156, '_wcct_campaign_menu_order', '0'),
(1479, 156, '_wcct_current_status_timing', 'finished'),
(1480, 157, '_wcct_current_status_timing', 'finished'),
(1481, 157, '_edit_last', '1'),
(1482, 157, '_edit_lock', '1601113539:1'),
(1483, 157, 'wcct_rule', 'a:1:{s:6:\"group0\";a:1:{s:17:\"rule5f6f0aa7e4d4a\";a:3:{s:9:\"rule_type\";s:16:\"product_category\";s:8:\"operator\";s:2:\"in\";s:9:\"condition\";a:1:{i:0;s:2:\"18\";}}}}'),
(1484, 157, '_wcct_campaign_type', 'fixed_date'),
(1485, 157, '_wcct_campaign_fixed_recurring_start_date', '2020-09-26'),
(1486, 157, '_wcct_campaign_fixed_recurring_start_time', '12:00 AM'),
(1487, 157, '_wcct_campaign_fixed_end_date', '2020-10-01'),
(1488, 157, '_wcct_campaign_fixed_end_time', '12:00 AM'),
(1489, 157, '_wcct_deal_enable_price_discount', '1'),
(1490, 157, '_wcct_deal_amount', '50'),
(1491, 157, '_wcct_deal_type', 'percentage_sale'),
(1492, 157, '_wcct_deal_enable_goal', '0'),
(1493, 157, '_wcct_deal_units', 'custom'),
(1494, 157, '_wcct_deal_custom_units', '8'),
(1495, 157, '_wcct_deal_inventory_goal_for', 'recurrence'),
(1496, 157, '_wcct_deal_custom_units_allow_backorder', 'no'),
(1497, 157, '_wcct_deal_end_campaign', 'no'),
(1498, 157, '_wcct_location_timer_show_single', '0'),
(1499, 157, '_wcct_location_timer_single_location', '4'),
(1500, 157, '_wcct_appearance_timer_single_skin', 'round_fill'),
(1501, 157, '_wcct_appearance_timer_single_bg_color', '#444444'),
(1502, 157, '_wcct_appearance_timer_single_text_color', '#ffffff'),
(1503, 157, '_wcct_appearance_timer_single_font_size_timer', '22'),
(1504, 157, '_wcct_appearance_timer_single_font_size', '13'),
(1505, 157, '_wcct_appearance_timer_single_label_days', 'days'),
(1506, 157, '_wcct_appearance_timer_single_label_hrs', 'hrs'),
(1507, 157, '_wcct_appearance_timer_single_label_mins', 'mins'),
(1508, 157, '_wcct_appearance_timer_single_label_secs', 'secs'),
(1509, 157, '_wcct_appearance_timer_single_display', '{{countdown_timer}}\r\nPrices go up when the timer hits zero'),
(1510, 157, '_wcct_appearance_timer_single_border_style', 'none'),
(1511, 157, '_wcct_appearance_timer_single_border_width', '1'),
(1512, 157, '_wcct_appearance_timer_single_border_color', '#444444'),
(1513, 157, '_wcct_appearance_timer_mobile_reduction', '90'),
(1514, 157, '_wcct_location_bar_show_single', '0'),
(1515, 157, '_wcct_location_bar_single_location', '4'),
(1516, 157, '_wcct_appearance_bar_single_skin', 'stripe'),
(1517, 157, '_wcct_appearance_bar_single_edges', 'rounded'),
(1518, 157, '_wcct_appearance_bar_single_orientation', 'rtl'),
(1519, 157, '_wcct_appearance_bar_single_bg_color', '#dddddd'),
(1520, 157, '_wcct_appearance_bar_single_active_color', '#ee303c'),
(1521, 157, '_wcct_appearance_bar_single_height', '16'),
(1522, 157, '_wcct_appearance_bar_single_display', '{{counter_bar}} {{sold_units}} units sold out of {{total_units}}'),
(1523, 157, '_wcct_appearance_bar_single_border_style', 'none'),
(1524, 157, '_wcct_appearance_bar_single_border_width', '0'),
(1525, 157, '_wcct_appearance_bar_single_border_color', '#444444'),
(1526, 157, '_wcct_campaign_menu_order', '0'),
(1580, 81, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:1:{i:0;i:22;}}'),
(1581, 73, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:1:{i:0;i:21;}}'),
(1582, 90, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:1:{i:0;i:21;}}'),
(1583, 74, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:1:{i:0;i:21;}}'),
(1585, 75, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:1:{i:0;i:21;}}'),
(1589, 70, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:5:{i:0;i:18;i:1;i:39;i:2;i:38;i:3;i:32;i:4;i:33;}}'),
(1590, 71, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:5:{i:0;i:18;i:1;i:39;i:2;i:38;i:3;i:32;i:4;i:33;}}'),
(1591, 78, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:5:{i:0;i:18;i:1;i:39;i:2;i:38;i:3;i:32;i:4;i:33;}}'),
(1592, 79, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:3:{i:0;i:18;i:1;i:32;i:2;i:36;}}'),
(1594, 80, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:4:{i:0;i:18;i:1;i:32;i:2;i:37;i:3;i:36;}}'),
(1595, 72, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:3:{i:0;i:18;i:1;i:32;i:2;i:36;}}'),
(1596, 89, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:3:{i:0;i:18;i:1;i:32;i:2;i:36;}}'),
(1597, 69, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:3:{i:0;i:18;i:1;i:32;i:2;i:36;}}'),
(1598, 77, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:5:{i:0;i:18;i:1;i:39;i:2;i:38;i:3;i:32;i:4;i:33;}}'),
(1601, 76, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:1:{i:0;i:21;}}'),
(1602, 82, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:1:{i:0;i:22;}}'),
(1603, 18, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:1:{i:0;i:35;}}'),
(1604, 92, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:1:{i:0;i:35;}}'),
(1605, 160, '_edit_lock', '1601356661:1'),
(1606, 161, '_wp_attached_file', '2020/09/images.jpeg'),
(1607, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:290;s:6:\"height\";i:174;s:4:\"file\";s:19:\"2020/09/images.jpeg\";s:5:\"sizes\";a:4:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"images-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"images-250x174.jpeg\";s:5:\"width\";i:250;s:6:\"height\";i:174;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"images-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"images-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1610, 160, '_thumbnail_id', '161'),
(1611, 163, '_edit_lock', '1601372481:1'),
(1612, 164, '_wp_attached_file', '2020/09/blog-post-image-guide.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1613, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:420;s:4:\"file\";s:33:\"2020/09/blog-post-image-guide.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"blog-post-image-guide-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"blog-post-image-guide-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"blog-post-image-guide-600x360.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"blog-post-image-guide-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"blog-post-image-guide-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:33:\"blog-post-image-guide-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"blog-post-image-guide-600x360.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"blog-post-image-guide-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1616, 163, '_thumbnail_id', '164'),
(1617, 14, '_edit_last', '1'),
(1618, 14, '_wp_page_template', 'default'),
(1619, 2, '_edit_lock', '1601118430:1'),
(1620, 167, '_order_key', 'wc_order_157Umw7owD8nG'),
(1621, 167, '_customer_user', '1'),
(1622, 167, '_payment_method', 'cod'),
(1623, 167, '_payment_method_title', 'Cash on delivery'),
(1624, 167, '_customer_ip_address', '::1'),
(1625, 167, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36'),
(1626, 167, '_created_via', 'checkout'),
(1627, 167, '_cart_hash', 'cb5870d90b762e5b6bd7f236f44f09a3'),
(1628, 167, '_billing_first_name', 'Abdul'),
(1629, 167, '_billing_last_name', 'zaffar'),
(1630, 167, '_billing_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(1631, 167, '_billing_city', 'vellore'),
(1632, 167, '_billing_state', 'TN'),
(1633, 167, '_billing_postcode', '632001'),
(1634, 167, '_billing_country', 'IN'),
(1635, 167, '_billing_email', 'abduljaffar94@gmail.com'),
(1636, 167, '_billing_phone', '9876543210'),
(1637, 167, '_order_currency', 'INR'),
(1638, 167, '_cart_discount', '0'),
(1639, 167, '_cart_discount_tax', '0'),
(1640, 167, '_order_shipping', '0.00'),
(1641, 167, '_order_shipping_tax', '0'),
(1642, 167, '_order_tax', '0'),
(1643, 167, '_order_total', '15.00'),
(1644, 167, '_order_version', '4.5.2'),
(1645, 167, '_prices_include_tax', 'no'),
(1646, 167, '_billing_address_index', 'Abdul zaffar  17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore  vellore TN 632001 IN abduljaffar94@gmail.com 9876543210'),
(1647, 167, '_shipping_address_index', '        '),
(1648, 167, 'is_vat_exempt', 'no'),
(1649, 167, '_recorded_sales', 'yes'),
(1650, 167, '_recorded_coupon_usage_counts', 'yes'),
(1651, 167, '_wcct_goaldeal_sold_backup', 'a:1:{s:4:\"sold\";s:1:\"y\";}'),
(1652, 167, '_order_stock_reduced', 'yes'),
(1653, 168, '_form', '<label> Your Name (required)\n  [text* your-name class:form-control] </label>\n\n<label> Your Email (required)\n  [email* your-email class:form-control] </label>\n\n<label> Subject\n    [text your-subject class:form-control] </label>\n\n<label> Phone\n[tel tel-91 class:form-control] </label>\n\n<label> Your Message\n    [textarea your-message class:form-control] </label>\n\n[submit class:btn \"Send\"]'),
(1654, 168, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:22:\"Eshop \"[your-subject]\"\";s:6:\"sender\";s:27:\"Eshop <zaffar@pixlogix.com>\";s:9:\"recipient\";s:19:\"zaffar@pixlogix.com\";s:4:\"body\";s:166:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Eshop (http://localhost/EShop)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1655, 168, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:22:\"Eshop \"[your-subject]\"\";s:6:\"sender\";s:27:\"Eshop <zaffar@pixlogix.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:108:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Eshop (http://localhost/EShop)\";s:18:\"additional_headers\";s:29:\"Reply-To: zaffar@pixlogix.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1656, 168, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(1657, 168, '_additional_settings', ''),
(1658, 168, '_locale', 'en_US'),
(1659, 169, '_edit_last', '1'),
(1660, 169, '_wp_page_template', 'page-template/contact.php'),
(1661, 169, '_edit_lock', '1601280864:1'),
(1662, 171, '_menu_item_type', 'post_type'),
(1663, 171, '_menu_item_menu_item_parent', '0'),
(1664, 171, '_menu_item_object_id', '169'),
(1665, 171, '_menu_item_object', 'page'),
(1666, 171, '_menu_item_target', ''),
(1667, 171, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1668, 171, '_menu_item_xfn', ''),
(1669, 171, '_menu_item_url', ''),
(1674, 91, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:2:{i:0;i:18;i:1;i:34;}}'),
(1675, 174, '_edit_last', '1'),
(1676, 174, '_edit_lock', '1601371339:1'),
(1677, 174, '_wp_page_template', 'page-template/blog.php'),
(1678, 176, '_menu_item_type', 'post_type'),
(1679, 176, '_menu_item_menu_item_parent', '0'),
(1680, 176, '_menu_item_object_id', '174'),
(1681, 176, '_menu_item_object', 'page'),
(1682, 176, '_menu_item_target', ''),
(1683, 176, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1684, 176, '_menu_item_xfn', ''),
(1685, 176, '_menu_item_url', ''),
(1688, 118, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:3:{i:0;i:35;i:1;i:18;i:2;i:34;}}'),
(1689, 139, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:1:{i:0;i:35;}}'),
(1690, 137, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:2:{i:0;i:18;i:1;i:34;}}'),
(1691, 140, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:5:{i:0;i:18;i:1;i:32;i:2;i:40;i:3;i:36;i:4;i:33;}}'),
(1692, 132, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:6:{i:0;i:18;i:1;i:34;i:2;i:32;i:3;i:40;i:4;i:36;i:5;i:33;}}'),
(1693, 120, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:2:{i:0;i:18;i:1;i:34;}}'),
(1695, 116, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:1:{i:0;i:35;}}'),
(1696, 125, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:4:{i:0;i:18;i:1;i:34;i:2;i:32;i:3;i:37;}}'),
(1697, 141, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:1:{i:0;i:35;}}'),
(1698, 128, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:6:{i:0;i:18;i:1;i:34;i:2;i:32;i:3;i:40;i:4;i:36;i:5;i:33;}}'),
(1699, 124, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:6:{i:0;i:18;i:1;i:34;i:2;i:32;i:3;i:40;i:4;i:36;i:5;i:33;}}'),
(1702, 160, '_edit_last', '1'),
(1707, 143, '_edit_lock', '1601370478:1'),
(1708, 143, '_edit_last', '1'),
(1709, 143, '_wp_page_template', 'default'),
(1710, 163, '_edit_last', '1'),
(1713, 15, '_edit_lock', '1601374225:1'),
(1714, 81, '_edit_lock', '1601383868:1'),
(1715, 179, '_mc4wp_settings', 'a:9:{s:5:\"lists\";a:1:{i:0;s:10:\"b057190382\";}s:15:\"required_fields\";s:5:\"EMAIL\";s:12:\"double_optin\";s:1:\"1\";s:15:\"update_existing\";s:1:\"0\";s:17:\"replace_interests\";s:1:\"1\";s:15:\"subscriber_tags\";s:0:\"\";s:18:\"hide_after_success\";s:1:\"0\";s:8:\"redirect\";s:0:\"\";s:3:\"css\";s:1:\"0\";}'),
(1716, 179, 'text_subscribed', 'Thank you, your sign-up request was successful! Please check your email inbox to confirm.'),
(1717, 179, 'text_invalid_email', 'Please provide a valid email address.'),
(1718, 179, 'text_required_field_missing', 'Please fill in the required fields.'),
(1719, 179, 'text_already_subscribed', 'Given email address is already subscribed, thank you!'),
(1720, 179, 'text_error', 'Oops. Something went wrong. Please try again later.'),
(1721, 179, 'text_unsubscribed', 'You were successfully unsubscribed.'),
(1722, 179, 'text_not_subscribed', 'Given email address is not subscribed.'),
(1723, 179, 'text_no_lists_selected', 'Please select at least one list.'),
(1724, 179, 'text_updated', 'Thank you, your records have been updated!'),
(1729, 19, '_wp_page_template', 'default'),
(1730, 19, 'deal_banner', '151'),
(1731, 19, '_deal_banner', 'field_5f758555391dc'),
(1732, 19, 'deal_title', 'Beautiful Dress For Women'),
(1733, 19, '_deal_title', 'field_5f758575391dd'),
(1734, 19, 'deal_description', 'Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien.'),
(1735, 19, '_deal_description', 'field_5f75858d391de'),
(1736, 19, 'before_deal_price', 'Starting at'),
(1737, 19, '_before_deal_price', 'field_5f7585d8391e0'),
(1738, 19, 'deal_price', '999'),
(1739, 19, '_deal_price', 'field_5f7585a2391df'),
(1740, 198, 'banner_image1', '53'),
(1741, 198, '_banner_image1', 'field_5f6c7a05dda13'),
(1742, 198, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n&nbsp;\r\n\r\nMaboriosam in a nesciung eget magnae\r\ndapibus disting tloctio in the find it pereri\r\nodiy maboriosm.'),
(1743, 198, '_banner_text1', 'field_5f6c7b3bdda18'),
(1744, 198, 'product_link', 'http://localhost/'),
(1745, 198, '_product_link', 'field_5f6c7b74dda19'),
(1746, 198, 'small_banners', '3'),
(1747, 198, '_small_banners', 'field_5f6c7b90dda1a'),
(1748, 198, 'small_banners_0_small_banner_image', '60'),
(1749, 198, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(1750, 198, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(1751, 198, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(1752, 198, 'small_banners_0_product_link', 'http://localhost/'),
(1753, 198, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(1754, 198, 'small_banners_0_link_text', 'Discover More'),
(1755, 198, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(1756, 198, 'small_banners_1_small_banner_image', '59'),
(1757, 198, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(1758, 198, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(1759, 198, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(1760, 198, 'small_banners_1_product_link', 'http://localhost/'),
(1761, 198, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(1762, 198, 'small_banners_1_link_text', 'Shop Now'),
(1763, 198, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(1764, 198, 'small_banners_2_small_banner_image', '58'),
(1765, 198, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(1766, 198, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(1767, 198, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(1768, 198, 'small_banners_2_product_link', 'http://localhost/EShop/'),
(1769, 198, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(1770, 198, 'small_banners_2_link_text', 'Discover more'),
(1771, 198, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(1772, 198, 'event_sale_0_banner_image', '149'),
(1773, 198, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(1774, 198, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(1775, 198, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(1776, 198, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(1777, 198, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(1778, 198, 'event_sale', '2'),
(1779, 198, '_event_sale', 'field_5f6ee491d8d23'),
(1780, 198, 'event_sale_1_banner_image', '153'),
(1781, 198, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(1782, 198, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(1783, 198, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(1784, 198, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(1785, 198, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(1786, 198, 'deal_banner', '151'),
(1787, 198, '_deal_banner', 'field_5f758555391dc'),
(1788, 198, 'deal_title', 'Beautiful Dress For Women'),
(1789, 198, '_deal_title', 'field_5f758575391dd'),
(1790, 198, 'deal_description', 'Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien.'),
(1791, 198, '_deal_description', 'field_5f75858d391de'),
(1792, 198, 'before_deal_price', 'Starting at'),
(1793, 198, '_before_deal_price', 'field_5f7585d8391e0'),
(1794, 198, 'deal_price', '999'),
(1795, 198, '_deal_price', 'field_5f7585a2391df'),
(1796, 19, 'deal_end_date', '20201008'),
(1797, 19, '_deal_end_date', 'field_5f75912c1ac6e'),
(1798, 200, 'banner_image1', '53'),
(1799, 200, '_banner_image1', 'field_5f6c7a05dda13'),
(1800, 200, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n&nbsp;\r\n\r\nMaboriosam in a nesciung eget magnae\r\ndapibus disting tloctio in the find it pereri\r\nodiy maboriosm.'),
(1801, 200, '_banner_text1', 'field_5f6c7b3bdda18'),
(1802, 200, 'product_link', 'http://localhost/'),
(1803, 200, '_product_link', 'field_5f6c7b74dda19'),
(1804, 200, 'small_banners', '3'),
(1805, 200, '_small_banners', 'field_5f6c7b90dda1a'),
(1806, 200, 'small_banners_0_small_banner_image', '60'),
(1807, 200, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(1808, 200, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(1809, 200, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(1810, 200, 'small_banners_0_product_link', 'http://localhost/'),
(1811, 200, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(1812, 200, 'small_banners_0_link_text', 'Discover More'),
(1813, 200, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(1814, 200, 'small_banners_1_small_banner_image', '59'),
(1815, 200, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(1816, 200, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(1817, 200, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(1818, 200, 'small_banners_1_product_link', 'http://localhost/'),
(1819, 200, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(1820, 200, 'small_banners_1_link_text', 'Shop Now'),
(1821, 200, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(1822, 200, 'small_banners_2_small_banner_image', '58'),
(1823, 200, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(1824, 200, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(1825, 200, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(1826, 200, 'small_banners_2_product_link', 'http://localhost/EShop/'),
(1827, 200, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(1828, 200, 'small_banners_2_link_text', 'Discover more'),
(1829, 200, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(1830, 200, 'event_sale_0_banner_image', '149'),
(1831, 200, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(1832, 200, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(1833, 200, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(1834, 200, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(1835, 200, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(1836, 200, 'event_sale', '2'),
(1837, 200, '_event_sale', 'field_5f6ee491d8d23'),
(1838, 200, 'event_sale_1_banner_image', '153'),
(1839, 200, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(1840, 200, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(1841, 200, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(1842, 200, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(1843, 200, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(1844, 200, 'deal_banner', '151'),
(1845, 200, '_deal_banner', 'field_5f758555391dc'),
(1846, 200, 'deal_title', 'Beautiful Dress For Women'),
(1847, 200, '_deal_title', 'field_5f758575391dd'),
(1848, 200, 'deal_description', 'Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien.'),
(1849, 200, '_deal_description', 'field_5f75858d391de'),
(1850, 200, 'before_deal_price', 'Starting at'),
(1851, 200, '_before_deal_price', 'field_5f7585d8391e0'),
(1852, 200, 'deal_price', '999'),
(1853, 200, '_deal_price', 'field_5f7585a2391df'),
(1854, 200, 'deal_end_date', '20201001'),
(1855, 200, '_deal_end_date', 'field_5f75912c1ac6e'),
(1856, 201, 'banner_image1', '53'),
(1857, 201, '_banner_image1', 'field_5f6c7a05dda13'),
(1858, 201, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n&nbsp;\r\n\r\nMaboriosam in a nesciung eget magnae\r\ndapibus disting tloctio in the find it pereri\r\nodiy maboriosm.'),
(1859, 201, '_banner_text1', 'field_5f6c7b3bdda18'),
(1860, 201, 'product_link', 'http://localhost/'),
(1861, 201, '_product_link', 'field_5f6c7b74dda19'),
(1862, 201, 'small_banners', '3'),
(1863, 201, '_small_banners', 'field_5f6c7b90dda1a'),
(1864, 201, 'small_banners_0_small_banner_image', '60'),
(1865, 201, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(1866, 201, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(1867, 201, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(1868, 201, 'small_banners_0_product_link', 'http://localhost/'),
(1869, 201, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(1870, 201, 'small_banners_0_link_text', 'Discover More'),
(1871, 201, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(1872, 201, 'small_banners_1_small_banner_image', '59'),
(1873, 201, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(1874, 201, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(1875, 201, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(1876, 201, 'small_banners_1_product_link', 'http://localhost/'),
(1877, 201, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(1878, 201, 'small_banners_1_link_text', 'Shop Now'),
(1879, 201, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(1880, 201, 'small_banners_2_small_banner_image', '58'),
(1881, 201, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(1882, 201, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(1883, 201, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(1884, 201, 'small_banners_2_product_link', 'http://localhost/EShop/'),
(1885, 201, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(1886, 201, 'small_banners_2_link_text', 'Discover more'),
(1887, 201, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(1888, 201, 'event_sale_0_banner_image', '149'),
(1889, 201, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(1890, 201, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(1891, 201, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(1892, 201, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(1893, 201, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(1894, 201, 'event_sale', '2'),
(1895, 201, '_event_sale', 'field_5f6ee491d8d23'),
(1896, 201, 'event_sale_1_banner_image', '153'),
(1897, 201, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(1898, 201, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(1899, 201, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(1900, 201, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(1901, 201, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(1902, 201, 'deal_banner', '151'),
(1903, 201, '_deal_banner', 'field_5f758555391dc'),
(1904, 201, 'deal_title', 'Beautiful Dress For Women'),
(1905, 201, '_deal_title', 'field_5f758575391dd'),
(1906, 201, 'deal_description', 'Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien.'),
(1907, 201, '_deal_description', 'field_5f75858d391de'),
(1908, 201, 'before_deal_price', 'Starting at'),
(1909, 201, '_before_deal_price', 'field_5f7585d8391e0'),
(1910, 201, 'deal_price', '999'),
(1911, 201, '_deal_price', 'field_5f7585a2391df'),
(1912, 201, 'deal_end_date', '20201002'),
(1913, 201, '_deal_end_date', 'field_5f75912c1ac6e'),
(1914, 202, 'banner_image1', '53'),
(1915, 202, '_banner_image1', 'field_5f6c7a05dda13'),
(1916, 202, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n&nbsp;\r\n\r\nMaboriosam in a nesciung eget magnae dapibus disting tloctio in the find it pereri odiy maboriosm.'),
(1917, 202, '_banner_text1', 'field_5f6c7b3bdda18'),
(1918, 202, 'product_link', 'http://localhost/'),
(1919, 202, '_product_link', 'field_5f6c7b74dda19'),
(1920, 202, 'small_banners', '3'),
(1921, 202, '_small_banners', 'field_5f6c7b90dda1a'),
(1922, 202, 'small_banners_0_small_banner_image', '60'),
(1923, 202, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(1924, 202, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(1925, 202, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(1926, 202, 'small_banners_0_product_link', 'http://localhost/'),
(1927, 202, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(1928, 202, 'small_banners_0_link_text', 'Discover More'),
(1929, 202, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(1930, 202, 'small_banners_1_small_banner_image', '59'),
(1931, 202, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(1932, 202, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(1933, 202, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(1934, 202, 'small_banners_1_product_link', 'http://localhost/'),
(1935, 202, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(1936, 202, 'small_banners_1_link_text', 'Shop Now'),
(1937, 202, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(1938, 202, 'small_banners_2_small_banner_image', '58'),
(1939, 202, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(1940, 202, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(1941, 202, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(1942, 202, 'small_banners_2_product_link', 'http://localhost/EShop/'),
(1943, 202, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(1944, 202, 'small_banners_2_link_text', 'Discover more'),
(1945, 202, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(1946, 202, 'event_sale_0_banner_image', '149'),
(1947, 202, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(1948, 202, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(1949, 202, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(1950, 202, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(1951, 202, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(1952, 202, 'event_sale', '2'),
(1953, 202, '_event_sale', 'field_5f6ee491d8d23'),
(1954, 202, 'event_sale_1_banner_image', '153'),
(1955, 202, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(1956, 202, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(1957, 202, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(1958, 202, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(1959, 202, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(1960, 202, 'deal_banner', '151'),
(1961, 202, '_deal_banner', 'field_5f758555391dc'),
(1962, 202, 'deal_title', 'Beautiful Dress For Women'),
(1963, 202, '_deal_title', 'field_5f758575391dd'),
(1964, 202, 'deal_description', 'Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien.'),
(1965, 202, '_deal_description', 'field_5f75858d391de'),
(1966, 202, 'before_deal_price', 'Starting at'),
(1967, 202, '_before_deal_price', 'field_5f7585d8391e0'),
(1968, 202, 'deal_price', '999'),
(1969, 202, '_deal_price', 'field_5f7585a2391df'),
(1970, 202, 'deal_end_date', '20201002'),
(1971, 202, '_deal_end_date', 'field_5f75912c1ac6e'),
(1972, 203, 'banner_image1', '53'),
(1973, 203, '_banner_image1', 'field_5f6c7a05dda13'),
(1974, 203, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n&nbsp;\r\n\r\n<div class=\"text-white\">Maboriosam in a nesciung eget magnae dapibus disting tloctio in the find it pereri odiy maboriosm.</div>'),
(1975, 203, '_banner_text1', 'field_5f6c7b3bdda18'),
(1976, 203, 'product_link', 'http://localhost/'),
(1977, 203, '_product_link', 'field_5f6c7b74dda19'),
(1978, 203, 'small_banners', '3'),
(1979, 203, '_small_banners', 'field_5f6c7b90dda1a'),
(1980, 203, 'small_banners_0_small_banner_image', '60'),
(1981, 203, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(1982, 203, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(1983, 203, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(1984, 203, 'small_banners_0_product_link', 'http://localhost/'),
(1985, 203, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(1986, 203, 'small_banners_0_link_text', 'Discover More'),
(1987, 203, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(1988, 203, 'small_banners_1_small_banner_image', '59'),
(1989, 203, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(1990, 203, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(1991, 203, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(1992, 203, 'small_banners_1_product_link', 'http://localhost/'),
(1993, 203, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(1994, 203, 'small_banners_1_link_text', 'Shop Now'),
(1995, 203, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(1996, 203, 'small_banners_2_small_banner_image', '58'),
(1997, 203, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(1998, 203, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(1999, 203, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(2000, 203, 'small_banners_2_product_link', 'http://localhost/EShop/'),
(2001, 203, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(2002, 203, 'small_banners_2_link_text', 'Discover more'),
(2003, 203, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(2004, 203, 'event_sale_0_banner_image', '149'),
(2005, 203, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(2006, 203, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(2007, 203, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(2008, 203, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(2009, 203, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(2010, 203, 'event_sale', '2'),
(2011, 203, '_event_sale', 'field_5f6ee491d8d23'),
(2012, 203, 'event_sale_1_banner_image', '153'),
(2013, 203, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(2014, 203, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(2015, 203, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(2016, 203, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(2017, 203, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(2018, 203, 'deal_banner', '151'),
(2019, 203, '_deal_banner', 'field_5f758555391dc'),
(2020, 203, 'deal_title', 'Beautiful Dress For Women'),
(2021, 203, '_deal_title', 'field_5f758575391dd'),
(2022, 203, 'deal_description', 'Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien.'),
(2023, 203, '_deal_description', 'field_5f75858d391de'),
(2024, 203, 'before_deal_price', 'Starting at'),
(2025, 203, '_before_deal_price', 'field_5f7585d8391e0'),
(2026, 203, 'deal_price', '999'),
(2027, 203, '_deal_price', 'field_5f7585a2391df'),
(2028, 203, 'deal_end_date', '20201002'),
(2029, 203, '_deal_end_date', 'field_5f75912c1ac6e'),
(2030, 204, 'banner_image1', '53'),
(2031, 204, '_banner_image1', 'field_5f6c7a05dda13'),
(2032, 204, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n&nbsp;\r\n\r\n<p class=\"text-white\">Maboriosam in a nesciung eget magnae dapibus disting tloctio in the find it pereri odiy maboriosm.</p>'),
(2033, 204, '_banner_text1', 'field_5f6c7b3bdda18'),
(2034, 204, 'product_link', 'http://localhost/'),
(2035, 204, '_product_link', 'field_5f6c7b74dda19'),
(2036, 204, 'small_banners', '3'),
(2037, 204, '_small_banners', 'field_5f6c7b90dda1a'),
(2038, 204, 'small_banners_0_small_banner_image', '60'),
(2039, 204, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(2040, 204, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(2041, 204, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(2042, 204, 'small_banners_0_product_link', 'http://localhost/'),
(2043, 204, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(2044, 204, 'small_banners_0_link_text', 'Discover More'),
(2045, 204, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(2046, 204, 'small_banners_1_small_banner_image', '59'),
(2047, 204, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(2048, 204, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(2049, 204, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(2050, 204, 'small_banners_1_product_link', 'http://localhost/'),
(2051, 204, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(2052, 204, 'small_banners_1_link_text', 'Shop Now'),
(2053, 204, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(2054, 204, 'small_banners_2_small_banner_image', '58'),
(2055, 204, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(2056, 204, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(2057, 204, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(2058, 204, 'small_banners_2_product_link', 'http://localhost/EShop/'),
(2059, 204, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(2060, 204, 'small_banners_2_link_text', 'Discover more'),
(2061, 204, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(2062, 204, 'event_sale_0_banner_image', '149'),
(2063, 204, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(2064, 204, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(2065, 204, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(2066, 204, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(2067, 204, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(2068, 204, 'event_sale', '2'),
(2069, 204, '_event_sale', 'field_5f6ee491d8d23'),
(2070, 204, 'event_sale_1_banner_image', '153'),
(2071, 204, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(2072, 204, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(2073, 204, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(2074, 204, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(2075, 204, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(2076, 204, 'deal_banner', '151'),
(2077, 204, '_deal_banner', 'field_5f758555391dc'),
(2078, 204, 'deal_title', 'Beautiful Dress For Women'),
(2079, 204, '_deal_title', 'field_5f758575391dd'),
(2080, 204, 'deal_description', 'Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien.'),
(2081, 204, '_deal_description', 'field_5f75858d391de'),
(2082, 204, 'before_deal_price', 'Starting at'),
(2083, 204, '_before_deal_price', 'field_5f7585d8391e0'),
(2084, 204, 'deal_price', '999'),
(2085, 204, '_deal_price', 'field_5f7585a2391df'),
(2086, 204, 'deal_end_date', '20201002'),
(2087, 204, '_deal_end_date', 'field_5f75912c1ac6e'),
(2088, 205, 'banner_image1', '53'),
(2089, 205, '_banner_image1', 'field_5f6c7a05dda13'),
(2090, 205, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n&nbsp;\r\n<p class=\"text-white\">Maboriosam in a nesciung eget magnae dapibus disting tloctio in the find it pereri odiy maboriosm.</p>'),
(2091, 205, '_banner_text1', 'field_5f6c7b3bdda18'),
(2092, 205, 'product_link', 'http://localhost/'),
(2093, 205, '_product_link', 'field_5f6c7b74dda19'),
(2094, 205, 'small_banners', '3'),
(2095, 205, '_small_banners', 'field_5f6c7b90dda1a'),
(2096, 205, 'small_banners_0_small_banner_image', '60'),
(2097, 205, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(2098, 205, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(2099, 205, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(2100, 205, 'small_banners_0_product_link', 'http://localhost/'),
(2101, 205, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(2102, 205, 'small_banners_0_link_text', 'Discover More'),
(2103, 205, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(2104, 205, 'small_banners_1_small_banner_image', '59'),
(2105, 205, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(2106, 205, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(2107, 205, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(2108, 205, 'small_banners_1_product_link', 'http://localhost/'),
(2109, 205, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(2110, 205, 'small_banners_1_link_text', 'Shop Now'),
(2111, 205, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(2112, 205, 'small_banners_2_small_banner_image', '58'),
(2113, 205, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(2114, 205, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(2115, 205, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(2116, 205, 'small_banners_2_product_link', 'http://localhost/EShop/'),
(2117, 205, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(2118, 205, 'small_banners_2_link_text', 'Discover more'),
(2119, 205, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(2120, 205, 'event_sale_0_banner_image', '149'),
(2121, 205, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(2122, 205, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(2123, 205, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(2124, 205, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(2125, 205, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(2126, 205, 'event_sale', '2'),
(2127, 205, '_event_sale', 'field_5f6ee491d8d23'),
(2128, 205, 'event_sale_1_banner_image', '153'),
(2129, 205, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(2130, 205, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(2131, 205, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(2132, 205, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(2133, 205, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(2134, 205, 'deal_banner', '151'),
(2135, 205, '_deal_banner', 'field_5f758555391dc'),
(2136, 205, 'deal_title', 'Beautiful Dress For Women'),
(2137, 205, '_deal_title', 'field_5f758575391dd'),
(2138, 205, 'deal_description', 'Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien.'),
(2139, 205, '_deal_description', 'field_5f75858d391de'),
(2140, 205, 'before_deal_price', 'Starting at'),
(2141, 205, '_before_deal_price', 'field_5f7585d8391e0'),
(2142, 205, 'deal_price', '999'),
(2143, 205, '_deal_price', 'field_5f7585a2391df'),
(2144, 205, 'deal_end_date', '20201002'),
(2145, 205, '_deal_end_date', 'field_5f75912c1ac6e'),
(2146, 206, 'banner_image1', '53'),
(2147, 206, '_banner_image1', 'field_5f6c7a05dda13'),
(2148, 206, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n<p class=\"text-white\">Maboriosam in a nesciung eget magnae dapibus disting tloctio in the find it pereri odiy maboriosm.</p>'),
(2149, 206, '_banner_text1', 'field_5f6c7b3bdda18'),
(2150, 206, 'product_link', 'http://localhost/'),
(2151, 206, '_product_link', 'field_5f6c7b74dda19'),
(2152, 206, 'small_banners', '3'),
(2153, 206, '_small_banners', 'field_5f6c7b90dda1a'),
(2154, 206, 'small_banners_0_small_banner_image', '60'),
(2155, 206, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(2156, 206, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(2157, 206, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(2158, 206, 'small_banners_0_product_link', 'http://localhost/'),
(2159, 206, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(2160, 206, 'small_banners_0_link_text', 'Discover More'),
(2161, 206, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(2162, 206, 'small_banners_1_small_banner_image', '59'),
(2163, 206, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(2164, 206, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(2165, 206, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(2166, 206, 'small_banners_1_product_link', 'http://localhost/'),
(2167, 206, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(2168, 206, 'small_banners_1_link_text', 'Shop Now'),
(2169, 206, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(2170, 206, 'small_banners_2_small_banner_image', '58'),
(2171, 206, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(2172, 206, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(2173, 206, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(2174, 206, 'small_banners_2_product_link', 'http://localhost/EShop/'),
(2175, 206, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(2176, 206, 'small_banners_2_link_text', 'Discover more'),
(2177, 206, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(2178, 206, 'event_sale_0_banner_image', '149'),
(2179, 206, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(2180, 206, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(2181, 206, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(2182, 206, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(2183, 206, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(2184, 206, 'event_sale', '2'),
(2185, 206, '_event_sale', 'field_5f6ee491d8d23'),
(2186, 206, 'event_sale_1_banner_image', '153'),
(2187, 206, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(2188, 206, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(2189, 206, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(2190, 206, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(2191, 206, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(2192, 206, 'deal_banner', '151'),
(2193, 206, '_deal_banner', 'field_5f758555391dc'),
(2194, 206, 'deal_title', 'Beautiful Dress For Women'),
(2195, 206, '_deal_title', 'field_5f758575391dd'),
(2196, 206, 'deal_description', 'Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien.'),
(2197, 206, '_deal_description', 'field_5f75858d391de'),
(2198, 206, 'before_deal_price', 'Starting at'),
(2199, 206, '_before_deal_price', 'field_5f7585d8391e0'),
(2200, 206, 'deal_price', '999'),
(2201, 206, '_deal_price', 'field_5f7585a2391df'),
(2202, 206, 'deal_end_date', '20201002'),
(2203, 206, '_deal_end_date', 'field_5f75912c1ac6e'),
(2210, 211, '_order_key', 'wc_order_4FXvFEqYv0dDL'),
(2211, 211, '_customer_user', '1'),
(2212, 211, '_payment_method', 'cod'),
(2213, 211, '_payment_method_title', 'Cash on delivery'),
(2214, 211, '_customer_ip_address', '::1'),
(2215, 211, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36'),
(2216, 211, '_created_via', 'checkout'),
(2217, 211, '_cart_hash', '47c8a51b2a3527d06a6e694eb89174bf'),
(2218, 211, '_billing_first_name', 'Abdul'),
(2219, 211, '_billing_last_name', 'zaffar'),
(2220, 211, '_billing_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(2221, 211, '_billing_city', 'vellore'),
(2222, 211, '_billing_state', 'TN'),
(2223, 211, '_billing_postcode', '632001'),
(2224, 211, '_billing_country', 'IN'),
(2225, 211, '_billing_email', 'abduljaffar94@gmail.com'),
(2226, 211, '_billing_phone', '9876543210'),
(2227, 211, '_shipping_first_name', 'Abdul'),
(2228, 211, '_shipping_last_name', 'zaffar'),
(2229, 211, '_shipping_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(2230, 211, '_shipping_city', 'vellore'),
(2231, 211, '_shipping_state', 'TN'),
(2232, 211, '_shipping_postcode', '632001'),
(2233, 211, '_shipping_country', 'IN'),
(2234, 211, '_order_currency', 'INR'),
(2235, 211, '_cart_discount', '0'),
(2236, 211, '_cart_discount_tax', '0'),
(2237, 211, '_order_shipping', '0.00'),
(2238, 211, '_order_shipping_tax', '0'),
(2239, 211, '_order_tax', '0'),
(2240, 211, '_order_total', '145.00'),
(2241, 211, '_order_version', '4.5.2'),
(2242, 211, '_prices_include_tax', 'no'),
(2243, 211, '_billing_address_index', 'Abdul zaffar  17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore  vellore TN 632001 IN abduljaffar94@gmail.com 9876543210'),
(2244, 211, '_shipping_address_index', 'Abdul zaffar  17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore  vellore TN 632001 IN'),
(2245, 211, 'is_vat_exempt', 'no'),
(2246, 211, '_recorded_sales', 'yes'),
(2247, 211, '_recorded_coupon_usage_counts', 'yes'),
(2248, 211, '_wcct_goaldeal_sold_backup', 'a:1:{s:4:\"sold\";s:1:\"y\";}'),
(2249, 211, '_order_stock_reduced', 'yes'),
(2250, 212, '_order_key', 'wc_order_jgF14EGB74Kb8'),
(2251, 212, '_customer_user', '1'),
(2252, 212, '_payment_method', 'cod'),
(2253, 212, '_payment_method_title', 'Cash on delivery'),
(2254, 212, '_customer_ip_address', '::1'),
(2255, 212, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36'),
(2256, 212, '_created_via', 'checkout'),
(2257, 212, '_cart_hash', 'b8f3a6105402253a60bf8d083bc433d0'),
(2258, 212, '_billing_first_name', 'Abdul'),
(2259, 212, '_billing_last_name', 'zaffar'),
(2260, 212, '_billing_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(2261, 212, '_billing_city', 'vellore'),
(2262, 212, '_billing_state', 'TN'),
(2263, 212, '_billing_postcode', '632001'),
(2264, 212, '_billing_country', 'IN'),
(2265, 212, '_billing_email', 'abduljaffar94@gmail.com'),
(2266, 212, '_billing_phone', '9876543210'),
(2267, 212, '_order_currency', 'INR'),
(2268, 212, '_cart_discount', '0'),
(2269, 212, '_cart_discount_tax', '0'),
(2270, 212, '_order_shipping', '0.00'),
(2271, 212, '_order_shipping_tax', '0'),
(2272, 212, '_order_tax', '0'),
(2273, 212, '_order_total', '2.00'),
(2274, 212, '_order_version', '4.5.2'),
(2275, 212, '_prices_include_tax', 'no'),
(2276, 212, '_billing_address_index', 'Abdul zaffar  17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore  vellore TN 632001 IN abduljaffar94@gmail.com 9876543210'),
(2277, 212, '_shipping_address_index', '        '),
(2278, 212, 'is_vat_exempt', 'no'),
(2279, 212, '_recorded_sales', 'yes'),
(2280, 212, '_recorded_coupon_usage_counts', 'yes'),
(2281, 212, '_wcct_goaldeal_sold_backup', 'a:1:{s:4:\"sold\";s:1:\"y\";}'),
(2282, 212, '_order_stock_reduced', 'yes'),
(2283, 213, '_edit_last', '1'),
(2284, 213, '_wp_page_template', 'default'),
(2285, 213, '_edit_lock', '1601556667:1'),
(2286, 216, '_edit_lock', '1601556699:1'),
(2287, 216, '_edit_last', '1'),
(2288, 216, '_wp_page_template', 'default'),
(2289, 218, '_menu_item_type', 'post_type'),
(2290, 218, '_menu_item_menu_item_parent', '0'),
(2291, 218, '_menu_item_object_id', '216'),
(2292, 218, '_menu_item_object', 'page'),
(2293, 218, '_menu_item_target', ''),
(2294, 218, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2295, 218, '_menu_item_xfn', ''),
(2296, 218, '_menu_item_url', ''),
(2298, 219, '_menu_item_type', 'post_type'),
(2299, 219, '_menu_item_menu_item_parent', '0'),
(2300, 219, '_menu_item_object_id', '213'),
(2301, 219, '_menu_item_object', 'page'),
(2302, 219, '_menu_item_target', ''),
(2303, 219, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2304, 219, '_menu_item_xfn', ''),
(2305, 219, '_menu_item_url', ''),
(2313, 221, '_menu_item_type', 'post_type'),
(2314, 221, '_menu_item_menu_item_parent', '0'),
(2315, 221, '_menu_item_object_id', '216'),
(2316, 221, '_menu_item_object', 'page'),
(2317, 221, '_menu_item_target', ''),
(2318, 221, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2319, 221, '_menu_item_xfn', ''),
(2320, 221, '_menu_item_url', ''),
(2321, 221, '_menu_item_orphaned', '1601557359'),
(2322, 222, '_menu_item_type', 'post_type'),
(2323, 222, '_menu_item_menu_item_parent', '0'),
(2324, 222, '_menu_item_object_id', '213'),
(2325, 222, '_menu_item_object', 'page'),
(2326, 222, '_menu_item_target', ''),
(2327, 222, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2328, 222, '_menu_item_xfn', ''),
(2329, 222, '_menu_item_url', ''),
(2331, 223, '_menu_item_type', 'post_type'),
(2332, 223, '_menu_item_menu_item_parent', '0'),
(2333, 223, '_menu_item_object_id', '174'),
(2334, 223, '_menu_item_object', 'page'),
(2335, 223, '_menu_item_target', ''),
(2336, 223, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2337, 223, '_menu_item_xfn', ''),
(2338, 223, '_menu_item_url', ''),
(2340, 224, '_menu_item_type', 'post_type'),
(2341, 224, '_menu_item_menu_item_parent', '0'),
(2342, 224, '_menu_item_object_id', '169'),
(2343, 224, '_menu_item_object', 'page'),
(2344, 224, '_menu_item_target', ''),
(2345, 224, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2346, 224, '_menu_item_xfn', ''),
(2347, 224, '_menu_item_url', ''),
(2349, 225, '_menu_item_type', 'post_type'),
(2350, 225, '_menu_item_menu_item_parent', '0'),
(2351, 225, '_menu_item_object_id', '143'),
(2352, 225, '_menu_item_object', 'page'),
(2353, 225, '_menu_item_target', ''),
(2354, 225, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2355, 225, '_menu_item_xfn', ''),
(2356, 225, '_menu_item_url', ''),
(2358, 226, '_menu_item_type', 'post_type'),
(2359, 226, '_menu_item_menu_item_parent', '0'),
(2360, 226, '_menu_item_object_id', '17'),
(2361, 226, '_menu_item_object', 'page'),
(2362, 226, '_menu_item_target', ''),
(2363, 226, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2364, 226, '_menu_item_xfn', ''),
(2365, 226, '_menu_item_url', ''),
(2366, 226, '_menu_item_orphaned', '1601557365'),
(2367, 227, '_menu_item_type', 'post_type'),
(2368, 227, '_menu_item_menu_item_parent', '0'),
(2369, 227, '_menu_item_object_id', '16'),
(2370, 227, '_menu_item_object', 'page'),
(2371, 227, '_menu_item_target', ''),
(2372, 227, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2373, 227, '_menu_item_xfn', ''),
(2374, 227, '_menu_item_url', ''),
(2375, 227, '_menu_item_orphaned', '1601557366'),
(2376, 228, '_menu_item_type', 'post_type'),
(2377, 228, '_menu_item_menu_item_parent', '0'),
(2378, 228, '_menu_item_object_id', '15'),
(2379, 228, '_menu_item_object', 'page'),
(2380, 228, '_menu_item_target', ''),
(2381, 228, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2382, 228, '_menu_item_xfn', ''),
(2383, 228, '_menu_item_url', ''),
(2384, 228, '_menu_item_orphaned', '1601557367'),
(2385, 229, '_menu_item_type', 'post_type'),
(2386, 229, '_menu_item_menu_item_parent', '0'),
(2387, 229, '_menu_item_object_id', '14'),
(2388, 229, '_menu_item_object', 'page'),
(2389, 229, '_menu_item_target', ''),
(2390, 229, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2391, 229, '_menu_item_xfn', ''),
(2392, 229, '_menu_item_url', ''),
(2394, 230, '_menu_item_type', 'post_type'),
(2395, 230, '_menu_item_menu_item_parent', '0'),
(2396, 230, '_menu_item_object_id', '2'),
(2397, 230, '_menu_item_object', 'page'),
(2398, 230, '_menu_item_target', ''),
(2399, 230, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(2400, 230, '_menu_item_xfn', ''),
(2401, 230, '_menu_item_url', ''),
(2402, 230, '_menu_item_orphaned', '1601557370'),
(2404, 122, '_wc_rating_count', 'a:1:{i:5;i:1;}'),
(2405, 122, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:4:{i:0;i:18;i:1;i:34;i:2;i:32;i:3;i:36;}}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2406, 142, '_wc_rating_count', 'a:1:{i:4;i:1;}'),
(2407, 142, '_wcct_product_taxonomy_term_ids', 'a:1:{s:8:\"category\";a:4:{i:0;i:35;i:1;i:18;i:2;i:32;i:3;i:33;}}'),
(2409, 233, 'banner_image1', '53'),
(2410, 233, '_banner_image1', 'field_5f6c7a05dda13'),
(2411, 233, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n<p class=\"text-white\">Maboriosam in a nesciung eget magnae dapibus disting tloctio in the find it pereri odiy maboriosm.</p>'),
(2412, 233, '_banner_text1', 'field_5f6c7b3bdda18'),
(2413, 233, 'product_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(2414, 233, '_product_link', 'field_5f6c7b74dda19'),
(2415, 233, 'small_banners', '3'),
(2416, 233, '_small_banners', 'field_5f6c7b90dda1a'),
(2417, 233, 'small_banners_0_small_banner_image', '60'),
(2418, 233, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(2419, 233, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(2420, 233, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(2421, 233, 'small_banners_0_product_link', 'http://localhost/EShop/index.php/product-category/clothing/accessories/'),
(2422, 233, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(2423, 233, 'small_banners_0_link_text', 'Discover More'),
(2424, 233, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(2425, 233, 'small_banners_1_small_banner_image', '59'),
(2426, 233, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(2427, 233, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(2428, 233, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(2429, 233, 'small_banners_1_product_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(2430, 233, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(2431, 233, 'small_banners_1_link_text', 'Shop Now'),
(2432, 233, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(2433, 233, 'small_banners_2_small_banner_image', '58'),
(2434, 233, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(2435, 233, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(2436, 233, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(2437, 233, 'small_banners_2_product_link', 'http://localhost/EShop/index.php/product/new/'),
(2438, 233, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(2439, 233, 'small_banners_2_link_text', 'Discover more'),
(2440, 233, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(2441, 233, 'event_sale_0_banner_image', '149'),
(2442, 233, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(2443, 233, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(2444, 233, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(2445, 233, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(2446, 233, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(2447, 233, 'event_sale', '2'),
(2448, 233, '_event_sale', 'field_5f6ee491d8d23'),
(2449, 233, 'event_sale_1_banner_image', '153'),
(2450, 233, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(2451, 233, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(2452, 233, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(2453, 233, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(2454, 233, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(2455, 233, 'deal_banner', '151'),
(2456, 233, '_deal_banner', 'field_5f758555391dc'),
(2457, 233, 'deal_title', 'Beautiful Dress For Women'),
(2458, 233, '_deal_title', 'field_5f758575391dd'),
(2459, 233, 'deal_description', 'Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien.'),
(2460, 233, '_deal_description', 'field_5f75858d391de'),
(2461, 233, 'before_deal_price', 'Starting at'),
(2462, 233, '_before_deal_price', 'field_5f7585d8391e0'),
(2463, 233, 'deal_price', '999'),
(2464, 233, '_deal_price', 'field_5f7585a2391df'),
(2465, 233, 'deal_end_date', '20201002'),
(2466, 233, '_deal_end_date', 'field_5f75912c1ac6e'),
(2467, 234, 'banner_image1', '53'),
(2468, 234, '_banner_image1', 'field_5f6c7a05dda13'),
(2469, 234, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n<p class=\"text-white\">Maboriosam in a nesciung eget magnae dapibus disting tloctio in the find it pereri odiy maboriosm.</p>'),
(2470, 234, '_banner_text1', 'field_5f6c7b3bdda18'),
(2471, 234, 'product_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(2472, 234, '_product_link', 'field_5f6c7b74dda19'),
(2473, 234, 'small_banners', '3'),
(2474, 234, '_small_banners', 'field_5f6c7b90dda1a'),
(2475, 234, 'small_banners_0_small_banner_image', '60'),
(2476, 234, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(2477, 234, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(2478, 234, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(2479, 234, 'small_banners_0_product_link', 'http://localhost/EShop/index.php/product-category/clothing/accessories/'),
(2480, 234, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(2481, 234, 'small_banners_0_link_text', 'Discover More'),
(2482, 234, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(2483, 234, 'small_banners_1_small_banner_image', '59'),
(2484, 234, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(2485, 234, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(2486, 234, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(2487, 234, 'small_banners_1_product_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(2488, 234, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(2489, 234, 'small_banners_1_link_text', 'Shop Now'),
(2490, 234, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(2491, 234, 'small_banners_2_small_banner_image', '58'),
(2492, 234, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(2493, 234, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(2494, 234, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(2495, 234, 'small_banners_2_product_link', 'http://localhost/EShop/index.php/product/new/'),
(2496, 234, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(2497, 234, 'small_banners_2_link_text', 'Discover more'),
(2498, 234, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(2499, 234, 'event_sale_0_banner_image', '149'),
(2500, 234, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(2501, 234, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(2502, 234, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(2503, 234, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(2504, 234, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(2505, 234, 'event_sale', '2'),
(2506, 234, '_event_sale', 'field_5f6ee491d8d23'),
(2507, 234, 'event_sale_1_banner_image', '153'),
(2508, 234, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(2509, 234, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(2510, 234, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(2511, 234, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(2512, 234, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(2513, 234, 'deal_banner', '151'),
(2514, 234, '_deal_banner', 'field_5f758555391dc'),
(2515, 234, 'deal_title', 'Beautiful Dress For Women'),
(2516, 234, '_deal_title', 'field_5f758575391dd'),
(2517, 234, 'deal_description', 'Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien.'),
(2518, 234, '_deal_description', 'field_5f75858d391de'),
(2519, 234, 'before_deal_price', 'Starting at'),
(2520, 234, '_before_deal_price', 'field_5f7585d8391e0'),
(2521, 234, 'deal_price', '999'),
(2522, 234, '_deal_price', 'field_5f7585a2391df'),
(2523, 234, 'deal_end_date', '20201006'),
(2524, 234, '_deal_end_date', 'field_5f75912c1ac6e'),
(2525, 235, 'banner_image1', '53'),
(2526, 235, '_banner_image1', 'field_5f6c7a05dda13'),
(2527, 235, 'banner_text1', '<h1>UP TO 50% OFF</h1>\r\n<h1>Shirt For Men</h1>\r\n<p class=\"text-white\">Maboriosam in a nesciung eget magnae dapibus disting tloctio in the find it pereri odiy maboriosm.</p>'),
(2528, 235, '_banner_text1', 'field_5f6c7b3bdda18'),
(2529, 235, 'product_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(2530, 235, '_product_link', 'field_5f6c7b74dda19'),
(2531, 235, 'small_banners', '3'),
(2532, 235, '_small_banners', 'field_5f6c7b90dda1a'),
(2533, 235, 'small_banners_0_small_banner_image', '60'),
(2534, 235, '_small_banners_0_small_banner_image', 'field_5f6c7bbfdda1b'),
(2535, 235, 'small_banners_0_small_banner_text', 'Man\'s Collectons\r\n<h3>Summer Travel\r\nCollection</h3>'),
(2536, 235, '_small_banners_0_small_banner_text', 'field_5f6c7bfadda1d'),
(2537, 235, 'small_banners_0_product_link', 'http://localhost/EShop/index.php/product-category/clothing/accessories/'),
(2538, 235, '_small_banners_0_product_link', 'field_5f6c7c32dda1e'),
(2539, 235, 'small_banners_0_link_text', 'Discover More'),
(2540, 235, '_small_banners_0_link_text', 'field_5f6c817b42d11'),
(2541, 235, 'small_banners_1_small_banner_image', '59'),
(2542, 235, '_small_banners_1_small_banner_image', 'field_5f6c7bbfdda1b'),
(2543, 235, 'small_banners_1_small_banner_text', 'Bag Collectons\r\n<h3>Awesome Bag\r\n2020</h3>'),
(2544, 235, '_small_banners_1_small_banner_text', 'field_5f6c7bfadda1d'),
(2545, 235, 'small_banners_1_product_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(2546, 235, '_small_banners_1_product_link', 'field_5f6c7c32dda1e'),
(2547, 235, 'small_banners_1_link_text', 'Shop Now'),
(2548, 235, '_small_banners_1_link_text', 'field_5f6c817b42d11'),
(2549, 235, 'small_banners_2_small_banner_image', '58'),
(2550, 235, '_small_banners_2_small_banner_image', 'field_5f6c7bbfdda1b'),
(2551, 235, 'small_banners_2_small_banner_text', 'Flash Sale\r\n<h3>Mid Season\r\nUp To 40% Off</h3>'),
(2552, 235, '_small_banners_2_small_banner_text', 'field_5f6c7bfadda1d'),
(2553, 235, 'small_banners_2_product_link', 'http://localhost/EShop/index.php/product/new/'),
(2554, 235, '_small_banners_2_product_link', 'field_5f6c7c32dda1e'),
(2555, 235, 'small_banners_2_link_text', 'Discover more'),
(2556, 235, '_small_banners_2_link_text', 'field_5f6c817b42d11'),
(2557, 235, 'event_sale_0_banner_image', '149'),
(2558, 235, '_event_sale_0_banner_image', 'field_5f6ee4dbd8d24'),
(2559, 235, 'event_sale_0_banner_text', 'MAN\'S COLLECTONS\r\n<h3>MAN\'S ITEMS\r\nUP TO 50%</h3>'),
(2560, 235, '_event_sale_0_banner_text', 'field_5f6ee501d8d25'),
(2561, 235, 'event_sale_0_page_link', 'http://localhost/EShop/index.php/product-category/clothing/men/'),
(2562, 235, '_event_sale_0_page_link', 'field_5f6ee526d8d26'),
(2563, 235, 'event_sale', '2'),
(2564, 235, '_event_sale', 'field_5f6ee491d8d23'),
(2565, 235, 'event_sale_1_banner_image', '153'),
(2566, 235, '_event_sale_1_banner_image', 'field_5f6ee4dbd8d24'),
(2567, 235, 'event_sale_1_banner_text', 'SHOES WOMEN\r\n<h3>MID SEASON\r\nUP TO 70%</h3>'),
(2568, 235, '_event_sale_1_banner_text', 'field_5f6ee501d8d25'),
(2569, 235, 'event_sale_1_page_link', 'http://localhost/EShop/index.php/product-category/clothing/women/'),
(2570, 235, '_event_sale_1_page_link', 'field_5f6ee526d8d26'),
(2571, 235, 'deal_banner', '151'),
(2572, 235, '_deal_banner', 'field_5f758555391dc'),
(2573, 235, 'deal_title', 'Beautiful Dress For Women'),
(2574, 235, '_deal_title', 'field_5f758575391dd'),
(2575, 235, 'deal_description', 'Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien.'),
(2576, 235, '_deal_description', 'field_5f75858d391de'),
(2577, 235, 'before_deal_price', 'Starting at'),
(2578, 235, '_before_deal_price', 'field_5f7585d8391e0'),
(2579, 235, 'deal_price', '999'),
(2580, 235, '_deal_price', 'field_5f7585a2391df'),
(2581, 235, 'deal_end_date', '20201008'),
(2582, 235, '_deal_end_date', 'field_5f75912c1ac6e'),
(2583, 236, '_order_key', 'wc_order_MEOZgPIT8UgCO'),
(2584, 236, '_customer_user', '1'),
(2585, 236, '_payment_method', 'bacs'),
(2586, 236, '_payment_method_title', 'Direct bank transfer'),
(2587, 236, '_customer_ip_address', '::1'),
(2588, 236, '_customer_user_agent', 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Mobile Safari/537.36'),
(2589, 236, '_created_via', 'checkout'),
(2590, 236, '_cart_hash', '170f5f2f9c2960bb14a23863855d99a6'),
(2591, 236, '_billing_first_name', 'Abdul'),
(2592, 236, '_billing_last_name', 'zaffar'),
(2593, 236, '_billing_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(2594, 236, '_billing_city', 'vellore'),
(2595, 236, '_billing_state', 'TN'),
(2596, 236, '_billing_postcode', '632001'),
(2597, 236, '_billing_country', 'IN'),
(2598, 236, '_billing_email', 'abduljaffar94@gmail.com'),
(2599, 236, '_billing_phone', '9876543210'),
(2600, 236, '_shipping_first_name', 'Abdul'),
(2601, 236, '_shipping_last_name', 'zaffar'),
(2602, 236, '_shipping_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(2603, 236, '_shipping_city', 'vellore'),
(2604, 236, '_shipping_state', 'TN'),
(2605, 236, '_shipping_postcode', '632001'),
(2606, 236, '_shipping_country', 'IN'),
(2607, 236, '_order_currency', 'INR'),
(2608, 236, '_cart_discount', '0'),
(2609, 236, '_cart_discount_tax', '0'),
(2610, 236, '_order_shipping', '0'),
(2611, 236, '_order_shipping_tax', '0'),
(2612, 236, '_order_tax', '0'),
(2613, 236, '_order_total', '80.00'),
(2614, 236, '_order_version', '4.5.2'),
(2615, 236, '_prices_include_tax', 'no'),
(2616, 236, '_billing_address_index', 'Abdul zaffar  17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore  vellore TN 632001 IN abduljaffar94@gmail.com 9876543210'),
(2617, 236, '_shipping_address_index', 'Abdul zaffar  17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore  vellore TN 632001 IN'),
(2618, 236, 'is_vat_exempt', 'no'),
(2619, 236, '_recorded_sales', 'yes'),
(2620, 236, '_recorded_coupon_usage_counts', 'no'),
(2621, 236, '_order_stock_reduced', 'no'),
(2622, 237, '_order_key', 'wc_order_EiNG4rVFd8aie'),
(2623, 237, '_customer_user', '1'),
(2624, 237, '_payment_method', 'bacs'),
(2625, 237, '_payment_method_title', 'Direct bank transfer'),
(2626, 237, '_customer_ip_address', '::1'),
(2627, 237, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36'),
(2628, 237, '_created_via', 'checkout'),
(2629, 237, '_cart_hash', '72ad5f843100682a013dab79851636e2'),
(2630, 237, '_billing_first_name', 'Abdul'),
(2631, 237, '_billing_last_name', 'zaffar'),
(2632, 237, '_billing_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(2633, 237, '_billing_city', 'vellore'),
(2634, 237, '_billing_state', 'TN'),
(2635, 237, '_billing_postcode', '632001'),
(2636, 237, '_billing_country', 'IN'),
(2637, 237, '_billing_email', 'abduljaffar94@gmail.com'),
(2638, 237, '_billing_phone', '9876543210'),
(2639, 237, '_shipping_first_name', 'Abdul'),
(2640, 237, '_shipping_last_name', 'zaffar'),
(2641, 237, '_shipping_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(2642, 237, '_shipping_city', 'vellore'),
(2643, 237, '_shipping_state', 'TN'),
(2644, 237, '_shipping_postcode', '632001'),
(2645, 237, '_shipping_country', 'IN'),
(2646, 237, '_order_currency', 'INR'),
(2647, 237, '_cart_discount', '0'),
(2648, 237, '_cart_discount_tax', '0'),
(2649, 237, '_order_shipping', '0'),
(2650, 237, '_order_shipping_tax', '0'),
(2651, 237, '_order_tax', '0'),
(2652, 237, '_order_total', '74.00'),
(2653, 237, '_order_version', '4.5.2'),
(2654, 237, '_prices_include_tax', 'no'),
(2655, 237, '_billing_address_index', 'Abdul zaffar  17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore  vellore TN 632001 IN abduljaffar94@gmail.com 9876543210'),
(2656, 237, '_shipping_address_index', 'Abdul zaffar  17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore  vellore TN 632001 IN'),
(2657, 237, 'is_vat_exempt', 'no'),
(2658, 237, '_recorded_sales', 'yes'),
(2659, 237, '_recorded_coupon_usage_counts', 'yes'),
(2660, 237, '_order_stock_reduced', 'yes'),
(2661, 237, '_edit_lock', '1601983162:1'),
(2662, 237, '_edit_last', '1'),
(2663, 237, '_date_completed', '1601983058'),
(2664, 237, '_date_paid', '1601983058'),
(2665, 237, '_paid_date', '2020-10-06 11:17:38'),
(2666, 237, '_completed_date', '2020-10-06 11:17:38'),
(2667, 237, '_download_permissions_granted', 'yes'),
(2668, 236, '_edit_lock', '1601982956:1'),
(2669, 236, '_edit_last', '1'),
(2670, 239, '_order_key', 'wc_order_Mrb8e0v3XKSWe'),
(2671, 239, '_customer_user', '0'),
(2672, 239, '_order_currency', 'INR'),
(2673, 239, '_cart_discount', '0'),
(2674, 239, '_cart_discount_tax', '0'),
(2675, 239, '_order_shipping', '0'),
(2676, 239, '_order_shipping_tax', '0'),
(2677, 239, '_order_tax', '0'),
(2678, 239, '_order_total', '0'),
(2679, 239, '_order_version', '4.5.2'),
(2680, 239, '_prices_include_tax', 'no'),
(2681, 239, '_billing_address_index', '          '),
(2682, 239, '_shipping_address_index', '        '),
(2683, 240, '_order_key', 'wc_order_lwqwJDH2pkTGp'),
(2684, 240, '_customer_user', '0'),
(2685, 240, '_order_currency', 'INR'),
(2686, 240, '_cart_discount', '0'),
(2687, 240, '_cart_discount_tax', '0'),
(2688, 240, '_order_shipping', '0'),
(2689, 240, '_order_shipping_tax', '0'),
(2690, 240, '_order_tax', '0'),
(2691, 240, '_order_total', '0'),
(2692, 240, '_order_version', '4.5.2'),
(2693, 240, '_prices_include_tax', 'no'),
(2694, 240, '_billing_address_index', '          '),
(2695, 240, '_shipping_address_index', '        '),
(2696, 241, '_order_key', 'wc_order_T4XAMzOlxT0K3'),
(2697, 241, '_customer_user', '1'),
(2698, 241, '_payment_method', 'cod'),
(2699, 241, '_payment_method_title', 'Cash on delivery'),
(2700, 241, '_customer_ip_address', '::1'),
(2701, 241, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36'),
(2702, 241, '_created_via', 'checkout'),
(2703, 241, '_cart_hash', '208f5ec6707835e34fdd0fda8da91f5d'),
(2704, 241, '_billing_first_name', 'Abdul'),
(2705, 241, '_billing_last_name', 'zaffar'),
(2706, 241, '_billing_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(2707, 241, '_billing_city', 'vellore'),
(2708, 241, '_billing_state', 'TN'),
(2709, 241, '_billing_postcode', '632001'),
(2710, 241, '_billing_country', 'IN'),
(2711, 241, '_billing_email', 'abduljaffar94@gmail.com'),
(2712, 241, '_billing_phone', '9876543210'),
(2713, 241, '_shipping_first_name', 'Abdul'),
(2714, 241, '_shipping_last_name', 'zaffar'),
(2715, 241, '_shipping_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(2716, 241, '_shipping_city', 'vellore'),
(2717, 241, '_shipping_state', 'TN'),
(2718, 241, '_shipping_postcode', '632001'),
(2719, 241, '_shipping_country', 'IN'),
(2720, 241, '_order_currency', 'INR'),
(2721, 241, '_cart_discount', '0'),
(2722, 241, '_cart_discount_tax', '0'),
(2723, 241, '_order_shipping', '10'),
(2724, 241, '_order_shipping_tax', '0'),
(2725, 241, '_order_tax', '0'),
(2726, 241, '_order_total', '130.20'),
(2727, 241, '_order_version', '4.5.2'),
(2728, 241, '_prices_include_tax', 'no'),
(2729, 241, '_billing_address_index', 'Abdul zaffar  17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore  vellore TN 632001 IN abduljaffar94@gmail.com 9876543210'),
(2730, 241, '_shipping_address_index', 'Abdul zaffar  17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore  vellore TN 632001 IN'),
(2731, 241, 'is_vat_exempt', 'no'),
(2732, 241, '_add_field', 'Admin Change'),
(2733, 241, '_download_permissions_granted', 'yes'),
(2734, 241, '_recorded_sales', 'yes'),
(2735, 241, '_recorded_coupon_usage_counts', 'yes'),
(2736, 241, '_order_stock_reduced', 'yes'),
(2737, 241, '_edit_lock', '1602856548:1'),
(2738, 241, '_edit_last', '1'),
(2739, 212, '_edit_lock', '1603087229:1'),
(2740, 242, '_order_key', 'wc_order_ojkOUeUs1V76t'),
(2741, 242, '_customer_user', '1'),
(2742, 242, '_payment_method', 'cod'),
(2743, 242, '_payment_method_title', 'Cash on delivery'),
(2744, 242, '_customer_ip_address', '::1'),
(2745, 242, '_customer_user_agent', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36'),
(2746, 242, '_created_via', 'checkout'),
(2747, 242, '_cart_hash', 'e25224841684297b5050224f27835168'),
(2748, 242, '_billing_first_name', 'Abdul'),
(2749, 242, '_billing_last_name', 'zaffar'),
(2750, 242, '_billing_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(2751, 242, '_billing_city', 'vellore'),
(2752, 242, '_billing_state', 'TN'),
(2753, 242, '_billing_postcode', '632001'),
(2754, 242, '_billing_country', 'IN'),
(2755, 242, '_billing_email', 'abduljaffar94@gmail.com'),
(2756, 242, '_billing_phone', '9876543210'),
(2757, 242, '_shipping_first_name', 'Abdul'),
(2758, 242, '_shipping_last_name', 'zaffar'),
(2759, 242, '_shipping_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(2760, 242, '_shipping_city', 'vellore'),
(2761, 242, '_shipping_state', 'TN'),
(2762, 242, '_shipping_postcode', '632001'),
(2763, 242, '_shipping_country', 'IN'),
(2764, 242, '_order_currency', 'INR'),
(2765, 242, '_cart_discount', '0'),
(2766, 242, '_cart_discount_tax', '0'),
(2767, 242, '_order_shipping', '10.00'),
(2768, 242, '_order_shipping_tax', '0'),
(2769, 242, '_order_tax', '0'),
(2770, 242, '_order_total', '114.45'),
(2771, 242, '_order_version', '4.5.2'),
(2772, 242, '_prices_include_tax', 'no'),
(2773, 242, '_billing_address_index', 'Abdul zaffar  17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore  vellore TN 632001 IN abduljaffar94@gmail.com 9876543210'),
(2774, 242, '_shipping_address_index', 'Abdul zaffar  17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore  vellore TN 632001 IN'),
(2775, 242, 'is_vat_exempt', 'no'),
(2776, 242, 'Delivery Date', '20 October, 2020'),
(2777, 242, '_orddd_lite_timestamp', '1603152000'),
(2778, 242, '_add_field', 'add'),
(2779, 242, '_download_permissions_granted', 'yes'),
(2780, 242, '_recorded_sales', 'yes'),
(2781, 242, '_recorded_coupon_usage_counts', 'yes'),
(2782, 242, '_order_stock_reduced', 'yes'),
(2783, 242, '_edit_lock', '1603092277:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-24 06:05:37', '2020-09-24 06:05:37', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-24 13:49:12', '2020-09-24 13:49:12', '', 0, 'http://localhost/EShop/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-24 06:05:37', '2020-09-24 06:05:37', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/EShop/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-09-24 06:05:37', '2020-09-24 06:05:37', '', 0, 'http://localhost/EShop/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-24 06:05:37', '2020-09-24 06:05:37', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/EShop.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-24 06:05:37', '2020-09-24 06:05:37', '', 0, 'http://localhost/EShop/?page_id=3', 0, 'page', '', 0),
(5, 1, '2020-09-24 07:53:04', '2020-09-24 07:53:04', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2020-09-24 07:53:04', '2020-09-24 07:53:04', '', 0, 'http://localhost/EShop/wp-content/uploads/2020/09/favicon.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-09-24 07:53:28', '2020-09-24 07:53:28', 'http://localhost/EShop/wp-content/uploads/2020/09/cropped-favicon.png', 'cropped-favicon.png', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-png', '', '', '2020-09-24 07:53:28', '2020-09-24 07:53:28', '', 0, 'http://localhost/EShop/wp-content/uploads/2020/09/cropped-favicon.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2020-09-24 07:54:08', '2020-09-24 07:54:08', 'http://localhost/EShop/wp-content/uploads/2020/09/cropped-favicon-1.png', 'cropped-favicon-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-1-png', '', '', '2020-09-24 07:54:08', '2020-09-24 07:54:08', '', 0, 'http://localhost/EShop/wp-content/uploads/2020/09/cropped-favicon-1.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2020-09-24 07:54:35', '2020-09-24 07:54:35', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-09-24 07:54:35', '2020-09-24 07:54:35', '', 0, 'http://localhost/EShop/wp-content/uploads/2020/09/logo.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2020-09-24 07:54:58', '2020-09-24 07:54:58', 'http://localhost/EShop/wp-content/uploads/2020/09/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2020-09-24 07:54:58', '2020-09-24 07:54:58', '', 0, 'http://localhost/EShop/wp-content/uploads/2020/09/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2020-09-24 08:05:29', '2020-09-24 08:05:29', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-09-24 08:05:29', '2020-09-24 08:05:29', '', 0, 'http://localhost/EShop/wp-content/uploads/2020/09/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2020-09-24 08:09:04', '2020-09-24 08:09:04', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-09-26 11:05:21', '2020-09-26 11:05:21', '', 0, 'http://localhost/EShop/index.php/shop/', 0, 'page', '', 0),
(15, 1, '2020-09-24 08:09:04', '2020-09-24 08:09:04', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-09-24 08:09:04', '2020-09-24 08:09:04', '', 0, 'http://localhost/EShop/index.php/cart/', 0, 'page', '', 0),
(16, 1, '2020-09-24 08:09:04', '2020-09-24 08:09:04', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-09-24 08:09:04', '2020-09-24 08:09:04', '', 0, 'http://localhost/EShop/index.php/checkout/', 0, 'page', '', 0),
(17, 1, '2020-09-24 08:09:05', '2020-09-24 08:09:05', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-09-24 08:09:05', '2020-09-24 08:09:05', '', 0, 'http://localhost/EShop/index.php/my-account/', 0, 'page', '', 0),
(18, 1, '2020-09-24 08:13:23', '2020-09-24 08:13:23', '', 'New', '', 'publish', 'open', 'closed', '', 'new', '', '', '2020-09-25 13:44:10', '2020-09-25 13:44:10', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=18', 0, 'product', '', 0),
(19, 1, '2020-09-24 08:15:13', '2020-09-24 08:15:13', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'publish', 'closed', 'closed', '', 'homepage', '', '', '2020-10-05 04:46:11', '2020-10-05 04:46:11', '', 0, 'http://localhost/EShop/index.php/homepage/', 0, 'page', '', 0),
(20, 1, '2020-09-24 08:15:13', '2020-09-24 08:15:13', '', 'other-small', '', 'inherit', 'open', 'closed', '', 'other-small', '', '', '2020-09-24 08:15:13', '2020-09-24 08:15:13', '', 19, 'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2020-09-24 08:15:17', '2020-09-24 08:15:17', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\n			<div class=\"wp-block-cover\" style=\"background-image:url(http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg)\"><div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n			<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n			<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\n			<!-- /wp:paragraph -->\n\n			<!-- wp:button {\"align\":\"center\"} -->\n			<div class=\"wp-block-button aligncenter\"><a href=\"http://localhost/EShop/index.php/shop/\" class=\"wp-block-button__link\">Go shopping</a></div>\n			<!-- /wp:button --></div></div>\n			<!-- /wp:cover -->\n		<!-- wp:heading {\"align\":\"center\"} -->\n		<h2 style=\"text-align:center\">New Products</h2>\n		<!-- /wp:heading -->\n\n		<!-- wp:woocommerce/product-new /--> <!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" class=\"wp-image-20\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" class=\"wp-image-20\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text --><!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\n			<div class=\"wp-block-media-text alignwide has-media-on-the-right\"\"><figure class=\"wp-block-media-text__media\"><img src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" class=\"wp-image-20\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n			<p class=\"has-large-font-size\"></p>\n			<!-- /wp:paragraph --></div></div>\n			<!-- /wp:media-text -->\n\n		<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-24 08:15:17', '2020-09-24 08:15:17', '', 19, 'http://localhost/EShop/index.php/2020/09/24/19-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-09-24 09:11:20', '2020-09-24 09:11:20', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-10-01 12:55:58', '2020-10-01 12:55:58', '', 0, 'http://localhost/EShop/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2020-09-24 09:11:20', '2020-09-24 09:11:20', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2020-10-01 12:55:59', '2020-10-01 12:55:59', '', 0, 'http://localhost/EShop/?p=24', 5, 'nav_menu_item', '', 0),
(25, 1, '2020-09-24 09:11:21', '2020-09-24 09:11:21', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2020-10-01 12:56:00', '2020-10-01 12:56:00', '', 0, 'http://localhost/EShop/?p=25', 7, 'nav_menu_item', '', 0),
(28, 1, '2020-09-24 09:11:23', '2020-09-24 09:11:23', '', 'Shop <i class=\"ti-angle-down\"></i>', '', 'publish', 'closed', 'closed', '', '28', '', '', '2020-10-01 12:55:59', '2020-10-01 12:55:59', '', 0, 'http://localhost/EShop/?p=28', 4, 'nav_menu_item', '', 0),
(29, 1, '2020-09-24 09:21:48', '2020-09-24 09:21:48', '', '<i class=\"ti-user\"></i> My account', '', 'publish', 'closed', 'closed', '', '29', '', '', '2020-10-01 12:54:44', '2020-10-01 12:54:44', '', 0, 'http://localhost/EShop/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2020-09-24 09:21:47', '2020-09-24 09:21:47', '', '<i class=\"ti-location-pin\"></i> Store', '', 'publish', 'closed', 'closed', '', 'store', '', '', '2020-10-01 12:54:43', '2020-10-01 12:54:43', '', 0, 'http://localhost/EShop/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2020-09-24 09:21:47', '2020-09-24 09:21:47', '', '<i class=\"ti-alarm-clock\"></i> Daily Deals', '', 'publish', 'closed', 'closed', '', 'daily-deals', '', '', '2020-10-01 12:54:44', '2020-10-01 12:54:44', '', 0, 'http://localhost/EShop/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2020-09-24 09:21:48', '2020-09-24 09:21:48', '', '<i class=\"ti-power-off\"></i> Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2020-10-01 12:54:44', '2020-10-01 12:54:44', '', 0, 'http://localhost/EShop/?p=32', 4, 'nav_menu_item', '', 0),
(34, 1, '2020-09-24 10:00:40', '2020-09-24 10:00:40', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"theme-general-settings\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Social Links', 'social-links', 'publish', 'closed', 'closed', '', 'group_5f6c6d58d4fd1', '', '', '2020-09-28 08:13:50', '2020-09-28 08:13:50', '', 0, 'http://localhost/EShop/?post_type=acf-field-group&#038;p=34', 0, 'acf-field-group', '', 0),
(35, 1, '2020-09-24 10:00:41', '2020-09-24 10:00:41', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Phone Number', 'phone_number', 'publish', 'closed', 'closed', '', 'field_5f6c6d738098d', '', '', '2020-09-24 10:03:31', '2020-09-24 10:03:31', '', 34, 'http://localhost/EShop/?post_type=acf-field&#038;p=35', 0, 'acf-field', '', 0),
(36, 1, '2020-09-24 10:00:41', '2020-09-24 10:00:41', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'email ID', 'email_id', 'publish', 'closed', 'closed', '', 'field_5f6c6db08098e', '', '', '2020-09-24 10:00:41', '2020-09-24 10:00:41', '', 34, 'http://localhost/EShop/?post_type=acf-field&p=36', 1, 'acf-field', '', 0),
(37, 1, '2020-09-24 10:00:41', '2020-09-24 10:00:41', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Facebook page link', 'facebook_page_link', 'publish', 'closed', 'closed', '', 'field_5f6c6dcb8098f', '', '', '2020-09-24 10:00:41', '2020-09-24 10:00:41', '', 34, 'http://localhost/EShop/?post_type=acf-field&p=37', 2, 'acf-field', '', 0),
(38, 1, '2020-09-24 10:00:41', '2020-09-24 10:00:41', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Twitter Link', 'twitter_link', 'publish', 'closed', 'closed', '', 'field_5f6c6dfe80990', '', '', '2020-09-24 10:00:41', '2020-09-24 10:00:41', '', 34, 'http://localhost/EShop/?post_type=acf-field&p=38', 3, 'acf-field', '', 0),
(39, 1, '2020-09-24 10:00:41', '2020-09-24 10:00:41', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Youtube Channel Link', 'youtube_channel_link', 'publish', 'closed', 'closed', '', 'field_5f6c6e2180991', '', '', '2020-09-24 10:00:41', '2020-09-24 10:00:41', '', 34, 'http://localhost/EShop/?post_type=acf-field&p=39', 4, 'acf-field', '', 0),
(40, 1, '2020-09-24 10:00:41', '2020-09-24 10:00:41', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Insta Page link', 'insta_page_link', 'publish', 'closed', 'closed', '', 'field_5f6c6e3180992', '', '', '2020-09-24 10:00:41', '2020-09-24 10:00:41', '', 34, 'http://localhost/EShop/?post_type=acf-field&p=40', 5, 'acf-field', '', 0),
(45, 1, '2020-09-24 11:00:26', '2020-09-24 11:00:26', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Front Page 1', 'front-page-1', 'publish', 'closed', 'closed', '', 'group_5f6c79d4ef3c3', '', '', '2020-10-01 08:21:16', '2020-10-01 08:21:16', '', 0, 'http://localhost/EShop/?post_type=acf-field-group&#038;p=45', 0, 'acf-field-group', '', 0),
(46, 1, '2020-09-24 11:00:26', '2020-09-24 11:00:26', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner image1', 'banner_image1', 'publish', 'closed', 'closed', '', 'field_5f6c7a05dda13', '', '', '2020-10-01 07:35:34', '2020-10-01 07:35:34', '', 45, 'http://localhost/EShop/?post_type=acf-field&#038;p=46', 1, 'acf-field', '', 0),
(47, 1, '2020-09-24 11:00:26', '2020-09-24 11:00:26', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Banner Text1', 'banner_text1', 'publish', 'closed', 'closed', '', 'field_5f6c7b3bdda18', '', '', '2020-10-01 07:35:34', '2020-10-01 07:35:34', '', 45, 'http://localhost/EShop/?post_type=acf-field&#038;p=47', 2, 'acf-field', '', 0),
(48, 1, '2020-09-24 11:00:27', '2020-09-24 11:00:27', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'product link', 'product_link', 'publish', 'closed', 'closed', '', 'field_5f6c7b74dda19', '', '', '2020-10-01 07:35:34', '2020-10-01 07:35:34', '', 45, 'http://localhost/EShop/?post_type=acf-field&#038;p=48', 3, 'acf-field', '', 0),
(49, 1, '2020-09-24 11:00:27', '2020-09-24 11:00:27', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:3;s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Small banners', 'small_banners', 'publish', 'closed', 'closed', '', 'field_5f6c7b90dda1a', '', '', '2020-10-01 07:35:34', '2020-10-01 07:35:34', '', 45, 'http://localhost/EShop/?post_type=acf-field&#038;p=49', 4, 'acf-field', '', 0),
(50, 1, '2020-09-24 11:00:28', '2020-09-24 11:00:28', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Small banner Image', 'small_banner_image', 'publish', 'closed', 'closed', '', 'field_5f6c7bbfdda1b', '', '', '2020-09-24 12:05:20', '2020-09-24 12:05:20', '', 49, 'http://localhost/EShop/?post_type=acf-field&#038;p=50', 0, 'acf-field', '', 0),
(51, 1, '2020-09-24 11:00:28', '2020-09-24 11:00:28', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Small Banner Text', 'small_banner_text', 'publish', 'closed', 'closed', '', 'field_5f6c7bfadda1d', '', '', '2020-09-24 11:00:28', '2020-09-24 11:00:28', '', 49, 'http://localhost/EShop/?post_type=acf-field&p=51', 1, 'acf-field', '', 0),
(52, 1, '2020-09-24 11:00:28', '2020-09-24 11:00:28', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Product Link', 'product_link', 'publish', 'closed', 'closed', '', 'field_5f6c7c32dda1e', '', '', '2020-09-24 11:00:28', '2020-09-24 11:00:28', '', 49, 'http://localhost/EShop/?post_type=acf-field&p=52', 2, 'acf-field', '', 0),
(53, 1, '2020-09-24 11:03:37', '2020-09-24 11:03:37', '', 'banner1', '', 'inherit', 'open', 'closed', '', 'banner1', '', '', '2020-09-24 11:03:37', '2020-09-24 11:03:37', '', 19, 'http://localhost/EShop/wp-content/uploads/2020/09/banner1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2020-09-24 11:04:33', '2020-09-24 11:04:33', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-24 11:04:33', '2020-09-24 11:04:33', '', 19, 'http://localhost/EShop/index.php/2020/09/24/19-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2020-09-24 11:12:23', '2020-09-24 11:12:23', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-24 11:12:23', '2020-09-24 11:12:23', '', 19, 'http://localhost/EShop/index.php/2020/09/24/19-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2020-09-24 11:13:07', '2020-09-24 11:13:07', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-24 11:13:07', '2020-09-24 11:13:07', '', 19, 'http://localhost/EShop/index.php/2020/09/24/19-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-09-24 11:20:58', '2020-09-24 11:20:58', '', 'small_banner3', '', 'inherit', 'open', 'closed', '', 'small_banner3', '', '', '2020-09-24 11:20:58', '2020-09-24 11:20:58', '', 19, 'http://localhost/EShop/wp-content/uploads/2020/09/small_banner3.jpeg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2020-09-24 11:21:01', '2020-09-24 11:21:01', '', 'small_banner2', '', 'inherit', 'open', 'closed', '', 'small_banner2', '', '', '2020-09-24 11:21:01', '2020-09-24 11:21:01', '', 19, 'http://localhost/EShop/wp-content/uploads/2020/09/small_banner2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2020-09-24 11:21:03', '2020-09-24 11:21:03', '', 'small_banner1', '', 'inherit', 'open', 'closed', '', 'small_banner1', '', '', '2020-09-24 11:21:03', '2020-09-24 11:21:03', '', 19, 'http://localhost/EShop/wp-content/uploads/2020/09/small_banner1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2020-09-24 11:23:26', '2020-09-24 11:23:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Link Text', 'link_text', 'publish', 'closed', 'closed', '', 'field_5f6c817b42d11', '', '', '2020-09-24 11:23:26', '2020-09-24 11:23:26', '', 49, 'http://localhost/EShop/?post_type=acf-field&p=61', 3, 'acf-field', '', 0),
(62, 1, '2020-09-24 11:25:44', '2020-09-24 11:25:44', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-24 11:25:44', '2020-09-24 11:25:44', '', 19, 'http://localhost/EShop/index.php/2020/09/24/19-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-09-24 12:28:29', '2020-09-24 12:28:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:11:\"the_content\";}s:11:\"description\";s:0:\"\";}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'group_5f6c904e9336c', '', '', '2020-09-24 12:29:15', '2020-09-24 12:29:15', '', 0, 'http://localhost/EShop/?post_type=acf-field-group&#038;p=63', 0, 'acf-field-group', '', 0),
(64, 1, '2020-09-24 12:28:29', '2020-09-24 12:28:29', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Footer Logo', 'footer_logo', 'publish', 'closed', 'closed', '', 'field_5f6c90524d7d1', '', '', '2020-09-24 12:28:29', '2020-09-24 12:28:29', '', 63, 'http://localhost/EShop/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(65, 1, '2020-09-24 12:28:29', '2020-09-24 12:28:29', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Footer Description', 'footer_description', 'publish', 'closed', 'closed', '', 'field_5f6c90804d7d2', '', '', '2020-09-24 12:29:15', '2020-09-24 12:29:15', '', 63, 'http://localhost/EShop/?post_type=acf-field&#038;p=65', 1, 'acf-field', '', 0),
(66, 1, '2020-09-24 12:30:34', '2020-09-24 12:30:34', '', 'logo2', '', 'inherit', 'open', 'closed', '', 'logo2', '', '', '2020-09-24 12:30:34', '2020-09-24 12:30:34', '', 0, 'http://localhost/EShop/wp-content/uploads/2020/09/logo2.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2020-09-24 13:49:12', '2020-09-24 13:49:12', '<!-- wp:paragraph -->\r\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\r\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-09-24 13:49:12', '2020-09-24 13:49:12', '', 1, 'http://localhost/EShop/index.php/2020/09/24/1-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2020-09-24 13:58:25', '2020-09-24 13:58:25', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'V-Neck T-Shirt', 'This is a variable product.', 'publish', 'open', 'closed', '', 'v-neck-t-shirt', '', '', '2020-09-25 13:36:32', '2020-09-25 13:36:32', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-44/', 0, 'product', '', 0),
(70, 1, '2020-09-24 13:58:32', '2020-09-24 13:58:32', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie', 'This is a variable product.', 'publish', 'open', 'closed', '', 'hoodie', '', '', '2020-09-25 13:43:45', '2020-09-25 13:43:45', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-45/', 0, 'product', '', 0),
(71, 1, '2020-09-24 13:58:37', '2020-09-24 13:58:37', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-logo', '', '', '2020-09-25 13:43:03', '2020-09-25 13:43:03', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-46/', 0, 'product', '', 0),
(72, 1, '2020-09-24 13:58:39', '2020-09-24 13:58:39', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt', '', '', '2020-09-25 13:37:23', '2020-09-25 13:37:23', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-47/', 0, 'product', '', 0),
(73, 1, '2020-09-24 13:58:42', '2020-09-24 13:58:42', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie', '', '', '2020-09-24 14:01:01', '2020-09-24 14:01:01', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-48/', 0, 'product', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(74, 1, '2020-09-24 13:58:45', '2020-09-24 13:58:45', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Belt', 'This is a simple product.', 'publish', 'open', 'closed', '', 'belt', '', '', '2020-09-24 14:01:08', '2020-09-24 14:01:08', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-58/', 0, 'product', '', 0),
(75, 1, '2020-09-24 13:58:49', '2020-09-24 13:58:49', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Cap', 'This is a simple product.', 'publish', 'open', 'closed', '', 'cap', '', '', '2020-09-24 14:01:21', '2020-09-24 14:01:21', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-60/', 0, 'product', '', 0),
(76, 1, '2020-09-24 13:58:52', '2020-09-24 13:58:52', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Sunglasses', 'This is a simple product.', 'publish', 'open', 'closed', '', 'sunglasses', '', '', '2020-09-24 14:01:29', '2020-09-24 14:01:29', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-62/', 0, 'product', '', 0),
(77, 1, '2020-09-24 13:58:58', '2020-09-24 13:58:58', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Pocket', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-pocket', '', '', '2020-09-25 13:41:12', '2020-09-25 13:41:12', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-64/', 0, 'product', '', 0),
(78, 1, '2020-09-24 13:59:04', '2020-09-24 13:59:04', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Hoodie with Zipper', 'This is a simple product.', 'publish', 'open', 'closed', '', 'hoodie-with-zipper', '', '', '2020-09-25 13:39:33', '2020-09-25 13:39:33', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-66/', 0, 'product', '', 0),
(79, 1, '2020-09-24 13:59:07', '2020-09-24 13:59:07', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Long Sleeve Tee', 'This is a simple product.', 'publish', 'open', 'closed', '', 'long-sleeve-tee', '', '', '2020-09-25 13:35:40', '2020-09-25 13:35:40', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-68/', 0, 'product', '', 0),
(80, 1, '2020-09-24 13:59:10', '2020-09-24 13:59:10', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Polo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'polo', '', '', '2020-09-25 13:34:49', '2020-09-25 13:34:49', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-70/', 0, 'product', '', 0),
(81, 1, '2020-09-24 13:59:12', '2020-09-24 13:59:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Album', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'album', '', '', '2020-09-24 14:02:18', '2020-09-24 14:02:18', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-73/', 0, 'product', '', 0),
(82, 1, '2020-09-24 13:59:15', '2020-09-24 13:59:15', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sagittis orci ac odio dictum tincidunt. Donec ut metus leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed luctus, dui eu sagittis sodales, nulla nibh sagittis augue, vel porttitor diam enim non metus. Vestibulum aliquam augue neque. Phasellus tincidunt odio eget ullamcorper efficitur. Cras placerat ut turpis pellentesque vulputate. Nam sed consequat tortor. Curabitur finibus sapien dolor. Ut eleifend tellus nec erat pulvinar dignissim. Nam non arcu purus. Vivamus et massa massa.', 'Single', 'This is a simple, virtual product.', 'publish', 'open', 'closed', '', 'single', '', '', '2020-09-24 14:02:26', '2020-09-24 14:02:26', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-75/', 0, 'product', '', 0),
(83, 1, '2020-09-24 13:59:19', '2020-09-24 13:59:19', '', 'V-Neck T-Shirt - Red', 'Color: Red', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-red', '', '', '2020-09-24 14:02:31', '2020-09-24 14:02:31', '', 69, 'http://localhost/EShop/index.php/product/import-placeholder-for-76/', 0, 'product_variation', '', 0),
(84, 1, '2020-09-24 13:59:23', '2020-09-24 13:59:23', '', 'V-Neck T-Shirt - Green', 'Color: Green', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-green', '', '', '2020-09-24 14:02:33', '2020-09-24 14:02:33', '', 69, 'http://localhost/EShop/index.php/product/import-placeholder-for-77/', 0, 'product_variation', '', 0),
(85, 1, '2020-09-24 13:59:27', '2020-09-24 13:59:27', '', 'V-Neck T-Shirt - Blue', 'Color: Blue', 'publish', 'closed', 'closed', '', 'v-neck-t-shirt-blue', '', '', '2020-09-24 14:02:39', '2020-09-24 14:02:39', '', 69, 'http://localhost/EShop/index.php/product/import-placeholder-for-78/', 0, 'product_variation', '', 0),
(86, 1, '2020-09-24 13:59:30', '2020-09-24 13:59:30', '', 'Hoodie - Red, No', 'Color: Red, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-red-no', '', '', '2020-09-24 14:02:41', '2020-09-24 14:02:41', '', 70, 'http://localhost/EShop/index.php/product/import-placeholder-for-79/', 1, 'product_variation', '', 0),
(87, 1, '2020-09-24 13:59:36', '2020-09-24 13:59:36', '', 'Hoodie - Green, No', 'Color: Green, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-green-no', '', '', '2020-09-24 14:02:44', '2020-09-24 14:02:44', '', 70, 'http://localhost/EShop/index.php/product/import-placeholder-for-80/', 2, 'product_variation', '', 0),
(88, 1, '2020-09-24 13:59:38', '2020-09-24 13:59:38', '', 'Hoodie - Blue, No', 'Color: Blue, Logo: No', 'publish', 'closed', 'closed', '', 'hoodie-blue-no', '', '', '2020-09-24 14:02:45', '2020-09-24 14:02:45', '', 70, 'http://localhost/EShop/index.php/product/import-placeholder-for-81/', 3, 'product_variation', '', 0),
(89, 1, '2020-09-24 13:59:41', '2020-09-24 13:59:41', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'T-Shirt with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 't-shirt-with-logo', '', '', '2020-09-25 13:33:06', '2020-09-25 13:33:06', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-83/', 0, 'product', '', 0),
(90, 1, '2020-09-24 13:59:44', '2020-09-24 13:59:44', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Beanie with Logo', 'This is a simple product.', 'publish', 'open', 'closed', '', 'beanie-with-logo', '', '', '2020-09-24 14:02:58', '2020-09-24 14:02:58', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-85/', 0, 'product', '', 0),
(91, 1, '2020-09-24 13:59:46', '2020-09-24 13:59:46', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Logo Collection', 'This is a grouped product.', 'publish', 'open', 'closed', '', 'logo-collection', '', '', '2020-09-25 13:44:37', '2020-09-25 13:44:37', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-87/', 0, 'product', '', 0),
(92, 1, '2020-09-24 13:59:49', '2020-09-24 13:59:49', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'WordPress Pennant', 'This is an external product.', 'publish', 'open', 'closed', '', 'wordpress-pennant', '', '', '2020-09-25 13:46:00', '2020-09-25 13:46:00', '', 0, 'http://localhost/EShop/index.php/product/import-placeholder-for-89/', 0, 'product', '', 0),
(93, 1, '2020-09-24 13:59:52', '2020-09-24 13:59:52', '', 'Hoodie - Blue, Yes', 'Color: Blue, Logo: Yes', 'publish', 'closed', 'closed', '', 'hoodie-blue-yes', '', '', '2020-09-24 14:03:23', '2020-09-24 14:03:23', '', 70, 'http://localhost/EShop/index.php/product/import-placeholder-for-90/', 0, 'product_variation', '', 0),
(94, 1, '2020-09-24 13:59:59', '2020-09-24 13:59:59', '', 'vneck-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'vneck-tee-2-jpg', '', '', '2020-09-24 13:59:59', '2020-09-24 13:59:59', '', 69, 'http://localhost/EShop/wp-content/uploads/2020/09/vneck-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2020-09-24 14:00:05', '2020-09-24 14:00:05', '', 'vnech-tee-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-green-1-jpg', '', '', '2020-09-24 14:00:05', '2020-09-24 14:00:05', '', 69, 'http://localhost/EShop/wp-content/uploads/2020/09/vnech-tee-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2020-09-24 14:00:10', '2020-09-24 14:00:10', '', 'vnech-tee-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'vnech-tee-blue-1-jpg', '', '', '2020-09-24 14:00:10', '2020-09-24 14:00:10', '', 69, 'http://localhost/EShop/wp-content/uploads/2020/09/vnech-tee-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2020-09-24 14:00:25', '2020-09-24 14:00:25', '', 'hoodie-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-2-jpg', '', '', '2020-09-24 14:00:25', '2020-09-24 14:00:25', '', 70, 'http://localhost/EShop/wp-content/uploads/2020/09/hoodie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2020-09-24 14:00:29', '2020-09-24 14:00:29', '', 'hoodie-blue-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-blue-1-jpg', '', '', '2020-09-24 14:00:29', '2020-09-24 14:00:29', '', 70, 'http://localhost/EShop/wp-content/uploads/2020/09/hoodie-blue-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2020-09-24 14:00:33', '2020-09-24 14:00:33', '', 'hoodie-green-1.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-green-1-jpg', '', '', '2020-09-24 14:00:33', '2020-09-24 14:00:33', '', 70, 'http://localhost/EShop/wp-content/uploads/2020/09/hoodie-green-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2020-09-24 14:00:38', '2020-09-24 14:00:38', '', 'hoodie-with-logo-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-2-jpg', '', '', '2020-09-24 14:00:38', '2020-09-24 14:00:38', '', 70, 'http://localhost/EShop/wp-content/uploads/2020/09/hoodie-with-logo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2020-09-24 14:00:50', '2020-09-24 14:00:50', '', 'tshirt-2.jpg', '', 'inherit', 'open', 'closed', '', 'tshirt-2-jpg', '', '', '2020-09-24 14:00:50', '2020-09-24 14:00:50', '', 72, 'http://localhost/EShop/wp-content/uploads/2020/09/tshirt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2020-09-24 14:00:58', '2020-09-24 14:00:58', '', 'beanie-2.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-2-jpg', '', '', '2020-09-24 14:00:58', '2020-09-24 14:00:58', '', 73, 'http://localhost/EShop/wp-content/uploads/2020/09/beanie-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2020-09-24 14:01:05', '2020-09-24 14:01:05', '', 'belt-2.jpg', '', 'inherit', 'open', 'closed', '', 'belt-2-jpg', '', '', '2020-09-24 14:01:05', '2020-09-24 14:01:05', '', 74, 'http://localhost/EShop/wp-content/uploads/2020/09/belt-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2020-09-24 14:01:18', '2020-09-24 14:01:18', '', 'cap-2.jpg', '', 'inherit', 'open', 'closed', '', 'cap-2-jpg', '', '', '2020-09-24 14:01:18', '2020-09-24 14:01:18', '', 75, 'http://localhost/EShop/wp-content/uploads/2020/09/cap-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2020-09-24 14:01:26', '2020-09-24 14:01:26', '', 'sunglasses-2.jpg', '', 'inherit', 'open', 'closed', '', 'sunglasses-2-jpg', '', '', '2020-09-24 14:01:26', '2020-09-24 14:01:26', '', 76, 'http://localhost/EShop/wp-content/uploads/2020/09/sunglasses-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2020-09-24 14:01:33', '2020-09-24 14:01:33', '', 'hoodie-with-pocket-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-pocket-2-jpg', '', '', '2020-09-24 14:01:33', '2020-09-24 14:01:33', '', 77, 'http://localhost/EShop/wp-content/uploads/2020/09/hoodie-with-pocket-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2020-09-24 14:01:47', '2020-09-24 14:01:47', '', 'hoodie-with-zipper-2.jpg', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-2-jpg', '', '', '2020-09-24 14:01:47', '2020-09-24 14:01:47', '', 78, 'http://localhost/EShop/wp-content/uploads/2020/09/hoodie-with-zipper-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2020-09-24 14:01:55', '2020-09-24 14:01:55', '', 'long-sleeve-tee-2.jpg', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-2-jpg', '', '', '2020-09-24 14:01:55', '2020-09-24 14:01:55', '', 79, 'http://localhost/EShop/wp-content/uploads/2020/09/long-sleeve-tee-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2020-09-24 14:02:05', '2020-09-24 14:02:05', '', 'polo-2.jpg', '', 'inherit', 'open', 'closed', '', 'polo-2-jpg', '', '', '2020-09-24 14:02:05', '2020-09-24 14:02:05', '', 80, 'http://localhost/EShop/wp-content/uploads/2020/09/polo-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2020-09-24 14:02:16', '2020-09-24 14:02:16', '', 'album-1.jpg', '', 'inherit', 'open', 'closed', '', 'album-1-jpg', '', '', '2020-09-24 14:02:16', '2020-09-24 14:02:16', '', 81, 'http://localhost/EShop/wp-content/uploads/2020/09/album-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2020-09-24 14:02:23', '2020-09-24 14:02:23', '', 'single-1.jpg', '', 'inherit', 'open', 'closed', '', 'single-1-jpg', '', '', '2020-09-24 14:02:23', '2020-09-24 14:02:23', '', 82, 'http://localhost/EShop/wp-content/uploads/2020/09/single-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2020-09-24 14:02:48', '2020-09-24 14:02:48', '', 't-shirt-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 't-shirt-with-logo-1-jpg', '', '', '2020-09-24 14:02:48', '2020-09-24 14:02:48', '', 89, 'http://localhost/EShop/wp-content/uploads/2020/09/t-shirt-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2020-09-24 14:02:55', '2020-09-24 14:02:55', '', 'beanie-with-logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'beanie-with-logo-1-jpg', '', '', '2020-09-24 14:02:55', '2020-09-24 14:02:55', '', 90, 'http://localhost/EShop/wp-content/uploads/2020/09/beanie-with-logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(114, 1, '2020-09-24 14:03:08', '2020-09-24 14:03:08', '', 'logo-1.jpg', '', 'inherit', 'open', 'closed', '', 'logo-1-jpg', '', '', '2020-09-24 14:03:08', '2020-09-24 14:03:08', '', 91, 'http://localhost/EShop/wp-content/uploads/2020/09/logo-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2020-09-24 14:03:16', '2020-09-24 14:03:16', '', 'pennant-1.jpg', '', 'inherit', 'open', 'closed', '', 'pennant-1-jpg', '', '', '2020-09-24 14:03:16', '2020-09-24 14:03:16', '', 92, 'http://localhost/EShop/wp-content/uploads/2020/09/pennant-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2020-09-25 13:48:56', '2020-09-25 13:48:56', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Brown Belt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'brown-belt', '', '', '2020-09-29 04:39:54', '2020-09-29 04:39:54', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=116', 0, 'product', '', 0),
(117, 1, '2020-09-25 13:47:08', '2020-09-25 13:47:08', '', 'download (8)', '', 'inherit', 'open', 'closed', '', 'download-8', '', '', '2020-09-25 13:47:08', '2020-09-25 13:47:08', '', 116, 'http://localhost/EShop/wp-content/uploads/2020/09/download-8.png', 0, 'attachment', 'image/png', 0),
(118, 1, '2020-09-25 13:50:42', '2020-09-25 13:50:42', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Doll Dress', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'doll-dress', '', '', '2020-09-29 04:38:37', '2020-09-29 04:38:37', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=118', 0, 'product', '', 0),
(119, 1, '2020-09-25 13:49:59', '2020-09-25 13:49:59', '', 'images (5)', '', 'inherit', 'open', 'closed', '', 'images-5', '', '', '2020-09-25 13:49:59', '2020-09-25 13:49:59', '', 118, 'http://localhost/EShop/wp-content/uploads/2020/09/images-5.jpeg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2020-09-25 13:51:57', '2020-09-25 13:51:57', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Kids Dress', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'kids-dress', '', '', '2020-09-29 04:37:47', '2020-09-29 04:37:47', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2020-09-25 13:51:18', '2020-09-25 13:51:18', '', 'images (1)', '', 'inherit', 'open', 'closed', '', 'images-1', '', '', '2020-09-25 13:51:18', '2020-09-25 13:51:18', '', 120, 'http://localhost/EShop/wp-content/uploads/2020/09/images-1.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2020-09-25 13:53:47', '2020-09-25 13:53:47', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'A T-Shirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'a-t-shirt', '', '', '2020-10-02 13:00:47', '2020-10-02 13:00:47', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=122', 0, 'product', '', 1),
(123, 1, '2020-09-25 13:53:17', '2020-09-25 13:53:17', '', 'download (10)', '', 'inherit', 'open', 'closed', '', 'download-10', '', '', '2020-09-25 13:53:17', '2020-09-25 13:53:17', '', 122, 'http://localhost/EShop/wp-content/uploads/2020/09/download-10.jpeg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2020-09-25 13:56:25', '2020-09-25 13:56:25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'White T-Shirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'white-t-shirt', '', '', '2020-09-29 04:33:14', '2020-09-29 04:33:14', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=124', 0, 'product', '', 0),
(125, 1, '2020-09-25 13:57:12', '2020-09-25 13:57:12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Green Shirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'green-shirt', '', '', '2020-09-29 04:32:27', '2020-09-29 04:32:27', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=125', 0, 'product', '', 0),
(126, 1, '2020-09-25 13:55:20', '2020-09-25 13:55:20', '', 'download (7)', '', 'inherit', 'open', 'closed', '', 'download-7', '', '', '2020-09-25 13:55:20', '2020-09-25 13:55:20', '', 124, 'http://localhost/EShop/wp-content/uploads/2020/09/download-7.png', 0, 'attachment', 'image/png', 0),
(127, 1, '2020-09-25 13:56:43', '2020-09-25 13:56:43', '', 'download (6)', '', 'inherit', 'open', 'closed', '', 'download-6', '', '', '2020-09-25 13:56:43', '2020-09-25 13:56:43', '', 125, 'http://localhost/EShop/wp-content/uploads/2020/09/download-6.png', 0, 'attachment', 'image/png', 0),
(128, 1, '2020-09-25 13:58:39', '2020-09-25 13:58:39', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Green T-shirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'green-t-shirt', '', '', '2020-09-29 04:31:55', '2020-09-29 04:31:55', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=128', 0, 'product', '', 0),
(129, 1, '2020-09-25 13:57:45', '2020-09-25 13:57:45', '', 'images (4)', '', 'inherit', 'open', 'closed', '', 'images-4', '', '', '2020-09-25 13:57:45', '2020-09-25 13:57:45', '', 128, 'http://localhost/EShop/wp-content/uploads/2020/09/images-4.jpeg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2020-09-25 13:57:47', '2020-09-25 13:57:47', '', 'download (5)', '', 'inherit', 'open', 'closed', '', 'download-5', '', '', '2020-09-25 13:57:47', '2020-09-25 13:57:47', '', 128, 'http://localhost/EShop/wp-content/uploads/2020/09/download-5.png', 0, 'attachment', 'image/png', 0),
(131, 1, '2020-09-25 13:57:52', '2020-09-25 13:57:52', '', 'download (4)', '', 'inherit', 'open', 'closed', '', 'download-4', '', '', '2020-09-25 13:57:52', '2020-09-25 13:57:52', '', 128, 'http://localhost/EShop/wp-content/uploads/2020/09/download-4.png', 0, 'attachment', 'image/png', 0),
(132, 1, '2020-09-25 13:59:17', '2020-09-25 13:59:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Pink T-Shirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'pink-t-shirt', '', '', '2020-09-29 04:31:15', '2020-09-29 04:31:15', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=132', 0, 'product', '', 0),
(133, 1, '2020-09-25 13:57:54', '2020-09-25 13:57:54', '', 'download (3)', '', 'inherit', 'open', 'closed', '', 'download-3', '', '', '2020-09-25 13:57:54', '2020-09-25 13:57:54', '', 128, 'http://localhost/EShop/wp-content/uploads/2020/09/download-3.png', 0, 'attachment', 'image/png', 0),
(134, 1, '2020-09-25 13:57:57', '2020-09-25 13:57:57', '', 'download (9)', '', 'inherit', 'open', 'closed', '', 'download-9', '', '', '2020-09-25 13:57:57', '2020-09-25 13:57:57', '', 128, 'http://localhost/EShop/wp-content/uploads/2020/09/download-9.jpeg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2020-09-25 13:57:59', '2020-09-25 13:57:59', '', 'Brown Wallet', '', 'inherit', 'open', 'closed', '', 'brown-wallet', '', '', '2020-09-25 13:57:59', '2020-09-25 13:57:59', '', 128, 'http://localhost/EShop/wp-content/uploads/2020/09/Brown-Wallet.jpeg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2020-09-25 13:58:02', '2020-09-25 13:58:02', '', 'men Jacket', '', 'inherit', 'open', 'closed', '', 'men-jacket', '', '', '2020-09-25 13:58:02', '2020-09-25 13:58:02', '', 128, 'http://localhost/EShop/wp-content/uploads/2020/09/men-Jacket.jpeg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2020-09-25 14:00:01', '2020-09-25 14:00:01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Kids T-shirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'kids-t-shirt', '', '', '2020-09-29 04:30:20', '2020-09-29 04:30:20', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=137', 0, 'product', '', 0),
(139, 1, '2020-09-25 14:02:07', '2020-09-25 14:02:07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Men\'s Wallet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'mens-wallet', '', '', '2020-09-29 04:27:48', '2020-09-29 04:27:48', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=139', 0, 'product', '', 0),
(140, 1, '2020-09-25 14:01:32', '2020-09-25 14:01:32', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Yellow T-Shirt', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'yellow-t-shirt', '', '', '2020-09-29 04:28:14', '2020-09-29 04:28:14', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=140', 0, 'product', '', 0),
(141, 1, '2020-09-25 14:03:13', '2020-09-25 14:03:13', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Men\'s Brown wallet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'mens-brown-wallet', '', '', '2020-09-29 04:26:44', '2020-09-29 04:26:44', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=141', 0, 'product', '', 0),
(142, 1, '2020-09-25 14:04:35', '2020-09-25 14:04:35', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Brown Jacket', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'closed', '', 'brown-jacket', '', '', '2020-10-02 13:03:35', '2020-10-02 13:03:35', '', 0, 'http://localhost/EShop/?post_type=product&#038;p=142', 0, 'product', '', 2),
(143, 1, '2020-09-26 05:16:53', '2020-09-26 05:16:53', '<!-- wp:shortcode -->\r\n<p>[yith_wcwl_wishlist]</p>\r\n<!-- /wp:shortcode -->', 'Wishlist', '', 'publish', 'closed', 'closed', '', 'wishlist', '', '', '2020-09-29 09:09:40', '2020-09-29 09:09:40', '', 0, 'http://localhost/EShop/index.php/wishlist/', 0, 'page', '', 0),
(144, 1, '2020-09-26 06:24:29', '2020-09-26 06:24:29', ' ', '', '', 'publish', 'closed', 'closed', '', '144', '', '', '2020-10-01 12:55:59', '2020-10-01 12:55:59', '', 0, 'http://localhost/EShop/?p=144', 6, 'nav_menu_item', '', 0),
(145, 1, '2020-09-26 06:52:58', '2020-09-26 06:52:58', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:0:\"\";}', 'Event Sale', 'event_sale', 'publish', 'closed', 'closed', '', 'field_5f6ee491d8d23', '', '', '2020-10-01 07:35:34', '2020-10-01 07:35:34', '', 45, 'http://localhost/EShop/?post_type=acf-field&#038;p=145', 5, 'acf-field', '', 0),
(146, 1, '2020-09-26 06:52:59', '2020-09-26 06:52:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Banner Image', 'banner_image', 'publish', 'closed', 'closed', '', 'field_5f6ee4dbd8d24', '', '', '2020-09-26 06:52:59', '2020-09-26 06:52:59', '', 145, 'http://localhost/EShop/?post_type=acf-field&p=146', 0, 'acf-field', '', 0),
(147, 1, '2020-09-26 06:52:59', '2020-09-26 06:52:59', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Banner Text', 'banner_text', 'publish', 'closed', 'closed', '', 'field_5f6ee501d8d25', '', '', '2020-09-26 06:52:59', '2020-09-26 06:52:59', '', 145, 'http://localhost/EShop/?post_type=acf-field&p=147', 1, 'acf-field', '', 0),
(148, 1, '2020-09-26 06:53:00', '2020-09-26 06:53:00', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Page Link', 'page_link', 'publish', 'closed', 'closed', '', 'field_5f6ee526d8d26', '', '', '2020-09-26 06:53:00', '2020-09-26 06:53:00', '', 145, 'http://localhost/EShop/?post_type=acf-field&p=148', 2, 'acf-field', '', 0),
(149, 1, '2020-09-26 07:00:34', '2020-09-26 07:00:34', '', 'banner-3', '', 'inherit', 'open', 'closed', '', 'banner-3', '', '', '2020-09-26 07:00:34', '2020-09-26 07:00:34', '', 19, 'http://localhost/EShop/wp-content/uploads/2020/09/banner-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2020-09-26 07:03:19', '2020-09-26 07:03:19', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-26 07:03:19', '2020-09-26 07:03:19', '', 19, 'http://localhost/EShop/index.php/2020/09/26/19-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2020-09-26 07:10:54', '2020-09-26 07:10:54', '', 'download (11)', '', 'inherit', 'open', 'closed', '', 'download-11', '', '', '2020-09-26 07:10:54', '2020-09-26 07:10:54', '', 19, 'http://localhost/EShop/wp-content/uploads/2020/09/download-11.jpeg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2020-09-26 07:11:25', '2020-09-26 07:11:25', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-26 07:11:25', '2020-09-26 07:11:25', '', 19, 'http://localhost/EShop/index.php/2020/09/26/19-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2020-09-26 07:14:12', '2020-09-26 07:14:12', '', 'editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126', '', 'inherit', 'open', 'closed', '', 'editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126', '', '', '2020-09-26 07:14:12', '2020-09-26 07:14:12', '', 19, 'http://localhost/EShop/wp-content/uploads/2020/09/editable-modern-creative-sale-banner-with-empty-abstract-background_75010-126.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 1, '2020-09-26 07:14:26', '2020-09-26 07:14:26', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-26 07:14:26', '2020-09-26 07:14:26', '', 19, 'http://localhost/EShop/index.php/2020/09/26/19-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(156, 1, '2020-09-26 09:29:57', '2020-09-26 09:29:57', '', 'Countdown Timer + Bar', '', 'wcctdisabled', 'closed', 'closed', '', 'countdown-timer-bar', '', '', '2020-09-26 09:29:57', '2020-09-26 09:29:57', '', 0, 'http://localhost/EShop/index.php/2020/09/26/countdown-timer-bar/', 0, 'wcct_countdown', '', 0),
(157, 1, '2020-09-26 09:35:11', '2020-09-26 09:35:11', '', 'New Trendz', '', 'publish', 'closed', 'closed', '', 'new-trendz', '', '', '2020-09-26 09:35:11', '2020-09-26 09:35:11', '', 0, 'http://localhost/EShop/?post_type=wcct_countdown&#038;p=157', 0, 'wcct_countdown', '', 0),
(160, 1, '2020-09-26 09:53:53', '2020-09-26 09:53:53', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2020-09-29 05:17:40', '2020-09-29 05:17:40', '', 0, 'http://localhost/EShop/?p=160', 0, 'post', '', 3),
(161, 1, '2020-09-26 09:52:04', '2020-09-26 09:52:04', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2020-09-26 09:52:04', '2020-09-26 09:52:04', '', 160, 'http://localhost/EShop/wp-content/uploads/2020/09/images.jpeg', 0, 'attachment', 'image/jpeg', 0),
(162, 1, '2020-09-26 09:53:53', '2020-09-26 09:53:53', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2020-09-26 09:53:53', '2020-09-26 09:53:53', '', 160, 'http://localhost/EShop/index.php/2020/09/26/160-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2020-09-26 09:55:43', '2020-09-26 09:55:43', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->', 'New blog', '', 'publish', 'open', 'open', '', 'new-blog', '', '', '2020-09-29 09:41:20', '2020-09-29 09:41:20', '', 0, 'http://localhost/EShop/?p=163', 0, 'post', '', 0),
(164, 1, '2020-09-26 09:55:32', '2020-09-26 09:55:32', '', 'blog-post-image-guide', '', 'inherit', 'open', 'closed', '', 'blog-post-image-guide', '', '', '2020-09-26 09:55:32', '2020-09-26 09:55:32', '', 163, 'http://localhost/EShop/wp-content/uploads/2020/09/blog-post-image-guide.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2020-09-26 09:55:43', '2020-09-26 09:55:43', '<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\n<!-- /wp:paragraph -->', 'New blog', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2020-09-26 09:55:43', '2020-09-26 09:55:43', '', 163, 'http://localhost/EShop/index.php/2020/09/26/163-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2020-09-26 10:59:21', '2020-09-26 10:59:21', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-09-26 10:59:21', '2020-09-26 10:59:21', '', 14, 'http://localhost/EShop/index.php/2020/09/26/14-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2020-09-28 04:42:29', '2020-09-28 04:42:29', '', 'Order &ndash; September 28, 2020 @ 04:42 AM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_157Umw7owD8nG', 'order-sep-28-2020-0442-am', '', '', '2020-09-28 04:42:36', '2020-09-28 04:42:36', '', 0, 'http://localhost/EShop/?post_type=shop_order&#038;p=167', 0, 'shop_order', '', 1),
(168, 1, '2020-09-28 07:24:15', '2020-09-28 07:24:15', '<label> Your Name (required)\r\n  [text* your-name class:form-control] </label>\r\n\r\n<label> Your Email (required)\r\n  [email* your-email class:form-control] </label>\r\n\r\n<label> Subject\r\n    [text your-subject class:form-control] </label>\r\n\r\n<label> Phone\r\n[tel tel-91 class:form-control] </label>\r\n\r\n<label> Your Message\r\n    [textarea your-message class:form-control] </label>\r\n\r\n[submit class:btn \"Send\"]\n1\nEshop \"[your-subject]\"\nEshop <zaffar@pixlogix.com>\nzaffar@pixlogix.com\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Eshop (http://localhost/EShop)\nReply-To: [your-email]\n\n\n\n\nEshop \"[your-subject]\"\nEshop <zaffar@pixlogix.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Eshop (http://localhost/EShop)\nReply-To: zaffar@pixlogix.com\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-10-05 05:14:23', '2020-10-05 05:14:23', '', 0, 'http://localhost/EShop/?post_type=wpcf7_contact_form&#038;p=168', 0, 'wpcf7_contact_form', '', 0),
(169, 1, '2020-09-28 07:32:20', '2020-09-28 07:32:20', '[contact-form-7 id=\"168\" title=\"Contact form 1\"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-09-28 07:38:22', '2020-09-28 07:38:22', '', 0, 'http://localhost/EShop/?page_id=169', 0, 'page', '', 0),
(170, 1, '2020-09-28 07:32:20', '2020-09-28 07:32:20', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2020-09-28 07:32:20', '2020-09-28 07:32:20', '', 169, 'http://localhost/EShop/index.php/2020/09/28/169-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2020-09-28 07:34:03', '2020-09-28 07:34:03', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us-2', '', '', '2020-10-01 12:56:00', '2020-10-01 12:56:00', '', 0, 'http://localhost/EShop/?p=171', 9, 'nav_menu_item', '', 0),
(172, 1, '2020-09-28 07:37:12', '2020-09-28 07:37:12', '[contact-form-7 id=\"168\" title=\"Contact form 1\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '169-revision-v1', '', '', '2020-09-28 07:37:12', '2020-09-28 07:37:12', '', 169, 'http://localhost/EShop/index.php/2020/09/28/169-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2020-09-28 08:13:50', '2020-09-28 08:13:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_5f719b1c5ede3', '', '', '2020-09-28 08:13:50', '2020-09-28 08:13:50', '', 34, 'http://localhost/EShop/?post_type=acf-field&p=173', 6, 'acf-field', '', 0),
(174, 1, '2020-09-28 13:39:31', '2020-09-28 13:39:31', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-09-29 09:22:19', '2020-09-29 09:22:19', '', 0, 'http://localhost/EShop/?page_id=174', 0, 'page', '', 0),
(175, 1, '2020-09-28 13:39:31', '2020-09-28 13:39:31', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2020-09-28 13:39:31', '2020-09-28 13:39:31', '', 174, 'http://localhost/EShop/index.php/2020/09/28/174-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2020-09-28 13:40:25', '2020-09-28 13:40:25', ' ', '', '', 'publish', 'closed', 'closed', '', '176', '', '', '2020-10-01 12:56:00', '2020-10-01 12:56:00', '', 0, 'http://localhost/EShop/?p=176', 8, 'nav_menu_item', '', 0),
(177, 1, '2020-09-29 04:35:19', '2020-09-29 04:35:19', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'White T-Shirt', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'inherit', 'closed', 'closed', '', '124-autosave-v1', '', '', '2020-09-29 04:35:19', '2020-09-29 04:35:19', '', 124, 'http://localhost/EShop/index.php/2020/09/29/124-autosave-v1/', 0, 'revision', '', 0),
(178, 1, '2020-09-29 08:56:28', '2020-09-29 08:56:28', '<!-- wp:shortcode -->\r\n<p>[yith_wcwl_wishlist]</p>\r\n<!-- /wp:shortcode -->', 'Wishlist', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2020-09-29 08:56:28', '2020-09-29 08:56:28', '', 143, 'http://localhost/EShop/index.php/2020/09/29/143-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2020-09-30 11:43:29', '2020-09-30 11:43:29', '<div class=\"newsletter-inner\">\r\n  <input type=\"email\" name=\"EMAIL\" placeholder=\"Your email address\" required />\r\n  <button type=\"submit\" class=\"btn\">Subscribe</button>\r\n</div>', 'subscribe', '', 'publish', 'closed', 'closed', '', 'subscribe', '', '', '2020-09-30 11:43:29', '2020-09-30 11:43:29', '', 0, 'http://localhost/EShop/index.php/mc4wp-form/subscribe/', 0, 'mc4wp-form', '', 0),
(184, 1, '2020-10-01 07:31:57', '2020-10-01 07:31:57', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Page', 'page', 'publish', 'closed', 'closed', '', 'field_5f758538391db', '', '', '2020-10-01 07:35:34', '2020-10-01 07:35:34', '', 45, 'http://localhost/EShop/?post_type=acf-field&#038;p=184', 0, 'acf-field', '', 0),
(185, 1, '2020-10-01 07:31:57', '2020-10-01 07:31:57', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Deals', 'deals', 'publish', 'closed', 'closed', '', 'field_5f758517391da', '', '', '2020-10-01 07:35:34', '2020-10-01 07:35:34', '', 45, 'http://localhost/EShop/?post_type=acf-field&#038;p=185', 6, 'acf-field', '', 0),
(186, 1, '2020-10-01 07:31:58', '2020-10-01 07:31:58', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'deal banner', 'deal_banner', 'publish', 'closed', 'closed', '', 'field_5f758555391dc', '', '', '2020-10-01 07:35:34', '2020-10-01 07:35:34', '', 45, 'http://localhost/EShop/?post_type=acf-field&#038;p=186', 7, 'acf-field', '', 0),
(187, 1, '2020-10-01 07:31:58', '2020-10-01 07:31:58', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'deal title', 'deal_title', 'publish', 'closed', 'closed', '', 'field_5f758575391dd', '', '', '2020-10-01 07:36:10', '2020-10-01 07:36:10', '', 45, 'http://localhost/EShop/?post_type=acf-field&#038;p=187', 8, 'acf-field', '', 0),
(188, 1, '2020-10-01 07:31:59', '2020-10-01 07:31:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'deal description', 'deal_description', 'publish', 'closed', 'closed', '', 'field_5f75858d391de', '', '', '2020-10-01 07:36:10', '2020-10-01 07:36:10', '', 45, 'http://localhost/EShop/?post_type=acf-field&#038;p=188', 9, 'acf-field', '', 0),
(189, 1, '2020-10-01 07:31:59', '2020-10-01 07:31:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'deal price', 'deal_price', 'publish', 'closed', 'closed', '', 'field_5f7585a2391df', '', '', '2020-10-01 07:36:10', '2020-10-01 07:36:10', '', 45, 'http://localhost/EShop/?post_type=acf-field&#038;p=189', 11, 'acf-field', '', 0),
(196, 1, '2020-10-01 07:34:54', '2020-10-01 07:34:54', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'before deal price', 'before_deal_price', 'publish', 'closed', 'closed', '', 'field_5f7585d8391e0', '', '', '2020-10-01 07:38:44', '2020-10-01 07:38:44', '', 45, 'http://localhost/EShop/?post_type=acf-field&#038;p=196', 10, 'acf-field', '', 0),
(198, 1, '2020-10-01 07:40:21', '2020-10-01 07:40:21', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-01 07:40:21', '2020-10-01 07:40:21', '', 19, 'http://localhost/EShop/index.php/2020/10/01/19-revision-v1/', 0, 'revision', '', 0),
(199, 1, '2020-10-01 08:21:16', '2020-10-01 08:21:16', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"Y/m/d\";s:13:\"return_format\";s:5:\"Y/m/d\";s:9:\"first_day\";i:1;}', 'deal end date', 'deal_end_date', 'publish', 'closed', 'closed', '', 'field_5f75912c1ac6e', '', '', '2020-10-01 08:21:16', '2020-10-01 08:21:16', '', 45, 'http://localhost/EShop/?post_type=acf-field&p=199', 12, 'acf-field', '', 0),
(200, 1, '2020-10-01 08:22:31', '2020-10-01 08:22:31', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-01 08:22:31', '2020-10-01 08:22:31', '', 19, 'http://localhost/EShop/index.php/2020/10/01/19-revision-v1/', 0, 'revision', '', 0),
(201, 1, '2020-10-01 08:23:10', '2020-10-01 08:23:10', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-01 08:23:10', '2020-10-01 08:23:10', '', 19, 'http://localhost/EShop/index.php/2020/10/01/19-revision-v1/', 0, 'revision', '', 0),
(202, 1, '2020-10-01 11:51:38', '2020-10-01 11:51:38', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-01 11:51:38', '2020-10-01 11:51:38', '', 19, 'http://localhost/EShop/index.php/2020/10/01/19-revision-v1/', 0, 'revision', '', 0),
(203, 1, '2020-10-01 11:55:13', '2020-10-01 11:55:13', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-01 11:55:13', '2020-10-01 11:55:13', '', 19, 'http://localhost/EShop/index.php/2020/10/01/19-revision-v1/', 0, 'revision', '', 0),
(204, 1, '2020-10-01 11:55:38', '2020-10-01 11:55:38', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-01 11:55:38', '2020-10-01 11:55:38', '', 19, 'http://localhost/EShop/index.php/2020/10/01/19-revision-v1/', 0, 'revision', '', 0),
(205, 1, '2020-10-01 11:56:02', '2020-10-01 11:56:02', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-01 11:56:02', '2020-10-01 11:56:02', '', 19, 'http://localhost/EShop/index.php/2020/10/01/19-revision-v1/', 0, 'revision', '', 0),
(206, 1, '2020-10-01 11:56:33', '2020-10-01 11:56:33', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-01 11:56:33', '2020-10-01 11:56:33', '', 19, 'http://localhost/EShop/index.php/2020/10/01/19-revision-v1/', 0, 'revision', '', 0),
(211, 1, '2020-10-01 12:37:06', '2020-10-01 12:37:06', '', 'Order &ndash; October 1, 2020 @ 12:37 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_4FXvFEqYv0dDL', 'order-oct-01-2020-1237-pm', '', '', '2020-10-01 12:37:14', '2020-10-01 12:37:14', '', 0, 'http://localhost/EShop/?post_type=shop_order&#038;p=211', 0, 'shop_order', '', 1),
(212, 1, '2020-10-01 12:46:06', '2020-10-01 12:46:06', '', 'Order &ndash; October 1, 2020 @ 12:46 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_jgF14EGB74Kb8', 'order-oct-01-2020-1246-pm', '', '', '2020-10-01 12:46:11', '2020-10-01 12:46:11', '', 0, 'http://localhost/EShop/?post_type=shop_order&#038;p=212', 0, 'shop_order', '', 1),
(213, 1, '2020-10-01 12:53:10', '2020-10-01 12:53:10', 'This is product page', 'product', '', 'publish', 'closed', 'closed', '', 'product', '', '', '2020-10-01 12:53:25', '2020-10-01 12:53:25', '', 0, 'http://localhost/EShop/?page_id=213', 0, 'page', '', 0),
(214, 1, '2020-10-01 12:53:10', '2020-10-01 12:53:10', '', 'product', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2020-10-01 12:53:10', '2020-10-01 12:53:10', '', 213, 'http://localhost/EShop/index.php/2020/10/01/213-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(215, 1, '2020-10-01 12:53:25', '2020-10-01 12:53:25', 'This is product page', 'product', '', 'inherit', 'closed', 'closed', '', '213-revision-v1', '', '', '2020-10-01 12:53:25', '2020-10-01 12:53:25', '', 213, 'http://localhost/EShop/index.php/2020/10/01/213-revision-v1/', 0, 'revision', '', 0),
(216, 1, '2020-10-01 12:53:47', '2020-10-01 12:53:47', 'This is service page', 'service', '', 'publish', 'closed', 'closed', '', 'service', '', '', '2020-10-01 12:53:47', '2020-10-01 12:53:47', '', 0, 'http://localhost/EShop/?page_id=216', 0, 'page', '', 0),
(217, 1, '2020-10-01 12:53:47', '2020-10-01 12:53:47', 'This is service page', 'service', '', 'inherit', 'closed', 'closed', '', '216-revision-v1', '', '', '2020-10-01 12:53:47', '2020-10-01 12:53:47', '', 216, 'http://localhost/EShop/index.php/2020/10/01/216-revision-v1/', 0, 'revision', '', 0),
(218, 1, '2020-10-01 12:55:59', '2020-10-01 12:55:59', '', 'Service', '', 'publish', 'closed', 'closed', '', 'service-2', '', '', '2020-10-01 12:55:59', '2020-10-01 12:55:59', '', 0, 'http://localhost/EShop/?p=218', 3, 'nav_menu_item', '', 0),
(219, 1, '2020-10-01 12:55:59', '2020-10-01 12:55:59', '', 'Product', '', 'publish', 'closed', 'closed', '', 'product-2', '', '', '2020-10-01 12:55:59', '2020-10-01 12:55:59', '', 0, 'http://localhost/EShop/?p=219', 2, 'nav_menu_item', '', 0),
(221, 1, '2020-10-01 13:02:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-10-01 13:02:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/EShop/?p=221', 1, 'nav_menu_item', '', 0),
(222, 1, '2020-10-01 13:04:13', '2020-10-01 13:04:13', ' ', '', '', 'publish', 'closed', 'closed', '', '222', '', '', '2020-10-06 10:57:18', '2020-10-06 10:57:18', '', 0, 'http://localhost/EShop/?p=222', 2, 'nav_menu_item', '', 0),
(223, 1, '2020-10-01 13:04:14', '2020-10-01 13:04:14', ' ', '', '', 'publish', 'closed', 'closed', '', '223', '', '', '2020-10-06 10:57:18', '2020-10-06 10:57:18', '', 0, 'http://localhost/EShop/?p=223', 5, 'nav_menu_item', '', 0),
(224, 1, '2020-10-01 13:04:13', '2020-10-01 13:04:13', ' ', '', '', 'publish', 'closed', 'closed', '', '224', '', '', '2020-10-06 10:57:18', '2020-10-06 10:57:18', '', 0, 'http://localhost/EShop/?p=224', 3, 'nav_menu_item', '', 0),
(225, 1, '2020-10-01 13:04:14', '2020-10-01 13:04:14', ' ', '', '', 'publish', 'closed', 'closed', '', '225', '', '', '2020-10-06 10:57:18', '2020-10-06 10:57:18', '', 0, 'http://localhost/EShop/?p=225', 4, 'nav_menu_item', '', 0),
(226, 1, '2020-10-01 13:02:44', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-10-01 13:02:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/EShop/?p=226', 1, 'nav_menu_item', '', 0),
(227, 1, '2020-10-01 13:02:45', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-10-01 13:02:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/EShop/?p=227', 1, 'nav_menu_item', '', 0),
(228, 1, '2020-10-01 13:02:46', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-10-01 13:02:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/EShop/?p=228', 1, 'nav_menu_item', '', 0),
(229, 1, '2020-10-01 13:04:12', '2020-10-01 13:04:12', ' ', '', '', 'publish', 'closed', 'closed', '', '229', '', '', '2020-10-06 10:57:18', '2020-10-06 10:57:18', '', 0, 'http://localhost/EShop/?p=229', 1, 'nav_menu_item', '', 0),
(230, 1, '2020-10-01 13:02:49', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-10-01 13:02:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/EShop/?p=230', 1, 'nav_menu_item', '', 0),
(232, 1, '2020-10-05 04:41:29', '2020-10-05 04:41:29', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\n<!-- /wp:button --></div>\n</div>\n<!-- /wp:cover -->\n\n<!-- wp:heading {\"align\":\"center\"} -->\n<h2 style=\"text-align: center;\">New Products</h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-new /-->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"> </p>\n<!-- /wp:paragraph --></div>\n</div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide\">\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"> </p>\n<!-- /wp:paragraph --></div>\n</div>\n<!-- /wp:media-text -->\n\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\n<p class=\"has-large-font-size\"> </p>\n<!-- /wp:paragraph --></div>\n</div>\n<!-- /wp:media-text -->\n\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-autosave-v1', '', '', '2020-10-05 04:41:29', '2020-10-05 04:41:29', '', 19, 'http://localhost/EShop/index.php/2020/10/05/19-autosave-v1/', 0, 'revision', '', 0),
(233, 1, '2020-10-05 04:44:48', '2020-10-05 04:44:48', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-05 04:44:48', '2020-10-05 04:44:48', '', 19, 'http://localhost/EShop/index.php/2020/10/05/19-revision-v1/', 0, 'revision', '', 0),
(234, 1, '2020-10-05 04:45:43', '2020-10-05 04:45:43', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-05 04:45:43', '2020-10-05 04:45:43', '', 19, 'http://localhost/EShop/index.php/2020/10/05/19-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2020-10-05 04:46:11', '2020-10-05 04:46:11', '<!-- wp:cover {\"url\":\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\",\"id\":20,\"dimRatio\":0} -->\r\n<div class=\"wp-block-cover\" style=\"background-image: url(\'http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\');\">\r\n<div class=\"wp-block-cover__inner-container\"><!-- wp:paragraph {\"align\":\"center\",\"placeholder\":\"Write title…\",\"textColor\":\"white\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-text-align-center has-large-font-size\">Welcome to the store</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph {\"align\":\"center\",\"textColor\":\"white\"} -->\r\n<p class=\"has-text-color has-text-align-center\">Write a short welcome message here</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:button {\"align\":\"center\"} -->\r\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"http://localhost/EShop/index.php/shop/\">Go shopping</a></div>\r\n<!-- /wp:button --></div>\r\n</div>\r\n<!-- /wp:cover -->\r\n\r\n<!-- wp:heading {\"align\":\"center\"} -->\r\n<h2 style=\"text-align: center;\">New Products</h2>\r\n<!-- /wp:heading -->\r\n\r\n<!-- wp:woocommerce/product-new /-->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:media-text {\"mediaPosition\":\"right\",\"mediaId\":20,\"mediaType\":\"image\"} -->\r\n<div class=\"wp-block-media-text alignwide has-media-on-the-right\">\r\n<figure class=\"wp-block-media-text__media\"><img class=\"wp-image-20\" src=\"http://localhost/EShop/wp-content/uploads/2020/09/other-small.jpg\" alt=\"\" /></figure>\r\n<div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Content…\",\"fontSize\":\"large\"} -->\r\n<p class=\"has-large-font-size\"> </p>\r\n<!-- /wp:paragraph --></div>\r\n</div>\r\n<!-- /wp:media-text -->\r\n\r\n<!-- wp:woocommerce/featured-product /-->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-10-05 04:46:11', '2020-10-05 04:46:11', '', 19, 'http://localhost/EShop/index.php/2020/10/05/19-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2020-10-06 06:00:32', '2020-10-06 06:00:32', '', 'Order &ndash; October 6, 2020 @ 06:00 AM', '', 'wc-cancelled', 'closed', 'closed', 'wc_order_MEOZgPIT8UgCO', 'order-oct-06-2020-0600-am', '', '', '2020-10-06 11:18:10', '2020-10-06 11:18:10', '', 0, 'http://localhost/EShop/?post_type=shop_order&#038;p=236', 0, 'shop_order', '', 2),
(237, 1, '2020-10-06 11:13:18', '2020-10-06 11:13:18', '', 'Order &ndash; October 6, 2020 @ 11:13 AM', '', 'wc-completed', 'closed', 'closed', 'wc_order_EiNG4rVFd8aie', 'order-oct-06-2020-1113-am', '', '', '2020-10-06 11:17:38', '2020-10-06 11:17:38', '', 0, 'http://localhost/EShop/?post_type=shop_order&#038;p=237', 0, 'shop_order', '', 2),
(239, 1, '2020-10-10 11:29:33', '2020-10-10 11:29:33', '', 'Order &ndash; October 10, 2020 @ 11:29 AM', '', 'wc-pending', 'open', 'closed', 'wc_order_Mrb8e0v3XKSWe', 'order-oct-10-2020-1129-am', '', '', '2020-10-10 11:29:33', '2020-10-10 11:29:33', '', 0, 'http://localhost/EShop/?post_type=shop_order&p=239', 0, 'shop_order', '', 1),
(240, 1, '2020-10-10 11:29:48', '2020-10-10 11:29:48', '', 'Order &ndash; October 10, 2020 @ 11:29 AM', '', 'wc-pending', 'open', 'closed', 'wc_order_lwqwJDH2pkTGp', 'order-oct-10-2020-1129-am-2', '', '', '2020-10-10 11:29:48', '2020-10-10 11:29:48', '', 0, 'http://localhost/EShop/?post_type=shop_order&p=240', 0, 'shop_order', '', 1),
(241, 1, '2020-10-16 13:32:11', '2020-10-16 13:32:11', '', 'Order &ndash; October 16, 2020 @ 01:32 PM', '', 'wc-processing', 'closed', 'closed', 'wc_order_T4XAMzOlxT0K3', 'order-oct-16-2020-0132-pm', '', '', '2020-10-16 13:48:13', '2020-10-16 13:48:13', '', 0, 'http://localhost/EShop/?post_type=shop_order&#038;p=241', 0, 'shop_order', '', 1),
(242, 1, '2020-10-19 06:02:44', '2020-10-19 06:02:44', '', 'Order &ndash; October 19, 2020 @ 06:02 AM', '', 'wc-processing', 'open', 'closed', 'wc_order_ojkOUeUs1V76t', 'order-oct-19-2020-0602-am', '', '', '2020-10-19 06:02:51', '2020-10-19 06:02:51', '', 0, 'http://localhost/EShop/?post_type=shop_order&#038;p=242', 0, 'shop_order', '', 1),
(245, 1, '2020-10-19 11:25:41', '2020-10-19 11:25:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Brown Jacket', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'inherit', 'closed', 'closed', '', '142-autosave-v1', '', '', '2020-10-19 11:25:41', '2020-10-19 11:25:41', '', 142, 'http://localhost/EShop/index.php/2020/10/19/142-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 18, 'order', '0'),
(3, 19, 'order', '0'),
(4, 20, 'order', '0'),
(5, 21, 'order', '0'),
(6, 22, 'order', '0'),
(7, 23, 'order', '0'),
(8, 19, 'product_count_product_cat', '0'),
(9, 18, 'product_count_product_cat', '24'),
(10, 24, 'order_pa_color', '0'),
(11, 25, 'order_pa_color', '0'),
(12, 26, 'order_pa_color', '0'),
(13, 27, 'order_pa_size', '0'),
(14, 28, 'order_pa_size', '0'),
(15, 29, 'order_pa_size', '0'),
(16, 20, 'product_count_product_cat', '0'),
(17, 30, 'order_pa_color', '0'),
(18, 21, 'product_count_product_cat', '5'),
(19, 31, 'order_pa_color', '0'),
(20, 22, 'product_count_product_cat', '2'),
(21, 23, 'product_count_product_cat', '0'),
(22, 32, 'order', '0'),
(23, 33, 'order', '0'),
(24, 34, 'order', '0'),
(25, 35, 'order', '0'),
(26, 34, 'product_count_product_cat', '9'),
(27, 36, 'order', '0'),
(28, 32, 'product_count_product_cat', '15'),
(29, 36, 'product_count_product_cat', '10'),
(30, 37, 'order', '0'),
(31, 37, 'product_count_product_cat', '2'),
(32, 38, 'order', '0'),
(33, 39, 'order', '0'),
(34, 38, 'product_count_product_cat', '3'),
(35, 33, 'product_count_product_cat', '8'),
(36, 39, 'product_count_product_cat', '3'),
(37, 35, 'product_count_product_cat', '7'),
(38, 40, 'order', '0'),
(39, 40, 'product_count_product_cat', '4'),
(40, 47, 'order', '0'),
(41, 48, 'order', '0'),
(42, 49, 'order', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Menu 1', 'menu-1', 0),
(17, 'top', 'top', 0),
(18, 'Clothing', 'clothing', 0),
(19, 'Tshirts', 'tshirts', 0),
(20, 'Hoodies', 'hoodies', 0),
(21, 'Accessories', 'accessories', 0),
(22, 'Music', 'music', 0),
(23, 'Decor', 'decor', 0),
(24, 'Blue', 'blue', 0),
(25, 'Green', 'green', 0),
(26, 'Red', 'red', 0),
(27, 'Large', 'large', 0),
(28, 'Medium', 'medium', 0),
(29, 'Small', 'small', 0),
(30, 'Gray', 'gray', 0),
(31, 'Yellow', 'yellow', 0),
(32, 'Men', 'men', 0),
(33, 'Women', 'women', 0),
(34, 'Kids', 'kids', 0),
(35, 'Accessories', 'accessories-2', 0),
(36, 'Tshirts', 'tshirts-men', 0),
(37, 'Shirts', 'shirts', 0),
(38, 'Hoodies', 'hoodies-men', 0),
(39, 'Hoodies', 'hoodies-women', 0),
(40, 'Tshirt', 'tshirt', 0),
(41, 'blog', 'blog', 0),
(42, 'newblogtag', 'newblogtag', 0),
(43, 'anothertag', 'anothertag', 0),
(44, 'New tag', 'new-tag', 0),
(45, 'Pricing Deals Category', 'pricing-deals-category', 0),
(46, 'explore', 'explore', 0),
(47, 'Catagory 1', 'catagory-1', 0),
(48, 'Kit', 'kit', 0),
(49, 'electronic', 'electronic', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 2, 0),
(18, 35, 0),
(23, 16, 0),
(24, 16, 0),
(25, 16, 0),
(28, 16, 0),
(29, 17, 0),
(30, 17, 0),
(31, 17, 0),
(32, 17, 0),
(69, 4, 0),
(69, 8, 0),
(69, 18, 0),
(69, 24, 0),
(69, 25, 0),
(69, 26, 0),
(69, 27, 0),
(69, 28, 0),
(69, 29, 0),
(69, 32, 0),
(69, 36, 0),
(70, 4, 0),
(70, 18, 0),
(70, 24, 0),
(70, 25, 0),
(70, 26, 0),
(70, 32, 0),
(70, 33, 0),
(70, 38, 0),
(70, 39, 0),
(71, 2, 0),
(71, 18, 0),
(71, 24, 0),
(71, 32, 0),
(71, 33, 0),
(71, 38, 0),
(71, 39, 0),
(72, 2, 0),
(72, 18, 0),
(72, 30, 0),
(72, 32, 0),
(72, 36, 0),
(73, 2, 0),
(73, 21, 0),
(73, 26, 0),
(74, 2, 0),
(74, 21, 0),
(75, 2, 0),
(75, 8, 0),
(75, 21, 0),
(75, 31, 0),
(76, 2, 0),
(76, 8, 0),
(76, 21, 0),
(77, 2, 0),
(77, 6, 0),
(77, 7, 0),
(77, 8, 0),
(77, 18, 0),
(77, 30, 0),
(77, 32, 0),
(77, 33, 0),
(77, 38, 0),
(77, 39, 0),
(78, 2, 0),
(78, 8, 0),
(78, 18, 0),
(78, 32, 0),
(78, 33, 0),
(78, 38, 0),
(78, 39, 0),
(79, 2, 0),
(79, 18, 0),
(79, 25, 0),
(79, 32, 0),
(79, 36, 0),
(80, 2, 0),
(80, 18, 0),
(80, 24, 0),
(80, 32, 0),
(80, 36, 0),
(80, 37, 0),
(81, 2, 0),
(81, 22, 0),
(82, 2, 0),
(82, 22, 0),
(83, 15, 0),
(83, 26, 0),
(84, 15, 0),
(84, 25, 0),
(85, 15, 0),
(85, 24, 0),
(86, 15, 0),
(86, 26, 0),
(87, 15, 0),
(87, 25, 0),
(88, 15, 0),
(88, 24, 0),
(89, 2, 0),
(89, 18, 0),
(89, 30, 0),
(89, 32, 0),
(89, 36, 0),
(90, 2, 0),
(90, 21, 0),
(90, 26, 0),
(91, 3, 0),
(91, 18, 0),
(91, 34, 0),
(92, 5, 0),
(92, 35, 0),
(93, 15, 0),
(93, 24, 0),
(116, 2, 0),
(116, 35, 0),
(118, 2, 0),
(118, 18, 0),
(118, 34, 0),
(118, 35, 0),
(120, 2, 0),
(120, 18, 0),
(120, 34, 0),
(122, 2, 0),
(122, 14, 0),
(122, 18, 0),
(122, 32, 0),
(122, 34, 0),
(122, 36, 0),
(124, 2, 0),
(124, 18, 0),
(124, 32, 0),
(124, 33, 0),
(124, 34, 0),
(124, 36, 0),
(124, 40, 0),
(125, 2, 0),
(125, 18, 0),
(125, 32, 0),
(125, 34, 0),
(125, 37, 0),
(128, 2, 0),
(128, 18, 0),
(128, 32, 0),
(128, 33, 0),
(128, 34, 0),
(128, 36, 0),
(128, 40, 0),
(132, 2, 0),
(132, 18, 0),
(132, 32, 0),
(132, 33, 0),
(132, 34, 0),
(132, 36, 0),
(132, 40, 0),
(137, 2, 0),
(137, 18, 0),
(137, 34, 0),
(139, 2, 0),
(139, 35, 0),
(140, 2, 0),
(140, 18, 0),
(140, 32, 0),
(140, 33, 0),
(140, 36, 0),
(140, 40, 0),
(141, 2, 0),
(141, 35, 0),
(142, 2, 0),
(142, 13, 0),
(142, 18, 0),
(142, 32, 0),
(142, 33, 0),
(142, 35, 0),
(144, 16, 0),
(160, 1, 0),
(160, 42, 0),
(160, 43, 0),
(163, 1, 0),
(163, 44, 0),
(171, 16, 0),
(176, 16, 0),
(218, 16, 0),
(219, 16, 0),
(222, 46, 0),
(223, 46, 0),
(224, 46, 0),
(225, 46, 0),
(229, 46, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'product_type', '', 0, 28),
(3, 3, 'product_type', '', 0, 1),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 1),
(6, 6, 'product_visibility', '', 0, 1),
(7, 7, 'product_visibility', '', 0, 1),
(8, 8, 'product_visibility', '', 0, 5),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 1),
(14, 14, 'product_visibility', '', 0, 1),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'nav_menu', '', 0, 9),
(17, 17, 'nav_menu', '', 0, 4),
(18, 18, 'product_cat', '', 0, 20),
(19, 19, 'product_cat', '', 18, 0),
(20, 20, 'product_cat', '', 18, 0),
(21, 21, 'product_cat', '', 18, 5),
(22, 22, 'product_cat', '', 0, 2),
(23, 23, 'product_cat', '', 0, 0),
(24, 24, 'pa_color', '', 0, 4),
(25, 25, 'pa_color', '', 0, 3),
(26, 26, 'pa_color', '', 0, 4),
(27, 27, 'pa_size', '', 0, 1),
(28, 28, 'pa_size', '', 0, 1),
(29, 29, 'pa_size', '', 0, 1),
(30, 30, 'pa_color', '', 0, 3),
(31, 31, 'pa_color', '', 0, 1),
(32, 32, 'product_cat', '', 18, 16),
(33, 33, 'product_cat', '', 18, 9),
(34, 34, 'product_cat', '', 18, 9),
(35, 35, 'product_cat', '', 0, 7),
(36, 36, 'product_cat', '', 32, 10),
(37, 37, 'product_cat', '', 32, 2),
(38, 38, 'product_cat', '', 32, 4),
(39, 39, 'product_cat', '', 33, 4),
(40, 40, 'product_cat', '', 33, 4),
(41, 41, 'post_tag', '', 0, 0),
(42, 42, 'post_tag', '', 0, 1),
(43, 43, 'post_tag', '', 0, 1),
(44, 44, 'post_tag', '', 0, 1),
(45, 45, 'vtprd_rule_category', '', 0, 0),
(46, 46, 'nav_menu', '', 0, 5),
(47, 47, 'product_cat', '', 0, 0),
(48, 48, 'product_cat', '', 0, 0),
(49, 49, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'zaffar'),
(2, 1, 'first_name', 'Abdul'),
(3, 1, 'last_name', 'zaffar'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '244'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&posts_list_mode=list'),
(19, 1, 'wp_user-settings-time', '1603099552'),
(20, 1, '_woocommerce_tracks_anon_id', 'woo:aYAKQR6acNdBxSCQpGoIqLrz'),
(21, 1, 'last_update', '1603087363'),
(22, 1, 'woocommerce_admin_activity_panel_inbox_last_read', '1600935292548'),
(23, 1, 'wc_last_active', '1606089600'),
(24, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";}'),
(26, 1, 'nav_menu_recently_edited', '46'),
(27, 1, 'wp_woocommerce_product_import_mapping', 'a:40:{i:0;s:2:\"id\";i:1;s:4:\"type\";i:2;s:3:\"sku\";i:3;s:4:\"name\";i:4;s:9:\"published\";i:5;s:8:\"featured\";i:6;s:18:\"catalog_visibility\";i:7;s:17:\"short_description\";i:8;s:11:\"description\";i:9;s:17:\"date_on_sale_from\";i:10;s:15:\"date_on_sale_to\";i:11;s:10:\"tax_status\";i:12;s:9:\"tax_class\";i:13;s:12:\"stock_status\";i:14;s:14:\"stock_quantity\";i:15;s:16:\"low_stock_amount\";i:16;s:10:\"backorders\";i:17;s:17:\"sold_individually\";i:18;s:6:\"weight\";i:19;s:6:\"length\";i:20;s:5:\"width\";i:21;s:6:\"height\";i:22;s:15:\"reviews_allowed\";i:23;s:13:\"purchase_note\";i:24;s:10:\"sale_price\";i:25;s:13:\"regular_price\";i:26;s:12:\"category_ids\";i:27;s:7:\"tag_ids\";i:28;s:17:\"shipping_class_id\";i:29;s:6:\"images\";i:30;s:14:\"download_limit\";i:31;s:15:\"download_expiry\";i:32;s:9:\"parent_id\";i:33;s:16:\"grouped_products\";i:34;s:10:\"upsell_ids\";i:35;s:14:\"cross_sell_ids\";i:36;s:11:\"product_url\";i:37;s:11:\"button_text\";i:38;s:10:\"menu_order\";i:39;s:26:\"meta:inline_featured_image\";}'),
(28, 1, 'wp_product_import_error_log', 'a:10:{i:0;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:292;s:3:\"sku\";s:6:\"525488\";s:3:\"row\";s:34:\"CRYSTAL CANDLE, ID 292, SKU 525488\";}}}i:1;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:300;s:3:\"sku\";s:0:\"\";s:3:\"row\";s:19:\"ROSE QUARTZ, ID 300\";}}}i:2;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:309;s:3:\"sku\";s:0:\"\";s:3:\"row\";s:18:\"TIGERS EYE, ID 309\";}}}i:3;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:310;s:3:\"sku\";s:0:\"\";s:3:\"row\";s:18:\"Ritual Kit, ID 310\";}}}i:4;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:311;s:3:\"sku\";s:0:\"\";s:3:\"row\";s:16:\"AMETHYST, ID 311\";}}}i:5;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:312;s:3:\"sku\";s:0:\"\";s:3:\"row\";s:17:\"BLUE CHAL, ID 312\";}}}i:6;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:313;s:3:\"sku\";s:0:\"\";s:3:\"row\";s:19:\"Product Kit, ID 313\";}}}i:7;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:314;s:3:\"sku\";s:0:\"\";s:3:\"row\";s:18:\"Moon Stone, ID 314\";}}}i:8;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:548;s:3:\"sku\";s:0:\"\";s:3:\"row\";s:20:\"BT Headphone, ID 548\";}}}i:9;O:8:\"WP_Error\":2:{s:6:\"errors\";a:1:{s:34:\"woocommerce_product_importer_error\";a:1:{i:0;s:37:\"No matching product exists to update.\";}}s:10:\"error_data\";a:1:{s:34:\"woocommerce_product_importer_error\";a:3:{s:2:\"id\";i:551;s:3:\"sku\";s:0:\"\";s:3:\"row\";s:15:\"Speaker, ID 551\";}}}}'),
(29, 1, 'closedpostboxes_page', 'a:0:{}'),
(30, 1, 'metaboxhidden_page', 'a:0:{}'),
(31, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:46:\"commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(32, 1, 'screen_layout_page', '2'),
(35, 1, 'billing_first_name', 'Abdul'),
(36, 1, 'billing_last_name', 'zaffar'),
(37, 1, 'billing_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(38, 1, 'billing_city', 'vellore'),
(39, 1, 'billing_state', 'TN'),
(40, 1, 'billing_postcode', '632001'),
(41, 1, 'billing_country', 'IN'),
(42, 1, 'billing_email', 'abduljaffar94@gmail.com'),
(43, 1, 'billing_phone', '9876543210'),
(44, 1, 'shipping_method', 'a:1:{i:0;s:19:\"new_shipping_method\";}'),
(51, 2, 'nickname', 'zaffar-6912'),
(52, 2, 'first_name', ''),
(53, 2, 'last_name', ''),
(54, 2, 'description', ''),
(55, 2, 'rich_editing', 'true'),
(56, 2, 'syntax_highlighting', 'true'),
(57, 2, 'comment_shortcuts', 'false'),
(58, 2, 'admin_color', 'fresh'),
(59, 2, 'use_ssl', '0'),
(60, 2, 'show_admin_bar_front', 'true'),
(61, 2, 'locale', ''),
(62, 2, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(63, 2, 'wp_user_level', '0'),
(64, 2, 'session_tokens', 'a:1:{s:64:\"5fb4561471ab65bc6754711f4479d5a2ffc9b16d3c3346d0467aff5e472cac26\";a:4:{s:10:\"expiration\";i:1602593752;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1601384152;}}'),
(65, 2, 'wc_last_active', '1601337600'),
(68, 1, 'shipping_first_name', 'Abdul'),
(69, 1, 'shipping_last_name', 'zaffar'),
(70, 1, 'shipping_address_1', '17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore'),
(71, 1, 'shipping_city', 'vellore'),
(72, 1, 'shipping_state', 'TN'),
(73, 1, 'shipping_postcode', '632001'),
(74, 1, 'shipping_country', 'IN'),
(79, 2, 'last_update', '1601614195'),
(82, 1, 'closedpostboxes_product', 'a:0:{}'),
(83, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(89, 1, 'paying_customer', '1'),
(97, 1, 'session_tokens', 'a:1:{s:64:\"f1feeadd84926b015d8ee127d918678c7a7dec88d0fa5180f866b2015526d360\";a:4:{s:10:\"expiration\";i:1606298099;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.121 Safari/537.36\";s:5:\"login\";i:1606125299;}}'),
(106, 1, '_order_count', '7'),
(107, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"a0a080f42e6f13b3a2df133f073095dd\";a:6:{s:3:\"key\";s:32:\"a0a080f42e6f13b3a2df133f073095dd\";s:10:\"product_id\";i:122;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";}}}'),
(108, 1, 'closedpostboxes_shop_order', 'a:0:{}'),
(109, 1, 'metaboxhidden_shop_order', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'zaffar', '$P$BoJ/OkHYejAIo8HsPd2KXVEgFoOjTS0', 'zaffar', 'zaffar@pixlogix.com', 'http://localhost/EShop', '2020-09-24 06:05:36', '', 0, 'zaffar'),
(2, 'zaffar-6912', '$P$BfgmW./8NOiDXSTt8odO1jnmUBgkkB1', 'zaffar-6912', 'zaffar@gmail.com', '', '2020-09-29 12:55:51', '1601614194:$P$B9OUupiV4SojzaqbXkOi8og2UdIbo50', 0, 'zaffar-6912');

-- --------------------------------------------------------

--
-- Table structure for table `wp_vtprd_purchase_log`
--

CREATE TABLE `wp_vtprd_purchase_log` (
  `id` bigint(20) NOT NULL,
  `cart_parent_purchase_log_id` bigint(20) DEFAULT NULL,
  `purchaser_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchaser_ip_address` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `cart_total_discount_currency` decimal(11,2) DEFAULT NULL,
  `ruleset_object` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_object` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_vtprd_purchase_log_product`
--

CREATE TABLE `wp_vtprd_purchase_log_product` (
  `id` bigint(20) NOT NULL,
  `purchase_log_row_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_parent_purchase_log_id` bigint(20) DEFAULT NULL,
  `product_orig_unit_price` decimal(11,2) DEFAULT NULL,
  `product_total_discount_units` decimal(11,2) DEFAULT NULL,
  `product_total_discount_currency` decimal(11,2) DEFAULT NULL,
  `product_total_discount_percent` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_vtprd_purchase_log_product_rule`
--

CREATE TABLE `wp_vtprd_purchase_log_product_rule` (
  `id` bigint(20) NOT NULL,
  `purchase_log_product_row_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `rule_id` bigint(20) DEFAULT NULL,
  `cart_parent_purchase_log_id` bigint(20) DEFAULT NULL,
  `product_rule_discount_units` decimal(11,2) DEFAULT NULL,
  `product_rule_discount_dollars` decimal(11,2) DEFAULT NULL,
  `product_rule_discount_percent` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_vtprd_transient_cart_data`
--

CREATE TABLE `wp_vtprd_transient_cart_data` (
  `cart_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transient_data_type` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_date` timestamp NULL DEFAULT NULL,
  `transient_object` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0,
  `layout` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'info'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `icon`) VALUES
(1, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-24 08:05:45', NULL, 0, 'plain', '', 0, 'info'),
(2, 'wc-admin-onboarding-email-marketing', 'info', 'en_US', 'Tips, product updates, and inspiration', 'We\'re here for you - get tips, product updates and inspiration straight to your email box', '{}', 'unactioned', 'woocommerce-admin', '2020-09-24 08:05:46', NULL, 0, 'plain', '', 0, 'info'),
(3, 'wc-admin-marketing-intro', 'info', 'en_US', 'Connect with your audience', 'Grow your customer base and increase your sales with marketing tools built for WooCommerce.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-24 08:05:47', NULL, 0, 'plain', '', 0, 'info'),
(4, 'wc-admin-onboarding-profiler-reminder', 'update', 'en_US', 'Welcome to WooCommerce! Set up your store and start selling', 'We\'re here to help you going through the most important steps to get your store up and running.', '{}', 'actioned', 'woocommerce-admin', '2020-09-24 08:07:17', NULL, 0, 'plain', '', 0, 'info'),
(5, 'ecomm-need-help-setting-up-your-store', 'info', 'en_US', 'Need help setting up your Store?', 'Schedule a free 30-min <a href=\"https://wordpress.com/support/concierge-support/\">quick start session</a> and get help from our specialists. We’re happy to walk through setup steps, show you around the WordPress.com dashboard, troubleshoot any issues you may have, and help you the find the features you need to accomplish your goals for your site.', '{}', 'pending', 'woocommerce.com', '2020-09-24 08:11:53', NULL, 0, 'plain', '', 0, 'info'),
(6, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Services', 'WooCommerce Services helps get your store “ready to sell” as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '{}', 'pending', 'woocommerce.com', '2020-09-24 08:11:53', NULL, 0, 'plain', '', 0, 'info'),
(7, 'ecomm-unique-shopping-experience', 'info', 'en_US', 'For a shopping experience as unique as your customers', 'Product Add-Ons allow your customers to personalize products while they’re shopping on your online store. No more follow-up email requests—customers get what they want, before they’re done checking out. Learn more about this extension that comes included in your plan.', '{}', 'pending', 'woocommerce.com', '2020-09-24 08:11:53', NULL, 0, 'plain', '', 0, 'info'),
(8, 'wc-admin-test-checkout', 'info', 'en_US', 'Don\'t forget to test your checkout', 'Make sure that your checkout is working properly before you launch your store. Go through your checkout process in its entirety: from adding a product to your cart, choosing a shipping location, and making a payment.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-24 08:14:32', NULL, 0, 'plain', '', 0, 'info'),
(9, 'wc-admin-personalize-store', 'info', 'en_US', 'Personalize your store\'s homepage', 'The homepage is one of the most important entry points in your store. When done right it can lead to higher conversions and engagement. Don\'t forget to personalize the homepage that we created for your store during the onboarding.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-25 08:09:31', NULL, 0, 'plain', '', 0, 'info'),
(10, 'wc-admin-launch-checklist', 'info', 'en_US', 'Ready to launch your store?', 'To make sure you never get that sinking \"what did I forget\" feeling, we\'ve put together the essential pre-launch checklist.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-25 08:09:32', NULL, 0, 'plain', '', 0, 'info'),
(11, 'wc-admin-mobile-app', 'info', 'en_US', 'Install Woo mobile app', 'Install the WooCommerce mobile app to manage orders, receive sales notifications, and view key metrics — wherever you are.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-26 08:05:50', NULL, 0, 'plain', '', 0, 'info'),
(12, 'wc-admin-learn-more-about-product-settings', 'info', 'en_US', 'Learn more about Product Settings', 'In this video you\'ll find information about configuring product settings, such as how they are displayed, editing inventory options and so on.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-26 08:05:51', NULL, 0, 'plain', '', 0, 'info'),
(13, 'wc-admin-online-clothing-store', 'info', 'en_US', 'Start your online clothing store', 'Starting a fashion website is exciting but it may seem overwhelming as well. In this article, we\'ll walk you through the setup process, teach you to create successful product listings, and show you how to market to your ideal audience.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-26 08:05:51', NULL, 0, 'plain', '', 0, 'info'),
(14, 'wc-admin-need-some-inspiration', 'info', 'en_US', 'Do you need some inspiration?', 'Check some of our favorite customer stories from entrepreneurs, agencies, and developers in our global community.', '{}', 'unactioned', 'woocommerce-admin', '2020-09-29 08:06:30', NULL, 0, 'plain', '', 0, 'info'),
(15, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Help WooCommerce improve with usage tracking', 'Gathering usage data allows us to improve WooCommerce. Your store will be considered as we evaluate new features, judge the quality of an update, or determine if an improvement makes sense. You can always visit the <a href=\"http://localhost/EShop/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com\" target=\"_blank\">Settings</a> and choose to stop sharing data. <a href=\"https://woocommerce.com/usage-tracking\" target=\"_blank\">Read more</a> about what data we collect.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-01 08:19:31', NULL, 0, 'plain', '', 0, 'info'),
(17, 'wc-admin-store-notice-giving-feedback-2', 'info', 'en_US', 'Give feedback', 'Now that you’ve chosen us as a partner, our goal is to make sure we\'re providing the right tools to meet your needs. We\'re looking forward to having your feedback on the store setup experience so we can improve it in the future.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-02 08:05:58', NULL, 0, 'plain', '', 0, 'info'),
(18, 'wc-admin-insight-first-sale', 'survey', 'en_US', 'Did you know?', 'A WooCommerce powered store needs on average 31 days to get the first sale. You\'re on the right track! Do you find this type of insight useful?', '{}', 'unactioned', 'woocommerce-admin', '2020-10-02 08:05:58', NULL, 0, 'plain', '', 0, 'info'),
(19, 'wc-admin-home-screen-feedback', 'info', 'en_US', 'Help us improve the WooCommerce Home screen', 'We\'d love your input to shape the future of the WooCommerce Home screen together. Feel free to share any feedback, ideas or suggestions that you have.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-06 08:06:28', NULL, 0, 'plain', '', 0, 'info'),
(20, 'wc-admin-orders-milestone', 'info', 'en_US', 'First order received', 'Congratulations on getting your first order! Now is a great time to learn how to manage your orders.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-06 12:06:22', NULL, 0, 'plain', '', 0, 'info'),
(21, 'wc-admin-new-sales-record', 'info', 'en_US', 'New sales record!', 'Woohoo, October 6th was your record day for sales! Net Sales was ₹154.00 beating the previous record of ₹147.00 set on October 1st.', '{\"old_record_date\":\"2020-10-01\",\"old_record_amt\":147,\"new_record_date\":\"2020-10-06\",\"new_record_amt\":154}', 'unactioned', 'woocommerce-admin', '2020-10-07 08:08:20', NULL, 0, 'plain', '', 0, 'info'),
(22, 'wc-admin-customize-store-with-blocks', 'info', 'en_US', 'Customize your online store with WooCommerce blocks', 'With our blocks, you can select and display products, categories, filters, and more virtually anywhere on your site — no need to use shortcodes or edit lines of code. Learn more about how to use each one of them.', '{}', 'unactioned', 'woocommerce-admin', '2020-10-08 12:09:51', NULL, 0, 'plain', '', 0, 'info');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`, `actioned_text`) VALUES
(1, 1, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', 0, ''),
(2, 2, 'yes-please', 'Yes please!', 'https://woocommerce.us8.list-manage.com/subscribe/post?u=2c1434dc56f9506bf3c3ecd21&amp;id=13860df971&amp;SIGNUPPAGE=plugin', 'actioned', 0, ''),
(3, 3, 'open-marketing-hub', 'Open marketing hub', 'http://localhost/EShop/wp-admin/admin.php?page=wc-admin&path=/marketing', 'actioned', 0, ''),
(4, 4, 'continue-profiler', 'Continue Store Setup', 'http://localhost/EShop/wp-admin/admin.php?page=wc-admin&enable_onboarding=1', 'unactioned', 1, ''),
(5, 4, 'skip-profiler', 'Skip Setup', 'http://localhost/EShop/wp-admin/admin.php?page=wc-admin&reset_profiler=0', 'actioned', 0, ''),
(6, 5, 'set-up-concierge', 'Schedule free session', 'https://wordpress.com/me/concierge', 'actioned', 1, ''),
(7, 6, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-services/?utm_source=inbox', 'unactioned', 1, ''),
(8, 7, 'learn-more-ecomm-unique-shopping-experience', 'Learn more', 'https://docs.woocommerce.com/document/product-add-ons/?utm_source=inbox', 'actioned', 1, ''),
(9, 8, 'test-checkout', 'Test checkout', 'http://localhost/EShop/index.php/shop/', 'actioned', 0, ''),
(10, 9, 'personalize-homepage', 'Personalize homepage', 'http://localhost/EShop/wp-admin/post.php?post=19&action=edit', 'actioned', 1, ''),
(11, 10, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox', 'actioned', 0, ''),
(12, 11, 'learn-more', 'Learn more', 'https://woocommerce.com/mobile/', 'actioned', 0, ''),
(13, 12, 'learn-more-about-product-settings', 'Watch tutorial', 'https://www.youtube.com/watch?v=FEmwJsE8xDY&t=', 'actioned', 1, ''),
(14, 13, 'online-clothing-store', 'Learn more', 'https://woocommerce.com/posts/starting-an-online-clothing-store/?utm_source=inbox', 'actioned', 1, ''),
(15, 14, 'need-some-inspiration', 'See success stories', 'https://woocommerce.com/success-stories/?utm_source=inbox', 'actioned', 1, ''),
(16, 15, 'tracking-opt-in', 'Activate usage tracking', '', 'actioned', 1, ''),
(18, 17, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/new-onboarding-survey', 'actioned', 0, ''),
(19, 18, 'affirm-insight-first-sale', 'Yes', '', 'actioned', 0, 'Thanks for your feedback'),
(20, 18, 'deny-insight-first-sale', 'No', '', 'actioned', 0, 'Thanks for your feedback'),
(21, 19, 'home-screen-feedback-share-feedback', 'Share feedback', 'https://automattic.survey.fm/home-screen-survey', 'actioned', 0, ''),
(22, 20, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/managing-orders/?utm_source=inbox', 'actioned', 0, ''),
(23, 21, 'view-report', 'View report', '?page=wc-admin&path=/analytics/revenue&period=custom&compare=previous_year&after=2020-10-06&before=2020-10-06', 'actioned', 0, ''),
(24, 22, 'customize-store-with-blocks', 'Learn more', 'https://woocommerce.com/posts/how-to-customize-your-online-store-with-woocommerce-blocks/?utm_source=inbox', 'actioned', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_customer_lookup`
--

INSERT INTO `wp_wc_customer_lookup` (`customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 1, 'zaffar', 'Abdul', 'zaffar', 'zaffar@pixlogix.com', '2020-11-22 18:30:00', '2020-09-24 00:35:36', 'IN', '632001', 'vellore', 'TN'),
(2, NULL, '', '', '', '', '2020-10-10 05:59:33', NULL, '', '', '', ''),
(3, NULL, '', '', '', '', '2020-10-10 05:59:48', NULL, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT 0,
  `product_gross_revenue` double NOT NULL DEFAULT 0,
  `coupon_amount` double NOT NULL DEFAULT 0,
  `tax_amount` double NOT NULL DEFAULT 0,
  `shipping_amount` double NOT NULL DEFAULT 0,
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_order_product_lookup`
--

INSERT INTO `wp_wc_order_product_lookup` (`order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`) VALUES
(1, 167, 81, 0, 1, '2020-09-28 04:42:29', 1, 15, 15, 0, 0, 0, 0),
(3, 211, 132, 0, 1, '2020-10-01 12:37:06', 1, 99, 99, 0, 0, 0, 0),
(4, 211, 118, 0, 1, '2020-10-01 12:37:06', 1, 44, 44, 0, 0, 0, 0),
(5, 211, 82, 0, 1, '2020-10-01 12:37:06', 1, 2, 2, 0, 0, 0, 0),
(8, 212, 82, 0, 1, '2020-10-01 12:46:06', 1, 2, 2, 0, 0, 0, 0),
(10, 236, 89, 0, 1, '2020-10-06 06:00:32', 2, 36, 36, 0, 0, 0, 0),
(11, 236, 118, 0, 1, '2020-10-06 06:00:32', 1, 44, 44, 0, 0, 0, 0),
(14, 237, 81, 0, 1, '2020-10-06 11:13:18', 2, 30, 30, 0, 0, 0, 0),
(15, 237, 118, 0, 1, '2020-10-06 11:13:18', 1, 44, 44, 0, 0, 0, 0),
(18, 241, 69, 0, 1, '2020-10-16 13:32:11', 1, 15, 20, 0, 0, 5, 0),
(19, 241, 122, 0, 1, '2020-10-16 13:32:11', 1, 99, 104, 0, 0, 5, 0),
(23, 242, 132, 0, 1, '2020-10-19 06:02:44', 1, 99, 109, 0, 0, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT 0,
  `total_sales` double NOT NULL DEFAULT 0,
  `tax_total` double NOT NULL DEFAULT 0,
  `shipping_total` double NOT NULL DEFAULT 0,
  `net_total` double NOT NULL DEFAULT 0,
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_order_stats`
--

INSERT INTO `wp_wc_order_stats` (`order_id`, `parent_id`, `date_created`, `date_created_gmt`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`) VALUES
(167, 0, '2020-09-28 04:42:29', '2020-09-28 04:42:29', 1, 15, 0, 0, 15, 0, 'wc-on-hold', 1),
(211, 0, '2020-10-01 12:37:06', '2020-10-01 12:37:06', 3, 145, 0, 0, 145, 1, 'wc-on-hold', 1),
(212, 0, '2020-10-01 12:46:06', '2020-10-01 12:46:06', 1, 2, 0, 0, 2, 1, 'wc-on-hold', 1),
(236, 0, '2020-10-06 06:00:32', '2020-10-06 06:00:32', 3, 80, 0, 0, 80, 1, 'wc-cancelled', 1),
(237, 0, '2020-10-06 11:13:18', '2020-10-06 11:13:18', 3, 74, 0, 0, 74, 1, 'wc-completed', 1),
(239, 0, '2020-10-10 11:29:33', '2020-10-10 11:29:33', 0, 0, 0, 0, 0, 0, 'wc-pending', 2),
(240, 0, '2020-10-10 11:29:48', '2020-10-10 11:29:48', 0, 0, 0, 0, 0, 0, 'wc-pending', 3),
(241, 0, '2020-10-16 13:32:11', '2020-10-16 13:32:11', 2, 130.2, 0, 10, 120.2, 1, 'wc-processing', 1),
(242, 0, '2020-10-19 06:02:44', '2020-10-19 06:02:44', 1, 114.45, 0, 10, 104.45, 1, 'wc-processing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_order_tax_lookup`
--

INSERT INTO `wp_wc_order_tax_lookup` (`order_id`, `tax_rate_id`, `date_created`, `shipping_tax`, `order_tax`, `total_tax`) VALUES
(167, 1, '2020-09-28 04:42:29', 0, 0, 0),
(211, 1, '2020-10-01 12:37:06', 0, 0, 0),
(212, 1, '2020-10-01 12:46:06', 0, 0, 0),
(236, 1, '2020-10-06 06:00:32', 0, 0, 0),
(237, 1, '2020-10-06 11:13:18', 0, 0, 0),
(241, 1, '2020-10-16 13:32:11', 0, 0, 0),
(242, 1, '2020-10-19 06:02:44', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0,
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(18, '', 0, 0, '149.0000', '149.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(69, 'woo-vneck-tee', 0, 0, '15.0000', '20.0000', 0, NULL, 'instock', 0, '0.00', 1, 'taxable', ''),
(70, 'woo-hoodie', 0, 0, '42.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(71, 'woo-hoodie-with-logo', 0, 0, '45.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(72, 'woo-tshirt', 0, 0, '18.0000', '18.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(73, 'woo-beanie', 0, 0, '18.0000', '18.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(74, 'woo-belt', 0, 0, '55.0000', '55.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(75, 'woo-cap', 0, 0, '16.0000', '16.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(76, 'woo-sunglasses', 0, 0, '90.0000', '90.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(77, 'woo-hoodie-with-pocket', 0, 0, '35.0000', '35.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(78, 'woo-hoodie-with-zipper', 0, 0, '45.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(79, 'woo-long-sleeve-tee', 0, 0, '25.0000', '25.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(80, 'woo-polo', 0, 0, '20.0000', '20.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(81, 'woo-album', 1, 1, '15.0000', '15.0000', 0, NULL, 'instock', 0, '0.00', 3, 'taxable', ''),
(82, 'woo-single', 1, 1, '2.0000', '2.0000', 1, NULL, 'instock', 0, '0.00', 2, 'taxable', ''),
(83, 'woo-vneck-tee-red', 0, 0, '20.0000', '20.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(84, 'woo-vneck-tee-green', 0, 0, '20.0000', '20.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(85, 'woo-vneck-tee-blue', 0, 0, '15.0000', '15.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(86, 'woo-hoodie-red', 0, 0, '42.0000', '42.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(87, 'woo-hoodie-green', 0, 0, '45.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(88, 'woo-hoodie-blue', 0, 0, '45.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(89, 'Woo-tshirt-logo', 0, 0, '18.0000', '18.0000', 0, NULL, 'instock', 0, '0.00', 2, 'taxable', ''),
(90, 'Woo-beanie-logo', 0, 0, '18.0000', '18.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(91, 'logo-collection', 0, 0, '18.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(92, 'wp-pennant', 0, 0, '11.0500', '11.0500', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(93, 'woo-hoodie-blue-logo', 0, 0, '45.0000', '45.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(116, '', 0, 0, '99.0000', '99.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(118, '', 0, 0, '44.0000', '44.0000', 1, NULL, 'instock', 0, '0.00', 3, 'taxable', ''),
(120, '', 0, 0, '99.0000', '99.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(122, '', 0, 0, '99.0000', '99.0000', 1, NULL, 'instock', 1, '5.00', 1, 'taxable', ''),
(124, '', 0, 0, '99.0000', '99.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(125, '', 0, 0, '99.0000', '99.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(128, '', 0, 0, '99.0000', '99.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(132, '', 0, 0, '99.0000', '99.0000', 1, NULL, 'instock', 0, '0.00', 2, 'taxable', ''),
(137, '', 0, 0, '99.0000', '99.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(139, '', 0, 0, '99.0000', '99.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(140, '', 0, 0, '99.0000', '99.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(141, '', 0, 0, '50.0000', '50.0000', 1, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(142, '', 0, 0, '555.0000', '555.0000', 1, NULL, 'instock', 1, '4.00', 0, 'taxable', ''),
(247, '525487', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(248, '525488', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_reserved_stock`
--

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT 0,
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'select', 'menu_order', 1),
(2, 'size', 'Size', 'select', 'menu_order', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_downloadable_product_permissions`
--

INSERT INTO `wp_woocommerce_downloadable_product_permissions` (`permission_id`, `download_id`, `product_id`, `order_id`, `order_key`, `user_email`, `user_id`, `downloads_remaining`, `access_granted`, `access_expires`, `download_count`) VALUES
(1, '875c70cc-47fe-4605-83c9-a45363f46d13', 81, 237, 'wc_order_EiNG4rVFd8aie', 'abduljaffar94@gmail.com', 1, '2', '2020-10-06 00:00:00', '2020-10-07 00:00:00', 0),
(2, '29c036f3-fb42-449b-b41b-1ffccea5e674', 81, 237, 'wc_order_EiNG4rVFd8aie', 'abduljaffar94@gmail.com', 1, '2', '2020-10-06 00:00:00', '2020-10-07 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '81'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '15'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '15'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}s:8:\"subtotal\";a:1:{i:1;s:1:\"0\";}}'),
(10, 2, 'rate_id', '1'),
(11, 2, 'label', 'Tax'),
(12, 2, 'compound', ''),
(13, 2, 'tax_amount', '0'),
(14, 2, 'shipping_tax_amount', '0'),
(15, 2, 'rate_percent', '0'),
(16, 3, '_product_id', '132'),
(17, 3, '_variation_id', '0'),
(18, 3, '_qty', '1'),
(19, 3, '_tax_class', ''),
(20, 3, '_line_subtotal', '99'),
(21, 3, '_line_subtotal_tax', '0'),
(22, 3, '_line_total', '99'),
(23, 3, '_line_tax', '0'),
(24, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}s:8:\"subtotal\";a:1:{i:1;s:1:\"0\";}}'),
(25, 4, '_product_id', '118'),
(26, 4, '_variation_id', '0'),
(27, 4, '_qty', '1'),
(28, 4, '_tax_class', ''),
(29, 4, '_line_subtotal', '44'),
(30, 4, '_line_subtotal_tax', '0'),
(31, 4, '_line_total', '44'),
(32, 4, '_line_tax', '0'),
(33, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}s:8:\"subtotal\";a:1:{i:1;s:1:\"0\";}}'),
(34, 5, '_product_id', '82'),
(35, 5, '_variation_id', '0'),
(36, 5, '_qty', '1'),
(37, 5, '_tax_class', ''),
(38, 5, '_line_subtotal', '2'),
(39, 5, '_line_subtotal_tax', '0'),
(40, 5, '_line_total', '2'),
(41, 5, '_line_tax', '0'),
(42, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}s:8:\"subtotal\";a:1:{i:1;s:1:\"0\";}}'),
(43, 6, 'method_id', 'free_shipping'),
(44, 6, 'instance_id', '2'),
(45, 6, 'cost', '0.00'),
(46, 6, 'total_tax', '0'),
(47, 6, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(48, 6, 'Items', 'Pink T-Shirt &times; 1, Doll Dress &times; 1'),
(49, 7, 'rate_id', '1'),
(50, 7, 'label', 'Tax'),
(51, 7, 'compound', ''),
(52, 7, 'tax_amount', '0'),
(53, 7, 'shipping_tax_amount', '0'),
(54, 7, 'rate_percent', '0'),
(55, 8, '_product_id', '82'),
(56, 8, '_variation_id', '0'),
(57, 8, '_qty', '1'),
(58, 8, '_tax_class', ''),
(59, 8, '_line_subtotal', '2'),
(60, 8, '_line_subtotal_tax', '0'),
(61, 8, '_line_total', '2'),
(62, 8, '_line_tax', '0'),
(63, 8, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}s:8:\"subtotal\";a:1:{i:1;s:1:\"0\";}}'),
(64, 9, 'rate_id', '1'),
(65, 9, 'label', 'Tax'),
(66, 9, 'compound', ''),
(67, 9, 'tax_amount', '0'),
(68, 9, 'shipping_tax_amount', '0'),
(69, 9, 'rate_percent', '0'),
(70, 10, '_product_id', '89'),
(71, 10, '_variation_id', '0'),
(72, 10, '_qty', '2'),
(73, 10, '_tax_class', ''),
(74, 10, '_line_subtotal', '36'),
(75, 10, '_line_subtotal_tax', '0'),
(76, 10, '_line_total', '36'),
(77, 10, '_line_tax', '0'),
(78, 10, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}s:8:\"subtotal\";a:1:{i:1;s:1:\"0\";}}'),
(79, 11, '_product_id', '118'),
(80, 11, '_variation_id', '0'),
(81, 11, '_qty', '1'),
(82, 11, '_tax_class', ''),
(83, 11, '_line_subtotal', '44'),
(84, 11, '_line_subtotal_tax', '0'),
(85, 11, '_line_total', '44'),
(86, 11, '_line_tax', '0'),
(87, 11, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}s:8:\"subtotal\";a:1:{i:1;s:1:\"0\";}}'),
(88, 12, 'method_id', 'free_shipping'),
(89, 12, 'instance_id', '2'),
(90, 12, 'cost', '0.00'),
(91, 12, 'total_tax', '0'),
(92, 12, 'taxes', 'a:1:{s:5:\"total\";a:1:{i:1;s:0:\"\";}}'),
(93, 12, 'Items', 'T-Shirt with Logo &times; 2, Doll Dress &times; 1'),
(94, 13, 'rate_id', '1'),
(95, 13, 'label', 'Tax'),
(96, 13, 'compound', ''),
(97, 13, 'tax_amount', '0'),
(98, 13, 'shipping_tax_amount', '0'),
(99, 13, 'rate_percent', '0'),
(100, 14, '_product_id', '81'),
(101, 14, '_variation_id', '0'),
(102, 14, '_qty', '2'),
(103, 14, '_tax_class', ''),
(104, 14, '_line_subtotal', '30'),
(105, 14, '_line_subtotal_tax', '0'),
(106, 14, '_line_total', '30'),
(107, 14, '_line_tax', '0'),
(108, 14, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}s:8:\"subtotal\";a:1:{i:1;s:1:\"0\";}}'),
(109, 15, '_product_id', '118'),
(110, 15, '_variation_id', '0'),
(111, 15, '_qty', '1'),
(112, 15, '_tax_class', ''),
(113, 15, '_line_subtotal', '44'),
(114, 15, '_line_subtotal_tax', '0'),
(115, 15, '_line_total', '44'),
(116, 15, '_line_tax', '0'),
(117, 15, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}s:8:\"subtotal\";a:1:{i:1;s:1:\"0\";}}'),
(118, 16, 'method_id', 'free_shipping'),
(119, 16, 'instance_id', '2'),
(120, 16, 'cost', '0.00'),
(121, 16, 'total_tax', '0'),
(122, 16, 'taxes', 'a:1:{s:5:\"total\";a:1:{i:1;s:0:\"\";}}'),
(123, 16, 'Items', 'Doll Dress &times; 1'),
(124, 17, 'rate_id', '1'),
(125, 17, 'label', 'Tax'),
(126, 17, 'compound', ''),
(127, 17, 'tax_amount', '0'),
(128, 17, 'shipping_tax_amount', '0'),
(129, 17, 'rate_percent', '0'),
(130, 18, '_product_id', '69'),
(131, 18, '_variation_id', '0'),
(132, 18, '_qty', '1'),
(133, 18, '_tax_class', ''),
(134, 18, '_line_subtotal', '15'),
(135, 18, '_line_subtotal_tax', '0'),
(136, 18, '_line_total', '15'),
(137, 18, '_line_tax', '0'),
(138, 18, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}s:8:\"subtotal\";a:1:{i:1;s:1:\"0\";}}'),
(139, 18, 'pa_color', ''),
(140, 18, 'pa_size', ''),
(141, 19, '_product_id', '122'),
(142, 19, '_variation_id', '0'),
(143, 19, '_qty', '1'),
(144, 19, '_tax_class', ''),
(145, 19, '_line_subtotal', '99'),
(146, 19, '_line_subtotal_tax', '0'),
(147, 19, '_line_total', '99'),
(148, 19, '_line_tax', '0'),
(149, 19, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}s:8:\"subtotal\";a:1:{i:1;s:1:\"0\";}}'),
(150, 20, '_fee_amount', '6.2'),
(151, 20, '_tax_class', '0'),
(152, 20, '_tax_status', 'taxable'),
(153, 20, '_line_total', '6.2'),
(154, 20, '_line_tax', '0'),
(155, 20, '_line_tax_data', 'a:1:{s:5:\"total\";a:1:{i:1;s:0:\"\";}}'),
(156, 21, 'method_id', 'new_shipping_method'),
(157, 21, 'instance_id', '0'),
(158, 21, 'cost', '10.00'),
(159, 21, 'total_tax', '0'),
(160, 21, 'taxes', 'a:1:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}}'),
(161, 22, 'rate_id', '1'),
(162, 22, 'label', 'Tax'),
(163, 22, 'compound', ''),
(164, 22, 'tax_amount', '0'),
(165, 22, 'shipping_tax_amount', '0'),
(166, 22, 'rate_percent', '0'),
(167, 23, '_product_id', '132'),
(168, 23, '_variation_id', '0'),
(169, 23, '_qty', '1'),
(170, 23, '_tax_class', ''),
(171, 23, '_line_subtotal', '99'),
(172, 23, '_line_subtotal_tax', '0'),
(173, 23, '_line_total', '99'),
(174, 23, '_line_tax', '0'),
(175, 23, '_line_tax_data', 'a:2:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}s:8:\"subtotal\";a:1:{i:1;s:1:\"0\";}}'),
(176, 24, '_fee_amount', '5.45'),
(177, 24, '_tax_class', '0'),
(178, 24, '_tax_status', 'taxable'),
(179, 24, '_line_total', '5.45'),
(180, 24, '_line_tax', '0'),
(181, 24, '_line_tax_data', 'a:1:{s:5:\"total\";a:0:{}}'),
(182, 25, 'method_id', 'new_shipping_method'),
(183, 25, 'instance_id', '0'),
(184, 25, 'cost', '10.00'),
(185, 25, 'total_tax', '0'),
(186, 25, 'taxes', 'a:1:{s:5:\"total\";a:1:{i:1;s:1:\"0\";}}'),
(187, 26, 'rate_id', '1'),
(188, 26, 'label', 'Tax'),
(189, 26, 'compound', ''),
(190, 26, 'tax_amount', '0'),
(191, 26, 'shipping_tax_amount', '0'),
(192, 26, 'rate_percent', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Album', 'line_item', 167),
(2, 'TAX-1', 'tax', 167),
(3, 'Pink T-Shirt', 'line_item', 211),
(4, 'Doll Dress', 'line_item', 211),
(5, 'Single', 'line_item', 211),
(6, 'Free shipping', 'shipping', 211),
(7, 'TAX-1', 'tax', 211),
(8, 'Single', 'line_item', 212),
(9, 'TAX-1', 'tax', 212),
(10, 'T-Shirt with Logo', 'line_item', 236),
(11, 'Doll Dress', 'line_item', 236),
(12, 'Free shipping', 'shipping', 236),
(13, 'TAX-1', 'tax', 236),
(14, 'Album', 'line_item', 237),
(15, 'Doll Dress', 'line_item', 237),
(16, 'Free shipping', 'shipping', 237),
(17, 'TAX-1', 'tax', 237),
(18, 'V-Neck T-Shirt', 'line_item', 241),
(19, 'A T-Shirt', 'line_item', 241),
(20, 'A small fee', 'fee', 241),
(21, 'New Shipping', 'shipping', 241),
(22, 'TAX-1', 'tax', 241),
(23, 'Pink T-Shirt', 'line_item', 242),
(24, 'A small fee', 'fee', 242),
(25, 'New Shipping', 'shipping', 242),
(26, 'TAX-1', 'tax', 242);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(465, '1', 'a:11:{s:4:\"cart\";s:427:\"a:1:{s:32:\"a0a080f42e6f13b3a2df133f073095dd\";a:11:{s:3:\"key\";s:32:\"a0a080f42e6f13b3a2df133f073095dd\";s:10:\"product_id\";i:122;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:1:{i:1;d:0;}s:5:\"total\";a:1:{i:1;d:0;}}s:13:\"line_subtotal\";d:99;s:17:\"line_subtotal_tax\";d:0;s:10:\"line_total\";d:99;s:8:\"line_tax\";d:0;}}\";s:11:\"cart_totals\";s:423:\"a:15:{s:8:\"subtotal\";s:5:\"99.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:5:\"10.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:1:{i:1;d:0;}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";s:5:\"99.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:1:{i:1;d:0;}s:9:\"fee_total\";s:4:\"5.45\";s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"114.45\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:376:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_27f66ff66679167db39ded7ac46a86db\";s:5:\"rates\";a:1:{s:19:\"new_shipping_method\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:19:\"new_shipping_method\";s:9:\"method_id\";s:19:\"new_shipping_method\";s:11:\"instance_id\";i:0;s:5:\"label\";s:12:\"New Shipping\";s:4:\"cost\";s:5:\"10.00\";s:5:\"taxes\";a:1:{i:1;d:0;}}s:12:\"\0*\0meta_data\";a:0:{}}}}\";s:25:\"previous_shipping_methods\";s:47:\"a:1:{i:0;a:1:{i:0;s:19:\"new_shipping_method\";}}\";s:23:\"chosen_shipping_methods\";s:37:\"a:1:{i:0;s:19:\"new_shipping_method\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:1040:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-10-19T06:02:43+00:00\";s:8:\"postcode\";s:6:\"632001\";s:4:\"city\";s:7:\"vellore\";s:9:\"address_1\";s:59:\"17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore\";s:7:\"address\";s:59:\"17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"TN\";s:7:\"country\";s:2:\"IN\";s:17:\"shipping_postcode\";s:6:\"632001\";s:13:\"shipping_city\";s:7:\"vellore\";s:18:\"shipping_address_1\";s:59:\"17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore\";s:16:\"shipping_address\";s:59:\"17/5 Gumastha sheik abdul khadar street R.N.Palayam vellore\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"TN\";s:16:\"shipping_country\";s:2:\"IN\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:5:\"Abdul\";s:9:\"last_name\";s:6:\"zaffar\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:10:\"9876543210\";s:5:\"email\";s:23:\"abduljaffar94@gmail.com\";s:19:\"shipping_first_name\";s:5:\"Abdul\";s:18:\"shipping_last_name\";s:6:\"zaffar\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1606298175);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(0, 1, 'flat_rate', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_tax_rates`
--

INSERT INTO `wp_woocommerce_tax_rates` (`tax_rate_id`, `tax_rate_country`, `tax_rate_state`, `tax_rate`, `tax_rate_name`, `tax_rate_priority`, `tax_rate_compound`, `tax_rate_shipping`, `tax_rate_order`, `tax_rate_class`) VALUES
(1, '', '', '0.0000', 'Tax', 1, 0, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl`
--

CREATE TABLE `wp_yith_wcwl` (
  `ID` bigint(20) NOT NULL,
  `prod_id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `wishlist_id` bigint(20) DEFAULT NULL,
  `position` int(11) DEFAULT 0,
  `original_price` decimal(9,3) DEFAULT NULL,
  `original_currency` char(3) DEFAULT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp(),
  `on_sale` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl`
--

INSERT INTO `wp_yith_wcwl` (`ID`, `prod_id`, `quantity`, `user_id`, `wishlist_id`, `position`, `original_price`, `original_currency`, `dateadded`, `on_sale`) VALUES
(4, 69, 1, 1, 1, 0, '15.000', 'INR', '2020-09-26 06:19:09', 0),
(8, 124, 1, 1, 1, 0, '49.000', 'INR', '2020-09-30 06:26:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_yith_wcwl_lists`
--

CREATE TABLE `wp_yith_wcwl_lists` (
  `ID` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `wishlist_slug` varchar(200) NOT NULL,
  `wishlist_name` text DEFAULT NULL,
  `wishlist_token` varchar(64) NOT NULL,
  `wishlist_privacy` tinyint(1) NOT NULL DEFAULT 0,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp(),
  `expiration` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_yith_wcwl_lists`
--

INSERT INTO `wp_yith_wcwl_lists` (`ID`, `user_id`, `session_id`, `wishlist_slug`, `wishlist_name`, `wishlist_token`, `wishlist_privacy`, `is_default`, `dateadded`, `expiration`) VALUES
(1, 1, NULL, '', '', 'NZ7I4THEG19O', 0, 1, '2020-09-26 05:59:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indexes for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_vtprd_purchase_log`
--
ALTER TABLE `wp_vtprd_purchase_log`
  ADD KEY `id` (`id`,`cart_parent_purchase_log_id`);

--
-- Indexes for table `wp_vtprd_purchase_log_product`
--
ALTER TABLE `wp_vtprd_purchase_log_product`
  ADD KEY `id` (`id`,`purchase_log_row_id`,`product_id`);

--
-- Indexes for table `wp_vtprd_purchase_log_product_rule`
--
ALTER TABLE `wp_vtprd_purchase_log_product_rule`
  ADD KEY `id` (`id`,`purchase_log_product_row_id`,`rule_id`);

--
-- Indexes for table `wp_vtprd_transient_cart_data`
--
ALTER TABLE `wp_vtprd_transient_cart_data`
  ADD UNIQUE KEY `table_key` (`cart_id`,`transient_data_type`),
  ADD KEY `id` (`cart_id`,`customer_id`,`cart_date`);

--
-- Indexes for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indexes for table `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indexes for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indexes for table `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indexes for table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indexes for table `wp_wc_reserved_stock`
--
ALTER TABLE `wp_wc_reserved_stock`
  ADD PRIMARY KEY (`order_id`,`product_id`);

--
-- Indexes for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `wishlist_token` (`wishlist_token`),
  ADD KEY `wishlist_slug` (`wishlist_slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4476;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7471;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2819;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_vtprd_purchase_log`
--
ALTER TABLE `wp_vtprd_purchase_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_vtprd_purchase_log_product`
--
ALTER TABLE `wp_vtprd_purchase_log_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_vtprd_purchase_log_product_rule`
--
ALTER TABLE `wp_vtprd_purchase_log_product_rule`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=466;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_yith_wcwl`
--
ALTER TABLE `wp_yith_wcwl`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_yith_wcwl_lists`
--
ALTER TABLE `wp_yith_wcwl_lists`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
