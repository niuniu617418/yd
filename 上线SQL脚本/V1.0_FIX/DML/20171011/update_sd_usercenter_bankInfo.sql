#执行第一步
UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '67465431144730624'; 


#执行第二步
INSERT INTO `sd_usercenter`.`tuc_userBindBankRecord` (
	`id`,
	`userId`,
	`bankAccount`,
	`bankName`,
	`bankCode`,
	`bankUserName`,
	`idCard`,
	`bindMobile`,
	`bankProvince`,
	`bankCity`,
	`withholdStatus`,
	`protocolStatus`,
	`status`,
	`createTime`,
	`updateTime`
)
VALUES
	(
		'',
		'67465431144730624',
		'6236681490001396046',
		'建设银行',
		'01050000',
		'张银波',
		'321282198902154824',
		'13754290381',
		'浙江省',
		'丽水市',
		'1',
		'1',
		'1',
		'2017-10-10 18:28:58',
		'2017-10-10 18:28:58'
	);

#执行第三步
INSERT INTO `sd_usercenter`.`tuc_userBankApplyRecord` (
	`id`,
	`userId`,
	`applyType`,
	`realName`,
	`identityCard`,
	`bankAccount`,
	`bankMobile`,
	`openAccountAddre`,
	`applyResult`,
	`failReason`,
	`applyTime`,
	`updateTime`
)
VALUES
	(
		'72945490777350144',
		'67465431144730624',
		'1',
		'张银波',
		'321282198902154824',
		'6236681490001396046',
		'13754290381',
		'浙江省丽水市',
		'2',
		NULL,
		'2017-08-03 11:02:13',
		'2017-10-10 18:28:58'
	);

#执行第四步
UPDATE sd_account.tac_accountbank t
SET t.bankCode = '01050000',
 t.bankName = '建设银行',
 t.bankAccount = '6236681490001396046',
 t.updateTime = now()
WHERE
t.userId = 67465431144730624;