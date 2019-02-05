-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 09, 2018 at 11:21 AM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `christopher`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_family`
--

CREATE TABLE `about_family` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_family`
--

INSERT INTO `about_family` (`id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 'testing the about family', '2018-08-09 18:30:00', '2018-08-09 18:30:00'),
(2, 3, 'the about family content', NULL, NULL),
(3, 4, 'Test Data of About Family', '2018-08-20 18:30:00', '2018-09-20 18:30:00'),
(4, 5, 'testing the about family', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(5, 6, 'testing the about family', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(6, 7, 'testing the about family', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(7, 8, 'testing the about family', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(8, 11, 'My Family Details', NULL, NULL),
(9, 1, 'testing the about family', '2018-09-13 18:30:00', '2018-09-13 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `age_table`
--

CREATE TABLE `age_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `age` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `age_table`
--

INSERT INTO `age_table` (`id`, `age`, `status`, `created_at`, `updated_at`) VALUES
(1, 18, 1, NULL, NULL),
(2, 19, 1, NULL, NULL),
(3, 20, 1, NULL, NULL),
(4, 21, 1, NULL, NULL),
(5, 22, 1, NULL, NULL),
(6, 23, 1, NULL, NULL),
(7, 24, 1, NULL, NULL),
(8, 25, 1, NULL, NULL),
(9, 26, 1, NULL, NULL),
(10, 27, 1, NULL, NULL),
(11, 28, 1, NULL, NULL),
(12, 29, 1, NULL, NULL),
(13, 30, 1, NULL, NULL),
(14, 31, 1, NULL, NULL),
(15, 32, 1, NULL, NULL),
(16, 33, 1, NULL, NULL),
(17, 34, 1, NULL, NULL),
(18, 35, 1, NULL, NULL),
(19, 36, 1, NULL, NULL),
(20, 37, 1, NULL, NULL),
(21, 38, 1, NULL, NULL),
(22, 39, 1, NULL, NULL),
(23, 40, 1, NULL, NULL),
(24, 41, 1, NULL, NULL),
(25, 42, 1, NULL, NULL),
(26, 43, 1, NULL, NULL),
(27, 44, 1, NULL, NULL),
(28, 45, 1, NULL, NULL),
(29, 46, 1, NULL, NULL),
(30, 47, 1, NULL, NULL),
(31, 48, 1, NULL, NULL),
(32, 49, 1, NULL, NULL),
(33, 50, 1, NULL, NULL),
(34, 51, 1, NULL, NULL),
(35, 52, 1, NULL, NULL),
(36, 53, 1, NULL, NULL),
(37, 54, 1, NULL, NULL),
(38, 55, 1, NULL, NULL),
(39, 56, 1, NULL, NULL),
(40, 57, 1, NULL, NULL),
(41, 58, 1, NULL, NULL),
(42, 59, 1, NULL, NULL),
(43, 60, 1, NULL, NULL),
(44, 61, 1, NULL, NULL),
(45, 62, 1, NULL, NULL),
(46, 63, 1, NULL, NULL),
(47, 64, 1, NULL, NULL),
(48, 65, 1, NULL, NULL),
(49, 66, 1, NULL, NULL),
(50, 67, 1, NULL, NULL),
(51, 68, 1, NULL, NULL),
(52, 69, 1, NULL, NULL),
(53, 70, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `annual_income_table`
--

CREATE TABLE `annual_income_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `income` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `annual_income_table`
--

INSERT INTO `annual_income_table` (`id`, `income`, `status`, `created_at`, `updated_at`) VALUES
(1, '0 - 1 Lakh', 1, NULL, NULL),
(2, '1 - 2 Lakhs', 1, NULL, NULL),
(3, '2 - 3 Lakhs', 1, NULL, NULL),
(4, '3 - 4 Lakhs', 1, NULL, NULL),
(5, '4 - 5 Lakhs', 1, NULL, NULL),
(6, '5 - 6 Lakhs', 1, NULL, NULL),
(7, '6 - 7 Lakhs', 1, NULL, NULL),
(8, '7 - 8 Lakhs', 1, NULL, NULL),
(9, '8 - 9 Lakhs', 1, NULL, NULL),
(10, '9 - 10 Lakhs', 1, NULL, NULL),
(11, '10 - 12 Lakhs', 1, NULL, NULL),
(12, '10 - 12 Lakhs', 1, NULL, NULL),
(13, '12 - 14 Lakhs', 1, NULL, NULL),
(14, '14 - 16 Lakhs', 1, NULL, NULL),
(15, '16 - 18 Lakhs', 1, NULL, NULL),
(16, '18 - 20 Lakhs', 1, NULL, NULL),
(17, '20 - 25 Lakhs', 1, NULL, NULL),
(18, '25 - 30 Lakhs', 1, NULL, NULL),
(19, '30 - 35 Lakhs', 1, NULL, NULL),
(20, '35 - 40 Lakhs', 1, NULL, NULL),
(21, '40 - 45 Lakhs', 1, NULL, NULL),
(22, '45 - 50 Lakhs', 1, NULL, NULL),
(23, '50 - 60 Lakhs', 1, NULL, NULL),
(24, '60 - 70 Lakhs', 1, NULL, NULL),
(25, '70 - 80 Lakhs', 1, NULL, NULL),
(26, '80 - 90 Lakhs', 1, NULL, NULL),
(27, '90 Lakhs - 1 Crore', 1, NULL, NULL),
(28, '1 Crore & Above', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `basic_details`
--

CREATE TABLE `basic_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `gender` int(11) NOT NULL COMMENT '1for male 2for female 3 for others  ',
  `profile_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1 for myself 2 for relative 3 for friend 4 for daughter 5 for sister 6 for son 7 for brother ',
  `age` int(11) NOT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `maritial_status` int(11) NOT NULL COMMENT '1 for nevermarried 2 for widowed 3 for divorced 4for awaiting_divorce ',
  `body_type` int(11) DEFAULT NULL COMMENT '1for slim 2for athletic 3for average 4for heavy ',
  `complextion` int(11) DEFAULT NULL COMMENT '1for veryfair 2for fair 3for wheatish 4for wheatishbrown 5 for dark ',
  `physical_status` int(11) NOT NULL COMMENT '1for normal 2 forphysically challenged ',
  `mother_tounge_id` int(11) NOT NULL,
  `know_to_read` int(11) DEFAULT NULL COMMENT '1 for gujarati',
  `eating_habits` int(11) DEFAULT NULL COMMENT '1for vegeterian 2for nonvegeterian 3for Eggetarian ',
  `drinking_habits` int(11) DEFAULT NULL COMMENT '1for no 2for drinksSocially 3for yes',
  `smoking_habits` int(11) DEFAULT NULL COMMENT '1for no 2for Occasionally 3for yes',
  `have_children` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_details`
--

INSERT INTO `basic_details` (`id`, `user_id`, `gender`, `profile_for`, `age`, `dob`, `height`, `weight`, `maritial_status`, `body_type`, `complextion`, `physical_status`, `mother_tounge_id`, `know_to_read`, `eating_habits`, `drinking_habits`, `smoking_habits`, `have_children`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '1', 3, '30/05192', 5, 15, 1, 1, 1, 1, 2, 2, 1, 1, 1, 1, '2018-08-09 18:30:00', '2018-09-20 18:30:00'),
(2, 3, 1, '3', 3, '3/07/1985', 7, 11, 3, 2, 2, 1, 17, 1, 1, 1, 1, 1, '2018-08-09 18:30:00', '2018-08-16 18:30:00'),
(3, 4, 1, '1', 3, '7/03/1992', 3, 5, 5, 1, 2, 1, 3, 1, 2, 2, 2, 0, '2018-08-17 18:30:00', '2018-08-17 18:30:00'),
(4, 5, 1, '1', 3, '30/05192', 5, 15, 1, 1, 1, 1, 2, 2, 1, 1, 1, 0, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(5, 6, 1, '1', 3, '30/05192', 5, 15, 1, 1, 1, 1, 2, 2, 1, 1, 1, 0, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(6, 7, 1, '1', 3, '30/05192', 5, 15, 1, 1, 1, 1, 2, 2, 1, 1, 1, 0, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(7, 8, 1, '1', 3, '30/05192', 5, 15, 1, 1, 1, 1, 2, 2, 1, 1, 1, 0, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(8, 10, 1, '3', 8, '08/17/1993', 1, 9, 1, 3, 3, 1, 43, 1, 1, 1, 1, 0, NULL, NULL),
(9, 9, 2, '3', 7, '09/20/1994', 1, 10, 1, 1, 3, 1, 43, NULL, 1, 1, 1, 0, NULL, NULL),
(10, 11, 1, '3', 3, '04/13/2018', 3, 7, 1, 1, 2, 1, 19, 1, 1, 1, 1, 1, NULL, NULL),
(11, 25, 2, '3', 4, '04/12/2017', 1, 17, 1, 2, 2, 1, 17, 1, 1, 1, 1, 1, NULL, NULL),
(12, 12, 2, '2', 7, '30/05/1992', 8, 11, 1, 1, 1, 1, 2, 1, 1, 1, 1, 0, '2018-09-09 18:30:00', '2018-09-09 18:30:00'),
(13, 13, 1, '1', 3, '30/051992', 5, 15, 1, 1, 1, 1, 2, 2, 1, 1, 1, 0, '2018-09-16 18:30:00', '2018-09-16 18:30:00'),
(14, 14, 1, '1', 3, '30/05/1992', 5, 15, 1, 1, 1, 1, 2, 2, 1, 1, 1, 0, '2018-09-16 18:30:00', '2018-09-16 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `basic_partner_preferences`
--

CREATE TABLE `basic_partner_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `preferred_age_from` int(11) NOT NULL,
  `preferred_age_to` int(11) NOT NULL,
  `maritial_status` int(11) NOT NULL,
  `preferred_height_from` int(11) NOT NULL,
  `preferred_height_to` int(11) NOT NULL,
  `physical_status` int(11) NOT NULL,
  `eating_habits` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drinking_habits` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smoking_habits` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` int(11) NOT NULL,
  `gothra` int(11) NOT NULL,
  `mother_tounge_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `castes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manglik` int(11) NOT NULL,
  `stars` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basic_partner_preferences`
--

INSERT INTO `basic_partner_preferences` (`id`, `user_id`, `preferred_age_from`, `preferred_age_to`, `maritial_status`, `preferred_height_from`, `preferred_height_to`, `physical_status`, `eating_habits`, `drinking_habits`, `smoking_habits`, `religion`, `gothra`, `mother_tounge_id`, `castes`, `manglik`, `stars`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 3, 1, '1,2,3', '1,0', '0', 1, 1, '2', '1,2', 0, '1', '2018-08-09 18:30:00', '2018-09-20 18:30:00'),
(2, 2, 1, 1, 1, 1, 3, 1, '1,2,3', '1,0', '0', 1, 1, '1', '1,2', 0, '1', '2018-08-09 18:30:00', '2018-08-09 18:30:00'),
(3, 3, 1, 1, 1, 1, 3, 1, '1,2,3', '1,0', '0', 1, 1, '1', '1,2', 0, '1', '2018-08-09 18:30:00', '2018-08-09 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `caste`
--

CREATE TABLE `caste` (
  `id` int(10) UNSIGNED NOT NULL,
  `religion_id` int(11) NOT NULL DEFAULT '12',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `caste`
--

INSERT INTO `caste` (`id`, `religion_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Caste no bar', 1, NULL, NULL),
(2, 1, 'Ad Dharmi', 1, NULL, NULL),
(3, 1, 'Adi Dravidar', 1, NULL, NULL),
(4, 1, 'Agarwal', 1, NULL, NULL),
(5, 1, 'Agnikula Kshatriya', 1, NULL, NULL),
(6, 1, 'Agri', 1, NULL, NULL),
(7, 1, 'Ahom', 1, NULL, NULL),
(8, 1, 'Ambalavasi', 1, NULL, NULL),
(9, 1, 'Arora', 1, NULL, NULL),
(10, 1, 'Arunthathiyar', 1, NULL, NULL),
(11, 1, 'Arya Vysya', 1, NULL, NULL),
(12, 1, 'Baidya', 1, NULL, NULL),
(13, 1, 'Baishnab', 1, NULL, NULL),
(14, 1, 'Baishya', 1, NULL, NULL),
(15, 1, 'Balija', 1, NULL, NULL),
(16, 1, 'Banik', 1, NULL, NULL),
(17, 1, 'Baniya', 1, NULL, NULL),
(18, 1, 'Barujibi', 1, NULL, NULL),
(19, 1, 'Besta', 1, NULL, NULL),
(20, 1, 'Bhandari', 1, NULL, NULL),
(21, 1, 'Bhatia', 1, NULL, NULL),
(22, 1, 'Bhavasar Kshatriya', 1, NULL, NULL),
(23, 1, 'Bhovi', 1, NULL, NULL),
(24, 1, 'Billava', 1, NULL, NULL),
(25, 1, 'Boyar', 1, NULL, NULL),
(26, 1, 'Brahmbatt', 1, NULL, NULL),
(27, 1, 'Other Brahmins', 1, NULL, NULL),
(28, 1, 'Brahmin - Anavil', 1, NULL, NULL),
(29, 1, 'Brahmin - Audichya', 1, NULL, NULL),
(30, 1, 'Brahmin - Barendra', 1, NULL, NULL),
(31, 1, 'Brahmin - Bhatt', 1, NULL, NULL),
(32, 1, 'Brahmin - Danua', 1, NULL, NULL),
(33, 1, 'Brahmin - Daivadnya', 1, NULL, NULL),
(34, 1, 'Brahmin - Deshastha', 1, NULL, NULL),
(35, 1, 'Brahmin - Dhiman', 1, NULL, NULL),
(36, 1, 'Brahmin - Dravida', 1, NULL, NULL),
(37, 1, 'Brahmin - Goswami/Gosavi', 1, NULL, NULL),
(38, 1, 'Brahmin - Gurukkal', 1, NULL, NULL),
(39, 1, 'Brahmin - Halua', 1, NULL, NULL),
(40, 1, 'Brahmin - Havyaka', 1, NULL, NULL),
(41, 1, 'Brahmin - Hoysala', 1, NULL, NULL),
(42, 1, 'Brahmin - Iyengar', 1, NULL, NULL),
(43, 1, 'Brahmin - Iyer', 1, NULL, NULL),
(44, 1, 'Brahmin - Jhadua', 1, NULL, NULL),
(45, 1, 'Brahmin - Bhumihar', 1, NULL, NULL),
(46, 1, 'Brahmin - Karhade', 1, NULL, NULL),
(47, 1, 'Brahmin - Kota', 1, NULL, NULL),
(48, 1, 'Brahmin - Kokanastha', 1, NULL, NULL),
(49, 1, 'Brahmin - Kulin', 1, NULL, NULL),
(50, 1, 'Brahmin - Kanyakubj', 1, NULL, NULL),
(51, 1, 'Brahmin - Gaur', 1, NULL, NULL),
(52, 1, 'Brahmin - Maithil', 1, NULL, NULL),
(53, 1, 'Brahmin - Madhwa', 1, NULL, NULL),
(54, 1, 'Brahmin - Modh', 1, NULL, NULL),
(55, 1, 'Brahmin - Mohyal', 1, NULL, NULL),
(56, 1, 'Brahmin - Namboodiri', 1, NULL, NULL),
(57, 1, 'Brahmin - Nagar', 1, NULL, NULL),
(58, 1, 'Brahmin - Niyogi', 1, NULL, NULL),
(59, 1, 'Brahmin - Saryuparin', 1, NULL, NULL),
(60, 1, 'Brahmin - Garhwali', 1, NULL, NULL),
(61, 1, 'Brahmin - Panda', 1, NULL, NULL),
(62, 1, 'Brahmin - Rarhi', 1, NULL, NULL),
(63, 1, 'Brahmin - Rudraj', 1, NULL, NULL),
(64, 1, 'Brahmin - Rigvedi', 1, NULL, NULL),
(65, 1, 'Brahmin - Pandit', 1, NULL, NULL),
(66, 1, 'Brahmin - Sanadya', 1, NULL, NULL),
(67, 1, 'Brahmin - Sakaldwipi', 1, NULL, NULL),
(68, 1, 'Brahmin - Sanketi', 1, NULL, NULL),
(69, 1, 'Brahmin - Saraswat', 1, NULL, NULL),
(70, 1, 'Brahmin - Smartha', 1, NULL, NULL),
(71, 1, 'Brahmin - Sri Vaishnava', 1, NULL, NULL),
(72, 1, 'Brahmin - Stanika', 1, NULL, NULL),
(73, 1, 'Brahmin - Shivhalli', 1, NULL, NULL),
(74, 1, 'Brahmin - Shrimali', 1, NULL, NULL),
(75, 1, 'Brahmin - Vaidiki', 1, NULL, NULL),
(76, 1, 'Brahmin - Vyas', 1, NULL, NULL),
(77, 1, 'Brahmin - Kumaoni', 1, NULL, NULL),
(78, 1, 'Brahmin - Tyagi', 1, NULL, NULL),
(79, 1, 'Malviya Brahmin', 1, NULL, NULL),
(80, 1, 'Jatav', 1, NULL, NULL),
(81, 1, 'Chambhar', 1, NULL, NULL),
(82, 1, 'Chandravanshi Kahar', 1, NULL, NULL),
(83, 1, 'Chasa', 1, NULL, NULL),
(84, 1, 'Chaudary', 1, NULL, NULL),
(85, 1, 'Chaurasia', 1, NULL, NULL),
(86, 1, 'Chettiar', 1, NULL, NULL),
(87, 1, 'Chhetri', 1, NULL, NULL),
(88, 1, 'CKP', 1, NULL, NULL),
(89, 1, 'Coorgi', 1, NULL, NULL),
(90, 1, 'Devadiga', 1, NULL, NULL),
(91, 1, 'Devandra Kula Vellalar', 1, NULL, NULL),
(92, 1, 'Devang Koshthi', 1, NULL, NULL),
(93, 1, 'Devanga', 1, NULL, NULL),
(94, 1, 'Dhangar', 1, NULL, NULL),
(95, 1, 'Dheevara', 1, NULL, NULL),
(96, 1, 'Dhiman', 1, NULL, NULL),
(97, 1, 'Dhoba', 1, NULL, NULL),
(98, 1, 'Dhobi', 1, NULL, NULL),
(99, 1, 'Ediga', 1, NULL, NULL),
(100, 1, 'Ezhava', 1, NULL, NULL),
(101, 1, 'Ezhuthachan', 1, NULL, NULL),
(102, 1, 'Gabit', 1, NULL, NULL),
(103, 1, 'Gandla', 1, NULL, NULL),
(104, 1, 'Ganiga', 1, NULL, NULL),
(105, 1, 'Garhwali', 1, NULL, NULL),
(106, 1, 'Gavara', 1, NULL, NULL),
(107, 1, 'Ghumar', 1, NULL, NULL),
(108, 1, 'Goala', 1, NULL, NULL),
(109, 1, 'Goan', 1, NULL, NULL),
(110, 1, 'Goud', 1, NULL, NULL),
(111, 1, 'Gounder', 1, NULL, NULL),
(112, 1, 'Gowda', 1, NULL, NULL),
(113, 1, 'Gupta', 1, NULL, NULL),
(114, 1, 'Intercaste', 1, NULL, NULL),
(115, 1, 'Irani', 1, NULL, NULL),
(116, 1, 'Jaiswal', 1, NULL, NULL),
(117, 1, 'Jangam', 1, NULL, NULL),
(118, 1, 'Jat', 1, NULL, NULL),
(119, 1, 'Kadava Patel', 1, NULL, NULL),
(120, 1, 'Kaibarta', 1, NULL, NULL),
(121, 1, 'Kalar', 1, NULL, NULL),
(122, 1, 'Kalinga', 1, NULL, NULL),
(123, 1, 'Kalita', 1, NULL, NULL),
(124, 1, 'Kalwar', 1, NULL, NULL),
(125, 1, 'Kamboj', 1, NULL, NULL),
(126, 1, 'Kamma', 1, NULL, NULL),
(127, 1, 'Kansari', 1, NULL, NULL),
(128, 1, 'Kapu', 1, NULL, NULL),
(129, 1, 'Karana', 1, NULL, NULL),
(130, 1, 'Karmakar', 1, NULL, NULL),
(131, 1, 'Karuneegar', 1, NULL, NULL),
(132, 1, 'Kasar', 1, NULL, NULL),
(133, 1, 'Kashyap', 1, NULL, NULL),
(134, 1, 'Kayastha', 1, NULL, NULL),
(135, 1, 'Khandayat', 1, NULL, NULL),
(136, 1, 'Khandelwal', 1, NULL, NULL),
(137, 1, 'Khatri', 1, NULL, NULL),
(138, 1, 'Koli', 1, NULL, NULL),
(139, 1, 'Kongu Vellala Gounder', 1, NULL, NULL),
(140, 1, 'Konkani', 1, NULL, NULL),
(141, 1, 'Kori', 1, NULL, NULL),
(142, 1, 'Kshatriya', 1, NULL, NULL),
(143, 1, 'Kudumbi', 1, NULL, NULL),
(144, 1, 'Kulal', 1, NULL, NULL),
(145, 1, 'Kulalar', 1, NULL, NULL),
(146, 1, 'Kulita', 1, NULL, NULL),
(147, 1, 'Kumbhakar', 1, NULL, NULL),
(148, 1, 'Kumbhar', 1, NULL, NULL),
(149, 1, 'Kumhar', 1, NULL, NULL),
(150, 1, 'Kummari', 1, NULL, NULL),
(151, 1, 'Kunbi', 1, NULL, NULL),
(152, 1, 'Kurmi/Kurmi Kshatriya', 1, NULL, NULL),
(153, 1, 'Kuruba', 1, NULL, NULL),
(154, 1, 'Kuruhina Shetty', 1, NULL, NULL),
(155, 1, 'Kurumbar', 1, NULL, NULL),
(156, 1, 'Kutchi', 1, NULL, NULL),
(157, 1, 'Lambadi', 1, NULL, NULL),
(158, 1, 'Leva patel', 1, NULL, NULL),
(159, 1, 'Leva patil', 1, NULL, NULL),
(160, 1, 'Lingayath', 1, NULL, NULL),
(161, 1, 'Lohana', 1, NULL, NULL),
(162, 1, 'Lubana', 1, NULL, NULL),
(163, 1, 'Madiga', 1, NULL, NULL),
(164, 1, 'Mahajan', 1, NULL, NULL),
(165, 1, 'Mahar', 1, NULL, NULL),
(166, 1, 'Mahendra', 1, NULL, NULL),
(167, 1, 'Maheshwari', 1, NULL, NULL),
(168, 1, 'Mahishya', 1, NULL, NULL),
(169, 1, 'Majabi', 1, NULL, NULL),
(170, 1, 'Mala', 1, NULL, NULL),
(171, 1, 'Mali', 1, NULL, NULL),
(172, 1, 'Mallah', 1, NULL, NULL),
(173, 1, 'Mangalorean', 1, NULL, NULL),
(174, 1, 'Manipuri', 1, NULL, NULL),
(175, 1, 'Munnuru Kapu', 1, NULL, NULL),
(176, 1, 'Mapila', 1, NULL, NULL),
(177, 1, 'Maratha', 1, NULL, NULL),
(178, 1, 'Maruthuvar', 1, NULL, NULL),
(179, 1, 'Matang', 1, NULL, NULL),
(180, 1, 'Meena', 1, NULL, NULL),
(181, 1, 'Meenavar', 1, NULL, NULL),
(182, 1, 'Mehra', 1, NULL, NULL),
(183, 1, 'Meru Darji', 1, NULL, NULL),
(184, 1, 'Mochi', 1, NULL, NULL),
(185, 1, 'Modak', 1, NULL, NULL),
(186, 1, 'Mogaveera', 1, NULL, NULL),
(187, 1, 'Mudaliyar', 1, NULL, NULL),
(188, 1, 'Mudiraj', 1, NULL, NULL),
(189, 1, 'Devar/Thevar/Mukkulathor', 1, NULL, NULL),
(190, 1, 'Muthuraja', 1, NULL, NULL),
(191, 1, 'Nadar', 1, NULL, NULL),
(192, 1, 'Nai/Nayi Brahmin', 1, NULL, NULL),
(193, 1, 'Naicker', 1, NULL, NULL),
(194, 1, 'Naidu', 1, NULL, NULL),
(195, 1, 'Naik', 1, NULL, NULL),
(196, 1, 'Nair', 1, NULL, NULL),
(197, 1, 'Namasudra/Namassej', 1, NULL, NULL),
(198, 1, 'Napit', 1, NULL, NULL),
(199, 1, 'Nayaka', 1, NULL, NULL),
(200, 1, 'Nepali', 1, NULL, NULL),
(201, 1, 'Nhavi', 1, NULL, NULL),
(202, 1, 'Oswal', 1, NULL, NULL),
(203, 1, 'Padmasali', 1, NULL, NULL),
(204, 1, 'Pal', 1, NULL, NULL),
(205, 1, 'Panchal', 1, NULL, NULL),
(206, 1, 'Panicker', 1, NULL, NULL),
(207, 1, 'Parkavakulam/Udayar', 1, NULL, NULL),
(208, 1, 'Parsi', 1, NULL, NULL),
(209, 1, 'Pasi', 1, NULL, NULL),
(210, 1, 'Patel', 1, NULL, NULL),
(211, 1, 'Patnaick/Sistakaranam', 1, NULL, NULL),
(212, 1, 'Patra', 1, NULL, NULL),
(213, 1, 'Pillai', 1, NULL, NULL),
(214, 1, 'Porwal', 1, NULL, NULL),
(215, 1, 'Prajapati', 1, NULL, NULL),
(216, 1, 'Rajaka/Vannar', 1, NULL, NULL),
(217, 1, 'Rajastani', 1, NULL, NULL),
(218, 1, 'Rajbonshi', 1, NULL, NULL),
(219, 1, 'Rajput', 1, NULL, NULL),
(220, 1, 'Ramdasia', 1, NULL, NULL),
(221, 1, 'Ramgariah', 1, NULL, NULL),
(222, 1, 'Ravidasia', 1, NULL, NULL),
(223, 1, 'Rawat', 1, NULL, NULL),
(224, 1, 'Reddy', 1, NULL, NULL),
(225, 1, 'Sadgope', 1, NULL, NULL),
(226, 1, 'Saha', 1, NULL, NULL),
(227, 1, 'Sahu', 1, NULL, NULL),
(228, 1, 'Saini', 1, NULL, NULL),
(229, 1, 'Saliya', 1, NULL, NULL),
(230, 1, 'SC', 1, NULL, NULL),
(231, 1, 'Senai Thalaivar', 1, NULL, NULL),
(232, 1, 'Settibalija', 1, NULL, NULL),
(233, 1, 'Bunt (Shetty)', 1, NULL, NULL),
(234, 1, 'Shimpi/Namdev', 1, NULL, NULL),
(235, 1, 'Sindhi', 1, NULL, NULL),
(236, 1, 'Sindhi-Amil', 1, NULL, NULL),
(237, 1, 'Sindhi-Baibhand', 1, NULL, NULL),
(238, 1, 'Sindhi-Bhanusali', 1, NULL, NULL),
(239, 1, 'Sindhi-Bhatia', 1, NULL, NULL),
(240, 1, 'Sindhi-Chhapru', 1, NULL, NULL),
(241, 1, 'Sindhi-Dadu', 1, NULL, NULL),
(242, 1, 'Sindhi-Hyderabadi', 1, NULL, NULL),
(243, 1, 'Sindhi-Larai', 1, NULL, NULL),
(244, 1, 'Sindhi-Larkana', 1, NULL, NULL),
(245, 1, 'Sindhi-Lohana', 1, NULL, NULL),
(246, 1, 'Sindhi-Rohiri', 1, NULL, NULL),
(247, 1, 'Sindhi-Sahiti', 1, NULL, NULL),
(248, 1, 'Sindhi-Sakkhar', 1, NULL, NULL),
(249, 1, 'Sindhi-Sehwani', 1, NULL, NULL),
(250, 1, 'Sindhi-Shikarpuri', 1, NULL, NULL),
(251, 1, 'Sindhi-Thatai', 1, NULL, NULL),
(252, 1, 'SKP', 1, NULL, NULL),
(253, 1, 'Sonar', 1, NULL, NULL),
(254, 1, 'Soni', 1, NULL, NULL),
(255, 1, 'Sourashtra', 1, NULL, NULL),
(256, 1, 'Sundhi', 1, NULL, NULL),
(257, 1, 'Suthar', 1, NULL, NULL),
(258, 1, 'Swakula Sali', 1, NULL, NULL),
(259, 1, 'Tamboli', 1, NULL, NULL),
(260, 1, 'Tanti', 1, NULL, NULL),
(261, 1, 'Tantubai', 1, NULL, NULL),
(262, 1, 'Telaga', 1, NULL, NULL),
(263, 1, 'Teli', 1, NULL, NULL),
(264, 1, 'Thakkar', 1, NULL, NULL),
(265, 1, 'Thakur', 1, NULL, NULL),
(266, 1, 'Thigala', 1, NULL, NULL),
(267, 1, 'Thiyya', 1, NULL, NULL),
(268, 1, 'Tili', 1, NULL, NULL),
(269, 1, 'ST', 1, NULL, NULL),
(270, 1, 'Sagara (Uppara)', 1, NULL, NULL),
(271, 1, 'Vaddera', 1, NULL, NULL),
(272, 1, 'Vaish', 1, NULL, NULL),
(273, 1, 'Vaishnav', 1, NULL, NULL),
(274, 1, 'Vaishnava', 1, NULL, NULL),
(275, 1, 'Vaishya', 1, NULL, NULL),
(276, 1, 'Vaishya Vani', 1, NULL, NULL),
(277, 1, 'Valmiki', 1, NULL, NULL),
(278, 1, 'Vania', 1, NULL, NULL),
(279, 1, 'Vaniya', 1, NULL, NULL),
(280, 1, 'Vanjara', 1, NULL, NULL),
(281, 1, 'Vanjari', 1, NULL, NULL),
(282, 1, 'Vankar', 1, NULL, NULL),
(283, 1, 'Vannar', 1, NULL, NULL),
(284, 1, 'Vannia Kula Kshatriyar', 1, NULL, NULL),
(285, 1, 'Veera Saivam', 1, NULL, NULL),
(286, 1, 'Velama', 1, NULL, NULL),
(287, 1, 'Vellalar', 1, NULL, NULL),
(288, 1, 'Veluthedathu Nair', 1, NULL, NULL),
(289, 1, 'Vilakkithala Nair', 1, NULL, NULL),
(290, 1, 'Viswabrahmin', 1, NULL, NULL),
(291, 1, 'Vishwakarma', 1, NULL, NULL),
(292, 1, 'Vokkaliga', 1, NULL, NULL),
(293, 1, 'Vysya', 1, NULL, NULL),
(294, 1, 'Yadav', 1, NULL, NULL),
(295, 1, 'Arekatica', 1, NULL, NULL),
(296, 1, 'Banjara', 1, NULL, NULL),
(297, 1, 'Barai', 1, NULL, NULL),
(298, 1, 'Bari', 1, NULL, NULL),
(299, 1, 'Bhatraju', 1, NULL, NULL),
(300, 1, 'Brahmin - Jangid', 1, NULL, NULL),
(301, 1, 'Chippolu (Mera)', 1, NULL, NULL),
(302, 1, 'Dumal', 1, NULL, NULL),
(303, 1, 'Dusadh (Paswan)', 1, NULL, NULL),
(304, 1, 'Gawali', 1, NULL, NULL),
(305, 1, 'Ghisadi', 1, NULL, NULL),
(306, 1, 'Gomantak', 1, NULL, NULL),
(307, 1, 'Gondhali', 1, NULL, NULL),
(308, 1, 'Gramani', 1, NULL, NULL),
(309, 1, 'Gurav', 1, NULL, NULL),
(310, 1, 'Gujjar', 1, NULL, NULL),
(311, 1, 'Guptan', 1, NULL, NULL),
(312, 1, 'Gurjar', 1, NULL, NULL),
(313, 1, 'Hugar (Jeer)', 1, NULL, NULL),
(314, 1, 'Jaalari', 1, NULL, NULL),
(315, 1, 'Jandra', 1, NULL, NULL),
(316, 1, 'Jangra - Brahmin', 1, NULL, NULL),
(317, 1, 'Jogi (Nath)', 1, NULL, NULL),
(318, 1, 'Kachara', 1, NULL, NULL),
(319, 1, 'Kalinga Vysya', 1, NULL, NULL),
(320, 1, 'Katiya', 1, NULL, NULL),
(321, 1, 'Kharwar', 1, NULL, NULL),
(322, 1, 'Kokanastha Maratha', 1, NULL, NULL),
(323, 1, 'Kumawat', 1, NULL, NULL),
(324, 1, 'Kuravan', 1, NULL, NULL),
(325, 1, 'Kurmi', 1, NULL, NULL),
(326, 1, 'Kushwaha (Koiri)', 1, NULL, NULL),
(327, 1, 'Lodhi Rajput', 1, NULL, NULL),
(328, 1, 'Mathur', 1, NULL, NULL),
(329, 1, 'Naagavamsam', 1, NULL, NULL),
(330, 1, 'Nagaralu', 1, NULL, NULL),
(331, 1, 'Nambiar', 1, NULL, NULL),
(332, 1, 'Brahmin - Narmadiya', 1, NULL, NULL),
(333, 1, 'Neeli', 1, NULL, NULL),
(334, 1, 'Otari', 1, NULL, NULL),
(335, 1, 'Partraj', 1, NULL, NULL),
(336, 1, 'Perika', 1, NULL, NULL),
(337, 1, 'Brahmin - Pushkarna', 1, NULL, NULL),
(338, 1, 'Relli', 1, NULL, NULL),
(339, 1, 'Chattada Sri Vaishnava', 1, NULL, NULL),
(340, 1, 'Savji', 1, NULL, NULL),
(341, 1, 'Senguntha Mudaliyar', 1, NULL, NULL),
(342, 1, 'Sozhiya Vellalar', 1, NULL, NULL),
(343, 1, 'Sugali (Naika)', 1, NULL, NULL),
(344, 1, 'Sunari', 1, NULL, NULL),
(345, 1, 'Togata', 1, NULL, NULL),
(346, 1, 'Tonk Kshatriya', 1, NULL, NULL),
(347, 1, 'Turupu Kapu', 1, NULL, NULL),
(348, 1, 'Urs', 1, NULL, NULL),
(349, 1, 'Valluvan', 1, NULL, NULL),
(350, 1, 'Variar', 1, NULL, NULL),
(351, 1, 'Varshney', 1, NULL, NULL),
(352, 1, 'Velaan', 1, NULL, NULL),
(353, 1, 'Brahmin - Velanadu', 1, NULL, NULL),
(354, 1, 'Vettuva Gounder', 1, NULL, NULL),
(355, 1, 'Vada Balija', 1, NULL, NULL),
(356, 1, 'Yellapu', 1, NULL, NULL),
(357, 1, 'Raigar', 1, NULL, NULL),
(358, 1, 'Badaga', 1, NULL, NULL),
(359, 1, 'Thakore', 1, NULL, NULL),
(360, 1, 'Pathare Prabhu', 1, NULL, NULL),
(361, 1, 'Lohar', 1, NULL, NULL),
(362, 1, 'Brahmin - Gujar Gaur', 1, NULL, NULL),
(363, 1, 'Brahmin - Sikhwal', 1, NULL, NULL),
(364, 1, 'Srisayana', 1, NULL, NULL),
(365, 1, 'Poosala', 1, NULL, NULL),
(366, 1, 'Ganda', 1, NULL, NULL),
(367, 1, 'Ayyaraka', 1, NULL, NULL),
(368, 1, 'Rajbhar', 1, NULL, NULL),
(369, 1, 'Brahmin - Vaikhanasa', 1, NULL, NULL),
(370, 1, 'Pandaram', 1, NULL, NULL),
(371, 1, 'Koli Mahadev', 1, NULL, NULL),
(372, 1, 'Bishnoi/Vishnoi', 1, NULL, NULL),
(373, 1, 'Kahar', 1, NULL, NULL),
(374, 1, 'Adi Andhra', 1, NULL, NULL),
(375, 1, 'Adi Karnataka', 1, NULL, NULL),
(376, 1, 'Brahmin - Paliwal', 1, NULL, NULL),
(377, 1, 'Kalal', 1, NULL, NULL),
(378, 1, 'Urali Gounder', 1, NULL, NULL),
(379, 1, 'Bagdi', 1, NULL, NULL),
(380, 1, 'Bajantri', 1, NULL, NULL),
(381, 1, 'Banayat Oriya', 1, NULL, NULL),
(382, 1, 'Baniya - Bania', 1, NULL, NULL),
(383, 1, 'Baniya - Kumuti', 1, NULL, NULL),
(384, 1, 'Baria', 1, NULL, NULL),
(385, 1, 'Bhoi', 1, NULL, NULL),
(386, 1, 'Bondili', 1, NULL, NULL),
(387, 1, 'Brahmin - Khandelwal', 1, NULL, NULL),
(388, 1, 'Brahmin - Jyotish', 1, NULL, NULL),
(389, 1, 'Brahmin - Pareek', 1, NULL, NULL),
(390, 1, 'Brajastha Maithil', 1, NULL, NULL),
(391, 1, 'Brajastha Maithil', 1, NULL, NULL),
(392, 1, 'Chennadasar', 1, NULL, NULL),
(393, 1, 'Dommala', 1, NULL, NULL),
(394, 1, 'Gatti', 1, NULL, NULL),
(395, 1, 'Halba Koshti', 1, NULL, NULL),
(396, 1, 'Helava', 1, NULL, NULL),
(397, 1, 'Jetty/Malla', 1, NULL, NULL),
(398, 1, 'Kavuthiyya/Ezhavathy', 1, NULL, NULL),
(399, 1, 'Kharwa', 1, NULL, NULL),
(400, 1, 'Kirar', 1, NULL, NULL),
(401, 1, 'Koli Patel', 1, NULL, NULL),
(402, 1, 'Korama', 1, NULL, NULL),
(403, 1, 'Kosthi', 1, NULL, NULL),
(404, 1, 'Krishnavaka', 1, NULL, NULL),
(405, 1, 'Loniya', 1, NULL, NULL),
(406, 1, 'Rajpurohit', 1, NULL, NULL),
(407, 1, 'Ramanandi', 1, NULL, NULL),
(408, 1, 'Ramoshi', 1, NULL, NULL),
(409, 1, 'Ror', 1, NULL, NULL),
(410, 1, 'Surya Balija', 1, NULL, NULL),
(411, 1, 'Vanika Vyshya', 1, NULL, NULL),
(412, 1, 'Jijhotia Brahmin', 1, NULL, NULL),
(413, 1, 'Dhor/Kakkayya', 1, NULL, NULL),
(414, 1, 'Brahmin - Embrandiri', 1, NULL, NULL),
(415, 1, 'Maurya/Shakya', 1, NULL, NULL),
(416, 1, 'Sathwara', 1, NULL, NULL),
(417, 1, 'Bhoyar', 1, NULL, NULL),
(418, 1, 'Chalawadi and Holeya', 1, NULL, NULL),
(419, 1, 'Kalanji', 1, NULL, NULL),
(420, 1, 'Devrukhe Brahmin', 1, NULL, NULL),
(421, 1, 'Ahir Shimpi', 1, NULL, NULL),
(422, 1, 'Balija Naidu', 1, NULL, NULL),
(423, 1, 'Ediga/Goud (Balija)', 1, NULL, NULL),
(424, 1, 'Gajula/Kavarai', 1, NULL, NULL),
(425, 1, 'Setty Balija', 1, NULL, NULL),
(426, 1, 'Kavara', 1, NULL, NULL),
(427, 1, 'Linga Balija', 1, NULL, NULL),
(428, 1, 'Musukama', 1, NULL, NULL),
(429, 1, 'Namdarlu', 1, NULL, NULL),
(430, 1, 'Pagadala', 1, NULL, NULL),
(431, 1, 'Balija Reddy', 1, NULL, NULL),
(432, 1, 'Thota', 1, NULL, NULL),
(433, 1, 'Komti/Arya Vaishya', 1, NULL, NULL),
(434, 1, 'Thiyya Thandan', 1, NULL, NULL),
(435, 1, 'Madhesiya/Kanu/Halwai', 1, NULL, NULL),
(436, 1, 'Shaw/Sahu/Teli', 1, NULL, NULL),
(437, 1, 'Nabit', 1, NULL, NULL),
(438, 1, 'Brahmin - Dadhich', 1, NULL, NULL),
(439, 1, 'Brahmin - Koteshwara/Kota (Madhwa )', 1, NULL, NULL),
(440, 1, 'Brahmin - Shivalli (Madhva)', 1, NULL, NULL),
(441, 1, 'Brahmin - Shukla Yajurvedi', 1, NULL, NULL),
(442, 1, '24 Manai Telugu Chettiar', 1, NULL, NULL),
(443, 1, 'Gandla/Ganiga', 1, NULL, NULL),
(444, 1, 'Parvatha Rajakulam', 1, NULL, NULL),
(445, 1, 'Pattinavar', 1, NULL, NULL),
(446, 1, 'Sadhu Chetty', 1, NULL, NULL),
(447, 1, 'Telugupatti', 1, NULL, NULL),
(448, 1, 'Ezhava Panicker', 1, NULL, NULL),
(449, 1, 'Ezhava Thandan', 1, NULL, NULL),
(450, 1, 'Gounder - Kongu Vellala Gounder', 1, NULL, NULL),
(451, 1, 'Gounder - Nattu Gounder', 1, NULL, NULL),
(452, 1, 'Gounder - Urali Gounder', 1, NULL, NULL),
(453, 1, 'Gounder - Vanniya Kula Kshatriyar', 1, NULL, NULL),
(454, 1, 'Gounder - Vettuva Gounder', 1, NULL, NULL),
(455, 1, 'Gowda - Kuruba Gowda', 1, NULL, NULL),
(456, 1, 'Kanykubj Bania', 1, NULL, NULL),
(457, 1, 'Kapu Naidu', 1, NULL, NULL),
(458, 1, 'Ontari', 1, NULL, NULL),
(459, 1, 'Kayastha (Bengali)', 1, NULL, NULL),
(460, 1, 'Nattu Gounder', 1, NULL, NULL),
(461, 1, 'Perika/Puragiri Kshatriya', 1, NULL, NULL),
(462, 1, 'Thogata Veera Kshatriya', 1, NULL, NULL),
(463, 1, 'Haihaivanshi', 1, NULL, NULL),
(464, 1, 'Kshatriya Kurmi', 1, NULL, NULL),
(465, 1, '96 Kuli Maratha', 1, NULL, NULL),
(466, 1, 'Aramari/Gabit', 1, NULL, NULL),
(467, 1, 'Deshmukh', 1, NULL, NULL),
(468, 1, 'Jhadav', 1, NULL, NULL),
(469, 1, 'Maratha Kshatriya', 1, NULL, NULL),
(470, 1, 'Kunbi Lonari', 1, NULL, NULL),
(471, 1, 'Kunbi Maratha', 1, NULL, NULL),
(472, 1, 'Kunbi Tirale', 1, NULL, NULL),
(473, 1, 'Malwani', 1, NULL, NULL),
(474, 1, 'Patil', 1, NULL, NULL),
(475, 1, 'Saiva Pillai Tirunelveli', 1, NULL, NULL),
(476, 1, 'Sengunthar/Kaikolar', 1, NULL, NULL),
(477, 1, 'Thondai Mandala Vellalar', 1, NULL, NULL),
(478, 1, 'Kongu Nadar', 1, NULL, NULL),
(479, 1, 'Naicker - Vanniya Kula Kshatriyar', 1, NULL, NULL),
(480, 1, 'Kamma Naidu', 1, NULL, NULL),
(481, 1, 'Vadugan', 1, NULL, NULL),
(482, 1, 'Yadava Naidu', 1, NULL, NULL),
(483, 1, 'Vilakithala Nair', 1, NULL, NULL),
(484, 1, 'Brahmin - Anaviln Desai', 1, NULL, NULL),
(485, 1, 'Brahmin - Shri Gaud', 1, NULL, NULL),
(486, 1, 'Brahmin - Rarhi/Radhi', 1, NULL, NULL),
(487, 1, 'Brahmin - Baidhiki/Vaidhiki', 1, NULL, NULL),
(488, 1, 'Brahmin - Khedaval', 1, NULL, NULL),
(489, 1, 'Thogata Veerakshathriya', 1, NULL, NULL),
(490, 1, 'Anjana (Chowdary) Patel', 1, NULL, NULL),
(491, 1, 'Desikar', 1, NULL, NULL),
(492, 1, 'Karkathar', 1, NULL, NULL),
(493, 1, 'Othuvaar', 1, NULL, NULL),
(494, 1, 'Saiva Pillai Thanjavur', 1, NULL, NULL),
(495, 1, 'Desikar Thanjavur', 1, NULL, NULL),
(496, 1, 'Pallan/Devandra Kula Vellalan', 1, NULL, NULL),
(497, 1, 'Kori/Koli', 1, NULL, NULL),
(498, 1, 'Kuruva', 1, NULL, NULL),
(499, 1, 'Rohit/Chamar', 1, NULL, NULL),
(500, 1, 'Sambava', 1, NULL, NULL),
(501, 1, 'Vaishnav Dishaval', 1, NULL, NULL),
(502, 1, 'Vaishnav Kapol', 1, NULL, NULL),
(503, 1, 'Vaishnav Khadyata', 1, NULL, NULL),
(504, 1, 'Vaishnav Lad', 1, NULL, NULL),
(505, 1, 'Vaishnav Modh', 1, NULL, NULL),
(506, 1, 'Vaishnav Porvad', 1, NULL, NULL),
(507, 1, 'Vaishnav Shrimali', 1, NULL, NULL),
(508, 1, 'Vaishnav Sorathaiya', 1, NULL, NULL),
(509, 1, 'Vaishnav Vania', 1, NULL, NULL),
(510, 1, 'Modikarlu', 1, NULL, NULL),
(511, 1, 'Agrahari', 1, NULL, NULL),
(512, 1, 'Asathi', 1, NULL, NULL),
(513, 1, 'Barnwal', 1, NULL, NULL),
(514, 1, 'Dosar/Dusra', 1, NULL, NULL),
(515, 1, 'Gahoi', 1, NULL, NULL),
(516, 1, 'Kasaundhan', 1, NULL, NULL),
(517, 1, 'Keshri (Kesarwani)', 1, NULL, NULL),
(518, 1, 'Maheshwari/Meshri', 1, NULL, NULL),
(519, 1, 'Mahuri', 1, NULL, NULL),
(520, 1, 'Nema', 1, NULL, NULL),
(521, 1, 'Patwa', 1, NULL, NULL),
(522, 1, 'Porwal/Porwar', 1, NULL, NULL),
(523, 1, 'Rastogi', 1, NULL, NULL),
(524, 1, 'Rauniar', 1, NULL, NULL),
(525, 1, 'Ummar/Umre/Bagaria', 1, NULL, NULL),
(526, 1, 'Vani/Vaishya', 1, NULL, NULL),
(527, 1, 'Varshney (Barahseni)', 1, NULL, NULL),
(528, 1, 'Vijayvargia', 1, NULL, NULL),
(529, 1, 'Choudhary', 1, NULL, NULL),
(530, 1, 'Gandha Vanika', 1, NULL, NULL),
(531, 1, 'Lad', 1, NULL, NULL),
(532, 1, 'Modi', 1, NULL, NULL),
(533, 1, 'Padmavati Porwal', 1, NULL, NULL),
(534, 1, 'Rathi', 1, NULL, NULL),
(535, 1, 'Devanga Chettiar', 1, NULL, NULL),
(536, 1, 'Kuruhini Chetty', 1, NULL, NULL),
(537, 1, 'Padmashali', 1, NULL, NULL),
(538, 1, 'Pattusali', 1, NULL, NULL),
(539, 1, 'Achirapakkam Chettiar', 1, NULL, NULL),
(540, 1, 'Agaram Vellan Chettiar', 1, NULL, NULL),
(541, 1, 'Ayira Vysya', 1, NULL, NULL),
(542, 1, 'Beri Chettiar', 1, NULL, NULL),
(543, 1, 'Elur Chetty', 1, NULL, NULL),
(544, 1, 'Kasukara', 1, NULL, NULL),
(545, 1, 'Kongu Chettiar', 1, NULL, NULL),
(546, 1, 'Manjapudur Chettiar', 1, NULL, NULL),
(547, 1, 'Nattukottai Chettiar', 1, NULL, NULL),
(548, 1, 'Pannirandam Chettiar', 1, NULL, NULL),
(549, 1, 'Sozhia Chetty', 1, NULL, NULL),
(550, 1, 'Vadambar', 1, NULL, NULL),
(551, 1, 'Vaniya Chettiar', 1, NULL, NULL),
(552, 1, 'Vellan Chettiars', 1, NULL, NULL),
(553, 1, 'Gounder - Others', 1, NULL, NULL),
(554, 1, 'Ayodhyavasi', 1, NULL, NULL),
(555, 1, 'Chaturth', 1, NULL, NULL),
(556, 1, 'Gulahre', 1, NULL, NULL),
(557, 1, 'Mahor', 1, NULL, NULL),
(558, 1, 'Mathur Vaishya', 1, NULL, NULL),
(559, 1, 'Kapu Reddy', 1, NULL, NULL),
(560, 1, 'Kshatriya Raju', 1, NULL, NULL),
(561, 1, 'Parit', 1, NULL, NULL),
(562, 1, 'Vani', 1, NULL, NULL),
(563, 1, 'Agamudayar/Arcot/Thuluva Vellala', 1, NULL, NULL),
(564, 1, 'Isai Vellalar', 1, NULL, NULL),
(565, 1, 'Veerakodi Vellala', 1, NULL, NULL),
(566, 1, 'Kerala Mudali', 1, NULL, NULL),
(567, 1, 'Naicker - Others', 1, NULL, NULL),
(568, 1, 'Brahmin - Bardai', 1, NULL, NULL),
(569, 1, 'Brahmin - Bhargav', 1, NULL, NULL),
(570, 1, 'Brahmin - Khadayata', 1, NULL, NULL),
(571, 1, 'Brahmin - Mevada', 1, NULL, NULL),
(572, 1, 'Brahmin - Rajgor', 1, NULL, NULL),
(573, 1, 'Brahmin - Sarua', 1, NULL, NULL),
(574, 1, 'Brahmin - Tapodhan', 1, NULL, NULL),
(575, 1, 'Brahmin - Valam', 1, NULL, NULL),
(576, 1, 'Brahmin - Zalora', 1, NULL, NULL),
(577, 1, 'Kaikaala', 1, NULL, NULL),
(578, 1, 'Karakala Bhakthula', 1, NULL, NULL),
(579, 1, 'Karni Bhakthula', 1, NULL, NULL),
(580, 1, 'Kurni', 1, NULL, NULL),
(581, 1, 'Neeli Saali', 1, NULL, NULL),
(582, 1, 'Nessi', 1, NULL, NULL),
(583, 1, 'Shettigar', 1, NULL, NULL),
(584, 1, 'Brahmin - Panicker', 1, NULL, NULL),
(585, 1, 'Aaru Nattu Vellala', 1, NULL, NULL),
(586, 1, 'Cherakula Vellalar', 1, NULL, NULL),
(587, 1, 'Illaththu Pillai', 1, NULL, NULL),
(588, 1, 'Kodikal Pillai', 1, NULL, NULL),
(589, 1, 'Nanjil Mudali', 1, NULL, NULL),
(590, 1, 'Nankudi Vellalar', 1, NULL, NULL),
(591, 1, 'Pandiya Vellalar', 1, NULL, NULL),
(592, 1, 'Nanjil pillai', 1, NULL, NULL),
(593, 1, 'Kumaoni Rajput', 1, NULL, NULL),
(594, 1, 'Mair Rajput Swarnkar', 1, NULL, NULL),
(595, 1, 'Paswan/Dusadh', 1, NULL, NULL),
(596, 1, 'Ahirwar', 1, NULL, NULL),
(597, 1, 'Bairwa', 1, NULL, NULL),
(598, 1, 'Balai', 1, NULL, NULL),
(599, 1, 'Dhanak', 1, NULL, NULL),
(600, 1, 'Julaha', 1, NULL, NULL),
(601, 1, 'Kanakkan Padanna', 1, NULL, NULL),
(602, 1, 'Kandara', 1, NULL, NULL),
(603, 1, 'Khatik', 1, NULL, NULL),
(604, 1, 'Mannan/Velan/Vannan', 1, NULL, NULL),
(605, 1, 'Meghwal', 1, NULL, NULL),
(606, 1, 'Panan', 1, NULL, NULL),
(607, 1, 'Paravan/Bharatar', 1, NULL, NULL),
(608, 1, 'Poundra', 1, NULL, NULL),
(609, 1, 'Pulaya/Cheruman', 1, NULL, NULL),
(610, 1, 'Samagar', 1, NULL, NULL),
(611, 1, 'Satnami', 1, NULL, NULL),
(612, 1, 'Shilpkar', 1, NULL, NULL),
(613, 1, 'Thandan', 1, NULL, NULL),
(614, 1, 'Vettuvan', 1, NULL, NULL),
(615, 1, 'Nanjil Nattu Vellalar', 1, NULL, NULL),
(616, 1, 'Nanjil Vellalar', 1, NULL, NULL),
(617, 1, 'Sonkar', 1, NULL, NULL),
(618, 1, 'Brahmin - Shri Mali', 1, NULL, NULL),
(619, 1, 'Oraon', 1, NULL, NULL),
(620, 1, 'Arakh/Arakvanshiya', 1, NULL, NULL),
(621, 1, 'Poddar', 1, NULL, NULL),
(622, 1, 'Saiva Vellan chettiar', 1, NULL, NULL),
(623, 1, 'Gavandi', 1, NULL, NULL),
(624, 1, 'Bhulia/Meher', 1, NULL, NULL),
(625, 1, 'Valsad', 1, NULL, NULL),
(626, 1, 'Modh Ghanchi', 1, NULL, NULL),
(627, 6, 'Anglo-Indian', 1, NULL, NULL),
(628, 6, 'Born Again', 1, NULL, NULL),
(629, 6, 'Born Again', 1, NULL, NULL),
(630, 6, 'Church of South India', 1, NULL, NULL),
(631, 6, 'Evangelist', 1, NULL, NULL),
(632, 6, 'Jacobite', 1, NULL, NULL),
(633, 6, 'Knanaya', 1, NULL, NULL),
(634, 6, 'Knanaya Catholic', 1, NULL, NULL),
(635, 6, 'Knanaya Jacobite', 1, NULL, NULL),
(636, 6, 'Latin Catholic', 1, NULL, NULL),
(637, 6, 'Malankara Catholic', 1, NULL, NULL),
(638, 6, 'Marthoma', 1, NULL, NULL),
(639, 6, 'Pentecost', 1, NULL, NULL),
(640, 6, 'Roman Catholic', 1, NULL, NULL),
(641, 6, 'Seventh-day Adventist', 1, NULL, NULL),
(642, 6, 'Syrian Catholic', 1, NULL, NULL),
(643, 6, 'Syrian Jacobite', 1, NULL, NULL),
(644, 6, 'Syrian Orthodox', 1, NULL, NULL),
(645, 6, 'Syro Malabar', 1, NULL, NULL),
(646, 6, 'Christian - Others', 1, NULL, NULL),
(647, 6, 'Others', 1, NULL, NULL),
(648, 7, 'Sikh - Ahluwalia', 1, NULL, NULL),
(649, 7, 'Sikh - Arora', 1, NULL, NULL),
(650, 7, 'Sikh - Bhatia', 1, NULL, NULL),
(651, 7, 'Sikh - Bhatra', 1, NULL, NULL),
(652, 7, 'Sikh - Ghumar', 1, NULL, NULL),
(653, 7, 'Sikh - Intercaste', 1, NULL, NULL),
(654, 7, 'Sikh - Jat', 1, NULL, NULL),
(655, 7, 'Sikh - Kamboj', 1, NULL, NULL),
(656, 7, 'Sikh - Khatri', 1, NULL, NULL),
(657, 7, 'Sikh - Kshatriya', 1, NULL, NULL),
(658, 7, 'Sikh - Lubana', 1, NULL, NULL),
(659, 7, 'Sikh - Majabi', 1, NULL, NULL),
(660, 7, 'Sikh - Nai', 1, NULL, NULL),
(661, 7, 'Sikh - Others', 1, NULL, NULL),
(662, 7, 'Sikh - Rai', 1, NULL, NULL),
(663, 7, 'Sikh - Rajput', 1, NULL, NULL),
(664, 7, 'Sikh - Ramdasia', 1, NULL, NULL),
(665, 7, 'Sikh - Ramgharia', 1, NULL, NULL),
(666, 7, 'Sikh - Ravidasia', 1, NULL, NULL),
(667, 7, 'Sikh - Saini', 1, NULL, NULL),
(668, 7, 'Sikh - Tonk Kshatriya', 1, NULL, NULL),
(669, 7, 'Sikh - Unspecified', 1, NULL, NULL),
(670, 3, 'Muslim - Ansari', 1, NULL, NULL),
(671, 3, 'Muslim - Arain', 1, NULL, NULL),
(672, 3, 'Muslim - Awan', 1, NULL, NULL),
(673, 3, 'Muslim - Bohra', 1, NULL, NULL),
(674, 3, 'Muslim - Dekkani', 1, NULL, NULL),
(675, 3, 'Muslim - Dudekula', 1, NULL, NULL),
(676, 3, 'Muslim - Hanafi', 1, NULL, NULL),
(677, 3, 'Muslim - Jat', 1, NULL, NULL),
(678, 3, 'Muslim - Khoja', 1, NULL, NULL),
(679, 3, 'Muslim - Lebbai', 1, NULL, NULL),
(680, 3, 'Muslim - Malik', 1, NULL, NULL),
(681, 3, 'Muslim - Mapila', 1, NULL, NULL),
(682, 3, 'Muslim - Maraicar', 1, NULL, NULL),
(683, 3, 'Muslim - Memon', 1, NULL, NULL),
(684, 3, 'Muslim - Mughal', 1, NULL, NULL),
(685, 3, 'Muslim - Others', 1, NULL, NULL),
(686, 3, 'Muslim - Pathan', 1, NULL, NULL),
(687, 3, 'Muslim - Qureshi', 1, NULL, NULL),
(688, 3, 'Muslim - Rajput', 1, NULL, NULL),
(689, 3, 'Muslim - Rowther', 1, NULL, NULL),
(690, 3, 'Muslim - Shafi', 1, NULL, NULL),
(691, 3, 'Muslim - Sheikh', 1, NULL, NULL),
(692, 3, 'Muslim - Siddiqui', 1, NULL, NULL),
(693, 3, 'Muslim - Syed', 1, NULL, NULL),
(694, 3, 'Muslim - UnSpecified', 1, NULL, NULL),
(695, 4, 'Muslim - Ansari', 1, NULL, NULL),
(696, 4, 'Muslim - Arain', 1, NULL, NULL),
(697, 4, 'Muslim - Awan', 1, NULL, NULL),
(698, 4, 'Muslim - Bohra', 1, NULL, NULL),
(699, 4, 'Muslim - Dekkani', 1, NULL, NULL),
(700, 4, 'Muslim - Dudekula', 1, NULL, NULL),
(701, 4, 'Muslim - Hanafi', 1, NULL, NULL),
(702, 4, 'Muslim - Jat', 1, NULL, NULL),
(703, 4, 'Muslim - Khoja', 1, NULL, NULL),
(704, 4, 'Muslim - Lebbai', 1, NULL, NULL),
(705, 4, 'Muslim - Malik', 1, NULL, NULL),
(706, 4, 'Muslim - Mapila', 1, NULL, NULL),
(707, 4, 'Muslim - Maraicar', 1, NULL, NULL),
(708, 4, 'Muslim - Memon', 1, NULL, NULL),
(709, 4, 'Muslim - Mughal', 1, NULL, NULL),
(710, 4, 'Muslim - Others', 1, NULL, NULL),
(711, 4, 'Muslim - Pathan', 1, NULL, NULL),
(712, 4, 'Muslim - Qureshi', 1, NULL, NULL),
(713, 4, 'Muslim - Rajput', 1, NULL, NULL),
(714, 4, 'Muslim - Rowther', 1, NULL, NULL),
(715, 4, 'Muslim - Shafi', 1, NULL, NULL),
(716, 4, 'Muslim - Sheikh', 1, NULL, NULL),
(717, 4, 'Muslim - Siddiqui', 1, NULL, NULL),
(718, 4, 'Muslim - Syed', 1, NULL, NULL),
(719, 4, 'Muslim - UnSpecified', 1, NULL, NULL),
(720, 5, 'Muslim - Ansari', 1, NULL, NULL),
(721, 5, 'Muslim - Arain', 1, NULL, NULL),
(722, 5, 'Muslim - Awan', 1, NULL, NULL),
(723, 5, 'Muslim - Bohra', 1, NULL, NULL),
(724, 5, 'Muslim - Dekkani', 1, NULL, NULL),
(725, 5, 'Muslim - Dudekula', 1, NULL, NULL),
(726, 5, 'Muslim - Hanafi', 1, NULL, NULL),
(727, 5, 'Muslim - Jat', 1, NULL, NULL),
(728, 5, 'Muslim - Khoja', 1, NULL, NULL),
(729, 5, 'Muslim - Lebbai', 1, NULL, NULL),
(730, 5, 'Muslim - Malik', 1, NULL, NULL),
(731, 5, 'Muslim - Mapila', 1, NULL, NULL),
(732, 5, 'Muslim - Maraicar', 1, NULL, NULL),
(733, 5, 'Muslim - Memon', 1, NULL, NULL),
(734, 5, 'Muslim - Mughal', 1, NULL, NULL),
(735, 5, 'Muslim - Others', 1, NULL, NULL),
(736, 5, 'Muslim - Pathan', 1, NULL, NULL),
(737, 5, 'Muslim - Qureshi', 1, NULL, NULL),
(738, 5, 'Muslim - Rajput', 1, NULL, NULL),
(739, 5, 'Muslim - Rowther', 1, NULL, NULL),
(740, 5, 'Muslim - Shafi', 1, NULL, NULL),
(741, 5, 'Muslim - Sheikh', 1, NULL, NULL),
(742, 5, 'Muslim - Siddiqui', 1, NULL, NULL),
(743, 5, 'Muslim - Syed', 1, NULL, NULL),
(744, 5, 'Muslim - UnSpecified', 1, NULL, NULL),
(745, 9, 'Jain - Agarwal', 1, NULL, NULL),
(746, 9, 'Jain - Asati', 1, NULL, NULL),
(747, 9, 'Jain - Ayodhyavasi', 1, NULL, NULL),
(748, 9, 'Jain - Bagherwal', 1, NULL, NULL),
(749, 9, 'Jain - Bania', 1, NULL, NULL),
(750, 9, 'Jain - Barhiya', 1, NULL, NULL),
(751, 9, 'Jain - Charanagare', 1, NULL, NULL),
(752, 9, 'Jain - Chaturtha', 1, NULL, NULL),
(753, 9, 'Jain - Dhakada', 1, NULL, NULL),
(754, 9, 'Jain - Gahoi / Grihapati', 1, NULL, NULL),
(755, 9, 'Jain - Golalare / Kharaua', 1, NULL, NULL),
(756, 9, 'Jain - Golapurva', 1, NULL, NULL),
(757, 9, 'Jain - Golsinghare', 1, NULL, NULL),
(758, 9, 'Jain - Harada', 1, NULL, NULL),
(759, 9, 'Jain - Humad / Humbad', 1, NULL, NULL),
(760, 9, 'Jain - Intercaste', 1, NULL, NULL),
(761, 9, 'Jain - Jaiswal', 1, NULL, NULL),
(762, 9, 'Jain - KVO', 1, NULL, NULL),
(763, 9, 'Jain - Kambhoja', 1, NULL, NULL),
(764, 9, 'Jain - Kasar', 1, NULL, NULL),
(765, 9, 'Jain - Kathanere', 1, NULL, NULL),
(766, 9, 'Jain - Khandelwal', 1, NULL, NULL),
(767, 9, 'Jain - Kharaua', 1, NULL, NULL),
(768, 9, 'Jain - Kutchi', 1, NULL, NULL),
(769, 9, 'Jain - Lamechu', 1, NULL, NULL),
(770, 9, 'Jain - Nema', 1, NULL, NULL),
(771, 9, 'Jain - Oswal', 1, NULL, NULL),
(772, 9, 'Jain - Others', 1, NULL, NULL),
(773, 9, 'Jain - Padmavati Porwal', 1, NULL, NULL),
(774, 9, 'Jain - Palliwal', 1, NULL, NULL),
(775, 9, 'Jain - Panchama', 1, NULL, NULL),
(776, 9, 'Jain - Parmar', 1, NULL, NULL),
(777, 9, 'Jain - Parwar / Paravara', 1, NULL, NULL),
(778, 9, 'Jain - Porwad / Porwal', 1, NULL, NULL),
(779, 9, 'Jain - Porwal', 1, NULL, NULL),
(780, 9, 'Jain - Saitwal', 1, NULL, NULL),
(781, 9, 'Jain - Samanar / Nayinar', 1, NULL, NULL),
(782, 9, 'Jain - Samiya', 1, NULL, NULL),
(783, 9, 'Jain - Sarak', 1, NULL, NULL),
(784, 9, 'Jain - Shrimal', 1, NULL, NULL),
(785, 9, 'Jain - Unspecified', 1, NULL, NULL),
(786, 9, 'Jain - Upadhyaya', 1, NULL, NULL),
(787, 9, 'Jain - Vaishya', 1, NULL, NULL),
(788, 9, 'Jain - Veerwal', 1, NULL, NULL),
(789, 10, 'Jain - Agarwal', 1, NULL, NULL),
(790, 10, 'Jain - Asati', 1, NULL, NULL),
(791, 10, 'Jain - Ayodhyavasi', 1, NULL, NULL),
(792, 10, 'Jain - Bagherwal', 1, NULL, NULL),
(793, 10, 'Jain - Bania', 1, NULL, NULL),
(794, 10, 'Jain - Barhiya', 1, NULL, NULL),
(795, 10, 'Jain - Charanagare', 1, NULL, NULL),
(796, 10, 'Jain - Chaturtha', 1, NULL, NULL),
(797, 10, 'Jain - Dhakada', 1, NULL, NULL),
(798, 10, 'Jain - Gahoi / Grihapati', 1, NULL, NULL),
(799, 10, 'Jain - Golalare / Kharaua', 1, NULL, NULL),
(800, 10, 'Jain - Golapurva', 1, NULL, NULL),
(801, 10, 'Jain - Golsinghare', 1, NULL, NULL),
(802, 10, 'Jain - Harada', 1, NULL, NULL),
(803, 10, 'Jain - Humad / Humbad', 1, NULL, NULL),
(804, 10, 'Jain - Intercaste', 1, NULL, NULL),
(805, 10, 'Jain - Jaiswal', 1, NULL, NULL),
(806, 10, 'Jain - KVO', 1, NULL, NULL),
(807, 10, 'Jain - Kambhoja', 1, NULL, NULL),
(808, 10, 'Jain - Kasar', 1, NULL, NULL),
(809, 10, 'Jain - Kathanere', 1, NULL, NULL),
(810, 10, 'Jain - Khandelwal', 1, NULL, NULL),
(811, 10, 'Jain - Kharaua', 1, NULL, NULL),
(812, 10, 'Jain - Kutchi', 1, NULL, NULL),
(813, 10, 'Jain - Lamechu', 1, NULL, NULL),
(814, 10, 'Jain - Nema', 1, NULL, NULL),
(815, 10, 'Jain - Oswal', 1, NULL, NULL),
(816, 10, 'Jain - Others', 1, NULL, NULL),
(817, 10, 'Jain - Padmavati Porwal', 1, NULL, NULL),
(818, 10, 'Jain - Palliwal', 1, NULL, NULL),
(819, 10, 'Jain - Panchama', 1, NULL, NULL),
(820, 10, 'Jain - Parmar', 1, NULL, NULL),
(821, 10, 'Jain - Parwar / Paravara', 1, NULL, NULL),
(822, 10, 'Jain - Porwad / Porwal', 1, NULL, NULL),
(823, 10, 'Jain - Porwal', 1, NULL, NULL),
(824, 10, 'Jain - Saitwal', 1, NULL, NULL),
(825, 10, 'Jain - Samanar / Nayinar', 1, NULL, NULL),
(826, 10, 'Jain - Samiya', 1, NULL, NULL),
(827, 10, 'Jain - Sarak', 1, NULL, NULL),
(828, 10, 'Jain - Shrimal', 1, NULL, NULL),
(829, 10, 'Jain - Unspecified', 1, NULL, NULL),
(830, 10, 'Jain - Upadhyaya', 1, NULL, NULL),
(831, 10, 'Jain - Vaishya', 1, NULL, NULL),
(832, 10, 'Jain - Veerwal', 1, NULL, NULL),
(833, 11, 'Jain - Agarwal', 1, NULL, NULL),
(834, 11, 'Jain - Asati', 1, NULL, NULL),
(835, 11, 'Jain - Ayodhyavasi', 1, NULL, NULL),
(836, 11, 'Jain - Bagherwal', 1, NULL, NULL),
(837, 11, 'Jain - Bania', 1, NULL, NULL),
(838, 11, 'Jain - Barhiya', 1, NULL, NULL),
(839, 11, 'Jain - Charanagare', 1, NULL, NULL),
(840, 11, 'Jain - Chaturtha', 1, NULL, NULL),
(841, 11, 'Jain - Dhakada', 1, NULL, NULL),
(842, 11, 'Jain - Gahoi / Grihapati', 1, NULL, NULL),
(843, 11, 'Jain - Golalare / Kharaua', 1, NULL, NULL),
(844, 11, 'Jain - Golapurva', 1, NULL, NULL),
(845, 11, 'Jain - Golsinghare', 1, NULL, NULL),
(846, 11, 'Jain - Harada', 1, NULL, NULL),
(847, 11, 'Jain - Humad / Humbad', 1, NULL, NULL),
(848, 11, 'Jain - Intercaste', 1, NULL, NULL),
(849, 11, 'Jain - Jaiswal', 1, NULL, NULL),
(850, 11, 'Jain - KVO', 1, NULL, NULL),
(851, 11, 'Jain - Kambhoja', 1, NULL, NULL),
(852, 11, 'Jain - Kasar', 1, NULL, NULL),
(853, 11, 'Jain - Kathanere', 1, NULL, NULL),
(854, 11, 'Jain - Khandelwal', 1, NULL, NULL),
(855, 11, 'Jain - Kharaua', 1, NULL, NULL),
(856, 11, 'Jain - Kutchi', 1, NULL, NULL),
(857, 11, 'Jain - Lamechu', 1, NULL, NULL),
(858, 11, 'Jain - Nema', 1, NULL, NULL),
(859, 11, 'Jain - Oswal', 1, NULL, NULL),
(860, 11, 'Jain - Others', 1, NULL, NULL),
(861, 11, 'Jain - Padmavati Porwal', 1, NULL, NULL),
(862, 11, 'Jain - Palliwal', 1, NULL, NULL),
(863, 11, 'Jain - Panchama', 1, NULL, NULL),
(864, 11, 'Jain - Parmar', 1, NULL, NULL),
(865, 11, 'Jain - Parwar / Paravara', 1, NULL, NULL),
(866, 11, 'Jain - Porwad / Porwal', 1, NULL, NULL),
(867, 11, 'Jain - Porwal', 1, NULL, NULL),
(868, 11, 'Jain - Saitwal', 1, NULL, NULL),
(869, 11, 'Jain - Samanar / Nayinar', 1, NULL, NULL),
(870, 11, 'Jain - Samiya', 1, NULL, NULL),
(871, 11, 'Jain - Sarak', 1, NULL, NULL),
(872, 11, 'Jain - Shrimal', 1, NULL, NULL),
(873, 11, 'Jain - Unspecified', 1, NULL, NULL),
(874, 11, 'Jain - Upadhyaya', 1, NULL, NULL),
(875, 11, 'Jain - Vaishya', 1, NULL, NULL),
(876, 11, 'Jain - Veerwal', 1, NULL, NULL),
(877, 12, 'Intercaste', 1, NULL, NULL),
(878, 12, 'Irani', 1, NULL, NULL),
(879, 12, 'Parsi', 1, NULL, NULL),
(880, 12, 'Others', 1, NULL, NULL),
(881, 15, '24 Manai Telugu Chettiar ', 1, NULL, NULL),
(882, 15, ' 96 Kuli Maratha ', 1, NULL, NULL),
(883, 15, ' Aaru Nattu Vellala ', 1, NULL, NULL),
(884, 15, ' Achirapakkam Chettiar ', 1, NULL, NULL),
(885, 15, ' Ad Dharmi ', 1, NULL, NULL),
(886, 15, ' Adi Andhra ', 1, NULL, NULL),
(887, 15, ' Adi Dravidar ', 1, NULL, NULL),
(888, 15, ' Adi Karnataka ', 1, NULL, NULL),
(889, 15, ' Agamudayar / Arcot / Thuluva Vellala ', 1, NULL, NULL),
(890, 15, ' Agaram Vellan Chettiar ', 1, NULL, NULL),
(891, 15, ' Agarwal ', 1, NULL, NULL),
(892, 15, ' Agnikula Kshatriya ', 1, NULL, NULL),
(893, 15, ' Agrahari ', 1, NULL, NULL),
(894, 15, ' Agri ', 1, NULL, NULL),
(895, 15, ' Ahir Shimpi ', 1, NULL, NULL),
(896, 15, ' Ahirwar ', 1, NULL, NULL),
(897, 15, ' Ahom ', 1, NULL, NULL),
(898, 15, ' Ambalavasi ', 1, NULL, NULL),
(899, 15, ' Amil Sindhi ', 1, NULL, NULL),
(900, 15, ' Anavil Brahmin ', 1, NULL, NULL),
(901, 15, ' Anjana (Chowdary) Patel ', 1, NULL, NULL),
(902, 15, ' Arakh / Arakvanshiya ', 1, NULL, NULL),
(903, 15, ' Aramari / Gabit ', 1, NULL, NULL),
(904, 15, ' Arekatica ', 1, NULL, NULL),
(905, 15, ' Arora ', 1, NULL, NULL),
(906, 15, ' Arunthathiyar ', 1, NULL, NULL),
(907, 15, ' Arya Vysya ', 1, NULL, NULL),
(908, 15, ' Asathi ', 1, NULL, NULL),
(909, 15, ' Audichya Brahmin ', 1, NULL, NULL),
(910, 15, ' Ayira Vysya ', 1, NULL, NULL),
(911, 15, ' Ayodhyavasi ', 1, NULL, NULL),
(912, 15, ' Ayyaraka ', 1, NULL, NULL),
(913, 15, ' Badaga ', 1, NULL, NULL),
(914, 15, ' Bagdi ', 1, NULL, NULL),
(915, 15, ' Baibhand Sindhi ', 1, NULL, NULL),
(916, 15, ' Baidya ', 1, NULL, NULL),
(917, 15, ' Bairwa ', 1, NULL, NULL),
(918, 15, ' Baishnab ', 1, NULL, NULL),
(919, 15, ' Baishya ', 1, NULL, NULL),
(920, 15, ' Bajantri ', 1, NULL, NULL),
(921, 15, ' Balai ', 1, NULL, NULL),
(922, 15, ' Balija ', 1, NULL, NULL),
(923, 15, ' Balija Naidu ', 1, NULL, NULL),
(924, 15, ' Balija Reddy ', 1, NULL, NULL),
(925, 15, ' Banayat Oriya ', 1, NULL, NULL),
(926, 15, ' Banik ', 1, NULL, NULL),
(927, 15, ' Baniya ', 1, NULL, NULL),
(928, 15, ' Baniya - Bania ', 1, NULL, NULL),
(929, 15, ' Baniya - Kumuti ', 1, NULL, NULL),
(930, 15, ' Banjara ', 1, NULL, NULL),
(931, 15, ' Barai ', 1, NULL, NULL),
(932, 15, ' Barendra Brahmin ', 1, NULL, NULL),
(933, 15, ' Bari ', 1, NULL, NULL),
(934, 15, ' Baria ', 1, NULL, NULL),
(935, 15, ' Barnwal ', 1, NULL, NULL),
(936, 15, ' Barujibi ', 1, NULL, NULL),
(937, 15, ' Beri Chettiar ', 1, NULL, NULL),
(938, 15, ' Besta ', 1, NULL, NULL),
(939, 15, ' Bhandari ', 1, NULL, NULL),
(940, 15, ' Bhanusali Sindhi   ', 1, NULL, NULL),
(941, 15, ' Bhatia ', 1, NULL, NULL),
(942, 15, ' Bhatia Sindhi   ', 1, NULL, NULL),
(943, 15, ' Bhatraju ', 1, NULL, NULL),
(944, 15, ' Bhatt Brahmin   ', 1, NULL, NULL),
(945, 15, ' Bhavasar Kshatriya ', 1, NULL, NULL),
(946, 15, ' Bhoi ', 1, NULL, NULL),
(947, 15, ' Bhovi ', 1, NULL, NULL),
(948, 15, ' Bhoyar ', 1, NULL, NULL),
(949, 15, ' Bhulia / Meher ', 1, NULL, NULL),
(950, 15, ' Bhumihar Brahmin   ', 1, NULL, NULL),
(951, 15, ' Billava ', 1, NULL, NULL),
(952, 15, ' Bishnoi/Vishnoi ', 1, NULL, NULL),
(953, 15, ' Bondili ', 1, NULL, NULL),
(954, 15, ' Boyar ', 1, NULL, NULL),
(955, 15, ' Brahmbatt ', 1, NULL, NULL),
(956, 15, ' Brahmin - Anavil ', 1, NULL, NULL),
(957, 15, ' Brahmin - Anaviln Desai ', 1, NULL, NULL),
(958, 15, ' Brahmin - Audichya ', 1, NULL, NULL),
(959, 15, ' Brahmin - Baidhiki/Vaidhiki ', 1, NULL, NULL),
(960, 15, ' Brahmin - Bardai ', 1, NULL, NULL),
(961, 15, ' Brahmin - Barendra ', 1, NULL, NULL),
(962, 15, ' Brahmin - Bhargav ', 1, NULL, NULL),
(963, 15, ' Brahmin - Bhatt ', 1, NULL, NULL),
(964, 15, ' Brahmin - Bhumihar ', 1, NULL, NULL),
(965, 15, ' Brahmin - Dadhich ', 1, NULL, NULL),
(966, 15, ' Brahmin - Daivadnya ', 1, NULL, NULL),
(967, 15, ' Brahmin - Danua ', 1, NULL, NULL),
(968, 15, ' Brahmin - Deshastha ', 1, NULL, NULL),
(969, 15, ' Brahmin - Dhiman ', 1, NULL, NULL),
(970, 15, ' Brahmin - Dravida ', 1, NULL, NULL),
(971, 15, ' Brahmin - Embrandiri ', 1, NULL, NULL),
(972, 15, ' Brahmin - Garhwali ', 1, NULL, NULL),
(973, 15, ' Brahmin - Gaur ', 1, NULL, NULL),
(974, 15, ' Brahmin - Goswami/Gosavi ', 1, NULL, NULL),
(975, 15, ' Brahmin - Gujar Gaur ', 1, NULL, NULL),
(976, 15, ' Brahmin - Gurukkal ', 1, NULL, NULL),
(977, 15, ' Brahmin - Halua ', 1, NULL, NULL),
(978, 15, ' Brahmin - Havyaka ', 1, NULL, NULL),
(979, 15, ' Brahmin - Hoysala ', 1, NULL, NULL),
(980, 15, ' Brahmin - Iyengar ', 1, NULL, NULL),
(981, 15, ' Brahmin - Iyer ', 1, NULL, NULL),
(982, 15, ' Brahmin - Jangid ', 1, NULL, NULL),
(983, 15, ' Brahmin - Jhadua ', 1, NULL, NULL),
(984, 15, ' Brahmin - Jyotish ', 1, NULL, NULL),
(985, 15, ' Brahmin - Kanyakubj ', 1, NULL, NULL),
(986, 15, ' Brahmin - Karhade ', 1, NULL, NULL),
(987, 15, ' Brahmin - Khadayata ', 1, NULL, NULL),
(988, 15, ' Brahmin - Khandelwal ', 1, NULL, NULL),
(989, 15, ' Brahmin - Khedaval ', 1, NULL, NULL),
(990, 15, ' Brahmin - Kokanastha ', 1, NULL, NULL),
(991, 15, ' Brahmin - Kota ', 1, NULL, NULL),
(992, 15, ' Brahmin - Koteshwara / Kota (Madhwa ) ', 1, NULL, NULL),
(993, 15, ' Brahmin - Kulin ', 1, NULL, NULL),
(994, 15, ' Brahmin - Kumaoni ', 1, NULL, NULL),
(995, 15, ' Brahmin - Madhwa ', 1, NULL, NULL),
(996, 15, ' Brahmin - Maithil ', 1, NULL, NULL),
(997, 15, ' Brahmin - Mevada ', 1, NULL, NULL),
(998, 15, ' Brahmin - Modh ', 1, NULL, NULL),
(999, 15, ' Brahmin - Mohyal ', 1, NULL, NULL),
(1000, 15, ' Brahmin - Nagar ', 1, NULL, NULL),
(1001, 15, ' Brahmin - Namboodiri ', 1, NULL, NULL),
(1002, 15, ' Brahmin - Narmadiya  ', 1, NULL, NULL),
(1003, 15, ' Brahmin - Niyogi ', 1, NULL, NULL),
(1004, 15, ' Brahmin - Others ', 1, NULL, NULL),
(1005, 15, ' Brahmin - Paliwal ', 1, NULL, NULL),
(1006, 15, ' Brahmin - Panda ', 1, NULL, NULL),
(1007, 15, ' Brahmin - Pandit ', 1, NULL, NULL),
(1008, 15, ' Brahmin - Panicker ', 1, NULL, NULL),
(1009, 15, ' Brahmin - Pareek ', 1, NULL, NULL),
(1010, 15, ' Brahmin - Pushkarna ', 1, NULL, NULL),
(1011, 15, ' Brahmin - Rajgor ', 1, NULL, NULL),
(1012, 15, ' Brahmin - Rarhi ', 1, NULL, NULL),
(1013, 15, ' Brahmin - Rarhi/Radhi ', 1, NULL, NULL),
(1014, 15, ' Brahmin - Rigvedi ', 1, NULL, NULL),
(1015, 15, ' Brahmin - Rudraj ', 1, NULL, NULL),
(1016, 15, ' Brahmin - Sakaldwipi ', 1, NULL, NULL),
(1017, 15, ' Brahmin - Sanadya ', 1, NULL, NULL),
(1018, 15, ' Brahmin - Sanketi ', 1, NULL, NULL),
(1019, 15, ' Brahmin - Saraswat ', 1, NULL, NULL),
(1020, 15, ' Brahmin - Sarua ', 1, NULL, NULL),
(1021, 15, ' Brahmin - Saryuparin ', 1, NULL, NULL),
(1022, 15, ' Brahmin - Shivalli (Madhva) ', 1, NULL, NULL),
(1023, 15, ' Brahmin - Shivhalli ', 1, NULL, NULL),
(1024, 15, ' Brahmin - Shri Gaud ', 1, NULL, NULL),
(1025, 15, ' Brahmin - Shri Mali ', 1, NULL, NULL),
(1026, 15, ' Brahmin - Shrimali ', 1, NULL, NULL),
(1027, 15, ' Brahmin - Shukla Yajurvedi ', 1, NULL, NULL),
(1028, 15, ' Brahmin - Sikhwal ', 1, NULL, NULL),
(1029, 15, ' Brahmin - Smartha ', 1, NULL, NULL),
(1030, 15, ' Brahmin - Sri Vaishnava ', 1, NULL, NULL),
(1031, 15, ' Brahmin - Stanika ', 1, NULL, NULL),
(1032, 15, ' Brahmin - Tapodhan ', 1, NULL, NULL),
(1033, 15, ' Brahmin - Tyagi ', 1, NULL, NULL),
(1034, 15, ' Brahmin - Vaidiki ', 1, NULL, NULL),
(1035, 15, ' Brahmin - Vaikhanasa ', 1, NULL, NULL),
(1036, 15, ' Brahmin - Valam ', 1, NULL, NULL),
(1037, 15, ' Brahmin - Velanadu ', 1, NULL, NULL),
(1038, 15, ' Brahmin - Vyas ', 1, NULL, NULL),
(1039, 15, ' Brahmin - Zalora ', 1, NULL, NULL),
(1040, 15, ' Brahmin Jijhotia   ', 1, NULL, NULL),
(1041, 15, ' Brahmin Malviya   ', 1, NULL, NULL),
(1042, 15, ' Brajastha Maithil ', 1, NULL, NULL),
(1043, 15, ' Bunt (Shetty) ', 1, NULL, NULL),
(1044, 15, ' CKP ', 1, NULL, NULL),
(1045, 15, ' Chalawadi and Holeya ', 1, NULL, NULL),
(1046, 15, ' Chambhar ', 1, NULL, NULL),
(1047, 15, ' Chandravanshi Kahar ', 1, NULL, NULL),
(1048, 15, ' Chasa ', 1, NULL, NULL),
(1049, 15, ' Chattada Sri Vaishnava  ', 1, NULL, NULL),
(1050, 15, ' Chaturth ', 1, NULL, NULL),
(1051, 15, ' Chaudary ', 1, NULL, NULL),
(1052, 15, ' Chaurasia ', 1, NULL, NULL),
(1053, 15, ' Chennadasar ', 1, NULL, NULL),
(1054, 15, ' Cherakula Vellalar ', 1, NULL, NULL),
(1055, 15, ' Chettiar ', 1, NULL, NULL),
(1056, 15, ' Chhapru Sindhi   ', 1, NULL, NULL),
(1057, 15, ' Chhetri ', 1, NULL, NULL),
(1058, 15, ' Chippolu (Mera) ', 1, NULL, NULL),
(1059, 15, ' Choudhary ', 1, NULL, NULL),
(1060, 15, ' Coorgi ', 1, NULL, NULL),
(1061, 15, ' Dadu Sindhi   ', 1, NULL, NULL),
(1062, 15, ' Daivadnya Brahmin   ', 1, NULL, NULL),
(1063, 15, ' Danua Brahmin   ', 1, NULL, NULL),
(1064, 15, ' Darji   ', 1, NULL, NULL),
(1065, 15, ' Deshastha Brahmin   ', 1, NULL, NULL),
(1066, 15, ' Deshmukh ', 1, NULL, NULL),
(1067, 15, ' Desikar ', 1, NULL, NULL),
(1068, 15, ' Desikar Thanjavur ', 1, NULL, NULL),
(1069, 15, ' Devadiga ', 1, NULL, NULL),
(1070, 15, ' Devandra Kula Vellalar ', 1, NULL, NULL),
(1071, 15, ' Devang Koshthi ', 1, NULL, NULL),
(1072, 15, ' Devanga ', 1, NULL, NULL),
(1073, 15, ' Devanga Chettiar ', 1, NULL, NULL),
(1074, 15, ' Devar/Thevar/Mukkulathor ', 1, NULL, NULL),
(1075, 15, ' Devrukhe Brahmin ', 1, NULL, NULL),
(1076, 15, ' Dhanak ', 1, NULL, NULL),
(1077, 15, ' Dhangar ', 1, NULL, NULL),
(1078, 15, ' Dheevara ', 1, NULL, NULL),
(1079, 15, ' Dhiman ', 1, NULL, NULL),
(1080, 15, ' Dhiman Brahmin   ', 1, NULL, NULL),
(1081, 15, ' Dhoba ', 1, NULL, NULL),
(1082, 15, ' Dhobi ', 1, NULL, NULL),
(1083, 15, ' Dhor / Kakkayya ', 1, NULL, NULL),
(1084, 15, ' Dommala ', 1, NULL, NULL),
(1085, 15, ' Dosar / Dusra ', 1, NULL, NULL),
(1086, 15, ' Dravida Brahmin   ', 1, NULL, NULL),
(1087, 15, ' Dumal ', 1, NULL, NULL),
(1088, 15, ' Dusadh (Paswan) ', 1, NULL, NULL),
(1089, 15, ' Ediga ', 1, NULL, NULL),
(1090, 15, ' Ediga /Goud (Balija) ', 1, NULL, NULL),
(1091, 15, ' Elur Chetty ', 1, NULL, NULL),
(1092, 15, ' Embrandiri Brahmin   ', 1, NULL, NULL),
(1093, 15, ' Ezhava ', 1, NULL, NULL),
(1094, 15, ' Ezhava Panicker ', 1, NULL, NULL),
(1095, 15, ' Ezhava Thandan ', 1, NULL, NULL),
(1096, 15, ' Ezhuthachan ', 1, NULL, NULL),
(1097, 15, ' Gabit ', 1, NULL, NULL),
(1098, 15, ' Gahoi ', 1, NULL, NULL),
(1099, 15, ' Gajula / Kavarai ', 1, NULL, NULL),
(1100, 15, ' Ganda ', 1, NULL, NULL),
(1101, 15, ' Gandha Vanika ', 1, NULL, NULL),
(1102, 15, ' Gandla ', 1, NULL, NULL),
(1103, 15, ' Gandla / Ganiga ', 1, NULL, NULL),
(1104, 15, ' Ganiga ', 1, NULL, NULL),
(1105, 15, ' Garhwali ', 1, NULL, NULL),
(1106, 15, ' Garhwali Brahmin   ', 1, NULL, NULL),
(1107, 15, ' Gatti ', 1, NULL, NULL),
(1108, 15, ' Gaur Brahmin   ', 1, NULL, NULL),
(1109, 15, ' Gavandi ', 1, NULL, NULL),
(1110, 15, ' Gavara ', 1, NULL, NULL),
(1111, 15, ' Gawali ', 1, NULL, NULL),
(1112, 15, ' Ghisadi ', 1, NULL, NULL),
(1113, 15, ' Ghumar ', 1, NULL, NULL),
(1114, 15, ' Goala ', 1, NULL, NULL),
(1115, 15, ' Goan ', 1, NULL, NULL),
(1116, 15, ' Gomantak ', 1, NULL, NULL),
(1117, 15, ' Gondhali ', 1, NULL, NULL),
(1118, 15, ' Goswami/Gosavi Brahmin   ', 1, NULL, NULL),
(1119, 15, ' Goud ', 1, NULL, NULL),
(1120, 15, ' Gounder ', 1, NULL, NULL),
(1121, 15, ' Gounder - Kongu Vellala Gounder ', 1, NULL, NULL),
(1122, 15, ' Gounder - Nattu Gounder ', 1, NULL, NULL),
(1123, 15, ' Gounder - Others ', 1, NULL, NULL),
(1124, 15, ' Gounder - Urali Gounder ', 1, NULL, NULL),
(1125, 15, ' Gounder - Vanniya Kula Kshatriyar ', 1, NULL, NULL),
(1126, 15, ' Gounder - Vettuva Gounder ', 1, NULL, NULL),
(1127, 15, ' Gowda ', 1, NULL, NULL),
(1128, 15, ' Gowda - Kuruba Gowda ', 1, NULL, NULL),
(1129, 15, ' Gramani ', 1, NULL, NULL),
(1130, 15, ' Gudia ', 1, NULL, NULL),
(1131, 15, ' Gujar Gaur Brahmin   ', 1, NULL, NULL),
(1132, 15, ' Gujjar ', 1, NULL, NULL),
(1133, 15, ' Gulahre ', 1, NULL, NULL),
(1134, 15, ' Gupta ', 1, NULL, NULL),
(1135, 15, ' Guptan ', 1, NULL, NULL),
(1136, 15, ' Gurav ', 1, NULL, NULL),
(1137, 15, ' Gurjar ', 1, NULL, NULL),
(1138, 15, ' Gurukkal Brahmin   ', 1, NULL, NULL),
(1139, 15, ' Haihaivanshi ', 1, NULL, NULL),
(1140, 15, ' Halba Koshti ', 1, NULL, NULL),
(1141, 15, ' Halua Brahmin   ', 1, NULL, NULL),
(1142, 15, ' Havyaka Brahmin   ', 1, NULL, NULL),
(1143, 15, ' Helava ', 1, NULL, NULL),
(1144, 15, ' Hoysala Brahmin   ', 1, NULL, NULL),
(1145, 15, ' Hugar (Jeer) ', 1, NULL, NULL),
(1146, 15, ' Hyderabadi Sindhi   ', 1, NULL, NULL),
(1147, 15, ' Illaththu Pillai ', 1, NULL, NULL),
(1148, 15, ' Intercaste ', 1, NULL, NULL),
(1149, 15, ' Irani ', 1, NULL, NULL),
(1150, 15, ' Isai Vellalar ', 1, NULL, NULL),
(1151, 15, ' Iyengar Brahmin   ', 1, NULL, NULL),
(1152, 15, ' Iyer Brahmin   ', 1, NULL, NULL),
(1153, 15, ' Jaalari ', 1, NULL, NULL),
(1154, 15, ' Jaiswal ', 1, NULL, NULL),
(1155, 15, ' Jandra ', 1, NULL, NULL),
(1156, 15, ' Jangam ', 1, NULL, NULL),
(1157, 15, ' Jangid Brahmin   ', 1, NULL, NULL),
(1158, 15, ' Jangra - Brahmin ', 1, NULL, NULL),
(1159, 15, ' Jat ', 1, NULL, NULL),
(1160, 15, ' Jatav ', 1, NULL, NULL),
(1161, 15, ' Jeer   ', 1, NULL, NULL),
(1162, 15, ' Jetty/Malla ', 1, NULL, NULL),
(1163, 15, ' Jhadav ', 1, NULL, NULL),
(1164, 15, ' Jhadua Brahmin   ', 1, NULL, NULL),
(1165, 15, ' Jijhotia Brahmin ', 1, NULL, NULL),
(1166, 15, ' Jogi (Nath) ', 1, NULL, NULL),
(1167, 15, ' Julaha ', 1, NULL, NULL),
(1168, 15, ' Kachara ', 1, NULL, NULL),
(1169, 15, ' Kadava Patel ', 1, NULL, NULL),
(1170, 15, ' Kahar ', 1, NULL, NULL),
(1171, 15, ' Kaibarta ', 1, NULL, NULL),
(1172, 15, ' Kaikaala ', 1, NULL, NULL),
(1173, 15, ' Kalal ', 1, NULL, NULL),
(1174, 15, ' Kalanji ', 1, NULL, NULL),
(1175, 15, ' Kalar ', 1, NULL, NULL),
(1176, 15, ' Kalinga ', 1, NULL, NULL),
(1177, 15, ' Kalinga Vysya ', 1, NULL, NULL),
(1178, 15, ' Kalita ', 1, NULL, NULL),
(1179, 15, ' Kalwar ', 1, NULL, NULL),
(1180, 15, ' Kamboj ', 1, NULL, NULL),
(1181, 15, ' Kamma ', 1, NULL, NULL),
(1182, 15, ' Kamma Naidu ', 1, NULL, NULL),
(1183, 15, ' Kanakkan Padanna ', 1, NULL, NULL),
(1184, 15, ' Kandara ', 1, NULL, NULL),
(1185, 15, ' Kansari ', 1, NULL, NULL),
(1186, 15, ' Kanyakubj Brahmin   ', 1, NULL, NULL),
(1187, 15, ' Kanykubj Bania ', 1, NULL, NULL),
(1188, 15, ' Kapu ', 1, NULL, NULL),
(1189, 15, ' Kapu Naidu ', 1, NULL, NULL),
(1190, 15, ' Kapu Reddy ', 1, NULL, NULL),
(1191, 15, ' Karakala Bhakthula ', 1, NULL, NULL),
(1192, 15, ' Karana ', 1, NULL, NULL),
(1193, 15, ' Karhade Brahmin   ', 1, NULL, NULL),
(1194, 15, ' Karkathar ', 1, NULL, NULL),
(1195, 15, ' Karmakar ', 1, NULL, NULL),
(1196, 15, ' Karni Bhakthula ', 1, NULL, NULL),
(1197, 15, ' Karuneegar ', 1, NULL, NULL),
(1198, 15, ' Kasar ', 1, NULL, NULL),
(1199, 15, ' Kasaundhan ', 1, NULL, NULL),
(1200, 15, ' Kashyap ', 1, NULL, NULL),
(1201, 15, ' Kasukara ', 1, NULL, NULL),
(1202, 15, ' Katiya ', 1, NULL, NULL),
(1203, 15, ' Kavara ', 1, NULL, NULL),
(1204, 15, ' Kavuthiyya/Ezhavathy ', 1, NULL, NULL),
(1205, 15, ' Kayastha ', 1, NULL, NULL),
(1206, 15, ' Kayastha (Bengali) ', 1, NULL, NULL),
(1207, 15, ' Kerala Mudali ', 1, NULL, NULL),
(1208, 15, ' Keshri (Kesarwani) ', 1, NULL, NULL),
(1209, 15, ' Khandayat ', 1, NULL, NULL),
(1210, 15, ' Khandelwal ', 1, NULL, NULL),
(1211, 15, ' Kharwa ', 1, NULL, NULL),
(1212, 15, ' Kharwar ', 1, NULL, NULL),
(1213, 15, ' Khatik ', 1, NULL, NULL),
(1214, 15, ' Khatri ', 1, NULL, NULL),
(1215, 15, ' Kirar ', 1, NULL, NULL),
(1216, 15, ' Kodikal Pillai ', 1, NULL, NULL),
(1217, 15, ' Koiri   ', 1, NULL, NULL),
(1218, 15, ' Kokanastha Brahmin   ', 1, NULL, NULL),
(1219, 15, ' Kokanastha Maratha ', 1, NULL, NULL),
(1220, 15, ' Koli ', 1, NULL, NULL),
(1221, 15, ' Koli Mahadev ', 1, NULL, NULL),
(1222, 15, ' Koli Patel ', 1, NULL, NULL),
(1223, 15, ' Komti /Arya Vaishya ', 1, NULL, NULL),
(1224, 15, ' Kongu Chettiar ', 1, NULL, NULL),
(1225, 15, ' Kongu Nadar ', 1, NULL, NULL),
(1226, 15, ' Kongu Vellala Gounder ', 1, NULL, NULL),
(1227, 15, ' Konkani ', 1, NULL, NULL),
(1228, 15, ' Korama ', 1, NULL, NULL),
(1229, 15, ' Kori ', 1, NULL, NULL),
(1230, 15, ' Kori/Koli ', 1, NULL, NULL),
(1231, 15, ' Kosthi ', 1, NULL, NULL),
(1232, 15, ' Kota Brahmin   ', 1, NULL, NULL),
(1233, 15, ' Krishnavaka ', 1, NULL, NULL),
(1234, 15, ' Kshatriya ', 1, NULL, NULL),
(1235, 15, ' Kshatriya Kurmi ', 1, NULL, NULL);
INSERT INTO `caste` (`id`, `religion_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1236, 15, ' Kshatriya Raju ', 1, NULL, NULL),
(1237, 15, ' Kudumbi ', 1, NULL, NULL),
(1238, 15, ' Kulal ', 1, NULL, NULL),
(1239, 15, ' Kulalar ', 1, NULL, NULL),
(1240, 15, ' Kulin Brahmin   ', 1, NULL, NULL),
(1241, 15, ' Kulita ', 1, NULL, NULL),
(1242, 15, ' Kumaoni Brahmin   ', 1, NULL, NULL),
(1243, 15, ' Kumaoni Rajput ', 1, NULL, NULL),
(1244, 15, ' Kumawat ', 1, NULL, NULL),
(1245, 15, ' Kumbhakar ', 1, NULL, NULL),
(1246, 15, ' Kumbhar ', 1, NULL, NULL),
(1247, 15, ' Kumhar ', 1, NULL, NULL),
(1248, 15, ' Kummari ', 1, NULL, NULL),
(1249, 15, ' Kunbi ', 1, NULL, NULL),
(1250, 15, ' Kunbi Lonari ', 1, NULL, NULL),
(1251, 15, ' Kunbi Maratha ', 1, NULL, NULL),
(1252, 15, ' Kunbi Tirale ', 1, NULL, NULL),
(1253, 15, ' Kuravan ', 1, NULL, NULL),
(1254, 15, ' Kurmi ', 1, NULL, NULL),
(1255, 15, ' Kurmi/Kurmi Kshatriya ', 1, NULL, NULL),
(1256, 15, ' Kurni ', 1, NULL, NULL),
(1257, 15, ' Kuruba ', 1, NULL, NULL),
(1258, 15, ' Kuruhina Shetty ', 1, NULL, NULL),
(1259, 15, ' Kuruhini Chetty ', 1, NULL, NULL),
(1260, 15, ' Kurumbar ', 1, NULL, NULL),
(1261, 15, ' Kuruva ', 1, NULL, NULL),
(1262, 15, ' Kushwaha (Koiri) ', 1, NULL, NULL),
(1263, 15, ' Kutchi ', 1, NULL, NULL),
(1264, 15, ' Lad ', 1, NULL, NULL),
(1265, 15, ' Lambadi ', 1, NULL, NULL),
(1266, 15, ' Larai Sindhi   ', 1, NULL, NULL),
(1267, 15, ' Larkana Sindhi   ', 1, NULL, NULL),
(1268, 15, ' Leva patel ', 1, NULL, NULL),
(1269, 15, ' Leva patil ', 1, NULL, NULL),
(1270, 15, ' Linga Balija ', 1, NULL, NULL),
(1271, 15, ' Lingayath ', 1, NULL, NULL),
(1272, 15, ' Lodhi Rajput ', 1, NULL, NULL),
(1273, 15, ' Lohana ', 1, NULL, NULL),
(1274, 15, ' Lohana Sindhi   ', 1, NULL, NULL),
(1275, 15, ' Lohar ', 1, NULL, NULL),
(1276, 15, ' Loniya ', 1, NULL, NULL),
(1277, 15, ' Lubana ', 1, NULL, NULL),
(1278, 15, ' Madhesiya/Kanu/Halwai ', 1, NULL, NULL),
(1279, 15, ' Madhwa Brahmin   ', 1, NULL, NULL),
(1280, 15, ' Madiga ', 1, NULL, NULL),
(1281, 15, ' Mahajan ', 1, NULL, NULL),
(1282, 15, ' Mahar ', 1, NULL, NULL),
(1283, 15, ' Mahendra ', 1, NULL, NULL),
(1284, 15, ' Maheshwari ', 1, NULL, NULL),
(1285, 15, ' Maheshwari / Meshri ', 1, NULL, NULL),
(1286, 15, ' Mahishya ', 1, NULL, NULL),
(1287, 15, ' Mahor ', 1, NULL, NULL),
(1288, 15, ' Mahuri ', 1, NULL, NULL),
(1289, 15, ' Mair Rajput Swarnkar ', 1, NULL, NULL),
(1290, 15, ' Maithil Brahmin   ', 1, NULL, NULL),
(1291, 15, ' Majabi ', 1, NULL, NULL),
(1292, 15, ' Mala ', 1, NULL, NULL),
(1293, 15, ' Mali ', 1, NULL, NULL),
(1294, 15, ' Mallah ', 1, NULL, NULL),
(1295, 15, ' Malviya Brahmin ', 1, NULL, NULL),
(1296, 15, ' Malwani ', 1, NULL, NULL),
(1297, 15, ' Mangalorean ', 1, NULL, NULL),
(1298, 15, ' Manipuri ', 1, NULL, NULL),
(1299, 15, ' Manjapudur Chettiar ', 1, NULL, NULL),
(1300, 15, ' Mannan / Velan / Vannan ', 1, NULL, NULL),
(1301, 15, ' Mapila ', 1, NULL, NULL),
(1302, 15, ' Maratha ', 1, NULL, NULL),
(1303, 15, ' Maratha Kshatriya ', 1, NULL, NULL),
(1304, 15, ' Maruthuvar ', 1, NULL, NULL),
(1305, 15, ' Matang ', 1, NULL, NULL),
(1306, 15, ' Mathur ', 1, NULL, NULL),
(1307, 15, ' Mathur Vaishya ', 1, NULL, NULL),
(1308, 15, ' Maurya / Shakya ', 1, NULL, NULL),
(1309, 15, ' Meena ', 1, NULL, NULL),
(1310, 15, ' Meenavar ', 1, NULL, NULL),
(1311, 15, ' Meghwal ', 1, NULL, NULL),
(1312, 15, ' Mehra ', 1, NULL, NULL),
(1313, 15, ' Mera   ', 1, NULL, NULL),
(1314, 15, ' Meru Darji ', 1, NULL, NULL),
(1315, 15, ' Mochi ', 1, NULL, NULL),
(1316, 15, ' Modak ', 1, NULL, NULL),
(1317, 15, ' Modh Brahmin   ', 1, NULL, NULL),
(1318, 15, ' Modh Ghanchi ', 1, NULL, NULL),
(1319, 15, ' Modi ', 1, NULL, NULL),
(1320, 15, ' Modikarlu ', 1, NULL, NULL),
(1321, 15, ' Mogaveera ', 1, NULL, NULL),
(1322, 15, ' Mohyal Brahmin   ', 1, NULL, NULL),
(1323, 15, ' Mudaliyar ', 1, NULL, NULL),
(1324, 15, ' Mudiraj ', 1, NULL, NULL),
(1325, 15, ' Mukkulathor   ', 1, NULL, NULL),
(1326, 15, ' Munnuru Kapu ', 1, NULL, NULL),
(1327, 15, ' Musukama ', 1, NULL, NULL),
(1328, 15, ' Muthuraja ', 1, NULL, NULL),
(1329, 15, ' Naagavamsam ', 1, NULL, NULL),
(1330, 15, ' Nabit ', 1, NULL, NULL),
(1331, 15, ' Nadar ', 1, NULL, NULL),
(1332, 15, ' Nagar Brahmin   ', 1, NULL, NULL),
(1333, 15, ' Nagaralu ', 1, NULL, NULL),
(1334, 15, ' Nai / Nayi Brahmin ', 1, NULL, NULL),
(1335, 15, ' Naicker ', 1, NULL, NULL),
(1336, 15, ' Naicker - Others ', 1, NULL, NULL),
(1337, 15, ' Naicker - Vanniya Kula Kshatriyar ', 1, NULL, NULL),
(1338, 15, ' Naidu ', 1, NULL, NULL),
(1339, 15, ' Naik ', 1, NULL, NULL),
(1340, 15, ' Naika   ', 1, NULL, NULL),
(1341, 15, ' Nair ', 1, NULL, NULL),
(1342, 15, ' Namasudra / Namassej ', 1, NULL, NULL),
(1343, 15, ' Nambiar ', 1, NULL, NULL),
(1344, 15, ' Namboodiri Brahmin   ', 1, NULL, NULL),
(1345, 15, ' Namdarlu ', 1, NULL, NULL),
(1346, 15, ' Nanjil Mudali ', 1, NULL, NULL),
(1347, 15, ' Nanjil Nattu Vellalar ', 1, NULL, NULL),
(1348, 15, ' Nanjil Vellalar ', 1, NULL, NULL),
(1349, 15, ' Nanjil pillai ', 1, NULL, NULL),
(1350, 15, ' Nankudi Vellalar ', 1, NULL, NULL),
(1351, 15, ' Napit ', 1, NULL, NULL),
(1352, 15, ' Narmadiya Brahmin   ', 1, NULL, NULL),
(1353, 15, ' Nath   ', 1, NULL, NULL),
(1354, 15, ' Nattu Gounder ', 1, NULL, NULL),
(1355, 15, ' Nattukottai Chettiar ', 1, NULL, NULL),
(1356, 15, ' Nayaka ', 1, NULL, NULL),
(1357, 15, ' Neeli ', 1, NULL, NULL),
(1358, 15, ' Neeli Saali ', 1, NULL, NULL),
(1359, 15, ' Nema ', 1, NULL, NULL),
(1360, 15, ' Nepali ', 1, NULL, NULL),
(1361, 15, ' Nessi ', 1, NULL, NULL),
(1362, 15, ' Nhavi ', 1, NULL, NULL),
(1363, 15, ' Niyogi Brahmin   ', 1, NULL, NULL),
(1364, 15, ' Ontari ', 1, NULL, NULL),
(1365, 15, ' Oraon ', 1, NULL, NULL),
(1366, 15, ' Oswal ', 1, NULL, NULL),
(1367, 15, ' Otari ', 1, NULL, NULL),
(1368, 15, ' Othuvaar ', 1, NULL, NULL),
(1369, 15, ' Padmasali ', 1, NULL, NULL),
(1370, 15, ' Padmashali ', 1, NULL, NULL),
(1371, 15, ' Padmavati Porwal ', 1, NULL, NULL),
(1372, 15, ' Pagadala ', 1, NULL, NULL),
(1373, 15, ' Pal ', 1, NULL, NULL),
(1374, 15, ' Pallan / Devandra Kula Vellalan ', 1, NULL, NULL),
(1375, 15, ' Panan ', 1, NULL, NULL),
(1376, 15, ' Panchal ', 1, NULL, NULL),
(1377, 15, ' Panda Brahmin   ', 1, NULL, NULL),
(1378, 15, ' Pandaram ', 1, NULL, NULL),
(1379, 15, ' Pandit Brahmin   ', 1, NULL, NULL),
(1380, 15, ' Pandiya Vellalar ', 1, NULL, NULL),
(1381, 15, ' Panicker ', 1, NULL, NULL),
(1382, 15, ' Pannirandam Chettiar ', 1, NULL, NULL),
(1383, 15, ' Paravan / Bharatar ', 1, NULL, NULL),
(1384, 15, ' Parit ', 1, NULL, NULL),
(1385, 15, ' Parkavakulam / Udayar ', 1, NULL, NULL),
(1386, 15, ' Parsi ', 1, NULL, NULL),
(1387, 15, ' Partraj ', 1, NULL, NULL),
(1388, 15, ' Parvatha Rajakulam ', 1, NULL, NULL),
(1389, 15, ' Pasi ', 1, NULL, NULL),
(1390, 15, ' Paswan   ', 1, NULL, NULL),
(1391, 15, ' Paswan / Dusadh ', 1, NULL, NULL),
(1392, 15, ' Patel ', 1, NULL, NULL),
(1393, 15, ' Pathare Prabhu ', 1, NULL, NULL),
(1394, 15, ' Patil ', 1, NULL, NULL),
(1395, 15, ' Patnaick/Sistakaranam ', 1, NULL, NULL),
(1396, 15, ' Patra ', 1, NULL, NULL),
(1397, 15, ' Pattinavar ', 1, NULL, NULL),
(1398, 15, ' Pattusali ', 1, NULL, NULL),
(1399, 15, ' Patwa ', 1, NULL, NULL),
(1400, 15, ' Perika ', 1, NULL, NULL),
(1401, 15, ' Perika/Puragiri Kshatriya ', 1, NULL, NULL),
(1402, 15, ' Pillai ', 1, NULL, NULL),
(1403, 15, ' Poddar ', 1, NULL, NULL),
(1404, 15, ' Poosala ', 1, NULL, NULL),
(1405, 15, ' Porwal ', 1, NULL, NULL),
(1406, 15, ' Porwal / Porwar ', 1, NULL, NULL),
(1407, 15, ' Poundra ', 1, NULL, NULL),
(1408, 15, ' Prajapati ', 1, NULL, NULL),
(1409, 15, ' Pulaya /  Cheruman ', 1, NULL, NULL),
(1410, 15, ' Pushkarna Brahmin   ', 1, NULL, NULL),
(1411, 15, ' Raigar ', 1, NULL, NULL),
(1412, 15, ' Rajaka / Vannar ', 1, NULL, NULL),
(1413, 15, ' Rajastani ', 1, NULL, NULL),
(1414, 15, ' Rajbhar ', 1, NULL, NULL),
(1415, 15, ' Rajbonshi ', 1, NULL, NULL),
(1416, 15, ' Rajpurohit ', 1, NULL, NULL),
(1417, 15, ' Rajput ', 1, NULL, NULL),
(1418, 15, ' Ramanandi ', 1, NULL, NULL),
(1419, 15, ' Ramdasia ', 1, NULL, NULL),
(1420, 15, ' Ramgariah ', 1, NULL, NULL),
(1421, 15, ' Ramoshi ', 1, NULL, NULL),
(1422, 15, ' Rarhi Brahmin   ', 1, NULL, NULL),
(1423, 15, ' Rastogi ', 1, NULL, NULL),
(1424, 15, ' Rathi ', 1, NULL, NULL),
(1425, 15, ' Rauniar ', 1, NULL, NULL),
(1426, 15, ' Ravidasia ', 1, NULL, NULL),
(1427, 15, ' Rawat ', 1, NULL, NULL),
(1428, 15, ' Reddy ', 1, NULL, NULL),
(1429, 15, ' Relli ', 1, NULL, NULL),
(1430, 15, ' Rigvedi Brahmin   ', 1, NULL, NULL),
(1431, 15, ' Rohiri Sindhi   ', 1, NULL, NULL),
(1432, 15, ' Rohit / Chamar ', 1, NULL, NULL),
(1433, 15, ' Ror ', 1, NULL, NULL),
(1434, 15, ' Rudraj Brahmin   ', 1, NULL, NULL),
(1435, 15, ' SC ', 1, NULL, NULL),
(1436, 15, ' SKP ', 1, NULL, NULL),
(1437, 15, ' ST ', 1, NULL, NULL),
(1438, 15, ' Sadgope ', 1, NULL, NULL),
(1439, 15, ' Sadhu Chetty ', 1, NULL, NULL),
(1440, 15, ' Sagara (Uppara) ', 1, NULL, NULL),
(1441, 15, ' Saha ', 1, NULL, NULL),
(1442, 15, ' Sahiti Sindhi   ', 1, NULL, NULL),
(1443, 15, ' Sahu ', 1, NULL, NULL),
(1444, 15, ' Saini ', 1, NULL, NULL),
(1445, 15, ' Saiva Pillai Thanjavur ', 1, NULL, NULL),
(1446, 15, ' Saiva Pillai Tirunelveli ', 1, NULL, NULL),
(1447, 15, ' Saiva Vellan chettiar ', 1, NULL, NULL),
(1448, 15, ' Sakaldwipi Brahmin   ', 1, NULL, NULL),
(1449, 15, ' Sakkhar Sindhi   ', 1, NULL, NULL),
(1450, 15, ' Saliya ', 1, NULL, NULL),
(1451, 15, ' Samagar ', 1, NULL, NULL),
(1452, 15, ' Sambava ', 1, NULL, NULL),
(1453, 15, ' Sanadya Brahmin   ', 1, NULL, NULL),
(1454, 15, ' Sanketi Brahmin   ', 1, NULL, NULL),
(1455, 15, ' Saraswat Brahmin   ', 1, NULL, NULL),
(1456, 15, ' Saryuparin Brahmin   ', 1, NULL, NULL),
(1457, 15, ' Sathwara ', 1, NULL, NULL),
(1458, 15, ' Satnami ', 1, NULL, NULL),
(1459, 15, ' Savji ', 1, NULL, NULL),
(1460, 15, ' Sehwani Sindhi   ', 1, NULL, NULL),
(1461, 15, ' Senai Thalaivar ', 1, NULL, NULL),
(1462, 15, ' Senguntha Mudaliyar ', 1, NULL, NULL),
(1463, 15, ' Sengunthar/Kaikolar ', 1, NULL, NULL),
(1464, 15, ' Settibalija ', 1, NULL, NULL),
(1465, 15, ' Setty Balija ', 1, NULL, NULL),
(1466, 15, ' Shaw / Sahu/Teli ', 1, NULL, NULL),
(1467, 15, ' Shettigar ', 1, NULL, NULL),
(1468, 15, ' Shetty   ', 1, NULL, NULL),
(1469, 15, ' Shikarpuri Sindhi   ', 1, NULL, NULL),
(1470, 15, ' Shilpkar ', 1, NULL, NULL),
(1471, 15, ' Shimpi/Namdev ', 1, NULL, NULL),
(1472, 15, ' Shivhalli Brahmin   ', 1, NULL, NULL),
(1473, 15, ' Shrimali Brahmin   ', 1, NULL, NULL),
(1474, 15, ' Sikhwal Brahmin   ', 1, NULL, NULL),
(1475, 15, ' Sindhi ', 1, NULL, NULL),
(1476, 15, ' Sindhi-Amil ', 1, NULL, NULL),
(1477, 15, ' Sindhi-Baibhand ', 1, NULL, NULL),
(1478, 15, ' Sindhi-Bhanusali ', 1, NULL, NULL),
(1479, 15, ' Sindhi-Bhatia ', 1, NULL, NULL),
(1480, 15, ' Sindhi-Chhapru ', 1, NULL, NULL),
(1481, 15, ' Sindhi-Dadu ', 1, NULL, NULL),
(1482, 15, ' Sindhi-Hyderabadi ', 1, NULL, NULL),
(1483, 15, ' Sindhi-Larai ', 1, NULL, NULL),
(1484, 15, ' Sindhi-Larkana ', 1, NULL, NULL),
(1485, 15, ' Sindhi-Lohana ', 1, NULL, NULL),
(1486, 15, ' Sindhi-Rohiri ', 1, NULL, NULL),
(1487, 15, ' Sindhi-Sahiti ', 1, NULL, NULL),
(1488, 15, ' Sindhi-Sakkhar ', 1, NULL, NULL),
(1489, 15, ' Sindhi-Sehwani ', 1, NULL, NULL),
(1490, 15, ' Sindhi-Shikarpuri ', 1, NULL, NULL),
(1491, 15, ' Sindhi-Thatai ', 1, NULL, NULL),
(1492, 15, ' Smartha Brahmin   ', 1, NULL, NULL),
(1493, 15, ' Sonar ', 1, NULL, NULL),
(1494, 15, ' Soni ', 1, NULL, NULL),
(1495, 15, ' Sonkar ', 1, NULL, NULL),
(1496, 15, ' Sourashtra ', 1, NULL, NULL),
(1497, 15, ' Sozhia Chetty ', 1, NULL, NULL),
(1498, 15, ' Sozhiya Vellalar ', 1, NULL, NULL),
(1499, 15, ' Sri Vaishnava Brahmin   ', 1, NULL, NULL),
(1500, 15, ' Srisayana ', 1, NULL, NULL),
(1501, 15, ' Stanika Brahmin   ', 1, NULL, NULL),
(1502, 15, ' Sugali (Naika) ', 1, NULL, NULL),
(1503, 15, ' Sunari ', 1, NULL, NULL),
(1504, 15, ' Sundhi ', 1, NULL, NULL),
(1505, 15, ' Surya Balija ', 1, NULL, NULL),
(1506, 15, ' Suthar ', 1, NULL, NULL),
(1507, 15, ' Swakula Sali ', 1, NULL, NULL),
(1508, 15, ' Tamboli ', 1, NULL, NULL),
(1509, 15, ' Tanti ', 1, NULL, NULL),
(1510, 15, ' Tantubai ', 1, NULL, NULL),
(1511, 15, ' Telaga ', 1, NULL, NULL),
(1512, 15, ' Teli ', 1, NULL, NULL),
(1513, 15, ' Telugupatti ', 1, NULL, NULL),
(1514, 15, ' Thakkar ', 1, NULL, NULL),
(1515, 15, ' Thakore ', 1, NULL, NULL),
(1516, 15, ' Thakur ', 1, NULL, NULL),
(1517, 15, ' Thandan ', 1, NULL, NULL),
(1518, 15, ' Thatai Sindhi   ', 1, NULL, NULL),
(1519, 15, ' Thigala ', 1, NULL, NULL),
(1520, 15, ' Thiyya ', 1, NULL, NULL),
(1521, 15, ' Thiyya Thandan ', 1, NULL, NULL),
(1522, 15, ' Thogata Veera Kshatriya ', 1, NULL, NULL),
(1523, 15, ' Thogata Veerakshathriya ', 1, NULL, NULL),
(1524, 15, ' Thondai Mandala Vellalar ', 1, NULL, NULL),
(1525, 15, ' Thota ', 1, NULL, NULL),
(1526, 15, ' Tili ', 1, NULL, NULL),
(1527, 15, ' Togata ', 1, NULL, NULL),
(1528, 15, ' Tonk Kshatriya ', 1, NULL, NULL),
(1529, 15, ' Turupu Kapu ', 1, NULL, NULL),
(1530, 15, ' Tyagi Brahmin   ', 1, NULL, NULL),
(1531, 15, ' Ummar / Umre / Bagaria ', 1, NULL, NULL),
(1532, 15, ' Urali Gounder ', 1, NULL, NULL),
(1533, 15, ' Urs ', 1, NULL, NULL),
(1534, 15, ' Vada Balija ', 1, NULL, NULL),
(1535, 15, ' Vadambar ', 1, NULL, NULL),
(1536, 15, ' Vaddera ', 1, NULL, NULL),
(1537, 15, ' Vadugan ', 1, NULL, NULL),
(1538, 15, ' Vaidiki Brahmin   ', 1, NULL, NULL),
(1539, 15, ' Vaikhanasa Brahmin   ', 1, NULL, NULL),
(1540, 15, ' Vaish ', 1, NULL, NULL),
(1541, 15, ' Vaishnav ', 1, NULL, NULL),
(1542, 15, ' Vaishnav Dishaval ', 1, NULL, NULL),
(1543, 15, ' Vaishnav Kapol ', 1, NULL, NULL),
(1544, 15, ' Vaishnav Khadyata ', 1, NULL, NULL),
(1545, 15, ' Vaishnav Lad ', 1, NULL, NULL),
(1546, 15, ' Vaishnav Modh ', 1, NULL, NULL),
(1547, 15, ' Vaishnav Porvad ', 1, NULL, NULL),
(1548, 15, ' Vaishnav Shrimali ', 1, NULL, NULL),
(1549, 15, ' Vaishnav Sorathaiya ', 1, NULL, NULL),
(1550, 15, ' Vaishnav Vania ', 1, NULL, NULL),
(1551, 15, ' Vaishnava ', 1, NULL, NULL),
(1552, 15, ' Vaishya ', 1, NULL, NULL),
(1553, 15, ' Vaishya Vani ', 1, NULL, NULL),
(1554, 15, ' Valluvan ', 1, NULL, NULL),
(1555, 15, ' Valmiki ', 1, NULL, NULL),
(1556, 15, ' Valsad ', 1, NULL, NULL),
(1557, 15, ' Vani ', 1, NULL, NULL),
(1558, 15, ' Vani / Vaishya ', 1, NULL, NULL),
(1559, 15, ' Vania ', 1, NULL, NULL),
(1560, 15, ' Vanika Vyshya ', 1, NULL, NULL),
(1561, 15, ' Vaniya ', 1, NULL, NULL),
(1562, 15, ' Vaniya Chettiar ', 1, NULL, NULL),
(1563, 15, ' Vanjara ', 1, NULL, NULL),
(1564, 15, ' Vanjari ', 1, NULL, NULL),
(1565, 15, ' Vankar ', 1, NULL, NULL),
(1566, 15, ' Vannar ', 1, NULL, NULL),
(1567, 15, ' Vannia Kula Kshatriyar ', 1, NULL, NULL),
(1568, 15, ' Variar ', 1, NULL, NULL),
(1569, 15, ' Varshney ', 1, NULL, NULL),
(1570, 15, ' Varshney (Barahseni) ', 1, NULL, NULL),
(1571, 15, ' Veera Saivam ', 1, NULL, NULL),
(1572, 15, ' Veerakodi Vellala ', 1, NULL, NULL),
(1573, 15, ' Velaan ', 1, NULL, NULL),
(1574, 15, ' Velama ', 1, NULL, NULL),
(1575, 15, ' Velanadu Brahmin   ', 1, NULL, NULL),
(1576, 15, ' Vellalar ', 1, NULL, NULL),
(1577, 15, ' Vellan Chettiars ', 1, NULL, NULL),
(1578, 15, ' Veluthedathu Nair ', 1, NULL, NULL),
(1579, 15, ' Vettuva Gounder ', 1, NULL, NULL),
(1580, 15, ' Vettuvan ', 1, NULL, NULL),
(1581, 15, ' Vijayvargia ', 1, NULL, NULL),
(1582, 15, ' Vilakithala Nair ', 1, NULL, NULL),
(1583, 15, ' Vilakkithala Nair ', 1, NULL, NULL),
(1584, 15, ' Vishwakarma ', 1, NULL, NULL),
(1585, 15, ' Viswabrahmin ', 1, NULL, NULL),
(1586, 15, ' Vokkaliga ', 1, NULL, NULL),
(1587, 15, ' Vyas Brahmin   ', 1, NULL, NULL),
(1588, 15, ' Vysya ', 1, NULL, NULL),
(1589, 15, ' Yadav ', 1, NULL, NULL),
(1590, 15, ' Yadava Naidu ', 1, NULL, NULL),
(1591, 15, ' Yellapu ', 1, NULL, NULL),
(1592, 15, ' Others ', 1, NULL, NULL),
(1593, 15, ' Don\'t wish to specify', 1, NULL, NULL),
(1594, 1, 'Others', 1, NULL, NULL),
(1595, 1, 'Don\'t wish to specify', 1, NULL, NULL),
(1596, 6, 'Don\'t wish to specify', 1, NULL, NULL),
(1597, 7, 'Don\'t wish to specify', 1, NULL, NULL),
(1598, 7, 'Others', 1, NULL, NULL),
(1599, 3, 'Don\'t wish to specify', 1, NULL, NULL),
(1600, 3, 'Others', 1, NULL, NULL),
(1601, 4, 'Don\'t wish to specify', 1, NULL, NULL),
(1602, 4, 'Others', 1, NULL, NULL),
(1603, 5, 'Don\'t wish to specify', 1, NULL, NULL),
(1604, 5, 'Others', 1, NULL, NULL),
(1605, 9, 'Don\'t wish to specify', 1, NULL, NULL),
(1606, 9, 'Others', 1, NULL, NULL),
(1607, 10, 'Don\'t wish to specify', 1, NULL, NULL),
(1608, 10, 'Others', 1, NULL, NULL),
(1609, 11, 'Don\'t wish to specify', 1, NULL, NULL),
(1610, 11, 'Others', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `country_id`, `state_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 98, 65, 'Abohar', 0, NULL, NULL),
(2, 98, 65, 'Adampur', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complextion_table`
--

CREATE TABLE `complextion_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complextion_table`
--

INSERT INTO `complextion_table` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Very Fair', 1, NULL, NULL, NULL),
(2, 'Fair', 1, NULL, NULL, NULL),
(3, 'Wheatish', 1, NULL, NULL, NULL),
(4, 'Wheatish Brown', 1, NULL, NULL, NULL),
(5, 'Dark', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(2, 'Albania', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(3, 'Algeria', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(4, 'American Samoa', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(5, 'Andorra', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(6, 'Angola', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(7, 'Anguilla', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(8, 'Antarctica', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(9, 'Antigua and Barbuda', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(10, 'Argentina', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(11, 'Armenia', 1, NULL, NULL),
(12, 'Aruba', 1, NULL, NULL),
(13, 'Australia', 1, NULL, NULL),
(14, 'Austria', 1, NULL, NULL),
(15, 'Azerbaijan', 1, NULL, NULL),
(16, 'Bahamas', 1, NULL, NULL),
(17, 'Bahrain', 1, NULL, NULL),
(18, 'Bangladesh', 1, NULL, NULL),
(19, 'Barbados', 1, NULL, NULL),
(20, 'Belarus', 1, NULL, NULL),
(21, 'Belgium', 1, NULL, NULL),
(22, 'Belize', 1, NULL, NULL),
(23, 'Benin', 1, NULL, NULL),
(24, 'Bermuda', 1, NULL, NULL),
(25, 'Bhutan', 1, NULL, NULL),
(26, 'Bolivia', 1, NULL, NULL),
(27, 'Bosnia and Herzegovina', 1, NULL, NULL),
(28, 'Botswana', 1, NULL, NULL),
(29, 'Bouvet Island', 1, NULL, NULL),
(30, 'Brazil', 1, NULL, NULL),
(31, 'British Indian Ocean Territory', 1, NULL, NULL),
(32, 'British Virgin Islands', 1, NULL, NULL),
(33, 'Brunei', 1, NULL, NULL),
(34, 'Bulgaria', 1, NULL, NULL),
(35, 'Burkina Faso', 1, NULL, NULL),
(36, 'Burundi', 1, NULL, NULL),
(37, 'Cambodia', 1, NULL, NULL),
(38, 'Cameroon', 1, NULL, NULL),
(39, 'Canada', 1, NULL, NULL),
(40, 'Cape Verde', 1, NULL, NULL),
(41, 'Cayman Islands', 1, NULL, NULL),
(42, 'Central African Republic', 1, NULL, NULL),
(43, 'Chad', 1, NULL, NULL),
(44, 'Chile', 1, NULL, NULL),
(45, 'China', 1, NULL, NULL),
(46, 'Christmas Island', 1, NULL, NULL),
(47, 'Cocos Islands', 1, NULL, NULL),
(48, 'Colombia', 1, NULL, NULL),
(49, 'Comoros', 1, NULL, NULL),
(50, 'Congo', 1, NULL, NULL),
(51, 'Cook Islands', 1, NULL, NULL),
(52, 'Costa Rica', 1, NULL, NULL),
(53, 'Croatia', 1, NULL, NULL),
(54, 'Cuba', 1, NULL, NULL),
(55, 'Cyprus', 1, NULL, NULL),
(56, 'Czech Republic', 1, NULL, NULL),
(57, 'Denmark', 1, NULL, NULL),
(58, 'Djibouti', 1, NULL, NULL),
(59, 'Dominica', 1, NULL, NULL),
(60, 'Dominican Republic', 1, NULL, NULL),
(61, 'East Timor', 1, NULL, NULL),
(62, 'Ecuador', 1, NULL, NULL),
(63, 'Egypt', 1, NULL, NULL),
(64, 'El Salvador', 1, NULL, NULL),
(65, 'Equatorial Guinea', 1, NULL, NULL),
(66, 'Eritrea', 1, NULL, NULL),
(67, 'Estonia', 1, NULL, NULL),
(68, 'Ethiopia', 1, NULL, NULL),
(69, 'Falkland Islands', 1, NULL, NULL),
(70, 'Faroe Islands', 1, NULL, NULL),
(71, 'Fiji', 1, NULL, NULL),
(72, 'Finland', 1, NULL, NULL),
(73, 'France', 1, NULL, NULL),
(74, 'French Guiana', 1, NULL, NULL),
(75, 'French Polynesia', 1, NULL, NULL),
(76, 'French Southern Territories', 1, NULL, NULL),
(77, 'Gabon', 1, NULL, NULL),
(78, 'Gambia', 1, NULL, NULL),
(79, 'Georgia', 1, NULL, NULL),
(80, 'Germany', 1, NULL, NULL),
(81, 'Ghana', 1, NULL, NULL),
(82, 'Gibraltar', 1, NULL, NULL),
(83, 'Greece', 1, NULL, NULL),
(84, 'Greenland', 1, NULL, NULL),
(85, 'Grenada', 1, NULL, NULL),
(86, 'Guadeloupe', 1, NULL, NULL),
(87, 'Guam', 1, NULL, NULL),
(88, 'Guatemala', 1, NULL, NULL),
(89, 'Guinea', 1, NULL, NULL),
(90, 'Guinea-Bissau', 1, NULL, NULL),
(91, 'Guyana', 1, NULL, NULL),
(92, 'Haiti', 1, NULL, NULL),
(93, 'Heard and McDonald Islands', 1, NULL, NULL),
(94, 'Honduras', 1, NULL, NULL),
(95, 'Hong Kong', 1, NULL, NULL),
(96, 'Hungary', 1, NULL, NULL),
(97, 'Iceland', 1, NULL, NULL),
(98, 'India', 1, NULL, NULL),
(99, 'Indonesia', 1, NULL, NULL),
(100, 'Iran', 1, NULL, NULL),
(101, 'Iraq', 1, NULL, NULL),
(102, 'Ireland', 1, NULL, NULL),
(103, 'Israel', 1, NULL, NULL),
(104, 'Italy', 1, NULL, NULL),
(105, 'Ivory Coast', 1, NULL, NULL),
(106, 'Jamaica', 1, NULL, NULL),
(107, 'Japan', 1, NULL, NULL),
(108, 'Jordan', 1, NULL, NULL),
(109, 'Kazakhstan', 1, NULL, NULL),
(110, 'Kenya', 1, NULL, NULL),
(111, 'Kiribati', 1, NULL, NULL),
(112, 'Korea, North', 1, NULL, NULL),
(113, 'Korea, South', 1, NULL, NULL),
(114, 'Kuwait', 1, NULL, NULL),
(115, 'Kyrgyzstan', 1, NULL, NULL),
(116, 'Laos', 1, NULL, NULL),
(117, 'Latvia', 1, NULL, NULL),
(118, 'Lebanon', 1, NULL, NULL),
(119, 'Lesotho', 1, NULL, NULL),
(120, 'Liberia', 1, NULL, NULL),
(121, 'Libya', 1, NULL, NULL),
(122, 'Liechtenstein', 1, NULL, NULL),
(123, 'Lithuania', 1, NULL, NULL),
(124, 'Luxembourg', 1, NULL, NULL),
(125, 'Macau', 1, NULL, NULL),
(126, 'Macedonia', 1, NULL, NULL),
(127, 'Madagascar', 1, NULL, NULL),
(128, 'Malawi', 1, NULL, NULL),
(129, 'Malaysia', 1, NULL, NULL),
(130, 'Maldives', 1, NULL, NULL),
(131, 'Mali', 1, NULL, NULL),
(132, 'Malta', 1, NULL, NULL),
(133, 'Marshall Islands', 1, NULL, NULL),
(134, 'Martinique', 1, NULL, NULL),
(135, 'Mauritania', 1, NULL, NULL),
(136, 'Mauritius', 1, NULL, NULL),
(137, 'Mayotte', 1, NULL, NULL),
(138, 'Mexico', 1, NULL, NULL),
(139, 'Micronesia, Federated States of', 1, NULL, NULL),
(140, 'Moldova', 1, NULL, NULL),
(141, 'Monaco', 1, NULL, NULL),
(142, 'Mongolia', 1, NULL, NULL),
(143, 'Montserrat', 1, NULL, NULL),
(144, 'Morocco', 1, NULL, NULL),
(145, 'Mozambique', 1, NULL, NULL),
(146, 'Myanmar', 1, NULL, NULL),
(147, 'Namibia', 1, NULL, NULL),
(148, 'Nauru', 1, NULL, NULL),
(149, 'Nepal', 1, NULL, NULL),
(150, 'Netherlands', 1, NULL, NULL),
(151, 'Netherlands Antilles', 1, NULL, NULL),
(152, 'New Caledonia', 1, NULL, NULL),
(153, 'New Zealand', 1, NULL, NULL),
(154, 'Nicaragua', 1, NULL, NULL),
(155, 'Niger', 1, NULL, NULL),
(156, 'Nigeria', 1, NULL, NULL),
(157, 'Niue', 1, NULL, NULL),
(158, 'Norfolk Island', 1, NULL, NULL),
(159, 'Northern Mariana Islands', 1, NULL, NULL),
(160, 'Norway', 1, NULL, NULL),
(161, 'Oman', 1, NULL, NULL),
(162, 'Pakistan', 1, NULL, NULL),
(163, 'Palau', 1, NULL, NULL),
(164, 'Panama', 1, NULL, NULL),
(165, 'Papua New Guinea', 1, NULL, NULL),
(166, 'Paraguay', 1, NULL, NULL),
(167, 'Peru', 1, NULL, NULL),
(168, 'Philippines', 1, NULL, NULL),
(169, 'Pitcairn Island', 1, NULL, NULL),
(170, 'Poland', 1, NULL, NULL),
(171, 'Portugal', 1, NULL, NULL),
(172, 'Puerto Rico', 1, NULL, NULL),
(173, 'Qatar', 1, NULL, NULL),
(174, 'Reunion', 1, NULL, NULL),
(175, 'Romania', 1, NULL, NULL),
(176, 'Russia', 1, NULL, NULL),
(177, 'Rwanda', 1, NULL, NULL),
(178, 'S. Georgia and S. Sandwich Isls.', 1, NULL, NULL),
(179, 'Saint Kitts & Nevis', 1, NULL, NULL),
(180, 'Saint Lucia', 1, NULL, NULL),
(181, 'Saint Vincent and The Grenadines', 1, NULL, NULL),
(182, 'Samoa', 1, NULL, NULL),
(183, 'San Marino', 1, NULL, NULL),
(184, 'Sao Tome and Principe', 1, NULL, NULL),
(185, 'Saudi Arabia', 1, NULL, NULL),
(186, 'Senegal', 1, NULL, NULL),
(187, 'Seychelles', 1, NULL, NULL),
(188, 'Sierra Leone', 1, NULL, NULL),
(189, 'Singapore', 1, NULL, NULL),
(190, 'Slovakia', 1, NULL, NULL),
(191, 'Slovenia', 1, NULL, NULL),
(192, 'Somalia', 1, NULL, NULL),
(193, 'South Africa', 1, NULL, NULL),
(194, 'Spain', 1, NULL, NULL),
(195, 'Sri Lanka', 1, NULL, NULL),
(196, 'St. Helena', 1, NULL, NULL),
(197, 'St. Pierre and Miquelon', 1, NULL, NULL),
(198, 'Sudan', 1, NULL, NULL),
(199, 'Suriname', 1, NULL, NULL),
(200, 'Svalbard and Jan Mayen Islands', 1, NULL, NULL),
(201, 'Swaziland', 1, NULL, NULL),
(202, 'Sweden', 1, NULL, NULL),
(203, 'Switzerland', 1, NULL, NULL),
(204, 'Syria', 1, NULL, NULL),
(205, 'Taiwan', 1, NULL, NULL),
(206, 'Tajikistan', 1, NULL, NULL),
(207, 'Tanzania', 1, NULL, NULL),
(208, 'Thailand', 1, NULL, NULL),
(209, 'Togo', 1, NULL, NULL),
(210, 'Tokelau', 1, NULL, NULL),
(211, 'Tonga', 1, NULL, NULL),
(212, 'Trinidad and Tobago', 1, NULL, NULL),
(213, 'Tunisia', 1, NULL, NULL),
(214, 'Turkey', 1, NULL, NULL),
(215, 'Turkmenistan', 1, NULL, NULL),
(216, 'Turks and Caicos Islands', 1, NULL, NULL),
(217, 'Tuvalu', 1, NULL, NULL),
(218, 'Uganda', 1, NULL, NULL),
(219, 'Ukraine', 1, NULL, NULL),
(220, 'United Arab Emirates', 1, NULL, NULL),
(221, 'United Kingdom', 1, NULL, NULL),
(222, 'United States of America', 1, NULL, NULL),
(223, 'Uruguay', 1, NULL, NULL),
(224, 'Uzbekistan', 1, NULL, NULL),
(225, 'Vanuatu', 1, NULL, NULL),
(226, 'Vatican City', 1, NULL, NULL),
(227, 'Venezuela', 1, NULL, NULL),
(228, 'Vietnam', 1, NULL, NULL),
(229, 'Virgin Islands', 1, NULL, NULL),
(230, 'Wallis and Futuna Islands', 1, NULL, NULL),
(231, 'Western Sahara', 1, NULL, NULL),
(232, 'Yemen', 1, NULL, NULL),
(233, 'Yugoslavia (Former)', 1, NULL, NULL),
(234, 'Zaire', 1, NULL, NULL),
(235, 'Zambia', 1, NULL, NULL),
(236, 'Zimbabwe', 1, NULL, NULL),
(237, 'DR Congo', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan - AFA', 1, NULL, NULL),
(2, 'Albania - ALL', 1, NULL, NULL),
(3, 'Algeria - DZD', 1, NULL, NULL),
(4, 'American Samoa - USD', 1, NULL, NULL),
(5, 'Andorra - EUR', 1, NULL, NULL),
(6, 'Angola - AON', 1, NULL, NULL),
(7, 'Anguilla - XCD', 1, NULL, NULL),
(8, 'Antarctica - XCD', 1, NULL, NULL),
(9, 'Antigua and Barbuda - XCD', 1, NULL, NULL),
(10, 'Argentina - ARS', 1, NULL, NULL),
(11, 'Armenia - AMD', 1, NULL, NULL),
(12, 'Aruba - AWG', 1, NULL, NULL),
(13, 'Australia - AUD', 1, NULL, NULL),
(14, 'Austria - EUR', 1, NULL, NULL),
(15, 'Azerbaijan - AZM', 1, NULL, NULL),
(16, 'Bahamas - BSD', 1, NULL, NULL),
(17, 'Bahrain - BHD', 1, NULL, NULL),
(18, 'Bangladesh - BDT', 1, NULL, NULL),
(19, 'Barbados - BBD', 1, NULL, NULL),
(20, 'Belarus - BYB', 1, NULL, NULL),
(21, 'Belgium - EUR', 1, NULL, NULL),
(22, 'Belize - BZD', 1, NULL, NULL),
(23, 'Benin - XOF', 1, NULL, NULL),
(24, 'Bermuda - BMD', 1, NULL, NULL),
(25, 'Bhutan - BTN', 1, NULL, NULL),
(26, 'Bolivia - BOB', 1, NULL, NULL),
(27, 'Bosnia and Herzegovina - BAM', 1, NULL, NULL),
(28, 'Botswana - BWP', 1, NULL, NULL),
(29, 'Bouvet Island - NOK', 1, NULL, NULL),
(30, 'Brazil - BRL', 1, NULL, NULL),
(31, 'British Indian Ocean Territory - USD', 1, NULL, NULL),
(32, 'British Virgin Islands - USD', 1, NULL, NULL),
(33, 'Brunei - BND', 1, NULL, NULL),
(34, 'Bulgaria - BGL', 1, NULL, NULL),
(35, 'Burkina Faso - XOF', 1, NULL, NULL),
(36, 'Burundi - BIF', 1, NULL, NULL),
(37, 'Cambodia - KHR', 1, NULL, NULL),
(38, 'Cameroon - XAF', 1, NULL, NULL),
(39, 'Canada - CAD', 1, NULL, NULL),
(40, 'Cape Verde - CVE', 1, NULL, NULL),
(41, 'Cayman Islands - KYD', 1, NULL, NULL),
(42, 'Central African Republic - XAF', 1, NULL, NULL),
(43, 'Chad - XAF', 1, NULL, NULL),
(44, 'Chile - CLP', 1, NULL, NULL),
(45, 'China - CNY', 1, NULL, NULL),
(46, 'Christmas Island - AUD', 1, NULL, NULL),
(47, 'Cocos Islands - AUD', 1, NULL, NULL),
(48, 'Colombia - COP', 1, NULL, NULL),
(49, 'Comoros - KMF', 1, NULL, NULL),
(50, 'Congo - XAF', 1, NULL, NULL),
(51, 'Cook Islands - NZD', 1, NULL, NULL),
(52, 'Costa Rica - CRC', 1, NULL, NULL),
(53, 'Croatia - HRK', 1, NULL, NULL),
(54, 'Cuba - CUP', 1, NULL, NULL),
(55, 'Cyprus - CYP', 1, NULL, NULL),
(56, 'Czech Republic - CZK', 1, NULL, NULL),
(57, 'Denmark - DKK', 1, NULL, NULL),
(58, 'Djibouti - DJF', 1, NULL, NULL),
(59, 'Dominica - XCD', 1, NULL, NULL),
(60, 'Dominican Republic - DOP', 1, NULL, NULL),
(61, 'East Timor - TPE', 1, NULL, NULL),
(62, 'Ecuador - ECS', 1, NULL, NULL),
(63, 'Egypt - EGP', 1, NULL, NULL),
(64, 'El Salvador - SVC', 1, NULL, NULL),
(65, 'Equatorial Guinea - XAF', 1, NULL, NULL),
(66, 'Eritrea - ERN', 1, NULL, NULL),
(67, 'Estonia - EEK', 1, NULL, NULL),
(68, 'Ethiopia - ETB', 1, NULL, NULL),
(69, 'Falkland Islands - FKP', 1, NULL, NULL),
(70, 'Faroe Islands - DKK', 1, NULL, NULL),
(71, 'Fiji - FJD', 1, NULL, NULL),
(72, 'Finland - EUR', 1, NULL, NULL),
(73, 'France - EUR', 1, NULL, NULL),
(74, 'French Guiana - EUR', 1, NULL, NULL),
(75, 'French Polynesia - XPF', 1, NULL, NULL),
(76, 'French Southern Territories - EUR', 1, NULL, NULL),
(77, 'Gabon - XAF', 1, NULL, NULL),
(78, 'Gambia - GMD', 1, NULL, NULL),
(79, 'Georgia - GEL', 1, NULL, NULL),
(80, 'Germany - EUR', 1, NULL, NULL),
(81, 'Ghana - GHC', 1, NULL, NULL),
(82, 'Gibraltar - GIP', 1, NULL, NULL),
(83, 'Greece - EUR', 1, NULL, NULL),
(84, 'Greenland - DKK', 1, NULL, NULL),
(85, 'Grenada - XCD', 1, NULL, NULL),
(86, 'Guadeloupe - EUR', 1, NULL, NULL),
(87, 'Guam - USD', 1, NULL, NULL),
(88, 'Guatemala - QTQ', 1, NULL, NULL),
(89, 'Guinea - GNF', 1, NULL, NULL),
(90, 'Guinea-Bissau - GWP', 1, NULL, NULL),
(91, 'Guyana - GYD', 1, NULL, NULL),
(92, 'Haiti - HTG', 1, NULL, NULL),
(93, 'Heard and McDonald Islands - AUD', 1, NULL, NULL),
(94, 'Honduras - HNL', 1, NULL, NULL),
(95, 'Hong Kong - HKD', 1, NULL, NULL),
(96, 'Hungary - HUF', 1, NULL, NULL),
(97, 'Iceland - ISK', 1, NULL, NULL),
(98, 'India - Rs.', 1, NULL, NULL),
(99, 'Indonesia - IDR', 1, NULL, NULL),
(100, 'Iran - IRR', 1, NULL, NULL),
(101, 'Iraq - IQD', 1, NULL, NULL),
(102, 'Ireland - EUR', 1, NULL, NULL),
(103, 'Israel - ILS', 1, NULL, NULL),
(104, 'Italy - EUR', 1, NULL, NULL),
(105, 'Ivory Coast - XOF', 1, NULL, NULL),
(106, 'Jamaica - JMD', 1, NULL, NULL),
(107, 'Japan - JPY', 1, NULL, NULL),
(108, 'Jordan - JOD', 1, NULL, NULL),
(109, 'Kazakhstan - KZT', 1, NULL, NULL),
(110, 'Kenya - KES', 1, NULL, NULL),
(111, 'Kiribati - AUD', 1, NULL, NULL),
(112, 'Korea, North - KPW', 1, NULL, NULL),
(113, 'Korea, South - KRW', 1, NULL, NULL),
(114, 'Kuwait - KWD', 1, NULL, NULL),
(115, 'Kyrgyzstan - KGS', 1, NULL, NULL),
(116, 'Laos - LAK', 1, NULL, NULL),
(117, 'Latvia - LVL', 1, NULL, NULL),
(118, 'Lebanon - LBP', 1, NULL, NULL),
(119, 'Lesotho - LSL', 1, NULL, NULL),
(120, 'Liberia - LRD', 1, NULL, NULL),
(121, 'Libya - LYD', 1, NULL, NULL),
(122, 'Liechtenstein - CHF', 1, NULL, NULL),
(123, 'Lithuania - LTL', 1, NULL, NULL),
(124, 'Luxembourg - EUR', 1, NULL, NULL),
(125, 'Macau - MOP', 1, NULL, NULL),
(126, 'Macedonia - MKD', 1, NULL, NULL),
(127, 'Madagascar - MGF', 1, NULL, NULL),
(128, 'Malawi - MWK', 1, NULL, NULL),
(129, 'Malaysia - MYR', 1, NULL, NULL),
(130, 'Maldives - MVR', 1, NULL, NULL),
(131, 'Mali - XOF', 1, NULL, NULL),
(132, 'Malta - MTL', 1, NULL, NULL),
(133, 'Marshall Islands - USD', 1, NULL, NULL),
(134, 'Martinique - EUR', 1, NULL, NULL),
(135, 'Mauritania - MRO', 1, NULL, NULL),
(136, 'Mauritius - MUR', 1, NULL, NULL),
(137, 'Mayotte - EUR', 1, NULL, NULL),
(138, 'Mexico - MXN', 1, NULL, NULL),
(139, 'Micronesia, Federated States of - USD', 1, NULL, NULL),
(140, 'Moldova - MDL', 1, NULL, NULL),
(141, 'Monaco - EUR', 1, NULL, NULL),
(142, 'Mongolia - MNT', 1, NULL, NULL),
(143, 'Montserrat - XCD', 1, NULL, NULL),
(144, 'Morocco - MAD', 1, NULL, NULL),
(145, 'Mozambique - MZM', 1, NULL, NULL),
(146, 'Myanmar - MMK', 1, NULL, NULL),
(147, 'Namibia - NAD', 1, NULL, NULL),
(148, 'Nauru - AUD', 1, NULL, NULL),
(149, 'Nepal - NPR', 1, NULL, NULL),
(150, 'Netherlands - EUR', 1, NULL, NULL),
(151, 'Netherlands Antilles - ANG', 1, NULL, NULL),
(152, 'New Caledonia - XPF', 1, NULL, NULL),
(153, 'New Zealand - NZD', 1, NULL, NULL),
(154, 'Nicaragua - NIC', 1, NULL, NULL),
(155, 'Niger - XOF', 1, NULL, NULL),
(156, 'Nigeria - NGN', 1, NULL, NULL),
(157, 'Niue - NZD', 1, NULL, NULL),
(158, 'Norfolk Island - AUD', 1, NULL, NULL),
(159, 'Northern Mariana Islands - USD', 1, NULL, NULL),
(160, 'Norway - NOK', 1, NULL, NULL),
(161, 'Oman - OMR', 1, NULL, NULL),
(162, 'Pakistan - PKR', 1, NULL, NULL),
(163, 'Palau - USD', 1, NULL, NULL),
(164, 'Panama - PAB', 1, NULL, NULL),
(165, 'Papua New Guinea - PGK', 1, NULL, NULL),
(166, 'Paraguay - PYG', 1, NULL, NULL),
(167, 'Peru - PEN', 1, NULL, NULL),
(168, 'Philippines - PHP', 1, NULL, NULL),
(169, 'Pitcairn Island - NZD', 1, NULL, NULL),
(170, 'Poland - PLZ', 1, NULL, NULL),
(171, 'Portugal - EUR', 1, NULL, NULL),
(172, 'Puerto Rico - USD', 1, NULL, NULL),
(173, 'Qatar - QAR', 1, NULL, NULL),
(174, 'Reunion - EUR', 1, NULL, NULL),
(175, 'Romania - ROL', 1, NULL, NULL),
(176, 'Russia - RUR', 1, NULL, NULL),
(177, 'Rwanda - RWF', 1, NULL, NULL),
(178, 'S. Georgia and S. Sandwich Isls. - GBP', 1, NULL, NULL),
(179, 'Saint Kitts & Nevis - XCD', 1, NULL, NULL),
(180, 'Saint Lucia - XCD', 1, NULL, NULL),
(181, 'Saint Vincent and The Grenadines - XCD', 1, NULL, NULL),
(182, 'Samoa - WST', 1, NULL, NULL),
(183, 'San Marino - ITL', 1, NULL, NULL),
(184, 'Sao Tome and Principe - STD', 1, NULL, NULL),
(185, 'Saudi Arabia - SAR', 1, NULL, NULL),
(186, 'Senegal - XOF', 1, NULL, NULL),
(187, 'Seychelles - SCR', 1, NULL, NULL),
(188, 'Sierra Leone - SLL', 1, NULL, NULL),
(189, 'Singapore - SGD', 1, NULL, NULL),
(190, 'Slovakia - SKK', 1, NULL, NULL),
(191, 'Slovenia - SIT', 1, NULL, NULL),
(192, 'Somalia - SOD', 1, NULL, NULL),
(193, 'South Africa - ZAR', 1, NULL, NULL),
(194, 'Spain - EUR', 1, NULL, NULL),
(195, 'Sri Lanka - LKR', 1, NULL, NULL),
(196, 'St. Helena - SHP', 1, NULL, NULL),
(197, 'St. Pierre and Miquelon - EUR', 1, NULL, NULL),
(198, 'Sudan - SDD', 1, NULL, NULL),
(199, 'Suriname - SRG', 1, NULL, NULL),
(200, 'Svalbard and Jan Mayen Islands - NOK', 1, NULL, NULL),
(201, 'Swaziland - SZL', 1, NULL, NULL),
(202, 'Sweden - SEK', 1, NULL, NULL),
(203, 'Switzerland - CHF', 1, NULL, NULL),
(204, 'Syria - SYP', 1, NULL, NULL),
(205, 'Taiwan - TWD', 1, NULL, NULL),
(206, 'Tajikistan - TJR', 1, NULL, NULL),
(207, 'Tanzania - TZS', 1, NULL, NULL),
(208, 'Thailand - THB', 1, NULL, NULL),
(209, 'Togo - XOF', 1, NULL, NULL),
(210, 'Tokelau - NZD', 1, NULL, NULL),
(211, 'Tonga - TOP', 1, NULL, NULL),
(212, 'Trinidad and Tobago - TTD', 1, NULL, NULL),
(213, 'Tunisia - TND', 1, NULL, NULL),
(214, 'Turkey - TRL', 1, NULL, NULL),
(215, 'Turkmenistan - TMM', 1, NULL, NULL),
(216, 'Turks and Caicos Islands - USD', 1, NULL, NULL),
(217, 'Tuvalu - AUD', 1, NULL, NULL),
(218, 'Uganda - UGS', 1, NULL, NULL),
(219, 'Ukraine - UAG', 1, NULL, NULL),
(220, 'United Arab Emirates - AED', 1, NULL, NULL),
(221, 'United Kingdom - GBP', 1, NULL, NULL),
(222, 'United States of America - USD', 1, NULL, NULL),
(223, 'Uruguay - UYP', 1, NULL, NULL),
(224, 'Uzbekistan - UZS', 1, NULL, NULL),
(225, 'Vanuatu - VUV', 1, NULL, NULL),
(226, 'Vatican City - EUR', 1, NULL, NULL),
(227, 'Venezuela - VUB', 1, NULL, NULL),
(228, 'Vietnam - VND', 1, NULL, NULL),
(229, 'Virgin Islands - USD', 1, NULL, NULL),
(230, 'Wallis and Futuna Islands - XPF', 1, NULL, NULL),
(231, 'Western Sahara - MAD', 1, NULL, NULL),
(232, 'Yemen - YER', 1, NULL, NULL),
(233, 'Yugoslavia (Former) - YUN', 1, NULL, NULL),
(234, 'Zaire - CDF', 1, NULL, NULL),
(235, 'Zambia - ZMK', 1, NULL, NULL),
(236, 'Zimbabwe - ZWD', 1, NULL, NULL),
(237, 'DR Congo - XAF', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detail_preferences`
--

CREATE TABLE `detail_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_preferences`
--

INSERT INTO `detail_preferences` (`id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 'testing the preferences details', '2018-08-09 18:30:00', '2018-08-09 18:30:00'),
(2, 3, 'the about family', NULL, NULL),
(3, 1, 'testing the detail preferences', '2018-09-13 18:30:00', '2018-09-20 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `dosh_table`
--

CREATE TABLE `dosh_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosh_table`
--

INSERT INTO `dosh_table` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Manglik', 1, NULL, NULL, NULL),
(2, 'Sarpa dosh', 1, NULL, NULL, NULL),
(3, 'Kala sarpa dosh', 1, NULL, NULL, NULL),
(4, 'Rahu dosh', 1, NULL, NULL, NULL),
(5, 'Kethu dosh', 1, NULL, NULL, NULL),
(6, 'Kalathra dosh', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `family_details`
--

CREATE TABLE `family_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `family_value` int(11) NOT NULL COMMENT '1 for Orthodox 2 for Traditional 3 for Moderate 4 for Liberal',
  `family_type` int(11) NOT NULL COMMENT '1 for Joint Family 2 for Nuclear Family 3 for Others',
  `family_status` int(11) NOT NULL COMMENT '1for MiddleClass 2 for UpperMiddleClass 3 for Rich 4 for Affluent',
  `father_status` int(11) DEFAULT NULL COMMENT '0 for Employed 1 for Business Man 2 for Professional 3 for Retired 4 for Not Employed 5 for Passed Away',
  `mother_status` int(11) DEFAULT NULL COMMENT '0 for homemaker 1 for Employed 2 for Business woman 3 for Professional 4 for Retired 5 for Passed Away',
  `no_of_brothers` int(11) DEFAULT NULL COMMENT '0 For none 1 for one brother 2 for two brothers 3 for three brothers 4 for four brothers 5 for five brothers 6 for more than five brothers',
  `married_brothers` int(11) DEFAULT NULL COMMENT '0 For none 1 for one brother 2 for two brothers 3 for three brothers 4 for four brothers 5 for five brothers 6 for more than five brothers',
  `no_of_sisters` int(11) DEFAULT NULL COMMENT '0 For none 1 for one sisters 2 for two sisters 3 for three sisters 4 for four sisters 5 for five sisters 6 for more than five sisters',
  `married_sisters` int(11) DEFAULT NULL COMMENT '0 For none 1 for one sisters 2 for two sisters 3 for three sisters 4 for four sisters 5 for five sisters 6 for more than five sisters',
  `family_location` int(11) NOT NULL DEFAULT '0' COMMENT '0 for same location 1 for different location',
  `country_id` int(11) DEFAULT NULL,
  `parents_phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `family_origin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_details`
--

INSERT INTO `family_details` (`id`, `user_id`, `family_value`, `family_type`, `family_status`, `father_status`, `mother_status`, `no_of_brothers`, `married_brothers`, `no_of_sisters`, `married_sisters`, `family_location`, `country_id`, `parents_phone_no`, `state_id`, `city_id`, `family_origin`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 2, 1, 1, 0, 1, 0, 0, 0, 0, 0, '9876567890', 0, 0, 'N/A', '2018-08-09 18:30:00', '2018-08-16 18:30:00'),
(2, 3, 3, 1, 1, 1, 2, 1, 0, 0, 0, 0, 0, '1234567890', 0, 0, 'test', '2018-08-16 18:30:00', '2018-08-20 18:30:00'),
(3, 4, 1, 1, 1, 1, 2, 1, 0, 0, 0, 0, 1, '1234567890', 1, 1, 'test', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(4, 5, 1, 1, 1, 1, 2, 1, 0, 0, 0, 0, 1, '1234567890', 1, 1, 'test', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(5, 6, 1, 1, 1, 1, 2, 1, 0, 0, 0, 0, 1, '1234567890', 1, 1, 'test', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(6, 7, 1, 1, 1, 1, 2, 1, 0, 0, 0, 0, 1, '1234567890', 1, 1, 'test', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(7, 8, 1, 1, 1, 1, 2, 1, 0, 0, 0, 0, 1, '1234567890', 1, 1, 'test', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(8, 11, 1, 2, 2, 0, 0, 1, 1, 0, 0, 1, 98, '01234567890', 33, 2, 'N/A', NULL, NULL),
(9, 1, 1, 1, 1, 1, 2, 1, 0, 0, 0, 0, 1, '6213423214', 1, 1, 'test', '2018-09-16 18:30:00', '2018-09-17 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `favourite_music`
--

CREATE TABLE `favourite_music` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourite_music`
--

INSERT INTO `favourite_music` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Film songs', 1, NULL, NULL),
(2, 'Indian / Classical Music', 1, NULL, NULL),
(3, 'Western Music', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gothra`
--

CREATE TABLE `gothra` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gothra`
--

INSERT INTO `gothra` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aatharvas', 1, NULL, NULL),
(2, 'Agasthi', 1, NULL, NULL),
(3, 'Ahabhunasa', 1, NULL, NULL),
(4, 'Alampayana', 1, NULL, NULL),
(5, 'Angiras', 1, NULL, NULL),
(6, 'Arrishinimi', 1, NULL, NULL),
(7, 'Athreyasa', 1, NULL, NULL),
(8, 'Atri', 1, NULL, NULL),
(9, 'Attarishi', 1, NULL, NULL),
(10, 'Aukshanas', 1, NULL, NULL),
(11, 'Aushanas', 1, NULL, NULL),
(12, 'Babrahvya', 1, NULL, NULL),
(13, 'Badarayana', 1, NULL, NULL),
(14, 'Baijvayas', 1, NULL, NULL),
(15, 'Bashan', 1, NULL, NULL),
(16, 'Baijvayas', 1, NULL, NULL),
(17, 'Bashan', 1, NULL, NULL),
(18, 'Bharadwaj', 1, NULL, NULL),
(19, 'Bhargava', 1, NULL, NULL),
(20, 'Bhasyan', 1, NULL, NULL),
(21, 'Bhrigu', 1, NULL, NULL),
(22, 'Birthare', 1, NULL, NULL),
(23, 'Bodhaaynas', 1, NULL, NULL),
(24, 'Chandratri', 1, NULL, NULL),
(25, 'Chikithasa', 1, NULL, NULL),
(26, 'Chyavanasa', 1, NULL, NULL),
(27, 'Daksa', 1, NULL, NULL),
(28, 'Dalabhya', 1, NULL, NULL),
(29, 'Darbhas', 1, NULL, NULL),
(30, 'Devrata', 1, NULL, NULL),
(31, 'Dhananjaya', 1, NULL, NULL),
(32, 'Dhanvantri', 1, NULL, NULL),
(33, 'Dhara Gautam', 1, NULL, NULL),
(34, 'Dharanas', 1, NULL, NULL),
(35, 'Dixit', 1, NULL, NULL),
(36, 'Duttatreyas', 1, NULL, NULL),
(37, 'Galiva', 1, NULL, NULL),
(38, 'Ganganas', 1, NULL, NULL),
(39, 'Gangyanas', 1, NULL, NULL),
(40, 'Garga', 1, NULL, NULL),
(41, 'Gargya Sainasa', 1, NULL, NULL),
(42, 'Gouthama', 1, NULL, NULL),
(43, 'Ghrit Kaushika', 1, NULL, NULL),
(44, 'Gowri Veetham', 1, NULL, NULL),
(45, 'Gardhmukh Sandilya', 1, NULL, NULL),
(46, 'Harithasa', 1, NULL, NULL),
(47, 'Jaiminiyas', 1, NULL, NULL),
(48, 'Jamadagni', 1, NULL, NULL),
(49, 'Jatukarna', 1, NULL, NULL),
(50, 'Kaakavas', 1, NULL, NULL),
(51, 'Kabi', 1, NULL, NULL),
(52, 'Kalabouddasa', 1, NULL, NULL),
(53, 'Kalpangeerasa', 1, NULL, NULL),
(54, 'Kamakayana Vishwamitra', 1, NULL, NULL),
(55, 'Kamsa', 1, NULL, NULL),
(56, 'Kanav', 1, NULL, NULL),
(57, 'Kanva', 1, NULL, NULL),
(58, 'Kapi', 1, NULL, NULL),
(59, 'Kapila Baradwaj', 1, NULL, NULL),
(60, 'Kapinjal', 1, NULL, NULL),
(61, 'Kapishthalas', 1, NULL, NULL),
(62, 'Kaplish', 1, NULL, NULL),
(63, 'Kashish', 1, NULL, NULL),
(64, 'Kashyapa', 1, NULL, NULL),
(65, 'Katyayan', 1, NULL, NULL),
(66, 'Kaundinya', 1, NULL, NULL),
(67, 'Kaunsa', 1, NULL, NULL),
(68, 'Kaushal', 1, NULL, NULL),
(69, 'Kausikasa', 1, NULL, NULL),
(70, 'Keshoryas', 1, NULL, NULL),
(71, 'Koushika Visvamitrasa', 1, NULL, NULL),
(72, 'Krishnatrey', 1, NULL, NULL),
(73, 'Kusa', 1, NULL, NULL),
(74, 'Kutsasa', 1, NULL, NULL),
(75, 'Laakshmanas', 1, NULL, NULL),
(76, 'Laugakshi', 1, NULL, NULL),
(77, 'Lavania', 1, NULL, NULL),
(78, 'Lodwan', 1, NULL, NULL),
(79, 'Lohit', 1, NULL, NULL),
(80, 'Lokaakhyas', 1, NULL, NULL),
(81, 'Lomasha', 1, NULL, NULL),
(82, 'Madelia', 1, NULL, NULL),
(83, 'Maitraya', 1, NULL, NULL),
(84, 'Manava', 1, NULL, NULL),
(85, 'Mandavya', 1, NULL, NULL),
(86, 'Marica', 1, NULL, NULL),
(87, 'Markendeya', 1, NULL, NULL),
(88, 'Maudlas', 1, NULL, NULL),
(89, 'Maunas', 1, NULL, NULL),
(90, 'Mihir', 1, NULL, NULL),
(91, 'Moudgalya', 1, NULL, NULL),
(92, 'Mouna Bhargava', 1, NULL, NULL),
(93, 'Munish', 1, NULL, NULL),
(94, 'Mythravaruna', 1, NULL, NULL),
(95, 'Nagasya', 1, NULL, NULL),
(96, 'Naidrupa Kashyapa', 1, NULL, NULL),
(97, 'Narayanas', 1, NULL, NULL),
(98, 'Nithyandala', 1, NULL, NULL),
(99, 'Paaniyas', 1, NULL, NULL),
(100, 'Pachori', 1, NULL, NULL),
(101, 'Paing', 1, NULL, NULL),
(102, 'Parashara', 1, NULL, NULL),
(103, 'Parthivasa', 1, NULL, NULL),
(104, 'Paulastya', 1, NULL, NULL),
(105, 'Poothamanasa', 1, NULL, NULL),
(106, 'Pourugutsa', 1, NULL, NULL),
(107, 'Prachinas', 1, NULL, NULL),
(108, 'Raghuvanshi', 1, NULL, NULL),
(109, 'Rajoria', 1, NULL, NULL),
(110, 'Rathitar', 1, NULL, NULL),
(111, 'Rohinya', 1, NULL, NULL),
(112, 'Rohita', 1, NULL, NULL),
(113, 'Sakalya', 1, NULL, NULL),
(114, 'Sakhyanasa', 1, NULL, NULL),
(115, 'Salankayanasa', 1, NULL, NULL),
(116, 'Sankash', 1, NULL, NULL),
(117, 'Sankha-Pingala-Kausta', 1, NULL, NULL),
(118, 'Sankrut', 1, NULL, NULL),
(119, 'Sankyanasa', 1, NULL, NULL),
(120, 'Savanaka', 1, NULL, NULL),
(121, 'Savarana', 1, NULL, NULL),
(122, 'Shaalaksha', 1, NULL, NULL),
(123, 'Shadamarshana', 1, NULL, NULL),
(124, 'Shakhanas', 1, NULL, NULL),
(125, 'Shalavatsa', 1, NULL, NULL),
(126, 'Sandilyasa', 1, NULL, NULL),
(127, 'Sharkaras', 1, NULL, NULL),
(128, 'Sharkvas', 1, NULL, NULL),
(129, 'Shaunak', 1, NULL, NULL),
(130, 'Shravanesya', 1, NULL, NULL),
(131, 'Shrimukh Shandilya', 1, NULL, NULL),
(132, 'Shukla Atreyas', 1, NULL, NULL),
(133, 'Sigidha', 1, NULL, NULL),
(134, 'Sri Vatsa/Vatsa', 1, NULL, NULL),
(135, 'Srungi Bharadwajasa', 1, NULL, NULL),
(136, 'Suparnasa', 1, NULL, NULL),
(137, 'Swathantra Kapisa', 1, NULL, NULL),
(138, 'Tharakayanam', 1, NULL, NULL),
(139, 'Titwal', 1, NULL, NULL),
(140, 'Tushar', 1, NULL, NULL),
(141, 'Udbahu', 1, NULL, NULL),
(142, 'Udhalaka', 1, NULL, NULL),
(143, 'Uditha Gautham', 1, NULL, NULL),
(144, 'Udithya', 1, NULL, NULL),
(145, 'Upamanyu', 1, NULL, NULL),
(146, 'Upamanyu Vasishtasa', 1, NULL, NULL),
(147, 'Upathya', 1, NULL, NULL),
(148, 'Vadulasa', 1, NULL, NULL),
(149, 'Vainya', 1, NULL, NULL),
(150, 'Vardheyasa', 1, NULL, NULL),
(151, 'Vashishtha', 1, NULL, NULL),
(152, 'Veethahavya', 1, NULL, NULL),
(153, 'Vishnordhageerasa', 1, NULL, NULL),
(154, 'Vishnu Vridhha', 1, NULL, NULL),
(155, 'Vishwamitra', 1, NULL, NULL),
(156, 'Yaska', 1, NULL, NULL),
(157, 'Others', 1, NULL, NULL),
(158, 'Don\'t know my gothra(m)', 1, NULL, NULL),
(159, 'Don\'t wish to specify', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `height_table`
--

CREATE TABLE `height_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `height_table`
--

INSERT INTO `height_table` (`id`, `height`, `status`, `created_at`, `updated_at`) VALUES
(1, '4ft 6in / 137 cms', 1, NULL, NULL),
(2, '4ft 7in / 139 cms', 1, NULL, NULL),
(3, '4ft 8in / 142 cms', 1, NULL, NULL),
(4, '4ft 9in / 144 cms', 1, NULL, NULL),
(5, '4ft 10in / 147 cms', 1, NULL, NULL),
(6, '4ft 11in / 149 cms', 1, NULL, NULL),
(7, '5ft / 152 cms', 1, NULL, NULL),
(8, '5ft 1in / 154 cms', 1, NULL, NULL),
(9, '5ft 2in / 157 cms', 1, NULL, NULL),
(10, '5ft 3in / 160 cms', 1, NULL, NULL),
(11, '5ft 4in / 162 cms', 1, NULL, NULL),
(12, '5ft 5in / 165 cms', 1, NULL, NULL),
(13, '5ft 6in / 167 cms', 1, NULL, NULL),
(14, '5ft 7in / 170 cms', 1, NULL, NULL),
(15, '5ft 8in / 172 cms', 1, NULL, NULL),
(16, '5ft 9in / 175 cms', 1, NULL, NULL),
(17, '5ft 10in / 177 cms', 1, NULL, NULL),
(18, '5ft 11in / 180 cms', 1, NULL, NULL),
(19, '6ft / 182 cms', 1, NULL, NULL),
(20, '6ft 1in / 185 cms', 1, NULL, NULL),
(21, '6ft 2in / 187 cms', 1, NULL, NULL),
(22, '6ft 3in / 190 cms', 1, NULL, NULL),
(23, '6ft 4in / 193 cms', 1, NULL, NULL),
(24, '6ft 5in / 195 cms', 1, NULL, NULL),
(25, '6ft 6in / 198 cms', 1, NULL, NULL),
(26, '6ft 7in / 200 cms', 1, NULL, NULL),
(27, '6ft 8in / 203 cms', 1, NULL, NULL),
(28, '6ft 9in / 205 cms', 1, NULL, NULL),
(29, '6ft 10in / 208 cms', 1, NULL, NULL),
(30, '6ft 11in / 210 cms', 1, NULL, NULL),
(31, '7ft / 213 cms', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `highest_education`
--

CREATE TABLE `highest_education` (
  `id` int(10) UNSIGNED NOT NULL,
  `education_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `highest_education`
--

INSERT INTO `highest_education` (`id`, `education_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aeronautical Engineering', 1, NULL, NULL),
(2, 1, 'B.Arch', 1, NULL, NULL),
(3, 1, 'BCA', 1, NULL, NULL),
(4, 1, 'BE', 1, NULL, NULL),
(5, 1, 'B.Plan', 1, NULL, NULL),
(6, 1, 'B.Sc IT/ Computer Science', 1, NULL, NULL),
(7, 1, 'B.Tech.', 1, NULL, NULL),
(8, 1, 'Other Bachelor Degree in Engineering / Computers', 1, NULL, NULL),
(9, 1, 'B.S.(Engineering)', 1, NULL, NULL),
(10, 2, 'M.Arch.', 1, NULL, NULL),
(11, 2, 'MCA', 1, NULL, NULL),
(12, 2, 'ME', 1, NULL, NULL),
(13, 2, 'M.Sc. IT / Computer Science', 1, NULL, NULL),
(14, 2, 'M.S.(Engg.)', 1, NULL, NULL),
(15, 2, 'M.Tech.', 1, NULL, NULL),
(16, 2, 'PGDCA', 1, NULL, NULL),
(17, 2, 'Other Masters Degree in Engineering / Computers', 1, NULL, NULL),
(18, 3, 'Aviation Degree', 1, NULL, NULL),
(19, 3, 'B.A.', 1, NULL, NULL),
(20, 3, 'B.Ed.', 1, NULL, NULL),
(21, 3, 'BFA', 1, NULL, NULL),
(22, 3, 'BFT', 1, NULL, NULL),
(23, 3, 'BLIS', 1, NULL, NULL),
(24, 3, 'B.M.M.', 1, NULL, NULL),
(25, 3, 'B.Sc.', 1, NULL, NULL),
(26, 3, 'B.S.W', 1, NULL, NULL),
(27, 3, 'B.Phil.', 1, NULL, NULL),
(28, 3, 'Other Bachelor Degree in Arts / Science / Commerce', 1, NULL, NULL),
(29, 4, 'M.A.', 1, NULL, NULL),
(30, 4, 'MCom', 1, NULL, NULL),
(31, 4, 'M.Ed.', 1, NULL, NULL),
(32, 4, 'MFA', 1, NULL, NULL),
(33, 4, 'MLIS', 1, NULL, NULL),
(34, 4, 'M.Sc.', 1, NULL, NULL),
(35, 4, 'MSW', 1, NULL, NULL),
(36, 4, 'M.Phil.', 1, NULL, NULL),
(37, 4, 'Other Master Degree in Arts / Science / Commerce', 1, NULL, NULL),
(38, 5, 'BBA', 1, NULL, NULL),
(39, 5, 'BFM (Financial Management)', 1, NULL, NULL),
(40, 5, 'BHM (Hotel Management)', 1, NULL, NULL),
(41, 5, 'Other Bachelor Degree in Management', 1, NULL, NULL),
(42, 6, 'MBA', 1, NULL, NULL),
(43, 6, 'MFM (Financial Management)', 1, NULL, NULL),
(44, 6, 'MHM  (Hotel Management)', 1, NULL, NULL),
(45, 6, 'MHRM (Human Resource Management)', 1, NULL, NULL),
(46, 6, 'PGDM', 1, NULL, NULL),
(47, 6, 'Other Master Degree in Management', 1, NULL, NULL),
(48, 7, 'B.A.M.S.', 1, NULL, NULL),
(49, 7, 'BDS', 1, NULL, NULL),
(50, 7, 'BHMS', 1, NULL, NULL),
(51, 7, 'BSMS', 1, NULL, NULL),
(52, 7, 'BPharm', 1, NULL, NULL),
(53, 7, 'BPT', 1, NULL, NULL),
(54, 7, 'BUMS', 1, NULL, NULL),
(55, 7, 'BVSc', 1, NULL, NULL),
(56, 7, 'MBBS', 1, NULL, NULL),
(57, 7, 'B.Sc. Nursing', 1, NULL, NULL),
(58, 7, 'Other Bachelor Degree in Medicine', 1, NULL, NULL),
(59, 8, 'MDS', 1, NULL, NULL),
(60, 8, 'MD / MS (Medical)', 1, NULL, NULL),
(61, 8, 'M.Pharm', 1, NULL, NULL),
(62, 8, 'MPT', 1, NULL, NULL),
(63, 8, 'MVSc', 1, NULL, NULL),
(64, 8, 'Other Master Degree in Medicine', 1, NULL, NULL),
(65, 9, 'BGL', 1, NULL, NULL),
(66, 9, 'B.L.', 1, NULL, NULL),
(67, 9, 'LL.B.', 1, NULL, NULL),
(68, 9, 'Other Bachelor Degree in Legal', 1, NULL, NULL),
(69, 10, 'LL.M.', 1, NULL, NULL),
(70, 10, 'M.L.', 1, NULL, NULL),
(71, 10, 'Other Master Degree in  Legal', 1, NULL, NULL),
(72, 11, 'CA', 1, NULL, NULL),
(73, 11, 'CFA (Chartered Financial Analyst)', 1, NULL, NULL),
(74, 11, 'CS', 1, NULL, NULL),
(75, 11, 'ICWA', 1, NULL, NULL),
(76, 11, 'Other Degree in Finance', 1, NULL, NULL),
(77, 12, 'IAS', 1, NULL, NULL),
(78, 12, 'IES', 1, NULL, NULL),
(79, 12, 'IFS', 1, NULL, NULL),
(80, 12, 'IRS', 1, NULL, NULL),
(81, 12, 'IPS', 1, NULL, NULL),
(82, 12, 'Other Degree in Service', 1, NULL, NULL),
(85, 13, 'Ph.D.', 1, NULL, NULL),
(86, 14, 'Diploma', 1, NULL, NULL),
(87, 14, 'Polytechnic', 1, NULL, NULL),
(88, 14, 'Trade School', 1, NULL, NULL),
(89, 14, 'Others in Diploma', 1, NULL, NULL),
(90, 15, 'Higher Secondary School / High School', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hobbies`
--

CREATE TABLE `hobbies` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hobbies`
--

INSERT INTO `hobbies` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cooking', 1, NULL, NULL),
(2, 'Nature', 1, NULL, NULL),
(3, 'Photography', 1, NULL, NULL),
(4, 'Dancing', 1, NULL, NULL),
(5, 'Painting', 1, NULL, NULL),
(6, 'Pets', 1, NULL, NULL),
(7, 'Playing Musical\r\nInstruments', 1, NULL, NULL),
(8, 'Puzzles', 1, NULL, NULL),
(9, 'Gardening /\r\nLandscaping', 1, NULL, NULL),
(10, 'Art / Handicraft', 1, NULL, NULL),
(11, 'Listening to Music', 1, NULL, NULL),
(12, 'Movies', 1, NULL, NULL),
(13, 'Internet Surfing', 1, NULL, NULL),
(14, 'Traveling', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `horoscope`
--

CREATE TABLE `horoscope` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `horoscope`
--

INSERT INTO `horoscope` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aries', 1, NULL, NULL),
(2, 'Taurus', 1, NULL, NULL),
(3, 'Gemini', 1, NULL, NULL),
(4, 'Cancer', 1, NULL, NULL),
(5, 'Leo', 1, NULL, NULL),
(6, 'Virgo', 1, NULL, NULL),
(7, 'Libra', 1, NULL, NULL),
(8, 'Scorpio', 1, NULL, NULL),
(9, 'Sagittarius', 1, NULL, NULL),
(10, 'Capricon', 1, NULL, NULL),
(11, 'Aquarius', 1, NULL, NULL),
(12, 'Pisces', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `life_style`
--

CREATE TABLE `life_style` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `hobbies` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favourite_music` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sports_activities` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spoken_languages` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `life_style`
--

INSERT INTO `life_style` (`id`, `user_id`, `hobbies`, `favourite_music`, `sports_activities`, `spoken_languages`, `created_at`, `updated_at`) VALUES
(1, 2, '2,3,5', '1,2,3', '2,3,5', '12,19,43', '2018-08-16 18:30:00', '2018-08-16 18:30:00'),
(2, 3, '2,5', '3', '2', '18,19', '2018-08-16 18:30:00', '2018-08-16 18:30:00'),
(3, 4, '1,2,3', '1,2', '1', '1', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(4, 5, '1,2,3', '1,2', '1', '1', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(5, 6, '1,2,3', '1,2', '1', '1', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(6, 7, '1,2,3', '1,2', '1', '1', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(7, 8, '1,2,3', '1,2', '1', '1', '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(8, 11, '1', '1', '5', '12,13,19', NULL, NULL),
(9, 1, '1,2,3', '1,2', '1,2', '1', '2018-09-13 18:30:00', '2018-09-20 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `location_preferences`
--

CREATE TABLE `location_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `countries` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `citizen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_preferences`
--

INSERT INTO `location_preferences` (`id`, `user_id`, `countries`, `states`, `cities`, `citizen`, `created_at`, `updated_at`) VALUES
(1, 3, '1,3,4', '1,3', '1', '1,4', '2018-08-09 18:30:00', '2018-08-09 18:30:00'),
(2, 2, '1,3,4', '1,3', '1', '1,4', '2018-08-09 18:30:00', '2018-08-09 18:30:00'),
(3, 1, '1,3,4', '1,3', '1', '1,4', '2018-09-16 18:30:00', '2018-09-20 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `maritial_status_table`
--

CREATE TABLE `maritial_status_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maritial_status_table`
--

INSERT INTO `maritial_status_table` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Never Married', 1, NULL, NULL, NULL),
(2, 'Widowed', 1, NULL, NULL, NULL),
(3, 'Divorced', 1, NULL, NULL, NULL),
(4, 'Awaiting Divorce', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `membership_plans`
--

CREATE TABLE `membership_plans` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `months` varchar(191) NOT NULL,
  `rates` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_plans`
--

INSERT INTO `membership_plans` (`id`, `package_id`, `name`, `months`, `rates`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 8, 'Classic', '3 months', '2000', 1, NULL, NULL, '2018-08-21'),
(3, 1, 'Classic special', '4 Months', '2500', 1, NULL, NULL, '2018-08-23'),
(4, 10, 'My membership', '3 months', '2500', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2018_07_25_072523_create_users_table', 1),
(3, '2018_08_01_131043_create_mother_tounges_table', 1),
(4, '2018_08_02_051722_create_basic_details_table', 1),
(5, '2018_08_02_065119_create_template_table', 1),
(6, '2018_08_03_052125_create_religion_info_table', 1),
(7, '2018_08_03_054533_create_religion_table', 1),
(8, '2018_08_03_054725_create_caste_table', 1),
(9, '2018_08_03_055631_create_gothra_table', 1),
(10, '2018_08_03_055753_create_sub_caste_table', 1),
(11, '2018_08_03_065448_create_star_table', 1),
(12, '2018_08_03_065703_create_moon_sign_table', 1),
(13, '2018_08_03_112136_create_user_location_table', 1),
(14, '2018_08_03_113140_create_country_table', 1),
(15, '2018_08_03_113342_create_state_table', 1),
(16, '2018_08_03_123839_create_professtion_info_table', 1),
(17, '2018_08_03_124207_create_highest_education_table', 1),
(18, '2018_08_03_124251_create_occupation_table', 1),
(19, '2018_08_04_030412_create_city_table', 1),
(20, '2018_08_04_041347_create_family_details_table', 1),
(21, '2018_08_04_052223_create_currency_table', 1),
(22, '2018_08_04_055104_create_weight_table_table', 1),
(23, '2018_08_04_062050_create_hobbies_table', 1),
(24, '2018_08_04_062258_create_favourite_music_table', 1),
(25, '2018_08_04_063510_create_sports_activities_table', 1),
(26, '2018_08_04_070009_create_life_style_table', 1),
(27, '2018_08_06_050405_create_about_family_table', 1),
(28, '2018_08_06_052025_create_age_table_table', 1),
(29, '2018_08_06_071234_create_user_profile_images_table', 1),
(30, '2018_08_06_094829_create_basic_partner_preferences_table', 1),
(31, '2018_08_06_102436_create_height_table_table', 1),
(32, '2018_08_06_111645_create_professional_preferences_table', 1),
(33, '2018_08_06_113804_create_annual_income_table_table', 1),
(34, '2018_08_06_121813_create_location_preferences_table', 1),
(35, '2018_08_06_124059_create_detail_preferences_table', 1),
(36, '2018_08_09_045510_create_personal_details_table', 1),
(37, '2018_08_10_052638_create_user_videos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `moon_sign`
--

CREATE TABLE `moon_sign` (
  `id` int(10) UNSIGNED NOT NULL,
  `star_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `moon_sign`
--

INSERT INTO `moon_sign` (`id`, `star_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mesh (Aries)', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(2, 0, 'Vrishaba (Taurus)', 1, NULL, NULL),
(3, 0, 'Mithuna (Gemini)', 1, NULL, NULL),
(4, 0, 'Karkata (Cancer)', 1, NULL, NULL),
(5, 0, 'Simha (Leo)', 1, NULL, NULL),
(6, 0, 'Kanya (Virgo)', 1, NULL, NULL),
(7, 0, 'Tula (Libra)', 1, NULL, NULL),
(8, 0, 'Vrischika (Scorpio)', 1, NULL, NULL),
(9, 0, 'Dhana (Sagittarius)', 1, NULL, NULL),
(10, 0, 'Makara (Capricorn)', 1, NULL, NULL),
(11, 0, 'Kumbha (Aquarius)', 1, NULL, NULL),
(12, 0, 'Meena (Pisces)', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mother_tounges`
--

CREATE TABLE `mother_tounges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mother_tounges`
--

INSERT INTO `mother_tounges` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Angika', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(2, 'Arunachali', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(3, 'Assamese', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(4, 'Awadhi', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(5, 'Bengali', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(6, 'Bhojpuri', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(7, 'Brij', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(8, 'Bihari', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(9, 'Badaga', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(10, 'Chatisgarhi', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(11, 'Dogri', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(12, 'English', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(13, 'French', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(14, 'Garhwali', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(15, 'Garo', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(16, 'Gujarati', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(17, 'Haryanvi', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(18, 'Himachali/Pahari', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(19, 'Hindi', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(20, 'Kanauji', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(21, 'Kannada', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(22, 'Kashmiri', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(23, 'Khandesi', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(24, 'Khasi', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(25, 'Konkani', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(26, 'Koshali', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(27, 'Kumaoni', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(28, 'Kutchi', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(29, 'Lepcha', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(30, 'Ladacki', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(31, 'Magahi', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(32, 'Maithili', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(33, 'Malayalam', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(34, 'Manipuri', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(35, 'Marathi', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(36, 'Marwari', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(37, 'Miji', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(38, 'Mizo', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(39, 'Monpa', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(40, 'Nicobarese', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(41, 'Nepali', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(42, 'Oriya', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(43, 'Punjabi', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(44, 'Rajasthani', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(45, 'Sanskrit', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(46, 'Santhali', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(47, 'Sindhi', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(48, 'Sourashtra', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(49, 'Tamil', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(50, 'Telugu', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(51, 'Tripuri', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(52, 'Tulu', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00'),
(53, 'Urdu', 1, '2018-08-01 18:30:00', '2018-08-01 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Manager', 1, NULL, NULL),
(2, 'Supervisor', 1, NULL, NULL),
(3, 'Officer', 1, NULL, NULL),
(4, 'Administrative Professional', 1, NULL, NULL),
(5, 'Executive', 1, NULL, NULL),
(6, 'Clerk', 1, NULL, NULL),
(7, 'Human Resources Professional', 1, NULL, NULL),
(8, 'Agriculture & Farming Professional', 1, NULL, NULL),
(9, 'Pilot', 1, NULL, NULL),
(10, 'Air Hostess', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `deleted_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Classic Packages', 1, NULL, NULL, NULL),
(2, 'Personalised Packages', 1, NULL, NULL, NULL),
(4, 'Classic Packages', 1, '2018-08-23', NULL, '2018-08-23'),
(5, 'Classic Packages', 1, '2018-08-23', NULL, '2018-08-23'),
(6, 'Classic Packages', 1, '2018-08-23', NULL, '2018-08-23'),
(8, 'Test', 1, '2018-08-23', NULL, '2018-08-23'),
(10, 'My Pack', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('empreet.slinfy@gmail.com', '$2y$10$0ybIMF7jayeFJ7Tk1lnGkuoEiJ.raF3Z3vpj8CisENrkBriBI2FGC', '2018-08-29 00:07:59');

-- --------------------------------------------------------

--
-- Table structure for table `personal_details`
--

CREATE TABLE `personal_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_details`
--

INSERT INTO `personal_details` (`id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 3, 'test personal details', '2018-08-09 18:30:00', '2018-08-09 18:30:00'),
(2, 2, 'test personal details2', '2018-08-09 18:30:00', '2018-08-09 18:30:00'),
(3, 1, 'test personal details updated', '2018-09-17 18:30:00', '2018-09-20 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `professional_preferences`
--

CREATE TABLE `professional_preferences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `preferred_education` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preferred_occupations` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `annual_income` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professional_preferences`
--

INSERT INTO `professional_preferences` (`id`, `user_id`, `preferred_education`, `preferred_occupations`, `annual_income`, `created_at`, `updated_at`) VALUES
(1, 1, '1,8,3', '2', 6, '2018-08-09 18:30:00', '2018-09-20 18:30:00'),
(2, 2, '1,8', '2,3,1', 6, '2018-08-09 18:30:00', '2018-08-09 18:30:00'),
(3, 3, '1,8,3', '2,3,1,5', 6, '2018-08-16 18:30:00', '2018-08-16 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `professtion_info`
--

CREATE TABLE `professtion_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `highest_education_id` int(11) NOT NULL,
  `institution` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employeed_in` int(11) NOT NULL DEFAULT '0' COMMENT '0 for gov 1 for private 2for business 3 for defence 4self employed 5 for not working ',
  `occupation_id` int(11) NOT NULL,
  `occupation_detail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `annual_income` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `professtion_info`
--

INSERT INTO `professtion_info` (`id`, `user_id`, `highest_education_id`, `institution`, `education_detail`, `employeed_in`, `occupation_id`, `occupation_detail`, `currency_id`, `annual_income`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'test', 'test info1', 2, 1, 'testdetails', 1, 1, NULL, '2018-09-20 18:30:00'),
(2, 2, 2, 'test', 'test info', 1, 1, 'testdetails', 1, 1, NULL, NULL),
(3, 3, 14, 'Intitution', 'intitution', 1, 1, 'testdetails', 1, 3, NULL, NULL),
(4, 5, 1, 'test', 'test info', 1, 1, 'testdetails', 1, 1, NULL, NULL),
(5, 4, 1, 'test', 'test info', 1, 1, 'testdetails', 1, 1, NULL, NULL),
(6, 6, 1, 'test', 'test info', 1, 1, 'testdetails', 1, 1, NULL, NULL),
(7, 7, 1, 'test', 'test info', 1, 1, 'testdetails', 1, 1, NULL, NULL),
(8, 8, 1, 'test', 'test info', 1, 1, 'testdetails', 1, 1, NULL, NULL),
(9, 11, 15, 'Intitution', 'Engineer', 1, 9, 'N/A', 3, 1, NULL, NULL),
(10, 14, 1, 'test', 'test info', 1, 1, 'testdetails', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_created_for`
--

CREATE TABLE `profile_created_for` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_created_for`
--

INSERT INTO `profile_created_for` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'My Self', 1, NULL, NULL, NULL),
(2, 'Relative', 1, NULL, NULL, NULL),
(3, 'Friend', 1, NULL, NULL, NULL),
(4, 'Daughter', 1, NULL, NULL, NULL),
(5, 'Sister', 1, NULL, NULL, NULL),
(6, 'Son', 1, NULL, NULL, NULL),
(7, 'Brother', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recommendation`
--

CREATE TABLE `recommendation` (
  `id` int(55) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recommendation`
--

INSERT INTO `recommendation` (`id`, `title`, `description`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Todays Recommendation', 'Life is Beautiful! !!!', '2018-08-20 00:00:00', '2018-08-21 11:59:15', 1),
(7, 'Be Yourself', 'Your time is limited, so don’t waste it living someone else’s life.', '2018-08-21 12:59:26', '2018-08-21 12:59:26', 1),
(11, 'sad', 'drrg', '2018-08-24 13:40:17', '2018-08-24 13:40:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hindu', 1, NULL, NULL),
(2, 'Muslim - All', 1, NULL, NULL),
(3, 'Muslim - Shia', 1, NULL, NULL),
(4, 'Muslim - Sunni', 1, NULL, NULL),
(5, 'Muslim - Others', 1, NULL, NULL),
(6, 'Christian', 1, NULL, NULL),
(7, 'Sikh', 1, NULL, NULL),
(8, 'Jain - All', 1, NULL, NULL),
(9, 'Jain - Digambar', 1, NULL, NULL),
(10, 'Jain - Shwetambar', 1, NULL, NULL),
(11, 'Jain - Others', 1, NULL, NULL),
(12, 'Parsi', 1, NULL, NULL),
(13, 'Buddhist', 1, NULL, NULL),
(14, 'Jewish', 1, NULL, NULL),
(15, 'Inter-Religion', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `religion_info`
--

CREATE TABLE `religion_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `religion_id` int(11) NOT NULL,
  `caste_id` int(11) NOT NULL,
  `sub_caste_id` int(11) NOT NULL,
  `marry_in_same_or_not` int(11) NOT NULL DEFAULT '0' COMMENT '0 for Willing to marry from the same community 1 Willing to marry from other communities also',
  `gothra_id` int(11) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `rassi_moon_sign` int(11) DEFAULT NULL,
  `zodiac_star_sign` int(11) DEFAULT NULL COMMENT '1 for Aries 2 for taurus 3for gemini 4 for cancer 5 for leo 6 for virgo 7 for libra 8 for scorpio 9 for sagittarius 10 for capricon 11 for aquarius 12 pisces',
  `have_dosh` int(11) NOT NULL DEFAULT '0' COMMENT '0 for no 1 for yes 2 for dontknow',
  `dosh` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religion_info`
--

INSERT INTO `religion_info` (`id`, `user_id`, `religion_id`, `caste_id`, `sub_caste_id`, `marry_in_same_or_not`, `gothra_id`, `star`, `rassi_moon_sign`, `zodiac_star_sign`, `have_dosh`, `dosh`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 6, 1, 0, 13, 1, 1, 8, 0, '', '2018-08-09 18:30:00', '2018-08-09 18:30:00'),
(2, 3, 1, 1, 1, 0, 1, 1, 1, 3, 0, '', '2018-08-09 18:30:00', '2018-08-09 18:30:00'),
(3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '1', '2018-08-16 18:30:00', '2018-09-20 18:30:00'),
(4, 4, 2, 3, 2, 0, 2, 2, 1, 1, 0, NULL, '2018-08-17 18:30:00', '2018-08-17 18:30:00'),
(5, 5, 1, 1, 1, 0, 1, 1, 1, 3, 0, NULL, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(6, 6, 1, 1, 1, 0, 1, 1, 1, 3, 0, NULL, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(7, 7, 1, 1, 1, 0, 1, 1, 1, 3, 0, NULL, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(8, 8, 1, 1, 1, 0, 1, 1, 1, 3, 0, NULL, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(9, 11, 1, 5, 1, 0, 15, 1, 1, 1, 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resident_status`
--

CREATE TABLE `resident_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resident_status`
--

INSERT INTO `resident_status` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Permanent Resident', 1, NULL, NULL, NULL),
(2, 'Work Permit', 1, NULL, NULL, NULL),
(3, 'Student Visa', 1, NULL, NULL, NULL),
(4, 'Temporary Visa', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(30) NOT NULL,
  `role_slug` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `role_slug`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 1, NULL, '2017-11-22 05:38:54', '2018-08-24 01:51:34'),
(2, 'Librarian', 'librarian', 1, '2018-08-24 03:40:20', '2017-11-22 05:39:12', '2018-08-24 03:40:20'),
(3, 'Students', 'students', 1, NULL, '2017-11-22 05:39:23', '2017-11-24 23:14:34'),
(4, 'Super Admin', 'superadmin', 1, NULL, '2017-11-22 23:39:03', '2017-11-22 23:39:26'),
(5, 'Moderator', 'moderator', 1, NULL, '2018-02-20 01:20:01', '2018-02-20 01:20:01'),
(6, 'Sarvjeet', 'sarvjeet', 0, '2018-08-24 01:26:23', '2018-08-24 01:16:45', '2018-08-24 01:26:23'),
(7, 'Lalit', 'lalit', 1, '2018-08-24 01:26:15', '2018-08-24 01:25:02', '2018-08-24 01:26:15'),
(8, 'avc', 'vac', 1, '2018-08-24 01:27:35', '2018-08-24 01:27:11', '2018-08-24 01:27:35'),
(9, 'Sarvjeet singh', 'sarvjeet1', 1, '2018-08-24 01:50:15', '2018-08-24 01:49:32', '2018-08-24 01:50:15'),
(10, 'Teacher', 'teacher', 1, NULL, '2018-08-24 08:11:05', '2018-08-24 08:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `select_education`
--

CREATE TABLE `select_education` (
  `id` int(11) NOT NULL,
  `education_type` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `select_education`
--

INSERT INTO `select_education` (`id`, `education_type`, `created_at`, `updated_at`) VALUES
(1, '-- Any Bachelors in Engineering / Computers --', NULL, NULL),
(2, '-- Any Masters in Engineering / Computers --', NULL, NULL),
(3, '-- Any Bachelors in Arts / Science / Commerce --', NULL, NULL),
(4, '-- Any Masters in Arts / Science / Commerce --', NULL, NULL),
(5, '-- Any Bachelors in Management --', NULL, NULL),
(6, '-- Any Masters in Management --', NULL, NULL),
(7, '-- Any Bachelors in Medicine in General / Dental / Surgeon --', NULL, NULL),
(8, '-- Any Masters in Medicine - General / Dental / Surgeon --', NULL, NULL),
(9, '-- Any Bachelors in Legal --', NULL, NULL),
(10, '-- Any Masters in Legal --', NULL, NULL),
(11, '-- Any Financial Qualification - ICWAI / CA / CS/ CFA --', NULL, NULL),
(12, '-- Service - IAS / IPS / IRS / IES / IFS  --', NULL, NULL),
(13, '-- Ph.D. --', NULL, NULL),
(14, '-- Any Diploma --', NULL, NULL),
(15, '-- Higher Secondary / Secondary --', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(512) NOT NULL,
  `setting_value` longtext NOT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `setting_key`, `setting_value`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'header_section', 'a:1:{s:4:"logo";a:1:{s:4:"path";s:59:"uploaded_files/1535457043_MusicPianoWallpaperFullscreen.jpg";}}', 1, NULL, '2018-05-10 00:00:00', '2018-08-28 11:50:43'),
(2, 'footer_section', 'a:1:{s:4:"logo";a:2:{s:4:"path";s:34:"uploaded_files/1535171361_song.jpg";s:7:"content";s:164:"VerifEYEd.me offers its identity confirmation service so that you can confidently deal with a person without worrying about his identity or being a victim of fraud.";}}', 1, NULL, '2018-05-10 00:00:00', '2018-08-25 04:29:21'),
(3, 'sm', 'a:4:{s:8:"facebook";s:24:"https://www.facebook.com";s:7:"twitter";s:23:"https://www.twitter.com";s:9:"pinterest";s:25:"https://www.pinterest.com";s:8:"linkedin";s:24:"https://www.linkedin.com";}', 1, NULL, '2018-05-10 00:00:00', '2018-08-24 10:05:42'),
(4, 'verifier_alloted_credits', 's:3:"500";', 1, NULL, '2018-05-10 00:00:00', '2018-05-10 13:12:13'),
(5, 'home_section', 'a:5:{s:14:"banner_heading";s:29:"KNOW WHO YOU ARE DEALING WITH";s:14:"banner_content";s:122:"VerifEYED is an identity verification service powered by MeONLY  allowing individuals to confirm a third parties identity.";s:18:"how_it_works_video";s:47:"https://www.youtube.com/embed/uJzuDcyR0WM?rel=0";s:13:"block_heading";s:111:"VerifEYEd is a FREE service powered by MeONLY technology allowing users to verify individuals prior to meeting.";s:13:"block_content";s:288:"In today’s digital world virtually everything is done online. Fraud is rampant while trust is taken for granted. Utilizing MeONLY you can quickly and easily build trust with the people you are dealing with by confirming yours and their identities and prevent becoming a fraud statistic.";}', 1, NULL, '2018-05-10 00:00:00', '2018-07-17 19:55:48'),
(6, 'how_it_works_page', '{"page_heading":"Duis aute irure dolor in rehenderit in voluptate velit esse cillum .","page_sub_heading":"VerifEYEd powered byMeONLY is a social next generation, Al powered person to person verification platform that puts You in control.","block_heading":"Duis aute irure dolor in rehenderit in voluptate velit esse cillum .","block_content":"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupta santium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit ugit,","how_it_works_page_video":"https:\\/\\/www.youtube.com\\/embed\\/uJzuDcyR0WM?rel=0","process":[{"heading":"You Request","content":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."},{"heading":"Get the request","content":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."},{"heading":"Identity Validation","content":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."},{"heading":"Result","content":"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."}]}', 1, NULL, '2018-05-10 00:00:00', '2018-07-06 18:16:55'),
(8, 'pricing_page', 'a:2:{s:12:"page_heading";s:68:"Duis aute irure dolor in rehenderit in voluptate velit esse cillum .";s:16:"page_sub_heading";s:317:"MeONLY is an easy and safe to use ID checking service that uses online and social media identity data, ID documents and facial biometric verification to help ensure a person is who he/she claim to be. Once MeONLY has checked and confirmed an identity, both parties receive confirmation that identity has been proofed.";}', 1, NULL, '2018-05-10 00:00:00', '2018-06-13 10:28:36'),
(9, 'aboutus_page', 'a:5:{s:13:"block_heading";s:68:"Duis aute irure dolor in rehenderit in voluptate velit esse cillum .";s:13:"block_content";s:390:"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupta santium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit ugit,";s:10:"sub_block1";s:220:"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupta santium doloremque laudantium, totam rem aperiam,";s:10:"sub_block2";s:220:"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupta santium doloremque laudantium, totam rem aperiam,";s:10:"sub_block3";s:220:"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupta santium doloremque laudantium, totam rem aperiam,";}', 1, NULL, '2018-05-10 00:00:00', '2018-06-13 13:19:08'),
(10, 'verify_pages', 'a:4:{s:15:"driving_licence";a:2:{s:13:"block_heading";s:68:"Duis aute irure dolor in rehenderit in voluptate velit esse cillum .";s:13:"block_content";s:390:"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupta santium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit ugit,";}s:8:"passport";a:2:{s:13:"block_heading";s:68:"Duis aute irure dolor in rehenderit in voluptate velit esse cillum .";s:13:"block_content";s:390:"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupta santium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit ugit,";}s:13:"identity_card";a:2:{s:13:"block_heading";s:68:"Duis aute irure dolor in rehenderit in voluptate velit esse cillum .";s:13:"block_content";s:390:"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupta santium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit ugit,";}s:6:"person";a:2:{s:13:"block_heading";s:68:"Duis aute irure dolor in rehenderit in voluptate velit esse cillum .";s:13:"block_content";s:390:"Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit volupta santium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit ugit,";}}', 1, NULL, '2018-05-10 00:00:00', '2018-06-13 16:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `sports_activities`
--

CREATE TABLE `sports_activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sports_activities`
--

INSERT INTO `sports_activities` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cricket', 1, NULL, NULL),
(2, 'Carrom', 1, NULL, NULL),
(3, 'Chess', 1, NULL, NULL),
(4, 'Jogging', 1, NULL, NULL),
(5, 'Badminton', 1, NULL, NULL),
(6, 'Swimming', 1, NULL, NULL),
(7, 'Tennis', 1, NULL, NULL),
(8, 'Football', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `star`
--

CREATE TABLE `star` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `star`
--

INSERT INTO `star` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Aswini', 1, '2018-08-02 07:30:00', '2018-08-02 07:30:00'),
(2, 'Bharani', 1, '2018-08-02 07:30:00', '2018-08-02 07:30:00'),
(3, 'Kruthiga', 1, '2018-08-02 07:30:00', '2018-08-02 07:30:00'),
(4, 'Rohini', 1, '2018-08-02 07:30:00', '2018-08-02 07:30:00'),
(5, 'Mrigasira', 1, '2018-08-02 07:30:00', '2018-08-02 07:30:00'),
(6, 'Ardra', 1, '2018-08-02 07:30:00', '2018-08-02 07:30:00'),
(7, 'Punarvasu', 1, '2018-08-02 07:30:00', '2018-08-02 07:30:00'),
(8, 'Pusya', 1, '2018-08-02 07:30:00', '2018-08-02 07:30:00'),
(9, 'Asilesha', 1, NULL, NULL),
(10, 'Makha', 1, NULL, NULL),
(11, 'Purvafalgun', 1, NULL, NULL),
(12, 'Uttarfalgun', 1, NULL, NULL),
(13, 'Hastha', 1, NULL, NULL),
(14, 'Chitra', 1, NULL, NULL),
(15, 'Swathi', 1, NULL, NULL),
(16, 'Visaka', 1, NULL, NULL),
(17, 'Anuradha', 1, NULL, NULL),
(18, 'Jyeshta', 1, NULL, NULL),
(19, 'Mula', 1, NULL, NULL),
(20, 'Poorvashadh', 1, NULL, NULL),
(21, 'Uthrashadh', 1, NULL, NULL),
(22, 'Sravan', 1, NULL, NULL),
(23, 'Dhanishta', 1, NULL, NULL),
(24, 'Satatara', 1, NULL, NULL),
(25, 'Poorvabhadra', 1, NULL, NULL),
(26, 'Uthirabhadh', 1, NULL, NULL),
(27, 'Revathi', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `country_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 98, 'Andaman & Nicobar', 1, NULL, NULL),
(2, 98, 'Andhra Pradesh', 1, NULL, NULL),
(3, 98, 'Arunachal Pradesh', 1, NULL, NULL),
(4, 98, 'Assam', 1, NULL, NULL),
(5, 98, 'Bihar', 1, NULL, NULL),
(6, 98, 'Chandigarh', 1, NULL, NULL),
(7, 98, 'Chhattisgarh', 1, NULL, NULL),
(8, 98, 'Dadra & Nagar Haveli', 1, NULL, NULL),
(9, 98, 'Daman & Diu', 1, NULL, NULL),
(10, 98, 'Delhi', 1, NULL, NULL),
(11, 98, 'Goa', 1, NULL, NULL),
(12, 98, 'Gujarat', 1, NULL, NULL),
(13, 98, 'Haryana', 1, NULL, NULL),
(14, 98, 'Himachal Pradesh', 1, NULL, NULL),
(15, 98, 'Jammu & Kashmir', 1, NULL, NULL),
(16, 98, 'Jharkand', 1, NULL, NULL),
(17, 98, 'Karnataka', 1, NULL, NULL),
(18, 98, 'Kerala', 1, NULL, NULL),
(19, 98, 'Lakshadeep', 1, NULL, NULL),
(20, 98, 'Madhya Pradesh', 1, NULL, NULL),
(21, 98, 'Maharashtra', 1, NULL, NULL),
(22, 98, 'Manipur', 1, NULL, NULL),
(23, 98, 'Meghalaya', 1, NULL, NULL),
(24, 98, 'Mizoram', 1, NULL, NULL),
(25, 98, 'Nagaland', 1, NULL, NULL),
(26, 98, 'Orissa', 1, NULL, NULL),
(27, 98, ' Orissa', 1, NULL, NULL),
(28, 98, 'Pondicherry', 1, NULL, NULL),
(29, 98, 'Punjab', 1, NULL, NULL),
(30, 98, 'Rajasthan', 1, NULL, NULL),
(31, 98, 'Sikkim', 1, NULL, NULL),
(32, 98, 'Tamil Nadu', 1, NULL, NULL),
(33, 98, 'Telangana', 1, NULL, NULL),
(34, 98, 'Tripura', 1, NULL, NULL),
(35, 98, 'Uttar Pradesh', 1, NULL, NULL),
(36, 98, 'Uttarakhand', 1, NULL, NULL),
(37, 98, 'West Bengal', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_caste`
--

CREATE TABLE `sub_caste` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_caste`
--

INSERT INTO `sub_caste` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Agiyarase', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(2, 'Gadhiya', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(3, 'Gohilwadi', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(4, 'Gorwal', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(5, 'Kharedi', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(6, 'Sadacharso', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(7, 'Sahastra', 1, '2018-08-02 13:00:00', '2018-08-02 13:00:00'),
(8, 'Tolak', 1, NULL, NULL),
(9, 'Zalawadi', 1, NULL, NULL),
(10, 'Others', 1, NULL, NULL),
(11, 'Don\'t know sub-caste', 1, NULL, NULL),
(12, 'Don\'t wish to specify', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE `template` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1 for no 2 for Occasionally 3 for yes',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Qualis', 'Qualis - Responsive Ecommerce HTML5 Template', 1, '2018-08-01 13:00:00', '2018-08-01 13:00:00'),
(2, 'Bluishost', 'Bluishost - Responsive Web Hosting with WHMCS Themes', 0, '2018-08-01 13:00:00', '2018-08-01 13:00:00'),
(3, 'Moti', 'Moti - App Landing Page HTML5 Template', 0, '2018-08-01 13:00:00', '2018-08-01 13:00:00'),
(4, 'Moti mehal', 'Moti - App Landing Page HTML5 Template', 1, '2018-08-01 13:00:00', '2018-08-01 13:00:00'),
(5, 'Bluishost slify', 'Bluishost -slify', 1, '2018-08-01 13:00:00', '2018-08-01 13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` int(11) NOT NULL,
  `membership_type` varchar(121) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'free' COMMENT '0 for free, 1 for premium',
  `otp` int(11) DEFAULT NULL,
  `member_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `is_verify` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verif_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pwd_reskey` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aadhar_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `user_type`, `membership_type`, `otp`, `member_id`, `status`, `is_verify`, `remember_token`, `social_token`, `verif_token`, `pwd_reskey`, `aadhar_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$6wtAyvnvkqbZGn4AHd4TEucL6DtIYjQWSbnWyNgjXQCls2Jf3fPbm', '9876543211', 0, 'free', NULL, '', 0, 0, 'JAv1ikKY5fNp8TG6YAU3l7OIkM8D4RYefhoz6WOIMMXHulSDkIHl796qqPKw', NULL, NULL, NULL, NULL, '2018-08-10 02:14:31', '2018-09-21 07:51:39', NULL),
(2, 'Aman', 'empreet.slinfy@gmail.com', '$2y$10$XzymQk6y8kZ5WjnKjTAi0OhgxbdYl3jgROVVrvB8mT/NukiP2Bn1q', '9876543213', 1, 'premium', 46618, '', 0, 1, NULL, NULL, NULL, NULL, NULL, '2018-08-10 02:16:26', '2018-09-21 07:37:36', NULL),
(3, 'Punam', 'punam@gmail.com', '$2y$10$5mG/7TYAo.nM1ar3jYT29ekHURDajaOEshGUWuAO0KNlTf5x1xV0C', '9876543214', 2, 'free', NULL, '', 1, 0, NULL, NULL, NULL, NULL, NULL, '2018-08-10 02:16:40', '2018-08-24 05:55:10', NULL),
(4, 'Priya', 'priya@gmail.com', '$2y$10$3KCBQ/haWYkHhngNzMGPC./rv/HR981OonZl6ciEt5hFFbbTOMdp6', '9876543212', 2, 'free', NULL, '', 0, 0, 'hP6azXPUGkvdQu8P5Nlzo8ZG0I06ENdnK0bLwzD99Yd4r0EnPKtCh3HiY6EN', NULL, NULL, NULL, NULL, '2018-08-10 02:16:51', '2018-09-21 07:43:25', NULL),
(5, 'Rahul', 'rahul@gmail.com', '$2y$10$JLWTOyPhPSKKAGY5R.4y2..HISUhgjCq0PsoKQXaxlTaXv5QbWxiq', '9876543215', 1, 'free', NULL, '', 1, 0, NULL, NULL, NULL, NULL, NULL, '2018-08-10 02:17:03', '2018-08-10 02:17:03', NULL),
(6, 'Varinder', 'varindergautam48@gmail.com', '$2y$10$Gq/NbR9w4h4Fh9EKzRS84e92/5SIVRfUeCLF.06rzqmrL6sjzMPm6', '9876543210', 1, 'free', 532615, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 18:30:00', NULL),
(7, 'Ashok Sir', 'ashok@gmail.com', '$2y$10$JMsGN8HEJ3.n01EVSV.NXO27f8ZsGvv.wwy1YONOnxFsfNOEVXU2O', '9876546789', 1, 'free', NULL, '', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Adi', 'adi@gmail.com', '$2y$10$zMfJPFQZmL095BXvUCyjxuBpX65w926pHzVwzgzDgkWZQy7mFGyv2', '1234567891', 1, 'premium', NULL, '', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Pooja', 'pooja@gmail.com', '$2y$10$AwFy8.AioWHeX9OHySgse./qVP.hqE/w4DjKz1TYnnjeGQHdGjyei', '9876543216', 2, 'premium', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Test', 'test@gmail.com', '$2y$10$ITTJfadCdHMaZ6hXP59jYObfuBBKcanWJt9Ml2g6wHA8lcEwAkbgy', '9876543217', 1, 'free', NULL, '', 0, 0, NULL, '123456789', NULL, NULL, NULL, NULL, '2018-08-30 06:35:40', NULL),
(11, 'User', 'admin123@gmail.com', '$2y$10$PQGUmyTrngGmBse7I9HFt.lKYZql5FFMXZ2M9VbuE277wbEucPhIq', '9876543218', 2, 'free', NULL, '', 1, 0, NULL, NULL, NULL, NULL, NULL, '2018-08-22 04:02:18', '2018-08-22 04:02:18', NULL),
(12, 'abc', 'abc@gmail.com', '$2y$10$jGI21TAq/pdze/WRhp48k.jXnH7aov3Fx3PdQhkcOfiGK2r3xBgna', '1234567811', 2, 'free', NULL, '', 1, 0, NULL, NULL, NULL, NULL, NULL, '2018-08-23 02:34:36', '2018-08-23 02:34:36', NULL),
(13, 'abcd', 'abcd@gmail.com', '$2y$10$1TsEbLk0kTzkbj.a1hy92.WKinQMRtWDkqnXRW6XdNsKYiVUqptF.', '1728722912', 2, 'premium', NULL, 'G16620432', 0, 0, NULL, NULL, NULL, NULL, NULL, '2018-08-23 02:39:47', '2018-08-24 23:02:14', '2018-08-25 04:32:14'),
(14, 'test', 'pranav.slinfy@gmail.com', '$2y$10$sWzOair5tYcz7tpM3tllleZNdxAlz.N4.6/96yqXSaS07faMobu2K', '9876543215', 1, 'free', NULL, 'G84414769', 1, 1, NULL, NULL, NULL, 'YmFzZTY0Ojc4WTJWaG1HWUlnc05Tbk0zRTQwWVU2dm1vdXVhR2lxMWk2NnMwMlFJeE09@indcHJhbmF2LnNsaW5meUBnbWFpbC5jb20=', '12345567', '2018-08-23 05:33:35', '2018-09-21 04:34:30', NULL),
(25, 'testt', 'testt@gmail.com', '$2y$10$BNe7rI3pWzvc0w.hFk68OuvVn6knJDGlMYFN2SL2tZoVNlPhyL7Qa', '2183219893', 1, 'free', NULL, 'G48820921', 1, 1, '123456789', '123456789', NULL, NULL, NULL, '2018-08-24 08:07:25', '2018-08-24 08:07:25', NULL),
(26, 'test1', 'empreet@gmail.com', '$2y$10$TWjHDRMmzOtv3cEMl.0MDutEcdTFj99/05eYLHtot/R71lnW62mIa', '9646633080', 0, 'free', NULL, '', 1, 0, 'arQH6xnKYf9YRoF8iydAej4umg6xVww5JP5Dm0wSyvNBtqhGWXhDQCMTCJuE', NULL, NULL, NULL, NULL, '2018-08-28 23:14:07', '2018-08-28 23:14:07', NULL),
(29, 'User', 'empreetslinfy@gmail.com', '$2y$10$M4GUPZZsRK/UUf.rmoFfuOjma0VAIEl/wiQPi4tsX8.QGquM3dXsS', '5732976182', 2, 'premium', NULL, 'G25490992', 1, 0, NULL, NULL, NULL, NULL, NULL, '2018-08-28 23:58:22', '2018-08-28 23:58:22', NULL),
(30, 'testuser', 'testuser@gmail.com', '$2y$10$gKLs2iqXJpp1q59hWbSatOtnHxYx7YE3Jj.RSmFtSlLY05KZjAJ72', '1234557422', 1, 'free', NULL, 'G66434061', 0, 0, 'meUuPbEDkhk3gVXsjsglsfqvO4F7sKLTm6W53OXTli8LcrlqWiHW87ZZTcjd', NULL, NULL, NULL, NULL, '2018-08-30 07:02:51', '2018-08-30 07:02:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_location`
--

CREATE TABLE `user_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `country_living_id` int(11) NOT NULL,
  `citizenship` int(11) NOT NULL,
  `resident_status` int(11) DEFAULT NULL COMMENT '0 for permanent_resident 1 for workpermit 2 for student visa 3 for temporary visa',
  `residing_state` int(11) NOT NULL,
  `residing_city` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_location`
--

INSERT INTO `user_location` (`id`, `user_id`, `country_living_id`, `citizenship`, `resident_status`, `residing_state`, `residing_city`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, 2, 1, '2018-08-09 18:30:00', '2018-09-20 18:30:00'),
(2, 2, 1, 2, 1, 2, 1, '2018-08-09 18:30:00', '2018-09-17 18:30:00'),
(3, 3, 8, 25, 2, 25, 1, '2018-08-16 18:30:00', '2018-08-19 18:30:00'),
(4, 4, 1, 2, 1, 1, 1, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(5, 5, 1, 2, 1, 1, 1, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(6, 6, 1, 2, 1, 1, 1, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(7, 7, 1, 2, 1, 1, 1, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(8, 8, 1, 2, 1, 1, 1, '2018-08-20 18:30:00', '2018-08-20 18:30:00'),
(9, 11, 17, 98, 3, 18, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_memberships`
--

CREATE TABLE `user_memberships` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `membership_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `membership_name` varchar(255) NOT NULL,
  `total_amount` double(10,2) NOT NULL,
  `discount_amount` double(10,2) NOT NULL,
  `amount_paid` double(10,2) NOT NULL,
  `transaction_source` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_memberships`
--

INSERT INTO `user_memberships` (`id`, `user_id`, `membership_id`, `package_id`, `membership_name`, `total_amount`, `discount_amount`, `amount_paid`, `transaction_source`, `transaction_id`, `start_date`, `end_date`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 1, 'Classic', 2000.00, 0.00, 2000.00, 1, 'sadascvasdasd', '2018-08-23', '2018-11-23', 2, NULL, '2018-08-23 17:36:00', '2018-08-28 07:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_images`
--

CREATE TABLE `user_profile_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_profile_images`
--

INSERT INTO `user_profile_images` (`id`, `user_id`, `image`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '075637large.jpg', 1, NULL, '2018-08-09 13:00:00', '2018-08-09 13:00:00'),
(3, 3, '06160943101c68a13264026621495e181d9264.jpg', 1, NULL, '2018-08-17 18:30:00', '2018-08-17 18:30:00'),
(5, 4, '07444260x67cm-Wall-Sticker-Music-Quote-Musical-Note-Removable-Art-PVC-Mural-Decal-Home-Decor-Brand-New.jpg_640x640.jpg', 1, NULL, '2018-08-17 18:30:00', '2018-08-17 18:30:00'),
(6, 2, '075637large.jpg', 1, NULL, '2018-08-09 13:00:00', '2018-08-09 13:00:00'),
(7, 2, '06160943101c68a13264026621495e181d9264.jpg', 1, NULL, '2018-08-17 18:30:00', '2018-08-17 18:30:00'),
(8, 2, '07444260x67cm-Wall-Sticker-Music-Quote-Musical-Note-Removable-Art-PVC-Mural-Decal-Home-Decor-Brand-New.jpg_640x640.jpg', 1, '2018-08-23 05:41:39', '2018-08-17 18:30:00', '2018-08-23 00:11:39');

-- --------------------------------------------------------

--
-- Table structure for table `user_videos`
--

CREATE TABLE `user_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_videos`
--

INSERT INTO `user_videos` (`id`, `user_id`, `video`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(2, 3, '123137ff7.mp4', 1, NULL, '2018-08-16 13:00:00', '2018-08-16 13:00:00'),
(3, 4, '061459movie.mp4', 1, NULL, '2018-08-17 18:30:00', '2018-08-17 18:30:00'),
(4, 4, '061459sintel.mp4', 1, NULL, '2018-08-17 18:30:00', '2018-08-17 18:30:00'),
(5, 2, '111244trailer (1).mp4', 1, NULL, '2018-08-16 13:00:00', NULL),
(6, 2, '123137ff7.mp4', 1, NULL, '2018-08-16 13:00:00', '2018-08-16 13:00:00'),
(7, 2, '061459sintel.mp4', 1, NULL, '2018-08-17 18:30:00', '2018-08-23 00:27:22');

-- --------------------------------------------------------

--
-- Table structure for table `weight_table`
--

CREATE TABLE `weight_table` (
  `id` int(10) UNSIGNED NOT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weight_table`
--

INSERT INTO `weight_table` (`id`, `weight`, `status`, `created_at`, `updated_at`) VALUES
(1, '41 kg', 1, NULL, NULL),
(2, '42 kg', 1, NULL, NULL),
(3, '43 kg', 1, NULL, NULL),
(4, '44 kg', 1, NULL, NULL),
(5, '45 kg', 1, NULL, NULL),
(6, '46 kg', 1, NULL, NULL),
(7, '47 kg', 1, NULL, NULL),
(8, '48 kg', 1, NULL, NULL),
(9, '49 kg', 1, NULL, NULL),
(10, '50 kg', 1, NULL, NULL),
(11, '51 kg', 1, NULL, NULL),
(12, '52 kg', 1, NULL, NULL),
(13, '53 kg', 1, NULL, NULL),
(14, '54 kg', 1, NULL, NULL),
(15, '55 kg', 1, NULL, NULL),
(16, '56 kg', 1, NULL, NULL),
(17, '57 kg', 1, NULL, NULL),
(18, '58 kg', 1, NULL, NULL),
(19, '59 kg', 1, NULL, NULL),
(20, '60 kg', 1, NULL, NULL),
(21, '61 kg', 1, NULL, NULL),
(22, '62 kg', 1, NULL, NULL),
(23, '63 kg', 1, NULL, NULL),
(24, '64 kg', 1, NULL, NULL),
(25, '65 kg', 1, NULL, NULL),
(26, '66 kg', 1, NULL, NULL),
(27, '67 kg', 1, NULL, NULL),
(28, '68 kg', 1, NULL, NULL),
(29, '69 kg', 1, NULL, NULL),
(30, '70 kg', 1, NULL, NULL),
(31, '71 kg', 1, NULL, NULL),
(32, '72 kg', 1, NULL, NULL),
(33, '73 kg', 1, NULL, NULL),
(34, '74 kg', 1, NULL, NULL),
(35, '75 kg', 1, NULL, NULL),
(36, '76 kg', 1, NULL, NULL),
(37, '77 kg', 1, NULL, NULL),
(38, '78 kg', 1, NULL, NULL),
(39, '79 kg', 1, NULL, NULL),
(40, '80 kg', 1, NULL, NULL),
(41, '81 kg', 1, NULL, NULL),
(42, '82 kg', 1, NULL, NULL),
(43, '83 kg', 1, NULL, NULL),
(44, '84 kg', 1, NULL, NULL),
(45, '85 kg', 1, NULL, NULL),
(46, '86 kg', 1, NULL, NULL),
(47, '87 kg', 1, NULL, NULL),
(48, '88 kg', 1, NULL, NULL),
(49, '89 kg', 1, NULL, NULL),
(50, '90 kg', 1, NULL, NULL),
(51, '91 kg', 1, NULL, NULL),
(52, '92 kg', 1, NULL, NULL),
(53, '93 kg', 1, NULL, NULL),
(54, '94 kg', 1, NULL, NULL),
(55, '95 kg', 1, NULL, NULL),
(56, '96 kg', 1, NULL, NULL),
(57, '97 kg', 1, NULL, NULL),
(58, '98 kg', 1, NULL, NULL),
(59, '99 kg', 1, NULL, NULL),
(60, '100 kg', 1, NULL, NULL),
(61, '101 kg', 1, NULL, NULL),
(62, '102 kg', 1, NULL, NULL),
(63, '103 kg', 1, NULL, NULL),
(64, '104 kg', 1, NULL, NULL),
(65, '105 kg', 1, NULL, NULL),
(66, '106 kg', 1, NULL, NULL),
(67, '107 kg', 1, NULL, NULL),
(68, '108 kg', 1, NULL, NULL),
(69, '109 kg', 1, NULL, NULL),
(70, '110 kg', 1, NULL, NULL),
(71, '111 kg', 1, NULL, NULL),
(72, '112 kg', 1, NULL, NULL),
(73, '113 kg', 1, NULL, NULL),
(74, '114 kg', 1, NULL, NULL),
(75, '115 kg', 1, NULL, NULL),
(76, '116 kg', 1, NULL, NULL),
(77, '117 kg', 1, NULL, NULL),
(78, '118 kg', 1, NULL, NULL),
(79, '119 kg', 1, NULL, NULL),
(80, '120 kg', 1, NULL, NULL),
(81, '121 kg', 1, NULL, NULL),
(82, '122 kg', 1, NULL, NULL),
(83, '123 kg', 1, NULL, NULL),
(84, '124 kg', 1, NULL, NULL),
(85, '125 kg', 1, NULL, NULL),
(86, '126 kg', 1, NULL, NULL),
(87, '127 kg', 1, NULL, NULL),
(88, '128 kg', 1, NULL, NULL),
(89, '129 kg', 1, NULL, NULL),
(90, '130 kg', 1, NULL, NULL),
(91, '131 kg', 1, NULL, NULL),
(92, '132 kg', 1, NULL, NULL),
(93, '133 kg', 1, NULL, NULL),
(94, '134 kg', 1, NULL, NULL),
(95, '135 kg', 1, NULL, NULL),
(96, '136 kg', 1, NULL, NULL),
(97, '137 kg', 1, NULL, NULL),
(98, '138 kg', 1, NULL, NULL),
(99, '139 kg', 1, NULL, NULL),
(100, '140 kg', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_family`
--
ALTER TABLE `about_family`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `about_family_user_id_unique` (`user_id`);

--
-- Indexes for table `age_table`
--
ALTER TABLE `age_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `annual_income_table`
--
ALTER TABLE `annual_income_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `basic_details`
--
ALTER TABLE `basic_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `basic_details_user_id_unique` (`user_id`);

--
-- Indexes for table `basic_partner_preferences`
--
ALTER TABLE `basic_partner_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `basic_partner_preferences_user_id_unique` (`user_id`);

--
-- Indexes for table `caste`
--
ALTER TABLE `caste`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complextion_table`
--
ALTER TABLE `complextion_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `country_name_unique` (`name`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_preferences`
--
ALTER TABLE `detail_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `detail_preferences_user_id_unique` (`user_id`);

--
-- Indexes for table `dosh_table`
--
ALTER TABLE `dosh_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_details`
--
ALTER TABLE `family_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `family_details_user_id_unique` (`user_id`);

--
-- Indexes for table `favourite_music`
--
ALTER TABLE `favourite_music`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gothra`
--
ALTER TABLE `gothra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `height_table`
--
ALTER TABLE `height_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `highest_education`
--
ALTER TABLE `highest_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hobbies`
--
ALTER TABLE `hobbies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horoscope`
--
ALTER TABLE `horoscope`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `life_style`
--
ALTER TABLE `life_style`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `life_style_user_id_unique` (`user_id`);

--
-- Indexes for table `location_preferences`
--
ALTER TABLE `location_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `location_preferences_user_id_unique` (`user_id`);

--
-- Indexes for table `maritial_status_table`
--
ALTER TABLE `maritial_status_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `membership_plans`
--
ALTER TABLE `membership_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moon_sign`
--
ALTER TABLE `moon_sign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mother_tounges`
--
ALTER TABLE `mother_tounges`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mother_tounges_name_unique` (`name`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_details_user_id_unique` (`user_id`);

--
-- Indexes for table `professional_preferences`
--
ALTER TABLE `professional_preferences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `professional_preferences_user_id_unique` (`user_id`);

--
-- Indexes for table `professtion_info`
--
ALTER TABLE `professtion_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `professtion_info_user_id_unique` (`user_id`);

--
-- Indexes for table `profile_created_for`
--
ALTER TABLE `profile_created_for`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `recommendation`
--
ALTER TABLE `recommendation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `religion_info`
--
ALTER TABLE `religion_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `religion_info_user_id_unique` (`user_id`);

--
-- Indexes for table `resident_status`
--
ALTER TABLE `resident_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `select_education`
--
ALTER TABLE `select_education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sports_activities`
--
ALTER TABLE `sports_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `star`
--
ALTER TABLE `star`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_caste`
--
ALTER TABLE `sub_caste`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template`
--
ALTER TABLE `template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_location`
--
ALTER TABLE `user_location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_location_user_id_unique` (`user_id`);

--
-- Indexes for table `user_memberships`
--
ALTER TABLE `user_memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile_images`
--
ALTER TABLE `user_profile_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_profile_images_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_videos`
--
ALTER TABLE `user_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_videos_user_id_foreign` (`user_id`);

--
-- Indexes for table `weight_table`
--
ALTER TABLE `weight_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_family`
--
ALTER TABLE `about_family`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `age_table`
--
ALTER TABLE `age_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `annual_income_table`
--
ALTER TABLE `annual_income_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `basic_details`
--
ALTER TABLE `basic_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `basic_partner_preferences`
--
ALTER TABLE `basic_partner_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `caste`
--
ALTER TABLE `caste`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1611;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `complextion_table`
--
ALTER TABLE `complextion_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT for table `detail_preferences`
--
ALTER TABLE `detail_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `dosh_table`
--
ALTER TABLE `dosh_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `family_details`
--
ALTER TABLE `family_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `favourite_music`
--
ALTER TABLE `favourite_music`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gothra`
--
ALTER TABLE `gothra`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
--
-- AUTO_INCREMENT for table `height_table`
--
ALTER TABLE `height_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `highest_education`
--
ALTER TABLE `highest_education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `hobbies`
--
ALTER TABLE `hobbies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `horoscope`
--
ALTER TABLE `horoscope`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `life_style`
--
ALTER TABLE `life_style`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `location_preferences`
--
ALTER TABLE `location_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `maritial_status_table`
--
ALTER TABLE `maritial_status_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `membership_plans`
--
ALTER TABLE `membership_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `moon_sign`
--
ALTER TABLE `moon_sign`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `mother_tounges`
--
ALTER TABLE `mother_tounges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `personal_details`
--
ALTER TABLE `personal_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `professional_preferences`
--
ALTER TABLE `professional_preferences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `professtion_info`
--
ALTER TABLE `professtion_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `profile_created_for`
--
ALTER TABLE `profile_created_for`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `recommendation`
--
ALTER TABLE `recommendation`
  MODIFY `id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `religion_info`
--
ALTER TABLE `religion_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `resident_status`
--
ALTER TABLE `resident_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `select_education`
--
ALTER TABLE `select_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sports_activities`
--
ALTER TABLE `sports_activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `star`
--
ALTER TABLE `star`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `sub_caste`
--
ALTER TABLE `sub_caste`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `template`
--
ALTER TABLE `template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `user_location`
--
ALTER TABLE `user_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_memberships`
--
ALTER TABLE `user_memberships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_profile_images`
--
ALTER TABLE `user_profile_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user_videos`
--
ALTER TABLE `user_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `weight_table`
--
ALTER TABLE `weight_table`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `about_family`
--
ALTER TABLE `about_family`
  ADD CONSTRAINT `about_family_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `basic_details`
--
ALTER TABLE `basic_details`
  ADD CONSTRAINT `basic_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `basic_partner_preferences`
--
ALTER TABLE `basic_partner_preferences`
  ADD CONSTRAINT `basic_partner_preferences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `detail_preferences`
--
ALTER TABLE `detail_preferences`
  ADD CONSTRAINT `detail_preferences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `family_details`
--
ALTER TABLE `family_details`
  ADD CONSTRAINT `family_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `life_style`
--
ALTER TABLE `life_style`
  ADD CONSTRAINT `life_style_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `location_preferences`
--
ALTER TABLE `location_preferences`
  ADD CONSTRAINT `location_preferences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `personal_details`
--
ALTER TABLE `personal_details`
  ADD CONSTRAINT `personal_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `professional_preferences`
--
ALTER TABLE `professional_preferences`
  ADD CONSTRAINT `professional_preferences_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `professtion_info`
--
ALTER TABLE `professtion_info`
  ADD CONSTRAINT `professtion_info_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `religion_info`
--
ALTER TABLE `religion_info`
  ADD CONSTRAINT `religion_info_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_location`
--
ALTER TABLE `user_location`
  ADD CONSTRAINT `user_location_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_profile_images`
--
ALTER TABLE `user_profile_images`
  ADD CONSTRAINT `user_profile_images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_videos`
--
ALTER TABLE `user_videos`
  ADD CONSTRAINT `user_videos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
