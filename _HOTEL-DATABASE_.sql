-- phpMyAdmin SQL Dump
-- version 4.7.8
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 02, 2019 at 11:11 AM
-- Server version: 5.7.26-0ubuntu0.16.04.1-log
-- PHP Version: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2201713130118`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id` int(30) NOT NULL,
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` int(100) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id`, `username`, `password`, `level`) VALUES
(1, 'Edison', 123456, 3),
(4, 'Allen', 123456, 1),
(5, 'Peter', 123456, 2);

-- --------------------------------------------------------

--
-- Table structure for table `check_room`
--

CREATE TABLE `check_room` (
  `cr_id` int(20) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `s_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(20) NOT NULL,
  `dept_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`, `manager_name`) VALUES
(1, 'Engineering', ' Malcom'),
(2, 'Concierge ', 'Steven Zhang'),
(3, 'Housekeeping', 'Elizabeth Chen'),
(4, 'Bistro', ' Alejandro Guillermo'),
(5, 'In House Kitchen Manager', ' Alejandro Guillermo'),
(6, 'Tao\'s Hotpot', ' Chen Baizhang'),
(7, 'Golf course', ' Donald Allen'),
(8, 'Landscaping', ' Donald Allen'),
(9, 'Spa', ' Ella Castilla'),
(10, 'Gym', ' Ella Castilla'),
(11, 'Aquatic(pools)', 'Shia Black');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `g_id` int(30) NOT NULL,
  `guest_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`g_id`, `guest_name`, `telephone`, `username`, `password`) VALUES
(1, 'Leo', '17396222859', 'lileo', '687098'),
(2, 'Larry', '18147689347', 'Larry', '154648'),
(3, 'Avaraol', '13785599804', 'Avaraol', '687098'),
(4, 'Edison', '17396222759', 'Edison', 'dasdsad'),
(5, 'Candy', '18147687027', 'Candy', '456789'),
(6, 'Haliry', '13780069804', 'Haliry', 'dadsa'),
(7, 'Danue', '18989133556', 'Danue', '456789'),
(8, 'James', '1688689435', 'James', '753245'),
(9, 'Dave', '18143276347', 'Dave', '2752527'),
(10, 'Alex', '1564893558', 'Alex', '156165');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(20) NOT NULL,
  `date` date NOT NULL,
  `g_id` int(20) NOT NULL,
  `s_id` int(30) NOT NULL,
  `room_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `date`, `g_id`, `s_id`, `room_type`) VALUES
(1, '2019-05-01', 1, 11, ' Single bed room'),
(2, '2019-05-05', 3, 11, ' Single bed room'),
(3, '2019-05-08', 8, 12, ' Deluxe Room'),
(4, '2019-05-10', 4, 13, ' Deluxe Room'),
(5, '2019-05-18', 10, 11, ' Deluxe Room'),
(6, '2019-05-20', 6, 12, ' Single bed room'),
(7, '2019-05-22', 8, 11, ' Single bed room'),
(8, '2019-05-24', 3, 13, ' Deluxe Room'),
(9, '2019-05-26', 7, 12, ' Single bed room'),
(10, '2019-05-28', 9, 12, ' Single bed room'),
(11, '2019-05-29', 4, 11, ' Deluxe Room'),
(12, '2019-05-31', 1, 13, ' Deluxe Room');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(30) NOT NULL,
  `room_type` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type`) VALUES
(1, 'Deluxe room'),
(2, 'Single bed room');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `s_id` int(30) NOT NULL,
  `staff_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_id` int(10) NOT NULL,
  `dept_id` int(10) NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`s_id`, `staff_name`, `position`, `time_id`, `dept_id`, `username`, `password`) VALUES
