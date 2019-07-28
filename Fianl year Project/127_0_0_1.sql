-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2019 at 07:38 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angular_db`
--
CREATE DATABASE IF NOT EXISTS `angular_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `angular_db`;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` smallint(6) NOT NULL,
  `model` varchar(255) DEFAULT '',
  `price` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `model`, `price`) VALUES
(4, 'wertgh', 212);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(50) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `author`, `user_id`, `category_id`, `description`, `image`, `is_featured`, `is_active`, `created_at`) VALUES
(1, 'Sample blog post 1', 'auth1', 1, 1, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'img1.jpg', 1, 1, '2018-10-27 04:12:09'),
(2, 'Sample blog post 2', 'auth2', 1, 1, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'img2.jpg', 1, 1, '2018-10-27 06:12:09'),
(3, 'Sample blog post 3', 'auth3', 1, 2, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'img3.jpg', 0, 1, '2018-10-27 07:12:09'),
(4, 'Sample blog post 4', 'auth4', 1, 2, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'img4.jpg', 0, 1, '2018-10-27 09:12:09'),
(5, 'Sample blog post 5', 'auth5', 1, 7, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'img5.jpg', 1, 1, '2018-10-27 10:12:09'),
(6, 'Sample blog post 6', 'auth6', 1, 7, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'img6.jpg', 0, 1, '2018-10-27 12:12:09'),
(7, 'saas', 'sa', 0, 0, 'fedfe', NULL, 0, 0, '2019-01-12 11:22:38'),
(8, 'saas', 'sa', 0, 0, 'fedfe', NULL, 0, 0, '2019-01-12 11:22:40'),
(9, 'saas', 'sa', 0, 0, 'fedfe', NULL, 0, 0, '2019-01-12 11:22:44'),
(10, 'ds', 'dsdd', 0, 0, 'dddd', NULL, 0, 0, '2019-01-16 09:23:49'),
(11, 'f', 'f', 0, 0, 'ggfgf', NULL, 0, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `blogs1`
--

CREATE TABLE `blogs1` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `active` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs1`
--

