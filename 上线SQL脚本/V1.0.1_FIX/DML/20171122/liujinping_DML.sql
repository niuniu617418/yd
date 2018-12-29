update sd_usercenter.`tuc_messagetemplate` set templateContent = '{0}，您在你我云贷的借款【id：{1}】审核未通过，详询400-8888-123' where id = 2;

update sd_trade.`trd_approvalreason` set id = 64086178504134656 where id = 88420124637274112;

update sd_trade.trd_projectaudit set approvalReason = 64086178504134656 where approvalReason = 88420124637274112;
