-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2022 at 05:04 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mohsalah_law`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `line` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `who_issued_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `agent_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`id`, `name`, `email`, `mobile`, `line`, `image`, `address`, `who_issued_agent`, `agent_number`, `client_id`, `created_at`, `updated_at`, `release_date`, `expiry_date`) VALUES
(4, 'عمر', 'omr@gmail.com', '0123456', '123456', '1658513629.jpg', 'cairo', 'حسن', '21', 1, '2022-07-15 06:22:58', '2022-07-22 16:13:49', '2022-07-21', '2022-07-25'),
(5, 'عبد الرحمن', 'abdelrahman@gmail.com', '012356', '123456', '1658189989.jpg', 'cairo', 'حازم', '45', 7, '2022-07-18 22:19:49', '2022-07-18 22:19:49', '2022-07-19', '2022-07-19'),
(6, 'سعد ', 'sad@gmail.com', '04577255', '53222', '1658526016.jpg', 'أبها', 'معاذ', '3432', 10, '2022-07-22 19:40:16', '2022-07-22 19:40:16', '2022-07-22', '2022-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` bigint UNSIGNED NOT NULL,
  `case_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_case` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `The_case_stage_at_the_time_of_the_contract` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `contract_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_of_the_case` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `court` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `court_specialization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `circle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `circle_specialization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `explanation_of_the_case` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opponent_id` bigint UNSIGNED DEFAULT NULL,
  `sum_income` bigint DEFAULT NULL,
  `sum_cost` bigint DEFAULT NULL,
  `total` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `case_number`, `type_of_case`, `The_case_stage_at_the_time_of_the_contract`, `date`, `client_id`, `contract_id`, `created_at`, `updated_at`, `name_of_the_case`, `court`, `court_specialization`, `circle`, `circle_specialization`, `explanation_of_the_case`, `opponent_id`, `sum_income`, `sum_cost`, `total`) VALUES
(1, '4586', 'أستشارة ', 'منظورة', '2022-07-19', 1, 1, '2022-07-19 19:50:52', '2022-09-10 07:54:06', 'قضية تجريبية', 'محكمة الرياض', 'عامة', 'الشريط', 'عامة', 'دعوى محمد عبد الله ضد محمد أحمد مطالبة بمبلغ مليون ريال المرفوعة بالمحكمة العامة بمكة المكرمة ', NULL, 33000, 5000, 28000),
(2, '456012', 'أحوال شخصية', 'منظورة', '2022-07-03', 8, 2, '2022-07-21 04:46:06', '2022-09-13 19:21:00', 'قضية تجريبية جديدة', 'جدة', 'عامة', 'المدينة', 'عامة', 'دعوى من حسام ضد حسين يطلب تعويض 500 ألف ريال', 2, 80000, 25000, 55000),
(3, '2423423', 'أحوال شخصية', 'منظورة', '2022-07-23', 1, 2, '2022-07-23 06:27:17', '2022-09-13 19:18:03', 'قضية تجريبية', 'جدة', 'عامة', 'جدة', 'عامة', 'دعوى أحمد عبد الرحمن ضد سليمان مطالبة بمبلغ مليون ريال والمروفعة بالمحكمة العامة بجدة بالدائرة الأولى والمقيدة برقم 2423423', 1, 90000, 20000, 70000);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `type_of_work` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Identification_Number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date_of_Id` date DEFAULT NULL,
  `Commercial_Registration_No` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Date_of_the_commercial_register` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_client` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `client_image`, `name`, `email`, `email_verified_at`, `address`, `image`, `created_at`, `updated_at`, `mobile`, `sex`, `birth_date`, `type_of_work`, `Identification_Number`, `Date_of_Id`, `Commercial_Registration_No`, `Date_of_the_commercial_register`, `type_of_client`) VALUES
(1, '5433423.jpg', 'محمد صلاح', 'mohsalah2050@gmail.com', NULL, 'حدائق حلوان القاهرة', '1658514376.jpg', '2022-07-05 19:12:01', '2022-07-22 17:40:11', '01116337800', 'ذكر', '2022-07-08', 'خاص', '21342342', '2022-06-28', '232344', '2022-07-28', 'فرد'),
(7, '1658560953.jpg', 'نورة عبد الرحمن', 'abdela@gmail.com', NULL, 'القاهرة', '1658519841.png', '2022-07-16 07:02:38', '2022-07-23 05:22:33', '012345678', 'أنثى', '1997-06-18', 'خاص', '2342342', '2022-07-06', '23424', '2022-07-22', 'فرد'),
(8, '54376.jpg', 'حسام', 'hosam@gmail.com', NULL, 'القصيم', '1658514377.jpg', '2022-07-19 00:03:52', '2022-07-22 17:59:20', '456789', 'ذكر', '2022-07-19', 'خاص', '23424324', '2005-06-14', '344535', '2022-07-05', 'فرد'),
(9, '1658560352.jpg', 'محمد عبد العزيز', 'mohAbdel@gmail.com', NULL, 'الرياض', '1658514378.jpg', '2022-07-22 13:19:49', '2022-07-23 05:12:32', '2345', 'ذكر', '2022-07-22', 'خاص', '42555', '2022-07-22', '244', '2022-07-22', 'فرد'),
(10, '1658525423.jpg', 'أحمد عبد الرحمن', 'a.alhusain559@gmail.com', NULL, 'الرياض', '1658523343.jpg', '2022-07-22 18:55:43', '2022-09-13 19:11:16', '1234455', 'ذكر', '2022-07-22', 'خاص', '243223', '2022-07-22', '3442', '2022-07-22', 'فرد'),
(11, '1662083858.png', 'new', 'new@gmail.com', NULL, '444', '1662084074.jpg', '2022-09-01 23:48:58', '2022-09-02 00:01:14', '123', 'ذكر', '1444-02-24', 'new', '4444', '1444-02-10', '432', '1444-02-04', 'new');

-- --------------------------------------------------------

--
-- Table structure for table `consultations`
--

CREATE TABLE `consultations` (
  `id` bigint UNSIGNED NOT NULL,
  `consultation_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `consulting_specialty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `consultation_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parties_to_counseling` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `consultation_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `consultation_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultations`
