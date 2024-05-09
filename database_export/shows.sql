-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 09, 2024 at 06:30 PM
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `title`, `description`, `release-date`, `seasons`, `cast`, `poster`, `created_at`, `updated_at`) VALUES
(1, 'Agents of S.H.I.E.L.D.', 'Follows the journeys of S.H.I.E.L.D. agents as they investigate strange occurrences around the world and protect humanity from the unknown.', '2013-09-24', 7, 'Clark Gregg, Ming-Na Wen, Brett Dalton', '[Poster Link]', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(2, 'Daredevil', 'A blind lawyer by day, vigilante by night. Matt Murdock fights the crime of New York as Daredevil.', '2015-04-10', 3, 'Charlie Cox, Deborah Ann Woll, Elden Henson', '[Poster Link]', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(3, 'Jessica Jones', 'Following the tragic end of her brief superhero career, Jessica Jones tries to rebuild her life as a private investigator, dealing with cases involving people with remarkable abilities in New York City.', '2015-11-20', 3, 'Krysten Ritter, Rachael Taylor, Mike Colter', '[Poster Link]', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(4, 'Luke Cage', 'When a sabotaged experiment gives him super strength and unbreakable skin, Luke Cage becomes a fugitive attempting to rebuild his life in Harlem and must soon confront his past and fight a battle for the heart of his city.', '2016-09-30', 2, 'Mike Colter, Simone Missick, Theo Rossi', '[Poster Link]', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(5, 'Iron Fist', 'A young man is bestowed with incredible martial arts skills and a mystical force known as the Iron Fist.', '2017-03-17', 2, 'Finn Jones, Jessica Henwick, Jessica Stroup', '[Poster Link]', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(6, 'The Punisher', 'After the murder of his family, Marine veteran Frank Castle becomes the vigilante known as \"The Punisher,\" with only one goal in mind: to avenge them.', '2017-11-17', 2, 'Jon Bernthal, Amber Rose Revah, Ben Barnes', '[Poster Link]', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(7, 'The Defenders', 'A group of unique individuals with special abilities come together to fight against a common enemy.', '2017-08-18', 1, 'Charlie Cox, Krysten Ritter, Mike Colter', '[Poster Link]', '2024-05-09 18:29:38', '2024-05-09 18:29:38'),
(8, 'Cloak & Dagger', 'Two teenagers from very different backgrounds find themselves burdened and awakened to newly acquired superpowers while growing closer together every day.', '2018-06-07', 2, 'Olivia Holt, Aubrey Joseph, Emma Lahana', '[Poster Link]', '2024-05-09 18:29:38', '2024-05-09 18:29:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
