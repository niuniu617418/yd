ALTER TABLE `tac_bankchannel`
  ADD COLUMN `bankCodeNiiwoo` VARCHAR(50) NOT NULL COMMENT '推标时发给你我金融的银行Code' AFTER `bankName`;