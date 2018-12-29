#第一步：检查看标的是否结清,4003是未结清，5004是结清
select t.projectId, t.projectStatus from sd_trade.trd_project t 
where t.projectId in (88741140227969024,87687230813917184,86229138603528192,89119549735063552,90973385953136640);

#第二步：生成代扣资金流水
SELECT
	CONCAT(
		'INSERT INTO sd_account.tac_withholdorder (orderNo, outerOrderNo, borrowUserId, plateformId, projectId, amount, bankAccount, bankCode, bankMobile, realName, idCard, param, status, responseJson, responseTime, createTime, updateTime) VALUES (',
		CAST(@rownum := @rownum + 1 AS SIGNED),',NULL,',t.borrowerUserId,',1,',t.projectId,',',
		CASE WHEN (t.capital + t.interest + t.managementFee + (to_days(now()) - to_days(t.refundDate)) * 10)>2000 THEN 2000 ELSE (t.capital + t.interest + t.managementFee + (to_days(now()) - to_days(t.refundDate)) * 10) END,
		',\'',t1.bankAccount,'\',\'',t1.bankCode,'\',\'',t1.userMobile,'\',\'',t1.bankUserName,
		'\',\'',t1.idCard,'\',\'-\',4,null,null,\'',NOW(),'\',\'',NOW(),'\');')
FROM
	(SELECT @rownum := CAST(REPLACE(UNIX_TIMESTAMP(CURRENT_TIMESTAMP(6)),'.','') AS SIGNED)) r,
	sd_trade.trd_repaymentinfo t,
	sd_account.tac_accountbank t1
WHERE
	t.projectId IN where t.projectId in (88741140227969024,87687230813917184,86229138603528192,89119549735063552,90973385953136640)
AND t.borrowerUserId = t1.userId;

#第三步：生成执行脚本
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
WHERE t.projectId IN where t.projectId in (88741140227969024,87687230813917184,86229138603528192,89119549735063552,90973385953136640);