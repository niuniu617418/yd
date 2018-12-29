USE `sd_usercenter`;
UPDATE tuc_messageTemplate SET templateContent = '验证码：{0}' WHERE templateKey = 'sms.message.register.verification.code';
UPDATE tuc_sysParam SET paramValue = '2' WHERE paramKey = 'api.sms.sender.switch';