--

INSERT INTO `consultations` (`id`, `consultation_num`, `consulting_specialty`, `consultation_stage`, `parties_to_counseling`, `consultation_date`, `consultation_details`, `employee_id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '566', 'قانونية', 'مرحلة التسليم', 'لا يوجد', '1444-02-12', 'دعوى محمد عبد العزيز ضد محمد أحمد للمطالبة بمبلغ مالي', 1, 8, '2022-08-23 21:48:04', '2022-09-08 16:59:56');

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `id` bigint UNSIGNED NOT NULL,
  `type_of_contract` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contract_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `services` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint UNSIGNED DEFAULT NULL,
  `service_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `employee_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`id`, `type_of_contract`, `contract_number`, `services`, `status`, `fee`, `starting_date`, `expiry_date`, `client_id`, `service_details`, `file`, `created_at`, `updated_at`, `employee_id`) VALUES
(1, 'سنوي', '432', 'أستشارة - متابعة قضائية', 'بانتظار الموافقة', '1600', '2022-06-26', '2022-07-31', 10, NULL, NULL, '2022-07-16 07:35:01', '2022-07-22 19:37:02', 0),
(2, 'شهري', '4455', 'متابعة قانونية', 'تمام', '2000', '2022-07-19', '2022-07-19', 7, NULL, NULL, '2022-07-19 06:19:50', '2022-09-08 02:24:13', 1),
(3, 'نصف سنوي', '41', 'أستشارة قانوينة', 'قيد المراجعة', '1800', '2022-07-19', '2022-07-19', 1, NULL, NULL, '2022-07-19 06:29:14', '2022-09-08 02:24:23', 1),
(4, 'شهري', '542', 'رفع دعوى', 'قيد التنفيذ', '50000', '1444-02-01', '1444-02-30', 1, 'رفع دعوى للمطالبة بتعويض', '1662267081.docx', '2022-09-04 02:51:21', '2022-09-05 06:04:50', 0),
(5, 'سنوي', '53', 'أستشارة قانوينة', 'قيد المراجعة', '20000', '1444-02-01', '1444-02-29', 1, 'أستشارة قانوينة مهمه', '1662368517.docx', '2022-09-05 07:01:57', '2022-09-08 02:24:45', 1),
(6, 'سنوي', '25', 'أستشارة - متابعة قضائية', 'بانتظار الموافقة', '40000', '1444-02-01', '1444-02-23', 1, 'أستشارة - متابعة قضائية هامة	', '1662368758.docx', '2022-09-05 07:05:58', '2022-09-08 02:24:52', 1),
(21, 'سنوى', '2121212', 'يسيسيسيسي', 'سنوى', '100000', '13-09-2022', '25-09-2022', 10, 'يبيبيبي', '1663081957.docx', '2022-09-13 19:12:37', '2022-09-13 19:12:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint UNSIGNED NOT NULL,
  `document_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_document` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_of_document` date NOT NULL,
  `case_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `document_name`, `type_of_document`, `image`, `images`, `date_of_document`, `case_id`, `created_at`, `updated_at`) VALUES
(1, 'عقد تأسيس شركة أحمد عبد الرحمن', 'عقد تأسيس شركة ذات مسؤلية محدودة', '1659558541.jpg', ',16595608490.jpg,16595608491.jpg,16595608492.jpg,16595608493.jpg,16595608494.jpg,16595608495.jpg', '2022-07-30', 3, '2022-07-30 01:53:32', '2022-08-03 19:09:50'),
(2, 'عقد الأبتدائي لشركة عبد الله', 'عقد تأسيس شركة مساهمة', '1659167558.jpg', ',16591675580.jpg', '2022-07-30', 2, '2022-07-30 05:52:38', '2022-07-30 05:52:38'),
(3, 'عقد تأسيس', 'عقد', '1659170800.jpg', ',16591708000.jpg', '2022-07-30', 2, '2022-07-30 06:46:40', '2022-07-30 06:46:40'),
(5, 'النظام الأساسي لشركة توصية بالأسهم', 'نظام أساسي', '1659172643.jpg', ',16595611920.jpg,16595611921.jpg', '2022-07-01', 3, '2022-07-30 07:17:23', '2022-08-03 19:13:12'),
(6, 'عقد تسويق للشركة', 'عقد تسويق', '1659172696.jpg', ',16591726960.jpg', '2022-07-01', 3, '2022-07-30 07:18:16', '2022-07-30 07:18:16'),
(7, 'عقد تسويق للشركة', 'عقد تسويق', '1659173858.jpg', ',16591738580.jpg,16591738581.jpg,16591738582.jpg', '1444-02-12', 3, '2022-07-30 07:37:38', '2022-09-08 17:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` int DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'ذكر',
  `job_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contract_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `beginning_contract` date DEFAULT NULL,
  `end_contract` date DEFAULT NULL,
  `job_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_join` date DEFAULT NULL,
  `holidays` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `administration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `hour_value` int DEFAULT NULL,
  `housing` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transportation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commissions` int DEFAULT NULL,
  `extra_time` int DEFAULT NULL,
  `holidays_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alarms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pledges` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_cost` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `mobile`, `address`, `image`, `birth_date`, `sex`, `job_title`, `section`, `job_number`, `contract_number`, `beginning_contract`, `end_contract`, `job_location`, `date_of_join`, `holidays`, `branch`, `administration`, `salary`, `hour_value`, `housing`, `transportation`, `commissions`, `extra_time`, `holidays_number`, `alarms`, `pledges`, `total_cost`, `created_at`, `updated_at`) VALUES
