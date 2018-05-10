/*
Navicat MySQL Data Transfer

Source Server         : 111.230.206.148
Source Server Version : 50635
Source Host           : 111.230.206.148:3306
Source Database       : lirenjy

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2018-05-10 10:34:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lz_ad`
-- ----------------------------
DROP TABLE IF EXISTS `lz_ad`;
CREATE TABLE `lz_ad` (
  `ad_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '广告名称',
  `type_id` tinyint(5) NOT NULL COMMENT '所属位置',
  `pic` varchar(200) NOT NULL DEFAULT '' COMMENT '广告图片URL',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '广告链接',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `sort` int(11) NOT NULL COMMENT '排序',
  `open` tinyint(2) NOT NULL COMMENT '1=审核  0=未审核',
  `content` varchar(225) DEFAULT '' COMMENT '广告内容',
  PRIMARY KEY (`ad_id`),
  KEY `plug_ad_adtypeid` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='广告表';

-- ----------------------------
-- Records of lz_ad
-- ----------------------------

-- ----------------------------
-- Table structure for `lz_ad_type`
-- ----------------------------
DROP TABLE IF EXISTS `lz_ad_type`;
CREATE TABLE `lz_ad_type` (
  `type_id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `sort` int(11) NOT NULL COMMENT '广告位排序',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='广告分类';

-- ----------------------------
-- Records of lz_ad_type
-- ----------------------------
INSERT INTO `lz_ad_type` VALUES ('1', '【首页】顶部轮播', '1');
INSERT INTO `lz_ad_type` VALUES ('5', '【内页】横幅', '2');

-- ----------------------------
-- Table structure for `lz_admin`
-- ----------------------------
DROP TABLE IF EXISTS `lz_admin`;
CREATE TABLE `lz_admin` (
  `admin_id` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `username` varchar(20) NOT NULL COMMENT '管理员用户名',
  `pwd` varchar(70) NOT NULL COMMENT '管理员密码',
  `group_id` mediumint(8) DEFAULT NULL COMMENT '分组ID',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `realname` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话号码',
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `add_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `mdemail` varchar(50) DEFAULT '0' COMMENT '传递修改密码参数加密',
  `is_open` tinyint(2) DEFAULT '0' COMMENT '审核状态',
  `avatar` varchar(120) DEFAULT '' COMMENT '头像',
  PRIMARY KEY (`admin_id`),
  KEY `admin_username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='后台管理员';

-- ----------------------------
-- Records of lz_admin
-- ----------------------------
INSERT INTO `lz_admin` VALUES ('1', 'admin', '0192023a7bbd73250516f069df18b500', '1', 'guoqf_online@yeah.net', '', '17665495306', '127.0.0.1', '1482132862', '0', '1', '/uploads/20180119/50fa71996b7a82f2d3e609e6564fdf43.jpg');
INSERT INTO `lz_admin` VALUES ('10', 'lirenjy', '25945dd6a2a81fdfd41bfd15d39d4bfa', '2', 'lirenjy@100.com', null, '17665495306', '183.11.74.110', '1521525983', '0', '0', '');

-- ----------------------------
-- Table structure for `lz_apply`
-- ----------------------------
DROP TABLE IF EXISTS `lz_apply`;
CREATE TABLE `lz_apply` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` char(20) NOT NULL,
  `sex` char(10) NOT NULL,
  `idcard` varchar(18) NOT NULL,
  `nation` char(20) DEFAULT NULL,
  `p_origin` char(10) NOT NULL,
  `company` char(50) NOT NULL,
  `old_school` varchar(100) NOT NULL,
  `education` char(20) NOT NULL,
  `university_apply` char(50) NOT NULL,
  `university_course` char(20) NOT NULL,
  `university` char(20) NOT NULL,
  `university_type` char(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `qq` char(20) DEFAULT NULL,
  `study_md` char(20) DEFAULT NULL,
  `contract` char(50) DEFAULT NULL,
  `other_remarks` varchar(100) NOT NULL,
  `user_id` int(2) NOT NULL,
  `addtime` varchar(50) NOT NULL,
  `state` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_apply
-- ----------------------------
INSERT INTO `lz_apply` VALUES ('1', '郭庆发1', '男', '42118119881130231x', '汉', '湖北', '程序员', '武汉大学', '大专', '艺术设计', '专升本', '广东开放大学', '开放教育', '吉祥地铁站', '17665495306', '270979964', null, '自考合同', '自考，尽快拿证', '2603', '1525078599', '0');
INSERT INTO `lz_apply` VALUES ('2', '郭庆发2', '男', '42118119881130231x', '汉', '湖北', '程序员', '武汉大学', '大专', '艺术', '高升专', '广东开放大学', '开放教育', '尽快', '17665495306', '270979964', null, '非自考合同', '', '2603', '1525078896', '0');
INSERT INTO `lz_apply` VALUES ('3', '郭庆发', '男', '421181198811302315', '汉', '湖北', '成左右', '中鹏', '大专', '专业', '专升本', '主机', '开放教育', '452883', '17665495306', '270979964', null, '非自考合同', '备注', '2603', '1525415118', '0');
INSERT INTO `lz_apply` VALUES ('4', '测试', '男', '421181198811235652', '汉', '湖北', '程序员', '中鹏', '中专', '艺术设计', '高升本', '院校', '网络教育', '438300', '17665495630', '270979965', null, '非自考合同', '备注', '2603', '1525416869', '0');
INSERT INTO `lz_apply` VALUES ('6', '陆香', '女', '220203197903214820', '满', '吉林', '销售', '物流', '大专', '会计', '专升本', '广东开放大学', '开放教育', '深圳', '13410012018', '342804925', null, '非自考合同', '', '2606', '1525425630', '0');
INSERT INTO `lz_apply` VALUES ('7', '刘童来', '男', '360782198805165428', '汉', '江西', '老师', '深圳大学', '大专', '计算机', '专升本', '中国石油大学', '网络教育', '深圳龙岗', '18128859052', '1810751177', null, '非自考合同', '', '2611', '1525442120', '0');
INSERT INTO `lz_apply` VALUES ('8', '郭庆发', '男', '42118119881130231x', '汉', '湖北', '程序员', '武汉大学', '大专', '艺术设计', '本升本', '艺术学院', '开放教育', '武汉大学校长的带领', '17665495306', '270979964', null, '非自考合同', '备注', '2603', '1525500710', '0');
INSERT INTO `lz_apply` VALUES ('9', '晓玲', '女', '110200112210773481', '汗族', '北京', '主管', '重庆工商学校', '大专', '工商管理', '专升本', '中国传媒大学', '网络教育', '坂田五和', '13713706829', '123123123', null, '非自考合同', '', '2608', '1525502172', '0');
INSERT INTO `lz_apply` VALUES ('10', '郭庆发2018', '男', '42118119881130231X', '汉', '湖北', '程序员', '中鹏', '中专', '艺术设计', '高升本', '武汉大学', '网络教育', '龙岗吉祥地铁站', '17665495306', '270979964', null, '自考合同', '备注', '2603', '1525680852', '0');
INSERT INTO `lz_apply` VALUES ('11', '测试', '女', '42118119881130231x', '汉', '湖北', '程序员', '武汉院校', '本科', '专业', '专升本', '报考院校', '自学考试', '武汉龙岗吉祥地铁站', '17665495306', '270979964', null, '自考合同', '我是备注', '2603', '1525688372', '0');
INSERT INTO `lz_apply` VALUES ('13', '晓玲', '女', '110101106161610101', '汉', '北京', '设计师', '重庆工商学校', '大专', '工商企业管理', '专升本', '中国传媒大学', '网络教育', '深圳市坂田五和南路108号凯旋商业大厦', '13713706829', '464901081', null, '非自考合同', '', '2608', '1525758072', '0');
INSERT INTO `lz_apply` VALUES ('14', '陆香', '女', '220203197903214820', '汉', '吉林', '工人', '武汉理工大学_', '大专', '会展管理', '专升本', '广州大学', '自学考试', '深圳龙岗香林世纪华府2栋2单元1501', '13410012018', '342804928', null, '自考合同', '', '2606', '1525853322', '0');
INSERT INTO `lz_apply` VALUES ('15', '陆香', '女', '220203197903214820', '满', '吉林', '设计', '武汉理工大学', '大专', '工商管理', '专升本', '广州工商学院', '成人高考', '深圳龙岗香林世纪华府', '13410012018', '342804925', null, '非自考合同', '', '2606', '1525859529', '0');
INSERT INTO `lz_apply` VALUES ('16', '测试', '男', '42118119881130231x', '汉', '湖北', '柜面', '中鹏配音', '大专', '艺术设计', '专升本', '开放大学', '自学考试', '地址', '17665495306', '270979961', '就业需求', '自考合同', '备注', '2603', '1525859942', '0');

-- ----------------------------
-- Table structure for `lz_article`
-- ----------------------------
DROP TABLE IF EXISTS `lz_article`;
CREATE TABLE `lz_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `copyfrom` varchar(255) NOT NULL DEFAULT '',
  `fromlink` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_article
-- ----------------------------
INSERT INTO `lz_article` VALUES ('69', '14', '10', 'lirenjy', '2017年成人高考应试掌握得分策略', 'color:;font-weight:normal;', '/uploads/20180326/0a5167b0408d83fbb489d955b990a4e4.jpg', '', '应试是一门艺术。应试，七分靠水平，三分凭发挥，对于经过认真复习准备，行将走进考场的成人考生，了解并掌握一定的考试临场得分策略，对考生考出最佳水平是有积极意义的。为此，笔者拟从现代考试学及心理学角度，略谈考试临场得分策略，仅供成人考生参考。', '<p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp; &nbsp; &nbsp;&nbsp; 应试是一门艺术。应试，七分靠水平，三分凭发挥，对于经过认真复习准备，行将走进考场的成人考生，了解并掌握一定的考试临场得分策略，对考生考出最佳水平是有积极意义的。为此，笔者拟从现代考试学及心理学角度，略谈考试临场得分策略，仅供成人考生参考。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一、提前进入“角色”，“净化”考试情境</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;考试时间是有限的，也是宝贵的。为了在考试过程中分分秒秒均能发挥最佳水平，考生在进入考场前应提前进入“角色”——让大脑开始简单的思维活动，进入单一的考试情境。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;具体操作如下：</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、清点考试用具。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、对一些重要知识（如：定义概念、原理规律、公式法则等）“过过电影”。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、对一些难记、易忘的知识，再粗略地浏览一遍。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二、迅速摸清“题情”，制定解题策略</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;考生在刚拿到试卷时，不必匆匆作答。可以先从头到尾通览全卷，做到心中有数。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、发挥“进门槛效应”。首先回答那些一眼看得出结论的简单选择题或填空题。这样，就能产生“旗开得胜、势在必得”的心理效应（即“进门槛效应”），从而促使思维活动及时进入最佳竞技状态。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、防止小题大做。对于客观性试题（选择、填空题）可压缩答题时间，从而节约出更多的时间解答后面的大题。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3、实施先熟后生。先做内容比较简单、题型又比较熟悉的试题，然后再做那些难一点的试题。因为从心理学角度看，中等难度的试题容易刺激人的精神亢奋，会使人情不自禁地进入答题境界。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三、妥善分步解答，确保争“分”夺秒</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;评卷采用的是“分段评分”的办法，在答题过程中，考生应坚持以下两点：</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1、克服“会而不对，对而不全”的通病。有的考生试卷中的试题本来会做，但最后答案却是错误的——会而不对；有的考生答案虽然是对的，但中间有逻辑缺陷或 概念不清，结果造成对而不全。因此，提醒考生，会做的题目一定要认真仔细。从以往考生答卷中可以看出，特别难的题得1、2分容易，而简单的题得满分却很 难。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 22.4px; list-style-type: none; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、坚持高分原则。首先，两道题都会做的，应先选高分题做，然后再做低分题，以减少由于时间不足而产生失分。其次，到了考试的最后阶段，对久攻不下的题目应先做高分题，当然，这里亦应防止“高分题久攻不下，低分题无暇顾及”的现象产生。</span></p>', '0', '1', '1', '0', '', '0', '0', '16', '1521776290', '1522631659', '', '', '');
INSERT INTO `lz_article` VALUES ('59', '17', '10', 'lirenjy', '2018年1月广东省自学考试成绩公布时间', 'color:;font-weight:normal;', '/uploads/20180326/d4e30d1977181074fe485c2dcc061250.PNG', '', '2018年1月广东省自学考试成绩将于2月9日15时公布。考生可通过以下3种方式查询考试成绩', '<p style=\"text-align: center;\"><br/></p><p>各位考生：<br/>&nbsp; &nbsp; &nbsp; &nbsp; 2018年1月广东省自学考试成绩将于2月9日15时公布。考生可通过以下3种方式查询考试成绩：<br/>一、官微查询<br/>&nbsp; &nbsp; &nbsp;&nbsp; 考生关注立人教育微信公众号进行查询<br/>二、系统查询<br/>&nbsp; &nbsp; &nbsp; &nbsp; 登陆广东省自学考试管理系统（http://www.stegd.edu.cn/selfec/）查询考试合格成绩和当次考试违规处理情况。<br/>三、网站查询<br/>&nbsp; &nbsp; &nbsp;&nbsp; 登陆立人教育学习系统查询。<br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '1', '1521772598', '1522632107', '', '', '');
INSERT INTO `lz_article` VALUES ('62', '17', '10', 'lirenjy', '广东省2018年4月高等教育自学考试即将开始报考', 'color:;font-weight:normal;', '/uploads/20180326/a1c899eafa0ac692a1cf4058f93548fc.png', '', '广东省2018年4月高等教育自学考试新生报名时间为1月15-22日，考生报考时间为1月15-25日。', '<p><br/></p><p style=\"text-align: left;\">各位考生：<br/>&nbsp; &nbsp; &nbsp;&nbsp; 广东省2018年4月高等教育自学考试新生报名时间为1月15-22日，考生报考时间为1月15-25日。广东省教育考试院提醒广大考生，及时登录广东省教育考试院官网（www.stegd.edu.cn）了解我省自学考试相关规定和政策，以及2018年4月自学考试课程和时间安排。这里我们把《广东省2018年4月高等教育自学考试网上报考须知》提供给大家，方便大家报考。<br/>&nbsp;<br/>广东省2018年4月高等教育自学考试网上报考须知<br/>&nbsp;<br/>一、报名条件<br/>凡在我省居住和工作的中华人民共和国公民，以及港澳台同胞、海外侨胞，不受性别、年龄、民族、种族、学历、身体健康状况、居住地等限制，均可根据本人的实际情况和需要自由选择专业，报考我省自学考试。服刑人员经有关部门批准后也可申请报考。<br/>二、报名报考时间<br/>2018年4月自学考试新生报名时间为2018年1月15-22日，考生报考时间为2018年1月15-25日。<br/>三、考生报考手续<br/>首次参加自学考试的新生须先办理新生报名手续，然后才可选择课程进行报考，已进行过新生报名的考生可直接进行报考。<br/>（一）新生报名&nbsp; <br/>新生报名分预报名和正式报名两个阶段。<br/>预报名&nbsp; 新生自行登录到广东省教育考试院网站（www.stegd.edu.cn/selfec/）进行预报名。预报名时考生录入个人信息并设置个人密码，预报名成功后可得到一个唯一的预报名号。新生凭预报名号和个人密码进行正式报名。<br/>正式报名&nbsp; 新生凭预报名号在规定的时间内到市、县（区）指定报名点正式报名，考生正式报名时须携带身份证进行电子摄像，同时打印、确认报名资料，并得到一个唯一的准考证号码，考生使用该准考证号码报考。报名获得批准后，市考办或报名点将给报名者发放由省考委统一印制的准考证。<br/>（二）考生报考<br/>所有考生均须通过广东省自学考试管理系统（www.stegd.edu.cn/selfec/）报考（原5184、96040电话报考通道停止使用），并且进行网上缴费。每个考生每次考试只能报考一次，且只能选择一个考区参加考试。考生在确认报考课程前，须认真核对选择的考区和报考课程是否正确，考区和报考课程一经考生确认，不得增加、删减、更改，确认报考后所交报考费一旦网上缴纳，不予退还。考生缴费后须再次登录自学考试管理系统，检查交费状态是否为“已缴费”，以此确认是否报考成功。<br/>未曾提供电子相片的考生在报考前必须先提供指定规格的电子相片（见电子相片采集标准），或到地市考办指定报名点现场采集，新生在正式报名时已采集电子相片的，报考时不用提供。<br/>电子相片采集标准：<br/>（1）背景要求：背景布选取浅蓝色，要求垂感和吸光好，可以是棉布、毛涤等。<br/>（2）成像要求：成像区上下要求头上部空1／10，头部占7／10，肩部占1／5，左右各空1／10。采集的图像大小最小为192×168（高×宽），单位为：像素。成像区大小为48ｍｍ×42ｍｍ（高×宽）。<br/>（3）灯光要求：需要摄影灯，一台前灯基本满足要求，最好利用两台侧灯，灯具可以是专业摄影灯，也可以是舞台灯或家用立式客厅灯。<br/>四、违规处理 <br/>广东省自学考试委员会办公室将严格按照《国家教育考试违规处理办法》及相关规定严肃处理违纪作弊考生，并如实将相关信息记入诚信档案。<br/>座位安排、成绩查询以及其他未尽事宜，请考生密切关注广东省教育考试院网站和官方微信，查阅有关文件和公告。<br/>&nbsp;<br/>&nbsp;<br/></p><p style=\"text-align: right;\">广东省教育考试院 宣<br/>2018年1月12日&nbsp;</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '0', '1', '0', '', '0', '0', '4', '1521773020', '1522051049', '', '', '');
INSERT INTO `lz_article` VALUES ('60', '17', '10', 'lirenjy', '广东省2018年1月高等教育自学考试考场查询通知', 'color:;font-weight:normal;', '/uploads/20180326/4ac9be62508e4ffed0219bd6da9f2191.jpg', '', '考生在查询到本次考试座位安排后，要提前做好考试准备，密切留意天气变化，安排好出行方式，规划好交通路线，避免因迟到而无法参加考试。', '<p style=\"text-align: center;\"><br/></p><p>各位考生：<br/>&nbsp; &nbsp; &nbsp;&nbsp; 我省2018年1月高等教育自学考试将于2018年1月6-7日进行，考试时间为上午9:00-11:30，下午2:30-5:00。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 考场查询通道将于12月26日开通，届时考生可通过广东省自学考试管理系统（http://www.stegd.edu.cn/selfec/）、省教育考试院官方微信公众号（ID：gdsksy）,拨打96040固定电话热线查询本次考试座位安排，也可通过各地市考办指定的其他途径查询。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 考生在查询到本次考试座位安排后，要提前做好考试准备，密切留意天气变化，安排好出行方式，规划好交通路线，避免因迟到而无法参加考试。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '7', '1521772761', '1522632119', '', '', '');
INSERT INTO `lz_article` VALUES ('56', '16', '10', 'lirenjy', '2017年深圳网络高等学历教育的基本修业年限规定', 'color:;font-weight:normal;', '/uploads/20180326/0d41789b49c6e3b64e5ca2f30906bb00.jpg', '', '学历教育的修业年限由学校决定。根据《中华人民共和国高等教育法》规定，“专科教育的基本修业年限为二至三年，本科教育的基本修业年限为四至五年，硕士研究生教育的基本修业年限为二至三年，博士研究生教育的基本修业年限为三至四年。非全日制高等学历教育的修业年限应当适当延长。”以在职人员的继续教育为主的网络高等学历教育，其修业年限不得少于同层次全日制高等学历教育的基本修业年限，并应适当延长。', '<p style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 5px; margin-left: 0px; margin-right: 0px; margin-top: 5px; orphans: 2; text-align: center; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/></p><p style=\"background-color: transparent; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 5px; margin-left: 0px; margin-right: 0px; margin-top: 5px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">&nbsp; &nbsp; &nbsp;&nbsp; 学历教育的修业年限由学校决定。根据《中华人民共和国高等教育法》规定，“专科教育的基本修业年限为二至三年，本科教育的基本修业年限为四至五年，硕士研究生教育的基本修业年限为二至三年，博士研究生教育的基本修业年限为三至四年。非全日制高等学历教育的修业年限应当适当延长。”以在职人员的继续教育为主的网络高等学历教育，其修业年限不得少于同层次全日制高等学历教育的基本修业年限，并应适当延长。</p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '2', '1521708401', '1522631909', '', '', '');
INSERT INTO `lz_article` VALUES ('77', '14', '10', 'lirenjy', '2018年1月广东省自学考试成绩将于2月9日公布', 'color:;font-weight:normal;', '/uploads/20180326/f21b48dce503b43bae493c4fca2e14c6.jpg', '', '2018年1月广东省自学考试成绩将于2月9日15时公布。考生可通过以下3种方式查询考试成绩。', '<p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">各位考生：</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">&nbsp; &nbsp; &nbsp; &nbsp; 2018年1月广东省自学考试成绩将于2月9日15时公布。考生可通过以下3种方式查询考试成绩：</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">一、官微查询</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">&nbsp; &nbsp; &nbsp;&nbsp; 考生关注立人教育微信公众号进行查询</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">二、系统查询</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">&nbsp; &nbsp; &nbsp; &nbsp; 登陆广东省自学考试管理系统（http://www.stegd.edu.cn/selfec/）查询考试合格成绩和当次考试违规处理情况。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">三、网站查询</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">&nbsp; &nbsp; &nbsp;&nbsp; 登陆立人教育学习系统查询。</span></p>', '', '1', '1', '0', '', '0', '0', '2', '1522049608', '1522631731', '', '', '');
INSERT INTO `lz_article` VALUES ('78', '14', '10', 'lirenjy', '广东省2018年1月高等教育自学考试考场查询通道将于12月26日开通', 'color:;font-weight:normal;', '/uploads/20180326/186c1c214bb9d95d9302d0f38f8628a3.PNG', '', '考生在查询到本次考试座位安排后，要提前做好考试准备，避免因迟到而无法参加考试。', '<p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">各位考生：</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">&nbsp; &nbsp; &nbsp;&nbsp; 我省2018年1月高等教育自学考试将于2018年1月6-7日进行，考试时间为上午9:00-11:30，下午2:30-5:00。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">&nbsp; &nbsp; &nbsp;&nbsp; 考场查询通道将于12月26日开通，届时考生可通过广东省自学考试管理系统（http://www.stegd.edu.cn/selfec/）、省教育考试院官方微信公众号（ID：gdsksy）,拨打96040固定电话热线查询本次考试座位安排，也可通过各地市考办指定的其他途径查询。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">&nbsp; &nbsp; &nbsp;&nbsp; 考生在查询到本次考试座位安排后，要提前做好考试准备，密切留意天气变化，安排好出行方式，规划好交通路线，避免因迟到而无法参加考试。</span></p>', '', '1', '1', '0', '', '0', '0', '2', '1522049697', '1522631743', '', '', '');
INSERT INTO `lz_article` VALUES ('61', '17', '10', 'lirenjy', '2018年春季网络教育全国统考报名的通知', 'color:;font-weight:normal;', '/uploads/20180326/811bf44a6d07ad030340d10ad554e26b.png', '', '重点提醒：从18年春季入学注册的学生开始，在学籍有效期内，符合统考条件的学生在入学第二年后可进行报考。在统考安排的时间和公布的考点进行预约考试。', '<p style=\"text-align: left;\"><br/></p><p style=\"text-align: left;\">&nbsp; &nbsp; &nbsp; &nbsp; 按照网考委 《全国高校网络教育部分公共基础课统一考试2018年4月考试工作安排》（网考电函[2018]03号）的要求，结合我校工作实际，现将2018年4月统考考试工作安排如下：<br/>一、考试总体安排<br/>1、考试和报名时间<br/>考试时间：2018年4月14 - 17日，每门课程考试时间90分钟<br/>2、考试科目<br/>考试科目包括《大学英语》（A、B、C）、《大学语文》（A、B）、《高等数学》（A、B）和《计算机应用基础》等4门统考课程。<br/>3、考试考点<br/>立人教育培训<br/>4、考试对象<br/> &nbsp; &nbsp; &nbsp; 凡考生基本信息已进入全国网络教育统考信息管理系统且符合统考条件的学生均可自愿报名参加本次考试。<br/>重点提醒：从18年春季入学注册的学生开始，在学籍有效期内，符合统考条件的学生在入学第二年后可进行报考。在统考安排的时间和公布的考点进行预约考试。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 为有效利用考试资源，从今年开始，对报考后有弃考行为的考生每个科目的报考次数限定为3次。<br/>5、考试方式<br/>四门统考课程全部实行网上闭卷机考。</p><p>二、我校2018年4月考试报名安排<br/>&nbsp; &nbsp; &nbsp;&nbsp; 根据网考委[2005]01号和[2015]43号文件的要求，各网络教育学习中心应加强考风考纪教育和诚信教育工作，树立良好的学风、考风，严格考风考纪管理，严肃查处考试违规、弄虚作假和徇私舞弊等行为。<br/>1、基本信息的导入：<br/>&nbsp; &nbsp; &nbsp;&nbsp; 考生基本信息从学信网中获取。特别要求提供的照片应为考生本人身份证照片，不符合照片要求的报考者不得参加考试；提供的考生联系方式（如电话、邮箱等）应确切、有效。<br/>考试时考生基本信息有误，不得参加考试。</p><p>三、统考免考办理流程<br/>1.考生及学习中心请下载附件2相关表格认真填写相关信息，确保信息准确无误。<br/>提醒：如果考生用全国公共英语等级考试PETS三级或以上级别证书申请免考大学英语，务必在个人申请表上注明考试所在省份。<br/>2.办理程序：<br/>（1）学生填写《免考申请表》一份，并持免考证明原件到所在学习中心申请免考。 <br/>（2）学习中心必须对学生的免考证明原件进行初审，确保提交材料真实，审核合格后扫描2份，其中1份学习中心留存，1份上报网院，并在《免考申请表》中签字盖章；<br/>（3）学习中心向总校报送《免考汇总表》电子版和纸质版一份，《免考申请表》和免考证明原件的扫描件的纸质版各一份；<br/>（4）学院对免考申请材料审定后汇总进行公示，并按程序上报网考办备案。<br/>除统考报考期间不可上报免考信息外，其他时间每月20号以前学习中心上报的免考材料总校将及时处理免考信息，确保当月最后一个星期五进行统考数据（包括免考数据）与学信网的对接；每月21号以后上报的免考数据，将在下一个月最后一个星期五完成统考数据（包括免考数据）与学信网的对接。<br/>注：1、对已经获得本科文凭及以上的统考免考，学习中心需要将学生毕业证书扫描件发至总校进行办理。<br/>&nbsp;&nbsp;&nbsp; 2、若考生在取得网络教育正式学籍前已参加网络统考且成绩合格，应办理相应科目免考。</p><p>四、考生须知<br/>考生必须凭有效身份证件和准考证才能参加国家考试。所有考生必须事先准备好证件，以免无证不能进入考场。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '4', '1521772822', '1522632131', '', '', '');
INSERT INTO `lz_article` VALUES ('63', '17', '10', 'lirenjy', '关于公布2018年广东省自学考试时间安排的通知', 'color:;font-weight:normal;', '/uploads/20180326/4ead42f1f337411e8ba06143bdcfd704.jpg', '', '为使我省高等教育自学考试更好地适应新的形势，经研究，决定自2018年起，广东省高等教育自学考试每年的开考次数调整为一年开考3次，分别为1月、4月、10月，7月不再安排考试。', '<p><br/></p><p>各地级以上市自学考试办公室，各主考学校：<br/>&nbsp; &nbsp; &nbsp;&nbsp; 为使我省高等教育自学考试更好地适应新的形势，经研究，决定自2018年起，广东省高等教育自学考试每年的开考次数调整为一年开考3次，分别为1月、4月、10月，7月不再安排考试。<br/>根据《关于2018年高等教育自学考试全国统考课程安排有关事项的通知》（教试中心函〔2017〕122号）的规定，结合我省调整开考次数的实际情况，编制了广东省高等教育自学考试2018年各次考试开考课程考试时间安排表和使用教材一览表（见附件1－4），现予以公布，并就有关事项说明如下：<br/>考生须按照广东省自学考试委员会编印的最新一期《报考必读》中的规定选报专业。<br/>中英合作金融管理、商务管理（基础科段）（本科段）四个专业开考课程安排另文通知。<br/>2018年4月14日下午和2018年10月20日上午安排开考的《计算机应用基础》（课程代码：00018），只接受香港籍考生在香港考试及评核局报考。<br/>根据教试中心函〔2017〕122号文规定，我省高等教育自学考试命题时将考试之日起六个月前由全国人大颁布的法律和国务院颁布的法规列入相应课程的考试范围。凡大纲、教材内容与现行法律、法规不符的，以现行法律、法规为准。<br/>本文件及附件可在广东省教育考试院网站查询下载，网址：www.eeagd.edu.cn。<br/>&nbsp;</p><p>&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp; <br/></p><p style=\"text-align: right;\">广东省自学考试委员会办公室<br/>2017年9月27日</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '4', '1521773135', '1522632142', '', '', '');
INSERT INTO `lz_article` VALUES ('64', '14', '10', 'lirenjy', '2017年网络教育统考须知', 'color:;font-weight:normal;', '/uploads/20180326/50d6585d3c7b6b96901edd5b38d97f77.png', '', '专科起点本科教育入学考试科目中没有“大学语文”或“高等数学”成绩的，按不同专业须加试统考科目“大学语文(B)”或“高等数学(B)”, 加试科目的选择同高中起点本科学生的专业分类。', '<p><br/></p><p>【考试科目】<br/>包括《大学英语》、《计算机应用基础》、《大学语文》和《高等数学》四门课程。统考科目按不同学历起点和专业类别确定。<br/>高中起点本科学生的统考科目：<br/>理工类：<br/>大学英语(B)、计算机应用基础、高等数学(B)(数学专业考“高等数学(A)”)<br/>文史法医教育类：<br/>大学英语(B)、计算机应用基础、大学语文(B)(文史类专业考“大学语文(A)”)<br/>英语类：<br/>大学英语(A)、计算机应用基础、大学语文(B)<br/>艺术类：<br/>大学英语(C)、计算机应用基础、大学语文(B)<br/>其它专业：<br/>大学英语(B)、计算机应用基础，“高等数学(B)”和“大学语文(B)”由试点学校任选一门<br/>专业分类请参照教育部公布的专业目录<br/>专科起点本科学生的统考科目：<br/>英语类：<br/>大学英语(A)、计算机应用基础<br/>注：专科起点本科教育入学考试科目中没有“大学语文”或“高等数学”成绩的，按不同专业须加试统考科目“大学语文(B)”或“高等数学(B)”, 加试科目的选择同高中起点本科学生的专业分类。<br/>艺术类：<br/>大学英语(C)、计算机应用基础<br/>其它专业：<br/>大学英语(B)、计算机应用基础</p><p>有任何疑问，请联系立人教育老师咨询，了解相关情况！</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '5', '1521773594', '1522631196', '', '', '');
INSERT INTO `lz_article` VALUES ('49', '16', '10', 'lirenjy', '2016年全国成人高校招生办法', 'color:;font-weight:normal;', '/uploads/20180326/8d4c35224b07592ba6996542f57566c7.PNG', '', '经教育部审定核准举办成人高等学历教育的开放大学、广播电视大学、职工高等学校、职业技术学院、管理干部学院、教育学院和普通高校成（继）教院(以下统称成人高校)实行全国统一招生。招生类型分高中起点升本科(以下简称高起本)、高中起点升专科(以下简称高起专) 和专科起点升本科(以下简称专升本)三种。在校学习形式分脱产、业余和函授三种，脱产最短学习时间为：高起本四年、高起专和专升本两年，业余和函授最短学习时间为：高起本五年、高起专和专升本两年半', '<p style=\"text-align: center;\"><br/></p><p style=\"text-align: left;\">一、招生学校<br/>　　经教育部审定核准举办成人高等学历教育的开放大学、广播电视大学、职工高等学校、职业技术学院、管理干部学院、教育学院和普通高校成（继）教院(以下统称成人高校)实行全国统一招生。招生类型分高中起点升本科(以下简称高起本)、高中起点升专科(以下简称高起专) 和专科起点升本科(以下简称专升本)三种。在校学习形式分脱产、业余和函授三种，脱产最短学习时间为：高起本四年、高起专和专升本两年，业余和函授最短学习时间为：高起本五年、高起专和专升本两年半。<br/>　　各成人高校应依照《中华人民共和国教育法》《中华人民共和国高等教育法》和教育部有关招生规定制订本学校招生章程，并以适当方式向社会公布。招生章程必须如实反映本校的实际情况，内容包括招生范围、学习形式、学制和年限、办学地点、录取原则、收费标准以及专业加试科目的时间、地点等。各成人高校应对招生章程的内容承担责任并负责处理遗留问题。<br/>二、分省（区、市）招生计划<br/>　　（一）成人高校招生来源计划编制工作分为两个阶段，第一阶段各成人高校编制在各地招生专业目录（包括专业、层次、学习形式、学制、招生范围、外语语种、函授站、授课地点、收费标准等内容）；第二阶段各省级教育行政部门、招生考试机构和有关部门（单位）教育司（局）根据经教育部备案的招生规模，组织所属成人高校编制各专业在各地招生计划数，招生计划数原则上不超过本校在生源地报名人数的85%。<br/>　　（二）成人高校招生来源计划实行网上编制和管理，招生来源计划的编制、上报、分送、调整等工作统一使用教育部“全国成人高校招生分省（区、市）计划网上管理系统” （以下简称“系统”）在网上进行。所有成人高校均必须使用“系统”在网上全口径编制分省计划（包括省属高校在本省的分专业计划）；各省级教育行政部门、招生考试机构和有关部门（单位）教育司（局）在网上管理所属成人高校的招生计划编制工作，包括管理本部门及所属成人高校的帐户和密码，通过“系统”网上审核、调整、打印所属成人高校的招生分省计划。部属各高等学校根据教育部确定的本校年度招生规模编制招生分省计划。<br/>　　（三）各成人高校在分省计划编制过程中要立足适应经济社会发展需要，着眼优化教育结构和提高教育质量，充分体现成人高等教育为在职从业人员服务、以业余学习为主的特点，尽可能减小全日制脱产学习的在校生规模。<br/>　　（四）成人高校举办函授教育，只能在已经按规定履行过函授站登记手续，并报教育部备案的省（区、市）招生。<br/>　　（五）各成人高校应在“系统”中提供的专业范围内设置招生专业。<br/>　　（六）医学门类中的临床医学、口腔医学、中医学、藏医学、蒙医学、维吾尔医学、针灸推拿学、预防医学、麻醉学、医学影像学和医学检验等专业不得安排函授招生计划；艺术类、外语类专业安排函授招生计划须经教育部审核备案。<br/>　　（七）各省级招生考试机构不得擅自接收并公布未经教育部汇总分送的分省招生计划，也不得擅自拒绝公布教育部汇总分送的分省招生计划。<br/>三、报名<br/>　　（一）符合下列条件的中国公民可以报名：<br/>　　1.遵守中华人民共和国宪法和法律。<br/>　　2.国家承认学历的各类高、中等学校在校生以外的从业人员和社会其他人员。<br/>　　3.身体健康，生活能自理，不影响所报专业学习。<br/>　　4.报考高起本或高起专的考生应具有高中毕业文化程度。报考专升本的考生必须是已取得经教育部审定核准的国民教育系列高等学校、高等教育自学考试机构颁发的专科毕业证书、本科结业证书或以上证书的人员。<br/>　　5.报考成人高校医学门类专业的考生应具备以下条件：<br/>　　（1）报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者县级及以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br/>　　（2）报考护理学专业的人员应当取得省级卫生行政部门颁发的执业护士证书。<br/>　　（3）报考医学门类其他专业的人员应当是从事卫生、医药行业工作的在职专业技术人员。<br/>　　（4）考生报考的专业原则上应与所从事的专业对口。<br/>　　（二）在中国定居并符合上述报名条件的外国侨民，持所在省（区、市）公安机关填发的《外国人永久居留证》或《外侨居留证》，可在有关省级招生考试机构指定的地点报名。<br/>　　（三）考生一般应在户口所在地报名并参加考试。所有参加全国统考、单考和免试入学的考生均需办理报名手续。<br/>　　（四）报名信息采集工作按照教育部的有关规定以及《各类成人高等学校招生工作管理信息标准》执行。<br/>四、考试<br/>　　（一）考试科目<br/>　　1.高起本、高起专考试按文科、理科分别设置统考科目。公共课统考科目均为语文、数学、外语三门，其中数学分文科类、理科类两种，外语分英语、日语、俄语三个语种，由考生根据报考学校招生专业要求选择一种。报考高起本的考生，除参加三门统考公共课的考试外，还需参加专业基础课的考试，理科类专业基础课为“物理、化学综合”（简称理化），文科类专业基础课为“历史、地理综合”（简称史地）。以上试题均由教育部统一命制。<br/>　　2.专升本考试统考科目为政治、外语和一门专业基础课。试题由教育部统一命制（外语非英语语种由各省、自治区、直辖市视本地生源情况自行确定是否开设并自行组织命题）。<br/>　　3.成人高校艺术和体育类专业招生必须对考生进行专业加试，其它专业是否加试由各成人高校自行确定。成人高校进行专业加试必须在有关省级招生考试机构向社会公布的招生简章中注明并自行命题和组织考试。考生的专业加试成绩及成人高校确定的加试合格考生名单必须于成人高考前报送有关省级招生考试机构备案。<br/>　　4.民族自治地区用本民族语文授课的成人高校或系（科）的招生，由自治区招生考试机构用民族文字自行命题、组织考试。<br/>　　少数民族聚居地区使用民族语文授课的少数民族考生，报考用汉语文授课的成人高校，汉语文试题由教育部另行命题，不翻译成少数民族文字，考生使用汉文字答卷；其他各科（包括外语试题导语）可翻译成少数民族文字，用规定的民族文字答卷；有关省（区、市）可自行决定是否对上述少数民族考生加试少数民族语文，并负责命制试题和组织考试。<br/>　　5.统考科目按教育部《全国成人高等学校招生复习考试大纲》（2011年版）的要求命题。所有统考科目每科试题满分均为150分；高起本、高起专的统考科目每门考试时间为120分钟，专升本每门考试时间为150分钟。<br/>　　（二）考试的组织<br/>　　1.考试日期为10月29日、30日。<br/>　　2.阅卷工作由省级高校招生委员会组织本行政区域内高等学校统一进行。考生成绩通知本人，不公布。不对考生查卷。<br/>　　3.成人高校招生统一考试应当按照相关考务规则实施并一律使用国家教育考试标准化考点。<br/>五、录取<br/>　　（一）成人高校招生工作全部实行计算机网上录取。录取工作应于12月初开始，并于12月底前结束。<br/>　　（二）各成人高校和省级招生考试机构应按照“学校负责、招办监督”的要求实施录取工作。即：在符合成人高校招生报名条件、考试成绩达到投档分数线的考生中，由招生学校根据“从高分到低分择优录取”的原则，决定考生录取与否和录取的专业，同时负责对遗留问题的处理。省级招生考试机构在录取时根据国家招生政策对招生学校录取名单进行审核，对其录取工作予以监督，对不符合招生政策规定的行为予以纠正。<br/>　　（三）录取的最低控制分数线由各省级高校招生委员会根据成人高等教育对新生的最基本要求，参照考生统考科目成绩和本省（区、市）的招生规模划定。其中，高起本、高起专的艺术类专业（除史论、编导类专业外）和体育类专业的最低控制分数线不得低于相应招生类型和考试科类最低控制分数线的70％，艺术类高起本、高起专考生数学成绩不计入总分，由招生学校录取时作为参考；高起专的公安类成人高校的全部专业、医学(药学类除外)专业和中央司法警官学院的监狱管理专业、劳教管理专业，如上线生源不足可适当降低最低控制分数线，但不得低于相应考试科类最低控制分数线的70％。专升本和高起本的录取的最低控制分数线需报教育部备案。<br/>　　（四）录取时，省级招生考试机构应按考生统考科目总成绩向招生学校顺序投档，对于有专业课加试的学校，根据加试合格考生名单向招生学校顺序投档。招生学校根据考生参加统考的成绩，由高分到低分择优录取（艺术类和体育类专业在考生文化统考成绩达到最低录取控制分数线的基础上，原则上按招生学校的加试专业课成绩从高分到低分择优录取）；对于农林、水利、地质、矿业、测绘、远洋运输、社会福利类所有专业，以及专升本、高起本公安、监狱、劳教类专业，如上线生源不足可适当降分向招生学校投档，降分幅度最大不得超过20分。<br/>未完成的招生计划，应统一公开征集志愿录取。<br/>　　（五）录取及投档照顾政策<br/>　　1.获得“全国劳动模范”、“全国先进工作者”称号，“全国‘五一’劳动奖章”获得者，经本人申请并出具相关证书或证明，省级招生考试机构审核，招生学校同意，可免试入学。<br/>　　2.奥运会、世界杯赛和世界锦标赛的奥运会项目前八名获得者、非奥运会项目前六名获得者；亚运会、亚洲杯赛和亚洲锦标赛的奥运会项目前六名获得者、非奥运会项目前三名获得者；全运会、全国锦标赛和全国冠军赛的奥运会项目前三名获得者、非奥运会项目冠军获得者。上述运动员经本人申请并出具省级体育行政部门审核的《优秀运动员申请免试进入成人高等学校学习推荐表》（国家体育总局监制），省级招生考试机构审核，招生学校同意，可免试入学。<br/>　　3.参加“选聘高校毕业生到村任职”“三支一扶 (支教、支农、支医和扶贫) ”“大学生志愿服务西部计划”“农村义务教育阶段学校教师特设岗位计划”等项目服务期满并考核合格，以及应征入伍服义务兵役退役的普通高职（专科）毕业生，凭身份证、普通高职（专科）毕业证、士兵退役证或相关项目考核合格证，可申请免试就读所在省（区、市）的成人高校专升本。<br/>　　4.运动健将和武术项目武英级运动员称号获得者（须经省级体育行政部门审核并出具运动成绩证明），省级招生考试机构可以在考生考试成绩基础上增加50分投档（一级运动员称号获得者为30分），是否录取由招生学校确定。<br/>　　5.符合下列条件之一的考生，省级招生考试机构可以在考生考试成绩基础上增加20分投档，是否录取由招生学校确定。<br/>　　（1） 获得地级以上（含）人民政府，国务院各部委及各省（区、市）厅、局系统，国家特大型企业授予的劳动模范、先进生产（工作）者及科技进步（成果）奖获得者。<br/>　　（2） 获得省级工、青、妇等组织授予“五一劳动奖章”“新长征突击手”“三八红旗手”称号者。<br/>　　（3） 解放军、武警部队、公安干警荣立个人三等功以上者。<br/>　　（4） 归侨、归侨子女、华侨子女、台湾省籍考生。<br/>　　（5） 烈士子女、烈士配偶。<br/>　　（6） 边疆、山区、牧区和少数民族聚居地区的少数民族考生、国防科技工业三线企业单位（位于地级以上人民政府所在地的除外）获得企业表彰的先进生产（工作）者。<br/>　　（7） 年满25周岁以上人员。<br/>　　6.自主就业的退役士兵，省级招生考试机构可以在考生考试成绩基础上增加10分投档，是否录取由招生学校确定。<br/>　　符合上述照顾政策的考生必须于报名时交验相应的原始证件。符合两项以上照顾政策的考生，其照顾分数不得累计。<br/>　　（六）录取阶段，所有成人高校必须使用教育部研制的“系统”在网上进行分省（区、市）计划的调整，各省级招生考试机构要积极配合成人高校做好生源和计划的调整工作。<br/>　　（七）录取新生名单由招生学校提出，省级招生考试机构审核。招生学校按审核后的录取名单发放录取通知书。<br/>　　（八）录取工作结束后，各省级招生考试机构须向教育部报送录取新生的数据库，并向招生学校提供本年录取新生名单。<br/>六、信息公开公示<br/>　　（一）建立分级负责、规范有效的省、地、高校等多级高校招生信息公开制度。高校招生信息公开工作要做到信息采集准确、公开程序规范、内容发布及时。<br/>　　（二）各级教育行政部门、招生考试机构、有关高校应按照有关要求，分别公开招生政策、高校招生资格、高校招生章程、高校招生计划、考生资格、录取程序、录取结果、咨询及申诉渠道、重大违规事件及处理结果、录取新生复查结果等相关信息。<br/>　　各级教育行政部门、招生考试机构、有关高校应按照职责分工，对享受政策加分照顾、免试入学的考生相关信息进行公示。公示的考生资格信息应包括姓名、性别、所在单位、享受照顾政策类别、资格条件、测试项目、测试成绩、合格标准、拟录高校及专业和录取优惠分值等。有关单位应于录取前在各自门户网站进行信息公示，并保持公示半年。<br/>　　（三）各级教育行政部门、招生考试机构、有关高校要在公示有关信息的同时，提供举报电子信箱、电话号码、受理举报的单位和通讯地址，并按照国家有关信访规定对举报事项及时调查处理。<br/>七、新生复查<br/>　　新生入学注册期间，招生学校要对已报到新生信息进行全面复查。对其中不符合条件或弄虚作假、违纪舞弊者，应按照相关规定取消其入学资格；对不能通过学籍电子注册的专升本新生，必须对考生报名时的最后学历进行复核，不能提供经教育部审定核准的国民教育系列高等学校、高等教育自学考试机构颁发的相应层次及以上毕业证书者，由招生学校取消其入学资格，并报有关省级招生考试机构备案。<br/>八、其他<br/>　　（一）对违反考试有关规定应予处罚的，依照《国家教育考试违规处理办法》（教育部令第33号）执行。对违反有关规定应予处罚的，参照《普通高等学校招生违规行为处理暂行办法》（教育部令第36号）执行。<br/>　　（二）各省级招生考试机构可根据本办法结合本地区的实际情况做必要的补充规定。</p><p style=\"text-align: left;\"><br/></p><p style=\"text-align: left;\"><br/></p><p style=\"text-align: left;\"><br/></p><p style=\"text-align: left;\"><br/></p><p style=\"text-align: left;\"><br/></p><p style=\"text-align: left;\"><br/></p><p style=\"text-align: left;\"><br/></p><p style=\"text-align: left;\"><br/></p>', '0', '1', '1', '0', '', '0', '0', '4', '1521685439', '1522631850', '教育部', '', '');
INSERT INTO `lz_article` VALUES ('50', '16', '10', 'lirenjy', '高等教育自学考试暂行条例', 'color:;font-weight:normal;', '/uploads/20180326/e8d77a72aed29f4cc73bcccfc4bc28db.png', '', '2014年7月29日，国务院颁布的《国务院关于修改部分行政法规的决定》，第六条第三款第三项修改为：“制定高等教育自学考试开考专业的规划，审批开考本科专业”', '<p><br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2014年7月29日，国务院颁布的《国务院关于修改部分行政法规的决定》，第六条第三款第三项修改为：“制定高等教育自学考试开考专业的规划，审批开考本科专业”；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第十一条修改为：“高等教育自学考试开考专科新专业，由省考委确定；开考本科新专业，由省考委组织有关部门和专家进行论证，并提出申请，报全国考委审批”）。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br/></p><p style=\"text-align: center;\">&nbsp; 第一章 总 则</p><p><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第一条　为建立高等教育自学考试制度，完善高等教育体系，根据宪法第十九条“鼓励自学成才”的规定，制定本条例。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二条　本条例所称高等教育自学考试，是对自学者进行以学历考试为主的高等教育国家考试，是个人自学、社会助学和国家考试相结合的高等教育形式。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 高等教育自学考试的任务，是通过国家考试促进广泛的个人自学和社会助学活动，推进在职专业教育和大学后继续教育，造就和选拔德才兼备的专门人才，提高全民族的思想道德、科学文化素质，适应社会主义现代化建设的需要。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第三条　中华人民共和国公民，不受性别、年龄、民族、种族和已受教育程度的限制，均可依照本条例的规定参加高等教育自学考试。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第四条　高等教育自学考试，应以教育为社会主义建设服务为根本方向，讲求社会效益，保证人才质量。根据经济建设和社会发展的需要，人才需求的科学预测和开考条件的实际可能，设置考试专业。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第五条　高等教育自学考试的专科（基础科）、本科等学历层次，与普通高等学校的学历层次水平的要求应相一致。<br/></p><p><br/></p><p style=\"text-align: center;\">第二章 考试机构</p><p><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第六条　全国高等教育自学考试指导委员会（以下简称“全国考委”）在国家教育委员会领导下，负责全国高等教育自学考试工作。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 全国考委由国务院教育、计划、财政、劳动人事部门的负责人，军队和有关人民团体的负责人，以及部分高等学校的校（院）长、专家、学者组成。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 全国考委的职责是：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （一）根据国家的教育方针和有关政策、法规，制定高等教育自学考试的具体政策和业务规范；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （二）指导和协调各省、自治区、直辖市的高等教育自学考试工作；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （三）制定高等教育自学考试开考专业的规划，审批或委托有关省、自治区、直辖市的高等教育自学考试机构审批开考专业；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （四）制定和审定高等教育自学考试专业考试计划、课程自学考试大纲；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （五）根据本条例，对高等教育自学考试的有效性进行审查；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （六）组织高等教育自学考试的研究工作。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 国家教育委员会设立高等教育自学考试工作管理机构，该机构同时作为全国考委的日常办事机构。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第七条　全国考委根据工作需要设立若干专业委员会，负责拟订专业考试计划和课程自学考试大纲，组织编写和推荐适合自学的高等教育教材，对本专业考试工作进行业务指导和质量评估。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第八条　省、自治区、直辖市高等教育自学考试委员会（以下简称“省考委”）在省、自治区、直辖市人民政府领导和全国考委指导下进行工作。省考委的组成，参照全国考委的组成确定。<br/>&nbsp;<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 省考委的职责是：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （一）贯彻执行高等教育自学考试的方针、政策、法规和业务规范；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （二）在全国考委关于开考专业的规划和原则的指导下，结合本地实际拟定开考专业，指定主考学校；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （三）组织本地区开考专业的考试工作；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （四）负责本地区应考者的考籍管理，颁发单作合格证书和毕业证书；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （五）指导本地区的社会助学活动；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （六）根据国家教育委员会的委托，对已经批准建校招生的成人高等学校的教学质量，通过考试的方法进行检查。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 省、自治区、直辖市教育行政部门设立高等教育自学考试工作管理机构，该机构同时作为省考委的日常办事机构。<br/>&nbsp; <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第九条　省、自治区人民政府的派出机关所辖地区（以下简称“地区”）、市、直辖市的市辖区高等教育自学考试工作委员会（以下简称“地市考委”）在地区行署或市（区）人民政府领导和省考委的指导下进行工作。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 地市考委的职责是：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （一）负责本地区高等教育自学考试的组织工作；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （二）指导本地区的社会助学活动；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （三）负责组织本地区高等教育自学考试毕业人员的思想品德鉴定工作。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 地市考委的日常工作由当地教育行政部门负责。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第十条　主考学校由省考委遴选专业师资力量较强的全日制普通高等学校担任。主考学校在高等教育自学考试工作上接受省考委的领导，参与命题和评卷，负责有关实践性学习环节的考核，在毕业证书上副署，办理省考委交办的其他有关工作。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 主考学校应设立高等教育自学考试办事机构，根据任务配备专职工作人员，所需编制列入学校总编制数内，由学校主管部门解决。<br/></p><p><br/></p><p style=\"text-align: center;\">第三章 开考专业</p><p><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第十一条　高等教育自学考试开考新专业，由省考委组织相关部门和专家进行论证，并提出申请，报全国考委审批。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第十二条　可以实行省际协作开考新专业。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第十三条　开考新专业必须具备下列条件：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （一）有健全的工作机构，必要的专职人员和经费；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （二）有符合本条例第一条规定的主考学校；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （三）有专业考试计划；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （四）有保证实践性环节考核的心要条件。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第十四条　开考承认学历的新专业，一般应在普通高等学校已有专业目录中选择确定。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第十五条　国务院各部委、各直属机构和军队系统要求开考本系统所需专业的，可以委托省考委组织办理，或由全国考委协调办理。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第十六条　全国考委每年一次集中进行专业审批。省考委应于每年六月底前将申报材料报送全国考委，逾期者延至下一年度重新申季办理。审批结果由全国考委于当年第三季度内下达。凡批准开考的专业均可于次年接受报考，并于首次开考前半年向社会公布开考专业名称和专业考试计划。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p style=\"text-align: center;\">第四章 考试办法</p><p><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第十七条　高等教育自学考试的命题由全国考委统筹安排，分别采取全国统一命题、区域命题、省级命题三种办法。逐步建立题库，实现必要的命题标准化。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 试题（包括副题）及参考答案，评分标准启用前属绝密材料。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第十八条　各专业考试计划的安排，专科（基础科）一般为三至四年，本科一般为四至五年。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第十九条　按照专业考试计划的要求，每门课程进行一次性考试。课程考试合格者，发给单科合格证书，并按规定计算学分。不及格者，可参加下一次该门课程的考试。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二十条　报考人员可在本地区的开考专业范围内，自愿选择考试专业，但根据专业要求对报考对象作职业上必要限制的专业除外。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 提倡在职人员按照学用一致的原则选择考试专业。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 各级各类全日制学校的在校生不得报考。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二十一条　报考人员应按本地区的有关规定，到省考委或地市考委指定的单位办理报名手续。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二十二条　已经取得高等学校研究生、本科生或专科生学历的人员参加高等教育自学考试的，可以按照有关规定免考部分课程。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二十三条　高等教育自学考试以地区、市、直辖市的市辖区为单位设考场。有条件的，地市考委经省考委批准可在县设考场，由地市考委直接领导。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p style=\"text-align: center;\">第五章 考籍管理</p><p><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二十四条　高等教育自学考试应考者取得一门课程的单科合格证书后，省考委即应为其建立考籍管理档案。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 应考者因户口迁移或工作变动需要转地区或转专业参加考试的，按考籍管理办法办理有关手续。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二十五条　高等教育自学考试应考者符合下列规定，可以取得毕业证书：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （一）考完专业考试计划规定的全部课程，并取得合格成绩；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （二）完成规定的毕业论文（设计）或其他教学实践任务；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （三）思想品德鉴定合格。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 获得专科（基础科）或本科毕业证书者，国家承认其学历。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二十六条　符合相应学位条件的高等教育自学考试本科毕业人员，由有学位授予权的主考学校依照（中华人民共和国学位条例）规定，授予相应的学位。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二十七条　高等教育自学考试应考者毕业时间，为每年的六月和十二月。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p style=\"text-align: center;\">第六章 社会助学</p><p><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二十八条　国家鼓励企业、事业单位和其他社会力量，根据高等教育自学考试的专业考试计划和课程自学考试大纲的要求，通过电视、广播、函授、面授等多种形式开展助学活动。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第二十九条　各种形式的社会助学活动，应当接受高等教育自学考试机构的指导和教育行政部门的管理。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第三十条　高等教育自学考试辅导材料的出版、发行，应遵守国家的有关规定。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p style=\"text-align: center;\">第七章 毕业人员的使用与待遇</p><p><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第三十一条　高等教育自学考试专科（基础科）或本科毕业证书获得者，在职人员由所在单位或其上级主管部门本着用其所学、发挥所长的原则，根据工作需要，调整他们的工作；非在职人员（包括农民）由省、自治区、直辖市劳动人事部门根据需要，在编制和增人指标范围内有计划地择优录用或聘用。</p><p style=\"text-align: center;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第三十二条　高等教育自学考试毕业证书获得者的工资待遇：非在职人员录用后，与普通高等学校同类毕业生相同；在职人员的工资待遇低于普通高等学校同类毕业生的，从获得毕业证书之日起，按普通高等学校同类毕业生工资标准执行。<br/></p><p style=\"text-align: center;\">&nbsp; 第八章 考试经费</p><p><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第三十三条　县以上各级所需高等教育自学考试经费，按照现行财政管理体制，在教育事业费中列支。地方各级人民政府应妥善安排，予以保证。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第三十四条　各业务部门和军队系统要求开考本部门、本系统所需要专业的，须向高等教育自学考试机构提供考试补助费。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第三十五条　高等教育自学考试所收缴的报名费，应用于高等教育自学考试工作，不得挪作他用。</p><p><br/></p><p style=\"text-align: center;\">&nbsp; 第九章 奖励和处罚</p><p><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第三十六条　有下列情形之一的个人或单位，可由全国考委或省考委给予奖励：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （一）参加高等教育自学考试成绩特别优异或事迹突出的；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （二）从事高等教育自学考试工作，作出重大贡献的；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （三）从事高等教育自学考试的社会助学工作，取得显著成绩的。<br/>&nbsp; <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第三十七条　高等教育自学考试应考者在考试中有夹带、传递、抄袭、换卷、代考等舞弊行为以及其他违反考试规则的行为，省考委视情节轻重，分别给予警告、取消考试成绩、停考一至三年的处罚。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第三十八条　高等教育自学考试工作人员和考试组织工作参与人员有下列行为之一的，省考委或其所在单位取消其考试工作人员资格或给予行政处分：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （一）涂改应考者试卷，考试分数及其他考籍档案材料的；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （二）在应考者证明材料中弄虚作假的；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （三）纵容他人实施本条（一）、（二）项舞弊行为的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第三十九条　有下列破坏高等教育自学考试工作行为之一的个人，由公安机关或司法机关依法追究法律责任：</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （一）盗窃或泄露试题及其它有关保密材料的。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （二）扰乱考场秩序不听劝阻的；</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; （三）利用职权徇私舞弊，情节严重的。</p><p style=\"text-align: center;\"><br/>&nbsp; 第十章 附 则</p><p><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第四十条　国家教育委员会根据本务例制定实施细则。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 省、自治区、直辖市人民政府可以根据本条例和国家教育委员会的实施细则，制定具体实施办法。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第四十一条　本条例由国家教育委员会负责解释。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 第四十二条　本条例自发布之日起施行。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1981年1月13日《国务院批转教育部关于高等教育自学考试试行办法的报告》和1983年5月3日《国务院批转教育部等部门关于成立全国高等教育自学考试指导委员会的请示的通知》同时废止。</p><p><br/></p><p><br/></p><p style=\"margin: 5px 0px; text-align: right; color: rgb(0, 0, 0); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; -webkit-text-stroke-width: 0px; background-color: transparent;\">高等教育自学考试暂行条例<br/>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 国发［1988］15号<span style=\"background-color: transparent; color: rgb(0, 0, 0); display: inline; float: none; font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">（</span><span style=\"background-color: transparent; color: rgb(0, 0, 0); display: inline; float: none; font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">1988年3月3日发布）</span></p><p style=\"text-align: right;\"><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '7', '1521685659', '1522631867', '教育部', '', '');
INSERT INTO `lz_article` VALUES ('51', '16', '10', 'lirenjy', '广东省2014年成人高考网上报名实施细则', 'color:;font-weight:normal;', '/uploads/20180326/0aad5c8fcd241dce9ca791ead0fc588b.png', '', '2014年，我省成人高校招生录取实行计算机远程网上录取。为确保考生电子档案的准确性，现制定如下成人高考网上报名实施细则。', '<p><br/></p><p>&nbsp; &nbsp; &nbsp;&nbsp; 2014年，我省成人高校招生录取实行计算机远程网上录取。为确保考生电子档案的准确性，现制定如下成人高考网上报名实施细则。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第一条 成人高等学校招生统一考试采取通过互联网报名方式，实行先预报名后确认报名制度。预报名时考生通过互联网了解报考须知以及各成人招生学校招生专业（不含专业计划数），在网上自行录入本人的基本信息，然后在省招生办公室规定的确认报名时间内到市招生办公室（考试中心）指定的报名点确认报名资格、校对信息、电子摄像、并交纳报名费和打印报名校对表。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第二条 考生通过互联网报名自行录入的基本信息内容为：姓名、性别、出生年月、身份证号码、报考类别、考生类别、考试科目组、通讯地址、邮政编码、联系电话、个人密码、选择考试的县（区）地点和院校及专业志愿等。<br/>专升本考生须录入专科毕业证年份（4位半角阿拉伯数字）、毕业学校、毕业专业、专科毕业证的证书编号。应届专科毕业生报考专升本时，证书编号可输入“待定”，毕业年份可输入“2015”。应届专科毕业生是指在报名时未取得专科毕业证书但在2015年春季入学时能取得专科毕业证书的考生。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第三条 成人高考考试类别分为文史类、理工类、外语类、体育类和艺术类五大类。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第四条 成人高考考生报考类别分为专科升本科、高中起点升本科、高中起点专科。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第五条 成人高校招生计划形式分为脱产、函授和业余三种。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第六条 考生必须按规定录取批次填报院校志愿。成人高校录取批次分为：第一批专科升本科、高中起点升本科班；第二批高中起点专科脱产班；第三批高中起点专科业余、函授班。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第七条 考生可填报的院校志愿个数如下：第一批专升本2个，高中起点本科志愿1个，第二批高中起点专科脱产志愿2个，第三批高中起点专科非脱产志愿3个。报考“圆梦计划”的考生须填报实施“圆梦计划”的院校志愿。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第八条 考生可在广东省招生办公室公布的《广东省成人高等学校招生专业目录》或在成人高考报名系统网页上查询所要报考的院校、专业，在网页的志愿栏目上输入院校码、专业码。 <br/>&nbsp; &nbsp; &nbsp;&nbsp; 第九条 报考专升本的考生，报名时必须交验专科毕业证书原件及复印件。经广东省招生委员会核准录取的成人高等学校应届专科毕业生（指报名时未取得专科毕业证但在2015年春季入学报到时能取得专科毕业证书的考生）可报考我省成人高等学校，报名时需交验经广东省招生委员会核准的高等学校新生录取名册复印件及学校出具的各科成绩（每科具体分数）合格证明。参加自学考试各科考试合格，符合毕业条件，但未领取毕业证书的自学考试毕业生必须交验省自考委出具的各科成绩合格证明。专升本考生入学报到时必须持有经教育部审定核准的国民教育系列高等学校、高等教育考试机构颁发的专科或以上毕业证书，否则不得办理注册手续，同时，取消专升本录取资格。考生专科毕业证书有疑异或在教育部学信平台无法查到考生专科毕业信息，考生须于2014年10月31日前向省招办提交学历验证结果。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第十条 考生预报名可采取两种报名方式<br/>&nbsp; &nbsp; &nbsp; &nbsp; 1.考生登陆到省教育考试院（网址为：http://www.ecogd.edu.cn/cr）的成人高考报名系统网页后，按网页提示自行录入有关信息。<br/> &nbsp; &nbsp; &nbsp;&nbsp; 2.报名点可在网页上打印空的预报名表交给考生。考生将该表填好后把表交报名点或有上网条件的人帮助录入。报名点可即时录入也可集中录入。市招生办公室（考试中心）也可预先印好空的预报名表，再把录入预报名内容后的预报名顺序号写在该预报名表上。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第十一条 凡符合照顾加分（年龄及山区县加分考生除外）的考生需准备好相关的证明材料及其复印件，在确认报名时交报名点工作人员审核，并由工作人员汇总后交市招生办公室（考试中心）审核，由市招生办公室（考试中心）负责在报名系统录入。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第十二条 考生预报名时，需准确选择考试县（区）地点，并按系统的提示到相关的报名点办理报名确认手续。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第十三条 预报名时考生需设置6位数字的个人密码，以便修改本人的资料及查询考试成绩和录取结果。<br/> &nbsp; &nbsp; &nbsp; 第十四条 考生进入预报名网页，须认真阅读报名流程、考试要求，以及《考生须知》和《广东省2014年成人高校招生统一考试诚信考试承诺书》，阅读完毕确认，才可进入填报考生基本信息，否则系统拒绝接受考生预报名。考生预报名正确提交后，需记住系统所给出的预报名顺序号及个人密码。确认报名时，考生须同时确认《广东省2014年成人高校招生统一考试诚信考试承诺书》。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第十五条 办理报名确认手续时，考生先提供自己的预报名顺序号给报名点工作人员。工作人员录入该考生的预报名顺序号并使用身份证阅读器读取考生的资料,核对相关信息后进行电子摄像，并提交。正确提交后系统自动生成考生号，并打印出该考生的正式报名表。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第十六条 考生要认真核对本人报名表中的内容，并签名确认。如果核对时发现有错误，请考生在正式报名表上用笔更正，再交给报名点工作人员修改，重新确认。确认报名时，若考生忘记自己的预报名顺序号，则可根据考生的身份证号或姓名、出生日期进行查询。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 第十七条 建立考生电子档案采取自下而上，县（市、区）、市、省招生办公室分级管理的模式。考生电子档案一经签名确认，任何人不得擅自更改。考试与录取管理以考生签名确认的正式报名表为依据。因考生本人录入的信息错误以及因填报志愿不当原因而落选的，其责任由考生本人负责。<br/></p><p>&nbsp; &nbsp; &nbsp;&nbsp; 本实施细则由广东省教育考试院负责解释。<br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '0', '1521686431', '1522631880', '广东省教育考试院', '', '');
INSERT INTO `lz_article` VALUES ('53', '16', '10', 'lirenjy', '广东省2017年成人高等学校招生工作规定', 'color:;font-weight:normal;', '/uploads/20180326/caa20d46502cf44238b32b955a957be4.jpg', '', '根据《教育部办公厅关于做好2017年全国成人高校考试招生工作的通知》（教学厅〔2017〕12号）精神，结合我省成人高等教育发展的实际，特制订2017年广东省成人高等学校招生工作规定。', '<p><br/></p><p>&nbsp; &nbsp; &nbsp;&nbsp; 根据《教育部办公厅关于做好2017年全国成人高校考试招生工作的通知》（教学厅〔2017〕12号）精神，结合我省成人高等教育发展的实际，特制订2017年广东省成人高等学校招生工作规定。<br/>一、招生院校<br/>（一）招生院校及层次、学制。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 经教育部审定核准举办成人高等学历教育的开放大学、广播电视大学、职工高等学校、职业技术学院、管理干部学院、教育学院、独立设置的函授学院和普通高校所属的成人（继续）教育学院（以下统称成人高校）实行全国统一考试、招生。成人高等学历教育的招生层次包括：专科起点升本科（以下简称专升本），高中起点升本科（以下简称高起本），高中起点升专科（以下简称高起专）。各学校根据相关规定可采用脱产、业余或函授形式进行成人高等学历教育，脱产最短学习时间为：高起本四年，高起专和专升本两年；业余和函授最短学习时间为：高起本五年，高起专和专升本两年半。<br/>（二）招生章程。<br/>&nbsp; &nbsp; &nbsp; &nbsp; 各成人高校应依照《中华人民共和国教育法》、《中华人民共和国高等教育法》和教育部有关招生规定制订本校招生章程，并以适当方式向社会公布。招生章程必须反映本校的实际情况，内容包括办学类型、招生范围、学习形式、学制、办学地点、录取原则、收费标准以及专业加试科目的时间、地点等。各成人高校应对招生简章的内容承担相应责任并负责处理遗留问题。<br/>二、招生计划<br/>（一）编制招生专业及计划。成人高校招生规模由省教育厅按照国家有关招生政策确定，报教育部备案。部属、外省、本省各成人高校本科、专科层次招生专业及计划，经主管部门或本省教育行政部门审核后，由各有关成人高校按教育部2017年全国成人高校招生工作进程表的要求，使用“全国成人高校招生分省计划编制系统”在互联网上及时编制2017年成人高校招生信息（包括专业、层次、学习形式、学制、招生范围、外语语种、函授站、授课地点、收费标准等内容），并按“系统”中提供的专业范围内设置招生专业。各成人高校根据教育部和省教育厅统一的工作部署编制各专业的招生计划数。<br/>（二）公布招生专业及计划。广东省招生办公室根据教育部汇总分发的各成人高校在广东招生专业信息，核对和规范相关信息后于考生报名前向社会公布各成人高校招生专业目录（不含专业计划数）。未经广东省招生办公室向社会公布的院校及专业不得安排招生。为切实维护招生计划的严肃性，各招生院校必须履行向社会公布的招生专业的承诺，不得随意取消、变更已向社会公布的招生专业。因特殊原因需取消专业招生计划的，学校必须妥善解决该专业上线考生的遗留问题。广东省教育考试院于报名前，通过广东省教育考试院网站（网址http://www.ecogd.edu.cn）统一向社会公布各成人高校招生专业信息，在录取前公布各校分专业招生计划。<br/>（三）招生计划编制要求。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 1.各成人高校在计划编制过程中要充分体现成人高等教育为在职从业人员服务、以业余和函授学习为主的特点，尽可能减小全日制脱产学习的在校生规模。普通高等学校举办的成人高等学历教育一律不得招收脱产学生，凡违规招收脱产学生的普通高校将取消其成人高等学历教育招生资格。<br/> &nbsp; &nbsp; &nbsp; 2.省外成人高校在我省设置函授站（点），须报广东省教育厅备案。对于未经省教育厅核准的函授站(点)，广东省招生办公室一律不准予招生。各成人高校业余形式招生计划不得安排跨省招生，培养地点须在学校所在地。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 3.根据《教育部、卫生部关于举办高等医学教育的若干意见》（教高〔2002〕10号）文件要求，医学门类中的临床医学、口腔医学、中医学、针灸推拿学、预防医学、麻醉学、医学影像学和医学检验等专业不得安排函授招生计划。艺术类、外语类专业安排函授招生计划须经教育部审核备案。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 4.普通高等学校开设的成人高等教育专业须是学校普通本、专科已有的专业。<br/>三、报名<br/>（一）报名条件。<br/>1.符合下列条件的中国公民可以报名：<br/>（1）遵守中华人民共和国宪法和法律。<br/>（2）国家承认学历的各类高、中等学校在校生以外的在职从业人员和社会其他人员。<br/>（3）报考高起本或高起专考生应具有高中毕业文化程度。报考专升本的考生必须是已取得经教育部审定核准的国民教育系列高等学校、高等教育自学考试机构颁发的专科毕业证书、本科结业证书或以上证书的人员。经广东省招生委员会核准录取的成人高等学校应届专科毕业生（指2018年3月31日前可取得专科毕业证书的学生）可报考我省成人高等学校（不含外省高校在我省设立的函授站），录取考生2018年春季入学报到时须持有经教育部审定核准的国民教育系列高等学校、高等教育考试机构颁发的专科或以上毕业证书，否则不得办理注册手续，同时取消专升本录取资格。<br/>（4）身体健康，生活能自理，不影响所报专业学习的残疾人员。<br/>（5）根据卫生部《关于2004年全国成人高校医学类专业招生条件建议的函》（卫科教便函〔2004〕57号）要求，报考成人高校医学门类专业的考生应具备以下条件：<br/>①报考临床医学、口腔医学、预防医学、中医学等临床类专业的人员，应当取得省级卫生行政部门颁发的相应类别的执业助理医师及以上资格证书或取得国家认可的普通中专相应专业学历；或者区县级以上卫生行政部门颁发的乡村医生执业证书并具有中专学历或中专水平证书。<br/>②报考护理学专业的人员应当取得省级卫生行政部门颁发的执业护士证书。<br/>③报考医学门类其它专业的人员应是从事卫生、医药行业工作的在职专业技术人员。<br/>④考生报考的专业原则上应与所从事的专业对口。<br/>对不符合上述条件且要求报考医学门类的考生，各市、县（市、区）招生办公室要以适当方式告知其毕业后所获得的医学成人高等教育文凭将不能作为参加执业医师、执业护士考试的依据，请其慎重报考。<br/>2.持广东省公安机关填发的《外国人永久居留证》或《外侨居留证》，在中国定居并符合上述报名条件的外国侨民。<br/>（二）报名流程。<br/>1.报名时间。各类成人高等学校招生报名分网上报名和现场确认信息两个阶段。考生网上报名时间：9月1日-5日，现场确认信息时间：9月6日-10日，各市招办处理报名遗留问题时间：9月11日-9月12日。<br/>2.网上报名。<br/>（1）登录系统并输入个人基本信息。考生须登录广东省教育考试院网站（网址：http://www.ecogd.edu.cn/cr）,进入“广东省成人高校招生网上报名系统”网页，通过报名系统了解我省成人高校招生实施办法、报考须知、各成人高校招生专业，签订诚信考试承诺书，自行录入本人基本信息。<br/>（2）报考专升本的考生须进行在线专科学历学籍验证。已取得专科毕业证书报考专升本的考生必须在报名系统“专科学历验证”模块中，输入专科毕业证书编码、毕业学校、毕业时间、毕业专业，自行进行专科学历验证，由系统反馈验证结果。报考专升本且尚未取得专科毕业证书的应届专科毕业生须进行在线专科学籍查验，预计毕业时间应在2018年3月31日之前。专科应届毕业证生必须在报名系统“专科学籍查验”模块中，输入本人身份证号码和姓名，自行进行专科学籍查验，由系统反馈验证结果。<br/>网上报名时，验证结果分“通过”和“不通过”两种。学历验证“不通过”的专科考生，请尽快登录广东省高等学校毕业生就业指导中心网页（http://www.gradjob.com.cn/defaults/bsdt/xlrz.jsp），进入“网上办事”按照“学历认证办理指南”的指引，选择广东省教育厅学历认证中心或服务代理点、或登录广东省教育厅官微“广东教育”的“学历认证”模块进行网上申请等认证受理渠道办理学历认证报告，或自行前往广东省教育厅高等学校毕业生就业指导中心学历鉴定部进行学历验证。学历验证“不通过”且10月17前未能向报名点出具“中国高等教育学历认证报告”的考生，以及学籍查验“不通过”的考生，将被视为不具备2017年成人高考专升本报考条件。<br/>（3）填报志愿。<br/>志愿栏分专升本、高起本、高起专。专升本考生可填报两所院校志愿；高起本考生可填报一所院校志愿；高起专考生可填报脱产班两所院校志愿、非脱产三所院校志愿。每个院校可填报二个专业志愿。<br/>报考高起本的考生，可单报本科，也可兼报专科，兼报专科的考生，如本科未被录取，在参加专科录取时，以语、数、外三科总成绩作为专科录取总成绩。<br/>专升本考生只在专升本栏填报，高起专考生只在专科栏填报，高起本考生可在高起本、高起专栏同时填报。考生所报志愿和专业必须与考试科类、考试科目组相一致。<br/>（4）在地级市招生办公室指定的考点选择参加考试的县（区）。<br/>（5）核对所输入的信息，无误后提交信息。牢记网上报名系统生成的报名号和自己设定的密码（报名号是考生在现场信息确认和摄像以及后期查询信息的重要信息）。<br/>（6）网上交纳报考费。未交纳报考费的考生不予报考，不编排考场。报考费一旦交纳无法退还，请不符合报名条件的考生不要报名缴费，否则后果自负。<br/>3.现场确认信息。<br/>（1）现场确认。各类考生要在省招生办公室规定的时间内，携带有关证件资料到市招生办公室指定的报名点现场确认信息及确认报考资格，进行电子摄像和指纹采集。<br/>（2）现场确认需交验的材料。<br/>①二代居民身份证原件和复印件(无身份证者凭附有照片及身份证号码的公安派出所户籍证明)。<br/>②报考专升本且已取得专科毕业证的考生，须持经教育部审定核准的国民教育系列高等学校或高等教育自学考试机构颁发的大学专科及以上毕业证书原件和复印件。我省成人高校的应届毕业生（指报名时未取得专科毕业证，但在2018年春季入学报到时能取得专科毕业证书的考生，此类考生获取毕业证时间截止到2018年3月底），可报考我省成人高等学校，报名时需交验经广东省招生办公室核准的高等学校录取新生名册复印件及学校出具的各学期各科成绩（每科具体分数）合格的证明。参加自学考试各科考试成绩合格，符合毕业条件，但未领取毕业证书的自学考试毕业生可报考我省成人高等学校，报名时必须交验省自考办出具的各科成绩合格的证明。<br/>③报考高起本、高起专的考生，须交验高中毕业证书（中职、技工学校毕业证书或高中毕业文化程度的证明）。中职、技工学校应届毕业生不得报考。<br/>④符合免试和录取时加分投档条件的考生，应填写《广东省成人高校招生录取照顾对象登记表》，并交验有关证书原件和复印件。申请免试入学的优秀运动员需交验本人申请书和省体育行政部门出具的《优秀运动员申请免试进入成人高等学校学习推荐表》；申请加分投档的运动健将和武术项目武英级运动员、一级运动员称号获得者，需出具省级体育行政部门的运动成绩证明；自主就业的退役士兵需交验由安置地县（市、区）以上退役士兵安置工作主管部门开具的相关证明；符合原扶贫开发重点县和山区县（具体区域见附件4）照顾政策的考生，需交验本人户口簿原件和复印件。未能在报名确认结束前补充提交相关材料的，视为放弃享受照顾加分政策。报名结束后一律不再受理加分、免试申请。<br/>（3）考生如果只进行了网上报名，而未在规定时间内到报名点确认，则报名无效，不能参加成人高校招生考试和录取。在网上报名期间和修改信息期间，考生网上填写的报名信息和志愿信息可以自行修改，报考类别在不增加考试科目的情况下可修改，但现场信息确认后一律不准修改。考生在网上报名时须认真填报有关信息，在现场信息确认时务必对个人信息及志愿信息进行最后的核对，保证所填信息完整无误。<br/>（4）打印准考证。符合报名资格并完成正式报名现场确认的考生，10月19日后登录报名系统自行打印准考证。<br/>（三）相关要求。<br/>1.考生原则上在户口或居住证所在县（市、区）招生办公室指定的报名点报名并参加考试。任何成人高校、机构和个人不得组织考生跨省参加成人高考报名考试。<br/>2.所有参加全国统考、院校单考和符合照顾录取免试入学的考生均需在规定时间办理报名手续。普通高职（专科）毕业生服兵役退役、“下基层”服务期满的成人本科教育免试生的报名时间及报名方式见附件5。<br/>3.考生报名时，必须用户口簿或身份证上的现用姓名和身份证号，考试和录取以此为依据。考生不得使用曾用名报名，任何人不得更改考生报名的姓名和身份证号。<br/>4.各报名点必须严格按照教育部的规定和要求，严格审查考生报名资格，把好报名关。各市招生办公室必须指定一名负责人负责审核报考专升本考生的专科毕业证书原件和复印件，以及考生毕业学校证明和录取新生名册复印件，并由审核人在复印件上签名，加盖公章。对于报考专升本且已经取得专科毕业证书的考生，实行报名系统连通中国高等教育学生信息网（学信网）“学历认证报告查询系统”的方法查验专科学历证书。若考生网上报名时验证结果为“不通过”，且在正式报名时无法提交“中国高等教育学历认证报告”的，则报名点必须向考生发放“专科毕业生验证告知书”，书面通知考生尽快登录广东省高等学校毕业生就业指导中心网站或通过广东省教育厅官微“广东教育”申请办理认证，并要求其在10月17日前向地级市招生办公室提交验证结果。未在规定时间内提交验证结果的，以及学籍查验“不通过”的考生不予打印准考证，不安排考试，不得参加录取。考生凭无效证件或其他不符合报考条件的证件，获得报名、考试、入学资格的，何时发现，何时取消考生的录取资格，由此产生的后果由考生本人负责。因考生不及时认证，造成不能参加考试和录取的，责任由考生自负。<br/>5.报考各类成人高校的考生，报名时需建立考生电子档案。考生电子档案按照教育部颁发的《各类成人高等学校招生工作管理信息标准》制作。考生电子档案内容包括考生的报名信息、志愿信息、身份证信息以及成人高考成绩等。考生电子档案一经确认，任何人不得擅自更改。考生应认真核对本人的报名表，并对其真实性和准确性负责。考试与录取管理以考生签名确认的报名表为依据。因考生本人填报的信息错误以及填报志愿不当原因而落选的，其责任应由考生本人负责。<br/>6.根据共青团广东省委员会等5部门《关于印发</p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '1', '1521687478', '1522631897', '广东省招生办公室', '', '');
INSERT INTO `lz_article` VALUES ('66', '14', '10', 'lirenjy', '2017成人高考入学考试须知', 'color:;font-weight:normal;', '/uploads/20180326/44219b0d07910d5f91bfcc16741ec4c7.gif', '', '高起本、高起专考试按文科、理科分别设置统考科目。外语分英语、俄语、日语三个语种，由考生根据招生专业目录中明确的语种要求进行选择。', '<p>考试科目<br/>1.专升本考试<br/>专升本考试统考科目均为三门。每门满分均为150分<br/>（1）哲学、文学（艺术类除外）、历史学以及中医、中药学（一级学科）：政治、外语、大学语文<br/>（2）艺术类（一级学科）：政治、外语、艺术概论<br/>（3）工学、理学（生物科学类、地理科学类、环境科学类、心理学类等四个一级学科除外）：政治、外语、高数（一）<br/>（4）经济学、管理学以及职业教育类、生物科学类、地理科学类、环境科学类、心理学类、药学类（除中药学类外）等六个一级学科：政治、外语、高数（二）<br/>（5）法学：政治、外语、民法<br/>（6）教育学（职业教育类一级学科除外）：政治、外语、教育理论<br/>（7）农学：政治、外语、生态学基础<br/>（8）医学(中医学类、药学类等两个一级学科除外)：政治、外语、医学综合<br/>（9）体育类：政治、外语、教育理论<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 上述科目实行全国统考。除日语、俄语由各省（区、市）自行组织命题外，其他科目均由教育部统一命制。各科命题范围不超出《全国成人高等学校招生复习考试大纲》。<br/>2.高中起点升本、专科考试<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 高起本、高起专考试按文科、理科分别设置统考科目。外语分英语、俄语、日语三个语种，由考生根据招生专业目录中明确的语种要求进行选择。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 报考高起本的考生，除参加三门统考公共课的考试外，还需参加专业基础课的考试，文科类专业基础课为“历史、地理综合”（简称史地），理科类专业基础课为“物理、化学综合”（简称理化）。以上试题均由教育部统一命制，每门满分150分。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 各科命题范围不超出《全国成人高等学校招生复习考试大纲》。<br/>（1）高起本各专业考试科目：<br/>文史类、外语类、艺术类：语文、数学（文）、外语、史地<br/>理工类、体育类：语文、数学（理）、外语、理化<br/>（2）高起专各专业考试科目：<br/>文史类、外语类、艺术类、公安类：语文、数学（文）、外语<br/>理工类、体育类、西医类、中医类：语文、数学（理）、外语<br/>试卷<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1、标准化分卷考试：同一科目试卷分为试卷(Ⅰ)、(Ⅱ)两部分。试卷(Ⅰ)的答案应填涂在答题卡上，试卷(Ⅱ)的答案应填写在试卷(Ⅱ)上，二者不能混淆。试卷(Ⅰ)的答案采用计算机评卷方式，试卷(Ⅱ)的采用人工阅卷方式。考生如将答案写错地方，就会白白丢分。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2、标准化考试：同一科目试卷不分卷，答案直接填涂在答题卡上。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '1', '1521773928', '1522631210', '', '', '');
INSERT INTO `lz_article` VALUES ('58', '17', '10', 'lirenjy', '2017年春季网络教育入学注册时间', 'color:;font-weight:normal;', '/uploads/20180326/3f98bed44a1dc30c429e048c8b2b0a2b.jpg', '', '报名条件：报名条件：高起专、高起本：应、往届中专、职高和高中毕业生及同等学历者。专升本：已取得或将取得国民教育系列专科文凭者。（考生在报考不同层次专业时，需要满足的条件不同。如果考生想报考高中起点升本科、高中起点升专科的专业，根据行规定，对其学历要求是有高中毕业文化程度，并未要求考生出示高中毕业证。', '<p style=\"text-align: center;\"><br/></p><p>&nbsp; &nbsp; &nbsp;&nbsp; 2017春季新生网络教育入学即将来临，一轮提升学历计划又要开始了，你是否想在2017年有所变化呢？<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年网络教育入学考试时间，从即日起到2月下旬，皆可报名。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年春季新生的录取时间在参加报名入学测试后的1个月左右。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年春季新生的入学注册时间为2017年3月份，入学注册成功后的学员可在报读院校和学信网上查到自己的学习和学籍信息，同时可以学习平台上通过网络学习。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 注册院校：电子科技大学、广东开放大学、陕西师范大学、中国传媒大学、西北工业大学<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 报名地点：立人教育校区办理报名手续。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 报名层次：高升专、专升本、专本套读<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 报名条件：报名条件：高起专、高起本：应、往届中专、职高和高中毕业生及同等学历者。专升本：已取得或将取得国民教育系列专科文凭者。（考生在报考不同层次专业时，需要满足的条件不同。如果考生想报考高中起点升本科、高中起点升专科的专业，根据行规定，对其学历要求是有高中毕业文化程度，并未要求考生出示高中毕业证。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 考试难易：立人教育开设考前集训班，注重教学质量，参加的学员通过均有保障；学员也可以申请报读免考院校。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 报名专业：有经济管理类、有艺术类、语言类、计算机类、机械类、法学类、电子类等，具体查询报考专业可联系老师。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 报考资料：本人居民身份证或其他有效证件（如护照等）原件及复印件(A4,2张)；国民教育系列毕业证书原件及复印件(A4,2张)；符合免考条件的要携带相关证明原件及复印件；二寸蓝底正面彩色免冠照片4张(均配有电子版）。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '6', '1521709105', '1522632096', '', '', '');
INSERT INTO `lz_article` VALUES ('74', '16', '10', 'lirenjy', '网络教育免考课程须知', 'color:;font-weight:normal;', '/uploads/20180326/26aedaf9afbec83e08faf9a5e5b67c36.png', '', '英语专业以外的学生，在入学注册时年龄满40周岁可免考“大学英语”;年龄按照学生本人身份证上的出生日期为起点、在所就读的试点高校网络教育学院新生实际入学注册日期为终点进行计算。', '<p>根据统考有关文件规定：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (1)已具有国民教育系列本科以上(含本科)毕业证书的学生，可免考全部统考科目。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (2)计算机类专业以外的学生，获得全国计算机等级考试一级、或一级A、或一级B或以上级别证书者可免考“计算机应用基础”;其他计算机等级证书获得者目前不能免考该课程。计算机类专业学生不能免考“计算机应用基础”。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (3)英语专业以外的学生，获得大学英语等级考试(CET)四级或以上级别证书者(2006年1月1日前获得者)、全国公共英语等级考试(PETS)三级或以上级别证书者、省级教育行政部门组织的成人教育学位英语考试合格证书者，可免考“大学英语”。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (4)英语专业以外的学生，在入学注册时年龄满40周岁可免考“大学英语”;年龄按照学生本人身份证上的出生日期为起点、在所就读的试点高校网络教育学院新生实际入学注册日期为终点进行计算。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (5)英语专业以外的学生，户籍在少数民族聚居地区的少数民族学生(参见《教育部关于开展现代远程教育试点高校网络教育部分公共基础课全国统一考试试点工作的实施意见》(教高[2004]5号)的附件:免考“大学英语”的少数民族学生的界定)可免考“大学英语”;民族身份和居住地区的确认以学生本人身份证上的资料为准;正在就读网络教育英语专业的学生一律不能免考“大学英语”。</p>', '', '1', '1', '0', '', '0', '0', '8', '1522048046', '1522631958', '', '', '');
INSERT INTO `lz_article` VALUES ('73', '16', '10', 'lirenjy', '申请学士学位相关条件及政策', 'color:;font-weight:normal;', '/uploads/20180326/cc20d09acfefbbe0388eb295f5d273b1.jpg', '', '成人高等教育各种办学形式培养的本科生（经教育部批准，国家承认学历的普通高等学校、独立设置的成人高等学校举办的函授、夜大、大专起点本科班、自学考试、远程教育等成人教育形式）以及普通高等学校在籍本科生拟申请成人第二学士学位者均可报名参加考试。', '<p>一、自考学士学位申请条件：<br/>（1）热爱祖国，遵纪守法，品德良好；<br/>（2）取得自学考试本科毕业证书；<br/>（3）本科段所有课程（不含加考课程）的平均成绩达到70分及以上；<br/>（4）毕业论文或毕业设计成绩在良好及以上；<br/>（5）通过广东省学位委员会组织的成人高等教育学士学位外国语水平统一考试；<br/>（6）通过主考院校组织的学士学位主干课程考试。<br/>二、成考学士学位申请条件：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在学习期限内修满专业教学计划规定的全部学分，且各门课程总平均成绩在75分以上（含75分，小学分课程、大学英语和免修、免考课程成绩除外）（大部分学校都要求平均成绩75分以上）；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 论文成绩在“良好”以上（含良好）；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在校期间，参加主考院校组织的成人英语统一测试，获得合格证书；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 考试中无作弊行为；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通过主考院校组织的学士学位主干课程考试。学生无“记过”以上（含“记过”）处分。<br/>注1：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 总平均成绩=所有课程成绩总和/课程门数（小学分课程、大学英语和免修、免考课程成绩除外）。<br/>注2：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 已领取毕业证书的毕业生若除英语外，其它条件都符合申请学士学位的要求，允许在其毕业后两年之内参加本校（大部分学校为本规定）组织的成人本科学士学位英语统一测试，取得合格证书后，再申请学士学位。<br/>三、网络教育学士学位申请条件：&nbsp;&nbsp; <br/>1、取得网络教育本科毕业证书；<br/>2、在学期间所有课程的平均成绩达到70分及以上；<br/>3、毕业论文或毕业设计成绩在良好及以上；<br/>4、通过广东省学位委员会组织的成人高等教育学士学位外国语水平统一考试；<br/>5、通过主考院校组织的学士学位主干课程考试，考试时间为每年的十一月，考试科目为一门专业基础课和两门专业课。<br/>四、成人学位外国语考试规定：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成人学位外语考试（个别地区也称为“成人英语三级考试”）是为了检测本地区成人教育系列中非外语专业的英语教学水平，保证成人本科毕业生学士学位的授予质量。成人英语教学的目的是培养学生具有较强的阅读能力，一定的英汉互译能力和初步的听力能力，使他们能以英语为工具。目前该考试没有全国统考，教材大纲、报名及考试时间、成绩有效期、考试次数都由各省自考办与主考院校来规定。 　　<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 本专题内容为自考365根据部分省市学位办及主考院校公布的相关文件而整理，旨在帮助自考等成人教育本科毕业生了解学位外语考试的相关内容。因各省关于学位外语考试没有统一的规定，本专题内容仅供考生参考使用，请广大自考生以当地自考办或主考院校公布的文件为准。　　<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成人高等教育各种办学形式培养的本科生（经教育部批准，国家承认学历的普通高等学校、独立设置的成人高等学校举办的函授、夜大、大专起点本科班、自学考试、远程教育等成人教育形式）以及普通高等学校在籍本科生拟申请成人第二学士学位者均可报名参加考试。具体报考条件请以当地学位办或主考院校公布的报名通知为准。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 外语类专业的考生应试语种为其所学专业教学计划规定的第二外国语语种；非外语类专业的考生应试语种为其所学专业教学计划规定的公共外语语种。一般报考语种为：英语、日语或俄语，其中以英语最为普遍。报考语种以主考院校公布为准。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 根据地区不同，报名方式分为两种：（1）考生在当地学位委员会办公室现场（或网上）报名，并在规定的时间到指定地点进行考生信息现场确认；（2）考生在主考院校网站或教务处报名，并在规定的时间到指定地点进行考生信息现场确认，采用何种报名方式请以当地学位办或主考院校公布的报名通知为准。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 各地区报名时间不统一，一般为当次考试前两个月，考试时间以当地学位办或主考院校公布的报名通知为准，考试地点一般为主考院校。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 成绩公布时间一般为当次考试结束后两个月，学位办将成绩下发到各主考院校后，考生到主考院校查询成绩，一般为60分及格。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 学位外语成绩有效期为1至2年，自考生一般在毕业当年申请此考试，并在有效期内申请学位，各省外语成绩有效期请以各主考院校的规定为准。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '0', '1522047837', '1522631939', '', '', '');
INSERT INTO `lz_article` VALUES ('68', '14', '10', 'lirenjy', '2017年自学考试本科毕业生申请学士学位的通知', 'color:;font-weight:normal;', '/uploads/20180326/e61a7e8deb04d33496aff6ffe4ad7a11.jpg', '', '我中心将在11月陆续对申报人的资格进行初审，审核后，申报资料将被锁定不能修改。各位同学可在11月中下旬登陆查看初审结果，如有异议，须在11月20日~11月30日期间向我中心提出，逾期视为放弃申诉权。', '<p><br/></p><p>&nbsp; &nbsp; &nbsp;&nbsp; 为了做好自学考试本科毕业生学士学位申请工作，现将有关事项通知如下：</p><p>&nbsp;&nbsp; 一、申请条件：</p><p>&nbsp;&nbsp; 1、毕业时间为2016年12月或2017年6月的学生；<br/>&nbsp;&nbsp; 2、无处分记录，无作弊记录；<br/>&nbsp;&nbsp; 3、课程平均分达到70分；<br/>&nbsp;&nbsp; 4、已通过广东省成人高等教育学士学位外语统考。</p><p>二、申请手续</p><p style=\"text-align: left;\">1、网上申请时间：2017年10月8日至10月23日，符合学士<br/>2、申请网址：网站（http://cce.scnu.edu.cn）的“学士学位专栏”中点击“学士学位申报”，输入学号登录后，填写自己的基本申报资料并设定密码。（注：在线填写的资料将作为下一步审核、办理学位证书的依据，所以请同学们在网上先阅读各项资料的填写说明，务必真实、准确地填写各项内容，绝对不能出错。）<br/>&nbsp;&nbsp;&nbsp;&nbsp; 3、申请流程： <br/>&nbsp;&nbsp;&nbsp;&nbsp; ①在学位申报系统中上传学位证书相片电子版（要求为180×240像素的蓝底JPG文件），并用此电子相片的底版洗晒大一寸的相片两张，用于办理学士学位证书（送交的纸质相片必须与电子照片一致，见③的要求）送交的相片将会与学位外语统考准考证相片、本科毕业证书相片进行对照，以确保为同一人。 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ②在学位申报系统中输入课程成绩。请按照毕业生登记表或网上查询到的课程成绩输入，非百分制的成绩（含毕业论文）按下表折算为百分制后输入：</p><p><img title=\"正在上传...\" class=\"loadingclass\" id=\"loading_jf3dpeo7\" src=\"http://www.lz-kj.vip/public/static/ueditor/themes/default/images/spacer.gif\"/></p><p><br/></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ③在10月12日至10月25日期间向我中心（立人教育中心)送交如下材料：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a)网上填写后打印的申请表一式两份；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; b)蓝底彩色大一寸正面免冠照两张（必须与上传电子相片级毕业证照片一致），相片粘贴在申请表的“学位证书相片暂贴处”；<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c)本科毕业证书、成绩总表（毕业生登记表皆可）和有效身份证等原件和复印件一式一份。<br/>（注：网上填写的信息与送交的材料必须一致，否则申请无效）<br/>4、已在网上提交申请的同学，在网上申报结束后，仍可凭自己的密码登录系统，对自己的申报资料进行查看、修改。<br/>5、凡2015年6月申请本科毕业但暂未领取到毕业证书的自考生，须按第1点的时间要求在网上提交申请，毕业证号可暂时留空，待领取本科毕业证后，再登陆补填证号、打印申请、递交材料。<br/>6、我中心将在11月陆续对申报人的资格进行初审，审核后，申报资料将被锁定不能修改。各位同学可在11月中下旬登陆查看初审结果，如有异议，须在11月20日~11月30日期间向我中心提出，逾期视为放弃申诉权。</p><p style=\"text-align: right;\"><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 立人教育中心<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 二〇一六年九月二十三日</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '2', '1521774518', '1522631224', '', '', '');
INSERT INTO `lz_article` VALUES ('70', '16', '10', 'lirenjy', '2017年深圳成人高考录取相关政策', 'color:;font-weight:normal;', '/uploads/20180326/a85433bb599873c183d4617b68e17e8b.png', '', '深圳市成人高等教育招生实行网上录取。录取工作一般在当年的11月、12月进行，具体录取时间在深圳成人教育网站公布。录取分三个批次进行，其中第一批次录取高起本或高起专艺术类、体育类；第二批录取高起本与专升本；第三批次录取高起专。', '<p style=\"background-color: transparent; border-bottom-color: rgb(90, 90, 90); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(90, 90, 90); border-left-style: none; border-left-width: 0px; border-right-color: rgb(90, 90, 90); border-right-style: none; border-right-width: 0px; border-top-color: rgb(90, 90, 90); border-top-style: none; border-top-width: 0px; color: rgb(90, 90, 90); font-family: \"><span style=\"border-bottom-color: rgb(0, 0, 0); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(0, 0, 0); border-left-style: none; border-left-width: 0px; border-right-color: rgb(0, 0, 0); border-right-style: none; border-right-width: 0px; border-top-color: rgb(0, 0, 0); border-top-style: none; border-top-width: 0px; color: rgb(0, 0, 0); font-family: \"><span style=\"border-bottom-color: rgb(0, 0, 0); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(0, 0, 0); border-left-style: none; border-left-width: 0px; border-right-color: rgb(0, 0, 0); border-right-style: none; border-right-width: 0px; border-top-color: rgb(0, 0, 0); border-top-style: none; border-top-width: 0px; font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; line-height: 22.4px; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\"><span style=\"border-bottom-color: rgb(0, 0, 0); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(0, 0, 0); border-left-style: none; border-left-width: 0px; border-right-color: rgb(0, 0, 0); border-right-style: none; border-right-width: 0px; border-top-color: rgb(0, 0, 0); border-top-style: none; border-top-width: 0px; font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; line-height: 22.4px; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">&nbsp; &nbsp; &nbsp;&nbsp; 深圳市成人高等教育招生实行网上录取。录取工作一般在当年的11月、12月进行，具体录取时间在深圳成人教育网站公布。录取分三个批次进行，其中第一批次录取高起本或高起专艺术类、体育类；第二批录取高起本与专升本；第三批次录取高起专。</span></span></span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(90, 90, 90); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(90, 90, 90); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(90, 90, 90); border-left-style: none; border-left-width: 0px; border-right-color: rgb(90, 90, 90); border-right-style: none; border-right-width: 0px; border-top-color: rgb(90, 90, 90); border-top-style: none; border-top-width: 0px; color: rgb(90, 90, 90); font-family: \"><span style=\"border-bottom-color: rgb(0, 0, 0); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(0, 0, 0); border-left-style: none; border-left-width: 0px; border-right-color: rgb(0, 0, 0); border-right-style: none; border-right-width: 0px; border-top-color: rgb(0, 0, 0); border-top-style: none; border-top-width: 0px; color: rgb(0, 0, 0); font-family: \"><span style=\"border-bottom-color: rgb(0, 0, 0); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(0, 0, 0); border-left-style: none; border-left-width: 0px; border-right-color: rgb(0, 0, 0); border-right-style: none; border-right-width: 0px; border-top-color: rgb(0, 0, 0); border-top-style: none; border-top-width: 0px; font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; line-height: 22.4px; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\"><span style=\"border-bottom-color: rgb(0, 0, 0); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(0, 0, 0); border-left-style: none; border-left-width: 0px; border-right-color: rgb(0, 0, 0); border-right-style: none; border-right-width: 0px; border-top-color: rgb(0, 0, 0); border-top-style: none; border-top-width: 0px; font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; line-height: 22.4px; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在最低控制分数线上的考生，第一志愿学校不能录取时，将参加有计划剩余的第二志愿学校录取。如第二志愿学校不能录取，对同意调剂的考生，在考试科目相同的专业中进行调剂录取；对不同意调剂的考生，不予调剂录取。</span></span></span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(90, 90, 90); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(90, 90, 90); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(90, 90, 90); border-left-style: none; border-left-width: 0px; border-right-color: rgb(90, 90, 90); border-right-style: none; border-right-width: 0px; border-top-color: rgb(90, 90, 90); border-top-style: none; border-top-width: 0px; color: rgb(90, 90, 90); font-family: \"><span style=\"border-bottom-color: rgb(0, 0, 0); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(0, 0, 0); border-left-style: none; border-left-width: 0px; border-right-color: rgb(0, 0, 0); border-right-style: none; border-right-width: 0px; border-top-color: rgb(0, 0, 0); border-top-style: none; border-top-width: 0px; color: rgb(0, 0, 0); font-family: \"><span style=\"border-bottom-color: rgb(0, 0, 0); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(0, 0, 0); border-left-style: none; border-left-width: 0px; border-right-color: rgb(0, 0, 0); border-right-style: none; border-right-width: 0px; border-top-color: rgb(0, 0, 0); border-top-style: none; border-top-width: 0px; font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; line-height: 22.4px; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\"><span style=\"border-bottom-color: rgb(0, 0, 0); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(0, 0, 0); border-left-style: none; border-left-width: 0px; border-right-color: rgb(0, 0, 0); border-right-style: none; border-right-width: 0px; border-top-color: rgb(0, 0, 0); border-top-style: none; border-top-width: 0px; font-family: 微软雅黑; font-size: 14px; font-size-adjust: none; font-stretch: normal; font-style: normal; font-variant: normal; font-weight: 400; line-height: 22.4px; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在录取的每个批次后，考试院成招办将在网上公布招生院校生源的余缺信息，线上未被录取的考生可向一所未完成招生计划的学校提出书面申请。对于已被录取的考生，不得再次进行调剂录取。</span></span></span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '0', '1521776347', '1522631925', '', '', '');
INSERT INTO `lz_article` VALUES ('75', '14', '10', 'lirenjy', '关于广东省2017年10月高等教育自学考试的提醒', 'color:;font-weight:normal;', '/uploads/20180326/a8b0cd8e58cd8102de97efd5eb4a0f84.jpg', '', '我省2017年10月高等教育自学考试将于10月21-22日进行，考试时间为上午9:00-11:30，下午2:30-5:00。为确保本次考试顺利进行，广东省教育考试院特别提醒广大考生。', '<p>各位考生：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我省2017年10月高等教育自学考试将于10月21-22日进行，考试时间为上午9:00-11:30，下午2:30-5:00。为确保本次考试顺利进行，广东省教育考试院特别提醒广大考生：<br/>一、携带相关证件<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 考生必须携带本人准考证和有效身份证方可参加考试，新报名考生可到报名地市自考办指定地点领取准考证。<br/>二、查询座位安排<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 考生可通过广东省自学考试管理系统（http://www.stegd.edu.cn/selfec/）、5184网站（http://www.5184.com/）或96040固定电话热线查询本次考试座位安排，也可通过各地市考办指定的其他途径查询。在查询到本次考试座位安排后，要提前做好考试准备，密切留意天气变化，安排好出行方式，规划好交通路线，避免因迟到而无法参加考试。<br/>三、自学考试使用新试卷版式<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 今年10月自学考试将使用新的试卷版式，试卷由问卷和答题纸两部分组成，考生作答时必须严格按照试卷的作答要求，按试题顺序在答题纸指定位置作答，不按规定作答，答题无效。特别是机械制图（一）（课程代码：02183）课程，试题直接印刷在答题纸上，考生务必按照该课程答题纸上的作答要求作答。<br/>四、遵守考场规则<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 我省自学考试自10月份考试起将使用新的考场规则（详见附件），请广大考生务必认真阅读并严格遵守。在此我们特别强调需要注意的六个方面。一是不得携带违禁物品。除必要的文具，如2B铅笔、黑色字迹的钢笔或签字笔、直尺、三角板、圆规、橡皮擦外，其他任何物品不准带入考场。严禁携带任何通讯工具、电子计算器（可以使用计算器的课程除外）、电子记事本、电子存储记忆录放设备、照相机、电子摄录设备、涂改液、修正带等与考试无关的物品进入考场。可以使用计算器的课程，计算器不得有程序储存功能。二是牢记考试关键时间点。考前20分钟凭准考证、身份证进入规定的考场，对号入座；已到考生，必须在点名卡的签名框内签名确认；开考信号发出后才能开始答题；开考15分钟后不准进入考场；交卷出场时间不得早于每门课程考试结束前30分钟，出场后不得再进入考场；考试终了信号发出后，应立即停止作答；严禁带走试卷和草稿纸。三是认真检查核对试卷。检查核对问卷和答卷上标明的课程名称、课程代码是否与自己当次所报考的课程名称、课程代码相符，有无缺页、缺题和字迹不清等现象，如有，应立即举手向监考员报告。四是准确填写考生信息。作答前必须先在每张答题纸规定的位置正确、清楚地填写本人的准考证号、姓名、考点名称、考场号、座位号等信息，并在规定位置，按要求贴好条形码。五是按要求作答。认真完成“考生笔迹确认”部分内容，使用答题纸规定的答题笔在指定位置按要求作答。保持答题纸清洁，不能折叠、污损、弄皱、弄破，不准在答题纸上作任何标记。六是保持考场安静。考试期间，考生在考场内不得相互借用文具，不准随意说话，不准随意离开座位走动，不准吸烟，不准夹带、旁窥、抄袭，不准交头接耳、左顾右盼，不准换卷传抄，不准冒名顶替。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年10月高等教育自学考试在即。预祝各位考生取得好成绩！<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;</p><p style=\"text-align: right;\">广东省教育考试院 宣 <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2017年10月17 日</p>', '', '1', '1', '0', '', '0', '0', '0', '1522048464', '1522631706', '', '', '');
INSERT INTO `lz_article` VALUES ('71', '14', '10', 'lirenjy', '2017年春季网络教育入学测试时间通知', 'color:;font-weight:normal;', '/uploads/20180326/93e0b7550eaf66f6fa2b66a5526259bc.png', '', '网络教育的入学测试是由招生院校出题主考，考试每年春季和秋季两期，每期考试根据不同的学院考试安排时间和次数也有所不同。', '<p><br/></p><p>&nbsp; &nbsp; &nbsp;&nbsp; 网络教育的入学测试是由招生院校出题主考，考试每年春季和秋季两期，每期考试根据不同的学院考试安排时间和次数也有所不同，现将网络教育非考试院校2017年春季入学测试通知如下：<br/>一、录取时间：<br/>&nbsp;录取时间是2017年4月—5月<br/>&nbsp;<br/>二、入学注册时间：<br/>注册时间是2017年4月 <br/>三、（招生）考试对象<br/>&nbsp;&nbsp;&nbsp; 1、各专业面向社会招生，凡身体健康、具有相应文化程度者，不论年龄和户口所在地均可报名。<br/>&nbsp;&nbsp;&nbsp; 2、高中起点专科：具有高中（含职中、中专、技校）毕业证书或年满20周岁、具高中同等学力文化程度。<br/>&nbsp;&nbsp;&nbsp; 3、专科起点本科：具有国民教育系列大学专科或高职或专科以上学历毕业证书。<br/>&nbsp;&nbsp;&nbsp; 4、专科应届毕业生报考专科升本科就读层次凭在读学校毕业证明报名。考生必须在2015年3月1日前取得专科毕业证书，报到和入学注册时必须提供专科毕业证书原件。<br/>四、教学形式<br/>网络教学：学生可随时随地通过网络访问立人教育学院的网络教学平台点播网络课件自主学习课程，由立人教育现代远程教育校外学习中心提供学习支持服务，在校外学习中心集中参加课程考试。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '4', '1521776553', '1522631679', '', '', '');
INSERT INTO `lz_article` VALUES ('72', '14', '10', 'lirenjy', '2017年8月5日网教2015春季毕业证领取通知', 'color:;font-weight:normal;', '/uploads/20180326/4a2919a5bd836f1320df6328e4a1ccbc.PNG', '', '热烈祝贺2015春网教学生毕业啦！学员在这两年半的努力下终于修成正果迎来了毕业证的下发！根据教育厅审核结果和学校工作安排，我们立人教育定于2017年8月5日颁发2015春网教学生的毕业证及档案的相关事宜通知', '<p><br/></p><p>&nbsp; &nbsp; &nbsp;&nbsp; 热烈祝贺2015春网教学生毕业啦！学员在这两年半的努力下终于修成正果迎来了毕业证的下发！根据教育厅审核结果和学校工作安排，我们立人教育定于2017年8月5日颁发2015春网教学生的毕业证及档案的相关事宜通知如下： <br/>一、领取证书的对象<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2015春电子科技大学、 西北工业大学、 中国传媒大学、 陕西师范大学（168张）<br/></p><p>二、领取证书注意事项<br/>&nbsp;&nbsp;&nbsp; 1、毕业学生需缴清学费、书本费、毕业论文指导费<br/>&nbsp;&nbsp;&nbsp; 2、领取本人需携带身份证原件<br/>三、毕业证及档案袋保管注意事项<br/>&nbsp;&nbsp;&nbsp; 学历档案袋必须密封，因个人原因轻易私自打开，将无法补办，且档案将失效。更不建议自己保管，如果自己管理容易丢失损坏且有可能会变成死档，一但遗失无法补办。建议相关单位进行托管或者人才市场挂靠。</p><p><br/></p>', '0', '1', '1', '0', '', '0', '0', '19', '1521776734', '1522631690', '', '', '');
INSERT INTO `lz_article` VALUES ('76', '14', '10', 'lirenjy', '致参加2017年10月自学考试考生的一封信', 'color:;font-weight:normal;', '/uploads/20180326/ff1d93211408938589772d6458f1374b.jpg', '', '高等教育自学考试是国家教育考试，诚信考试、公平考试、平安考试我们共同的愿望。为确保我省2017年10月自学考试安全顺利实施，我省将集中开展打击销售作弊器材、净化涉考网络环境、净化考点周边环境、清理整顿涉考培训机构和助考中介、清理打击大规模组织异地考试、替考等五项专项行动，同时加大对考试舞弊的查处力度。', '<p>位考生：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 高等教育自学考试是国家教育考试，诚信考试、公平考试、平安考试我们共同的愿望。为确保我省2017年10月自学考试安全顺利实施，我省将集中开展打击销售作弊器材、净化涉考网络环境、净化考点周边环境、清理整顿涉考培训机构和助考中介、清理打击大规模组织异地考试、替考等五项专项行动，同时加大对考试舞弊的查处力度。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 营造公平竞争环境、保持良好考试秩序、维护国家考试权威、确保考试公平公正是我们的共同目标，也是所有考生和全体考试工作人员应尽的责任和义务，需要我们共同努力一起行动。10月自学考试在即，广东省教育考试院特向广大考生发出倡议：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.严格遵守国家有关教育考试的法律、法规和规定。认真学习《教育法》、《国家教育考试违规处理办法》（教育部令第33号）和自学考试的考场规则，特别是认真学习《刑法修正案（九）》对考试作弊罪的有关规定，彻底打消考试作弊的侥幸心理，不携带任何文字资料、电子存储设备、手机以及其它无线电通讯工具进考场，以平和心态从容应考。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.做一名守法、文明、诚信的考生。自觉抵制兜售作弊器材、试题或答案、代替考试等各类国家教育考试违法犯罪行为，共同维护国家教育考试公平公正。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 诚信考试光荣，违规舞弊可耻。《中华人民共和国刑法修正案（九）》、《中华人民共和国教育法》，对国家教育考试中的作弊行为作出了相关规定。省教育考试院将严格按照《刑法修正案(九)》《教育法》和《国家教育考试违规处理办法》的有关规定严肃处理违纪作弊考生，如实将相关信息记入个人诚信档案。我们由衷希望各位考生做“诚信考试”的行动者，自觉遵守考试的各项规定，自觉抵制一切有损考试公平的不良行为。希望各位考生做“诚信考试”的监督者，举报成人高考和自学考试过程中发生和出现的违纪作弊现象，共同维护考试的公平、公正和严肃性。<br/>最后，预祝各位考生取得好成绩！<br/>&nbsp;</p><p><br/></p><p style=\"text-align: right;\">广东省教育考试院 <br/>2017年10月16日<br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '0', '1522048677', '1522631718', '', '', '');
INSERT INTO `lz_article` VALUES ('79', '14', '10', 'lirenjy', '关于2018年4月网络教育全国统考报名的通知', 'color:;font-weight:normal;', '/uploads/20180326/accb1dbd265c8dc2420842a528f7b9c3.PNG', '', '按照网考委 《全国高校网络教育部分公共基础课统一考试2018年4月考试工作安排》（网考电函[2018]03号）的要求，结合我校工作实际，现将2018年4月统考考试工作安排。', '<p style=\"background-color: transparent; border-bottom-color: rgb(102, 102, 102); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(102, 102, 102); border-left-style: none; border-left-width: 0px; border-right-color: rgb(102, 102, 102); border-right-style: none; border-right-width: 0px; border-top-color: rgb(102, 102, 102); border-top-style: none; border-top-width: 0px; box-sizing: border-box; color: rgb(102, 102, 102); font-family: \">按照网考委 《全国高校网络教育部分公共基础课统一考试2018年4月考试工作安排》（网考电函[2018]03号）的要求，结合我校工作实际，现将2018年4月统考考试工作安排如下：<br/>一、考试总体安排<br/>1、考试和报名时间<br/>考试时间：2018年4月14 - 17日，每门课程考试时间90分钟<br/>2、考试科目<br/>考试科目包括《大学英语》（A、B、C）、《大学语文》（A、B）、《高等数学》（A、B）和《计算机应用基础》等4门统考课程。<br/>3、考试考点<br/>立人教育培训<br/>4、考试对象<br/> &nbsp; &nbsp; &nbsp; 凡考生基本信息已进入全国网络教育统考信息管理系统且符合统考条件的学生均可自愿报名参加本次考试。<br/>重点提醒：从18年春季入学注册的学生开始，在学籍有效期内，符合统考条件的学生在入学第二年后可进行报考。在统考安排的时间和公布的考点进行预约考试。<br/>&nbsp; &nbsp; &nbsp;&nbsp; 为有效利用考试资源，从今年开始，对报考后有弃考行为的考生每个科目的报考次数限定为3次。<br/>5、考试方式<br/>四门统考课程全部实行网上闭卷机考。</p><p style=\"background-color: transparent; border-bottom-color: rgb(102, 102, 102); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(102, 102, 102); border-left-style: none; border-left-width: 0px; border-right-color: rgb(102, 102, 102); border-right-style: none; border-right-width: 0px; border-top-color: rgb(102, 102, 102); border-top-style: none; border-top-width: 0px; box-sizing: border-box; color: rgb(102, 102, 102); font-family: \">二、我校2018年4月考试报名安排<br/>&nbsp; &nbsp; &nbsp;&nbsp; 根据网考委[2005]01号和[2015]43号文件的要求，各网络教育学习中心应加强考风考纪教育和诚信教育工作，树立良好的学风、考风，严格考风考纪管理，严肃查处考试违规、弄虚作假和徇私舞弊等行为。<br/>1、基本信息的导入：<br/>&nbsp; &nbsp; &nbsp;&nbsp; 考生基本信息从学信网中获取。特别要求提供的照片应为考生本人身份证照片，不符合照片要求的报考者不得参加考试；提供的考生联系方式（如电话、邮箱等）应确切、有效。<br/>考试时考生基本信息有误，不得参加考试。</p><p style=\"background-color: transparent; border-bottom-color: rgb(102, 102, 102); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(102, 102, 102); border-left-style: none; border-left-width: 0px; border-right-color: rgb(102, 102, 102); border-right-style: none; border-right-width: 0px; border-top-color: rgb(102, 102, 102); border-top-style: none; border-top-width: 0px; box-sizing: border-box; color: rgb(102, 102, 102); font-family: \">三、统考免考办理流程<br/>1.考生及学习中心请下载附件2相关表格认真填写相关信息，确保信息准确无误。<br/>提醒：如果考生用全国公共英语等级考试PETS三级或以上级别证书申请免考大学英语，务必在个人申请表上注明考试所在省份。<br/>2.办理程序：<br/>（1）学生填写《免考申请表》一份，并持免考证明原件到所在学习中心申请免考。 <br/>（2）学习中心必须对学生的免考证明原件进行初审，确保提交材料真实，审核合格后扫描2份，其中1份学习中心留存，1份上报网院，并在《免考申请表》中签字盖章；<br/>（3）学习中心向总校报送《免考汇总表》电子版和纸质版一份，《免考申请表》和免考证明原件的扫描件的纸质版各一份；<br/>（4）学院对免考申请材料审定后汇总进行公示，并按程序上报网考办备案。<br/>除统考报考期间不可上报免考信息外，其他时间每月20号以前学习中心上报的免考材料总校将及时处理免考信息，确保当月最后一个星期五进行统考数据（包括免考数据）与学信网的对接；每月21号以后上报的免考数据，将在下一个月最后一个星期五完成统考数据（包括免考数据）与学信网的对接。<br/>注：1、对已经获得本科文凭及以上的统考免考，学习中心需要将学生毕业证书扫描件发至总校进行办理。<br/>&nbsp;&nbsp;&nbsp; 2、若考生在取得网络教育正式学籍前已参加网络统考且成绩合格，应办理相应科目免考。</p><p style=\"background-color: transparent; border-bottom-color: rgb(102, 102, 102); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(102, 102, 102); border-left-style: none; border-left-width: 0px; border-right-color: rgb(102, 102, 102); border-right-style: none; border-right-width: 0px; border-top-color: rgb(102, 102, 102); border-top-style: none; border-top-width: 0px; box-sizing: border-box; color: rgb(102, 102, 102); font-family: \">四、考生须知<br/>考生必须凭有效身份证件和准考证才能参加国家考试。所有考生必须事先准备好证件，以免无证不能进入考场。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '9', '1522050517', '1522631822', '', '', '');
INSERT INTO `lz_article` VALUES ('80', '14', '10', 'lirenjy', '广东省2018年4月高等教育自学考试 报考即将开始', 'color:;font-weight:normal;', '/uploads/20180326/12c0240da136300b4ba200234d851cbb.PNG', '', ' 广东省2018年4月高等教育自学考试新生报名时间为1月15-22日，考生报考时间为1月15-25日。广东省教育考试院提醒广大考生，及时登录广东省教育考试院官网（www.stegd.edu.cn）', '<p style=\"background-color: transparent; border-bottom-color: rgb(102, 102, 102); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(102, 102, 102); border-left-style: none; border-left-width: 0px; border-right-color: rgb(102, 102, 102); border-right-style: none; border-right-width: 0px; border-top-color: rgb(102, 102, 102); border-top-style: none; border-top-width: 0px; box-sizing: border-box; color: rgb(102, 102, 102); font-family: \">各位考生：<br/>&nbsp; &nbsp; &nbsp;&nbsp; 广东省2018年4月高等教育自学考试新生报名时间为1月15-22日，考生报考时间为1月15-25日。广东省教育考试院提醒广大考生，及时登录广东省教育考试院官网（www.stegd.edu.cn）了解我省自学考试相关规定和政策，以及2018年4月自学考试课程和时间安排。这里我们把《广东省2018年4月高等教育自学考试网上报考须知》提供给大家，方便大家报考。<br/>&nbsp;<br/>广东省2018年4月高等教育自学考试网上报考须知<br/>&nbsp;<br/>一、报名条件<br/>凡在我省居住和工作的中华人民共和国公民，以及港澳台同胞、海外侨胞，不受性别、年龄、民族、种族、学历、身体健康状况、居住地等限制，均可根据本人的实际情况和需要自由选择专业，报考我省自学考试。服刑人员经有关部门批准后也可申请报考。<br/>二、报名报考时间<br/>2018年4月自学考试新生报名时间为2018年1月15-22日，考生报考时间为2018年1月15-25日。<br/>三、考生报考手续<br/>首次参加自学考试的新生须先办理新生报名手续，然后才可选择课程进行报考，已进行过新生报名的考生可直接进行报考。<br/>（一）新生报名&nbsp; <br/>新生报名分预报名和正式报名两个阶段。<br/>预报名&nbsp; 新生自行登录到广东省教育考试院网站（www.stegd.edu.cn/selfec/）进行预报名。预报名时考生录入个人信息并设置个人密码，预报名成功后可得到一个唯一的预报名号。新生凭预报名号和个人密码进行正式报名。<br/>正式报名&nbsp; 新生凭预报名号在规定的时间内到市、县（区）指定报名点正式报名，考生正式报名时须携带身份证进行电子摄像，同时打印、确认报名资料，并得到一个唯一的准考证号码，考生使用该准考证号码报考。报名获得批准后，市考办或报名点将给报名者发放由省考委统一印制的准考证。<br/>（二）考生报考<br/>所有考生均须通过广东省自学考试管理系统（www.stegd.edu.cn/selfec/）报考（原5184、96040电话报考通道停止使用），并且进行网上缴费。每个考生每次考试只能报考一次，且只能选择一个考区参加考试。考生在确认报考课程前，须认真核对选择的考区和报考课程是否正确，考区和报考课程一经考生确认，不得增加、删减、更改，确认报考后所交报考费一旦网上缴纳，不予退还。考生缴费后须再次登录自学考试管理系统，检查交费状态是否为“已缴费”，以此确认是否报考成功。<br/>未曾提供电子相片的考生在报考前必须先提供指定规格的电子相片（见电子相片采集标准），或到地市考办指定报名点现场采集，新生在正式报名时已采集电子相片的，报考时不用提供。<br/>电子相片采集标准：<br/>（1）背景要求：背景布选取浅蓝色，要求垂感和吸光好，可以是棉布、毛涤等。<br/>（2）成像要求：成像区上下要求头上部空1／10，头部占7／10，肩部占1／5，左右各空1／10。采集的图像大小最小为192×168（高×宽），单位为：像素。成像区大小为48ｍｍ×42ｍｍ（高×宽）。<br/>（3）灯光要求：需要摄影灯，一台前灯基本满足要求，最好利用两台侧灯，灯具可以是专业摄影灯，也可以是舞台灯或家用立式客厅灯。<br/>四、违规处理 <br/>广东省自学考试委员会办公室将严格按照《国家教育考试违规处理办法》及相关规定严肃处理违纪作弊考生，并如实将相关信息记入诚信档案。<br/>座位安排、成绩查询以及其他未尽事宜，请考生密切关注广东省教育考试院网站和官方微信，查阅有关文件和公告。<br/>&nbsp;<br/>&nbsp;<br/></p><p style=\"background-color: transparent; border-bottom-color: rgb(102, 102, 102); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(102, 102, 102); border-left-style: none; border-left-width: 0px; border-right-color: rgb(102, 102, 102); border-right-style: none; border-right-width: 0px; border-top-color: rgb(102, 102, 102); border-top-style: none; border-top-width: 0px; box-sizing: border-box; color: rgb(102, 102, 102); font-family: \">广东省教育考试院 宣<br/>2018年1月12日&nbsp;</p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '6', '1522050606', '1522631790', '', '', '');
INSERT INTO `lz_article` VALUES ('81', '14', '10', 'lirenjy', '关于公布2018年广东省自学考试各专业开考课程考试时间安排的通知', 'color:;font-weight:normal;', '/uploads/20180326/59289312ea8adbbeb466d066ec0eded4.jpg', '', ' 为使我省高等教育自学考试更好地适应新的形势，经研究，决定自2018年起，广东省高等教育自学考试每年的开考次数调整为一年开考3次，分别为1月、4月、10月，7月不再安排考试。', '<p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">各地级以上市自学考试办公室，各主考学校：</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">&nbsp; &nbsp; &nbsp;&nbsp; 为使我省高等教育自学考试更好地适应新的形势，经研究，决定自2018年起，广东省高等教育自学考试每年的开考次数调整为一年开考3次，分别为1月、4月、10月，7月不再安排考试。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">根据《关于2018年高等教育自学考试全国统考课程安排有关事项的通知》（教试中心函〔2017〕122号）的规定，结合我省调整开考次数的实际情况，编制了广东省高等教育自学考试2018年各次考试开考课程考试时间安排表和使用教材一览表（见附件1－4），现予以公布，并就有关事项说明如下：</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">考生须按照广东省自学考试委员会编印的最新一期《报考必读》中的规定选报专业。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">中英合作金融管理、商务管理（基础科段）（本科段）四个专业开考课程安排另文通知。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">2018年4月14日下午和2018年10月20日上午安排开考的《计算机应用基础》（课程代码：00018），只接受香港籍考生在香港考试及评核局报考。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">根据教试中心函〔2017〕122号文规定，我省高等教育自学考试命题时将考试之日起六个月前由全国人大颁布的法律和国务院颁布的法规列入相应课程的考试范围。凡大纲、教材内容与现行法律、法规不符的，以现行法律、法规为准。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">本文件及附件可在广东省教育考试院网站查询下载，网址：www.eeagd.edu.cn。</span><br/><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(102, 102, 102); font-family: \">&nbsp;</span></p>', '', '1', '1', '0', '', '0', '0', '14', '1522050692', '1522631780', '', '', '');
INSERT INTO `lz_article` VALUES ('90', '16', '10', 'lirenjy', '中国高等教育学生信息网上查询认证学历的说明', 'color:;font-weight:normal;', '/uploads/20180328/e5cdf0f40cc83e3e06781fd871efd716.PNG', '', '在立人教育所读的专科、本科均可通过学历认证。', '<p>一、学历层次认证所需要提交资料：<br/>1、专科学历&nbsp;&nbsp; 学历证书及身份证正面扫描件<br/>2、本科学历&nbsp;&nbsp; 专科学历+本科学历证书及身份证正面扫描件<br/>（注：网上认证材料均只接受扫描件1:1清晰彩色扫描件）</p><p>二、注意事项：<br/>1、凡申请学历学位同时认证，只需要学历证书/学位证书及身份证扫描件<br/>2、申请学位认证，须同时提交与学位相对应的学历证书及证明该证书有效的相关材料（同等学力攻读硕士学位除外）；如无法提交证明该学历证书有效的相关材料，须同时申请认证该学历证书。须递交以下材料：毕业证书、学位证书、身份证原件和复印件<br/>3、凡申请成人教育“专升本”（含网络教育、自考）本科学历认证，须同时提交专科学历及身份证原件扫描件（如专科已做过鉴定，须附上专科毕业证书、专科鉴定证明复印件）；若申请成人教育“专插本”本科学历认证，须同时提交专科学历证书，可不验证专科，认证证书的同时须提交一对一身份证原件扫描件<br/>4、申请军校学历证书认证，除提供毕业证书、身份证原件扫描件（各一份）之外，还须分以下几种情况递交相交材料：<br/>（1）军校普通高考入学的需要提供入学批准书、学校证明、军籍证明（转业证、军官证）；<br/>（2）参军后报考军校的需要提供入学批准书、入伍批准书、学校证明、军籍证明（转业证、军官证）；<br/>（3）函授学习需要提供入伍批准书、学校证明、军籍证明（转业证、军官证）。2000年以后（含2000年）毕业的，除提供上述材料之外，还须提供学籍登记表（个人档案里）；<br/>（4）军队院校2001年之前毕业的证书，请将证书内页（即贴相片那页）的复印件上注明这页的底色：白色、绿色或粉红色。凡受理总参印制的部队本科证书，申请人入学时年龄在23岁以下（不含23岁）的，需同时提供专科证书复印件，若无专科学历请申请人在本科证书上注明本人无专科学历。专科证书只需附上，可不办理认证。军队院校的证书需要在教育部和总参两个部门审核，认证流程比较繁琐且时间较长，请咨询后再办理；<br/>（5）自考本科证书，必须提交本科、专科、身份证、原件的彩色扫描件（自考本科同时提交的专科可不认证）；<br/>（6）中央广播电视大学无论在那个分校就读都按照省外证书标准收费，办理时请注明在那个分校就读。<br/>（8）申请复议：如委托人对认证结论有异议，可申请复议。复议须提交书面申请书、毕业证、身份证复印件、相关的证明材料或线索性的说明材料，并退回有异议的原认证报告。复议须在限时20个工作日内提交资料方可进行复议，超时限须重新提供费用方可复议；<br/>（9）关于《学历认证报告》和《查询通知书》：获得广东省鉴定中心出具的《学历认证报告》后，无论证书是否真实有效，均不接受申请人的退费申请；如果鉴定中心出具的是《学历查询通知书》，表示需要申请人提供进一步的证明材料复查，若申请人不提供相关资料复查，可申请退费。</p><p>三、关于加急学历认证<br/>1、条件&nbsp; 2001年起毕业中国高等教育学生信息网（简称“学信网”）上查得有数据方可加急办理，个别2001年前毕业，但在学信网上查的有数据的毕业证亦可加急办理，军校学历、所有学位均不可加急办理。<br/>2、所需材料&nbsp; 学历证书扫描件身份证正面扫描件。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '5', '1522200314', '1522631979', '', '', '');
INSERT INTO `lz_article` VALUES ('86', '18', '10', 'lirenjy', '2017年东部华侨城踏青游活动', 'color:;font-weight:normal;', '/uploads/20180327/5e79c149c75d128c0c0dbbeb235d5e11.png', '', '立人教育为了反馈各位学员的大力支持，现举行踏青游活动。', '<p style=\"text-align: center;\">2017年东部华侨城踏青游活动</p><p><br/></p><p>&nbsp; &nbsp;&nbsp; 活动名称：东部华侨城踏青游 <br/>&nbsp;&nbsp;&nbsp;&nbsp; 活动时间：3月18日——3月19日<br/>&nbsp;&nbsp;&nbsp;&nbsp; 适用学员：所有新、老全款报名学员<br/>&nbsp;&nbsp;&nbsp;&nbsp; <br/>东部华侨城踏青游:<br/>&nbsp;1、价值6000元以上：东部华侨城3星级酒店单人2日游<br/>&nbsp;2、价值4000-6000元：东部华侨城双人1日游<br/>&nbsp;3、价值2000-4000元：东部华侨城单人1日游<br/>&nbsp;注：转介绍新学员5个以上，可获得东部华侨城单人1日游。<br/>&nbsp; &nbsp; &nbsp; &nbsp; 转介绍新学员10个以上，可获得东部华侨城双人1日游。<br/>&nbsp; &nbsp; &nbsp; &nbsp; 转介绍新学员15个以上，可获得东部华侨城3星级酒店双人2日游。</p><p>特别提醒：以上活动必须2017年3月17日前全款缴清学费才可享受活动。</p><p><br/>&nbsp;</p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '5', '1522136480', '1522632218', '', '', '');
INSERT INTO `lz_article` VALUES ('85', '18', '10', 'lirenjy', '通知2016.7.16日立人教育组织学员西冲两日游', 'color:;font-weight:normal;', '/uploads/20180327/aac432f967bd6711982eb47fcd9a4c10.png', '', '立人教育为了让学员有更深入的交流，组织大家“西冲海边露营活动两日游”，夹杂期待、捎着渴望，忘掉了六月的炎热，亦抛开了工作和生活的压力，这样的日子，我们只为释放心情、呈现青春状态。', '<p style=\"text-align: center;\">通知2016.7.16日立人教育组织学员西冲两日游</p><p>&nbsp;<br/>&nbsp; &nbsp; &nbsp; 立人教育为了让学员有更深入的交流，组织大家“西冲海边露营活动两日游”，夹杂期待、捎着渴望，忘掉了六月的炎热，亦抛开了工作和生活的压力，这样的日子，我们只为释放心情、呈现青春状态。</p><p>&nbsp;&nbsp;&nbsp; 六月风，闻到了她柔暖而湿润的气息，带着花香，带着泥土的芬芳。<br/>&nbsp;&nbsp;&nbsp; 六月风，轻轻地从耳边吹过，柔柔的，软软的，象一朵云彩轻拂着我的脸。<br/>&nbsp;&nbsp;&nbsp; 六月风，洋溢着笑脸，灿烂着每一朵花儿，用希望的手叩响了沉睡的天空，吹走了腐味，带来了清晰。 <br/>&nbsp;&nbsp;&nbsp; 六月风，如诗人的笔，如画家的五彩，将绿色覆盖每一片沙地，让大地换上了新装。 <br/>&nbsp;&nbsp;&nbsp; 六月风，带着她柔暖而湿润的气息，是花香，是泥土的芬芳。</p><p><br/>&nbsp;&nbsp;&nbsp; 活动主题：“炎炎夏日，清凉海风，一起露营，舒心惬意”<br/>&nbsp;&nbsp;&nbsp; 集合地点：立人教育总部（深圳市坂田街道五和大道南108号凯旋大厦一楼 ）<br/>&nbsp;&nbsp;&nbsp; 参与人员：立人教育全体学员<br/>&nbsp;&nbsp;&nbsp; 活动地点：中国最美的八大沙滩之一“深圳西冲”<br/>&nbsp;&nbsp;&nbsp; 带队老师：江盈盈、张丽、刘军以及导游飞飞。<br/>&nbsp;&nbsp;&nbsp; 活动费用：每人300元（住一晚和三餐的费用，其它游玩费用自理）。</p><p><br/>温馨提示：</p><p>户外用品清单：<br/>1、服饰：海滩长裙和清凉的小衫，短裤。<br/>2、泳装装备：泳衣、泳镜、泳帽（女生可备一条浴巾）。<br/>3、防晒：防晒霜或轻薄的长袖衬衫或防晒衣。<br/>4、身份证或有效证件。<br/>5、充电器、面巾纸、零钱包、洗漱用品全套、基础护肤产品。<br/>6、太阳镜，太阳帽。<br/>7、必备药品：藿香正气防中暑；风油精防蚊虫；黄连素防腹泻；创可贴防受伤；晕车、晕船药。<br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '3', '1522136374', '1522632207', '', '', '');
INSERT INTO `lz_article` VALUES ('87', '18', '10', 'lirenjy', '2017年6月11日立人教育为学员提供免费的解压课程', 'color:;font-weight:normal;', '/uploads/20180327/f0da76ebb7522a7e32b226aaf4551942.jpg', '', ' 在深圳这个城市，工作和生活的节奏都非常快，不知如何释放压力？释放情绪？', '<p>&nbsp; &nbsp; 在深圳这个城市，工作和生活的节奏都非常快，不知如何释放压力？释放情绪？</p><p>十年不见的中学同学见面，说起了当年的我：“忘不了你爽朗的笑，忘不了你哭起来不管不顾的样子！”<br/>&nbsp;<br/>当我们喜津津朝着人情练达世事洞察的方向发展时，也越来越少将内心情绪真实流露。明明对办公桌对面损人利己的家伙愤怒不已，还是努力抚平厌恶故作平静；明明对自己因业绩突出得到晋升奖励洋洋得意，还是努力压抑兴奋假装谦卑。小学时“哭起来不管不顾的样子”的我，如今也处处以乐观开朗独立坚强示人，不轻易流露一丝胆怯脆弱。</p><p>有时我们是否太恪守礼仪规矩，忽视真实自我表达了？言语属于高级思维加工，可以口是心非言不由衷，情绪更多是本能生理反应，需要花更大努力去伪装。隐忍再隐忍，克制再克制，越来越多的怒气、不满、烦闷得不到合理释放，滋生出焦虑、抑郁等各种现代病。想哭就哭吧，想笑就笑吧，让郁结于心的情绪得到宣泄表达，有利于身体健康心理平衡。</p><p>喜怒哀乐是生活调味剂，是人生多彩面。敢爱敢恨会哭会笑的一个人才是有血有肉生动活泼个性丰满的一个人。不妨释放一下情绪，哭得痛痛快快，笑得开开心心，活得坦诚真实，活得潇洒自在！</p><p>立人教育为学员提供免费的情绪释放课程，可以轻松、快捷地解决压力和情绪问题，让你拥有健康愉悦的身心。</p><p>时间：本周日（6月11日）下午14:00-16:30<br/>地址：深圳市坂田街道五和大道南108号凯旋大厦五楼 （五号线：五和地铁站B出口直行20米）</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '4', '1522136685', '1522632228', '', '', '');
INSERT INTO `lz_article` VALUES ('88', '18', '10', 'lirenjy', '2017年8月27日设计素描培训课程', 'color:;font-weight:normal;', '/uploads/20180327/460b010bfd2f47d3f384e9d97da2c02e.png', '', '立人教育学员，均可享受免费学习！！', '<p style=\"text-align: center;\">2017年8月27日设计素描培训课程</p><p>注意：立人教育学员，均可享受免费学习！！</p><p>一、新课导入<br/>&nbsp;设计已经有几千年的历史，绘画素描是近几百年的事，在绘画素描之前，人类用什么样的造型艺术从事设计呢？</p><p>二、新课学习</p><p>（一）素描 <br/>1、定义：素描是一切造型艺术的基础，同时也是一种独立的艺术形式。<br/>2、素描的分类： <br/>目的和功能：一般可分为创作素描和习作素描两大类。<br/>表现内容：静物、动物、花卉、风景、人像及人体素描等。 <br/>使用工具：铅笔、炭笔、钢笔、毛笔、水墨、粉笔或两种工具穿插使用的素描等等<br/>作画时间：可分为长期素描、速写、默写等。 <br/>绘画传统：<br/>可分为中国写意传统的素描（一般称之为&quot;白描&quot;）和西方写实传统的素描两种。 <br/>表现形式：调子素描、结构素描.</p><p>（二）设计素描 <br/>（1）设计素描，又称“结构素描”。这种素描的特点是以线条为主要表现手段，不施明暗，没有光影变化，强调突出物象的结构特征。<br/>（2）结与构的认识 <br/>“结”是线、面、体的交汇点，“构”是形成这个交汇点的起因和由来，是形成“结”的动势和构成关系。 物体都有内部和外部的构成因素和结构关系，各部分的互相连接穿插、重叠、相离等决定了物体的形体。 <br/>（3）设计素描的特点 <br/>由于结构素描是以理解、剖析结构为最终目的，因此简洁明了的线条是它通常采用的主要表现手段。 设计素描要求把客观对象想象成透明体，把物体自身的前与后、表与里的结构表达出来，这实际上就是在训练我们对三维空间的想象力和把握能力。 设计素描是美术基础教学中的一门重要课程，是培养学生造型能力和设计思维能力的基础。学习设计素描对于初学者来说，关键在于理解对象的结构。 <br/>（4）结构素描的表现方法：用长直线，抓大的感觉；找结构点；线条的表现。线条是结构素描中最主要的艺术语言和表达方式，无论在塑造形体、表现体积和空间方面，还是表达情感方面，都显得十分明确，富有表现力和概括力。</p><p>三、课堂练习 <br/>&nbsp; 绘制几何体结构素描作业一张，4开纸大小，画面整洁。</p><p>四、重点难点回顾及总结 以线条为主要表现手段，可不施明暗没有光影变化或也可适当参插一些明暗关系，而强调突出物象的结构特征。它除了画出看得见的外观物象，还画出了看不见的内在连贯的结构以及看不见的外部轮廓。</p><p><br/>时间：本周日（8月27日）下午14:00-16:30<br/>地址：深圳市坂田街道五和大道南108号凯旋大厦五楼 （五号线：五和地铁站B出口直行20米）</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '8', '1522136797', '1522632239', '', '', '');
INSERT INTO `lz_article` VALUES ('89', '18', '10', 'lirenjy', '大咖来啦！个人形象设计管理课', 'color:;font-weight:normal;', '/uploads/20180327/e251fa47a4879d747e9c6e8408632581.png', '', '李晔（SAM）先生莅临立人教育，他将亲自讲授一堂关于个人形象设计管理的课程。作为站在众多耀眼明星背后的那个男人，作为形象打扮方面的魔术师，作为立人教育特约形象设计讲师，他将为来听课的你带来一场怎样的视听盛宴呢？', '<p><br/></p><p>&nbsp;温馨提示：立人教育学员免费学习！</p><p>设计师：李晔（SAM）先生莅临立人教育，他将亲自讲授一堂关于个人形象设计管理的课程。<br/>&nbsp;&nbsp;&nbsp; 作为站在众多耀眼明星背后的那个男人，作为形象打扮方面的魔术师，作为立人教育特约形象设计讲师，他将为来听课的你带来一场怎样的视听盛宴呢？</p><p>你会打扮吗？你想学会打扮自己吗？你知道如何塑造全新的自己，如何扮靓你的朋友圈吗？怎样让你的朋友、你的客户、你的同事以及圈子的人都鲜明清晰的记住你是谁？</p><p>在人群中，你本应该是那一位形象卓著，风格炯立，熠熠生辉的存在。每一种有型和靓丽都是从打扮开始的，扮靓自己、扮靓自己的闺蜜、扮靓自己的家人，扮靓每一个自己亲近的人，让生活中的自己的形象都鲜活立体起来，有一种成功从打扮开始的。</p><p>李晔（SAM）简介：<br/>97进入造型行业。99年毕业于北京电影学院影视人物造型专修。在传统的人物形象设计基础上，开创出独具特色的造型世界，并多次為大型的时装秀，演唱会做造型设计。</p><p>多年来穿梭于粤港，为众多国内外当红艺人打造专业造型。如：赵雅芝、凤凰传奇、赵薇，周迅，王力宏，孟庭苇、黄日华、关礼杰、，陈坤，罗嘉良，叶璇及等众多一线明星的形象设计者。工作主涉及影视广告、传媒、舞台造型、时装T台、教学等多个领域。<br/>&nbsp;&nbsp;&nbsp; 荣誉头衔：<br/>2004年全国十佳造型师、红造型机构创始人、国家级高级化妆造型师、国家级高级形象设计师、中国影视化妆委员会会员、中国电影电视技术学会化妆委员会会员、清华大学深圳分院形象管理专职讲师、&quot;MAKE UP FOR EVER&quot;华南区化妆造型师 韩国顶级品牌&quot;后&quot;华南区首席造型师 中国首届美容化妆大赛化妆造型组特聘评委（国家劳动部聘）、2005年出版个人著作《俏鼻媚唇巧化妆》， 《迷人眼妆百分百》，《完美俏脸全攻略》 （全国新华书店有售）</p><p><br/></p><p>时间：本周日（11月12日）下午14:00-16:30<br/>地址：深圳市坂田街道五和大道南108号凯旋大厦五楼 （五号线：五和地铁站B出口直行20米）</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '8', '1522136890', '1522632249', '', '', '');
INSERT INTO `lz_article` VALUES ('91', '31', '10', 'lirenjy', '2016年广东成人高考录取结果查询', 'color:;font-weight:normal;', '/uploads/20180329/3e24ca90b9f5c3bc3c4facf30e8e749e.jpg', '', '学员可根据自己喜欢的方式进行查询。', '<p>2016年广东成人高考录取结果查询方式 ：</p><p>　　(1)广东地区联通用户编辑短信息：“111+准考证号+4位出生年月(例：1998年8月，即9808)”发送至10629500，即可预订或查询成人高考录取结果。(信息费：2元/条，不含基本通信费)客服电话：0755-28811899。(提示编辑手机短信时不需要输入+号，连续输入数字即可) <br/>　　(2)广东地区移动用户编辑短信息：“RWWW08+准考证号+4位出生年月(例：1998年8月，即9808)”发送至10669500，即可预订或查询成人高考录取结果。(信息费：1元/条，不含基本通信费)客服电话：0755-28811899。(提示编辑手机短信时不需要输入+号，连续输入数字即可)</p><p>　 （3）参加2016年广东省成人高考录取查询时考生也可直接互联网登录《广东省教育考试院》网站，成人高考录取查询平台(http://www.eeagd.edu.cn/)进行查询录取结果。</p><p><br/></p><p style=\"text-align: right;\">立人教育</p><p><br/></p>', '', '0', '1', '0', '', '0', '0', '2', '1522305023', '1522305738', '', '', '');
INSERT INTO `lz_article` VALUES ('92', '31', '10', 'lirenjy', '2016年成人高考前辅导通知', 'color:;font-weight:normal;', '/uploads/20180329/6d8149eb322efba7ab9ec76d9deffc7d.jpg', '', '2016年春季立人教育开设考前辅导，请同学们根据安排的时间积极参与。', '<p><br/></p><p>&nbsp; &nbsp; &nbsp;&nbsp; 2016年春季立人教育开设考前辅导，请同学们根据安排的时间积极参与。</p><p>1、高升本 理科：语文、数学、外语、理化<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 文科：语文、数学、外语、史地<br/>2、高升专 理科：语文、数学、外语<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 文科：语文、数学、外语<br/>3、医学类：语文、数学、外语<br/>4、专升本 哲学、文学、历史学以及中医、中药学：政治、外语、大学语文<br/>5、艺术类： 政治、外语、艺术概论<br/>6、工学、理学： 政治、外语、高数(一)<br/>7、经济学、管理学以及职业教育类、生物科学类、地理科学类、环境科学类、心理学类：政治、外语、高数(二)<br/>8、法学： 政治、外语、民法<br/>9、教育学 ：政治、外语、教育理论<br/>10、农学： 政治、外语、生态学基础<br/>11、医学类： 政治、外语、医学综合</p><p>辅导时间：7月5日---8月30日。</p><p>辅导方式：辅导教室，按公布的辅导时间参与实时的辅导答疑。届时同学们可与老师进行互动交流，咨询有关学习和考试方面的问题。辅导课件将陆续上传到学习平台对应课程中，本次没有安排考前辅导的课程，请同学们自行学习课程指导书和以前的考前辅导课件，以备考试。</p><p>如有问题，请咨询立人教育招生部老师<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br/>&nbsp;</p><p style=\"text-align: right;\"><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp; </span></p><p style=\"text-align: right;\"><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"><br/></span></p><p style=\"text-align: left;\"><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">立人教育</span>&nbsp;</p><p style=\"text-align: right;\">2016年6月25日</p><p><br/></p>', '', '0', '1', '0', '', '0', '0', '1', '1522305501', '1522305682', '', '', '');
INSERT INTO `lz_article` VALUES ('93', '31', '10', 'lirenjy', '2017年1月请各位学员领取大学录取通知书', 'color:;font-weight:normal;', '/uploads/20180329/d1a4b793478df5f41f23c8075fbb149a.jpg', '', '请2016年9月参加成人高考的立人学员，前往立人教育中心领取录取通知书。', '<p><br/></p><p>&nbsp;&nbsp; 亲爱的立人学员：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 从2017年1月10日开始，各位学员可前往立人教育中心领取梦寐以求的大学录取通知书。</p><p style=\"text-align: right;\"><br/>立人教育<br/>2017年1月9日<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><p><br/></p>', '', '0', '1', '0', '', '0', '0', '1', '1522305744', '1522306812', '', '', '');
INSERT INTO `lz_article` VALUES ('94', '31', '10', 'lirenjy', '2017年3月入学通知', 'color:;font-weight:normal;', '/uploads/20180329/4a498ecf095af6881f30b776df17f732.jpg', '', ' 2016年9月参加成人高考的学员，你们已经正式入学！', '<p>亲爱的立人学员：<br/>&nbsp;&nbsp;&nbsp;</p><p>&nbsp; &nbsp; &nbsp;&nbsp; 2016年9月参加成人高考的学员，你们已经正式入学；踏上新的学习旅程！</p><p><br/></p><p style=\"text-align: right;\">立人教育</p><p style=\"text-align: right;\">2017年3月2日</p><p><br/></p>', '', '0', '1', '0', '', '0', '0', '4', '1522305948', '1522306771', '', '', '');
INSERT INTO `lz_article` VALUES ('95', '31', '10', 'lirenjy', '学籍档案查询通知', 'color:;font-weight:normal;', '/uploads/20180329/229cf60246ed64dcca31299af1eaaf51.jpg', '', '2016年9月入学——2017年3月入学的的学员可在学信网查询你们的学籍档案。', '<p><br/></p><p>亲爱的立人学员：</p><p><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通过前期不断的努力，现在可以在学信网查询你们的学籍档案了。为了保证信息真实有效，请各位学员登陆学信网，查询一下自己的学籍信息是否有误；如信息有误，请联系立人教育老师，申请及时更改，以免影响毕业。</p><p><br/></p><p style=\"text-align: right;\">立人教育</p><p style=\"text-align: right;\">2017年4月12日</p><p><br/></p>', '', '0', '1', '0', '', '0', '0', '7', '1522306172', '0', '', '', '');
INSERT INTO `lz_article` VALUES ('96', '31', '10', 'lirenjy', '毕业摄像通知', 'color:;font-weight:normal;', '/uploads/20180329/f86859b568bd20f4c15405fffe910eec.jpg', '', '请各位学员尽快摄像，提前准备。', '<p><br/></p><p>通知：</p><p><br/>&nbsp;&nbsp;&nbsp; 2015年3月——2016年3月入学的学员经过前期的努力，你们即将毕业，请各位学员尽快摄像，提前准备，以免影响领取毕业证。</p><p><br/></p><p style=\"text-align: right;\">立人教育</p><p style=\"text-align: right;\">2017年7月5日</p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p>', '', '0', '1', '0', '', '0', '0', '1', '1522306456', '1522306872', '', '', '');
INSERT INTO `lz_article` VALUES ('97', '31', '10', 'lirenjy', '关于领取2017年9月毕业证以及相关事项的通知', 'color:;font-weight:normal;', '/uploads/20180329/b7e8f7b70801875f1d76b133629a598c.PNG', '', '       高等学历教育2017年6月符合毕业条件的学员，毕业证将于2017年9月2日起发放，名单请上登陆微信（毕业办证结果查询）查询。查询到符合毕业条件的同学请按以下时间和程序领取毕业证书。符合学士学位授予条件的该批本科毕业生将统一办理，授予及领取学位证时间将另行通知', '<p><br/>&nbsp;<br/>&nbsp; &nbsp; &nbsp;&nbsp; 高等学历教育2017年6月符合毕业条件的学员，毕业证将于2017年9月2日起发放，名单请上登陆微信（毕业办证结果查询）查询。查询到符合毕业条件的同学请按以下时间和程序领取毕业证书。符合学士学位授予条件的该批本科毕业生将统一办理，授予及领取学位证时间将另行通知。具体事项通知如下：</p><p>（一）领证时间：2017年9月2日——30日 上午9：00-12：00，下午13：30-18：00。<br/>（二）凭有效证件领取：领证时请学生本人携带身份证前来领取。毕业证不能代领。<br/>（三）领取地点：立人教育中心</p><p style=\"text-align: right;\"><br/>立人教育</p><p style=\"text-align: right;\">2017年9月1日</p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p>', '', '0', '1', '0', '', '0', '0', '4', '1522306893', '1522655103', '', '', '');
INSERT INTO `lz_article` VALUES ('98', '31', '10', 'lirenjy', '关于毕业证书的验证报名', 'color:;font-weight:normal;', '/uploads/20180329/c6f91a53842dadf30d7ad3b56d73ad52.jpg', '', '   立人教育的学员，所领的毕业证均可在国家教育部指定的“中国高等教育学生信息网（http://www.chsi.com.cn/）”查询。', '<p><br/></p><p><br/></p><p>&nbsp;&nbsp; 立人教育的学员，所领的毕业证均可在国家教育部指定的“中国高等教育学生信息网（http://www.chsi.com.cn/）”查询。有需要打印验证报告的学员，可直接在学信网上打印。</p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\">立人教育</p><p style=\"text-align: right;\">2017年10月10日</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '0', '1', '0', '', '0', '0', '4', '1522306991', '0', '', '', '');
INSERT INTO `lz_article` VALUES ('99', '16', '10', 'lirenjy', '自学考试不会取消  相关法律法规无调整变化', 'color:;font-weight:normal;', '/uploads/20180329/c310be8f69ff1e5d671bd86b48a3cbea.png', '', '       关于“2018年国家是否会取消自考”的问题回应称，目前相关法律法规均无调整变化，自学考试不会取消。', '<p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 12px;\"><br/></span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 12px;\">关于“2018年国家是否会取消自考”的问题回应称，目前相关法律法规均无调整变化，自学考试不会取消。</span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 12px;\"><br/></span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 12px;\">教育部指出，高等教育自学考试是个人自学、社会助学和国家考试相结合的高等教育形式，是中国高等教育体系的重要组成部分，面向社会全体公民提供高等教育机会，辐射高等教育资源服务，提高全民族的思想道德素质和科学文化素质。自学考试在《中华人民共和国高等教育法》和《国务院高等教育自学考试暂行条例》中都有明确的规定，目前相关法律法规均无调整变化，自学考试不会取消。专科和本科是自学考试专业的基本层次，没有取消或更改的计划。</span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 12px;\">教育部透露，自学考试以个人自主选择学习方式为主，不设统一入学考试门槛，报考者可自主报名参加课程考试，考试合格发给单科合格证书，专业设置的所有课程合格后，可颁发学历证书。自学考试报名及考试组织等工作由省级自学考试办公室负责，建议有意报名者向所在省市区的自学考试办公室进行咨询具体办法。自学考试专业设主考学校，由普通高等学校担任。参加自学考试的专业课程学习，可以选择具有高等教育资质的教育机构，多为普通高等学校，具体办法可向所要报考专业的主考学校咨询。</span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '2', '1522309400', '1522632002', '', '', '');
INSERT INTO `lz_article` VALUES ('104', '31', '10', 'lirenjy', '广东省2018年1月自学考试成绩公布', 'color:;font-weight:normal;', '/uploads/20180402/d536914f7839ebfcd109e6b594885947.png', '广东省2018年1月自学考试成绩公布', '广东省2018年1月自学考试成绩今天正式公布，已经参加了广东省2018年1月自学考试的考生可以通过自学考试成绩查询系统查询到1月考试科目成绩。', '<p>广东省2018年1月自学考试成绩今天正式公布，已经参加了广东省2018年1月自学考试的考生可以通过自学考试成绩查询系统查询到1月考试科目成绩。</p><p><br/></p><p>温馨提示：</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: &quot;宋体&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 28px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p>\n	1、需要查询已通过的科目可登录广东自学考试管理系统进行查询</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: &quot;宋体&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 28px; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p>\n	2、自考<a class=\"innerlink\" style=\"color: rgb(0, 102, 153); text-decoration: none;\" href=\"http://bm.zikao.gd/\" target=\"_blank\">报名</a>、报考、成绩、毕业等问题在线咨询.</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '0', '1', '0', '', '0', '0', '0', '1522653311', '0', '', '', '');
INSERT INTO `lz_article` VALUES ('105', '31', '10', 'lirenjy', '广东开放大学春季学员可上学信网查询学籍', 'color:;font-weight:normal;', '/uploads/20180402/3f247b4059cc1140e2bd4112ad479723.gif', '成人高考，自考，网络教育', '2017级春季信息学籍已注册完毕，请学员(包括高升专、专升本)务必到学信网（www.chsi.com.cn）查询自己的学籍信息，如有问题请及时反馈。', '<p><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"><br/></span></p><p><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">&nbsp; &nbsp; 2017</span><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">级春季信息学籍已注册完毕，请学员</span><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">(</span><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">包括高升专、专升本</span><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">)</span><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">务必到学信网（</span><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">www.chsi.com.cn</span><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">）查询自己的学籍信息，如有问题请及时反馈。</span></p><p><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"><br/></span></p><p><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"><br/></span></p><p><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"><br/></span></p><p><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"><br/></span></p><p><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"><br/></span></p><p><span style=\"background-color: transparent; box-sizing: border-box; color: rgb(51, 51, 51); font-family: 宋体; font-size: 19px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; list-style-image: none; list-style-position: outside; list-style-type: none; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"><br/></span></p>', '', '0', '1', '0', '', '0', '0', '2', '1522654087', '0', '', '', '');
INSERT INTO `lz_article` VALUES ('100', '17', '10', 'lirenjy', '人民日报发文强调“继续教育”更加开放化！', 'color:;font-weight:normal;', '/uploads/20180329/1d29db70dacacba07d3b42838105330a.jpg', '', '习近平同志所作的党的十九大报告中提出：建设教育强国是中华民族伟大复兴的基础工程，必须把教育事业放在优先位置，深化教育改革，加快教育现代化，办好人民满意的教育。人民日报针对此项，于一月八日发表《优先发展教育事业》一文。', '<p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\">习近平同志所作的党的十九大报告中提出：建设教育强国是中华民族伟大复兴的基础工程，必须把教育事业放在优先位置，深化教育改革，加快教育现代化，办好人民满意的教育。人民日报针对此项，于一月八日发表《优先发展教育事业》一文。</span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\">文中先给出一组数据我们来看一下：2016年，我国学前３年毛入园率为77.4%，小学净入学率为99.9%，初中阶段毛入学率为104%。九年义务教育巩固率为93.4%，高中阶段毛入学率为87.5%，高等教育毛入学率为42.7%。</span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\">义务教育阶段，我们不用去管他，我们直接看初升高，在这一阶段，辍学人数6%，数据点并不高，每100名初中生，有6人选择放弃学业，走向社会。但是在高考走向大学的这条路上，辍学率达到了58%，也就是说，有一多半人，选择放弃大学学业走向社会工作。那在这一多半高中毕业的人群中，起码有50%的人对于辍学这件事是后悔的，那么也就是说，这些人有继续提高学历的想法。回高中复读的可能性不大。那么，这类人群在参加工作几年后，即将走向的，就是我们现在走的这条路——参加继续教育。</span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\">这也就产生了另外一个问题，继续教育需求量大，但体制并不规范。从而导致继续教育的工作非常混乱。各地自考机构坑蒙拐骗，考办工作漏洞较大。很多考办工作人员对当地政策并不熟悉，甚至比我们知道的还少。成考方面，入学考试现在比较规范，但在教学方面漏洞任然很大。有些学校地方学习站并不开设课程，在学员不参加学习的情况下，直接开卷考试应付差事。而远程教育，简直成为了机构的敛财工具。门槛奇低、报价奇高。不在教学上做文章，反而打着“包过”、“无需参加考试”、“全程托管”、“考试替考”的幌子吸引学生。</span><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\">教改的工作是势在必行的，规范化是必不可少的。如果你不想付出就想拿到高学历，这是完全不对的想法。在文中最末提出，要办好网络教育、继续教育。我国将探索“弯道超车”，打造符合国情实际的网络化、数字化、个性化、终身化教育体系，促进优质资源共建共享，以教育信息化带动教育现代化。这些举措充分彰显教育与学习贯穿人们一生的必要性和可行性。三要加强师德师风建设，培养高素质教师队伍，倡导全社会尊师重教，同时继续支持和规范社会力量兴办教育。总之，我国将通过多种途径和方式，使绝大多数新增劳动力接受高中阶段教育、更多接受高等教育，进而办好继续教育，加快建设学习型社会，大力提高国民素质。展望未来，在“两个一百年”奋斗目标一步步变为现实的同时，一个人人愿学、时时可学、处处能学，学有所成、学有所用、学有所乐的学习型社会必将一步步建成。</span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><img width=\"500\" height=\"320\" title=\"g4.jpg\" alt=\"g4.jpg\" src=\"http://www.sxmaps.com/d/file/content/2018/01/5a5d92906258f.jpg\"/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\">也就是说，我们国家的继续教育环节，是要面向全国全民的，个人认为，未来的继续教育，应该保持一个宽进严出的姿态，谁想学都可以，但是，如果达不到学习要求，那么就不准予毕业。这样，一方面保持了教育的受众面广，公正性强，另一方面也保证了继续教育的社会认可度。</span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><img width=\"450\" height=\"250\" title=\"g5.jpg\" alt=\"g5.jpg\" src=\"http://www.sxmaps.com/d/file/content/2018/01/5a5d92b80ef54.jpg\"/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\">那么，我也奉劝各位在参加成考和远程教育的同学。既然学费都花了，那么就利用现有的学习条件，抽时间好好学习。很多学员由于时间问题，报的托管性的远程或者成考。但是，这种模式不是说不给你学习机会。该要账号要账号，该去教室去教室。这些课程不上白不上。既然有学习条件，一定要利用。学到的知识永远都是自己的。</span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\"><br/></span></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: \"><span style=\"font-size: 14px;\"><br/></span></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '2', '1522309593', '1522632172', '', '', '');
INSERT INTO `lz_article` VALUES ('106', '31', '10', 'lirenjy', '领取2017年12月毕业证以及相关事项的通知', 'color:;font-weight:normal;', '/uploads/20180402/55912aaecbe7690b168517a11d7bc843.jpg', '', '高等学历教育2017年12月符合毕业条件的学员，毕业证将于2018年3月15日起发放，请上登陆微信（毕业办证结果查询）查询。查询到符合毕业条件的同学请按以下时间和程序领取毕业证书。符合学士学位授予条件的该批本科毕业生将统一办理，授予及领取学位证时间将另行通知', '<p style=\"background-color: transparent; border-bottom-color: rgb(102, 102, 102); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(102, 102, 102); border-left-style: none; border-left-width: 0px; border-right-color: rgb(102, 102, 102); border-right-style: none; border-right-width: 0px; border-top-color: rgb(102, 102, 102); border-top-style: none; border-top-width: 0px; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &amp;quot;Microsoft Yahei&amp;quot;,&amp;quot;Open Sans&amp;quot;,sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; vertical-align: baseline; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">高等学历教育2017年12月符合毕业条件的学员，毕业证将于2018年3月15日起发放，请上登陆微信（毕业办证结果查询）查询。查询到符合毕业条件的同学请按以下时间和程序领取毕业证书。符合学士学位授予条件的该批本科毕业生将统一办理，授予及领取学位证时间将另行通知。具体事项通知如下：</p><p style=\"background-color: transparent; border-bottom-color: rgb(102, 102, 102); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(102, 102, 102); border-left-style: none; border-left-width: 0px; border-right-color: rgb(102, 102, 102); border-right-style: none; border-right-width: 0px; border-top-color: rgb(102, 102, 102); border-top-style: none; border-top-width: 0px; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &amp;quot;Microsoft Yahei&amp;quot;,&amp;quot;Open Sans&amp;quot;,sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; vertical-align: baseline; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">（一）领证时间：2018年3月15日——30日 上午9：00-12：00，下午13：30-18：00。<br/>（二）凭有效证件领取：领证时请学生本人携带身份证前来领取。毕业证不能代领。<br/>（三）领取地点：立人教育中心</p><p style=\"background-color: transparent; border-bottom-color: rgb(102, 102, 102); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(102, 102, 102); border-left-style: none; border-left-width: 0px; border-right-color: rgb(102, 102, 102); border-right-style: none; border-right-width: 0px; border-top-color: rgb(102, 102, 102); border-top-style: none; border-top-width: 0px; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &amp;quot;Microsoft Yahei&amp;quot;,&amp;quot;Open Sans&amp;quot;,sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: right; text-decoration: none; text-indent: 0px; text-transform: none; vertical-align: baseline; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/>立人教育</p><p style=\"background-color: transparent; border-bottom-color: rgb(102, 102, 102); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(102, 102, 102); border-left-style: none; border-left-width: 0px; border-right-color: rgb(102, 102, 102); border-right-style: none; border-right-width: 0px; border-top-color: rgb(102, 102, 102); border-top-style: none; border-top-width: 0px; box-sizing: border-box; color: rgb(102, 102, 102); font-family: &amp;quot;Microsoft Yahei&amp;quot;,&amp;quot;Open Sans&amp;quot;,sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: right; text-decoration: none; text-indent: 0px; text-transform: none; vertical-align: baseline; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">2018年3月13日</p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '2', '1522654501', '0', '', '', '');
INSERT INTO `lz_article` VALUES ('101', '16', '10', 'lirenjy', '《高等学历继续教育专业 设置管理办法》的通知', 'color:;font-weight:normal;', '/uploads/20180329/f8272fcc9e29bf7f26d8424f9b609183.png', '', '为加强对高等学历继续教育专业设置的统筹规划与宏观管理，进一步扩大省级政府教育统筹权和高校办学自主权，促进各类高等学历继续教育健康、有序、协调发展，我部研制了《高等学历继续教育专业设置管理办法》（以下简称《管理办法》）。', '<p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">各省、自治区、直辖市教育厅（教委）、高等教育自学考试委员会，新疆生产建设兵团教育局，有关部门（单位）教育司（局），部属各高等学校，解放军高等教育自学考试委员会，国家开放大学、考试中心：</p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">为加强对高等学历继续教育专业设置的统筹规划与宏观管理，进一步扩大省级政府教育统筹权和高校办学自主权，促进各类高等学历继续教育健康、有序、协调发展，我部研制了《高等学历继续教育专业设置管理办法》（以下简称《管理办法》）。现将《管理办法》印发给你们，并就有关事项通知如下：</p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">一、各地各高校要认真落实《管理办法》要求，对照现行《普通高等学校本科专业目录》《普通高等学校高等职业教育专科专业目录》和《高等学历继续教育补充专业目录》，对现设的本、专科专业进行梳理、调整和规范。2017年，各地各高校要通过全国高等学历继续教育专业管理和公共信息服务平台做好拟招生专业的申报工作（平台启用事项另行通知），自2018年起，新入学的学生全部按照目录内专业进行招生。按照“老人老办法、新人新办法”的原则，现在籍学生仍按原专业培养至毕业。</p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">二、各地各高校要按照成人学习特点和教学规律，做好专业与课程体系建设，完善人才培养方案，增强人才培养的针对性和适用性，不断提高人才培养质量。</p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">三、高等教育自学考试开考专业相关规定由全国高等教育自学考试指导委员会依据《管理办法》另行发布。</p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">四、《管理办法》是教育部规范高等学历继续教育专业设置的首份文件，对于统一各类高等学历继续教育专业设置管理政策，转变管理方式，明确责任和管理程序，加强信息服务与过程监管具有重要意义。希望各省级教育行政部门、高等教育自学考试委员会要加强领导，认真组织宣传、学习和贯彻工作，确保《管理办法》的顺利实施。</p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">实施过程中的情况和问题请及时报我部职业教育与成人教育司。 　</p><p style=\"margin: 0px; padding: 0px; text-align: right; color: rgb(97, 97, 97); text-transform: none; line-height: 26.25px; text-indent: 28px; letter-spacing: normal; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; -webkit-text-stroke-width: 0px; background-color: transparent;\">　　教育部</p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　</p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/></p><p style=\"background-color: transparent; color: rgb(97, 97, 97); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; line-height: 26.25px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 28px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '2', '1522310071', '1522632012', '', '', '');
INSERT INTO `lz_article` VALUES ('103', '39', '10', 'lirenjy', '2018年各院校考试时间', 'color:;font-weight:normal;', '/uploads/20180402/5b6253c3a581f8473fe7ee0766d558b4.jpg', '广州工商学院考试时间，惠州学院，海南大学，广东开放大学，中国传媒大学，陕西师范大学，陕西师范大学', '2018年广州工商学院成人高考考试时间，2018年惠州学院成人高考考试时间，海南大学自考考试时间，广东开放大学考试时间，中国传媒大学网络教育考试时间，陕西师范大学网络教育考试时间，陕西师范大学网络教育考试时间', '<p>&nbsp;</p><p>广州工商学院&nbsp;&nbsp;&nbsp; 每年10月参加考试（学位有限，招满截止）</p><p><br/></p><p>惠州学院&nbsp;&nbsp;&nbsp; 每年10月参加考试（学位有限，招满截止）</p><p><br/></p><p>海南大学&nbsp;&nbsp;&nbsp; 每年1月，4月，10月参加统考（院校自主安排考试另行通知）(<span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(0, 0, 0); font-family: sans-serif; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\">学位有限，招满截止）</span></p><p><br/></p><p>广东开放大学&nbsp;&nbsp;&nbsp; 每年3月、9月参加考试（学位有限，招满截止）</p><p><br/></p><p>中国传媒大学&nbsp; 每年3月、9月参加考试（学位有限，招满截止）</p><p><br/></p><p>特西北工业大学&nbsp; 每年3月、9月参加考试（学位有限，招满截止）</p><p><br/></p><p>陕西师范大学&nbsp; 每年3月、9月参加考试（学位有限，招满截止）</p><p><br/></p><p>电子科技大学&nbsp; 每年3月、9月参加考试（学位有限，招满截止）</p><p><br/></p><p><br/></p><p>具体考试时间以考试院公布时间为准。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '0', '1', '0', '', '0', '0', '29', '1522634044', '1522652538', '', '', '');
INSERT INTO `lz_article` VALUES ('102', '16', '10', 'lirenjy', '高等学历继续教育专业设置管理办法', 'color:;font-weight:normal;', '/uploads/20180329/ff764773b90cf90e21c86e7066f3a448.jpg', '', '省级教育行政部门、高校设立相应的专业设置评议专家组织，或在现有专家组织中增加高等学历继续教育专业设置评议职能。充分发挥专家组织在高等学历继续教育专业设置、建设、监督与评估方面的政策研究、论证审议和决策咨询作用。\n', '<p><br/>第一章 总 则<br/>第一条 为加强对高等学历继续教育专业设置的统筹规划与宏观管理，促进各类高等学历继续教育健康、有序、协调发展，根据《中华人民共和国高等教育法》《中华人民共和国行政许可法》《高等教育自学考试暂行条例》《国务院对确需保留的行政审批项目设定行政许可的决定》(国务院令第412号)等规定，制定本办法。<br/>第二条 普通本科高校、高等职业学校、开放大学、独立设置成人高等学校（以下简称高校）举办的各类高等学历继续教育专业设置和管理，高等教育自学考试开考专业的管理，适用本办法。<br/>第三条 高校设置高等学历继续教育专业要根据学校自身办学能力，发挥办学优势和特色，主动适应国家战略和经济社会发展需要，坚持终身学习理念，以满足学习者学习发展需求为导向，以学习者职业能力提升为重点，遵循高等教育规律和职业人才成长规律，培养具有较高综合素养、适应职业发展需要、具有创新意识的应用型人才。<br/>第四条 教育部负责高等学历继续教育专业设置、高等教育自学考试开考专业设置的政策制定和宏观管理。<br/>省级教育行政部门负责本行政区域内高校高等学历继续教育专业设置的统筹指导和监管服务。<br/>高校依照相关规定自主设置和调整高等学历继续教育专业。<br/>全国高等教育自学考试指导委员会（以下简称全国考委）负责制订高等教育自学考试开考专业清单和基本规范。<br/>受教育部委托，国家行业主管部门、行业组织负责对本行业领域相关高等学历继续教育专业设置进行指导。<br/>第五条 教育部组织设立高等学历继续教育专业设置评议专家组织。省级教育行政部门、高校设立相应的专业设置评议专家组织，或在现有专家组织中增加高等学历继续教育专业设置评议职能。充分发挥专家组织在高等学历继续教育专业设置、建设、监督与评估方面的政策研究、论证审议和决策咨询作用。<br/>第六条 教育部建立全国高等学历继续教育专业管理和公共信息服务平台（以下简称信息平台），对高等学历继续教育专业设置实行全程信息化管理与服务。</p><p>第二章 专业目录<br/>第七条 高等学历继续教育本、专科专业目录由《普通高等学校本科专业目录》《普通高等学校高等职业教育专科专业目录》和《高等学历继续教育补充专业目录》（见附件）组成。《高等学历继续教育补充专业目录》由教育部制定、发布，适时调整，实行动态管理。<br/>第八条 全国考委、国家行业主管部门、行业组织、开放大学和独立设置的成人高校可对《高等学历继续教育补充专业目录》提出增补专业的建议。材料内容包括：相关行业（职业）人才需求报告、专业设置必要性和可行性论证报告、专业简介等。省级教育行政部门对本行政区域内高校提出的增补专业建议进行评议汇总，于每年11月30日前上报信息平台。全国考委、国家行业主管部门、行业组织可直接向教育部提交建议材料。教育部组织专家确定增补、撤销或更名的专业名单，适时向社会发布。<br/>第九条 高等学历继续教育国家控制专业为现行《普通高等学校本科专业目录》《普通高等学校高等职业教育专科专业目录》中已经明确的国家控制专业。</p><p>第三章 专业设置的基本条件和程序<br/>第十条 高校设置高等学历继续教育专业，应同时具备以下基本条件：<br/>（一）符合学校的办学定位和发展规划。<br/>（二）适应经济社会发展和产业结构调整需要，满足学习者多样化终身学习需求。<br/>（三）有科学、规范、完整的专业人才培养方案及其所必需的教师队伍及教学辅助人员。<br/>（四）具备开办专业所必需的经费、教学设施、图书资料或数字化学习资源、仪器设备、实习实训场所等办学条件，有保障专业可持续发展的相关制度和必要措施。<br/>第十一条 普通本科高校、高等职业学校须在本校已开设的全日制教育本、专科专业范围内设置高等学历继续教育本、专科专业，并可根据社会需求设置专业方向，但专业方向名称不能与高等学历继续教育本、专科专业目录中已有专业名称相同，不能涉及国家控制专业对应的相关行业。具体程序为：<br/>（一）各高校通过信息平台填报当年拟招生专业及相关信息。<br/>（二）省级教育行政部门统筹汇总本行政区域内高校提交的专业信息，并通过信息平台提交教育部。<br/>（三）教育部对各地上报的专业信息进行汇总并向社会公布。<br/>第十二条 开放大学和独立设置的成人高校根据自身办学条件可在高等学历继续教育本、专科专业目录中设置高等学历继续教育专业，并可根据社会需求设置专业方向，具体要求同第十一条。具体程序为：<br/>（一）对于拟设置的新专业，学校要组织校内有关专业设置评议专家组进行审议，通过信息平台提交人才需求报告、专业论证报告和人才培养方案等申请材料。信息平台将面向社会公示一个月，学校官方网站应同步公示。公示期满后，学校对公示期间收到的意见进行研究处理，及时将意见处理情况及修改后的申请材料提交信息平台。<br/>（二）对于已开设的专业，各校通过信息平台填报当年拟招生专业及相关信息。<br/>（三）省级教育行政部门根据本省（区、市）实际，对本行政区域内开放大学和独立设置的成人高校提交的新设专业申请材料和当年拟招生专业信息进行统筹汇总，通过信息平台提交教育部。<br/>（四）教育部对各地上报的专业信息进行汇总并向社会公布。<br/>第十三条 开放大学和独立设置的成人高校设置高等学历继续教育国家控制专业,具体程序为：<br/>（一）学校通过信息平台填报当年拟招生国家控制专业及相关信息。<br/>（二）省级教育行政部门在取得相关行业主管部门意见后，将本省（区、市）内拟新设国家控制专业的申请材料报送教育部。<br/>（三）教育部按照现有国家控制专业审批办法管理。<br/>第十四条 各类高校拟招生专业及相关信息须于当年1月31日前通过信息平台填报；省级教育行政部门对本行政区域内各类高校提交的专业信息统筹汇总后，须于当年3月31日前通过信息平台提交教育部；教育部对各地上报的专业信息进行汇总，于当年5月31日前向社会公布专业备案或审批结果。<br/>第十五条 全国考委在高等学历继续教育本、专科专业目录范围内，确定高等教育自学考试开考专业清单，制订相应专业基本规范，并于当年5月31日前通过信息平台公布。各省（区、市）高等教育自学考试委员会、军队高等教育自学考试委员会在清单范围内选择开考专业。</p><p>第四章 监督与评估<br/>第十六条 教育部和全国考委将充分运用信息平台监测高等学历继续教育专业设置的工作运行，全面掌握专业设置整体情况和动态信息，及时公布全国高等学历继续教育专业设置和调整情况。推动建立教育行政部门、行业组织、第三方机构、高校等多方参与的监管制度和评价机制。<br/>第十七条 省级教育行政部门要充分运用信息平台掌握本行政区域内的高校继续教育专业设置情况，制订高等学历继续教育专业检查和评估办法，加强对高校高等学历继续教育专业建设的监督与评估，评估结果作为该专业继续招生、暂停招生的依据。对存在人才培养定位不适应社会需求、办学条件严重不足、教学（考试）管理严重不规范、教育质量低下等情况，省级教育行政部门要视情节责令有关高校对相应专业进行限期整改，完成整改前，该专业暂停招生，且高校不得设置新专业；情节严重且拒不整改的，省级教育行政部门应建议高校主管部门停止该专业招生。<br/>第十八条 对未按本办法设置的高等学历继续教育专业，高校不得进行宣传和组织招生。对违反本办法擅自设置专业或经查实申请材料弄虚作假的高校，教育部和省级教育行政部门将予以公开通报批评并责令整改，情节严重的，三年内不得增设高等学历继续教育专业。<br/>第十九条 高校应加强高等学历继续教育专业建设，建立和完善自我评价机制。鼓励引入专门机构或社会第三方机构对学校高等学历继续教育专业办学水平和质量进行评估及认证。<br/>第五章 附 则<br/>第二十条 全国考委、省级教育行政部门依据本办法制订实施细则，报教育部备案后实施。<br/>第二十一条 本办法自发布之日起实施。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '2', '1522310257', '1522632025', '', '', '');
INSERT INTO `lz_article` VALUES ('107', '31', '10', 'lirenjy', '请2015年秋季的学员，请尽快填写毕业申请表', 'color:;font-weight:normal;', '/uploads/20180402/11e88f1dae64b0e4782354d1f01e08fb.jpg', '成考，自考', '请各位学员尽快填写毕业申请表。', '<p><br/></p><p>亲爱的立人学员：</p><p><br/></p><p>&nbsp; &nbsp; &nbsp; 2015年秋季入学的学员，请尽快到立人教育中心填写毕业申请表。</p><p><br/></p><p><br/></p><p style=\"text-align: right;\">立人教育中心</p><p style=\"text-align: right;\">2017年12月8日</p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p>', '', '1', '1', '0', '', '0', '0', '2', '1522655185', '0', '', '', '');
INSERT INTO `lz_article` VALUES ('108', '18', '10', 'lirenjy', '2017年10月自考的学员请注意', 'color:;font-weight:normal;', '/uploads/20180402/37f7dbdb2319038ebef8ccf5b17bbc4b.PNG', '自考学习，自考课程', '自考在线课程，自考在线测试。', '<p><br/></p><p>亲爱的各位学员：</p><p><br/></p><p>&nbsp; &nbsp; &nbsp; &nbsp; 2017年10月自考的学员，可根据自己的情况，进入立人教育学习系统进行在线学习或在线测试。</p><p><br/></p><p><br/></p><p style=\"text-align: right;\">立人教育中心</p><p style=\"text-align: right;\">2017年8月10日</p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p>', '', '0', '1', '0', '', '0', '0', '0', '1522656209', '1522656421', '', '', '');
INSERT INTO `lz_article` VALUES ('109', '18', '10', 'lirenjy', '2017年成人高考考前辅导', 'color:;font-weight:normal;', '/uploads/20180402/ac93272b9d736584c1cfce0cc834e747.PNG', '成人高考在线免费辅导', '立人教育根据成人高考的往年考题，整理一套适合学员的考试系统。立人学员可进行免费学习。', '<p><br/></p><p>亲爱的立人学员：</p><p>&nbsp;</p><p>&nbsp; &nbsp; &nbsp;&nbsp; 2017年9月10日开始，请参加成人高考的学员，进入立人教育系统平台进行学习。预祝各位学员，考出理想的成绩！</p><p><br/></p><p><br/></p><p style=\"text-align: right;\">立人教育中心</p><p style=\"text-align: right;\">2017年9月10日</p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p><p style=\"text-align: right;\"><br/></p>', '', '0', '1', '0', '', '0', '0', '0', '1522656442', '0', '', '', '');
INSERT INTO `lz_article` VALUES ('110', '14', '10', 'lirenjy', '自学考试毕业登记手续办理须知', 'color:;font-weight:normal;', '/uploads/20180402/7ef7795ff4133199848546427dae53bf.PNG', '自学考试毕业登记手续办理须知', '自学考试的毕业时间上半年为6月，下半年为12月。考生可以根据课程合格情况选择毕业专业。办理时间上半年为6月15-20日，下半年为12月15-20日。', '<p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: center; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">（2017年下半年起执行）</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　一、自学考试毕业登记手续办理时间</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　自学考试的毕业时间上半年为6月，下半年为12月。考生可以根据课程合格情况选择毕业专业。办理时间上半年为6月15-20日，下半年为12月15-20日。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　二、办理毕业登记前期工作</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　1.申请上半年毕业的考生，必须在5月1日前办妥转考、免考、考籍信息更正（含身份证号升位）手续；申请下半年毕业的考生，必须在11月1日前办妥转考、免考、考籍信息更正（含身份证号升位）手续。逾期办理者，不能申请本次毕业。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　2.申请本科毕业的考生，须在上半年5月20日前、下半年11月20日前，登录广东省自学考试管理系统（网址：<a style=\"border-bottom-color: rgb(0, 102, 204); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(0, 102, 204); border-left-style: none; border-left-width: 0px; border-right-color: rgb(0, 102, 204); border-right-style: none; border-right-width: 0px; border-top-color: rgb(0, 102, 204); border-top-style: none; border-top-width: 0px; font-family: &quot;微软雅黑&quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-decoration: none;\" href=\"http://www.stegd.edu.cn/selfec\">http://www.stegd.edu.cn/selfec</a>）填写前置学历及认证信息，提交省自考办查验，查验通过方可申请本科毕业。前置学历为我省自学考试毕业的考生，申请本科毕业也需要提供前置学历认证信息。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　考生根据自己的实际情况，选择下列学历认证方式之一进行登记:</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（1）学信网出具的《教育部学历证书电子注册备案表》，需提供在线验证码，在线验证码的有效期从登记之日算起不得少于25天；</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（2）全国高等学校学生信息咨询与就业指导中心出具的《中国高等教育学历认证报告》，需提供报告编号；</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（3）教育部留学服务中心出具的《国外学历学位认证书》，需提供认证书编号；</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（4）同时办理自考专科专业和本科专业毕业的考生，需提供专科准考证号。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（5）普通高校应届毕业生，在办理自考本科专业毕业登记时未取得前置学历毕业证的，在填写前置学历信息后，暂不填写前置学历毕业证号及学历认证信息，但须向省自考办提供学校出具的在读专业及预计毕业时间的纸质证明（可由考生个人提交，也可由学校集体办理，须在上半年5月20日前、下半年11月20日前提交省自考办）。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（6）已提供在读专业及预计毕业时间证明的普通高校应届毕业生，提交自考本科毕业申请后，上半年的须于7月15日前、下半年的须于次年1月15日前登录广东省自学考试管理系统补填前置学历毕业证号及前置学历认证信息，提交省自考办核查。未按时补填的，视为放弃本次毕业申请。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　三、申请毕业登记必须具备的条件</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　1.必考课程成绩全部合格。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　2.选考课程达到最低的学分或门数要求。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　3.本科专业毕业生加考课程达到所属类的最低学分或门数要求。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　4.实践环节考核或毕业论文成绩与所选的毕业专业、主考学校相一致。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　5.如有违规记录，已达到推迟毕业的年限。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　6.符合毕业专业的其他条件，详见具体专业的毕业说明。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　7.未办理过该专业的毕业证书。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　四、毕业登记步骤</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　1.考生在办理申请毕业登记之前，登陆广东省自学考试管理系统（以下简称“系统”，网址：<a style=\"border-bottom-color: rgb(0, 102, 204); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(0, 102, 204); border-left-style: none; border-left-width: 0px; border-right-color: rgb(0, 102, 204); border-right-style: none; border-right-width: 0px; border-top-color: rgb(0, 102, 204); border-top-style: none; border-top-width: 0px; font-family: &quot;微软雅黑&quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-decoration: none;\" href=\"http://www.stegd.edu.cn/selfec\">http://www.stegd.edu.cn/selfec</a>），确认自己的姓名、性别、身份证号码、电子相片和各科成绩等数据，上述数据准确无误后方可申请毕业登记。如姓名、证件号码等重要信息有错误，本次毕业申请不予受理，请考生先办理考籍信息更正，待考籍信息更正后，再参加下一批毕业手续的办理。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　2.考生在系统成功提交毕业申请后，自行打印《毕业生登记表》(一式两份)。《毕业生登记表》要求使用激光打印机、80g/m2 (或以上)A4复印纸正反面打印，考生不得擅自做任何修改。考生须认真核对《毕业生登记表》的正面，如实填写背面的相关栏目。&nbsp;&nbsp;&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　3.考生在省考办规定的申请毕业时间（上半年为6月15-20日，下半年为12月15-20日）内到我办指定地点提交下列材料：</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（1）广东省自学考试准考证、身份证的原件及复印件。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（2）《毕业生登记表》一式两份。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（3）申请本科专业毕业考生的前置学历毕业证书原件及复印件。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（4）申请办理本科毕业的考生，如由于姓名或身份证号变更等原因，与前置学历相关信息不一致的，还须提交公安局的有关证明。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（5）其他有关材料：申请办理机械制造及自动化（专科）专业毕业的考生，需提供机械类工种高级国家职业资格证书和高级技工学校毕业证书。申请办理工业电气自动化技术（专科）专业毕业的考生，需提供电气类工种高级职业资格证书和高级技工学校毕业证书。申请行政管理学（独立本科段）专业毕业的考生，需提供其专科成绩单。申请办理药学(独立本科段)专业毕业的考生，需按专业要求提供有效期内的卫生类执业证书（注：证书上必须有“执业”二字）。医学、药学、护理学或其他医学相关专业的中专或专科毕业生,办理营养、食品与健康（专科）专业毕业时，需按专业要求提供相关的中专或专科毕业证书原件及复印件。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　4.凡达到毕业要求的考生，应在省考办规定的时间内，及时办理申请毕业登记的有关手续，逾期办理者，只能参加下一批毕业手续的办理。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　五、其他事项</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　毕业资格的审核权在省考办，市自考办的工作主要是整理并上报材料，能否毕业由省考办审定。如个别考生认为本次无把握通过省考办的审核，应及早按我省自学考试的考试计划，考齐所有的课程。如经省考办审核当次未能获得毕业证书的，无论何种原因，今后申请毕业时，需按程序再次办理毕业手续。申请毕业时间、办理毕业地点等如有变动，以深圳招考网（<a style=\"border-bottom-color: rgb(0, 102, 204); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(0, 102, 204); border-left-style: none; border-left-width: 0px; border-right-color: rgb(0, 102, 204); border-right-style: none; border-right-width: 0px; border-top-color: rgb(0, 102, 204); border-top-style: none; border-top-width: 0px; font-family: &quot;微软雅黑&quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-decoration: none;\" href=\"http://www.51a.gov.cn/\">www.51a.gov.cn</a>）最新公布为准。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '0', '1522657523', '1522657764', '', '', '');
INSERT INTO `lz_article` VALUES ('111', '14', '10', 'lirenjy', '2018年4月自学考试通知', 'color:;font-weight:normal;', '/uploads/20180402/2ba9c99410476e17b1626ec387d2d752.PNG', '自考，成人高考，网络教育', '2018年4月自学考试将于4月14日至15日(周六、日)进行。', '<p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &quot;微软雅黑&quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\"><br/></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &quot;微软雅黑&quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">立人学员：</span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　<span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &quot;微软雅黑&quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">2018年4月自学考试将于4月14日至15日(周六、日)进行。请各位学员准备考试用品（准考证，身份证等）。</span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><br/></p><p style=\"margin: 0px; padding: 5px 10px; border: 0px rgb(89, 87, 87); border-image: none; text-align: right; color: rgb(89, 87, 87); text-transform: none; text-indent: 0px; letter-spacing: normal; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; -webkit-text-stroke-width: 0px; background-color: transparent;\"><span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &quot;微软雅黑&quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">立人教育</span></p><p style=\"margin: 0px; padding: 5px 10px; border: 0px rgb(89, 87, 87); border-image: none; text-align: right; color: rgb(89, 87, 87); text-transform: none; text-indent: 0px; letter-spacing: normal; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; text-decoration: none; word-spacing: 0px; white-space: normal; orphans: 2; -webkit-text-stroke-width: 0px; background-color: transparent;\"><span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &quot;微软雅黑&quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">2018年4月2日</span></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '3', '1522657976', '1522662302', '', '', '');
INSERT INTO `lz_article` VALUES ('112', '16', '10', 'lirenjy', '广东省高等教育自学考试考场规则', 'color:;font-weight:normal;', '/uploads/20180402/493a07c2cf06c3424c4e8b8fe1f4a710.png', '自考，成人高考，', '试卷由问卷和答题纸两部分组成，问卷卷头标识为：“□年□月高等教育自学考试全国统一命题考试”+课程名称+“（课程代码 □□□□□）”或“□年□月广东省高等教育自学考试”+课程名称“试卷”+“（课程代码 □□□□□）”；答题纸卷头标识为“□年□月高等教育自学考试全国统一命题考试”+课程名称“答题纸”+“（课程代码 □□□□□）”或“□年□月广东省高等教育自学考试”+课程名称“答题纸”+“（课程代码 □□□□□）”。问卷和答题纸分别标记页码，问卷页码标为：课程名称+“试题 第□页（共□页）”或课程名称+“试卷 第□页（共□页）”；答题纸页码标为：课程名称+“答题纸 第□页（共□页）”。考生作答时必须严格按照试卷的作答要求，按试题顺序在答题纸指定位置作答。不按规定作答，答题无效。', '<p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: center; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">（节选自粤考办〔2017〕29号）　　</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（一）试卷由问卷和答题纸两部分组成，问卷卷头标识为：“□年□月高等教育自学考试全国统一命题考试”+课程名称+“（课程代码 □□□□□）”或“□年□月广东省高等教育自学考试”+课程名称“试卷”+“（课程代码 □□□□□）”；答题纸卷头标识为“□年□月高等教育自学考试全国统一命题考试”+课程名称“答题纸”+“（课程代码 □□□□□）”或“□年□月广东省高等教育自学考试”+课程名称“答题纸”+“（课程代码 □□□□□）”。问卷和答题纸分别标记页码，问卷页码标为：课程名称+“试题 第□页（共□页）”或课程名称+“试卷 第□页（共□页）”；答题纸页码标为：课程名称+“答题纸 第□页（共□页）”。考生作答时必须严格按照试卷的作答要求，按试题顺序在答题纸指定位置作答。不按规定作答，答题无效。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　(二)考生在考前20分钟凭准考证、身份证进入规定的考场，对号入座。考生不得穿背心、拖鞋进入考点和考场。考生中的军人、警察和其他纪律部队人员不准携带武器和穿着制服进入考点和考场。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　(三)考生进入考场除必要的文具，如2B铅笔、黑色字迹的钢笔或签字笔、直尺、三角板、圆规、橡皮擦外，其他任何物品不准带入考场。严禁携带任何通讯工具(如寻呼机、对讲机、移动电话)、电子计算器（可以使用计算器的课程除外）、电子记事本、电子存储记忆录放设备、照相机、电子摄录设备、涂改液、修正带等与考试无关的物品进入考场。可以使用计算器的课程，计算器不得有程序储存功能。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　(四)考生入座后，应将本人准考证、身份证放在桌面左上角，以便监考员核验。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　(五)考生领到试卷后，要先检查核对问卷和答题纸上标明的课程名称、课程代码是否与自己当次所报考的课程名称、课程代码相符，检查有无缺页、缺题和字迹不清等现象，如有，应立即举手向监考员报告；因考生未按要求检查上述内容或发现问题未及时向监考员报告，由此产生的后果由考生本人承担。凡涉及试题内容的问题，不得向监考员询问。考生作答前必须先在每张答题纸规定的位置上正确、清楚地填写本人的准考证号、姓名、考点名称、考场号、座位号等信息，并在规定位置，按要求贴好条形码。凡错写、漏写准考证号、姓名、座位号等，或不按要求粘贴条形码，答题无效。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　(六)开考信号发出后考生才能开始答题。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　(七)开考15分钟后，考生不准进入考场。考生交卷出场时间不得早于每课程考试结束前30分钟，出场后不得再进入考场，不准在考场附近逗留、谈论。已到考生，必须在点名卡其签名框内签名确认，未签名者，视为缺考。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　(八)考生必须严格按试卷要求作答。试卷发放后，按照要求在答题纸指定位置认真抄写“考生笔迹确认”部分规定的文字，不抄写者不予办理省际转考等业务。在答题纸“选择题答题区”，考生必须用2B铅笔填涂，其他区域的书写或作答必须用黑色字迹的钢笔或签字笔；必须在答题纸规定的答题区域内按要求作答，严禁在规定答题位置外的地方作答，否则作答无效；作答时需要画表、作图或作辅助线的，也必须用黑色字迹的钢笔或签字笔，为确保答题纸扫描清晰，可先用铅笔进行画线、绘图，再用黑色字迹的钢笔或签字笔描黑；答题纸禁止使用涂改液、改正纸、改正带；在答题纸上书写的内容，字体务必端正、清楚；答题纸要保持清洁，不能折叠、污损、弄皱、弄破，以免影响正常扫描。不准在答题纸上作任何标记，不按规定作答，答题无效。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　(九)考场内必须保持安静。考试期间，考生在考场内不得相互借用文具；不准随便说话，不准随意离位走动，不准吸烟；不准夹带、旁窥、抄袭；不准交头接耳、左顾右盼；不准换卷传抄；不准冒名顶替。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　(十)每课程考试允许考生离场时间以前，考生除因突发疾病经主考同意可离开考场外，不得以其他理由离开考场。经同意离开考场的考生，按交卷离场处理。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　(十一)考试终了信号发出后，考生应立即停止作答，并把问卷和答题纸分别按页码顺序整理好，并按试卷问卷在上，答题纸居中，草稿纸在下的顺序整齐地放在桌面上。经监考员清点整理无误同意后方可有秩序地离开考场。严禁带走试卷和草稿纸。违反规定者，按违规处理办法处理。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　(十二)考生应自觉服从监考人员管理，不得以任何理由妨碍监考员正常工作，不得扰乱考点及考场的秩序。监考人员有权对考场内发生的违纪、违规或扰乱考场秩序的行为按规定作出处理。对严重扰乱考场秩序、恐吓或威胁监考员人身安全的考生，交公安机关处理，并通知其所在单位。违反规定者，按违规处理办法处理。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: \"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　(十三)考试期间，考点实行封闭管理。除监察员、本考点主考、本考场监考人员外，其他人员不得进入考场。除考点工作人员外，未经考点所在地考办批准，其他任何人员不得进入考点。</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '1', '1', '0', '', '0', '0', '0', '1522658267', '1522658613', '', '', '');
INSERT INTO `lz_article` VALUES ('113', '16', '10', 'lirenjy', '中华人民共和国学位条例', 'color:;font-weight:normal;', '/uploads/20180402/a6b3586f53fd72f2731c2ba9cfaf3a18.png', '学位，学士，自考，成人高考', '为了促进我国科学专门人才的成长，促进各门学科学术水平的提高和教育、科学事业的发展，以适应社会主义现代化建设的需要，特制定本条例。 ', '<p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">（一九八零年二月十二日第五届全国人民代表大会常务委员会第十三次会议通过）</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第一条 为了促进我国科学专门人才的成长，促进各门学科学术水平的提高和教育、科学事业的发展，以适应社会主义现代化建设的需要，特制定本条例。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第二条 凡是拥护中国共产党的领导、拥护社会主义制度，具有一定学术水平的公民，都可以按照本条例的规定申请相应的学位。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第三条 学位分学士、硕士、博士三级。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第四条 高等学校本科毕业生，成绩优良，达到下述学术水平者，授予学士学位。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（一） 较好地掌握本门学科的基础理论、专门知识和基本技能；&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（二） 具有从事科学研究工作或担负专门技术工作的初步能力。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第五条 高等学校和科学研究机构的研究生，或具有研究生毕业同等学历的人员，通过硕士学位的课程考试和论文答辩，成绩合格，达到下述学术水平者，授予硕士学位：&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（一） 在本门学科上掌握坚实的基础理论和系统的专门知识。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（二） 具有从事科学研究工作或独立担负专门技术工作的能力。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第六条 高等学校和科学研究机构的研究生，或具有研究生毕业同等学力的人员，通过博士学位的课程考试和论文答辩，成绩合格，达到下述学术水平者，授予博士学位：&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（一） 在本门学科上掌握坚实宽广的基础理论和系统深入的专门知识；&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（二） 具有独立从事科学研究工作的能力；</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　（三） 在科学或专门技术上做出创造性的成果。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第七条 国务院设立学位委员会，负责领导全国学位授予工作。学位委员会设主任委员一人，副主任委员和委员若干人。主任委员、副主任委员和委员由国务院任免。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第八条 学士学位，由国务院授权的高等学校授予，硕士学位、博士学位，由国务院授权的高等学校和科学研究机构授予。 授予学位的高等学校和科学研究机构（以下简称学位授予单位）及其可以授予学位的学科名单，由国务院学位委员会提出，经国务院批准公布。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第九条 学位授子单位，应当设立学位评定委员会，并组织有关学科的学位论文答辩委员学位论文答辩委员会必须有外单位的有关专家参加，其组成人员由学位授予单位遴选决定。学位评定委员会组成人员名单，由学位授予单位提出，报主管部门批淮。主管部门应将批准的学位评定委员会组成人员名单报国务院学位委员会备案。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第十条 学位论文答辩委员会负责审查硕士和博士学位论文、组织答辩，就是否授予硕士学位或博士学位作出决议。决议以不记名投票方式，经全体成员三分之二以上通过，报学位评定委员会。学位评定委员会负责审查通过学士学位获得者的名单，负责对学位论文答辩委员会报请授予硕士学位或博士学位的决议，作出是否批准的决定。决定以不记名投票方式，经全体成员过半数通过。决定授予硕士学位或博士学位的名单，报国务院学位委员会备案。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第十一条 学位授予单位，在学位评定委员会作出授予学位的决议后．发给学位获得者相应的学位证书。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第十二条 非学位授予单位应届毕业的研究生，由原单位推荐，可以就近向学位授予单位申请学位。经学位授予单位审查同意，通过论文答辩，达到本条例规定的学术水平者，授予相应的学位。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第十三条 对于在科学或专门技术上有重要的著作、发明、发现或发展者，经有关专家推荐，学位授予单位同意，可以免除考试，直接参加博士学位论文答辩。对于通过论文答辩者，授予博士学位。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第十四条 对于国内外卓越的学者或著名的社会活动家，经学位授予单位提名，国务院学位委员会批准，可以授予名誉博士学位。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第十五条 在我国学习的外国留学生和从事研究工作的外国学者，可以向学位授予单位申请学位。对于具有本条例规定的学术水平者，授予相应的学位。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第十六条 非学位授子单位和学术团体对于授予学位的决议和决定持有不同意见时，可以向学位授予单位或国务院学位委员会提出异议。学位授予单位和国务院学位委员会应当对提出的异议进行研究和处理。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第十七条 学位授予单位对于已经授予的学位，如发现有舞弊作伪等严重违反本条例规定的情况，经学位评定委员会复议，可以撤销。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第十八条 国务院对于已经批准授予学位的单位，在确认其不能保证所授学位的学术水平时，可以停止或撤销其授予学位的资格。</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第十九条 本条例的实施办法，由国务院学位委员会制定，报国务院批准。&nbsp;</p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　第二十条 本条例自一九八一年一月一日起施行。&nbsp;</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '0', '1', '0', '', '0', '0', '0', '1522658643', '0', '', '', '');
INSERT INTO `lz_article` VALUES ('114', '16', '10', 'lirenjy', '广东省2017年成人高考考生守则', 'color:;font-weight:normal;', '/uploads/20180402/9b4ac11d3a7ae67e4a107b560d833f3d.png', '自考，成人高考，网络教育，办理大学毕业证', '考生应讲诚信并自觉服从监考员等考试工作人员管理，自觉接受监考员使用身份识别设备和金属探测仪进行身份核实和安全检查，不得以任何理由妨碍监考员等考试工作人员履行职责，不得扰乱考点及其他考试工作地点的秩序。', '<p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\"><span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &amp;quot;微软雅黑&amp;quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">一、考生应讲诚信并自觉服从监考员等考试工作人员管理，自觉接受监考员使用身份识别设备和金属探测仪进行身份核实和安全检查，不得以任何理由妨碍监考员等考试工作人员履行职责，不得扰乱考点及其他考试工作地点的秩序。</span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-break: break-all; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　<span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &amp;quot;微软雅黑&amp;quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">二、凭准考证、身份证，按规定时间和准考证上各科目的考点、考场、座位号参加考试。</span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-break: break-all; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　<span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &amp;quot;微软雅黑&amp;quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">三、考生入场，除2B铅笔、书写黑色字迹的钢笔或签字笔、直尺、圆规、三角板、橡皮外，其他任何物品不准带入考场。高中起点本、专科《数学》、专升本《高等数学》考试，可使用没有存储记忆功能的计算器。严禁携带各种无线通讯工具（如寻呼机、移动电话及其他无线接收、传送设备）、电子存储记忆录放设备以及涂改液、修正带等物品进入考试考场。考生入场时应自觉接受监考员使用金属探测仪检查是否携带违禁物品。考生不得穿着制服参加考试。</span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-break: break-all; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　<span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &amp;quot;微软雅黑&amp;quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">四、在每科开考前35分钟凭准考证、有效证件（身份证、现役军人身份证件），通过照片、指纹等身份信息比对后，进入考场，对号入座。入座后将准考证、身份证等有效证件放在桌面靠走道上角以便让监考员核验。领到答题卡、条形码和试卷后，须认真核对答题卡及条形码的张数、试题类型是否一致，核对条形码上的姓名、考生号与自己准考证上的信息是否一致。如不一致，应向监考员提出更换。在规定的时间内用黑色签字笔或钢笔准确填写答题卡上的姓名、考生号、考场号、座位号，用2B铅笔在答题卡上根据所发试卷准确填涂试题类型（A或B），并将条形码横贴在答题卡右上角的“条形码粘贴处”栏框内。凡漏填、错填、全填或字迹不清的答卷、答题卡无效。</span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-break: break-all; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　<span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &amp;quot;微软雅黑&amp;quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">五、开考信号发出后方可开始答题。</span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-break: break-all; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　<span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &amp;quot;微软雅黑&amp;quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">六、开考15分钟后禁止迟到考生进入考点、考场，每科考试结束前30分钟起方可交卷出场，交卷出场后不得再进入考场，也不准在考场附近逗留或交谈。</span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-break: break-all; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　<span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &amp;quot;微软雅黑&amp;quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">七、在答题卡规定的区域答题。选择题用2B铅笔在选择题答题区作答，非选择题用黑色字迹钢笔或签字笔在非选择题答题区作答。不准用规定以外的笔和纸作答，不准在答卷、答题卡上做任何标记，否则答题卡无效。必须在指定的题号里作答，不准随意修改答题卡上的题号，凡不在指定答题题号框内作答、超出答题区域作答或擅自更改题号作答，其答案一律无效。如果解答中有画表或辅助线，先用铅笔进行画线、绘图，再用黑色字迹的签字笔或钢笔描黑。</span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-break: break-all; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　<span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &amp;quot;微软雅黑&amp;quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">八、在考点内须保持安静，不准吸烟，不准喧哗，不准交头接耳、左顾右盼、打手势、做暗号，不准夹带、旁窥、抄袭或有意让他人抄袭，不准传抄答案或交换试卷、答题卡，不准将试卷、答题卡或草稿纸带出考场。考场内不得自行传递工具、用品等。</span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-break: break-all; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　<span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &amp;quot;微软雅黑&amp;quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">九、遇试卷分发错误及试题字迹模糊等问题，可举手询问；涉及试题内容的疑问，不得向监考人员询问。</span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-break: break-all; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　<span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &amp;quot;微软雅黑&amp;quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">十、考试终了信号发出后，立即停笔，根据监考员指令依次退出考场，不准在考场逗留。</span></p><p><span style=\"display: inline !important; float: none; background-color: transparent; color: rgb(89, 87, 87); font-family: &quot;微软雅黑&quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; word-break: break-all; word-spacing: 0px;\"></span></p><p style=\"background-color: transparent; border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; color: rgb(89, 87, 87); font-family: &amp;quot;微软雅黑&amp;quot;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: 400; letter-spacing: normal; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-bottom: 5px; padding-left: 10px; padding-right: 10px; padding-top: 5px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;\">　　<span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; font-family: &amp;quot;微软雅黑&amp;quot;; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\">十一、如不遵守考场规则，不服从考试工作人员管理，有违纪、作弊等行为的，将按照《国家教育考试违规处理办法》（教育部令第33号）及有关规定进行处理，并将记入国家教育考试诚信档案；涉嫌违法的，由考点或教育考试机构移送当地公安机关,按照《中华人民共和国刑法修正案（九）》及有关法规进行处理。</span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '', '0', '1', '0', '', '0', '0', '5', '1522658833', '0', '', '', '');
INSERT INTO `lz_article` VALUES ('118', '17', '10', 'lirenjy', '广东省2017年成人高考考生考试注意事项', 'color:;font-weight:normal;', '/uploads/20180402/7f2632ee94518bd0db34dd5fe6a420a3.PNG', '成考，自考，网络教育', '考生领到试卷、答题卡、条形码后，须认真检查试卷、答题卡页数，核对条形码上的姓名、考生号、科目是否与准考证上的内容相一致，如有缺页、空白页、漏印及条形码与考生本人的姓名、考生号不一致，请举手说明更换。', '<p style=\"margin: 0px; padding: 0px; border: 0px rgb(89, 87, 87); border-image: none; text-align: left; color: rgb(89, 87, 87); text-transform: none; text-indent: 0px; letter-spacing: normal; font-family: \"><br/></p><p>一、考生领到试卷、答题卡、条形码后，须认真检查试卷、答题卡页数，核对条形码上的姓名、考生号、科目是否与准考证上的内容相一致，如有缺页、空白页、漏印及条形码与考生本人的姓名、考生号不一致，请举手说明更换。</p><p>　　<br/>二、考生必须用黑色字迹的签字笔或钢笔在答题卡的左上角的有关栏目上写上本人的考生号、姓名、考场号、座位号，并在答题卡指定的位置上横贴条形码及用2B铅笔根据所发试卷填涂试题类型（A或B）。凡漏填、错填或字迹不清的答卷、答题卡无效。答题卡不能折叠、撕破、穿孔，要保持答题卡清洁。</p><p><br/>三、选择题的答题必须用2Ｂ铅笔在答题卡上的选择题答题区域作答，修改则需用塑料胶擦擦干净。非选择题必须用黑色字迹的签字笔或钢笔在答题卡上的非选择题答题区域各题指定位置作答，否则答案无效。在答题卡上作答，字迹须工整、清楚，填涂要规范，不准使用涂改液、涂改带涂改。</p><p>四、在开考信号发出前或考试终了信号发出后答题按考试违规论处。离每科考试结束前30分钟，才准交卷出场。</p><p>五、考试时考生要注意答卷、答题卡的摆放位置，以免被其他考生抄袭，造成考试被动违规。<br/>　<br/>六、交卷时在监考员清点试卷、答题卡无误后，考生方可离开考场。不准将答题卡、试卷、草稿纸等带出考场，否则将被取消考试资格。<br/></p><p><span style=\"border-bottom-color: rgb(89, 87, 87); border-bottom-style: none; border-bottom-width: 0px; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; border-left-color: rgb(89, 87, 87); border-left-style: none; border-left-width: 0px; border-right-color: rgb(89, 87, 87); border-right-style: none; border-right-width: 0px; border-top-color: rgb(89, 87, 87); border-top-style: none; border-top-width: 0px; box-sizing: border-box; color: rgb(153, 153, 153); display: block; font-size: 14px; height: 56px; line-height: 28px; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; vertical-align: baseline;\"><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p></span></p>', '', '0', '1', '0', '', '0', '0', '5', '1522662965', '1522663226', '', '', '');

-- ----------------------------
-- Table structure for `lz_auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `lz_auth_group`;
CREATE TABLE `lz_auth_group` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '全新ID',
  `title` char(100) NOT NULL DEFAULT '' COMMENT '标题',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `rules` longtext COMMENT '规则',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员分组';

-- ----------------------------
-- Records of lz_auth_group
-- ----------------------------
INSERT INTO `lz_auth_group` VALUES ('1', '超级管理员', '1', '0,1,2,277,270,15,16,119,120,121,145,17,149,116,117,118,151,181,18,108,114,112,109,110,111,3,5,128,127,126,4,230,232,129,189,190,193,192,240,239,241,243,244,245,242,246,7,9,14,234,13,235,236,237,238,27,29,161,163,164,162,38,167,182,169,166,28,48,247,248,31,32,249,250,251,45,170,171,175,174,173,46,176,183,179,178,265,196,197,202,198,252,253,254,255,256,203,205,204,257,272,267,269,206,207,212,208,213,258,259,260,261,262,209,215,214,263,273,', '1465114224');
INSERT INTO `lz_auth_group` VALUES ('2', '管理员', '1', '0,1,2,270,15,16,120,7,9,14,13,27,29,161,163,164,162,38,167,182,169,166,278,28,48,31,32,45,170,171,175,174,173,46,176,183,179,178,280,281,282,283,', '1465114224');

-- ----------------------------
-- Table structure for `lz_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `lz_auth_rule`;
CREATE TABLE `lz_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `href` char(80) NOT NULL DEFAULT '',
  `title` char(20) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `authopen` tinyint(2) NOT NULL DEFAULT '1',
  `icon` varchar(20) DEFAULT NULL COMMENT '样式',
  `condition` char(100) DEFAULT '',
  `pid` int(5) NOT NULL DEFAULT '0' COMMENT '父栏目ID',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `addtime` int(11) NOT NULL DEFAULT '0' COMMENT '添加时间',
  `zt` int(1) DEFAULT NULL,
  `menustatus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=284 DEFAULT CHARSET=utf8 COMMENT='权限节点';

-- ----------------------------
-- Records of lz_auth_rule
-- ----------------------------
INSERT INTO `lz_auth_rule` VALUES ('1', 'System', '系统设置', '1', '1', '0', 'icon-cogs', '', '0', '0', '1446535750', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('2', 'System/system', '系统设置', '1', '1', '0', '', '', '1', '1', '1446535789', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('3', 'Database/database', '数据库管理', '1', '1', '0', 'icon-database', '', '0', '2', '1446535805', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('4', 'Database/restore', '还原数据库', '1', '1', '0', '', '', '3', '10', '1446535750', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('5', 'Database/database', '数据库备份', '1', '1', '0', '', '', '3', '1', '1446535834', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('7', 'Category', '栏目管理', '1', '1', '0', 'icon-list', '', '0', '4', '1446535875', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('9', 'Category/index', '栏目列表', '1', '1', '0', '', '', '7', '0', '1446535750', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('13', 'Category/edit', '操作-修改', '1', '1', '0', '', '', '9', '3', '1446535750', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('14', 'Category/add', '操作-添加', '1', '1', '0', '', '', '9', '0', '1446535750', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('15', 'Auth/adminList', '权限管理', '1', '1', '0', 'icon-lifebuoy', '', '0', '1', '1446535750', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('16', 'Auth/adminList', '管理员列表', '1', '1', '0', '', '', '15', '0', '1446535750', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('17', 'Auth/adminGroup', '用户组列表', '1', '1', '0', '', '', '15', '1', '1446535750', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('18', 'Auth/adminRule', '权限管理', '1', '1', '0', '', '', '15', '2', '1446535750', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('23', 'Help/soft', '软件下载', '1', '1', '0', '', '', '22', '50', '1446711421', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('27', 'Users', '会员管理', '1', '1', '0', 'icon-user', '', '0', '5', '1447231507', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('28', 'Function', '网站功能', '1', '1', '0', 'icon-cog', '', '0', '6', '1447231590', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('29', 'Users/index', '会员列表', '1', '1', '0', '', '', '27', '10', '1447232085', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('31', 'Link/index', '友情链接', '1', '1', '0', '', '', '28', '2', '1447232183', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('32', 'Link/add', '操作-添加', '1', '1', '0', '', '', '31', '1', '1447639935', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('36', 'We/we_menu', '自定义菜单', '1', '1', '0', '', '', '35', '50', '1447842477', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('38', 'Users/userGroup', '会员组', '1', '1', '0', '', '', '27', '50', '1448413248', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('39', 'We/we_menu', '自定义菜单', '1', '1', '0', '', '', '36', '50', '1448501584', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('45', 'Ad/index', '广告管理', '1', '1', '0', '', '', '28', '3', '1450314297', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('46', 'Ad/type', '广告位管理', '1', '1', '0', '', '', '28', '4', '1450314324', '1', '1');
INSERT INTO `lz_auth_rule` VALUES ('48', 'Message/index', '留言管理', '1', '1', '0', '', '', '28', '1', '1451267354', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('105', 'System/runsys', '操作-保存', '1', '1', '0', '', '', '6', '50', '1461036331', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('106', 'System/runwesys', '操作-保存', '1', '1', '0', '', '', '10', '50', '1461037680', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('107', 'System/runemail', '操作-保存', '1', '1', '0', '', '', '19', '50', '1461039346', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('108', 'Auth/ruleAdd', '操作-添加', '1', '1', '0', '', '', '18', '0', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('109', 'Auth/ruleState', '操作-状态', '1', '1', '0', '', '', '18', '5', '1461550949', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('110', 'Auth/ruleTz', '操作-验证', '1', '1', '0', '', '', '18', '6', '1461551129', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('111', 'Auth/ruleorder', '操作-排序', '1', '1', '0', '', '', '18', '7', '1461551263', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('112', 'Auth/ruleDel', '操作-删除', '1', '1', '0', '', '', '18', '4', '1461551536', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('114', 'Auth/ruleEdit', '操作-修改', '1', '1', '0', '', '', '18', '2', '1461551913', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('116', 'Auth/groupEdit', '操作-修改', '1', '1', '0', '', '', '17', '3', '1461552326', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('117', 'Auth/groupDel', '操作-删除', '1', '1', '0', '', '', '17', '30', '1461552349', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('118', 'Auth/groupAccess', '操作-权限', '1', '1', '0', '', '', '17', '40', '1461552404', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('119', 'Auth/adminAdd', '操作-添加', '1', '1', '0', '', '', '16', '0', '1461553162', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('120', 'Auth/adminEdit', '操作-修改', '1', '1', '0', '', '', '16', '2', '1461554130', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('121', 'Auth/adminDel', '操作-删除', '1', '1', '0', '', '', '16', '4', '1461554152', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('122', 'System/source_runadd', '操作-添加', '1', '1', '0', '', '', '43', '10', '1461036331', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('123', 'System/source_order', '操作-排序', '1', '1', '0', '', '', '43', '50', '1461037680', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('124', 'System/source_runedit', '操作-改存', '1', '1', '0', '', '', '43', '30', '1461039346', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('125', 'System/source_del', '操作-删除', '1', '1', '0', '', '', '43', '40', '146103934', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('126', 'Database/export', '操作-备份', '1', '1', '0', '', '', '5', '1', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('127', 'Database/optimize', '操作-优化', '1', '1', '0', '', '', '5', '1', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('128', 'Database/repair', '操作-修复', '1', '1', '0', '', '', '5', '1', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('129', 'Database/delSqlFiles', '操作-删除', '1', '1', '0', '', '', '4', '3', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('130', 'System/bxgs_state', '操作-状态', '1', '1', '0', '', '', '67', '5', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('131', 'System/bxgs_edit', '操作-修改', '1', '1', '0', '', '', '67', '1', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('132', 'System/bxgs_runedit', '操作-改存', '1', '1', '0', '', '', '67', '2', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('134', 'System/myinfo_runedit', '个人资料修改', '1', '1', '0', '', '', '68', '1', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('236', 'Category/del', '操作-删除', '1', '1', '0', '', '', '9', '5', '1497424900', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('230', 'Database/restoreData', '操作-还原', '1', '1', '0', '', '', '4', '1', '1497423595', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('145', 'Auth/adminState', '操作-状态', '1', '1', '0', '', '', '16', '5', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('149', 'Auth/groupAdd', '操作-添加', '1', '1', '0', '', '', '17', '1', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('151', 'Auth/groupRunaccess', '操作-权存', '1', '1', '0', '', '', '17', '50', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('153', 'System/bxgs_runadd', '操作-添存', '1', '1', '0', '', '', '66', '1', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('234', 'Category/insert', '操作-添存', '1', '1', '0', '', '', '9', '2', '1497424143', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('240', 'Module/del', '操作-删除', '1', '1', '0', '', '', '190', '4', '1497425850', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('239', 'Module/moduleState', '操作-状态', '1', '1', '0', '', '', '190', '5', '1497425764', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('238', 'page/edit', '单页编辑', '1', '1', '0', '', '', '7', '2', '1497425142', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('237', 'Category/cOrder', '操作-排序', '1', '1', '0', '', '', '9', '6', '1497424979', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('161', 'Users/usersState', '操作-状态', '1', '1', '0', '', '', '29', '1', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('162', 'Users/delall', '操作-全部删除', '1', '1', '0', '', '', '29', '4', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('163', 'Users/edit', '操作-编辑', '1', '1', '0', '', '', '29', '2', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('164', 'Users/usersDel', '操作-删除', '1', '1', '0', '', '', '29', '3', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('247', 'Message/del', '操作-删除', '1', '1', '0', '', '', '48', '1', '1497427449', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('166', 'Users/groupOrder', '操作-排序', '1', '1', '0', '', '', '38', '50', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('167', 'Users/groupAdd', '操作-添加', '1', '1', '0', '', '', '38', '10', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('169', 'Users/groupDel', '操作-删除', '1', '1', '0', '', '', '38', '30', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('170', 'Ad/add', '操作-添加', '1', '1', '0', '', '', '45', '1', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('171', 'Ad/edit', '操作-修改', '1', '1', '0', '', '', '45', '2', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('173', 'Ad/del', '操作-删除', '1', '1', '0', '', '', '45', '5', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('174', 'Ad/adOrder', '操作-排序', '1', '1', '0', '', '', '45', '4', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('175', 'Ad/editState', '操作-状态', '1', '1', '0', '', '', '45', '3', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('176', 'Ad/addType', '操作-添加', '1', '1', '0', '', '', '46', '1', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('252', 'Template/edit', '操作-编辑', '1', '1', '0', '', '', '197', '3', '1497428906', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('178', 'Ad/delType', '操作-删除', '1', '1', '0', '', '', '46', '4', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('179', 'Ad/typeOrder', '操作-排序', '1', '1', '0', '', '', '46', '3', '1461550835', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('180', 'System/source_edit', '操作-修改', '1', '1', '0', '', '', '43', '20', '1461832933', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('181', 'Auth/groupState', '操作-状态', '1', '1', '0', '', '', '17', '50', '1461834340', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('182', 'Users/groupEdit', '操作-修改', '1', '1', '0', '', '', '38', '15', '1461834780', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('183', 'Ad/editType', '操作-修改', '1', '1', '0', '', '', '46', '2', '1461834988', '1', '0');
INSERT INTO `lz_auth_rule` VALUES ('188', 'Plug/donation', '捐赠列表', '1', '1', '0', '', '', '187', '50', '1466563673', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('189', 'Module', '模型管理', '1', '1', '0', 'icon-ungroup', '', '0', '3', '1466825363', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('190', 'Module/index', '模型列表', '1', '1', '0', '', '', '189', '1', '1466826681', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('192', 'Module/edit', '操作-修改', '1', '1', '0', '', '', '190', '2', '1467007920', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('193', 'Module/add', '操作-添加', '1', '1', '0', '', '', '190', '1', '1467007955', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('196', 'Template', '模版管理', '1', '1', '0', 'icon-embed2', '', '0', '7', '1481857304', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('197', 'Template/index', '模版管理', '1', '1', '0', '', '', '196', '1', '1481857540', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('198', 'Template/insert', '操作-添存', '1', '1', '0', '', '', '197', '2', '1481857587', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('202', 'Template/add', '操作-添加', '1', '1', '0', '', '', '197', '1', '1481859447', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('203', 'Debris/index', '碎片管理', '1', '1', '0', '', '', '196', '2', '1484797759', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('204', 'Debris/edit', '操作-编辑', '1', '1', '0', '', '', '203', '2', '1484797849', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('205', 'Debris/add', '操作-添加', '1', '1', '0', '', '', '203', '1', '1484797878', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('206', 'Wechat', '微信管理', '1', '1', '0', 'icon-bubbles2', '', '0', '8', '1487063570', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('207', 'Wechat/config', '公众号管理', '1', '1', '0', '', '', '206', '1', '1487063705', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('208', 'Wechat/menu', '菜单管理', '1', '1', '0', '', '', '206', '2', '1487063765', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('209', 'Wechat/materialmessage', '消息素材', '1', '1', '0', '', '', '206', '3', '1487063834', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('212', 'Wechat/weixin', '操作-设置', '1', '1', '0', '', '', '207', '1', '1487064541', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('213', 'Wechat/addMenu', '操作-添加', '1', '1', '0', '', '', '208', '1', '1487149151', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('214', 'Wechat/editText', '操作-编辑', '1', '1', '0', '', '', '209', '2', '1487233984', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('215', 'Wechat/addText', '操作-添加', '1', '1', '0', '', '', '209', '1', '1487234062', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('232', 'Database/downFile', '操作-下载', '1', '1', '0', '', '', '4', '2', '1497423744', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('235', 'Category/catUpdate', '操作-该存', '1', '1', '0', '', '', '9', '4', '1497424301', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('241', 'Module/field', '模型字段', '1', '1', '0', '', '', '190', '6', '1497425972', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('242', 'Module/fieldStatus', '操作-状态', '1', '1', '0', '', '', '241', '4', '1497426044', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('243', 'Module/fieldAdd', '操作-添加', '1', '1', '0', '', '', '241', '1', '1497426089', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('244', 'Module/fieldEdit', '操作-修改', '1', '1', '0', '', '', '241', '2', '1497426134', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('245', 'Module/listOrder', '操作-排序', '1', '1', '0', '', '', '241', '3', '1497426179', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('246', 'Module/fieldDel', '操作-删除', '1', '1', '0', '', '', '241', '5', '1497426241', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('248', 'Message/delall', '操作-删除全部', '1', '1', '0', '', '', '48', '2', '1497427534', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('249', 'Link/edit', '操作-编辑', '1', '1', '0', '', '', '31', '2', '1497427694', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('250', 'Link/linkState', '操作-状态', '1', '1', '0', '', '', '31', '3', '1497427734', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('251', 'Link/del', '操作-删除', '1', '1', '0', '', '', '31', '4', '1497427780', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('253', 'Template/update', '操作-改存', '1', '1', '0', '', '', '197', '4', '1497428951', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('254', 'Template/delete', '操作-删除', '1', '1', '0', '', '', '197', '5', '1497429018', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('255', 'Template/images', '媒体文件管理', '1', '1', '0', '', '', '197', '6', '1497429157', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('256', 'Template/imgDel', '操作-文件删除', '1', '1', '0', '', '', '255', '1', '1497429217', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('257', 'Debris/del', '操作-删除', '1', '1', '0', '', '', '203', '3', '1497429416', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('258', 'Wechat/editMenu', '操作-编辑', '1', '1', '0', '', '', '208', '2', '1497429671', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('259', 'Wechat/menuOrder', '操作-排序', '1', '1', '0', '', '', '208', '3', '1497429707', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('260', 'Wechat/menuState', '操作-状态', '1', '1', '0', '', '', '208', '4', '1497429764', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('261', 'Wechat/delMenu', '操作-删除', '1', '1', '0', '', '', '208', '5', '1497429822', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('262', 'Wechat/createMenu', '操作-生成菜单', '1', '1', '0', '', '', '208', '6', '1497429886', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('263', 'Wechat/delText', '操作-删除', '1', '1', '0', '', '', '209', '3', '1497430020', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('273', 'Wechat/replay', '回复设置', '1', '1', '0', '', '', '206', '4', '1508215988', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('267', 'Plugin/index', '插件管理', '1', '1', '1', 'icon-power-cord', '', '0', '8', '1501466560', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('269', 'Plugin/login', '登录插件', '1', '1', '1', '', '', '267', '1', '1501466732', '0', '0');
INSERT INTO `lz_auth_rule` VALUES ('270', 'System/email', '邮箱配置', '1', '1', '0', '', '', '1', '2', '1502331829', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('272', 'Debris/type', '碎片分类', '1', '1', '1', '', '', '196', '3', '1504082720', '0', '1');
INSERT INTO `lz_auth_rule` VALUES ('278', 'Members/index', '学员管理', '1', '1', '0', '', '', '27', '50', '1520500132', null, '1');
INSERT INTO `lz_auth_rule` VALUES ('280', 'Messages/index', '站内消息', '1', '1', '0', '', '', '28', '50', '1523603737', null, '1');
INSERT INTO `lz_auth_rule` VALUES ('281', 'Apply/index', '报名申请', '1', '1', '0', '', '', '28', '50', '1523616606', null, '1');
INSERT INTO `lz_auth_rule` VALUES ('282', 'sitemaps/index', 'sitemap', '1', '1', '1', '', '', '28', '50', '1524794669', null, '1');
INSERT INTO `lz_auth_rule` VALUES ('283', 'Contract/index', '合同管理', '1', '1', '1', '', '', '28', '50', '1525051058', null, '1');

-- ----------------------------
-- Table structure for `lz_category`
-- ----------------------------
DROP TABLE IF EXISTS `lz_category`;
CREATE TABLE `lz_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `catname` varchar(255) NOT NULL DEFAULT '',
  `catdir` varchar(30) NOT NULL DEFAULT '',
  `parentdir` varchar(50) NOT NULL DEFAULT '',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `moduleid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `module` char(24) NOT NULL DEFAULT '',
  `arrparentid` varchar(255) NOT NULL DEFAULT '',
  `arrchildid` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `keywords` varchar(200) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `image` varchar(100) NOT NULL DEFAULT '',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` varchar(100) NOT NULL DEFAULT '',
  `template_list` varchar(20) NOT NULL DEFAULT '',
  `template_show` varchar(20) NOT NULL DEFAULT '',
  `pagesize` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `listtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_category
-- ----------------------------
INSERT INTO `lz_category` VALUES ('19', '立人承诺', 'promise', '', '0', '1', 'page', '0', '19', '0', '', '', '', '3', '0', '1', '0', '', '0', '', '', 'page_show_lrcn', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('20', '公司简介', 'gsjj', '', '20', '1', 'page', '0', '20', '0', '', '公司简介', '公司简介', '4', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('24', '大事记', 'dsj', 'our/', '26', '1', 'page', '0,26', '24', '0', '', '', '', '5', '0', '1', '0', '', '0', '', 'page_show_dsj', 'page_show_dsj', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('25', '法律声明', 'flsm', 'our/', '26', '1', 'page', '0,26', '25', '0', '', '', '', '7', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('26', '关于我们', 'our', '', '0', '1', 'page', '0', '26,29,27,24,28,25', '0', '', '', '', '5', '0', '1', '0', '', '1', '', '', '', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('27', '企业文化', 'qtwh', 'our/', '26', '1', 'page', '0,26', '27', '0', '', '', '', '3', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('28', '联系我们', 'lxwm', 'our/', '26', '1', 'page', '0,26', '28', '0', '', '', '', '6', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('29', '公司简介', 'gsjj', 'our/', '26', '1', 'page', '0,26', '29', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('30', '在线课堂', 'course', '', '0', '1', 'page', '0', '30', '0', '', '', '', '4', '0', '1', '0', '', '0', '', 'page_show_url', 'page_show_url', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('31', '学习指引', 'study', 'zkzx/', '13', '2', 'article', '0,13', '31', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '5', '', '0', '0');
INSERT INTO `lz_category` VALUES ('22', '招生院校', 'zsyx', '', '0', '4', 'colleges', '0', '22', '0', '招生院校1', '招生院校', '招生院校', '0', '0', '1', '0', '', '0', '', '', '', '5', '', '0', '0');
INSERT INTO `lz_category` VALUES ('13', '招考资讯', 'zkzx', '', '0', '2', 'article', '0', '13,14,15,16,17,18,31,39', '0', '', '', '', '2', '0', '1', '0', '', '1', '', '', '', '5', '', '0', '0');
INSERT INTO `lz_category` VALUES ('14', '考试通知', 'zxdt', 'zkzx/', '13', '2', 'article', '0,13', '14', '0', '最新动态', '', '', '0', '0', '1', '0', '', '0', '', '', '', '5', '', '0', '0');
INSERT INTO `lz_category` VALUES ('15', '毕业名单', 'bymd', 'zkzx/', '13', '3', 'student', '0,13', '15', '0', '', '', '', '0', '0', '0', '0', '', '0', '', '', '', '5', '', '0', '0');
INSERT INTO `lz_category` VALUES ('16', '学历政策', 'xlzc', 'zkzx/', '13', '2', 'article', '0,13', '16', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '5', '', '0', '0');
INSERT INTO `lz_category` VALUES ('17', '教育新闻', 'jyxw', 'zkzx/', '13', '2', 'article', '0,13', '17', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '5', '', '0', '0');
INSERT INTO `lz_category` VALUES ('18', '增值服务', 'zzfw', 'zkzx/', '13', '2', 'article', '0,13', '18', '0', '', '', '', '0', '0', '1', '0', '', '0', '', '', '', '5', '', '0', '0');
INSERT INTO `lz_category` VALUES ('34', '立人注册', 'register', '', '0', '1', 'page', '0', '34', '0', '', '', '', '10', '0', '0', '0', '', '0', '', '', 'page_show_help', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('35', '学员政策', 'policy', '', '0', '1', 'page', '0', '35', '0', '', '', '', '11', '0', '0', '0', '', '0', '', '', 'page_show_help', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('36', '提交资料说明', 'datum', '', '0', '1', 'page', '0', '36', '0', '', '', '', '12', '0', '0', '0', '', '0', '', '', 'page_show_help', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('38', '考试必过技巧', 'skill', '', '0', '1', 'page', '0', '38', '0', '', '', '', '13', '0', '0', '0', '', '0', '', 'page_show_exam', 'page_show_exam', '0', '', '0', '0');
INSERT INTO `lz_category` VALUES ('39', '院校报名时间', 'exam', 'zkzx/', '13', '2', 'article', '0,13', '39', '0', '', '', '', '0', '0', '0', '0', '', '0', '', '', '', '0', '', '0', '0');

-- ----------------------------
-- Table structure for `lz_colleges`
-- ----------------------------
DROP TABLE IF EXISTS `lz_colleges`;
CREATE TABLE `lz_colleges` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `content` text NOT NULL,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `xinghao` varchar(255) NOT NULL DEFAULT '',
  `pics` mediumtext NOT NULL,
  `areas` varchar(255) NOT NULL DEFAULT '',
  `types` varchar(255) NOT NULL DEFAULT '0',
  `learn` varchar(255) NOT NULL DEFAULT '0',
  `gear` varchar(255) NOT NULL DEFAULT '0',
  `addr` varchar(255) NOT NULL DEFAULT '',
  `college_img` varchar(80) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_colleges
-- ----------------------------
INSERT INTO `lz_colleges` VALUES ('1', '22', '1', 'admin', '私立华联学院', 'color:;font-weight:normal;', '/uploads/20180319/804f281dd76b5d60844a1107cb77bdfc.png', '私立华联学院', ' 私立华联学院，另称广东华联大学，座落于广州天河区东圃小新塘合景路，创立于1990年，由华南理工大学、华南师范大学、暨南大学、广东技术师范学院（原广东民族学院）等广州地区部分普通高校离退休教授联合创办。学院于1994年4月26日经广东省人民政府正式批准成立，具有学历教育招生资格的民办普通高等学校；2009年，学院经广东省教育厅批准，学院取得了招收外国留学生的资格。', '<p align=\"left\">&nbsp; &nbsp; &nbsp; </p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><img alt=\"20180322/9eb73f650abda19deb65448c9dce9e35.jpg\" src=\"/public/uploads/20180322/9eb73f650abda19deb65448c9dce9e35.jpg\">&nbsp;</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 私立华联学院，另称广东华联大学，座落于广州天河区东圃小新塘合景路，创立于1990年，由华南理工大学、华南师范大学、暨南大学、广东技术师范学院（原广东民族学院）等广州地区部分普通高校离退休教授联合创办。学院于1994年4月26日经广东省人民政府正式批准成立，具有学历教育招生资格的民办普通高等学校；2009年，学院经广东省教育厅批准，学院取得了招收外国留学生的资格。<br>&nbsp; &nbsp; &nbsp;&nbsp; 据2016年1月学校官网显示，学院面积600多亩，在校学生9000人，专任教师230人（包括外籍教师13人），兼任教师202人，设有11个系，35个专业，并设有专事成人高等学历教育和各种考证培训的继续教育学院，学院与华南师范大学、华南农业大学，广东外贸外语大学等高校合办相沟通自考本科学历教育。</p><p align=\"center\"><img alt=\"20180322/1b8facf933171ee72aac18586ca46182.PNG\" src=\"/public/uploads/20180322/1b8facf933171ee72aac18586ca46182.PNG\"></p><p align=\"left\"><br></p><p align=\"center\"><img alt=\"20180322/f8aded82cdb28d81ff55e18d5d257651.jpg\" src=\"/public/uploads/20180322/f8aded82cdb28d81ff55e18d5d257651.jpg\"></p><p align=\"center\"><br></p><p align=\"left\">报名时间：</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 9月1日-9月5日网上预报名；9月6日-9月10日考生到指定报名点正式报名。具体时间以广东省教育考试院公布时间为准&nbsp; 考生原则上在常住户口或暂住证所在地报名、考试报名时，须使用户口簿或身份证上的现用姓名和身份证号码，考试和录取以此为依据。<br>&nbsp; &nbsp; &nbsp; </p><p align=\"left\">网上预报名：</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 考生登录广东省成人高校招生考试网上报名系统。(www.ecogd.edu.cn/cr)，准确录入本人的报名信息，并记录系统返回的报名顺序号、密码和确认报名地点等信息。</p><p align=\"left\">正式报名：</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 预报名结束后，考生须在规定的报名时间内到指定报名&nbsp; 地点正式报名，确认报名资格，交纳报名费，电子摄像，交验身份证与毕业证书原件和复印件。报名办法以广东省招生办公室编写的《广东省2018年成人高等学校报考须知》为准。&nbsp;<br></p><p align=\"left\">打印准考证：</p><p align=\"left\">&nbsp; &nbsp; &nbsp; &nbsp; 10月19日起，报名成功的考生凭用户名和密码可登陆成人高考报名系统打印准考证。&nbsp;<br></p><p align=\"left\">考试时间：</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 全国成人高校招生统一考试时间安排在10月28日-29日（具体时间以广东省招生办公室公布的时间为准）。届时按准考证上写明的考场地址准时进场考试。 </p><p align=\"left\"><br></p><p align=\"left\">考试科目：</p><p align=\"center\"><img alt=\"20180322/17ccb736f1c7ca309c96dfc75e74afb0.PNG\" src=\"/public/uploads/20180322/17ccb736f1c7ca309c96dfc75e74afb0.PNG\"></p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp;</p><p align=\"left\">&nbsp;成绩公布与录取：</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 成人高考一般在11月公布成绩，12月上旬录取。具体时间以广东省教育考试院文件精神为准。 被录取的考生一般在12月下旬报到，2018年春季学期正式上课（开学时间一般在2月底-3月初）。</p><p align=\"left\"><br>办学形式：<br>&nbsp; &nbsp; &nbsp;&nbsp; 学生修完本专业教学计划规定的课程，成绩合格，符合毕业条件者，由广州工商学院大学颁发经教育部电子注册的成人高等教育毕业证书。</p><p align=\"left\"><br>报考注意事项：<br>&nbsp; &nbsp; &nbsp;&nbsp; 1.&nbsp;初中、中专（中技）高中（职高）学历者可报考专科；国民教育系列专科（高职）学历者可报考本科。<br>&nbsp; &nbsp; &nbsp;&nbsp; 2.&nbsp;报考者须交身份证双面复印件1张（报考本科者还须交专科毕业证复印件1张）；填写报名登记表。<br>&nbsp; &nbsp; &nbsp;&nbsp; 3.&nbsp;为加强招生计划性，考生可实行预报名；信息确认时间在每年9月初（考生须提供本人有效居民身份证），考试时间在每年10月份，具体时间以考试地教育考试院公布的为准。</p><p align=\"left\"><br></p><p align=\"left\">重要说明：<br>&nbsp; &nbsp; &nbsp;&nbsp; 1.&nbsp;高升专统考总分均为450分。近年来，录取分数较低，报考者录取率极高（考生根据成考复习资料认真复习，三门科坚持考完，上线、录取率95%以上）。<br>&nbsp; &nbsp; &nbsp;&nbsp; 2.&nbsp;考生所报的专业，如在考试地教育考试院公布的招生专业目录中没有显示，可先报考其同一层次相同科类的某个专业。例如，高升专层次文史类的市场营销等可以语文教育或工商企业管理专业报考，理工类的数控技术等可以数学教育专业报考；入学注册时 ，再改读自己想读的专业。<br>&nbsp; &nbsp; &nbsp;&nbsp; 3.&nbsp;函授（业余）学习坚持以自学钻研为主，面授导学为辅，具有学习、考试机制灵活，费用低廉，程序简单，操作方便，毕业容易等特点，较之自考、远程（网络）教育更具吸引力。<br>&nbsp; &nbsp; &nbsp;&nbsp; 4.&nbsp;考试地教育考试院公布的招生专业及人数，仅为指导性计划，若计划数不够，广州工商学院/私立华联学院可调剂或追加计划，从而确保上线考生100%录取。</p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p>', '0', '0', '1', '0', '', '0', '0', '29', '1521452590', '1522639435', '0.00', '', '', '华东', '文科', '自学', '大专', '广州', '/uploads/20180402/fefe959699ff37fb693586a8eed02be4.jpg');
INSERT INTO `lz_colleges` VALUES ('2', '22', '1', 'admin', '电子科技大学', 'color:;font-weight:normal;', '/uploads/20180319/53b0db9625744d62cec995a1f5592a0e.png', '', '', '<p align=\"center\"><img alt=\"20180322/4f4518f4399ef19a36ff536b09e0f60e.jpg\" src=\"/public/uploads/20180322/4f4518f4399ef19a36ff536b09e0f60e.jpg\"></p><p align=\"left\">&nbsp; &nbsp; &nbsp; &nbsp; </p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 电子科技大学（University of Electronic Science and Technology of China）简称“电子科大”，坐落于有“天府之国”之称的成都市，由中华人民共和国教育部直属，为教育部 、工信部 、四川省人民政府重点共建，位列“双一流”、“211工程”、“985工程”，入选国家“2011计划”、“111计划”、“卓越工程师教育培养计划”，两电一邮成员，设有研究生院，是一所以电子信息科学技术为核心、以工为主，理工渗透，理、工、管、文协调发展的多科性研究型全国重点大学，被誉为“中国电子类院校的排头兵”。<br>&nbsp; &nbsp; &nbsp;&nbsp; 电子科技大学原名成都电讯工程学院，是1956年在周恩来总理的亲自部署下，由交通大学（现上海交通大学、西安交通大学）、南京工学院（现东南大学）、华南工学院（现华南理工大学）的电讯工程有关专业合并创建而成。1960年，被中共中央列为全国重点高等学校；1961年，被中共中央确定为七所国防工业院校之一。1988年，更名为电子科技大学。1997年，被确定为国家首批“211工程”建设的重点大学。2000年，由原信息产业部主管划转为教育部主管。2001年，进入国家“985工程”重点建设大学行列。<br>&nbsp; &nbsp; &nbsp;&nbsp; 电子科技大学是教育部批准的开展现代远程教育试点高校之一。学校网络教育学院以培养应用型、复合型的人才为目标，充分发挥电子科技大学学科优势，依托电子科技大学优秀的教学资源，以科学的办学态度、规范严谨的教学管理、高质量的人才培养和特色鲜明的办学模式赢得了社会广泛赞誉。</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 更便捷：在线报名与入学考试，移动APP在线学习、在线缴费与选课<br>&nbsp; &nbsp; &nbsp;&nbsp; 更灵活：实行学分制和弹性学习年限，线上+线下期末考试<br>&nbsp; &nbsp; &nbsp;&nbsp; 更贴心：全方位支持服务、即时在线答疑与辅导，24小时服务热线<br>&nbsp; &nbsp; &nbsp;&nbsp; 更丰富：免费MOOC资源、校友会、母校行、各类公益助学活动<br>&nbsp; &nbsp; &nbsp;&nbsp; 更专业：专业招生和教学支持服务团队、专业课程资源</p><p align=\"left\"><br>入学方式：<br>&nbsp; &nbsp; &nbsp;&nbsp; 实行资格审查，注册入学，分专业学历注册和单科课程注册两种方式。报读者需要参加入学水平测试，目的在于了解报读者的学习基础，以便学校更好地组织教学和辅导。</p><p align=\"left\"><br></p><p align=\"left\">招生对象：<br>&nbsp; &nbsp; &nbsp;&nbsp; 要求报考者年满18周岁并持有国民教育系列高中（含普通高中、中专、技校、职高）及以上毕业证书；考生需参加学校统一组织的入学测试，择优录取。具有相应条件者在报名时可申请免试入学。</p><p align=\"left\"><br></p><p align=\"left\">入学资格：<br>&nbsp; &nbsp; &nbsp;&nbsp; 1.具有国民教育系列专科及以上学历者，可报读本科（专升本）专业学历学习。<br>&nbsp; &nbsp; &nbsp;&nbsp; 2.具有普通高中、职业高中、技工学校和中等专业学校学历者，可报读专科专业学历学习。<br>&nbsp; &nbsp; &nbsp;&nbsp; 3.具有普通高中、职业高中、技工学校和中等专业学校及以上学历者，可注册本科（专升本）单科课程学习；具有普通初中及以上学历者，可注册专科单科课程学习。</p><p align=\"left\"><br></p><p align=\"left\">教学及学习：<br>&nbsp; &nbsp; &nbsp;&nbsp; 实行学分制，不脱产业余学习（春秋两季招生，全年组织报读），通过课本自学+课件学习+网上导学+网上作业+网上答疑讨论+模拟试题自测+学习中心辅导+集中考试+毕业论文等方式完成学习。</p><p align=\"left\"><br></p><p align=\"left\">学籍有效期：<br>&nbsp; &nbsp; &nbsp;&nbsp; 专业学历最低学习年限为2.5年，学籍终身有效。</p><p align=\"left\"><br></p><p align=\"left\">教学模式：<br>&nbsp; &nbsp; &nbsp;&nbsp; 我院为学生提供丰富的学习资源以及多种形式的学习支持服务，其中包括网络教学课件及其配套的教材、作业集、网络辅导（实时和非实时）以及其它网络学习资源。实行学分制，采用以学生为中心、多种方式的现代远程教育教学模式。 <br>&nbsp; &nbsp; &nbsp;&nbsp; 学生可在任何时间、任何地点通过在线学习平台、网上作业、答疑及在线讨论等方式学习，也可参加各学习中心的面授辅导等方式进行学习。 <br>&nbsp; &nbsp; &nbsp;&nbsp; 学院组织课程考试，学生在所属学习中心参加考试。本科层次的学生还需参加教育部组织的网络教育2-3门公共基础课全国统一考试。</p><p align=\"left\"><br></p><p align=\"left\">全国网络教育公共基础课程统一考试免试条件：<br>&nbsp; &nbsp; &nbsp;&nbsp; 根据教育部网考委统考试点工作要求，按照网络教育应用型人才的培养目标，针对从业人员继续教育的特点，重在检验学生掌握基础知识的水平及应用能力。</p><p align=\"left\">免试条件如下：<br>&nbsp; &nbsp; &nbsp;&nbsp; 1. 已具有国民教育系列本科以上学历（含本科），可免考全部统考科目。<br>&nbsp; &nbsp; &nbsp;&nbsp; 2. 非计算机类专业,获得全国计算机等级考试一级B或以上级别证书者可免考“计算机应用基础”。<br>&nbsp; &nbsp; &nbsp;&nbsp; 3. 符合以下规定中的任何一条，可免考“大学英语”：<br>&nbsp; &nbsp; &nbsp; &nbsp; （1）非英语专业,获得全国公共英语等级考试（PETS）三级或以上级别的证书；<br>&nbsp; &nbsp; &nbsp; &nbsp; （2）非英语专业,获省级教育行政部门组织的成人教育学位英语考试合格证书者；<br>&nbsp; &nbsp; &nbsp; &nbsp; （3）非英语专业,入学注册时年龄满40周岁者；<br>&nbsp; &nbsp; &nbsp; &nbsp; （4）非英语专业,户籍(以身份证为准)在少数民族聚居地区的少数民族学生（少数民族的界定以《试点高校网络教育部分公共基础课全国统一考试文件汇编》中的标准为准）。</p><p align=\"left\"><img alt=\"20180322/6b4177860a40d7470e2e9520d21eb495.PNG\" src=\"/public/uploads/20180322/6b4177860a40d7470e2e9520d21eb495.PNG\"></p><p align=\"left\"><img alt=\"20180322/578af3f01026b522c2d7898ba8cd9873.PNG\" src=\"/public/uploads/20180322/578af3f01026b522c2d7898ba8cd9873.PNG\"></p><p align=\"left\"><br></p><p align=\"left\">专业优势：<br>&nbsp; &nbsp; &nbsp;&nbsp; 1、知名度高：主考院校是电子科技大学，电子科技大学是国家重点一类大学，985、211大学。<br>&nbsp; &nbsp; &nbsp;&nbsp; 2、专业种类多，实用型为主。<br>&nbsp; &nbsp; &nbsp;&nbsp; 3、招生对象：各类在职人员、待业人员等，专业不限<br>&nbsp; &nbsp; &nbsp;&nbsp; 4、学习方式：网上学习为主，集中辅导为辅<br>&nbsp; &nbsp; &nbsp;&nbsp; 5、考试时间和考试地点：免考入学</p><p align=\"left\"><br>毕业及学位：<br></p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 专业学历注册的学习者，修满规定学分、通过毕业审核，准予毕业并颁发电子科技大学本科（专升本）或者专科毕业证书；符合学位授予条件的本科（专升本）毕业生，授予电子科技大学士学位并颁发学位证书。<br>&nbsp; &nbsp; &nbsp;&nbsp; 毕业证书可在教育部学历证书查询网站——中国高等教育学生信息网（www.chsi.com.cn）查询。教育部电子注册的电子科技大学毕业证书(加注“网络教育”)。</p><p align=\"center\"><img alt=\"20180322/db7f3db853c216d52bcd9982421b8436.jpg\" src=\"/public/uploads/20180322/db7f3db853c216d52bcd9982421b8436.jpg\"></p><p align=\"center\"><img alt=\"20180322/b04245d9f47b247e0b59de9c4f245ec7.jpg\" src=\"/public/uploads/20180322/b04245d9f47b247e0b59de9c4f245ec7.jpg\"></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p>', '0', '0', '1', '0', '', '0', '0', '10', '1521456818', '1521683298', '0.00', '', '', '华东', '文科', '自学', '大专', '成都', '');
INSERT INTO `lz_colleges` VALUES ('3', '22', '1', 'admin', '广东开放大学', 'color:;font-weight:normal;', '/uploads/20180319/957023745fa88c06c8725c91e2f1fb0c.png', '', '  广东开放大学是广东省人民政府举办、省教育厅直属，以现代信息技术为支撑，面向社会全体成员开展远程开放教育并具有学士学位授予权的新型高等学校。学校服务于广东学习型社会建设，坚持面向基层、面向行业、面向社区、面向农村，为学习者提供多样化、多层次的学历教育和非学历教育。广东开放大学始终坚持以终身教育理念为先导，以服务全民学习、终身学习、促进人的全面发展为宗旨，实现教育观念、教育对象、培养模式、学习资源、师资队伍和方法手段的开放，推动信息技术与教育教学的深度融合，致力于满足广大学习者多样化的学习需求，培养具有自主学习能力和终身发展能力的、适应广东经济社会发展需要的应用型专门人才。', '<p align=\"center\"><img alt=\"20180322/4d5de79b925d69d41758ee0cd1478048.jpg\" src=\"/public/uploads/20180322/4d5de79b925d69d41758ee0cd1478048.jpg\">&nbsp; &nbsp;</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 广东开放大学是广东省人民政府举办、省教育厅直属，以现代信息技术为支撑，面向社会全体成员开展远程开放教育并具有学士学位授予权的新型高等学校。学校服务于广东学习型社会建设，坚持面向基层、面向行业、面向社区、面向农村，为学习者提供多样化、多层次的学历教育和非学历教育。<br></p><p align=\"left\">　　广东开放大学的前身为成立于1978年11月的广东广播电视大学，与广东理工职业学院实行“一套班子、两块牌子”的管理体制，资源共享，优势互补。2012年12月，教育部批准广东广播电视大学更名为广东开放大学，是全国六所开放大学之一。学校拥有全国最完整的办学体系。<br>&nbsp; &nbsp; &nbsp;&nbsp; 广东开放大学始终坚持以终身教育理念为先导，以服务全民学习、终身学习、促进人的全面发展为宗旨，实现教育观念、教育对象、培养模式、学习资源、师资队伍和方法手段的开放，推动信息技术与教育教学的深度融合，致力于满足广大学习者多样化的学习需求，培养具有自主学习能力和终身发展能力的、适应广东经济社会发展需要的应用型专门人才。</p><p align=\"left\"><br>入学方式：<br>&nbsp; &nbsp; &nbsp;&nbsp; 实行资格审查，注册入学，分专业学历注册和单科课程注册两种方式。报读者需要参加入学水平测试，目的在于了解报读者的学习基础，以便学校更好地组织教学和辅导。</p><p align=\"left\"><br></p><p align=\"left\">&nbsp;招生对象：<br>&nbsp; &nbsp; &nbsp; &nbsp; 要求报考者年满18周岁并持有国民教育系列高中（含普通高中、中专、技校、职高）及以上毕业证书；<br>考生需参加学校统一组织的入学测试，择优录取。具有相应条件者在报名时可申请免试入学。</p><p align=\"left\"><br></p><p align=\"left\">入学资格：<br>&nbsp; &nbsp; &nbsp;&nbsp; 1.具有国民教育系列专科及以上学历者，可报读本科（专升本）专业学历学习。<br>&nbsp; &nbsp; &nbsp;&nbsp; 2.具有普通高中、职业高中、技工学校和中等专业学校学历者，可报读专科专业学历学习。<br>&nbsp; &nbsp; &nbsp;&nbsp; 3.具有普通高中、职业高中、技工学校和中等专业学校及以上学历者，可注册本科（专升本）单科课程学习；具有普通初中及以上学历者，可注册专科单科课程学习。</p><p align=\"left\"><br>教学及学习：<br>&nbsp; &nbsp; &nbsp;&nbsp; 实行学分制，不脱产业余学习（春秋两季招生，全年组织报读），通过课本自学+课件学习+网上导学+网上作业+网上答疑讨论+模拟试题自测+学习中心辅导+集中考试+毕业论文等方式完成学习。</p><p align=\"left\"><br></p><p align=\"left\">学籍有效期：<br>&nbsp; &nbsp; &nbsp;&nbsp; 专业学历最低学习年限为2.5年，学籍终身有效。</p><p align=\"left\"><br></p><p align=\"left\">教学模式：</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 课程学习资源由广东开放大学总部组织专家制作。学习者以业余学习为主，学习方式为自主学习、协作学习、面授辅导相结合。</p><p align=\"center\"><img alt=\"20180322/65f7a94e2041318e66db939d51cd95c0.PNG\" src=\"/public/uploads/20180322/65f7a94e2041318e66db939d51cd95c0.PNG\"></p><p align=\"center\"><br></p><p align=\"center\"><img alt=\"20180322/30a4661167dd881d81bd60763d629acb.png\" src=\"/public/uploads/20180322/30a4661167dd881d81bd60763d629acb.png\"><br></p><p align=\"center\"><br></p><p align=\"left\">&nbsp; &nbsp; &nbsp; &nbsp; 欢迎您的加入！办学38年，拥有105万毕业生，分布在各行各业；广东经济和社会发展的中坚力量！</p><p align=\"center\"><img alt=\"20180322/bf344b607b8c18a0307f602a2855ede0.jpg\" src=\"/public/uploads/20180322/bf344b607b8c18a0307f602a2855ede0.jpg\"></p><p align=\"left\"><br></p><p align=\"left\">努力就有回报！</p><p align=\"left\"><br>&nbsp; &nbsp; &nbsp;&nbsp; 未取得毕业所规定学分的专业学历学习者，经学生申请可以出具阶段性成绩证明，单科课程学习者所学课程经考核合格，可获得广东开放大学发放的课程单科结业证书，课程学分和成绩存入广东终身教育学分银行，长期有效。<br>&nbsp; &nbsp; &nbsp;&nbsp; 专业学历注册的学习者，修满规定学分、通过毕业审核，准予毕业并颁发广东开放大学本科（专升本）或者专科毕业证书；符合学位授予条件的本科（专升本）毕业生，授予广东开放大学学士学位并颁发学位证书。<br>&nbsp; &nbsp; &nbsp;&nbsp; 毕业证书可在教育部学历证书查询网站——中国高等教育学生信息网（www.chsi.com.cn）查询。</p><p align=\"center\"><img alt=\"20180322/c0ebc3955200c6bea0a3076c51cbf070.jpg\" src=\"/public/uploads/20180322/c0ebc3955200c6bea0a3076c51cbf070.jpg\"><br></p><p align=\"center\"><img alt=\"20180322/83dbbe7fab949e765695ff726c6181de.jpg\" src=\"/public/uploads/20180322/83dbbe7fab949e765695ff726c6181de.jpg\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p>', '0', '1', '1', '0', '', '0', '0', '46', '1521457050', '1522652840', '0.00', '', '', '华东', '文科', '自学', '大专', '广东', '/uploads/20180330/bb3d3bf1f790a300d6335ae94ce9a8b2.jpg');
INSERT INTO `lz_colleges` VALUES ('4', '22', '1', 'admin', '陕西师范大学', 'color:;font-weight:normal;', '/uploads/20180319/aec8548722d319722006b569729723f9.png', '', '陕西师范大学是教育部直属、国家“211 工程”重点建设大学，国家教师教育“985工程优势学科创新平台”建设高校，是国家培养高等院校、中等学校师资和教育管理干部以及其他高级专门人才的重要基地，被誉为西北地区“教师的摇篮 ”。建校70多年来，学校秉承“厚德、积学、励志、敦行”的优良传统，立足西部，面向全国，已发展成为一所有重要影响的综合性一流师范大学，为国家培养各类毕业生30余万人，形成了“抱道不曲、拥书自雄”的学风和“淳厚博雅、知行合一”的校风。', '<p align=\"center\"><img alt=\"20180321/eb98e232c4377e17d7c783bbe4656054.jpg\" src=\"/public/uploads/20180321/eb98e232c4377e17d7c783bbe4656054.jpg\"></p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 陕西师范大学是教育部直属、国家“211 工程”重点建设大学，国家教师教育“985工程优势学科创新平台”建设高校，是国家培养高等院校、中等学校师资和教育管理干部以及其他高级专门人才的重要基地，被誉为西北地区“教师的摇篮 ”。<br>&nbsp; &nbsp; &nbsp; 学校前身是1944年成立的陕西省立师范专科学校，1954 年更名为西安师范学院,1960年与陕西师范学院合并，定名为陕西师范大学，1978年划归教育部直属。建校70多年来，学校秉承“厚德、积学、励志、敦行”的优良传统，立足西部，面向全国，已发展成为一所有重要影响的综合性一流师范大学，为国家培养各类毕业生30余万人，形成了“抱道不曲、拥书自雄”的学风和“淳厚博雅、知行合一”的校风。<br>&nbsp; &nbsp; &nbsp;&nbsp; 陕西师范大学有五十多年的成人教育历史，是西北地区普通高等学校中最早设立成人教育机构的院校。1955 年，经教育部批准成立陕西师范大学函授部，开始举办函授教育；1985年，开始夜大学招生；1987年，经原国家教委批准成立陕西师范大学成人教育学院，1999年更名为陕西师范大学继续教育学院，2006年，陕西师范大学高等职业技术教育学院并入继续教育学院。2002年2月经教育部批准，陕西师范大学成为现代远程教育试点院校，同年5月成立网络教育学院。</p><p align=\"left\"><br></p><p align=\"left\">&nbsp; &nbsp; &nbsp; 更便捷：在线报名与入学考试，移动APP在线学习、在线缴费与选课<br>&nbsp; &nbsp; &nbsp; 更灵活：实行学分制和弹性学习年限，线上+线下期末考试<br>&nbsp; &nbsp; &nbsp; 更贴心：全方位支持服务、即时在线答疑与辅导，24小时服务热线<br>&nbsp; &nbsp; &nbsp; 更丰富：免费MOOC资源、校友会、母校行、各类公益助学活动<br>&nbsp; &nbsp; &nbsp; 更专业：专业招生和教学支持服务团队、专业课程资源</p><p align=\"left\"><br>专业优势：<br>&nbsp; &nbsp; &nbsp;&nbsp; 1、知名度高：主考院校是陕西师范大学，陕西师范大学是国家重点一类大学，211大学。<br>&nbsp; &nbsp; &nbsp;&nbsp; 2、专业种类多，实用型为主。<br>&nbsp; &nbsp; &nbsp;&nbsp; 3、招生对象：各类在职人员、待业人员等，专业不限<br>&nbsp; &nbsp; &nbsp;&nbsp; 4、学习方式：网上学习为主，集中辅导为辅<br>&nbsp; &nbsp; &nbsp;&nbsp; 5、 考试时间和考试地点：免考入学</p><p align=\"left\"><br>入学方式：<br>&nbsp; &nbsp; &nbsp;&nbsp; 实行资格审查，注册入学，分专业学历注册和单科课程注册两种方式。报读者需要参加入学水平测试，目的在于了解报读者的学习基础，以便学校更好地组织教学和辅导。</p><p align=\"left\"><br></p><p align=\"left\">招生对象：<br>&nbsp; &nbsp; &nbsp;&nbsp; 要求报考者年满18周岁并持有国民教育系列高中（含普通高中、中专、技校、职高）及以上毕业证书；考生需参加学校统一组织的入学测试，择优录取。具有相应条件者在报名时可申请免试入学。</p><p align=\"left\"><br></p><p align=\"left\">入学资格：<br>&nbsp; &nbsp; &nbsp;&nbsp; 1.具有国民教育系列专科及以上学历者，可报读本科（专升本）专业学历学习。<br>&nbsp; &nbsp; &nbsp;&nbsp; 2.具有普通高中、职业高中、技工学校和中等专业学校学历者，可报读专科专业学历学习。<br>&nbsp; &nbsp; &nbsp;&nbsp; 3.具有普通高中、职业高中、技工学校和中等专业学校及以上学历者，可注册本科（专升本）单 科课程学习；具有普通初中及以上学历者，可注册专科单科课程学习。</p><p align=\"left\"><br>教学及学习：<br>&nbsp; &nbsp; &nbsp;&nbsp; 实行学分制，不脱产业余学习（春秋两季招生，全年组织报读），通过课本自学+课件学习+网上导学+网上作业+网上答疑讨论+模拟试题自测+学习中心辅导+集中考试+毕业论文等方式完成学习。</p><p align=\"left\"><br></p><p align=\"left\">学籍有效期：<br>&nbsp; &nbsp; &nbsp;&nbsp; 专业学历最低学习年限为2.5年，学籍终身有效。</p><p align=\"left\"><br></p><p align=\"left\">教学模式：<br>&nbsp; &nbsp; &nbsp;&nbsp; 我院为学生提供丰富的学习资源以及多种形式的学习支持服务，其中包括网络教学课件及其配套的教材、作业集、网络辅导（实时和非实时）以及其它网络学习资源。实行学分制，采用以学生为中心、多种方式的现代远程教育教学模式。 <br>&nbsp; &nbsp; &nbsp;&nbsp; 学生可在任何时间、任何地点通过在线学习平台、网上作业、答疑及在线讨论等方式学习，也可参加各学习中心的面授辅导等方式进行学习。 <br>&nbsp; &nbsp; &nbsp;&nbsp; 学院组织课程考试，学生在所属学习中心参加考试。本科层次的学生还需参加教育部组织的网络教育2-3门公共基础课全国统一考试。</p><p align=\"left\"><br></p><p align=\"left\">全国网络教育公共基础课程统一考试免试条件：<br>&nbsp; &nbsp; &nbsp;&nbsp; 根据教育部网考委统考试点工作要求，按照网络教育应用型人才的培养目标，针对从业人员继续教育的特点，重在检验学生掌握基础知识的水平及应用能力。免试条件如下：<br>&nbsp; &nbsp; &nbsp; 1. 已具有国民教育系列本科以上学历（含本科），可免考全部统考科目。<br>&nbsp; &nbsp; &nbsp; 2. 非计算机类专业,获得全国计算机等级考试一级B或以上级别证书者可免考“计算机应用基础”。<br>&nbsp; &nbsp; &nbsp; 3. 符合以下规定中的任何一条，可免考“大学英语”：<br>&nbsp; &nbsp; &nbsp;&nbsp; （1）非英语专业,获得全国公共英语等级考试（PETS）三级或以上级别的证书；<br>&nbsp; &nbsp; &nbsp;&nbsp; （2）非英语专业,获省级教育行政部门组织的成人教育学位英语考试合格证书者；<br>&nbsp; &nbsp; &nbsp;&nbsp; （3）非英语专业,入学注册时年龄满40周岁者；<br>&nbsp; &nbsp; &nbsp;&nbsp; （4）非英语专业,户籍(以身份证为准)在少数民族聚居地区的少数民族学生（少数民族的界定以《试点高校网络教育部分公共基础课全国统一考试文件汇编》中的标准为准）。</p><p align=\"center\"><img alt=\"20180321/14e68dcb8792c58201be4c9c3774b1e8.PNG\" src=\"/public/uploads/20180321/14e68dcb8792c58201be4c9c3774b1e8.PNG\"><br></p><p align=\"left\"><img alt=\"20180321/04755834fd8b92a8a2f0afdfa5565743.PNG\" src=\"/public/uploads/20180321/04755834fd8b92a8a2f0afdfa5565743.PNG\"></p><p align=\"left\"><br></p><p align=\"left\">毕业及学位：<br></p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 专业学历注册的学习者，修满规定学分、通过毕业审核，准予毕业并颁发陕西师范大学本科（专升本）或者专科毕业证书；符合学位授予条件的本科（专升本）毕业生，授予陕西师范大学士学位并颁发学位证书。<br>&nbsp; &nbsp; &nbsp;&nbsp; 毕业证书可在教育部学历证书查询网站——中国高等教育学生信息网（www.chsi.com.cn）查询。教育部电子注册的陕西师范大学毕业证书(加注“网络教育”)。</p><p align=\"center\"><img alt=\"20180321/1ac3d78541d03ecd05b6f2995d210e6e.jpg\" src=\"/public/uploads/20180321/1ac3d78541d03ecd05b6f2995d210e6e.jpg\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p>', '0', '1', '1', '0', '', '0', '0', '50', '1521457344', '1522652765', '0.00', '', '', '华东', '文科', '自学', '大专', '陕西', '/uploads/20180330/cb22918ef02fcdda7728fd37be8a0830.jpg');
INSERT INTO `lz_colleges` VALUES ('5', '22', '1', 'admin', '西北工业大学', 'color:;font-weight:normal;', '/uploads/20180319/b7007b829f73422e1683a4c45665b009.png', '', '西北工业大学坐落于陕西西安，是我国唯一一所以同时发展航空、航天、航海（三航）工程教育和科学研究为特色的多科性、研究型、开放式大学。学校1995年首批进入“211工程”，2001年进入“985工程”，2017年入选全国世界一流大学和一流学科（简称“双一流”） A类建设高校名，学校坚持引培并重，打造人才高地。学校坚持以“学生为根、育人为本、学者为要、学术为魂、责任为重”的办学理念，着力培养基础扎实、专业能力强、有社会责任感和国际视野、德智体美全面发展的高素质拔尖创新人才。', '<p align=\"center\"><img alt=\"20180321/bd9307cfc733abc6c05e4d696c0ab8e5.jpg\" src=\"/public/uploads/20180321/bd9307cfc733abc6c05e4d696c0ab8e5.jpg\"></p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 西北工业大学坐落于陕西西安，是我国唯一一所以同时发展航空、航天、航海（三航）工程教育和科学研究为特色的多科性、研究型、开放式大学。学校1995年首批进入“211工程”，2001年进入“985工程”，2017年入选全国世界一流大学和一流学科（简称“双一流”） A类建设高校名，学校坚持引培并重，打造人才高地。学校坚持以“学生为根、育人为本、学者为要、学术为魂、责任为重”的办学理念，着力培养基础扎实、专业能力强、有社会责任感和国际视野、德智体美全面发展的高素质拔尖创新人才。<br>&nbsp; &nbsp; &nbsp;&nbsp; 学校2001年6月正式成立网络教育学院，并由学院全面负责学校现代远程教育工作。学院于2002年7月启动自主招生，自主考试，自主录取工作。经过多年探索发展，确立了“有教无类、因材施教、规范管理、开拓创新”的办学、管理理念，积极为社会培养更多学以致用、重在实践、具有开拓创新精神的实用型人才。自开展现代远程教育以来，已培养本、专科毕业生11万余人，赢得了良好的办学声誉。</p><p align=\"left\">&nbsp; &nbsp; &nbsp; 更便捷：在线报名与入学考试，移动APP在线学习、在线缴费与选课<br>&nbsp; &nbsp; &nbsp; 更灵活：实行学分制和弹性学习年限，线上+线下期末考试<br>&nbsp; &nbsp; &nbsp; 更贴心：全方位支持服务、即时在线答疑与辅导，24小时服务热线<br>&nbsp; &nbsp; &nbsp; 更丰富：免费MOOC资源、校友会、母校行、各类公益助学活动<br>&nbsp; &nbsp; &nbsp; 更专业：专业招生和教学支持服务团队、专业课程资源</p><p align=\"left\"><br></p><p align=\"left\">入学方式：<br>&nbsp; &nbsp; &nbsp;&nbsp; 实行资格审查，注册入学，分专业学历注册和单科课程注册两种方式。报读者需要参加入学水平测试，目的在于了解报读者的学习基础，以便学校更好地组织教学和辅导。</p><p align=\"left\"><br></p><p align=\"left\">招生对象：<br></p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 要求报考者年满18周岁并持有国民教育系列高中（含普通高中、中专、技校、职高）及以上毕业证书；考生需参加学校统一组织的入学测试，择优录取。具有相应条件者在报名时可申请免试入学。</p><p align=\"left\"><br></p><p align=\"left\">入学资格：<br></p><p align=\"left\">&nbsp; &nbsp; &nbsp; 1.具有国民教育系列专科及以上学历者，可报读本科（专升本）专业学历学习。<br>&nbsp; &nbsp; &nbsp; 2.具有普通高中、职业高中、技工学校和中等专业学校学历者，可报读专科专业学历学习。<br>&nbsp; &nbsp; &nbsp; 3.具有普通高中、职业高中、技工学校和中等专业学校及以上学历者，可注册本科（专升本）单科课程学习；具有普通初中及以上学历者，可注册专科单科课程学习。</p><p align=\"left\"><br></p><p align=\"left\">教学及学习：<br>&nbsp; &nbsp; &nbsp;&nbsp; 实行学分制，不脱产业余学习（春秋两季招生，全年组织报读），通过课本自学+课件学习+网上导学+网上作业+网上答疑讨论+模拟试题自测+学习中心辅导+集中考试+毕业论文等方式完成学习。</p><p align=\"left\"><br></p><p align=\"left\">学籍有效期：<br>&nbsp; &nbsp; &nbsp;&nbsp; 专业学历最低学习年限为2.5年，学籍终身有效。</p><p align=\"left\"><br></p><p align=\"left\">教学模式：<br>&nbsp; &nbsp; &nbsp;&nbsp; 我院为学生提供丰富的学习资源以及多种形式的学习支持服务，其中包括网络教学课件及其配套的教材、作业集、网络辅导（实时和非实时）以及其它网络学习资源。实行学分制，采用以学生为中心、多种方式的现代远程教育教学模式。 <br>&nbsp; &nbsp; &nbsp;&nbsp; 学生可在任何时间、任何地点通过在线学习平台、网上作业、答疑及在线讨论等方式学习，也可参加各学习中心的面授辅导等方式进行学习。 <br>&nbsp; &nbsp; &nbsp; 学院组织课程考试，学生在所属学习中心参加考试。本科层次的学生还需参加教育部组织的网络教育2-3门公共基础课全国统一考试。</p><p align=\"left\"><br>全国网络教育公共基础课程统一考试免试条件：<br></p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 根据教育部网考委统考试点工作要求，按照网络教育应用型人才的培养目标，针对从业人员继续教育的特点，重在检验学生掌握基础知识的水平及应用能力。免试条件如下：<br>&nbsp; &nbsp; &nbsp;&nbsp; 1. 已具有国民教育系列本科以上学历（含本科），可免考全部统考科目。<br>&nbsp; &nbsp; &nbsp; &nbsp; 2. 非计算机类专业,获得全国计算机等级考试一级B或以上级别证书者可免考“计算机应用基础”。<br>&nbsp; &nbsp; &nbsp;&nbsp; 3. 符合以下规定中的任何一条，可免考“大学英语”：<br>&nbsp; &nbsp; &nbsp; &nbsp; （1）非英语专业,获得全国公共英语等级考试（PETS）三级或以上级别的证书；<br>&nbsp; &nbsp; &nbsp; &nbsp; （2）非英语专业,获省级教育行政部门组织的成人教育学位英语考试合格证书者；<br>&nbsp; &nbsp; &nbsp; &nbsp; （3）非英语专业,入学注册时年龄满40周岁者；<br>&nbsp; &nbsp; &nbsp; &nbsp; （4）非英语专业,户籍(以身份证为准)在少数民族聚居地区的少数民族学生（少数民族的界定以《试点高校网络教育部分公共基础课全国统一考试文件汇编》中的标准为准）。</p><p align=\"left\"><img alt=\"20180321/506a61f35e7e9a27709b52544d2f743a.PNG\" src=\"/public/uploads/20180321/506a61f35e7e9a27709b52544d2f743a.PNG\"></p><p align=\"center\"><img alt=\"20180321/d6d61d1c84a1baffc4e76320e331b578.PNG\" src=\"/public/uploads/20180321/d6d61d1c84a1baffc4e76320e331b578.PNG\"></p><p align=\"center\"><br></p><p align=\"left\">努力就有回报！</p><p align=\"left\"><br>&nbsp; &nbsp; &nbsp;&nbsp; 专业学历注册的学习者，修满规定学分、通过毕业审核，准予毕业并颁发西北工业大学本科（专升本）或者专科毕业证书；符合学位授予条件的本科（专升本）毕业生，授予西北工业大学士学位并颁发学位证书。<br>&nbsp; &nbsp; &nbsp; 毕业证书可在教育部学历证书查询网站——中国高等教育学生信息网（www.chsi.com.cn）查询。教育部电子注册的西北工业大学毕业证书(加注“网络教育”)。</p><p align=\"left\"><br></p><p align=\"center\"><img alt=\"20180321/14440f89a10b035883e2b3bd21116304.jpg\" src=\"/public/uploads/20180321/14440f89a10b035883e2b3bd21116304.jpg\"></p><p align=\"left\"><br></p><p align=\"left\"><br></p>', '0', '1', '1', '0', '', '0', '0', '23', '1521457638', '1522630778', '0.00', '', '', '华东', '文科', '自学', '大专', '西安', '/uploads/20180330/359f3143f7c19db792f538a0562201b6.jpg');
INSERT INTO `lz_colleges` VALUES ('6', '22', '1', 'admin', '中国传媒大学', 'color:;font-weight:normal;', '/uploads/20180319/82c04e75976ff10426bbce72ae44441c.png', '', '中国传媒大学，学校位于北京城东古运河畔，校园占地面积46.37万平方米，总建筑面积49.98万平方米；学校是教育部直属的国家“211工程”、“985工程”优势学科创新平台、“珠峰计划”、“2011计划”、“111计划”建设的全国重点大学，是国家首批“双一流”世界一流学科建设高校。前身是创建于1954年的中央广播事业局广播通信技术干部训练班，训练班的成立是广播电视发展史上开天辟地的大事变，开创了我国广电技术理工科高等教育的先河。1959年升格为北京广播学院，开设无线电系、外语系和新闻系。2004年正式更名为中国传媒大学，英文名称为Communication University of China。', '<p align=\"left\" style=\"text-align: center;\"><img alt=\"20180321/71f5ec730a1e831b8f859feb0899e390.jpg\" src=\"/public/uploads/20180321/71f5ec730a1e831b8f859feb0899e390.jpg\"></p><p align=\"left\" style=\"text-align: center; \">&nbsp; &nbsp; &nbsp;</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 中国传媒大学，学校位于北京城东古运河畔，校园占地面积46.37万平方米，总建筑面积49.98万平方米；学校是教育部直属的国家“211工程”、“985工程”优势学科创新平台、“珠峰计划”、“2011计划”、“111计划”建设的全国重点大学，是国家首批“双一流”世界一流学科建设高校。前身是创建于1954年的中央广播事业局广播通信技术干部训练班，训练班的成立是广播电视发展史上开天辟地的大事变，开创了我国广电技术理工科高等教育的先河。1959年升格为北京广播学院，开设无线电系、外语系和新闻系。2004年正式更名为中国传媒大学，英文名称为Communication University of China。<br>&nbsp; &nbsp; &nbsp;&nbsp; 中国传媒大学以大传播的理念、全媒体的视野。继续教育学部是中国传媒大学下属六个学部之一，主要承担成人高等学历教育及非学历培训教育任务。现拥有网络远程、函授、夜大学、高等教育自学考试、培训等多种教学形式。</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 更便捷：在线报名与入学考试，移动APP在线学习、在线缴费与选课<br>&nbsp; &nbsp; &nbsp;&nbsp; 更灵活：实行学分制和弹性学习年限，线上+线下期末考试<br>&nbsp; &nbsp; &nbsp;&nbsp; 更贴心：全方位支持服务、即时在线答疑与辅导，24小时服务热线<br>&nbsp; &nbsp; &nbsp;&nbsp; 更丰富：免费MOOC资源、校友会、母校行、各类公益助学活动<br>&nbsp; &nbsp; &nbsp;&nbsp; 更专业：专业招生和教学支持服务团队、专业课程资源</p><p align=\"left\"><br></p><p align=\"left\">入学方式：<br>&nbsp; &nbsp; &nbsp;&nbsp; 实行资格审查，注册入学，分专业学历注册和单科课程注册两种方式。报读者需要参加入学水平测试，目的在于了解报读者的学习基础，以便学校更好地组织教学和辅导。</p><p align=\"left\"><br></p><p align=\"left\">招生对象：<br>&nbsp; &nbsp; &nbsp;&nbsp; 要求报考者年满18周岁并持有国民教育系列高中（含普通高中、中专、技校、职高）及以上毕业证书；考生需参加学校统一组织的入学测试，择优录取。具有相应条件者在报名时可申请免试入学。</p><p align=\"left\"><br></p><p align=\"left\">入学资格：<br>&nbsp; &nbsp; &nbsp; 1.具有国民教育系列专科及以上学历者，可报读本科（专升本）专业学历学习。<br>&nbsp; &nbsp; &nbsp; 2.具有普通高中、职业高中、技工学校和中等专业学校学历者，可报读专科专业学历学习。<br>&nbsp; &nbsp; &nbsp; 3.具有普通高中、职业高中、技工学校和中等专业学校及以上学历者，可注册本科（专升本）单科课程学习；具有普通初中及以上学历者，可注册专科单科课程学习。</p><p align=\"left\"><br></p><p align=\"left\">教学及学习：<br>&nbsp; &nbsp; &nbsp;&nbsp; 实行学分制，不脱产业余学习（春秋两季招生，全年组织报读），通过课本自学+课件学习+网上导学+网上作业+网上答疑讨论+模拟试题自测+学习中心辅导+集中考试+毕业论文等方式完成学习。</p><p align=\"left\"><br></p><p align=\"left\">学籍有效期：<br>&nbsp; &nbsp; &nbsp;&nbsp; 专业学历最低学习年限为2.5年，学籍终身有效。</p><p align=\"left\"><br></p><p align=\"left\">教学模式：<br>&nbsp; &nbsp; &nbsp;&nbsp; 我院为学生提供丰富的学习资源以及多种形式的学习支持服务，其中包括网络教学课件及其配套的教材、作业集、网络辅导（实时和非实时）以及其它网络学习资源。实行学分制，采用以学生为中心、多种方式的现代远程教育教学模式。 <br>&nbsp; &nbsp; &nbsp;&nbsp; 学生可在任何时间、任何地点通过在线学习平台、网上作业、答疑及在线讨论等方式学习，也可参加各学习中心的面授辅导等方式进行学习。 <br>&nbsp; &nbsp; &nbsp;&nbsp; 学院组织课程考试，学生在所属学习中心参加考试。本科层次的学生还需参加教育部组织的网络教育2-3门公共基础课全国统一考试。</p><p align=\"left\"><br></p><p align=\"left\">全国网络教育公共基础课程统一考试免试条件：<br>&nbsp; &nbsp; &nbsp;&nbsp; 根据教育部网考委统考试点工作要求，按照网络教育应用型人才的培养目标，针对从业人员继续教育的特点，重在检验学生掌握基础知识的水平及应用能力。免试条件如下：<br>1. 已具有国民教育系列本科以上学历（含本科），可免考全部统考科目。<br>2. 非计算机类专业,获得全国计算机等级考试一级B或以上级别证书者可免考“计算机应用基础”。<br>3. 符合以下规定中的任何一条，可免考“大学英语”：<br>（1）非英语专业,获得全国公共英语等级考试（PETS）三级或以上级别的证书；<br>（2）非英语专业,获省级教育行政部门组织的成人教育学位英语考试合格证书者；<br>（3）非英语专业,入学注册时年龄满40周岁者；<br>（4）非英语专业,户籍(以身份证为准)在少数民族聚居地区的少数民族学生（少数民族的界定以《试点高校网络教育部分公共基础课全国统一考试文件汇编》中的标准为准）。<br></p><p align=\"left\"><img alt=\"20180321/50e23c36cc0d1bfc196a8588a9d7187c.PNG\" src=\"/public/uploads/20180321/50e23c36cc0d1bfc196a8588a9d7187c.PNG\"></p><p align=\"center\"><img alt=\"20180321/9148e59f1939c4e3a7cb9a49561d73be.PNG\" src=\"/public/uploads/20180321/9148e59f1939c4e3a7cb9a49561d73be.PNG\"></p><p align=\"left\"><br></p><p align=\"left\">努力就有回报！</p><p align=\"left\"><br>&nbsp; &nbsp; &nbsp;&nbsp; 专业学历注册的学习者，修满规定学分、通过毕业审核，准予毕业并颁发中国传媒大学本科（专升本）或者专科毕业证书；符合学位授予条件的本科（专升本）毕业生，授予中国传媒大学士学位并颁发学位证书。<br>&nbsp; &nbsp; &nbsp;&nbsp; 毕业证书可在教育部学历证书查询网站——中国高等教育学生信息网（www.chsi.com.cn）查询。教育部电子注册的中国传媒大学毕业证书(加注“网络教育“)。</p><p align=\"left\"><br></p><p align=\"center\"><img alt=\"20180321/d8f4c0538a55f9c749a016cc5953dc64.jpg\" src=\"/public/uploads/20180321/d8f4c0538a55f9c749a016cc5953dc64.jpg\"><img alt=\"20180321/17207816c6b8b87ac481f3b13834e262.png\" src=\"/public/uploads/20180321/17207816c6b8b87ac481f3b13834e262.png\"></p><p align=\"center\"><br></p><p align=\"center\"><br></p><p align=\"center\"><br></p><p align=\"center\"><br></p><p align=\"center\"><br></p><p align=\"center\"><br></p><p align=\"center\"><br></p>', '0', '1', '1', '0', '', '0', '0', '26', '1521457789', '1522652657', '0.00', '', '', '华东', '文科', '自学', '大专', '北京', '/uploads/20180330/585d18fa24e0bfe2316ad63c7527b17f.jpg');
INSERT INTO `lz_colleges` VALUES ('7', '22', '1', 'admin', '汕头大学', 'color:;font-weight:normal;', '/uploads/20180319/9ffb53c3a59da9867a1260cd2c47138e.png', '', '汕头大学（Shantou University），简称“汕大”，位于广东省汕头市，是1981年经国务院批准成立的广东省“九五”和“十五”期间重点建设的10所省级211高校综合性大学，教育部“卓越医生教育培养计划”试点高校，是教育部、广东省、李嘉诚基金会三方共建的省部共建大学，也是全球唯一一所由私人基金会——李嘉诚基金会持续资助的公立大学。', '<p align=\"left\"><img alt=\"20180321/6cce326d0774352a9f431346be8c764a.jpg\" src=\"/public/uploads/20180321/6cce326d0774352a9f431346be8c764a.jpg\"></p><p align=\"left\"><br></p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 汕头大学（Shantou University），简称“汕大”，位于广东省汕头市，是1981年经国务院批准成立的广东省“九五”和“十五”期间重点建设的10所省级211高校综合性大学，教育部“卓越医生教育培养计划”试点高校，是教育部、广东省、李嘉诚基金会三方共建的省部共建大学，也是全球唯一一所由私人基金会——李嘉诚基金会持续资助的公立大学。<br>汕头大学于1979年初筹办。1981年8月26日，国务院批准成立汕头大学，叶剑英元帅亲题校名。1983年，开始招收本科学生。1993年，学校获得硕士学位授予权，开始研究生自主招生。1998年，被国务院增列为博士学位授予权单位。2012年6月，教育部、广东省人民政府、李嘉诚基金会共建汕头大学。开放学院于1999年经广东省自学考试委员会批准成立，为汕大下属学院之一，是从事自学考试的专业助学单位，享有特殊办学政策，实施学习过程考核。学院秉承学习过程与结果相结合，传授知识和培养人生素养并重的办学宗旨，选派优秀教师授课圆您大学梦想，让您少投入、高产出，助您迅速成才。</p><p align=\"left\"><br></p><p align=\"left\"><img alt=\"20180321/66d133c81a59acfd48c81544728191e5.PNG\" src=\"/public/uploads/20180321/66d133c81a59acfd48c81544728191e5.PNG\"></p><p align=\"left\"><img alt=\"20180321/c24ac91e80637fa54078f2f47c55c60a.PNG\" src=\"/public/uploads/20180321/c24ac91e80637fa54078f2f47c55c60a.PNG\"><br></p><p align=\"left\"><br></p><p align=\"left\"><img alt=\"20180321/ebf59241e8172079080347d985956715.jpg\" src=\"/public/uploads/20180321/ebf59241e8172079080347d985956715.jpg\"><br></p><p align=\"left\"><br></p><p align=\"left\">招生对象：</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 专科—普通高中或中等职业学校毕业生（或具有同等学力者），免试入学。<br>&nbsp; &nbsp; &nbsp;&nbsp; 本科—国民教育系列的专科（或以上）在校生或毕业生，免试入学。<br>&nbsp; &nbsp; &nbsp; &nbsp;<br></p><p align=\"left\">毕业待遇：<br>&nbsp; &nbsp; &nbsp;&nbsp; 按教学计划全部课程考试成绩合格者，颁发属于国民教育系列的自学考试毕业证书，国家承认学历，享受与普通高校同等学历层次毕业生的同等待遇。符合条件的本科毕业生，可申请授予学士学位。（学士学位申请条件以当年相关学院学位分委员会公布的要求为准）<br></p><p align=\"left\">&nbsp;报名须知：<br>&nbsp; &nbsp; &nbsp; 1.&nbsp;即日起接受报名。<br>&nbsp; &nbsp; &nbsp; 2.&nbsp;考试时间为每年4月和10月，具体时间以广东省教育考试院公布时间为准。考生原则上在常住户口或暂住证所在地报名、考试报名时，须使用户口簿或身份证上的现用姓名和身份证号码，考试和录取以此为依据。<br>&nbsp; &nbsp; &nbsp;&nbsp; 网上预报名：考生登录广东省自考办招生考试网上报名系统，准确录入本人的报名信息，并记录系统返回的报名顺序号、密码和确认报名地点等信息。正式报名：预报名结束后，考生须在规定的报名时间内到指定报名地点正式报名，确认报名资格，交纳报名费，电子摄像，交验身份证与毕业证书原件和复印件。报名办法以广东省自考办公室编写的《广东省2018年自学考试报考须知》为准。</p><p align=\"left\"> &nbsp; 报名请携：学费、一寸近照4张、身份证复印件2份、高中（中职）或专科毕业证书复印件1份</p><p align=\"left\"><br></p><p align=\"left\"><br>毕业证书</p><p align=\"left\">&nbsp; &nbsp; &nbsp;&nbsp; 按教学计划全部课程考试成绩合格者，颁发属于国民教育系列的自学考试毕业证书，国家承认学历，享受与普通高校同等学历层次毕业生的同等待遇。符合条件的本科毕业生，可申请授予学士学位。（学士学位申请条件以当年相关学院学位分委员会公布的要求为准）<br>&nbsp; &nbsp; &nbsp;&nbsp; 国家承认学历，毕业证书可以国家教育部指定的“中国高等教育学生信息网（http://www.chsi.com.cn/）”查询。</p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p><p align=\"left\"><br></p>', '0', '1', '1', '0', '', '0', '0', '34', '1521457967', '1522630755', '0.00', '', '', '华东', '文科', '自学', '大专', '广东省汕头', '/uploads/20180330/f24e8f2b1dd89e873a181401c3cac7e6.jpg');
INSERT INTO `lz_colleges` VALUES ('8', '22', '1', 'admin', '广州工商学院', 'color:;font-weight:normal;', '/uploads/20180319/9f0ab9b95b6b763d86d080e7ae5bcb32.png', '', '广州工商学院是经教育部批准设立的民办全日制普通本科院校，具有普通高等学历教育和招收留学生资格。前身为广州工商职业技术学院，创建于1995年，2014年升格本科并更名为广州工商学院。 学院坚持“以德为行，以学为上”的教育思想，大力开展 “进课室、进图书馆、进实验实训室、进体育场馆、进社会”的活动，培养德智体全面发展的合格大学生。学院以建设高水平应用型大学为目标，坚持“内强素质、外树形象、和谐办学、科学发展”的办学方针；坚持“以质立校、以生为本、突出特色、崇尚创新”的办学理念，深化教育教学改革，提高产学研综合水平，全面推进素质教育，致力于培养宽口径、厚基础的高素质应用型、技能型人。', '<p align=\"center\"><img alt=\"20180321/03889ed778c93346efef1152fc198597.jpg\" src=\"/public/uploads/20180321/03889ed778c93346efef1152fc198597.jpg\"></p><p>&nbsp; &nbsp; &nbsp; &nbsp; 广州工商学院是经教育部批准设立的民办全日制普通本科院校，具有普通高等学历教育和招收留学生资格。前身为广州工商职业技术学院，创建于1995年，2014年升格本科并更名为广州工商学院。</p><p>&nbsp; &nbsp; &nbsp;&nbsp; 学院坚持“以德为行，以学为上”的教育思想，大力开展 “进课室、进图书馆、进实验实训室、进体育场馆、进社会”的活动，培养德智体全面发展的合格大学生。学院以建设高水平应用型大学为目标，坚持“内强素质、外树形象、和谐办学、科学发展”的办学方针；坚持“以质立校、以生为本、突出特色、崇尚创新”的办学理念，深化教育教学改革，提高产学研综合水平，全面推进素质教育，致力于培养宽口径、厚基础的高素质应用型、技能型人。</p><p><br></p><p align=\"center\"><img alt=\"20180321/4d266f0ef4558510ac509e24f09e7ce2.PNG\" src=\"/public/uploads/20180321/4d266f0ef4558510ac509e24f09e7ce2.PNG\"></p><p align=\"center\"><img alt=\"20180321/34e263f2da18c6fcdbc3a182ae0832a5.PNG\" src=\"/public/uploads/20180321/34e263f2da18c6fcdbc3a182ae0832a5.PNG\"><br></p><p><br></p><p>报名层次：</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 高升专、专升本</p><p><br></p><p>报考和报名时间：</p><p>&nbsp; &nbsp; &nbsp;&nbsp; 9月1日-9月5日网上预报名；9月6日-9月10日考生到指定报名点正式报名。具体时间以广东省教育考试院公布时间为准 考生原则上在常住户口或暂住证所在地报名、考试报名时，须使用户口簿或身份证上的现用姓名和身份证号码，考试和录取以此为依据。</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 网上预报名：考生登录广东省成人高校招生考试网上报名系统。(www.ecogd.edu.cn/cr)，准确录入本人的报名信息，并记录系统返回的报名顺序号、密码和确认报名地点等信息。正式报名：预报名结束后，考生须在规定的报名时间内到指定报名地点正式报名，确认报名资格，交纳报名费，电子摄像，交验身份证与毕业证书原件和复印件。报名办法以广东省招生办公室编写的《广东省2017年成人高等学校报考须知》为准。&nbsp;</p><p><br></p><p>打印准考证： &nbsp;</p><p>&nbsp; &nbsp; &nbsp;&nbsp; 10月19日起，报名成功的考生凭用户名和密码可登陆成人高考报名系统打印准考证。</p><p>&nbsp;</p><p>考试时间：&nbsp;</p><p>&nbsp; &nbsp; &nbsp;&nbsp; 全国成人高校招生统一考试时间安排在10月28日-29日（具体时间以广东省招生办公室公布的时间为准）。届时按准考证上写明的考场地址准时进场考试。&nbsp;</p><p><br></p><p align=\"left\">考试科目：<br></p><p align=\"center\"><img alt=\"20180321/875380357ce83fa5910f33b60b1ef95a.PNG\" src=\"/public/uploads/20180321/875380357ce83fa5910f33b60b1ef95a.PNG\"></p><p align=\"center\"><br></p><p>成绩公布与录取：</p><p>&nbsp; &nbsp; &nbsp; &nbsp; 成人高考一般在11月公布成绩，12月上旬录取。具体时间以广东省教育考试院文件精神为准。被录取的考生一般在12月下旬报到，2018年春季学期正式上课（开学时间一般在2月底-3月初）。</p><p><br></p><p>办学形式：</p><p>&nbsp; &nbsp; &nbsp;&nbsp; 学生修完本专业教学计划规定的课程，成绩合格，符合毕业条件者，由广州工商学院大学颁发经教育部电子注册的成人高等教育毕业证书。</p><p><br></p><p>学位申请：</p><p>&nbsp; &nbsp; &nbsp;&nbsp; 我校成人高等学历教育本科毕业生同时符合以下条件者可申请授予学士学位：省学位外语统考合格；本科段课程平均成绩70分以上；毕业论文成绩良好以上。</p><p><br></p><p>报考事项：</p><p>&nbsp; &nbsp; &nbsp; 1.初中、中专（中技）高中（职高）学历者可报考专科；国民教育系列专科（高职）学历者可报考本科。</p><p>&nbsp; &nbsp; &nbsp; 2.报考者须交身份证双面复印件1张（报考本科者还须交专科毕业证复印件1张）；填写报名登记表。</p><p>&nbsp; &nbsp; &nbsp; 3.为加强招生计划性，考生可实行预报名；信息确认时间在每年9月初（考生须提供本人有效居民身份证），考试时间在每年10月份，具体时间以考试地教育考试院公布的为准。</p><p><br></p><p>说明：</p><p>&nbsp; &nbsp;&nbsp; 1.高升专、专升本统考总分均为450分。近年来，录取分数较低，报考者录取率极高（考生根据成考复习资料认真复习，三门科坚持考完，上线、录取率95%以上）。</p><p>&nbsp; &nbsp;&nbsp; 2.考生所报的专业，如在考试地教育考试院公布的招生专业目录中没有显示，可先报考其同一层次相同科类的某个专业。例如，高升专层次文史类的市场营销等可以语文教育或工商企业管理专业报考，理工类的数控技术等可以数学教育专业报考；专升本层次文史类的历史学等可以汉语言文学专业报考，理工类的化学等可以数学与应用数学专业报考，经管类的经济学等可以地理科学或会计学专业报考，入学注册时，再改读自己想读的专业。</p><p>&nbsp; &nbsp;&nbsp; 3.函授（业余）学习坚持以自学钻研为主，面授导学为辅，具有学习、考试机制灵活，费用低廉，程序简单，操作方便，毕业容易等特点，较之自考、远程（网络）教育更具吸引力。</p><p>&nbsp; &nbsp;&nbsp; 4.考试地教育考试院公布的招生专业及人数，仅为指导性计划，若计划数不够，广州工商学院/私立华联学院可调剂或追加计划，从而确保上线考生100%录取。</p><p><br></p><p>毕业证书<br>&nbsp; &nbsp; &nbsp;&nbsp; 凡按规定修完专业教学计划的全部课程且考核合格者，由主考院校颁发“大学毕业证书”；专升本符合条件者可申请学士学位。国家承认学历，毕业证书可以国家教育部指定的“中国高等教育学生信息网（http://www.chsi.com.cn/）”查询。<br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p>', '0', '1', '1', '0', '', '0', '0', '131', '1521458123', '1522652610', '0.00', '', '', '华东', '文科', '自学', '大专', '广州', '/uploads/20180326/2261f6d4b87bca65121b63f58232786b.png');

-- ----------------------------
-- Table structure for `lz_config`
-- ----------------------------
DROP TABLE IF EXISTS `lz_config`;
CREATE TABLE `lz_config` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(50) DEFAULT NULL COMMENT '配置的key键名',
  `value` varchar(512) DEFAULT NULL COMMENT '配置的val值',
  `inc_type` varchar(64) DEFAULT NULL COMMENT '配置分组',
  `desc` varchar(50) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_config
-- ----------------------------
INSERT INTO `lz_config` VALUES ('16', 'is_mark', '0', 'water', '0');
INSERT INTO `lz_config` VALUES ('17', 'mark_txt', '', 'water', '0');
INSERT INTO `lz_config` VALUES ('18', 'mark_img', '/public/upload/public/2017/01-20/10cd966bd5f3549833c09a5c9700a9b8.jpg', 'water', '0');
INSERT INTO `lz_config` VALUES ('19', 'mark_width', '', 'water', '0');
INSERT INTO `lz_config` VALUES ('20', 'mark_height', '', 'water', '0');
INSERT INTO `lz_config` VALUES ('21', 'mark_degree', '54', 'water', '0');
INSERT INTO `lz_config` VALUES ('22', 'mark_quality', '56', 'water', '0');
INSERT INTO `lz_config` VALUES ('23', 'sel', '9', 'water', '0');
INSERT INTO `lz_config` VALUES ('24', 'sms_url', 'https://yunpan.cn/OcRgiKWxZFmjSJ', 'sms', '0');
INSERT INTO `lz_config` VALUES ('25', 'sms_user', '', 'sms', '0');
INSERT INTO `lz_config` VALUES ('26', 'sms_pwd', '访问密码 080e', 'sms', '0');
INSERT INTO `lz_config` VALUES ('27', 'regis_sms_enable', '1', 'sms', '0');
INSERT INTO `lz_config` VALUES ('28', 'sms_time_out', '1200', 'sms', '0');
INSERT INTO `lz_config` VALUES ('38', '__hash__', '8d9fea07e44955760d3407524e469255_6ac8706878aa807db7ffb09dd0b02453', 'sms', '0');
INSERT INTO `lz_config` VALUES ('39', '__hash__', '8d9fea07e44955760d3407524e469255_6ac8706878aa807db7ffb09dd0b02453', 'sms', '0');
INSERT INTO `lz_config` VALUES ('56', 'sms_appkey', '123456789', 'sms', '0');
INSERT INTO `lz_config` VALUES ('57', 'sms_secretKey', '123456789', 'sms', '0');
INSERT INTO `lz_config` VALUES ('58', 'sms_product', 'lirenjy', 'sms', '0');
INSERT INTO `lz_config` VALUES ('59', 'sms_templateCode', 'SMS_101234567890', 'sms', '0');
INSERT INTO `lz_config` VALUES ('60', 'smtp_server', 'smtp.qq.com', 'smtp', '0');
INSERT INTO `lz_config` VALUES ('61', 'smtp_port', '25', 'smtp', '0');
INSERT INTO `lz_config` VALUES ('62', 'smtp_user', 'guoqf_online@yeah.net', 'smtp', '0');
INSERT INTO `lz_config` VALUES ('63', 'smtp_pwd', '4545', 'smtp', '0');
INSERT INTO `lz_config` VALUES ('64', 'regis_smtp_enable', '1', 'smtp', '0');
INSERT INTO `lz_config` VALUES ('65', 'test_eamil', 'guoqf_online@yeah.net', 'smtp', '0');
INSERT INTO `lz_config` VALUES ('70', 'forget_pwd_sms_enable', '1', 'sms', '0');
INSERT INTO `lz_config` VALUES ('71', 'bind_mobile_sms_enable', '1', 'sms', '0');
INSERT INTO `lz_config` VALUES ('72', 'order_add_sms_enable', '1', 'sms', '0');
INSERT INTO `lz_config` VALUES ('73', 'order_pay_sms_enable', '1', 'sms', '0');
INSERT INTO `lz_config` VALUES ('74', 'order_shipping_sms_enable', '1', 'sms', '0');
INSERT INTO `lz_config` VALUES ('88', 'email_id', 'lirenjy', 'smtp', '0');
INSERT INTO `lz_config` VALUES ('89', 'test_eamil_info', ' 您好！这是一封来自lirenjy的测试邮件！', 'smtp', '0');

-- ----------------------------
-- Table structure for `lz_contract`
-- ----------------------------
DROP TABLE IF EXISTS `lz_contract`;
CREATE TABLE `lz_contract` (
  `contract_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(50) DEFAULT NULL,
  `company_name` char(50) DEFAULT NULL,
  `company_addr` char(100) DEFAULT NULL,
  `company_phone` char(50) DEFAULT NULL,
  `content` text,
  `pic` varchar(200) DEFAULT NULL,
  `open` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`contract_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_contract
-- ----------------------------
INSERT INTO `lz_contract` VALUES ('1', '自考合同', '深圳立人教育', '深圳市五和南路108号凯旋商业大厦五楼', '0755-28680890', '<p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">根据《中华人民共和国合同法》及国家教育部相关法律法规，结合深圳市立人教育管理有限公司业务范围服务的特点，乙方在甲方获取咨询和学历提升服务过程中，为共同保障甲、乙双方的利益以及服务质量。经甲、乙双方协商必须共同遵守条款如下：</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">一、甲方责任与义务</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;1、为乙方完成从报考、入学、毕业等全程咨询管理工作；</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;2、保证乙方在所报院校所规定的最短学制年限内完成毕业，所申请的毕业证书属国家教育部正规学历毕业证书，可在中国高等教育学生信息网查询http://www.chsi.com.cn查询验证；</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;3、除正常提交乙方个人信息资料给到指定报考单位外，不得泄露乙方信息资料。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;4、甲方须确保乙方学员的自学考试专业课程在1.5-2年通过，并协助乙方学员申请毕业和取得相关毕业证书。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;5、甲方除正常学习服务费用（报考费、学费、教材费），不得以任何借口向乙方收取任何费用。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;6、甲方为乙方提供申请学士学位的办理手续的咨询和指导服务。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;7、非甲方责任，甲方不承担退费责任。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;8、乙方在履行完成自己的义务后，甲方原因导致乙方未按时取得毕业证书，甲方应将乙方所交给甲方的全部费用退回给乙方（甲方不承担乙方因此所联带的损失责任和费用）。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">二、乙方责任与义务</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;1、乙方应在办理报名手续至毕业期间应按时配合甲方完成自考课程的报考、考试、毕业等相关工作。（1）自考学员本人持有效身份证参加考试1-3次；（2）考试行程与费用自理；（3）本人填写毕业申请表等；</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;2、乙方应按甲方规定按时交清学习服务费用；</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;3、乙方在办理报读手续过程中所提交的各种证明资料须真实有效；</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;4、乙方有拒绝缴付甲乙双方约定收费事项以外费用的权利；</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;5、乙方在报名交费后，非甲方原因，不得申请退费；</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;6、甲方在为乙方培训过程中，乙方不得向任何第三方透露协议内容，否则甲方将终止为乙方学员提供所在专、本科自考保障服务。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;7、乙方未履行自己的责任与义务而影响成绩合格、毕业等，乙方自行承担后果，同时已经交给甲方的费用无权利申请退回。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;8、乙方需要申请学士学位者，需本人符合申请条件。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">三、双方其它约束责任</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;1、因国家政策变动等不可抗力因素，导致成人学历教育的要素发生变化，均以颁布的政策文件为准（如毕业证样式变更、毕业年限发生变化等）。乙方不得以此为由要求甲方退还所交费用。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;2、如因不可抗力不能履行的，可根据不可抗力的影响，部分或全部免除责任。(不可抗力是指不可预见的，不能避免且不能克服的客观情况，包括自然灾害、国家政策变化等客观因素)</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">四、报读服务课程</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">以乙方在甲方填写报读信息为准，包括内容有院校、层次、学制、学习形式、计划毕业时间、费用明细。</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">五、其它事项</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;1、双方确认，已经仔细审阅过本协议的内容，并完全了解本协议各条款的法律含义。&nbsp;</span></p><p style=\"line-height: 2em;\"><span style=\"font-size: 16px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;2、本协议涉及内容均属实，若有未尽事宜，双方另行协商解决。本协议为电子文件，须签字生效，双方可随时查询或下载打印。</span></p><p><br/></p>', '/uploads/20180508/97c86176de6be19bc9006b8554a790d0.gif', '1');
INSERT INTO `lz_contract` VALUES ('4', '非自考合同', '深圳市立人教育管理有限公司2', '深圳市五和南路108号凯旋商业大厦五楼3', '0755-286808904', '<p style=\"line-height: 2em;\">根据《中华人民共和国合同法》及国家教育部相关法律法规，结合深圳市立人教育管理有限公司业务范围服务的特点，乙方在甲方获取咨询和学历提升服务过程中，为共同保障甲、乙双方的利益以及服务质量。经甲、乙双方协商必须共同遵守条款如下：</p><p style=\"line-height: 2em;\">一、甲方责任与义务</p><p style=\"line-height: 2em;\">1、为乙方完成从报考、入学、毕业等全程管理咨询工作；</p><p style=\"line-height: 2em;\">2、保证乙方在所报院校所规定的最短学制年限内完成毕业，所申请的毕业证书属国家教育部正规学历毕业证书，可在中国高等教育学生信息网查询http://www.chsi.com.cn查询验证；</p><p style=\"line-height: 2em;\">3、除正常提交乙方个人信息资料给到指定报考单位外，不得泄露乙方信息资料。</p><p style=\"line-height: 2em;\">4、除正常学习服务费用（报考费、学费、教材费、毕业证摄像费），不得以任何借口向学员收取其它费用。</p><p style=\"line-height: 2em;\">5、非甲方责任，将不产生任何退费责任。</p><p style=\"line-height: 2em;\">6、甲方为乙方提供申请学士学位的办理手续的咨询和指导报务。</p><p style=\"line-height: 2em;\">7、如果乙方没有被报读院校录取，甲方应将乙方之前所交给甲方未被录取院校相应层次的费用全部退回给乙方；</p><p style=\"line-height: 2em;\">8、乙方在履行完成自己的义务后，甲方原因导致乙方未按时取得毕业证书，甲方应将乙方所交给甲方的全部费用退回给乙方（甲方不承担乙方因此所联带的损失责任和费用）。</p><p style=\"line-height: 2em;\">二、乙方责任与义务</p><p style=\"line-height: 2em;\">1、乙方应在入学至毕业期间应按时配合甲方完成学校报名、录取、毕业等相关申请手续办理。如：成人高考考试本人持证件按时参加，网络教育考试需提供身份证有效原件、配合部分考试，毕业填写申请表等；</p><p style=\"line-height: 2em;\">2、乙方应按甲方规定按时交清学习服务费用；</p><p style=\"line-height: 2em;\">3、乙方在办理报读手续过程中所提交的各种证明资料须真实有效；</p><p style=\"line-height: 2em;\">4、甲方为乙方提供申请学士学位的办理手续的咨询和指导报务。</p><p style=\"line-height: 2em;\">5、乙方有拒绝缴付甲乙双方约定收费事项以外费用的权利；</p><p style=\"line-height: 2em;\">6、乙方在报名交费后，非甲方原因，不得申请退费；</p><p style=\"line-height: 2em;\">7、乙方未履行自己的责任与义务而影响录取、毕业等，乙方将自行承担后果，同时已经交给甲方的费用无权利申请退回。</p><p style=\"line-height: 2em;\">8、广东开放大学本科的学生须本人去现场完成答辩。</p><p style=\"line-height: 2em;\">三、双方其它约束责任</p><p style=\"line-height: 2em;\">1、因国家政策变动等不可抗力因素，导致成人学历教育的要素发生变化，均以颁布的政策文件为准（如毕业证样式变更、毕业年限发生变化等）。乙方不得以此为由要求甲方退还所交费用。</p><p style=\"line-height: 2em;\">2、如因不可抗力不能履行的，可根据不可抗力的影响，部分或全部免除责任。(不可抗力是指不可预见的，不能避免且不能克服的客观情况，包括自然灾害、国家政策变化等客观因素)</p><p style=\"line-height: 2em;\">四、报读服务课程</p><p style=\"line-height: 2em;\">以乙方在甲方填写报读信息为准，包括内容有院校、层次、学制、学习形式、计划毕业时间、费用明细。</p><p style=\"line-height: 2em;\">五、其它事项</p><p style=\"line-height: 2em;\">1、双方确认，已经仔细审阅过本协议的内容，并完全了解本协议各条款的法律含义。&nbsp;</p><p style=\"line-height: 2em;\">2、本协议涉及内容均属实，若有未尽事宜，双方另行协商解决。本协议为电子文件，须签字生效，双方可随时查询或下载打印。</p><p><br/></p>', '/uploads/20180508/9cf656391b4759e4acb828c9fca2783f.gif', '1');

-- ----------------------------
-- Table structure for `lz_credentials`
-- ----------------------------
DROP TABLE IF EXISTS `lz_credentials`;
CREATE TABLE `lz_credentials` (
  `user_id` int(11) NOT NULL,
  `enregister_pic` varchar(200) DEFAULT NULL,
  `enregister_state` smallint(2) DEFAULT '0',
  `idcard_pic` varchar(200) DEFAULT NULL,
  `idcard_state` smallint(2) DEFAULT '0',
  `f_idcard_pic` varchar(200) DEFAULT NULL,
  `f_idcard_state` smallint(2) DEFAULT '0',
  `graduate_pic` varchar(200) DEFAULT NULL,
  `graduate_state` smallint(2) DEFAULT '0',
  `verification_pic` varchar(200) DEFAULT NULL,
  `verification_state` smallint(2) DEFAULT '0',
  `work_pic` varchar(200) DEFAULT NULL,
  `work_state` smallint(2) unsigned DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_credentials
-- ----------------------------
INSERT INTO `lz_credentials` VALUES ('2603', 'public/uploads/members/26031525230162.jpeg', '2', 'public/uploads/members/26031525230088.jpeg', '2', 'public/uploads/members/26031525190487.jpeg', '2', 'public/uploads/members/26031525190494.jpeg', '3', 'public/uploads/members/26031525435176.jpeg', '1', 'public/uploads/members/26031525230201.jpeg', '2');
INSERT INTO `lz_credentials` VALUES ('2606', 'public/uploads/members/26061525425792.jpeg', '1', null, '0', null, '0', null, '0', null, '0', null, '0');

-- ----------------------------
-- Table structure for `lz_debris`
-- ----------------------------
DROP TABLE IF EXISTS `lz_debris`;
CREATE TABLE `lz_debris` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `type_id` int(6) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  `content` text,
  `addtime` int(13) DEFAULT NULL,
  `sort` int(11) DEFAULT '50',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_debris
-- ----------------------------

-- ----------------------------
-- Table structure for `lz_debris_type`
-- ----------------------------
DROP TABLE IF EXISTS `lz_debris_type`;
CREATE TABLE `lz_debris_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) DEFAULT NULL,
  `sort` int(1) DEFAULT '50',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_debris_type
-- ----------------------------
INSERT INTO `lz_debris_type` VALUES ('1', '【首页】中部碎片', '1');
INSERT INTO `lz_debris_type` VALUES ('5', '【测试】', '2');

-- ----------------------------
-- Table structure for `lz_donation`
-- ----------------------------
DROP TABLE IF EXISTS `lz_donation`;
CREATE TABLE `lz_donation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(120) NOT NULL DEFAULT '' COMMENT '用户名',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '捐赠金额',
  `addtime` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_donation
-- ----------------------------

-- ----------------------------
-- Table structure for `lz_field`
-- ----------------------------
DROP TABLE IF EXISTS `lz_field`;
CREATE TABLE `lz_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `moduleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(150) NOT NULL DEFAULT '',
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `errormsg` varchar(255) NOT NULL DEFAULT '',
  `class` varchar(20) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `setup` mediumtext NOT NULL,
  `ispost` tinyint(1) NOT NULL DEFAULT '0',
  `unpostgroup` varchar(60) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_field
-- ----------------------------
INSERT INTO `lz_field` VALUES ('1', '1', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '2', '1', '1');
INSERT INTO `lz_field` VALUES ('2', '1', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '8', '0', '0');
INSERT INTO `lz_field` VALUES ('3', '1', 'createtime', '发布时间', '', '1', '0', '0', 'date', '', '', 'datetime', '', '1', '', '97', '1', '1');
INSERT INTO `lz_field` VALUES ('4', '1', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '99', '0', '1');
INSERT INTO `lz_field` VALUES ('5', '1', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '0', '', '98', '1', '1');
INSERT INTO `lz_field` VALUES ('6', '1', 'content', '内容', '', '1', '0', '0', 'defaul', '', 'content', 'editor', 'array (\n  \'edittype\' => \'UEditor\',\n)', '0', '', '3', '1', '0');
INSERT INTO `lz_field` VALUES ('7', '2', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `lz_field` VALUES ('8', '2', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '2', '1', '1');
INSERT INTO `lz_field` VALUES ('9', '2', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '1', '1');
INSERT INTO `lz_field` VALUES ('10', '2', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '4', '1', '1');
INSERT INTO `lz_field` VALUES ('11', '2', 'content', '内容', '', '0', '0', '0', 'defaul', '', 'content', 'editor', 'array (\n  \'edittype\' => \'UEditor\',\n)', '1', '', '5', '1', '1');
INSERT INTO `lz_field` VALUES ('12', '2', 'createtime', '发布时间', '', '1', '0', '0', 'date', '', '', 'datetime', '', '1', '', '6', '1', '1');
INSERT INTO `lz_field` VALUES ('13', '2', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '', '10', '0', '0');
INSERT INTO `lz_field` VALUES ('14', '2', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '11', '0', '0');
INSERT INTO `lz_field` VALUES ('15', '2', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '12', '1', '0');
INSERT INTO `lz_field` VALUES ('16', '2', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '', '13', '0', '1');
INSERT INTO `lz_field` VALUES ('17', '2', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '14', '1', '1');
INSERT INTO `lz_field` VALUES ('18', '2', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '15', '0', '1');
INSERT INTO `lz_field` VALUES ('19', '2', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '7', '1', '1');
INSERT INTO `lz_field` VALUES ('20', '3', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `lz_field` VALUES ('21', '3', 'title', '标题', '', '1', '1', '80', 'defaul', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'0\',\n  \'style\' => \'0\',\n)', '1', '', '2', '1', '1');
INSERT INTO `lz_field` VALUES ('22', '3', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '0', '1');
INSERT INTO `lz_field` VALUES ('23', '3', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '4', '1', '1');
INSERT INTO `lz_field` VALUES ('24', '3', 'content', '内容', '', '0', '0', '0', 'defaul', '', 'content', 'editor', 'array (\n  \'edittype\' => \'layedit\',\n)', '1', '', '7', '0', '1');
INSERT INTO `lz_field` VALUES ('25', '3', 'createtime', '发布时间', '', '1', '0', '0', 'date', '', '', 'datetime', '', '1', '', '8', '1', '1');
INSERT INTO `lz_field` VALUES ('26', '3', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '', '10', '0', '0');
INSERT INTO `lz_field` VALUES ('27', '3', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '11', '0', '0');
INSERT INTO `lz_field` VALUES ('28', '3', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '12', '0', '0');
INSERT INTO `lz_field` VALUES ('29', '3', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '', '13', '0', '1');
INSERT INTO `lz_field` VALUES ('30', '3', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '14', '0', '1');
INSERT INTO `lz_field` VALUES ('31', '3', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '15', '0', '1');
INSERT INTO `lz_field` VALUES ('32', '3', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '9', '1', '1');
INSERT INTO `lz_field` VALUES ('33', '3', 'pic', '图片', '', '1', '0', '0', 'defaul', '', 'pic', 'image', '', '0', '', '5', '0', '0');
INSERT INTO `lz_field` VALUES ('34', '3', 'group', '类型', '', '1', '0', '0', 'defaul', '', 'group', 'select', 'array (\n  \'options\' => \'模型管理|1\n分类管理|2\n内容管理|3\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'\',\n  \'default\' => \'\',\n)', '0', '', '6', '0', '0');
INSERT INTO `lz_field` VALUES ('35', '4', 'catid', '栏目', '', '1', '1', '6', '', '必须选择一个栏目', '', 'catid', '', '1', '', '1', '1', '1');
INSERT INTO `lz_field` VALUES ('36', '4', 'title', '标题', '', '1', '1', '80', '', '标题必须为1-80个字符', '', 'title', 'array (\n  \'thumb\' => \'1\',\n  \'style\' => \'1\',\n  \'size\' => \'55\',\n)', '1', '', '2', '1', '1');
INSERT INTO `lz_field` VALUES ('37', '4', 'keywords', '关键词', '', '0', '0', '80', '', '', '', 'text', 'array (\n  \'size\' => \'55\',\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '1', '', '3', '1', '1');
INSERT INTO `lz_field` VALUES ('38', '4', 'description', 'SEO简介', '', '0', '0', '0', '', '', '', 'textarea', 'array (\n  \'fieldtype\' => \'mediumtext\',\n  \'rows\' => \'4\',\n  \'cols\' => \'55\',\n  \'default\' => \'\',\n)', '1', '', '4', '1', '1');
INSERT INTO `lz_field` VALUES ('39', '4', 'content', '内容', '', '0', '0', '0', 'defaul', '', 'content', 'editor', 'array (\n  \'edittype\' => \'layedit\',\n)', '1', '', '10', '1', '1');
INSERT INTO `lz_field` VALUES ('40', '4', 'createtime', '发布时间', '', '1', '0', '0', 'date', '', '', 'datetime', '', '1', '', '16', '1', '1');
INSERT INTO `lz_field` VALUES ('41', '4', 'status', '状态', '', '0', '0', '0', '', '', '', 'radio', 'array (\n  \'options\' => \'发布|1\r\n定时发布|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'75\',\n  \'default\' => \'1\',\n)', '1', '', '10', '1', '1');
INSERT INTO `lz_field` VALUES ('42', '4', 'recommend', '允许评论', '', '0', '0', '1', '', '', '', 'radio', 'array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'fieldtype\' => \'tinyint\',\n  \'numbertype\' => \'1\',\n  \'labelwidth\' => \'\',\n  \'default\' => \'\',\n)', '1', '', '11', '0', '0');
INSERT INTO `lz_field` VALUES ('43', '4', 'readpoint', '阅读收费', '', '0', '0', '5', '', '', '', 'number', 'array (\n  \'size\' => \'5\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '12', '0', '0');
INSERT INTO `lz_field` VALUES ('44', '4', 'hits', '点击次数', '', '0', '0', '8', '', '', '', 'number', 'array (\n  \'size\' => \'10\',\n  \'numbertype\' => \'1\',\n  \'decimaldigits\' => \'0\',\n  \'default\' => \'0\',\n)', '1', '', '13', '0', '0');
INSERT INTO `lz_field` VALUES ('45', '4', 'readgroup', '访问权限', '', '0', '0', '0', '', '', '', 'groupid', 'array (\n  \'inputtype\' => \'checkbox\',\n  \'fieldtype\' => \'tinyint\',\n  \'labelwidth\' => \'85\',\n  \'default\' => \'\',\n)', '1', '', '14', '0', '1');
INSERT INTO `lz_field` VALUES ('46', '4', 'posid', '推荐位', '', '0', '0', '0', '', '', '', 'posid', '', '1', '', '15', '1', '1');
INSERT INTO `lz_field` VALUES ('47', '4', 'template', '模板', '', '0', '0', '0', '', '', '', 'template', '', '1', '', '16', '0', '1');
INSERT INTO `lz_field` VALUES ('89', '4', 'areas', '院校归属地', '', '1', '0', '0', 'defaul', '', 'areas', 'select', 'array (\n  \'options\' => \'华东|华东\n华南|华南\n华中|华中\n华西|华西\n华北|华北\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'\',\n  \'default\' => \'\',\n)', '0', '', '7', '1', '0');
INSERT INTO `lz_field` VALUES ('90', '4', 'types', '院校类型', '', '1', '0', '0', 'defaul', '', 'types', 'select', 'array (\n  \'options\' => \'文科|文科\n理科|理科\n艺术|艺术\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'3\',\n  \'default\' => \'0\',\n)', '0', '', '6', '1', '0');
INSERT INTO `lz_field` VALUES ('50', '4', 'pics', '图组', '', '0', '0', '0', 'defaul', '', 'pics', 'images', '', '0', '', '7', '0', '0');
INSERT INTO `lz_field` VALUES ('93', '4', 'addr', '地址', '', '1', '0', '0', 'defaul', '', 'addr', 'text', 'array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '8', '1', '0');
INSERT INTO `lz_field` VALUES ('91', '4', 'learn', '学历形式', '', '1', '0', '0', 'defaul', '', 'learn', 'select', 'array (\n  \'options\' => \'自学考试|自学\n成人高考|成人\n网络教育|网教\n电大国开|电大\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'4\',\n  \'default\' => \'0\',\n)', '0', '', '9', '1', '0');
INSERT INTO `lz_field` VALUES ('92', '4', 'gear', '学历层次', '', '1', '0', '0', 'defaul', '', 'gear', 'select', 'array (\n  \'options\' => \'大专|大专\n本科|本科\',\n  \'multiple\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n  \'numbertype\' => \'1\',\n  \'size\' => \'2\',\n  \'default\' => \'0\',\n)', '0', '', '9', '1', '0');
INSERT INTO `lz_field` VALUES ('94', '4', 'college_img', '首页图', '', '1', '0', '0', 'defaul', '', 'college_img', 'image', 'array (\n  \'upload_allowext\' => \'jpg|jpeg|gif|png\',\n)', '0', '', '5', '1', '0');
INSERT INTO `lz_field` VALUES ('75', '2', 'copyfrom', '来源', '', '0', '0', '0', 'defaul', '', 'copyfrom', 'text', 'array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '8', '1', '0');
INSERT INTO `lz_field` VALUES ('76', '2', 'fromlink', '来源网址', '', '0', '0', '0', 'defaul', '', 'fromlink', 'text', 'array (\n  \'default\' => \'\',\n  \'ispassword\' => \'0\',\n  \'fieldtype\' => \'varchar\',\n)', '0', '', '9', '1', '0');
INSERT INTO `lz_field` VALUES ('87', '2', 'address', '地址', '', '1', '0', '0', 'defaul', '', 'address', 'linkage', '', '0', '', '16', '0', '0');

-- ----------------------------
-- Table structure for `lz_link`
-- ----------------------------
DROP TABLE IF EXISTS `lz_link`;
CREATE TABLE `lz_link` (
  `link_id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '链接名称',
  `url` varchar(200) NOT NULL COMMENT '链接URL',
  `type_id` tinyint(4) DEFAULT NULL COMMENT '所属栏目ID',
  `qq` varchar(20) NOT NULL COMMENT '联系QQ',
  `sort` int(5) NOT NULL DEFAULT '50' COMMENT '排序',
  `addtime` int(11) NOT NULL COMMENT '添加时间',
  `open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0禁用1启用',
  PRIMARY KEY (`link_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_link
-- ----------------------------
INSERT INTO `lz_link` VALUES ('10', '招生院校', '/', '0', '', '1', '1495183645', '1');
INSERT INTO `lz_link` VALUES ('8', '在线学习', '/', '0', '270979964', '2', '1484791374', '1');
INSERT INTO `lz_link` VALUES ('18', '学信网', 'http://www.chsi.com.cn/', null, '', '50', '1522068203', '1');
INSERT INTO `lz_link` VALUES ('19', '广东省教育考试院', 'http://www.eeagd.edu.cn', null, '', '50', '1522068239', '1');
INSERT INTO `lz_link` VALUES ('20', '深圳招考网', 'http://www.51a.gov.cn', null, '', '50', '1522068255', '1');

-- ----------------------------
-- Table structure for `lz_message`
-- ----------------------------
DROP TABLE IF EXISTS `lz_message`;
CREATE TABLE `lz_message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT '' COMMENT '留言标题',
  `tel` varchar(15) NOT NULL DEFAULT '' COMMENT '留言电话',
  `addtime` varchar(15) NOT NULL COMMENT '留言时间',
  `open` tinyint(2) NOT NULL DEFAULT '0' COMMENT '1=审核 0=不审核',
  `ip` varchar(50) DEFAULT '' COMMENT '留言者IP',
  `content` longtext NOT NULL COMMENT '留言内容',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(50) NOT NULL COMMENT '留言邮箱',
  PRIMARY KEY (`message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_message
-- ----------------------------

-- ----------------------------
-- Table structure for `lz_messages`
-- ----------------------------
DROP TABLE IF EXISTS `lz_messages`;
CREATE TABLE `lz_messages` (
  `message_id` int(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT '个人消息',
  `contant` text,
  `addtime` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  UNIQUE KEY `message_id` (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_messages
-- ----------------------------
INSERT INTO `lz_messages` VALUES ('8', null, null, null, '2603');
INSERT INTO `lz_messages` VALUES ('9', null, null, null, '2603');
INSERT INTO `lz_messages` VALUES ('10', null, null, null, '2603');
INSERT INTO `lz_messages` VALUES ('11', null, null, null, '2603');
INSERT INTO `lz_messages` VALUES ('12', null, null, null, '2603');
INSERT INTO `lz_messages` VALUES ('13', null, null, null, '2603');
INSERT INTO `lz_messages` VALUES ('14', null, null, null, '2603');
INSERT INTO `lz_messages` VALUES ('15', null, null, null, '2603');
INSERT INTO `lz_messages` VALUES ('16', null, '123', null, '2603');
INSERT INTO `lz_messages` VALUES ('17', null, '测试消息1', '1525008730', '2603');
INSERT INTO `lz_messages` VALUES ('18', null, '测试消息2', '1525008746', '2604');
INSERT INTO `lz_messages` VALUES ('19', '个人消息', '123', '1525008959', '2603');
INSERT INTO `lz_messages` VALUES ('20', '123456', '234566', '1525009002', null);
INSERT INTO `lz_messages` VALUES ('21', '1212', '1212', '1525010690', null);
INSERT INTO `lz_messages` VALUES ('22', '个人消息', '88888', '1525010737', '2606');
INSERT INTO `lz_messages` VALUES ('23', '个人消息', '0000', '1525010763', '2603');
INSERT INTO `lz_messages` VALUES ('24', '个人消息', '999999999999', '1525011059', '2603');
INSERT INTO `lz_messages` VALUES ('25', '个人消息', '11111111111', '1525011360', '2603');
INSERT INTO `lz_messages` VALUES ('26', '个人消息', '22222222222', '1525011388', '2604');
INSERT INTO `lz_messages` VALUES ('27', '个人消息', '333333333333', '1525011392', '2604');
INSERT INTO `lz_messages` VALUES ('28', '个人消息', '11111111', '1525011449', '2603');
INSERT INTO `lz_messages` VALUES ('29', '个人消息', '88888888888888888', '1525011958', '2603');
INSERT INTO `lz_messages` VALUES ('30', '个人消息', '0000000000000000', '1525011973', '2604');
INSERT INTO `lz_messages` VALUES ('31', '测试文件', '你好！\n这是个测试文件\n', '1525051222', null);
INSERT INTO `lz_messages` VALUES ('32', '个人消息', '报名信息已审核!', '1525078660', '2603');
INSERT INTO `lz_messages` VALUES ('33', '这是一个测试消息', '这是一个测试消息', '1525497612', null);
INSERT INTO `lz_messages` VALUES ('34', '个人消息', '还是一个测试消息', '1525497649', '2603');

-- ----------------------------
-- Table structure for `lz_messages_record`
-- ----------------------------
DROP TABLE IF EXISTS `lz_messages_record`;
CREATE TABLE `lz_messages_record` (
  `user_id` int(10) NOT NULL,
  `record` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_messages_record
-- ----------------------------
INSERT INTO `lz_messages_record` VALUES ('2604', 'a:6:{i:0;i:30;i:1;i:27;i:2;i:26;i:3;i:21;i:4;i:20;i:5;i:18;}');
INSERT INTO `lz_messages_record` VALUES ('2603', 'a:22:{i:0;i:34;i:1;i:33;i:2;i:32;i:3;i:31;i:4;i:29;i:5;i:28;i:6;i:25;i:7;i:24;i:8;i:23;i:9;i:21;i:10;i:20;i:11;i:19;i:12;i:17;i:13;i:8;i:14;i:9;i:15;i:10;i:16;i:11;i:17;i:12;i:18;i:13;i:19;i:14;i:20;i:15;i:21;i:16;}');
INSERT INTO `lz_messages_record` VALUES ('2606', 'a:5:{i:0;i:33;i:1;i:31;i:2;i:22;i:3;i:21;i:4;i:20;}');
INSERT INTO `lz_messages_record` VALUES ('2609', 'a:3:{i:0;i:31;i:1;i:21;i:2;i:20;}');
INSERT INTO `lz_messages_record` VALUES ('2611', 'a:3:{i:0;i:31;i:1;i:21;i:2;i:20;}');
INSERT INTO `lz_messages_record` VALUES ('2608', 'a:4:{i:0;i:33;i:1;i:31;i:2;i:21;i:3;i:20;}');

-- ----------------------------
-- Table structure for `lz_module`
-- ----------------------------
DROP TABLE IF EXISTS `lz_module`;
CREATE TABLE `lz_module` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(200) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listfields` varchar(255) NOT NULL DEFAULT '',
  `setup` text,
  `listorder` smallint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_module
-- ----------------------------
INSERT INTO `lz_module` VALUES ('1', '单页模型', 'page', '单页面', '1', '0', '*', '', '0', '1');
INSERT INTO `lz_module` VALUES ('2', '文章模型', 'article', '新闻文章', '1', '0', '*', '', '0', '1');
INSERT INTO `lz_module` VALUES ('3', '学员名单', 'student', '模型', '1', '0', '*', '', '0', '1');
INSERT INTO `lz_module` VALUES ('4', '院校模型', 'colleges', '院校模型', '1', '0', '*', '', '0', '1');

-- ----------------------------
-- Table structure for `lz_order`
-- ----------------------------
DROP TABLE IF EXISTS `lz_order`;
CREATE TABLE `lz_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sn` char(22) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `module` varchar(20) NOT NULL DEFAULT '',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `price` decimal(10,0) unsigned NOT NULL DEFAULT '0',
  `productlist` mediumtext NOT NULL,
  `note` mediumtext NOT NULL,
  `realname` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(18) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(80) NOT NULL DEFAULT '',
  `zipcode` varchar(10) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sn` (`sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_order
-- ----------------------------

-- ----------------------------
-- Table structure for `lz_page`
-- ----------------------------
DROP TABLE IF EXISTS `lz_page`;
CREATE TABLE `lz_page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '',
  `title_style` varchar(225) NOT NULL DEFAULT '',
  `thumb` varchar(225) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_page
-- ----------------------------
INSERT INTO `lz_page` VALUES ('19', '立人承诺', 'color:;font-weight:normal;', '', '0', '1', '0', '', '0', '1521794078', '0', '0', '<p>立人承诺</p>');
INSERT INTO `lz_page` VALUES ('20', '深圳市立人管理咨询有限公司', 'color:;font-weight:normal;', '', '0', '1', '0', '', '0', '1521434055', '0', '0', '<p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp; &nbsp;&nbsp;<span style=\"font-family:宋体\">深圳市立人教育管理有限公司创建于</span>2011年10月，原名为“深圳市立人管理咨询有限公司”，原业务一直从事管理咨询对接企业的课程服务项目，随着企业的发展对员工教育的层次也随之增加，员工对自身的教育程度需求也越来越大。在十七大和十八大报告中均指出“立德树人”，它的定位在“全面发展”之上的理念，立人教育希望让有梦想、有追求的年轻人通过不断的自我学习和提升来改善生活状态、改善素养，甚至改善国民教育层次。因此立人教育由原来的管理咨询业务转型为学历教育提升业务，打造“立人教育”品牌，继而更名“深圳市立人教育管理有限公司”。主要业务有成人高考、自学考试、网络教育、开放教育等二十所高校品牌的大专、本科助学辅导。经过多年努力毕业生多达6000余人，同时以“树立德业”为经营宗旨成为深圳地区具有规模和影响力的成人教育品牌。</span></p><p><span style=\"font-family: 宋体;font-size: 14px\">“立人教育”是深圳市立人教育管理有限公司教育品牌。</span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">公司文化</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">企业愿景：以</span>“树立德业”品质服务为宗旨赢得学员的认可，让更多的学员体验立人教育高品质的服务，收获知识和人脉。</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">企业精神以身树德，以德立人</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">企业使命：让</span></span><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">进步</span></span><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">成为</span></span><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">常态</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">企业定位：良品教育服务首选立人教育</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">经营宗旨：以德业为品、创优质服务，树学习习惯，立人以进步，开拓美好生活。</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">品牌文化：立德树人是教育根本</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">品牌诉求：立人助学与进步同行</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">服务特点</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">打造良好的品质助学服务；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">打造</span></span><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">对提升目标</span></span><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">负责</span></span><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">的</span></span><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">态度；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">只做自己最专业的产品；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;</span></p><p style=\"margin-left:24px\"><span style=\"font-family: 宋体;font-size: 14px\">⑴&nbsp;</span><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">毕业保障</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">在立人教育，无论选择我们哪所学校和专业，我们都会与学员签定《助学服务合同》，让学员有据可依，有理可寻。</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\">⑵ 服务保障</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">在立人教育，设线上专区，为学员开设专属服务空间，学员登录后可查到立人教育定期提供属于客户专项课程以及项目的服务内容。</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\">⑶ 立人承诺</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">立人教育首创，旨在打造一个敢承诺，敢守信的影响力服务品牌。</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">立人教育是一家不断为学员提供保障学习质量的助学单位，以致更多的客户放心的选择，达到提升目标。</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">立人教育从维护学员的根本利益出发，用实际行动获得学员的信任，用优质服务来回报学员的选择。</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">立人教育承诺</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">退费承诺：以服务合同为依据，未按时达到学习目标，学员申请即可退费；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">助学服务：按学员个性要求，优化学员学习效率，</span></span><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">创造无优学习环境</span></span><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">拼课送学：为满足学员多种学习提升需求下，立人打造学一送课服务，根据学员需求定期为学员量身定制课程，免费提供同类需求的学员拼课服务；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">立人教育服务项目</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\">“0”基础提升：广州工商学院</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">特点：专业多、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">毕业指数：</span>★★★★★★★</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">适合人群：工作较忙、花费精力少和较少时间投入的学员</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名地点：线下</span>-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;</span></p><p><span style=\"font-family: 宋体;font-size: 14px\">“0”基础提升：惠州学院</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">特点：专业多、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">毕业指数：</span>★★★★★★★</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">适合人群：工作较忙、花费精力少和较少时间投入的学员</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名地点：线下</span>-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">学习</span>“快”时间“短”：海南大学</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">特点：自考毕业证、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">毕业指数：</span>★★★★★★★</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">适合人群：想要尽快毕业的学员</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名地点：线下</span>-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">灵活开放式提升：开放大学</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">特点：学习开放性、灵活性、毕业时间不受限、专本连读；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">毕业指数：</span>★★★★★★★</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">适合人群：性格为灵活不受约束的学员</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名地点：线下</span>-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;</span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">艺术传媒</span>“0”距学习：中国传媒大学</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">特点：专业多、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">毕业指数：</span>★★★★★★★</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">适合人群：喜欢在线上学习、花费精力少和较少时间投入的学员</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名地点：线下</span>-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">理工</span>“0”距首选：西北工业大学</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">特点：专业多、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">毕业指数：</span>★★★★★★★</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">适合人群：喜欢在线上学习、花费精力少和较少时间投入的学员</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名地点：线下</span>-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">教育类专享：陕西师范大学</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">特点：教育专业、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">毕业指数：</span>★★★★★★★</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">适合人群：喜欢在线上学习、花费精力少和较少时间投入的学员</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名地点：线下</span>-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">科技人才</span>“0”距飞越：电子科技大学</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">特点：电子科技专业、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">毕业指数：</span>★★★★★★★</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">适合人群：喜欢在线上学习、花费精力少和较少时间投入的学员</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名地点：线下</span>-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\"font-family: 宋体;font-size: 14px\">&nbsp;</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">高升本定制优学：广东开放大学</span> &nbsp;<span style=\"font-family:宋体\">海南大学</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">特点：专业多、专、本科双学历双认证制度，提升个人市场竞争力；</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">毕业指数：</span>★★★★★★★</span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">适合人群：没有大专毕业证，并想一次性获得本科层次的学员</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\"font-family: 宋体;font-size: 14px\"><span style=\"font-family:宋体\">报名地点：线下</span>-立人教育招生办公室、线上-立人助学公众号&nbsp;</span></p><p><br/></p>');
INSERT INTO `lz_page` VALUES ('24', '大事记', '', '', '0', '0', '0', '', '0', '0', '0', '0', null);
INSERT INTO `lz_page` VALUES ('25', '法律声明', 'color:;font-weight:normal;', '', '0', '1', '0', '', '0', '1521792206', '0', '0', '<p><span style=\"font-size: 14px;\">&nbsp; &nbsp; 本网站由立人教育管理有限公司（以下简称“立人教育”）创建并运行维护。任何人进入本网站、阅读任何内容、进行用户注册、从本网站下载任何材料或使用本网站提供的资料，即表示同意遵守下列条款。这些条款构成立人教育与您之间的协议。若不同意遵守这些条款，切勿使用本网站。立人教育保留未经通知随时更新下列条款的权利，这些更新将同样也约束您。任何时间，任何情况下，立人教育均有权拒绝任何用户进入、使用本网站。&nbsp;</span><br/></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 立人教育保留随时更正、修改、更新本声明的权利。</span></p><p><span style=\"font-size: 14px;\"><br/></span></p><p><strong>版权声明&nbsp;</strong><br/></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 立人教育独立拥有本网站相关网页内所有资料的版权，或与本网站相关网页内的资料提供者共同拥有该网页内资料的版权。未经立人教育的明确书面许可，对于本网站上的任何内容，任何人不得对其进行复制或在非立人教育所属的服务器上做镜像。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 本网站所载述的域名、商标、文字、视像及声音内容、图形及图像均受有关商标和著作权的法律保护。未经立人教育事先以书面明确的允许，任何企业或个人不得以任何形式复制或传递。任何未经授权使用本网站的行为都将违反《中华人民共和国著作权法》和其他相关法律法规以及有关国际公约的规定。</span>&nbsp;</p><p><br/></p><p><strong>免责条款&nbsp;</strong><br/></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 对本网站的内容，我们不提供任何形式的明示的或默示的关于内容的正确性、及时性、有效性、稳定性、可用性、不侵犯他人权利等方面的保证；不保证服务器的稳定性，不保证您任何时候均可浏览、阅读、复制、使用本网站；不保证网站内容所包含的文字、图形、材料、链接、说明、陈述或其它事项的准确性或完整性，也不保证本网站的内容不存在打印、复制及其他输入方面的错误。立人教育可随时更改本网站内容，无须另作通知。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp;用户使用本网站服务所存在的风险将和产生的一切后果由其自己承担。在任何情况下，对于因使用本网站内容或无法进入本网站而导致的任何直接的、间接的、附带的、给第三人造成的损失(包括但不限于利润损失、信息数据丢失、财产毁坏等损失)，本网站都无须承担任何法律责任。&nbsp;</span><span style=\"font-size: 14px;\">&nbsp;&nbsp;</span></p><p><span style=\"font-size: 14px;\">立人教育对本网站和其内容的不能使用和使用错误不承担任何责任&nbsp;</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 任何情况下，立人教育及相关人对于进入或使用本网站引起的任何依赖本网站内容而做出的决定或采取的行动不承担任何责任，对进入或使用本网站而产生的任何直接的、间接的、惩罚性的损失，或其他任何形式的损失包括但不限于业务中断、数据丢失或利润损失不承担任何责任。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 本网站转载的相关文章、资料中表述或暗示的观点不代表立人教育的观点。对于本网站所转载的信息如有著作权争议，请与我们联系并提供相应的证明资料。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 网站上所展示的第三方网站的链接并不构成我们对该第三方网站的保证，我们对于这些网站及其内容的有效性不负有责任。访问这些网站的超链接的风险由用户承担。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 立人教育以及相关人对于第三人采用非法手段进入本网站取得有关密码、资料和内容而引起的任何直接及间接损害或损失不承担任何责任。&nbsp;</span></p><p><span style=\"font-size: 14px;\"><br/></span></p><p><strong>保护用户隐私权&nbsp;</strong></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 我们尊重广大用户的隐私，未经用户的同意，我们不搜集用户的资料。对于因服务的需要而掌握的用户名、电子邮件、信息和地址等我们承诺非经用户允许，不向任何第三方出售或提供。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 立人教育不会公布或传播用户在本网站注册的任何资料，但下列情况除外：&nbsp;</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 1. 事先获得用户的明确授权；</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 2. 依据法院、仲裁机构的裁判或裁决，以及其他司法程序的要求；</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 3. 按照相关政府主管部门的要求；</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 4. 用户违反使用条款的规定或有其他损害立人教育利益的行为；</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 5. 其他有关法律法规的要求。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 用户如希望使用本网站需注册后才能够提供的服务，应同意以下事项：依本网站服务注册表之提示提供您本人真实、正确、最新及完整的资料，并随时更新登记资料，确保其为真实、正确、最新及完整的资料。若您提供任何错误、不实、过时或不完整或具误导性的资料，或者本网站有理由怀疑前述资料为错误、不实、过时或不完整或具误导性的，本网站有权暂停或终止您的帐号，并拒绝您于现在和未来使用本网站所提供服务之全部或任何部分。&nbsp;</span></p><p><span style=\"font-size: 14px;\"><br/></span></p><p><strong>商标与域名声明&nbsp;</strong></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 立人教育网站（www.lirenjy.com）使用的所有立人教育图案及文字商标均为立人教育在中国或其他国家的注册商标或商标，未经立人教育书面授权，任何单位或个人不得以任何方式使用上述商标。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; <span style=\"font-size: 14px;\">www.lirenjy.com</span>的域名为立人教育所有。未经立人教育书面授权，任何单位或个人不得使用。&nbsp;</span></p><p><span style=\"font-size: 14px;\"><br/></span></p><p><strong>指向本网站的链接&nbsp;</strong></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 如希望作指向到本网站的链接，请联络我们；在获得立人教育的书面许可后，方可链接本网站。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 在建立链接后，如立人教育根据客观情况认为不再合适链接时，有权取消对链接的许可。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 在链接到本网站时，请务必使用文本链接（如无立人教育的书面许可，禁止使用立人教育图案及文字的链接方式）；点击本网站链接要设定成另开窗口显示的形式，不能显示在链接方网站的框架内部。</span>&nbsp;</p><p><br/></p><p><strong>其他网站的链接&nbsp;</strong></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 本网站中所链接的立人教育以外的网站，不在立人教育的管理之下。对因通过立人教育网站访问其他链接网站而发生的任何损害，立人教育不承担任何责任。访问链接网站时，请遵循其链接网站的使用条款及相关法律法规的规定。</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 立人教育仅为方便访问而提供他方网站的链接，并非是对链接网站的使用及其登载信心/服务等进行推举，并不意味着立人教育与所链接网站的公司、个人之间有着联合、协作等特殊关系，也并不表示立人教育认可或承担其他网站内容或使用上的责任。&nbsp;</span></p><p><span style=\"font-size: 14px;\"><br/></span></p><p><strong>本站下载资源的使用</strong>&nbsp;</p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp;如果从本站进行任何下载行为，使用方应遵守该资源携带的相关许可协议中所有的许可条款。在阅读并接受许可协议的各项条款之前，任何人不得下载或安装本站资源。</span>&nbsp;</p><p><br/></p><p><strong>病毒免责条款</strong>&nbsp;</p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp;任何人在进入、使用、浏览立人教育网站时，感染病毒，立人教育不承担任何责任。通过立人教育链接到第三方网站而感染病毒的，立人教育不承担任何责任。</span>&nbsp;</p><p><br/></p><p><strong>终止条款&nbsp;</strong></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp;无论是否在此协议所规定的条款下或其他情况下，只要你将所有的从本网站获得的软件、文件和一切相关材料销毁，即构成本协议的终止。</span>&nbsp;</p><p><br/></p><p><strong>法律适用和管辖&nbsp;</strong></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 任何有关本网站和网站声明的争议、纠纷，均适用中华人民共和国法律。任何有关本网站和网站声明的争议，应由立人教育所在地的人民法院管辖。如中华人民共和国法律的修改使上述任何条款成为非法，各方将同意由立人教育对上述条款做出修改。&nbsp;</span></p><p><span style=\"font-size: 14px;\">&nbsp; &nbsp; &nbsp; 本声明的解释权及对本网站使用的解释权归结于立人教育所有。</span>&nbsp;</p>');
INSERT INTO `lz_page` VALUES ('26', '深圳市立人管理咨询有限公司', 'color:;font-weight:normal;', '', '0', '1', '0', '', '0', '1521910261', '0', '0', '<p style=\"text-align: left;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp; &nbsp; 深圳市立人教育管理有限公司创建于2011年10月，原名为“深圳市立人管理咨询有限公司”，原业务一直从事管理咨询对接企业的课程服务项目，随着企业的发展对员工教育的层次也随之增加，员工对自身的教育程度需求也越来越大。在十七大和十八大报告中均指出“立德树人”，它的定位在“全面发展”之上的理念，立人教育希望让有梦想、有追求的年轻人通过不断的自我学习和提升来改善生活状态、改善素养，甚至改善国民教育层次。因此立人教育由原来的管理咨询业务转型为学历教育提升业务，打造“立人教育”品牌，继而更名“深圳市立人教育管理有</span><span style=\"font-family: 等线; font-size: 14px;\">限公司”。主要业务有成人高考、自学考试、网络教育、开放教育等二十所高校品牌的大专、本科助学辅导。经过多年努力毕业生多达</span><span style=\"font-family: 等线; font-size: 14px;\">6000余人，同时以“树立德业”为经营宗旨成为深圳地区具有规模和影响力的成人教育品牌。</span><br/></p><p style=\"text-indent: 28px; text-align: left;\"><span style=\";font-family:等线;font-size:14px\">“立人教育”是深圳市立人教育管理有限公司教育品牌。</span></p><p><span style=\";font-family:等线;font-size:14px\">&nbsp;</span></p><p><span style=\";font-family:等线;font-size:16px\">立人教育服务项目</span></p><p><span style=\";font-family:等线;font-size:14px\">&nbsp;</span></p><p><span style=\";font-family:等线;font-size:14px\">“</span><span style=\";font-family:等线;font-size:14px\">0”基础提升：广州工商学院</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">特点：专业多、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">毕业指数：</span></span><span style=\";font-family:等线;color:rgb(255,0,0);font-size:14px\">★★★★★★★</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">适合人群：工作较忙、花费精力少和较少时间投入的学员</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名地点：线下</span></span><span style=\";font-family:等线;font-size:14px\">-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\";font-family:等线;font-size:14px\">&nbsp;</span></p><p><span style=\";font-family:等线;font-size:14px\">“</span><span style=\";font-family:等线;font-size:14px\">0”基础提升：惠州学院</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">特点：专业多、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">毕业指数：</span></span><span style=\";font-family:等线;color:rgb(255,0,0);font-size:14px\">★★★★★★★</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">适合人群：工作较忙、花费精力少和较少时间投入的学员</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名地点：线下</span></span><span style=\";font-family:等线;font-size:14px\">-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\";font-family:等线;font-size:14px\">&nbsp;</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">学习</span>“快”时间“短”：海南大学</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">特点：自考毕业证、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">毕业指数：</span></span><span style=\";font-family:等线;color:rgb(255,0,0);font-size:14px\">★★★★★★★</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">适合人群：想要尽快毕业的学员</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名地点：线下</span></span><span style=\";font-family:等线;font-size:14px\">-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\";font-family:等线;font-size:14px\">&nbsp;</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">灵活开放式提升：开放大学</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">特点：学习开放性、灵活性、毕业时间不受限、专本连读；</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">毕业指数：</span></span><span style=\";font-family:等线;color:rgb(255,0,0);font-size:14px\">★★★★★★★</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">适合人群：性格为灵活不受约束的学员</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名地点：线下</span></span><span style=\";font-family:等线;font-size:14px\">-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\";font-family:等线;font-size:14px\">&nbsp;</span></p><p><span style=\";font-family:等线;font-size:14px\">&nbsp;</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">艺术传媒</span>“</span><span style=\";font-family:等线;font-size:14px\">0”距学习：中国传媒大学</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">特点：专业多、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">毕业指数：</span></span><span style=\";font-family:等线;color:rgb(255,0,0);font-size:14px\">★★★★★★★</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">适合人群：喜欢在线上学习、花费精力少和较少时间投入的学员</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名地点：线下</span></span><span style=\";font-family:等线;font-size:14px\">-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\";font-family:等线;font-size:14px\">&nbsp;</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">理工</span>“</span><span style=\";font-family:等线;font-size:14px\">0”距首选：西北工业大学</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">特点：专业多、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">毕业指数：</span></span><span style=\";font-family:等线;color:rgb(255,0,0);font-size:14px\">★★★★★★★</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">适合人群：喜欢在线上学习、花费精力少和较少时间投入的学员</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名地点：线下</span></span><span style=\";font-family:等线;font-size:14px\">-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\";font-family:等线;font-size:14px\">&nbsp;</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">教育类专享：陕西师范大学</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">特点：教育专业、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">毕业指数：</span></span><span style=\";font-family:等线;color:rgb(255,0,0);font-size:14px\">★★★★★★★</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">适合人群：喜欢在线上学习、花费精力少和较少时间投入的学员</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名地点：线下</span></span><span style=\";font-family:等线;font-size:14px\">-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\";font-family:等线;font-size:14px\">&nbsp;</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">科技人才</span>“</span><span style=\";font-family:等线;font-size:14px\">0”距飞越：电子科技大学</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">特点：电子科技专业、不限户籍、大专、本科均可报读；</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">毕业指数：</span></span><span style=\";font-family:等线;color:rgb(255,0,0);font-size:14px\">★★★★★★★</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">适合人群：喜欢在线上学习、花费精力少和较少时间投入的学员</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名地点：线下</span></span><span style=\";font-family:等线;font-size:14px\">-立人教育招生办公室、线上-立人助学公众号</span></p><p><span style=\";font-family:等线;font-size:14px\">&nbsp;</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">高升本定制优学：广东开放大学</span></span><span style=\";font-family:等线;font-size:14px\">&nbsp;&nbsp;<span style=\"font-family:等线\">海南大学</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">特点：专业多、专、本科双学历双认证制度，提升个人市场竞争力；</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">毕业指数：</span></span><span style=\";font-family:等线;color:rgb(255,0,0);font-size:14px\">★★★★★★★</span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">适合人群：没有大专毕业证，并想一次性获得本科层次的学员</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名时间：全年招生（名额有限）</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名条件：身份证、毕业证各复印件一张</span></span></p><p><span style=\";font-family:等线;font-size:14px\"><span style=\"font-family:等线\">报名地点：线下</span></span><span style=\";font-family:等线;font-size:14px\">-立人教育招生办公室、线上-立人助学公众号</span></p><p><br/></p>');
INSERT INTO `lz_page` VALUES ('28', ' ', 'color:;font-weight:normal;', '', '0', '1', '0', '', '0', '1522164195', '0', '0', '<p>公司名称：深圳市立人管理咨询有限公司</p><p>公司地址：深圳市坂田街道五和大道南108号凯旋商业大厦五楼 （五号线：五和地铁站B出口直行100米）</p><p>邮政编码：518129</p><p>公司邮箱：lr_zx20180306@163.com</p><p>公司电话：18128859004</p><p><br/></p>');
INSERT INTO `lz_page` VALUES ('29', '深圳市立人教育管理有限公司', 'color:;font-weight:normal;', '', '0', '0', '0', '', '0', '1521958864', '0', '0', '<p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp; &nbsp; 深圳市立人教育管理有限公司创建于2011年10月，原名为“深圳市立人管理咨询有限公司”，原业务一直从事管理咨询对接企业的课程服务项目，随着企业的发展对员工教育的层次也随之增加，员工对自身的教育程度需求也越来越大。在十七大和十八大报告中均指出“立德树人”，它的定位在“全面发展”之上的理念，立人教育希望让有梦想、有追求的年轻人通过不断的自我学习和提升来改善生活状态、改善素养，甚至改善国民教育层次。因此立人教育由原来的管理咨询业务转型为学历教育提升业务，打造“立人教育”品牌，继而更名“深圳市立人教育管理有</span><span style=\"font-family: 等线; font-size: 14px;\">限公司”。主要业务有成人高考、自学考试、网络教育、开放教育等二十所高校品牌的大专、本科助学辅导。经过多年努力毕业生多达</span><span style=\"font-family: 等线; font-size: 14px;\">6000余人，同时以“树立德业”为经营宗旨成为深圳地区具有规模和影响力的成人教育品牌。</span><br/></p><p style=\"white-space: normal; text-indent: 28px;\"><span style=\"font-family: 等线; font-size: 14px;\">“立人教育”是深圳市立人教育管理有限公司教育品牌。</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp;</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线;\">立人教育服务项目</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp;</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">“</span><span style=\"font-family: 等线; font-size: 14px;\">0”基础提升：广州工商学院</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">特点：专业多、不限户籍、大专、本科均可报读；</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">毕业指数：</span><span style=\"font-family: 等线; color: rgb(255, 0, 0); font-size: 14px;\">★★★★★★★</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">适合人群：工作较忙、花费精力少和较少时间投入的学员</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名时间：全年招生（名额有限）</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名条件：身份证、毕业证各复印件一张</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名地点：线下</span><span style=\"font-family: 等线; font-size: 14px;\">-立人教育招生办公室、线上-立人助学公众号</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp;</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">“</span><span style=\"font-family: 等线; font-size: 14px;\">0”基础提升：惠州学院</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">特点：专业多、不限户籍、大专、本科均可报读；</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">毕业指数：</span><span style=\"font-family: 等线; color: rgb(255, 0, 0); font-size: 14px;\">★★★★★★★</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">适合人群：工作较忙、花费精力少和较少时间投入的学员</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名时间：全年招生（名额有限）</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名条件：身份证、毕业证各复印件一张</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名地点：线下</span><span style=\"font-family: 等线; font-size: 14px;\">-立人教育招生办公室、线上-立人助学公众号</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp;</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">学习“快”时间“短”：海南大学</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">特点：自考毕业证、不限户籍、大专、本科均可报读；</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">毕业指数：</span><span style=\"font-family: 等线; color: rgb(255, 0, 0); font-size: 14px;\">★★★★★★★</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">适合人群：想要尽快毕业的学员</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名时间：全年招生（名额有限）</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名条件：身份证、毕业证各复印件一张</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名地点：线下</span><span style=\"font-family: 等线; font-size: 14px;\">-立人教育招生办公室、线上-立人助学公众号</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp;</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">灵活开放式提升：开放大学</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">特点：学习开放性、灵活性、毕业时间不受限、专本连读；</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">毕业指数：</span><span style=\"font-family: 等线; color: rgb(255, 0, 0); font-size: 14px;\">★★★★★★★</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">适合人群：性格为灵活不受约束的学员</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名时间：全年招生（名额有限）</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名条件：身份证、毕业证各复印件一张</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名地点：线下</span><span style=\"font-family: 等线; font-size: 14px;\">-立人教育招生办公室、线上-立人助学公众号</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp;</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp;</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">艺术传媒“</span><span style=\"font-family: 等线; font-size: 14px;\">0”距学习：中国传媒大学</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">特点：专业多、不限户籍、大专、本科均可报读；</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">毕业指数：</span><span style=\"font-family: 等线; color: rgb(255, 0, 0); font-size: 14px;\">★★★★★★★</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">适合人群：喜欢在线上学习、花费精力少和较少时间投入的学员</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名时间：全年招生（名额有限）</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名条件：身份证、毕业证各复印件一张</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名地点：线下</span><span style=\"font-family: 等线; font-size: 14px;\">-立人教育招生办公室、线上-立人助学公众号</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp;</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">理工“</span><span style=\"font-family: 等线; font-size: 14px;\">0”距首选：西北工业大学</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">特点：专业多、不限户籍、大专、本科均可报读；</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">毕业指数：</span><span style=\"font-family: 等线; color: rgb(255, 0, 0); font-size: 14px;\">★★★★★★★</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">适合人群：喜欢在线上学习、花费精力少和较少时间投入的学员</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名时间：全年招生（名额有限）</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名条件：身份证、毕业证各复印件一张</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名地点：线下</span><span style=\"font-family: 等线; font-size: 14px;\">-立人教育招生办公室、线上-立人助学公众号</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp;</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">教育类专享：陕西师范大学</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">特点：教育专业、不限户籍、大专、本科均可报读；</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">毕业指数：</span><span style=\"font-family: 等线; color: rgb(255, 0, 0); font-size: 14px;\">★★★★★★★</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">适合人群：喜欢在线上学习、花费精力少和较少时间投入的学员</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名时间：全年招生（名额有限）</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名条件：身份证、毕业证各复印件一张</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名地点：线下</span><span style=\"font-family: 等线; font-size: 14px;\">-立人教育招生办公室、线上-立人助学公众号</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp;</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">科技人才“</span><span style=\"font-family: 等线; font-size: 14px;\">0”距飞越：电子科技大学</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">特点：电子科技专业、不限户籍、大专、本科均可报读；</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">毕业指数：</span><span style=\"font-family: 等线; color: rgb(255, 0, 0); font-size: 14px;\">★★★★★★★</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">适合人群：喜欢在线上学习、花费精力少和较少时间投入的学员</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名时间：全年招生（名额有限）</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名条件：身份证、毕业证各复印件一张</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名地点：线下</span><span style=\"font-family: 等线; font-size: 14px;\">-立人教育招生办公室、线上-立人助学公众号</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">&nbsp;</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">高升本定制优学：广东开放大学</span><span style=\"font-family: 等线; font-size: 14px;\">&nbsp;&nbsp;海南大学</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">特点：专业多、专、本科双学历双认证制度，提升个人市场竞争力；</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">毕业指数：</span><span style=\"font-family: 等线; color: rgb(255, 0, 0); font-size: 14px;\">★★★★★★★</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">适合人群：没有大专毕业证，并想一次性获得本科层次的学员</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名时间：全年招生（名额有限）</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名条件：身份证、毕业证各复印件一张</span></p><p style=\"white-space: normal;\"><span style=\"font-family: 等线; font-size: 14px;\">报名地点：线下</span><span style=\"font-family: 等线; font-size: 14px;\">-立人教育招生办公室、线上-立人助学公众号</span></p>');
INSERT INTO `lz_page` VALUES ('27', '企业文化', 'color:;font-weight:normal;', '', '0', '1', '0', '', '0', '1521910464', '0', '0', '<p><span style=\"font-size: 16px;\"><strong>企业愿景</strong></span></p><p><span style=\"font-size: 14px;\">以&quot;树立德业&quot;品质服务为宗旨赢得学员的认可，让更多的学员体验立人教育高品质的服务，收获知识和人脉。</span></p><p><strong>企业精神</strong></p><p><span style=\"font-size: 14px;\">以身树德，以德立人。</span></p><p><strong>企业使命</strong></p><p><span style=\"font-size: 14px;\">让进步成为常态。</span></p><p><strong>企业定位</strong></p><p><span style=\"font-size: 14px;\">信守承诺，良品教育服务首选立人教育。</span></p><p><strong>经营宗旨</strong></p><p><span style=\"font-size: 14px;\">以德业为品，创优质服务，树学习习惯，立人以进步，开拓美好生活。</span></p><p><strong>品牌文化</strong></p><p><span style=\"font-size: 14px;\">立德树人是教育根本。</span></p><p><strong>品牌诉求</strong></p><p><span style=\"font-size: 14px;\">立人助学与进步同行。</span></p><p><br/></p>');
INSERT INTO `lz_page` VALUES ('30', '在线课堂', '', '', '0', '0', '0', '', '0', '0', '0', '0', null);
INSERT INTO `lz_page` VALUES ('34', '立人注册', 'color:;font-weight:normal;', '', '0', '0', '0', '', '0', '1522389064', '0', '0', '<p>客户注册或报名只能在立人助学公众微信号注册页面利用手机或身份证号进行注册即可享受立人教育的专业服务！</p><p><span style=\"font-size: 14px;\">1、关注“立人助学”微信公众号，按照注册提示输入个人信息，即个人注册成功；</span></p><p><span style=\"font-size: 14px;\">2、选择报读院校、专业、层次、学习形式、上传个人半身照、毕业证、身份证电子版等资料；</span></p><p><span style=\"font-size: 14px;\">3、缴交学费，立从确认后即业示为报名成功；</span></p><p><span style=\"font-size: 14px;\">4、学员报名成功后即成为会员，可登录PC端、移动端查询学习进度状态，了解学习进度。</span></p><p><br/></p>');
INSERT INTO `lz_page` VALUES ('35', '学员政策', 'color:;font-weight:normal;', '', '0', '0', '0', '', '0', '1522389164', '0', '0', '<p><span style=\"font-size: 14px;\">（1）成为立人教育的学员，学员可享受立人教育举行的企业内训、各种公开课、研讨会、户外拓展等；也可以免费参加大型讲座活动。</span></p><p><span style=\"font-size: 14px;\">（2）定期组织学员联谊，为学员之间搭建一个沟通、交流的平台；认识更多朋友。</span></p><p><span style=\"font-size: 14px;\">（3）学员生日及节日会收到祝福，到校既有礼物赠送；生日当天报读课程有额外优惠（亲属朋友可同时享用）。</span></p><p><span style=\"font-size: 14px;\">（4）学员享有本中心课程代理权（介绍学员报读学历可获得代理费）。</span></p><p><span style=\"font-size: 14px;\">（5）立人教育为学员提供全方位的就业服务，学员毕业后免费为学员推荐就业。</span></p><p><span style=\"font-size: 14px;\">（6）立人教育免费为学员提供子女升学资讯。</span></p><p><br/></p>');
INSERT INTO `lz_page` VALUES ('36', '提交资料说明', 'color:;font-weight:normal;', '', '0', '0', '0', '', '0', '1522389240', '0', '0', '<p>一、学员的报名提交资料</p><p><span style=\"font-size: 14px;\">1、身份证。要求本人二代身份证，电子版文件；</span></p><p><span style=\"font-size: 14px;\">2、毕业证。高升专均需要高中或中专、技校等毕业证书，电子版文件；</span></p><p><span style=\"font-size: 14px;\">3、照片。报名照片由主考院校按当年要求通知标准为准，一般二寸蓝底彩色照片，电子文件；</span></p><p><span style=\"font-size: 14px;\">4、非深圳（广东省）户籍，须提供社保卡、居住证、租房协议等证明本人在当地居住；</span></p><p>二、大学期间提交资料</p><p><span style=\"font-size: 14px;\">1、毕业证照片。学员在进入大学后，大一、大二期间均可拍摄毕业生照片，此拍摄为指定地点和机构来完成，并由指定机构人员上传给学校以及学信网；</span></p><p><span style=\"font-size: 14px;\">2、填写毕业生申请表。最后一个学期，学员须本人认真填写毕业生登记表。</span></p><p><br/></p>');
INSERT INTO `lz_page` VALUES ('38', '考试必过技巧', 'color:;font-weight:normal;', '', '0', '0', '0', '', '0', '1522389370', '0', '0', '<p style=\"margin-right: 0;text-indent: 28px;line-height: 20px\"><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">根据《中华人民共和国合同法》及国家教育部相关法律法规，结合深圳市立人</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">教育管理有</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">限公司业务</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">范围</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">服务的特点，乙方在甲方</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">获取</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">咨询</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">和</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">学历</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">提升</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">服务</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">过程中</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">，为共同保障甲、乙双方</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">的利益</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">以及服务质量</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">。</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">经甲、乙双方协商</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">必须</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">共同遵守条款如下：</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">一、甲方责任与义务</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">1、为乙方完成从</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">报考、</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">入学</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">、</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">毕业</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">等</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">全</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">程管理咨询</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">工作；</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">2、保证乙方</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">在所报院校</span></span><span style=\"text-decoration:line-through;\"><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">所</span></span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">规定的最短学</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">制年限内完成毕业，所申请的毕业证书属国家教育部正规学历毕业证书，可在中国高等教育学生信息网查询</span>http://www.chsi.com.cn查询验证；</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">3、除正常提交乙方个人信息资料给到指定报考单位外，不得泄露</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">乙方</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">信息资料。</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">4、除正常学习服务费用（报考费、学费、教材费、毕业</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">证</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">摄像费），不得以任何借口向学员收取其它费用。</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">5、非甲方责任，将不产生任何退费责任。</span></p><p style=\"margin-right: 0;text-indent: 28px;line-height: 20px\"><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">6、甲方为乙方提供申请学士学位的</span><span style=\"text-decoration:line-through;\"><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">办理手续的</span></span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">咨询和指导报务。</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;7</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">、如</span></span><span style=\"text-decoration:line-through;\"><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">果</span></span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">乙方没有被报读院校录取，甲方应将乙方之前所交给甲方未被录取院校相应层次的费用全部退回给乙方；</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;8</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">、乙方在履行完成自己的义务后，甲方原因导致乙方未按时取得</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">毕业</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">证书，甲方应将乙方所交给甲方的全部费用退回给乙方（甲方不承担乙方因此</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">所</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">联带</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">的</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">损失责任</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">和费用</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">）。</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">二、乙方责任与义务</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">1、乙方应在入学至毕业期间</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">应按时</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">配合甲方完成学校报名、录取、毕业等相关申请手续办理</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">。</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">如：成人高考考试本人持证件按时参加，网络教育考试需提供身份</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">证</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">有效原件、配合部分考试，毕业填写申请表等；</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">2、乙方应按甲方规定按时交清学习</span><span style=\"text-decoration:line-through;\"><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">服务</span></span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">费用；</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">3、乙方在办理报读手续过程中所提交的各种证明资料须真实有效；</span></p><p style=\"margin-right: 0;margin-left: 28px;text-indent: 0;line-height: 20px\"><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">4、</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">甲方为乙方提供申请学士学位</span></span><span style=\"text-decoration:line-through;\"><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">的办理手续</span></span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">的咨询和指导报务。</span></span></p><p style=\"margin-right: 0;margin-left: 28px;text-indent: 0;line-height: 20px\"><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">5、</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">乙方有拒绝缴付甲乙双方约定收费事项以外费用的权利；</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">6</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">、乙方在报名交费后，非甲方原因，不得申请退费；</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">7</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">、乙方未履行自己的责任与义务而影响录取、毕业等，乙方将自行承担后果，同时已经交给甲方的费用无权利申请退回。</span></span></p><p style=\"margin-right: 0;line-height: 20px\"><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">8、</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">广东开放大学本科的学生须本人去现场完成答辩。</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">三、双方其它约束责任</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">1、因国家政策变动等不可抗力因素，导致成人学历教育的要素发生变化，均以颁布的政策文件为准（如毕业证样式变更、毕业年限发生变化等）。乙方不得以此为由要求甲方退还所交费用。</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">2、如因不可抗力不能履行的，可根据不可抗力的影响，部分或全部免除责任。(不可抗力是指不可预见的，不能避免且不能克服的客观情况，包括自然灾害、国家政策变化等客观因素)</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">四、报读服务课程</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">以乙方在甲方填写报读信息为准，包括内容有院校、层次、学制、学习形式、计划毕业时间、费用明细。</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><span style=\"font-family:微软雅黑\">五、其它事项</span></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">1、双方确认，已经仔细审阅过本协议的内容，并完全了解本协议各条款的法律含义。&nbsp;</span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\"><br/></span><span style=\"font-family: 微软雅黑;letter-spacing: 0;font-size: 14px\">2、本协议涉及内容均属实，若有未尽事宜，双方另行协商解决。本协议为电子文件，须签字生效，双方可随时查询或下载打印。</span></p><p><br/></p>');

-- ----------------------------
-- Table structure for `lz_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `lz_plugin`;
CREATE TABLE `lz_plugin` (
  `code` varchar(13) DEFAULT NULL COMMENT '插件编码',
  `name` varchar(55) DEFAULT NULL COMMENT '中文名字',
  `version` varchar(255) DEFAULT NULL COMMENT '插件的版本',
  `author` varchar(30) DEFAULT NULL COMMENT '插件作者',
  `config` text COMMENT '配置信息',
  `config_value` text COMMENT '配置值信息',
  `desc` varchar(255) DEFAULT NULL COMMENT '插件描述',
  `status` tinyint(1) DEFAULT '0' COMMENT '是否启用',
  `type` varchar(50) DEFAULT NULL COMMENT '插件类型 payment支付 login 登陆 shipping物流',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `bank_code` text COMMENT '网银配置信息',
  `scene` tinyint(1) DEFAULT '0' COMMENT '使用场景 0 PC+手机 1 手机 2 PC'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_plugin
-- ----------------------------
INSERT INTO `lz_plugin` VALUES ('qq', 'QQ登陆', '1.0', '褫憷', 'a:2:{i:0;a:4:{s:4:\"name\";s:6:\"app_id\";s:5:\"label\";s:6:\"app_id\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}i:1;a:4:{s:4:\"name\";s:10:\"app_secret\";s:5:\"label\";s:10:\"app_secret\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:0:\"\";}}', null, 'QQ登陆插件 ', '1', 'login', 'logo.png', 'N;', null);

-- ----------------------------
-- Table structure for `lz_posid`
-- ----------------------------
DROP TABLE IF EXISTS `lz_posid`;
CREATE TABLE `lz_posid` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `listorder` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_posid
-- ----------------------------
INSERT INTO `lz_posid` VALUES ('1', '首页推荐', '0');
INSERT INTO `lz_posid` VALUES ('2', '当前分类推荐', '0');

-- ----------------------------
-- Table structure for `lz_region`
-- ----------------------------
DROP TABLE IF EXISTS `lz_region`;
CREATE TABLE `lz_region` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(120) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3726 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_region
-- ----------------------------
INSERT INTO `lz_region` VALUES ('1', '0', '中国', '0');
INSERT INTO `lz_region` VALUES ('2', '1', '北京', '1');
INSERT INTO `lz_region` VALUES ('3', '1', '安徽', '1');
INSERT INTO `lz_region` VALUES ('4', '1', '福建', '1');
INSERT INTO `lz_region` VALUES ('5', '1', '甘肃', '1');
INSERT INTO `lz_region` VALUES ('6', '1', '广东', '1');
INSERT INTO `lz_region` VALUES ('7', '1', '广西', '1');
INSERT INTO `lz_region` VALUES ('8', '1', '贵州', '1');
INSERT INTO `lz_region` VALUES ('9', '1', '海南', '1');
INSERT INTO `lz_region` VALUES ('10', '1', '河北', '1');
INSERT INTO `lz_region` VALUES ('11', '1', '河南', '1');
INSERT INTO `lz_region` VALUES ('12', '1', '黑龙江', '1');
INSERT INTO `lz_region` VALUES ('13', '1', '湖北', '1');
INSERT INTO `lz_region` VALUES ('14', '1', '湖南', '1');
INSERT INTO `lz_region` VALUES ('15', '1', '吉林', '1');
INSERT INTO `lz_region` VALUES ('16', '1', '江苏', '1');
INSERT INTO `lz_region` VALUES ('17', '1', '江西', '1');
INSERT INTO `lz_region` VALUES ('18', '1', '辽宁', '1');
INSERT INTO `lz_region` VALUES ('19', '1', '内蒙古', '1');
INSERT INTO `lz_region` VALUES ('20', '1', '宁夏', '1');
INSERT INTO `lz_region` VALUES ('21', '1', '青海', '1');
INSERT INTO `lz_region` VALUES ('22', '1', '山东', '1');
INSERT INTO `lz_region` VALUES ('23', '1', '山西', '1');
INSERT INTO `lz_region` VALUES ('24', '1', '陕西', '1');
INSERT INTO `lz_region` VALUES ('25', '1', '上海', '1');
INSERT INTO `lz_region` VALUES ('26', '1', '四川', '1');
INSERT INTO `lz_region` VALUES ('27', '1', '天津', '1');
INSERT INTO `lz_region` VALUES ('28', '1', '西藏', '1');
INSERT INTO `lz_region` VALUES ('29', '1', '新疆', '1');
INSERT INTO `lz_region` VALUES ('30', '1', '云南', '1');
INSERT INTO `lz_region` VALUES ('31', '1', '浙江', '1');
INSERT INTO `lz_region` VALUES ('32', '1', '重庆', '1');
INSERT INTO `lz_region` VALUES ('33', '1', '香港', '1');
INSERT INTO `lz_region` VALUES ('34', '1', '澳门', '1');
INSERT INTO `lz_region` VALUES ('35', '1', '台湾', '1');
INSERT INTO `lz_region` VALUES ('36', '3', '安庆', '2');
INSERT INTO `lz_region` VALUES ('37', '3', '蚌埠', '2');
INSERT INTO `lz_region` VALUES ('38', '3', '巢湖', '2');
INSERT INTO `lz_region` VALUES ('39', '3', '池州', '2');
INSERT INTO `lz_region` VALUES ('40', '3', '滁州', '2');
INSERT INTO `lz_region` VALUES ('41', '3', '阜阳', '2');
INSERT INTO `lz_region` VALUES ('42', '3', '淮北', '2');
INSERT INTO `lz_region` VALUES ('43', '3', '淮南', '2');
INSERT INTO `lz_region` VALUES ('44', '3', '黄山', '2');
INSERT INTO `lz_region` VALUES ('45', '3', '六安', '2');
INSERT INTO `lz_region` VALUES ('46', '3', '马鞍山', '2');
INSERT INTO `lz_region` VALUES ('47', '3', '宿州', '2');
INSERT INTO `lz_region` VALUES ('48', '3', '铜陵', '2');
INSERT INTO `lz_region` VALUES ('49', '3', '芜湖', '2');
INSERT INTO `lz_region` VALUES ('50', '3', '宣城', '2');
INSERT INTO `lz_region` VALUES ('51', '3', '亳州', '2');
INSERT INTO `lz_region` VALUES ('52', '2', '北京', '2');
INSERT INTO `lz_region` VALUES ('53', '4', '福州', '2');
INSERT INTO `lz_region` VALUES ('54', '4', '龙岩', '2');
INSERT INTO `lz_region` VALUES ('55', '4', '南平', '2');
INSERT INTO `lz_region` VALUES ('56', '4', '宁德', '2');
INSERT INTO `lz_region` VALUES ('57', '4', '莆田', '2');
INSERT INTO `lz_region` VALUES ('58', '4', '泉州', '2');
INSERT INTO `lz_region` VALUES ('59', '4', '三明', '2');
INSERT INTO `lz_region` VALUES ('60', '4', '厦门', '2');
INSERT INTO `lz_region` VALUES ('61', '4', '漳州', '2');
INSERT INTO `lz_region` VALUES ('62', '5', '兰州', '2');
INSERT INTO `lz_region` VALUES ('63', '5', '白银', '2');
INSERT INTO `lz_region` VALUES ('64', '5', '定西', '2');
INSERT INTO `lz_region` VALUES ('65', '5', '甘南', '2');
INSERT INTO `lz_region` VALUES ('66', '5', '嘉峪关', '2');
INSERT INTO `lz_region` VALUES ('67', '5', '金昌', '2');
INSERT INTO `lz_region` VALUES ('68', '5', '酒泉', '2');
INSERT INTO `lz_region` VALUES ('69', '5', '临夏', '2');
INSERT INTO `lz_region` VALUES ('70', '5', '陇南', '2');
INSERT INTO `lz_region` VALUES ('71', '5', '平凉', '2');
INSERT INTO `lz_region` VALUES ('72', '5', '庆阳', '2');
INSERT INTO `lz_region` VALUES ('73', '5', '天水', '2');
INSERT INTO `lz_region` VALUES ('74', '5', '武威', '2');
INSERT INTO `lz_region` VALUES ('75', '5', '张掖', '2');
INSERT INTO `lz_region` VALUES ('76', '6', '广州', '2');
INSERT INTO `lz_region` VALUES ('77', '6', '深圳', '2');
INSERT INTO `lz_region` VALUES ('78', '6', '潮州', '2');
INSERT INTO `lz_region` VALUES ('79', '6', '东莞', '2');
INSERT INTO `lz_region` VALUES ('80', '6', '佛山', '2');
INSERT INTO `lz_region` VALUES ('81', '6', '河源', '2');
INSERT INTO `lz_region` VALUES ('82', '6', '惠州', '2');
INSERT INTO `lz_region` VALUES ('83', '6', '江门', '2');
INSERT INTO `lz_region` VALUES ('84', '6', '揭阳', '2');
INSERT INTO `lz_region` VALUES ('85', '6', '茂名', '2');
INSERT INTO `lz_region` VALUES ('86', '6', '梅州', '2');
INSERT INTO `lz_region` VALUES ('87', '6', '清远', '2');
INSERT INTO `lz_region` VALUES ('88', '6', '汕头', '2');
INSERT INTO `lz_region` VALUES ('89', '6', '汕尾', '2');
INSERT INTO `lz_region` VALUES ('90', '6', '韶关', '2');
INSERT INTO `lz_region` VALUES ('91', '6', '阳江', '2');
INSERT INTO `lz_region` VALUES ('92', '6', '云浮', '2');
INSERT INTO `lz_region` VALUES ('93', '6', '湛江', '2');
INSERT INTO `lz_region` VALUES ('94', '6', '肇庆', '2');
INSERT INTO `lz_region` VALUES ('95', '6', '中山', '2');
INSERT INTO `lz_region` VALUES ('96', '6', '珠海', '2');
INSERT INTO `lz_region` VALUES ('97', '7', '南宁', '2');
INSERT INTO `lz_region` VALUES ('98', '7', '桂林', '2');
INSERT INTO `lz_region` VALUES ('99', '7', '百色', '2');
INSERT INTO `lz_region` VALUES ('100', '7', '北海', '2');
INSERT INTO `lz_region` VALUES ('101', '7', '崇左', '2');
INSERT INTO `lz_region` VALUES ('102', '7', '防城港', '2');
INSERT INTO `lz_region` VALUES ('103', '7', '贵港', '2');
INSERT INTO `lz_region` VALUES ('104', '7', '河池', '2');
INSERT INTO `lz_region` VALUES ('105', '7', '贺州', '2');
INSERT INTO `lz_region` VALUES ('106', '7', '来宾', '2');
INSERT INTO `lz_region` VALUES ('107', '7', '柳州', '2');
INSERT INTO `lz_region` VALUES ('108', '7', '钦州', '2');
INSERT INTO `lz_region` VALUES ('109', '7', '梧州', '2');
INSERT INTO `lz_region` VALUES ('110', '7', '玉林', '2');
INSERT INTO `lz_region` VALUES ('111', '8', '贵阳', '2');
INSERT INTO `lz_region` VALUES ('112', '8', '安顺', '2');
INSERT INTO `lz_region` VALUES ('113', '8', '毕节', '2');
INSERT INTO `lz_region` VALUES ('114', '8', '六盘水', '2');
INSERT INTO `lz_region` VALUES ('115', '8', '黔东南', '2');
INSERT INTO `lz_region` VALUES ('116', '8', '黔南', '2');
INSERT INTO `lz_region` VALUES ('117', '8', '黔西南', '2');
INSERT INTO `lz_region` VALUES ('118', '8', '铜仁', '2');
INSERT INTO `lz_region` VALUES ('119', '8', '遵义', '2');
INSERT INTO `lz_region` VALUES ('120', '9', '海口', '2');
INSERT INTO `lz_region` VALUES ('121', '9', '三亚', '2');
INSERT INTO `lz_region` VALUES ('122', '9', '白沙', '2');
INSERT INTO `lz_region` VALUES ('123', '9', '保亭', '2');
INSERT INTO `lz_region` VALUES ('124', '9', '昌江', '2');
INSERT INTO `lz_region` VALUES ('125', '9', '澄迈县', '2');
INSERT INTO `lz_region` VALUES ('126', '9', '定安县', '2');
INSERT INTO `lz_region` VALUES ('127', '9', '东方', '2');
INSERT INTO `lz_region` VALUES ('128', '9', '乐东', '2');
INSERT INTO `lz_region` VALUES ('129', '9', '临高县', '2');
INSERT INTO `lz_region` VALUES ('130', '9', '陵水', '2');
INSERT INTO `lz_region` VALUES ('131', '9', '琼海', '2');
INSERT INTO `lz_region` VALUES ('132', '9', '琼中', '2');
INSERT INTO `lz_region` VALUES ('133', '9', '屯昌县', '2');
INSERT INTO `lz_region` VALUES ('134', '9', '万宁', '2');
INSERT INTO `lz_region` VALUES ('135', '9', '文昌', '2');
INSERT INTO `lz_region` VALUES ('136', '9', '五指山', '2');
INSERT INTO `lz_region` VALUES ('137', '9', '儋州', '2');
INSERT INTO `lz_region` VALUES ('138', '10', '石家庄', '2');
INSERT INTO `lz_region` VALUES ('139', '10', '保定', '2');
INSERT INTO `lz_region` VALUES ('140', '10', '沧州', '2');
INSERT INTO `lz_region` VALUES ('141', '10', '承德', '2');
INSERT INTO `lz_region` VALUES ('142', '10', '邯郸', '2');
INSERT INTO `lz_region` VALUES ('143', '10', '衡水', '2');
INSERT INTO `lz_region` VALUES ('144', '10', '廊坊', '2');
INSERT INTO `lz_region` VALUES ('145', '10', '秦皇岛', '2');
INSERT INTO `lz_region` VALUES ('146', '10', '唐山', '2');
INSERT INTO `lz_region` VALUES ('147', '10', '邢台', '2');
INSERT INTO `lz_region` VALUES ('148', '10', '张家口', '2');
INSERT INTO `lz_region` VALUES ('149', '11', '郑州', '2');
INSERT INTO `lz_region` VALUES ('150', '11', '洛阳', '2');
INSERT INTO `lz_region` VALUES ('151', '11', '开封', '2');
INSERT INTO `lz_region` VALUES ('152', '11', '安阳', '2');
INSERT INTO `lz_region` VALUES ('153', '11', '鹤壁', '2');
INSERT INTO `lz_region` VALUES ('154', '11', '济源', '2');
INSERT INTO `lz_region` VALUES ('155', '11', '焦作', '2');
INSERT INTO `lz_region` VALUES ('156', '11', '南阳', '2');
INSERT INTO `lz_region` VALUES ('157', '11', '平顶山', '2');
INSERT INTO `lz_region` VALUES ('158', '11', '三门峡', '2');
INSERT INTO `lz_region` VALUES ('159', '11', '商丘', '2');
INSERT INTO `lz_region` VALUES ('160', '11', '新乡', '2');
INSERT INTO `lz_region` VALUES ('161', '11', '信阳', '2');
INSERT INTO `lz_region` VALUES ('162', '11', '许昌', '2');
INSERT INTO `lz_region` VALUES ('163', '11', '周口', '2');
INSERT INTO `lz_region` VALUES ('164', '11', '驻马店', '2');
INSERT INTO `lz_region` VALUES ('165', '11', '漯河', '2');
INSERT INTO `lz_region` VALUES ('166', '11', '濮阳', '2');
INSERT INTO `lz_region` VALUES ('167', '12', '哈尔滨', '2');
INSERT INTO `lz_region` VALUES ('168', '12', '大庆', '2');
INSERT INTO `lz_region` VALUES ('169', '12', '大兴安岭', '2');
INSERT INTO `lz_region` VALUES ('170', '12', '鹤岗', '2');
INSERT INTO `lz_region` VALUES ('171', '12', '黑河', '2');
INSERT INTO `lz_region` VALUES ('172', '12', '鸡西', '2');
INSERT INTO `lz_region` VALUES ('173', '12', '佳木斯', '2');
INSERT INTO `lz_region` VALUES ('174', '12', '牡丹江', '2');
INSERT INTO `lz_region` VALUES ('175', '12', '七台河', '2');
INSERT INTO `lz_region` VALUES ('176', '12', '齐齐哈尔', '2');
INSERT INTO `lz_region` VALUES ('177', '12', '双鸭山', '2');
INSERT INTO `lz_region` VALUES ('178', '12', '绥化', '2');
INSERT INTO `lz_region` VALUES ('179', '12', '伊春', '2');
INSERT INTO `lz_region` VALUES ('180', '13', '武汉', '2');
INSERT INTO `lz_region` VALUES ('181', '13', '仙桃', '2');
INSERT INTO `lz_region` VALUES ('182', '13', '鄂州', '2');
INSERT INTO `lz_region` VALUES ('183', '13', '黄冈', '2');
INSERT INTO `lz_region` VALUES ('184', '13', '黄石', '2');
INSERT INTO `lz_region` VALUES ('185', '13', '荆门', '2');
INSERT INTO `lz_region` VALUES ('186', '13', '荆州', '2');
INSERT INTO `lz_region` VALUES ('187', '13', '潜江', '2');
INSERT INTO `lz_region` VALUES ('188', '13', '神农架林区', '2');
INSERT INTO `lz_region` VALUES ('189', '13', '十堰', '2');
INSERT INTO `lz_region` VALUES ('190', '13', '随州', '2');
INSERT INTO `lz_region` VALUES ('191', '13', '天门', '2');
INSERT INTO `lz_region` VALUES ('192', '13', '咸宁', '2');
INSERT INTO `lz_region` VALUES ('193', '13', '襄樊', '2');
INSERT INTO `lz_region` VALUES ('194', '13', '孝感', '2');
INSERT INTO `lz_region` VALUES ('195', '13', '宜昌', '2');
INSERT INTO `lz_region` VALUES ('196', '13', '恩施', '2');
INSERT INTO `lz_region` VALUES ('197', '14', '长沙', '2');
INSERT INTO `lz_region` VALUES ('198', '14', '张家界', '2');
INSERT INTO `lz_region` VALUES ('199', '14', '常德', '2');
INSERT INTO `lz_region` VALUES ('200', '14', '郴州', '2');
INSERT INTO `lz_region` VALUES ('201', '14', '衡阳', '2');
INSERT INTO `lz_region` VALUES ('202', '14', '怀化', '2');
INSERT INTO `lz_region` VALUES ('203', '14', '娄底', '2');
INSERT INTO `lz_region` VALUES ('204', '14', '邵阳', '2');
INSERT INTO `lz_region` VALUES ('205', '14', '湘潭', '2');
INSERT INTO `lz_region` VALUES ('206', '14', '湘西', '2');
INSERT INTO `lz_region` VALUES ('207', '14', '益阳', '2');
INSERT INTO `lz_region` VALUES ('208', '14', '永州', '2');
INSERT INTO `lz_region` VALUES ('209', '14', '岳阳', '2');
INSERT INTO `lz_region` VALUES ('210', '14', '株洲', '2');
INSERT INTO `lz_region` VALUES ('211', '15', '长春', '2');
INSERT INTO `lz_region` VALUES ('212', '15', '吉林', '2');
INSERT INTO `lz_region` VALUES ('213', '15', '白城', '2');
INSERT INTO `lz_region` VALUES ('214', '15', '白山', '2');
INSERT INTO `lz_region` VALUES ('215', '15', '辽源', '2');
INSERT INTO `lz_region` VALUES ('216', '15', '四平', '2');
INSERT INTO `lz_region` VALUES ('217', '15', '松原', '2');
INSERT INTO `lz_region` VALUES ('218', '15', '通化', '2');
INSERT INTO `lz_region` VALUES ('219', '15', '延边', '2');
INSERT INTO `lz_region` VALUES ('220', '16', '南京', '2');
INSERT INTO `lz_region` VALUES ('221', '16', '苏州', '2');
INSERT INTO `lz_region` VALUES ('222', '16', '无锡', '2');
INSERT INTO `lz_region` VALUES ('223', '16', '常州', '2');
INSERT INTO `lz_region` VALUES ('224', '16', '淮安', '2');
INSERT INTO `lz_region` VALUES ('225', '16', '连云港', '2');
INSERT INTO `lz_region` VALUES ('226', '16', '南通', '2');
INSERT INTO `lz_region` VALUES ('227', '16', '宿迁', '2');
INSERT INTO `lz_region` VALUES ('228', '16', '泰州', '2');
INSERT INTO `lz_region` VALUES ('229', '16', '徐州', '2');
INSERT INTO `lz_region` VALUES ('230', '16', '盐城', '2');
INSERT INTO `lz_region` VALUES ('231', '16', '扬州', '2');
INSERT INTO `lz_region` VALUES ('232', '16', '镇江', '2');
INSERT INTO `lz_region` VALUES ('233', '17', '南昌', '2');
INSERT INTO `lz_region` VALUES ('234', '17', '抚州', '2');
INSERT INTO `lz_region` VALUES ('235', '17', '赣州', '2');
INSERT INTO `lz_region` VALUES ('236', '17', '吉安', '2');
INSERT INTO `lz_region` VALUES ('237', '17', '景德镇', '2');
INSERT INTO `lz_region` VALUES ('238', '17', '九江', '2');
INSERT INTO `lz_region` VALUES ('239', '17', '萍乡', '2');
INSERT INTO `lz_region` VALUES ('240', '17', '上饶', '2');
INSERT INTO `lz_region` VALUES ('241', '17', '新余', '2');
INSERT INTO `lz_region` VALUES ('242', '17', '宜春', '2');
INSERT INTO `lz_region` VALUES ('243', '17', '鹰潭', '2');
INSERT INTO `lz_region` VALUES ('244', '18', '沈阳', '2');
INSERT INTO `lz_region` VALUES ('245', '18', '大连', '2');
INSERT INTO `lz_region` VALUES ('246', '18', '鞍山', '2');
INSERT INTO `lz_region` VALUES ('247', '18', '本溪', '2');
INSERT INTO `lz_region` VALUES ('248', '18', '朝阳', '2');
INSERT INTO `lz_region` VALUES ('249', '18', '丹东', '2');
INSERT INTO `lz_region` VALUES ('250', '18', '抚顺', '2');
INSERT INTO `lz_region` VALUES ('251', '18', '阜新', '2');
INSERT INTO `lz_region` VALUES ('252', '18', '葫芦岛', '2');
INSERT INTO `lz_region` VALUES ('253', '18', '锦州', '2');
INSERT INTO `lz_region` VALUES ('254', '18', '辽阳', '2');
INSERT INTO `lz_region` VALUES ('255', '18', '盘锦', '2');
INSERT INTO `lz_region` VALUES ('256', '18', '铁岭', '2');
INSERT INTO `lz_region` VALUES ('257', '18', '营口', '2');
INSERT INTO `lz_region` VALUES ('258', '19', '呼和浩特', '2');
INSERT INTO `lz_region` VALUES ('259', '19', '阿拉善盟', '2');
INSERT INTO `lz_region` VALUES ('260', '19', '巴彦淖尔盟', '2');
INSERT INTO `lz_region` VALUES ('261', '19', '包头', '2');
INSERT INTO `lz_region` VALUES ('262', '19', '赤峰', '2');
INSERT INTO `lz_region` VALUES ('263', '19', '鄂尔多斯', '2');
INSERT INTO `lz_region` VALUES ('264', '19', '呼伦贝尔', '2');
INSERT INTO `lz_region` VALUES ('265', '19', '通辽', '2');
INSERT INTO `lz_region` VALUES ('266', '19', '乌海', '2');
INSERT INTO `lz_region` VALUES ('267', '19', '乌兰察布市', '2');
INSERT INTO `lz_region` VALUES ('268', '19', '锡林郭勒盟', '2');
INSERT INTO `lz_region` VALUES ('269', '19', '兴安盟', '2');
INSERT INTO `lz_region` VALUES ('270', '20', '银川', '2');
INSERT INTO `lz_region` VALUES ('271', '20', '固原', '2');
INSERT INTO `lz_region` VALUES ('272', '20', '石嘴山', '2');
INSERT INTO `lz_region` VALUES ('273', '20', '吴忠', '2');
INSERT INTO `lz_region` VALUES ('274', '20', '中卫', '2');
INSERT INTO `lz_region` VALUES ('275', '21', '西宁', '2');
INSERT INTO `lz_region` VALUES ('276', '21', '果洛', '2');
INSERT INTO `lz_region` VALUES ('277', '21', '海北', '2');
INSERT INTO `lz_region` VALUES ('278', '21', '海东', '2');
INSERT INTO `lz_region` VALUES ('279', '21', '海南', '2');
INSERT INTO `lz_region` VALUES ('280', '21', '海西', '2');
INSERT INTO `lz_region` VALUES ('281', '21', '黄南', '2');
INSERT INTO `lz_region` VALUES ('282', '21', '玉树', '2');
INSERT INTO `lz_region` VALUES ('283', '22', '济南', '2');
INSERT INTO `lz_region` VALUES ('284', '22', '青岛', '2');
INSERT INTO `lz_region` VALUES ('285', '22', '滨州', '2');
INSERT INTO `lz_region` VALUES ('286', '22', '德州', '2');
INSERT INTO `lz_region` VALUES ('287', '22', '东营', '2');
INSERT INTO `lz_region` VALUES ('288', '22', '菏泽', '2');
INSERT INTO `lz_region` VALUES ('289', '22', '济宁', '2');
INSERT INTO `lz_region` VALUES ('290', '22', '莱芜', '2');
INSERT INTO `lz_region` VALUES ('291', '22', '聊城', '2');
INSERT INTO `lz_region` VALUES ('292', '22', '临沂', '2');
INSERT INTO `lz_region` VALUES ('293', '22', '日照', '2');
INSERT INTO `lz_region` VALUES ('294', '22', '泰安', '2');
INSERT INTO `lz_region` VALUES ('295', '22', '威海', '2');
INSERT INTO `lz_region` VALUES ('296', '22', '潍坊', '2');
INSERT INTO `lz_region` VALUES ('297', '22', '烟台', '2');
INSERT INTO `lz_region` VALUES ('298', '22', '枣庄', '2');
INSERT INTO `lz_region` VALUES ('299', '22', '淄博', '2');
INSERT INTO `lz_region` VALUES ('300', '23', '太原', '2');
INSERT INTO `lz_region` VALUES ('301', '23', '长治', '2');
INSERT INTO `lz_region` VALUES ('302', '23', '大同', '2');
INSERT INTO `lz_region` VALUES ('303', '23', '晋城', '2');
INSERT INTO `lz_region` VALUES ('304', '23', '晋中', '2');
INSERT INTO `lz_region` VALUES ('305', '23', '临汾', '2');
INSERT INTO `lz_region` VALUES ('306', '23', '吕梁', '2');
INSERT INTO `lz_region` VALUES ('307', '23', '朔州', '2');
INSERT INTO `lz_region` VALUES ('308', '23', '忻州', '2');
INSERT INTO `lz_region` VALUES ('309', '23', '阳泉', '2');
INSERT INTO `lz_region` VALUES ('310', '23', '运城', '2');
INSERT INTO `lz_region` VALUES ('311', '24', '西安', '2');
INSERT INTO `lz_region` VALUES ('312', '24', '安康', '2');
INSERT INTO `lz_region` VALUES ('313', '24', '宝鸡', '2');
INSERT INTO `lz_region` VALUES ('314', '24', '汉中', '2');
INSERT INTO `lz_region` VALUES ('315', '24', '商洛', '2');
INSERT INTO `lz_region` VALUES ('316', '24', '铜川', '2');
INSERT INTO `lz_region` VALUES ('317', '24', '渭南', '2');
INSERT INTO `lz_region` VALUES ('318', '24', '咸阳', '2');
INSERT INTO `lz_region` VALUES ('319', '24', '延安', '2');
INSERT INTO `lz_region` VALUES ('320', '24', '榆林', '2');
INSERT INTO `lz_region` VALUES ('321', '25', '上海', '2');
INSERT INTO `lz_region` VALUES ('322', '26', '成都', '2');
INSERT INTO `lz_region` VALUES ('323', '26', '绵阳', '2');
INSERT INTO `lz_region` VALUES ('324', '26', '阿坝', '2');
INSERT INTO `lz_region` VALUES ('325', '26', '巴中', '2');
INSERT INTO `lz_region` VALUES ('326', '26', '达州', '2');
INSERT INTO `lz_region` VALUES ('327', '26', '德阳', '2');
INSERT INTO `lz_region` VALUES ('328', '26', '甘孜', '2');
INSERT INTO `lz_region` VALUES ('329', '26', '广安', '2');
INSERT INTO `lz_region` VALUES ('330', '26', '广元', '2');
INSERT INTO `lz_region` VALUES ('331', '26', '乐山', '2');
INSERT INTO `lz_region` VALUES ('332', '26', '凉山', '2');
INSERT INTO `lz_region` VALUES ('333', '26', '眉山', '2');
INSERT INTO `lz_region` VALUES ('334', '26', '南充', '2');
INSERT INTO `lz_region` VALUES ('335', '26', '内江', '2');
INSERT INTO `lz_region` VALUES ('336', '26', '攀枝花', '2');
INSERT INTO `lz_region` VALUES ('337', '26', '遂宁', '2');
INSERT INTO `lz_region` VALUES ('338', '26', '雅安', '2');
INSERT INTO `lz_region` VALUES ('339', '26', '宜宾', '2');
INSERT INTO `lz_region` VALUES ('340', '26', '资阳', '2');
INSERT INTO `lz_region` VALUES ('341', '26', '自贡', '2');
INSERT INTO `lz_region` VALUES ('342', '26', '泸州', '2');
INSERT INTO `lz_region` VALUES ('343', '27', '天津', '2');
INSERT INTO `lz_region` VALUES ('344', '28', '拉萨', '2');
INSERT INTO `lz_region` VALUES ('345', '28', '阿里', '2');
INSERT INTO `lz_region` VALUES ('346', '28', '昌都', '2');
INSERT INTO `lz_region` VALUES ('347', '28', '林芝', '2');
INSERT INTO `lz_region` VALUES ('348', '28', '那曲', '2');
INSERT INTO `lz_region` VALUES ('349', '28', '日喀则', '2');
INSERT INTO `lz_region` VALUES ('350', '28', '山南', '2');
INSERT INTO `lz_region` VALUES ('351', '29', '乌鲁木齐', '2');
INSERT INTO `lz_region` VALUES ('352', '29', '阿克苏', '2');
INSERT INTO `lz_region` VALUES ('353', '29', '阿拉尔', '2');
INSERT INTO `lz_region` VALUES ('354', '29', '巴音郭楞', '2');
INSERT INTO `lz_region` VALUES ('355', '29', '博尔塔拉', '2');
INSERT INTO `lz_region` VALUES ('356', '29', '昌吉', '2');
INSERT INTO `lz_region` VALUES ('357', '29', '哈密', '2');
INSERT INTO `lz_region` VALUES ('358', '29', '和田', '2');
INSERT INTO `lz_region` VALUES ('359', '29', '喀什', '2');
INSERT INTO `lz_region` VALUES ('360', '29', '克拉玛依', '2');
INSERT INTO `lz_region` VALUES ('361', '29', '克孜勒苏', '2');
INSERT INTO `lz_region` VALUES ('362', '29', '石河子', '2');
INSERT INTO `lz_region` VALUES ('363', '29', '图木舒克', '2');
INSERT INTO `lz_region` VALUES ('364', '29', '吐鲁番', '2');
INSERT INTO `lz_region` VALUES ('365', '29', '五家渠', '2');
INSERT INTO `lz_region` VALUES ('366', '29', '伊犁', '2');
INSERT INTO `lz_region` VALUES ('367', '30', '昆明', '2');
INSERT INTO `lz_region` VALUES ('368', '30', '怒江', '2');
INSERT INTO `lz_region` VALUES ('369', '30', '普洱', '2');
INSERT INTO `lz_region` VALUES ('370', '30', '丽江', '2');
INSERT INTO `lz_region` VALUES ('371', '30', '保山', '2');
INSERT INTO `lz_region` VALUES ('372', '30', '楚雄', '2');
INSERT INTO `lz_region` VALUES ('373', '30', '大理', '2');
INSERT INTO `lz_region` VALUES ('374', '30', '德宏', '2');
INSERT INTO `lz_region` VALUES ('375', '30', '迪庆', '2');
INSERT INTO `lz_region` VALUES ('376', '30', '红河', '2');
INSERT INTO `lz_region` VALUES ('377', '30', '临沧', '2');
INSERT INTO `lz_region` VALUES ('378', '30', '曲靖', '2');
INSERT INTO `lz_region` VALUES ('379', '30', '文山', '2');
INSERT INTO `lz_region` VALUES ('380', '30', '西双版纳', '2');
INSERT INTO `lz_region` VALUES ('381', '30', '玉溪', '2');
INSERT INTO `lz_region` VALUES ('382', '30', '昭通', '2');
INSERT INTO `lz_region` VALUES ('383', '31', '杭州', '2');
INSERT INTO `lz_region` VALUES ('384', '31', '湖州', '2');
INSERT INTO `lz_region` VALUES ('385', '31', '嘉兴', '2');
INSERT INTO `lz_region` VALUES ('386', '31', '金华', '2');
INSERT INTO `lz_region` VALUES ('387', '31', '丽水', '2');
INSERT INTO `lz_region` VALUES ('388', '31', '宁波', '2');
INSERT INTO `lz_region` VALUES ('389', '31', '绍兴', '2');
INSERT INTO `lz_region` VALUES ('390', '31', '台州', '2');
INSERT INTO `lz_region` VALUES ('391', '31', '温州', '2');
INSERT INTO `lz_region` VALUES ('392', '31', '舟山', '2');
INSERT INTO `lz_region` VALUES ('393', '31', '衢州', '2');
INSERT INTO `lz_region` VALUES ('394', '32', '重庆', '2');
INSERT INTO `lz_region` VALUES ('395', '33', '香港', '2');
INSERT INTO `lz_region` VALUES ('396', '34', '澳门', '2');
INSERT INTO `lz_region` VALUES ('397', '35', '台湾', '2');
INSERT INTO `lz_region` VALUES ('398', '36', '迎江区', '3');
INSERT INTO `lz_region` VALUES ('399', '36', '大观区', '3');
INSERT INTO `lz_region` VALUES ('400', '36', '宜秀区', '3');
INSERT INTO `lz_region` VALUES ('401', '36', '桐城市', '3');
INSERT INTO `lz_region` VALUES ('402', '36', '怀宁县', '3');
INSERT INTO `lz_region` VALUES ('403', '36', '枞阳县', '3');
INSERT INTO `lz_region` VALUES ('404', '36', '潜山县', '3');
INSERT INTO `lz_region` VALUES ('405', '36', '太湖县', '3');
INSERT INTO `lz_region` VALUES ('406', '36', '宿松县', '3');
INSERT INTO `lz_region` VALUES ('407', '36', '望江县', '3');
INSERT INTO `lz_region` VALUES ('408', '36', '岳西县', '3');
INSERT INTO `lz_region` VALUES ('409', '37', '中市区', '3');
INSERT INTO `lz_region` VALUES ('410', '37', '东市区', '3');
INSERT INTO `lz_region` VALUES ('411', '37', '西市区', '3');
INSERT INTO `lz_region` VALUES ('412', '37', '郊区', '3');
INSERT INTO `lz_region` VALUES ('413', '37', '怀远县', '3');
INSERT INTO `lz_region` VALUES ('414', '37', '五河县', '3');
INSERT INTO `lz_region` VALUES ('415', '37', '固镇县', '3');
INSERT INTO `lz_region` VALUES ('416', '38', '居巢区', '3');
INSERT INTO `lz_region` VALUES ('417', '38', '庐江县', '3');
INSERT INTO `lz_region` VALUES ('418', '38', '无为县', '3');
INSERT INTO `lz_region` VALUES ('419', '38', '含山县', '3');
INSERT INTO `lz_region` VALUES ('420', '38', '和县', '3');
INSERT INTO `lz_region` VALUES ('421', '39', '贵池区', '3');
INSERT INTO `lz_region` VALUES ('422', '39', '东至县', '3');
INSERT INTO `lz_region` VALUES ('423', '39', '石台县', '3');
INSERT INTO `lz_region` VALUES ('424', '39', '青阳县', '3');
INSERT INTO `lz_region` VALUES ('425', '40', '琅琊区', '3');
INSERT INTO `lz_region` VALUES ('426', '40', '南谯区', '3');
INSERT INTO `lz_region` VALUES ('427', '40', '天长市', '3');
INSERT INTO `lz_region` VALUES ('428', '40', '明光市', '3');
INSERT INTO `lz_region` VALUES ('429', '40', '来安县', '3');
INSERT INTO `lz_region` VALUES ('430', '40', '全椒县', '3');
INSERT INTO `lz_region` VALUES ('431', '40', '定远县', '3');
INSERT INTO `lz_region` VALUES ('432', '40', '凤阳县', '3');
INSERT INTO `lz_region` VALUES ('433', '41', '蚌山区', '3');
INSERT INTO `lz_region` VALUES ('434', '41', '龙子湖区', '3');
INSERT INTO `lz_region` VALUES ('435', '41', '禹会区', '3');
INSERT INTO `lz_region` VALUES ('436', '41', '淮上区', '3');
INSERT INTO `lz_region` VALUES ('437', '41', '颍州区', '3');
INSERT INTO `lz_region` VALUES ('438', '41', '颍东区', '3');
INSERT INTO `lz_region` VALUES ('439', '41', '颍泉区', '3');
INSERT INTO `lz_region` VALUES ('440', '41', '界首市', '3');
INSERT INTO `lz_region` VALUES ('441', '41', '临泉县', '3');
INSERT INTO `lz_region` VALUES ('442', '41', '太和县', '3');
INSERT INTO `lz_region` VALUES ('443', '41', '阜南县', '3');
INSERT INTO `lz_region` VALUES ('444', '41', '颖上县', '3');
INSERT INTO `lz_region` VALUES ('445', '42', '相山区', '3');
INSERT INTO `lz_region` VALUES ('446', '42', '杜集区', '3');
INSERT INTO `lz_region` VALUES ('447', '42', '烈山区', '3');
INSERT INTO `lz_region` VALUES ('448', '42', '濉溪县', '3');
INSERT INTO `lz_region` VALUES ('449', '43', '田家庵区', '3');
INSERT INTO `lz_region` VALUES ('450', '43', '大通区', '3');
INSERT INTO `lz_region` VALUES ('451', '43', '谢家集区', '3');
INSERT INTO `lz_region` VALUES ('452', '43', '八公山区', '3');
INSERT INTO `lz_region` VALUES ('453', '43', '潘集区', '3');
INSERT INTO `lz_region` VALUES ('454', '43', '凤台县', '3');
INSERT INTO `lz_region` VALUES ('455', '44', '屯溪区', '3');
INSERT INTO `lz_region` VALUES ('456', '44', '黄山区', '3');
INSERT INTO `lz_region` VALUES ('457', '44', '徽州区', '3');
INSERT INTO `lz_region` VALUES ('458', '44', '歙县', '3');
INSERT INTO `lz_region` VALUES ('459', '44', '休宁县', '3');
INSERT INTO `lz_region` VALUES ('460', '44', '黟县', '3');
INSERT INTO `lz_region` VALUES ('461', '44', '祁门县', '3');
INSERT INTO `lz_region` VALUES ('462', '45', '金安区', '3');
INSERT INTO `lz_region` VALUES ('463', '45', '裕安区', '3');
INSERT INTO `lz_region` VALUES ('464', '45', '寿县', '3');
INSERT INTO `lz_region` VALUES ('465', '45', '霍邱县', '3');
INSERT INTO `lz_region` VALUES ('466', '45', '舒城县', '3');
INSERT INTO `lz_region` VALUES ('467', '45', '金寨县', '3');
INSERT INTO `lz_region` VALUES ('468', '45', '霍山县', '3');
INSERT INTO `lz_region` VALUES ('469', '46', '雨山区', '3');
INSERT INTO `lz_region` VALUES ('470', '46', '花山区', '3');
INSERT INTO `lz_region` VALUES ('471', '46', '金家庄区', '3');
INSERT INTO `lz_region` VALUES ('472', '46', '当涂县', '3');
INSERT INTO `lz_region` VALUES ('473', '47', '埇桥区', '3');
INSERT INTO `lz_region` VALUES ('474', '47', '砀山县', '3');
INSERT INTO `lz_region` VALUES ('475', '47', '萧县', '3');
INSERT INTO `lz_region` VALUES ('476', '47', '灵璧县', '3');
INSERT INTO `lz_region` VALUES ('477', '47', '泗县', '3');
INSERT INTO `lz_region` VALUES ('478', '48', '铜官山区', '3');
INSERT INTO `lz_region` VALUES ('479', '48', '狮子山区', '3');
INSERT INTO `lz_region` VALUES ('480', '48', '郊区', '3');
INSERT INTO `lz_region` VALUES ('481', '48', '铜陵县', '3');
INSERT INTO `lz_region` VALUES ('482', '49', '镜湖区', '3');
INSERT INTO `lz_region` VALUES ('483', '49', '弋江区', '3');
INSERT INTO `lz_region` VALUES ('484', '49', '鸠江区', '3');
INSERT INTO `lz_region` VALUES ('485', '49', '三山区', '3');
INSERT INTO `lz_region` VALUES ('486', '49', '芜湖县', '3');
INSERT INTO `lz_region` VALUES ('487', '49', '繁昌县', '3');
INSERT INTO `lz_region` VALUES ('488', '49', '南陵县', '3');
INSERT INTO `lz_region` VALUES ('489', '50', '宣州区', '3');
INSERT INTO `lz_region` VALUES ('490', '50', '宁国市', '3');
INSERT INTO `lz_region` VALUES ('491', '50', '郎溪县', '3');
INSERT INTO `lz_region` VALUES ('492', '50', '广德县', '3');
INSERT INTO `lz_region` VALUES ('493', '50', '泾县', '3');
INSERT INTO `lz_region` VALUES ('494', '50', '绩溪县', '3');
INSERT INTO `lz_region` VALUES ('495', '50', '旌德县', '3');
INSERT INTO `lz_region` VALUES ('496', '51', '涡阳县', '3');
INSERT INTO `lz_region` VALUES ('497', '51', '蒙城县', '3');
INSERT INTO `lz_region` VALUES ('498', '51', '利辛县', '3');
INSERT INTO `lz_region` VALUES ('499', '51', '谯城区', '3');
INSERT INTO `lz_region` VALUES ('500', '52', '东城区', '3');
INSERT INTO `lz_region` VALUES ('501', '52', '西城区', '3');
INSERT INTO `lz_region` VALUES ('502', '52', '海淀区', '3');
INSERT INTO `lz_region` VALUES ('503', '52', '朝阳区', '3');
INSERT INTO `lz_region` VALUES ('504', '52', '崇文区', '3');
INSERT INTO `lz_region` VALUES ('505', '52', '宣武区', '3');
INSERT INTO `lz_region` VALUES ('506', '52', '丰台区', '3');
INSERT INTO `lz_region` VALUES ('507', '52', '石景山区', '3');
INSERT INTO `lz_region` VALUES ('508', '52', '房山区', '3');
INSERT INTO `lz_region` VALUES ('509', '52', '门头沟区', '3');
INSERT INTO `lz_region` VALUES ('510', '52', '通州区', '3');
INSERT INTO `lz_region` VALUES ('511', '52', '顺义区', '3');
INSERT INTO `lz_region` VALUES ('512', '52', '昌平区', '3');
INSERT INTO `lz_region` VALUES ('513', '52', '怀柔区', '3');
INSERT INTO `lz_region` VALUES ('514', '52', '平谷区', '3');
INSERT INTO `lz_region` VALUES ('515', '52', '大兴区', '3');
INSERT INTO `lz_region` VALUES ('516', '52', '密云县', '3');
INSERT INTO `lz_region` VALUES ('517', '52', '延庆县', '3');
INSERT INTO `lz_region` VALUES ('518', '53', '鼓楼区', '3');
INSERT INTO `lz_region` VALUES ('519', '53', '台江区', '3');
INSERT INTO `lz_region` VALUES ('520', '53', '仓山区', '3');
INSERT INTO `lz_region` VALUES ('521', '53', '马尾区', '3');
INSERT INTO `lz_region` VALUES ('522', '53', '晋安区', '3');
INSERT INTO `lz_region` VALUES ('523', '53', '福清市', '3');
INSERT INTO `lz_region` VALUES ('524', '53', '长乐市', '3');
INSERT INTO `lz_region` VALUES ('525', '53', '闽侯县', '3');
INSERT INTO `lz_region` VALUES ('526', '53', '连江县', '3');
INSERT INTO `lz_region` VALUES ('527', '53', '罗源县', '3');
INSERT INTO `lz_region` VALUES ('528', '53', '闽清县', '3');
INSERT INTO `lz_region` VALUES ('529', '53', '永泰县', '3');
INSERT INTO `lz_region` VALUES ('530', '53', '平潭县', '3');
INSERT INTO `lz_region` VALUES ('531', '54', '新罗区', '3');
INSERT INTO `lz_region` VALUES ('532', '54', '漳平市', '3');
INSERT INTO `lz_region` VALUES ('533', '54', '长汀县', '3');
INSERT INTO `lz_region` VALUES ('534', '54', '永定县', '3');
INSERT INTO `lz_region` VALUES ('535', '54', '上杭县', '3');
INSERT INTO `lz_region` VALUES ('536', '54', '武平县', '3');
INSERT INTO `lz_region` VALUES ('537', '54', '连城县', '3');
INSERT INTO `lz_region` VALUES ('538', '55', '延平区', '3');
INSERT INTO `lz_region` VALUES ('539', '55', '邵武市', '3');
INSERT INTO `lz_region` VALUES ('540', '55', '武夷山市', '3');
INSERT INTO `lz_region` VALUES ('541', '55', '建瓯市', '3');
INSERT INTO `lz_region` VALUES ('542', '55', '建阳市', '3');
INSERT INTO `lz_region` VALUES ('543', '55', '顺昌县', '3');
INSERT INTO `lz_region` VALUES ('544', '55', '浦城县', '3');
INSERT INTO `lz_region` VALUES ('545', '55', '光泽县', '3');
INSERT INTO `lz_region` VALUES ('546', '55', '松溪县', '3');
INSERT INTO `lz_region` VALUES ('547', '55', '政和县', '3');
INSERT INTO `lz_region` VALUES ('548', '56', '蕉城区', '3');
INSERT INTO `lz_region` VALUES ('549', '56', '福安市', '3');
INSERT INTO `lz_region` VALUES ('550', '56', '福鼎市', '3');
INSERT INTO `lz_region` VALUES ('551', '56', '霞浦县', '3');
INSERT INTO `lz_region` VALUES ('552', '56', '古田县', '3');
INSERT INTO `lz_region` VALUES ('553', '56', '屏南县', '3');
INSERT INTO `lz_region` VALUES ('554', '56', '寿宁县', '3');
INSERT INTO `lz_region` VALUES ('555', '56', '周宁县', '3');
INSERT INTO `lz_region` VALUES ('556', '56', '柘荣县', '3');
INSERT INTO `lz_region` VALUES ('557', '57', '城厢区', '3');
INSERT INTO `lz_region` VALUES ('558', '57', '涵江区', '3');
INSERT INTO `lz_region` VALUES ('559', '57', '荔城区', '3');
INSERT INTO `lz_region` VALUES ('560', '57', '秀屿区', '3');
INSERT INTO `lz_region` VALUES ('561', '57', '仙游县', '3');
INSERT INTO `lz_region` VALUES ('562', '58', '鲤城区', '3');
INSERT INTO `lz_region` VALUES ('563', '58', '丰泽区', '3');
INSERT INTO `lz_region` VALUES ('564', '58', '洛江区', '3');
INSERT INTO `lz_region` VALUES ('565', '58', '清濛开发区', '3');
INSERT INTO `lz_region` VALUES ('566', '58', '泉港区', '3');
INSERT INTO `lz_region` VALUES ('567', '58', '石狮市', '3');
INSERT INTO `lz_region` VALUES ('568', '58', '晋江市', '3');
INSERT INTO `lz_region` VALUES ('569', '58', '南安市', '3');
INSERT INTO `lz_region` VALUES ('570', '58', '惠安县', '3');
INSERT INTO `lz_region` VALUES ('571', '58', '安溪县', '3');
INSERT INTO `lz_region` VALUES ('572', '58', '永春县', '3');
INSERT INTO `lz_region` VALUES ('573', '58', '德化县', '3');
INSERT INTO `lz_region` VALUES ('574', '58', '金门县', '3');
INSERT INTO `lz_region` VALUES ('575', '59', '梅列区', '3');
INSERT INTO `lz_region` VALUES ('576', '59', '三元区', '3');
INSERT INTO `lz_region` VALUES ('577', '59', '永安市', '3');
INSERT INTO `lz_region` VALUES ('578', '59', '明溪县', '3');
INSERT INTO `lz_region` VALUES ('579', '59', '清流县', '3');
INSERT INTO `lz_region` VALUES ('580', '59', '宁化县', '3');
INSERT INTO `lz_region` VALUES ('581', '59', '大田县', '3');
INSERT INTO `lz_region` VALUES ('582', '59', '尤溪县', '3');
INSERT INTO `lz_region` VALUES ('583', '59', '沙县', '3');
INSERT INTO `lz_region` VALUES ('584', '59', '将乐县', '3');
INSERT INTO `lz_region` VALUES ('585', '59', '泰宁县', '3');
INSERT INTO `lz_region` VALUES ('586', '59', '建宁县', '3');
INSERT INTO `lz_region` VALUES ('587', '60', '思明区', '3');
INSERT INTO `lz_region` VALUES ('588', '60', '海沧区', '3');
INSERT INTO `lz_region` VALUES ('589', '60', '湖里区', '3');
INSERT INTO `lz_region` VALUES ('590', '60', '集美区', '3');
INSERT INTO `lz_region` VALUES ('591', '60', '同安区', '3');
INSERT INTO `lz_region` VALUES ('592', '60', '翔安区', '3');
INSERT INTO `lz_region` VALUES ('593', '61', '芗城区', '3');
INSERT INTO `lz_region` VALUES ('594', '61', '龙文区', '3');
INSERT INTO `lz_region` VALUES ('595', '61', '龙海市', '3');
INSERT INTO `lz_region` VALUES ('596', '61', '云霄县', '3');
INSERT INTO `lz_region` VALUES ('597', '61', '漳浦县', '3');
INSERT INTO `lz_region` VALUES ('598', '61', '诏安县', '3');
INSERT INTO `lz_region` VALUES ('599', '61', '长泰县', '3');
INSERT INTO `lz_region` VALUES ('600', '61', '东山县', '3');
INSERT INTO `lz_region` VALUES ('601', '61', '南靖县', '3');
INSERT INTO `lz_region` VALUES ('602', '61', '平和县', '3');
INSERT INTO `lz_region` VALUES ('603', '61', '华安县', '3');
INSERT INTO `lz_region` VALUES ('604', '62', '皋兰县', '3');
INSERT INTO `lz_region` VALUES ('605', '62', '城关区', '3');
INSERT INTO `lz_region` VALUES ('606', '62', '七里河区', '3');
INSERT INTO `lz_region` VALUES ('607', '62', '西固区', '3');
INSERT INTO `lz_region` VALUES ('608', '62', '安宁区', '3');
INSERT INTO `lz_region` VALUES ('609', '62', '红古区', '3');
INSERT INTO `lz_region` VALUES ('610', '62', '永登县', '3');
INSERT INTO `lz_region` VALUES ('611', '62', '榆中县', '3');
INSERT INTO `lz_region` VALUES ('612', '63', '白银区', '3');
INSERT INTO `lz_region` VALUES ('613', '63', '平川区', '3');
INSERT INTO `lz_region` VALUES ('614', '63', '会宁县', '3');
INSERT INTO `lz_region` VALUES ('615', '63', '景泰县', '3');
INSERT INTO `lz_region` VALUES ('616', '63', '靖远县', '3');
INSERT INTO `lz_region` VALUES ('617', '64', '临洮县', '3');
INSERT INTO `lz_region` VALUES ('618', '64', '陇西县', '3');
INSERT INTO `lz_region` VALUES ('619', '64', '通渭县', '3');
INSERT INTO `lz_region` VALUES ('620', '64', '渭源县', '3');
INSERT INTO `lz_region` VALUES ('621', '64', '漳县', '3');
INSERT INTO `lz_region` VALUES ('622', '64', '岷县', '3');
INSERT INTO `lz_region` VALUES ('623', '64', '安定区', '3');
INSERT INTO `lz_region` VALUES ('624', '64', '安定区', '3');
INSERT INTO `lz_region` VALUES ('625', '65', '合作市', '3');
INSERT INTO `lz_region` VALUES ('626', '65', '临潭县', '3');
INSERT INTO `lz_region` VALUES ('627', '65', '卓尼县', '3');
INSERT INTO `lz_region` VALUES ('628', '65', '舟曲县', '3');
INSERT INTO `lz_region` VALUES ('629', '65', '迭部县', '3');
INSERT INTO `lz_region` VALUES ('630', '65', '玛曲县', '3');
INSERT INTO `lz_region` VALUES ('631', '65', '碌曲县', '3');
INSERT INTO `lz_region` VALUES ('632', '65', '夏河县', '3');
INSERT INTO `lz_region` VALUES ('633', '66', '嘉峪关市', '3');
INSERT INTO `lz_region` VALUES ('634', '67', '金川区', '3');
INSERT INTO `lz_region` VALUES ('635', '67', '永昌县', '3');
INSERT INTO `lz_region` VALUES ('636', '68', '肃州区', '3');
INSERT INTO `lz_region` VALUES ('637', '68', '玉门市', '3');
INSERT INTO `lz_region` VALUES ('638', '68', '敦煌市', '3');
INSERT INTO `lz_region` VALUES ('639', '68', '金塔县', '3');
INSERT INTO `lz_region` VALUES ('640', '68', '瓜州县', '3');
INSERT INTO `lz_region` VALUES ('641', '68', '肃北', '3');
INSERT INTO `lz_region` VALUES ('642', '68', '阿克塞', '3');
INSERT INTO `lz_region` VALUES ('643', '69', '临夏市', '3');
INSERT INTO `lz_region` VALUES ('644', '69', '临夏县', '3');
INSERT INTO `lz_region` VALUES ('645', '69', '康乐县', '3');
INSERT INTO `lz_region` VALUES ('646', '69', '永靖县', '3');
INSERT INTO `lz_region` VALUES ('647', '69', '广河县', '3');
INSERT INTO `lz_region` VALUES ('648', '69', '和政县', '3');
INSERT INTO `lz_region` VALUES ('649', '69', '东乡族自治县', '3');
INSERT INTO `lz_region` VALUES ('650', '69', '积石山', '3');
INSERT INTO `lz_region` VALUES ('651', '70', '成县', '3');
INSERT INTO `lz_region` VALUES ('652', '70', '徽县', '3');
INSERT INTO `lz_region` VALUES ('653', '70', '康县', '3');
INSERT INTO `lz_region` VALUES ('654', '70', '礼县', '3');
INSERT INTO `lz_region` VALUES ('655', '70', '两当县', '3');
INSERT INTO `lz_region` VALUES ('656', '70', '文县', '3');
INSERT INTO `lz_region` VALUES ('657', '70', '西和县', '3');
INSERT INTO `lz_region` VALUES ('658', '70', '宕昌县', '3');
INSERT INTO `lz_region` VALUES ('659', '70', '武都区', '3');
INSERT INTO `lz_region` VALUES ('660', '71', '崇信县', '3');
INSERT INTO `lz_region` VALUES ('661', '71', '华亭县', '3');
INSERT INTO `lz_region` VALUES ('662', '71', '静宁县', '3');
INSERT INTO `lz_region` VALUES ('663', '71', '灵台县', '3');
INSERT INTO `lz_region` VALUES ('664', '71', '崆峒区', '3');
INSERT INTO `lz_region` VALUES ('665', '71', '庄浪县', '3');
INSERT INTO `lz_region` VALUES ('666', '71', '泾川县', '3');
INSERT INTO `lz_region` VALUES ('667', '72', '合水县', '3');
INSERT INTO `lz_region` VALUES ('668', '72', '华池县', '3');
INSERT INTO `lz_region` VALUES ('669', '72', '环县', '3');
INSERT INTO `lz_region` VALUES ('670', '72', '宁县', '3');
INSERT INTO `lz_region` VALUES ('671', '72', '庆城县', '3');
INSERT INTO `lz_region` VALUES ('672', '72', '西峰区', '3');
INSERT INTO `lz_region` VALUES ('673', '72', '镇原县', '3');
INSERT INTO `lz_region` VALUES ('674', '72', '正宁县', '3');
INSERT INTO `lz_region` VALUES ('675', '73', '甘谷县', '3');
INSERT INTO `lz_region` VALUES ('676', '73', '秦安县', '3');
INSERT INTO `lz_region` VALUES ('677', '73', '清水县', '3');
INSERT INTO `lz_region` VALUES ('678', '73', '秦州区', '3');
INSERT INTO `lz_region` VALUES ('679', '73', '麦积区', '3');
INSERT INTO `lz_region` VALUES ('680', '73', '武山县', '3');
INSERT INTO `lz_region` VALUES ('681', '73', '张家川', '3');
INSERT INTO `lz_region` VALUES ('682', '74', '古浪县', '3');
INSERT INTO `lz_region` VALUES ('683', '74', '民勤县', '3');
INSERT INTO `lz_region` VALUES ('684', '74', '天祝', '3');
INSERT INTO `lz_region` VALUES ('685', '74', '凉州区', '3');
INSERT INTO `lz_region` VALUES ('686', '75', '高台县', '3');
INSERT INTO `lz_region` VALUES ('687', '75', '临泽县', '3');
INSERT INTO `lz_region` VALUES ('688', '75', '民乐县', '3');
INSERT INTO `lz_region` VALUES ('689', '75', '山丹县', '3');
INSERT INTO `lz_region` VALUES ('690', '75', '肃南', '3');
INSERT INTO `lz_region` VALUES ('691', '75', '甘州区', '3');
INSERT INTO `lz_region` VALUES ('692', '76', '从化市', '3');
INSERT INTO `lz_region` VALUES ('693', '76', '天河区', '3');
INSERT INTO `lz_region` VALUES ('694', '76', '东山区', '3');
INSERT INTO `lz_region` VALUES ('695', '76', '白云区', '3');
INSERT INTO `lz_region` VALUES ('696', '76', '海珠区', '3');
INSERT INTO `lz_region` VALUES ('697', '76', '荔湾区', '3');
INSERT INTO `lz_region` VALUES ('698', '76', '越秀区', '3');
INSERT INTO `lz_region` VALUES ('699', '76', '黄埔区', '3');
INSERT INTO `lz_region` VALUES ('700', '76', '番禺区', '3');
INSERT INTO `lz_region` VALUES ('701', '76', '花都区', '3');
INSERT INTO `lz_region` VALUES ('702', '76', '增城区', '3');
INSERT INTO `lz_region` VALUES ('703', '76', '从化区', '3');
INSERT INTO `lz_region` VALUES ('704', '76', '市郊', '3');
INSERT INTO `lz_region` VALUES ('705', '77', '福田区', '3');
INSERT INTO `lz_region` VALUES ('706', '77', '罗湖区', '3');
INSERT INTO `lz_region` VALUES ('707', '77', '南山区', '3');
INSERT INTO `lz_region` VALUES ('708', '77', '宝安区', '3');
INSERT INTO `lz_region` VALUES ('709', '77', '龙岗区', '3');
INSERT INTO `lz_region` VALUES ('710', '77', '盐田区', '3');
INSERT INTO `lz_region` VALUES ('711', '78', '湘桥区', '3');
INSERT INTO `lz_region` VALUES ('712', '78', '潮安县', '3');
INSERT INTO `lz_region` VALUES ('713', '78', '饶平县', '3');
INSERT INTO `lz_region` VALUES ('714', '79', '南城区', '3');
INSERT INTO `lz_region` VALUES ('715', '79', '东城区', '3');
INSERT INTO `lz_region` VALUES ('716', '79', '万江区', '3');
INSERT INTO `lz_region` VALUES ('717', '79', '莞城区', '3');
INSERT INTO `lz_region` VALUES ('718', '79', '石龙镇', '3');
INSERT INTO `lz_region` VALUES ('719', '79', '虎门镇', '3');
INSERT INTO `lz_region` VALUES ('720', '79', '麻涌镇', '3');
INSERT INTO `lz_region` VALUES ('721', '79', '道滘镇', '3');
INSERT INTO `lz_region` VALUES ('722', '79', '石碣镇', '3');
INSERT INTO `lz_region` VALUES ('723', '79', '沙田镇', '3');
INSERT INTO `lz_region` VALUES ('724', '79', '望牛墩镇', '3');
INSERT INTO `lz_region` VALUES ('725', '79', '洪梅镇', '3');
INSERT INTO `lz_region` VALUES ('726', '79', '茶山镇', '3');
INSERT INTO `lz_region` VALUES ('727', '79', '寮步镇', '3');
INSERT INTO `lz_region` VALUES ('728', '79', '大岭山镇', '3');
INSERT INTO `lz_region` VALUES ('729', '79', '大朗镇', '3');
INSERT INTO `lz_region` VALUES ('730', '79', '黄江镇', '3');
INSERT INTO `lz_region` VALUES ('731', '79', '樟木头', '3');
INSERT INTO `lz_region` VALUES ('732', '79', '凤岗镇', '3');
INSERT INTO `lz_region` VALUES ('733', '79', '塘厦镇', '3');
INSERT INTO `lz_region` VALUES ('734', '79', '谢岗镇', '3');
INSERT INTO `lz_region` VALUES ('735', '79', '厚街镇', '3');
INSERT INTO `lz_region` VALUES ('736', '79', '清溪镇', '3');
INSERT INTO `lz_region` VALUES ('737', '79', '常平镇', '3');
INSERT INTO `lz_region` VALUES ('738', '79', '桥头镇', '3');
INSERT INTO `lz_region` VALUES ('739', '79', '横沥镇', '3');
INSERT INTO `lz_region` VALUES ('740', '79', '东坑镇', '3');
INSERT INTO `lz_region` VALUES ('741', '79', '企石镇', '3');
INSERT INTO `lz_region` VALUES ('742', '79', '石排镇', '3');
INSERT INTO `lz_region` VALUES ('743', '79', '长安镇', '3');
INSERT INTO `lz_region` VALUES ('744', '79', '中堂镇', '3');
INSERT INTO `lz_region` VALUES ('745', '79', '高埗镇', '3');
INSERT INTO `lz_region` VALUES ('746', '80', '禅城区', '3');
INSERT INTO `lz_region` VALUES ('747', '80', '南海区', '3');
INSERT INTO `lz_region` VALUES ('748', '80', '顺德区', '3');
INSERT INTO `lz_region` VALUES ('749', '80', '三水区', '3');
INSERT INTO `lz_region` VALUES ('750', '80', '高明区', '3');
INSERT INTO `lz_region` VALUES ('751', '81', '东源县', '3');
INSERT INTO `lz_region` VALUES ('752', '81', '和平县', '3');
INSERT INTO `lz_region` VALUES ('753', '81', '源城区', '3');
INSERT INTO `lz_region` VALUES ('754', '81', '连平县', '3');
INSERT INTO `lz_region` VALUES ('755', '81', '龙川县', '3');
INSERT INTO `lz_region` VALUES ('756', '81', '紫金县', '3');
INSERT INTO `lz_region` VALUES ('757', '82', '惠阳区', '3');
INSERT INTO `lz_region` VALUES ('758', '82', '惠城区', '3');
INSERT INTO `lz_region` VALUES ('759', '82', '大亚湾', '3');
INSERT INTO `lz_region` VALUES ('760', '82', '博罗县', '3');
INSERT INTO `lz_region` VALUES ('761', '82', '惠东县', '3');
INSERT INTO `lz_region` VALUES ('762', '82', '龙门县', '3');
INSERT INTO `lz_region` VALUES ('763', '83', '江海区', '3');
INSERT INTO `lz_region` VALUES ('764', '83', '蓬江区', '3');
INSERT INTO `lz_region` VALUES ('765', '83', '新会区', '3');
INSERT INTO `lz_region` VALUES ('766', '83', '台山市', '3');
INSERT INTO `lz_region` VALUES ('767', '83', '开平市', '3');
INSERT INTO `lz_region` VALUES ('768', '83', '鹤山市', '3');
INSERT INTO `lz_region` VALUES ('769', '83', '恩平市', '3');
INSERT INTO `lz_region` VALUES ('770', '84', '榕城区', '3');
INSERT INTO `lz_region` VALUES ('771', '84', '普宁市', '3');
INSERT INTO `lz_region` VALUES ('772', '84', '揭东县', '3');
INSERT INTO `lz_region` VALUES ('773', '84', '揭西县', '3');
INSERT INTO `lz_region` VALUES ('774', '84', '惠来县', '3');
INSERT INTO `lz_region` VALUES ('775', '85', '茂南区', '3');
INSERT INTO `lz_region` VALUES ('776', '85', '茂港区', '3');
INSERT INTO `lz_region` VALUES ('777', '85', '高州市', '3');
INSERT INTO `lz_region` VALUES ('778', '85', '化州市', '3');
INSERT INTO `lz_region` VALUES ('779', '85', '信宜市', '3');
INSERT INTO `lz_region` VALUES ('780', '85', '电白县', '3');
INSERT INTO `lz_region` VALUES ('781', '86', '梅县', '3');
INSERT INTO `lz_region` VALUES ('782', '86', '梅江区', '3');
INSERT INTO `lz_region` VALUES ('783', '86', '兴宁市', '3');
INSERT INTO `lz_region` VALUES ('784', '86', '大埔县', '3');
INSERT INTO `lz_region` VALUES ('785', '86', '丰顺县', '3');
INSERT INTO `lz_region` VALUES ('786', '86', '五华县', '3');
INSERT INTO `lz_region` VALUES ('787', '86', '平远县', '3');
INSERT INTO `lz_region` VALUES ('788', '86', '蕉岭县', '3');
INSERT INTO `lz_region` VALUES ('789', '87', '清城区', '3');
INSERT INTO `lz_region` VALUES ('790', '87', '英德市', '3');
INSERT INTO `lz_region` VALUES ('791', '87', '连州市', '3');
INSERT INTO `lz_region` VALUES ('792', '87', '佛冈县', '3');
INSERT INTO `lz_region` VALUES ('793', '87', '阳山县', '3');
INSERT INTO `lz_region` VALUES ('794', '87', '清新县', '3');
INSERT INTO `lz_region` VALUES ('795', '87', '连山', '3');
INSERT INTO `lz_region` VALUES ('796', '87', '连南', '3');
INSERT INTO `lz_region` VALUES ('797', '88', '南澳县', '3');
INSERT INTO `lz_region` VALUES ('798', '88', '潮阳区', '3');
INSERT INTO `lz_region` VALUES ('799', '88', '澄海区', '3');
INSERT INTO `lz_region` VALUES ('800', '88', '龙湖区', '3');
INSERT INTO `lz_region` VALUES ('801', '88', '金平区', '3');
INSERT INTO `lz_region` VALUES ('802', '88', '濠江区', '3');
INSERT INTO `lz_region` VALUES ('803', '88', '潮南区', '3');
INSERT INTO `lz_region` VALUES ('804', '89', '城区', '3');
INSERT INTO `lz_region` VALUES ('805', '89', '陆丰市', '3');
INSERT INTO `lz_region` VALUES ('806', '89', '海丰县', '3');
INSERT INTO `lz_region` VALUES ('807', '89', '陆河县', '3');
INSERT INTO `lz_region` VALUES ('808', '90', '曲江县', '3');
INSERT INTO `lz_region` VALUES ('809', '90', '浈江区', '3');
INSERT INTO `lz_region` VALUES ('810', '90', '武江区', '3');
INSERT INTO `lz_region` VALUES ('811', '90', '曲江区', '3');
INSERT INTO `lz_region` VALUES ('812', '90', '乐昌市', '3');
INSERT INTO `lz_region` VALUES ('813', '90', '南雄市', '3');
INSERT INTO `lz_region` VALUES ('814', '90', '始兴县', '3');
INSERT INTO `lz_region` VALUES ('815', '90', '仁化县', '3');
INSERT INTO `lz_region` VALUES ('816', '90', '翁源县', '3');
INSERT INTO `lz_region` VALUES ('817', '90', '新丰县', '3');
INSERT INTO `lz_region` VALUES ('818', '90', '乳源', '3');
INSERT INTO `lz_region` VALUES ('819', '91', '江城区', '3');
INSERT INTO `lz_region` VALUES ('820', '91', '阳春市', '3');
INSERT INTO `lz_region` VALUES ('821', '91', '阳西县', '3');
INSERT INTO `lz_region` VALUES ('822', '91', '阳东县', '3');
INSERT INTO `lz_region` VALUES ('823', '92', '云城区', '3');
INSERT INTO `lz_region` VALUES ('824', '92', '罗定市', '3');
INSERT INTO `lz_region` VALUES ('825', '92', '新兴县', '3');
INSERT INTO `lz_region` VALUES ('826', '92', '郁南县', '3');
INSERT INTO `lz_region` VALUES ('827', '92', '云安县', '3');
INSERT INTO `lz_region` VALUES ('828', '93', '赤坎区', '3');
INSERT INTO `lz_region` VALUES ('829', '93', '霞山区', '3');
INSERT INTO `lz_region` VALUES ('830', '93', '坡头区', '3');
INSERT INTO `lz_region` VALUES ('831', '93', '麻章区', '3');
INSERT INTO `lz_region` VALUES ('832', '93', '廉江市', '3');
INSERT INTO `lz_region` VALUES ('833', '93', '雷州市', '3');
INSERT INTO `lz_region` VALUES ('834', '93', '吴川市', '3');
INSERT INTO `lz_region` VALUES ('835', '93', '遂溪县', '3');
INSERT INTO `lz_region` VALUES ('836', '93', '徐闻县', '3');
INSERT INTO `lz_region` VALUES ('837', '94', '肇庆市', '3');
INSERT INTO `lz_region` VALUES ('838', '94', '高要市', '3');
INSERT INTO `lz_region` VALUES ('839', '94', '四会市', '3');
INSERT INTO `lz_region` VALUES ('840', '94', '广宁县', '3');
INSERT INTO `lz_region` VALUES ('841', '94', '怀集县', '3');
INSERT INTO `lz_region` VALUES ('842', '94', '封开县', '3');
INSERT INTO `lz_region` VALUES ('843', '94', '德庆县', '3');
INSERT INTO `lz_region` VALUES ('844', '95', '石岐街道', '3');
INSERT INTO `lz_region` VALUES ('845', '95', '东区街道', '3');
INSERT INTO `lz_region` VALUES ('846', '95', '西区街道', '3');
INSERT INTO `lz_region` VALUES ('847', '95', '环城街道', '3');
INSERT INTO `lz_region` VALUES ('848', '95', '中山港街道', '3');
INSERT INTO `lz_region` VALUES ('849', '95', '五桂山街道', '3');
INSERT INTO `lz_region` VALUES ('850', '96', '香洲区', '3');
INSERT INTO `lz_region` VALUES ('851', '96', '斗门区', '3');
INSERT INTO `lz_region` VALUES ('852', '96', '金湾区', '3');
INSERT INTO `lz_region` VALUES ('853', '97', '邕宁区', '3');
INSERT INTO `lz_region` VALUES ('854', '97', '青秀区', '3');
INSERT INTO `lz_region` VALUES ('855', '97', '兴宁区', '3');
INSERT INTO `lz_region` VALUES ('856', '97', '良庆区', '3');
INSERT INTO `lz_region` VALUES ('857', '97', '西乡塘区', '3');
INSERT INTO `lz_region` VALUES ('858', '97', '江南区', '3');
INSERT INTO `lz_region` VALUES ('859', '97', '武鸣县', '3');
INSERT INTO `lz_region` VALUES ('860', '97', '隆安县', '3');
INSERT INTO `lz_region` VALUES ('861', '97', '马山县', '3');
INSERT INTO `lz_region` VALUES ('862', '97', '上林县', '3');
INSERT INTO `lz_region` VALUES ('863', '97', '宾阳县', '3');
INSERT INTO `lz_region` VALUES ('864', '97', '横县', '3');
INSERT INTO `lz_region` VALUES ('865', '98', '秀峰区', '3');
INSERT INTO `lz_region` VALUES ('866', '98', '叠彩区', '3');
INSERT INTO `lz_region` VALUES ('867', '98', '象山区', '3');
INSERT INTO `lz_region` VALUES ('868', '98', '七星区', '3');
INSERT INTO `lz_region` VALUES ('869', '98', '雁山区', '3');
INSERT INTO `lz_region` VALUES ('870', '98', '阳朔县', '3');
INSERT INTO `lz_region` VALUES ('871', '98', '临桂县', '3');
INSERT INTO `lz_region` VALUES ('872', '98', '灵川县', '3');
INSERT INTO `lz_region` VALUES ('873', '98', '全州县', '3');
INSERT INTO `lz_region` VALUES ('874', '98', '平乐县', '3');
INSERT INTO `lz_region` VALUES ('875', '98', '兴安县', '3');
INSERT INTO `lz_region` VALUES ('876', '98', '灌阳县', '3');
INSERT INTO `lz_region` VALUES ('877', '98', '荔浦县', '3');
INSERT INTO `lz_region` VALUES ('878', '98', '资源县', '3');
INSERT INTO `lz_region` VALUES ('879', '98', '永福县', '3');
INSERT INTO `lz_region` VALUES ('880', '98', '龙胜', '3');
INSERT INTO `lz_region` VALUES ('881', '98', '恭城', '3');
INSERT INTO `lz_region` VALUES ('882', '99', '右江区', '3');
INSERT INTO `lz_region` VALUES ('883', '99', '凌云县', '3');
INSERT INTO `lz_region` VALUES ('884', '99', '平果县', '3');
INSERT INTO `lz_region` VALUES ('885', '99', '西林县', '3');
INSERT INTO `lz_region` VALUES ('886', '99', '乐业县', '3');
INSERT INTO `lz_region` VALUES ('887', '99', '德保县', '3');
INSERT INTO `lz_region` VALUES ('888', '99', '田林县', '3');
INSERT INTO `lz_region` VALUES ('889', '99', '田阳县', '3');
INSERT INTO `lz_region` VALUES ('890', '99', '靖西县', '3');
INSERT INTO `lz_region` VALUES ('891', '99', '田东县', '3');
INSERT INTO `lz_region` VALUES ('892', '99', '那坡县', '3');
INSERT INTO `lz_region` VALUES ('893', '99', '隆林', '3');
INSERT INTO `lz_region` VALUES ('894', '100', '海城区', '3');
INSERT INTO `lz_region` VALUES ('895', '100', '银海区', '3');
INSERT INTO `lz_region` VALUES ('896', '100', '铁山港区', '3');
INSERT INTO `lz_region` VALUES ('897', '100', '合浦县', '3');
INSERT INTO `lz_region` VALUES ('898', '101', '江州区', '3');
INSERT INTO `lz_region` VALUES ('899', '101', '凭祥市', '3');
INSERT INTO `lz_region` VALUES ('900', '101', '宁明县', '3');
INSERT INTO `lz_region` VALUES ('901', '101', '扶绥县', '3');
INSERT INTO `lz_region` VALUES ('902', '101', '龙州县', '3');
INSERT INTO `lz_region` VALUES ('903', '101', '大新县', '3');
INSERT INTO `lz_region` VALUES ('904', '101', '天等县', '3');
INSERT INTO `lz_region` VALUES ('905', '102', '港口区', '3');
INSERT INTO `lz_region` VALUES ('906', '102', '防城区', '3');
INSERT INTO `lz_region` VALUES ('907', '102', '东兴市', '3');
INSERT INTO `lz_region` VALUES ('908', '102', '上思县', '3');
INSERT INTO `lz_region` VALUES ('909', '103', '港北区', '3');
INSERT INTO `lz_region` VALUES ('910', '103', '港南区', '3');
INSERT INTO `lz_region` VALUES ('911', '103', '覃塘区', '3');
INSERT INTO `lz_region` VALUES ('912', '103', '桂平市', '3');
INSERT INTO `lz_region` VALUES ('913', '103', '平南县', '3');
INSERT INTO `lz_region` VALUES ('914', '104', '金城江区', '3');
INSERT INTO `lz_region` VALUES ('915', '104', '宜州市', '3');
INSERT INTO `lz_region` VALUES ('916', '104', '天峨县', '3');
INSERT INTO `lz_region` VALUES ('917', '104', '凤山县', '3');
INSERT INTO `lz_region` VALUES ('918', '104', '南丹县', '3');
INSERT INTO `lz_region` VALUES ('919', '104', '东兰县', '3');
INSERT INTO `lz_region` VALUES ('920', '104', '都安', '3');
INSERT INTO `lz_region` VALUES ('921', '104', '罗城', '3');
INSERT INTO `lz_region` VALUES ('922', '104', '巴马', '3');
INSERT INTO `lz_region` VALUES ('923', '104', '环江', '3');
INSERT INTO `lz_region` VALUES ('924', '104', '大化', '3');
INSERT INTO `lz_region` VALUES ('925', '105', '八步区', '3');
INSERT INTO `lz_region` VALUES ('926', '105', '钟山县', '3');
INSERT INTO `lz_region` VALUES ('927', '105', '昭平县', '3');
INSERT INTO `lz_region` VALUES ('928', '105', '富川', '3');
INSERT INTO `lz_region` VALUES ('929', '106', '兴宾区', '3');
INSERT INTO `lz_region` VALUES ('930', '106', '合山市', '3');
INSERT INTO `lz_region` VALUES ('931', '106', '象州县', '3');
INSERT INTO `lz_region` VALUES ('932', '106', '武宣县', '3');
INSERT INTO `lz_region` VALUES ('933', '106', '忻城县', '3');
INSERT INTO `lz_region` VALUES ('934', '106', '金秀', '3');
INSERT INTO `lz_region` VALUES ('935', '107', '城中区', '3');
INSERT INTO `lz_region` VALUES ('936', '107', '鱼峰区', '3');
INSERT INTO `lz_region` VALUES ('937', '107', '柳北区', '3');
INSERT INTO `lz_region` VALUES ('938', '107', '柳南区', '3');
INSERT INTO `lz_region` VALUES ('939', '107', '柳江县', '3');
INSERT INTO `lz_region` VALUES ('940', '107', '柳城县', '3');
INSERT INTO `lz_region` VALUES ('941', '107', '鹿寨县', '3');
INSERT INTO `lz_region` VALUES ('942', '107', '融安县', '3');
INSERT INTO `lz_region` VALUES ('943', '107', '融水', '3');
INSERT INTO `lz_region` VALUES ('944', '107', '三江', '3');
INSERT INTO `lz_region` VALUES ('945', '108', '钦南区', '3');
INSERT INTO `lz_region` VALUES ('946', '108', '钦北区', '3');
INSERT INTO `lz_region` VALUES ('947', '108', '灵山县', '3');
INSERT INTO `lz_region` VALUES ('948', '108', '浦北县', '3');
INSERT INTO `lz_region` VALUES ('949', '109', '万秀区', '3');
INSERT INTO `lz_region` VALUES ('950', '109', '蝶山区', '3');
INSERT INTO `lz_region` VALUES ('951', '109', '长洲区', '3');
INSERT INTO `lz_region` VALUES ('952', '109', '岑溪市', '3');
INSERT INTO `lz_region` VALUES ('953', '109', '苍梧县', '3');
INSERT INTO `lz_region` VALUES ('954', '109', '藤县', '3');
INSERT INTO `lz_region` VALUES ('955', '109', '蒙山县', '3');
INSERT INTO `lz_region` VALUES ('956', '110', '玉州区', '3');
INSERT INTO `lz_region` VALUES ('957', '110', '北流市', '3');
INSERT INTO `lz_region` VALUES ('958', '110', '容县', '3');
INSERT INTO `lz_region` VALUES ('959', '110', '陆川县', '3');
INSERT INTO `lz_region` VALUES ('960', '110', '博白县', '3');
INSERT INTO `lz_region` VALUES ('961', '110', '兴业县', '3');
INSERT INTO `lz_region` VALUES ('962', '111', '南明区', '3');
INSERT INTO `lz_region` VALUES ('963', '111', '云岩区', '3');
INSERT INTO `lz_region` VALUES ('964', '111', '花溪区', '3');
INSERT INTO `lz_region` VALUES ('965', '111', '乌当区', '3');
INSERT INTO `lz_region` VALUES ('966', '111', '白云区', '3');
INSERT INTO `lz_region` VALUES ('967', '111', '小河区', '3');
INSERT INTO `lz_region` VALUES ('968', '111', '金阳新区', '3');
INSERT INTO `lz_region` VALUES ('969', '111', '新天园区', '3');
INSERT INTO `lz_region` VALUES ('970', '111', '清镇市', '3');
INSERT INTO `lz_region` VALUES ('971', '111', '开阳县', '3');
INSERT INTO `lz_region` VALUES ('972', '111', '修文县', '3');
INSERT INTO `lz_region` VALUES ('973', '111', '息烽县', '3');
INSERT INTO `lz_region` VALUES ('974', '112', '西秀区', '3');
INSERT INTO `lz_region` VALUES ('975', '112', '关岭', '3');
INSERT INTO `lz_region` VALUES ('976', '112', '镇宁', '3');
INSERT INTO `lz_region` VALUES ('977', '112', '紫云', '3');
INSERT INTO `lz_region` VALUES ('978', '112', '平坝县', '3');
INSERT INTO `lz_region` VALUES ('979', '112', '普定县', '3');
INSERT INTO `lz_region` VALUES ('980', '113', '毕节市', '3');
INSERT INTO `lz_region` VALUES ('981', '113', '大方县', '3');
INSERT INTO `lz_region` VALUES ('982', '113', '黔西县', '3');
INSERT INTO `lz_region` VALUES ('983', '113', '金沙县', '3');
INSERT INTO `lz_region` VALUES ('984', '113', '织金县', '3');
INSERT INTO `lz_region` VALUES ('985', '113', '纳雍县', '3');
INSERT INTO `lz_region` VALUES ('986', '113', '赫章县', '3');
INSERT INTO `lz_region` VALUES ('987', '113', '威宁', '3');
INSERT INTO `lz_region` VALUES ('988', '114', '钟山区', '3');
INSERT INTO `lz_region` VALUES ('989', '114', '六枝特区', '3');
INSERT INTO `lz_region` VALUES ('990', '114', '水城县', '3');
INSERT INTO `lz_region` VALUES ('991', '114', '盘县', '3');
INSERT INTO `lz_region` VALUES ('992', '115', '凯里市', '3');
INSERT INTO `lz_region` VALUES ('993', '115', '黄平县', '3');
INSERT INTO `lz_region` VALUES ('994', '115', '施秉县', '3');
INSERT INTO `lz_region` VALUES ('995', '115', '三穗县', '3');
INSERT INTO `lz_region` VALUES ('996', '115', '镇远县', '3');
INSERT INTO `lz_region` VALUES ('997', '115', '岑巩县', '3');
INSERT INTO `lz_region` VALUES ('998', '115', '天柱县', '3');
INSERT INTO `lz_region` VALUES ('999', '115', '锦屏县', '3');
INSERT INTO `lz_region` VALUES ('1000', '115', '剑河县', '3');
INSERT INTO `lz_region` VALUES ('1001', '115', '台江县', '3');
INSERT INTO `lz_region` VALUES ('1002', '115', '黎平县', '3');
INSERT INTO `lz_region` VALUES ('1003', '115', '榕江县', '3');
INSERT INTO `lz_region` VALUES ('1004', '115', '从江县', '3');
INSERT INTO `lz_region` VALUES ('1005', '115', '雷山县', '3');
INSERT INTO `lz_region` VALUES ('1006', '115', '麻江县', '3');
INSERT INTO `lz_region` VALUES ('1007', '115', '丹寨县', '3');
INSERT INTO `lz_region` VALUES ('1008', '116', '都匀市', '3');
INSERT INTO `lz_region` VALUES ('1009', '116', '福泉市', '3');
INSERT INTO `lz_region` VALUES ('1010', '116', '荔波县', '3');
INSERT INTO `lz_region` VALUES ('1011', '116', '贵定县', '3');
INSERT INTO `lz_region` VALUES ('1012', '116', '瓮安县', '3');
INSERT INTO `lz_region` VALUES ('1013', '116', '独山县', '3');
INSERT INTO `lz_region` VALUES ('1014', '116', '平塘县', '3');
INSERT INTO `lz_region` VALUES ('1015', '116', '罗甸县', '3');
INSERT INTO `lz_region` VALUES ('1016', '116', '长顺县', '3');
INSERT INTO `lz_region` VALUES ('1017', '116', '龙里县', '3');
INSERT INTO `lz_region` VALUES ('1018', '116', '惠水县', '3');
INSERT INTO `lz_region` VALUES ('1019', '116', '三都', '3');
INSERT INTO `lz_region` VALUES ('1020', '117', '兴义市', '3');
INSERT INTO `lz_region` VALUES ('1021', '117', '兴仁县', '3');
INSERT INTO `lz_region` VALUES ('1022', '117', '普安县', '3');
INSERT INTO `lz_region` VALUES ('1023', '117', '晴隆县', '3');
INSERT INTO `lz_region` VALUES ('1024', '117', '贞丰县', '3');
INSERT INTO `lz_region` VALUES ('1025', '117', '望谟县', '3');
INSERT INTO `lz_region` VALUES ('1026', '117', '册亨县', '3');
INSERT INTO `lz_region` VALUES ('1027', '117', '安龙县', '3');
INSERT INTO `lz_region` VALUES ('1028', '118', '铜仁市', '3');
INSERT INTO `lz_region` VALUES ('1029', '118', '江口县', '3');
INSERT INTO `lz_region` VALUES ('1030', '118', '石阡县', '3');
INSERT INTO `lz_region` VALUES ('1031', '118', '思南县', '3');
INSERT INTO `lz_region` VALUES ('1032', '118', '德江县', '3');
INSERT INTO `lz_region` VALUES ('1033', '118', '玉屏', '3');
INSERT INTO `lz_region` VALUES ('1034', '118', '印江', '3');
INSERT INTO `lz_region` VALUES ('1035', '118', '沿河', '3');
INSERT INTO `lz_region` VALUES ('1036', '118', '松桃', '3');
INSERT INTO `lz_region` VALUES ('1037', '118', '万山特区', '3');
INSERT INTO `lz_region` VALUES ('1038', '119', '红花岗区', '3');
INSERT INTO `lz_region` VALUES ('1039', '119', '务川县', '3');
INSERT INTO `lz_region` VALUES ('1040', '119', '道真县', '3');
INSERT INTO `lz_region` VALUES ('1041', '119', '汇川区', '3');
INSERT INTO `lz_region` VALUES ('1042', '119', '赤水市', '3');
INSERT INTO `lz_region` VALUES ('1043', '119', '仁怀市', '3');
INSERT INTO `lz_region` VALUES ('1044', '119', '遵义县', '3');
INSERT INTO `lz_region` VALUES ('1045', '119', '桐梓县', '3');
INSERT INTO `lz_region` VALUES ('1046', '119', '绥阳县', '3');
INSERT INTO `lz_region` VALUES ('1047', '119', '正安县', '3');
INSERT INTO `lz_region` VALUES ('1048', '119', '凤冈县', '3');
INSERT INTO `lz_region` VALUES ('1049', '119', '湄潭县', '3');
INSERT INTO `lz_region` VALUES ('1050', '119', '余庆县', '3');
INSERT INTO `lz_region` VALUES ('1051', '119', '习水县', '3');
INSERT INTO `lz_region` VALUES ('1052', '119', '道真', '3');
INSERT INTO `lz_region` VALUES ('1053', '119', '务川', '3');
INSERT INTO `lz_region` VALUES ('1054', '120', '秀英区', '3');
INSERT INTO `lz_region` VALUES ('1055', '120', '龙华区', '3');
INSERT INTO `lz_region` VALUES ('1056', '120', '琼山区', '3');
INSERT INTO `lz_region` VALUES ('1057', '120', '美兰区', '3');
INSERT INTO `lz_region` VALUES ('1058', '137', '市区', '3');
INSERT INTO `lz_region` VALUES ('1059', '137', '洋浦开发区', '3');
INSERT INTO `lz_region` VALUES ('1060', '137', '那大镇', '3');
INSERT INTO `lz_region` VALUES ('1061', '137', '王五镇', '3');
INSERT INTO `lz_region` VALUES ('1062', '137', '雅星镇', '3');
INSERT INTO `lz_region` VALUES ('1063', '137', '大成镇', '3');
INSERT INTO `lz_region` VALUES ('1064', '137', '中和镇', '3');
INSERT INTO `lz_region` VALUES ('1065', '137', '峨蔓镇', '3');
INSERT INTO `lz_region` VALUES ('1066', '137', '南丰镇', '3');
INSERT INTO `lz_region` VALUES ('1067', '137', '白马井镇', '3');
INSERT INTO `lz_region` VALUES ('1068', '137', '兰洋镇', '3');
INSERT INTO `lz_region` VALUES ('1069', '137', '和庆镇', '3');
INSERT INTO `lz_region` VALUES ('1070', '137', '海头镇', '3');
INSERT INTO `lz_region` VALUES ('1071', '137', '排浦镇', '3');
INSERT INTO `lz_region` VALUES ('1072', '137', '东成镇', '3');
INSERT INTO `lz_region` VALUES ('1073', '137', '光村镇', '3');
INSERT INTO `lz_region` VALUES ('1074', '137', '木棠镇', '3');
INSERT INTO `lz_region` VALUES ('1075', '137', '新州镇', '3');
INSERT INTO `lz_region` VALUES ('1076', '137', '三都镇', '3');
INSERT INTO `lz_region` VALUES ('1077', '137', '其他', '3');
INSERT INTO `lz_region` VALUES ('1078', '138', '长安区', '3');
INSERT INTO `lz_region` VALUES ('1079', '138', '桥东区', '3');
INSERT INTO `lz_region` VALUES ('1080', '138', '桥西区', '3');
INSERT INTO `lz_region` VALUES ('1081', '138', '新华区', '3');
INSERT INTO `lz_region` VALUES ('1082', '138', '裕华区', '3');
INSERT INTO `lz_region` VALUES ('1083', '138', '井陉矿区', '3');
INSERT INTO `lz_region` VALUES ('1084', '138', '高新区', '3');
INSERT INTO `lz_region` VALUES ('1085', '138', '辛集市', '3');
INSERT INTO `lz_region` VALUES ('1086', '138', '藁城市', '3');
INSERT INTO `lz_region` VALUES ('1087', '138', '晋州市', '3');
INSERT INTO `lz_region` VALUES ('1088', '138', '新乐市', '3');
INSERT INTO `lz_region` VALUES ('1089', '138', '鹿泉市', '3');
INSERT INTO `lz_region` VALUES ('1090', '138', '井陉县', '3');
INSERT INTO `lz_region` VALUES ('1091', '138', '正定县', '3');
INSERT INTO `lz_region` VALUES ('1092', '138', '栾城县', '3');
INSERT INTO `lz_region` VALUES ('1093', '138', '行唐县', '3');
INSERT INTO `lz_region` VALUES ('1094', '138', '灵寿县', '3');
INSERT INTO `lz_region` VALUES ('1095', '138', '高邑县', '3');
INSERT INTO `lz_region` VALUES ('1096', '138', '深泽县', '3');
INSERT INTO `lz_region` VALUES ('1097', '138', '赞皇县', '3');
INSERT INTO `lz_region` VALUES ('1098', '138', '无极县', '3');
INSERT INTO `lz_region` VALUES ('1099', '138', '平山县', '3');
INSERT INTO `lz_region` VALUES ('1100', '138', '元氏县', '3');
INSERT INTO `lz_region` VALUES ('1101', '138', '赵县', '3');
INSERT INTO `lz_region` VALUES ('1102', '139', '新市区', '3');
INSERT INTO `lz_region` VALUES ('1103', '139', '南市区', '3');
INSERT INTO `lz_region` VALUES ('1104', '139', '北市区', '3');
INSERT INTO `lz_region` VALUES ('1105', '139', '涿州市', '3');
INSERT INTO `lz_region` VALUES ('1106', '139', '定州市', '3');
INSERT INTO `lz_region` VALUES ('1107', '139', '安国市', '3');
INSERT INTO `lz_region` VALUES ('1108', '139', '高碑店市', '3');
INSERT INTO `lz_region` VALUES ('1109', '139', '满城县', '3');
INSERT INTO `lz_region` VALUES ('1110', '139', '清苑县', '3');
INSERT INTO `lz_region` VALUES ('1111', '139', '涞水县', '3');
INSERT INTO `lz_region` VALUES ('1112', '139', '阜平县', '3');
INSERT INTO `lz_region` VALUES ('1113', '139', '徐水县', '3');
INSERT INTO `lz_region` VALUES ('1114', '139', '定兴县', '3');
INSERT INTO `lz_region` VALUES ('1115', '139', '唐县', '3');
INSERT INTO `lz_region` VALUES ('1116', '139', '高阳县', '3');
INSERT INTO `lz_region` VALUES ('1117', '139', '容城县', '3');
INSERT INTO `lz_region` VALUES ('1118', '139', '涞源县', '3');
INSERT INTO `lz_region` VALUES ('1119', '139', '望都县', '3');
INSERT INTO `lz_region` VALUES ('1120', '139', '安新县', '3');
INSERT INTO `lz_region` VALUES ('1121', '139', '易县', '3');
INSERT INTO `lz_region` VALUES ('1122', '139', '曲阳县', '3');
INSERT INTO `lz_region` VALUES ('1123', '139', '蠡县', '3');
INSERT INTO `lz_region` VALUES ('1124', '139', '顺平县', '3');
INSERT INTO `lz_region` VALUES ('1125', '139', '博野县', '3');
INSERT INTO `lz_region` VALUES ('1126', '139', '雄县', '3');
INSERT INTO `lz_region` VALUES ('1127', '140', '运河区', '3');
INSERT INTO `lz_region` VALUES ('1128', '140', '新华区', '3');
INSERT INTO `lz_region` VALUES ('1129', '140', '泊头市', '3');
INSERT INTO `lz_region` VALUES ('1130', '140', '任丘市', '3');
INSERT INTO `lz_region` VALUES ('1131', '140', '黄骅市', '3');
INSERT INTO `lz_region` VALUES ('1132', '140', '河间市', '3');
INSERT INTO `lz_region` VALUES ('1133', '140', '沧县', '3');
INSERT INTO `lz_region` VALUES ('1134', '140', '青县', '3');
INSERT INTO `lz_region` VALUES ('1135', '140', '东光县', '3');
INSERT INTO `lz_region` VALUES ('1136', '140', '海兴县', '3');
INSERT INTO `lz_region` VALUES ('1137', '140', '盐山县', '3');
INSERT INTO `lz_region` VALUES ('1138', '140', '肃宁县', '3');
INSERT INTO `lz_region` VALUES ('1139', '140', '南皮县', '3');
INSERT INTO `lz_region` VALUES ('1140', '140', '吴桥县', '3');
INSERT INTO `lz_region` VALUES ('1141', '140', '献县', '3');
INSERT INTO `lz_region` VALUES ('1142', '140', '孟村', '3');
INSERT INTO `lz_region` VALUES ('1143', '141', '双桥区', '3');
INSERT INTO `lz_region` VALUES ('1144', '141', '双滦区', '3');
INSERT INTO `lz_region` VALUES ('1145', '141', '鹰手营子矿区', '3');
INSERT INTO `lz_region` VALUES ('1146', '141', '承德县', '3');
INSERT INTO `lz_region` VALUES ('1147', '141', '兴隆县', '3');
INSERT INTO `lz_region` VALUES ('1148', '141', '平泉县', '3');
INSERT INTO `lz_region` VALUES ('1149', '141', '滦平县', '3');
INSERT INTO `lz_region` VALUES ('1150', '141', '隆化县', '3');
INSERT INTO `lz_region` VALUES ('1151', '141', '丰宁', '3');
INSERT INTO `lz_region` VALUES ('1152', '141', '宽城', '3');
INSERT INTO `lz_region` VALUES ('1153', '141', '围场', '3');
INSERT INTO `lz_region` VALUES ('1154', '142', '从台区', '3');
INSERT INTO `lz_region` VALUES ('1155', '142', '复兴区', '3');
INSERT INTO `lz_region` VALUES ('1156', '142', '邯山区', '3');
INSERT INTO `lz_region` VALUES ('1157', '142', '峰峰矿区', '3');
INSERT INTO `lz_region` VALUES ('1158', '142', '武安市', '3');
INSERT INTO `lz_region` VALUES ('1159', '142', '邯郸县', '3');
INSERT INTO `lz_region` VALUES ('1160', '142', '临漳县', '3');
INSERT INTO `lz_region` VALUES ('1161', '142', '成安县', '3');
INSERT INTO `lz_region` VALUES ('1162', '142', '大名县', '3');
INSERT INTO `lz_region` VALUES ('1163', '142', '涉县', '3');
INSERT INTO `lz_region` VALUES ('1164', '142', '磁县', '3');
INSERT INTO `lz_region` VALUES ('1165', '142', '肥乡县', '3');
INSERT INTO `lz_region` VALUES ('1166', '142', '永年县', '3');
INSERT INTO `lz_region` VALUES ('1167', '142', '邱县', '3');
INSERT INTO `lz_region` VALUES ('1168', '142', '鸡泽县', '3');
INSERT INTO `lz_region` VALUES ('1169', '142', '广平县', '3');
INSERT INTO `lz_region` VALUES ('1170', '142', '馆陶县', '3');
INSERT INTO `lz_region` VALUES ('1171', '142', '魏县', '3');
INSERT INTO `lz_region` VALUES ('1172', '142', '曲周县', '3');
INSERT INTO `lz_region` VALUES ('1173', '143', '桃城区', '3');
INSERT INTO `lz_region` VALUES ('1174', '143', '冀州市', '3');
INSERT INTO `lz_region` VALUES ('1175', '143', '深州市', '3');
INSERT INTO `lz_region` VALUES ('1176', '143', '枣强县', '3');
INSERT INTO `lz_region` VALUES ('1177', '143', '武邑县', '3');
INSERT INTO `lz_region` VALUES ('1178', '143', '武强县', '3');
INSERT INTO `lz_region` VALUES ('1179', '143', '饶阳县', '3');
INSERT INTO `lz_region` VALUES ('1180', '143', '安平县', '3');
INSERT INTO `lz_region` VALUES ('1181', '143', '故城县', '3');
INSERT INTO `lz_region` VALUES ('1182', '143', '景县', '3');
INSERT INTO `lz_region` VALUES ('1183', '143', '阜城县', '3');
INSERT INTO `lz_region` VALUES ('1184', '144', '安次区', '3');
INSERT INTO `lz_region` VALUES ('1185', '144', '广阳区', '3');
INSERT INTO `lz_region` VALUES ('1186', '144', '霸州市', '3');
INSERT INTO `lz_region` VALUES ('1187', '144', '三河市', '3');
INSERT INTO `lz_region` VALUES ('1188', '144', '固安县', '3');
INSERT INTO `lz_region` VALUES ('1189', '144', '永清县', '3');
INSERT INTO `lz_region` VALUES ('1190', '144', '香河县', '3');
INSERT INTO `lz_region` VALUES ('1191', '144', '大城县', '3');
INSERT INTO `lz_region` VALUES ('1192', '144', '文安县', '3');
INSERT INTO `lz_region` VALUES ('1193', '144', '大厂', '3');
INSERT INTO `lz_region` VALUES ('1194', '145', '海港区', '3');
INSERT INTO `lz_region` VALUES ('1195', '145', '山海关区', '3');
INSERT INTO `lz_region` VALUES ('1196', '145', '北戴河区', '3');
INSERT INTO `lz_region` VALUES ('1197', '145', '昌黎县', '3');
INSERT INTO `lz_region` VALUES ('1198', '145', '抚宁县', '3');
INSERT INTO `lz_region` VALUES ('1199', '145', '卢龙县', '3');
INSERT INTO `lz_region` VALUES ('1200', '145', '青龙', '3');
INSERT INTO `lz_region` VALUES ('1201', '146', '路北区', '3');
INSERT INTO `lz_region` VALUES ('1202', '146', '路南区', '3');
INSERT INTO `lz_region` VALUES ('1203', '146', '古冶区', '3');
INSERT INTO `lz_region` VALUES ('1204', '146', '开平区', '3');
INSERT INTO `lz_region` VALUES ('1205', '146', '丰南区', '3');
INSERT INTO `lz_region` VALUES ('1206', '146', '丰润区', '3');
INSERT INTO `lz_region` VALUES ('1207', '146', '遵化市', '3');
INSERT INTO `lz_region` VALUES ('1208', '146', '迁安市', '3');
INSERT INTO `lz_region` VALUES ('1209', '146', '滦县', '3');
INSERT INTO `lz_region` VALUES ('1210', '146', '滦南县', '3');
INSERT INTO `lz_region` VALUES ('1211', '146', '乐亭县', '3');
INSERT INTO `lz_region` VALUES ('1212', '146', '迁西县', '3');
INSERT INTO `lz_region` VALUES ('1213', '146', '玉田县', '3');
INSERT INTO `lz_region` VALUES ('1214', '146', '唐海县', '3');
INSERT INTO `lz_region` VALUES ('1215', '147', '桥东区', '3');
INSERT INTO `lz_region` VALUES ('1216', '147', '桥西区', '3');
INSERT INTO `lz_region` VALUES ('1217', '147', '南宫市', '3');
INSERT INTO `lz_region` VALUES ('1218', '147', '沙河市', '3');
INSERT INTO `lz_region` VALUES ('1219', '147', '邢台县', '3');
INSERT INTO `lz_region` VALUES ('1220', '147', '临城县', '3');
INSERT INTO `lz_region` VALUES ('1221', '147', '内丘县', '3');
INSERT INTO `lz_region` VALUES ('1222', '147', '柏乡县', '3');
INSERT INTO `lz_region` VALUES ('1223', '147', '隆尧县', '3');
INSERT INTO `lz_region` VALUES ('1224', '147', '任县', '3');
INSERT INTO `lz_region` VALUES ('1225', '147', '南和县', '3');
INSERT INTO `lz_region` VALUES ('1226', '147', '宁晋县', '3');
INSERT INTO `lz_region` VALUES ('1227', '147', '巨鹿县', '3');
INSERT INTO `lz_region` VALUES ('1228', '147', '新河县', '3');
INSERT INTO `lz_region` VALUES ('1229', '147', '广宗县', '3');
INSERT INTO `lz_region` VALUES ('1230', '147', '平乡县', '3');
INSERT INTO `lz_region` VALUES ('1231', '147', '威县', '3');
INSERT INTO `lz_region` VALUES ('1232', '147', '清河县', '3');
INSERT INTO `lz_region` VALUES ('1233', '147', '临西县', '3');
INSERT INTO `lz_region` VALUES ('1234', '148', '桥西区', '3');
INSERT INTO `lz_region` VALUES ('1235', '148', '桥东区', '3');
INSERT INTO `lz_region` VALUES ('1236', '148', '宣化区', '3');
INSERT INTO `lz_region` VALUES ('1237', '148', '下花园区', '3');
INSERT INTO `lz_region` VALUES ('1238', '148', '宣化县', '3');
INSERT INTO `lz_region` VALUES ('1239', '148', '张北县', '3');
INSERT INTO `lz_region` VALUES ('1240', '148', '康保县', '3');
INSERT INTO `lz_region` VALUES ('1241', '148', '沽源县', '3');
INSERT INTO `lz_region` VALUES ('1242', '148', '尚义县', '3');
INSERT INTO `lz_region` VALUES ('1243', '148', '蔚县', '3');
INSERT INTO `lz_region` VALUES ('1244', '148', '阳原县', '3');
INSERT INTO `lz_region` VALUES ('1245', '148', '怀安县', '3');
INSERT INTO `lz_region` VALUES ('1246', '148', '万全县', '3');
INSERT INTO `lz_region` VALUES ('1247', '148', '怀来县', '3');
INSERT INTO `lz_region` VALUES ('1248', '148', '涿鹿县', '3');
INSERT INTO `lz_region` VALUES ('1249', '148', '赤城县', '3');
INSERT INTO `lz_region` VALUES ('1250', '148', '崇礼县', '3');
INSERT INTO `lz_region` VALUES ('1251', '149', '金水区', '3');
INSERT INTO `lz_region` VALUES ('1252', '149', '邙山区', '3');
INSERT INTO `lz_region` VALUES ('1253', '149', '二七区', '3');
INSERT INTO `lz_region` VALUES ('1254', '149', '管城区', '3');
INSERT INTO `lz_region` VALUES ('1255', '149', '中原区', '3');
INSERT INTO `lz_region` VALUES ('1256', '149', '上街区', '3');
INSERT INTO `lz_region` VALUES ('1257', '149', '惠济区', '3');
INSERT INTO `lz_region` VALUES ('1258', '149', '郑东新区', '3');
INSERT INTO `lz_region` VALUES ('1259', '149', '经济技术开发区', '3');
INSERT INTO `lz_region` VALUES ('1260', '149', '高新开发区', '3');
INSERT INTO `lz_region` VALUES ('1261', '149', '出口加工区', '3');
INSERT INTO `lz_region` VALUES ('1262', '149', '巩义市', '3');
INSERT INTO `lz_region` VALUES ('1263', '149', '荥阳市', '3');
INSERT INTO `lz_region` VALUES ('1264', '149', '新密市', '3');
INSERT INTO `lz_region` VALUES ('1265', '149', '新郑市', '3');
INSERT INTO `lz_region` VALUES ('1266', '149', '登封市', '3');
INSERT INTO `lz_region` VALUES ('1267', '149', '中牟县', '3');
INSERT INTO `lz_region` VALUES ('1268', '150', '西工区', '3');
INSERT INTO `lz_region` VALUES ('1269', '150', '老城区', '3');
INSERT INTO `lz_region` VALUES ('1270', '150', '涧西区', '3');
INSERT INTO `lz_region` VALUES ('1271', '150', '瀍河回族区', '3');
INSERT INTO `lz_region` VALUES ('1272', '150', '洛龙区', '3');
INSERT INTO `lz_region` VALUES ('1273', '150', '吉利区', '3');
INSERT INTO `lz_region` VALUES ('1274', '150', '偃师市', '3');
INSERT INTO `lz_region` VALUES ('1275', '150', '孟津县', '3');
INSERT INTO `lz_region` VALUES ('1276', '150', '新安县', '3');
INSERT INTO `lz_region` VALUES ('1277', '150', '栾川县', '3');
INSERT INTO `lz_region` VALUES ('1278', '150', '嵩县', '3');
INSERT INTO `lz_region` VALUES ('1279', '150', '汝阳县', '3');
INSERT INTO `lz_region` VALUES ('1280', '150', '宜阳县', '3');
INSERT INTO `lz_region` VALUES ('1281', '150', '洛宁县', '3');
INSERT INTO `lz_region` VALUES ('1282', '150', '伊川县', '3');
INSERT INTO `lz_region` VALUES ('1283', '151', '鼓楼区', '3');
INSERT INTO `lz_region` VALUES ('1284', '151', '龙亭区', '3');
INSERT INTO `lz_region` VALUES ('1285', '151', '顺河回族区', '3');
INSERT INTO `lz_region` VALUES ('1286', '151', '金明区', '3');
INSERT INTO `lz_region` VALUES ('1287', '151', '禹王台区', '3');
INSERT INTO `lz_region` VALUES ('1288', '151', '杞县', '3');
INSERT INTO `lz_region` VALUES ('1289', '151', '通许县', '3');
INSERT INTO `lz_region` VALUES ('1290', '151', '尉氏县', '3');
INSERT INTO `lz_region` VALUES ('1291', '151', '开封县', '3');
INSERT INTO `lz_region` VALUES ('1292', '151', '兰考县', '3');
INSERT INTO `lz_region` VALUES ('1293', '152', '北关区', '3');
INSERT INTO `lz_region` VALUES ('1294', '152', '文峰区', '3');
INSERT INTO `lz_region` VALUES ('1295', '152', '殷都区', '3');
INSERT INTO `lz_region` VALUES ('1296', '152', '龙安区', '3');
INSERT INTO `lz_region` VALUES ('1297', '152', '林州市', '3');
INSERT INTO `lz_region` VALUES ('1298', '152', '安阳县', '3');
INSERT INTO `lz_region` VALUES ('1299', '152', '汤阴县', '3');
INSERT INTO `lz_region` VALUES ('1300', '152', '滑县', '3');
INSERT INTO `lz_region` VALUES ('1301', '152', '内黄县', '3');
INSERT INTO `lz_region` VALUES ('1302', '153', '淇滨区', '3');
INSERT INTO `lz_region` VALUES ('1303', '153', '山城区', '3');
INSERT INTO `lz_region` VALUES ('1304', '153', '鹤山区', '3');
INSERT INTO `lz_region` VALUES ('1305', '153', '浚县', '3');
INSERT INTO `lz_region` VALUES ('1306', '153', '淇县', '3');
INSERT INTO `lz_region` VALUES ('1307', '154', '济源市', '3');
INSERT INTO `lz_region` VALUES ('1308', '155', '解放区', '3');
INSERT INTO `lz_region` VALUES ('1309', '155', '中站区', '3');
INSERT INTO `lz_region` VALUES ('1310', '155', '马村区', '3');
INSERT INTO `lz_region` VALUES ('1311', '155', '山阳区', '3');
INSERT INTO `lz_region` VALUES ('1312', '155', '沁阳市', '3');
INSERT INTO `lz_region` VALUES ('1313', '155', '孟州市', '3');
INSERT INTO `lz_region` VALUES ('1314', '155', '修武县', '3');
INSERT INTO `lz_region` VALUES ('1315', '155', '博爱县', '3');
INSERT INTO `lz_region` VALUES ('1316', '155', '武陟县', '3');
INSERT INTO `lz_region` VALUES ('1317', '155', '温县', '3');
INSERT INTO `lz_region` VALUES ('1318', '156', '卧龙区', '3');
INSERT INTO `lz_region` VALUES ('1319', '156', '宛城区', '3');
INSERT INTO `lz_region` VALUES ('1320', '156', '邓州市', '3');
INSERT INTO `lz_region` VALUES ('1321', '156', '南召县', '3');
INSERT INTO `lz_region` VALUES ('1322', '156', '方城县', '3');
INSERT INTO `lz_region` VALUES ('1323', '156', '西峡县', '3');
INSERT INTO `lz_region` VALUES ('1324', '156', '镇平县', '3');
INSERT INTO `lz_region` VALUES ('1325', '156', '内乡县', '3');
INSERT INTO `lz_region` VALUES ('1326', '156', '淅川县', '3');
INSERT INTO `lz_region` VALUES ('1327', '156', '社旗县', '3');
INSERT INTO `lz_region` VALUES ('1328', '156', '唐河县', '3');
INSERT INTO `lz_region` VALUES ('1329', '156', '新野县', '3');
INSERT INTO `lz_region` VALUES ('1330', '156', '桐柏县', '3');
INSERT INTO `lz_region` VALUES ('1331', '157', '新华区', '3');
INSERT INTO `lz_region` VALUES ('1332', '157', '卫东区', '3');
INSERT INTO `lz_region` VALUES ('1333', '157', '湛河区', '3');
INSERT INTO `lz_region` VALUES ('1334', '157', '石龙区', '3');
INSERT INTO `lz_region` VALUES ('1335', '157', '舞钢市', '3');
INSERT INTO `lz_region` VALUES ('1336', '157', '汝州市', '3');
INSERT INTO `lz_region` VALUES ('1337', '157', '宝丰县', '3');
INSERT INTO `lz_region` VALUES ('1338', '157', '叶县', '3');
INSERT INTO `lz_region` VALUES ('1339', '157', '鲁山县', '3');
INSERT INTO `lz_region` VALUES ('1340', '157', '郏县', '3');
INSERT INTO `lz_region` VALUES ('1341', '158', '湖滨区', '3');
INSERT INTO `lz_region` VALUES ('1342', '158', '义马市', '3');
INSERT INTO `lz_region` VALUES ('1343', '158', '灵宝市', '3');
INSERT INTO `lz_region` VALUES ('1344', '158', '渑池县', '3');
INSERT INTO `lz_region` VALUES ('1345', '158', '陕县', '3');
INSERT INTO `lz_region` VALUES ('1346', '158', '卢氏县', '3');
INSERT INTO `lz_region` VALUES ('1347', '159', '梁园区', '3');
INSERT INTO `lz_region` VALUES ('1348', '159', '睢阳区', '3');
INSERT INTO `lz_region` VALUES ('1349', '159', '永城市', '3');
INSERT INTO `lz_region` VALUES ('1350', '159', '民权县', '3');
INSERT INTO `lz_region` VALUES ('1351', '159', '睢县', '3');
INSERT INTO `lz_region` VALUES ('1352', '159', '宁陵县', '3');
INSERT INTO `lz_region` VALUES ('1353', '159', '虞城县', '3');
INSERT INTO `lz_region` VALUES ('1354', '159', '柘城县', '3');
INSERT INTO `lz_region` VALUES ('1355', '159', '夏邑县', '3');
INSERT INTO `lz_region` VALUES ('1356', '160', '卫滨区', '3');
INSERT INTO `lz_region` VALUES ('1357', '160', '红旗区', '3');
INSERT INTO `lz_region` VALUES ('1358', '160', '凤泉区', '3');
INSERT INTO `lz_region` VALUES ('1359', '160', '牧野区', '3');
INSERT INTO `lz_region` VALUES ('1360', '160', '卫辉市', '3');
INSERT INTO `lz_region` VALUES ('1361', '160', '辉县市', '3');
INSERT INTO `lz_region` VALUES ('1362', '160', '新乡县', '3');
INSERT INTO `lz_region` VALUES ('1363', '160', '获嘉县', '3');
INSERT INTO `lz_region` VALUES ('1364', '160', '原阳县', '3');
INSERT INTO `lz_region` VALUES ('1365', '160', '延津县', '3');
INSERT INTO `lz_region` VALUES ('1366', '160', '封丘县', '3');
INSERT INTO `lz_region` VALUES ('1367', '160', '长垣县', '3');
INSERT INTO `lz_region` VALUES ('1368', '161', '浉河区', '3');
INSERT INTO `lz_region` VALUES ('1369', '161', '平桥区', '3');
INSERT INTO `lz_region` VALUES ('1370', '161', '罗山县', '3');
INSERT INTO `lz_region` VALUES ('1371', '161', '光山县', '3');
INSERT INTO `lz_region` VALUES ('1372', '161', '新县', '3');
INSERT INTO `lz_region` VALUES ('1373', '161', '商城县', '3');
INSERT INTO `lz_region` VALUES ('1374', '161', '固始县', '3');
INSERT INTO `lz_region` VALUES ('1375', '161', '潢川县', '3');
INSERT INTO `lz_region` VALUES ('1376', '161', '淮滨县', '3');
INSERT INTO `lz_region` VALUES ('1377', '161', '息县', '3');
INSERT INTO `lz_region` VALUES ('1378', '162', '魏都区', '3');
INSERT INTO `lz_region` VALUES ('1379', '162', '禹州市', '3');
INSERT INTO `lz_region` VALUES ('1380', '162', '长葛市', '3');
INSERT INTO `lz_region` VALUES ('1381', '162', '许昌县', '3');
INSERT INTO `lz_region` VALUES ('1382', '162', '鄢陵县', '3');
INSERT INTO `lz_region` VALUES ('1383', '162', '襄城县', '3');
INSERT INTO `lz_region` VALUES ('1384', '163', '川汇区', '3');
INSERT INTO `lz_region` VALUES ('1385', '163', '项城市', '3');
INSERT INTO `lz_region` VALUES ('1386', '163', '扶沟县', '3');
INSERT INTO `lz_region` VALUES ('1387', '163', '西华县', '3');
INSERT INTO `lz_region` VALUES ('1388', '163', '商水县', '3');
INSERT INTO `lz_region` VALUES ('1389', '163', '沈丘县', '3');
INSERT INTO `lz_region` VALUES ('1390', '163', '郸城县', '3');
INSERT INTO `lz_region` VALUES ('1391', '163', '淮阳县', '3');
INSERT INTO `lz_region` VALUES ('1392', '163', '太康县', '3');
INSERT INTO `lz_region` VALUES ('1393', '163', '鹿邑县', '3');
INSERT INTO `lz_region` VALUES ('1394', '164', '驿城区', '3');
INSERT INTO `lz_region` VALUES ('1395', '164', '西平县', '3');
INSERT INTO `lz_region` VALUES ('1396', '164', '上蔡县', '3');
INSERT INTO `lz_region` VALUES ('1397', '164', '平舆县', '3');
INSERT INTO `lz_region` VALUES ('1398', '164', '正阳县', '3');
INSERT INTO `lz_region` VALUES ('1399', '164', '确山县', '3');
INSERT INTO `lz_region` VALUES ('1400', '164', '泌阳县', '3');
INSERT INTO `lz_region` VALUES ('1401', '164', '汝南县', '3');
INSERT INTO `lz_region` VALUES ('1402', '164', '遂平县', '3');
INSERT INTO `lz_region` VALUES ('1403', '164', '新蔡县', '3');
INSERT INTO `lz_region` VALUES ('1404', '165', '郾城区', '3');
INSERT INTO `lz_region` VALUES ('1405', '165', '源汇区', '3');
INSERT INTO `lz_region` VALUES ('1406', '165', '召陵区', '3');
INSERT INTO `lz_region` VALUES ('1407', '165', '舞阳县', '3');
INSERT INTO `lz_region` VALUES ('1408', '165', '临颍县', '3');
INSERT INTO `lz_region` VALUES ('1409', '166', '华龙区', '3');
INSERT INTO `lz_region` VALUES ('1410', '166', '清丰县', '3');
INSERT INTO `lz_region` VALUES ('1411', '166', '南乐县', '3');
INSERT INTO `lz_region` VALUES ('1412', '166', '范县', '3');
INSERT INTO `lz_region` VALUES ('1413', '166', '台前县', '3');
INSERT INTO `lz_region` VALUES ('1414', '166', '濮阳县', '3');
INSERT INTO `lz_region` VALUES ('1415', '167', '道里区', '3');
INSERT INTO `lz_region` VALUES ('1416', '167', '南岗区', '3');
INSERT INTO `lz_region` VALUES ('1417', '167', '动力区', '3');
INSERT INTO `lz_region` VALUES ('1418', '167', '平房区', '3');
INSERT INTO `lz_region` VALUES ('1419', '167', '香坊区', '3');
INSERT INTO `lz_region` VALUES ('1420', '167', '太平区', '3');
INSERT INTO `lz_region` VALUES ('1421', '167', '道外区', '3');
INSERT INTO `lz_region` VALUES ('1422', '167', '阿城区', '3');
INSERT INTO `lz_region` VALUES ('1423', '167', '呼兰区', '3');
INSERT INTO `lz_region` VALUES ('1424', '167', '松北区', '3');
INSERT INTO `lz_region` VALUES ('1425', '167', '尚志市', '3');
INSERT INTO `lz_region` VALUES ('1426', '167', '双城市', '3');
INSERT INTO `lz_region` VALUES ('1427', '167', '五常市', '3');
INSERT INTO `lz_region` VALUES ('1428', '167', '方正县', '3');
INSERT INTO `lz_region` VALUES ('1429', '167', '宾县', '3');
INSERT INTO `lz_region` VALUES ('1430', '167', '依兰县', '3');
INSERT INTO `lz_region` VALUES ('1431', '167', '巴彦县', '3');
INSERT INTO `lz_region` VALUES ('1432', '167', '通河县', '3');
INSERT INTO `lz_region` VALUES ('1433', '167', '木兰县', '3');
INSERT INTO `lz_region` VALUES ('1434', '167', '延寿县', '3');
INSERT INTO `lz_region` VALUES ('1435', '168', '萨尔图区', '3');
INSERT INTO `lz_region` VALUES ('1436', '168', '红岗区', '3');
INSERT INTO `lz_region` VALUES ('1437', '168', '龙凤区', '3');
INSERT INTO `lz_region` VALUES ('1438', '168', '让胡路区', '3');
INSERT INTO `lz_region` VALUES ('1439', '168', '大同区', '3');
INSERT INTO `lz_region` VALUES ('1440', '168', '肇州县', '3');
INSERT INTO `lz_region` VALUES ('1441', '168', '肇源县', '3');
INSERT INTO `lz_region` VALUES ('1442', '168', '林甸县', '3');
INSERT INTO `lz_region` VALUES ('1443', '168', '杜尔伯特', '3');
INSERT INTO `lz_region` VALUES ('1444', '169', '呼玛县', '3');
INSERT INTO `lz_region` VALUES ('1445', '169', '漠河县', '3');
INSERT INTO `lz_region` VALUES ('1446', '169', '塔河县', '3');
INSERT INTO `lz_region` VALUES ('1447', '170', '兴山区', '3');
INSERT INTO `lz_region` VALUES ('1448', '170', '工农区', '3');
INSERT INTO `lz_region` VALUES ('1449', '170', '南山区', '3');
INSERT INTO `lz_region` VALUES ('1450', '170', '兴安区', '3');
INSERT INTO `lz_region` VALUES ('1451', '170', '向阳区', '3');
INSERT INTO `lz_region` VALUES ('1452', '170', '东山区', '3');
INSERT INTO `lz_region` VALUES ('1453', '170', '萝北县', '3');
INSERT INTO `lz_region` VALUES ('1454', '170', '绥滨县', '3');
INSERT INTO `lz_region` VALUES ('1455', '171', '爱辉区', '3');
INSERT INTO `lz_region` VALUES ('1456', '171', '五大连池市', '3');
INSERT INTO `lz_region` VALUES ('1457', '171', '北安市', '3');
INSERT INTO `lz_region` VALUES ('1458', '171', '嫩江县', '3');
INSERT INTO `lz_region` VALUES ('1459', '171', '逊克县', '3');
INSERT INTO `lz_region` VALUES ('1460', '171', '孙吴县', '3');
INSERT INTO `lz_region` VALUES ('1461', '172', '鸡冠区', '3');
INSERT INTO `lz_region` VALUES ('1462', '172', '恒山区', '3');
INSERT INTO `lz_region` VALUES ('1463', '172', '城子河区', '3');
INSERT INTO `lz_region` VALUES ('1464', '172', '滴道区', '3');
INSERT INTO `lz_region` VALUES ('1465', '172', '梨树区', '3');
INSERT INTO `lz_region` VALUES ('1466', '172', '虎林市', '3');
INSERT INTO `lz_region` VALUES ('1467', '172', '密山市', '3');
INSERT INTO `lz_region` VALUES ('1468', '172', '鸡东县', '3');
INSERT INTO `lz_region` VALUES ('1469', '173', '前进区', '3');
INSERT INTO `lz_region` VALUES ('1470', '173', '郊区', '3');
INSERT INTO `lz_region` VALUES ('1471', '173', '向阳区', '3');
INSERT INTO `lz_region` VALUES ('1472', '173', '东风区', '3');
INSERT INTO `lz_region` VALUES ('1473', '173', '同江市', '3');
INSERT INTO `lz_region` VALUES ('1474', '173', '富锦市', '3');
INSERT INTO `lz_region` VALUES ('1475', '173', '桦南县', '3');
INSERT INTO `lz_region` VALUES ('1476', '173', '桦川县', '3');
INSERT INTO `lz_region` VALUES ('1477', '173', '汤原县', '3');
INSERT INTO `lz_region` VALUES ('1478', '173', '抚远县', '3');
INSERT INTO `lz_region` VALUES ('1479', '174', '爱民区', '3');
INSERT INTO `lz_region` VALUES ('1480', '174', '东安区', '3');
INSERT INTO `lz_region` VALUES ('1481', '174', '阳明区', '3');
INSERT INTO `lz_region` VALUES ('1482', '174', '西安区', '3');
INSERT INTO `lz_region` VALUES ('1483', '174', '绥芬河市', '3');
INSERT INTO `lz_region` VALUES ('1484', '174', '海林市', '3');
INSERT INTO `lz_region` VALUES ('1485', '174', '宁安市', '3');
INSERT INTO `lz_region` VALUES ('1486', '174', '穆棱市', '3');
INSERT INTO `lz_region` VALUES ('1487', '174', '东宁县', '3');
INSERT INTO `lz_region` VALUES ('1488', '174', '林口县', '3');
INSERT INTO `lz_region` VALUES ('1489', '175', '桃山区', '3');
INSERT INTO `lz_region` VALUES ('1490', '175', '新兴区', '3');
INSERT INTO `lz_region` VALUES ('1491', '175', '茄子河区', '3');
INSERT INTO `lz_region` VALUES ('1492', '175', '勃利县', '3');
INSERT INTO `lz_region` VALUES ('1493', '176', '龙沙区', '3');
INSERT INTO `lz_region` VALUES ('1494', '176', '昂昂溪区', '3');
INSERT INTO `lz_region` VALUES ('1495', '176', '铁峰区', '3');
INSERT INTO `lz_region` VALUES ('1496', '176', '建华区', '3');
INSERT INTO `lz_region` VALUES ('1497', '176', '富拉尔基区', '3');
INSERT INTO `lz_region` VALUES ('1498', '176', '碾子山区', '3');
INSERT INTO `lz_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3');
INSERT INTO `lz_region` VALUES ('1500', '176', '讷河市', '3');
INSERT INTO `lz_region` VALUES ('1501', '176', '龙江县', '3');
INSERT INTO `lz_region` VALUES ('1502', '176', '依安县', '3');
INSERT INTO `lz_region` VALUES ('1503', '176', '泰来县', '3');
INSERT INTO `lz_region` VALUES ('1504', '176', '甘南县', '3');
INSERT INTO `lz_region` VALUES ('1505', '176', '富裕县', '3');
INSERT INTO `lz_region` VALUES ('1506', '176', '克山县', '3');
INSERT INTO `lz_region` VALUES ('1507', '176', '克东县', '3');
INSERT INTO `lz_region` VALUES ('1508', '176', '拜泉县', '3');
INSERT INTO `lz_region` VALUES ('1509', '177', '尖山区', '3');
INSERT INTO `lz_region` VALUES ('1510', '177', '岭东区', '3');
INSERT INTO `lz_region` VALUES ('1511', '177', '四方台区', '3');
INSERT INTO `lz_region` VALUES ('1512', '177', '宝山区', '3');
INSERT INTO `lz_region` VALUES ('1513', '177', '集贤县', '3');
INSERT INTO `lz_region` VALUES ('1514', '177', '友谊县', '3');
INSERT INTO `lz_region` VALUES ('1515', '177', '宝清县', '3');
INSERT INTO `lz_region` VALUES ('1516', '177', '饶河县', '3');
INSERT INTO `lz_region` VALUES ('1517', '178', '北林区', '3');
INSERT INTO `lz_region` VALUES ('1518', '178', '安达市', '3');
INSERT INTO `lz_region` VALUES ('1519', '178', '肇东市', '3');
INSERT INTO `lz_region` VALUES ('1520', '178', '海伦市', '3');
INSERT INTO `lz_region` VALUES ('1521', '178', '望奎县', '3');
INSERT INTO `lz_region` VALUES ('1522', '178', '兰西县', '3');
INSERT INTO `lz_region` VALUES ('1523', '178', '青冈县', '3');
INSERT INTO `lz_region` VALUES ('1524', '178', '庆安县', '3');
INSERT INTO `lz_region` VALUES ('1525', '178', '明水县', '3');
INSERT INTO `lz_region` VALUES ('1526', '178', '绥棱县', '3');
INSERT INTO `lz_region` VALUES ('1527', '179', '伊春区', '3');
INSERT INTO `lz_region` VALUES ('1528', '179', '带岭区', '3');
INSERT INTO `lz_region` VALUES ('1529', '179', '南岔区', '3');
INSERT INTO `lz_region` VALUES ('1530', '179', '金山屯区', '3');
INSERT INTO `lz_region` VALUES ('1531', '179', '西林区', '3');
INSERT INTO `lz_region` VALUES ('1532', '179', '美溪区', '3');
INSERT INTO `lz_region` VALUES ('1533', '179', '乌马河区', '3');
INSERT INTO `lz_region` VALUES ('1534', '179', '翠峦区', '3');
INSERT INTO `lz_region` VALUES ('1535', '179', '友好区', '3');
INSERT INTO `lz_region` VALUES ('1536', '179', '上甘岭区', '3');
INSERT INTO `lz_region` VALUES ('1537', '179', '五营区', '3');
INSERT INTO `lz_region` VALUES ('1538', '179', '红星区', '3');
INSERT INTO `lz_region` VALUES ('1539', '179', '新青区', '3');
INSERT INTO `lz_region` VALUES ('1540', '179', '汤旺河区', '3');
INSERT INTO `lz_region` VALUES ('1541', '179', '乌伊岭区', '3');
INSERT INTO `lz_region` VALUES ('1542', '179', '铁力市', '3');
INSERT INTO `lz_region` VALUES ('1543', '179', '嘉荫县', '3');
INSERT INTO `lz_region` VALUES ('1544', '180', '江岸区', '3');
INSERT INTO `lz_region` VALUES ('1545', '180', '武昌区', '3');
INSERT INTO `lz_region` VALUES ('1546', '180', '江汉区', '3');
INSERT INTO `lz_region` VALUES ('1547', '180', '硚口区', '3');
INSERT INTO `lz_region` VALUES ('1548', '180', '汉阳区', '3');
INSERT INTO `lz_region` VALUES ('1549', '180', '青山区', '3');
INSERT INTO `lz_region` VALUES ('1550', '180', '洪山区', '3');
INSERT INTO `lz_region` VALUES ('1551', '180', '东西湖区', '3');
INSERT INTO `lz_region` VALUES ('1552', '180', '汉南区', '3');
INSERT INTO `lz_region` VALUES ('1553', '180', '蔡甸区', '3');
INSERT INTO `lz_region` VALUES ('1554', '180', '江夏区', '3');
INSERT INTO `lz_region` VALUES ('1555', '180', '黄陂区', '3');
INSERT INTO `lz_region` VALUES ('1556', '180', '新洲区', '3');
INSERT INTO `lz_region` VALUES ('1557', '180', '经济开发区', '3');
INSERT INTO `lz_region` VALUES ('1558', '181', '仙桃市', '3');
INSERT INTO `lz_region` VALUES ('1559', '182', '鄂城区', '3');
INSERT INTO `lz_region` VALUES ('1560', '182', '华容区', '3');
INSERT INTO `lz_region` VALUES ('1561', '182', '梁子湖区', '3');
INSERT INTO `lz_region` VALUES ('1562', '183', '黄州区', '3');
INSERT INTO `lz_region` VALUES ('1563', '183', '麻城市', '3');
INSERT INTO `lz_region` VALUES ('1564', '183', '武穴市', '3');
INSERT INTO `lz_region` VALUES ('1565', '183', '团风县', '3');
INSERT INTO `lz_region` VALUES ('1566', '183', '红安县', '3');
INSERT INTO `lz_region` VALUES ('1567', '183', '罗田县', '3');
INSERT INTO `lz_region` VALUES ('1568', '183', '英山县', '3');
INSERT INTO `lz_region` VALUES ('1569', '183', '浠水县', '3');
INSERT INTO `lz_region` VALUES ('1570', '183', '蕲春县', '3');
INSERT INTO `lz_region` VALUES ('1571', '183', '黄梅县', '3');
INSERT INTO `lz_region` VALUES ('1572', '184', '黄石港区', '3');
INSERT INTO `lz_region` VALUES ('1573', '184', '西塞山区', '3');
INSERT INTO `lz_region` VALUES ('1574', '184', '下陆区', '3');
INSERT INTO `lz_region` VALUES ('1575', '184', '铁山区', '3');
INSERT INTO `lz_region` VALUES ('1576', '184', '大冶市', '3');
INSERT INTO `lz_region` VALUES ('1577', '184', '阳新县', '3');
INSERT INTO `lz_region` VALUES ('1578', '185', '东宝区', '3');
INSERT INTO `lz_region` VALUES ('1579', '185', '掇刀区', '3');
INSERT INTO `lz_region` VALUES ('1580', '185', '钟祥市', '3');
INSERT INTO `lz_region` VALUES ('1581', '185', '京山县', '3');
INSERT INTO `lz_region` VALUES ('1582', '185', '沙洋县', '3');
INSERT INTO `lz_region` VALUES ('1583', '186', '沙市区', '3');
INSERT INTO `lz_region` VALUES ('1584', '186', '荆州区', '3');
INSERT INTO `lz_region` VALUES ('1585', '186', '石首市', '3');
INSERT INTO `lz_region` VALUES ('1586', '186', '洪湖市', '3');
INSERT INTO `lz_region` VALUES ('1587', '186', '松滋市', '3');
INSERT INTO `lz_region` VALUES ('1588', '186', '公安县', '3');
INSERT INTO `lz_region` VALUES ('1589', '186', '监利县', '3');
INSERT INTO `lz_region` VALUES ('1590', '186', '江陵县', '3');
INSERT INTO `lz_region` VALUES ('1591', '187', '潜江市', '3');
INSERT INTO `lz_region` VALUES ('1592', '188', '神农架林区', '3');
INSERT INTO `lz_region` VALUES ('1593', '189', '张湾区', '3');
INSERT INTO `lz_region` VALUES ('1594', '189', '茅箭区', '3');
INSERT INTO `lz_region` VALUES ('1595', '189', '丹江口市', '3');
INSERT INTO `lz_region` VALUES ('1596', '189', '郧县', '3');
INSERT INTO `lz_region` VALUES ('1597', '189', '郧西县', '3');
INSERT INTO `lz_region` VALUES ('1598', '189', '竹山县', '3');
INSERT INTO `lz_region` VALUES ('1599', '189', '竹溪县', '3');
INSERT INTO `lz_region` VALUES ('1600', '189', '房县', '3');
INSERT INTO `lz_region` VALUES ('1601', '190', '曾都区', '3');
INSERT INTO `lz_region` VALUES ('1602', '190', '广水市', '3');
INSERT INTO `lz_region` VALUES ('1603', '191', '天门市', '3');
INSERT INTO `lz_region` VALUES ('1604', '192', '咸安区', '3');
INSERT INTO `lz_region` VALUES ('1605', '192', '赤壁市', '3');
INSERT INTO `lz_region` VALUES ('1606', '192', '嘉鱼县', '3');
INSERT INTO `lz_region` VALUES ('1607', '192', '通城县', '3');
INSERT INTO `lz_region` VALUES ('1608', '192', '崇阳县', '3');
INSERT INTO `lz_region` VALUES ('1609', '192', '通山县', '3');
INSERT INTO `lz_region` VALUES ('1610', '193', '襄城区', '3');
INSERT INTO `lz_region` VALUES ('1611', '193', '樊城区', '3');
INSERT INTO `lz_region` VALUES ('1612', '193', '襄阳区', '3');
INSERT INTO `lz_region` VALUES ('1613', '193', '老河口市', '3');
INSERT INTO `lz_region` VALUES ('1614', '193', '枣阳市', '3');
INSERT INTO `lz_region` VALUES ('1615', '193', '宜城市', '3');
INSERT INTO `lz_region` VALUES ('1616', '193', '南漳县', '3');
INSERT INTO `lz_region` VALUES ('1617', '193', '谷城县', '3');
INSERT INTO `lz_region` VALUES ('1618', '193', '保康县', '3');
INSERT INTO `lz_region` VALUES ('1619', '194', '孝南区', '3');
INSERT INTO `lz_region` VALUES ('1620', '194', '应城市', '3');
INSERT INTO `lz_region` VALUES ('1621', '194', '安陆市', '3');
INSERT INTO `lz_region` VALUES ('1622', '194', '汉川市', '3');
INSERT INTO `lz_region` VALUES ('1623', '194', '孝昌县', '3');
INSERT INTO `lz_region` VALUES ('1624', '194', '大悟县', '3');
INSERT INTO `lz_region` VALUES ('1625', '194', '云梦县', '3');
INSERT INTO `lz_region` VALUES ('1626', '195', '长阳', '3');
INSERT INTO `lz_region` VALUES ('1627', '195', '五峰', '3');
INSERT INTO `lz_region` VALUES ('1628', '195', '西陵区', '3');
INSERT INTO `lz_region` VALUES ('1629', '195', '伍家岗区', '3');
INSERT INTO `lz_region` VALUES ('1630', '195', '点军区', '3');
INSERT INTO `lz_region` VALUES ('1631', '195', '猇亭区', '3');
INSERT INTO `lz_region` VALUES ('1632', '195', '夷陵区', '3');
INSERT INTO `lz_region` VALUES ('1633', '195', '宜都市', '3');
INSERT INTO `lz_region` VALUES ('1634', '195', '当阳市', '3');
INSERT INTO `lz_region` VALUES ('1635', '195', '枝江市', '3');
INSERT INTO `lz_region` VALUES ('1636', '195', '远安县', '3');
INSERT INTO `lz_region` VALUES ('1637', '195', '兴山县', '3');
INSERT INTO `lz_region` VALUES ('1638', '195', '秭归县', '3');
INSERT INTO `lz_region` VALUES ('1639', '196', '恩施市', '3');
INSERT INTO `lz_region` VALUES ('1640', '196', '利川市', '3');
INSERT INTO `lz_region` VALUES ('1641', '196', '建始县', '3');
INSERT INTO `lz_region` VALUES ('1642', '196', '巴东县', '3');
INSERT INTO `lz_region` VALUES ('1643', '196', '宣恩县', '3');
INSERT INTO `lz_region` VALUES ('1644', '196', '咸丰县', '3');
INSERT INTO `lz_region` VALUES ('1645', '196', '来凤县', '3');
INSERT INTO `lz_region` VALUES ('1646', '196', '鹤峰县', '3');
INSERT INTO `lz_region` VALUES ('1647', '197', '岳麓区', '3');
INSERT INTO `lz_region` VALUES ('1648', '197', '芙蓉区', '3');
INSERT INTO `lz_region` VALUES ('1649', '197', '天心区', '3');
INSERT INTO `lz_region` VALUES ('1650', '197', '开福区', '3');
INSERT INTO `lz_region` VALUES ('1651', '197', '雨花区', '3');
INSERT INTO `lz_region` VALUES ('1652', '197', '开发区', '3');
INSERT INTO `lz_region` VALUES ('1653', '197', '浏阳市', '3');
INSERT INTO `lz_region` VALUES ('1654', '197', '长沙县', '3');
INSERT INTO `lz_region` VALUES ('1655', '197', '望城县', '3');
INSERT INTO `lz_region` VALUES ('1656', '197', '宁乡县', '3');
INSERT INTO `lz_region` VALUES ('1657', '198', '永定区', '3');
INSERT INTO `lz_region` VALUES ('1658', '198', '武陵源区', '3');
INSERT INTO `lz_region` VALUES ('1659', '198', '慈利县', '3');
INSERT INTO `lz_region` VALUES ('1660', '198', '桑植县', '3');
INSERT INTO `lz_region` VALUES ('1661', '199', '武陵区', '3');
INSERT INTO `lz_region` VALUES ('1662', '199', '鼎城区', '3');
INSERT INTO `lz_region` VALUES ('1663', '199', '津市市', '3');
INSERT INTO `lz_region` VALUES ('1664', '199', '安乡县', '3');
INSERT INTO `lz_region` VALUES ('1665', '199', '汉寿县', '3');
INSERT INTO `lz_region` VALUES ('1666', '199', '澧县', '3');
INSERT INTO `lz_region` VALUES ('1667', '199', '临澧县', '3');
INSERT INTO `lz_region` VALUES ('1668', '199', '桃源县', '3');
INSERT INTO `lz_region` VALUES ('1669', '199', '石门县', '3');
INSERT INTO `lz_region` VALUES ('1670', '200', '北湖区', '3');
INSERT INTO `lz_region` VALUES ('1671', '200', '苏仙区', '3');
INSERT INTO `lz_region` VALUES ('1672', '200', '资兴市', '3');
INSERT INTO `lz_region` VALUES ('1673', '200', '桂阳县', '3');
INSERT INTO `lz_region` VALUES ('1674', '200', '宜章县', '3');
INSERT INTO `lz_region` VALUES ('1675', '200', '永兴县', '3');
INSERT INTO `lz_region` VALUES ('1676', '200', '嘉禾县', '3');
INSERT INTO `lz_region` VALUES ('1677', '200', '临武县', '3');
INSERT INTO `lz_region` VALUES ('1678', '200', '汝城县', '3');
INSERT INTO `lz_region` VALUES ('1679', '200', '桂东县', '3');
INSERT INTO `lz_region` VALUES ('1680', '200', '安仁县', '3');
INSERT INTO `lz_region` VALUES ('1681', '201', '雁峰区', '3');
INSERT INTO `lz_region` VALUES ('1682', '201', '珠晖区', '3');
INSERT INTO `lz_region` VALUES ('1683', '201', '石鼓区', '3');
INSERT INTO `lz_region` VALUES ('1684', '201', '蒸湘区', '3');
INSERT INTO `lz_region` VALUES ('1685', '201', '南岳区', '3');
INSERT INTO `lz_region` VALUES ('1686', '201', '耒阳市', '3');
INSERT INTO `lz_region` VALUES ('1687', '201', '常宁市', '3');
INSERT INTO `lz_region` VALUES ('1688', '201', '衡阳县', '3');
INSERT INTO `lz_region` VALUES ('1689', '201', '衡南县', '3');
INSERT INTO `lz_region` VALUES ('1690', '201', '衡山县', '3');
INSERT INTO `lz_region` VALUES ('1691', '201', '衡东县', '3');
INSERT INTO `lz_region` VALUES ('1692', '201', '祁东县', '3');
INSERT INTO `lz_region` VALUES ('1693', '202', '鹤城区', '3');
INSERT INTO `lz_region` VALUES ('1694', '202', '靖州', '3');
INSERT INTO `lz_region` VALUES ('1695', '202', '麻阳', '3');
INSERT INTO `lz_region` VALUES ('1696', '202', '通道', '3');
INSERT INTO `lz_region` VALUES ('1697', '202', '新晃', '3');
INSERT INTO `lz_region` VALUES ('1698', '202', '芷江', '3');
INSERT INTO `lz_region` VALUES ('1699', '202', '沅陵县', '3');
INSERT INTO `lz_region` VALUES ('1700', '202', '辰溪县', '3');
INSERT INTO `lz_region` VALUES ('1701', '202', '溆浦县', '3');
INSERT INTO `lz_region` VALUES ('1702', '202', '中方县', '3');
INSERT INTO `lz_region` VALUES ('1703', '202', '会同县', '3');
INSERT INTO `lz_region` VALUES ('1704', '202', '洪江市', '3');
INSERT INTO `lz_region` VALUES ('1705', '203', '娄星区', '3');
INSERT INTO `lz_region` VALUES ('1706', '203', '冷水江市', '3');
INSERT INTO `lz_region` VALUES ('1707', '203', '涟源市', '3');
INSERT INTO `lz_region` VALUES ('1708', '203', '双峰县', '3');
INSERT INTO `lz_region` VALUES ('1709', '203', '新化县', '3');
INSERT INTO `lz_region` VALUES ('1710', '204', '城步', '3');
INSERT INTO `lz_region` VALUES ('1711', '204', '双清区', '3');
INSERT INTO `lz_region` VALUES ('1712', '204', '大祥区', '3');
INSERT INTO `lz_region` VALUES ('1713', '204', '北塔区', '3');
INSERT INTO `lz_region` VALUES ('1714', '204', '武冈市', '3');
INSERT INTO `lz_region` VALUES ('1715', '204', '邵东县', '3');
INSERT INTO `lz_region` VALUES ('1716', '204', '新邵县', '3');
INSERT INTO `lz_region` VALUES ('1717', '204', '邵阳县', '3');
INSERT INTO `lz_region` VALUES ('1718', '204', '隆回县', '3');
INSERT INTO `lz_region` VALUES ('1719', '204', '洞口县', '3');
INSERT INTO `lz_region` VALUES ('1720', '204', '绥宁县', '3');
INSERT INTO `lz_region` VALUES ('1721', '204', '新宁县', '3');
INSERT INTO `lz_region` VALUES ('1722', '205', '岳塘区', '3');
INSERT INTO `lz_region` VALUES ('1723', '205', '雨湖区', '3');
INSERT INTO `lz_region` VALUES ('1724', '205', '湘乡市', '3');
INSERT INTO `lz_region` VALUES ('1725', '205', '韶山市', '3');
INSERT INTO `lz_region` VALUES ('1726', '205', '湘潭县', '3');
INSERT INTO `lz_region` VALUES ('1727', '206', '吉首市', '3');
INSERT INTO `lz_region` VALUES ('1728', '206', '泸溪县', '3');
INSERT INTO `lz_region` VALUES ('1729', '206', '凤凰县', '3');
INSERT INTO `lz_region` VALUES ('1730', '206', '花垣县', '3');
INSERT INTO `lz_region` VALUES ('1731', '206', '保靖县', '3');
INSERT INTO `lz_region` VALUES ('1732', '206', '古丈县', '3');
INSERT INTO `lz_region` VALUES ('1733', '206', '永顺县', '3');
INSERT INTO `lz_region` VALUES ('1734', '206', '龙山县', '3');
INSERT INTO `lz_region` VALUES ('1735', '207', '赫山区', '3');
INSERT INTO `lz_region` VALUES ('1736', '207', '资阳区', '3');
INSERT INTO `lz_region` VALUES ('1737', '207', '沅江市', '3');
INSERT INTO `lz_region` VALUES ('1738', '207', '南县', '3');
INSERT INTO `lz_region` VALUES ('1739', '207', '桃江县', '3');
INSERT INTO `lz_region` VALUES ('1740', '207', '安化县', '3');
INSERT INTO `lz_region` VALUES ('1741', '208', '江华', '3');
INSERT INTO `lz_region` VALUES ('1742', '208', '冷水滩区', '3');
INSERT INTO `lz_region` VALUES ('1743', '208', '零陵区', '3');
INSERT INTO `lz_region` VALUES ('1744', '208', '祁阳县', '3');
INSERT INTO `lz_region` VALUES ('1745', '208', '东安县', '3');
INSERT INTO `lz_region` VALUES ('1746', '208', '双牌县', '3');
INSERT INTO `lz_region` VALUES ('1747', '208', '道县', '3');
INSERT INTO `lz_region` VALUES ('1748', '208', '江永县', '3');
INSERT INTO `lz_region` VALUES ('1749', '208', '宁远县', '3');
INSERT INTO `lz_region` VALUES ('1750', '208', '蓝山县', '3');
INSERT INTO `lz_region` VALUES ('1751', '208', '新田县', '3');
INSERT INTO `lz_region` VALUES ('1752', '209', '岳阳楼区', '3');
INSERT INTO `lz_region` VALUES ('1753', '209', '君山区', '3');
INSERT INTO `lz_region` VALUES ('1754', '209', '云溪区', '3');
INSERT INTO `lz_region` VALUES ('1755', '209', '汨罗市', '3');
INSERT INTO `lz_region` VALUES ('1756', '209', '临湘市', '3');
INSERT INTO `lz_region` VALUES ('1757', '209', '岳阳县', '3');
INSERT INTO `lz_region` VALUES ('1758', '209', '华容县', '3');
INSERT INTO `lz_region` VALUES ('1759', '209', '湘阴县', '3');
INSERT INTO `lz_region` VALUES ('1760', '209', '平江县', '3');
INSERT INTO `lz_region` VALUES ('1761', '210', '天元区', '3');
INSERT INTO `lz_region` VALUES ('1762', '210', '荷塘区', '3');
INSERT INTO `lz_region` VALUES ('1763', '210', '芦淞区', '3');
INSERT INTO `lz_region` VALUES ('1764', '210', '石峰区', '3');
INSERT INTO `lz_region` VALUES ('1765', '210', '醴陵市', '3');
INSERT INTO `lz_region` VALUES ('1766', '210', '株洲县', '3');
INSERT INTO `lz_region` VALUES ('1767', '210', '攸县', '3');
INSERT INTO `lz_region` VALUES ('1768', '210', '茶陵县', '3');
INSERT INTO `lz_region` VALUES ('1769', '210', '炎陵县', '3');
INSERT INTO `lz_region` VALUES ('1770', '211', '朝阳区', '3');
INSERT INTO `lz_region` VALUES ('1771', '211', '宽城区', '3');
INSERT INTO `lz_region` VALUES ('1772', '211', '二道区', '3');
INSERT INTO `lz_region` VALUES ('1773', '211', '南关区', '3');
INSERT INTO `lz_region` VALUES ('1774', '211', '绿园区', '3');
INSERT INTO `lz_region` VALUES ('1775', '211', '双阳区', '3');
INSERT INTO `lz_region` VALUES ('1776', '211', '净月潭开发区', '3');
INSERT INTO `lz_region` VALUES ('1777', '211', '高新技术开发区', '3');
INSERT INTO `lz_region` VALUES ('1778', '211', '经济技术开发区', '3');
INSERT INTO `lz_region` VALUES ('1779', '211', '汽车产业开发区', '3');
INSERT INTO `lz_region` VALUES ('1780', '211', '德惠市', '3');
INSERT INTO `lz_region` VALUES ('1781', '211', '九台市', '3');
INSERT INTO `lz_region` VALUES ('1782', '211', '榆树市', '3');
INSERT INTO `lz_region` VALUES ('1783', '211', '农安县', '3');
INSERT INTO `lz_region` VALUES ('1784', '212', '船营区', '3');
INSERT INTO `lz_region` VALUES ('1785', '212', '昌邑区', '3');
INSERT INTO `lz_region` VALUES ('1786', '212', '龙潭区', '3');
INSERT INTO `lz_region` VALUES ('1787', '212', '丰满区', '3');
INSERT INTO `lz_region` VALUES ('1788', '212', '蛟河市', '3');
INSERT INTO `lz_region` VALUES ('1789', '212', '桦甸市', '3');
INSERT INTO `lz_region` VALUES ('1790', '212', '舒兰市', '3');
INSERT INTO `lz_region` VALUES ('1791', '212', '磐石市', '3');
INSERT INTO `lz_region` VALUES ('1792', '212', '永吉县', '3');
INSERT INTO `lz_region` VALUES ('1793', '213', '洮北区', '3');
INSERT INTO `lz_region` VALUES ('1794', '213', '洮南市', '3');
INSERT INTO `lz_region` VALUES ('1795', '213', '大安市', '3');
INSERT INTO `lz_region` VALUES ('1796', '213', '镇赉县', '3');
INSERT INTO `lz_region` VALUES ('1797', '213', '通榆县', '3');
INSERT INTO `lz_region` VALUES ('1798', '214', '江源区', '3');
INSERT INTO `lz_region` VALUES ('1799', '214', '八道江区', '3');
INSERT INTO `lz_region` VALUES ('1800', '214', '长白', '3');
INSERT INTO `lz_region` VALUES ('1801', '214', '临江市', '3');
INSERT INTO `lz_region` VALUES ('1802', '214', '抚松县', '3');
INSERT INTO `lz_region` VALUES ('1803', '214', '靖宇县', '3');
INSERT INTO `lz_region` VALUES ('1804', '215', '龙山区', '3');
INSERT INTO `lz_region` VALUES ('1805', '215', '西安区', '3');
INSERT INTO `lz_region` VALUES ('1806', '215', '东丰县', '3');
INSERT INTO `lz_region` VALUES ('1807', '215', '东辽县', '3');
INSERT INTO `lz_region` VALUES ('1808', '216', '铁西区', '3');
INSERT INTO `lz_region` VALUES ('1809', '216', '铁东区', '3');
INSERT INTO `lz_region` VALUES ('1810', '216', '伊通', '3');
INSERT INTO `lz_region` VALUES ('1811', '216', '公主岭市', '3');
INSERT INTO `lz_region` VALUES ('1812', '216', '双辽市', '3');
INSERT INTO `lz_region` VALUES ('1813', '216', '梨树县', '3');
INSERT INTO `lz_region` VALUES ('1814', '217', '前郭尔罗斯', '3');
INSERT INTO `lz_region` VALUES ('1815', '217', '宁江区', '3');
INSERT INTO `lz_region` VALUES ('1816', '217', '长岭县', '3');
INSERT INTO `lz_region` VALUES ('1817', '217', '乾安县', '3');
INSERT INTO `lz_region` VALUES ('1818', '217', '扶余县', '3');
INSERT INTO `lz_region` VALUES ('1819', '218', '东昌区', '3');
INSERT INTO `lz_region` VALUES ('1820', '218', '二道江区', '3');
INSERT INTO `lz_region` VALUES ('1821', '218', '梅河口市', '3');
INSERT INTO `lz_region` VALUES ('1822', '218', '集安市', '3');
INSERT INTO `lz_region` VALUES ('1823', '218', '通化县', '3');
INSERT INTO `lz_region` VALUES ('1824', '218', '辉南县', '3');
INSERT INTO `lz_region` VALUES ('1825', '218', '柳河县', '3');
INSERT INTO `lz_region` VALUES ('1826', '219', '延吉市', '3');
INSERT INTO `lz_region` VALUES ('1827', '219', '图们市', '3');
INSERT INTO `lz_region` VALUES ('1828', '219', '敦化市', '3');
INSERT INTO `lz_region` VALUES ('1829', '219', '珲春市', '3');
INSERT INTO `lz_region` VALUES ('1830', '219', '龙井市', '3');
INSERT INTO `lz_region` VALUES ('1831', '219', '和龙市', '3');
INSERT INTO `lz_region` VALUES ('1832', '219', '安图县', '3');
INSERT INTO `lz_region` VALUES ('1833', '219', '汪清县', '3');
INSERT INTO `lz_region` VALUES ('1834', '220', '玄武区', '3');
INSERT INTO `lz_region` VALUES ('1835', '220', '鼓楼区', '3');
INSERT INTO `lz_region` VALUES ('1836', '220', '白下区', '3');
INSERT INTO `lz_region` VALUES ('1837', '220', '建邺区', '3');
INSERT INTO `lz_region` VALUES ('1838', '220', '秦淮区', '3');
INSERT INTO `lz_region` VALUES ('1839', '220', '雨花台区', '3');
INSERT INTO `lz_region` VALUES ('1840', '220', '下关区', '3');
INSERT INTO `lz_region` VALUES ('1841', '220', '栖霞区', '3');
INSERT INTO `lz_region` VALUES ('1842', '220', '浦口区', '3');
INSERT INTO `lz_region` VALUES ('1843', '220', '江宁区', '3');
INSERT INTO `lz_region` VALUES ('1844', '220', '六合区', '3');
INSERT INTO `lz_region` VALUES ('1845', '220', '溧水县', '3');
INSERT INTO `lz_region` VALUES ('1846', '220', '高淳县', '3');
INSERT INTO `lz_region` VALUES ('1847', '221', '沧浪区', '3');
INSERT INTO `lz_region` VALUES ('1848', '221', '金阊区', '3');
INSERT INTO `lz_region` VALUES ('1849', '221', '平江区', '3');
INSERT INTO `lz_region` VALUES ('1850', '221', '虎丘区', '3');
INSERT INTO `lz_region` VALUES ('1851', '221', '吴中区', '3');
INSERT INTO `lz_region` VALUES ('1852', '221', '相城区', '3');
INSERT INTO `lz_region` VALUES ('1853', '221', '园区', '3');
INSERT INTO `lz_region` VALUES ('1854', '221', '新区', '3');
INSERT INTO `lz_region` VALUES ('1855', '221', '常熟市', '3');
INSERT INTO `lz_region` VALUES ('1856', '221', '张家港市', '3');
INSERT INTO `lz_region` VALUES ('1857', '221', '玉山镇', '3');
INSERT INTO `lz_region` VALUES ('1858', '221', '巴城镇', '3');
INSERT INTO `lz_region` VALUES ('1859', '221', '周市镇', '3');
INSERT INTO `lz_region` VALUES ('1860', '221', '陆家镇', '3');
INSERT INTO `lz_region` VALUES ('1861', '221', '花桥镇', '3');
INSERT INTO `lz_region` VALUES ('1862', '221', '淀山湖镇', '3');
INSERT INTO `lz_region` VALUES ('1863', '221', '张浦镇', '3');
INSERT INTO `lz_region` VALUES ('1864', '221', '周庄镇', '3');
INSERT INTO `lz_region` VALUES ('1865', '221', '千灯镇', '3');
INSERT INTO `lz_region` VALUES ('1866', '221', '锦溪镇', '3');
INSERT INTO `lz_region` VALUES ('1867', '221', '开发区', '3');
INSERT INTO `lz_region` VALUES ('1868', '221', '吴江市', '3');
INSERT INTO `lz_region` VALUES ('1869', '221', '太仓市', '3');
INSERT INTO `lz_region` VALUES ('1870', '222', '崇安区', '3');
INSERT INTO `lz_region` VALUES ('1871', '222', '北塘区', '3');
INSERT INTO `lz_region` VALUES ('1872', '222', '南长区', '3');
INSERT INTO `lz_region` VALUES ('1873', '222', '锡山区', '3');
INSERT INTO `lz_region` VALUES ('1874', '222', '惠山区', '3');
INSERT INTO `lz_region` VALUES ('1875', '222', '滨湖区', '3');
INSERT INTO `lz_region` VALUES ('1876', '222', '新区', '3');
INSERT INTO `lz_region` VALUES ('1877', '222', '江阴市', '3');
INSERT INTO `lz_region` VALUES ('1878', '222', '宜兴市', '3');
INSERT INTO `lz_region` VALUES ('1879', '223', '天宁区', '3');
INSERT INTO `lz_region` VALUES ('1880', '223', '钟楼区', '3');
INSERT INTO `lz_region` VALUES ('1881', '223', '戚墅堰区', '3');
INSERT INTO `lz_region` VALUES ('1882', '223', '郊区', '3');
INSERT INTO `lz_region` VALUES ('1883', '223', '新北区', '3');
INSERT INTO `lz_region` VALUES ('1884', '223', '武进区', '3');
INSERT INTO `lz_region` VALUES ('1885', '223', '溧阳市', '3');
INSERT INTO `lz_region` VALUES ('1886', '223', '金坛市', '3');
INSERT INTO `lz_region` VALUES ('1887', '224', '清河区', '3');
INSERT INTO `lz_region` VALUES ('1888', '224', '清浦区', '3');
INSERT INTO `lz_region` VALUES ('1889', '224', '楚州区', '3');
INSERT INTO `lz_region` VALUES ('1890', '224', '淮阴区', '3');
INSERT INTO `lz_region` VALUES ('1891', '224', '涟水县', '3');
INSERT INTO `lz_region` VALUES ('1892', '224', '洪泽县', '3');
INSERT INTO `lz_region` VALUES ('1893', '224', '盱眙县', '3');
INSERT INTO `lz_region` VALUES ('1894', '224', '金湖县', '3');
INSERT INTO `lz_region` VALUES ('1895', '225', '新浦区', '3');
INSERT INTO `lz_region` VALUES ('1896', '225', '连云区', '3');
INSERT INTO `lz_region` VALUES ('1897', '225', '海州区', '3');
INSERT INTO `lz_region` VALUES ('1898', '225', '赣榆县', '3');
INSERT INTO `lz_region` VALUES ('1899', '225', '东海县', '3');
INSERT INTO `lz_region` VALUES ('1900', '225', '灌云县', '3');
INSERT INTO `lz_region` VALUES ('1901', '225', '灌南县', '3');
INSERT INTO `lz_region` VALUES ('1902', '226', '崇川区', '3');
INSERT INTO `lz_region` VALUES ('1903', '226', '港闸区', '3');
INSERT INTO `lz_region` VALUES ('1904', '226', '经济开发区', '3');
INSERT INTO `lz_region` VALUES ('1905', '226', '启东市', '3');
INSERT INTO `lz_region` VALUES ('1906', '226', '如皋市', '3');
INSERT INTO `lz_region` VALUES ('1907', '226', '通州市', '3');
INSERT INTO `lz_region` VALUES ('1908', '226', '海门市', '3');
INSERT INTO `lz_region` VALUES ('1909', '226', '海安县', '3');
INSERT INTO `lz_region` VALUES ('1910', '226', '如东县', '3');
INSERT INTO `lz_region` VALUES ('1911', '227', '宿城区', '3');
INSERT INTO `lz_region` VALUES ('1912', '227', '宿豫区', '3');
INSERT INTO `lz_region` VALUES ('1913', '227', '宿豫县', '3');
INSERT INTO `lz_region` VALUES ('1914', '227', '沭阳县', '3');
INSERT INTO `lz_region` VALUES ('1915', '227', '泗阳县', '3');
INSERT INTO `lz_region` VALUES ('1916', '227', '泗洪县', '3');
INSERT INTO `lz_region` VALUES ('1917', '228', '海陵区', '3');
INSERT INTO `lz_region` VALUES ('1918', '228', '高港区', '3');
INSERT INTO `lz_region` VALUES ('1919', '228', '兴化市', '3');
INSERT INTO `lz_region` VALUES ('1920', '228', '靖江市', '3');
INSERT INTO `lz_region` VALUES ('1921', '228', '泰兴市', '3');
INSERT INTO `lz_region` VALUES ('1922', '228', '姜堰市', '3');
INSERT INTO `lz_region` VALUES ('1923', '229', '云龙区', '3');
INSERT INTO `lz_region` VALUES ('1924', '229', '鼓楼区', '3');
INSERT INTO `lz_region` VALUES ('1925', '229', '九里区', '3');
INSERT INTO `lz_region` VALUES ('1926', '229', '贾汪区', '3');
INSERT INTO `lz_region` VALUES ('1927', '229', '泉山区', '3');
INSERT INTO `lz_region` VALUES ('1928', '229', '新沂市', '3');
INSERT INTO `lz_region` VALUES ('1929', '229', '邳州市', '3');
INSERT INTO `lz_region` VALUES ('1930', '229', '丰县', '3');
INSERT INTO `lz_region` VALUES ('1931', '229', '沛县', '3');
INSERT INTO `lz_region` VALUES ('1932', '229', '铜山县', '3');
INSERT INTO `lz_region` VALUES ('1933', '229', '睢宁县', '3');
INSERT INTO `lz_region` VALUES ('1934', '230', '城区', '3');
INSERT INTO `lz_region` VALUES ('1935', '230', '亭湖区', '3');
INSERT INTO `lz_region` VALUES ('1936', '230', '盐都区', '3');
INSERT INTO `lz_region` VALUES ('1937', '230', '盐都县', '3');
INSERT INTO `lz_region` VALUES ('1938', '230', '东台市', '3');
INSERT INTO `lz_region` VALUES ('1939', '230', '大丰市', '3');
INSERT INTO `lz_region` VALUES ('1940', '230', '响水县', '3');
INSERT INTO `lz_region` VALUES ('1941', '230', '滨海县', '3');
INSERT INTO `lz_region` VALUES ('1942', '230', '阜宁县', '3');
INSERT INTO `lz_region` VALUES ('1943', '230', '射阳县', '3');
INSERT INTO `lz_region` VALUES ('1944', '230', '建湖县', '3');
INSERT INTO `lz_region` VALUES ('1945', '231', '广陵区', '3');
INSERT INTO `lz_region` VALUES ('1946', '231', '维扬区', '3');
INSERT INTO `lz_region` VALUES ('1947', '231', '邗江区', '3');
INSERT INTO `lz_region` VALUES ('1948', '231', '仪征市', '3');
INSERT INTO `lz_region` VALUES ('1949', '231', '高邮市', '3');
INSERT INTO `lz_region` VALUES ('1950', '231', '江都市', '3');
INSERT INTO `lz_region` VALUES ('1951', '231', '宝应县', '3');
INSERT INTO `lz_region` VALUES ('1952', '232', '京口区', '3');
INSERT INTO `lz_region` VALUES ('1953', '232', '润州区', '3');
INSERT INTO `lz_region` VALUES ('1954', '232', '丹徒区', '3');
INSERT INTO `lz_region` VALUES ('1955', '232', '丹阳市', '3');
INSERT INTO `lz_region` VALUES ('1956', '232', '扬中市', '3');
INSERT INTO `lz_region` VALUES ('1957', '232', '句容市', '3');
INSERT INTO `lz_region` VALUES ('1958', '233', '东湖区', '3');
INSERT INTO `lz_region` VALUES ('1959', '233', '西湖区', '3');
INSERT INTO `lz_region` VALUES ('1960', '233', '青云谱区', '3');
INSERT INTO `lz_region` VALUES ('1961', '233', '湾里区', '3');
INSERT INTO `lz_region` VALUES ('1962', '233', '青山湖区', '3');
INSERT INTO `lz_region` VALUES ('1963', '233', '红谷滩新区', '3');
INSERT INTO `lz_region` VALUES ('1964', '233', '昌北区', '3');
INSERT INTO `lz_region` VALUES ('1965', '233', '高新区', '3');
INSERT INTO `lz_region` VALUES ('1966', '233', '南昌县', '3');
INSERT INTO `lz_region` VALUES ('1967', '233', '新建县', '3');
INSERT INTO `lz_region` VALUES ('1968', '233', '安义县', '3');
INSERT INTO `lz_region` VALUES ('1969', '233', '进贤县', '3');
INSERT INTO `lz_region` VALUES ('1970', '234', '临川区', '3');
INSERT INTO `lz_region` VALUES ('1971', '234', '南城县', '3');
INSERT INTO `lz_region` VALUES ('1972', '234', '黎川县', '3');
INSERT INTO `lz_region` VALUES ('1973', '234', '南丰县', '3');
INSERT INTO `lz_region` VALUES ('1974', '234', '崇仁县', '3');
INSERT INTO `lz_region` VALUES ('1975', '234', '乐安县', '3');
INSERT INTO `lz_region` VALUES ('1976', '234', '宜黄县', '3');
INSERT INTO `lz_region` VALUES ('1977', '234', '金溪县', '3');
INSERT INTO `lz_region` VALUES ('1978', '234', '资溪县', '3');
INSERT INTO `lz_region` VALUES ('1979', '234', '东乡县', '3');
INSERT INTO `lz_region` VALUES ('1980', '234', '广昌县', '3');
INSERT INTO `lz_region` VALUES ('1981', '235', '章贡区', '3');
INSERT INTO `lz_region` VALUES ('1982', '235', '于都县', '3');
INSERT INTO `lz_region` VALUES ('1983', '235', '瑞金市', '3');
INSERT INTO `lz_region` VALUES ('1984', '235', '南康市', '3');
INSERT INTO `lz_region` VALUES ('1985', '235', '赣县', '3');
INSERT INTO `lz_region` VALUES ('1986', '235', '信丰县', '3');
INSERT INTO `lz_region` VALUES ('1987', '235', '大余县', '3');
INSERT INTO `lz_region` VALUES ('1988', '235', '上犹县', '3');
INSERT INTO `lz_region` VALUES ('1989', '235', '崇义县', '3');
INSERT INTO `lz_region` VALUES ('1990', '235', '安远县', '3');
INSERT INTO `lz_region` VALUES ('1991', '235', '龙南县', '3');
INSERT INTO `lz_region` VALUES ('1992', '235', '定南县', '3');
INSERT INTO `lz_region` VALUES ('1993', '235', '全南县', '3');
INSERT INTO `lz_region` VALUES ('1994', '235', '宁都县', '3');
INSERT INTO `lz_region` VALUES ('1995', '235', '兴国县', '3');
INSERT INTO `lz_region` VALUES ('1996', '235', '会昌县', '3');
INSERT INTO `lz_region` VALUES ('1997', '235', '寻乌县', '3');
INSERT INTO `lz_region` VALUES ('1998', '235', '石城县', '3');
INSERT INTO `lz_region` VALUES ('1999', '236', '安福县', '3');
INSERT INTO `lz_region` VALUES ('2000', '236', '吉州区', '3');
INSERT INTO `lz_region` VALUES ('2001', '236', '青原区', '3');
INSERT INTO `lz_region` VALUES ('2002', '236', '井冈山市', '3');
INSERT INTO `lz_region` VALUES ('2003', '236', '吉安县', '3');
INSERT INTO `lz_region` VALUES ('2004', '236', '吉水县', '3');
INSERT INTO `lz_region` VALUES ('2005', '236', '峡江县', '3');
INSERT INTO `lz_region` VALUES ('2006', '236', '新干县', '3');
INSERT INTO `lz_region` VALUES ('2007', '236', '永丰县', '3');
INSERT INTO `lz_region` VALUES ('2008', '236', '泰和县', '3');
INSERT INTO `lz_region` VALUES ('2009', '236', '遂川县', '3');
INSERT INTO `lz_region` VALUES ('2010', '236', '万安县', '3');
INSERT INTO `lz_region` VALUES ('2011', '236', '永新县', '3');
INSERT INTO `lz_region` VALUES ('2012', '237', '珠山区', '3');
INSERT INTO `lz_region` VALUES ('2013', '237', '昌江区', '3');
INSERT INTO `lz_region` VALUES ('2014', '237', '乐平市', '3');
INSERT INTO `lz_region` VALUES ('2015', '237', '浮梁县', '3');
INSERT INTO `lz_region` VALUES ('2016', '238', '浔阳区', '3');
INSERT INTO `lz_region` VALUES ('2017', '238', '庐山区', '3');
INSERT INTO `lz_region` VALUES ('2018', '238', '瑞昌市', '3');
INSERT INTO `lz_region` VALUES ('2019', '238', '九江县', '3');
INSERT INTO `lz_region` VALUES ('2020', '238', '武宁县', '3');
INSERT INTO `lz_region` VALUES ('2021', '238', '修水县', '3');
INSERT INTO `lz_region` VALUES ('2022', '238', '永修县', '3');
INSERT INTO `lz_region` VALUES ('2023', '238', '德安县', '3');
INSERT INTO `lz_region` VALUES ('2024', '238', '星子县', '3');
INSERT INTO `lz_region` VALUES ('2025', '238', '都昌县', '3');
INSERT INTO `lz_region` VALUES ('2026', '238', '湖口县', '3');
INSERT INTO `lz_region` VALUES ('2027', '238', '彭泽县', '3');
INSERT INTO `lz_region` VALUES ('2028', '239', '安源区', '3');
INSERT INTO `lz_region` VALUES ('2029', '239', '湘东区', '3');
INSERT INTO `lz_region` VALUES ('2030', '239', '莲花县', '3');
INSERT INTO `lz_region` VALUES ('2031', '239', '芦溪县', '3');
INSERT INTO `lz_region` VALUES ('2032', '239', '上栗县', '3');
INSERT INTO `lz_region` VALUES ('2033', '240', '信州区', '3');
INSERT INTO `lz_region` VALUES ('2034', '240', '德兴市', '3');
INSERT INTO `lz_region` VALUES ('2035', '240', '上饶县', '3');
INSERT INTO `lz_region` VALUES ('2036', '240', '广丰县', '3');
INSERT INTO `lz_region` VALUES ('2037', '240', '玉山县', '3');
INSERT INTO `lz_region` VALUES ('2038', '240', '铅山县', '3');
INSERT INTO `lz_region` VALUES ('2039', '240', '横峰县', '3');
INSERT INTO `lz_region` VALUES ('2040', '240', '弋阳县', '3');
INSERT INTO `lz_region` VALUES ('2041', '240', '余干县', '3');
INSERT INTO `lz_region` VALUES ('2042', '240', '波阳县', '3');
INSERT INTO `lz_region` VALUES ('2043', '240', '万年县', '3');
INSERT INTO `lz_region` VALUES ('2044', '240', '婺源县', '3');
INSERT INTO `lz_region` VALUES ('2045', '241', '渝水区', '3');
INSERT INTO `lz_region` VALUES ('2046', '241', '分宜县', '3');
INSERT INTO `lz_region` VALUES ('2047', '242', '袁州区', '3');
INSERT INTO `lz_region` VALUES ('2048', '242', '丰城市', '3');
INSERT INTO `lz_region` VALUES ('2049', '242', '樟树市', '3');
INSERT INTO `lz_region` VALUES ('2050', '242', '高安市', '3');
INSERT INTO `lz_region` VALUES ('2051', '242', '奉新县', '3');
INSERT INTO `lz_region` VALUES ('2052', '242', '万载县', '3');
INSERT INTO `lz_region` VALUES ('2053', '242', '上高县', '3');
INSERT INTO `lz_region` VALUES ('2054', '242', '宜丰县', '3');
INSERT INTO `lz_region` VALUES ('2055', '242', '靖安县', '3');
INSERT INTO `lz_region` VALUES ('2056', '242', '铜鼓县', '3');
INSERT INTO `lz_region` VALUES ('2057', '243', '月湖区', '3');
INSERT INTO `lz_region` VALUES ('2058', '243', '贵溪市', '3');
INSERT INTO `lz_region` VALUES ('2059', '243', '余江县', '3');
INSERT INTO `lz_region` VALUES ('2060', '244', '沈河区', '3');
INSERT INTO `lz_region` VALUES ('2061', '244', '皇姑区', '3');
INSERT INTO `lz_region` VALUES ('2062', '244', '和平区', '3');
INSERT INTO `lz_region` VALUES ('2063', '244', '大东区', '3');
INSERT INTO `lz_region` VALUES ('2064', '244', '铁西区', '3');
INSERT INTO `lz_region` VALUES ('2065', '244', '苏家屯区', '3');
INSERT INTO `lz_region` VALUES ('2066', '244', '东陵区', '3');
INSERT INTO `lz_region` VALUES ('2067', '244', '沈北新区', '3');
INSERT INTO `lz_region` VALUES ('2068', '244', '于洪区', '3');
INSERT INTO `lz_region` VALUES ('2069', '244', '浑南新区', '3');
INSERT INTO `lz_region` VALUES ('2070', '244', '新民市', '3');
INSERT INTO `lz_region` VALUES ('2071', '244', '辽中县', '3');
INSERT INTO `lz_region` VALUES ('2072', '244', '康平县', '3');
INSERT INTO `lz_region` VALUES ('2073', '244', '法库县', '3');
INSERT INTO `lz_region` VALUES ('2074', '245', '西岗区', '3');
INSERT INTO `lz_region` VALUES ('2075', '245', '中山区', '3');
INSERT INTO `lz_region` VALUES ('2076', '245', '沙河口区', '3');
INSERT INTO `lz_region` VALUES ('2077', '245', '甘井子区', '3');
INSERT INTO `lz_region` VALUES ('2078', '245', '旅顺口区', '3');
INSERT INTO `lz_region` VALUES ('2079', '245', '金州区', '3');
INSERT INTO `lz_region` VALUES ('2080', '245', '开发区', '3');
INSERT INTO `lz_region` VALUES ('2081', '245', '瓦房店市', '3');
INSERT INTO `lz_region` VALUES ('2082', '245', '普兰店市', '3');
INSERT INTO `lz_region` VALUES ('2083', '245', '庄河市', '3');
INSERT INTO `lz_region` VALUES ('2084', '245', '长海县', '3');
INSERT INTO `lz_region` VALUES ('2085', '246', '铁东区', '3');
INSERT INTO `lz_region` VALUES ('2086', '246', '铁西区', '3');
INSERT INTO `lz_region` VALUES ('2087', '246', '立山区', '3');
INSERT INTO `lz_region` VALUES ('2088', '246', '千山区', '3');
INSERT INTO `lz_region` VALUES ('2089', '246', '岫岩', '3');
INSERT INTO `lz_region` VALUES ('2090', '246', '海城市', '3');
INSERT INTO `lz_region` VALUES ('2091', '246', '台安县', '3');
INSERT INTO `lz_region` VALUES ('2092', '247', '本溪', '3');
INSERT INTO `lz_region` VALUES ('2093', '247', '平山区', '3');
INSERT INTO `lz_region` VALUES ('2094', '247', '明山区', '3');
INSERT INTO `lz_region` VALUES ('2095', '247', '溪湖区', '3');
INSERT INTO `lz_region` VALUES ('2096', '247', '南芬区', '3');
INSERT INTO `lz_region` VALUES ('2097', '247', '桓仁', '3');
INSERT INTO `lz_region` VALUES ('2098', '248', '双塔区', '3');
INSERT INTO `lz_region` VALUES ('2099', '248', '龙城区', '3');
INSERT INTO `lz_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3');
INSERT INTO `lz_region` VALUES ('2101', '248', '北票市', '3');
INSERT INTO `lz_region` VALUES ('2102', '248', '凌源市', '3');
INSERT INTO `lz_region` VALUES ('2103', '248', '朝阳县', '3');
INSERT INTO `lz_region` VALUES ('2104', '248', '建平县', '3');
INSERT INTO `lz_region` VALUES ('2105', '249', '振兴区', '3');
INSERT INTO `lz_region` VALUES ('2106', '249', '元宝区', '3');
INSERT INTO `lz_region` VALUES ('2107', '249', '振安区', '3');
INSERT INTO `lz_region` VALUES ('2108', '249', '宽甸', '3');
INSERT INTO `lz_region` VALUES ('2109', '249', '东港市', '3');
INSERT INTO `lz_region` VALUES ('2110', '249', '凤城市', '3');
INSERT INTO `lz_region` VALUES ('2111', '250', '顺城区', '3');
INSERT INTO `lz_region` VALUES ('2112', '250', '新抚区', '3');
INSERT INTO `lz_region` VALUES ('2113', '250', '东洲区', '3');
INSERT INTO `lz_region` VALUES ('2114', '250', '望花区', '3');
INSERT INTO `lz_region` VALUES ('2115', '250', '清原', '3');
INSERT INTO `lz_region` VALUES ('2116', '250', '新宾', '3');
INSERT INTO `lz_region` VALUES ('2117', '250', '抚顺县', '3');
INSERT INTO `lz_region` VALUES ('2118', '251', '阜新', '3');
INSERT INTO `lz_region` VALUES ('2119', '251', '海州区', '3');
INSERT INTO `lz_region` VALUES ('2120', '251', '新邱区', '3');
INSERT INTO `lz_region` VALUES ('2121', '251', '太平区', '3');
INSERT INTO `lz_region` VALUES ('2122', '251', '清河门区', '3');
INSERT INTO `lz_region` VALUES ('2123', '251', '细河区', '3');
INSERT INTO `lz_region` VALUES ('2124', '251', '彰武县', '3');
INSERT INTO `lz_region` VALUES ('2125', '252', '龙港区', '3');
INSERT INTO `lz_region` VALUES ('2126', '252', '南票区', '3');
INSERT INTO `lz_region` VALUES ('2127', '252', '连山区', '3');
INSERT INTO `lz_region` VALUES ('2128', '252', '兴城市', '3');
INSERT INTO `lz_region` VALUES ('2129', '252', '绥中县', '3');
INSERT INTO `lz_region` VALUES ('2130', '252', '建昌县', '3');
INSERT INTO `lz_region` VALUES ('2131', '253', '太和区', '3');
INSERT INTO `lz_region` VALUES ('2132', '253', '古塔区', '3');
INSERT INTO `lz_region` VALUES ('2133', '253', '凌河区', '3');
INSERT INTO `lz_region` VALUES ('2134', '253', '凌海市', '3');
INSERT INTO `lz_region` VALUES ('2135', '253', '北镇市', '3');
INSERT INTO `lz_region` VALUES ('2136', '253', '黑山县', '3');
INSERT INTO `lz_region` VALUES ('2137', '253', '义县', '3');
INSERT INTO `lz_region` VALUES ('2138', '254', '白塔区', '3');
INSERT INTO `lz_region` VALUES ('2139', '254', '文圣区', '3');
INSERT INTO `lz_region` VALUES ('2140', '254', '宏伟区', '3');
INSERT INTO `lz_region` VALUES ('2141', '254', '太子河区', '3');
INSERT INTO `lz_region` VALUES ('2142', '254', '弓长岭区', '3');
INSERT INTO `lz_region` VALUES ('2143', '254', '灯塔市', '3');
INSERT INTO `lz_region` VALUES ('2144', '254', '辽阳县', '3');
INSERT INTO `lz_region` VALUES ('2145', '255', '双台子区', '3');
INSERT INTO `lz_region` VALUES ('2146', '255', '兴隆台区', '3');
INSERT INTO `lz_region` VALUES ('2147', '255', '大洼县', '3');
INSERT INTO `lz_region` VALUES ('2148', '255', '盘山县', '3');
INSERT INTO `lz_region` VALUES ('2149', '256', '银州区', '3');
INSERT INTO `lz_region` VALUES ('2150', '256', '清河区', '3');
INSERT INTO `lz_region` VALUES ('2151', '256', '调兵山市', '3');
INSERT INTO `lz_region` VALUES ('2152', '256', '开原市', '3');
INSERT INTO `lz_region` VALUES ('2153', '256', '铁岭县', '3');
INSERT INTO `lz_region` VALUES ('2154', '256', '西丰县', '3');
INSERT INTO `lz_region` VALUES ('2155', '256', '昌图县', '3');
INSERT INTO `lz_region` VALUES ('2156', '257', '站前区', '3');
INSERT INTO `lz_region` VALUES ('2157', '257', '西市区', '3');
INSERT INTO `lz_region` VALUES ('2158', '257', '鲅鱼圈区', '3');
INSERT INTO `lz_region` VALUES ('2159', '257', '老边区', '3');
INSERT INTO `lz_region` VALUES ('2160', '257', '盖州市', '3');
INSERT INTO `lz_region` VALUES ('2161', '257', '大石桥市', '3');
INSERT INTO `lz_region` VALUES ('2162', '258', '回民区', '3');
INSERT INTO `lz_region` VALUES ('2163', '258', '玉泉区', '3');
INSERT INTO `lz_region` VALUES ('2164', '258', '新城区', '3');
INSERT INTO `lz_region` VALUES ('2165', '258', '赛罕区', '3');
INSERT INTO `lz_region` VALUES ('2166', '258', '清水河县', '3');
INSERT INTO `lz_region` VALUES ('2167', '258', '土默特左旗', '3');
INSERT INTO `lz_region` VALUES ('2168', '258', '托克托县', '3');
INSERT INTO `lz_region` VALUES ('2169', '258', '和林格尔县', '3');
INSERT INTO `lz_region` VALUES ('2170', '258', '武川县', '3');
INSERT INTO `lz_region` VALUES ('2171', '259', '阿拉善左旗', '3');
INSERT INTO `lz_region` VALUES ('2172', '259', '阿拉善右旗', '3');
INSERT INTO `lz_region` VALUES ('2173', '259', '额济纳旗', '3');
INSERT INTO `lz_region` VALUES ('2174', '260', '临河区', '3');
INSERT INTO `lz_region` VALUES ('2175', '260', '五原县', '3');
INSERT INTO `lz_region` VALUES ('2176', '260', '磴口县', '3');
INSERT INTO `lz_region` VALUES ('2177', '260', '乌拉特前旗', '3');
INSERT INTO `lz_region` VALUES ('2178', '260', '乌拉特中旗', '3');
INSERT INTO `lz_region` VALUES ('2179', '260', '乌拉特后旗', '3');
INSERT INTO `lz_region` VALUES ('2180', '260', '杭锦后旗', '3');
INSERT INTO `lz_region` VALUES ('2181', '261', '昆都仑区', '3');
INSERT INTO `lz_region` VALUES ('2182', '261', '青山区', '3');
INSERT INTO `lz_region` VALUES ('2183', '261', '东河区', '3');
INSERT INTO `lz_region` VALUES ('2184', '261', '九原区', '3');
INSERT INTO `lz_region` VALUES ('2185', '261', '石拐区', '3');
INSERT INTO `lz_region` VALUES ('2186', '261', '白云矿区', '3');
INSERT INTO `lz_region` VALUES ('2187', '261', '土默特右旗', '3');
INSERT INTO `lz_region` VALUES ('2188', '261', '固阳县', '3');
INSERT INTO `lz_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3');
INSERT INTO `lz_region` VALUES ('2190', '262', '红山区', '3');
INSERT INTO `lz_region` VALUES ('2191', '262', '元宝山区', '3');
INSERT INTO `lz_region` VALUES ('2192', '262', '松山区', '3');
INSERT INTO `lz_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3');
INSERT INTO `lz_region` VALUES ('2194', '262', '巴林左旗', '3');
INSERT INTO `lz_region` VALUES ('2195', '262', '巴林右旗', '3');
INSERT INTO `lz_region` VALUES ('2196', '262', '林西县', '3');
INSERT INTO `lz_region` VALUES ('2197', '262', '克什克腾旗', '3');
INSERT INTO `lz_region` VALUES ('2198', '262', '翁牛特旗', '3');
INSERT INTO `lz_region` VALUES ('2199', '262', '喀喇沁旗', '3');
INSERT INTO `lz_region` VALUES ('2200', '262', '宁城县', '3');
INSERT INTO `lz_region` VALUES ('2201', '262', '敖汉旗', '3');
INSERT INTO `lz_region` VALUES ('2202', '263', '东胜区', '3');
INSERT INTO `lz_region` VALUES ('2203', '263', '达拉特旗', '3');
INSERT INTO `lz_region` VALUES ('2204', '263', '准格尔旗', '3');
INSERT INTO `lz_region` VALUES ('2205', '263', '鄂托克前旗', '3');
INSERT INTO `lz_region` VALUES ('2206', '263', '鄂托克旗', '3');
INSERT INTO `lz_region` VALUES ('2207', '263', '杭锦旗', '3');
INSERT INTO `lz_region` VALUES ('2208', '263', '乌审旗', '3');
INSERT INTO `lz_region` VALUES ('2209', '263', '伊金霍洛旗', '3');
INSERT INTO `lz_region` VALUES ('2210', '264', '海拉尔区', '3');
INSERT INTO `lz_region` VALUES ('2211', '264', '莫力达瓦', '3');
INSERT INTO `lz_region` VALUES ('2212', '264', '满洲里市', '3');
INSERT INTO `lz_region` VALUES ('2213', '264', '牙克石市', '3');
INSERT INTO `lz_region` VALUES ('2214', '264', '扎兰屯市', '3');
INSERT INTO `lz_region` VALUES ('2215', '264', '额尔古纳市', '3');
INSERT INTO `lz_region` VALUES ('2216', '264', '根河市', '3');
INSERT INTO `lz_region` VALUES ('2217', '264', '阿荣旗', '3');
INSERT INTO `lz_region` VALUES ('2218', '264', '鄂伦春自治旗', '3');
INSERT INTO `lz_region` VALUES ('2219', '264', '鄂温克族自治旗', '3');
INSERT INTO `lz_region` VALUES ('2220', '264', '陈巴尔虎旗', '3');
INSERT INTO `lz_region` VALUES ('2221', '264', '新巴尔虎左旗', '3');
INSERT INTO `lz_region` VALUES ('2222', '264', '新巴尔虎右旗', '3');
INSERT INTO `lz_region` VALUES ('2223', '265', '科尔沁区', '3');
INSERT INTO `lz_region` VALUES ('2224', '265', '霍林郭勒市', '3');
INSERT INTO `lz_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3');
INSERT INTO `lz_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3');
INSERT INTO `lz_region` VALUES ('2227', '265', '开鲁县', '3');
INSERT INTO `lz_region` VALUES ('2228', '265', '库伦旗', '3');
INSERT INTO `lz_region` VALUES ('2229', '265', '奈曼旗', '3');
INSERT INTO `lz_region` VALUES ('2230', '265', '扎鲁特旗', '3');
INSERT INTO `lz_region` VALUES ('2231', '266', '海勃湾区', '3');
INSERT INTO `lz_region` VALUES ('2232', '266', '乌达区', '3');
INSERT INTO `lz_region` VALUES ('2233', '266', '海南区', '3');
INSERT INTO `lz_region` VALUES ('2234', '267', '化德县', '3');
INSERT INTO `lz_region` VALUES ('2235', '267', '集宁区', '3');
INSERT INTO `lz_region` VALUES ('2236', '267', '丰镇市', '3');
INSERT INTO `lz_region` VALUES ('2237', '267', '卓资县', '3');
INSERT INTO `lz_region` VALUES ('2238', '267', '商都县', '3');
INSERT INTO `lz_region` VALUES ('2239', '267', '兴和县', '3');
INSERT INTO `lz_region` VALUES ('2240', '267', '凉城县', '3');
INSERT INTO `lz_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3');
INSERT INTO `lz_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3');
INSERT INTO `lz_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3');
INSERT INTO `lz_region` VALUES ('2244', '267', '四子王旗', '3');
INSERT INTO `lz_region` VALUES ('2245', '268', '二连浩特市', '3');
INSERT INTO `lz_region` VALUES ('2246', '268', '锡林浩特市', '3');
INSERT INTO `lz_region` VALUES ('2247', '268', '阿巴嘎旗', '3');
INSERT INTO `lz_region` VALUES ('2248', '268', '苏尼特左旗', '3');
INSERT INTO `lz_region` VALUES ('2249', '268', '苏尼特右旗', '3');
INSERT INTO `lz_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3');
INSERT INTO `lz_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3');
INSERT INTO `lz_region` VALUES ('2252', '268', '太仆寺旗', '3');
INSERT INTO `lz_region` VALUES ('2253', '268', '镶黄旗', '3');
INSERT INTO `lz_region` VALUES ('2254', '268', '正镶白旗', '3');
INSERT INTO `lz_region` VALUES ('2255', '268', '正蓝旗', '3');
INSERT INTO `lz_region` VALUES ('2256', '268', '多伦县', '3');
INSERT INTO `lz_region` VALUES ('2257', '269', '乌兰浩特市', '3');
INSERT INTO `lz_region` VALUES ('2258', '269', '阿尔山市', '3');
INSERT INTO `lz_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3');
INSERT INTO `lz_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3');
INSERT INTO `lz_region` VALUES ('2261', '269', '扎赉特旗', '3');
INSERT INTO `lz_region` VALUES ('2262', '269', '突泉县', '3');
INSERT INTO `lz_region` VALUES ('2263', '270', '西夏区', '3');
INSERT INTO `lz_region` VALUES ('2264', '270', '金凤区', '3');
INSERT INTO `lz_region` VALUES ('2265', '270', '兴庆区', '3');
INSERT INTO `lz_region` VALUES ('2266', '270', '灵武市', '3');
INSERT INTO `lz_region` VALUES ('2267', '270', '永宁县', '3');
INSERT INTO `lz_region` VALUES ('2268', '270', '贺兰县', '3');
INSERT INTO `lz_region` VALUES ('2269', '271', '原州区', '3');
INSERT INTO `lz_region` VALUES ('2270', '271', '海原县', '3');
INSERT INTO `lz_region` VALUES ('2271', '271', '西吉县', '3');
INSERT INTO `lz_region` VALUES ('2272', '271', '隆德县', '3');
INSERT INTO `lz_region` VALUES ('2273', '271', '泾源县', '3');
INSERT INTO `lz_region` VALUES ('2274', '271', '彭阳县', '3');
INSERT INTO `lz_region` VALUES ('2275', '272', '惠农县', '3');
INSERT INTO `lz_region` VALUES ('2276', '272', '大武口区', '3');
INSERT INTO `lz_region` VALUES ('2277', '272', '惠农区', '3');
INSERT INTO `lz_region` VALUES ('2278', '272', '陶乐县', '3');
INSERT INTO `lz_region` VALUES ('2279', '272', '平罗县', '3');
INSERT INTO `lz_region` VALUES ('2280', '273', '利通区', '3');
INSERT INTO `lz_region` VALUES ('2281', '273', '中卫县', '3');
INSERT INTO `lz_region` VALUES ('2282', '273', '青铜峡市', '3');
INSERT INTO `lz_region` VALUES ('2283', '273', '中宁县', '3');
INSERT INTO `lz_region` VALUES ('2284', '273', '盐池县', '3');
INSERT INTO `lz_region` VALUES ('2285', '273', '同心县', '3');
INSERT INTO `lz_region` VALUES ('2286', '274', '沙坡头区', '3');
INSERT INTO `lz_region` VALUES ('2287', '274', '海原县', '3');
INSERT INTO `lz_region` VALUES ('2288', '274', '中宁县', '3');
INSERT INTO `lz_region` VALUES ('2289', '275', '城中区', '3');
INSERT INTO `lz_region` VALUES ('2290', '275', '城东区', '3');
INSERT INTO `lz_region` VALUES ('2291', '275', '城西区', '3');
INSERT INTO `lz_region` VALUES ('2292', '275', '城北区', '3');
INSERT INTO `lz_region` VALUES ('2293', '275', '湟中县', '3');
INSERT INTO `lz_region` VALUES ('2294', '275', '湟源县', '3');
INSERT INTO `lz_region` VALUES ('2295', '275', '大通', '3');
INSERT INTO `lz_region` VALUES ('2296', '276', '玛沁县', '3');
INSERT INTO `lz_region` VALUES ('2297', '276', '班玛县', '3');
INSERT INTO `lz_region` VALUES ('2298', '276', '甘德县', '3');
INSERT INTO `lz_region` VALUES ('2299', '276', '达日县', '3');
INSERT INTO `lz_region` VALUES ('2300', '276', '久治县', '3');
INSERT INTO `lz_region` VALUES ('2301', '276', '玛多县', '3');
INSERT INTO `lz_region` VALUES ('2302', '277', '海晏县', '3');
INSERT INTO `lz_region` VALUES ('2303', '277', '祁连县', '3');
INSERT INTO `lz_region` VALUES ('2304', '277', '刚察县', '3');
INSERT INTO `lz_region` VALUES ('2305', '277', '门源', '3');
INSERT INTO `lz_region` VALUES ('2306', '278', '平安县', '3');
INSERT INTO `lz_region` VALUES ('2307', '278', '乐都县', '3');
INSERT INTO `lz_region` VALUES ('2308', '278', '民和', '3');
INSERT INTO `lz_region` VALUES ('2309', '278', '互助', '3');
INSERT INTO `lz_region` VALUES ('2310', '278', '化隆', '3');
INSERT INTO `lz_region` VALUES ('2311', '278', '循化', '3');
INSERT INTO `lz_region` VALUES ('2312', '279', '共和县', '3');
INSERT INTO `lz_region` VALUES ('2313', '279', '同德县', '3');
INSERT INTO `lz_region` VALUES ('2314', '279', '贵德县', '3');
INSERT INTO `lz_region` VALUES ('2315', '279', '兴海县', '3');
INSERT INTO `lz_region` VALUES ('2316', '279', '贵南县', '3');
INSERT INTO `lz_region` VALUES ('2317', '280', '德令哈市', '3');
INSERT INTO `lz_region` VALUES ('2318', '280', '格尔木市', '3');
INSERT INTO `lz_region` VALUES ('2319', '280', '乌兰县', '3');
INSERT INTO `lz_region` VALUES ('2320', '280', '都兰县', '3');
INSERT INTO `lz_region` VALUES ('2321', '280', '天峻县', '3');
INSERT INTO `lz_region` VALUES ('2322', '281', '同仁县', '3');
INSERT INTO `lz_region` VALUES ('2323', '281', '尖扎县', '3');
INSERT INTO `lz_region` VALUES ('2324', '281', '泽库县', '3');
INSERT INTO `lz_region` VALUES ('2325', '281', '河南蒙古族自治县', '3');
INSERT INTO `lz_region` VALUES ('2326', '282', '玉树县', '3');
INSERT INTO `lz_region` VALUES ('2327', '282', '杂多县', '3');
INSERT INTO `lz_region` VALUES ('2328', '282', '称多县', '3');
INSERT INTO `lz_region` VALUES ('2329', '282', '治多县', '3');
INSERT INTO `lz_region` VALUES ('2330', '282', '囊谦县', '3');
INSERT INTO `lz_region` VALUES ('2331', '282', '曲麻莱县', '3');
INSERT INTO `lz_region` VALUES ('2332', '283', '市中区', '3');
INSERT INTO `lz_region` VALUES ('2333', '283', '历下区', '3');
INSERT INTO `lz_region` VALUES ('2334', '283', '天桥区', '3');
INSERT INTO `lz_region` VALUES ('2335', '283', '槐荫区', '3');
INSERT INTO `lz_region` VALUES ('2336', '283', '历城区', '3');
INSERT INTO `lz_region` VALUES ('2337', '283', '长清区', '3');
INSERT INTO `lz_region` VALUES ('2338', '283', '章丘市', '3');
INSERT INTO `lz_region` VALUES ('2339', '283', '平阴县', '3');
INSERT INTO `lz_region` VALUES ('2340', '283', '济阳县', '3');
INSERT INTO `lz_region` VALUES ('2341', '283', '商河县', '3');
INSERT INTO `lz_region` VALUES ('2342', '284', '市南区', '3');
INSERT INTO `lz_region` VALUES ('2343', '284', '市北区', '3');
INSERT INTO `lz_region` VALUES ('2344', '284', '城阳区', '3');
INSERT INTO `lz_region` VALUES ('2345', '284', '四方区', '3');
INSERT INTO `lz_region` VALUES ('2346', '284', '李沧区', '3');
INSERT INTO `lz_region` VALUES ('2347', '284', '黄岛区', '3');
INSERT INTO `lz_region` VALUES ('2348', '284', '崂山区', '3');
INSERT INTO `lz_region` VALUES ('2349', '284', '胶州市', '3');
INSERT INTO `lz_region` VALUES ('2350', '284', '即墨市', '3');
INSERT INTO `lz_region` VALUES ('2351', '284', '平度市', '3');
INSERT INTO `lz_region` VALUES ('2352', '284', '胶南市', '3');
INSERT INTO `lz_region` VALUES ('2353', '284', '莱西市', '3');
INSERT INTO `lz_region` VALUES ('2354', '285', '滨城区', '3');
INSERT INTO `lz_region` VALUES ('2355', '285', '惠民县', '3');
INSERT INTO `lz_region` VALUES ('2356', '285', '阳信县', '3');
INSERT INTO `lz_region` VALUES ('2357', '285', '无棣县', '3');
INSERT INTO `lz_region` VALUES ('2358', '285', '沾化县', '3');
INSERT INTO `lz_region` VALUES ('2359', '285', '博兴县', '3');
INSERT INTO `lz_region` VALUES ('2360', '285', '邹平县', '3');
INSERT INTO `lz_region` VALUES ('2361', '286', '德城区', '3');
INSERT INTO `lz_region` VALUES ('2362', '286', '陵县', '3');
INSERT INTO `lz_region` VALUES ('2363', '286', '乐陵市', '3');
INSERT INTO `lz_region` VALUES ('2364', '286', '禹城市', '3');
INSERT INTO `lz_region` VALUES ('2365', '286', '宁津县', '3');
INSERT INTO `lz_region` VALUES ('2366', '286', '庆云县', '3');
INSERT INTO `lz_region` VALUES ('2367', '286', '临邑县', '3');
INSERT INTO `lz_region` VALUES ('2368', '286', '齐河县', '3');
INSERT INTO `lz_region` VALUES ('2369', '286', '平原县', '3');
INSERT INTO `lz_region` VALUES ('2370', '286', '夏津县', '3');
INSERT INTO `lz_region` VALUES ('2371', '286', '武城县', '3');
INSERT INTO `lz_region` VALUES ('2372', '287', '东营区', '3');
INSERT INTO `lz_region` VALUES ('2373', '287', '河口区', '3');
INSERT INTO `lz_region` VALUES ('2374', '287', '垦利县', '3');
INSERT INTO `lz_region` VALUES ('2375', '287', '利津县', '3');
INSERT INTO `lz_region` VALUES ('2376', '287', '广饶县', '3');
INSERT INTO `lz_region` VALUES ('2377', '288', '牡丹区', '3');
INSERT INTO `lz_region` VALUES ('2378', '288', '曹县', '3');
INSERT INTO `lz_region` VALUES ('2379', '288', '单县', '3');
INSERT INTO `lz_region` VALUES ('2380', '288', '成武县', '3');
INSERT INTO `lz_region` VALUES ('2381', '288', '巨野县', '3');
INSERT INTO `lz_region` VALUES ('2382', '288', '郓城县', '3');
INSERT INTO `lz_region` VALUES ('2383', '288', '鄄城县', '3');
INSERT INTO `lz_region` VALUES ('2384', '288', '定陶县', '3');
INSERT INTO `lz_region` VALUES ('2385', '288', '东明县', '3');
INSERT INTO `lz_region` VALUES ('2386', '289', '市中区', '3');
INSERT INTO `lz_region` VALUES ('2387', '289', '任城区', '3');
INSERT INTO `lz_region` VALUES ('2388', '289', '曲阜市', '3');
INSERT INTO `lz_region` VALUES ('2389', '289', '兖州市', '3');
INSERT INTO `lz_region` VALUES ('2390', '289', '邹城市', '3');
INSERT INTO `lz_region` VALUES ('2391', '289', '微山县', '3');
INSERT INTO `lz_region` VALUES ('2392', '289', '鱼台县', '3');
INSERT INTO `lz_region` VALUES ('2393', '289', '金乡县', '3');
INSERT INTO `lz_region` VALUES ('2394', '289', '嘉祥县', '3');
INSERT INTO `lz_region` VALUES ('2395', '289', '汶上县', '3');
INSERT INTO `lz_region` VALUES ('2396', '289', '泗水县', '3');
INSERT INTO `lz_region` VALUES ('2397', '289', '梁山县', '3');
INSERT INTO `lz_region` VALUES ('2398', '290', '莱城区', '3');
INSERT INTO `lz_region` VALUES ('2399', '290', '钢城区', '3');
INSERT INTO `lz_region` VALUES ('2400', '291', '东昌府区', '3');
INSERT INTO `lz_region` VALUES ('2401', '291', '临清市', '3');
INSERT INTO `lz_region` VALUES ('2402', '291', '阳谷县', '3');
INSERT INTO `lz_region` VALUES ('2403', '291', '莘县', '3');
INSERT INTO `lz_region` VALUES ('2404', '291', '茌平县', '3');
INSERT INTO `lz_region` VALUES ('2405', '291', '东阿县', '3');
INSERT INTO `lz_region` VALUES ('2406', '291', '冠县', '3');
INSERT INTO `lz_region` VALUES ('2407', '291', '高唐县', '3');
INSERT INTO `lz_region` VALUES ('2408', '292', '兰山区', '3');
INSERT INTO `lz_region` VALUES ('2409', '292', '罗庄区', '3');
INSERT INTO `lz_region` VALUES ('2410', '292', '河东区', '3');
INSERT INTO `lz_region` VALUES ('2411', '292', '沂南县', '3');
INSERT INTO `lz_region` VALUES ('2412', '292', '郯城县', '3');
INSERT INTO `lz_region` VALUES ('2413', '292', '沂水县', '3');
INSERT INTO `lz_region` VALUES ('2414', '292', '苍山县', '3');
INSERT INTO `lz_region` VALUES ('2415', '292', '费县', '3');
INSERT INTO `lz_region` VALUES ('2416', '292', '平邑县', '3');
INSERT INTO `lz_region` VALUES ('2417', '292', '莒南县', '3');
INSERT INTO `lz_region` VALUES ('2418', '292', '蒙阴县', '3');
INSERT INTO `lz_region` VALUES ('2419', '292', '临沭县', '3');
INSERT INTO `lz_region` VALUES ('2420', '293', '东港区', '3');
INSERT INTO `lz_region` VALUES ('2421', '293', '岚山区', '3');
INSERT INTO `lz_region` VALUES ('2422', '293', '五莲县', '3');
INSERT INTO `lz_region` VALUES ('2423', '293', '莒县', '3');
INSERT INTO `lz_region` VALUES ('2424', '294', '泰山区', '3');
INSERT INTO `lz_region` VALUES ('2425', '294', '岱岳区', '3');
INSERT INTO `lz_region` VALUES ('2426', '294', '新泰市', '3');
INSERT INTO `lz_region` VALUES ('2427', '294', '肥城市', '3');
INSERT INTO `lz_region` VALUES ('2428', '294', '宁阳县', '3');
INSERT INTO `lz_region` VALUES ('2429', '294', '东平县', '3');
INSERT INTO `lz_region` VALUES ('2430', '295', '荣成市', '3');
INSERT INTO `lz_region` VALUES ('2431', '295', '乳山市', '3');
INSERT INTO `lz_region` VALUES ('2432', '295', '环翠区', '3');
INSERT INTO `lz_region` VALUES ('2433', '295', '文登市', '3');
INSERT INTO `lz_region` VALUES ('2434', '296', '潍城区', '3');
INSERT INTO `lz_region` VALUES ('2435', '296', '寒亭区', '3');
INSERT INTO `lz_region` VALUES ('2436', '296', '坊子区', '3');
INSERT INTO `lz_region` VALUES ('2437', '296', '奎文区', '3');
INSERT INTO `lz_region` VALUES ('2438', '296', '青州市', '3');
INSERT INTO `lz_region` VALUES ('2439', '296', '诸城市', '3');
INSERT INTO `lz_region` VALUES ('2440', '296', '寿光市', '3');
INSERT INTO `lz_region` VALUES ('2441', '296', '安丘市', '3');
INSERT INTO `lz_region` VALUES ('2442', '296', '高密市', '3');
INSERT INTO `lz_region` VALUES ('2443', '296', '昌邑市', '3');
INSERT INTO `lz_region` VALUES ('2444', '296', '临朐县', '3');
INSERT INTO `lz_region` VALUES ('2445', '296', '昌乐县', '3');
INSERT INTO `lz_region` VALUES ('2446', '297', '芝罘区', '3');
INSERT INTO `lz_region` VALUES ('2447', '297', '福山区', '3');
INSERT INTO `lz_region` VALUES ('2448', '297', '牟平区', '3');
INSERT INTO `lz_region` VALUES ('2449', '297', '莱山区', '3');
INSERT INTO `lz_region` VALUES ('2450', '297', '开发区', '3');
INSERT INTO `lz_region` VALUES ('2451', '297', '龙口市', '3');
INSERT INTO `lz_region` VALUES ('2452', '297', '莱阳市', '3');
INSERT INTO `lz_region` VALUES ('2453', '297', '莱州市', '3');
INSERT INTO `lz_region` VALUES ('2454', '297', '蓬莱市', '3');
INSERT INTO `lz_region` VALUES ('2455', '297', '招远市', '3');
INSERT INTO `lz_region` VALUES ('2456', '297', '栖霞市', '3');
INSERT INTO `lz_region` VALUES ('2457', '297', '海阳市', '3');
INSERT INTO `lz_region` VALUES ('2458', '297', '长岛县', '3');
INSERT INTO `lz_region` VALUES ('2459', '298', '市中区', '3');
INSERT INTO `lz_region` VALUES ('2460', '298', '山亭区', '3');
INSERT INTO `lz_region` VALUES ('2461', '298', '峄城区', '3');
INSERT INTO `lz_region` VALUES ('2462', '298', '台儿庄区', '3');
INSERT INTO `lz_region` VALUES ('2463', '298', '薛城区', '3');
INSERT INTO `lz_region` VALUES ('2464', '298', '滕州市', '3');
INSERT INTO `lz_region` VALUES ('2465', '299', '张店区', '3');
INSERT INTO `lz_region` VALUES ('2466', '299', '临淄区', '3');
INSERT INTO `lz_region` VALUES ('2467', '299', '淄川区', '3');
INSERT INTO `lz_region` VALUES ('2468', '299', '博山区', '3');
INSERT INTO `lz_region` VALUES ('2469', '299', '周村区', '3');
INSERT INTO `lz_region` VALUES ('2470', '299', '桓台县', '3');
INSERT INTO `lz_region` VALUES ('2471', '299', '高青县', '3');
INSERT INTO `lz_region` VALUES ('2472', '299', '沂源县', '3');
INSERT INTO `lz_region` VALUES ('2473', '300', '杏花岭区', '3');
INSERT INTO `lz_region` VALUES ('2474', '300', '小店区', '3');
INSERT INTO `lz_region` VALUES ('2475', '300', '迎泽区', '3');
INSERT INTO `lz_region` VALUES ('2476', '300', '尖草坪区', '3');
INSERT INTO `lz_region` VALUES ('2477', '300', '万柏林区', '3');
INSERT INTO `lz_region` VALUES ('2478', '300', '晋源区', '3');
INSERT INTO `lz_region` VALUES ('2479', '300', '高新开发区', '3');
INSERT INTO `lz_region` VALUES ('2480', '300', '民营经济开发区', '3');
INSERT INTO `lz_region` VALUES ('2481', '300', '经济技术开发区', '3');
INSERT INTO `lz_region` VALUES ('2482', '300', '清徐县', '3');
INSERT INTO `lz_region` VALUES ('2483', '300', '阳曲县', '3');
INSERT INTO `lz_region` VALUES ('2484', '300', '娄烦县', '3');
INSERT INTO `lz_region` VALUES ('2485', '300', '古交市', '3');
INSERT INTO `lz_region` VALUES ('2486', '301', '城区', '3');
INSERT INTO `lz_region` VALUES ('2487', '301', '郊区', '3');
INSERT INTO `lz_region` VALUES ('2488', '301', '沁县', '3');
INSERT INTO `lz_region` VALUES ('2489', '301', '潞城市', '3');
INSERT INTO `lz_region` VALUES ('2490', '301', '长治县', '3');
INSERT INTO `lz_region` VALUES ('2491', '301', '襄垣县', '3');
INSERT INTO `lz_region` VALUES ('2492', '301', '屯留县', '3');
INSERT INTO `lz_region` VALUES ('2493', '301', '平顺县', '3');
INSERT INTO `lz_region` VALUES ('2494', '301', '黎城县', '3');
INSERT INTO `lz_region` VALUES ('2495', '301', '壶关县', '3');
INSERT INTO `lz_region` VALUES ('2496', '301', '长子县', '3');
INSERT INTO `lz_region` VALUES ('2497', '301', '武乡县', '3');
INSERT INTO `lz_region` VALUES ('2498', '301', '沁源县', '3');
INSERT INTO `lz_region` VALUES ('2499', '302', '城区', '3');
INSERT INTO `lz_region` VALUES ('2500', '302', '矿区', '3');
INSERT INTO `lz_region` VALUES ('2501', '302', '南郊区', '3');
INSERT INTO `lz_region` VALUES ('2502', '302', '新荣区', '3');
INSERT INTO `lz_region` VALUES ('2503', '302', '阳高县', '3');
INSERT INTO `lz_region` VALUES ('2504', '302', '天镇县', '3');
INSERT INTO `lz_region` VALUES ('2505', '302', '广灵县', '3');
INSERT INTO `lz_region` VALUES ('2506', '302', '灵丘县', '3');
INSERT INTO `lz_region` VALUES ('2507', '302', '浑源县', '3');
INSERT INTO `lz_region` VALUES ('2508', '302', '左云县', '3');
INSERT INTO `lz_region` VALUES ('2509', '302', '大同县', '3');
INSERT INTO `lz_region` VALUES ('2510', '303', '城区', '3');
INSERT INTO `lz_region` VALUES ('2511', '303', '高平市', '3');
INSERT INTO `lz_region` VALUES ('2512', '303', '沁水县', '3');
INSERT INTO `lz_region` VALUES ('2513', '303', '阳城县', '3');
INSERT INTO `lz_region` VALUES ('2514', '303', '陵川县', '3');
INSERT INTO `lz_region` VALUES ('2515', '303', '泽州县', '3');
INSERT INTO `lz_region` VALUES ('2516', '304', '榆次区', '3');
INSERT INTO `lz_region` VALUES ('2517', '304', '介休市', '3');
INSERT INTO `lz_region` VALUES ('2518', '304', '榆社县', '3');
INSERT INTO `lz_region` VALUES ('2519', '304', '左权县', '3');
INSERT INTO `lz_region` VALUES ('2520', '304', '和顺县', '3');
INSERT INTO `lz_region` VALUES ('2521', '304', '昔阳县', '3');
INSERT INTO `lz_region` VALUES ('2522', '304', '寿阳县', '3');
INSERT INTO `lz_region` VALUES ('2523', '304', '太谷县', '3');
INSERT INTO `lz_region` VALUES ('2524', '304', '祁县', '3');
INSERT INTO `lz_region` VALUES ('2525', '304', '平遥县', '3');
INSERT INTO `lz_region` VALUES ('2526', '304', '灵石县', '3');
INSERT INTO `lz_region` VALUES ('2527', '305', '尧都区', '3');
INSERT INTO `lz_region` VALUES ('2528', '305', '侯马市', '3');
INSERT INTO `lz_region` VALUES ('2529', '305', '霍州市', '3');
INSERT INTO `lz_region` VALUES ('2530', '305', '曲沃县', '3');
INSERT INTO `lz_region` VALUES ('2531', '305', '翼城县', '3');
INSERT INTO `lz_region` VALUES ('2532', '305', '襄汾县', '3');
INSERT INTO `lz_region` VALUES ('2533', '305', '洪洞县', '3');
INSERT INTO `lz_region` VALUES ('2534', '305', '吉县', '3');
INSERT INTO `lz_region` VALUES ('2535', '305', '安泽县', '3');
INSERT INTO `lz_region` VALUES ('2536', '305', '浮山县', '3');
INSERT INTO `lz_region` VALUES ('2537', '305', '古县', '3');
INSERT INTO `lz_region` VALUES ('2538', '305', '乡宁县', '3');
INSERT INTO `lz_region` VALUES ('2539', '305', '大宁县', '3');
INSERT INTO `lz_region` VALUES ('2540', '305', '隰县', '3');
INSERT INTO `lz_region` VALUES ('2541', '305', '永和县', '3');
INSERT INTO `lz_region` VALUES ('2542', '305', '蒲县', '3');
INSERT INTO `lz_region` VALUES ('2543', '305', '汾西县', '3');
INSERT INTO `lz_region` VALUES ('2544', '306', '离石市', '3');
INSERT INTO `lz_region` VALUES ('2545', '306', '离石区', '3');
INSERT INTO `lz_region` VALUES ('2546', '306', '孝义市', '3');
INSERT INTO `lz_region` VALUES ('2547', '306', '汾阳市', '3');
INSERT INTO `lz_region` VALUES ('2548', '306', '文水县', '3');
INSERT INTO `lz_region` VALUES ('2549', '306', '交城县', '3');
INSERT INTO `lz_region` VALUES ('2550', '306', '兴县', '3');
INSERT INTO `lz_region` VALUES ('2551', '306', '临县', '3');
INSERT INTO `lz_region` VALUES ('2552', '306', '柳林县', '3');
INSERT INTO `lz_region` VALUES ('2553', '306', '石楼县', '3');
INSERT INTO `lz_region` VALUES ('2554', '306', '岚县', '3');
INSERT INTO `lz_region` VALUES ('2555', '306', '方山县', '3');
INSERT INTO `lz_region` VALUES ('2556', '306', '中阳县', '3');
INSERT INTO `lz_region` VALUES ('2557', '306', '交口县', '3');
INSERT INTO `lz_region` VALUES ('2558', '307', '朔城区', '3');
INSERT INTO `lz_region` VALUES ('2559', '307', '平鲁区', '3');
INSERT INTO `lz_region` VALUES ('2560', '307', '山阴县', '3');
INSERT INTO `lz_region` VALUES ('2561', '307', '应县', '3');
INSERT INTO `lz_region` VALUES ('2562', '307', '右玉县', '3');
INSERT INTO `lz_region` VALUES ('2563', '307', '怀仁县', '3');
INSERT INTO `lz_region` VALUES ('2564', '308', '忻府区', '3');
INSERT INTO `lz_region` VALUES ('2565', '308', '原平市', '3');
INSERT INTO `lz_region` VALUES ('2566', '308', '定襄县', '3');
INSERT INTO `lz_region` VALUES ('2567', '308', '五台县', '3');
INSERT INTO `lz_region` VALUES ('2568', '308', '代县', '3');
INSERT INTO `lz_region` VALUES ('2569', '308', '繁峙县', '3');
INSERT INTO `lz_region` VALUES ('2570', '308', '宁武县', '3');
INSERT INTO `lz_region` VALUES ('2571', '308', '静乐县', '3');
INSERT INTO `lz_region` VALUES ('2572', '308', '神池县', '3');
INSERT INTO `lz_region` VALUES ('2573', '308', '五寨县', '3');
INSERT INTO `lz_region` VALUES ('2574', '308', '岢岚县', '3');
INSERT INTO `lz_region` VALUES ('2575', '308', '河曲县', '3');
INSERT INTO `lz_region` VALUES ('2576', '308', '保德县', '3');
INSERT INTO `lz_region` VALUES ('2577', '308', '偏关县', '3');
INSERT INTO `lz_region` VALUES ('2578', '309', '城区', '3');
INSERT INTO `lz_region` VALUES ('2579', '309', '矿区', '3');
INSERT INTO `lz_region` VALUES ('2580', '309', '郊区', '3');
INSERT INTO `lz_region` VALUES ('2581', '309', '平定县', '3');
INSERT INTO `lz_region` VALUES ('2582', '309', '盂县', '3');
INSERT INTO `lz_region` VALUES ('2583', '310', '盐湖区', '3');
INSERT INTO `lz_region` VALUES ('2584', '310', '永济市', '3');
INSERT INTO `lz_region` VALUES ('2585', '310', '河津市', '3');
INSERT INTO `lz_region` VALUES ('2586', '310', '临猗县', '3');
INSERT INTO `lz_region` VALUES ('2587', '310', '万荣县', '3');
INSERT INTO `lz_region` VALUES ('2588', '310', '闻喜县', '3');
INSERT INTO `lz_region` VALUES ('2589', '310', '稷山县', '3');
INSERT INTO `lz_region` VALUES ('2590', '310', '新绛县', '3');
INSERT INTO `lz_region` VALUES ('2591', '310', '绛县', '3');
INSERT INTO `lz_region` VALUES ('2592', '310', '垣曲县', '3');
INSERT INTO `lz_region` VALUES ('2593', '310', '夏县', '3');
INSERT INTO `lz_region` VALUES ('2594', '310', '平陆县', '3');
INSERT INTO `lz_region` VALUES ('2595', '310', '芮城县', '3');
INSERT INTO `lz_region` VALUES ('2596', '311', '莲湖区', '3');
INSERT INTO `lz_region` VALUES ('2597', '311', '新城区', '3');
INSERT INTO `lz_region` VALUES ('2598', '311', '碑林区', '3');
INSERT INTO `lz_region` VALUES ('2599', '311', '雁塔区', '3');
INSERT INTO `lz_region` VALUES ('2600', '311', '灞桥区', '3');
INSERT INTO `lz_region` VALUES ('2601', '311', '未央区', '3');
INSERT INTO `lz_region` VALUES ('2602', '311', '阎良区', '3');
INSERT INTO `lz_region` VALUES ('2603', '311', '临潼区', '3');
INSERT INTO `lz_region` VALUES ('2604', '311', '长安区', '3');
INSERT INTO `lz_region` VALUES ('2605', '311', '蓝田县', '3');
INSERT INTO `lz_region` VALUES ('2606', '311', '周至县', '3');
INSERT INTO `lz_region` VALUES ('2607', '311', '户县', '3');
INSERT INTO `lz_region` VALUES ('2608', '311', '高陵县', '3');
INSERT INTO `lz_region` VALUES ('2609', '312', '汉滨区', '3');
INSERT INTO `lz_region` VALUES ('2610', '312', '汉阴县', '3');
INSERT INTO `lz_region` VALUES ('2611', '312', '石泉县', '3');
INSERT INTO `lz_region` VALUES ('2612', '312', '宁陕县', '3');
INSERT INTO `lz_region` VALUES ('2613', '312', '紫阳县', '3');
INSERT INTO `lz_region` VALUES ('2614', '312', '岚皋县', '3');
INSERT INTO `lz_region` VALUES ('2615', '312', '平利县', '3');
INSERT INTO `lz_region` VALUES ('2616', '312', '镇坪县', '3');
INSERT INTO `lz_region` VALUES ('2617', '312', '旬阳县', '3');
INSERT INTO `lz_region` VALUES ('2618', '312', '白河县', '3');
INSERT INTO `lz_region` VALUES ('2619', '313', '陈仓区', '3');
INSERT INTO `lz_region` VALUES ('2620', '313', '渭滨区', '3');
INSERT INTO `lz_region` VALUES ('2621', '313', '金台区', '3');
INSERT INTO `lz_region` VALUES ('2622', '313', '凤翔县', '3');
INSERT INTO `lz_region` VALUES ('2623', '313', '岐山县', '3');
INSERT INTO `lz_region` VALUES ('2624', '313', '扶风县', '3');
INSERT INTO `lz_region` VALUES ('2625', '313', '眉县', '3');
INSERT INTO `lz_region` VALUES ('2626', '313', '陇县', '3');
INSERT INTO `lz_region` VALUES ('2627', '313', '千阳县', '3');
INSERT INTO `lz_region` VALUES ('2628', '313', '麟游县', '3');
INSERT INTO `lz_region` VALUES ('2629', '313', '凤县', '3');
INSERT INTO `lz_region` VALUES ('2630', '313', '太白县', '3');
INSERT INTO `lz_region` VALUES ('2631', '314', '汉台区', '3');
INSERT INTO `lz_region` VALUES ('2632', '314', '南郑县', '3');
INSERT INTO `lz_region` VALUES ('2633', '314', '城固县', '3');
INSERT INTO `lz_region` VALUES ('2634', '314', '洋县', '3');
INSERT INTO `lz_region` VALUES ('2635', '314', '西乡县', '3');
INSERT INTO `lz_region` VALUES ('2636', '314', '勉县', '3');
INSERT INTO `lz_region` VALUES ('2637', '314', '宁强县', '3');
INSERT INTO `lz_region` VALUES ('2638', '314', '略阳县', '3');
INSERT INTO `lz_region` VALUES ('2639', '314', '镇巴县', '3');
INSERT INTO `lz_region` VALUES ('2640', '314', '留坝县', '3');
INSERT INTO `lz_region` VALUES ('2641', '314', '佛坪县', '3');
INSERT INTO `lz_region` VALUES ('2642', '315', '商州区', '3');
INSERT INTO `lz_region` VALUES ('2643', '315', '洛南县', '3');
INSERT INTO `lz_region` VALUES ('2644', '315', '丹凤县', '3');
INSERT INTO `lz_region` VALUES ('2645', '315', '商南县', '3');
INSERT INTO `lz_region` VALUES ('2646', '315', '山阳县', '3');
INSERT INTO `lz_region` VALUES ('2647', '315', '镇安县', '3');
INSERT INTO `lz_region` VALUES ('2648', '315', '柞水县', '3');
INSERT INTO `lz_region` VALUES ('2649', '316', '耀州区', '3');
INSERT INTO `lz_region` VALUES ('2650', '316', '王益区', '3');
INSERT INTO `lz_region` VALUES ('2651', '316', '印台区', '3');
INSERT INTO `lz_region` VALUES ('2652', '316', '宜君县', '3');
INSERT INTO `lz_region` VALUES ('2653', '317', '临渭区', '3');
INSERT INTO `lz_region` VALUES ('2654', '317', '韩城市', '3');
INSERT INTO `lz_region` VALUES ('2655', '317', '华阴市', '3');
INSERT INTO `lz_region` VALUES ('2656', '317', '华县', '3');
INSERT INTO `lz_region` VALUES ('2657', '317', '潼关县', '3');
INSERT INTO `lz_region` VALUES ('2658', '317', '大荔县', '3');
INSERT INTO `lz_region` VALUES ('2659', '317', '合阳县', '3');
INSERT INTO `lz_region` VALUES ('2660', '317', '澄城县', '3');
INSERT INTO `lz_region` VALUES ('2661', '317', '蒲城县', '3');
INSERT INTO `lz_region` VALUES ('2662', '317', '白水县', '3');
INSERT INTO `lz_region` VALUES ('2663', '317', '富平县', '3');
INSERT INTO `lz_region` VALUES ('2664', '318', '秦都区', '3');
INSERT INTO `lz_region` VALUES ('2665', '318', '渭城区', '3');
INSERT INTO `lz_region` VALUES ('2666', '318', '杨陵区', '3');
INSERT INTO `lz_region` VALUES ('2667', '318', '兴平市', '3');
INSERT INTO `lz_region` VALUES ('2668', '318', '三原县', '3');
INSERT INTO `lz_region` VALUES ('2669', '318', '泾阳县', '3');
INSERT INTO `lz_region` VALUES ('2670', '318', '乾县', '3');
INSERT INTO `lz_region` VALUES ('2671', '318', '礼泉县', '3');
INSERT INTO `lz_region` VALUES ('2672', '318', '永寿县', '3');
INSERT INTO `lz_region` VALUES ('2673', '318', '彬县', '3');
INSERT INTO `lz_region` VALUES ('2674', '318', '长武县', '3');
INSERT INTO `lz_region` VALUES ('2675', '318', '旬邑县', '3');
INSERT INTO `lz_region` VALUES ('2676', '318', '淳化县', '3');
INSERT INTO `lz_region` VALUES ('2677', '318', '武功县', '3');
INSERT INTO `lz_region` VALUES ('2678', '319', '吴起县', '3');
INSERT INTO `lz_region` VALUES ('2679', '319', '宝塔区', '3');
INSERT INTO `lz_region` VALUES ('2680', '319', '延长县', '3');
INSERT INTO `lz_region` VALUES ('2681', '319', '延川县', '3');
INSERT INTO `lz_region` VALUES ('2682', '319', '子长县', '3');
INSERT INTO `lz_region` VALUES ('2683', '319', '安塞县', '3');
INSERT INTO `lz_region` VALUES ('2684', '319', '志丹县', '3');
INSERT INTO `lz_region` VALUES ('2685', '319', '甘泉县', '3');
INSERT INTO `lz_region` VALUES ('2686', '319', '富县', '3');
INSERT INTO `lz_region` VALUES ('2687', '319', '洛川县', '3');
INSERT INTO `lz_region` VALUES ('2688', '319', '宜川县', '3');
INSERT INTO `lz_region` VALUES ('2689', '319', '黄龙县', '3');
INSERT INTO `lz_region` VALUES ('2690', '319', '黄陵县', '3');
INSERT INTO `lz_region` VALUES ('2691', '320', '榆阳区', '3');
INSERT INTO `lz_region` VALUES ('2692', '320', '神木县', '3');
INSERT INTO `lz_region` VALUES ('2693', '320', '府谷县', '3');
INSERT INTO `lz_region` VALUES ('2694', '320', '横山县', '3');
INSERT INTO `lz_region` VALUES ('2695', '320', '靖边县', '3');
INSERT INTO `lz_region` VALUES ('2696', '320', '定边县', '3');
INSERT INTO `lz_region` VALUES ('2697', '320', '绥德县', '3');
INSERT INTO `lz_region` VALUES ('2698', '320', '米脂县', '3');
INSERT INTO `lz_region` VALUES ('2699', '320', '佳县', '3');
INSERT INTO `lz_region` VALUES ('2700', '320', '吴堡县', '3');
INSERT INTO `lz_region` VALUES ('2701', '320', '清涧县', '3');
INSERT INTO `lz_region` VALUES ('2702', '320', '子洲县', '3');
INSERT INTO `lz_region` VALUES ('2703', '321', '长宁区', '3');
INSERT INTO `lz_region` VALUES ('2704', '321', '闸北区', '3');
INSERT INTO `lz_region` VALUES ('2705', '321', '闵行区', '3');
INSERT INTO `lz_region` VALUES ('2706', '321', '徐汇区', '3');
INSERT INTO `lz_region` VALUES ('2707', '321', '浦东新区', '3');
INSERT INTO `lz_region` VALUES ('2708', '321', '杨浦区', '3');
INSERT INTO `lz_region` VALUES ('2709', '321', '普陀区', '3');
INSERT INTO `lz_region` VALUES ('2710', '321', '静安区', '3');
INSERT INTO `lz_region` VALUES ('2711', '321', '卢湾区', '3');
INSERT INTO `lz_region` VALUES ('2712', '321', '虹口区', '3');
INSERT INTO `lz_region` VALUES ('2713', '321', '黄浦区', '3');
INSERT INTO `lz_region` VALUES ('2714', '321', '南汇区', '3');
INSERT INTO `lz_region` VALUES ('2715', '321', '松江区', '3');
INSERT INTO `lz_region` VALUES ('2716', '321', '嘉定区', '3');
INSERT INTO `lz_region` VALUES ('2717', '321', '宝山区', '3');
INSERT INTO `lz_region` VALUES ('2718', '321', '青浦区', '3');
INSERT INTO `lz_region` VALUES ('2719', '321', '金山区', '3');
INSERT INTO `lz_region` VALUES ('2720', '321', '奉贤区', '3');
INSERT INTO `lz_region` VALUES ('2721', '321', '崇明县', '3');
INSERT INTO `lz_region` VALUES ('2722', '322', '青羊区', '3');
INSERT INTO `lz_region` VALUES ('2723', '322', '锦江区', '3');
INSERT INTO `lz_region` VALUES ('2724', '322', '金牛区', '3');
INSERT INTO `lz_region` VALUES ('2725', '322', '武侯区', '3');
INSERT INTO `lz_region` VALUES ('2726', '322', '成华区', '3');
INSERT INTO `lz_region` VALUES ('2727', '322', '龙泉驿区', '3');
INSERT INTO `lz_region` VALUES ('2728', '322', '青白江区', '3');
INSERT INTO `lz_region` VALUES ('2729', '322', '新都区', '3');
INSERT INTO `lz_region` VALUES ('2730', '322', '温江区', '3');
INSERT INTO `lz_region` VALUES ('2731', '322', '高新区', '3');
INSERT INTO `lz_region` VALUES ('2732', '322', '高新西区', '3');
INSERT INTO `lz_region` VALUES ('2733', '322', '都江堰市', '3');
INSERT INTO `lz_region` VALUES ('2734', '322', '彭州市', '3');
INSERT INTO `lz_region` VALUES ('2735', '322', '邛崃市', '3');
INSERT INTO `lz_region` VALUES ('2736', '322', '崇州市', '3');
INSERT INTO `lz_region` VALUES ('2737', '322', '金堂县', '3');
INSERT INTO `lz_region` VALUES ('2738', '322', '双流县', '3');
INSERT INTO `lz_region` VALUES ('2739', '322', '郫县', '3');
INSERT INTO `lz_region` VALUES ('2740', '322', '大邑县', '3');
INSERT INTO `lz_region` VALUES ('2741', '322', '蒲江县', '3');
INSERT INTO `lz_region` VALUES ('2742', '322', '新津县', '3');
INSERT INTO `lz_region` VALUES ('2743', '322', '都江堰市', '3');
INSERT INTO `lz_region` VALUES ('2744', '322', '彭州市', '3');
INSERT INTO `lz_region` VALUES ('2745', '322', '邛崃市', '3');
INSERT INTO `lz_region` VALUES ('2746', '322', '崇州市', '3');
INSERT INTO `lz_region` VALUES ('2747', '322', '金堂县', '3');
INSERT INTO `lz_region` VALUES ('2748', '322', '双流县', '3');
INSERT INTO `lz_region` VALUES ('2749', '322', '郫县', '3');
INSERT INTO `lz_region` VALUES ('2750', '322', '大邑县', '3');
INSERT INTO `lz_region` VALUES ('2751', '322', '蒲江县', '3');
INSERT INTO `lz_region` VALUES ('2752', '322', '新津县', '3');
INSERT INTO `lz_region` VALUES ('2753', '323', '涪城区', '3');
INSERT INTO `lz_region` VALUES ('2754', '323', '游仙区', '3');
INSERT INTO `lz_region` VALUES ('2755', '323', '江油市', '3');
INSERT INTO `lz_region` VALUES ('2756', '323', '盐亭县', '3');
INSERT INTO `lz_region` VALUES ('2757', '323', '三台县', '3');
INSERT INTO `lz_region` VALUES ('2758', '323', '平武县', '3');
INSERT INTO `lz_region` VALUES ('2759', '323', '安县', '3');
INSERT INTO `lz_region` VALUES ('2760', '323', '梓潼县', '3');
INSERT INTO `lz_region` VALUES ('2761', '323', '北川县', '3');
INSERT INTO `lz_region` VALUES ('2762', '324', '马尔康县', '3');
INSERT INTO `lz_region` VALUES ('2763', '324', '汶川县', '3');
INSERT INTO `lz_region` VALUES ('2764', '324', '理县', '3');
INSERT INTO `lz_region` VALUES ('2765', '324', '茂县', '3');
INSERT INTO `lz_region` VALUES ('2766', '324', '松潘县', '3');
INSERT INTO `lz_region` VALUES ('2767', '324', '九寨沟县', '3');
INSERT INTO `lz_region` VALUES ('2768', '324', '金川县', '3');
INSERT INTO `lz_region` VALUES ('2769', '324', '小金县', '3');
INSERT INTO `lz_region` VALUES ('2770', '324', '黑水县', '3');
INSERT INTO `lz_region` VALUES ('2771', '324', '壤塘县', '3');
INSERT INTO `lz_region` VALUES ('2772', '324', '阿坝县', '3');
INSERT INTO `lz_region` VALUES ('2773', '324', '若尔盖县', '3');
INSERT INTO `lz_region` VALUES ('2774', '324', '红原县', '3');
INSERT INTO `lz_region` VALUES ('2775', '325', '巴州区', '3');
INSERT INTO `lz_region` VALUES ('2776', '325', '通江县', '3');
INSERT INTO `lz_region` VALUES ('2777', '325', '南江县', '3');
INSERT INTO `lz_region` VALUES ('2778', '325', '平昌县', '3');
INSERT INTO `lz_region` VALUES ('2779', '326', '通川区', '3');
INSERT INTO `lz_region` VALUES ('2780', '326', '万源市', '3');
INSERT INTO `lz_region` VALUES ('2781', '326', '达县', '3');
INSERT INTO `lz_region` VALUES ('2782', '326', '宣汉县', '3');
INSERT INTO `lz_region` VALUES ('2783', '326', '开江县', '3');
INSERT INTO `lz_region` VALUES ('2784', '326', '大竹县', '3');
INSERT INTO `lz_region` VALUES ('2785', '326', '渠县', '3');
INSERT INTO `lz_region` VALUES ('2786', '327', '旌阳区', '3');
INSERT INTO `lz_region` VALUES ('2787', '327', '广汉市', '3');
INSERT INTO `lz_region` VALUES ('2788', '327', '什邡市', '3');
INSERT INTO `lz_region` VALUES ('2789', '327', '绵竹市', '3');
INSERT INTO `lz_region` VALUES ('2790', '327', '罗江县', '3');
INSERT INTO `lz_region` VALUES ('2791', '327', '中江县', '3');
INSERT INTO `lz_region` VALUES ('2792', '328', '康定县', '3');
INSERT INTO `lz_region` VALUES ('2793', '328', '丹巴县', '3');
INSERT INTO `lz_region` VALUES ('2794', '328', '泸定县', '3');
INSERT INTO `lz_region` VALUES ('2795', '328', '炉霍县', '3');
INSERT INTO `lz_region` VALUES ('2796', '328', '九龙县', '3');
INSERT INTO `lz_region` VALUES ('2797', '328', '甘孜县', '3');
INSERT INTO `lz_region` VALUES ('2798', '328', '雅江县', '3');
INSERT INTO `lz_region` VALUES ('2799', '328', '新龙县', '3');
INSERT INTO `lz_region` VALUES ('2800', '328', '道孚县', '3');
INSERT INTO `lz_region` VALUES ('2801', '328', '白玉县', '3');
INSERT INTO `lz_region` VALUES ('2802', '328', '理塘县', '3');
INSERT INTO `lz_region` VALUES ('2803', '328', '德格县', '3');
INSERT INTO `lz_region` VALUES ('2804', '328', '乡城县', '3');
INSERT INTO `lz_region` VALUES ('2805', '328', '石渠县', '3');
INSERT INTO `lz_region` VALUES ('2806', '328', '稻城县', '3');
INSERT INTO `lz_region` VALUES ('2807', '328', '色达县', '3');
INSERT INTO `lz_region` VALUES ('2808', '328', '巴塘县', '3');
INSERT INTO `lz_region` VALUES ('2809', '328', '得荣县', '3');
INSERT INTO `lz_region` VALUES ('2810', '329', '广安区', '3');
INSERT INTO `lz_region` VALUES ('2811', '329', '华蓥市', '3');
INSERT INTO `lz_region` VALUES ('2812', '329', '岳池县', '3');
INSERT INTO `lz_region` VALUES ('2813', '329', '武胜县', '3');
INSERT INTO `lz_region` VALUES ('2814', '329', '邻水县', '3');
INSERT INTO `lz_region` VALUES ('2815', '330', '利州区', '3');
INSERT INTO `lz_region` VALUES ('2816', '330', '元坝区', '3');
INSERT INTO `lz_region` VALUES ('2817', '330', '朝天区', '3');
INSERT INTO `lz_region` VALUES ('2818', '330', '旺苍县', '3');
INSERT INTO `lz_region` VALUES ('2819', '330', '青川县', '3');
INSERT INTO `lz_region` VALUES ('2820', '330', '剑阁县', '3');
INSERT INTO `lz_region` VALUES ('2821', '330', '苍溪县', '3');
INSERT INTO `lz_region` VALUES ('2822', '331', '峨眉山市', '3');
INSERT INTO `lz_region` VALUES ('2823', '331', '乐山市', '3');
INSERT INTO `lz_region` VALUES ('2824', '331', '犍为县', '3');
INSERT INTO `lz_region` VALUES ('2825', '331', '井研县', '3');
INSERT INTO `lz_region` VALUES ('2826', '331', '夹江县', '3');
INSERT INTO `lz_region` VALUES ('2827', '331', '沐川县', '3');
INSERT INTO `lz_region` VALUES ('2828', '331', '峨边', '3');
INSERT INTO `lz_region` VALUES ('2829', '331', '马边', '3');
INSERT INTO `lz_region` VALUES ('2830', '332', '西昌市', '3');
INSERT INTO `lz_region` VALUES ('2831', '332', '盐源县', '3');
INSERT INTO `lz_region` VALUES ('2832', '332', '德昌县', '3');
INSERT INTO `lz_region` VALUES ('2833', '332', '会理县', '3');
INSERT INTO `lz_region` VALUES ('2834', '332', '会东县', '3');
INSERT INTO `lz_region` VALUES ('2835', '332', '宁南县', '3');
INSERT INTO `lz_region` VALUES ('2836', '332', '普格县', '3');
INSERT INTO `lz_region` VALUES ('2837', '332', '布拖县', '3');
INSERT INTO `lz_region` VALUES ('2838', '332', '金阳县', '3');
INSERT INTO `lz_region` VALUES ('2839', '332', '昭觉县', '3');
INSERT INTO `lz_region` VALUES ('2840', '332', '喜德县', '3');
INSERT INTO `lz_region` VALUES ('2841', '332', '冕宁县', '3');
INSERT INTO `lz_region` VALUES ('2842', '332', '越西县', '3');
INSERT INTO `lz_region` VALUES ('2843', '332', '甘洛县', '3');
INSERT INTO `lz_region` VALUES ('2844', '332', '美姑县', '3');
INSERT INTO `lz_region` VALUES ('2845', '332', '雷波县', '3');
INSERT INTO `lz_region` VALUES ('2846', '332', '木里', '3');
INSERT INTO `lz_region` VALUES ('2847', '333', '东坡区', '3');
INSERT INTO `lz_region` VALUES ('2848', '333', '仁寿县', '3');
INSERT INTO `lz_region` VALUES ('2849', '333', '彭山县', '3');
INSERT INTO `lz_region` VALUES ('2850', '333', '洪雅县', '3');
INSERT INTO `lz_region` VALUES ('2851', '333', '丹棱县', '3');
INSERT INTO `lz_region` VALUES ('2852', '333', '青神县', '3');
INSERT INTO `lz_region` VALUES ('2853', '334', '阆中市', '3');
INSERT INTO `lz_region` VALUES ('2854', '334', '南部县', '3');
INSERT INTO `lz_region` VALUES ('2855', '334', '营山县', '3');
INSERT INTO `lz_region` VALUES ('2856', '334', '蓬安县', '3');
INSERT INTO `lz_region` VALUES ('2857', '334', '仪陇县', '3');
INSERT INTO `lz_region` VALUES ('2858', '334', '顺庆区', '3');
INSERT INTO `lz_region` VALUES ('2859', '334', '高坪区', '3');
INSERT INTO `lz_region` VALUES ('2860', '334', '嘉陵区', '3');
INSERT INTO `lz_region` VALUES ('2861', '334', '西充县', '3');
INSERT INTO `lz_region` VALUES ('2862', '335', '市中区', '3');
INSERT INTO `lz_region` VALUES ('2863', '335', '东兴区', '3');
INSERT INTO `lz_region` VALUES ('2864', '335', '威远县', '3');
INSERT INTO `lz_region` VALUES ('2865', '335', '资中县', '3');
INSERT INTO `lz_region` VALUES ('2866', '335', '隆昌县', '3');
INSERT INTO `lz_region` VALUES ('2867', '336', '东  区', '3');
INSERT INTO `lz_region` VALUES ('2868', '336', '西  区', '3');
INSERT INTO `lz_region` VALUES ('2869', '336', '仁和区', '3');
INSERT INTO `lz_region` VALUES ('2870', '336', '米易县', '3');
INSERT INTO `lz_region` VALUES ('2871', '336', '盐边县', '3');
INSERT INTO `lz_region` VALUES ('2872', '337', '船山区', '3');
INSERT INTO `lz_region` VALUES ('2873', '337', '安居区', '3');
INSERT INTO `lz_region` VALUES ('2874', '337', '蓬溪县', '3');
INSERT INTO `lz_region` VALUES ('2875', '337', '射洪县', '3');
INSERT INTO `lz_region` VALUES ('2876', '337', '大英县', '3');
INSERT INTO `lz_region` VALUES ('2877', '338', '雨城区', '3');
INSERT INTO `lz_region` VALUES ('2878', '338', '名山县', '3');
INSERT INTO `lz_region` VALUES ('2879', '338', '荥经县', '3');
INSERT INTO `lz_region` VALUES ('2880', '338', '汉源县', '3');
INSERT INTO `lz_region` VALUES ('2881', '338', '石棉县', '3');
INSERT INTO `lz_region` VALUES ('2882', '338', '天全县', '3');
INSERT INTO `lz_region` VALUES ('2883', '338', '芦山县', '3');
INSERT INTO `lz_region` VALUES ('2884', '338', '宝兴县', '3');
INSERT INTO `lz_region` VALUES ('2885', '339', '翠屏区', '3');
INSERT INTO `lz_region` VALUES ('2886', '339', '宜宾县', '3');
INSERT INTO `lz_region` VALUES ('2887', '339', '南溪县', '3');
INSERT INTO `lz_region` VALUES ('2888', '339', '江安县', '3');
INSERT INTO `lz_region` VALUES ('2889', '339', '长宁县', '3');
INSERT INTO `lz_region` VALUES ('2890', '339', '高县', '3');
INSERT INTO `lz_region` VALUES ('2891', '339', '珙县', '3');
INSERT INTO `lz_region` VALUES ('2892', '339', '筠连县', '3');
INSERT INTO `lz_region` VALUES ('2893', '339', '兴文县', '3');
INSERT INTO `lz_region` VALUES ('2894', '339', '屏山县', '3');
INSERT INTO `lz_region` VALUES ('2895', '340', '雁江区', '3');
INSERT INTO `lz_region` VALUES ('2896', '340', '简阳市', '3');
INSERT INTO `lz_region` VALUES ('2897', '340', '安岳县', '3');
INSERT INTO `lz_region` VALUES ('2898', '340', '乐至县', '3');
INSERT INTO `lz_region` VALUES ('2899', '341', '大安区', '3');
INSERT INTO `lz_region` VALUES ('2900', '341', '自流井区', '3');
INSERT INTO `lz_region` VALUES ('2901', '341', '贡井区', '3');
INSERT INTO `lz_region` VALUES ('2902', '341', '沿滩区', '3');
INSERT INTO `lz_region` VALUES ('2903', '341', '荣县', '3');
INSERT INTO `lz_region` VALUES ('2904', '341', '富顺县', '3');
INSERT INTO `lz_region` VALUES ('2905', '342', '江阳区', '3');
INSERT INTO `lz_region` VALUES ('2906', '342', '纳溪区', '3');
INSERT INTO `lz_region` VALUES ('2907', '342', '龙马潭区', '3');
INSERT INTO `lz_region` VALUES ('2908', '342', '泸县', '3');
INSERT INTO `lz_region` VALUES ('2909', '342', '合江县', '3');
INSERT INTO `lz_region` VALUES ('2910', '342', '叙永县', '3');
INSERT INTO `lz_region` VALUES ('2911', '342', '古蔺县', '3');
INSERT INTO `lz_region` VALUES ('2912', '343', '和平区', '3');
INSERT INTO `lz_region` VALUES ('2913', '343', '河西区', '3');
INSERT INTO `lz_region` VALUES ('2914', '343', '南开区', '3');
INSERT INTO `lz_region` VALUES ('2915', '343', '河北区', '3');
INSERT INTO `lz_region` VALUES ('2916', '343', '河东区', '3');
INSERT INTO `lz_region` VALUES ('2917', '343', '红桥区', '3');
INSERT INTO `lz_region` VALUES ('2918', '343', '东丽区', '3');
INSERT INTO `lz_region` VALUES ('2919', '343', '津南区', '3');
INSERT INTO `lz_region` VALUES ('2920', '343', '西青区', '3');
INSERT INTO `lz_region` VALUES ('2921', '343', '北辰区', '3');
INSERT INTO `lz_region` VALUES ('2922', '343', '塘沽区', '3');
INSERT INTO `lz_region` VALUES ('2923', '343', '汉沽区', '3');
INSERT INTO `lz_region` VALUES ('2924', '343', '大港区', '3');
INSERT INTO `lz_region` VALUES ('2925', '343', '武清区', '3');
INSERT INTO `lz_region` VALUES ('2926', '343', '宝坻区', '3');
INSERT INTO `lz_region` VALUES ('2927', '343', '经济开发区', '3');
INSERT INTO `lz_region` VALUES ('2928', '343', '宁河县', '3');
INSERT INTO `lz_region` VALUES ('2929', '343', '静海县', '3');
INSERT INTO `lz_region` VALUES ('2930', '343', '蓟县', '3');
INSERT INTO `lz_region` VALUES ('2931', '344', '城关区', '3');
INSERT INTO `lz_region` VALUES ('2932', '344', '林周县', '3');
INSERT INTO `lz_region` VALUES ('2933', '344', '当雄县', '3');
INSERT INTO `lz_region` VALUES ('2934', '344', '尼木县', '3');
INSERT INTO `lz_region` VALUES ('2935', '344', '曲水县', '3');
INSERT INTO `lz_region` VALUES ('2936', '344', '堆龙德庆县', '3');
INSERT INTO `lz_region` VALUES ('2937', '344', '达孜县', '3');
INSERT INTO `lz_region` VALUES ('2938', '344', '墨竹工卡县', '3');
INSERT INTO `lz_region` VALUES ('2939', '345', '噶尔县', '3');
INSERT INTO `lz_region` VALUES ('2940', '345', '普兰县', '3');
INSERT INTO `lz_region` VALUES ('2941', '345', '札达县', '3');
INSERT INTO `lz_region` VALUES ('2942', '345', '日土县', '3');
INSERT INTO `lz_region` VALUES ('2943', '345', '革吉县', '3');
INSERT INTO `lz_region` VALUES ('2944', '345', '改则县', '3');
INSERT INTO `lz_region` VALUES ('2945', '345', '措勤县', '3');
INSERT INTO `lz_region` VALUES ('2946', '346', '昌都县', '3');
INSERT INTO `lz_region` VALUES ('2947', '346', '江达县', '3');
INSERT INTO `lz_region` VALUES ('2948', '346', '贡觉县', '3');
INSERT INTO `lz_region` VALUES ('2949', '346', '类乌齐县', '3');
INSERT INTO `lz_region` VALUES ('2950', '346', '丁青县', '3');
INSERT INTO `lz_region` VALUES ('2951', '346', '察雅县', '3');
INSERT INTO `lz_region` VALUES ('2952', '346', '八宿县', '3');
INSERT INTO `lz_region` VALUES ('2953', '346', '左贡县', '3');
INSERT INTO `lz_region` VALUES ('2954', '346', '芒康县', '3');
INSERT INTO `lz_region` VALUES ('2955', '346', '洛隆县', '3');
INSERT INTO `lz_region` VALUES ('2956', '346', '边坝县', '3');
INSERT INTO `lz_region` VALUES ('2957', '347', '林芝县', '3');
INSERT INTO `lz_region` VALUES ('2958', '347', '工布江达县', '3');
INSERT INTO `lz_region` VALUES ('2959', '347', '米林县', '3');
INSERT INTO `lz_region` VALUES ('2960', '347', '墨脱县', '3');
INSERT INTO `lz_region` VALUES ('2961', '347', '波密县', '3');
INSERT INTO `lz_region` VALUES ('2962', '347', '察隅县', '3');
INSERT INTO `lz_region` VALUES ('2963', '347', '朗县', '3');
INSERT INTO `lz_region` VALUES ('2964', '348', '那曲县', '3');
INSERT INTO `lz_region` VALUES ('2965', '348', '嘉黎县', '3');
INSERT INTO `lz_region` VALUES ('2966', '348', '比如县', '3');
INSERT INTO `lz_region` VALUES ('2967', '348', '聂荣县', '3');
INSERT INTO `lz_region` VALUES ('2968', '348', '安多县', '3');
INSERT INTO `lz_region` VALUES ('2969', '348', '申扎县', '3');
INSERT INTO `lz_region` VALUES ('2970', '348', '索县', '3');
INSERT INTO `lz_region` VALUES ('2971', '348', '班戈县', '3');
INSERT INTO `lz_region` VALUES ('2972', '348', '巴青县', '3');
INSERT INTO `lz_region` VALUES ('2973', '348', '尼玛县', '3');
INSERT INTO `lz_region` VALUES ('2974', '349', '日喀则市', '3');
INSERT INTO `lz_region` VALUES ('2975', '349', '南木林县', '3');
INSERT INTO `lz_region` VALUES ('2976', '349', '江孜县', '3');
INSERT INTO `lz_region` VALUES ('2977', '349', '定日县', '3');
INSERT INTO `lz_region` VALUES ('2978', '349', '萨迦县', '3');
INSERT INTO `lz_region` VALUES ('2979', '349', '拉孜县', '3');
INSERT INTO `lz_region` VALUES ('2980', '349', '昂仁县', '3');
INSERT INTO `lz_region` VALUES ('2981', '349', '谢通门县', '3');
INSERT INTO `lz_region` VALUES ('2982', '349', '白朗县', '3');
INSERT INTO `lz_region` VALUES ('2983', '349', '仁布县', '3');
INSERT INTO `lz_region` VALUES ('2984', '349', '康马县', '3');
INSERT INTO `lz_region` VALUES ('2985', '349', '定结县', '3');
INSERT INTO `lz_region` VALUES ('2986', '349', '仲巴县', '3');
INSERT INTO `lz_region` VALUES ('2987', '349', '亚东县', '3');
INSERT INTO `lz_region` VALUES ('2988', '349', '吉隆县', '3');
INSERT INTO `lz_region` VALUES ('2989', '349', '聂拉木县', '3');
INSERT INTO `lz_region` VALUES ('2990', '349', '萨嘎县', '3');
INSERT INTO `lz_region` VALUES ('2991', '349', '岗巴县', '3');
INSERT INTO `lz_region` VALUES ('2992', '350', '乃东县', '3');
INSERT INTO `lz_region` VALUES ('2993', '350', '扎囊县', '3');
INSERT INTO `lz_region` VALUES ('2994', '350', '贡嘎县', '3');
INSERT INTO `lz_region` VALUES ('2995', '350', '桑日县', '3');
INSERT INTO `lz_region` VALUES ('2996', '350', '琼结县', '3');
INSERT INTO `lz_region` VALUES ('2997', '350', '曲松县', '3');
INSERT INTO `lz_region` VALUES ('2998', '350', '措美县', '3');
INSERT INTO `lz_region` VALUES ('2999', '350', '洛扎县', '3');
INSERT INTO `lz_region` VALUES ('3000', '350', '加查县', '3');
INSERT INTO `lz_region` VALUES ('3001', '350', '隆子县', '3');
INSERT INTO `lz_region` VALUES ('3002', '350', '错那县', '3');
INSERT INTO `lz_region` VALUES ('3003', '350', '浪卡子县', '3');
INSERT INTO `lz_region` VALUES ('3004', '351', '天山区', '3');
INSERT INTO `lz_region` VALUES ('3005', '351', '沙依巴克区', '3');
INSERT INTO `lz_region` VALUES ('3006', '351', '新市区', '3');
INSERT INTO `lz_region` VALUES ('3007', '351', '水磨沟区', '3');
INSERT INTO `lz_region` VALUES ('3008', '351', '头屯河区', '3');
INSERT INTO `lz_region` VALUES ('3009', '351', '达坂城区', '3');
INSERT INTO `lz_region` VALUES ('3010', '351', '米东区', '3');
INSERT INTO `lz_region` VALUES ('3011', '351', '乌鲁木齐县', '3');
INSERT INTO `lz_region` VALUES ('3012', '352', '阿克苏市', '3');
INSERT INTO `lz_region` VALUES ('3013', '352', '温宿县', '3');
INSERT INTO `lz_region` VALUES ('3014', '352', '库车县', '3');
INSERT INTO `lz_region` VALUES ('3015', '352', '沙雅县', '3');
INSERT INTO `lz_region` VALUES ('3016', '352', '新和县', '3');
INSERT INTO `lz_region` VALUES ('3017', '352', '拜城县', '3');
INSERT INTO `lz_region` VALUES ('3018', '352', '乌什县', '3');
INSERT INTO `lz_region` VALUES ('3019', '352', '阿瓦提县', '3');
INSERT INTO `lz_region` VALUES ('3020', '352', '柯坪县', '3');
INSERT INTO `lz_region` VALUES ('3021', '353', '阿拉尔市', '3');
INSERT INTO `lz_region` VALUES ('3022', '354', '库尔勒市', '3');
INSERT INTO `lz_region` VALUES ('3023', '354', '轮台县', '3');
INSERT INTO `lz_region` VALUES ('3024', '354', '尉犁县', '3');
INSERT INTO `lz_region` VALUES ('3025', '354', '若羌县', '3');
INSERT INTO `lz_region` VALUES ('3026', '354', '且末县', '3');
INSERT INTO `lz_region` VALUES ('3027', '354', '焉耆', '3');
INSERT INTO `lz_region` VALUES ('3028', '354', '和静县', '3');
INSERT INTO `lz_region` VALUES ('3029', '354', '和硕县', '3');
INSERT INTO `lz_region` VALUES ('3030', '354', '博湖县', '3');
INSERT INTO `lz_region` VALUES ('3031', '355', '博乐市', '3');
INSERT INTO `lz_region` VALUES ('3032', '355', '精河县', '3');
INSERT INTO `lz_region` VALUES ('3033', '355', '温泉县', '3');
INSERT INTO `lz_region` VALUES ('3034', '356', '呼图壁县', '3');
INSERT INTO `lz_region` VALUES ('3035', '356', '米泉市', '3');
INSERT INTO `lz_region` VALUES ('3036', '356', '昌吉市', '3');
INSERT INTO `lz_region` VALUES ('3037', '356', '阜康市', '3');
INSERT INTO `lz_region` VALUES ('3038', '356', '玛纳斯县', '3');
INSERT INTO `lz_region` VALUES ('3039', '356', '奇台县', '3');
INSERT INTO `lz_region` VALUES ('3040', '356', '吉木萨尔县', '3');
INSERT INTO `lz_region` VALUES ('3041', '356', '木垒', '3');
INSERT INTO `lz_region` VALUES ('3042', '357', '哈密市', '3');
INSERT INTO `lz_region` VALUES ('3043', '357', '伊吾县', '3');
INSERT INTO `lz_region` VALUES ('3044', '357', '巴里坤', '3');
INSERT INTO `lz_region` VALUES ('3045', '358', '和田市', '3');
INSERT INTO `lz_region` VALUES ('3046', '358', '和田县', '3');
INSERT INTO `lz_region` VALUES ('3047', '358', '墨玉县', '3');
INSERT INTO `lz_region` VALUES ('3048', '358', '皮山县', '3');
INSERT INTO `lz_region` VALUES ('3049', '358', '洛浦县', '3');
INSERT INTO `lz_region` VALUES ('3050', '358', '策勒县', '3');
INSERT INTO `lz_region` VALUES ('3051', '358', '于田县', '3');
INSERT INTO `lz_region` VALUES ('3052', '358', '民丰县', '3');
INSERT INTO `lz_region` VALUES ('3053', '359', '喀什市', '3');
INSERT INTO `lz_region` VALUES ('3054', '359', '疏附县', '3');
INSERT INTO `lz_region` VALUES ('3055', '359', '疏勒县', '3');
INSERT INTO `lz_region` VALUES ('3056', '359', '英吉沙县', '3');
INSERT INTO `lz_region` VALUES ('3057', '359', '泽普县', '3');
INSERT INTO `lz_region` VALUES ('3058', '359', '莎车县', '3');
INSERT INTO `lz_region` VALUES ('3059', '359', '叶城县', '3');
INSERT INTO `lz_region` VALUES ('3060', '359', '麦盖提县', '3');
INSERT INTO `lz_region` VALUES ('3061', '359', '岳普湖县', '3');
INSERT INTO `lz_region` VALUES ('3062', '359', '伽师县', '3');
INSERT INTO `lz_region` VALUES ('3063', '359', '巴楚县', '3');
INSERT INTO `lz_region` VALUES ('3064', '359', '塔什库尔干', '3');
INSERT INTO `lz_region` VALUES ('3065', '360', '克拉玛依市', '3');
INSERT INTO `lz_region` VALUES ('3066', '361', '阿图什市', '3');
INSERT INTO `lz_region` VALUES ('3067', '361', '阿克陶县', '3');
INSERT INTO `lz_region` VALUES ('3068', '361', '阿合奇县', '3');
INSERT INTO `lz_region` VALUES ('3069', '361', '乌恰县', '3');
INSERT INTO `lz_region` VALUES ('3070', '362', '石河子市', '3');
INSERT INTO `lz_region` VALUES ('3071', '363', '图木舒克市', '3');
INSERT INTO `lz_region` VALUES ('3072', '364', '吐鲁番市', '3');
INSERT INTO `lz_region` VALUES ('3073', '364', '鄯善县', '3');
INSERT INTO `lz_region` VALUES ('3074', '364', '托克逊县', '3');
INSERT INTO `lz_region` VALUES ('3075', '365', '五家渠市', '3');
INSERT INTO `lz_region` VALUES ('3076', '366', '阿勒泰市', '3');
INSERT INTO `lz_region` VALUES ('3077', '366', '布克赛尔', '3');
INSERT INTO `lz_region` VALUES ('3078', '366', '伊宁市', '3');
INSERT INTO `lz_region` VALUES ('3079', '366', '布尔津县', '3');
INSERT INTO `lz_region` VALUES ('3080', '366', '奎屯市', '3');
INSERT INTO `lz_region` VALUES ('3081', '366', '乌苏市', '3');
INSERT INTO `lz_region` VALUES ('3082', '366', '额敏县', '3');
INSERT INTO `lz_region` VALUES ('3083', '366', '富蕴县', '3');
INSERT INTO `lz_region` VALUES ('3084', '366', '伊宁县', '3');
INSERT INTO `lz_region` VALUES ('3085', '366', '福海县', '3');
INSERT INTO `lz_region` VALUES ('3086', '366', '霍城县', '3');
INSERT INTO `lz_region` VALUES ('3087', '366', '沙湾县', '3');
INSERT INTO `lz_region` VALUES ('3088', '366', '巩留县', '3');
INSERT INTO `lz_region` VALUES ('3089', '366', '哈巴河县', '3');
INSERT INTO `lz_region` VALUES ('3090', '366', '托里县', '3');
INSERT INTO `lz_region` VALUES ('3091', '366', '青河县', '3');
INSERT INTO `lz_region` VALUES ('3092', '366', '新源县', '3');
INSERT INTO `lz_region` VALUES ('3093', '366', '裕民县', '3');
INSERT INTO `lz_region` VALUES ('3094', '366', '和布克赛尔', '3');
INSERT INTO `lz_region` VALUES ('3095', '366', '吉木乃县', '3');
INSERT INTO `lz_region` VALUES ('3096', '366', '昭苏县', '3');
INSERT INTO `lz_region` VALUES ('3097', '366', '特克斯县', '3');
INSERT INTO `lz_region` VALUES ('3098', '366', '尼勒克县', '3');
INSERT INTO `lz_region` VALUES ('3099', '366', '察布查尔', '3');
INSERT INTO `lz_region` VALUES ('3100', '367', '盘龙区', '3');
INSERT INTO `lz_region` VALUES ('3101', '367', '五华区', '3');
INSERT INTO `lz_region` VALUES ('3102', '367', '官渡区', '3');
INSERT INTO `lz_region` VALUES ('3103', '367', '西山区', '3');
INSERT INTO `lz_region` VALUES ('3104', '367', '东川区', '3');
INSERT INTO `lz_region` VALUES ('3105', '367', '安宁市', '3');
INSERT INTO `lz_region` VALUES ('3106', '367', '呈贡县', '3');
INSERT INTO `lz_region` VALUES ('3107', '367', '晋宁县', '3');
INSERT INTO `lz_region` VALUES ('3108', '367', '富民县', '3');
INSERT INTO `lz_region` VALUES ('3109', '367', '宜良县', '3');
INSERT INTO `lz_region` VALUES ('3110', '367', '嵩明县', '3');
INSERT INTO `lz_region` VALUES ('3111', '367', '石林县', '3');
INSERT INTO `lz_region` VALUES ('3112', '367', '禄劝', '3');
INSERT INTO `lz_region` VALUES ('3113', '367', '寻甸', '3');
INSERT INTO `lz_region` VALUES ('3114', '368', '兰坪', '3');
INSERT INTO `lz_region` VALUES ('3115', '368', '泸水县', '3');
INSERT INTO `lz_region` VALUES ('3116', '368', '福贡县', '3');
INSERT INTO `lz_region` VALUES ('3117', '368', '贡山', '3');
INSERT INTO `lz_region` VALUES ('3118', '369', '宁洱', '3');
INSERT INTO `lz_region` VALUES ('3119', '369', '思茅区', '3');
INSERT INTO `lz_region` VALUES ('3120', '369', '墨江', '3');
INSERT INTO `lz_region` VALUES ('3121', '369', '景东', '3');
INSERT INTO `lz_region` VALUES ('3122', '369', '景谷', '3');
INSERT INTO `lz_region` VALUES ('3123', '369', '镇沅', '3');
INSERT INTO `lz_region` VALUES ('3124', '369', '江城', '3');
INSERT INTO `lz_region` VALUES ('3125', '369', '孟连', '3');
INSERT INTO `lz_region` VALUES ('3126', '369', '澜沧', '3');
INSERT INTO `lz_region` VALUES ('3127', '369', '西盟', '3');
INSERT INTO `lz_region` VALUES ('3128', '370', '古城区', '3');
INSERT INTO `lz_region` VALUES ('3129', '370', '宁蒗', '3');
INSERT INTO `lz_region` VALUES ('3130', '370', '玉龙', '3');
INSERT INTO `lz_region` VALUES ('3131', '370', '永胜县', '3');
INSERT INTO `lz_region` VALUES ('3132', '370', '华坪县', '3');
INSERT INTO `lz_region` VALUES ('3133', '371', '隆阳区', '3');
INSERT INTO `lz_region` VALUES ('3134', '371', '施甸县', '3');
INSERT INTO `lz_region` VALUES ('3135', '371', '腾冲县', '3');
INSERT INTO `lz_region` VALUES ('3136', '371', '龙陵县', '3');
INSERT INTO `lz_region` VALUES ('3137', '371', '昌宁县', '3');
INSERT INTO `lz_region` VALUES ('3138', '372', '楚雄市', '3');
INSERT INTO `lz_region` VALUES ('3139', '372', '双柏县', '3');
INSERT INTO `lz_region` VALUES ('3140', '372', '牟定县', '3');
INSERT INTO `lz_region` VALUES ('3141', '372', '南华县', '3');
INSERT INTO `lz_region` VALUES ('3142', '372', '姚安县', '3');
INSERT INTO `lz_region` VALUES ('3143', '372', '大姚县', '3');
INSERT INTO `lz_region` VALUES ('3144', '372', '永仁县', '3');
INSERT INTO `lz_region` VALUES ('3145', '372', '元谋县', '3');
INSERT INTO `lz_region` VALUES ('3146', '372', '武定县', '3');
INSERT INTO `lz_region` VALUES ('3147', '372', '禄丰县', '3');
INSERT INTO `lz_region` VALUES ('3148', '373', '大理市', '3');
INSERT INTO `lz_region` VALUES ('3149', '373', '祥云县', '3');
INSERT INTO `lz_region` VALUES ('3150', '373', '宾川县', '3');
INSERT INTO `lz_region` VALUES ('3151', '373', '弥渡县', '3');
INSERT INTO `lz_region` VALUES ('3152', '373', '永平县', '3');
INSERT INTO `lz_region` VALUES ('3153', '373', '云龙县', '3');
INSERT INTO `lz_region` VALUES ('3154', '373', '洱源县', '3');
INSERT INTO `lz_region` VALUES ('3155', '373', '剑川县', '3');
INSERT INTO `lz_region` VALUES ('3156', '373', '鹤庆县', '3');
INSERT INTO `lz_region` VALUES ('3157', '373', '漾濞', '3');
INSERT INTO `lz_region` VALUES ('3158', '373', '南涧', '3');
INSERT INTO `lz_region` VALUES ('3159', '373', '巍山', '3');
INSERT INTO `lz_region` VALUES ('3160', '374', '潞西市', '3');
INSERT INTO `lz_region` VALUES ('3161', '374', '瑞丽市', '3');
INSERT INTO `lz_region` VALUES ('3162', '374', '梁河县', '3');
INSERT INTO `lz_region` VALUES ('3163', '374', '盈江县', '3');
INSERT INTO `lz_region` VALUES ('3164', '374', '陇川县', '3');
INSERT INTO `lz_region` VALUES ('3165', '375', '香格里拉县', '3');
INSERT INTO `lz_region` VALUES ('3166', '375', '德钦县', '3');
INSERT INTO `lz_region` VALUES ('3167', '375', '维西', '3');
INSERT INTO `lz_region` VALUES ('3168', '376', '泸西县', '3');
INSERT INTO `lz_region` VALUES ('3169', '376', '蒙自县', '3');
INSERT INTO `lz_region` VALUES ('3170', '376', '个旧市', '3');
INSERT INTO `lz_region` VALUES ('3171', '376', '开远市', '3');
INSERT INTO `lz_region` VALUES ('3172', '376', '绿春县', '3');
INSERT INTO `lz_region` VALUES ('3173', '376', '建水县', '3');
INSERT INTO `lz_region` VALUES ('3174', '376', '石屏县', '3');
INSERT INTO `lz_region` VALUES ('3175', '376', '弥勒县', '3');
INSERT INTO `lz_region` VALUES ('3176', '376', '元阳县', '3');
INSERT INTO `lz_region` VALUES ('3177', '376', '红河县', '3');
INSERT INTO `lz_region` VALUES ('3178', '376', '金平', '3');
INSERT INTO `lz_region` VALUES ('3179', '376', '河口', '3');
INSERT INTO `lz_region` VALUES ('3180', '376', '屏边', '3');
INSERT INTO `lz_region` VALUES ('3181', '377', '临翔区', '3');
INSERT INTO `lz_region` VALUES ('3182', '377', '凤庆县', '3');
INSERT INTO `lz_region` VALUES ('3183', '377', '云县', '3');
INSERT INTO `lz_region` VALUES ('3184', '377', '永德县', '3');
INSERT INTO `lz_region` VALUES ('3185', '377', '镇康县', '3');
INSERT INTO `lz_region` VALUES ('3186', '377', '双江', '3');
INSERT INTO `lz_region` VALUES ('3187', '377', '耿马', '3');
INSERT INTO `lz_region` VALUES ('3188', '377', '沧源', '3');
INSERT INTO `lz_region` VALUES ('3189', '378', '麒麟区', '3');
INSERT INTO `lz_region` VALUES ('3190', '378', '宣威市', '3');
INSERT INTO `lz_region` VALUES ('3191', '378', '马龙县', '3');
INSERT INTO `lz_region` VALUES ('3192', '378', '陆良县', '3');
INSERT INTO `lz_region` VALUES ('3193', '378', '师宗县', '3');
INSERT INTO `lz_region` VALUES ('3194', '378', '罗平县', '3');
INSERT INTO `lz_region` VALUES ('3195', '378', '富源县', '3');
INSERT INTO `lz_region` VALUES ('3196', '378', '会泽县', '3');
INSERT INTO `lz_region` VALUES ('3197', '378', '沾益县', '3');
INSERT INTO `lz_region` VALUES ('3198', '379', '文山县', '3');
INSERT INTO `lz_region` VALUES ('3199', '379', '砚山县', '3');
INSERT INTO `lz_region` VALUES ('3200', '379', '西畴县', '3');
INSERT INTO `lz_region` VALUES ('3201', '379', '麻栗坡县', '3');
INSERT INTO `lz_region` VALUES ('3202', '379', '马关县', '3');
INSERT INTO `lz_region` VALUES ('3203', '379', '丘北县', '3');
INSERT INTO `lz_region` VALUES ('3204', '379', '广南县', '3');
INSERT INTO `lz_region` VALUES ('3205', '379', '富宁县', '3');
INSERT INTO `lz_region` VALUES ('3206', '380', '景洪市', '3');
INSERT INTO `lz_region` VALUES ('3207', '380', '勐海县', '3');
INSERT INTO `lz_region` VALUES ('3208', '380', '勐腊县', '3');
INSERT INTO `lz_region` VALUES ('3209', '381', '红塔区', '3');
INSERT INTO `lz_region` VALUES ('3210', '381', '江川县', '3');
INSERT INTO `lz_region` VALUES ('3211', '381', '澄江县', '3');
INSERT INTO `lz_region` VALUES ('3212', '381', '通海县', '3');
INSERT INTO `lz_region` VALUES ('3213', '381', '华宁县', '3');
INSERT INTO `lz_region` VALUES ('3214', '381', '易门县', '3');
INSERT INTO `lz_region` VALUES ('3215', '381', '峨山', '3');
INSERT INTO `lz_region` VALUES ('3216', '381', '新平', '3');
INSERT INTO `lz_region` VALUES ('3217', '381', '元江', '3');
INSERT INTO `lz_region` VALUES ('3218', '382', '昭阳区', '3');
INSERT INTO `lz_region` VALUES ('3219', '382', '鲁甸县', '3');
INSERT INTO `lz_region` VALUES ('3220', '382', '巧家县', '3');
INSERT INTO `lz_region` VALUES ('3221', '382', '盐津县', '3');
INSERT INTO `lz_region` VALUES ('3222', '382', '大关县', '3');
INSERT INTO `lz_region` VALUES ('3223', '382', '永善县', '3');
INSERT INTO `lz_region` VALUES ('3224', '382', '绥江县', '3');
INSERT INTO `lz_region` VALUES ('3225', '382', '镇雄县', '3');
INSERT INTO `lz_region` VALUES ('3226', '382', '彝良县', '3');
INSERT INTO `lz_region` VALUES ('3227', '382', '威信县', '3');
INSERT INTO `lz_region` VALUES ('3228', '382', '水富县', '3');
INSERT INTO `lz_region` VALUES ('3229', '383', '西湖区', '3');
INSERT INTO `lz_region` VALUES ('3230', '383', '上城区', '3');
INSERT INTO `lz_region` VALUES ('3231', '383', '下城区', '3');
INSERT INTO `lz_region` VALUES ('3232', '383', '拱墅区', '3');
INSERT INTO `lz_region` VALUES ('3233', '383', '滨江区', '3');
INSERT INTO `lz_region` VALUES ('3234', '383', '江干区', '3');
INSERT INTO `lz_region` VALUES ('3235', '383', '萧山区', '3');
INSERT INTO `lz_region` VALUES ('3236', '383', '余杭区', '3');
INSERT INTO `lz_region` VALUES ('3237', '383', '市郊', '3');
INSERT INTO `lz_region` VALUES ('3238', '383', '建德市', '3');
INSERT INTO `lz_region` VALUES ('3239', '383', '富阳市', '3');
INSERT INTO `lz_region` VALUES ('3240', '383', '临安市', '3');
INSERT INTO `lz_region` VALUES ('3241', '383', '桐庐县', '3');
INSERT INTO `lz_region` VALUES ('3242', '383', '淳安县', '3');
INSERT INTO `lz_region` VALUES ('3243', '384', '吴兴区', '3');
INSERT INTO `lz_region` VALUES ('3244', '384', '南浔区', '3');
INSERT INTO `lz_region` VALUES ('3245', '384', '德清县', '3');
INSERT INTO `lz_region` VALUES ('3246', '384', '长兴县', '3');
INSERT INTO `lz_region` VALUES ('3247', '384', '安吉县', '3');
INSERT INTO `lz_region` VALUES ('3248', '385', '南湖区', '3');
INSERT INTO `lz_region` VALUES ('3249', '385', '秀洲区', '3');
INSERT INTO `lz_region` VALUES ('3250', '385', '海宁市', '3');
INSERT INTO `lz_region` VALUES ('3251', '385', '嘉善县', '3');
INSERT INTO `lz_region` VALUES ('3252', '385', '平湖市', '3');
INSERT INTO `lz_region` VALUES ('3253', '385', '桐乡市', '3');
INSERT INTO `lz_region` VALUES ('3254', '385', '海盐县', '3');
INSERT INTO `lz_region` VALUES ('3255', '386', '婺城区', '3');
INSERT INTO `lz_region` VALUES ('3256', '386', '金东区', '3');
INSERT INTO `lz_region` VALUES ('3257', '386', '兰溪市', '3');
INSERT INTO `lz_region` VALUES ('3258', '386', '市区', '3');
INSERT INTO `lz_region` VALUES ('3259', '386', '佛堂镇', '3');
INSERT INTO `lz_region` VALUES ('3260', '386', '上溪镇', '3');
INSERT INTO `lz_region` VALUES ('3261', '386', '义亭镇', '3');
INSERT INTO `lz_region` VALUES ('3262', '386', '大陈镇', '3');
INSERT INTO `lz_region` VALUES ('3263', '386', '苏溪镇', '3');
INSERT INTO `lz_region` VALUES ('3264', '386', '赤岸镇', '3');
INSERT INTO `lz_region` VALUES ('3265', '386', '东阳市', '3');
INSERT INTO `lz_region` VALUES ('3266', '386', '永康市', '3');
INSERT INTO `lz_region` VALUES ('3267', '386', '武义县', '3');
INSERT INTO `lz_region` VALUES ('3268', '386', '浦江县', '3');
INSERT INTO `lz_region` VALUES ('3269', '386', '磐安县', '3');
INSERT INTO `lz_region` VALUES ('3270', '387', '莲都区', '3');
INSERT INTO `lz_region` VALUES ('3271', '387', '龙泉市', '3');
INSERT INTO `lz_region` VALUES ('3272', '387', '青田县', '3');
INSERT INTO `lz_region` VALUES ('3273', '387', '缙云县', '3');
INSERT INTO `lz_region` VALUES ('3274', '387', '遂昌县', '3');
INSERT INTO `lz_region` VALUES ('3275', '387', '松阳县', '3');
INSERT INTO `lz_region` VALUES ('3276', '387', '云和县', '3');
INSERT INTO `lz_region` VALUES ('3277', '387', '庆元县', '3');
INSERT INTO `lz_region` VALUES ('3278', '387', '景宁', '3');
INSERT INTO `lz_region` VALUES ('3279', '388', '海曙区', '3');
INSERT INTO `lz_region` VALUES ('3280', '388', '江东区', '3');
INSERT INTO `lz_region` VALUES ('3281', '388', '江北区', '3');
INSERT INTO `lz_region` VALUES ('3282', '388', '镇海区', '3');
INSERT INTO `lz_region` VALUES ('3283', '388', '北仑区', '3');
INSERT INTO `lz_region` VALUES ('3284', '388', '鄞州区', '3');
INSERT INTO `lz_region` VALUES ('3285', '388', '余姚市', '3');
INSERT INTO `lz_region` VALUES ('3286', '388', '慈溪市', '3');
INSERT INTO `lz_region` VALUES ('3287', '388', '奉化市', '3');
INSERT INTO `lz_region` VALUES ('3288', '388', '象山县', '3');
INSERT INTO `lz_region` VALUES ('3289', '388', '宁海县', '3');
INSERT INTO `lz_region` VALUES ('3290', '389', '越城区', '3');
INSERT INTO `lz_region` VALUES ('3291', '389', '上虞市', '3');
INSERT INTO `lz_region` VALUES ('3292', '389', '嵊州市', '3');
INSERT INTO `lz_region` VALUES ('3293', '389', '绍兴县', '3');
INSERT INTO `lz_region` VALUES ('3294', '389', '新昌县', '3');
INSERT INTO `lz_region` VALUES ('3295', '389', '诸暨市', '3');
INSERT INTO `lz_region` VALUES ('3296', '390', '椒江区', '3');
INSERT INTO `lz_region` VALUES ('3297', '390', '黄岩区', '3');
INSERT INTO `lz_region` VALUES ('3298', '390', '路桥区', '3');
INSERT INTO `lz_region` VALUES ('3299', '390', '温岭市', '3');
INSERT INTO `lz_region` VALUES ('3300', '390', '临海市', '3');
INSERT INTO `lz_region` VALUES ('3301', '390', '玉环县', '3');
INSERT INTO `lz_region` VALUES ('3302', '390', '三门县', '3');
INSERT INTO `lz_region` VALUES ('3303', '390', '天台县', '3');
INSERT INTO `lz_region` VALUES ('3304', '390', '仙居县', '3');
INSERT INTO `lz_region` VALUES ('3305', '391', '鹿城区', '3');
INSERT INTO `lz_region` VALUES ('3306', '391', '龙湾区', '3');
INSERT INTO `lz_region` VALUES ('3307', '391', '瓯海区', '3');
INSERT INTO `lz_region` VALUES ('3308', '391', '瑞安市', '3');
INSERT INTO `lz_region` VALUES ('3309', '391', '乐清市', '3');
INSERT INTO `lz_region` VALUES ('3310', '391', '洞头县', '3');
INSERT INTO `lz_region` VALUES ('3311', '391', '永嘉县', '3');
INSERT INTO `lz_region` VALUES ('3312', '391', '平阳县', '3');
INSERT INTO `lz_region` VALUES ('3313', '391', '苍南县', '3');
INSERT INTO `lz_region` VALUES ('3314', '391', '文成县', '3');
INSERT INTO `lz_region` VALUES ('3315', '391', '泰顺县', '3');
INSERT INTO `lz_region` VALUES ('3316', '392', '定海区', '3');
INSERT INTO `lz_region` VALUES ('3317', '392', '普陀区', '3');
INSERT INTO `lz_region` VALUES ('3318', '392', '岱山县', '3');
INSERT INTO `lz_region` VALUES ('3319', '392', '嵊泗县', '3');
INSERT INTO `lz_region` VALUES ('3320', '393', '衢州市', '3');
INSERT INTO `lz_region` VALUES ('3321', '393', '江山市', '3');
INSERT INTO `lz_region` VALUES ('3322', '393', '常山县', '3');
INSERT INTO `lz_region` VALUES ('3323', '393', '开化县', '3');
INSERT INTO `lz_region` VALUES ('3324', '393', '龙游县', '3');
INSERT INTO `lz_region` VALUES ('3325', '394', '合川区', '3');
INSERT INTO `lz_region` VALUES ('3326', '394', '江津区', '3');
INSERT INTO `lz_region` VALUES ('3327', '394', '南川区', '3');
INSERT INTO `lz_region` VALUES ('3328', '394', '永川区', '3');
INSERT INTO `lz_region` VALUES ('3329', '394', '南岸区', '3');
INSERT INTO `lz_region` VALUES ('3330', '394', '渝北区', '3');
INSERT INTO `lz_region` VALUES ('3331', '394', '万盛区', '3');
INSERT INTO `lz_region` VALUES ('3332', '394', '大渡口区', '3');
INSERT INTO `lz_region` VALUES ('3333', '394', '万州区', '3');
INSERT INTO `lz_region` VALUES ('3334', '394', '北碚区', '3');
INSERT INTO `lz_region` VALUES ('3335', '394', '沙坪坝区', '3');
INSERT INTO `lz_region` VALUES ('3336', '394', '巴南区', '3');
INSERT INTO `lz_region` VALUES ('3337', '394', '涪陵区', '3');
INSERT INTO `lz_region` VALUES ('3338', '394', '江北区', '3');
INSERT INTO `lz_region` VALUES ('3339', '394', '九龙坡区', '3');
INSERT INTO `lz_region` VALUES ('3340', '394', '渝中区', '3');
INSERT INTO `lz_region` VALUES ('3341', '394', '黔江开发区', '3');
INSERT INTO `lz_region` VALUES ('3342', '394', '长寿区', '3');
INSERT INTO `lz_region` VALUES ('3343', '394', '双桥区', '3');
INSERT INTO `lz_region` VALUES ('3344', '394', '綦江县', '3');
INSERT INTO `lz_region` VALUES ('3345', '394', '潼南县', '3');
INSERT INTO `lz_region` VALUES ('3346', '394', '铜梁县', '3');
INSERT INTO `lz_region` VALUES ('3347', '394', '大足县', '3');
INSERT INTO `lz_region` VALUES ('3348', '394', '荣昌县', '3');
INSERT INTO `lz_region` VALUES ('3349', '394', '璧山县', '3');
INSERT INTO `lz_region` VALUES ('3350', '394', '垫江县', '3');
INSERT INTO `lz_region` VALUES ('3351', '394', '武隆县', '3');
INSERT INTO `lz_region` VALUES ('3352', '394', '丰都县', '3');
INSERT INTO `lz_region` VALUES ('3353', '394', '城口县', '3');
INSERT INTO `lz_region` VALUES ('3354', '394', '梁平县', '3');
INSERT INTO `lz_region` VALUES ('3355', '394', '开县', '3');
INSERT INTO `lz_region` VALUES ('3356', '394', '巫溪县', '3');
INSERT INTO `lz_region` VALUES ('3357', '394', '巫山县', '3');
INSERT INTO `lz_region` VALUES ('3358', '394', '奉节县', '3');
INSERT INTO `lz_region` VALUES ('3359', '394', '云阳县', '3');
INSERT INTO `lz_region` VALUES ('3360', '394', '忠县', '3');
INSERT INTO `lz_region` VALUES ('3361', '394', '石柱', '3');
INSERT INTO `lz_region` VALUES ('3362', '394', '彭水', '3');
INSERT INTO `lz_region` VALUES ('3363', '394', '酉阳', '3');
INSERT INTO `lz_region` VALUES ('3364', '394', '秀山', '3');
INSERT INTO `lz_region` VALUES ('3365', '395', '沙田区', '3');
INSERT INTO `lz_region` VALUES ('3366', '395', '东区', '3');
INSERT INTO `lz_region` VALUES ('3367', '395', '观塘区', '3');
INSERT INTO `lz_region` VALUES ('3368', '395', '黄大仙区', '3');
INSERT INTO `lz_region` VALUES ('3369', '395', '九龙城区', '3');
INSERT INTO `lz_region` VALUES ('3370', '395', '屯门区', '3');
INSERT INTO `lz_region` VALUES ('3371', '395', '葵青区', '3');
INSERT INTO `lz_region` VALUES ('3372', '395', '元朗区', '3');
INSERT INTO `lz_region` VALUES ('3373', '395', '深水埗区', '3');
INSERT INTO `lz_region` VALUES ('3374', '395', '西贡区', '3');
INSERT INTO `lz_region` VALUES ('3375', '395', '大埔区', '3');
INSERT INTO `lz_region` VALUES ('3376', '395', '湾仔区', '3');
INSERT INTO `lz_region` VALUES ('3377', '395', '油尖旺区', '3');
INSERT INTO `lz_region` VALUES ('3378', '395', '北区', '3');
INSERT INTO `lz_region` VALUES ('3379', '395', '南区', '3');
INSERT INTO `lz_region` VALUES ('3380', '395', '荃湾区', '3');
INSERT INTO `lz_region` VALUES ('3381', '395', '中西区', '3');
INSERT INTO `lz_region` VALUES ('3382', '395', '离岛区', '3');
INSERT INTO `lz_region` VALUES ('3383', '396', '澳门', '3');
INSERT INTO `lz_region` VALUES ('3384', '397', '台北', '3');
INSERT INTO `lz_region` VALUES ('3385', '397', '高雄', '3');
INSERT INTO `lz_region` VALUES ('3386', '397', '基隆', '3');
INSERT INTO `lz_region` VALUES ('3387', '397', '台中', '3');
INSERT INTO `lz_region` VALUES ('3388', '397', '台南', '3');
INSERT INTO `lz_region` VALUES ('3389', '397', '新竹', '3');
INSERT INTO `lz_region` VALUES ('3390', '397', '嘉义', '3');
INSERT INTO `lz_region` VALUES ('3391', '397', '宜兰县', '3');
INSERT INTO `lz_region` VALUES ('3392', '397', '桃园县', '3');
INSERT INTO `lz_region` VALUES ('3393', '397', '苗栗县', '3');
INSERT INTO `lz_region` VALUES ('3394', '397', '彰化县', '3');
INSERT INTO `lz_region` VALUES ('3395', '397', '南投县', '3');
INSERT INTO `lz_region` VALUES ('3396', '397', '云林县', '3');
INSERT INTO `lz_region` VALUES ('3397', '397', '屏东县', '3');
INSERT INTO `lz_region` VALUES ('3398', '397', '台东县', '3');
INSERT INTO `lz_region` VALUES ('3399', '397', '花莲县', '3');
INSERT INTO `lz_region` VALUES ('3400', '397', '澎湖县', '3');
INSERT INTO `lz_region` VALUES ('3401', '3', '合肥', '2');
INSERT INTO `lz_region` VALUES ('3402', '3401', '庐阳区', '3');
INSERT INTO `lz_region` VALUES ('3403', '3401', '瑶海区', '3');
INSERT INTO `lz_region` VALUES ('3404', '3401', '蜀山区', '3');
INSERT INTO `lz_region` VALUES ('3405', '3401', '包河区', '3');
INSERT INTO `lz_region` VALUES ('3406', '3401', '长丰县', '3');
INSERT INTO `lz_region` VALUES ('3407', '3401', '肥东县', '3');
INSERT INTO `lz_region` VALUES ('3408', '3401', '肥西县', '3');
INSERT INTO `lz_region` VALUES ('3409', '0', '国外', '0');

-- ----------------------------
-- Table structure for `lz_role`
-- ----------------------------
DROP TABLE IF EXISTS `lz_role`;
CREATE TABLE `lz_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(255) NOT NULL DEFAULT '',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_role
-- ----------------------------
INSERT INTO `lz_role` VALUES ('1', '超级管理员', '1', '超级管理', '0', '0');
INSERT INTO `lz_role` VALUES ('2', '普通管理员', '1', '普通管理员', '0', '0');
INSERT INTO `lz_role` VALUES ('3', '注册用户', '1', '注册用户', '0', '0');
INSERT INTO `lz_role` VALUES ('4', '游客', '1', '游客', '0', '0');

-- ----------------------------
-- Table structure for `lz_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `lz_role_user`;
CREATE TABLE `lz_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT '0',
  `user_id` char(32) DEFAULT '0',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for `lz_signature`
-- ----------------------------
DROP TABLE IF EXISTS `lz_signature`;
CREATE TABLE `lz_signature` (
  `id` int(2) NOT NULL,
  `user_id` int(2) DEFAULT NULL,
  `signature` text,
  `addtime` int(50) NOT NULL,
  `signature_num` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_signature
-- ----------------------------
INSERT INTO `lz_signature` VALUES ('1', '2603', 'data:image/png;base64,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', '1525078690', 'LRJY1525078690292960');
INSERT INTO `lz_signature` VALUES ('2', '2603', 'data:image/png;base64,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', '1525078945', 'LRJY1525078945879060');
INSERT INTO `lz_signature` VALUES ('3', '2603', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACWCAYAAABkW7XSAAAEYklEQVR4Xu3UAQkAAAwCwdm/9HI83BLIOdw5AgQIRAQWySkmAQIEzmB5AgIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlACBB1YxAJfjJb2jAAAAAElFTkSuQmCC', '1525416777', 'LRJY1525416777256932');
INSERT INTO `lz_signature` VALUES ('4', '2603', 'data:image/png;base64,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', '1525417007', 'LRJY1525417007596114');
INSERT INTO `lz_signature` VALUES ('6', '2606', 'data:image/png;base64,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', '1525425693', 'LRJY1525425693130311');
INSERT INTO `lz_signature` VALUES ('8', '2603', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACWCAYAAABkW7XSAAAEYklEQVR4Xu3UAQkAAAwCwdm/9HI83BLIOdw5AgQIRAQWySkmAQIEzmB5AgIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlACBB1YxAJfjJb2jAAAAAElFTkSuQmCC', '1525680488', 'LRJY1525680488126934');
INSERT INTO `lz_signature` VALUES ('9', '2608', 'data:image/png;base64,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', '1525502567', 'LRJY1525502567464149');
INSERT INTO `lz_signature` VALUES ('10', '2603', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACWCAYAAABkW7XSAAAEYklEQVR4Xu3UAQkAAAwCwdm/9HI83BLIOdw5AgQIRAQWySkmAQIEzmB5AgIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlAABg+UHCBDICBisTFWCEiBgsPwAAQIZAYOVqUpQAgQMlh8gQCAjYLAyVQlKgIDB8gMECGQEDFamKkEJEDBYfoAAgYyAwcpUJSgBAgbLDxAgkBEwWJmqBCVAwGD5AQIEMgIGK1OVoAQIGCw/QIBARsBgZaoSlACBB1YxAJfjJb2jAAAAAElFTkSuQmCC', '1525682717', 'LRJY1525682717268864');
INSERT INTO `lz_signature` VALUES ('11', '2603', 'data:image/png;base64,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', '1525688387', 'LRJY1525688387229503');
INSERT INTO `lz_signature` VALUES ('12', '2603', 'data:image/png;base64,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', '1525688687', 'LRJY1525688687625629');
INSERT INTO `lz_signature` VALUES ('13', '2608', 'data:image/png;base64,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', '1525758085', 'LRJY1525758085898842');
INSERT INTO `lz_signature` VALUES ('14', '2606', 'data:image/png;base64,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', '1525853337', 'LRJY1525853337403443');
INSERT INTO `lz_signature` VALUES ('15', '2606', 'data:image/png;base64,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', '1525859555', 'LRJY1525859555632655');
INSERT INTO `lz_signature` VALUES ('16', '2603', 'data:image/png;base64,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', '1525859951', 'LRJY1525859951128608');

-- ----------------------------
-- Table structure for `lz_sitemap`
-- ----------------------------
DROP TABLE IF EXISTS `lz_sitemap`;
CREATE TABLE `lz_sitemap` (
  `id` int(20) NOT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_sitemap
-- ----------------------------
INSERT INTO `lz_sitemap` VALUES ('1', '1525497547');

-- ----------------------------
-- Table structure for `lz_student`
-- ----------------------------
DROP TABLE IF EXISTS `lz_student`;
CREATE TABLE `lz_student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` int(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) NOT NULL DEFAULT '',
  `title` varchar(80) NOT NULL DEFAULT '',
  `keywords` varchar(120) NOT NULL DEFAULT '',
  `description` mediumtext,
  `content` text,
  `template` varchar(40) NOT NULL DEFAULT '',
  `posid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `readgroup` varchar(100) NOT NULL DEFAULT '',
  `readpoint` smallint(5) NOT NULL DEFAULT '0',
  `listorder` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(11) unsigned NOT NULL DEFAULT '0',
  `pic` varchar(80) NOT NULL DEFAULT '',
  `group` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`id`,`status`,`listorder`),
  KEY `catid` (`id`,`catid`,`status`),
  KEY `listorder` (`id`,`catid`,`status`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_student
-- ----------------------------
INSERT INTO `lz_student` VALUES ('9', '15', '1', 'admin', '余*欢  女  430811 19810730882*   201409入学中国传媒大学201612毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522075065', '1522217610', '', '');
INSERT INTO `lz_student` VALUES ('10', '15', '1', 'admin', '吴*  女   44018419831122339*   201503入学陕西师范大学201706毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522075379', '1522217629', '', '');
INSERT INTO `lz_student` VALUES ('11', '15', '1', 'admin', '张*芳  女  44060719930714779*   201503入学取陕西师范大学201706毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522076198', '1522217644', '', '');
INSERT INTO `lz_student` VALUES ('12', '15', '1', 'admin', '李*  女  44128419910202662*   201503   入学汕头大学  法律事务  201706毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522076227', '1522216367', '', '');
INSERT INTO `lz_student` VALUES ('13', '15', '1', 'admin', '张*丹  女  45142119931208231*   201503入学电子科技大学201706毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522076250', '1522217687', '', '');
INSERT INTO `lz_student` VALUES ('14', '15', '1', 'admin', '于*婧  女  45142119940705930*   201503入学广州工商学院201706毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522076280', '1522217541', '', '');
INSERT INTO `lz_student` VALUES ('15', '15', '1', 'admin', '李*芬  女  50011319840128120*  201503入学电子科技大学201706毕业', '', ' ', null, '', '0', '1', '0', '', '0', '0', '0', '1522076299', '1522217509', '', '');
INSERT INTO `lz_student` VALUES ('16', '15', '1', 'admin', '谭*芝  女	51013119910711218*   201503入学汕头大学201706毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522076327', '1522217482', '', '');
INSERT INTO `lz_student` VALUES ('17', '15', '10', 'lirenjy', '万*青  女  50023519821003428*   201503入学电子科大学201706毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522215712', '1522217463', '', '');
INSERT INTO `lz_student` VALUES ('18', '15', '10', 'lirenjy', '周*红  女	51030219930715571*  201503入学广东开放大学201706毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522215782', '1522217705', '', '');
INSERT INTO `lz_student` VALUES ('19', '15', '10', 'lirenjy', '唐*宇  女	51072519871103335*   201509入学中国传媒大学201712毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522215797', '1522217729', '', '');
INSERT INTO `lz_student` VALUES ('20', '15', '10', 'lirenjy', '任*思  女	52032519851025758*   201509入学陕西师范大学201712毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522215816', '1522217405', '', '');
INSERT INTO `lz_student` VALUES ('21', '15', '10', 'lirenjy', '周*  男  50011319810116897*   201509入学电子科技大学201712毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522215831', '1522217390', '', '');
INSERT INTO `lz_student` VALUES ('22', '15', '10', 'lirenjy', '李建*  男	53062519920103335*   201509入学电子科技大学201712毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522215853', '1522217373', '', '');
INSERT INTO `lz_student` VALUES ('23', '15', '10', 'lirenjy', '张冬*  女  61042219871128923*   201509入学中国传媒大学201712毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522215869', '1522217354', '', '');
INSERT INTO `lz_student` VALUES ('24', '15', '10', 'lirenjy', '余*晶  女  61082919921002741*   201509入学汕头大学201712毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522215892', '1522217322', '', '');
INSERT INTO `lz_student` VALUES ('25', '15', '10', 'lirenjy', '白*洲  女  62082119890520452*   201509入学中国传媒大学201712毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522215907', '1522217288', '', '');
INSERT INTO `lz_student` VALUES ('26', '15', '10', 'lirenjy', '许*芳  女	62082119785412116*   201509入学汕头大学201712毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522215929', '1522217279', '', '');
INSERT INTO `lz_student` VALUES ('27', '15', '10', 'lirenjy', '陈*云  女	61042219901223541*   201509入学中国传媒大学201712毕业', '', '', null, '', '0', '1', '0', '', '0', '0', '0', '1522215962', '1522217263', '', '');

-- ----------------------------
-- Table structure for `lz_system`
-- ----------------------------
DROP TABLE IF EXISTS `lz_system`;
CREATE TABLE `lz_system` (
  `id` int(36) unsigned NOT NULL,
  `name` char(36) NOT NULL DEFAULT '' COMMENT '网站名称',
  `url` varchar(36) NOT NULL DEFAULT '' COMMENT '网址',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `key` varchar(200) NOT NULL COMMENT '关键字',
  `des` varchar(200) NOT NULL COMMENT '描述',
  `bah` varchar(50) DEFAULT NULL COMMENT '备案号',
  `copyright` varchar(30) DEFAULT NULL COMMENT 'copyright',
  `ads` varchar(120) DEFAULT NULL COMMENT '公司地址',
  `tel` varchar(15) DEFAULT NULL COMMENT '公司电话',
  `email` varchar(50) DEFAULT NULL COMMENT '公司邮箱',
  `logo` varchar(120) DEFAULT NULL COMMENT 'logo',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_system
-- ----------------------------
INSERT INTO `lz_system` VALUES ('1', '立人助学', 'http://www.lingzhikeji.com', '立人助学', '立人助学', '立人助学内容管理系统，微信公众平台、APP移动应用设计、HTML5网站API定制开发。大型企业网站、个人博客论坛、手机网站定制开发。更高效、更快捷的进行定制开发。', 'lz-kj', '2015-2020', '深圳龙岗区坂田街道布龙路575号（坂雪岗大道坂田地铁站B出口)', '17665495306', 'guoqf_online@yeah.net', '/uploads/20180308/7d6e1fbf8338f1a184012606d347e390.png');

-- ----------------------------
-- Table structure for `lz_user_level`
-- ----------------------------
DROP TABLE IF EXISTS `lz_user_level`;
CREATE TABLE `lz_user_level` (
  `level_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `level_name` varchar(30) DEFAULT NULL COMMENT '头衔名称',
  `sort` int(3) DEFAULT '0' COMMENT '排序',
  `bomlimit` int(5) DEFAULT '0' COMMENT '积分下限',
  `toplimit` int(5) DEFAULT '0' COMMENT '积分上限',
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_user_level
-- ----------------------------
INSERT INTO `lz_user_level` VALUES ('1', '游客', '1', '0', '500');
INSERT INTO `lz_user_level` VALUES ('10', '学员', '50', '0', '100');
INSERT INTO `lz_user_level` VALUES ('11', '测试', '50', '0', '0');

-- ----------------------------
-- Table structure for `lz_users`
-- ----------------------------
DROP TABLE IF EXISTS `lz_users`;
CREATE TABLE `lz_users` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `last_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `mobile` varchar(20) NOT NULL COMMENT '手机号码',
  `mobile_validated` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否验证手机',
  `level` tinyint(1) DEFAULT '1' COMMENT '会员等级',
  `is_lock` tinyint(1) DEFAULT '0' COMMENT '是否被锁定冻结',
  `token` varchar(64) DEFAULT '' COMMENT '用于app 授权类似于session_id',
  `sign` varchar(255) DEFAULT '' COMMENT '签名',
  `status` varchar(20) DEFAULT 'hide' COMMENT '登录状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2613 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_users
-- ----------------------------
INSERT INTO `lz_users` VALUES ('2603', '0', '1525859252', '113.81.24.152', '17665495306', '0', '10', '0', '', '', 'hide');
INSERT INTO `lz_users` VALUES ('2604', '0', '1525011995', '112.97.51.227', '13636102755', '0', '10', '0', '', '', 'hide');
INSERT INTO `lz_users` VALUES ('2605', '0', '0', '', '13554305630', '0', '10', '0', '', '', 'hide');
INSERT INTO `lz_users` VALUES ('2606', '0', '1525497674', '113.81.26.7', '13410012018', '0', '10', '0', '', '', 'hide');
INSERT INTO `lz_users` VALUES ('2607', '1524747423', '0', '', '123456789', '0', '10', '0', '', '', 'hide');
INSERT INTO `lz_users` VALUES ('2608', '1524801211', '1525501949', '183.11.71.126', '13713706829', '0', '10', '0', '', '', 'hide');
INSERT INTO `lz_users` VALUES ('2609', '1524802258', '1525485841', '113.83.65.66', '', '0', '1', '0', '', '', 'hide');
INSERT INTO `lz_users` VALUES ('2610', '1524802327', '0', '', '18123986806', '0', '10', '0', '', '', 'hide');
INSERT INTO `lz_users` VALUES ('2611', '1525441968', '0', '', '18128859052', '0', '1', '0', '', '', 'hide');
INSERT INTO `lz_users` VALUES ('2612', '1525855320', '0', '', '123', '0', '1', '0', '', '', 'hide');

-- ----------------------------
-- Table structure for `lz_users_formal`
-- ----------------------------
DROP TABLE IF EXISTS `lz_users_formal`;
CREATE TABLE `lz_users_formal` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `reg_img` varchar(200) DEFAULT NULL COMMENT '登记照片',
  `f_idcard_img` varchar(200) DEFAULT NULL,
  `r_idcard_img` varchar(200) DEFAULT NULL,
  `dip_scans_img` varchar(200) DEFAULT NULL,
  `name` char(20) DEFAULT NULL,
  `sex` int(2) DEFAULT '0',
  `nation` char(10) DEFAULT '未填写',
  `idcard` varchar(18) DEFAULT NULL,
  `education` char(20) DEFAULT NULL,
  `p_origin` char(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `em_name` char(20) DEFAULT NULL,
  `em_tel` char(20) DEFAULT NULL,
  `email` char(80) DEFAULT NULL,
  `qq` char(20) DEFAULT NULL,
  `contract` char(20) DEFAULT NULL,
  `company` char(50) DEFAULT NULL,
  `old_school` char(100) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `university_type` char(10) DEFAULT NULL,
  `university` char(20) DEFAULT NULL,
  `university_apply` char(50) DEFAULT NULL,
  `university_course` char(20) DEFAULT NULL,
  `tuition` int(8) DEFAULT '0',
  `understand_way` char(50) DEFAULT NULL,
  `study_md` char(20) DEFAULT NULL,
  `f_date` varchar(50) DEFAULT NULL,
  `f_date_num` varchar(50) DEFAULT NULL,
  `f_money` int(20) DEFAULT NULL,
  `s_date` varchar(50) DEFAULT NULL,
  `s_date_num` varchar(50) DEFAULT NULL,
  `s_money` int(20) DEFAULT NULL,
  `t_date` varchar(50) DEFAULT NULL,
  `t_date_num` varchar(50) DEFAULT NULL,
  `t_money` int(20) DEFAULT '0',
  `study_yeah` char(10) DEFAULT NULL,
  `teacher` char(10) DEFAULT NULL,
  `f_pingjia` int(2) DEFAULT '0',
  `f_teacher` char(20) DEFAULT NULL,
  `f_teacher_date` varchar(50) DEFAULT NULL,
  `f_soure` varchar(50) DEFAULT NULL,
  `other_remarks` varchar(100) DEFAULT NULL,
  `addtime` varchar(50) NOT NULL,
  `state` char(10) DEFAULT NULL,
  `enrol_date` varchar(50) DEFAULT NULL,
  `graduation_date` varchar(50) DEFAULT NULL,
  `grant_date` varchar(50) DEFAULT NULL,
  `school_status` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lz_users_formal
-- ----------------------------
INSERT INTO `lz_users_formal` VALUES ('1', '2603', '', '', '', '', '郭庆发1', '1', '汉', '42118119881130231x', '大专', '湖北', '17665495306', '', '', '', '270979964', '自考合同', '销售', '武汉大学', '吉祥地铁站', '开放教育', '广东开放大学', '艺术设计', '专升本', '0', '', '就业需求', '', '', '0', '', '', '0', '', '', '0', '', null, '0', null, null, null, '自考，尽快拿证', '1525078629', '2', '', '', '', '');
INSERT INTO `lz_users_formal` VALUES ('2', '2603', '/uploads/certificates/20180430/154e4edbb11b297a45d37afcc8a94c16.png', '/uploads/certificates/20180430/c88b8b78a6071dbddba9ce107ee2771a.png', '/uploads/certificates/20180430/0e812319a23601e8a174a1c52062ddba.png', '/uploads/certificates/20180430/7327756cc041c6f3857224d6d9bacc08.png', '郭庆发2', '1', '汉', '42118119881130231x', '大专', '湖北', '17665495306', '', '', '', '270979964', '非自考合同', '文职', '武汉大学', '吉祥地铁站', '开放教育', '广东开放大学', '艺术', '高升专', '8000', '', '自我提升', '2018-04-26', '123456', '2800', '', '', '0', '', '', '0', '4', null, '0', null, null, null, '我的备注', '1525078919', '2', '', '', '', '注册学籍');
INSERT INTO `lz_users_formal` VALUES ('3', '2603', null, null, null, null, '郭庆发', '1', '汉', '421181198811302315', '大专', '湖北', '17665495306', null, null, null, '270979964', '非自考合同', '成左右', '中鹏', '452883', '开放教育', '主机', '专业', '专升本', '0', null, null, null, null, null, null, null, null, null, null, '0', null, null, '0', null, null, null, '备注', '1525416007', '2', null, null, null, null);
INSERT INTO `lz_users_formal` VALUES ('4', '2603', null, null, null, null, '测试', '1', '汉', '421181198811235652', '中专', '湖北', '17665495630', null, null, null, '270979965', '非自考合同', '程序员', '中鹏', '438300', '网络教育', '院校', '艺术设计', '高升本', '0', null, null, null, null, null, null, null, null, null, null, '0', null, null, '0', null, null, null, '备注', '1525416926', '2', null, null, null, null);
INSERT INTO `lz_users_formal` VALUES ('6', '2606', null, null, null, null, '陆香', '2', '满', '220203197903214820', '大专', '吉林', '13410012018', null, null, null, '342804925', '非自考合同', '销售', '物流', '深圳', '开放教育', '广东开放大学', '会计', '专升本', '0', null, null, null, null, null, null, null, null, null, null, '0', null, null, '0', null, null, null, '', '1525425650', '2', null, null, null, null);
INSERT INTO `lz_users_formal` VALUES ('7', '2611', null, null, null, null, '刘童来', '1', '汉', '360782198805165428', '大专', '江西', '18128859052', null, null, null, '1810751177', '非自考合同', '老师', '深圳大学', '深圳龙岗', '网络教育', '中国石油大学', '计算机', '专升本', '0', null, null, null, null, null, null, null, null, null, null, '0', null, null, '0', null, null, null, '', '1525485411', '2', null, null, null, null);
INSERT INTO `lz_users_formal` VALUES ('9', '2608', null, null, null, null, '晓玲', '2', '汗族', '110200112210773481', '大专', '北京', '13713706829', null, null, null, '123123123', '非自考合同', '主管', '重庆工商学校', '坂田五和', '网络教育', '中国传媒大学', '工商管理', '专升本', '0', null, null, null, null, null, null, null, null, null, null, '0', null, null, '0', null, null, null, '', '1525502415', '2', null, null, null, null);
INSERT INTO `lz_users_formal` VALUES ('10', '2603', null, null, null, null, '郭庆发2018', '1', '汉', '42118119881130231X', '中专', '湖北', '17665495306', null, null, null, '270979964', '自考合同', '程序员', '中鹏', '龙岗吉祥地铁站', '网络教育', '武汉大学', '艺术设计', '高升本', '0', null, null, null, null, null, null, null, null, null, null, '0', null, null, '0', null, null, null, '备注', '1525682947', '0', null, null, null, null);
INSERT INTO `lz_users_formal` VALUES ('11', '2603', null, null, null, null, '测试', '2', '汉', '42118119881130231x', '本科', '湖北', '17665495306', null, null, null, '270979964', '自考合同', '程序员', '武汉院校', '武汉龙岗吉祥地铁站', '自学考试', '报考院校', '专业', '专升本', '0', null, null, null, null, null, null, null, null, null, null, '0', null, null, '0', null, null, null, '我是备注', '1525688508', '0', null, null, null, null);
INSERT INTO `lz_users_formal` VALUES ('13', '2608', null, null, null, null, '晓玲', '2', '汉', '110101106161610101', '大专', '北京', '13713706829', null, null, null, '464901081', '非自考合同', '设计师', '重庆工商学校', '深圳市坂田五和南路108号凯旋商业大厦', '网络教育', '中国传媒大学', '工商企业管理', '专升本', '0', null, null, null, null, null, null, null, null, null, null, '0', null, null, '0', null, null, null, '', '1525759953', '0', null, null, null, null);
INSERT INTO `lz_users_formal` VALUES ('14', '2606', '', '', '', '', '陆香', '2', '汉', '220203197903214820', '大专', '吉林', '13410012018', '', '', '', '342804928', '自考合同', '工人', '武汉理工大学_', '深圳龙岗香林世纪华府2栋2单元1501', '自学考试', '广州大学', '会展管理', '专升本', '15000', '郭芮彤', '自我提升', '2018-05-09', '254412', '7500', '', '', '0', '', '', '0', '2.5', null, '0', null, null, null, '', '1525855025', '2', '2018-05-09', '2019-06-30', '2019-06-30', '注册学籍');
INSERT INTO `lz_users_formal` VALUES ('15', '2606', '', '', '', '', '陆香', '2', '满', '220203197903214820', '大专', '吉林', '13410012018', '', '', '', '342804925', '非自考合同', '设计', '武汉理工大学', '深圳龙岗香林世纪华府', '成人高考', '广州工商学院', '工商管理', '专升本', '9000', '郭芮彤', '入户需求', '2018-05-09', '203315', '5000', '', '', '0', '', '', '0', '2.5', null, '0', null, null, null, '', '1525859698', '2', '2018-05-09', '2021-06-30', '2021-06-30', '注册学籍');
INSERT INTO `lz_users_formal` VALUES ('16', '2603', null, null, null, null, '测试', '1', '汉', '42118119881130231x', '大专', '湖北', '17665495306', null, null, null, '270979961', '自考合同', '柜面', '中鹏配音', '地址', '自学考试', '开放大学', '艺术设计', '专升本', '0', null, '就业需求', null, null, null, null, null, null, null, null, '0', null, null, '0', null, null, null, '备注', '1525859976', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `lz_wx_auth`
-- ----------------------------
DROP TABLE IF EXISTS `lz_wx_auth`;
CREATE TABLE `lz_wx_auth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `authorizer_appid` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺的appid  授权之后不用刷新',
  `authorizer_refresh_token` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺授权之后的刷新token，每月刷新',
  `authorizer_access_token` varchar(255) NOT NULL DEFAULT '' COMMENT '店铺的公众号token，只有2小时',
  `func_info` varchar(1000) NOT NULL DEFAULT '' COMMENT '授权项目',
  `nick_name` varchar(50) NOT NULL DEFAULT '' COMMENT '公众号昵称',
  `head_img` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号头像url',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '公众号原始账号',
  `alias` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号原始名称',
  `qrcode_url` varchar(255) NOT NULL DEFAULT '' COMMENT '公众号二维码url',
  `auth_time` int(11) DEFAULT '0' COMMENT '授权时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=8192 COMMENT='店铺(实例)微信公众账号授权';

-- ----------------------------
-- Records of lz_wx_auth
-- ----------------------------

-- ----------------------------
-- Table structure for `lz_wx_config`
-- ----------------------------
DROP TABLE IF EXISTS `lz_wx_config`;
CREATE TABLE `lz_wx_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '1' COMMENT '实例ID',
  `key` varchar(255) NOT NULL DEFAULT '' COMMENT '配置项WCHAT,QQ,WPAY,ALIPAY...',
  `value` varchar(1000) NOT NULL DEFAULT '' COMMENT '配置值json',
  `desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '描述',
  `is_use` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否启用 1启用 0不启用',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=963 COMMENT='第三方配置表';

-- ----------------------------
-- Records of lz_wx_config
-- ----------------------------
INSERT INTO `lz_wx_config` VALUES ('1', '0', 'WCHAT', '{\"APP_KEY\":\"\",\"APP_SECRET\":\"\",\"AUTHORIZE\":\"http:\\/\\/b2c1.01.niushop.com.cn\",\"CALLBACK\":\"http:\\/\\/b2c1.01.niushop.com.cn\\/wap\\/Login\\/callback\"}', '微信', '0', '1488350947', '1497105440');
INSERT INTO `lz_wx_config` VALUES ('2', '0', 'SHOPWCHAT', '{\"appid\":\"wx973e417bbed47d45\",\"appsecret\":\"1254bebc7815948a4e6b7b4b3d8e955f\",\"token\":\"lirenjy\"}', '', '1', '1497088090', '1523609646');

-- ----------------------------
-- Table structure for `lz_wx_default_replay`
-- ----------------------------
DROP TABLE IF EXISTS `lz_wx_default_replay`;
CREATE TABLE `lz_wx_default_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='关注时回复';

-- ----------------------------
-- Records of lz_wx_default_replay
-- ----------------------------
INSERT INTO `lz_wx_default_replay` VALUES ('2', '0', '1', '0', '1512528613', '1523088468');

-- ----------------------------
-- Table structure for `lz_wx_fans`
-- ----------------------------
DROP TABLE IF EXISTS `lz_wx_fans`;
CREATE TABLE `lz_wx_fans` (
  `fans_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '粉丝ID',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '会员编号ID',
  `source_uid` int(11) NOT NULL DEFAULT '0' COMMENT '推广人uid',
  `instance_id` int(11) NOT NULL COMMENT '店铺ID',
  `nickname` varchar(255) NOT NULL COMMENT '昵称',
  `nickname_decode` varchar(255) DEFAULT '',
  `headimgurl` varchar(500) NOT NULL DEFAULT '' COMMENT '头像',
  `sex` smallint(6) NOT NULL DEFAULT '1' COMMENT '性别',
  `language` varchar(20) NOT NULL DEFAULT '' COMMENT '用户语言',
  `country` varchar(60) NOT NULL DEFAULT '' COMMENT '国家',
  `province` varchar(255) NOT NULL DEFAULT '' COMMENT '省',
  `city` varchar(255) NOT NULL DEFAULT '' COMMENT '城市',
  `district` varchar(255) NOT NULL DEFAULT '' COMMENT '行政区/县',
  `openid` varchar(255) NOT NULL DEFAULT '' COMMENT '用户的标识，对当前公众号唯一     用户的唯一身份ID',
  `unionid` varchar(255) NOT NULL DEFAULT '' COMMENT '粉丝unionid',
  `groupid` int(11) NOT NULL DEFAULT '0' COMMENT '粉丝所在组id',
  `is_subscribe` bigint(1) NOT NULL DEFAULT '1' COMMENT '是否订阅',
  `memo` varchar(255) NOT NULL COMMENT '备注',
  `subscribe_date` int(11) DEFAULT '0' COMMENT '订阅时间',
  `unsubscribe_date` int(11) DEFAULT '0' COMMENT '解订阅时间',
  `update_date` int(11) DEFAULT '0' COMMENT '粉丝信息最后更新时间',
  PRIMARY KEY (`fans_id`),
  KEY `IDX_sys_weixin_fans_openid` (`openid`),
  KEY `IDX_sys_weixin_fans_unionid` (`unionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='微信公众号获取粉丝列表';

-- ----------------------------
-- Records of lz_wx_fans
-- ----------------------------

-- ----------------------------
-- Table structure for `lz_wx_follow_replay`
-- ----------------------------
DROP TABLE IF EXISTS `lz_wx_follow_replay`;
CREATE TABLE `lz_wx_follow_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='关注时回复';

-- ----------------------------
-- Records of lz_wx_follow_replay
-- ----------------------------
INSERT INTO `lz_wx_follow_replay` VALUES ('1', '0', '1', '0', '1512445072', '1524374905');

-- ----------------------------
-- Table structure for `lz_wx_key_replay`
-- ----------------------------
DROP TABLE IF EXISTS `lz_wx_key_replay`;
CREATE TABLE `lz_wx_key_replay` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `instance_id` int(11) NOT NULL COMMENT '店铺id',
  `key` varchar(255) NOT NULL COMMENT '关键词',
  `match_type` tinyint(4) NOT NULL COMMENT '匹配类型1模糊匹配2全部匹配',
  `reply_media_id` int(11) NOT NULL COMMENT '回复媒体内容id',
  `sort` int(11) NOT NULL,
  `create_time` int(11) DEFAULT '0',
  `modify_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=16384 COMMENT='关键词回复';

-- ----------------------------
-- Records of lz_wx_key_replay
-- ----------------------------
INSERT INTO `lz_wx_key_replay` VALUES ('1', '0', '你好', '1', '2', '0', '1512464471', '0');
INSERT INTO `lz_wx_key_replay` VALUES ('2', '0', '立人教育', '2', '6', '0', '1524378461', '0');

-- ----------------------------
-- Table structure for `lz_wx_media`
-- ----------------------------
DROP TABLE IF EXISTS `lz_wx_media`;
CREATE TABLE `lz_wx_media` (
  `media_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '图文消息id',
  `title` varchar(100) DEFAULT NULL,
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '实例id店铺id',
  `type` varchar(255) NOT NULL DEFAULT '1' COMMENT '类型1文本(项表无内容) 2单图文 3多图文',
  `sort` int(11) NOT NULL DEFAULT '0',
  `create_time` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_time` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`media_id`),
  UNIQUE KEY `id` (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1170;

-- ----------------------------
-- Records of lz_wx_media
-- ----------------------------
INSERT INTO `lz_wx_media` VALUES ('1', '开发中...', '0', '1', '0', '1523087952', '0');
INSERT INTO `lz_wx_media` VALUES ('2', '开发中...', '0', '1', '0', '1523087975', '0');
INSERT INTO `lz_wx_media` VALUES ('6', '立人教育', '0', '2', '0', '1524378200', '0');

-- ----------------------------
-- Table structure for `lz_wx_media_item`
-- ----------------------------
DROP TABLE IF EXISTS `lz_wx_media_item`;
CREATE TABLE `lz_wx_media_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `media_id` int(11) NOT NULL COMMENT '图文消息id',
  `title` varchar(100) DEFAULT NULL,
  `author` varchar(50) NOT NULL COMMENT '作者',
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `show_cover_pic` tinyint(4) NOT NULL DEFAULT '1' COMMENT '封面图片显示在正文中',
  `summary` text,
  `content` text NOT NULL COMMENT '正文',
  `content_source_url` varchar(200) NOT NULL DEFAULT '' COMMENT '图文消息的原文地址，即点击“阅读原文”后的URL',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序号',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '阅读次数',
  PRIMARY KEY (`id`),
  KEY `id` (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=712;

-- ----------------------------
-- Records of lz_wx_media_item
-- ----------------------------
INSERT INTO `lz_wx_media_item` VALUES ('39', '4', 'CLTPHP内容管理系统5.2.2发布', 'chichu', '/uploads/20171206/91febfbe3eaaa412ba6b54ca4164402d.jpg', '1', '这是一篇多图文', '<h4 style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-weight: normal; font-stretch: inherit; font-size: 22px; line-height: inherit; font-family: \">CLTPHP5.2.2发布</h4><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; vertical-align: baseline; margin: 0px; padding: 0px;\">修改bug若干</span></p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px;\">下载地址：</span><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px;\"><a href=\"http://qiniu.cltphp.com/cltphp5.2.2.zip\" target=\"_self\" title=\"CLTPHP5.2.2\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(0, 176, 80); outline: 0px;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px; text-decoration: none;\">CLTPHP5.2.2</span></a></span></span></p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px;\">补丁地址：</span><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(0, 176, 80); outline: 0px;\"><span style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: 24px; vertical-align: baseline; margin: 0px; padding: 0px; text-decoration: none;\"><a href=\"http://qiniu.cltphp.com/CLTPHP5.2.1%E5%88%B05.2.2%E8%A1%A5%E4%B8%81.zip\" target=\"_self\" style=\"box-sizing: border-box; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline; margin: 0px; padding: 0px; color: rgb(0, 176, 80); outline: 0px;\">CLTPHP5.2.1到5.2.2升级</a></span></span></span></p>', 'http://www.cltphp.com/newsInfo-44-5.html', '0', '2');
INSERT INTO `lz_wx_media_item` VALUES ('40', '4', '给我们一点点时间 我们给你一个新突破', 'chichu', '/uploads/20171206/18fd882e982e07e7b35dac5b962ab393.jpg', '0', '给我们一点点时间 我们给你一个新突破', '<p><span style=\"color: rgb(102, 102, 102); font-family: \">说实话，最近这段时间我们太忙了</span><img src=\"http://img.baidu.com/hi/jx2/j_0016.gif\"/><span style=\"color: rgb(102, 102, 102); font-family: \">，cltphp的开发，甚至可以说是搁浅了一段时间。不过，各位请耐心等待一下啊，给我们一点点时间，或许不止一点点，我们给你一个新突破。</span></p>', 'http://www.cltphp.com/newsInfo-45-5.html', '0', '4');
INSERT INTO `lz_wx_media_item` VALUES ('41', '4', 'CLTPHP操作开发手册已完全更新', 'chichu', '/uploads/20171206/db19ac0c46a3ffd4ebf94028024d3036.jpg', '1', 'CLTPHP操作开发手册已完全更新，CLTPHP核心价值，尽在其中。', '<p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">CLTPHP操作开发手册已完全更新，CLTPHP核心价值，尽在其中。</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">喜欢的朋友可以购买参考</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">同时希望CLTPHP的爱好者，可以给我提出更多CLTPHP的不足之处，让CLTPHP更健康的成长。</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">手册地址：<a href=\"https://www.kancloud.cn/chichu/cltphp/\" target=\"_self\">https://www.kancloud.cn/chichu/cltphp/</a></p><p><br/></p>', 'http://www.cltphp.com/newsInfo-16-5.html', '0', '4');
INSERT INTO `lz_wx_media_item` VALUES ('46', '5', '凌智科技操作开发手册已完全更新', 'chichu', '/uploads/20171206/463cc15ed856b237e4241c1cc40b768c.png', '0', 'CLTPHP操作开发手册已完全更新，CLTPHP核心价值，尽在其中。', '<p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; text-indent: 2em;\">CLTPHP操作开发手册已完全更新，CLTPHP核心价值，尽在其中。</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; font-family: \">喜欢的朋友可以购买参考</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; text-indent: 2em;\">同时希望CLTPHP的爱好者，可以给我提出更多CLTPHP的不足之处，让CLTPHP更健康的成长。</p><p style=\"box-sizing: border-box; border: 0px; font-variant-numeric: inherit; font-stretch: inherit; font-size: 14px; line-height: 24px; text-indent: 2em;\">手册地址：https://www.kancloud.cn/chichu/cltphp/</p><p><br/></p>', 'https://www.kancloud.cn/chichu/cltphp', '0', '0');
INSERT INTO `lz_wx_media_item` VALUES ('48', '3', '凌智科技内容管理系统', '凌智科技', '/uploads/20171206/6dfec00133ee42c5c33cea8ab0cfad8f.png', '1', '凌智科技内容管理系统，微信公众平台、APP移动应用设计、HTML5网站API定制开发。大型企业网站、个人博客论坛、手机网站定制开发。更高效、更快捷的进行定制开发。', '<p style=\"text-indent: 2em;\"><span style=\"text-indent: 2em;\">虽然世界上有成千上万的建站系统，但凌智科技会告诉你，真正高效的建站系统是什么样的。</span><br/></p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\">凌智科技采用了优美的layui框架，一面极简，一面丰盈。加上angular Js，让数据交互变得更为简洁直白。用最基础的代码，实现最强大的效果，让你欲罢不能！</p><p style=\"text-indent: 2em;\"><br/></p><p style=\"text-indent: 2em;\">凌智科技采用的ThinkPHP5为基础框架，从而使得凌智科技的拓展性变的极为强大。从模型构造到栏目建立，再到前台展示，一气呵成，网站后台一条龙式操作，让小白用户能快速掌握凌智科技管理系统的核心操作，让小白开发者能更好的理解凌智科技的核心构建价值。</p><p><br/></p>', 'http://www.lingzhikeji.com/', '0', '6');
INSERT INTO `lz_wx_media_item` VALUES ('50', '1', '开发中...', '', '', '0', '', '', '', '0', '0');
INSERT INTO `lz_wx_media_item` VALUES ('51', '2', '开发中...', '', '', '0', '', '', '', '0', '0');
INSERT INTO `lz_wx_media_item` VALUES ('53', '6', '立人教育', '', '/uploads/20180422/bef874d4001fb0e6d6c18e2f5717ad4d.png', '1', '深圳市立人教育管理有限公司创建于2011年10月，原名为“深圳市立人管理咨询有限公司”', '<p><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; border-width: 0px; border-style: initial; border-color: initial; font-size: 14px; vertical-align: baseline; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248); font-family: 等线; word-wrap: break-word !important;\">深圳市立人教育管理有限公司创建于2011年10月，原名为“深圳市立人管理咨询有限公司”，原业务一直从事管理咨询对接企业的课程服务项目，随着企业的发展对员工教育的层次也随之增加，员工对自身的教育程度需求也越来越大。在十七大和十八大报告中均指出“立德树人”，它的定位在“全面发展”之上的理念，立人教育希望让有梦想、有追求的年轻人通过不断的自我学习和提升来改善生活状态、改善素养，甚至改善国民教育层次。因此立人教育由原来的管理咨询业务转型为学历教育提升业务，打造“立人教育”品牌，继而更名“深圳市立人教育管理有</span><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; border-width: 0px; border-style: initial; border-color: initial; font-size: 14px; vertical-align: baseline; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248); font-family: 等线; word-wrap: break-word !important;\">限公司”。主要业务有成人高考、自学考试、网络教育、开放教育等二十所高校品牌的大专、本科助学辅导。经过多年努力毕业生多达</span><span style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box; border-width: 0px; border-style: initial; border-color: initial; font-size: 14px; vertical-align: baseline; color: rgb(51, 51, 51); background-color: rgb(248, 248, 248); font-family: 等线; word-wrap: break-word !important;\">6000余人，同时以“树立德业”为经营宗旨成为深圳地区具有规模和影响力的成人教育品牌。</span></p>', '', '0', '5');

-- ----------------------------
-- Table structure for `lz_wx_menu`
-- ----------------------------
DROP TABLE IF EXISTS `lz_wx_menu`;
CREATE TABLE `lz_wx_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `instance_id` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `menu_name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `ico` varchar(32) NOT NULL DEFAULT '' COMMENT '菜图标单',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '父菜单',
  `menu_event_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1普通url 2 图文素材 3 功能',
  `media_id` int(11) NOT NULL DEFAULT '0' COMMENT '图文消息ID',
  `menu_event_url` varchar(255) NOT NULL DEFAULT '' COMMENT '菜单url',
  `hits` int(11) NOT NULL DEFAULT '0' COMMENT '触发数',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_date` int(11) DEFAULT '0' COMMENT '创建日期',
  `modify_date` int(11) DEFAULT '0' COMMENT '修改日期',
  PRIMARY KEY (`menu_id`),
  KEY `IDX_biz_shop_menu_orders` (`sort`),
  KEY `IDX_biz_shop_menu_shopId` (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 AVG_ROW_LENGTH=1638 COMMENT='微设置->微店菜单';

-- ----------------------------
-- Records of lz_wx_menu
-- ----------------------------
INSERT INTO `lz_wx_menu` VALUES ('8', '0', '我要报名', '', '0', '1', '1', 'http://01.demo.yuanjianda.com/user/index/join', '0', '1', '1523087664', '0');
INSERT INTO `lz_wx_menu` VALUES ('9', '0', '会员中心', '', '0', '1', '1', 'http://01.demo.yuanjianda.com/user/login', '0', '2', '1523088010', '0');

-- ----------------------------
-- Table structure for `lz_wx_user`
-- ----------------------------
DROP TABLE IF EXISTS `lz_wx_user`;
CREATE TABLE `lz_wx_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `uid` int(11) NOT NULL COMMENT 'uid',
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `aeskey` varchar(256) NOT NULL DEFAULT '' COMMENT 'aeskey',
  `encode` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'encode',
  `appid` varchar(50) NOT NULL DEFAULT '' COMMENT 'appid',
  `appsecret` varchar(50) NOT NULL DEFAULT '' COMMENT 'appsecret',
  `wxid` varchar(64) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(64) NOT NULL COMMENT '微信号',
  `token` char(255) NOT NULL COMMENT 'token',
  `w_token` varchar(150) NOT NULL DEFAULT '' COMMENT '微信对接token',
  `create_time` int(11) NOT NULL COMMENT 'create_time',
  `updatetime` int(11) NOT NULL COMMENT 'updatetime',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `share_ticket` varchar(150) NOT NULL COMMENT '分享ticket',
  `share_dated` char(15) NOT NULL COMMENT 'share_dated',
  `authorizer_access_token` varchar(200) NOT NULL COMMENT 'authorizer_access_token',
  `authorizer_refresh_token` varchar(200) NOT NULL COMMENT 'authorizer_refresh_token',
  `authorizer_expires` char(10) NOT NULL COMMENT 'authorizer_expires',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型',
  `web_access_token` varchar(200) NOT NULL COMMENT '网页授权token',
  `web_refresh_token` varchar(200) NOT NULL COMMENT 'web_refresh_token',
  `web_expires` int(11) NOT NULL COMMENT '过期时间',
  `menu_config` text COMMENT '菜单',
  `wait_access` tinyint(1) DEFAULT '0' COMMENT '微信接入状态,0待接入1已接入',
  `concern` varchar(225) DEFAULT '' COMMENT '关注回复',
  `default` varchar(225) DEFAULT '' COMMENT '默认回复',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='微信公共帐号';

-- ----------------------------
-- Records of lz_wx_user
-- ----------------------------
INSERT INTO `lz_wx_user` VALUES ('1', '0', 'lirenjy', '', '0', 'wx08c8be078e00b88b', '2e6f2d97d60582f21111be7862d14ddc', 'gh_8aacbef4e497', 'chichu12345', 'sdfdsfdsfdsf', 'lirenjy', '0', '0', '', '', '', '', '', '', '1', 'eY9W4LLdISpE3UtTfuodgz1HJdBYCMbzZWkiLEhF0Nzvzv2q2DtGIV5h7CPrc0Nd4_kJgKN_FdM3kNaCxfFC1wmu6JLnNoOrmMuy3FK2AhMDLCbAGAXFW', '', '1504242136', '0', '0', '', '亲！您可以输入关键词来获取您想要知道的内容。（例：手册）');

-- ----------------------------
-- Table structure for `lz_wx_user_msg`
-- ----------------------------
DROP TABLE IF EXISTS `lz_wx_user_msg`;
CREATE TABLE `lz_wx_user_msg` (
  `msg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `msg_type` varchar(255) NOT NULL,
  `content` text,
  `is_replay` int(11) NOT NULL DEFAULT '0' COMMENT '是否回复',
  `create_time` int(11) DEFAULT '0',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户消息表';

-- ----------------------------
-- Records of lz_wx_user_msg
-- ----------------------------

-- ----------------------------
-- Table structure for `lz_wx_user_msg_replay`
-- ----------------------------
DROP TABLE IF EXISTS `lz_wx_user_msg_replay`;
CREATE TABLE `lz_wx_user_msg_replay` (
  `replay_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `msg_id` int(11) NOT NULL,
  `replay_uid` int(11) NOT NULL COMMENT '当前客服uid',
  `replay_type` varchar(255) NOT NULL,
  `content` text,
  `replay_time` int(11) DEFAULT '0',
  PRIMARY KEY (`replay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户消息回复表';

-- ----------------------------
-- Records of lz_wx_user_msg_replay
-- ----------------------------
