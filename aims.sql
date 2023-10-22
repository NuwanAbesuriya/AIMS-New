-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 09:30 AM
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
-- Table structure for table `far_reg`
--

CREATE TABLE `far_reg` (
  `far_id` varchar(20) NOT NULL,
  `far_fname` varchar(50) NOT NULL,
  `far_lname` varchar(50) NOT NULL,
  `far_email` varchar(50) NOT NULL,
  `far_con` varchar(10) NOT NULL,
  `far_nic` varchar(12) NOT NULL,
  `far_gender` char(1) NOT NULL,
  `far_add1` varchar(50) NOT NULL,
  `far_add2` varchar(50) NOT NULL,
  `far_add3` varchar(50) NOT NULL,
  `far_land` float NOT NULL,
  `far_acc` int(20) NOT NULL,
  `far_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `far_reg`
--

INSERT INTO `far_reg` (`far_id`, `far_fname`, `far_lname`, `far_email`, `far_con`, `far_nic`, `far_gender`, `far_add1`, `far_add2`, `far_add3`, `far_land`, `far_acc`, `far_img`) VALUES
('0004', 'nuwan', 'abe', 'nuwan@gmail.com', '0000000000', '123456789v', 'F', 'aa', 'aaaaa', 'aa', 10, 100005, '1691821758_6.jpeg'),
('1112s', 'asd', 'asdf', 'm@gmail.com', '0123456789', '121212121v', 'M', '00', '00', '00', 10, 123, 'default_img.jpg'),
('123457', 'm,kdscffs', 'fsdfd', 'nuwanudayanga842@gmail.com', '0000000000', '200012601571', 'F', 'asd', 'ased', 'sdfrf', 10, 1000, '1691916210_asdf.jpg'),
('avb1', 'asasfdf', 'bnm', 'fff@gmail.com', '0000000000', '000000007v', 'F', '00', '00', '00', 10, 1052452452, '1691790700_6.jpeg'),
('qwe12', 'qwe', 'qwe', 'nuwanudayanga842@gmail.com', '0123456789', '200012601571', 'F', 'qw', 'qw', 'qw', 10, 12345, 'default_img.jpg'),
('qwe1223', 'qwe', 'qwen', 'nuwanudayanga842@gmail.com', '0123456789', '200012601570', 'F', 'qw', 'qw', 'qw', 10, 12345, 'default_img.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `loginn`
--

CREATE TABLE `loginn` (
  `user_id` varchar(20) NOT NULL,
  `user_pw` varchar(20) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loginn`
--

INSERT INTO `loginn` (`user_id`, `user_pw`, `user_type`) VALUES
('Admin@1234', '123456', 'AI');

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
('', '', '', '', '', '', '0', 'da39a3ee5e6b4b0d3255', '', '', '', '1692296628_123.jpg'),
('11112222', 'sdsd', 'sdsdsd', '000000000v', 'abe@gmail.', 'F', '0', 'c984aed014aec7623a54', '00', '00', '00', 'default_img.jpg'),
('1234', 'asdcsdc', 'csdcsdvc', 'nuwan@gmail.com', '0124536789', '123456789v', 'F', 'da39a3ee5e6b4b0d3255', 'sads', 'sd', 'fvd', '1691785342_a.jpeg'),
('123456', 'nuwan', 'abesuriya', 'nuwan@gmail.com', '0776377645', '200012601571', 'M', '7c4a8d09ca3762af61e5', 'nuwa', 'njia', 'jjsxa', '1691736584_a.jpeg'),
('1250', 'asdf', 'nbnbn', 'nuwan@gmail.com', '0123456789', '145214522v', 'M', 'b9fbed97a6e184ad703d', 'qwe', 'qwe', 'qwe', 'default_img.jpg'),
('12501', 'xcdcx', 'dx', 'nuwan@gmail.com', '0987654321', '987654321v', 'M', 'da39a3ee5e6b4b0d3255', 'sX', 'ASXASX', 'ASXXS', '1691785832_a.jpeg'),
('125011', 'xcdcx', 'dx', 'nuwan@gmail.com', '0987654321', '987654321v', 'M', 'da39a3ee5e6b4b0d3255', 'sX', 'ASXASX', 'ASXXS', '1691786102_a.jpeg'),
('125011v', 'xcdcx', 'dx', 'nuwan@gmail.com', '0987654321', '987654321v', 'M', 'da39a3ee5e6b4b0d3255', 'sX', 'ASXASX', 'ASXXS', '1691786588_a.jpeg'),
('12505', 'asdf', 'nbnbn', 'nuwan@gmail.com', '0123456789', '200012601571', 'M', 'b9fbed97a6e184ad703d', 'qwe', 'qwe', 'qwe', 'default_img.jpg'),
('22112211', 'asssd', 'zxzx', '000000122v', 'g@gmail.co', 'F', '0', '984ff6ee7c78078d4cb1', 'zz', 'zz', 'zz', 'default_img.jpg'),
('2345', 'saas', 'szczcx', 'sdsdd@gmail.com', '0123455', '525', 'F', '7c222fb2927d828af22f', 'we', 'er4t', 'fvfvf', 'default_img.jpg'),
('7512571', 'edff', 'wd', 'g@gmail.com', '0123789456', '200012601571', 'M', 'b6d8d89da12a87ffda0b', 'jhj', 'sx', 'sws', '1691519347_r.jpeg'),
('787', 'nuwan', 'abe', 'nuwanudayanga842@gmail.com', '0124578784', '200012601571', 'M', 'c4d44f1535d5d72c27b5', 'qw', 'qw', 'qw', '1691500867_a.jpeg'),
('787a', 'ass', 'we', 'mkn@gmail.com', '01234', '200012601571', 'F', '8008d8c59116c134be54', '12', 'sf', 'sdf', 'default_img.jpg'),
('7895', 'asd', 'asa', 'nuwan@gmail.com', '014781', '200012601571', 'F', '554dbf0b41b3cd068ee1', 'as', 'asd', 'adds', '1691507064_q.jpg'),
('78953', 'asd', 'asa', 'nuwan@gmail.com', '0147813', '200012601571', 'F', '554dbf0b41b3cd068ee1', 'as', 'asd', 'adds', '1691507719_q.jpg'),
('789534', 'asd', 'asa', 'nuwan@gmail.com', '0147813', '200012601571', 'F', '554dbf0b41b3cd068ee1', 'as', 'asd', 'adds', '1691507966_q.jpg'),
('7895347', 'asd', 'asa', 'nuwan@gmail.com', '0147813', '2000126015', 'F', '554dbf0b41b3cd068ee1', 'as', 'asd', 'adds', '1691508014_q.jpg'),
('7895347q', 'asd', 'asa', 'nuwan@gmail.com', '0147813', '2000126015', 'F', '554dbf0b41b3cd068ee1', 'as', 'asd', 'adds', '1691508114_q.jpg'),
('7895347qq', 'asd', 'asa', 'nuwan@gmail.com', '01478132', '2000126015', 'F', '554dbf0b41b3cd068ee1', 'as', 'asd', 'adds', '1691508286_q.jpg'),
('7895347qqa', 'asd', 'asa', 'nuwan@gmail.com', '01478132', '2000126015', 'F', '554dbf0b41b3cd068ee1', 'as', 'asd', 'adds', '1691508475_q.jpg'),
('7895347qqaqa', 'asd', 'asa', 'nuwan@gmail.com', '01478132', '2000126015', 'F', '554dbf0b41b3cd068ee1', 'as', 'asd', 'adds', '1691509347_q.jpg'),
('7895347qqaqaq', 'asd', 'asa', 'nuwan@gmail.com', '01478132', '2000126015', 'F', '554dbf0b41b3cd068ee1', 'as', 'asd', 'adds', '1691509531_q.jpg'),
('7895347qqaqaq2', 'asd', 'asa', 'nuwan@gmail.com', '01478132', '2000126015', 'F', '554dbf0b41b3cd068ee1', 'as', 'asd', 'adds', '1691509726_q.jpg'),
('7895347qqaqaq21', 'asd', 'asa', 'nuwan@gmail.com', '01478132', '2000126015', 'F', '554dbf0b41b3cd068ee1', 'as', 'asd', 'adds', '1691509972_q.jpg'),
('asd', 'ha', 'aas', 'nuwanudayanga842@gmail.com', '0789456123', '200012601571', 'F', '82379017a05706e4f8b0', 'qwe', 'dcfd', 'sasas', 'default_img.jpg'),
('asds', 'asda', 'dcsd', '125@gmail.com', '0125000000', '205655555555', 'M', 'da39a3ee5e6b4b0d3255', 'sqa', 'sacx', 'adc', 'default_img.jpg'),
('mmmm', 'asdd', 'aaaaaaaa', 'nuwan@gmail.com', '0123456789', '111222333v', 'M', '6049fdfd19a85cb75bc8', '45', 'jk', 'bv', '1691787563_123.jpg'),
('mmmmn', 'asdd', 'aaaaaaaa', 'nuwan@gmail.com', '0123456789', '111222333v', 'M', '6049fdfd19a85cb75bc8', '45', 'jk', 'bv', '1691787782_123.jpg'),
('qqqqqqqqqqqqqqqqqqq', 'asddcfxfcz', 'aaaaaaaadzfvff', 'nuwan@gmail.com', '0123456789', '111222333v', 'M', '2243cc515faa4386e6a6', '45', 'jk', 'bv', '1691787833_123.jpg'),
('qsqsqs', 'qwsqww', 'qsqsqs', 'assm@gmail.com', '048754', '200012601571', 'M', '20b879286a290e2ca3cc', 'qwe', 'ewewddad', 'sdsds', 'default_img.jpg'),
('qwer', 'sasads', 'njdnwqdmnkwq', 'nuwan@gmail.com', '0525255454', '200012601571', 'M', '83f45502c6207c843377', 'jcdc', 'fdsn', 'c cec,e', '1691633171_6.jpeg'),
('qwewdsd', 'vnfdjn', 'asdad', 'nuwan@kdu.ac.lk', '0951235789', '200012601571', 'F', 'd94674574abba19a9acb', 'sa', 'gfd', 'sad', 'default_img.jpg'),
('sssss', 'bnm', 'nmb', 'nuwan@gmail.com', '01245', '2222222', 'F', 'd275863d959dadb56f59', 'ad', 'c', 'f', 'default_img.jpg'),
('wdfefd', 'asdsdfc', 'azxx', 'kdu@gmail.com', '0123456789', '200012601571', 'F', '92fc472e870b9cf61aa2', 'jk', ',,nm', 'nm j,', 'default_img.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `far_reg`
--
ALTER TABLE `far_reg`
  ADD PRIMARY KEY (`far_id`);

--
-- Indexes for table `loginn`
--
ALTER TABLE `loginn`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
