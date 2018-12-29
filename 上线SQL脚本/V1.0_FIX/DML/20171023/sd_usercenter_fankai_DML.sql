-- 13555549640 李春婷 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = 69607384309309440; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508759446230769', '69607384309309440', '6212263500031674506', '工商银行', '01020000', '李春婷', '230621199406010080', '13555549640', '黑龙江省', '大庆市', '1', '1', '1', NOW(), NOW());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508759450784852', '69607384309309440', '1', '李春婷', '230621199406010080', '6212263500031674506', '13555549640', '黑龙江省大庆市', '2', NULL, NOW(), NOW());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01020000',
			 t.bankName = '工商银行',
			 t.bankAccount = '6212263500031674506',
			 t.updateTime = now()
	WHERE t.userId = 69607384309309440;
	
	
	
#--修改15800128980用户银行卡预留手机改成：13554599333
UPDATE sd_usercenter.tuc_userbindbankrecord t SET t.bindMobile = '13554599333' WHERE id = 71711343295619072;
UPDATE sd_usercenter.tuc_userbankapplyrecord t SET t.bankMobile = '13554599333' WHERE id = 71711343278841856;
UPDATE sd_account.tac_accountbank t SET t.userMobile = '13554599333' WHERE t.userId = 71710404887207936;