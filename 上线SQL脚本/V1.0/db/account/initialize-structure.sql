/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.35-log : Database - sd_account
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sd_account` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sd_account`;

/*Table structure for table `tac_account` */

DROP TABLE IF EXISTS `tac_account`;

CREATE TABLE `tac_account` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `plateformId` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1新app默认',
  `accountType` int(11) NOT NULL DEFAULT '0' COMMENT '账户类型(0个人，1公司)',
  `balanceAmount` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '用户账户余额',
  `accountStatus` tinyint(4) NOT NULL DEFAULT '1' COMMENT '账户状态 0不可用，1正常',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `inx_uniq_uid` (`userId`,`plateformId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户表';

/*Table structure for table `tac_accountBank` */

DROP TABLE IF EXISTS `tac_accountBank`;

CREATE TABLE `tac_accountBank` (
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `plateformId` tinyint(4) NOT NULL COMMENT '平台ID',
  `bankCode` varchar(128) DEFAULT NULL COMMENT '银行编码',
  `bankName` varchar(128) DEFAULT NULL COMMENT '银行名称',
  `bankProvince` varchar(128) DEFAULT NULL COMMENT '银行所在行政区',
  `bankCity` varchar(128) DEFAULT NULL COMMENT '银行所在城市',
  `bankSubBranch` varchar(128) DEFAULT NULL COMMENT '银行分支',
  `bankAccount` varchar(64) NOT NULL COMMENT '银行卡号',
  `bankUserName` varchar(64) NOT NULL COMMENT '真实姓名',
  `channelId` int(11) NOT NULL DEFAULT '3' COMMENT '默认宝付H5WAP',
  `idCard` varchar(64) NOT NULL COMMENT '身份证号',
  `userMobile` varchar(32) NOT NULL COMMENT '银行预留手机号',
  `withholdStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '代扣开通状态（0：未开通，1：已开通）',
  `description` varchar(512) DEFAULT NULL COMMENT '绑卡描述',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`userId`,`plateformId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户银行卡资料表';

/*Table structure for table `tac_accountBill` */

DROP TABLE IF EXISTS `tac_accountBill`;

CREATE TABLE `tac_accountBill` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `platformId` tinyint(4) NOT NULL DEFAULT '1' COMMENT '平台id/appid',
  `orderId` bigint(20) DEFAULT NULL COMMENT '订单id(新APP不用)',
  `projectId` bigint(20) NOT NULL DEFAULT '0' COMMENT '标的ID',
  `amount` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '账单金额',
  `inOutType` int(11) NOT NULL DEFAULT '1' COMMENT '用-1表示支出，1表示收入',
  `superSortCode` varchar(64) DEFAULT NULL COMMENT '类型：1级类目（16种）',
  `subSortCode` varchar(64) DEFAULT NULL COMMENT '类型：2级类目',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '处理状态 0处理中，1交易成功，2交易关闭',
  `visiable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否用户可见 1可见 0不可见',
  `remark` varchar(200) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `inx_uId` (`userId`,`platformId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务账单';

/*Table structure for table `tac_bankChannel` */

DROP TABLE IF EXISTS `tac_bankChannel`;

CREATE TABLE `tac_bankChannel` (
  `bankCode` varchar(16) NOT NULL COMMENT '银行代码',
  `channel` tinyint(4) NOT NULL COMMENT '渠道（1、宝付）',
  `bankCodeOther` varchar(16) NOT NULL COMMENT '银行代码(第三方)',
  `bankName` varchar(32) NOT NULL COMMENT '银行名称',
  PRIMARY KEY (`bankCode`,`channel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1、 【业务配置++】银行码渠道信息对应表';

/*Table structure for table `tac_exceptionHandle` */

DROP TABLE IF EXISTS `tac_exceptionHandle`;

CREATE TABLE `tac_exceptionHandle` (
  `orderNo` bigint(20) NOT NULL COMMENT '订单号（充值，代扣，资金流转，资金推送订单号）',
  `orderType` tinyint(4) NOT NULL COMMENT '订单类型（1-充值订单，2-代扣订单，3-资金流转订单，4-资金推送订单）',
  `userId` bigint(20) NOT NULL COMMENT '充值用户id',
  `plateformId` tinyint(4) NOT NULL COMMENT '平台ID',
  `handleManagerId` bigint(20) NOT NULL COMMENT '异常处理人id',
  `handleManagerName` varchar(32) NOT NULL COMMENT '异常处理人姓名',
  `remark` varchar(512) NOT NULL COMMENT '备注',
  `handleTime` datetime NOT NULL COMMENT '异常处理时间',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`orderNo`),
  KEY `idx_tac_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台异常处理表';

/*Table structure for table `tac_fundsFlowOrder` */

DROP TABLE IF EXISTS `tac_fundsFlowOrder`;

CREATE TABLE `tac_fundsFlowOrder` (
  `fundsFlowOrderNo` bigint(20) NOT NULL COMMENT '资金流转订单号',
  `orderNo` bigint(20) NOT NULL COMMENT '订单id（充值订单id或代扣订单id）',
  `completeDate` datetime NOT NULL COMMENT '充值订单id或代扣订单id完成时间',
  `orderType` tinyint(4) NOT NULL COMMENT '订单产生类型：1-充值订单，2-代扣订单',
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `plateformId` tinyint(4) NOT NULL COMMENT '平台ID',
  `projectId` bigint(20) NOT NULL COMMENT '操作项目Id',
  `amount` decimal(12,2) NOT NULL COMMENT '金额',
  `bankAccount` varchar(64) NOT NULL COMMENT '银行卡号',
  `bankCode` varchar(128) NOT NULL COMMENT '所属银行',
  `bankMobile` varchar(32) NOT NULL COMMENT '银行预留手机号',
  `realName` varchar(32) NOT NULL COMMENT '真实姓名',
  `idCard` varchar(32) NOT NULL COMMENT '身份证号码',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态（1-处理中,2-成功 3-重复支付异常 4-异常处理完成）',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`fundsFlowOrderNo`),
  KEY `idx_uId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资金流转订单表';

/*Table structure for table `tac_fundsPushOrder` */

DROP TABLE IF EXISTS `tac_fundsPushOrder`;

CREATE TABLE `tac_fundsPushOrder` (
  `fundsPushOrderNo` bigint(20) NOT NULL COMMENT '资金推送订单号',
  `fundsFlowOrderNo` bigint(20) NOT NULL COMMENT '资金流转订单号',
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `plateformId` tinyint(4) NOT NULL COMMENT '平台ID',
  `projectId` bigint(20) NOT NULL COMMENT '操作项目Id',
  `orgOrderNo` varchar(50) NOT NULL COMMENT '机构申请单号',
  `amount` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `otherFee` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '其他费用',
  `refundedCapital` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '已还本金',
  `refundedInterest` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '已还利息',
  `refundedManagementFee` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '已还平台管理费',
  `refundedServiceFee` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '已还平台服务费',
  `refundedPenaltyFee` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '已还罚息',
  `useAmount` decimal(12,2) DEFAULT NULL COMMENT '使用金额（还款金额）',
  `principal` decimal(12,2) DEFAULT NULL COMMENT '本金（你我金融）',
  `interest` decimal(12,2) DEFAULT NULL COMMENT '利息（你我金融）',
  `platformManagerFee` decimal(12,2) DEFAULT NULL COMMENT '平台管理费（你我金融）',
  `totalPenalty` decimal(12,2) DEFAULT NULL COMMENT '总罚息（你我金融）',
  `repaidPrincipal` decimal(12,2) DEFAULT NULL COMMENT '已还本金（你我金融）',
  `repaidInterest` decimal(12,2) DEFAULT NULL COMMENT '已经还利息（你我金融）',
  `repaidPlatformManagerFee` decimal(12,2) DEFAULT NULL COMMENT '已还平台管理费（你我金融）',
  `repaidPenalty` decimal(12,2) DEFAULT NULL COMMENT '已还罚息（你我金融）',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态（1-处理中,2-成功,3-人工处理成功）',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`fundsPushOrderNo`),
  KEY `idx_uId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='资金推送订单表';

/*Table structure for table `tac_rechargeOrder` */

DROP TABLE IF EXISTS `tac_rechargeOrder`;

CREATE TABLE `tac_rechargeOrder` (
  `orderNo` bigint(20) NOT NULL COMMENT '订单id',
  `outerOrderNo` varchar(64) DEFAULT NULL COMMENT '外部订单号',
  `userId` bigint(20) NOT NULL COMMENT '充值用户id',
  `plateformId` tinyint(4) NOT NULL COMMENT '平台ID',
  `projectId` bigint(20) NOT NULL COMMENT '操作项目Id',
  `amount` decimal(12,2) NOT NULL COMMENT '充值金额',
  `bankAccount` varchar(64) NOT NULL COMMENT '银行卡号',
  `bankCode` varchar(128) NOT NULL COMMENT '所属银行',
  `bankMobile` varchar(32) NOT NULL COMMENT '银行预留手机号',
  `realName` varchar(32) NOT NULL COMMENT '真实姓名',
  `idCard` varchar(32) NOT NULL COMMENT '身份证号码',
  `param` text NOT NULL COMMENT '请求参数',
  `result` text COMMENT 'notify参数',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态（1-处理中,2-成功 3-失败）',
  `completeDate` datetime DEFAULT NULL COMMENT '充值成功时间',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`orderNo`),
  KEY `idx_tac_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值订单表';

/*Table structure for table `tac_withholdOrder` */

DROP TABLE IF EXISTS `tac_withholdOrder`;

CREATE TABLE `tac_withholdOrder` (
  `orderNo` bigint(20) NOT NULL COMMENT '订单id',
  `outerOrderNo` varchar(64) DEFAULT NULL COMMENT '第三方订单号',
  `borrowUserId` bigint(20) NOT NULL COMMENT '借款用户id',
  `plateformId` tinyint(4) NOT NULL COMMENT '平台ID',
  `projectId` bigint(20) NOT NULL COMMENT '操作项目Id',
  `amount` decimal(12,2) NOT NULL COMMENT '代扣金额',
  `bankAccount` varchar(64) NOT NULL COMMENT '银行卡号',
  `bankCode` varchar(128) NOT NULL COMMENT '所属银行',
  `bankMobile` varchar(32) NOT NULL COMMENT '银行预留手机号',
  `realName` varchar(32) NOT NULL COMMENT '真实姓名',
  `idCard` varchar(32) NOT NULL COMMENT '身份证号码',
  `param` text NOT NULL COMMENT '请求参数',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态（1-处理中,2-成功 3-失败）',
  `responseJson` text COMMENT '代扣返回的JSON',
  `responseTime` datetime DEFAULT NULL COMMENT '代扣响应时间',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`orderNo`),
  KEY `idx_tac_userId` (`borrowUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代扣订单表';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
