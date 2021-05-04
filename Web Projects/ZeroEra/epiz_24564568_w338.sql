-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql309.epizy.com
-- Generation Time: Oct 05, 2019 at 06:58 PM
-- Server version: 5.6.45-86.1
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_24564568_w338`
--

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_commentmeta`
--

CREATE TABLE `wpuh_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_comments`
--

CREATE TABLE `wpuh_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpuh_comments`
--

INSERT INTO `wpuh_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-09-30 01:42:04', '2019-09-30 01:42:04', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0),
(2, 23, 'atom-admin', 'admin@atom-online.ml', '', '190.197.103.179', '2019-10-02 02:51:17', '2019-10-02 02:51:17', 'Here are the default categories listed below:\r\n\r\nAnime\r\nDrawing + Sketching\r\nElectronics + Computer Science\r\nShould I... or should I Not???\r\nCORE Team Blog', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', '', 0, 1),
(3, 23, 'ChandalePandy', 'pandyman12@gmail.com', '', '190.197.112.156', '2019-10-02 22:31:27', '2019-10-02 22:31:27', 'Everything you listed are great ideas.\r\nI think we could also do projects for other people(for a small fee of course).\r\nI was also told to storyboard for the overall look of the website, I think we should go for a business look, but keep it fun. There should be different sections for people who visit the website to know where to go, like the lines for boarding sections in an airport. The sections should be labeled like for instance if someone wants us to code something there could be a section for BUSINESS INQUIRIES, etc. That would make it easier for someone to use the website to get to us instead of having to come to us. I guess we\'ll have to make a team newsletter as well, or a team email so we could contact each other if we might need to. Just some ideas I came up with.', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18362', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_css_js_manager`
--

