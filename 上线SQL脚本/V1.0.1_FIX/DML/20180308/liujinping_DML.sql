#--人工退回
update sd_account.tac_fundsfloworder set status = 5 where fundsFlowOrderNo = 125363410811486208;

#--减去相应的罚息
update sd_account.tac_fundspushorder t set t.amount = 1535, t.refundedPenaltyFee = 415 where t.fundsPushOrderNo = 125363410912149504;

#--减去相应的罚息收入
update sd_account.tac_accountbill t set amount = 415 where t.id = 125363419548221440;

#--减去相应的罚息收入
update sd_account.tac_account t set t.balanceAmount = t.balanceAmount - 435 where id = 888888;

#--减去相应的罚息
update sd_trade.trd_repaymentinfo t set t.refundedPenaltyFee = t.refundedPenaltyFee - 435 where t.projectId = 89174371863646208;

#--插入线下还款金额
INSERT INTO sd_account.tac_withholdorder (orderNo, outerOrderNo, borrowUserId, plateformId, projectId, amount, bankAccount, bankCode, bankMobile, realName, idCard, param, status, responseJson, responseTime, createTime, updateTime) VALUES (1520476070857236,NULL,86506491875442688,1,89174371863646208,1535,'6222031204001044119','01020000','15968337999','常晓楠','340321198611150503','-',4,null,null,'2018-03-08 10:27:50','2018-03-08 10:27:50');
INSERT INTO sd_account.tac_fundsfloworder (fundsFlowOrderNo, orderNo, completeDate, orderType, userId, plateformId, projectId, amount, bankAccount, bankCode, bankMobile, realName, idCard, status, createTime, updateTime) values (1520476207719257, 125363405291782144, '2018-03-04 10:14:55', 2, 86506491875442688, 1, 89174371863646208, 1535.00, 6222031204001044119, 01020000, '15968337999', '常晓楠', '340321198611150503', 2, '2018-03-04 10:14:55', '2018-03-04 10:14:55');
