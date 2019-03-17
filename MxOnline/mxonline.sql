/*
 Navicat Premium Data Transfer

 Source Server         : 192
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : 127.0.0.1:3306
 Source Schema         : mxonline

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 10/03/2019 20:08:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (1, '编辑部门');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (1, 1, 37);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 38);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 72);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 75);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 28);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 29);

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 125 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_e8701ad4`(`user_id`) USING BTREE,
  INDEX `auth_user_groups_0e939a4f`(`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permissions_e8701ad4`(`user_id`) USING BTREE,
  INDEX `auth_user_user_permissions_8373b171`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expiration` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 225 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (224, 'TCKN', 'tckn', '2dd1244f8efca32bd489f1eeba39b893dff1a142', '2016-11-13 12:16:48');
INSERT INTO `captcha_captchastore` VALUES (223, 'MGNX', 'mgnx', 'bf9b28c64c0940805d013f2a6b38fba914a71f6f', '2016-11-13 12:16:43');

-- ----------------------------
-- Table structure for courses_course
-- ----------------------------
DROP TABLE IF EXISTS `courses_course`;
CREATE TABLE `courses_course`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `degree` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `add_time` datetime(0) NOT NULL,
  `course_org_id` int(11) NULL DEFAULT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_id` int(11) NULL DEFAULT NULL,
  `teacher_tell` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `youneed_know` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_course_11456c5a`(`course_org_id`) USING BTREE,
  INDEX `courses_course_d9614d40`(`teacher_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_course
-- ----------------------------
INSERT INTO `courses_course` VALUES (1, 'django入门', 'django入门', '<p><br/> </p><h1 label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\" class=\"ue_t\">[此处键入文章标题]</h1><p><img src=\"http://img.baidu.com/hi/youa/y_0034.gif\" style=\"width:300px;height:200px;float:left;\" width=\"300\" vspace=\"0\" hspace=\"0\" height=\"200\" border=\"0\"/>图文混排方法</p><p>1. 图片居左，文字围绕图片排版</p><p>方法：在文字前面插入图片，设置居左对齐，然后即可在右边输入多行文本</p><p><br/> </p><p>2. 图片居右，文字围绕图片排版</p><p>方法：在文字前面插入图片，设置居右对齐，然后即可在左边输入多行文本</p><p><br/> </p><p>3. 图片居中环绕排版</p><p>方法：亲，这个真心没有办法。。。</p><p><br/> </p><p><br/> </p><p><img src=\"http://img.baidu.com/hi/youa/y_0040.gif\" style=\"width:300px;height:300px;float:right;\" width=\"300\" vspace=\"0\" hspace=\"0\" height=\"300\" border=\"0\"/> </p><p>还有没有什么其他的环绕方式呢？这里是居右环绕</p><p><br/> </p><p>欢迎大家多多尝试，为UEditor提供更多高质量模板！</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p>占位</p><p><br/> </p><p><br/> </p><p><br/> </p>', 'cj', 0, 3, 0, 'courses/2016/11/mysql.jpg', 6, '2016-10-25 23:40:00', 1, '后端开发', 'django开发', NULL, 'django开发', 'django开发', 0);
INSERT INTO `courses_course` VALUES (2, 'java入门', 'java入门', 'java入门java入门java入门java入门java入门\r\n\r\njava入门java入门\r\njava入门', 'zj', 20, 0, 0, 'courses/2016/11/57035ff200014b8a06000338-240-135.jpg', 0, '2016-11-05 16:04:00', 2, '后端开发', '', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (3, 'python入门', 'python入门', 'python入门python入门python入门python入门python入门', 'zj', 0, 0, 0, 'courses/2016/11/540e57300001d6d906000338-240-135.jpg', 0, '2016-11-05 16:07:00', 4, '后端开发', '', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (4, 'java入门2', 'java入门2', 'java入门2java入门2java入门2\r\njava入门2\r\njava入门2\r\njava入门2\r\njava入门2', 'gj', 0, 0, 0, 'courses/2016/11/57035ff200014b8a06000338-240-135_dHfj8Nq.jpg', 2, '2016-11-05 16:08:00', 5, '后端开发', '', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (5, 'java入门3', 'java入门3', 'java入门3\r\njava入门3\r\njava入门3\r\njava入门3\r\njava入门3', 'cj', 0, 1, 0, 'courses/2016/11/57035ff200014b8a06000338-240-135_0nFiBSI.jpg', 1, '2016-11-05 16:08:00', 6, '后端开发', '', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (6, 'python入门2', 'python入门2', 'python入门2\r\npython入门2\r\npython入门2\r\npython入门2\r\npython入门2\r\npython入门2', 'zj', 0, 0, 0, 'courses/2016/11/540e57300001d6d906000338-240-135_MSIqfvw.jpg', 0, '2016-11-05 16:08:00', 10, '后端开发', '', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (7, 'django与vuejs实战项目', 'python入门2', '<p>&nbsp; &nbsp; python入门2\r\npython入门2\r\npython入门2\r\npython入门2\r\npython入门2</p>', 'zj', 0, 2, 0, 'courses/2016/11/540e57300001d6d906000338-240-135_Z3HIQ2t.jpg', 7, '2016-11-05 16:09:00', 2, '后端开发', '前端开发', NULL, 'go语言', '前端开发', 1);
INSERT INTO `courses_course` VALUES (8, 'django实战项目', 'django实战项目', 'django实战项目\r\ndjango实战项目\r\ndjango实战项目\r\ndjango实战项目\r\ndjango实战项目\r\ndjango实战项目', 'zj', 0, 0, 0, 'courses/2016/11/540e57300001d6d906000338-240-135_mvvGYHL.jpg', 1, '2016-11-05 16:09:00', 1, '后端开发', 'python', NULL, '', '', 0);
INSERT INTO `courses_course` VALUES (9, 'go语言入门', 'django实战项目', 'django实战项目\r\ndjango实战项目\r\ndjango实战项目\r\ndjango实战项目', 'zj', 0, 1, 0, 'courses/2016/11/540e57300001d6d906000338-240-135_wH52IED.jpg', 13, '2016-11-05 16:10:00', 2, '后端开发', 'go语言', NULL, 'go语言', 'go语言', 1);
INSERT INTO `courses_course` VALUES (10, 'django与vuejs实战项目2', 'django与vuejs实战项目', '<p>&nbsp; &nbsp; django与vuejs实战项目</p><p><img src=\"/media/courses/ueditor/aobama_20161113225044_773.png\" title=\"\" alt=\"aobama.png\"/> </p><table><tbody><tr class=\"firstRow\"><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">课程</td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">课时<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">难度<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">时长<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">学习人数<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">点击数<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">点击数</td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">点击数</td></tr><tr><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">django开发<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">20<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">中级<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">30<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">100000<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">100000<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">100000<br/> </td><td style=\"word-break: break-all;\" width=\"53\" valign=\"top\">100000<br/> </td></tr><tr><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td></tr><tr><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td></tr><tr><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td></tr><tr><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td><td width=\"53\" valign=\"top\"><br/> </td></tr></tbody></table><p><br/> </p><p><img src=\"http://img.baidu.com/hi/jx2/j_0025.gif\"/> </p><p><br/> </p><h1 class=\"ue_t\" label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\"><span style=\"color:#c0504d;\">[键入文档标题]</span></h1><p style=\"text-align:center;\"><strong class=\"ue_t\">[键入文档副标题]</strong></p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 1]</span></h3><p class=\"ue_t\" style=\"text-indent:2em;\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\" style=\"text-indent:2em;\"><img src=\"http://127.0.0.1:8000/media/courses/ueditor/57aa86a0000145c512000460_20161210234050_865.jpg\" title=\"\" alt=\"57aa86a0000145c512000460.jpg\"/> </p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 2]</span></h3><p><img src=\"http://api.map.baidu.com/staticimage?center=116.410899,39.863624&zoom=11&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/> </p><p class=\"ue_t\" style=\"text-indent:2em;\">在“开始”选项卡上，通过从快速样式库中为所选文本选择一种外观，您可以方便地更改文档中所选文本的格式。 您还可以使用“开始”选项卡上的其他控件来直接设置文本格式。大多数控件都允许您选择是使用当前主题外观，还是使用某种直接指定的格式。</p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 3]</span></h3><p>2016-12-10</p><p class=\"ue_t\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p><br/> </p>', 'gj', 0, 10, 0, 'courses/2016/11/540e57300001d6d906000338-240-135_n0L8vbw.jpg', 102, '2016-11-05 16:10:00', 2, '后端开发', 'python', 1, 'django的进阶开发', 'python基础你需要有', 0);
INSERT INTO `courses_course` VALUES (11, '前端开发', '前端开发', '前端开发', 'cj', 0, 0, 0, 'courses/2016/11/default_middile_1.png', 3, '2016-11-09 00:01:00', 1, '后端开发', '前端开发', 2, '前端开发', '前端开发', 0);
INSERT INTO `courses_course` VALUES (12, 'scrapy教程', 'scrapy教程scrapy教程scrapy教程scrapy教程scrapy教程scrapy教程', '<h1 class=\"ue_t\" label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\"><span style=\"color:#c0504d;\">[键入文档标题]</span></h1><p style=\"text-align:center;\"><strong class=\"ue_t\">[键入文档副标题]</strong></p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 1]</span></h3><p class=\"ue_t\" style=\"text-indent:2em;\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\" style=\"text-indent:2em;\"><img src=\"/media/courses/ueditor/57aa86a0000145c512000460_20161210234050_865.jpg\" title=\"\" alt=\"57aa86a0000145c512000460.jpg\"/> </p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 2]</span></h3><p><img src=\"http://api.map.baidu.com/staticimage?center=116.410899,39.863624&zoom=11&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/> </p><p class=\"ue_t\" style=\"text-indent:2em;\">在“开始”选项卡上，通过从快速样式库中为所选文本选择一种外观，您可以方便地更改文档中所选文本的格式。 您还可以使用“开始”选项卡上的其他控件来直接设置文本格式。大多数控件都允许您选择是使用当前主题外观，还是使用某种直接指定的格式。</p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 3]</span></h3><p>2016-12-10</p><p class=\"ue_t\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\"><br/> </p><p><br/> </p>', 'zj', 55, 0, 1, 'courses/2016/12/57035ff200014b8a06000338-240-135_dHfj8Nq.jpg', 3, '2016-12-10 23:39:00', 2, '后端开发', 'django开发', NULL, '前端开发', 'django开发', 0);
INSERT INTO `courses_course` VALUES (13, 'xadmin进阶开发', 'xadmin进阶开发xadmin进阶开发xadmin进阶开发xadmin进阶开发', '<h1 class=\"ue_t\" label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\"><span style=\"color:#c0504d;\">[键入文档标题]</span></h1><p style=\"text-align:center;\"><strong class=\"ue_t\">[键入文档副标题]</strong></p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 1]</span></h3><p class=\"ue_t\" style=\"text-indent:2em;\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\" style=\"text-indent:2em;\"><img src=\"http://127.0.0.1:8000/media/courses/ueditor/57aa86a0000145c512000460_20161210234050_865.jpg\" title=\"\" alt=\"57aa86a0000145c512000460.jpg\"/> </p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 2]</span></h3><p><img src=\"http://api.map.baidu.com/staticimage?center=116.410899,39.863624&zoom=11&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/> </p><p class=\"ue_t\" style=\"text-indent:2em;\">在“开始”选项卡上，通过从快速样式库中为所选文本选择一种外观，您可以方便地更改文档中所选文本的格式。 您还可以使用“开始”选项卡上的其他控件来直接设置文本格式。大多数控件都允许您选择是使用当前主题外观，还是使用某种直接指定的格式。</p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 3]</span></h3><p>2016-12-10</p><p class=\"ue_t\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\"><br/> </p><p><br/></p>', 'zj', 30, 1, 1, 'courses/2016/12/mysql.jpg', 4, '2016-12-10 23:43:00', 1, '后端开发', 'django开发', 1, 'django开发', 'django开发', 0);

-- ----------------------------
-- Table structure for courses_courseresource
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseresource`;
CREATE TABLE `courses_courseresource`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `download` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(0) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_courseresource_ea134da7`(`course_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_courseresource
-- ----------------------------
INSERT INTO `courses_courseresource` VALUES (1, '前端页面', 'course/resource/2016/11/media.zip', '2016-11-05 22:13:00', 10);
INSERT INTO `courses_courseresource` VALUES (2, '前端页面', 'course/resource/2016/11/curl_wget.rar', '2016-11-09 00:01:00', 11);

-- ----------------------------
-- Table structure for courses_lesson
-- ----------------------------
DROP TABLE IF EXISTS `courses_lesson`;
CREATE TABLE `courses_lesson`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(0) NOT NULL,
  `course_id` int(11) NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_lesson_ea134da7`(`course_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_lesson
-- ----------------------------
INSERT INTO `courses_lesson` VALUES (1, '第一章 django基础知识', '2016-10-25 23:44:00', 1, 20);
INSERT INTO `courses_lesson` VALUES (2, '第一章 基础知识', '2016-11-05 21:50:00', 10, 0);
INSERT INTO `courses_lesson` VALUES (3, '第二章 进阶开发', '2016-11-05 21:50:00', 10, 0);
INSERT INTO `courses_lesson` VALUES (4, '第一章', '2016-11-09 00:01:00', 11, 10);
INSERT INTO `courses_lesson` VALUES (5, '第二章 django url配置', '2016-12-10 23:32:00', 1, 30);
INSERT INTO `courses_lesson` VALUES (6, '第三章 django model配置和编码', '2016-12-10 23:32:00', 1, 50);
INSERT INTO `courses_lesson` VALUES (7, '第三章 需求分析和数据库设计', '2016-12-11 00:00:00', 10, 200);
INSERT INTO `courses_lesson` VALUES (8, '第四章 django基础知识回顾', '2016-12-11 00:00:00', 10, 30);
INSERT INTO `courses_lesson` VALUES (9, '第五章 通过xadmin搭建后台管理系统', '2016-12-11 00:01:00', 10, 60);

-- ----------------------------
-- Table structure for courses_video
-- ----------------------------
DROP TABLE IF EXISTS `courses_video`;
CREATE TABLE `courses_video`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(0) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `learn_times` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_video_55174b7b`(`lesson_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_video
-- ----------------------------
INSERT INTO `courses_video` VALUES (1, '1.1 hello world', '2016-11-05 21:59:00', 2, 'https://www.jishu5.com/', 0);
INSERT INTO `courses_video` VALUES (2, '1.2 基本概念', '2016-11-05 22:02:00', 2, 'https://www.jishu5.com/', 0);
INSERT INTO `courses_video` VALUES (3, '2.1 test', '2016-11-05 22:02:00', 3, 'https://www.jishu5.com/', 0);
INSERT INTO `courses_video` VALUES (4, '2.2 test2', '2016-11-05 22:02:00', 3, 'https://www.jishu5.com/', 0);
INSERT INTO `courses_video` VALUES (5, 'django settings.py 配置', '2016-12-10 23:35:00', 2, 'https://www.jishu5.com/', 0);
INSERT INTO `courses_video` VALUES (6, '3.1 django app设计', '2016-12-11 00:01:00', 7, 'https://www.jishu5.com/', 0);
INSERT INTO `courses_video` VALUES (7, '3.2 django model设计', '2016-12-11 00:02:00', 7, 'https://www.jishu5.com/', 0);
INSERT INTO `courses_video` VALUES (8, '3.3 django users models设计', '2016-12-11 00:02:00', 7, 'https://www.jishu5.com/', 0);
INSERT INTO `courses_video` VALUES (9, '3.4 django course models设计', '2016-12-11 00:02:00', 7, 'https://www.jishu5.com/', 0);
INSERT INTO `courses_video` VALUES (10, '3.5 organization models设计', '2016-12-11 00:02:00', 7, 'https://www.jishu5.com/', 0);
INSERT INTO `courses_video` VALUES (11, '4.1 django settings配置', '2016-12-11 00:03:00', 8, 'https://www.jishu5.com/', 0);
INSERT INTO `courses_video` VALUES (12, '4.2 models设计', '2016-12-11 00:04:00', 8, 'https://www.jishu5.com/', 20);
INSERT INTO `courses_video` VALUES (13, '5.1 django admin讲解', '2016-12-11 00:05:00', 9, 'https://www.jishu5.com/', 10);
INSERT INTO `courses_video` VALUES (14, '5.2 xadmin的安装和注册', '2016-12-11 00:05:00', 9, 'https://www.jishu5.com/', 0);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(0) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2016-10-24 23:41:17', '3', 'bobby1', 1, '已添加。', 7, 2);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (7, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'users', 'emailverifyrecord');
INSERT INTO `django_content_type` VALUES (9, 'users', 'banner');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'course');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'lesson');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'video');
INSERT INTO `django_content_type` VALUES (13, 'courses', 'courseresource');
INSERT INTO `django_content_type` VALUES (14, 'organization', 'citydict');
INSERT INTO `django_content_type` VALUES (15, 'organization', 'courseorg');
INSERT INTO `django_content_type` VALUES (16, 'organization', 'teacher');
INSERT INTO `django_content_type` VALUES (17, 'operation', 'userask');
INSERT INTO `django_content_type` VALUES (18, 'operation', 'coursecomments');
INSERT INTO `django_content_type` VALUES (19, 'operation', 'userfavorite');
INSERT INTO `django_content_type` VALUES (20, 'operation', 'usermessage');
INSERT INTO `django_content_type` VALUES (21, 'operation', 'usercourse');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'userwidget');
INSERT INTO `django_content_type` VALUES (35, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (28, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (32, 'courses', 'bannercourse');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2016-10-18 15:47:48');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2016-10-18 15:47:51');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2016-10-18 15:47:51');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2016-10-18 15:47:52');
INSERT INTO `django_migrations` VALUES (12, 'sessions', '0001_initial', '2016-10-18 15:47:53');
INSERT INTO `django_migrations` VALUES (13, 'users', '0001_initial', '2016-10-18 16:36:59');
INSERT INTO `django_migrations` VALUES (14, 'courses', '0001_initial', '2016-10-20 15:01:04');
INSERT INTO `django_migrations` VALUES (15, 'operation', '0001_initial', '2016-10-20 15:01:05');
INSERT INTO `django_migrations` VALUES (16, 'organization', '0001_initial', '2016-10-20 15:01:05');
INSERT INTO `django_migrations` VALUES (17, 'users', '0002_banner_emailverifyrecord', '2016-10-20 15:01:05');
INSERT INTO `django_migrations` VALUES (18, 'users', '0003_auto_20161024_2337', '2016-10-24 23:37:30');
INSERT INTO `django_migrations` VALUES (20, 'users', '0004_auto_20161025_2122', '2016-10-25 21:22:31');
INSERT INTO `django_migrations` VALUES (66, 'xadmin', '0001_initial', '2016-12-11 22:14:16');
INSERT INTO `django_migrations` VALUES (67, 'xadmin', '0002_log', '2016-12-11 22:20:34');
INSERT INTO `django_migrations` VALUES (68, 'xadmin', '0003_auto_20160715_0100', '2016-12-11 22:20:34');
INSERT INTO `django_migrations` VALUES (34, 'captcha', '0001_initial', '2016-10-30 19:28:47');
INSERT INTO `django_migrations` VALUES (35, 'courses', '0002_auto_20161030_1928', '2016-10-30 19:28:47');
INSERT INTO `django_migrations` VALUES (36, 'organization', '0002_auto_20161102_2224', '2016-11-02 22:24:13');
INSERT INTO `django_migrations` VALUES (37, 'organization', '0003_auto_20161103_0056', '2016-11-03 00:56:15');
INSERT INTO `django_migrations` VALUES (38, 'courses', '0003_course_course_org', '2016-11-03 23:47:26');
INSERT INTO `django_migrations` VALUES (39, 'organization', '0004_auto_20161104_0022', '2016-11-04 00:22:45');
INSERT INTO `django_migrations` VALUES (40, 'organization', '0005_auto_20161104_0024', '2016-11-04 00:24:28');
INSERT INTO `django_migrations` VALUES (41, 'courses', '0004_course_category', '2016-11-05 17:32:04');
INSERT INTO `django_migrations` VALUES (42, 'courses', '0005_course_tag', '2016-11-05 18:01:24');
INSERT INTO `django_migrations` VALUES (44, 'courses', '0006_video_url', '2016-11-05 21:58:18');
INSERT INTO `django_migrations` VALUES (45, 'courses', '0007_lesson_learn_times', '2016-11-05 22:10:32');
INSERT INTO `django_migrations` VALUES (46, 'courses', '0008_video_learn_times', '2016-11-05 22:12:35');
INSERT INTO `django_migrations` VALUES (47, 'courses', '0009_course_teacher', '2016-11-05 22:21:01');
INSERT INTO `django_migrations` VALUES (48, 'courses', '0010_auto_20161105_2226', '2016-11-05 22:26:40');
INSERT INTO `django_migrations` VALUES (49, 'organization', '0006_teacher_age', '2016-11-06 00:14:12');
INSERT INTO `django_migrations` VALUES (50, 'users', '0005_auto_20161106_2007', '2016-11-06 20:07:07');
INSERT INTO `django_migrations` VALUES (51, 'courses', '0011_course_is_banner', '2016-11-07 22:52:51');
INSERT INTO `django_migrations` VALUES (52, 'organization', '0007_courseorg_tag', '2016-11-07 23:18:16');
INSERT INTO `django_migrations` VALUES (53, 'courses', '0012_auto_20161113_1724', '2016-11-13 17:25:05');
INSERT INTO `django_migrations` VALUES (54, 'courses', '0013_remove_course_detail2', '2016-11-13 21:03:02');
INSERT INTO `django_migrations` VALUES (55, 'courses', '0014_auto_20161113_2218', '2016-11-13 22:18:55');
INSERT INTO `django_migrations` VALUES (56, 'organization', '0008_auto_20161210_2353', '2016-12-10 23:53:24');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(0) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_de54fa62`(`expire_date`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('2jam9b4q6flchzg7g3z43j9akxu7iio3', 'ODFkYTY2NzI2Y2EyYmNmZTQ2MzliZTg0NjZhNTQ0ZDVhMDg3NjI2Nzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJvcmdhbml6YXRpb24iLCJjb3Vyc2VvcmciXSwiIl0sIl9hdXRoX3VzZXJfaGFzaCI6IjRlZThlMGU2NWRmNmFkOGRkMTlkYjA2Y2RhNTNlNmQ3MDliYWYxNDIiLCJfYXV0aF91c2VyX2lkIjoiMiJ9', '2016-11-23 01:11:13');
INSERT INTO `django_session` VALUES ('qhgbcuuydbcvobjanwirbbqmf73rme81', 'ODgzYTNjYTVkOTIyY2ZiOGE4NTA1YWE2OGM3NjA5MzRiNDBhMTE4MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0ZWU4ZTBlNjVkZjZhZDhkZDE5ZGIwNmNkYTUzZTZkNzA5YmFmMTQyIiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==', '2016-11-28 00:07:33');
INSERT INTO `django_session` VALUES ('7vmowjzj0k4dpe0js1lh9dp0euq0tdx9', 'MjQ1ZGVjYmU4MDcxNmQ1MGFhNWE3YTE1Zjk3ODE5YTNlNWU1YWQxMjp7Il9hdXRoX3VzZXJfaWQiOiI2IiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZXJlc291cmNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiJiN2ZjZjEyZTViOTNiMjg5MWUzOTA4MTZkYTZkZTYxOWUyZDEwMGYzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9', '2016-11-22 22:55:43');
INSERT INTO `django_session` VALUES ('nmjg2imxv7aps2830bubyduhh08g92dk', 'ODgzYTNjYTVkOTIyY2ZiOGE4NTA1YWE2OGM3NjA5MzRiNDBhMTE4MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiI0ZWU4ZTBlNjVkZjZhZDhkZDE5ZGIwNmNkYTUzZTZkNzA5YmFmMTQyIiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==', '2016-11-27 18:58:54');
INSERT INTO `django_session` VALUES ('9n51clhwi9wza9xsrxzxeggvk6rd73mp', 'OTQwNzViYzQ0MmMyYjQxNWFkYTFiMDMyZjhiYjU5MTUyOWNlZjE4MDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6InVzZXJzLnZpZXdzLkN1c3RvbUJhY2tlbmQiLCJMSVNUX1FVRVJZIjpbWyJjb3Vyc2VzIiwiY291cnNlIl0sIiJdLCJfYXV0aF91c2VyX2hhc2giOiIzYjNmYzA1ZTAxNWQ2NDIzNjc5NzY4ZmNjYzQ4OTM3NDU4YjA5ODA1IiwiX2F1dGhfdXNlcl9pZCI6IjIifQ==', '2016-12-25 22:53:41');
INSERT INTO `django_session` VALUES ('r88zwg0ox2e86k5rbz3i8h189g2tljia', 'ZjIxOGI1MDRkMTA4ZTFlNGYxNzdkNzJjODY4YmNmODJkYmY0NTczMDp7IkxJU1RfUVVFUlkiOltbInhhZG1pbiIsImxvZyJdLCIiXSwiX2F1dGhfdXNlcl9oYXNoIjoiNjRiZDAwMTk3ZmFiYjc0MzZmNjNiNDQ5YjEyOGI1ZGNmY2U1ODI1NSIsIl9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcnMudmlld3MuQ3VzdG9tQmFja2VuZCJ9', '2016-12-25 22:08:53');

-- ----------------------------
-- Table structure for operation_coursecomments
-- ----------------------------
DROP TABLE IF EXISTS `operation_coursecomments`;
CREATE TABLE `operation_coursecomments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comments` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(0) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_coursecomments_ea134da7`(`course_id`) USING BTREE,
  INDEX `operation_coursecomments_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_coursecomments
-- ----------------------------
INSERT INTO `operation_coursecomments` VALUES (1, '给问问', '2016-11-05 23:09:57', 10, 2);
INSERT INTO `operation_coursecomments` VALUES (2, '讲的很不错', '2016-11-05 23:13:13', 10, 2);
INSERT INTO `operation_coursecomments` VALUES (3, 'good ', '2016-11-05 23:18:16', 10, 2);
INSERT INTO `operation_coursecomments` VALUES (4, '再来一次', '2016-11-05 23:18:31', 10, 2);
INSERT INTO `operation_coursecomments` VALUES (5, '好', '2016-12-08 22:06:57', 5, 2);
INSERT INTO `operation_coursecomments` VALUES (6, '好', '2016-12-08 22:07:06', 5, 2);
INSERT INTO `operation_coursecomments` VALUES (7, '好', '2016-12-08 22:07:14', 5, 2);

-- ----------------------------
-- Table structure for operation_userask
-- ----------------------------
DROP TABLE IF EXISTS `operation_userask`;
CREATE TABLE `operation_userask`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_userask
-- ----------------------------
INSERT INTO `operation_userask` VALUES (3, 'bobby', '13548', 'django', '2016-11-03 23:17:38');
INSERT INTO `operation_userask` VALUES (4, 'bobby', '18786592568', 'django', '2016-11-03 23:29:26');

-- ----------------------------
-- Table structure for operation_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operation_usercourse`;
CREATE TABLE `operation_usercourse`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(0) NOT NULL,
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_usercourse_ea134da7`(`course_id`) USING BTREE,
  INDEX `operation_usercourse_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of operation_usercourse
-- ----------------------------
INSERT INTO `operation_usercourse` VALUES (1, '2016-11-05 17:40:00', 10, 2);
INSERT INTO `operation_usercourse` VALUES (2, '2016-11-05 23:43:12', 7, 2);
INSERT INTO `operation_usercourse` VALUES (3, '2016-11-05 23:46:03', 4, 2);
INSERT INTO `operation_usercourse` VALUES (4, '2016-11-05 23:47:04', 1, 2);
INSERT INTO `operation_usercourse` VALUES (5, '2016-12-08 22:06:35', 5, 2);
INSERT INTO `operation_usercourse` VALUES (6, '2016-12-08 22:09:54', 9, 2);
INSERT INTO `operation_usercourse` VALUES (7, '2016-12-10 23:57:08', 13, 2);

-- ----------------------------
-- Table structure for operation_userfavorite
-- ----------------------------
DROP TABLE IF EXISTS `operation_userfavorite`;
CREATE TABLE `operation_userfavorite`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fav_id` int(11) NOT NULL,
  `fav_type` int(11) NOT NULL,
  `add_time` datetime(0) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operation_userfavorite_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of operation_userfavorite
-- ----------------------------
INSERT INTO `operation_userfavorite` VALUES (28, 1, 3, '2016-11-09 22:58:37', 2);
INSERT INTO `operation_userfavorite` VALUES (29, 1, 2, '2016-11-09 23:04:14', 2);
INSERT INTO `operation_userfavorite` VALUES (32, 12, 1, '2016-12-10 23:46:28', 2);
INSERT INTO `operation_userfavorite` VALUES (31, 13, 1, '2016-12-10 23:46:21', 2);
INSERT INTO `operation_userfavorite` VALUES (33, 2, 2, '2016-12-10 23:46:29', 2);
INSERT INTO `operation_userfavorite` VALUES (34, 2, 3, '2016-12-10 23:46:37', 2);

-- ----------------------------
-- Table structure for operation_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operation_usermessage`;
CREATE TABLE `operation_usermessage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `has_read` tinyint(1) NOT NULL,
  `add_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operation_usermessage
-- ----------------------------
INSERT INTO `operation_usermessage` VALUES (1, 2, '欢迎注册', 1, '2016-11-06 23:49:00');

-- ----------------------------
-- Table structure for organization_citydict
-- ----------------------------
DROP TABLE IF EXISTS `organization_citydict`;
CREATE TABLE `organization_citydict`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_citydict
-- ----------------------------
INSERT INTO `organization_citydict` VALUES (1, '北京市', '北京市', '2016-11-02 21:17:00');
INSERT INTO `organization_citydict` VALUES (2, '上海市', '上海市', '2016-11-02 21:18:00');
INSERT INTO `organization_citydict` VALUES (3, '广州市', '广州市', '2016-11-02 21:18:00');
INSERT INTO `organization_citydict` VALUES (4, '深圳市', '深圳市', '2016-11-02 21:18:00');
INSERT INTO `organization_citydict` VALUES (5, '天津市', '天津市', '2016-11-02 21:20:00');

-- ----------------------------
-- Table structure for organization_courseorg
-- ----------------------------
DROP TABLE IF EXISTS `organization_courseorg`;
CREATE TABLE `organization_courseorg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(0) NOT NULL,
  `city_id` int(11) NOT NULL,
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_nums` int(11) NOT NULL,
  `students` int(11) NOT NULL,
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_courseorg_c7141997`(`city_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_courseorg
-- ----------------------------
INSERT INTO `organization_courseorg` VALUES (1, 'hikitest', '<p>&nbsp; &nbsp;</p><h1 class=\"ue_t\" label=\"Title center\" name=\"tc\" style=\"border-bottom-color:#cccccc;border-bottom-width:2px;border-bottom-style:solid;padding:0px 4px 0px 0px;text-align:center;margin:0px 0px 20px;\"><span style=\"color:#c0504d;\">[键入文档标题]</span></h1><p style=\"text-align:center;\"><strong class=\"ue_t\">[键入文档副标题]</strong></p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 1]</span></h3><p class=\"ue_t\" style=\"text-indent:2em;\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\" style=\"text-indent:2em;\"><img src=\"/media/courses/ueditor/57aa86a0000145c512000460_20161210234050_865.jpg\" title=\"\" alt=\"57aa86a0000145c512000460.jpg\"/> </p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 2]</span></h3><p><img src=\"http://api.map.baidu.com/staticimage?center=116.410899,39.863624&zoom=11&width=530&height=340&markers=116.404,39.915\" width=\"530\" height=\"340\"/> </p><p class=\"ue_t\" style=\"text-indent:2em;\">在“开始”选项卡上，通过从快速样式库中为所选文本选择一种外观，您可以方便地更改文档中所选文本的格式。 您还可以使用“开始”选项卡上的其他控件来直接设置文本格式。大多数控件都允许您选择是使用当前主题外观，还是使用某种直接指定的格式。</p><h3><span class=\"ue_t\" style=\"font-family:幼圆\">[标题 3]</span></h3><p>2016-12-10</p><p class=\"ue_t\">对于“插入”选项卡上的库，在设计时都充分考虑了其中的项与文档整体外观的协调性。 您可以使用这些库来插入表格、页眉、页脚、列表、封面以及其他文档构建基块。 您创建的图片、图表或关系图也将与当前的文档外观协调一致。</p><p class=\"ue_t\"><br/> </p><p><br/></p><p><br/></p>', 22, 1, 'org/2016/11/bjdx.jpg', '北京市', '2016-11-02 21:28:00', 1, 'pxjg', 4, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (2, '北京大学', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 0, 1, 'org/2016/11/bjdx.jpg', '北京市', '2016-11-02 18:50:00', 3, 'gx', 5, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (3, '清华大学', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 0, 0, 'org/2016/11/bjdx.jpg', '北京市', '2016-11-02 18:53:00', 3, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (4, '南京大学', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 0, 0, 'org/2016/11/njdx.jpg', '南京市', '2016-11-02 18:53:00', 4, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (5, 'hikitest', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 3, 0, 'org/2016/11/bjdx.jpg', '深圳市', '2016-11-02 18:54:00', 5, 'gr', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (6, 'hikitest', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 0, 0, 'org/2016/11/bjdx.jpg', '天津市', '2016-11-02 18:54:00', 6, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (7, 'hikitest', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 0, 0, 'org/2016/11/bjdx.jpg', '上海市', '2016-11-02 18:54:00', 3, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (8, 'hikitest', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 0, 0, 'org/2016/11/bjdx.jpg', '深圳市', '2016-11-02 18:55:00', 5, 'gx', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (9, 'hikitest', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 0, 0, 'org/2016/11/bjdx.jpg', '北京市', '2016-11-02 18:55:00', 4, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (10, 'hikitest', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 0, 0, 'org/2016/11/bjdx.jpg', '深圳市', '2016-11-02 18:56:00', 2, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (11, 'hikitest', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 0, 0, 'org/2016/12/bjdx.jpg', '北京市', '2016-12-10 23:28:00', 4, 'pxjg', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (12, 'python培训机构', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 0, 0, 'org/2016/11/bjdx.jpg', '北京市', '2016-12-10 23:30:00', 2, 'gr', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (13, 'vuejs培训', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 0, 0, 'org/2016/11/bjdx.jpg', '北京市', '2016-12-10 23:30:00', 2, 'gr', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (14, 'nodejs培训', 'nodejs培训nodejs培训nodejs培训nodejs培训nodejs培训\r\nnodejs培训nodejs培训nodejs培训nodejs培训nodejs培训', 0, 0, 'org/2016/11/bjdx.jpg', '北京市', '2016-12-10 23:30:00', 2, 'gr', 0, 0, '全国知名');
INSERT INTO `organization_courseorg` VALUES (15, 'hikitest', '【i春秋】-专注网络安全_信息安全_白帽子的在线学习_教育_培训平台', 0, 0, 'org/2016/11/bjdx.jpg', '北京市', '2016-12-10 23:31:00', 5, 'gx', 0, 0, '全国知名');

-- ----------------------------
-- Table structure for organization_teacher
-- ----------------------------
DROP TABLE IF EXISTS `organization_teacher`;
CREATE TABLE `organization_teacher`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_years` int(11) NOT NULL,
  `work_company` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_position` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `points` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `click_nums` int(11) NOT NULL,
  `fav_nums` int(11) NOT NULL,
  `add_time` datetime(0) NOT NULL,
  `org_id` int(11) NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `organization_teacher_9cf869aa`(`org_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of organization_teacher
-- ----------------------------
INSERT INTO `organization_teacher` VALUES (1, 'bobby', 5, 'xxx', 'xxx', 'xxx', 14, 1, '2016-11-03 23:43:00', 1, 'teacher/2016/11/aobama_CXWwMef.png', 18);
INSERT INTO `organization_teacher` VALUES (2, '还是bobby', 5, 'xxx', 'xxx', 'xxx', 2, 1, '2016-11-03 23:44:00', 1, 'teacher/2016/11/aobama.png', 18);

-- ----------------------------
-- Table structure for users_banner
-- ----------------------------
DROP TABLE IF EXISTS `users_banner`;
CREATE TABLE `users_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `index` int(11) NOT NULL,
  `add_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_banner
-- ----------------------------
INSERT INTO `users_banner` VALUES (1, '第一个', 'banner/2016/11/57a801860001c34b12000460.jpg', 'http://www.imooc.com', 1, '2016-11-07 22:55:00');
INSERT INTO `users_banner` VALUES (2, '第二个', 'banner/2016/11/57aa86a0000145c512000460.jpg', 'http://www.projectsedu.com', 2, '2016-11-07 22:56:00');
INSERT INTO `users_banner` VALUES (3, '第三个', 'banner/2016/11/57a801860001c34b12000460_z4Vb8zl.jpg', 'http://www.projectsedu.com', 3, '2016-11-07 22:57:00');
INSERT INTO `users_banner` VALUES (4, '第四个', 'banner/2016/11/57aa86a0000145c512000460_nMwvoQD.jpg', 'http://www.projectsedu.com', 4, '2016-11-07 22:57:00');
INSERT INTO `users_banner` VALUES (5, '第五个', 'banner/2016/11/57aa86a0000145c512000460_GXIBATC.jpg', 'http://www.projectsedu.com', 5, '2016-11-07 22:58:00');

-- ----------------------------
-- Table structure for users_emailverifyrecord
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifyrecord`;
CREATE TABLE `users_emailverifyrecord`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_emailverifyrecord
-- ----------------------------
INSERT INTO `users_emailverifyrecord` VALUES (6, 'admin', 'xxx@qq.com', 'register', '2016-10-25 23:13:00');
INSERT INTO `users_emailverifyrecord` VALUES (8, 'bobby', 'admin@admin.com', 'forget', '2016-10-25 23:26:00');
INSERT INTO `users_emailverifyrecord` VALUES (9, '3XMbn5Owwv6tc6mc', 'projectsedu@sina.com', 'register', '2016-10-30 22:52:56');
INSERT INTO `users_emailverifyrecord` VALUES (10, 'xul6s2tlQMW6o38E', 'projectsedu@sina.com', 'register', '2016-10-30 22:57:43');
INSERT INTO `users_emailverifyrecord` VALUES (11, 'ekB9xHRNDng9wlHq', 'projectsedu@sina.com', 'register', '2016-10-30 23:02:20');
INSERT INTO `users_emailverifyrecord` VALUES (12, 'RIGoVBtSxt3U01YP', 'projectsedu@sina.com', 'forget', '2016-11-01 22:04:08');
INSERT INTO `users_emailverifyrecord` VALUES (13, '73gYZCG4NID3hBIk', 'projectsedu@sina.com', 'forget', '2016-11-01 22:06:23');
INSERT INTO `users_emailverifyrecord` VALUES (14, 'KIjhoogFyi8xu4TB', 'projectsedu@sina.com', 'update_ema', '2016-11-06 19:46:49');
INSERT INTO `users_emailverifyrecord` VALUES (15, 'xrHe', 'projectsedu@sina.com', 'update_email', '2016-11-06 19:50:45');
INSERT INTO `users_emailverifyrecord` VALUES (16, 'jCeSMseZ58DeGPDx', 'projectsedu@sina.com', 'forget', '2016-11-08 22:39:08');

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(0) NOT NULL,
  `nick_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birday` date NULL DEFAULT NULL,
  `gender` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$24000$F1yNeo5gRaWI$6TxfkDeHwc0X25DLCBI8O5W7exiud1Zz9FW8xtrPHSE=', '2016-12-11 22:42:34', 1, 'bobby', '', '', 'projectsedu@sina.com', 1, 1, '2016-10-24 14:58:33', 'django', '2009-09-02', 'female', '我来自火星', '', 'image/2016/12/default_big_14.png');
INSERT INTO `users_userprofile` VALUES (3, 'admin123', '2016-10-30 23:40:00', 0, 'bobby1', '', '', '', 0, 1, '2016-10-24 23:40:00', 'bobby', '2016-10-05', 'female', '慕课网', '', 'image/default.png');
INSERT INTO `users_userprofile` VALUES (6, 'pbkdf2_sha256$24000$fqNxJK7sfjE4$pcomeAWpo2AQtFIYq68wpqWszR+FMquouz731Xnc4q4=', '2016-11-08 22:44:00', 0, 'projectsedu1@sina.com', '', '', 'projectsedu1@sina.com', 1, 1, '2016-10-30 23:01:00', 'projectsedu', NULL, 'female', '北京市', '', 'image/default.png');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------
INSERT INTO `users_userprofile_groups` VALUES (1, 6, 1);

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_permissions_userprofile_id_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_u_permission_id_393136b6_fk_auth_permission_id`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookma_content_type_id_60941679_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(0) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_417f1b1c`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_e8701ad4`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 2);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
