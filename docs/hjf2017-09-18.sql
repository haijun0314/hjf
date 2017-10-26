/*
Navicat MySQL Data Transfer

Source Server         : 阿里云DB【非自装】
Source Server Version : 50715
Source Host           : rm-uf6af9p7t2v01rw29o.mysql.rds.aliyuncs.com:3306
Source Database       : hjf

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-09-18 14:01:14
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `accountId` int(20) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `userToken` varchar(255) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL COMMENT '状态0.正常1.暂停',
  `accountName` varchar(45) NOT NULL COMMENT '用户名称',
  `telephone` varchar(11) NOT NULL COMMENT '电话号码',
  `password` varchar(20) NOT NULL COMMENT '账号密码',
  `registTime` datetime DEFAULT NULL COMMENT '注册时间',
  `loginTime` datetime DEFAULT NULL COMMENT '登录时间',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `headPic` mediumtext COMMENT '头像地址',
  `dynamic` varchar(145) DEFAULT NULL COMMENT '当前动态',
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `delFlag` char(1) DEFAULT '0' COMMENT '【0 没删除  1删除 】',
  `cityName` varchar(255) DEFAULT NULL,
  `cityNameFull` varchar(255) DEFAULT NULL,
  `cityCode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `level` char(2) DEFAULT '1' COMMENT '会员等级【 1、普通  2、铁牌 3 银牌  4  金牌 5 钻石】',
  `sex` char(2) DEFAULT NULL COMMENT '0男 1女',
  `birthday` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('85', 'a9173d8a7b26c99298838fcd14662c0000248b0e1f33f208', null, '0', '李海军', '15010123237', '4b7e1ddb9ad9227b', '2015-03-17 09:31:20', null, '22', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEoAAABKCAYAAAAc0MJxAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAACRdJREFUeNrknGlsVFUUx0+3mUJXaEtLENrSsFhRhKZAVCqoCS4RWogLBjAalSVxwegHl8T4weWDERWjYuKGC7ijCMGANMElSAWDUqga6ULZutNOW2a66Pnfd1/nMfOmneG9N/M6PeQfhmHmvnt/79zzzj1z34t5ZMMJCrM5WMWsmawZrHzWJaxMVrIUzCXVxKpnVbOOsA6zKliecHY6PkzHmc5awlrIuoaVFMR3VGg5EqjWOlk/scpZ37CqhjOosay7WCtYc01uG6AXSb3I+pX1EesTVosVg4m1oE1MpTdYmNMbLYCkZ3PlsXDMN2UfbAsKU2QT6y/WWtZoCr/hmGtkH9CX8XYChTYeZh1jPcBKoMhbguxLlexbXKRBwcV/Yb3CSif7Wars289Gp6MRUGWsQ2GKQWbEMPR1WThB4Tsvs76yqRcFMvT1C9aGi5mKoYJyyEvwehq+9gjrYzkWS0ClsHay7qDhb3fIsaSYDQr0t7Gup+gxjOW7YNOYYEBhPr/Puo6iz0pYW4KJWcGAQuBeTtFri+UYDYHCOu0hin7DGFdeLKgpct00UgxjnRoqKLy/mby1oZFgqEh8EIhJoDLLfax5kex1Rlo8lcxKppyMBOrv/4+a23qp9qyHas94qLGll/6z5rAY8/1yQT0kqCzW85GENCErgdYuy6KkRM3JzSW6Wr7scvdT3WkFWg2rjtV1vt+swz8nVx2NQ4F6FifUVpB8aynOWJqelygEO8/g3trWRLWnTakOZ0gG67RvxvjUzCewjoea3lsFqZ+dZNPXjRQbG0MZ6fGUm+2g3BwHjRvrf35NhoVGJrNOBvKox+wE6Y2vGunferfygVqlVqJ61KTxCrSFRSnkTIihRH5vTWmmWbAcksV6vaseXO4BW0LyMcSoqprz9P3+duFx7h4ltKuwcsebcq5Xa0OQFtSdFIHybaiQfK36lMcqWKO0KxItqJXDDdJQsDBFDdoK3xiF393m2g1S6fxUyp/gFK/bOvroQGUnVda4B4W1uixrIGbBq47xFDVgcyWbKhV5md0gPbEqm64tSqVJOU6hK6aMpvtKs2j5DemDelb5bx3e1MucWFWmnXo32c2Txo1NILenn74ub6VPdjVTQ0uP+L85M5LpnlvGBmy/RnPFyzMH1E0qqMRwTbtgY9K8y5Ul5pd7W2nf4U6qqOqmjZ81UrurT7wP7wrkWScavKAmjnNQjPFug43ocVE4cqdQArfToXym7mzPwHsuXqLUnPZ+Fp51WZ7TP3XgzzW09ir5Fh8ra4zhXQNgMxs9mmW3qxumHGzpAq/XJPN3p+UmCq9Sp+HikvQA08+tmX5OM4YgQBXaLQXY/6dL/D2Vway/M0vErMdXZAtPA4R3tzeL/0ccy9bxGG1mblJAL0Tv8+yWJ237sZ3qziifwRUPV7/U5DjhSZ//0EZneWqpXpWZ5l/ubmjrHXg9Lt2UDTv5aGWiHZPJDVsbqWRmEhVdqiwWqk+6aU+FS8Sq/JwE4U3Ce870+H9ZU6yKi4sxYzgTASozEpAWzUmhwslKmeRMUw/tPegSnqI1XPEgWPH0UWL6VdV008ypCrwDRxRwWiu4xElrlnqHdKrRlGpCZjwFt/vNNEgIyg/enjXgEer0wlUMOZMKxteWXTdGxCh8DvbHP120ZU+bH6S1DCkuVvGizu5+Kj/kMmNYSQCVEk5PuvUabzK58+dz4r3ri5UYVLZwjBjsezsu3DSHgP3hzmaaMlG5gv1zwu23lPGDxJ72Ji9pms/1mjG05PhwxyTVIzBwdbCH/uqmp+/NER6DZLJkpnvAsxCnABDehiCvZ7qQ+NgnG3pMmykYVYfh2mlqPHd0aEjaS7k2CCPOnG3x/htgELAhvFbf00sFwgEJXcTIOo22cm1RMiWNGvrqpg3WmILaZDKbpyMu+eplv5STzWqGiVgEg0f5BvswQRJN4xQhe8sx0kpqkjeX2fd7x6ApAAaO6YUpmJ4ST6ebPDRrWpKYdseqXSL+oEqAAA9DvMrP6RDQIgQJ1gQ3qDPaytFqb81nQVEKLZ6fFvCzSBhVr0HmrU0mkSdpgzSmnsihIgsJVg+PqjHaSkVlJxVMcNCcQiXTQMEf9u2P5/wnOw8KlYAbipMHinK+yaS63qvWSSYjAAl2HKCOGm0FifCnu1sphv8UF44OCpb2CoYr2/2lGQKYWmJR13s2gCQmDUAdNqOlfqa1dbeS/wQDS2s3X50mYpQalxDHfFOBCEISGQxAqTfgOCIFC4knQMBwIfDNziMMyaOCQiTGvSTzI+VZ2jWd3nRbxzlarCxahxmSWFKCkVoz32VmyyqsiqNdA+8tHOJqaFNIwuHVzFzkc2a3bhSWLqQvww5pgI0K6piMVWGBtWQIWAEhNYYdEqZdlRYUbLMVR9KDtWAQWDaCJNbu2kWxathG3G0lrANHOweFZTNI3ZKJHyis+TZZdVTAQlIaCJbNIMHelkyE+dYtXiJlp5nDSliiLiWXO4CFXylLrkyxEySPZEF6HgXDDrN3rOyBrmfNthUkkgzqBwMFe0brcpbCqrwwybQJpBbJ4ALTKwVjN+xTrLeshrWVYR0/5aFL8xPJ1dlH5Qdd1NzeSxG2J8lnRzAsJsADIuBp2DI5j0aWYSl3Fc6jHhDdE866m5QnWYwUQxxYpQdpMFCwv8lnr3WU2zo5ZgoVlJqZvjYCIG0camUSzG7QR1mfRjGkzyiIe6SDAdUn5+7eKISEMa2UYzQMSs1UselzXxRB2ifHFNQujlA2YqOIjY2f26MA0g45lvZgvxDqjvUueRZeHcaQ0PclcixkFSg1ZuEhC7ex2oYRIBTsb5d97wv1y0bugcDjO2az9g8DSOgjNvV+frENGL1ZBM+dw42Zq8miJ4GZsMBdI/tYbaQhM54fhZQfRa5ppBT+PDYA5JF9Uftk+D5aM59I1iTPXgEpz2zqigCgLnnsAtmXJrMatuIZd/Uy053EepAs+HVHxyrksSbJY9ebfQArn5qI4t/rUtNlWnEjKfeWOE2YWgjQ+OEWv7sN68dLag0DeUEKd1bi/hv1gaV5pOx1x22p+O0dxXSUOFHiaZXlD5Soa8j7wNKDZNEvRoHsfwEGAPHzTYCqReNHAAAAAElFTkSuQmCC', '有你真好海滨跟你估计快了嘻嘻嘻', '2015-03-17 09:31:20', '2017-09-13 19:03:29', null, null, '0', '南京市', '江苏省 南京市', '320100', '北京公积金', '2', '0', '2015-06-30', 'haijun0314@16663.com');

-- ----------------------------
-- Table structure for `account_address`
-- ----------------------------
DROP TABLE IF EXISTS `account_address`;
CREATE TABLE `account_address` (
  `addressId` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(20) DEFAULT NULL,
  `userName` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `isDefault` char(2) DEFAULT '1',
  `cityCode` varchar(45) DEFAULT NULL,
  `cityName` varchar(45) DEFAULT NULL,
  `provinceCode` varchar(11) DEFAULT NULL,
  `provinceName` varchar(20) DEFAULT NULL,
  `quCode` varchar(145) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `delFlag` char(1) DEFAULT '0' COMMENT '【0 没删除  1删除 】',
  `quName` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `addressDetail` varchar(255) DEFAULT NULL,
  `cityNameFull` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_address
-- ----------------------------
INSERT INTO `account_address` VALUES ('1', '85', '李海军', '15010123236', '1', '1043', '李海军', '15010123237', '4b7e1ddb9ad9227b', '有你真好海滨跟你估计快了嘻嘻嘻', '2015-03-17 09:31:20', '2017-09-14 09:49:18', null, null, '1', '南京市', '江苏省 南京市', '天津市南开区啊胡雪露3奤号', null);
INSERT INTO `account_address` VALUES ('2', '85', '行海军122', '15010123236', '0', '420100', '武汉市', '420000', '湖北省', '420102', '2015-03-17 09:31:20', '2017-09-14 17:02:33', null, null, '0', '江岸区', '12222', '湖北省 武汉市 江岸区 12222', '湖北省 武汉市 江岸区');
INSERT INTO `account_address` VALUES ('3', '85', '张海军', '150101232454', '1', '1043', '李海军2', '15010123237', '4b7e1ddb9ad9227b', '有你真好海滨跟你估计快了嘻嘻嘻', '2015-03-17 09:31:20', '2017-09-14 09:47:11', null, null, '1', '南京市', '江苏省 南京市', '天津市南开区啊胡雪露3奤号', null);
INSERT INTO `account_address` VALUES ('4', '85', '王海军', '15010123237', '1', '220100', '长春市', '220000', '吉林省', '220102', '2015-03-17 09:31:20', '2017-09-14 17:02:24', null, null, '0', '南关区', 'haidaolu', '吉林省 长春市 南关区 haidaolu', '吉林省 长春市 南关区');
INSERT INTO `account_address` VALUES ('5', '85', '朱海军', '15010123236', '1', '1043', '李海军4', '15010123237', '4b7e1ddb9ad9227b', '有你真好海滨跟你估计快了嘻嘻嘻', '2015-03-17 09:31:20', '2017-09-13 19:03:29', null, null, '0', '南京市', '江苏省 南京市', '天津市南开区啊胡雪露3奤号', null);
INSERT INTO `account_address` VALUES ('6', '85', '咯加分', '15010123236', '1', '1043', '李海军5', '15010123237', '4b7e1ddb9ad9227b', '有你真好海滨跟你估计快了嘻嘻嘻', '2015-03-17 09:31:20', '2017-09-14 09:48:34', null, null, '0', '南京市', '江苏省 南京市', '天津市南开区啊胡雪露3奤号', null);
INSERT INTO `account_address` VALUES ('7', '85', '也海军', '15010123236', '1', '1043', '李海军7', '15010123237', '4b7e1ddb9ad9227b', '有你真好海滨跟你估计快了嘻嘻嘻', '2015-03-17 09:31:20', '2017-09-13 19:03:29', null, null, '0', '南京市', '江苏省 南京市', '天津市南开区啊胡雪露3奤号', null);
INSERT INTO `account_address` VALUES ('8', '85', '速度海军', '15010123236', '1', '1043', '李海军6', '15010123237', '4b7e1ddb9ad9227b', '有你真好海滨跟你估计快了嘻嘻嘻', '2015-03-17 09:31:20', '2017-09-13 19:03:29', null, null, '0', '南京市', '江苏省 南京市', '天津市南开区啊胡雪露3奤号', null);
INSERT INTO `account_address` VALUES ('9', '85', '红海军', '15010123236', '1', '1043', '李海军8', '15010123237', '4b7e1ddb9ad9227b', '有你真好海滨跟你估计快了嘻嘻嘻', '2015-03-17 09:31:20', '2017-09-13 19:03:29', null, null, '0', '南京市', '江苏省 南京市', '天津市南开区啊胡雪露3奤号', null);
INSERT INTO `account_address` VALUES ('11', '85', '圈耳朵的', '15010123236', '1', '1043', '李海军9', '15010123237', '4b7e1ddb9ad9227b', '有你真好海滨跟你估计快了嘻嘻嘻', '2015-03-17 09:31:20', '2017-09-13 19:03:29', null, null, '1', '南京市', '江苏省 南京市', '天津市南开区啊胡雪露3奤号', null);
INSERT INTO `account_address` VALUES ('12', '85', '123456', '123456', '1', '120000', '天津市', '120000', '天津', '120101', '2017-09-14 11:48:59', '2017-09-14 11:50:20', null, null, '0', '和平区', '123456123456123456123456123456123456123456123456', '天津 天津市 和平区 123456123456123456123456123456123456123456123456', null);
INSERT INTO `account_address` VALUES ('13', '85', '2222222', '222222222222222222', '1', '220800', '白城市', '220000', '吉林省', '220802', '2017-09-14 11:50:14', null, null, null, '0', '洮北区', '222222222222', '吉林省 白城市 洮北区 222222222222', null);
INSERT INTO `account_address` VALUES ('14', '85', 'city', 'cityNameFull', '1', '220100', '长春市', '220000', '吉林省', '220102', '2017-09-14 14:00:38', null, null, null, '0', '南关区', 'cityNameFullcityNameFull', '吉林省 长春市 南关区 cityNameFullcityNameFull', '吉林省 长春市 南关区');

-- ----------------------------
-- Table structure for `agent`
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent` (
  `agentId` int(11) NOT NULL AUTO_INCREMENT COMMENT '理商代编号',
  `agentName` varchar(200) DEFAULT NULL COMMENT '理商代名称',
  `linkTelephone` varchar(255) DEFAULT NULL,
  `linkUserName` varchar(255) DEFAULT NULL,
  `delFlag` char(1) DEFAULT '0',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`agentId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of agent
-- ----------------------------
INSERT INTO `agent` VALUES ('9', '测试项目', '13426445837', '汪令建', '0', null, null, '2016-11-11 10:40:32', '2016-11-14 09:45:48');
INSERT INTO `agent` VALUES ('10', '发发发', 'ertertert', 'dfgsdfsdf', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `config_system`
-- ----------------------------
DROP TABLE IF EXISTS `config_system`;
CREATE TABLE `config_system` (
  `updatedTime` varchar(45) DEFAULT NULL,
  `updateBy` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config_system
-- ----------------------------
INSERT INTO `config_system` VALUES ('2017-05-15 14:47:03', null);

-- ----------------------------
-- Table structure for `dict_area`
-- ----------------------------
DROP TABLE IF EXISTS `dict_area`;
CREATE TABLE `dict_area` (
  `areaCode` varchar(20) NOT NULL,
  `areaName` varchar(200) NOT NULL,
  `status` varchar(2) DEFAULT '1',
  `pCode` varchar(20) DEFAULT NULL,
  `delFlag` varchar(2) NOT NULL DEFAULT '0' COMMENT '【0 没删除  1删除 】',
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `Desc` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`areaCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_area
-- ----------------------------
INSERT INTO `dict_area` VALUES ('110000', '北京市', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('110100', '市辖区', '1', '110000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('110101', '东城区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110102', '西城区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110103', '崇文区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110104', '宣武区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110105', '朝阳区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110106', '丰台区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110107', '石景山区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110108', '海淀区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110109', '门头沟区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110111', '房山区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110112', '通州区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110113', '顺义区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110114', '昌平区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110115', '大兴区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110116', '怀柔区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110117', '平谷区', '1', '110100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110200', '县', '1', '110000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('110228', '密云县', '1', '110200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('110229', '延庆县', '1', '110200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120000', '天津市', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('120100', '市辖区', '1', '120000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('120101', '和平区', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120102', '河东区', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120103', '河西区', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120104', '南开区', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120105', '河北区', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120106', '红桥区', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120110', '东丽区', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120111', '西青区', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120112', '津南区', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120113', '北辰区', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120114', '武清区', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120115', '宝坻区', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120116', '滨海新区 ', '1', '120100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120200', '县', '1', '120000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('120221', '宁河县', '1', '120200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120223', '静海县', '1', '120200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('120225', '蓟县', '1', '120200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130000', '河北省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('130100', '石家庄市', '1', '130000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('130101', '市辖区', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130102', '长安区', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130103', '桥东区', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130104', '桥西区', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130105', '新华区', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130107', '井陉矿区', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130108', '裕华区', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130121', '井陉县', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130123', '正定县', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130124', '栾城县', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130125', '行唐县', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130126', '灵寿县', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130127', '高邑县', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130128', '深泽县', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130129', '赞皇县', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130130', '无极县', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130131', '平山县', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130132', '元氏县', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130133', '赵县', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130181', '辛集市', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130182', '藁城市', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130183', '晋州市', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130184', '新乐市', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130185', '鹿泉市', '1', '130100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130200', '唐山市', '1', '130000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('130201', '市辖区', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130202', '路南区', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130203', '路北区', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130204', '古冶区', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130205', '开平区', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130207', '丰南区', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130208', '丰润区', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130223', '滦县', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130224', '滦南县', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130225', '乐亭县', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130227', '迁西县', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130229', '玉田县', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130230', '唐海县', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130281', '遵化市', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130283', '迁安市', '1', '130200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130300', '秦皇岛市', '1', '130000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('130301', '市辖区', '1', '130300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130302', '海港区', '1', '130300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130303', '山海关区', '1', '130300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130304', '北戴河区', '1', '130300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130321', '青龙满族自治县', '1', '130300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130322', '昌黎县', '1', '130300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130323', '抚宁县', '1', '130300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130324', '卢龙县', '1', '130300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130400', '邯郸市', '1', '130000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('130401', '市辖区', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130402', '邯山区', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130403', '丛台区', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130404', '复兴区', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130406', '峰峰矿区', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130421', '邯郸县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130423', '临漳县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130424', '成安县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130425', '大名县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130426', '涉县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130427', '磁县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130428', '肥乡县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130429', '永年县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130430', '邱县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130431', '鸡泽县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130432', '广平县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130433', '馆陶县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130434', '魏县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130435', '曲周县', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130481', '武安市', '1', '130400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130500', '邢台市', '1', '130000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('130501', '市辖区', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130502', '桥东区', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130503', '桥西区', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130521', '邢台县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130522', '临城县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130523', '内丘县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130524', '柏乡县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130525', '隆尧县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130526', '任县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130527', '南和县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130528', '宁晋县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130529', '巨鹿县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130530', '新河县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130531', '广宗县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130532', '平乡县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130533', '威县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130534', '清河县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130535', '临西县', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130581', '南宫市', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130582', '沙河市', '1', '130500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130600', '保定市', '1', '130000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('130601', '市辖区', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130602', '新市区', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130603', '北市区', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130604', '南市区', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130621', '满城县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130622', '清苑县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130623', '涞水县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130624', '阜平县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130625', '徐水县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130626', '定兴县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130627', '唐县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130628', '高阳县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130629', '容城县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130630', '涞源县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130631', '望都县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130632', '安新县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130633', '易县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130634', '曲阳县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130635', '蠡县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130636', '顺平县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130637', '博野县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130638', '雄县', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130681', '涿州市', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130682', '定州市', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130683', '安国市', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130684', '高碑店市', '1', '130600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130700', '张家口市', '1', '130000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('130701', '市辖区', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130702', '桥东区', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130703', '桥西区', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130705', '宣化区', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130706', '下花园区', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130721', '宣化县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130722', '张北县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130723', '康保县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130724', '沽源县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130725', '尚义县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130726', '蔚县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130727', '阳原县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130728', '怀安县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130729', '万全县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130730', '怀来县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130731', '涿鹿县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130732', '赤城县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130733', '崇礼县', '1', '130700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130800', '承德市', '1', '130000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('130801', '市辖区', '1', '130800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130802', '双桥区', '1', '130800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130803', '双滦区', '1', '130800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130804', '鹰手营子矿区', '1', '130800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130821', '承德县', '1', '130800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130822', '兴隆县', '1', '130800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130823', '平泉县', '1', '130800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130824', '滦平县', '1', '130800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130825', '隆化县', '1', '130800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130826', '丰宁满族自治县', '1', '130800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130827', '宽城满族自治县', '1', '130800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130828', '围场满族蒙古族', '1', '130800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130900', '沧州市', '1', '130000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('130901', '市辖区', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130902', '新华区', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130903', '运河区', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130921', '沧县', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130922', '青县', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130923', '东光县', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130924', '海兴县', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130925', '盐山县', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130926', '肃宁县', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130927', '南皮县', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130928', '吴桥县', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130929', '献县', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130930', '孟村回族自治县', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130981', '泊头市', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130982', '任丘市', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130983', '黄骅市', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('130984', '河间市', '1', '130900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131000', '廊坊市', '1', '130000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('131001', '市辖区', '1', '131000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131002', '安次区', '1', '131000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131003', '广阳区', '1', '131000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131022', '固安县', '1', '131000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131023', '永清县', '1', '131000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131024', '香河县', '1', '131000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131025', '大城县', '1', '131000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131026', '文安县', '1', '131000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131028', '大厂回族自治县', '1', '131000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131081', '霸州市', '1', '131000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131082', '三河市', '1', '131000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131100', '衡水市', '1', '130000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('131101', '市辖区', '1', '131100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131102', '桃城区', '1', '131100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131121', '枣强县', '1', '131100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131122', '武邑县', '1', '131100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131123', '武强县', '1', '131100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131124', '饶阳县', '1', '131100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131125', '安平县', '1', '131100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131126', '故城县', '1', '131100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131127', '景县', '1', '131100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131128', '阜城县', '1', '131100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131181', '冀州市', '1', '131100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('131182', '深州市', '1', '131100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140000', '山西省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('140100', '太原市', '1', '140000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('140101', '市辖区', '1', '140100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140105', '小店区', '1', '140100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140106', '迎泽区', '1', '140100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140107', '杏花岭区', '1', '140100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140108', '尖草坪区', '1', '140100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140109', '万柏林区', '1', '140100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140110', '晋源区', '1', '140100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140121', '清徐县', '1', '140100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140122', '阳曲县', '1', '140100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140123', '娄烦县', '1', '140100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140181', '古交市', '1', '140100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140200', '大同市', '1', '140000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('140201', '市辖区', '1', '140200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140202', '城区', '1', '140200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140203', '矿区', '1', '140200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140211', '南郊区', '1', '140200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140212', '新荣区', '1', '140200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140221', '阳高县', '1', '140200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140222', '天镇县', '1', '140200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140223', '广灵县', '1', '140200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140224', '灵丘县', '1', '140200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140225', '浑源县', '1', '140200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140226', '左云县', '1', '140200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140227', '大同县', '1', '140200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140300', '阳泉市', '1', '140000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('140301', '市辖区', '1', '140300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140302', '城区', '1', '140300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140303', '矿区', '1', '140300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140311', '郊区', '1', '140300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140321', '平定县', '1', '140300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140322', '盂县', '1', '140300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140400', '长治市', '1', '140000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('140401', '市辖区', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140402', '城区', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140411', '郊区', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140421', '长治县', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140423', '襄垣县', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140424', '屯留县', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140425', '平顺县', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140426', '黎城县', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140427', '壶关县', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140428', '长子县', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140429', '武乡县', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140430', '沁县', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140431', '沁源县', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140481', '潞城市', '1', '140400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140500', '晋城市', '1', '140000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('140501', '市辖区', '1', '140500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140502', '城区', '1', '140500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140521', '沁水县', '1', '140500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140522', '阳城县', '1', '140500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140524', '陵川县', '1', '140500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140525', '泽州县', '1', '140500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140581', '高平市', '1', '140500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140600', '朔州市', '1', '140000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('140601', '市辖区', '1', '140600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140602', '朔城区', '1', '140600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140603', '平鲁区', '1', '140600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140621', '山阴县', '1', '140600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140622', '应县', '1', '140600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140623', '右玉县', '1', '140600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140624', '怀仁县', '1', '140600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140700', '晋中市', '1', '140000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('140701', '市辖区', '1', '140700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140702', '榆次区', '1', '140700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140721', '榆社县', '1', '140700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140722', '左权县', '1', '140700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140723', '和顺县', '1', '140700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140724', '昔阳县', '1', '140700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140725', '寿阳县', '1', '140700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140726', '太谷县', '1', '140700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140727', '祁县', '1', '140700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140728', '平遥县', '1', '140700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140729', '灵石县', '1', '140700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140781', '介休市', '1', '140700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140800', '运城市', '1', '140000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('140801', '市辖区', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140802', '盐湖区', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140821', '临猗县', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140822', '万荣县', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140823', '闻喜县', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140824', '稷山县', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140825', '新绛县', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140826', '绛县', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140827', '垣曲县', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140828', '夏县', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140829', '平陆县', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140830', '芮城县', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140881', '永济市', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140882', '河津市', '1', '140800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140900', '忻州市', '1', '140000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('140901', '市辖区', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140902', '忻府区', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140921', '定襄县', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140922', '五台县', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140923', '代县', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140924', '繁峙县', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140925', '宁武县', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140926', '静乐县', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140927', '神池县', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140928', '五寨县', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140929', '岢岚县', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140930', '河曲县', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140931', '保德县', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140932', '偏关县', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('140981', '原平市', '1', '140900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141000', '临汾市', '1', '140000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('141001', '市辖区', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141002', '尧都区', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141021', '曲沃县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141022', '翼城县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141023', '襄汾县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141024', '洪洞县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141025', '古县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141026', '安泽县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141027', '浮山县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141028', '吉县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141029', '乡宁县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141030', '大宁县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141031', '隰县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141032', '永和县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141033', '蒲县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141034', '汾西县', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141081', '侯马市', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141082', '霍州市', '1', '141000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141100', '吕梁市', '1', '140000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('141101', '市辖区', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141102', '离石区', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141121', '文水县', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141122', '交城县', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141123', '兴县', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141124', '临县', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141125', '柳林县', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141126', '石楼县', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141127', '岚县', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141128', '方山县', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141129', '中阳县', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141130', '交口县', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141181', '孝义市', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('141182', '汾阳市', '1', '141100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150000', '内蒙古自治区', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('150100', '呼和浩特市', '1', '150000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('150101', '市辖区', '1', '150100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150102', '新城区', '1', '150100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150103', '回民区', '1', '150100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150104', '玉泉区', '1', '150100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150105', '赛罕区', '1', '150100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150121', '土默特左旗', '1', '150100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150122', '托克托县', '1', '150100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150123', '和林格尔县', '1', '150100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150124', '清水河县', '1', '150100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150125', '武川县', '1', '150100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150200', '包头市', '1', '150000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('150201', '市辖区', '1', '150200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150202', '东河区', '1', '150200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150203', '昆都仑区', '1', '150200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150204', '青山区', '1', '150200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150205', '石拐区', '1', '150200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150206', '白云鄂博矿区', '1', '150200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150207', '九原区', '1', '150200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150221', '土默特右旗', '1', '150200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150222', '固阳县', '1', '150200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150223', '达尔罕茂明安联合旗', '1', '150200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150300', '乌海市', '1', '150000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('150301', '市辖区', '1', '150300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150302', '海勃湾区', '1', '150300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150303', '海南区', '1', '150300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150304', '乌达区', '1', '150300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150400', '赤峰市', '1', '150000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('150401', '市辖区', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150402', '红山区', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150403', '元宝山区', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150404', '松山区', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150421', '阿鲁科尔沁旗', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150422', '巴林左旗', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150423', '巴林右旗', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150424', '林西县', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150425', '克什克腾旗', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150426', '翁牛特旗', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150428', '喀喇沁旗', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150429', '宁城县', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150430', '敖汉旗', '1', '150400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150500', '通辽市', '1', '150000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('150501', '市辖区', '1', '150500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150502', '科尔沁区', '1', '150500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150521', '科尔沁左翼中旗', '1', '150500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150522', '科尔沁左翼后旗', '1', '150500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150523', '开鲁县', '1', '150500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150524', '库伦旗', '1', '150500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150525', '奈曼旗', '1', '150500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150526', '扎鲁特旗', '1', '150500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150581', '霍林郭勒市', '1', '150500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150600', '鄂尔多斯市', '1', '150000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('150601', '市辖区', '1', '150600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150602', '东胜区', '1', '150600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150621', '达拉特旗', '1', '150600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150622', '准格尔旗', '1', '150600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150623', '鄂托克前旗', '1', '150600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150624', '鄂托克旗', '1', '150600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150625', '杭锦旗', '1', '150600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150626', '乌审旗', '1', '150600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150627', '伊金霍洛旗', '1', '150600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150700', '呼伦贝尔市', '1', '150000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('150701', '市辖区', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150702', '海拉尔区', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150721', '阿荣旗', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150722', '莫力达瓦达斡尔族自治旗', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150723', '鄂伦春自治旗', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150724', '鄂温克族自治旗', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150725', '陈巴尔虎旗', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150726', '新巴尔虎左旗', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150727', '新巴尔虎右旗', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150781', '满洲里市', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150782', '牙克石市', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150783', '扎兰屯市', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150784', '额尔古纳市', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150785', '根河市', '1', '150700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150800', '巴彦淖尔市', '1', '150000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('150801', '市辖区', '1', '150800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150802', '临河区', '1', '150800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150821', '五原县', '1', '150800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150822', '磴口县', '1', '150800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150823', '乌拉特前旗', '1', '150800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150824', '乌拉特中旗', '1', '150800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150825', '乌拉特后旗', '1', '150800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150826', '杭锦后旗', '1', '150800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150900', '乌兰察布市', '1', '150000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('150901', '市辖区', '1', '150900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150902', '集宁区', '1', '150900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150921', '卓资县', '1', '150900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150922', '化德县', '1', '150900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150923', '商都县', '1', '150900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150924', '兴和县', '1', '150900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150925', '凉城县', '1', '150900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150926', '察哈尔右翼前旗', '1', '150900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150927', '察哈尔右翼中旗', '1', '150900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150928', '察哈尔右翼后旗', '1', '150900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150929', '四子王旗', '1', '150900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('150981', '丰镇市', '1', '150900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152200', '兴安盟', '1', '150000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('152201', '乌兰浩特市', '1', '152200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152202', '阿尔山市', '1', '152200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152221', '科尔沁右翼前旗', '1', '152200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152222', '科尔沁右翼中旗', '1', '152200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152223', '扎赉特旗', '1', '152200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152224', '突泉县', '1', '152200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152500', '锡林郭勒盟', '1', '150000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('152501', '二连浩特市', '1', '152500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152502', '锡林浩特市', '1', '152500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152522', '阿巴嘎旗', '1', '152500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152523', '苏尼特左旗', '1', '152500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152524', '苏尼特右旗', '1', '152500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152525', '东乌珠穆沁旗', '1', '152500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152526', '西乌珠穆沁旗', '1', '152500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152527', '太仆寺旗', '1', '152500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152528', '镶黄旗', '1', '152500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152529', '正镶白旗', '1', '152500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152530', '正蓝旗', '1', '152500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152531', '多伦县', '1', '152500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152900', '阿拉善盟', '1', '150000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('152921', '阿拉善左旗', '1', '152900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152922', '阿拉善右旗', '1', '152900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('152923', '额济纳旗', '1', '152900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210000', '辽宁省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('210100', '沈阳市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('210101', '市辖区', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210102', '和平区', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210103', '沈河区', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210104', '大东区', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210105', '皇姑区', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210106', '铁西区', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210111', '苏家屯区', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210112', '东陵区', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210113', '沈北新区', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210114', '于洪区', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210122', '辽中县', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210123', '康平县', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210124', '法库县', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210181', '新民市', '1', '210100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210200', '大连市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('210201', '市辖区', '1', '210200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210202', '中山区', '1', '210200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210203', '西岗区', '1', '210200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210204', '沙河口区', '1', '210200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210211', '甘井子区', '1', '210200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210212', '旅顺口区', '1', '210200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210213', '金州区', '1', '210200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210224', '长海县', '1', '210200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210281', '瓦房店市', '1', '210200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210282', '普兰店市', '1', '210200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210283', '庄河市', '1', '210200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210300', '鞍山市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('210301', '市辖区', '1', '210300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210302', '铁东区', '1', '210300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210303', '铁西区', '1', '210300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210304', '立山区', '1', '210300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210311', '千山区', '1', '210300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210321', '台安县', '1', '210300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210323', '岫岩满族自治县', '1', '210300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210381', '海城市', '1', '210300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210400', '抚顺市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('210401', '市辖区', '1', '210400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210402', '新抚区', '1', '210400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210403', '东洲区', '1', '210400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210404', '望花区', '1', '210400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210411', '顺城区', '1', '210400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210421', '抚顺县', '1', '210400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210422', '新宾满族自治县', '1', '210400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210423', '清原满族自治县', '1', '210400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210500', '本溪市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('210501', '市辖区', '1', '210500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210502', '平山区', '1', '210500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210503', '溪湖区', '1', '210500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210504', '明山区', '1', '210500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210505', '南芬区', '1', '210500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210521', '本溪满族自治县', '1', '210500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210522', '桓仁满族自治县', '1', '210500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210600', '丹东市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('210601', '市辖区', '1', '210600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210602', '元宝区', '1', '210600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210603', '振兴区', '1', '210600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210604', '振安区', '1', '210600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210624', '宽甸满族自治县', '1', '210600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210681', '东港市', '1', '210600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210682', '凤城市', '1', '210600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210700', '锦州市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('210701', '市辖区', '1', '210700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210702', '古塔区', '1', '210700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210703', '凌河区', '1', '210700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210711', '太和区', '1', '210700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210726', '黑山县', '1', '210700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210727', '义县', '1', '210700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210781', '凌海市', '1', '210700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210782', '北镇市', '1', '210700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210800', '营口市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('210801', '市辖区', '1', '210800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210802', '站前区', '1', '210800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210803', '西市区', '1', '210800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210804', '鲅鱼圈区', '1', '210800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210811', '老边区', '1', '210800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210881', '盖州市', '1', '210800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210882', '大石桥市', '1', '210800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210900', '阜新市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('210901', '市辖区', '1', '210900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210902', '海州区', '1', '210900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210903', '新邱区', '1', '210900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210904', '太平区', '1', '210900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210905', '清河门区', '1', '210900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210911', '细河区', '1', '210900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210921', '阜新蒙古族自治县', '1', '210900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('210922', '彰武县', '1', '210900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211000', '辽阳市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('211001', '市辖区', '1', '211000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211002', '白塔区', '1', '211000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211003', '文圣区', '1', '211000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211004', '宏伟区', '1', '211000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211005', '弓长岭区', '1', '211000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211011', '太子河区', '1', '211000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211021', '辽阳县', '1', '211000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211081', '灯塔市', '1', '211000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211100', '盘锦市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('211101', '市辖区', '1', '211100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211102', '双台子区', '1', '211100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211103', '兴隆台区', '1', '211100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211121', '大洼县', '1', '211100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211122', '盘山县', '1', '211100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211200', '铁岭市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('211201', '市辖区', '1', '211200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211202', '银州区', '1', '211200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211204', '清河区', '1', '211200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211221', '铁岭县', '1', '211200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211223', '西丰县', '1', '211200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211224', '昌图县', '1', '211200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211281', '调兵山市', '1', '211200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211282', '开原市', '1', '211200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211300', '朝阳市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('211301', '市辖区', '1', '211300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211302', '双塔区', '1', '211300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211303', '龙城区', '1', '211300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211321', '朝阳县', '1', '211300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211322', '建平县', '1', '211300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211324', '喀喇沁左翼蒙古族自治县', '1', '211300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211381', '北票市', '1', '211300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211382', '凌源市', '1', '211300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211400', '葫芦岛市', '1', '210000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('211401', '市辖区', '1', '211400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211402', '连山区', '1', '211400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211403', '龙港区', '1', '211400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211404', '南票区', '1', '211400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211421', '绥中县', '1', '211400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211422', '建昌县', '1', '211400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('211481', '兴城市', '1', '211400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220000', '吉林省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('220100', '长春市', '1', '220000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('220101', '市辖区', '1', '220100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220102', '南关区', '1', '220100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220103', '宽城区', '1', '220100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220104', '朝阳区', '1', '220100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220105', '二道区', '1', '220100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220106', '绿园区', '1', '220100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220112', '双阳区', '1', '220100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220122', '农安县', '1', '220100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220181', '九台市', '1', '220100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220182', '榆树市', '1', '220100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220183', '德惠市', '1', '220100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220200', '吉林市', '1', '220000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('220201', '市辖区', '1', '220200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220202', '昌邑区', '1', '220200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220203', '龙潭区', '1', '220200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220204', '船营区', '1', '220200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220211', '丰满区', '1', '220200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220221', '永吉县', '1', '220200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220281', '蛟河市', '1', '220200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220282', '桦甸市', '1', '220200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220283', '舒兰市', '1', '220200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220284', '磐石市', '1', '220200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220300', '四平市', '1', '220000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('220301', '市辖区', '1', '220300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220302', '铁西区', '1', '220300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220303', '铁东区', '1', '220300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220322', '梨树县', '1', '220300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220323', '伊通满族自治县', '1', '220300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220381', '公主岭市', '1', '220300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220382', '双辽市', '1', '220300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220400', '辽源市', '1', '220000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('220401', '市辖区', '1', '220400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220402', '龙山区', '1', '220400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220403', '西安区', '1', '220400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220421', '东丰县', '1', '220400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220422', '东辽县', '1', '220400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220500', '通化市', '1', '220000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('220501', '市辖区', '1', '220500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220502', '东昌区', '1', '220500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220503', '二道江区', '1', '220500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220521', '通化县', '1', '220500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220523', '辉南县', '1', '220500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220524', '柳河县', '1', '220500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220581', '梅河口市', '1', '220500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220582', '集安市', '1', '220500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220600', '白山市', '1', '220000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('220601', '市辖区', '1', '220600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220602', '八道江区', '1', '220600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220605', '? 江源区', '1', '220600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220621', '抚松县', '1', '220600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220622', '靖宇县', '1', '220600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220623', '长白朝鲜族自治县', '1', '220600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220681', '临江市', '1', '220600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220700', '松原市', '1', '220000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('220701', '市辖区', '1', '220700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220702', '宁江区', '1', '220700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220721', '前郭尔罗斯蒙古族自治县', '1', '220700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220722', '长岭县', '1', '220700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220723', '乾安县', '1', '220700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220724', '扶余县', '1', '220700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220800', '白城市', '1', '220000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('220801', '市辖区', '1', '220800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220802', '洮北区', '1', '220800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220821', '镇赉县', '1', '220800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220822', '通榆县', '1', '220800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220881', '洮南市', '1', '220800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('220882', '大安市', '1', '220800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('222400', '延边朝鲜族自治州', '1', '220000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('222401', '延吉市', '1', '222400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('222402', '图们市', '1', '222400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('222403', '敦化市', '1', '222400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('222404', '珲春市', '1', '222400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('222405', '龙井市', '1', '222400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('222406', '和龙市', '1', '222400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('222424', '汪清县', '1', '222400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('222426', '安图县', '1', '222400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230000', '黑龙江省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('230100', '哈尔滨市', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('230101', '市辖区', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230102', '道里区', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230103', '南岗区', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230104', '道外区', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230108', '平房区', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230109', '松北区', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230110', '香坊区', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230111', '呼兰区', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230112', '阿城区', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230123', '依兰县', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230124', '方正县', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230125', '宾县', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230126', '巴彦县', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230127', '木兰县', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230128', '通河县', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230129', '延寿县', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230182', '双城市', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230183', '尚志市', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230184', '五常市', '1', '230100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230200', '齐齐哈尔市', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('230201', '市辖区', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230202', '龙沙区', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230203', '建华区', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230204', '铁锋区', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230205', '昂昂溪区', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230206', '富拉尔基区', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230207', '碾子山区', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230208', '梅里斯达斡尔族区', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230221', '龙江县', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230223', '依安县', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230224', '泰来县', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230225', '甘南县', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230227', '富裕县', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230229', '克山县', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230230', '克东县', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230231', '拜泉县', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230281', '讷河市', '1', '230200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230300', '鸡西市', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('230301', '市辖区', '1', '230300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230302', '鸡冠区', '1', '230300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230303', '恒山区', '1', '230300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230304', '滴道区', '1', '230300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230305', '梨树区', '1', '230300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230306', '城子河区', '1', '230300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230307', '麻山区', '1', '230300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230321', '鸡东县', '1', '230300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230381', '虎林市', '1', '230300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230382', '密山市', '1', '230300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230400', '鹤岗市', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('230401', '市辖区', '1', '230400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230402', '向阳区', '1', '230400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230403', '工农区', '1', '230400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230404', '南山区', '1', '230400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230405', '兴安区', '1', '230400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230406', '东山区', '1', '230400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230407', '兴山区', '1', '230400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230421', '萝北县', '1', '230400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230422', '绥滨县', '1', '230400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230500', '双鸭山市', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('230501', '市辖区', '1', '230500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230502', '尖山区', '1', '230500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230503', '岭东区', '1', '230500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230505', '四方台区', '1', '230500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230506', '宝山区', '1', '230500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230521', '集贤县', '1', '230500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230522', '友谊县', '1', '230500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230523', '宝清县', '1', '230500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230524', '饶河县', '1', '230500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230600', '大庆市', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('230601', '市辖区', '1', '230600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230602', '萨尔图区', '1', '230600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230603', '龙凤区', '1', '230600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230604', '让胡路区', '1', '230600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230605', '红岗区', '1', '230600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230606', '大同区', '1', '230600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230621', '肇州县', '1', '230600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230622', '肇源县', '1', '230600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230623', '林甸县', '1', '230600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230624', '杜尔伯特蒙古族自治县', '1', '230600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230700', '伊春市', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('230701', '市辖区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230702', '伊春区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230703', '南岔区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230704', '友好区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230705', '西林区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230706', '翠峦区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230707', '新青区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230708', '美溪区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230709', '金山屯区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230710', '五营区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230711', '乌马河区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230712', '汤旺河区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230713', '带岭区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230714', '乌伊岭区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230715', '红星区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230716', '上甘岭区', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230722', '嘉荫县', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230781', '铁力市', '1', '230700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230800', '佳木斯市', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('230801', '市辖区', '1', '230800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230803', '向阳区', '1', '230800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230804', '前进区', '1', '230800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230805', '东风区', '1', '230800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230811', '郊区', '1', '230800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230822', '桦南县', '1', '230800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230826', '桦川县', '1', '230800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230828', '汤原县', '1', '230800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230833', '抚远县', '1', '230800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230881', '同江市', '1', '230800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230882', '富锦市', '1', '230800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230900', '七台河市', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('230901', '市辖区', '1', '230900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230902', '新兴区', '1', '230900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230903', '桃山区', '1', '230900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230904', '茄子河区', '1', '230900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('230921', '勃利县', '1', '230900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231000', '牡丹江市', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('231001', '市辖区', '1', '231000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231002', '东安区', '1', '231000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231003', '阳明区', '1', '231000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231004', '爱民区', '1', '231000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231005', '西安区', '1', '231000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231024', '东宁县', '1', '231000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231025', '林口县', '1', '231000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231081', '绥芬河市', '1', '231000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231083', '海林市', '1', '231000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231084', '宁安市', '1', '231000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231085', '穆棱市', '1', '231000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231100', '黑河市', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('231101', '市辖区', '1', '231100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231102', '爱辉区', '1', '231100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231121', '嫩江县', '1', '231100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231123', '逊克县', '1', '231100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231124', '孙吴县', '1', '231100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231181', '北安市', '1', '231100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231182', '五大连池市', '1', '231100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231200', '绥化市', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('231201', '市辖区', '1', '231200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231202', '北林区', '1', '231200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231221', '望奎县', '1', '231200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231222', '兰西县', '1', '231200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231223', '青冈县', '1', '231200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231224', '庆安县', '1', '231200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231225', '明水县', '1', '231200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231226', '绥棱县', '1', '231200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231281', '安达市', '1', '231200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231282', '肇东市', '1', '231200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('231283', '海伦市', '1', '231200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('232700', '大兴安岭地区', '1', '230000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('232721', '呼玛县', '1', '232700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('232722', '塔河县', '1', '232700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('232723', '漠河县', '1', '232700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310000', '上海市', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('310100', '市辖区', '1', '310000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('310101', '黄浦区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310103', '卢湾区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310104', '徐汇区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310105', '长宁区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310106', '静安区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310107', '普陀区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310108', '闸北区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310109', '虹口区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310110', '杨浦区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310112', '闵行区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310113', '宝山区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310114', '嘉定区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310115', '浦东新区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310116', '金山区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310117', '松江区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310118', '青浦区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310120', '奉贤区', '1', '310100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('310200', '县', '1', '310000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('310230', '崇明县', '1', '310200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320000', '江苏省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('320100', '南京市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('320101', '市辖区', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320102', '玄武区', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320103', '白下区', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320104', '秦淮区', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320105', '建邺区', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320106', '鼓楼区', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320107', '下关区', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320111', '浦口区', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320113', '栖霞区', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320114', '雨花台区', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320115', '江宁区', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320116', '六合区', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320124', '溧水县', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320125', '高淳县', '1', '320100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320200', '无锡市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('320201', '市辖区', '1', '320200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320202', '崇安区', '1', '320200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320203', '南长区', '1', '320200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320204', '北塘区', '1', '320200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320205', '锡山区', '1', '320200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320206', '惠山区', '1', '320200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320211', '滨湖区', '1', '320200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320281', '江阴市', '1', '320200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320282', '宜兴市', '1', '320200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320300', '徐州市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('320301', '市辖区', '1', '320300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320302', '鼓楼区', '1', '320300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320303', '云龙区', '1', '320300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320304', '九里区', '1', '320300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320305', '贾汪区', '1', '320300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320311', '泉山区', '1', '320300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320321', '丰县', '1', '320300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320322', '沛县', '1', '320300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320323', '铜山县', '1', '320300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320324', '睢宁县', '1', '320300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320381', '新沂市', '1', '320300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320382', '邳州市', '1', '320300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320400', '常州市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('320401', '市辖区', '1', '320400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320402', '天宁区', '1', '320400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320404', '钟楼区', '1', '320400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320405', '戚墅堰区', '1', '320400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320411', '新北区', '1', '320400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320412', '武进区', '1', '320400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320481', '溧阳市', '1', '320400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320482', '金坛市', '1', '320400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320500', '苏州市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('320501', '市辖区', '1', '320500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320502', '沧浪区', '1', '320500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320503', '平江区', '1', '320500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320504', '金阊区', '1', '320500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320505', '虎丘区', '1', '320500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320506', '吴中区', '1', '320500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320507', '相城区', '1', '320500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320581', '常熟市', '1', '320500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320582', '张家港市', '1', '320500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320583', '昆山市', '1', '320500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320584', '吴江市', '1', '320500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320585', '太仓市', '1', '320500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320600', '南通市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('320601', '市辖区', '1', '320600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320602', '崇川区', '1', '320600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320611', '港闸区', '1', '320600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320612', '通州区', '1', '320600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320621', '海安县', '1', '320600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320623', '如东县', '1', '320600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320681', '启东市', '1', '320600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320682', '如皋市', '1', '320600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320684', '海门市', '1', '320600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320700', '连云港市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('320701', '市辖区', '1', '320700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320703', '连云区', '1', '320700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320705', '新浦区', '1', '320700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320706', '海州区', '1', '320700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320721', '赣榆县', '1', '320700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320722', '东海县', '1', '320700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320723', '灌云县', '1', '320700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320724', '灌南县', '1', '320700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320800', '淮安市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('320801', '市辖区', '1', '320800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320802', '清河区', '1', '320800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320803', '楚州区', '1', '320800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320804', '淮阴区', '1', '320800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320811', '清浦区', '1', '320800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320826', '涟水县', '1', '320800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320829', '洪泽县', '1', '320800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320830', '盱眙县', '1', '320800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320831', '金湖县', '1', '320800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320900', '盐城市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('320901', '市辖区', '1', '320900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320902', '亭湖区', '1', '320900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320903', '盐都区', '1', '320900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320921', '响水县', '1', '320900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320922', '滨海县', '1', '320900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320923', '阜宁县', '1', '320900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320924', '射阳县', '1', '320900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320925', '建湖县', '1', '320900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320981', '东台市', '1', '320900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('320982', '大丰市', '1', '320900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321000', '扬州市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('321001', '市辖区', '1', '321000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321002', '广陵区', '1', '321000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321003', '邗江区', '1', '321000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321011', '维扬区', '1', '321000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321023', '宝应县', '1', '321000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321081', '仪征市', '1', '321000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321084', '高邮市', '1', '321000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321088', '江都市', '1', '321000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321100', '镇江市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('321101', '市辖区', '1', '321100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321102', '京口区', '1', '321100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321111', '润州区', '1', '321100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321112', '丹徒区', '1', '321100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321181', '丹阳市', '1', '321100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321182', '扬中市', '1', '321100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321183', '句容市', '1', '321100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321200', '泰州市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('321201', '市辖区', '1', '321200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321202', '海陵区', '1', '321200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321203', '高港区', '1', '321200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321281', '兴化市', '1', '321200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321282', '靖江市', '1', '321200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321283', '泰兴市', '1', '321200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321284', '姜堰市', '1', '321200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321300', '宿迁市', '1', '320000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('321301', '市辖区', '1', '321300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321302', '宿城区', '1', '321300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321311', '宿豫区', '1', '321300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321322', '沭阳县', '1', '321300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321323', '泗阳县', '1', '321300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('321324', '泗洪县', '1', '321300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330000', '浙江省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('330100', '杭州市', '1', '330000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('330101', '市辖区', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330102', '上城区', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330103', '下城区', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330104', '江干区', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330105', '拱墅区', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330106', '西湖区', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330108', '滨江区', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330109', '萧山区', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330110', '余杭区', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330122', '桐庐县', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330127', '淳安县', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330182', '建德市', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330183', '富阳市', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330185', '临安市', '1', '330100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330200', '宁波市', '1', '330000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('330201', '市辖区', '1', '330200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330203', '海曙区', '1', '330200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330204', '江东区', '1', '330200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330205', '江北区', '1', '330200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330206', '北仑区', '1', '330200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330211', '镇海区', '1', '330200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330212', '鄞州区', '1', '330200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330225', '象山县', '1', '330200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330226', '宁海县', '1', '330200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330281', '余姚市', '1', '330200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330282', '慈溪市', '1', '330200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330283', '奉化市', '1', '330200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330300', '温州市', '1', '330000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('330301', '市辖区', '1', '330300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330302', '鹿城区', '1', '330300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330303', '龙湾区', '1', '330300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330304', '瓯海区', '1', '330300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330322', '洞头县', '1', '330300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330324', '永嘉县', '1', '330300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330326', '平阳县', '1', '330300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330327', '苍南县', '1', '330300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330328', '文成县', '1', '330300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330329', '泰顺县', '1', '330300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330381', '瑞安市', '1', '330300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330382', '乐清市', '1', '330300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330400', '嘉兴市', '1', '330000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('330401', '市辖区', '1', '330400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330402', '南湖区', '1', '330400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330411', '秀洲区', '1', '330400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330421', '嘉善县', '1', '330400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330424', '海盐县', '1', '330400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330481', '海宁市', '1', '330400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330482', '平湖市', '1', '330400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330483', '桐乡市', '1', '330400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330500', '湖州市', '1', '330000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('330501', '市辖区', '1', '330500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330502', '吴兴区', '1', '330500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330503', '南浔区', '1', '330500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330521', '德清县', '1', '330500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330522', '长兴县', '1', '330500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330523', '安吉县', '1', '330500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330600', '绍兴市', '1', '330000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('330601', '市辖区', '1', '330600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330602', '越城区', '1', '330600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330621', '绍兴县', '1', '330600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330624', '新昌县', '1', '330600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330681', '诸暨市', '1', '330600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330682', '上虞市', '1', '330600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330683', '嵊州市', '1', '330600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330700', '金华市', '1', '330000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('330701', '市辖区', '1', '330700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330702', '婺城区', '1', '330700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330703', '金东区', '1', '330700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330723', '武义县', '1', '330700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330726', '浦江县', '1', '330700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330727', '磐安县', '1', '330700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330781', '兰溪市', '1', '330700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330782', '义乌市', '1', '330700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330783', '东阳市', '1', '330700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330784', '永康市', '1', '330700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330800', '衢州市', '1', '330000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('330801', '市辖区', '1', '330800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330802', '柯城区', '1', '330800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330803', '衢江区', '1', '330800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330822', '常山县', '1', '330800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330824', '开化县', '1', '330800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330825', '龙游县', '1', '330800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330881', '江山市', '1', '330800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330900', '舟山市', '1', '330000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('330901', '市辖区', '1', '330900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330902', '定海区', '1', '330900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330903', '普陀区', '1', '330900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330921', '岱山县', '1', '330900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('330922', '嵊泗县', '1', '330900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331000', '台州市', '1', '330000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('331001', '市辖区', '1', '331000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331002', '椒江区', '1', '331000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331003', '黄岩区', '1', '331000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331004', '路桥区', '1', '331000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331021', '玉环县', '1', '331000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331022', '三门县', '1', '331000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331023', '天台县', '1', '331000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331024', '仙居县', '1', '331000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331081', '温岭市', '1', '331000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331082', '临海市', '1', '331000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331100', '丽水市', '1', '330000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('331101', '市辖区', '1', '331100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331102', '莲都区', '1', '331100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331121', '青田县', '1', '331100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331122', '缙云县', '1', '331100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331123', '遂昌县', '1', '331100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331124', '松阳县', '1', '331100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331125', '云和县', '1', '331100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331126', '庆元县', '1', '331100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331127', '景宁畲族自治县', '1', '331100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('331181', '龙泉市', '1', '331100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340000', '安徽省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('340100', '合肥市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('340101', '市辖区', '1', '340100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340102', '瑶海区', '1', '340100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340103', '庐阳区', '1', '340100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340104', '蜀山区', '1', '340100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340111', '包河区', '1', '340100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340121', '长丰县', '1', '340100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340122', '肥东县', '1', '340100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340123', '肥西县', '1', '340100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340200', '芜湖市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('340201', '市辖区', '1', '340200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340202', '镜湖区', '1', '340200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340203', '弋江区', '1', '340200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340207', '鸠江区', '1', '340200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340208', '三山区', '1', '340200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340221', '芜湖县', '1', '340200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340222', '繁昌县', '1', '340200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340223', '南陵县', '1', '340200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340300', '蚌埠市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('340301', '市辖区', '1', '340300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340302', '龙子湖区', '1', '340300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340303', '蚌山区', '1', '340300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340304', '禹会区', '1', '340300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340311', '淮上区', '1', '340300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340321', '怀远县', '1', '340300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340322', '五河县', '1', '340300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340323', '固镇县', '1', '340300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340400', '淮南市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('340401', '市辖区', '1', '340400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340402', '大通区', '1', '340400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340403', '田家庵区', '1', '340400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340404', '谢家集区', '1', '340400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340405', '八公山区', '1', '340400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340406', '潘集区', '1', '340400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340421', '凤台县', '1', '340400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340500', '马鞍山市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('340501', '市辖区', '1', '340500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340502', '金家庄区', '1', '340500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340503', '花山区', '1', '340500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340504', '雨山区', '1', '340500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340521', '当涂县', '1', '340500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340600', '淮北市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('340601', '市辖区', '1', '340600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340602', '杜集区', '1', '340600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340603', '相山区', '1', '340600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340604', '烈山区', '1', '340600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340621', '濉溪县', '1', '340600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340700', '铜陵市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('340701', '市辖区', '1', '340700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340702', '铜官山区', '1', '340700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340703', '狮子山区', '1', '340700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340711', '郊区', '1', '340700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340721', '铜陵县', '1', '340700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340800', '安庆市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('340801', '市辖区', '1', '340800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340802', '迎江区', '1', '340800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340803', '大观区', '1', '340800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340811', '宜秀区', '1', '340800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340822', '怀宁县', '1', '340800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340823', '枞阳县', '1', '340800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340824', '潜山县', '1', '340800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340825', '太湖县', '1', '340800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340826', '宿松县', '1', '340800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340827', '望江县', '1', '340800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340828', '岳西县', '1', '340800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('340881', '桐城市', '1', '340800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341000', '黄山市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('341001', '市辖区', '1', '341000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341002', '屯溪区', '1', '341000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341003', '黄山区', '1', '341000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341004', '徽州区', '1', '341000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341021', '歙县', '1', '341000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341022', '休宁县', '1', '341000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341023', '黟县', '1', '341000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341024', '祁门县', '1', '341000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341100', '滁州市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('341101', '市辖区', '1', '341100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341102', '琅琊区', '1', '341100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341103', '南谯区', '1', '341100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341122', '来安县', '1', '341100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341124', '全椒县', '1', '341100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341125', '定远县', '1', '341100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341126', '凤阳县', '1', '341100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341181', '天长市', '1', '341100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341182', '明光市', '1', '341100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341200', '阜阳市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('341201', '市辖区', '1', '341200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341202', '颍州区', '1', '341200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341203', '颍东区', '1', '341200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341204', '颍泉区', '1', '341200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341221', '临泉县', '1', '341200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341222', '太和县', '1', '341200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341225', '阜南县', '1', '341200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341226', '颍上县', '1', '341200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341282', '界首市', '1', '341200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341300', '宿州市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('341301', '市辖区', '1', '341300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341302', '埇桥区', '1', '341300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341321', '砀山县', '1', '341300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341322', '萧县', '1', '341300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341323', '灵璧县', '1', '341300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341324', '泗县', '1', '341300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341400', '巢湖市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('341401', '市辖区', '1', '341400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341402', '居巢区', '1', '341400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341421', '庐江县', '1', '341400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341422', '无为县', '1', '341400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341423', '含山县', '1', '341400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341424', '和县', '1', '341400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341500', '六安市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('341501', '市辖区', '1', '341500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341502', '金安区', '1', '341500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341503', '裕安区', '1', '341500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341521', '寿县', '1', '341500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341522', '霍邱县', '1', '341500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341523', '舒城县', '1', '341500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341524', '金寨县', '1', '341500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341525', '霍山县', '1', '341500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341600', '亳州市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('341601', '市辖区', '1', '341600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341602', '谯城区', '1', '341600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341621', '涡阳县', '1', '341600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341622', '蒙城县', '1', '341600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341623', '利辛县', '1', '341600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341700', '池州市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('341701', '市辖区', '1', '341700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341702', '贵池区', '1', '341700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341721', '东至县', '1', '341700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341722', '石台县', '1', '341700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341723', '青阳县', '1', '341700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341800', '宣城市', '1', '340000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('341801', '市辖区', '1', '341800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341802', '宣州区', '1', '341800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341821', '郎溪县', '1', '341800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341822', '广德县', '1', '341800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341823', '泾县', '1', '341800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341824', '绩溪县', '1', '341800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341825', '旌德县', '1', '341800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('341881', '宁国市', '1', '341800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350000', '福建省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('350100', '福州市', '1', '350000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('350101', '市辖区', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350102', '鼓楼区', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350103', '台江区', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350104', '仓山区', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350105', '马尾区', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350111', '晋安区', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350121', '闽侯县', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350122', '连江县', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350123', '罗源县', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350124', '闽清县', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350125', '永泰县', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350128', '平潭县', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350181', '福清市', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350182', '长乐市', '1', '350100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350200', '厦门市', '1', '350000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('350201', '市辖区', '1', '350200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350203', '思明区', '1', '350200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350205', '海沧区', '1', '350200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350206', '湖里区', '1', '350200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350211', '集美区', '1', '350200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350212', '同安区', '1', '350200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350213', '翔安区', '1', '350200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350300', '莆田市', '1', '350000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('350301', '市辖区', '1', '350300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350302', '城厢区', '1', '350300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350303', '涵江区', '1', '350300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350304', '荔城区', '1', '350300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350305', '秀屿区', '1', '350300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350322', '仙游县', '1', '350300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350400', '三明市', '1', '350000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('350401', '市辖区', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350402', '梅列区', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350403', '三元区', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350421', '明溪县', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350423', '清流县', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350424', '宁化县', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350425', '大田县', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350426', '尤溪县', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350427', '沙县', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350428', '将乐县', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350429', '泰宁县', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350430', '建宁县', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350481', '永安市', '1', '350400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350500', '泉州市', '1', '350000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('350501', '市辖区', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350502', '鲤城区', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350503', '丰泽区', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350504', '洛江区', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350505', '泉港区', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350521', '惠安县', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350524', '安溪县', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350525', '永春县', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350526', '德化县', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350527', '金门县', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350581', '石狮市', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350582', '晋江市', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350583', '南安市', '1', '350500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350600', '漳州市', '1', '350000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('350601', '市辖区', '1', '350600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350602', '芗城区', '1', '350600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350603', '龙文区', '1', '350600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350622', '云霄县', '1', '350600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350623', '漳浦县', '1', '350600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350624', '诏安县', '1', '350600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350625', '长泰县', '1', '350600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350626', '东山县', '1', '350600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350627', '南靖县', '1', '350600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350628', '平和县', '1', '350600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350629', '华安县', '1', '350600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350681', '龙海市', '1', '350600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350700', '南平市', '1', '350000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('350701', '市辖区', '1', '350700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350702', '延平区', '1', '350700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350721', '顺昌县', '1', '350700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350722', '浦城县', '1', '350700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350723', '光泽县', '1', '350700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350724', '松溪县', '1', '350700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350725', '政和县', '1', '350700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350781', '邵武市', '1', '350700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350782', '武夷山市', '1', '350700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350783', '建瓯市', '1', '350700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350784', '建阳市', '1', '350700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350800', '龙岩市', '1', '350000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('350801', '市辖区', '1', '350800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350802', '新罗区', '1', '350800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350821', '长汀县', '1', '350800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350822', '永定县', '1', '350800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350823', '上杭县', '1', '350800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350824', '武平县', '1', '350800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350825', '连城县', '1', '350800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350881', '漳平市', '1', '350800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350900', '宁德市', '1', '350000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('350901', '市辖区', '1', '350900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350902', '蕉城区', '1', '350900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350921', '霞浦县', '1', '350900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350922', '古田县', '1', '350900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350923', '屏南县', '1', '350900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350924', '寿宁县', '1', '350900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350925', '周宁县', '1', '350900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350926', '柘荣县', '1', '350900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350981', '福安市', '1', '350900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('350982', '福鼎市', '1', '350900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360000', '江西省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('360100', '南昌市', '1', '360000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('360101', '市辖区', '1', '360100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360102', '东湖区', '1', '360100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360103', '西湖区', '1', '360100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360104', '青云谱区', '1', '360100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360105', '湾里区', '1', '360100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360111', '青山湖区', '1', '360100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360121', '南昌县', '1', '360100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360122', '新建县', '1', '360100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360123', '安义县', '1', '360100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360124', '进贤县', '1', '360100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360200', '景德镇市', '1', '360000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('360201', '市辖区', '1', '360200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360202', '昌江区', '1', '360200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360203', '珠山区', '1', '360200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360222', '浮梁县', '1', '360200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360281', '乐平市', '1', '360200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360300', '萍乡市', '1', '360000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('360301', '市辖区', '1', '360300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360302', '安源区', '1', '360300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360313', '湘东区', '1', '360300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360321', '莲花县', '1', '360300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360322', '上栗县', '1', '360300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360323', '芦溪县', '1', '360300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360400', '九江市', '1', '360000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('360401', '市辖区', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360402', '庐山区', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360403', '浔阳区', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360421', '九江县', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360423', '武宁县', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360424', '修水县', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360425', '永修县', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360426', '德安县', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360427', '星子县', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360428', '都昌县', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360429', '湖口县', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360430', '彭泽县', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360481', '瑞昌市', '1', '360400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360500', '新余市', '1', '360000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('360501', '市辖区', '1', '360500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360502', '渝水区', '1', '360500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360521', '分宜县', '1', '360500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360600', '鹰潭市', '1', '360000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('360601', '市辖区', '1', '360600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360602', '月湖区', '1', '360600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360622', '余江县', '1', '360600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360681', '贵溪市', '1', '360600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360700', '赣州市', '1', '360000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('360701', '市辖区', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360702', '章贡区', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360721', '赣县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360722', '信丰县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360723', '大余县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360724', '上犹县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360725', '崇义县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360726', '安远县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360727', '龙南县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360728', '定南县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360729', '全南县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360730', '宁都县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360731', '于都县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360732', '兴国县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360733', '会昌县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360734', '寻乌县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360735', '石城县', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360781', '瑞金市', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360782', '南康市', '1', '360700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360800', '吉安市', '1', '360000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('360801', '市辖区', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360802', '吉州区', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360803', '青原区', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360821', '吉安县', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360822', '吉水县', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360823', '峡江县', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360824', '新干县', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360825', '永丰县', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360826', '泰和县', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360827', '遂川县', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360828', '万安县', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360829', '安福县', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360830', '永新县', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360881', '井冈山市', '1', '360800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360900', '宜春市', '1', '360000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('360901', '市辖区', '1', '360900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360902', '袁州区', '1', '360900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360921', '奉新县', '1', '360900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360922', '万载县', '1', '360900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360923', '上高县', '1', '360900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360924', '宜丰县', '1', '360900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360925', '靖安县', '1', '360900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360926', '铜鼓县', '1', '360900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360981', '丰城市', '1', '360900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360982', '樟树市', '1', '360900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('360983', '高安市', '1', '360900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361000', '抚州市', '1', '360000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('361001', '市辖区', '1', '361000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361002', '临川区', '1', '361000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361021', '南城县', '1', '361000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361022', '黎川县', '1', '361000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361023', '南丰县', '1', '361000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361024', '崇仁县', '1', '361000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361025', '乐安县', '1', '361000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361026', '宜黄县', '1', '361000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361027', '金溪县', '1', '361000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361028', '资溪县', '1', '361000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361029', '东乡县', '1', '361000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361030', '广昌县', '1', '361000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361100', '上饶市', '1', '360000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('361101', '市辖区', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361102', '信州区', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361121', '上饶县', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361122', '广丰县', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361123', '玉山县', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361124', '铅山县', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361125', '横峰县', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361126', '弋阳县', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361127', '余干县', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361128', '鄱阳县', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361129', '万年县', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361130', '婺源县', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('361181', '德兴市', '1', '361100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370000', '山东省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('370100', '济南市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('370101', '市辖区', '1', '370100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370102', '历下区', '1', '370100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370103', '市中区', '1', '370100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370104', '槐荫区', '1', '370100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370105', '天桥区', '1', '370100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370112', '历城区', '1', '370100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370113', '长清区', '1', '370100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370124', '平阴县', '1', '370100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370125', '济阳县', '1', '370100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370126', '商河县', '1', '370100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370181', '章丘市', '1', '370100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370200', '青岛市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('370201', '市辖区', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370202', '市南区', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370203', '市北区', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370205', '四方区', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370211', '黄岛区', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370212', '崂山区', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370213', '李沧区', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370214', '城阳区', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370281', '胶州市', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370282', '即墨市', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370283', '平度市', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370284', '胶南市', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370285', '莱西市', '1', '370200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370300', '淄博市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('370301', '市辖区', '1', '370300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370302', '淄川区', '1', '370300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370303', '张店区', '1', '370300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370304', '博山区', '1', '370300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370305', '临淄区', '1', '370300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370306', '周村区', '1', '370300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370321', '桓台县', '1', '370300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370322', '高青县', '1', '370300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370323', '沂源县', '1', '370300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370400', '枣庄市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('370401', '市辖区', '1', '370400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370402', '市中区', '1', '370400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370403', '薛城区', '1', '370400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370404', '峄城区', '1', '370400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370405', '台儿庄区', '1', '370400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370406', '山亭区', '1', '370400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370481', '滕州市', '1', '370400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370500', '东营市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('370501', '市辖区', '1', '370500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370502', '东营区', '1', '370500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370503', '河口区', '1', '370500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370521', '垦利县', '1', '370500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370522', '利津县', '1', '370500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370523', '广饶县', '1', '370500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370600', '烟台市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('370601', '市辖区', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370602', '芝罘区', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370611', '福山区', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370612', '牟平区', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370613', '莱山区', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370634', '长岛县', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370681', '龙口市', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370682', '莱阳市', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370683', '莱州市', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370684', '蓬莱市', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370685', '招远市', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370686', '栖霞市', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370687', '海阳市', '1', '370600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370700', '潍坊市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('370701', '市辖区', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370702', '潍城区', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370703', '寒亭区', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370704', '坊子区', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370705', '奎文区', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370724', '临朐县', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370725', '昌乐县', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370781', '青州市', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370782', '诸城市', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370783', '寿光市', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370784', '安丘市', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370785', '高密市', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370786', '昌邑市', '1', '370700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370800', '济宁市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('370801', '市辖区', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370802', '市中区', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370811', '任城区', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370826', '微山县', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370827', '鱼台县', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370828', '金乡县', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370829', '嘉祥县', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370830', '汶上县', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370831', '泗水县', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370832', '梁山县', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370881', '曲阜市', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370882', '兖州市', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370883', '邹城市', '1', '370800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370900', '泰安市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('370901', '市辖区', '1', '370900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370902', '泰山区', '1', '370900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370911', '岱岳区', '1', '370900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370921', '宁阳县', '1', '370900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370923', '东平县', '1', '370900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370982', '新泰市', '1', '370900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('370983', '肥城市', '1', '370900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371000', '威海市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('371001', '市辖区', '1', '371000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371002', '环翠区', '1', '371000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371081', '文登市', '1', '371000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371082', '荣成市', '1', '371000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371083', '乳山市', '1', '371000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371100', '日照市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('371101', '市辖区', '1', '371100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371102', '东港区', '1', '371100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371103', '岚山区', '1', '371100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371121', '五莲县', '1', '371100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371122', '莒县', '1', '371100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371200', '莱芜市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('371201', '市辖区', '1', '371200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371202', '莱城区', '1', '371200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371203', '钢城区', '1', '371200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371300', '临沂市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('371301', '市辖区', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371302', '兰山区', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371311', '罗庄区', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371312', '河东区', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371321', '沂南县', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371322', '郯城县', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371323', '沂水县', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371324', '苍山县', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371325', '费县', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371326', '平邑县', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371327', '莒南县', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371328', '蒙阴县', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371329', '临沭县', '1', '371300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371400', '德州市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('371401', '市辖区', '1', '371400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371402', '德城区', '1', '371400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371403', '陵城区', '1', '371400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371422', '宁津县', '1', '371400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371423', '庆云县', '1', '371400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371424', '临邑县', '1', '371400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371425', '齐河县', '1', '371400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371426', '平原县', '1', '371400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371427', '夏津县', '1', '371400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371428', '武城县', '1', '371400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371481', '乐陵市', '1', '371400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371482', '禹城市', '1', '371400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371500', '聊城市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('371501', '市辖区', '1', '371500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371502', '东昌府区', '1', '371500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371521', '阳谷县', '1', '371500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371522', '莘县', '1', '371500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371523', '茌平县', '1', '371500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371524', '东阿县', '1', '371500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371525', '冠县', '1', '371500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371526', '高唐县', '1', '371500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371581', '临清市', '1', '371500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371600', '滨州市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('371601', '市辖区', '1', '371600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371602', '滨城区', '1', '371600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371621', '惠民县', '1', '371600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371622', '阳信县', '1', '371600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371623', '无棣县', '1', '371600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371624', '沾化县', '1', '371600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371625', '博兴县', '1', '371600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371626', '邹平县', '1', '371600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371700', '菏泽市', '1', '370000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('371701', '市辖区', '1', '371700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371702', '牡丹区', '1', '371700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371721', '曹县', '1', '371700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371722', '单县', '1', '371700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371723', '成武县', '1', '371700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371724', '巨野县', '1', '371700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371725', '郓城县', '1', '371700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371726', '鄄城县', '1', '371700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371727', '定陶县', '1', '371700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('371728', '东明县', '1', '371700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410000', '河南省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('410100', '郑州市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('410101', '市辖区', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410102', '中原区', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410103', '二七区', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410104', '管城回族区', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410105', '金水区', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410106', '上街区', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410108', '惠济区', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410122', '中牟县', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410181', '巩义市', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410182', '荥阳市', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410183', '新密市', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410184', '新郑市', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410185', '登封市', '1', '410100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410200', '开封市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('410201', '市辖区', '1', '410200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410202', '龙亭区', '1', '410200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410203', '顺河回族区', '1', '410200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410204', '鼓楼区', '1', '410200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410205', '禹王台区', '1', '410200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410211', '金明区', '1', '410200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410221', '杞县', '1', '410200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410222', '通许县', '1', '410200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410223', '尉氏县', '1', '410200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410224', '开封县', '1', '410200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410225', '兰考县', '1', '410200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410300', '洛阳市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('410301', '市辖区', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410302', '老城区', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410303', '西工区', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410304', '瀍河回族区', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410305', '涧西区', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410306', '吉利区', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410311', '洛龙区', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410322', '孟津县', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410323', '新安县', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410324', '栾川县', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410325', '嵩县', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410326', '汝阳县', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410327', '宜阳县', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410328', '洛宁县', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410329', '伊川县', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410381', '偃师市', '1', '410300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410400', '平顶山市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('410401', '市辖区', '1', '410400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410402', '新华区', '1', '410400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410403', '卫东区', '1', '410400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410404', '石龙区', '1', '410400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410411', '湛河区', '1', '410400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410421', '宝丰县', '1', '410400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410422', '叶县', '1', '410400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410423', '鲁山县', '1', '410400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410425', '郏县', '1', '410400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410481', '舞钢市', '1', '410400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410482', '汝州市', '1', '410400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410500', '安阳市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('410501', '市辖区', '1', '410500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410502', '文峰区', '1', '410500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410503', '北关区', '1', '410500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410505', '殷都区', '1', '410500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410506', '龙安区', '1', '410500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410522', '安阳县', '1', '410500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410523', '汤阴县', '1', '410500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410526', '滑县', '1', '410500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410527', '内黄县', '1', '410500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410581', '林州市', '1', '410500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410600', '鹤壁市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('410601', '市辖区', '1', '410600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410602', '鹤山区', '1', '410600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410603', '山城区', '1', '410600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410611', '淇滨区', '1', '410600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410621', '浚县', '1', '410600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410622', '淇县', '1', '410600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410700', '新乡市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('410701', '市辖区', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410702', '红旗区', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410703', '卫滨区', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410704', '凤泉区', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410711', '牧野区', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410721', '新乡县', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410724', '获嘉县', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410725', '原阳县', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410726', '延津县', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410727', '封丘县', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410728', '长垣县', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410781', '卫辉市', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410782', '辉县市', '1', '410700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410800', '焦作市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('410801', '市辖区', '1', '410800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410802', '解放区', '1', '410800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410803', '中站区', '1', '410800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410804', '马村区', '1', '410800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410811', '山阳区', '1', '410800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410821', '修武县', '1', '410800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410822', '博爱县', '1', '410800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410823', '武陟县', '1', '410800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410825', '温县', '1', '410800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410882', '沁阳市', '1', '410800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410883', '孟州市', '1', '410800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410900', '濮阳市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('410901', '市辖区', '1', '410900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410902', '华龙区', '1', '410900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410922', '清丰县', '1', '410900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410923', '南乐县', '1', '410900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410926', '范县', '1', '410900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410927', '台前县', '1', '410900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('410928', '濮阳县', '1', '410900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411000', '许昌市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('411001', '市辖区', '1', '411000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411002', '魏都区', '1', '411000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411023', '许昌县', '1', '411000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411024', '鄢陵县', '1', '411000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411025', '襄城县', '1', '411000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411081', '禹州市', '1', '411000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411082', '长葛市', '1', '411000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411100', '漯河市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('411101', '市辖区', '1', '411100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411102', '源汇区', '1', '411100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411103', '郾城区', '1', '411100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411104', '召陵区', '1', '411100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411121', '舞阳县', '1', '411100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411122', '临颍县', '1', '411100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411200', '三门峡市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('411201', '市辖区', '1', '411200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411202', '湖滨区', '1', '411200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411221', '渑池县', '1', '411200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411222', '陕县', '1', '411200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411224', '卢氏县', '1', '411200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411281', '义马市', '1', '411200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411282', '灵宝市', '1', '411200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411300', '南阳市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('411301', '市辖区', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411302', '宛城区', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411303', '卧龙区', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411321', '南召县', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411322', '方城县', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411323', '西峡县', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411324', '镇平县', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411325', '内乡县', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411326', '淅川县', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411327', '社旗县', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411328', '唐河县', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411329', '新野县', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411330', '桐柏县', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411381', '邓州市', '1', '411300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411400', '商丘市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('411401', '市辖区', '1', '411400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411402', '梁园区', '1', '411400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411403', '睢阳区', '1', '411400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411421', '民权县', '1', '411400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411422', '睢县', '1', '411400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411423', '宁陵县', '1', '411400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411424', '柘城县', '1', '411400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411425', '虞城县', '1', '411400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411426', '夏邑县', '1', '411400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411481', '永城市', '1', '411400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411500', '信阳市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('411501', '市辖区', '1', '411500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411502', '浉河区', '1', '411500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411503', '平桥区', '1', '411500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411521', '罗山县', '1', '411500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411522', '光山县', '1', '411500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411523', '新县', '1', '411500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411524', '商城县', '1', '411500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411525', '固始县', '1', '411500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411526', '潢川县', '1', '411500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411527', '淮滨县', '1', '411500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411528', '息县', '1', '411500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411600', '周口市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('411601', '市辖区', '1', '411600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411602', '川汇区', '1', '411600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411621', '扶沟县', '1', '411600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411622', '西华县', '1', '411600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411623', '商水县', '1', '411600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411624', '沈丘县', '1', '411600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411625', '郸城县', '1', '411600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411626', '淮阳县', '1', '411600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411627', '太康县', '1', '411600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411628', '鹿邑县', '1', '411600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411681', '项城市', '1', '411600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411700', '驻马店市', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('411701', '市辖区', '1', '411700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411702', '驿城区', '1', '411700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411721', '西平县', '1', '411700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411722', '上蔡县', '1', '411700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411723', '平舆县', '1', '411700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411724', '正阳县', '1', '411700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411725', '确山县', '1', '411700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411726', '泌阳县', '1', '411700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411727', '汝南县', '1', '411700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411728', '遂平县', '1', '411700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('411729', '新蔡县', '1', '411700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('419000', '省直辖县级行政区划', '1', '410000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('419001', '济源市', '1', '419000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420000', '湖北省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('420100', '武汉市', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('420101', '市辖区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420102', '江岸区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420103', '江汉区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420104', '硚口区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420105', '汉阳区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420106', '武昌区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420107', '青山区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420111', '洪山区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420112', '东西湖区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420113', '汉南区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420114', '蔡甸区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420115', '江夏区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420116', '黄陂区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420117', '新洲区', '1', '420100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420200', '黄石市', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('420201', '市辖区', '1', '420200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420202', '黄石港区', '1', '420200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420203', '西塞山区', '1', '420200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420204', '下陆区', '1', '420200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420205', '铁山区', '1', '420200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420222', '阳新县', '1', '420200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420281', '大冶市', '1', '420200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420300', '十堰市', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('420301', '市辖区', '1', '420300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420302', '茅箭区', '1', '420300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420303', '张湾区', '1', '420300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420321', '郧县', '1', '420300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420322', '郧西县', '1', '420300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420323', '竹山县', '1', '420300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420324', '竹溪县', '1', '420300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420325', '房县', '1', '420300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420381', '丹江口市', '1', '420300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420500', '宜昌市', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('420501', '市辖区', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420502', '西陵区', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420503', '伍家岗区', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420504', '点军区', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420505', '猇亭区', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420506', '夷陵区', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420525', '远安县', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420526', '兴山县', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420527', '秭归县', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420528', '长阳土家族自治县', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420529', '五峰土家族自治县', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420581', '宜都市', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420582', '当阳市', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420583', '枝江市', '1', '420500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420600', '襄樊市', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('420601', '市辖区', '1', '420600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420602', '襄城区', '1', '420600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420606', '樊城区', '1', '420600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420607', '襄阳区', '1', '420600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420624', '南漳县', '1', '420600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420625', '谷城县', '1', '420600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420626', '保康县', '1', '420600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420682', '老河口市', '1', '420600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420683', '枣阳市', '1', '420600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420684', '宜城市', '1', '420600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420700', '鄂州市', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('420701', '市辖区', '1', '420700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420702', '梁子湖区', '1', '420700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420703', '华容区', '1', '420700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420704', '鄂城区', '1', '420700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420800', '荆门市', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('420801', '市辖区', '1', '420800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420802', '东宝区', '1', '420800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420804', '掇刀区', '1', '420800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420821', '京山县', '1', '420800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420822', '沙洋县', '1', '420800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420881', '钟祥市', '1', '420800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420900', '孝感市', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('420901', '市辖区', '1', '420900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420902', '孝南区', '1', '420900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420921', '孝昌县', '1', '420900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420922', '大悟县', '1', '420900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420923', '云梦县', '1', '420900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420981', '应城市', '1', '420900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420982', '安陆市', '1', '420900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('420984', '汉川市', '1', '420900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421000', '荆州市', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('421001', '市辖区', '1', '421000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421002', '沙市区', '1', '421000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421003', '荆州区', '1', '421000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421022', '公安县', '1', '421000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421023', '监利县', '1', '421000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421024', '江陵县', '1', '421000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421081', '石首市', '1', '421000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421083', '洪湖市', '1', '421000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421087', '松滋市', '1', '421000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421100', '黄冈市', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('421101', '市辖区', '1', '421100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421102', '黄州区', '1', '421100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421121', '团风县', '1', '421100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421122', '红安县', '1', '421100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421123', '罗田县', '1', '421100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421124', '英山县', '1', '421100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421125', '浠水县', '1', '421100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421126', '蕲春县', '1', '421100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421127', '黄梅县', '1', '421100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421181', '麻城市', '1', '421100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421182', '武穴市', '1', '421100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421200', '咸宁市', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('421201', '市辖区', '1', '421200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421202', '咸安区', '1', '421200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421221', '嘉鱼县', '1', '421200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421222', '通城县', '1', '421200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421223', '崇阳县', '1', '421200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421224', '通山县', '1', '421200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421281', '赤壁市', '1', '421200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421300', '随州市', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('421301', '市辖区', '1', '421300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421303', '曾都区', '1', '421300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421321', '随县', '1', '421300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('421381', '广水市', '1', '421300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('422800', '恩施土家族苗族自治州', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('422801', '恩施市', '1', '422800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('422802', '利川市', '1', '422800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('422822', '建始县', '1', '422800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('422823', '巴东县', '1', '422800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('422825', '宣恩县', '1', '422800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('422826', '咸丰县', '1', '422800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('422827', '来凤县', '1', '422800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('422828', '鹤峰县', '1', '422800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('429000', '省直辖县级行政区划', '1', '420000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('429004', '仙桃市', '1', '429000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('429005', '潜江市', '1', '429000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('429006', '天门市', '1', '429000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('429021', '神农架林区', '1', '429000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430000', '湖南省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('430100', '长沙市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('430101', '市辖区', '1', '430100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430102', '芙蓉区', '1', '430100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430103', '天心区', '1', '430100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430104', '岳麓区', '1', '430100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430105', '开福区', '1', '430100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430111', '雨花区', '1', '430100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430121', '长沙县', '1', '430100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430122', '望城县', '1', '430100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430124', '宁乡县', '1', '430100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430181', '浏阳市', '1', '430100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430200', '株洲市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('430201', '市辖区', '1', '430200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430202', '荷塘区', '1', '430200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430203', '芦淞区', '1', '430200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430204', '石峰区', '1', '430200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430211', '天元区', '1', '430200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430221', '株洲县', '1', '430200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430223', '攸县', '1', '430200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430224', '茶陵县', '1', '430200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430225', '炎陵县', '1', '430200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430281', '醴陵市', '1', '430200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430300', '湘潭市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('430301', '市辖区', '1', '430300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430302', '雨湖区', '1', '430300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430304', '岳塘区', '1', '430300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430321', '湘潭县', '1', '430300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430381', '湘乡市', '1', '430300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430382', '韶山市', '1', '430300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430400', '衡阳市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('430401', '市辖区', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430405', '珠晖区', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430406', '雁峰区', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430407', '石鼓区', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430408', '蒸湘区', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430412', '南岳区', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430421', '衡阳县', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430422', '衡南县', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430423', '衡山县', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430424', '衡东县', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430426', '祁东县', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430481', '耒阳市', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430482', '常宁市', '1', '430400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430500', '邵阳市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('430501', '市辖区', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430502', '双清区', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430503', '大祥区', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430511', '北塔区', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430521', '邵东县', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430522', '新邵县', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430523', '邵阳县', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430524', '隆回县', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430525', '洞口县', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430527', '绥宁县', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430528', '新宁县', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430529', '城步苗族自治县', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430581', '武冈市', '1', '430500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430600', '岳阳市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('430601', '市辖区', '1', '430600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430602', '岳阳楼区', '1', '430600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430603', '云溪区', '1', '430600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430611', '君山区', '1', '430600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430621', '岳阳县', '1', '430600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430623', '华容县', '1', '430600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430624', '湘阴县', '1', '430600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430626', '平江县', '1', '430600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430681', '汨罗市', '1', '430600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430682', '临湘市', '1', '430600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430700', '常德市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('430701', '市辖区', '1', '430700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430702', '武陵区', '1', '430700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430703', '鼎城区', '1', '430700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430721', '安乡县', '1', '430700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430722', '汉寿县', '1', '430700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430723', '澧县', '1', '430700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430724', '临澧县', '1', '430700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430725', '桃源县', '1', '430700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430726', '石门县', '1', '430700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430781', '津市市', '1', '430700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430800', '张家界市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('430801', '市辖区', '1', '430800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430802', '永定区', '1', '430800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430811', '武陵源区', '1', '430800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430821', '慈利县', '1', '430800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430822', '桑植县', '1', '430800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430900', '益阳市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('430901', '市辖区', '1', '430900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430902', '资阳区', '1', '430900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430903', '赫山区', '1', '430900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430921', '南县', '1', '430900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430922', '桃江县', '1', '430900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430923', '安化县', '1', '430900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('430981', '沅江市', '1', '430900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431000', '郴州市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('431001', '市辖区', '1', '431000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431002', '北湖区', '1', '431000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431003', '苏仙区', '1', '431000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431021', '桂阳县', '1', '431000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431022', '宜章县', '1', '431000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431023', '永兴县', '1', '431000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431024', '嘉禾县', '1', '431000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431025', '临武县', '1', '431000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431026', '汝城县', '1', '431000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431027', '桂东县', '1', '431000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431028', '安仁县', '1', '431000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431081', '资兴市', '1', '431000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431100', '永州市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('431101', '市辖区', '1', '431100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431102', '零陵区', '1', '431100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431103', '冷水滩区', '1', '431100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431121', '祁阳县', '1', '431100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431122', '东安县', '1', '431100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431123', '双牌县', '1', '431100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431124', '道县', '1', '431100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431125', '江永县', '1', '431100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431126', '宁远县', '1', '431100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431127', '蓝山县', '1', '431100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431128', '新田县', '1', '431100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431129', '江华瑶族自治县', '1', '431100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431200', '怀化市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('431201', '市辖区', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431202', '鹤城区', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431221', '中方县', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431222', '沅陵县', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431223', '辰溪县', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431224', '溆浦县', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431225', '会同县', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431226', '麻阳苗族自治县', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431227', '新晃侗族自治县', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431228', '芷江侗族自治县', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431229', '靖州苗族侗族自治县', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431230', '通道侗族自治县', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431281', '洪江市', '1', '431200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431300', '娄底市', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('431301', '市辖区', '1', '431300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431302', '娄星区', '1', '431300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431321', '双峰县', '1', '431300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431322', '新化县', '1', '431300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431381', '冷水江市', '1', '431300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('431382', '涟源市', '1', '431300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('433100', '湘西土家族苗族自治州', '1', '430000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('433101', '吉首市', '1', '433100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('433122', '泸溪县', '1', '433100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('433123', '凤凰县', '1', '433100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('433124', '花垣县', '1', '433100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('433125', '保靖县', '1', '433100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('433126', '古丈县', '1', '433100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('433127', '永顺县', '1', '433100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('433130', '龙山县', '1', '433100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440000', '广东省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('440100', '广州市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('440101', '市辖区', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440103', '荔湾区', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440104', '越秀区', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440105', '海珠区', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440106', '天河区', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440111', '白云区', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440112', '黄埔区', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440113', '番禺区', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440114', '花都区', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440115', '南沙区', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440116', '萝岗区', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440183', '增城市', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440184', '从化市', '1', '440100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440200', '韶关市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('440201', '市辖区', '1', '440200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440203', '武江区', '1', '440200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440204', '浈江区', '1', '440200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440205', '曲江区', '1', '440200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440222', '始兴县', '1', '440200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440224', '仁化县', '1', '440200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440229', '翁源县', '1', '440200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440232', '乳源瑶族自治县', '1', '440200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440233', '新丰县', '1', '440200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440281', '乐昌市', '1', '440200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440282', '南雄市', '1', '440200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440300', '深圳市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('440301', '市辖区', '1', '440300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440303', '罗湖区', '1', '440300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440304', '福田区', '1', '440300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440305', '南山区', '1', '440300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440306', '宝安区', '1', '440300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440307', '龙岗区', '1', '440300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440308', '盐田区', '1', '440300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440400', '珠海市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('440401', '市辖区', '1', '440400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440402', '香洲区', '1', '440400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440403', '斗门区', '1', '440400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440404', '金湾区', '1', '440400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440500', '汕头市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('440501', '市辖区', '1', '440500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440507', '龙湖区', '1', '440500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440511', '金平区', '1', '440500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440512', '濠江区', '1', '440500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440513', '潮阳区', '1', '440500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440514', '潮南区', '1', '440500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440515', '澄海区', '1', '440500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440523', '南澳县', '1', '440500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440600', '佛山市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('440601', '市辖区', '1', '440600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440604', '禅城区', '1', '440600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440605', '南海区', '1', '440600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440606', '顺德区', '1', '440600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440607', '三水区', '1', '440600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440608', '高明区', '1', '440600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440700', '江门市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('440701', '市辖区', '1', '440700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440703', '蓬江区', '1', '440700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440704', '江海区', '1', '440700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440705', '新会区', '1', '440700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440781', '台山市', '1', '440700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440783', '开平市', '1', '440700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440784', '鹤山市', '1', '440700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440785', '恩平市', '1', '440700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440800', '湛江市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('440801', '市辖区', '1', '440800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440802', '赤坎区', '1', '440800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440803', '霞山区', '1', '440800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440804', '坡头区', '1', '440800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440811', '麻章区', '1', '440800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440823', '遂溪县', '1', '440800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440825', '徐闻县', '1', '440800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440881', '廉江市', '1', '440800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440882', '雷州市', '1', '440800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440883', '吴川市', '1', '440800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440900', '茂名市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('440901', '市辖区', '1', '440900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440902', '茂南区', '1', '440900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440903', '茂港区', '1', '440900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440923', '电白县', '1', '440900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440981', '高州市', '1', '440900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440982', '化州市', '1', '440900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('440983', '信宜市', '1', '440900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441200', '肇庆市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('441201', '市辖区', '1', '441200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441202', '端州区', '1', '441200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441203', '鼎湖区', '1', '441200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441223', '广宁县', '1', '441200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441224', '怀集县', '1', '441200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441225', '封开县', '1', '441200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441226', '德庆县', '1', '441200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441283', '高要市', '1', '441200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441284', '四会市', '1', '441200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441300', '惠州市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('441301', '市辖区', '1', '441300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441302', '惠城区', '1', '441300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441303', '惠阳区', '1', '441300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441322', '博罗县', '1', '441300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441323', '惠东县', '1', '441300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441324', '龙门县', '1', '441300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441400', '梅州市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('441401', '市辖区', '1', '441400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441402', '梅江区', '1', '441400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441421', '梅县', '1', '441400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441422', '大埔县', '1', '441400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441423', '丰顺县', '1', '441400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441424', '五华县', '1', '441400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441426', '平远县', '1', '441400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441427', '蕉岭县', '1', '441400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441481', '兴宁市', '1', '441400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441500', '汕尾市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('441501', '市辖区', '1', '441500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441502', '城区', '1', '441500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441521', '海丰县', '1', '441500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441523', '陆河县', '1', '441500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441581', '陆丰市', '1', '441500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441600', '河源市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('441601', '市辖区', '1', '441600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441602', '源城区', '1', '441600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441621', '紫金县', '1', '441600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441622', '龙川县', '1', '441600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441623', '连平县', '1', '441600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441624', '和平县', '1', '441600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441625', '东源县', '1', '441600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441700', '阳江市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('441701', '市辖区', '1', '441700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441702', '江城区', '1', '441700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441721', '阳西县', '1', '441700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441723', '阳东县', '1', '441700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441781', '阳春市', '1', '441700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441800', '清远市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('441801', '市辖区', '1', '441800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441802', '清城区', '1', '441800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441821', '佛冈县', '1', '441800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441823', '阳山县', '1', '441800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441825', '连山壮族瑶族自治县', '1', '441800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441826', '连南瑶族自治县', '1', '441800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441827', '清新县', '1', '441800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441881', '英德市', '1', '441800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441882', '连州市', '1', '441800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('441900', '东莞市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('442000', '中山市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('445100', '潮州市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('445101', '市辖区', '1', '445100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445102', '湘桥区', '1', '445100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445121', '潮安县', '1', '445100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445122', '饶平县', '1', '445100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445200', '揭阳市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('445201', '市辖区', '1', '445200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445202', '榕城区', '1', '445200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445221', '揭东县', '1', '445200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445222', '揭西县', '1', '445200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445224', '惠来县', '1', '445200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445281', '普宁市', '1', '445200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445300', '云浮市', '1', '440000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('445301', '市辖区', '1', '445300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445302', '云城区', '1', '445300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445321', '新兴县', '1', '445300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445322', '郁南县', '1', '445300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445323', '云安县', '1', '445300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('445381', '罗定市', '1', '445300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450000', '广西壮族自治区', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('450100', '南宁市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('450101', '市辖区', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450102', '兴宁区', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450103', '青秀区', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450105', '江南区', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450107', '西乡塘区', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450108', '良庆区', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450109', '邕宁区', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450122', '武鸣县', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450123', '隆安县', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450124', '马山县', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450125', '上林县', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450126', '宾阳县', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450127', '横县', '1', '450100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450200', '柳州市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('450201', '市辖区', '1', '450200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450202', '城中区', '1', '450200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450203', '鱼峰区', '1', '450200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450204', '柳南区', '1', '450200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450205', '柳北区', '1', '450200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450221', '柳江县', '1', '450200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450222', '柳城县', '1', '450200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450223', '鹿寨县', '1', '450200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450224', '融安县', '1', '450200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450225', '融水苗族自治县', '1', '450200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450226', '三江侗族自治县', '1', '450200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450300', '桂林市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('450301', '市辖区', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450302', '秀峰区', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450303', '叠彩区', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450304', '象山区', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450305', '七星区', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450311', '雁山区', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450321', '阳朔县', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450322', '临桂县', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450323', '灵川县', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450324', '全州县', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450325', '兴安县', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450326', '永福县', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450327', '灌阳县', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450328', '龙胜各族自治县', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450329', '资源县', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450330', '平乐县', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450331', '荔蒲县', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450332', '恭城瑶族自治县', '1', '450300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450400', '梧州市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('450401', '市辖区', '1', '450400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450403', '万秀区', '1', '450400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450404', '蝶山区', '1', '450400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450405', '长洲区', '1', '450400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450421', '苍梧县', '1', '450400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450422', '藤县', '1', '450400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450423', '蒙山县', '1', '450400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450481', '岑溪市', '1', '450400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450500', '北海市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('450501', '市辖区', '1', '450500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450502', '海城区', '1', '450500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450503', '银海区', '1', '450500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450512', '铁山港区', '1', '450500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450521', '合浦县', '1', '450500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450600', '防城港市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('450601', '市辖区', '1', '450600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450602', '港口区', '1', '450600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450603', '防城区', '1', '450600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450621', '上思县', '1', '450600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450681', '东兴市', '1', '450600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450700', '钦州市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('450701', '市辖区', '1', '450700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450702', '钦南区', '1', '450700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450703', '钦北区', '1', '450700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450721', '灵山县', '1', '450700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450722', '浦北县', '1', '450700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450800', '贵港市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('450801', '市辖区', '1', '450800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450802', '港北区', '1', '450800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450803', '港南区', '1', '450800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450804', '覃塘区', '1', '450800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450821', '平南县', '1', '450800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450881', '桂平市', '1', '450800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450900', '玉林市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('450901', '市辖区', '1', '450900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450902', '玉州区', '1', '450900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450921', '容县', '1', '450900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450922', '陆川县', '1', '450900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450923', '博白县', '1', '450900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450924', '兴业县', '1', '450900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('450981', '北流市', '1', '450900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451000', '百色市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('451001', '市辖区', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451002', '右江区', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451021', '田阳县', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451022', '田东县', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451023', '平果县', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451024', '德保县', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451025', '靖西县', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451026', '那坡县', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451027', '凌云县', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451028', '乐业县', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451029', '田林县', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451030', '西林县', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451031', '隆林各族自治县', '1', '451000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451100', '贺州市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('451101', '市辖区', '1', '451100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451102', '八步区', '1', '451100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451121', '昭平县', '1', '451100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451122', '钟山县', '1', '451100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451123', '富川瑶族自治县', '1', '451100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451200', '河池市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('451201', '市辖区', '1', '451200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451202', '金城江区', '1', '451200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451221', '南丹县', '1', '451200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451222', '天峨县', '1', '451200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451223', '凤山县', '1', '451200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451224', '东兰县', '1', '451200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451225', '罗城仫佬族自治县', '1', '451200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451226', '环江毛南族自治县', '1', '451200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451227', '巴马瑶族自治县', '1', '451200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451228', '都安瑶族自治县', '1', '451200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451229', '大化瑶族自治县', '1', '451200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451281', '宜州市', '1', '451200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451300', '来宾市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('451301', '市辖区', '1', '451300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451302', '兴宾区', '1', '451300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451321', '忻城县', '1', '451300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451322', '象州县', '1', '451300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451323', '武宣县', '1', '451300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451324', '金秀瑶族自治县', '1', '451300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451381', '合山市', '1', '451300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451400', '崇左市', '1', '450000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('451401', '市辖区', '1', '451400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451402', '江洲区', '1', '451400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451421', '扶绥县', '1', '451400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451422', '宁明县', '1', '451400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451423', '龙州县', '1', '451400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451424', '大新县', '1', '451400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451425', '天等县', '1', '451400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('451481', '凭祥市', '1', '451400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('460000', '海南省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('460100', '海口市', '1', '460000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('460101', '市辖区', '1', '460100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('460105', '秀英区', '1', '460100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('460106', '龙华区', '1', '460100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('460107', '琼山区', '1', '460100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('460108', '美兰区', '1', '460100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('460200', '三亚市', '1', '460000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('460201', '市辖区', '1', '460200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469000', '省直辖县级行政区划', '1', '460000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('469001', '五指山市', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469002', '琼海市', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469003', '儋州市', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469005', '文昌市', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469006', '万宁市', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469007', '东方市', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469021', '定安县', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469022', '屯昌县', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469023', '澄迈县', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469024', '临高县', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469025', '白沙黎族自治县', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469026', '昌江黎族自治县', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469027', '乐东黎族自治县', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469028', '陵水黎族自治县', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469029', '保亭黎族苗族自治县', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469030', '琼中黎族苗族自治县', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469031', '西沙群岛', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469032', '南沙群岛', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('469033', '中沙群岛的岛礁及其海域', '1', '469000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500000', '重庆市', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('500100', '市辖区', '1', '500000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('500101', '万州区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500102', '涪陵区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500103', '渝中区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500104', '大渡口区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500105', '江北区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500106', '沙坪坝区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500107', '九龙坡区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500108', '南岸区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500109', '北碚区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500110', '万盛区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500111', '双桥区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500112', '渝北区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500113', '巴南区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500114', '黔江区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500115', '长寿区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500116', '江津区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500117', '合川区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500118', '永川区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500119', '南川区', '1', '500100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500200', '县', '1', '500000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('500222', '綦江县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500223', '潼南县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500224', '铜梁县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500225', '大足县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500226', '荣昌县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500227', '璧山县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500228', '梁平县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500229', '城口县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500230', '丰都县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500231', '垫江县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500232', '武隆县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500233', '忠县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500234', '开县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500235', '云阳县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500236', '奉节县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500237', '巫山县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500238', '巫溪县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500240', '石柱土家族自治县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500241', '秀山土家族苗族自治县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500242', '酉阳土家族苗族自治县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('500243', '彭水苗族土家族自治县', '1', '500200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510000', '四川省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('510100', '成都市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('510101', '市辖区', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510104', '锦江区', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510105', '青羊区', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510106', '金牛区', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510107', '武侯区', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510108', '成华区', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510112', '龙泉驿区', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510113', '青白江区', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510114', '新都区', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510115', '温江区', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510121', '金堂县', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510122', '双流县', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510124', '郫县', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510129', '大邑县', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510131', '蒲江县', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510132', '新津县', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510181', '都江堰市', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510182', '彭州市', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510183', '邛崃市', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510184', '崇州市', '1', '510100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510300', '自贡市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('510301', '市辖区', '1', '510300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510302', '自流井区', '1', '510300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510303', '贡井区', '1', '510300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510304', '大安区', '1', '510300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510311', '沿滩区', '1', '510300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510321', '荣县', '1', '510300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510322', '富顺县', '1', '510300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510400', '攀枝花市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('510401', '市辖区', '1', '510400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510402', '东区', '1', '510400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510403', '西区', '1', '510400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510411', '仁和区', '1', '510400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510421', '米易县', '1', '510400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510422', '盐边县', '1', '510400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510500', '泸州市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('510501', '市辖区', '1', '510500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510502', '江阳区', '1', '510500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510503', '纳溪区', '1', '510500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510504', '龙马潭区', '1', '510500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510521', '泸县', '1', '510500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510522', '合江县', '1', '510500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510524', '叙永县', '1', '510500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510525', '古蔺县', '1', '510500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510600', '德阳市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('510601', '市辖区', '1', '510600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510603', '旌阳区', '1', '510600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510623', '中江县', '1', '510600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510626', '罗江县', '1', '510600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510681', '广汉市', '1', '510600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510682', '什邡市', '1', '510600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510683', '绵竹市', '1', '510600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510700', '绵阳市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('510701', '市辖区', '1', '510700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510703', '涪城区', '1', '510700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510704', '游仙区', '1', '510700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510722', '三台县', '1', '510700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510723', '盐亭县', '1', '510700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510724', '安县', '1', '510700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510725', '梓潼县', '1', '510700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510726', '北川羌族自治县', '1', '510700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510727', '平武县', '1', '510700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510781', '江油市', '1', '510700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510800', '广元市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('510801', '市辖区', '1', '510800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510802', '利州区', '1', '510800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510811', '元坝区', '1', '510800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510812', '朝天区', '1', '510800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510821', '旺苍县', '1', '510800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510822', '青川县', '1', '510800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510823', '剑阁县', '1', '510800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510824', '苍溪县', '1', '510800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510900', '遂宁市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('510901', '市辖区', '1', '510900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510903', '船山区', '1', '510900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510904', '安居区', '1', '510900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510921', '蓬溪县', '1', '510900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510922', '射洪县', '1', '510900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('510923', '大英县', '1', '510900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511000', '内江市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('511001', '市辖区', '1', '511000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511002', '市中区', '1', '511000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511011', '东兴区', '1', '511000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511024', '威远县', '1', '511000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511025', '资中县', '1', '511000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511028', '隆昌县', '1', '511000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511100', '乐山市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('511101', '市辖区', '1', '511100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511102', '市中区', '1', '511100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511111', '沙湾区', '1', '511100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511112', '五通桥区', '1', '511100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511113', '金口河区', '1', '511100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511123', '犍为县', '1', '511100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511124', '井研县', '1', '511100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511126', '夹江县', '1', '511100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511129', '沐川县', '1', '511100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511132', '峨边彝族自治县', '1', '511100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511133', '马边彝族自治县', '1', '511100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511181', '峨眉山市', '1', '511100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511300', '南充市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('511301', '市辖区', '1', '511300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511302', '顺庆区', '1', '511300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511303', '高坪区', '1', '511300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511304', '嘉陵区', '1', '511300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511321', '南部县', '1', '511300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511322', '营山县', '1', '511300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511323', '蓬安县', '1', '511300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511324', '仪陇县', '1', '511300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511325', '西充县', '1', '511300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511381', '阆中市', '1', '511300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511400', '眉山市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('511401', '市辖区', '1', '511400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511402', '东坡区', '1', '511400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511421', '仁寿县', '1', '511400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511422', '彭山县', '1', '511400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511423', '洪雅县', '1', '511400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511424', '丹棱县', '1', '511400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511425', '青神县', '1', '511400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511500', '宜宾市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('511501', '市辖区', '1', '511500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511502', '翠屏区', '1', '511500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511521', '宜宾县', '1', '511500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511522', '南溪县', '1', '511500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511523', '江安县', '1', '511500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511524', '长宁县', '1', '511500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511525', '高县', '1', '511500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511526', '珙县', '1', '511500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511527', '筠连县', '1', '511500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511528', '兴文县', '1', '511500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511529', '屏山县', '1', '511500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511600', '广安市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('511601', '市辖区', '1', '511600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511602', '广安区', '1', '511600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511621', '岳池县', '1', '511600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511622', '武胜县', '1', '511600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511623', '邻水县', '1', '511600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511681', '华蓥市', '1', '511600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511700', '达州市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('511701', '市辖区', '1', '511700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511702', '通川区', '1', '511700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511721', '达县', '1', '511700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511722', '宣汉县', '1', '511700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511723', '开江县', '1', '511700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511724', '大竹县', '1', '511700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511725', '渠县', '1', '511700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511781', '万源市', '1', '511700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511800', '雅安市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('511801', '市辖区', '1', '511800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511802', '雨城区', '1', '511800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511821', '名山县', '1', '511800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511822', '荥经县', '1', '511800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511823', '汉源县', '1', '511800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511824', '石棉县', '1', '511800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511825', '天全县', '1', '511800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511826', '芦山县', '1', '511800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511827', '宝兴县', '1', '511800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511900', '巴中市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('511901', '市辖区', '1', '511900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511902', '巴州区', '1', '511900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511921', '通江县', '1', '511900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511922', '南江县', '1', '511900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('511923', '平昌县', '1', '511900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('512000', '资阳市', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('512001', '市辖区', '1', '512000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('512002', '雁江区', '1', '512000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('512021', '安岳县', '1', '512000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('512022', '乐至县', '1', '512000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('512081', '简阳市', '1', '512000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513200', '阿坝藏族羌族自治州', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('513221', '汶川县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513222', '理县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513223', '茂县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513224', '松潘县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513225', '九寨沟县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513226', '金川县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513227', '小金县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513228', '黑水县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513229', '马尔康县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513230', '壤塘县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513231', '阿坝县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513232', '若尔盖县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513233', '红原县', '1', '513200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513300', '甘孜藏族自治州', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('513321', '康定县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513322', '泸定县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513323', '丹巴县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513324', '九龙县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513325', '雅江县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513326', '道孚县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513327', '炉霍县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513328', '甘孜县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513329', '新龙县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513330', '德格县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513331', '白玉县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513332', '石渠县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513333', '色达县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513334', '理塘县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513335', '巴塘县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513336', '乡城县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513337', '稻城县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513338', '得荣县', '1', '513300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513400', '凉山彝族自治州', '1', '510000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('513401', '西昌市', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513422', '木里藏族自治县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513423', '盐源县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513424', '德昌县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513425', '会理县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513426', '会东县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513427', '宁南县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513428', '普格县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513429', '布拖县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513430', '金阳县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513431', '昭觉县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513432', '喜德县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513433', '冕宁县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513434', '越西县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513435', '甘洛县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513436', '美姑县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('513437', '雷波县', '1', '513400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520000', '贵州省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('520100', '贵阳市', '1', '520000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('520101', '市辖区', '1', '520100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520102', '南明区', '1', '520100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520103', '云岩区', '1', '520100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520111', '花溪区', '1', '520100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520112', '乌当区', '1', '520100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520113', '白云区', '1', '520100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520114', '小河区', '1', '520100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520121', '开阳县', '1', '520100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520122', '息烽县', '1', '520100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520123', '修文县', '1', '520100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520181', '清镇市', '1', '520100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520200', '六盘水市', '1', '520000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('520201', '钟山区', '1', '520200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520203', '六枝特区', '1', '520200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520221', '水城县', '1', '520200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520222', '盘县', '1', '520200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520300', '遵义市', '1', '520000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('520301', '市辖区', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520302', '红花岗区', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520303', '汇川区', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520321', '遵义县', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520322', '桐梓县', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520323', '绥阳县', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520324', '正安县', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520325', '道真仡佬族苗族自治县', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520326', '务川仡佬族苗族自治县', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520327', '凤冈县', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520328', '湄潭县', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520329', '余庆县', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520330', '习水县', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520381', '赤水市', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520382', '仁怀市', '1', '520300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520400', '安顺市', '1', '520000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('520401', '市辖区', '1', '520400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520402', '西秀区', '1', '520400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520421', '平坝县', '1', '520400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520422', '普定县', '1', '520400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520423', '镇宁布依族苗族自治县', '1', '520400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520424', '关岭布依族苗族自治县', '1', '520400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('520425', '紫云苗族布依族自治县', '1', '520400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522200', '铜仁地区', '1', '520000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('522201', '铜仁市', '1', '522200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522222', '江口县', '1', '522200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522223', '玉屏侗族自治县', '1', '522200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522224', '石阡县', '1', '522200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522225', '思南县', '1', '522200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522226', '印江土家族苗族自治县', '1', '522200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522227', '德江县', '1', '522200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522228', '沿河土家族自治县', '1', '522200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522229', '松桃苗族自治县', '1', '522200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522230', '万山特区', '1', '522200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522300', '黔西南布依族苗族自治州', '1', '520000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('522301', '兴义市', '1', '522300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522322', '兴仁县', '1', '522300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522323', '普安县', '1', '522300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522324', '晴隆县', '1', '522300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522325', '贞丰县', '1', '522300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522326', '望谟县', '1', '522300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522327', '册亨县', '1', '522300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522328', '安龙县', '1', '522300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522400', '毕节地区', '1', '520000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('522401', '毕节市', '1', '522400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522422', '大方县', '1', '522400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522423', '黔西县', '1', '522400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522424', '金沙县', '1', '522400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522425', '织金县', '1', '522400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522426', '纳雍县', '1', '522400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522427', '威宁彝族回族苗族自治县', '1', '522400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522428', '赫章县', '1', '522400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522600', '黔东南苗族侗族自治州', '1', '520000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('522601', '凯里市', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522622', '黄平县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522623', '施秉县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522624', '三穗县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522625', '镇远县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522626', '岑巩县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522627', '天柱县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522628', '锦屏县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522629', '剑河县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522630', '台江县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522631', '黎平县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522632', '榕江县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522633', '从江县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522634', '雷山县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522635', '麻江县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522636', '丹寨县', '1', '522600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522700', '黔南布依族苗族自治州', '1', '520000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('522701', '都匀市', '1', '522700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522702', '福泉市', '1', '522700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522722', '荔波县', '1', '522700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522723', '贵定县', '1', '522700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522725', '瓮安县', '1', '522700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522726', '独山县', '1', '522700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522727', '平塘县', '1', '522700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522728', '罗甸县', '1', '522700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522729', '长顺县', '1', '522700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522730', '龙里县', '1', '522700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522731', '惠水县', '1', '522700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('522732', '三都水族自治县', '1', '522700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530000', '云南省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('530100', '昆明市', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('530101', '市辖区', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530102', '五华区', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530103', '盘龙区', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530111', '官渡区', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530112', '西山区', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530113', '东川区', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530121', '呈贡县', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530122', '晋宁县', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530124', '富民县', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530125', '宜良县', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530126', '石林彝族自治县', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530127', '嵩明县', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530128', '禄劝彝族苗族自治县', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530129', '寻甸回族彝族自治县', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530181', '安宁市', '1', '530100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530300', '曲靖市', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('530301', '市辖区', '1', '530300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530302', '麒麟区', '1', '530300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530321', '马龙县', '1', '530300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530322', '陆良县', '1', '530300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530323', '师宗县', '1', '530300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530324', '罗平县', '1', '530300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530325', '富源县', '1', '530300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530326', '会泽县', '1', '530300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530328', '沾益县', '1', '530300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530381', '宣威市', '1', '530300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530400', '玉溪市', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('530401', '市辖区', '1', '530400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530402', '红塔区', '1', '530400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530421', '江川县', '1', '530400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530422', '澄江县', '1', '530400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530423', '通海县', '1', '530400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530424', '华宁县', '1', '530400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530425', '易门县', '1', '530400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530426', '峨山彝族自治县', '1', '530400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530427', '新平彝族傣族自治县', '1', '530400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530428', '元江哈尼族彝族傣族自治县 ', '1', '530400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530500', '保山市', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('530501', '市辖区', '1', '530500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530502', '隆阳区', '1', '530500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530521', '施甸县', '1', '530500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530522', '腾冲县', '1', '530500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530523', '龙陵县', '1', '530500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530524', '昌宁县', '1', '530500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530600', '昭通市', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('530601', '市辖区', '1', '530600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530602', '昭阳区', '1', '530600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530621', '鲁甸县', '1', '530600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530622', '巧家县', '1', '530600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530623', '盐津县', '1', '530600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530624', '大关县', '1', '530600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530625', '永善县', '1', '530600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530626', '绥江县', '1', '530600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530627', '镇雄县', '1', '530600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530628', '彝良县', '1', '530600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530629', '威信县', '1', '530600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530630', '水富县', '1', '530600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530700', '丽江市', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('530701', '市辖区', '1', '530700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530702', '古城区', '1', '530700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530721', '玉龙纳西族自治县', '1', '530700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530722', '永胜县', '1', '530700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530723', '华坪县', '1', '530700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530724', '宁蒗彝族自治县', '1', '530700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530800', '普洱市', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('530801', '市辖区', '1', '530800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530802', '思茅区', '1', '530800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530821', '宁洱哈尼族彝族自治县', '1', '530800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530822', '墨江哈尼族自治县', '1', '530800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530823', '景东彝族自治县', '1', '530800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530824', '景谷傣族彝族自治县', '1', '530800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530825', '镇沅彝族哈尼族拉祜族自治县 ', '1', '530800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530826', '江城哈尼族彝族自治县', '1', '530800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530827', '孟连傣族拉祜族佤族自治县 ', '1', '530800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530828', '澜沧拉祜族自治县', '1', '530800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530829', '西盟佤族自治县', '1', '530800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530900', '临沧市', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('530901', '市辖区', '1', '530900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530902', '临翔区', '1', '530900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530921', '凤庆县', '1', '530900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530922', '云县', '1', '530900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530923', '永德县', '1', '530900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530924', '镇康县', '1', '530900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530925', '双江拉祜族佤族布朗族傣族自治县 ', '1', '530900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530926', '耿马傣族佤族自治县', '1', '530900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('530927', '沧源佤族自治县', '1', '530900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532300', '楚雄彝族自治州', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('532301', '楚雄市', '1', '532300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532322', '双柏县', '1', '532300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532323', '牟定县', '1', '532300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532324', '南华县', '1', '532300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532325', '姚安县', '1', '532300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532326', '大姚县', '1', '532300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532327', '永仁县', '1', '532300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532328', '元谋县', '1', '532300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532329', '武定县', '1', '532300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532331', '禄丰县', '1', '532300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532500', '红河哈尼族彝族自治州', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('532501', '个旧市', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532502', '开远市', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532522', '蒙自县', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532523', '屏边苗族自治县', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532524', '建水县', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532525', '石屏县', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532526', '弥勒县', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532527', '泸西县', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532528', '元阳县', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532529', '红河县', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532530', '金平苗族瑶族傣族自治县', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532531', '绿春县', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532532', '河口瑶族自治县', '1', '532500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532600', '文山壮族苗族自治州', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('532621', '文山县', '1', '532600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532622', '砚山县', '1', '532600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532623', '西畴县', '1', '532600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532624', '麻栗坡县', '1', '532600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532625', '马关县', '1', '532600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532626', '丘北县', '1', '532600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532627', '广南县', '1', '532600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532628', '富宁县', '1', '532600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532800', '西双版纳傣族自治州', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('532801', '景洪市', '1', '532800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532822', '勐海县', '1', '532800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532823', '勐腊县', '1', '532800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532900', '大理白族自治州', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('532901', '大理市', '1', '532900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532922', '漾濞彝族自治县', '1', '532900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532923', '祥云县', '1', '532900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532924', '宾川县', '1', '532900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532925', '弥渡县', '1', '532900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532926', '南涧彝族自治县', '1', '532900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532927', '巍山彝族回族自治县', '1', '532900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532928', '永平县', '1', '532900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532929', '云龙县', '1', '532900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532930', '洱源县', '1', '532900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532931', '剑川县', '1', '532900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('532932', '鹤庆县', '1', '532900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('533100', '德宏傣族景颇族自治州', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('533102', '瑞丽市', '1', '533100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('533103', '潞西市', '1', '533100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('533122', '梁河县', '1', '533100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('533123', '盈江县', '1', '533100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('533124', '陇川县', '1', '533100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('533300', '怒江傈僳族自治州', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('533321', '泸水县', '1', '533300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('533323', '福贡县', '1', '533300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('533324', '贡山独龙族怒族自治县', '1', '533300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('533325', '兰坪白族普米族自治县', '1', '533300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('533400', '迪庆藏族自治州', '1', '530000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('533421', '香格里拉县', '1', '533400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('533422', '德钦县', '1', '533400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('533423', '维西傈僳族自治县', '1', '533400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('540000', '西藏自治区', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('540100', '拉萨市', '1', '540000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('540101', '市辖区', '1', '540100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('540102', '城关区', '1', '540100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('540121', '林周县', '1', '540100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('540122', '当雄县', '1', '540100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('540123', '尼木县', '1', '540100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('540124', '曲水县', '1', '540100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('540125', '堆龙德庆县', '1', '540100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('540126', '达孜县', '1', '540100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('540127', '墨竹工卡县', '1', '540100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542100', '昌都地区', '1', '540000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('542121', '昌都县', '1', '542100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542122', '江达县', '1', '542100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542123', '贡觉县', '1', '542100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542124', '类乌齐县', '1', '542100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542125', '丁青县', '1', '542100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542126', '察雅县', '1', '542100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542127', '八宿县', '1', '542100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542128', '左贡县', '1', '542100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542129', '芒康县', '1', '542100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542132', '洛隆县', '1', '542100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542133', '边坝县', '1', '542100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542200', '山南地区', '1', '540000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('542221', '乃东县', '1', '542200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542222', '扎囊县', '1', '542200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542223', '贡嘎县', '1', '542200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542224', '桑日县', '1', '542200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542225', '琼结县', '1', '542200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542226', '曲松县', '1', '542200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542227', '措美县', '1', '542200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542228', '洛扎县', '1', '542200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542229', '加查县', '1', '542200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542231', '隆子县', '1', '542200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542232', '错那县', '1', '542200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542233', '浪卡子县', '1', '542200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542300', '日喀则地区', '1', '540000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('542301', '日喀则市', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542322', '南木林县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542323', '江孜县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542324', '定日县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542325', '萨迦县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542326', '拉孜县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542327', '昂仁县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542328', '谢通门县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542329', '白朗县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542330', '仁布县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542331', '康马县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542332', '定结县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542333', '仲巴县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542334', '亚东县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542335', '吉隆县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542336', '聂拉木县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542337', '萨嘎县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542338', '岗巴县', '1', '542300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542400', '那曲地区', '1', '540000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('542421', '那曲县', '1', '542400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542422', '嘉黎县', '1', '542400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542423', '比如县', '1', '542400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542424', '聂荣县', '1', '542400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542425', '安多县', '1', '542400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542426', '申扎县', '1', '542400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542427', '索县', '1', '542400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542428', '班戈县', '1', '542400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542429', '巴青县', '1', '542400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542430', '尼玛县', '1', '542400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542500', '阿里地区', '1', '540000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('542521', '普兰县', '1', '542500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542522', '札达县', '1', '542500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542523', '噶尔县', '1', '542500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542524', '日土县', '1', '542500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542525', '革吉县', '1', '542500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542526', '改则县', '1', '542500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542527', '措勤县', '1', '542500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542600', '林芝地区', '1', '540000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('542621', '林芝县', '1', '542600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542622', '工布江达县', '1', '542600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542623', '米林县', '1', '542600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542624', '墨脱县', '1', '542600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542625', '波密县', '1', '542600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542626', '察隅县', '1', '542600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('542627', '朗县', '1', '542600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610000', '陕西省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('610100', '西安市', '1', '610000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('610101', '市辖区', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610102', '新城区', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610103', '碑林区', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610104', '莲湖区', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610111', '灞桥区', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610112', '未央区', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610113', '雁塔区', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610114', '阎良区', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610115', '临潼区', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610116', '长安区', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610122', '蓝田县', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610124', '周至县', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610125', '户县', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610126', '高陵县', '1', '610100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610200', '铜川市', '1', '610000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('610201', '市辖区', '1', '610200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610202', '王益区', '1', '610200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610203', '印台区', '1', '610200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610204', '耀州区', '1', '610200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610222', '宜君县', '1', '610200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610300', '宝鸡市', '1', '610000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('610301', '市辖区', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610302', '渭滨区', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610303', '金台区', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610304', '陈仓区', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610322', '凤翔县', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610323', '岐山县', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610324', '扶风县', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610326', '眉县', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610327', '陇县', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610328', '千阳县', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610329', '麟游县', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610330', '凤县', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610331', '太白县', '1', '610300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610400', '咸阳市', '1', '610000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('610401', '市辖区', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610402', '秦都区', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610403', '杨陵区', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610404', '渭城区', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610422', '三原县', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610423', '泾阳县', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610424', '乾县', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610425', '礼泉县', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610426', '永寿县', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610427', '彬县', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610428', '长武县', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610429', '旬邑县', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610430', '淳化县', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610431', '武功县', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610481', '兴平市', '1', '610400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610500', '渭南市', '1', '610000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('610501', '市辖区', '1', '610500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610502', '临渭区', '1', '610500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610521', '华县', '1', '610500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610522', '潼关县', '1', '610500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610523', '大荔县', '1', '610500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610524', '合阳县', '1', '610500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610525', '澄城县', '1', '610500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610526', '蒲城县', '1', '610500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610527', '白水县', '1', '610500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610528', '富平县', '1', '610500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610581', '韩城市', '1', '610500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610582', '华阴市', '1', '610500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610600', '延安市', '1', '610000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('610601', '市辖区', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610602', '宝塔区', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610621', '延长县', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610622', '延川县', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610623', '子长县', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610624', '安塞县', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610625', '志丹县', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610626', '吴起县', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610627', '甘泉县', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610628', '富县', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610629', '洛川县', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610630', '宜川县', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610631', '黄龙县', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610632', '黄陵县', '1', '610600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610700', '汉中市', '1', '610000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('610701', '市辖区', '1', '610700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610702', '汉台区', '1', '610700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610721', '南郑县', '1', '610700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610722', '城固县', '1', '610700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610723', '洋县', '1', '610700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610724', '西乡县', '1', '610700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610725', '勉县', '1', '610700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610726', '宁强县', '1', '610700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610727', '略阳县', '1', '610700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610728', '镇巴县', '1', '610700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610729', '留坝县', '1', '610700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610730', '佛坪县', '1', '610700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610800', '榆林市', '1', '610000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('610801', '市辖区', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610802', '榆阳区', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610821', '神木县', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610822', '府谷县', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610823', '横山县', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610824', '靖边县', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610825', '定边县', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610826', '绥德县', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610827', '米脂县', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610828', '佳县', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610829', '吴堡县', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610830', '清涧县', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610831', '子洲县', '1', '610800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610900', '安康市', '1', '610000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('610901', '市辖区', '1', '610900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610902', '汉滨区', '1', '610900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610921', '汉阴县', '1', '610900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610922', '石泉县', '1', '610900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610923', '宁陕县', '1', '610900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610924', '紫阳县', '1', '610900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610925', '岚皋县', '1', '610900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610926', '平利县', '1', '610900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610927', '镇坪县', '1', '610900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610928', '旬阳县', '1', '610900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('610929', '白河县', '1', '610900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('611000', '商洛市', '1', '610000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('611001', '市辖区', '1', '611000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('611002', '商州区', '1', '611000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('611021', '洛南县', '1', '611000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('611022', '丹凤县', '1', '611000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('611023', '商南县', '1', '611000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('611024', '山阳县', '1', '611000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('611025', '镇安县', '1', '611000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('611026', '柞水县', '1', '611000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620000', '甘肃省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('620100', '兰州市', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('620101', '市辖区', '1', '620100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620102', '城关区', '1', '620100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620103', '七里河区', '1', '620100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620104', '西固区', '1', '620100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620105', '安宁区', '1', '620100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620111', '红古区', '1', '620100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620121', '永登县', '1', '620100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620122', '皋兰县', '1', '620100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620123', '榆中县', '1', '620100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620200', '嘉峪关市', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('620201', '市辖区', '1', '620200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620300', '金昌市', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('620301', '市辖区', '1', '620300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620302', '金川区', '1', '620300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620321', '永昌县', '1', '620300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620400', '白银市', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('620401', '市辖区', '1', '620400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620402', '白银区', '1', '620400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620403', '平川区', '1', '620400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620421', '靖远县', '1', '620400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620422', '会宁县', '1', '620400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620423', '景泰县', '1', '620400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620500', '天水市', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('620501', '市辖区', '1', '620500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620502', '秦州区', '1', '620500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620503', '麦积区', '1', '620500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620521', '清水县', '1', '620500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620522', '秦安县', '1', '620500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620523', '甘谷县', '1', '620500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620524', '武山县', '1', '620500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620525', '张家川回族自治县', '1', '620500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620600', '武威市', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('620601', '市辖区', '1', '620600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620602', '凉州区', '1', '620600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620621', '民勤县', '1', '620600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620622', '古浪县', '1', '620600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620623', '天祝藏族自治县', '1', '620600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620700', '张掖市', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('620701', '市辖区', '1', '620700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620702', '甘州区', '1', '620700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620721', '肃南裕固族自治县', '1', '620700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620722', '民乐县', '1', '620700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620723', '临泽县', '1', '620700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620724', '高台县', '1', '620700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620725', '山丹县', '1', '620700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620800', '平凉市', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('620801', '市辖区', '1', '620800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620802', '崆峒区', '1', '620800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620821', '泾川县', '1', '620800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620822', '灵台县', '1', '620800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620823', '崇信县', '1', '620800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620824', '华亭县', '1', '620800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620825', '庄浪县', '1', '620800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620826', '静宁县', '1', '620800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620900', '酒泉市', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('620901', '市辖区', '1', '620900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620902', '肃州区', '1', '620900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620921', '金塔县', '1', '620900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620922', '瓜州县', '1', '620900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620923', '肃北蒙古族自治县', '1', '620900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620924', '阿克塞哈萨克族自治县', '1', '620900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620981', '玉门市', '1', '620900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('620982', '敦煌市', '1', '620900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621000', '庆阳市', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('621001', '市辖区', '1', '621000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621002', '西峰区', '1', '621000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621021', '庆城县', '1', '621000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621022', '环县', '1', '621000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621023', '华池县', '1', '621000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621024', '合水县', '1', '621000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621025', '正宁县', '1', '621000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621026', '宁县', '1', '621000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621027', '镇原县', '1', '621000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621100', '定西市', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('621101', '市辖区', '1', '621100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621102', '安定区', '1', '621100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621121', '通渭县', '1', '621100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621122', '陇西县', '1', '621100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621123', '渭源县', '1', '621100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621124', '临洮县', '1', '621100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621125', '漳县', '1', '621100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621126', '岷县', '1', '621100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621200', '陇南市', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('621201', '市辖区', '1', '621200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621202', '武都区', '1', '621200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621221', '成县', '1', '621200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621222', '文县', '1', '621200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621223', '宕昌县', '1', '621200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621224', '康县', '1', '621200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621225', '西和县', '1', '621200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621226', '礼县', '1', '621200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621227', '徽县', '1', '621200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('621228', '两当县', '1', '621200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('622900', '临夏回族自治州', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('622901', '临夏市', '1', '622900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('622921', '临夏县', '1', '622900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('622922', '康乐县', '1', '622900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('622923', '永靖县', '1', '622900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('622924', '广河县', '1', '622900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('622925', '和政县', '1', '622900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('622926', '东乡族自治县', '1', '622900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('622927', '积石山保安族东乡族撒拉族自治县 ', '1', '622900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('623000', '甘南藏族自治州', '1', '620000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('623001', '合作市', '1', '623000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('623021', '临潭县', '1', '623000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('623022', '卓尼县', '1', '623000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('623023', '舟曲县', '1', '623000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('623024', '迭部县', '1', '623000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('623025', '玛曲县', '1', '623000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('623026', '碌曲县', '1', '623000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('623027', '夏河县', '1', '623000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('630000', '青海省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('630100', '西宁市', '1', '630000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('630101', '市辖区', '1', '630100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('630102', '城东区', '1', '630100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('630103', '城中区', '1', '630100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('630104', '城西区', '1', '630100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('630105', '城北区', '1', '630100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('630121', '大通回族土族自治县', '1', '630100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('630122', '湟中县', '1', '630100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('630123', '湟源县', '1', '630100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632100', '海东地区', '1', '630000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('632121', '平安县', '1', '632100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632122', '民和回族土族自治县', '1', '632100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632123', '乐都县', '1', '632100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632126', '互助土族自治县', '1', '632100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632127', '化隆回族自治县', '1', '632100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632128', '循化撒拉族自治县', '1', '632100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632200', '海北藏族自治州', '1', '630000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('632221', '门源回族自治县', '1', '632200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632222', '祁连县', '1', '632200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632223', '海晏县', '1', '632200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632224', '刚察县', '1', '632200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632300', '黄南藏族自治州', '1', '630000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('632321', '同仁县', '1', '632300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632322', '尖扎县', '1', '632300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632323', '泽库县', '1', '632300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632324', '河南蒙古族自治县', '1', '632300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632500', '海南藏族自治州', '1', '630000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('632521', '共和县', '1', '632500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632522', '同德县', '1', '632500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632523', '贵德县', '1', '632500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632524', '兴海县', '1', '632500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632525', '贵南县', '1', '632500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632600', '果洛藏族自治州', '1', '630000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('632621', '玛沁县', '1', '632600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632622', '班玛县', '1', '632600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632623', '甘德县', '1', '632600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632624', '达日县', '1', '632600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632625', '久治县', '1', '632600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632626', '玛多县', '1', '632600', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632700', '玉树藏族自治州', '1', '630000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('632721', '玉树县', '1', '632700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632722', '杂多县', '1', '632700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632723', '称多县', '1', '632700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632724', '治多县', '1', '632700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632725', '囊谦县', '1', '632700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632726', '曲麻莱县', '1', '632700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632800', '海西蒙古族藏族自治州', '1', '630000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('632801', '格尔木市', '1', '632800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632802', '德令哈市', '1', '632800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632821', '乌兰县', '1', '632800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632822', '都兰县', '1', '632800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('632823', '天峻县', '1', '632800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640000', '宁夏回族自治区', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('640100', '银川市', '1', '640000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('640101', '市辖区', '1', '640100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640104', '兴庆区', '1', '640100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640105', '西夏区', '1', '640100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640106', '金凤区', '1', '640100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640121', '永宁县', '1', '640100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640122', '贺兰县', '1', '640100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640181', '灵武市', '1', '640100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640200', '石嘴山市', '1', '640000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('640201', '市辖区', '1', '640200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640202', '大武口区', '1', '640200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640205', '惠农区', '1', '640200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640221', '平罗县', '1', '640200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640300', '吴忠市', '1', '640000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('640301', '市辖区', '1', '640300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640302', '利通区', '1', '640300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640303', '红寺堡区 ', '1', '640300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640323', '盐池县', '1', '640300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640324', '同心县', '1', '640300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640381', '青铜峡市', '1', '640300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640400', '固原市', '1', '640000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('640401', '市辖区', '1', '640400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640402', '原州区', '1', '640400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640422', '西吉县', '1', '640400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640423', '隆德县', '1', '640400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640424', '泾源县', '1', '640400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640425', '彭阳县', '1', '640400', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640500', '中卫市', '1', '640000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('640501', '市辖区', '1', '640500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640502', '沙坡头区', '1', '640500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640521', '中宁县', '1', '640500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('640522', '海原县', '1', '640500', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650000', '新疆维吾尔自治区', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('650100', '乌鲁木齐市', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('650101', '市辖区', '1', '650100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650102', '天山区', '1', '650100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650103', '沙依巴克区', '1', '650100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650104', '新市区', '1', '650100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650105', '水磨沟区', '1', '650100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650106', '头屯河区', '1', '650100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650107', '达坂城区', '1', '650100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650109', '米东区', '1', '650100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650121', '乌鲁木齐县', '1', '650100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650200', '克拉玛依市', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('650201', '市辖区', '1', '650200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650202', '独山子区', '1', '650200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650203', '克拉玛依区', '1', '650200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650204', '白碱滩区', '1', '650200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('650205', '乌尔禾区', '1', '650200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652100', '吐鲁番地区', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('652101', '吐鲁番市', '1', '652100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652122', '鄯善县', '1', '652100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652123', '托克逊县', '1', '652100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652200', '哈密地区', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('652201', '哈密市', '1', '652200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652222', '巴里坤哈萨克自治县', '1', '652200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652223', '伊吾县', '1', '652200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652300', '昌吉回族自治州', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('652301', '昌吉市', '1', '652300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652302', '阜康市', '1', '652300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652323', '呼图壁县', '1', '652300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652324', '玛纳斯县', '1', '652300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652325', '奇台县', '1', '652300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652327', '吉木萨尔县', '1', '652300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652328', '木垒哈萨克自治县', '1', '652300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652700', '博尔塔拉蒙古自治州', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('652701', '博乐市', '1', '652700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652722', '精河县', '1', '652700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652723', '温泉县', '1', '652700', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652800', '巴音郭楞蒙古自治州', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('652801', '库尔勒市', '1', '652800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652822', '轮台县', '1', '652800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652823', '尉犁县', '1', '652800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652824', '若羌县', '1', '652800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652825', '且末县', '1', '652800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652826', '焉耆回族自治县', '1', '652800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652827', '和静县', '1', '652800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652828', '和硕县', '1', '652800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652829', '博湖县', '1', '652800', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652900', '阿克苏地区', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('652901', '阿克苏市', '1', '652900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652922', '温宿县', '1', '652900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652923', '库车县', '1', '652900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652924', '沙雅县', '1', '652900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652925', '新和县', '1', '652900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652926', '拜城县', '1', '652900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652927', '乌什县', '1', '652900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652928', '阿瓦提县', '1', '652900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('652929', '柯坪县', '1', '652900', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653000', '克孜勒苏柯尔克孜自治州', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('653001', '阿图什市', '1', '653000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653022', '阿克陶县', '1', '653000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653023', '阿合奇县', '1', '653000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653024', '乌恰县', '1', '653000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653100', '喀什地区', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('653101', '喀什市', '1', '653100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653121', '疏附县', '1', '653100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653122', '疏勒县', '1', '653100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653123', '英吉沙县', '1', '653100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653124', '泽普县', '1', '653100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653125', '莎车县', '1', '653100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653126', '叶城县', '1', '653100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653127', '麦盖提县', '1', '653100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653128', '岳普湖县', '1', '653100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653129', '伽师县', '1', '653100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653130', '巴楚县', '1', '653100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653131', '塔什库尔干塔吉克自治县', '1', '653100', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653200', '和田地区', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('653201', '和田市', '1', '653200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653221', '和田县', '1', '653200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653222', '墨玉县', '1', '653200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653223', '皮山县', '1', '653200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653224', '洛浦县', '1', '653200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653225', '策勒县', '1', '653200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653226', '于田县', '1', '653200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('653227', '民丰县', '1', '653200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654000', '伊犁哈萨克自治州', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('654002', '伊宁市', '1', '654000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654003', '奎屯市', '1', '654000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654021', '伊宁县', '1', '654000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654022', '察布查尔锡伯自治县', '1', '654000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654023', '霍城县', '1', '654000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654024', '巩留县', '1', '654000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654025', '新源县', '1', '654000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654026', '昭苏县', '1', '654000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654027', '特克斯县', '1', '654000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654028', '尼勒克县', '1', '654000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654200', '塔城地区', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('654201', '塔城市', '1', '654200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654202', '乌苏市', '1', '654200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654221', '额敏县', '1', '654200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654223', '沙湾县', '1', '654200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654224', '托里县', '1', '654200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654225', '裕民县', '1', '654200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654226', '和布克赛尔蒙古自治县', '1', '654200', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654300', '阿勒泰地区', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('654301', '阿勒泰市', '1', '654300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654321', '布尔津县', '1', '654300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654322', '富蕴县', '1', '654300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654323', '福海县', '1', '654300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654324', '哈巴河县', '1', '654300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654325', '青河县', '1', '654300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('654326', '吉木乃县', '1', '654300', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('659000', '自治区直辖县级行政区划', '1', '650000', '', null, null, null, null, null, '2');
INSERT INTO `dict_area` VALUES ('659001', '石河子市', '1', '659000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('659002', '阿拉尔市', '1', '659000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('659003', '图木舒克市', '1', '659000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('659004', '五家渠市', '1', '659000', '', null, null, null, null, null, '3');
INSERT INTO `dict_area` VALUES ('710000', '台湾省', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('810000', '香港特别行政区', '1', '000000', '', null, null, null, null, null, '1');
INSERT INTO `dict_area` VALUES ('820000', '澳门特别行政区', '1', '000000', '', null, null, null, null, null, '1');

-- ----------------------------
-- Table structure for `dict_opencity`
-- ----------------------------
DROP TABLE IF EXISTS `dict_opencity`;
CREATE TABLE `dict_opencity` (
  `cityName` varchar(11) NOT NULL COMMENT '城市名称',
  `cityCode` varchar(45) NOT NULL COMMENT '城市编号',
  `openTime` datetime NOT NULL COMMENT '开放时间',
  `remark` varchar(45) DEFAULT NULL COMMENT '备注',
  `delFlag` varchar(45) DEFAULT '0' COMMENT '【0 没删除  1删除 】',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedTime` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` varchar(45) DEFAULT NULL,
  `telPhone` varchar(255) DEFAULT NULL,
  `serviceAddress` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `status` char(2) DEFAULT NULL COMMENT '0开启1关闭',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `qq` int(45) DEFAULT NULL,
  PRIMARY KEY (`cityName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dict_opencity
-- ----------------------------
INSERT INTO `dict_opencity` VALUES ('北京', '110000', '2015-02-04 14:22:48', null, '0', null, null, null, null, '13289077980', null, '刘备', '0', '发的房价开发多少', '34242523');
INSERT INTO `dict_opencity` VALUES ('天津', '130000', '2015-03-25 09:33:23', null, '0', null, null, null, null, '567567567', null, 'r5yr4y', '0', null, '212');
INSERT INTO `dict_opencity` VALUES ('石家庄', '120000', '2015-03-25 09:31:31', null, '0', null, null, null, null, '4564564564564', null, 'ertert', '0', null, null);

-- ----------------------------
-- Table structure for `finance_bill`
-- ----------------------------
DROP TABLE IF EXISTS `finance_bill`;
CREATE TABLE `finance_bill` (
  `billId` int(11) NOT NULL AUTO_INCREMENT COMMENT '单账编号编号',
  `billDate` varchar(20) DEFAULT NULL COMMENT '单账日期',
  `accountId` int(11) DEFAULT NULL COMMENT '买方账户',
  `money` double(8,2) DEFAULT NULL COMMENT '易交金额',
  `billType` char(2) DEFAULT NULL COMMENT '单账类型 0购买商品',
  `dataId` int(11) DEFAULT NULL COMMENT '单号订',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `delFlag` char(1) DEFAULT '0',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`billId`)
) ENGINE=InnoDB AUTO_INCREMENT=891 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of finance_bill
-- ----------------------------
INSERT INTO `finance_bill` VALUES ('879', '2017-09-12', '85', '123.00', '0', '1002387', '购买商品', '0', null, null, '2017-09-12 15:22:05', null);
INSERT INTO `finance_bill` VALUES ('880', '2017-09-12', '85', '123.00', '0', '1002387', '购买商品', '0', null, null, '2017-09-12 15:23:39', null);
INSERT INTO `finance_bill` VALUES ('881', '2017-09-12', '85', '123.00', '0', '1002388', '购买商品', '0', null, null, '2017-09-12 15:33:22', null);
INSERT INTO `finance_bill` VALUES ('882', '2017-09-12', '85', '123.00', '0', '1002389', '购买商品', '0', null, null, '2017-09-12 15:57:54', null);
INSERT INTO `finance_bill` VALUES ('883', '2017-09-12', '85', '123.00', '0', '1002390', '购买商品', '0', null, null, '2017-09-12 19:59:32', null);
INSERT INTO `finance_bill` VALUES ('884', '2017-09-12', '85', '369.00', '0', '1002391', '购买商品', '0', null, null, '2017-09-12 21:23:17', null);
INSERT INTO `finance_bill` VALUES ('885', '2017-09-13', '85', '492.00', '0', '1002392', '购买商品', '0', null, null, '2017-09-13 13:14:04', null);
INSERT INTO `finance_bill` VALUES ('886', '2017-09-13', '85', '123.00', '0', '1002393', '购买商品', '0', null, null, '2017-09-13 16:38:04', null);
INSERT INTO `finance_bill` VALUES ('887', '2017-09-14', '85', '123.00', '0', '1002394', '购买商品', '0', null, null, '2017-09-14 15:28:51', null);
INSERT INTO `finance_bill` VALUES ('888', '2017-09-14', '85', '123.00', '0', '1002386', '购买商品', '0', null, null, '2017-09-14 15:29:08', null);
INSERT INTO `finance_bill` VALUES ('889', '2017-09-14', null, '123.00', '0', '1002395', '购买商品', '0', null, null, '2017-09-14 17:04:49', null);
INSERT INTO `finance_bill` VALUES ('890', '2017-09-14', null, '123.00', '0', '1002396', '购买商品', '0', null, null, '2017-09-14 17:06:58', null);

-- ----------------------------
-- Table structure for `finance_pay_order`
-- ----------------------------
DROP TABLE IF EXISTS `finance_pay_order`;
CREATE TABLE `finance_pay_order` (
  `payOrderId` varchar(32) NOT NULL,
  `accountId` int(11) DEFAULT NULL COMMENT '账户',
  `payRoute` char(1) DEFAULT NULL COMMENT '充值来源\n1、支付宝\n2、微信\n',
  `money` decimal(8,2) DEFAULT NULL,
  `module` char(255) DEFAULT NULL COMMENT ' 账单枚举 0租赁1买玩具 2、买年卡 3 卖玩具 4 退押金 5提现',
  `dataId` int(11) DEFAULT NULL COMMENT '业务订单号码',
  `delFlag` char(1) DEFAULT '0',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `status` varchar(45) NOT NULL DEFAULT '2' COMMENT '0成功\n1 失败 2 待支付',
  `trade_no` varchar(255) DEFAULT NULL COMMENT '支付宝交易号',
  `errorDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`payOrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of finance_pay_order
-- ----------------------------
INSERT INTO `finance_pay_order` VALUES ('20170912150516753741583388088', '85', '1', '738.00', '1', '1002385', '0', null, null, '2017-09-12 15:05:16', null, '2', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912151007102194520630617', '85', '1', '738.00', '1', '1002385', '0', null, null, '2017-09-12 15:10:07', null, '2', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912151034783088104907686', '85', '1', '738.00', '1', '1002385', '0', null, null, '2017-09-12 15:10:34', null, '2', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912151050121823490970483', '85', '1', '738.00', '1', '1002385', '0', null, null, '2017-09-12 15:10:50', null, '2', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912151130823470665986330', '85', '1', '738.00', '1', '1002385', '0', null, null, '2017-09-12 15:11:30', null, '2', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912151210011183098630480', '85', '1', '738.00', '1', '1002385', '0', null, null, '2017-09-12 15:12:10', null, '2', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912151250494571141394544', '85', '1', '738.00', '1', '1002385', '0', null, null, '2017-09-12 15:12:50', null, '2', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912151414843934242317212', '85', '1', '738.00', '1', '1002385', '0', null, null, '2017-09-12 15:14:14', null, '2', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912151424001561778161811', '85', '1', '738.00', '1', '1002385', '0', null, null, '2017-09-12 15:14:24', null, '2', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912151551704204950964851', '85', '1', '123.00', '1', '1002387', '0', null, null, '2017-09-12 15:15:51', null, '2', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912151707692936698335459', '85', '1', '123.00', '1', '1002387', '0', null, null, '2017-09-12 15:17:07', null, '2', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912151738842743715535107', '85', '1', '123.00', '1', '1002387', '0', null, null, '2017-09-12 15:17:38', null, '2', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912152153040819060140926', '85', '1', '123.00', '1', '1002387', '0', null, null, '2017-09-12 15:21:53', '2017-09-12 15:22:05', '0', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912152335302663973654527', '85', '2', '123.00', '1', '1002387', '0', null, null, '2017-09-12 15:23:35', '2017-09-12 15:23:39', '0', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912153321173240096817650', '85', '1', '123.00', '1', '1002388', '0', null, null, '2017-09-12 15:33:21', '2017-09-12 15:33:22', '0', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912155753336281430310455', '85', '1', '123.00', '1', '1002389', '0', null, null, '2017-09-12 15:57:53', '2017-09-12 15:57:54', '0', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912195931998343633752118', '85', '1', '123.00', '1', '1002390', '0', null, null, '2017-09-12 19:59:31', '2017-09-12 19:59:32', '0', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170912212317110498504516820', '85', '1', '369.00', '1', '1002391', '0', null, null, '2017-09-12 21:23:17', '2017-09-12 21:23:17', '0', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170913131404132869728021588', '85', '2', '492.00', '1', '1002392', '0', null, null, '2017-09-13 13:14:04', '2017-09-13 13:14:04', '0', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170913163804585812025788022', '85', '2', '123.00', '1', '1002393', '0', null, null, '2017-09-13 16:38:04', '2017-09-13 16:38:04', '0', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170914152851051552479083436', '85', '1', '123.00', '1', '1002394', '0', null, null, '2017-09-14 15:28:51', '2017-09-14 15:28:51', '0', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170914152907528663105502935', '85', '1', '123.00', '1', '1002386', '0', null, null, '2017-09-14 15:29:07', '2017-09-14 15:29:08', '0', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170914170448157157345746537', null, '2', '123.00', '1', '1002395', '0', null, null, '2017-09-14 17:04:48', '2017-09-14 17:04:49', '0', null, null);
INSERT INTO `finance_pay_order` VALUES ('20170914170658556916070163553', null, '2', '123.00', '1', '1002396', '0', null, null, '2017-09-14 17:06:58', '2017-09-14 17:06:58', '0', null, null);

-- ----------------------------
-- Table structure for `market_carousel`
-- ----------------------------
DROP TABLE IF EXISTS `market_carousel`;
CREATE TABLE `market_carousel` (
  `carouselId` int(11) NOT NULL AUTO_INCREMENT COMMENT '首页轮播图编号',
  `pic` varchar(450) DEFAULT NULL COMMENT '首页轮播图图片',
  `content` varchar(450) DEFAULT NULL COMMENT '首页轮播图文字内容',
  `delFlag` char(1) DEFAULT '0',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `linkType` char(2) DEFAULT '0' COMMENT '接链类型0 本地页面  1  网页链接',
  `linkUrl` varchar(400) DEFAULT NULL COMMENT '链接地址URL',
  PRIMARY KEY (`carouselId`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of market_carousel
-- ----------------------------
INSERT INTO `market_carousel` VALUES ('80', '/uploadFile/carousel/1.jpg', '让闲置#闲置，最高原价回收', '0', null, null, '2017-07-14 10:41:57', null, '0', null);
INSERT INTO `market_carousel` VALUES ('81', '/uploadFile/carousel/2.jpg', '买二手玩具，最低一元起', '0', null, null, '2017-07-14 10:42:49', null, '0', null);
INSERT INTO `market_carousel` VALUES ('82', '/uploadFile/carousel/3.jpg', '加盟只需', '0', null, null, '2017-07-14 11:18:40', null, '0', null);
INSERT INTO `market_carousel` VALUES ('83', '/uploadFile/carousel/4.jpg', '加盟费用8800，仅限前100名', '0', null, null, '2017-07-14 11:20:20', null, '0', null);
INSERT INTO `market_carousel` VALUES ('84', '/uploadFile/carousel/5.jpg', '爱租时代，加盟只需8800元', '0', null, null, '2017-07-18 17:18:38', null, '0', null);

-- ----------------------------
-- Table structure for `note`
-- ----------------------------
DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `noteId` int(11) NOT NULL AUTO_INCREMENT COMMENT '记笔编号',
  `content` varchar(10000) DEFAULT NULL COMMENT '笔记文字内容',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `accountId` int(11) DEFAULT NULL COMMENT '笔记创建人编号',
  `noteType` char(255) DEFAULT NULL COMMENT '笔记类型 0 图片  1  文字',
  `photos` varchar(1000) DEFAULT NULL COMMENT '图片 ,分割',
  `delFlag` char(255) DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  `babyId` int(11) DEFAULT NULL COMMENT '宝宝编号',
  `praiseCount` int(11) DEFAULT '0' COMMENT '点赞数量',
  `commentCount` int(11) DEFAULT '0' COMMENT '评论数量		',
  PRIMARY KEY (`noteId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note
-- ----------------------------
INSERT INTO `note` VALUES ('1', '已经是2015年了，我想写一篇新的，但是当我坐下来开始动笔的时候，想到了两个事情。一，这些东西被称作“必知必会”可能有人会觉得不太公平——如果你已经觉得2012年的那篇文章如此，那本文也是一样的了。也许有同学会说，我们应该把 “足够应付业务需求的技能” 作为 “前端必须掌握的知识”，但考虑到前端行业里也有各种各样的工作可供选择，这么做也只能得到一个并不适合所有人的 “前端基础知识”。对于我来说，我需要的不是工作，我想要的是被邀请去做一份牛逼的工作。我想要的不只是去干活而已，而是想和一群牛逼的人一起做牛逼的事。我不想仅仅满足于用已有的知识来完成现在的工作，而是希望掌握更多的知识来解决未来将会面对的问题。', '456456', '85', '0', '/uploadFiles/headPic/rui.jpeg', '0', null, '2015-04-07 16:04:26', null, null, '1', '0', '0');
INSERT INTO `note` VALUES ('2', '从2012年到现在，一篇文章都没发过让我觉得有点羞羞哒。三年是一段很长的时间，很多东西都发生了改变。2012年，我鼓励同学们去学习浏览器开发者工具和模块化；虽然有很多同学会觉得CSS预编译和客户端模板引擎并不靠谱，但我仍然想要说一说它们；还有JSHint，虽然有#getoffmylawn（滚出我的地盘）的警告，但依然无法阻止JSHint成为一个受欢迎的理念（准确的说，JSLint真的（只是）存在过）。 ', '45456456', '85', '0', '/uploadFiles/tmp/1.png,/uploadFiles/tmp/2.png,/uploadFiles/tmp/2.png,/uploadFiles/tmp/3.png', '0', null, '2015-04-08 09:24:30', null, null, '1', '0', '0');
INSERT INTO `note` VALUES ('3', '那时候当你知道 HT仍然停留在局限于某一小部分浏览器和设备上做轻量级的自动化功能测试，尽我们所能去研究怎样快速，低成本的进行这种测试的阶段仍然停留在局限于某一小部分浏览器和设备上做轻量级的自动化功能测试，尽我们所能去研究怎样快速，低成本的进行这种测试的阶段仍然停留在局限于某一小部分浏览器和设备上做轻量级的自动化功能测试，尽我们所能去研究怎样快速，低成本的进行这种测试的阶段仍然停留在局限于某一小部分浏览器和设备上做轻量级的自动化功能测试，尽我们所能去研究怎样快速，低成本的进行这种测试的阶段', '我们仍然停留在局限于某一小部分浏览器和设备上做轻量级的自动化功能测试，尽我们所能', '85', '1', '/uploadFiles/tmp/1.png', '0', null, '2015-04-08 17:35:30', null, null, '1', '0', '0');
INSERT INTO `note` VALUES ('4', '回想2009年，那时候当你知道 HTML5 在2014年才能用的时候，你是不是觉得这辈子基本上都用不到它了？如果是，那么你需要准备好接受进展缓慢但是已经趋于稳定的ES6了，它也是下一代的Javascript（现在叫 ES2015 了，嗯，这名字至少表示今年就能用了）。就我而言，ES6，额，ES2015 无疑是我个人现在最关注的 Javascript 内容。在 ES6 中将会出现一些比较大的变化crollview 是针对自己的第一次子元素的，你的这个listview是其一个子元素，给一定的空间显示，如楼上所说，你那个listview的滚动条应该是listview自身的，你在scrollview中多添加几个button，然后scrollview的滚动条就会出现了。crollview 是针对自己的第一次子元素的，你的这个listview是其一个子元素，给一定的空间显示，如楼上所说，你那个listview的滚动条应该是listview自身的，你在scrollview中多添加几个button，然后scrollview的滚动条就会出现了。crollview 是针对自己的第一次子元素的，你的这个listview是其一个子元素，给一定的空间显示，如楼上所说，你那个listview的滚动条应该是listview自身的，你在scrollview中多添加几个button，然后scrollview的滚动条就会出现了。crollview 是针对自己的第一次子元素的，你的这个listview是其一个子元素，给一定的空间显示，如楼上所说，你那个listview的滚动条应该是listview自身的，你在scrollview中多添加几个button，然后scrollview的滚动条就会出现了。crollview 是针对自己的第一次子元素的，你的这个listview是其一个子元素，给一定的空间显示，如楼上所说，你那个listview的滚动条应该是listview自身的，你在scrollview中多添加几个button，然后scrollview的滚动条就会出现了。crollview 是针对自己的第一次子元素的，你的这个listview是其一个子元素，给一定的空间显示，如楼上所说，你那个listview的滚动条应该是listview自身的，你在scrollview中多添加几个button，然后scrollview的滚动条就会出现了。crollview 是针对自己的第一次子元素的，你的这个listview是其一个子元素，给一定的空间显示，如楼上所说，你那个listview的滚动条应该是listview自身的，你在scrollview中多添加几个button，然后scrollview的滚动条就会出现了。：类，真正的私有，经过改进更易用的函数和参数设定，可导入的模块，等等等等。那些掌握和理解新的语法的同学以后将会在 JS 社区牛逼闪闪。相关阅读： crollview 是针对自己的第一次子元素的，你的这个listview是其一个子元素，给一定的空间显示，如楼上所说，你那个listview的滚动条应该是listview自身的，你在scrollview中多添加几个button，然后scrollview的滚动条就会出现了。crollview 是针对自己的第一次子元素的，你的这个listview是其一个子元素，给一定的空间显示，如楼上所说，你那个listview的滚动条应该是listview自身的，你在scrollview中多添加几个button，然后scrollview的滚动条就会出现了。crollview 是针对自己的第一次子元素的，你的这个listview是其一个子元素，给一定的空间显示，如楼上所说，你那个listview的滚动条应该是listview自身的，你在scrollview中多添加几个button，然后scrollview的滚动条就会出现了。crollview 是针对自己的第一次子元素的，你的这个listview是其一个子元素，给一定的空间显示，如楼上所说，你那个listview的滚动条应该是listview自身的，你在scrollview中多添加几个button，然后scrollview的滚动条就会出现了。', '带着大宝贝去颐和园', '85', '1', '/uploadFiles/tmp/4.png,/uploadFiles/tmp/2.png,/uploadFiles/tmp/2.png,/uploadFiles/tmp/4.png', '0', null, '2015-04-14 21:00:36', null, null, '1', '0', '0');
INSERT INTO `note` VALUES ('5', '测试的第二大障碍是工具。Webdriver 是一个艰难而巨大的工作。目前在各个浏览器端做持续集成的 UI 自动化测试基本上是不可能的，更不用说移动端了。我们仍然停留在局限于某一小部分浏览器和设备上做轻量级的自动化功能测试，尽我们所能去研究怎样快速，低成本的进行这种测试的阶段。', '人体艺术', '85', '1', '/uploadFiles/tmp/1.png,/uploadFiles/tmp/2.png,/uploadFiles/tmp/1.png,/uploadFiles/tmp/3.png', '0', null, '2015-04-15 10:42:11', null, null, '1', '0', '0');
INSERT INTO `note` VALUES ('6', 'Yeoman 在这两方面做的都很好。一个简单的 yo react-webpack 命令就可以为你初始化好你的项目，然后各种你想要的玩具也都应有尽有：生成测试用例，本地静态服务器，hello world 入门程序，等等等等。如果 React 和 webpack 不是你想要的，也许你会在 Yeoman 的 generators（项目生成器）里面找到一个你想要的，当然，自己自定义一个这样的构建包也是比较容易的。\r\n', 'gihtyi', '85', '0', '/uploadFiles/tmp/1.png,/uploadFiles/tmp/2.png,/uploadFiles/tmp/2.png,/uploadFiles/tmp/3.png', '0', null, '2015-04-15 10:42:46', null, null, '1', '0', '0');

-- ----------------------------
-- Table structure for `note_comment`
-- ----------------------------
DROP TABLE IF EXISTS `note_comment`;
CREATE TABLE `note_comment` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT COMMENT '笔记评论编号',
  `content` varchar(500) DEFAULT NULL COMMENT '评论内容',
  `customerId` int(11) DEFAULT NULL COMMENT '评论人',
  `noteId` int(11) DEFAULT NULL COMMENT '笔记编号',
  `commentTime` datetime DEFAULT NULL COMMENT '评论时间',
  `delFlag` char(255) DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of note_comment
-- ----------------------------
INSERT INTO `note_comment` VALUES ('1', '量的设备接入网络，联接变得无处不在。预计到2025年，全球有1000亿联接，55%的联接将集中在商业领域，如智能化制造生产、智慧', '85', '1', '2015-04-21 18:42:01', '0', null, '2015-04-21 18:42:06', null, null);
INSERT INTO `note_comment` VALUES ('2', '利、中国和阿联酋综合排名前三。中国在本次调研的50个国家位居中游，在发展中国家排名第二。这主要受益于快速发展的互联网经济，电子商务正呈现爆炸式增长，交易量仅次于美国和日本。各垂直行业投资加速转向', '85', '1', '2015-04-22 09:10:21', '0', null, '2015-04-22 09:10:21', null, null);
INSERT INTO `note_comment` VALUES ('3', '发展中国家中，智利、中国和阿联酋综合排名前三。中国在本次调研的50个国家位居中游，在发展中国家排名第二。这主要受益于快速发展的互联网经济', '85', '1', '2015-04-22 09:10:21', '0', null, '2015-04-22 09:10:21', null, null);
INSERT INTO `note_comment` VALUES ('4', '年全球联接指数研究发现，美国、瑞典、新加坡排名前三。美国凭借强大的创新机制、人才积累等方面的优势，在2015年全球联接指数中位居第一', '85', '1', '2015-04-22 09:10:21', '0', null, '2015-04-22 09:10:21', null, null);
INSERT INTO `note_comment` VALUES ('5', '从关键技术使能角度分析，宽带、云计算、物联网、大数据和数据中心等技术不断发展、相互促进，为数字经济发展提供坚实的基石。其中，数据中心建设是ICT发展', '85', '1', '2015-04-22 09:10:21', '0', null, '2015-04-22 09:10:21', null, null);
INSERT INTO `note_comment` VALUES ('6', '从关键技术使能角度分析，宽带、云计算、物联网、大数据和数据中心等技术不断发展、相互促进，为数字经济发展提供坚实的基石。其中，数据中心建设是ICT发展的关键，也是云计算普及的催化剂。发展中国家往往注重宽带联接方面的投资，但在数据中心等核心能力建设方面明显落后于发达国家。研究表明，发达国家的数据中心投资在GDP占比平均为0.76%，而发展中国家仅为0.32%。\r\n\r\n未来，将有海量的设备接入网络，联接变得无处不在。预计到2025年，全球有1000亿联接，55%的联接将集中在商业领域，如智能化制造生产、智慧城市、公共服务等，其投资价值在于提升生产效率，改善资产利用率，发挥竞争优势。此外，45%的联接应用在智能家居、车联网、可穿戴设备等面向消费者的领域，将极大地提升生活品质', '85', '1', '2015-04-22 09:10:21', '0', null, '2015-04-22 09:10:21', null, null);

-- ----------------------------
-- Table structure for `order_product`
-- ----------------------------
DROP TABLE IF EXISTS `order_product`;
CREATE TABLE `order_product` (
  `opId` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL COMMENT '单号订',
  `productId` int(11) DEFAULT NULL COMMENT '品商编号',
  `money` double(8,2) DEFAULT NULL COMMENT '额',
  `count` int(11) DEFAULT NULL COMMENT '购买数量',
  `delFlag` char(1) DEFAULT '0',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `isComment` char(255) DEFAULT '1' COMMENT '否是评价',
  PRIMARY KEY (`opId`)
) ENGINE=InnoDB AUTO_INCREMENT=1002406 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_product
-- ----------------------------
INSERT INTO `order_product` VALUES ('1002385', '1002384', '1856', '246.00', '2', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002386', '1002384', '1857', '246.00', '2', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002387', '1002384', '1853', '246.00', '2', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002388', '1002385', '1856', '246.00', '2', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002389', '1002385', '1857', '246.00', '2', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002390', '1002385', '1853', '246.00', '2', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002391', '1002386', '1857', '123.00', '1', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002392', '1002387', '1857', '123.00', '1', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002393', '1002388', '1855', '123.00', '1', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002394', '1002389', '1856', '123.00', '1', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002395', '1002390', '1857', '123.00', '1', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002396', '1002391', '1855', '246.00', '2', '0', null, null, null, '2017-09-13 16:35:59', '0');
INSERT INTO `order_product` VALUES ('1002397', '1002391', '1854', '123.00', '1', '0', null, null, null, '2017-09-13 16:36:17', '0');
INSERT INTO `order_product` VALUES ('1002398', '1002392', '1857', '123.00', '1', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002399', '1002392', '1856', '123.00', '1', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002400', '1002392', '1855', '123.00', '1', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002401', '1002392', '1853', '123.00', '1', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002402', '1002393', '1856', '123.00', '1', '0', null, null, null, '2017-09-13 16:38:57', '0');
INSERT INTO `order_product` VALUES ('1002403', '1002394', '1855', '123.00', '1', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002404', '1002395', '1857', '123.00', '1', '0', null, null, null, null, '1');
INSERT INTO `order_product` VALUES ('1002405', '1002396', '1857', '123.00', '1', '0', null, null, null, null, '1');

-- ----------------------------
-- Table structure for `orderinfo`
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别编号',
  `accountId` int(11) DEFAULT NULL,
  `status` char(2) DEFAULT '1' COMMENT '状态【0、失败 1下单待支付 2 支付成功、3、商家确认收单 4配送中 5、签收 6交易完成】',
  `statusDesc` varchar(255) DEFAULT NULL,
  `descContent` varchar(255) DEFAULT NULL COMMENT '单订描述文字',
  `descPic` varchar(1000) DEFAULT NULL COMMENT '单订描述图片',
  `money` double(8,2) DEFAULT NULL COMMENT '支付金额',
  `expressMoney` double DEFAULT NULL COMMENT '费运',
  `productCount` int(11) DEFAULT NULL COMMENT '商品种类个数',
  `linkUserName` varchar(255) DEFAULT NULL COMMENT '联系人姓名',
  `linkAddress` varchar(100) DEFAULT NULL COMMENT '联系地址',
  `linkTelephone` varchar(11) DEFAULT NULL,
  `payRoute` char(2) DEFAULT NULL COMMENT '支付路由0  支付宝 1  微信 2   钱包',
  `remark` varchar(2000) DEFAULT NULL COMMENT '注备',
  `delFlag` char(1) DEFAULT '0',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `confirmTime` datetime DEFAULT NULL COMMENT '订单确认时间【接单时间】',
  `expressTime` datetime DEFAULT NULL COMMENT '派送时间',
  `signTime` datetime DEFAULT NULL COMMENT '签收时间',
  `isComment` char(255) DEFAULT '1' COMMENT '否是评价',
  `completeTime` datetime DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=1002397 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES ('1002384', '85', '1', '待支付', ' 在经历大规模重组之后，中国最大的航运公司—中国海', 'http://47.94.205.255:8082//uploadFile/product/201708/2d5c963d-85aa-44c4-8425-a92e006386ce.png', '738.00', '20', '3', '李海军', '北京', '15010123247', null, null, '0', null, null, '2017-09-12 11:40:31', null, null, null, null, '1', null);
INSERT INTO `orderinfo` VALUES ('1002385', '85', '1', '待支付', ' 在经历大规模重组之后，中国最大的航运公司—中国海', 'http://47.94.205.255:8082//uploadFile/product/201708/2d5c963d-85aa-44c4-8425-a92e006386ce.png', '738.00', '20', '3', '李海军', '北京', '15010123247', null, null, '0', null, null, '2017-09-12 11:50:27', null, null, null, null, '1', null);
INSERT INTO `orderinfo` VALUES ('1002386', '85', '2', '支付完成', ' 在经历大规模重组之后，中国最大的航运公司—中国', 'http://47.94.205.255:8082//uploadFile/product/201708/2d5c963d-85aa-44c4-8425-a92e006386ce.png', '123.00', '20', '1', '李海军', '北京', '15010123247', null, null, '0', null, null, '2017-09-12 14:41:39', '2017-09-14 15:29:08', null, null, null, '1', null);
INSERT INTO `orderinfo` VALUES ('1002387', '85', '2', '支付完成', ' 在经历大规模重组之后，中国最大的航运公司—中国', 'http://47.94.205.255:8082//uploadFile/product/201708/2d5c963d-85aa-44c4-8425-a92e006386ce.png', '123.00', '20', '1', '李海军', '北京', '15010123247', null, null, '0', null, null, '2017-09-12 15:15:45', '2017-09-12 15:23:39', null, null, null, '1', null);
INSERT INTO `orderinfo` VALUES ('1002388', '85', '2', '支付完成', ' 在经历大规模重组之后，中国最大的航运公司—中国', 'http://47.94.205.255:8082//uploadFile/product/201708/2d5c963d-85aa-44c4-8425-a92e006386ce.png', '123.00', '20', '1', '李海军', '北京', '15010123247', null, null, '0', null, null, '2017-09-12 15:33:18', '2017-09-12 15:33:22', null, null, null, '1', null);
INSERT INTO `orderinfo` VALUES ('1002389', '85', '4', '待收货', ' 在经历大规模重组之后，中国最大的航运公司—中国海', 'http://47.94.205.255:8082//uploadFile/product/201708/2d5c963d-85aa-44c4-8425-a92e006386ce.png', '123.00', '20', '1', '李海军', '北京', '15010123247', null, null, '0', null, null, '2017-09-12 15:56:19', '2017-09-12 15:57:54', null, null, null, '1', null);
INSERT INTO `orderinfo` VALUES ('1002390', '85', '4', '待收货', '在经历大规模重组之后，中国最大的航运公司—中国海在经历大规模重组之后，中国最大的航运公司—中国海', 'http://47.94.205.255:8082//uploadFile/product/201708/fc706638-0191-43b3-b11d-99be3eb2901b.jpg', '123.00', '20', '1', '李海军', '北京', '15010123247', null, null, '0', null, null, '2017-09-12 19:59:26', '2017-09-12 19:59:32', '2017-09-14 15:45:30', '2017-09-14 15:45:40', '2017-10-06 15:45:48', '1', '2017-09-23 15:45:59');
INSERT INTO `orderinfo` VALUES ('1002391', '85', '6', '交易成功', 'ҡҡ', 'http://47.94.205.255:8082//uploadFile/product/201708/9d996f27-4d32-466f-961a-17c3e2495e77.jpg', '369.00', '20', '2', '李海军', '北京公司都开始接口设计覅哦时间覅哦稍等机房集散地哦佛教圣地哦封建时代覅哦记得是覅哦', '15010123247', '1', null, '0', null, null, '2017-09-12 21:22:49', '2017-09-13 16:35:57', null, null, null, '0', null);
INSERT INTO `orderinfo` VALUES ('1002392', '85', '6', '支付完成', '在经历大规模重组之后，中国最大的航运公司—中国海在经历大规模重组之后，中国最大的航运公司—中国海', 'http://47.94.205.255:8082//uploadFile/product/201708/fc706638-0191-43b3-b11d-99be3eb2901b.jpg', '492.00', '20', '4', '李海军', '北京', '15010123247', null, null, '1', null, null, '2017-09-13 13:04:34', '2017-09-13 13:14:04', null, null, null, '1', null);
INSERT INTO `orderinfo` VALUES ('1002393', '85', '6', '支付完成', ' 在经历大规模重组之后，中国最大的航运公司—中国海', 'http://47.94.205.255:8082//uploadFile/product/201708/2d5c963d-85aa-44c4-8425-a92e006386ce.png', '123.00', '20', '1', '李海军', '北京', '15010123247', null, null, '0', null, null, '2017-09-13 16:38:01', '2017-09-13 16:38:57', null, null, null, '0', null);
INSERT INTO `orderinfo` VALUES ('1002394', '85', '2', '支付完成', 'ҡҡ', 'http://47.94.205.255:8082//uploadFile/product/201708/9d996f27-4d32-466f-961a-17c3e2495e77.jpg', '123.00', '20', '1', '李海军', '北京', '15010123247', null, null, '0', null, null, '2017-09-14 15:15:41', '2017-09-14 15:28:51', '2017-09-14 15:28:51', '2017-09-14 15:28:51', '2017-09-14 15:28:51', '1', '2017-09-14 15:44:18');
INSERT INTO `orderinfo` VALUES ('1002395', '85', '2', '支付完成', '在经历大规模重组之后，中国最大的航运公司—中国海在经历大规模重组之后，中国最大的航运公司—中国海', 'http://47.94.205.255:8082//uploadFile/product/201708/fc706638-0191-43b3-b11d-99be3eb2901b.jpg', '123.00', '20', '1', '李海军', '北京', '15010123247', null, null, '0', null, null, '2017-09-14 17:04:16', '2017-09-14 17:04:49', null, null, null, '1', null);
INSERT INTO `orderinfo` VALUES ('1002396', '85', '2', '支付完成', '在经历大规模重组之后，中国最大的航运公司—中国海在经历大规模重组之后，中国最大的航运公司—中国海', 'http://47.94.205.255:8082//uploadFile/product/201708/fc706638-0191-43b3-b11d-99be3eb2901b.jpg', '123.00', '20', '1', '李海军', '北京', '15010123247', null, null, '0', null, null, '2017-09-14 17:06:55', '2017-09-14 17:06:58', null, null, null, '1', null);

-- ----------------------------
-- Table structure for `product`
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) NOT NULL COMMENT '品商名称',
  `productNO` varchar(255) DEFAULT NULL COMMENT '品商编号',
  `productType` char(2) DEFAULT NULL COMMENT '商品类型  1、普通商品 2 推荐商品  3 热卖商品',
  `status` char(2) DEFAULT '0' COMMENT '0 正常 1人工下架  2 库存下架',
  `store` int(11) DEFAULT NULL,
  `pics` varchar(5000) DEFAULT NULL,
  `pic` varchar(1000) DEFAULT NULL COMMENT '片图',
  `brandId` int(11) DEFAULT NULL COMMENT '牌品',
  `categoryId` int(11) DEFAULT NULL COMMENT '别类',
  `descriptions` varchar(5000) DEFAULT NULL COMMENT '绍介',
  `delFlag` char(1) DEFAULT '0',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `marketPrice` double(8,2) DEFAULT NULL,
  `detailDesc` longtext COMMENT '商品详情描述',
  `promotion` varchar(255) DEFAULT NULL COMMENT '促销内容',
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=1991 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('97', 'B-toys', '9', '1', '0', '1', '/uploadFile/product/201707/b8f69c8c-bb58-4544-bab0-f7642a91c611.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b8f69c8c-bb58-4544-bab0-f7642a91c611.jpg', '122', '124', 'B-toys', '0', 'admin', 'admin', '2017-07-10 15:05:02', '2017-07-12 20:28:58', '123.00', '353.00', null, null);
INSERT INTO `product` VALUES ('98', 'B-toysľ', '1', '1', '0', '1', '/uploadFile/product/201707/43ad44ad-a5a7-43a6-8feb-fbdb3df270cd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/43ad44ad-a5a7-43a6-8feb-fbdb3df270cd.jpg', '122', '128', 'B-toysľ', '0', 'admin', 'admin', '2017-07-10 15:05:41', '2017-07-11 15:45:45', '123.00', '3454.00', null, null);
INSERT INTO `product` VALUES ('99', '1', '1', '1', '0', '1', '/uploadFile/product/201707/2936ab02-723f-44ac-afe8-5abbe6343090.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2936ab02-723f-44ac-afe8-5abbe6343090.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 15:06:59', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('100', '', '1', '1', '0', '1', '/uploadFile/product/201707/55fba552-237e-42dd-b0f5-76d9a253f954.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/55fba552-237e-42dd-b0f5-76d9a253f954.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:10:23', '2017-07-11 16:04:56', '123.00', '565.00', null, null);
INSERT INTO `product` VALUES ('101', '1', '1', '1', '0', '1', '/uploadFile/product/201707/dbc1c6b8-3bba-4687-851b-8f16097adde0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/dbc1c6b8-3bba-4687-851b-8f16097adde0.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 15:10:56', null, '123.00', '56.00', null, null);
INSERT INTO `product` VALUES ('102', '1', '1', '1', '0', '1', '/uploadFile/product/201707/c1b3b5aa-e2e6-4c1a-a0b4-6d5c68d1a36f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c1b3b5aa-e2e6-4c1a-a0b4-6d5c68d1a36f.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 15:14:04', null, '123.00', '34.00', null, null);
INSERT INTO `product` VALUES ('103', '', '1', '1', '0', '1', '/uploadFile/product/201707/9987a93a-44c0-426c-9800-410845518e22.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/9987a93a-44c0-426c-9800-410845518e22.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:14:54', '2017-07-11 16:09:15', '123.00', null, null, null);
INSERT INTO `product` VALUES ('104', '', '1', '1', '0', '1', '/uploadFile/product/201707/416411aa-8483-4bee-af94-bc7e6250cafb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/416411aa-8483-4bee-af94-bc7e6250cafb.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:15:47', '2017-07-12 19:48:30', '123.00', null, null, null);
INSERT INTO `product` VALUES ('105', '', '1', '1', '0', '1', '/uploadFile/product/201707/4ed85409-6ebe-49d2-b046-d0dcedcdac1a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4ed85409-6ebe-49d2-b046-d0dcedcdac1a.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:16:33', '2017-07-12 21:40:26', '123.00', null, null, null);
INSERT INTO `product` VALUES ('106', '', '1', '1', '0', '1', '/uploadFile/product/201707/edd5ad73-e8d3-4067-ab94-578a4f8bdee9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/edd5ad73-e8d3-4067-ab94-578a4f8bdee9.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:18:25', '2017-07-17 11:12:30', '123.00', null, null, null);
INSERT INTO `product` VALUES ('107', '', '1', '1', '0', '1', '/uploadFile/product/201707/6ded5e2e-0837-4452-8b47-997ce2a27f3c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6ded5e2e-0837-4452-8b47-997ce2a27f3c.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:18:45', '2017-07-12 21:45:00', '123.00', null, null, null);
INSERT INTO `product` VALUES ('108', '', '1', '1', '0', '1', '/uploadFile/product/201707/44b0b0e0-7d67-4045-a62d-974ec5e0192a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/44b0b0e0-7d67-4045-a62d-974ec5e0192a.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:19:39', '2017-07-12 21:45:35', '123.00', null, null, null);
INSERT INTO `product` VALUES ('109', '', '1', '1', '0', '1', '/uploadFile/product/201707/2dad2c76-3080-41e7-920d-dad7b12e0404.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2dad2c76-3080-41e7-920d-dad7b12e0404.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:24:20', '2017-07-12 21:46:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('110', '', '1', '1', '0', '1', '/uploadFile/product/201707/c88ad786-b554-42c4-84c2-dad1ff5684ef.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c88ad786-b554-42c4-84c2-dad1ff5684ef.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:29:43', '2017-07-12 21:46:50', '123.00', null, null, null);
INSERT INTO `product` VALUES ('111', '', '1', '1', '0', '1', '/uploadFile/product/201707/387e746c-db47-4469-a302-d435d7058fca.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/387e746c-db47-4469-a302-d435d7058fca.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:32:31', '2017-07-11 16:22:48', '123.00', null, null, null);
INSERT INTO `product` VALUES ('112', '', '1', '1', '0', '1', '/uploadFile/product/201707/a65d3026-0ba8-493c-8d33-4a3f351f0d5a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a65d3026-0ba8-493c-8d33-4a3f351f0d5a.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:33:00', '2017-07-11 16:23:13', '123.00', null, null, null);
INSERT INTO `product` VALUES ('113', '', '1', '1', '0', '1', '/uploadFile/product/201707/0923b669-e1e5-4d3a-96fa-fc1ddc3c9328.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/0923b669-e1e5-4d3a-96fa-fc1ddc3c9328.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:34:49', '2017-07-11 16:28:46', '123.00', null, null, null);
INSERT INTO `product` VALUES ('114', '', '1', '1', '0', '1', '/uploadFile/product/201707/b91e6575-a5c6-4075-808e-80251c8ced47.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b91e6575-a5c6-4075-808e-80251c8ced47.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:35:47', '2017-07-12 21:47:19', '123.00', null, null, null);
INSERT INTO `product` VALUES ('115', 'ɳ', '1', '1', '0', '1', '/uploadFile/product/201707/b602748d-2fbc-4e2b-9fc9-7e536d02280a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b602748d-2fbc-4e2b-9fc9-7e536d02280a.jpg', '122', '124', 'ɳ', '0', 'admin', 'admin', '2017-07-10 15:36:10', '2017-07-11 21:27:00', '123.00', null, null, null);
INSERT INTO `product` VALUES ('116', '', '1', '1', '0', '1', '/uploadFile/product/201707/7c304713-17a5-4f73-a1da-900d60b01d10.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/7c304713-17a5-4f73-a1da-900d60b01d10.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:36:43', '2017-07-11 22:12:57', '123.00', null, null, null);
INSERT INTO `product` VALUES ('117', '', '1', '1', '0', '1', '/uploadFile/product/201707/1ca8bde4-323e-440e-bd64-e8e6b9be4b05.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/1ca8bde4-323e-440e-bd64-e8e6b9be4b05.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:37:13', '2017-07-11 22:04:23', '123.00', null, null, null);
INSERT INTO `product` VALUES ('118', '', '1', '1', '0', '1', '/uploadFile/product/201707/528bc87c-633e-40fd-a999-f431e5546069.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/528bc87c-633e-40fd-a999-f431e5546069.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:37:35', '2017-07-11 22:03:45', '123.00', null, null, null);
INSERT INTO `product` VALUES ('119', '', '1', '1', '0', '1', '/uploadFile/product/201707/115c4f1c-eb4c-4ea5-a7a6-c0cd56d489fe.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/115c4f1c-eb4c-4ea5-a7a6-c0cd56d489fe.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:37:56', '2017-07-11 22:08:16', '123.00', null, null, null);
INSERT INTO `product` VALUES ('120', '', '1', '1', '0', '1', '/uploadFile/product/201707/0795b422-b8ab-4c1c-aa9d-763e8266717b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/0795b422-b8ab-4c1c-aa9d-763e8266717b.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:38:19', '2017-07-11 22:09:28', '123.00', null, null, null);
INSERT INTO `product` VALUES ('121', '', '1', '1', '0', '1', '/uploadFile/product/201707/a0233397-eaa8-4a44-be10-f63cb359dcd7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a0233397-eaa8-4a44-be10-f63cb359dcd7.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 15:38:40', '2017-07-11 22:12:26', '123.00', null, null, null);
INSERT INTO `product` VALUES ('122', '', '1', '1', '0', '1', '/uploadFile/product/201707/6414b3fb-6b52-49da-9353-3086b154e1c5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6414b3fb-6b52-49da-9353-3086b154e1c5.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 15:39:49', '2017-07-16 16:59:04', '123.00', null, null, null);
INSERT INTO `product` VALUES ('123', '1', '1', '1', '0', '1', '/uploadFile/product/201707/fbd45c48-d854-4cce-8f61-c3834846b482.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/fbd45c48-d854-4cce-8f61-c3834846b482.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 15:40:41', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('124', 'INTEX', '1', '1', '0', '1', '/uploadFile/product/201707/7fc16d7d-6f48-488b-a6bb-f593cfd323c3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/7fc16d7d-6f48-488b-a6bb-f593cfd323c3.jpg', '122', '124', 'INTEX', '0', 'admin', 'admin', '2017-07-10 15:41:08', '2017-07-11 16:57:00', '123.00', null, null, null);
INSERT INTO `product` VALUES ('125', '', '1', '1', '0', '1', '/uploadFile/product/201707/71fd22d0-a55d-483a-9023-77544fddb061.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/71fd22d0-a55d-483a-9023-77544fddb061.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:41:30', '2017-07-11 17:33:39', '123.00', null, null, null);
INSERT INTO `product` VALUES ('126', '', '1', '1', '0', '1', '/uploadFile/product/201707/c27d6b31-be8b-4744-bf03-28d660150862.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c27d6b31-be8b-4744-bf03-28d660150862.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:41:51', '2017-07-11 21:40:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('127', 'INTEX', '1', '1', '0', '1', '/uploadFile/product/201707/156b5bd4-1e53-43dc-879b-8688333ee9e1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/156b5bd4-1e53-43dc-879b-8688333ee9e1.jpg', '122', '124', 'INTEX', '0', 'admin', 'admin', '2017-07-10 15:42:15', '2017-07-11 16:56:29', '123.00', null, null, null);
INSERT INTO `product` VALUES ('128', '', '1', '1', '0', '1', '/uploadFile/product/201707/91aad172-8e9c-4885-95c8-47905fafce38.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/91aad172-8e9c-4885-95c8-47905fafce38.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:42:37', '2017-07-12 21:48:48', '123.00', null, null, null);
INSERT INTO `product` VALUES ('129', '', '1', '1', '0', '1', '/uploadFile/product/201707/6a306e04-803d-4f76-b2d5-241451d7fad8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6a306e04-803d-4f76-b2d5-241451d7fad8.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:43:01', '2017-07-11 21:57:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('130', '', '1', '1', '0', '1', '/uploadFile/product/201707/86cbc249-acc5-4e98-bdcf-564f3fe7ee9e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/86cbc249-acc5-4e98-bdcf-564f3fe7ee9e.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:43:28', '2017-07-12 21:49:29', '123.00', null, null, null);
INSERT INTO `product` VALUES ('131', '', '1', '1', '0', '1', '/uploadFile/product/201707/c04d60f7-0b25-4de2-8e1a-4c9cca3af7de.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c04d60f7-0b25-4de2-8e1a-4c9cca3af7de.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:43:49', '2017-07-12 21:50:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('132', 'ɳ', '1', '1', '0', '1', '/uploadFile/product/201707/87111d20-5ce5-495e-bc9b-e4597d78b3e3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/87111d20-5ce5-495e-bc9b-e4597d78b3e3.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:44:11', '2017-07-11 21:59:18', '123.00', null, null, null);
INSERT INTO `product` VALUES ('133', 'ɳ', '1', '1', '0', '1', '/uploadFile/product/201707/2b01092d-2a6a-4ccc-80db-3584ce656654.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2b01092d-2a6a-4ccc-80db-3584ce656654.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:44:37', '2017-07-11 22:02:26', '123.00', null, null, null);
INSERT INTO `product` VALUES ('134', '', '1', '1', '0', '1', '/uploadFile/product/201707/97d6ffaa-8097-4f9d-a108-39f4659525ad.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/97d6ffaa-8097-4f9d-a108-39f4659525ad.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:45:42', '2017-07-11 16:47:32', '123.00', null, null, null);
INSERT INTO `product` VALUES ('135', '', '1', '1', '0', '1', '/uploadFile/product/201707/11f1cfb2-418f-402a-af06-a27b824002ec.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/11f1cfb2-418f-402a-af06-a27b824002ec.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:46:06', '2017-07-11 22:13:18', '123.00', null, null, null);
INSERT INTO `product` VALUES ('136', 'LEGO ', '1', '1', '0', '1', '/uploadFile/product/201707/05c0ca72-c574-4bff-a26c-1fa3015cf383.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/05c0ca72-c574-4bff-a26c-1fa3015cf383.jpg', '122', '124', 'LEGO ', '1', 'admin', 'admin', '2017-07-10 15:46:27', '2017-07-11 17:30:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('137', 'Lego', '1', '1', '0', '1', '/uploadFile/product/201707/863bf809-42b8-4c9e-9887-ff3231a79b90.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/863bf809-42b8-4c9e-9887-ff3231a79b90.jpg', '122', '124', 'Lego', '1', 'admin', 'admin', '2017-07-10 15:46:47', '2017-07-11 17:14:02', '123.00', null, null, null);
INSERT INTO `product` VALUES ('138', '', '1', '1', '0', '1', '/uploadFile/product/201707/cbe0c493-075a-4402-ad66-3fcf0c0cce07.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/cbe0c493-075a-4402-ad66-3fcf0c0cce07.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-07-10 15:47:09', '2017-07-11 18:31:15', '123.00', null, null, null);
INSERT INTO `product` VALUES ('139', '', '1', '1', '0', '1', '/uploadFile/product/201707/ea457968-fcd3-4431-9945-2cc512d990bc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ea457968-fcd3-4431-9945-2cc512d990bc.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 15:47:31', '2017-07-11 17:42:04', '123.00', null, null, null);
INSERT INTO `product` VALUES ('140', '', '1', '1', '0', '1', '/uploadFile/product/201707/ff61c146-c4af-42d5-9753-3c483a104388.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ff61c146-c4af-42d5-9753-3c483a104388.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 15:47:50', '2017-07-11 22:17:33', '123.00', null, null, null);
INSERT INTO `product` VALUES ('141', '', '1', '1', '0', '1', '/uploadFile/product/201707/4f19cccb-c02c-4331-9018-de54f2bb42e5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4f19cccb-c02c-4331-9018-de54f2bb42e5.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 15:48:51', '2017-07-11 18:23:38', '123.00', null, null, null);
INSERT INTO `product` VALUES ('142', '1', '1', '1', '0', '1', '/uploadFile/product/201707/ec3eb85f-f56e-41d3-b5ed-1c72da418164.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ec3eb85f-f56e-41d3-b5ed-1c72da418164.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 15:49:10', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('143', 'С', '1', '1', '0', '1', '/uploadFile/product/201707/060d558a-46f7-4002-abab-b8bbe9ac5235.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/060d558a-46f7-4002-abab-b8bbe9ac5235.jpg', '122', '124', 'С', '0', 'admin', 'admin', '2017-07-10 15:49:43', '2017-07-11 22:26:48', '123.00', null, null, null);
INSERT INTO `product` VALUES ('144', '', '1', '1', '0', '1', '/uploadFile/product/201707/b52b1d11-8dc8-43b2-9f50-f2c3b06650b2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b52b1d11-8dc8-43b2-9f50-f2c3b06650b2.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:50:08', '2017-07-11 22:29:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('145', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/609b5578-5173-4a02-8c7c-4d3196181bf9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/609b5578-5173-4a02-8c7c-4d3196181bf9.jpg', '122', '124', 'С̩', '0', 'admin', 'admin', '2017-07-10 15:50:30', '2017-07-11 19:12:11', '123.00', null, null, null);
INSERT INTO `product` VALUES ('146', '', '1', '1', '0', '1', '/uploadFile/product/201707/53bb46d6-a980-466b-97ab-66e57a3da039.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/53bb46d6-a980-466b-97ab-66e57a3da039.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 15:50:51', '2017-07-11 22:35:05', '123.00', null, null, null);
INSERT INTO `product` VALUES ('147', '1', '1', '1', '0', '1', '/uploadFile/product/201707/73471e7d-2a0d-4fe2-ba4f-60c038baa4dc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/73471e7d-2a0d-4fe2-ba4f-60c038baa4dc.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 15:51:14', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('148', '', '1', '1', '0', '1', '/uploadFile/product/201707/9f46c0bc-7504-4f0b-aad9-3f17be9f0c1e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/9f46c0bc-7504-4f0b-aad9-3f17be9f0c1e.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:51:40', '2017-07-11 16:48:59', '123.00', null, null, null);
INSERT INTO `product` VALUES ('149', 'ά', '1', '1', '0', '1', '/uploadFile/product/201707/ef0cb714-b47b-4d08-8c85-60aea7a96d72.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ef0cb714-b47b-4d08-8c85-60aea7a96d72.jpg', '122', '124', 'ά', '0', 'admin', 'admin', '2017-07-10 15:52:03', '2017-07-11 22:38:22', '123.00', null, null, null);
INSERT INTO `product` VALUES ('150', '', '1', '1', '0', '1', '/uploadFile/product/201707/d32a7647-38bc-44de-9f90-fcea08dc22a5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d32a7647-38bc-44de-9f90-fcea08dc22a5.jpg', '122', '128', '', '0', 'admin', 'admin', '2017-07-10 15:52:21', '2017-07-11 17:53:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('151', '', '1', '1', '0', '1', '/uploadFile/product/201707/ca2a6b89-8d09-4d21-a9a0-f37ef47e91a4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ca2a6b89-8d09-4d21-a9a0-f37ef47e91a4.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:52:46', '2017-07-11 18:41:21', '123.00', null, null, null);
INSERT INTO `product` VALUES ('152', '1', '1', '1', '0', '1', '/uploadFile/product/201707/016d26ed-12b0-4726-b4be-4d8dc04f34fc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/016d26ed-12b0-4726-b4be-4d8dc04f34fc.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 15:53:17', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('153', '', '1', '1', '0', '1', '/uploadFile/product/201707/a6675ab1-3b35-4c4b-b7da-a188aa5b693a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a6675ab1-3b35-4c4b-b7da-a188aa5b693a.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 15:53:39', '2017-07-11 22:42:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('154', '', '1', '1', '0', '1', '/uploadFile/product/201707/eab1c57d-46cb-4af6-a009-1a95dca2ab21.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/eab1c57d-46cb-4af6-a009-1a95dca2ab21.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:54:09', '2017-07-11 22:46:36', '123.00', null, null, null);
INSERT INTO `product` VALUES ('155', '', '1', '1', '0', '1', '/uploadFile/product/201707/bf08754e-f3de-466d-aaac-2fedd375e9cf.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/bf08754e-f3de-466d-aaac-2fedd375e9cf.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:54:28', '2017-07-11 22:47:41', '123.00', null, null, null);
INSERT INTO `product` VALUES ('156', '', '1', '1', '0', '1', '/uploadFile/product/201707/573da7e7-77de-4878-ba75-18e82bbe6405.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/573da7e7-77de-4878-ba75-18e82bbe6405.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:54:51', '2017-07-11 22:51:33', '123.00', null, null, null);
INSERT INTO `product` VALUES ('157', '', '1', '1', '0', '1', '/uploadFile/product/201707/fc1240a4-39bc-4412-ba81-356bcb4db46a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/fc1240a4-39bc-4412-ba81-356bcb4db46a.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:55:11', '2017-07-11 22:55:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('158', '', '1', '1', '0', '1', '/uploadFile/product/201707/e708a9b0-5552-4b4d-8f64-4b35dff911cd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/e708a9b0-5552-4b4d-8f64-4b35dff911cd.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 15:55:34', '2017-07-11 22:59:13', '123.00', null, null, null);
INSERT INTO `product` VALUES ('159', '', '1', '1', '0', '1', '/uploadFile/product/201707/38a0ec3b-40f7-412a-b899-6f2e1797a991.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/38a0ec3b-40f7-412a-b899-6f2e1797a991.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 15:56:01', '2017-07-11 23:01:55', '123.00', null, null, null);
INSERT INTO `product` VALUES ('160', '1', '1', '1', '0', '1', '/uploadFile/product/201707/162eb15f-42ec-456f-85ef-f61d1f696709.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/162eb15f-42ec-456f-85ef-f61d1f696709.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 15:57:05', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('161', 'ƴ', '1', '1', '0', '1', '/uploadFile/product/201707/b6e2b606-c859-47fb-9a60-7689b7cd68b3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b6e2b606-c859-47fb-9a60-7689b7cd68b3.jpg', '122', '128', 'ƴ', '0', 'admin', 'admin', '2017-07-10 15:57:52', '2017-07-12 21:52:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('162', '', '1', '1', '0', '1', '/uploadFile/product/201707/4d1279c4-405e-412f-8a15-01aaf1de7036.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4d1279c4-405e-412f-8a15-01aaf1de7036.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 15:58:17', '2017-07-11 23:19:48', '123.00', null, null, null);
INSERT INTO `product` VALUES ('163', '', '1', '1', '0', '1', '/uploadFile/product/201707/2a7204f8-060b-446b-a6d8-0ce810811b72.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2a7204f8-060b-446b-a6d8-0ce810811b72.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 15:58:55', '2017-07-11 23:21:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('164', '', '1', '1', '0', '1', '/uploadFile/product/201707/5e61cf56-bd9b-49aa-a738-8a3768a9d890.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5e61cf56-bd9b-49aa-a738-8a3768a9d890.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-07-10 15:59:15', '2017-07-12 21:53:21', '123.00', null, null, null);
INSERT INTO `product` VALUES ('165', '', '1', '1', '0', '1', '/uploadFile/product/201707/5c781e8b-8815-4047-8de3-69171405a46c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5c781e8b-8815-4047-8de3-69171405a46c.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 15:59:35', '2017-07-12 21:54:28', '123.00', null, null, null);
INSERT INTO `product` VALUES ('166', '1', '1', '1', '0', '1', '/uploadFile/product/201707/3e26c4dd-7279-4f09-b8f5-4e5ad92e2aae.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3e26c4dd-7279-4f09-b8f5-4e5ad92e2aae.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 15:59:58', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('167', '', '1', '1', '0', '1', '/uploadFile/product/201707/9eb5a779-0e31-449a-ad44-1dce34f954a3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/9eb5a779-0e31-449a-ad44-1dce34f954a3.jpg', '122', '128', '', '0', 'admin', 'admin', '2017-07-10 16:00:47', '2017-07-11 23:29:39', '123.00', null, null, null);
INSERT INTO `product` VALUES ('168', '', '1', '1', '0', '1', '/uploadFile/product/201707/999d8385-4fe3-4e68-9509-5e34b339d9b7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/999d8385-4fe3-4e68-9509-5e34b339d9b7.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:01:07', '2017-07-11 23:48:19', '123.00', null, null, null);
INSERT INTO `product` VALUES ('169', '', '1', '1', '0', '1', '/uploadFile/product/201707/23d1ebee-044b-4c41-aaa8-9a0179d63f89.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/23d1ebee-044b-4c41-aaa8-9a0179d63f89.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:01:30', '2017-07-11 23:51:18', '123.00', null, null, null);
INSERT INTO `product` VALUES ('170', '1', '1', '1', '0', '1', '/uploadFile/product/201707/a0faef01-bc26-4e0f-9085-e0765eaac047.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a0faef01-bc26-4e0f-9085-e0765eaac047.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 16:01:50', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('171', '', '1', '1', '0', '1', '/uploadFile/product/201707/0bd38b66-8b07-4e47-83fd-ea80f2e6134a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/0bd38b66-8b07-4e47-83fd-ea80f2e6134a.jpg', '122', '128', '', '0', 'admin', 'admin', '2017-07-10 16:02:14', '2017-07-11 23:56:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('172', '', '1', '1', '0', '1', '/uploadFile/product/201707/de7efa4f-337b-4fe0-ba3b-85e0615b0a4c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/de7efa4f-337b-4fe0-ba3b-85e0615b0a4c.jpg', '122', '128', '', '0', 'admin', 'admin', '2017-07-10 16:03:51', '2017-07-11 23:58:38', '123.00', null, null, null);
INSERT INTO `product` VALUES ('173', '1', '1', '1', '0', '1', '/uploadFile/product/201707/0efb9390-9218-4949-b19c-9498f04a9b25.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/0efb9390-9218-4949-b19c-9498f04a9b25.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 16:04:22', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('174', '1', '1', '1', '0', '1', '/uploadFile/product/201707/8dfdf860-120b-427c-a001-ef1a3898ddab.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8dfdf860-120b-427c-a001-ef1a3898ddab.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:04:43', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('175', '', '1', '1', '0', '1', '/uploadFile/product/201707/8dfdf860-120b-427c-a001-ef1a3898ddab.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8dfdf860-120b-427c-a001-ef1a3898ddab.jpg', '122', '128', '', '0', 'admin', 'admin', '2017-07-10 16:04:55', '2017-07-12 00:04:12', '123.00', null, null, null);
INSERT INTO `product` VALUES ('176', '', '1', '1', '0', '1', '/uploadFile/product/201707/211b3b85-8063-425a-a5ce-f27248eb1d46.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/211b3b85-8063-425a-a5ce-f27248eb1d46.jpg', '122', '128', '', '0', 'admin', 'admin', '2017-07-10 16:05:37', '2017-07-12 00:08:03', '123.00', null, null, null);
INSERT INTO `product` VALUES ('177', '', '1', '1', '0', '1', '/uploadFile/product/201707/ac725486-6630-446c-8ece-fc46121ea946.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ac725486-6630-446c-8ece-fc46121ea946.jpg', '122', '128', '', '0', 'admin', 'admin', '2017-07-10 16:06:04', '2017-07-12 00:11:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('178', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/75b06441-f71d-4ff4-a286-0addc28f5fa9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/75b06441-f71d-4ff4-a286-0addc28f5fa9.jpg', '122', '124', 'С̩', '0', 'admin', 'admin', '2017-07-10 16:06:51', '2017-07-11 19:37:59', '123.00', null, null, null);
INSERT INTO `product` VALUES ('179', '', '1', '1', '0', '1', '/uploadFile/product/201707/bac64e58-75ce-40d8-b041-8367b149135f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/bac64e58-75ce-40d8-b041-8367b149135f.jpg', '122', '125', '', '0', 'admin', 'admin', '2017-07-10 16:07:28', '2017-07-12 00:14:19', '123.00', null, null, null);
INSERT INTO `product` VALUES ('180', '', '1', '1', '0', '1', '/uploadFile/product/201707/9c07aa6a-81dc-423a-9f1d-3ba171627b44.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/9c07aa6a-81dc-423a-9f1d-3ba171627b44.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:07:53', '2017-07-12 21:57:32', '123.00', null, null, null);
INSERT INTO `product` VALUES ('181', ' С', '1', '1', '0', '1', '/uploadFile/product/201707/ebf593cf-4f2d-4eb8-9b99-1806d46e8272.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ebf593cf-4f2d-4eb8-9b99-1806d46e8272.jpg', '122', '124', ' С', '0', 'admin', 'admin', '2017-07-10 16:08:25', '2017-07-11 19:44:39', '123.00', null, null, null);
INSERT INTO `product` VALUES ('182', '1', '1', '1', '0', '1', '/uploadFile/product/201707/9bc4a558-9d75-4d87-ba79-69eab3324cfc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/9bc4a558-9d75-4d87-ba79-69eab3324cfc.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:09:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('183', '', '1', '1', '0', '1', '/uploadFile/product/201707/7d485630-bb3c-4a63-8c1a-b59ae5bf7457.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/7d485630-bb3c-4a63-8c1a-b59ae5bf7457.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-07-10 16:09:43', '2017-07-12 17:49:13', '123.00', null, null, null);
INSERT INTO `product` VALUES ('184', '', '1', '1', '0', '1', '/uploadFile/product/201707/311e2c0a-43c7-46c0-b9ac-c2758773c3e1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/311e2c0a-43c7-46c0-b9ac-c2758773c3e1.jpg', '122', '132', '', '0', 'admin', 'admin', '2017-07-10 16:10:10', '2017-07-12 17:52:26', '123.00', null, null, null);
INSERT INTO `product` VALUES ('185', '1', '1', '1', '0', '1', '/uploadFile/product/201707/2e604ceb-c340-4e9e-9a55-81527f4c4d1c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2e604ceb-c340-4e9e-9a55-81527f4c4d1c.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:10:34', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('186', 'ͯ', '1', '1', '0', '1', '/uploadFile/product/201707/c5438a08-e96b-4db2-991e-7ddee7027c57.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c5438a08-e96b-4db2-991e-7ddee7027c57.jpg', '122', '127', 'ͯ', '1', 'admin', 'admin', '2017-07-10 16:11:02', '2017-07-18 10:02:28', '123.00', null, null, null);
INSERT INTO `product` VALUES ('187', '', '1', '1', '0', '1', '/uploadFile/product/201707/506b8b06-7081-4a98-9092-bfe7ebd8a3b2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/506b8b06-7081-4a98-9092-bfe7ebd8a3b2.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-07-10 16:11:33', '2017-07-12 18:01:20', '123.00', null, null, null);
INSERT INTO `product` VALUES ('188', '1', '1', '1', '0', '1', '/uploadFile/product/201707/fa17dd0c-6305-478e-9eeb-2fcd2c31d6fe.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/fa17dd0c-6305-478e-9eeb-2fcd2c31d6fe.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:12:12', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('189', '1', '1', '1', '0', '1', '/uploadFile/product/201707/c96b8469-fb99-4f58-a357-151d266d9bc0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c96b8469-fb99-4f58-a357-151d266d9bc0.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:12:38', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('190', '', '1', '1', '0', '1', '/uploadFile/product/201707/f284df71-1053-4e3d-a0e6-b7eb609a60b8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f284df71-1053-4e3d-a0e6-b7eb609a60b8.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-07-10 16:13:03', '2017-07-12 18:04:18', '123.00', null, null, null);
INSERT INTO `product` VALUES ('191', 'B.toys', '1', '1', '0', '1', '/uploadFile/product/201707/75f635f8-5bd7-4539-8b64-2eea74ab7b94.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/75f635f8-5bd7-4539-8b64-2eea74ab7b94.jpg', '122', '127', 'B.toys', '0', 'admin', 'admin', '2017-07-10 16:13:37', '2017-07-12 18:12:29', '123.00', null, null, null);
INSERT INTO `product` VALUES ('192', 'ľ', '1', '1', '0', '1', '/uploadFile/product/201707/d1de091e-b991-41f9-bf16-684386ec99a4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d1de091e-b991-41f9-bf16-684386ec99a4.jpg', '122', '132', 'ľ', '0', 'admin', 'admin', '2017-07-10 16:14:03', '2017-07-12 18:16:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('193', '', '1', '1', '0', '1', '/uploadFile/product/201707/c5254b83-d93c-44e6-a758-1d651390b66a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c5254b83-d93c-44e6-a758-1d651390b66a.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:15:34', '2017-07-11 22:28:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('194', '', '1', '1', '0', '1', '/uploadFile/product/201707/8005f79a-615f-41b0-bbe3-f9cd2f248fa7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8005f79a-615f-41b0-bbe3-f9cd2f248fa7.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:15:56', '2017-07-12 18:22:01', '123.00', null, null, null);
INSERT INTO `product` VALUES ('195', '', '1', '1', '0', '1', '/uploadFile/product/201707/c10b561a-6538-423b-8eb6-3df20d986125.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c10b561a-6538-423b-8eb6-3df20d986125.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:16:20', '2017-07-11 22:33:30', '123.00', null, null, null);
INSERT INTO `product` VALUES ('196', '', '1', '1', '0', '1', '/uploadFile/product/201707/a8facb97-7db3-4ee5-aeba-2be9bf750c70.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a8facb97-7db3-4ee5-aeba-2be9bf750c70.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-07-10 16:16:41', '2017-07-12 18:24:40', '123.00', null, null, null);
INSERT INTO `product` VALUES ('197', 'ľ', '1', '1', '0', '1', '/uploadFile/product/201707/c1eb70d3-40ee-4399-a900-c2c827de1638.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c1eb70d3-40ee-4399-a900-c2c827de1638.jpg', '122', '124', 'ľ', '0', 'admin', 'admin', '2017-07-10 16:17:19', '2017-07-12 18:26:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('198', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/995e5f35-e927-495d-8069-6f7a3eb002a5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/995e5f35-e927-495d-8069-6f7a3eb002a5.jpg', '122', '124', 'С̩', '0', 'admin', 'admin', '2017-07-10 16:17:45', '2017-07-16 15:09:00', '123.00', null, null, null);
INSERT INTO `product` VALUES ('199', '', '1', '1', '0', '1', '/uploadFile/product/201707/1aa84a3a-d696-429d-b684-11eca31bbc26.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/1aa84a3a-d696-429d-b684-11eca31bbc26.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:18:07', '2017-07-12 18:30:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('200', '1', '1', '1', '0', '1', '/uploadFile/product/201707/86ba52d6-1e98-4ff4-9b1e-dca3ff88a795.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/86ba52d6-1e98-4ff4-9b1e-dca3ff88a795.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:18:32', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('201', '1', '1', '1', '0', '1', '/uploadFile/product/201707/45c0f5bf-9b21-4662-aa29-3b2397a0a95a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/45c0f5bf-9b21-4662-aa29-3b2397a0a95a.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:19:19', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('202', '1', '1', '1', '0', '1', '/uploadFile/product/201707/e6cfb055-e1ec-4e7c-af03-83cc17ba7331.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/e6cfb055-e1ec-4e7c-af03-83cc17ba7331.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 16:19:49', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('203', '', '1', '1', '0', '1', '/uploadFile/product/201707/d5ed69c5-1a22-4716-aa77-73e843b4db98.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d5ed69c5-1a22-4716-aa77-73e843b4db98.jpg', '122', '128', '', '1', 'admin', 'admin', '2017-07-10 16:20:31', '2017-07-12 18:48:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('204', '1', '1', '1', '0', '1', '/uploadFile/product/201707/33185c82-d953-43f4-b58d-6441ae33f1c8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/33185c82-d953-43f4-b58d-6441ae33f1c8.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 16:21:12', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('205', '', '1', '1', '0', '1', '/uploadFile/product/201707/ef962162-b1dd-4a6a-9b09-e108746b9c9a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ef962162-b1dd-4a6a-9b09-e108746b9c9a.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:21:58', '2017-07-11 22:52:29', '123.00', null, null, null);
INSERT INTO `product` VALUES ('206', '', '1', '1', '0', '1', '/uploadFile/product/201707/d7899f8a-4153-4ae3-b3ca-d82a6499992c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d7899f8a-4153-4ae3-b3ca-d82a6499992c.jpg', '122', '128', '', '0', 'admin', 'admin', '2017-07-10 16:22:22', '2017-07-12 18:56:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('207', 'ɢװ', '1', '1', '0', '1', '/uploadFile/product/201707/60fa1d30-91b5-4348-85d1-c36ce7e71da9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/60fa1d30-91b5-4348-85d1-c36ce7e71da9.jpg', '122', '128', 'ɢװ', '0', 'admin', 'admin', '2017-07-10 16:22:44', '2017-07-12 18:58:03', '123.00', null, null, null);
INSERT INTO `product` VALUES ('208', '1', '1', '1', '0', '1', '/uploadFile/product/201707/b3417636-4ddd-4b09-a9bf-642c8930d236.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b3417636-4ddd-4b09-a9bf-642c8930d236.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 16:23:34', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('209', '1', '1', '1', '0', '1', '/uploadFile/product/201707/5112ea17-719f-498c-9bfc-8b357e8e8f3b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5112ea17-719f-498c-9bfc-8b357e8e8f3b.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 16:24:04', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('210', '1', '1', '1', '0', '1', '/uploadFile/product/201707/df6b3cae-546e-4389-b40d-ca8aa5eaecc6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/df6b3cae-546e-4389-b40d-ca8aa5eaecc6.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:24:40', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('211', 'ɢװ', '1', '1', '0', '1', '/uploadFile/product/201707/8019ef51-0c58-43d4-8958-8dd5d8e951d2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8019ef51-0c58-43d4-8958-8dd5d8e951d2.jpg', '122', '128', 'ɢװ', '0', 'admin', 'admin', '2017-07-10 16:25:37', '2017-07-12 18:59:39', '123.00', null, null, null);
INSERT INTO `product` VALUES ('212', '', '1', '1', '0', '1', '/uploadFile/product/201707/25c8508d-9256-463f-963b-1077f4a5b15e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/25c8508d-9256-463f-963b-1077f4a5b15e.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-07-10 16:26:15', '2017-07-12 19:09:22', '123.00', null, null, null);
INSERT INTO `product` VALUES ('213', '', '1', '1', '0', '1', '/uploadFile/product/201707/2db38529-b05d-4d38-ab37-f78c1b2b1897.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2db38529-b05d-4d38-ab37-f78c1b2b1897.jpg', '122', '128', '', '0', 'admin', 'admin', '2017-07-10 16:26:36', '2017-07-12 19:10:45', '123.00', null, null, null);
INSERT INTO `product` VALUES ('214', '', '1', '1', '0', '1', '/uploadFile/product/201707/8e34abf4-b771-4814-8177-ebb134c4f18e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8e34abf4-b771-4814-8177-ebb134c4f18e.jpg', '122', '128', '', '0', 'admin', 'admin', '2017-07-10 16:27:49', '2017-07-12 19:11:44', '123.00', null, null, null);
INSERT INTO `product` VALUES ('215', 'ľ', '1', '1', '0', '1', '/uploadFile/product/201707/d025426c-688e-4736-9d80-bf4a8441f5aa.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d025426c-688e-4736-9d80-bf4a8441f5aa.jpg', '122', '128', 'ľ', '1', 'admin', 'admin', '2017-07-10 16:28:12', '2017-07-12 19:13:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('216', '', '1', '1', '0', '1', '/uploadFile/product/201707/8750d9c6-d583-423a-a071-ffaecbf4216a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8750d9c6-d583-423a-a071-ffaecbf4216a.jpg', '122', '132', '', '0', 'admin', 'admin', '2017-07-10 16:29:07', '2017-07-12 18:33:45', '123.00', null, null, null);
INSERT INTO `product` VALUES ('217', '1', '1', '1', '0', '1', '/uploadFile/product/201707/8750d9c6-d583-423a-a071-ffaecbf4216a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8750d9c6-d583-423a-a071-ffaecbf4216a.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:29:14', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('218', '1', '1', '1', '0', '1', '/uploadFile/product/201707/8750d9c6-d583-423a-a071-ffaecbf4216a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8750d9c6-d583-423a-a071-ffaecbf4216a.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:29:15', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('219', '1', '1', '1', '0', '1', '/uploadFile/product/201707/cbab0b53-50ad-4323-9191-23364b625079.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/cbab0b53-50ad-4323-9191-23364b625079.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:30:07', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('220', '1', '1', '1', '0', '1', '/uploadFile/product/201707/b8124ed9-279c-413c-a4fe-d4db93686a6e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b8124ed9-279c-413c-a4fe-d4db93686a6e.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 16:30:30', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('221', '', '1', '1', '0', '1', '/uploadFile/product/201707/4bfb6a57-4958-4d80-88b4-933c625c64d0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4bfb6a57-4958-4d80-88b4-933c625c64d0.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:30:52', '2017-07-12 19:18:13', '123.00', null, null, null);
INSERT INTO `product` VALUES ('222', '1', '1', '1', '0', '1', '/uploadFile/product/201707/c4757b56-095d-49c6-b438-b6ce62d2991d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c4757b56-095d-49c6-b438-b6ce62d2991d.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:31:28', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('223', '', '1', '1', '0', '1', '/uploadFile/product/201707/3caac434-cb99-4c1b-9f3c-39b749467acc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3caac434-cb99-4c1b-9f3c-39b749467acc.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 16:32:05', '2017-07-12 18:45:36', '123.00', null, null, null);
INSERT INTO `product` VALUES ('224', 'С', '1', '1', '0', '1', '/uploadFile/product/201707/f52ff7e8-4c37-453d-9918-353cd54b9008.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f52ff7e8-4c37-453d-9918-353cd54b9008.jpg', '122', '124', 'С', '0', 'admin', 'admin', '2017-07-10 16:32:43', '2017-07-12 18:51:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('225', '1', '1', '1', '0', '1', '/uploadFile/product/201707/f52ff7e8-4c37-453d-9918-353cd54b9008.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f52ff7e8-4c37-453d-9918-353cd54b9008.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:32:43', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('226', '', '1', '1', '0', '1', '/uploadFile/product/201707/e22f8456-312f-468f-b519-7c22ae11d11e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/e22f8456-312f-468f-b519-7c22ae11d11e.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:33:36', '2017-07-12 18:52:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('227', '', '1', '1', '0', '1', '/uploadFile/product/201707/f6d3442a-917c-4e99-afc7-aa656bbd516f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f6d3442a-917c-4e99-afc7-aa656bbd516f.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:34:44', '2017-07-11 22:59:03', '123.00', null, null, null);
INSERT INTO `product` VALUES ('228', '', '1', '1', '0', '1', '/uploadFile/product/201707/ea5c26a7-8f96-41b5-af98-95e15f57fb2f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ea5c26a7-8f96-41b5-af98-95e15f57fb2f.jpg', '122', '128', '', '0', 'admin', 'admin', '2017-07-10 16:35:16', '2017-07-12 19:21:25', '123.00', null, null, null);
INSERT INTO `product` VALUES ('229', '1', '1', '1', '0', '1', '/uploadFile/product/201707/aac29e24-686c-4b28-90a9-fd738c3ef059.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/aac29e24-686c-4b28-90a9-fd738c3ef059.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:35:53', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('230', '׿չҽѧС', '1', '1', '0', '1', '/uploadFile/product/201707/8734517c-ef38-404c-a910-dcdc1456081c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8734517c-ef38-404c-a910-dcdc1456081c.jpg', '122', '124', '׿չҽѧС', '0', 'admin', 'admin', '2017-07-10 16:37:12', '2017-07-12 19:24:04', '123.00', null, null, null);
INSERT INTO `product` VALUES ('231', '1', '1', '1', '0', '1', '/uploadFile/product/201707/afaa7722-2983-402e-8e5d-41f3e6d29227.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/afaa7722-2983-402e-8e5d-41f3e6d29227.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:39:34', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('232', '', '1', '1', '0', '1', '/uploadFile/product/201707/216e7f5e-3123-4e47-9d74-245281680f38.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/216e7f5e-3123-4e47-9d74-245281680f38.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:40:02', '2017-07-12 18:59:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('233', '1', '1', '1', '0', '1', '/uploadFile/product/201707/7df09f54-65e0-4a3b-a49c-56d1458744f3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/7df09f54-65e0-4a3b-a49c-56d1458744f3.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 16:40:26', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('234', '', '1', '1', '0', '1', '/uploadFile/product/201707/0f18a649-b011-4fb4-8575-48731e015e0b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/0f18a649-b011-4fb4-8575-48731e015e0b.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-07-10 16:40:49', '2017-07-12 19:34:49', '123.00', null, null, null);
INSERT INTO `product` VALUES ('235', '', '1', '1', '0', '1', '/uploadFile/product/201707/1907e8ee-91db-406b-a459-e809b35eb84f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/1907e8ee-91db-406b-a459-e809b35eb84f.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:41:19', '2017-07-12 19:09:27', '123.00', null, null, null);
INSERT INTO `product` VALUES ('236', 'ư', '1', '1', '0', '1', '/uploadFile/product/201707/ead62b6f-191b-4840-ad56-65a37d5873bf.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ead62b6f-191b-4840-ad56-65a37d5873bf.jpg', '122', '132', 'ư', '0', 'admin', 'admin', '2017-07-10 16:41:38', '2017-07-12 19:34:22', '123.00', null, null, null);
INSERT INTO `product` VALUES ('237', '', '1', '1', '0', '1', '/uploadFile/product/201707/27c1e692-2d55-4ebe-ad95-8dd1b5883e1f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/27c1e692-2d55-4ebe-ad95-8dd1b5883e1f.jpg', '122', '127', '', '1', 'admin', 'admin', '2017-07-10 16:42:02', '2017-07-12 19:41:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('238', '', '1', '1', '0', '1', '/uploadFile/product/201707/8f788543-0979-46cf-bbc0-3a75c9db9f30.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8f788543-0979-46cf-bbc0-3a75c9db9f30.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:42:33', '2017-07-12 19:23:38', '123.00', null, null, null);
INSERT INTO `product` VALUES ('239', '', '1', '1', '0', '1', '/uploadFile/product/201707/b06d3c53-7876-4463-93d4-8878746f451f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b06d3c53-7876-4463-93d4-8878746f451f.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:43:09', '2017-07-12 19:31:49', '123.00', null, null, null);
INSERT INTO `product` VALUES ('240', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/fa7ca722-a31c-46f6-8406-7a839759a7de.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/fa7ca722-a31c-46f6-8406-7a839759a7de.jpg', '122', '124', 'С̩', '0', 'admin', 'admin', '2017-07-10 16:43:43', '2017-07-12 19:36:02', '123.00', null, null, null);
INSERT INTO `product` VALUES ('241', 'ͯ', '1', '1', '0', '1', '/uploadFile/product/201707/804ea3b2-8754-4988-a649-08a9c2fe5fb3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/804ea3b2-8754-4988-a649-08a9c2fe5fb3.jpg', '122', '127', 'ͯ', '0', 'admin', 'admin', '2017-07-10 16:44:11', '2017-07-12 22:00:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('242', '11', '1', '1', '0', '1', '/uploadFile/product/201707/4d73213b-ff92-43b4-bae4-57c736a5424b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4d73213b-ff92-43b4-bae4-57c736a5424b.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 16:45:08', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('243', '', '1', '1', '0', '1', '/uploadFile/product/201707/fa193846-4bf5-4829-8ebf-15f6611349ca.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/fa193846-4bf5-4829-8ebf-15f6611349ca.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:45:35', '2017-07-12 19:48:02', '123.00', null, null, null);
INSERT INTO `product` VALUES ('244', 'ľ', '1', '1', '0', '1', '/uploadFile/product/201707/b9ae88d9-eef6-4bdd-ae92-79f6e2cdcde7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b9ae88d9-eef6-4bdd-ae92-79f6e2cdcde7.jpg', '122', '127', 'ľ', '1', 'admin', 'admin', '2017-07-10 16:46:10', '2017-07-12 19:50:18', '123.00', null, null, null);
INSERT INTO `product` VALUES ('245', '', '1', '1', '0', '1', '/uploadFile/product/201707/b3fcf337-83a5-4176-b540-acac7ed241f1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b3fcf337-83a5-4176-b540-acac7ed241f1.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:46:36', '2017-07-12 19:53:16', '123.00', null, null, null);
INSERT INTO `product` VALUES ('246', '', '1', '1', '0', '1', '/uploadFile/product/201707/62ca6029-e8a6-4f87-b1b0-928785db1409.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/62ca6029-e8a6-4f87-b1b0-928785db1409.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:47:00', '2017-07-12 19:55:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('247', 'tomy', '1', '1', '0', '1', '/uploadFile/product/201707/6442d80c-3ee4-4745-a5af-cb7487b011b9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6442d80c-3ee4-4745-a5af-cb7487b011b9.jpg', '122', '124', 'tomy', '0', 'admin', 'admin', '2017-07-10 16:47:30', '2017-07-12 20:06:14', '123.00', null, null, null);
INSERT INTO `product` VALUES ('248', '', '1', '1', '0', '1', '/uploadFile/product/201707/3253f333-414e-4bea-bad2-e401f4db8e9a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3253f333-414e-4bea-bad2-e401f4db8e9a.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:47:52', '2017-07-12 20:08:17', '123.00', null, null, null);
INSERT INTO `product` VALUES ('249', 'ľ', '1', '1', '0', '1', '/uploadFile/product/201707/6678f0e5-5201-4527-9cac-f05e07588fba.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6678f0e5-5201-4527-9cac-f05e07588fba.jpg', '122', '124', 'ľ', '1', 'admin', 'admin', '2017-07-10 16:48:23', '2017-07-12 20:09:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('250', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/256485dd-e462-4bb4-89cf-a2051e6d8e75.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/256485dd-e462-4bb4-89cf-a2051e6d8e75.jpg', '122', '132', '', '0', 'admin', 'admin', '2017-07-10 16:48:52', '2017-07-12 20:13:13', '123.00', null, null, null);
INSERT INTO `product` VALUES ('251', '', '1', '1', '0', '1', '/uploadFile/product/201707/be32f5a1-2293-4fa7-81cc-fef0eaf5eb69.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/be32f5a1-2293-4fa7-81cc-fef0eaf5eb69.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-07-10 16:49:19', '2017-07-12 20:17:41', '123.00', null, null, null);
INSERT INTO `product` VALUES ('252', '', '1', '1', '0', '1', '/uploadFile/product/201707/ef5c907f-f8bc-44af-972c-73444d0d3de4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ef5c907f-f8bc-44af-972c-73444d0d3de4.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:49:44', '2017-07-12 20:22:19', '123.00', null, null, null);
INSERT INTO `product` VALUES ('253', 'Ӥ', '1', '1', '0', '1', '/uploadFile/product/201707/a820e54c-d8cb-4ac1-8033-2efe1a4c1fe4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a820e54c-d8cb-4ac1-8033-2efe1a4c1fe4.jpg', '122', '124', 'Ӥ', '0', 'admin', 'admin', '2017-07-10 16:50:07', '2017-07-12 20:23:31', '123.00', null, null, null);
INSERT INTO `product` VALUES ('254', '1', '1', '1', '0', '1', '/uploadFile/product/201707/b1528f13-62be-4265-b210-4f49dc32bb5c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b1528f13-62be-4265-b210-4f49dc32bb5c.jpg', '122', '124', '', '0', 'admin', null, '2017-07-10 16:50:41', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('255', 'С', '1', '1', '0', '1', '/uploadFile/product/201707/a72f993a-1815-4669-96b9-3103709d5d2f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a72f993a-1815-4669-96b9-3103709d5d2f.jpg', '122', '124', 'С', '0', 'admin', 'admin', '2017-07-10 16:51:09', '2017-07-12 20:25:26', '123.00', null, null, null);
INSERT INTO `product` VALUES ('256', '', '1', '1', '0', '1', '/uploadFile/product/201707/bcb30413-236a-4505-b960-169cbadfa5a2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/bcb30413-236a-4505-b960-169cbadfa5a2.jpg', '128', '127', '', '0', 'admin', 'admin', '2017-07-10 16:51:44', '2017-07-12 20:28:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('257', '', '1', '1', '0', '1', '/uploadFile/product/201707/ba6e5731-d9c7-4c70-8edb-dd5659a54dff.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ba6e5731-d9c7-4c70-8edb-dd5659a54dff.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 16:52:08', '2017-07-12 21:19:38', '123.00', null, null, null);
INSERT INTO `product` VALUES ('258', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201707/d3470041-75bd-4a4a-83c9-32efe1f913b0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d3470041-75bd-4a4a-83c9-32efe1f913b0.jpg', '122', '124', 'ΰ', '0', 'admin', 'admin', '2017-07-10 16:52:40', '2017-08-07 13:27:49', '123.00', null, null, null);
INSERT INTO `product` VALUES ('259', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/6ce745ce-8a10-484d-84f7-e6804e470f4c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6ce745ce-8a10-484d-84f7-e6804e470f4c.jpg', '122', '124', 'С̩', '1', 'admin', 'admin', '2017-07-10 16:53:00', '2017-07-12 21:29:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('260', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/3f20237e-a368-46fc-9e8b-b52ad1997342.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3f20237e-a368-46fc-9e8b-b52ad1997342.jpg', '122', '124', 'С̩', '1', 'admin', 'admin', '2017-07-10 16:53:26', '2017-07-12 22:05:43', '123.00', null, null, null);
INSERT INTO `product` VALUES ('261', 'ľ', '1', '1', '0', '1', '/uploadFile/product/201707/490ccac2-3ce0-493a-a991-caa25f6bb609.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/490ccac2-3ce0-493a-a991-caa25f6bb609.jpg', '122', '127', 'ľ', '1', 'admin', 'admin', '2017-07-10 16:53:51', '2017-07-12 22:07:31', '123.00', null, null, null);
INSERT INTO `product` VALUES ('262', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/921393e7-3898-4e7c-89a5-5c67131633ea.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/921393e7-3898-4e7c-89a5-5c67131633ea.jpg', '122', '127', 'С̩', '1', 'admin', 'admin', '2017-07-10 16:54:31', '2017-07-12 22:12:47', '123.00', null, null, null);
INSERT INTO `product` VALUES ('263', '', '1', '1', '0', '1', '/uploadFile/product/201707/eed19b90-9345-4487-9ce8-22d1b14c9576.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/eed19b90-9345-4487-9ce8-22d1b14c9576.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 16:58:57', '2017-07-12 22:16:25', '123.00', null, null, null);
INSERT INTO `product` VALUES ('264', '', '1', '1', '0', '1', '/uploadFile/product/201707/b6d62af6-638f-472f-9e4d-4014c8b8b187.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b6d62af6-638f-472f-9e4d-4014c8b8b187.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 16:59:18', '2017-07-12 22:18:23', '123.00', null, null, null);
INSERT INTO `product` VALUES ('265', '', '1', '1', '0', '1', '/uploadFile/product/201707/22a8e5dd-4545-4665-ada0-7ab3f3edf01b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/22a8e5dd-4545-4665-ada0-7ab3f3edf01b.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 16:59:38', '2017-07-16 17:20:01', '123.00', null, null, null);
INSERT INTO `product` VALUES ('266', '', '1', '1', '0', '1', '/uploadFile/product/201707/51987a31-b800-4a40-91dd-a2eb39d48f6f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/51987a31-b800-4a40-91dd-a2eb39d48f6f.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 17:00:02', '2017-07-16 17:20:36', '123.00', null, null, null);
INSERT INTO `product` VALUES ('267', '', '1', '1', '0', '1', '/uploadFile/product/201707/1570ec32-d5b4-47b4-94c2-6a21bb6c977e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/1570ec32-d5b4-47b4-94c2-6a21bb6c977e.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 17:00:31', '2017-07-16 17:29:11', '123.00', null, null, null);
INSERT INTO `product` VALUES ('268', '', '1', '1', '0', '1', '/uploadFile/product/201707/ec8bd048-5b25-4d1f-987e-539e568559b3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ec8bd048-5b25-4d1f-987e-539e568559b3.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 17:00:52', '2017-07-16 17:30:00', '123.00', null, null, null);
INSERT INTO `product` VALUES ('269', '', '1', '1', '0', '1', '/uploadFile/product/201707/2176e993-ddcf-474e-a615-f1198bfc07e2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2176e993-ddcf-474e-a615-f1198bfc07e2.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 17:01:11', '2017-07-16 17:30:54', '123.00', null, null, null);
INSERT INTO `product` VALUES ('270', '', '1', '1', '0', '1', '/uploadFile/product/201707/e559c04c-00aa-4e77-93ef-27681d2ba135.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/e559c04c-00aa-4e77-93ef-27681d2ba135.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 17:01:34', '2017-07-16 17:31:51', '123.00', null, null, null);
INSERT INTO `product` VALUES ('271', '', '1', '1', '0', '1', '/uploadFile/product/201707/b95d5f1f-95ed-4dcd-aa82-aecb7ecf6eca.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b95d5f1f-95ed-4dcd-aa82-aecb7ecf6eca.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 17:01:54', '2017-07-16 17:32:15', '123.00', null, null, null);
INSERT INTO `product` VALUES ('272', '', '1', '1', '0', '1', '/uploadFile/product/201707/5a60dba8-bd16-4420-9622-3202d643cef3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5a60dba8-bd16-4420-9622-3202d643cef3.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 17:02:14', '2017-07-16 17:32:40', '123.00', null, null, null);
INSERT INTO `product` VALUES ('273', 'ľ', '1', '1', '0', '1', '/uploadFile/product/201707/f70cd3f5-70a4-4458-9345-597ccccc3d51.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f70cd3f5-70a4-4458-9345-597ccccc3d51.jpg', '122', '124', 'ľ', '1', 'admin', 'admin', '2017-07-10 17:02:51', '2017-07-12 22:08:33', '123.00', null, null, null);
INSERT INTO `product` VALUES ('274', '', '1', '1', '0', '1', '/uploadFile/product/201707/7d27a489-9eae-4cd5-9286-1fade68d080f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/7d27a489-9eae-4cd5-9286-1fade68d080f.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 17:03:09', '2017-07-12 22:21:15', '123.00', null, null, null);
INSERT INTO `product` VALUES ('275', '', '1', '1', '0', '1', '/uploadFile/product/201707/4f5b6aa3-5058-4ae2-b912-5e3bde0a09f2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4f5b6aa3-5058-4ae2-b912-5e3bde0a09f2.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 17:03:29', '2017-07-16 17:33:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('276', '1', '1', '1', '0', '1', '/uploadFile/product/201707/4ccccaf3-b043-43f2-9118-e08d6a321d48.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4ccccaf3-b043-43f2-9118-e08d6a321d48.jpg', '122', '124', '', '1', 'admin', null, '2017-07-10 17:03:48', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('277', '', '1', '1', '0', '1', '/uploadFile/product/201707/b536fc21-7a11-415d-9d5f-975144a3bb9a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b536fc21-7a11-415d-9d5f-975144a3bb9a.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 17:04:23', '2017-07-16 17:34:40', '123.00', null, null, null);
INSERT INTO `product` VALUES ('278', 'С', '1', '1', '0', '1', '/uploadFile/product/201707/cff41179-b626-4e24-b984-686f6905b961.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/cff41179-b626-4e24-b984-686f6905b961.jpg', '122', '124', 'С', '0', 'admin', 'admin', '2017-07-10 17:05:36', '2017-07-12 21:12:30', '123.00', null, null, null);
INSERT INTO `product` VALUES ('279', '', '1', '1', '0', '1', '/uploadFile/product/201707/c88bfe2b-1f5d-4575-961c-dda98140c885.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c88bfe2b-1f5d-4575-961c-dda98140c885.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 17:05:59', '2017-07-16 17:28:08', '123.00', null, null, null);
INSERT INTO `product` VALUES ('280', '', '1', '1', '0', '1', '/uploadFile/product/201707/86f88ea7-0729-4d65-9b0c-5364ba53bf89.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/86f88ea7-0729-4d65-9b0c-5364ba53bf89.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 17:06:17', '2017-07-16 17:28:46', '123.00', null, null, null);
INSERT INTO `product` VALUES ('281', '1INTEX', '1', '1', '0', '1', '/uploadFile/product/201707/261cb579-3233-4361-9162-97177234a6e1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/261cb579-3233-4361-9162-97177234a6e1.jpg', '122', '124', 'INTEX', '0', 'admin', 'admin', '2017-07-10 17:06:38', '2017-07-12 21:05:27', '123.00', null, null, null);
INSERT INTO `product` VALUES ('282', 'ľ', '1', '1', '0', '1', '/uploadFile/product/201707/3ddcc068-dfe5-476f-8437-dfbcd8120885.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3ddcc068-dfe5-476f-8437-dfbcd8120885.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 17:07:03', '2017-07-12 21:35:05', '123.00', null, null, null);
INSERT INTO `product` VALUES ('283', '', '1', '1', '0', '1', '/uploadFile/product/201707/4910b3dd-3626-4bd5-8412-2d1a8bb9d3e8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4910b3dd-3626-4bd5-8412-2d1a8bb9d3e8.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-10 17:07:22', '2017-07-12 21:04:22', '123.00', null, null, null);
INSERT INTO `product` VALUES ('284', '', '1', '1', '0', '1', '/uploadFile/product/201707/d70cb89f-d482-4efa-9190-db601bf435df.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d70cb89f-d482-4efa-9190-db601bf435df.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-10 17:07:40', '2017-07-12 21:03:36', '123.00', null, null, null);
INSERT INTO `product` VALUES ('287', '1', '1', '1', '0', '1', '/uploadFile/product/201707/c08d1de1-ef2c-467e-8991-fedf4a994e78.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c08d1de1-ef2c-467e-8991-fedf4a994e78.jpg', '122', '124', '', '1', 'admin', null, '2017-07-11 09:57:05', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('290', '1', '1', '1', '0', '1', '/uploadFile/product/201707/18119ee2-8544-4140-952b-99a3dba007c8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/18119ee2-8544-4140-952b-99a3dba007c8.jpg', '122', '124', '', '1', 'admin', null, '2017-07-11 12:49:26', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('291', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/8d227bfa-62e1-4733-8122-3313623b7bc7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8d227bfa-62e1-4733-8122-3313623b7bc7.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-11 15:28:27', '2017-07-11 15:28:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('292', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/7279a150-7ace-479d-b869-ce784753ed23.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/7279a150-7ace-479d-b869-ce784753ed23.jpg', '122', '124', '', '1', 'admin', null, '2017-07-11 15:29:30', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('293', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/ced48207-055a-4801-9b67-2127a619587f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ced48207-055a-4801-9b67-2127a619587f.jpg', '122', '124', '', '1', 'admin', null, '2017-07-11 15:30:30', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('296', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/b8ed3c75-97af-4701-95ef-362c8f9f604f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b8ed3c75-97af-4701-95ef-362c8f9f604f.jpg', '122', '124', '', '1', 'admin', null, '2017-07-11 15:33:04', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('297', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/8b0169f8-a00f-4a06-8b9c-6d07a00bce76.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8b0169f8-a00f-4a06-8b9c-6d07a00bce76.jpg', '122', '124', '', '1', 'admin', null, '2017-07-11 15:33:52', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('301', 'С̩', '', '1', '0', '1', '/uploadFile/product/201707/fd0cfa42-ae96-4ce0-a874-b8ab1e924223.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/fd0cfa42-ae96-4ce0-a874-b8ab1e924223.jpg', '122', '124', '', '1', 'admin', null, '2017-07-11 15:42:35', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('308', 'С̩', '', '1', '0', '1', '/uploadFile/product/201707/7d7d6e0b-2716-4ecc-b6f5-5a1dda6fe85b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/7d7d6e0b-2716-4ecc-b6f5-5a1dda6fe85b.jpg', '122', '124', '', '1', 'admin', null, '2017-07-11 15:55:43', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('309', 'С̩', '', '1', '0', '1', '/uploadFile/product/201707/2928e6a2-8abc-447d-a608-3d8ac83ea61f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2928e6a2-8abc-447d-a608-3d8ac83ea61f.jpg', '122', '124', '', '1', 'admin', null, '2017-07-11 15:57:12', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('355', 'С', '', '1', '0', '1', '/uploadFile/product/201707/94333f41-0af8-45d1-b59f-2120c78f46b4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/94333f41-0af8-45d1-b59f-2120c78f46b4.jpg', '122', '124', '', '1', 'admin', null, '2017-07-11 16:57:34', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('360', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/8cbe6c1f-4c8c-43a9-b236-8c1772d82138.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8cbe6c1f-4c8c-43a9-b236-8c1772d82138.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-11 17:04:20', '2017-07-14 14:30:07', '123.00', null, null, null);
INSERT INTO `product` VALUES ('362', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/9aae0e8a-a9d7-46c7-87ae-f810610a2e3f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/9aae0e8a-a9d7-46c7-87ae-f810610a2e3f.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-11 17:06:45', '2017-07-14 17:24:53', '123.00', null, null, null);
INSERT INTO `product` VALUES ('363', 'С', 'XLH0001', '1', '0', '1', '/uploadFile/product/201707/2a931924-af54-4301-b0e8-b1d2afd21d96.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2a931924-af54-4301-b0e8-b1d2afd21d96.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-11 17:08:11', '2017-07-16 12:51:51', '123.00', null, null, null);
INSERT INTO `product` VALUES ('364', 'С̩', '', '1', '0', '1', '/uploadFile/product/201707/04aae5d8-9ab4-49f8-b16b-4dfd132fe06e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/04aae5d8-9ab4-49f8-b16b-4dfd132fe06e.jpg', '122', '124', '', '1', 'admin', null, '2017-07-11 17:09:17', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('365', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/cd27d036-bbbf-4919-8dae-d337cc870f16.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/cd27d036-bbbf-4919-8dae-d337cc870f16.jpg', '122', '127', '', '1', 'admin', 'admin', '2017-07-11 17:10:11', '2017-07-14 17:31:41', '123.00', null, null, null);
INSERT INTO `product` VALUES ('366', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/f6a16fc4-11a1-46c9-a371-43f87987fede.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f6a16fc4-11a1-46c9-a371-43f87987fede.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-11 17:11:28', '2017-08-01 11:34:23', '123.00', null, null, null);
INSERT INTO `product` VALUES ('371', '', '1', '1', '0', '1', '/uploadFile/product/201707/144030ed-5943-470e-bd9f-76407d5b4be6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/144030ed-5943-470e-bd9f-76407d5b4be6.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-07-11 21:57:37', '2017-07-11 22:01:22', '123.00', null, null, null);
INSERT INTO `product` VALUES ('373', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/58743d52-2684-4830-b5e3-f1f682dfb03b.jpg_/uploadFile/product/201707/5f118715-6217-4563-a3d7-49f2a473bce3.jpg_/uploadFile/product/201707/9bcc2a84-2dda-4a4d-b1c7-886765a6c2d2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/58743d52-2684-4830-b5e3-f1f682dfb03b.jpg', '122', '132', null, '1', 'admin', 'admin', '2017-07-11 22:08:34', '2017-07-11 22:19:32', '123.00', null, null, null);
INSERT INTO `product` VALUES ('377', 'ΰ', '', '1', '0', '1', '/uploadFile/product/201707/90e3d4fb-db8c-4280-bff3-5157bad5795e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/90e3d4fb-db8c-4280-bff3-5157bad5795e.jpg', '122', '124', '', '1', 'admin', null, '2017-07-12 10:24:22', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('379', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/90bc3516-34c4-47e6-aff5-5a5a0f745d66.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/90bc3516-34c4-47e6-aff5-5a5a0f745d66.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 10:25:38', '2017-08-10 16:24:04', '123.00', null, null, null);
INSERT INTO `product` VALUES ('380', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/6c46005e-3d97-4191-8bda-a567411d816e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6c46005e-3d97-4191-8bda-a567411d816e.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 10:26:09', '2017-07-14 21:58:00', '123.00', null, null, null);
INSERT INTO `product` VALUES ('382', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/530a117f-05ec-4a75-991b-477284b8fe7f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/530a117f-05ec-4a75-991b-477284b8fe7f.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 10:28:20', '2017-07-14 21:58:39', '123.00', null, null, null);
INSERT INTO `product` VALUES ('390', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/bb0452f6-639c-46c8-90a6-9db6de0c700b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/bb0452f6-639c-46c8-90a6-9db6de0c700b.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 10:54:45', '2017-08-10 16:21:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('391', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/68e11855-bfb7-4444-a8fb-3564c5f18156.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/68e11855-bfb7-4444-a8fb-3564c5f18156.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 10:56:16', '2017-07-14 22:09:55', '123.00', null, null, null);
INSERT INTO `product` VALUES ('392', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/b71a5333-3360-4bc9-acdf-2b364ebf12be.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b71a5333-3360-4bc9-acdf-2b364ebf12be.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 11:08:15', '2017-08-01 12:56:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('393', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/37cdcfc2-4520-438a-a0b2-f3f275878710.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/37cdcfc2-4520-438a-a0b2-f3f275878710.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 11:08:56', '2017-07-18 09:38:23', '123.00', null, null, null);
INSERT INTO `product` VALUES ('395', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/52e79994-56da-4bec-b88e-625d4190a3da.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/52e79994-56da-4bec-b88e-625d4190a3da.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 11:12:43', '2017-08-01 12:52:46', '123.00', null, null, null);
INSERT INTO `product` VALUES ('399', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/90ec127b-ebb6-4fb5-804a-1f07a24d66fb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/90ec127b-ebb6-4fb5-804a-1f07a24d66fb.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 11:14:53', '2017-07-14 20:04:27', '123.00', null, null, null);
INSERT INTO `product` VALUES ('407', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/cd36d1f1-63f3-4bf4-a2e1-447c870a373d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/cd36d1f1-63f3-4bf4-a2e1-447c870a373d.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 11:32:25', '2017-07-14 21:05:56', '123.00', null, null, null);
INSERT INTO `product` VALUES ('414', 'С̩', null, '1', '2', '1', '/uploadFile/product/201707/45f0b5da-1d80-4adc-b094-7d49d993a992.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/45f0b5da-1d80-4adc-b094-7d49d993a992.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 11:36:05', '2017-08-17 16:26:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('415', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/be4adf1e-7023-4fcc-b45c-bdd7c30e7a1a.png', 'http://47.94.205.255:8082//uploadFile/product/201707/be4adf1e-7023-4fcc-b45c-bdd7c30e7a1a.png', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 11:36:34', '2017-08-01 10:29:23', '123.00', null, null, null);
INSERT INTO `product` VALUES ('419', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/e5c277da-6d57-4aca-83ef-af6a7704388c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/e5c277da-6d57-4aca-83ef-af6a7704388c.jpg', '122', '124', 'С̩', '1', 'admin', 'admin', '2017-07-12 11:38:56', '2017-07-14 23:10:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('427', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/5fa22c48-1a81-41ba-8dbd-caef7ba413d9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5fa22c48-1a81-41ba-8dbd-caef7ba413d9.jpg', '122', '124', 'С̩', '1', 'admin', 'admin', '2017-07-12 11:42:17', '2017-07-17 16:51:14', '123.00', null, null, null);
INSERT INTO `product` VALUES ('434', '', null, '1', '0', '1', '/uploadFile/product/201707/4ad0c4cc-cde6-4bb3-82f7-df6c05f4bb16.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4ad0c4cc-cde6-4bb3-82f7-df6c05f4bb16.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 12:55:21', '2017-08-01 16:14:44', '123.00', null, null, null);
INSERT INTO `product` VALUES ('435', '', null, '1', '0', '1', '/uploadFile/product/201707/fb9a8168-2144-4c03-a550-de304a35894d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/fb9a8168-2144-4c03-a550-de304a35894d.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 12:56:24', '2017-07-16 14:46:11', '123.00', null, null, null);
INSERT INTO `product` VALUES ('438', '', null, '1', '0', '1', '/uploadFile/product/201707/94681487-8b1c-4574-a954-e398adcbc309.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/94681487-8b1c-4574-a954-e398adcbc309.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 12:59:08', '2017-07-17 16:53:33', '123.00', null, null, null);
INSERT INTO `product` VALUES ('439', '', null, '1', '0', '1', '/uploadFile/product/201707/097b65f7-7954-4c39-aeb3-6d842264bc2d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/097b65f7-7954-4c39-aeb3-6d842264bc2d.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 12:59:33', '2017-07-18 11:25:25', '123.00', null, null, null);
INSERT INTO `product` VALUES ('447', 'ľ', null, '1', '0', '1', '/uploadFile/product/201707/a80731af-8602-4cde-9d50-402de09836b5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a80731af-8602-4cde-9d50-402de09836b5.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 13:04:33', '2017-08-01 15:43:16', '123.00', null, null, null);
INSERT INTO `product` VALUES ('450', 'Ŧ', null, '1', '0', '1', '/uploadFile/product/201707/6db48491-48aa-448b-b5c8-879e522b8470.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6db48491-48aa-448b-b5c8-879e522b8470.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 13:05:45', '2017-07-18 11:41:23', '123.00', null, null, null);
INSERT INTO `product` VALUES ('467', 'Ŧ', null, '1', '0', '1', '/uploadFile/product/201707/3f380e43-8d77-45f9-b7e0-0f7c2c704691.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3f380e43-8d77-45f9-b7e0-0f7c2c704691.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 13:31:29', '2017-07-17 17:24:14', '123.00', null, null, null);
INSERT INTO `product` VALUES ('478', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/b176346f-2a1c-43a2-9b7d-4488f2554778.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b176346f-2a1c-43a2-9b7d-4488f2554778.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 14:00:39', '2017-07-18 13:17:01', '123.00', null, null, null);
INSERT INTO `product` VALUES ('481', '', null, '1', '0', '1', '/uploadFile/product/201707/6e1e3122-0a88-4f39-ae34-be351a787c9d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6e1e3122-0a88-4f39-ae34-be351a787c9d.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 15:35:56', '2017-07-17 16:47:23', '123.00', null, null, null);
INSERT INTO `product` VALUES ('485', '', null, '1', '0', '1', '/uploadFile/product/201707/fc993986-ff5a-4d51-9fbf-4570097f0147.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/fc993986-ff5a-4d51-9fbf-4570097f0147.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 15:39:32', '2017-07-18 13:25:11', '123.00', null, null, null);
INSERT INTO `product` VALUES ('487', '', null, '1', '0', '1', '/uploadFile/product/201707/74cc2fc4-87d9-4f70-9cdb-884012b9890e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/74cc2fc4-87d9-4f70-9cdb-884012b9890e.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 15:40:43', '2017-07-17 16:19:11', '123.00', null, null, null);
INSERT INTO `product` VALUES ('491', '', null, '1', '0', '1', '/uploadFile/product/201707/e94d0d3f-6e1c-4f5c-bc1c-533e28e75302.png', 'http://47.94.205.255:8082//uploadFile/product/201707/e94d0d3f-6e1c-4f5c-bc1c-533e28e75302.png', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 15:43:09', '2017-07-18 13:55:49', '123.00', null, null, null);
INSERT INTO `product` VALUES ('492', '', null, '1', '0', '1', '/uploadFile/product/201707/8e649952-0a95-4810-bea1-b66aaf3d81d4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8e649952-0a95-4810-bea1-b66aaf3d81d4.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 15:43:38', '2017-07-18 13:59:07', '123.00', null, null, null);
INSERT INTO `product` VALUES ('500', '', null, '1', '0', '1', '/uploadFile/product/201707/c03a5273-85b8-4a07-96e0-dddb556bf78b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c03a5273-85b8-4a07-96e0-dddb556bf78b.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 15:52:26', '2017-07-18 09:56:00', '123.00', null, null, null);
INSERT INTO `product` VALUES ('501', '', null, '1', '0', '1', '/uploadFile/product/201707/7a7da313-b52f-40c9-a1a5-284d543c7924.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/7a7da313-b52f-40c9-a1a5-284d543c7924.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 15:52:53', '2017-08-04 09:41:27', '123.00', null, null, null);
INSERT INTO `product` VALUES ('504', '', null, '1', '0', '1', '/uploadFile/product/201707/64e30829-d4e7-477b-b708-f9c9aa74c535.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/64e30829-d4e7-477b-b708-f9c9aa74c535.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 15:56:45', '2017-07-18 14:23:46', '123.00', null, null, null);
INSERT INTO `product` VALUES ('511', '', null, '1', '0', '1', '/uploadFile/product/201707/de8cd436-97f0-4f77-83eb-0088706075b0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/de8cd436-97f0-4f77-83eb-0088706075b0.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:02:15', '2017-07-17 14:25:04', '123.00', null, null, null);
INSERT INTO `product` VALUES ('512', '', null, '1', '0', '1', '/uploadFile/product/201707/b1bff822-c623-4bc9-8ab8-ebceccadce59.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b1bff822-c623-4bc9-8ab8-ebceccadce59.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:02:42', '2017-07-17 14:21:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('514', '', null, '1', '0', '1', '/uploadFile/product/201707/70e380f5-c457-4153-a175-84138522f8cf.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/70e380f5-c457-4153-a175-84138522f8cf.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:03:35', '2017-07-18 14:50:54', '123.00', null, null, null);
INSERT INTO `product` VALUES ('515', '', null, '1', '0', '1', '/uploadFile/product/201707/29177cd8-fb5c-4ce7-aaa6-0710dfa7ce51.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/29177cd8-fb5c-4ce7-aaa6-0710dfa7ce51.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:04:04', '2017-07-26 13:49:30', '123.00', null, null, null);
INSERT INTO `product` VALUES ('516', '', null, '1', '0', '1', '/uploadFile/product/201707/db570b70-14fe-41b3-9bf2-3f7c61b0b1bf.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/db570b70-14fe-41b3-9bf2-3f7c61b0b1bf.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:04:38', '2017-07-17 17:50:47', '123.00', null, null, null);
INSERT INTO `product` VALUES ('517', '', null, '1', '0', '1', '/uploadFile/product/201707/337739b0-c16e-4bae-a5b0-1c57a7880806.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/337739b0-c16e-4bae-a5b0-1c57a7880806.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:05:07', '2017-07-17 17:49:43', '123.00', null, null, null);
INSERT INTO `product` VALUES ('518', '', null, '1', '0', '1', '/uploadFile/product/201707/612ba1c8-8bc0-4530-a6c6-3bc40b056d7f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/612ba1c8-8bc0-4530-a6c6-3bc40b056d7f.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:05:36', '2017-07-17 17:18:09', '123.00', null, null, null);
INSERT INTO `product` VALUES ('530', '', null, '1', '0', '1', '/uploadFile/product/201707/c82ceef1-240d-4f72-a4a3-79eab2b6c61d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c82ceef1-240d-4f72-a4a3-79eab2b6c61d.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:13:14', '2017-07-17 16:48:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('531', '', null, '1', '0', '1', '/uploadFile/product/201707/b7fe2a6b-02c1-49b9-9103-59313c6410bd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b7fe2a6b-02c1-49b9-9103-59313c6410bd.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:13:50', '2017-07-17 15:48:58', '123.00', null, null, null);
INSERT INTO `product` VALUES ('532', '', null, '1', '0', '1', '/uploadFile/product/201707/03ec97e7-5ef1-4005-ab17-e602b02ec6ee.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/03ec97e7-5ef1-4005-ab17-e602b02ec6ee.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:14:19', '2017-07-17 16:33:51', '123.00', null, null, null);
INSERT INTO `product` VALUES ('534', '', null, '1', '0', '1', '/uploadFile/product/201707/6eef4936-33d4-4ac3-851d-f37e5d6516d2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6eef4936-33d4-4ac3-851d-f37e5d6516d2.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:15:54', '2017-07-18 16:03:58', '123.00', null, null, null);
INSERT INTO `product` VALUES ('546', '', null, '1', '0', '1', '/uploadFile/product/201707/b912d4a8-e8e3-4937-a3f5-31d9f830073d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b912d4a8-e8e3-4937-a3f5-31d9f830073d.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:23:42', '2017-07-17 14:56:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('547', '', null, '1', '0', '1', '/uploadFile/product/201707/f848d400-d073-4699-803e-d1d6373f7f03.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f848d400-d073-4699-803e-d1d6373f7f03.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:24:04', '2017-07-17 13:52:57', '123.00', null, null, null);
INSERT INTO `product` VALUES ('553', 'step2', null, '1', '0', '1', '/uploadFile/product/201707/5011e8ec-38bf-451c-aa72-0af8ec1767b9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5011e8ec-38bf-451c-aa72-0af8ec1767b9.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:37:38', '2017-07-17 14:14:31', '123.00', null, null, null);
INSERT INTO `product` VALUES ('554', 'step2', null, '1', '0', '1', '/uploadFile/product/201707/438b6e59-040e-4365-b62a-a475cb8fffbe.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/438b6e59-040e-4365-b62a-a475cb8fffbe.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:38:08', '2017-07-17 14:15:35', '123.00', null, null, null);
INSERT INTO `product` VALUES ('559', 'yoyo yuyuɡ', null, '1', '0', '1', '/uploadFile/product/201707/35d53778-1bd8-465e-ac8e-2e282ace9b02.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/35d53778-1bd8-465e-ac8e-2e282ace9b02.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:42:02', '2017-07-19 14:51:05', '123.00', null, null, null);
INSERT INTO `product` VALUES ('560', '', null, '1', '0', '1', '/uploadFile/product/201707/1a8ed9d6-c77d-4352-ab86-239d01c2ff9b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/1a8ed9d6-c77d-4352-ab86-239d01c2ff9b.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:42:31', '2017-07-17 13:33:09', '123.00', null, null, null);
INSERT INTO `product` VALUES ('565', '', null, '1', '0', '1', '/uploadFile/product/201707/0e28606b-dfff-4059-9d7d-7bc3fc4bc957.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/0e28606b-dfff-4059-9d7d-7bc3fc4bc957.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:51:55', '2017-07-19 14:47:33', '123.00', null, null, null);
INSERT INTO `product` VALUES ('567', '', null, '1', '0', '1', '/uploadFile/product/201707/5758d605-9d39-4841-9055-4627209618db.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5758d605-9d39-4841-9055-4627209618db.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 16:52:55', '2017-08-02 15:21:09', '123.00', null, null, null);
INSERT INTO `product` VALUES ('572', '', null, '1', '0', '1', '/uploadFile/product/201707/9b5c0fab-50b2-4b07-8d50-480210cbd47f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/9b5c0fab-50b2-4b07-8d50-480210cbd47f.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:10:28', '2017-07-17 12:45:00', '123.00', null, null, null);
INSERT INTO `product` VALUES ('583', '', null, '1', '0', '1', '/uploadFile/product/201707/be7064a7-3dea-4326-bc3b-f1c542fbf5be.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/be7064a7-3dea-4326-bc3b-f1c542fbf5be.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:18:16', '2017-08-02 15:12:46', '123.00', null, null, null);
INSERT INTO `product` VALUES ('584', '', null, '1', '0', '1', '/uploadFile/product/201707/14ca1012-55d7-4a0c-a240-960e70d0d27d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/14ca1012-55d7-4a0c-a240-960e70d0d27d.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:18:57', '2017-07-17 12:11:33', '123.00', null, null, null);
INSERT INTO `product` VALUES ('585', '', null, '1', '0', '1', '/uploadFile/product/201707/6c2c8a37-323f-4f7f-a688-0c09b8530382.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6c2c8a37-323f-4f7f-a688-0c09b8530382.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:19:24', '2017-07-17 12:25:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('587', '', null, '1', '0', '1', '/uploadFile/product/201707/6c97d5bc-e0b3-45dd-a8ed-42ce256e3491.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6c97d5bc-e0b3-45dd-a8ed-42ce256e3491.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:20:14', '2017-07-15 16:44:54', '123.00', null, null, null);
INSERT INTO `product` VALUES ('595', '', null, '1', '0', '1', '/uploadFile/product/201707/de52f553-2fed-49ed-98ff-394f0939d5b6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/de52f553-2fed-49ed-98ff-394f0939d5b6.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:25:46', '2017-07-17 09:01:55', '123.00', null, null, null);
INSERT INTO `product` VALUES ('596', '', null, '1', '0', '1', '/uploadFile/product/201707/b1279425-0c7d-4bd8-a075-7906b4e63a0a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b1279425-0c7d-4bd8-a075-7906b4e63a0a.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:26:11', '2017-07-17 11:30:25', '123.00', null, null, null);
INSERT INTO `product` VALUES ('597', '', null, '1', '0', '1', '/uploadFile/product/201707/db37503c-6eeb-4343-ae60-7106be9d4421.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/db37503c-6eeb-4343-ae60-7106be9d4421.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:28:10', '2017-07-17 11:31:07', '123.00', null, null, null);
INSERT INTO `product` VALUES ('602', '', null, '1', '0', '1', '/uploadFile/product/201707/0edc53e9-c995-4ff7-a184-9463e3d854d5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/0edc53e9-c995-4ff7-a184-9463e3d854d5.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:30:59', '2017-07-15 15:54:28', '123.00', null, null, null);
INSERT INTO `product` VALUES ('608', '', null, '1', '0', '1', '/uploadFile/product/201707/96a5d25a-e05e-41cc-86d2-e0bb3d1c4813.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/96a5d25a-e05e-41cc-86d2-e0bb3d1c4813.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:34:03', '2017-07-15 16:29:08', '123.00', null, null, null);
INSERT INTO `product` VALUES ('619', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/47c00a0e-9075-41ff-aa48-a9f00494e5c1.png', 'http://47.94.205.255:8082//uploadFile/product/201707/47c00a0e-9075-41ff-aa48-a9f00494e5c1.png', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:39:26', '2017-07-15 15:15:54', '123.00', null, null, null);
INSERT INTO `product` VALUES ('624', 'B.Toys', null, '1', '0', '1', '/uploadFile/product/201707/468a7395-3c25-488e-a448-ed09d40ac1c7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/468a7395-3c25-488e-a448-ed09d40ac1c7.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:41:58', '2017-07-15 13:26:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('640', 'B-toys', null, '1', '0', '1', '/uploadFile/product/201707/8a8d9602-b8b3-4e58-8658-f5e1a3e50c23.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8a8d9602-b8b3-4e58-8658-f5e1a3e50c23.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:51:09', '2017-07-15 13:09:19', '123.00', null, null, null);
INSERT INTO `product` VALUES ('644', 'puku', null, '1', '0', '1', '/uploadFile/product/201707/132cc11a-b928-441e-89f9-d669cda7cbca.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/132cc11a-b928-441e-89f9-d669cda7cbca.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:53:14', '2017-08-10 16:11:10', '123.00', null, null, null);
INSERT INTO `product` VALUES ('646', 'step2', null, '1', '0', '1', '/uploadFile/product/201707/0a3274fc-dbdc-46f4-a231-fc302004a62c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/0a3274fc-dbdc-46f4-a231-fc302004a62c.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:54:05', '2017-07-15 11:48:47', '123.00', null, null, null);
INSERT INTO `product` VALUES ('648', 'step2', null, '1', '0', '1', '/uploadFile/product/201707/03fcfcc3-cd07-4d10-a7fd-061f6d204e9c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/03fcfcc3-cd07-4d10-a7fd-061f6d204e9c.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:55:08', '2017-07-15 11:32:07', '123.00', null, null, null);
INSERT INTO `product` VALUES ('650', 'step2', null, '1', '0', '1', '/uploadFile/product/201707/75827e7f-5f07-42b8-83bc-5e3c570c75ab.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/75827e7f-5f07-42b8-83bc-5e3c570c75ab.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:55:56', '2017-07-15 11:27:27', '123.00', null, null, null);
INSERT INTO `product` VALUES ('651', 'step2', null, '1', '0', '1', '/uploadFile/product/201707/3f62980a-0f85-41b5-87f9-12f77e852c9a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3f62980a-0f85-41b5-87f9-12f77e852c9a.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:56:18', '2017-07-18 09:14:05', '123.00', null, null, null);
INSERT INTO `product` VALUES ('653', 'step2', null, '1', '0', '1', '/uploadFile/product/201707/4d3f21c5-8c00-4e38-9739-67561dfa5e6a.png', 'http://47.94.205.255:8082//uploadFile/product/201707/4d3f21c5-8c00-4e38-9739-67561dfa5e6a.png', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:57:06', '2017-08-02 15:22:32', '123.00', null, null, null);
INSERT INTO `product` VALUES ('655', 'step2', null, '1', '0', '1', '/uploadFile/product/201707/6f9cb958-1334-4a4c-af85-5f24182cb98e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6f9cb958-1334-4a4c-af85-5f24182cb98e.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 17:57:56', '2017-07-15 17:17:11', '123.00', null, null, null);
INSERT INTO `product` VALUES ('657', 'step2', null, '1', '0', '1', '/uploadFile/product/201707/2f529147-f373-4b87-984e-43890e8a242a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2f529147-f373-4b87-984e-43890e8a242a.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:01:17', '2017-07-15 10:31:57', '123.00', null, null, null);
INSERT INTO `product` VALUES ('659', 'b.toys', null, '1', '0', '1', '/uploadFile/product/201707/1f45efe7-0b0d-4783-96c2-44a0b21ceb42.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/1f45efe7-0b0d-4783-96c2-44a0b21ceb42.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:02:28', '2017-07-15 10:25:05', '123.00', null, null, null);
INSERT INTO `product` VALUES ('672', '', null, '1', '0', '1', '/uploadFile/product/201707/1881b90f-387c-4ca9-8c2c-be56bd0c3779.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/1881b90f-387c-4ca9-8c2c-be56bd0c3779.jpg', '122', '124', 'ͨ', '1', 'admin', 'admin', '2017-07-12 18:13:26', '2017-07-15 10:20:29', '123.00', null, null, null);
INSERT INTO `product` VALUES ('675', '', null, '1', '0', '1', '/uploadFile/product/201707/f9724906-926a-4632-8113-7bcd815bb177.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f9724906-926a-4632-8113-7bcd815bb177.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:17:35', '2017-07-14 18:36:38', '123.00', null, null, null);
INSERT INTO `product` VALUES ('679', 'С', null, '1', '0', '1', '/uploadFile/product/201707/e00eb2bb-30a4-40d5-adb3-9fdf0397a6b2.png', 'http://47.94.205.255:8082//uploadFile/product/201707/e00eb2bb-30a4-40d5-adb3-9fdf0397a6b2.png', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:20:08', '2017-07-14 18:27:55', '123.00', null, null, null);
INSERT INTO `product` VALUES ('682', 'С', null, '1', '0', '1', '/uploadFile/product/201707/db849881-2512-4b68-860e-6ba12066cf75.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/db849881-2512-4b68-860e-6ba12066cf75.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:21:25', '2017-07-14 18:24:17', '123.00', null, null, null);
INSERT INTO `product` VALUES ('683', 'С', null, '1', '0', '1', '/uploadFile/product/201707/5f3e6fb5-d131-4026-a305-d076cd12ce20.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5f3e6fb5-d131-4026-a305-d076cd12ce20.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:21:50', '2017-07-14 17:49:43', '123.00', null, null, null);
INSERT INTO `product` VALUES ('686', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/f186f2c5-6762-45e1-8428-bbb728c22b3a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f186f2c5-6762-45e1-8428-bbb728c22b3a.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:24:00', '2017-07-17 10:01:21', '123.00', null, null, null);
INSERT INTO `product` VALUES ('687', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/4f31efa5-ffd1-44fc-8ca7-c3fe4adb9064.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4f31efa5-ffd1-44fc-8ca7-c3fe4adb9064.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:24:39', '2017-07-15 17:16:38', '123.00', null, null, null);
INSERT INTO `product` VALUES ('698', 'ͯ', null, '1', '0', '1', '/uploadFile/product/201707/d254f705-f915-4506-8b3f-3f1c7f903a42.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d254f705-f915-4506-8b3f-3f1c7f903a42.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:32:52', '2017-08-01 15:17:58', '123.00', null, null, null);
INSERT INTO `product` VALUES ('700', 'ͯ', null, '1', '0', '1', '/uploadFile/product/201707/5dde9208-1e7c-414f-9300-570a8922ee98.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5dde9208-1e7c-414f-9300-570a8922ee98.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:33:36', '2017-07-17 10:30:20', '123.00', null, null, null);
INSERT INTO `product` VALUES ('703', '', null, '1', '0', '1', '/uploadFile/product/201707/824c684d-65ee-4b73-b702-9684cb003508.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/824c684d-65ee-4b73-b702-9684cb003508.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:35:49', '2017-07-14 17:09:29', '123.00', null, null, null);
INSERT INTO `product` VALUES ('704', 'Χ', null, '1', '0', '1', '/uploadFile/product/201707/4259a789-39fe-4acb-bfd1-515f5005f439.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4259a789-39fe-4acb-bfd1-515f5005f439.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:37:01', '2017-07-14 17:05:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('705', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/a4869e05-c3c2-49a8-ad43-fe74265eb591.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a4869e05-c3c2-49a8-ad43-fe74265eb591.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:51:31', '2017-07-14 17:02:36', '123.00', null, null, null);
INSERT INTO `product` VALUES ('713', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/905c2919-8805-4a60-9d97-81bcfa659cf8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/905c2919-8805-4a60-9d97-81bcfa659cf8.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 18:54:52', '2017-07-14 16:42:10', '123.00', null, null, null);
INSERT INTO `product` VALUES ('719', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/0658a3c8-37ff-49e4-b644-dcf882bbca75.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/0658a3c8-37ff-49e4-b644-dcf882bbca75.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 19:03:48', '2017-07-15 14:45:07', '123.00', null, null, null);
INSERT INTO `product` VALUES ('722', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/d5a18aef-5b38-4e50-95f0-2d4751fb79d8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d5a18aef-5b38-4e50-95f0-2d4751fb79d8.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 19:11:11', '2017-07-15 11:48:13', '123.00', null, null, null);
INSERT INTO `product` VALUES ('726', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/c89f811b-dc8f-4266-b609-78ef65f96f87.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c89f811b-dc8f-4266-b609-78ef65f96f87.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 19:13:35', '2017-07-14 15:52:09', '123.00', null, null, null);
INSERT INTO `product` VALUES ('734', '', null, '1', '0', '1', '/uploadFile/product/201707/a0596920-6c2f-4d10-8d98-02d24f52e5d3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a0596920-6c2f-4d10-8d98-02d24f52e5d3.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 19:19:59', '2017-07-15 14:09:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('738', 'ӥ', '', '1', '0', '1', '/uploadFile/product/201707/3d35c158-aa3e-4a24-8eaf-7c78f12b43b2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3d35c158-aa3e-4a24-8eaf-7c78f12b43b2.jpg', '122', '124', '', '1', 'admin', null, '2017-07-12 19:23:20', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('740', 'ӥ', null, '1', '0', '1', '/uploadFile/product/201707/7e9eae33-d1ea-4b77-9cae-44eb020519fb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/7e9eae33-d1ea-4b77-9cae-44eb020519fb.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-12 19:29:42', '2017-07-14 15:38:18', '123.00', null, null, null);
INSERT INTO `product` VALUES ('741', '', null, '1', '0', '1', '/uploadFile/product/201707/448d0058-d7de-4bd6-bd0f-9f8be9f9d344.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/448d0058-d7de-4bd6-bd0f-9f8be9f9d344.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 09:11:37', '2017-07-14 15:35:16', '123.00', null, null, null);
INSERT INTO `product` VALUES ('743', '', null, '1', '0', '1', '/uploadFile/product/201707/aa08dc10-4344-410d-b716-7ac0eb5848cc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/aa08dc10-4344-410d-b716-7ac0eb5848cc.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 09:15:30', '2017-07-14 15:26:39', '123.00', null, null, null);
INSERT INTO `product` VALUES ('744', '', null, '1', '0', '1', '/uploadFile/product/201707/2defb175-cd69-4ded-8289-9f45bb0083c0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2defb175-cd69-4ded-8289-9f45bb0083c0.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 09:17:10', '2017-07-14 17:54:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('746', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/26fe2f01-8361-432c-9961-a280567b6be0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/26fe2f01-8361-432c-9961-a280567b6be0.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 09:20:08', '2017-07-14 15:10:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('747', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/ebb43c88-7411-45be-a133-d1bf01c48fc3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ebb43c88-7411-45be-a133-d1bf01c48fc3.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 09:31:27', '2017-07-14 15:04:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('751', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/8a525d76-d458-4914-ba2a-23b03d29693e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8a525d76-d458-4914-ba2a-23b03d29693e.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 09:47:08', '2017-07-27 17:13:30', '123.00', null, null, null);
INSERT INTO `product` VALUES ('753', '', null, '1', '0', '1', '/uploadFile/product/201707/6478b284-cc36-46ab-9ffa-b4eb1f9f5550.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6478b284-cc36-46ab-9ffa-b4eb1f9f5550.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 10:00:26', '2017-07-14 18:03:44', '123.00', null, null, null);
INSERT INTO `product` VALUES ('757', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/428495b7-d931-4d6e-9fa3-c0867b777176.jpg_/uploadFile/product/201707/dae2b278-8ea7-4c0c-8b6b-1abaca322cec.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/428495b7-d931-4d6e-9fa3-c0867b777176.jpg', '122', '133', '1С', '1', 'admin', 'admin', '2017-07-13 10:36:55', '2017-07-14 14:08:29', '123.00', null, null, null);
INSERT INTO `product` VALUES ('761', 'EDTOY', null, '1', '0', '1', '/uploadFile/product/201707/e584a3a1-5ef6-4966-8b34-b790ae7d79f8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/e584a3a1-5ef6-4966-8b34-b790ae7d79f8.jpg', '122', '124', 'ʹ', '1', 'admin', 'admin', '2017-07-13 11:04:12', '2017-07-14 13:51:36', '123.00', null, null, null);
INSERT INTO `product` VALUES ('762', 'Bright Starts ', null, '1', '0', '1', '/uploadFile/product/201707/012408e3-338a-4c34-b6d6-270dd0db7041.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/012408e3-338a-4c34-b6d6-270dd0db7041.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 11:10:34', '2017-07-14 13:40:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('763', 'blue-box', null, '1', '0', '1', '/uploadFile/product/201707/316ce459-b51a-4a03-8dcd-603aa12aa741.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/316ce459-b51a-4a03-8dcd-603aa12aa741.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 11:13:17', '2017-07-14 13:37:55', '123.00', null, null, null);
INSERT INTO `product` VALUES ('764', 'besbet ', null, '1', '0', '1', '/uploadFile/product/201707/f66ea004-a115-43db-8915-2e87ea921503.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f66ea004-a115-43db-8915-2e87ea921503.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 11:15:07', '2017-08-02 15:26:03', '123.00', null, null, null);
INSERT INTO `product` VALUES ('770', '', null, '1', '0', '1', '/uploadFile/product/201707/f30ba8fd-09f6-40ea-9bc9-1f960fe1bc02.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f30ba8fd-09f6-40ea-9bc9-1f960fe1bc02.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 11:49:50', '2017-07-17 12:10:53', '123.00', null, null, null);
INSERT INTO `product` VALUES ('771', '', null, '1', '0', '1', '/uploadFile/product/201707/4b46e4fd-87e2-49cf-8e4b-f0aad76d22ed.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4b46e4fd-87e2-49cf-8e4b-f0aad76d22ed.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 11:50:16', '2017-07-15 16:37:15', '123.00', null, null, null);
INSERT INTO `product` VALUES ('772', '', null, '1', '0', '1', '/uploadFile/product/201707/fbc0d1ed-6010-4387-b9b5-5280d371f5ce.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/fbc0d1ed-6010-4387-b9b5-5280d371f5ce.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 11:50:43', '2017-07-14 19:02:49', '123.00', null, null, null);
INSERT INTO `product` VALUES ('773', 'ŵͯ', null, '1', '0', '1', '/uploadFile/product/201707/d16da723-9a44-4e2b-9883-2d1f64bfdff8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d16da723-9a44-4e2b-9883-2d1f64bfdff8.jpg', '122', '124', null, '1', 'admin', null, '2017-07-13 12:31:25', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('775', '', null, '1', '0', '1', '/uploadFile/product/201707/6bda41e0-a4ab-44d0-801c-10bce9fa9959.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6bda41e0-a4ab-44d0-801c-10bce9fa9959.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 13:42:18', '2017-07-15 16:44:25', '123.00', null, null, null);
INSERT INTO `product` VALUES ('777', '', null, '1', '0', '1', '/uploadFile/product/201707/55142af7-0a1e-4372-bf51-a2bc312da297.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/55142af7-0a1e-4372-bf51-a2bc312da297.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 13:44:35', '2017-07-13 23:38:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('779', '', null, '1', '0', '1', '/uploadFile/product/201707/e68d4d49-9979-4ad4-b1bf-339d0b26749f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/e68d4d49-9979-4ad4-b1bf-339d0b26749f.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 13:47:05', '2017-07-14 00:00:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('781', '', null, '1', '0', '1', '/uploadFile/product/201707/30d53723-86ad-41dc-be4e-1985a4f1d005.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/30d53723-86ad-41dc-be4e-1985a4f1d005.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 13:48:26', '2017-08-02 14:55:09', '123.00', null, null, null);
INSERT INTO `product` VALUES ('782', '', null, '1', '0', '1', '/uploadFile/product/201707/f9075727-8621-4058-8a0b-c0b3b0b2e6fb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f9075727-8621-4058-8a0b-c0b3b0b2e6fb.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 13:49:50', '2017-07-14 00:21:05', '123.00', null, null, null);
INSERT INTO `product` VALUES ('783', '', null, '1', '0', '1', '/uploadFile/product/201707/de67db54-a5f0-4ac9-930a-debff5e03e81.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/de67db54-a5f0-4ac9-930a-debff5e03e81.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 13:50:36', '2017-07-14 00:27:48', '123.00', null, null, null);
INSERT INTO `product` VALUES ('784', '', null, '1', '0', '1', '/uploadFile/product/201707/659053f4-3b27-4840-bf14-f6ba9719fa8d.png', 'http://47.94.205.255:8082//uploadFile/product/201707/659053f4-3b27-4840-bf14-f6ba9719fa8d.png', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 13:51:29', '2017-07-14 00:32:54', '123.00', null, null, null);
INSERT INTO `product` VALUES ('786', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/616209a6-023d-4ae7-88bf-b4e4f591aae7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/616209a6-023d-4ae7-88bf-b4e4f591aae7.jpg', '122', '124', 'ΰ', '1', 'admin', 'admin', '2017-07-13 13:53:08', '2017-07-14 17:29:09', '123.00', null, null, null);
INSERT INTO `product` VALUES ('787', '', null, '1', '0', '1', '/uploadFile/product/201707/e2da7fe1-d51c-48f5-a7ea-aad865832b19.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/e2da7fe1-d51c-48f5-a7ea-aad865832b19.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 13:53:41', '2017-07-13 22:09:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('788', 'Ŧ', null, '1', '0', '1', '/uploadFile/product/201707/9c230e85-a338-4e24-bb2b-03654e4c6abd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/9c230e85-a338-4e24-bb2b-03654e4c6abd.jpg', '122', '124', 'Ŧ', '1', 'admin', 'admin', '2017-07-13 13:54:27', '2017-07-13 22:47:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('789', '¡', null, '1', '0', '1', '/uploadFile/product/201707/4996fe5f-115a-4034-95db-0817387bab3f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4996fe5f-115a-4034-95db-0817387bab3f.jpg', '122', '124', '¡', '1', 'admin', 'admin', '2017-07-13 13:55:02', '2017-07-14 00:53:27', '123.00', null, null, null);
INSERT INTO `product` VALUES ('790', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/a4a536d7-63bc-46da-befe-190f635f3fe8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a4a536d7-63bc-46da-befe-190f635f3fe8.jpg', '122', '124', 'С̩', '1', 'admin', 'admin', '2017-07-13 13:55:34', '2017-07-13 23:18:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('791', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/cdfc84f8-29b9-4b8c-8a95-764f167c4bb2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/cdfc84f8-29b9-4b8c-8a95-764f167c4bb2.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 13:56:15', '2017-07-13 19:46:53', '123.00', null, null, null);
INSERT INTO `product` VALUES ('792', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/491f85bf-d6d6-4ae6-b4bf-c9c27a50f019.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/491f85bf-d6d6-4ae6-b4bf-c9c27a50f019.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 13:56:49', '2017-07-13 19:39:20', '123.00', null, null, null);
INSERT INTO `product` VALUES ('793', 'С', null, '1', '0', '1', '/uploadFile/product/201707/ba658d39-c172-4982-8e71-c2e7f0524526.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ba658d39-c172-4982-8e71-c2e7f0524526.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 13:57:20', '2017-07-13 19:38:16', '123.00', null, null, null);
INSERT INTO `product` VALUES ('794', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/a521a67e-ec6d-4980-9f35-53b48b64fd91.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a521a67e-ec6d-4980-9f35-53b48b64fd91.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-13 13:58:02', '2017-07-14 13:02:54', '123.00', null, null, null);
INSERT INTO `product` VALUES ('796', '', '1', '1', '0', '1', '/uploadFile/product/201707/4ac36f63-27c0-49ba-b85c-dc58442d3a1d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4ac36f63-27c0-49ba-b85c-dc58442d3a1d.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-07-13 21:35:13', '2017-07-13 21:36:53', '123.00', null, null, null);
INSERT INTO `product` VALUES ('798', 'step2', '1', '1', '0', '1', '/uploadFile/product/201707/2ca2ee39-cd04-49d5-bdf5-e6e4ad7e6983.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2ca2ee39-cd04-49d5-bdf5-e6e4ad7e6983.jpg', '122', '137', 'ȫ', '1', 'admin', null, '2017-07-13 23:42:27', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('799', 'step2', '1', '1', '0', '1', '/uploadFile/product/201707/dab92b01-ff76-4ba3-8cd4-1800f6b7d034.jpg/uploadFile/product/201707/168ed79f-0ed4-4d2f-8435-8e8b9c9756a1.jpg_', 'http://47.94.205.255:8082//uploadFile/product/201707/dab92b01-ff76-4ba3-8cd4-1800f6b7d034.jpg', '122', '137', 'ȫ', '1', 'admin', 'admin', '2017-07-15 14:27:35', '2017-07-17 09:50:26', '123.00', null, null, null);
INSERT INTO `product` VALUES ('800', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/529b8559-0cee-41f5-b5af-ca4a20841608.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/529b8559-0cee-41f5-b5af-ca4a20841608.jpg', '122', '125', null, '1', 'admin', null, '2017-07-15 14:55:26', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('801', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/8f6a02c3-b6b0-4081-ab0d-3751d987f45c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8f6a02c3-b6b0-4081-ab0d-3751d987f45c.jpg', '122', '137', null, '1', 'admin', null, '2017-07-16 10:10:26', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('802', 'INTEX', '1', '1', '0', '1', '/uploadFile/product/201707/c1583b16-4cbd-42ca-8000-ce7b3960532e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c1583b16-4cbd-42ca-8000-ce7b3960532e.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-07-16 11:22:06', '2017-08-08 09:44:51', '123.00', null, null, null);
INSERT INTO `product` VALUES ('803', '', '1', '1', '2', '0', '/uploadFile/product/201707/344711ec-efee-416d-973d-57ec9ea280dc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/344711ec-efee-416d-973d-57ec9ea280dc.jpg', '122', '125', '', '0', 'admin', 'admin', '2017-07-16 11:24:05', '2017-08-06 09:16:59', '123.00', null, null, null);
INSERT INTO `product` VALUES ('805', 'step2', '', '1', '0', '1', '/uploadFile/product/201707/636d86ae-35c6-43df-bc9e-f1054fddc1fa.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/636d86ae-35c6-43df-bc9e-f1054fddc1fa.jpg', '122', '124', '', '1', 'admin', null, '2017-07-17 09:22:57', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('823', ' step2', '1', '1', '0', '1', '/uploadFile/product/201707/ce6edc92-f0f0-4c26-b8a7-11ddd7504b3e.jpg_/uploadFile/product/201707/6d7a35c5-ebc1-43c9-8242-771000000b52.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ce6edc92-f0f0-4c26-b8a7-11ddd7504b3e.jpg', '122', '137', 'ȫ', '1', 'admin', 'admin', '2017-07-17 10:08:28', '2017-07-26 10:57:02', '123.00', null, null, null);
INSERT INTO `product` VALUES ('824', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/200fd4fb-8aea-4650-b818-f9c2cf0b3ee2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/200fd4fb-8aea-4650-b818-f9c2cf0b3ee2.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-17 10:43:17', '2017-07-17 11:19:17', '123.00', null, null, null);
INSERT INTO `product` VALUES ('825', 'С', null, '1', '0', '1', '/uploadFile/product/201707/bf0737a5-36d3-4b30-8511-9780a693f7e8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/bf0737a5-36d3-4b30-8511-9780a693f7e8.jpg', '122', '124', 'ͨ', '1', 'admin', 'admin', '2017-07-17 10:44:12', '2017-07-17 11:47:01', '123.00', null, null, null);
INSERT INTO `product` VALUES ('827', '', '1', '1', '0', '1', '/uploadFile/product/201707/ace8c062-90ab-4b6e-a238-ff1b6285016b.png', 'http://47.94.205.255:8082//uploadFile/product/201707/ace8c062-90ab-4b6e-a238-ff1b6285016b.png', '122', '124', '1', '1', 'admin', null, '2017-07-17 15:18:09', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('828', '1', '1', '1', '0', '1', '/uploadFile/product/201707/b7e44cb0-62ae-4645-8278-c4be794f867a.png', 'http://47.94.205.255:8082//uploadFile/product/201707/b7e44cb0-62ae-4645-8278-c4be794f867a.png', '122', '124', '1', '1', 'admin', null, '2017-07-17 15:18:35', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('829', '', '', '1', '0', '1', '/uploadFile/product/201707/8431773f-8b31-4729-977e-939277f20625.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8431773f-8b31-4729-977e-939277f20625.jpg', '122', '124', '', '1', 'admin', null, '2017-07-17 15:56:19', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('830', '', '', '1', '0', '1', '/uploadFile/product/201707/09abd517-c62a-4e9e-84a0-bb5d18ef6a88.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/09abd517-c62a-4e9e-84a0-bb5d18ef6a88.jpg', '122', '124', 'ÿ', '0', 'admin', 'admin', '2017-07-17 15:58:51', '2017-07-25 10:33:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('831', '', '1', '1', '0', '1', '/uploadFile/product/201707/a26d3772-bdbc-49b5-ab96-f2b27453e539.png', 'http://47.94.205.255:8082//uploadFile/product/201707/a26d3772-bdbc-49b5-ab96-f2b27453e539.png', '122', '127', null, '1', 'admin', null, '2017-07-18 09:44:47', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('832', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201707/54d758f4-f83a-42c2-b0ec-c978b2243967.png', 'http://47.94.205.255:8082//uploadFile/product/201707/54d758f4-f83a-42c2-b0ec-c978b2243967.png', '122', '125', null, '1', 'admin', null, '2017-07-19 10:30:07', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('833', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201707/8b4c1dc7-4737-4b47-a7d0-b3b25e8b22e4.png', 'http://47.94.205.255:8082//uploadFile/product/201707/8b4c1dc7-4737-4b47-a7d0-b3b25e8b22e4.png', '122', '132', null, '1', 'admin', null, '2017-07-20 10:27:49', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('836', '', '', '1', '0', '1', '/uploadFile/product/201707/43669463-3b35-4a93-8a72-d4a21b75a503.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/43669463-3b35-4a93-8a72-d4a21b75a503.jpg', '122', '124', '', '0', 'admin', null, '2017-07-25 09:35:01', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('837', '15', '1', '1', '0', '1', '/uploadFile/product/201707/bba66f20-64a4-4cfc-b4e4-d2765bc8a87a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/bba66f20-64a4-4cfc-b4e4-d2765bc8a87a.jpg', '122', '136', null, '1', 'admin', null, '2017-07-25 09:46:05', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('838', '', '', '1', '0', '1', '/uploadFile/product/201707/ddf50574-bd9d-4a98-b13b-ebc5425cc74c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ddf50574-bd9d-4a98-b13b-ebc5425cc74c.jpg', '122', '124', '', '0', 'admin', null, '2017-07-25 10:31:36', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('839', '', '', '1', '0', '1', '/uploadFile/product/201707/e3254852-cde5-4201-a990-b10735171e98.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/e3254852-cde5-4201-a990-b10735171e98.jpg', '122', '124', '', '0', 'admin', 'admin', '2017-07-25 10:38:00', '2017-07-25 10:38:47', '123.00', null, null, null);
INSERT INTO `product` VALUES ('840', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201707/03cfe53d-88f6-40b7-871b-4b01106553b2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/03cfe53d-88f6-40b7-871b-4b01106553b2.jpg', '122', '127', null, '1', 'admin', null, '2017-07-26 10:58:10', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('842', '', '', '1', '0', '1', '/uploadFile/product/201707/78cd7069-ae32-47eb-8f10-66c753a7994f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/78cd7069-ae32-47eb-8f10-66c753a7994f.jpg', '122', '124', '', '1', 'admin', null, '2017-07-26 15:31:04', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('845', '132', '13', '1', '0', '1', '/uploadFile/product/201707/3a032991-f735-4fc4-9e29-bcff8001dceb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3a032991-f735-4fc4-9e29-bcff8001dceb.jpg', '122', '124', null, '1', 'admin', null, '2017-07-26 15:35:52', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('854', '', null, '1', '0', '1', '/uploadFile/product/201707/e3638619-f4f9-4952-91fb-3a9f1b0a4256.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/e3638619-f4f9-4952-91fb-3a9f1b0a4256.jpg', '122', '124', '', '1', 'admin', null, '2017-07-26 16:07:33', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('855', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/bde865a6-4cc7-4716-ba16-1569e4c2d8ea.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/bde865a6-4cc7-4716-ba16-1569e4c2d8ea.jpg', '122', '124', '', '1', 'admin', null, '2017-07-26 16:10:38', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('857', '', null, '1', '0', '1', '/uploadFile/product/201707/4d1076d3-df55-4895-a3c9-83badc11f2a3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4d1076d3-df55-4895-a3c9-83badc11f2a3.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-26 16:20:24', '2017-07-27 13:32:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('861', '123', '123', '1', '0', '1', '/uploadFile/product/201707/fd2afab4-15c1-4e03-8410-4429bfd8798d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/fd2afab4-15c1-4e03-8410-4429bfd8798d.jpg', '122', '124', '123123', '1', 'admin', null, '2017-07-26 16:51:46', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('862', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/7baa3e72-49d9-41e6-bc7f-79af39183e0b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/7baa3e72-49d9-41e6-bc7f-79af39183e0b.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-26 16:53:04', '2017-08-14 09:47:56', '123.00', null, null, null);
INSERT INTO `product` VALUES ('863', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/a5883296-b00a-46dd-8025-8b4242e46820.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a5883296-b00a-46dd-8025-8b4242e46820.jpg', '122', '124', '', '1', 'admin', null, '2017-07-26 16:57:00', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('865', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/aa11ff09-1ca5-4064-9297-3d65ec77b07c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/aa11ff09-1ca5-4064-9297-3d65ec77b07c.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-26 17:05:55', '2017-08-01 12:59:23', '123.00', null, null, null);
INSERT INTO `product` VALUES ('866', '', null, '1', '0', '1', '/uploadFile/product/201707/0fed2448-aa20-47fb-a6a5-a58bd7f90e21.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/0fed2448-aa20-47fb-a6a5-a58bd7f90e21.jpg', '122', '124', '', '1', 'admin', null, '2017-07-26 17:12:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('867', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/2f8a73ed-adde-4c59-b550-e6e294a0a05d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2f8a73ed-adde-4c59-b550-e6e294a0a05d.jpg', '122', '124', '', '1', 'admin', null, '2017-07-26 17:18:18', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('868', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/a3310412-45fd-4d1a-871e-f085b0e191b4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a3310412-45fd-4d1a-871e-f085b0e191b4.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-26 17:21:12', '2017-08-10 16:06:25', '123.00', null, null, null);
INSERT INTO `product` VALUES ('869', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/458c15ef-353b-4abd-bfa7-1e58c319b4bd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/458c15ef-353b-4abd-bfa7-1e58c319b4bd.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-26 17:22:48', '2017-07-26 17:28:50', '123.00', null, null, null);
INSERT INTO `product` VALUES ('877', 'С̩', '', '1', '0', '1', '/uploadFile/product/201707/b5670da0-df96-47f7-9582-a2adc6d7e58a.png', 'http://47.94.205.255:8082//uploadFile/product/201707/b5670da0-df96-47f7-9582-a2adc6d7e58a.png', '122', '124', '', '1', 'admin', null, '2017-07-27 09:58:42', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('881', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/2dabe58b-567b-4137-b784-81d044563c10.png', 'http://47.94.205.255:8082//uploadFile/product/201707/2dabe58b-567b-4137-b784-81d044563c10.png', '122', '124', '', '1', 'admin', null, '2017-07-27 10:13:45', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('890', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/1033a20a-3e4e-409f-b882-98586ac1748f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/1033a20a-3e4e-409f-b882-98586ac1748f.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 10:57:47', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('894', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/9cd7a89a-cd1d-4db7-97c8-08e3dd3af4d1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/9cd7a89a-cd1d-4db7-97c8-08e3dd3af4d1.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 11:18:40', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('896', 'B-toys', '', '1', '0', '1', '/uploadFile/product/201707/b19f6c39-c4a6-4546-abbf-644def5ba66f.png', 'http://47.94.205.255:8082//uploadFile/product/201707/b19f6c39-c4a6-4546-abbf-644def5ba66f.png', '122', '124', '', '1', 'admin', null, '2017-07-27 11:36:33', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('901', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/3a3073e4-b4e2-4b8e-81c5-2aa67517ee3a.png', 'http://47.94.205.255:8082//uploadFile/product/201707/3a3073e4-b4e2-4b8e-81c5-2aa67517ee3a.png', '122', '124', '', '1', 'admin', null, '2017-07-27 11:49:38', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('902', 'step2', null, '1', '0', '1', '/uploadFile/product/201707/d99cd182-c73d-4e3d-adc9-2bb93b72b236.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d99cd182-c73d-4e3d-adc9-2bb93b72b236.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 11:53:13', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('905', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/126563b8-9dcd-4251-96d6-e9871b46b8bb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/126563b8-9dcd-4251-96d6-e9871b46b8bb.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 14:26:06', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('906', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/04d33fb5-3693-486d-b58b-3a1267687cdc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/04d33fb5-3693-486d-b58b-3a1267687cdc.jpg', '122', '124', '1', '1', 'admin', null, '2017-07-27 14:30:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('907', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/3e747193-86f0-4fd1-ac78-d52e879b880a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3e747193-86f0-4fd1-ac78-d52e879b880a.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 14:34:17', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('909', 'С', null, '1', '0', '1', '/uploadFile/product/201707/5361ef0e-8db2-47ca-8c22-5919501aa7e1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5361ef0e-8db2-47ca-8c22-5919501aa7e1.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 14:39:51', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('910', 'С', null, '1', '0', '1', '/uploadFile/product/201707/569b1398-49a6-48bd-bafb-156eebfb6ff9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/569b1398-49a6-48bd-bafb-156eebfb6ff9.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 14:44:51', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('911', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/a25f18d5-dce3-42a3-ae97-8e4793ecf586.jpg_/uploadFile/product/201707/b15f3cd0-7cc6-4558-82d1-b89d7de1da01.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a25f18d5-dce3-42a3-ae97-8e4793ecf586.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 14:47:40', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('912', 'С', null, '1', '0', '1', '/uploadFile/product/201707/60dda270-a7b2-4c10-aeea-f4928317b105.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/60dda270-a7b2-4c10-aeea-f4928317b105.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 14:49:42', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('916', '', null, '1', '0', '1', '/uploadFile/product/201707/512b7c62-0a1e-4646-9d08-0836cbfa9472.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/512b7c62-0a1e-4646-9d08-0836cbfa9472.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 15:02:48', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('917', 'Ư', null, '1', '0', '1', '/uploadFile/product/201707/ff30be19-d5fb-4590-a13e-72769c7a13f6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ff30be19-d5fb-4590-a13e-72769c7a13f6.jpg', '122', '124', '\n', '1', 'admin', null, '2017-07-27 15:06:58', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('918', 'Ŧ', null, '1', '0', '1', '/uploadFile/product/201707/91518a3b-449c-40ba-9266-b9800f09f0c2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/91518a3b-449c-40ba-9266-b9800f09f0c2.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 15:10:52', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('920', '', null, '1', '0', '1', '/uploadFile/product/201707/6534ed7d-5885-4760-9e5e-83c01251ffed.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/6534ed7d-5885-4760-9e5e-83c01251ffed.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 15:17:03', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('921', '', null, '1', '0', '1', '/uploadFile/product/201707/d5f92762-3414-41af-9f05-208f90bf6847.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d5f92762-3414-41af-9f05-208f90bf6847.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 15:20:58', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('923', '', null, '1', '0', '1', '/uploadFile/product/201707/9b568484-00fb-4104-ad58-da23eac4c184.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/9b568484-00fb-4104-ad58-da23eac4c184.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 15:25:54', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('925', '', '', '1', '0', '1', '/uploadFile/product/201707/f9499d07-808f-4e8f-a974-ecf1892a74c3.png', 'http://47.94.205.255:8082//uploadFile/product/201707/f9499d07-808f-4e8f-a974-ecf1892a74c3.png', '122', '124', '', '1', 'admin', null, '2017-07-27 15:35:10', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('926', '', null, '1', '0', '1', '/uploadFile/product/201707/61e066f8-7ecf-4bfc-932f-82d6784d9bda.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/61e066f8-7ecf-4bfc-932f-82d6784d9bda.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 15:38:24', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('927', 'step2', null, '1', '0', '1', '/uploadFile/product/201707/a19c8ded-b7c7-4f61-9f76-aa8573c48a62.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a19c8ded-b7c7-4f61-9f76-aa8573c48a62.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 15:41:13', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('928', 'EDTOYɢװ', null, '1', '0', '1', '/uploadFile/product/201707/54cdd17e-02e3-45a3-98c4-f390d086cac6.png', 'http://47.94.205.255:8082//uploadFile/product/201707/54cdd17e-02e3-45a3-98c4-f390d086cac6.png', '122', '124', '', '1', 'admin', null, '2017-07-27 15:44:42', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('929', 'B-toysС', null, '1', '0', '1', '/uploadFile/product/201707/598e407a-1825-4e31-93fa-a3941755f2eb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/598e407a-1825-4e31-93fa-a3941755f2eb.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 15:49:01', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('930', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/5d1364ad-3d2d-404a-b046-c7f1c7f8f4d6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5d1364ad-3d2d-404a-b046-c7f1c7f8f4d6.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 15:51:39', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('933', '̩', null, '1', '0', '1', '/uploadFile/product/201707/530c83c9-05e1-4b6f-8ede-c6c3536804c5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/530c83c9-05e1-4b6f-8ede-c6c3536804c5.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 16:00:47', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('934', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/36658ad8-5337-40c0-bb92-e0141c8518bb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/36658ad8-5337-40c0-bb92-e0141c8518bb.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-27 16:03:03', '2017-08-01 12:16:03', '123.00', null, null, null);
INSERT INTO `product` VALUES ('937', '', null, '1', '0', '1', '/uploadFile/product/201707/cfe1fde8-40d9-4edd-8ea6-f673d40617b0.png', 'http://47.94.205.255:8082//uploadFile/product/201707/cfe1fde8-40d9-4edd-8ea6-f673d40617b0.png', '122', '124', '', '1', 'admin', 'admin', '2017-07-27 16:14:26', '2017-08-14 09:44:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('948', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/936cab24-fe99-409c-88fe-163a2be459b1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/936cab24-fe99-409c-88fe-163a2be459b1.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 16:44:13', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('951', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/3ee65523-add3-4f38-a7c3-12644570ba0e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3ee65523-add3-4f38-a7c3-12644570ba0e.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 16:52:11', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('953', '', null, '1', '0', '1', '/uploadFile/product/201707/d969215e-18c8-4202-8464-3bc97fb1a3af.png', 'http://47.94.205.255:8082//uploadFile/product/201707/d969215e-18c8-4202-8464-3bc97fb1a3af.png', '122', '124', '', '1', 'admin', null, '2017-07-27 16:57:14', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('954', '', null, '1', '0', '1', '/uploadFile/product/201707/c6b16c55-0cf0-4b6b-ac78-04fd0fbf00a4.png', 'http://47.94.205.255:8082//uploadFile/product/201707/c6b16c55-0cf0-4b6b-ac78-04fd0fbf00a4.png', '122', '124', null, '1', 'admin', null, '2017-07-27 16:57:48', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('955', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/d77bcc8f-e739-48ac-b71d-2bac97f904f2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d77bcc8f-e739-48ac-b71d-2bac97f904f2.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-27 17:00:36', '2017-08-04 10:10:49', '123.00', null, null, null);
INSERT INTO `product` VALUES ('956', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/c07432f2-63ba-416a-a531-06734a4f5c72.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c07432f2-63ba-416a-a531-06734a4f5c72.jpg', '122', '124', '\n', '1', 'admin', null, '2017-07-27 17:01:47', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('959', '', null, '1', '2', '1', '/uploadFile/product/201707/dcfe3a06-23bf-46cf-94e6-506f442455b8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/dcfe3a06-23bf-46cf-94e6-506f442455b8.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-27 17:05:06', '2017-08-15 17:56:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('962', 'ΰ', '', '1', '0', '1', '/uploadFile/product/201707/1c49e60a-5d74-4b9b-9a6c-98483085a93b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/1c49e60a-5d74-4b9b-9a6c-98483085a93b.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 17:14:12', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('963', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/3d5b0edf-c949-4ed2-9986-85677e5966d7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3d5b0edf-c949-4ed2-9986-85677e5966d7.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 17:15:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('966', '', null, '1', '0', '1', '/uploadFile/product/201707/8659e9dc-e9e3-4876-be52-cc49de6d9288.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/8659e9dc-e9e3-4876-be52-cc49de6d9288.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 17:23:55', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('973', 'С̩', '', '1', '0', '1', '/uploadFile/product/201707/f2329b23-db6a-423d-b6b3-e1b558e3de63.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f2329b23-db6a-423d-b6b3-e1b558e3de63.jpg', '122', '124', 'һ', '1', 'admin', null, '2017-07-27 17:32:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('975', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/b646de03-4ba0-44be-b3f6-f0717a5a8367.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b646de03-4ba0-44be-b3f6-f0717a5a8367.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 17:34:30', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('977', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/cd153c4d-2607-4dbe-8121-92813f005a44.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/cd153c4d-2607-4dbe-8121-92813f005a44.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 17:42:06', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('978', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/cd153c4d-2607-4dbe-8121-92813f005a44.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/cd153c4d-2607-4dbe-8121-92813f005a44.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 17:42:06', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('979', 'puku', null, '1', '0', '1', '/uploadFile/product/201707/4a8c5817-4745-4e23-b690-4634441452a0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4a8c5817-4745-4e23-b690-4634441452a0.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 17:45:38', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('981', '', null, '1', '0', '1', '/uploadFile/product/201707/23f8966a-d151-4f05-ae94-1cc153d13624.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/23f8966a-d151-4f05-ae94-1cc153d13624.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 17:50:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('982', '', null, '1', '0', '1', '/uploadFile/product/201707/abb93e68-9efc-40da-aabf-c6e68bc92ec1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/abb93e68-9efc-40da-aabf-c6e68bc92ec1.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 17:50:55', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('984', '', null, '1', '0', '1', '/uploadFile/product/201707/93765bf2-3c8f-4983-9761-0be4204b6686.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/93765bf2-3c8f-4983-9761-0be4204b6686.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-27 17:53:50', '2017-08-02 15:17:01', '123.00', null, null, null);
INSERT INTO `product` VALUES ('985', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/3ac69a27-cd04-4983-b396-97eb9a6264cb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3ac69a27-cd04-4983-b396-97eb9a6264cb.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 17:56:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('986', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/61f605c9-6318-4025-af7e-e90f657262cb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/61f605c9-6318-4025-af7e-e90f657262cb.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 17:57:03', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('987', '', null, '1', '0', '1', '/uploadFile/product/201707/d7106999-6654-413c-8b37-a2b59f70e3ef.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/d7106999-6654-413c-8b37-a2b59f70e3ef.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-27 18:00:28', '2017-08-02 09:28:22', '123.00', null, null, null);
INSERT INTO `product` VALUES ('988', '', null, '1', '0', '1', '/uploadFile/product/201707/731a996d-8c42-4531-9f68-ee4aabca57c2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/731a996d-8c42-4531-9f68-ee4aabca57c2.jpg', '122', '124', '', '1', 'admin', null, '2017-07-27 18:01:09', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('997', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/a1c56fcb-e158-4178-b51e-4c361e1141fe.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a1c56fcb-e158-4178-b51e-4c361e1141fe.jpg', '122', '125', null, '1', 'admin', null, '2017-07-28 09:32:34', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1000', 'step2', null, '1', '0', '1', '/uploadFile/product/201707/5251a6d3-5f68-459d-9b9b-eb637ff09609.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5251a6d3-5f68-459d-9b9b-eb637ff09609.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 10:02:23', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1002', 'С', null, '1', '0', '1', '/uploadFile/product/201707/df284b27-a763-4af3-848f-707c001bbe73.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/df284b27-a763-4af3-848f-707c001bbe73.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 12:38:39', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1003', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/3b26e5d7-3d67-4c10-9ca1-dbfdd503b1ac.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3b26e5d7-3d67-4c10-9ca1-dbfdd503b1ac.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 12:42:58', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1005', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/2668d964-cbfd-41aa-a0e2-07aeb70a281d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2668d964-cbfd-41aa-a0e2-07aeb70a281d.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 12:53:06', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1006', '', null, '1', '0', '1', '/uploadFile/product/201707/3404afab-e1ea-49f3-a6ce-c117713548f5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3404afab-e1ea-49f3-a6ce-c117713548f5.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 12:56:52', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1007', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/a90df720-40f1-4248-b08a-3808556c6ab7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a90df720-40f1-4248-b08a-3808556c6ab7.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 12:59:17', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1008', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/5877aa87-f687-452b-8459-589aecf99dec.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5877aa87-f687-452b-8459-589aecf99dec.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 13:02:50', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1009', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/fa207d37-9a2e-4c1a-aa3c-3f91e14d63fc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/fa207d37-9a2e-4c1a-aa3c-3f91e14d63fc.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 13:07:32', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1010', '', null, '1', '0', '1', '/uploadFile/product/201707/486d91da-4d94-48e0-967c-72733e6359c1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/486d91da-4d94-48e0-967c-72733e6359c1.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 13:15:54', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1012', '', null, '1', '0', '1', '/uploadFile/product/201707/941b30a4-9832-4a5f-80e8-091baaee0994.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/941b30a4-9832-4a5f-80e8-091baaee0994.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 13:19:50', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1013', 'ͯ', null, '1', '0', '1', '/uploadFile/product/201707/528db659-03fa-42a6-9ffb-cac4790fc702.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/528db659-03fa-42a6-9ffb-cac4790fc702.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 13:22:12', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1014', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/e0736774-41c3-407c-99ba-34e1fc389693.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/e0736774-41c3-407c-99ba-34e1fc389693.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 13:27:30', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1015', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/9d1d774e-1cd0-4cd0-a759-a4b4afd0961d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/9d1d774e-1cd0-4cd0-a759-a4b4afd0961d.jpg', '122', '124', 'ͨ', '1', 'admin', 'admin', '2017-07-28 13:30:44', '2017-08-03 17:36:54', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1017', 'ľ', null, '1', '0', '1', '/uploadFile/product/201707/116af41a-3200-413b-8390-129fadccca32.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/116af41a-3200-413b-8390-129fadccca32.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 13:36:55', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1019', '', null, '1', '0', '1', '/uploadFile/product/201707/b80d946f-087f-44d8-a23f-135e8e428099.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b80d946f-087f-44d8-a23f-135e8e428099.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 13:49:10', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1020', '', '', '1', '0', '1', '/uploadFile/product/201707/55726c80-7ac0-4bba-a1fc-f52efa1a89e2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/55726c80-7ac0-4bba-a1fc-f52efa1a89e2.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 13:52:13', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1021', '', null, '1', '0', '1', '/uploadFile/product/201707/24139f8f-381f-4bf9-bf28-798042f804a6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/24139f8f-381f-4bf9-bf28-798042f804a6.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 13:53:28', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1022', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/ca7cebda-3f53-46bb-9762-7aaff6fd9a85.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/ca7cebda-3f53-46bb-9762-7aaff6fd9a85.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 13:58:46', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1023', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/f77ca203-183a-47c7-ae63-acaa52873074.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f77ca203-183a-47c7-ae63-acaa52873074.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-28 14:09:07', '2017-07-28 14:11:57', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1024', '', null, '1', '0', '1', '/uploadFile/product/201707/1c52331b-88f0-4bd4-b4ca-bf59fbf6fc19.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/1c52331b-88f0-4bd4-b4ca-bf59fbf6fc19.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 14:11:29', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1025', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/3ab82b6a-7bac-4f6b-bfbe-48491da34eb1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/3ab82b6a-7bac-4f6b-bfbe-48491da34eb1.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-28 14:15:39', '2017-08-14 15:21:53', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1027', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/a98034a3-e961-418c-8a04-9dbf9024b871.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/a98034a3-e961-418c-8a04-9dbf9024b871.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 14:25:23', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1028', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/f9f2c7da-0eb3-4a99-abe2-84bc69ee0b98.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/f9f2c7da-0eb3-4a99-abe2-84bc69ee0b98.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 14:44:08', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1030', 'B toysľ', null, '1', '0', '1', '/uploadFile/product/201707/5fcb5d6f-b8ad-4441-b31e-e6d8b054f4ec.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/5fcb5d6f-b8ad-4441-b31e-e6d8b054f4ec.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 14:51:14', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1031', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/2cc55b47-db82-4b4d-b9df-f054d6f6f7bb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/2cc55b47-db82-4b4d-b9df-f054d6f6f7bb.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 14:54:41', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1032', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/976b55e9-763c-46b1-886b-92624dc4e01a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/976b55e9-763c-46b1-886b-92624dc4e01a.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 14:56:34', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1033', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/50805994-0f0f-4144-8f3c-8272f5f7223c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/50805994-0f0f-4144-8f3c-8272f5f7223c.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 14:57:45', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1034', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/324b9cbf-fc5e-4185-bdd9-7b0ad34ff7f5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/324b9cbf-fc5e-4185-bdd9-7b0ad34ff7f5.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 15:00:50', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1035', 'С', null, '1', '0', '1', '/uploadFile/product/201707/963d654c-be2a-42d4-b561-934e9d405086.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/963d654c-be2a-42d4-b561-934e9d405086.jpg', '122', '124', 'С', '1', 'admin', null, '2017-07-28 16:48:30', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1036', 'С', null, '1', '0', '1', '/uploadFile/product/201707/b272be40-536f-492b-8df1-1a2b386ebc92.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b272be40-536f-492b-8df1-1a2b386ebc92.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 16:53:16', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1037', '', null, '1', '0', '1', '/uploadFile/product/201707/c5db62fa-c64a-4604-9e80-059cc313931e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c5db62fa-c64a-4604-9e80-059cc313931e.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 17:01:30', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1038', 'С', null, '1', '0', '1', '/uploadFile/product/201707/04267de7-9c84-49ab-87a7-2f186e3b7bea.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/04267de7-9c84-49ab-87a7-2f186e3b7bea.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 17:04:20', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1039', '', null, '1', '0', '1', '/uploadFile/product/201707/385398a0-d2ce-46c3-8848-1e39baf8bf5a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/385398a0-d2ce-46c3-8848-1e39baf8bf5a.jpg', '122', '124', '', '1', 'admin', null, '2017-07-28 17:07:01', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1040', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/4cae9bca-6375-45c2-b127-1860d814e1a8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4cae9bca-6375-45c2-b127-1860d814e1a8.jpg', '122', '125', null, '1', 'admin', null, '2017-07-30 09:29:46', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1041', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201707/911e9cb2-8ac7-49f1-9705-17c45505157f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/911e9cb2-8ac7-49f1-9705-17c45505157f.jpg', '122', '132', null, '1', 'admin', null, '2017-07-31 09:46:51', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1042', 'ľ', null, '1', '0', '1', '/uploadFile/product/201707/4e7b35b3-24c0-4a17-badc-56292eb644af.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/4e7b35b3-24c0-4a17-badc-56292eb644af.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-31 14:02:54', '2017-08-01 15:44:08', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1045', '', null, '1', '0', '1', '/uploadFile/product/201707/41ac4e70-3b6b-4bda-97f9-a22be32b2f2c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/41ac4e70-3b6b-4bda-97f9-a22be32b2f2c.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-31 14:14:06', '2017-08-04 09:39:32', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1047', '', null, '1', '0', '1', '/uploadFile/product/201707/c47f2e9b-5fee-4cb4-a84d-9e6c7a7a13ce.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c47f2e9b-5fee-4cb4-a84d-9e6c7a7a13ce.jpg', '122', '124', '', '1', 'admin', null, '2017-07-31 14:18:25', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1052', '', null, '1', '0', '1', '/uploadFile/product/201707/e68bcfbe-90fb-43bd-8112-ae833aec07ae.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/e68bcfbe-90fb-43bd-8112-ae833aec07ae.jpg', '122', '124', '', '1', 'admin', null, '2017-07-31 14:45:09', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1053', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/c64535d6-df33-4f6c-86d1-2ed479c64751.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/c64535d6-df33-4f6c-86d1-2ed479c64751.jpg', '122', '124', '', '1', 'admin', null, '2017-07-31 14:47:06', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1054', 'С̩', null, '1', '0', '1', '/uploadFile/product/201707/b1e84ff6-bd0c-44ed-8145-ce38391fc009.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/b1e84ff6-bd0c-44ed-8145-ce38391fc009.jpg', '122', '124', '', '1', 'admin', null, '2017-07-31 14:48:37', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1055', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201707/dc0c6fc9-17c6-41c4-b472-f14ad5e0ee22.jpg', 'http://47.94.205.255:8082//uploadFile/product/201707/dc0c6fc9-17c6-41c4-b472-f14ad5e0ee22.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-07-31 14:53:10', '2017-07-31 15:00:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1056', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/0641e37b-1e23-4e94-b62c-c60dfaa7a768.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0641e37b-1e23-4e94-b62c-c60dfaa7a768.jpg', '122', '125', null, '1', 'admin', null, '2017-08-01 09:30:36', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1069', 'С̩', null, '1', '0', '1', '/uploadFile/product/201708/1b8a3533-67d4-4222-8449-95ed5094589d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1b8a3533-67d4-4222-8449-95ed5094589d.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-08-01 10:32:54', '2017-08-17 16:20:18', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1083', 'ΰ', null, '1', '0', '1', '/uploadFile/product/201708/cc80c35b-0587-4e2d-92a9-d43d7c748cd7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/cc80c35b-0587-4e2d-92a9-d43d7c748cd7.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-08-01 11:37:24', '2017-08-01 12:40:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1106', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/217c01bf-0676-4860-b263-3f31257c9a62.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/217c01bf-0676-4860-b263-3f31257c9a62.jpg', '122', '132', null, '1', 'admin', null, '2017-08-01 15:16:42', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1109', 'ͯ', null, '1', '0', '1', '/uploadFile/product/201708/2edc97d5-132b-4cdd-bb4a-4d7afc8b4a0c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2edc97d5-132b-4cdd-bb4a-4d7afc8b4a0c.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-08-01 15:21:32', '2017-08-01 15:22:11', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1129', '', '1', '1', '0', '1', '/uploadFile/product/201708/5aba12fb-1631-4b40-a164-4b03e7791ed1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5aba12fb-1631-4b40-a164-4b03e7791ed1.jpg', '122', '125', null, '1', 'admin', null, '2017-08-02 09:39:41', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1130', '', '1', '1', '0', '1', '/uploadFile/product/201708/51f604c9-d4df-4441-8b96-2f4498d5279b.png', 'http://47.94.205.255:8082//uploadFile/product/201708/51f604c9-d4df-4441-8b96-2f4498d5279b.png', '122', '140', null, '1', 'admin', null, '2017-08-02 09:42:12', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1131', '', '1', '1', '0', '1', '/uploadFile/product/201708/367f44bd-85b6-47e3-8bf7-1398643d8f57.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/367f44bd-85b6-47e3-8bf7-1398643d8f57.jpg', '122', '125', '', '1', 'admin', null, '2017-08-02 09:50:17', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1132', '', '1', '1', '0', '1', '/uploadFile/product/201708/5f575221-8b11-4690-be19-f552a7500237.png', 'http://47.94.205.255:8082//uploadFile/product/201708/5f575221-8b11-4690-be19-f552a7500237.png', '122', '125', '', '0', 'admin', 'admin', '2017-08-02 09:52:14', '2017-08-11 10:25:15', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1133', '', '1', '1', '0', '1', '/uploadFile/product/201708/dc02e6d7-a353-4bd3-b061-969d515a18bc.png', 'http://47.94.205.255:8082//uploadFile/product/201708/dc02e6d7-a353-4bd3-b061-969d515a18bc.png', '122', '125', '', '0', 'admin', 'admin', '2017-08-02 09:52:58', '2017-08-06 09:27:19', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1134', 'hape', '1', '1', '0', '1', '/uploadFile/product/201708/8b3fa4f6-e359-4734-a382-012866a139f7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/8b3fa4f6-e359-4734-a382-012866a139f7.jpg', '122', '134', null, '1', 'admin', null, '2017-08-02 09:58:19', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1151', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/480a9813-6e2c-455a-be5e-f03e0f25b8ff.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/480a9813-6e2c-455a-be5e-f03e0f25b8ff.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-02 14:56:59', '2017-08-02 19:07:11', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1166', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/72a612ef-fa1a-48b8-9c5c-9e8707ac7645.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/72a612ef-fa1a-48b8-9c5c-9e8707ac7645.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-02 17:43:03', '2017-08-16 15:27:28', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1167', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/2b7accd9-194b-4b3f-9be1-b8313ace3633.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2b7accd9-194b-4b3f-9be1-b8313ace3633.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-02 17:45:10', '2017-08-10 16:03:39', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1168', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/6d91518e-b4c3-4fd0-a862-a78ab31b13f7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6d91518e-b4c3-4fd0-a862-a78ab31b13f7.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-02 17:46:29', '2017-08-02 19:07:39', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1175', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/ec4b783f-d30e-42c5-b03e-6bdf44053d47.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ec4b783f-d30e-42c5-b03e-6bdf44053d47.jpg', '122', '136', '', '1', 'admin', null, '2017-08-02 18:08:06', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1185', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/d085d8e4-4505-4966-a21d-fb3831ccfd7d.jpg_/uploadFile/product/201708/4fd4bd56-ae72-49e2-94b5-dce7f46ebb9f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d085d8e4-4505-4966-a21d-fb3831ccfd7d.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-02 18:31:04', '2017-08-02 18:51:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1186', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/9f273c3d-5990-446a-a2ce-9debca6ecae6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9f273c3d-5990-446a-a2ce-9debca6ecae6.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-02 18:32:32', '2017-08-02 18:51:16', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1187', '', '1', '1', '0', '1', '/uploadFile/product/201708/7abf1572-357f-498c-9b31-bded9d6b960c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7abf1572-357f-498c-9b31-bded9d6b960c.jpg', '122', '137', '', '1', 'admin', 'admin', '2017-08-02 18:33:54', '2017-08-02 18:50:15', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1188', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/2814f6f3-4a61-4e3a-94fb-f13b19a374fc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2814f6f3-4a61-4e3a-94fb-f13b19a374fc.jpg', '122', '137', '', '1', 'admin', 'admin', '2017-08-02 18:35:33', '2017-08-02 18:52:14', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1189', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/bcbee171-4ec7-454e-afc5-fe47338aa609.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/bcbee171-4ec7-454e-afc5-fe47338aa609.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-02 18:36:28', '2017-08-02 18:48:54', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1190', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/2567b098-2d65-4329-a9dd-f53fa4570cc3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2567b098-2d65-4329-a9dd-f53fa4570cc3.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-02 18:37:33', '2017-08-02 18:50:33', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1192', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/bc4db69c-d68b-48ef-9ea3-06251d5a5029.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/bc4db69c-d68b-48ef-9ea3-06251d5a5029.jpg', '122', '133', 'С̩', '1', 'admin', 'admin', '2017-08-02 18:40:31', '2017-08-02 19:09:48', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1193', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/8b8ff6c9-f6d4-45ce-9e2b-0cfd216e436b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/8b8ff6c9-f6d4-45ce-9e2b-0cfd216e436b.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-02 18:42:22', '2017-08-02 19:04:44', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1194', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/4bd41892-5caf-4005-a691-325173ed4675.jpg_/uploadFile/product/201708/ee311565-77d3-4b07-aca5-57be55b5d7b6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4bd41892-5caf-4005-a691-325173ed4675.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-02 18:44:32', '2017-08-02 18:51:53', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1195', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/d9c8a8e5-e940-4bb7-80b9-4dc6233a22c1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d9c8a8e5-e940-4bb7-80b9-4dc6233a22c1.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-08-02 18:46:44', '2017-08-02 19:03:20', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1197', '', '1', '1', '0', '1', '/uploadFile/product/201708/81359c10-fd40-480e-9ade-7b383aac1c87.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/81359c10-fd40-480e-9ade-7b383aac1c87.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-02 18:48:16', '2017-08-02 18:50:25', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1198', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/8661c9cd-9a92-4b2c-aed0-b368be51a5ae.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/8661c9cd-9a92-4b2c-aed0-b368be51a5ae.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-02 18:49:13', '2017-08-02 18:50:50', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1200', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/565db865-7d14-446c-8f9f-c3d5c35e8ac3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/565db865-7d14-446c-8f9f-c3d5c35e8ac3.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-02 18:51:46', '2017-08-02 18:56:23', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1202', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/4016c9af-86a2-468b-8ef9-85d6c0d5c84d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4016c9af-86a2-468b-8ef9-85d6c0d5c84d.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-02 18:54:47', '2017-08-02 19:05:26', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1203', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/861c9d19-44ab-4733-98bc-f7793873f4cc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/861c9d19-44ab-4733-98bc-f7793873f4cc.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-02 18:55:40', '2017-08-02 19:05:17', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1205', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/b2ddfbf3-fb53-4d10-a0cf-53ff571d7fae.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b2ddfbf3-fb53-4d10-a0cf-53ff571d7fae.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-02 19:06:35', '2017-08-02 19:08:05', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1206', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/3890ad5a-01a4-4333-9ac5-3e4a16fbe561.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/3890ad5a-01a4-4333-9ac5-3e4a16fbe561.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-02 19:07:16', '2017-08-02 19:07:46', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1208', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/a10ceb30-34e7-4662-878c-3a5a298e3b9b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a10ceb30-34e7-4662-878c-3a5a298e3b9b.jpg', '122', '133', 'С̩', '1', 'admin', 'admin', '2017-08-02 19:09:08', '2017-08-02 19:09:54', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1209', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/69f3f564-c609-459a-8d57-55ed9f2000f9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/69f3f564-c609-459a-8d57-55ed9f2000f9.jpg', '122', '133', 'С̩', '1', 'admin', 'admin', '2017-08-02 19:11:16', '2017-08-02 19:12:07', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1210', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/850d58bf-267b-491f-8bb0-680d67fa1741.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/850d58bf-267b-491f-8bb0-680d67fa1741.jpg', '122', '127', null, '1', 'admin', null, '2017-08-03 09:01:36', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1211', '', '1', '1', '0', '1', '/uploadFile/product/201708/2aa9f33d-058b-461d-9360-876301d2916a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2aa9f33d-058b-461d-9360-876301d2916a.jpg', '122', '125', null, '1', 'admin', null, '2017-08-03 09:11:57', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1212', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/e8d9e2fa-d973-43ad-abf7-b5a8d132e7e1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e8d9e2fa-d973-43ad-abf7-b5a8d132e7e1.jpg', '122', '137', null, '1', 'admin', 'admin', '2017-08-03 09:17:42', '2017-08-03 09:23:33', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1213', '', '1', '1', '0', '1', '/uploadFile/product/201708/39ef0ed8-658e-4c72-8327-96d51e707d4c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/39ef0ed8-658e-4c72-8327-96d51e707d4c.jpg', '122', '125', '', '0', 'admin', 'admin', '2017-08-03 09:31:33', '2017-08-06 09:27:28', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1214', 'ľ', '1', '1', '0', '1', '/uploadFile/product/201708/ab9c1ae6-ef3b-4010-9cd7-822fa9d83595.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ab9c1ae6-ef3b-4010-9cd7-822fa9d83595.jpg', '122', '127', '', '1', 'admin', null, '2017-08-03 09:32:55', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1215', 'ɳ', '1', '1', '2', '0', '/uploadFile/product/201708/ec7f0791-b21a-4cd5-bbf1-1a24b0c36553.jpg_/uploadFile/product/201708/1c414d50-be62-4d29-a477-cb05b0d60364.jpg_/uploadFile/product/201708/4bb0f69c-0ecc-457e-b5f4-eabbf78a2555.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ec7f0791-b21a-4cd5-bbf1-1a24b0c36553.jpg', '122', '125', '', '0', 'admin', 'admin', '2017-08-03 09:34:14', '2017-08-06 09:27:41', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1217', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/b7857634-181b-42f2-9355-457294dcf8aa.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b7857634-181b-42f2-9355-457294dcf8aa.jpg', '122', '132', null, '1', 'admin', null, '2017-08-03 13:06:12', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1218', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/6f8dc197-149c-48ca-bc9a-80e5dc9eb8a9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6f8dc197-149c-48ca-bc9a-80e5dc9eb8a9.jpg', '122', '138', null, '1', 'admin', null, '2017-08-03 13:08:17', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1219', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/8715c1e7-7c9f-4047-a375-f2896ac3b5f0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/8715c1e7-7c9f-4047-a375-f2896ac3b5f0.jpg', '122', '136', null, '1', 'admin', null, '2017-08-03 13:09:57', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1221', 'blue-box', '1', '1', '0', '1', '/uploadFile/product/201708/895ddc8a-eaae-470c-80fb-781c596edd0a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/895ddc8a-eaae-470c-80fb-781c596edd0a.jpg', '122', '134', '', '1', 'admin', 'admin', '2017-08-03 13:14:37', '2017-08-14 15:28:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1222', 'С̩', '1', '1', '2', '1', '/uploadFile/product/201708/11548a65-22d1-4869-bcd9-1a1ded3ae631.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/11548a65-22d1-4869-bcd9-1a1ded3ae631.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 13:17:46', '2017-08-14 15:22:05', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1223', '', '1', '1', '0', '1', '/uploadFile/product/201708/dc5b5dcd-162e-46ec-9511-39ffad34317f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/dc5b5dcd-162e-46ec-9511-39ffad34317f.jpg', '122', '125', '1', '1', 'admin', 'admin', '2017-08-03 13:20:02', '2017-08-03 15:42:26', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1224', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/ecaa3023-6500-435b-ac25-5ba2e058ca58.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ecaa3023-6500-435b-ac25-5ba2e058ca58.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-03 13:23:03', '2017-08-03 15:40:48', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1225', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/ae0f9a14-737a-4028-97cc-f9c7ae3450a8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ae0f9a14-737a-4028-97cc-f9c7ae3450a8.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 13:35:19', '2017-08-03 15:42:09', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1226', 'С¹', '1', '1', '0', '1', '/uploadFile/product/201708/2af39291-43e0-4e8d-b98d-6aeb7fdb567f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2af39291-43e0-4e8d-b98d-6aeb7fdb567f.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-03 13:41:37', '2017-08-03 15:07:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1227', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/07f34a86-603b-48c5-b7a1-26bb71e44858.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/07f34a86-603b-48c5-b7a1-26bb71e44858.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 13:44:11', '2017-08-03 17:20:32', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1228', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/7e592ae4-4969-4ee2-bb87-ce944f19fb93.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7e592ae4-4969-4ee2-bb87-ce944f19fb93.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-03 13:50:27', '2017-08-03 15:36:27', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1230', 'С¹', '1', '1', '0', '1', '/uploadFile/product/201708/8c03e19a-780c-4aa9-8aa5-eebf351ff0d7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/8c03e19a-780c-4aa9-8aa5-eebf351ff0d7.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-03 13:53:08', '2017-08-03 15:07:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1233', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/d7f3995a-1d4c-4bdd-ba39-27c1783eefb1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d7f3995a-1d4c-4bdd-ba39-27c1783eefb1.jpg', '122', '134', '', '1', 'admin', 'admin', '2017-08-03 14:19:33', '2017-08-03 14:31:50', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1237', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/398cf210-a55e-4bd2-8a30-7271d988ae3f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/398cf210-a55e-4bd2-8a30-7271d988ae3f.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-03 14:40:26', '2017-08-03 15:36:16', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1239', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/f3aa5e03-938d-4aa8-99de-610367b8c8ca.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f3aa5e03-938d-4aa8-99de-610367b8c8ca.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-03 14:44:14', '2017-08-03 14:45:49', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1242', '', '1', '1', '0', '1', '/uploadFile/product/201708/f5b60812-c403-4861-9598-da07cb058c37.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f5b60812-c403-4861-9598-da07cb058c37.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 15:11:17', '2017-08-03 15:16:08', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1243', '', '1', '1', '0', '1', '/uploadFile/product/201708/93882322-ca59-42d2-aeef-38bffe69fb2a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/93882322-ca59-42d2-aeef-38bffe69fb2a.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 15:14:08', '2017-08-03 15:21:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1244', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/e01a9450-20ac-42b8-8c39-e721a89110f4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e01a9450-20ac-42b8-8c39-e721a89110f4.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 15:20:14', '2017-08-03 15:34:53', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1245', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/135a6dc7-9bf7-4f88-9767-c632151a945d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/135a6dc7-9bf7-4f88-9767-c632151a945d.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 16:51:42', '2017-08-03 17:39:53', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1247', 'ͯ', '1', '1', '0', '1', '/uploadFile/product/201708/23885fd9-eb33-4533-a340-9974fc99d9a0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/23885fd9-eb33-4533-a340-9974fc99d9a0.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 16:58:35', '2017-08-03 17:39:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1248', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/21aaec46-898e-4398-9323-4837b56a007b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/21aaec46-898e-4398-9323-4837b56a007b.jpg', '122', '125', 'ͨ', '1', 'admin', 'admin', '2017-08-03 17:02:55', '2017-08-03 17:38:12', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1249', '', '1', '1', '0', '1', '/uploadFile/product/201708/9d6a4a58-146c-4e11-8648-cbd2df1768e8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9d6a4a58-146c-4e11-8648-cbd2df1768e8.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 17:07:13', '2017-08-03 17:41:10', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1250', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/454511a3-00c7-468d-8c79-d3e28a7377fc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/454511a3-00c7-468d-8c79-d3e28a7377fc.jpg', '122', '125', 'ͨ', '1', 'admin', 'admin', '2017-08-03 17:08:44', '2017-08-03 17:38:02', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1252', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/210d8878-1327-46e5-b17d-2799e6df6b87.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/210d8878-1327-46e5-b17d-2799e6df6b87.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 17:12:09', '2017-08-04 11:13:32', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1253', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/41cd9e62-ecf0-4185-a7bf-1bd56d1f4cb3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/41cd9e62-ecf0-4185-a7bf-1bd56d1f4cb3.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 17:13:13', '2017-08-03 17:30:02', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1257', '·', '1', '1', '0', '1', '/uploadFile/product/201708/55d0fc32-0c58-4e58-86a9-b59335b0b80c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/55d0fc32-0c58-4e58-86a9-b59335b0b80c.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-03 18:15:41', '2017-08-03 18:19:30', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1258', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/ff76d8d4-35e4-47a8-b4fe-4ea24cbc289c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ff76d8d4-35e4-47a8-b4fe-4ea24cbc289c.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-03 18:17:38', '2017-08-03 18:22:16', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1259', '', '1', '1', '0', '1', '/uploadFile/product/201708/daf31b0c-b799-4c50-90f6-4f001bd3cc36.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/daf31b0c-b799-4c50-90f6-4f001bd3cc36.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-03 18:20:31', '2017-08-03 18:23:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1260', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/7f813ef2-bfed-4c57-93f0-b0f4c9aaf17b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7f813ef2-bfed-4c57-93f0-b0f4c9aaf17b.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 18:35:21', '2017-08-04 09:57:17', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1261', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/d86273a0-ddd8-4f97-ba14-d888f3566d9c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d86273a0-ddd8-4f97-ba14-d888f3566d9c.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 18:37:54', '2017-08-04 10:11:02', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1263', 'ΰ', '1', '1', '2', '1', '/uploadFile/product/201708/4ea32173-0f72-4bf2-8c83-8ef712054d83.png', 'http://47.94.205.255:8082//uploadFile/product/201708/4ea32173-0f72-4bf2-8c83-8ef712054d83.png', '122', '125', 'ʹ', '1', 'admin', 'admin', '2017-08-03 18:40:10', '2017-08-04 09:47:48', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1264', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/ef23e077-7c97-48d0-a4be-4856fae324ad.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ef23e077-7c97-48d0-a4be-4856fae324ad.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 18:42:08', '2017-08-15 17:56:30', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1266', '', '1', '1', '0', '1', '/uploadFile/product/201708/93f6fc0f-8b97-4254-bd0c-bdffae6fe95f.png', 'http://47.94.205.255:8082//uploadFile/product/201708/93f6fc0f-8b97-4254-bd0c-bdffae6fe95f.png', '122', '125', '', '1', 'admin', 'admin', '2017-08-03 18:49:02', '2017-08-04 09:39:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1269', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/41972db2-2a01-4fc3-af86-7cd6e693084f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/41972db2-2a01-4fc3-af86-7cd6e693084f.jpg', '122', '125', null, '1', 'admin', null, '2017-08-04 15:49:44', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1270', 'hape', '1', '1', '0', '1', '/uploadFile/product/201708/4781a085-5308-4d28-ae86-06e71ab8e7b5.png', 'http://47.94.205.255:8082//uploadFile/product/201708/4781a085-5308-4d28-ae86-06e71ab8e7b5.png', '122', '125', null, '1', 'admin', null, '2017-08-04 16:00:38', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1271', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/14081d78-e309-4e23-aacd-d17b73b0fa74.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/14081d78-e309-4e23-aacd-d17b73b0fa74.jpg', '122', '125', null, '1', 'admin', null, '2017-08-04 17:23:43', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1272', 'Hape', '1', '1', '0', '1', '/uploadFile/product/201708/2d5c963d-85aa-44c4-8425-a92e006386ce.png', 'http://47.94.205.255:8082//uploadFile/product/201708/2d5c963d-85aa-44c4-8425-a92e006386ce.png', '122', '125', '', '1', 'admin', 'admin', '2017-08-05 10:09:08', '2017-08-05 10:18:03', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1273', 'weplayҡ', '1', '1', '0', '1', '/uploadFile/product/201708/0571f7da-2b12-4fce-af26-13f7d47a9a15.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0571f7da-2b12-4fce-af26-13f7d47a9a15.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-05 10:13:12', '2017-08-05 10:17:27', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1274', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/b6f7d228-bce7-4884-acbf-56ed5c4ae1d5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b6f7d228-bce7-4884-acbf-56ed5c4ae1d5.jpg', '122', '125', '', '1', 'admin', null, '2017-08-05 10:17:07', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1275', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/5dc86e04-e707-4813-8037-a331c337da85.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5dc86e04-e707-4813-8037-a331c337da85.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-06 09:25:36', '2017-08-06 09:26:20', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1276', ' 	', '1', '1', '0', '1', '/uploadFile/product/201708/1e62a99f-b4b8-4d81-b090-668adf3483d9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1e62a99f-b4b8-4d81-b090-668adf3483d9.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-08-06 09:37:58', '2017-08-06 09:38:36', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1277', '', '1', '1', '0', '1', '/uploadFile/product/201708/847f020f-80ef-48c9-9362-5b268bbcc851.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/847f020f-80ef-48c9-9362-5b268bbcc851.jpg', '122', '124', '', '0', 'admin', null, '2017-08-06 09:41:22', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1279', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/58835e67-91fe-4b3d-bc49-39d3652c65cf.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/58835e67-91fe-4b3d-bc49-39d3652c65cf.jpg', '122', '125', null, '1', 'admin', null, '2017-08-06 09:50:51', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1280', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/a5cfd5a1-1b3d-4539-9c1f-a53f3187c1d1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a5cfd5a1-1b3d-4539-9c1f-a53f3187c1d1.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-06 09:58:38', '2017-08-07 14:05:12', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1281', 'btoys', '1', '1', '0', '1', '/uploadFile/product/201708/d9ab6584-878d-4ef4-ac72-c2cc9989cd67.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d9ab6584-878d-4ef4-ac72-c2cc9989cd67.jpg', '122', '134', '', '1', 'admin', 'admin', '2017-08-06 10:01:01', '2017-08-07 14:12:57', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1283', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/c6f3b142-a36a-458a-8c20-448d8266ea7e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c6f3b142-a36a-458a-8c20-448d8266ea7e.jpg', '122', '138', null, '1', 'admin', null, '2017-08-06 10:13:36', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1284', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/adef2d9e-96b3-4f4b-95db-91517ee8b581.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/adef2d9e-96b3-4f4b-95db-91517ee8b581.jpg', '122', '127', '', '1', 'admin', 'admin', '2017-08-06 10:14:46', '2017-08-07 14:21:53', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1285', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/7754914d-4ca3-451b-8a28-5dfc814638b6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7754914d-4ca3-451b-8a28-5dfc814638b6.jpg', '122', '125', null, '1', 'admin', null, '2017-08-06 10:16:29', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1287', 'btoys', '1', '1', '0', '1', '/uploadFile/product/201708/d7e3b39e-8f4f-4b9e-9a46-146dba0dfb3f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d7e3b39e-8f4f-4b9e-9a46-146dba0dfb3f.jpg', '122', '125', null, '1', 'admin', null, '2017-08-06 10:33:26', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1288', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/9fe5d155-eb33-4a3d-a441-eecf51658f2a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9fe5d155-eb33-4a3d-a441-eecf51658f2a.jpg', '122', '125', '', '1', 'admin', null, '2017-08-06 10:44:59', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1289', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/b28fdb7d-b719-4ef7-99ca-26dfda141d10.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b28fdb7d-b719-4ef7-99ca-26dfda141d10.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-06 12:54:42', '2017-08-08 15:22:50', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1290', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/e55ba23e-23e4-4389-96e8-eb4948714c3e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e55ba23e-23e4-4389-96e8-eb4948714c3e.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-06 12:57:45', '2017-08-07 14:26:25', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1293', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/0221b26a-f533-425b-a216-a5288b224fe3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0221b26a-f533-425b-a216-a5288b224fe3.jpg', '122', '125', null, '1', 'admin', null, '2017-08-06 13:59:27', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1295', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/d5578c86-8ad2-458e-977b-9e5e285c86e7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d5578c86-8ad2-458e-977b-9e5e285c86e7.jpg', '122', '125', null, '1', 'admin', null, '2017-08-06 14:40:50', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1296', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/93805736-797f-46f7-8ba6-47b7d2e449f5.jpg_/uploadFile/product/201708/84d2af44-0eab-4316-853b-a000264bfb3b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/93805736-797f-46f7-8ba6-47b7d2e449f5.jpg', '122', '132', '', '1', 'admin', 'admin', '2017-08-06 14:53:10', '2017-08-15 17:44:05', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1297', '', '1', '1', '0', '1', '/uploadFile/product/201708/65638e7b-3e2f-4f8a-b5f4-4c6e3e182aa2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/65638e7b-3e2f-4f8a-b5f4-4c6e3e182aa2.jpg', '122', '127', '', '1', 'admin', 'admin', '2017-08-06 14:58:49', '2017-08-07 14:29:31', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1298', '', '1', '1', '0', '1', '/uploadFile/product/201708/b2a91d7c-b225-4f0b-af00-4193fe9f45db.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b2a91d7c-b225-4f0b-af00-4193fe9f45db.jpg', '122', '138', null, '1', 'admin', null, '2017-08-06 15:00:19', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1301', '', '1', '1', '0', '1', '/uploadFile/product/201708/22554b5b-d780-44ff-9085-e2c8607d5ffd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/22554b5b-d780-44ff-9085-e2c8607d5ffd.jpg', '122', '127', null, '1', 'admin', null, '2017-08-06 15:18:52', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1305', '', '1', '1', '0', '1', '/uploadFile/product/201708/4a65ed50-7b91-41a6-8698-f2d7507e9ccb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4a65ed50-7b91-41a6-8698-f2d7507e9ccb.jpg', '122', '136', null, '1', 'admin', null, '2017-08-06 16:14:23', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1306', '', '1', '1', '0', '1', '/uploadFile/product/201708/49aed09b-de1a-46f8-bc2e-24accd894be6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/49aed09b-de1a-46f8-bc2e-24accd894be6.jpg', '122', '136', null, '1', 'admin', null, '2017-08-06 16:18:19', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1307', '', '1', '1', '0', '1', '/uploadFile/product/201708/1af9fabf-9780-4b3f-9597-69a0addf0576.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1af9fabf-9780-4b3f-9597-69a0addf0576.jpg', '122', '134', null, '1', 'admin', null, '2017-08-06 16:19:24', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1308', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/25e62d39-ab70-420a-9bc1-537a985c7fba.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/25e62d39-ab70-420a-9bc1-537a985c7fba.jpg', '122', '125', '', '1', 'admin', null, '2017-08-07 09:39:14', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1309', '', '1', '1', '0', '1', '/uploadFile/product/201708/311eebcd-c38f-4edc-8216-c2ba57b03665.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/311eebcd-c38f-4edc-8216-c2ba57b03665.jpg', '122', '125', null, '1', 'admin', null, '2017-08-07 09:45:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1310', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/be43f749-af59-484c-8427-22effc2a74a2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/be43f749-af59-484c-8427-22effc2a74a2.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 09:47:01', '2017-08-07 15:10:41', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1311', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/7cbf5091-1d36-4bb5-96a6-2a895b60a7ee.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7cbf5091-1d36-4bb5-96a6-2a895b60a7ee.jpg', '122', '124', null, '1', 'admin', null, '2017-08-07 09:54:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1312', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/33a4c78a-eb4f-4795-9013-9bafe5e5e37f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/33a4c78a-eb4f-4795-9013-9bafe5e5e37f.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 10:05:21', '2017-08-10 16:02:46', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1313', 'С̩', null, '1', '0', '1', '/uploadFile/product/201708/15a42740-264a-4b5b-ba29-73a16ceb2a4c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/15a42740-264a-4b5b-ba29-73a16ceb2a4c.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 10:13:37', '2017-08-07 15:15:47', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1314', '', '1', '1', '0', '1', '/uploadFile/product/201708/fb5935de-c970-48b4-adc4-425f1ae25f32.png', 'http://47.94.205.255:8082//uploadFile/product/201708/fb5935de-c970-48b4-adc4-425f1ae25f32.png', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 10:16:33', '2017-08-07 15:16:56', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1316', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/62a5b5b1-7e84-4fbb-8179-aabeb65bcd2f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/62a5b5b1-7e84-4fbb-8179-aabeb65bcd2f.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 10:22:17', '2017-08-14 09:31:46', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1318', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/97ff88cc-de4f-4bb4-8dec-7a32634df1ca.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/97ff88cc-de4f-4bb4-8dec-7a32634df1ca.jpg', '122', '125', null, '1', 'admin', null, '2017-08-07 10:34:42', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1319', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/b7b851c0-88e8-44f4-8595-687f089153cb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b7b851c0-88e8-44f4-8595-687f089153cb.jpg', '122', '125', null, '1', 'admin', null, '2017-08-07 11:13:15', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1320', '', '1', '1', '0', '1', '/uploadFile/product/201708/46a2d442-6dc7-46cf-9884-a00768955800.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/46a2d442-6dc7-46cf-9884-a00768955800.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 11:14:31', '2017-08-07 15:29:38', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1321', '', '1', '1', '0', '1', '/uploadFile/product/201708/f6527de9-5b7d-4940-8b69-9e8d6f2800c7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f6527de9-5b7d-4940-8b69-9e8d6f2800c7.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 11:17:23', '2017-08-09 09:57:58', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1322', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/1b9eb847-ec9d-4db5-82c8-727ed60e0fa8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1b9eb847-ec9d-4db5-82c8-727ed60e0fa8.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 11:19:10', '2017-08-14 09:47:26', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1323', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/71827c00-0e04-43df-9f89-45dcdb0a63d8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/71827c00-0e04-43df-9f89-45dcdb0a63d8.jpg', '122', '127', '', '1', 'admin', 'admin', '2017-08-07 11:20:17', '2017-08-09 09:40:29', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1325', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/6ef5dd7c-aa0f-47d6-8a88-fe3f4cbf64e7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6ef5dd7c-aa0f-47d6-8a88-fe3f4cbf64e7.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 11:22:14', '2017-08-07 15:07:13', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1327', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/391792ab-6fda-41fa-b9ef-6f1af869545b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/391792ab-6fda-41fa-b9ef-6f1af869545b.jpg', '122', '132', '', '1', 'admin', 'admin', '2017-08-07 11:24:36', '2017-08-07 13:22:22', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1328', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/b15772fb-a562-4a27-ae17-6d48c8b45e79.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b15772fb-a562-4a27-ae17-6d48c8b45e79.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-07 11:26:05', '2017-08-07 13:22:36', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1329', '', '1', '1', '0', '1', '/uploadFile/product/201708/1f265982-cc6e-446d-8cb6-08626e947c27.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1f265982-cc6e-446d-8cb6-08626e947c27.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 11:30:13', '2017-08-07 13:25:35', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1331', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/32bcd7d7-05e6-465d-9c4a-b85f03416565.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/32bcd7d7-05e6-465d-9c4a-b85f03416565.jpg', '122', '138', null, '1', 'admin', null, '2017-08-07 11:32:47', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1332', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/0950b14e-b2f8-47e9-9224-3a87123e531b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0950b14e-b2f8-47e9-9224-3a87123e531b.jpg', '122', '133', null, '1', 'admin', null, '2017-08-07 11:34:04', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1333', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/89108c99-f8b6-44a3-8bb3-b0170de736cc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/89108c99-f8b6-44a3-8bb3-b0170de736cc.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 11:39:16', '2017-08-07 15:10:19', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1334', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/36121b43-c5a9-4709-98a6-d7d75042bcc2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/36121b43-c5a9-4709-98a6-d7d75042bcc2.jpg', '122', '137', '', '1', 'admin', 'admin', '2017-08-07 11:43:32', '2017-08-07 13:38:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1335', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/7bef417f-d646-44c8-a2ca-06075204389b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7bef417f-d646-44c8-a2ca-06075204389b.jpg', '122', '137', '', '1', 'admin', 'admin', '2017-08-07 11:45:03', '2017-08-07 13:41:23', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1336', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/3af1bb73-e8b0-4475-aef7-357d94b47ba4.png', 'http://47.94.205.255:8082//uploadFile/product/201708/3af1bb73-e8b0-4475-aef7-357d94b47ba4.png', '122', '137', '', '1', 'admin', 'admin', '2017-08-07 11:47:45', '2017-08-07 13:41:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1337', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/372bcfa3-a337-4291-9aff-10676aed1cb4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/372bcfa3-a337-4291-9aff-10676aed1cb4.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-07 11:50:12', '2017-08-07 13:44:08', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1338', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/96a951f7-22e9-41fe-82c9-0ef2c8a0d876.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/96a951f7-22e9-41fe-82c9-0ef2c8a0d876.jpg', '122', '137', '', '1', 'admin', 'admin', '2017-08-07 11:52:30', '2017-08-07 13:49:00', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1339', '', '1', '1', '0', '1', '/uploadFile/product/201708/9c8113f0-fee5-4798-ba28-f76ee375c816.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9c8113f0-fee5-4798-ba28-f76ee375c816.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-07 11:53:22', '2017-08-07 13:51:25', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1340', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/3b4dab11-25b0-42e1-a49e-e685afcf33b7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/3b4dab11-25b0-42e1-a49e-e685afcf33b7.jpg', '122', '138', null, '1', 'admin', null, '2017-08-07 11:57:38', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1341', '', '1', '1', '0', '1', '/uploadFile/product/201708/c91201a7-22b4-466c-bb76-567d98332319.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c91201a7-22b4-466c-bb76-567d98332319.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 12:10:26', '2017-08-07 13:52:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1342', '', '1', '1', '0', '1', '/uploadFile/product/201708/a54a13d8-5378-401f-899a-f4f1c0f70c82.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a54a13d8-5378-401f-899a-f4f1c0f70c82.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 12:11:25', '2017-08-07 13:55:58', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1343', '·', '1', '1', '0', '1', '/uploadFile/product/201708/d22688b8-a0bd-474b-a581-accb27a4a849.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d22688b8-a0bd-474b-a581-accb27a4a849.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 12:12:31', '2017-08-07 13:54:41', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1344', '', '1', '1', '0', '1', '/uploadFile/product/201708/6d1fe8fe-cbc7-4dfe-856d-d7a7e1c30f4d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6d1fe8fe-cbc7-4dfe-856d-d7a7e1c30f4d.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 12:13:32', '2017-08-07 13:52:31', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1345', '·', '1', '1', '0', '1', '/uploadFile/product/201708/5f9ec09f-344f-4fb3-8828-33a22b768b7c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5f9ec09f-344f-4fb3-8828-33a22b768b7c.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 12:14:58', '2017-08-07 13:54:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1346', '', '1', '1', '0', '1', '/uploadFile/product/201708/9e9bb80c-16a3-4e31-9f0b-0b402a8259de.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9e9bb80c-16a3-4e31-9f0b-0b402a8259de.jpg', '122', '138', null, '1', 'admin', null, '2017-08-07 12:16:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1347', '', '1', '1', '0', '1', '/uploadFile/product/201708/9e383f92-049d-46f3-bc33-7288626c08f9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9e383f92-049d-46f3-bc33-7288626c08f9.jpg', '122', '138', null, '1', 'admin', 'admin', '2017-08-07 12:17:19', '2017-08-07 13:55:12', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1348', '', '1', '1', '0', '1', '/uploadFile/product/201708/d217f62d-e4c0-4ba7-8b38-847d4df60422.jpeg', 'http://47.94.205.255:8082//uploadFile/product/201708/d217f62d-e4c0-4ba7-8b38-847d4df60422.jpeg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 12:18:44', '2017-08-07 13:52:21', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1349', '', '1', '1', '0', '1', '/uploadFile/product/201708/32dea51e-5dbc-4afb-8032-657e548f1aac.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/32dea51e-5dbc-4afb-8032-657e548f1aac.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 12:19:58', '2017-08-07 13:14:50', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1350', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/3028a5cb-fe34-4428-9c14-3b36ba31ddb3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/3028a5cb-fe34-4428-9c14-3b36ba31ddb3.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 12:23:18', '2017-08-07 13:34:59', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1351', '', '1', '1', '0', '1', '/uploadFile/product/201708/ac0dd19b-d49e-4758-955b-32c0b17859d9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ac0dd19b-d49e-4758-955b-32c0b17859d9.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 12:26:12', '2017-08-07 13:51:44', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1352', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/115d1d07-f033-49d3-aa19-c56460c5e42b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/115d1d07-f033-49d3-aa19-c56460c5e42b.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 12:27:02', '2017-08-07 13:56:08', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1353', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/9999d78a-8e90-4416-80fa-d1ef4f0a636b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9999d78a-8e90-4416-80fa-d1ef4f0a636b.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 12:27:59', '2017-08-07 13:21:04', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1354', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/2c90f428-b057-4efc-b7d7-abdcd688b86a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2c90f428-b057-4efc-b7d7-abdcd688b86a.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 13:12:59', '2017-08-07 13:34:18', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1355', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/0dcba019-2683-48b1-9dcc-d3d9324fcad8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0dcba019-2683-48b1-9dcc-d3d9324fcad8.jpg', '122', '138', null, '1', 'admin', null, '2017-08-07 13:17:12', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1356', '', '1', '1', '0', '1', '/uploadFile/product/201708/d76bc2d8-664b-4383-82ee-e30c9a955233.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d76bc2d8-664b-4383-82ee-e30c9a955233.jpg', '122', '138', null, '1', 'admin', null, '2017-08-07 13:18:32', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1357', '', '1', '1', '0', '1', '/uploadFile/product/201708/78174c94-b928-418a-91f5-f3be0af4aaa6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/78174c94-b928-418a-91f5-f3be0af4aaa6.jpg', '122', '138', null, '1', 'admin', null, '2017-08-07 13:19:55', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1358', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/4d15e1ea-5187-4b06-b013-a62f40a891e1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4d15e1ea-5187-4b06-b013-a62f40a891e1.jpg', '122', '138', null, '1', 'admin', null, '2017-08-07 13:22:49', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1359', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/17f9a725-a8af-4bcc-9225-6d11acf0e6b4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/17f9a725-a8af-4bcc-9225-6d11acf0e6b4.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 13:26:26', '2017-08-07 13:34:31', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1360', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/6f8252b4-6ee9-40b3-87d8-6a34010b44a3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6f8252b4-6ee9-40b3-87d8-6a34010b44a3.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 13:27:39', '2017-08-07 13:34:39', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1361', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/51f426b6-c9ec-4d7c-9477-4885023fb94a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/51f426b6-c9ec-4d7c-9477-4885023fb94a.jpg', '122', '138', null, '1', 'admin', 'admin', '2017-08-07 13:28:49', '2017-08-07 13:34:47', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1362', '', '1', '1', '0', '1', '/uploadFile/product/201708/6302d655-ed6b-41f8-b633-ad52b8aa4781.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6302d655-ed6b-41f8-b633-ad52b8aa4781.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 13:29:52', '2017-08-07 13:31:40', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1363', '', '1', '1', '0', '1', '/uploadFile/product/201708/a4649b72-0863-4073-9d48-dba7b2d432a9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a4649b72-0863-4073-9d48-dba7b2d432a9.jpg', '122', '125', '', '1', 'admin', null, '2017-08-07 13:39:47', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1364', '', '1', '1', '2', '1', '/uploadFile/product/201708/5cb55896-59e8-4a3a-b699-4ea020758d70.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5cb55896-59e8-4a3a-b699-4ea020758d70.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-07 14:18:05', '2017-08-07 14:53:53', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1365', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/e23281f2-c13a-4c64-b54a-ed8b40a8efbd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e23281f2-c13a-4c64-b54a-ed8b40a8efbd.jpg', '122', '132', '', '1', 'admin', 'admin', '2017-08-07 14:19:15', '2017-08-07 14:51:58', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1366', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/b8b0d140-5128-4512-8f72-78eabd76e323.jpg_/uploadFile/product/201708/90e46077-6511-41f4-abe7-f02d2ff982bf.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b8b0d140-5128-4512-8f72-78eabd76e323.jpg', '122', '132', '', '1', 'admin', 'admin', '2017-08-07 14:21:36', '2017-08-07 14:49:27', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1367', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/800498ed-8126-4765-8946-3b99f680fa7d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/800498ed-8126-4765-8946-3b99f680fa7d.jpg', '122', '132', '', '1', 'admin', 'admin', '2017-08-07 14:22:55', '2017-08-08 17:06:12', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1368', '', '1', '1', '0', '1', '/uploadFile/product/201708/bf82a56d-59c1-4f6e-9921-8f66e2c9b48f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/bf82a56d-59c1-4f6e-9921-8f66e2c9b48f.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-07 16:11:33', '2017-08-08 15:13:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1369', '', '1', '1', '0', '1', '/uploadFile/product/201708/697f789a-13bd-4516-bd1a-051e87b7e880.png', 'http://47.94.205.255:8082//uploadFile/product/201708/697f789a-13bd-4516-bd1a-051e87b7e880.png', '122', '125', null, '1', 'admin', null, '2017-08-07 19:39:41', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1370', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/a424265c-66e9-4c43-a4da-58a391457293.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a424265c-66e9-4c43-a4da-58a391457293.jpg', '122', '139', null, '1', 'admin', null, '2017-08-07 19:40:40', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1371', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/5b8b3e27-38d9-4f27-9bbf-835f5329ee7f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5b8b3e27-38d9-4f27-9bbf-835f5329ee7f.jpg', '122', '132', '', '1', 'admin', 'admin', '2017-08-07 19:41:45', '2017-08-08 15:17:39', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1375', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/d82e718f-99f6-4ec9-95f1-2fedcdfbe577.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d82e718f-99f6-4ec9-95f1-2fedcdfbe577.jpg', '122', '125', 'Ͷ', '1', 'admin', 'admin', '2017-08-07 19:46:24', '2017-08-08 16:41:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1376', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/6d040582-c355-4d33-9d3c-bafc3aae346f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6d040582-c355-4d33-9d3c-bafc3aae346f.jpg', '122', '127', null, '1', 'admin', null, '2017-08-07 19:47:19', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1378', '', '1', '1', '0', '1', '/uploadFile/product/201708/c8b4ea57-bb19-4530-8b4f-a7ec59eeb041.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c8b4ea57-bb19-4530-8b4f-a7ec59eeb041.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 19:49:27', '2017-08-08 16:45:15', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1379', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/947fc2f9-c09c-4f68-9f41-9103c197b956.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/947fc2f9-c09c-4f68-9f41-9103c197b956.jpg', '122', '136', null, '1', 'admin', null, '2017-08-07 19:50:39', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1380', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/7c2af76e-6a28-424f-9ec2-d5ec87af99d5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7c2af76e-6a28-424f-9ec2-d5ec87af99d5.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 19:51:37', '2017-08-08 16:46:47', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1381', '', '1', '1', '0', '1', '/uploadFile/product/201708/10a78c54-2711-45a7-bbdf-67e121b8b299.png', 'http://47.94.205.255:8082//uploadFile/product/201708/10a78c54-2711-45a7-bbdf-67e121b8b299.png', '122', '134', '', '1', 'admin', 'admin', '2017-08-07 20:06:46', '2017-08-08 16:47:51', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1382', '', '1', '1', '0', '1', '/uploadFile/product/201708/0daa6f79-cd56-4107-9dca-5b8a85a57a7e.png', 'http://47.94.205.255:8082//uploadFile/product/201708/0daa6f79-cd56-4107-9dca-5b8a85a57a7e.png', '122', '134', 'ͨ', '1', 'admin', 'admin', '2017-08-07 20:16:48', '2017-08-08 17:05:18', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1383', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/2b7c9723-3fee-4797-85cd-3f9643f1679f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2b7c9723-3fee-4797-85cd-3f9643f1679f.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-08-07 20:17:54', '2017-08-08 17:06:25', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1385', 'babytimeɡ', '1', '1', '0', '1', '/uploadFile/product/201708/4b483f0c-f31a-4a5e-a615-1769a5cf9ca4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4b483f0c-f31a-4a5e-a615-1769a5cf9ca4.jpg', '122', '139', null, '1', 'admin', null, '2017-08-07 20:21:52', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1386', 'babysingɡ', '1', '1', '0', '1', '/uploadFile/product/201708/5eb8b887-7f87-4276-a78d-80599a5a0ae7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5eb8b887-7f87-4276-a78d-80599a5a0ae7.jpg', '122', '139', '', '1', 'admin', 'admin', '2017-08-07 20:22:52', '2017-08-08 17:14:16', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1387', 'babysingɡ', '1', '1', '0', '1', '/uploadFile/product/201708/93319f1e-8e04-4648-8d67-5a4bb957bc10.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/93319f1e-8e04-4648-8d67-5a4bb957bc10.jpg', '122', '139', null, '1', 'admin', null, '2017-08-07 20:23:43', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1389', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/f4d21fec-672e-453f-ba94-e4ecdf603c63.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f4d21fec-672e-453f-ba94-e4ecdf603c63.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 20:28:17', '2017-08-08 17:16:51', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1390', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/7da935dc-3695-4bf3-b079-88052ca92896.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7da935dc-3695-4bf3-b079-88052ca92896.jpg', '122', '132', null, '1', 'admin', null, '2017-08-07 20:29:13', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1391', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/5dc92375-f3a3-44e5-baf3-3bdac0abba8b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5dc92375-f3a3-44e5-baf3-3bdac0abba8b.jpg', '122', '127', null, '1', 'admin', null, '2017-08-07 20:29:58', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1393', '', '1', '1', '0', '1', '/uploadFile/product/201708/6ceabbfd-a015-4b49-8a15-21e103130e7d.png', 'http://47.94.205.255:8082//uploadFile/product/201708/6ceabbfd-a015-4b49-8a15-21e103130e7d.png', '122', '138', null, '1', 'admin', null, '2017-08-07 20:35:12', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1396', '', '1', '1', '0', '1', '/uploadFile/product/201708/530ed0f8-9b99-4013-9fcb-7308ee156bc1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/530ed0f8-9b99-4013-9fcb-7308ee156bc1.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 20:57:31', '2017-08-08 15:04:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1397', '', '1', '1', '0', '1', '/uploadFile/product/201708/bf81c0f6-a869-4a72-8c79-c28ce7baf175.png', 'http://47.94.205.255:8082//uploadFile/product/201708/bf81c0f6-a869-4a72-8c79-c28ce7baf175.png', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 21:01:57', '2017-08-09 16:36:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1398', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/58bd7623-e127-405f-927c-d269b5023ddc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/58bd7623-e127-405f-927c-d269b5023ddc.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 21:02:50', '2017-08-08 14:54:59', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1401', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/bd74ef10-4087-4102-9af2-c329de5b4db6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/bd74ef10-4087-4102-9af2-c329de5b4db6.jpg', '122', '125', null, '1', 'admin', null, '2017-08-07 21:06:44', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1402', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/d54aef3d-6527-4051-bc7b-3876c45ed4b7.png', 'http://47.94.205.255:8082//uploadFile/product/201708/d54aef3d-6527-4051-bc7b-3876c45ed4b7.png', '122', '133', null, '1', 'admin', null, '2017-08-07 21:11:15', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1404', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/aa415cac-c93a-4cc3-869c-f59c38894b2b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/aa415cac-c93a-4cc3-869c-f59c38894b2b.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 21:13:20', '2017-08-08 14:45:43', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1405', '', '1', '1', '0', '1', '/uploadFile/product/201708/71d1b1c1-4ad4-45be-9613-15fb270a1d0e.png', 'http://47.94.205.255:8082//uploadFile/product/201708/71d1b1c1-4ad4-45be-9613-15fb270a1d0e.png', '122', '125', null, '1', 'admin', null, '2017-08-07 21:14:11', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1406', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/a71d5cc3-581e-4367-9022-6b2e7aab9b53.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a71d5cc3-581e-4367-9022-6b2e7aab9b53.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-07 21:18:36', '2017-08-10 16:07:16', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1407', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/ef1ebf6a-015b-4a53-b66e-e5b62b869682.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ef1ebf6a-015b-4a53-b66e-e5b62b869682.jpg', '122', '136', null, '1', 'admin', null, '2017-08-07 21:20:14', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1408', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/fd0a8a97-59df-42b7-bab6-b69dd0e4f086.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/fd0a8a97-59df-42b7-bab6-b69dd0e4f086.jpg', '122', '139', '', '1', 'admin', 'admin', '2017-08-07 21:21:12', '2017-08-08 17:17:13', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1409', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/549b3495-c896-48ca-813f-6a9535744271.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/549b3495-c896-48ca-813f-6a9535744271.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 21:22:21', '2017-08-10 16:28:14', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1410', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/e8ad6190-5c5b-4022-8453-a9ced527b315.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e8ad6190-5c5b-4022-8453-a9ced527b315.jpg', '122', '139', null, '1', 'admin', null, '2017-08-07 21:24:13', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1411', '', '1', '1', '0', '1', '/uploadFile/product/201708/16e850c0-bc2c-4e9e-9fc2-d1a2e30000ae.png', 'http://47.94.205.255:8082//uploadFile/product/201708/16e850c0-bc2c-4e9e-9fc2-d1a2e30000ae.png', '122', '139', null, '1', 'admin', null, '2017-08-07 21:28:06', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1412', '', '1', '1', '0', '1', '/uploadFile/product/201708/187e734e-36af-4247-9b16-f971a9271ed1.png', 'http://47.94.205.255:8082//uploadFile/product/201708/187e734e-36af-4247-9b16-f971a9271ed1.png', '122', '136', '', '1', 'admin', 'admin', '2017-08-07 21:29:45', '2017-08-09 17:54:14', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1413', 'EDTOY', '1', '1', '0', '1', '/uploadFile/product/201708/778f3ad9-5dd6-41d1-a87e-3da12c14e6c9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/778f3ad9-5dd6-41d1-a87e-3da12c14e6c9.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-08-07 21:37:39', '2017-08-08 14:23:59', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1414', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/354ffc90-e1d5-4195-afb9-4be9f04d1e7a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/354ffc90-e1d5-4195-afb9-4be9f04d1e7a.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 21:39:22', '2017-08-09 17:53:54', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1415', '', '1', '1', '0', '1', '/uploadFile/product/201708/3a524dbb-f6ab-4a48-8a1a-f49d923c1b52.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/3a524dbb-f6ab-4a48-8a1a-f49d923c1b52.jpg', '122', '125', null, '1', 'admin', null, '2017-08-07 21:41:39', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1416', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/b10a29ea-fdc9-4837-8bf6-bc407326a956.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b10a29ea-fdc9-4837-8bf6-bc407326a956.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 21:43:03', '2017-08-09 17:53:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1417', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/e58528d1-9bdd-46f2-928c-098230a995ce.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e58528d1-9bdd-46f2-928c-098230a995ce.jpg', '122', '125', null, '1', 'admin', null, '2017-08-07 21:46:52', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1418', '', '1', '1', '0', '1', '/uploadFile/product/201708/b1c30f7d-4204-416e-b04f-a3065f6259b9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b1c30f7d-4204-416e-b04f-a3065f6259b9.jpg', '122', '140', null, '1', 'admin', null, '2017-08-07 21:49:55', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1419', '', '1', '1', '0', '1', '/uploadFile/product/201708/b3c0b631-8399-4587-903f-2183191b7ca9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b3c0b631-8399-4587-903f-2183191b7ca9.jpg', '122', '125', 'һ', '1', 'admin', 'admin', '2017-08-07 21:51:26', '2017-08-09 17:49:08', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1420', '', '1', '1', '0', '1', '/uploadFile/product/201708/61189fbf-8082-4d44-85d3-54ab27555f75.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/61189fbf-8082-4d44-85d3-54ab27555f75.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 21:52:16', '2017-08-08 14:23:19', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1421', '', '1', '1', '0', '1', '/uploadFile/product/201708/46c611af-a240-4b86-937a-0cecf5681114.png', 'http://47.94.205.255:8082//uploadFile/product/201708/46c611af-a240-4b86-937a-0cecf5681114.png', '122', '125', '', '1', 'admin', 'admin', '2017-08-07 22:01:46', '2017-08-08 14:03:56', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1422', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/1a243d06-b55e-4bd5-b93d-c6f7dd796654.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1a243d06-b55e-4bd5-b93d-c6f7dd796654.jpg', '122', '125', '', '1', 'admin', null, '2017-08-08 09:35:11', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1423', '', '1', '1', '0', '1', '/uploadFile/product/201708/651c55e6-16b1-450d-ba5b-04ab782f54b6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/651c55e6-16b1-450d-ba5b-04ab782f54b6.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-08 09:36:44', '2017-08-08 09:37:12', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1424', '', '1', '1', '0', '1', '/uploadFile/product/201708/2d9e6edc-cff4-4adc-b562-3269eafa9d42.png', 'http://47.94.205.255:8082//uploadFile/product/201708/2d9e6edc-cff4-4adc-b562-3269eafa9d42.png', '122', '132', '', '1', 'admin', null, '2017-08-08 09:41:05', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1425', 'weplayҡ', '1', '1', '0', '1', '/uploadFile/product/201708/6a8a277b-55b9-4455-9840-6b3263e90a27.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6a8a277b-55b9-4455-9840-6b3263e90a27.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-08 09:44:13', '2017-08-08 14:08:35', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1426', '', '1', '1', '0', '1', '/uploadFile/product/201708/88d386ac-34ac-4795-ab56-634770e37000.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/88d386ac-34ac-4795-ab56-634770e37000.jpg', '122', '125', '', '1', 'admin', null, '2017-08-08 11:25:11', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1427', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/ab28c77b-a69b-4658-851c-28d2e94fa9f1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ab28c77b-a69b-4658-851c-28d2e94fa9f1.jpg', '122', '125', '', '1', 'admin', null, '2017-08-08 11:27:10', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1428', 'INTEX', '1', '1', '0', '1', '/uploadFile/product/201708/3f55e9b4-d036-4438-a7c5-61ce6999718e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/3f55e9b4-d036-4438-a7c5-61ce6999718e.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-08 22:37:28', '2017-08-08 22:37:45', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1429', '', '1', '1', '0', '1', '/uploadFile/product/201708/e021a759-0804-4992-8501-73ef9ff017f4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e021a759-0804-4992-8501-73ef9ff017f4.jpg', '122', '125', '', '0', 'admin', null, '2017-08-08 22:39:24', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1430', '', '1', '1', '0', '1', '/uploadFile/product/201708/3b9fa397-edfe-46de-8d57-7251fe0e2f9b.png', 'http://47.94.205.255:8082//uploadFile/product/201708/3b9fa397-edfe-46de-8d57-7251fe0e2f9b.png', '122', '125', null, '1', 'admin', null, '2017-08-08 22:47:28', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1432', '', '1', '1', '0', '1', '/uploadFile/product/201708/cd6f618d-1917-4dc1-953a-f37a1e17e3a0.png', 'http://47.94.205.255:8082//uploadFile/product/201708/cd6f618d-1917-4dc1-953a-f37a1e17e3a0.png', '122', '132', '', '1', 'admin', null, '2017-08-08 22:51:40', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1433', '299', '1', '1', '0', '1', '/uploadFile/product/201708/d9ab2cec-54a4-4758-be54-82172cc1bb32.png', 'http://47.94.205.255:8082//uploadFile/product/201708/d9ab2cec-54a4-4758-be54-82172cc1bb32.png', '122', '124', '', '1', 'admin', 'admin', '2017-08-09 11:37:21', '2017-08-09 11:40:23', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1434', '', '1', '1', '0', '1', '/uploadFile/product/201708/3740ad13-a99c-471f-bf7a-e69cf8c2f458.png', 'http://47.94.205.255:8082//uploadFile/product/201708/3740ad13-a99c-471f-bf7a-e69cf8c2f458.png', '122', '125', '', '1', 'admin', null, '2017-08-09 13:31:34', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1435', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/a0791861-efe7-4031-aeb9-75c3c61f7dec.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a0791861-efe7-4031-aeb9-75c3c61f7dec.jpg', '122', '125', null, '1', 'admin', null, '2017-08-10 09:12:03', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1436', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/c33893c2-671f-46d6-bc0a-0411b4ed7381.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c33893c2-671f-46d6-bc0a-0411b4ed7381.jpg', '122', '133', null, '1', 'admin', null, '2017-08-10 09:13:24', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1437', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/e4bf42ce-9e1a-4474-8da2-d97f740b232b.png', 'http://47.94.205.255:8082//uploadFile/product/201708/e4bf42ce-9e1a-4474-8da2-d97f740b232b.png', '122', '127', null, '1', 'admin', null, '2017-08-10 09:22:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1438', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/4624ffc9-9297-4232-9e37-b08042957bcc.png', 'http://47.94.205.255:8082//uploadFile/product/201708/4624ffc9-9297-4232-9e37-b08042957bcc.png', '122', '127', null, '1', 'admin', null, '2017-08-10 10:41:26', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1439', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/453bf96a-5380-4ce2-8d43-164f54277ec8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/453bf96a-5380-4ce2-8d43-164f54277ec8.jpg', '122', '141', null, '1', 'admin', null, '2017-08-10 12:13:24', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1441', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/5a1236d1-a59f-40ed-8463-ed4109a04060.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5a1236d1-a59f-40ed-8463-ed4109a04060.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-10 13:22:08', '2017-08-10 16:28:04', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1469', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/446f5d4b-15ea-4a14-8cdd-7e3138eed3fb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/446f5d4b-15ea-4a14-8cdd-7e3138eed3fb.jpg', '122', '141', null, '1', 'admin', null, '2017-08-10 14:12:40', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1476', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/fc61e8e9-2b11-46a8-8c4d-6690f3d6f51b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/fc61e8e9-2b11-46a8-8c4d-6690f3d6f51b.jpg', '122', '141', null, '1', 'admin', null, '2017-08-10 14:45:20', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1477', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/17dc031d-3229-45a6-b5e8-be4deea728c5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/17dc031d-3229-45a6-b5e8-be4deea728c5.jpg', '122', '136', '', '1', 'admin', null, '2017-08-11 09:31:51', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1478', '', '1', '1', '0', '1', '/uploadFile/product/201708/9e26657b-bd18-49c6-aa46-14c9239c2b3e.jpg/uploadFile/product/201708/5db8493f-89c5-4eeb-bbd2-a5fa942163b0.jpg_', 'http://47.94.205.255:8082//uploadFile/product/201708/9e26657b-bd18-49c6-aa46-14c9239c2b3e.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-08-11 10:23:44', '2017-08-11 10:26:27', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1479', '', '1', '1', '0', '1', '/uploadFile/product/201708/83134574-8dfd-408b-ba2f-4ef2bf6602a3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/83134574-8dfd-408b-ba2f-4ef2bf6602a3.jpg', '122', '124', '', '1', 'admin', null, '2017-08-11 10:28:23', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1480', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/2203d583-05ed-48d4-8446-e34145c59fae.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2203d583-05ed-48d4-8446-e34145c59fae.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-08-11 10:32:58', '2017-08-11 10:34:58', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1481', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/5dc58dd0-369a-48d6-becd-172418862761.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5dc58dd0-369a-48d6-becd-172418862761.jpg', '122', '136', '', '1', 'admin', null, '2017-08-11 11:22:35', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1482', '', '1', '1', '0', '1', '/uploadFile/product/201708/bf3b238f-9aa6-4d10-801f-0dcb3cd5ebb5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/bf3b238f-9aa6-4d10-801f-0dcb3cd5ebb5.jpg', '122', '124', '', '1', 'admin', null, '2017-08-11 12:06:16', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1483', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/0d582600-d7b6-4aba-bc98-3315399698f9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0d582600-d7b6-4aba-bc98-3315399698f9.jpg', '122', '124', '', '1', 'admin', null, '2017-08-11 12:11:35', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1484', '', '1', '1', '0', '1', '/uploadFile/product/201708/c5ea21a8-c62c-408e-9022-9d65f1bac0ee.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c5ea21a8-c62c-408e-9022-9d65f1bac0ee.jpg', '122', '124', '', '1', 'admin', null, '2017-08-11 13:04:36', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1485', '', '1', '1', '0', '1', '/uploadFile/product/201708/45d35f5b-3c06-4729-83dc-e064526b60b1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/45d35f5b-3c06-4729-83dc-e064526b60b1.jpg', '122', '124', '', '1', 'admin', null, '2017-08-11 13:26:22', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1486', '', '1', '1', '0', '1', '/uploadFile/product/201708/71be3659-d8aa-4c67-9bfc-0093c9fd6bfe.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/71be3659-d8aa-4c67-9bfc-0093c9fd6bfe.jpg', '122', '124', '', '1', 'admin', null, '2017-08-11 13:40:38', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1487', '', '1', '1', '0', '1', '/uploadFile/product/201708/889a20f8-a539-4f77-8a19-06ed834c3cc8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/889a20f8-a539-4f77-8a19-06ed834c3cc8.jpg', '122', '124', '', '1', 'admin', null, '2017-08-11 13:59:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1488', '', '1', '1', '0', '1', '/uploadFile/product/201708/714928d4-c450-4775-a9b9-10b5793c0219.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/714928d4-c450-4775-a9b9-10b5793c0219.jpg', '122', '124', '', '0', 'admin', null, '2017-08-11 17:09:38', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1489', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/5d75c481-0664-4c04-87ee-bec8ad6a1784.png', 'http://47.94.205.255:8082//uploadFile/product/201708/5d75c481-0664-4c04-87ee-bec8ad6a1784.png', '122', '125', '', '1', 'admin', 'admin', '2017-08-12 10:00:51', '2017-08-12 18:04:33', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1490', '', '1', '1', '0', '1', '/uploadFile/product/201708/03c2b3ae-4189-41fa-af1a-be1592a47454.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/03c2b3ae-4189-41fa-af1a-be1592a47454.jpg', '122', '125', null, '1', 'admin', null, '2017-08-12 10:02:39', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1491', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/9d996f27-4d32-466f-961a-17c3e2495e77.jpg_/uploadFile/product/201708/65cf3f0c-47a7-4811-a0f8-9f91ff0bee9a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9d996f27-4d32-466f-961a-17c3e2495e77.jpg', '122', '142', '', '1', 'admin', null, '2017-08-12 10:04:20', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1492', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/946557a3-3961-40a7-8778-4fb5fa21042a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/946557a3-3961-40a7-8778-4fb5fa21042a.jpg', '122', '137', '', '1', 'admin', null, '2017-08-12 10:22:31', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1493', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/a92e8944-a8ab-478f-8e93-e296c265d741.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a92e8944-a8ab-478f-8e93-e296c265d741.jpg', '122', '125', null, '1', 'admin', null, '2017-08-12 10:26:35', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1494', 'ľ', '1', '1', '0', '1', '/uploadFile/product/201708/b69f0c87-fc17-44d5-930c-a9379604c04f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b69f0c87-fc17-44d5-930c-a9379604c04f.jpg', '122', '127', null, '1', 'admin', null, '2017-08-12 10:27:28', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1497', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/e40c1a74-6a25-440b-b944-1b2c78db4cea.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e40c1a74-6a25-440b-b944-1b2c78db4cea.jpg', '122', '127', '', '1', 'admin', 'admin', '2017-08-12 10:30:13', '2017-08-14 09:48:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1500', '', '1', '1', '0', '1', '/uploadFile/product/201708/9cde7ef9-af72-4469-8759-af6558608fba.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9cde7ef9-af72-4469-8759-af6558608fba.jpg', '122', '138', null, '1', 'admin', null, '2017-08-12 10:36:40', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1504', '', '1', '1', '0', '1', '/uploadFile/product/201708/141429df-82c1-45c0-8f89-d116e310a228.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/141429df-82c1-45c0-8f89-d116e310a228.jpg', '122', '132', '', '1', 'admin', 'admin', '2017-08-12 10:40:14', '2017-08-15 18:05:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1506', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/028efecd-bd3d-4f87-a782-5e838f342b06.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/028efecd-bd3d-4f87-a782-5e838f342b06.jpg', '122', '132', '', '1', 'admin', 'admin', '2017-08-12 10:42:16', '2017-08-14 13:50:41', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1507', '', '1', '1', '0', '1', '/uploadFile/product/201708/ec42e4ac-8b88-472e-8940-3dac767b07d1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ec42e4ac-8b88-472e-8940-3dac767b07d1.jpg', '122', '132', null, '1', 'admin', null, '2017-08-12 10:43:10', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1509', '', '1', '1', '0', '1', '/uploadFile/product/201708/2b93b00d-0fbc-416d-a68c-a7664ef60739.png', 'http://47.94.205.255:8082//uploadFile/product/201708/2b93b00d-0fbc-416d-a68c-a7664ef60739.png', '122', '142', '', '1', 'admin', 'admin', '2017-08-12 10:45:11', '2017-08-15 17:48:12', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1512', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/4ae4ea52-54d3-449d-a33a-25d7fb579b61.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4ae4ea52-54d3-449d-a33a-25d7fb579b61.jpg', '122', '132', null, '1', 'admin', null, '2017-08-12 10:48:28', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1513', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/45ce8e7a-8539-45df-9ea7-4c2127acee68.jpg_/uploadFile/product/201708/4b97f5fd-7033-4fe1-9695-9cab6f864a5e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/45ce8e7a-8539-45df-9ea7-4c2127acee68.jpg', '122', '142', null, '1', 'admin', null, '2017-08-12 10:49:23', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1514', 'ΰ', '1', '1', '1', '1', '/uploadFile/product/201708/6754c146-d05a-4eed-bb62-30f04bdef956.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6754c146-d05a-4eed-bb62-30f04bdef956.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-12 10:50:37', '2017-08-18 13:12:30', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1515', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/75638ee9-3930-455d-87c5-cb2e71b74026.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/75638ee9-3930-455d-87c5-cb2e71b74026.jpg', '122', '143', null, '1', 'admin', null, '2017-08-12 10:51:43', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1519', '', '1', '1', '0', '1', '/uploadFile/product/201708/898c3ccc-aa56-47ab-9079-158b66cc0051.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/898c3ccc-aa56-47ab-9079-158b66cc0051.jpg', '122', '142', null, '1', 'admin', null, '2017-08-12 10:56:55', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1520', '', '1', '1', '0', '1', '/uploadFile/product/201708/63376d7b-60ce-4ca9-81a3-d07db7c4e5ee.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/63376d7b-60ce-4ca9-81a3-d07db7c4e5ee.jpg', '122', '142', null, '1', 'admin', null, '2017-08-12 10:58:04', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1523', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/b8b8c9ff-fc71-4175-abf0-dde6ea4e9f0c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b8b8c9ff-fc71-4175-abf0-dde6ea4e9f0c.jpg', '122', '136', null, '1', 'admin', null, '2017-08-12 12:28:05', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1526', '', '1', '1', '0', '1', '/uploadFile/product/201708/2f00f2b8-3426-4794-b680-d426e67f7d62.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2f00f2b8-3426-4794-b680-d426e67f7d62.jpg', '122', '127', null, '1', 'admin', null, '2017-08-12 12:45:59', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1527', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/ce744e3f-4937-4fbe-9522-31e43549c8c2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ce744e3f-4937-4fbe-9522-31e43549c8c2.jpg', '122', '141', '', '1', 'admin', 'admin', '2017-08-12 12:47:36', '2017-08-14 09:43:41', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1528', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/b1675722-7ac7-4c94-afd0-f3fd810e63c7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b1675722-7ac7-4c94-afd0-f3fd810e63c7.jpg', '122', '141', '', '1', 'admin', 'admin', '2017-08-12 12:48:59', '2017-08-14 09:36:28', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1530', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/c9494700-5638-4e6c-af9f-b1cb838b47c2.jpg_/uploadFile/product/201708/3e9bc121-cf5a-4301-ae0b-3433eca7efee.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c9494700-5638-4e6c-af9f-b1cb838b47c2.jpg', '122', '142', '', '1', 'admin', null, '2017-08-12 13:17:33', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1531', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/1649b357-73b8-40e5-8551-1d6cf420f642.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1649b357-73b8-40e5-8551-1d6cf420f642.jpg', '122', '141', '', '1', 'admin', 'admin', '2017-08-12 13:20:32', '2017-08-14 09:35:12', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1533', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/688a5ebb-dca8-4dee-8872-45ae7e54bc1f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/688a5ebb-dca8-4dee-8872-45ae7e54bc1f.jpg', '122', '141', '', '1', 'admin', 'admin', '2017-08-12 13:22:42', '2017-08-14 16:22:26', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1534', '', '1', '1', '0', '1', '/uploadFile/product/201708/fef03efe-3764-406e-b91f-91888daf168c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/fef03efe-3764-406e-b91f-91888daf168c.jpg', '122', '124', '', '0', 'admin', null, '2017-08-12 17:12:54', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1535', '', '1', '1', '0', '1', '/uploadFile/product/201708/fbc4f06d-4524-4635-978c-77bd33c2e71a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/fbc4f06d-4524-4635-978c-77bd33c2e71a.jpg', '122', '139', '', '0', 'admin', null, '2017-08-12 18:02:24', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1536', 'ľ', '1', '1', '0', '1', '/uploadFile/product/201708/4a665006-4d44-4f94-ba9d-d9c771237e07.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4a665006-4d44-4f94-ba9d-d9c771237e07.jpg', '122', '125', '', '1', 'admin', null, '2017-08-12 18:03:55', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1537', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/1d1d3cf5-03a8-4f3d-8348-abb3c147e2f4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1d1d3cf5-03a8-4f3d-8348-abb3c147e2f4.jpg', '122', '132', '', '1', 'admin', null, '2017-08-13 09:04:23', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1539', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/6436d9b4-ca4a-416f-bea2-5335e45b055f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6436d9b4-ca4a-416f-bea2-5335e45b055f.jpg', '122', '125', null, '1', 'admin', null, '2017-08-13 09:11:06', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1542', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/b0c5892b-3fea-4499-9eac-e189169c79db.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b0c5892b-3fea-4499-9eac-e189169c79db.jpg', '122', '125', null, '1', 'admin', null, '2017-08-13 10:54:45', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1544', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/d7075d34-e426-4667-8769-52f6c5f32978.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d7075d34-e426-4667-8769-52f6c5f32978.jpg', '122', '125', null, '1', 'admin', null, '2017-08-13 12:25:08', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1545', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/84656477-74e8-4933-803a-e388cc17208c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/84656477-74e8-4933-803a-e388cc17208c.jpg', '122', '125', null, '1', 'admin', null, '2017-08-13 18:48:11', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1546', '', '1', '1', '0', '1', '/uploadFile/product/201708/d1569c1f-51bc-4cd8-89dc-3dd7a8c2a1ed.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d1569c1f-51bc-4cd8-89dc-3dd7a8c2a1ed.jpg', '122', '127', '', '1', 'admin', null, '2017-08-14 09:28:17', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1547', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/96c7fd32-f983-4ac0-a733-5c47760c1587.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/96c7fd32-f983-4ac0-a733-5c47760c1587.jpg', '122', '137', 'ȫ', '1', 'admin', null, '2017-08-14 09:33:00', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1548', '', '1', '1', '0', '1', '/uploadFile/product/201708/3d618008-37ce-460d-b44d-619c6be9c334.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/3d618008-37ce-460d-b44d-619c6be9c334.jpg', '122', '125', '', '1', 'admin', null, '2017-08-14 09:33:58', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1549', '', '1', '1', '0', '1', '/uploadFile/product/201708/465e707b-659f-42b6-9b4f-70ffc1fe0e46.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/465e707b-659f-42b6-9b4f-70ffc1fe0e46.jpg', '122', '124', 'һ', '1', 'admin', 'admin', '2017-08-14 09:37:59', '2017-08-14 09:39:00', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1550', '', '1', '1', '0', '1', '/uploadFile/product/201708/4138fb8f-cfaf-4f11-a489-baaa061070ef.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4138fb8f-cfaf-4f11-a489-baaa061070ef.jpg', '122', '124', 'һ', '1', 'admin', null, '2017-08-14 09:38:53', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1552', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/2b868fcf-7bd9-4c3c-88dd-de9f03f2ad21.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2b868fcf-7bd9-4c3c-88dd-de9f03f2ad21.jpg', '122', '142', '', '0', 'admin', null, '2017-08-14 09:47:06', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1553', '', null, '1', '0', '1', '/uploadFile/product/201708/93b183b8-3547-404b-abc2-abd8786d1630.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/93b183b8-3547-404b-abc2-abd8786d1630.jpg', '122', '124', '', '1', 'admin', null, '2017-08-14 09:52:56', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1562', '', '1', '1', '0', '1', '/uploadFile/product/201708/1e4cb988-b6eb-4dbb-b7ac-dc09bee544fc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1e4cb988-b6eb-4dbb-b7ac-dc09bee544fc.jpg', '122', '124', '', '1', 'admin', null, '2017-08-14 11:09:08', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1563', '', '1', '1', '0', '1', '/uploadFile/product/201708/f122c61c-8279-4ac0-9cd4-49d79d371b27.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f122c61c-8279-4ac0-9cd4-49d79d371b27.jpg', '122', '125', '', '0', 'admin', null, '2017-08-14 11:09:41', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1564', '', '1', '1', '0', '1', '/uploadFile/product/201708/fb008903-8ec9-42ef-b85d-c0a49a9e4537.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/fb008903-8ec9-42ef-b85d-c0a49a9e4537.jpg', '122', '127', '', '1', 'admin', null, '2017-08-14 11:11:34', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1565', 'С̩', '', '1', '0', '1', '/uploadFile/product/201708/11c45bc0-7e1e-4d70-b6d3-7556acb2d5a5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/11c45bc0-7e1e-4d70-b6d3-7556acb2d5a5.jpg', '122', '124', '', '1', 'admin', null, '2017-08-14 12:02:49', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1567', '', '1', '1', '0', '1', '/uploadFile/product/201708/7f176fc1-416c-4bd0-81b1-70cbb27fe424.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7f176fc1-416c-4bd0-81b1-70cbb27fe424.jpg', '122', '125', '˫', '1', 'admin', 'admin', '2017-08-14 12:44:09', '2017-08-14 12:45:40', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1568', '', '1', '1', '0', '1', '/uploadFile/product/201708/ecb9db6f-d27b-4f33-a5d7-7cfbc197992a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ecb9db6f-d27b-4f33-a5d7-7cfbc197992a.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-14 12:45:26', '2017-08-14 12:47:36', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1569', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/9e1dc4ef-5337-4f36-b25c-f3b8cfee7946.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9e1dc4ef-5337-4f36-b25c-f3b8cfee7946.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-14 12:47:18', '2017-08-14 12:48:33', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1570', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/6dafc4a5-cb29-4d00-8e9e-5bc3cd569f52.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6dafc4a5-cb29-4d00-8e9e-5bc3cd569f52.jpg', '122', '139', '', '1', 'admin', 'admin', '2017-08-14 12:49:11', '2017-08-14 12:55:42', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1572', '', '1', '1', '0', '1', '/uploadFile/product/201708/887b0197-9c0c-471d-9176-e8089c3e221b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/887b0197-9c0c-471d-9176-e8089c3e221b.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-08-14 13:08:59', '2017-08-14 13:40:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1574', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/a969bc5a-193f-4d90-83f0-0073e963c9ad.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a969bc5a-193f-4d90-83f0-0073e963c9ad.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-14 13:42:03', '2017-08-14 13:43:28', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1576', '', null, '1', '0', '1', '/uploadFile/product/201708/392ab111-46be-47e0-99b7-b5fddccc21ed.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/392ab111-46be-47e0-99b7-b5fddccc21ed.jpg', '122', '124', null, '1', 'admin', null, '2017-08-14 15:07:45', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1577', '', null, '1', '0', '1', '/uploadFile/product/201708/b77be18b-17e8-4c39-82a9-4cad510dd048.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b77be18b-17e8-4c39-82a9-4cad510dd048.jpg', '122', '124', '', '1', 'tj001', 'admin', '2017-08-14 15:10:19', '2017-08-14 15:19:03', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1578', 'hape', '1', '1', '0', '1', '/uploadFile/product/201708/64b8e564-b6d0-46b6-b9e0-9e49df312649.png', 'http://47.94.205.255:8082//uploadFile/product/201708/64b8e564-b6d0-46b6-b9e0-9e49df312649.png', '122', '134', '', '1', 'admin', 'admin', '2017-08-14 15:27:41', '2017-08-14 15:39:32', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1579', 'hape', '1', '1', '0', '1', '/uploadFile/product/201708/d3c6eec3-7f20-4d04-b0d7-723b090a92bb.png', 'http://47.94.205.255:8082//uploadFile/product/201708/d3c6eec3-7f20-4d04-b0d7-723b090a92bb.png', '122', '134', '', '1', 'admin', 'admin', '2017-08-14 15:31:41', '2017-08-14 15:39:48', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1580', 'hape', '1', '1', '0', '1', '/uploadFile/product/201708/6c2b377f-b0db-4a91-951e-ddb6c2c4852b.png', 'http://47.94.205.255:8082//uploadFile/product/201708/6c2b377f-b0db-4a91-951e-ddb6c2c4852b.png', '122', '127', '', '1', 'admin', 'admin', '2017-08-14 15:36:00', '2017-08-14 15:46:01', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1582', '', '1', '1', '0', '1', '/uploadFile/product/201708/8ccef9ec-8293-4645-9cbb-b0a66d31c2f3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/8ccef9ec-8293-4645-9cbb-b0a66d31c2f3.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-14 16:07:10', '2017-08-14 16:09:55', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1584', 'weplay ', '1', '1', '0', '1', '/uploadFile/product/201708/543c1ccf-9c07-47e5-809b-01d8d10b6c16.png', 'http://47.94.205.255:8082//uploadFile/product/201708/543c1ccf-9c07-47e5-809b-01d8d10b6c16.png', '122', '124', null, '1', 'admin', null, '2017-08-14 16:31:03', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1585', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/79f5d4f0-88e8-42a6-b637-be0fda7900f0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/79f5d4f0-88e8-42a6-b637-be0fda7900f0.jpg', '122', '125', null, '1', 'admin', null, '2017-08-14 16:33:18', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1588', 'hapeľ', '1', '1', '0', '1', '/uploadFile/product/201708/897feebe-7004-4b01-9d8b-c45dee18df4a.png', 'http://47.94.205.255:8082//uploadFile/product/201708/897feebe-7004-4b01-9d8b-c45dee18df4a.png', '122', '133', 'ȱ', '0', 'admin', 'admin', '2017-08-14 17:03:43', '2017-08-14 17:10:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1590', '', '1', '1', '0', '1', '/uploadFile/product/201708/1d8da9aa-9117-449b-a733-200e576ddfd2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1d8da9aa-9117-449b-a733-200e576ddfd2.jpg', '122', '136', null, '1', 'admin', null, '2017-08-14 17:41:09', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1591', 'Hape', '1', '1', '2', '1', '/uploadFile/product/201708/c0bc5f10-48c4-422f-ae40-c77a1c73f158.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c0bc5f10-48c4-422f-ae40-c77a1c73f158.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-14 17:44:27', '2017-08-16 16:49:11', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1592', '', '1', '1', '0', '1', '/uploadFile/product/201708/fa0d424d-64d6-4896-b6cb-7299462d1de0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/fa0d424d-64d6-4896-b6cb-7299462d1de0.jpg', '122', '132', null, '1', 'admin', null, '2017-08-14 17:47:01', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1595', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/34602c81-e90c-40de-bafb-a506b2854bd6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/34602c81-e90c-40de-bafb-a506b2854bd6.jpg', '122', '125', '', '1', 'admin', null, '2017-08-14 17:52:59', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1596', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/9975ceb2-6809-469e-9d83-94aa1298f962.png', 'http://47.94.205.255:8082//uploadFile/product/201708/9975ceb2-6809-469e-9d83-94aa1298f962.png', '122', '125', '', '1', 'admin', 'admin', '2017-08-14 17:58:24', '2017-08-16 16:50:21', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1597', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/ce8943bd-2863-403e-9901-bd56cdb8a3c6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ce8943bd-2863-403e-9901-bd56cdb8a3c6.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-14 17:59:42', '2017-08-16 16:50:40', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1598', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/15761a56-996a-4ced-8015-f3215cbaf82e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/15761a56-996a-4ced-8015-f3215cbaf82e.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-14 18:00:55', '2017-08-16 16:52:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1599', 'btoys', '1', '1', '0', '1', '/uploadFile/product/201708/cb3762b6-82fe-4542-9fa5-2ee4de1fca25.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/cb3762b6-82fe-4542-9fa5-2ee4de1fca25.jpg', '122', '134', null, '1', 'admin', null, '2017-08-14 18:04:24', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1600', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/c4133f45-7d63-4197-abd4-2d833d7dfee6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c4133f45-7d63-4197-abd4-2d833d7dfee6.jpg', '122', '138', null, '1', 'admin', null, '2017-08-14 18:06:06', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1603', '', '1', '1', '0', '1', '/uploadFile/product/201708/d65cd9f2-f91e-4687-a0d4-a79553a1d53f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d65cd9f2-f91e-4687-a0d4-a79553a1d53f.jpg', '122', '125', null, '1', 'admin', null, '2017-08-14 18:25:38', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1604', '', '1', '1', '0', '1', '/uploadFile/product/201708/a9e99f88-ca7e-4663-af1b-1dbee663f114.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a9e99f88-ca7e-4663-af1b-1dbee663f114.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-14 18:35:35', '2017-08-16 17:02:58', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1606', 'step2ҡ', '1', '1', '2', '1', '/uploadFile/product/201708/bd7fb218-b8b0-4cb6-ba78-7ab61c4eaab1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/bd7fb218-b8b0-4cb6-ba78-7ab61c4eaab1.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-14 18:38:12', '2017-08-16 17:12:18', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1607', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/2f442a31-4e92-4ba6-b07c-5887f8470efa.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2f442a31-4e92-4ba6-b07c-5887f8470efa.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-14 18:51:01', '2017-08-15 09:37:05', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1608', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/1d97538d-4e3e-42db-89f6-3ed441773c37.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1d97538d-4e3e-42db-89f6-3ed441773c37.jpg', '122', '133', null, '1', 'admin', null, '2017-08-14 19:06:45', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1610', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/daaa04cb-06d8-465d-8135-5bb930c1ac8e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/daaa04cb-06d8-465d-8135-5bb930c1ac8e.jpg', '122', '132', null, '1', 'admin', null, '2017-08-15 09:43:33', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1611', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/9137e0aa-dcf9-4c35-8782-55c12bbfc193.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9137e0aa-dcf9-4c35-8782-55c12bbfc193.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-15 09:45:14', '2017-08-15 09:48:41', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1612', '', '1', '1', '0', '1', '/uploadFile/product/201708/408e69c9-ad65-42f2-9083-7cbf68639ad6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/408e69c9-ad65-42f2-9083-7cbf68639ad6.jpg', '122', '125', '', '1', 'admin', null, '2017-08-15 09:46:54', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1613', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/9b40553a-887c-4c39-af6b-43e77b6b0d02.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9b40553a-887c-4c39-af6b-43e77b6b0d02.jpg', '122', '125', '', '1', 'admin', null, '2017-08-15 10:19:50', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1614', '', '1', '1', '0', '1', '/uploadFile/product/201708/26da3501-dc91-4d78-8e72-2651623a6257.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/26da3501-dc91-4d78-8e72-2651623a6257.jpg', '122', '125', '', '1', 'admin', null, '2017-08-15 10:20:40', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1615', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/0e26ddab-d9a6-45ec-91bf-478e75c1e4d2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0e26ddab-d9a6-45ec-91bf-478e75c1e4d2.jpg', '122', '125', null, '1', 'admin', null, '2017-08-15 10:43:08', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1616', '', '1', '1', '0', '1', '/uploadFile/product/201708/4a2bb13f-918f-469a-a366-6fa4283a52d8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4a2bb13f-918f-469a-a366-6fa4283a52d8.jpg', '122', '125', '', '1', 'admin', null, '2017-08-15 10:47:25', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1617', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/f8c27b43-7660-4c6b-b101-77023dfb94b5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f8c27b43-7660-4c6b-b101-77023dfb94b5.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-15 10:55:13', '2017-08-16 17:19:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1618', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/a7c18e50-553e-47ac-8b32-750f3ec251ab.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a7c18e50-553e-47ac-8b32-750f3ec251ab.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-15 11:00:20', '2017-08-16 17:22:54', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1619', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/e87b526a-c6ec-41cc-a5ef-808363174d46.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e87b526a-c6ec-41cc-a5ef-808363174d46.jpg', '122', '125', null, '1', 'admin', null, '2017-08-15 11:01:35', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1620', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/77ec70c8-dc6f-4a92-a301-ce163a31a3fb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/77ec70c8-dc6f-4a92-a301-ce163a31a3fb.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-15 11:02:55', '2017-08-15 17:54:49', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1621', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/23791f7b-4384-493a-a215-9a4b00399444.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/23791f7b-4384-493a-a215-9a4b00399444.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-15 11:04:04', '2017-08-15 17:58:16', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1623', '', '1', '1', '0', '1', '/uploadFile/product/201708/fe743484-d8dd-4b3d-8f8c-9b4020966bf7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/fe743484-d8dd-4b3d-8f8c-9b4020966bf7.jpg', '122', '125', null, '1', 'admin', null, '2017-08-15 11:08:16', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1624', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/9bb76d6b-28ea-4fdb-9c8f-61a751c519e1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9bb76d6b-28ea-4fdb-9c8f-61a751c519e1.jpg', '122', '139', null, '1', 'admin', null, '2017-08-15 11:18:35', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1625', 'Ŧ', '1', '1', '0', '1', '/uploadFile/product/201708/a8a5799d-784b-4d3c-bb45-1059a53cc148.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a8a5799d-784b-4d3c-bb45-1059a53cc148.jpg', '122', '142', null, '1', 'admin', null, '2017-08-15 11:19:48', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1626', '', '1', '1', '0', '1', '/uploadFile/product/201708/863dbb9c-6a35-4d52-aac4-ac18806be506.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/863dbb9c-6a35-4d52-aac4-ac18806be506.jpg', '122', '139', null, '1', 'admin', null, '2017-08-15 11:22:29', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1627', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/9f46611e-80da-4f86-be44-77a59efa3fb7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9f46611e-80da-4f86-be44-77a59efa3fb7.jpg', '122', '139', '', '1', 'admin', 'admin', '2017-08-15 13:01:09', '2017-08-15 17:52:40', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1628', '', '1', '1', '0', '1', '/uploadFile/product/201708/11ae7462-22cb-461d-8225-e95aa4466f7f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/11ae7462-22cb-461d-8225-e95aa4466f7f.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-15 13:02:45', '2017-08-15 18:00:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1629', '', '1', '1', '0', '1', '/uploadFile/product/201708/f4431c73-cda7-4e76-9fdd-8f2c6c6615a4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f4431c73-cda7-4e76-9fdd-8f2c6c6615a4.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-15 13:07:10', '2017-08-15 18:02:22', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1630', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/712106fa-1bd4-4f97-b6c9-1130b7c983dc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/712106fa-1bd4-4f97-b6c9-1130b7c983dc.jpg', '122', '136', null, '1', 'admin', null, '2017-08-15 13:08:26', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1631', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/6b21b9e0-399b-4007-b983-7106ed86fc1e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6b21b9e0-399b-4007-b983-7106ed86fc1e.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-15 13:09:31', '2017-08-15 18:01:40', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1632', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/4687ac4a-90a4-4efe-8268-954de600af59.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4687ac4a-90a4-4efe-8268-954de600af59.jpg', '122', '139', null, '1', 'admin', null, '2017-08-15 13:12:33', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1634', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/056cbde0-65ec-454f-9560-e159e0958e44.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/056cbde0-65ec-454f-9560-e159e0958e44.jpg', '122', '124', '', '1', 'admin', null, '2017-08-15 13:49:57', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1636', '', '1', '1', '0', '1', '/uploadFile/product/201708/4fcb0d23-4528-44ed-8536-f45f2d6aa7e8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4fcb0d23-4528-44ed-8536-f45f2d6aa7e8.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-15 14:51:25', '2017-08-15 18:04:01', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1638', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/f2ddb5ea-df2f-4c66-93ba-c99152fafecf.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f2ddb5ea-df2f-4c66-93ba-c99152fafecf.jpg', '122', '124', '', '1', 'admin', null, '2017-08-15 14:55:11', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1653', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/54a84e22-6223-4662-9737-281e24539ea4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/54a84e22-6223-4662-9737-281e24539ea4.jpg', '122', '125', '', '1', 'admin', null, '2017-08-15 15:56:08', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1654', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/a0ff6018-1819-4b67-aa9b-cf4296964fa8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a0ff6018-1819-4b67-aa9b-cf4296964fa8.jpg', '122', '125', null, '1', 'admin', null, '2017-08-15 15:57:20', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1671', '', '1', '1', '0', '1', '/uploadFile/product/201708/99ed6c7c-a74e-4729-a2fc-d8e9a0033b28.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/99ed6c7c-a74e-4729-a2fc-d8e9a0033b28.jpg', '122', '127', '', '1', 'admin', null, '2017-08-15 18:11:37', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1676', 'btoys', '1', '1', '0', '1', '/uploadFile/product/201708/8d9cef63-6818-40f6-bd78-99350a5b37cf.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/8d9cef63-6818-40f6-bd78-99350a5b37cf.jpg', '122', '134', '', '1', 'admin', 'admin', '2017-08-16 09:05:04', '2017-08-16 09:12:15', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1677', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/99b9bda7-9d6e-44fe-a815-8c7783829ef5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/99b9bda7-9d6e-44fe-a815-8c7783829ef5.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-16 09:06:53', '2017-08-16 09:07:31', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1678', '', '1', '1', '0', '1', '/uploadFile/product/201708/bd85f9d0-e257-4075-be6d-8b0632a4c137.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/bd85f9d0-e257-4075-be6d-8b0632a4c137.jpg', '122', '125', '', '1', 'admin', null, '2017-08-16 09:09:11', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1679', '', '1', '1', '0', '1', '/uploadFile/product/201708/d5ef9902-ae75-4d0c-88bf-e3b7ca53a8bc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d5ef9902-ae75-4d0c-88bf-e3b7ca53a8bc.jpg', '122', '125', '', '1', 'admin', null, '2017-08-16 09:37:20', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1680', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/b512bea5-d60a-4b2f-b818-4756bf6949e9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b512bea5-d60a-4b2f-b818-4756bf6949e9.jpg', '122', '125', '', '0', 'admin', null, '2017-08-16 09:45:19', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1681', '', '1', '1', '0', '1', '/uploadFile/product/201708/8ab6cc89-b152-45d0-a5a8-1a0072317d43.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/8ab6cc89-b152-45d0-a5a8-1a0072317d43.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-08-16 09:46:00', '2017-08-17 11:20:07', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1682', '', '1', '1', '0', '1', '/uploadFile/product/201708/710d2587-41bd-49d5-9469-dbea1cc54d9e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/710d2587-41bd-49d5-9469-dbea1cc54d9e.jpg', '122', '132', '', '1', 'admin', null, '2017-08-16 09:49:47', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1683', '', '1', '1', '0', '1', '/uploadFile/product/201708/b51fd5bd-f543-4f2a-9d72-acbda4be3f76.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b51fd5bd-f543-4f2a-9d72-acbda4be3f76.jpg', '122', '132', '', '1', 'admin', null, '2017-08-16 10:12:07', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1685', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/58af0d7b-b9b1-4b23-8c5a-8b58c5242f68.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/58af0d7b-b9b1-4b23-8c5a-8b58c5242f68.jpg', '122', '139', null, '1', 'admin', null, '2017-08-16 10:39:59', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1686', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/b54b6304-4d95-40bc-8a1c-6569d63841ce.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b54b6304-4d95-40bc-8a1c-6569d63841ce.jpg', '122', '138', null, '1', 'admin', null, '2017-08-16 10:41:58', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1687', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/e2867588-40a9-4376-a2dc-ff310817fba0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e2867588-40a9-4376-a2dc-ff310817fba0.jpg', '122', '125', '', '1', 'admin', null, '2017-08-16 10:52:10', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1688', '', '1', '1', '0', '1', '/uploadFile/product/201708/f2aebdde-0de6-4230-8128-4351c52fdc40.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f2aebdde-0de6-4230-8128-4351c52fdc40.jpg', '122', '132', '', '1', 'admin', null, '2017-08-16 10:55:47', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1691', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/348572d9-d5e1-4bda-be9d-31746a788630.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/348572d9-d5e1-4bda-be9d-31746a788630.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-16 11:04:52', '2017-08-16 15:20:34', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1693', 'btoys', '1', '1', '0', '1', '/uploadFile/product/201708/c7ceac22-f434-4a76-ac5a-e66324defe45.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c7ceac22-f434-4a76-ac5a-e66324defe45.jpg', '122', '124', '', '1', 'admin', null, '2017-08-16 11:08:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1696', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/28125dad-232b-4f96-b1d0-fdcd86d6e6a4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/28125dad-232b-4f96-b1d0-fdcd86d6e6a4.jpg', '122', '141', '', '1', 'admin', 'admin', '2017-08-16 12:29:25', '2017-08-16 15:19:46', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1700', 'ͯ', '1', '1', '0', '1', '/uploadFile/product/201708/560d8282-29de-4764-a973-2aecd344d21a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/560d8282-29de-4764-a973-2aecd344d21a.jpg', '122', '125', null, '1', 'admin', null, '2017-08-16 12:45:34', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1701', 'step2', '1', '1', '0', '1', '/uploadFile/product/201708/1b0f57dd-9cfe-4e5b-9d6d-13527771e5be.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1b0f57dd-9cfe-4e5b-9d6d-13527771e5be.jpg', '122', '137', '', '1', 'admin', 'admin', '2017-08-16 12:50:39', '2017-08-17 09:00:16', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1702', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/ae23d43a-9a29-44df-ae25-480aff5e2eb5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ae23d43a-9a29-44df-ae25-480aff5e2eb5.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-16 12:51:48', '2017-08-16 15:15:14', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1704', '', '1', '1', '0', '1', '/uploadFile/product/201708/85ac3df8-aa85-4800-843a-5928307cb928.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/85ac3df8-aa85-4800-843a-5928307cb928.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-17 09:14:37', '2017-08-17 09:19:24', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1705', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/72cae36f-8508-411b-b17c-b17ad6212b24.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/72cae36f-8508-411b-b17c-b17ad6212b24.jpg', '122', '125', '', '1', 'admin', null, '2017-08-17 09:17:37', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1706', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/7fd299a3-dd06-4dfc-a968-f0a4bca210b3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7fd299a3-dd06-4dfc-a968-f0a4bca210b3.jpg', '122', '125', '', '1', 'admin', null, '2017-08-17 09:18:56', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1707', '', '1', '1', '0', '1', '/uploadFile/product/201708/7e7bfe92-5074-49b7-8c75-33636309acb2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7e7bfe92-5074-49b7-8c75-33636309acb2.jpg', '122', '125', '', '1', 'admin', null, '2017-08-17 09:31:00', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1708', '', '1', '1', '0', '1', '/uploadFile/product/201708/148599b8-175b-496d-b8ed-8137f40bcd37.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/148599b8-175b-496d-b8ed-8137f40bcd37.jpg', '122', '125', '', '1', 'admin', null, '2017-08-17 09:33:00', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1709', '', '1', '1', '0', '1', '/uploadFile/product/201708/2cae234e-be00-4e72-b450-f076720dd1b6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2cae234e-be00-4e72-b450-f076720dd1b6.jpg', '122', '125', '', '1', 'admin', null, '2017-08-17 10:19:08', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1710', '', '1', '1', '0', '1', '/uploadFile/product/201708/e784408f-c7b6-4657-98ca-7f6850a031b2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e784408f-c7b6-4657-98ca-7f6850a031b2.jpg', '122', '125', '', '1', 'admin', null, '2017-08-17 10:22:49', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1711', '', '1', '1', '0', '1', '/uploadFile/product/201708/ece13634-41fd-42ee-8193-dd736ea7d849.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ece13634-41fd-42ee-8193-dd736ea7d849.jpg', '122', '125', '', '1', 'admin', null, '2017-08-17 10:37:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1712', '', '1', '1', '0', '1', '/uploadFile/product/201708/2d5b6937-3c56-4237-9817-82e09a1b241a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2d5b6937-3c56-4237-9817-82e09a1b241a.jpg', '122', '125', '', '1', 'admin', null, '2017-08-17 10:44:30', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1713', '', '1', '1', '0', '1', '/uploadFile/product/201708/caeca04f-b9ca-4569-8dd4-8c22e1987857.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/caeca04f-b9ca-4569-8dd4-8c22e1987857.jpg', '122', '125', null, '1', 'admin', null, '2017-08-17 10:54:11', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1714', '', '1', '1', '0', '1', '/uploadFile/product/201708/8b541358-8514-4e6a-9c61-7534ce8aa4c5.jpg_/uploadFile/product/201708/5d1436b4-2de2-46e5-bff8-22fa50beec48.jpg_/uploadFile/product/201708/0ce3c139-8df2-4fc4-bb74-d6e76d953639.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/8b541358-8514-4e6a-9c61-7534ce8aa4c5.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-17 11:07:50', '2017-08-17 11:19:52', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1715', '', '1', '1', '0', '1', '/uploadFile/product/201708/a9ab6737-1c59-41c4-a634-f1b23c7172dc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a9ab6737-1c59-41c4-a634-f1b23c7172dc.jpg', '122', '125', '', '1', 'admin', null, '2017-08-17 11:11:55', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1716', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/f6f1929c-d22f-46b3-9245-37a5bd0fc711.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f6f1929c-d22f-46b3-9245-37a5bd0fc711.jpg', '122', '125', '', '1', 'admin', null, '2017-08-17 11:13:19', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1720', '', '1', '1', '2', '1', '/uploadFile/product/201708/57cd6df4-1eac-4688-aa3c-fa6533f7d337.png', 'http://47.94.205.255:8082//uploadFile/product/201708/57cd6df4-1eac-4688-aa3c-fa6533f7d337.png', '122', '125', '', '1', 'admin', 'admin', '2017-08-17 11:22:39', '2017-08-17 16:18:56', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1722', '', '1', '1', '0', '1', '/uploadFile/product/201708/b6d81378-91e1-4097-975d-e3152a29ef2a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b6d81378-91e1-4097-975d-e3152a29ef2a.jpg', '122', '138', null, '1', 'admin', null, '2017-08-17 11:26:09', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1725', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/a1ced3ed-cf0c-4210-a1a0-250d10b59340.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a1ced3ed-cf0c-4210-a1a0-250d10b59340.jpg', '122', '125', '', '1', 'admin', null, '2017-08-17 14:57:48', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1726', '', '1', '1', '0', '1', '/uploadFile/product/201708/ae1d5b63-8425-4fa9-b36d-39741986a234.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ae1d5b63-8425-4fa9-b36d-39741986a234.jpg', '122', '136', '', '1', 'admin', null, '2017-08-17 15:00:33', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1728', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/fea44174-d554-46fb-bc4a-3e750723990a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/fea44174-d554-46fb-bc4a-3e750723990a.jpg', '122', '141', '', '1', 'admin', 'admin', '2017-08-17 15:04:46', '2017-08-17 16:23:23', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1729', 'С̩', '1', '1', '2', '1', '/uploadFile/product/201708/934d8b38-94c7-4bff-9712-d56225c8a153.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/934d8b38-94c7-4bff-9712-d56225c8a153.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-17 15:05:38', '2017-08-17 16:23:49', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1730', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/2092153e-1f9a-4700-a595-1f893320d245.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2092153e-1f9a-4700-a595-1f893320d245.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-17 15:06:41', '2017-08-17 16:25:25', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1734', '', '1', '1', '0', '1', '/uploadFile/product/201708/7b6286eb-47de-4b15-943d-f6f04d6de905.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7b6286eb-47de-4b15-943d-f6f04d6de905.jpg', '122', '134', null, '1', 'admin', null, '2017-08-17 15:22:18', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1738', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/c840ac94-410f-428c-84b4-3f260db4a36b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c840ac94-410f-428c-84b4-3f260db4a36b.jpg', '122', '136', null, '1', 'admin', null, '2017-08-17 16:56:32', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1740', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/3b66918e-63bf-4ec1-833d-05a76558d103.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/3b66918e-63bf-4ec1-833d-05a76558d103.jpg', '122', '141', null, '1', 'admin', null, '2017-08-17 17:16:13', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1742', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/cf06f5e8-78e9-4933-a257-c3f66485e86f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/cf06f5e8-78e9-4933-a257-c3f66485e86f.jpg', '122', '125', null, '1', 'admin', null, '2017-08-17 17:24:40', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1743', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/2e37deee-8d3e-40e6-a8ce-ca8f79daddeb.png', 'http://47.94.205.255:8082//uploadFile/product/201708/2e37deee-8d3e-40e6-a8ce-ca8f79daddeb.png', '122', '125', '', '1', 'admin', 'admin', '2017-08-17 17:27:54', '2017-08-18 09:13:57', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1744', '', '1', '1', '0', '1', '/uploadFile/product/201708/bacb4522-273e-4fd9-b1e9-c0113d19dfa9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/bacb4522-273e-4fd9-b1e9-c0113d19dfa9.jpg', '122', '136', '', '1', 'admin', 'admin', '2017-08-17 17:29:06', '2017-08-18 09:12:44', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1745', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/c933f02a-8b22-4a6b-bedc-84edb5a6a2b5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c933f02a-8b22-4a6b-bedc-84edb5a6a2b5.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-17 17:30:28', '2017-08-18 13:53:59', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1746', '', '1', '1', '0', '1', '/uploadFile/product/201708/7281df2e-9951-4918-b882-d9e1d350a341.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7281df2e-9951-4918-b882-d9e1d350a341.jpg', '122', '125', '', '1', 'admin', null, '2017-08-18 09:19:56', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1747', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/bf71de1a-91cb-4af1-bc51-b514944e7fc1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/bf71de1a-91cb-4af1-bc51-b514944e7fc1.jpg', '122', '133', '', '1', 'admin', null, '2017-08-18 09:23:45', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1748', '', '1', '1', '0', '1', '/uploadFile/product/201708/e5c2e902-2376-45c7-99d1-0561611754d3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e5c2e902-2376-45c7-99d1-0561611754d3.jpg', '122', '142', '', '1', 'admin', null, '2017-08-18 09:36:00', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1751', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/36d96e13-936b-4e7d-957a-3ce036200f27.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/36d96e13-936b-4e7d-957a-3ce036200f27.jpg', '122', '133', '', '1', 'admin', 'admin', '2017-08-18 10:22:33', '2017-08-18 18:11:32', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1752', '', '1', '1', '0', '1', '/uploadFile/product/201708/0e35f063-3808-455c-8a51-11a720076da9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0e35f063-3808-455c-8a51-11a720076da9.jpg', '122', '142', '', '1', 'admin', null, '2017-08-18 10:24:54', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1753', '', '1', '1', '0', '1', '/uploadFile/product/201708/e8cb9c63-7947-430a-97ec-31a373d3f47d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e8cb9c63-7947-430a-97ec-31a373d3f47d.jpg', '122', '125', '', '1', 'admin', null, '2017-08-18 10:28:17', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1754', 'С', '1', '1', '0', '1', '/uploadFile/product/201708/09111627-54aa-4c82-8a33-cdd6c453ec79.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/09111627-54aa-4c82-8a33-cdd6c453ec79.jpg', '122', '136', null, '1', 'admin', 'admin', '2017-08-18 10:31:49', '2017-08-18 11:48:14', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1755', '', '1', '1', '0', '1', '/uploadFile/product/201708/2e0fa0df-f4d6-4bf5-857a-709bfd3be23a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2e0fa0df-f4d6-4bf5-857a-709bfd3be23a.jpg', '122', '142', '', '1', 'admin', null, '2017-08-18 11:26:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1757', 'Ȥζ', '1', '1', '0', '1', '/uploadFile/product/201708/57352b2e-1eaf-414b-b48c-245b2de3fd75.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/57352b2e-1eaf-414b-b48c-245b2de3fd75.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-08-18 12:04:52', '2017-08-18 12:05:27', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1758', '', '1', '1', '0', '1', '/uploadFile/product/201708/fc706638-0191-43b3-b11d-99be3eb2901b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/fc706638-0191-43b3-b11d-99be3eb2901b.jpg', '122', '142', '', '1', 'admin', null, '2017-08-18 13:19:28', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1760', 'ȥ', 'ȥ', '1', '0', '0', '/uploadFile/product/201708/ed20e38b-3da2-4145-a1d6-42c20f472517.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ed20e38b-3da2-4145-a1d6-42c20f472517.jpg', '122', '124', '', '1', 'admin', null, '2017-08-18 13:55:37', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1761', '', '0001', '1', '0', '1', '/uploadFile/product/201708/10248dbb-8b9f-4a4c-9f47-5de7a0c172aa.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/10248dbb-8b9f-4a4c-9f47-5de7a0c172aa.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 20:38:22', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1762', '', '0002', '1', '0', '1', '/uploadFile/product/201708/3c9b55f1-a2fe-47e4-958b-b429e7e04bd3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/3c9b55f1-a2fe-47e4-958b-b429e7e04bd3.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 20:41:34', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1763', 'HapeС', '0003', '1', '0', '1', '/uploadFile/product/201708/567c998c-c137-4fff-8715-33c960edae93.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/567c998c-c137-4fff-8715-33c960edae93.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 20:49:49', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1764', 'ľ', '0004', '1', '0', '1', '/uploadFile/product/201708/497e5eb1-5738-4427-9bf3-ec60ac027524.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/497e5eb1-5738-4427-9bf3-ec60ac027524.jpg', '122', '127', '', '0', 'admin', null, '2017-08-18 20:53:08', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1765', 'ΰ', '0005', '1', '0', '7', '/uploadFile/product/201708/849d854c-289c-473e-8f25-abed4bc0cc91.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/849d854c-289c-473e-8f25-abed4bc0cc91.jpg', '122', '127', '', '0', 'admin', null, '2017-08-18 20:56:38', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1766', 'ΰ', '0006', '1', '0', '2', '/uploadFile/product/201708/4b50e9e3-3ff5-4ad2-9219-ac65e07a248b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4b50e9e3-3ff5-4ad2-9219-ac65e07a248b.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-08-18 21:00:08', '2017-08-20 10:04:39', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1767', 'С̩', '0007', '1', '0', '2', '/uploadFile/product/201708/4e160ad6-199f-4e40-b262-24f36c88af96.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4e160ad6-199f-4e40-b262-24f36c88af96.jpg', '122', '133', '', '0', 'admin', 'admin', '2017-08-18 21:03:21', '2017-08-20 18:08:28', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1768', 'С̩', '0008', '1', '0', '3', '/uploadFile/product/201708/420b2799-34cc-4e04-be3f-af8a97218c71.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/420b2799-34cc-4e04-be3f-af8a97218c71.jpg', '122', '125', '', '0', 'admin', null, '2017-08-18 21:06:51', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1769', 'ͯ', '0009', '1', '0', '3', '/uploadFile/product/201708/f0b2cbb0-7fba-42de-bb03-18b4c8d3a46b.png', 'http://47.94.205.255:8082//uploadFile/product/201708/f0b2cbb0-7fba-42de-bb03-18b4c8d3a46b.png', '122', '125', '', '0', 'admin', null, '2017-08-18 21:11:39', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1770', '', '0010', '1', '0', '4', '/uploadFile/product/201708/0cd09436-e1d6-48d2-aa90-b0461810e192.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0cd09436-e1d6-48d2-aa90-b0461810e192.jpg', '122', '133', '', '0', 'admin', null, '2017-08-18 21:14:25', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1771', 'PUKU', '0011', '1', '0', '5', '/uploadFile/product/201708/61258851-d510-4a00-aa7a-4760f9ee1889.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/61258851-d510-4a00-aa7a-4760f9ee1889.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 21:18:13', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1772', '', '0012', '1', '0', '1', '/uploadFile/product/201708/5b93ace0-7ed6-4008-be90-a42cad0633d6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5b93ace0-7ed6-4008-be90-a42cad0633d6.jpg', '122', '133', '', '0', 'admin', null, '2017-08-18 21:21:15', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1773', '', '0013', '1', '0', '1', '/uploadFile/product/201708/bb69635a-3c9d-4615-ba8c-ec86a5441859.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/bb69635a-3c9d-4615-ba8c-ec86a5441859.jpg', '122', '138', '', '0', 'admin', null, '2017-08-18 21:25:05', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1774', 'С̩', '0014', '1', '0', '3', '/uploadFile/product/201708/03645c69-d1f9-4ec0-b024-80aa3e926ebd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/03645c69-d1f9-4ec0-b024-80aa3e926ebd.jpg', '122', '125', '', '0', 'admin', 'admin', '2017-08-18 21:28:29', '2017-08-19 02:57:46', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1775', '', '0015', '1', '0', '3', '/uploadFile/product/201708/997f3fed-a78f-4c05-b677-5029e8d201ea.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/997f3fed-a78f-4c05-b677-5029e8d201ea.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 21:30:58', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1776', 'С̩', '0016', '1', '0', '6', '/uploadFile/product/201708/e5b2c833-4464-4f8a-85a9-5903389d5027.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e5b2c833-4464-4f8a-85a9-5903389d5027.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 21:33:33', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1777', '', '0017', '1', '0', '8', '/uploadFile/product/201708/31e0ef5d-6173-4da5-9f64-923bb29d191f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/31e0ef5d-6173-4da5-9f64-923bb29d191f.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 21:35:49', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1778', '', '0018', '1', '0', '1', '/uploadFile/product/201708/1ddf19d6-0ba7-46c0-9532-fb25a41fc04a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1ddf19d6-0ba7-46c0-9532-fb25a41fc04a.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 21:39:17', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1779', '', '0019', '1', '0', '4', '/uploadFile/product/201708/57589005-adc2-4ef1-8293-3756671ffc89.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/57589005-adc2-4ef1-8293-3756671ffc89.jpg', '128', '132', '', '0', 'admin', null, '2017-08-18 21:42:55', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1780', 'ΰ', '0020', '1', '0', '5', '/uploadFile/product/201708/56680e8a-25d5-4a05-ba9f-dd458f1f9e39.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/56680e8a-25d5-4a05-ba9f-dd458f1f9e39.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 21:46:33', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1781', 'С̩', '0021', '1', '0', '2', '/uploadFile/product/201708/7513607b-a3aa-4717-b760-870944d8e5ad.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7513607b-a3aa-4717-b760-870944d8e5ad.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 21:51:16', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1782', 'С̩', '0022', '1', '0', '7', '/uploadFile/product/201708/fc65049a-f6bc-422c-a73b-3671b688dd55.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/fc65049a-f6bc-422c-a73b-3671b688dd55.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 21:55:37', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1783', 'С̩', '0023', '1', '0', '2', '/uploadFile/product/201708/df6fa6fd-e50b-458c-aa2f-12cf03c7e9a9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/df6fa6fd-e50b-458c-aa2f-12cf03c7e9a9.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 21:59:26', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1784', 'ΰ', '0024', '1', '0', '3', '/uploadFile/product/201708/b15b153d-1288-4690-b68e-c7a0359bfdff.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b15b153d-1288-4690-b68e-c7a0359bfdff.jpg', '122', '142', '', '1', 'admin', null, '2017-08-18 22:05:12', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1785', 'ΰ', '0025', '1', '0', '10', '/uploadFile/product/201708/2bdf9f96-3023-4588-825a-13377ae58d10.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2bdf9f96-3023-4588-825a-13377ae58d10.jpg', '122', '132', '', '0', 'admin', null, '2017-08-18 22:08:05', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1786', '', '0026', '1', '0', '3', '/uploadFile/product/201708/ecd8e958-74ba-4a33-8392-77988b0d20ed.png', 'http://47.94.205.255:8082//uploadFile/product/201708/ecd8e958-74ba-4a33-8392-77988b0d20ed.png', '122', '142', '', '0', 'admin', null, '2017-08-18 22:10:59', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1787', 'С̩', '0027', '1', '0', '6', '/uploadFile/product/201708/6a561991-fa0a-471d-8e08-177cb28572cc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6a561991-fa0a-471d-8e08-177cb28572cc.jpg', '122', '142', '', '0', 'admin', null, '2017-08-18 22:17:52', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1788', 'ΰ', '0024', '1', '0', '3', '/uploadFile/product/201708/2fa35cca-d9a9-4b23-82c7-ca29654e2a44.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2fa35cca-d9a9-4b23-82c7-ca29654e2a44.jpg', '122', '142', '', '0', 'admin', null, '2017-08-18 22:48:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1789', 'ΰ', '', '1', '0', '1', '/uploadFile/product/201708/ad605d8a-3f4b-4704-8320-3dfb5ff1b206.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ad605d8a-3f4b-4704-8320-3dfb5ff1b206.jpg', '122', '142', '', '0', 'admin', null, '2017-08-18 22:53:10', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1790', '', '0029', '1', '0', '3', '/uploadFile/product/201708/ce2e9e6e-968a-415f-b6a7-c240b21e556b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ce2e9e6e-968a-415f-b6a7-c240b21e556b.jpg', '122', '142', '', '0', 'admin', null, '2017-08-18 22:57:49', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1791', '', '0030', '1', '2', '0', '/uploadFile/product/201708/5a98e6f8-7866-4e52-a718-bb0e400e4707.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5a98e6f8-7866-4e52-a718-bb0e400e4707.jpg', '122', '142', '', '0', 'admin', null, '2017-08-18 23:06:06', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1792', '', '0031', '1', '2', '0', '/uploadFile/product/201708/04e978d0-862a-4e2e-b3b9-b8f194a714f2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/04e978d0-862a-4e2e-b3b9-b8f194a714f2.jpg', '122', '142', '', '0', 'admin', null, '2017-08-18 23:09:28', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1793', '', '0032', '1', '0', '1', '/uploadFile/product/201708/59e5b39a-073a-4500-913b-1ee8117c415d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/59e5b39a-073a-4500-913b-1ee8117c415d.jpg', '128', '142', '', '0', 'admin', null, '2017-08-18 23:11:39', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1794', 'С̩', '0033', '1', '0', '7', '/uploadFile/product/201708/3595f814-4921-4028-9db7-6bbd77ae11e6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/3595f814-4921-4028-9db7-6bbd77ae11e6.jpg', '122', '142', '', '0', 'admin', null, '2017-08-18 23:16:59', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1795', 'С̩', '0034', '1', '0', '1', '/uploadFile/product/201708/2c1e4a56-62f6-4878-9087-3aa3b8730ebc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2c1e4a56-62f6-4878-9087-3aa3b8730ebc.jpg', '122', '125', '', '0', 'admin', null, '2017-08-18 23:19:46', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1796', 'С̩', '0035', '1', '0', '3', '/uploadFile/product/201708/0051f0b9-2fa3-4ad6-b982-9dd901e6b516.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0051f0b9-2fa3-4ad6-b982-9dd901e6b516.jpg', '122', '142', '', '0', 'admin', null, '2017-08-18 23:22:15', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1797', 'ΰ', '0036', '1', '2', '0', '/uploadFile/product/201708/7f2fb651-8ed4-443d-a1dd-8e34caa32aaa.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7f2fb651-8ed4-443d-a1dd-8e34caa32aaa.jpg', '122', '142', '', '0', 'admin', null, '2017-08-18 23:26:37', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1798', 'С̩', '0037', '1', '0', '5', '/uploadFile/product/201708/f676f6ae-6be2-491a-9078-d82c9b1b0162.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f676f6ae-6be2-491a-9078-d82c9b1b0162.jpg', '122', '127', '', '0', 'admin', null, '2017-08-18 23:30:00', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1799', 'ͯ', '0038', '1', '0', '3', '/uploadFile/product/201708/97a42d8d-e61e-4bf4-b66e-24b0f31e96eb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/97a42d8d-e61e-4bf4-b66e-24b0f31e96eb.jpg', '122', '142', '', '0', 'admin', null, '2017-08-18 23:32:58', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1800', 'ͯ', '0039', '1', '0', '1', '/uploadFile/product/201708/599c8e14-34e3-41fe-b4b7-975ab760ff02.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/599c8e14-34e3-41fe-b4b7-975ab760ff02.jpg', '122', '142', '', '1', 'admin', null, '2017-08-18 23:36:19', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1801', 'ͯ', '0040', '1', '0', '1', '/uploadFile/product/201708/a5930043-77b1-487f-baea-2ffb2c1e46c5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a5930043-77b1-487f-baea-2ffb2c1e46c5.jpg', '122', '142', '', '0', 'admin', null, '2017-08-18 23:38:53', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1802', '', '0041', '1', '0', '4', '/uploadFile/product/201708/f68bbbb3-d053-4b6b-aa79-91cf359ce4ea.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f68bbbb3-d053-4b6b-aa79-91cf359ce4ea.jpg', '122', '134', '', '0', 'admin', null, '2017-08-18 23:41:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1803', '', '0042', '1', '0', '3', '/uploadFile/product/201708/2db8cf25-1f61-4906-b5e1-b4e46a57c554.png', 'http://47.94.205.255:8082//uploadFile/product/201708/2db8cf25-1f61-4906-b5e1-b4e46a57c554.png', '122', '134', '', '0', 'admin', null, '2017-08-18 23:46:19', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1804', '', '0043', '1', '0', '15', '/uploadFile/product/201708/2481dbdb-8b82-47b6-bdec-a64d5589e453.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2481dbdb-8b82-47b6-bdec-a64d5589e453.jpg', '128', '127', '', '0', 'admin', null, '2017-08-19 00:06:00', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1805', '', '0044', '1', '0', '3', '/uploadFile/product/201708/11323940-6dc4-4ab9-8894-cef083619025.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/11323940-6dc4-4ab9-8894-cef083619025.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 00:08:31', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1806', 'Ӣ', '0045', '1', '0', '2', '/uploadFile/product/201708/e2c15931-fd39-4cc5-8b29-49f5268979a1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e2c15931-fd39-4cc5-8b29-49f5268979a1.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 00:10:34', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1807', 'ΰ', '0046', '1', '2', '0', '/uploadFile/product/201708/de84ce94-35e4-41fe-890a-9f1a0b981cca.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/de84ce94-35e4-41fe-890a-9f1a0b981cca.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 00:13:32', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1808', '', '0047', '1', '0', '5', '/uploadFile/product/201708/a3813b6b-028b-4c98-a8ad-93423c4c90b7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a3813b6b-028b-4c98-a8ad-93423c4c90b7.jpg', '128', '127', '', '0', 'admin', null, '2017-08-19 00:15:50', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1809', '', '0048', '1', '0', '4', '/uploadFile/product/201708/c750dc51-5491-48da-a4bb-e1c254a83114.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c750dc51-5491-48da-a4bb-e1c254a83114.jpg', '128', '127', '', '0', 'admin', null, '2017-08-19 00:19:49', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1810', 'B-toys', '0049', '1', '2', '0', '/uploadFile/product/201708/3b181e48-5ff8-45e7-97fe-477e6097c52c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/3b181e48-5ff8-45e7-97fe-477e6097c52c.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 00:31:59', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1811', 'classic world', '0050', '1', '0', '1', '/uploadFile/product/201708/a3f74544-169f-40f4-bdcc-d4dbff9b11f1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a3f74544-169f-40f4-bdcc-d4dbff9b11f1.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 00:37:26', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1812', '', '0051', '1', '0', '1', '/uploadFile/product/201708/b8a93483-0f9d-4c01-9165-190ab29bf310.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b8a93483-0f9d-4c01-9165-190ab29bf310.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 00:41:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1813', 'ΰ', '0052', '1', '0', '1', '/uploadFile/product/201708/2d7dbce0-39cf-45a2-b104-3661191c24b4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2d7dbce0-39cf-45a2-b104-3661191c24b4.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-08-19 00:44:17', '2017-08-21 09:56:44', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1814', 'С̩', '0053', '1', '0', '1', '/uploadFile/product/201708/89ec678d-e985-44ae-a650-a70054442d39.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/89ec678d-e985-44ae-a650-a70054442d39.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 00:50:31', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1815', 'С̩', '0054', '1', '0', '1', '/uploadFile/product/201708/f6bc9755-d1a5-42ac-9430-36aab46cd30d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f6bc9755-d1a5-42ac-9430-36aab46cd30d.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 00:52:41', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1816', '', '0055', '1', '0', '2', '/uploadFile/product/201708/38986b61-ec35-40e2-bbb4-6ecd597ea313.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/38986b61-ec35-40e2-bbb4-6ecd597ea313.jpg', '128', '142', '', '0', 'admin', null, '2017-08-19 00:57:18', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1817', 'ΰ', '0056', '1', '2', '0', '/uploadFile/product/201708/2d29d448-dc84-4817-a750-bf509b3eba4d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2d29d448-dc84-4817-a750-bf509b3eba4d.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 01:01:09', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1818', '', '0057', '1', '2', '0', '/uploadFile/product/201708/5383f012-2c6f-4aa2-846c-9a072401f656.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5383f012-2c6f-4aa2-846c-9a072401f656.jpg', '122', '143', '', '0', 'admin', null, '2017-08-19 01:09:07', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1819', 'С̩', '0058', '1', '0', '3', '/uploadFile/product/201708/c72af5cb-a4b8-4277-ba0e-f863f8397ffa.png', 'http://47.94.205.255:8082//uploadFile/product/201708/c72af5cb-a4b8-4277-ba0e-f863f8397ffa.png', '122', '127', '', '0', 'admin', null, '2017-08-19 01:14:51', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1820', 'ΰ', '0059', '1', '0', '1', '/uploadFile/product/201708/9ddc50c6-af36-444b-bec3-06b41bb944a6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9ddc50c6-af36-444b-bec3-06b41bb944a6.jpg', '122', '141', '', '0', 'admin', null, '2017-08-19 01:30:42', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1821', 'ΰ', '0060', '1', '0', '3', '/uploadFile/product/201708/19459577-e9bf-4727-9236-9e483dda4641.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/19459577-e9bf-4727-9236-9e483dda4641.jpg', '122', '141', '', '0', 'admin', 'admin', '2017-08-19 01:32:52', '2017-08-21 10:10:02', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1822', 'ΰ', '0061', '1', '0', '5', '/uploadFile/product/201708/aad8e62f-05bb-4ff4-9846-7ebf421b3f72.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/aad8e62f-05bb-4ff4-9846-7ebf421b3f72.jpg', '122', '141', '', '0', 'admin', null, '2017-08-19 01:35:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1823', 'ΰ', '0062', '1', '0', '4', '/uploadFile/product/201708/904416a3-ec84-4d2e-b77a-5cb3056181bd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/904416a3-ec84-4d2e-b77a-5cb3056181bd.jpg', '122', '141', '', '0', 'admin', null, '2017-08-19 01:37:28', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1824', 'ΰ', '0063', '1', '0', '4', '/uploadFile/product/201708/747d2120-60b5-4a0f-b11c-028efb13147c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/747d2120-60b5-4a0f-b11c-028efb13147c.jpg', '122', '141', '', '0', 'admin', null, '2017-08-19 01:39:46', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1825', 'ΰ', '0064', '1', '0', '1', '/uploadFile/product/201708/34982b97-d7d6-4ea0-8200-0d7520e803e9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/34982b97-d7d6-4ea0-8200-0d7520e803e9.jpg', '122', '141', '', '0', 'admin', null, '2017-08-19 01:42:42', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1826', 'ΰ', '0065', '1', '0', '1', '/uploadFile/product/201708/5b7f5b17-afcd-436e-a384-98f317470da3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5b7f5b17-afcd-436e-a384-98f317470da3.jpg', '122', '141', '', '0', 'admin', null, '2017-08-19 01:44:40', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1827', 'ΰ', '0066', '1', '0', '6', '/uploadFile/product/201708/0aa9e47a-c3ef-4121-848c-f8c050535abb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0aa9e47a-c3ef-4121-848c-f8c050535abb.jpg', '122', '141', '', '0', 'admin', null, '2017-08-19 01:46:51', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1828', 'С̩', '0067', '1', '2', '0', '/uploadFile/product/201708/bb34ef88-33a8-4db6-b4a6-b92bb8d12ffc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/bb34ef88-33a8-4db6-b4a6-b92bb8d12ffc.jpg', '122', '142', '', '0', 'admin', null, '2017-08-19 01:49:17', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1829', '', '0068', '1', '0', '4', '/uploadFile/product/201708/1f8d09a0-f82a-46ae-8233-c50b22e0cb6a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1f8d09a0-f82a-46ae-8233-c50b22e0cb6a.jpg', '128', '127', '', '0', 'admin', 'admin', '2017-08-19 01:51:46', '2017-08-19 21:30:10', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1830', '', '0069', '1', '0', '2', '/uploadFile/product/201708/ee7580fd-e4ed-44ad-863e-a536091ebff0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ee7580fd-e4ed-44ad-863e-a536091ebff0.jpg', '122', '142', '', '0', 'admin', 'admin', '2017-08-19 01:53:55', '2017-08-19 02:58:44', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1831', 'ΰ', '0070', '1', '0', '2', '/uploadFile/product/201708/935bcdf1-8558-44c6-8539-20025d07a2f1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/935bcdf1-8558-44c6-8539-20025d07a2f1.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 01:59:07', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1832', 'С̩', '0071', '1', '0', '1', '/uploadFile/product/201708/a9baff39-a8b7-4a7e-b4df-73a2b3f7ca0c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a9baff39-a8b7-4a7e-b4df-73a2b3f7ca0c.jpg', '122', '125', '', '0', 'admin', 'admin', '2017-08-19 02:02:17', '2017-08-20 01:17:50', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1833', '', '0072', '1', '0', '1', '/uploadFile/product/201708/972469f4-cea9-4376-8774-4c83029e1417.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/972469f4-cea9-4376-8774-4c83029e1417.jpg', '122', '134', '', '0', 'admin', null, '2017-08-19 02:05:00', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1834', 'ΰ', '0073', '1', '0', '2', '/uploadFile/product/201708/b905b26b-4ff6-4b80-8f0a-e4399aada6fc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b905b26b-4ff6-4b80-8f0a-e4399aada6fc.jpg', '122', '134', '', '0', 'admin', null, '2017-08-19 02:07:01', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1835', 'С̩', '0074', '1', '0', '1', '/uploadFile/product/201708/ab030447-680e-4e73-b700-eea79f7e9ad1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ab030447-680e-4e73-b700-eea79f7e9ad1.jpg', '122', '134', '', '0', 'admin', null, '2017-08-19 02:09:03', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1836', '', '0075', '1', '0', '1', '/uploadFile/product/201708/42ea52c6-f16a-4e47-9785-f0ecbd3cca4f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/42ea52c6-f16a-4e47-9785-f0ecbd3cca4f.jpg', '122', '134', '', '0', 'admin', null, '2017-08-19 02:10:54', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1837', 'С̩', '0076', '1', '0', '2', '/uploadFile/product/201708/0c81eef1-0ac1-406b-8f76-a1d2b55b8264.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0c81eef1-0ac1-406b-8f76-a1d2b55b8264.jpg', '122', '134', '', '0', 'admin', null, '2017-08-19 02:13:15', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1838', 'ͯ', '0077', '1', '0', '2', '/uploadFile/product/201708/f717f221-5403-4e98-9a27-f3ee81f86ac6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f717f221-5403-4e98-9a27-f3ee81f86ac6.jpg', '122', '134', '', '0', 'admin', null, '2017-08-19 02:14:58', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1839', 'С̩', '0078', '1', '2', '0', '/uploadFile/product/201708/ba92d770-d0c3-43c0-a065-6ae48a66ad7d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ba92d770-d0c3-43c0-a065-6ae48a66ad7d.jpg', '122', '134', '', '0', 'admin', null, '2017-08-19 02:17:46', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1840', 'С̩', '0079', '1', '0', '3', '/uploadFile/product/201708/1594579a-a114-499f-ba47-448e62dd5422.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1594579a-a114-499f-ba47-448e62dd5422.jpg', '122', '134', '', '0', 'admin', null, '2017-08-19 02:19:49', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1841', 'Blue-box', '0080', '1', '0', '2', '/uploadFile/product/201708/d0f15f81-5050-44c7-a7c3-1f9f2b896565.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d0f15f81-5050-44c7-a7c3-1f9f2b896565.jpg', '122', '134', '', '0', 'admin', 'admin', '2017-08-19 02:22:13', '2017-08-19 02:47:36', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1842', 'B-toys', '0081', '1', '0', '1', '/uploadFile/product/201708/cd5b79ce-3006-4edb-b993-7b80892b9e37.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/cd5b79ce-3006-4edb-b993-7b80892b9e37.jpg', '122', '134', '', '0', 'admin', null, '2017-08-19 02:24:23', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1843', 'ΰ', '0082', '1', '0', '1', '/uploadFile/product/201708/94ad3794-5539-46e0-903d-8e0d86a4f74f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/94ad3794-5539-46e0-903d-8e0d86a4f74f.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 02:30:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1844', 'ΰ', '0083', '1', '0', '5', '/uploadFile/product/201708/c8f236d2-582e-4982-a27e-2516db3cc88e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c8f236d2-582e-4982-a27e-2516db3cc88e.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 02:33:07', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1845', 'С̩', '0084', '1', '0', '5', '/uploadFile/product/201708/900a2769-50cd-47e5-9073-4bb38c85d322.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/900a2769-50cd-47e5-9073-4bb38c85d322.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 02:37:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1846', 'С̩', '0085', '1', '0', '4', '/uploadFile/product/201708/498851a1-d353-46cb-be31-0e04a76a5665.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/498851a1-d353-46cb-be31-0e04a76a5665.jpg', '122', '143', '', '0', 'admin', null, '2017-08-19 02:40:59', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1847', 'С̩', '0086', '1', '0', '4', '/uploadFile/product/201708/b6835ca2-44c6-40d6-b175-b21dec70c773.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b6835ca2-44c6-40d6-b175-b21dec70c773.jpg', '122', '143', '', '0', 'admin', null, '2017-08-19 02:47:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1848', 'ΰ', '0087', '1', '0', '7', '/uploadFile/product/201708/9f707669-5d2d-4c38-acf7-47202f38dbcd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9f707669-5d2d-4c38-acf7-47202f38dbcd.jpg', '122', '143', '', '1', 'admin', null, '2017-08-19 02:49:58', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1849', 'ΰ', '0087', '1', '2', '0', '/uploadFile/product/201708/1e1849b8-ec7f-49ac-978d-0d702c2dd147.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1e1849b8-ec7f-49ac-978d-0d702c2dd147.jpg', '122', '143', '', '0', 'admin', 'admin', '2017-08-19 02:52:22', '2017-08-20 10:04:36', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1850', 'С̩', '088', '1', '0', '4', '/uploadFile/product/201708/767ad27c-8328-423d-a4ef-f490b616443a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/767ad27c-8328-423d-a4ef-f490b616443a.jpg', '122', '141', '', '0', 'admin', null, '2017-08-19 02:55:16', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1851', '', '0089', '1', '0', '1', '/uploadFile/product/201708/948a57e0-9870-4cd5-8135-4610c3a1b78c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/948a57e0-9870-4cd5-8135-4610c3a1b78c.jpg', '128', '143', '', '0', 'admin', null, '2017-08-19 03:00:52', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1852', 'ΰ', '0090', '1', '2', '5', '/uploadFile/product/201708/b8a94ea2-d1eb-4b09-93dd-c089eeb2103c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b8a94ea2-d1eb-4b09-93dd-c089eeb2103c.jpg', '122', '143', '', '0', 'admin', null, '2017-08-19 03:03:42', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1853', '', '0091', '2', '0', '1', '/uploadFile/product/201708/1b47e70f-cb67-402c-8585-d2815ea36e65.gif', 'http://47.94.205.255:8082//uploadFile/product/201708/fbc4f06d-4524-4635-978c-77bd33c2e71a.jpg', '122', '136', '', '0', 'admin', null, '2017-08-19 03:07:22', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1854', '在经历大规模重组之后，中国最大的航运公司—中国海', '0092', '2', '0', '4', '/uploadFile/product/201708/33b524c9-c554-4492-8795-cc591b944d58.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b6f7d228-bce7-4884-acbf-56ed5c4ae1d5.jpg', '122', '143', '', '0', 'admin', null, '2017-08-19 03:09:32', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1855', 'ҡҡ', '0093', '2', '0', '1', '/uploadFile/product/201708/54be3129-c5de-45ae-85f7-54ca27278e4c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9d996f27-4d32-466f-961a-17c3e2495e77.jpg', '122', '143', '', '0', 'admin', null, '2017-08-19 03:11:27', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1856', ' 在经历大规模重组之后，中国最大的航运公司—中国海', '0094', '2', '0', '2', '/uploadFile/product/201708/b807fbec-fba2-4e29-a88c-0fba27ac9179.png', 'http://47.94.205.255:8082//uploadFile/product/201708/2d5c963d-85aa-44c4-8425-a92e006386ce.png', '128', '143', '', '0', 'admin', null, '2017-08-19 03:13:19', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1857', '在经历大规模重组之后，中国最大的航运公司—中国海在经历大规模重组之后，中国最大的航运公司—中国海', '0095', '2', '0', '5', '/uploadFile/product/201708/f0057467-f70b-42e8-9d10-f54a3a97050c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/fc706638-0191-43b3-b11d-99be3eb2901b.jpg', '122', '137', '', '0', 'admin', null, '2017-08-19 03:16:43', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1858', 'ΰ', '0096', '3', '0', '45', '/uploadFile/product/201708/b2a0cf30-fe1d-40c5-8df3-52890c9064e8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e5c2e902-2376-45c7-99d1-0561611754d3.jpg', '122', '143', '', '0', 'admin', null, '2017-08-19 03:18:54', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1859', 'С̩', '0097', '3', '0', '4', '/uploadFile/product/201708/0b1eb6d3-c9cf-4d1e-97b6-a0dbd90d5e49.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/0571f7da-2b12-4fce-af26-13f7d47a9a15.jpg', '122', '137', '', '0', 'admin', null, '2017-08-19 03:22:18', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1860', 'step2', '0098', '3', '0', '4', '/uploadFile/product/201708/9d996f27-4d32-466f-961a-17c3e2495e77.jpg_/uploadFile/product/201708/b8a94ea2-d1eb-4b09-93dd-c089eeb2103c.jpg_/uploadFile/product/201708/2d5c963d-85aa-44c4-8425-a92e006386ce.png', 'http://47.94.205.255:8082//uploadFile/product/201708/0571f7da-2b12-4fce-af26-13f7d47a9a15.jpg', '122', '137', '', '0', 'admin', null, '2017-08-19 03:25:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1861', '', '0099', '1', '1', '3', '/uploadFile/product/201708/5283d798-0bba-4630-95f9-dfb7a22e2325.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5283d798-0bba-4630-95f9-dfb7a22e2325.jpg', '122', '137', '', '0', 'admin', 'admin', '2017-08-19 03:28:08', '2017-08-21 09:51:38', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1862', 'ͯ', '0100', '1', '2', '0', '/uploadFile/product/201708/540a1ac9-b0e9-4ba8-92a5-7569038608bc.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/540a1ac9-b0e9-4ba8-92a5-7569038608bc.jpg', '122', '137', '', '0', 'admin', null, '2017-08-19 03:30:56', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1863', 'С̩', '0101', '1', '0', '3', '/uploadFile/product/201708/2a0a4fda-de13-4781-8cd4-3b8070098f0f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2a0a4fda-de13-4781-8cd4-3b8070098f0f.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 03:34:05', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1864', 'С̩', '0102', '1', '2', '0', '/uploadFile/product/201708/552fb284-4d91-4070-87eb-435fc5e0fdf9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/552fb284-4d91-4070-87eb-435fc5e0fdf9.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 03:36:13', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1865', '', '0103', '1', '0', '1', '/uploadFile/product/201708/823885bd-bcec-41fd-a73d-43fe1a39acee.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/823885bd-bcec-41fd-a73d-43fe1a39acee.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 03:42:01', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1866', 'B-toys', '0104', '1', '0', '1', '/uploadFile/product/201708/c74f81af-f99a-4005-84a6-7f4b845c9ec7.gif', 'http://47.94.205.255:8082//uploadFile/product/201708/c74f81af-f99a-4005-84a6-7f4b845c9ec7.gif', '122', '127', '', '0', 'admin', null, '2017-08-19 03:46:35', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1867', 'B-toys¶¶', '0105', '1', '0', '1', '/uploadFile/product/201708/ee301983-e5de-4842-8839-d33890a441de.png', 'http://47.94.205.255:8082//uploadFile/product/201708/ee301983-e5de-4842-8839-d33890a441de.png', '122', '127', '', '0', 'admin', null, '2017-08-19 03:49:28', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1868', 'B-toys', '0106', '1', '0', '1', '/uploadFile/product/201708/679040c5-6afa-404a-b073-c0fa0a62de04.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/679040c5-6afa-404a-b073-c0fa0a62de04.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 03:51:49', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1869', '', '0107', '1', '2', '0', '/uploadFile/product/201708/a6f2f15a-8f2f-4f2f-935f-6b95618e7eb0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a6f2f15a-8f2f-4f2f-935f-6b95618e7eb0.jpg', '122', '138', '', '0', 'admin', null, '2017-08-19 03:55:59', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1870', '', '0108', '1', '2', '0', '/uploadFile/product/201708/3a113a19-7eb8-4daf-833b-347349f61bc2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/3a113a19-7eb8-4daf-833b-347349f61bc2.jpg', '122', '138', '', '0', 'admin', null, '2017-08-19 03:59:06', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1871', 'С', '0109', '1', '2', '0', '/uploadFile/product/201708/07a73e04-d36e-459d-b88e-8ee9ba727c43.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/07a73e04-d36e-459d-b88e-8ee9ba727c43.jpg', '122', '138', '', '0', 'admin', null, '2017-08-19 04:01:36', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1872', 'С', '0110', '1', '0', '2', '/uploadFile/product/201708/af4078a9-7a33-4958-b89b-232682e3456b.jpg/uploadFile/product/201708/ac7806ff-6249-44fa-9ef5-3a3f820141be.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/af4078a9-7a33-4958-b89b-232682e3456b.jpg/uploadFile/product/201708/ac7806ff-6249-44fa-9ef5-3a3f820141be.jpg', '122', '138', '', '1', 'admin', 'admin', '2017-08-19 04:03:33', '2017-08-19 04:04:55', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1873', 'ӥ', '0110', '1', '2', '0', '/uploadFile/product/201708/480ad4b8-2660-4411-92b0-e8add65cb41c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/480ad4b8-2660-4411-92b0-e8add65cb41c.jpg', '122', '138', '', '0', 'admin', null, '2017-08-19 04:07:17', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1874', '', '0111', '1', '2', '0', '/uploadFile/product/201708/2ac438ab-63d8-43a5-b6e0-90834b1318b4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2ac438ab-63d8-43a5-b6e0-90834b1318b4.jpg', '122', '138', '', '0', 'admin', 'admin', '2017-08-19 04:09:20', '2017-08-19 13:29:20', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1875', 'С̩', '0112', '1', '1', '2', '/uploadFile/product/201708/a437b675-cbe1-4f34-81ad-d4303ec7e0f4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a437b675-cbe1-4f34-81ad-d4303ec7e0f4.jpg', '122', '139', '', '0', 'admin', 'admin', '2017-08-19 04:12:56', '2017-08-21 09:51:50', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1876', 'С', '0113', '1', '0', '2', '/uploadFile/product/201708/f895d42a-5307-4493-9e82-6dd095ba079e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f895d42a-5307-4493-9e82-6dd095ba079e.jpg', '122', '139', '', '0', 'admin', null, '2017-08-19 04:15:19', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1877', '', '1', '1', '0', '5', '/uploadFile/product/201708/46defb89-7d02-47c5-a137-0108874deda5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/46defb89-7d02-47c5-a137-0108874deda5.jpg', '122', '136', '', '1', 'admin', null, '2017-08-19 09:31:10', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1878', 'ΰ', '1', '1', '0', '9', '/uploadFile/product/201708/4db74b73-9fe3-4491-bb30-d81c8a4edc0e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4db74b73-9fe3-4491-bb30-d81c8a4edc0e.jpg', '122', '125', '', '1', 'admin', null, '2017-08-19 09:34:40', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1879', 'ΰ', '1', '1', '0', '2', '/uploadFile/product/201708/efd3b62f-2ea8-4ce8-98b6-683381461fc9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/efd3b62f-2ea8-4ce8-98b6-683381461fc9.jpg', '122', '125', '', '1', 'admin', null, '2017-08-19 09:37:02', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1880', '', '1', '1', '0', '4', '/uploadFile/product/201708/d5469343-6271-4597-b6ee-021a389ef2ec.jpg_/uploadFile/product/201708/0c6c559f-9498-43e6-8cb5-141e4b53ef9d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d5469343-6271-4597-b6ee-021a389ef2ec.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 13:42:05', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1881', '', '1', '1', '0', '6', '/uploadFile/product/201708/4be8f4b1-7b08-4d33-8f0b-05e7d15e8ba9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4be8f4b1-7b08-4d33-8f0b-05e7d15e8ba9.jpg', '122', '141', '', '0', 'admin', 'admin', '2017-08-19 13:52:52', '2017-08-19 14:17:51', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1882', '', '1', '1', '0', '4', '/uploadFile/product/201708/08bb8542-72fc-4073-8ae2-24e35b20ed6b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/08bb8542-72fc-4073-8ae2-24e35b20ed6b.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 13:53:43', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1883', '', '0114', '1', '0', '1', '/uploadFile/product/201708/59783863-7067-432c-96b1-58f5a55c86d0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/59783863-7067-432c-96b1-58f5a55c86d0.jpg', '122', '136', '', '0', 'admin', null, '2017-08-19 14:21:25', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1884', 'С̩', '0115', '1', '2', '0', '/uploadFile/product/201708/adab6a90-1e40-4535-a5fc-df2c620f77aa.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/adab6a90-1e40-4535-a5fc-df2c620f77aa.jpg', '122', '136', '', '0', 'admin', null, '2017-08-19 14:27:09', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1885', ' ', '0116', '1', '0', '1', '/uploadFile/product/201708/f4c0263f-9c31-4ff9-ad4a-f481d1f82145.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f4c0263f-9c31-4ff9-ad4a-f481d1f82145.jpg', '122', '136', '', '0', 'admin', null, '2017-08-19 14:31:50', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1886', ' ', '0117', '1', '2', '0', '/uploadFile/product/201708/9f5d893e-6b4b-4910-bafc-771548d0e1a5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9f5d893e-6b4b-4910-bafc-771548d0e1a5.jpg', '122', '136', '', '0', 'admin', null, '2017-08-19 14:35:56', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1887', 'С̩', '0118', '1', '2', '0', '/uploadFile/product/201708/82438087-72e6-443c-bee8-931d29716c2d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/82438087-72e6-443c-bee8-931d29716c2d.jpg', '122', '136', '', '0', 'admin', null, '2017-08-19 14:40:16', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1888', '', '0119', '1', '0', '1', '/uploadFile/product/201708/f5646a3c-5536-47f1-b9ca-c9e1ad889d56.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f5646a3c-5536-47f1-b9ca-c9e1ad889d56.jpg', '122', '136', '', '0', 'admin', null, '2017-08-19 14:43:37', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1889', '', '0120', '1', '2', '0', '/uploadFile/product/201708/c0bd37c6-b7cc-4c08-aa05-9c179bb7c9db.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c0bd37c6-b7cc-4c08-aa05-9c179bb7c9db.jpg', '122', '136', '', '0', 'admin', null, '2017-08-19 14:51:56', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1890', 'С̩', '0121', '1', '2', '0', '/uploadFile/product/201708/37c91247-8c8a-4abf-a93e-30e2fa275084.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/37c91247-8c8a-4abf-a93e-30e2fa275084.jpg', '122', '136', '', '0', 'admin', null, '2017-08-19 15:04:20', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1891', '', '0122', '1', '0', '2', '/uploadFile/product/201708/689f844c-d523-4540-be3a-aac71a3718ac.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/689f844c-d523-4540-be3a-aac71a3718ac.jpg', '122', '136', '', '0', 'admin', null, '2017-08-19 15:46:22', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1892', 'ΰ', '0123', '1', '2', '0', '/uploadFile/product/201708/5f712c7e-cad1-4d82-8634-99974eb69dbd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5f712c7e-cad1-4d82-8634-99974eb69dbd.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 15:50:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1893', 'ΰ', '0124', '1', '0', '1', '/uploadFile/product/201708/e6f89fee-77dd-456a-9922-763cb563fd27.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e6f89fee-77dd-456a-9922-763cb563fd27.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 15:59:31', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1894', '', '0125', '1', '0', '1', '/uploadFile/product/201708/6f363c38-fe85-4274-b5ae-5bb5fd2774a2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6f363c38-fe85-4274-b5ae-5bb5fd2774a2.jpg', '122', '134', '', '0', 'admin', null, '2017-08-19 16:07:46', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1895', '', '0126', '1', '0', '4', '/uploadFile/product/201708/f0000ea1-3f53-484d-9280-bc617ab0f8e7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f0000ea1-3f53-484d-9280-bc617ab0f8e7.jpg', '122', '125', '', '0', 'admin', 'admin', '2017-08-19 16:10:52', '2017-08-19 16:11:30', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1896', 'ΰ', '0127', '1', '0', '2', '/uploadFile/product/201708/f8b01273-4d34-4eca-bc08-3a8257f75934.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f8b01273-4d34-4eca-bc08-3a8257f75934.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 16:18:36', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1897', 'B.Toys', '0128', '1', '0', '1', '/uploadFile/product/201708/b91a3b41-b1e0-48f3-9f72-49060e83cc20.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b91a3b41-b1e0-48f3-9f72-49060e83cc20.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 16:24:58', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1898', 'B-toysң', '0129', '1', '0', '1', '/uploadFile/product/201708/4689442e-7f84-4d6d-a6e6-c454f8fc9210.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4689442e-7f84-4d6d-a6e6-c454f8fc9210.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 16:29:39', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1899', 'ΰ', '0130', '1', '0', '3', '/uploadFile/product/201708/15749934-68d2-440d-8de1-051606fe0140.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/15749934-68d2-440d-8de1-051606fe0140.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 16:32:29', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1900', 'С̩', '0131', '1', '2', '0', '/uploadFile/product/201708/8ad25c70-f201-4dff-bb8d-7df5bbf8ed82.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/8ad25c70-f201-4dff-bb8d-7df5bbf8ed82.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 16:37:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1901', '', '0132', '1', '0', '1', '/uploadFile/product/201708/a10cf862-2bf2-494c-8129-2f962ecb19f4.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a10cf862-2bf2-494c-8129-2f962ecb19f4.jpg', '122', '125', '', '0', 'admin', 'admin', '2017-08-19 16:53:39', '2017-08-19 16:54:47', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1902', 'ΰ', '0134', '1', '0', '2', '/uploadFile/product/201708/6a49344a-fd9a-40b0-a3cd-d3f80d6e0fee.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6a49344a-fd9a-40b0-a3cd-d3f80d6e0fee.jpg', '122', '125', '', '0', 'admin', 'admin', '2017-08-19 16:57:40', '2017-08-19 17:00:14', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1903', 'ΰ', '0133', '1', '2', '0', '/uploadFile/product/201708/85e5ed64-98aa-44d1-acd4-782a3355b90b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/85e5ed64-98aa-44d1-acd4-782a3355b90b.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 17:02:27', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1904', 'ΰ', '0135', '1', '0', '2', '/uploadFile/product/201708/e91c6dbf-0200-4759-b33a-95d5cdb1e10c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e91c6dbf-0200-4759-b33a-95d5cdb1e10c.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 17:09:51', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1905', '', '0136', '1', '0', '1', '/uploadFile/product/201708/00d88330-86a2-4f9b-89bc-bf121e8a3b91.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/00d88330-86a2-4f9b-89bc-bf121e8a3b91.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 17:16:38', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1906', 'ͯ', '0039', '1', '0', '1', '/uploadFile/product/201708/23130fdf-b4c3-42bc-a11c-7f00bbff5cfb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/23130fdf-b4c3-42bc-a11c-7f00bbff5cfb.jpg', '122', '142', '', '0', 'admin', null, '2017-08-19 17:29:50', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1907', 'ͯ', '0137', '1', '0', '1', '/uploadFile/product/201708/63fd12c7-9d86-4f46-9c34-082805e4177f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/63fd12c7-9d86-4f46-9c34-082805e4177f.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 17:34:07', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1908', '', '1', '1', '2', '0', '/uploadFile/product/201708/b62e96cb-e926-4818-babc-06423ac4a53c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b62e96cb-e926-4818-babc-06423ac4a53c.jpg', '122', '124', '', '1', 'admin', 'admin', '2017-08-19 18:31:46', '2017-08-19 18:33:48', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1909', '1', '1', '1', '2', '0', '/uploadFile/product/201708/54c3c1bd-c46a-495d-ba77-f3480c2115f9.png', 'http://47.94.205.255:8082//uploadFile/product/201708/54c3c1bd-c46a-495d-ba77-f3480c2115f9.png', '122', '124', '', '1', 'admin', null, '2017-08-19 18:37:03', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1910', 'С̩', '1', '1', '0', '1', '/uploadFile/product/201708/2628f8d5-c26e-4fd3-af05-a0d10eb14321.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2628f8d5-c26e-4fd3-af05-a0d10eb14321.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 19:28:26', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1911', '', '0139', '1', '0', '1', '/uploadFile/product/201708/b5e377e2-b940-4bf4-a05b-798306b7fd74.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b5e377e2-b940-4bf4-a05b-798306b7fd74.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 19:32:16', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1912', 'ΰ', '1', '1', '0', '3', '/uploadFile/product/201708/edf94576-b214-49e5-9c16-6626bb22ac49.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/edf94576-b214-49e5-9c16-6626bb22ac49.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 20:22:08', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1913', '', '0141', '1', '0', '2', '/uploadFile/product/201708/7a9ad6df-4dbd-4923-a556-1241a23d8984.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7a9ad6df-4dbd-4923-a556-1241a23d8984.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 20:31:30', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1914', '', '0142', '1', '0', '1', '/uploadFile/product/201708/69c0c00b-06f4-4769-8100-f7ea493e6b45.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/69c0c00b-06f4-4769-8100-f7ea493e6b45.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 20:35:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1915', '', '0143', '1', '0', '2', '/uploadFile/product/201708/8d9cdf74-7495-49a7-8c13-d7ab4039068b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/8d9cdf74-7495-49a7-8c13-d7ab4039068b.jpg', '122', '127', '', '0', 'admin', 'admin', '2017-08-19 21:04:31', '2017-08-21 14:24:47', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1916', 'С̩', '0144', '1', '0', '1', '/uploadFile/product/201708/2472e2e7-a1af-4417-9a92-bb4cae18d4a0.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2472e2e7-a1af-4417-9a92-bb4cae18d4a0.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 21:06:23', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1917', 'ΰ', '0145', '1', '0', '4', '/uploadFile/product/201708/7b39a252-6089-4540-bd08-c6e7a0da9922.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7b39a252-6089-4540-bd08-c6e7a0da9922.jpg', '122', '127', '', '1', 'admin', null, '2017-08-19 21:08:47', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1918', 'ΰ', '0145', '1', '0', '3', '/uploadFile/product/201708/a45b6ce9-40a0-4af5-9624-32fc46394924.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a45b6ce9-40a0-4af5-9624-32fc46394924.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 21:10:40', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1919', 'С̩', '0146', '1', '2', '0', '/uploadFile/product/201708/edb928bb-6788-4b74-a84b-e02c60732536.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/edb928bb-6788-4b74-a84b-e02c60732536.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 21:12:52', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1920', 'ΰ', '0147', '1', '0', '2', '/uploadFile/product/201708/2e597fad-4080-41d8-8898-a1df1fe2f2da.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2e597fad-4080-41d8-8898-a1df1fe2f2da.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 21:15:01', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1921', 'С̩', '0148', '1', '0', '2', '/uploadFile/product/201708/aafaf29f-a114-4e3a-a33f-605e42d81f14.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/aafaf29f-a114-4e3a-a33f-605e42d81f14.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 21:17:25', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1922', '', '0149', '1', '0', '1', '/uploadFile/product/201708/7da0fca4-db06-4d77-bb3f-c4ff9d46817d.png', 'http://47.94.205.255:8082//uploadFile/product/201708/7da0fca4-db06-4d77-bb3f-c4ff9d46817d.png', '122', '127', '', '0', 'admin', null, '2017-08-19 21:20:16', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1923', '', '0150', '1', '0', '3', '/uploadFile/product/201708/1e9d759e-9889-4407-8f99-9bf88254552f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1e9d759e-9889-4407-8f99-9bf88254552f.jpg', '128', '127', '', '0', 'admin', null, '2017-08-19 21:22:23', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1924', 'ΰ', '0151', '1', '2', '0', '/uploadFile/product/201708/d68bce47-0108-4be2-b46b-6d8d8197c5e6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/d68bce47-0108-4be2-b46b-6d8d8197c5e6.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 21:24:33', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1925', 'B-toys', '0152', '1', '0', '1', '/uploadFile/product/201708/62676b34-6e90-4370-9327-069f2d49009a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/62676b34-6e90-4370-9327-069f2d49009a.jpg', '122', '125', '', '0', 'admin', null, '2017-08-19 21:27:22', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1926', 'Ͷ', '0153', '1', '0', '1', '/uploadFile/product/201708/74a228eb-1838-4555-a65d-434e5f0e5600.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/74a228eb-1838-4555-a65d-434e5f0e5600.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 21:32:28', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1927', '', '0154', '1', '0', '3', '/uploadFile/product/201708/6493030a-96b6-4594-b6e5-c82486d2e8b6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6493030a-96b6-4594-b6e5-c82486d2e8b6.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 21:34:43', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1928', 'ͯ', '0155', '1', '0', '1', '/uploadFile/product/201708/93078d18-358c-4db6-87dc-5ad6aa6a6f04.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/93078d18-358c-4db6-87dc-5ad6aa6a6f04.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 21:37:05', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1929', '', '0156', '1', '0', '1', '/uploadFile/product/201708/7ad1b1b1-7c75-420c-9472-cf09f93dd95a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7ad1b1b1-7c75-420c-9472-cf09f93dd95a.jpg', '128', '127', '', '0', 'admin', null, '2017-08-19 21:40:30', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1930', '', '0157', '1', '0', '1', '/uploadFile/product/201708/527a3aca-d834-434c-911f-5967a62e467f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/527a3aca-d834-434c-911f-5967a62e467f.jpg', '122', '127', '', '0', 'admin', null, '2017-08-19 21:42:21', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1931', 'ΰ', '0158', '1', '0', '1', '/uploadFile/product/201708/7f7b1aa1-4c8b-49af-9b88-ec359cde4886.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/7f7b1aa1-4c8b-49af-9b88-ec359cde4886.jpg', '122', '141', '', '0', 'admin', null, '2017-08-19 21:44:20', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1932', '', '0159', '1', '0', '4', '/uploadFile/product/201708/aa0f98cf-b4d2-4357-b010-65baf451ad91.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/aa0f98cf-b4d2-4357-b010-65baf451ad91.jpg', '122', '138', '', '0', 'admin', 'admin', '2017-08-19 21:47:51', '2017-08-21 09:56:40', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1933', '', '0160', '1', '0', '3', '/uploadFile/product/201708/3de5d0a9-d519-43fa-a4e0-30d906868eec.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/3de5d0a9-d519-43fa-a4e0-30d906868eec.jpg', '128', '127', '', '0', 'admin', 'admin', '2017-08-19 21:49:37', '2017-08-21 14:14:14', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1934', 'ľ', '0161', '1', '0', '1', '/uploadFile/product/201708/fbf7dd5b-badb-40b6-bb9a-e53ddf33fff9.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/fbf7dd5b-badb-40b6-bb9a-e53ddf33fff9.jpg', '122', '132', '', '0', 'admin', null, '2017-08-19 22:01:11', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1935', '', '0162', '1', '0', '3', '/uploadFile/product/201708/14646ab5-7a09-4c25-8dc5-2f06b2e3922e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/14646ab5-7a09-4c25-8dc5-2f06b2e3922e.jpg', '122', '132', '', '0', 'admin', null, '2017-08-19 22:03:14', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1936', '', '0163', '1', '0', '1', '/uploadFile/product/201708/e176d349-a35e-485b-b161-b78110b192ba.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e176d349-a35e-485b-b161-b78110b192ba.jpg', '122', '132', '', '0', 'admin', null, '2017-08-19 22:06:07', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1937', '', '0164', '1', '0', '1', '/uploadFile/product/201708/68b1af9f-0666-4536-a731-b274594683a8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/68b1af9f-0666-4536-a731-b274594683a8.jpg', '122', '132', '', '0', 'admin', null, '2017-08-19 22:07:43', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1938', '', '0165', '1', '0', '1', '/uploadFile/product/201708/ca4e8e9b-5c36-4be4-895e-003550ffdaae.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ca4e8e9b-5c36-4be4-895e-003550ffdaae.jpg', '122', '132', '', '0', 'admin', 'admin', '2017-08-19 22:10:35', '2017-08-21 13:18:06', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1939', 'step2ɳ', '0166', '1', '0', '1', '/uploadFile/product/201708/ab27484e-8981-4255-85a6-29798246ff72.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/ab27484e-8981-4255-85a6-29798246ff72.jpg', '122', '137', '', '0', 'admin', null, '2017-08-19 22:27:47', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1940', 'С̩', '0167', '1', '2', '0', '/uploadFile/product/201708/b205088e-2ac7-416e-8e6f-9872f97f77a7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b205088e-2ac7-416e-8e6f-9872f97f77a7.jpg', '122', '137', '', '0', 'admin', null, '2017-08-19 22:30:13', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1941', '', '0168', '1', '0', '1', '/uploadFile/product/201708/c14a66d4-f13c-4006-b6ce-96d19e78521e.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c14a66d4-f13c-4006-b6ce-96d19e78521e.jpg', '128', '140', '', '0', 'admin', null, '2017-08-19 22:33:26', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1942', 'С̩', '0169', '1', '2', '0', '/uploadFile/product/201708/2b621136-c1f2-4d7b-83d8-d0be10a11062.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/2b621136-c1f2-4d7b-83d8-d0be10a11062.jpg', '122', '137', '', '0', 'admin', null, '2017-08-19 23:35:07', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1943', 'С̩', '0170', '1', '0', '4', '/uploadFile/product/201708/90215f48-ad64-4559-b916-2b25dc4a0626.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/90215f48-ad64-4559-b916-2b25dc4a0626.jpg', '122', '133', '', '0', 'admin', null, '2017-08-19 23:49:07', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1944', 'С̩', '0171', '1', '2', '0', '/uploadFile/product/201708/dff9dcc8-7fa3-4011-97e9-de3d2c13f12a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/dff9dcc8-7fa3-4011-97e9-de3d2c13f12a.jpg', '122', '133', '', '0', 'admin', 'admin', '2017-08-19 23:51:34', '2017-08-21 15:32:49', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1945', 'С̩', '0172', '1', '0', '1', '/uploadFile/product/201708/db29b3ba-d9cb-4c66-9c66-d026935ba289.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/db29b3ba-d9cb-4c66-9c66-d026935ba289.jpg', '122', '133', '1', '0', 'admin', 'admin', '2017-08-20 00:15:04', '2017-08-21 13:17:59', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1946', 'step2', '0173', '1', '0', '1', '/uploadFile/product/201708/a33b0030-0bb3-4dcb-a1ad-cf5d7a532edd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a33b0030-0bb3-4dcb-a1ad-cf5d7a532edd.jpg', '122', '133', '1', '0', 'admin', 'admin', '2017-08-20 00:24:09', '2017-08-20 00:58:39', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1947', 'step2', '0174', '1', '0', '2', '/uploadFile/product/201708/a3eedfce-28ff-40df-8b31-1f962646a4a8.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/a3eedfce-28ff-40df-8b31-1f962646a4a8.jpg', '122', '133', '', '0', 'admin', 'admin', '2017-08-20 00:31:08', '2017-08-20 00:58:57', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1948', 'С̩', '0175', '1', '0', '1', '/uploadFile/product/201708/04847320-ce19-45c7-9ff1-859affbeb76b.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/04847320-ce19-45c7-9ff1-859affbeb76b.jpg', '122', '133', '', '0', 'admin', 'admin', '2017-08-20 00:37:06', '2017-08-20 00:59:13', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1949', 'С̩', '0176', '1', '0', '4', '/uploadFile/product/201708/31c3aa7b-83be-492d-9097-b9c683deae2f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/31c3aa7b-83be-492d-9097-b9c683deae2f.jpg', '122', '133', '', '0', 'admin', 'admin', '2017-08-20 00:44:41', '2017-08-20 00:59:26', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1950', 'С̩', '0177', '1', '0', '1', '/uploadFile/product/201708/9caa64ce-5024-4f92-b35d-08c561a9806a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9caa64ce-5024-4f92-b35d-08c561a9806a.jpg', '122', '125', '', '1', 'admin', 'admin', '2017-08-20 01:16:54', '2017-08-20 01:17:13', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1951', 'С̩', '0177', '1', '0', '1', '/uploadFile/product/201708/81b67397-3eb7-4b71-b36c-ac1e47c9131f.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/81b67397-3eb7-4b71-b36c-ac1e47c9131f.jpg', '122', '125', '', '0', 'admin', null, '2017-08-20 01:20:11', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1952', 'step2', '0178', '1', '0', '2', '/uploadFile/product/201708/4593be91-c175-47d9-b2c5-c5839b9b26dd.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4593be91-c175-47d9-b2c5-c5839b9b26dd.jpg', '122', '133', '', '0', 'admin', 'admin', '2017-08-20 01:34:24', '2017-08-20 01:34:56', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1953', 'step2', '0179', '1', '0', '2', '/uploadFile/product/201708/66e79785-ecaf-4d07-afbe-868438d39d69.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/66e79785-ecaf-4d07-afbe-868438d39d69.jpg', '122', '133', '', '0', 'admin', null, '2017-08-20 01:37:09', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1954', 'С̩', '0180', '1', '2', '0', '/uploadFile/product/201708/82f3aa65-dc29-4567-b5f1-e7c3056365a6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/82f3aa65-dc29-4567-b5f1-e7c3056365a6.jpg', '122', '133', '', '0', 'admin', null, '2017-08-20 01:39:59', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1955', 'step2', '0181', '1', '0', '1', '/uploadFile/product/201708/5f5f5e8d-6362-4997-86d8-609137d7de1c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5f5f5e8d-6362-4997-86d8-609137d7de1c.jpg', '122', '133', '', '1', 'admin', null, '2017-08-20 01:52:27', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1956', 'С̩', '0182', '1', '2', '0', '/uploadFile/product/201708/22d457a0-1686-4474-a491-da9021caf097.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/22d457a0-1686-4474-a491-da9021caf097.jpg', '122', '133', '', '0', 'admin', null, '2017-08-20 01:55:54', null, '123.00', null, null, '');
INSERT INTO `product` VALUES ('1957', 'С̩', '0183', '1', '0', '2', '/uploadFile/product/201708/59bf9044-ee42-4df0-8e73-b016054b8cb6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/59bf9044-ee42-4df0-8e73-b016054b8cb6.jpg', '122', '133', '', '0', 'admin', null, '2017-08-20 01:58:50', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1958', 'С̩', '0184', '1', '2', '0', '/uploadFile/product/201708/f885a09b-5346-41f1-9cbb-2b9cf36f2a4a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f885a09b-5346-41f1-9cbb-2b9cf36f2a4a.jpg', '122', '133', '', '0', 'admin', null, '2017-08-20 02:00:50', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1959', 'С̩', '0185', '1', '0', '2', '/uploadFile/product/201708/1c428ab0-2ebd-4243-9c02-a3e2765b2a93.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/1c428ab0-2ebd-4243-9c02-a3e2765b2a93.jpg', '122', '133', '', '0', 'admin', null, '2017-08-20 02:05:19', null, '123.00', null, null, '');
INSERT INTO `product` VALUES ('1960', 'step2', '0186', '1', '2', '0', '/uploadFile/product/201708/28849580-f809-4d4c-a01b-f1cd9ebffb62.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/28849580-f809-4d4c-a01b-f1cd9ebffb62.jpg', '122', '133', '', '0', 'admin', null, '2017-08-20 02:08:47', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1961', 'С̩', '0187', '1', '2', '0', '/uploadFile/product/201708/f59da647-0e04-4b5c-b07b-7cef1cbf61e6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/f59da647-0e04-4b5c-b07b-7cef1cbf61e6.jpg', '122', '133', '', '0', 'admin', null, '2017-08-20 02:11:00', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1962', 'С̩', '0188', '1', '0', '1', '/uploadFile/product/201708/b11165e4-bf29-4008-9ad7-d3860429501c.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b11165e4-bf29-4008-9ad7-d3860429501c.jpg', '122', '133', '', '0', 'admin', null, '2017-08-20 02:13:34', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1963', '', '1', '1', '0', '4', '/uploadFile/product/201708/e92567db-422c-46ea-9f69-7f9a6befce66.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e92567db-422c-46ea-9f69-7f9a6befce66.jpg', '122', '125', '', '1', 'admin', null, '2017-08-20 10:07:26', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1964', 'ΰ', '1', '1', '0', '1', '/uploadFile/product/201708/b3c271c6-a1d3-4e9a-8bc5-85c0d3e34fef.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/b3c271c6-a1d3-4e9a-8bc5-85c0d3e34fef.jpg', '122', '127', '', '1', 'admin', null, '2017-08-20 10:11:01', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1965', 'С̩', '1', '1', '2', '0', '/uploadFile/product/201708/6d93ef20-25ba-4669-9201-5d35b4bab8b5.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6d93ef20-25ba-4669-9201-5d35b4bab8b5.jpg', '122', '133', '', '1', 'admin', null, '2017-08-20 10:12:52', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1966', '', '1', '1', '0', '1', '/uploadFile/product/201708/75e60465-7f96-4061-b68f-3d1f06306b53.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/75e60465-7f96-4061-b68f-3d1f06306b53.jpg', '122', '125', '', '0', 'admin', 'admin', '2017-08-21 10:01:36', '2017-08-21 17:07:01', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1967', 'С̩', '1', '1', '0', '0', '/uploadFile/product/201708/4bf1e5fa-f988-476b-81e2-edfebaca46b7.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/4bf1e5fa-f988-476b-81e2-edfebaca46b7.jpg', '122', '139', '', '0', 'admin', 'admin', '2017-08-21 10:03:01', '2017-08-21 16:46:19', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1968', '', '1', '1', '2', '0', '/uploadFile/product/201708/b82924dd-4666-45c8-b077-66de48213e77.jpg/uploadFile/product/201708/d3e244a4-6d4f-48da-99ec-618cc0ded86d.jpg_', 'http://47.94.205.255:8082//uploadFile/product/201708/b82924dd-4666-45c8-b077-66de48213e77.jpg', '122', '125', 'ȫ', '0', 'admin', 'admin', '2017-08-21 10:07:18', '2017-08-21 17:05:58', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1969', 'step2', '0181', '1', '0', '1', '/uploadFile/product/201708/e3ef7ae7-9c92-4d6f-bb0f-284dc74c05f2.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/e3ef7ae7-9c92-4d6f-bb0f-284dc74c05f2.jpg', '122', '133', '', '0', 'admin', null, '2017-08-21 10:24:33', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1970', 'step2', '0189', '1', '2', '0', '/uploadFile/product/201708/6a0abd69-e844-41fc-a4b2-8b9ea28f08cb.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6a0abd69-e844-41fc-a4b2-8b9ea28f08cb.jpg', '122', '133', '', '0', 'admin', 'admin', '2017-08-21 10:34:40', '2017-08-21 13:18:11', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1971', 'С̩', '0190', '1', '0', '1', '/uploadFile/product/201708/9d34eed4-3140-4e73-865e-c99b66a256e1.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/9d34eed4-3140-4e73-865e-c99b66a256e1.jpg', '122', '133', '', '0', 'admin', null, '2017-08-21 11:10:01', null, '123.00', null, null, null);
INSERT INTO `product` VALUES ('1972', 'С̩', '0191', '1', '2', '0', '/uploadFile/product/201708/c0b8c327-00e1-4010-b760-0022bc6dded6.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/c0b8c327-00e1-4010-b760-0022bc6dded6.jpg', '122', '133', '', '0', 'admin', 'admin', '2017-08-21 12:50:51', '2017-08-21 13:35:53', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1973', 'С̩', '0192', '1', '0', '2', '/uploadFile/product/201708/08d9dcd3-8621-44eb-896f-a24dccb9326a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/08d9dcd3-8621-44eb-896f-a24dccb9326a.jpg', '122', '133', '', '0', 'admin', 'admin', '2017-08-21 12:54:09', '2017-08-21 13:29:27', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1974', 'step2', '0193', '1', '0', '1', '/uploadFile/product/201708/6b1a52e1-9e71-48f2-9573-42175929e3e3.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/6b1a52e1-9e71-48f2-9573-42175929e3e3.jpg', '122', '133', '', '0', 'admin', 'admin', '2017-08-21 12:58:25', '2017-08-21 13:25:48', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1975', 'С̩', '0194', '1', '0', '2', '/uploadFile/product/201708/5d5e54ad-b041-47d7-afe6-a8601e4aa19a.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/5d5e54ad-b041-47d7-afe6-a8601e4aa19a.jpg', '122', '133', '', '0', 'admin', 'admin', '2017-08-21 13:03:22', '2017-08-21 13:20:05', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1976', 'С̩', '0195', '1', '0', '3', '/uploadFile/product/201708/dea6d998-2158-468a-b096-155ebc89394d.jpg', 'http://47.94.205.255:8082//uploadFile/product/201708/dea6d998-2158-468a-b096-155ebc89394d.jpg', '122', '125', '', '0', 'admin', 'admin', '2017-08-21 13:19:37', '2017-08-21 15:54:37', '123.00', null, null, null);
INSERT INTO `product` VALUES ('1977', 'yyy', 'yyy', null, '0', '55', 'http://192.168.0.156:8080/uploadFile\\product/201709/fd01c402-67ce-46a3-806c-54174dbf0346.jpg', 'http://47.94.205.255:8082/http://192.168.0.156:8080/uploadFile\\product/201709/fd01c402-67ce-46a3-806c-54174dbf0346.jpg', '123', '151', '', '1', null, null, '2017-09-01 23:44:45', null, null, null, null, null);
INSERT INTO `product` VALUES ('1978', '111', '111', '2', '0', '111', 'http://192.168.0.156:8080/uploadFile\\product/201709/ed40ca02-c2a6-455d-b048-27f4e70c1200.jpg', 'http://47.94.205.255:8082/http://192.168.0.156:8080/uploadFile\\product/201709/ed40ca02-c2a6-455d-b048-27f4e70c1200.jpg', '124', '137', 'productTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductTypeproductType', '1', null, null, '2017-09-01 23:46:37', null, null, null, null, null);
INSERT INTO `product` VALUES ('1979', '22', '222', '1', '0', '222', '/uploadFile\\product/201709/33d65361-a6fe-4bd8-a692-1d55d263a6ee.jpg', 'http://47.94.205.255:8082//uploadFile\\product/201709/33d65361-a6fe-4bd8-a692-1d55d263a6ee.jpg', '122', '135', '222222222222', '1', null, null, '2017-09-01 23:47:50', null, null, null, null, null);
INSERT INTO `product` VALUES ('1980', 'eee', 'ee', '1', '0', '44', '/uploadFile\\product/201709/42ec7bc7-4452-4175-8282-9c6ed5a6faa5.jpg', 'http://47.94.205.255:8082//uploadFile\\product/201709/42ec7bc7-4452-4175-8282-9c6ed5a6faa5.jpg', '122', '135', 'eeeeeeeeeeeeee', '1', 'admin', null, '2017-09-02 22:21:29', null, null, null, null, null);
INSERT INTO `product` VALUES ('1981', 'yyy', 'yyy', '1', '0', '55', '/uploadFile\\product/201709/aaa00cc2-198b-4f02-871a-24291625ddaa.jpg', 'http://47.94.205.255:8082//uploadFile\\product/201709/aaa00cc2-198b-4f02-871a-24291625ddaa.jpg', '122', '135', 'ttttt', '1', 'admin', null, '2017-09-02 22:23:41', null, null, null, null, null);
INSERT INTO `product` VALUES ('1982', 'yyy', 'yyy', '1', '0', '55', '/uploadFile\\product/201709/aaa00cc2-198b-4f02-871a-24291625ddaa.jpg', 'http://47.94.205.255:8082//uploadFile\\product/201709/aaa00cc2-198b-4f02-871a-24291625ddaa.jpg', '122', '135', 'ttttt', '1', 'admin', null, '2017-09-02 22:24:08', null, null, null, null, null);

-- ----------------------------
-- Table structure for `product_brand`
-- ----------------------------
DROP TABLE IF EXISTS `product_brand`;
CREATE TABLE `product_brand` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别编号',
  `brandName` varchar(45) DEFAULT NULL COMMENT '商户类别名称',
  `pic` varchar(255) DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL COMMENT '所属类别【大类】',
  `sortNum` int(11) DEFAULT NULL COMMENT '排序',
  `delFlag` char(1) DEFAULT '0',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_brand
-- ----------------------------
INSERT INTO `product_brand` VALUES ('122', '礼祺 (NICI)', '/uploadFile/brand/201709/9ff7cad6-5b25-4147-8928-72f427c4d1d9.jpg', '1', '1', '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_brand` VALUES ('123', '丹麦 (LEGO)乐高', '/uploadFile/brand/201709/9ff7cad6-5b25-4147-8928-72f427c4d1d9.jpg', '1', null, '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_brand` VALUES ('124', '布里奥 （BRIO）', '/uploadFile/brand/201709/9ff7cad6-5b25-4147-8928-72f427c4d1d9.jpg', '2', null, '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_brand` VALUES ('125', '智比 (SMOBY)', '/uploadFile/brand/201709/9ff7cad6-5b25-4147-8928-72f427c4d1d9.jpg', '2', null, '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_brand` VALUES ('126', '罗斯熊（RUSS）', '/uploadFile/brand/201709/9ff7cad6-5b25-4147-8928-72f427c4d1d9.jpg', '3', null, '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_brand` VALUES ('127', '孩之宝（HASBRO）', '/uploadFile/brand/201709/9ff7cad6-5b25-4147-8928-72f427c4d1d9.jpg', '4', null, '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_brand` VALUES ('128', '费雪（FISHER PRICE）', '/uploadFile/brand/201709/9ff7cad6-5b25-4147-8928-72f427c4d1d9.jpg', '5', null, '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_brand` VALUES ('139', '22', '/uploadFile/brand/201709/9ff7cad6-5b25-4147-8928-72f427c4d1d9.jpg', '1', '0', '0', null, null, '2017-09-03 11:33:50', null);
INSERT INTO `product_brand` VALUES ('140', '444', '/uploadFile/brand/201709/9ff7cad6-5b25-4147-8928-72f427c4d1d9.jpg', '2', '0', '0', null, null, '2017-09-03 11:34:48', null);

-- ----------------------------
-- Table structure for `product_category`
-- ----------------------------
DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别编号',
  `categoryName` varchar(45) DEFAULT NULL COMMENT '商品类别名称',
  `sortNum` int(11) DEFAULT NULL COMMENT '排序',
  `delFlag` char(1) DEFAULT '0',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL COMMENT '别类图片',
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_category
-- ----------------------------
INSERT INTO `product_category` VALUES ('1', '健身', '333', '0', null, 'admin', null, '2017-09-03 11:35:36', '0', 'http://img.htmleaf.com/1502/201502141811.jpg');
INSERT INTO `product_category` VALUES ('2', '游泳', '44', '0', null, 'admin', null, '2017-09-03 11:35:41', '0', null);
INSERT INTO `product_category` VALUES ('3', '益智', null, '0', null, null, null, null, '0', null);
INSERT INTO `product_category` VALUES ('4', '卡车系列', null, '0', null, null, null, null, '0', null);
INSERT INTO `product_category` VALUES ('5', '吉姆系类', null, '0', null, null, null, null, '0', null);
INSERT INTO `product_category` VALUES ('124', '拼图玩具类', '1', '0', null, null, '2017-06-23 10:20:51', null, '1', null);
INSERT INTO `product_category` VALUES ('125', '游戏玩具类', '2', '0', null, null, '2017-06-23 10:21:00', null, '1', null);
INSERT INTO `product_category` VALUES ('126', '数字算盘文字类', '3', '0', null, null, '2017-06-23 10:21:55', null, '1', null);
INSERT INTO `product_category` VALUES ('127', '益智组合类', '5', '1', null, null, '2017-06-23 10:22:06', null, '1', null);
INSERT INTO `product_category` VALUES ('128', '积木类', '6', '0', null, null, '2017-06-23 10:22:15', null, '1', null);
INSERT INTO `product_category` VALUES ('129', '托马斯', '8', '0', null, 'admin', '2017-06-23 10:22:21', '2017-08-31 21:00:57', '1', null);
INSERT INTO `product_category` VALUES ('130', '易趣', '33', '1', null, null, '2017-06-23 10:22:34', null, '1', null);
INSERT INTO `product_category` VALUES ('131', '大玩具', '6', '0', null, null, '2017-06-23 10:24:00', null, '2', null);
INSERT INTO `product_category` VALUES ('132', '学步车', null, '0', null, null, '2017-07-11 22:03:02', null, '2', null);
INSERT INTO `product_category` VALUES ('133', '厨房类', null, '0', null, null, '2017-07-13 10:49:16', null, '2', null);
INSERT INTO `product_category` VALUES ('134', '乐器类', '10', '0', null, null, '2017-07-13 23:23:52', null, '2', null);
INSERT INTO `product_category` VALUES ('135', '秋千滑梯', '11', '0', null, null, '2017-07-13 23:24:37', null, '2', null);
INSERT INTO `product_category` VALUES ('136', '秋千滑梯', '11', '0', null, null, '2017-07-13 23:24:38', null, '3', null);
INSERT INTO `product_category` VALUES ('137', '大型玩具', null, '0', null, null, '2017-07-13 23:40:01', null, '3', null);
INSERT INTO `product_category` VALUES ('138', '电动车', null, '0', null, null, '2017-07-16 13:40:09', null, '3', null);
INSERT INTO `product_category` VALUES ('139', '推车类', null, '0', null, null, '2017-07-16 13:41:50', null, '4', null);
INSERT INTO `product_category` VALUES ('140', '摇椅类', null, '0', null, null, '2017-07-16 13:42:07', null, '4', null);
INSERT INTO `product_category` VALUES ('141', '轨道车类', null, '0', null, null, '2017-08-10 10:48:21', null, '4', null);
INSERT INTO `product_category` VALUES ('142', '滑行车类', null, '0', null, null, '2017-08-10 13:24:39', null, '5', null);
INSERT INTO `product_category` VALUES ('143', '健身类', null, '0', null, null, '2017-08-10 13:25:52', null, '5', null);
INSERT INTO `product_category` VALUES ('144', '戏水类', null, '0', null, null, '2017-08-21 12:59:02', null, '5', null);
INSERT INTO `product_category` VALUES ('149', 'ttt', null, '0', null, null, '2017-09-01 14:02:15', null, null, 'http://192.168.0.156:8080/uploadFile\\category/201709/fcb84eac-ed03-4932-9702-d6fbf261bb03.jpg_');
INSERT INTO `product_category` VALUES ('150', 'ttt', '55', '1', null, null, '2017-09-01 16:10:51', null, '3', 'http://192.168.0.156:8080/uploadFile\\category/201709/c89fbdbb-4e99-4e88-9b07-814d939660fe.jpg_');
INSERT INTO `product_category` VALUES ('151', '5555555', '55', '1', null, null, '2017-09-01 16:19:47', null, '1', 'http://192.168.0.156:8080/uploadFile\\category/201709/9d7fd6a6-21e5-4f51-9e20-46c7ade2965a.jpg_');
INSERT INTO `product_category` VALUES ('152', '888', '0', '1', null, null, '2017-09-03 12:09:43', null, '2', '/uploadFile/category/201709/d8d71765-7b1f-4d60-8293-b8afa8af8cb2.jpg_');
INSERT INTO `product_category` VALUES ('153', '11', '0', '1', null, null, '2017-09-03 12:12:04', null, '2', '/uploadFile/category/201709/b1738a23-2eab-430c-8289-4af65b158ac8.jpg_');
INSERT INTO `product_category` VALUES ('154', '000', '0', '1', null, null, '2017-09-03 12:13:00', null, '1', '/uploadFile/category/201709/871a7bb5-dd68-4d18-b553-692aa800f5c5.jpg');

-- ----------------------------
-- Table structure for `product_comment`
-- ----------------------------
DROP TABLE IF EXISTS `product_comment`;
CREATE TABLE `product_comment` (
  `commentId` int(11) NOT NULL AUTO_INCREMENT COMMENT '类别编号',
  `accountId` int(45) DEFAULT NULL COMMENT '户账编号',
  `productId` int(11) DEFAULT NULL COMMENT '品商编号',
  `content` varchar(4000) DEFAULT NULL COMMENT '论评内容',
  `score` int(11) DEFAULT NULL COMMENT '评分',
  `delFlag` char(1) DEFAULT '0',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`commentId`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_comment
-- ----------------------------
INSERT INTO `product_comment` VALUES ('122', '85', '1990', '网友说:马化腾和马云当时也被认为是骗子，成不成功不一定，但人家跟很多00后甚至90后格局就不一样人家现在在写编程尽管不盈利，也比很多沉迷网游的强吧人家是在用网络创造自己的盈利 ', '1', '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_comment` VALUES ('123', '85', '1990', '网友说:马化腾和马云当时也被认为是骗子，成不成功不一定，但人家跟很多00后甚至90后格局就不一样人家现在在写编程尽管不盈利，也比很多沉迷网游的强吧人家是在用网络创造自己的盈利 ', '3', '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_comment` VALUES ('124', '85', '1990', '网友说:马化腾和马云当时也被认为是骗子，成不成功不一定，但人家跟很多00后甚至90后格局就不一样人家现在在写编程尽管不盈利，也比很多沉迷网游的强吧人家是在用网络创造自己的盈利 ', '5', '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_comment` VALUES ('125', '85', '1990', '网友说:马化腾和马云当时也被认为是骗子，成不成功不一定，但人家跟很多00后甚至90后格局就不一样人家现在在写编程尽管不盈利，也比很多沉迷网游的强吧人家是在用网络创造自己的盈利 ', '4', '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_comment` VALUES ('126', '85', '1990', '这位00后CEO火了，网友彻底被他征服，看他谈吐完全不像一个00后，有深度，老道，沉稳…最后还不忘膜一下。', '4', '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_comment` VALUES ('127', '85', '1990', '这位00后CEO火了，网友彻底被他征服，看他谈吐完全不像一个00后，有深度，老道，沉稳…最后还不忘膜一下。', '5', '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_comment` VALUES ('128', '85', '1990', '​面对质疑他说:有些人谁得很对，因为我代表了，00后一个公司。产品没有前几代做得好，有人喷有人骂，也是种鞭策，如果一个人没人骂你时候，那估计这人就不行了！', '2', '0', null, null, '2017-09-29 22:23:18', null);
INSERT INTO `product_comment` VALUES ('139', '85', '1990', '被人质疑，李昕泽霸气回应:他们质疑我也没办法，我就是这么小当CEO。不怎么听老师话，导致老师天天批评我。我就写了个病毒导致老师电脑用不了。老师说想不到你的技术还是挺厉害的', '1', '0', null, null, '2017-09-03 11:33:50', null);
INSERT INTO `product_comment` VALUES ('140', '85', '1990', '​面对质疑他说:有些人谁得很对，因为我代表了，00后一个公司。产品没有前几代做得好，有人喷有人骂，也是种鞭策，如果一个人没人骂你时候，那估计这人就不行了！', '2', '0', null, null, '2017-09-03 11:34:48', null);
INSERT INTO `product_comment` VALUES ('141', '85', '1855', 'asfafafasfasfa', '4', '0', null, null, null, null);
INSERT INTO `product_comment` VALUES ('142', '85', '1854', 'asfafafasfasfa', '4', '0', null, null, null, null);
INSERT INTO `product_comment` VALUES ('143', '85', '1855', 'ddddd', '3', '0', null, null, null, null);
INSERT INTO `product_comment` VALUES ('144', '85', '1854', 'ddddd', '3', '0', null, null, null, null);
INSERT INTO `product_comment` VALUES ('145', '85', '1855', 'adasdsa', '4', '0', null, null, null, null);
INSERT INTO `product_comment` VALUES ('146', '85', '1854', 'adasdsa', '4', '0', null, null, null, null);
INSERT INTO `product_comment` VALUES ('147', '85', '1856', 'werwrw', '4', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `sys_backup`
-- ----------------------------
DROP TABLE IF EXISTS `sys_backup`;
CREATE TABLE `sys_backup` (
  `backupId` int(11) NOT NULL AUTO_INCREMENT,
  `backupTime` datetime DEFAULT NULL,
  `sysUserId` int(11) DEFAULT NULL,
  `dataName` varchar(45) DEFAULT NULL,
  `delFlag` char(1) DEFAULT '1',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`backupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_backup
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `logId` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统日志编号',
  `userId` int(11) DEFAULT NULL COMMENT '统系账户编号',
  `userName` varchar(20) NOT NULL COMMENT '作操人名称',
  `logMessage` varchar(500) NOT NULL COMMENT '志日消息内容',
  `logTime` datetime NOT NULL COMMENT '日志时间',
  `logIp` varchar(20) DEFAULT NULL COMMENT '作操IP',
  `systemid` int(20) DEFAULT NULL,
  `delFlag` varchar(2) DEFAULT '0' COMMENT '【0 没删除  1删除 】',
  `operResult` varchar(2) DEFAULT NULL COMMENT '操作结果 1 成功 2  失败',
  `method` varchar(200) DEFAULT NULL COMMENT '法方',
  `action` varchar(200) DEFAULT NULL,
  `logType` varchar(2) DEFAULT NULL COMMENT '志类型日【1 添加 2 删除 3 修改 4 查询 ...】',
  `module` varchar(200) DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  PRIMARY KEY (`logId`),
  KEY `FK_Reference_5` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1', '1', 'admin', '新增系统角色test成功', '2015-04-24 09:59:48', '192.168.1.150', null, '0', '1', null, null, '0', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('2', '1', 'admin', '更新系统用户62成功', '2016-11-17 16:57:21', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('3', '1', 'admin', '管理员状态改变62成功', '2016-11-17 17:00:26', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('4', '1', 'admin', '管理员状态改变62成功', '2016-11-17 17:00:29', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('5', '1', 'admin', '管理员状态改变62成功', '2016-11-17 17:00:34', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('6', '1', 'admin', '更新系统用户111成功', '2016-11-17 17:03:43', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('7', '1', 'admin', '更新系统用户1110000000000000成功', '2016-11-17 17:03:59', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('8', '1', 'admin', '新增系统用户15010123237成功', '2016-11-17 17:14:12', '127.0.0.1', null, '0', '1', null, null, '0', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('9', '1', 'admin', '新增城市用户0000000失败', '2016-11-17 17:45:11', '127.0.0.1', null, '0', '2', null, null, '0', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('10', '1', 'admin', '新增城市用户5555555成功', '2016-11-17 17:51:37', '127.0.0.1', null, '0', '1', null, null, '0', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('11', '1', 'admin', '新增城市用户dl001成功', '2016-11-18 09:26:43', '127.0.0.1', null, '0', '1', null, null, '0', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('12', '65', 'dl001', '新增城市用户dl002成功', '2016-11-18 09:38:11', '127.0.0.1', null, '0', '1', null, null, '0', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('13', '65', 'dl001', '更新系统用户66成功', '2016-11-18 09:40:26', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('14', '65', 'dl001', '更新系统用户dl003成功', '2016-11-18 09:40:44', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('15', '65', 'dl001', '管理员状态改变66成功', '2016-11-18 09:40:54', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('16', '65', 'dl001', '管理员状态改变66成功', '2016-11-18 09:40:57', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('17', '65', 'dl001', '新增用户dl003成功', '2016-11-18 09:50:21', '127.0.0.1', null, '0', '1', null, null, '0', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('18', '65', 'dl001', '更新系统用户15010123237成功', '2016-11-18 10:00:13', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('19', '65', 'dl001', '更新系统用户15010123237成功', '2016-11-18 10:00:22', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('20', '65', 'dl001', '更新系统用户1110000000000000成功', '2016-11-18 10:16:25', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('21', '65', 'dl001', '更新系统用户1110000000000000成功', '2016-11-18 10:16:32', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('22', '65', 'dl001', '更新系统用户101成功', '2016-11-18 10:19:50', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('23', '65', 'dl001', '管理员状态改变101成功', '2016-11-18 10:20:08', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('24', '1', 'admin', '用户设置1成功', '2016-11-18 10:53:03', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('25', '1', 'admin', '更新系统用户1110000000000000成功', '2016-11-18 11:40:41', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('26', '1', 'admin', '新增系统角色00成功', '2016-11-18 12:16:23', '127.0.0.1', null, '0', '1', null, null, '0', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('27', '1', 'admin', '新增系统角色uuu成功', '2016-11-18 12:17:21', '127.0.0.1', null, '0', '1', null, null, '0', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('28', '1', 'admin', '新增系统角色77成功', '2016-11-18 12:19:27', '127.0.0.1', null, '0', '1', null, null, '0', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('29', '1', 'admin', '更新分配权限roleId4成功', '2016-11-18 12:19:54', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('30', '1', 'admin', '更新分配权限roleId4成功', '2016-11-18 12:20:09', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('31', '1', 'admin', '更新系统角色770成功', '2016-11-18 12:20:35', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('32', '1', 'admin', '更新分配权限roleId4成功', '2016-11-18 12:22:24', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('33', '1', 'admin', '删除系统角色4成功', '2016-11-18 12:22:30', '127.0.0.1', null, '0', '1', null, null, '2', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('34', '1', 'admin', '更新系统角色test成功', '2016-11-18 12:39:39', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('35', '1', 'admin', '更新系统角色test成功', '2016-11-18 12:40:08', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('36', '1', 'admin', '更新系统角色test成功', '2016-11-18 12:41:35', '127.0.0.1', null, '0', '1', null, null, '1', null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('37', '1', 'admin', '更新系统角色【东方红】成功', '2017-08-11 15:27:16', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('38', '1', 'admin', '更新系统角色【哈哈哈】成功', '2017-08-11 15:27:18', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('39', '1', 'admin', '系统用户admin登录', '2017-08-11 16:20:49', '127.0.0.1', null, '0', '2', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('40', '1', 'admin', '系统用户admin登录', '2017-08-11 16:21:53', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('41', '1', 'admin', '系统用户admin登录', '2017-08-11 16:25:26', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('42', '1', 'admin', '系统用户admin登录', '2017-08-11 17:11:23', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('43', '1', 'admin', '系统用户admin登录', '2017-08-11 17:13:13', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('44', '1', 'admin', '更新系统角色【东方红】成功', '2017-08-11 17:31:11', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('45', '1', 'admin', '系统用户admin登录', '2017-08-17 14:26:43', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('46', '1', 'admin', '系统用户admin登录', '2017-08-17 14:49:32', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('47', '1', 'admin', '系统用户admin登录', '2017-08-17 14:58:06', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('48', '1', 'admin', '系统用户admin登录', '2017-08-17 14:58:47', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('49', '1', 'admin', '系统用户admin登录', '2017-08-17 15:01:31', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('50', '1', 'admin', '系统用户admin登录', '2017-08-17 15:06:26', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('51', '1', 'admin', '系统用户admin登录', '2017-08-17 15:27:28', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('52', '1', 'admin', '系统用户admin登录', '2017-08-17 15:28:10', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('53', '1', 'admin', '系统用户admin登录', '2017-08-17 15:30:24', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('54', '1', 'admin', '系统用户admin登录', '2017-08-17 15:34:01', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('55', '1', 'admin', '系统用户admin登录', '2017-08-17 15:39:20', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('56', '1', 'admin', '系统用户admin登录', '2017-08-17 15:42:48', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('57', '1', 'admin', '系统用户admin登录', '2017-08-17 15:47:32', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('58', '1', 'admin', '系统用户admin登录', '2017-08-17 15:53:42', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('59', '1', 'admin', '系统用户admin登录', '2017-08-17 16:00:26', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('60', '1', 'admin', '系统用户admin登录', '2017-08-17 16:13:47', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('61', '1', 'admin', '系统用户admin登录', '2017-08-17 16:14:31', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('62', '1', 'admin', '分配权限【1】成功', '2017-08-17 16:15:22', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('63', '1', 'admin', '删除系统角色【5】成功', '2017-08-17 16:15:33', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('64', '1', 'admin', '删除系统角色【4】成功', '2017-08-17 16:15:35', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('65', '1', 'admin', '更新系统角色【订单管理员】成功', '2017-08-17 16:15:48', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('66', '1', 'admin', '系统用户admin登录', '2017-08-17 16:16:05', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('67', '1', 'admin', '分配权限【1】成功', '2017-08-17 16:21:49', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('68', '1', 'admin', '系统用户admin登录', '2017-08-17 16:21:53', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('69', '1', 'admin', '系统用户admin登录', '2017-08-17 16:23:10', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('70', '1', 'admin', '系统用户admin登录', '2017-08-30 20:28:05', '192.168.43.134', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('71', '1', 'admin', '系统用户admin登录', '2017-08-30 20:28:07', '192.168.43.134', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('72', '1', 'admin', '分配权限【1】成功', '2017-08-30 20:45:06', '192.168.43.134', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('73', '1', 'admin', '系统用户admin登录', '2017-08-30 20:45:24', '192.168.43.134', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('74', '1', 'admin', '系统用户admin登录', '2017-08-30 21:35:00', '192.168.43.134', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('75', '1', 'admin', '系统用户admin登录', '2017-08-30 21:41:11', '192.168.43.134', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('76', '1', 'admin', '系统用户admin登录', '2017-08-30 22:12:41', '192.168.43.134', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('77', '1', 'admin', '系统用户admin登录', '2017-08-30 22:31:52', '192.168.43.134', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('78', '1', 'admin', '系统用户admin登录', '2017-08-30 23:37:43', '192.168.43.134', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('79', '1', 'admin', '系统用户admin登录', '2017-08-30 23:46:58', '192.168.43.134', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('80', '1', 'admin', '系统用户admin登录', '2017-08-31 08:50:56', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('81', '1', 'admin', '系统用户admin登录', '2017-08-31 09:13:40', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('82', '1', 'admin', '系统用户admin登录', '2017-08-31 11:18:43', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('83', '1', 'admin', '系统用户admin登录', '2017-08-31 14:03:27', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('84', '1', 'admin', '系统用户admin登录', '2017-08-31 14:18:09', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('85', '1', 'admin', '系统用户admin登录', '2017-08-31 14:48:57', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('86', '1', 'admin', '商品分类更新【健身000】成功', '2017-08-31 15:04:58', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('87', '1', 'admin', '系统用户admin登录', '2017-08-31 15:11:26', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('88', '1', 'admin', '商品分类更新【健身9999】成功', '2017-08-31 15:11:38', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('89', '1', 'admin', '系统用户admin登录', '2017-08-31 15:12:22', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('90', '1', 'admin', '商品分类更新【健身333】成功', '2017-08-31 15:12:31', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('91', '1', 'admin', '商品分类更新【游泳44】成功', '2017-08-31 15:12:38', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('92', '1', 'admin', '商品分类删除【null】成功', '2017-08-31 15:37:35', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('93', '1', 'admin', '商品分类删除【null】成功', '2017-08-31 15:37:41', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('94', '1', 'admin', '系统用户admin登录', '2017-08-31 16:01:01', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('95', '1', 'admin', '系统用户admin登录', '2017-08-31 16:03:32', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('96', '1', 'admin', '系统用户admin登录', '2017-08-31 20:21:37', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('97', '1', 'admin', '系统用户admin登录', '2017-08-31 20:51:47', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('98', '1', 'admin', '商品分类更新【托马斯】成功', '2017-08-31 21:00:57', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('99', '1', 'admin', '系统用户admin登录', '2017-08-31 22:32:19', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('100', '1', 'admin', '系统用户admin登录', '2017-08-31 22:34:57', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('101', '1', 'admin', '商品分类更新【健身333】成功', '2017-08-31 22:55:43', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('102', '1', 'admin', '系统用户admin登录', '2017-09-01 09:12:47', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('103', '1', 'admin', '系统用户admin登录', '2017-09-01 12:52:08', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('104', '1', 'admin', '系统用户admin登录', '2017-09-01 13:45:04', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('105', '1', 'admin', '商品分类添加【ttt】成功', '2017-09-01 14:02:16', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('106', '1', 'admin', '系统用户admin登录', '2017-09-01 15:36:24', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('107', '1', 'admin', '系统用户admin登录', '2017-09-01 15:37:41', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('108', '1', 'admin', '系统用户admin登录', '2017-09-01 15:44:24', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('109', '1', 'admin', '商品分类添加【test】成功', '2017-09-01 16:10:04', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('110', '1', 'admin', '商品分类添加【ttt】成功', '2017-09-01 16:10:54', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('111', '1', 'admin', '商品分类添加【5555555】成功', '2017-09-01 16:19:47', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('112', '1', 'admin', '系统用户admin登录', '2017-09-01 17:54:25', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('113', '1', 'admin', '系统用户admin登录', '2017-09-01 21:49:11', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('114', '1', 'admin', '分配权限【1】成功', '2017-09-01 22:08:41', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('115', '1', 'admin', '系统用户admin登录', '2017-09-01 22:08:46', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('116', '1', 'admin', '系统用户admin登录', '2017-09-01 22:09:42', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('117', '1', 'admin', '系统用户admin登录', '2017-09-01 22:22:22', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('118', '1', 'admin', '系统用户admin登录', '2017-09-01 22:35:09', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('119', '1', 'admin', '商品分类添加【null】成功', '2017-09-01 22:44:18', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('120', '1', 'admin', '商品分类添加【null】成功', '2017-09-01 22:45:22', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('121', '1', 'admin', '商品品牌添加【ttt】成功', '2017-09-01 22:45:56', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('122', '1', 'admin', '商品品牌添加【rrrr】成功', '2017-09-01 22:46:52', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('123', '1', 'admin', '商品品牌添加【555】成功', '2017-09-01 22:47:18', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('124', '1', 'admin', '商品品牌添加【eee】成功', '2017-09-01 22:48:23', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('125', '1', 'admin', '商品品牌添加【222】成功', '2017-09-01 22:49:35', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('126', '1', 'admin', '系统用户admin登录', '2017-09-01 22:56:51', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('127', '1', 'admin', '商品品牌添加【444】成功', '2017-09-01 22:57:13', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('128', '1', 'admin', '商品品牌删除【129】成功', '2017-09-01 22:58:00', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('129', '1', 'admin', '商品品牌删除【130】成功', '2017-09-01 22:58:04', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('130', '1', 'admin', '商品品牌删除【132】成功', '2017-09-01 22:58:06', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('131', '1', 'admin', '商品品牌删除【134】成功', '2017-09-01 22:58:09', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('132', '1', 'admin', '商品品牌删除【131】成功', '2017-09-01 22:58:12', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('133', '1', 'admin', '商品品牌删除【133】成功', '2017-09-01 22:58:16', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('134', '1', 'admin', '系统用户admin登录', '2017-09-01 23:44:05', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('135', '1', 'admin', '系统用户admin登录', '2017-09-02 00:10:24', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('136', '1', 'admin', '系统用户admin登录', '2017-09-02 00:14:33', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('137', '1', 'admin', '系统用户admin登录', '2017-09-02 00:21:06', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('138', '1', 'admin', '系统用户admin登录', '2017-09-02 19:59:01', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('139', '1', 'admin', '系统用户admin登录', '2017-09-02 20:02:33', '192.168.0.104', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('140', '1', 'admin', '系统用户admin登录', '2017-09-02 20:21:55', '192.168.0.104', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('141', '1', 'admin', '系统用户admin登录', '2017-09-02 20:49:19', '192.168.0.104', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('142', '1', 'admin', '系统用户admin登录', '2017-09-02 20:52:20', '192.168.0.104', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('143', '1', 'admin', '系统用户admin登录', '2017-09-02 20:57:52', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('144', '1', 'admin', '系统用户admin登录', '2017-09-02 21:52:50', '192.168.0.104', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('145', '1', 'admin', '系统用户admin登录', '2017-09-02 21:52:57', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('146', '1', 'admin', '系统用户admin登录', '2017-09-02 22:20:41', '192.168.0.104', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('147', '1', 'admin', '系统用户admin登录', '2017-09-02 22:27:20', '192.168.0.104', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('148', '1', 'admin', '系统用户admin登录', '2017-09-02 22:36:24', '192.168.0.104', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('149', '1', 'admin', '系统用户admin登录', '2017-09-02 22:40:13', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('150', '1', 'admin', '系统用户admin登录', '2017-09-03 09:40:15', '192.168.0.104', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('151', '1', 'admin', '商品品牌添加【88】成功', '2017-09-03 09:41:23', '192.168.0.104', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('152', '1', 'admin', '系统用户admin登录', '2017-09-03 11:28:03', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('153', '1', 'admin', '商品品牌添加【55】成功', '2017-09-03 11:28:35', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('154', '1', 'admin', '商品品牌添加【4444】成功', '2017-09-03 11:30:19', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('155', '1', 'admin', '商品品牌添加【11】成功', '2017-09-03 11:33:13', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('156', '1', 'admin', '商品品牌添加【22】成功', '2017-09-03 11:33:50', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('157', '1', 'admin', '商品品牌添加【444】成功', '2017-09-03 11:34:48', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('158', '1', 'admin', '商品分类更新【健身】成功', '2017-09-03 11:35:37', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('159', '1', 'admin', '商品分类更新【游泳】成功', '2017-09-03 11:35:41', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('160', '1', 'admin', '系统用户admin登录', '2017-09-03 12:09:20', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('161', '1', 'admin', '商品分类添加【888】成功', '2017-09-03 12:09:43', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('162', '1', 'admin', '商品分类添加【11】成功', '2017-09-03 12:12:04', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('163', '1', 'admin', '商品分类添加【000】成功', '2017-09-03 12:13:00', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('164', '1', 'admin', '商品分类删除【154】成功', '2017-09-03 12:13:17', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('165', '1', 'admin', '商品分类删除【151】成功', '2017-09-03 12:13:22', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('166', '1', 'admin', '商品分类删除【152】成功', '2017-09-03 12:13:28', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('167', '1', 'admin', '商品分类删除【153】成功', '2017-09-03 12:13:33', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('168', '1', 'admin', '商品分类删除【150】成功', '2017-09-03 12:13:39', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('169', '1', 'admin', '系统用户admin登录', '2017-09-03 12:41:32', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('170', '1', 'admin', '系统用户admin登录', '2017-09-03 12:42:38', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('171', '1', 'admin', '系统用户admin登录', '2017-09-03 12:45:49', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('172', '1', 'admin', '系统用户admin登录', '2017-09-03 13:29:32', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('173', '1', 'admin', '系统用户admin登录', '2017-09-03 13:32:26', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('174', '1', 'admin', '系统用户admin登录', '2017-09-03 13:54:37', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('175', '1', 'admin', '系统用户admin登录', '2017-09-03 14:51:03', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('176', '1', 'admin', '系统用户admin登录', '2017-09-03 14:52:15', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('177', '1', 'admin', '系统用户admin登录', '2017-09-03 14:53:59', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('178', '1', 'admin', '系统用户admin登录', '2017-09-05 08:04:54', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('179', '1', 'admin', '系统用户admin登录', '2017-09-05 08:07:23', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('180', '1', 'admin', '系统用户admin登录', '2017-09-05 08:09:27', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('181', '1', 'admin', '系统用户admin登录', '2017-09-05 08:16:01', '0:0:0:0:0:0:0:1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('182', '1', 'admin', '系统用户admin登录', '2017-09-14 17:28:01', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('183', '1', 'admin', '分配权限【2】成功', '2017-09-14 17:28:39', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('184', '1', 'admin', '系统用户admin登录', '2017-09-14 17:28:43', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('185', '1', 'admin', '【删除系统用户】101成功', '2017-09-14 17:30:05', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('186', '1', 'admin', '【删除系统用户】106成功', '2017-09-14 17:30:07', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('187', '103', 'uuu', '系统用户uuu登录', '2017-09-14 17:31:49', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('188', '1', 'admin', '系统用户admin登录', '2017-09-14 17:32:26', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('189', '1', 'admin', '添加系统角色【test】成功', '2017-09-14 17:32:53', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('190', '103', 'uuu', '系统用户uuu登录', '2017-09-14 17:33:15', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('191', '103', 'uuu', '系统用户uuu登录', '2017-09-14 17:33:59', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('192', '1', 'admin', '系统用户admin登录', '2017-09-14 17:34:06', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('193', '1', 'admin', '分配权限【6】成功', '2017-09-14 17:34:20', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('194', '103', 'uuu', '系统用户uuu登录', '2017-09-14 17:34:25', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('195', '1', 'admin', '系统用户admin登录', '2017-09-14 17:35:38', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('196', '1', 'admin', '分配权限【6】成功', '2017-09-14 17:35:59', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('197', '103', 'uuu', '系统用户uuu登录', '2017-09-14 17:36:04', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('198', '1', 'admin', '系统用户admin登录', '2017-09-14 17:36:18', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('199', '1', 'admin', '分配权限【6】成功', '2017-09-14 17:36:36', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);
INSERT INTO `sys_log` VALUES ('200', '103', 'uuu', '系统用户uuu登录', '2017-09-14 17:36:40', '127.0.0.1', null, '0', '1', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `sys_log_client`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log_client`;
CREATE TABLE `sys_log_client` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) DEFAULT NULL,
  `logTime` datetime DEFAULT NULL,
  `accountId` int(11) DEFAULT NULL COMMENT '建议用户',
  `delFlag` char(1) DEFAULT '0' COMMENT '【0 没删除  1删除 】',
  `createdBy` varchar(45) DEFAULT NULL,
  `updatedBy` varchar(45) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB AUTO_INCREMENT=11332 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_log_client
-- ----------------------------
INSERT INTO `sys_log_client` VALUES ('11329', '账户18768195563登录系统', '2017-08-17 15:39:51', '85', '0', null, null, null, null, '116.420606', '40.068419');
INSERT INTO `sys_log_client` VALUES ('11330', '【创建融云Token】 customerId=86', '2017-08-17 15:39:51', '85', '0', null, null, null, null, null, null);
INSERT INTO `sys_log_client` VALUES ('11331', '账户18768195563登录系统', '2017-08-17 15:39:51', '85', '0', null, null, null, null, '116.420499', '40.068379');

-- ----------------------------
-- Table structure for `sys_menubar`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menubar`;
CREATE TABLE `sys_menubar` (
  `menuId` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(20) NOT NULL,
  `menuLevel` varchar(20) NOT NULL,
  `menuCode` varchar(100) NOT NULL,
  `parentId` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` char(2) NOT NULL DEFAULT '0' COMMENT '0启用  1停止',
  `resourceId` varchar(100) DEFAULT NULL,
  `isDeaf` char(2) DEFAULT NULL COMMENT '按钮 0 是 1 否',
  `descriptions` varchar(200) DEFAULT NULL,
  `authorityType` char(2) NOT NULL,
  `systemId` int(11) DEFAULT NULL,
  `delFlag` char(255) DEFAULT '0' COMMENT '【0 没删除  1删除 】',
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `resource` varchar(255) DEFAULT '1' COMMENT '权限来源  1 总部 2 城市 ',
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menubar
-- ----------------------------
INSERT INTO `sys_menubar` VALUES ('1', '系统管理', '1', '101', '0', '系统管理', '', 'glyphicon glyphicon-book', '0', 'SYS_MANAGE', '0', null, '1', '1', null, null, null, null, null, '1');
INSERT INTO `sys_menubar` VALUES ('2', '权限管理', '2', '101001', '1', '管理员管理', '', 'glyphicon glyphicon-book', '0', 'SYS_MANAGE', '0', null, '2', '1', null, null, null, null, null, '1');
INSERT INTO `sys_menubar` VALUES ('12', '管理员管理', '3', '101001001', '2', '管理员管理', '/sys/sysUser?gridView', 'user', '0', 'SYS_ADMIN_LIST', '1', null, '2', '1', null, null, null, null, null, '1');
INSERT INTO `sys_menubar` VALUES ('13', '角色管理', '3', '101001002', '2', '角色管理', '/sys/role?gridView', 'group', '0', 'SYS_ROLE_LIST', '1', null, '2', '1', null, null, null, null, null, '1');
INSERT INTO `sys_menubar` VALUES ('14', '菜单管理', '3', '101001004', '2', '菜单管理', '/sys/security?gridView', 'group', '0', 'SYS_MENU_LIST', '1', '', '2', '1', null, null, null, null, null, '1');
INSERT INTO `sys_menubar` VALUES ('40', '系统日志查询', '3', '101013004', '149', '系统日志查询', '/sys/sysLog?gridView', 'database_gear', '0', '', '', '', '2', '1', null, null, null, null, null, '1');
INSERT INTO `sys_menubar` VALUES ('54', '数据字典', '2', '901001', '154', '数据管理', '', 'glyphicon glyphicon-book', '0', '', '', '', '2', '1', null, null, null, null, null, '2');
INSERT INTO `sys_menubar` VALUES ('55', '地区管理', '3', '101008001', '159', '地区管理', '/dict/dictArea?gridView', 'database_connect', '0', '', '', '', '2', '1', null, null, null, null, null, '1');
INSERT INTO `sys_menubar` VALUES ('114', '开放城市', '3', '101008003', '159', '开放地区', '/dict/dictArea?dicrOpenCityView', null, '0', null, null, null, '2', '1', null, null, null, null, null, '1');
INSERT INTO `sys_menubar` VALUES ('118', '城市服务类型', '3', '901001001', '54', '城市服务类型', '/dict/dictService?serviceTypeForCityListView', null, '0', null, null, null, '2', '1', null, null, null, null, null, '2');
INSERT INTO `sys_menubar` VALUES ('121', '账户管理', '2', '901002', '154', '城市账户管理', null, 'glyphicon glyphicon-globe', '0', null, '1', null, '2', '1', null, null, null, null, null, '2');
INSERT INTO `sys_menubar` VALUES ('122', '账户管理', '3', '901002001', '121', '城市账户管理', '/sys/sysUserAction?gridViewAgent', null, '0', null, '1', null, '2', '1', null, null, null, null, null, '2');
INSERT INTO `sys_menubar` VALUES ('130', '用户管理', '2', '101007', '1', '用户管理', null, 'glyphicon glyphicon-user', '0', null, null, null, '2', '1', null, null, null, null, null, '1');
INSERT INTO `sys_menubar` VALUES ('131', '用户查询', '3', '901003001', '133', '城市用户查询', '/customer?cityGridView', null, '0', null, null, null, '2', '1', null, null, null, null, null, '2');
INSERT INTO `sys_menubar` VALUES ('132', '用户管理', '3', '101007002', '130', '用户管理', '/account?gridView', null, '0', null, null, null, '2', '1', null, null, null, '2017-08-17 14:58:33', null, '1');
INSERT INTO `sys_menubar` VALUES ('133', '用户管理', '2', '901003', '154', '城市用户管理', null, 'glyphicon glyphicon-floppy-save', '0', null, null, null, '2', '1', null, null, null, null, null, '2');
INSERT INTO `sys_menubar` VALUES ('149', '配置监控', '2', '101013', '1', '配置监控', null, 'glyphicon glyphicon-record', '0', null, null, null, '2', '1', '0', null, null, null, null, '1');
INSERT INTO `sys_menubar` VALUES ('154', '系统管理【子】', '1', '901', '0', '系统管理', null, null, '0', null, null, null, '2', '1', '0', null, null, null, null, '1');
INSERT INTO `sys_menubar` VALUES ('159', '数据字典', '2', '101008', '1', '数据字典', null, 'glyphicon glyphicon-bookmark', '0', null, null, null, '2', '1', '0', null, null, null, null, '1');
INSERT INTO `sys_menubar` VALUES ('166', '客户端日志查询', '3', '101013003', '149', '客户端日志查询', '/sys/sysLog?clientLogList', '', '0', '', '', null, '2', null, '0', null, null, '2017-08-17 15:28:05', '2014-12-20 10:53:35', '1');
INSERT INTO `sys_menubar` VALUES ('176', '系统配置', '3', '101013001', '149', '系统配置', '/config?configSystem', '', '0', '', '', null, '2', null, '0', null, null, '2017-08-17 16:14:26', '2014-12-25 20:17:57', '1');
INSERT INTO `sys_menubar` VALUES ('180', '统计管理', '2', '101015', '1', '统计管理', '', 'glyphicon glyphicon-stats', '0', '', '', null, '2', null, '0', null, null, null, '2015-01-20 10:28:01', '1');
INSERT INTO `sys_menubar` VALUES ('181', '统计操作', '3', '101015001', '180', '统计操作', '/stat?getCustomerStatView', 'glyphicon glyphicon-stats', '0', '', '', null, '2', null, '0', null, null, null, '2015-01-20 11:02:56', '1');
INSERT INTO `sys_menubar` VALUES ('182', '统计查询', '3', '101015002', '180', '统计查询', '/stat?gridView', '', '0', '', '', null, '2', null, '0', null, null, '2017-08-11 11:00:13', '2015-01-23 18:34:40', '1');
INSERT INTO `sys_menubar` VALUES ('187', '数据备份', '3', '101001005', '2', '数据备份', '/data?gridView', '', '0', '', '', null, '2', null, '0', null, null, null, '2015-01-30 16:59:55', '1');
INSERT INTO `sys_menubar` VALUES ('188', '在线用户', '3', '101001006', '2', '在线用户', '/sys/sysUser?onlineUserList', '', '0', '', '', null, '2', null, '0', null, null, null, '2015-02-03 20:44:05', '1');
INSERT INTO `sys_menubar` VALUES ('189', '商品管理', '2', '101016', '1', '商品管理', '', 'glyphicon glyphicon-th-large', '0', null, '', null, '2', null, '0', null, null, '2017-08-30 20:39:13', '2017-08-30 20:36:40', '1');
INSERT INTO `sys_menubar` VALUES ('190', '商品管理', '3', '101016001', '189', '商品管理', '/product?gridView', '', '0', null, '', null, '2', null, '0', null, null, null, '2017-08-30 20:42:35', '1');
INSERT INTO `sys_menubar` VALUES ('191', '商品类型', '3', '101016002', '189', '商品类型', '/product?categoryList', '', '0', null, '', null, '2', null, '0', null, null, null, '2017-08-30 20:44:34', '1');
INSERT INTO `sys_menubar` VALUES ('192', '品牌管理', '3', '101016003', '189', '品牌管理', '/product?brandList', '', '0', null, '', null, '2', null, '0', null, null, null, '2017-09-01 22:08:31', '1');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleDesc` varchar(100) NOT NULL,
  `roleName` varchar(100) NOT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `createdTime` datetime NOT NULL,
  `delFlag` varchar(2) NOT NULL DEFAULT '0' COMMENT '【0 没删除  1删除 】',
  `createdBy` varchar(20) DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `updatedBy` varchar(20) DEFAULT NULL,
  `resource` varchar(255) DEFAULT '1' COMMENT '角色来源  1 总部 2理商代',
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '系统管理员', 'qweqwe', '2011-08-09 15:01:41', '0', null, null, null, '1');
INSERT INTO `sys_role` VALUES ('2', '订单管理员', '订单管理员', '订单管理员', '2011-08-10 14:37:22', '0', null, '2017-08-17 16:15:48', null, '2');
INSERT INTO `sys_role` VALUES ('6', 'test', 'test', 'tst', '2017-09-14 17:32:53', '0', 'admin', null, null, '1');

-- ----------------------------
-- Table structure for `sys_rolemenu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_rolemenu`;
CREATE TABLE `sys_rolemenu` (
  `roleMenuId` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL,
  `menuId` int(11) DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `delFlag` char(255) DEFAULT '0' COMMENT '【0 没删除  1删除 】',
  PRIMARY KEY (`roleMenuId`),
  KEY `ROLEID` (`roleId`),
  KEY `MENUID` (`menuId`)
) ENGINE=InnoDB AUTO_INCREMENT=6593 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rolemenu
-- ----------------------------
INSERT INTO `sys_rolemenu` VALUES ('6551', '1', '2', '2017-09-01 22:08:40', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6552', '1', '12', '2017-09-01 22:08:40', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6553', '1', '13', '2017-09-01 22:08:40', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6554', '1', '14', '2017-09-01 22:08:40', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6555', '1', '187', '2017-09-01 22:08:40', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6556', '1', '188', '2017-09-01 22:08:40', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6557', '1', '130', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6558', '1', '132', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6559', '1', '149', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6560', '1', '40', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6561', '1', '166', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6562', '1', '176', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6563', '1', '159', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6564', '1', '55', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6565', '1', '114', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6566', '1', '180', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6567', '1', '181', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6568', '1', '182', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6569', '1', '189', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6570', '1', '190', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6571', '1', '191', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6572', '1', '192', '2017-09-01 22:08:41', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6573', '2', '54', '2017-09-14 17:28:39', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6574', '2', '118', '2017-09-14 17:28:39', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6585', '6', '2', '2017-09-14 17:36:35', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6586', '6', '12', '2017-09-14 17:36:35', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6587', '6', '130', '2017-09-14 17:36:35', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6588', '6', '132', '2017-09-14 17:36:35', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6589', '6', '189', '2017-09-14 17:36:35', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6590', '6', '190', '2017-09-14 17:36:35', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6591', '6', '191', '2017-09-14 17:36:35', null, null, null, '0');
INSERT INTO `sys_rolemenu` VALUES ('6592', '6', '192', '2017-09-14 17:36:35', null, null, null, '0');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `realName` varchar(20) NOT NULL,
  `loginTime` datetime DEFAULT NULL,
  `isSuper` char(2) NOT NULL COMMENT '是否超级管理员【0 是 1 否】',
  `isPredefine` char(2) NOT NULL DEFAULT '1' COMMENT '是否预定义  0 是  1 否',
  `status` char(2) NOT NULL DEFAULT '0' COMMENT '统系用户状态 0  常正 1 停止',
  `telePhone` varchar(15) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `userType` char(255) DEFAULT NULL COMMENT '账户类型 0  系统账户 1  城市管理账户   2  城市普通账户',
  `agentId` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `delFlag` varchar(2) NOT NULL DEFAULT '0' COMMENT '【0 没删除  1删除 】',
  `createdBy` varchar(20) DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `createdTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updatedBy` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '123456', '超级管理员', '2017-09-14 17:36:18', '0', '0', '0', '13245678907', '000000', '0', null, 'haijun8888821899999@163.com', '1', null, null, '2012-11-22 09:37:31', null);
INSERT INTO `sys_user` VALUES ('103', 'uuu', '123456', 'uuu', '2017-09-14 17:36:40', '1', '1', '0', '15010123236', 'rtert', '0', null, '234@13.com', '0', 'admin', null, '2017-03-24 14:19:53', null);
INSERT INTO `sys_user` VALUES ('104', 'sysUser', 'sysUser', 'sysUser', null, '1', '1', '0', '15010123269', 'sysUser', '0', null, 'sysUser@sg.com', '0', 'admin', null, '2017-08-10 16:09:51', null);
INSERT INTO `sys_user` VALUES ('105', 'lihaijun', 'lihaijun', 'lihaijun', null, '1', '1', '0', '15010123236', '', '0', null, 'lihaijun@333.com', '0', 'admin', null, '2017-08-10 16:22:09', null);

-- ----------------------------
-- Table structure for `sys_userrole`
-- ----------------------------
DROP TABLE IF EXISTS `sys_userrole`;
CREATE TABLE `sys_userrole` (
  `userRoleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdTime` datetime NOT NULL,
  `createdBy` varchar(255) DEFAULT NULL,
  `updatedBy` varchar(255) DEFAULT NULL,
  `updatedTime` datetime DEFAULT NULL,
  `delFlag` varchar(255) DEFAULT '0' COMMENT '【0 没删除  1删除 】',
  PRIMARY KEY (`userRoleId`),
  KEY `USERID` (`userId`),
  KEY `ROLEID` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=438 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_userrole
-- ----------------------------
INSERT INTO `sys_userrole` VALUES ('134', '1', '1', '2014-12-23 17:09:50', null, null, null, '0');
INSERT INTO `sys_userrole` VALUES ('437', '6', '103', '0000-00-00 00:00:00', null, null, null, '0');
