
# �����ƴ���������ˡ��������ϴ洢
CREATE TABLE `sd_usercenter`.`tuc_changeBindBankAudit` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL COMMENT '�û�id',
  `bankAccount` varchar(30) NOT NULL COMMENT '���п���',
  `bankName` varchar(30) NOT NULL COMMENT '��������',
  `bankCode` varchar(50) NOT NULL COMMENT '���б���',
  `bankUserName` varchar(50) NOT NULL COMMENT '�˻���',
  `idCard` varchar(30) NOT NULL COMMENT '���֤��',
  `bindMobile` varchar(20) NOT NULL COMMENT '���ֻ���',
  `bankProvince` varchar(30) NOT NULL COMMENT '��������������',
  `bankCity` varchar(30) DEFAULT NULL COMMENT '���п�������',
  `openAccountAddre` varchar(100) DEFAULT NULL COMMENT '���������ڵ�',
  `withholdStatus` tinyint DEFAULT NULL COMMENT '����״̬',
  `protocolStatus` tinyint NOT NULL DEFAULT '0' COMMENT 'Э��ǩ��״̬��0��δǩ��1����ǩ��',
  `remark` varchar(255) DEFAULT NULL COMMENT '�������ϱ�ע',
  `auditor` varchar(30) DEFAULT NULL COMMENT '�����',
  `refuseReason` varchar(255) DEFAULT NULL COMMENT '��˾ܾ�ԭ��ֻ�в�ͨ������д',
  `isAuth` tinyint NOT NULL DEFAULT 0 COMMENT '�Ƿ�����֤��0��δ��֤��1������֤��',
  `status` tinyint NOT NULL DEFAULT 0 COMMENT '���״̬��0�������  1�����ͨ��  2����˲�ͨ����',
  `applyTime` datetime NOT NULL COMMENT '����ʱ��',
  `auditTime` datetime DEFAULT NULL COMMENT '���ʱ��',
  `createTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='C�� �û��������';


CREATE TABLE `sd_usercenter`.`tuc_userAttachRelation` (
  `id` bigint(20) NOT NULL,
  `relId` bigint(20) NOT NULL COMMENT 'ҵ�����id',
  `fileId` bigint(20) NOT NULL COMMENT '�����ļ�id',
  `createTime` datetime NOT NULL,
  `updateTime` datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_relId` (`relId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A�� ����������ϵ��';





