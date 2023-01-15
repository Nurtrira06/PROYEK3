-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 06:31 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_kanker`
--

CREATE TABLE `api_kanker` (
  `id` bigint(20) NOT NULL,
  `rerata_jari2_lobus` int(11) NOT NULL,
  `rerata_tumor_inti` int(11) NOT NULL,
  `rerata_luas_lobus` int(11) NOT NULL,
  `rerata_luas_permukaan_tumor` int(11) NOT NULL,
  `rerata_cekungan_kontur` int(11) NOT NULL,
  `rerata_jumlah_cekungan_kontur` int(11) NOT NULL,
  `se_jari2_lobus` int(11) NOT NULL,
  `se_tekstur_permukaan` int(11) NOT NULL,
  `se_tumor_inti` int(11) NOT NULL,
  `se_luas_permukaan_tumor` int(11) NOT NULL,
  `se_cekungan_kontur` int(11) NOT NULL,
  `se_jumlah_cekungan_kontur` int(11) NOT NULL,
  `se_fraktal_spesimen` int(11) NOT NULL,
  `keparahan_jari2_lobus` int(11) NOT NULL,
  `keparahan_tekstur_permukaan` int(11) NOT NULL,
  `keparahan_tumor_inti` int(11) NOT NULL,
  `keparahan_luas_lobus` int(11) NOT NULL,
  `keparahan_luas_permukaan_tumor` int(11) NOT NULL,
  `keparahan_cekungan_kontur` int(11) NOT NULL,
  `keparahan_jumlah_cekungan_kontur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `api_kanker`
--

INSERT INTO `api_kanker` (`id`, `rerata_jari2_lobus`, `rerata_tumor_inti`, `rerata_luas_lobus`, `rerata_luas_permukaan_tumor`, `rerata_cekungan_kontur`, `rerata_jumlah_cekungan_kontur`, `se_jari2_lobus`, `se_tekstur_permukaan`, `se_tumor_inti`, `se_luas_permukaan_tumor`, `se_cekungan_kontur`, `se_jumlah_cekungan_kontur`, `se_fraktal_spesimen`, `keparahan_jari2_lobus`, `keparahan_tekstur_permukaan`, `keparahan_tumor_inti`, `keparahan_luas_lobus`, `keparahan_luas_permukaan_tumor`, `keparahan_cekungan_kontur`, `keparahan_jumlah_cekungan_kontur`) VALUES
(1, 101, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100),
(2, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 100, 200, 200, 200, 200, 200, 200, 200);

-- --------------------------------------------------------

--
-- Table structure for table `apk_predict_kanker`
--

