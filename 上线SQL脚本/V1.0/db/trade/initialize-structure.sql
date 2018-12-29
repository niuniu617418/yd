/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.6.35-log : Database - sd_trade
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sd_trade` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `sd_trade`;

/*Table structure for table `trd_approvalReason` */

DROP TABLE IF EXISTS `trd_approvalReason`;

CREATE TABLE `trd_approvalReason` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `parentId` bigint(20) DEFAULT NULL COMMENT '上级id',
  `approvalReason` varchar(128) NOT NULL COMMENT '审核原因',
  `approvalCode` varchar(50) DEFAULT NULL COMMENT '审核编码',
  `approvalStatus` tinyint(4) NOT NULL COMMENT '审核结果类型',
  `nodeLevel` int(11) NOT NULL COMMENT '节点层级，顶级节点为1，每层子节点加1',
  `sort` int(11) DEFAULT NULL COMMENT '排序编号',
  `pushMsgContent` varchar(1024) DEFAULT NULL COMMENT '推送消息内容',
  `toBlacklist` tinyint(2) DEFAULT NULL COMMENT '是否加入黑名单',
  `limitUserBehaviors` varchar(500) DEFAULT NULL COMMENT '禁止的用户行为，用户行为类型ID以英文逗号分隔',
  `limitDays` int(11) DEFAULT NULL COMMENT '禁止天数，-1 永久',
  `createManager` bigint(20) NOT NULL COMMENT '创建人',
  `updateManager` bigint(20) NOT NULL COMMENT '修改人',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审核原因配置表';

/*Table structure for table `trd_auditLinkman` */

DROP TABLE IF EXISTS `trd_auditLinkman`;

CREATE TABLE `trd_auditLinkman` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `userId` bigint(20) NOT NULL COMMENT '谁的联系人',
  `projectId` bigint(20) NOT NULL COMMENT '标的id',
  `name` varchar(40) NOT NULL COMMENT '联系人姓名',
  `relation` int(11) NOT NULL COMMENT '与该联系人的关系,枚举',
  `mobile` varchar(40) NOT NULL COMMENT '该联系人电话',
  `createUserId` bigint(20) NOT NULL COMMENT '创建人',
  `createTime` datetime(3) NOT NULL COMMENT '创建时间',
  `updateUserId` bigint(20) NOT NULL COMMENT '更新人',
  `updateTime` datetime(3) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标的电话核查普通联系人';

/*Table structure for table `trd_borrowHisSnapshot` */

DROP TABLE IF EXISTS `trd_borrowHisSnapshot`;

CREATE TABLE `trd_borrowHisSnapshot` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `driverAuditId` bigint(20) NOT NULL COMMENT '当前标审核记录ID，自动审核ID或人工审核ID',
  `auditType` tinyint(4) NOT NULL COMMENT '0：自动审核快照，1：人工审核',
  `driverProjectId` bigint(20) NOT NULL COMMENT '当前审核的标的ID',
  `projectId` bigint(20) NOT NULL COMMENT '历史记录标的ID',
  `auditId` bigint(20) DEFAULT NULL COMMENT '历史人工审核记录ID',
  `borrowerUserId` bigint(20) NOT NULL COMMENT '借款用户ID',
  `borrowerUserName` varchar(50) NOT NULL COMMENT '借款用户姓名',
  `mobileNo` varchar(50) NOT NULL COMMENT '手机号码',
  `approvalStatus` tinyint(4) DEFAULT NULL COMMENT '审核结果',
  `approvalUserId` bigint(20) DEFAULT NULL COMMENT '审核人ID',
  `approvalUserName` varchar(50) DEFAULT NULL COMMENT '审核人姓名',
  `overdueDays` bigint(20) DEFAULT NULL COMMENT '逾期天数',
  `applyTime` datetime NOT NULL COMMENT '申请时间',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='借款历史记录快照,driver开头的表示驱动生成本快照的审核行为相关信息，其他业务属性则为历史申请对应的数据';

/*Table structure for table `trd_borrowerProjectDetailSnapshot` */

DROP TABLE IF EXISTS `trd_borrowerProjectDetailSnapshot`;

CREATE TABLE `trd_borrowerProjectDetailSnapshot` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `riskType` tinyint(4) NOT NULL COMMENT '匹配类型',
  `driverProjectId` bigint(20) NOT NULL COMMENT '发起匹配的借款标ID',
  `driverMobileNo` varchar(11) NOT NULL COMMENT '发起匹配的手机号(借款人手机号或借款人紧急联系人手机号)',
  `driverUserId` bigint(20) NOT NULL COMMENT '发起匹配的用户ID',
  `borrowerUserId` bigint(20) NOT NULL COMMENT '被匹配的用户ID',
  `borrowerUserName` varchar(50) NOT NULL COMMENT '~用户姓名',
  `idCard` varchar(20) NOT NULL COMMENT '身份证',
  `mobileNo` varchar(11) NOT NULL COMMENT '手机号',
  `companyTel` varchar(15) NOT NULL COMMENT '单位电话',
  `companyName` varchar(20) NOT NULL COMMENT '单位名称',
  `projectId` bigint(20) DEFAULT NULL COMMENT '被匹配的标的ID',
  `applyTime` datetime DEFAULT NULL COMMENT '申请时间',
  `linkManName` varchar(20) DEFAULT NULL COMMENT '联系人姓名',
  `linkManRelation` tinyint(4) DEFAULT NULL COMMENT '联系人关系',
  `manualAuditTime` datetime DEFAULT NULL COMMENT '人工审核时间',
  `projectStatus` int(11) DEFAULT NULL COMMENT '标的状态',
  `blackName` tinyint(4) NOT NULL COMMENT '是否黑名单0：否，1：是',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='借款人手机号匹配情况综合信息，本表数据性质属于快照，审核决策时生成';

/*Table structure for table `trd_callRecordDetailSnapshot` */

DROP TABLE IF EXISTS `trd_callRecordDetailSnapshot`;

CREATE TABLE `trd_callRecordDetailSnapshot` (
  `id` bigint(20) NOT NULL COMMENT '记录ID',
  `projectId` bigint(20) NOT NULL COMMENT '项目ID',
  `isRelationUser` tinyint(1) DEFAULT NULL COMMENT '号码是否与用户的“预留联系人”号码匹配 （1：是；0：否）',
  `isUser` tinyint(1) DEFAULT NULL COMMENT '是否是你我金融注册用户（1：是；0：否）',
  `isIssueLoan` tinyint(1) DEFAULT NULL COMMENT '是否在你我金融发布过借款记录（1：是；0：否）',
  `isOverdueRepay` tinyint(1) DEFAULT NULL COMMENT '是否在你我金融有逾期（1：是；0：否）',
  `isCurrentOverdue` tinyint(1) DEFAULT NULL COMMENT '是否当前逾期（1：是；0：否）',
  `isBlacklist` tinyint(1) DEFAULT NULL COMMENT '是否当前逾期（1：是；0：否）',
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
  PRIMARY KEY (`id`),
  KEY `idx_projectId` (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通话记录详细信息快照';

/*Table structure for table `trd_callRecordSnapshot` */

DROP TABLE IF EXISTS `trd_callRecordSnapshot`;

CREATE TABLE `trd_callRecordSnapshot` (
  `projectId` bigint(20) NOT NULL COMMENT '项目ID',
  `isAuth` tinyint(1) NOT NULL COMMENT '是否授权（0:未获取  1:获取成功）',
  `mobilePhone` varchar(20) NOT NULL COMMENT '本人手机号码',
  `registerTime` datetime NOT NULL COMMENT '是入网时长',
  `total` int(10) NOT NULL COMMENT '近6个月有效通话次数（主叫或被叫通话时间>1分钟）≥4的手机号码数量',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '快照创建时间',
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通话记录信息快照';

/*Table structure for table `trd_collection` */

DROP TABLE IF EXISTS `trd_collection`;

CREATE TABLE `trd_collection` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `projectId` bigint(20) NOT NULL COMMENT '项目Id',
  `type` tinyint(2) NOT NULL COMMENT '催收类型 0：普通 1：短信',
  `collectionTime` datetime DEFAULT NULL COMMENT '催收时间',
  `collectionContent` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '催收内容',
  `smsTitle` varchar(100) DEFAULT NULL COMMENT '短信标题',
  `mobileNo` varchar(30) DEFAULT NULL COMMENT '手机号码',
  `smsContent` varchar(500) DEFAULT NULL COMMENT '短信内容',
  `operatorId` bigint(20) NOT NULL COMMENT '操作人ID',
  `operatorName` varchar(50) NOT NULL COMMENT '操作人姓名',
  `operateTime` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `inx_projectId` (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='催收记录';

/*Table structure for table `trd_contactInfoSnapshot` */

DROP TABLE IF EXISTS `trd_contactInfoSnapshot`;

CREATE TABLE `trd_contactInfoSnapshot` (
  `id` bigint(20) NOT NULL COMMENT '通讯录ID,一个标的多个通讯录',
  `projectId` bigint(20) NOT NULL COMMENT '项目ID',
  `deviceID` varchar(64) DEFAULT NULL COMMENT '设备ID',
  `type` tinyint(1) DEFAULT NULL COMMENT '类型（0.常用 1.普通）',
  `os` varchar(20) DEFAULT NULL COMMENT '操作系统',
  `equipmentStatus` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否越狱 0.否 1是',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '通讯录状态(1:无通讯录;2:无变动;3:有较小变动)',
  `phoneNumbers` int(10) NOT NULL DEFAULT '0' COMMENT '通讯录号码数',
  `unNormalPhones` int(10) NOT NULL DEFAULT '0' COMMENT '异常号码（异常率）',
  `matchPhones` int(10) NOT NULL DEFAULT '0' COMMENT '有通话记录（通话率）',
  `otherCount` varchar(2000) DEFAULT NULL COMMENT '使用该通讯录的其他账号',
  `relativeContactNum` int(10) DEFAULT NULL COMMENT '亲属联系人数量',
  `contactUpdateTime` datetime DEFAULT NULL COMMENT '通讯录更新时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '快照创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_projectId` (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通讯录信息表快照';

/*Table structure for table `trd_contactPhoneDetailSnapshot` */

DROP TABLE IF EXISTS `trd_contactPhoneDetailSnapshot`;

CREATE TABLE `trd_contactPhoneDetailSnapshot` (
  `id` bigint(20) NOT NULL COMMENT '记录ID',
  `projectId` bigint(20) NOT NULL COMMENT '项目ID',
  `contactId` bigint(20) NOT NULL COMMENT '通讯录信息ID',
  `phoneName` varchar(64) DEFAULT NULL COMMENT '姓名',
  `phoneNum` varchar(64) DEFAULT NULL COMMENT '通讯录号码',
  `phoneStatus` varchar(10) DEFAULT NULL COMMENT '号码是否正常0.正常 1.异常（敏感词汇）2.异常（短号）3.异常（重复号码）4.异常（格式错误）5.异常（其它错误） 多个以‘,’隔开',
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
  KEY `idx_contactId` (`contactId`),
  KEY `idx_projectId` (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通讯录号码详情表快照';

/*Table structure for table `trd_debtForPlatform` */

DROP TABLE IF EXISTS `trd_debtForPlatform`;

CREATE TABLE `trd_debtForPlatform` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `debtUserId` bigint(20) NOT NULL COMMENT '债务人用户id',
  `projectId` bigint(20) NOT NULL COMMENT '项目id',
  `planId` bigint(20) NOT NULL COMMENT '还款计划id',
  `period` int(11) NOT NULL COMMENT '期数',
  `expiryDate` date NOT NULL COMMENT '清偿截止期',
  `managementFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '平台管理费',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '债状态（0：待清偿，1：已清偿，2：衍生）',
  `payOffTime` datetime DEFAULT NULL COMMENT '清偿时间',
  `feeDetailId` bigint(20) DEFAULT NULL COMMENT '还款详情id',
  `delFlag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识（0否1是）',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='债务-平台';

/*Table structure for table `trd_followTaskProcess` */

DROP TABLE IF EXISTS `trd_followTaskProcess`;

CREATE TABLE `trd_followTaskProcess` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `projectId` bigint(20) NOT NULL COMMENT '标的ID',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `userName` varchar(50) NOT NULL COMMENT '用户姓名',
  `mobileNo` varchar(30) NOT NULL COMMENT '手机号',
  `deadline` int(11) NOT NULL COMMENT '期限(单位：天)',
  `allocTime` datetime NOT NULL COMMENT '分配时间',
  `followUserId` bigint(20) NOT NULL COMMENT '跟踪人ID',
  `followUserName` varchar(50) NOT NULL COMMENT '跟踪人姓名',
  `hisFollowUserId` bigint(20) NOT NULL COMMENT '历史跟踪人ID',
  `hisFollowUserName` varchar(50) NOT NULL COMMENT '历史跟踪人姓名',
  `taskStatus` tinyint(4) NOT NULL DEFAULT '1' COMMENT '任务状态: 1.未分配 2.已分配 3.已处理',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='逾期标的跟踪表';

/*Table structure for table `trd_hisPhotoInfoSnapshot` */

DROP TABLE IF EXISTS `trd_hisPhotoInfoSnapshot`;

CREATE TABLE `trd_hisPhotoInfoSnapshot` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `projectId` bigint(20) NOT NULL COMMENT '项目ID',
  `userId` bigint(20) NOT NULL COMMENT '借款用户ID',
  `dataType` tinyint(4) NOT NULL COMMENT '文件类型:1 身份证正面照，2 身份证反面照，3 活体检测照',
  `imageFile` varchar(200) NOT NULL COMMENT '照片URL',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '快照创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='借款用户历史照片信息快照';

/*Table structure for table `trd_linkManInfoSnapshot` */

DROP TABLE IF EXISTS `trd_linkManInfoSnapshot`;

CREATE TABLE `trd_linkManInfoSnapshot` (
  `id` bigint(20) NOT NULL COMMENT '记录ID',
  `projectId` bigint(20) NOT NULL COMMENT '项目ID',
  `userId` bigint(20) NOT NULL COMMENT '借款用户ID',
  `name` varchar(50) DEFAULT NULL COMMENT '紧急联系人信息',
  `relation` tinyint(4) DEFAULT NULL COMMENT '关系',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机号',
  `addressName` varchar(50) DEFAULT NULL COMMENT '通讯录名称',
  `callRecordCount` int(11) DEFAULT NULL COMMENT '通话记录数',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '快照创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户紧急联系人信息快照';

/*Table structure for table `trd_loanRateConfig` */

DROP TABLE IF EXISTS `trd_loanRateConfig`;

CREATE TABLE `trd_loanRateConfig` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `deadline` int(11) NOT NULL DEFAULT '1' COMMENT '借款期限(单位：天)',
  `amount` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '借款金额',
  `loanRate` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '借款费率',
  `guaranteeServiceRate` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '担保服务费',
  `totalFeeRate` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '总费率',
  `otherFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '其他费用',
  `maxDebt` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '最大应还金额',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `updateOperator` bigint(20) NOT NULL COMMENT '修改人',
  `createOperator` bigint(20) NOT NULL COMMENT '创建人',
  `versionNo` int(11) NOT NULL DEFAULT '0' COMMENT '版本号（每次更新加1）',
  `delFlag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除，0：否，1：是',
  PRIMARY KEY (`id`),
  UNIQUE KEY `deadline` (`deadline`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='借款费率配置表';

/*Table structure for table `trd_overdueCancel` */

DROP TABLE IF EXISTS `trd_overdueCancel`;

CREATE TABLE `trd_overdueCancel` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `projectId` bigint(20) NOT NULL COMMENT '项目Id',
  `remarkReason` varchar(500) NOT NULL COMMENT '备注原因',
  `operatorId` bigint(20) NOT NULL COMMENT '操作人ID',
  `operatorName` varchar(50) NOT NULL COMMENT '操作人姓名',
  `operateTime` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `inx_projectId` (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='逾期冲销';

/*Table structure for table `trd_phoneCallAudit` */

DROP TABLE IF EXISTS `trd_phoneCallAudit`;

CREATE TABLE `trd_phoneCallAudit` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `userId` bigint(20) NOT NULL COMMENT '发标用户',
  `projectId` bigint(20) NOT NULL COMMENT '标的id',
  `respondents` int(11) NOT NULL COMMENT '受访/调查对象,1:本人,2:紧急联系人,3:普通联系人',
  `conclusion` int(11) NOT NULL COMMENT '结论,沟通结果,枚举',
  `remark` varchar(512) DEFAULT NULL COMMENT '备注说明',
  `auditTime` datetime(3) NOT NULL COMMENT '沟通/核查时间',
  `linkmanId` bigint(20) DEFAULT NULL COMMENT '联系人(紧急联系人/普通联系人)id,本人时为空',
  `createUserId` bigint(20) NOT NULL COMMENT '创建人',
  `createUserName` varchar(40) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建人姓名,eg:张超级',
  `createTime` datetime(3) NOT NULL COMMENT '创建时间',
  `updateUserId` bigint(20) NOT NULL COMMENT '更新人',
  `updateUserName` varchar(40) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新人姓名,eg:张超级',
  `updateTime` datetime(3) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='电话核查';

/*Table structure for table `trd_phoneTrack` */

DROP TABLE IF EXISTS `trd_phoneTrack`;

CREATE TABLE `trd_phoneTrack` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `projectId` bigint(20) NOT NULL COMMENT '项目Id',
  `snapshotId` bigint(20) NOT NULL COMMENT '快照Id,对应快照表的主键，如id或projectId',
  `phoneSource` tinyint(2) NOT NULL COMMENT '电话来源 1:借款人、2:紧急联系人、3:工作信息、4:通话记录号码、5:通讯录号码',
  `callStatus` tinyint(2) NOT NULL COMMENT '通话状态 1:有效、2:无人接听、3:拒接、4:忙音、5:过期、6:停机、7:空号、8:关机',
  `operatorId` bigint(20) NOT NULL COMMENT '操作人ID',
  `operatorName` varchar(50) NOT NULL COMMENT '操作人姓名',
  `operateTime` datetime NOT NULL COMMENT '操作时间',
  `delFlag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标志：0否1是',
  PRIMARY KEY (`id`),
  KEY `inx_projectId` (`projectId`),
  KEY `inx_snapshotId` (`snapshotId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电话跟踪';

/*Table structure for table `trd_photoInfoSnapshot` */

DROP TABLE IF EXISTS `trd_photoInfoSnapshot`;

CREATE TABLE `trd_photoInfoSnapshot` (
  `projectId` bigint(20) NOT NULL COMMENT '项目ID',
  `userId` bigint(20) NOT NULL COMMENT '借款人ID',
  `idCardFrontImage` varchar(256) DEFAULT NULL COMMENT '身份证正面照',
  `idCardBackImage` varchar(256) DEFAULT NULL COMMENT '身份证反面照',
  `livenessSelfieImage` varchar(256) DEFAULT NULL COMMENT '活体检测照',
  `livenessSselfieAudit` varchar(50) DEFAULT NULL COMMENT '肖像认证活体照审核状态',
  `selfieWatermarkAudit` varchar(50) DEFAULT NULL COMMENT '公安带水印照片审核状态',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '快照创建时间',
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户照片信息快照表';

/*Table structure for table `trd_project` */

DROP TABLE IF EXISTS `trd_project`;

CREATE TABLE `trd_project` (
  `projectId` bigint(20) NOT NULL COMMENT '主键',
  `projectStatus` int(11) NOT NULL COMMENT '项目状态',
  `borrowerUserId` bigint(20) NOT NULL COMMENT '借款用户id',
  `borrowerUserName` varchar(50) NOT NULL COMMENT '借款人用户名称',
  `mobileNo` varchar(30) NOT NULL COMMENT '手机号码',
  `sesameScore` int(11) NOT NULL COMMENT '芝麻分',
  `afScore` double(10,2) DEFAULT NULL COMMENT '欺诈评分（自动审核返回）',
  `quaScore` double(10,2) DEFAULT NULL COMMENT '资质评分（自动审核返回）',
  `amount` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '总应还金额=借款金额+总费用',
  `handAmount` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '到手金额，借款金额（从配置中获取）',
  `compositeRate` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '总费率',
  `guaranteeRate` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '担保服务费比率（到手金额*担保服务费率）',
  `interestRate` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '借款利率',
  `penaltyRate` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '罚息费率（天化）',
  `otherFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '其他费用（借款配置中获取）',
  `compositeFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '总借款费用',
  `guaranteeFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '担保服务费（总借款费用中的一部分）=到手金额*担保服务费比率',
  `interest` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '利息=合同金额*（借款利率%）/365*借款期限',
  `deadline` int(11) NOT NULL DEFAULT '0' COMMENT '期限(单位：天)',
  `longitude` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '经度',
  `latitude` varchar(64) CHARACTER SET utf8mb4 NOT NULL COMMENT '纬度',
  `tcAuditTime` datetime DEFAULT NULL COMMENT '天秤审核结果时间',
  `manualAuditTime` datetime DEFAULT NULL COMMENT '人工审核结果时间',
  `fullTime` datetime DEFAULT NULL COMMENT '满标时间',
  `withdrawSuccessDate` datetime DEFAULT NULL COMMENT '到账时间',
  `repaymentType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '还款方式   0：到期还本息   1：等额本息',
  `orgOrderNo` varchar(50) DEFAULT NULL COMMENT '推标流水号',
  `niiwoOrderNo` varchar(50) DEFAULT NULL COMMENT '你我金融返回的成功订单号',
  `contractUrl` varchar(1024) DEFAULT NULL COMMENT '合同url',
  `delFlag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标志：0否1是',
  `applyTime` datetime NOT NULL COMMENT '申请时间',
  `createTime` datetime NOT NULL COMMENT '新增时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`projectId`),
  KEY `borrowerUserId` (`borrowerUserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新app项目表';

/*Table structure for table `trd_projectAudit` */

DROP TABLE IF EXISTS `trd_projectAudit`;

CREATE TABLE `trd_projectAudit` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `projectId` bigint(20) NOT NULL COMMENT '项目id',
  `borrowerUserId` bigint(20) NOT NULL COMMENT '借款用户id',
  `approvalUser` bigint(20) DEFAULT NULL COMMENT '审核人ID',
  `approvalUserName` varchar(50) DEFAULT NULL COMMENT '审核人姓名',
  `approvalTime` datetime DEFAULT NULL COMMENT '审核时间',
  `approvalStatus` tinyint(4) NOT NULL COMMENT '审核状态',
  `approvalReason` varchar(1024) DEFAULT NULL COMMENT '审核原因:审核原因代码，多个用|隔开',
  `message` varchar(1024) DEFAULT NULL COMMENT '推送消息',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  `approvalMemo` varchar(1024) DEFAULT NULL COMMENT '审核备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_pid` (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='极速借审核';

/*Table structure for table `trd_projectContract` */

DROP TABLE IF EXISTS `trd_projectContract`;

CREATE TABLE `trd_projectContract` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `projectId` bigint(20) NOT NULL DEFAULT '0' COMMENT '项目id',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型（1、借款 2、担保 3、投资）',
  `constrctType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '合同类型：1、借款, 2、代扣, 3、担保 4、反担保, 5、仲裁, 6、送达回证',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态（0未签， 1已签）',
  `autoType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '自动类型（0、手动，1、自动）',
  `fileUrl` varchar(256) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '文件地址',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='标的合同表';

/*Table structure for table `trd_projectRefundSummary` */

DROP TABLE IF EXISTS `trd_projectRefundSummary`;

CREATE TABLE `trd_projectRefundSummary` (
  `projectId` bigint(20) NOT NULL COMMENT '项目id',
  `borrowerUserId` bigint(20) NOT NULL COMMENT '借款用户id',
  `currentPeriod` int(11) NOT NULL DEFAULT '1' COMMENT '当前期数',
  `refundDate` date NOT NULL COMMENT '当前期截止还款日',
  `autoRefundDate` date NOT NULL COMMENT '自动划扣截止日',
  `capital` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '本金',
  `interest` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '利息',
  `managementFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '平台服务费',
  `assureFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '担保费用',
  `penaltyFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '罚息',
  `refundedCapital` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还本金',
  `refundedInterest` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还利息',
  `refundedManagementFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还平台管理费',
  `refundAssureFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还担保费用',
  `refundedPenaltyFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还罚息',
  `criticalOverdueDate` date DEFAULT NULL COMMENT '严重逾期开始时间',
  `cpd` bigint(20) NOT NULL DEFAULT '0' COMMENT '逾期天数',
  `dpd` bigint(20) NOT NULL DEFAULT '0' COMMENT '历史总逾期天数',
  `overdueStartDate` date DEFAULT NULL COMMENT '最近一次逾期开始时间',
  `firstOverdueDate` date DEFAULT NULL COMMENT '第一次逾期时间',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='极速借还款情况信息';

/*Table structure for table `trd_projectRiskDetailInfo` */

DROP TABLE IF EXISTS `trd_projectRiskDetailInfo`;

CREATE TABLE `trd_projectRiskDetailInfo` (
  `id` bigint(20) NOT NULL COMMENT 'trd_projectRiskInfo的主键一致',
  `projectId` bigint(20) NOT NULL COMMENT '项目ID',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `riskType` tinyint(4) NOT NULL COMMENT '风险类型（1、本人命中其它借款人手机号 2、本人紧急联系人命中其它借款人手机号 3、单位号码匹配 4、GPS居住地址匹配 5、常用登录地匹配居住地手机归属地 6、WIFI设备码匹配 7、相同GPS位置匹配 8、账号多设备登录 9、设备多账号登录 10、高风险短信匹配 11、贷款类App匹配 12、敏感时间段借款）',
  `riskDetail` text COMMENT '风险信息详情，josn格式',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标的风险信息详情';

/*Table structure for table `trd_projectRiskInfo` */

DROP TABLE IF EXISTS `trd_projectRiskInfo`;

CREATE TABLE `trd_projectRiskInfo` (
  `id` bigint(20) NOT NULL,
  `projectId` bigint(20) NOT NULL COMMENT '标的ID',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `riskType` tinyint(4) NOT NULL COMMENT '风险类型（1、本人命中其它借款人手机号 2、本人紧急联系人命中其它借款人手机号 3、单位号码匹配 4、GPS居住地址匹配 5、常用登录地匹配居住地手机归属地 6、WIFI设备码匹配 7、相同GPS位置匹配 8、账号多设备登录 9、设备多账号登录 10、高风险短信匹配 11、贷款类App匹配 12、敏感时间段借款）',
  `riskValue` varchar(20) NOT NULL COMMENT '风险值',
  `auditResult` tinyint(4) DEFAULT NULL COMMENT '风险核查结果：无异常,异常,虚假',
  `auditRemark` varchar(512) DEFAULT NULL COMMENT '风险核查备注说明',
  `auditManagerId` bigint(20) DEFAULT NULL COMMENT '风险核查人',
  `riskTitle` varchar(200) DEFAULT NULL COMMENT '标题',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态 0:成功 1:失败 2:超时或返回空 3:数据回流失败（以下命中等数据不返回）',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `auditTime` datetime DEFAULT NULL COMMENT '风险核查时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='标的风险信息';

/*Table structure for table `trd_repaymentInfo` */

DROP TABLE IF EXISTS `trd_repaymentInfo`;

CREATE TABLE `trd_repaymentInfo` (
  `projectId` bigint(20) NOT NULL COMMENT '项目id',
  `borrowerUserId` bigint(20) NOT NULL COMMENT '借款用户id',
  `refundedCapital` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还本金',
  `refundedInterest` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还利息',
  `refundedManagementFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还平台服务费',
  `refundServiceFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还担保服务费',
  `refundedPenaltyFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还罚息',
  `capital` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '本金(1000)',
  `interest` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '利息(2.02)',
  `managementFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '平台服务费(33.98)',
  `serviceFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '担保服务费（20）',
  `penaltyFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '罚息(10元/天)',
  `refundStatus` tinyint(4) NOT NULL DEFAULT '0' COMMENT '还款状态:0还款中，1已还清',
  `overTime` datetime DEFAULT NULL COMMENT '结清时间',
  `orderTime` datetime DEFAULT NULL COMMENT '还款发起时间',
  `completeTime` datetime DEFAULT NULL COMMENT '还款到账时间',
  `refundDate` date NOT NULL COMMENT '还款截止日期（应还款时间）',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`projectId`),
  KEY `index_trd_plan_refund_date` (`refundDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新app还款信息';

/*Table structure for table `trd_repaymentOrder` */

DROP TABLE IF EXISTS `trd_repaymentOrder`;

CREATE TABLE `trd_repaymentOrder` (
  `fundsFlowOrderNo` bigint(20) NOT NULL COMMENT '资金流转订单号',
  `orderType` tinyint(4) NOT NULL COMMENT '订单产生类型：1-充值订单，2-代扣订单',
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `projectId` bigint(20) NOT NULL COMMENT '操作项目Id',
  `amount` decimal(12,2) NOT NULL COMMENT '金额',
  `orderTime` datetime NOT NULL COMMENT '实际还款时间(订单生成时间)',
  `refundDate` date NOT NULL COMMENT '还款截止日期（应还款时间）',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '推送状态（1-处理中，2-成功）',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`fundsFlowOrderNo`),
  KEY `idx_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='还款订单表';

/*Table structure for table `trd_repaymentPlan` */

DROP TABLE IF EXISTS `trd_repaymentPlan`;

CREATE TABLE `trd_repaymentPlan` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `projectId` bigint(20) NOT NULL COMMENT '项目id',
  `borrowerUserId` bigint(20) NOT NULL COMMENT '借款用户id',
  `refundedCapital` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还本金',
  `refundedInterest` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还利息',
  `refundedManagementFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还平台管理费',
  `refundAssureFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还担保费用',
  `refundedPenaltyFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还罚息',
  `capital` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '本金',
  `interest` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '利息',
  `managementFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '平台服务费',
  `penaltyFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '罚息',
  `assureFee` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '担保费用',
  `refundStatus` tinyint(4) NOT NULL COMMENT '还款状态,0还款中，1已还清',
  `overTime` datetime DEFAULT NULL COMMENT '结清时间',
  `repaymentLock` tinyint(4) NOT NULL DEFAULT '0' COMMENT '还款锁定状态：0-否，1-是',
  `startTime` datetime DEFAULT NULL COMMENT '扣款开始时间',
  `refundDate` date NOT NULL COMMENT '还款截止日期（应还款时间）',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `inx_pId` (`projectId`) USING BTREE,
  KEY `index_trd_plan_update_time` (`updateTime`),
  KEY `index_trd_plan_refund_date` (`refundDate`),
  KEY `index_trd_plan_status` (`refundStatus`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新app还款计划';

/*Table structure for table `trd_riskInfoSnapshot` */

DROP TABLE IF EXISTS `trd_riskInfoSnapshot`;

CREATE TABLE `trd_riskInfoSnapshot` (
  `projectId` bigint(20) NOT NULL COMMENT '借款编号',
  `userId` binary(20) NOT NULL COMMENT '用户编号',
  `inOtherBorrow` tinyint(4) DEFAULT NULL COMMENT '本人出现在其它借款中(0、否 1、是)',
  `contactInOtherBorrow` tinyint(4) DEFAULT NULL COMMENT '紧急联系人出现在其它借款中(0、否 1、是)',
  `sameCompany` int(4) DEFAULT NULL COMMENT '相同单位名称匹配',
  `gpsAddr` varchar(50) DEFAULT NULL COMMENT 'GPS 与 居住地址 不匹配',
  `commonLoginAddr` varchar(50) DEFAULT NULL COMMENT '最常登录地 与 居住地/归属地 不匹配',
  `sameWifi` int(4) DEFAULT NULL COMMENT '相同 WiFi 匹配',
  `sameGps` int(4) DEFAULT NULL COMMENT '相同 GPS 匹配',
  `multiDevice` int(4) DEFAULT NULL COMMENT '一个账号多设备登录',
  `multiAccount` int(4) DEFAULT NULL COMMENT '一个设备多账号登录',
  `riskSms` int(11) DEFAULT NULL COMMENT '高风险短信',
  `loanApp` int(11) DEFAULT NULL COMMENT '贷款类APP',
  `sensitiveTimeLoan` tinyint(4) DEFAULT NULL COMMENT '敏感时间段借款（1:00-5:00）(0、否 1、是)',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='风险信息快照表';

/*Table structure for table `trd_sendedNiiwooOrder` */

DROP TABLE IF EXISTS `trd_sendedNiiwooOrder`;

CREATE TABLE `trd_sendedNiiwooOrder` (
  `orgOrderNo` bigint(20) NOT NULL COMMENT '推标订单号',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态，1推标中，2推标成功，3推标失败',
  `projectId` bigint(20) NOT NULL,
  `params` text NOT NULL,
  `result` text,
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`orgOrderNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='推标订单表';

/*Table structure for table `trd_smsContentSnapshot` */

DROP TABLE IF EXISTS `trd_smsContentSnapshot`;

CREATE TABLE `trd_smsContentSnapshot` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `projectId` bigint(20) NOT NULL COMMENT '项目编号',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信信息快照主表';

/*Table structure for table `trd_smsInfoListSnapshot` */

DROP TABLE IF EXISTS `trd_smsInfoListSnapshot`;

CREATE TABLE `trd_smsInfoListSnapshot` (
  `id` bigint(20) NOT NULL COMMENT 'ID',
  `projectId` bigint(20) NOT NULL COMMENT '项目编号',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信详细信息快照表';

/*Table structure for table `trd_snapshotTask` */

DROP TABLE IF EXISTS `trd_snapshotTask`;

CREATE TABLE `trd_snapshotTask` (
  `id` bigint(20) NOT NULL COMMENT '任务编号',
  `projectId` bigint(20) NOT NULL COMMENT '项目编号',
  `userId` bigint(20) DEFAULT NULL COMMENT '用户编号',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态(1.待处理2.处理完成)',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成快照信息任务表';

/*Table structure for table `trd_systemAuditResult` */

DROP TABLE IF EXISTS `trd_systemAuditResult`;

CREATE TABLE `trd_systemAuditResult` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `projectId` bigint(20) NOT NULL COMMENT '标的id',
  `auditResult` int(11) NOT NULL COMMENT '结果，不同接口校验结果格式可能不同，使用字符串增加通用性',
  `message` varchar(1024) DEFAULT NULL COMMENT '结果说明',
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projectId` (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统校验结果\r\n天秤等系统对标的的校验结果';

/*Table structure for table `trd_systemConfig` */

DROP TABLE IF EXISTS `trd_systemConfig`;

CREATE TABLE `trd_systemConfig` (
  `id` bigint(20) NOT NULL,
  `configKey` varchar(255) NOT NULL COMMENT '配置项',
  `configValue` varchar(3072) NOT NULL COMMENT '配置内容',
  `description` varchar(1024) NOT NULL COMMENT '配置说明',
  `createTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `createOperator` bigint(20) NOT NULL COMMENT '创建者',
  `updateOperator` bigint(20) NOT NULL COMMENT '修改者',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='急速借系统配置';

/*Table structure for table `trd_userInfoSnapshot` */

DROP TABLE IF EXISTS `trd_userInfoSnapshot`;

CREATE TABLE `trd_userInfoSnapshot` (
  `projectId` bigint(20) NOT NULL COMMENT '项目ID',
  `userId` bigint(20) NOT NULL COMMENT '借款用户ID',
  `realName` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `realNameAuth` varchar(50) DEFAULT NULL COMMENT '是否已实名认证',
  `mobile` varchar(50) DEFAULT NULL COMMENT '手机号码',
  `sesameCode` varchar(50) DEFAULT NULL COMMENT '芝麻分',
  `idCard` varchar(50) DEFAULT NULL COMMENT '身份证号码',
  `idAddress` varchar(100) DEFAULT NULL COMMENT '身份证地址',
  `gender` varchar(50) DEFAULT NULL COMMENT '性别',
  `maritalStatus` varchar(50) DEFAULT NULL COMMENT '婚姻状况',
  `workCompany` varchar(50) DEFAULT NULL COMMENT '工作单位',
  `companyPhone` varchar(50) DEFAULT NULL COMMENT '公司电话',
  `workAddress` varchar(100) DEFAULT NULL COMMENT '单位地址',
  `workPosition` varchar(50) DEFAULT NULL COMMENT '工作职务',
  `graduationLevel` varchar(50) DEFAULT NULL COMMENT '学历等级',
  `graduationAuth` varchar(50) DEFAULT NULL COMMENT '学历是否已认证',
  `livingAddress` varchar(100) DEFAULT NULL COMMENT '现居住地址',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '快照创建时间',
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户信息快照表';

/*Table structure for table `trd_userPhoneListSnapshot` */

DROP TABLE IF EXISTS `trd_userPhoneListSnapshot`;

CREATE TABLE `trd_userPhoneListSnapshot` (
  `userId` varchar(64) NOT NULL COMMENT '用户id',
  `phoneTxt` text COMMENT '通讯录内容',
  `createTime` datetime DEFAULT NULL COMMENT '新增时间',
  `updateTime` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户通讯录信息';

/*Table structure for table `trd_workTaskAfterLoan` */

DROP TABLE IF EXISTS `trd_workTaskAfterLoan`;

CREATE TABLE `trd_workTaskAfterLoan` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `projectId` bigint(20) NOT NULL COMMENT '标的ID',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `userName` varchar(50) NOT NULL COMMENT '用户姓名',
  `mobileNo` varchar(30) NOT NULL COMMENT '手机号',
  `deadline` int(11) NOT NULL COMMENT '期限(单位：天)',
  `allocTime` datetime DEFAULT NULL COMMENT '分配时间',
  `trackUserId` bigint(20) DEFAULT NULL COMMENT '跟踪人ID',
  `trackUserName` varchar(50) DEFAULT NULL COMMENT '跟踪人姓名',
  `trackHisUserId` bigint(20) DEFAULT NULL COMMENT '历史跟踪人ID',
  `trackHisUserName` varchar(50) DEFAULT NULL COMMENT '历史跟踪人姓名',
  `taskType` tinyint(4) NOT NULL COMMENT '任务类型: 1.极速借跟踪',
  `taskStatus` tinyint(4) NOT NULL DEFAULT '1' COMMENT '任务状态: 1.未分配 2.已分配 3.已处理',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='贷后跟踪任务分配表';

/*Table structure for table `trd_workTaskAllocUser` */

DROP TABLE IF EXISTS `trd_workTaskAllocUser`;

CREATE TABLE `trd_workTaskAllocUser` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `userId` bigint(20) NOT NULL COMMENT '审核员ID',
  `taskType` tinyint(4) NOT NULL COMMENT '任务类型：1 贷前审核任务，2 贷后跟踪任务',
  `userCode` varchar(50) NOT NULL COMMENT '审核员工号',
  `realName` varchar(20) NOT NULL COMMENT '审核人员姓名',
  `mobile` varchar(50) NOT NULL COMMENT '审核员手机号',
  `maxProcess` int(11) NOT NULL DEFAULT '0' COMMENT '最大审核数量',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_uniq_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='工作任务分配人员列表';

/*Table structure for table `trd_workTaskComplete` */

DROP TABLE IF EXISTS `trd_workTaskComplete`;

CREATE TABLE `trd_workTaskComplete` (
  `id` bigint(20) NOT NULL DEFAULT '0' COMMENT '主键ID',
  `projectId` bigint(20) NOT NULL COMMENT '标的ID',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `userName` varchar(60) DEFAULT NULL COMMENT '用户姓名',
  `mobileNo` varchar(30) DEFAULT NULL COMMENT '手机号',
  `applyTime` datetime NOT NULL COMMENT '申请时间',
  `allocTime` datetime NOT NULL COMMENT '分配时间',
  `approvalTime` datetime NOT NULL COMMENT '审批时间',
  `approvalUserId` bigint(20) NOT NULL COMMENT '审批人ID',
  `approvalUserName` varchar(50) DEFAULT NULL COMMENT '审批人姓名',
  `approvalHisUserId` bigint(20) DEFAULT NULL COMMENT '历史审批人ID',
  `approvalHisUserName` varchar(50) DEFAULT NULL COMMENT '历史审批人姓名',
  `taskType` tinyint(4) NOT NULL COMMENT '任务类型: 1.极速借审批',
  `taskStatus` tinyint(4) NOT NULL DEFAULT '3' COMMENT '任务状态: 1.未分配 2.已分配 3.已处理',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `Index 2` (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审核完成归档表';

/*Table structure for table `trd_workTaskProcess` */

DROP TABLE IF EXISTS `trd_workTaskProcess`;

CREATE TABLE `trd_workTaskProcess` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `projectId` bigint(20) NOT NULL COMMENT '标的ID',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `userName` varchar(50) DEFAULT NULL COMMENT '用户姓名',
  `mobileNo` varchar(30) DEFAULT NULL COMMENT '手机号',
  `applyTime` datetime NOT NULL COMMENT '申请时间',
  `deadline` int(11) NOT NULL COMMENT '期限(单位：天)',
  `allocTime` datetime DEFAULT NULL COMMENT '分配时间',
  `approvalTime` datetime DEFAULT NULL COMMENT '审批时间',
  `approvalUserId` bigint(20) DEFAULT NULL COMMENT '审批人ID',
  `approvalUserName` varchar(50) DEFAULT NULL COMMENT '审批人姓名',
  `approvalHisUserId` bigint(20) DEFAULT NULL COMMENT '历史审批人ID',
  `approvalHisUserName` varchar(50) DEFAULT NULL COMMENT '历史审批人姓名',
  `taskType` tinyint(4) NOT NULL COMMENT '任务类型: 1.极速借审批',
  `taskStatus` tinyint(4) NOT NULL DEFAULT '1' COMMENT '任务状态: 1.未分配 2.已分配 3.已处理',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新任务分配表';

/*Table structure for table `trd_workTaskUserInfo` */

DROP TABLE IF EXISTS `trd_workTaskUserInfo`;

CREATE TABLE `trd_workTaskUserInfo` (
  `userId` bigint(20) NOT NULL COMMENT '主键跟用户表ID保持一直',
  `realName` varchar(20) NOT NULL COMMENT '审核员姓名',
  `userCode` varchar(20) NOT NULL COMMENT '审核员编号',
  `mobile` varchar(20) NOT NULL COMMENT '手机号码',
  `taskNum` int(11) NOT NULL DEFAULT '0' COMMENT '当前任务数',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `updateTime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='贷前审核人员信息表';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
