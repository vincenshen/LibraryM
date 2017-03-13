/*
Navicat MySQL Data Transfer

Source Server         : Django
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : library

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-03-13 13:45:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
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
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

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
INSERT INTO `auth_permission` VALUES ('21', 'Can add 用户信息', '6', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('22', 'Can change 用户信息', '6', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete 用户信息', '6', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('24', 'Can view 用户信息', '6', 'view_userprofile');
INSERT INTO `auth_permission` VALUES ('25', 'Can add Bookmark', '7', 'add_bookmark');
INSERT INTO `auth_permission` VALUES ('26', 'Can change Bookmark', '7', 'change_bookmark');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete Bookmark', '7', 'delete_bookmark');
INSERT INTO `auth_permission` VALUES ('28', 'Can add User Setting', '8', 'add_usersettings');
INSERT INTO `auth_permission` VALUES ('29', 'Can change User Setting', '8', 'change_usersettings');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete User Setting', '8', 'delete_usersettings');
INSERT INTO `auth_permission` VALUES ('31', 'Can add User Widget', '9', 'add_userwidget');
INSERT INTO `auth_permission` VALUES ('32', 'Can change User Widget', '9', 'change_userwidget');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete User Widget', '9', 'delete_userwidget');
INSERT INTO `auth_permission` VALUES ('34', 'Can add log entry', '10', 'add_log');
INSERT INTO `auth_permission` VALUES ('35', 'Can change log entry', '10', 'change_log');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete log entry', '10', 'delete_log');
INSERT INTO `auth_permission` VALUES ('37', 'Can view Bookmark', '7', 'view_bookmark');
INSERT INTO `auth_permission` VALUES ('38', 'Can view log entry', '10', 'view_log');
INSERT INTO `auth_permission` VALUES ('39', 'Can view User Setting', '8', 'view_usersettings');
INSERT INTO `auth_permission` VALUES ('40', 'Can view User Widget', '9', 'view_userwidget');
INSERT INTO `auth_permission` VALUES ('41', 'Can add 类别', '11', 'add_bookdict');
INSERT INTO `auth_permission` VALUES ('42', 'Can change 类别', '11', 'change_bookdict');
INSERT INTO `auth_permission` VALUES ('43', 'Can delete 类别', '11', 'delete_bookdict');
INSERT INTO `auth_permission` VALUES ('44', 'Can add 图书', '12', 'add_book');
INSERT INTO `auth_permission` VALUES ('45', 'Can change 图书', '12', 'change_book');
INSERT INTO `auth_permission` VALUES ('46', 'Can delete 图书', '12', 'delete_book');
INSERT INTO `auth_permission` VALUES ('48', 'Can view 图书', '12', 'view_book');
INSERT INTO `auth_permission` VALUES ('49', 'Can view 类别', '11', 'view_bookdict');
INSERT INTO `auth_permission` VALUES ('50', 'Can add captcha store', '13', 'add_captchastore');
INSERT INTO `auth_permission` VALUES ('51', 'Can change captcha store', '13', 'change_captchastore');
INSERT INTO `auth_permission` VALUES ('52', 'Can delete captcha store', '13', 'delete_captchastore');
INSERT INTO `auth_permission` VALUES ('53', 'Can view captcha store', '13', 'view_captchastore');
INSERT INTO `auth_permission` VALUES ('54', 'Can add 借阅清单', '14', 'add_borrowlist');
INSERT INTO `auth_permission` VALUES ('55', 'Can change 借阅清单', '14', 'change_borrowlist');
INSERT INTO `auth_permission` VALUES ('56', 'Can delete 借阅清单', '14', 'delete_borrowlist');
INSERT INTO `auth_permission` VALUES ('57', 'Can view 借阅清单', '14', 'view_borrowlist');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` bigint(20) DEFAULT NULL,
  `password` longtext,
  `last_login` date DEFAULT NULL,
  `is_superuser` bigint(20) DEFAULT NULL,
  `username` varchar(90) DEFAULT NULL,
  `first_name` varchar(90) DEFAULT NULL,
  `last_name` varchar(90) DEFAULT NULL,
  `email` longtext,
  `is_staff` bigint(20) DEFAULT NULL,
  `is_active` bigint(20) DEFAULT NULL,
  `date_joined` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) DEFAULT NULL,
  `user_idd` bigint(20) DEFAULT NULL,
  `group_idin` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) DEFAULT NULL,
  `user_idd` bigint(20) DEFAULT NULL,
  `permission` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `books_book`
-- ----------------------------
DROP TABLE IF EXISTS `books_book`;
CREATE TABLE `books_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `price` double NOT NULL,
  `author` varchar(128) NOT NULL,
  `publish_date` date NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `desc` longtext,
  PRIMARY KEY (`id`),
  KEY `books_book_category_id_406d8649_fk_books_bookdict_id` (`category_id`),
  CONSTRAINT `books_book_category_id_406d8649_fk_books_bookdict_id` FOREIGN KEY (`category_id`) REFERENCES `books_bookdict` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books_book
-- ----------------------------
INSERT INTO `books_book` VALUES ('1', '百年孤独', '5.2', 'alex', '2017-03-10', 'books/2017/03/zip.png', '3', '暂无介绍');
INSERT INTO `books_book` VALUES ('2', '程序设计', '6.8', 'vincen', '2017-03-10', 'books/2017/03/xls.png', '7', '暂无介绍');
INSERT INTO `books_book` VALUES ('3', '线性代数', '100', '惠淑荣', '2017-03-12', 'books/2017/03/avi_MTMg5Oq.png', '1', '线性代数是数学的一个分支，它的研究对象是向量，向量空间（或称线性空间），线性变换和有限维的线性方程组。向量空间是现代数学的一个重要课题；因而，线性代数被广泛地应用于抽象代数和泛函分析中；通过解析几何，线性代数得以被具体表示。线性代数的理论已被泛化为算子理论。由于科学研究中的非线性模型通常可以被近似为线性模型，使得线性代数被广泛地应用于自然科学和社会科学中。');
INSERT INTO `books_book` VALUES ('4', 'C语言程序设计', '100', '马睿', '2017-03-12', '', '3', '暂无介绍');
INSERT INTO `books_book` VALUES ('5', '离散数学', '11', '李俊锋', '2017-03-12', '', '3', '暂无介绍');
INSERT INTO `books_book` VALUES ('6', '概率论与数理统计', '111', '杨洪礼、胡运红', '2017-03-12', '', '2', '暂无介绍');
INSERT INTO `books_book` VALUES ('7', '数字电子技术基础', '21', '白彦霞', '2017-03-12', '', '3', '暂无介绍');
INSERT INTO `books_book` VALUES ('8', '数据结构', '111', '马睿、孙丽云', '2017-03-12', '', '3', '暂无介绍');
INSERT INTO `books_book` VALUES ('9', '电路原理', '213', '秦曾煌', '2017-03-12', '', '2', '暂无介绍');
INSERT INTO `books_book` VALUES ('10', '计算机网络', '111', '张玉英', '2017-03-12', '', '2', '暂无介绍');
INSERT INTO `books_book` VALUES ('11', '数据库原理与应用', '22', '何玉洁', '2017-03-12', '', '3', '暂无介绍');
INSERT INTO `books_book` VALUES ('12', '计算机组成原理', '33', '张代远', '2017-03-12', '', '6', '暂无介绍');
INSERT INTO `books_book` VALUES ('13', '操作系统', '0', '孟庆昌', '2017-03-12', '', '3', '暂无介绍');
INSERT INTO `books_book` VALUES ('14', '软件工程', '22', '张海藩', '2017-03-12', '', '3', '暂无介绍');
INSERT INTO `books_book` VALUES ('15', '编译原理', '33', '刘铭', '2017-03-12', '', '3', '暂无介绍');
INSERT INTO `books_book` VALUES ('16', 'Java程序设计', '111', '刘万军', '2017-03-12', '', '3', '暂无介绍');
INSERT INTO `books_book` VALUES ('17', '网络规划与设计', '43', '陈向阳', '2017-03-12', '', '3', '暂无介绍');
INSERT INTO `books_book` VALUES ('18', 'Linux系统及应用', '0', '董良', '2017-03-12', '', '3', '暂无介绍');

-- ----------------------------
-- Table structure for `books_bookdict`
-- ----------------------------
DROP TABLE IF EXISTS `books_bookdict`;
CREATE TABLE `books_bookdict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books_bookdict
-- ----------------------------
INSERT INTO `books_bookdict` VALUES ('1', 'IT');
INSERT INTO `books_bookdict` VALUES ('2', '科技');
INSERT INTO `books_bookdict` VALUES ('3', '教育');
INSERT INTO `books_bookdict` VALUES ('4', '历史');
INSERT INTO `books_bookdict` VALUES ('5', '美术');
INSERT INTO `books_bookdict` VALUES ('6', '财经');
INSERT INTO `books_bookdict` VALUES ('7', '军事');

-- ----------------------------
-- Table structure for `books_borrowlist`
-- ----------------------------
DROP TABLE IF EXISTS `books_borrowlist`;
CREATE TABLE `books_borrowlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `borrow_date` date NOT NULL,
  `book_name` varchar(128) NOT NULL,
  `borrow_user` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of books_borrowlist
-- ----------------------------
INSERT INTO `books_borrowlist` VALUES ('5', '2017-03-13', 'C语言程序设计', 'ericli');
INSERT INTO `books_borrowlist` VALUES ('6', '2017-03-13', 'Java程序设计', 'ericli');
INSERT INTO `books_borrowlist` VALUES ('7', '2017-03-13', 'Linux系统及应用', 'ericli');

-- ----------------------------
-- Table structure for `captcha_captchastore`
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) NOT NULL,
  `response` varchar(32) NOT NULL,
  `hashkey` varchar(40) NOT NULL,
  `expiration` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hashkey` (`hashkey`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES ('118', 'GMJI', 'gmji', '5c410799917344d44936f8b80a08c5117b98cc6e', '2017-03-13 00:40:51.471000');
INSERT INTO `captcha_captchastore` VALUES ('121', 'YUFG', 'yufg', '693d694b52daadbb7fd2390607eb731d8345f45c', '2017-03-13 00:41:21.384000');
INSERT INTO `captcha_captchastore` VALUES ('122', 'KSDR', 'ksdr', 'bc7188129f6b467a383a2463fccd2fda0fe2a7f8', '2017-03-13 00:41:32.059000');
INSERT INTO `captcha_captchastore` VALUES ('126', 'YPXT', 'ypxt', 'b1ebeeb6f2fe9a6353aa17666aa1b66be958d418', '2017-03-13 00:43:56.633000');
INSERT INTO `captcha_captchastore` VALUES ('127', 'LBGX', 'lbgx', '64ffde4c7879c3ed477e3d674c82bb1be58b8d86', '2017-03-13 13:41:21.740000');
INSERT INTO `captcha_captchastore` VALUES ('128', 'NEDB', 'nedb', 'ef647bc8ba7cf3179f5d50c957fa1cdd38a63073', '2017-03-13 13:41:35.341000');

-- ----------------------------
-- Table structure for `django_admin_log`
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
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('12', 'books', 'book');
INSERT INTO `django_content_type` VALUES ('11', 'books', 'bookdict');
INSERT INTO `django_content_type` VALUES ('14', 'books', 'borrowlist');
INSERT INTO `django_content_type` VALUES ('13', 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES ('4', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('5', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('6', 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES ('7', 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES ('10', 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES ('8', 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES ('9', 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-03-10 16:26:29.209000');
INSERT INTO `django_migrations` VALUES ('2', 'contenttypes', '0002_remove_content_type_name', '2017-03-10 16:26:29.350000');
INSERT INTO `django_migrations` VALUES ('3', 'auth', '0001_initial', '2017-03-10 16:26:29.869000');
INSERT INTO `django_migrations` VALUES ('4', 'auth', '0002_alter_permission_name_max_length', '2017-03-10 16:26:29.973000');
INSERT INTO `django_migrations` VALUES ('5', 'auth', '0003_alter_user_email_max_length', '2017-03-10 16:26:29.988000');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0004_alter_user_username_opts', '2017-03-10 16:26:30.003000');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0005_alter_user_last_login_null', '2017-03-10 16:26:30.017000');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0006_require_contenttypes_0002', '2017-03-10 16:26:30.023000');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0007_alter_validators_add_error_messages', '2017-03-10 16:26:30.040000');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0008_alter_user_username_max_length', '2017-03-10 16:26:30.053000');
INSERT INTO `django_migrations` VALUES ('11', 'users', '0001_initial', '2017-03-10 16:26:30.828000');
INSERT INTO `django_migrations` VALUES ('12', 'admin', '0001_initial', '2017-03-10 16:26:31.128000');
INSERT INTO `django_migrations` VALUES ('13', 'admin', '0002_logentry_remove_auto_add', '2017-03-10 16:26:31.148000');
INSERT INTO `django_migrations` VALUES ('14', 'books', '0001_initial', '2017-03-10 16:26:31.451000');
INSERT INTO `django_migrations` VALUES ('15', 'sessions', '0001_initial', '2017-03-10 16:26:31.566000');
INSERT INTO `django_migrations` VALUES ('16', 'xadmin', '0001_initial', '2017-03-10 16:26:32.595000');
INSERT INTO `django_migrations` VALUES ('17', 'books', '0002_auto_20170310_1725', '2017-03-10 17:25:30.066000');
INSERT INTO `django_migrations` VALUES ('18', 'books', '0003_auto_20170310_1729', '2017-03-10 17:29:38.641000');
INSERT INTO `django_migrations` VALUES ('19', 'captcha', '0001_initial', '2017-03-11 00:31:27.191000');
INSERT INTO `django_migrations` VALUES ('20', 'books', '0004_book_desc', '2017-03-12 11:04:22.405000');
INSERT INTO `django_migrations` VALUES ('21', 'users', '0002_remove_userprofile_permission', '2017-03-12 14:27:35.549000');
INSERT INTO `django_migrations` VALUES ('22', 'books', '0005_borrowlist', '2017-03-12 23:12:28.078000');
INSERT INTO `django_migrations` VALUES ('23', 'books', '0006_auto_20170313_0006', '2017-03-13 00:06:59.423000');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('9xv2qmtfigtbrs1141zxtcjslcvhb71t', 'YzA2N2MxNTRhOGFkYTZkYWVjMDU5ZjgxMzkyNThjYTNhYWQ1MjgxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siYm9va3MiLCJib29rIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiJkZDRkYmZjODAxYmI4ZDJhNTc3NTFmNTViOWUxODcxYTA1ZTM5MWYyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2017-03-26 11:06:14.847000');
INSERT INTO `django_session` VALUES ('n89v2r83niw31bfu1xetodx5zi8dgcl4', 'MWVhZTBhMDVkNjc4ZmI3MTA2MTcyMGY2YjlkODE0NWUxMmQ0MGI3Nzp7IkxJU1RfUVVFUlkiOltbImJvb2tzIiwiYm9vayJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiZGQ0ZGJmYzgwMWJiOGQyYTU3NzUxZjU1YjllMTg3MWEwNWUzOTFmMiIsIl9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2017-03-26 10:32:08.257000');
INSERT INTO `django_session` VALUES ('roti0h2yyb7w6tj5uj2vnq41qaotl3lh', 'YzA2N2MxNTRhOGFkYTZkYWVjMDU5ZjgxMzkyNThjYTNhYWQ1MjgxNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiTElTVF9RVUVSWSI6W1siYm9va3MiLCJib29rIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiJkZDRkYmZjODAxYmI4ZDJhNTc3NTFmNTViOWUxODcxYTA1ZTM5MWYyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQifQ==', '2017-03-26 10:10:37.507000');

-- ----------------------------
-- Table structure for `users_userprofile`
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
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nick_name` varchar(20) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(6) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES ('1', 'pbkdf2_sha256$30000$U4m5yMtmE1gj$gHqt+k7Kij3V2CnwAzjGEdeBwAmEwXwdmix3hLyuiNo=', '2017-03-13 00:42:30.235000', '1', 'libadmin', '', '', 'libadmin@qq.com', '1', '1', '2017-03-10 16:28:34.107000', 'admin', null, 'female', 'image/default.png');
INSERT INTO `users_userprofile` VALUES ('2', 'pbkdf2_sha256$30000$AxTwT4Sdf7kS$hHzh1utw5p+eVa3M7ji4iFJw97w5wb2i37qA7dItRtA=', null, '0', 'vincen', '', '', 'vincen@qq.com', '0', '1', '2017-03-12 14:13:08.352000', 'vincen', null, 'female', 'image/default.png');
INSERT INTO `users_userprofile` VALUES ('4', 'pbkdf2_sha256$30000$yapl49HdF4uv$s/pCkMhj52jynkcznMiFCq7W1zsviqFNiODR7G0Zh3s=', null, '0', 'alexler', '', '', 'alex@qq.com', '0', '1', '2017-03-12 14:20:19.884000', 'alexler', null, 'female', 'image/default.png');
INSERT INTO `users_userprofile` VALUES ('5', 'pbkdf2_sha256$30000$J8kRLeNQKlpv$MLOYatZH8VPa8mRP6ukGFrd1035mxHssoCCS5xaLg4Y=', '2017-03-13 00:38:44.312000', '0', 'ericli', '', '', 'eircli@qq.com', '0', '1', '2017-03-12 14:28:48.926000', '艾利克斯', null, 'female', 'image/default.png');

-- ----------------------------
-- Table structure for `users_userprofile_groups`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_groups_userprofile_id_823cf2fc_uniq` (`userprofile_id`,`group_id`),
  KEY `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` (`group_id`),
  CONSTRAINT `users_userprofil_userprofile_id_a4496a80_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `users_userprofile_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_userprofile_user_permissions_userprofile_id_d0215190_uniq` (`userprofile_id`,`permission_id`),
  KEY `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `users_userprofil_userprofile_id_34544737_fk_users_userprofile_id` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`),
  CONSTRAINT `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_bookmark`
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
  KEY `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` (`content_type_id`),
  KEY `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` (`user_id`),
  CONSTRAINT `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_bookmark
-- ----------------------------

-- ----------------------------
-- Table structure for `xadmin_log`
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES ('1', '2017-03-10 16:29:07.547000', '127.0.0.1', '1', 'IT', 'create', 'Added.', '11', '1');
INSERT INTO `xadmin_log` VALUES ('2', '2017-03-10 16:29:13.077000', '127.0.0.1', '2', '科技', 'create', 'Added.', '11', '1');
INSERT INTO `xadmin_log` VALUES ('3', '2017-03-10 16:29:17.428000', '127.0.0.1', '3', '教育', 'create', 'Added.', '11', '1');
INSERT INTO `xadmin_log` VALUES ('4', '2017-03-10 16:29:22.472000', '127.0.0.1', '4', '历史', 'create', 'Added.', '11', '1');
INSERT INTO `xadmin_log` VALUES ('5', '2017-03-10 16:29:26.537000', '127.0.0.1', '5', '美术', 'create', 'Added.', '11', '1');
INSERT INTO `xadmin_log` VALUES ('6', '2017-03-10 16:29:32.509000', '127.0.0.1', '6', '财经', 'create', 'Added.', '11', '1');
INSERT INTO `xadmin_log` VALUES ('7', '2017-03-10 16:29:37.048000', '127.0.0.1', '7', '军事', 'create', 'Added.', '11', '1');
INSERT INTO `xadmin_log` VALUES ('8', '2017-03-10 17:01:04.784000', '127.0.0.1', '1', '百年孤独', 'create', 'Added.', '12', '1');
INSERT INTO `xadmin_log` VALUES ('9', '2017-03-10 17:26:25.519000', '127.0.0.1', '1', '百年孤独', 'change', '修改 price 和 image', '12', '1');
INSERT INTO `xadmin_log` VALUES ('10', '2017-03-10 17:27:17.188000', '127.0.0.1', '2', '程序设计', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('11', '2017-03-10 17:29:53.018000', '127.0.0.1', '2', '程序设计', 'change', '修改 category', '12', '1');
INSERT INTO `xadmin_log` VALUES ('12', '2017-03-10 17:30:00.444000', '127.0.0.1', '1', '百年孤独', 'change', '没有字段被修改。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('13', '2017-03-10 17:30:04.379000', '127.0.0.1', '2', '程序设计', 'change', '没有字段被修改。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('14', '2017-03-10 17:30:08.016000', '127.0.0.1', '1', '百年孤独', 'change', '没有字段被修改。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('15', '2017-03-12 10:06:12.332000', '127.0.0.1', '3', '线性代数', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('16', '2017-03-12 10:06:37.775000', '127.0.0.1', '4', 'C语言程序设计', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('17', '2017-03-12 10:06:57.539000', '127.0.0.1', '5', '离散数学', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('18', '2017-03-12 10:07:14.781000', '127.0.0.1', '6', '概率论与数理统计', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('19', '2017-03-12 10:07:30.669000', '127.0.0.1', '7', '数字电子技术基础', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('20', '2017-03-12 10:07:45.658000', '127.0.0.1', '8', '数据结构', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('21', '2017-03-12 10:08:08.890000', '127.0.0.1', '9', '电路原理', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('22', '2017-03-12 10:08:21.881000', '127.0.0.1', '10', '计算机网络', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('23', '2017-03-12 10:08:37.345000', '127.0.0.1', '11', '数据库原理与应用', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('24', '2017-03-12 10:08:50.668000', '127.0.0.1', '12', '计算机组成原理', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('25', '2017-03-12 10:09:15.517000', '127.0.0.1', '13', '操作系统', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('26', '2017-03-12 10:09:32.548000', '127.0.0.1', '14', '软件工程', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('27', '2017-03-12 10:09:47.295000', '127.0.0.1', '15', '编译原理', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('28', '2017-03-12 10:10:02.797000', '127.0.0.1', '16', 'Java程序设计', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('29', '2017-03-12 10:10:18.257000', '127.0.0.1', '17', '网络规划与设计', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('30', '2017-03-12 10:10:33.528000', '127.0.0.1', '18', 'Linux系统及应用', 'create', '已添加。', '12', '1');
INSERT INTO `xadmin_log` VALUES ('31', '2017-03-12 11:06:14.598000', '127.0.0.1', '3', '线性代数', 'change', '修改 desc', '12', '1');
INSERT INTO `xadmin_log` VALUES ('32', '2017-03-12 23:23:50.575000', '127.0.0.1', '3', 'BorrowList object', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('33', '2017-03-12 23:25:45.300000', '127.0.0.1', '4', '借阅成功', 'create', '已添加。', '14', '1');
INSERT INTO `xadmin_log` VALUES ('34', '2017-03-13 00:08:59.283000', '127.0.0.1', null, '', 'delete', '批量删除 2 个 借阅清单', null, '1');

-- ----------------------------
-- Table structure for `xadmin_usersettings`
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
-- Table structure for `xadmin_userwidget`
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
