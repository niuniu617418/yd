#第一步：插入代扣数据
INSERT INTO `sd_account`.`tac_withholdorder`(`orderNo`, `outerOrderNo`, `borrowUserId`, `plateformId`, `projectId`, `amount`, `bankAccount`, `bankCode`, `bankMobile`, `realName`, `idCard`, `param`, `status`, `responseJson`, `responseTime`, `createTime`, `updateTime`) VALUES (1528956880361204, NULL, 76455892039524352, 1, 87366568622706688, 1560.00, '6222620610002814648', '03010000', '15007133670', '毛波', '420115198608048315', '', 4, NULL, NULL, NOW(),NOW());
INSERT INTO `sd_account`.`tac_withholdorder`(`orderNo`, `outerOrderNo`, `borrowUserId`, `plateformId`, `projectId`, `amount`, `bankAccount`, `bankCode`, `bankMobile`, `realName`, `idCard`, `param`, `status`, `responseJson`, `responseTime`, `createTime`, `updateTime`) VALUES (1528956888505734, NULL, 76249939813883904, 1, 76253894186913792, 1560.00, '6217000660002221856', '01050000', '13303444060', '张爽', '211221199305141239', '', 4, NULL, NULL, NOW(),NOW());

#第二步：生成执行脚本
SELECT
	CONCAT(
		'INSERT INTO sd_account.tac_fundsfloworder (fundsFlowOrderNo, orderNo, completeDate, orderType, userId, plateformId, projectId, amount, bankAccount, bankCode, bankMobile, realName, idCard, status, createTime, updateTime) values (',
		CAST(@rownum := @rownum + 1 AS SIGNED),
		', ',t3.orderNo,', \'',t3.createTime,'\', ','2',', ',t3.borrowUserId,', 1, ',t.projectId,', ',t3.amount,', ',t3.bankAccount,', ',t3.bankCode,
		', \'',t3.bankMobile,'\', \'',t3.realName,'\', \'',t3.idCard,'\', 1, \'',t3.createTime,'\', \'',t3.createTime,'\');'
	)
FROM
	(SELECT @rownum := CAST(REPLACE(UNIX_TIMESTAMP(CURRENT_TIMESTAMP(6)),'.','') AS SIGNED)) r,
	sd_trade.trd_repaymentinfo t
INNER JOIN sd_account.tac_withholdorder t3 ON t.projectId = t3.projectId
AND t3.createTime > CURRENT_DATE ()
AND t3. STATUS = 4
WHERE t.projectId IN (87366568622706688,76253894186913792);