-- 15763099075 	高继庆 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '70281206922485760'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508243703056937', '70281206922485760', '6227002201603983516', '建设银行', '01050000', '高继庆', '370781199206125214', '15763099075', '山东省', '潍坊市', '1', '1', '1', now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508243711539730', '70281206922485760', '1', '高继庆', '370781199206125214', '6227002201603983516', '15763099075', '山东省潍坊市', '2', NULL, now(), NOW());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01050000',
			 t.bankName = '建设银行',
			 t.bankAccount = '6227002201603983516',
			 t.updateTime = now()
	WHERE t.userId = '70281206922485760';



-- 15253302131 	李彬 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '67343328982601728'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508243717832350', '67343328982601728', '6212261603014406771', '工商银行', '01020000', '李彬', '370302199210086310', '15253302131', '山东省', '淄博市', '1', '1', '1', now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508243723736729', '67343328982601728', '1', '李彬', '370302199210086310', '6212261603014406771', '15253302131', '山东省淄博市', '2', NULL, now(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01020000',
			 t.bankName = '工商银行',
			 t.bankAccount = '6212261603014406771',
			 t.updateTime = now()
	WHERE t.userId = '67343328982601728';




-- 15833779727 	魏丽 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '67801487903821824'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1508243730366488', '67801487903821824', '6228481739190322372', '农业银行', '01030000', '魏丽', '34122519951201152X', '15833779727', '河北省', '沧州市', '1', '1', '1', now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1508243736214918', '67801487903821824', '1', '魏丽', '34122519951201152X', '6228481739190322372', '15833779727', '河北省沧州市', '2', NULL, now(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01030000',
			 t.bankName = '农业银行',
			 t.bankAccount = '6228481739190322372',
			 t.updateTime = now()
	WHERE t.userId = '67801487903821824';