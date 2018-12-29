USE `sd_manager`;
-- 二期新增表结构
DROP TABLE IF EXISTS tmn_sys_msg;
CREATE TABLE `tmn_sys_msg` (
  `msgId` bigint(20) NOT NULL COMMENT '消息ID',
  `msgTitle` varchar(128) NOT NULL COMMENT '消息标题',
  `msgContent` text NOT NULL COMMENT '消息内容',
  `msgType` tinyint(2) NOT NULL COMMENT '消息类型：1-系统通知',
  `sendTime` datetime NOT NULL COMMENT '发送时间',
  `departmentId` bigint(20) NOT NULL COMMENT '发送对象，部门ID',
  `sendStatus` tinyint(2) NOT NULL DEFAULT 0 COMMENT '发送状态：0-未发送，1-已发送',
  `deleteFlag` tinyint(2) NOT NULL DEFAULT 0 COMMENT '删除状态：0-未删除，1-已删除',
  `createUserId` bigint(20) NOT NULL COMMENT '创建用户ID',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateUserId` bigint(20) NOT NULL COMMENT '更新用户ID',
  `updatedTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`msgId`),
  KEY `idex_msg_send_status` (`sendStatus`),
  KEY `inx_msg_send_time` (`sendTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息详细表';


DROP TABLE IF EXISTS tmn_sys_attachment;
CREATE TABLE `tmn_sys_attachment` (
  `attachmentId` bigint(20) NOT NULL COMMENT '附件ID',
  `attachmentName` varchar(128) NOT NULL COMMENT '附件名称',
  `attachmentPath` varchar(128) NOT NULL COMMENT '附件路径',
  `createUserId` bigint(20) NOT NULL COMMENT '上传用户ID',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`attachmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='附件表';


DROP TABLE IF EXISTS tmn_sys_attachment_relation;
CREATE TABLE `tmn_sys_attachment_relation` (
  `relationId` bigint(20) NOT NULL COMMENT '对应关系ID',
  `relationType` tinyint(4) NOT NULL COMMENT '类型：1-消息，2-其它',
  `attachmentId` bigint(20) NOT NULL COMMENT '附件ID',
  `createUserId` bigint(20) NOT NULL COMMENT '创建用户ID',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`relationId`),
  UNIQUE KEY `uk_relation_attach_id` (`relationId`,`attachmentId`,`relationType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='附件对应关系表';

DROP TABLE IF EXISTS tmn_sys_user_msg;
CREATE TABLE `tmn_sys_user_msg` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `userId` bigint(20) NOT NULL COMMENT '用户ID',
  `msgId` bigint(20) NOT NULL COMMENT '消息ID',
  `readStatus` tinyint(2) NOT NULL COMMENT '读取状态：1-未读，2-已读',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updatedTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_id_msg_id` (`userId`,`msgId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='个人消息表';