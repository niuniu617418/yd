
CREATE TABLE sd_trade.`trd_autoaudittask` (
  `projectId` BIGINT(20) NOT NULL COMMENT '项目编号',
  `userId` BIGINT(20) NOT NULL COMMENT '用户编号',
  `status` TINYINT(1) NOT NULL COMMENT '任务状态 , 0.待处理 1.处理完成',
  `createTime` DATETIME NOT NULL COMMENT '创建时间',
  `updateTime` DATETIME NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`projectId`),
  KEY `IDX_CREATETIME` (`createTime`)
)