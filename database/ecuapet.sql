/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ecuapet

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-07-13 00:00:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cms_apicustom
-- ----------------------------
DROP TABLE IF EXISTS `cms_apicustom`;
CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8mb4_unicode_ci,
  `responses` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_apicustom
-- ----------------------------

-- ----------------------------
-- Table structure for cms_apikey
-- ----------------------------
DROP TABLE IF EXISTS `cms_apikey`;
CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_apikey
-- ----------------------------

-- ----------------------------
-- Table structure for cms_dashboard
-- ----------------------------
DROP TABLE IF EXISTS `cms_dashboard`;
CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_dashboard
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_queues
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_queues`;
CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8mb4_unicode_ci,
  `email_attachments` text COLLATE utf8mb4_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_email_queues
-- ----------------------------

-- ----------------------------
-- Table structure for cms_email_templates
-- ----------------------------
DROP TABLE IF EXISTS `cms_email_templates`;
CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_email_templates
-- ----------------------------
INSERT INTO `cms_email_templates` VALUES ('1', 'Email Template Forgot Password Backend', 'forgot_password_backend', null, '<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>', '[password]', 'System', 'system@crudbooster.com', null, '2020-05-09 21:21:30', null);

-- ----------------------------
-- Table structure for cms_logs
-- ----------------------------
DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_logs
-- ----------------------------
INSERT INTO `cms_logs` VALUES ('1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', '1', '2020-05-09 21:33:19', null);
INSERT INTO `cms_logs` VALUES ('2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', '1', '2020-05-09 21:38:29', null);
INSERT INTO `cms_logs` VALUES ('3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost:8000/admin/login', 'admin@crudbooster.com login with IP Address 127.0.0.1', '', '1', '2020-05-09 21:43:27', null);
INSERT INTO `cms_logs` VALUES ('4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com logout', '', '1', '2020-05-09 21:44:08', null);
INSERT INTO `cms_logs` VALUES ('5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', '1', '2020-05-30 20:48:45', null);
INSERT INTO `cms_logs` VALUES ('6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', '1', '2020-05-30 20:52:58', null);
INSERT INTO `cms_logs` VALUES ('7', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', '1', '2020-06-20 22:42:31', null);
INSERT INTO `cms_logs` VALUES ('8', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36', 'http://localhost:8000/admin/logout', 'admin@crudbooster.com se desconectó', '', '1', '2020-06-20 22:48:34', null);
INSERT INTO `cms_logs` VALUES ('9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://localhost:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 127.0.0.1', '', '1', '2020-06-27 20:03:46', null);
INSERT INTO `cms_logs` VALUES ('10', '192.168.0.101', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36', 'http://192.168.0.101:8000/admin/login', 'Ingreso de admin@crudbooster.com desde la Dirección IP 192.168.0.101', '', '1', '2020-07-10 00:12:17', null);

-- ----------------------------
-- Table structure for cms_menus
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus`;
CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_menus
-- ----------------------------
INSERT INTO `cms_menus` VALUES ('1', 'Mascota', 'Route', 'AdminMascotaControllerGetIndex', null, 'fa fa-power-off', '0', '1', '0', '1', '1', '2020-05-30 20:49:30', null);

