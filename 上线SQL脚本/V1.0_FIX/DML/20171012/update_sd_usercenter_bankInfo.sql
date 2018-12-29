-- 13980913423 冯佳兴 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '69012158368735232'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1507788335099823', '69012158368735232', '6217853100017002320', '中国银行', '01040000', '冯佳兴', '511325199809033516', '13980913423', '四川省', '成都市', '1', '1', '1', now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1507788993306564', '69012158368735232', '1', '冯佳兴', '511325199809033516', '6217853100017002320', '13980913423', '四川省成都市', '2', NULL, now(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01040000',
			 t.bankName = '中国银行',
			 t.bankAccount = '6217853100017002320',
			 t.updateTime = now()
	WHERE t.userId = '69012158368735232';



-- 13544367234 	曾志铭 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '67458896742060032'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1507789682695431', '67458896742060032', '6212263602103989554', '工商银行', '01020000', '曾志铭', '440182199105140978', '13544367234', '广东省', '广州市', '1', '1', '1', now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1507789882942841', '67458896742060032', '1', '曾志铭', '440182199105140978', '6212263602103989554', '13544367234', '广东省广州市', '2', NULL, now(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01020000',
			 t.bankName = '工商银行',
			 t.bankAccount = '6212263602103989554',
			 t.updateTime = now()
	WHERE t.userId = '67458896742060032';



-- 18801322449 	杜可欣 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '68475043931246592'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1507790021915428', '68475043931246592', '6212250200010174942', '工商银行', '01020000', '杜可欣', '130681199705223820', '18801322449', '河北省', '保定市', '1', '1', '1', now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1507790027888834', '68475043931246592', '1', '杜可欣', '130681199705223820', '6212250200010174942', '18801322449', '河北省保定市', '2', NULL, now(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01020000',
			 t.bankName = '工商银行',
			 t.bankAccount = '6212250200010174942',
			 t.updateTime = now()
	WHERE t.userId = '68475043931246592';