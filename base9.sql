/*
 Navicat Premium Data Transfer

 Source Server         : L_Homestead_本机数据库
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:33060
 Source Schema         : base9

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 15/03/2022 14:37:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_config
-- ----------------------------
DROP TABLE IF EXISTS `admin_config`;
CREATE TABLE `admin_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_config_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2022-03-14 17:15:05');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (2, 0, 3, 'Admin', 'fa-tasks', '', NULL, NULL, '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (3, 2, 4, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (4, 2, 5, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (5, 2, 6, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (6, 2, 7, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (7, 2, 8, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (8, 0, 9, 'Helpers', 'fa-gears', '', NULL, '2022-03-14 14:30:18', '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (9, 8, 10, 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', NULL, '2022-03-14 14:30:18', '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (10, 8, 11, 'Database terminal', 'fa-database', 'helpers/terminal/database', NULL, '2022-03-14 14:30:18', '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (11, 8, 12, 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', NULL, '2022-03-14 14:30:18', '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (12, 8, 13, 'Routes', 'fa-list-alt', 'helpers/routes', NULL, '2022-03-14 14:30:18', '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (13, 0, 14, 'Scheduling', 'fa-clock-o', 'scheduling', NULL, '2022-03-14 14:30:34', '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (14, 0, 15, 'Configx', 'fa-toggle-on', 'configx/edit', NULL, '2022-03-14 14:31:40', '2022-03-14 17:15:01');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (15, 0, 2, '用户', 'fa-users', '/users', NULL, '2022-03-14 17:14:59', '2022-03-14 17:15:05');
INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES (16, 0, 16, 'Config', 'fa-toggle-on', 'config', NULL, '2022-03-15 13:03:27', '2022-03-15 13:03:27');
COMMIT;

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
BEGIN;
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (1, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 14:26:33', '2022-03-14 14:26:33');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (2, 1, 'admin', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 14:26:40', '2022-03-14 14:26:40');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (3, 1, 'admin/auth/users', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 14:26:42', '2022-03-14 14:26:42');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (4, 1, 'admin/auth/users', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 14:26:43', '2022-03-14 14:26:43');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (5, 1, 'admin', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 14:26:46', '2022-03-14 14:26:46');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (6, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 14:45:19', '2022-03-14 14:45:19');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (7, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 16:13:30', '2022-03-14 16:13:30');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (8, 1, 'admin/auth/setting', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:13:33', '2022-03-14 16:13:33');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (9, 1, 'admin', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:13:38', '2022-03-14 16:13:38');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (10, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 16:33:32', '2022-03-14 16:33:32');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (11, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 16:34:59', '2022-03-14 16:34:59');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (12, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 16:36:03', '2022-03-14 16:36:03');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (13, 1, 'admin/logs', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:36:06', '2022-03-14 16:36:06');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (14, 1, 'admin/logs', 'GET', '192.168.56.1', '[]', '2022-03-14 16:36:38', '2022-03-14 16:36:38');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (15, 1, 'admin/auth/users', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:36:41', '2022-03-14 16:36:41');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (16, 1, 'admin/auth/users/1/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:36:43', '2022-03-14 16:36:43');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (17, 1, 'admin/auth/menu', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:36:48', '2022-03-14 16:36:48');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (18, 1, 'admin/auth/permissions', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:36:50', '2022-03-14 16:36:50');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (19, 1, 'admin/auth/roles', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:36:51', '2022-03-14 16:36:51');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (20, 1, 'admin/auth/roles/1/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:36:53', '2022-03-14 16:36:53');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (21, 1, 'admin/auth/roles/1', 'PUT', '192.168.56.1', '{\"slug\":\"administrator\",\"name\":\"\\u7ba1\\u7406\\u5458\",\"permissions\":[\"1\",null],\"_token\":\"KFRgqwzM07XrGRifOuRx8IU2lWoZiNuHmhGCVqZZ\",\"_method\":\"PUT\",\"_previous_\":\"https:\\/\\/base9.test\\/admin\\/auth\\/roles\"}', '2022-03-14 16:37:05', '2022-03-14 16:37:05');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (22, 1, 'admin/auth/roles', 'GET', '192.168.56.1', '[]', '2022-03-14 16:37:05', '2022-03-14 16:37:05');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (23, 1, 'admin/logs', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:37:06', '2022-03-14 16:37:06');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (24, 1, 'admin/logs/worker.log', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:37:10', '2022-03-14 16:37:10');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (25, 1, 'admin/logs/laravel.log', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:37:11', '2022-03-14 16:37:11');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (26, 1, 'admin/logs/laravel.log', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:37:12', '2022-03-14 16:37:12');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (27, 1, 'admin/logs/laravel.log', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:37:13', '2022-03-14 16:37:13');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (28, 1, 'admin/logs/laravel.log', 'GET', '192.168.56.1', '[]', '2022-03-14 16:37:18', '2022-03-14 16:37:18');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (29, 1, 'admin', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 16:37:47', '2022-03-14 16:37:47');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (30, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:07:39', '2022-03-14 17:07:39');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (31, 1, 'admin/scheduling', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:07:44', '2022-03-14 17:07:44');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (32, 1, 'admin/helpers/scaffold', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:07:46', '2022-03-14 17:07:46');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (33, 1, 'admin/auth/users', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:07:48', '2022-03-14 17:07:48');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (34, 1, 'admin', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:07:55', '2022-03-14 17:07:55');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (35, 1, 'admin/logs', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:07:57', '2022-03-14 17:07:57');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (36, 1, 'admin/logs', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:08:04', '2022-03-14 17:08:04');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (37, 1, 'admin/logs', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:08:06', '2022-03-14 17:08:06');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (38, 1, 'admin', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:08:14', '2022-03-14 17:08:14');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (39, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:10:50', '2022-03-14 17:10:50');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (40, 1, 'admin/auth/permissions', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:11:00', '2022-03-14 17:11:00');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (41, 1, 'admin/auth/menu', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:11:07', '2022-03-14 17:11:07');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (42, 1, 'admin/auth/menu/15', 'DELETE', '192.168.56.1', '{\"_method\":\"delete\",\"_token\":\"KFRgqwzM07XrGRifOuRx8IU2lWoZiNuHmhGCVqZZ\"}', '2022-03-14 17:11:11', '2022-03-14 17:11:11');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (43, 1, 'admin/auth/menu', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:11:11', '2022-03-14 17:11:11');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (44, 1, 'admin/auth/menu', 'POST', '192.168.56.1', '{\"_token\":\"KFRgqwzM07XrGRifOuRx8IU2lWoZiNuHmhGCVqZZ\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":14}]\"}', '2022-03-14 17:11:13', '2022-03-14 17:11:13');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (45, 1, 'admin/auth/menu', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:11:14', '2022-03-14 17:11:14');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (46, 1, 'admin/auth/menu', 'GET', '192.168.56.1', '[]', '2022-03-14 17:11:16', '2022-03-14 17:11:16');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (47, 1, 'admin/auth/permissions', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:11:18', '2022-03-14 17:11:18');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (48, 1, 'admin/_handle_action_', 'POST', '192.168.56.1', '{\"_key\":\"9\",\"_model\":\"Encore_Admin_Auth_Database_Permission\",\"_token\":\"KFRgqwzM07XrGRifOuRx8IU2lWoZiNuHmhGCVqZZ\",\"_action\":\"Encore_Admin_Grid_Actions_Delete\",\"_input\":\"true\"}', '2022-03-14 17:11:23', '2022-03-14 17:11:23');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (49, 1, 'admin/auth/permissions', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:11:24', '2022-03-14 17:11:24');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (50, 1, 'admin/auth/permissions', 'GET', '192.168.56.1', '[]', '2022-03-14 17:12:48', '2022-03-14 17:12:48');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (51, 1, 'admin', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:12:49', '2022-03-14 17:12:49');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (52, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:12:51', '2022-03-14 17:12:51');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (53, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:12:52', '2022-03-14 17:12:52');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (54, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:13:12', '2022-03-14 17:13:12');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (55, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:13:12', '2022-03-14 17:13:12');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (56, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:14:03', '2022-03-14 17:14:03');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (57, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:14:23', '2022-03-14 17:14:23');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (58, 1, 'admin/auth/menu', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:14:34', '2022-03-14 17:14:34');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (59, 1, 'admin/auth/menu', 'POST', '192.168.56.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"KFRgqwzM07XrGRifOuRx8IU2lWoZiNuHmhGCVqZZ\"}', '2022-03-14 17:14:59', '2022-03-14 17:14:59');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (60, 1, 'admin/auth/menu', 'GET', '192.168.56.1', '[]', '2022-03-14 17:14:59', '2022-03-14 17:14:59');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (61, 1, 'admin/auth/menu', 'POST', '192.168.56.1', '{\"_token\":\"KFRgqwzM07XrGRifOuRx8IU2lWoZiNuHmhGCVqZZ\",\"_order\":\"[{\\\"id\\\":15},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":14}]\"}', '2022-03-14 17:15:01', '2022-03-14 17:15:01');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (62, 1, 'admin/auth/menu', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:15:01', '2022-03-14 17:15:01');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (63, 1, 'admin/auth/menu', 'POST', '192.168.56.1', '{\"_token\":\"KFRgqwzM07XrGRifOuRx8IU2lWoZiNuHmhGCVqZZ\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":15},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12}]},{\\\"id\\\":13},{\\\"id\\\":14}]\"}', '2022-03-14 17:15:05', '2022-03-14 17:15:05');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (64, 1, 'admin/auth/menu', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:15:05', '2022-03-14 17:15:05');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (65, 1, 'admin/auth/menu', 'GET', '192.168.56.1', '[]', '2022-03-14 17:15:06', '2022-03-14 17:15:06');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (66, 1, 'admin/users', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:15:08', '2022-03-14 17:15:08');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (67, 1, 'admin/users/create', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:15:09', '2022-03-14 17:15:09');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (68, 1, 'admin', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:15:13', '2022-03-14 17:15:13');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (69, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:15:14', '2022-03-14 17:15:14');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (70, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:15:15', '2022-03-14 17:15:15');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (71, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:17:22', '2022-03-14 17:17:22');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (72, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:17:22', '2022-03-14 17:17:22');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (73, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:18:32', '2022-03-14 17:18:32');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (74, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:18:32', '2022-03-14 17:18:32');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (75, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:20:55', '2022-03-14 17:20:55');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (76, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:20:55', '2022-03-14 17:20:55');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (77, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:21:11', '2022-03-14 17:21:11');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (78, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:21:27', '2022-03-14 17:21:27');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (79, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:21:27', '2022-03-14 17:21:27');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (80, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:22:17', '2022-03-14 17:22:17');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (81, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:22:17', '2022-03-14 17:22:17');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (82, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:23:51', '2022-03-14 17:23:51');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (83, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:23:54', '2022-03-14 17:23:54');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (84, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:23:54', '2022-03-14 17:23:54');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (85, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-14 17:24:02', '2022-03-14 17:24:02');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (86, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-14 17:24:04', '2022-03-14 17:24:04');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (87, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-15 13:03:41', '2022-03-15 13:03:41');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (88, 1, 'admin/config', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 13:03:45', '2022-03-15 13:03:45');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (89, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 13:03:46', '2022-03-15 13:03:46');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (90, 1, 'admin/config', 'GET', '192.168.56.1', '[]', '2022-03-15 13:03:46', '2022-03-15 13:03:46');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (91, 1, 'admin/config', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 13:03:48', '2022-03-15 13:03:48');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (92, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 13:03:50', '2022-03-15 13:03:50');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (93, 1, 'admin/config', 'GET', '192.168.56.1', '[]', '2022-03-15 13:03:50', '2022-03-15 13:03:50');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (94, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 13:04:06', '2022-03-15 13:04:06');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (95, 1, 'admin/config', 'GET', '192.168.56.1', '[]', '2022-03-15 13:04:06', '2022-03-15 13:04:06');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (96, 1, 'admin/_handle_action_', 'POST', '192.168.56.1', '{\"_token\":\"QBODYO4NEterYUcUF9pIsJsdqQrFJKll4mKDMCIT\",\"_action\":\"App_Admin_Actions_ClearCache\",\"_input\":\"true\"}', '2022-03-15 13:06:39', '2022-03-15 13:06:39');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (97, 1, 'admin/config', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 13:06:40', '2022-03-15 13:06:40');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (98, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 13:06:44', '2022-03-15 13:06:44');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (99, 1, 'admin/config', 'GET', '192.168.56.1', '[]', '2022-03-15 13:06:44', '2022-03-15 13:06:44');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (100, 1, 'admin/auth/setting', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 13:40:46', '2022-03-15 13:40:46');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (101, 1, 'admin/users', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 13:40:49', '2022-03-15 13:40:49');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (102, 1, 'admin', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 13:40:49', '2022-03-15 13:40:49');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (103, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 13:40:51', '2022-03-15 13:40:51');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (104, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-15 13:40:51', '2022-03-15 13:40:51');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (105, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 13:41:12', '2022-03-15 13:41:12');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (106, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-15 13:41:12', '2022-03-15 13:41:12');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (107, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '[]', '2022-03-15 13:41:30', '2022-03-15 13:41:30');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (108, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '[]', '2022-03-15 13:47:09', '2022-03-15 13:47:09');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (109, 1, 'admin/users', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 14:18:03', '2022-03-15 14:18:03');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (110, 1, 'admin/users/create', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 14:18:05', '2022-03-15 14:18:05');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (111, 1, 'admin/users/create', 'GET', '192.168.56.1', '[]', '2022-03-15 14:18:40', '2022-03-15 14:18:40');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (112, 1, 'admin/users', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 14:18:51', '2022-03-15 14:18:51');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (113, 1, 'admin/_handle_action_', 'POST', '192.168.56.1', '{\"_token\":\"QBODYO4NEterYUcUF9pIsJsdqQrFJKll4mKDMCIT\",\"_action\":\"App_Admin_Actions_ClearCache\",\"_input\":\"true\"}', '2022-03-15 14:18:53', '2022-03-15 14:18:53');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (114, 1, 'admin/users', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 14:18:53', '2022-03-15 14:18:53');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (115, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '[]', '2022-03-15 14:34:35', '2022-03-15 14:34:35');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (116, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '[]', '2022-03-15 14:34:42', '2022-03-15 14:34:42');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (117, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '[]', '2022-03-15 14:35:09', '2022-03-15 14:35:09');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (118, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '[]', '2022-03-15 14:35:21', '2022-03-15 14:35:21');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (119, 1, 'admin', 'GET', '192.168.56.1', '[]', '2022-03-15 14:35:58', '2022-03-15 14:35:58');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (120, 1, 'admin/config', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 14:36:01', '2022-03-15 14:36:01');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (121, 1, 'admin/configx/edit', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 14:36:02', '2022-03-15 14:36:02');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (122, 1, 'admin/config', 'GET', '192.168.56.1', '[]', '2022-03-15 14:36:04', '2022-03-15 14:36:04');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (123, 1, 'admin/config/create', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 14:36:05', '2022-03-15 14:36:05');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (124, 1, 'admin/config', 'GET', '192.168.56.1', '{\"_pjax\":\"#pjax-container\"}', '2022-03-15 14:36:10', '2022-03-15 14:36:10');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES (125, 1, 'admin/config', 'GET', '192.168.56.1', '[]', '2022-03-15 14:36:14', '2022-03-15 14:36:14');
COMMIT;

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
BEGIN;
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES (1, 'All permission', '*', '', '*', NULL, NULL);
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES (2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL);
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES (3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL);
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES (4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL);
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES (5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES (6, 'Admin helpers', 'ext.helpers', '', '/helpers/*', '2022-03-14 14:30:18', '2022-03-14 14:30:18');
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES (7, 'Scheduling', 'ext.scheduling', '', '/scheduling*', '2022-03-14 14:30:35', '2022-03-14 14:30:35');
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES (8, 'Admin Configx', 'ext.configx', '', '/configx/*', '2022-03-14 14:31:40', '2022-03-14 14:31:40');
INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES (9, 'Admin Config', 'ext.config', '', '/config*', '2022-03-15 13:03:27', '2022-03-15 13:03:27');
COMMIT;

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int NOT NULL,
  `menu_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES (1, 2, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES (1, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
BEGIN;
INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES (1, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
BEGIN;
INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, '管理员', 'administrator', '2022-03-14 06:24:04', '2022-03-14 16:37:05');
COMMIT;

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_auth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_open_google_auth` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
BEGIN;
INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`, `google_auth`, `is_open_google_auth`) VALUES (1, 'admin', '$2y$10$qMxWnoLMyn0n2YjMm7FuHO/Azqi83MB4zOERY6RjpaWjqjllWWPhi', 'Administrator', NULL, 'adFekb8XJs0rVTQ2ZRypcqlpiAQCnuXzjc1n0tidzALHsG87jHLiRk3I0J7F', '2022-03-14 06:24:04', '2022-03-14 06:24:04', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5, '2016_01_04_173148_create_admin_tables', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6, '2017_07_17_040159_create_config_table', 3);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7, '2016_06_01_000001_create_oauth_auth_codes_table', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8, '2016_06_01_000002_create_oauth_access_tokens_table', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9, '2016_06_01_000003_create_oauth_refresh_tokens_table', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10, '2016_06_01_000004_create_oauth_clients_table', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (11, '2016_06_01_000005_create_oauth_personal_access_clients_table', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (12, '2019_11_21_120702_add_google_auth_to_admin_users_table', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (13, '2022_03_14_165557_add_mobile_to_users_table', 5);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (14, '2022_03_14_165808_create_signin_logs_table', 5);
COMMIT;

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
BEGIN;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES (1, NULL, 'APP', '880EXPvRgd2iTYaiIZICLdemcnEJHGA9PjtxV0Ve', 'users', 'http://localhost', 0, 1, 0, '2022-03-14 15:47:39', '2022-03-14 15:47:39');
COMMIT;

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for signin_logs
-- ----------------------------
DROP TABLE IF EXISTS `signin_logs`;
CREATE TABLE `signin_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL COMMENT '用户 ID',
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'IP 地址',
  `ip_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IP 地区',
  `login_at` timestamp NULL DEFAULT NULL COMMENT '登录时间',
  `client_id` int NOT NULL COMMENT '登录客户端',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户登录日志';

-- ----------------------------
-- Records of signin_logs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `parent_id` int DEFAULT '0' COMMENT '上级 ID',
  `status` int NOT NULL DEFAULT '0' COMMENT '状态 0-启用 1-禁用',
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '最后登录IP',
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_mobile_unique` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户';

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