CREATE TABLE `wpuh_css_js_manager` (
  `id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` enum('css','js','push') COLLATE utf8mb4_unicode_520_ci DEFAULT 'css',
  `method` enum('async','defer','normal') COLLATE utf8mb4_unicode_520_ci DEFAULT 'normal',
  `add_remove` enum('add','remove') COLLATE utf8mb4_unicode_520_ci DEFAULT 'add',
  `apply_on` enum('all','selected') COLLATE utf8mb4_unicode_520_ci DEFAULT 'all',
  `push` enum('push','push_preload','preload','no') COLLATE utf8mb4_unicode_520_ci DEFAULT 'no',
  `state` tinyint(1) DEFAULT '1',
  `form` mediumtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_links`
--

CREATE TABLE `wpuh_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_litespeed_img_optm`
--

CREATE TABLE `wpuh_litespeed_img_optm` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `optm_status` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `src` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `srcpath_md5` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `src_md5` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `root_id` int(11) NOT NULL DEFAULT '0',
  `src_filesize` int(11) NOT NULL DEFAULT '0',
  `target_filesize` int(11) NOT NULL DEFAULT '0',
  `target_saved` int(11) NOT NULL DEFAULT '0',
  `webp_filesize` int(11) NOT NULL DEFAULT '0',
  `webp_saved` int(11) NOT NULL DEFAULT '0',
  `server_info` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_litespeed_optimizer`
--

CREATE TABLE `wpuh_litespeed_optimizer` (
  `id` int(11) NOT NULL,
  `hash_name` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'hash.filetype',
  `src` text COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'full url array set',
  `dateline` int(11) NOT NULL,
  `refer` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'The container page url'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wpuh_litespeed_optimizer`
--

INSERT INTO `wpuh_litespeed_optimizer` (`id`, `hash_name`, `src`, `dateline`, `refer`) VALUES
(1, 'd979f.css', '[\"http:\\/\\/atom-online.ml\\/wp-includes\\/css\\/dashicons.min.css\"]', 1570254676, ''),
(2, '2773c.css', '[\"http:\\/\\/atom-online.ml\\/wp-includes\\/css\\/admin-bar.min.css\"]', 1570254676, ''),
(3, '52207.css', '[\"http:\\/\\/atom-online.ml\\/wp-content\\/plugins\\/pagelayer\\/css\\/givecss.php?give=pagelayer-frontend.css%2Cnivo-lightbox.css%2Canimate.min.css%2Cowl.carousel.min.css%2Cowl.theme.default.min.css&#038;ver=1.0.0\"]', 1570254676, ''),
(4, 'c212d.css', '[\"https:\\/\\/atom-online.ml\\/wp-content\\/plugins\\/pagelayer\\/css\\/givecss.php?give=pagelayer-frontend.css%2Cnivo-lightbox.css%2Canimate.min.css%2Cowl.carousel.min.css%2Cowl.theme.default.min.css&#038;ver=1.0.0\"]', 1570254926, ''),
(5, '54c48.css', '[\"https:\\/\\/atom-online.ml\\/wp-includes\\/css\\/dashicons.min.css\"]', 1570255004, ''),
(6, '46549.css', '[\"https:\\/\\/atom-online.ml\\/wp-includes\\/css\\/customize-preview.min.css\"]', 1570255004, ''),
(7, '2e2bb.css', '[\"https:\\/\\/atom-online.ml\\/wp-includes\\/css\\/admin-bar.min.css\"]', 1570255004, ''),
(8, '03313.css', '[\"https:\\/\\/atom-online.ml\\/wp-content\\/plugins\\/pagelayer\\/css\\/font-awesome.min.css\"]', 1570255004, ''),
(9, '532e6.css', '[\"https:\\/\\/atom-online.ml\\/wp-content\\/themes\\/webhost\\/css\\/bootstrap\\/bootstrap.min.css\"]', 1570255004, ''),
(10, '63bc7.css', '[\"https:\\/\\/atom-online.ml\\/wp-includes\\/css\\/dist\\/block-library\\/style.min.css\"]', 1570255004, ''),
(11, '1d364.css', '[\"https:\\/\\/atom-online.ml\\/wp-content\\/themes\\/webhost\\/css\\/owl.carousel.css\"]', 1570255004, ''),
(12, '0c1fa.css', '[\"https:\\/\\/atom-online.ml\\/wp-content\\/themes\\/webhost\\/css\\/owl.theme.css\"]', 1570255004, ''),
(13, '576c4.css', '[\"https:\\/\\/atom-online.ml\\/wp-content\\/themes\\/webhost\\/style.css\"]', 1570255004, ''),
(14, '130cd.css', '[\"https:\\/\\/atom-online.ml\\/wp-content\\/themes\\/webhost\\/css\\/style.css\"]', 1570255004, ''),
(15, 'fd1b1.css', '[\"https:\\/\\/atom-online.ml\\/wp-content\\/themes\\/webhost\\/fonts\\/font-awesome.min.css\"]', 1570255004, ''),
(16, '4781a.css', '[\"https:\\/\\/atom-online.ml\\/wp-includes\\/js\\/mediaelement\\/mediaelementplayer-legacy.min.css\"]', 1570255004, ''),
(17, '1217b.css', '[\"https:\\/\\/atom-online.ml\\/wp-includes\\/js\\/mediaelement\\/wp-mediaelement.min.css\"]', 1570255004, '');

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_loginizer_logs`
--

CREATE TABLE `wpuh_loginizer_logs` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0',
  `lockout` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_options`
--

CREATE TABLE `wpuh_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpuh_options`
--

INSERT INTO `wpuh_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://atom-online.ml', 'yes'),
(2, 'home', 'http://atom-online.ml', 'yes'),
(3, 'blogname', 'Atom CORE', 'yes'),
(4, 'blogdescription', 'Atom CORE Team Blog', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@atom-online.ml', 'yes'),
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
(24, 'time_format', 'g:i A', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:12:{i:0;s:19:\"akismet/akismet.php\";i:1;s:27:\"autoptimize/autoptimize.php\";i:2;s:33:\"classic-editor/classic-editor.php\";i:3;s:33:\"css-js-manager/css-js-manager.php\";i:4;s:41:\"imagemagick-engine/imagemagick-engine.php\";i:5;s:35:\"litespeed-cache/litespeed-cache.php\";i:6;s:23:\"loginizer/loginizer.php\";i:7;s:23:\"pagelayer/pagelayer.php\";i:8;s:59:\"remove-meta-widget-branding/remove-meta-widget-branding.php\";i:9;s:41:\"remove-wp-branding/remove-wp-branding.php\";i:10;s:39:\"simple-author-box/simple-author-box.php\";i:11;s:33:\"wp-user-avatar/wp-user-avatar.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:104:\"/home/vol5_8/epizy.com/epiz_24564568/htdocs/wp-content/plugins/remove-wp-branding/remove-wp-branding.php\";i:2;s:82:\"/home/vol5_8/epizy.com/epiz_24564568/htdocs/wp-content/plugins/akismet/akismet.php\";i:3;s:0:\"\";}', 'no'),
(40, 'template', 'webhost', 'yes'),
(41, 'stylesheet', 'webhost', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'author', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'wp_user_avatar', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:4:{s:23:\"loginizer/loginizer.php\";s:22:\"loginizer_deactivation\";s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}s:35:\"litespeed-cache/litespeed-cache.php\";s:53:\"LiteSpeed_Cache_Activation::uninstall_litespeed_cache\";s:27:\"autoptimize/autoptimize.php\";s:29:\"autoptimizeMain::on_uninstall\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '20', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wpuh_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:10:\"edit_posts\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'cron', 'a:10:{i:1570264863;a:1:{s:25:\"litespeed_imgoptm_trigger\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1570264916;a:1:{s:22:\"litespeed_ccss_trigger\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:16:\"litespeed_filter\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1570264934;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1570282924;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1570290895;a:1:{s:15:\"ao_cachechecker\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1570326124;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570326229;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570326230;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1570331092;a:1:{s:30:\"fs_data_sync_simple-author-box\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'recovery_keys', 'a:0:{}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(114, 'loginizer_version', '1.4.2', 'yes'),
(115, 'loginizer_options', 'a:6:{s:11:\"max_retries\";i:10;s:12:\"lockout_time\";i:900;s:12:\"max_lockouts\";i:5;s:15:\"lockouts_extend\";i:86400;s:13:\"reset_retries\";i:86400;s:12:\"notify_email\";i:2;}', 'yes'),
(116, 'loginizer_last_reset', '1570222800', 'yes'),
(117, 'loginizer_whitelist', 'a:0:{}', 'yes'),
(118, 'loginizer_blacklist', 'a:0:{}', 'yes'),
(119, 'loginizer_ins_time', '1569807733', 'yes'),
(120, 'loginizer_promo_time', '1569807733', 'yes'),
(167, 'rwp_remove_from_admin_menu', '', 'yes'),
(168, 'recently_activated', 'a:0:{}', 'yes'),
(413, 'category_children', 'a:0:{}', 'yes'),
(263, 'litespeed-gui-summary', 'a:2:{s:24:\"banner_promo.new_version\";i:1570241463;s:12:\"banner_promo\";i:1570587063;}', 'yes'),
(308, 'litespeed-setting-mode', '1', 'yes'),
(165, 'rwp_right_widget_title', 'Branding Right Widget', 'yes'),
(166, 'rwp_right_widget_content', 'You may also leave these blank if you would not like them added.', 'yes'),
(129, 'pagelayer_options', 'a:0:{}', 'yes'),
(130, 'pagelayer_promo_time', '1572747166', 'yes'),
(128, 'pagelayer_version', '1.0.0', 'yes'),
(131, 'webhost_promo_time', '1572747168', 'yes'),
(132, 'theme_mods_webhost', 'a:15:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_image\";s:0:\"\";s:15:\"banner_bg_color\";s:7:\"#ffffff\";s:13:\"banner_bg_img\";s:77:\"http://atom-online.ml/wp-content/uploads/2019/10/Simple-Desktop-Wallpaper.png\";s:11:\"banner_type\";s:5:\"image\";s:17:\"banner_main_title\";s:4:\"Atom\";s:16:\"banner_sub_title\";s:33:\"This site is still in development\";s:11:\"banner_para\";s:127:\"Still looking for team members.\nGot skills? Reply to the first post with your email address and name and we\\\'ll get you started\";s:15:\"banner_btn1_url\";s:60:\"http://atom-online.ml/2019/10/02/atom-core-teams-blog-is-up/\";s:13:\"banner_height\";i:850;s:14:\"banner_bg_size\";s:7:\"contain\";s:16:\"banner_bg_repeat\";s:0:\"\";s:15:\"banner_btn2_txt\";s:24:\"Learn More [BROKEN LINK]\";s:15:\"banner_btn1_txt\";s:11:\"Get Started\";s:15:\"banner_btn2_url\";s:16:\"/docs/about.html\";}', 'yes'),
(461, 'fs_debug_mode', '', 'yes'),
(462, 'fs_accounts', 'a:13:{s:21:\"id_slug_type_path_map\";a:1:{i:4707;a:3:{s:4:\"slug\";s:17:\"simple-author-box\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:39:\"simple-author-box/simple-author-box.php\";}}s:11:\"plugin_data\";a:1:{s:17:\"simple-author-box\";a:21:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:39:\"simple-author-box/simple-author-box.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1570242488;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.0\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"2.3.3\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"atom-online.ml\";s:9:\"server_ip\";s:13:\"66.249.88.148\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1570242489;s:7:\"version\";s:5:\"2.3.3\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:14:\"has_trial_plan\";b:0;s:22:\"install_sync_timestamp\";i:1570245586;s:19:\"keepalive_timestamp\";i:1570245586;s:20:\"activation_timestamp\";i:1570242503;s:9:\"sync_cron\";O:8:\"stdClass\":5:{s:7:\"version\";s:5:\"2.3.3\";s:7:\"blog_id\";i:0;s:11:\"sdk_version\";s:5:\"2.3.0\";s:9:\"timestamp\";i:1570242507;s:2:\"on\";b:1;}s:14:\"sync_timestamp\";i:1570245585;}}s:13:\"file_slug_map\";a:1:{s:39:\"simple-author-box/simple-author-box.php\";s:17:\"simple-author-box\";}s:7:\"plugins\";a:1:{s:17:\"simple-author-box\";O:9:\"FS_Plugin\":22:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:17:\"Simple Author Box\";s:4:\"slug\";s:17:\"simple-author-box\";s:12:\"premium_slug\";s:25:\"simple-author-box-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:39:\"simple-author-box/simple-author-box.php\";s:7:\"version\";s:5:\"2.3.3\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:7:\"Premium\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:10:\"public_key\";s:32:\"pk_be96dfb16a3f24a09657df8b35ff2\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"4707\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"6abb4eb1a2f3ca3e177804eacb226a2f\";s:5:\"plans\";a:1:{s:17:\"simple-author-box\";a:1:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"NDcwNw==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";s:76:\"aHR0cHM6Ly93b3JkcHJlc3Mub3JnL3N1cHBvcnQvcGx1Z2luL3NpbXBsZS1hdXRob3ItYm94Lw==\";s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"NzU2OQ==\";s:7:\"updated\";s:28:\"MjAxOS0xMC0wMSAxNzoyNzoyNA==\";s:7:\"created\";s:28:\"MjAxOS0xMC0wMSAxNzowODowMQ==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1570245585;s:3:\"md5\";s:32:\"ca28a5e36b6b2c39690a33b32ad0999f\";s:7:\"plugins\";a:9:{s:33:\"classic-editor/classic-editor.php\";a:5:{s:4:\"slug\";s:14:\"classic-editor\";s:7:\"version\";s:3:\"1.5\";s:5:\"title\";s:14:\"Classic Editor\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:33:\"css-js-manager/css-js-manager.php\";a:5:{s:4:\"slug\";s:14:\"css-js-manager\";s:7:\"version\";s:5:\"2.1.0\";s:5:\"title\";s:59:\"CSS JS Manager, Async JavaScript, Defer Render Blocking CSS\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:35:\"litespeed-cache/litespeed-cache.php\";a:5:{s:4:\"slug\";s:15:\"litespeed-cache\";s:7:\"version\";s:7:\"2.9.8.6\";s:5:\"title\";s:15:\"LiteSpeed Cache\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:23:\"loginizer/loginizer.php\";a:5:{s:4:\"slug\";s:9:\"loginizer\";s:7:\"version\";s:5:\"1.4.2\";s:5:\"title\";s:9:\"Loginizer\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:23:\"pagelayer/pagelayer.php\";a:5:{s:4:\"slug\";s:9:\"pagelayer\";s:7:\"version\";s:5:\"1.0.0\";s:5:\"title\";s:9:\"PageLayer\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:59:\"remove-meta-widget-branding/remove-meta-widget-branding.php\";a:5:{s:4:\"slug\";s:27:\"remove-meta-widget-branding\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:40:\"Remove WordPress.org link on meta widget\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:41:\"remove-wp-branding/remove-wp-branding.php\";a:5:{s:4:\"slug\";s:18:\"remove-wp-branding\";s:7:\"version\";s:5:\"1.0.8\";s:5:\"title\";s:18:\"Remove WP Branding\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:39:\"simple-author-box/simple-author-box.php\";a:5:{s:4:\"slug\";s:17:\"simple-author-box\";s:7:\"version\";s:5:\"2.3.3\";s:5:\"title\";s:17:\"Simple Author Box\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:33:\"wp-user-avatar/wp-user-avatar.php\";a:5:{s:4:\"slug\";s:14:\"wp-user-avatar\";s:7:\"version\";s:5:\"2.2.4\";s:5:\"title\";s:14:\"WP User Avatar\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1570242505;s:3:\"md5\";s:32:\"2be75396d62c146af6768441ffbee57f\";s:7:\"plugins\";a:12:{s:19:\"akismet/akismet.php\";a:5:{s:4:\"slug\";s:7:\"akismet\";s:7:\"version\";s:5:\"4.1.2\";s:5:\"title\";s:17:\"Akismet Anti-Spam\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:27:\"autoptimize/autoptimize.php\";a:5:{s:4:\"slug\";s:11:\"autoptimize\";s:7:\"version\";s:5:\"2.5.1\";s:5:\"title\";s:11:\"Autoptimize\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:33:\"classic-editor/classic-editor.php\";a:5:{s:4:\"slug\";s:14:\"classic-editor\";s:7:\"version\";s:3:\"1.5\";s:5:\"title\";s:14:\"Classic Editor\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:33:\"css-js-manager/css-js-manager.php\";a:5:{s:4:\"slug\";s:14:\"css-js-manager\";s:7:\"version\";s:5:\"2.1.0\";s:5:\"title\";s:59:\"CSS JS Manager, Async JavaScript, Defer Render Blocking CSS\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:9:\"hello.php\";a:5:{s:4:\"slug\";s:11:\"hello-dolly\";s:7:\"version\";s:5:\"1.7.2\";s:5:\"title\";s:11:\"Hello Dolly\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:35:\"litespeed-cache/litespeed-cache.php\";a:5:{s:4:\"slug\";s:15:\"litespeed-cache\";s:7:\"version\";s:7:\"2.9.8.6\";s:5:\"title\";s:15:\"LiteSpeed Cache\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:23:\"loginizer/loginizer.php\";a:5:{s:4:\"slug\";s:9:\"loginizer\";s:7:\"version\";s:5:\"1.4.2\";s:5:\"title\";s:9:\"Loginizer\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:23:\"pagelayer/pagelayer.php\";a:5:{s:4:\"slug\";s:9:\"pagelayer\";s:7:\"version\";s:5:\"1.0.0\";s:5:\"title\";s:9:\"PageLayer\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:59:\"remove-meta-widget-branding/remove-meta-widget-branding.php\";a:5:{s:4:\"slug\";s:27:\"remove-meta-widget-branding\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:40:\"Remove WordPress.org link on meta widget\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:41:\"remove-wp-branding/remove-wp-branding.php\";a:5:{s:4:\"slug\";s:18:\"remove-wp-branding\";s:7:\"version\";s:5:\"1.0.8\";s:5:\"title\";s:18:\"Remove WP Branding\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:39:\"simple-author-box/simple-author-box.php\";a:5:{s:4:\"slug\";s:17:\"simple-author-box\";s:7:\"version\";s:5:\"2.3.3\";s:5:\"title\";s:17:\"Simple Author Box\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:33:\"wp-user-avatar/wp-user-avatar.php\";a:5:{s:4:\"slug\";s:14:\"wp-user-avatar\";s:7:\"version\";s:5:\"2.2.4\";s:5:\"title\";s:14:\"WP User Avatar\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1570245585;s:3:\"md5\";s:32:\"f836a1c47f83533e7dd85ab6a32e3af0\";s:6:\"themes\";a:4:{s:14:\"twentynineteen\";a:5:{s:4:\"slug\";s:14:\"twentynineteen\";s:7:\"version\";s:3:\"1.4\";s:5:\"title\";s:15:\"Twenty Nineteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:15:\"twentyseventeen\";a:5:{s:4:\"slug\";s:15:\"twentyseventeen\";s:7:\"version\";s:3:\"2.2\";s:5:\"title\";s:16:\"Twenty Seventeen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:13:\"twentysixteen\";a:5:{s:4:\"slug\";s:13:\"twentysixteen\";s:7:\"version\";s:3:\"2.0\";s:5:\"title\";s:14:\"Twenty Sixteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:7:\"webhost\";a:5:{s:4:\"slug\";s:7:\"webhost\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:7:\"WebHost\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:1:{s:17:\"simple-author-box\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:8:\"13030440\";s:9:\"plugin_id\";s:4:\"4707\";s:7:\"user_id\";s:7:\"2270355\";s:5:\"title\";s:9:\"Atom CORE\";s:3:\"url\";s:21:\"http://atom-online.ml\";s:7:\"version\";s:5:\"2.3.3\";s:8:\"language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.2.3\";s:11:\"sdk_version\";s:5:\"2.3.0\";s:28:\"programming_language_version\";s:5:\"7.3.6\";s:7:\"plan_id\";s:4:\"7569\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;s:10:\"public_key\";s:32:\"pk_d4226e470d8eeb7fd61e9ce944ba0\";s:10:\"secret_key\";s:32:\"sk_i9a9:1Fib-{V%#ZCbD.:W:Iwgi@5f\";s:2:\"id\";s:7:\"3201815\";s:7:\"updated\";s:19:\"2019-10-05 02:28:17\";s:7:\"created\";s:19:\"2019-10-05 02:28:15\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:5:\"users\";a:1:{i:2270355;O:7:\"FS_User\":13:{s:5:\"email\";s:20:\"admin@atom-online.ml\";s:5:\"first\";s:4:\"atom\";s:4:\"last\";s:6:\"-admin\";s:11:\"is_verified\";b:0;s:7:\"is_beta\";b:0;s:11:\"customer_id\";N;s:5:\"gross\";i:0;s:10:\"public_key\";s:32:\"pk_2cfa7365ffb0b3413afc301623d4b\";s:10:\"secret_key\";s:32:\"sk_dfav%<]Z4(]5UVZy~FS;lu^1HaiCZ\";s:2:\"id\";s:7:\"2270355\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2019-10-05 02:28:14\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:23:\"user_id_license_ids_map\";a:1:{i:4707;a:1:{i:2270355;a:0:{}}}s:12:\"all_licenses\";a:1:{i:4707;a:0:{}}}', 'yes'),
(465, 'fs_api_cache', 'a:5:{s:26:\"get:/v1/users/2270355.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":16:{s:15:\"default_card_id\";N;s:5:\"gross\";i:0;s:6:\"source\";i:0;s:13:\"last_login_at\";N;s:5:\"email\";s:20:\"admin@atom-online.ml\";s:5:\"first\";s:4:\"atom\";s:4:\"last\";s:6:\"-admin\";s:7:\"picture\";N;s:2:\"ip\";s:13:\"66.249.88.148\";s:11:\"is_verified\";b:0;s:10:\"secret_key\";s:32:\"sk_dfav%<]Z4(]5UVZy~FS;lu^1HaiCZ\";s:10:\"public_key\";s:32:\"pk_2cfa7365ffb0b3413afc301623d4b\";s:2:\"id\";s:7:\"2270355\";s:7:\"created\";s:19:\"2019-10-05 02:28:14\";s:7:\"updated\";N;s:11:\"customer_id\";N;}s:7:\"created\";i:1570242503;s:9:\"timestamp\";i:1570328903;}s:29:\"get:/v1/installs/3201815.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":31:{s:7:\"site_id\";s:8:\"13030440\";s:9:\"plugin_id\";s:4:\"4707\";s:7:\"user_id\";s:7:\"2270355\";s:3:\"url\";s:21:\"http://atom-online.ml\";s:5:\"title\";s:9:\"Atom CORE\";s:7:\"version\";s:5:\"2.3.3\";s:7:\"plan_id\";s:4:\"7569\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:15:\"subscription_id\";N;s:5:\"gross\";i:0;s:12:\"country_code\";s:2:\"us\";s:8:\"language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.2.3\";s:11:\"sdk_version\";s:5:\"2.3.0\";s:28:\"programming_language_version\";s:5:\"7.3.6\";s:9:\"is_active\";b:1;s:15:\"is_disconnected\";b:0;s:10:\"is_premium\";b:0;s:14:\"is_uninstalled\";b:0;s:9:\"is_locked\";b:0;s:6:\"source\";i:0;s:8:\"upgraded\";N;s:12:\"last_seen_at\";s:19:\"2019-10-05 02:28:18\";s:10:\"secret_key\";s:32:\"sk_i9a9:1Fib-{V%#ZCbD.:W:Iwgi@5f\";s:10:\"public_key\";s:32:\"pk_d4226e470d8eeb7fd61e9ce944ba0\";s:2:\"id\";s:7:\"3201815\";s:7:\"created\";s:19:\"2019-10-05 02:28:15\";s:7:\"updated\";s:19:\"2019-10-05 02:28:17\";}s:7:\"created\";i:1570242503;s:9:\"timestamp\";i:1570328903;}s:45:\"get:/v1/users/2270355/plugins/4707/plans.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:5:\"plans\";a:1:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:4:\"4707\";s:4:\"name\";s:4:\"free\";s:5:\"title\";s:4:\"Free\";s:11:\"description\";N;s:17:\"is_free_localhost\";b:1;s:17:\"is_block_features\";b:1;s:12:\"license_type\";i:0;s:16:\"is_https_support\";b:0;s:12:\"trial_period\";N;s:23:\"is_require_subscription\";b:0;s:10:\"support_kb\";N;s:13:\"support_forum\";s:55:\"https://wordpress.org/support/plugin/simple-author-box/\";s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";b:0;s:11:\"is_featured\";b:0;s:2:\"id\";s:4:\"7569\";s:7:\"updated\";s:19:\"2019-10-01 17:27:24\";s:7:\"created\";s:19:\"2019-10-01 17:08:01\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:7:\"created\";i:1570245584;s:9:\"timestamp\";i:1570331984;}s:56:\"get:/v1/users/2270355.json?plugin_id=4707&fields=is_beta\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":2:{s:2:\"id\";s:7:\"2270355\";s:7:\"is_beta\";b:0;}s:7:\"created\";i:1570245584;s:9:\"timestamp\";i:1570331984;}s:65:\"get:/v1/users/2270355/plugins/4707/licenses.json?is_enriched=true\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":1:{s:8:\"licenses\";a:0:{}}s:7:\"created\";i:1570245584;s:9:\"timestamp\";i:1570331984;}}', 'yes'),
(466, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:2:{s:8:\"required\";b:0;s:18:\"show_opt_in_notice\";b:0;}}', 'yes'),
(469, 'widget_simple_author_box_widget_lite', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, 'pi_css_js_manager_installation_date', '2019-10-04', 'yes'),
(237, 'litespeed-cache-conf', 'a:126:{s:7:\"version\";s:7:\"2.9.8.6\";s:12:\"radio_select\";i:1;s:12:\"auto_upgrade\";b:1;s:13:\"purge_upgrade\";b:1;s:10:\"cache_priv\";b:1;s:15:\"cache_commenter\";b:1;s:10:\"cache_rest\";b:1;s:16:\"cache_page_login\";b:1;s:10:\"timed_urls\";s:0:\"\";s:15:\"timed_urls_time\";s:0:\"\";s:13:\"cache_favicon\";b:1;s:15:\"cache_resources\";b:1;s:18:\"mobileview_enabled\";b:1;s:16:\"mobileview_rules\";s:62:\"Mobile|Android|Silk/|Kindle|BlackBerry|Opera\\ Mini|Opera\\ Mobi\";s:12:\"cache_object\";b:0;s:17:\"cache_object_kind\";b:0;s:17:\"cache_object_host\";s:9:\"localhost\";s:17:\"cache_object_port\";s:5:\"11211\";s:17:\"cache_object_life\";s:3:\"360\";s:23:\"cache_object_persistent\";b:1;s:18:\"cache_object_admin\";b:1;s:23:\"cache_object_transients\";b:1;s:18:\"cache_object_db_id\";s:1:\"0\";s:17:\"cache_object_user\";s:0:\"\";s:17:\"cache_object_pswd\";s:0:\"\";s:13:\"cache_browser\";b:0;s:17:\"cache_browser_ttl\";i:2592000;s:12:\"login_cookie\";s:0:\"\";s:19:\"check_advancedcache\";b:1;s:23:\"use_http_for_https_vary\";b:0;s:17:\"debug_disable_all\";b:0;s:5:\"debug\";i:0;s:9:\"admin_ips\";s:9:\"127.0.0.1\";s:11:\"debug_level\";b:0;s:13:\"log_file_size\";i:3;s:9:\"heartbeat\";b:1;s:12:\"debug_cookie\";b:0;s:10:\"collaps_qs\";b:0;s:11:\"log_filters\";b:0;s:10:\"public_ttl\";i:604800;s:11:\"private_ttl\";i:1800;s:14:\"front_page_ttl\";i:604800;s:8:\"feed_ttl\";i:0;s:7:\"403_ttl\";i:3600;s:7:\"404_ttl\";i:3600;s:7:\"500_ttl\";i:3600;s:13:\"purge_by_post\";s:22:\"A.F.H.M.PGS.PGSRP.PT.T\";s:11:\"excludes_qs\";s:0:\"\";s:12:\"excludes_cat\";s:0:\"\";s:12:\"excludes_tag\";s:0:\"\";s:13:\"instant_click\";b:0;s:10:\"css_minify\";b:1;s:17:\"css_inline_minify\";b:1;s:11:\"css_combine\";b:0;s:21:\"css_combined_priority\";b:0;s:9:\"css_http2\";b:1;s:11:\"css_exclude\";s:0:\"\";s:9:\"js_minify\";b:0;s:16:\"js_inline_minify\";b:0;s:10:\"js_combine\";b:0;s:20:\"js_combined_priority\";b:0;s:8:\"js_http2\";b:1;s:10:\"js_exclude\";s:0:\"\";s:12:\"optimize_ttl\";i:604800;s:11:\"html_minify\";b:1;s:10:\"optm_qs_rm\";b:0;s:15:\"optm_ggfonts_rm\";b:0;s:14:\"optm_css_async\";b:1;s:13:\"optm_ccss_gen\";b:1;s:15:\"optm_ccss_async\";b:1;s:21:\"optm_css_async_inline\";b:1;s:13:\"optm_js_defer\";b:1;s:13:\"optm_emoji_rm\";b:0;s:19:\"optm_exclude_jquery\";b:1;s:18:\"optm_ggfonts_async\";b:0;s:13:\"optm_max_size\";s:3:\"1.2\";s:15:\"optm_rm_comment\";b:1;s:3:\"cdn\";b:0;s:7:\"cdn_ori\";s:17:\"//*atom-online.ml\";s:11:\"cdn_exclude\";s:0:\"\";s:17:\"cdn_remote_jquery\";i:1;s:8:\"cdn_quic\";b:0;s:14:\"cdn_quic_email\";s:0:\"\";s:12:\"cdn_quic_key\";s:0:\"\";s:14:\"cdn_cloudflare\";b:1;s:20:\"cdn_cloudflare_email\";s:23:\"rexydogwoof02@gmail.com\";s:18:\"cdn_cloudflare_key\";s:37:\"91b25ae157150f6e1966becf945caa3f7ecf1\";s:19:\"cdn_cloudflare_name\";s:14:\"atom-online.ml\";s:19:\"cdn_cloudflare_zone\";s:0:\"\";s:14:\"media_img_lazy\";b:0;s:26:\"media_img_lazy_placeholder\";s:0:\"\";s:22:\"media_placeholder_resp\";b:0;s:28:\"media_placeholder_resp_color\";s:7:\"#cfd4db\";s:28:\"media_placeholder_resp_async\";b:1;s:17:\"media_iframe_lazy\";b:0;s:23:\"media_img_lazyjs_inline\";b:0;s:15:\"media_optm_auto\";b:0;s:15:\"media_optm_cron\";b:1;s:14:\"media_optm_ori\";b:1;s:17:\"media_rm_ori_bkup\";b:0;s:15:\"media_optm_webp\";b:0;s:19:\"media_optm_lossless\";b:0;s:15:\"media_optm_exif\";b:0;s:18:\"media_webp_replace\";b:0;s:25:\"media_webp_replace_srcset\";b:0;s:4:\"hash\";s:32:\"TN2C4psDF7kLAdT2sJZ7UhQQXjKJkbKf\";s:15:\"nocache_cookies\";s:0:\"\";s:18:\"nocache_useragents\";s:0:\"\";s:21:\"crawler_include_posts\";b:1;s:21:\"crawler_include_pages\";b:1;s:20:\"crawler_include_cats\";b:1;s:20:\"crawler_include_tags\";b:1;s:20:\"crawler_excludes_cpt\";s:0:\"\";s:19:\"crawler_order_links\";s:9:\"date_desc\";s:14:\"crawler_usleep\";i:500;s:20:\"crawler_run_duration\";i:400;s:20:\"crawler_run_interval\";i:600;s:22:\"crawler_crawl_interval\";i:302400;s:15:\"crawler_threads\";i:3;s:18:\"crawler_load_limit\";s:1:\"1\";s:17:\"crawler_domain_ip\";s:0:\"\";s:22:\"crawler_custom_sitemap\";s:0:\"\";s:19:\"crawler_cron_active\";b:0;s:11:\"esi_enabled\";b:0;s:17:\"esi_cached_admbar\";b:1;s:19:\"esi_cached_commform\";b:1;}', 'yes'),
(238, 'litespeed-cache_uri_priv', '', 'yes'),
(239, 'litespeed-cache-drop_qs', '', 'yes'),
(240, 'litespeed-forced_cache_uri', '', 'yes'),
(241, 'litespeed-excludes_uri', '', 'yes'),
(242, 'litespeed-cache-exclude-cache-roles', 'a:0:{}', 'yes'),
(243, 'litespeed-optm-css', '', 'yes'),
(244, 'litespeed-optm_excludes', '', 'yes'),
(245, 'litespeed-optm-js-defer-excludes', '', 'yes'),
(246, 'litespeed-cache-exclude-optimization-roles', 'a:0:{}', 'yes'),
(247, 'litespeed-cache-dns_prefetch', '', 'yes'),
(248, 'litespeed-optm-ccss-separate_posttype', '', 'yes'),
(249, 'litespeed-optm-css-separate_uri', '', 'yes'),
(250, 'litespeed-media-lazy-img-excludes', '', 'yes'),
(251, 'litespeed-media-lazy-img-cls-excludes', '', 'yes'),
(252, 'litespeed-media-webp_attribute', 'img.src\ndiv.data-thumb\nimg.data-src\ndiv.data-large_image\nimg.retina_logo_url', 'yes'),
(253, 'litespeed-cdn-ori_dir', 'wp-content\nwp-includes\n/min/', 'yes'),
(254, 'litespeed-cache-cdn_mapping', 'a:1:{i:0;a:5:{s:3:\"url\";s:18:\"cdn.atom-online.ml\";s:7:\"inc_img\";s:1:\"1\";s:7:\"inc_css\";s:1:\"1\";s:6:\"inc_js\";s:1:\"1\";s:8:\"filetype\";s:86:\".aac\n.css\n.eot\n.gif\n.jpeg\n.js\n.jpg\n.less\n.mp3\n.mp4\n.ogg\n.otf\n.pdf\n.png\n.svg\n.ttf\n.woff\";}}', 'yes'),
(255, 'litespeed-adv-purge_all_hooks', 'switch_theme\nwp_create_nav_menu\nwp_update_nav_menu\nwp_delete_nav_menu\ncreate_term\nedit_terms\ndelete_term\nadd_link\nedit_link\ndelete_link', 'yes'),
(256, 'litespeed-log_ignore_filters', 'gettext\ngettext_with_context\nget_the_terms\nget_term', 'yes'),
(257, 'litespeed-log_ignore_part_filters', 'i18n\nlocale\nsettings\noption', 'yes'),
(258, 'litespeed-crawler-as-uids', '', 'yes'),
(259, 'litespeed-crawler-cookies', 'a:0:{}', 'yes'),
(260, 'litespeed-object_global_groups', 'users\nuserlogins\nusermeta\nuser_meta\nsite-transient\nsite-options\nsite-lookup\nblog-lookup\nblog-details\nrss\nglobal-posts\nblog-id-cache', 'yes'),
(261, 'litespeed-object_non_persistent_groups', 'comment\ncounts\nplugins\nwc_session_id', 'yes'),
(262, 'litespeed-cache-vary-group', 'a:1:{s:13:\"administrator\";s:2:\"99\";}', 'yes'),
(270, 'css-js-manager_first_run', 'complete', 'yes'),
(144, 'can_compress_scripts', '0', 'no'),
(155, 'rwp_howdy_text', 'And now we build! -', 'yes'),
(156, 'rwp_eliminate_logo', '1', 'yes'),
(157, 'rwp_eliminate_new_menu', '', 'yes'),
(158, 'rwp_eliminate_help', '1', 'yes'),
(159, 'rwp_lower_left_text', 'Plugins by <a href=\"http://workshop-mg.com\">workshop-mg.com</a>', 'yes'),
(160, 'rwp_login_logo', 'http://atom-online.ml/wp-content/uploads/2019/10/core_login_ui-1.png', 'yes'),
(161, 'rwp_login_logo_height', '', 'yes'),
(162, 'rwp_remove_comp_dashboards', '1', 'yes'),
(163, 'rwp_left_widget_title', 'Branding Left Widget', 'yes'),
(164, 'rwp_left_widget_content', 'You can alter this content on the <a href=\"/wp-admin/plugins.php?page=remove-wp-branding\">settings page</a>.', 'yes'),
(303, 'wpuh_litespeed_img_optm', '2.9.8.6', 'yes'),
(304, 'wpuh_litespeed_optimizer', '2.9.8.6', 'yes'),
(555, 'loginizer_msg', 'a:2:{s:12:\"inv_userpass\";s:67:\"Incorrect Username or Password. Please check your mental condition.\";s:14:\"ip_blacklisted\";s:134:\"Your IP has been blocked(blacklisted) from this website. Please contact the administrator at admin@atom-online.ml for more information\";}', 'yes'),
(341, 'litespeed-timestamp-purge-css', '1570254602', 'yes'),
(343, 'litespeed-ccss-summary', 'a:2:{s:5:\"queue\";a:5:{s:11:\"home.mobile\";a:3:{s:3:\"url\";s:21:\"http://atom-online.ml\";s:10:\"user_agent\";s:153:\"Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3694.0 Mobile Safari/537.36 Chrome-Lighthouse\";s:9:\"is_mobile\";b:1;}s:4:\"home\";a:3:{s:3:\"url\";s:22:\"https://atom-online.ml\";s:10:\"user_agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:9:\"is_mobile\";b:0;}s:10:\"404.mobile\";a:3:{s:3:\"url\";s:65:\"http://atom-online.ml/wp-content/themes/webhost/images/header.jpg\";s:10:\"user_agent\";s:139:\"Mozilla/5.0 (Linux; Android 6.0.1; H1611 Build/HUAWEIH1611) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.91 Mobile Safari/537.36\";s:9:\"is_mobile\";b:1;}s:6:\"author\";a:3:{s:3:\"url\";s:39:\"http://atom-online.ml/author/atom-admin\";s:10:\"user_agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:9:\"is_mobile\";b:0;}s:4:\"post\";a:3:{s:3:\"url\";s:42:\"http://atom-online.ml/2019/10/05/im-simple\";s:10:\"user_agent\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:9:\"is_mobile\";b:0;}}s:12:\"curr_request\";i:1570264582;}', 'yes'),
(345, 'litespeed_api_cloud', 'https://eu.wp.api.litespeedtech.com', 'yes'),
(346, 'litespeed_api_key_hash', 'iIgY3gXoJ1S88qcv', 'yes'),
(460, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:26:\"simple-author-box/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.0\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1570264570;s:11:\"plugin_path\";s:39:\"simple-author-box/simple-author-box.php\";}}s:7:\"abspath\";s:59:\"/home/vol5_8/epizy.com/epiz_24564568/atom-online.ml/htdocs/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:39:\"simple-author-box/simple-author-box.php\";s:8:\"sdk_path\";s:26:\"simple-author-box/freemius\";s:7:\"version\";s:5:\"2.3.0\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1570264570;}}', 'yes'),
(442, 'widget_wp_user_avatar_profile', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(443, 'avatar_default_wp_user_avatar', '', 'yes'),
(444, 'wp_user_avatar_allow_upload', '1', 'yes'),
(445, 'wp_user_avatar_disable_gravatar', '0', 'yes'),
(446, 'wp_user_avatar_edit_avatar', '1', 'yes'),
(447, 'wp_user_avatar_resize_crop', '0', 'yes'),
(448, 'wp_user_avatar_resize_h', '96', 'yes'),
(449, 'wp_user_avatar_resize_upload', '1', 'yes'),
(450, 'wp_user_avatar_resize_w', '96', 'yes'),
(451, 'wp_user_avatar_tinymce', '1', 'yes'),
(452, 'wp_user_avatar_upload_size_limit', '10485760', 'yes'),
(453, 'wp_user_avatar_default_avatar_updated', '1', 'yes'),
(454, 'wp_user_avatar_users_updated', '1', 'yes'),
(455, 'wp_user_avatar_media_updated', '1', 'yes'),
(472, 'sab_box_subset', 'none', 'yes'),
(473, 'sab_box_name_font', 'None', 'yes'),
(474, 'sab_box_web_font', 'None', 'yes'),
(475, 'sab_box_desc_font', 'None', 'yes'),
(476, 'sab_box_name_size', '18', 'yes'),
(477, 'sab_box_web_size', '14', 'yes'),
(478, 'sab_box_desc_size', '14', 'yes'),
(479, 'sab_box_icon_size', '18', 'yes'),
(480, 'saboxplugin_options', 'a:15:{s:15:\"sab_link_target\";i:1;s:20:\"sab_box_border_width\";i:1;s:16:\"sab_avatar_style\";s:1:\"0\";s:16:\"sab_web_position\";s:1:\"0\";s:11:\"sab_colored\";s:1:\"0\";s:15:\"sab_icons_style\";s:1:\"0\";s:20:\"sab_box_author_color\";N;s:17:\"sab_box_web_color\";N;s:14:\"sab_box_border\";s:0:\"\";s:18:\"sab_box_icons_back\";s:0:\"\";s:19:\"sab_box_author_back\";s:0:\"\";s:22:\"sab_box_author_p_color\";s:0:\"\";s:22:\"sab_box_author_a_color\";N;s:19:\"sab_box_icons_color\";N;s:14:\"sab_desc_style\";s:1:\"0\";}', 'yes'),
(513, 'wpua_hash_gravatar', 's:414:\"a:6:{s:32:\"1f315370a2160cb57f634cd16f960519\";a:1:{s:10:\"10-05-2019\";b:0;}s:32:\"ad516503a11cd5ca435acc9bb6523536\";a:1:{s:10:\"10-05-2019\";b:1;}s:32:\"b04457669c66d21046dc325ca81e5455\";a:1:{s:10:\"10-05-2019\";b:1;}s:32:\"d4a53e95e5704afa6d7f3175c9d52573\";a:1:{s:10:\"10-05-2019\";b:0;}s:32:\"3781f3b11868fe2f29a7042211df350f\";a:1:{s:10:\"10-05-2019\";b:0;}s:32:\"f7ca9f176a41b99398b78fe9cedf05f7\";a:1:{s:10:\"10-05-2019\";b:0;}}\";', 'yes'),
(737, '_site_transient_timeout_browser_40d2af28a4c309bbb824dc957af59b11', '1570859769', 'no');
INSERT INTO `wpuh_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(738, '_site_transient_browser_40d2af28a4c309bbb824dc957af59b11', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"77.0.3865.90\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(572, 'WPLANG', '', 'yes'),
(573, 'new_admin_email', 'admin@atom-online.ml', 'yes'),
(672, 'akismet_strictness', '0', 'yes'),
(673, 'akismet_show_user_comments_approved', '1', 'yes'),
(674, 'akismet_comment_form_privacy_notice', 'display', 'yes'),
(675, 'wordpress_api_key', '9f898545e29a', 'yes'),
(724, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1570254393;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
(725, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1570254393;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:11:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"autoptimize/autoptimize.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/autoptimize\";s:4:\"slug\";s:11:\"autoptimize\";s:6:\"plugin\";s:27:\"autoptimize/autoptimize.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/autoptimize/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/autoptimize.2.5.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-128x128.png?rev=1864142\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/autoptimize/assets/banner-772x250.jpg?rev=1315920\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"css-js-manager/css-js-manager.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/css-js-manager\";s:4:\"slug\";s:14:\"css-js-manager\";s:6:\"plugin\";s:33:\"css-js-manager/css-js-manager.php\";s:11:\"new_version\";s:5:\"2.1.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/css-js-manager/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/css-js-manager.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/css-js-manager/assets/icon.svg?rev=2089061\";s:3:\"svg\";s:59:\"https://ps.w.org/css-js-manager/assets/icon.svg?rev=2089061\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/css-js-manager/assets/banner-1544x500.png?rev=2023734\";s:2:\"1x\";s:69:\"https://ps.w.org/css-js-manager/assets/banner-772x250.png?rev=2024983\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"imagemagick-engine/imagemagick-engine.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/imagemagick-engine\";s:4:\"slug\";s:18:\"imagemagick-engine\";s:6:\"plugin\";s:41:\"imagemagick-engine/imagemagick-engine.php\";s:11:\"new_version\";s:5:\"1.5.4\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/imagemagick-engine/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/imagemagick-engine.1.5.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:69:\"https://s.w.org/plugins/geopattern-icon/imagemagick-engine_eed3c4.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/imagemagick-engine/assets/banner-772x250.jpg?rev=618669\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"litespeed-cache/litespeed-cache.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/litespeed-cache\";s:4:\"slug\";s:15:\"litespeed-cache\";s:6:\"plugin\";s:35:\"litespeed-cache/litespeed-cache.php\";s:11:\"new_version\";s:7:\"2.9.8.6\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/litespeed-cache/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/litespeed-cache.2.9.8.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-256x256.png?rev=1574145\";s:2:\"1x\";s:68:\"https://ps.w.org/litespeed-cache/assets/icon-128x128.png?rev=1574145\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/litespeed-cache/assets/banner-1544x500.png?rev=2031698\";s:2:\"1x\";s:70:\"https://ps.w.org/litespeed-cache/assets/banner-772x250.png?rev=2031698\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"loginizer/loginizer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/loginizer\";s:4:\"slug\";s:9:\"loginizer\";s:6:\"plugin\";s:23:\"loginizer/loginizer.php\";s:11:\"new_version\";s:5:\"1.4.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/loginizer/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/loginizer.1.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/loginizer/assets/icon-256x256.png?rev=1381093\";s:2:\"1x\";s:62:\"https://ps.w.org/loginizer/assets/icon-128x128.png?rev=1381093\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/loginizer/assets/banner-1544x500.jpg?rev=1517954\";s:2:\"1x\";s:64:\"https://ps.w.org/loginizer/assets/banner-772x250.jpg?rev=1517954\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"pagelayer/pagelayer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/pagelayer\";s:4:\"slug\";s:9:\"pagelayer\";s:6:\"plugin\";s:23:\"pagelayer/pagelayer.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/pagelayer/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/pagelayer.1.0.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/pagelayer/assets/icon-256x256.png?rev=2064937\";s:2:\"1x\";s:62:\"https://ps.w.org/pagelayer/assets/icon-128x128.png?rev=2064937\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/pagelayer/assets/banner-1544x500.jpg?rev=2064937\";s:2:\"1x\";s:64:\"https://ps.w.org/pagelayer/assets/banner-772x250.jpg?rev=2064937\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"remove-wp-branding/remove-wp-branding.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/remove-wp-branding\";s:4:\"slug\";s:18:\"remove-wp-branding\";s:6:\"plugin\";s:41:\"remove-wp-branding/remove-wp-branding.php\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/remove-wp-branding/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/remove-wp-branding.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/remove-wp-branding/assets/icon-256x256.png?rev=1125988\";s:2:\"1x\";s:71:\"https://ps.w.org/remove-wp-branding/assets/icon-128x128.png?rev=1132985\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/remove-wp-branding/assets/banner-772x250.png?rev=1125988\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"simple-author-box/simple-author-box.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/simple-author-box\";s:4:\"slug\";s:17:\"simple-author-box\";s:6:\"plugin\";s:39:\"simple-author-box/simple-author-box.php\";s:11:\"new_version\";s:5:\"2.3.3\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/simple-author-box/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/simple-author-box.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/simple-author-box/assets/icon-128x128.jpg?rev=1821054\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/simple-author-box/assets/banner-772x250.jpg?rev=1821054\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"wp-user-avatar/wp-user-avatar.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-user-avatar\";s:4:\"slug\";s:14:\"wp-user-avatar\";s:6:\"plugin\";s:33:\"wp-user-avatar/wp-user-avatar.php\";s:11:\"new_version\";s:5:\"2.2.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-user-avatar/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/wp-user-avatar.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wp-user-avatar/assets/icon-256x256.png?rev=1755722\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-user-avatar/assets/icon-128x128.png?rev=1755722\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/wp-user-avatar/assets/banner-772x250.png?rev=882713\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(596, 'autoptimize_version', '2.5.1', 'yes'),
(599, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(726, '_site_transient_timeout_theme_roots', '1570256194', 'no'),
(727, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:7:\"webhost\";s:7:\"/themes\";}', 'no'),
(728, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1570254395;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:7:\"webhost\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(740, '_site_transient_php_check_f0b6411b8c82dcf39302e5312c1fbd33', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(756, '_transient_doing_cron', '1570264953.0286669731140136718750', 'yes'),
(638, 'autoptimize_html', 'on', 'yes'),
(639, 'autoptimize_html_keepcomments', '', 'yes'),
(640, 'autoptimize_js', 'on', 'yes'),
(641, 'autoptimize_js_aggregate', 'on', 'yes'),
(642, 'autoptimize_js_exclude', 'wp-includes/js/dist/, wp-includes/js/tinymce/, js/jquery/jquery.js', 'yes'),
(643, 'autoptimize_js_trycatch', 'on', 'yes'),
(644, 'autoptimize_js_justhead', '', 'yes'),
(645, 'autoptimize_js_forcehead', '', 'yes'),
(646, 'autoptimize_js_include_inline', '', 'yes'),
(647, 'autoptimize_css', 'on', 'yes'),
(648, 'autoptimize_css_aggregate', 'on', 'yes'),
(649, 'autoptimize_css_exclude', 'wp-content/cache/, wp-content/uploads/, admin-bar.min.css, dashicons.min.css', 'yes'),
(650, 'autoptimize_css_justhead', '', 'yes'),
(651, 'autoptimize_css_datauris', 'on', 'yes'),
(652, 'autoptimize_css_defer', '', 'yes'),
(653, 'autoptimize_css_defer_inline', '', 'yes'),
(654, 'autoptimize_css_inline', '', 'yes'),
(655, 'autoptimize_css_include_inline', 'on', 'yes'),
(656, 'autoptimize_cdn_url', '//cdn.atom-online.ml/', 'yes'),
(657, 'autoptimize_cache_clean', '0', 'yes'),
(658, 'autoptimize_cache_nogzip', 'on', 'yes'),
(659, 'autoptimize_show_adv', '1', 'yes'),
(660, 'autoptimize_optimize_logged', 'on', 'yes'),
(661, 'autoptimize_optimize_checkout', '', 'yes'),
(662, 'autoptimize_minify_excluded', 'on', 'yes'),
(676, 'akismet_ssl_disabled', '1570251027', 'yes'),
(677, 'akismet_spam_count', '0', 'yes'),
(739, '_site_transient_timeout_php_check_f0b6411b8c82dcf39302e5312c1fbd33', '1570859769', 'no'),
(721, '_transient_timeout_saboxplugin_review', '1572846386', 'no'),
(722, '_transient_saboxplugin_review', '2019-10-05', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_postmeta`
--

CREATE TABLE `wpuh_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpuh_postmeta`
--

INSERT INTO `wpuh_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(22, 15, '_wp_attached_file', '2019/10/core_login_ui-1.png'),
(23, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1026;s:6:\"height\";i:588;s:4:\"file\";s:27:\"2019/10/core_login_ui-1.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"core_login_ui-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"core_login_ui-1-300x172.png\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"core_login_ui-1-768x440.png\";s:5:\"width\";i:768;s:6:\"height\";i:440;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"core_login_ui-1-1024x587.png\";s:5:\"width\";i:1024;s:6:\"height\";i:587;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-large-thumb\";a:4:{s:4:\"file\";s:27:\"core_login_ui-1-830x476.png\";s:5:\"width\";i:830;s:6:\"height\";i:476;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:27:\"core_login_ui-1-550x400.png\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:27:\"core_login_ui-1-230x132.png\";s:5:\"width\";i:230;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 7, '_wp_attached_file', '2019/09/BitWare-Logo1.png'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:410;s:6:\"height\";i:318;s:4:\"file\";s:25:\"2019/09/BitWare-Logo1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"BitWare-Logo1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"BitWare-Logo1-300x233.png\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:25:\"BitWare-Logo1-230x178.png\";s:5:\"width\";i:230;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:558;s:6:\"height\";i:307;s:4:\"file\";s:23:\"2019/09/octicons-bg.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"octicons-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"octicons-bg-300x165.png\";s:5:\"width\";i:300;s:6:\"height\";i:165;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:23:\"octicons-bg-550x307.png\";s:5:\"width\";i:550;s:6:\"height\";i:307;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:23:\"octicons-bg-230x127.png\";s:5:\"width\";i:230;s:6:\"height\";i:127;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 11, '_wp_trash_meta_status', 'publish'),
(16, 11, '_edit_lock', '1569808478:1'),
(18, 12, '_wp_attached_file', '2019/09/octicons-bg.png'),
(21, 11, '_wp_trash_meta_time', '1569808487'),
(24, 16, '_wp_attached_file', '2019/10/core_logo-e1569983197243.png'),
(25, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:589;s:6:\"height\";i:336;s:4:\"file\";s:36:\"2019/10/core_logo-e1569983197243.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"core_logo-e1569983197243-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"core_logo-e1569983197243-300x171.png\";s:5:\"width\";i:300;s:6:\"height\";i:171;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"core_logo-768x440.png\";s:5:\"width\";i:768;s:6:\"height\";i:440;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"core_logo-1024x587.png\";s:5:\"width\";i:1024;s:6:\"height\";i:587;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-large-thumb\";a:4:{s:4:\"file\";s:21:\"core_logo-830x476.png\";s:5:\"width\";i:830;s:6:\"height\";i:476;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:36:\"core_logo-e1569983197243-550x336.png\";s:5:\"width\";i:550;s:6:\"height\";i:336;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:36:\"core_logo-e1569983197243-230x131.png\";s:5:\"width\";i:230;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 16, '_edit_lock', '1569983228:1'),
(27, 16, '_wp_attachment_backup_sizes', 'a:8:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:1026;s:6:\"height\";i:588;s:4:\"file\";s:13:\"core_logo.png\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:21:\"core_logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:21:\"core_logo-300x172.png\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:21:\"core_logo-768x440.png\";s:5:\"width\";i:768;s:6:\"height\";i:440;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:22:\"core_logo-1024x587.png\";s:5:\"width\";i:1024;s:6:\"height\";i:587;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"webhost-large-thumb-orig\";a:4:{s:4:\"file\";s:21:\"core_logo-830x476.png\";s:5:\"width\";i:830;s:6:\"height\";i:476;s:9:\"mime-type\";s:9:\"image/png\";}s:25:\"webhost-medium-thumb-orig\";a:4:{s:4:\"file\";s:21:\"core_logo-550x400.png\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:24:\"webhost-small-thumb-orig\";a:4:{s:4:\"file\";s:21:\"core_logo-230x132.png\";s:5:\"width\";i:230;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(28, 16, '_wp_attachment_image_alt', 'site logo'),
(29, 16, '_edit_last', '1'),
(30, 17, '_wp_attached_file', '2019/10/cropped-core_logo-e1569983197243.png'),
(31, 17, '_wp_attachment_context', 'site-icon'),
(32, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:44:\"2019/10/cropped-core_logo-e1569983197243.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"cropped-core_logo-e1569983197243-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"cropped-core_logo-e1569983197243-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:44:\"cropped-core_logo-e1569983197243-512x400.png\";s:5:\"width\";i:512;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:44:\"cropped-core_logo-e1569983197243-230x230.png\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:44:\"cropped-core_logo-e1569983197243-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:44:\"cropped-core_logo-e1569983197243-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:44:\"cropped-core_logo-e1569983197243-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:42:\"cropped-core_logo-e1569983197243-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 18, '_wp_attached_file', '2019/10/cropped-core_logo-e1569983197243-1.png'),
(34, 18, '_wp_attachment_context', 'site-icon'),
(35, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:46:\"2019/10/cropped-core_logo-e1569983197243-1.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"cropped-core_logo-e1569983197243-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"cropped-core_logo-e1569983197243-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:46:\"cropped-core_logo-e1569983197243-1-512x400.png\";s:5:\"width\";i:512;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:46:\"cropped-core_logo-e1569983197243-1-230x230.png\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:46:\"cropped-core_logo-e1569983197243-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:46:\"cropped-core_logo-e1569983197243-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:46:\"cropped-core_logo-e1569983197243-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:44:\"cropped-core_logo-e1569983197243-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 19, '_wp_attached_file', '2019/10/core_logo-1.png'),
(37, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1026;s:6:\"height\";i:588;s:4:\"file\";s:23:\"2019/10/core_logo-1.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"core_logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"core_logo-1-300x172.png\";s:5:\"width\";i:300;s:6:\"height\";i:172;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"core_logo-1-768x440.png\";s:5:\"width\";i:768;s:6:\"height\";i:440;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"core_logo-1-1024x587.png\";s:5:\"width\";i:1024;s:6:\"height\";i:587;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-large-thumb\";a:4:{s:4:\"file\";s:23:\"core_logo-1-830x476.png\";s:5:\"width\";i:830;s:6:\"height\";i:476;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:23:\"core_logo-1-550x400.png\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:23:\"core_logo-1-230x132.png\";s:5:\"width\";i:230;s:6:\"height\";i:132;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 20, '_wp_attached_file', '2019/10/cropped-core_logo-1.png'),
(39, 20, '_wp_attachment_context', 'site-icon'),
(40, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:31:\"2019/10/cropped-core_logo-1.png\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"cropped-core_logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"cropped-core_logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:31:\"cropped-core_logo-1-512x400.png\";s:5:\"width\";i:512;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:31:\"cropped-core_logo-1-230x230.png\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:31:\"cropped-core_logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:31:\"cropped-core_logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:31:\"cropped-core_logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:29:\"cropped-core_logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 21, '_wp_trash_meta_status', 'publish'),
(42, 21, '_wp_trash_meta_time', '1569983285'),
(43, 1, '_edit_lock', '1569983353:1'),
(44, 1, '_wp_trash_meta_status', 'publish'),
(45, 1, '_wp_trash_meta_time', '1569983496'),
(46, 1, '_wp_desired_post_slug', 'hello-world'),
(47, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(48, 23, '_edit_lock', '1570075682:1'),
(49, 23, '_edit_last', '1'),
(57, 25, '_wp_trash_meta_time', '1569988133'),
(56, 25, '_wp_trash_meta_status', 'publish'),
(58, 26, '_wp_trash_meta_status', 'publish'),
(59, 26, '_wp_trash_meta_time', '1570052770'),
(60, 27, '_wp_trash_meta_status', 'publish'),
(61, 27, '_wp_trash_meta_time', '1570052808'),
(62, 28, '_edit_lock', '1570075691:1'),
(63, 29, '_wp_trash_meta_status', 'publish'),
(64, 29, '_wp_trash_meta_time', '1570076057'),
(111, 54, '_wp_trash_meta_status', 'publish'),
(112, 54, '_wp_trash_meta_time', '1570241024'),
(110, 53, '_wp_trash_meta_time', '1570240929'),
(109, 53, '_wp_trash_meta_status', 'publish'),
(108, 53, '_edit_lock', '1570240918:1'),
(75, 35, '_edit_lock', '1570155180:1'),
(76, 37, '_wp_trash_meta_status', 'publish'),
(77, 37, '_wp_trash_meta_time', '1570157849'),
(78, 38, '_wp_attached_file', '2019/10/mountain-bg-2880x1800.png'),
(79, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2880;s:6:\"height\";i:1800;s:4:\"file\";s:33:\"2019/10/mountain-bg-2880x1800.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"mountain-bg-2880x1800-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"mountain-bg-2880x1800-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"mountain-bg-2880x1800-768x480.png\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"mountain-bg-2880x1800-1024x640.png\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-large-thumb\";a:4:{s:4:\"file\";s:33:\"mountain-bg-2880x1800-830x519.png\";s:5:\"width\";i:830;s:6:\"height\";i:519;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:33:\"mountain-bg-2880x1800-550x400.png\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:33:\"mountain-bg-2880x1800-230x144.png\";s:5:\"width\";i:230;s:6:\"height\";i:144;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(80, 39, '_wp_attached_file', '2019/10/Wallpaper-Simple-Design-2017-623x623.png'),
(81, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:623;s:6:\"height\";i:623;s:4:\"file\";s:48:\"2019/10/Wallpaper-Simple-Design-2017-623x623.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"Wallpaper-Simple-Design-2017-623x623-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"Wallpaper-Simple-Design-2017-623x623-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:48:\"Wallpaper-Simple-Design-2017-623x623-550x400.png\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:48:\"Wallpaper-Simple-Design-2017-623x623-230x230.png\";s:5:\"width\";i:230;s:6:\"height\";i:230;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 40, '_wp_attached_file', '2019/10/Simple-Desktop-Wallpaper.png'),
(83, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:1000;s:4:\"file\";s:36:\"2019/10/Simple-Desktop-Wallpaper.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Simple-Desktop-Wallpaper-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Simple-Desktop-Wallpaper-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"Simple-Desktop-Wallpaper-768x480.png\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"Simple-Desktop-Wallpaper-1024x640.png\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-large-thumb\";a:4:{s:4:\"file\";s:36:\"Simple-Desktop-Wallpaper-830x519.png\";s:5:\"width\";i:830;s:6:\"height\";i:519;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:36:\"Simple-Desktop-Wallpaper-550x400.png\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:36:\"Simple-Desktop-Wallpaper-230x144.png\";s:5:\"width\";i:230;s:6:\"height\";i:144;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 41, '_wp_trash_meta_status', 'publish'),
(85, 41, '_wp_trash_meta_time', '1570158538'),
(86, 42, '_wp_trash_meta_status', 'publish'),
(87, 42, '_wp_trash_meta_time', '1570158556'),
(88, 43, '_wp_trash_meta_status', 'publish'),
(89, 43, '_wp_trash_meta_time', '1570158573'),
(90, 44, '_wp_attached_file', '2019/10/28ce5df133f535eec9ce05bf90409e07.jpg'),
(91, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:418;s:4:\"file\";s:44:\"2019/10/28ce5df133f535eec9ce05bf90409e07.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"28ce5df133f535eec9ce05bf90409e07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"28ce5df133f535eec9ce05bf90409e07-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:44:\"28ce5df133f535eec9ce05bf90409e07-236x400.jpg\";s:5:\"width\";i:236;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:44:\"28ce5df133f535eec9ce05bf90409e07-230x407.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:407;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 45, '_wp_attached_file', '2019/10/99789.jpg'),
(93, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3840;s:6:\"height\";i:2160;s:4:\"file\";s:17:\"2019/10/99789.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"99789-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"99789-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"99789-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"99789-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"webhost-large-thumb\";a:4:{s:4:\"file\";s:17:\"99789-830x467.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:17:\"99789-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:17:\"99789-230x129.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(94, 46, '_wp_attached_file', '2019/10/a19b36b3dedd8674821b1df3235555d2.jpg'),
(95, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:44:\"2019/10/a19b36b3dedd8674821b1df3235555d2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"a19b36b3dedd8674821b1df3235555d2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"a19b36b3dedd8674821b1df3235555d2-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"a19b36b3dedd8674821b1df3235555d2-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"a19b36b3dedd8674821b1df3235555d2-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"webhost-large-thumb\";a:4:{s:4:\"file\";s:44:\"a19b36b3dedd8674821b1df3235555d2-830x467.jpg\";s:5:\"width\";i:830;s:6:\"height\";i:467;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:44:\"a19b36b3dedd8674821b1df3235555d2-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:44:\"a19b36b3dedd8674821b1df3235555d2-230x129.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 47, '_wp_trash_meta_status', 'publish'),
(97, 47, '_wp_trash_meta_time', '1570159087'),
(98, 48, '_wp_attached_file', '2019/10/errors-black-simple-background-minimalism-wallpaper-preview.jpg'),
(99, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:728;s:6:\"height\";i:1294;s:4:\"file\";s:71:\"2019/10/errors-black-simple-background-minimalism-wallpaper-preview.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:71:\"errors-black-simple-background-minimalism-wallpaper-preview-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:71:\"errors-black-simple-background-minimalism-wallpaper-preview-169x300.jpg\";s:5:\"width\";i:169;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:72:\"errors-black-simple-background-minimalism-wallpaper-preview-576x1024.jpg\";s:5:\"width\";i:576;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:71:\"errors-black-simple-background-minimalism-wallpaper-preview-550x400.jpg\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:71:\"errors-black-simple-background-minimalism-wallpaper-preview-230x409.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:409;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 49, '_wp_attached_file', '2019/10/LnMirAw.png'),
(101, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1999;s:6:\"height\";i:1124;s:4:\"file\";s:19:\"2019/10/LnMirAw.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"LnMirAw-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"LnMirAw-300x169.png\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"LnMirAw-768x432.png\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"LnMirAw-1024x576.png\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-large-thumb\";a:4:{s:4:\"file\";s:19:\"LnMirAw-830x467.png\";s:5:\"width\";i:830;s:6:\"height\";i:467;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:19:\"LnMirAw-550x400.png\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:19:\"LnMirAw-230x129.png\";s:5:\"width\";i:230;s:6:\"height\";i:129;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 50, '_wp_trash_meta_status', 'publish'),
(103, 50, '_wp_trash_meta_time', '1570159130'),
(104, 51, '_wp_attached_file', '2019/10/mountain-bg-2880x1800-1.png'),
(105, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2880;s:6:\"height\";i:1800;s:4:\"file\";s:35:\"2019/10/mountain-bg-2880x1800-1.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"mountain-bg-2880x1800-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"mountain-bg-2880x1800-1-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"mountain-bg-2880x1800-1-768x480.png\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"mountain-bg-2880x1800-1-1024x640.png\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-large-thumb\";a:4:{s:4:\"file\";s:35:\"mountain-bg-2880x1800-1-830x519.png\";s:5:\"width\";i:830;s:6:\"height\";i:519;s:9:\"mime-type\";s:9:\"image/png\";}s:20:\"webhost-medium-thumb\";a:4:{s:4:\"file\";s:35:\"mountain-bg-2880x1800-1-550x400.png\";s:5:\"width\";i:550;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"webhost-small-thumb\";a:4:{s:4:\"file\";s:35:\"mountain-bg-2880x1800-1-230x144.png\";s:5:\"width\";i:230;s:6:\"height\";i:144;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 55, '_wp_trash_meta_status', 'publish'),
(113, 55, '_edit_lock', '1570241125:1'),
(115, 55, '_wp_trash_meta_time', '1570241144'),
(116, 56, '_edit_lock', '1570242014:1'),
(117, 56, '_edit_last', '1'),
(128, 63, '_wp_trash_meta_time', '1570253830'),
(129, 64, '_edit_lock', '1570254030:1'),
(124, 56, 'pagelayer-data', '1570241977'),
(127, 63, '_wp_trash_meta_status', 'publish'),
(130, 64, '_wp_trash_meta_status', 'publish'),
(131, 64, '_wp_trash_meta_time', '1570254025'),
(132, 65, '_edit_lock', '1570254095:1'),
(133, 65, '_wp_trash_meta_status', 'publish'),
(134, 65, '_wp_trash_meta_time', '1570254124'),
(135, 66, '_wp_trash_meta_status', 'publish'),
(136, 66, '_wp_trash_meta_time', '1570255066'),
(137, 67, '_wp_trash_meta_status', 'publish'),
(138, 67, '_wp_trash_meta_time', '1570265015');

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_posts`
--

CREATE TABLE `wpuh_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpuh_posts`
--

INSERT INTO `wpuh_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2019-09-30 01:42:04', '2019-09-30 01:42:04', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://atom-online.ml/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-09-30 01:42:04', '2019-09-30 01:42:04', '', 0, 'http://atom-online.ml/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-09-30 01:42:04', '2019-09-30 01:42:04', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://atom-online.ml.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-09-30 01:42:04', '2019-09-30 01:42:04', '', 0, 'http://atom-online.ml/?page_id=3', 0, 'page', '', 0),
(14, 1, '2019-10-02 02:20:16', '2019-10-02 02:20:16', '', 'core_login_ui', '', 'inherit', 'open', 'closed', '', 'core_login_ui', '', '', '2019-10-02 02:20:16', '2019-10-02 02:20:16', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/core_login_ui.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2019-09-30 01:45:44', '2019-09-30 01:45:44', '', 'BitWare Logo(1)', '', 'inherit', 'open', 'closed', '', 'bitware-logo1', '', '', '2019-09-30 01:45:44', '2019-09-30 01:45:44', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/09/BitWare-Logo1.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2019-09-30 01:53:32', '2019-09-30 01:53:32', '', 'octicons-bg', '', 'inherit', 'open', 'closed', '', 'octicons-bg', '', '', '2019-09-30 01:53:32', '2019-09-30 01:53:32', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/09/octicons-bg.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2019-10-02 02:20:28', '2019-10-02 02:20:28', '', 'core_login_ui', '', 'inherit', 'open', 'closed', '', 'core_login_ui-2', '', '', '2019-10-02 02:20:28', '2019-10-02 02:20:28', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/core_login_ui-1.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2019-10-02 02:26:04', '2019-10-02 02:26:04', '', 'core_logo', '', 'inherit', 'open', 'closed', '', 'core_logo', '', '', '2019-10-02 02:27:05', '2019-10-02 02:27:05', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/core_logo.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2019-10-02 02:27:30', '2019-10-02 02:27:30', 'http://atom-online.ml/wp-content/uploads/2019/10/cropped-core_logo-e1569983197243.png', 'cropped-core_logo-e1569983197243.png', '', 'inherit', 'open', 'closed', '', 'cropped-core_logo-e1569983197243-png', '', '', '2019-10-02 02:27:30', '2019-10-02 02:27:30', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/cropped-core_logo-e1569983197243.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2019-10-02 02:27:40', '2019-10-02 02:27:40', 'http://atom-online.ml/wp-content/uploads/2019/10/cropped-core_logo-e1569983197243-1.png', 'cropped-core_logo-e1569983197243-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-core_logo-e1569983197243-1-png', '', '', '2019-10-02 02:27:40', '2019-10-02 02:27:40', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/cropped-core_logo-e1569983197243-1.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2019-10-02 02:27:51', '2019-10-02 02:27:51', '', 'core_logo', '', 'inherit', 'open', 'closed', '', 'core_logo-2', '', '', '2019-10-02 02:27:51', '2019-10-02 02:27:51', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/core_logo-1.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2019-10-02 02:28:00', '2019-10-02 02:28:00', 'http://atom-online.ml/wp-content/uploads/2019/10/cropped-core_logo-1.png', 'cropped-core_logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-core_logo-1-png', '', '', '2019-10-02 02:28:00', '2019-10-02 02:28:00', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/cropped-core_logo-1.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2019-10-02 02:41:19', '2019-10-02 02:41:19', 'Finally after so much time and dedication, we are finally up and running!\r\n\r\nBut...Sadly...we are still looking for team members to participate in our group. If you want to join though, I hope you meet  these requirements as listed below:\r\n\r\n-- Willing to learn\r\n\r\n-- Dedication\r\n\r\n-- At least some abstract + creative thought\r\n\r\n-- Be nice to others and yourself\r\n\r\n-- Timeliness and always on time\r\n\r\nHere are the roles:\r\n<div><span style=\"font-size: large;\">-  Idea Person = This person comes up with ideas and maps for the projects</span></div>\r\n<div><span style=\"font-size: large;\">-  Programmer = This person comes up with the code for the projects</span></div>\r\n<div><span style=\"font-size: large;\">-  Web Video = This person comes up with the YouTube videos</span></div>', 'Atom CORE Teams Blog is UP!!!', '', 'publish', 'open', 'open', '', 'atom-core-teams-blog-is-up', '', '', '2019-10-02 02:43:00', '2019-10-02 02:43:00', '', 0, 'http://atom-online.ml/?p=23', 0, 'post', '', 2),
(38, 1, '2019-10-04 03:08:24', '2019-10-04 03:08:24', '', 'mountain-bg-2880x1800', '', 'inherit', 'open', 'closed', '', 'mountain-bg-2880x1800', '', '', '2019-10-04 03:08:24', '2019-10-04 03:08:24', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/mountain-bg-2880x1800.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2019-10-04 03:08:38', '2019-10-04 03:08:38', '', 'Wallpaper Simple Design 2017-623x623', '', 'inherit', 'open', 'closed', '', 'wallpaper-simple-design-2017-623x623', '', '', '2019-10-04 03:08:38', '2019-10-04 03:08:38', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/Wallpaper-Simple-Design-2017-623x623.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2019-10-04 03:08:49', '2019-10-04 03:08:49', 'Raining code', 'Simple-Desktop-Wallpaper', 'Simple me\n', 'inherit', 'open', 'closed', '', 'simple-desktop-wallpaper', '', '', '2019-10-05 02:05:21', '2019-10-05 02:05:21', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/Simple-Desktop-Wallpaper.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2019-10-04 03:17:31', '2019-10-04 03:17:31', '', '28ce5df133f535eec9ce05bf90409e07', '', 'inherit', 'open', 'closed', '', '28ce5df133f535eec9ce05bf90409e07', '', '', '2019-10-04 03:17:31', '2019-10-04 03:17:31', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/28ce5df133f535eec9ce05bf90409e07.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2019-10-04 03:17:40', '2019-10-04 03:17:40', '', '99789', '', 'inherit', 'open', 'closed', '', '99789', '', '', '2019-10-04 03:17:40', '2019-10-04 03:17:40', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/99789.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2019-10-04 03:17:55', '2019-10-04 03:17:55', '', 'Mountain', 'You are a mammals\n', 'inherit', 'open', 'closed', '', 'a19b36b3dedd8674821b1df3235555d2', '', '', '2019-10-05 02:03:38', '2019-10-05 02:03:38', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/a19b36b3dedd8674821b1df3235555d2.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-10-05 05:57:46', '2019-10-05 05:57:46', '{\n    \"blogname\": {\n        \"value\": \"[DOWN FOR SSL VERIFICATION] Atom CORE\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 05:57:46\"\n    },\n    \"blogdescription\": {\n        \"value\": \"[NOT WORKING] Atom CORE Team Blog\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 05:57:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6ab7c0b1-e648-454d-8a4a-3c5972e4ed5d', '', '', '2019-10-05 05:57:46', '2019-10-05 05:57:46', '', 0, 'http://atom-online.ml/2019/10/05/6ab7c0b1-e648-454d-8a4a-3c5972e4ed5d/', 0, 'customize_changeset', '', 0),
(48, 1, '2019-10-04 03:18:18', '2019-10-04 03:18:18', '', 'errors-black-simple-background-minimalism-wallpaper-preview', '', 'inherit', 'open', 'closed', '', 'errors-black-simple-background-minimalism-wallpaper-preview', '', '', '2019-10-04 03:18:18', '2019-10-04 03:18:18', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/errors-black-simple-background-minimalism-wallpaper-preview.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2019-10-04 03:18:32', '2019-10-04 03:18:32', '', 'LnMirAw', '', 'inherit', 'open', 'closed', '', 'lnmiraw', '', '', '2019-10-04 03:18:32', '2019-10-04 03:18:32', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/LnMirAw.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2019-10-05 08:43:35', '2019-10-05 08:43:35', '{\n    \"blogname\": {\n        \"value\": \"Atom CORE\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 08:43:35\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Atom CORE Team Blog\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-10-05 08:43:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '06a08fea-bee0-4d38-8aea-f056b311504b', '', '', '2019-10-05 08:43:35', '2019-10-05 08:43:35', '', 0, 'http://atom-online.ml/2019/10/05/06a08fea-bee0-4d38-8aea-f056b311504b/', 0, 'customize_changeset', '', 0),
(51, 1, '2019-10-04 03:19:05', '2019-10-04 03:19:05', '', 'mountain-bg-2880x1800', '', 'inherit', 'open', 'closed', '', 'mountain-bg-2880x1800-2', '', '', '2019-10-04 03:19:05', '2019-10-04 03:19:05', '', 0, 'http://atom-online.ml/wp-content/uploads/2019/10/mountain-bg-2880x1800-1.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2019-10-05 02:11:01', '2019-10-05 02:11:01', '[pl_row]\n[pl_col col=12]\n[pl_text]\nA i o u are vowels\r\n\r\nthis is the alphabet :\r\n\r\nAbcdefghijklmnopqrstuvwuxy\r\n\r\nI forgot E\r\n\r\nSo I\'m\r\n\r\nSAD\r\n\r\nYou person! You hurt meee................ You will pay.........pay two cents!!!!!!!!! It\'s time for your fat loss programme\r\n\r\nFhcbnnaabnxvaanvmxahaxjgiagscjwdchjdcgjcgaxcgxacjgcddahcsHhcashc shczHkczHxzhmchzakchkzcjkckhdsadcgkxa hxamhcchmxahmcxaxmhcdahxacd\r\n\r\nAbove you can now see gibbs rish\r\n\r\n&nbsp;\n[/pl_text]\n[/pl_col]\n[/pl_row]', 'Im simple', '', 'publish', 'open', 'open', '', 'im-simple', '', '', '2019-10-05 02:19:37', '2019-10-05 02:19:37', '', 0, 'http://atom-online.ml/?p=56', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_termmeta`
--

CREATE TABLE `wpuh_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_terms`
--

CREATE TABLE `wpuh_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpuh_terms`
--

INSERT INTO `wpuh_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized or others', 'uncategorized', 0),
(2, 'Anime', 'anime-roy', 0),
(3, 'Team Blog', 'atom-teams', 0),
(4, 'Should I... or should I Not???', 'yesorno', 0),
(5, 'Electronics + Computer Science', 'electro', 0),
(6, 'Drawing + Sketching', 'drawandsketch', 0),
(7, 'Site Requests and/or Announcements', 'sitereq', 0),
(8, 'Dumbness', 'dumbness', 0),
(9, 'People', 'people', 0),
(10, '#dumb', 'dumb', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_term_relationships`
--

CREATE TABLE `wpuh_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpuh_term_relationships`
--

INSERT INTO `wpuh_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(23, 2, 0),
(23, 6, 0),
(23, 5, 0),
(23, 4, 0),
(23, 3, 0),
(56, 10, 0),
(56, 9, 0),
(56, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_term_taxonomy`
--

CREATE TABLE `wpuh_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpuh_term_taxonomy`
--

INSERT INTO `wpuh_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', 'This category is for anime fans and weebs. DO NOT POST HENTAI UNLESS YOU WANT TO BE BANNED FROM THIS BLOG!!!', 0, 1),
(3, 3, 'category', 'This is especially for people associated with the Atom Team. Only for Atom Team members ONLY. Any other post or person not associated with or affiliated with Atom\'s post will be immediately deleted from this category.', 0, 1),
(4, 4, 'category', 'This is for people who are having trouble making a decision.', 0, 1),
(5, 5, 'category', 'This is especially for people with an interest with computing and other stuff like electronics. ', 0, 1),
(6, 6, 'category', 'Like drawing and sketching? Use this category. (Use Anime if you are TOTALLY a weeb)', 0, 1),
(7, 7, 'category', 'Have a question about how to use this site or want a new category?\r\nAsk here! Also, we will be changing the site\'s team weekly right after the website\r\nis fully developed(~ 6-10 months)', 0, 0),
(8, 8, 'category', '', 0, 1),
(9, 9, 'category', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_usermeta`
--

CREATE TABLE `wpuh_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpuh_usermeta`
--

INSERT INTO `wpuh_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'atom-admin'),
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
(12, 1, 'wpuh_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wpuh_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(83, 1, 'session_tokens', 'a:5:{s:64:\"9afa3278ec078af464a8ec0fbb6d7f47837b913e1a593de9fe96cff536446295\";a:4:{s:10:\"expiration\";i:1570418485;s:2:\"ip\";s:15:\"190.197.103.179\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570245685;}s:64:\"29b9219342f73fc9a73a4789c2fbab9836933290133913b1fd0bf913611b7074\";a:4:{s:10:\"expiration\";i:1570419681;s:2:\"ip\";s:15:\"190.197.103.179\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570246881;}s:64:\"cd4b89f6e636405b78edbec86fc1c86fda75767095d998c3f7adda9024a77e22\";a:4:{s:10:\"expiration\";i:1570420049;s:2:\"ip\";s:15:\"190.197.103.179\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570247249;}s:64:\"96b73869c3cee1daa386a5cd87de22fac5766de8189dccb2b7cefe19eb05089f\";a:4:{s:10:\"expiration\";i:1570437417;s:2:\"ip\";s:15:\"190.197.103.179\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570264617;}s:64:\"e72b855e56e1a57d2a4c78147e4b10e6f542a381bd37dffa7ae38ddf1bf51370\";a:4:{s:10:\"expiration\";i:1570437423;s:2:\"ip\";s:15:\"190.197.103.179\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36\";s:5:\"login\";i:1570264623;}}'),
(65, 1, 'closedpostboxes_post', 'a:0:{}'),
(66, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(17, 1, 'wpuh_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"190.197.103.0\";}'),
(19, 1, 'wpuh_user-settings', 'libraryContent=browse'),
(20, 1, 'wpuh_user-settings-time', '1569808395'),
(21, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(22, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(23, 2, 'nickname', 'DEChampion'),
(24, 2, 'first_name', 'Christian'),
(25, 2, 'last_name', 'Sabido'),
(26, 2, 'description', ''),
(27, 2, 'rich_editing', 'true'),
(28, 2, 'syntax_highlighting', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'locale', ''),
(34, 2, 'wpuh_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(35, 2, 'wpuh_user_level', '10'),
(36, 2, 'dismissed_wp_pointers', ''),
(37, 3, 'nickname', 'TheLoliSenpai'),
(38, 3, 'first_name', 'Joshwan'),
(39, 3, 'last_name', 'Joseph'),
(40, 3, 'description', ''),
(41, 3, 'rich_editing', 'true'),
(42, 3, 'syntax_highlighting', 'true'),
(43, 3, 'comment_shortcuts', 'false'),
(44, 3, 'admin_color', 'fresh'),
(45, 3, 'use_ssl', '0'),
(46, 3, 'show_admin_bar_front', 'true'),
(47, 3, 'locale', ''),
(48, 3, 'wpuh_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(49, 3, 'wpuh_user_level', '7'),
(50, 3, 'dismissed_wp_pointers', ''),
(51, 4, 'nickname', 'ChandalePandy'),
(52, 4, 'first_name', 'Chandale'),
(53, 4, 'last_name', 'Pandy'),
(54, 4, 'description', ''),
(55, 4, 'rich_editing', 'true'),
(56, 4, 'syntax_highlighting', 'true'),
(57, 4, 'comment_shortcuts', 'false'),
(58, 4, 'admin_color', 'fresh'),
(59, 4, 'use_ssl', '0'),
(60, 4, 'show_admin_bar_front', 'true'),
(61, 4, 'locale', ''),
(62, 4, 'wpuh_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(63, 4, 'wpuh_user_level', '2'),
(64, 4, 'dismissed_wp_pointers', ''),
(67, 1, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:44:\"formatdiv,submitdiv,categorydiv,postimagediv\";s:6:\"normal\";s:88:\"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,slugdiv,tagsdiv-post_tag,authordiv\";s:8:\"advanced\";s:19:\"select-critical-css\";}'),
(68, 1, 'screen_layout_post', '2'),
(69, 5, 'nickname', 'Jessicajones0110'),
(70, 5, 'first_name', 'Celeste'),
(71, 5, 'last_name', 'Garcia'),
(72, 5, 'description', ''),
(73, 5, 'rich_editing', 'true'),
(74, 5, 'syntax_highlighting', 'true'),
(75, 5, 'comment_shortcuts', 'false'),
(76, 5, 'admin_color', 'fresh'),
(77, 5, 'use_ssl', '0'),
(78, 5, 'show_admin_bar_front', 'true'),
(79, 5, 'locale', ''),
(80, 5, 'wpuh_capabilities', 'a:1:{s:6:\"author\";b:1;}'),
(81, 5, 'wpuh_user_level', '2'),
(82, 5, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Table structure for table `wpuh_users`
--

CREATE TABLE `wpuh_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wpuh_users`
--

INSERT INTO `wpuh_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'atom-admin', '$P$BJaIVyHY/RSKa8tuBGOKYeZKu/pi77.', 'atom-admin', 'admin@atom-online.ml', '', '2019-09-30 01:42:04', '', 0, 'atom-admin'),
(2, 'DEChampion', '$P$Bip6XkQLLoHc7vxUhtYoSdMmaVtLTM1', 'dechampion', 'christiansabido12@gmail.com', '', '2019-10-01 18:34:20', '1569954860:$P$BTxSeWzKPPy9zM4QSkEUkPfLagPMzJ.', 0, 'Christian Sabido'),
(3, 'TheLoliSenpai', '$P$BVZYSW0ZQ6orQTD9cIgHZvZhmghVu20', 'thelolisenpai', 'Josephjoshwan1@gmail.com', '', '2019-10-01 18:44:51', '1569955491:$P$BhYPKuoEA4AtzCsy5WZ/BI27Z3JCpI.', 0, 'Joshwan Joseph'),
(4, 'ChandalePandy', '$P$ByiVwZxF.Cizy0T6e49rwaDtgOvEjl/', 'chandalepandy', 'pandyman12@gmail.com', '', '2019-10-03 04:11:43', '1570075905:$P$BgVcV613SnB2lpTM6NsqoULBnVjvbu1', 0, 'Chandale Pandy'),
(5, 'Jessicajones0110', '$P$Bvy3jyroWxiOjVtKBDU5CwfbGu8vep0', 'jessicajones0110', 'rexydogwoof@gmail.com', '', '2019-10-05 02:25:42', '1570243053:$P$BwAklJWwFl9H2fatUOL6.IvirQ6UWt/', 0, 'Celeste Garcia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wpuh_commentmeta`
--
ALTER TABLE `wpuh_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpuh_comments`
--
ALTER TABLE `wpuh_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wpuh_css_js_manager`
--
ALTER TABLE `wpuh_css_js_manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wpuh_links`
--
ALTER TABLE `wpuh_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wpuh_litespeed_img_optm`
--
ALTER TABLE `wpuh_litespeed_img_optm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id_2` (`post_id`,`srcpath_md5`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `optm_status` (`optm_status`),
  ADD KEY `root_id` (`root_id`),
  ADD KEY `src_md5` (`src_md5`),
  ADD KEY `srcpath_md5` (`srcpath_md5`);

--
-- Indexes for table `wpuh_litespeed_optimizer`
--
ALTER TABLE `wpuh_litespeed_optimizer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hash_name` (`hash_name`),
  ADD KEY `dateline` (`dateline`);

--
-- Indexes for table `wpuh_loginizer_logs`
--
ALTER TABLE `wpuh_loginizer_logs`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `wpuh_options`
--
ALTER TABLE `wpuh_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wpuh_postmeta`
--
ALTER TABLE `wpuh_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpuh_posts`
--
ALTER TABLE `wpuh_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wpuh_termmeta`
--
ALTER TABLE `wpuh_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpuh_terms`
--
ALTER TABLE `wpuh_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wpuh_term_relationships`
--
ALTER TABLE `wpuh_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wpuh_term_taxonomy`
--
ALTER TABLE `wpuh_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wpuh_usermeta`
--
ALTER TABLE `wpuh_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wpuh_users`
--
ALTER TABLE `wpuh_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wpuh_commentmeta`
--
ALTER TABLE `wpuh_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpuh_comments`
--
ALTER TABLE `wpuh_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wpuh_css_js_manager`
--
ALTER TABLE `wpuh_css_js_manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpuh_links`
--
ALTER TABLE `wpuh_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpuh_litespeed_img_optm`
--
ALTER TABLE `wpuh_litespeed_img_optm`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpuh_litespeed_optimizer`
--
ALTER TABLE `wpuh_litespeed_optimizer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wpuh_options`
--
ALTER TABLE `wpuh_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=757;

--
-- AUTO_INCREMENT for table `wpuh_postmeta`
--
ALTER TABLE `wpuh_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `wpuh_posts`
--
ALTER TABLE `wpuh_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `wpuh_termmeta`
--
ALTER TABLE `wpuh_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wpuh_terms`
--
ALTER TABLE `wpuh_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wpuh_term_taxonomy`
--
ALTER TABLE `wpuh_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wpuh_usermeta`
--
ALTER TABLE `wpuh_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `wpuh_users`
--
ALTER TABLE `wpuh_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
