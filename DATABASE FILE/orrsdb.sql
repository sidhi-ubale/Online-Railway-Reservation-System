-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2023 at 03:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orrsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `orrs_admin`
--

CREATE TABLE `orrs_admin` (
  `admin_id` int(20) NOT NULL,
  `admin_fname` varchar(200) NOT NULL,
  `admin_lname` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_uname` varchar(200) NOT NULL,
  `admin_pwd` varchar(200) NOT NULL,
  `admin_dpic` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_admin`
--

INSERT INTO `orrs_admin` (`admin_id`, `admin_fname`, `admin_lname`, `admin_email`, `admin_uname`, `admin_pwd`, `admin_dpic`) VALUES
(1, 'System ', 'Admin', 'admin@mail.com', 'Administrator', 'c272c1f15a5059cbf918466f8adae300bac61ee0', 'admin.png');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_employee`
--

CREATE TABLE `orrs_employee` (
  `emp_id` int(20) NOT NULL,
  `emp_fname` varchar(200) NOT NULL,
  `emp_lname` varchar(200) NOT NULL,
  `emp_nat_idno` int(100) NOT NULL,
  `emp_phone` int(10) NOT NULL,
  `emp_addr` varchar(200) NOT NULL,
  `emp_uname` varchar(200) NOT NULL,
  `emp_email` varchar(200) NOT NULL,
  `emp_pwd` varchar(200) NOT NULL,
  `emp_dpic` varchar(60) NOT NULL,
  `emp_dept` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_employee`
--

INSERT INTO `orrs_employee` (`emp_id`, `emp_fname`, `emp_lname`, `emp_nat_idno`, `emp_phone`, `emp_addr`, `emp_uname`, `emp_email`, `emp_pwd`, `emp_dpic`, `emp_dept`) VALUES
(1, 'John', 'Deacon', 866861970, 2147483647, '79 Green Avenue', 'deacon', 'employee@mail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', 'defaultimg.jpg', 'Train Captain'),
(2, 'Vincent', 'Gogh', 43217613, 2147483647, 'Delhi', 'Vincent', 'vincent@mail.com', 'a368dbc1f2795d0b39a3d11c6ab0b1edd6f418c1', 'female.png', 'Ticket Clerk'),
(3, 'Bill', 'Clinton', 435678, 2147483647, 'Goa', 'Bill', 'bill@mail.com', 'ffb9a9950c3bcdd5ad0ee588b362a085c718d2ed', '', 'Station Master'),
(4, 'James', 'Darwin', 34567245, 2147483647, 'Aurangabad', 'James', 'james@mail.com', '28664a61f4db5ea3894c7100d02aa1052c2b780d', '', 'Senior Time Keeper'),
(5, 'Tom', 'Cruise', 5676893, 2147483647, 'Mumbai', 'Tom', 'tom@mail.com', '9b8da0868167c1206943e4d437ef2524b50398e3', '', 'Junior Account Assistant');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_passenger`
--

CREATE TABLE `orrs_passenger` (
  `pass_id` int(20) NOT NULL,
  `pass_fname` varchar(200) NOT NULL,
  `pass_lname` varchar(200) NOT NULL,
  `pass_phone` int(10) NOT NULL,
  `pass_addr` varchar(200) NOT NULL,
  `pass_email` varchar(200) NOT NULL,
  `pass_pwd` varchar(200) NOT NULL,
  `pass_dpic` varchar(60) NOT NULL,
  `pass_uname` varchar(200) NOT NULL,
  `pass_bday` varchar(200) NOT NULL,
  `pass_bio` longtext NOT NULL,
  `train_no` int(10) NOT NULL,
  `train_name` varchar(200) NOT NULL,
  `journey_date` date NOT NULL,
  `route` varchar(200) NOT NULL,
  `deptime` varchar(10) NOT NULL,
  `arrtime` varchar(10) NOT NULL,
  `fare` int(10) NOT NULL,
  `fare_payment_code` int(10) NOT NULL,
  `seat_no` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_passenger`
--

INSERT INTO `orrs_passenger` (`pass_id`, `pass_fname`, `pass_lname`, `pass_phone`, `pass_addr`, `pass_email`, `pass_pwd`, `pass_dpic`, `pass_uname`, `pass_bday`, `pass_bio`, `train_no`, `train_name`, `journey_date`, `route`, `deptime`, `arrtime`, `fare`, `fare_payment_code`, `seat_no`) VALUES
(4, 'Moore', 'Moore', 2147483641, '44 Demo Address', 'christine@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'christine', '', '', 0, '', '0000-00-00', '', '', '', 0, 0, ''),
(6, 'Mickk', 'Mickk', 2147483647, '80 Russell Street', 'fritz@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'fritz', '0000-00-00', '', 0, 'Black Water', '0000-00-00', '', '00:00:00.0', '00:00:00.0', 33, 2147483647, '0'),
(7, 'Taylor', 'Taylor', 2147483612, '22 Valley Street', 'taylor@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'raisataylor', '0000-00-00', '', 0, '', '0000-00-00', '', '00:00:00.0', '00:00:00.0', 0, 0, '0'),
(10, 'Garcia', 'Garcia', 2145678656, '97 Euclid Avenue', 'garcia@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'dorothy', '0000-00-00', '', 0, '', '0000-00-00', '', '00:00:00.0', '00:00:00.0', 0, 0, '0'),
(12, 'Meyer', 'Meyer', 2147483622, '12 Eva Pearl Street', 'martha@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'martha', '0000-00-00', '', 0, '', '0000-00-00', '', '00:00:00.0', '00:00:00.0', 0, 0, '0'),
(14, 'Bennett', 'Bennett', 2147483647, '60 Oral Lake Road', 'jody@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'jody', '0000-00-00', '', 0, '', '0000-00-00', '', '00:00:00.0', '00:00:00.0', 0, 0, '0'),
(15, 'Campbell', 'Campbell', 2147483245, '93 Sarah Drive', 'campbell@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'jerry', '0000-00-00', '', 0, '', '0000-00-00', '', '00:00:00.0', '00:00:00.0', 0, 0, '0'),
(17, 'Barnes', 'Barnes', 2147483239, '31 Briarwood Road', 'wbarnes@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'wbarnes', '0000-00-00', '', 0, '', '0000-00-00', '', '00:00:00.0', '00:00:00.0', 0, 0, '0'),
(18, 'Jacquez', 'Jacquez', 2147483632, '17 Peck Court', 'fredj@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'fred', '0000-00-00', '', 0, '', '0000-00-00', '', '00:00:00.0', '00:00:00.0', 0, 0, '0'),
(19, 'Larry', 'Clark', 2147483647, '39 Dawson Drive', 'larry@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'larry', '0000-00-00', '', 0, '', '0000-00-00', '', '00:00:00.0', '00:00:00.0', 0, 0, '0'),
(20, 'Moore', 'Moore', 2147483647, '114 Southcross Avenue', 'liamoore@mail.com', '55c3b5386c486feb662a0785f340938f518d547f', 'defaultimg.jpg', 'liamoore', '0000-00-00', '', 0, 'Adirondack', '0000-00-00', '', '00:00:00.0', '00:00:00.0', 198, 2147483647, '0'),
(26, 'Ram', 'Jaiswal', 2147483647, 'Nanded', 'ram@mail.com', 'fa59e8d0fc3aa5aeadc56317bf09ed8980936696', 'male.png', 'Ram', '21/09/2002', 'Student', 0, '', '0000-00-00', '', '00:00:00.0', '00:00:00.0', 0, 0, '0'),
(29, 'Siddhi', 'Ubale', 2147483647, 'Jalna', 'siddhi@mail.com', '6a664ec16671db9dfe06ab1bf68866a7d56e0994', 'sid.jfif', 'Siddhi', '25/09/2002', 'Student', 0, '', '0000-00-00', 'Mumbai(CSMT)-Aurangabad', '', '', 0, 0, ''),
(30, 'Seema', 'Jain', 2147483647, 'Aurangabad', 'seema@mail.com', '99aa81c81b47d95bafaaeb8840ae5bb17804a1ea', 'seema.png', 'Seema', '', '', 11401, 'Nandigram Express', '0000-00-00', 'Jalna-Nanded', '12:50 AM', '05:00 AM', 145, 0, ''),
(31, 'Geeta', 'Rathi', 2147483647, 'Nanded', 'geeta@mail.com', '5c90b8ddf4e62232f86c55b909fed951db1a038a', '', '', '', '', 11078, 'Jhelum Express', '0000-00-00', 'New Delhi-Pune', '11:30 PM', '4:00 PM', 380, 380, ''),
(32, 'Om', 'Kabra', 2147483647, 'Parbhani', 'om@mail.com', '831aec8ac998f597a9a6dfa6dd021177029a6cf1', '', 'Om', '', '', 17057, 'Devgiri Express', '0000-00-00', 'Jalna-Parbhani', '5:15 PM', '7:33 PM', 200, 200, ''),
(33, 'Rita', 'Khan', 2147483647, 'Delhi', 'rita@mail.com', 'ee7dd90853a2d327d9c4cebb86d596cbfa529a88', '', 'Rita', '', '', 12465, 'Ranthambhore SF Express', '0000-00-00', 'Indore-Kota', '6:00 AM', '12:25 PM', 260, 260, ''),
(34, 'Jay', 'Misal', 2147483647, 'Nanded', 'jay@mail.com', '66471976d0200b98a80f29e5b57e1988b7b7cfb4', '', 'Jay', '', '', 12716, 'Sachkhand Express', '0000-00-00', 'New Delhi-Jalna', '1:00 AM', '10:35 PM', 375, 375, '');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_passwordresets`
--

CREATE TABLE `orrs_passwordresets` (
  `pwd_id` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_passwordresets`
--

INSERT INTO `orrs_passwordresets` (`pwd_id`, `email`, `status`) VALUES
(1, 'employee@mail.com', 'Approved'),
(2, 'test21@mail.com', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `orrs_train`
--

CREATE TABLE `orrs_train` (
  `id` int(20) NOT NULL,
  `train_name` varchar(200) NOT NULL,
  `route` varchar(200) NOT NULL,
  `journey_date` date NOT NULL,
  `deptime` varchar(10) NOT NULL,
  `arrtime` varchar(10) NOT NULL,
  `passengers` bigint(20) NOT NULL,
  `train_no` int(10) NOT NULL,
  `fare` int(10) NOT NULL,
  `seat_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_train`
--

INSERT INTO `orrs_train` (`id`, `train_name`, `route`, `journey_date`, `deptime`, `arrtime`, `passengers`, `train_no`, `fare`, `seat_no`) VALUES
(6, 'Nandigram Express', 'Jalna-Nanded', '2023-02-21', '12:50 AM', '05:00 AM', 195, 11401, 145, 0),
(10, 'Jhelum Express', 'New Delhi-Pune', '2023-02-21', '11:30 PM', '4:00 PM', 200, 11078, 380, 0),
(11, 'Sachkhand Express', 'New Delhi-Jalna', '2023-02-23', '1:00 AM', '10:35 PM', 185, 12716, 375, 0),
(12, 'Ajanta Express', 'Aurangabad-Hazur Sahib Nanded', '2023-02-21', '10:45 AM', '3:00 PM', 255, 17064, 175, 0),
(14, 'Mumbai CSMT Rajya Rani Express', 'Jalna-Aurangabad', '2023-02-23', '1:35 PM', '2:50 PM', 200, 17611, 80, 0),
(15, 'Rameswaram-Okha Express', 'Tirupati-Jalgaon', '2023-02-22', '11:40 AM', '03:35 PM', 190, 16733, 350, 0),
(16, 'Ranthambhore SF Express', 'Indore-Kota', '2023-02-21', '6:00 AM', '12:25 PM', 210, 12465, 260, 0),
(17, 'Huzar Sahib Nanded', 'Pune-Aurangabad', '2023-02-21', '9:35 PM', '5:05 AM', 195, 17629, 265, 0),
(18, 'Daund -Nizamabad Express', 'Aurangabad-Hazur Sahib Nanded', '2023-02-21', '12:50 PM', '5:55 PM', 460, 11409, 175, 0),
(19, 'Tapovan Express', 'Mumbai(CSMT)-Aurangabad', '2023-02-21', '5:30 PM', '1:05 AM', 450, 17617, 235, 0),
(20, 'Jalna Jan Shatabdi Express', 'Mumbai(CSMT)-Aurangabad', '2023-02-21', '12:10 PM', '6:25 PM', 520, 12071, 250, 0),
(21, 'Devgiri Express', 'Jalna-Parbhani', '2023-02-21', '5:15 PM', '7:33 PM', 680, 17057, 200, 0),
(22, 'Mumbai CSMT Jan Shatabdi Express', 'Jalna-Nashik', '2023-02-21', '8:30 AM', '12:17 PM', 750, 12072, 130, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orrs_train_tickets`
--

CREATE TABLE `orrs_train_tickets` (
  `ticket_id` int(20) NOT NULL,
  `pass_name` varchar(200) NOT NULL,
  `pass_email` varchar(200) NOT NULL,
  `pass_addr` varchar(200) NOT NULL,
  `journey_date` date NOT NULL,
  `train_name` varchar(200) NOT NULL,
  `train_no` int(10) NOT NULL,
  `deptime` varchar(10) NOT NULL,
  `arrtime` varchar(10) NOT NULL,
  `fare` int(10) NOT NULL,
  `fare_payment_code` int(10) NOT NULL,
  `confirmation` varchar(200) NOT NULL,
  `seat_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orrs_train_tickets`
--

INSERT INTO `orrs_train_tickets` (`ticket_id`, `pass_name`, `pass_email`, `pass_addr`, `journey_date`, `train_name`, `train_no`, `deptime`, `arrtime`, `fare`, `fare_payment_code`, `confirmation`, `seat_no`) VALUES
(10, 'Geeta Rathi', 'geeta@mail.com', '', '0000-00-00', 'Jhelum Express', 11078, '11:30 PM', '4:00 PM', 380, 380, 'Approved', 0),
(11, 'Om Kabra', 'om@mail.com', '', '0000-00-00', 'Devgiri Express', 17057, '5:15 PM', '7:33 PM', 200, 200, '', 0),
(12, 'Rita Khan', 'rita@mail.com', '', '0000-00-00', 'Ranthambhore SF Express', 12465, '6:00 AM', '12:25 PM', 260, 260, 'Approved', 0),
(13, 'Jay Misal', 'jay@mail.com', '', '0000-00-00', 'Sachkhand Express', 12716, '1:00 AM', '10:35 PM', 375, 375, 'Approved', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orrs_admin`
--
ALTER TABLE `orrs_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `orrs_employee`
--
ALTER TABLE `orrs_employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `orrs_passenger`
--
ALTER TABLE `orrs_passenger`
  ADD PRIMARY KEY (`pass_id`);

--
-- Indexes for table `orrs_passwordresets`
--
ALTER TABLE `orrs_passwordresets`
  ADD PRIMARY KEY (`pwd_id`);

--
-- Indexes for table `orrs_train`
--
ALTER TABLE `orrs_train`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orrs_train_tickets`
--
ALTER TABLE `orrs_train_tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orrs_admin`
--
ALTER TABLE `orrs_admin`
  MODIFY `admin_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orrs_employee`
--
ALTER TABLE `orrs_employee`
  MODIFY `emp_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orrs_passenger`
--
ALTER TABLE `orrs_passenger`
  MODIFY `pass_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orrs_passwordresets`
--
ALTER TABLE `orrs_passwordresets`
  MODIFY `pwd_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orrs_train`
--
ALTER TABLE `orrs_train`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orrs_train_tickets`
--
ALTER TABLE `orrs_train_tickets`
  MODIFY `ticket_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