CREATE TABLE `apk_predict_kanker` (
  `id` bigint(20) NOT NULL,
  `rerata_jari2_lobus` int(11) NOT NULL,
  `rerata_tumor_inti` int(11) NOT NULL,
  `rerata_luas_lobus` int(11) NOT NULL,
  `rerata_luas_permukaan_tumor` int(11) NOT NULL,
  `rerata_cekungan_kontur` int(11) NOT NULL,
  `rerata_jumlah_cekungan_kontur` int(11) NOT NULL,
  `se_jari2_lobus` int(11) NOT NULL,
  `se_tekstur_permukaan` int(11) NOT NULL,
  `se_tumor_inti` int(11) NOT NULL,
  `se_luas_permukaan_tumor` int(11) NOT NULL,
  `se_cekungan_kontur` int(11) NOT NULL,
  `se_jumlah_cekungan_kontur` int(11) NOT NULL,
  `se_fraktal_spesimen` int(11) NOT NULL,
  `keparahan_jari2_lobus` int(11) NOT NULL,
  `keparahan_tekstur_permukaan` int(11) NOT NULL,
  `keparahan_tumor_inti` int(11) NOT NULL,
  `keparahan_luas_lobus` int(11) NOT NULL,
  `keparahan_luas_permukaan_tumor` int(11) NOT NULL,
  `keparahan_cekungan_kontur` int(11) NOT NULL,
  `keparahan_jumlah_cekungan_kontur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apk_predict_kanker`
--

INSERT INTO `apk_predict_kanker` (`id`, `rerata_jari2_lobus`, `rerata_tumor_inti`, `rerata_luas_lobus`, `rerata_luas_permukaan_tumor`, `rerata_cekungan_kontur`, `rerata_jumlah_cekungan_kontur`, `se_jari2_lobus`, `se_tekstur_permukaan`, `se_tumor_inti`, `se_luas_permukaan_tumor`, `se_cekungan_kontur`, `se_jumlah_cekungan_kontur`, `se_fraktal_spesimen`, `keparahan_jari2_lobus`, `keparahan_tekstur_permukaan`, `keparahan_tumor_inti`, `keparahan_luas_lobus`, `keparahan_luas_permukaan_tumor`, `keparahan_cekungan_kontur`, `keparahan_jumlah_cekungan_kontur`) VALUES
(1, 101, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add kanker', 7, 'add_kanker'),
(26, 'Can change kanker', 7, 'change_kanker'),
(27, 'Can delete kanker', 7, 'delete_kanker'),
(28, 'Can view kanker', 7, 'view_kanker'),
(29, 'Can add kanker', 8, 'add_kanker'),
(30, 'Can change kanker', 8, 'change_kanker'),
(31, 'Can delete kanker', 8, 'delete_kanker'),
(32, 'Can view kanker', 8, 'view_kanker');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$kXcph1Lx6cNxZmbzF8QCDg$a6oSDWO/QVDiuAyokCAd8ph3DmeGh3b8a5j6BzUUqP8=', '2022-12-29 14:33:47.940229', 1, 'admindhanti', '', '', 'admindhanti@gmail.com', 1, 1, '2022-12-29 13:58:36.769031');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-12-29 14:40:50.340135', '1', 'Kanker object (1)', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(7, 'api', 'kanker'),
(8, 'apk_predict', 'kanker'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-29 13:53:21.072771'),
(2, 'auth', '0001_initial', '2022-12-29 13:53:21.870139'),
(3, 'admin', '0001_initial', '2022-12-29 13:53:22.078196'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-29 13:53:22.102199'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-29 13:53:22.126213'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-29 13:53:22.238233'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-29 13:53:22.350262'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-29 13:53:22.390279'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-29 13:53:22.414278'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-29 13:53:22.486324'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-29 13:53:22.494318'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-29 13:53:22.510302'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-29 13:53:22.550311'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-29 13:53:22.598330'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-29 13:53:22.646338'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-29 13:53:22.662341'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-29 13:53:22.702366'),
(18, 'sessions', '0001_initial', '2022-12-29 13:53:22.750368'),
(19, 'api', '0001_initial', '2022-12-29 14:07:48.777213'),
(20, 'apk_predict', '0001_initial', '2023-01-13 04:17:23.340925');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ehiub1chlulclcgp67wnew3q2awynrnu', '.eJxVjEEOwiAQRe_C2hAGAkxduvcMZAqDVA0kpV013t2QdKHb_977hwi0byXsndewJHEVIC6_20zxxXWA9KT6aDK2uq3LLIciT9rlvSV-307376BQL6MGg9E65XJENMp6VBOC1jhF0sZnBER25LVHS-y0TgYyWQscnVfA4vMFq5U2lQ:1pAtyd:lwBwBRScdtIpBn6fSSiBCsp80YQDeYBDTk0xT7HaXx4', '2023-01-12 14:33:47.948237');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_kanker`
--
ALTER TABLE `api_kanker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apk_predict_kanker`
--
ALTER TABLE `apk_predict_kanker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_kanker`
--
ALTER TABLE `api_kanker`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `apk_predict_kanker`
--
ALTER TABLE `apk_predict_kanker`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
