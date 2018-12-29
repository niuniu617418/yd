

 

-- 修复数据
UPDATE sd_trade.trd_worktaskprocess SET taskStatus = 3 WHERE taskStatus != 3 AND EXISTS (SELECT projectId FROM sd_trade.trd_project WHERE projectStatus != 1003);


-- 更新任务与用户数据

UPDATE 
  sd_trade.trd_worktaskuserinfo a 
SET
  a.taskNum = 
  (SELECT 
    COUNT(0) 
  FROM
    sd_trade.trd_worktaskprocess b 
  WHERE a.userId = b.approvalUserId 
    AND b.taskStatus = 2) ;


 