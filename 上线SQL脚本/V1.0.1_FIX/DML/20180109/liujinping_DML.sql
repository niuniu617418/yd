INSERT INTO sd_account.tac_fundsfloworder (fundsFlowOrderNo, orderNo, completeDate, orderType, userId, plateformId, projectId, amount, bankAccount, bankCode, bankMobile, realName, idCard, status, createTime, updateTime) values (1515501104429201, 105889880504016896, '2018-01-09 16:34:05', 2, 73586539652734976, 1, 73590652520124416, 1876.00, 6228482948696282373, 01030000, '15619920080', '刘喜财', '612728198910100614', 1, '2018-01-09 16:34:05', '2018-01-09 16:34:05');
INSERT INTO sd_account.tac_fundsfloworder (fundsFlowOrderNo, orderNo, completeDate, orderType, userId, plateformId, projectId, amount, bankAccount, bankCode, bankMobile, realName, idCard, status, createTime, updateTime) values (1515501194818641, 105890931995049984, '2018-01-09 16:38:16', 2, 82030993321517056, 1, 82032867525267456, 1630.00, 6212262201014490827, 01020000, '18289863505', '王若宝', '46000319920608463X', 1, '2018-01-09 16:38:16', '2018-01-09 16:38:16');
INSERT INTO sd_account.tac_fundsfloworder (fundsFlowOrderNo, orderNo, completeDate, orderType, userId, plateformId, projectId, amount, bankAccount, bankCode, bankMobile, realName, idCard, status, createTime, updateTime) values (1515501200446448, 105891289882435584, '2018-01-09 16:39:41', 2, 77898425810558976, 1, 85878481564483584, 1520.00, 6228483040686626717, 01030000, '18335965158', '张娅丽', '142725199112150425', 1, '2018-01-09 16:39:41', '2018-01-09 16:39:41');

UPDATE sd_account.tac_withholdOrder t SET t.status =4 WHERE t.orderNo = 105889880504016896;
UPDATE sd_account.tac_withholdOrder t SET t.status =4 WHERE t.orderNo = 105890931995049984;
UPDATE sd_account.tac_withholdOrder t SET t.status =4 WHERE t.orderNo = 105891289882435584;