--�ظ��ۿ����˻��ģ�����Ϊ���˹�����
update sd_account.tac_fundsfloworder t set t.status = 5 
where t.fundsFlowOrderNo in (
96376437073780736,
96033076441788416,
95678080516890624,
96021616210747392,
85141163320803328,
94003365977006080,
94204617717456896,
94568265593921536,
94660035547770880);

delete from sd_account.tac_fundsfloworder where  fundsFlowOrderNo = 1513166764036893;
