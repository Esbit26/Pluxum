-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2023 a las 18:03:27
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `picb9yvbk45s5vtke8`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_not_verified`
--

CREATE TABLE `users_not_verified` (
  `user_idsp` int(24) NOT NULL,
  `user_namesp` varchar(255) NOT NULL,
  `user_lastnsp` varchar(255) NOT NULL,
  `user_birthsp` date NOT NULL,
  `user_emailsp` varchar(255) NOT NULL,
  `user_passsp` varchar(64) NOT NULL,
  `user_idunsp` varchar(32) NOT NULL,
  `user_countrysp` varchar(120) NOT NULL,
  `user_phonesp` varchar(20) NOT NULL,
  `user_gensp` enum('Masculino','Femenino','Otro','') NOT NULL,
  `intentos_fallidos` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `users_not_verified`
--

INSERT INTO `users_not_verified` (`user_idsp`, `user_namesp`, `user_lastnsp`, `user_birthsp`, `user_emailsp`, `user_passsp`, `user_idunsp`, `user_countrysp`, `user_phonesp`, `user_gensp`, `intentos_fallidos`) VALUES
(1, 'Camilo', 'Ortega', '1998-12-28', 'saltyhaddock00@gmail.com', '$2y$10$YjsOygSDYTXUB.i1NbILZ..6nBBvE/lPA0uuVHgHKC/YtNsV8FvCy', '', 'Estados Unidos', '3163910043', 'Masculino', 0),
(3, 'Nicolas', 'Rodriguez', '1998-10-01', 'nicolasrg98@gmail.com', '$2y$10$swKkVGhf5zDgunbzFSzz4uvIbF1MBf1qHEd7VlD.g2weZk7OGy6ZO', '6514d8411e5d1', 'Estados Unidos', '3022422512', 'Masculino', 0),
(5, 'Lisle Adriana', 'Garcia Millan', '1985-01-24', 'lislecita@hotmail.com', '$2y$10$F.tZgUil6Uy./2YcMm3OQu3D9u/L2yUkOce6d9KdCHmD.smRg3ybO', '65158f6be6b1a', 'Colombia', '3163910044', 'Femenino', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users_verified`
--

