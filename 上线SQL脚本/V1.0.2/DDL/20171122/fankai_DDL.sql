# 自动审核新模型计算 数据存储
CREATE TABLE `sd_trade`.`trd_modelcalculationrequest` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `order_id` bigint(20) NOT NULL COMMENT '订单号码',
  `project_id` bigint(20) DEFAULT NULL COMMENT '项目ID',
  `basic_info` varchar(256) DEFAULT NULL COMMENT '用户基本信息',
  `work_info` varchar(256) DEFAULT NULL COMMENT '工作信息',
  `notify_url` varchar(128) DEFAULT NULL COMMENT '推送url',
  `session_id` varchar(50) DEFAULT NULL COMMENT '会话ID',
  `version` varchar(12) DEFAULT NULL COMMENT '接口版本',
  `code` tinyint DEFAULT NULL COMMENT '状态码 0:成功,1:请求参数错误,2:获取数据超时,3:数据异常,4:服务忙，稍后重试,5:其它错误',
  `code_desc` varchar(128) DEFAULT NULL COMMENT '状态描述',
  `reserve` varchar(30) DEFAULT NULL COMMENT '保留字段(如请求中携带reserve，则本字段也必填，并和请求中的reserve字段值保持一致。)',
  `body` varchar(500) DEFAULT NULL COMMENT '消息体',
  `callback` tinyint DEFAULT '0' COMMENT '是否回调结果（0：否  1：是  2：补漏获取结果）',
  `createTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动审核新模型计算 —— 请求数据';



CREATE TABLE `sd_trade`.`trd_modelcalculationresponse` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `session_id` varchar(50) DEFAULT NULL COMMENT '会话ID',
  `version` varchar(12) DEFAULT NULL COMMENT '接口版本',
  `code` tinyint DEFAULT NULL COMMENT '状态码 0:成功,1:请求参数错误,2:获取数据超时,3:数据异常,4:服务忙，稍后重试,5:其它错误',
  `code_desc` varchar(255) DEFAULT NULL COMMENT '状态描述',
  `reserve` varchar(30) DEFAULT NULL COMMENT '保留字段(如请求中携带reserve，则本字段也必填，并和请求中的reserve字段值保持一致。)',
  `recordId` bigint(20) DEFAULT NULL COMMENT '对应请求order_id',
  `callbackStr` varchar(500) DEFAULT NULL COMMENT '回调结果字符串',
  `projectId` bigint(20) DEFAULT NULL COMMENT '项目id',
  `resultWay` tinyint DEFAULT NULL COMMENT '结果返回方式（1：回调返回 2：补漏请求）',
  `createTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`recordId`),
  KEY `idx_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自动审核新模型计算 —— 响应结果';



ALTER TABLE `sd_trade`.`trd_modelcalculationrequest` MODIFY COLUMN `userId`  bigint(20) NULL COMMENT '用户id' AFTER `id`;

ALTER TABLE `sd_trade`.`trd_modelcalculationresponse` MODIFY COLUMN `userId`  bigint(20) NULL COMMENT '用户id' AFTER `id`;

ALTER TABLE `sd_trade`.`trd_modelcalculationresponse` MODIFY COLUMN `callbackStr`  text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '回调结果字符串' AFTER `recordId`;

