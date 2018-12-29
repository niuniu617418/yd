update sd_account.tac_withholdorder t set t.amount = t.amount -30 where t.projectId in (90569473869762560,88745465864015872,90351436939939840) and t.`status` in(2,4);

update sd_account.tac_fundsfloworder t set t.amount = t.amount -30 where t.projectId in (90569473869762560,88745465864015872,90351436939939840);

update sd_account.tac_fundspushorder t set t.amount = t.amount -30, t.refundedPenaltyFee = t.refundedPenaltyFee - 30
where t.projectId in (90569473869762560,88745465864015872,90351436939939840);

update sd_account.tac_accountbill t set t.amount = t.amount -30 where t.projectId in (90569473869762560,88745465864015872,90351436939939840) and t.subSortCode = 003002;