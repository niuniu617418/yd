-- 15252907293 解柳迪 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET STATUS = 0 WHERE userId = '70020869878980608'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508398211852331', '70020869878980608', '6217993000267670266', '邮储银行', '01000000', '解柳迪', '321183199509251025', '15252907293', '江苏省', '镇江市', '1', '1', '1', NOW(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508398216027332', '70020869878980608', '1', '解柳迪', '321183199509251025', '6217993000267670266', '15252907293', '江苏省镇江市', '2', NULL, NOW(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01000000',
			 t.bankName = '邮储银行',
			 t.bankAccount = '6217993000267670266',
			 t.updateTime = NOW()
	WHERE t.userId = '70020869878980608';





-- 15875183699 叶植健 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET STATUS = 0 WHERE userId = '67704521136037888'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508398030940364', '67704521136037888', '6228481164798476217', '农业银行', '01030000', '叶植健', '441721199506021030', '15875183699', '广东省', '阳江市', '1', '1', '1', NOW(), NOW());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508398044570742', '67704521136037888', '1', '叶植健', '441721199506021030', '6228481164798476217', '15875183699', '广东省阳江市', '2', NULL, NOW(), NOW());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01030000',
			 t.bankName = '农业银行',
			 t.bankAccount = '6228481164798476217',
			 t.updateTime = NOW()
	WHERE t.userId = '67704521136037888';




-- 13650764089 刘靖 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET STATUS = 0 WHERE userId = '67986490109480960'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508397845022582', '67986490109480960', '6214830205147787', '招商银行', '03080000', '刘靖', '500239198808114125', '13650764089', '广东省', '广州市', '1', '1', '1', now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508397850726021', '67986490109480960', '1', '刘靖', '500239198808114125', '6214830205147787', '13650764089', '广东省广州市', '2', NULL, now(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '03080000',
			 t.bankName = '招商银行',
			 t.bankAccount = '6214830205147787',
			 t.updateTime = NOW()
	WHERE t.userId = '67986490109480960';
