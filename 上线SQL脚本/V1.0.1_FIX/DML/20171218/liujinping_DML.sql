delete from sd_usercenter.tuc_withholdingContract t where t.id in(
select id from sd_usercenter.tuc_withholdingContract t1 group by t1.bindBankId having count(t1.bindBankId)>1)