-- ----------------------------
-- Table structure for cms_menus_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_menus_privileges`;
CREATE TABLE `cms_menus_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_menus` int(11) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_menus_privileges
-- ----------------------------
INSERT INTO `cms_menus_privileges` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for cms_moduls
-- ----------------------------
DROP TABLE IF EXISTS `cms_moduls`;
CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_moduls
-- ----------------------------
INSERT INTO `cms_moduls` VALUES ('1', 'Notifications', 'fa fa-cog', 'notifications', 'cms_notifications', 'NotificationsController', '1', '1', '2020-05-09 21:21:30', null, null);
INSERT INTO `cms_moduls` VALUES ('2', 'Privileges', 'fa fa-cog', 'privileges', 'cms_privileges', 'PrivilegesController', '1', '1', '2020-05-09 21:21:30', null, null);
INSERT INTO `cms_moduls` VALUES ('3', 'Privileges Roles', 'fa fa-cog', 'privileges_roles', 'cms_privileges_roles', 'PrivilegesRolesController', '1', '1', '2020-05-09 21:21:30', null, null);
INSERT INTO `cms_moduls` VALUES ('4', 'Users Management', 'fa fa-users', 'users', 'cms_users', 'AdminCmsUsersController', '0', '1', '2020-05-09 21:21:30', null, null);
INSERT INTO `cms_moduls` VALUES ('5', 'Settings', 'fa fa-cog', 'settings', 'cms_settings', 'SettingsController', '1', '1', '2020-05-09 21:21:30', null, null);
INSERT INTO `cms_moduls` VALUES ('6', 'Module Generator', 'fa fa-database', 'module_generator', 'cms_moduls', 'ModulsController', '1', '1', '2020-05-09 21:21:30', null, null);
INSERT INTO `cms_moduls` VALUES ('7', 'Menu Management', 'fa fa-bars', 'menu_management', 'cms_menus', 'MenusController', '1', '1', '2020-05-09 21:21:30', null, null);
INSERT INTO `cms_moduls` VALUES ('8', 'Email Templates', 'fa fa-envelope-o', 'email_templates', 'cms_email_templates', 'EmailTemplatesController', '1', '1', '2020-05-09 21:21:30', null, null);
INSERT INTO `cms_moduls` VALUES ('9', 'Statistic Builder', 'fa fa-dashboard', 'statistic_builder', 'cms_statistics', 'StatisticBuilderController', '1', '1', '2020-05-09 21:21:30', null, null);
INSERT INTO `cms_moduls` VALUES ('10', 'API Generator', 'fa fa-cloud-download', 'api_generator', '', 'ApiCustomController', '1', '1', '2020-05-09 21:21:30', null, null);
INSERT INTO `cms_moduls` VALUES ('11', 'Log User Access', 'fa fa-flag-o', 'logs', 'cms_logs', 'LogsController', '1', '1', '2020-05-09 21:21:30', null, null);
INSERT INTO `cms_moduls` VALUES ('12', 'Mascota', 'fa fa-power-off', 'mascota', 'mascota', 'AdminMascotaController', '0', '0', '2020-05-30 20:49:29', null, null);

-- ----------------------------
-- Table structure for cms_notifications
-- ----------------------------
DROP TABLE IF EXISTS `cms_notifications`;
CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_notifications
-- ----------------------------

-- ----------------------------
-- Table structure for cms_privileges
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges`;
CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_privileges
-- ----------------------------
INSERT INTO `cms_privileges` VALUES ('1', 'Super Administrator', '1', 'skin-red', '2020-05-09 21:21:30', null);
INSERT INTO `cms_privileges` VALUES ('2', 'Propietario', '0', 'skin-purple', null, null);

-- ----------------------------
-- Table structure for cms_privileges_roles
-- ----------------------------
DROP TABLE IF EXISTS `cms_privileges_roles`;
CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_privileges_roles
-- ----------------------------
INSERT INTO `cms_privileges_roles` VALUES ('1', '1', '0', '0', '0', '0', '1', '1', '2020-05-09 21:21:30', null);
INSERT INTO `cms_privileges_roles` VALUES ('2', '1', '1', '1', '1', '1', '1', '2', '2020-05-09 21:21:30', null);
INSERT INTO `cms_privileges_roles` VALUES ('3', '0', '1', '1', '1', '1', '1', '3', '2020-05-09 21:21:30', null);
INSERT INTO `cms_privileges_roles` VALUES ('4', '1', '1', '1', '1', '1', '1', '4', '2020-05-09 21:21:30', null);
INSERT INTO `cms_privileges_roles` VALUES ('5', '1', '1', '1', '1', '1', '1', '5', '2020-05-09 21:21:30', null);
INSERT INTO `cms_privileges_roles` VALUES ('6', '1', '1', '1', '1', '1', '1', '6', '2020-05-09 21:21:30', null);
INSERT INTO `cms_privileges_roles` VALUES ('7', '1', '1', '1', '1', '1', '1', '7', '2020-05-09 21:21:30', null);
INSERT INTO `cms_privileges_roles` VALUES ('8', '1', '1', '1', '1', '1', '1', '8', '2020-05-09 21:21:30', null);
INSERT INTO `cms_privileges_roles` VALUES ('9', '1', '1', '1', '1', '1', '1', '9', '2020-05-09 21:21:30', null);
INSERT INTO `cms_privileges_roles` VALUES ('10', '1', '1', '1', '1', '1', '1', '10', '2020-05-09 21:21:30', null);
INSERT INTO `cms_privileges_roles` VALUES ('11', '1', '0', '1', '0', '1', '1', '11', '2020-05-09 21:21:30', null);
INSERT INTO `cms_privileges_roles` VALUES ('12', '1', '1', '1', '1', '1', '1', '12', null, null);

