#第一步：插入代扣数据
INSERT INTO sd_account.tac_withholdorder (orderNo, outerOrderNo, borrowUserId, plateformId, projectId, amount, bankAccount, bankCode, bankMobile, realName, idCard, param, status, responseJson, responseTime, createTime, updateTime) VALUES (1527669675242020,NULL,77936602956976128,1,85202685476749312,1560,'6217000180005688399','01050000','13780533733','刘阳','130204198803023313','-',4,null,null,NOW(),NOW());
INSERT INTO sd_account.tac_withholdorder (orderNo, outerOrderNo, borrowUserId, plateformId, projectId, amount, bankAccount, bankCode, bankMobile, realName, idCard, param, status, responseJson, responseTime, createTime, updateTime) VALUES (1527669675242021,NULL,81541433068101632,1,90189921876201472,1560,'6228480445809126276','01030000','18118243203','杨晨','321088199410247356','-',4,null,null,NOW(),NOW());
INSERT INTO sd_account.tac_withholdorder (orderNo, outerOrderNo, borrowUserId, plateformId, projectId, amount, bankAccount, bankCode, bankMobile, realName, idCard, param, status, responseJson, responseTime, createTime, updateTime) VALUES (1527732692990350,NULL,73583945958055936,1,89821498184847360,1560,'6228481469154975276','01030000','13679742449','黄志远','440682198408264014','-',4,null,null,NOW(),NOW());

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
WHERE t.projectId IN (90189921876201472,85202685476749312,89821498184847360);