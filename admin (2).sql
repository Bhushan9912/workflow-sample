-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 10:30 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE `action` (
  `action_id` int(11) NOT NULL,
  `action_name` varchar(100) NOT NULL,
  `expression` varchar(100) NOT NULL,
  `active` enum('y','n') NOT NULL DEFAULT 'y',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `action`
--

INSERT INTO `action` (`action_id`, `action_name`, `expression`, `active`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(3, 'Search HHID', 'InclusionRequest / Search', 'y', '2022-01-21 06:25:11', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(5, 'Duplicate_check', 'InclusionRequest / Duplicate_check', 'y', '2022-01-25 05:18:56', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(6, 'Add_remark', 'InclusionRequest / Add_remark', 'y', '2022-01-25 05:19:21', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(7, ' sendMessage', 'InclusionRequest / sendMessage', 'y', '2022-01-25 05:21:05', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(8, 'complete_info', 'InclusionRequest / complete_info', 'y', '2022-01-25 05:21:38', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(9, 'Request_complete_info', 'InclusionRequest / Request_complete_info', 'y', '2022-01-25 05:22:07', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(10, ' Provide_info', 'InclusionRequest / provide_info', 'y', '2022-01-25 05:22:42', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(11, 'explain_resolution', 'InclusionRequest / explain_resolution', 'y', '2022-01-25 05:23:09', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(12, 'ExistsInPPIS', 'InclusionRequest / ExistsInPPIS', 'y', '2022-01-25 05:23:36', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(13, 'NameMatching', 'InclusionRequest / NameMatching', 'y', '2022-01-25 05:24:09', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(14, 'SignLetter', 'InclusionRequest / SignLetter', 'y', '2022-01-25 05:24:59', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(15, 'AutoClassify', 'InclusionRequest / AutoClassify', 'y', '2022-01-25 05:25:34', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(16, 'check_case', 'InclusionRequest / check_case', 'y', '2022-01-25 05:26:59', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(17, 'LateRegistration', 'InclusionRequest / LateRegistration', 'y', '2022-01-25 05:27:57', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(18, 'ResultLateRegistration', 'InclusionRequest / ResultLateRegistration', 'y', '2022-01-25 05:28:26', NULL, '0000-00-00 00:00:00', 0, NULL, NULL),
(19, 'UpdateStatus', 'InclusionRequest / UpdateStatus', 'y', '2022-01-25 05:29:02', NULL, '0000-00-00 00:00:00', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `action_details`
--

CREATE TABLE `action_details` (
  `action_detail_id` bigint(11) NOT NULL,
  `action_id` int(11) NOT NULL,
  `parameter_name` varchar(100) NOT NULL,
  `active` enum('y','n') NOT NULL DEFAULT 'y',
  `created_at` int(11) NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `action_details`
--

INSERT INTO `action_details` (`action_detail_id`, `action_id`, `parameter_name`, `active`, `created_at`, `created_by`) VALUES
(1, 3, 'HHID', 'y', 2147483647, NULL),
(2, 3, 'first_name', 'y', 2147483647, NULL),
(3, 3, 'last_name', 'y', 2147483647, NULL),
(5, 5, 'HHID', 'y', 2147483647, NULL),
(6, 5, 'first_name', 'y', 2147483647, NULL),
(7, 5, 'last_name', 'y', 2147483647, NULL),
(8, 6, 'Grievance_id', 'y', 2147483647, NULL),
(9, 6, 'remark', 'y', 2147483647, NULL),
(10, 7, 'message', 'y', 2147483647, NULL),
(11, 8, 'HHID', 'y', 2147483647, NULL),
(12, 8, 'first_name', 'y', 2147483647, NULL),
(13, 8, 'last_name', 'y', 2147483647, NULL),
(14, 9, 'HHID', 'y', 2147483647, NULL),
(15, 9, 'first_name', 'y', 2147483647, NULL),
(16, 9, 'last_name', 'y', 2147483647, NULL),
(17, 10, 'HHID', 'y', 2147483647, NULL),
(18, 10, 'first_name', 'y', 2147483647, NULL),
(19, 10, 'last_name', 'y', 2147483647, NULL),
(20, 11, 'HHID', 'y', 2147483647, NULL),
(21, 11, 'first_name', 'y', 2147483647, NULL),
(22, 11, 'last_name', 'y', 2147483647, NULL),
(23, 12, 'HHID', 'y', 2147483647, NULL),
(24, 12, 'first_name', 'y', 2147483647, NULL),
(25, 12, 'last_name', 'y', 2147483647, NULL),
(26, 13, 'HHID', 'y', 2147483647, NULL),
(27, 13, 'first_name', 'y', 2147483647, NULL),
(28, 13, 'last_name', 'y', 2147483647, NULL),
(29, 14, 'HHID', 'y', 2147483647, NULL),
(30, 14, 'first_name', 'y', 2147483647, NULL),
(31, 14, 'last_name', 'y', 2147483647, NULL),
(32, 15, 'HHID', 'y', 2147483647, NULL),
(33, 15, 'first_name', 'y', 2147483647, NULL),
(34, 15, 'last_name', 'y', 2147483647, NULL),
(35, 16, 'HHID', 'y', 2147483647, NULL),
(36, 16, 'first_name', 'y', 2147483647, NULL),
(37, 16, 'last_name', 'y', 2147483647, NULL),
(38, 17, 'HHID', 'y', 2147483647, NULL),
(39, 17, 'first_name', 'y', 2147483647, NULL),
(40, 17, 'last_name', 'y', 2147483647, NULL),
(41, 18, 'HHID', 'y', 2147483647, NULL),
(42, 18, 'first_name', 'y', 2147483647, NULL),
(43, 18, 'last_name', 'y', 2147483647, NULL),
(44, 19, 'HHID', 'y', 2147483647, NULL),
(45, 19, 'first_name', 'y', 2147483647, NULL),
(46, 19, 'last_name', 'y', 2147483647, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `currency` varchar(5) NOT NULL,
  `trnx_id` varchar(30) NOT NULL,
  `card_id` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `transaction_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `product_id`, `email`, `contact`, `amount`, `currency`, `trnx_id`, `card_id`, `status`, `transaction_date`) VALUES
(2, 3, 'admin@gmail.com', '+919834614762', 30000, 'INR', 'pay_IP2mmmabEdqSxs', 'card_IP2mmpwH57pTVN', 'captured', '2021-11-23'),
(3, 22, 'admin@gmail.com', '+919834614762', 10000, 'INR', 'pay_IP2urU0uFgRiUE', 'card_IP2urXUgVA2hwg', 'captured', '2021-11-23'),
(4, 3, 'admin@gmail.com', '+919834614762', 30000, 'INR', 'pay_IP2xhlVvPdOsj2', 'card_IP2xhpJ9OKghUu', 'captured', '2021-11-24'),
(5, 3, 'admin@gmail.com', '+919834614762', 30000, 'INR', 'pay_IPMFf4OMC8yllH', 'card_IPMFf8dSNquRFL', 'captured', '2021-11-24'),
(6, 26, 'admin@gmail.com', '+919834614762', 80000, 'INR', 'pay_IPNsNzHS807K1y', 'card_IPNsO3D1IMNoQC', 'captured', '2021-11-24'),
(7, 3, 'admin@gmail.com', '+919834614762', 30000, 'INR', 'pay_IPRX1jhdEwTntk', 'card_IPRX1nQuwb8m8z', 'captured', '2021-11-24'),
(8, 22, 'admin@gmail.com', '+919834614762', 10000, 'INR', 'pay_IPRc0Dx8lfshaV', 'card_IPRc0HF6EEfcbN', 'captured', '2021-11-24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `active` enum('y','n') NOT NULL DEFAULT 'y',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_no`, `password`, `active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin@gmail.com', '7788996633', '5f4dcc3b5aa765d61d8327deb882cf99', 'y', '2021-11-05 18:07:04', NULL, NULL),
(3, 'bhushan ', 'bhushan1@email.com', '7845123696', '$2y$10$okh8Bwhm4aa60asTn16paerOkAFjWyrdZgYFwFrRwGRJmmZcjQ3Ee', 'y', '2021-11-06 18:17:52', NULL, NULL),
(4, 'ramesh', 'ramesh@email.com', '7845123696', '$2y$10$xWqYtZqrAlOhm7VLQ19K1uHSGlQNZeJMVY5iNcK0s8vCilco11EMq', 'y', '2021-11-06 18:42:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workflow`
--

CREATE TABLE `workflow` (
  `work_flow_id` int(11) NOT NULL,
  `work_flow_name` varchar(100) DEFAULT NULL,
  `grievance_type` varchar(100) NOT NULL,
  `grievance_sub_type` varchar(100) NOT NULL,
  `workflow_tat` int(11) NOT NULL,
  `remark` text NOT NULL,
  `workflow_json` text NOT NULL,
  `active` enum('y','n') NOT NULL DEFAULT 'y',
  `created_at` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workflow`
--

INSERT INTO `workflow` (`work_flow_id`, `work_flow_name`, `grievance_type`, `grievance_sub_type`, `workflow_tat`, `remark`, `workflow_json`, `active`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
(1, 'inclusion request work flow', 'Inclusion request', '[\"Transient Poor\",\"Chronic Poor\",\"Extreme Poor\"]', 10, 'Testing', '{\"workflow_name\":\"inclusion request work flow\",\"grievance_type\":\"Inclusion request\",\"grievance_sub_type\":[\"Transient Poor\",\"Chronic Poor\",\"Extreme Poor\"],\"workflow_tat\":\"10\",\"remark\":\"Testing\",\"data\":{\"action\":{\"1\":{\"name\":\"InclusionRequest \\/ Search\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"10\",\"stage\":\"PRE INTAKE\"},\"2\":{\"name\":\"InclusionRequest \\/ Duplicate_check\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"20\",\"stage\":\"PRE INTAKE\",\"IsTrue\":{\"1\":{\"name\":\"InclusionRequest \\/ Add_remark\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"30\",\"stage\":\"PRE INTAKE\"},\"2\":{\"name\":\"InclusionRequest \\/ sendMessage\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"40\",\"stage\":\"PRE INTAKE\"}},\"IsFalse\":{\"1\":{\"name\":\"InclusionRequest \\/ complete_info\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"50\",\"stage\":\"PRE INTAKE\",\"IsTrue\":[],\"IsFalse\":{\"1\":{\"name\":\"InclusionRequest \\/ Request_complete_info\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"60\",\"stage\":\"PRE INTAKE\"},\"2\":{\"name\":\"InclusionRequest \\/ sendMessage\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"70\",\"stage\":\"PRE INTAKE\"},\"3\":{\"name\":\"InclusionRequest \\/ provide_info\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"80\",\"stage\":\"PRE INTAKE\"}}},\"2\":{\"name\":\"InclusionRequest \\/ explain_resolution\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"90\",\"stage\":\"INTAKE AND RESPONCE\"},\"3\":{\"name\":\"InclusionRequest \\/ sendMessage\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"100\",\"stage\":\"INTAKE AND RESPONCE\"},\"4\":{\"name\":\"InclusionRequest \\/ ExistsInPPIS\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"101\",\"stage\":\"PROCESSING\",\"IsTrue\":{\"1\":{\"name\":\"InclusionRequest \\/ NameMatching\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"102\",\"stage\":\"PROCESSING\"},\"2\":{\"name\":\"InclusionRequest \\/ SignLetter\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"103\",\"stage\":\"PROCESSING\"},\"3\":{\"name\":\"InclusionRequest \\/ NameMatching\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"104\",\"stage\":\"PROCESSING\"},\"4\":{\"name\":\"InclusionRequest \\/ AutoClassify\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"105\",\"stage\":\"RESOLUTION\"},\"5\":{\"name\":\"InclusionRequest \\/ check_case\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"106\",\"stage\":\"RESOLUTION\"}},\"IsFalse\":{\"1\":{\"name\":\"InclusionRequest \\/ LateRegistration\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"107\",\"stage\":\"PROCESSING\"},\"2\":{\"name\":\"InclusionRequest \\/ SignLetter\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"108\",\"stage\":\"PROCESSING\"},\"3\":{\"name\":\"InclusionRequest \\/ LateRegistration\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"109\",\"stage\":\"PROCESSING\"},\"4\":{\"name\":\"InclusionRequest \\/ ResultLateRegistration\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"110\",\"stage\":\"PROCESSING\"},\"5\":{\"name\":\"InclusionRequest \\/ UpdateStatus\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"111\",\"stage\":\"RESOLUTION\"}}},\"7\":{\"name\":\"InclusionRequest \\/ sendMessage\",\"role\":\"NHTO\\/NHTU\",\"tat\":\"112\",\"stage\":\"FEEDBACK\"}}}}}}', 'y', 0, NULL, 0, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`action_id`);

--
-- Indexes for table `action_details`
--
ALTER TABLE `action_details`
  ADD PRIMARY KEY (`action_detail_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workflow`
--
ALTER TABLE `workflow`
  ADD PRIMARY KEY (`work_flow_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action`
--
ALTER TABLE `action`
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `action_details`
--
ALTER TABLE `action_details`
  MODIFY `action_detail_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `workflow`
--
ALTER TABLE `workflow`
  MODIFY `work_flow_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