-- ----------------------------
-- Table structure for cms_settings
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------
INSERT INTO `cms_settings` VALUES ('1', 'login_background_color', null, 'text', null, 'Input hexacode', '2020-05-09 21:21:30', null, 'Login Register Style', 'Login Background Color');
INSERT INTO `cms_settings` VALUES ('2', 'login_font_color', null, 'text', null, 'Input hexacode', '2020-05-09 21:21:30', null, 'Login Register Style', 'Login Font Color');
INSERT INTO `cms_settings` VALUES ('3', 'login_background_image', 'uploads/2020-05/89a13270b84053a75d2925fea4dc9e15.jpg', 'upload_image', null, null, '2020-05-09 21:21:30', null, 'Login Register Style', 'Login Background Image');
INSERT INTO `cms_settings` VALUES ('4', 'email_sender', 'support@crudbooster.com', 'text', null, null, '2020-05-09 21:21:30', null, 'Email Setting', 'Email Sender');
INSERT INTO `cms_settings` VALUES ('5', 'smtp_driver', 'mail', 'select', 'smtp,mail,sendmail', null, '2020-05-09 21:21:30', null, 'Email Setting', 'Mail Driver');
INSERT INTO `cms_settings` VALUES ('6', 'smtp_host', '', 'text', null, null, '2020-05-09 21:21:30', null, 'Email Setting', 'SMTP Host');
INSERT INTO `cms_settings` VALUES ('7', 'smtp_port', '25', 'text', null, 'default 25', '2020-05-09 21:21:30', null, 'Email Setting', 'SMTP Port');
INSERT INTO `cms_settings` VALUES ('8', 'smtp_username', '', 'text', null, null, '2020-05-09 21:21:30', null, 'Email Setting', 'SMTP Username');
INSERT INTO `cms_settings` VALUES ('9', 'smtp_password', '', 'text', null, null, '2020-05-09 21:21:30', null, 'Email Setting', 'SMTP Password');
INSERT INTO `cms_settings` VALUES ('10', 'appname', 'EcuaPet', 'text', null, null, '2020-05-09 21:21:30', null, 'Application Setting', 'Application Name');
INSERT INTO `cms_settings` VALUES ('11', 'default_paper_size', 'Legal', 'text', null, 'Paper size, ex : A4, Legal, etc', '2020-05-09 21:21:30', null, 'Application Setting', 'Default Paper Print Size');
INSERT INTO `cms_settings` VALUES ('12', 'logo', 'uploads/2020-05/ae2199484c596eaaae90da806d8b517c.png', 'upload_image', null, null, '2020-05-09 21:21:30', null, 'Application Setting', 'Logo');
INSERT INTO `cms_settings` VALUES ('13', 'favicon', null, 'upload_image', null, null, '2020-05-09 21:21:30', null, 'Application Setting', 'Favicon');
INSERT INTO `cms_settings` VALUES ('14', 'api_debug_mode', 'true', 'select', 'true,false', null, '2020-05-09 21:21:30', null, 'Application Setting', 'API Debug Mode');
INSERT INTO `cms_settings` VALUES ('15', 'google_api_key', null, 'text', null, null, '2020-05-09 21:21:30', null, 'Application Setting', 'Google API Key');
INSERT INTO `cms_settings` VALUES ('16', 'google_fcm_key', null, 'text', null, null, '2020-05-09 21:21:30', null, 'Application Setting', 'Google FCM Key');

