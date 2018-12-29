USE `sd_usercenter`;

UPDATE tuc_messagetemplate t SET t.templateContent = '你我云贷验证码：{0}',t.templateTitle='登录验证码' WHERE t.templateKey = 'sms.message.register.verification.code';