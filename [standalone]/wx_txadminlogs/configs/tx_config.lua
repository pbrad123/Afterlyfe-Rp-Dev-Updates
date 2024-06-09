wx = {}

-- [ Basic Webhook Settings ]
wx.Webhook = 'https://discord.com/api/webhooks/1225947905303515217/xFpt-XHpHGdeMgD2PFUGlubLuZ_O4GRMV8zRpEUgdIToW8MZpN8Vppzgt2NnWz3pHAQX' -- Webhook for logging
wx.WebhookUsername = 'Afterlyfe Rp Logs' -- Username of the webhook
wx.WebhookAvatar = 'https://cdn.discordapp.com/attachments/1221668883816251422/1223404746501783612/new_AfterLyfe_Rp_Logo.png?ex=6622f5f5&is=661080f5&hm=14cd885051b46cb517a22e7487836d34f1e844c50c2de22841db9151eff3bf7d&' -- Image link (png, jpg, gif)


-- [ Color Settings ]

wx.Warn = 16744192 -- integer value - Use https://www.spycolor.com/
wx.Kick = 65535 -- integer value - Use https://www.spycolor.com/
wx.Ban = 16711680 -- integer value - Use https://www.spycolor.com/
wx.Heal = 65280 -- integer value - Use https://www.spycolor.com/
wx.Announcement = 8421504 -- integer value - Use https://www.spycolor.com/
wx.DM = 13938487 -- integer value - Use https://www.spycolor.com/
wx.Revoked = 255 -- integer value - Use https://www.spycolor.com/
wx.Whitelist = 255 -- integer value - Use https://www.spycolor.com/

-- [ Locale Settings ]

wx.Locale = {
    -- Webhook Titles
    DM = "💬 Direct Message",
    Revoked = "⏪ Action Revoked",
    Kicked = "🚫 Player has been kicked",
    Warned = "❗ Player has been warned",
    Banned = "❌ Player has been banned",
    Heal = "🏥 Admin Heal",
    Announcement = "🔔 New server announcement",
    Whitelist = "📃 Whitelist Updated",

    -- Fields
    Permanent = "PERMANENT",
    MinutesRemaining = "Minutes Remaining",
    AdminName = "Admin Name",
    RevokedBy = "Revoked By",
    Target = "Target Player",
    Reason = "Reason",
    Ids = "Target Identifiers",
    Expiration = "Ban Expiration",
    BanID = "Ban ID",
    Announcer = "Announcer",
    Message = "Message",
    Type = "Action Type",
    License = "Player License",

    -- Other
    NotFound = "Not Found", -- When identifier is not found
    Ban = "Ban",
    Warn = "Warning"
}