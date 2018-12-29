CREATE TABLE `tab_activity` (
  `activityId` bigint(20) NOT NULL COMMENT '活动主键',
  `title` varchar(32) NOT NULL COMMENT '标题',
  `activityCode` varchar(64) NOT NULL COMMENT '活动编码',
  `activityType` TINYINT (4) NOT NULL DEFAULT '0' COMMENT '活动类型(0:抽奖/排名活动、1:积分活动、2:常规活动)',
  `activityFrom` VARCHAR(64) DEFAULT NULL COMMENT '活动来源',
  `activityDesc` VARCHAR(256) DEFAULT NULL COMMENT '活动描述',
  `activityBeginTime` DATETIME DEFAULT NULL COMMENT '活动开始时间',
  `activityEndTime` DATETIME DEFAULT NULL COMMENT '活动结束时间',
  `isShowOnApp` TINYINT(4) NOT NULL DEFAULT '0'COMMENT '是否APP上显示(0:不需要显示;1:需要显示)',
  `showBeginTime` DATETIME DEFAULT NULL COMMENT '活动项对外公示的开始时间',
  `bannerImg` TEXT DEFAULT NULL COMMENT 'banner图片，按照以下格式保存[{"bannerImg":"图片地址","linkAddr":"http://","imgSort":1,"imgDec":"描述"}]',
  `allowShare` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否允许分享(0:不允许;1:允许)',
  `shareContent` DATETIME DEFAULT NULL COMMENT '分享内容以如下格式保存[{"shareTitle":"标题","shareDes":"描述","shareImage":"图片地址",”shareSort”:1},..]',
  `activityUserType` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '活动适用的用户类型 0-全部 1-投资  2-借款',
  `delFlag` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '删除标志(0:未删除;1:已删除)',
  `createManager` VARCHAR(128) DEFAULT NULL COMMENT '添加管理员',
  `updateManager` VARCHAR(128) DEFAULT NULL COMMENT '修改管理员',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`activityId`),
  UNIQUE KEY (`activityCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动表';


CREATE TABLE `tab_goods` (
  `goodsId` BIGINT(20) NOT NULL COMMENT '奖品主键',
  `goodsTypeId` INT(11) NOT NULL COMMENT '奖品类型Id,参照表tab_goodsTypeDic中的Id',
  `goodsName` VARCHAR(128) NOT NULL COMMENT '物品名称',
  `goodsCode` VARCHAR(128) NOT NULL COMMENT '物品编码',
  `goodsDescription` VARCHAR(512) DEFAULT NULL COMMENT '物品描述',
  `routineActivityImage` VARCHAR(256) DEFAULT NULL COMMENT '常规活动图片',
  `goodsRules` VARCHAR(1024) DEFAULT NULL COMMENT '奖品规则',
  `effectiveChoice` TINYINT(4) NOT NULL DEFAULT '0'COMMENT '是否APP上显示(0:不需要显示;1:需要显示)',
  `validDays` INT(11) DEFAULT 0 NOT NULL COMMENT '有效期：单位，天数',
  `validBeginTime` DATETIME DEFAULT NULL COMMENT '使用期限：非立即生效的开始时间',
  `validEndTime` DATETIME NOT NULL COMMENT '使用期限：非立即生效的结束时间',
  `sourceFrom` VARCHAR(128) NOT NULL COMMENT '奖品来源',
  `amountLimit` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '金额限制',
  `deadlineLimt` INT(11) NOT NULL DEFAULT '0' COMMENT '期限限制：0代表无限制，7代表7天标的使用，15代表15天标的使用',
  `redBagNum` INT(11) NOT NULL DEFAULT '0' COMMENT '随机红包个数限制',
  `redBagMaxAmount` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '随机红包最大金额限制',
  `redBagMinAmount` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '随机红包最小金额限制',
  `discountPeriod` INT(11) NOT NULL DEFAULT '0' COMMENT '折扣期限：默认值 0，单位：天',
  `discountRate` DECIMAL(18,2) NOT NULL DEFAULT '0' COMMENT '折扣利率：默认值 0',
  `delFlag` TINYINT(4) NOT NULL COMMENT '删除标志(0:未删除;1:已删除)',
  `createManager` VARCHAR(128) DEFAULT NULL COMMENT '添加管理员',
  `updateManager` VARCHAR(128) DEFAULT NULL COMMENT '修改管理员',
  `createTime` DATETIME NOT NULL COMMENT '添加时间',
  `updateTime` DATETIME NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`goodsId`),
  UNIQUE KEY  (`goodsCode`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='奖品表';



CREATE TABLE `tab_gainRecordDetail` (
  `recordId` BIGINT(20) NOT NULL COMMENT '卡券主键',
  `goodsId` BIGINT(20) NOT NULL COMMENT '奖品id,参照tab_goods表中的Id字段',
  `activityId` BIGINT(20) NOT NULL COMMENT '活动id,参照tab_activity表中的activityId字段',
  `projectId` BIGINT(20) NOT NULL DEFAULT '0' COMMENT '奖品使用的标的ID',
  `goodsTypeId` INT(11) NOT NULL COMMENT '物品类型，参考奖品枚举类：100001：免息券，100002：固定借款红包，100003：随机借款红包',
  `awardDesc` VARCHAR(100) NOT NULL COMMENT '获奖描述：标明该奖品发放的原因',
  `status` TINYINT(4) NOT NULL DEFAULT '0' COMMENT '用户奖品状态：0 未使用 1使用中 2已使用 3 已作废',
  `goodsAmount` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '奖品金额(奖品是固定红包、随机红包的金额)',
  `userId` VARCHAR(64) DEFAULT NULL COMMENT '用户标识',
  `realName` VARCHAR(128) NULL  COMMENT '用户姓名' ,
  `mobileNo` VARCHAR(64) NULL  COMMENT '手机号码' AFTER `realName`,
  `shareUserId` VARCHAR(64) DEFAULT NULL COMMENT '分享人用户标识',
  `shareProjectId` BIGINT(20) DEFAULT NULL COMMENT '分享人标的Id',
  `goodsStartTime` DATETIME DEFAULT NULL COMMENT '奖品开始时间',
  `goodsEndTime` DATETIME NOT NULL COMMENT '奖品结束时间',
  `useTime` DATETIME NULL  COMMENT '奖品使用时间',
  `validDays` INT(11) DEFAULT 0 NOT NULL COMMENT '有效期：单位，天数',
  `createManager` VARCHAR(128) DEFAULT NULL COMMENT '添加管理员',
  `updateManager`  VARCHAR(128) DEFAULT NULL COMMENT '修改管理员',
  `createTime` DATETIME NOT NULL COMMENT '添加时间',
  `updateTime` DATETIME NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`recordId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='奖品领取记录表';


CREATE TABLE `tas_activityConfig` (
  `configKey` VARCHAR(192) NOT NULL COMMENT '活动配置表主键 唯一值，不能重复',
  `configValue` VARCHAR(2048) NOT NULL COMMENT '配置值',
  `activityCode` varchar(64) DEFAULT NULL COMMENT '活动编码',
  `valueType` VARCHAR(96) DEFAULT NULL COMMENT '配置类型',
  `description` VARCHAR(256) NOT NULL COMMENT '描述',
  `createManager` VARCHAR(128) DEFAULT NULL COMMENT '添加管理员',
  `updateManager` VARCHAR(128) DEFAULT NULL COMMENT '修改管理员',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`configKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动配置表'; 


CREATE TABLE `tab_openrecord` (
  `recordId` bigint(20) NOT NULL COMMENT '记录表主键',
  `openId` varchar(64) NOT NULL COMMENT '微信ID',
  `userId` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户Id',
  `shareUserId` varchar(64) DEFAULT NULL  COMMENT '分享人用户标识',
  `shareProjectId` bigint(20) DEFAULT NULL COMMENT '分享人标的Id',
  `amount` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '领取金额',
  `nickName` varchar(64) DEFAULT NULL COMMENT '微信昵称',
  `headImgUrl` varchar(512) DEFAULT NULL COMMENT '分享人用户标识',
  `createManager` varchar(128) DEFAULT NULL COMMENT '添加管理员',
  `updateManager` varchar(128) DEFAULT NULL COMMENT '修改管理员',
  `createTime` datetime NOT NULL COMMENT '添加时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`recordId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信打开红包记录表'
