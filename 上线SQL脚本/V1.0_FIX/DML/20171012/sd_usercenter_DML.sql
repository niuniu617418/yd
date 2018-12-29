-- 13828699467 	苏海东 换绑卡

	-- 将用户原有的绑卡信息状态设置为 “无效”
	UPDATE `sd_usercenter`.`tuc_userBindBankRecord` SET status = 0 WHERE userId = '68530824588300288'; 
	
	-- 给用户新增一条绑卡信息
	INSERT INTO `sd_usercenter`.`tuc_userbindbankrecord` (`id`, `userId`, `bankAccount`, `bankName`, `bankCode`, `bankUserName`, `idCard`, `bindMobile`, `bankProvince`, `bankCity`, `withholdStatus`, `protocolStatus`, `status`, `createTime`, `updateTime`) 
	VALUES ('1507801456284950', '68530824588300288', '6228481176742260075', '农业银行', '01030000', '苏海东', '440981199310012219', '13828699467', '广东省', '茂名市', '1', '1', '1', now(), now());

	-- 新增一条用户绑卡申请记录信息	
	INSERT INTO `sd_usercenter`.`tuc_userbankapplyrecord` (`id`, `userId`, `applyType`, `realName`, `identityCard`, `bankAccount`, `bankMobile`, `openAccountAddre`, `applyResult`, `failReason`, `applyTime`, `updateTime`) 
	VALUES ('1507801462374901', '68530824588300288', '1', '苏海东', '440981199310012219', '6228481176742260075', '13828699467', '广东省茂名市', '2', NULL, now(), now());

	-- 修改用户账户 银行卡信息
	UPDATE sd_account.tac_accountbank t
	SET  t.bankCode = '01030000',
			 t.bankName = '农业银行',
			 t.bankAccount = '6228481176742260075',
			 t.updateTime = now()
	WHERE t.userId = '68530824588300288';
	
	
	
	
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('524', '中国邮政储蓄银行', '1000000', 'II类帐户', '19', '623676');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('525', '中国邮政储蓄银行', '1000000', 'III类帐户', '19', '623677');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('526', '中国建设银行', '1050000', '工会龙卡', '19', '623656');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('527', '中国建设银行', '1050000', '--', '19', '623644');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('528', '中国交通银行', '3010000', '--', '19', '623560');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('529', '招商银行', '3080000', '招行公司一卡通IC卡', '19', '62326536');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('530', '兴业银行', '3090000', '兴业管家卡', '17', '623287');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('531', '招商银行', '3080000', 'I理财卡', '16', '621276');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('532', '平安银行', '3070010', '--', '16', '623269');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('535', '平安银行', '3070010', '万事顺卡', '16', '602907');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('536', '平安银行', '3070010', '平安银行借记卡', '16', '622986');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('537', '平安银行', '3070010', '平安银行借记卡', '16', '622989');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('539', '平安银行', '3070010', '一账通借贷合一钻石卡', '16', '627069');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('540', '平安银行', '3070010', '一账通借贷合一钻石卡', '16', '627066');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('541', '平安银行', '3070010', '一账通借贷合一钻石卡', '16', '627067');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('542', '平安银行', '3070010', '一账通借贷合一钻石卡', '16', '627068');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('543', '中国建设银行', '1050000', '社保IC卡', '19', '621467');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('544', '中国邮政储蓄银行', '1000000', '武警军人保障卡', '19', '621622');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('545', '中国邮政储蓄银行', '1000000', '中国旅游卡(金卡)', '19', '623219');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('546', '中国邮政储蓄银行', '1000000', '普通高中学生资助卡', '19', '621674');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('547', '中国邮政储蓄银行', '1000000', '中国旅游卡(普卡)', '19', '623218');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('548', '中国邮政储蓄银行', '1000000', '福农卡', '19', '621599');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('549', '中国邮政储蓄银行', '1000000', '绿卡通IC卡-白金卡', '19', '623698');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('550', '中国邮政储蓄银行', '1000000', '绿卡通IC卡-钻石卡', '19', '623699');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('551', '中国邮政储蓄银行', '1000000', '绿卡通IC联名卡', '19', '623686');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('552', '中国邮政储蓄银行', '1000000', '绿卡通', '19', '621098');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('553', '中国邮政储蓄银行', '1000000', '--', '19', '620529');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('554', '中国邮政储蓄银行', '1000000', '绿卡通IC卡全国联名卡', '19', '622180');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('555', '中国邮政储蓄银行', '1000000', '绿卡芯片卡', '19', '622182');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('556', '中国邮政储蓄银行', '1000000', '绿卡通区域性主题卡', '19', '622187');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('557', '中国邮政储蓄银行', '1000000', '教育卡', '19', '622189');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('558', '中国邮政储蓄银行', '1000000', '福农卡', '19', '621582');
INSERT INTO `sd_usercenter`.`tuc_cardbin` (`id`, `bankName`, `bankCode`, `cardClassName`, `cardLength`, `cardBin`) VALUES ('559', '中国邮政储蓄银行', '1000000', '绿卡银联标准卡', '19', '622188');


update sd_trade.trd_project set applyTime = '2017-10-05 17:30:57' where projectId = 69665402656935936;

--过15分钟后执行
update sd_trade.trd_project set applyTime = '2017-10-01 17:30:57' where projectId = 69665402656935936;

