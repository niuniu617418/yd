DELETE FROM `sd_account`.`tac_account`;
INSERT INTO `sd_account`.`tac_account` (`id`, `userId`, `plateformId`, `accountType`, `balanceAmount`, `accountStatus`, `remark`, `createTime`, `updateTime`)
VALUES ('888888', '1', '1', '1', '1.00', '1', '新APP平台账户', now(), now());

DELETE FROM `sd_account`.`tac_accountBank`;
INSERT INTO `sd_account`.`tac_accountBank` (`userId`, `plateformId`, `bankCode`, `bankName`, `bankProvince`, `bankCity`, `bankSubBranch`, `bankAccount`,
                                            `bankUserName`, `channelId`, `idCard`, `userMobile`, `withholdStatus`, `description`, `createTime`, `updateTime`)
VALUES ('1', '1', '01020000', '工商银行', '1', '1', '1', '6222020111122220000', '你我云贷', '3', '320301198502169142', '13510280213', '0', '1', now(), now());

DELETE FROM `sd_account`.`tac_bankChannel`;
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('01000000', '1', 'PSBC', '邮储银行');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('01020000', '1', 'ICBC', '工商银行');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('01030000', '1', 'ABC', '农业银行');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('01040000', '1', 'BOC', '中国银行');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('01050000', '1', 'CCB', '建设银行');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('03010000', '1', 'BCOM', '交通银行');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('03020000', '1', 'CITIC', '中信银行');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('03030000', '1', 'CEB', '光大银行');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('03050000', '1', 'CMBC', '民生银行');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('03060000', '1', 'GDB', '广发银行');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('03070000', '1', 'PAB', '平安银行');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('03080000', '1', 'CMB', '招商银行');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('03100000', '1', 'SPDB', '浦发银行\r\n');
INSERT INTO `sd_account`.`tac_bankChannel` (`bankCode`, `channel`, `bankCodeOther`, `bankName`) VALUES ('3090000\r\n', '1', 'CIB', '兴业银行\r\n');
