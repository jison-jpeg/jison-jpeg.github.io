-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 04:41 PM
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
-- Database: `ivanbuang`
--

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE `college` (
  `college_id` int(10) NOT NULL,
  `college_name` varchar(255) NOT NULL,
  `college_department` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(10) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `year_level` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `enroll_id` int(10) NOT NULL,
  `users_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `semester` char(6) NOT NULL,
  `year_level` char(6) NOT NULL,
  `academic_year` varchar(9) NOT NULL,
  `enroll_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_id` int(10) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `midterm_id` float(3,2) NOT NULL,
  `final_term_grade` float(3,2) NOT NULL,
  `final_grade` float(3,2) NOT NULL,
  `remarks` char(6) NOT NULL,
  `gwa` float(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(10) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `subject_type` varchar(255) NOT NULL,
  `grade_id` int(10) NOT NULL,
  `midterm_id` float(3,2) NOT NULL,
  `final_term_grade` float(3,2) NOT NULL,
  `final_grade` float(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(10) NOT NULL,
  `password` int(10) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `sex` char(1) NOT NULL,
  `birthdate` date NOT NULL,
  `contact_num` int(11) NOT NULL,
  `parent_num` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `barangay` varchar(255) NOT NULL,
  `municipality` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `institutional_email` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `department_id` int(10) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `course_id` int(10) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `semester` char(6) NOT NULL,
  `year_level` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `password`, `first_name`, `middle_name`, `last_name`, `suffix`, `sex`, `birthdate`, `contact_num`, `parent_num`, `street`, `barangay`, `municipality`, `province`, `institutional_email`, `marital_status`, `department_id`, `department_name`, `course_id`, `course_name`, `semester`, `year_level`) VALUES
(10002, 123456, 'jeffrey', 'mati_ong', 'sedoro', 'gwapogi', 'M', '0000-00-00', 2147483647, 2147483647, 'Purok 3B Sinayawan', 'sinayawan', 'valencia city', 'Bukidnon', '2101105691@student.buksu.edu.ph', 'Single', 231123, 'sadfagaag', 123123123, '1231231', '213123', '1213'),
(131231, 3123123, '131231231', '312312', '3123123', '12312312', 'M', '0000-00-00', 3, 2123123, '1', '23', '13', '13', '131@email.com', 'Select Status', 123, '13', 2147483647, '13', '13', '13123'),
(231312, 2147483647, 'hfgfghfgfgg', 'dfgdfgdfgdfg', 'dgdgfdfgdfdg', 'dgdfgdfgdfgdgf', 'M', '0000-00-00', 2147483647, 2147483647, 'nvghhgggdghgfhfhfFFF', 'UFUFUYFF', 'FFHFGHGH', 'GHC', 'GHCGHC@GMAIL.COM', 'Single', 2147483647, 'GHCGCCHG', 2147483647, 'GUGUYGYUGUY', '213123', '127312'),
(21213123, 12312312, '312312312', '3123123', '1231231', '23123123', 'F', '0000-00-00', 12312312, 3123123, '123123', '123123', '123123', '123123', '12312312@email.com', 'Married', 3123123, '1231', 213123, '1231231', '231231', '312312'),
(217888901, 12312312, 'dasdajhsdas', 'sdasdgasdhads', 'sadasaf', 'asadd', 'M', '0000-00-00', 121231231, 3123123, '123sdasdawd', 'dadasdaf', 'awawawfa', 'awfawfa', 'jeffreysedoro5@gmail.com', 'Married', 12312312, '231adasdasdas', 12312312, '21312312', '2321', '312312'),
(2147483647, 21312313, 'dsadasdsaff', 'sfasffsfsa', 'ffsafasf', 'asfff', 'M', '0000-00-00', 313123123, 2147483647, 'dasdadasdsa', 'dasdasdadasd', 'adadadas', 'dasdsadasd', 'adsada@gmail.com', 'Married', 2312312, 'sadsadasda', 23213123, 'dadasdasdad', '231231', '313123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `college`
--
ALTER TABLE `college`
  ADD PRIMARY KEY (`college_id`),
  ADD UNIQUE KEY `college_id` (`college_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `course_id` (`course_id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`enroll_id`),
  ADD UNIQUE KEY `enroll_id` (`enroll_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`),
  ADD UNIQUE KEY `grade_id` (`grade_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD UNIQUE KEY `subject_id` (`subject_id`),
  ADD KEY `grade_id` (`grade_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`),
  ADD UNIQUE KEY `users_id` (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `college`
--
ALTER TABLE `college`
  MODIFY `college_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `enroll_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enroll`
--
ALTER TABLE `enroll`
  ADD CONSTRAINT `enroll_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`users_id`),
  ADD CONSTRAINT `enroll_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `enroll_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);

--
-- Constraints for table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`grade_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
