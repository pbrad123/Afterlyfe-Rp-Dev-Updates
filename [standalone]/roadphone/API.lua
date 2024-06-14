Cfg = {}

--REQUIRED

Cfg.uploadMethod = 'fivemanage' --Upload method (only fivemanage is available)

Cfg.uploadMethodKey = 'API_KEY' --API Key for the upload method fivemanage (https://www.fivemanage.com/)


--OPTIONAL
Cfg.CryptoWebhook = 'DISCORD WEBHOOK' --Webhook for crypto app
Cfg.MessageWebhook = 'DISCORD WEBHOOK' --Webhook for messages app
Cfg.ValetWebhook = 'DISCORD WEBHOOK' --Webhook for valet app
Cfg.TweetWaveWebhook = 'DISCORD WEBHOOK' --Webhook for tweetwave app
Cfg.MailWebhook = 'DISCORD WEBHOOK' --Webhook for mail app
Cfg.BankWebhook = 'DISCORD WEBHOOK' --Webhook for bank app
Cfg.AdvertisingWebhook = 'DISCORD WEBHOOK' --Webhook for advertising app
Cfg.ConnectWebhook = 'DISCORD WEBHOOK' --Webhook for connect app
Cfg.ServiceWebhook = 'DISCORD WEBHOOK' --Webhook for service app
Cfg.DarkchatWebhook = 'DISCORD WEBHOOK' --Webhook for darkchat app
Cfg.LiveStreamWebook = 'DISCORD WEBHOOK' --Webhook for livestream app

Cfg.YellowPageFee = 0 --Yellow page fee
Cfg.BankPayTax = 0.05 --Bank pay tax 0.05 = 5%
Cfg.MinimumBankTransfer = 10000 --Minimum bank transfer to send a webhook