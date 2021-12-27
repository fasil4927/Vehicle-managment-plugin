-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 06:28 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-12-25 05:29:03', '2021-12-25 05:29:03', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/vehicle', 'yes'),
(2, 'home', 'http://localhost/vehicle', 'yes'),
(3, 'blogname', 'Vehicle Transport', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'fasil4927@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:120:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:18:\"vehicle_details/?$\";s:35:\"index.php?post_type=vehicle_details\";s:48:\"vehicle_details/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=vehicle_details&feed=$matches[1]\";s:43:\"vehicle_details/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?post_type=vehicle_details&feed=$matches[1]\";s:35:\"vehicle_details/page/([0-9]{1,})/?$\";s:53:\"index.php?post_type=vehicle_details&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:43:\"vehicle_details/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"vehicle_details/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"vehicle_details/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"vehicle_details/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"vehicle_details/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"vehicle_details/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"vehicle_details/([^/]+)/embed/?$\";s:48:\"index.php?vehicle_details=$matches[1]&embed=true\";s:36:\"vehicle_details/([^/]+)/trackback/?$\";s:42:\"index.php?vehicle_details=$matches[1]&tb=1\";s:56:\"vehicle_details/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?vehicle_details=$matches[1]&feed=$matches[2]\";s:51:\"vehicle_details/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?vehicle_details=$matches[1]&feed=$matches[2]\";s:44:\"vehicle_details/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?vehicle_details=$matches[1]&paged=$matches[2]\";s:51:\"vehicle_details/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?vehicle_details=$matches[1]&cpage=$matches[2]\";s:40:\"vehicle_details/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?vehicle_details=$matches[1]&page=$matches[2]\";s:32:\"vehicle_details/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"vehicle_details/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"vehicle_details/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"vehicle_details/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"vehicle_details/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"vehicle_details/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"vehicle_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?vehicle_types=$matches[1]&feed=$matches[2]\";s:48:\"vehicle_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?vehicle_types=$matches[1]&feed=$matches[2]\";s:29:\"vehicle_type/([^/]+)/embed/?$\";s:46:\"index.php?vehicle_types=$matches[1]&embed=true\";s:41:\"vehicle_type/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?vehicle_types=$matches[1]&paged=$matches[2]\";s:23:\"vehicle_type/([^/]+)/?$\";s:35:\"index.php?vehicle_types=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=92&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:1;s:41:\"transporter-plugin/transporter-plugin.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '92', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1655962143', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1640586543;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1640626143;a:2:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1640626144;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1640669343;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640669354;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1640669359;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1641101343;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:1:{s:22:\"Cghv6fpqA4lEjqYTKKcLqB\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BjZOLQu9zx1/FFL8bih8/gG4l18PcP0\";s:10:\"created_at\";i:1640548005;}}', 'yes'),
(119, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(120, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.8.2.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-5.8.2-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-5.8.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.8.2\";s:7:\"version\";s:5:\"5.8.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1640583009;s:15:\"version_checked\";s:5:\"5.8.2\";s:12:\"translations\";a:0:{}}', 'no'),
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1640410215;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(127, '_site_transient_timeout_browser_5afd68b95f31f031e1a8d4e421f2fe0c', '1641014958', 'no'),
(128, '_site_transient_browser_5afd68b95f31f031e1a8d4e421f2fe0c', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"95.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, '_site_transient_timeout_php_check_a4e7a3af7060c530d791075f6e3eb5fa', '1641014959', 'no'),
(130, '_site_transient_php_check_a4e7a3af7060c530d791075f6e3eb5fa', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(149, 'finished_updating_comment_type', '1', 'yes'),
(150, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1640583013;s:7:\"checked\";a:5:{s:14:\"twentynineteen\";s:3:\"2.1\";s:21:\"twentyseventeen-child\";s:5:\"1.0.0\";s:15:\"twentyseventeen\";s:3:\"2.8\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(151, 'current_theme', 'Twenty Seventeen Child', 'yes'),
(152, 'theme_mods_twentyseventeen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1640459800;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(153, 'theme_switched', '', 'yes'),
(162, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(163, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(166, 'recently_activated', 'a:2:{s:33:\"classic-editor/classic-editor.php\";i:1640520905;s:27:\"transporter/transporter.php\";i:1640413321;}', 'yes'),
(177, 'recovery_mode_email_last_sent', '1640548005', 'yes'),
(194, 'theme_mods_twentyseventeen-child', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:12;s:6:\"social\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1640459404;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(253, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:1;i:12;}}', 'yes'),
(280, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":7,\"critical\":0}', 'yes'),
(287, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1640583013;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.2.1\";s:9:\"hello.php\";s:5:\"1.7.2\";s:41:\"transporter-plugin/transporter-plugin.php\";s:5:\"1.0.1\";}}', 'no'),
(313, 'vehicle_types_children', 'a:0:{}', 'yes'),
(319, '_site_transient_timeout_theme_roots', '1640584812', 'no'),
(320, '_site_transient_theme_roots', 'a:5:{s:14:\"twentynineteen\";s:7:\"/themes\";s:21:\"twentyseventeen-child\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(322, '_transient_is_multi_author', '0', 'yes'),
(323, '_transient_twentyseventeen_categories', '1', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1640418868:1'),
(7, 50, '_edit_last', '1'),
(8, 50, '_edit_lock', '1640463428:1'),
(9, 50, '_vehicle_number', 'KL 10 N 6525'),
(10, 50, '_vehicle_driver', 'Fsil'),
(16, 7, '_customize_restore_dismissed', '1'),
(17, 56, '_wp_trash_meta_status', 'publish'),
(18, 56, '_wp_trash_meta_time', '1640456666'),
(22, 57, '_edit_lock', '1640459207:1'),
(23, 57, '_wp_trash_meta_status', 'publish'),
(24, 57, '_wp_trash_meta_time', '1640459215'),
(25, 50, '_driver_name', 'Fasil'),
(26, 60, '_wp_attached_file', '2021/12/photo-1524591652733-73fa1ae7b5ee.jpg'),
(27, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:44:\"2021/12/photo-1524591652733-73fa1ae7b5ee.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"photo-1524591652733-73fa1ae7b5ee-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"photo-1524591652733-73fa1ae7b5ee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"photo-1524591652733-73fa1ae7b5ee-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:44:\"photo-1524591652733-73fa1ae7b5ee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 50, '_thumbnail_id', '60'),
(31, 61, '_customize_restore_dismissed', '1'),
(32, 64, '_wp_trash_meta_status', 'publish'),
(33, 64, '_wp_trash_meta_time', '1640463166'),
(34, 65, '_edit_lock', '1640463230:1'),
(35, 65, '_wp_trash_meta_status', 'publish'),
(36, 65, '_wp_trash_meta_time', '1640463232'),
(37, 50, '_wp_old_slug', 'sample-1'),
(38, 67, '_edit_last', '1'),
(39, 67, '_edit_lock', '1640469782:1'),
(40, 68, '_wp_attached_file', '2021/12/photo-1542362567-b07e54358753.jpg'),
(41, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:667;s:4:\"file\";s:41:\"2021/12/photo-1542362567-b07e54358753.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"photo-1542362567-b07e54358753-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"photo-1542362567-b07e54358753-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"photo-1542362567-b07e54358753-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:41:\"photo-1542362567-b07e54358753-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 67, '_thumbnail_id', '68'),
(43, 67, '_vehicle_number', 'KL 12 N 4567'),
(44, 67, '_driver_name', 'Hemil'),
(45, 69, '_edit_last', '1'),
(46, 69, '_edit_lock', '1640470013:1'),
(47, 70, '_wp_attached_file', '2021/12/depositphotos_40017959-stock-photo-bus-isolated-on-white-background.jpg'),
(48, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:407;s:4:\"file\";s:79:\"2021/12/depositphotos_40017959-stock-photo-bus-isolated-on-white-background.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:79:\"depositphotos_40017959-stock-photo-bus-isolated-on-white-background-300x204.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:204;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:79:\"depositphotos_40017959-stock-photo-bus-isolated-on-white-background-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:79:\"depositphotos_40017959-stock-photo-bus-isolated-on-white-background-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 69, '_thumbnail_id', '70'),
(50, 69, '_vehicle_number', 'KL 13 N 2222'),
(51, 69, '_driver_name', 'Mark'),
(60, 71, '_wp_trash_meta_status', 'publish'),
(61, 71, '_wp_trash_meta_time', '1640470756'),
(62, 73, '_edit_lock', '1640470830:1'),
(71, 73, '_wp_trash_meta_status', 'publish'),
(72, 73, '_wp_trash_meta_time', '1640470802'),
(113, 75, '_wp_trash_meta_status', 'publish'),
(114, 75, '_wp_trash_meta_time', '1640470839'),
(115, 81, '_edit_lock', '1640470902:1'),
(116, 82, '_menu_item_type', 'taxonomy'),
(117, 82, '_menu_item_menu_item_parent', '0'),
(118, 82, '_menu_item_object_id', '5'),
(119, 82, '_menu_item_object', 'vehicle_types'),
(120, 82, '_menu_item_target', ''),
(121, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 82, '_menu_item_xfn', ''),
(123, 82, '_menu_item_url', ''),
(124, 83, '_menu_item_type', 'taxonomy'),
(125, 83, '_menu_item_menu_item_parent', '0'),
(126, 83, '_menu_item_object_id', '6'),
(127, 83, '_menu_item_object', 'vehicle_types'),
(128, 83, '_menu_item_target', ''),
(129, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 83, '_menu_item_xfn', ''),
(131, 83, '_menu_item_url', ''),
(132, 84, '_menu_item_type', 'taxonomy'),
(133, 84, '_menu_item_menu_item_parent', '0'),
(134, 84, '_menu_item_object_id', '7'),
(135, 84, '_menu_item_object', 'vehicle_types'),
(136, 84, '_menu_item_target', ''),
(137, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(138, 84, '_menu_item_xfn', ''),
(139, 84, '_menu_item_url', ''),
(140, 81, '_wp_trash_meta_status', 'publish'),
(141, 81, '_wp_trash_meta_time', '1640470919'),
(146, 85, '_customize_restore_dismissed', '1'),
(147, 86, '_edit_lock', '1640472043:1'),
(148, 86, '_customize_restore_dismissed', '1'),
(149, 87, '_wp_trash_meta_status', 'publish'),
(150, 87, '_wp_trash_meta_time', '1640472047'),
(151, 88, '_wp_trash_meta_status', 'publish'),
(152, 88, '_wp_trash_meta_time', '1640472096'),
(153, 89, '_wp_trash_meta_status', 'publish'),
(154, 89, '_wp_trash_meta_time', '1640472116'),
(155, 90, '_menu_item_type', 'custom'),
(156, 90, '_menu_item_menu_item_parent', '0'),
(157, 90, '_menu_item_object_id', '90'),
(158, 90, '_menu_item_object', 'custom'),
(159, 90, '_menu_item_target', ''),
(160, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(161, 90, '_menu_item_xfn', ''),
(162, 90, '_menu_item_url', 'http://Vehicle%20Details'),
(163, 90, '_menu_item_orphaned', '1640472382'),
(164, 91, '_menu_item_type', 'custom'),
(165, 91, '_menu_item_menu_item_parent', '0'),
(166, 91, '_menu_item_object_id', '91'),
(167, 91, '_menu_item_object', 'custom'),
(168, 91, '_menu_item_target', ''),
(169, 91, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 91, '_menu_item_xfn', ''),
(171, 91, '_menu_item_url', '/vehicle_details'),
(172, 91, '_menu_item_orphaned', '1640472439'),
(173, 2, '_edit_lock', '1640497346:1'),
(174, 92, '_edit_lock', '1640550645:1'),
(175, 93, '_menu_item_type', 'post_type'),
(176, 93, '_menu_item_menu_item_parent', '0'),
(177, 93, '_menu_item_object_id', '92'),
(178, 93, '_menu_item_object', 'page'),
(179, 93, '_menu_item_target', ''),
(180, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 93, '_menu_item_xfn', ''),
(182, 93, '_menu_item_url', ''),
(183, 92, '_edit_last', '1'),
(184, 92, '_wp_page_template', 'default'),
(185, 95, '_wp_trash_meta_status', 'publish'),
(186, 95, '_wp_trash_meta_time', '1640498351'),
(187, 82, '_wp_old_date', '2021-12-25'),
(188, 83, '_wp_old_date', '2021-12-25'),
(189, 84, '_wp_old_date', '2021-12-25'),
(190, 96, '_wp_trash_meta_status', 'publish'),
(191, 96, '_wp_trash_meta_time', '1640520662'),
(192, 97, '_wp_trash_meta_status', 'publish'),
(193, 97, '_wp_trash_meta_time', '1640521264'),
(194, 99, '_edit_last', '1'),
(195, 99, '_edit_lock', '1640549700:1'),
(196, 99, '_wp_page_template', 'default'),
(197, 99, '_vehicle_number', 'KL 10 AW 12345'),
(198, 99, '_driver_name', 'Mike'),
(199, 99, '_wp_trash_meta_status', 'publish'),
(200, 99, '_wp_trash_meta_time', '1640584669'),
(201, 99, '_wp_desired_post_slug', 'bike-2'),
(202, 101, '_wp_trash_meta_status', 'publish'),
(203, 101, '_wp_trash_meta_time', '1640585059');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-12-25 05:29:03', '2021-12-25 05:29:03', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-12-25 05:29:03', '2021-12-25 05:29:03', '', 0, 'http://localhost/vehicle/?p=1', 0, 'post', '', 1),
(2, 1, '2021-12-25 05:29:03', '2021-12-25 05:29:03', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/vehicle/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-12-25 05:29:03', '2021-12-25 05:29:03', '', 0, 'http://localhost/vehicle/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-12-25 05:29:03', '2021-12-25 05:29:03', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/vehicle.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-12-25 05:29:03', '2021-12-25 05:29:03', '', 0, 'http://localhost/vehicle/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-12-25 05:29:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-12-25 05:29:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?p=4', 0, 'post', '', 0),
(5, 1, '2021-12-25 05:34:57', '2021-12-25 05:34:57', '<!-- wp:paragraph -->\n<p>test sample post</p>\n<!-- /wp:paragraph -->', 'Sample post', '', 'publish', 'open', 'open', '', 'sample-post', '', '', '2021-12-25 05:34:57', '2021-12-25 05:34:57', '', 0, 'http://localhost/vehicle/?p=5', 0, 'post', '', 0),
(6, 1, '2021-12-25 05:34:57', '2021-12-25 05:34:57', '<!-- wp:paragraph -->\n<p>test sample post</p>\n<!-- /wp:paragraph -->', 'Sample post', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-12-25 05:34:57', '2021-12-25 05:34:57', '', 5, 'http://localhost/vehicle/?p=6', 0, 'revision', '', 0),
(7, 1, '2021-12-25 05:37:01', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 05:37:01\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'f44833e7-9aa3-4bfa-8f2c-28ab411b4da8', '', '', '2021-12-25 05:37:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?p=7', 0, 'customize_changeset', '', 0),
(8, 1, '2021-12-25 06:13:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:13:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=8', 0, 'vehicle_details', '', 0),
(9, 1, '2021-12-25 06:17:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:17:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=9', 0, 'vehicle_details', '', 0),
(10, 1, '2021-12-25 06:18:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:18:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=10', 0, 'vehicle_details', '', 0),
(11, 1, '2021-12-25 06:18:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:18:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=11', 0, 'vehicle_details', '', 0),
(12, 1, '2021-12-25 06:18:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:18:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=12', 0, 'vehicle_details', '', 0),
(13, 1, '2021-12-25 06:18:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:18:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=13', 0, 'vehicle_details', '', 0),
(14, 1, '2021-12-25 06:40:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:40:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=14', 0, 'vehicle_details', '', 0),
(15, 1, '2021-12-25 06:43:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:43:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=15', 0, 'vehicle_details', '', 0),
(16, 1, '2021-12-25 06:50:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:50:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=16', 0, 'vehicle_details', '', 0),
(17, 1, '2021-12-25 06:51:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:51:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=17', 0, 'vehicle_details', '', 0),
(18, 1, '2021-12-25 06:51:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:51:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=18', 0, 'vehicle_details', '', 0),
(19, 1, '2021-12-25 06:51:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:51:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=19', 0, 'vehicle_details', '', 0),
(20, 1, '2021-12-25 06:57:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:57:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=20', 0, 'vehicle_details', '', 0),
(21, 1, '2021-12-25 06:57:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 06:57:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=21', 0, 'vehicle_details', '', 0),
(22, 1, '2021-12-25 07:01:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:01:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=22', 0, 'vehicle_details', '', 0),
(23, 1, '2021-12-25 07:02:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:02:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=23', 0, 'vehicle_details', '', 0),
(24, 1, '2021-12-25 07:03:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:03:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=24', 0, 'vehicle_details', '', 0),
(25, 1, '2021-12-25 07:03:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:03:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=25', 0, 'vehicle_details', '', 0),
(26, 1, '2021-12-25 07:04:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:04:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=26', 0, 'vehicle_details', '', 0),
(27, 1, '2021-12-25 07:10:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:10:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=27', 0, 'vehicle_details', '', 0),
(28, 1, '2021-12-25 07:11:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:11:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=28', 0, 'vehicle_details', '', 0),
(29, 1, '2021-12-25 07:17:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:17:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=29', 0, 'vehicle_details', '', 0),
(30, 1, '2021-12-25 07:30:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:30:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=30', 0, 'vehicle_details', '', 0),
(31, 1, '2021-12-25 07:30:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:30:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=31', 0, 'vehicle_details', '', 0),
(32, 1, '2021-12-25 07:30:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:30:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=32', 0, 'vehicle_details', '', 0),
(33, 1, '2021-12-25 07:31:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:31:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=33', 0, 'vehicle_details', '', 0),
(34, 1, '2021-12-25 07:32:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:32:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=34', 0, 'vehicle_details', '', 0),
(35, 1, '2021-12-25 07:32:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:32:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=35', 0, 'vehicle_details', '', 0),
(36, 1, '2021-12-25 07:33:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:33:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=36', 0, 'vehicle_details', '', 0),
(37, 1, '2021-12-25 07:33:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:33:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=37', 0, 'vehicle_details', '', 0),
(38, 1, '2021-12-25 07:34:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:34:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=38', 0, 'vehicle_details', '', 0),
(39, 1, '2021-12-25 07:34:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:34:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=39', 0, 'vehicle_details', '', 0),
(40, 1, '2021-12-25 07:35:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:35:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=40', 0, 'vehicle_details', '', 0),
(41, 1, '2021-12-25 07:38:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:38:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=41', 0, 'vehicle_details', '', 0),
(42, 1, '2021-12-25 07:41:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:41:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=42', 0, 'vehicle_details', '', 0),
(43, 1, '2021-12-25 07:57:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 07:57:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=43', 0, 'vehicle_details', '', 0),
(44, 1, '2021-12-25 08:01:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 08:01:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=44', 0, 'vehicle_details', '', 0),
(45, 1, '2021-12-25 08:01:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 08:01:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=45', 0, 'vehicle_details', '', 0),
(46, 1, '2021-12-25 08:04:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 08:04:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=46', 0, 'vehicle_details', '', 0),
(47, 1, '2021-12-25 08:04:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 08:04:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=47', 0, 'vehicle_details', '', 0),
(48, 1, '2021-12-25 08:15:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 08:15:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=48', 0, 'vehicle_details', '', 0),
(49, 1, '2021-12-25 08:15:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 08:15:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=49', 0, 'vehicle_details', '', 0),
(50, 1, '2021-12-25 08:16:54', '2021-12-25 08:16:54', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'Bike 1', '', 'publish', 'closed', 'closed', '', 'bike-1', '', '', '2021-12-25 20:19:30', '2021-12-25 20:19:30', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&#038;p=50', 0, 'vehicle_details', '', 0),
(56, 1, '2021-12-25 18:24:26', '2021-12-25 18:24:26', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 18:24:26\"\n    },\n    \"page_on_front\": {\n        \"value\": \"51\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 18:24:26\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7b577bf8-ee7d-41cb-9a1c-f5ef813d06b1', '', '', '2021-12-25 18:24:26', '2021-12-25 18:24:26', '', 0, 'http://localhost/vehicle/2021/12/25/7b577bf8-ee7d-41cb-9a1c-f5ef813d06b1/', 0, 'customize_changeset', '', 0),
(57, 1, '2021-12-25 19:06:55', '2021-12-25 19:06:55', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 18:32:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '385a8aa9-8e6c-448c-85ed-9114163381d1', '', '', '2021-12-25 19:06:55', '2021-12-25 19:06:55', '', 0, 'http://localhost/vehicle/?p=57', 0, 'customize_changeset', '', 0),
(58, 1, '2021-12-25 19:02:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 19:02:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=58', 0, 'vehicle_details', '', 0),
(59, 1, '2021-12-25 19:17:42', '2021-12-25 19:17:42', '<div>\n<h2>What is Lorem Ipsum?</h2>\n<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\n</div>', 'sample 1', '', 'inherit', 'closed', 'closed', '', '50-autosave-v1', '', '', '2021-12-25 19:17:42', '2021-12-25 19:17:42', '', 50, 'http://localhost/vehicle/?p=59', 0, 'revision', '', 0),
(60, 1, '2021-12-25 19:24:41', '2021-12-25 19:24:41', '', 'photo-1524591652733-73fa1ae7b5ee', '', 'inherit', 'open', 'closed', '', 'photo-1524591652733-73fa1ae7b5ee', '', '', '2021-12-25 19:24:41', '2021-12-25 19:24:41', '', 50, 'http://localhost/vehicle/wp-content/uploads/2021/12/photo-1524591652733-73fa1ae7b5ee.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2021-12-25 20:11:36', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 20:11:36\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '90c11ec2-5115-470a-b65f-b9a01a46a1be', '', '', '2021-12-25 20:11:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?p=61', 0, 'customize_changeset', '', 0),
(64, 1, '2021-12-25 20:12:46', '2021-12-25 20:12:46', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 20:12:46\"\n    },\n    \"page_on_front\": {\n        \"value\": \"62\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 20:12:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '15f71e7e-32e2-41ef-a235-2fb0c743ba51', '', '', '2021-12-25 20:12:46', '2021-12-25 20:12:46', '', 0, 'http://localhost/vehicle/15f71e7e-32e2-41ef-a235-2fb0c743ba51/', 0, 'customize_changeset', '', 0),
(65, 1, '2021-12-25 20:13:52', '2021-12-25 20:13:52', '{\n    \"page_for_posts\": {\n        \"value\": \"0\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 20:13:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ae6c900-6f35-496b-915f-ec4e305c8f82', '', '', '2021-12-25 20:13:52', '2021-12-25 20:13:52', '', 0, 'http://localhost/vehicle/?p=65', 0, 'customize_changeset', '', 0),
(66, 1, '2021-12-25 20:18:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-25 20:18:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=66', 0, 'vehicle_details', '', 0),
(67, 1, '2021-12-25 20:21:23', '2021-12-25 20:21:23', '<div>\r\n<h2>Why do we use it?</h2>\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n</div>', 'Car 1', '', 'publish', 'closed', 'closed', '', 'car-1', '', '', '2021-12-25 20:21:23', '2021-12-25 20:21:23', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&#038;p=67', 0, 'vehicle_details', '', 0),
(68, 1, '2021-12-25 20:21:01', '2021-12-25 20:21:01', '', 'photo-1542362567-b07e54358753', '', 'inherit', 'open', 'closed', '', 'photo-1542362567-b07e54358753', '', '', '2021-12-25 20:21:01', '2021-12-25 20:21:01', '', 67, 'http://localhost/vehicle/wp-content/uploads/2021/12/photo-1542362567-b07e54358753.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2021-12-25 22:06:53', '2021-12-25 22:06:53', 'With the release of the new <a href=\"https://wordpress.org/gutenberg/\">Gutenberg editor</a> in 2018, WordPress <a href=\"https://wordpress.org/search/gutenberg+sucks/?forums=1\">alienated some users</a> but continues to lead in the CMS space, <a href=\"https://kinsta.com/wordpress-market-share/\">currently at a peak of 60% market share</a>. Though most of our clients are on enterprise platforms like <a href=\"https://ez.no/\">eZ Platform</a>, some continue to run complex websites with WordPress. In this post, we\'ll peek under the hood to see how WordPress handles content classes and field types and we\'ll use that knowledge to add complex field types of our own.', 'Bus 1', '', 'publish', 'closed', 'closed', '', 'bus-1', '', '', '2021-12-25 22:06:53', '2021-12-25 22:06:53', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&#038;p=69', 0, 'vehicle_details', '', 0),
(70, 1, '2021-12-25 22:06:23', '2021-12-25 22:06:23', '', 'depositphotos_40017959-stock-photo-bus-isolated-on-white-background', '', 'inherit', 'open', 'closed', '', 'depositphotos_40017959-stock-photo-bus-isolated-on-white-background', '', '', '2021-12-25 22:06:23', '2021-12-25 22:06:23', '', 69, 'http://localhost/vehicle/wp-content/uploads/2021/12/depositphotos_40017959-stock-photo-bus-isolated-on-white-background.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2021-12-25 22:19:16', '2021-12-25 22:19:16', '{\n    \"twentyseventeen-child::nav_menu_locations[top]\": {\n        \"value\": -3166459451618686000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:19:16\"\n    },\n    \"nav_menu[-3166459451618686000]\": {\n        \"value\": {\n            \"name\": \"Vehicle menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:19:16\"\n    },\n    \"nav_menu_item[-7159623708125417000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"vehicle_details\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type_archive\",\n            \"title\": \"All Vehicles\",\n            \"url\": \"http://localhost/vehicle/vehicle_details/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"All Vehicles\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Post Type Archive\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:19:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '83442627-e1a4-4010-988d-cca5aa7ee1bd', '', '', '2021-12-25 22:19:16', '2021-12-25 22:19:16', '', 0, 'http://localhost/vehicle/83442627-e1a4-4010-988d-cca5aa7ee1bd/', 0, 'customize_changeset', '', 0),
(73, 1, '2021-12-25 22:20:02', '2021-12-25 22:20:02', '{\n    \"twentyseventeen-child::nav_menu_locations[top]\": {\n        \"value\": -3166459451618686000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:19:49\"\n    },\n    \"nav_menu[-3166459451618686000]\": {\n        \"value\": {\n            \"name\": \"Vehicle menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:19:49\"\n    },\n    \"nav_menu_item[-7159623708125417000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"vehicle_details\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type_archive\",\n            \"title\": \"All Vehicles\",\n            \"url\": \"http://localhost/vehicle/vehicle_details/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"All Vehicles\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Post Type Archive\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:19:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3b977bca-39b2-4317-9948-e3f545058b30', '', '', '2021-12-25 22:20:02', '2021-12-25 22:20:02', '', 0, 'http://localhost/vehicle/?p=73', 0, 'customize_changeset', '', 0),
(75, 1, '2021-12-25 22:20:39', '2021-12-25 22:20:39', '{\n    \"twentyseventeen-child::nav_menu_locations[top]\": {\n        \"value\": -3166459451618686000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:20:39\"\n    },\n    \"nav_menu[-3166459451618686000]\": {\n        \"value\": {\n            \"name\": \"Vehicle menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:20:39\"\n    },\n    \"nav_menu_item[-7159623708125417000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"vehicle_details\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type_archive\",\n            \"title\": \"All Vehicles\",\n            \"url\": \"http://localhost/vehicle/vehicle_details/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"All Vehicles\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Post Type Archive\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:20:39\"\n    },\n    \"nav_menu_item[-1281052824633449500]\": {\n        \"value\": {\n            \"object_id\": 69,\n            \"object\": \"vehicle_details\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Bus 1\",\n            \"url\": \"http://localhost/vehicle/vehicle_details/bus-1/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Bus 1\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Vehicle Detail\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:20:39\"\n    },\n    \"nav_menu_item[-3885901614257195000]\": {\n        \"value\": {\n            \"object_id\": 67,\n            \"object\": \"vehicle_details\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Car 1\",\n            \"url\": \"http://localhost/vehicle/vehicle_details/car-1/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Car 1\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Vehicle Detail\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:20:39\"\n    },\n    \"nav_menu_item[-213718978087439360]\": {\n        \"value\": {\n            \"object_id\": 50,\n            \"object\": \"vehicle_details\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"Bike 1\",\n            \"url\": \"http://localhost/vehicle/vehicle_details/bike-1/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Bike 1\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Vehicle Detail\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:20:39\"\n    },\n    \"nav_menu_item[-7418227006523066000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"vehicle_details\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type_archive\",\n            \"title\": \"All Vehicles\",\n            \"url\": \"http://localhost/vehicle/vehicle_details/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"All Vehicles\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Post Type Archive\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:20:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b558091e-78f4-45eb-842c-8c7b654b586f', '', '', '2021-12-25 22:20:39', '2021-12-25 22:20:39', '', 0, 'http://localhost/vehicle/b558091e-78f4-45eb-842c-8c7b654b586f/', 0, 'customize_changeset', '', 0),
(81, 1, '2021-12-25 22:21:59', '2021-12-25 22:21:59', '{\n    \"twentyseventeen-child::nav_menu_locations[top]\": {\n        \"value\": -3166459451618686000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:21:42\"\n    },\n    \"nav_menu[-3166459451618686000]\": {\n        \"value\": {\n            \"name\": \"Vehicle menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:21:42\"\n    },\n    \"nav_menu_item[-7159623708125417000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:21:42\"\n    },\n    \"nav_menu_item[-1281052824633449500]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:21:42\"\n    },\n    \"nav_menu_item[-3885901614257195000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:21:42\"\n    },\n    \"nav_menu_item[-213718978087439360]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:21:42\"\n    },\n    \"nav_menu_item[-7418227006523066000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:21:42\"\n    },\n    \"nav_menu_item[-290339360812510200]\": {\n        \"value\": {\n            \"object_id\": 5,\n            \"object\": \"vehicle_types\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"taxonomy\",\n            \"title\": \"Car\",\n            \"url\": \"http://localhost/vehicle/vehicle_type/car/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Car\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Car Type\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:21:42\"\n    },\n    \"nav_menu_item[-5936900807620965000]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"vehicle_types\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"taxonomy\",\n            \"title\": \"Bike\",\n            \"url\": \"http://localhost/vehicle/vehicle_type/bike/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Bike\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Car Type\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:21:42\"\n    },\n    \"nav_menu_item[-1931347094936457200]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"vehicle_types\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"taxonomy\",\n            \"title\": \"Bus\",\n            \"url\": \"http://localhost/vehicle/vehicle_type/bus/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Bus\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Car Type\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:21:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4fa2cf33-2535-4f34-b89a-a18926dddbde', '', '', '2021-12-25 22:21:59', '2021-12-25 22:21:59', '', 0, 'http://localhost/vehicle/?p=81', 0, 'customize_changeset', '', 0),
(82, 1, '2021-12-26 06:02:43', '2021-12-25 22:21:59', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2021-12-26 06:02:43', '2021-12-26 06:02:43', '', 0, 'http://localhost/vehicle/82/', 2, 'nav_menu_item', '', 0),
(83, 1, '2021-12-26 06:02:43', '2021-12-25 22:21:59', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2021-12-26 06:02:43', '2021-12-26 06:02:43', '', 0, 'http://localhost/vehicle/83/', 3, 'nav_menu_item', '', 0),
(84, 1, '2021-12-26 06:02:43', '2021-12-25 22:21:59', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2021-12-26 06:02:43', '2021-12-26 06:02:43', '', 0, 'http://localhost/vehicle/84/', 4, 'nav_menu_item', '', 0),
(85, 1, '2021-12-25 22:22:02', '0000-00-00 00:00:00', '{\n    \"twentyseventeen-child::nav_menu_locations[top]\": {\n        \"value\": -3166459451618686000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:22:02\"\n    },\n    \"nav_menu[-3166459451618686000]\": {\n        \"value\": {\n            \"name\": \"Vehicle menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:22:02\"\n    },\n    \"nav_menu_item[-7159623708125417000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:22:02\"\n    },\n    \"nav_menu_item[-1281052824633449500]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:22:02\"\n    },\n    \"nav_menu_item[-3885901614257195000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:22:02\"\n    },\n    \"nav_menu_item[-213718978087439360]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:22:02\"\n    },\n    \"nav_menu_item[-7418227006523066000]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:22:02\"\n    },\n    \"nav_menu_item[-290339360812510200]\": {\n        \"value\": {\n            \"object_id\": 5,\n            \"object\": \"vehicle_types\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"taxonomy\",\n            \"title\": \"Car\",\n            \"url\": \"http://localhost/vehicle/vehicle_type/car/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Car\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Car Type\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:22:02\"\n    },\n    \"nav_menu_item[-5936900807620965000]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"vehicle_types\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"taxonomy\",\n            \"title\": \"Bike\",\n            \"url\": \"http://localhost/vehicle/vehicle_type/bike/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Bike\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Car Type\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:22:02\"\n    },\n    \"nav_menu_item[-1931347094936457200]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"vehicle_types\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"taxonomy\",\n            \"title\": \"Bus\",\n            \"url\": \"http://localhost/vehicle/vehicle_type/bus/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Bus\",\n            \"nav_menu_term_id\": -3166459451618686000,\n            \"_invalid\": false,\n            \"type_label\": \"Car Type\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:22:02\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'e279f358-6d31-4fb4-a0f8-e91054f5c4e5', '', '', '2021-12-25 22:22:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?p=85', 0, 'customize_changeset', '', 0),
(86, 1, '2021-12-25 22:31:36', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:31:36\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'a8e289e7-83f2-40c3-98b3-7284432ff942', '', '', '2021-12-25 22:31:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?p=86', 0, 'customize_changeset', '', 0),
(87, 1, '2021-12-25 22:40:47', '2021-12-25 22:40:47', '{\n    \"nav_menu[9]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:40:47\"\n    },\n    \"nav_menu[10]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:40:47\"\n    },\n    \"nav_menu[11]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:40:47\"\n    },\n    \"nav_menu[12]\": {\n        \"value\": {\n            \"name\": \"Vehicle menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": true\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:40:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '51d1f70c-e995-4f93-895d-f9a79ebbbab5', '', '', '2021-12-25 22:40:47', '2021-12-25 22:40:47', '', 0, 'http://localhost/vehicle/51d1f70c-e995-4f93-895d-f9a79ebbbab5/', 0, 'customize_changeset', '', 0),
(88, 1, '2021-12-25 22:41:36', '2021-12-25 22:41:36', '{\n    \"twentyseventeen-child::nav_menu_locations[social]\": {\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:41:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2ea0cd0b-bce5-4c50-b9d2-03352aca3f33', '', '', '2021-12-25 22:41:36', '2021-12-25 22:41:36', '', 0, 'http://localhost/vehicle/2ea0cd0b-bce5-4c50-b9d2-03352aca3f33/', 0, 'customize_changeset', '', 0),
(89, 1, '2021-12-25 22:41:56', '2021-12-25 22:41:56', '{\n    \"twentyseventeen-child::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-25 22:41:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e940535c-bff5-4a76-9faf-87fec07256d5', '', '', '2021-12-25 22:41:56', '2021-12-25 22:41:56', '', 0, 'http://localhost/vehicle/e940535c-bff5-4a76-9faf-87fec07256d5/', 0, 'customize_changeset', '', 0),
(90, 1, '2021-12-25 22:46:21', '0000-00-00 00:00:00', '', 'vehicle_details', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-25 22:46:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?p=90', 1, 'nav_menu_item', '', 0),
(91, 1, '2021-12-25 22:47:19', '0000-00-00 00:00:00', '', 'Vehicle Details', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-12-25 22:47:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?p=91', 1, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(92, 1, '2021-12-26 05:52:51', '2021-12-26 05:52:51', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-12-26 12:05:02', '2021-12-26 12:05:02', '', 0, 'http://localhost/vehicle/?page_id=92', 0, 'page', '', 0),
(93, 1, '2021-12-26 06:02:43', '2021-12-26 05:52:51', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2021-12-26 06:02:43', '2021-12-26 06:02:43', '', 0, 'http://localhost/vehicle/93/', 1, 'nav_menu_item', '', 0),
(94, 1, '2021-12-26 05:52:51', '2021-12-26 05:52:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2021-12-26 05:52:51', '2021-12-26 05:52:51', '', 92, 'http://localhost/vehicle/?p=94', 0, 'revision', '', 0),
(95, 1, '2021-12-26 05:59:11', '2021-12-26 05:59:11', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-26 05:59:11\"\n    },\n    \"page_on_front\": {\n        \"value\": \"92\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-26 05:59:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5dd62950-b3cb-40cf-b1d3-9ae76be9a2b6', '', '', '2021-12-26 05:59:11', '2021-12-26 05:59:11', '', 0, 'http://localhost/vehicle/5dd62950-b3cb-40cf-b1d3-9ae76be9a2b6/', 0, 'customize_changeset', '', 0),
(96, 1, '2021-12-26 12:11:02', '2021-12-26 12:11:02', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-26 12:11:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e025f056-2f93-4286-9c99-e673017c5b08', '', '', '2021-12-26 12:11:02', '2021-12-26 12:11:02', '', 0, 'http://localhost/vehicle/e025f056-2f93-4286-9c99-e673017c5b08/', 0, 'customize_changeset', '', 0),
(97, 1, '2021-12-26 12:21:04', '2021-12-26 12:21:04', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-26 12:21:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd685f313-9ebc-4563-81c9-07e595069c85', '', '', '2021-12-26 12:21:04', '2021-12-26 12:21:04', '', 0, 'http://localhost/vehicle/d685f313-9ebc-4563-81c9-07e595069c85/', 0, 'customize_changeset', '', 0),
(98, 1, '2021-12-26 20:15:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-26 20:15:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=98', 0, 'vehicle_details', '', 0),
(99, 1, '2021-12-26 20:16:44', '2021-12-26 20:16:44', '', 'Bike 2', '', 'trash', 'closed', 'closed', '', 'bike-2__trashed', '', '', '2021-12-27 05:57:49', '2021-12-27 05:57:49', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&#038;p=99', 0, 'vehicle_details', '', 0),
(100, 1, '2021-12-26 20:17:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-12-26 20:17:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/vehicle/?post_type=vehicle_details&p=100', 0, 'vehicle_details', '', 0),
(101, 1, '2021-12-27 06:04:19', '2021-12-27 06:04:19', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-12-27 06:04:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9b54b6c0-55f1-4176-951d-b51910ab623d', '', '', '2021-12-27 06:04:19', '2021-12-27 06:04:19', '', 0, 'http://localhost/vehicle/9b54b6c0-55f1-4176-951d-b51910ab623d/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(5, 'Car', 'car', 0),
(6, 'Bike', 'bike', 0),
(7, 'Bus', 'bus', 0),
(12, 'Vehicle menu', 'vehicle-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(50, 6, 0),
(67, 5, 0),
(69, 7, 0),
(82, 12, 0),
(83, 12, 0),
(84, 12, 0),
(93, 12, 0),
(99, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(5, 5, 'vehicle_types', '', 0, 1),
(6, 6, 'vehicle_types', '', 0, 1),
(7, 7, 'vehicle_types', '', 0, 1),
(12, 12, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"0e66f8d5c189df3979362ca2f15540380f83421c916b54403c130497fb1d7411\";a:4:{s:10:\"expiration\";i:1640757462;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:95.0) Gecko/20100101 Firefox/95.0\";s:5:\"login\";i:1640584662;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1640410154'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(23, 1, 'nav_menu_recently_edited', '12'),
(24, 1, 'enable_custom_fields', ''),
(25, 1, 'closedpostboxes_nav-menus', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B8B1K4gYYswo88XEPT84UK2.K5sLUn1', 'admin', 'fasil4927@gmail.com', 'http://localhost/vehicle', '2021-12-25 05:29:03', '', 0, 'admin');

--
-- Indexes for dumped tables
--

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
  ADD KEY `comment_author_email` (`comment_author_email`(10));

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=324;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
