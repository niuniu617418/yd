
# 你我云贷，换绑卡审核、附件材料存储
CREATE TABLE `sd_usercenter`.`tuc_changeBindBankAudit` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL COMMENT '用户id',
  `bankAccount` varchar(30) NOT NULL COMMENT '银行卡号',
  `bankName` varchar(30) NOT NULL COMMENT '银行名称',
  `bankCode` varchar(50) NOT NULL COMMENT '银行编码',
  `bankUserName` varchar(50) NOT NULL COMMENT '账户名',
  `idCard` varchar(30) NOT NULL COMMENT '身份证号',
  `bindMobile` varchar(20) NOT NULL COMMENT '绑定手机号',
  `bankProvince` varchar(30) NOT NULL COMMENT '银行所在行政区',
  `bankCity` varchar(30) DEFAULT NULL COMMENT '银行卡所在市',
  `openAccountAddre` varchar(100) DEFAULT NULL COMMENT '开户行所在地',
  `withholdStatus` tinyint DEFAULT NULL COMMENT '代扣状态',
  `protocolStatus` tinyint NOT NULL DEFAULT '0' COMMENT '协议签署状态（0：未签署，1：已签署）',
  `remark` varchar(255) DEFAULT NULL COMMENT '附件材料备注',
  `auditor` varchar(30) DEFAULT NULL COMMENT '审核人',
  `refuseReason` varchar(255) DEFAULT NULL COMMENT '审核拒绝原因，只有不通过才填写',
  `isAuth` tinyint NOT NULL DEFAULT 0 COMMENT '是否已认证（0：未认证，1：已认证）',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '审核状态（0：审核中  1：审核通过  2：审核不通过）',
  `applyTime` datetime NOT NULL COMMENT '申请时间',
  `auditTime` datetime DEFAULT NULL COMMENT '审核时间',
  `createTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='C、 用户换绑卡审核';


CREATE TABLE `sd_usercenter`.`tuc_userAttachRelation` (
  `id` bigint(20) NOT NULL,
  `relId` bigint(20) NOT NULL COMMENT '业务关联id',
  `fileId` bigint(20) NOT NULL COMMENT '关联文件id',
  `createTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_relId` (`relId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A、 附件关联关系表';





