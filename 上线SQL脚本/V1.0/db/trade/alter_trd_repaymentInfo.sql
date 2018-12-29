ALTER TABLE `trd_repaymentInfo`
	CHANGE COLUMN `refundedCapital` `refundedCapital` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还本金1053' AFTER `borrowerUserId`,
	CHANGE COLUMN `refundedInterest` `refundedInterest` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还利息2.01' AFTER `refundedCapital`,
	CHANGE COLUMN `refundedManagementFee` `refundedManagementFee` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '已还平台管理费（你我金融的平台管理费由你我云贷代收取）0.99' AFTER `refundedInterest`,
	CHANGE COLUMN `capital` `capital` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '本金(1053)' AFTER `refundedPenaltyFee`,
	CHANGE COLUMN `interest` `interest` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '利息(2.01)' AFTER `capital`,
	CHANGE COLUMN `managementFee` `managementFee` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '平台管理费(0.99)' AFTER `interest`,
	CHANGE COLUMN `serviceFee` `serviceFee` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '平台服务费（33）' AFTER `managementFee`,
	ADD COLUMN `guaranteeFee` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '担保服务费（20）' AFTER `serviceFee`,
	ADD COLUMN `handAmount` DECIMAL(18,2) NOT NULL DEFAULT '0.00' COMMENT '借款金额（1000）' AFTER `guaranteeFee`,
	DROP COLUMN `refundServiceFee`;