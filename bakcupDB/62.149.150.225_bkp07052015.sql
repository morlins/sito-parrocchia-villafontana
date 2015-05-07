-- phpMyAdmin SQL Dump
-- version 3.4.7.1
-- http://www.phpmyadmin.net
--
-- Host: 62.149.150.225
-- Generato il: Mag 07, 2015 alle 09:01
-- Versione del server: 5.5.41
-- Versione PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Sql803467_1`
--
CREATE DATABASE `Sql803467_1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Sql803467_1`;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_parrocchiacommentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_parrocchiacommentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_parrocchiacomments`
--

CREATE TABLE IF NOT EXISTS `wp_parrocchiacomments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `wp_parrocchiacomments`
--

INSERT INTO `wp_parrocchiacomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2015-05-01 14:16:52', '2015-05-01 14:16:52', 'Ciao, questo è un commento.\nPer cancellare un commento effettua la login e visualizza i commenti agli articoli. Lì troverai le opzioni per modificarli o cancellarli.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_parrocchialinks`
--

CREATE TABLE IF NOT EXISTS `wp_parrocchialinks` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_parrocchiaoptions`
--

CREATE TABLE IF NOT EXISTS `wp_parrocchiaoptions` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=356 ;

--
-- Dump dei dati per la tabella `wp_parrocchiaoptions`
--

INSERT INTO `wp_parrocchiaoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.parrocchia-villafontana.it', 'yes'),
(2, 'blogname', 'Parrocchia di Villa Fontana', 'yes'),
(3, 'blogdescription', '', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'gabrielemorlini@gmail.com', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'j F Y', 'yes'),
(23, 'time_format', 'G:i', 'yes'),
(24, 'links_updated_date_format', 'j F Y G:i', 'yes'),
(129, 'db_upgraded', '1', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%postname%/', 'yes'),
(31, 'gzipcompression', '0', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:2:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:24:"wordpress-seo/wp-seo.php";}', 'yes'),
(36, 'home', 'http://www.parrocchia-villafontana.it', 'yes'),
(37, 'category_base', '', 'yes'),
(38, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(39, 'advanced_edit', '0', 'yes'),
(40, 'comment_max_links', '2', 'yes'),
(41, 'gmt_offset', '', 'yes'),
(42, 'default_email_category', '1', 'yes'),
(43, 'recently_edited', 'a:5:{i:0;s:86:"/web/htdocs/www.parrocchia-villafontana.it/home/wp-content/themes/parrocchia/style.css";i:2;s:90:"/web/htdocs/www.parrocchia-villafontana.it/home/wp-content/themes/parrocchia/functions.php";i:3;s:87:"/web/htdocs/www.parrocchia-villafontana.it/home/wp-content/themes/parrocchia/single.php";i:4;s:87:"/web/htdocs/www.parrocchia-villafontana.it/home/wp-content/themes/parrocchia/header.php";i:5;s:87:"/web/htdocs/www.parrocchia-villafontana.it/home/wp-content/themes/parrocchia/footer.php";}', 'no'),
(44, 'template', 'parrocchia', 'yes'),
(45, 'stylesheet', 'parrocchia', 'yes'),
(46, 'comment_whitelist', '1', 'yes'),
(47, 'blacklist_keys', '', 'no'),
(48, 'comment_registration', '0', 'yes'),
(49, 'html_type', 'text/html', 'yes'),
(50, 'use_trackback', '0', 'yes'),
(51, 'default_role', 'subscriber', 'yes'),
(52, 'db_version', '31535', 'yes'),
(53, 'uploads_use_yearmonth_folders', '1', 'yes'),
(54, 'upload_path', '', 'yes'),
(55, 'blog_public', '1', 'yes'),
(56, 'default_link_category', '2', 'yes'),
(57, 'show_on_front', 'posts', 'yes'),
(58, 'tag_base', '', 'yes'),
(59, 'show_avatars', '1', 'yes'),
(60, 'avatar_rating', 'G', 'yes'),
(61, 'upload_url_path', '', 'yes'),
(62, 'thumbnail_size_w', '150', 'yes'),
(63, 'thumbnail_size_h', '150', 'yes'),
(64, 'thumbnail_crop', '1', 'yes'),
(65, 'medium_size_w', '300', 'yes'),
(66, 'medium_size_h', '300', 'yes'),
(67, 'avatar_default', 'mystery', 'yes'),
(68, 'large_size_w', '1024', 'yes'),
(69, 'large_size_h', '1024', 'yes'),
(70, 'image_default_link_type', 'file', 'yes'),
(71, 'image_default_size', '', 'yes'),
(72, 'image_default_align', '', 'yes'),
(73, 'close_comments_for_old_posts', '0', 'yes'),
(74, 'close_comments_days_old', '14', 'yes'),
(75, 'thread_comments', '1', 'yes'),
(76, 'thread_comments_depth', '5', 'yes'),
(77, 'page_comments', '0', 'yes'),
(78, 'comments_per_page', '50', 'yes'),
(79, 'default_comments_page', 'newest', 'yes'),
(80, 'comment_order', 'asc', 'yes'),
(81, 'sticky_posts', 'a:0:{}', 'yes'),
(82, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(83, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(84, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(85, 'uninstall_plugins', 'a:0:{}', 'no'),
(86, 'timezone_string', 'Europe/Rome', 'yes'),
(87, 'page_for_posts', '0', 'yes'),
(88, 'page_on_front', '0', 'yes'),
(89, 'default_post_format', '0', 'yes'),
(90, 'link_manager_enabled', '0', 'yes'),
(91, 'initial_db_version', '26692', 'yes'),
(92, 'wp_parrocchiauser_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:63:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:5:{i:1431008219;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1431008270;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1431010056;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1431020160;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(106, '_site_transient_timeout_browser_026d9e881f261fd68befc4f739a53319', '1431094630', 'yes'),
(187, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1430978932;s:7:"checked";a:4:{s:10:"parrocchia";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.4";s:14:"twentythirteen";s:3:"1.5";s:12:"twentytwelve";s:3:"1.7";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(132, '_transient_random_seed', '8f2d5df1303db5cfaac02812c3f48c1a', 'yes'),
(191, '_site_transient_browser_3fc6b4e5639314d139c5d624e9b51b17', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"42.0.2311.135";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(142, 'current_theme', 'Parrocchia di Villafontana', 'yes'),
(143, 'theme_mods_parrocchia', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}}', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(166, 'category_children', 'a:0:{}', 'yes'),
(354, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:25:"gabrielemorlini@gmail.com";s:7:"version";s:5:"4.2.2";s:9:"timestamp";i:1430978928;}', 'yes'),
(351, '_site_transient_timeout_theme_roots', '1430980718', 'yes'),
(352, '_site_transient_theme_roots', 'a:4:{s:10:"parrocchia";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";}', 'yes'),
(353, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:6:"locale";s:5:"it_IT";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.2.2.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.2.2-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.2.2-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.2";s:7:"version";s:5:"4.2.2";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1430978926;s:15:"version_checked";s:5:"4.2.2";s:12:"translations";a:0:{}}', 'yes'),
(107, '_site_transient_browser_026d9e881f261fd68befc4f739a53319', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"42.0.2311.90";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(128, 'WPLANG', 'it_IT', 'yes'),
(281, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1430869937', 'no'),
(284, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1430869939', 'no'),
(226, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(227, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(228, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(229, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(279, '_site_transient_timeout_browser_9d08bde512457e99780f33c647af54b4', '1431431533', 'yes'),
(280, '_site_transient_browser_9d08bde512457e99780f33c647af54b4', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"42.0.2311.90";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(126, '_transient_twentyfourteen_category_count', '1', 'yes'),
(188, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1430978932;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.1.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.1.2.zip";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":6:{s:2:"id";s:4:"5899";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"2.1.1";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.2.1.1.zip";}}}', 'yes'),
(141, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1430490219;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(161, 'rewrite_rules', 'a:68:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(176, '_site_transient_browser_d7bfebab08f0e875ec525b36fe2598e7', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"42.0.2311.90";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(152, 'recently_activated', 'a:0:{}', 'yes'),
(153, 'wpcf7', 'a:1:{s:7:"version";s:5:"4.1.2";}', 'yes'),
(154, 'wpseo', 'a:24:{s:14:"blocking_files";a:0:{}s:26:"ignore_blog_public_warning";b:0;s:31:"ignore_meta_description_warning";b:0;s:20:"ignore_page_comments";b:0;s:16:"ignore_permalink";b:0;s:11:"ignore_tour";b:1;s:15:"ms_defaults_set";b:0;s:23:"theme_description_found";s:0:"";s:21:"theme_has_description";b:0;s:19:"tracking_popup_done";b:1;s:7:"version";s:5:"2.1.1";s:10:"seen_about";b:1;s:11:"alexaverify";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";s:14:"yoast_tracking";b:0;}', 'yes'),
(155, 'wpseo_permalinks', 'a:13:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:14:"hide-feedlinks";b:0;s:12:"hide-rsdlink";b:0;s:14:"hide-shortlink";b:0;s:16:"hide-wlwmanifest";b:0;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(156, 'wpseo_titles', 'a:54:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:5:"noodp";b:0;s:6:"noydir";b:0;s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:40:"%%name%%, Autore a %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:60:"Si è cercato %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:39:"Pagina non trovata %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:52:"%%term_title%% Archivi %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:52:"%%term_title%% Archivi %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:52:"%%term_title%% Archivi %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(157, 'wpseo_social', 'a:21:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"6cd426532c71024cffcc38c305d95d53";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:10:"googleplus";b:0;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:7:"summary";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(158, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:63:"L''articolo %%POSTLINK%% sembra essere il primo su %%BLOGLINK%%.";}', 'yes'),
(159, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:30:"Errore 404: Pagina non trovata";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:11:"Archivi per";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:11:"Hai cercato";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
(160, 'wpseo_xml', 'a:15:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(175, '_site_transient_timeout_browser_d7bfebab08f0e875ec525b36fe2598e7', '1431099534', 'yes'),
(190, '_site_transient_timeout_browser_3fc6b4e5639314d139c5d624e9b51b17', '1431266113', 'yes');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_parrocchiapostmeta`
--

