USE sd_manager
DROP TABLE IF EXISTS tmn_sys_msg_department_relation;
CREATE TABLE `tmn_sys_msg_department_relation` (
  `msgId` bigint(20) NOT NULL COMMENT '消息ID',
  `departmentId` bigint(20) NOT NULL COMMENT '附件ID',
  `createUserId` bigint(20) NOT NULL COMMENT '创建用户ID',
  `createTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`msgId`,`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='消息发送部门关系表';