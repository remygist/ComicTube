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
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `release-date` date NOT NULL,
  `runtime` int(11) NOT NULL,
  `cast` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `description`, `release-date`, `runtime`, `cast`, `poster`, `created_at`, `updated_at`) VALUES
(1, 'Iron Man', 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.', '2008-05-02', 126, 'Robert Downey Jr., Gwyneth Paltrow, Terrence Howard', '[Poster Link]', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(2, 'The Incredible Hulk', 'Bruce Banner, a scientist on the run from the U.S. Government, must find a cure for the monster he turns into whenever he loses his temper.', '2008-06-13', 112, 'Edward Norton, Liv Tyler, Tim Roth', '[Poster Link]', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(3, 'Iron Man 2', 'With the world now aware of his identity as Iron Man, Tony Stark must contend with both his declining health and a vengeful mad man with ties to his father\'s legacy.', '2010-05-07', 124, 'Robert Downey Jr., Gwyneth Paltrow, Don Cheadle', '[Poster Link]', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(4, 'Thor', 'The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.', '2011-05-06', 115, 'Chris Hemsworth, Natalie Portman, Tom Hiddleston', '[Poster Link]', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(5, 'Captain America: The First Avenger', 'Steve Rogers, a rejected military soldier, transforms into Captain America after taking a dose of a \"Super-Soldier serum\". But being Captain America comes at a price as he attempts to take down a war monger and a terrorist organization.', '2011-07-22', 124, 'Chris Evans, Hayley Atwell, Sebastian Stan', '[Poster Link]', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(6, 'The Avengers', 'Earth\'s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', '2012-05-04', 143, 'Robert Downey Jr., Chris Evans, Scarlett Johansson', '[Poster Link]', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(7, 'Iron Man 3', 'When Tony Stark\'s world is torn apart by a formidable terrorist called the Mandarin, he starts an odyssey of rebuilding and retribution.', '2013-05-03', 130, 'Robert Downey Jr., Gwyneth Paltrow, Don Cheadle', '[Poster Link]', '2024-05-09 18:30:09', '2024-05-09 18:30:09'),
(8, 'Thor: The Dark World', 'When the Dark Elves attempt to plunge', '2013-11-08', 112, 'Chris Hemsworth, Natalie Portman, Tom Hiddleston', '[Poster Link]', '2024-05-09 18:30:09', '2024-05-09 18:30:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
