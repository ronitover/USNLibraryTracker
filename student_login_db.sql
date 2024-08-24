-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2024 at 04:37 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_login_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class_name`) VALUES
(1, 'II BCA B');

-- --------------------------------------------------------

--
-- Table structure for table `login_records`
--

CREATE TABLE `login_records` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `usn` varchar(50) NOT NULL,
  `login_time` datetime NOT NULL,
  `class` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_records`
--

INSERT INTO `login_records` (`id`, `name`, `usn`, `login_time`, `class`) VALUES
(1, 'RONITH THARUN JOSHI', 'NNS23BC075', '2024-08-24 15:55:46', 'II BCA B'),
(2, 'RONITH THARUN JOSHI', 'NNS23BC075', '2024-08-24 17:47:00', 'II BCA B'),
(3, 'RONITH THARUN JOSHI', 'NNS23BC075', '2024-08-24 17:52:15', 'II BCA B'),
(4, 'RONITH THARUN JOSHI', 'NNS23BC075', '2024-08-24 17:55:46', 'II BCA B'),
(5, 'RONITH THARUN JOSHI', 'NNS23BC075', '2024-08-24 17:58:16', 'II BCA B'),
(6, 'RONITH THARUN JOSHI', 'NNS23BC075', '2024-08-24 17:58:17', 'II BCA B'),
(7, 'RONITH THARUN JOSHI', 'NNS23BC075', '2024-08-24 17:59:17', 'II BCA B'),
(8, 'RONITH THARUN JOSHI', 'NNS23BC075', '2024-08-24 19:59:02', 'II BCA B');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `usn` varchar(50) NOT NULL,
  `class_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `usn`, `class_id`) VALUES
(1, 'PRANAMYA SHETTY', 'NNS23BC062', 1),
(2, 'PRARTHANA', 'NNS23BC063', 1),
(3, 'PRATHIKSHA K R', 'NNS23BC064', 1),
(4, 'PRATHIKSHA SURYA KUMAR', 'NNS23BC065', 1),
(5, 'PRATWIK BHANDARY', 'NNS23BC066', 1),
(6, 'PRISTON PINTO', 'NNS23BC067', 1),
(7, 'PRAVEEN KUMAR', 'NNS23BC068', 1),
(8, 'RAKSHA', 'NNS23BC069', 1),
(9, 'RAKSHA SHETTY', 'NNS23BC070', 1),
(10, 'RAKSHITHA SS', 'NNS23BC071', 1),
(11, 'RESHMA', 'NNS23BC072', 1),
(12, 'RISHITH P SHETTY', 'NNS23BC073', 1),
(13, 'RITHU R', 'NNS23BC074', 1),
(14, 'RONITH THARUN JOSHI', 'NNS23BC075', 1),
(15, 'ROSHAN', 'NNS23BC076', 1),
(16, 'ROYAN D\'MELLO', 'NNS23BC077', 1),
(17, 'ROYSTON MENEZES', 'NNS23BC078', 1),
(18, 'SAFA', 'NNS23BC079', 1),
(19, 'SAIESH', 'NNS23BC080', 1),
(20, 'SANIYA SOWRIS', 'NNS23BC081', 1),
(21, 'SANTHOSH D', 'NNS23BC082', 1),
(22, 'SANVI SHETTY', 'NNS23BC083', 1),
(23, 'SARVA H S', 'NNS23BC084', 1),
(24, 'SATHVIK SHETTY', 'NNS23BC085', 1),
(25, 'SHANOLA TRIZA CRASTA', 'NNS23BC086', 1),
(26, 'SHANVITH', 'NNS23BC087', 1),
(27, 'SHARATH G KARKERA', 'NNS23BC088', 1),
(28, 'SHEELTHAL G ANCHAN', 'NNS23BC089', 1),
(29, 'SHETTY KSHAMA PRAFULLA', 'NNS23BC090', 1),
(30, 'SHIFALI', 'NNS23BC091', 1),
(31, 'SHRADDHA DEVADIGA', 'NNS23BC092', 1),
(32, 'SHRADDHA S SHETTY', 'NNS23BC093', 1),
(33, 'SHRAVAN', 'NNS23BC094', 1),
(34, 'SHRAVYA G SHETTIGAR', 'NNS23BC095', 1),
(35, 'SHREEMA SHRIKARA KUMAR KUNDER', 'NNS23BC096', 1),
(36, 'SHREYA', 'NNS23BC097', 1),
(37, 'SHRINIDHI R MENDON', 'NNS23BC098', 1),
(38, 'SHRINIDHI SHETTY', 'NNS23BC099', 1),
(39, 'SHRIVATSA V BHAT', 'NNS23BC100', 1),
(40, 'SINCHANA Y RAO', 'NNS23BC101', 1),
(41, 'SOUJANYA B UPPAR', 'NNS23BC102', 1),
(42, 'SOWMYA', 'NNS23BC103', 1),
(43, 'SOWMYA ', 'NNS23BC104', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD UNIQUE KEY `class_name` (`class_name`);

--
-- Indexes for table `login_records`
--
ALTER TABLE `login_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usn` (`usn`),
  ADD KEY `fk_class` (`class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `login_records`
--
ALTER TABLE `login_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `fk_class` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
