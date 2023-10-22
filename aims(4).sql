-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2023 at 10:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aims`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_news`
--

CREATE TABLE `add_news` (
  `id` int(100) NOT NULL,
  `title` text NOT NULL,
  `descriptions` text NOT NULL,
  `uimg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_news`
--

INSERT INTO `add_news` (`id`, `title`, `descriptions`, `uimg`) VALUES
(18, 'Agri Minister eliminates need for rice imports', 'The Agriculture and Agrarian Insurance Board said that  32,815 acres of rice fields across 19 districts were destroyed due to arid weather conditions.\r\n\r\nChairman of the Agriculture and Agrarian Insurance Board Madduma Bandara Weerasekera said the most affected area was the Kurunegala District with 10,232 acres of rice fields being destroyed.\r\n\r\nAround 10,117 acres of rice fields in the Walawa Zone were destroyed due to arid weather conditions, and the damage is expected to increase further.\r\n\r\nChairman of the Agriculture and Agrarian Insurance Board Madduma Bandara Weerasekera said a team comprising of two Directors have been assigned to assess the damage in the Walawa Zone.\r\n\r\nHe added that crop damages are also reported from the Mahawa, Ratnapura, Trincomalee, Puttlam, Ampara, Batticaloa, and Matara District.\r\n\r\nChairman of the Agriculture and Agrarian Insurance Board Madduma Bandara Weerasekera said that 21,169 rice farmers have incurred losses due to this situation.', '1696576355_IMG-20231006-WA0008.jpg'),
(19, 'Paddy purchasing for the Yala season commences', 'With arrival of the dry season, many problems have arisen in several areas in releasing water for paddy cultivation in the Yala season.\r\n\r\nDue to this, farmers say that there is a risk of about 60,000 acres of paddy fields belonging to the Embilipitiya Walawa Farming Movement facing drought.\r\n\r\nThe water committee of the Walawa Moverment belonging to Embilipitya Mahaweli Authority convened a meeting to discuss the release of water.\r\n\r\nThe meeting was headed by the Deputy Resident Business Manager of the Embilipitya Mahaweli Authority Thilak Ranasinghe.', '1696576399_IMG-20231006-WA0011.jpg'),
(20, 'Rs.1 billion to be released to purchase paddy', 'The Cabinet of Ministers has reached a decision to release Rs.1 billion to purchase paddy. \r\n\r\nThe purchase will be made through the Paddy Marketing Board.\r\n\r\nThe Ministry of Agriculture said plans are in place to purchase one kilogram of paddy from the Yala season for between Rs.90-95.\r\n\r\nFarmers of several areas recently charged that there is no set price for paddy', '1696576431_WhatsApp Image 2023-10-06 at 12.26.49_2090aa91.jpg'),
(22, 'USAID & FAO to deliver TSP fertilizer to all paddy farmers in Sri Lanka', 'The Food and Agriculture Organization of the United Nations (FAO), with funding through the United States Agency for International Development (USAID), will distribute 36,000 metric tonnes of Triple Super Phosphate (TSP) fertilizer to all paddy farmers in Sri Lanka through the Ministry of Agriculture. \r\n\r\nThe amount of TSP provided per farmer will be determined based on the area they cultivated in the 2022/2023 Maha cultivation season.\r\n\r\nThe distribution list, along with the land extent cultivated during this Maha season, has been published and displayed at all Agrarian Service Centres of the Department of Agrarian Development. \r\n\r\nFAO invites all eligible paddy farmers to visit their respective Agrarian Service Centre and ensure their details have been incorporated. \r\n\r\nThe distribution lists will be displayed until 5 January 2023, and the date of fertilizer distribution will be shared through the Agrarian Service Centres', '1696645257_IMG-20231006-WA0009.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `far_reg`
--

CREATE TABLE `far_reg` (
  `far_fname` varchar(50) NOT NULL,
  `far_lname` varchar(50) NOT NULL,
  `far_con` varchar(10) NOT NULL,
  `far_nic` varchar(12) NOT NULL,
  `far_gender` char(1) NOT NULL,
  `far_add1` varchar(50) NOT NULL,
  `far_add2` varchar(50) NOT NULL,
  `far_add3` varchar(50) NOT NULL,
  `far_acc` int(20) NOT NULL,
  `far_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `far_reg`
--

INSERT INTO `far_reg` (`far_fname`, `far_lname`, `far_con`, `far_nic`, `far_gender`, `far_add1`, `far_add2`, `far_add3`, `far_acc`, `far_img`) VALUES
('kasun', 'asela', '0789456123', '112233445000', 'M', 'scx', 'dfcs', 'ds', 102586554, 'default_img.jpg'),
('kasun', 'asela', '0789456123', '112233447x', 'M', 'scx', 'dfcs', 'ds', 102586554, 'default_img.jpg'),
('nuwan', 'abesuriya', '0776322378', '200012601572', 'M', 'abc', 'bas', 'abn', 1002586, 'default_img.jpg'),
('kasuni', 'hersth', '0456456456', '456789123123', 'F', 'qq', 'ww', 'ww', 123456789, 'default_img.jpg'),
('banu', 'binuka', '0789452651', '457896231015', 'M', 'sws', 'fdf', 'dsfd', 789564215, 'default_img.jpg'),
('amal', 'amal', '0123456789', '458742213222', 'M', 'sasa', 'sasas', 'asasss', 1002589889, 'default_img.jpg'),
('amal', 'amal', '0123456789', '458742213223', 'M', 'sasa', 'sasas', 'asasss', 1002589889, 'default_img.jpg'),
('kusum', 'thilakasiri', '0123456789', '585859878x', 'M', 'aa', 'aa', 'aa', 124578, 'default_img.jpg'),
('kamal', 'asanka', '0775865410', '770123456x', 'M', 'qqq', 'www', 'eee', 56796899, 'default_img.jpg'),
('gayani', 'tharuka', '0704170698', '996468082v', 'F', '11asd', 'asd', 'wwww', 100400567, 'default_img.jpg'),
('Tharuka', 'Wanninayake', '0704170699', '996480852v', 'F', 'aaaa', 'pqr', 'abc', 2147483647, 'default_img.jpg'),
('imanjalee', 'perera', '0779629224', '997893840V', 'F', 'steal road', 'jjhh', 'hhhhd', 2147483647, '1694748646_Screenshot 2023-08-04 225033.png');

-- --------------------------------------------------------

--
-- Table structure for table `fertilizer`
--

CREATE TABLE `fertilizer` (
  `land_number` int(11) NOT NULL,
  `nic` varchar(15) DEFAULT NULL,
  `total_area` double(10,2) DEFAULT NULL,
  `urea1` double(10,2) DEFAULT NULL,
  `urea2` double(10,2) DEFAULT NULL,
  `urea3` double(10,2) DEFAULT NULL,
  `tsp` double(10,2) DEFAULT NULL,
  `mop` double(10,2) DEFAULT NULL,
  `zs` double(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fertilizer`
--

INSERT INTO `fertilizer` (`land_number`, `nic`, `total_area`, `urea1`, `urea2`, `urea3`, `tsp`, `mop`, `zs`) VALUES
(1, '585859878x', 25.00, 0.26, 0.39, 0.34, 0.28, 0.31, 0.03),
(12, '200012601572', 15.50, 0.16, 0.24, 0.21, 0.18, 0.19, 0.02),
(100, '112233445000', 10.00, 0.10, 0.15, 0.13, 0.11, 0.12, 0.01),
(101, '456789123123', 100.00, 1.03, 1.55, 1.34, 1.14, 1.24, 0.10),
(123, '996468082v', 8.00, 0.08, 0.12, 0.11, 0.09, 0.10, 0.01),
(125, '457896231015', 12.50, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '457896231015', 12.50, 0.13, 0.19, 0.17, 0.14, 0.15, 0.01),
(1002, '457896231015', 56.00, 0.58, 0.87, 0.75, 0.64, 0.69, 0.06);

-- --------------------------------------------------------

--
-- Table structure for table `lands`
--

CREATE TABLE `lands` (
  `land_number` varchar(100) NOT NULL,
  `land_location` varchar(100) NOT NULL,
  `land_size` double NOT NULL,
  `far_nic` varchar(12) NOT NULL,
  `far_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lands`
--

INSERT INTO `lands` (`land_number`, `land_location`, `land_size`, `far_nic`, `far_name`) VALUES
('001', 'meegahagadura', 25, '585859878x', 'kusum'),
('100', 'sooriyawewa', 10, '112233445000', 'kasun'),
('1010', 'kiriibbanwewa', 8, '112233445000', 'kasun'),
('12', 'sooriyawewa', 15.5, '200012601572', 'nuwan'),
('123', 'yaya12', 8, '996468082v', ''),
('157', 'sooriyawewa', 12.5, '457896231015', 'banu'),
('321', 'morakatiya', 12, '200012601572', 'nuwan'),
('55', 'meegahajandura', 5, '200012601572', 'nuwan'),
('56', 'yay12', 120, '200012601572', 'nuwan');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(100) NOT NULL,
  `title` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decr` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `decr`, `img`) VALUES
(1, 'q', 'assa', '1692418519_6.jpeg'),
(2, '්ිාෑ‌ෙ', 'ුඇ‌ෙැ‌ොැ‌ෙ', '1692418803_123.jpg'),
(3, '්ිාෑ‌ෙ', 'ුඇ‌ෙැ‌ොැ‌ෙ', '1692418819_123.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('user1', 'pw1'),
('user2', 'pw2'),
('user3', 'pw3'),
('user4', 'pw4'),
('user5', 'pw5'),
('user6', 'pw6'),
('user7', 'pw7'),
('user8', 'pw8');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `user_id` varchar(20) NOT NULL,
  `user_fname` varchar(50) NOT NULL,
  `user_lname` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_con` varchar(10) NOT NULL,
  `user_nic` varchar(12) NOT NULL,
  `user_gender` char(1) NOT NULL,
  `user_pw` varchar(20) NOT NULL,
  `user_add1` varchar(50) NOT NULL,
  `user_add2` varchar(50) NOT NULL,
  `user_add3` varchar(50) NOT NULL,
  `user_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`user_id`, `user_fname`, `user_lname`, `user_email`, `user_con`, `user_nic`, `user_gender`, `user_pw`, `user_add1`, `user_add2`, `user_add3`, `user_img`) VALUES
('', '', '', '', '2000126015', '0', '', 'da39a3ee5e6b4b0d3255', '', '', '', 'default_img.jpg'),
('2345', 'saas', 'szczcx', 'sdsdd@gmail.com', '0123455', '525', 'F', '7c222fb2927d828af22f', 'we', 'er4t', 'fvfvf', 'default_img.jpg'),
('4582', 'asd', 'dwssd', 'M', '124578962v', '0458965486', 'u', 'd54b76b2bad9d9946011', '1245', 'sads', 'asdsad', 'default_img.jpg'),
('4582sa', 'asd', 'dwssd', 'M', '124578962v', '0458965486', 'u', 'd54b76b2bad9d9946011', '1245', 'sads', 'asdsad', 'default_img.jpg'),
('7512571', 'edff', 'wd', 'g@gmail.com', '0123789456', '200012601571', 'M', 'b6d8d89da12a87ffda0b', 'jhj', 'sx', 'sws', '1691519347_r.jpeg'),
('787', 'nuwan', 'abe', 'nuwanudayanga842@gmail.com', '0124578784', '200012601571', 'M', 'c4d44f1535d5d72c27b5', 'qw', 'qw', 'qw', '1691500867_a.jpeg'),
('787a', 'ass', 'we', 'mkn@gmail.com', '01234', '200012601571', 'F', '8008d8c59116c134be54', '12', 'sf', 'sdf', 'default_img.jpg'),
('7895', 'asd', 'asa', 'nuwan@gmail.com', '014781', '200012601571', 'F', '554dbf0b41b3cd068ee1', 'as', 'asd', 'adds', '1691507064_q.jpg'),
('ee34sh', 'nuwan', 'nuwan', 'M', '2000126015', '0070108340', 'u', 'e869eea9087190a96341', 'www', 'wwwwwww', 'www', 'default_img.jpg'),
('hash', 'hash1', 'hash2', 'hash@gmail.com', '0123456789', '159627453v', 'F', '586b64caacfbdfd67d2a', 'aa', 'bb', 'cc', 'default_img.jpg'),
('mmm1111', 'mm11', '11mm', '0123456852', 'M', 'mm@gmail.com', '1', '5af9c3959a9bd7b25614', 'll', 'll', 'll', 'default_img.jpg'),
('user1', 'aaa', 'nuwan', 'abc@gmail.com', '0222222222', '996480853v', 'M', 'de8b9915377ddf5ba2ad', 'qqq', 'qqq', 'qq', '1694749538_1.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_news`
--
ALTER TABLE `add_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `far_reg`
--
ALTER TABLE `far_reg`
  ADD PRIMARY KEY (`far_nic`);

--
-- Indexes for table `fertilizer`
--
ALTER TABLE `fertilizer`
  ADD PRIMARY KEY (`land_number`),
  ADD KEY `nic` (`nic`);

--
-- Indexes for table `lands`
--
ALTER TABLE `lands`
  ADD PRIMARY KEY (`land_number`),
  ADD KEY `fk_lands_far_nic` (`far_nic`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_news`
--
ALTER TABLE `add_news`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fertilizer`
--
ALTER TABLE `fertilizer`
  ADD CONSTRAINT `fertilizer_ibfk_1` FOREIGN KEY (`nic`) REFERENCES `far_reg` (`far_nic`);

--
-- Constraints for table `lands`
--
ALTER TABLE `lands`
  ADD CONSTRAINT `fk_lands_far_nic` FOREIGN KEY (`far_nic`) REFERENCES `far_reg` (`far_nic`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