CREATE TABLE IF NOT EXISTS `wp_parrocchiapostmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=129 ;

--
-- Dump dei dati per la tabella `wp_parrocchiapostmeta`
--

INSERT INTO `wp_parrocchiapostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(78, 29, '_edit_last', '2'),
(77, 29, '_edit_lock', '1430670144:2'),
(28, 11, '_menu_item_target', ''),
(27, 11, '_menu_item_object', 'category'),
(26, 11, '_menu_item_object_id', '4'),
(25, 11, '_menu_item_menu_item_parent', '0'),
(24, 11, '_menu_item_type', 'taxonomy'),
(22, 2, '_edit_lock', '1430669882:2'),
(23, 2, '_edit_last', '2'),
(13, 6, '_menu_item_type', 'post_type'),
(14, 6, '_menu_item_menu_item_parent', '0'),
(15, 6, '_menu_item_object_id', '2'),
(16, 6, '_menu_item_object', 'page'),
(17, 6, '_menu_item_target', ''),
(18, 6, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(19, 6, '_menu_item_xfn', ''),
(20, 6, '_menu_item_url', ''),
(29, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(30, 11, '_menu_item_xfn', ''),
(31, 11, '_menu_item_url', ''),
(42, 13, '_form', '<p>Nome (richiesto)<br />\n    [text* your-name] </p>\n\n<p>E-mail (richiesta)<br />\n    [email* your-email] </p>\n\n<p>Oggetto<br />\n    [text your-subject] </p>\n\n<p>Messaggio<br />\n    [textarea your-message] </p>\n\n<p>[submit "Invia"]</p>'),
(33, 12, '_menu_item_type', 'taxonomy'),
(34, 12, '_menu_item_menu_item_parent', '0'),
(35, 12, '_menu_item_object_id', '3'),
(36, 12, '_menu_item_object', 'category'),
(37, 12, '_menu_item_target', ''),
(38, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(39, 12, '_menu_item_xfn', ''),
(40, 12, '_menu_item_url', ''),
(43, 13, '_mail', 'a:8:{s:7:"subject";s:47:"Nuova richiesta informazioni da sito parrocchia";s:6:"sender";s:50:"[your-name] <wordpress@parrocchia-villafontana.it>";s:4:"body";s:207:"Da: [your-name] <[your-email]>\nOggetto: [your-subject]\n\nCorpo del messaggio:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Parrocchia di Villa Fontana (http://www.parrocchia-villafontana.it)";s:9:"recipient";s:31:"info@parrocchia-villafontana.it";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(44, 13, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:25:"Nuova richiesta inoltrata";s:6:"sender";s:66:"Parrocchia di Villa Fontana <wordpress@parrocchia-villafontana.it>";s:4:"body";s:182:"Corpo del messaggio:\nLa tua richiesta è stata inoltrata correttamente.\nQuesto è il messaggio che hai inviato:\n[your-message]\n\nTi risponderemo nel più breve tempo possibile.\nGrazie";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:41:"Reply-To: info@parrocchia-villafontana.it";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(45, 13, '_messages', 'a:23:{s:12:"mail_sent_ok";s:55:"Il tuo messaggio è stato inviato con successo. Grazie.";s:12:"mail_sent_ng";s:92:"Si è verificato un errore durante l''invio del tuo messaggio. Riprova in un secondo momento.";s:16:"validation_error";s:104:"Si è verificato un errore di convalida. Controlla i campi obbligatori ed invia nuovamente il messaggio.";s:4:"spam";s:151:"Si è verificato un errore durante l''invio del tuo messaggio. Riprova in un secondo momento oppure contatta in un altro modo l''amministratore del sito.";s:12:"accept_terms";s:37:"Accetta i termini prima di procedere.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:17:"captcha_not_match";s:41:"Il codice che hai inserito non è valido.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:13:"invalid_email";s:42:"Pare che l''indirizzo email non sia valido.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";s:23:"quiz_answer_not_correct";s:45:"La risposta che hai inserito non è corretta.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:59:"Si è verificato un errore durante il caricamento del file.";s:24:"upload_file_type_invalid";s:36:"Questo tipo di file non è permesso.";s:21:"upload_file_too_large";s:29:"Questo file è troppo grande.";s:23:"upload_failed_php_error";s:59:"Si è verificato un errore durante il caricamento del file.";}'),
(46, 13, '_additional_settings', ''),
(47, 13, '_locale', 'it_IT'),
(64, 19, '_wp_attached_file', '2015/05/invia-richiesta-parrocchia-villafontana.jpg'),
(48, 1, '_wp_trash_meta_status', 'publish'),
(49, 1, '_wp_trash_meta_time', '1430491650'),
(50, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(51, 16, '_edit_last', '1'),
(52, 16, '_edit_lock', '1430663051:1'),
(55, 18, '_menu_item_type', 'taxonomy'),
(56, 18, '_menu_item_menu_item_parent', '0'),
(57, 18, '_menu_item_object_id', '5'),
(58, 18, '_menu_item_object', 'category'),
(59, 18, '_menu_item_target', ''),
(60, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(61, 18, '_menu_item_xfn', ''),
(62, 18, '_menu_item_url', ''),
(63, 18, '_menu_item_orphaned', '1430491915'),
(65, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:90;s:6:"height";i:29;s:4:"file";s:51:"2015/05/invia-richiesta-parrocchia-villafontana.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(66, 20, '_wp_attached_file', '2015/05/bollettini-parrocchiali.png'),
(67, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:20;s:6:"height";i:27;s:4:"file";s:35:"2015/05/bollettini-parrocchiali.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(68, 21, '_wp_attached_file', '2015/05/contatti-parrocchia.png'),
(69, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:21;s:6:"height";i:27;s:4:"file";s:31:"2015/05/contatti-parrocchia.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(70, 22, '_wp_attached_file', '2015/05/notizie-parrocchia.png'),
(71, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:18;s:6:"height";i:27;s:4:"file";s:30:"2015/05/notizie-parrocchia.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(72, 25, '_edit_lock', '1430670002:2'),
(73, 25, '_edit_last', '2'),
(81, 31, '_wp_attached_file', '2015/05/15.04-Bollettino.pdf'),
(85, 37, '_edit_lock', '1430666053:1'),
(86, 37, '_edit_last', '1'),
(87, 38, '_wp_attached_file', '2015/05/15.03-Bollettino.pdf'),
(88, 16, '_wp_trash_meta_status', 'publish'),
(89, 16, '_wp_trash_meta_time', '1430667019'),
(94, 37, '_wp_trash_meta_status', 'draft'),
(95, 37, '_wp_trash_meta_time', '1430667197'),
(101, 2, '_yoast_wpseo_focuskw', 'contatta la parrocchia'),
(102, 2, '_yoast_wpseo_linkdex', '54'),
(103, 2, '_yoast_wpseo_title', 'Contatta la Parrocchia di Villa Fontana'),
(104, 2, '_yoast_wpseo_metadesc', 'Compila il form e contatta la parrocchia di Villa Fontana. Ti risponderemo al più presto.'),
(109, 25, '_yoast_wpseo_linkdex', '68'),
(106, 25, '_yoast_wpseo_focuskw', 'nuovo parroco'),
(107, 25, '_yoast_wpseo_title', 'In attesa di un nuovo parroco - Parrocchia di Villa Fontana'),
(108, 25, '_yoast_wpseo_metadesc', 'In attesa di un nuovo parroco, la parrocchia di Villa Fontana è affidata a Don Marcello Galletti, parroco di Medicina. Tutte le informazioni sui cambiamenti'),
(114, 29, '_yoast_wpseo_linkdex', '69'),
(111, 29, '_yoast_wpseo_focuskw', 'bollettino maggio - giugno 2015'),
(112, 29, '_yoast_wpseo_title', 'Bollettino maggio - giugno 2015 | Parrocchia di Villa Fontana'),
(113, 29, '_yoast_wpseo_metadesc', 'In questa sezione troverete tutte le notizie inserite all''interno del bollettino di maggio - giugno 2015, è possibile inoltre scaricare la versione PDF'),
(117, 22, '_wp_attachment_image_alt', 'notizie parrocchia villa fontana'),
(116, 29, '_wp_old_slug', 'calendario-liturgico-pastorale-maggio-giugno-2015'),
(118, 21, '_wp_attachment_image_alt', 'contatti parrocchia villa fontana'),
(119, 20, '_wp_attachment_image_alt', 'bollettini parrocchiali villa fontana'),
(120, 19, '_wp_attachment_image_alt', 'invia richiesta contatti parrocchia villa fontana'),
(121, 50, '_edit_lock', '1430827494:1'),
(122, 50, '_edit_last', '1'),
(127, 50, '_yoast_wpseo_linkdex', '62'),
(124, 50, '_yoast_wpseo_focuskw', 'celebrazioni liturgiche'),
(125, 50, '_yoast_wpseo_title', 'celebrazioni liturgiche della settimana'),
(126, 50, '_yoast_wpseo_metadesc', 'Agenda settimanale celebrazioni liturgiche con messe e confessioni');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_parrocchiaposts`
--

CREATE TABLE IF NOT EXISTS `wp_parrocchiaposts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_name` (`post_name`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dump dei dati per la tabella `wp_parrocchiaposts`
--

INSERT INTO `wp_parrocchiaposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-05-01 14:16:52', '2015-05-01 14:16:52', 'Benvenuto in WordPress. Questo è il tuo primo articolo. Modificalo o cancellalo e inizia a creare il tuo blog!', 'Ciao mondo!!', '', 'trash', 'open', 'open', '', 'ciao-mondo', '', '', '2015-05-01 16:47:30', '2015-05-01 14:47:30', '', 0, 'http://www.parrocchia-villafontana.it/?p=1', 0, 'post', '', 1),
(2, 1, '2015-05-01 14:16:52', '2015-05-01 14:16:52', 'Se desideri avere qualche informazione, questo è il posto giusto!\r\nCompila i seguenti campi e contatta la Parrocchia, ti risponderemo al più presto.\r\n\r\n[contact-form-7 id="13" title="Modulo di contatto"]', 'Contatta la parrocchia', '', 'publish', 'open', 'open', '', 'contatta-la-parrocchia', '', '', '2015-05-03 18:19:46', '2015-05-03 16:19:46', '', 0, 'http://www.parrocchia-villafontana.it/?page_id=2', 0, 'page', '', 0),
(10, 1, '2015-05-01 16:35:35', '2015-05-01 14:35:35', 'Pellentesque dignissim tellus ut arcu lacinia, sollicitudin tincidunt metus bibendum. Nunc vel erat facilisis, interdum mi blandit, molestie velit. Cras egestas maximus diam id rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.\r\n\r\n', 'Contatti', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-05-01 16:35:35', '2015-05-01 14:35:35', '', 2, 'http://www.parrocchia-villafontana.it/?p=10', 0, 'revision', '', 0),
(11, 1, '2015-05-01 16:36:53', '2015-05-01 14:36:53', '', 'bollettini parrocchiali', '', 'publish', 'open', 'open', '', 'bollettini-parrocchiali', '', '', '2015-05-01 16:36:53', '2015-05-01 14:36:53', '', 0, 'http://www.parrocchia-villafontana.it/?p=11', 2, 'nav_menu_item', '', 0),
(9, 1, '2015-05-01 16:33:01', '2015-05-01 14:33:01', 'Pellentesque dignissim tellus ut arcu lacinia, sollicitudin tincidunt metus bibendum. Nunc vel erat facilisis, interdum mi blandit, molestie velit. Cras egestas maximus diam id rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.\r\n\r\nAenean in nibh sed mauris placerat fermentum dapibus sit amet augue. Aenean ultrices hendrerit mattis. Morbi et hendrerit elit, ut gravida tortor. Ut hendrerit, elit nec mollis ullamcorper, orci diam tempus leo, sit amet faucibus turpis lectus eget dolor.\r\n\r\nInteger rhoncus sapien et mi laoreet, id cursus arcu scelerisque. Aenean volutpat sapien vitae arcu fermentum, sollicitudin malesuada quam congue. Donec sed pulvinar libero.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-05-01 16:33:01', '2015-05-01 14:33:01', '', 2, 'http://www.parrocchia-villafontana.it/?p=9', 0, 'revision', '', 0),
(8, 1, '2015-05-01 16:32:09', '2015-05-01 14:32:09', '<h2>Nullam libero est, porta id pretium et, efficitur tempus magna.</h2>\r\nPellentesque dignissim tellus ut arcu lacinia, sollicitudin tincidunt metus bibendum. Nunc vel erat facilisis, interdum mi blandit, molestie velit. Cras egestas maximus diam id rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.\r\n\r\nAenean in nibh sed mauris placerat fermentum dapibus sit amet augue. Aenean ultrices hendrerit mattis. Morbi et hendrerit elit, ut gravida tortor. Ut hendrerit, elit nec mollis ullamcorper, orci diam tempus leo, sit amet faucibus turpis lectus eget dolor.\r\n\r\nInteger rhoncus sapien et mi laoreet, id cursus arcu scelerisque. Aenean volutpat sapien vitae arcu fermentum, sollicitudin malesuada quam congue. Donec sed pulvinar libero.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-05-01 16:32:09', '2015-05-01 14:32:09', '', 2, 'http://www.parrocchia-villafontana.it/?p=8', 0, 'revision', '', 0),
(3, 1, '2015-05-01 16:17:11', '0000-00-00 00:00:00', '', 'Bozza automatica', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-01 16:17:11', '0000-00-00 00:00:00', '', 0, 'http://www.parrocchia-villafontana.it/?p=3', 0, 'post', '', 0),
(29, 1, '2015-05-03 16:24:06', '2015-05-03 14:24:06', 'In breve gli appuntamenti più importanti della parrocchia:\r\n<strong>Domenica 3 maggio:</strong> Ore 9,30 celebrazione del Sacramento della Cresima nella Parrocchia di Ganzanigo. Riceveranno il Sacramento i nostri ragazzi: Accomando Gemma -Alberoni Alessandro - Buratti Alessandro - Cavina Mattia - Corelli Mattia - Gabaldo Daniele - Gabaldo Irene - Gardenghi Gabriele - Modelli Gianluca - Leggio Annamaria - Longhi Filippo - Orsi Lorenzo - Quartieri Tommaso - Rizzati Simone - Rossi Riccardo - Trebbi Simone - Venturini Luciano - Zucchini Tommaso\r\n\r\n<strong>Domenica 10 maggio:</strong> alla S. Messa delle ore 9 accoglienza nella comunità parrocchiale dei nuovi cresimati.\r\n\r\n<strong>Giovedì 14, venerdì 15, sabato 16 maggio:</strong> Rogazioni. Ore 20.30 S. Messa seguita dalla processione tradizionale.\r\n\r\n<strong>Domenica 17 maggio:</strong>. Ascensione del Signore Ore 9 S. Messa di Prime Comunioni. Parteciperanno per la 1ª volta alla mensa del Signore: Busi Kevin - Fabbri Diego - Fabbri Riccardo Stefano - Filippini Lucia - Forlani Giordano - Iameo Antonio - Marchio Lorenzo - Padovano Asia - Presti Zoe - Quartieri Elena - Quartieri Gabriele - Ruggiero Giuseppe - Spiga Ada Maria - Tondo Mattia - Trebbi Rachele - Venturini Benedetta. Ore 18 processione per le vie del paese e benedizione con l’immagine della Madonna.\r\n\r\n<strong>Domenica 24 maggio:</strong>. Solennità di Pentecoste e conclusione del tempo di Pasqua.\r\n\r\n<strong>Giovedì 4 giugno:</strong> festa del Corpus Domini: ore 21 S. Messa e processione. La zona interessata è Dalla Valle (lato dx) Filippini (lato dx)- Fiorentina - Vigo\r\n\r\n<strong>Venerdì 19, sabato 20 e domenica 21 giugno:</strong> Festa delle Spighe.\r\n\r\n<em>Ringrazio le famiglie che mi hanno accolto con tanta cordialità durante le benedizioni pasquali e auguro loro ancora ogni bene da parte del Signore. Una preghiera anche per quelle che hanno opposto un rifiuto o che non hanno manifestato alcun interesse.</em>\r\n\r\n<em>Don Giancarlo</em>\r\n\r\nScarica il pdf completo del bollettino <strong><a href="http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/15.04-Bollettino.pdf">qui</a></strong>.', 'Bollettino maggio - giugno 2015', '', 'publish', 'open', 'open', '', 'bollettino-maggio-giugno-2015', '', '', '2015-05-03 18:24:32', '2015-05-03 16:24:32', '', 0, 'http://www.parrocchia-villafontana.it/?p=29', 0, 'post', '', 0),
(6, 1, '2015-05-01 16:28:27', '2015-05-01 14:28:27', '', 'contatti', '', 'publish', 'open', 'open', '', '6', '', '', '2015-05-01 16:36:53', '2015-05-01 14:36:53', '', 0, 'http://www.parrocchia-villafontana.it/?p=6', 3, 'nav_menu_item', '', 0),
(7, 1, '2015-05-01 16:31:57', '2015-05-01 14:31:57', '<h2>Nullam libero est, porta id pretium et, efficitur tempus magna.</hPellentesque dignissim tellus ut arcu lacinia, sollicitudin tincidunt metus bibendum. Nunc vel erat facilisis, interdum mi blandit, molestie velit. Cras egestas maximus diam id rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean in nibh sed mauris placerat fermentum dapibus sit amet augue. Aenean ultrices hendrerit mattis. Morbi et hendrerit elit, ut gravida tortor. Ut hendrerit, elit nec mollis ullamcorper, orci diam tempus leo, sit amet faucibus turpis lectus eget dolor. Integer rhoncus sapien et mi laoreet, id cursus arcu scelerisque. Aenean volutpat sapien vitae arcu fermentum, sollicitudin malesuada quam congue. Donec sed pulvinar libero.\n\n&nbsp;', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '', 'inherit', 'open', 'open', '', '2-autosave-v1', '', '', '2015-05-01 16:31:57', '2015-05-01 14:31:57', '', 2, 'http://www.parrocchia-villafontana.it/?p=7', 0, 'revision', '', 0),
(12, 1, '2015-05-01 16:36:53', '2015-05-01 14:36:53', '', 'notizie', '', 'publish', 'open', 'open', '', 'notizie', '', '', '2015-05-01 16:36:53', '2015-05-01 14:36:53', '', 0, 'http://www.parrocchia-villafontana.it/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2015-05-01 16:40:26', '2015-05-01 14:40:26', '<p>Nome (richiesto)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>E-mail (richiesta)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Oggetto<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Messaggio<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit "Invia"]</p>\nNuova richiesta informazioni da sito parrocchia\n[your-name] <wordpress@parrocchia-villafontana.it>\nDa: [your-name] <[your-email]>\r\nOggetto: [your-subject]\r\n\r\nCorpo del messaggio:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Parrocchia di Villa Fontana (http://www.parrocchia-villafontana.it)\ninfo@parrocchia-villafontana.it\nReply-To: [your-email]\n\n\n\n\nNuova richiesta inoltrata\nParrocchia di Villa Fontana <wordpress@parrocchia-villafontana.it>\nCorpo del messaggio:\r\nLa tua richiesta è stata inoltrata correttamente.\r\nQuesto è il messaggio che hai inviato:\r\n[your-message]\r\n\r\nTi risponderemo nel più breve tempo possibile.\r\nGrazie\n[your-email]\nReply-To: info@parrocchia-villafontana.it\n\n\n\nIl tuo messaggio è stato inviato con successo. Grazie.\nSi è verificato un errore durante l''invio del tuo messaggio. Riprova in un secondo momento.\nSi è verificato un errore di convalida. Controlla i campi obbligatori ed invia nuovamente il messaggio.\nSi è verificato un errore durante l''invio del tuo messaggio. Riprova in un secondo momento oppure contatta in un altro modo l''amministratore del sito.\nAccetta i termini prima di procedere.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nIl codice che hai inserito non è valido.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nPare che l''indirizzo email non sia valido.\nURL seems invalid.\nTelephone number seems invalid.\nLa risposta che hai inserito non è corretta.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nSi è verificato un errore durante il caricamento del file.\nQuesto tipo di file non è permesso.\nQuesto file è troppo grande.\nSi è verificato un errore durante il caricamento del file.', 'Modulo di contatto', '', 'publish', 'open', 'open', '', 'modulo-di-contatto-1', '', '', '2015-05-01 17:08:17', '2015-05-01 15:08:17', '', 0, 'http://www.parrocchia-villafontana.it/?post_type=wpcf7_contact_form&#038;p=13', 0, 'wpcf7_contact_form', '', 0),
(23, 1, '2015-05-01 17:40:00', '2015-05-01 15:40:00', 'Se desideri avere qualche informazione, questo è il posto giusto!\r\n\r\n[contact-form-7 id="13" title="Modulo di contatto"]', 'Contatti', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-05-01 17:40:00', '2015-05-01 15:40:00', '', 2, 'http://www.parrocchia-villafontana.it/2-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2015-05-01 16:42:34', '2015-05-01 14:42:34', 'Pellentesque dignissim tellus ut arcu lacinia, sollicitudin tincidunt metus bibendum. Nunc vel erat facilisis, interdum mi blandit, molestie velit. Cras egestas maximus diam id rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.\r\n\r\n[contact-form-7 id="13" title="Modulo di contatto"]', 'Contatti', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-05-01 16:42:34', '2015-05-01 14:42:34', '', 2, 'http://www.parrocchia-villafontana.it/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2015-05-01 16:47:30', '2015-05-01 14:47:30', 'Benvenuto in WordPress. Questo è il tuo primo articolo. Modificalo o cancellalo e inizia a creare il tuo blog!', 'Ciao mondo!!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-05-01 16:47:30', '2015-05-01 14:47:30', '', 1, 'http://www.parrocchia-villafontana.it/1-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2015-03-14 16:47:36', '2015-03-14 15:47:36', 'Nell’Avvento scorso era stata inviata a tutti i vescovi del mondo un questionario da sottoporre all’esame delle diverse aggregazioni ecclesiali sulle problematiche delle famiglie d’oggi. L’accoglienza era stata positiva ed erano arrivate a Roma considerazioni molto meditate e responsabili. Il Papa aveva espresso il suo apprezzamento impegnandosi a far sì che questo materiale fosse oggetto di studio e di orientamenti per il “sinodo sull’evangelizzazione e la famiglia” che si terrà in Vaticano nel prossimo autunno.\r\nIn questi giorni il Papa si è rivolto alle famiglie indirizzando loro una breve ma coinvolgente lettera. La riproduciamo nei suoi tratti essenziali quasi “lieta notizia” di questa Pasqua.\r\n\r\n<em>Care famiglie,</em>\r\n<em> mi presento alla soglia della vostra casa per parlarvi di un evento che, come è noto, si svolgerà nel prossimo mese di ottobre in Vaticano. Si tratta dell’Assemblea generale straordinaria del Sinodo dei Vescovi, convocata per discutere sul tema “Le sfide pastorali sulla famiglia nel contesto dell’evangelizzazione”. Oggi, infatti, la Chiesa è chiamata ad annunciare il Vangelo affrontando anche le nuove urgenze pastorali che riguardano la famiglia.</em>\r\n<em> Questo importante appuntamento coinvolge tutto il Popolo di Dio, Vescovi, sacerdoti, persone consacrate e fedeli laici delle Chiese particolari del mondo intero, che partecipano attivamente alla sua preparazione con suggerimenti concreti e con l’apporto indispensabile della preghiera. Il sostegno della preghiera è quanto mai necessario e significativo specialmente da parte vostra, care famiglie. Infatti, questa Assemblea sinodale è dedicata in modo speciale a voi, alla vostra vocazione e missione nella Chiesa e nella società, ai problemi del matrimonio, della vita familiare, dell’educazione dei figli, e al ruolo delle famiglie nella missione della Chiesa. Pertanto vi chiedo di pregare intensamente lo Spirito Santo, affinché illumini i Padri sinodali e li guidi nel loro impegnativo compito.</em>\r\n<em> Vi scrivo questa lettera nel giorno in cui si celebra la festa della Presentazione di Gesù al tempio. L’evangelista Luca narra che la Madonna e san Giuseppe, secondo la Legge di Mosè, portarono il Bambino al tempio per offrirlo al Signore, e che due anziani, Simeone e Anna, mossi dallo Spirito Santo, andarono loro incontro e riconobbero in Gesù il Messia. Simeone lo prese tra le braccia e ringraziò Dio perché finalmente aveva “visto” la salvezza; Anna, malgrado l’età avanzata, trovò nuovo vigore e si mise a parlare a tutti del Bambino. È un’immagine bella: due giovani genitori e due persone anziane, radunati da Gesù. Davvero Gesù fa incontrare e unisce le generazioni! Egli è la fonte inesauribile di quell’amore che vince ogni chiusura, ogni solitudine, ogni tristezza. Nel vostro cammino familiare, voi condividete tanti momenti belli: i pasti, il riposo, il lavoro in casa, il divertimento, la preghiera, i viaggi e i pellegrinaggi, le azioni di solidarietà… Tuttavia, se manca l’amore manca la gioia.</em>\r\n<em> Così Papa Francesco si rivolge alle famiglie, nella consapevolezza delle difficoltà che incontrano soprattutto in questi tempi, ma anche stimolandole ad apprezzarne e viverne la gioia che nasce dall’amore.</em>\r\n<em> Già Paolo VI parlando dell’amore tra sposi scriveva:</em>\r\n<em> È amore totale, una forma tutta speciale di amicizia personale, in cui gli sposi generosamente condividono ogni cosa senza indebite riserve o calcoli egoistici. Chi ama davvero il proprio consorte non lo ama soltanto per quanto riceve da lui, ma per se stesso, lieto di poterlo arricchire del dono di sé.</em>\r\n<em> È ancora amore fedele ed esclusivo fino alla morte. Così infatti lo concepiscono lo sposo e la sposa nel giorno in cui assumono liberamente e in piena consapevolezza l’impegno del vincolo matrimoniale. Fedeltà che può talvolta essere difficile, ma che sia sempre possibile, e sempre nobile e meritoria, nessuno lo può negare e che è altresì fonte di felicità profonda e duratura.</em>\r\n<em> È infine amore fecondo, che non si esaurisce nella comunione dei coniugi, ma è destinato a continuarsi, suscitando nuove vite. Il matrimonio e l’amore coniugale sono ordinati per loro natura alla procreazione ed educazione della prole. I figli infatti sono il preziosissimo dono del matrimonio e contribuiscono immensamente al bene degli stessi genitori.</em>\r\n<em> L’amore coniugale rivela la sua vera natura e nobiltà quando è considerato nella sua sorgente suprema, Dio, da cui ogni paternità, in cielo e in terra, trae il suo nome. Il matrimonio non è quindi effetto del caso o prodotto della evoluzione di inconsce forze naturali: è una sapiente istituzione del Creatore per realizzare nell’umanità il suo disegno di amore. Per mezzo della reciproca donazione personale, loro propria ed esclusiva, gli sposi tendono alla comunione dei loro esseri in vista di un continuo perfezionamento personale per collaborare con Dio alla generazione e alla educazione di nuove vite. (Humanae vitae 8-9)</em>\r\n<em> Questi sono i principi e le convinzioni che orientano tutto quello che la Chiesa e la carità cristiana dice quando parla dell’amore e della famiglia. L’amore e la famiglia sono beni per la Chiesa, ma anche per la società. Sono beni fragili che vanno custoditi e trasmessi attraverso un faticoso cammino educativo che impegna ogni persona e istituzione che voglia preparare un domani più vivibile e più umano.</em>\r\n<em> Educare e guidare la propria affettività e sessualità, educare al rispetto dell’altro e dell’altra e all’accettazione della sua libertà sono le premesse per poter sperare in un domani più sereno e la nascita di vere famiglie, capaci di affrontare le difficoltà della vita e di godere dei veri valori e delle vere ricchezze.</em>', 'Una lettera del Papa alle famiglie', '', 'trash', 'open', 'open', '', 'una-lettera-del-papa-alle-famiglie', '', '', '2015-05-03 17:30:19', '2015-05-03 15:30:19', '', 0, 'http://www.parrocchia-villafontana.it/?p=16', 0, 'post', '', 0),
(17, 1, '2015-05-01 16:48:51', '2015-05-01 14:48:51', 'Nell’Avvento scorso era stata inviata a tutti i vescovi del mondo un questionario da sottoporre all’esame delle diverse aggregazioni ecclesiali sulle problematiche delle famiglie d’oggi. L’accoglienza era stata positiva ed erano arrivate a Roma considerazioni molto meditate e responsabili. Il Papa aveva espresso il suo apprezzamento impegnandosi a far sì che questo materiale fosse oggetto di studio e di orientamenti per il “sinodo sull’evangelizzazione e la famiglia” che si terrà in Vaticano nel prossimo autunno.\r\nIn questi giorni il Papa si è rivolto alle famiglie indirizzando loro una breve ma coinvolgente lettera. La riproduciamo nei suoi tratti essenziali quasi “lieta notizia” di questa Pasqua.\r\n\r\n<em>Care famiglie,</em>\r\n<em> mi presento alla soglia della vostra casa per parlarvi di un evento che, come è noto, si svolgerà nel prossimo mese di ottobre in Vaticano. Si tratta dell’Assemblea generale straordinaria del Sinodo dei Vescovi, convocata per discutere sul tema “Le sfide pastorali sulla famiglia nel contesto dell’evangelizzazione”. Oggi, infatti, la Chiesa è chiamata ad annunciare il Vangelo affrontando anche le nuove urgenze pastorali che riguardano la famiglia.</em>\r\n<em> Questo importante appuntamento coinvolge tutto il Popolo di Dio, Vescovi, sacerdoti, persone consacrate e fedeli laici delle Chiese particolari del mondo intero, che partecipano attivamente alla sua preparazione con suggerimenti concreti e con l’apporto indispensabile della preghiera. Il sostegno della preghiera è quanto mai necessario e significativo specialmente da parte vostra, care famiglie. Infatti, questa Assemblea sinodale è dedicata in modo speciale a voi, alla vostra vocazione e missione nella Chiesa e nella società, ai problemi del matrimonio, della vita familiare, dell’educazione dei figli, e al ruolo delle famiglie nella missione della Chiesa. Pertanto vi chiedo di pregare intensamente lo Spirito Santo, affinché illumini i Padri sinodali e li guidi nel loro impegnativo compito.</em>\r\n<em> Vi scrivo questa lettera nel giorno in cui si celebra la festa della Presentazione di Gesù al tempio. L’evangelista Luca narra che la Madonna e san Giuseppe, secondo la Legge di Mosè, portarono il Bambino al tempio per offrirlo al Signore, e che due anziani, Simeone e Anna, mossi dallo Spirito Santo, andarono loro incontro e riconobbero in Gesù il Messia. Simeone lo prese tra le braccia e ringraziò Dio perché finalmente aveva “visto” la salvezza; Anna, malgrado l’età avanzata, trovò nuovo vigore e si mise a parlare a tutti del Bambino. È un’immagine bella: due giovani genitori e due persone anziane, radunati da Gesù. Davvero Gesù fa incontrare e unisce le generazioni! Egli è la fonte inesauribile di quell’amore che vince ogni chiusura, ogni solitudine, ogni tristezza. Nel vostro cammino familiare, voi condividete tanti momenti belli: i pasti, il riposo, il lavoro in casa, il divertimento, la preghiera, i viaggi e i pellegrinaggi, le azioni di solidarietà… Tuttavia, se manca l’amore manca la gioia.</em>\r\n<em> Così Papa Francesco si rivolge alle famiglie, nella consapevolezza delle difficoltà che incontrano soprattutto in questi tempi, ma anche stimolandole ad apprezzarne e viverne la gioia che nasce dall’amore.</em>\r\n<em> Già Paolo VI parlando dell’amore tra sposi scriveva:</em>\r\n<em> È amore totale, una forma tutta speciale di amicizia personale, in cui gli sposi generosamente condividono ogni cosa senza indebite riserve o calcoli egoistici. Chi ama davvero il proprio consorte non lo ama soltanto per quanto riceve da lui, ma per se stesso, lieto di poterlo arricchire del dono di sé.</em>\r\n<em> È ancora amore fedele ed esclusivo fino alla morte. Così infatti lo concepiscono lo sposo e la sposa nel giorno in cui assumono liberamente e in piena consapevolezza l’impegno del vincolo matrimoniale. Fedeltà che può talvolta essere difficile, ma che sia sempre possibile, e sempre nobile e meritoria, nessuno lo può negare e che è altresì fonte di felicità profonda e duratura.</em>\r\n<em> È infine amore fecondo, che non si esaurisce nella comunione dei coniugi, ma è destinato a continuarsi, suscitando nuove vite. Il matrimonio e l’amore coniugale sono ordinati per loro natura alla procreazione ed educazione della prole. I figli infatti sono il preziosissimo dono del matrimonio e contribuiscono immensamente al bene degli stessi genitori.</em>\r\n<em> L’amore coniugale rivela la sua vera natura e nobiltà quando è considerato nella sua sorgente suprema, Dio, da cui ogni paternità, in cielo e in terra, trae il suo nome. Il matrimonio non è quindi effetto del caso o prodotto della evoluzione di inconsce forze naturali: è una sapiente istituzione del Creatore per realizzare nell’umanità il suo disegno di amore. Per mezzo della reciproca donazione personale, loro propria ed esclusiva, gli sposi tendono alla comunione dei loro esseri in vista di un continuo perfezionamento personale per collaborare con Dio alla generazione e alla educazione di nuove vite. (Humanae vitae 8-9)</em>\r\n<em> Questi sono i principi e le convinzioni che orientano tutto quello che la Chiesa e la carità cristiana dice quando parla dell’amore e della famiglia. L’amore e la famiglia sono beni per la Chiesa, ma anche per la società. Sono beni fragili che vanno custoditi e trasmessi attraverso un faticoso cammino educativo che impegna ogni persona e istituzione che voglia preparare un domani più vivibile e più umano.</em>\r\n<em> Educare e guidare la propria affettività e sessualità, educare al rispetto dell’altro e dell’altra e all’accettazione della sua libertà sono le premesse per poter sperare in un domani più sereno e la nascita di vere famiglie, capaci di affrontare le difficoltà della vita e di godere dei veri valori e delle vere ricchezze.</em>', 'Una lettera del Papa alle famiglie', '', 'inherit', 'open', 'open', '', '16-revision-v1', '', '', '2015-05-01 16:48:51', '2015-05-01 14:48:51', '', 16, 'http://www.parrocchia-villafontana.it/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2015-05-01 16:51:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2015-05-01 16:51:55', '0000-00-00 00:00:00', '', 0, 'http://www.parrocchia-villafontana.it/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2015-05-01 17:21:39', '2015-05-01 15:21:39', '', 'invia-richiesta-parrocchia-villafontana', '', 'inherit', 'open', 'open', '', 'invia-richiesta-parrocchia-villafontana', '', '', '2015-05-03 18:26:14', '2015-05-03 16:26:14', '', 0, 'http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/invia-richiesta-parrocchia-villafontana.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2015-05-01 17:27:21', '2015-05-01 15:27:21', '', 'bollettini-parrocchiali', '', 'inherit', 'open', 'open', '', 'bollettini-parrocchiali-2', '', '', '2015-05-03 18:25:54', '2015-05-03 16:25:54', '', 0, 'http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/bollettini-parrocchiali.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2015-05-01 17:27:22', '2015-05-01 15:27:22', '', 'contatti-parrocchia', '', 'inherit', 'open', 'open', '', 'contatti-parrocchia', '', '', '2015-05-03 18:25:44', '2015-05-03 16:25:44', '', 0, 'http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/contatti-parrocchia.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2015-05-01 17:27:22', '2015-05-01 15:27:22', '', 'notizie-parrocchia', '', 'inherit', 'open', 'open', '', 'notizie-parrocchia', '', '', '2015-05-03 18:25:34', '2015-05-03 16:25:34', '', 0, 'http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/notizie-parrocchia.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2015-05-01 17:40:56', '2015-05-01 15:40:56', 'Se desideri avere qualche informazione, questo è il posto giusto!\r\nCompila i seguenti campi, e ti risponderemo al più presto.\r\n\r\n[contact-form-7 id="13" title="Modulo di contatto"]', 'Contatti', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-05-01 17:40:56', '2015-05-01 15:40:56', '', 2, 'http://www.parrocchia-villafontana.it/2-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2015-05-01 17:54:20', '2015-05-01 15:54:20', 'Domenica 26 aprile durante la messa delle 11:00 presieduta da Mons. Gabriele Cavina (Provicario Generale della nostra diocesi) è stato ufficializzata la rinuncia alla guida alla parrocchia da parte di don Giancarlo Zanasi, che per il bene suo e della parrocchia a causa dei problemi di salute, a malincuore, lascia vacante al momento la posizione di parroco.\r\nIn attesa della definizione da parte del vescovo di un nuovo parroco, la guida è lasciata a Don Marcello Galletti.\r\nMons. Cavina ha rinnovato l''invito alla preghiera a Maria in questo mese a Lei dedicato, per aiutare sia Don Giancarlo che la parrocchia in questa situazione transitoria.\r\n\r\nDurante questo periodo fare riferimento alla <strong><a href="http://www.parrocchiadimedicina.it/" target="_blank">parrocchia di Medicina</a></strong> per le confessioni, mentre le attività catechistiche proseguiranno come da programma.\r\n\r\n&nbsp;', 'In attesa di un nuovo parroco', '', 'publish', 'open', 'open', '', 'in-attesa-di-un-nuovo-parroco', '', '', '2015-05-03 18:22:23', '2015-05-03 16:22:23', '', 0, 'http://www.parrocchia-villafontana.it/?p=25', 0, 'post', '', 0),
(26, 1, '2015-05-01 17:54:20', '2015-05-01 15:54:20', 'Domenica 26 aprile durante la messa delle 11:00 presieduta da Mons. Gabriele Cavina ( Provicario Generale della nostra diocesi) è stato ufficializzata la rinuncia alla guida alla parrocchia da parte di don Giancarlo Zanasi, che per il bene suo e della parrocchia a causa dei problemi di salute, a malincuore, lascia vacante al momento la posizione di parroco.\r\nIn attesa della definizione da parte del vescovo di un nuovo parroco, la guida è lasciata a Don Marcello Galletti.\r\nMons. Cavina ha rinnovato l''invito alla preghiera a Maria in questo mese a Lei dedicato, per aiutare sia Don Giancarlo che la parrocchia in questa situazione transitoria.\r\n\r\n&nbsp;', 'In attesa di un nuovo parroco', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-05-01 17:54:20', '2015-05-01 15:54:20', '', 25, 'http://www.parrocchia-villafontana.it/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2015-05-01 18:00:24', '2015-05-01 16:00:24', 'Domenica 26 aprile durante la messa delle 11:00 presieduta da Mons. Gabriele Cavina ( Provicario Generale della nostra diocesi) è stato ufficializzata la rinuncia alla guida alla parrocchia da parte di don Giancarlo Zanasi, che per il bene suo e della parrocchia a causa dei problemi di salute, a malincuore, lascia vacante al momento la posizione di parroco.\nIn attesa della definizione da parte del vescovo di un nuovo parroco, la guida è lasciata a Don Marcello Galletti.\nMons. Cavina ha rinnovato l''invito alla preghiera a Maria in questo mese a Lei dedicato, per aiutare sia Don Giancarlo che la parrocchia in questa situazione transitoria.\n\nDurante questo periodo fare riferimento alla <a href="http://www.parrocchiadimedicina.it/" target="_blank">parrocchia di Medicina</a> per le confessioni, mentre le attività catechistiche proseguiranno come da programma.\n\n&nbsp;', 'In attesa di un nuovo parroco', '', 'inherit', 'open', 'open', '', '25-autosave-v1', '', '', '2015-05-01 18:00:24', '2015-05-01 16:00:24', '', 25, 'http://www.parrocchia-villafontana.it/25-autosave-v1/', 0, 'revision', '', 0),
(28, 1, '2015-05-01 18:00:26', '2015-05-01 16:00:26', 'Domenica 26 aprile durante la messa delle 11:00 presieduta da Mons. Gabriele Cavina ( Provicario Generale della nostra diocesi) è stato ufficializzata la rinuncia alla guida alla parrocchia da parte di don Giancarlo Zanasi, che per il bene suo e della parrocchia a causa dei problemi di salute, a malincuore, lascia vacante al momento la posizione di parroco.\r\nIn attesa della definizione da parte del vescovo di un nuovo parroco, la guida è lasciata a Don Marcello Galletti.\r\nMons. Cavina ha rinnovato l''invito alla preghiera a Maria in questo mese a Lei dedicato, per aiutare sia Don Giancarlo che la parrocchia in questa situazione transitoria.\r\n\r\nDurante questo periodo fare riferimento alla <a href="http://www.parrocchiadimedicina.it/" target="_blank">parrocchia di Medicina</a> per le confessioni, mentre le attività catechistiche proseguiranno come da programma.\r\n\r\n&nbsp;', 'In attesa di un nuovo parroco', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-05-01 18:00:26', '2015-05-01 16:00:26', '', 25, 'http://www.parrocchia-villafontana.it/25-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2015-05-03 16:24:06', '2015-05-03 14:24:06', '<strong>Domenica 3 maggio:</strong> Ore 9,30 celebrazione del Sacramento della Cresima nella Parrocchia di Ganzanigo. Riceveranno il Sacramento i nostri ragazzi: Accomando Gemma -Alberoni Alessandro - Buratti Alessandro - Cavina Mattia - Corelli Mattia - Gabaldo Daniele - Gabaldo Irene - Gardenghi Gabriele - Modelli Gianluca - Leggio Annamaria - Longhi Filippo - Orsi Lorenzo - Quartieri Tommaso - Rizzati Simone - Rossi Riccardo - Trebbi Simone - Venturini Luciano - Zucchini Tommaso\r\n\r\n<strong>Domenica 10 maggio:</strong> alla S. Messa delle ore 9 accoglienza nella comunità parrocchiale dei nuovi cresimati.\r\n\r\n<strong>Giovedì 14, venerdì 15, sabato 16 maggio:</strong> Rogazioni. Ore 20.30 S. Messa seguita dalla processione tradizionale.\r\n\r\n<strong>Domenica 17 maggio:</strong>. Ascensione del Signore Ore 9 S. Messa di Prime Comunioni. Parteciperanno per la 1ª volta alla mensa del Signore: Busi Kevin - Fabbri Diego - Fabbri Riccardo Stefano - Filippini Lucia - Forlani Giordano - Iameo Antonio - Marchio Lorenzo - Padovano Asia - Presti Zoe - Quartieri Elena - Quartieri Gabriele - Ruggiero Giuseppe - Spiga Ada Maria - Tondo Mattia - Trebbi Rachele - Venturini Benedetta. Ore 18 processione per le vie del paese e benedizione con l’immagine della Madonna.\r\n\r\n<strong>Domenica 24 maggio:</strong>. Solennità di Pentecoste e conclusione del tempo di Pasqua.\r\n\r\n<strong>Giovedì 4 giugno:</strong> festa del Corpus Domini: ore 21 S. Messa e processione. La zona interessata è Dalla Valle (lato dx) Filippini (lato dx)- Fiorentina - Vigo\r\n\r\n<strong>Venerdì 19, sabato 20 e domenica 21 giugno:</strong> Festa delle Spighe.\r\n\r\n<em>Ringrazio le famiglie che mi hanno accolto con tanta cordialità durante le benedizioni pasquali e auguro loro ancora ogni bene da parte del Signore. Una preghiera anche per quelle che hanno opposto un rifiuto o che non hanno manifestato alcun interesse.</em>\r\n\r\n<em>Don Giancarlo</em>', 'Calendario liturgico pastorale maggio - giugno 2015', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2015-05-03 16:24:06', '2015-05-03 14:24:06', '', 29, 'http://www.parrocchia-villafontana.it/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2015-05-03 16:27:43', '2015-05-03 14:27:43', 'pdf completo bollettino maggio 2015', 'qui', '', 'inherit', 'open', 'open', '', '15-04-bollettino', '', '', '2015-05-03 16:30:53', '2015-05-03 14:30:53', '', 29, 'http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/15.04-Bollettino.pdf', 0, 'attachment', 'application/pdf', 0),
(32, 1, '2015-05-03 16:31:34', '2015-05-03 14:31:34', '&lt;h2&gt;In breve gli appuntamentamenti più importanti della parrocchia:\n\n<strong>Domenica 3 maggio:</strong> Ore 9,30 celebrazione del Sacramento della Cresima nella Parrocchia di Ganzanigo. Riceveranno il Sacramento i nostri ragazzi: Accomando Gemma -Alberoni Alessandro - Buratti Alessandro - Cavina Mattia - Corelli Mattia - Gabaldo Daniele - Gabaldo Irene - Gardenghi Gabriele - Modelli Gianluca - Leggio Annamaria - Longhi Filippo - Orsi Lorenzo - Quartieri Tommaso - Rizzati Simone - Rossi Riccardo - Trebbi Simone - Venturini Luciano - Zucchini Tommaso\n\n<strong>Domenica 10 maggio:</strong> alla S. Messa delle ore 9 accoglienza nella comunità parrocchiale dei nuovi cresimati.\n\n<strong>Giovedì 14, venerdì 15, sabato 16 maggio:</strong> Rogazioni. Ore 20.30 S. Messa seguita dalla processione tradizionale.\n\n<strong>Domenica 17 maggio:</strong>. Ascensione del Signore Ore 9 S. Messa di Prime Comunioni. Parteciperanno per la 1ª volta alla mensa del Signore: Busi Kevin - Fabbri Diego - Fabbri Riccardo Stefano - Filippini Lucia - Forlani Giordano - Iameo Antonio - Marchio Lorenzo - Padovano Asia - Presti Zoe - Quartieri Elena - Quartieri Gabriele - Ruggiero Giuseppe - Spiga Ada Maria - Tondo Mattia - Trebbi Rachele - Venturini Benedetta. Ore 18 processione per le vie del paese e benedizione con l’immagine della Madonna.\n\n<strong>Domenica 24 maggio:</strong>. Solennità di Pentecoste e conclusione del tempo di Pasqua.\n\n<strong>Giovedì 4 giugno:</strong> festa del Corpus Domini: ore 21 S. Messa e processione. La zona interessata è Dalla Valle (lato dx) Filippini (lato dx)- Fiorentina - Vigo\n\n<strong>Venerdì 19, sabato 20 e domenica 21 giugno:</strong> Festa delle Spighe.\n\n<em>Ringrazio le famiglie che mi hanno accolto con tanta cordialità durante le benedizioni pasquali e auguro loro ancora ogni bene da parte del Signore. Una preghiera anche per quelle che hanno opposto un rifiuto o che non hanno manifestato alcun interesse.</em>\n\n<em>Don Giancarlo</em>\n\nScarica il pdf completo del bollettino <a href="http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/15.04-Bollettino.pdf">qui</a>.', 'Calendario liturgico pastorale maggio - giugno 2015', '', 'inherit', 'open', 'open', '', '29-autosave-v1', '', '', '2015-05-03 16:31:34', '2015-05-03 14:31:34', '', 29, 'http://www.parrocchia-villafontana.it/29-autosave-v1/', 0, 'revision', '', 0),
(34, 1, '2015-05-03 16:31:56', '2015-05-03 14:31:56', '&lt;h2&gt;In breve gli appuntamenti più importanti della parrocchia:&lt;/h2&gt;\r\n\r\n<strong>Domenica 3 maggio:</strong> Ore 9,30 celebrazione del Sacramento della Cresima nella Parrocchia di Ganzanigo. Riceveranno il Sacramento i nostri ragazzi: Accomando Gemma -Alberoni Alessandro - Buratti Alessandro - Cavina Mattia - Corelli Mattia - Gabaldo Daniele - Gabaldo Irene - Gardenghi Gabriele - Modelli Gianluca - Leggio Annamaria - Longhi Filippo - Orsi Lorenzo - Quartieri Tommaso - Rizzati Simone - Rossi Riccardo - Trebbi Simone - Venturini Luciano - Zucchini Tommaso\r\n\r\n<strong>Domenica 10 maggio:</strong> alla S. Messa delle ore 9 accoglienza nella comunità parrocchiale dei nuovi cresimati.\r\n\r\n<strong>Giovedì 14, venerdì 15, sabato 16 maggio:</strong> Rogazioni. Ore 20.30 S. Messa seguita dalla processione tradizionale.\r\n\r\n<strong>Domenica 17 maggio:</strong>. Ascensione del Signore Ore 9 S. Messa di Prime Comunioni. Parteciperanno per la 1ª volta alla mensa del Signore: Busi Kevin - Fabbri Diego - Fabbri Riccardo Stefano - Filippini Lucia - Forlani Giordano - Iameo Antonio - Marchio Lorenzo - Padovano Asia - Presti Zoe - Quartieri Elena - Quartieri Gabriele - Ruggiero Giuseppe - Spiga Ada Maria - Tondo Mattia - Trebbi Rachele - Venturini Benedetta. Ore 18 processione per le vie del paese e benedizione con l’immagine della Madonna.\r\n\r\n<strong>Domenica 24 maggio:</strong>. Solennità di Pentecoste e conclusione del tempo di Pasqua.\r\n\r\n<strong>Giovedì 4 giugno:</strong> festa del Corpus Domini: ore 21 S. Messa e processione. La zona interessata è Dalla Valle (lato dx) Filippini (lato dx)- Fiorentina - Vigo\r\n\r\n<strong>Venerdì 19, sabato 20 e domenica 21 giugno:</strong> Festa delle Spighe.\r\n\r\n<em>Ringrazio le famiglie che mi hanno accolto con tanta cordialità durante le benedizioni pasquali e auguro loro ancora ogni bene da parte del Signore. Una preghiera anche per quelle che hanno opposto un rifiuto o che non hanno manifestato alcun interesse.</em>\r\n\r\n<em>Don Giancarlo</em>\r\n\r\nScarica il pdf completo del bollettino <a href="http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/15.04-Bollettino.pdf">qui</a>.', 'Bollettino maggio - giugno 2015', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2015-05-03 16:31:56', '2015-05-03 14:31:56', '', 29, 'http://www.parrocchia-villafontana.it/29-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2015-05-03 16:32:59', '2015-05-03 14:32:59', '<h2>In breve gli appuntamenti più importanti della parrocchia:</h2>\r\n<strong>Domenica 3 maggio:</strong> Ore 9,30 celebrazione del Sacramento della Cresima nella Parrocchia di Ganzanigo. Riceveranno il Sacramento i nostri ragazzi: Accomando Gemma -Alberoni Alessandro - Buratti Alessandro - Cavina Mattia - Corelli Mattia - Gabaldo Daniele - Gabaldo Irene - Gardenghi Gabriele - Modelli Gianluca - Leggio Annamaria - Longhi Filippo - Orsi Lorenzo - Quartieri Tommaso - Rizzati Simone - Rossi Riccardo - Trebbi Simone - Venturini Luciano - Zucchini Tommaso\r\n\r\n<strong>Domenica 10 maggio:</strong> alla S. Messa delle ore 9 accoglienza nella comunità parrocchiale dei nuovi cresimati.\r\n\r\n<strong>Giovedì 14, venerdì 15, sabato 16 maggio:</strong> Rogazioni. Ore 20.30 S. Messa seguita dalla processione tradizionale.\r\n\r\n<strong>Domenica 17 maggio:</strong>. Ascensione del Signore Ore 9 S. Messa di Prime Comunioni. Parteciperanno per la 1ª volta alla mensa del Signore: Busi Kevin - Fabbri Diego - Fabbri Riccardo Stefano - Filippini Lucia - Forlani Giordano - Iameo Antonio - Marchio Lorenzo - Padovano Asia - Presti Zoe - Quartieri Elena - Quartieri Gabriele - Ruggiero Giuseppe - Spiga Ada Maria - Tondo Mattia - Trebbi Rachele - Venturini Benedetta. Ore 18 processione per le vie del paese e benedizione con l’immagine della Madonna.\r\n\r\n<strong>Domenica 24 maggio:</strong>. Solennità di Pentecoste e conclusione del tempo di Pasqua.\r\n\r\n<strong>Giovedì 4 giugno:</strong> festa del Corpus Domini: ore 21 S. Messa e processione. La zona interessata è Dalla Valle (lato dx) Filippini (lato dx)- Fiorentina - Vigo\r\n\r\n<strong>Venerdì 19, sabato 20 e domenica 21 giugno:</strong> Festa delle Spighe.\r\n\r\n<em>Ringrazio le famiglie che mi hanno accolto con tanta cordialità durante le benedizioni pasquali e auguro loro ancora ogni bene da parte del Signore. Una preghiera anche per quelle che hanno opposto un rifiuto o che non hanno manifestato alcun interesse.</em>\r\n\r\n<em>Don Giancarlo</em>\r\n\r\nScarica il pdf completo del bollettino <a href="http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/15.04-Bollettino.pdf">qui</a>.', 'Bollettino maggio - giugno 2015', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2015-05-03 16:32:59', '2015-05-03 14:32:59', '', 29, 'http://www.parrocchia-villafontana.it/29-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2015-05-03 16:38:13', '0000-00-00 00:00:00', '', 'Bozza automatica', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-03 16:38:13', '0000-00-00 00:00:00', '', 0, 'http://www.parrocchia-villafontana.it/?p=36', 0, 'post', '', 0),
(37, 1, '2015-05-03 16:41:36', '2015-05-03 14:41:36', '•	Le comunità parrocchiali del nostro vicariato hanno deciso di incontrare nel corso dell’anno la comunità del Seminario Diocesano (ragazzi e sacerdoti educatori). Con quale scopo? Principalmente per pregare insieme e poi per vivere insieme momenti conviviali, per conoscersi, per dialogare e scambiarsi esperienze alla scoperta di quanto sia importante per le nostre parrocchie la presenza del sacerdote e quindi l’importanza dell’impegno a favorire il sorgere e il maturare delle vocazioni religiose nelle nostre comunità. Nella nostra parrocchia questo incontro è avvenuto sabato 7 e domenica 8 febbraio scorsi, il resoconto in questi racconti:\n•	Sabato pomeriggio il padre spirituale del Seminario don Ruggero e il seminarista Francesco hanno incontrato il gruppo giovanissimi in due momenti: il primo di preghiera, in chiesa, dove abbiamo recitato Vespro insieme al gruppo medie ed alcune persone della parrocchia; il secondo in aula, dove insieme abbiamo trattato i temi della vocazione e dell’affettività-sessualità.\nSul tema della vocazione abbiamo letto i racconti di tre persone diverse nei quali si parlava del loro incontro con Dio, avvenuto in tempi e luoghi diversi: il legame tra le tre persone è stata la voce interiore. Una riflessione riguardo a questo tema è stata: nella nostra società è sempre più difficile prendersi del tempo per ascoltare l’intimo del nostro “io”, perché siamo sempre presi dall’ascolto di ciò che c’è al di fuori di ognuno di noi: questo tempo quaresimale può essere una valida occasione per fare silenzio, pensare a cosa c’è nell’intimo del nostro cuore e mettersi in ascolto.\nDon Ruggero sul tema dell’affettività e della sessualità ci ha presentato la sostanziale differenza tra amore e amore di amicizia, facendoci esempi di quello che possiamo provare emozionalmente e dei comportamenti che può assumere il nostro corpo; ci ha spiegato queste cose su base scientifica, come evento naturale, senza estrapolare le ragioni dalla Bibbia, ma facendoci capire che religione e scienza coincidono.\n•	Lo scorso 8 febbraio, il gruppo medie ha avuto il piacere di conoscere e di passare un’ora insieme a due giovani seminaristi di Bologna, Matteo e Francesco, i quali ci hanno chiesto di presentarci e di dire che cosa ci piace fare nella vita.\nAbbiamo visto un video, da loro realizzato, dal titolo “ la via giusta da seguire”. Il video mostrava con semplicità che è meglio mettere Dio e Gesù alla guida della nostra vita e lasciare che ci indichino la via giusta: loro non ci lasciano mai soli nemmeno nei momenti difficili. \nRiprendendo le parole del Papa, dello scorso 28 luglio, ci siamo soffermati sulla differenza tra camminare e girare. Se facciamo di testa nostra giriamo in tondo, a caso e senza una meta precisa, non otteniamo risultati mentre quando camminiamo abbiamo una meta precisa. E la nostra meta è Gesù.\nMatteo e Francesco ci hanno ricordato che Gesù deve essere l’obiettivo della nostra vita: con Lui sempre al nostro fianco tutto diventa più bello. Ci sono vari modi per stare con Lui: pregando, andando a Messa, stare insieme a persone che ci parlano di Gesù.\nDopo il video, abbiamo rivolto ai seminaristi alcune domande sulla loro giornata che, hanno precisato, non è fatta solo di preghiera e di studio ma anche di gioco e svago.\nIl seminario è un luogo nel quale le persone cercano di capire quale missione Dio ha preparato per loro, in altre parole, andare in seminario significa mettersi nelle mani del Signore per farsi guidare da Lui. \nAl termine dell’incontro, ci hanno colpito la loro felicità, il loro essere sorridenti e contenti della strada intrapresa.\n•	Domenica 8 Febbraio 2015 alcuni seminaristi del Seminario Arcivescovile di Bologna hanno fatto visita alla nostra parrocchia. Prima dell’inizio della S. Messa delle ore 9 uno di loro, Francesco, ha parlato ai bambini spiegando il motivo della sua scelta: “ho lasciato una cosa bella, per una ancora più bella”. Mons. Roberto Macciantelli, rettore del seminario, ha celebrato sia la S. Messa delle ore 9 che delle ore 11, incontrando così tutta la nostra comunità.\nVerso mezzogiorno a mons. Roberto e a Francesco si sono poi aggiunti don Sebastiano Tori, vicerettore del seminario, e altri cinque seminaristi e tutti insieme si sono fermati a pranzo con una ventina di giovani della parrocchia. È stata un’importante occasione di condivisione e di dialogo. Abbiamo parlato loro della nostra parrocchia, di Estate Ragazzi, del catechismo...ma anche di noi stessi, e loro hanno fatto altrettanto con noi, parlandoci della loro vita in Seminario, dei fine settimana trascorsi nelle parrocchie, del cammino che hanno intrapreso e della loro vocazione. Hanno concluso questi due giorni da noi invitandoci ad andarli a trovare in seminario.\n\n•	Iscrizioni Anno scolastico 2015-2016\nSi sono chiuse le iscrizioni per la Sezione Primavera, la Scuola dell’Infanzia e il Doposcuola per l’Anno Scolastico 2015/2016.\nI bambini che frequenteranno la Sezione Primavera saranno 23, alla Scuola dell’Infanzia saranno 79 e al doposcuola saranno 48. Anche quest’anno si è cercato di soddisfare il più possibile, le esigenze delle famiglie del nostro paese.\n•	Estate Ragazzi 2015\nLunedì 13 e martedì 14 aprile presso la scuola dell’infanzia verranno consegnati i moduli d’iscrizione a Estate Ragazzi per i bambini dai 6 ai 12 anni che vogliono parteciparvi. Lunedì 20 e martedì 21 aprile i moduli dovranno essere riconsegnati.\nCome ogni anno si chiede l’importante collaborazione degli animatori. Chi sono gli animatori? Possono essere tutti i ragazzi a partire dalla III Media, che abbiano tempo e voglia da dedicare quest’estate ai più piccoli. Chi lo desidera può chiedere informazione o dare la propria adesione presso la Scuola dell’Infanzia o a don Giancarlo.\n•	Pranzo di solidarietà\nDomenica 22 marzo 2015 alle ore 12.30 presso la tensostruttura nel cortile parrocchiale la scuola dell’Infanzia organizza il pranzo di solidarietà aperto a tutta la comunità. Il ricavato verrà utilizzato per la sistemazione del giardino.\nPer informazioni e prenotazioni contattare la scuola dell’Infanzia entro lunedì 16 marzo 2015.\n•	Settimana del DONACIBO\nDa diversi anni la scuola partecipa alla settimana del “DONACIBO” organizzata dal banco di solidarietà di Bologna  per sensibilizzare la carità nelle scuole.\nVisto che nelle scorse edizioni vi è stata una forte partecipazione e un buon coinvolgimento da parte delle famiglie e di tutto il personale scolastico, abbiamo pensato di riproporlo.\n', 'il tempo vola', '', 'trash', 'open', 'open', '', 'il-tempo-vola', '', '', '2015-05-03 17:33:17', '2015-05-03 15:33:17', '', 0, 'http://www.parrocchia-villafontana.it/?p=37', 0, 'post', '', 0),
(38, 1, '2015-05-03 16:43:24', '2015-05-03 14:43:24', '', '15.03 Bollettino', '', 'inherit', 'open', 'open', '', '15-03-bollettino', '', '', '2015-05-03 16:43:24', '2015-05-03 14:43:24', '', 37, 'http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/15.03-Bollettino.pdf', 0, 'attachment', 'application/pdf', 0),
(39, 2, '2015-05-03 17:22:38', '0000-00-00 00:00:00', '', 'Bozza automatica', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-05-03 17:22:38', '0000-00-00 00:00:00', '', 0, 'http://www.parrocchia-villafontana.it/?p=39', 0, 'post', '', 0);
INSERT INTO `wp_parrocchiaposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(40, 2, '2015-05-03 17:30:48', '2015-05-03 15:30:48', '<h3>In breve gli appuntamenti più importanti della parrocchia:</h3>\r\n<strong>Domenica 3 maggio:</strong> Ore 9,30 celebrazione del Sacramento della Cresima nella Parrocchia di Ganzanigo. Riceveranno il Sacramento i nostri ragazzi: Accomando Gemma -Alberoni Alessandro - Buratti Alessandro - Cavina Mattia - Corelli Mattia - Gabaldo Daniele - Gabaldo Irene - Gardenghi Gabriele - Modelli Gianluca - Leggio Annamaria - Longhi Filippo - Orsi Lorenzo - Quartieri Tommaso - Rizzati Simone - Rossi Riccardo - Trebbi Simone - Venturini Luciano - Zucchini Tommaso\r\n\r\n<strong>Domenica 10 maggio:</strong> alla S. Messa delle ore 9 accoglienza nella comunità parrocchiale dei nuovi cresimati.\r\n\r\n<strong>Giovedì 14, venerdì 15, sabato 16 maggio:</strong> Rogazioni. Ore 20.30 S. Messa seguita dalla processione tradizionale.\r\n\r\n<strong>Domenica 17 maggio:</strong>. Ascensione del Signore Ore 9 S. Messa di Prime Comunioni. Parteciperanno per la 1ª volta alla mensa del Signore: Busi Kevin - Fabbri Diego - Fabbri Riccardo Stefano - Filippini Lucia - Forlani Giordano - Iameo Antonio - Marchio Lorenzo - Padovano Asia - Presti Zoe - Quartieri Elena - Quartieri Gabriele - Ruggiero Giuseppe - Spiga Ada Maria - Tondo Mattia - Trebbi Rachele - Venturini Benedetta. Ore 18 processione per le vie del paese e benedizione con l’immagine della Madonna.\r\n\r\n<strong>Domenica 24 maggio:</strong>. Solennità di Pentecoste e conclusione del tempo di Pasqua.\r\n\r\n<strong>Giovedì 4 giugno:</strong> festa del Corpus Domini: ore 21 S. Messa e processione. La zona interessata è Dalla Valle (lato dx) Filippini (lato dx)- Fiorentina - Vigo\r\n\r\n<strong>Venerdì 19, sabato 20 e domenica 21 giugno:</strong> Festa delle Spighe.\r\n\r\n<em>Ringrazio le famiglie che mi hanno accolto con tanta cordialità durante le benedizioni pasquali e auguro loro ancora ogni bene da parte del Signore. Una preghiera anche per quelle che hanno opposto un rifiuto o che non hanno manifestato alcun interesse.</em>\r\n\r\n<em>Don Giancarlo</em>\r\n\r\nScarica il pdf completo del bollettino <a href="http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/15.04-Bollettino.pdf">qui</a>.', 'Bollettino maggio - giugno 2015', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2015-05-03 17:30:48', '2015-05-03 15:30:48', '', 29, 'http://www.parrocchia-villafontana.it/29-revision-v1/', 0, 'revision', '', 0),
(41, 2, '2015-05-03 17:31:09', '2015-05-03 15:31:09', 'In breve gli appuntamenti più importanti della parrocchia:\r\n<strong>Domenica 3 maggio:</strong> Ore 9,30 celebrazione del Sacramento della Cresima nella Parrocchia di Ganzanigo. Riceveranno il Sacramento i nostri ragazzi: Accomando Gemma -Alberoni Alessandro - Buratti Alessandro - Cavina Mattia - Corelli Mattia - Gabaldo Daniele - Gabaldo Irene - Gardenghi Gabriele - Modelli Gianluca - Leggio Annamaria - Longhi Filippo - Orsi Lorenzo - Quartieri Tommaso - Rizzati Simone - Rossi Riccardo - Trebbi Simone - Venturini Luciano - Zucchini Tommaso\r\n\r\n<strong>Domenica 10 maggio:</strong> alla S. Messa delle ore 9 accoglienza nella comunità parrocchiale dei nuovi cresimati.\r\n\r\n<strong>Giovedì 14, venerdì 15, sabato 16 maggio:</strong> Rogazioni. Ore 20.30 S. Messa seguita dalla processione tradizionale.\r\n\r\n<strong>Domenica 17 maggio:</strong>. Ascensione del Signore Ore 9 S. Messa di Prime Comunioni. Parteciperanno per la 1ª volta alla mensa del Signore: Busi Kevin - Fabbri Diego - Fabbri Riccardo Stefano - Filippini Lucia - Forlani Giordano - Iameo Antonio - Marchio Lorenzo - Padovano Asia - Presti Zoe - Quartieri Elena - Quartieri Gabriele - Ruggiero Giuseppe - Spiga Ada Maria - Tondo Mattia - Trebbi Rachele - Venturini Benedetta. Ore 18 processione per le vie del paese e benedizione con l’immagine della Madonna.\r\n\r\n<strong>Domenica 24 maggio:</strong>. Solennità di Pentecoste e conclusione del tempo di Pasqua.\r\n\r\n<strong>Giovedì 4 giugno:</strong> festa del Corpus Domini: ore 21 S. Messa e processione. La zona interessata è Dalla Valle (lato dx) Filippini (lato dx)- Fiorentina - Vigo\r\n\r\n<strong>Venerdì 19, sabato 20 e domenica 21 giugno:</strong> Festa delle Spighe.\r\n\r\n<em>Ringrazio le famiglie che mi hanno accolto con tanta cordialità durante le benedizioni pasquali e auguro loro ancora ogni bene da parte del Signore. Una preghiera anche per quelle che hanno opposto un rifiuto o che non hanno manifestato alcun interesse.</em>\r\n\r\n<em>Don Giancarlo</em>\r\n\r\nScarica il pdf completo del bollettino <a href="http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/15.04-Bollettino.pdf">qui</a>.', 'Bollettino maggio - giugno 2015', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2015-05-03 17:31:09', '2015-05-03 15:31:09', '', 29, 'http://www.parrocchia-villafontana.it/29-revision-v1/', 0, 'revision', '', 0),
(42, 2, '2015-05-03 17:32:04', '2015-05-03 15:32:04', 'In breve gli appuntamenti più importanti della parrocchia:\r\n<strong>Domenica 3 maggio:</strong> Ore 9,30 celebrazione del Sacramento della Cresima nella Parrocchia di Ganzanigo. Riceveranno il Sacramento i nostri ragazzi: Accomando Gemma -Alberoni Alessandro - Buratti Alessandro - Cavina Mattia - Corelli Mattia - Gabaldo Daniele - Gabaldo Irene - Gardenghi Gabriele - Modelli Gianluca - Leggio Annamaria - Longhi Filippo - Orsi Lorenzo - Quartieri Tommaso - Rizzati Simone - Rossi Riccardo - Trebbi Simone - Venturini Luciano - Zucchini Tommaso\r\n\r\n<strong>Domenica 10 maggio:</strong> alla S. Messa delle ore 9 accoglienza nella comunità parrocchiale dei nuovi cresimati.\r\n\r\n<strong>Giovedì 14, venerdì 15, sabato 16 maggio:</strong> Rogazioni. Ore 20.30 S. Messa seguita dalla processione tradizionale.\r\n\r\n<strong>Domenica 17 maggio:</strong>. Ascensione del Signore Ore 9 S. Messa di Prime Comunioni. Parteciperanno per la 1ª volta alla mensa del Signore: Busi Kevin - Fabbri Diego - Fabbri Riccardo Stefano - Filippini Lucia - Forlani Giordano - Iameo Antonio - Marchio Lorenzo - Padovano Asia - Presti Zoe - Quartieri Elena - Quartieri Gabriele - Ruggiero Giuseppe - Spiga Ada Maria - Tondo Mattia - Trebbi Rachele - Venturini Benedetta. Ore 18 processione per le vie del paese e benedizione con l’immagine della Madonna.\r\n\r\n<strong>Domenica 24 maggio:</strong>. Solennità di Pentecoste e conclusione del tempo di Pasqua.\r\n\r\n<strong>Giovedì 4 giugno:</strong> festa del Corpus Domini: ore 21 S. Messa e processione. La zona interessata è Dalla Valle (lato dx) Filippini (lato dx)- Fiorentina - Vigo\r\n\r\n<strong>Venerdì 19, sabato 20 e domenica 21 giugno:</strong> Festa delle Spighe.\r\n\r\n<em>Ringrazio le famiglie che mi hanno accolto con tanta cordialità durante le benedizioni pasquali e auguro loro ancora ogni bene da parte del Signore. Una preghiera anche per quelle che hanno opposto un rifiuto o che non hanno manifestato alcun interesse.</em>\r\n\r\n<em>Don Giancarlo</em>\r\n\r\nScarica il pdf completo del bollettino <strong><a href="http://www.parrocchia-villafontana.it/wp-content/uploads/2015/05/15.04-Bollettino.pdf">qui</a></strong>.', 'Bollettino maggio - giugno 2015', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2015-05-03 17:32:04', '2015-05-03 15:32:04', '', 29, 'http://www.parrocchia-villafontana.it/29-revision-v1/', 0, 'revision', '', 0),
(43, 2, '2015-05-03 17:33:17', '2015-05-03 15:33:17', '•	Le comunità parrocchiali del nostro vicariato hanno deciso di incontrare nel corso dell’anno la comunità del Seminario Diocesano (ragazzi e sacerdoti educatori). Con quale scopo? Principalmente per pregare insieme e poi per vivere insieme momenti conviviali, per conoscersi, per dialogare e scambiarsi esperienze alla scoperta di quanto sia importante per le nostre parrocchie la presenza del sacerdote e quindi l’importanza dell’impegno a favorire il sorgere e il maturare delle vocazioni religiose nelle nostre comunità. Nella nostra parrocchia questo incontro è avvenuto sabato 7 e domenica 8 febbraio scorsi, il resoconto in questi racconti:\n•	Sabato pomeriggio il padre spirituale del Seminario don Ruggero e il seminarista Francesco hanno incontrato il gruppo giovanissimi in due momenti: il primo di preghiera, in chiesa, dove abbiamo recitato Vespro insieme al gruppo medie ed alcune persone della parrocchia; il secondo in aula, dove insieme abbiamo trattato i temi della vocazione e dell’affettività-sessualità.\nSul tema della vocazione abbiamo letto i racconti di tre persone diverse nei quali si parlava del loro incontro con Dio, avvenuto in tempi e luoghi diversi: il legame tra le tre persone è stata la voce interiore. Una riflessione riguardo a questo tema è stata: nella nostra società è sempre più difficile prendersi del tempo per ascoltare l’intimo del nostro “io”, perché siamo sempre presi dall’ascolto di ciò che c’è al di fuori di ognuno di noi: questo tempo quaresimale può essere una valida occasione per fare silenzio, pensare a cosa c’è nell’intimo del nostro cuore e mettersi in ascolto.\nDon Ruggero sul tema dell’affettività e della sessualità ci ha presentato la sostanziale differenza tra amore e amore di amicizia, facendoci esempi di quello che possiamo provare emozionalmente e dei comportamenti che può assumere il nostro corpo; ci ha spiegato queste cose su base scientifica, come evento naturale, senza estrapolare le ragioni dalla Bibbia, ma facendoci capire che religione e scienza coincidono.\n•	Lo scorso 8 febbraio, il gruppo medie ha avuto il piacere di conoscere e di passare un’ora insieme a due giovani seminaristi di Bologna, Matteo e Francesco, i quali ci hanno chiesto di presentarci e di dire che cosa ci piace fare nella vita.\nAbbiamo visto un video, da loro realizzato, dal titolo “ la via giusta da seguire”. Il video mostrava con semplicità che è meglio mettere Dio e Gesù alla guida della nostra vita e lasciare che ci indichino la via giusta: loro non ci lasciano mai soli nemmeno nei momenti difficili. \nRiprendendo le parole del Papa, dello scorso 28 luglio, ci siamo soffermati sulla differenza tra camminare e girare. Se facciamo di testa nostra giriamo in tondo, a caso e senza una meta precisa, non otteniamo risultati mentre quando camminiamo abbiamo una meta precisa. E la nostra meta è Gesù.\nMatteo e Francesco ci hanno ricordato che Gesù deve essere l’obiettivo della nostra vita: con Lui sempre al nostro fianco tutto diventa più bello. Ci sono vari modi per stare con Lui: pregando, andando a Messa, stare insieme a persone che ci parlano di Gesù.\nDopo il video, abbiamo rivolto ai seminaristi alcune domande sulla loro giornata che, hanno precisato, non è fatta solo di preghiera e di studio ma anche di gioco e svago.\nIl seminario è un luogo nel quale le persone cercano di capire quale missione Dio ha preparato per loro, in altre parole, andare in seminario significa mettersi nelle mani del Signore per farsi guidare da Lui. \nAl termine dell’incontro, ci hanno colpito la loro felicità, il loro essere sorridenti e contenti della strada intrapresa.\n•	Domenica 8 Febbraio 2015 alcuni seminaristi del Seminario Arcivescovile di Bologna hanno fatto visita alla nostra parrocchia. Prima dell’inizio della S. Messa delle ore 9 uno di loro, Francesco, ha parlato ai bambini spiegando il motivo della sua scelta: “ho lasciato una cosa bella, per una ancora più bella”. Mons. Roberto Macciantelli, rettore del seminario, ha celebrato sia la S. Messa delle ore 9 che delle ore 11, incontrando così tutta la nostra comunità.\nVerso mezzogiorno a mons. Roberto e a Francesco si sono poi aggiunti don Sebastiano Tori, vicerettore del seminario, e altri cinque seminaristi e tutti insieme si sono fermati a pranzo con una ventina di giovani della parrocchia. È stata un’importante occasione di condivisione e di dialogo. Abbiamo parlato loro della nostra parrocchia, di Estate Ragazzi, del catechismo...ma anche di noi stessi, e loro hanno fatto altrettanto con noi, parlandoci della loro vita in Seminario, dei fine settimana trascorsi nelle parrocchie, del cammino che hanno intrapreso e della loro vocazione. Hanno concluso questi due giorni da noi invitandoci ad andarli a trovare in seminario.\n\n•	Iscrizioni Anno scolastico 2015-2016\nSi sono chiuse le iscrizioni per la Sezione Primavera, la Scuola dell’Infanzia e il Doposcuola per l’Anno Scolastico 2015/2016.\nI bambini che frequenteranno la Sezione Primavera saranno 23, alla Scuola dell’Infanzia saranno 79 e al doposcuola saranno 48. Anche quest’anno si è cercato di soddisfare il più possibile, le esigenze delle famiglie del nostro paese.\n•	Estate Ragazzi 2015\nLunedì 13 e martedì 14 aprile presso la scuola dell’infanzia verranno consegnati i moduli d’iscrizione a Estate Ragazzi per i bambini dai 6 ai 12 anni che vogliono parteciparvi. Lunedì 20 e martedì 21 aprile i moduli dovranno essere riconsegnati.\nCome ogni anno si chiede l’importante collaborazione degli animatori. Chi sono gli animatori? Possono essere tutti i ragazzi a partire dalla III Media, che abbiano tempo e voglia da dedicare quest’estate ai più piccoli. Chi lo desidera può chiedere informazione o dare la propria adesione presso la Scuola dell’Infanzia o a don Giancarlo.\n•	Pranzo di solidarietà\nDomenica 22 marzo 2015 alle ore 12.30 presso la tensostruttura nel cortile parrocchiale la scuola dell’Infanzia organizza il pranzo di solidarietà aperto a tutta la comunità. Il ricavato verrà utilizzato per la sistemazione del giardino.\nPer informazioni e prenotazioni contattare la scuola dell’Infanzia entro lunedì 16 marzo 2015.\n•	Settimana del DONACIBO\nDa diversi anni la scuola partecipa alla settimana del “DONACIBO” organizzata dal banco di solidarietà di Bologna  per sensibilizzare la carità nelle scuole.\nVisto che nelle scorse edizioni vi è stata una forte partecipazione e un buon coinvolgimento da parte delle famiglie e di tutto il personale scolastico, abbiamo pensato di riproporlo.\n', 'il tempo vola', '', 'inherit', 'open', 'open', '', '37-revision-v1', '', '', '2015-05-03 17:33:17', '2015-05-03 15:33:17', '', 37, 'http://www.parrocchia-villafontana.it/37-revision-v1/', 0, 'revision', '', 0),
(44, 2, '2015-05-03 17:33:29', '2015-05-03 15:33:29', 'Domenica 26 aprile durante la messa delle 11:00 presieduta da Mons. Gabriele Cavina (Provicario Generale della nostra diocesi) è stato ufficializzata la rinuncia alla guida alla parrocchia da parte di don Giancarlo Zanasi, che per il bene suo e della parrocchia a causa dei problemi di salute, a malincuore, lascia vacante al momento la posizione di parroco.\r\nIn attesa della definizione da parte del vescovo di un nuovo parroco, la guida è lasciata a Don Marcello Galletti.\r\nMons. Cavina ha rinnovato l''invito alla preghiera a Maria in questo mese a Lei dedicato, per aiutare sia Don Giancarlo che la parrocchia in questa situazione transitoria.\r\n\r\nDurante questo periodo fare riferimento alla <strong><a href="http://www.parrocchiadimedicina.it/" target="_blank">parrocchia di Medicina</a></strong> per le confessioni, mentre le attività catechistiche proseguiranno come da programma.\r\n\r\n&nbsp;', 'In attesa di un nuovo parroco', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-05-03 17:33:29', '2015-05-03 15:33:29', '', 25, 'http://www.parrocchia-villafontana.it/25-revision-v1/', 0, 'revision', '', 0),
(47, 2, '2015-05-03 17:42:12', '2015-05-03 15:42:12', 'Domenica 26 aprile durante la messa delle 11:00 presieduta da Mons. Gabriele Cavina (Provicario Generale della nostra diocesi) è stato ufficializzata la rinuncia alla guida alla parrocchia da parte di don Giancarlo Zanasi, che per il bene suo e della parrocchia a causa dei problemi di salute, a malincuore, lascia vacante al momento la posizione di parroco.\r\nIn attesa della definizione da parte del vescovo di un nuovo parroco, la guida è lasciata a Don Marcello Galletti.\r\nMons. Cavina ha rinnovato l''invito alla preghiera a Maria in questo mese a Lei dedicato, per aiutare sia Don Giancarlo che la parrocchia in questa situazione transitoria.\r\n\r\nDurante questo periodo fare riferimento alla <strong><a href="http://www.parrocchiadimedicina.it/" target="_blank">parrocchia di Medicina</a></strong> per le confessioni, mentre le attività catechistiche proseguiranno come da programma.\r\n\r\n&nbsp;', 'In attesa di un nuovo parroco', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-05-03 17:42:12', '2015-05-03 15:42:12', '', 25, 'http://www.parrocchia-villafontana.it/25-revision-v1/', 0, 'revision', '', 0),
(45, 2, '2015-05-03 17:41:30', '2015-05-03 15:41:30', 'Domenica 26 aprile durante la messa delle 11:00 presieduta da Mons. Gabriele Cavina (Provicario Generale della nostra diocesi) è stato ufficializzata la rinuncia alla guida alla parrocchia da parte di don Giancarlo Zanasi, che per il bene suo e della parrocchia a causa dei problemi di salute, a malincuore, lascia vacante al momento la posizione di parroco.\r\n<!--more-->\r\nIn attesa della definizione da parte del vescovo di un nuovo parroco, la guida è lasciata a Don Marcello Galletti.\r\nMons. Cavina ha rinnovato l''invito alla preghiera a Maria in questo mese a Lei dedicato, per aiutare sia Don Giancarlo che la parrocchia in questa situazione transitoria.\r\n\r\nDurante questo periodo fare riferimento alla <strong><a href="http://www.parrocchiadimedicina.it/" target="_blank">parrocchia di Medicina</a></strong> per le confessioni, mentre le attività catechistiche proseguiranno come da programma.\r\n\r\n&nbsp;', 'In attesa di un nuovo parroco', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-05-03 17:41:30', '2015-05-03 15:41:30', '', 25, 'http://www.parrocchia-villafontana.it/25-revision-v1/', 0, 'revision', '', 0),
(46, 2, '2015-05-03 17:41:55', '2015-05-03 15:41:55', 'Domenica 26 aprile durante la messa delle 11:00 presieduta da Mons. Gabriele Cavina (Provicario Generale della nostra diocesi) è stato ufficializzata la rinuncia alla guida alla parrocchia da parte di don Giancarlo Zanasi, che per il bene suo e della parrocchia a causa dei problemi di salute, a malincuore, lascia vacante al momento la posizione di parroco. <!--more-->\r\nIn attesa della definizione da parte del vescovo di un nuovo parroco, la guida è lasciata a Don Marcello Galletti.\r\nMons. Cavina ha rinnovato l''invito alla preghiera a Maria in questo mese a Lei dedicato, per aiutare sia Don Giancarlo che la parrocchia in questa situazione transitoria.\r\n\r\nDurante questo periodo fare riferimento alla <strong><a href="http://www.parrocchiadimedicina.it/" target="_blank">parrocchia di Medicina</a></strong> per le confessioni, mentre le attività catechistiche proseguiranno come da programma.\r\n\r\n&nbsp;', 'In attesa di un nuovo parroco', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-05-03 17:41:55', '2015-05-03 15:41:55', '', 25, 'http://www.parrocchia-villafontana.it/25-revision-v1/', 0, 'revision', '', 0),
(48, 2, '2015-05-03 18:18:39', '2015-05-03 16:18:39', 'Se desideri avere qualche informazione, questo è il posto giusto!\r\nCompila i seguenti campi e contatta la Parrocchia, ti risponderemo al più presto.\r\n\r\n[contact-form-7 id="13" title="Modulo di contatto"]', 'Contatti', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-05-03 18:18:39', '2015-05-03 16:18:39', '', 2, 'http://www.parrocchia-villafontana.it/2-revision-v1/', 0, 'revision', '', 0),
(49, 2, '2015-05-03 18:19:46', '2015-05-03 16:19:46', 'Se desideri avere qualche informazione, questo è il posto giusto!\r\nCompila i seguenti campi e contatta la Parrocchia, ti risponderemo al più presto.\r\n\r\n[contact-form-7 id="13" title="Modulo di contatto"]', 'Contatta la parrocchia', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-05-03 18:19:46', '2015-05-03 16:19:46', '', 2, 'http://www.parrocchia-villafontana.it/2-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2015-05-05 14:03:14', '2015-05-05 12:03:14', 'Durante la settimana le celebrazioni liturgiche subiranno le seguenti modifiche:\r\n\r\nMARTEDÌ 5 MAGGIO: S. Messe: ore 7.00 (dalle suore) - 19.00 a MEDICINA\r\nMERCOLEDÌ 6 MAGGIO: S. Messa: ore 20 (dei giovani) a MEDICINA\r\nGIOVEDÌ 7 MAGGIO: S. Messe: ore 8.00 - 9.00 a MEDICINA\r\nVENERDÌ 8 MAGGIO: S. Messe: ore 8.00 a MEDICINA\r\nSABATO 9 MAGGIO:\r\nS. Messe: ore 8.00 (Chiesa del Crocifisso) - ore 16.45 (prefestiva alla casa protetta) a MEDICINA\r\n<em>Ore 20.00 S. Messa (prefestiva) a VILLA FONTANA</em>\r\nDOMENICA 10 MAGGIO:\r\nOre 8.00 S Messa (Chiesa dell’Ospedale) a MEDICINA\r\n<em>Ore 9.00 S.Messa a VILLA FONTANA</em>\r\n<em>Ore 11.00 S. Messa a VILLA FONTANA</em>\r\n<em>Ore 15 recita del Rosario a VILLA FONTANA</em>\r\n\r\n<strong>AVVISI</strong>\r\n\r\nPer le confessioni rivolgersi a Medicina il giovedì mattina o il sabato dalle ore 18.00.\r\nIMPORTANTE: Si avvisa fin da ora che per le Rogazioni della prossima settimana, la tradizionale S. Messa con processione del venerdì sera (zona via di Villa Fontana) sarà anticipata al mercoledì 13/05 sempre alle ore 20.30.', 'Celebrazioni liturgiche della settimana', '', 'publish', 'open', 'open', '', 'celebrazioni-liturgiche-della-settimana-liturgiche', '', '', '2015-05-05 14:05:31', '2015-05-05 12:05:31', '', 0, 'http://www.parrocchia-villafontana.it/?p=50', 0, 'post', '', 0),
(51, 1, '2015-05-05 13:59:42', '2015-05-05 11:59:42', 'MARTEDÌ 5 MAGGIO: S. Messe: ore 7.00 (dalle suore) - 19.00 a MEDICINA\r\nMERCOLEDÌ 6 MAGGIO: S. Messa: ore 20 (dei giovani) a MEDICINA\r\nGIOVEDÌ 7 MAGGIO: S. Messe: ore 8.00 - 9.00 a MEDICINA\r\nVENERDÌ 8 MAGGIO: S. Messe: ore 8.00 a MEDICINA\r\nSABATO 9 MAGGIO:\r\nS. Messe: ore 8.00 (Chiesa del Crocifisso) - ore 16.45 (prefestiva alla casa protetta) a MEDICINA\r\n<em>Ore 20.00 S. Messa (prefestiva) a VILLA FONTANA</em>\r\nDOMENICA 10 MAGGIO:\r\nOre 8.00 S Messa (Chiesa dell’Ospedale) a MEDICINA\r\n<em>Ore 9.00 S.Messa a VILLA FONTANA</em>\r\n<em>Ore 11.00 S. Messa a VILLA FONTANA</em>\r\n<em>Ore 15 recita del Rosario a VILLA FONTANA</em>\r\n\r\n<strong>AVVISI</strong>\r\n\r\nPer le confessioni rivolgersi a Medicina il giovedì mattina o il sabato dalle ore 18.00\r\nIMPORTANTE: Si avvisa fin da ora che per le Rogazioni della prossima settimana, la tradizionale S. Messa con processione del venerdì sera (zona via di Villa Fontana) sarà anticipata al mercoledì 13/05 sempre alle ore 20.30.', 'agenda settimanale celebrazioni liturgiche', '', 'inherit', 'open', 'open', '', '50-revision-v1', '', '', '2015-05-05 13:59:42', '2015-05-05 11:59:42', '', 50, 'http://www.parrocchia-villafontana.it/50-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2015-05-05 14:03:14', '2015-05-05 12:03:14', 'Durante la settimana le celebrazioni liturgiche subiranno le seguenti modifiche:\r\n\r\nMARTEDÌ 5 MAGGIO: S. Messe: ore 7.00 (dalle suore) - 19.00 a MEDICINA\r\nMERCOLEDÌ 6 MAGGIO: S. Messa: ore 20 (dei giovani) a MEDICINA\r\nGIOVEDÌ 7 MAGGIO: S. Messe: ore 8.00 - 9.00 a MEDICINA\r\nVENERDÌ 8 MAGGIO: S. Messe: ore 8.00 a MEDICINA\r\nSABATO 9 MAGGIO:\r\nS. Messe: ore 8.00 (Chiesa del Crocifisso) - ore 16.45 (prefestiva alla casa protetta) a MEDICINA\r\n<em>Ore 20.00 S. Messa (prefestiva) a VILLA FONTANA</em>\r\nDOMENICA 10 MAGGIO:\r\nOre 8.00 S Messa (Chiesa dell’Ospedale) a MEDICINA\r\n<em>Ore 9.00 S.Messa a VILLA FONTANA</em>\r\n<em>Ore 11.00 S. Messa a VILLA FONTANA</em>\r\n<em>Ore 15 recita del Rosario a VILLA FONTANA</em>\r\n\r\n<strong>AVVISI</strong>\r\n\r\nPer le confessioni rivolgersi a Medicina il giovedì mattina o il sabato dalle ore 18.00\r\nIMPORTANTE: Si avvisa fin da ora che per le Rogazioni della prossima settimana, la tradizionale S. Messa con processione del venerdì sera (zona via di Villa Fontana) sarà anticipata al mercoledì 13/05 sempre alle ore 20.30.', 'Celebrazioni liturgiche della settimana', '', 'inherit', 'open', 'open', '', '50-revision-v1', '', '', '2015-05-05 14:03:14', '2015-05-05 12:03:14', '', 50, 'http://www.parrocchia-villafontana.it/50-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2015-05-05 14:05:31', '2015-05-05 12:05:31', 'Durante la settimana le celebrazioni liturgiche subiranno le seguenti modifiche:\r\n\r\nMARTEDÌ 5 MAGGIO: S. Messe: ore 7.00 (dalle suore) - 19.00 a MEDICINA\r\nMERCOLEDÌ 6 MAGGIO: S. Messa: ore 20 (dei giovani) a MEDICINA\r\nGIOVEDÌ 7 MAGGIO: S. Messe: ore 8.00 - 9.00 a MEDICINA\r\nVENERDÌ 8 MAGGIO: S. Messe: ore 8.00 a MEDICINA\r\nSABATO 9 MAGGIO:\r\nS. Messe: ore 8.00 (Chiesa del Crocifisso) - ore 16.45 (prefestiva alla casa protetta) a MEDICINA\r\n<em>Ore 20.00 S. Messa (prefestiva) a VILLA FONTANA</em>\r\nDOMENICA 10 MAGGIO:\r\nOre 8.00 S Messa (Chiesa dell’Ospedale) a MEDICINA\r\n<em>Ore 9.00 S.Messa a VILLA FONTANA</em>\r\n<em>Ore 11.00 S. Messa a VILLA FONTANA</em>\r\n<em>Ore 15 recita del Rosario a VILLA FONTANA</em>\r\n\r\n<strong>AVVISI</strong>\r\n\r\nPer le confessioni rivolgersi a Medicina il giovedì mattina o il sabato dalle ore 18.00.\r\nIMPORTANTE: Si avvisa fin da ora che per le Rogazioni della prossima settimana, la tradizionale S. Messa con processione del venerdì sera (zona via di Villa Fontana) sarà anticipata al mercoledì 13/05 sempre alle ore 20.30.', 'Celebrazioni liturgiche della settimana', '', 'inherit', 'open', 'open', '', '50-revision-v1', '', '', '2015-05-05 14:05:31', '2015-05-05 12:05:31', '', 50, 'http://www.parrocchia-villafontana.it/50-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_parrocchiaterm_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_parrocchiaterm_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `wp_parrocchiaterm_relationships`
--

INSERT INTO `wp_parrocchiaterm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 2, 0),
(6, 2, 0),
(11, 2, 0),
(50, 3, 0),
(16, 4, 0),
(25, 3, 0),
(29, 4, 0),
(16, 7, 0),
(37, 4, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_parrocchiaterm_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_parrocchiaterm_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dump dei dati per la tabella `wp_parrocchiaterm_taxonomy`
--

INSERT INTO `wp_parrocchiaterm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'category', '', 0, 2),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 0),
(6, 6, 'post_tag', '', 0, 0),
(7, 7, 'post_tag', '', 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_parrocchiaterms`
--

CREATE TABLE IF NOT EXISTS `wp_parrocchiaterms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `name` (`name`(191)),
  KEY `slug` (`slug`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dump dei dati per la tabella `wp_parrocchiaterms`
--

INSERT INTO `wp_parrocchiaterms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Senza categoria', 'senza-categoria', 0),
(2, 'Principale', 'principale', 0),
(3, 'News', 'news', 0),
(4, 'Bollettini parrocchiali', 'bollettini-parrocchiali', 0),
(5, 'Vita in parrocchia', 'vita-in-parrocchia', 0),
(6, 'calendario liturgico', 'calendario-liturgico', 0),
(7, 'editoriale', 'editoriale', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_parrocchiausermeta`
--

CREATE TABLE IF NOT EXISTS `wp_parrocchiausermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dump dei dati per la tabella `wp_parrocchiausermeta`
--

INSERT INTO `wp_parrocchiausermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'gabriele'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_parrocchiacapabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_parrocchiauser_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp330_toolbar,wp330_saving_widgets,wp340_choose_image_from_library,wp340_customize_current_theme_link,wp350_media,wp360_revisions,wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_parrocchiadashboard_quick_press_last_post_id', '3'),
(15, 1, 'session_tokens', 'a:2:{s:64:"b92e0042d195b64456f10f9e79f529f4a36ff2ba233a92a0314c167fb32068b7";a:4:{s:10:"expiration";i:1430834112;s:2:"ip";s:12:"79.42.48.198";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36";s:5:"login";i:1430661312;}s:64:"4a376ea3b169c6975d9999977856caae8d700d303ec91d6b761d2436cdf3cb72";a:4:{s:10:"expiration";i:1430840079;s:2:"ip";s:12:"79.42.48.198";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36";s:5:"login";i:1430667279;}}'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'wp_parrocchiauser-settings', 'editor=tinymce&posts_list_mode=list&libraryContent=browse&mfold=f'),
(20, 1, 'wp_parrocchiauser-settings-time', '1430827391'),
(21, 2, 'nickname', 'jessica'),
(22, 2, 'first_name', ''),
(23, 2, 'last_name', ''),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'wp_parrocchiacapabilities', 'a:1:{s:13:"administrator";b:1;}'),
(31, 2, 'wp_parrocchiauser_level', '10'),
(32, 2, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(33, 2, 'session_tokens', 'a:1:{s:64:"8bc76863cc0317713c991c4026e47e72b3519d76b9e0274ed87ebe3fad28a5b9";a:4:{s:10:"expiration";i:1430839357;s:2:"ip";s:12:"79.42.48.198";s:2:"ua";s:119:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.90 Safari/537.36";s:5:"login";i:1430666557;}}'),
(34, 2, 'wp_parrocchiadashboard_quick_press_last_post_id', '39'),
(35, 2, 'wp_parrocchiauser-settings', 'editor=html'),
(36, 2, 'wp_parrocchiauser-settings-time', '1430667727'),
(37, 2, 'nav_menu_recently_edited', '2'),
(38, 2, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(39, 2, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}');

-- --------------------------------------------------------

--
-- Struttura della tabella `wp_parrocchiausers`
--

CREATE TABLE IF NOT EXISTS `wp_parrocchiausers` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dump dei dati per la tabella `wp_parrocchiausers`
--

INSERT INTO `wp_parrocchiausers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'gabriele', '$P$BIAxFW0uI9dWyUKpMX7/Atip1KfBYN.', 'gabriele', 'gabrielemorlini@gmail.com', '', '2015-05-01 14:16:52', '', 0, 'gabriele'),
(2, 'jessica', '$P$BMTXkQs9FYxjSCHyMfs/RrpZ6L7Mlu/', 'jessica', 'jessicatassinari06@gmail.com', '', '2015-05-01 15:39:46', '', 0, 'jessica');
--
-- Database: `Sql803467_2`
--
CREATE DATABASE `Sql803467_2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Sql803467_2`;
--
-- Database: `Sql803467_3`
--
CREATE DATABASE `Sql803467_3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Sql803467_3`;
--
-- Database: `Sql803467_4`
--
CREATE DATABASE `Sql803467_4` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Sql803467_4`;
--
-- Database: `Sql803467_5`
--
CREATE DATABASE `Sql803467_5` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `Sql803467_5`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
