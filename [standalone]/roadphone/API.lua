Cfg = {}

--REQUIRED

Cfg.uploadMethod = 'fivemanage' --Upload method (only fivemanage is available)

Cfg.uploadMethodKey = 'API_KEY' --API Key for the upload method fivemanage (https://www.fivemanage.com/)


--OPTIONAL
Cfg.CryptoWebhook = 'https://discord.com/api/webhooks/1136017975598645278/rQ1vTY3jEEa0tUPgOONwvaib34_rZViQpR6gzEZ87WVEfe2ztM6ilnzMzIqK0wWDV0PI' --Webhook for crypto app
Cfg.MessageWebhook = 'https://discord.com/api/webhooks/1136018209296887868/RKjSIiyB4d-W9MMXsCe7bwn7Z_lVQlyXpJDXMMOu-QGWyZFv7pW_Qb60LknU7AAPP6Bv' --Webhook for messages app
Cfg.ValetWebhook = 'https://discord.com/api/webhooks/1136020982549721169/yi45crTqTKgVkcHkLkGA-l9UoVXQq88Um3NSHN0M6RQ-byc-f2YmPgHVi0AWDBteDnLs' --Webhook for valet app
Cfg.TweetWaveWebhook = 'https://discord.com/api/webhooks/1197380563678527570/kl6d0PP9VX9YS6qAE-pLdPaOMYY37BJl8RTKiVM3Ib8Lm_VZ5WuEp1JWgUvCuUGE0_mE' --Webhook for tweetwave app
Cfg.MailWebhook = 'https://discord.com/api/webhooks/1136690581276471377/67cxhPP_YlhxZ7CIFHT0irMjj8ERRWrD_l2yallTRuaEcmnj_S6C8G451vXtQgygCIJ5' --Webhook for mail app
Cfg.BankWebhook = 'https://discord.com/api/webhooks/1136690749350625281/tqhfBAN-pjd_cKWZWQVCkqlvpWkJOPoxDlSsgBKXmPK-UbCMcOcnU8mcc4Qa1WBFJdzp' --Webhook for bank app
Cfg.AdvertisingWebhook = 'https://discord.com/api/webhooks/1249049943357001748/cpbEuu5PQoN1cd_YFmqE5JfrmqZHJZm5vcg9BalGRjcqaJsZ-Fv4Rir6pReJodODCL-6' --Webhook for advertising app
Cfg.ConnectWebhook = 'DISCORD WEBHOOK' --Webhook for connect app
Cfg.ServiceWebhook = 'https://discord.com/api/webhooks/1136691019451207800/3fHPD3qXDzXjJ91p91TEwxFJg6S72QtroBUqJDlnxY8LIc8ft689haKziQ_4CJL1hbY2' --Webhook for service app
Cfg.DarkchatWebhook = 'https://discord.com/api/webhooks/1158508008930811905/SuFfePGRxfc4PyHlbs89HKJNtQ2SG27pR6rTuO6yxEFVmgHCRoSFUYoO--X-ZPpFKZhG' --Webhook for darkchat app
Cfg.LiveStreamWebook = 'https://discord.com/api/webhooks/1197383022492790826/nQ5Op_QVFvI2wjQMAzQnJi62NkkFJpX_gQkDaUqhm65psK84g3Llg3yrNZX0NJc_QM7H' --Webhook for livestream app

Cfg.YellowPageFee = 0 --Yellow page fee
Cfg.BankPayTax = 0.05 --Bank pay tax 0.05 = 5%
Cfg.MinimumBankTransfer = 10000 --Minimum bank transfer to send a webhook