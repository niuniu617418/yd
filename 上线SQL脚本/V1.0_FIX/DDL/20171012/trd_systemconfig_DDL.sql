-- sd_trade
USE `sd_trade`;
alter table `trd_systemconfig` drop key uniq_conf_key;
alter table `trd_systemconfig`	add UNIQUE INDEX `idx_uniq_configKey` (`configKey`);