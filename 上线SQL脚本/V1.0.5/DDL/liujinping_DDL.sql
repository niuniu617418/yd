CREATE TABLE `trd_projectcoupon` (
  `id` bigint(20) NOT NULL COMMENT '����ID',
  `projectId` bigint(20) NOT NULL COMMENT '���ID',
  `couponId` tinyint(20) NOT NULL COMMENT '�Ż�ȯID',
  `couponType` int(11) NOT NULL COMMENT '�Ż�ȯ����',
  `userId` bigint(20) NOT NULL COMMENT '�û�ID',
  `status` tinyint(4) NOT NULL COMMENT '�Ż�ȯ״̬��0 δʹ�� 1ʹ���� 2��ʹ�� 3 ������',
  `discountRate` decimal(18,2) DEFAULT NULL COMMENT '�ۿ���',
  `deadlineLimt` int(11) DEFAULT NULL COMMENT '7��껹��15���',
  `amountLimit` decimal(9,2) DEFAULT NULL COMMENT '�ۿ������',
  `amount` decimal(9,2) NOT NULL COMMENT '���',
  `invalidTime` datetime NOT NULL COMMENT 'ʧЧʱ��',
  `createTime` datetime NOT NULL COMMENT '����ʱ��',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='���ʹ���Ż�ȯ��¼��';