-- ----------------------------
-- Table structure for cms_statistics
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistics`;
CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_statistics
-- ----------------------------

-- ----------------------------
-- Table structure for cms_statistic_components
-- ----------------------------
DROP TABLE IF EXISTS `cms_statistic_components`;
CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_statistic_components
-- ----------------------------

-- ----------------------------
-- Table structure for cms_users
-- ----------------------------
DROP TABLE IF EXISTS `cms_users`;
CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `celular` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitud` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitud` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cms_users
-- ----------------------------
INSERT INTO `cms_users` VALUES ('1', 'Super Admin', null, 'admin@crudbooster.com', '$2y$10$fEh.Zgf9JpzZBd7xedu5ceViCoqwTY9FEzONHbeQT5hBf7zegET1G', '1', '2020-05-09 21:21:30', null, 'Active', 'Av. Colón', null, null, '-0.3230311', '-78.5763841');
INSERT INTO `cms_users` VALUES ('7', 'Juan Pérez', null, 'juan@gmail.com', '$2y$10$RRSxWgTHWMNXdjaDR1Tg1eV2oyDTBtcaAhsADiEqDa9L1QOMkAsJ.', '2', '2020-07-10 00:05:57', '2020-07-10 00:05:57', null, 'Paquisha', '24333888', '094333777', null, null);
INSERT INTO `cms_users` VALUES ('8', 'Juanita b', null, null, '$2y$10$Fy8WXABDkfyOVnHr0u8m3u6vGgBxIerptPAE8gAwmPtd8As3ceNDy', '2', '2020-07-12 00:53:46', '2020-07-12 00:53:46', null, 'av sn', '096555444', '096555444', '-0.3230311', '-78.5763841');

-- ----------------------------
-- Table structure for mascota
-- ----------------------------
DROP TABLE IF EXISTS `mascota`;
CREATE TABLE `mascota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cms_users_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `edad_anios` int(11) DEFAULT NULL,
  `edad_meses` int(11) DEFAULT NULL,
  `raza` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `alergias` varchar(255) DEFAULT NULL,
  `peso` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `qr_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mascota
-- ----------------------------
INSERT INTO `mascota` VALUES ('1', '1', 'Loki', '1', '2', null, null, 'Negro', 'Todas', null, null, null, 'img/qrs/mascota_1.png');
INSERT INTO `mascota` VALUES ('2', '1', 'Dino', '1', '2', null, null, 'Rojo', 'algunas', null, null, null, 'img/qrs/mascota_2.png');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2016_08_07_145904_add_table_cms_apicustom', '1');
INSERT INTO `migrations` VALUES ('2', '2016_08_07_150834_add_table_cms_dashboard', '1');
INSERT INTO `migrations` VALUES ('3', '2016_08_07_151210_add_table_cms_logs', '1');
INSERT INTO `migrations` VALUES ('4', '2016_08_07_151211_add_details_cms_logs', '1');
INSERT INTO `migrations` VALUES ('5', '2016_08_07_152014_add_table_cms_privileges', '1');
INSERT INTO `migrations` VALUES ('6', '2016_08_07_152214_add_table_cms_privileges_roles', '1');
INSERT INTO `migrations` VALUES ('7', '2016_08_07_152320_add_table_cms_settings', '1');
INSERT INTO `migrations` VALUES ('8', '2016_08_07_152421_add_table_cms_users', '1');
INSERT INTO `migrations` VALUES ('9', '2016_08_07_154624_add_table_cms_menus_privileges', '1');
INSERT INTO `migrations` VALUES ('10', '2016_08_07_154624_add_table_cms_moduls', '1');
INSERT INTO `migrations` VALUES ('11', '2016_08_17_225409_add_status_cms_users', '1');
INSERT INTO `migrations` VALUES ('12', '2016_08_20_125418_add_table_cms_notifications', '1');
INSERT INTO `migrations` VALUES ('13', '2016_09_04_033706_add_table_cms_email_queues', '1');
INSERT INTO `migrations` VALUES ('14', '2016_09_16_035347_add_group_setting', '1');
INSERT INTO `migrations` VALUES ('15', '2016_09_16_045425_add_label_setting', '1');
INSERT INTO `migrations` VALUES ('16', '2016_09_17_104728_create_nullable_cms_apicustom', '1');
INSERT INTO `migrations` VALUES ('17', '2016_10_01_141740_add_method_type_apicustom', '1');
INSERT INTO `migrations` VALUES ('18', '2016_10_01_141846_add_parameters_apicustom', '1');
INSERT INTO `migrations` VALUES ('19', '2016_10_01_141934_add_responses_apicustom', '1');
INSERT INTO `migrations` VALUES ('20', '2016_10_01_144826_add_table_apikey', '1');
INSERT INTO `migrations` VALUES ('21', '2016_11_14_141657_create_cms_menus', '1');
INSERT INTO `migrations` VALUES ('22', '2016_11_15_132350_create_cms_email_templates', '1');
INSERT INTO `migrations` VALUES ('23', '2016_11_15_190410_create_cms_statistics', '1');
INSERT INTO `migrations` VALUES ('24', '2016_11_17_102740_create_cms_statistic_components', '1');
INSERT INTO `migrations` VALUES ('25', '2017_06_06_164501_add_deleted_at_cms_moduls', '1');
