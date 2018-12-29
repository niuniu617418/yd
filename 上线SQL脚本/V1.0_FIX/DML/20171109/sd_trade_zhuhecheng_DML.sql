UPDATE 
  trd_worktaskuserinfo a 
SET
  a.taskNum = 
  (SELECT 
    COUNT(0) 
  FROM
    trd_worktaskprocess b 
  WHERE a.userId = b.approvalUserId 
    AND b.taskStatus = 2) ;

 






 