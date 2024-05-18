-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 18, 2024 at 04:17 PM
-- Server version: 5.7.42-0ubuntu0.18.04.1
-- PHP Version: 8.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2324BACKE09`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Robert Downey Jr.', 'https://cdn.britannica.com/99/254199-050-98CF4E04/Robert-Downey-JR-UK-premier-Oppenheimer-movie-July-2023.jpg', NULL, NULL),
(2, 'Gwyneth Paltrow', 'https://cdn.britannica.com/56/172456-050-F518B29E/Gwyneth-Paltrow-2013.jpg', NULL, NULL),
(3, 'Jon Favreau', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Jon_Favreau_2016.jpeg/1200px-Jon_Favreau_2016.jpeg', NULL, NULL),
(4, 'Clark Gregg', 'https://media.themoviedb.org/t/p/w500/nbxFbr2SaF4Sdc6HdsF193GInvJ.jpg', NULL, NULL),
(5, 'Chloe Bennet\r\n', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Chloe_Bennet_by_Gage_Skidmore_2.jpg/1200px-Chloe_Bennet_by_Gage_Skidmore_2.jpg', NULL, NULL),
(6, 'Edward Norton', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Ed_Norton_Shankbone_Metropolitan_Opera_2009.jpg/1200px-Ed_Norton_Shankbone_Metropolitan_Opera_2009.jpg', NULL, NULL),
(7, 'Don Cheadle', 'https://static.wikia.nocookie.net/disney/images/1/19/Don_Cheadle.jpg/revision/latest?cb=20190924222841', NULL, NULL),
(8, 'Scarlett Johansson', 'https://media.vogue.fr/photos/621ce51fd521d794b1af5027/2:3/w_2560%2Cc_limit/1358691846', NULL, NULL),
(9, 'Chris Hemsworth', 'https://upload.wikimedia.org/wikipedia/commons/e/e8/Chris_Hemsworth_by_Gage_Skidmore_2_%28cropped%29.jpg', NULL, NULL),
(10, 'Tom Hiddleston', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Tom_Hiddleston_%2836109110291%29_%28cropped%29.jpg/1200px-Tom_Hiddleston_%2836109110291%29_%28cropped%29.jpg', NULL, NULL),
(11, 'Chris Evans', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/ChrisEvans2023.jpg/800px-ChrisEvans2023.jpg', NULL, NULL),
(12, 'Sebastian Stan', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/Sebastian_Stan-64526.jpg/1200px-Sebastian_Stan-64526.jpg', NULL, NULL),
(13, 'Jeremy Renner', 'https://static.wikia.nocookie.net/bourne/images/6/60/Jeremy-renner.jpg/revision/latest?cb=20130109005427', NULL, NULL),
(14, 'Mark Ruffalo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Mark_Ruffalo_%2836201774756%29_%28cropped%29.jpg/1200px-Mark_Ruffalo_%2836201774756%29_%28cropped%29.jpg', NULL, NULL),
(15, 'Charlie Cox', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Charlie_Cox_by_Gage_Skidmore.jpg/640px-Charlie_Cox_by_Gage_Skidmore.jpg', NULL, NULL),
(16, 'Krysten Ritter', 'https://upload.wikimedia.org/wikipedia/commons/3/3e/Peabody%27s_%27Marvel%27s_Jessica_Jones%27_Night_%2827139382503%29_%28edited%29.jpg', NULL, NULL),
(17, 'Mike Colter', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Mike_Colter_by_Gage_Skidmore.jpg/1200px-Mike_Colter_by_Gage_Skidmore.jpg', NULL, NULL),
(18, 'Finn Jones', 'https://upload.wikimedia.org/wikipedia/commons/0/0f/Finn_Jones_%2853318496987%29.jpg', NULL, NULL),
(19, 'Jon Bernthal', 'https://m.media-amazon.com/images/M/MV5BMTcwNzA5MDg0OV5BMl5BanBnXkFtZTcwMTU2NjE0Nw@@._V1_FMjpg_UX1000_.jpg', NULL, NULL),
(20, 'Aubrey Joseph', 'https://upload.wikimedia.org/wikipedia/commons/7/7e/Aubrey_Joseph_by_Gage_Skidmore.jpg', NULL, NULL),
(21, 'Olivia Holt', 'https://upload.wikimedia.org/wikipedia/commons/6/6f/Olivia_Holt_by_Gage_Skidmore.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `actor_movie`
--

CREATE TABLE `actor_movie` (
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `actor_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actor_movie`
--

INSERT INTO `actor_movie` (`movie_id`, `actor_id`) VALUES
(1, 1),
(3, 1),
(6, 1),
(7, 1),
(1, 2),
(3, 2),
(7, 2),
(1, 3),
(3, 3),
(7, 3),
(2, 6),
(3, 7),
(7, 7),
(3, 8),
(6, 8),
(4, 9),
(6, 9),
(8, 9),
(4, 10),
(8, 10),
(5, 11),
(6, 11),
(5, 12),
(6, 13),
(6, 14);

-- --------------------------------------------------------

--
-- Table structure for table `actor_show`
--

CREATE TABLE `actor_show` (
  `show_id` bigint(20) UNSIGNED NOT NULL,
  `actor_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actor_show`
--

INSERT INTO `actor_show` (`show_id`, `actor_id`) VALUES
(1, 4),
(1, 5),
(2, 15),
(7, 15),
(3, 16),
(7, 16),
(4, 17),
(7, 17),
(5, 18),
(7, 18),
(6, 19),
(8, 20),
(8, 21);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE `heroes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heroImage` text COLLATE utf8mb4_unicode_ci,
  `originComics` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comicImage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `name`, `heroImage`, `originComics`, `comicImage`, `created_at`, `updated_at`) VALUES
(1, 'Iron Man', 'https://upload.wikimedia.org/wikipedia/en/4/47/Iron_Man_%28circa_2018%29.png', 'Tales of Suspense #39 (1959)', 'https://qph.cf2.quoracdn.net/main-qimg-8e8fd56abb6ef1cfadecaec252d2cb6a.webp', NULL, NULL),
(2, 'War Machine', 'https://upload.wikimedia.org/wikipedia/en/5/51/War_Machine_%28James_Rhodes%29.jpg', 'Iron Man #118 (1979)', 'https://cafans.b-cdn.net/images/Category_42416/subcat_87341/rLncssdf_2002210924091sbpi.jpg', NULL, NULL),
(3, 'Phil Coulson', 'https://comicvine.gamespot.com/a/uploads/scale_small/10/100647/3711822-sonofcoul.jpg', 'Battle Scars #6 (2012)', 'https://upload.wikimedia.org/wikipedia/en/1/15/Battle_Scars_issue_5_cover.png', NULL, NULL),
(4, 'Nick Fury', 'https://assetsio.reedpopcdn.com/FURY2023001_Cov-header.jpg?width=1200&height=1200&fit=crop&quality=100&format=png&enable=upscale&auto=webp', 'Fury (1963) #1', 'https://cdn.marvel.com/u/prod/marvel/i/mg/7/90/59933e964e5fc/clean.jpg', NULL, NULL),
(5, 'Hulk', 'https://upload.wikimedia.org/wikipedia/en/a/aa/Hulk_%28circa_2019%29.png', 'INCREDIBLE HULK #1 (1962)', 'https://cdn.marvel.com/u/prod/marvel/i/mg/9/a0/59933ea5b5c2e/clean.jpg', NULL, NULL),
(6, 'Black Widow', 'https://upload.wikimedia.org/wikipedia/en/1/1b/Black_Widow_1.png', 'Tales of Suspense #52 (1964)', 'https://m.media-amazon.com/images/I/61s11-m6SXL._AC_UF350,350_QL50_.jpg', NULL, NULL),
(7, 'Thor', 'https://lewisrhystwiby.files.wordpress.com/2022/05/dff1ddc600819e5f1aa8e95a788d5584.jpg', 'Journey into Mystery #83 (1962)', 'https://cdn.marvel.com/u/prod/marvel/i/mg/2/80/5a83133fa0008/clean.jpg', NULL, NULL),
(8, 'Loki', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/ee/Various_incarnations_of_Loki_%282014%29.webp/256px-Various_incarnations_of_Loki_%282014%29.webp.png', 'Venus #6 (1949)', 'https://upload.wikimedia.org/wikipedia/en/b/b7/Venus_%281948_comic%29_issue_19.jpg', NULL, NULL),
(9, 'Captain America', 'https://upload.wikimedia.org/wikipedia/en/b/bf/CaptainAmericaHughes.jpg', 'Captain America Comics #1 (1941)', 'https://upload.wikimedia.org/wikipedia/en/9/9c/Captain_America_Comics-1_%28March_1941_Timely_Comics%29.jpg', NULL, NULL),
(10, 'Bucky Barnes', 'https://upload.wikimedia.org/wikipedia/en/8/8d/BuckyBarnes.jpeg', 'Captain America Comics #1 (1941)', 'https://upload.wikimedia.org/wikipedia/en/9/9c/Captain_America_Comics-1_%28March_1941_Timely_Comics%29.jpg', NULL, NULL),
(11, 'Hawkeye', 'https://upload.wikimedia.org/wikipedia/en/9/99/Hawkeye_%28Clinton_Barton%29.png', 'Tales of Suspense #57 (1964)', 'https://i.ebayimg.com/images/g/vp8AAOSw9LhhU2SU/s-l400.jpg', NULL, NULL),
(12, 'Daredevil', 'https://www.writeups.org/wp-content/uploads/Daredevil-Marvel-Comics-Murdock-handbook-Deluxe-cover.jpg', 'Daredevil #1 (1964)', 'https://upload.wikimedia.org/wikipedia/en/0/03/Daredevil_%281964%29_1.jpg', NULL, NULL),
(13, 'Jessica Jones', 'https://cdnb.artstation.com/p/assets/images/images/032/439/199/medium/cameron-stewart-jessicajones.jpg?1606432470', 'Alias #1 (2001)', 'https://upload.wikimedia.org/wikipedia/en/b/bb/Aliasomnibus.PNG', NULL, NULL),
(14, 'Luke Cage', 'https://upload.wikimedia.org/wikipedia/en/f/f9/Luke_Cage_by_Stuart_Immonen.png', 'Luke Cage, Hero for Hire #1 (1972)', 'https://upload.wikimedia.org/wikipedia/en/thumb/4/48/Luke_Cage%2C_Hero_For_Hire_v1_1.jpg/220px-Luke_Cage%2C_Hero_For_Hire_v1_1.jpg', NULL, NULL),
(15, 'Iron Fist', 'https://upload.wikimedia.org/wikipedia/en/0/00/Iron_Fist_%28Danny_Rand%29.jpg', 'Marvel Premiere #15 (1974)', 'https://www.judecca.co.uk/img/h80AAOSw~ixh9xTO/marvel-premiere-15-1974-marvel-comics-1st-appearance-and.webp', NULL, NULL),
(16, 'The Punisher', 'https://cdn.vox-cdn.com/thumbor/jYpThE--0G49nlv3vs7fHXZOkhQ=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/23110155/PUNISHER2022001_Cov.jpg', 'The Amazing Spider-Man #129 (1974)', 'https://m.media-amazon.com/images/I/81eehVs+nML._AC_UF1000,1000_QL80_.jpg', NULL, NULL),
(17, 'Cloak', 'https://i.pinimg.com/736x/d6/1a/8a/d61a8ab31cb3f9614512e893204c7f5c.jpg', 'Peter Parker, the Spectacular Spider-Man #64 (1982)', 'https://i.ebayimg.com/00/s/MTQzM1g5NDY=/z/s-EAAOSwkv9lYm5e/$_1.PNG', NULL, NULL),
(18, 'Dagger', 'https://www.writeups.org/wp-content/uploads/Dagger-Marvel-Comics-Bowen.jpg', 'Peter Parker, the Spectacular Spider-Man #64 (1982)', 'https://i.ebayimg.com/00/s/MTQzM1g5NDY=/z/s-EAAOSwkv9lYm5e/$_1.PNG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hero_movie`
--

