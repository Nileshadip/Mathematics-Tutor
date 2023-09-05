-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2023 at 01:22 PM
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
-- Database: `tutor_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `comments` varchar(256) NOT NULL,
  `attendance` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `user_id`, `date`, `time`, `comments`, `attendance`) VALUES
(19, 95, '0000-00-00', '00:00:00', 'tutor test edited 3 times', 'Present'),
(20, 45, '0000-00-00', '00:00:00', 'tesr34', ''),
(21, 49, '0000-00-00', '00:00:00', 'test44', 'Present'),
(22, 48, '0000-00-00', '00:00:00', 'test12', 'Present'),
(24, 104, '0000-00-00', '18:00:00', 'test update', 'Present'),
(25, 104, '0000-00-00', '00:00:00', 'check test record', 'Present'),
(26, 104, '0000-00-00', '00:00:00', 'Couldnt attend', 'Absent'),
(28, 115, '2023-08-28', '20:00:00', '', ''),
(29, 115, '2023-08-28', '20:00:00', '', ''),
(30, 115, '2023-08-28', '20:00:00', '', ''),
(31, 115, '2023-08-28', '20:00:00', '', ''),
(32, 115, '2023-08-28', '20:00:00', '', ''),
(33, 115, '2023-08-28', '20:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking_comments`
--

CREATE TABLE `booking_comments` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `comments` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `id` int(5) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(15) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `house_num` int(11) NOT NULL,
  `street_name` varchar(50) NOT NULL,
  `suburb` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postcode` int(11) NOT NULL,
  `is_tutor` varchar(30) NOT NULL DEFAULT 'Tutor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`id`, `f_name`, `l_name`, `email`, `phone`, `gender`, `house_num`, `street_name`, `suburb`, `city`, `postcode`, `is_tutor`) VALUES
(1, 'A', 'A1', '', 0, '', 21, 'sail', 'moon', 'welly', 2345, 'Tutor'),
(2, '', '', '', 0, '', 0, '', '', '', 0, 'Tutor'),
(3, 'jame', 'bond', 'jame.bond@gmail.com', 2123455, 'M', 12, 'Sail', 'Aotea', 'Welling', 5000, 'Tutor');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_student`
--

