-- phpMyAdmin SQL Dump
-- version 4.5.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 26, 2018 at 05:51 AM
-- Server version: 5.7.10
-- PHP Version: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sanxuathp`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_general_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_general_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-01-25 13:56:58', '2018-01-25 13:56:58', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_general_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_general_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dantinjsc-old.local', 'yes'),
(2, 'home', 'http://dantinjsc-old.local', 'yes'),
(3, 'blogname', 'Công ty cổ phần thương mại sản xuất HP', 'yes'),
(4, 'blogdescription', 'Một trang web mới sử dụng WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@example.com', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:61:"image-regenerate-select-crop/image-regenerate-select-crop.php";i:2;s:37:"tinymce-advanced/tinymce-advanced.php";i:3;s:47:"ultimate-posts-widget/ultimate-posts-widget.php";i:4;s:27:"woocommerce/woocommerce.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'hp', 'yes'),
(41, 'stylesheet', 'hp', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
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
(61, 'medium_size_w', '500', 'yes'),
(62, 'medium_size_h', '500', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
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
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:131:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:12:"Khách hàng";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:22:"Quản lý cửa hàng";s:12:"capabilities";a:109:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_users";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;s:17:"edit_shop_webhook";b:1;s:17:"read_shop_webhook";b:1;s:19:"delete_shop_webhook";b:1;s:18:"edit_shop_webhooks";b:1;s:25:"edit_others_shop_webhooks";b:1;s:21:"publish_shop_webhooks";b:1;s:26:"read_private_shop_webhooks";b:1;s:20:"delete_shop_webhooks";b:1;s:28:"delete_private_shop_webhooks";b:1;s:30:"delete_published_shop_webhooks";b:1;s:27:"delete_others_shop_webhooks";b:1;s:26:"edit_private_shop_webhooks";b:1;s:28:"edit_published_shop_webhooks";b:1;s:25:"manage_shop_webhook_terms";b:1;s:23:"edit_shop_webhook_terms";b:1;s:25:"delete_shop_webhook_terms";b:1;s:25:"assign_shop_webhook_terms";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'vi', 'yes'),
(95, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:3:{i:0;s:32:"woocommerce_product_categories-2";i:1;s:14:"sticky-posts-2";i:2;s:22:"wp_statistics_widget-2";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:13:{i:1516888693;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1516888697;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516889782;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516889802;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1516896762;a:2:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516897298;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"78525e41f5c2848ff7e1a2337fb96361";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:14;}}}}i:1516897350;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"64fe7e19c11c6aa5ae4105b856a866cd";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:15;}}}}i:1516900362;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1516908768;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"c824bc7a784ee3d8f78d22b52f53879b";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:53;}}}}i:1516924800;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1516940610;a:1:{s:28:"wp_statistics_add_visit_hook";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1517875200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(111, '_transient_doing_cron', '1516941966.1837799549102783203125', 'yes'),
(117, '_site_transient_timeout_browser_3dfcaf95f74ba0a47a24e85b9b8f410e', '1517493501', 'no'),
(118, '_site_transient_browser_3dfcaf95f74ba0a47a24e85b9b8f410e', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"63.0.3239.132";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(119, 'can_compress_scripts', '1', 'no'),
(120, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1516931904', 'no'),
(121, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:0:{}}', 'no'),
(122, '_transient_timeout_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '1516931923', 'no'),
(123, '_transient_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '<div class="rss-widget"><p><strong>Lỗi RSS:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10035 milliseconds with 27030 bytes received</p></div><div class="rss-widget"><p><strong>Lỗi RSS:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10001 milliseconds with 77972 bytes received</p></div>', 'no'),
(124, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1516889084;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(126, 'current_theme', 'HP theme', 'yes'),
(127, 'theme_mods_hp', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:8:"top-menu";i:3;}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(128, 'theme_switched', '', 'yes'),
(134, 'recently_activated', 'a:3:{s:31:"wp-statistics/wp-statistics.php";i:1516941112;s:66:"wpb-accordion-menu-or-category/wpb-category-and-menu-accordion.php";i:1516902205;s:59:"force-regenerate-thumbnails/force-regenerate-thumbnails.php";i:1516890116;}', 'yes'),
(135, '_transient_timeout_plugin_slugs', '1517027513', 'no'),
(136, '_transient_plugin_slugs', 'a:8:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:9:"hello.php";i:3;s:61:"image-regenerate-select-crop/image-regenerate-select-crop.php";i:4;s:37:"tinymce-advanced/tinymce-advanced.php";i:5;s:47:"ultimate-posts-widget/ultimate-posts-widget.php";i:6;s:27:"woocommerce/woocommerce.php";i:7;s:31:"wp-statistics/wp-statistics.php";}', 'no'),
(141, 'sirsc_types_options', 'a:5:{i:0;s:4:"post";i:1;s:4:"page";i:2;s:10:"custom_css";i:3;s:19:"customize_changeset";i:4;s:12:"oembed_cache";}', 'yes'),
(142, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(153, 'woocommerce_store_address', 'Street', 'yes'),
(154, 'woocommerce_store_address_2', '', 'yes'),
(155, 'woocommerce_store_city', 'Ho Chi Minh', 'yes'),
(156, 'woocommerce_default_country', 'VN', 'yes'),
(157, 'woocommerce_store_postcode', '1000', 'yes'),
(158, 'woocommerce_allowed_countries', 'all', 'yes'),
(159, 'woocommerce_all_except_countries', '', 'yes'),
(160, 'woocommerce_specific_allowed_countries', '', 'yes'),
(161, 'woocommerce_ship_to_countries', '', 'yes'),
(162, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(163, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(164, 'woocommerce_calc_taxes', 'no', 'yes'),
(165, 'woocommerce_demo_store', 'no', 'yes'),
(166, 'woocommerce_demo_store_notice', 'Đây là cửa hàng demo nhằm mục đích thử nghiệm &mdash; các đơn hàng sẽ không có hiệu lực.', 'no'),
(167, 'woocommerce_currency', 'VND', 'yes'),
(168, 'woocommerce_currency_pos', 'left', 'yes'),
(169, 'woocommerce_price_thousand_sep', ',', 'yes'),
(170, 'woocommerce_price_decimal_sep', '.', 'yes'),
(171, 'woocommerce_price_num_decimals', '2', 'yes'),
(172, 'woocommerce_weight_unit', 'kg', 'yes'),
(173, 'woocommerce_dimension_unit', 'cm', 'yes'),
(174, 'woocommerce_enable_reviews', 'yes', 'yes'),
(175, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(176, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(177, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(178, 'woocommerce_review_rating_required', 'yes', 'no'),
(179, 'woocommerce_shop_page_id', '27', 'yes'),
(180, 'woocommerce_shop_page_display', '', 'yes'),
(181, 'woocommerce_category_archive_display', '', 'yes'),
(182, 'woocommerce_default_catalog_orderby', 'menu_order', 'yes'),
(183, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(184, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(185, 'shop_catalog_image_size', 'a:3:{s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:4:"crop";i:1;}', 'yes'),
(186, 'shop_single_image_size', 'a:3:{s:5:"width";s:3:"600";s:6:"height";s:3:"600";s:4:"crop";i:1;}', 'yes'),
(187, 'shop_thumbnail_image_size', 'a:3:{s:5:"width";s:3:"180";s:6:"height";s:3:"180";s:4:"crop";i:1;}', 'yes'),
(188, 'woocommerce_manage_stock', 'yes', 'yes'),
(189, 'woocommerce_hold_stock_minutes', '60', 'no'),
(190, 'woocommerce_notify_low_stock', 'yes', 'no'),
(191, 'woocommerce_notify_no_stock', 'yes', 'no'),
(192, 'woocommerce_stock_email_recipient', 'admin@example.com', 'no'),
(193, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(194, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(195, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(196, 'woocommerce_stock_format', '', 'yes'),
(197, 'woocommerce_file_download_method', 'force', 'no'),
(198, 'woocommerce_downloads_require_login', 'no', 'no'),
(199, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(200, 'woocommerce_prices_include_tax', 'no', 'yes'),
(201, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(202, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(203, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(204, 'woocommerce_tax_classes', 'Giảm tỉ lệ\nTỉ lệ rỗng', 'yes'),
(205, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(206, 'woocommerce_tax_display_cart', 'excl', 'no'),
(207, 'woocommerce_price_display_suffix', '', 'yes'),
(208, 'woocommerce_tax_total_display', 'itemized', 'no'),
(209, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(210, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(211, 'woocommerce_ship_to_destination', 'billing', 'no'),
(212, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(213, 'woocommerce_enable_coupons', 'yes', 'yes'),
(214, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(215, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(216, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(217, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(218, 'woocommerce_cart_page_id', '28', 'yes'),
(219, 'woocommerce_checkout_page_id', '29', 'yes'),
(220, 'woocommerce_terms_page_id', '', 'no'),
(221, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(222, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(223, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(224, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(225, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(226, 'woocommerce_myaccount_page_id', '30', 'yes'),
(227, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(228, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(229, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(230, 'woocommerce_registration_generate_username', 'yes', 'no'),
(231, 'woocommerce_registration_generate_password', 'no', 'no'),
(232, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(233, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(234, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(235, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(236, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(237, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(238, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(239, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(240, 'woocommerce_email_from_name', 'Công ty cổ phần thương mại sản xuất HP', 'no'),
(241, 'woocommerce_email_from_address', 'admin@example.com', 'no'),
(242, 'woocommerce_email_header_image', '', 'no'),
(243, 'woocommerce_email_footer_text', 'Công ty cổ phần thương mại sản xuất HP', 'no'),
(244, 'woocommerce_email_base_color', '#96588a', 'no'),
(245, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(246, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(247, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(248, 'woocommerce_api_enabled', 'yes', 'yes'),
(249, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(252, 'woocommerce_version', '3.2.6', 'yes'),
(253, 'woocommerce_db_version', '3.2.6', 'yes'),
(254, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(255, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(256, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(257, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(258, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(259, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(260, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:"title";s:23:"Danh mục sản phẩm";s:7:"orderby";s:4:"name";s:8:"dropdown";i:0;s:5:"count";i:0;s:12:"hierarchical";i:1;s:18:"show_children_only";i:0;s:10:"hide_empty";i:0;s:9:"max_depth";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(261, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(262, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(263, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(264, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(265, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(266, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(267, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(268, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:12:"post-trashed";s:1:"1";s:14:"total_comments";i:0;s:3:"all";i:0;s:9:"moderated";i:0;s:8:"approved";i:0;s:4:"spam";i:0;s:5:"trash";i:0;}', 'yes'),
(269, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(270, 'woocommerce_product_type', 'physical', 'yes'),
(271, 'woocommerce_allow_tracking', 'yes', 'yes'),
(272, 'woocommerce_tracker_last_send', '1516896819', 'yes'),
(273, 'woocommerce_ppec_paypal_settings', 'a:1:{s:7:"enabled";s:2:"no";}', 'yes'),
(274, 'woocommerce_paypal_settings', 'a:2:{s:7:"enabled";s:2:"no";s:5:"email";b:0;}', 'yes'),
(275, '_transient_shipping-transient-version', '1516896888', 'yes'),
(276, '_transient_timeout_wc_shipping_method_count_0_1516896888', '1519488888', 'no'),
(277, '_transient_wc_shipping_method_count_0_1516896888', '0', 'no'),
(278, '_transient_timeout_wc_report_sales_by_date', '1516983548', 'no'),
(279, '_transient_wc_report_sales_by_date', 'a:16:{s:32:"27aa06a10b7e859dec70a170c0a15ecf";a:0:{}s:32:"eff5753d8d9337e89210c230ebe4bcc8";a:0:{}s:32:"8edcae5322e0c500a9c65d49d8fc1477";a:0:{}s:32:"fda3aa14074fbc4ca0c23352942b42d7";N;s:32:"b23483a4351ad46acbc0caf275bc9ac9";a:0:{}s:32:"f9d678608df720581dc0dcd80d699bdf";a:0:{}s:32:"dd1691d5720f58907df59289d14eab7d";a:0:{}s:32:"ee640b88b1fb8e83f384eb4b7d21bf98";a:0:{}s:32:"f71ebd4bec2f29fe206bb80828198aea";a:0:{}s:32:"01602633546ae1586fa9f5fbf04cdc84";a:0:{}s:32:"004eb8b928c8ecc6916cf6df0c1d4de0";a:0:{}s:32:"99ac0f8a20165f3477a58d26fcbafc73";N;s:32:"f04e02410caa8203eb98dc57b33795a5";a:0:{}s:32:"8fbdafb3ae513827910f6b71108357e3";a:0:{}s:32:"d894e1db549c6be10af3ada8bcd863e4";a:0:{}s:32:"a6fcd07216ce8c61a521a782323c1ee9";a:0:{}}', 'no'),
(280, '_transient_timeout_wc_admin_report', '1516983288', 'no'),
(281, '_transient_wc_admin_report', 'a:1:{s:32:"575607d164a4aa68ad9c604057aea6df";a:0:{}}', 'no'),
(286, '_transient_timeout_external_ip_address_127.0.0.1', '1517501749', 'no'),
(287, '_transient_external_ip_address_127.0.0.1', '171.240.241.135', 'no'),
(294, '_transient_product_query-transient-version', '1516933619', 'yes'),
(295, '_transient_product-transient-version', '1516902111', 'yes'),
(306, '_transient_timeout__woocommerce_helper_updates', '1516944766', 'no'),
(307, '_transient__woocommerce_helper_updates', 'a:4:{s:4:"hash";s:32:"d751713988987e9331980363e24189ce";s:7:"updated";i:1516901566;s:8:"products";a:0:{}s:6:"errors";a:1:{i:0;s:10:"http-error";}}', 'no'),
(311, 'product_cat_children', 'a:2:{i:17;a:1:{i:0;i:23;}i:23;a:1:{i:0;i:24;}}', 'yes'),
(312, '_transient_timeout_wc_term_counts', '1519494113', 'no'),
(313, '_transient_wc_term_counts', 'a:8:{i:17;s:1:"2";i:19;s:1:"2";i:18;s:1:"2";i:20;s:1:"1";i:22;s:1:"2";i:21;s:1:"1";i:23;s:1:"1";i:24;s:1:"1";}', 'no'),
(314, '_transient_timeout_wc_related_31', '1517026621', 'no'),
(315, '_transient_wc_related_31', 'a:1:{i:0;s:2:"34";}', 'no'),
(316, 'category_children', 'a:0:{}', 'yes'),
(317, '_site_transient_timeout_available_translations', '1516947356', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(318, '_site_transient_available_translations', 'a:111:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-01 13:40:41";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-27 09:27:02";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-14 16:27:27";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.2/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 09:53:15";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.8.5";s:7:"updated";s:19:"2017-10-01 12:57:10";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.5/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-29 05:52:09";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-10 17:55:47";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-22 16:19:20";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-14 18:20:23";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-22 15:38:30";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-22 15:43:53";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.9.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-28 20:27:03";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-28 20:27:48";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-06 10:31:42";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-23 18:53:44";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 09:12:07";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 09:10:37";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 09:54:30";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-16 08:56:09";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-14 01:23:37";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 23:17:08";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 15:03:42";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-16 03:15:17";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-18 11:09:35";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.8.5";s:7:"updated";s:19:"2017-07-30 16:09:17";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.5/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.8.5";s:7:"updated";s:19:"2017-07-31 15:12:02";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.5/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-01 17:54:52";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-19 14:11:29";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-09 21:12:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-14 15:13:01";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 09:48:14";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-19 23:55:33";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-09 09:23:29";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-14 10:19:51";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-16 10:40:05";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-16 11:06:53";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-06 13:23:01";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-02 23:26:33";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-14 13:03:07";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-14 10:14:07";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-21 02:45:34";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-08 14:46:48";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-17 09:56:44";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-14 11:47:57";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Nerusaké";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-07 12:32:16";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-09 14:06:54";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-04 01:44:20";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 19:40:23";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.8.5";s:7:"updated";s:19:"2017-09-30 06:25:41";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.5/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-09 00:51:20";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-17 19:14:57";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-05 06:45:20";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-22 08:05:07";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-06 06:13:30";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-22 08:13:09";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.9.2/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-09-25 10:02:16";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-11 12:23:44";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-19 23:04:20";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-01 14:17:04";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-18 12:10:14";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.9.2/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 18:30:47";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-15 20:59:00";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-08 12:38:03";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 13:33:13";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-30 17:20:03";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 23:19:48";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-08 22:15:45";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-10-07 02:08:56";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-20 16:20:13";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-11-02 17:05:02";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-20 11:26:53";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-28 12:41:50";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-15 10:43:28";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-02 09:46:12";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-09 02:29:44";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-11-17 22:20:52";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no'),
(325, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1516948119', 'no'),
(326, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4418;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2536;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2532;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2391;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1855;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1628;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1622;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1443;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1377;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1376;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1367;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1292;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1282;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1176;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1081;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1056;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1008;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:980;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:855;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:848;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:819;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:790;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:786;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:683;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:682;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:678;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:671;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:669;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:653;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:648;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:637;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:624;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:623;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:602;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:600;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:594;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:592;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:584;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:582;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:575;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:552;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:539;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:534;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:524;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:515;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:508;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:507;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:501;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:485;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:484;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:482;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:475;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:469;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:463;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:460;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:455;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:450;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:449;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:432;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:421;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:418;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:416;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:414;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:410;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:408;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:407;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:400;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:391;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:387;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:382;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:361;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:359;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:354;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:351;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:340;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:338;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:337;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:337;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:332;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:331;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:331;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:330;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:328;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:325;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:324;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:314;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:312;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:308;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:301;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:300;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:300;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:298;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:293;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:288;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:288;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:286;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:285;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:284;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:282;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:280;}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(328, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:62:"https://downloads.wordpress.org/release/vi/wordpress-4.9.2.zip";s:6:"locale";s:2:"vi";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:62:"https://downloads.wordpress.org/release/vi/wordpress-4.9.2.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.2";s:7:"version";s:5:"4.9.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1516940453;s:15:"version_checked";s:5:"4.9.2";s:12:"translations";a:0:{}}', 'no'),
(330, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1516940456;s:7:"checked";a:4:{s:2:"hp";s:5:"4.0.4";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(331, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.9.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1516937360;s:7:"version";s:5:"4.9.2";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(334, 'tadv_settings', 'a:6:{s:7:"options";s:15:"menubar,advlist";s:9:"toolbar_1";s:106:"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignright,link,unlink,undo,redo";s:9:"toolbar_2";s:103:"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"plugins";s:104:"anchor,code,insertdatetime,nonbreaking,print,searchreplace,table,visualblocks,visualchars,advlist,wptadv";}', 'yes'),
(335, 'tadv_admin_settings', 'a:1:{s:7:"options";a:0:{}}', 'yes'),
(336, 'tadv_version', '4000', 'yes'),
(339, '_site_transient_timeout_theme_roots', '1516941268', 'no'),
(340, '_site_transient_theme_roots', 'a:4:{s:2:"hp";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(343, 'widget_sticky-posts', 'a:2:{i:2;a:32:{s:5:"title";s:17:"Bài viết mới";s:5:"class";s:0:"";s:10:"title_link";s:17:"Bài viết mới";s:6:"number";s:1:"5";s:5:"types";s:4:"post";s:4:"cats";s:2:"25";s:4:"tags";s:0:"";s:5:"atcat";b:0;s:5:"attag";b:0;s:12:"show_excerpt";b:0;s:12:"show_content";b:0;s:14:"show_thumbnail";b:1;s:9:"show_date";b:1;s:11:"date_format";s:12:"j F, Y g:i a";s:10:"show_title";b:1;s:11:"show_author";b:0;s:13:"show_comments";b:0;s:10:"thumb_size";s:9:"thumbnail";s:13:"show_readmore";b:1;s:14:"excerpt_length";s:2:"10";s:16:"excerpt_readmore";s:13:"Read more →";s:6:"sticky";s:4:"show";s:5:"order";s:4:"DESC";s:7:"orderby";s:4:"date";s:8:"meta_key";s:0:"";s:9:"show_cats";b:0;s:9:"show_tags";b:0;s:13:"custom_fields";s:0:"";s:8:"template";s:8:"standard";s:15:"template_custom";s:0:"";s:12:"before_posts";s:0:"";s:11:"after_posts";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(344, '_transient_timeout__woocommerce_helper_subscriptions', '1516941292', 'no'),
(345, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(348, 'wp_statistics_plugin_version', '12.3.5', 'yes'),
(349, 'wp_statistics_db_version', '12.3.5', 'yes'),
(350, 'wp_statistics', 'a:27:{s:18:"pending_db_updates";a:2:{s:13:"date_ip_agent";b:0;s:11:"unique_date";b:0;}s:16:"search_converted";i:1;s:9:"robotlist";s:1715:"007ac9\n5bot\nA6-Indexer\nAbachoBOT\naccoona\nAcoiRobot\nAddThis.com\nADmantX\nAdsBot-Google\nadvbot\nAhrefsBot\naiHitBot\nalexa\nalphabot\nAltaVista\nAntivirusPro\nanyevent\nappie\nApplebot\narchive.org_bot\nAsk Jeeves\nASPSeek\nBaiduspider\nBenjojo\nBeetleBot\nbingbot\nBlekkobot\nblexbot\nBOT for JCE\nbubing\nButterfly\ncbot\nclamantivirus\ncliqzbot\nclumboot\ncoccoc\ncrawler\nCrocCrawler\ncrowsnest.tv\ndbot\ndl2bot\ndotbot\ndownloadbot\nduckduckgo\nDumbot\nEasouSpider\neStyle\nEveryoneSocialBot\nExabot\nezooms\nfacebook.com\nfacebookexternalhit\nFAST\nFeedfetcher-Google\nfeedzirra\nfindxbot\nFirfly\nFriendFeedBot\nfroogle\nGeonaBot\nGigabot\ngirafabot\ngimme60bot\nglbot\nGooglebot\nGroupHigh\nia_archiver\nIDBot\nInfoSeek\ninktomi\nIstellaBot\njetmon\nKraken\nLeikibot\nlinkapediabot\nlinkdexbot\nLinkpadBot\nLoadTimeBot\nlooksmart\nltx71\nLycos\nMail.RU_Bot\nMe.dium\nmeanpathbot\nmediabot\nmedialbot\nMediapartners-Google\nMJ12bot\nmsnbot\nMojeekBot\nmonobot\nmoreover\nMRBOT\nNationalDirectory\nNerdyBot\nNetcraftSurveyAgent\nniki-bot\nnutch\nOpenbot\nOrangeBot\nowler\np4Bot\nPaperLiBot\npageanalyzer\nPagesInventory\nPimonster\nporkbun\npr-cy\nproximic\npwbot\nr4bot\nrabaz\nRambler\nRankivabot\nrevip\nriddler\nrogerbot\nScooter\nScrubby\nscrapy.org\nSearchmetricsBot\nsees.co\nSemanticBot\nSemrushBot\nSeznamBot\nsfFeedReader\nshareaholic-bot\nsistrix\nSiteExplorer\nSlurp\nSocialradarbot\nSocialSearch\nSogou web spider\nSpade\nspbot\nSpiderLing\nSputnikBot\nSuperfeedr\nSurveyBot\nTechnoratiSnoop\nTECNOSEEK\nTeoma\ntrendictionbot\nTweetmemeBot\nTwiceler\nTwitterbot\nTwitturls\nu2bot\nuMBot-LN\nuni5download\nunrulymedia\nUptimeRobot\nURL_Spider_SQL\nVagabondo\nvBSEO\nWASALive-Bot\nWebAlta Crawler\nWebBug\nWebFindBot\nWebMasterAid\nWeSEE\nWotbox\nwsowner\nwsr-agent\nwww.galaxy.com\nx100bot\nXoviBot\nxzybot\nyandex\nYahoo\nYammybot\nYoudaoBot\nZyBorg\nZemlyaCrawl";s:5:"geoip";b:0;s:8:"browscap";b:0;s:10:"useronline";b:1;s:6:"visits";b:1;s:8:"visitors";b:1;s:5:"pages";b:1;s:12:"check_online";s:2:"30";s:8:"menu_bar";b:0;s:11:"coefficient";s:1:"1";s:12:"stats_report";b:0;s:11:"time_report";s:5:"daily";s:11:"send_report";s:4:"mail";s:14:"content_report";s:0:"";s:12:"update_geoip";b:1;s:8:"store_ua";b:0;s:21:"exclude_administrator";s:1:"1";s:18:"disable_se_clearch";b:1;s:14:"disable_se_ask";b:1;s:8:"map_type";s:6:"jqvmap";s:18:"force_robot_update";b:1;s:17:"show_welcome_page";b:0;s:6:"widget";a:24:{s:11:"name_widget";s:22:"Thống kê truy cập";s:17:"useronline_widget";s:2:"on";s:13:"tvisit_widget";s:2:"on";s:15:"tvisitor_widget";s:0:"";s:13:"yvisit_widget";s:0:"";s:15:"yvisitor_widget";s:0:"";s:13:"wvisit_widget";s:0:"";s:13:"mvisit_widget";s:2:"on";s:14:"ysvisit_widget";s:0:"";s:14:"ttvisit_widget";s:0:"";s:16:"ttvisitor_widget";s:2:"on";s:14:"tpviews_widget";s:0:"";s:10:"ser_widget";s:0:"";s:9:"select_se";s:0:"";s:9:"tp_widget";s:0:"";s:10:"tpg_widget";s:0:"";s:9:"tc_widget";s:0:"";s:9:"ts_widget";s:0:"";s:9:"tu_widget";s:0:"";s:9:"ap_widget";s:0:"";s:9:"ac_widget";s:0:"";s:9:"au_widget";s:0:"";s:10:"lpd_widget";s:0:"";s:10:"select_lps";s:0:"";}s:15:"update_browscap";b:1;s:23:"first_show_welcome_page";b:1;}', 'yes'),
(351, 'widget_wp_statistics_widget', 'a:2:{i:2;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(353, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1516940458;s:7:"checked";a:8:{s:19:"akismet/akismet.php";s:5:"4.0.2";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"4.9.2";s:9:"hello.php";s:3:"1.6";s:61:"image-regenerate-select-crop/image-regenerate-select-crop.php";s:5:"4.2.1";s:37:"tinymce-advanced/tinymce-advanced.php";s:5:"4.6.7";s:47:"ultimate-posts-widget/ultimate-posts-widget.php";s:5:"2.0.7";s:27:"woocommerce/woocommerce.php";s:5:"3.2.6";s:31:"wp-statistics/wp-statistics.php";s:6:"12.3.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:8:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.2.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.9.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.9.2.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:7:"default";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";s:7:"default";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:3:{s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:7:"default";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";}s:7:"banners";a:2:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";s:7:"default";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:61:"image-regenerate-select-crop/image-regenerate-select-crop.php";O:8:"stdClass":9:{s:2:"id";s:42:"w.org/plugins/image-regenerate-select-crop";s:4:"slug";s:28:"image-regenerate-select-crop";s:6:"plugin";s:61:"image-regenerate-select-crop/image-regenerate-select-crop.php";s:11:"new_version";s:5:"4.2.1";s:3:"url";s:59:"https://wordpress.org/plugins/image-regenerate-select-crop/";s:7:"package";s:77:"https://downloads.wordpress.org/plugin/image-regenerate-select-crop.4.2.1.zip";s:5:"icons";a:2:{s:2:"1x";s:81:"https://ps.w.org/image-regenerate-select-crop/assets/icon-128x128.png?rev=1758978";s:7:"default";s:81:"https://ps.w.org/image-regenerate-select-crop/assets/icon-128x128.png?rev=1758978";}s:7:"banners";a:2:{s:2:"1x";s:83:"https://ps.w.org/image-regenerate-select-crop/assets/banner-772x250.png?rev=1073288";s:7:"default";s:83:"https://ps.w.org/image-regenerate-select-crop/assets/banner-772x250.png?rev=1073288";}s:11:"banners_rtl";a:0:{}}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":9:{s:2:"id";s:30:"w.org/plugins/tinymce-advanced";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:5:"4.6.7";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:65:"https://downloads.wordpress.org/plugin/tinymce-advanced.4.6.7.zip";s:5:"icons";a:3:{s:2:"1x";s:68:"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511";s:2:"2x";s:68:"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511";s:7:"default";s:68:"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511";}s:7:"banners";a:2:{s:2:"1x";s:70:"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078";s:7:"default";s:70:"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078";}s:11:"banners_rtl";a:0:{}}s:47:"ultimate-posts-widget/ultimate-posts-widget.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/ultimate-posts-widget";s:4:"slug";s:21:"ultimate-posts-widget";s:6:"plugin";s:47:"ultimate-posts-widget/ultimate-posts-widget.php";s:11:"new_version";s:5:"2.0.7";s:3:"url";s:52:"https://wordpress.org/plugins/ultimate-posts-widget/";s:7:"package";s:70:"https://downloads.wordpress.org/plugin/ultimate-posts-widget.2.0.7.zip";s:5:"icons";a:0:{}s:7:"banners";a:2:{s:2:"1x";s:75:"https://ps.w.org/ultimate-posts-widget/assets/banner-772x250.png?rev=960451";s:7:"default";s:75:"https://ps.w.org/ultimate-posts-widget/assets/banner-772x250.png?rev=960451";}s:11:"banners_rtl";a:0:{}}s:27:"woocommerce/woocommerce.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/woocommerce";s:4:"slug";s:11:"woocommerce";s:6:"plugin";s:27:"woocommerce/woocommerce.php";s:11:"new_version";s:5:"3.2.6";s:3:"url";s:42:"https://wordpress.org/plugins/woocommerce/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/woocommerce.3.2.6.zip";s:5:"icons";a:3:{s:2:"1x";s:64:"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831";s:2:"2x";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";s:7:"default";s:64:"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831";}s:7:"banners";a:3:{s:2:"2x";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";s:2:"1x";s:66:"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184";s:7:"default";s:67:"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184";}s:11:"banners_rtl";a:0:{}}s:31:"wp-statistics/wp-statistics.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/wp-statistics";s:4:"slug";s:13:"wp-statistics";s:6:"plugin";s:31:"wp-statistics/wp-statistics.php";s:11:"new_version";s:6:"12.3.5";s:3:"url";s:44:"https://wordpress.org/plugins/wp-statistics/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-statistics.12.3.5.zip";s:5:"icons";a:4:{s:2:"1x";s:66:"https://ps.w.org/wp-statistics/assets/icon-128x128.png?rev=1673578";s:2:"2x";s:66:"https://ps.w.org/wp-statistics/assets/icon-256x256.png?rev=1673578";s:3:"svg";s:58:"https://ps.w.org/wp-statistics/assets/icon.svg?rev=1673578";s:7:"default";s:58:"https://ps.w.org/wp-statistics/assets/icon.svg?rev=1673578";}s:7:"banners";a:2:{s:2:"1x";s:68:"https://ps.w.org/wp-statistics/assets/banner-772x250.png?rev=1673578";s:7:"default";s:68:"https://ps.w.org/wp-statistics/assets/banner-772x250.png?rev=1673578";}s:11:"banners_rtl";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 1, '_wp_trash_meta_status', 'publish'),
(3, 1, '_wp_trash_meta_time', '1516889780'),
(4, 1, '_wp_desired_post_slug', 'chao-moi-nguoi'),
(5, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(6, 5, '_edit_last', '1'),
(7, 5, '_edit_lock', '1516890920:1'),
(11, 5, '_pingme', '1'),
(12, 5, '_encloseme', '1'),
(13, 8, '_edit_last', '1'),
(14, 8, '_edit_lock', '1516890958:1'),
(18, 8, '_pingme', '1'),
(19, 8, '_encloseme', '1'),
(20, 11, '_edit_last', '1'),
(21, 11, '_edit_lock', '1516891040:1'),
(25, 11, '_pingme', '1'),
(26, 11, '_encloseme', '1'),
(27, 14, '_wp_attached_file', '2018/01/force-regenerate-thumbnails.zip'),
(28, 14, '_wp_attachment_context', 'upgrader'),
(34, 8, '_pingme', '1'),
(35, 8, '_encloseme', '1'),
(36, 17, '_menu_item_type', 'custom'),
(37, 17, '_menu_item_menu_item_parent', '0'),
(38, 17, '_menu_item_object_id', '17'),
(39, 17, '_menu_item_object', 'custom'),
(40, 17, '_menu_item_target', ''),
(41, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(42, 17, '_menu_item_xfn', ''),
(43, 17, '_menu_item_url', 'http://dantinjsc-old.local/'),
(44, 17, '_menu_item_orphaned', '1516890439'),
(45, 18, '_menu_item_type', 'post_type'),
(46, 18, '_menu_item_menu_item_parent', '0'),
(47, 18, '_menu_item_object_id', '2'),
(48, 18, '_menu_item_object', 'page'),
(49, 18, '_menu_item_target', ''),
(50, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(51, 18, '_menu_item_xfn', ''),
(52, 18, '_menu_item_url', ''),
(53, 18, '_menu_item_orphaned', '1516890439'),
(54, 19, '_menu_item_type', 'custom'),
(55, 19, '_menu_item_menu_item_parent', '0'),
(56, 19, '_menu_item_object_id', '19'),
(57, 19, '_menu_item_object', 'custom'),
(58, 19, '_menu_item_target', ''),
(59, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(60, 19, '_menu_item_xfn', ''),
(61, 19, '_menu_item_url', 'http://dantinjsc-old.local/'),
(72, 21, '_menu_item_type', 'custom'),
(73, 21, '_menu_item_menu_item_parent', '0'),
(74, 21, '_menu_item_object_id', '21'),
(75, 21, '_menu_item_object', 'custom'),
(76, 21, '_menu_item_target', ''),
(77, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 21, '_menu_item_xfn', ''),
(79, 21, '_menu_item_url', '#'),
(99, 24, '_wp_attached_file', '2018/01/286869-construction.jpg'),
(100, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:834;s:4:"file";s:31:"2018/01/286869-construction.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"286869-construction-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"286869-construction-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:31:"286869-construction-768x534.jpg";s:5:"width";i:768;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"286869-construction-1024x712.jpg";s:5:"width";i:1024;s:6:"height";i:712;s:9:"mime-type";s:10:"image/jpeg";}s:6:"custom";a:4:{s:4:"file";s:32:"286869-construction-1000x400.jpg";s:5:"width";i:1000;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(101, 5, '_thumbnail_id', '24'),
(102, 5, '_pingme', '1'),
(103, 5, '_encloseme', '1'),
(104, 25, '_wp_attached_file', '2018/01/Construction.jpg'),
(105, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4000;s:6:"height";i:2667;s:4:"file";s:24:"2018/01/Construction.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"Construction-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"Construction-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"Construction-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:25:"Construction-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:6:"custom";a:4:{s:4:"file";s:25:"Construction-1000x400.jpg";s:5:"width";i:1000;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(106, 8, '_thumbnail_id', '25'),
(107, 8, '_pingme', '1'),
(108, 8, '_encloseme', '1'),
(109, 26, '_wp_attached_file', '2018/01/bg.jpg'),
(110, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1759;s:6:"height";i:1092;s:4:"file";s:14:"2018/01/bg.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"bg-300x186.jpg";s:5:"width";i:300;s:6:"height";i:186;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:14:"bg-768x477.jpg";s:5:"width";i:768;s:6:"height";i:477;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"bg-1024x636.jpg";s:5:"width";i:1024;s:6:"height";i:636;s:9:"mime-type";s:10:"image/jpeg";}s:6:"custom";a:4:{s:4:"file";s:15:"bg-1000x400.jpg";s:5:"width";i:1000;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(111, 11, '_thumbnail_id', '26'),
(112, 11, '_pingme', '1'),
(113, 11, '_encloseme', '1'),
(114, 31, '_wc_review_count', '0'),
(115, 31, '_wc_rating_count', 'a:0:{}'),
(116, 31, '_wc_average_rating', '0'),
(117, 31, '_edit_last', '1'),
(118, 31, '_edit_lock', '1516902041:1'),
(121, 33, '_wp_attached_file', '2018/01/4_1319123939988_l.jpg'),
(122, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:360;s:4:"file";s:29:"2018/01/4_1319123939988_l.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"4_1319123939988_l-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"4_1319123939988_l-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"4_1319123939988_l-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"4_1319123939988_l-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(123, 31, '_thumbnail_id', '33'),
(124, 31, '_sku', ''),
(125, 31, '_regular_price', ''),
(126, 31, '_sale_price', ''),
(127, 31, '_sale_price_dates_from', ''),
(128, 31, '_sale_price_dates_to', ''),
(129, 31, 'total_sales', '0'),
(130, 31, '_tax_status', 'taxable'),
(131, 31, '_tax_class', ''),
(132, 31, '_manage_stock', 'no'),
(133, 31, '_backorders', 'no'),
(134, 31, '_sold_individually', 'no'),
(135, 31, '_weight', ''),
(136, 31, '_length', ''),
(137, 31, '_width', ''),
(138, 31, '_height', ''),
(139, 31, '_upsell_ids', 'a:0:{}'),
(140, 31, '_crosssell_ids', 'a:0:{}'),
(141, 31, '_purchase_note', ''),
(142, 31, '_default_attributes', 'a:0:{}'),
(143, 31, '_virtual', 'no'),
(144, 31, '_downloadable', 'no'),
(145, 31, '_product_image_gallery', ''),
(146, 31, '_download_limit', '-1'),
(147, 31, '_download_expiry', '-1'),
(148, 31, '_stock', NULL),
(149, 31, '_stock_status', 'instock'),
(150, 31, '_product_version', '3.2.6'),
(151, 31, '_price', ''),
(152, 34, '_wc_review_count', '0'),
(153, 34, '_wc_rating_count', 'a:0:{}'),
(154, 34, '_wc_average_rating', '0'),
(155, 34, '_edit_last', '1'),
(156, 34, '_edit_lock', '1516897511:1'),
(159, 36, '_wp_attached_file', '2018/01/P1340568.jpg'),
(160, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:750;s:4:"file";s:20:"2018/01/P1340568.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"P1340568-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"P1340568-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"P1340568-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:6:"custom";a:4:{s:4:"file";s:21:"P1340568-1000x400.jpg";s:5:"width";i:1000;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"P1340568-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"P1340568-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"P1340568-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:8:"DMC-FZ60";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1493204512";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"17.5";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:9:"0.0015625";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(161, 34, '_thumbnail_id', '36'),
(162, 34, '_sku', ''),
(163, 34, '_regular_price', ''),
(164, 34, '_sale_price', ''),
(165, 34, '_sale_price_dates_from', ''),
(166, 34, '_sale_price_dates_to', ''),
(167, 34, 'total_sales', '0'),
(168, 34, '_tax_status', 'taxable'),
(169, 34, '_tax_class', ''),
(170, 34, '_manage_stock', 'no'),
(171, 34, '_backorders', 'no'),
(172, 34, '_sold_individually', 'no'),
(173, 34, '_weight', ''),
(174, 34, '_length', ''),
(175, 34, '_width', ''),
(176, 34, '_height', ''),
(177, 34, '_upsell_ids', 'a:0:{}'),
(178, 34, '_crosssell_ids', 'a:0:{}'),
(179, 34, '_purchase_note', ''),
(180, 34, '_default_attributes', 'a:0:{}'),
(181, 34, '_virtual', 'no'),
(182, 34, '_downloadable', 'no'),
(183, 34, '_product_image_gallery', ''),
(184, 34, '_download_limit', '-1'),
(185, 34, '_download_expiry', '-1'),
(186, 34, '_stock', NULL),
(187, 34, '_stock_status', 'instock'),
(188, 34, '_product_version', '3.2.6'),
(189, 34, '_price', ''),
(190, 37, '_wc_review_count', '0'),
(191, 37, '_wc_rating_count', 'a:0:{}'),
(192, 37, '_wc_average_rating', '0'),
(193, 37, '_edit_last', '1'),
(194, 37, '_edit_lock', '1516897591:1'),
(195, 38, '_wp_attached_file', '2018/01/2.jpg'),
(196, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:360;s:6:"height";i:360;s:4:"file";s:13:"2018/01/2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"2-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(197, 37, '_thumbnail_id', '38'),
(198, 37, '_sku', ''),
(199, 37, '_regular_price', ''),
(200, 37, '_sale_price', ''),
(201, 37, '_sale_price_dates_from', ''),
(202, 37, '_sale_price_dates_to', ''),
(203, 37, 'total_sales', '0'),
(204, 37, '_tax_status', 'taxable'),
(205, 37, '_tax_class', ''),
(206, 37, '_manage_stock', 'no'),
(207, 37, '_backorders', 'no'),
(208, 37, '_sold_individually', 'no'),
(209, 37, '_weight', ''),
(210, 37, '_length', ''),
(211, 37, '_width', ''),
(212, 37, '_height', ''),
(213, 37, '_upsell_ids', 'a:0:{}'),
(214, 37, '_crosssell_ids', 'a:0:{}'),
(215, 37, '_purchase_note', ''),
(216, 37, '_default_attributes', 'a:0:{}'),
(217, 37, '_virtual', 'no'),
(218, 37, '_downloadable', 'no'),
(219, 37, '_product_image_gallery', ''),
(220, 37, '_download_limit', '-1'),
(221, 37, '_download_expiry', '-1'),
(222, 37, '_stock', NULL),
(223, 37, '_stock_status', 'instock'),
(224, 37, '_product_version', '3.2.6'),
(225, 37, '_price', ''),
(226, 39, '_wc_review_count', '0'),
(227, 39, '_wc_rating_count', 'a:0:{}'),
(228, 39, '_wc_average_rating', '0'),
(229, 39, '_edit_last', '1'),
(230, 39, '_edit_lock', '1516897664:1'),
(231, 40, '_wp_attached_file', '2018/01/P1340556.jpg'),
(232, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:750;s:4:"file";s:20:"2018/01/P1340556.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"P1340556-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"P1340556-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"P1340556-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:6:"custom";a:4:{s:4:"file";s:21:"P1340556-1000x400.jpg";s:5:"width";i:1000;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"P1340556-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"P1340556-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"P1340556-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"4";s:6:"credit";s:0:"";s:6:"camera";s:8:"DMC-FZ60";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1493204148";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"13.8";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.002";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(233, 39, '_thumbnail_id', '40'),
(234, 39, '_sku', ''),
(235, 39, '_regular_price', ''),
(236, 39, '_sale_price', ''),
(237, 39, '_sale_price_dates_from', ''),
(238, 39, '_sale_price_dates_to', ''),
(239, 39, 'total_sales', '0'),
(240, 39, '_tax_status', 'taxable'),
(241, 39, '_tax_class', ''),
(242, 39, '_manage_stock', 'no'),
(243, 39, '_backorders', 'no'),
(244, 39, '_sold_individually', 'no'),
(245, 39, '_weight', ''),
(246, 39, '_length', ''),
(247, 39, '_width', ''),
(248, 39, '_height', ''),
(249, 39, '_upsell_ids', 'a:0:{}'),
(250, 39, '_crosssell_ids', 'a:0:{}'),
(251, 39, '_purchase_note', ''),
(252, 39, '_default_attributes', 'a:0:{}'),
(253, 39, '_virtual', 'no'),
(254, 39, '_downloadable', 'no'),
(255, 39, '_product_image_gallery', ''),
(256, 39, '_download_limit', '-1'),
(257, 39, '_download_expiry', '-1'),
(258, 39, '_stock', NULL),
(259, 39, '_stock_status', 'instock'),
(260, 39, '_product_version', '3.2.6'),
(261, 39, '_price', ''),
(262, 41, '_wc_review_count', '0'),
(263, 41, '_wc_rating_count', 'a:0:{}'),
(264, 41, '_wc_average_rating', '0'),
(265, 41, '_edit_last', '1'),
(266, 41, '_edit_lock', '1516897754:1'),
(267, 42, '_wp_attached_file', '2018/01/P1340687.jpg'),
(268, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:750;s:4:"file";s:20:"2018/01/P1340687.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"P1340687-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"P1340687-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"P1340687-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:6:"custom";a:4:{s:4:"file";s:21:"P1340687-1000x400.jpg";s:5:"width";i:1000;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"P1340687-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"P1340687-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"P1340687-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.1";s:6:"credit";s:0:"";s:6:"camera";s:8:"DMC-FZ60";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1493290495";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"6.3";s:3:"iso";s:3:"250";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(269, 41, '_thumbnail_id', '42'),
(270, 41, '_sku', ''),
(271, 41, '_regular_price', ''),
(272, 41, '_sale_price', ''),
(273, 41, '_sale_price_dates_from', ''),
(274, 41, '_sale_price_dates_to', ''),
(275, 41, 'total_sales', '0'),
(276, 41, '_tax_status', 'taxable'),
(277, 41, '_tax_class', ''),
(278, 41, '_manage_stock', 'no'),
(279, 41, '_backorders', 'no'),
(280, 41, '_sold_individually', 'no'),
(281, 41, '_weight', ''),
(282, 41, '_length', ''),
(283, 41, '_width', ''),
(284, 41, '_height', ''),
(285, 41, '_upsell_ids', 'a:0:{}'),
(286, 41, '_crosssell_ids', 'a:0:{}'),
(287, 41, '_purchase_note', ''),
(288, 41, '_default_attributes', 'a:0:{}'),
(289, 41, '_virtual', 'no'),
(290, 41, '_downloadable', 'no'),
(291, 41, '_product_image_gallery', ''),
(292, 41, '_download_limit', '-1'),
(293, 41, '_download_expiry', '-1'),
(294, 41, '_stock', NULL),
(295, 41, '_stock_status', 'instock'),
(296, 41, '_product_version', '3.2.6'),
(297, 41, '_price', ''),
(298, 43, '_wc_review_count', '0'),
(299, 43, '_wc_rating_count', 'a:0:{}'),
(300, 43, '_wc_average_rating', '0'),
(301, 43, '_edit_last', '1'),
(302, 43, '_edit_lock', '1516897811:1'),
(303, 44, '_wp_attached_file', '2018/01/y.jpg'),
(304, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:248;s:6:"height";i:183;s:4:"file";s:13:"2018/01/y.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"y-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"y-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(305, 43, '_thumbnail_id', '44'),
(306, 43, '_sku', ''),
(307, 43, '_regular_price', ''),
(308, 43, '_sale_price', ''),
(309, 43, '_sale_price_dates_from', ''),
(310, 43, '_sale_price_dates_to', ''),
(311, 43, 'total_sales', '0'),
(312, 43, '_tax_status', 'taxable'),
(313, 43, '_tax_class', ''),
(314, 43, '_manage_stock', 'no'),
(315, 43, '_backorders', 'no'),
(316, 43, '_sold_individually', 'no'),
(317, 43, '_weight', ''),
(318, 43, '_length', ''),
(319, 43, '_width', ''),
(320, 43, '_height', ''),
(321, 43, '_upsell_ids', 'a:0:{}'),
(322, 43, '_crosssell_ids', 'a:0:{}'),
(323, 43, '_purchase_note', ''),
(324, 43, '_default_attributes', 'a:0:{}'),
(325, 43, '_virtual', 'no'),
(326, 43, '_downloadable', 'no'),
(327, 43, '_product_image_gallery', ''),
(328, 43, '_download_limit', '-1'),
(329, 43, '_download_expiry', '-1'),
(330, 43, '_stock', NULL),
(331, 43, '_stock_status', 'instock'),
(332, 43, '_product_version', '3.2.6'),
(333, 43, '_price', ''),
(334, 45, '_wc_review_count', '0'),
(335, 45, '_wc_rating_count', 'a:0:{}'),
(336, 45, '_wc_average_rating', '0'),
(337, 45, '_edit_last', '1'),
(338, 45, '_edit_lock', '1516897870:1'),
(339, 46, '_wp_attached_file', '2018/01/hqdefault-1.jpg'),
(340, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:452;s:6:"height";i:354;s:4:"file";s:23:"2018/01/hqdefault-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"hqdefault-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:23:"hqdefault-1-300x235.jpg";s:5:"width";i:300;s:6:"height";i:235;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"hqdefault-1-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:23:"hqdefault-1-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(341, 45, '_thumbnail_id', '46'),
(342, 45, '_sku', ''),
(343, 45, '_regular_price', ''),
(344, 45, '_sale_price', ''),
(345, 45, '_sale_price_dates_from', ''),
(346, 45, '_sale_price_dates_to', ''),
(347, 45, 'total_sales', '0'),
(348, 45, '_tax_status', 'taxable'),
(349, 45, '_tax_class', ''),
(350, 45, '_manage_stock', 'no'),
(351, 45, '_backorders', 'no'),
(352, 45, '_sold_individually', 'no'),
(353, 45, '_weight', ''),
(354, 45, '_length', ''),
(355, 45, '_width', ''),
(356, 45, '_height', ''),
(357, 45, '_upsell_ids', 'a:0:{}'),
(358, 45, '_crosssell_ids', 'a:0:{}'),
(359, 45, '_purchase_note', ''),
(360, 45, '_default_attributes', 'a:0:{}'),
(361, 45, '_virtual', 'no'),
(362, 45, '_downloadable', 'no'),
(363, 45, '_product_image_gallery', ''),
(364, 45, '_download_limit', '-1'),
(365, 45, '_download_expiry', '-1'),
(366, 45, '_stock', NULL),
(367, 45, '_stock_status', 'instock'),
(368, 45, '_product_version', '3.2.6'),
(369, 45, '_price', ''),
(370, 47, '_wc_review_count', '0'),
(371, 47, '_wc_rating_count', 'a:0:{}'),
(372, 47, '_wc_average_rating', '0'),
(373, 47, '_edit_last', '1'),
(374, 47, '_edit_lock', '1516897944:1'),
(375, 48, '_wp_attached_file', '2018/01/board-retaining-clamp.png'),
(376, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:450;s:4:"file";s:33:"2018/01/board-retaining-clamp.png";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:33:"board-retaining-clamp-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:33:"board-retaining-clamp-300x225.png";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:9:"image/png";}s:6:"custom";a:4:{s:4:"file";s:33:"board-retaining-clamp-600x400.png";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:33:"board-retaining-clamp-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:33:"board-retaining-clamp-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:33:"board-retaining-clamp-600x450.png";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(377, 47, '_thumbnail_id', '48'),
(378, 47, '_sku', ''),
(379, 47, '_regular_price', ''),
(380, 47, '_sale_price', ''),
(381, 47, '_sale_price_dates_from', ''),
(382, 47, '_sale_price_dates_to', ''),
(383, 47, 'total_sales', '0'),
(384, 47, '_tax_status', 'taxable'),
(385, 47, '_tax_class', ''),
(386, 47, '_manage_stock', 'no'),
(387, 47, '_backorders', 'no'),
(388, 47, '_sold_individually', 'no'),
(389, 47, '_weight', ''),
(390, 47, '_length', ''),
(391, 47, '_width', ''),
(392, 47, '_height', ''),
(393, 47, '_upsell_ids', 'a:0:{}'),
(394, 47, '_crosssell_ids', 'a:0:{}'),
(395, 47, '_purchase_note', ''),
(396, 47, '_default_attributes', 'a:0:{}'),
(397, 47, '_virtual', 'no'),
(398, 47, '_downloadable', 'no'),
(399, 47, '_product_image_gallery', ''),
(400, 47, '_download_limit', '-1'),
(401, 47, '_download_expiry', '-1'),
(402, 47, '_stock', NULL),
(403, 47, '_stock_status', 'instock'),
(404, 47, '_product_version', '3.2.6'),
(405, 47, '_price', ''),
(406, 49, '_wc_review_count', '0'),
(407, 49, '_wc_rating_count', 'a:0:{}'),
(408, 49, '_wc_average_rating', '0'),
(409, 49, '_edit_last', '1'),
(410, 49, '_edit_lock', '1516898007:1'),
(411, 50, '_wp_attached_file', '2018/01/3.jpg'),
(412, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:800;s:6:"height";i:600;s:4:"file";s:13:"2018/01/3.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"3-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:13:"3-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:6:"custom";a:4:{s:4:"file";s:13:"3-800x400.jpg";s:5:"width";i:800;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:13:"3-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:13:"3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:13:"3-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(413, 49, '_thumbnail_id', '50'),
(414, 49, '_sku', ''),
(415, 49, '_regular_price', ''),
(416, 49, '_sale_price', ''),
(417, 49, '_sale_price_dates_from', ''),
(418, 49, '_sale_price_dates_to', ''),
(419, 49, 'total_sales', '0'),
(420, 49, '_tax_status', 'taxable'),
(421, 49, '_tax_class', ''),
(422, 49, '_manage_stock', 'no'),
(423, 49, '_backorders', 'no'),
(424, 49, '_sold_individually', 'no'),
(425, 49, '_weight', ''),
(426, 49, '_length', ''),
(427, 49, '_width', ''),
(428, 49, '_height', ''),
(429, 49, '_upsell_ids', 'a:0:{}'),
(430, 49, '_crosssell_ids', 'a:0:{}'),
(431, 49, '_purchase_note', ''),
(432, 49, '_default_attributes', 'a:0:{}'),
(433, 49, '_virtual', 'no'),
(434, 49, '_downloadable', 'no'),
(435, 49, '_product_image_gallery', ''),
(436, 49, '_download_limit', '-1'),
(437, 49, '_download_expiry', '-1'),
(438, 49, '_stock', NULL),
(439, 49, '_stock_status', 'instock'),
(440, 49, '_product_version', '3.2.6'),
(441, 49, '_price', ''),
(442, 51, '_wc_review_count', '0'),
(443, 51, '_wc_rating_count', 'a:0:{}'),
(444, 51, '_wc_average_rating', '0'),
(445, 51, '_edit_last', '1'),
(446, 51, '_edit_lock', '1516898129:1'),
(447, 52, '_wp_attached_file', '2018/01/P1340542.jpg'),
(448, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:750;s:4:"file";s:20:"2018/01/P1340542.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"P1340542-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"P1340542-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"P1340542-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:6:"custom";a:4:{s:4:"file";s:21:"P1340542-1000x400.jpg";s:5:"width";i:1000;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:20:"P1340542-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:20:"P1340542-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:20:"P1340542-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"4.5";s:6:"credit";s:0:"";s:6:"camera";s:8:"DMC-FZ60";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1493203568";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"7.8";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:6:"0.0005";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(449, 51, '_thumbnail_id', '52'),
(450, 51, '_sku', ''),
(451, 51, '_regular_price', ''),
(452, 51, '_sale_price', ''),
(453, 51, '_sale_price_dates_from', ''),
(454, 51, '_sale_price_dates_to', ''),
(455, 51, 'total_sales', '0'),
(456, 51, '_tax_status', 'taxable'),
(457, 51, '_tax_class', ''),
(458, 51, '_manage_stock', 'no'),
(459, 51, '_backorders', 'no'),
(460, 51, '_sold_individually', 'no'),
(461, 51, '_weight', ''),
(462, 51, '_length', ''),
(463, 51, '_width', ''),
(464, 51, '_height', ''),
(465, 51, '_upsell_ids', 'a:0:{}'),
(466, 51, '_crosssell_ids', 'a:0:{}'),
(467, 51, '_purchase_note', ''),
(468, 51, '_default_attributes', 'a:0:{}'),
(469, 51, '_virtual', 'no'),
(470, 51, '_downloadable', 'no'),
(471, 51, '_product_image_gallery', ''),
(472, 51, '_download_limit', '-1'),
(473, 51, '_download_expiry', '-1'),
(474, 51, '_stock', NULL),
(475, 51, '_stock_status', 'instock'),
(476, 51, '_product_version', '3.2.6'),
(477, 51, '_price', ''),
(478, 53, '_wc_review_count', '0'),
(479, 53, '_wc_rating_count', 'a:0:{}'),
(480, 53, '_wc_average_rating', '0'),
(481, 54, '_edit_last', '1'),
(482, 54, '_edit_lock', '1516935954:1'),
(483, 56, '_menu_item_type', 'post_type'),
(484, 56, '_menu_item_menu_item_parent', '0'),
(485, 56, '_menu_item_object_id', '54'),
(486, 56, '_menu_item_object', 'page'),
(487, 56, '_menu_item_target', ''),
(488, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(489, 56, '_menu_item_xfn', ''),
(490, 56, '_menu_item_url', ''),
(492, 58, '_edit_last', '1'),
(493, 58, '_edit_lock', '1516936928:1'),
(494, 59, '_wp_attached_file', '2018/01/giangiaokhung-1024x682.png'),
(495, 59, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:682;s:4:"file";s:34:"2018/01/giangiaokhung-1024x682.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"giangiaokhung-1024x682-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:34:"giangiaokhung-1024x682-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:34:"giangiaokhung-1024x682-768x512.png";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:35:"giangiaokhung-1024x682-1024x682.png";s:5:"width";i:1024;s:6:"height";i:682;s:9:"mime-type";s:9:"image/png";}s:6:"custom";a:4:{s:4:"file";s:35:"giangiaokhung-1024x682-1000x400.png";s:5:"width";i:1000;s:6:"height";i:400;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:34:"giangiaokhung-1024x682-180x180.png";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:9:"image/png";}s:12:"shop_catalog";a:4:{s:4:"file";s:34:"giangiaokhung-1024x682-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:11:"shop_single";a:4:{s:4:"file";s:34:"giangiaokhung-1024x682-600x600.png";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(496, 58, '_thumbnail_id', '59'),
(497, 58, '_pingme', '1'),
(498, 58, '_encloseme', '1'),
(499, 61, '_menu_item_type', 'taxonomy'),
(500, 61, '_menu_item_menu_item_parent', '0'),
(501, 61, '_menu_item_object_id', '25'),
(502, 61, '_menu_item_object', 'category'),
(503, 61, '_menu_item_target', ''),
(504, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(505, 61, '_menu_item_xfn', ''),
(506, 61, '_menu_item_url', ''),
(508, 62, '_edit_last', '1'),
(509, 62, '_edit_lock', '1516937169:1'),
(510, 63, '_wp_attached_file', '2018/01/468A2590-1024x683.jpg'),
(511, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:683;s:4:"file";s:29:"2018/01/468A2590-1024x683.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"468A2590-1024x683-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"468A2590-1024x683-500x333.jpg";s:5:"width";i:500;s:6:"height";i:333;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"468A2590-1024x683-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"468A2590-1024x683-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:6:"custom";a:4:{s:4:"file";s:30:"468A2590-1024x683-1000x400.jpg";s:5:"width";i:1000;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:29:"468A2590-1024x683-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"shop_catalog";a:4:{s:4:"file";s:29:"468A2590-1024x683-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:11:"shop_single";a:4:{s:4:"file";s:29:"468A2590-1024x683-600x600.jpg";s:5:"width";i:600;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(512, 62, '_thumbnail_id', '63'),
(513, 62, '_pingme', '1'),
(514, 62, '_encloseme', '1'),
(515, 65, '_form', '<div class="form-group">\n<label> Tên của bạn (*)</label>\n[text* your-name class:form-control] \n</div>\n<div class="form-group">\n<label> Địa chỉ Email (bắt buộc)</label>\n[email* your-email class:form-control] \n</div>\n<div class="form-group">\n<label> Tiêu đề:</label>\n    [text your-subject class:form-control] \n</div>\n<div class="form-group">\n<label> Thông điệp</label>\n    [textarea your-message class:form-control] \n</div>\n\n[submit "Gửi đi"]'),
(516, 65, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:68:"Công ty cổ phần thương mại sản xuất HP "[your-subject]"";s:6:"sender";s:43:"[your-name] <wordpress@dantinjsc-old.local>";s:9:"recipient";s:17:"admin@example.com";s:4:"body";s:270:"Gửi đến từ: [your-name] <[your-email]>\nTiêu đề: [your-subject]\n\nNội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Công ty cổ phần thương mại sản xuất HP (http://dantinjsc-old.local)";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(517, 65, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:68:"Công ty cổ phần thương mại sản xuất HP "[your-subject]"";s:6:"sender";s:83:"Công ty cổ phần thương mại sản xuất HP <wordpress@dantinjsc-old.local>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:195:"Nội dung thông điệp:\n[your-message]\n\n-- \nEmail này được gửi đến từ form liên hệ của website Công ty cổ phần thương mại sản xuất HP (http://dantinjsc-old.local)";s:18:"additional_headers";s:27:"Reply-To: admin@example.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(518, 65, '_messages', 'a:23:{s:12:"mail_sent_ok";s:53:"Xin cảm ơn, form đã được gửi thành công.";s:12:"mail_sent_ng";s:118:"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.";s:16:"validation_error";s:86:"Có một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.";s:4:"spam";s:118:"Có lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.";s:12:"accept_terms";s:67:"Bạn phải chấp nhận điều khoản trước khi gửi form.";s:16:"invalid_required";s:28:"Mục này là bắt buộc.";s:16:"invalid_too_long";s:36:"Nhập quá số kí tự cho phép.";s:17:"invalid_too_short";s:44:"Nhập ít hơn số kí tự tối thiểu.";s:12:"invalid_date";s:46:"Định dạng ngày tháng không hợp lệ.";s:14:"date_too_early";s:58:"Ngày này trước ngày sớm nhất được cho phép.";s:13:"date_too_late";s:54:"Ngày này quá ngày gần nhất được cho phép.";s:13:"upload_failed";s:36:"Tải file lên không thành công.";s:24:"upload_file_type_invalid";s:69:"Bạn không được phép tải lên file theo định dạng này.";s:21:"upload_file_too_large";s:31:"File kích thước quá lớn.";s:23:"upload_failed_php_error";s:36:"Tải file lên không thành công.";s:14:"invalid_number";s:38:"Định dạng số không hợp lệ.";s:16:"number_too_small";s:48:"Con số nhỏ hơn số nhỏ nhất cho phép.";s:16:"number_too_large";s:48:"Con số lớn hơn số lớn nhất cho phép.";s:23:"quiz_answer_not_correct";s:30:"Câu trả lời chưa đúng.";s:17:"captcha_not_match";s:34:"Bạn đã nhập sai mã CAPTCHA.";s:13:"invalid_email";s:38:"Địa chỉ e-mail không hợp lệ.";s:11:"invalid_url";s:22:"URL không hợp lệ.";s:11:"invalid_tel";s:39:"Số điện thoại không hợp lệ.";}'),
(519, 65, '_additional_settings', ''),
(520, 65, '_locale', 'vi'),
(521, 66, '_edit_last', '1'),
(522, 66, '_edit_lock', '1516939302:1'),
(523, 68, '_menu_item_type', 'post_type'),
(524, 68, '_menu_item_menu_item_parent', '0'),
(525, 68, '_menu_item_object_id', '66'),
(526, 68, '_menu_item_object', 'page'),
(527, 68, '_menu_item_target', ''),
(528, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(529, 68, '_menu_item_xfn', ''),
(530, 68, '_menu_item_url', ''),
(532, 74, '_menu_item_type', 'taxonomy'),
(533, 74, '_menu_item_menu_item_parent', '21'),
(534, 74, '_menu_item_object_id', '17'),
(535, 74, '_menu_item_object', 'product_cat'),
(536, 74, '_menu_item_target', ''),
(537, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(538, 74, '_menu_item_xfn', ''),
(539, 74, '_menu_item_url', ''),
(541, 75, '_menu_item_type', 'taxonomy'),
(542, 75, '_menu_item_menu_item_parent', '21'),
(543, 75, '_menu_item_object_id', '18'),
(544, 75, '_menu_item_object', 'product_cat'),
(545, 75, '_menu_item_target', ''),
(546, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(547, 75, '_menu_item_xfn', ''),
(548, 75, '_menu_item_url', ''),
(550, 76, '_menu_item_type', 'taxonomy'),
(551, 76, '_menu_item_menu_item_parent', '21'),
(552, 76, '_menu_item_object_id', '19'),
(553, 76, '_menu_item_object', 'product_cat'),
(554, 76, '_menu_item_target', ''),
(555, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(556, 76, '_menu_item_xfn', ''),
(557, 76, '_menu_item_url', ''),
(559, 77, '_menu_item_type', 'taxonomy'),
(560, 77, '_menu_item_menu_item_parent', '21'),
(561, 77, '_menu_item_object_id', '22'),
(562, 77, '_menu_item_object', 'product_cat'),
(563, 77, '_menu_item_target', ''),
(564, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(565, 77, '_menu_item_xfn', ''),
(566, 77, '_menu_item_url', ''),
(568, 78, '_menu_item_type', 'taxonomy'),
(569, 78, '_menu_item_menu_item_parent', '21'),
(570, 78, '_menu_item_object_id', '20'),
(571, 78, '_menu_item_object', 'product_cat'),
(572, 78, '_menu_item_target', ''),
(573, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(574, 78, '_menu_item_xfn', ''),
(575, 78, '_menu_item_url', ''),
(577, 79, '_menu_item_type', 'taxonomy'),
(578, 79, '_menu_item_menu_item_parent', '21'),
(579, 79, '_menu_item_object_id', '21'),
(580, 79, '_menu_item_object', 'product_cat'),
(581, 79, '_menu_item_target', ''),
(582, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(583, 79, '_menu_item_xfn', ''),
(584, 79, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_general_ci NOT NULL,
  `post_title` text COLLATE utf8_general_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_general_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_general_ci NOT NULL,
  `pinged` text COLLATE utf8_general_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_general_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_general_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-01-25 13:56:58', '2018-01-25 13:56:58', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'trash', 'open', 'open', '', 'chao-moi-nguoi__trashed', '', '', '2018-01-25 14:16:20', '2018-01-25 14:16:20', '', 0, 'http://dantinjsc-old.local/?p=1', 0, 'post', '', 1),
(2, 1, '2018-01-25 13:56:58', '2018-01-25 13:56:58', 'Đây là một trang mẫu. Nó khác với một bài blog bởi vì nó sẽ là một trang tĩnh và sẽ được thêm vào thanh menu của trang web của bạn (trong hầu hết theme). Mọi người thường bắt đầu bằng một trang Giới thiệu để giới thiệu bản thân đến người dùng tiềm năng. Bạn có thể viết như sau:\n\n<blockquote>Xin chào! Tôi là người giao thư bằng xe đạp vào ban ngày, một diễn viên đầy tham vọng vào ban đêm, và đây là trang web của tôi. Tôi sống ở Los Angeles, có một chú cho tuyệt vời tên là Jack, và tôi thích uống cocktail.</blockquote>\n\n...hay như thế này:\n\n<blockquote>Công ty XYZ Doohickey được thành lập vào năm 1971, và đã cung cấp đồ dùng chất lượng cho công chúng kể từ đó. Nằm ở thành phố Gotham, XYZ tạo việc làm cho hơn 2.000 người và làm tất cả những điều tuyệt vời cho cộng đồng Gotham.</blockquote>\n\nLà người dùng WordPress mới, bạn nên truy cập <a href="http://dantinjsc-old.local/wp-admin/">trang quản trị</a> để xóa trang này và tạo các trang mới cho nội dung của bạn. Chúc vui vẻ!', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2018-01-25 13:56:58', '2018-01-25 13:56:58', '', 0, 'http://dantinjsc-old.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-01-25 13:58:21', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-01-25 13:58:21', '0000-00-00 00:00:00', '', 0, 'http://dantinjsc-old.local/?p=3', 0, 'post', '', 0),
(4, 1, '2018-01-25 14:16:20', '2018-01-25 14:16:20', 'Chúc mừng đến với WordPress. Đây là bài viết đầu tiên của bạn. Hãy chỉnh sửa hay xóa bài viết này, và bắt đầu viết blog!', 'Chào tất cả mọi người!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-01-25 14:16:20', '2018-01-25 14:16:20', '', 1, 'http://dantinjsc-old.local/?p=4', 0, 'revision', '', 0),
(5, 1, '2018-01-25 14:16:42', '2018-01-25 14:16:42', '', 'Slider 1', '', 'publish', 'open', 'open', '', 'slider-1', '', '', '2018-01-25 14:37:40', '2018-01-25 14:37:40', '', 0, 'http://dantinjsc-old.local/?p=5', 0, 'post', '', 0),
(7, 1, '2018-01-25 14:16:42', '2018-01-25 14:16:42', '', 'Slider 1', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-01-25 14:16:42', '2018-01-25 14:16:42', '', 5, 'http://dantinjsc-old.local/?p=7', 0, 'revision', '', 0),
(8, 1, '2018-01-25 14:17:05', '2018-01-25 14:17:05', '', 'Slider 2', '', 'publish', 'open', 'open', '', 'slider-2', '', '', '2018-01-25 14:38:02', '2018-01-25 14:38:02', '', 0, 'http://dantinjsc-old.local/?p=8', 0, 'post', '', 0),
(10, 1, '2018-01-25 14:17:05', '2018-01-25 14:17:05', '', 'Slider 2', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-01-25 14:17:05', '2018-01-25 14:17:05', '', 8, 'http://dantinjsc-old.local/?p=10', 0, 'revision', '', 0),
(11, 1, '2018-01-25 14:17:24', '2018-01-25 14:17:24', '', 'Slider 3', '', 'publish', 'open', 'open', '', 'slider-3', '', '', '2018-01-25 14:39:02', '2018-01-25 14:39:02', '', 0, 'http://dantinjsc-old.local/?p=11', 0, 'post', '', 0),
(13, 1, '2018-01-25 14:17:24', '2018-01-25 14:17:24', '', 'Slider 3', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-01-25 14:17:24', '2018-01-25 14:17:24', '', 11, 'http://dantinjsc-old.local/?p=13', 0, 'revision', '', 0),
(14, 1, '2018-01-25 14:21:38', '2018-01-25 14:21:38', 'http://dantinjsc-old.local/wp-content/uploads/2018/01/force-regenerate-thumbnails.zip', 'force-regenerate-thumbnails.zip', '', 'private', 'open', 'closed', '', 'force-regenerate-thumbnails-zip', '', '', '2018-01-25 14:21:38', '2018-01-25 14:21:38', '', 0, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/force-regenerate-thumbnails.zip', 0, 'attachment', '', 0),
(17, 1, '2018-01-25 14:27:19', '0000-00-00 00:00:00', '', 'Trang chủ', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-25 14:27:19', '0000-00-00 00:00:00', '', 0, 'http://dantinjsc-old.local/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2018-01-25 14:27:19', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-01-25 14:27:19', '0000-00-00 00:00:00', '', 0, 'http://dantinjsc-old.local/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2018-01-25 14:31:39', '2018-01-25 14:31:39', '', 'Trang Chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2018-01-26 04:34:05', '2018-01-26 04:34:05', '', 0, 'http://dantinjsc-old.local/?p=19', 1, 'nav_menu_item', '', 0),
(21, 1, '2018-01-25 14:31:39', '2018-01-25 14:31:39', '', 'Sản phẩm', '', 'publish', 'closed', 'closed', '', 'san-pham', '', '', '2018-01-26 04:34:05', '2018-01-26 04:34:05', '', 0, 'http://dantinjsc-old.local/?p=21', 3, 'nav_menu_item', '', 0),
(24, 1, '2018-01-25 14:37:37', '2018-01-25 14:37:37', '', '286869-construction', '', 'inherit', 'open', 'closed', '', '286869-construction', '', '', '2018-01-25 14:37:37', '2018-01-25 14:37:37', '', 5, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/286869-construction.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-01-25 14:37:59', '2018-01-25 14:37:59', '', 'Construction', '', 'inherit', 'open', 'closed', '', 'construction', '', '', '2018-01-25 14:37:59', '2018-01-25 14:37:59', '', 8, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/Construction.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-01-25 14:38:59', '2018-01-25 14:38:59', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg', '', '', '2018-01-25 14:38:59', '2018-01-25 14:38:59', '', 11, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-01-25 16:13:42', '2018-01-25 16:13:42', '', 'Cửa hàng', '', 'publish', 'closed', 'closed', '', 'cua-hang', '', '', '2018-01-25 16:13:42', '2018-01-25 16:13:42', '', 0, 'http://dantinjsc-old.local/?page_id=27', 0, 'page', '', 0),
(28, 1, '2018-01-25 16:13:42', '2018-01-25 16:13:42', '[woocommerce_cart]', 'Giỏ hàng', '', 'publish', 'closed', 'closed', '', 'gio-hang', '', '', '2018-01-25 16:13:42', '2018-01-25 16:13:42', '', 0, 'http://dantinjsc-old.local/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-01-25 16:13:42', '2018-01-25 16:13:42', '[woocommerce_checkout]', 'Thanh toán', '', 'publish', 'closed', 'closed', '', 'thanh-toan', '', '', '2018-01-25 16:13:42', '2018-01-25 16:13:42', '', 0, 'http://dantinjsc-old.local/?page_id=29', 0, 'page', '', 0),
(30, 1, '2018-01-25 16:13:42', '2018-01-25 16:13:42', '[woocommerce_my_account]', 'Tài khoản', '', 'publish', 'closed', 'closed', '', 'tai-khoan', '', '', '2018-01-25 16:13:42', '2018-01-25 16:13:42', '', 0, 'http://dantinjsc-old.local/?page_id=30', 0, 'page', '', 0),
(31, 1, '2018-01-25 16:24:12', '2018-01-25 16:24:12', '<p>Sản phẩm được sản xuất theo tiêu chuẩn BS 1139</p>\r\n<p>Nhập khẩu: 100%</p>\r\n<p>Chủng loại: Trung Quốc</p>\r\n<p>Chất liệu: gang đúc mạ kẽm</p>\r\n<p>Quy cách: liên kết cố định 2 đoạn ống thép có đường kính Ø42-Ø49 có góc nối 90 độ</p>\r\n<p>Trọng lượng: 1.05 Kg/cái (+/_ 0.05)</p>', 'Cùm BS1139 cố định, khóa cố định', '', 'publish', 'open', 'closed', '', 'cum-bs1139-co-dinh-khoa-co-dinh', '', '', '2018-01-25 17:41:51', '2018-01-25 17:41:51', '', 0, 'http://dantinjsc-old.local/?post_type=product&#038;p=31', 0, 'product', '', 0),
(33, 1, '2018-01-25 16:24:05', '2018-01-25 16:24:05', '', '4_1319123939988_l', '', 'inherit', 'open', 'closed', '', '4_1319123939988_l', '', '', '2018-01-25 16:24:05', '2018-01-25 16:24:05', '', 31, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/4_1319123939988_l.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-01-25 16:27:25', '2018-01-25 16:27:25', '<p>Sản phẩm được sản xuất theo tiêu chuẩn BS 1139</p>\r\n<p>Nhập khẩu: 100%</p>\r\n<p>Chủng loại: Trung Quốc</p>\r\n<p>Chất liệu: thép dập mạ tĩnh điện</p>\r\n<p>Quy cách: liên kết cố định 2 đoạn ống thép có đường kính Ø42-Ø49 có góc nối 90 độ</p>\r\n<p>Trọng lượng: 1.05 Kg/cái (+/_ 0.05)</p>', 'Cùm BS1139 cố định, khóa cố định', '', 'publish', 'open', 'closed', '', 'cum-bs1139-co-dinh-khoa-co-dinh-2', '', '', '2018-01-25 16:27:25', '2018-01-25 16:27:25', '', 0, 'http://dantinjsc-old.local/?post_type=product&#038;p=34', 0, 'product', '', 0),
(36, 1, '2018-01-25 16:27:18', '2018-01-25 16:27:18', '', 'P1340568', '', 'inherit', 'open', 'closed', '', 'p1340568', '', '', '2018-01-25 16:27:18', '2018-01-25 16:27:18', '', 34, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/P1340568.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-01-25 16:28:48', '2018-01-25 16:28:48', '<p>Sản phẩm được sản xuất theo tiêu chuẩn BS 1139</p>\r\n<p>Nhập khẩu: 100%</p>\r\n<p>Chủng loại: Trung Quốc</p>\r\n<p>Chất liệu: gang đúc mạ kẽm</p>\r\n<p>Quy cách: dùng liên kết 2 đoạn ống thép có đường kính Ø42mm-Ø49mm với góc khóa 0 độ -360 độ</p>\r\n<p>Trọng lượng: 1.25 Kg/cái (+/_ 0.05)</p>', 'Cùm xoay, khóa xoay', '', 'publish', 'open', 'closed', '', 'cum-xoay-khoa-xoay', '', '', '2018-01-25 16:28:48', '2018-01-25 16:28:48', '', 0, 'http://dantinjsc-old.local/?post_type=product&#038;p=37', 0, 'product', '', 0),
(38, 1, '2018-01-25 16:28:29', '2018-01-25 16:28:29', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-01-25 16:28:29', '2018-01-25 16:28:29', '', 37, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-01-25 16:30:05', '2018-01-25 16:30:05', '<p>Sản phẩm được sản xuất theo tiêu chuẩn BS 1139</p>\r\n<p>Nhập khẩu: 100%</p>\r\n<p>Chủng loại: Trung Quốc</p>\r\n<p>Chất liệu: thép dập mạ tĩnh điện</p>\r\n<p>Quy cách: dùng liên kết 2 đoạn ống thép có đường kính Ø42mm-Ø49mm với góc khóa 0 độ -360 độ</p>\r\n<p>Trọng lượng: 1.25 Kg/cái (+/_ 0.05)</p>', 'Cùm xoay, khóa xoay', '', 'publish', 'open', 'closed', '', 'cum-xoay-khoa-xoay-2', '', '', '2018-01-25 16:30:05', '2018-01-25 16:30:05', '', 0, 'http://dantinjsc-old.local/?post_type=product&#038;p=39', 0, 'product', '', 0),
(40, 1, '2018-01-25 16:29:54', '2018-01-25 16:29:54', '', 'P1340556', '', 'inherit', 'open', 'closed', '', 'p1340556', '', '', '2018-01-25 16:29:54', '2018-01-25 16:29:54', '', 39, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/P1340556.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-01-25 16:31:34', '2018-01-25 16:31:34', '<p>Sản phẩm được sản xuất theo tiêu chuẩn BS 1139</p>\r\n<p>Nhập khẩu: 100%</p>\r\n<p>Chủng loại: Trung Quốc</p>\r\n<p>Chất liệu: gang đúc mạ kẽm</p>\r\n<p>Quy cách: nối 2 đoạn ống thép có đường kính Ø42-Ø49mm lại với nhau</p>\r\n<p>Trọng lượng: 1.14 Kg/cái (+/_ 0.05)</p>', 'Cùm nối ống, nối ống ngoài', '', 'publish', 'open', 'closed', '', 'cum-noi-ong-noi-ong-ngoai', '', '', '2018-01-25 16:31:34', '2018-01-25 16:31:34', '', 0, 'http://dantinjsc-old.local/?post_type=product&#038;p=41', 0, 'product', '', 0),
(42, 1, '2018-01-25 16:31:28', '2018-01-25 16:31:28', '', 'P1340687', '', 'inherit', 'open', 'closed', '', 'p1340687', '', '', '2018-01-25 16:31:28', '2018-01-25 16:31:28', '', 41, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/P1340687.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2018-01-25 16:32:28', '2018-01-25 16:32:28', '<p>Sản phẩm được sản xuất theo tiêu chuẩn BS 1139</p>\r\n<p>Nhập khẩu: 100%</p>\r\n<p>Chủng loại: Trung Quốc</p>\r\n<p>Chất liệu: thép dập mạ tĩnh điện</p>\r\n<p>Quy cách: nối 2 đoạn ống thép có đường kính Ø42-Ø49mm lại với nhau</p>\r\n<p>Trọng lượng: 1.14 Kg/cái (+/_ 0.05)</p>', 'Cùm nối ống, nối ống ngoài', '', 'publish', 'open', 'closed', '', 'cum-noi-ong-noi-ong-ngoai-2', '', '', '2018-01-25 16:32:28', '2018-01-25 16:32:28', '', 0, 'http://dantinjsc-old.local/?post_type=product&#038;p=43', 0, 'product', '', 0),
(44, 1, '2018-01-25 16:32:24', '2018-01-25 16:32:24', '', 'y', '', 'inherit', 'open', 'closed', '', 'y', '', '', '2018-01-25 16:32:24', '2018-01-25 16:32:24', '', 43, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/y.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-01-25 16:33:27', '2018-01-25 16:33:27', '<p>Sản phẩm được sản xuất theo tiêu chuẩn BS 1139</p>\r\n<p>Nhập khẩu: 100%</p>\r\n<p>Chủng loại: Trung Quốc</p>\r\n<p>Chất liệu: Bằng gang mạ kẽm</p>\r\n<p>Quy cách: cố định giàn giáo vào thanh dầm I kích thước hàm kẹp lên đến 500mm. Cấu tạo ngàm cứng cáp, tiện dụng thích hợp khi thao tác lắp dựng giàn giáo treo cao.</p>', 'Kẹp dầm', '', 'publish', 'open', 'closed', '', 'kep-dam', '', '', '2018-01-25 16:33:27', '2018-01-25 16:33:27', '', 0, 'http://dantinjsc-old.local/?post_type=product&#038;p=45', 0, 'product', '', 0),
(46, 1, '2018-01-25 16:33:21', '2018-01-25 16:33:21', '', 'hqdefault-1', '', 'inherit', 'open', 'closed', '', 'hqdefault-1', '', '', '2018-01-25 16:33:21', '2018-01-25 16:33:21', '', 45, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/hqdefault-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-01-25 16:34:38', '2018-01-25 16:34:38', '<p>Sản phẩm được sản xuất theo tiêu chuẩn BS 1139</p>\r\n<p>Nhập khẩu: 100%</p>\r\n<p>Chủng loại: Trung Quốc</p>\r\n<p>Chất liệu: Bằng gang mạ kẽm</p>\r\n<p>Quy cách: Dùng cố định mâm giáo vào ống tuýp, cứng cáp không rung lắc, trơn trượt. Giúp thay thế cho việc sử dụng dây thép buộc gây tốn hao chi phí lại không an toàn. Khả năng cố định tấm mâm giáo lên đến 50mm.</p>', 'Kẹp ván hai tai, kẹp mâm', '', 'publish', 'open', 'closed', '', 'kep-van-hai-tai-kep-mam', '', '', '2018-01-25 16:34:38', '2018-01-25 16:34:38', '', 0, 'http://dantinjsc-old.local/?post_type=product&#038;p=47', 0, 'product', '', 0),
(48, 1, '2018-01-25 16:34:32', '2018-01-25 16:34:32', '', 'board-retaining-clamp', '', 'inherit', 'open', 'closed', '', 'board-retaining-clamp', '', '', '2018-01-25 16:34:32', '2018-01-25 16:34:32', '', 47, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/board-retaining-clamp.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2018-01-25 16:35:39', '2018-01-25 16:35:39', '<p>Sản phẩm được sản xuất theo tiêu chuẩn BS 1139</p>\r\n<p>Nhập khẩu: 100%</p>\r\n<p>Chủng loại: Trung Quốc</p>\r\n<p>Chất liệu: Bằng gang mạ kẽm</p>\r\n<p>Quy cách: Dùng lắp giáo trong phạm vi hẹp. Cùm cố định không thể lách qua được. Kẹp má sẽ giúp bạn giải quyết vấn đề này.</p>\r\n<p>Trọng lượng: 0.65 kg/cái (+/_ 0.05)</p>', 'Kẹp má, cùm đơn', '', 'publish', 'open', 'closed', '', 'kep-ma-cum-don', '', '', '2018-01-25 16:35:39', '2018-01-25 16:35:39', '', 0, 'http://dantinjsc-old.local/?post_type=product&#038;p=49', 0, 'product', '', 0),
(50, 1, '2018-01-25 16:35:35', '2018-01-25 16:35:35', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-01-25 16:35:35', '2018-01-25 16:35:35', '', 49, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-01-25 16:37:13', '2018-01-25 16:37:13', '<p>Sản phẩm được sản xuất theo tiêu chuẩn BS 1139</p>\r\n<p>Nhập khẩu: 100%</p>\r\n<p>Chủng loại: Trung Quốc</p>\r\n<p>Chất liệu: thép dập mạ tĩnh điện</p>\r\n<p>Quy cách: Dùng lắp giáo trong phạm vi hẹp. Cùm cố định không thể lách qua được. Kẹp má sẽ giúp bạn giải quyết vấn đề này.</p>\r\n<p>Trọng lượng: 0.65 kg/cái (+/_ 0.05)</p>', 'Kẹp má, cùm đơn', '', 'publish', 'open', 'closed', '', 'kep-ma-cum-don-2', '', '', '2018-01-25 16:37:13', '2018-01-25 16:37:13', '', 0, 'http://dantinjsc-old.local/?post_type=product&#038;p=51', 0, 'product', '', 0),
(52, 1, '2018-01-25 16:37:03', '2018-01-25 16:37:03', '', 'P1340542', '', 'inherit', 'open', 'closed', '', 'p1340542', '', '', '2018-01-25 16:37:03', '2018-01-25 16:37:03', '', 51, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/P1340542.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-01-26 02:26:59', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-01-26 02:26:59', '0000-00-00 00:00:00', '', 0, 'http://dantinjsc-old.local/?post_type=product&p=53', 0, 'product', '', 0),
(54, 1, '2018-01-26 02:57:43', '2018-01-26 02:57:43', '<img class="wp-image-24 size-large aligncenter" src="http://dantinjsc-old.local/wp-content/uploads/2018/01/286869-construction-1024x712.jpg" alt="" width="640" height="445" />\r\n<h3 style="text-align: center;">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2018-01-26 03:03:31', '2018-01-26 03:03:31', '', 0, 'http://dantinjsc-old.local/?page_id=54', 0, 'page', '', 0),
(55, 1, '2018-01-26 02:57:43', '2018-01-26 02:57:43', '<h3><img class="wp-image-24 size-large aligncenter" src="http://dantinjsc-old.local/wp-content/uploads/2018/01/286869-construction-1024x712.jpg" alt="" width="640" height="445" /></h3>\r\n<h3 style="text-align: center;">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-01-26 02:57:43', '2018-01-26 02:57:43', '', 54, 'http://dantinjsc-old.local/?p=55', 0, 'revision', '', 0),
(56, 1, '2018-01-26 02:58:19', '2018-01-26 02:58:19', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2018-01-26 04:34:05', '2018-01-26 04:34:05', '', 0, 'http://dantinjsc-old.local/?p=56', 2, 'nav_menu_item', '', 0),
(57, 1, '2018-01-26 03:02:11', '2018-01-26 03:02:11', '<img class="wp-image-24 size-large aligncenter" src="http://dantinjsc-old.local/wp-content/uploads/2018/01/286869-construction-1024x712.jpg" alt="" width="640" height="445" />\r\n<h3 style="text-align: center;">The standard Lorem Ipsum passage, used since the 1500s</h3>\r\n"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2018-01-26 03:02:11', '2018-01-26 03:02:11', '', 54, 'http://dantinjsc-old.local/?p=57', 0, 'revision', '', 0),
(58, 1, '2018-01-26 03:10:34', '2018-01-26 03:10:34', '<h2>Đơn hàng <a href="http://dangiaovinhloi.com/dan-giao-nem">dàn giáo nêm</a> được ký kết giữa Cty TNHH MTV TV XD TM Phát Triển (P&amp;T) và Dàn Giáo Vĩnh Lợi diễn ra nhanh chóng và thuận lợi.</h2>\r\n<h3><strong>DÀN GIÁO NÊM NGÀY CÀNG ĐƯỢC SỬ DỤNG VỚI NHIỀU ƯU ĐIỂM VƯỢT TRỘI</strong></h3>\r\n<strong>Biện pháp thi công dàn giáo nêm</strong>  ngày càng được ưa chuộng tại các công trình cần khả năng chống đỡ cao, diện tích mặt sàn lớn.\r\n\r\nVới nhiều ưu điểm vượt trội hơn so với loại dàn giáo truyền thống, tính thẩm mỹ thông thoáng cho công trình và giúp thầu xây dựng tiết kiệm nhiều chi phí trong thi công như chi phí nhân công lắp ráp, chi phí vận chuyển và lưu kho  do đó dàn giáo nêm là luôn sự lựa chọn hàng đầu bởi các nhà thầu lớn.\r\n<h3><strong>ĐƠN HÀNG DÀN GIÁO NÊM ĐÁNH DẤU SỰ HỢP TÁC LÂU DÀI GIỮA CTY PHÁT TRIỂN VÀ DÀN GIÁO VĨNH LỢI </strong></h3>\r\nLà một trong những doanh nghiệp có sự tăng trưởng nhanh và ổn định theo năm tháng, <strong>Cty TNHH MTV TMV XD TM Phát triển (P&amp;T)</strong> hoạt động chủ yếu về mảng xây dựng công trình đã tìm hiểu các nhà cung cấp dàn giáo trên thị trường về thương hiệu,  chất lượng sản phẩm cũng như năng lực sản xuất và quyết định hợp tác với Dàn Giáo Vĩnh Lợi trong hợp đồng cung cấp dàn giáo nêm cho công trình tại khu Công Nghệ Cao Quận 9.\r\n\r\nTừ phía khách hàng yêu cầu sản phẩm dàn giáo nêm được thực hiện nhúng kẽm nóng giúp tăng khả năng chống ăn mòn nhằm tăng độ bền khi sử dụng.\r\n\r\n&nbsp;', 'Vĩnh Lợi Giao Dàn Giáo Nêm Cho Cty Xd Phát Triển', '', 'publish', 'open', 'open', '', 'vinh-loi-giao-dan-giao-nem-cho-cty-xd-phat-trien', '', '', '2018-01-26 03:10:34', '2018-01-26 03:10:34', '', 0, 'http://dantinjsc-old.local/?p=58', 0, 'post', '', 0),
(59, 1, '2018-01-26 03:10:28', '2018-01-26 03:10:28', '', 'giangiaokhung-1024x682', '', 'inherit', 'open', 'closed', '', 'giangiaokhung-1024x682', '', '', '2018-01-26 03:10:28', '2018-01-26 03:10:28', '', 58, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/giangiaokhung-1024x682.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2018-01-26 03:10:34', '2018-01-26 03:10:34', '<h2>Đơn hàng <a href="http://dangiaovinhloi.com/dan-giao-nem">dàn giáo nêm</a> được ký kết giữa Cty TNHH MTV TV XD TM Phát Triển (P&amp;T) và Dàn Giáo Vĩnh Lợi diễn ra nhanh chóng và thuận lợi.</h2>\r\n<h3><strong>DÀN GIÁO NÊM NGÀY CÀNG ĐƯỢC SỬ DỤNG VỚI NHIỀU ƯU ĐIỂM VƯỢT TRỘI</strong></h3>\r\n<strong>Biện pháp thi công dàn giáo nêm</strong>  ngày càng được ưa chuộng tại các công trình cần khả năng chống đỡ cao, diện tích mặt sàn lớn.\r\n\r\nVới nhiều ưu điểm vượt trội hơn so với loại dàn giáo truyền thống, tính thẩm mỹ thông thoáng cho công trình và giúp thầu xây dựng tiết kiệm nhiều chi phí trong thi công như chi phí nhân công lắp ráp, chi phí vận chuyển và lưu kho  do đó dàn giáo nêm là luôn sự lựa chọn hàng đầu bởi các nhà thầu lớn.\r\n<h3><strong>ĐƠN HÀNG DÀN GIÁO NÊM ĐÁNH DẤU SỰ HỢP TÁC LÂU DÀI GIỮA CTY PHÁT TRIỂN VÀ DÀN GIÁO VĨNH LỢI </strong></h3>\r\nLà một trong những doanh nghiệp có sự tăng trưởng nhanh và ổn định theo năm tháng, <strong>Cty TNHH MTV TMV XD TM Phát triển (P&amp;T)</strong> hoạt động chủ yếu về mảng xây dựng công trình đã tìm hiểu các nhà cung cấp dàn giáo trên thị trường về thương hiệu,  chất lượng sản phẩm cũng như năng lực sản xuất và quyết định hợp tác với Dàn Giáo Vĩnh Lợi trong hợp đồng cung cấp dàn giáo nêm cho công trình tại khu Công Nghệ Cao Quận 9.\r\n\r\nTừ phía khách hàng yêu cầu sản phẩm dàn giáo nêm được thực hiện nhúng kẽm nóng giúp tăng khả năng chống ăn mòn nhằm tăng độ bền khi sử dụng.\r\n\r\n&nbsp;', 'Vĩnh Lợi Giao Dàn Giáo Nêm Cho Cty Xd Phát Triển', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-01-26 03:10:34', '2018-01-26 03:10:34', '', 58, 'http://dantinjsc-old.local/?p=60', 0, 'revision', '', 0),
(61, 1, '2018-01-26 03:11:08', '2018-01-26 03:11:08', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2018-01-26 04:34:05', '2018-01-26 04:34:05', '', 0, 'http://dantinjsc-old.local/?p=61', 10, 'nav_menu_item', '', 0),
(62, 1, '2018-01-26 03:25:29', '2018-01-26 03:25:29', 'Ngày 14/01/2018, tại nhà hàng The Adora – Nguyễn Kiệm, Công ty CP Thép Vĩnh Lợi đã tổ chức chương trình Kỷ niệm 10 năm ngày thành lập Công ty Cp Thép Vĩnh Lợi (Dàn Giáo Vĩnh Lợi 2007 – 2017), đánh dấu sự nỗ lực to lớn của toàn thể công nhân viên đã cùng nhau đoàn kết, sáng tạo, kiên định, quyết tâm xây dựng Dàn Giáo Vĩnh Lợi trở thành một trong những đơn vị dẫn đầu trong nghành cung cấp thiết bị xây dựng tại Việt Nam trong 10 năm qua, được các doanh nghiệp trong và ngoài nước tin tưởng và hợp tác.\r\n\r\n<img class="size-medium wp-image-63 aligncenter" src="http://dantinjsc-old.local/wp-content/uploads/2018/01/468A2590-1024x683-500x333.jpg" alt="" width="500" height="333" />\r\n\r\nQua 10 năm hình thành và phát triển, vượt qua bao khó khăn vất vả với niềm tin và sự quyết tâm nỗ lực không ngừng nghỉ của Ban lãnh đạo cùng toàn thể nhân viên Dàn giáo Vĩnh Lợi; với phương châm “<strong><em>Dàn Giáo Vĩnh Lợi – An Toàn Tuyệt Đối Cho Mọi Công Trình</em></strong>”,  đã từng bước tạo được niềm tin và khẳng định được thương hiệu, vị thế của mình trên thị trường trong và ngoài nước.\r\n\r\nTham dự và gửi lời chúc mừng đến Dàn Giáo Vĩnh Lợi nhân dịp đặc biệt này là gần 200 đại biểu đại diện cho, Quý Đối tác, Quý Khách hàng tại Tp Hồ Chí Minh và trên toàn quốc cùng toàn thể nhân viên Công ty.', 'Lễ Kỷ Niệm 10 Năm Thành Lập Công Ty Cp Thép Vĩnh Lợi', '', 'publish', 'open', 'open', '', 'le-ky-niem-10-nam-thanh-lap-cong-ty-cp-thep-vinh-loi', '', '', '2018-01-26 03:25:29', '2018-01-26 03:25:29', '', 0, 'http://dantinjsc-old.local/?p=62', 0, 'post', '', 0),
(63, 1, '2018-01-26 03:25:17', '2018-01-26 03:25:17', '', '468A2590-1024x683', '', 'inherit', 'open', 'closed', '', '468a2590-1024x683', '', '', '2018-01-26 03:25:17', '2018-01-26 03:25:17', '', 62, 'http://dantinjsc-old.local/wp-content/uploads/2018/01/468A2590-1024x683.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-01-26 03:25:29', '2018-01-26 03:25:29', 'Ngày 14/01/2018, tại nhà hàng The Adora – Nguyễn Kiệm, Công ty CP Thép Vĩnh Lợi đã tổ chức chương trình Kỷ niệm 10 năm ngày thành lập Công ty Cp Thép Vĩnh Lợi (Dàn Giáo Vĩnh Lợi 2007 – 2017), đánh dấu sự nỗ lực to lớn của toàn thể công nhân viên đã cùng nhau đoàn kết, sáng tạo, kiên định, quyết tâm xây dựng Dàn Giáo Vĩnh Lợi trở thành một trong những đơn vị dẫn đầu trong nghành cung cấp thiết bị xây dựng tại Việt Nam trong 10 năm qua, được các doanh nghiệp trong và ngoài nước tin tưởng và hợp tác.\r\n\r\n<img class="size-medium wp-image-63 aligncenter" src="http://dantinjsc-old.local/wp-content/uploads/2018/01/468A2590-1024x683-500x333.jpg" alt="" width="500" height="333" />\r\n\r\nQua 10 năm hình thành và phát triển, vượt qua bao khó khăn vất vả với niềm tin và sự quyết tâm nỗ lực không ngừng nghỉ của Ban lãnh đạo cùng toàn thể nhân viên Dàn giáo Vĩnh Lợi; với phương châm “<strong><em>Dàn Giáo Vĩnh Lợi – An Toàn Tuyệt Đối Cho Mọi Công Trình</em></strong>”,  đã từng bước tạo được niềm tin và khẳng định được thương hiệu, vị thế của mình trên thị trường trong và ngoài nước.\r\n\r\nTham dự và gửi lời chúc mừng đến Dàn Giáo Vĩnh Lợi nhân dịp đặc biệt này là gần 200 đại biểu đại diện cho, Quý Đối tác, Quý Khách hàng tại Tp Hồ Chí Minh và trên toàn quốc cùng toàn thể nhân viên Công ty.', 'Lễ Kỷ Niệm 10 Năm Thành Lập Công Ty Cp Thép Vĩnh Lợi', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-01-26 03:25:29', '2018-01-26 03:25:29', '', 62, 'http://dantinjsc-old.local/?p=64', 0, 'revision', '', 0),
(65, 1, '2018-01-26 03:29:20', '2018-01-26 03:29:20', '<div class="form-group">\r\n<label> Tên của bạn (*)</label>\r\n[text* your-name class:form-control] \r\n</div>\r\n<div class="form-group">\r\n<label> Địa chỉ Email (bắt buộc)</label>\r\n[email* your-email class:form-control] \r\n</div>\r\n<div class="form-group">\r\n<label> Tiêu đề:</label>\r\n    [text your-subject class:form-control] \r\n</div>\r\n<div class="form-group">\r\n<label> Thông điệp</label>\r\n    [textarea your-message class:form-control] \r\n</div>\r\n\r\n[submit "Gửi đi"]\n1\nCông ty cổ phần thương mại sản xuất HP "[your-subject]"\n[your-name] <wordpress@dantinjsc-old.local>\nadmin@example.com\nGửi đến từ: [your-name] <[your-email]>\r\nTiêu đề: [your-subject]\r\n\r\nNội dung thông điệp:\r\n[your-message]\r\n\r\n-- \r\nEmail này được gửi đến từ form liên hệ của website Công ty cổ phần thương mại sản xuất HP (http://dantinjsc-old.local)\nReply-To: [your-email]\n\n\n\n\nCông ty cổ phần thương mại sản xuất HP "[your-subject]"\nCông ty cổ phần thương mại sản xuất HP <wordpress@dantinjsc-old.local>\n[your-email]\nNội dung thông điệp:\r\n[your-message]\r\n\r\n-- \r\nEmail này được gửi đến từ form liên hệ của website Công ty cổ phần thương mại sản xuất HP (http://dantinjsc-old.local)\nReply-To: admin@example.com\n\n\n\nXin cảm ơn, form đã được gửi thành công.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nCó một hoặc nhiều mục nhập có lỗi. Vui lòng kiểm tra và thử lại.\nCó lỗi xảy ra trong quá trình gửi. Xin vui lòng thử lại hoặc liên hệ người quản trị website.\nBạn phải chấp nhận điều khoản trước khi gửi form.\nMục này là bắt buộc.\nNhập quá số kí tự cho phép.\nNhập ít hơn số kí tự tối thiểu.\nĐịnh dạng ngày tháng không hợp lệ.\nNgày này trước ngày sớm nhất được cho phép.\nNgày này quá ngày gần nhất được cho phép.\nTải file lên không thành công.\nBạn không được phép tải lên file theo định dạng này.\nFile kích thước quá lớn.\nTải file lên không thành công.\nĐịnh dạng số không hợp lệ.\nCon số nhỏ hơn số nhỏ nhất cho phép.\nCon số lớn hơn số lớn nhất cho phép.\nCâu trả lời chưa đúng.\nBạn đã nhập sai mã CAPTCHA.\nĐịa chỉ e-mail không hợp lệ.\nURL không hợp lệ.\nSố điện thoại không hợp lệ.', 'Form liên hệ 1', '', 'publish', 'closed', 'closed', '', 'form-lien-he-1', '', '', '2018-01-26 03:36:19', '2018-01-26 03:36:19', '', 0, 'http://dantinjsc-old.local/?post_type=wpcf7_contact_form&#038;p=65', 0, 'wpcf7_contact_form', '', 0),
(66, 1, '2018-01-26 03:30:51', '2018-01-26 03:30:51', '<strong>Công ty cổ phần thương mại sản xuất HP.</strong>\r\n\r\n<strong>Địa chỉ:</strong> 92/60 Ấp 4, Xã Xuân Thới Thượng, Huyện Hóc Môn, Tp.HCM\r\n\r\n<strong>Hotline:</strong> (08) 62 59 15 75 – Fax: (08) 62 59 15 57\r\n\r\n<strong>Email:</strong> info@VinhLoiCorp.com\r\n<div class="row">\r\n<div class="col-md-5">[contact-form-7 id="65" title="Form liên hệ 1"]</div>\r\n<div class="col-md-7"><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d31347.130250270224!2d106.573636!3d10.857815!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2fc9fe83ede993d!2zRMOgbiBHacOhbyBWxKluaCBM4bujaQ!5e0!3m2!1sen!2sus!4v1516937845862" width="300" height="450" frameborder="0" allowfullscreen="allowfullscreen"></iframe></div>\r\n</div>', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2018-01-26 03:40:38', '2018-01-26 03:40:38', '', 0, 'http://dantinjsc-old.local/?page_id=66', 0, 'page', '', 0),
(67, 1, '2018-01-26 03:30:51', '2018-01-26 03:30:51', '[contact-form-7 id="65" title="Form liên hệ 1"]', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-01-26 03:30:51', '2018-01-26 03:30:51', '', 66, 'http://dantinjsc-old.local/?p=67', 0, 'revision', '', 0),
(68, 1, '2018-01-26 03:31:08', '2018-01-26 03:31:08', ' ', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2018-01-26 04:34:05', '2018-01-26 04:34:05', '', 0, 'http://dantinjsc-old.local/?p=68', 11, 'nav_menu_item', '', 0),
(69, 1, '2018-01-26 03:37:49', '2018-01-26 03:37:49', '<div class="cold"\n<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d31347.130250270224!2d106.573636!3d10.857815!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2fc9fe83ede993d!2zRMOgbiBHacOhbyBWxKluaCBM4bujaQ!5e0!3m2!1sen!2sus!4v1516937845862" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '66-autosave-v1', '', '', '2018-01-26 03:37:49', '2018-01-26 03:37:49', '', 66, 'http://dantinjsc-old.local/?p=69', 0, 'revision', '', 0),
(70, 1, '2018-01-26 03:38:18', '2018-01-26 03:38:18', '<div class="col-md-5">\r\n[contact-form-7 id="65" title="Form liên hệ 1"]\r\n</div>\r\n<div class="col-md-7">\r\n<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d31347.130250270224!2d106.573636!3d10.857815!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2fc9fe83ede993d!2zRMOgbiBHacOhbyBWxKluaCBM4bujaQ!5e0!3m2!1sen!2sus!4v1516937845862" style="width:100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>\r\n</div>\r\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-01-26 03:38:18', '2018-01-26 03:38:18', '', 66, 'http://dantinjsc-old.local/?p=70', 0, 'revision', '', 0),
(71, 1, '2018-01-26 03:38:42', '2018-01-26 03:38:42', '<div class="row">\r\n<div class="col-md-5">\r\n[contact-form-7 id="65" title="Form liên hệ 1"]\r\n</div>\r\n<div class="col-md-7">\r\n<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d31347.130250270224!2d106.573636!3d10.857815!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2fc9fe83ede993d!2zRMOgbiBHacOhbyBWxKluaCBM4bujaQ!5e0!3m2!1sen!2sus!4v1516937845862" style="width:100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>\r\n</div>\r\n</div>\r\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-01-26 03:38:42', '2018-01-26 03:38:42', '', 66, 'http://dantinjsc-old.local/?p=71', 0, 'revision', '', 0),
(72, 1, '2018-01-26 03:40:08', '2018-01-26 03:40:08', '<p>Công ty cổ phần thương mại sản xuất HP.</p>\r\n<p>Địa chỉ: 92/60 Ấp 4, Xã Xuân Thới Thượng, Huyện Hóc Môn, Tp.HCM</p>\r\n<p>Hotline: (08) 62 59 15 75 – Fax: (08) 62 59 15 57</p>\r\n<p>Email: info@VinhLoiCorp.com</p>\r\n<div class="row">\r\n<div class="col-md-5">\r\n[contact-form-7 id="65" title="Form liên hệ 1"]\r\n</div>\r\n<div class="col-md-7">\r\n<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d31347.130250270224!2d106.573636!3d10.857815!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2fc9fe83ede993d!2zRMOgbiBHacOhbyBWxKluaCBM4bujaQ!5e0!3m2!1sen!2sus!4v1516937845862" style="width:100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>\r\n</div>\r\n</div>\r\n', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-01-26 03:40:08', '2018-01-26 03:40:08', '', 66, 'http://dantinjsc-old.local/?p=72', 0, 'revision', '', 0),
(73, 1, '2018-01-26 03:40:38', '2018-01-26 03:40:38', '<strong>Công ty cổ phần thương mại sản xuất HP.</strong>\r\n\r\n<strong>Địa chỉ:</strong> 92/60 Ấp 4, Xã Xuân Thới Thượng, Huyện Hóc Môn, Tp.HCM\r\n\r\n<strong>Hotline:</strong> (08) 62 59 15 75 – Fax: (08) 62 59 15 57\r\n\r\n<strong>Email:</strong> info@VinhLoiCorp.com\r\n<div class="row">\r\n<div class="col-md-5">[contact-form-7 id="65" title="Form liên hệ 1"]</div>\r\n<div class="col-md-7"><iframe style="border: 0;" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d31347.130250270224!2d106.573636!3d10.857815!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2fc9fe83ede993d!2zRMOgbiBHacOhbyBWxKluaCBM4bujaQ!5e0!3m2!1sen!2sus!4v1516937845862" width="300" height="450" frameborder="0" allowfullscreen="allowfullscreen"></iframe></div>\r\n</div>', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2018-01-26 03:40:38', '2018-01-26 03:40:38', '', 66, 'http://dantinjsc-old.local/?p=73', 0, 'revision', '', 0),
(74, 1, '2018-01-26 04:34:05', '2018-01-26 04:34:05', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2018-01-26 04:34:05', '2018-01-26 04:34:05', '', 0, 'http://dantinjsc-old.local/?p=74', 4, 'nav_menu_item', '', 0),
(75, 1, '2018-01-26 04:34:05', '2018-01-26 04:34:05', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2018-01-26 04:34:05', '2018-01-26 04:34:05', '', 0, 'http://dantinjsc-old.local/?p=75', 6, 'nav_menu_item', '', 0),
(76, 1, '2018-01-26 04:34:05', '2018-01-26 04:34:05', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2018-01-26 04:34:05', '2018-01-26 04:34:05', '', 0, 'http://dantinjsc-old.local/?p=76', 5, 'nav_menu_item', '', 0),
(77, 1, '2018-01-26 04:34:05', '2018-01-26 04:34:05', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2018-01-26 04:34:05', '2018-01-26 04:34:05', '', 0, 'http://dantinjsc-old.local/?p=77', 7, 'nav_menu_item', '', 0),
(78, 1, '2018-01-26 04:34:05', '2018-01-26 04:34:05', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2018-01-26 04:34:05', '2018-01-26 04:34:05', '', 0, 'http://dantinjsc-old.local/?p=78', 8, 'nav_menu_item', '', 0),
(79, 1, '2018-01-26 04:34:05', '2018-01-26 04:34:05', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2018-01-26 04:34:05', '2018-01-26 04:34:05', '', 0, 'http://dantinjsc-old.local/?p=79', 9, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_exclusions`
--