CREATE TABLE `hero_movie` (
  `movie_id` bigint(20) UNSIGNED NOT NULL,
  `hero_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hero_movie`
--

INSERT INTO `hero_movie` (`movie_id`, `hero_id`) VALUES
(1, 1),
(3, 1),
(6, 1),
(7, 1),
(1, 2),
(3, 2),
(7, 2),
(6, 3),
(6, 4),
(2, 5),
(6, 5),
(3, 6),
(6, 6),
(4, 7),
(6, 7),
(8, 7),
(4, 8),
(8, 8),
(5, 9),
(6, 9),
(5, 10),
(6, 11);

-- --------------------------------------------------------

--
-- Table structure for table `hero_show`
--

CREATE TABLE `hero_show` (
  `show_id` bigint(20) UNSIGNED NOT NULL,
  `hero_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hero_show`
--

INSERT INTO `hero_show` (`show_id`, `hero_id`) VALUES
(1, 3),
(1, 4),
(2, 12),
(7, 12),
(3, 13),
(7, 13),
(4, 14),
(7, 14),
(5, 15),
(7, 15),
(6, 16),
(8, 17),
(8, 18);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_09_182253_create_movies_table', 1),
(5, '2024_05_09_182300_create_shows_table', 1),
(6, '2024_05_17_145929_create_actors_table', 2),
(7, '2024_05_17_150326_create_cast_table', 3),
(8, '2024_05_17_153826_create_heroes_table', 4),
(9, '2024_05_17_154011_create_hero_movie_table', 4),
(10, '2024_05_18_120059_create_actor_movie_table', 5),
(11, '2024_05_18_120112_create_actor_show_table', 5),
(12, '2024_05_18_120123_create_hero_show_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `release-date` date NOT NULL,
  `runtime` int(11) NOT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videoUrl` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `release-date`, `runtime`, `poster`, `videoUrl`, `created_at`, `updated_at`) VALUES
(1, 'Iron Man', 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.', '2008-05-02', 126, 'https://www.movienewsletters.net/photos/277216R1.jpg', 'https://www.youtube.com/embed/8ugaeA-nMTc\n', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(2, 'The Incredible Hulk', 'Bruce Banner, a scientist on the run from the U.S. Government, must find a cure for the monster he turns into whenever he loses his temper.', '2008-06-13', 112, 'https://m.media-amazon.com/images/M/MV5BMTUyNzk3MjA1OF5BMl5BanBnXkFtZTcwMTE1Njg2MQ@@._V1_.jpg', 'https://www.youtube.com/embed/xbqNb2PFKKA', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(3, 'Iron Man 2', 'With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health and a vengeful mad man with ties to his father\'s legacy.', '2010-05-07', 124, 'https://m.media-amazon.com/images/M/MV5BZGVkNDAyM2EtYzYxYy00ZWUxLTgwMjgtY2VmODE5OTk3N2M5XkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_.jpg', 'https://www.youtube.com/embed/wKtcmiifycU', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(4, 'Thor', 'The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.', '2011-05-06', 115, 'https://m.media-amazon.com/images/M/MV5BOGE4NzU1YTAtNzA3Mi00ZTA2LTg2YmYtMDJmMThiMjlkYjg2XkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_.jpg\n', 'https://www.youtube.com/embed/JOddp-nlNvQ', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(5, 'Captain America: The First Avenger', 'Steve Rogers, a rejected military soldier, transforms into Captain America after taking a dose of a \"Super-Soldier serum\". But being Captain America comes at a price as he attempts to take down a war monger and a terrorist organization.', '2011-07-22', 124, 'https://upload.wikimedia.org/wikipedia/en/3/37/Captain_America_The_First_Avenger_poster.jpg', 'https://www.youtube.com/embed/JerVrbLldXw', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(6, 'The Avengers', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', '2012-05-04', 143, 'https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 'https://www.youtube.com/embed/eOrNdBpGMv8', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(7, 'Iron Man 3', 'When Tony Stark\'s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.', '2013-05-03', 130, 'https://m.media-amazon.com/images/M/MV5BMjE5MzcyNjk1M15BMl5BanBnXkFtZTcwMjQ4MjcxOQ@@._V1_.jpg', 'https://www.youtube.com/embed/Ke1Y3P9D0Bc', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(8, 'Thor: The Dark World', 'When the Dark Elves attempt to plunge', '2013-11-08', 112, 'https://upload.wikimedia.org/wikipedia/en/7/7f/Thor_The_Dark_World_poster.jpg', 'https://www.youtube.com/embed/npvJ9FTgZbM', '2024-05-09 18:30:09', '2024-05-09 18:30:09');

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ps4U8xXh3zcAfE2IAIEGCkr0p1eLZUbbY4q7w3Yv', NULL, '10.2.144.31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWXJDZktjNWpoYUdEaUh1SDlDRE9EQVBGamxKUGxVN1Y3ZVRmOHB5eCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly8xMC4yLjE2MC4xNjIiO31zOjM6InVybCI7YToxOntzOjg6ImludGVuZGVkIjtzOjI4OiJodHRwOi8vMTAuMi4xNjAuMTYyL21vdmllcy8xIjt9fQ==', 1716048767),
('yFOEEWO9iVxmY9BBPXY6TmLDVR7hk4iKO3NLwlSh', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiN2VhcjdQdXNod0NjSG5jZjhSeHJTa0FVMGR2bmY1YzJzZms3S25VeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zaG93cy8xIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1716047309);

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `release-date` date NOT NULL,
  `seasons` int(11) NOT NULL,
  `cast` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videoUrl` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `title`, `description`, `release-date`, `seasons`, `cast`, `poster`, `videoUrl`, `created_at`, `updated_at`) VALUES
(1, 'Agents of S.H.I.E.L.D.', 'Follows the journeys of S.H.I.E.L.D. agents as they investigate strange occurrences around the world and protect humanity from the unknown.', '2013-09-24', 7, 'Clark Gregg, Ming-Na Wen, Brett Dalton', 'https://m.media-amazon.com/images/M/MV5BMTkwODYyMjgzOV5BMl5BanBnXkFtZTgwODAzMTE5MjE@._V1_.jpg', 'https://www.youtube.com/embed/T3T-evQZiQo\n', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(2, 'Daredevil', 'A blind lawyer by day, vigilante by night. Matt Murdock fights the crime of New York as Daredevil.', '2015-04-10', 3, 'Charlie Cox, Deborah Ann Woll, Elden Henson', 'https://m.media-amazon.com/images/M/MV5BODcwOTg2MDE3NF5BMl5BanBnXkFtZTgwNTUyNTY1NjM@._V1_.jpg', 'https://www.youtube.com/embed/jAy6NJ_D5vU', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(3, 'Jessica Jones', 'Following the tragic end of her brief superhero career, Jessica Jones tries to rebuild her life as a private investigator, dealing with cases involving people with remarkable abilities in New York City.', '2015-11-20', 3, 'Krysten Ritter, Rachael Taylor, Mike Colter', 'https://m.media-amazon.com/images/M/MV5BM2QyNmZkNTYtZWQyZi00NDhhLWEzMDItYmIzY2U4ZWVmOWNhXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_.jpg', 'https://www.youtube.com/embed/nWHUjuJ8zxE', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(4, 'Luke Cage', 'When a sabotaged experiment gives him super strength and unbreakable skin, Luke Cage becomes a fugitive attempting to rebuild his life in Harlem and must soon confront his past and fight a battle for the heart of his city.', '2016-09-30', 2, 'Mike Colter, Simone Missick, Theo Rossi', 'https://m.media-amazon.com/images/M/MV5BMTcyMzc1MjI5MF5BMl5BanBnXkFtZTgwMzE4ODY2OTE@._V1_FMjpg_UX1000_.jpg', 'https://www.youtube.com/embed/ORa4hPhGrpo', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(5, 'Iron Fist', 'A young man is bestowed with incredible martial arts skills and a mystical force known as the Iron Fist.', '2017-03-17', 2, 'Finn Jones, Jessica Henwick, Jessica Stroup', 'https://m.media-amazon.com/images/M/MV5BMjI5Mjg1NDcyOV5BMl5BanBnXkFtZTgwMjAxOTQ5MTI@._V1_.jpg', 'https://www.youtube.com/embed/f9OKL5no-S0', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(6, 'The Punisher', 'After the murder of his family, Marine veteran Frank Castle becomes the vigilante known as \"The Punisher,\" with only one goal in mind: to avenge them.', '2017-11-17', 2, 'Jon Bernthal, Amber Rose Revah, Ben Barnes', 'https://m.media-amazon.com/images/M/MV5BZDYzODRjNTYtNmVmYy00NTJjLTk3NzQtZjQ5Y2Y1YmIzMzZhXkEyXkFqcGdeQXVyMTY4NTMxNTcx._V1_FMjpg_UX1000_.jpg', 'https://www.youtube.com/embed/jrLhP5sK2wI', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(7, 'The Defenders', 'A group of unique individuals with special abilities come together to fight against a common enemy.', '2017-08-18', 1, 'Charlie Cox, Krysten Ritter, Mike Colter', 'https://m.media-amazon.com/images/M/MV5BMTUwMjA5NTg4MF5BMl5BanBnXkFtZTgwODUyODkwMzI@._V1_.jpg', 'https://www.youtube.com/embed/jYvHxEEgrPA', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(8, 'Cloak & Dagger', 'Two teenagers from very different backgrounds find themselves burdened and awakened to newly acquired superpowers while growing closer together every day.', '2018-06-07', 2, 'Olivia Holt, Aubrey Joseph, Emma Lahana', 'https://m.media-amazon.com/images/M/MV5BNTU4NzU2OTc5NF5BMl5BanBnXkFtZTgwMDg3MzA0NzM@._V1_.jpg', 'https://www.youtube.com/embed/kxtxVXvlMW0', '2024-05-09 18:29:38', '2024-05-09 18:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Remy Gistelinck', 'rgistelinck@gmail.com', NULL, '$2y$12$sYkBG2.lSdtW5Lb.RaiyB.ZAOVh6IkAovHmFFeYOz3mHSeg645eSa', 'VkCngSWxw26VNI1vkmSqzSedZsHNS9youq1djd0LxcZhZItmxSUdTejc0oiK', '2024-05-09 19:33:30', '2024-05-09 19:33:30'),
(2, 'test', 'test@gmail.com', NULL, '$2y$12$pJ6/74ZpnuoC/q7uJwDjk.YFGdLBlBE4KfhmY1EdxELF.xhtG1Sy.', NULL, '2024-05-18 14:09:45', '2024-05-18 14:09:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `actor_movie`
--
ALTER TABLE `actor_movie`
  ADD PRIMARY KEY (`movie_id`,`actor_id`),
  ADD KEY `actor_movie_actor_id_foreign` (`actor_id`);

--
-- Indexes for table `actor_show`
--
ALTER TABLE `actor_show`
  ADD PRIMARY KEY (`show_id`,`actor_id`),
  ADD KEY `actor_show_actor_id_foreign` (`actor_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `heroes`
--
ALTER TABLE `heroes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_movie`
--
ALTER TABLE `hero_movie`
  ADD PRIMARY KEY (`movie_id`,`hero_id`),
  ADD KEY `movie_hero_hero_id_foreign` (`hero_id`);

--
-- Indexes for table `hero_show`
--
ALTER TABLE `hero_show`
  ADD PRIMARY KEY (`show_id`,`hero_id`),
  ADD KEY `hero_show_hero_id_foreign` (`hero_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `heroes`
--
ALTER TABLE `heroes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actor_movie`
--
ALTER TABLE `actor_movie`
  ADD CONSTRAINT `actor_movie_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `actor_movie_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `actor_show`
--
ALTER TABLE `actor_show`
  ADD CONSTRAINT `actor_show_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `actor_show_show_id_foreign` FOREIGN KEY (`show_id`) REFERENCES `shows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hero_movie`
--
ALTER TABLE `hero_movie`
  ADD CONSTRAINT `movie_hero_hero_id_foreign` FOREIGN KEY (`hero_id`) REFERENCES `heroes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_hero_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hero_show`
--
ALTER TABLE `hero_show`
  ADD CONSTRAINT `hero_show_hero_id_foreign` FOREIGN KEY (`hero_id`) REFERENCES `heroes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hero_show_show_id_foreign` FOREIGN KEY (`show_id`) REFERENCES `shows` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