(2, 'Malcom', 'Engineering Manager', 10, 1, 'Malcom', '123456'),
(3, 'Shamus', 'Engineer lead', 20, 1, 'Shamus', '123456'),
(4, 'Li Bai', 'Engineering assistant', 12, 1, 'LiBai', '123456'),
(5, 'Steven Zhang', 'Concierge Manager', 10, 2, 'StevenZhang', '123456'),
(6, 'Lisa Smith', 'Concierge service', 5, 2, 'LisaSmith', '123456'),
(7, 'Allan Shepard', 'Concierge service', 10, 2, 'AllanShepard', '123456'),
(8, 'Ian Takishi', 'Concierge Bellhop', 7, 2, 'IanTakishi', '123456'),
(9, 'Shane Johnson', 'Concierge Bellhop', 8, 2, 'ShaneJohnson', '123456'),
(10, 'Elizabeth Chen', 'Housekeeping Manager', 9, 3, 'ElizabethChen', '123456'),
(11, 'Mary Banderas', 'Housekeeping Service', 11, 3, 'MaryBanderas', '123456'),
(12, 'Tron Micheals', 'Housekeeping Service', 12, 3, 'TronMicheals', '123456'),
(13, 'Carry Wood', 'Housekeeping Service', 13, 3, 'CarryWood', '123456'),
(14, 'Alejandro Guillermo', 'Bistro Manager', 14, 4, 'Alejandro', '123456'),
(15, 'Alejandro Guillermo', ' In House Kitchen Manager', 14, 5, 'Alejandro', '123456'),
(16, 'Antonio Carmicheal', 'Bistro chef', 15, 4, 'Antonio', '123456'),
(17, 'Mia Nguyen', 'Bistro waiter', 16, 4, 'MiaNguyen', '123456'),
(18, 'Ray Liotta', 'Bistro Dish washer', 17, 4, 'RayLiotta', '123456'),
(19, 'Chen Baizhang', 'Tao’s Hotpot Manager', 1, 6, 'Baizhang', '123456'),
(20, 'Michelle Huang', 'Tao’s Hotpot waitress', 2, 6, 'MichelleHuang', '123456'),
(21, 'Jason Lee', 'Tao’s Hotpot Food prep', 2, 6, 'JasonLee', '123456'),
(22, 'James Traun', 'Tao’s Hotpot chef', 4, 6, 'JamesTraun', '123456'),
(23, 'James Traun', ' In House Kitchen chef', 21, 5, 'JamesTraun', '123456'),
(24, 'Donald Allen', 'Golf Course Manager', 22, 7, 'DonaldAllen', '123456'),
(25, 'Donald Allen', ' landscaping Manager', 22, 8, 'DonaldAllen', '123456'),
(26, 'Ella Castilla', 'Spa Manager', 23, 9, 'EllaCastilla', '123456'),
(27, 'Chu Fei', ' landscaping Landscaper', 24, 8, 'ChuFei', '123456'),
(30, 'Ella Castilla', ' Gym Manager', 23, 10, 'EllaCastilla', '123456'),
(31, 'Michelle Rodriguez', 'Spa Service', 25, 9, 'Rodriguez', '123456'),
(32, 'Rayne Ortega', 'Spa Massage therapy', 26, 9, 'RayneOrtega', '123456'),
(33, 'Hanna Hang', 'Spa Massage therapy', 27, 9, 'HannaHang', '123456'),
(34, 'Kiki Watson', 'Gym Service', 28, 10, 'KikiWatson', '123456'),
(35, 'Josh Hutchinson', ' Gym Trainer', 29, 10, 'JoshHutchinson', '123456'),
(36, 'Ashlee Huang', 'Gym Trainer', 30, 10, 'AshleeHuang', '123456'),
(37, 'Shia Black', 'Aquatic Manager', 1, 11, 'ShiaBlack', '123456'),
(38, 'Matthew Kane', 'Aquatic Service', 4, 11, 'MatthewKane', '123456'),
(39, 'Micah Thompson', 'Aquatic Safety-lifeguard', 2, 11, 'MicahThompson', '123456'),
(40, 'Sarah Long', 'Aquatic Safety-lifeguard', 2, 11, 'SarahLong', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `time_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `attendance_time` time NOT NULL,
  `closing_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`time_id`, `date`, `attendance_time`, `closing_time`) VALUES
(1, '2019-05-02', '09:00:00', '18:00:00'),
(2, '2019-05-02', '09:00:00', '18:00:00'),
(3, '2019-05-09', '09:00:00', '18:00:00'),
(4, '2019-05-09', '09:00:00', '18:00:00'),
(5, '2019-05-01', '09:00:00', '23:00:00'),
(6, '2019-05-02', '09:00:00', '18:00:00'),
(7, '2019-05-03', '09:00:00', '17:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_room`
--
ALTER TABLE `check_room`
  ADD PRIMARY KEY (`cr_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`time_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `check_room`
--
ALTER TABLE `check_room`
  MODIFY `cr_id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `g_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `s_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `time_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