(1, 'محمد إبراهيم', 'ibrahem@gmail.com', 123456, 'الرياض', '1661078421.jpg', '1444-02-12', 'ذكر', 'المدير العام', 'القضايا العامة', '4555', '855', '1421-10-14', '1453-09-23', 'الرياض', '1444-03-15', 'الخميس والجمعة', 'الرياض', 'المحلية', 30000, 300, '300', '300', 300, 300, '10 أيام', 'لا يوجد', 'لا يوجد', '40000', '2022-08-21 08:40:21', '2022-09-08 18:29:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `finances`
--

CREATE TABLE `finances` (
  `id` bigint UNSIGNED NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `values` decimal(8,2) NOT NULL,
  `details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `case_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finances`
--

INSERT INTO `finances` (`id`, `number`, `name`, `type`, `date`, `values`, `details`, `employee_id`, `case_id`, `created_at`, `updated_at`) VALUES
(1, '1', 'أتعاب القضية', 'income', '1444-02-10', '50000.00', 'أتعاب الدفعة الأولى من القضية', 1, 3, '2022-09-06 17:31:51', '2022-09-06 17:31:51'),
(2, '2', 'أجر المحامي', 'cost', '1444-02-24', '20000.00', 'دفع أجر المحامي', 1, 3, '2022-09-06 18:04:11', '2022-09-06 18:04:11'),
(3, '3', 'أتعاب محاماة', 'income', '1444-02-23', '40000.00', 'الدفعة الثانية من أتعاب محاماة', 1, 3, '2022-09-06 18:05:14', '2022-09-07 03:10:20'),
(4, '4', 'أتعاب القضية', 'income', '1444-02-16', '35000.00', 'تحصيل دفعة من أتعاب القضية', 1, 2, '2022-09-07 06:56:21', '2022-09-07 06:56:21'),
(5, '6', 'أتعاب القضية', 'income', '1444-02-03', '45000.00', 'تحصيل الدفعة الثانية من أتعاب القضية', 1, 2, '2022-09-07 06:57:41', '2022-09-07 06:57:41'),
(6, '7', 'أجر المحامي', 'cost', '1444-02-28', '25000.00', 'أجر المحامي القائم بأعمال القضية', 1, 2, '2022-09-07 06:58:56', '2022-09-07 06:58:56'),
(7, '8', 'تحصيل أتعاب', 'income', '1444-02-24', '33000.00', 'تحصيل الدفعة الأولى من  أتعاب القضية', 1, 1, '2022-09-10 06:23:04', '2022-09-10 06:23:04'),
(8, '9', 'مصاريف قضية', 'cost', '1444-02-25', '5000.00', 'مصاريف رفع دعوى', 1, 1, '2022-09-10 07:39:30', '2022-09-10 07:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `message_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_id` int UNSIGNED NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `message_text`, `created_at`, `updated_at`, `message`, `receiver_id`, `is_seen`) VALUES
(1, 1, 'السلام عليكم', '2022-08-04 06:40:40', '2022-08-04 06:40:40', '', 0, 0),
(2, 2, 'وعليكم السلام', '2022-08-04 07:01:30', '2022-08-04 07:01:30', '', 0, 0),
(3, 1, NULL, '2022-08-21 06:53:12', '2022-08-22 20:40:52', 'السلام عليكم', 2, 1),
(4, 2, NULL, '2022-08-21 07:45:02', '2022-08-25 07:52:38', 'وعليكم السلام ورحمة الله', 1, 1),
(5, 1, NULL, '2022-08-21 08:00:36', '2022-08-22 20:40:52', 'كيف حالك يا سعيد؟', 2, 1),
(6, 3, NULL, '2022-08-22 08:48:59', '2022-08-22 21:16:24', 'السلام عليكم؟', 2, 1),
(7, 3, NULL, '2022-08-22 08:49:09', '2022-08-22 21:16:24', 'كيف حالك؟', 2, 1),
(8, 2, NULL, '2022-08-22 20:30:53', '2022-08-22 20:30:53', 'وعليكم السلام ورحمة الله', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_07_03_052226_create_sessions_table', 1),
(7, '2022_07_05_061426_create_clients_table', 2),
(8, '2022_07_05_070846_add_mobile_sex__to_clients_table', 3),
(9, '2022_07_12_090813_create_agents_table', 4),
(10, '2022_07_12_141356_create_agents_table', 5),
(11, '2022_07_13_233446_add_release_date_and_expiry_date__to_agents_table', 6),
(12, '2022_07_15_215638_create_contracts_table', 7),
(13, '2022_07_19_133212_create_cases_table', 8),
(14, '2022_07_19_230020_add__explanation_of_the_case_to_cases_table', 9),
(15, '2022_07_22_143257_add_type_of_client_to_clients_table', 10),
(16, '2022_07_25_165543_create_opponents_table', 11),
(17, '2022_07_25_181341_add_mobile_to_opponents_table', 12),
(18, '2022_07_26_071236_add_opponent_to_cases_table', 13),
(19, '2022_07_26_192708_create_sittings_table', 14),
(20, '2022_07_28_071810_create_reports_table', 15),
(21, '2022_07_29_133447_create_documents_table', 16),
(22, '2022_08_04_031736_create_messages_table', 17),
(23, '2022_08_05_072601_create_profiles_table', 18),
(24, '2022_08_07_123143_add_is_online_to_users_table', 18),
(25, '2022_08_07_125648_add_receiver_to_users_table', 18),
(26, '2022_08_09_113634_create_employees_table', 18),
(27, '2022_08_10_083356_add_user_id_to_employees_table', 18),
(28, '2022_08_23_113502_create_consultations_table', 19),
(29, '2022_08_24_110033_create_transactions_table', 20),
(30, '2022_09_06_054816_create_finances_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `missions`
--

CREATE TABLE `missions` (
  `id` bigint UNSIGNED NOT NULL,
  `mission_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `progress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_mission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_mission` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `mission_num`, `mission_address`, `mission_type`, `created_by`, `mission_status`, `progress`, `date_created`, `start_mission`, `end_mission`, `mission_details`, `employee_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '258', 'متابعة عميل', 'المهام القضائية', NULL, 'قيد التقدم', '75', '1440-02-01', '20-08-2002', '2022-08-31', 'متابعة عميل وتجهيز الأوراق و الاجتماعات وتحديد موعد جلسة', 1, 1, '2022-08-25 16:18:13', '2022-09-08 18:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `opponents`
--

CREATE TABLE `opponents` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `opponent_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_number` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opponents`
--

INSERT INTO `opponents` (`id`, `name`, `email`, `address`, `opponent_image`, `birth_date`, `id_number`, `created_at`, `updated_at`, `mobile`) VALUES
(1, 'سليمان', 'souliman@gmail.com', 'الرياض', '1658790588.jpg', '1428-07-26', 654321, '2022-07-25 20:15:51', '2022-09-08 18:46:24', 123456789),
(2, 'وليد عبد الله', 'waled@gmail.com', 'القصيم', '1658816523.jpg', '1440-03-12', 7654332221, '2022-07-26 04:22:03', '2022-09-08 18:42:06', 1234567);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twiter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `job_title`, `address`, `facebook`, `twiter`, `instagram`, `created_at`, `updated_at`) VALUES
(1, 1, '1661072385.jpg', '0123456', 'رئيس مجلس الإدارة', 'الرياض', NULL, NULL, NULL, '2022-08-21 06:38:55', '2022-08-21 10:46:34'),
(2, 2, '1661075074.jpg', '123456', 'محامي', NULL, NULL, NULL, NULL, '2022-08-21 07:34:34', '2022-08-22 07:57:59'),
(3, 3, '1661165296.png', '01123456', NULL, 'جدة', NULL, NULL, NULL, '2022-08-22 08:44:26', '2022-08-22 08:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint UNSIGNED NOT NULL,
  `type_of_report` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_report` date NOT NULL,
  `time_of_report` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitting_id` bigint UNSIGNED DEFAULT NULL,
  `report_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attorney` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `type_of_report`, `date_of_report`, `time_of_report`, `sitting_id`, `report_text`, `comments`, `attorney`, `case_id`, `created_at`, `updated_at`) VALUES
(1, 'تقرير الجلسة', '2022-07-29', '9 ص', 1, 'نص التقرير', 'ملاحظات هامة', 'عبد الله الحسين', 3, '2022-07-28 20:54:51', '2022-07-29 04:32:07'),
(2, 'تقرير جلسة للقضية', '2022-06-26', '12', 3, 'نص تقرير مهم جدا', 'تقرير هام للغاية', 'عبد العزيز ', 2, '2022-07-28 20:58:51', '2022-07-28 20:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('49b1Jzl2PYqMZUceCklK2mtJKX5pCG13bChiETuC', NULL, '157.55.39.96', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibEljSzFXM3B6WGVROVVaZVRGd0syODZmbXZxbUc3M25aYkNQVnZlWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vbGF3LWZpcm0ubW9oc2FsYWguY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1663183213),
('5Eq3agIoMtUH7K1dy8CRqa6T43zzFouUGHB23Qy4', NULL, '198.251.73.85', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTlVWDYwVktNU3c0S0ZQNkdYcXJwYXZzd2NCOVFFQjNwdGZkV0plRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vbGF3LWZpcm0ubW9oc2FsYWguY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1663125093),
('5htthpB2Gqz0uyiRomsapU8kXeUE5tB1ZDGYk8mr', 1, '41.236.142.105', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiVGdYZHRtWnE1aHl4SnRqd3NSUGw5Q0RIUEEzVDZBMnNHOUxzeXNjVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vbGF3LWZpcm0ubW9oc2FsYWguY29tL2FkbWluL2Rhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO30=', 1663082674),
('BmGyr1tFt7cK01KIIa6zEutIx308XPiqDBtm0na6', 1, '64.65.113.221', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6,2 Safari/605.1.15', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSHpGNWl3Y3I1WXFycEZRSU1CZFhXdGhzbEp2QkNtMktTS2pUZ2YyRyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NToiaHR0cHM6Ly9sYXctZmlybS5tb2hzYWxhaC5jb20vYWRtaW4vZGFzaGJvYXJkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8vbGF3LWZpcm0ubW9oc2FsYWguY29tL2FkbWluL2RldGFscy9taXNzaW9uLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToidXR5cGUiO3M6MzoiQURNIjt9', 1663260926),
('EKIaCTRkoMEIzyotziWGHXTleRiUdVWShuYwtqnk', NULL, '41.69.39.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVnlrdGdZeU1IMFpUSjhsSmY3RUd5MDdEcEhuYkQ4cGFUa3U5TzVsMiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NjoiaHR0cHM6Ly9sYXctZmlybS5tb2hzYWxhaC5jb20vYWRtaW4vYWRkL2NsaWVudCI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwczovL2xhdy1maXJtLm1vaHNhbGFoLmNvbS9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1663132806),
('H03ZcH98ZMLxWFsEgUndfMmhdACL7GIY3FiEvUVv', 1, '145.82.134.84', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6,2 Safari/605.1.15', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibVJLcndpSzZsc2V1RzZRZFZFbTg2eUhOUU9jY1ZoSzNMa1RqRUhsVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vbGF3LWZpcm0ubW9oc2FsYWguY29tL2FkbWluL2Rhc2hib2FyZCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO30=', 1663161007),
('iYcW57UdPzG3RWJ2TDSoQ9uePdqEtR7xFT4P5OKX', NULL, '198.251.73.95', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGpoZXVTUThrNkdJT0c5UWpKcWR4cTJGTzRheVl1TzVwUlBjZUJSWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vbGF3LWZpcm0ubW9oc2FsYWguY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1663125263),
('kcFwmrH1KdpOsvFdiVz7iSnTNVfSj6WxaqBFhm6q', 1, '41.69.39.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTkQ1TzhrZnpIZTFiTlpxZFdwNmVKbDYwWVVReFRWY3BKb29yeFBzWiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NDoiaHR0cHM6Ly9sYXctZmlybS5tb2hzYWxhaC5jb20vYWRtaW4vYWRkL2Nhc2UiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NjoiaHR0cHM6Ly9sYXctZmlybS5tb2hzYWxhaC5jb20vYWRtaW4vYWRkL2NsaWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czo1OiJ1dHlwZSI7czozOiJBRE0iO30=', 1663096690),
('Nitoh0GuyXyJrA7ri5F0bmmtIaM483AREodsqzXw', NULL, '5.45.207.103', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODY5ZWltRUVTN2dWVmpkSnlpWndlYVFSeGlaMkFNZUxWR1QxdEtQViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vbGF3LWZpcm0ubW9oc2FsYWguY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1663139911),
('oeBFw1JuExdqyXVIWe4coNuIrh3WYCBaa3mQIU02', NULL, '198.251.73.75', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWcxVFRyMzN3NFhGUUd5MlRFMTJDbzVCN0hFVjk3WmFjZUIwMkl2aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vbGF3LWZpcm0ubW9oc2FsYWguY29tL3JlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1663125267),
('oHPzpk16BrYuzT5NfRLzAid0In9Psp6oyRflQ7v5', NULL, '198.251.73.85', 'IonCrawl (https://www.ionos.de/terms-gtc/faq-crawler-en/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid3RGb3ZIVFI4MmlCSHZwb1d2ek9QMjF6Zmt0MWVxT0tnZnJhN2t6dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vbGF3LWZpcm0ubW9oc2FsYWguY29tL2ZvcmdvdC1wYXNzd29yZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1663125309),
('tPeGudwG18K80PC9Bbo8zxqbZbAgympmBfhtMx63', 1, '41.69.39.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoieW5QWVozbHZ0TkRSMkprY250aXVUZHBwczltbExvZ1piMHFDT25xTSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MToiaHR0cHM6Ly9sYXctZmlybS5tb2hzYWxhaC5jb20vYWRtaW4vY2FzZXMiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NDoiaHR0cHM6Ly9sYXctZmlybS5tb2hzYWxhaC5jb20vYWRtaW4vYWRkL2Nhc2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6NToidXR5cGUiO3M6MzoiQURNIjt9', 1663082234),
('YiuGwsvNXHVe1QZVVGzelwl2a0Bdtr01rW9WwZlU', 1, '145.82.134.84', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.6,2 Safari/605.1.15', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiSE1ZUHRma0hjYUhCU05UQlJLMzFXbUhXdUtWa3NtbmJFNHFtQXNWcSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0NToiaHR0cHM6Ly9sYXctZmlybS5tb2hzYWxhaC5jb20vYWRtaW4vZGFzaGJvYXJkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vbGF3LWZpcm0ubW9oc2FsYWguY29tL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjU6InV0eXBlIjtzOjM6IkFETSI7fQ==', 1663160959);

-- --------------------------------------------------------

--
-- Table structure for table `sittings`
--

CREATE TABLE `sittings` (
  `id` bigint UNSIGNED NOT NULL,
  `type_of_sitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_sitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_sitting` date NOT NULL,
  `time_of_sitting` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitting_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attorney` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendance_date` date NOT NULL,
  `comments` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sittings`
--

INSERT INTO `sittings` (`id`, `type_of_sitting`, `place_of_sitting`, `date_of_sitting`, `time_of_sitting`, `sitting_status`, `attorney`, `attendance_date`, `comments`, `case_id`, `created_at`, `updated_at`) VALUES
(1, 'استشارة', 'حضوري', '2022-07-29', '11 ص', 'مؤكد', 'سعيد', '2022-08-02', 'هام جدا', 3, '2022-07-27 04:07:47', '2022-07-28 21:55:04'),
(2, 'استشارة', 'حضوري', '1444-03-10', '7', 'مؤكد', 'عبدالله', '2022-07-27', 'ملاحظة1', 3, '2022-07-27 04:36:13', '2022-09-10 05:54:26'),
(3, 'أستشارة', 'غيابي', '2022-06-30', '10 ص', 'منجز', 'رجب', '2022-06-26', 'مهم جدا', 2, '2022-07-27 05:28:31', '2022-07-27 05:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_specialty` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parties_to_transaction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transaction_num`, `transaction_specialty`, `transaction_stage`, `parties_to_transaction`, `transaction_date`, `transaction_details`, `employee_id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '345', 'شرطة الرياض', 'مرحلة التسليم', 'أحمد  - محمد', '1444-05-21', 'دعوى حسام ضد محمد للمطالبة بمبلغ مالي', 1, 8, '2022-08-24 20:58:45', '2022-09-10 05:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin and USR for user or customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_online` tinyint(1) NOT NULL DEFAULT '0',
  `last_activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`, `is_online`, `last_activity`) VALUES
(1, 'عبد الرحمن الحسين', 'Abdelrahman@gmail.com', NULL, '$2y$10$NbcXhpuV.dw9maIQkWPfueaTdxH7.vsBIn6t0L.h2tvY2jVkLjp7C', NULL, NULL, NULL, 'VoOA35mFeegTTeHNxUj1EzA9V84YKbmrl21XP255fgMHBqf8uyNcZ5JMQZhk', NULL, NULL, 'ADM', '2022-07-03 04:07:55', '2022-09-15 20:55:26', 1, '2022-09-15 16:56:26'),
(2, 'سعيد عبد الله', 'saed@gmial.com', NULL, '$2y$10$Lr3Kaj0bfcZPJaNNnYSgcOaF7lniE20HaB4uFtzpKfbcYAVWlPLuG', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-07-03 04:30:25', '2022-09-15 20:55:26', 0, '2022-08-22 23:17:24'),
(3, 'خالد', 'khaled@gmail.com', NULL, '$2y$10$KyFWxpRUSxUrI6eUtlkubukShKg2NCuvZAFmQoYSpA9T5UHlcJYym', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-08-22 08:44:21', '2022-09-15 20:55:26', 0, '2022-08-22 10:50:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `agents_email_unique` (`email`),
  ADD KEY `agents_client_id_foreign` (`client_id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cases_client_id_foreign` (`client_id`),
  ADD KEY `cases_contract_id_foreign` (`contract_id`),
  ADD KEY `cases_opponent_id_foreign` (`opponent_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Indexes for table `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consultations_client_id_foreign` (`client_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contracts_client_id_foreign` (`client_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_case_id_foreign` (`case_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `finances`
--
ALTER TABLE `finances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finances_employee_id_foreign` (`employee_id`),
  ADD KEY `finances_case_id_foreign` (`case_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `missions_employee_id_foreign` (`employee_id`),
  ADD KEY `missions_user_id_foreign` (`user_id`);

--
-- Indexes for table `opponents`
--
ALTER TABLE `opponents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `opponents_email_unique` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reports_case_id_foreign` (`case_id`),
  ADD KEY `reports_sitting_id_foreign` (`sitting_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sittings`
--
ALTER TABLE `sittings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sittings_case_id_foreign` (`case_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_employee_id_foreign` (`employee_id`),
  ADD KEY `transactions_client_id_foreign` (`client_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `consultations`
--
ALTER TABLE `consultations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finances`
--
ALTER TABLE `finances`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `missions`
--
ALTER TABLE `missions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `opponents`
--
ALTER TABLE `opponents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sittings`
--
ALTER TABLE `sittings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `agents`
--
ALTER TABLE `agents`
  ADD CONSTRAINT `agents_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cases`
--
ALTER TABLE `cases`
  ADD CONSTRAINT `cases_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cases_contract_id_foreign` FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cases_opponent_id_foreign` FOREIGN KEY (`opponent_id`) REFERENCES `opponents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `consultations`
--
ALTER TABLE `consultations`
  ADD CONSTRAINT `consultations_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `consultations_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_case_id_foreign` FOREIGN KEY (`case_id`) REFERENCES `cases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `finances`
--
ALTER TABLE `finances`
  ADD CONSTRAINT `finances_case_id_foreign` FOREIGN KEY (`case_id`) REFERENCES `cases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `finances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `missions`
--
ALTER TABLE `missions`
  ADD CONSTRAINT `missions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `missions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_case_id_foreign` FOREIGN KEY (`case_id`) REFERENCES `cases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reports_sitting_id_foreign` FOREIGN KEY (`sitting_id`) REFERENCES `cases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sittings`
--
ALTER TABLE `sittings`
  ADD CONSTRAINT `sittings_case_id_foreign` FOREIGN KEY (`case_id`) REFERENCES `cases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
