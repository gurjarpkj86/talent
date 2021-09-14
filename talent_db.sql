-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2021 at 03:40 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `talent_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogins`
--

CREATE TABLE `adminlogins` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(5) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogins`
--

INSERT INTO `adminlogins` (`id`, `username`, `password`, `status`, `created_at`) VALUES
(1, 'webadmin', 'webadmin', 1, '2021-09-14 07:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_datetime` datetime NOT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 => InActive, 1 => Published, 2 => Draft, 3 => Scheduled',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `name`, `publish_datetime`, `featured_image`, `content`, `meta_title`, `cannonical_link`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'distinctio autem id', '1994-08-24 10:32:23', NULL, 'Ut in consequatur consectetur amet aut. Iure tenetur quisquam illum odio aliquid qui. Blanditiis dignissimos minima officiis vel. Quidem iure consequatur deserunt minima enim.', 'distinctio quia unde', 'http://www.carter.net/', 'consequatur-et-dicta-modi', 'Quo quo qui occaecati incidunt exercitationem. Expedita odit aperiam et consectetur nesciunt nostrum. Omnis deleniti ipsam architecto tempora amet.', 'aut', 3, 5, NULL, '2021-09-01 05:45:35', '2021-09-01 05:45:35', NULL),
(2, 'deleniti et quaerat', '1992-11-08 12:30:41', NULL, 'Mollitia beatae aut et qui minima quis. Dolor nostrum deserunt possimus. Mollitia perspiciatis repellendus ab ut. Fuga consequuntur odio aliquid ut soluta repudiandae eius cupiditate.', 'blanditiis adipisci magnam', 'http://www.beer.com/neque-occaecati-voluptatem-deserunt-atque-ad', 'beatae-impedit-est-autem-eius', 'Recusandae aut consectetur odio iste et odit. Dolores maxime dolore deserunt facilis tempora nobis dolorem occaecati. Nam saepe perspiciatis nobis et esse asperiores. Adipisci et deleniti vitae ullam est eligendi consequatur.', 'quaerat', 0, 5, NULL, '2021-09-01 05:45:35', '2021-09-01 05:45:35', NULL),
(3, 'officiis assumenda est', '2008-06-08 15:15:16', NULL, 'Atque delectus natus sint temporibus nesciunt culpa similique. Consequuntur suscipit neque saepe facilis. Quidem vero rerum ducimus dolores maxime repudiandae.', 'quis quibusdam possimus', 'http://keeling.com/', 'molestiae-quidem-possimus-perspiciatis-possimus-non', 'Excepturi dolorum facere atque autem ut quae. Quibusdam ipsam quis non enim ad asperiores ducimus. Asperiores dolorum libero rerum et. Inventore nam sunt nostrum consequatur.', 'ut', 3, 5, NULL, '2021-09-01 05:45:35', '2021-09-01 05:45:35', NULL),
(4, 'aut qui quis', '1974-12-16 06:54:22', NULL, 'Quia voluptatem dolores excepturi. Eos at ratione eius ut aliquam. Minima hic ipsum nihil soluta vero commodi. Rerum ut dolore rerum aut qui.', 'occaecati vero distinctio', 'https://cormier.com/repellendus-architecto-amet-sequi-est-inventore-fugit-aspernatur-dolores.html', 'consequatur-culpa-mollitia-recusandae-dolorum-voluptas-consequatur-voluptate', 'Alias neque aperiam vitae neque qui rem. Magni voluptatem cumque quo et totam. Veritatis ut maiores dolore totam fugit minima a delectus.', 'nobis', 2, 5, NULL, '2021-09-01 05:45:36', '2021-09-01 05:45:36', NULL),
(5, 'eos voluptas est', '1985-03-31 12:21:00', NULL, 'Molestiae ut esse doloribus. Eius rerum vel quia qui repellendus. Repellendus eum nobis voluptatum consequatur maxime qui.', 'facilis qui facilis', 'http://www.crona.com/repellat-hic-ea-provident-alias-ea-quia.html', 'possimus-qui-ut-velit-reiciendis-eveniet-quia', 'Reiciendis voluptas consequatur enim ipsam dolores sed tempore. Expedita et quod exercitationem officia exercitationem. Aperiam omnis qui facere incidunt nostrum. Qui quia architecto necessitatibus temporibus sit iste voluptatem.', 'voluptatum', 3, 5, NULL, '2021-09-01 05:45:36', '2021-09-01 05:45:36', NULL),
(6, 'odio minus sunt', '2013-09-08 18:17:43', NULL, 'Aliquam commodi voluptate qui corporis. Molestiae qui facere aut aut dolor.', 'ducimus iste sint', 'https://www.hudson.com/consequatur-labore-molestiae-minus-fuga', 'cum-veritatis-tempora-sequi-impedit-error', 'Porro aperiam eos quidem voluptatum mollitia. Exercitationem reprehenderit in nesciunt iste aut iusto. Repellat facilis enim sit.', 'enim', 0, 5, NULL, '2021-09-01 05:45:36', '2021-09-01 05:45:36', NULL),
(7, 'sed et dolore', '1976-07-29 18:44:02', NULL, 'Dolores iure est velit ad temporibus nam. Voluptatem et accusamus provident reprehenderit voluptatibus est cum. Quisquam ut quia enim minus est illum voluptatibus.', 'consequatur earum vel', 'https://grady.com/dolor-sed-voluptatibus-eos-ullam.html', 'earum-explicabo-eaque-nobis-animi', 'Velit ex debitis ut pariatur doloremque qui et aut. Harum quibusdam quia velit ut et distinctio. Beatae sed eum minus et deleniti a modi.', 'suscipit', 1, 5, NULL, '2021-09-01 05:45:36', '2021-09-01 05:45:36', NULL),
(8, 'voluptatem est saepe', '2020-08-26 21:23:01', NULL, 'Consequatur veniam est velit cupiditate labore omnis cum eveniet. Aliquam quo dolores non maxime. Molestiae quam labore minus alias rerum dicta at nam.', 'exercitationem enim distinctio', 'http://www.mclaughlin.net/dolor-et-cupiditate-in-quos-aut-magnam-quia', 'amet-natus-ducimus-laboriosam-accusantium-labore-ratione', 'Voluptates error qui vero dicta placeat sequi esse. Cum autem et neque consequatur eveniet. Nobis voluptas libero et optio. Quis molestias porro corporis laborum.', 'dolor', 2, 5, NULL, '2021-09-01 05:45:36', '2021-09-01 05:45:36', NULL),
(9, 'nulla atque et', '1984-05-23 01:27:07', NULL, 'Aut ut aspernatur aspernatur ut. Eum quia a quidem commodi. Quam pariatur similique sit est deleniti modi. Quia voluptates corporis exercitationem non magni id doloremque est.', 'praesentium dolore omnis', 'http://www.wyman.net/atque-mollitia-necessitatibus-culpa-repudiandae-quisquam-consequuntur-facere.html', 'consectetur-sed-sint-expedita-nulla-iusto-sint-aut', 'Quo ut odit eius ipsa vel. Magni a minus voluptatibus sed molestiae voluptatem.', 'fuga', 0, 5, NULL, '2021-09-01 05:45:36', '2021-09-01 05:45:36', NULL),
(10, 'distinctio alias eligendi', '1992-07-30 07:44:46', NULL, 'Deserunt sed necessitatibus placeat. Et quo ratione et excepturi. Sit sit delectus eius. Architecto quasi ipsam et dignissimos nulla magnam sit sed.', 'dolores voluptatem et', 'http://wolf.net/quaerat-reprehenderit-culpa-earum-minima-eum-inventore', 'iste-culpa-assumenda-nam-nihil-quo-sint', 'Exercitationem dicta id deserunt sunt vel eos. Esse sit vel veniam. Labore ut autem maiores dicta illo. Repellat et cum amet quam. Eius praesentium qui quas tempore et laborum.', 'laudantium', 2, 5, NULL, '2021-09-01 05:45:36', '2021-09-01 05:45:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'est doloremque tenetur', 1, 5, NULL, '2021-09-01 05:45:36', '2021-09-01 05:45:36', NULL),
(2, 'veniam magni maiores', 1, 5, NULL, '2021-09-01 05:45:36', '2021-09-01 05:45:36', NULL),
(3, 'non dolores quibusdam', 0, 5, NULL, '2021-09-01 05:45:37', '2021-09-01 05:45:37', NULL),
(4, 'quo delectus odit', 1, 5, NULL, '2021-09-01 05:45:37', '2021-09-01 05:45:37', NULL),
(5, 'harum vel et', 1, 5, NULL, '2021-09-01 05:45:38', '2021-09-01 05:45:38', NULL),
(6, 'quia molestias voluptatum', 1, 5, NULL, '2021-09-01 05:45:38', '2021-09-01 05:45:38', NULL),
(7, 'modi sit doloribus', 0, 5, NULL, '2021-09-01 05:45:38', '2021-09-01 05:45:38', NULL),
(8, 'voluptas tempore rerum', 1, 5, NULL, '2021-09-01 05:45:39', '2021-09-01 05:45:39', NULL),
(9, 'aut distinctio debitis', 0, 5, NULL, '2021-09-01 05:45:39', '2021-09-01 05:45:39', NULL),
(10, 'unde vel est', 1, 5, NULL, '2021-09-01 05:45:39', '2021-09-01 05:45:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_map_categories`
--

CREATE TABLE `blog_map_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_map_categories`
--

INSERT INTO `blog_map_categories` (`id`, `blog_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `blog_map_tags`
--

CREATE TABLE `blog_map_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_map_tags`
--

INSERT INTO `blog_map_tags` (`id`, `blog_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `blog_tags`
--

CREATE TABLE `blog_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_tags`
--

INSERT INTO `blog_tags` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'et', 1, 5, NULL, '2021-09-01 05:45:36', '2021-09-01 05:45:36', NULL),
(2, 'aut', 1, 5, NULL, '2021-09-01 05:45:37', '2021-09-01 05:45:37', NULL),
(3, 'molestiae', 0, 5, NULL, '2021-09-01 05:45:37', '2021-09-01 05:45:37', NULL),
(4, 'qui', 0, 5, NULL, '2021-09-01 05:45:38', '2021-09-01 05:45:38', NULL),
(5, 'sit', 0, 5, NULL, '2021-09-01 05:45:38', '2021-09-01 05:45:38', NULL),
(6, 'nulla', 0, 5, NULL, '2021-09-01 05:45:38', '2021-09-01 05:45:38', NULL),
(7, 'alias', 1, 5, NULL, '2021-09-01 05:45:38', '2021-09-01 05:45:38', NULL),
(8, 'aperiam', 1, 5, NULL, '2021-09-01 05:45:39', '2021-09-01 05:45:39', NULL),
(9, 'eaque', 0, 5, NULL, '2021-09-01 05:45:39', '2021-09-01 05:45:39', NULL),
(10, 'exercitationem', 0, 5, NULL, '2021-09-01 05:45:39', '2021-09-01 05:45:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `cand_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `cand_first_name` varchar(30) NOT NULL,
  `cand_last_name` varchar(30) NOT NULL,
  `cand_email` varchar(30) NOT NULL,
  `cand_mobile` varchar(20) NOT NULL,
  `cand_jobs` varchar(100) NOT NULL,
  `cand_resume` varchar(100) NOT NULL,
  `cand_dob` varchar(50) NOT NULL,
  `cand_status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`cand_id`, `role_id`, `emp_id`, `cand_first_name`, `cand_last_name`, `cand_email`, `cand_mobile`, `cand_jobs`, `cand_resume`, `cand_dob`, `cand_status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'jerry', 'pollock', 'jerry@gmail.com', '9874656325', 'php', 'jerry.doc', '1984-03-24', 1, '2021-09-14 12:24:29', '2021-09-14 12:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int(11) NOT NULL,
  `domain_name` varchar(50) NOT NULL,
  `domain_url` varchar(150) NOT NULL,
  `domain_description` mediumtext NOT NULL,
  `status` tinyint(10) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `domain_name`, `domain_url`, `domain_description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'yahood', 'http://yahoo.in.co', 'Domain Description Just Test', 1, '2021-09-02 10:56:03', '2021-09-02 05:26:03', '2021-09-02 05:26:03'),
(4, 'google.com', 'http://google,com', 'domain description', 1, '2021-09-03 11:12:08', '2021-09-03 05:42:08', '2021-09-03 05:42:08'),
(5, 'Talent Demo', 'https://www.talent.com/', 'https://www.google.com/', 1, '2021-08-30 11:36:40', '2021-08-30 06:06:40', NULL),
(6, 'Talent Name', 'http://talent,com', '<p>Domain Description</p>', 0, '2021-09-03 11:12:28', '2021-09-03 05:42:28', NULL),
(7, 'test domain123', 'http://test.in', 'Domain Description', 1, '2021-09-14 07:30:59', '2021-09-14 02:00:59', '2021-09-14 02:00:59'),
(8, 'yahoo', 'http://yahoo.in', 'fgagag', 1, '2021-09-02 10:56:14', '2021-09-02 05:26:14', '2021-09-02 05:26:14'),
(9, 'jusytest', 'domainurl', '<p><label class=\"col-md-2 from-control-label required\" for=\"domain_description\">Domain Description</label></p>\r\n<div class=\"col-md-10\">&nbsp;</div>', 1, '2021-09-03 17:27:29', '2021-09-03 11:57:29', NULL),
(10, 'fasfaffa', 'fafaf', '<p>fafafafaf</p>', 1, '2021-09-03 11:11:57', '2021-09-03 05:41:57', '2021-09-03 05:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `title`, `slug`, `content`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Provident cupiditate rerum incidunt et.', 'provident-cupiditate-rerum-incidunt-et', 'Asperiores sed placeat animi maiores cumque. Sint omnis aut at aut. Nisi pariatur vero quasi ullam. Similique et aut dolor repudiandae quis provident eos.', 0, 2, NULL, '2021-08-29 19:50:06', NULL, NULL),
(2, 'Aut maiores laborum maxime.', 'aut-maiores-laborum-maxime', 'Sit rerum suscipit deleniti eligendi doloremque. Eaque commodi omnis non omnis dolorem occaecati.', 1, 1, NULL, '2021-08-22 10:27:36', NULL, NULL),
(3, 'Dolor fugiat consequuntur in est.', 'dolor-fugiat-consequuntur-in-est', 'Est quia cupiditate magnam qui est debitis sit qui. Vel harum consequatur et sequi error. Autem modi quam autem suscipit beatae sunt. Voluptatem omnis esse officia aut et quis autem quia.', 0, 2, NULL, '2021-08-28 12:06:29', NULL, NULL),
(4, 'Quis est distinctio et.', 'quis-est-distinctio-et', 'Nam amet deleniti earum veniam enim voluptas unde pariatur. Eligendi et et doloremque id perferendis dolor possimus. Eum ut ut repudiandae voluptate est libero. Cupiditate quia hic velit inventore sequi voluptatibus ratione.', 0, 2, NULL, '2021-08-22 18:29:35', NULL, NULL),
(5, 'Sed enim blanditiis eaque quis.', 'sed-enim-blanditiis-eaque-quis', 'Laborum temporibus quia consequatur aperiam ea. Nihil expedita vitae esse corporis labore neque et. Beatae nulla velit quo omnis.', 1, 1, NULL, '2021-08-31 17:47:20', NULL, NULL),
(6, 'Vero similique voluptate eos.', 'vero-similique-voluptate-eos', 'Itaque eaque et adipisci dolor id aliquid. Sit et cupiditate facere sunt. Aperiam beatae reiciendis praesentium ab ratione voluptatem velit quia. Voluptas dolore est iure nisi doloremque.', 1, 1, NULL, '2021-08-30 20:10:32', NULL, NULL),
(7, 'Sed qui explicabo voluptate.', 'sed-qui-explicabo-voluptate', 'Neque rem deserunt quis quia minus. Exercitationem velit incidunt placeat nihil dolorum. Perferendis adipisci et nobis. Corporis error maxime tempora totam.', 0, 1, NULL, '2021-08-27 02:17:11', NULL, NULL),
(8, 'Iure nisi fugiat quas enim.', 'iure-nisi-fugiat-quas-enim', 'Impedit asperiores qui hic sit sint. Qui beatae facilis nesciunt rem expedita. Aut hic ab et tenetur ducimus. Tempore quia quos dicta sit velit qui velit.', 0, 1, NULL, '2021-08-31 14:42:40', NULL, NULL),
(9, 'Consequuntur nobis sit quam illo.', 'consequuntur-nobis-sit-quam-illo', 'Veniam voluptas et doloribus sapiente aut. Autem sed sed nesciunt laboriosam ipsa voluptas ut consequuntur. Laboriosam eum quia veritatis repudiandae ullam facilis veniam. Voluptatum aut est sit consequatur aperiam pariatur optio et. Sunt et magni assumenda molestias.', 1, 1, NULL, '2021-08-23 10:57:59', NULL, NULL),
(10, 'Eos aut dolore exercitationem voluptatum.', 'eos-aut-dolore-exercitationem-voluptatum', 'Quia sint consequatur deserunt dolore dolores assumenda consequatur vitae. Error aliquid quia distinctio soluta voluptatem illum. Totam vel tempora aut blanditiis accusantium beatae itaque.', 1, 1, NULL, '2021-08-24 23:32:17', NULL, NULL),
(11, 'Et esse aut eos.', 'et-esse-aut-eos', 'Magni totam nostrum ea totam. Et sit facere animi quas necessitatibus. Voluptates non et officia quis et perferendis vel.', 1, 2, NULL, '2021-08-24 06:14:07', NULL, NULL),
(12, 'Aspernatur autem magnam.', 'aspernatur-autem-magnam', 'Laborum cum consequatur quo mollitia dolorum et. Consequuntur qui voluptatem molestiae aperiam itaque voluptas. Fugit in quo et.', 1, 2, NULL, '2021-08-29 01:19:47', NULL, NULL),
(13, 'Explicabo nostrum dolorem.', 'explicabo-nostrum-dolorem', 'Vel mollitia molestiae quas culpa in consequatur reiciendis sunt. Dolor a qui est molestiae veniam voluptatem cupiditate. Dolor unde ex totam ea qui itaque consectetur quia.', 1, 2, NULL, '2021-08-22 19:30:04', NULL, NULL),
(14, 'Est omnis minima quis et.', 'est-omnis-minima-quis-et', 'Eligendi optio eos blanditiis quidem libero non quo. Ut dignissimos qui quo repudiandae. Quo sit non consequatur recusandae facilis aut. Enim eligendi nam hic incidunt.', 0, 2, NULL, '2021-08-27 04:41:56', NULL, NULL),
(15, 'Vel explicabo qui.', 'vel-explicabo-qui', 'Dolorem sint consequatur et ut illum est mollitia est. Nihil ipsum iste est adipisci omnis. Sit dolorem eligendi consectetur hic omnis laudantium.', 0, 2, NULL, '2021-08-25 10:31:17', NULL, NULL),
(16, 'Ad ut exercitationem voluptates et.', 'ad-ut-exercitationem-voluptates-et', 'Omnis nihil saepe debitis autem. Laudantium in ut eum sapiente vel quisquam. Ipsum iusto dolorem possimus ut.', 1, 2, NULL, '2021-08-25 16:41:59', NULL, NULL),
(17, 'Sit voluptas sed est culpa.', 'sit-voluptas-sed-est-culpa', 'Sed molestiae aut et magnam sint in. Ipsam ducimus vero placeat consectetur consequatur recusandae. Hic totam cupiditate sit voluptatum in.', 1, 1, NULL, '2021-08-29 18:54:38', NULL, NULL),
(18, 'Corporis iusto odio.', 'corporis-iusto-odio', 'Exercitationem sit facilis optio blanditiis vitae. Velit illo veniam vero et maxime eaque. Recusandae cumque distinctio quos at voluptatibus aliquam modi. Commodi ullam fugit et dolor rem.', 1, 2, NULL, '2021-08-23 15:46:41', NULL, NULL),
(19, 'Aliquid minus hic enim.', 'aliquid-minus-hic-enim', 'Quod molestiae sint mollitia velit aut. Dolorem voluptatum sapiente iusto explicabo totam. Ipsa ut corporis ut dignissimos. Voluptatum voluptatem est qui error.', 1, 1, NULL, '2021-08-22 10:09:11', NULL, NULL),
(20, 'Laborum id cum quo officiis harum.', 'laborum-id-cum-quo-officiis-harum', 'Cumque voluptatem enim non. Qui id autem nesciunt est. Beatae nemo eos ea consequatur nostrum tempora. Explicabo sunt odit id explicabo magnam sit reprehenderit.', 0, 2, NULL, '2021-08-25 10:39:22', NULL, NULL),
(21, 'Quidem ipsam qui inventore.', 'quidem-ipsam-qui-inventore', 'Eum est tempore id est. Possimus et provident fugiat alias sed quidem nisi voluptatem. Sit occaecati veniam aut. Nemo laborum voluptas dolor libero. Aut harum voluptatem sapiente cum provident.', 0, 1, NULL, '2021-08-24 05:06:26', NULL, NULL),
(22, 'Nihil pariatur perferendis ab assumenda.', 'nihil-pariatur-perferendis-ab-assumenda', 'Nulla molestias ullam molestiae sequi inventore quam. Alias laborum tempore odio. A eligendi laboriosam qui necessitatibus. Laudantium non maxime quisquam maxime officiis amet sunt.', 1, 2, NULL, '2021-08-28 07:15:08', NULL, NULL),
(23, 'Eum id alias.', 'eum-id-alias', 'Pariatur architecto vero error rem explicabo. Expedita rem labore distinctio sapiente molestiae minima. Voluptatibus eius illo enim numquam.', 0, 2, NULL, '2021-08-24 00:55:17', NULL, NULL),
(24, 'Ut veritatis non.', 'ut-veritatis-non', 'Repellat nam ex eos in et nisi ea ut. Est dolores sapiente laboriosam ut qui beatae rerum incidunt.', 1, 1, NULL, '2021-08-29 04:28:23', NULL, NULL),
(25, 'Quos iure accusantium sed.', 'quos-iure-accusantium-sed', 'Molestias veniam earum quam qui aspernatur. Eum voluptatem molestiae tenetur officia non atque. Qui culpa ducimus placeat doloremque vitae et non. Consequatur nam deserunt nesciunt magni dicta aut. Eveniet animi sed nesciunt nam at molestiae praesentium est.', 0, 1, NULL, '2021-08-26 13:43:11', NULL, NULL),
(26, 'Ea accusantium dolore consequatur enim cupiditate.', 'ea-accusantium-dolore-consequatur-enim-cupiditate', 'Nihil qui enim assumenda magnam ratione pariatur ut. Nobis eius iusto magnam excepturi natus quasi. Incidunt similique nam et repellendus quia.', 1, 2, NULL, '2021-08-31 11:10:35', NULL, NULL),
(27, 'Sed dolorem omnis provident sit.', 'sed-dolorem-omnis-provident-sit', 'Eaque recusandae voluptatem magnam doloremque et. Aut qui ipsa autem reiciendis omnis doloribus. Dolor voluptatum rem voluptatibus quam hic quis. Est assumenda et ut reprehenderit possimus.', 0, 1, NULL, '2021-08-24 22:34:34', NULL, NULL),
(28, 'Porro rerum eveniet asperiores odit.', 'porro-rerum-eveniet-asperiores-odit', 'Molestiae enim voluptas voluptas possimus. Similique ipsa aut architecto non molestiae. Voluptate sed atque ipsam quos veniam nemo.', 0, 1, NULL, '2021-08-31 09:34:08', NULL, NULL),
(29, 'Doloremque quaerat eum reprehenderit.', 'doloremque-quaerat-eum-reprehenderit', 'Voluptatum veniam a est iste recusandae asperiores aliquam. Est quisquam in harum sed voluptatem voluptatem necessitatibus. Est ut cum veniam laudantium suscipit in beatae culpa.', 0, 1, NULL, '2021-08-31 19:51:17', NULL, NULL),
(30, 'Fugiat animi neque molestiae qui sed.', 'fugiat-animi-neque-molestiae-qui-sed', 'Quia ducimus labore est quis itaque. Quasi dignissimos laudantium error rem non dolores. Repellendus unde dolor dolor et quas.', 0, 1, NULL, '2021-08-29 14:06:09', NULL, NULL),
(31, 'Veniam ipsa commodi iusto quibusdam sequi.', 'veniam-ipsa-commodi-iusto-quibusdam-sequi', 'Sint assumenda facilis sunt vero rerum. Eligendi quo maxime consequatur voluptatem. Aut suscipit quia eos id distinctio ea. At magnam qui pariatur vero.', 0, 2, NULL, '2021-08-26 14:59:27', NULL, NULL),
(32, 'Facilis perspiciatis aut.', 'facilis-perspiciatis-aut', 'Fugiat nostrum earum facilis doloribus voluptatem ut ut. Eum quis similique error aliquid. Magnam eos vel ut beatae consequatur. Rem neque aut in.', 1, 2, NULL, '2021-08-27 02:39:20', NULL, NULL),
(33, 'Ad inventore qui sit.', 'ad-inventore-qui-sit', 'Tempore sit facere omnis ut modi sed ullam. Asperiores quis sed perspiciatis quia animi. Vel aspernatur harum vitae alias itaque. Eum porro quo labore sunt.', 0, 1, NULL, '2021-08-27 21:24:46', NULL, NULL),
(34, 'Est ullam beatae et.', 'est-ullam-beatae-et', 'Reiciendis nihil ipsum illum id quos perferendis sed. Ut aut saepe nulla inventore vitae consequuntur natus. Aut sint quam eum. Voluptatem nam omnis explicabo autem quas sunt.', 0, 1, NULL, '2021-08-28 19:36:48', NULL, NULL),
(35, 'Sed et doloremque placeat animi ducimus.', 'sed-et-doloremque-placeat-animi-ducimus', 'Id et non perferendis enim voluptas. Ut labore quae aut vel. Provident ut molestiae odit qui consequatur vitae nostrum.', 0, 2, NULL, '2021-08-24 00:37:02', NULL, NULL),
(36, 'Ut aut aut inventore optio.', 'ut-aut-aut-inventore-optio', 'Consequatur omnis debitis vero itaque. Voluptatibus dicta ut voluptatem autem debitis nisi. Aut nihil quia qui deleniti delectus qui. Consequatur animi alias fugit praesentium.', 1, 2, NULL, '2021-08-22 14:59:04', NULL, NULL),
(37, 'A rerum esse sed.', 'a-rerum-esse-sed', 'At assumenda sint fuga enim est non. Aut a ut impedit voluptate minima dolor consequatur.', 1, 2, NULL, '2021-08-22 18:56:47', NULL, NULL),
(38, 'Quidem quis omnis eum perferendis.', 'quidem-quis-omnis-eum-perferendis', 'Accusantium non et eum aut distinctio repellendus sit. Non ut culpa natus ducimus. Nihil voluptates nemo magnam ut ut eaque cumque. Aut ipsa cumque amet aut quasi.', 0, 2, NULL, '2021-08-23 15:37:49', NULL, NULL),
(39, 'Asperiores libero dolorem laudantium.', 'asperiores-libero-dolorem-laudantium', 'Laudantium dolor a fugiat nihil a voluptas. Mollitia esse cumque fugiat voluptatem dignissimos impedit exercitationem itaque. Veritatis possimus accusantium itaque fugit.', 1, 1, NULL, '2021-08-31 23:41:25', NULL, NULL),
(40, 'Quo dignissimos qui ab aut veniam.', 'quo-dignissimos-qui-ab-aut-veniam', 'Est quidem iste aut maiores fugiat non quia autem. Facere doloremque ratione maxime. Beatae reiciendis harum exercitationem.', 0, 2, NULL, '2021-08-26 05:52:27', NULL, NULL),
(41, 'Dolores fugiat iste quasi quod.', 'dolores-fugiat-iste-quasi-quod', 'Numquam totam tenetur molestiae adipisci id rerum ea. Hic excepturi rerum ratione itaque. Voluptas sint autem occaecati.', 1, 1, NULL, '2021-08-27 01:10:05', NULL, NULL),
(42, 'Odit et qui.', 'odit-et-qui', 'Iste incidunt nisi dolorem. Alias mollitia eos tempore nobis temporibus. Perspiciatis aliquam qui laborum cum.', 1, 1, NULL, '2021-08-27 16:35:13', NULL, NULL),
(43, 'Iure consequatur quia dolor distinctio.', 'iure-consequatur-quia-dolor-distinctio', 'Qui dolore reprehenderit et id rem. Ut ut quod hic nemo magni fugiat. Illum autem dolores ut eveniet quaerat atque aliquam. Vitae magni et impedit minima ut unde minus ipsa.', 1, 1, NULL, '2021-08-29 08:51:58', NULL, NULL),
(44, 'Cumque quia velit rerum aut.', 'cumque-quia-velit-rerum-aut', 'Vero porro aliquam dolorem. Libero velit labore et fugit ducimus sequi voluptas. Illum ut soluta culpa iure sint. Rem est ut sint quis cum itaque pariatur.', 0, 2, NULL, '2021-08-22 11:14:20', NULL, NULL),
(45, 'Sit quidem et aut ratione ut.', 'sit-quidem-et-aut-ratione-ut', 'Aut ducimus assumenda ex aliquam. Possimus maxime voluptatem aliquam repellat. Distinctio quaerat non dignissimos id occaecati consequatur.', 1, 2, NULL, '2021-08-29 00:49:46', NULL, NULL),
(46, 'Molestiae mollitia cum sequi.', 'molestiae-mollitia-cum-sequi', 'Non ab consequatur dolorem atque. A et voluptatem tenetur est officiis officia quae. Nostrum deserunt quia est nesciunt error. Excepturi veritatis ut quia inventore quidem aut ea.', 1, 2, NULL, '2021-08-31 08:39:48', NULL, NULL),
(47, 'Ea aut magnam assumenda ut alias.', 'ea-aut-magnam-assumenda-ut-alias', 'Accusamus accusantium ipsam perspiciatis vitae est illo. Officiis est sunt fugit quia repudiandae enim dolores ut. Cupiditate est quia est. Fuga et explicabo possimus quisquam veritatis. Fugit eos aut autem expedita.', 1, 1, NULL, '2021-08-25 15:15:37', NULL, NULL),
(48, 'Quo vel officia repellendus ut.', 'quo-vel-officia-repellendus-ut', 'Culpa sit et aspernatur quis voluptates dignissimos aut. Rerum neque dicta harum cum consequuntur. Quidem consectetur qui quas voluptatibus.', 1, 1, NULL, '2021-08-23 23:46:49', NULL, NULL),
(49, 'Impedit qui quo.', 'impedit-qui-quo', 'Quia consequuntur fuga ipsam non. Ab voluptatum aut impedit maxime. Inventore vel commodi voluptatem nobis animi. Aut dicta dignissimos dolores animi eius dolor rerum.', 0, 2, NULL, '2021-08-27 10:55:15', NULL, NULL),
(50, 'Quam nihil quia.', 'quam-nihil-quia', 'Incidunt voluptates tempora error voluptas. Nostrum accusantium veniam officia odit. Ut commodi ut libero nihil.', 0, 1, NULL, '2021-08-25 08:09:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `emp_first_name` varchar(50) NOT NULL,
  `emp_last_name` varchar(30) NOT NULL,
  `emp_mobile` varchar(20) NOT NULL,
  `emp_phone` varchar(20) NOT NULL,
  `job_id` int(11) NOT NULL,
  `emp_status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `role_id`, `emp_first_name`, `emp_last_name`, `emp_mobile`, `emp_phone`, `job_id`, `emp_status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 'john', 'gurjar', '9874563214', '07285566525', 1, 0, '2021-09-04 08:16:08', '2021-09-14 07:39:15', NULL),
(2, 2, 'tom', 'cruse', '9874563214', '07285566525', 1, 1, '2021-09-08 08:41:17', '2021-09-08 08:41:17', NULL);

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Reprehenderit sit in et iure necessitatibus a.', 'Ab et aperiam optio hic ex et. Corporis nihil voluptatibus quas iusto suscipit. Qui iste numquam dolorem. Velit tempore rerum vitae ipsam aut enim assumenda. Consectetur ut dolor omnis ut animi.', 0, '2021-09-01 05:45:32', '2021-09-01 05:45:32', NULL),
(2, 'Ut ut ipsam veniam dolores tempore.', 'Ut voluptatibus voluptas cupiditate. Accusamus porro repellat fugit officia magni. Natus blanditiis dolorum ducimus unde quibusdam ipsam ratione.', 0, '2021-09-01 05:45:32', '2021-09-01 05:45:32', NULL),
(3, 'Molestiae magni aut similique consequatur quia est.', 'Nesciunt dolores optio quia voluptas et eos. Nemo sed temporibus alias et. Officiis laudantium dignissimos qui enim eligendi quia possimus. Sed odio libero minus beatae fuga vero.', 0, '2021-09-01 05:45:32', '2021-09-01 05:45:32', NULL),
(4, 'Voluptatem quasi sunt provident eveniet amet occaecati eveniet.', 'Harum aliquid amet quod inventore culpa iste. Sit suscipit quia voluptatem sint itaque perspiciatis totam. Commodi est nemo et quos. Occaecati numquam hic unde quidem voluptates sed cupiditate.', 0, '2021-09-01 05:45:32', '2021-09-01 05:45:32', NULL),
(5, 'Assumenda incidunt facere quo.', 'Qui consequatur molestiae quae facilis rerum. Ducimus possimus excepturi voluptatibus aut. Autem libero mollitia nobis reiciendis incidunt sunt exercitationem. Quo possimus sapiente optio blanditiis.', 0, '2021-09-01 05:45:32', '2021-09-01 05:45:32', NULL),
(6, 'Repellendus modi consequatur voluptatibus molestias minus sint.', 'Quo dolor in magnam ducimus id ut enim. Magnam rerum dolorum ipsa explicabo. Veritatis occaecati eveniet voluptatem.', 1, '2021-09-01 05:45:33', '2021-09-01 05:45:33', NULL),
(7, 'Rerum repellat et voluptate aliquid soluta placeat eum.', 'Voluptatem ex possimus incidunt est totam. Et ipsam numquam ut temporibus id. Corporis eaque consequatur est voluptas maiores doloribus.', 0, '2021-09-01 05:45:33', '2021-09-01 05:45:33', NULL),
(8, 'Dicta quia ex qui porro saepe rerum ad.', 'Architecto odio nobis nobis molestiae odio. Assumenda culpa consequatur quidem sapiente reprehenderit quae eum. Autem quidem quam modi ea dicta. Iure eos aut consequatur unde nam.', 0, '2021-09-01 05:45:33', '2021-09-01 05:45:33', NULL),
(9, 'Commodi quia expedita nihil accusamus dolore perferendis at.', 'Aut voluptatum aliquam a rem aut. Debitis et quae rem placeat et aut perferendis dolor.', 0, '2021-09-01 05:45:33', '2021-09-01 05:45:33', NULL),
(10, 'Aut eveniet perspiciatis ipsum nobis consequuntur non.', 'Provident voluptatum iste repellendus molestiae unde. Nesciunt velit inventore debitis qui deserunt. Doloribus iure itaque voluptas quaerat illum rerum.', 1, '2021-09-01 05:45:33', '2021-09-01 05:45:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ledgers`
--

CREATE TABLE `ledgers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `recordable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recordable_id` bigint(20) UNSIGNED NOT NULL,
  `context` tinyint(3) UNSIGNED NOT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pivot` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ledgers`
--

INSERT INTO `ledgers` (`id`, `user_type`, `user_id`, `recordable_type`, `recordable_id`, `context`, `event`, `properties`, `modified`, `pivot`, `extra`, `url`, `ip_address`, `user_agent`, `signature`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"eihRo0nKrwcWuV82CdtcOb9U51gQgtqbsh14AfhT9sP6lMjRr4LPeHY2DHPR\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-01 11:15:19\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '9a5b56099b8248fcb32fa701912b5b82ee4a0e60609128a916a2571c59e42e30daad370e1fb167b51e064eb2e3d7a9e0a71fd6dd60ca26296e11c335fab578f0', '2021-09-01 05:50:30', '2021-09-01 05:50:30'),
(2, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-01 11:20:30\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"eihRo0nKrwcWuV82CdtcOb9U51gQgtqbsh14AfhT9sP6lMjRr4LPeHY2DHPR\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-01 11:20:30\",\"deleted_at\":null}', '[\"timezone\",\"last_login_at\",\"last_login_ip\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'eb27160403acccc8c9583a1abf3692369472c1636f6e68201b4ff207eebec71a9b0a558b804725edc70f173126f6f5b8f4e8cf6909c8e35b3500416922c7e5d5', '2021-09-01 05:50:30', '2021-09-01 05:50:30'),
(3, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 5, 4, 'updated', '{\"id\":5,\"uuid\":\"6c69e52a-7c3c-46d1-a878-9d33c29f1a43\",\"first_name\":\"Hettie1\",\"last_name\":\"Schowalter1\",\"email\":\"schneider.johnathon1@example.org\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$KlCVEqKTkTr3WMRQb3DWi.anrnpEHewXCYS8trL0YRn5GVvQQBnwK\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"2fecbc21ab7da9d06462cdb7029eb4e3\",\"confirmed\":\"1\",\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":null,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"MEIZOgL3OO\",\"created_at\":\"2021-09-01 11:15:35\",\"updated_at\":\"2021-09-01 11:23:55\",\"deleted_at\":null}', '[\"first_name\",\"last_name\",\"email\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '85a1d717c36724056e56e4e75040bf2d0c8fdeb222245b9f776809a554c7c0f7ab3fcb9597269bf3e99a7aea249393dd22c3e297b882b2661f0f44876e2d295a', '2021-09-01 05:53:55', '2021-09-01 05:53:55'),
(4, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 5, 4, 'synced', '{\"id\":5,\"uuid\":\"6c69e52a-7c3c-46d1-a878-9d33c29f1a43\",\"first_name\":\"Hettie1\",\"last_name\":\"Schowalter1\",\"email\":\"schneider.johnathon1@example.org\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$KlCVEqKTkTr3WMRQb3DWi.anrnpEHewXCYS8trL0YRn5GVvQQBnwK\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"2fecbc21ab7da9d06462cdb7029eb4e3\",\"confirmed\":\"1\",\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":null,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"MEIZOgL3OO\",\"created_at\":\"2021-09-01 11:15:35\",\"updated_at\":\"2021-09-01 11:23:55\",\"deleted_at\":null}', '[]', '{\"relation\":\"roles\",\"properties\":[{\"user_id\":5,\"role_id\":\"1\"}]}', '[]', 'http://127.0.0.1:8000/admin/auth/user/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2287d951c5566af72a03e9199cf7b303396ccbde6cac2e70ebf11f24b71b77f4b6d8ef7fe25e4dd64d939215acfd43892ea259a3262c53d94d230e4966964dec', '2021-09-01 05:53:55', '2021-09-01 05:53:55'),
(5, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 5, 4, 'synced', '{\"id\":5,\"uuid\":\"6c69e52a-7c3c-46d1-a878-9d33c29f1a43\",\"first_name\":\"Hettie1\",\"last_name\":\"Schowalter1\",\"email\":\"schneider.johnathon1@example.org\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$KlCVEqKTkTr3WMRQb3DWi.anrnpEHewXCYS8trL0YRn5GVvQQBnwK\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"2fecbc21ab7da9d06462cdb7029eb4e3\",\"confirmed\":\"1\",\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":null,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"MEIZOgL3OO\",\"created_at\":\"2021-09-01 11:15:35\",\"updated_at\":\"2021-09-01 11:23:55\",\"deleted_at\":null}', '[]', '{\"relation\":\"permissions\",\"properties\":[{\"user_id\":5,\"permission_id\":\"1\"},{\"user_id\":5,\"permission_id\":\"2\"},{\"user_id\":5,\"permission_id\":\"3\"},{\"user_id\":5,\"permission_id\":\"4\"},{\"user_id\":5,\"permission_id\":\"5\"},{\"user_id\":5,\"permission_id\":\"6\"},{\"user_id\":5,\"permission_id\":\"7\"},{\"user_id\":5,\"permission_id\":\"8\"},{\"user_id\":5,\"permission_id\":\"9\"},{\"user_id\":5,\"permission_id\":\"10\"},{\"user_id\":5,\"permission_id\":\"11\"},{\"user_id\":5,\"permission_id\":\"12\"},{\"user_id\":5,\"permission_id\":\"13\"},{\"user_id\":5,\"permission_id\":\"14\"},{\"user_id\":5,\"permission_id\":\"15\"},{\"user_id\":5,\"permission_id\":\"16\"},{\"user_id\":5,\"permission_id\":\"17\"},{\"user_id\":5,\"permission_id\":\"18\"},{\"user_id\":5,\"permission_id\":\"19\"},{\"user_id\":5,\"permission_id\":\"20\"},{\"user_id\":5,\"permission_id\":\"21\"},{\"user_id\":5,\"permission_id\":\"22\"},{\"user_id\":5,\"permission_id\":\"23\"},{\"user_id\":5,\"permission_id\":\"24\"},{\"user_id\":5,\"permission_id\":\"25\"},{\"user_id\":5,\"permission_id\":\"26\"},{\"user_id\":5,\"permission_id\":\"27\"},{\"user_id\":5,\"permission_id\":\"28\"},{\"user_id\":5,\"permission_id\":\"29\"},{\"user_id\":5,\"permission_id\":\"30\"},{\"user_id\":5,\"permission_id\":\"31\"},{\"user_id\":5,\"permission_id\":\"32\"},{\"user_id\":5,\"permission_id\":\"33\"},{\"user_id\":5,\"permission_id\":\"34\"},{\"user_id\":5,\"permission_id\":\"35\"},{\"user_id\":5,\"permission_id\":\"36\"},{\"user_id\":5,\"permission_id\":\"37\"},{\"user_id\":5,\"permission_id\":\"38\"},{\"user_id\":5,\"permission_id\":\"39\"},{\"user_id\":5,\"permission_id\":\"40\"},{\"user_id\":5,\"permission_id\":\"41\"},{\"user_id\":5,\"permission_id\":\"42\"},{\"user_id\":5,\"permission_id\":\"43\"},{\"user_id\":5,\"permission_id\":\"44\"},{\"user_id\":5,\"permission_id\":\"45\"},{\"user_id\":5,\"permission_id\":\"46\"},{\"user_id\":5,\"permission_id\":\"47\"},{\"user_id\":5,\"permission_id\":\"48\"}]}', '[]', 'http://127.0.0.1:8000/admin/auth/user/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'f8724ecbe189390dc3652c32997c352c21c18dfb24d803992a49ce21a75058233e64d3a07e70e57468f899c4fcb6dbd088799c8a2da0eb36919641eec5777f37', '2021-09-01 05:53:56', '2021-09-01 05:53:56'),
(6, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 3, 4, 'deleted', '{\"id\":3,\"uuid\":\"b438aab9-fcfe-48ba-b76a-e926866b72c1\",\"first_name\":\"User\",\"last_name\":\"Test\",\"email\":\"user@user.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$NyUPfQUWOGQlWRmcK4OgmeVmQp2IUI1pZi\\/XZcN9a0mam251AIUeG\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"2ea35347cd3a12309a515db7aa69c708\",\"confirmed\":1,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":null,\"created_at\":\"2021-09-01 11:15:20\",\"updated_at\":\"2021-09-01 11:24:12\",\"deleted_at\":\"2021-09-01 11:24:12\"}', '[]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '94265c38ac5ac06bded815744dcebda370722f37f974924aba8c94b75b3ae1721f4ebf17298f83df6098b1ea83da901547260a10eac16a8305c31577afe0cb15', '2021-09-01 05:54:12', '2021-09-01 05:54:12'),
(7, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 3, 4, 'deleted', '{\"id\":3,\"uuid\":\"b438aab9-fcfe-48ba-b76a-e926866b72c1\",\"first_name\":\"User\",\"last_name\":\"Test\",\"email\":\"user@user.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$NyUPfQUWOGQlWRmcK4OgmeVmQp2IUI1pZi\\/XZcN9a0mam251AIUeG\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"2ea35347cd3a12309a515db7aa69c708\",\"confirmed\":1,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":null,\"created_at\":\"2021-09-01 11:15:20\",\"updated_at\":\"2021-09-01 11:24:12\",\"deleted_at\":\"2021-09-01 11:24:12\"}', '[]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/3/delete-permanently', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'cbf5f2f7830d65b43e25dbb15f1e37ad4053715694960ae087acfca533b9647f8cef4a047d1ce2cd8fcb289f38e3805cebd2a0c77d5c4cf9def2161ddd1db836', '2021-09-01 05:54:26', '2021-09-01 05:54:26'),
(8, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 3, 4, 'forceDeleted', '{\"id\":3,\"uuid\":\"b438aab9-fcfe-48ba-b76a-e926866b72c1\",\"first_name\":\"User\",\"last_name\":\"Test\",\"email\":\"user@user.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$NyUPfQUWOGQlWRmcK4OgmeVmQp2IUI1pZi\\/XZcN9a0mam251AIUeG\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"2ea35347cd3a12309a515db7aa69c708\",\"confirmed\":1,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":null,\"created_at\":\"2021-09-01 11:15:20\",\"updated_at\":\"2021-09-01 11:24:12\",\"deleted_at\":\"2021-09-01 11:24:12\"}', '[]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/3/delete-permanently', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '5aafcc3a6ebdcdd9ba529a74d8c09e295eaaf2ca106204c2c21e771a5948dd10bef3d63c5975fde7622fb382f88afb35e310d46856c74ecb8318250e92c7598b', '2021-09-01 05:54:26', '2021-09-01 05:54:26'),
(9, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-01 11:20:30\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"ePazyxu8krDpkbFGrXwpwv7N6M1yZSjmjWVX2FBq73oTBtX4tmYmAdjoiIkn\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-01 11:20:30\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '1b02398753384d7d6291d99be2154953cc8ac1951d7c1d3d3c6dbce139b5c8aaea974c495b84c1f2b7441e100278633a23176c18ace317db05046f35d3a2bcca', '2021-09-01 06:15:59', '2021-09-01 06:15:59'),
(10, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-01 11:46:27\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"ePazyxu8krDpkbFGrXwpwv7N6M1yZSjmjWVX2FBq73oTBtX4tmYmAdjoiIkn\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-01 11:46:27\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '46f243ba09eb27802429f4b82682e0e1b516950ecc7a4b41a28f658502d36600cef24f46dd912717b2abb24538fdc0276089b2ec4cf8c4e61bbd8ab5023fc539', '2021-09-01 06:16:27', '2021-09-01 06:16:27'),
(11, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-01 11:46:27\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"Next8CB9Cr8HjJjEcDEDpTEyakCApw2ODvZ4J0iJ8hHWM8j7IITcRIKnhOGJ\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-01 11:46:27\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '09c45e2f387e0971f769099c9dda5b90c137eb8fbfaf62cd3addaf60814e8be230ec7a0bab25d21885ca2bd1dee00bc0ce8c080e219bbd7fe9c630e1f532d999', '2021-09-01 06:50:22', '2021-09-01 06:50:22'),
(12, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-02 05:24:25\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"Next8CB9Cr8HjJjEcDEDpTEyakCApw2ODvZ4J0iJ8hHWM8j7IITcRIKnhOGJ\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-02 05:24:25\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '024e478063b3413040f30ecccb25b88e2b76acd79cacb58e503bb35299a781cc9e924cd30f17768c11bdef8d343918c43c91b9cd11b3c9dbe6e74e932f264ac1', '2021-09-01 23:54:26', '2021-09-01 23:54:26'),
(13, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-02 05:24:25\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"B0GWtRwkAbLFByv6ZqXJHJ9QAgTbdF4BzwtvRF2FSniBbLkKbURvFhFDvh5M\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-02 05:24:25\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '96e6cb63dce41ae01750aaba65fc689a30d80dbc1311ccc043f564353796a0516ce8f4a5459f5574b20fa520a5bbeb339ce3db3d969385776bec31548da66dd5', '2021-09-01 23:54:44', '2021-09-01 23:54:44'),
(14, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-02 05:35:35\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"B0GWtRwkAbLFByv6ZqXJHJ9QAgTbdF4BzwtvRF2FSniBbLkKbURvFhFDvh5M\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-02 05:35:35\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '957435ce504cc9aee181f59f86f5afaad8151607038270e988a623d33dc3381f57c0a587d5314b2e5afc37174673d8ebd0c3d5438e89b5fb3e0ef4eedb91c025', '2021-09-02 00:05:35', '2021-09-02 00:05:35'),
(15, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 4, 4, 'deleted', '{\"id\":4,\"uuid\":\"0bdfc010-3aff-4247-a044-c133e08db402\",\"first_name\":\"Kelsi\",\"last_name\":\"Gottlieb\",\"email\":\"mireya08@example.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$RHiqRj5btBCdGrKmOMHZee3Fa0MAnp3r2mCmIq9nbCdC5YDU8eHJm\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"a8a2eef67ecfca6468d27506dc4c4680\",\"confirmed\":1,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0,\"status\":1,\"created_by\":null,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"hzSV2LQ2zO\",\"created_at\":\"2021-09-01 11:15:31\",\"updated_at\":\"2021-09-02 06:33:58\",\"deleted_at\":\"2021-09-02 06:33:58\"}', '[]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '63922709e63a47755cde0cd3ea7412436e197053edcf7cb99a1a088e6140ff4b0ab948badbeb8efae3017917631c2511d68cc606abecff26a73ed5c38d946507', '2021-09-02 01:03:58', '2021-09-02 01:03:58'),
(16, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 2, 4, 'deleted', '{\"id\":2,\"uuid\":\"a3bafa3a-caf0-4a90-97f9-1a931f015e2a\",\"first_name\":\"Justin\",\"last_name\":\"Bevan\",\"email\":\"executive@executive.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"59da817b83222b9608f8b361b12125a5\",\"confirmed\":1,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":null,\"created_at\":\"2021-09-01 11:15:20\",\"updated_at\":\"2021-09-02 10:58:25\",\"deleted_at\":\"2021-09-02 10:58:25\"}', '[]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'bcaee34d8259160d71d938ebff950f67ed600b4eb02352b0bdb799047bd7fe4942f6a68db654283e97f56ac60572221e7b64a9df08b27b5373c27717c16fc852', '2021-09-02 05:28:26', '2021-09-02 05:28:26'),
(17, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 5, 4, 'deleted', '{\"id\":5,\"uuid\":\"6c69e52a-7c3c-46d1-a878-9d33c29f1a43\",\"first_name\":\"Hettie1\",\"last_name\":\"Schowalter1\",\"email\":\"schneider.johnathon1@example.org\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$KlCVEqKTkTr3WMRQb3DWi.anrnpEHewXCYS8trL0YRn5GVvQQBnwK\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"2fecbc21ab7da9d06462cdb7029eb4e3\",\"confirmed\":1,\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null,\"to_be_logged_out\":0,\"status\":1,\"created_by\":null,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"MEIZOgL3OO\",\"created_at\":\"2021-09-01 11:15:35\",\"updated_at\":\"2021-09-02 11:01:17\",\"deleted_at\":\"2021-09-02 11:01:17\"}', '[]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'bf0be306ba652d27144d4449dcaedac3aa9ee75e49224ac23a46d16309773ea6229c43b5abcd8b5c593fb0e3b34fcf47a445968e91520b44f8bc7bada6036398', '2021-09-02 05:31:17', '2021-09-02 05:31:17'),
(18, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-02 05:35:35\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"aI2TXR5Cz1y60YuER4c7SMoTHvSxglirAEHe3SX9zyu7KJdbwGjJAAnweCPf\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-02 05:35:35\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '05b5ed32af45efca2c74926d1e97755c15fca52c890d2ca7a59d10d664dfac9212d676f1908b17eb7798a5dbd9a81fccb1a5a0e710058024e0eb4c6e8ae4de9f', '2021-09-02 05:40:30', '2021-09-02 05:40:30'),
(19, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-02 11:11:44\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"aI2TXR5Cz1y60YuER4c7SMoTHvSxglirAEHe3SX9zyu7KJdbwGjJAAnweCPf\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-02 11:11:44\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'ca02bd74a8d49c8b8caf9c58ed0f083cfbfaac076cb001e081a2278b49f41fa43f30e0851ec7038cbf810caf77d6a7b8b528216cbcec7efdcfc8387b68385b88', '2021-09-02 05:41:44', '2021-09-02 05:41:44'),
(20, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-02 11:11:44\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"AiGuM21FokT8Um8HrYv0hj04VE9PZ2VIbVJ3dqT5baPwvRd1INm19w9uPiHW\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-02 11:11:44\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '66d1862766478d6f4486060f52df7041387d7072e994afe9d9cac77d5772d8db764a42778bdeee7f091d755bee4ed89560e6e6b788f78c389b735a70d19ad1e4', '2021-09-02 06:32:44', '2021-09-02 06:32:44'),
(21, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-02 12:32:35\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"AiGuM21FokT8Um8HrYv0hj04VE9PZ2VIbVJ3dqT5baPwvRd1INm19w9uPiHW\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-02 12:32:36\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'eea416783938f0c19396567b67cc095a7e9ecfa0e2f43ce7baa47dd69514d0980d32f6a004cddf850152bd99fa03bcf478d7580f4197509a2cf5e7630c9339fc', '2021-09-02 07:02:36', '2021-09-02 07:02:36'),
(22, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-02 12:32:35\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"hSFAUW4CoUjVWE2BJVZT8VHemehgxhmbzKKuNWENUeGj14FA4aJIxqEzzgXi\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-02 12:32:36\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '1ab3dced161a70953b6ecd565c2720cdd6fe45fa8af1b2a54a64c13796f7bdc7481afba07e8d268c420f567050786a095479ec0419440f1ec6b37505abb12442', '2021-09-02 07:41:30', '2021-09-02 07:41:30'),
(23, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-02 15:16:02\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"hSFAUW4CoUjVWE2BJVZT8VHemehgxhmbzKKuNWENUeGj14FA4aJIxqEzzgXi\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-02 15:16:02\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '869c53299c01d9a9337f0554ab0f231765f8db79c09c433f33d9c2675a56da78914439731c1564a84abc5209ec43e6b9128318480698bc5a21054afe032b37d4', '2021-09-02 09:46:03', '2021-09-02 09:46:03'),
(24, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-02 15:16:02\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-02 15:16:02\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'fac737b55520e1c6ad09d0791eb62c0441f34ec9eababd66fbb406ef86cd80b5262bc9b558bd78c43b47eee1b1c13538e39e2783469353634693ad7d7c31245d', '2021-09-02 23:10:50', '2021-09-02 23:10:50'),
(25, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$kd6npO682zEe\\/5ubk8OVnuF8vnMmLM2h1viKTA04J9aLrUvl\\/uFb6\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 08:57:36\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-03 08:57:36\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '6e70337843eea4e3ba74b4e0734820b43cdc7e4498f25aaa0f077dee40cc56de645d5661f5d71ad347975971881faf1400105fc1ad51dd284e8ebe1108a225fe', '2021-09-03 03:27:37', '2021-09-03 03:27:37'),
(26, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$NOzTLYbRWmJmEtEBtoP7H.Z45igNjpp\\/IeThRTB6tzcu6p68xqnYa\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 08:57:36\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-03 08:59:04\",\"deleted_at\":null}', '[\"password\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/1/password/change', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'b45f879a8d7283c581719b4053b9af09cd6bfd71587176fe1d1864ec4030fd6369514dc96ee20bcf28d46794a631d26a8a3d4bbf02b2c507754042dd1065e087', '2021-09-03 03:29:04', '2021-09-03 03:29:04'),
(27, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$NOzTLYbRWmJmEtEBtoP7H.Z45igNjpp\\/IeThRTB6tzcu6p68xqnYa\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 09:00:03\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-03 09:00:03\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '3afd940d9dce88396ce65ab7254bd211e6f79a68a4e5ac3ae198df6407166c5202010204bf859ca7ae45a65216440440b3ece412084ea4079a3a1153fe5182aa', '2021-09-03 03:30:03', '2021-09-03 03:30:03'),
(28, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 13:22:53\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-03 13:22:53\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '4cf92caa573d5b5699475f99cc07108d5b072f3d32182b4e1ebbe72d0a7e5742cbe7aeff4b61ea2c79183162d8c5a2d79768595f5ce37e567f559f0c39f32324', '2021-09-03 07:52:54', '2021-09-03 07:52:54'),
(29, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 16:18:41\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-03 16:18:41\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '7cb1183d046a93a537c7c3e2335942bc097e77901e2bf3477706655e1b9cf93cfc1a4b44c194293a9b8ea34fd6d9e7e43a455b0f74aa01bdcb664aad0b0e7231', '2021-09-03 10:48:41', '2021-09-03 10:48:41'),
(34, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alanf\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":\"1\",\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 16:18:41\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-03 16:39:17\",\"deleted_at\":null}', '[\"first_name\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '4e0504a7281e1a526806e0d8f61be43c6295ec1962c4ab87e395dea2bba5388cb20d636da80cbda882c570014eb7fcb346c40e580f0f0ac3379f0587e12681ca', '2021-09-03 11:09:17', '2021-09-03 11:09:17'),
(35, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'synced', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alanf\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":\"1\",\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 16:18:41\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-03 16:39:17\",\"deleted_at\":null}', '[]', '{\"relation\":\"roles\",\"properties\":[{\"user_id\":1,\"role_id\":\"1\"}]}', '[]', 'http://127.0.0.1:8000/admin/auth/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'f0b73ad291eedd462169869de2134ce7a40c8ee9f769f274b20309231bff844b7d816cf80f3d1993b64d4e8ccaeabf4f4d890b8cefc332202dd00b60ab65e0f5', '2021-09-03 11:09:17', '2021-09-03 11:09:17'),
(36, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin1@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":\"1\",\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 16:18:41\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-03 16:42:25\",\"deleted_at\":null}', '[\"first_name\",\"email\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '91cfcabc8118094ef566e1e9372064e1d74c55c5679b37af028aab60363391342f172deba655a432b1df6e58ec0a6a2aa0a29c3937864aa5a891f56deae5c6b2', '2021-09-03 11:12:25', '2021-09-03 11:12:25'),
(37, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'synced', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin1@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":\"1\",\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 16:18:41\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-03 16:42:25\",\"deleted_at\":null}', '[]', '{\"relation\":\"roles\",\"properties\":[{\"user_id\":1,\"role_id\":\"1\"}]}', '[]', 'http://127.0.0.1:8000/admin/auth/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'c22c84fce887464669e26d2948af02342fe64b42122f4fc9ef6d3ad37ad0f0b8d245eaedc3c320e26e756cc4e43ddfaf81bbe14331226722f5ca60628772538d', '2021-09-03 11:12:25', '2021-09-03 11:12:25'),
(38, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":\"1\",\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 16:18:41\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-03 17:09:27\",\"deleted_at\":null}', '[\"email\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '82849f5e5750cff213bb3bb2141d7a853b5241e66ffc12c591eaf9df1d71978fb47e80becb33cfa468b27ba3a7aca9c1e9174bfcb8164a75399aaae45ee0c5c3', '2021-09-03 11:39:27', '2021-09-03 11:39:27'),
(39, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'synced', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":\"1\",\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 16:18:41\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-03 17:09:27\",\"deleted_at\":null}', '[]', '{\"relation\":\"roles\",\"properties\":[{\"user_id\":1,\"role_id\":\"1\"}]}', '[]', 'http://127.0.0.1:8000/admin/auth/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '1e2b4d934bad223a3293140976e0b0b5df5fbe5fb9b8ef094ce1ce4564c6d4a1fdfb3fa7939704998b34afe93a14a03b4b3cf36390f195162b7b07e8c4ec9a47', '2021-09-03 11:39:27', '2021-09-03 11:39:27'),
(40, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan1\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":\"1\",\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 16:18:41\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-04 04:15:13\",\"deleted_at\":null}', '[\"first_name\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2631417363d3bac62e07227cfcbdcc04bd4f911174b044cc34e25ae01dc070ca41c9118cecf21c9e1bf855c5c43f878486700356930327839138d22642f9c9e6', '2021-09-03 22:45:13', '2021-09-03 22:45:13'),
(41, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'synced', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan1\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":\"1\",\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 16:18:41\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-04 04:15:13\",\"deleted_at\":null}', '[]', '{\"relation\":\"roles\",\"properties\":[{\"user_id\":1,\"role_id\":\"1\"}]}', '[]', 'http://127.0.0.1:8000/admin/auth/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '80d42bd5cf03091a5bd97b4e40e62ea58a49ccfacb4157032f4f6ef56fbed0271b7132cfc15490575a2decab26e0a1b567d6cc383fc01beb91cfa155061c8469', '2021-09-03 22:45:13', '2021-09-03 22:45:13'),
(42, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":\"1\",\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 16:18:41\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-04 04:15:27\",\"deleted_at\":null}', '[\"first_name\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/admin/auth/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '1f6a8234021ff64f5a8a48364a2ab7d1e93e708e12bac90d70da15e3710d3cbb87840591446b4f23df195948d7a42705ea1b6689c43f14557d62b1f3c2b60c37', '2021-09-03 22:45:27', '2021-09-03 22:45:27');
INSERT INTO `ledgers` (`id`, `user_type`, `user_id`, `recordable_type`, `recordable_id`, `context`, `event`, `properties`, `modified`, `pivot`, `extra`, `url`, `ip_address`, `user_agent`, `signature`, `created_at`, `updated_at`) VALUES
(43, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'synced', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":\"1\",\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 16:18:41\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"qZFtedJlNseJk8Ia0GnuCvDrZflVCh25YZ9JqWx0Tn9k5KGFk5TanwqKZkV9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-04 04:15:27\",\"deleted_at\":null}', '[]', '{\"relation\":\"roles\",\"properties\":[{\"user_id\":1,\"role_id\":\"1\"}]}', '[]', 'http://127.0.0.1:8000/admin/auth/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'b66d11f17c6e042f73d4d2e50186cde302202cbc37a6fb1b5b1b9114bdccf7e3ec47cbf35c1c7c31bfa539c2800590e94fce5d3cd39490f8ff9757ea61c4ef1f', '2021-09-03 22:45:27', '2021-09-03 22:45:27'),
(44, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-03 16:18:41\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"lHQ07ugwlUKa58kG4R0Rb3JJcRpIbfOVbksx424btGq1oZ50hrKqeZlm2tek\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-04 04:15:27\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '2ebe502b8b1a013eb4d49d7fb17b171b60b26582d799c899bf7eca1df3413fb6752ee03d5d5187ecbeb3dca80e825701a42f37bf7312ca330b3719d257bd4b64', '2021-09-03 22:58:22', '2021-09-03 22:58:22'),
(45, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-04 04:29:24\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"lHQ07ugwlUKa58kG4R0Rb3JJcRpIbfOVbksx424btGq1oZ50hrKqeZlm2tek\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-04 04:29:24\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '8aad0134cf5e2d9fc06adb5b9fa94cb6fe9612c275b67c3c447f4acc07358cf8ad1cba4231f9d5b772a4af17d15f7948445e57a230808de426ad000182307db0', '2021-09-03 22:59:24', '2021-09-03 22:59:24'),
(46, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-04 04:29:24\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"J6NrjmxzEd76wfW2LYarildZ5ISfyluJsKshKzZlvTvRgCfemRSyaZrlIba9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-04 04:29:24\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '9619568aea156338e649797419124d1618e53849aee6d88148c612803f3c042bd7ad896eec979bfda6067b16af7c088c36305ba90e25795b1d82e22b0699ec5b', '2021-09-04 00:33:08', '2021-09-04 00:33:09'),
(47, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-04 06:07:34\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"J6NrjmxzEd76wfW2LYarildZ5ISfyluJsKshKzZlvTvRgCfemRSyaZrlIba9\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-04 06:07:34\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '4dda8cab07e7a8569396961f6a3b463c85911ace3d389d5c0c836768815efe7329d8516759faba99befffd34e1bb75d1d6d429797e29c9dc2b63b205a253bd67', '2021-09-04 00:37:34', '2021-09-04 00:37:34'),
(48, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-04 06:07:34\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"sWzKWK8ZeIPX8AnfpXLZ7lo5EiO9yPbjJNXvZiAU1SQQX9yKXaLdKgajqiJH\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-04 06:07:34\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '1e355e53138802668ac36f4c12855ebc702ffac48c618ebfd546234307903abde261d57fae5c9f8a4af24a8f8f971373f2431ef7f1d166dc0f250801a06ef056', '2021-09-08 00:21:09', '2021-09-08 00:21:09'),
(49, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-08 05:51:23\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"sWzKWK8ZeIPX8AnfpXLZ7lo5EiO9yPbjJNXvZiAU1SQQX9yKXaLdKgajqiJH\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-08 05:51:23\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', 'd1706b3df2d6291f7ae11c48b6d4a9e948d29b8ff7d23db2ad4b51042b04592ad51cd4c027042f93d61fcc1fdce07311a09daf0fc1bdad0086bec57baf7bf117', '2021-09-08 00:21:23', '2021-09-08 00:21:23'),
(50, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-08 05:51:23\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"wyoDv4fP4puGwE33fqUsisZFyqvRFwX1GObjS0Zr7jnI0iUrArwMir1GIxEy\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-08 05:51:23\",\"deleted_at\":null}', '[\"remember_token\"]', '[]', '[]', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36', '50ce9316841ac7b3f3cb0d61b30734a6e387c8c244b4a6e968d1f154d55c872b22b233c0a4e1d496d465d9387a47065b6b0ed5dd2ff54b2fce87e39feae478be', '2021-09-08 10:20:41', '2021-09-08 10:20:41'),
(51, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-14 07:27:02\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"wyoDv4fP4puGwE33fqUsisZFyqvRFwX1GObjS0Zr7jnI0iUrArwMir1GIxEy\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-14 07:27:02\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '161be6d767b2c57661ee086be7998fee6643c72154712db7cff11ee0f6c335adaee02c542b187b4f1619be58add9aca1ec5589bd36d34a2bd35b3682f872eb59', '2021-09-14 01:57:03', '2021-09-14 01:57:03'),
(52, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'synced', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":\"1\",\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-14 07:27:02\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":\"1\",\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"wyoDv4fP4puGwE33fqUsisZFyqvRFwX1GObjS0Zr7jnI0iUrArwMir1GIxEy\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-14 07:27:02\",\"deleted_at\":null}', '[]', '{\"relation\":\"roles\",\"properties\":[{\"user_id\":1,\"role_id\":\"1\"}]}', '[]', 'http://127.0.0.1:8000/admin/auth/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '0af7c8f5469a2c344e4b4f790afab55fdb46142e3f7eacee79b83e0632be3727d97421fed841a6be464b02b5822ca3379a75079cd1abd5094d0eb2bea4f7433f', '2021-09-14 02:00:30', '2021-09-14 02:00:30'),
(53, 'App\\Models\\Auth\\User', 1, 'App\\Models\\Auth\\User', 1, 4, 'updated', '{\"id\":1,\"uuid\":\"a82d2561-5f26-4668-94de-c728e07de3b3\",\"first_name\":\"Alan\",\"last_name\":\"Whitmore\",\"email\":\"admin@admin.com\",\"avatar_type\":\"gravatar\",\"avatar_location\":null,\"password\":\"$2y$10$SH5wCRH.oviVsynwTxeoc.OV\\/Vb6u7YDQORCgBd9.4pJ\\/VC6.JVtO\",\"password_changed_at\":null,\"active\":1,\"confirmation_code\":\"3850fc6821bda2eff77057799bb4b2a8\",\"confirmed\":1,\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2021-09-14 12:14:09\",\"last_login_ip\":\"127.0.0.1\",\"to_be_logged_out\":0,\"status\":1,\"created_by\":1,\"updated_by\":null,\"is_term_accept\":0,\"remember_token\":\"wyoDv4fP4puGwE33fqUsisZFyqvRFwX1GObjS0Zr7jnI0iUrArwMir1GIxEy\",\"created_at\":\"2021-09-01 11:15:19\",\"updated_at\":\"2021-09-14 12:14:09\",\"deleted_at\":null}', '[\"last_login_at\",\"updated_at\"]', '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', '0763f3637756faafb80ffa35e2f233168773265354e457e447bfcc253bde124ba450f9e9630126d91a1bf8ffc55da549bb9c8dcb07621a7ad2e01a334d348596', '2021-09-14 06:44:10', '2021-09-14 06:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `localities`
--

CREATE TABLE `localities` (
  `id` int(10) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `market_id` int(11) NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lattitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2017_09_03_144628_create_permission_tables', 1),
(9, '2017_09_11_174816_create_social_accounts_table', 1),
(10, '2017_09_26_140332_create_cache_table', 1),
(11, '2017_09_26_140528_create_sessions_table', 1),
(12, '2017_09_26_140609_create_jobs_table', 1),
(13, '2017_11_02_060149_create_blog_categories_table', 1),
(14, '2017_11_02_060149_create_blog_map_categories_table', 1),
(15, '2017_11_02_060149_create_blog_map_tags_table', 1),
(16, '2017_11_02_060149_create_blog_tags_table', 1),
(17, '2017_11_02_060149_create_blogs_table', 1),
(18, '2017_11_02_060149_create_faqs_table', 1),
(19, '2017_11_02_060149_create_pages_table', 1),
(20, '2018_04_08_033256_create_password_histories_table', 1),
(21, '2018_11_21_000001_create_ledgers_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2020_06_11_080530_create_email_templates_table', 1),
(24, '2020_06_18_060624_add_foreign_key_constraints_to_acl_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('667a0f5bcdd42ad8c6ba714f94466abf85cd0e3355802199f1d4f84735a89c05ec6924b757311621', 1, 1, 'developer-access', '[]', 0, '2021-09-04 01:01:36', '2021-09-04 01:01:36', '2022-09-04 06:31:36'),
('89bd62ab4ea13b5145e2d19a5bcf88a6f74724ce7dd77519c682437e0e4dd9892705d86fc1c4242b', 1, 1, 'API Access Token', '[]', 0, '2021-09-04 01:20:25', '2021-09-04 01:20:25', '2022-09-04 06:50:25'),
('c19c5ec04a60b081873ad5b09024da0f8d7a74d1dfc83fe51fdbdf28848579216afeb377d355801d', 1, 1, 'API Access Token', '[]', 0, '2021-09-14 04:36:19', '2021-09-14 04:36:19', '2022-09-14 10:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Talent Personal Access Client', 'r56DaZ0Tylc7kBoFjL3VMLm220P4wp6Td8ve1oHo', NULL, 'http://localhost', 1, 0, 0, '2021-09-01 05:44:53', '2021-09-01 05:44:53'),
(2, NULL, 'Talent Password Grant Client', '9c7RevFqlkq7aAyDGvpmn0HxJa0hmWN1S28L4Vqc', 'users', 'http://localhost', 0, 1, 0, '2021-09-01 05:44:53', '2021-09-01 05:44:53'),
(3, NULL, 'Talent Personal Access Client', 'SVsmkL579yeMN67s0UyXRTKALmxonb0L8R4VyUwS', NULL, 'http://localhost', 1, 0, 0, '2021-09-14 05:24:27', '2021-09-14 05:24:27'),
(4, NULL, 'Talent Password Grant Client', 'Z4ywI9XovvdiMpobmEyf8Tzf4KgINarDmAL8c3OK', NULL, 'http://localhost', 0, 1, 0, '2021-09-14 05:24:27', '2021-09-14 05:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-09-01 05:44:53', '2021-09-01 05:44:53'),
(2, 3, '2021-09-14 05:24:27', '2021-09-14 05:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `page_slug`, `description`, `cannonical_link`, `seo_title`, `seo_keyword`, `seo_description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'architecto quo et natus', 'quidem-inventore-ut-eligendi-sint-voluptas', 'Optio omnis sit architecto. Recusandae rerum ipsa eos laudantium corrupti. Ut delectus numquam sequi dolorem dicta enim.', 'http://www.thiel.com/ullam-minus-repellat-et-repellat.html', 'culpa', 'nostrum', 'Animi fugiat dolores non et quaerat nihil. Qui ab officiis aperiam aut. Recusandae aut ipsum quasi laboriosam est voluptas error. Ex minima aut est fugiat praesentium at.', 1, 4, NULL, '2021-09-01 05:45:31', '2021-09-01 05:45:31', NULL),
(2, 'dolores voluptate vitae nihil', 'placeat-sapiente-consequatur-omnis-provident', 'Cupiditate corporis cumque corporis pariatur est enim a. Ab et deserunt doloribus et non blanditiis distinctio sit. Praesentium molestiae quisquam sed magni. Qui ea perspiciatis non dolores laudantium qui voluptatem.', 'https://kerluke.com/dolorem-maxime-vero-repudiandae-itaque-qui-quis-nam-ut.html', 'est', 'praesentium', 'Ratione eum quia ad consequatur explicabo. Repellat sunt eaque sed dolores beatae. Aperiam cupiditate ea consequatur et.', 0, 4, NULL, '2021-09-01 05:45:31', '2021-09-01 05:45:31', NULL),
(3, 'at facilis aut dolorem', 'non-quia-autem-ipsa-eum-ad-tempora', 'At enim voluptatem et ipsam. Dolore rerum fugiat et. Vero voluptate laboriosam eveniet consequatur et error. Necessitatibus laboriosam corrupti nesciunt eum voluptas exercitationem consequatur.', 'https://grady.com/cupiditate-libero-exercitationem-dolores-rem-et-fugit-in.html', 'quidem', 'et', 'Labore voluptas unde ducimus nulla voluptatem consectetur. Non magni cum velit placeat. Quo accusamus qui molestiae provident aut dicta porro temporibus. Odit enim debitis quisquam aliquam.', 1, 4, NULL, '2021-09-01 05:45:31', '2021-09-01 05:45:31', NULL),
(4, 'cupiditate corporis mollitia aspernatur', 'suscipit-ex-placeat-natus-aut-asperiores-ipsa', 'Quam nostrum aut rerum sunt voluptatibus consequatur. Et occaecati earum tenetur fugit consequatur eaque. Quasi fuga nisi est quia quidem unde deleniti. Recusandae et alias dolor et.', 'http://jerde.net/aut-ut-consectetur-et-et-est-blanditiis-incidunt', 'necessitatibus', 'similique', 'Temporibus provident et cumque cumque voluptate non et. Suscipit ullam et dolores mollitia similique corrupti qui. Sapiente adipisci temporibus reprehenderit qui. Nulla eos ea mollitia cumque tenetur sit. Inventore dolor quos ut necessitatibus deleniti.', 0, 4, NULL, '2021-09-01 05:45:31', '2021-09-01 05:45:31', NULL),
(5, 'dignissimos vero ratione consequatur', 'voluptatem-facere-quos-laudantium-culpa-rerum-adipisci-aliquid', 'Enim occaecati aut qui. Qui est aut officiis et nulla pariatur omnis. Sapiente aperiam tempora deleniti aut enim nostrum incidunt. Quidem totam culpa et nihil.', 'http://www.becker.com/aut-quis-ea-quia-soluta-voluptas', 'voluptatibus', 'non', 'Doloremque cupiditate ut autem dolor laboriosam esse. Non enim cumque minima iure voluptatem nihil molestiae. Error ut excepturi voluptates repellendus earum qui. Illo quo placeat sed rerum.', 0, 4, NULL, '2021-09-01 05:45:31', '2021-09-01 05:45:31', NULL),
(6, 'numquam sit fuga ratione', 'sapiente-similique-asperiores-minus-distinctio-exercitationem-dolor', 'Id sit magnam et et iste. Nisi similique odio consequatur iusto. Non aperiam voluptatem est velit recusandae eius. Eveniet labore quasi dolorem quis.', 'http://www.mcglynn.info/', 'sit', 'porro', 'Et hic consequatur minima iste est. Minus corrupti mollitia velit aut minima amet dolor nobis. Reprehenderit in adipisci rerum sunt tempore est enim incidunt. Tenetur dolorem magnam error velit.', 0, 4, NULL, '2021-09-01 05:45:31', '2021-09-01 05:45:31', NULL),
(7, 'eos deleniti dolorem non', 'voluptas-nihil-quia-culpa-aperiam', 'Quas natus sint eos tempore aut. Rerum accusamus omnis voluptas totam eligendi ipsum.', 'https://www.altenwerth.com/corporis-tempora-et-officia-pariatur-eius-expedita-nihil', 'id', 'consectetur', 'Explicabo sit quis ut velit mollitia rem enim. Sed maxime corporis facilis cupiditate cupiditate consectetur. Animi cupiditate incidunt voluptatem excepturi commodi. Nam nemo non sed sed.', 1, 4, NULL, '2021-09-01 05:45:31', '2021-09-01 05:45:31', NULL),
(8, 'perferendis laboriosam reprehenderit laudantium', 'quia-dolorem-natus-laudantium', 'Ut temporibus a facere ut nemo. Hic enim dolorem tenetur officia aut voluptatem. Autem voluptates voluptatem enim ut ipsum. Aut modi possimus voluptatem laboriosam nemo in consequuntur.', 'http://www.christiansen.com/iste-et-soluta-nemo-animi-rerum-quia.html', 'sed', 'dicta', 'A sint molestiae eos expedita eum commodi qui. Qui ut architecto quis qui nesciunt. Ab natus corporis quam quo totam.', 1, 4, NULL, '2021-09-01 05:45:31', '2021-09-01 05:45:31', NULL),
(9, 'dolorem iste ut quis', 'aliquid-a-perspiciatis-sapiente-et', 'Quos quis voluptatibus vero sequi. Eum voluptatem sapiente voluptatibus asperiores sunt error. Itaque ab similique beatae mollitia atque natus.', 'http://heaney.com/autem-voluptatem-ut-ea-delectus-illo-quidem-reiciendis-et', 'facere', 'modi', 'Beatae dolores voluptas ipsam delectus. Consequatur sapiente alias quam.', 1, 4, NULL, '2021-09-01 05:45:31', '2021-09-01 05:45:31', NULL),
(10, 'et alias nostrum quaerat', 'et-quas-rerum-provident-rerum', 'Vel molestias debitis id earum reprehenderit. Tempore iste maiores totam adipisci amet velit enim. Eos est consequatur in et quia.', 'http://bartell.com/architecto-est-quo-recusandae-tempora-similique-laborum.html', 'reiciendis', 'cupiditate', 'In dolorem non minima odio. Qui voluptas optio quibusdam incidunt. Nulla quia et tenetur consequatur consequatur aut. Dolor delectus perferendis ipsam ex. Quas quia et provident iste dolorem nulla distinctio omnis.', 0, 4, NULL, '2021-09-01 05:45:32', '2021-09-01 05:45:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_histories`
--

CREATE TABLE `password_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_histories`
--

INSERT INTO `password_histories` (`id`, `user_id`, `password`, `created_at`, `updated_at`) VALUES
(1, 4, '$2y$10$RHiqRj5btBCdGrKmOMHZee3Fa0MAnp3r2mCmIq9nbCdC5YDU8eHJm', '2021-09-01 05:45:31', '2021-09-01 05:45:31'),
(2, 5, '$2y$10$KlCVEqKTkTr3WMRQb3DWi.anrnpEHewXCYS8trL0YRn5GVvQQBnwK', '2021-09-01 05:45:35', '2021-09-01 05:45:35'),
(3, 1, '$2y$10$NOzTLYbRWmJmEtEBtoP7H.Z45igNjpp/IeThRTB6tzcu6p68xqnYa', '2021-09-03 03:29:04', '2021-09-03 03:29:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'view-backend', 'View Backend', 1, 1, 1, NULL, '2021-09-01 05:45:22', '2021-09-01 05:45:22', NULL),
(2, 'view-frontend', 'View Frontend', 2, 1, 1, NULL, '2021-09-01 05:45:22', '2021-09-01 05:45:22', NULL),
(3, 'view-access-management', 'View Access Management', 3, 1, 1, NULL, '2021-09-01 05:45:22', '2021-09-01 05:45:22', NULL),
(4, 'view-user-management', 'View User Management', 4, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(5, 'view-active-user', 'View Active User', 5, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(6, 'view-deactive-user', 'View Deactive User', 6, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(7, 'view-deleted-user', 'View Deleted User', 7, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(8, 'show-user', 'Show User Details', 8, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(9, 'create-user', 'Create User', 9, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(10, 'edit-user', 'Edit User', 9, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(11, 'delete-user', 'Delete User', 10, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(12, 'activate-user', 'Activate User', 11, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(13, 'deactivate-user', 'Deactivate User', 12, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(14, 'login-as-user', 'Login As User', 13, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(15, 'clear-user-session', 'Clear User Session', 14, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(16, 'view-role-management', 'View Role Management', 15, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(17, 'create-role', 'Create Role', 16, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(18, 'edit-role', 'Edit Role', 17, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(19, 'delete-role', 'Delete Role', 18, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(20, 'view-permission-management', 'View Permission Management', 19, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(21, 'create-permission', 'Create Permission', 20, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(22, 'edit-permission', 'Edit Permission', 21, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(23, 'delete-permission', 'Delete Permission', 22, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(24, 'view-page', 'View Page', 23, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(25, 'create-page', 'Create Page', 24, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(26, 'edit-page', 'Edit Page', 25, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(27, 'delete-page', 'Delete Page', 26, 1, 1, NULL, '2021-09-01 05:45:23', '2021-09-01 05:45:23', NULL),
(28, 'view-email-template', 'View Email Templates', 27, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(29, 'create-email-template', 'Create Email Templates', 28, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(30, 'edit-email-template', 'Edit Email Templates', 29, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(31, 'delete-email-template', 'Delete Email Templates', 30, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(32, 'edit-settings', 'Edit Settings', 31, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(33, 'view-blog-category', 'View Blog Categories Management', 32, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(34, 'create-blog-category', 'Create Blog Category', 33, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(35, 'edit-blog-category', 'Edit Blog Category', 34, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(36, 'delete-blog-category', 'Delete Blog Category', 35, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(37, 'view-blog-tag', 'View Blog Tags Management', 36, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(38, 'create-blog-tag', 'Create Blog Tag', 37, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(39, 'edit-blog-tag', 'Edit Blog Tag', 38, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(40, 'delete-blog-tag', 'Delete Blog Tag', 39, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(41, 'view-blog', 'View Blogs Management', 40, 1, 1, NULL, '2021-09-01 05:45:24', '2021-09-01 05:45:24', NULL),
(42, 'create-blog', 'Create Blog', 41, 1, 1, NULL, '2021-09-01 05:45:25', '2021-09-01 05:45:25', NULL),
(43, 'edit-blog', 'Edit Blog', 42, 1, 1, NULL, '2021-09-01 05:45:25', '2021-09-01 05:45:25', NULL),
(44, 'delete-blog', 'Delete Blog', 43, 1, 1, NULL, '2021-09-01 05:45:25', '2021-09-01 05:45:25', NULL),
(45, 'view-faq', 'View FAQ Management', 44, 1, 1, NULL, '2021-09-01 05:45:25', '2021-09-01 05:45:25', NULL),
(46, 'create-faq', 'Create FAQ', 45, 1, 1, NULL, '2021-09-01 05:45:25', '2021-09-01 05:45:25', NULL),
(47, 'edit-faq', 'Edit FAQ', 46, 1, 1, NULL, '2021-09-01 05:45:25', '2021-09-01 05:45:25', NULL),
(48, 'delete-faq', 'Delete FAQ', 47, 1, 1, NULL, '2021-09-01 05:45:25', '2021-09-01 05:45:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(1, 1, 2),
(2, 3, 2),
(3, 4, 2),
(4, 5, 2),
(5, 6, 2),
(6, 7, 2),
(7, 8, 2),
(8, 16, 2),
(9, 20, 2),
(10, 24, 2),
(11, 25, 2),
(12, 26, 2),
(13, 27, 2),
(14, 28, 2),
(15, 29, 2),
(16, 30, 2),
(17, 31, 2),
(18, 33, 2),
(19, 34, 2),
(20, 35, 2),
(21, 36, 2),
(22, 37, 2),
(23, 38, 2),
(24, 39, 2),
(25, 40, 2),
(26, 41, 2),
(27, 42, 2),
(28, 43, 2),
(29, 44, 2),
(30, 45, 2),
(31, 46, 2),
(32, 47, 2),
(33, 48, 2),
(34, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`id`, `permission_id`, `user_id`) VALUES
(1, 42, 2),
(2, 34, 2),
(3, 38, 2),
(4, 29, 2),
(5, 46, 2),
(6, 25, 2),
(7, 44, 2),
(8, 36, 2),
(9, 40, 2),
(10, 31, 2),
(11, 48, 2),
(12, 27, 2),
(13, 43, 2),
(14, 35, 2),
(15, 39, 2),
(16, 30, 2),
(17, 47, 2),
(18, 26, 2),
(19, 8, 2),
(20, 3, 2),
(21, 5, 2),
(22, 1, 2),
(23, 33, 2),
(24, 37, 2),
(25, 41, 2),
(26, 6, 2),
(27, 7, 2),
(28, 28, 2),
(29, 45, 2),
(30, 24, 2),
(31, 20, 2),
(32, 16, 2),
(33, 4, 2),
(35, 1, 5),
(36, 2, 5),
(37, 3, 5),
(38, 4, 5),
(39, 5, 5),
(40, 6, 5),
(41, 7, 5),
(42, 8, 5),
(43, 9, 5),
(44, 10, 5),
(45, 11, 5),
(46, 12, 5),
(47, 13, 5),
(48, 14, 5),
(49, 15, 5),
(50, 16, 5),
(51, 17, 5),
(52, 18, 5),
(53, 19, 5),
(54, 20, 5),
(55, 21, 5),
(56, 22, 5),
(57, 23, 5),
(58, 24, 5),
(59, 25, 5),
(60, 26, 5),
(61, 27, 5),
(62, 28, 5),
(63, 29, 5),
(64, 30, 5),
(65, 31, 5),
(66, 32, 5),
(67, 33, 5),
(68, 34, 5),
(69, 35, 5),
(70, 36, 5),
(71, 37, 5),
(72, 38, 5),
(73, 39, 5),
(74, 40, 5),
(75, 41, 5),
(76, 42, 5),
(77, 43, 5),
(78, 44, 5),
(79, 45, 5),
(80, 46, 5),
(81, 47, 5),
(82, 48, 5);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT 0,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `all`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Administrator', 1, 1, 1, 1, NULL, '2021-09-01 05:45:21', '2021-09-01 05:45:21', NULL),
(2, 'Executive', 0, 2, 1, 1, NULL, '2021-09-01 05:45:21', '2021-09-01 05:45:21', NULL),
(3, 'User', 0, 3, 1, 1, NULL, '2021-09-01 05:45:21', '2021-09-01 05:45:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(4, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gravatar',
  `avatar_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_changed_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_be_logged_out` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `is_term_accept` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 0 = not accepted,1 = accepted',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `first_name`, `last_name`, `email`, `avatar_type`, `avatar_location`, `password`, `password_changed_at`, `active`, `confirmation_code`, `confirmed`, `timezone`, `last_login_at`, `last_login_ip`, `to_be_logged_out`, `status`, `created_by`, `updated_by`, `is_term_accept`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a82d2561-5f26-4668-94de-c728e07de3b3', 'Alan', 'Whitmore', 'admin@admin.com', 'gravatar', NULL, '$2y$10$SH5wCRH.oviVsynwTxeoc.OV/Vb6u7YDQORCgBd9.4pJ/VC6.JVtO', NULL, 1, '3850fc6821bda2eff77057799bb4b2a8', 1, 'America/New_York', '2021-09-14 06:44:09', '127.0.0.1', 0, 1, 1, NULL, 0, 'wyoDv4fP4puGwE33fqUsisZFyqvRFwX1GObjS0Zr7jnI0iUrArwMir1GIxEy', '2021-09-01 05:45:19', '2021-09-14 06:44:09', NULL),
(2, 'a3bafa3a-caf0-4a90-97f9-1a931f015e2a', 'Justin', 'Bevan', 'executive@executive.com', 'gravatar', NULL, '$2y$10$SH5wCRH.oviVsynwTxeoc.OV/Vb6u7YDQORCgBd9.4pJ/VC6.JVtO', NULL, 1, '59da817b83222b9608f8b361b12125a5', 1, NULL, NULL, NULL, 0, 1, 1, NULL, 0, NULL, '2021-09-01 05:45:20', '2021-09-02 05:28:25', '2021-09-02 05:28:25'),
(4, '0bdfc010-3aff-4247-a044-c133e08db402', 'Kelsi', 'Gottlieb', 'mireya08@example.com', 'gravatar', NULL, '$2y$10$RHiqRj5btBCdGrKmOMHZee3Fa0MAnp3r2mCmIq9nbCdC5YDU8eHJm', NULL, 1, 'a8a2eef67ecfca6468d27506dc4c4680', 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 'hzSV2LQ2zO', '2021-09-01 05:45:31', '2021-09-02 01:03:58', '2021-09-02 01:03:58'),
(5, '6c69e52a-7c3c-46d1-a878-9d33c29f1a43', 'Hettie1', 'Schowalter1', 'schneider.johnathon1@example.org', 'gravatar', NULL, '$2y$10$KlCVEqKTkTr3WMRQb3DWi.anrnpEHewXCYS8trL0YRn5GVvQQBnwK', NULL, 1, '2fecbc21ab7da9d06462cdb7029eb4e3', 1, NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 'MEIZOgL3OO', '2021-09-01 05:45:35', '2021-09-02 05:31:17', '2021-09-02 05:31:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogins`
--
ALTER TABLE `adminlogins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_map_categories`
--
ALTER TABLE `blog_map_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_map_categories_blog_id_index` (`blog_id`),
  ADD KEY `blog_map_categories_category_id_index` (`category_id`);

--
-- Indexes for table `blog_map_tags`
--
ALTER TABLE `blog_map_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_map_tags_blog_id_index` (`blog_id`),
  ADD KEY `blog_map_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `blog_tags`
--
ALTER TABLE `blog_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`cand_id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `ledgers`
--
ALTER TABLE `ledgers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ledgers_recordable_type_recordable_id_index` (`recordable_type`,`recordable_id`),
  ADD KEY `ledgers_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `localities`
--
ALTER TABLE `localities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_page_slug_unique` (`market_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_page_slug_unique` (`page_slug`);

--
-- Indexes for table `password_histories`
--
ALTER TABLE `password_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_histories_user_id_foreign` (`user_id`);

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
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogins`
--
ALTER TABLE `adminlogins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_map_categories`
--
ALTER TABLE `blog_map_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_map_tags`
--
ALTER TABLE `blog_map_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `blog_tags`
--
ALTER TABLE `blog_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `cand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ledgers`
--
ALTER TABLE `ledgers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `localities`
--
ALTER TABLE `localities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `password_histories`
--
ALTER TABLE `password_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `password_histories`
--
ALTER TABLE `password_histories`
  ADD CONSTRAINT `password_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