CREATE TABLE `tutor_student` (
  `id` int(11) NOT NULL,
  `tutor_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `f_name` varchar(250) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(250) NOT NULL,
  `year_level` varchar(12) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `house_num` int(6) NOT NULL,
  `street_name` varchar(50) NOT NULL,
  `suburb` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `postcode` int(6) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'Student',
  `profilepic` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `gender`, `email`, `year_level`, `phone`, `house_num`, `street_name`, `suburb`, `city`, `region`, `postcode`, `password`, `user_type`, `profilepic`) VALUES
(16, 'Raj', '', 'M', 'rajnew@rajnew.com', '10', '222223345', 0, '0', '0', '0', '', 0, 'password', 'Student', NULL),
(17, 'New Name', '', 'M', 'newemail@email.com', '11', '022123123', 0, '0', '0', '0', '', 0, 'pass', 'Student', NULL),
(18, 'New Name', '', 'M', 'newemail@email.com', '11', '022123123', 0, '0', '0', '0', '', 0, 'pass', 'Student', NULL),
(21, 'Nilesh (Name)', '', 'm', 'a@a.com', '10', '0123456', 0, '0', '0', '0', '', 0, '1234', 'Admin', NULL),
(48, 'nil', '', 'Male', 'aq@aq.com', 'Year 11', '243423', 0, '0', '0', '0', '', 0, '12', 'Student', NULL),
(49, 'as', '', 'Female', 'as1@as.com', 'Year 11', '2524242', 0, '0', '0', '0', '', 0, '12', 'Student', NULL),
(50, 'ken', 'tom', 'Female', 'aqw@aqw.com', 'Year 10', '24242242', 0, '0', '0', '0', '', 0, '12', 'Tutor', NULL),
(51, 'aqa', '', 'Male', 'aqa@aqa.com', 'Year 9', '13412312', 0, '0', '0', '0', '', 0, '', 'Student', NULL),
(52, 'aqa', '', 'Male', 'aqa@aqa.com', 'Year 9', '13412312', 0, '0', '0', '0', '', 0, '', 'Student', NULL),
(53, 'qweqwe', '', 'Male', 'qw@qw.com', 'Year 9', '1241242', 0, '0', '0', '0', '', 0, '', 'Student', NULL),
(54, 'qweqwe', '', 'Male', 'qw@qw.com', 'Year 9', '1241242', 0, '0', '0', '0', '', 0, '', 'Student', NULL),
(55, 'qweqwe', '', 'Male', 'qw@qw.com', 'Year 9', '1241242', 0, '0', '0', '0', '', 0, '', 'Student', NULL),
(56, 'qweqwe', '', 'Male', 'qw@qw.com', 'Year 9', '1241242', 0, '0', '0', '0', '', 0, '', 'Student', NULL),
(60, 'req', '', 'Male', 'req@req.com', 'Year 10', '423423423', 0, '0', '0', '0', '', 0, '24124214', 'Student', NULL),
(61, 'req', '', 'Male', 'req@req.com', 'Year 10', '423423423', 0, '0', '0', '0', '', 0, '24124214', 'Student', NULL),
(62, 'qwe', '', 'Male', 'qwe@qwe.com', 'Year 10', '234523423', 0, '0', '0', '0', '', 0, '1234', 'Student', NULL),
(63, '232', '', 'Male', '23@12.com', 'Year 9', '2323232', 0, '0', '0', '0', '', 0, '1234', 'Student', NULL),
(64, '232', '', 'Male', '23@12.com', 'Year 9', '2323232', 0, '0', '0', '0', '', 0, '1234', 'Student', NULL),
(65, '232', '', 'Male', '23@12.com', 'Year 9', '2323232', 0, '0', '0', '0', '', 0, '1234', 'Student', NULL),
(66, '232', '', 'Male', '23@12.com', 'Year 9', '2323232', 0, '0', '0', '0', '', 0, '1234', 'Student', NULL),
(67, '232', '', 'Male', '23@12.com', 'Year 9', '2323232', 0, '0', '0', '0', '', 0, '1234', 'Student', NULL),
(68, 'qw', '', 'Female', 'qw@qw.com', 'Year 10', '23232', 0, '0', '0', '0', '', 0, '1234', 'Student', NULL),
(69, 'qw', '', 'Female', 'qw@qw.com', 'Year 10', '23232', 0, '0', '0', '0', '', 0, '1234', 'Student', NULL),
(70, 'sd', '', 'Male', 'sd@as.com', 'Year 10', '23232322', 0, '0', '0', '0', '', 0, '1234', 'Student', NULL),
(71, '123213', '', 'Male', 'qw@qw.com', 'Year 10', '34234324', 0, '0', '0', '0', '', 0, '123', 'Student', NULL),
(72, '123213', '', 'Male', 'qw@qw.com', 'Year 10', '34234324', 0, '0', '0', '0', '', 0, '123', 'Student', NULL),
(73, 'qw', '', 'Male', 'qw@qw', 'Year 10', '523432', 0, '0', '0', '0', '', 0, '12', 'Student', NULL),
(74, 'we', '', 'Female', 'we@we', 'Year 9', '424242', 0, '0', '0', '0', '', 0, '12', 'Student', NULL),
(75, 'we', '', 'Female', 'we@we', 'Year 9', '424242', 0, '0', '0', '0', '', 0, '12', 'Student', NULL),
(76, 'qw', '', 'Male', 'qw@qw', 'Year 10', '342343', 0, '0', '0', '0', '', 0, '12', 'Student', NULL),
(77, 'qw', '', 'Male', 'qw@qw', 'Year 10', '342343', 0, '0', '0', '0', '', 0, '12', 'Student', NULL),
(78, 'we', '', 'Male', 'we@a', 'Year 10', '232323', 0, '0', '0', '0', '', 0, '12', 'Student', NULL),
(79, 'sdfsd', '', 'Male', 'sds@co', 'Year 10', '52345324', 0, '0', '0', '0', '', 0, '23', 'Student', NULL),
(80, 'sdfsd', '', 'Male', 'sds@co', 'Year 10', '52345324', 0, '0', '0', '0', '', 0, '23', 'Student', NULL),
(81, 'sdfsd', '', 'Male', 'sds@co', 'Year 10', '52345324', 0, '0', '0', '0', '', 0, '23', 'Student', NULL),
(82, 'sdfsd', '', 'Male', 'sds@co', 'Year 10', '52345324', 0, '0', '0', '0', '', 0, '23', 'Student', NULL),
(83, 'sdfsd', '', 'Male', 'sds@co', 'Year 10', '52345324', 0, '0', '0', '0', '', 0, '23', 'Student', NULL),
(84, 'sdfsd', '', 'Male', 'sds@co', 'Year 10', '52345324', 0, '0', '0', '0', '', 0, '23', 'Student', NULL),
(85, 'sdfsd', '', 'Male', 'sds@co', 'Year 10', '52345324', 0, '0', '0', '0', '', 0, '23', 'Student', NULL),
(86, 'qw', '', 'Male', 'qw@co', 'Year 9', '234234234', 0, '0', '0', '0', '', 0, '23', 'Student', NULL),
(87, 'ds', '', 'Male', 'dsd@co', 'Year 9', '534324234', 0, '0', '0', '0', '', 0, '23', 'Student', NULL),
(95, 'qw', '', 'Male', 'qw@qw.co', 'Year 10', '34324234', 0, '0', '0', '0', '', 0, '12', 'Student', NULL),
(96, 'Raj', '', 'Male', 'raj@raj.com', '', '0223121212', 0, '0', '0', '0', '', 0, '1234', 'Tutor', '10.jpg'),
(97, 'rest', 'wesr', 'Male', 'email@email.com', '', '02202202222', 53, 'anchor', 'ak', 'noth', 'alk', 3414, '12', 'Tutor', NULL),
(98, 'ken', '', 'Male', 'ken@ken.com', '', '02341455', 0, '', '', '', '', 0, '1234', 'Tutor', NULL),
(99, 'jan', 'run', 'Male', 'jan@run.com', 'Year 11', '234523423', 12, 'SAIL', 'TAWA', 'WELLINGTON', 'WELLINGTON', 5002, '12', 'Student', NULL),
(100, 'run', 'to', 'Male', 'run@to.com', 'Year 11', '3243243242', 12, 'Sail', 'Tawa', 'We', 'we', 5002, '12', 'Student', NULL),
(101, 'nil', 'adi', 'm', 'nil@adi.com', '', '2344556', 12, 'Sail', 'Tawa', 'We', 'We', 34, '12', 'Admin', NULL),
(102, 'niq', 'adi', 'm', 'aa@a.com', '-', '23454656', 12, 'Sailor', 'ta', 'we', 'we', 23, '12', 'Tutor', NULL),
(103, 'nil', 'adi', 'm', 'a@a.com', '-', '23454656', 12, 'Sail', 'ta', 'we', 'we', 23, '12', 'Admin', NULL),
(104, 'we', 'are', 'Male', 'we@a.com', 'Year 10', '23232', 12, 'sail', 'ta', 'we', 'we', 23, '12', 'Student', NULL),
(105, 'we', 'ew', 'Female', 'we@ew.com', '', '34234234', 0, '', '', '', '', 0, '12', 'Tutor', NULL),
(106, 'we1', 'ew', 'Male', 'ew@we.com', '', '535423452', 0, '', '', '', '', 0, '12', 'Tutor', NULL),
(107, 'qwesstttion', 'ewq', '', 'qw@qw.com', '', '32342342', 23, 'ert', 're', 'we', 'we', 23, '1234', 'Tutor', NULL),
(108, 'we', 'are', 'Male', 'we@a.com', 'Year 10', '23232', 12, 'sail', 'ta', 'we', 'we', 23, '12', 'Student', NULL),
(110, 'joe', 'jan', '', 'qw@qw.com', '', '32342342', 23, 'ert', 're', 'we', 'we', 23, '', 'Tutor', '9.png'),
(111, 'kin', 'dena', 'Male', 'ad@re.com', '', '4235553', 102, 'red', 'wea', 'we', 'we', 4503, '12', 'Tutor', NULL),
(112, 'pat', 'jac', 'Male', 'pat@ja.com', '', '35254234', 23, 'raid', 'tawa', 'we', 'we', 4502, '112', 'Tutor', NULL),
(113, 'match', 'res', 'Male', 'we@ew.com', '', '424243', 12, 'werw', 'ewew', 'wew', 'er', 3456, '12', 'Tutor', NULL),
(114, '', '', '', '', '', '', 0, '', '', '', '', 0, 'da39a3ee5e6b4b0d3255bfef95601890afd80709', 'Student', NULL),
(115, 'qw', 'we', 'Male', 'qw@co', 'Year 10', '2342342', 23, 'rer', 'we', 'we', 'we', 3456, '12', 'Student', NULL),
(116, 'qw', 'qw', 'Male', 'qw@com', 'Year 9', '2354234', 12, 'swer', 'qwe', 'wew', 'ew', 2345, '12', 'Student', NULL),
(117, 'qeqw', 'qeqe', 'Male', 'qweqe@co', '', '34234235', 43, 'awrfad', 'ASDA', 'WEW', 'sds', 54343, '12', 'Tutor', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_comments`
--
ALTER TABLE `booking_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_student`
--
ALTER TABLE `tutor_student`
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
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `booking_comments`
--
ALTER TABLE `booking_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tutor`
--
ALTER TABLE `tutor`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tutor_student`
--
ALTER TABLE `tutor_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
