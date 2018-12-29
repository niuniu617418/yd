-- --------------------------------------------------------
-- 主机:                           192.168.18.65
-- 服务器版本:                        5.6.26-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      linux-glibc2.5
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 正在导出表  sd_trade.trd_loanRateConfig 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `trd_loanRateConfig` DISABLE KEYS */;
INSERT INTO `trd_loanRateConfig` (`id`, `deadline`, `amount`, `loanRate`, `guaranteeServiceRate`, `totalFeeRate`, `otherFee`, `maxDebt`, `createTime`, `updateTime`, `updateOperator`, `createOperator`, `versionNo`, `delFlag`) VALUES
  (1, 7, 1000.00, 10.00, 2.00, 0.80, 3.00, 2000.00, '2017-08-15 20:09:37', '2017-08-15 20:09:38', 1, 1, 9, 0),
  (2, 15, 1000.00, 10.00, 4.00, 0.80, 5.00, 2000.00, '2017-08-15 20:09:37', '2017-08-15 20:09:38', 1, 1, 9, 0);
/*!40000 ALTER TABLE `trd_loanRateConfig` ENABLE KEYS */;

-- 正在导出表  sd_trade.trd_systemConfig 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `trd_systemConfig` DISABLE KEYS */;
INSERT INTO `trd_systemConfig` (`id`, `configKey`, `configValue`, `description`, `createTime`, `updateTime`, `createOperator`, `updateOperator`) VALUES
  (1, 'depositFeeRate', '0.20', '提现手续费费', '2017-08-15 20:13:18', '2017-09-11 11:10:32', 1, 1),
  (2, 'overdueInterestRate', '1.00', '逾期还款罚息利率（日利率）', '2017-08-15 20:13:18', '2017-08-15 20:13:19', 1, 1),
  (3, 'workAllocType', '1', '贷前审核工作分配模式 0 自动，1 手动', '2017-08-15 20:13:18', '2017-08-15 20:13:19', 1, 1);
/*!40000 ALTER TABLE `trd_systemConfig` ENABLE KEYS */;

-- 正在导出表  sd_trade.trd_workTaskAllocUser 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `trd_workTaskAllocUser` DISABLE KEYS */;
INSERT INTO `trd_workTaskAllocUser` (`id`, `userId`, `taskType`, `userCode`, `realName`, `mobile`, `maxProcess`, `createTime`, `updateTime`) VALUES
  (60922953587499008, 60918789746724864, 1, '001', '邓雪', '13418726924', 1000, '2017-09-07 14:31:34', '2017-09-11 13:49:31'),
  (61212116895428608, 60926771171692544, 1, '002', '嗯哼', '13698525412', 1000, '2017-09-08 09:40:36', '2017-09-11 13:49:11'),
  (61575454821212160, 61280275530801152, 1, 'tstCode', 'tstName', '15177777777', 1000, '2017-09-09 09:44:23', '2017-09-11 13:49:11');
/*!40000 ALTER TABLE `trd_workTaskAllocUser` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