INSERT INTO `blogs1` (`id`, `title`, `description`, `author`, `active`, `created_at`) VALUES
(1, '', '', '', '1', '2019-01-17 03:00:40'),
(2, 'cv', 'xcvb', 'rs', '1', '2019-01-17 03:00:40'),
(3, '', '', '', '1', '2019-01-17 03:02:09'),
(4, 'm', 'o', 'b', '1', '2019-01-17 03:02:09'),
(5, '', '', '', '1', '2019-01-17 03:03:31'),
(6, 'gf', 'hjk', 'hj', '1', '2019-01-17 03:03:31'),
(7, 'r', 'g', 'h', '1', '2019-01-17 03:11:37'),
(8, 'gh', 'dfgnm,.', 'ghcjhc', '1', '2019-01-17 03:12:12'),
(9, 'n', 'nbm', 'hj', '1', '2019-01-17 03:13:02');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Technology'),
(2, 'Design'),
(3, 'Culture'),
(4, 'Business'),
(5, 'Politics'),
(6, 'Opinion'),
(7, 'Science'),
(8, 'Health'),
(9, 'Style'),
(10, 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `message` text,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`) VALUES
(1, 'Ujjwal Gaur', 'demoang@rsgitech.com', '9999999999', 'This is test message', '2018-10-30 10:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `description`, `is_active`, `created_at`) VALUES
(1, 'About', 'about', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '2018-10-27 06:10:00'),
(2, 'Services', 'services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, '2018-10-27 06:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `token`, `is_active`, `created_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'RSGiTECH', NULL, 'a1aed1a77c0916c43a4a67afe49af265', 1, '2018-10-27 05:25:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs1`
--
ALTER TABLE `blogs1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `blogs1`
--
ALTER TABLE `blogs1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `blood_bank`
--
CREATE DATABASE IF NOT EXISTS `blood_bank` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `blood_bank`;

-- --------------------------------------------------------

--
-- Table structure for table `acceptors`
--

CREATE TABLE `acceptors` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `a_blood_group` varchar(50) NOT NULL,
  `a_units` varchar(50) NOT NULL,
  `a_mobile` varchar(10) NOT NULL,
  `a_address` text NOT NULL,
  `a_image` varchar(100) NOT NULL,
  `a_city` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acceptors`
--

INSERT INTO `acceptors` (`id`, `date`, `name`, `email`, `a_blood_group`, `a_units`, `a_mobile`, `a_address`, `a_image`, `a_city`, `status`) VALUES
(1, '0000-00-00', 'Madhav Chaturedi', '', 'O', '1', '9808840842', '10/268 Geeta nagar ,Agra', 'No', 'Agra', '1'),
(2, '2018-02-07', 'Raghav Chaturedi', 'qwqw@as.fbf', 'B', '102', '9808840842', '10/268 Geeta nagar ,Agra', 'No', 'DELHI', '1'),
(3, '2018-02-12', 'Ayush Dubey', 'ayush@gmail.com', 'A', '1', '9808840842', 'Vishnu Coloney', 'No', 'Agra', '1'),
(4, '0000-00-00', 'Akash Rathore', 'a@gmail.com', 'B', '2', '9808840842', '10/268 Geeta nagar ,Agra', 'No', 'Agra', '1'),
(5, '2018-02-15', 'Akash kmar', 'hardik@gmail.com', 'O', '1', '9808840842', '10/268 Geeta nagar ,Agra', 'No', 'Agra', '1'),
(6, '2018-02-08', 'deepak', 'ss@w.fg', 'A', '1', '9808840842', '10/268 Geeta nagar ,Agra', 'img/acceptors/6.jpg', 'Agra', '2'),
(7, '2018-02-08', 'qwr', 'ayush@gmail.com', 'A', '1', '9808840842', '10/268 Geeta nagar ,Agra', 'img/acceptors/7.jpg', 'Agra', '2'),
(8, '2018-01-31', 'Amitta', 'a@w.gr', 'A', '1', '9090909090', 'qw', 'img/acceptors/8.jpg', 'Agra', '2'),
(9, '2018-02-08', 'AMIT', 'amit@gmail.cmo', 'O', '40', '9999999999', '121/233 rambagh', 'img/acceptors/9.jpg', 'delhi', '2'),
(10, '2018-02-07', 'sd', 'seses@d.co', 'O', '14', '9808840842', 'as', '../img/7571658765a8ace23315ce.jpg', 'Agra', '2'),
(11, '2018-01-31', 'a', 'a@w.gr', 'A', '1', '9090909090', 'as', '../img/19221021935a8acdfca89df.jpg', 'Array', '1'),
(12, '2018-02-15', 'a', 'a@w.grh', 'A', '1', '9090909090', 'ahg', '../img/1972541025a8acc23e66d8.jpg', 'h', '1'),
(13, '2018-02-21', 'qw', 'a@w.gr', 'O', '1', '9808840842', 'aa', 'img/acceptors/13.jpg', 'fgrt', '2'),
(14, '2018-02-14', 'sdas', 'ayush@gmail.com', 'A', '21', '9808840842', 'as', '../img/13.jpg', 'gdf', '0');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `status`) VALUES
(1, 'hardik@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '0');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `post_data` varchar(200) NOT NULL,
  `post_image` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `place` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `title`, `post_data`, `post_image`, `date`, `place`, `status`) VALUES
(1, 'WORLD BLOOD DONORS DAY', 'Every year, on 14 June, countries around the world celebrate World Blood Donor Day. The event serves to thank voluntary.', 'img/campaigns/1.jpg', '2018-02-09', 'Agra', 2),
(2, 'O BLOOD DONORS NEEDED', 'O Negative blood cells are called â€œuniversalâ€ meaning they can be transfused to almost any patient in need and blood cells are safest.', 'img/campaigns/2.jpg', '2018-02-03', 'California', 2),
(3, 'YOU ARE SOMEBODY TYPE', 'Many people has same blood group like you. so donate now and bring smiles in their face and encourage others for donate blood.', 'img/campaigns/3.jpg', '2018-02-04', 'Delhi', 2),
(4, 'HELLO', '', 'img/campaigns/4.jpg', '0000-00-00', 'Agra', 0),
(5, 'h', 'ki', 'img/campaigns/5.jpg', '2018-02-09', 'hf', 2),
(6, 'dasd', 'tetyt', 'img/campaigns/6.jpg', '2018-02-22', 'dasd', 1),
(7, 'ty', 'iy', 'img/campaigns/7.jpg', '2018-02-15', 'ty', 1),
(8, 'b', 'b', 'img/campaigns/8.jpg', '2018-02-28', 'b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_images`
--

CREATE TABLE `campaigns_images` (
  `id` int(11) NOT NULL,
  `campaigns_id` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigns_images`
--

INSERT INTO `campaigns_images` (`id`, `campaigns_id`, `image`, `status`) VALUES
(1, 1, '1_1.jpg', 1),
(2, 1, '1_1.jpg', 1),
(3, 1, '1_1.jpg', 1),
(4, 1, '1_1.jpg', 1),
(5, 1, '1_1.jpg', 1),
(6, 1, '1_1.jpg', 1),
(7, 3, '../img/3_6.jpg', 1),
(8, 2, '../img/2_7.jpg', 1),
(9, 3, '../img/3_8.jpg', 1),
(10, 2, '../img/2_9.jpg', 1),
(11, 5, 'img/campaigns/5_10.jpg', 0),
(12, 5, 'img/campaigns/5_12.jpg', 0),
(13, 5, 'img/campaigns/5_13.jpg', 0),
(14, 5, 'img/campaigns/5_14.jpg', 0),
(15, 5, 'img/campaigns/5_15.jpg', 0),
(16, 5, 'img/campaigns/5_16.jpg', 0),
(17, 5, 'img/campaigns/5_17.jpg', 0),
(18, 5, 'img/campaigns/5_18.jpg', 0),
(19, 5, 'img/campaigns/5_19.jpg', 0),
(20, 5, 'img/campaigns/5_20.jpg', 0),
(21, 4, 'img/campaigns/4_21.jpg', 0),
(22, 4, 'img/campaigns/4_22.jpg', 0),
(23, 3, 'img/campaigns/3_23.jpg', 0),
(24, 3, 'img/campaigns/3_24.jpg', 0),
(25, 3, 'img/campaigns/3_25.jpg', 0),
(26, 3, 'img/campaigns/3_26.jpg', 0),
(27, 1, 'img/campaigns/1_27.jpg', 0),
(28, 1, 'img/campaigns/1_28.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `doners`
--

CREATE TABLE `doners` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(50) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `type` varchar(1) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doners`
--

INSERT INTO `doners` (`id`, `first_name`, `last_name`, `username`, `email`, `mobile`, `password`, `image`, `address`, `city`, `blood_group`, `type`, `status`) VALUES
(1, 'Array', 'Arra', 'aaaaaaaaaaaac', 'a@gmail.com', '9999999999', '21232f297a57a5a743894a0e4a801fc3', 'img/doners/1.jpg', 'a', 'Agra', 'A', 'a', '3'),
(2, 'madhav', 'chaturvedi', 'madhav', 'madhav@gmail.com', '9090909090', '76d80224611fc919a5d54f0ff9fba446', 'img/doners/2.jpg', 'geeta nagar', 'agra', 'O', 'a', '3'),
(4, 'Akash', 'Rathore', 'a', 'a@w.g', '1111111111', 'e09c80c42fda55f9d992e59ca6b3307d', '../img/4.jpg', 'swa', 'delhi', 'B', 'a', '1'),
(5, 'Mayank', 'Bhadouriya', 'mayank', 'mayank@gmail.com', '9808840876', 'e11170b8cbd2d74102651cb967fa28e5', 'img/doners/5.jpg', 'Hanuman Nagar', 'Agra', 'a', 'a', '2'),
(6, 'Array', '', '', '', '', 'e11170b8cbd2d74102651cb967fa28e5', '../img/7447880375a6b1b48da256.jpg', '', '', '', '0', '1'),
(7, 'q', 'q', 'q', 'a@w.gr', '8888888888', 'e11170b8cbd2d74102651cb967fa28e5', '../img/14126506165a6b2d5d96b7e.jpg', 'sa', 'agra', 'a', '0', '1'),
(8, 'q', 'q', 'eses', 'seses@d.com', '8989898989', 'e11170b8cbd2d74102651cb967fa28e5', 'img/doners/8.jpg', 'seeses', 'sese', 'seses', '0', '2'),
(9, 'amit', 'singh', 'amit@gmail.com', 'amit@gmail.com', '9808840842', '67e1fa97e0da5b0aca178962fea5f22a', '../img/19770419025a85753e75c03.jpg', '10/323 agra', 'Agra', 'A', '0', '1'),
(10, 'r', 'rr', 'r', 'hardik@gmail.com', '9090909090', 'adbc91a43e988a3b5b745b8529a90b61', '../img/10.jpg', 'a', 'agra', 'A', '0', '1'),
(11, 'qwe', 'qwe', 'ew', 'ayush@gmail.com', '9808840842', 'e11170b8cbd2d74102651cb967fa28e5', 'img/doners/11.jpg', 'a', 'agra', 'A', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `doner_record`
--

CREATE TABLE `doner_record` (
  `id` int(11) NOT NULL,
  `doner_id` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `blood_group` varchar(50) NOT NULL,
  `units` varchar(10) NOT NULL,
  `venue` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doner_record`
--

INSERT INTO `doner_record` (`id`, `doner_id`, `date`, `blood_group`, `units`, `venue`, `status`) VALUES
(1, 1, '', 'A', '1', '1i', '1'),
(2, 1, '', 'A', '1', 'HOSPITAL', '1'),
(3, 5, 'date', 'O', '10', 'Sarswati Vidhya Mandir', '0'),
(4, 2, 'date', 'B', '100', 'Sarswati vidhya Mandir', '0'),
(5, 1, '', 'A', '1', 'FET Agra College', '1'),
(6, 2, '', 'B', '2', 'SSVMh', '0'),
(7, 2, '', 'B', '2', 'ssvm', '0'),
(8, 1, '', 'A', '20', 'agra', '0'),
(9, 1, '', 'A', '2', 'erfew', '0'),
(10, 5, 'date', 'O', '2', 'ht', '0'),
(11, 8, 'date', 'X', '4', 'qwe', '0'),
(12, 2, '', 'O', '50', 'hom', '0'),
(13, 9, '', 'A', '1', 'agra', '0'),
(14, 1, '', 'AB', '2', 'Agra', '0'),
(15, 1, '', 'AB', '1', 'agra', '1'),
(16, 2, '', 'O', '2', 'FET Agra College', '0'),
(17, 2, '', 'O', '1', 'FET Agra College', '0'),
(18, 1, '', 'A', '2', 'a', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `password` varchar(32) NOT NULL,
  `image` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `type` text NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `first_name`, `last_name`, `username`, `email`, `mobile`, `password`, `image`, `address`, `type`, `status`) VALUES
(1, '2018-02-19 14:39:39', 'Hardik', 'Chaturvedi', 'Hardik', 'hardik@gmail.com', '7017819799', '21232f297a57a5a743894a0e4a801fc3', '../img/5865245295a673312b1a81.jpg', '10/268 Geeta Nagar,Yamuna Bridge Agra', 'admin', '1'),
(2, '2018-02-19 14:39:39', 'Madhav', 'Chaturvedi', 'madhav', 'madhav@gmail.com', '9808840842', 'e807f1fcf82d132f9bb018ca6738a19f', '../img/3847969575a69e2887cc1e.jpg', '', 'user', '1'),
(3, '2018-02-19 14:39:39', 'Ayush', 'dubey', 'ayush', 'ayush@gmail.com', '9090909090', '25f9e794323b453885f5181f1b624d0b', '../img/18374313165a67330b64ecc.jpg', 'vishnu coloney', 'user', '1'),
(4, '2018-02-19 14:39:38', 'a', 'a', 'a', 'ayush@gmail.com', '9090909090', '552e6a97297c53e592208cf97fbb3b60', '../img/19602551555a673303e1d02.jpg', 'a', 'user', '1'),
(5, '2018-02-19 14:39:38', 'Akash', 'Rathore', 'akash', 'a@gmail.com', '9999999999', 'beee47d70a7fc4c0c2cd2b517cc4b134', '../img/18248036215a6b655285ec2.jpg', 'qwe', 'user', '1'),
(6, '2018-02-16 12:22:35', '11', '', '', '', '', 'e11170b8cbd2d74102651cb967fa28e5', '../img/12756379505a6b1b1419073.jpg', '', 'user', '1'),
(7, '2018-02-19 12:09:10', 'test', 'test', 'testtff', 'test@gmail.com', '9090909090', 'e11170b8cbd2d74102651cb967fa28e5', 'img/users/7.jpg', 'test', 'user', '2'),
(8, '2018-02-19 12:08:54', 'Ayush', 'Dubey', 'ayush', 'ayush@gmail.com', '9999999999', 'e11170b8cbd2d74102651cb967fa28e5', 'img/users/8.jpg', 'ggr', 'user', '2'),
(9, '2018-02-19 12:14:49', 'a', 'a', 'Array', 'a@w.gr', '9090909090', 'e11170b8cbd2d74102651cb967fa28e5', 'img/users/9.jpg', '=', 'user', '1'),
(10, '2018-02-19 12:16:24', 'gf', 'gf', 'fg', 'hardik@gmail.com', '9808840842', 'e53a68903e2c336a890907125b489abd', 'img/users/10.jpg', 'hy', 'user', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceptors`
--
ALTER TABLE `acceptors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns_images`
--
ALTER TABLE `campaigns_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaigns_id` (`campaigns_id`);

--
-- Indexes for table `doners`
--
ALTER TABLE `doners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doner_record`
--
ALTER TABLE `doner_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doner_id` (`doner_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acceptors`
--
ALTER TABLE `acceptors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `campaigns_images`
--
ALTER TABLE `campaigns_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `doners`
--
ALTER TABLE `doners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `doner_record`
--
ALTER TABLE `doner_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `campaigns_images`
--
ALTER TABLE `campaigns_images`
  ADD CONSTRAINT `campaigns_images_ibfk_1` FOREIGN KEY (`campaigns_id`) REFERENCES `campaigns` (`id`);

--
-- Constraints for table `doner_record`
--
ALTER TABLE `doner_record`
  ADD CONSTRAINT `doner_record_ibfk_1` FOREIGN KEY (`doner_id`) REFERENCES `doners` (`id`);
--
-- Database: `cms_blog`
--
CREATE DATABASE IF NOT EXISTS `cms_blog` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cms_blog`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `name`, `password`, `status`) VALUES
(1, 'admin', 'Hardik', '21232f297a57a5a743894a0e4a801fc3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` int(11) NOT NULL,
  `catogory` varchar(30) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `catogory`, `status`) VALUES
(1, 'Mobile', '0'),
(2, 'Laptop', '0'),
(11, 'a', '1'),
(12, 'n', '1'),
(13, 'cd', '1'),
(14, 'cd', '1'),
(15, 'jio', '0'),
(16, 'Iphone', '0');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `post_id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `del_status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `date`, `name`, `username`, `post_id`, `email`, `comment`, `status`, `image`, `del_status`) VALUES
(1, '2018-01-09 11:50:11', 'Hardik', 'Hardik', 12, 'hardikx2000@gmail.com', 'ewqeqwedfwqefwefwefewfwefwefwefwefwefwefwefewfwefwefwefwefwe<br>sddwjdwoideoiwoiefdhiowehfoiwhfi', 'Approve', 'slider-image1.png', '0'),
(2, '2018-08-16 09:53:33', 'Madhav', 'Hardik', 12, 'hardikx2000@gmail.com', 'ewoifueifuwefuowiefefhwfhfsdhardikdfiowehjfoieh<br>wfihfoewhfuwehgfweufhewofihwefoiewhfioewhfoiewhfioewf', 'Pending', 'slider-image.png', '0'),
(3, '2018-08-16 09:53:29', 'Madhav', 'Hardik', 12, 'hardikx2000@gmail.com', 'ewoifueifuwefuowiefefhwfhfsdhardikdfiowehjfoieh<br>wfihfoewhfuwehgfweufhewofihwefoiewhfioewhfoiewhfioewf', 'Pending', 'slider-image.png', '0'),
(11, '2018-01-09 11:50:49', 'e4r', '', 0, 'ewf@gh.cpm', 'dwedwed', 'Approve', '', '1'),
(12, '2018-01-09 11:37:37', 'erferffe', '', 11, 'rerferf@de.com', 'erferferf', 'Pending', 'slider-image1.png', '1'),
(13, '2018-08-16 09:53:27', 'hardik', '', 1, 'hardikx2000@gmail.com', 'best', 'Approve', 'slider-image1.png', '0'),
(14, '2018-01-09 11:37:29', '', '', 12, '', '', 'Pending', 'slider-image1.png', '1'),
(15, '2018-01-09 11:36:49', 's', '', 12, 'asa@sh.com', 'saadsdsadsa', 'Pending', 'slider-image1.png', '1'),
(16, '2018-01-09 11:36:42', '', '', 28, '', '', 'Approve', 'slider-image1.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `author_image` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `categories` varchar(50) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `post_data` text NOT NULL,
  `views` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `date`, `title`, `author`, `author_image`, `image`, `categories`, `tags`, `post_data`, `views`, `status`) VALUES
(1, '2017-09-01 07:00:00', 'CSS video Tutorial', 'HardikX', 'slider-image.png', 'slider-image1.jpg', 'Video', 'Google', 'Hardik Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 100, '1'),
(5, '2017-09-02 07:00:00', 'Jquery Tutorial', 'Hardik Chaturvedi', 'slider-image.png', 'slider-image.png', 'Video', 'google', 'Hardik Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 150, '1'),
(6, '2018-01-08 11:36:15', 'PHP Tutorial', 'Hardik Chaturvedi', 'slider-image.png', 'slider-image.png', 'Video', 'google', 'Hardik Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 200, '1'),
(7, '2018-01-08 11:37:25', 'PHP Tutorial', 'Hardik Chaturvedi', 'slider-image.png', 'slider-image.png', 'Video', 'google', 'Hardik Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 200, '1'),
(8, '2018-01-09 11:52:11', 'PHP Tutorial', 'Hardik Chaturvedi', 'slider-image.png', 'slider-image.png', 'Video', 'google', 'Hardik Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 200, 'published'),
(9, '2018-01-09 11:52:11', 'PHP Tutorial', 'Hardik Chaturvedi', 'slider-image.png', '../img/19934481525a54942f6104b.jpg', 'Mobile', 'google', '<p>helloooooooooooooo</p>', 200, 'published'),
(10, '2018-01-09 10:05:00', 'PHP Tutorial', 'Hardik Chaturvedi', 'slider-image.png', 'slider-image.png', 'Video', 'google', 'Hardik Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 200, '1'),
(11, '2018-01-07 15:15:52', 'PHP Tutorial', 'Hardik Chaturvedi', 'slider-image.png', 'slider-image.png', 'Video', 'google', 'Hardik Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 200, '1'),
(12, '2017-09-02 07:00:00', 'PHP Tutorial', 'Hardik Chaturvedi', 'slider-image.png', 'slider-image.png', 'Video', 'google', 'Hardik Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 200, '1'),
(13, '2017-09-02 07:00:00', 'PHP Tutorial', 'Hardik Chaturvedi', 'slider-image.png', 'slider-image.png', 'Video', 'google', 'Hardik Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 200, '1'),
(14, '0000-00-00 00:00:00', 'a', '', '', '../img/10580355535a522936b6dcb.jpg', 'catogory', '', 'aaa', 0, '1'),
(15, '0000-00-00 00:00:00', 'a', '', '', '../img/11993400315a522937b775c.jpg', 'catogory', '', 'aaa', 0, '1'),
(16, '0000-00-00 00:00:00', 'a', '', '', '../img/10391625555a522938653d8.jpg', 'catogory', '', 'aaa', 0, '1'),
(17, '2018-01-07 14:32:01', 'jio offer', '', '', '../img/4160368055a522b1abc29e.jpg', 'catogory', '', 'jio best offer in year', 0, '1'),
(18, '2018-01-07 14:32:01', 'gg', '', '', '../img/13522840905a522b7f6311e.jpg', 'catogory', '', 'gfdgfghdgerger', 0, '1'),
(19, '2018-01-07 14:32:00', 'fr', '', '', '../img/15131667185a522bf394a84.jpg', 'catogory', '', 'frfeferfe', 0, '1'),
(20, '2018-01-07 14:34:16', 'hh', '', '', '../img/5640750935a522f6f5be5f.jpg', 'catogory', '', 'hhh', 0, '1'),
(21, '2018-01-07 14:37:07', 'a', '', '', '../img/9908591465a522ff5b9889.jpg', 'Laptop', '', 'aaa', 0, '1'),
(22, '2018-01-07 15:11:38', 'A', '', '', '../img/13143544185a52309e4ff1f.jpg', 'a', '', 'AAA', 0, '1'),
(23, '2018-01-07 14:52:32', 'vcbcbvc', '', '', '../img/4873306955a52342147c78.jpg', 'Laptop', '', 'cvbcvbcvb', 0, '1'),
(24, '2018-01-07 15:11:38', 'vcbcbvc', '', '', '../img/17125923325a52342435148.jpg', 'Laptop', '', 'cvbcvbcvb', 0, '1'),
(25, '2018-01-07 15:11:38', 'aaa', '', '', '../img/14827481195a52347e9bc8d.jpg', 'Laptop', '', 'a', 0, '1'),
(26, '2018-01-07 15:11:38', 'z', 'author', 'author_image', '../img/1816422055a5234a590322.jpg', 'Mobile', '', 'z', 0, '1'),
(27, '2018-01-08 07:40:54', 'This is first post', '../img/9015917815a523242cf497.jpg', '', '../img/10635667785a52390f21fc7.jpg', 'Mobile', '', 'first post', 0, '1'),
(28, '2018-01-08 11:36:09', 'This is first post', 'hardikx', '../img/9015917815a523242cf497.jpg', '../img/2585347425a523972a1e8b.jpg', 'Mobile', '', 'first post', 0, '1'),
(29, '2018-01-08 11:35:00', 'title', 'hardikx', '../img/9015917815a523242cf497.jpg', 'image', 'mobile', '', 'post_data', 0, '1'),
(30, '2018-01-09 10:42:25', 'sadaas', 'hardikx', '../img/9015917815a523242cf497.jpg', '../img/17368228745a53583cb31b9.jpg', 'Mobile', '', '&lt;p&gt;asdsa&lt;/p&gt;', 0, '1'),
(31, '2018-01-09 10:42:16', 'hello', 'hardikx', '../img/9015917815a523242cf497.jpg', '../img/14141049845a53588316f8f.jpg', 'Mobile', '', '&lt;p&gt;hello world&lt;/p&gt;', 0, '1'),
(32, '2018-01-09 11:52:11', 'jio', 'hardikx', '../img/9015917815a523242cf497.jpg', '../img/1287652345a5493f1c7c31.jpg', 'Laptop', '', '<p>helloooooooooooooo</p>', 0, 'published'),
(33, '2018-01-09 11:52:11', 'january', 'hardikx', '../img/9015917815a523242cf497.jpg', '../img/17799138145a549da86efc5.jpg', 'a', '', '<p><strong><em><u><span style=\"font-family: Impact, Charcoal, sans-serif; font-size: 30px;\">hey hi</span></u></em></strong><strong><em><u><span style=\"font-family: Impact, Charcoal, sans-serif; font-size: 30px;\"></span></u></em></strong><br></p>', 0, 'published'),
(34, '2018-01-09 11:52:04', 'qqqqqqqqqqq', 'hardikx', '../img/9015917815a523242cf497.jpg', '../img/13143112755a54acc22d1e3.jpg', 'Iphone', '', '<p><strong><em><u><s><span style=\"font-size: 30px;\">qqqqqqqqqqqqqqqqq</span></s></u></em></strong></p>', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` varchar(50) NOT NULL,
  `details` varchar(50) NOT NULL,
  `salt` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `first_name`, `last_name`, `username`, `image`, `password`, `role`, `details`, `salt`, `email`, `status`) VALUES
(1, '2018-01-01 17:14:31', 'Hardik', 'Chaturvedi', 'HardikX', 'slider-image1.jpg', 'qwerty', 'Admin', 'Admin', 'PHP', 'hardik@gmail.com', '1'),
(2, '2018-01-02 08:11:27', 'Hardik', 'Chaturvedi', 'Hardikx', 'slider-image1.jpg', 'qwerty', 'Admin', 'Admin', 'PHP', 'madhav@gmail.com', '1'),
(3, '0000-00-00 00:00:00', 'q', 'w', 'e', '', '006d2143154327a64d86a264aea225f3', 'Author', '', '', 'r', ''),
(4, '0000-00-00 00:00:00', 'q', 'w', 'e', '', 'e358efa489f58062f10dd7316b65649e', 'Author', '', '', 'r', ''),
(5, '2018-01-04 10:44:31', 'aa', 'aa', 'aa', '', '0cc175b9c0f1b6a831c399e269772661', 'Author', '', '', 'aa', '1'),
(6, '2018-01-02 08:11:34', 'a', 'a', 'a', '', '552e6a97297c53e592208cf97fbb3b60', 'Author', '', '', 'a', '1'),
(7, '2018-01-04 10:49:43', 'Madhav', 'Chaturvedi', 'Madhavs', '../img/19448998995a4b3ec04d0be.jpg', 'e6c1ef25b5bcaaacc285489eae10d5e1', 'admin', '', '', 'madhav@gmail.com', '1'),
(8, '2018-01-04 10:50:39', 'z', 'z', 'z', '../img/867047659e35457a472f.jpg', 'a661465fb2fdad3509478a1a869c1d52', '', '', '', 'z@w.com', '1'),
(9, '2018-01-04 10:44:39', 'ss', 's', 's', '', 'e09c80c42fda55f9d992e59ca6b3307d', '', '', '', 's', '1'),
(10, '2018-01-06 12:03:27', 'qq', 'gg', 'qq', '../img/6381004275a4e05adc66f9.jpg', 'beee47d70a7fc4c0c2cd2b517cc4b134', 'admin', '', '', 'qq@ss.com', '0'),
(11, '2018-01-05 10:53:52', 'a', 'a', 'a', '../img/211368138659e1f176510fb.jpg', 'e09c80c42fda55f9d992e59ca6b3307d', 'admin', '', '', 'a@a.com', '1'),
(12, '2018-01-05 10:55:41', 'a', 'as', 'as', '../img/19202491435a48d93cf2af7.jpg', '552e6a97297c53e592208cf97fbb3b60', 'admin', '', '', 'as@as.com', '1'),
(13, '2018-01-06 12:03:34', 'qwq', 'wqwqw', 'qwq', '../img/18153958275a4e05bcae9c0.jpg', '6eea9b7ef19179a06954edd0f6c05ceb', 'admin', '', '', 'qwqw@as.fbf', '1'),
(14, '2018-01-04 12:17:17', 'g', 'g', 'fg', '../img/15644704805a472d5edbc23.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'Author', '', '', 'fg@df.com', '1'),
(15, '2018-01-04 12:17:17', 'd', 'd', 'd', '../img/577225515a48e14879caa.jpg', '3a08fe7b8c4da6ed09f21c3ef97efce2', 'Admin', '', '', 'd@d.bom', '1'),
(16, '2018-01-04 12:23:57', 'h', 'h', 'h', '../img/14564048685a4a2aaa1252e.jpg', '3a08fe7b8c4da6ed09f21c3ef97efce2', 'admin', '', '', 'h@h.com', '1'),
(17, '2018-01-06 12:03:27', 'x', 'x', 'x', '../img/12768351075a4a2b2233631.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'admin', '', '', 'x@s.gg', '0'),
(18, '2018-01-04 12:23:57', 'd', 'd', 'd', '../img/17267447775a4a2c8114e2c.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'admin', '', '', 'd@s.tt', '1'),
(19, '2018-01-04 12:23:57', 'd', 'dd', 'd', '../img/20468957945a4a2d7884ecd.jpg', 'beee47d70a7fc4c0c2cd2b517cc4b134', 'admin', '', '', 'w@d.gg', '1'),
(20, '2018-01-04 12:23:57', 'f', 'f', 'f', '../img/1837397955a4a2e6e76c64.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'admin', '', '', 'fz2d.@dcom', '1'),
(21, '2018-01-04 12:23:57', 'f', 'f', 'f', '../img/3813543805a4a2e86d8f29.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'admin', '', '', 'fz2d.@dcom', '1'),
(22, '2018-01-01 17:23:45', 'f', 'f', 'f', '../img/6403912105a4a2e8bb888c.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'Admin', '', '', 'fz2d.@dcom', '1'),
(23, '2018-01-06 12:04:25', 'f', 'f', 'f', '../img/21391014295a50bb49ccf6b.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'admin', '', '', 'fz2d.@dcom', '0'),
(24, '2018-01-01 12:50:40', 'f', 'f', 'f', '../img/15378798325a4a2e95d8b70.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'Admin', '', '', 'fz2d.@dcom', '1'),
(25, '2018-01-01 12:50:37', 'f', 'f', 'f', '../img/9571827985a4a2e99024cc.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'Admin', '', '', 'fz2d.@dcom', '1'),
(26, '2018-01-01 12:57:47', 'a', 'a', 'a', '../img/5322735735a4a2f79f1265.jpg', 'e09c80c42fda55f9d992e59ca6b3307d', 'Admin', '', '', 'a@w.ff', '1'),
(27, '2018-01-01 13:07:45', 'a', '', 'a', '../img/11388015275a4a321d4b59d.jpg', 'e09c80c42fda55f9d992e59ca6b3307d', 'Author', '', '', 'a@qw.gg', '1'),
(28, '2018-01-06 12:03:27', 'U', 'U', 'U', '../img/15628653565a4a384336b24.jpg', '369a768a3e89e7dfe869c51745951d0f', 'admin', '', '', 'U@G.N', '0'),
(29, '2018-01-01 13:32:42', 'M', 'M', 'M', '../img/11225437705a4a386b82bd5.jpg', 'db150d239f35b0ad6ce37d829da101e0', 'Author', '', '', 'M@QWE.JHG', '1'),
(30, '2018-01-01 16:53:09', 'X', 'G', 'X', '../img/19787816555a4a3a5e23b04.jpg', 'c59195470191ddf4c0f9e54e33046386', 'Author', '', '', 'X@WE.GG', '1'),
(31, '2018-01-01 18:31:15', 'n', 'n', 'n', '../img/6073441125a4a67acd1549.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'Admin', '', '', 'n@j.bn', '1'),
(32, '2018-01-04 11:41:55', 'n', 'n', 'n', '../img/15858026465a4a67b0b0b0c.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'Admin', '', '', 'n@j.bn', '1'),
(33, '2018-01-01 17:23:33', 'n', 'n', 'n', '../img/13047486825a4a67b18e14b.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'Admin', '', '', 'n@j.bn', '1'),
(34, '2018-01-01 17:06:07', 'n', 'n', 'n', '../img/9673967535a4a697705985.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'Admin', '', '', 'n@j.bn', '1'),
(35, '2018-01-01 17:05:39', 'n', 'n', 'n', '../img/7589660035a4a6977a79d1.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'Admin', '', '', 'n@j.bn', '1'),
(36, '2018-01-01 17:11:56', 'b', 'b', 'b', '../img/4346460745a4a6ad8edcc3.jpg', 'e6c1ef25b5bcaaacc285489eae10d5e1', 'Admin', '', '', 'b@f.cm', '1'),
(37, '2018-01-01 17:08:12', 'b', 'b', 'b', '../img/504659525a4a6adc35557.jpg', 'e6c1ef25b5bcaaacc285489eae10d5e1', 'Admin', '', '', 'b@f.cm', '1'),
(38, '2018-01-06 12:03:27', 'a', 'a', 'a', '../img/20521074295a4a6eeae8664.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'admin', '', '', 'a@a.g', '0'),
(39, '2018-01-04 12:16:49', 'vv', 'v', 'v', '../img/15803654365a4e067867ea8.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'admin', '', '', 'v@q.f', '1'),
(40, '2018-01-02 08:11:06', 'm', 'mqqqqqqq', 'm', '../img/1969313795a4b3dd7851db.jpg', '8a4ffa74ed5e34e70c67fea81d243a5f', 'admin', '', '', 'm@m.n', '1'),
(41, '2018-01-02 08:11:02', 'm', 'm', 'm', '../img/3588859885a4a82b6315f2.jpg', '8a4ffa74ed5e34e70c67fea81d243a5f', 'Author', '', '', 'm@m.n', '1'),
(42, '2018-01-02 05:35:05', 'g', 'jj', 'j', '../img/12070065015a4a875dd574a.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'Author', '', '', 'j@ww.gh', '1'),
(43, '2018-01-04 10:48:33', 'mmmm', 'm', 'm', '../img/5398756945a4b3e71b18a9.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'admin', '', '', 'm@m.n', '1'),
(44, '2018-01-02 07:30:06', 'q', 'q', 'q', '../img/10223785155a4b1a2f35f0f.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'Author', '', '', 'q@q.cc', '1'),
(45, '2018-01-02 08:08:00', 'g', 'rrrrrrrrr', 'g', '../img/7564122045a4b3dba965cc.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'admin', '', '', 'g@fg.f', '1'),
(46, '2018-01-04 12:16:49', 's', 's', 's', '../img/6185343365a4b3e8f99643.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'admin', '', '', 'ss@w.fg', '1'),
(47, '2018-01-04 10:48:55', 'jk', 'y', 'y', '../img/11994094445a4e066888abb.jpg', 'e11170b8cbd2d74102651cb967fa28e5', 'admin', '', '', 'y@g.ni', '1'),
(48, '2018-01-07 14:44:18', 'Hardik', 'Chaturvedi', 'hardikx', '../img/9015917815a523242cf497.jpg', '0287040c474dbf44cdeb17eebb99d828', 'Admin', '', '', 'hardik@gmail.com', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- Database: `library`
--
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `status`) VALUES
(1, 'Hardik', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_id` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `ledger_no` varchar(20) NOT NULL,
  `edition` varchar(50) NOT NULL,
  `stock` int(50) NOT NULL,
  `avail_stock` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_id`, `date`, `title`, `category`, `author`, `publisher`, `ledger_no`, `edition`, `stock`, `avail_stock`, `price`, `status`) VALUES
(1, '800', '0000-00-00', 'Title-1', 'as', 'sa', '1', 'l-1', '5', 50, 33, 0, 1),
(2, '801', '0000-00-00', 'Title-2', 'as', 'sa', '1', 'l-2', '5', 5, 4, 0, 1),
(3, '802', '0000-00-00', 'Title-3', 'as', 'sa', '1', 'l-3', '5', 0, 0, 0, 1),
(4, '803', '0000-00-00', 'Title-4', 'sa', '1', '5', 'l-4', '0', 0, 0, 0, 1),
(5, '804', '0000-00-00', 'Title-5', 'as', 'sa', '1', 'l-5', '5', 0, 0, 0, 1),
(6, '805', '0000-00-00', 'Title-6', 'asd', 'sad', '11', 'l-6', '52', 0, 0, 0, 1),
(7, '806', '0000-00-00', 'Title-7', 'as', 'sa', '1', 'l-7', '5', 0, 0, 0, 1),
(8, '807', '0000-00-00', 'Title-8', 'dse', 'dsad', '1', 'l-8', '5', 0, 0, 0, 1),
(9, '808', '0000-00-00', 'Title-9', 'as', 'sa', '1', 'l-9', '5', 0, 0, 0, 1),
(10, '809', '0000-00-00', 'Title-10', 'as', 'sa', '1', 'l-10', '5', 0, 0, 0, 1),
(11, '810', '0000-00-00', 'l-10', 'Title-10', 'as', 'sa', '1', '5', 0, 0, 0, 1),
(12, '811', '0000-00-00', 'l-9', 'Title-9', 'as', 'sa', '1', '5', 0, 0, 0, 1),
(13, '812', '0000-00-00', 'l-8', 'Title-8', 'dse', 'dsad', '1', '5', 0, 0, 0, 1),
(14, '813', '0000-00-00', 'l-7', 'Title-7', 'as', 'sa', '1', '5', 0, 0, 0, 1),
(15, '814', '2018-05-01', 'l-6', 'Title-6', 'asd', 'sad', '11', '52', 0, 0, 0, 1),
(16, '815', '2018-06-21', 'l-5', 'Title-5', 'as', 'sa', '1', '5', 0, 0, 0, 1),
(17, '816', '2018-07-03', 'l-4', 'Title-4', 'sa', '1', '5', '0', 0, 0, 0, 1),
(18, '817', '2018-04-10', 'l-3', 'Title-3', 'as', 'sa', '1', '5', 0, 0, 0, 1),
(19, '818', '0000-00-00', 'l-2', 'Title-2', 'as', 'sa', '1', '5', 0, 0, 0, 1),
(20, '819', '0000-00-00', 'l-1', 'Title-1', 'as', 'sa', '1', '5', 0, 0, 0, 1),
(21, '820', '0000-00-00', 'Title-10', 'as', 'sa', '1', 'l-10', '5', 0, 0, 0, 1),
(22, '821', '0000-00-00', 'Title-9', 'as', 'sa', '1', 'l-9', '5', 0, 0, 0, 1),
(23, '822', '0000-00-00', 'Title-8', 'dse', 'dsad', '1', 'l-8', '5', 0, 0, 0, 1),
(24, '823', '0000-00-00', 'Title-7', 'as', 'sa', '1', 'l-7', '5', 0, 0, 0, 1),
(25, '824', '0000-00-00', 'Title-6', 'asd', 'sad', '11', 'l-6', '52', 0, 0, 0, 1),
(26, '825', '2018-06-01', 'Title-5', 'as', 'sa', '1', 'l-5', '5', 0, 0, 0, 1),
(27, '826', '0000-00-00', 'Title-4', 'sa', '1', '5', 'l-4', '0', 0, 0, 0, 1),
(28, '827 new', '0000-00-00', 'Title-3 new', 'cat-1', 'auth-1', 'pub-2', 'l-3 new', '51', 4, 4, 0, 1),
(29, '828', '0000-00-00', 'Title-2', 'as', 'sa', '1', 'l-2', '5', 1, 1, 0, 1),
(30, '829', '0000-00-00', 'Title-1', 'cat-2', 'sa', '1', 'l-1', '5', 10, 10, 0, 1),
(31, '901', '0000-00-00', 'Book', 'Network3', 'auth', 'pub', 'l-901', '1', 10, 10, 0, 1),
(33, '902', '0000-00-00', 'Title-902', 'as902', '902', '1pub902', 'l-902', '51', 10, 10, 0, 1),
(34, '100', '0000-00-00', 'Mathematics(class 9)', 'CS', 'Manan khurma', 'pub', 'vol-1', '1', 4, 4, 100, 0),
(35, '101', '0000-00-00', 'Chemistry(class 9)', 'English', 'Praveen tyagi', '1', 'vol-1', '1', 2, 1, 0, 0),
(36, '102', '0000-00-00', 'Physics(class 9)', 'English', 'Praveen tyagi', '', 'vol-1', '1', 2, 2, 0, 0),
(37, '103', '0000-00-00', 'Mathematics(class 10)', 'English', 'Manan khurma', '', 'vol-1', '1', 2, 2, 0, 0),
(38, '104', '0000-00-00', 'Chemistry(class 10)', 'English', 'Praveen tyagi', '', 'Vol-1', '1', 2, 2, 0, 0),
(39, '105', '0000-00-00', 'Physics(class 10)', 'English', 'Praveen tyagi', '', 'vol-1', '1', 2, 2, 0, 0),
(40, '106', '0000-00-00', 'Mathematics(class 11)', 'English', 'ER Prem kumar', '', 'vol-1', '2', 2, 2, 0, 0),
(41, '107', '0000-00-00', 'Chemistry(class 11)', 'English', 'Preeti gupta', '', 'vol-1', '2', 2, 2, 0, 0),
(42, '108', '0000-00-00', 'Physics(class 11)', 'English', 'keshav Mohan', '', 'vol-1', '2', 2, 2, 0, 0),
(43, '109', '0000-00-00', 'Mathematics(class12)', 'English', 'ER Prem kumar', '', 'vol-1', '2', 2, 2, 0, 0),
(44, '110', '0000-00-00', 'Chemistry(class 12)', 'English', 'Avantika trivedi', '', 'vol-1', '2', 2, 2, 0, 0),
(45, '111', '0000-00-00', 'Physics(class 12)', 'English', 'Arihant Experts', '', 'vol-1', '2', 2, 2, 0, 0),
(46, '112', '0000-00-00', 'Concept of physics', 'English', 'Hc verma', '', 'vol-1', '1', 2, 2, 0, 0),
(47, '113', '0000-00-00', 'Concept of physics', 'English', 'Hc verma', '', 'vol-2', '1', 2, 2, 0, 0),
(48, '114', '0000-00-00', 'verbal & non verbal theory', 'English', 'Rs Aggarwal', '', 'vol-1', 'Revised', 2, 2, 0, 0),
(49, '115', '0000-00-00', 'Basic Electrical theory', 'Hindi', 'Anoop Bharadwaj', '', 'vol-1', 'Nimi pattern', 2, 2, 0, 0),
(50, '116', '0000-00-00', 'Electrical pattern', 'Hindi', 'Anoop Bharadwaj', 'Katson', 'vol-1', 'Nimi pattern', 2, 0, 10, 0),
(51, '117', '0000-00-00', 'Q-Bank Electrician', 'English', 'GV Raman Murthy', '', 'vol-1', '', 2, 2, 0, 0),
(52, '118', '0000-00-00', 'ITI-Emploabiliity Skill', 'Hindi', 'Dr Rajesh Sethi', '', 'vol-1', '', 2, 2, 0, 0),
(53, '119', '0000-00-00', 'Employability Skill', 'Hindi', 'Gurpreet kaur', '', 'vol-1', '', 2, 2, 0, 0),
(54, '120', '0000-00-00', 'Q-Bank Welder', 'Hindi', 'GS sethi', '', 'vol-1', '', 2, 2, 0, 0),
(55, '121', '0000-00-00', 'Q-bank Welder', 'English', 'GS sethi', '', 'vol-1', '', 2, 2, 0, 0),
(56, '122', '0000-00-00', 'Basic Electronics& Linear Circuits', 'English', 'TMH Bhargava', '', 'vol-1', '', 2, 2, 0, 0),
(57, '123', '0000-00-00', 'Netwok Filter& Transmission Lines', 'English', 'JP Ryder', '', 'vol-1', '', 2, 2, 0, 0),
(58, '124', '0000-00-00', 'Digital Logic & Computer Design', 'English', 'Mano M MORRIS', '', 'vol-1', '', 2, 2, 0, 0),
(59, '125', '0000-00-00', 'A Course in Electrical & Electronic Measurement& I', 'English', 'Dhanpat Rai', '', 'vol-1', '', 2, 2, 0, 0),
(60, '126', '0000-00-00', 'Principle of Communication Engg', 'English', 'Sombir Singh', 'Jai Prakash', 'vol-1', '', 2, 2, 0, 0),
(61, '127', '0000-00-00', 'Mathematics(Class6)', 'English', 'RD Sharma', '', 'vol-1', '', 2, 2, 0, 0),
(62, '128', '0000-00-00', 'Mathematics(Class7)', 'English', 'RD Sharma', '', 'vol-1', '', 2, 2, 0, 0),
(63, '129', '0000-00-00', 'Mathematics(Class8)', 'English', 'RD Sharma', '', 'vol-1', '', 2, 2, 0, 0),
(64, '130', '0000-00-00', 'Mathematics(Class9)', 'English', 'RD Sharma', '', 'vol-1', '', 2, 2, 0, 0),
(65, '131', '0000-00-00', 'Mathematics(Class10)', 'English', 'RD Sharma', '', 'vol-1', '', 2, 2, 0, 0),
(66, '132', '0000-00-00', 'Mathematics(Class11)', 'English', 'RD Sharma', '', 'vol-1', '', 2, 2, 0, 0),
(67, '133', '0000-00-00', 'Mathematics(class12)', 'English', 'RD Sharma', '', 'vol-2', '', 2, 2, 0, 0),
(68, '134', '0000-00-00', 'Six Sigma', 'English', 'Mohit Sharma', '', 'vol-1', '', 2, 2, 0, 0),
(69, '135', '0000-00-00', 'six Sigma For Dummies', 'English', 'John Morgan', '', 'vol-1', '', 2, 2, 0, 0),
(70, '136', '0000-00-00', 'Six Sigma Handbook', 'English', 'Pyzdek', '', 'vol-1', '', 2, 2, 0, 0),
(71, '137', '0000-00-00', 'Swamy Manual On Discipline Proceedings', 'English', 'Swamy', '', 'vol-1', '', 2, 2, 0, 0),
(72, '138', '0000-00-00', 'Swamy Complete Manual On Establishment', 'English', 'Swamy', '', 'vol-1', '15', 2, 2, 0, 0),
(73, '139', '0000-00-00', 'Swamy\"s Manual Of Office Procedure', 'English', 'Swamy', 'Asian', 'vol-1', '14', 2, 2, 0, 0),
(74, '140', '0000-00-00', 'Swamy\"s Know Your Retirement Benefit', 'English', 'Swamy', '', 'vol-1', '13', 2, 2, 0, 0),
(75, '141', '0000-00-00', 'Electrical Drawing Design', 'English', 'Sarthak Ji', 'Prakash Nath', 'vol-1', '1', 5, 4, 0, 0),
(76, '142', '0000-00-00', 'Electrical Drawing Design', 'Hindi', 'Sarthak Ji', 'Prakash Nath', 'vol-1', '1', 5, 4, 0, 0),
(77, '143', '0000-00-00', 'Basic Electronics& Linear Circuits', 'Hindi', 'TMH Bhargava', '', 'vol-1', '', 2, 2, 0, 0),
(78, '144', '0000-00-00', 'Principle of Communication Engg', 'Hindi', 'Sombir Singh', 'Jai Prakash', 'vol-1', '', 2, 2, 0, 0),
(79, '145', '0000-00-00', 'Q-Bank Electrician', 'English', 'GV Raman Murthy', '', 'vol-1', '', 2, 2, 0, 0),
(80, '146', '0000-00-00', 'ITI-Emploabiliity Skill', 'Hindi', 'Dr Rajesh Sethi', 'Katson', 'vol-1', '1', 3, 4, 100, 0),
(82, '149', '0000-00-00', 'title', 'EC', 'a', 'p', 'v-2', '1', 5, 5, 0, 0),
(83, '147', '2018-06-14', 'ABCD', 'EC', 'A', 'B', 'v-1', '1', 4, 4, 100, 0),
(84, '150', '2018-07-09', 'EFG', 'CS', 'Auth', 'P', 'v-2', '1', 2, 1, 100, 0),
(85, '151', '2018-07-10', 'qqqqqqqqqqq', 'CS', 'a', 'p', 'v-2', '1', 8, 0, 100, 0),
(86, '193', '2018-07-13', 'w', 'CS', 'ag', 'p', 'v-1', 'e', 14, 2, 100, 0),
(87, '195', '2018-08-06', 'qwer', 'CS', 'a', 'p', 'v-2', '1', 2, 2, 200, 0),
(88, '196', '2018-08-06', 'mko', 'CS', 'a', 'p', 'v-1', '1', 1, 1, 50, 0),
(89, '197', '2018-08-06', 'gh', 'CS', 'a', 'p', 'v-2', '1', 2, 2, 500, 0),
(90, '209', '2018-09-07', 'qwe', 'CS', 'a', 'p', 'v-2', '1', 4, 4, 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `stock` int(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `stock`, `status`) VALUES
(1, 'CS', 0, 0),
(2, 'EC', 0, 0),
(3, 'abc', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `id_card` varchar(20) NOT NULL,
  `e_no` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rank` varchar(50) NOT NULL,
  `e_group` varchar(50) NOT NULL,
  `sec` varchar(10) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `id_card`, `e_no`, `name`, `rank`, `e_group`, `sec`, `mobile`, `type`, `image`, `password`, `status`) VALUES
(1, '123', '1234', 'Person', 'Major', 'ABC', 'xyz', '8888888888', 'Civil', 'img/users/1.jpg', '1234', 0),
(2, '124', '4567', 'Persons', 'Major', 'ABC', 'xyz', '9999999990', 'Army', 'img/users/2.jpg', '', 0),
(3, '1234', '123', 'AMIT', 'Major', 'OE', 'ABCw', '7017819791', 'Army', 'img/users/3.png', '', 0),
(4, '1312331', '232331', 'aga', 'Major1', 'OE1', 'qwe', '9090909091', 'Permenent', 'img/employee/4.jpg', '', 0),
(6, '35355', '54', 'wr', 'uu', 'u', 'y', '9090900000', 'Army', 'img/employee/5.jpg', '', 1),
(7, '122222', '21212', 'qq', 'op', 'w', 'sw', '9090900000', 'Army', 'img/employee/7.jpg', '', 1),
(8, '98789', '8989', 'qwq', 'u', 'u', 'u', '9090900000', 'Army', 'img/employee/8.jpg', '', 1),
(9, '16775', '544', 'q', 'GH', 'F', 'd', '9090900000', 'Army', 'img/employee/9.jpg', '', 1),
(10, '4544', '977765', 'yu', 'm', 'abc', 'asd', '9090900000', 'Army', 'img/employee/10.jpg', '', 0),
(13, 'ID-10', 'E-10', 'yu', 'm', 'abc', 'asd', '9090900000', 'Army', 'img/employee/10.jpg', '', 0),
(14, 'ID-9', 'E-9', 'q', 'GH', 'F', 'd', '9090900000', 'Army', 'img/employee/9.jpg', '', 0),
(15, 'ID-8', 'E-8', 'qwq', 'u', 'u', 'u', '9090900000', 'Army', 'img/employee/8.jpg', '', 0),
(16, 'ID-7', 'E-7', 'qq', 'op', 'w', 'sw', '9090900000', 'Army', 'img/employee/7.jpg', '', 0),
(17, 'ID-6', 'E-6', 'wr', 'uu', 'u', 'y', '9090900000', 'Army', 'img/employee/5.jpg', '', 0),
(18, 'ID-5', 'E-5', 'aga', 'Major1', 'OE1', 'qwe', '9090909091', 'Temporary', 'img/employee/4.jpg', '', 0),
(19, 'ID-4', 'E-4', 'AMIT', 'Major', 'OE', 'ABCw', '7017819791', 'Temporary', 'img/users/3.png', '', 0),
(20, 'ID-3', 'E-3', 'Persons', 'Major', 'ABC', 'xyz', '9999999990', 'Army', 'img/users/2.jpg', '', 0),
(21, 'ID-2', 'E-2', 'Person', 'Major', 'ABC', 'xyz', '8888888888', 'Civil', 'img/users/1.jpg', '', 1),
(22, 'u', 'u', 'u', 'i', 'is', 'is', '9090900000', 'Civil', 'img/employee/22.jpg', '', 1),
(23, 'id-new', 'e-new', 'emp new', 'r new', 'g new', 'sec new', '9000000000', 'Temporary', 'img/employee/23.jpg', '', 1),
(24, 'ID-11', 'E-11', 'new', 'newr', 'abcg', 'asds', '9090900000', 'Army', 'img/employee/10.jpg', '', 0),
(25, 'h', 'h', 'h', 'r', 'ertyui', 's', '9999999999', 'Temporary', 'img/employee/25.jpg', '', 1),
(26, 'Hr-123', 'Hr-12', 'Hardik', 'Colnol', 'None', 'None', '9999999999', 'Army', 'img/employee/26.png', '8e55ecef6a2e2b363e7f56fe00d6cd64', 0),
(27, 'id-1299', 'e-122', 'ry', 'mazor', 'OE', 'p', '9999999999', 'Civil', 'img/employee/27.jpg', 'a01610228fe998f515a72dd730294d87', 0);

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `id` int(11) NOT NULL,
  `fine_name` varchar(50) NOT NULL,
  `fine_cost` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`id`, `fine_name`, `fine_cost`, `status`) VALUES
(1, 'Stolen', '300', 0),
(2, 'Default', '1', 2),
(3, 'Torn', '100', 0),
(4, 'STOLEN', '6', 1),
(5, 's', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `id_book` varchar(50) NOT NULL,
  `id_emp` varchar(11) NOT NULL,
  `id_lib` varchar(50) NOT NULL,
  `return_date` date NOT NULL,
  `return_status` varchar(50) NOT NULL,
  `fine` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`id`, `issue_date`, `id_book`, `id_emp`, `id_lib`, `return_date`, `return_status`, `fine`, `status`) VALUES
(1, '2018-07-10', '800', 'e-10', 'admin', '2018-07-13', 'Returned', 5, 0),
(2, '2018-07-01', '800', 'e-10', 'admin', '2018-07-01', 'Returned', 0, 0),
(3, '2018-07-01', '800', 'e-10', 'admin', '2018-07-01', 'Returned', 0, 0),
(7, '2018-07-01', '800', 'e-9', 'admin', '2018-06-30', 'Returned', 100, 0),
(9, '2018-07-01', '800', 'e-8', 'admin', '2018-07-15', 'Returned', 100, 0),
(12, '2018-07-03', '801', 'e-3', 'admin', '2018-07-17', 'Returned', 0, 0),
(13, '2018-07-04', '800', 'e-9', 'lib-7', '2018-07-18', 'Returned', 0, 0),
(14, '2018-07-04', '800', 'h', 'admin', '2018-07-18', 'Returned', 0, 0),
(15, '2018-07-06', '146', 'h', 'admin', '2018-07-20', 'Returned', 0, 0),
(19, '2018-07-08', '142', '1234', 'admin', '2018-07-22', 'Returned', 100, 0),
(20, '2018-07-10', '147', '1234', 'admin', '2018-07-24', 'Returned', 100, 0),
(21, '2018-07-10', '143', '1234', 'admin', '2018-07-24', 'Returned', 100, 0),
(22, '2018-07-10', '143', '1234', 'admin', '2018-07-24', 'Returned', 100, 0),
(23, '2018-07-13', '116', '1234', 'admin', '2018-07-27', 'Returned', 0, 0),
(24, '2018-07-13', '116', '1234', 'admin', '2018-07-27', 'Returned', 10, 0),
(25, '2018-07-13', '116', '1234', 'admin', '2018-07-27', 'Returned', 9, 0),
(26, '2018-07-13', '116', '1234', 'admin', '2018-07-27', 'Returned', 9, 0),
(27, '2018-07-13', '116', 'e-7', 'admin', '2018-07-27', 'Returned', 9, 0),
(28, '2018-07-13', '151', '1234', 'admin', '2018-07-27', 'Returned', 9, 0),
(29, '2018-07-13', '116', '1234', 'admin', '2018-07-27', 'Returned', 9, 0),
(30, '2018-07-13', '151', '1234', 'admin', '2018-07-27', 'Returned', 9, 0),
(31, '2018-07-13', '151', 'e-2', 'admin', '2018-07-27', 'Returned', 9, 0),
(32, '2018-07-13', '150', '1234', '1500', '2018-07-27', 'Returned', 9, 0),
(33, '2018-08-03', '193', '1234', 'admin', '2018-08-17', 'Returned', 100, 0),
(34, '2018-08-03', '193', '1234', 'admin', '2018-08-17', 'Returned', 0, 0),
(35, '2018-08-03', '193', '1234', '1500', '2018-08-17', 'Pending', 0, 0),
(36, '2018-08-05', '116', '1234', 'admin', '2018-08-19', 'Returned', 0, 0),
(37, '2018-08-05', '116', '1234', 'admin', '2018-08-19', 'Returned', 0, 0),
(38, '2018-08-05', '116', '1234', 'admin', '2018-08-19', 'Returned', 0, 0),
(39, '2018-08-05', '116', '1234', 'admin', '2018-08-19', 'Returned', 0, 0),
(40, '2018-08-05', '116', 'e-10', 'admin', '2018-08-19', 'Returned', 0, 0),
(41, '2018-08-05', '116', 'e-9', 'admin', '2018-08-19', 'Pending', 0, 0),
(42, '2018-08-05', '116', '123', 'admin', '2018-08-19', 'Pending', 0, 0),
(43, '2018-09-07', '209', 'e-10', 'admin', '2018-09-21', 'Returned', 100, 0);

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `id` int(11) NOT NULL,
  `lib_id` varchar(50) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian`
--

INSERT INTO `librarian` (`id`, `lib_id`, `emp_id`, `name`, `password`, `mobile`, `status`) VALUES
(1, '8', '07', 'librarian', '648ceaa6447a6a2004ec51b797c78247', '7017819799', 1),
(2, '0', '0', 'librarian2', '1bbd886460827015e5d605ed44252251', '7017819799', 1),
(5, '6', '22', 'xs', '1bbd886460827015e5d605ed44252251', '9090909090', 1),
(7, '12i', '22', 'AMIT', '1bbd886460827015e5d605ed44252251', '8888888888', 1),
(8, '334', '22', 'new', '1bbd886460827015e5d605ed44252251', '9090909090', 1),
(9, '4', '22', 'haddi', 'bc11f06afb9b27070673471a23ecc6a9', '9999999999', 0),
(10, '909', '22', 'AMIT', '1bbd886460827015e5d605ed44252251', '9090909090', 1),
(11, '435', '44', 'sa', '1bbd886460827015e5d605ed44252251', '9808840876', 1),
(12, 'admin', 'Ar-12', 'deepak', '21232f297a57a5a743894a0e4a801fc3', '7017819799', 2),
(13, '1500', '1290', 'madhav', '1bbd886460827015e5d605ed44252251', '9090900000', 0),
(585, 'Lib-1', 'E-1', 'madhav1', '9090900000', '25d55ad283', 0),
(586, 'Lib-2', 'E-2', 'deepak1', '7017819799', '25d55ad283', 0),
(587, 'Lib-3', 'E-3', 'haddi1', '9999999999', '25d55ad283', 0),
(588, 'Lib-4', 'E-4', 'madhav1', '25d55ad283aa400af464c76d713c07ad', '9090900000', 0),
(589, 'Lib-5', 'E-5', 'deepak1', '25d55ad283aa400af464c76d713c07ad', '7017819799', 0),
(590, 'Lib-6', 'E-6', 'haddi1', '25d55ad283aa400af464c76d713c07ad', '9999999999', 0),
(592, 'lib-7', 'e-900', 'lib', 'bae5e3208a3c700e3db642b6631e95b9', '9090900000', 0),
(593, 'Lib-10', 'E-10', 'madhav1new', '25d55ad283aa400af464c76d713c07ad', '9090900000', 1),
(594, 'Lib-17', 'E-17', 'deepaknewd', '25d55ad283aa400af464c76d713c07ad', '7017819779', 0),
(595, 'Lib-12', 'E-12', 'haddi1new', '25d55ad283aa400af464c76d713c07ad', '9999999999', 0);

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `remark` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `date`, `remark`, `status`) VALUES
(1, '0000-00-00', 'swd', 1),
(2, '2018-07-11', 'n', 0),
(3, '2018-07-18', 'iihdioe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `sugg_book_title` varchar(50) NOT NULL,
  `sugg_book_author` varchar(50) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `date`, `sugg_book_title`, `sugg_book_author`, `status`) VALUES
(1, '0000-00-00', 'qwe', 'as', 1),
(3, '0000-00-00', 'a', 's', 1),
(4, '2018-07-11', 'b', 'b', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book_id` (`book_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `e_no` (`e_no`),
  ADD UNIQUE KEY `id_card` (`id_card`);

--
-- Indexes for table `fine`
--
ALTER TABLE `fine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_book` (`id_book`),
  ADD KEY `id_emp` (`id_emp`),
  ADD KEY `id_lib` (`id_lib`);

--
-- Indexes for table `librarian`
--
ALTER TABLE `librarian`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lib_id` (`lib_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `fine`
--
ALTER TABLE `fine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `librarian`
--
ALTER TABLE `librarian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=596;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `issue`
--
ALTER TABLE `issue`
  ADD CONSTRAINT `issue_ibfk_2` FOREIGN KEY (`id_emp`) REFERENCES `employee` (`e_no`),
  ADD CONSTRAINT `issue_ibfk_3` FOREIGN KEY (`id_lib`) REFERENCES `librarian` (`lib_id`),
  ADD CONSTRAINT `issue_ibfk_4` FOREIGN KEY (`id_book`) REFERENCES `books` (`book_id`);
--
-- Database: `lic`
--
CREATE DATABASE IF NOT EXISTS `lic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lic`;

-- --------------------------------------------------------

--
-- Table structure for table `occupations`
--

CREATE TABLE `occupations` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occupations`
--

INSERT INTO `occupations` (`id`, `name`, `status`) VALUES
(1, 'Goverment Job', 0),
(2, 'Private Job', 0),
(3, 'Business\r\n', 0),
(4, 'Teacher', 0),
(5, 'Other', 1),
(6, 'gg', 1),
(7, 'v', 1),
(8, 'None', 1),
(9, 'bankcrupt', 1),
(10, 'Pink Lips', 1),
(11, 'Other', 0);

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `age_start` int(11) NOT NULL,
  `age_end` int(11) NOT NULL,
  `term_start` int(11) NOT NULL,
  `term_end` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `age_start`, `age_end`, `term_start`, `term_end`, `status`) VALUES
(20, 'werdw', 0, 13, 13, 26, 0),
(815, 'Jeevan Annand', 10, 50, 15, 25, 0),
(820, 'Ayush', 0, 20, 20, 25, 1),
(821, 'test', 0, 25, 20, 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `id` int(11) NOT NULL,
  `policy_no` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `premium` int(11) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `mobile1` varchar(10) NOT NULL,
  `mobile2` varchar(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `f_name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `no_name` varchar(200) NOT NULL,
  `no_rel` varchar(200) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `pob` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `plan_id` int(11) NOT NULL,
  `term` int(11) NOT NULL,
  `sum_assuard` int(11) NOT NULL,
  `occupation` varchar(200) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `annual_income` int(11) NOT NULL,
  `fup` date NOT NULL,
  `brothers` varchar(250) NOT NULL,
  `sisters` varchar(250) NOT NULL,
  `childern` varchar(250) NOT NULL,
  `logged_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `brothers_no` varchar(50) NOT NULL,
  `sisters_no` varchar(50) NOT NULL,
  `childern_no` varchar(50) NOT NULL,
  `doc` date NOT NULL,
  `f_age` varchar(100) NOT NULL,
  `m_age` varchar(100) NOT NULL,
  `partner_age` varchar(100) NOT NULL,
  `partner_status` varchar(100) NOT NULL,
  `f_status` varchar(100) NOT NULL,
  `m_status` varchar(100) NOT NULL,
  `f_desc` varchar(200) NOT NULL,
  `m_desc` varchar(200) NOT NULL,
  `martial_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`id`, `policy_no`, `email`, `premium`, `mode`, `mobile1`, `mobile2`, `name`, `f_name`, `address`, `no_name`, `no_rel`, `age`, `gender`, `height`, `weight`, `pob`, `dob`, `plan_id`, `term`, `sum_assuard`, `occupation`, `qualification`, `annual_income`, `fup`, `brothers`, `sisters`, `childern`, `logged_id`, `status`, `brothers_no`, `sisters_no`, `childern_no`, `doc`, `f_age`, `m_age`, `partner_age`, `partner_status`, `f_status`, `m_status`, `f_desc`, `m_desc`, `martial_status`) VALUES
(1, 123, '', 150000, 'none', '9999999999', '8888888888', 'my', 'father', '10/268 Geeta nagar ,Agra', 'asfsf', 'others', 20, 'male', '', '', 'agra', '2018-08-01', 815, 20, 100000, 'Engineer', 'B.tech', 50000000, '0000-00-00', '', '', '', 0, 1, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(2, 1111, '', 25000, 'Cash', '9999999999', '1111111111', 'Test', 'Papa', 'tyjtyjt', 'Brothers', 'Bro', 12, 'male', '', '', 'Agra', '2005-11-05', 815, 10, 23214543, 'Student', 'Graduation 3rd Year', 2147483647, '0000-00-00', '', '', '', 0, 1, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(3, 1112, '', 25000, 'Cash', '9999999999', '1111111111', 'AMIT', 'Papa', 'tyjtyjt', 'Brothers', 'Bro', 12, 'male', '', '', 'Agra', '2005-11-05', 20, 10, 23214543, 'Student', 'Graduation 3rd Year', 2147483647, '0000-00-00', '', '', '', 0, 1, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(4, 310000000, '', 1000, 'QLY', '7906997293', '', 'Madhav Chaturvedi', 'Papa', '10/268 Geeta Nagar', 'Brothers', 'Brother', 13, 'Male', '', '', 'Agra', '2007-11-05', 815, 19, 15000, 'Teacher', 'B.tech', 2500, '2018-09-30', '17,1,8', '20', ',1,3', 1, 0, '', '', '', '2018-09-13', '52', '52', '20', 'true', 'true', 'true', '1', '', 'true'),
(5, 100000000, '', 1, 'HLY', '7078913096', '7078913097', 'Ayush Dubey', 'Sk dubey', 'Vishnu colony\r\n', 'Yogita Dubey', 'Wife', 23, 'Male', '', '', 'Agra', '1999-02-01', 815, 15, 100000, 'Private Job', 'B.tech', 20000, '2018-08-09', '', '', '', 1, 0, '', '', '', '0000-00-00', '', '', '', 'false', 'false', 'false', '', '', 'false'),
(6, 23456789, '', 200, 'Yearly', '7078913096', '7078913097', 'admin', 'y8', 'uo', 'ug', 'Other', 1, 'Male', '', '', 'b', '1999-02-01', 20, 16, 100000, 'Goverment Job', 'B.tech', 2147483647, '2018-08-31', '', '', '', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(7, 9797, '', 99, 'Half Yearly', '7078913096', '7078913097', 'iyyyif', 'y', 'uig', 'a', 'Mother', 10, 'Male', '', '', 'a', '2018-08-11', 20, 13, 100000, 'Goverment Job', 'MBA', 2147483647, '2018-08-01', '', '', '', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(9, 898, '', 200, 'Half Yearly', '9999999999', '9999999999', 'name', 'f', 'a', 'nname', 'Father', 10, 'Female', '', '', 'pob', '0000-00-00', 815, 16, 100000, 'Private Job', 'B.tech', 2147483640, '2018-09-06', '', '', '', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(10, 9090, '', 10, 'Quaterly', '9999999999', '9999999998', 'qaz', 'qaz', 'qaz', 'a', 'Father', 10, 'Female', '', '', 'qw', '2018-08-21', 815, 17, 100001, 'Teacher', 'MBA', 2, '2018-10-03', '', '', '', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(11, 263284557, '', 50000, 'Half Yearly', '9359587399', '9760090388', 'vipin kumr singh', 'chandra bhan singh', 'engineer colony agra', 'seema singh', 'Wife', 30, 'Male', '', '', 'agra', '2018-08-15', 815, 20, 500000, 'Business', 'Other', 2000000, '2018-10-31', '', '', '', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(12, 90908, '', 10, 'Yearly', '7078913096', '1111111111', 'AMIT', 'vv', 'tr', 'Brothers', 'Brother', 18, 'Male', '', '', 'Agra', '2018-08-23', 815, 22, 100000, 'Business', 'Other', 1, '2018-10-01', '', '', '', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(13, 89879, '', 10, 'Half Yearly', '9999999999', '9999999999', 'AMITa', 'gh', 'edwa', 'a', 'Father', 30, 'Female', '', '', 'qw', '2018-08-06', 815, 21, 100001, 'Goverment Job', 'B.tech', 2147483647, '2018-08-30', '6', '', '', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(14, 87867, '', 7, 'Monthly', '7078913096', '7078913097', 'a', 'vv', 'iyu', 'a', 'Other', 10, 'Male', '', '', 'a', '2018-08-06', 815, 18, 100001, 'Business', 'dsad', 2147483647, '2018-10-16', '', '', '2', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(19, 464654645, '', 3, '', '9999999999', '9999999999', 'name', 'fw', 'dwe', 'r4', 'Mother', 23, 'Male', '', '', 'qw', '2018-09-04', 815, 17, 33, 'Business', 'Other', 0, '2018-09-11', '', '', '', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(20, 9888676, '', 10, 'MTH', '9999999999', '9999999999', 'name', 'ger', 'r', '3rw', 'Brother', 5, 'Male', '', '', 'qw', '2018-09-07', 20, 16, 100000, 'Business', 'Other', 0, '2018-09-11', '', '', '', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(22, 9875679, '', 0, '', '', '', '', '', '', '', '', 12, 'Male', '', '', '', '0000-00-00', 815, 17, 0, '', '', 0, '0000-00-00', '1', '21,5', '', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(31, 987567955, '', 10, 'HLY', '9999999999', '9999999999', 'ddfghj', 'fghj', 'ger', 'hghj', 'Other', 12, 'Male', '', '', 'b', '2018-09-18', 815, 17, 20, 'Business', 'dsad', 0, '2018-09-18', '7,9', '', '', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(41, 989898984, '', 200, '', '9999999999', '9999999999', 're', 'v', 'ertr', 'ddgr', 'Brother', 1, 'Male', '', '', 'pob', '2018-09-18', 820, 21, 100000, 'None', 'AMIT', 0, '2018-09-03', '', '65', '', 1, 0, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(49, 989898982, '', 1, 'QLY', '9999999999', '9999999999', 'rgg', 'gg', 'ug', 'trrt', 'Mother', 1, 'Female', '186', '80.22', '80', '2018-09-09', 820, 24, 3, 'None', 'MBA', 0, '2018-09-14', '2,1,24,4', '12,2,1', '3,89', 1, 0, '', '', '', '2018-09-18', '52', '52', '20', 'true', 'true', 'false', '', '', 'true'),
(50, 999999999, '', 10, 'QLY', '9999999999', '9999999999', 'AMIT', 'gy', '1', 'trrt', 'Other', 1, 'Male', '187.96 -Cm', '80', '', '2018-09-09', 820, 22, 11, 'Private Job', 'MBA', 0, '2018-09-20', '1,23', ',8', '2', 1, 0, '', '', '', '2018-09-02', '4', '4', '20', 'true', 'true', 'true', '', '', 'true'),
(51, 898989898, '', 10000, 'QLY', '9999999999', '9999999999', 'hardik', 'papap', '10/268 Geeta angar', 'None', 'Other', 22, 'Male', '187.96 -Cm', '80', '', '2000-07-10', 815, 16, 1000000000, 'Goverment Job', 'B.tech', 0, '2018-09-12', ',1', '13', '', 1, 0, '', '', '', '2018-09-12', '30', '30', '22', 'true', 'true', 'true', '', '', 'true'),
(52, 989899999, 'raghav@gmail.com', 10000, 'QLY', '9999999999', '', 'rtyihi', 'qtfy', '10 geeta nagar', 'dghj', 'Brother', 51, 'Male', '172.72 -Cm', '59.99', '', '1994-09-01', 815, 23, 1000000, 'Goverment Job', 'Other', 0, '2018-09-12', '', '20', '', 1, 0, '', '', '', '2018-09-11', '', '30', '25', 'true', 'false', 'true', '', '', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`id`, `name`, `status`) VALUES
(1, 'B.tech', 0),
(2, 'MBA', 0),
(3, 'Other\r\n', 0),
(4, 'sw', 1),
(5, 'dsad', 1),
(6, 'AMIT', 1),
(7, 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(32) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `name`, `mobile`, `email`, `password`, `user_type`, `status`) VALUES
(1, '2018-08-15', 'Admin', '9090909090', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '', 2),
(2, '2018-08-16', 'Admin1', '9090909097', 'admin1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', 0),
(3, '2018-08-21', 'Amit Bhadana', 'dasd', 'admin4@gmail.com', '690eb0ee0081c360e3087ee84b2d1008', '', 1),
(4, '2018-08-21', 'ewq', 'qwe', 'hardik@gmail.com', '4d1ea1367acf0560c6716dd076a84d7f', '', 0),
(5, '2018-08-21', 'ewq', 'qwer', 'hardik1@gmail.com', '4d1ea1367acf0560c6716dd076a84d7f', '', 0),
(6, '2018-08-21', 'new1', 'QWER', 'new@GMAIL.COM', '6ba70bb28a5a0d671ca8dd4bb488be83', '', 1),
(7, '2018-08-21', 'a', 'op', 'a@gmail.com', '006d2143154327a64d86a264aea225f3', '', 1),
(8, '2018-08-21', 'a', '7017819799', 'a2@gmail.com', 'd54185b71f614c30a396ac4bc44d3269', '', 1),
(9, '2018-08-21', 'm', '9090909090', 'm@gmail.com', 'b3cd915d758008bd19d0f2428fbb354a', '', 1),
(10, '2018-08-21', 'm', '9090909090', 'm2@gmail.com', '45c48cce2e2d7fbdea1afc51c7c6ad26', '', 0),
(11, '2018-08-21', 'm', '9090909090', 'm4@gmail.com', '03c7c0ace395d80182db07ae2c30f034', '', 1),
(12, '2018-08-21', 'ayush', '9', 'ayush@gmail.com', '66049c07d9e8546699fe0872fd32d8f6', '', 1),
(13, '2018-08-23', 'neW6', '9999999999', 'test@gmail.com', '8613985ec49eb8f757ae6439e879bb2a', '', 0),
(14, '2018-08-23', 'test1', '9090909090', 'test1@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '', 0),
(15, '2018-09-13', 'gfdsa', '9999999999', 'admin32@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', 0),
(16, '2018-09-19', 'Raghav', '9999999999', 'raghav@gmail.com', 'b010c88ea3815cc2f7b7a903651e3d73', 'customer', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `occupations`
--
ALTER TABLE `occupations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `policy_no` (`policy_no`),
  ADD KEY `plan_id` (`plan_id`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `occupations`
--
ALTER TABLE `occupations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `proposals`
--
ALTER TABLE `proposals`
  ADD CONSTRAINT `proposals_ibfk_1` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`);
--
-- Database: `music`
--
CREATE DATABASE IF NOT EXISTS `music` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `music`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`) VALUES
(1, 'sdd', 0),
(2, '', 0),
(3, 'English', 0);

-- --------------------------------------------------------

--
-- Table structure for table `songs_upload`
--

CREATE TABLE `songs_upload` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(50) NOT NULL,
  `song` varchar(200) NOT NULL,
  `category` varchar(50) NOT NULL,
  `song_image` varchar(200) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs_upload`
--

INSERT INTO `songs_upload` (`id`, `date`, `title`, `song`, `category`, `song_image`, `status`) VALUES
(1, '2018-08-14', 'Aa To Sahi', '1.mp3', 'ggh', '2.jpg', 0),
(2, '2018-08-14', 'jio', '2.mp3', 'gsdf', '2.jpg', 0),
(3, '2018-08-15', 'f', '3.mp3', 'g', '3.jpg', 0),
(4, '2018-08-15', 'cvcv', '4.mp3', 'vcx', '4.jpg', 0),
(5, '2018-08-15', 'f', '3.mp3', 'g', '3.jpg', 0),
(6, '2018-08-14', 'title', '1.mp3', 'ggh', '1.jpg', 0),
(7, '2018-08-14', 'jio', '2.mp3', 'gsdf', '2.jpg', 0),
(8, '2018-08-15', 'cvcv', '4.mp3', 'vcx', '4.jpg', 0),
(9, '2018-08-24', 'Jaani Tera Naa', '9.mp3', 'Punjabi', '9.jpg', 0),
(10, '2018-08-24', 'ABC', '10.mp3', 'ABC', '10.jpg', 0),
(11, '2018-08-24', 'Raat Kamal Hai', '11.mp3', 'Guru', '11.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(32) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `name`, `email`, `password`, `mobile`, `type`, `status`) VALUES
(1, '2018-08-09', 'Hardik', 'hardik@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '7017819799', 'admin', 0),
(2, '0000-00-00', '', '', '', '', '', 1),
(3, '2010-08-18', 'AMITs', 'admins', '9808840842', 'sas', 'User', 0),
(4, '2018-08-10', 'AMITgf', 'adming', '9808840842', 'sag', 'User', 0),
(5, '2018-08-10', 'sdsa', 'dsa', 'das', 'ddas', 'Admin', 0),
(6, '2018-08-11', 'sa', 'vcx', 'vxc', 'vxc', 'User', 0),
(7, '2018-08-11', 'gc', 'vg', 'vg', 'n', 'User', 0),
(8, '2018-08-11', 'sad', 'dsa', 's', 's', 'Admin', 1),
(9, '2018-08-11', 'fsd', 'f', 'f', 'f', 'Admin', 1),
(10, '2018-08-15', 'vb', 'bv', '9090909090', 'bv', 'User', 0),
(11, '2018-08-15', 'hfgh', 'hfgh', 'hfg', 'hfgh', 'User', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs_upload`
--
ALTER TABLE `songs_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `songs_upload`
--
ALTER TABLE `songs_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'blog', 'blogs', '{\"sorted_col\":\"`blogs`.`author`  DESC\"}', '2019-01-12 10:31:32'),
('root', 'library', 'books', '{\"sorted_col\":\"`book_id` ASC\"}', '2018-08-06 04:33:25'),
('root', 'library', 'employee', '{\"sorted_col\":\"`employee`.`id`  DESC\"}', '2018-08-06 03:56:59'),
('root', 'library', 'issue', '{\"sorted_col\":\"`issue`.`id`  DESC\"}', '2018-08-03 05:01:39');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-02-09 06:37:42', '{\"Console\\/Mode\":\"show\",\"Console\\/Height\":-25.0156}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sarkari_zone`
--
CREATE DATABASE IF NOT EXISTS `sarkari_zone` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sarkari_zone`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `shivam`
--
CREATE DATABASE IF NOT EXISTS `shivam` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shivam`;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` smallint(6) NOT NULL,
  `model` varchar(255) DEFAULT '',
  `price` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb1`
--

CREATE TABLE `tb1` (
  `id` int(11) NOT NULL,
  `mobile1` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1`
--

INSERT INTO `tb1` (`id`, `mobile1`) VALUES
(1, '9898989898'),
(2, '9878787878'),
(3, '9878787898'),
(4, '7898989898');

-- --------------------------------------------------------

--
-- Table structure for table `tb2`
--

CREATE TABLE `tb2` (
  `id` int(11) NOT NULL,
  `mobile2` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb2`
--

INSERT INTO `tb2` (`id`, `mobile2`) VALUES
(1, '9898989898'),
(2, '9878787878');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb1`
--
ALTER TABLE `tb1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb2`
--
ALTER TABLE `tb2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb1`
--
ALTER TABLE `tb1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb2`
--
ALTER TABLE `tb2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `software_estimation`
--
CREATE DATABASE IF NOT EXISTS `software_estimation` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `software_estimation`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `estimate_record`
--

CREATE TABLE `estimate_record` (
  `id` int(11) NOT NULL,
  `kloc` int(100) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `project_kloc` int(11) NOT NULL,
  `cost_cocomo_basic` int(11) NOT NULL,
  `cost_cocomo_inter` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `name`, `email`, `password`, `mobile`, `status`) VALUES
(1, '2019-01-28', 'Hardik Chaturvedi', 'hardikx2000@gmail.com', 'a681a2f58e4dd2b1cdefefebaf3417a8', '8923062934', '0'),
(2, '2019-02-09', 'Hardik Chaturvedi', 'hardikchaturvedi0562@gmail.com', 'a681a2f58e4dd2b1cdefefebaf3417a8', '8923062934', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estimate_record`
--
ALTER TABLE `estimate_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimate_record`
--
ALTER TABLE `estimate_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `students_db`
--
CREATE DATABASE IF NOT EXISTS `students_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `students_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(32) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `status`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `f_name` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile1` varchar(10) NOT NULL,
  `mobile2` varchar(10) NOT NULL,
  `tenth_board` varchar(100) NOT NULL,
  `tenth_marks` float NOT NULL,
  `twe_board` varchar(100) NOT NULL,
  `twe_marks` float NOT NULL,
  `sem_one` float NOT NULL,
  `sem_two` float NOT NULL,
  `sem_three` float NOT NULL,
  `sem_four` float NOT NULL,
  `sem_fifth` float NOT NULL,
  `sem_six` float NOT NULL,
  `agg` float NOT NULL,
  `backlogs` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `roll_no`, `name`, `f_name`, `dob`, `gender`, `email`, `mobile1`, `mobile2`, `tenth_board`, `tenth_marks`, `twe_board`, `twe_marks`, `sem_one`, `sem_two`, `sem_three`, `sem_four`, `sem_fifth`, `sem_six`, `agg`, `backlogs`, `status`) VALUES
(1, 1, 'test', 'papa', '2018-08-01', 'male', 'test', '12', '12', 'UP', 1, 'UP', 12, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(2, 1, 'test', 'papa', '2018-08-01', 'male', 'test', '12', '12', 'UP', 1, 'UP', 12, 1, 1, 1, 1, 1, 1, 1, 0, 1),
(3, 1500, 'test', 'papa', '2018-08-01', 'male', 'test', '12', '12', 'UP', 1, 'UP', 12, 1, 1, 1, 1, 1, 1, 1, 0, 0),
(4, 1500, 'testw', 'papaw', '2018-08-01', 'male', 'test', '12', '12', 'UP', 1, 'UP', 12, 1, 1, 1, 1, 1, 1, 1, 0, 0),
(5, 1500, 'testw', 'papaw', '2018-08-21', 'male', 'test', '12', '12', 'UP', 1, 'UP', 12, 1, 1, 1, 1, 1, 1, 1, 0, 0),
(6, 1500, 'testw', 'papaw', '2018-08-21', 'male', 'test@gmail.com', '9999999999', '9999999999', 'UP', 1, 'UP', 12, 1, 1, 1, 1, 1, 1, 1, 0, 0),
(7, 1500, 'testw', 'papaw', '2018-08-21', 'male', 'test@gmail.com', '9999999999', '9999999999', 'UP', 600, 'UP', 500, 1, 1, 1, 1, 1, 1, 1, 0, 0),
(8, 1500, 'testw', 'papaw', '2018-08-21', 'male', 'test@gmail.com', '9999999999', '9999999999', 'UP', 600, 'UP', 500, 1000, 1000, 1000, 1, 1, 1, 1, 0, 0),
(9, 1500, 'testw', 'papaw', '2018-08-21', 'male', 'test@gmail.com', '9999999999', '9999999999', 'UP', 600, 'UP', 500, 1000, 1000, 1000, 1000, 1000, 1000, 1, 0, 0),
(10, 1500, 'testw', 'papaw', '2018-08-21', 'male', 'test@gmail.com', '9999999999', '9999999999', 'UP', 600, 'UP', 500, 1000, 1000, 1000, 1000, 1000, 1000, 1, 0, 0),
(11, 0, 'jbkj', 'kjb', '0000-00-00', 'Male', 'j@gamil.com', '9999999999', '', 'j', 9, 'j', 9, 9, 9, 9, 9, 9, 9, 1, 0, 0),
(12, 0, 'jbkj', 'kjb', '0000-00-00', 'Female', 'j@gamil.com', '9999999999', '', 'j', 9, 'j', 9, 9, 9, 9, 9, 9, 9, 1, 0, 0),
(13, 0, 'jbkj', 'kjb', '0000-00-00', 'Female', 'j@gamil.com', '9999999999', '', 'j', 9, 'j', 9, 6, 6, 6, 6, 6, 6, 6, 0, 0),
(14, 0, 'jbkj', 'kjb', '0000-00-00', 'Female', 'j@gamil.com', '9999999999', '', 'j', 9, 'j', 9, 12, 6, 6, 6, 6, 6, 7, 0, 0),
(15, 0, 'jbkj', 'kjb', '0000-00-00', 'Female', 'j@gamil.com', '9999999999', '', 'j', 9, 'j', 9, 15, 6, 6, 6, 6, 6, 8, 0, 0),
(16, 0, 'jbkj', 'kjb', '0000-00-00', 'Female', 'j@gamil.com', '9999999999', '', 'j', 9, 'j', 9, 15, 6, 6, 6, 6, 6, 7.5, 0, 0),
(17, 0, 'jbkj', 'kjb', '0000-00-00', 'Female', 'j@gamil.com', '9999999999', '', 'j', 9, 'j', 9, 20, 19, 20, 20, 1, 1, 13.5, 0, 0),
(18, 0, 'jbkj', 'kjb', '0000-00-00', 'Female', 'j@gamil.com', '9999999999', '', 'j', 9, 'j', 9, 20, 18, 1, 20, 1, 1, 10.1667, 0, 0),
(19, 0, 'jh', 'hj', '0000-00-00', 'Female', 'i@fyf.cen', '9999999999', '9999999999', '8', 8, '8', 8, 8, 8, 8, 8, 8, 8, 8, 0, 0),
(20, 878, 'y', 'y', '0000-00-00', 'Male', 'ayush@gmail.com', '9999999999', '9999999999', 'u', 1, 'u', 5, 5.04, 5, 5, 5, 5, 5, 5.00667, 0, 0),
(21, 0, '', '', '0000-00-00', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 0, '', '', '0000-00-00', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 0, '', '', '0000-00-00', '', '', '', '', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
