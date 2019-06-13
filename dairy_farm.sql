-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2019 at 10:17 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dairy_farm`
--

-- --------------------------------------------------------

--
-- Table structure for table `breeding`
--

CREATE TABLE `breeding` (
  `หมายเลขโค` varchar(20) NOT NULL,
  `น้ำเชื้อ` varchar(20) NOT NULL,
  `ว/ด/ป ที่ผสม` date NOT NULL,
  `กำหนดคลอด` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `dairy_cow`
--

CREATE TABLE `dairy_cow` (
  `หมายเลขโค` varchar(20) NOT NULL,
  `เวลารีดเช้า` int(10) NOT NULL,
  `เวลารีดเย็น` int(10) NOT NULL,
  `ระยะการรีดนม` varchar(10) NOT NULL,
  `บัญชีการผลิต` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `expenditure`
--

CREATE TABLE `expenditure` (
  `วันที่ทำรายการ` date NOT NULL,
  `ชื่อรายการ` varchar(50) NOT NULL,
  `ยอดเงินที่จ่าย` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `หมายเลขโค` varchar(20) NOT NULL,
  `ชื่อ` varchar(20) NOT NULL,
  `ว/ด/ป เกิด` date NOT NULL,
  `สายพันธ์` varchar(20) NOT NULL,
  `วันผสมพันธ์` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`หมายเลขโค`, `ชื่อ`, `ว/ด/ป เกิด`, `สายพันธ์`, `วันผสมพันธ์`) VALUES
('0001', 'โอ', '2019-06-03', 'โฮลสไตน์ฟรีเชี่ยน', '2019-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(10) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `member_road` varchar(50) NOT NULL,
  `member_dist` varchar(50) NOT NULL,
  `member_town` varchar(50) NOT NULL,
  `member_prow` varchar(20) NOT NULL,
  `member_zip` varchar(5) NOT NULL,
  `member_tel` varchar(10) NOT NULL,
  `member_email` varchar(50) NOT NULL,
  `member_login` varchar(30) NOT NULL,
  `member_pwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `member_road`, `member_dist`, `member_town`, `member_prow`, `member_zip`, `member_tel`, `member_email`, `member_login`, `member_pwd`) VALUES
(1, 'นวรัตน์ ', '', 'ด่านคล้า', 'โนนสูง', 'นครราชสีมา', '30160', '0863609804', 'nawarat1840@gmail.com', 'kay', 'kay');

-- --------------------------------------------------------

--
-- Table structure for table `revenue`
--

CREATE TABLE `revenue` (
  `วันที่ทำรายการ` date NOT NULL,
  `ชื่อรายการ` varchar(50) NOT NULL,
  `ยอดเงินที่ได้รับ` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `หมายเลขโค` varchar(20) NOT NULL,
  `ว/ด/ป` date NOT NULL,
  `สาเหตุการป่วย` varchar(50) NOT NULL,
  `ชนิดยา` varchar(20) NOT NULL,
  `ค่ารักษา` varchar(20) NOT NULL COMMENT 'ไม่แน่ใจ'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(20) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_login` varchar(50) NOT NULL,
  `user_pwd` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_login`, `user_pwd`) VALUES
(1, 'ผู้ดูแลระบบ', 'admin', 'admin'),
(2, 'นวรัตน์', 'kay', 'kay');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `breeding`
--
ALTER TABLE `breeding`
  ADD PRIMARY KEY (`หมายเลขโค`);

--
-- Indexes for table `dairy_cow`
--
ALTER TABLE `dairy_cow`
  ADD PRIMARY KEY (`หมายเลขโค`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`หมายเลขโค`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`หมายเลขโค`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
