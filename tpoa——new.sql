/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : tpoa

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-01-12 10:36:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '4', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '4', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '4', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can view content type', '4', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('17', 'Can add session', '5', 'add_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can change session', '5', 'change_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete session', '5', 'delete_session');
INSERT INTO `auth_permission` VALUES ('20', 'Can view session', '5', 'view_session');
INSERT INTO `auth_permission` VALUES ('21', 'Can add Bookmark', '6', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('22', 'Can change Bookmark', '6', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete Bookmark', '6', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('24', 'Can add User Setting', '7', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('25', 'Can change User Setting', '7', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('26', 'Can delete User Setting', '7', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('27', 'Can add User Widget', '8', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('28', 'Can change User Widget', '8', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('29', 'Can delete User Widget', '8', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('30', 'Can add log entry', '9', 'add_log');
INSERT INTO `auth_permission` VALUES ('31', 'Can change log entry', '9', 'change_log');
INSERT INTO `auth_permission` VALUES ('32', 'Can delete log entry', '9', 'delete_log');
INSERT INTO `auth_permission` VALUES ('33', 'Can view Bookmark', '6', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('34', 'Can view log entry', '9', 'view_log');
INSERT INTO `auth_permission` VALUES ('35', 'Can view User Setting', '7', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('36', 'Can view User Widget', '8', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('37', 'Can add 用户信息', '10', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('38', 'Can change 用户信息', '10', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete 用户信息', '10', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('40', 'Can add 职务', '11', 'add_post');
INSERT INTO `auth_permission` VALUES ('41', 'Can change 职务', '11', 'change_post');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete 职务', '11', 'delete_post');
INSERT INTO `auth_permission` VALUES ('43', 'Can add 组织架构', '12', 'add_structure');
INSERT INTO `auth_permission` VALUES ('44', 'Can change 组织架构', '12', 'change_structure');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete 组织架构', '12', 'delete_structure');
INSERT INTO `auth_permission` VALUES ('46', 'Can view 职务', '11', 'view_post');
INSERT INTO `auth_permission` VALUES ('47', 'Can view 组织架构', '12', 'view_structure');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 用户信息', '10', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 菜单', '13', 'add_menu');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 菜单', '13', 'change_menu');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 菜单', '13', 'delete_menu');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 角色', '14', 'add_role');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 角色', '14', 'change_role');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 角色', '14', 'delete_role');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('13', 'rbac', 'menu');
INSERT INTO `django_content_type` VALUES ('14', 'rbac', 'role');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('11', 'users', 'post');
INSERT INTO `django_content_type` VALUES ('12', 'users', 'structure');
INSERT INTO `django_content_type` VALUES ('10', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('6', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('9', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('7', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('8', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'rbac', '0001_initial', '2019-01-07 08:24:12.683968');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0001_initial', '2019-01-07 08:24:12.731507');
INSERT INTO `django_migrations` VALUES ('3', 'contenttypes', '0002_remove_content_type_name', '2019-01-07 08:24:12.820931');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0001_initial', '2019-01-07 08:24:13.110454');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0002_alter_permission_name_max_length', '2019-01-07 08:24:13.187143');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0003_alter_user_email_max_length', '2019-01-07 08:24:13.195080');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0004_alter_user_username_opts', '2019-01-07 08:24:13.203512');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0005_alter_user_last_login_null', '2019-01-07 08:24:13.212049');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0006_require_contenttypes_0002', '2019-01-07 08:24:13.215521');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0007_alter_validators_add_error_messages', '2019-01-07 08:24:13.231897');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0008_alter_user_username_max_length', '2019-01-07 08:24:13.248258');
INSERT INTO `django_migrations` VALUES ('12', 'users', '0001_initial', '2019-01-07 08:24:14.207067');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0001_initial', '2019-01-07 08:24:14.357627');
INSERT INTO `django_migrations` VALUES ('14', 'admin', '0002_logentry_remove_auto_add', '2019-01-07 08:24:14.373071');
INSERT INTO `django_migrations` VALUES ('15', 'sessions', '0001_initial', '2019-01-07 08:24:14.422067');
INSERT INTO `django_migrations` VALUES ('16', 'xadmin', '0001_initial', '2019-01-07 08:24:14.743658');
INSERT INTO `django_migrations` VALUES ('17', 'xadmin', '0002_log', '2019-01-07 08:24:14.911251');
INSERT INTO `django_migrations` VALUES ('18', 'xadmin', '0003_auto_20160715_0100', '2019-01-07 08:24:14.989579');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('0y30oejrhgbonzwrbfilfjjrov6mzomz', 'NGE5ZDFkOWUyZDYzMjU0Y2Y2YmE5ZjlkZjIwOWRhYzM5OTFmYmYwMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjRkMGYzNTJkMTYwYTEyZjk4ODRlZDQ4MWEzMzQyYmQxMDYzMGYxIiwiTElTVF9RVUVSWSI6W1sicmJhYyIsInJvbGUiXSwiIl19', '2019-01-23 07:08:02.953290');
INSERT INTO `django_session` VALUES ('5lr9an5z9qkt8gn2w4nqy56jz0ga73u4', 'NDBmMDVjNTI1YjM3MmQ4NWM4YWFkMzQ1NmIyMjYyNGI3MTU3ZDdmZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjRkMGYzNTJkMTYwYTEyZjk4ODRlZDQ4MWEzMzQyYmQxMDYzMGYxIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJzdHJ1Y3R1cmUiXSwiIl19', '2019-01-24 08:02:10.498197');
INSERT INTO `django_session` VALUES ('8as4c5970p7wlkb1l4lcooa37jlkia5g', 'NDBmMDVjNTI1YjM3MmQ4NWM4YWFkMzQ1NmIyMjYyNGI3MTU3ZDdmZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjRkMGYzNTJkMTYwYTEyZjk4ODRlZDQ4MWEzMzQyYmQxMDYzMGYxIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJzdHJ1Y3R1cmUiXSwiIl19', '2019-01-25 03:19:28.639672');
INSERT INTO `django_session` VALUES ('a1meue8zoslwxr6bu0m38ifbqybnjjfr', 'OWE3MmNkMzZjZTkxMjNjMDk4YzAxNGE5MGMwYjI1NWNiMTVkMjQ2OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjRkMGYzNTJkMTYwYTEyZjk4ODRlZDQ4MWEzMzQyYmQxMDYzMGYxIn0=', '2019-01-24 08:10:57.636563');
INSERT INTO `django_session` VALUES ('ii3gjr2vi5av9rnvhxqfr5hilkqf5w5i', 'NmIyNDg4YTlkNWE1Y2M4YTE2M2VmZjRjMTlmMzFhMWNlNjQ2OTNiNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjRkMGYzNTJkMTYwYTEyZjk4ODRlZDQ4MWEzMzQyYmQxMDYzMGYxIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VycHJvZmlsZSJdLCIiXX0=', '2019-01-24 06:08:55.783956');
INSERT INTO `django_session` VALUES ('kkd43u7c0ih1bhixv3nbzjugmzxlnkxf', 'ZDI2MzM2YjFhNjQ4YTAwMTQxNzRlZTkxYzg0OGU1NTBlYWJhMjBhMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjRkMGYzNTJkMTYwYTEyZjk4ODRlZDQ4MWEzMzQyYmQxMDYzMGYxIiwiTElTVF9RVUVSWSI6W1sicmJhYyIsIm1lbnUiXSwiIl19', '2019-01-21 09:29:19.297717');
INSERT INTO `django_session` VALUES ('knjl0yg7alff2fdttlmutbjv544sksok', 'NmIyNDg4YTlkNWE1Y2M4YTE2M2VmZjRjMTlmMzFhMWNlNjQ2OTNiNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjRkMGYzNTJkMTYwYTEyZjk4ODRlZDQ4MWEzMzQyYmQxMDYzMGYxIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VycHJvZmlsZSJdLCIiXX0=', '2019-01-23 08:37:24.637808');
INSERT INTO `django_session` VALUES ('qzdy22tkb0bfrlalc242m0q3vqsko914', 'NmIyNDg4YTlkNWE1Y2M4YTE2M2VmZjRjMTlmMzFhMWNlNjQ2OTNiNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjRkMGYzNTJkMTYwYTEyZjk4ODRlZDQ4MWEzMzQyYmQxMDYzMGYxIiwiTElTVF9RVUVSWSI6W1sidXNlcnMiLCJ1c2VycHJvZmlsZSJdLCIiXX0=', '2019-01-22 08:19:55.138219');
INSERT INTO `django_session` VALUES ('s99wj8rz3fszkg7jfjbmecilr9gtfdeg', 'OTYxOWZmNmVhN2M0OWRjZDk2MWQwZDhmNmM1MzZmMzUzZjliMTRkYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjRkMGYzNTJkMTYwYTEyZjk4ODRlZDQ4MWEzMzQyYmQxMDYzMGYxIiwiTElTVF9RVUVSWSI6W1sieGFkbWluIiwibG9nIl0sIiJdfQ==', '2019-01-23 08:26:16.716520');
INSERT INTO `django_session` VALUES ('tr4sf6dvy3ifgga1tuq0j1lyhaqojqa4', 'ZDI2MzM2YjFhNjQ4YTAwMTQxNzRlZTkxYzg0OGU1NTBlYWJhMjBhMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjRkMGYzNTJkMTYwYTEyZjk4ODRlZDQ4MWEzMzQyYmQxMDYzMGYxIiwiTElTVF9RVUVSWSI6W1sicmJhYyIsIm1lbnUiXSwiIl19', '2019-01-22 00:39:20.502742');
INSERT INTO `django_session` VALUES ('ui062dxwsftgr3qmaudwugd46az3iahi', 'ZDI2MzM2YjFhNjQ4YTAwMTQxNzRlZTkxYzg0OGU1NTBlYWJhMjBhMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2ZjRkMGYzNTJkMTYwYTEyZjk4ODRlZDQ4MWEzMzQyYmQxMDYzMGYxIiwiTElTVF9RVUVSWSI6W1sicmJhYyIsIm1lbnUiXSwiIl19', '2019-01-22 01:10:04.230343');

-- ----------------------------
-- Table structure for rbac_menu
-- ----------------------------
DROP TABLE IF EXISTS `rbac_menu`;
CREATE TABLE `rbac_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `is_top` tinyint(1) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `url` (`url`),
  KEY `rbac_menu_parent_id_60a5b178_fk_rbac_menu_id` (`parent_id`),
  CONSTRAINT `rbac_menu_parent_id_60a5b178_fk_rbac_menu_id` FOREIGN KEY (`parent_id`) REFERENCES `rbac_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbac_menu
-- ----------------------------
INSERT INTO `rbac_menu` VALUES ('1', '系统', '1', null, 'SYSTEM', '/system/', null);
INSERT INTO `rbac_menu` VALUES ('3', '流程', '1', null, 'FLOW', '/flow/', null);
INSERT INTO `rbac_menu` VALUES ('4', '我的工作台', '0', null, 'PERSONAL', '/personal/', null);
INSERT INTO `rbac_menu` VALUES ('5', '基础设置', '0', null, 'SYSTEM-BASIC', null, '1');
INSERT INTO `rbac_menu` VALUES ('6', '权限管理', '0', null, 'SYSTEM-RBAC', null, '1');
INSERT INTO `rbac_menu` VALUES ('7', '组织架构', '0', null, 'SYSTEM-BASIC-STRUCTURE', '/system/basic/structure/', '5');
INSERT INTO `rbac_menu` VALUES ('8', '用户管理', '0', null, 'SYSTEM-BASIC-USER', '/system/basic/user/', '5');
INSERT INTO `rbac_menu` VALUES ('9', '菜单管理', '0', null, 'SYSTEM-RBAC-MENU', '/system/rbac/menu/', '6');
INSERT INTO `rbac_menu` VALUES ('10', '角色管理', '0', null, 'SYSTEM-RBAC-ROLE', '/system/rbac/role/', '6');
INSERT INTO `rbac_menu` VALUES ('11', '个人中心', '0', null, 'PERSONAL-USERINFO', '/personal/userinfo', '4');
INSERT INTO `rbac_menu` VALUES ('12', '工单管理', '0', null, 'PERSONAL-WORKORDER', null, '4');
INSERT INTO `rbac_menu` VALUES ('13', '组织架构-:增加', '0', null, 'SYSTEM-BASIC-STRUCTURE-ADD', '/system/basic/structure/add', '7');

-- ----------------------------
-- Table structure for rbac_role
-- ----------------------------
DROP TABLE IF EXISTS `rbac_role`;
CREATE TABLE `rbac_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbac_role
-- ----------------------------
INSERT INTO `rbac_role` VALUES ('1', '管理员');

-- ----------------------------
-- Table structure for rbac_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `rbac_role_permissions`;
CREATE TABLE `rbac_role_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rbac_role_permissions_role_id_menu_id_8ba9f835_uniq` (`role_id`,`menu_id`),
  KEY `rbac_role_permissions_menu_id_bb73fb9a_fk_rbac_menu_id` (`menu_id`),
  CONSTRAINT `rbac_role_permissions_menu_id_bb73fb9a_fk_rbac_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `rbac_menu` (`id`),
  CONSTRAINT `rbac_role_permissions_role_id_d10416cb_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbac_role_permissions
-- ----------------------------
INSERT INTO `rbac_role_permissions` VALUES ('1', '1', '1');
INSERT INTO `rbac_role_permissions` VALUES ('10', '1', '3');
INSERT INTO `rbac_role_permissions` VALUES ('11', '1', '4');
INSERT INTO `rbac_role_permissions` VALUES ('12', '1', '5');
INSERT INTO `rbac_role_permissions` VALUES ('13', '1', '6');
INSERT INTO `rbac_role_permissions` VALUES ('14', '1', '7');
INSERT INTO `rbac_role_permissions` VALUES ('15', '1', '8');
INSERT INTO `rbac_role_permissions` VALUES ('16', '1', '9');
INSERT INTO `rbac_role_permissions` VALUES ('17', '1', '10');
INSERT INTO `rbac_role_permissions` VALUES ('18', '1', '11');
INSERT INTO `rbac_role_permissions` VALUES ('19', '1', '12');

-- ----------------------------
-- Table structure for users_post
-- ----------------------------
DROP TABLE IF EXISTS `users_post`;
CREATE TABLE `users_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `structure_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_post_structure_id_7500d1b5_fk_users_structure_id` (`structure_id`),
  CONSTRAINT `users_post_structure_id_7500d1b5_fk_users_structure_id` FOREIGN KEY (`structure_id`) REFERENCES `users_structure` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_post
-- ----------------------------

-- ----------------------------
-- Table structure for users_structure
-- ----------------------------
DROP TABLE IF EXISTS `users_structure`;
CREATE TABLE `users_structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `type` varchar(20) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_structure_parent_id_e73fd647_fk_users_structure_id` (`parent_id`),
  CONSTRAINT `users_structure_parent_id_e73fd647_fk_users_structure_id` FOREIGN KEY (`parent_id`) REFERENCES `users_structure` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_structure
-- ----------------------------
INSERT INTO `users_structure` VALUES ('1', '工管委领导', 'department', null);
INSERT INTO `users_structure` VALUES ('2', '党政办公室', 'department', null);
INSERT INTO `users_structure` VALUES ('3', '组织宣传部', 'department', null);
INSERT INTO `users_structure` VALUES ('4', '经济发展局', 'department', null);
INSERT INTO `users_structure` VALUES ('5', '建设局', 'department', null);
INSERT INTO `users_structure` VALUES ('6', '财政局', 'department', null);
INSERT INTO `users_structure` VALUES ('7', '人力资源和社会保障局', 'department', null);
INSERT INTO `users_structure` VALUES ('8', '社会事务管理局', 'department', null);
INSERT INTO `users_structure` VALUES ('9', '行政审批局', 'department', null);
INSERT INTO `users_structure` VALUES ('10', '综合行政执法执行和城市管理局', 'department', null);
INSERT INTO `users_structure` VALUES ('11', '政法委员会', 'department', null);
INSERT INTO `users_structure` VALUES ('12', '督查考核办公室', 'department', null);
INSERT INTO `users_structure` VALUES ('13', '经济政策研究中心', 'department', null);
INSERT INTO `users_structure` VALUES ('14', '总工会', 'department', null);
INSERT INTO `users_structure` VALUES ('15', '社区党工委、社区管理办公室', 'department', null);
INSERT INTO `users_structure` VALUES ('16', '信息化管理与服务中心', 'department', null);
INSERT INTO `users_structure` VALUES ('17', '安全生产监督管理局', 'department', null);
INSERT INTO `users_structure` VALUES ('18', '科学技术局', 'department', null);
INSERT INTO `users_structure` VALUES ('19', '土地收储和房屋征收管理办公室', 'department', null);
INSERT INTO `users_structure` VALUES ('20', '国有资本运营管理中心', 'department', null);
INSERT INTO `users_structure` VALUES ('21', '农林水务局', 'department', null);
INSERT INTO `users_structure` VALUES ('22', '教育体育局', 'department', null);
INSERT INTO `users_structure` VALUES ('23', '审计局', 'department', null);
INSERT INTO `users_structure` VALUES ('24', '纪工委、监察局', 'department', null);
INSERT INTO `users_structure` VALUES ('25', '华夏幸福基业滦河项目管理办公室', 'department', null);
INSERT INTO `users_structure` VALUES ('26', '公安分局', 'department', null);
INSERT INTO `users_structure` VALUES ('27', '综合科', 'office', '2');
INSERT INTO `users_structure` VALUES ('28', '秘书科', 'office', '2');
INSERT INTO `users_structure` VALUES ('29', '行政服务科', 'office', '2');
INSERT INTO `users_structure` VALUES ('30', '法制办公室', 'office', '2');
INSERT INTO `users_structure` VALUES ('31', '应急管理办公室', 'office', '2');
INSERT INTO `users_structure` VALUES ('32', '综合科', 'office', '3');
INSERT INTO `users_structure` VALUES ('33', '干部科', 'office', '3');
INSERT INTO `users_structure` VALUES ('34', '基层组织科', 'office', '3');
INSERT INTO `users_structure` VALUES ('35', '两新组织党建科', 'office', '3');
INSERT INTO `users_structure` VALUES ('36', '机关党建指导科', 'office', '3');
INSERT INTO `users_structure` VALUES ('37', '宣传科', 'office', '3');
INSERT INTO `users_structure` VALUES ('38', '传媒与远教中心', 'office', '3');
INSERT INTO `users_structure` VALUES ('39', '共青团高新区工委', 'office', '3');
INSERT INTO `users_structure` VALUES ('40', '妇女联合会', 'office', '3');
INSERT INTO `users_structure` VALUES ('41', '综合科', 'office', '4');
INSERT INTO `users_structure` VALUES ('42', '商务旅游科', 'office', '4');
INSERT INTO `users_structure` VALUES ('43', '招商引资办公室', 'office', '4');
INSERT INTO `users_structure` VALUES ('44', '项目管理办公室', 'office', '4');
INSERT INTO `users_structure` VALUES ('45', '企业服务科', 'office', '4');
INSERT INTO `users_structure` VALUES ('46', '发展改革科', 'office', '4');
INSERT INTO `users_structure` VALUES ('47', '工业与信息化服务科', 'office', '4');
INSERT INTO `users_structure` VALUES ('48', '统计科', 'office', '4');
INSERT INTO `users_structure` VALUES ('49', '综合科', 'office', '5');
INSERT INTO `users_structure` VALUES ('50', '建筑市场监管科', 'office', '5');
INSERT INTO `users_structure` VALUES ('51', '工程技术科', 'office', '5');
INSERT INTO `users_structure` VALUES ('52', '棚户区改造与住房保障管理科', 'office', '5');
INSERT INTO `users_structure` VALUES ('53', '公用事业综合管理科', 'office', '5');
INSERT INTO `users_structure` VALUES ('54', '交通管理科', 'office', '5');
INSERT INTO `users_structure` VALUES ('55', '人民防控与房产物业管理办公室', 'office', '5');
INSERT INTO `users_structure` VALUES ('56', '综合科', 'office', '6');
INSERT INTO `users_structure` VALUES ('57', '监督非税科', 'office', '6');
INSERT INTO `users_structure` VALUES ('58', '经社保障科', 'office', '6');
INSERT INTO `users_structure` VALUES ('59', '预算国库科', 'office', '6');
INSERT INTO `users_structure` VALUES ('60', '采购评审科', 'office', '6');
INSERT INTO `users_structure` VALUES ('61', '集中支付中心', 'office', '6');
INSERT INTO `users_structure` VALUES ('62', '综合科', 'office', '7');
INSERT INTO `users_structure` VALUES ('63', '人事科', 'office', '7');
INSERT INTO `users_structure` VALUES ('64', '社会保险中心', 'office', '7');
INSERT INTO `users_structure` VALUES ('65', '就业服务科', 'office', '7');
INSERT INTO `users_structure` VALUES ('66', '城乡居民社会养老保险中心', 'office', '7');
INSERT INTO `users_structure` VALUES ('67', '劳动保障监察大队', 'office', '7');
INSERT INTO `users_structure` VALUES ('68', '综合科', 'office', '8');
INSERT INTO `users_structure` VALUES ('69', '民政科', 'office', '8');
INSERT INTO `users_structure` VALUES ('70', '综合核查中心', 'office', '8');
INSERT INTO `users_structure` VALUES ('71', '文化广播新闻出版科', 'office', '8');
INSERT INTO `users_structure` VALUES ('72', '卫生监督疾控科', 'office', '8');
INSERT INTO `users_structure` VALUES ('73', '综合科', 'office', '9');
INSERT INTO `users_structure` VALUES ('74', '社会科', 'office', '9');
INSERT INTO `users_structure` VALUES ('75', '农林水科', 'office', '9');
INSERT INTO `users_structure` VALUES ('76', '经济科', 'office', '9');
INSERT INTO `users_structure` VALUES ('77', '建设科', 'office', '9');
INSERT INTO `users_structure` VALUES ('78', '政务服务科', 'office', '9');
INSERT INTO `users_structure` VALUES ('79', '综合科', 'office', '10');
INSERT INTO `users_structure` VALUES ('80', '政策法规科', 'office', '10');
INSERT INTO `users_structure` VALUES ('81', '城市管理科', 'office', '10');
INSERT INTO `users_structure` VALUES ('82', '数字城管监督指挥中心', 'office', '10');
INSERT INTO `users_structure` VALUES ('83', '园林绿化科', 'office', '10');
INSERT INTO `users_structure` VALUES ('84', '市容环卫管理所', 'office', '10');
INSERT INTO `users_structure` VALUES ('85', '渣土管理办公室', 'office', '10');
INSERT INTO `users_structure` VALUES ('86', '城管综合执法大队', 'office', '10');
INSERT INTO `users_structure` VALUES ('87', '综合科', 'office', '11');
INSERT INTO `users_structure` VALUES ('88', '社会治安综合治理办公室', 'office', '11');
INSERT INTO `users_structure` VALUES ('89', '防范和处理邪教问题办公室', 'office', '11');
INSERT INTO `users_structure` VALUES ('90', '国家安全领导小组办公室', 'office', '11');
INSERT INTO `users_structure` VALUES ('91', '司法科', 'office', '11');
INSERT INTO `users_structure` VALUES ('92', '信访科', 'office', '11');
INSERT INTO `users_structure` VALUES ('93', '群众工作中心', 'office', '11');
INSERT INTO `users_structure` VALUES ('94', '综合科', 'office', '12');
INSERT INTO `users_structure` VALUES ('95', '督查科', 'office', '12');
INSERT INTO `users_structure` VALUES ('96', '考核科', 'office', '12');
INSERT INTO `users_structure` VALUES ('97', '信息综合科', 'office', '13');
INSERT INTO `users_structure` VALUES ('98', '政策研究科', 'office', '13');
INSERT INTO `users_structure` VALUES ('99', '综合业务科', 'office', '14');
INSERT INTO `users_structure` VALUES ('100', '职工服务中心', 'office', '14');
INSERT INTO `users_structure` VALUES ('101', '综合管理科', 'office', '15');
INSERT INTO `users_structure` VALUES ('102', '党务办公室', 'office', '15');
INSERT INTO `users_structure` VALUES ('103', '街政服务中心', 'office', '15');
INSERT INTO `users_structure` VALUES ('104', '信息办', 'office', '16');
INSERT INTO `users_structure` VALUES ('105', '综合科', 'office', '17');
INSERT INTO `users_structure` VALUES ('106', '工矿商贸监督管理科', 'office', '17');
INSERT INTO `users_structure` VALUES ('107', '危险化学品监督管理科', 'office', '17');
INSERT INTO `users_structure` VALUES ('108', '职业健康监督管理科', 'office', '17');
INSERT INTO `users_structure` VALUES ('109', '安全生产执法检查大队', 'office', '17');
INSERT INTO `users_structure` VALUES ('110', '综合科', 'office', '18');
INSERT INTO `users_structure` VALUES ('111', '产业发展科', 'office', '18');
INSERT INTO `users_structure` VALUES ('112', '科技管理科', 'office', '18');
INSERT INTO `users_structure` VALUES ('113', '创业服务中心', 'office', '18');
INSERT INTO `users_structure` VALUES ('114', '综合科', 'office', '19');
INSERT INTO `users_structure` VALUES ('115', '财务科', 'office', '19');
INSERT INTO `users_structure` VALUES ('116', '征收科', 'office', '19');
INSERT INTO `users_structure` VALUES ('117', '收储科', 'office', '19');
INSERT INTO `users_structure` VALUES ('118', '综合科', 'office', '20');
INSERT INTO `users_structure` VALUES ('119', '金融服务科', 'office', '20');
INSERT INTO `users_structure` VALUES ('120', '国有资本运营科', 'office', '20');
INSERT INTO `users_structure` VALUES ('121', '综合科', 'office', '21');
INSERT INTO `users_structure` VALUES ('122', '林业科', 'office', '21');
INSERT INTO `users_structure` VALUES ('123', '水务科', 'office', '21');
INSERT INTO `users_structure` VALUES ('124', '农牧科', 'office', '21');
INSERT INTO `users_structure` VALUES ('125', '农村工作办公室', 'office', '21');
INSERT INTO `users_structure` VALUES ('126', '农村经济经营管理科', 'office', '21');
INSERT INTO `users_structure` VALUES ('127', '动物卫生监督所', 'office', '21');
INSERT INTO `users_structure` VALUES ('128', '综合科', 'office', '22');
INSERT INTO `users_structure` VALUES ('129', '人事科', 'office', '22');
INSERT INTO `users_structure` VALUES ('130', '规划计财科', 'office', '22');
INSERT INTO `users_structure` VALUES ('131', '基础教育科', 'office', '22');
INSERT INTO `users_structure` VALUES ('132', '体育运动管理科', 'office', '22');
INSERT INTO `users_structure` VALUES ('133', '督导科', 'office', '22');
INSERT INTO `users_structure` VALUES ('134', '教育研训中心', 'office', '22');
INSERT INTO `users_structure` VALUES ('135', '审计局', 'office', '23');
INSERT INTO `users_structure` VALUES ('136', '综合科', 'office', '24');
INSERT INTO `users_structure` VALUES ('137', '党风政风监督室', 'office', '24');
INSERT INTO `users_structure` VALUES ('138', '纪检监察一室', 'office', '24');
INSERT INTO `users_structure` VALUES ('139', '纪检监察二室', 'office', '24');
INSERT INTO `users_structure` VALUES ('140', '信访审理室', 'office', '24');
INSERT INTO `users_structure` VALUES ('141', '巡查监督室', 'office', '24');
INSERT INTO `users_structure` VALUES ('142', '华夏幸福基业滦河项目管理办公室', 'office', '25');
INSERT INTO `users_structure` VALUES ('143', '扶贫科', 'office', '21');
INSERT INTO `users_structure` VALUES ('144', '啊啊啊啊', 'department', null);
INSERT INTO `users_structure` VALUES ('145', '啊啊啊啊', 'office', '5');
INSERT INTO `users_structure` VALUES ('146', '啊啊啊啊11', 'office', '3');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `birthday` datetime(6) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `create_date` datetime(6) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `users_userprofile_department_id_b060d851_fk_users_structure_id` (`department_id`),
  KEY `users_userprofile_post_id_28886a98_fk_users_post_id` (`post_id`),
  CONSTRAINT `users_userprofile_department_id_b060d851_fk_users_structure_id` FOREIGN KEY (`department_id`) REFERENCES `users_structure` (`id`),
  CONSTRAINT `users_userprofile_post_id_28886a98_fk_users_post_id` FOREIGN KEY (`post_id`) REFERENCES `users_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$36000$iYhRGpDduXYO$kxy6W89EliJtiWyWCDhROZW3tl3c82H2jhZXeATFolM=', '2019-01-11 02:47:04.568879', '1', 'q2180968', '', '', '1', '1', '2019-01-07 08:25:00.000000', '芦伟', null, 'male', '13832410753', 'q2180968@163.com', 'image/default.jpg', '2019-01-07 08:25:00.000000', null, null);

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for users_userprofile_roles
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_roles`;
CREATE TABLE `users_userprofile_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_roles_userprofile_id_role_id_81c255df_uniq` (`userprofile_id`,`role_id`),
  KEY `users_userprofile_roles_role_id_740e5521_fk_rbac_role_id` (`role_id`),
  CONSTRAINT `users_userprofile_ro_userprofile_id_ae49de2a_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_roles_role_id_740e5521_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_roles
-- ----------------------------
INSERT INTO `users_userprofile_roles` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_us_permission_id_393136b6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `url_name` varchar(64) NOT NULL,
  `query` varchar(1000) NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_bookmark_content_type_id_60941679_fk_django_co` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` varchar(32) NOT NULL,
  `message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2019-01-07 08:57:59.645360', '127.0.0.1', '1', '工管委领导', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2019-01-07 08:58:04.619067', '127.0.0.1', '2', '党政办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2019-01-07 08:58:08.924931', '127.0.0.1', '3', '组织宣传部', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2019-01-07 08:58:13.409868', '127.0.0.1', '4', '经济发展局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2019-01-07 08:58:18.526247', '127.0.0.1', '5', '建设局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2019-01-07 08:58:22.581505', '127.0.0.1', '6', '财政局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2019-01-07 08:58:26.660759', '127.0.0.1', '7', '人力资源和社会保障局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2019-01-07 08:58:32.688877', '127.0.0.1', '8', '社会事务管理局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2019-01-07 08:58:36.630698', '127.0.0.1', '9', '行政审批局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2019-01-07 08:58:43.262481', '127.0.0.1', '10', '综合行政执法执行和城市管理局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2019-01-07 08:58:47.421750', '127.0.0.1', '11', '政法委员会', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2019-01-07 08:58:51.431360', '127.0.0.1', '12', '督查考核办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2019-01-07 08:58:55.304165', '127.0.0.1', '13', '经济政策研究中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2019-01-07 08:58:58.530592', '127.0.0.1', '14', '总工会', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2019-01-07 08:59:02.341183', '127.0.0.1', '15', '社区党工委、社区管理办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2019-01-07 08:59:06.071862', '127.0.0.1', '16', '信息化管理与服务中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2019-01-07 08:59:09.041672', '127.0.0.1', '17', '安全生产监督管理局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2019-01-07 08:59:12.134648', '127.0.0.1', '18', '科学技术局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2019-01-07 08:59:15.282133', '127.0.0.1', '19', '土地收储和房屋征收管理办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2019-01-07 08:59:18.698636', '127.0.0.1', '20', '国有资本运营管理中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2019-01-07 08:59:25.906571', '127.0.0.1', '21', '农林水务局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2019-01-07 08:59:29.525278', '127.0.0.1', '22', '教育体育局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2019-01-07 08:59:32.743965', '127.0.0.1', '23', '审计局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2019-01-07 08:59:36.307700', '127.0.0.1', '24', '纪工委、监察局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2019-01-07 08:59:39.807620', '127.0.0.1', '25', '华夏幸福基业滦河项目管理办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2019-01-07 08:59:43.457282', '127.0.0.1', '26', '公安分局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2019-01-07 09:00:44.785049', '127.0.0.1', '27', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2019-01-07 09:00:51.231436', '127.0.0.1', '28', '秘书科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2019-01-07 09:00:58.913042', '127.0.0.1', '29', '行政服务科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2019-01-07 09:01:08.365144', '127.0.0.1', '30', '法制办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2019-01-07 09:01:17.180810', '127.0.0.1', '31', '应急管理办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2019-01-07 09:02:56.299435', '127.0.0.1', '32', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2019-01-07 09:03:02.466640', '127.0.0.1', '33', '干部科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2019-01-07 09:03:10.636781', '127.0.0.1', '34', '基层组织科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('35', '2019-01-07 09:03:17.343406', '127.0.0.1', '35', '两新组织党建科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('36', '2019-01-07 09:03:23.204513', '127.0.0.1', '36', '机关党建指导科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('37', '2019-01-07 09:03:29.132421', '127.0.0.1', '37', '宣传科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('38', '2019-01-07 09:03:36.122916', '127.0.0.1', '38', '传媒与远教中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('39', '2019-01-07 09:03:41.090254', '127.0.0.1', '39', '共青团高新区工委', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('40', '2019-01-07 09:03:47.087135', '127.0.0.1', '40', '妇女联合会', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('41', '2019-01-07 09:04:09.932509', '127.0.0.1', '41', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('42', '2019-01-07 09:04:16.080115', '127.0.0.1', '42', '商务旅游科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('43', '2019-01-07 09:04:24.271933', '127.0.0.1', '43', '招商引资办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('44', '2019-01-07 09:04:30.300070', '127.0.0.1', '44', '项目管理办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('45', '2019-01-07 09:04:36.746240', '127.0.0.1', '45', '企业服务科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('46', '2019-01-07 09:04:48.205477', '127.0.0.1', '45', '企业服务科', 'change', '修改 parent', '12', '1');
INSERT INTO `xadmin_log` VALUES ('47', '2019-01-07 09:04:55.165061', '127.0.0.1', '46', '发展改革科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('48', '2019-01-07 09:05:00.381008', '127.0.0.1', '47', '工业与信息化服务科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('49', '2019-01-07 09:05:09.569434', '127.0.0.1', '48', '统计科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('50', '2019-01-07 09:05:37.147283', '127.0.0.1', '49', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('51', '2019-01-07 09:05:43.667985', '127.0.0.1', '50', '建筑市场监管科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('52', '2019-01-07 09:05:49.710321', '127.0.0.1', '51', '工程技术科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('53', '2019-01-07 09:05:58.798430', '127.0.0.1', '52', '棚户区改造与住房保障管理科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('54', '2019-01-07 09:06:04.830040', '127.0.0.1', '53', '公用事业综合管理科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('55', '2019-01-07 09:06:11.085231', '127.0.0.1', '54', '交通管理科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('56', '2019-01-07 09:06:17.203288', '127.0.0.1', '55', '人民防控与房产物业管理办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('57', '2019-01-07 09:06:37.323940', '127.0.0.1', '56', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('58', '2019-01-07 09:06:45.109579', '127.0.0.1', '57', '监督非税科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('59', '2019-01-07 09:06:50.825232', '127.0.0.1', '58', '经社保障科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('60', '2019-01-07 09:06:56.435613', '127.0.0.1', '59', '预算国库科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('61', '2019-01-07 09:07:01.429446', '127.0.0.1', '60', '采购评审科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('62', '2019-01-07 09:07:06.817846', '127.0.0.1', '61', '集中支付中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('63', '2019-01-07 09:08:32.561066', '127.0.0.1', '62', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('64', '2019-01-07 09:08:38.992592', '127.0.0.1', '63', '人事科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('65', '2019-01-07 09:08:45.108186', '127.0.0.1', '64', '社会保险中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('66', '2019-01-07 09:08:50.787971', '127.0.0.1', '65', '就业服务科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('67', '2019-01-07 09:08:55.908501', '127.0.0.1', '66', '城乡居民社会养老保险中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('68', '2019-01-07 09:09:01.497139', '127.0.0.1', '67', '劳动保障监察大队', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('69', '2019-01-07 09:09:14.532815', '127.0.0.1', '68', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('70', '2019-01-07 09:09:20.002678', '127.0.0.1', '69', '民政科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('71', '2019-01-07 09:09:25.512878', '127.0.0.1', '70', '综合核查中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('72', '2019-01-07 09:09:30.535452', '127.0.0.1', '71', '文化广播新闻出版科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('73', '2019-01-07 09:09:37.352468', '127.0.0.1', '72', '卫生监督疾控科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('74', '2019-01-07 09:10:00.765197', '127.0.0.1', '73', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('75', '2019-01-07 09:10:06.812705', '127.0.0.1', '74', '社会科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('76', '2019-01-07 09:10:13.582656', '127.0.0.1', '75', '农林水科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('77', '2019-01-07 09:10:20.374930', '127.0.0.1', '76', '经济科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('78', '2019-01-07 09:10:26.887159', '127.0.0.1', '77', '建设科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('79', '2019-01-07 09:10:33.468481', '127.0.0.1', '78', '政务服务科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('80', '2019-01-07 09:10:57.971256', '127.0.0.1', '79', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('81', '2019-01-07 09:11:08.151472', '127.0.0.1', '80', '政策法规科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('82', '2019-01-07 09:11:14.663315', '127.0.0.1', '81', '城市管理科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('83', '2019-01-07 09:11:21.203805', '127.0.0.1', '82', '数字城管监督指挥中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('84', '2019-01-07 09:11:26.921346', '127.0.0.1', '83', '园林绿化科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('85', '2019-01-07 09:11:32.576510', '127.0.0.1', '84', '市容环卫管理所', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('86', '2019-01-07 09:11:37.887544', '127.0.0.1', '85', '渣土管理办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('87', '2019-01-07 09:11:44.134263', '127.0.0.1', '86', '城管综合执法大队', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('88', '2019-01-07 09:12:07.642531', '127.0.0.1', '87', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('89', '2019-01-07 09:12:14.259328', '127.0.0.1', '88', '社会治安综合治理办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('90', '2019-01-07 09:12:20.352643', '127.0.0.1', '89', '防范和处理邪教问题办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('91', '2019-01-07 09:12:26.484750', '127.0.0.1', '90', '国家安全领导小组办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('92', '2019-01-07 09:12:33.786208', '127.0.0.1', '91', '司法科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('93', '2019-01-07 09:12:40.772924', '127.0.0.1', '92', '信访科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('94', '2019-01-07 09:12:47.690235', '127.0.0.1', '93', '群众工作中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('95', '2019-01-07 09:13:11.150257', '127.0.0.1', '94', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('96', '2019-01-07 09:13:16.863210', '127.0.0.1', '95', '督查科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('97', '2019-01-07 09:13:23.455139', '127.0.0.1', '96', '考核科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('98', '2019-01-07 09:13:41.758358', '127.0.0.1', '97', '信息综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('99', '2019-01-07 09:13:48.468013', '127.0.0.1', '98', '政策研究科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('100', '2019-01-07 09:14:04.792568', '127.0.0.1', '99', '综合业务科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('101', '2019-01-07 09:14:11.257502', '127.0.0.1', '100', '职工服务中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('102', '2019-01-07 09:14:23.003148', '127.0.0.1', '101', '综合管理科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('103', '2019-01-07 09:14:29.068147', '127.0.0.1', '102', '党务办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('104', '2019-01-07 09:14:37.909677', '127.0.0.1', '103', '街政服务中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('105', '2019-01-07 09:15:08.307829', '127.0.0.1', '104', '信息办', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('106', '2019-01-07 09:15:20.584726', '127.0.0.1', '105', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('107', '2019-01-07 09:15:27.634109', '127.0.0.1', '106', '工矿商贸监督管理科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('108', '2019-01-07 09:15:33.604755', '127.0.0.1', '107', '危险化学品监督管理科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('109', '2019-01-07 09:15:41.348798', '127.0.0.1', '108', '职业健康监督管理科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('110', '2019-01-07 09:15:50.042729', '127.0.0.1', '109', '安全生产执法检查大队', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('111', '2019-01-07 09:16:09.831514', '127.0.0.1', '110', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('112', '2019-01-07 09:16:15.573754', '127.0.0.1', '111', '产业发展科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('113', '2019-01-07 09:16:22.217979', '127.0.0.1', '112', '科技管理科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('114', '2019-01-07 09:16:28.801900', '127.0.0.1', '113', '创业服务中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('115', '2019-01-07 09:16:40.856344', '127.0.0.1', '114', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('116', '2019-01-07 09:16:46.319313', '127.0.0.1', '115', '财务科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('117', '2019-01-07 09:16:52.764557', '127.0.0.1', '116', '征收科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('118', '2019-01-07 09:17:00.176621', '127.0.0.1', '117', '收储科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('119', '2019-01-07 09:17:19.314763', '127.0.0.1', '118', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('120', '2019-01-07 09:17:25.885976', '127.0.0.1', '119', '金融服务科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('121', '2019-01-07 09:17:35.153272', '127.0.0.1', '120', '国有资本运营科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('122', '2019-01-07 09:17:44.020706', '127.0.0.1', '121', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('123', '2019-01-07 09:17:51.536321', '127.0.0.1', '122', '林业科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('124', '2019-01-07 09:18:00.850099', '127.0.0.1', '123', '水务科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('125', '2019-01-07 09:18:08.398381', '127.0.0.1', '124', '农牧科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('126', '2019-01-07 09:18:17.428673', '127.0.0.1', '125', '农村工作办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('127', '2019-01-07 09:18:25.925891', '127.0.0.1', '126', '农村经济经营管理科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('128', '2019-01-07 09:18:34.307941', '127.0.0.1', '127', '动物卫生监督所', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('129', '2019-01-07 09:18:48.821420', '127.0.0.1', '128', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('130', '2019-01-07 09:18:56.452289', '127.0.0.1', '129', '人事科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('131', '2019-01-07 09:19:01.972676', '127.0.0.1', '130', '规划计财科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('132', '2019-01-07 09:19:09.351402', '127.0.0.1', '131', '基础教育科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('133', '2019-01-07 09:19:15.543426', '127.0.0.1', '132', '体育运动管理科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('134', '2019-01-07 09:19:23.635273', '127.0.0.1', '133', '督导科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('135', '2019-01-07 09:19:31.617350', '127.0.0.1', '134', '教育研训中心', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('136', '2019-01-07 09:19:50.350799', '127.0.0.1', '135', '审计局', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('137', '2019-01-07 09:20:06.417248', '127.0.0.1', '136', '综合科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('138', '2019-01-07 09:20:23.313543', '127.0.0.1', '137', '党风政风监督室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('139', '2019-01-07 09:20:30.723099', '127.0.0.1', '138', '纪检监察一室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('140', '2019-01-07 09:20:43.887615', '127.0.0.1', '139', '纪检监察二室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('141', '2019-01-07 09:20:51.966835', '127.0.0.1', '140', '信访审理室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('142', '2019-01-07 09:20:58.697376', '127.0.0.1', '141', '巡查监督室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('143', '2019-01-07 09:21:29.881659', '127.0.0.1', '142', '华夏幸福基业滦河项目管理办公室', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('144', '2019-01-07 09:21:46.076107', '127.0.0.1', '143', '扶贫科', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('145', '2019-01-07 09:25:53.674958', '127.0.0.1', '1', '系统', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('146', '2019-01-07 09:26:11.759711', '127.0.0.1', '2', '行政', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('147', '2019-01-07 09:26:38.036694', '127.0.0.1', '3', '流程', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('148', '2019-01-07 09:26:47.032992', '127.0.0.1', '1', '系统', 'change', '修改 is_top', '13', '1');
INSERT INTO `xadmin_log` VALUES ('149', '2019-01-07 09:27:04.249085', '127.0.0.1', '4', '我的工作台', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('150', '2019-01-07 09:29:19.187607', '127.0.0.1', null, '', 'delete', '批量删除 1 个 菜单', null, '1');
INSERT INTO `xadmin_log` VALUES ('151', '2019-01-08 01:10:33.064390', '127.0.0.1', '5', '基础设置-系统', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('152', '2019-01-08 01:10:55.045271', '127.0.0.1', '6', '权限管理-系统', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('153', '2019-01-08 07:00:49.860799', '127.0.0.1', '7', '组织架构-基础设置-系统', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('154', '2019-01-08 07:01:16.848329', '127.0.0.1', '8', '用户管理-基础设置-系统', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('155', '2019-01-08 07:01:31.602524', '127.0.0.1', '9', '菜单管理-权限管理-系统', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('156', '2019-01-08 07:01:50.324995', '127.0.0.1', '10', '角色管理-权限管理-系统', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('157', '2019-01-08 07:52:16.441389', '127.0.0.1', '1', '管理员', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('158', '2019-01-08 07:52:26.859607', '127.0.0.1', '1', '管理员', 'change', '修改 permissions', '14', '1');
INSERT INTO `xadmin_log` VALUES ('159', '2019-01-08 07:52:31.274379', '127.0.0.1', '1', '管理员', 'change', '修改 permissions', '14', '1');
INSERT INTO `xadmin_log` VALUES ('160', '2019-01-08 08:17:00.407900', '127.0.0.1', '1', '芦伟', 'change', '修改 last_login，user_name，mobile 和 roles', '10', '1');
INSERT INTO `xadmin_log` VALUES ('161', '2019-01-08 08:18:28.679499', '127.0.0.1', '1', '芦伟', 'change', '没有字段被修改。', '10', '1');
INSERT INTO `xadmin_log` VALUES ('162', '2019-01-09 06:56:39.228431', '127.0.0.1', '11', '个人中心-我的工作台', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('163', '2019-01-09 06:57:01.576687', '127.0.0.1', '12', '工单管理-我的工作台', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('164', '2019-01-09 07:00:22.362902', '127.0.0.1', '11', '个人中心-我的工作台', 'change', '修改 url', '13', '1');
INSERT INTO `xadmin_log` VALUES ('165', '2019-01-09 07:06:47.608038', '127.0.0.1', '1', '管理员', 'change', '修改 permissions', '14', '1');
INSERT INTO `xadmin_log` VALUES ('166', '2019-01-11 02:55:20.324221', '127.0.0.1', '13', '组织架构-:增加-组织架构-基础设置-系统', 'create', '已添加。', '13', '1');
INSERT INTO `xadmin_log` VALUES ('167', '2019-01-11 02:55:39.080139', '127.0.0.1', '13', '组织架构-:增加-组织架构-基础设置-系统', 'change', '修改 code', '13', '1');

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES ('1', 'dashboard:home:pos', '', '1');

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) NOT NULL,
  `widget_type` varchar(50) NOT NULL,
  `value` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_userwidget
-- ----------------------------