CREATE TABLE `users_verified` (
  `user_idsp` int(11) NOT NULL,
  `user_namesp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_lastnsp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_birthsp` date NOT NULL,
  `user_emailsp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_passsp` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_idunsp` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_countrysp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_phonesp` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_gensp` enum('Masculino','Femenino','Otro','') CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_addresssp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_accountsp` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_typeaccsp` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_banksp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_walletsp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci DEFAULT NULL,
  `user_docpicsp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_usdocpicsp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_secquesp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_countryidsp` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `intentos_fallidos` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://es.wordpress.org/', '', '2023-09-27 23:26:15', '2023-09-27 21:26:15', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita en el escritorio la pantalla de comentarios.\nLos avatares de los comentaristas provienen de <a href=\"https://es.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Sphere - PLUXUM', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'saltyhaddock00@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'zero', 'yes'),
(41, 'stylesheet', 'zero', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(80, 'timezone_string', 'Europe/Madrid', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1711401974', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '1', 'yes'),
(102, 'WPLANG', 'es_ES', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:160:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Entradas recientes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:233:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentarios recientes</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:151:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorías</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:6:{i:1697837175;a:6:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697837197;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1697837199;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698269180;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1698355575;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(121, '_transient_wp_core_block_css_files', 'a:496:{i:0;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/archives/editor.css\";i:3;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/archives/editor.min.css\";i:4;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/archives/style-rtl.css\";i:5;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/archives/style.css\";i:7;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/archives/style.min.css\";i:8;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/audio/editor.css\";i:11;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/audio/editor.min.css\";i:12;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/audio/style-rtl.css\";i:13;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/audio/style.css\";i:15;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/audio/style.min.css\";i:16;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/audio/theme.css\";i:19;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/audio/theme.min.css\";i:20;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:62:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/avatar/editor.css\";i:23;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/avatar/editor.min.css\";i:24;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/avatar/style.css\";i:27;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/avatar/style.min.css\";i:28;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/block/editor-rtl.css\";i:29;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/block/editor.css\";i:31;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/block/editor.min.css\";i:32;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/button/editor-rtl.css\";i:33;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:62:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/button/editor.css\";i:35;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/button/editor.min.css\";i:36;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/button/style-rtl.css\";i:37;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/button/style.css\";i:39;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/button/style.min.css\";i:40;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/buttons/editor.css\";i:43;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/buttons/editor.min.css\";i:44;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:62:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/buttons/style.css\";i:47;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/buttons/style.min.css\";i:48;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/calendar/style.css\";i:51;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/calendar/style.min.css\";i:52;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/categories/editor.css\";i:55;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/categories/editor.min.css\";i:56;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/categories/style-rtl.css\";i:57;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/categories/style.css\";i:59;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/categories/style.min.css\";i:60;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/code/editor-rtl.css\";i:61;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/code/editor.css\";i:63;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/code/editor.min.css\";i:64;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/code/style-rtl.css\";i:65;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:59:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/code/style.css\";i:67;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/code/style.min.css\";i:68;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/code/theme-rtl.css\";i:69;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:59:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/code/theme.css\";i:71;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/code/theme.min.css\";i:72;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/columns/editor.css\";i:75;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/columns/editor.min.css\";i:76;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/columns/style-rtl.css\";i:77;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:62:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/columns/style.css\";i:79;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/columns/style.min.css\";i:80;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:78:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comment-content/style.css\";i:83;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comment-content/style.min.css\";i:84;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:79:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comment-template/style.css\";i:87;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comment-template/style.min.css\";i:88;s:87:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:91:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:83:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:87:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:79:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:83:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:79:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:78:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:82:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-pagination/style.css\";i:99;s:78:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:78:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-title/editor.css\";i:103;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments/editor.css\";i:107;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments/editor.min.css\";i:108;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments/style-rtl.css\";i:109;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments/style.css\";i:111;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/comments/style.min.css\";i:112;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/cover/editor.css\";i:115;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/cover/editor.min.css\";i:116;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/cover/style-rtl.css\";i:117;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/cover/style.css\";i:119;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/cover/style.min.css\";i:120;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/details/editor-rtl.css\";i:121;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/details/editor.css\";i:123;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/details/editor.min.css\";i:124;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/details/style-rtl.css\";i:125;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:62:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/details/style.css\";i:127;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/details/style.min.css\";i:128;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/embed/editor.css\";i:131;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/embed/editor.min.css\";i:132;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/embed/style-rtl.css\";i:133;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/embed/style.css\";i:135;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/embed/style.min.css\";i:136;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/embed/theme.css\";i:139;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/embed/theme.min.css\";i:140;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/file/editor-rtl.css\";i:141;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/file/editor.css\";i:143;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/file/editor.min.css\";i:144;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/file/style-rtl.css\";i:145;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:59:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/file/style.css\";i:147;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/file/style.min.css\";i:148;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/footnotes/style.css\";i:151;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/footnotes/style.min.css\";i:152;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/freeform/editor.css\";i:155;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/freeform/editor.min.css\";i:156;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/gallery/editor.css\";i:159;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/gallery/editor.min.css\";i:160;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:62:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/gallery/style.css\";i:163;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/gallery/style.min.css\";i:164;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:62:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/gallery/theme.css\";i:167;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/gallery/theme.min.css\";i:168;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/group/editor-rtl.css\";i:169;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/group/editor.css\";i:171;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/group/editor.min.css\";i:172;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/group/style-rtl.css\";i:173;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/group/style.css\";i:175;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/group/style.min.css\";i:176;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/group/theme-rtl.css\";i:177;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/group/theme.css\";i:179;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/group/theme.min.css\";i:180;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/heading/style-rtl.css\";i:181;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:62:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/heading/style.css\";i:183;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/heading/style.min.css\";i:184;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/html/editor-rtl.css\";i:185;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/html/editor.css\";i:187;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/html/editor.min.css\";i:188;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/image/editor-rtl.css\";i:189;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/image/editor.css\";i:191;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/image/editor.min.css\";i:192;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/image/style-rtl.css\";i:193;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/image/style.css\";i:195;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/image/style.min.css\";i:196;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/image/theme-rtl.css\";i:197;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/image/theme.css\";i:199;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/image/theme.min.css\";i:200;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:78:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/latest-comments/style.css\";i:203;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:76:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/latest-posts/editor.css\";i:207;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/latest-posts/style.css\";i:211;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/list/style-rtl.css\";i:213;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:59:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/list/style.css\";i:215;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/list/style.min.css\";i:216;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/media-text/editor.css\";i:219;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/media-text/editor.min.css\";i:220;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/media-text/style.css\";i:223;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/media-text/style.min.css\";i:224;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/more/editor-rtl.css\";i:225;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/more/editor.css\";i:227;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/more/editor.min.css\";i:228;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:79:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation-link/editor.css\";i:231;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:78:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation-link/style.css\";i:235;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:78:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:82:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:78:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation/editor.css\";i:243;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation/editor.min.css\";i:244;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation/style.css\";i:247;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/navigation/style.min.css\";i:248;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/nextpage/editor.css\";i:251;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/page-list/editor.css\";i:255;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/page-list/editor.min.css\";i:256;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/page-list/style.css\";i:259;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/page-list/style.min.css\";i:260;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/paragraph/editor.css\";i:263;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/paragraph/style.css\";i:267;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/paragraph/style.min.css\";i:268;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-author/style.css\";i:271;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-author/style.min.css\";i:272;s:78:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:82:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:78:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:77:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:81:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-comments-form/style.css\";i:279;s:77:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-date/style.css\";i:283;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-date/style.min.css\";i:284;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:76:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-excerpt/style.css\";i:291;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:79:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:83:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:79:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:78:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:82:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-featured-image/style.css\";i:299;s:78:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:79:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:83:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:79:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:77:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-template/editor.css\";i:307;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-template/editor.min.css\";i:308;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:76:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-template/style.css\";i:311;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-template/style.min.css\";i:312;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-terms/style.css\";i:315;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-terms/style.min.css\";i:316;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-title/style.css\";i:319;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/post-title/style.min.css\";i:320;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/preformatted/style.css\";i:323;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/preformatted/style.min.css\";i:324;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/pullquote/editor.css\";i:327;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/pullquote/style.css\";i:331;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/pullquote/style.min.css\";i:332;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/pullquote/theme.css\";i:335;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:84:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:88:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:80:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:84:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:76:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:80:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-pagination/editor.css\";i:343;s:76:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:79:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-pagination/style.css\";i:347;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-title/style.css\";i:351;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query-title/style.min.css\";i:352;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query/editor-rtl.css\";i:353;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query/editor.css\";i:355;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/query/editor.min.css\";i:356;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/quote/style-rtl.css\";i:357;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/quote/style.css\";i:359;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/quote/style.min.css\";i:360;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/quote/theme.css\";i:363;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/quote/theme.min.css\";i:364;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/read-more/style.css\";i:367;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/read-more/style.min.css\";i:368;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:59:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/rss/editor.css\";i:371;s:63:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/rss/editor.min.css\";i:372;s:62:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/rss/style-rtl.css\";i:373;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:58:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/rss/style.css\";i:375;s:62:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/rss/style.min.css\";i:376;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/search/editor-rtl.css\";i:377;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:62:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/search/editor.css\";i:379;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/search/editor.min.css\";i:380;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/search/style-rtl.css\";i:381;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/search/style.css\";i:383;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/search/style.min.css\";i:384;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/search/theme-rtl.css\";i:385;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/search/theme.css\";i:387;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/search/theme.min.css\";i:388;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/separator/editor.css\";i:391;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/separator/editor.min.css\";i:392;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/separator/style-rtl.css\";i:393;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/separator/style.css\";i:395;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/separator/style.min.css\";i:396;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/separator/theme.css\";i:399;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/separator/theme.min.css\";i:400;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/shortcode/editor.css\";i:403;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-logo/editor.css\";i:407;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-logo/style.css\";i:411;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-logo/style.min.css\";i:412;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:76:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-tagline/editor.css\";i:415;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:74:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-title/editor.css\";i:419;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-title/editor.min.css\";i:420;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-title/style.css\";i:423;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/site-title/style.min.css\";i:424;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/social-link/editor.css\";i:427;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/social-link/editor.min.css\";i:428;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:76:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/social-links/editor.css\";i:431;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/social-links/editor.min.css\";i:432;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/social-links/style.css\";i:435;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/social-links/style.min.css\";i:436;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:70:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:62:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/spacer/editor.css\";i:439;s:66:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/spacer/editor.min.css\";i:440;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/spacer/style.css\";i:443;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/spacer/style.min.css\";i:444;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/table/editor-rtl.css\";i:445;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/table/editor.css\";i:447;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/table/editor.min.css\";i:448;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/table/style-rtl.css\";i:449;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/table/style.css\";i:451;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/table/style.min.css\";i:452;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/table/theme-rtl.css\";i:453;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/table/theme.css\";i:455;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/table/theme.min.css\";i:456;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/tag-cloud/style.css\";i:459;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:77:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/template-part/editor.css\";i:463;s:73:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/template-part/editor.min.css\";i:464;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:76:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/template-part/theme.css\";i:467;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/template-part/theme.min.css\";i:468;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:79:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/term-description/style.css\";i:471;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/term-description/style.min.css\";i:472;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:76:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/text-columns/editor.css\";i:475;s:72:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:75:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:67:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/text-columns/style.css\";i:479;s:71:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/text-columns/style.min.css\";i:480;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/verse/style-rtl.css\";i:481;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/verse/style.css\";i:483;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/verse/style.min.css\";i:484;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/video/editor-rtl.css\";i:485;s:69:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:61:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/video/editor.css\";i:487;s:65:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/video/editor.min.css\";i:488;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/video/style-rtl.css\";i:489;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/video/style.css\";i:491;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/video/style.min.css\";i:492;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/video/theme-rtl.css\";i:493;s:68:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:60:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/video/theme.css\";i:495;s:64:\"C:/xampp/htdocs/wordpress/wp-includes/blocks/video/theme.min.css\";}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1695850457;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(126, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:26:\"Verificación SSL fallida.\";}s:19:\"bad_response_source\";a:1:{i:0;s:50:\"Parece que la respuesta no proviene de este sitio.\";}}', 'yes'),
(147, 'can_compress_scripts', '1', 'yes'),
(158, 'recently_activated', 'a:0:{}', 'yes'),
(161, 'finished_updating_comment_type', '1', 'yes'),
(165, 'theme_mods_zero', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(166, 'current_theme', 'Zero Theme', 'yes'),
(167, 'theme_switched', '', 'yes'),
(183, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":5,\"critical\":1}', 'yes'),
(254, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"saltyhaddock00@gmail.com\";s:7:\"version\";s:5:\"6.3.2\";s:9:\"timestamp\";i:1697202887;}', 'no'),
(271, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.3.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1697835453;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(272, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697835454;s:7:\"checked\";a:4:{s:15:\"twentytwentyone\";s:3:\"1.9\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";s:4:\"zero\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(279, '_site_transient_timeout_theme_roots', '1697837243', 'no'),
(280, '_site_transient_theme_roots', 'a:5:{s:12:\"pluxum-theme\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:4:\"zero\";s:7:\"/themes\";}', 'no'),
(281, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1698440244', 'no'),
(282, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(284, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697835455;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.3.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"5.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-09-27 23:26:15', '2023-09-27 21:26:15', '<!-- wp:paragraph -->\n<p>Te damos la bienvenida a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2023-09-27 23:26:15', '2023-09-27 21:26:15', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2023-09-27 23:26:15', '2023-09-27 21:26:15', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Hola! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/wordpress/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2023-09-27 23:26:15', '2023-09-27 21:26:15', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-09-27 23:26:15', '2023-09-27 21:26:15', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>La dirección de nuestra web es: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentarios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Medios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contenido incrustado de otros sitios web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si solicitas un restablecimiento de contraseña, tu dirección IP será incluida en el correo electrónico de restablecimiento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde se envían tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2023-09-27 23:26:15', '2023-09-27 21:26:15', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-09-27 23:26:16', '2023-09-27 21:26:16', '<!-- wp:page-list /-->', 'Navegación', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-09-27 23:26:16', '2023-09-27 21:26:16', '', 0, 'https://localhost/wordpress/2023/09/27/navigation/', 0, 'wp_navigation', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"8b300279f844b3a36c7aca15aa948ce3ea31741900e43ddb86892b506e998de3\";a:4:{s:10:\"expiration\";i:1696022797;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36\";s:5:\"login\";i:1695849997;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B5LwY4MwqspcKu9KcoS5/bDn703CgO.', 'admin', 'saltyhaddock00@gmail.com', 'http://localhost/wordpress', '2023-09-27 21:26:15', '', 0, 'admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users_not_verified`
--
ALTER TABLE `users_not_verified`
  ADD PRIMARY KEY (`user_idsp`),
  ADD UNIQUE KEY `user_emailsp` (`user_emailsp`),
  ADD UNIQUE KEY `user_idunsp` (`user_idunsp`);

--
-- Indices de la tabla `users_verified`
--
ALTER TABLE `users_verified`
  ADD PRIMARY KEY (`user_idsp`),
  ADD UNIQUE KEY `user_emailsp` (`user_emailsp`),
  ADD UNIQUE KEY `user_idunsp` (`user_idunsp`);

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users_not_verified`
--
ALTER TABLE `users_not_verified`
  MODIFY `user_idsp` int(24) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users_verified`
--
ALTER TABLE `users_verified`
  MODIFY `user_idsp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
