-- 15833169851 	张志明 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '68820730254462976'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1507967790820313', '68820730254462976', '6212260410015296529', '工商银行', '01020000', '张志明', '131028198201182019', '15833169851', '河北省', '廊坊市', '1', '1', '1', now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1507967783202872', '68820730254462976', '1', '张志明', '131028198201182019', '6212260410015296529', '15833169851', '河北省廊坊市', '2', NULL, now(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01020000',
			 t.bankName = '工商银行',
			 t.bankAccount = '6212260410015296529',
			 t.updateTime = now()
	WHERE t.userId = '68820730254462976';




-- 17605336580 	曹源 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '68466902757822464'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1507968136284780', '68466902757822464', '6230520280003152275', '农业银行', '01030000', '曹源', '370321199411051244', '17605336580', '重庆市', NULL, '1', '1', '1', now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1507968141377807', '68466902757822464', '1', '曹源', '370321199411051244', '6230520280003152275', '17605336580', '重庆市', '2', NULL, now(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01030000',
			 t.bankName = '农业银行',
			 t.bankAccount = '6230520280003152275',
			 t.updateTime = now()
	WHERE t.userId = '68466902757822464';