-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 04:32 PM
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
-- Database: `informationmanage`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(10) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `year_level` char(6) NOT NULL,
  `course_units` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(10) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `department_head` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `enroll_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL,
  `course_id` int(10) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `instructor_id` int(10) NOT NULL,
  `semester` char(6) NOT NULL,
  `year_level` char(6) NOT NULL,
  `academic_year` varchar(9) NOT NULL,
  `enroll_date` date NOT NULL,
  `enrollment_status` varchar(255) NOT NULL
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
  `subject_units` int(2) NOT NULL,
  `midterm_grade` float(3,2) NOT NULL,
  `final_term_grade` float(3,2) NOT NULL,
  `final_grade` float(3,2) NOT NULL,
  `remarks` char(6) NOT NULL,
  `gwa` float(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `instructor_id` int(10) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `sex` char(1) NOT NULL,
  `birthdate` date NOT NULL,
  `contact_num` int(11) NOT NULL,
  `institutional_email` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `department_id` int(10) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `teaching_load` int(2) NOT NULL,
  `subject_id` int(10) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `subject_units` int(2) NOT NULL,
  `perm_house_num` int(20) DEFAULT NULL,
  `perm_street` varchar(255) DEFAULT NULL,
  `perm_barangay` varchar(255) NOT NULL,
  `perm_city` varchar(255) NOT NULL,
  `perm_province` varchar(255) NOT NULL,
  `perm_zipcode` int(4) NOT NULL,
  `curr_house_num` int(20) DEFAULT NULL,
  `curr_street` varchar(255) DEFAULT NULL,
  `curr_barangay` varchar(255) NOT NULL,
  `curr_city` varchar(255) NOT NULL,
  `curr_province` varchar(255) NOT NULL,
  `curr_zipcode` int(4) NOT NULL,
  `user_id` int(10) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_in`
--

CREATE TABLE `log_in` (
  `user_id` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `log_in_type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `user_id` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `institutional_email` varchar(255) NOT NULL,
  `registration_type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `sex` char(1) NOT NULL,
  `birthdate` date NOT NULL,
  `contact_num` int(11) NOT NULL,
  `institutional_email_address` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `department_id` int(10) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `course_id` int(10) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `semester` char(6) NOT NULL,
  `year_level` char(6) NOT NULL,
  `academic_year` varchar(9) NOT NULL,
  `perm_house_num` int(255) DEFAULT NULL,
  `perm_street` varchar(255) DEFAULT NULL,
  `perm_barangay` varchar(255) NOT NULL,
  `perm_city` varchar(255) NOT NULL,
  `perm_province` varchar(255) NOT NULL,
  `perm_zipcode` int(4) NOT NULL,
  `curr_house_num` int(255) DEFAULT NULL,
  `curr_street` varchar(255) DEFAULT NULL,
  `curr_barangay` varchar(255) NOT NULL,
  `curr_city` varchar(255) NOT NULL,
  `curr_province` varchar(255) NOT NULL,
  `curr_zipcode` int(4) NOT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_con_num` int(11) DEFAULT NULL,
  `user_data` int(10) NOT NULL,
  `password` varchar(255) NOT NULL
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
  `subject_units` int(2) NOT NULL,
  `grade_id` int(10) NOT NULL,
  `midterm_grade` float(3,2) NOT NULL,
  `final_term_grade` float(3,2) NOT NULL,
  `final_grade` float(3,2) NOT NULL,
  `schedule_day` varchar(255) NOT NULL,
  `schedule_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `course_id` (`course_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`),
  ADD UNIQUE KEY `department_id` (`department_id`);

--
-- Indexes for table `enroll`
--
ALTER TABLE `enroll`
  ADD PRIMARY KEY (`enroll_id`),
  ADD UNIQUE KEY `enroll_id` (`enroll_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`),
  ADD UNIQUE KEY `grade_id` (`grade_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`instructor_id`),
  ADD UNIQUE KEY `instructor_id` (`instructor_id`),
  ADD UNIQUE KEY `institutional_email` (`institutional_email`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `log_in`
--
ALTER TABLE `log_in`
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `institutional_email` (`institutional_email`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `student_id` (`student_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `course_num` (`course_id`),
  ADD KEY `user_data` (`user_data`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`),
  ADD UNIQUE KEY `subject_id` (`subject_id`),
  ADD KEY `grade_id` (`grade_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enroll`
--
ALTER TABLE `enroll`
  MODIFY `enroll_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enroll`
--
ALTER TABLE `enroll`
  ADD CONSTRAINT `enroll_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  ADD CONSTRAINT `enroll_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `enroll_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`),
  ADD CONSTRAINT `enroll_ibfk_4` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`);

--
-- Constraints for table `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`);

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `instructor_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`),
  ADD CONSTRAINT `instructor_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `register` (`user_id`);

--
-- Constraints for table `log_in`
--
ALTER TABLE `log_in`
  ADD CONSTRAINT `log_in_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `register` (`user_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`user_data`) REFERENCES `register` (`user_id`),
  ADD CONSTRAINT `student_ibfk_4` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`grade_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
