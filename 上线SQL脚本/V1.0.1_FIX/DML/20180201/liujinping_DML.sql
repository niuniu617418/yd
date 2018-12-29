#--第一步
INSERT INTO sd_account.tac_withholdorder (orderNo, outerOrderNo, borrowUserId, plateformId, projectId, amount, bankAccount, bankCode, bankMobile, realName, idCard, param, status, responseJson, responseTime, createTime, updateTime) VALUES (1517451137269043,NULL,89233879747018752,1,89236491762421760,1660.00,'6214623321000166478','03060000','13614084833','张金龙','211282198901144215','-',4,null,null,'2018-02-01 10:12:17','2018-02-01 10:12:17');
INSERT INTO sd_account.tac_withholdorder (orderNo, outerOrderNo, borrowUserId, plateformId, projectId, amount, bankAccount, bankCode, bankMobile, realName, idCard, param, status, responseJson, responseTime, createTime, updateTime) VALUES (1517451137269044,NULL,90640337080434688,1,90909518032015360,1610.00,'6210985983000292354','01000000','15099742951','范丹青','421125198612017355','-',4,null,null,'2018-02-01 10:12:17','2018-02-01 10:12:17');


#--第二步
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
WHERE t.projectId IN (89236491762421760,90909518032015360);


#第三步：生成代扣资金流水
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
	t.projectId IN (88927067822903296,70019365365354496) 
AND t.borrowerUserId = t1.userId;

#第四步：生成执行脚本
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
WHERE t.projectId IN (88927067822903296,70019365365354496) ;



#第五步，3分钟后
update sd_account.tac_withholdorder t set t.amount = t.amount -10 where t.projectId in (89236491762421760,90909518032015360) and t.`status` in(2,4);

update sd_account.tac_fundsfloworder t set t.amount = t.amount -10 where t.projectId in (89236491762421760,90909518032015360);

update sd_account.tac_fundspushorder t set t.amount = t.amount -10, t.refundedPenaltyFee = t.refundedPenaltyFee - 10 where t.projectId in (89236491762421760,90909518032015360);

update sd_account.tac_accountbill t set t.amount = t.amount -10 where t.projectId in (89236491762421760,90909518032015360) and t.subSortCode = 003002;


