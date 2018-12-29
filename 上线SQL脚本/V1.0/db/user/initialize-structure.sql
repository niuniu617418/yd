/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.35-log : Database - sd_usercenter
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sd_usercenter` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sd_usercenter`;

/*Table structure for table `tuc_appVersion` */

DROP TABLE IF EXISTS `tuc_appVersion`;

CREATE TABLE `tuc_appVersion` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `versionValue` int(11) NOT NULL COMMENT '版本值',
  `deviceType` varchar(20) NOT NULL COMMENT '设备类型（IOS,Android)',
  `versionName` varchar(20) NOT NULL COMMENT '版本名称',
  `md5` varchar(80) NOT NULL COMMENT 'MD5校验和',
  `url` varchar(512) NOT NULL COMMENT '下载地址',
  `detail` text NOT NULL COMMENT '描述',
  `enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否开启该次更新,针对Android热更新出问题时设置开启，从服务端获取新版本',
  `isForceUpdate` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否强制更新（0否，1是）',
  `managerId` bigint(20) NOT NULL COMMENT '修改人Id',
  `managerName` varchar(64) NOT NULL COMMENT '修改人姓名',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_vv_d` (`versionValue`,`deviceType`),
  UNIQUE KEY `unq_vn_d` (`versionName`,`deviceType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='APP版本';

/*Table structure for table `tuc_areaDictionary` */

DROP TABLE IF EXISTS `tuc_areaDictionary`;

CREATE TABLE `tuc_areaDictionary` (
  `areaCode` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '地区编码',
  `areaName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '地区名称',
  `parentCode` varchar(6) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '上级区域编码',
  PRIMARY KEY (`areaCode`),
  KEY `idx_areaName` (`areaName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='0、 【项目配置】地区字典表';

/*Table structure for table `tuc_bankInfo` */

DROP TABLE IF EXISTS `tuc_bankInfo`;

CREATE TABLE `tuc_bankInfo` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `bankCode` varchar(16) NOT NULL COMMENT '银行代码',
  `bankName` varchar(32) NOT NULL COMMENT '银行名称',
  `singleRechargeMax` int(11) NOT NULL DEFAULT '0' COMMENT '单笔充值限额',
  `dayRechargeMax` int(11) NOT NULL DEFAULT '0' COMMENT '单日充值限额',
  `bankTel` varchar(15) NOT NULL COMMENT '银行电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_bankCode` (`bankCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1、 【业务配置++】银行相关信息';

/*Table structure for table `tuc_behaviorForbidConf` */

DROP TABLE IF EXISTS `tuc_behaviorForbidConf`;

CREATE TABLE `tuc_behaviorForbidConf` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `itemId` bigint(20) NOT NULL COMMENT '禁止项id',
  `forbidDesc` varchar(40) NOT NULL COMMENT '禁止简述',
  `tips` varchar(512) NOT NULL COMMENT '提示内容',
  `createUserId` bigint(20) NOT NULL COMMENT '创建人id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateUserId` bigint(20) NOT NULL COMMENT '更新人id',
  `updateTime` datetime(3) NOT NULL COMMENT '更新时间',
  `deleted` tinyint(1) DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户禁止行为配置';

/*Table structure for table `tuc_behaviorForbidItem` */

DROP TABLE IF EXISTS `tuc_behaviorForbidItem`;

CREATE TABLE `tuc_behaviorForbidItem` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `name` varchar(40) NOT NULL COMMENT '禁止项名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行为禁止项';

/*Table structure for table `tuc_callRecord` */

DROP TABLE IF EXISTS `tuc_callRecord`;

CREATE TABLE `tuc_callRecord` (
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `isAuth` tinyint(1) NOT NULL COMMENT '是否授权（0:未获取  1:获取成功）',
  `mobilePhone` varchar(20) NOT NULL COMMENT '本人手机号码',
  `registerTime` datetime NOT NULL COMMENT '是入网时长',
  `total` int(10) NOT NULL COMMENT '近6个月有效通话次数（主叫或被叫通话时间>1分钟）≥4的手机号码数量',
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通话记录信息';

/*Table structure for table `tuc_callRecordDetail` */

DROP TABLE IF EXISTS `tuc_callRecordDetail`;

CREATE TABLE `tuc_callRecordDetail` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `isRelationUser` tinyint(1) DEFAULT NULL COMMENT '号码是否与用户的“预留联系人”号码匹配 （1：是；0：否）',
  `isUser` tinyint(1) DEFAULT NULL COMMENT '是否是你我金融注册用户（1：是；0：否）',
  `isIssueLoan` tinyint(1) DEFAULT NULL COMMENT '是否在你我金融发布过借款记录（1：是；0：否）',
  `isOverdueRepay` tinyint(1) DEFAULT NULL COMMENT '是否在你我金融有逾期（1：是；0：否）',
  `isCurrentOverdue` tinyint(1) DEFAULT NULL COMMENT '是否当前逾期（1：是；0：否）',
  `isBlacklist` tinyint(1) DEFAULT NULL COMMENT '是否黑名单（1：是；0：否）',
  `contactName` varchar(20) DEFAULT NULL COMMENT '联系人姓名',
  `contactPhone` varchar(20) DEFAULT NULL COMMENT '联系人手机号',
  `isContactName` tinyint(1) DEFAULT NULL COMMENT '是否常用通讯录匹配1:是 0:否',
  `contactNameMore` varchar(200) DEFAULT NULL COMMENT 'json存储 通讯录中匹配到的联系人列表',
  `callSite` varchar(20) DEFAULT NULL COMMENT '通话地点',
  `callSiteNumber` int(10) DEFAULT NULL COMMENT '通话地点通话次数',
  `callSiteMore` varchar(200) DEFAULT NULL COMMENT '更多通话地点 json数组',
  `phoneProvide` varchar(20) DEFAULT NULL COMMENT '通话号码归属地',
  `contactNumber` varchar(20) DEFAULT NULL COMMENT '联系次数',
  `dialingNumber` varchar(20) DEFAULT NULL COMMENT '主叫次数',
  `calledNumber` varchar(20) DEFAULT NULL COMMENT '被叫次数',
  `callTime` varchar(20) DEFAULT NULL COMMENT '累计通话时长',
  `Call6Time` datetime DEFAULT NULL COMMENT '6个月首次通话时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通话记录详细信息';

/*Table structure for table `tuc_cardBIN` */

DROP TABLE IF EXISTS `tuc_cardBIN`;

CREATE TABLE `tuc_cardBIN` (
  `id` bigint(11) NOT NULL COMMENT '主键标识',
  `bankName` varchar(32) DEFAULT NULL COMMENT '银行名称',
  `bankCode` varchar(16) DEFAULT NULL COMMENT '银行编码',
  `cardClassName` varchar(50) DEFAULT NULL COMMENT '卡种名称',
  `cardLength` int(4) DEFAULT NULL COMMENT '卡号长度',
  `cardBin` varchar(20) DEFAULT NULL COMMENT '卡BIN',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1、 【业务配置++】银行卡BIN表';

/*Table structure for table `tuc_communicationRecord` */

DROP TABLE IF EXISTS `tuc_communicationRecord`;

CREATE TABLE `tuc_communicationRecord` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `relId` bigint(20) DEFAULT NULL COMMENT '关联Id',
  `recType` varchar(50) DEFAULT 'phoneCheck' COMMENT '沟通分类',
  `objectId` bigint(20) DEFAULT NULL COMMENT '所属标的Id',
  `mobile` varchar(64) DEFAULT NULL COMMENT '手机号',
  `commTime` datetime DEFAULT NULL COMMENT '沟通时间',
  `commResult` int(2) DEFAULT NULL COMMENT '通话结果（1：身份真实、认识借款人  2：身份真实、不认识借款人  3：身份不真实、不认识借款人  4：身份不真实、认识借款人  5：借款人本人接听  6：无人接听  7：停机  8：关机  9：空号  10：模型有误，无需电核）',
  `remark` varchar(200) DEFAULT NULL COMMENT '通话备注',
  `checker` varchar(20) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='D2、 沟通记录表';

/*Table structure for table `tuc_contactInfo` */

DROP TABLE IF EXISTS `tuc_contactInfo`;

CREATE TABLE `tuc_contactInfo` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `deviceID` varchar(64) DEFAULT NULL COMMENT '设备ID',
  `type` tinyint(1) DEFAULT NULL COMMENT '类型（0.常用 1.普通）',
  `os` varchar(20) DEFAULT NULL COMMENT '操作系统',
  `equipmentStatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否越狱 0.否 1是',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '通讯录状态(1.无通讯录;2.无变动;3.有较小变动,4.有明显变动)',
  `phoneNumbers` int(10) NOT NULL DEFAULT '0' COMMENT '通讯录号码数',
  `unNormalPhones` int(10) NOT NULL DEFAULT '0' COMMENT '异常号码（异常率）',
  `matchPhones` int(10) NOT NULL DEFAULT '0' COMMENT '有通话记录（通话率）',
  `otherCount` varchar(2000) DEFAULT NULL COMMENT '使用该通讯录的其他账号',
  `relativeContactNum` int(10) DEFAULT NULL COMMENT '亲属联系人数量',
  `contactUpdateTime` datetime DEFAULT NULL COMMENT '通讯录更新时间',
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通讯录信息表';

/*Table structure for table `tuc_contactPhoneDetail` */

DROP TABLE IF EXISTS `tuc_contactPhoneDetail`;

CREATE TABLE `tuc_contactPhoneDetail` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `contactId` bigint(20) NOT NULL COMMENT '通讯录信息ID',
  `phoneName` varchar(64) DEFAULT NULL COMMENT '姓名',
  `phoneNum` varchar(64) DEFAULT NULL COMMENT '通讯录号码',
  `phoneStatus` varchar(100) DEFAULT NULL COMMENT '号码是否正常0.正常 1.异常（敏感词汇）2.异常（短号）3.异常（重复号码）4.异常（格式错误）5.异常（其它错误） 多个以‘,’隔开',
  `concactTimes` int(10) NOT NULL DEFAULT '0' COMMENT '6个月内通话次数',
  `changeStatus` tinyint(4) DEFAULT NULL COMMENT '变化状态 0.首次同步 1.新增加 2.已删除',
  `isRelationUser` tinyint(1) NOT NULL DEFAULT '0' COMMENT '号码是否与用户的“预留联系人”号码匹配 （1：是；0：否）',
  `isUser` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是你我金融注册用户（1：是；0：否）',
  `isIssueLoan` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否在你我金融发布过借款记录（1：是；0：否）',
  `isOverdueRepay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否还款逾期（1：是；0：否）',
  `isCurrentOverdue` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否当前逾期（1：是；0：否）',
  `isBlacklist` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否黑名单（1:是 0:否）',
  `phoneUpdateTime` datetime DEFAULT NULL COMMENT '号码更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通讯录号码详情表';

/*Table structure for table `tuc_feedBack` */

DROP TABLE IF EXISTS `tuc_feedBack`;

CREATE TABLE `tuc_feedBack` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户id',
  `realName` varchar(32) DEFAULT NULL COMMENT '用户姓名',
  `mobileNo` varchar(32) DEFAULT NULL COMMENT '手机号码',
  `ip` varchar(32) NOT NULL COMMENT 'ip地址',
  `deviceId` varchar(64) NOT NULL COMMENT '设备id',
  `deviceType` varchar(16) NOT NULL COMMENT '设备类型（IOS,Android）',
  `versionName` varchar(32) NOT NULL COMMENT '版本名称',
  `detail` varchar(512) NOT NULL COMMENT '描述',
  `delFlag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识：1-已删除、0-未删除',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户反馈';

/*Table structure for table `tuc_linkManInfo` */

DROP TABLE IF EXISTS `tuc_linkManInfo`;

CREATE TABLE `tuc_linkManInfo` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `relation` tinyint(4) NOT NULL DEFAULT '7' COMMENT '关系：1-配偶，2-父亲，3-母亲，4-兄弟，5-姐妹，6-子女，7-其他',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `mobileNo` varchar(16) NOT NULL DEFAULT '' COMMENT '手机号',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A2、 用户联系人';

/*Table structure for table `tuc_messageRecord` */

DROP TABLE IF EXISTS `tuc_messageRecord`;

CREATE TABLE `tuc_messageRecord` (
  `id` bigint(20) NOT NULL,
  `userId` varchar(50) NOT NULL COMMENT '消息发送方可能是用户id,也可能是system',
  `messageContent` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '消息内容',
  `recipient` bigint(20) DEFAULT NULL COMMENT '消息接收人',
  `mobile` varchar(50) NOT NULL COMMENT '接收人手机号',
  `sendWay` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '发送方式  0：短信   1：通知',
  `messageType` tinyint(10) NOT NULL COMMENT '1--自定义公告\r\n2--开户成功\r\n3--申请成功\r\n4--审核成功\r\n5--到账通知\r\n6--到账失败提醒\r\n7--审核不通过\r\n8--项目流标\r\n9--还款提醒\r\n10--逾期提醒\r\n11--银行卡换绑成功\r\n12--银行卡换绑失败',
  `viewStatus` tinyint(2) NOT NULL DEFAULT '0' COMMENT '阅读状态  0--未读   1--已读',
  `status` tinyint(2) DEFAULT '0' COMMENT '发送状态，-1：待发送；0：成功；1：失败',
  `sendTime` datetime DEFAULT NULL COMMENT '发送时间',
  `channel` tinyint(2) DEFAULT '0' COMMENT '短信通道 0:普通 1:营销',
  PRIMARY KEY (`id`),
  KEY `idx_recipient` (`recipient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='D1、 消息记录表';

/*Table structure for table `tuc_messageTemplate` */

DROP TABLE IF EXISTS `tuc_messageTemplate`;

CREATE TABLE `tuc_messageTemplate` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `templateKey` varchar(64) NOT NULL COMMENT '模板KEY',
  `templateTitle` varchar(100) NOT NULL COMMENT '模板标题',
  `templateContent` text COMMENT '模板内容(无链接)',
  `templateContentWithUrl` text COMMENT '模板内容(有链接)',
  `createManager` bigint(20) NOT NULL DEFAULT '1' COMMENT '创建管理员',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateManager` bigint(20) NOT NULL DEFAULT '1' COMMENT '修改管理员',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_templateKey` (`templateKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC COMMENT='0、 【项目配置】短信模板表';

/*Table structure for table `tuc_projectConfig` */

DROP TABLE IF EXISTS `tuc_projectConfig`;

CREATE TABLE `tuc_projectConfig` (
  `configKey` varchar(64) NOT NULL COMMENT '配置键',
  `configValue` varchar(1024) NOT NULL COMMENT '配置值',
  `configType` varchar(128) DEFAULT NULL COMMENT '配置类型',
  `description` varchar(256) DEFAULT NULL COMMENT '配置描述',
  `createTime` datetime DEFAULT NULL,
  `createOperator` bigint(20) DEFAULT NULL,
  `updateOperator` bigint(20) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`configKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='0、 【项目配置】项目参数配置';

/*Table structure for table `tuc_pushDevice` */

DROP TABLE IF EXISTS `tuc_pushDevice`;

CREATE TABLE `tuc_pushDevice` (
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `deviceType` varchar(15) NOT NULL COMMENT '设备类型',
  `registrationId` varchar(50) NOT NULL COMMENT '注册id',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推送设备信息';

/*Table structure for table `tuc_pushMsg` */

DROP TABLE IF EXISTS `tuc_pushMsg`;

CREATE TABLE `tuc_pushMsg` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `registrationId` varchar(50) NOT NULL COMMENT '设备标识',
  `notificationTitle` varchar(255) NOT NULL COMMENT '通知内容标题',
  `msgTitle` varchar(50) NOT NULL COMMENT '消息内容标题',
  `msgContent` varchar(500) NOT NULL COMMENT '消息内容',
  `extrasparam` varchar(255) DEFAULT NULL COMMENT '扩展字段',
  `pushTime` datetime NOT NULL COMMENT '推送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='推送消息记录';

/*Table structure for table `tuc_smsContent` */

DROP TABLE IF EXISTS `tuc_smsContent`;

CREATE TABLE `tuc_smsContent` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `deviceID` varchar(64) DEFAULT NULL COMMENT '设备ID',
  `highRiskNum` int(10) DEFAULT NULL COMMENT '高风险短信',
  `platformNum` int(10) DEFAULT NULL COMMENT '贷款平台个数',
  `incomeNum` int(10) DEFAULT NULL COMMENT '支付相关短信（入）',
  `payNum` int(10) DEFAULT NULL COMMENT '支付相关短信（出）',
  `type` tinyint(4) DEFAULT NULL COMMENT '类型 0.常用 1.普通',
  `lastTime` datetime DEFAULT NULL COMMENT '最后更新时间',
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信信息主表';

/*Table structure for table `tuc_smsInfoList` */

DROP TABLE IF EXISTS `tuc_smsInfoList`;

CREATE TABLE `tuc_smsInfoList` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `contentId` bigint(20) NOT NULL COMMENT '短信信息ID',
  `mobile` varchar(20) DEFAULT NULL COMMENT '通讯录号码',
  `time` datetime DEFAULT NULL COMMENT '时间',
  `statisticType` tinyint(4) DEFAULT NULL COMMENT '统计类型 0.其它 1.高风险短信 2.支付相关短信（入）3.支付相关短信（出）4.贷款平台个数',
  `sendOrReceive` tinyint(4) DEFAULT NULL COMMENT '1.发送 2.收取',
  `smsContent` varchar(256) DEFAULT NULL COMMENT '短信内容',
  `keywords` varchar(256) DEFAULT NULL COMMENT '关键字',
  PRIMARY KEY (`id`),
  KEY `idx_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信详细信息表';

/*Table structure for table `tuc_sysParam` */

DROP TABLE IF EXISTS `tuc_sysParam`;

CREATE TABLE `tuc_sysParam` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `paramType` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '变量类型',
  `paramKey` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '变量键',
  `paramValue` varchar(2048) NOT NULL COMMENT '变量值',
  `delFlag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态：0-正常;1-删除',
  `description` varchar(256) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '描述',
  `createOperator` bigint(20) DEFAULT NULL COMMENT '创建人Id',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateOperator` bigint(20) DEFAULT NULL COMMENT '修改人Id',
  `updateTime` datetime DEFAULT NULL COMMENT '更改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_paramKey` (`paramKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='0、 【项目配置】系统变量';

/*Table structure for table `tuc_userBankApplyRecord` */

DROP TABLE IF EXISTS `tuc_userBankApplyRecord`;

CREATE TABLE `tuc_userBankApplyRecord` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `applyType` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1、绑卡 2、解绑 ',
  `realName` varchar(20) NOT NULL COMMENT '姓名',
  `identityCard` varchar(50) NOT NULL COMMENT '身份证号',
  `bankAccount` varchar(50) NOT NULL COMMENT '银行卡号',
  `bankMobile` varchar(20) NOT NULL COMMENT '银行预留手机号',
  `openAccountAddre` varchar(255) DEFAULT NULL COMMENT '开户行所在地',
  `applyResult` tinyint(4) NOT NULL DEFAULT '1' COMMENT '申请结果（0、失败 1、成功 ）',
  `failReason` varchar(500) DEFAULT NULL COMMENT '失败原因',
  `applyTime` datetime NOT NULL COMMENT '申请时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='C、 用户银行卡申请记录表';

/*Table structure for table `tuc_userBasicInfo` */

DROP TABLE IF EXISTS `tuc_userBasicInfo`;

CREATE TABLE `tuc_userBasicInfo` (
  `userId` bigint(20) NOT NULL,
  `mobileNo` varchar(30) NOT NULL DEFAULT '' COMMENT '手机号',
  `sesameCode` int(11) NOT NULL DEFAULT '0' COMMENT '芝麻分',
  `sesameFailCode` varchar(20) DEFAULT NULL COMMENT '失败原因（错误编码）',
  `sesameUpdateTime` datetime DEFAULT NULL COMMENT '芝麻分更新时间',
  `caCertId` varchar(32) DEFAULT NULL COMMENT 'CA证书编号（法大大）',
  `autoSign` tinyint(4) DEFAULT NULL COMMENT '法大大自动签章（0、否，1、是）',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A1、 用户基本信息';

/*Table structure for table `tuc_userBehaviorAllow` */

DROP TABLE IF EXISTS `tuc_userBehaviorAllow`;

CREATE TABLE `tuc_userBehaviorAllow` (
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `allowItem` varchar(32) NOT NULL COMMENT '允许行为项:sendRedBag',
  `beginDate` datetime NOT NULL COMMENT '允许开始时间',
  `endDate` datetime DEFAULT NULL COMMENT '允许结束时间(为空表示不限时间)',
  `forbidDesc` varchar(256) DEFAULT NULL COMMENT '限制描述',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态1:有效,0:无效',
  `operatorId` bigint(20) NOT NULL COMMENT '设置管理员Id',
  `setTime` datetime NOT NULL COMMENT '设置时间',
  PRIMARY KEY (`userId`,`allowItem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1、 【业务配置++】用户行为允许表';

/*Table structure for table `tuc_userBehaviorForbid` */

DROP TABLE IF EXISTS `tuc_userBehaviorForbid`;

CREATE TABLE `tuc_userBehaviorForbid` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户UID',
  `identityCard` varchar(32) NOT NULL DEFAULT '' COMMENT '身份证号',
  `forbidItem` varchar(20) NOT NULL COMMENT '行为限制项（login:登录、recharge:充值、sendRedBag:发红包、withdraw:提现、investigate:尽调、speedBorrowed:极速借、borrowed:信用借、、identity:身份认证、guarantor:跟保、investor:投资、forbidSpeech:禁言、niiwoCircle:你我圈、buildGroup:建群、attention:关注）',
  `forbidDesc` varchar(256) NOT NULL DEFAULT '' COMMENT '限制描述',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态1:有效,0:无效',
  `forbidBehaviorTypeId` bigint(20) DEFAULT NULL COMMENT '用户行为禁止类型ID',
  `beginDate` datetime NOT NULL COMMENT '限制开始时间',
  `endDate` datetime DEFAULT NULL COMMENT '限制结束时间',
  `operatorId` bigint(20) NOT NULL COMMENT '操作人',
  `setTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '设置时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1、 【业务配置++】用户行为禁止表';

/*Table structure for table `tuc_userBehaviorForbidType` */

DROP TABLE IF EXISTS `tuc_userBehaviorForbidType`;

CREATE TABLE `tuc_userBehaviorForbidType` (
  `id` bigint(20) NOT NULL,
  `forbidItem` varchar(20) NOT NULL COMMENT '行为禁止项（login:登录、recharge:充值、sendRedBag:发红包、withdraw:提现、investigate:尽调、speedBorrowed:极速借、borrowed:信用借、、identity:身份认证、guarantor:跟保、investor:投资、forbidSpeech:禁言、niiwoCircle:你我圈、buildGroup:建群、attention:关注）',
  `forbidTypeName` varchar(64) NOT NULL COMMENT '限制类型名称',
  `tipsContent` varchar(256) NOT NULL DEFAULT '' COMMENT '提示内容',
  `delFlag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识（0:否 1:是）',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `createOperator` bigint(20) NOT NULL COMMENT '创建人',
  `updateOperator` bigint(20) NOT NULL COMMENT '修改人',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1、 【业务配置++】用户行为禁止类型';

/*Table structure for table `tuc_userBindBankRecord` */

DROP TABLE IF EXISTS `tuc_userBindBankRecord`;

CREATE TABLE `tuc_userBindBankRecord` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `bankAccount` varchar(50) NOT NULL COMMENT '银行卡号',
  `bankName` varchar(100) NOT NULL COMMENT '银行名称',
  `bankCode` varchar(50) NOT NULL COMMENT '银行编码',
  `bankUserName` varchar(50) NOT NULL COMMENT '账户名',
  `idCard` varchar(50) NOT NULL COMMENT '身份证号',
  `bindMobile` varchar(50) NOT NULL COMMENT '绑定手机号',
  `bankProvince` varchar(128) NOT NULL COMMENT '银行所在行政区',
  `bankCity` varchar(128) DEFAULT NULL COMMENT '银行卡所在市',
  `withholdStatus` tinyint(4) DEFAULT NULL COMMENT '代扣状态',
  `protocolStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '协议签署状态（0：未签署，1：已签署）',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '绑卡状态（0、无效，1、有效）',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='C、 用户绑卡记录表';

/*Table structure for table `tuc_userBlackList` */

DROP TABLE IF EXISTS `tuc_userBlackList`;

CREATE TABLE `tuc_userBlackList` (
  `identityCard` varchar(32) NOT NULL COMMENT '身份证号',
  `userId` bigint(20) DEFAULT NULL,
  `mobileNo` varchar(30) NOT NULL COMMENT '手机号',
  `realName` varchar(16) NOT NULL COMMENT '姓名',
  `userType` tinyint(4) NOT NULL COMMENT '用户类型(1.用户;2.非用户)',
  `listType` tinyint(4) NOT NULL COMMENT '名单类型(1.黑名单(对应验证不通过);2.白名单，3.可疑名单（对应验证需要人工审核)',
  `addressProvince` varchar(16) NOT NULL DEFAULT '' COMMENT '省',
  `addressCity` varchar(16) NOT NULL DEFAULT '' COMMENT '市',
  `detailedAddress` varchar(150) NOT NULL DEFAULT '' COMMENT '详细地址',
  `blacklistDesc` varchar(256) NOT NULL DEFAULT '' COMMENT '黑名单备注',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `createOperator` bigint(20) NOT NULL COMMENT '创建人',
  `updateOperator` bigint(20) NOT NULL COMMENT '修改人',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`identityCard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1、 【业务配置++】用户黑名单';

/*Table structure for table `tuc_userDataFile` */

DROP TABLE IF EXISTS `tuc_userDataFile`;

CREATE TABLE `tuc_userDataFile` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `dataType` tinyint(4) NOT NULL COMMENT '资料类型',
  `subType` tinyint(4) NOT NULL COMMENT '子类型，根据资料类型判断',
  `fileUrl` varchar(300) NOT NULL DEFAULT '' COMMENT '文件地址',
  `fileThumbnailUrl` varchar(300) DEFAULT '' COMMENT '文件缩略地址',
  `fileReleaseUrl` varchar(300) DEFAULT '' COMMENT '打码后地址',
  `fileReleaseThumbnailUrl` varchar(300) DEFAULT '' COMMENT '打码后的缩略地址',
  `delStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态（0、未删除，1、已删除）',
  `description` varchar(100) DEFAULT '' COMMENT '描述',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A、 用户资料附件表';

/*Table structure for table `tuc_userDataStatus` */

DROP TABLE IF EXISTS `tuc_userDataStatus`;

CREATE TABLE `tuc_userDataStatus` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `dataType` tinyint(4) NOT NULL COMMENT '资料或授权类型（UserDataTypeEnum枚举值）',
  `dataStatus` tinyint(4) NOT NULL COMMENT '状态，根据资料或授权类型（UserDataStatusEnum枚举值）',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='B1、 用户资料或认证状态';

/*Table structure for table `tuc_userFaceVerificationInfo` */

DROP TABLE IF EXISTS `tuc_userFaceVerificationInfo`;

CREATE TABLE `tuc_userFaceVerificationInfo` (
  `userId` bigint(20) NOT NULL COMMENT '用户Id',
  `livenessSselfieScore` double DEFAULT NULL COMMENT '活体数据与自拍照片对比得分 值为 0~1，值越大表示两张照片是同一个人的可能性越大 值为 0~1，值越大表示两张照片是同一个人的可能性越大',
  `selfieWatermarkScore` double DEFAULT NULL COMMENT '人脸照片与公安带水印照片进行比对得分',
  `verificationResult` tinyint(4) NOT NULL DEFAULT '0' COMMENT '肖像认证状态 0:未认证，1:需要人工审核 2:认证通过 3：认证不通过',
  `livenessSselfieAudit` int(11) NOT NULL DEFAULT '-1' COMMENT '活体数据与自拍照片人工审核结果（-1：未审核 0：审核通过 1：审核不通过）',
  `selfieWatermarkAudit` int(11) NOT NULL DEFAULT '-1' COMMENT '人脸照片与公安带水印照片人工审核结果（-1：未审核 0：审核通过 1：审核不通过）',
  `livenessSselfieImage` varchar(256) DEFAULT NULL COMMENT '活体数据-眨眼照片',
  `hackScore` double DEFAULT NULL COMMENT '防hack得分，取值范围是0~1。值越大表示被hack的可能性越大',
  `livenessDataUrl` varchar(256) DEFAULT NULL COMMENT '活体数据-移动端SDK返回的protobuf文件地址',
  `terminalType` tinyint(4) DEFAULT NULL COMMENT '肖像认证识别终端(1:APP,2:H5,3:微信)',
  `description` varchar(256) DEFAULT NULL COMMENT '认证通过或不通过相关描述',
  `livenessSselfieScoreStart` double NOT NULL DEFAULT '0' COMMENT '活体数据与自拍照片对比得分开始',
  `livenessSselfieScoreEnd` double NOT NULL DEFAULT '0' COMMENT '活体数据与自拍照片对比得分结束',
  `selfieWatermarkScoreStart` double NOT NULL DEFAULT '0' COMMENT '人脸照片与公安带水印照片进行比对得分开始',
  `selfieWatermarkScoreEnd` double NOT NULL DEFAULT '0' COMMENT '人脸照片与公安带水印照片进行比对得分结束',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='B3、 肖像认证表';

/*Table structure for table `tuc_userFaceVerificationRecord` */

DROP TABLE IF EXISTS `tuc_userFaceVerificationRecord`;

CREATE TABLE `tuc_userFaceVerificationRecord` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `userId` bigint(20) NOT NULL COMMENT '用户Id',
  `livenessSselfieScore` double DEFAULT NULL COMMENT '活体数据与自拍照片对比得分 值为 0~1，值越大表示两张照片是同一个人的可能性越大 值为 0~1，值越大表示两张照片是同一个人的可能性越大',
  `selfieWatermarkScore` double DEFAULT NULL COMMENT '人脸照片与公安带水印照片进行比对得分',
  `verificationResult` tinyint(4) NOT NULL DEFAULT '0' COMMENT '肖像认证状态 0:未认证，1:需要人工审核 2:认证通过 3：认证不通过',
  `livenessSselfieAudit` int(11) NOT NULL DEFAULT '-1' COMMENT '活体数据与自拍照片人工审核结果（-1：未审核 0：审核通过 1：审核不通过）',
  `selfieWatermarkAudit` int(11) NOT NULL DEFAULT '-1' COMMENT '人脸照片与公安带水印照片人工审核结果（-1：未审核 0：审核通过 1：审核不通过）',
  `livenessSselfieImage` varchar(256) DEFAULT NULL COMMENT '活体数据-眨眼照片',
  `hackScore` double DEFAULT NULL COMMENT '防hack得分，取值范围是0~1。值越大表示被hack的可能性越大',
  `livenessDataUrl` varchar(256) DEFAULT NULL COMMENT '活体数据-移动端SDK返回的protobuf文件地址',
  `terminalType` tinyint(4) DEFAULT NULL COMMENT '肖像认证识别终端(1:APP,2:H5,3:微信)',
  `description` varchar(256) DEFAULT NULL COMMENT '认证通过或不通过相关描述',
  `livenessSselfieScoreStart` double NOT NULL DEFAULT '0' COMMENT '活体数据与自拍照片对比得分开始',
  `livenessSselfieScoreEnd` double NOT NULL DEFAULT '0' COMMENT '活体数据与自拍照片对比得分结束',
  `selfieWatermarkScoreStart` double NOT NULL DEFAULT '0' COMMENT '人脸照片与公安带水印照片进行比对得分开始',
  `selfieWatermarkScoreEnd` double NOT NULL DEFAULT '0' COMMENT '人脸照片与公安带水印照片进行比对得分结束',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_userId` (`userId`),
  KEY `index_verificationResult` (`verificationResult`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='B3、 肖像认证记录表';

/*Table structure for table `tuc_userIdCard` */

DROP TABLE IF EXISTS `tuc_userIdCard`;

CREATE TABLE `tuc_userIdCard` (
  `userId` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `nation` varchar(20) DEFAULT NULL COMMENT '民族',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `idCard` varchar(50) NOT NULL COMMENT '身份证号',
  `idcardExpired` date DEFAULT NULL COMMENT '身份证过期时间',
  `address` varchar(100) DEFAULT NULL COMMENT '身份证地址',
  `signingAuthority` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '签发机关',
  `createTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='A1、 用户身份证信息';

/*Table structure for table `tuc_userIdCardFileRecord` */

DROP TABLE IF EXISTS `tuc_userIdCardFileRecord`;

CREATE TABLE `tuc_userIdCardFileRecord` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `dataType` tinyint(4) NOT NULL COMMENT '资料类型',
  `subType` tinyint(4) NOT NULL COMMENT '子类型，根据资料类型判断',
  `fileUrl` varchar(300) NOT NULL DEFAULT '' COMMENT '文件地址',
  `fileThumbnailUrl` varchar(300) DEFAULT '' COMMENT '文件缩略地址',
  `fileReleaseUrl` varchar(300) DEFAULT '' COMMENT '打码后地址',
  `fileReleaseThumbnailUrl` varchar(300) DEFAULT '' COMMENT '打码后的缩略地址',
  `delStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除状态（0、未删除，1、已删除）',
  `description` varchar(100) DEFAULT '' COMMENT '描述',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A、 用户身份证照片历史记录';

/*Table structure for table `tuc_userLoginAccount` */

DROP TABLE IF EXISTS `tuc_userLoginAccount`;

CREATE TABLE `tuc_userLoginAccount` (
  `userName` varchar(64) NOT NULL COMMENT '用户账号',
  `platformId` tinyint(4) NOT NULL COMMENT '接入平台ID',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`userName`,`platformId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='A1、 用户登录账号映射';

/*Table structure for table `tuc_userPersonalInfo` */

DROP TABLE IF EXISTS `tuc_userPersonalInfo`;

CREATE TABLE `tuc_userPersonalInfo` (
  `userId` bigint(20) NOT NULL,
  `graduationLevel` tinyint(4) NOT NULL COMMENT '学历层次：1-中专及以下，2-大专，3-本科，4-硕士，5-博士及以上',
  `graduationAuthStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '认证状态：0-未认证 1-已认证',
  `maritalStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '婚姻状况：0-其他，1-未婚，2-已婚，3-离异',
  `havingChildren` tinyint(4) NOT NULL DEFAULT '0' COMMENT '有无子女：0-其他，1-有，2-无',
  `userEmail` varchar(255) DEFAULT NULL COMMENT '用户邮箱',
  `livingType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '现有住宅类型：0-其他，1-自有，2-父母同住，3-公司宿舍，4-租房',
  `livingProvince` varchar(16) NOT NULL DEFAULT '' COMMENT '现居住地省',
  `livingCity` varchar(16) NOT NULL DEFAULT '' COMMENT '现居住地市',
  `livingArea` varchar(16) NOT NULL DEFAULT '' COMMENT '现居住地区',
  `livingAddress` varchar(100) NOT NULL DEFAULT '' COMMENT '现居住详细地址',
  `identityFileStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '身份照上传状态：0-未上传，1-已上传',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A3、 用户个人信息';

/*Table structure for table `tuc_userWorkInfo` */

DROP TABLE IF EXISTS `tuc_userWorkInfo`;

CREATE TABLE `tuc_userWorkInfo` (
  `userId` bigint(20) NOT NULL,
  `workCompany` varchar(64) NOT NULL DEFAULT '' COMMENT '工作单位',
  `workProvince` varchar(30) NOT NULL DEFAULT '' COMMENT '工作地址省',
  `workCity` varchar(30) NOT NULL DEFAULT '' COMMENT '工作地址市',
  `workArea` varchar(30) NOT NULL DEFAULT '' COMMENT '工作地址区',
  `workAddress` varchar(100) NOT NULL DEFAULT '' COMMENT '工作地址（不带省市区）',
  `companyPhone` varchar(20) NOT NULL DEFAULT '' COMMENT '公司电话',
  `industry` tinyint(4) DEFAULT NULL COMMENT '职业（1:学生 2:个体工商户 3:销售/中介/业务员 4:普通员工 5:管理者 6:个体工商户 7:工人/车间生产 8:公务员/事业单位 9:无业人士 10:其他）',
  `position` varchar(40) DEFAULT NULL COMMENT '任职职务',
  `department` varchar(40) DEFAULT NULL COMMENT '任职部门',
  `createTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A4、 用户工作信息';

/*Table structure for table `tuc_withholdingContract` */

DROP TABLE IF EXISTS `tuc_withholdingContract`;

CREATE TABLE `tuc_withholdingContract` (
  `id` bigint(20) NOT NULL COMMENT 'id',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `bindBankId` bigint(20) NOT NULL COMMENT '绑卡记录id',
  `contractNo` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '法大大合同编号',
  `transactionId` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '交易号',
  `downLoadUrl` varchar(256) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '法大大下载地址',
  `viewUrl` varchar(256) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '法大大查看地址',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='还款代扣合同表';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
