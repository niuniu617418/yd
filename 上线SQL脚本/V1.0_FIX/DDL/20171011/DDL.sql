ALTER TABLE tac_fundsfloworder
MODIFY COLUMN status  tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态（1-处理中,2-成功 3-重复支付异常 4-异常处理完成,5-人工退款）' AFTER idCard;


--代扣表中添加：4-人工处理成功状态
ALTER TABLE `sd_account`.`tac_withholdorder`   
  CHANGE `status` `status` TINYINT(4) DEFAULT 1  NOT NULL  COMMENT '状态（1-处理中,2-成功 3-失败 4-人工处理成功）';