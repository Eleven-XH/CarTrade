/*
Navicat MySQL Data Transfer

Source Server         : 111
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : db_cartrade

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2025-04-03 18:24:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_affiche`
-- ----------------------------
DROP TABLE IF EXISTS `tb_affiche`;
CREATE TABLE `tb_affiche` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `content` text,
  `issueTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_affiche
-- ----------------------------
INSERT INTO `tb_affiche` VALUES ('9', '购车有礼了，自即日起退出优惠', '本商城大部分商品优惠活动', '2025-04-30 11:10:07');
INSERT INTO `tb_affiche` VALUES ('10', '购车有礼了', '因业务量不断的扩大，本商城招聘各地的代理商', '2025-04-30 11:14:16');
INSERT INTO `tb_affiche` VALUES ('11', '春节到了购车有礼了', '春节将近，本商城的所有员工祝所有顾客，节日快乐，谢谢', '2025-04-30 11:14:16');
INSERT INTO `tb_affiche` VALUES ('12', '五一节购车有礼了', '五一节即将来临，本商城将给员工发放500员奖金', '2025-04-30 11:14:16');
INSERT INTO `tb_affiche` VALUES ('13', '父亲节购车特惠活动', '祝天下的父亲节日快乐', '2025-04-30 11:14:16');
INSERT INTO `tb_affiche` VALUES ('14', '购车有礼了', '公告内容', '2025-04-30 11:14:16');
INSERT INTO `tb_affiche` VALUES ('15', '价格战已经打响', '大部分商城的价格战已经开始了，我们的商城已经开始了', '2025-04-30 11:14:16');
INSERT INTO `tb_affiche` VALUES ('16', '母亲节购车有礼了', '祝天下的母亲节日快乐', '2025-04-30 11:14:16');

-- ----------------------------
-- Table structure for `tb_bigtype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_bigtype`;
CREATE TABLE `tb_bigtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_bigtype
-- ----------------------------
INSERT INTO `tb_bigtype` VALUES ('1', '越野车', '2025-04-01 00:00:00');
INSERT INTO `tb_bigtype` VALUES ('2', '三厢汽车', '2025-04-02 00:00:00');
INSERT INTO `tb_bigtype` VALUES ('3', '货车', '2025-04-03 00:00:00');
INSERT INTO `tb_bigtype` VALUES ('4', '面包车', '2025-04-04 00:00:00');
INSERT INTO `tb_bigtype` VALUES ('5', '二厢汽车', '2025-04-05 00:00:00');
INSERT INTO `tb_bigtype` VALUES ('6', '电动车', '2025-04-06 00:00:00');
INSERT INTO `tb_bigtype` VALUES ('7', '公交车', '2025-04-07 00:00:00');

-- ----------------------------
-- Table structure for `tb_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigId` int(11) DEFAULT NULL,
  `smallId` int(11) DEFAULT NULL,
  `goodsName` varchar(50) DEFAULT NULL,
  `goodsFrom` varchar(50) DEFAULT NULL,
  `introduce` text,
  `createTime` datetime DEFAULT NULL,
  `nowPrice` float DEFAULT NULL,
  `freePrice` float DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `pirture` varchar(50) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('1', '5', '5', 'BMW X家族，为开创者而生', 'BMW有限公司制作', '以探索之名，发现新丝绸之路，用镜头记录沿途的自然、历史、和人文故事！', '2025-04-30 20:31:30', '100', '0', '2', 'goodsPicture/1195000722234.jpg', '0');
INSERT INTO `tb_goods` VALUES ('2', '4', '6', '大众汽车，动力十足', 'BMW有限公司制作', '以探索之名，发现新丝绸之路，用镜头记录沿途的自然、历史、和人文故事！', '2025-04-30 20:41:43', '500', '0', '0', 'goodsPicture/1195000845828.jpg', '0');
INSERT INTO `tb_goods` VALUES ('3', '3', '1', '好看大众汽车，动力十足', 'BMW有限公司制作', '以探索之名，发现新丝绸之路，用镜头记录沿途的自然、历史、和人文故事！', '2025-04-30 20:41:43', '1200', '0', '0', 'goodsPicture/1195001047171.jpg', '0');
INSERT INTO `tb_goods` VALUES ('4', '3', '1', '大众汽车，动力十足', 'BMW有限公司制作', '以探索之名，发现新丝绸之路，用镜头记录沿途的自然、历史、和人文故事！', '2025-04-30 20:41:43', '1500', '0', '1', 'goodsPicture/1195001141953.jpg', '0');
INSERT INTO `tb_goods` VALUES ('5', '2', '2', '大众汽车，动力十足', 'BMW有限公司制作', '以探索之名，发现新丝绸之路，用镜头记录沿途的自然、历史、和人文故事！', '2025-04-30 20:41:43', '100', '0', '1', 'goodsPicture/1195001276796.jpg', '0');
INSERT INTO `tb_goods` VALUES ('6', '1', '4', '大众汽车，动力十足', 'BMW有限公司制作', '以探索之名，发现新丝绸之路，用镜头记录沿途的自然、历史、和人文故事！', '2025-04-30 20:41:43', '9000', '0', '2', 'goodsPicture/1195001507156.jpg', '0');
INSERT INTO `tb_goods` VALUES ('7', '1', '4', '大众汽车，动力十足', 'BMW有限公司制作', '以探索之名，发现新丝绸之路，用镜头记录沿途的自然、历史、和人文故事！', '2025-04-30 20:41:43', '4000', '0', '4', 'goodsPicture/1195001612265.jpg', '0');
INSERT INTO `tb_goods` VALUES ('8', '1', '3', '大众汽车，动力十足', 'BMW有限公司制作', '以探索之名，发现新丝绸之路，用镜头记录沿途的自然、历史、和人文故事！', '2025-04-30 20:41:43', '1000', '0', '6', 'goodsPicture/1195001711750.jpg', '0');
INSERT INTO `tb_goods` VALUES ('9', '1', '3', '大众汽车，动力十足', 'BMW有限公司制作', '以探索之名，发现新丝绸之路，用镜头记录沿途的自然、历史、和人文故事！', '2025-04-30 20:41:43', '2000', '12', '6', 'goodsPicture/1195001840843.jpg', '1');

-- ----------------------------
-- Table structure for `tb_link`
-- ----------------------------
DROP TABLE IF EXISTS `tb_link`;
CREATE TABLE `tb_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `linkName` varchar(50) DEFAULT NULL,
  `linkAddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_link
-- ----------------------------
INSERT INTO `tb_link` VALUES ('2', '特斯拉优惠网', 'http://www.zhongyi**.com');
INSERT INTO `tb_link` VALUES ('3', '宝马公司', 'http://www.dayong**.com');
INSERT INTO `tb_link` VALUES ('4', '宝马公司', 'http://www.pengbin***.com');
INSERT INTO `tb_link` VALUES ('5', '宝马公司', 'http://www.chunhua***.com');
INSERT INTO `tb_link` VALUES ('6', '宝马公司', 'http://www.chunhua***.com');
INSERT INTO `tb_link` VALUES ('7', '宝马公司', 'http://www.chunhua***.com');

-- ----------------------------
-- Table structure for `tb_manager`
-- ----------------------------
DROP TABLE IF EXISTS `tb_manager`;
CREATE TABLE `tb_manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sign` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_manager
-- ----------------------------
INSERT INTO `tb_manager` VALUES ('1', 'admin', '1', 'wolf', '1');
INSERT INTO `tb_manager` VALUES ('2', 'aaa', '1', '郭', '0');
INSERT INTO `tb_manager` VALUES ('3', 'bbb', '1', '杨', '0');

-- ----------------------------
-- Table structure for `tb_member`
-- ----------------------------
DROP TABLE IF EXISTS `tb_member`;
CREATE TABLE `tb_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `reallyName` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `question` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_member
-- ----------------------------
INSERT INTO `tb_member` VALUES ('1', '00', '1', '00', '1', '职员', 'm*@*t.com', '你好', '你好');
INSERT INTO `tb_member` VALUES ('2', 'admin', '1', 'wolf', '25', '测试用户', 'w*@*3.com', '我最喜欢干的事情是：', '吃');
INSERT INTO `tb_member` VALUES ('3', '张三', '1', '张三', '1', '', 'wbd@126.com', '你是？', '吃的发达');

-- ----------------------------
-- Table structure for `tb_order`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `reallyName` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `setMoney` varchar(50) DEFAULT NULL,
  `post` varchar(50) DEFAULT NULL,
  `bz` text,
  `sign` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('1', '1196074670468', '00', '00', '人民大街', '121****', '现金支付', '特快专递', '急需', '1', '2013-04-01 00:00:00');
INSERT INTO `tb_order` VALUES ('2', '1372600781205', '张三', '张三', '21', '21', '邮政付款', '普通邮寄', '2121', '0', '2025-04-30 21:59:48');
INSERT INTO `tb_order` VALUES ('3', '1419353846312', 'admin', 'wolf', '111', '111', '邮政付款', '普通邮寄', '111', '0', '2025-04-24 00:57:46');

-- ----------------------------
-- Table structure for `tb_orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tb_orderdetail`;
CREATE TABLE `tb_orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderNumber` varchar(50) DEFAULT NULL,
  `goodsId` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_orderdetail
-- ----------------------------
INSERT INTO `tb_orderdetail` VALUES ('1', '1196074670468', '1', '100', '2');
INSERT INTO `tb_orderdetail` VALUES ('2', '1196074670468', '4', '1500', '1');
INSERT INTO `tb_orderdetail` VALUES ('3', '1372597801689', '8', '1000', '2');
INSERT INTO `tb_orderdetail` VALUES ('4', '1372597801689', '7', '4000', '1');
INSERT INTO `tb_orderdetail` VALUES ('5', '1372597912451', '8', '1000', '1');
INSERT INTO `tb_orderdetail` VALUES ('6', '1372598157982', '9', '1000', '1');
INSERT INTO `tb_orderdetail` VALUES ('7', '1372598875715', '9', '1000', '1');
INSERT INTO `tb_orderdetail` VALUES ('8', '1372600684049', '9', '1000', '1');
INSERT INTO `tb_orderdetail` VALUES ('9', '1372600781205', '9', '1000', '1');
INSERT INTO `tb_orderdetail` VALUES ('10', '1419353846312', '9', '1000', '1');
INSERT INTO `tb_orderdetail` VALUES ('11', '1419353846312', '8', '1000', '1');
INSERT INTO `tb_orderdetail` VALUES ('12', '1419353846312', '7', '4000', '1');

-- ----------------------------
-- Table structure for `tb_smalltype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_smalltype`;
CREATE TABLE `tb_smalltype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bigId` int(11) DEFAULT NULL,
  `smallName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_smalltype
-- ----------------------------
INSERT INTO `tb_smalltype` VALUES ('1', '3', '大众', '2025-04-01 00:00:00');
INSERT INTO `tb_smalltype` VALUES ('2', '2', '宝马', '2025-04-02 00:00:00');
INSERT INTO `tb_smalltype` VALUES ('3', '1', '别克', '2025-04-03 00:00:00');
INSERT INTO `tb_smalltype` VALUES ('4', '1', '福特', '2025-04-04 00:00:00');
INSERT INTO `tb_smalltype` VALUES ('5', '5', 'JEEP', '2025-04-05 00:00:00');
INSERT INTO `tb_smalltype` VALUES ('6', '4', '奥迪', '2025-04-06 00:00:00');
INSERT INTO `tb_smalltype` VALUES ('7', '6', '特斯拉', '2025-04-07 00:00:00');
INSERT INTO `tb_smalltype` VALUES ('8', '7', '明星', '2025-04-08 00:00:00');
