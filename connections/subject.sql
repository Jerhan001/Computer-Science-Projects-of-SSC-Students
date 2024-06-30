-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 10:46 AM
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
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `course_code` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `course_code`, `description`, `unit_id`, `year_id`, `semester_id`, `course_id`) VALUES
(1, 'Chem 111', 'Chemistry for Engineers', 4, 1, 1, 3),
(2, 'Math Prep', 'Pre-Calculus (Algebra & Trigo)', 3, 1, 1, 3),
(3, 'GE 100', 'Purposive  Communication', 2, 1, 1, 3),
(4, 'GE 101', 'Understanding Self', 3, 1, 1, 3),
(5, 'PE 101', 'Physical Fitness', 2, 1, 1, 3),
(6, 'NSTP 101', 'Civic Work & Training Service', 3, 1, 1, 3),
(7, 'Arab 101', 'Reading and Writing Arabic 1', 3, 1, 1, 3),
(8, 'Cal 211', 'Differential Calculus', 3, 2, 1, 3),
(9, 'CpE 211', 'Fundamentals of Electrical Circuits', 3, 2, 1, 3),
(12, 'CS Math 101', 'Discrete Mathematics', 3, 2, 1, 3),
(13, 'GE Elect 2', 'Living in the IT Era', 3, 2, 1, 3),
(14, 'GE 105', 'The Contemporay World', 3, 2, 1, 3),
(15, 'PE 203', 'Individual/Dual Sports', 2, 2, 1, 3),
(16, 'CpE 311-L1', 'Computer Engineering Drafting & Design', 3, 3, 1, 3),
(17, 'CpE 312-L1', 'Object Oriented Programming', 3, 3, 1, 3),
(18, 'CpE 313-L1', 'Data Structure and Algorithms', 3, 3, 1, 3),
(22, 'Math 311', 'Numerical Methods', 3, 3, 1, 3),
(23, 'Math 312', 'Differential Equation', 3, 3, 1, 3),
(24, 'GE 107', 'Science and Technology & Society', 3, 3, 1, 3),
(25, 'CpE 411-L1', 'Software Design', 3, 4, 1, 3),
(26, 'CpE 412-L1', 'Microprocessors', 3, 4, 1, 3),
(27, 'CpE 413-L1', 'Emgerging Technologies in CpE', 3, 4, 1, 3),
(28, 'CpE 414-L1', 'CpE Practice and Design', 2, 4, 1, 3),
(29, 'CpE Elect 1', 'CpE Elective 1(Computer Troubleshooting & Upgradin', 3, 4, 1, 3),
(30, 'CpE Elec 2', 'CpE Elective 2 (Recommended Elective)', 3, 4, 1, 3),
(31, 'CS 111', 'INTRODUCTION TO COMPUTING', 3, 1, 1, 2),
(32, 'MATH PREP', 'PRE CALCULUS FOR NON STEM (ALGERA & TRIGO)', 3, 1, 1, 2),
(33, 'GE 100', 'PURPOSIVE COMMUNICATION', 3, 1, 1, 2),
(34, 'GE 101', 'UNDERSTANDING THE SELF', 3, 1, 1, 2),
(35, 'GE 102', 'MATHEMATICS IN THE MODERN WORLD', 3, 1, 1, 2),
(36, 'PE 101', 'PHYSICAL FITNESS', 2, 1, 1, 2),
(37, 'NSTP 101', 'CIVIC WORK & TRAINING SERVICE/ROTC/LTS 1', 3, 1, 1, 2),
(38, 'ARAB 101', 'READING AND WRITING ARABIC 1', 3, 1, 1, 2),
(39, 'CS 211', 'LOGIC DESIGN & DIGITAL CIRCUITS', 3, 2, 1, 2),
(40, 'CS 212L', 'COMPUTER PROGRAMMING 1 (LEC & LAB)', 3, 2, 1, 2),
(41, 'CS DS 2', 'DISCRETE STRUCTURE II', 3, 2, 1, 2),
(42, 'MATH 203', 'DIFFERENTIAL CALCULUS', 3, 2, 1, 2),
(43, 'GE ELECT 2', 'LIVING IN THE IT ERA', 3, 2, 1, 2),
(44, 'GE 105', 'CONTEMPORARY WORLD', 3, 2, 1, 2),
(45, 'PE 203', 'Individual/Dual Sports', 3, 2, 1, 2),
(46, 'CS 311', 'Information Management', 3, 3, 1, 2),
(47, 'CS 312', 'Data Structure & Algorithim', 3, 3, 1, 2),
(48, 'CS 313', 'Software Engineering I', 3, 3, 1, 2),
(49, 'CS 314L', 'Object Oriented Programming', 3, 3, 1, 2),
(50, 'SocSci 101', 'General Psychology', 3, 3, 1, 2),
(51, 'GE 107', 'Science and Technology & Society', 3, 3, 1, 2),
(52, 'CS 411', 'CS Thesis Writing I', 3, 4, 1, 2),
(53, 'CS 412', 'Information Assurance & Security', 3, 4, 1, 2),
(54, 'CS 413', 'Automata Theory & Formal Language', 3, 4, 1, 2),
(55, 'CS 414', 'Network & Communications', 3, 4, 1, 2),
(56, 'CS Elect 411', 'Elective 1', 3, 4, 1, 2),
(57, 'CS Elect 412', 'Elective 2', 3, 4, 1, 2),
(58, 'Philcon 101', 'Philippine Constitutional and Government', 3, 4, 1, 2),
(62, 'GE 101', 'Understanding the Self', 3, 1, 1, 1),
(63, 'GE 102', 'Mathematics in the Modern World', 3, 1, 1, 1),
(64, 'PE 101', 'Physical Fitness', 3, 1, 1, 1),
(65, 'NSTP 101', 'Civic Work & Training Service/ROTC/LTS 1', 3, 1, 1, 1),
(66, 'ARAB 101', 'Reading and Writing Arabic 1', 3, 1, 1, 1),
(67, 'IT211', 'Logic Design & Digital Circuits', 3, 2, 1, 1),
(68, 'IT 212L', 'Fundamental of Problem Solving Programming (Lec & ', 3, 2, 1, 1),
(69, 'IT 213', 'Discrete Mathematics', 3, 2, 1, 1),
(70, 'GE Elect 2', 'Living in the IT Era', 3, 2, 1, 1),
(71, 'GE 105', 'The Contemporary World', 3, 2, 1, 1),
(72, 'Philcon', 'Philippine Government & Constitution', 3, 2, 1, 1),
(73, 'PE 203', 'Individual/Dual Sports', 3, 2, 1, 1),
(74, 'IT 311L', 'Intro to Human Comp. Interaction', 3, 3, 1, 1),
(75, 'IT 312', 'Data Structure & Algorithm', 3, 3, 1, 1),
(76, 'IT 313', 'Information Assurance & Security 1', 3, 3, 1, 1),
(77, 'IT 314', 'Fundamental of Data Base Systems', 3, 3, 1, 1),
(78, 'IT 315', 'Operating Systems', 3, 3, 1, 1),
(79, 'SocSci 101', 'General Psychology', 3, 3, 1, 1),
(80, 'GE 107', 'Sicence and Technology & Society', 3, 3, 1, 1),
(81, 'IT Caps 411', 'Capstone Project & Research 1', 3, 4, 1, 1),
(82, 'IT 412', 'Networking 2', 3, 4, 1, 1),
(83, 'IT 413', 'System Analysis and Design', 3, 4, 1, 1),
(84, 'IT 414', 'Organization and Management Concepts', 3, 4, 1, 1),
(85, 'IT 415', 'Alternative Operating System', 3, 4, 1, 1),
(86, 'Elective 411', 'Elective 1', 3, 4, 1, 1),
(87, 'Elective 412', 'Elective 2', 3, 4, 1, 1),
(88, 'IT 121', 'Information Management', 3, 1, 2, 1),
(89, 'IT 122L', 'Computer Programming II (Lec & Lab)', 3, 1, 2, 1),
(90, 'GE Elect 1', 'Gender & Society', 3, 1, 2, 1),
(91, 'GE 103', 'Art & Appreciation', 3, 1, 2, 1),
(92, 'GE 104', 'Readings in Philippines History', 3, 1, 2, 1),
(93, 'PE102', 'Fundamentals of Rhythmic Activities', 3, 1, 2, 1),
(94, 'NSTP 121', 'Civic Work & Training Service/ROTC/LTS II', 3, 1, 2, 1),
(95, 'ARAB 102', 'Reading and Writing Arabic 2', 3, 1, 2, 1),
(96, 'IT 221', 'System Integration & Architecture', 3, 2, 2, 1),
(97, 'IT 222L', 'Integrative Programming & Technologies 1 (Lec & La', 3, 2, 2, 1),
(98, 'IT 223', 'Application Development & Emerging Technolgies', 3, 2, 2, 1),
(99, 'GE Elect 3', 'Peace Education', 3, 2, 2, 1),
(100, 'GE 106', 'Ethics', 3, 2, 2, 1),
(101, 'PE 204', 'Sports & Games', 3, 2, 2, 1),
(102, 'Socio Anthro 101', 'Socio Antrhopology', 3, 2, 2, 1),
(103, 'IT 321', 'Networking 1', 3, 3, 2, 1),
(104, 'IT 322', 'System Administration & Maintenance', 3, 3, 2, 1),
(105, 'IT 323', 'Information & Assurance Security 2', 3, 3, 2, 1),
(106, 'IT 324', 'Quantitative Method\'s (Including Modeling & Simula', 3, 3, 2, 1),
(107, 'IT Math 329', 'Probability & Statistics', 3, 3, 2, 1),
(108, 'GE 108', 'The Life & Works of Rizal', 3, 3, 2, 1),
(109, 'Tax 101', 'Basic Economic with Land Reform', 3, 3, 2, 1),
(110, 'IT Caps 421', 'Capstone Project & Research II', 3, 4, 2, 1),
(111, 'IT 422', 'Social & Professional Issues', 3, 4, 2, 1),
(112, 'IT 423', 'IT Insfrastructure and Network Technologies', 3, 4, 2, 1),
(113, 'Elect 421', 'Elective 3', 3, 4, 2, 1),
(114, 'Elect 422', 'Elective 4', 3, 4, 2, 1),
(115, 'GEO 101', 'People\'s and Earth Ecosystem', 3, 4, 2, 1),
(116, 'CS 121', 'Fundamentals of Programming', 3, 1, 2, 2),
(117, 'CS DS 1', 'Discrete Structure 1', 3, 1, 2, 2),
(118, 'GE Elect 1', 'Gender & Society', 3, 1, 2, 2),
(119, 'GE 103', 'Arts & Appreciation', 3, 1, 2, 2),
(120, 'GE 104', 'Readings in Philippines History', 3, 1, 2, 2),
(121, 'PE 102', 'Fundamentals of Rhythmic Activities', 3, 1, 2, 2),
(122, 'NSTP 121', 'Civic Work & Training Service/ROTC/LTS II', 3, 1, 2, 2),
(123, 'ARAB 102', 'Reading and Writing Arabic 2', 3, 1, 2, 2),
(124, 'CS 221L', 'Fundamental of Problem Solving Programming (Lec & ', 3, 2, 2, 2),
(125, 'CS 222L', 'Intermediate Programming', 3, 2, 2, 2),
(126, 'CS 223', 'Computer Organization & Architecture', 3, 2, 2, 2),
(127, 'Phys 222', 'Calculus Base Physics', 3, 2, 2, 2),
(128, 'Math 224', 'Integral Calculus', 3, 2, 2, 2),
(129, 'GE Elect 3', 'Peace Education', 3, 2, 2, 2),
(130, 'GE 106', 'Ethics', 3, 2, 2, 2),
(131, 'PE 204', 'Sports & Games', 3, 2, 2, 2),
(132, 'CS 321', 'Algorithm & Complexity', 3, 3, 2, 2),
(133, 'CS 322', 'Software Engineering 2', 3, 3, 2, 2),
(134, 'CS 323', 'Operating System (Lecture & Lab)', 3, 3, 2, 2),
(135, 'CS 324', 'Application Development & Emerging Technologoies', 3, 3, 2, 2),
(136, 'CS 325', 'Organization and Management Concept', 3, 3, 2, 2),
(137, 'CS 326L', 'Programming Language', 3, 3, 2, 2),
(138, 'GE 108', 'The Life & Works of Rizal', 3, 3, 2, 2),
(139, 'CS 421', 'CS Thesis Writing 2', 3, 4, 2, 2),
(140, 'CS 422', 'Human Computer Inter Action', 3, 4, 2, 2),
(141, 'CS 423', 'Social Issues & Practices', 3, 4, 2, 2),
(142, 'CS 424', 'System Analysis and Design', 3, 4, 2, 2),
(143, 'CS Elect 421', 'Elective 3', 3, 4, 2, 2),
(144, 'Tax 1', 'Basic Economic with Land Reforms', 3, 4, 2, 2),
(145, 'Phy 121', 'Physics for Engineers', 3, 1, 2, 3),
(146, 'GE Elect 1', 'Gender & Society', 3, 1, 2, 3),
(147, 'GE 103', 'Art Appreciation', 3, 1, 2, 3),
(148, 'GE 104', 'Readings in the Philippine History', 3, 1, 2, 3),
(149, 'PE 102', 'Fundamentals of Rhytmic Activites', 3, 1, 2, 3),
(150, 'NSTP 121', 'Civic Work & Training Service/ ROTC/LTS II', 3, 1, 2, 3),
(151, 'ARAB 102', 'Reading and Writing Arabic 2', 3, 1, 2, 3),
(152, 'Cal 221', 'Integral Calculus', 3, 2, 2, 3),
(153, 'CpE 221', 'Fundamentals of Electronic Circuits', 3, 2, 2, 3),
(154, 'CpE 222', 'Programming Logic and Design', 3, 2, 2, 3),
(155, 'Math 226', 'Eng\'g Data Analysis', 3, 2, 2, 3),
(156, 'CAD', 'Computer Aided Drafting', 3, 2, 2, 3),
(157, 'GE Elect 3', 'Peace Education', 3, 2, 2, 3),
(158, 'GE 106', 'Ethics', 3, 2, 2, 3),
(159, 'PE 204', 'Sports & Games', 3, 2, 2, 3),
(160, 'CpE 321-L2', 'Data & Digital Communication', 3, 3, 2, 3),
(161, 'CpE 322-L2', 'Logic Circuits and Design', 3, 3, 2, 3),
(162, 'CpE 323-L2', 'Computer Networks and Security', 3, 3, 2, 3),
(163, 'CpE 324', 'Basic Occupational Health & Safety', 3, 3, 2, 3),
(164, 'CpE 325', 'Methods of Research', 3, 3, 2, 3),
(165, 'CpE 326', 'CpE Laws & Professional Practice', 3, 3, 2, 3),
(166, 'CpE 327', 'Fundamentals of Mixed Signal and Sensors', 3, 3, 2, 3),
(167, 'Tech 101', 'Technopreneurship', 3, 3, 2, 3),
(168, 'GE 108', 'The Life & Works of Rizal', 3, 3, 2, 3),
(169, 'CpE 421-L2', 'CpE Practice & Design', 3, 4, 2, 3),
(170, 'CpE 422-L2', 'Operating System', 3, 4, 2, 3),
(171, 'CpE 423-L2', 'Digital Signal Processing', 3, 4, 2, 3),
(172, 'CpE 424-L2', 'Computer Architecture and Organization', 3, 4, 2, 3),
(173, 'CpE Elect 3', 'Cognate/Elective Course (Recommended Elective)', 3, 4, 2, 3),
(190, 'IS101', 'Introduction to Computing ', 3, 1, 1, 4),
(193, 'IS121', 'Datastructure and Algorithm', 3, 2, 1, 4),
(195, 'IS121', 'Information Management', 3, 1, 2, 4),
(197, 'IS103', 'Fundamental of Information System ', 3, 1, 1, 4),
(201, 'IT 111', 'Introduction to Computing ', 3, 1, 1, 1),
(202, 'IT 112L', ' Computer Programming I(Lec & Lab)', 3, 1, 1, 1),
(203, 'GE 100', 'Purposive Communication', 3, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
