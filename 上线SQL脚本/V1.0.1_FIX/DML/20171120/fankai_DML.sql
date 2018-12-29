##删除民生银行入口
delete from sd_usercenter.tuc_bankinfo where id=6 and bankCode='03050000';

##备份
# INSERT INTO `sd_usercenter`.`tuc_bankinfo` (`id`, `bankCode`, `bankName`, `singleRechargeMax`, `dayRechargeMax`, `bankTel`) VALUES ('6', '03050000', '民生银行', '5', '10', '95568');
