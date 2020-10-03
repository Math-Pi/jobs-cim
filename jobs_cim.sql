/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50640
Source Host           : localhost:3306
Source Database       : jobs_cim

Target Server Type    : MYSQL
Target Server Version : 50640
File Encoding         : 65001

Date: 2020-09-13 15:12:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `base_dict`
-- ----------------------------
DROP TABLE IF EXISTS `base_dict`;
CREATE TABLE `base_dict` (
  `dict_id` int(32) NOT NULL COMMENT '数据字典id(主键)',
  `dict_type_code` varchar(10) NOT NULL COMMENT '数据字典类别代码',
  `dict_type_name` varchar(50) NOT NULL COMMENT '数据字典类别名称',
  `dict_item_name` varchar(50) NOT NULL COMMENT '数据字典项目名称',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of base_dict
-- ----------------------------
INSERT INTO `base_dict` VALUES ('6', '002', '招聘信息来源', 'BOSS直聘');
INSERT INTO `base_dict` VALUES ('7', '002', '招聘信息来源', '智联招聘');
INSERT INTO `base_dict` VALUES ('8', '003', '公司性质', '合资');
INSERT INTO `base_dict` VALUES ('9', '003', '公司性质', '国企');
INSERT INTO `base_dict` VALUES ('10', '003', '公司性质', '民企');
INSERT INTO `base_dict` VALUES ('12', '004', '年营业额', '1-10万');
INSERT INTO `base_dict` VALUES ('13', '004', '年营业额', '10-20万');
INSERT INTO `base_dict` VALUES ('14', '004', '年营业额', '20-50万');
INSERT INTO `base_dict` VALUES ('15', '004', '年营业额', '50-100万');
INSERT INTO `base_dict` VALUES ('16', '004', '年营业额', '100-500万');
INSERT INTO `base_dict` VALUES ('17', '004', '年营业额', '500-1000万');
INSERT INTO `base_dict` VALUES ('28', '005', '公司人数', '0-20人');
INSERT INTO `base_dict` VALUES ('29', '005', '公司人数', '20-99人');
INSERT INTO `base_dict` VALUES ('30', '005', '公司人数', '100-499人');
INSERT INTO `base_dict` VALUES ('31', '005', '公司人数', '500-999人');
INSERT INTO `base_dict` VALUES ('32', '005', '公司人数', '1000-9999人');
INSERT INTO `base_dict` VALUES ('33', '005', '公司人数', '10000人以上');
INSERT INTO `base_dict` VALUES ('35', '010', '招聘薪酬', '1-3k');
INSERT INTO `base_dict` VALUES ('36', '010', '招聘薪酬', '3-5k');
INSERT INTO `base_dict` VALUES ('37', '010', '招聘薪酬', '5-10k');
INSERT INTO `base_dict` VALUES ('38', '010', '招聘薪酬', '10-20k');
INSERT INTO `base_dict` VALUES ('39', '010', '招聘薪酬', '20k以上');
INSERT INTO `base_dict` VALUES ('40', '011', '所属行业', '互联网');
INSERT INTO `base_dict` VALUES ('41', '011', '所属行业', '电子商务');
INSERT INTO `base_dict` VALUES ('42', '011', '所属行业', '教育培训');
INSERT INTO `base_dict` VALUES ('44', '011', '所属行业', '对外贸易');
INSERT INTO `base_dict` VALUES ('45', '011', '所属行业', '酒店旅游');
INSERT INTO `base_dict` VALUES ('46', '011', '所属行业', '房地产');

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `com_id` int(30) NOT NULL AUTO_INCREMENT,
  `com_name` varchar(30) NOT NULL,
  `com_principal` varchar(30) DEFAULT NULL,
  `com_source` varchar(30) DEFAULT NULL,
  `com_industry` varchar(30) DEFAULT NULL,
  `com_people` varchar(30) DEFAULT NULL,
  `com_money` varchar(30) DEFAULT NULL,
  `com_education` varchar(30) DEFAULT NULL,
  `com_address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`com_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '腾讯', '小邓', '6', '40', '33', '38', '本科', '广州-海珠区-赤岗');
INSERT INTO `company` VALUES ('19', '九九智付', '小孙', '6', '40', '30', '37', '本科', '广州-荔湾区-东塱');
INSERT INTO `company` VALUES ('20', '触宝科技', '小盛', '6', '40', '30', '37', '本科', '广州-海珠区-琶洲');
INSERT INTO `company` VALUES ('21', '汇梁科技', '小钟', '7', '40', '31', '36', '本科', '广州-天河区-猎德');
INSERT INTO `company` VALUES ('22', '昊链科技', '小卢', '6', '40', '30,100-499', '35', '本科', '广州-黄埔区-科学城');
INSERT INTO `company` VALUES ('23', '揽众科技', '小余', '6', '40', '30', '36', '本科', '广州-海珠区-琶洲');
INSERT INTO `company` VALUES ('24', '佳都科技', '小胡', '6', '40', '32', '36', '本科', '广州-天河区-小新塘');
INSERT INTO `company` VALUES ('25', '飞羽信息科技', '小纪', '6', '40', '30', '37', '本科', '广州-天河区-天河北');
INSERT INTO `company` VALUES ('26', '暗物智能科技', '小邱', '6', '40', '30', '37', '本科', '广州-南沙区-金州');
INSERT INTO `company` VALUES ('27', '早安科技', 'Betsy', '6', '40', '29', '37', '本科', '广州-天河区-猎德');
INSERT INTO `company` VALUES ('28', '软通动力', '小熊', '6', '40', '33', '37', '本科', '广州-天河区-时尚天河');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(50) NOT NULL COMMENT '用户名称',
  `user_password` varchar(32) NOT NULL COMMENT '用户密码',
  `user_state` int(1) NOT NULL COMMENT '1:正常,0:暂停',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '123', '1');
