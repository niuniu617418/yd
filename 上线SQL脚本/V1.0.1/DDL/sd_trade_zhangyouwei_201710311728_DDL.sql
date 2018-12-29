-- sd_trade创建表
CREATE TABLE `trd_phoneCallAuditConfig` (
	`id` BIGINT(20) NOT NULL COMMENT '主键',
	`conclusion` VARCHAR(100) NOT NULL COMMENT '沟通结果',
	`status` TINYINT(4) NOT NULL COMMENT '状态，0:删除，1：未删除',
	`createTime` DATETIME NOT NULL,
	`updateTime` DATETIME NOT NULL,
	PRIMARY KEY (`id`)
)
COMMENT='电话核查配置'
ENGINE=InnoDB
;
-- 初始化，电话核查配置表
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (1,'无人接通',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (2,'停机',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (3,'关机',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (4,'身份真实,认识借款人',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (5,'身份真实,不认识借款人',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (6,'身份不真实,不认识借款人',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (7,'身份不真实,认识借款人',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (8,'借款人本人接听',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (9,'空号',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (10,'无法接通',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (11,'呼叫等待',1,now(),now());
insert into trd_phoneCallAuditConfig (id,conclusion,`status`,createTime,updateTime) values (12,'挂断',1,now(),now());	

-- sd_trade 修改表
ALTER TABLE `trd_phoneCallAudit`
	CHANGE COLUMN `conclusion` `conclusion` BIGINT NOT NULL COMMENT '结论,沟通结果,枚举' AFTER `respondents`;