-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2019 at 01:47 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id11654835_iotrpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `stb`
--

CREATE TABLE `stb` (
  `id` int(11) NOT NULL,
  `alat` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nilai` float NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stb`
--

INSERT INTO `stb` (`id`, `alat`, `nilai`, `waktu`) VALUES
(1, 'Lampu1', 1, '2019-11-21 04:02:39'),
(2, 'Lampu2', 1, '2019-11-21 04:02:51'),
(3, 'Lampu3', 1, '2019-11-21 04:03:04'),
(4, 'Lampu1', 0, '2019-11-21 03:51:02'),
(5, 'Lampu1', 1, '2019-11-21 03:52:57'),
(6, 'Lampu3', 0, '2019-11-21 03:53:04'),
(7, 'Lampu3', 1, '2019-11-21 03:56:34'),
(8, 'Lampu3', 0, '2019-11-21 04:04:50'),
(9, 'Lampu2', 0, '2019-11-21 04:04:54'),
(10, 'Lampu1', 0, '2019-11-21 04:04:55'),
(11, 'Lampu1', 1, '2019-11-21 04:05:14'),
(12, 'Lampu2', 1, '2019-11-21 04:05:16'),
(13, 'Lampu3', 1, '2019-11-21 04:05:17'),
(14, 'Lampu1', 0, '2019-11-21 04:05:46'),
(15, 'Lampu2', 0, '2019-11-21 04:06:01'),
(16, 'Lampu3', 0, '2019-11-21 04:06:54'),
(17, 'Lampu3', 1, '2019-11-21 04:06:58'),
(18, 'Lampu1', 1, '2019-11-21 04:08:48'),
(19, 'Lampu2', 1, '2019-11-21 04:09:18'),
(20, 'Lampu1', 0, '2019-11-21 04:10:52'),
(21, 'Lampu1', 1, '2019-11-21 04:12:25'),
(22, 'Lampu3', 0, '2019-11-21 04:12:39'),
(23, 'Lampu1', 0, '2019-11-21 04:12:43'),
(24, 'Lampu2', 0, '2019-11-21 04:13:13'),
(25, 'Lampu1', 1, '2019-11-21 04:13:21'),
(26, 'Lampu2', 1, '2019-11-21 04:14:15'),
(27, 'Lampu2', 0, '2019-11-21 04:14:16'),
(28, 'Lampu3', 1, '2019-11-21 04:14:19'),
(29, 'Lampu3', 0, '2019-11-21 04:14:21'),
(30, 'Lampu1', 1, '2019-11-21 04:14:35'),
(31, 'Lampu3', 1, '2019-11-21 04:14:40'),
(32, 'Lampu1', 1, '2019-11-22 02:52:29'),
(33, 'Lampu1', 0, '2019-11-22 02:52:33'),
(34, 'Lampu2', 1, '2019-11-22 02:52:35'),
(35, 'Lampu1', 1, '2019-11-22 02:52:42'),
(36, 'Lampu3', 1, '2019-11-22 02:52:45'),
(37, 'Lampu1', 0, '2019-11-22 02:55:21'),
(38, 'Lampu2', 0, '2019-11-22 02:55:31'),
(39, 'Lampu3', 0, '2019-11-22 02:55:33'),
(40, 'Lampu1', 1, '2019-11-22 03:03:49'),
(41, 'Lampu1', 0, '2019-11-22 03:04:26'),
(42, 'Lampu4', 1, '2019-11-22 03:04:38'),
(43, 'Lampu3', 1, '2019-11-22 03:04:45'),
(44, 'Lampu4', 0, '2019-11-22 03:05:03'),
(45, 'Lampu4', 1, '2019-11-22 03:05:05'),
(46, 'Lampu2', 1, '2019-11-22 03:05:28'),
(47, 'Lampu1', 1, '2019-11-22 03:05:31'),
(48, 'Lampu1', 0, '2019-11-22 03:05:51'),
(49, 'Lampu2', 0, '2019-11-22 03:05:52'),
(50, 'Lampu3', 0, '2019-11-22 03:05:53'),
(51, 'Lampu4', 0, '2019-11-22 03:05:54'),
(52, 'Lampu1', 1, '2019-11-22 03:08:23'),
(53, 'Lampu4', 1, '2019-11-22 03:08:23'),
(54, 'Lampu2', 1, '2019-11-22 03:08:33'),
(55, 'Lampu1', 1, '2019-11-22 03:08:36'),
(56, 'Lampu2', 1, '2019-11-22 03:08:37'),
(57, 'Lampu3', 1, '2019-11-22 03:08:39'),
(58, 'Lampu4', 1, '2019-11-22 03:08:41'),
(59, 'Lampu3', 1, '2019-11-22 03:08:52'),
(60, 'Lampu4', 1, '2019-11-22 03:10:25'),
(61, 'Lampu1', 0, '2019-11-22 03:11:31'),
(62, 'Lampu2', 0, '2019-11-22 03:11:33'),
(63, 'Lampu3', 0, '2019-11-22 03:11:35'),
(64, 'Lampu4', 0, '2019-11-22 03:11:37'),
(65, 'Tong1', 8, '2019-11-22 03:11:52'),
(66, 'Lampu4', 1, '2019-11-22 03:11:58'),
(67, 'Lampu4', 1, '2019-11-22 03:14:07'),
(68, 'Lampu3', 1, '2019-11-22 03:14:25'),
(69, 'Lampu3', 0, '2019-11-22 03:15:17'),
(70, 'Lampu4', 0, '2019-11-22 03:15:18'),
(71, 'Lampu1', 1, '2019-11-22 03:15:39'),
(72, 'Lampu1', 0, '2019-11-22 03:15:45'),
(73, 'Lampu4', 0, '2019-11-22 03:16:14'),
(74, 'Lampu4', 1, '2019-11-22 03:16:20'),
(75, 'Lampu4', 1, '2019-11-22 03:16:25'),
(76, 'Lampu3', 1, '2019-11-22 03:28:34'),
(77, 'Lampu4', 0, '2019-11-22 03:28:42'),
(78, 'Lampu2', 1, '2019-11-22 03:28:44'),
(79, 'Lampu1', 1, '2019-11-22 03:28:46'),
(80, 'Lampu4', 1, '2019-11-22 03:28:48'),
(81, 'Lampu1', 0, '2019-11-22 03:29:01'),
(82, 'Lampu2', 0, '2019-11-22 03:29:02'),
(83, 'Lampu3', 0, '2019-11-22 03:29:03'),
(84, 'Lampu4', 0, '2019-11-22 03:29:06'),
(85, 'Lampu4', 1, '2019-11-22 03:29:09'),
(86, 'Lampu3', 1, '2019-11-22 03:29:38'),
(87, 'Lampu4', 0, '2019-11-22 03:29:40'),
(88, 'Lampu4', 1, '2019-11-22 03:29:43'),
(89, 'Lampu2', 1, '2019-11-22 03:29:51'),
(90, 'Lampu1', 1, '2019-11-22 03:29:52'),
(91, 'Lampu1', 0, '2019-11-22 03:30:00'),
(92, 'Lampu4', 0, '2019-11-22 03:30:02'),
(93, 'Lampu2', 0, '2019-11-22 03:30:04'),
(94, 'Lampu2', 1, '2019-11-22 03:30:08'),
(95, 'Lampu4', 1, '2019-11-22 03:30:15'),
(96, 'Lampu4', 0, '2019-11-22 03:30:24'),
(97, 'Lampu4', 0, '2019-11-22 03:32:02'),
(98, 'Lampu4', 1, '2019-11-22 03:32:05'),
(99, 'Lampu1', 1, '2019-11-22 03:32:11'),
(100, 'Lampu1', 1, '2019-11-22 08:24:05'),
(101, 'Lampu2', 1, '2019-11-22 08:24:07'),
(102, 'Lampu1', 0, '2019-11-22 08:26:59'),
(103, 'Lampu2', 0, '2019-11-22 08:27:01'),
(104, 'Lampu3', 0, '2019-11-22 08:27:04'),
(105, 'Lampu3', 1, '2019-11-22 08:27:52'),
(106, 'Lampu2', 1, '2019-11-22 08:27:55'),
(107, 'Tong1', 1, '2019-11-22 08:32:23'),
(108, 'Tong1', 1, '2019-11-22 08:32:36'),
(109, 'Lampu1', 1, '2019-11-22 08:39:18'),
(110, 'Lampu4', 0, '2019-11-22 08:39:26'),
(111, 'Lampu4', 1, '2019-11-22 08:39:35'),
(112, 'Lampu4', 0, '2019-11-22 08:39:55'),
(113, 'Lampu3', 0, '2019-11-22 08:40:06'),
(114, 'Lampu3', 1, '2019-11-22 08:40:27'),
(115, 'Lampu4', 1, '2019-11-22 08:40:29'),
(116, 'Lampu4', 0, '2019-11-22 08:40:53'),
(117, 'Lampu4', 1, '2019-11-22 08:40:57'),
(118, 'Lampu4', 0, '2019-11-22 08:41:12'),
(119, 'Lampu3', 0, '2019-11-22 08:41:22'),
(120, 'Lampu2', 0, '2019-11-22 08:41:30'),
(121, 'Lampu1', 0, '2019-11-22 08:41:42'),
(122, 'Lampu1', 1, '2019-11-22 08:41:49'),
(123, 'Lampu1', 0, '2019-11-22 08:41:56'),
(124, 'Lampu1', 1, '2019-11-22 08:44:38'),
(125, 'Lampu1', 0, '2019-11-22 08:44:52'),
(126, 'Lampu1', 1, '2019-11-22 08:45:01'),
(127, 'Lampu1', 0, '2019-11-22 08:45:08'),
(128, 'Lampu1', 1, '2019-11-22 08:45:14'),
(129, 'Lampu2', 1, '2019-11-22 08:45:24'),
(130, 'Lampu3', 1, '2019-11-22 08:45:44'),
(131, 'Lampu4', 1, '2019-11-22 08:45:55'),
(132, 'Lampu4', 0, '2019-11-22 08:46:11'),
(133, 'Lampu3', 0, '2019-11-22 08:46:18'),
(134, 'Lampu2', 0, '2019-11-22 08:46:25'),
(135, 'Lampu1', 0, '2019-11-22 08:46:31'),
(136, 'Lampu1', 1, '2019-11-22 09:43:01'),
(137, 'Lampu2', 1, '2019-11-22 09:43:07'),
(138, 'Lampu3', 1, '2019-11-22 09:43:10'),
(139, 'Lampu4', 1, '2019-11-22 09:43:11'),
(140, 'Lampu4', 0, '2019-11-22 09:43:30'),
(141, 'Lampu4', 1, '2019-11-22 09:43:32'),
(142, 'Lampu4', 0, '2019-11-22 09:43:40'),
(143, 'Lampu3', 0, '2019-11-22 09:43:45'),
(144, 'Lampu2', 0, '2019-11-22 09:43:49'),
(145, 'Lampu1', 0, '2019-11-22 09:43:51'),
(146, 'Lampu3', 1, '2019-11-22 09:47:50'),
(147, 'Lampu1', 1, '2019-11-22 09:48:41'),
(148, 'Lampu2', 1, '2019-11-22 09:48:46'),
(149, 'Lampu3', 1, '2019-11-22 09:48:49'),
(150, 'Lampu4', 1, '2019-11-22 09:48:51'),
(151, 'Lampu4', 0, '2019-11-22 09:49:04'),
(152, 'Lampu4', 1, '2019-11-22 09:49:05'),
(153, 'Lampu4', 0, '2019-11-22 09:51:51'),
(154, 'Lampu3', 0, '2019-11-22 09:51:53'),
(155, 'Lampu2', 0, '2019-11-22 09:51:55'),
(156, 'Lampu1', 0, '2019-11-22 09:51:56'),
(157, 'Lampu1', 1, '2019-11-23 03:23:48'),
(158, 'Lampu2', 1, '2019-11-23 03:23:58'),
(159, 'Lampu3', 1, '2019-11-23 03:24:26'),
(160, 'Lampu3', 0, '2019-11-23 03:38:07'),
(161, 'Lampu2', 0, '2019-11-23 03:38:08'),
(162, 'Lampu1', 0, '2019-11-23 03:38:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stb`
--
ALTER TABLE `stb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stb`
--
ALTER TABLE `stb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
