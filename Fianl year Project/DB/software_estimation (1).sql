-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2019 at 03:50 AM
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
-- Database: `software_estimation`
--

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `project_name` varchar(50) NOT NULL,
  `project_kloc` float NOT NULL,
  `cocomo_basic_effort` float NOT NULL,
  `cocomo_inter_effort` float NOT NULL,
  `halsted_effort` float NOT NULL,
  `baiely_effort` float NOT NULL,
  `doty_effort` float NOT NULL,
  `fuzzy_model_effort` float NOT NULL,
  `actual_effort` float NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `user_id`, `date`, `project_name`, `project_kloc`, `cocomo_basic_effort`, `cocomo_inter_effort`, `halsted_effort`, `baiely_effort`, `doty_effort`, `fuzzy_model_effort`, `actual_effort`, `status`) VALUES
(45, 1, '2019-05-02', 'Fuzzy', 39, 112.416, 181.913, 1481.79, 66.296, 286.63, 79.9661, 91.0027, '0'),
(46, 1, '2019-06-02', 'Nasa1', 213, 2240.57, 1742.66, 16164.9, 372.143, 1449.12, 197.163, 0, '0'),
(47, 1, '2019-06-02', 'Nasa-1', 253.6, 2762.37, 2668.45, 26082.5, 564.347, 2160.52, 294.81, 287.2, '0'),
(48, 1, '2019-06-02', 'Carpool', 40.5, 116.96, 158.186, 1310.09, 57.6264, 249.123, 68.5072, 82.5, '0'),
(49, 1, '2019-06-02', 'Grid System', 450, 5497.4, 13469.6, 156374, 2767.69, 9989.56, 1094.94, 1107.37, '0'),
(50, 1, '2019-06-02', 'Dolphin', 214.4, 2258.25, 713.89, 6635.05, 152.393, 593.044, 86.2839, 86.9, '0'),
(51, 1, '2019-06-02', 'Nasa-2', 449.9, 5495.94, 3889.9, 45156.3, 799.294, 2885, 316.246, 330.3, '0'),
(52, 1, '2019-06-02', 'Shopper', 50.1, 240.403, 251.582, 1929.74, 77.3493, 333.243, 84.4877, 84, '0'),
(53, 1, '2019-06-02', 'Care Taker', 200, 2077.49, 1078.4, 9816, 231.13, 905.432, 135.28, 130.3, '0'),
(54, 1, '2019-06-02', 'Isrt-1', 289, 3231.32, 1174.14, 11935.3, 246.603, 931.828, 120.96, 116.833, '0'),
(55, 1, '2019-06-02', 'isrt-2', 39, 112.416, 170.998, 1392.88, 62.3182, 269.432, 75.1681, 72, '0'),
(56, 1, '2019-06-02', 'Commercial', 254.2, 2770.21, 2240.79, 21918, 473.843, 1813.61, 247.25, 258.7, '0'),
(57, 1, '2019-06-02', 'E-media', 128.6, 690.989, 1004.1, 11019.8, 304.714, 1241.58, 219.591, 230.7, '0'),
(58, 1, '2019-06-02', 'E-College', 161.4, 1606.15, 1174.28, 10022.7, 254.985, 1018.81, 165.214, 160.13, '0'),
(59, 1, '2019-06-02', 'Definity', 164.9, 1648.04, 1794.53, 15415.7, 389.141, 1551.85, 249.598, 241.9, '0'),
(84, 1, '2019-06-02', 'q1', 11, 29.7628, 40.6468, 189.711, 17.2852, 65.1073, 29.457, 29.457, '1'),
(85, 1, '2019-06-02', 'e1', 11, 29.7628, 40.6468, 189.711, 17.2852, 65.1073, 29.457, 29.457, '1'),
(86, 1, '2019-06-02', 'w4', 161.4, 1606.15, 1249.23, 10662.5, 271.261, 1083.84, 175.759, 175.759, '1'),
(87, 1, '2019-06-02', 'w4', 39, 112.416, 181.913, 1481.79, 66.296, 286.63, 79.9661, 79.9661, '0'),
(88, 1, '2019-06-03', 'nasa-1', 449.9, 5495.94, 3889.9, 45156.3, 799.294, 2885, 316.246, 316.246, '1'),
(89, 1, '2019-06-03', 'Nasa1', 253.6, 2762.37, 2668.45, 26082.5, 564.347, 2160.52, 294.81, 287.4, '0');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `profession` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `date`, `name`, `image`, `email`, `password`, `mobile`, `address`, `profession`, `status`) VALUES
(1, '2019-03-19', 'Hardik Chaturvedi', '1.jpg', 'hardikchaturvedi0562@gmail.com', 'a681a2f58e4dd2b1cdefefebaf3417a8', '8923062934', '10/268F,Geeta Nagar', 'Student', '2'),
(3, '2019-03-19', 'Hardik2 chaturvedi', '', 'hardikchaturvedi0562@gmail.com', 'd66ba43d4324f929c2973577062913df', '8923062934', '', '', '1'),
(4, '2019-04-30', 'Hardik', '', 'hardikx2000@gmail.com', 'a3a45ee816f77cbb6f991d6b215b1646', '7017819799', '10/268F', 'IAS', '0'),
(5, '2019-05-01', 'Madhav Chaturvedi', '1.jpg', 'madhav@gmail.com', '4213b7417c861ca31c76f8c837706180', '7906997293', '10/268F', 'Student', '0'),
(6, '2019-05-02', 'testname', '1.jpg', 'test@gmail.com', '16d7a4fca7442dda3ad93c9a726597e4', '8888888888', 'test address', 'Teacher', '1'),
(7, '2019-06-03', 'Ana', '', 'ana@gmail.com', 'b33e0dcc9e2d7a1649d96831260b5698', '8888888888', 'Delhi', 'Business', '0'),
(8, '2019-06-03', 'ano', '', 'vbnm@fdk.com', 'e10adc3949ba59abbe56e057f20f883e', '2131231', '112e', 'xasxa', '0'),
(9, '2019-06-03', 'asd', '', 'email@gmail.com', '698d51a19d8a121ce581499d7b701668', '12345', 'swq', 'sqw', '1'),
(10, '2019-06-03', 'rthj', '', 'qwe@gmai.com', '202cb962ac59075b964b07152d234b70', '9090909090', 'sa', 'w', '1'),
(11, '2019-06-03', 'Raghav Chaturvedi', '', 'raghav2000@gmail.com', '7dc4914c8bfea8f097cd0b754da52af7', '7017819799', '10/268F,Geeta Nagar', 'Student', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

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
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
