-- sd_trade������
CREATE TABLE `trd_phoneCallAuditConfig` (
	`id` BIGINT(20) NOT NULL COMMENT '����',
	`conclusion` VARCHAR(100) NOT NULL COMMENT '��ͨ���',
	`status` TINYINT(4) NOT NULL COMMENT '״̬��0:ɾ����1��δɾ��',
	`createTime` DATETIME NOT NULL,
	`updateTime` DATETIME NOT NULL,
	PRIMARY KEY (`id`)
)
COMMENT='�绰�˲�����'
ENGINE=InnoDB
;
-- ��ʼ�����绰�˲����ñ�
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (1,'���˽�ͨ',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (2,'ͣ��',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (3,'�ػ�',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (4,'�����ʵ,��ʶ�����',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (5,'�����ʵ,����ʶ�����',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (6,'��ݲ���ʵ,����ʶ�����',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (7,'��ݲ���ʵ,��ʶ�����',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (8,'����˱��˽���',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (9,'�պ�',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (10,'�޷���ͨ',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (11,'���еȴ�',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (12,'�Ҷ�',1,now(),now());	

-- sd_trade �޸ı�
ALTER TABLE `trd_phoneCallAudit`
	CHANGE COLUMN `conclusion` `conclusion` BIGINT NOT NULL COMMENT '����,��ͨ���,ö��' AFTER `respondents`;