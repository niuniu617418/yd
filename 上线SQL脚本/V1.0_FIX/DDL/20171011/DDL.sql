ALTER TABLE tac_fundsfloworder
MODIFY COLUMN status  tinyint(4) NOT NULL DEFAULT 1 COMMENT '״̬��1-������,2-�ɹ� 3-�ظ�֧���쳣 4-�쳣�������,5-�˹��˿' AFTER idCard;


--���۱�����ӣ�4-�˹�����ɹ�״̬
ALTER TABLE `sd_account`.`tac_withholdorder`   
  CHANGE `status` `status` TINYINT(4) DEFAULT 1  NOT NULL  COMMENT '״̬��1-������,2-�ɹ� 3-ʧ�� 4-�˹�����ɹ���';