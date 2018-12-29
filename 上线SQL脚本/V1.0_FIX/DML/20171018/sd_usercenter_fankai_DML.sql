-- 15520032352 	邓睿 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '67818757094924288'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508292298744371', '67818757094924288', '6217853200001748845', '中国银行', '01040000', '邓睿', '500106199801182813', '15520032352', '重庆市', '市辖区', '1', '1', '1',  now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508292310755147', '67818757094924288', '1', '邓睿', '500106199801182813', '6217853200001748845', '15520032352', '重庆市市辖区', '2', NULL, now(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01040000',
			 t.bankName = '中国银行',
			 t.bankAccount = '6217853200001748845',
			 t.updateTime = now()
	WHERE t.userId = '67818757094924288';
	
	
-- 18651905332 	胡涛 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '70296906739245056'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508316462212298', '70296906739245056', '6217002730008661930', '建设银行', '01050000', '胡涛', '421122198204120012', '18651905332', '湖北省', '黄冈市', '1', '1', '1', now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508316499922835', '70296906739245056', '1', '胡涛', '421122198204120012', '6217002730008661930', '18651905332', '湖北省黄冈市', '2', NULL, now(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01050000',
			 t.bankName = '建设银行',
			 t.bankAccount = '6217002730008661930',
			 t.updateTime = now()
	WHERE t.userId = '70296906739245056';



-- 17704515662 	武效南 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '67607480087109632'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508316506593650', '67607480087109632', '6217001140037681449', '建设银行', '01050000', '武效南', '220182198703237213', '17704515662', '黑龙江省', '哈尔滨市', '1', '1', '1', now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508316489301924', '67607480087109632', '1', '武效南', '220182198703237213', '6217001140037681449', '17704515662', '黑龙江省哈尔滨市', '2', NULL, now(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01050000',
			 t.bankName = '建设银行',
			 t.bankAccount = '6217001140037681449',
			 t.updateTime = now()
	WHERE t.userId = '67607480087109632';	