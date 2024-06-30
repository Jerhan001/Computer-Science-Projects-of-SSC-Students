-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 01:42 PM
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
-- Database: `school1`
--

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(10) UNSIGNED NOT NULL,
  `section_letter` varchar(20) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `year_id` int(11) DEFAULT NULL,
  `semester_id` int(11) NOT NULL,
  `school_year_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section_letter`, `course_id`, `year_id`, `semester_id`, `school_year_id`) VALUES
(1, 'BSIT 1- A', 1, 1, 1, 1),
(2, 'BSIT 1- B', 1, 1, 1, 1),
(4, 'BSIT 1- C', 1, 1, 1, 1),
(5, 'BSIT 1- D', 1, 1, 1, 1),
(8, 'BSIT - A', 1, 3, 2, 1),
(9, 'BSIT - B', 1, 3, 2, 1),
(10, 'BSIT - C', 1, 3, 2, 1),
(11, 'BSIT - D', 1, 3, 2, 1),
(12, 'BSIT - A', 1, 2, 2, 1),
(13, 'BSIT - B', 1, 2, 2, 1),
(14, 'BSIT - C', 1, 2, 2, 1),
(15, 'BSIT - D', 1, 2, 2, 1),
(16, 'BSIT - A Extention', 1, 1, 1, 1),
(17, 'BSIT -2 PARANG ', 1, 2, 2, 1),
(18, '', 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
