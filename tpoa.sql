/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : oa

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-01-11 17:14:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_assign
-- ----------------------------
DROP TABLE IF EXISTS `t_assign`;
CREATE TABLE `t_assign` (
  `ASSIGN_ID` int(6) NOT NULL AUTO_INCREMENT COMMENT '交办件编号',
  `ASSIGN_TITLE` varchar(100) DEFAULT NULL COMMENT '交办件标题',
  `ASSIGN_CONTENT` varchar(2000) DEFAULT NULL COMMENT '交办件内容',
  `ASSIGN_ATTACHMENT` varchar(200) DEFAULT NULL COMMENT '交办件电子版附件',
  `ASSIGN_LEADER_SIGNTIME` varchar(20) DEFAULT NULL COMMENT '交办件领导签批时间',
  `ASSIGN_CREATETIME` varchar(20) DEFAULT NULL COMMENT '交办件发布时间',
  `ASSIGN_ENDTIME` varchar(20) DEFAULT NULL COMMENT '交办件结束时间',
  `ASSIGN_LEADER` int(5) DEFAULT NULL COMMENT '交办件签批领导',
  `ASSIGN_STATUS_ID` int(1) DEFAULT NULL COMMENT '交办件状态编号(1.进行中 2.已完成未办结 3.已办结 4.超时未完成 5.超时完成未办结 6.超时完成已办结)',
  `USER_ID` int(5) DEFAULT NULL COMMENT '主要负责人',
  `ASSIGN_NOTE` varchar(1000) DEFAULT NULL COMMENT '交办件备注信息',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `SECRETARY_ID` int(5) DEFAULT NULL,
  PRIMARY KEY (`ASSIGN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_assign
-- ----------------------------
INSERT INTO `t_assign` VALUES ('259', '测试交办件发布1', 'oa20181015111634.jpg', '无', '1539446400', '1539577355', '1539532800', '124', '4', '156', '无', null, null);
INSERT INTO `t_assign` VALUES ('260', 'qqqq', 'oa20181015111636.jpg', '无', '1539446400', '1539578155', '1539619200', '124', '4', '142', '无', null, null);
INSERT INTO `t_assign` VALUES ('261', 'aaaaa', 'oa20181015124206.jpg', '无', '1539446400', '1539578553', '1539619200', '124', '4', '142', '无', null, null);
INSERT INTO `t_assign` VALUES ('262', '测试数据', 'oa20181015165158.jpg', '无', '1539532800', '1539593555', '1539619200', '124', '4', '142', '无', null, null);
INSERT INTO `t_assign` VALUES ('263', '主协办', 'oa20181015165954.jpg', '无', '1539532800', '1539594021', '1539619200', '124', '4', '142', '无', null, null);
INSERT INTO `t_assign` VALUES ('265', '测试交办件发布主协办', 'oa20181015171355.jpg', '无', '1539532800', '1539597860', '1539619200', '124', '4', '157', '无', null, null);
INSERT INTO `t_assign` VALUES ('266', '测试交办件发布主协办1', 'oa20181015181347.jpg', '无', '1539532800', '1539598478', '1539619200', '124', '6', '157', '无', null, null);
INSERT INTO `t_assign` VALUES ('267', 'aaaaaaa', 'oa20181102123656.jpg', '无', '1541001600', '1541133436', '1541174400', '124', '4', '156', '无', null, null);
INSERT INTO `t_assign` VALUES ('268', '测试多张照片', 'oa20181112105500.jpg-oa20181112105503.jpg-oa20181112105503.jpg', '无', '1541952000', '1541991353', '1541952000', '124', '4', '156', '无', null, null);
INSERT INTO `t_assign` VALUES ('269', '手机端电子版附件显示', 'oa20181114104655.jpg', '新建XLS工作表1542163657.xls', '1541865600', '1542163657', '1542124800', '124', '4', '156', '测试备注信息', null, null);
INSERT INTO `t_assign` VALUES ('270', '测试中文及交办件', '902451.jpg-短信格式.jpg', '无', '1543334400', '1543454337', '1543507200', '124', '4', '156', '测试备注', null, null);
INSERT INTO `t_assign` VALUES ('271', '测试电子版文档上传', '902451.jpg', '交办件高拍仪拍照及上传业务流程1543454960.docx', '1543248000', '1543454960', '1543507200', '124', '3', '156', '无', null, null);
INSERT INTO `t_assign` VALUES ('272', '发布测试交办件------测试', 'oa20181129143027.jpg-oa20181129143021.jpg', '移动1543473316.txt', '1543334400', '1543473316', '1543507200', '124', '5', '156', '无', null, null);
INSERT INTO `t_assign` VALUES ('273', '测试领导发布交办件', 'oa20181129143643.jpg-oa20181129143646.jpg', '移动1543473458.txt', '1543248000', '1543473458', '1543507200', '124', '3', '156', '测试备注信息', null, null);
INSERT INTO `t_assign` VALUES ('274', 'asdsadsadsad大的萨达', '902451.jpg', '无', '1543334400', '1543478339', '1543507200', '124', '4', '141', '无', null, null);
INSERT INTO `t_assign` VALUES ('275', 'sad撒多撒倒萨倒萨', '短信格式.jpg', '无', '1543334400', '1543478399', '1543507200', '124', '4', '141', '萨达萨达撒', null, null);
INSERT INTO `t_assign` VALUES ('276', 'sadfgs', '7.jpg-8.jpg', '员工月度目标工作计划表(2)1543484722.xlsx', '1540742400', '1543484722', '1543420800', '124', '4', '147', 'asdf', null, null);
INSERT INTO `t_assign` VALUES ('277', '阿斯蒂芬', '8.jpg-12.jpg', '员工月度目标工作计划表(1)(1)1543485221.xlsx', '1541952000', '1543485221', '1543420800', '124', '4', '147', '撒旦法', null, null);
INSERT INTO `t_assign` VALUES ('278', '大萨达撒多撒多撒', '短信格式.jpg', '无', '1543680000', '1543821251', '1543939200', '124', '6', '141', '大声道撒', null, null);
INSERT INTO `t_assign` VALUES ('279', '测试备注信息文字量', '902451.jpg', '无', '1543680000', '1543821734', '1543939200', '124', '5', '141', '萨达萨达撒多撒', null, '150');
INSERT INTO `t_assign` VALUES ('280', 'wwwwwwwwwww', '902451.jpg-seal.jpg-短信格式.jpg', '无', '1543680000', '1543821813', '1543852800', '124', '6', '141', '萨达萨达撒', null, '150');

-- ----------------------------
-- Table structure for t_attachment
-- ----------------------------
DROP TABLE IF EXISTS `t_attachment`;
CREATE TABLE `t_attachment` (
  `ATTACHMENT_ID` int(6) NOT NULL AUTO_INCREMENT COMMENT '附件表主键',
  `ATTACHMENT_NAME` varchar(100) DEFAULT NULL COMMENT '附件名',
  `ASSIGN_ID` int(6) DEFAULT NULL COMMENT '交办件编号',
  `ATTACHMENT_SENDER` int(5) DEFAULT NULL COMMENT '附件发送者(保存USER_ID)',
  `UPLOAD_TIME` varchar(30) DEFAULT NULL COMMENT '附件上传时间',
  PRIMARY KEY (`ATTACHMENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_attachment
-- ----------------------------
INSERT INTO `t_attachment` VALUES ('31', '员工转正申请.doc', '259', '156', '1539578596');
INSERT INTO `t_attachment` VALUES ('33', '员工转正申请.doc', '266', '157', '1540878117');
INSERT INTO `t_attachment` VALUES ('34', '员工转正申请.doc', '270', '55', '1543454390');
INSERT INTO `t_attachment` VALUES ('35', '用工备案表.docx', '280', '141', '1544238921');

-- ----------------------------
-- Table structure for t_child_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_child_menu`;
CREATE TABLE `t_child_menu` (
  `CHILD_MENU_ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '子菜单编号',
  `CHILD_MENU_NAME` varchar(20) DEFAULT NULL COMMENT '子菜单名称',
  `MENU_ID` int(4) DEFAULT NULL COMMENT '菜单编号',
  PRIMARY KEY (`CHILD_MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_child_menu
-- ----------------------------

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `DEP_ID` int(4) NOT NULL AUTO_INCREMENT,
  `DEP_NAME` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`DEP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('1', '工管委领导');
INSERT INTO `t_department` VALUES ('2', '党政办公室');
INSERT INTO `t_department` VALUES ('3', '组织宣传部');
INSERT INTO `t_department` VALUES ('4', '经济发展局');
INSERT INTO `t_department` VALUES ('5', '建设局');
INSERT INTO `t_department` VALUES ('6', '财政局');
INSERT INTO `t_department` VALUES ('7', '人力资源和社会保障局');
INSERT INTO `t_department` VALUES ('8', '社会事务管理局');
INSERT INTO `t_department` VALUES ('9', '行政审批局');
INSERT INTO `t_department` VALUES ('10', '综合行政执法执行和城市管理局');
INSERT INTO `t_department` VALUES ('11', '政法委员会');
INSERT INTO `t_department` VALUES ('12', '督查考核办公室');
INSERT INTO `t_department` VALUES ('13', '经济政策研究中心');
INSERT INTO `t_department` VALUES ('14', '总工会');
INSERT INTO `t_department` VALUES ('15', '社区党工委、社区管理办公室');
INSERT INTO `t_department` VALUES ('16', '信息化管理与服务中心');
INSERT INTO `t_department` VALUES ('17', '安全生产监督管理局');
INSERT INTO `t_department` VALUES ('18', '科学技术局');
INSERT INTO `t_department` VALUES ('19', '土地收储和房屋征收管理办公室');
INSERT INTO `t_department` VALUES ('20', '国有资本运营管理中心');
INSERT INTO `t_department` VALUES ('21', '农林水务局');
INSERT INTO `t_department` VALUES ('22', '教育体育局');
INSERT INTO `t_department` VALUES ('23', '审计局');
INSERT INTO `t_department` VALUES ('24', '纪工委、监察局');
INSERT INTO `t_department` VALUES ('25', '华夏幸福基业滦河项目管理办公室');
INSERT INTO `t_department` VALUES ('26', '公安分局');

-- ----------------------------
-- Table structure for t_department_head
-- ----------------------------
DROP TABLE IF EXISTS `t_department_head`;
CREATE TABLE `t_department_head` (
  `DEPARTMENT_HEAD_ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '部门领导',
  `DEPARTMENT_ID` int(4) DEFAULT NULL COMMENT '部门id',
  `DEPARTMENT_HEAD_NAME` varchar(300) DEFAULT NULL COMMENT '部门领导名称',
  PRIMARY KEY (`DEPARTMENT_HEAD_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_department_head
-- ----------------------------
INSERT INTO `t_department_head` VALUES ('1', '2', '主任');
INSERT INTO `t_department_head` VALUES ('2', '2', '常务副主任');
INSERT INTO `t_department_head` VALUES ('3', '2', '副主任');
INSERT INTO `t_department_head` VALUES ('4', '3', '部长');
INSERT INTO `t_department_head` VALUES ('5', '3', '常务副部长');
INSERT INTO `t_department_head` VALUES ('6', '3', '副部长');
INSERT INTO `t_department_head` VALUES ('7', '3', '\"两新\"工委副书记');
INSERT INTO `t_department_head` VALUES ('8', '4', '局长');
INSERT INTO `t_department_head` VALUES ('9', '4', '副局长');
INSERT INTO `t_department_head` VALUES ('10', '5', '局长');
INSERT INTO `t_department_head` VALUES ('11', '5', '副局长');
INSERT INTO `t_department_head` VALUES ('12', '6', '局长');
INSERT INTO `t_department_head` VALUES ('13', '6', '副局长');
INSERT INTO `t_department_head` VALUES ('14', '7', '局长');
INSERT INTO `t_department_head` VALUES ('15', '7', '副局长');
INSERT INTO `t_department_head` VALUES ('16', '8', '局长');
INSERT INTO `t_department_head` VALUES ('17', '8', '副局长');
INSERT INTO `t_department_head` VALUES ('18', '9', '局长');
INSERT INTO `t_department_head` VALUES ('19', '9', '副局长');
INSERT INTO `t_department_head` VALUES ('20', '10', '局长');
INSERT INTO `t_department_head` VALUES ('21', '10', '副局长');
INSERT INTO `t_department_head` VALUES ('22', '11', '常务副书记');
INSERT INTO `t_department_head` VALUES ('23', '11', '副书记');
INSERT INTO `t_department_head` VALUES ('24', '12', '主任');
INSERT INTO `t_department_head` VALUES ('25', '12', '副主任');
INSERT INTO `t_department_head` VALUES ('26', '13', '主任');
INSERT INTO `t_department_head` VALUES ('27', '13', '副主任');
INSERT INTO `t_department_head` VALUES ('28', '14', '常务副主席');
INSERT INTO `t_department_head` VALUES ('29', '14', '副主席');
INSERT INTO `t_department_head` VALUES ('30', '14', '主任');
INSERT INTO `t_department_head` VALUES ('31', '15', '工委书记');
INSERT INTO `t_department_head` VALUES ('32', '15', '副书记');
INSERT INTO `t_department_head` VALUES ('33', '15', '主任');
INSERT INTO `t_department_head` VALUES ('34', '15', '副主任');
INSERT INTO `t_department_head` VALUES ('35', '17', '局长');
INSERT INTO `t_department_head` VALUES ('36', '17', '副局长');
INSERT INTO `t_department_head` VALUES ('37', '18', '局长');
INSERT INTO `t_department_head` VALUES ('38', '18', '副局长');
INSERT INTO `t_department_head` VALUES ('39', '18', '副主席');
INSERT INTO `t_department_head` VALUES ('40', '19', '主任');
INSERT INTO `t_department_head` VALUES ('41', '19', '常务副主任');
INSERT INTO `t_department_head` VALUES ('42', '19', '副主任');
INSERT INTO `t_department_head` VALUES ('43', '20', '主任');
INSERT INTO `t_department_head` VALUES ('44', '20', '副主任');
INSERT INTO `t_department_head` VALUES ('45', '21', '局长');
INSERT INTO `t_department_head` VALUES ('46', '21', '副局长');
INSERT INTO `t_department_head` VALUES ('47', '22', '局长');
INSERT INTO `t_department_head` VALUES ('48', '22', '副局长');
INSERT INTO `t_department_head` VALUES ('49', '22', '政府督学');
INSERT INTO `t_department_head` VALUES ('50', '22', '工委委员');
INSERT INTO `t_department_head` VALUES ('51', '23', '局长');
INSERT INTO `t_department_head` VALUES ('52', '23', '副局长');
INSERT INTO `t_department_head` VALUES ('53', '24', '局长');
INSERT INTO `t_department_head` VALUES ('54', '24', '副局长');
INSERT INTO `t_department_head` VALUES ('55', '25', '主任');
INSERT INTO `t_department_head` VALUES ('56', '16', '主任');
INSERT INTO `t_department_head` VALUES ('57', '26', '局长');
INSERT INTO `t_department_head` VALUES ('58', '26', '政委');
INSERT INTO `t_department_head` VALUES ('59', '26', '副局长');
INSERT INTO `t_department_head` VALUES ('60', '26', '政工监督室主任');
INSERT INTO `t_department_head` VALUES ('61', '26', '智慧中心主任');
INSERT INTO `t_department_head` VALUES ('62', '26', '刑警队大队长');
INSERT INTO `t_department_head` VALUES ('63', '26', '治安大队大队长');
INSERT INTO `t_department_head` VALUES ('64', '26', '环安大队大队长');
INSERT INTO `t_department_head` VALUES ('65', '26', '法制大队大队长');
INSERT INTO `t_department_head` VALUES ('66', '26', '冯营子派出所所长');
INSERT INTO `t_department_head` VALUES ('67', '26', '滨河派出所所长');
INSERT INTO `t_department_head` VALUES ('68', '26', '上板城派出所所长');
INSERT INTO `t_department_head` VALUES ('69', '26', '桃李派出所所长');

-- ----------------------------
-- Table structure for t_event_record
-- ----------------------------
DROP TABLE IF EXISTS `t_event_record`;
CREATE TABLE `t_event_record` (
  `EVENT_ID` int(6) NOT NULL AUTO_INCREMENT COMMENT '事件的主键',
  `EVENT_SENDER` int(4) DEFAULT NULL COMMENT '事件的发起者',
  `EVENT_SENDTIME` varchar(20) DEFAULT NULL COMMENT '事件的发送时间',
  `EVENT_TYPE` int(2) DEFAULT NULL COMMENT '事件的类型(1.文字反馈信息 2.附件反馈  3.责任人申请办结  4.领导驳回 5.领导签批 )',
  `ASSIGN_ID` int(6) DEFAULT NULL COMMENT '事件关联的交办件ID',
  PRIMARY KEY (`EVENT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_event_record
-- ----------------------------
INSERT INTO `t_event_record` VALUES ('2', '141', '1544236942', '1', '280');
INSERT INTO `t_event_record` VALUES ('3', '141', '1544238032', '1', '280');
INSERT INTO `t_event_record` VALUES ('4', '141', '1544238059', '3', '280');
INSERT INTO `t_event_record` VALUES ('7', '141', '1544238345', '3', '280');
INSERT INTO `t_event_record` VALUES ('8', '124', '1544238377', '4', '280');
INSERT INTO `t_event_record` VALUES ('9', '141', '1544238533', '3', '280');
INSERT INTO `t_event_record` VALUES ('10', '124', '1544238598', '5', '280');
INSERT INTO `t_event_record` VALUES ('11', '141', '1544238921', '2', '280');
INSERT INTO `t_event_record` VALUES ('12', '124', '1544238964', '1', '280');
INSERT INTO `t_event_record` VALUES ('13', '141', '1544251773', '3', '279');
INSERT INTO `t_event_record` VALUES ('14', '141', '1544251789', '1', '279');
INSERT INTO `t_event_record` VALUES ('15', '55', '1544252817', '1', '279');
INSERT INTO `t_event_record` VALUES ('16', '55', '1544253144', '1', '280');
INSERT INTO `t_event_record` VALUES ('17', '55', '1544253330', '1', '280');
INSERT INTO `t_event_record` VALUES ('18', '156', '1544257330', '3', '272');
INSERT INTO `t_event_record` VALUES ('19', '124', '1544257985', '4', '279');
INSERT INTO `t_event_record` VALUES ('20', '141', '1544258058', '3', '279');
INSERT INTO `t_event_record` VALUES ('21', '141', '1544258271', '3', '278');
INSERT INTO `t_event_record` VALUES ('22', '141', '1544258284', '1', '278');
INSERT INTO `t_event_record` VALUES ('23', '124', '1544258312', '1', '278');
INSERT INTO `t_event_record` VALUES ('24', '124', '1544258322', '4', '278');
INSERT INTO `t_event_record` VALUES ('25', '141', '1544258353', '3', '278');
INSERT INTO `t_event_record` VALUES ('26', '124', '1544258370', '5', '278');
INSERT INTO `t_event_record` VALUES ('27', '150', '1544262714', '1', '279');
INSERT INTO `t_event_record` VALUES ('28', '124', '1545294813', '1', '278');

-- ----------------------------
-- Table structure for t_job
-- ----------------------------
DROP TABLE IF EXISTS `t_job`;
CREATE TABLE `t_job` (
  `JOB_ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '职位表编号',
  `JOB_NAME` varchar(50) DEFAULT NULL COMMENT '职位名称',
  `OFFICE_ID` int(4) DEFAULT NULL COMMENT '科室编号',
  PRIMARY KEY (`JOB_ID`),
  KEY `FK_Reference_3` (`OFFICE_ID`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`OFFICE_ID`) REFERENCES `t_office` (`OFFICE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_job
-- ----------------------------
INSERT INTO `t_job` VALUES ('1', '一级主办', '1');
INSERT INTO `t_job` VALUES ('2', '二级主办', '1');
INSERT INTO `t_job` VALUES ('3', '一级主办', '2');
INSERT INTO `t_job` VALUES ('4', '二级主办', '2');
INSERT INTO `t_job` VALUES ('6', '一级主办', '3');
INSERT INTO `t_job` VALUES ('7', '一级主办', '6');
INSERT INTO `t_job` VALUES ('8', '一级主办', '8');
INSERT INTO `t_job` VALUES ('12', '科员', '1');
INSERT INTO `t_job` VALUES ('13', '科员', '2');
INSERT INTO `t_job` VALUES ('14', '二级主办', '3');
INSERT INTO `t_job` VALUES ('15', '主任科员', '3');
INSERT INTO `t_job` VALUES ('16', '科员', '3');
INSERT INTO `t_job` VALUES ('17', '一级主办', '4');
INSERT INTO `t_job` VALUES ('18', '科员', '4');
INSERT INTO `t_job` VALUES ('19', '一级主办', '5');
INSERT INTO `t_job` VALUES ('20', '科员', '5');
INSERT INTO `t_job` VALUES ('21', '二级主办', '6');
INSERT INTO `t_job` VALUES ('22', '科员', '6');
INSERT INTO `t_job` VALUES ('23', '二级主办', '8');
INSERT INTO `t_job` VALUES ('24', '科员', '8');
INSERT INTO `t_job` VALUES ('25', '返聘', '8');
INSERT INTO `t_job` VALUES ('26', '党建指导员', '8');
INSERT INTO `t_job` VALUES ('27', '一级主办', '7');
INSERT INTO `t_job` VALUES ('28', '二级主办', '7');
INSERT INTO `t_job` VALUES ('29', '科员', '7');
INSERT INTO `t_job` VALUES ('30', '副科级干部', '7');
INSERT INTO `t_job` VALUES ('31', '一级主办', '9');
INSERT INTO `t_job` VALUES ('32', '科员', '9');
INSERT INTO `t_job` VALUES ('33', '一级主办', '10');
INSERT INTO `t_job` VALUES ('34', '科员', '10');
INSERT INTO `t_job` VALUES ('35', '一级主办', '11');
INSERT INTO `t_job` VALUES ('36', '二级主办', '11');
INSERT INTO `t_job` VALUES ('37', '科员', '11');
INSERT INTO `t_job` VALUES ('38', '一级主办', '12');
INSERT INTO `t_job` VALUES ('39', '二级主办', '12');
INSERT INTO `t_job` VALUES ('40', '科员', '12');
INSERT INTO `t_job` VALUES ('41', '一级主办', '13');
INSERT INTO `t_job` VALUES ('42', '二级主办', '13');
INSERT INTO `t_job` VALUES ('43', '科员', '13');
INSERT INTO `t_job` VALUES ('44', '一级主办', '14');
INSERT INTO `t_job` VALUES ('45', '科员', '14');
INSERT INTO `t_job` VALUES ('46', '团委科员', '14');
INSERT INTO `t_job` VALUES ('47', '一级主办', '15');
INSERT INTO `t_job` VALUES ('48', '二级主办', '15');
INSERT INTO `t_job` VALUES ('49', '科员', '15');
INSERT INTO `t_job` VALUES ('50', '一级主办', '16');
INSERT INTO `t_job` VALUES ('51', '科员', '16');
INSERT INTO `t_job` VALUES ('52', '一级主办', '17');
INSERT INTO `t_job` VALUES ('53', '二级主办', '17');
INSERT INTO `t_job` VALUES ('54', '科员', '17');
INSERT INTO `t_job` VALUES ('55', '一级主办', '18');
INSERT INTO `t_job` VALUES ('56', '二级主办', '18');
INSERT INTO `t_job` VALUES ('57', '科员', '18');
INSERT INTO `t_job` VALUES ('59', '一级主办', '19');
INSERT INTO `t_job` VALUES ('60', '二级主办', '19');
INSERT INTO `t_job` VALUES ('61', '科员', '19');
INSERT INTO `t_job` VALUES ('62', '一级主办', '20');
INSERT INTO `t_job` VALUES ('63', '二级主办', '20');
INSERT INTO `t_job` VALUES ('64', '科员', '20');
INSERT INTO `t_job` VALUES ('65', '一级主办', '21');
INSERT INTO `t_job` VALUES ('66', '二级主办', '21');
INSERT INTO `t_job` VALUES ('67', '科员', '21');
INSERT INTO `t_job` VALUES ('68', '一级主办', '22');
INSERT INTO `t_job` VALUES ('69', '二级主办', '22');
INSERT INTO `t_job` VALUES ('70', '科员', '22');
INSERT INTO `t_job` VALUES ('71', '一级主办', '23');
INSERT INTO `t_job` VALUES ('72', '科员', '23');
INSERT INTO `t_job` VALUES ('73', '一级主办', '24');
INSERT INTO `t_job` VALUES ('74', '科员', '24');
INSERT INTO `t_job` VALUES ('75', '一级主办', '25');
INSERT INTO `t_job` VALUES ('76', '科员', '25');
INSERT INTO `t_job` VALUES ('77', '一级主办', '26');
INSERT INTO `t_job` VALUES ('78', '科员', '26');
INSERT INTO `t_job` VALUES ('79', '二级主办', '26');
INSERT INTO `t_job` VALUES ('80', '副主任科员', '26');
INSERT INTO `t_job` VALUES ('81', '一级主办', '27');
INSERT INTO `t_job` VALUES ('82', '科员', '27');
INSERT INTO `t_job` VALUES ('83', '一级主办', '28');
INSERT INTO `t_job` VALUES ('84', '科员', '28');
INSERT INTO `t_job` VALUES ('85', '一级主办', '29');
INSERT INTO `t_job` VALUES ('86', '二级主办', '29');
INSERT INTO `t_job` VALUES ('87', '科员', '29');
INSERT INTO `t_job` VALUES ('88', '副科', '29');
INSERT INTO `t_job` VALUES ('89', '一级主办', '30');
INSERT INTO `t_job` VALUES ('90', '二级主办', '30');
INSERT INTO `t_job` VALUES ('91', '科员', '30');
INSERT INTO `t_job` VALUES ('92', '一级主办', '31');
INSERT INTO `t_job` VALUES ('93', '副科', '31');
INSERT INTO `t_job` VALUES ('94', '科员', '31');
INSERT INTO `t_job` VALUES ('95', '一级主办', '32');
INSERT INTO `t_job` VALUES ('96', '二级主办', '32');
INSERT INTO `t_job` VALUES ('97', '科员', '32');
INSERT INTO `t_job` VALUES ('98', '一级主办', '33');
INSERT INTO `t_job` VALUES ('99', '科员', '33');
INSERT INTO `t_job` VALUES ('100', '一级主办', '34');
INSERT INTO `t_job` VALUES ('101', '科员', '34');
INSERT INTO `t_job` VALUES ('102', '一级主办', '35');
INSERT INTO `t_job` VALUES ('103', '一级主办', '36');
INSERT INTO `t_job` VALUES ('104', '二级主办', '36');
INSERT INTO `t_job` VALUES ('105', '科员', '36');
INSERT INTO `t_job` VALUES ('106', '一级主办', '37');
INSERT INTO `t_job` VALUES ('107', '二级主办', '37');
INSERT INTO `t_job` VALUES ('108', '科员', '37');
INSERT INTO `t_job` VALUES ('109', '一级主办', '38');
INSERT INTO `t_job` VALUES ('110', '二级主办', '38');
INSERT INTO `t_job` VALUES ('111', '科员', '38');
INSERT INTO `t_job` VALUES ('112', '一级主办', '39');
INSERT INTO `t_job` VALUES ('113', '科员', '39');
INSERT INTO `t_job` VALUES ('114', '一级主办', '40');
INSERT INTO `t_job` VALUES ('115', '科员', '40');
INSERT INTO `t_job` VALUES ('116', '一级主办', '41');
INSERT INTO `t_job` VALUES ('117', '二级主办', '41');
INSERT INTO `t_job` VALUES ('118', '科员', '41');
INSERT INTO `t_job` VALUES ('119', '一级主办', '42');
INSERT INTO `t_job` VALUES ('120', '科员', '42');
INSERT INTO `t_job` VALUES ('121', '一级主办', '43');
INSERT INTO `t_job` VALUES ('122', '一级主办', '44');
INSERT INTO `t_job` VALUES ('123', '一级主办', '45');
INSERT INTO `t_job` VALUES ('124', '科员', '45');
INSERT INTO `t_job` VALUES ('125', '一级主办', '46');
INSERT INTO `t_job` VALUES ('126', '借调', '46');
INSERT INTO `t_job` VALUES ('127', '科员', '46');
INSERT INTO `t_job` VALUES ('128', '三扶一共', '45');
INSERT INTO `t_job` VALUES ('129', '一级主办', '48');
INSERT INTO `t_job` VALUES ('130', '科员', '48');
INSERT INTO `t_job` VALUES ('131', '一级主办', '49');
INSERT INTO `t_job` VALUES ('132', '一级主办', '50');
INSERT INTO `t_job` VALUES ('133', '科员', '50');
INSERT INTO `t_job` VALUES ('134', '一级主办', '51');
INSERT INTO `t_job` VALUES ('135', '科员', '51');
INSERT INTO `t_job` VALUES ('136', '一级主办', '52');
INSERT INTO `t_job` VALUES ('137', '一级主办', '53');
INSERT INTO `t_job` VALUES ('139', '科员', '55');
INSERT INTO `t_job` VALUES ('140', '一级主办', '55');
INSERT INTO `t_job` VALUES ('141', '一级主办', '56');
INSERT INTO `t_job` VALUES ('142', '一级主办', '57');
INSERT INTO `t_job` VALUES ('143', '一级主办', '58');
INSERT INTO `t_job` VALUES ('144', '科员', '58');
INSERT INTO `t_job` VALUES ('145', '一级主办', '60');
INSERT INTO `t_job` VALUES ('146', '二级主办', '60');
INSERT INTO `t_job` VALUES ('147', '科员', '60');
INSERT INTO `t_job` VALUES ('148', '一级主办', '62');
INSERT INTO `t_job` VALUES ('149', '科员', '62');
INSERT INTO `t_job` VALUES ('150', '一级主办', '64');
INSERT INTO `t_job` VALUES ('151', '科员', '64');
INSERT INTO `t_job` VALUES ('152', '一级主办', '65');
INSERT INTO `t_job` VALUES ('153', '科员', '65');
INSERT INTO `t_job` VALUES ('154', '一级主办', '66');
INSERT INTO `t_job` VALUES ('155', '科员', '66');
INSERT INTO `t_job` VALUES ('156', '一级主办', '67');
INSERT INTO `t_job` VALUES ('157', '二级主办', '67');
INSERT INTO `t_job` VALUES ('158', '科员', '67');
INSERT INTO `t_job` VALUES ('159', '一级主办', '68');
INSERT INTO `t_job` VALUES ('160', '科员', '68');
INSERT INTO `t_job` VALUES ('161', '一级主办', '69');
INSERT INTO `t_job` VALUES ('162', '综合文书', '69');
INSERT INTO `t_job` VALUES ('163', '科员', '69');
INSERT INTO `t_job` VALUES ('164', '一级主办', '72');
INSERT INTO `t_job` VALUES ('165', '一级主办', '73');
INSERT INTO `t_job` VALUES ('166', '科员', '73');
INSERT INTO `t_job` VALUES ('167', '副主任', '75');
INSERT INTO `t_job` VALUES ('168', '一级主办', '75');
INSERT INTO `t_job` VALUES ('169', '科员', '75');
INSERT INTO `t_job` VALUES ('170', '工作人员', '76');
INSERT INTO `t_job` VALUES ('171', '主任', '79');
INSERT INTO `t_job` VALUES ('172', '一级主办', '79');
INSERT INTO `t_job` VALUES ('173', '科员', '79');
INSERT INTO `t_job` VALUES ('174', '一级主办', '80');
INSERT INTO `t_job` VALUES ('175', '二级主办', '80');
INSERT INTO `t_job` VALUES ('176', '科员', '80');
INSERT INTO `t_job` VALUES ('177', '一级主办', '81');
INSERT INTO `t_job` VALUES ('178', '科员', '81');
INSERT INTO `t_job` VALUES ('179', '一级主办', '82');
INSERT INTO `t_job` VALUES ('180', '科员', '82');
INSERT INTO `t_job` VALUES ('181', '一级主办', '83');
INSERT INTO `t_job` VALUES ('182', '科员', '83');
INSERT INTO `t_job` VALUES ('183', '大队长', '84');
INSERT INTO `t_job` VALUES ('184', '科员', '84');
INSERT INTO `t_job` VALUES ('185', '一级主办', '85');
INSERT INTO `t_job` VALUES ('186', '科员', '85');
INSERT INTO `t_job` VALUES ('187', '一级主办', '86');
INSERT INTO `t_job` VALUES ('188', '科员', '86');
INSERT INTO `t_job` VALUES ('189', '一级主办', '87');
INSERT INTO `t_job` VALUES ('190', '科员', '87');
INSERT INTO `t_job` VALUES ('191', '一级主办', '88');
INSERT INTO `t_job` VALUES ('192', '二级主办', '88');
INSERT INTO `t_job` VALUES ('193', '科员', '88');
INSERT INTO `t_job` VALUES ('194', '一级主办', '89');
INSERT INTO `t_job` VALUES ('195', '科员', '89');
INSERT INTO `t_job` VALUES ('196', '一级主办', '90');
INSERT INTO `t_job` VALUES ('197', '副科', '90');
INSERT INTO `t_job` VALUES ('198', '科员', '90');
INSERT INTO `t_job` VALUES ('199', '一级主办', '91');
INSERT INTO `t_job` VALUES ('200', '科员', '91');
INSERT INTO `t_job` VALUES ('201', '一级主办', '92');
INSERT INTO `t_job` VALUES ('202', '一级主办', '93');
INSERT INTO `t_job` VALUES ('203', '科员', '93');
INSERT INTO `t_job` VALUES ('204', '一级主办', '94');
INSERT INTO `t_job` VALUES ('205', '科员', '94');
INSERT INTO `t_job` VALUES ('206', '一级主办', '95');
INSERT INTO `t_job` VALUES ('207', '科员', '95');
INSERT INTO `t_job` VALUES ('208', '一级主办', '96');
INSERT INTO `t_job` VALUES ('209', '科员', '96');
INSERT INTO `t_job` VALUES ('210', '一级主办', '97');
INSERT INTO `t_job` VALUES ('211', '科员', '97');
INSERT INTO `t_job` VALUES ('212', '一级主办', '98');
INSERT INTO `t_job` VALUES ('213', '科员', '98');
INSERT INTO `t_job` VALUES ('214', '一级主办', '99');
INSERT INTO `t_job` VALUES ('215', '二级主办', '99');
INSERT INTO `t_job` VALUES ('216', '科员', '99');
INSERT INTO `t_job` VALUES ('217', '一级主办', '100');
INSERT INTO `t_job` VALUES ('218', '科员', '100');
INSERT INTO `t_job` VALUES ('219', '一级主办', '101');
INSERT INTO `t_job` VALUES ('220', '科员', '101');
INSERT INTO `t_job` VALUES ('221', '一级主办', '102');
INSERT INTO `t_job` VALUES ('222', '科员', '102');
INSERT INTO `t_job` VALUES ('223', '一级主办', '118');
INSERT INTO `t_job` VALUES ('224', '科员', '118');
INSERT INTO `t_job` VALUES ('225', '一级主办', '103');
INSERT INTO `t_job` VALUES ('226', '借用', '103');
INSERT INTO `t_job` VALUES ('227', '科员', '103');
INSERT INTO `t_job` VALUES ('228', '一级主办', '104');
INSERT INTO `t_job` VALUES ('229', '科员', '104');
INSERT INTO `t_job` VALUES ('230', '一级主办', '105');
INSERT INTO `t_job` VALUES ('231', '科员', '105');
INSERT INTO `t_job` VALUES ('232', '一级主办', '106');
INSERT INTO `t_job` VALUES ('233', '借出', '106');
INSERT INTO `t_job` VALUES ('234', '科员', '106');
INSERT INTO `t_job` VALUES ('235', '一级主办', '107');
INSERT INTO `t_job` VALUES ('236', '科员', '107');
INSERT INTO `t_job` VALUES ('237', '一级主办', '108');
INSERT INTO `t_job` VALUES ('238', '科员', '108');
INSERT INTO `t_job` VALUES ('239', '一级主办', '109');
INSERT INTO `t_job` VALUES ('240', '科员', '109');
INSERT INTO `t_job` VALUES ('241', '安稳负责人', '106');
INSERT INTO `t_job` VALUES ('242', '一级主办', '110');
INSERT INTO `t_job` VALUES ('243', '科员', '110');
INSERT INTO `t_job` VALUES ('244', '一级主办', '111');
INSERT INTO `t_job` VALUES ('245', '科员', '111');
INSERT INTO `t_job` VALUES ('246', '一级主办', '112');
INSERT INTO `t_job` VALUES ('247', '科员', '112');
INSERT INTO `t_job` VALUES ('248', '一级主办', '115');
INSERT INTO `t_job` VALUES ('249', '科员', '115');
INSERT INTO `t_job` VALUES ('250', '主任', '116');
INSERT INTO `t_job` VALUES ('251', '一级主办', '116');
INSERT INTO `t_job` VALUES ('252', '科员', '116');
INSERT INTO `t_job` VALUES ('253', '一级主办', '117');
INSERT INTO `t_job` VALUES ('254', '二级主办', '117');
INSERT INTO `t_job` VALUES ('255', '科员', '117');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `LOG_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '日志编号',
  `USER_ID` int(4) DEFAULT NULL COMMENT '用户编号',
  `LOG_TYPE_ID` int(1) DEFAULT NULL COMMENT '日志类型编号',
  `LOG_CREATETIME` datetime DEFAULT NULL COMMENT '日志创建时间',
  PRIMARY KEY (`LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_log_type
-- ----------------------------
DROP TABLE IF EXISTS `t_log_type`;
CREATE TABLE `t_log_type` (
  `LOG_TYPE_ID` int(1) NOT NULL AUTO_INCREMENT COMMENT '日志类型编号',
  `LOG_TYPE_NAME` varchar(10) DEFAULT NULL COMMENT '日志类型名称',
  PRIMARY KEY (`LOG_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log_type
-- ----------------------------

-- ----------------------------
-- Table structure for t_maindep_minordep
-- ----------------------------
DROP TABLE IF EXISTS `t_maindep_minordep`;
CREATE TABLE `t_maindep_minordep` (
  `MAIN_MINOR_DEP_ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '自动生成、自动增长',
  `MAIN_DEP_ID` int(4) DEFAULT NULL COMMENT '主办部门编号',
  `MINOR_DEP_ID` int(4) DEFAULT NULL COMMENT '协办部门编号',
  `MINOR_OFFICE_ID` int(4) DEFAULT NULL COMMENT '协办科室编号',
  `ASSIGN_ID` int(6) DEFAULT NULL COMMENT '交办件编号',
  PRIMARY KEY (`MAIN_MINOR_DEP_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_maindep_minordep
-- ----------------------------
INSERT INTO `t_maindep_minordep` VALUES ('213', '2', '0', '0', '259');
INSERT INTO `t_maindep_minordep` VALUES ('214', '2', '16', '79', '260');
INSERT INTO `t_maindep_minordep` VALUES ('215', '2', '16', '79', '261');
INSERT INTO `t_maindep_minordep` VALUES ('216', '16', '2', '1', '262');
INSERT INTO `t_maindep_minordep` VALUES ('217', '16', '2', '1', '263');
INSERT INTO `t_maindep_minordep` VALUES ('218', '16', '2', '1', '265');
INSERT INTO `t_maindep_minordep` VALUES ('219', '16', '2', '1', '266');
INSERT INTO `t_maindep_minordep` VALUES ('220', '2', '0', '0', '267');
INSERT INTO `t_maindep_minordep` VALUES ('221', '2', '0', '0', '268');
INSERT INTO `t_maindep_minordep` VALUES ('222', '2', '0', '0', '269');
INSERT INTO `t_maindep_minordep` VALUES ('223', '2', '0', '0', '270');
INSERT INTO `t_maindep_minordep` VALUES ('224', '2', '0', '0', '271');
INSERT INTO `t_maindep_minordep` VALUES ('225', '2', '0', '0', '272');
INSERT INTO `t_maindep_minordep` VALUES ('226', '2', '0', '0', '273');
INSERT INTO `t_maindep_minordep` VALUES ('227', '2', '0', '0', '274');
INSERT INTO `t_maindep_minordep` VALUES ('228', '2', '3', '7', '275');
INSERT INTO `t_maindep_minordep` VALUES ('229', '2', '0', '0', '276');
INSERT INTO `t_maindep_minordep` VALUES ('230', '2', '0', '0', '277');
INSERT INTO `t_maindep_minordep` VALUES ('231', '2', '0', '0', '278');
INSERT INTO `t_maindep_minordep` VALUES ('232', '2', '0', '0', '279');
INSERT INTO `t_maindep_minordep` VALUES ('233', '2', '0', '0', '280');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `MENU_ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '菜单编号',
  `MENU_NAME` varchar(20) DEFAULT NULL COMMENT '菜单名称',
  `MENU_URL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('1', '交办件信息发布', '/assign/assignJump');
INSERT INTO `t_menu` VALUES ('2', '交办件信息查询', '/assign/assignQuery');
INSERT INTO `t_menu` VALUES ('3', '人员结构查询', '/queryList/queryListJump');
INSERT INTO `t_menu` VALUES ('4', '个人信息', '/personal/queryPersonalJump');
INSERT INTO `t_menu` VALUES ('5', '添加人员', '/addPersonal/addPerJump');
INSERT INTO `t_menu` VALUES ('6', '添加角色', '/addRole/addRoleJump');
INSERT INTO `t_menu` VALUES ('7', '统计详情', '/statistics/statisticsJump');
INSERT INTO `t_menu` VALUES ('8', '修改密码', '/updateUser/updateUserPasswdJump');
INSERT INTO `t_menu` VALUES ('9', '权限控制', '/updatePermission/updatePermissionJump');
INSERT INTO `t_menu` VALUES ('10', '人员总体信息', '/queryList/queryListAllJump');

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `MSG_ID` int(6) NOT NULL AUTO_INCREMENT COMMENT '消息编号',
  `MSG_DETAIL` varchar(200) DEFAULT NULL COMMENT '消息详情',
  `MSG_SENDTIME` varchar(20) DEFAULT NULL COMMENT '消息发送时间',
  `MSG_ISREAD` int(1) DEFAULT NULL COMMENT '是否阅读',
  `MSG_TYPE` int(1) DEFAULT NULL COMMENT '消息类型',
  PRIMARY KEY (`MSG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES ('233', '测试交办件发布1', '1539577355', '1', '1');
INSERT INTO `t_message` VALUES ('234', 'qqqq', '1539578172', '1', '1');
INSERT INTO `t_message` VALUES ('235', 'aaaaa', '1539578553', '1', '1');
INSERT INTO `t_message` VALUES ('236', '测试数据', '1539593555', '1', '1');
INSERT INTO `t_message` VALUES ('237', '主协办', '1539594024', '1', '1');
INSERT INTO `t_message` VALUES ('238', '测试交办件发布主协办', '1539597860', '1', '1');
INSERT INTO `t_message` VALUES ('239', '测试交办件发布主协办1', '1539598478', '1', '1');
INSERT INTO `t_message` VALUES ('240', 'aaaaaaa', '1541133436', '1', '1');
INSERT INTO `t_message` VALUES ('241', '测试多张照片', '1541991353', '1', '1');
INSERT INTO `t_message` VALUES ('242', '手机端电子版附件显示', '1542163657', '1', '1');
INSERT INTO `t_message` VALUES ('243', '测试中文及交办件', '1543454337', '1', '1');
INSERT INTO `t_message` VALUES ('244', '测试电子版文档上传', '1543454961', '1', '1');
INSERT INTO `t_message` VALUES ('245', '发布测试交办件------测试', '1543473317', '1', '1');
INSERT INTO `t_message` VALUES ('246', '测试领导发布交办件', '1543473458', '1', '1');
INSERT INTO `t_message` VALUES ('247', 'asdsadsadsad大的萨达', '1543478339', '1', '1');
INSERT INTO `t_message` VALUES ('248', 'sad撒多撒倒萨倒萨', '1543478399', '1', '1');
INSERT INTO `t_message` VALUES ('249', 'sadfgs', '1543484722', '1', '1');
INSERT INTO `t_message` VALUES ('250', '阿斯蒂芬', '1543485222', '1', '1');
INSERT INTO `t_message` VALUES ('251', '大萨达撒多撒多撒', '1543821251', '1', '1');
INSERT INTO `t_message` VALUES ('252', '测试备注信息文字量', '1543821735', '1', '1');
INSERT INTO `t_message` VALUES ('253', 'wwwwwwwwwww', '1543821814', '1', '1');

-- ----------------------------
-- Table structure for t_middle_message
-- ----------------------------
DROP TABLE IF EXISTS `t_middle_message`;
CREATE TABLE `t_middle_message` (
  `MIDDLE_MESSAGE_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '自动生成、自动增长',
  `MSG_SENDER` int(5) DEFAULT NULL COMMENT '消息发送者',
  `MSG_RECEIVER` int(5) DEFAULT NULL COMMENT '消息接收者',
  `MSG_ID` int(5) DEFAULT NULL COMMENT '消息编号',
  `MSG_CONTENT` varchar(500) DEFAULT NULL COMMENT '消息内容',
  `MSG_SENDTIME` varchar(20) DEFAULT NULL COMMENT '消息发送时间',
  PRIMARY KEY (`MIDDLE_MESSAGE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_middle_message
-- ----------------------------
INSERT INTO `t_middle_message` VALUES ('312', '0', '156', '233', null, null);
INSERT INTO `t_middle_message` VALUES ('313', '0', '142', '234', null, null);
INSERT INTO `t_middle_message` VALUES ('314', '0', '142', '235', null, null);
INSERT INTO `t_middle_message` VALUES ('315', '0', '142', '236', null, null);
INSERT INTO `t_middle_message` VALUES ('316', '0', '142', '237', null, null);
INSERT INTO `t_middle_message` VALUES ('317', '0', '141', '238', null, null);
INSERT INTO `t_middle_message` VALUES ('318', '0', '141', '239', null, null);
INSERT INTO `t_middle_message` VALUES ('320', '157', '124', '239', 'hahahahah哈哈', '1541125217');
INSERT INTO `t_middle_message` VALUES ('321', '124', '157', '239', 'ooo哦哦', '1541125286');
INSERT INTO `t_middle_message` VALUES ('322', '0', '156', '240', null, null);
INSERT INTO `t_middle_message` VALUES ('323', '157', '0', '239', '123', '1541139779');
INSERT INTO `t_middle_message` VALUES ('324', '124', '157', '239', '123', '1541404262');
INSERT INTO `t_middle_message` VALUES ('325', '124', '157', '239', '123', '1541989867');
INSERT INTO `t_middle_message` VALUES ('326', '124', '157', '239', '123456', '1541990509');
INSERT INTO `t_middle_message` VALUES ('327', '0', '156', '241', null, null);
INSERT INTO `t_middle_message` VALUES ('328', '0', '156', '242', null, null);
INSERT INTO `t_middle_message` VALUES ('329', '124', '156', '242', '123', '1542164394');
INSERT INTO `t_middle_message` VALUES ('330', '124', '156', '242', '哈哈', '1542164426');
INSERT INTO `t_middle_message` VALUES ('331', '156', '0', '242', 'GGG\n', '1542853453');
INSERT INTO `t_middle_message` VALUES ('332', '156', '0', '242', '32132131313', '1542870853');
INSERT INTO `t_middle_message` VALUES ('333', '156', '0', '242', '测试反馈', '1542870908');
INSERT INTO `t_middle_message` VALUES ('334', '156', '0', '242', '1233', '1542871009');
INSERT INTO `t_middle_message` VALUES ('335', '156', '0', '242', '1', '1542871210');
INSERT INTO `t_middle_message` VALUES ('336', '156', '124', '242', '22222222222', '1542871488');
INSERT INTO `t_middle_message` VALUES ('337', '156', '124', '242', 'Uuuuuu\n', '1542872112');
INSERT INTO `t_middle_message` VALUES ('338', '156', '124', '242', 'Aaaaa', '1542874823');
INSERT INTO `t_middle_message` VALUES ('339', '156', '124', '242', 'Aaaaa', '1542874824');
INSERT INTO `t_middle_message` VALUES ('340', '55', '0', '242', 'jjjj', '1543308961');
INSERT INTO `t_middle_message` VALUES ('341', '0', '156', '243', null, null);
INSERT INTO `t_middle_message` VALUES ('342', '55', '0', '243', '啊啊啊啊', '1543454378');
INSERT INTO `t_middle_message` VALUES ('343', '156', '124', '243', '好的', '1543454813');
INSERT INTO `t_middle_message` VALUES ('344', '124', '156', '243', '做的不错', '1543454880');
INSERT INTO `t_middle_message` VALUES ('345', '0', '156', '244', null, null);
INSERT INTO `t_middle_message` VALUES ('346', '0', '156', '245', null, null);
INSERT INTO `t_middle_message` VALUES ('347', '0', '156', '246', null, null);
INSERT INTO `t_middle_message` VALUES ('348', '0', '141', '247', null, null);
INSERT INTO `t_middle_message` VALUES ('349', '0', '135', '248', null, null);
INSERT INTO `t_middle_message` VALUES ('350', '0', '147', '249', null, null);
INSERT INTO `t_middle_message` VALUES ('351', '0', '147', '250', null, null);
INSERT INTO `t_middle_message` VALUES ('352', '124', '147', '249', '', '1543486482');
INSERT INTO `t_middle_message` VALUES ('353', '124', '156', '240', '', '1543486564');
INSERT INTO `t_middle_message` VALUES ('354', '124', '156', '240', '', '1543486565');
INSERT INTO `t_middle_message` VALUES ('355', '124', '142', '236', '', '1543487169');
INSERT INTO `t_middle_message` VALUES ('356', '0', '141', '251', null, null);
INSERT INTO `t_middle_message` VALUES ('357', '0', '141', '252', null, null);
INSERT INTO `t_middle_message` VALUES ('358', '0', '141', '253', null, null);
INSERT INTO `t_middle_message` VALUES ('359', '55', '0', '252', 'dsadasddasdsadsadsa', '1543901480');
INSERT INTO `t_middle_message` VALUES ('360', '55', '0', '252', 'dsadsadsa', '1543901815');
INSERT INTO `t_middle_message` VALUES ('361', '55', '0', '251', 'fdssdfsdsadasdsa', '1543903191');
INSERT INTO `t_middle_message` VALUES ('362', '55', '0', '251', '第三方第三方但是', '1543904170');
INSERT INTO `t_middle_message` VALUES ('363', '141', '124', '253', 'dsadsadasada', '1544233398');
INSERT INTO `t_middle_message` VALUES ('364', '141', '124', '253', 'dasdsadsadsadas', '1544233405');
INSERT INTO `t_middle_message` VALUES ('365', '141', '124', '253', 'fdghfhgf多个梵蒂冈梵蒂冈', '1544233410');
INSERT INTO `t_middle_message` VALUES ('366', '141', '124', '253', '发的广泛地官方大哥发的广泛地', '1544233414');
INSERT INTO `t_middle_message` VALUES ('367', '141', '124', '253', '合计货款合计空间和空间还款计划', '1544233422');
INSERT INTO `t_middle_message` VALUES ('368', '141', '124', '253', '哈哈哈哈哈哈哈哈哈', '1544236943');
INSERT INTO `t_middle_message` VALUES ('369', '141', '124', '253', 'xcvcxvcxvcxvcxvcx', '1544238033');
INSERT INTO `t_middle_message` VALUES ('370', '124', '141', '253', 'fdsfds第三方第三方是', '1544238965');
INSERT INTO `t_middle_message` VALUES ('371', '141', '124', '252', '哈哈哈哈哈啊哈哈哈啊哈哈哈哈', '1544251789');
INSERT INTO `t_middle_message` VALUES ('372', '55', '0', '252', '绝对是法看见爱上了快递费吉林省的会计法sad', '1544252817');
INSERT INTO `t_middle_message` VALUES ('373', '55', '0', '253', 'fdsfdsfdsfdsf', '1544253145');
INSERT INTO `t_middle_message` VALUES ('374', '55', '0', '253', 'fghjsdfhdsjkfhdsjkfhdsjkfdshkjfdsh', '1544253330');
INSERT INTO `t_middle_message` VALUES ('375', '141', '124', '251', 'dsadsadsadsa啥的巴萨的扩散附近开了电视柜愤怒地说空间浪费机会点时空裂缝', '1544258284');
INSERT INTO `t_middle_message` VALUES ('376', '124', '141', '251', 'dfjklgfhjdlkgfdjklgfdjklgfdjgkfd fmdx v nxzNM<cnxm,vfnc,x.', '1544258312');
INSERT INTO `t_middle_message` VALUES ('377', '150', '0', '252', '', '1544262714');
INSERT INTO `t_middle_message` VALUES ('378', '124', '141', '251', '', '1545294814');

-- ----------------------------
-- Table structure for t_office
-- ----------------------------
DROP TABLE IF EXISTS `t_office`;
CREATE TABLE `t_office` (
  `OFFICE_ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '科室编号',
  `OFFICE_NAME` varchar(100) DEFAULT NULL COMMENT '科室名称',
  `DEP_ID` int(2) DEFAULT NULL COMMENT '科室所在部门，对应部门ID',
  PRIMARY KEY (`OFFICE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_office
-- ----------------------------
INSERT INTO `t_office` VALUES ('1', '综合科', '2');
INSERT INTO `t_office` VALUES ('2', '秘书科', '2');
INSERT INTO `t_office` VALUES ('3', '行政服务科', '2');
INSERT INTO `t_office` VALUES ('4', '法制办公室', '2');
INSERT INTO `t_office` VALUES ('5', '应急管理办公室', '2');
INSERT INTO `t_office` VALUES ('6', '综合科', '3');
INSERT INTO `t_office` VALUES ('7', '干部科', '3');
INSERT INTO `t_office` VALUES ('8', '基层组织科', '3');
INSERT INTO `t_office` VALUES ('9', '两新组织党建科', '3');
INSERT INTO `t_office` VALUES ('10', '机关党建指导科', '3');
INSERT INTO `t_office` VALUES ('11', '宣传科', '3');
INSERT INTO `t_office` VALUES ('12', '传媒与远教中心', '3');
INSERT INTO `t_office` VALUES ('13', '共青团高新区工委', '3');
INSERT INTO `t_office` VALUES ('14', '妇女联合会', '3');
INSERT INTO `t_office` VALUES ('15', '综合科', '4');
INSERT INTO `t_office` VALUES ('16', '商务旅游科', '4');
INSERT INTO `t_office` VALUES ('17', '招商引资办公室', '4');
INSERT INTO `t_office` VALUES ('18', '项目管理办公室', '4');
INSERT INTO `t_office` VALUES ('19', '企业服务科', '4');
INSERT INTO `t_office` VALUES ('20', '发展改革科', '4');
INSERT INTO `t_office` VALUES ('21', '工业与信息化服务科', '4');
INSERT INTO `t_office` VALUES ('22', '统计科', '4');
INSERT INTO `t_office` VALUES ('23', '综合科', '5');
INSERT INTO `t_office` VALUES ('24', '建筑市场监管科', '5');
INSERT INTO `t_office` VALUES ('25', '工程技术科', '5');
INSERT INTO `t_office` VALUES ('26', '棚户区改造与住房保障管理科', '5');
INSERT INTO `t_office` VALUES ('27', '公用事业综合管理科', '5');
INSERT INTO `t_office` VALUES ('28', '交通管理科', '5');
INSERT INTO `t_office` VALUES ('29', '人民防控与房产物业管理办公室', '5');
INSERT INTO `t_office` VALUES ('30', '综合科', '6');
INSERT INTO `t_office` VALUES ('31', '监督非税科', '6');
INSERT INTO `t_office` VALUES ('32', '经社保障科', '6');
INSERT INTO `t_office` VALUES ('33', '预算国库科', '6');
INSERT INTO `t_office` VALUES ('34', '采购评审科', '6');
INSERT INTO `t_office` VALUES ('35', '集中支付中心', '6');
INSERT INTO `t_office` VALUES ('36', '综合科', '7');
INSERT INTO `t_office` VALUES ('37', '人事科', '7');
INSERT INTO `t_office` VALUES ('38', '社会保险中心', '7');
INSERT INTO `t_office` VALUES ('39', '就业服务科', '7');
INSERT INTO `t_office` VALUES ('40', '城乡居民社会养老保险中心', '7');
INSERT INTO `t_office` VALUES ('41', '劳动保障监察大队', '7');
INSERT INTO `t_office` VALUES ('42', '综合科', '8');
INSERT INTO `t_office` VALUES ('43', '民政科', '8');
INSERT INTO `t_office` VALUES ('44', '综合核查中心', '8');
INSERT INTO `t_office` VALUES ('45', '文化广播新闻出版科', '8');
INSERT INTO `t_office` VALUES ('46', '卫生监督疾控科', '8');
INSERT INTO `t_office` VALUES ('48', '综合科', '9');
INSERT INTO `t_office` VALUES ('49', '社会科', '9');
INSERT INTO `t_office` VALUES ('50', '农林水科', '9');
INSERT INTO `t_office` VALUES ('51', '经济科', '9');
INSERT INTO `t_office` VALUES ('52', '建设科', '9');
INSERT INTO `t_office` VALUES ('53', '政务服务科', '9');
INSERT INTO `t_office` VALUES ('54', '综合科', '10');
INSERT INTO `t_office` VALUES ('55', '政策法规科', '10');
INSERT INTO `t_office` VALUES ('56', '城市管理科', '10');
INSERT INTO `t_office` VALUES ('57', '数字城管监督指挥中心', '10');
INSERT INTO `t_office` VALUES ('58', '园林绿化科', '10');
INSERT INTO `t_office` VALUES ('59', '市容环卫管理所', '10');
INSERT INTO `t_office` VALUES ('60', '渣土管理办公室', '10');
INSERT INTO `t_office` VALUES ('61', '城管综合执法大队', '10');
INSERT INTO `t_office` VALUES ('62', '综合科', '11');
INSERT INTO `t_office` VALUES ('63', '社会治安综合治理办公室', '11');
INSERT INTO `t_office` VALUES ('64', '防范和处理邪教问题办公室', '11');
INSERT INTO `t_office` VALUES ('65', '国家安全领导小组办公室', '11');
INSERT INTO `t_office` VALUES ('66', '司法科', '11');
INSERT INTO `t_office` VALUES ('67', '信访科', '11');
INSERT INTO `t_office` VALUES ('68', '群众工作中心', '11');
INSERT INTO `t_office` VALUES ('69', '综合科', '12');
INSERT INTO `t_office` VALUES ('70', '督查科', '12');
INSERT INTO `t_office` VALUES ('71', '考核科', '12');
INSERT INTO `t_office` VALUES ('72', '信息综合科', '13');
INSERT INTO `t_office` VALUES ('73', '政策研究科', '13');
INSERT INTO `t_office` VALUES ('74', '综合业务科', '14');
INSERT INTO `t_office` VALUES ('75', '职工服务中心', '14');
INSERT INTO `t_office` VALUES ('76', '综合管理科', '15');
INSERT INTO `t_office` VALUES ('77', '党务办公室', '15');
INSERT INTO `t_office` VALUES ('78', '街政服务中心', '15');
INSERT INTO `t_office` VALUES ('79', '信息办', '16');
INSERT INTO `t_office` VALUES ('80', '综合科', '17');
INSERT INTO `t_office` VALUES ('81', '工矿商贸监督管理科', '17');
INSERT INTO `t_office` VALUES ('82', '危险化学品监督管理科', '17');
INSERT INTO `t_office` VALUES ('83', '职业健康监督管理科', '17');
INSERT INTO `t_office` VALUES ('84', '安全生产执法检查大队', '17');
INSERT INTO `t_office` VALUES ('85', '综合科', '18');
INSERT INTO `t_office` VALUES ('86', '产业发展科', '18');
INSERT INTO `t_office` VALUES ('87', '科技管理科', '18');
INSERT INTO `t_office` VALUES ('88', '创业服务中心', '18');
INSERT INTO `t_office` VALUES ('89', '综合科', '19');
INSERT INTO `t_office` VALUES ('90', '财务科', '19');
INSERT INTO `t_office` VALUES ('91', '征收科', '19');
INSERT INTO `t_office` VALUES ('92', '收储科', '19');
INSERT INTO `t_office` VALUES ('93', '综合科', '20');
INSERT INTO `t_office` VALUES ('94', '金融服务科', '20');
INSERT INTO `t_office` VALUES ('95', '国有资本运营科', '20');
INSERT INTO `t_office` VALUES ('96', '综合科', '21');
INSERT INTO `t_office` VALUES ('97', '林业科', '21');
INSERT INTO `t_office` VALUES ('98', '水务科', '21');
INSERT INTO `t_office` VALUES ('99', '农牧科', '21');
INSERT INTO `t_office` VALUES ('100', '农村工作办公室', '21');
INSERT INTO `t_office` VALUES ('101', '农村经济经营管理科', '21');
INSERT INTO `t_office` VALUES ('102', '动物卫生监督所', '21');
INSERT INTO `t_office` VALUES ('103', '综合科', '22');
INSERT INTO `t_office` VALUES ('104', '人事科', '22');
INSERT INTO `t_office` VALUES ('105', '规划计财科', '22');
INSERT INTO `t_office` VALUES ('106', '基础教育科', '22');
INSERT INTO `t_office` VALUES ('107', '体育运动管理科', '22');
INSERT INTO `t_office` VALUES ('108', '督导科', '22');
INSERT INTO `t_office` VALUES ('109', '教育研训中心', '22');
INSERT INTO `t_office` VALUES ('110', '审计局', '23');
INSERT INTO `t_office` VALUES ('111', '综合科', '24');
INSERT INTO `t_office` VALUES ('112', '党风政风监督室', '24');
INSERT INTO `t_office` VALUES ('113', '纪检监察一室', '24');
INSERT INTO `t_office` VALUES ('114', '纪检监察二室', '24');
INSERT INTO `t_office` VALUES ('115', '信访审理室', '24');
INSERT INTO `t_office` VALUES ('116', '巡查监督室', '24');
INSERT INTO `t_office` VALUES ('117', '华夏幸福基业滦河项目管理办公室', '25');
INSERT INTO `t_office` VALUES ('118', '扶贫科', '21');

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `PERMISSION_ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '权限编号',
  `PERMISSION_NAME` varchar(50) DEFAULT NULL COMMENT '权限名称',
  `PERMISSION_DESC` varchar(200) DEFAULT NULL COMMENT '权限描述',
  `PERMISSION_FILED` varchar(200) DEFAULT NULL COMMENT '权限字段',
  PRIMARY KEY (`PERMISSION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '删除交办件', '删除交办件', 'user:delAssign');
INSERT INTO `t_permission` VALUES ('2', '增加人员', '增加组织架构人员', 'user:add');
INSERT INTO `t_permission` VALUES ('3', '修改人员信息', '修改人员信息', 'user:updatePersonal');
INSERT INTO `t_permission` VALUES ('4', '修改交办件', '修改交办件信息', 'user:updateAssign');
INSERT INTO `t_permission` VALUES ('5', '修改人员角色', '修改人员角色', 'user:updatePersonalRole');
INSERT INTO `t_permission` VALUES ('6', '查询人员', '查询人员', 'user:selectPersonal');
INSERT INTO `t_permission` VALUES ('7', '管理员', '具有所有权限', 'user:admin');
INSERT INTO `t_permission` VALUES ('8', '删除人员', '删除人员', 'user:delPersonal');
INSERT INTO `t_permission` VALUES ('9', '查询交办件', '查询交办件', 'user:selectAssign');
INSERT INTO `t_permission` VALUES ('10', '增加人员角色', '增加人员角色', 'user:addUserRole');
INSERT INTO `t_permission` VALUES ('11', '删除人员角色', '删除人员角色', 'user:delUserRole');
INSERT INTO `t_permission` VALUES ('12', '增加职务', '增加职务', 'user:addJob');
INSERT INTO `t_permission` VALUES ('13', '发布交办件', '发布交办件菜单', 'user:releaseAssign');
INSERT INTO `t_permission` VALUES ('14', '查询交办件', '查询交办件菜单', 'user:selectAssign');
INSERT INTO `t_permission` VALUES ('15', '个人信息', '个人信息菜单', 'user:personalMessage');
INSERT INTO `t_permission` VALUES ('16', '统计详情', '统计详情', 'user:statistics');
INSERT INTO `t_permission` VALUES ('17', '修改密码', '修改密码', 'user:updatePasswd');
INSERT INTO `t_permission` VALUES ('18', '修改权限', '修改权限', 'user:updatePermission');

-- ----------------------------
-- Table structure for t_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_permission_menu`;
CREATE TABLE `t_permission_menu` (
  `PERMISSION_MENU_ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '权限菜单编号',
  `PERMISSION_ID` int(4) DEFAULT NULL COMMENT '权限编号',
  `MENU_ID` int(4) DEFAULT NULL COMMENT '菜单编号',
  PRIMARY KEY (`PERMISSION_MENU_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission_menu
-- ----------------------------
INSERT INTO `t_permission_menu` VALUES ('14', '7', '1');
INSERT INTO `t_permission_menu` VALUES ('15', '7', '2');
INSERT INTO `t_permission_menu` VALUES ('16', '7', '3');
INSERT INTO `t_permission_menu` VALUES ('17', '7', '4');
INSERT INTO `t_permission_menu` VALUES ('18', '7', '7');
INSERT INTO `t_permission_menu` VALUES ('19', '7', '6');
INSERT INTO `t_permission_menu` VALUES ('20', '7', '7');
INSERT INTO `t_permission_menu` VALUES ('21', '7', '8');
INSERT INTO `t_permission_menu` VALUES ('22', '7', '9');
INSERT INTO `t_permission_menu` VALUES ('23', '1', '2');
INSERT INTO `t_permission_menu` VALUES ('24', '2', '5');
INSERT INTO `t_permission_menu` VALUES ('25', '3', '3');
INSERT INTO `t_permission_menu` VALUES ('26', '4', '2');
INSERT INTO `t_permission_menu` VALUES ('27', '5', '6');
INSERT INTO `t_permission_menu` VALUES ('28', '5', '9');
INSERT INTO `t_permission_menu` VALUES ('29', '6', '3');
INSERT INTO `t_permission_menu` VALUES ('30', '8', '3');
INSERT INTO `t_permission_menu` VALUES ('31', '9', '2');
INSERT INTO `t_permission_menu` VALUES ('32', '1', '4');
INSERT INTO `t_permission_menu` VALUES ('33', '2', '4');
INSERT INTO `t_permission_menu` VALUES ('34', '3', '4');
INSERT INTO `t_permission_menu` VALUES ('35', '4', '4');
INSERT INTO `t_permission_menu` VALUES ('36', '5', '4');
INSERT INTO `t_permission_menu` VALUES ('37', '6', '4');
INSERT INTO `t_permission_menu` VALUES ('38', '8', '4');
INSERT INTO `t_permission_menu` VALUES ('39', '9', '4');
INSERT INTO `t_permission_menu` VALUES ('40', '13', '1');
INSERT INTO `t_permission_menu` VALUES ('41', '14', '2');
INSERT INTO `t_permission_menu` VALUES ('42', '15', '4');
INSERT INTO `t_permission_menu` VALUES ('43', '16', '7');
INSERT INTO `t_permission_menu` VALUES ('44', '17', '8');
INSERT INTO `t_permission_menu` VALUES ('45', '18', '9');
INSERT INTO `t_permission_menu` VALUES ('46', '7', '10');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `ROLE_ID` int(5) NOT NULL AUTO_INCREMENT COMMENT '角色编号',
  `ROLE_NAME` varchar(50) DEFAULT NULL COMMENT '角色名称',
  `ROLE_SYSTEM_ID` int(2) DEFAULT NULL COMMENT '角色体系',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('29', '管理员', '1');
INSERT INTO `t_role` VALUES ('49', '部门负责人', '1');
INSERT INTO `t_role` VALUES ('50', '部门副职', '1');
INSERT INTO `t_role` VALUES ('51', '一级主办', '1');
INSERT INTO `t_role` VALUES ('52', '二级主办', '1');
INSERT INTO `t_role` VALUES ('53', '工管委领导', '1');
INSERT INTO `t_role` VALUES ('54', '交办件发布', '1');
INSERT INTO `t_role` VALUES ('55', '科员', '1');

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `ROLE_PERMISSION_ID` int(5) NOT NULL AUTO_INCREMENT COMMENT '角色权限编号',
  `ROLE_ID` int(5) DEFAULT NULL COMMENT '角色编号',
  `PERMISSION_ID` int(4) DEFAULT NULL COMMENT '权限编号',
  PRIMARY KEY (`ROLE_PERMISSION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('127', '29', '1');
INSERT INTO `t_role_permission` VALUES ('128', '29', '2');
INSERT INTO `t_role_permission` VALUES ('129', '29', '3');
INSERT INTO `t_role_permission` VALUES ('130', '29', '4');
INSERT INTO `t_role_permission` VALUES ('131', '29', '5');
INSERT INTO `t_role_permission` VALUES ('132', '29', '6');
INSERT INTO `t_role_permission` VALUES ('133', '29', '7');
INSERT INTO `t_role_permission` VALUES ('134', '29', '8');
INSERT INTO `t_role_permission` VALUES ('135', '29', '9');
INSERT INTO `t_role_permission` VALUES ('136', '30', '9');
INSERT INTO `t_role_permission` VALUES ('137', '30', '6');
INSERT INTO `t_role_permission` VALUES ('143', '42', '6');
INSERT INTO `t_role_permission` VALUES ('144', '42', '9');
INSERT INTO `t_role_permission` VALUES ('145', '42', '4');
INSERT INTO `t_role_permission` VALUES ('147', '29', '10');
INSERT INTO `t_role_permission` VALUES ('148', '29', '11');
INSERT INTO `t_role_permission` VALUES ('149', '29', '12');
INSERT INTO `t_role_permission` VALUES ('150', '29', '13');
INSERT INTO `t_role_permission` VALUES ('151', '29', '14');
INSERT INTO `t_role_permission` VALUES ('152', '29', '15');
INSERT INTO `t_role_permission` VALUES ('153', '29', '16');
INSERT INTO `t_role_permission` VALUES ('154', '29', '17');
INSERT INTO `t_role_permission` VALUES ('155', '29', '18');
INSERT INTO `t_role_permission` VALUES ('158', '30', '16');
INSERT INTO `t_role_permission` VALUES ('159', '30', '17');
INSERT INTO `t_role_permission` VALUES ('160', '30', '4');
INSERT INTO `t_role_permission` VALUES ('161', '42', '15');
INSERT INTO `t_role_permission` VALUES ('162', '42', '17');
INSERT INTO `t_role_permission` VALUES ('163', '44', '14');
INSERT INTO `t_role_permission` VALUES ('164', '44', '15');
INSERT INTO `t_role_permission` VALUES ('165', '44', '17');
INSERT INTO `t_role_permission` VALUES ('166', '44', '6');
INSERT INTO `t_role_permission` VALUES ('167', '44', '4');
INSERT INTO `t_role_permission` VALUES ('168', '45', '1');
INSERT INTO `t_role_permission` VALUES ('169', '45', '6');
INSERT INTO `t_role_permission` VALUES ('170', '45', '9');
INSERT INTO `t_role_permission` VALUES ('171', '45', '13');
INSERT INTO `t_role_permission` VALUES ('172', '45', '14');
INSERT INTO `t_role_permission` VALUES ('173', '45', '15');
INSERT INTO `t_role_permission` VALUES ('174', '45', '16');
INSERT INTO `t_role_permission` VALUES ('175', '45', '17');
INSERT INTO `t_role_permission` VALUES ('176', '46', '17');
INSERT INTO `t_role_permission` VALUES ('177', '46', '15');
INSERT INTO `t_role_permission` VALUES ('178', '46', '16');
INSERT INTO `t_role_permission` VALUES ('179', '46', '14');
INSERT INTO `t_role_permission` VALUES ('180', '46', '8');
INSERT INTO `t_role_permission` VALUES ('181', '46', '4');
INSERT INTO `t_role_permission` VALUES ('182', '47', '15');
INSERT INTO `t_role_permission` VALUES ('183', '48', '17');
INSERT INTO `t_role_permission` VALUES ('184', '48', '16');
INSERT INTO `t_role_permission` VALUES ('185', '48', '15');
INSERT INTO `t_role_permission` VALUES ('186', '48', '14');
INSERT INTO `t_role_permission` VALUES ('187', '48', '9');
INSERT INTO `t_role_permission` VALUES ('188', '48', '6');
INSERT INTO `t_role_permission` VALUES ('189', '49', '17');
INSERT INTO `t_role_permission` VALUES ('190', '49', '16');
INSERT INTO `t_role_permission` VALUES ('191', '49', '15');
INSERT INTO `t_role_permission` VALUES ('192', '49', '14');
INSERT INTO `t_role_permission` VALUES ('193', '49', '9');
INSERT INTO `t_role_permission` VALUES ('194', '49', '6');
INSERT INTO `t_role_permission` VALUES ('195', '49', '4');
INSERT INTO `t_role_permission` VALUES ('196', '50', '3');
INSERT INTO `t_role_permission` VALUES ('197', '50', '6');
INSERT INTO `t_role_permission` VALUES ('198', '50', '9');
INSERT INTO `t_role_permission` VALUES ('199', '50', '14');
INSERT INTO `t_role_permission` VALUES ('200', '50', '15');
INSERT INTO `t_role_permission` VALUES ('201', '50', '16');
INSERT INTO `t_role_permission` VALUES ('202', '50', '17');
INSERT INTO `t_role_permission` VALUES ('203', '51', '4');
INSERT INTO `t_role_permission` VALUES ('204', '51', '6');
INSERT INTO `t_role_permission` VALUES ('205', '51', '9');
INSERT INTO `t_role_permission` VALUES ('206', '51', '14');
INSERT INTO `t_role_permission` VALUES ('207', '51', '15');
INSERT INTO `t_role_permission` VALUES ('208', '51', '16');
INSERT INTO `t_role_permission` VALUES ('209', '51', '17');
INSERT INTO `t_role_permission` VALUES ('210', '52', '4');
INSERT INTO `t_role_permission` VALUES ('211', '52', '6');
INSERT INTO `t_role_permission` VALUES ('212', '52', '9');
INSERT INTO `t_role_permission` VALUES ('213', '52', '14');
INSERT INTO `t_role_permission` VALUES ('214', '52', '15');
INSERT INTO `t_role_permission` VALUES ('215', '52', '16');
INSERT INTO `t_role_permission` VALUES ('216', '52', '17');
INSERT INTO `t_role_permission` VALUES ('217', '53', '4');
INSERT INTO `t_role_permission` VALUES ('218', '53', '6');
INSERT INTO `t_role_permission` VALUES ('219', '53', '9');
INSERT INTO `t_role_permission` VALUES ('220', '53', '14');
INSERT INTO `t_role_permission` VALUES ('221', '53', '15');
INSERT INTO `t_role_permission` VALUES ('222', '53', '16');
INSERT INTO `t_role_permission` VALUES ('223', '53', '17');
INSERT INTO `t_role_permission` VALUES ('224', '54', '13');
INSERT INTO `t_role_permission` VALUES ('225', '55', '4');
INSERT INTO `t_role_permission` VALUES ('226', '55', '6');
INSERT INTO `t_role_permission` VALUES ('227', '55', '9');
INSERT INTO `t_role_permission` VALUES ('228', '55', '14');
INSERT INTO `t_role_permission` VALUES ('229', '55', '15');
INSERT INTO `t_role_permission` VALUES ('230', '55', '16');
INSERT INTO `t_role_permission` VALUES ('231', '55', '17');

-- ----------------------------
-- Table structure for t_role_system
-- ----------------------------
DROP TABLE IF EXISTS `t_role_system`;
CREATE TABLE `t_role_system` (
  `ROLE_SYSTEM_ID` int(2) NOT NULL AUTO_INCREMENT COMMENT '自动生成、自动增长',
  `ROLE_SYSTEM_NAME` varchar(20) DEFAULT NULL COMMENT '角色体系名称',
  PRIMARY KEY (`ROLE_SYSTEM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_system
-- ----------------------------
INSERT INTO `t_role_system` VALUES ('1', '组织结构');
INSERT INTO `t_role_system` VALUES ('2', '廉政体系');

-- ----------------------------
-- Table structure for t_status
-- ----------------------------
DROP TABLE IF EXISTS `t_status`;
CREATE TABLE `t_status` (
  `STATUS_ID` int(1) NOT NULL AUTO_INCREMENT COMMENT '状态编号',
  `STATUS_NAME` varchar(10) DEFAULT NULL COMMENT '状态名称',
  PRIMARY KEY (`STATUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_status
-- ----------------------------
INSERT INTO `t_status` VALUES ('1', '进行中');
INSERT INTO `t_status` VALUES ('2', '已办结');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `USER_ID` int(5) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `DEP_ID` int(4) DEFAULT NULL COMMENT '部门编号',
  `DEP_HEAD_ID` int(4) DEFAULT NULL COMMENT '部门领导ID',
  `OFFICE_ID` int(4) DEFAULT NULL COMMENT '部门编号',
  `USER_REALNAME` varchar(8) DEFAULT NULL COMMENT '真实姓名',
  `USER_NAME` varchar(8) DEFAULT NULL COMMENT '用户姓名',
  `USER_PASSWORD` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `USER_SEX` char(1) DEFAULT NULL COMMENT '性别（0-女 1-男）',
  `USER_BIRTHDAY` date DEFAULT NULL COMMENT '用户生日',
  `USER_MOBILE` varchar(14) DEFAULT NULL COMMENT '用户手机号',
  `USER_EMAIL` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `USER_WORK_PHONE` varchar(20) DEFAULT NULL COMMENT '工作电话',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `VALID` int(2) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('55', '0', '0', '0', '管理员', 'admin', '202cb962ac59075b964b07152d234b70', '1', '2018-05-01', '17600363696', 'guanliyuan@xxx.com', '0314-0000000', '2018-09-11 14:30:49', '1');
INSERT INTO `t_user` VALUES ('124', '1', '0', '0', '傅海旺', 'fuhw', '202cb962ac59075b964b07152d234b70', '1', '2018-08-02', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 10:54:38', '1');
INSERT INTO `t_user` VALUES ('125', '1', '0', '0', '王国辉', 'wanggh', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 10:55:12', '1');
INSERT INTO `t_user` VALUES ('126', '1', '0', '0', '刁志', 'diaoz', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 10:55:57', '1');
INSERT INTO `t_user` VALUES ('127', '1', '0', '0', '杨文东', 'yangwd', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 10:57:00', '1');
INSERT INTO `t_user` VALUES ('128', '1', '0', '0', '王志一', 'wangzy', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 10:57:45', '1');
INSERT INTO `t_user` VALUES ('129', '1', '0', '0', '魏民', 'weim', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 10:58:26', '1');
INSERT INTO `t_user` VALUES ('130', '1', '0', '0', '郭建平', 'guojp', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 10:58:55', '1');
INSERT INTO `t_user` VALUES ('131', '1', '0', '0', '陈磊', 'chenl', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 10:59:41', '1');
INSERT INTO `t_user` VALUES ('132', '1', '0', '0', '景联华', 'jinglh', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 11:00:37', '1');
INSERT INTO `t_user` VALUES ('133', '1', '0', '0', '王钧', 'wangj', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 11:01:09', '1');
INSERT INTO `t_user` VALUES ('134', '1', '0', '0', '王天一', 'wangty', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 11:01:38', '1');
INSERT INTO `t_user` VALUES ('135', '1', '4', '0', '董智慧', 'dongzh', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 11:02:06', '1');
INSERT INTO `t_user` VALUES ('136', '1', '57', '0', '薛文忠', 'xuewz', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 11:02:52', '1');
INSERT INTO `t_user` VALUES ('137', '1', '0', '0', '王东', 'wangd', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 11:03:27', '1');
INSERT INTO `t_user` VALUES ('139', '1', '0', '0', '高武元', 'gaowy', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 11:04:34', '1');
INSERT INTO `t_user` VALUES ('140', '1', '0', '0', '李晓松', 'lixs', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 11:05:11', '1');
INSERT INTO `t_user` VALUES ('141', '1', '1', '0', '白春龙', 'baicl', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 13:54:59', '1');
INSERT INTO `t_user` VALUES ('142', '2', '2', '0', '魏华', 'weih', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 14:12:41', '1');
INSERT INTO `t_user` VALUES ('143', '2', '3', '0', '成世前', 'chengsq', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 14:15:28', '1');
INSERT INTO `t_user` VALUES ('144', '2', '3', '0', '湛立峰', 'zhanlf', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 14:16:20', '1');
INSERT INTO `t_user` VALUES ('145', '2', '3', '0', '赵鹏', 'zhaop', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 14:16:58', '1');
INSERT INTO `t_user` VALUES ('147', '2', '0', '1', '孙丹丹', 'sundd', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '17600363696', '000000@c.com', '0314-0000000', '2018-10-08 14:19:27', '1');
INSERT INTO `t_user` VALUES ('148', '2', '0', '1', '刘健', 'liuj', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 14:21:44', '1');
INSERT INTO `t_user` VALUES ('149', '2', '0', '1', '李川', 'lic', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 14:22:30', '1');
INSERT INTO `t_user` VALUES ('150', '2', '0', '2', '程军', 'chengj', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 14:23:05', '1');
INSERT INTO `t_user` VALUES ('151', '2', '0', '2', '李玉龙', 'liyl', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 14:23:41', '1');
INSERT INTO `t_user` VALUES ('152', '2', '0', '2', '李英杰', 'liyj', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-08 14:24:21', '1');
INSERT INTO `t_user` VALUES ('156', '2', '0', '1', '张爱民', 'zhangam', '202cb962ac59075b964b07152d234b70', '1', '2018-10-08', '13000000000', '000000@c.com', '0314-0000000', '2018-10-15 11:17:57', '1');
INSERT INTO `t_user` VALUES ('157', '16', '56', '0', '池贺鹏', 'chihp', '202cb962ac59075b964b07152d234b70', '1', '2018-08-07', '13000000000', '789465@qq.com', '0314-56784654', '2018-10-15 11:24:39', '1');

-- ----------------------------
-- Table structure for t_user_job
-- ----------------------------
DROP TABLE IF EXISTS `t_user_job`;
CREATE TABLE `t_user_job` (
  `USER_JOB_ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '用户职位编号',
  `JOB_ID` int(4) DEFAULT NULL COMMENT '职位编号',
  `USER_ID` int(4) DEFAULT NULL COMMENT '用户编号',
  PRIMARY KEY (`USER_JOB_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_job
-- ----------------------------
INSERT INTO `t_user_job` VALUES ('16', '1', '55');
INSERT INTO `t_user_job` VALUES ('166', '0', '124');
INSERT INTO `t_user_job` VALUES ('167', '0', '125');
INSERT INTO `t_user_job` VALUES ('168', '0', '126');
INSERT INTO `t_user_job` VALUES ('169', '0', '127');
INSERT INTO `t_user_job` VALUES ('170', '0', '128');
INSERT INTO `t_user_job` VALUES ('171', '0', '129');
INSERT INTO `t_user_job` VALUES ('172', '0', '130');
INSERT INTO `t_user_job` VALUES ('173', '0', '131');
INSERT INTO `t_user_job` VALUES ('174', '0', '132');
INSERT INTO `t_user_job` VALUES ('175', '0', '133');
INSERT INTO `t_user_job` VALUES ('176', '0', '134');
INSERT INTO `t_user_job` VALUES ('177', '0', '135');
INSERT INTO `t_user_job` VALUES ('178', '0', '136');
INSERT INTO `t_user_job` VALUES ('179', '0', '137');
INSERT INTO `t_user_job` VALUES ('181', '0', '139');
INSERT INTO `t_user_job` VALUES ('182', '0', '140');
INSERT INTO `t_user_job` VALUES ('188', '0', '141');
INSERT INTO `t_user_job` VALUES ('189', '-1', '136');
INSERT INTO `t_user_job` VALUES ('190', '-1', '142');
INSERT INTO `t_user_job` VALUES ('191', '-1', '143');
INSERT INTO `t_user_job` VALUES ('192', '-1', '144');
INSERT INTO `t_user_job` VALUES ('193', '-1', '145');
INSERT INTO `t_user_job` VALUES ('194', '1', '146');
INSERT INTO `t_user_job` VALUES ('195', '2', '147');
INSERT INTO `t_user_job` VALUES ('196', '12', '148');
INSERT INTO `t_user_job` VALUES ('197', '12', '149');
INSERT INTO `t_user_job` VALUES ('198', '3', '150');
INSERT INTO `t_user_job` VALUES ('199', '4', '151');
INSERT INTO `t_user_job` VALUES ('200', '13', '152');
INSERT INTO `t_user_job` VALUES ('201', '0', '153');
INSERT INTO `t_user_job` VALUES ('202', '0', '154');
INSERT INTO `t_user_job` VALUES ('203', '27', '155');
INSERT INTO `t_user_job` VALUES ('204', '31', '155');
INSERT INTO `t_user_job` VALUES ('205', '1', '156');
INSERT INTO `t_user_job` VALUES ('206', '-1', '157');
INSERT INTO `t_user_job` VALUES ('207', '-1', '141');
INSERT INTO `t_user_job` VALUES ('208', '-1', '135');

-- ----------------------------
-- Table structure for t_user_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_user_permission`;
CREATE TABLE `t_user_permission` (
  `user_permisson_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '用户权限编号',
  `user_id` int(5) DEFAULT NULL COMMENT '用户编号',
  `permission_id` int(5) DEFAULT NULL COMMENT '权限编号',
  PRIMARY KEY (`user_permisson_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_permission
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `USER_ROLE_ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '用户角色编号',
  `USER_ID` int(4) DEFAULT NULL COMMENT '用户编号',
  `ROLE_ID` int(4) DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`USER_ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('79', '55', '29');
INSERT INTO `t_user_role` VALUES ('204', '124', '53');
INSERT INTO `t_user_role` VALUES ('205', '125', '53');
INSERT INTO `t_user_role` VALUES ('206', '126', '53');
INSERT INTO `t_user_role` VALUES ('207', '127', '53');
INSERT INTO `t_user_role` VALUES ('208', '128', '53');
INSERT INTO `t_user_role` VALUES ('209', '129', '53');
INSERT INTO `t_user_role` VALUES ('210', '130', '53');
INSERT INTO `t_user_role` VALUES ('211', '131', '53');
INSERT INTO `t_user_role` VALUES ('212', '132', '53');
INSERT INTO `t_user_role` VALUES ('213', '133', '53');
INSERT INTO `t_user_role` VALUES ('214', '134', '53');
INSERT INTO `t_user_role` VALUES ('215', '135', '53');
INSERT INTO `t_user_role` VALUES ('216', '136', '53');
INSERT INTO `t_user_role` VALUES ('217', '137', '53');
INSERT INTO `t_user_role` VALUES ('219', '139', '53');
INSERT INTO `t_user_role` VALUES ('220', '140', '53');
INSERT INTO `t_user_role` VALUES ('221', '141', '53');
INSERT INTO `t_user_role` VALUES ('222', '142', '50');
INSERT INTO `t_user_role` VALUES ('223', '143', '50');
INSERT INTO `t_user_role` VALUES ('224', '144', '50');
INSERT INTO `t_user_role` VALUES ('225', '145', '50');
INSERT INTO `t_user_role` VALUES ('226', '146', '51');
INSERT INTO `t_user_role` VALUES ('227', '147', '52');
INSERT INTO `t_user_role` VALUES ('228', '148', '55');
INSERT INTO `t_user_role` VALUES ('229', '149', '55');
INSERT INTO `t_user_role` VALUES ('230', '150', '51');
INSERT INTO `t_user_role` VALUES ('231', '150', '54');
INSERT INTO `t_user_role` VALUES ('232', '151', '52');
INSERT INTO `t_user_role` VALUES ('233', '152', '55');
INSERT INTO `t_user_role` VALUES ('234', '153', '51');
INSERT INTO `t_user_role` VALUES ('235', '154', '51');
INSERT INTO `t_user_role` VALUES ('236', '155', '52');
INSERT INTO `t_user_role` VALUES ('237', '156', '51');
INSERT INTO `t_user_role` VALUES ('238', '157', '49');
