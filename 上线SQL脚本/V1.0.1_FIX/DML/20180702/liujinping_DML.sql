#第一步：更新代扣数据
#select * from sd_account.tac_withholdorder t where t.projectId = 83014724660236288 order by t.createTime desc limit 1;
select * from sd_trade.trd_project t where t.projectId = 83014724660236288 order by t.createTime desc limit 1;

update sd_account.tac_withholdorder set amount = 1528, status = 4  where orderNo = 168841709147389952 and projectId = 83014724660236288 and status = 3;

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
WHERE t.projectId IN (83014724660236288);