CREATE TABLE `wp_statistics_exclusions` (
  `ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `count` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_historical`
--

CREATE TABLE `wp_statistics_historical` (
  `ID` bigint(20) NOT NULL,
  `category` varchar(25) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `value` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_pages`
--

CREATE TABLE `wp_statistics_pages` (
  `uri` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_search`
--

CREATE TABLE `wp_statistics_search` (
  `ID` bigint(20) NOT NULL,
  `last_counter` date NOT NULL,
  `engine` varchar(64) NOT NULL,
  `host` varchar(255) DEFAULT NULL,
  `words` varchar(255) DEFAULT NULL,
  `visitor` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_useronline`
--

CREATE TABLE `wp_statistics_useronline` (
  `ID` int(11) NOT NULL,
  `ip` varchar(60) NOT NULL,
  `created` int(11) DEFAULT NULL,
  `timestamp` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `referred` text NOT NULL,
  `agent` varchar(255) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_visit`
--

CREATE TABLE `wp_statistics_visit` (
  `ID` int(11) NOT NULL,
  `last_visit` datetime NOT NULL,
  `last_counter` date NOT NULL,
  `visit` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_statistics_visit`
--

INSERT INTO `wp_statistics_visit` (`ID`, `last_visit`, `last_counter`, `visit`) VALUES
(1, '2018-01-26 04:20:24', '2018-01-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_statistics_visitor`
--

CREATE TABLE `wp_statistics_visitor` (
  `ID` int(11) NOT NULL,
  `last_counter` date NOT NULL,
  `referred` text NOT NULL,
  `agent` varchar(255) NOT NULL,
  `platform` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `UAString` varchar(255) DEFAULT NULL,
  `ip` varchar(60) NOT NULL,
  `location` varchar(10) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `honeypot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_statistics_visitor`
--

INSERT INTO `wp_statistics_visitor` (`ID`, `last_counter`, `referred`, `agent`, `platform`, `version`, `UAString`, `ip`, `location`, `hits`, `honeypot`) VALUES
(1, '2018-01-26', 'http://dantinjsc-old.local/wp-admin/plugin-install.php?s=WP+Statistics&tab=search&type=term', 'Chrome', 'Macintosh', '63.0.3239.132', NULL, '127.0.0.1', '000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'order', '0'),
(2, 17, 'display_type', ''),
(3, 17, 'thumbnail_id', '0'),
(4, 18, 'order', '0'),
(5, 18, 'display_type', ''),
(6, 18, 'thumbnail_id', '0'),
(7, 19, 'order', '0'),
(8, 19, 'display_type', ''),
(9, 19, 'thumbnail_id', '0'),
(10, 20, 'order', '0'),
(11, 20, 'display_type', ''),
(12, 20, 'thumbnail_id', '0'),
(13, 21, 'order', '0'),
(14, 21, 'display_type', ''),
(15, 21, 'thumbnail_id', '0'),
(16, 22, 'order', '0'),
(17, 22, 'display_type', ''),
(18, 22, 'thumbnail_id', '0'),
(19, 17, 'product_count_product_cat', '2'),
(20, 18, 'product_count_product_cat', '2'),
(21, 19, 'product_count_product_cat', '2'),
(22, 20, 'product_count_product_cat', '1'),
(23, 21, 'product_count_product_cat', '1'),
(24, 22, 'product_count_product_cat', '2'),
(25, 23, 'order', '0'),
(26, 23, 'display_type', ''),
(27, 23, 'thumbnail_id', '0'),
(28, 24, 'order', '0'),
(29, 24, 'display_type', ''),
(30, 24, 'thumbnail_id', '0'),
(31, 23, 'product_count_product_cat', '1'),
(32, 24, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Chưa được phân loại', 'khong-phan-loai', 0),
(2, 'Slider', 'slider', 0),
(3, 'Top Menu', 'top-menu', 0),
(4, 'simple', 'simple', 0),
(5, 'grouped', 'grouped', 0),
(6, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'exclude-from-search', 'exclude-from-search', 0),
(9, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(10, 'featured', 'featured', 0),
(11, 'outofstock', 'outofstock', 0),
(12, 'rated-1', 'rated-1', 0),
(13, 'rated-2', 'rated-2', 0),
(14, 'rated-3', 'rated-3', 0),
(15, 'rated-4', 'rated-4', 0),
(16, 'rated-5', 'rated-5', 0),
(17, 'Cùm cố định', 'cum-co-dinh', 0),
(18, 'Cùm xoay', 'cum-xoay', 0),
(19, 'Cùm nối ống', 'cum-noi-ong', 0),
(20, 'Kẹp dầm', 'kep-dam', 0),
(21, 'Kẹp ván hai tai', 'kep-van-hai-tai', 0),
(22, 'Kẹp má - Cùm đơn', 'kep-ma-cum-don', 0),
(23, 'test 1', 'test-1', 0),
(24, 'test 2', 'test-2', 0),
(25, 'Hoạt động', 'hoat-dong', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(8, 2, 0),
(11, 2, 0),
(19, 3, 0),
(21, 3, 0),
(31, 4, 0),
(31, 17, 0),
(31, 23, 0),
(31, 24, 0),
(34, 4, 0),
(34, 17, 0),
(37, 4, 0),
(37, 18, 0),
(39, 4, 0),
(39, 18, 0),
(41, 4, 0),
(41, 19, 0),
(43, 4, 0),
(43, 19, 0),
(45, 4, 0),
(45, 20, 0),
(47, 4, 0),
(47, 21, 0),
(49, 4, 0),
(49, 22, 0),
(51, 4, 0),
(51, 22, 0),
(56, 3, 0),
(58, 25, 0),
(61, 3, 0),
(62, 25, 0),
(68, 3, 0),
(74, 3, 0),
(75, 3, 0),
(76, 3, 0),
(77, 3, 0),
(78, 3, 0),
(79, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_general_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 11),
(4, 4, 'product_type', '', 0, 10),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_cat', '', 0, 2),
(18, 18, 'product_cat', '', 0, 2),
(19, 19, 'product_cat', '', 0, 2),
(20, 20, 'product_cat', '', 0, 1),
(21, 21, 'product_cat', '', 0, 1),
(22, 22, 'product_cat', '', 0, 2),
(23, 23, 'product_cat', '', 17, 1),
(24, 24, 'product_cat', '', 23, 1),
(25, 25, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"656091023ca46c65a2ee7860b8561d44157c2f5ba58cacdfa20bf7409cca5030";a:4:{s:10:"expiration";i:1518098297;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36";s:5:"login";i:1516888697;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(20, 1, 'wp_user-settings-time', '1516937447'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(23, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(24, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BddBslJ06Z/HzcVuOvX/4x5f65z5sT/', 'admin', 'admin@example.com', '', '2018-01-25 13:56:58', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8_general_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8_general_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8_general_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8_general_ci NOT NULL,
  `nonces` longtext COLLATE utf8_general_ci,
  `truncated_key` char(7) COLLATE utf8_general_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8_general_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8_general_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8_general_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(32) COLLATE utf8_general_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8_general_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `message` longtext COLLATE utf8_general_ci NOT NULL,
  `context` longtext COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8_general_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_general_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `token` text COLLATE utf8_general_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8_general_ci NOT NULL,
  `session_value` longtext COLLATE utf8_general_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:667:"a:25:{s:2:"id";i:1;s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"VN";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"VN";s:13:"is_vat_exempt";b:0;s:19:"calculated_shipping";b:0;s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:17:"admin@example.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1517069749);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8_general_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
-- Indexes for table `wp_statistics_exclusions`
--
ALTER TABLE `wp_statistics_exclusions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `date` (`date`),
  ADD KEY `reason` (`reason`);

--
-- Indexes for table `wp_statistics_historical`
--
ALTER TABLE `wp_statistics_historical`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `page_id` (`page_id`),
  ADD UNIQUE KEY `uri` (`uri`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `wp_statistics_pages`
--
ALTER TABLE `wp_statistics_pages`
  ADD UNIQUE KEY `date_2` (`date`,`uri`),
  ADD KEY `url` (`uri`),
  ADD KEY `date` (`date`),
  ADD KEY `id` (`id`),
  ADD KEY `uri` (`uri`,`count`,`id`);

--
-- Indexes for table `wp_statistics_search`
--
ALTER TABLE `wp_statistics_search`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `last_counter` (`last_counter`),
  ADD KEY `engine` (`engine`),
  ADD KEY `host` (`host`);

--
-- Indexes for table `wp_statistics_useronline`
--
ALTER TABLE `wp_statistics_useronline`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_statistics_visit`
--
ALTER TABLE `wp_statistics_visit`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `unique_date` (`last_counter`);

--
-- Indexes for table `wp_statistics_visitor`
--
ALTER TABLE `wp_statistics_visitor`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `date_ip_agent` (`last_counter`,`ip`,`agent`(75),`platform`(75),`version`(75)),
  ADD KEY `agent` (`agent`),
  ADD KEY `platform` (`platform`),
  ADD KEY `version` (`version`),
  ADD KEY `location` (`location`);

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
  ADD KEY `order_id` (`order_id`);

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
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=586;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `wp_statistics_exclusions`
--
ALTER TABLE `wp_statistics_exclusions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_statistics_historical`
--
ALTER TABLE `wp_statistics_historical`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_statistics_search`
--
ALTER TABLE `wp_statistics_search`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_statistics_useronline`
--
ALTER TABLE `wp_statistics_useronline`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_statistics_visit`
--
ALTER TABLE `wp_statistics_visit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_statistics_visitor`
--
ALTER TABLE `wp_statistics_visitor`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
