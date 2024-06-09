local QBCore = exports['qb-core']:GetCoreObject()
local Webhooks = {
    ['default'] = '',
    ['testwebhook'] = 'https://discord.com/api/webhooks/1249132146069733527/twvIsZEvLm1hbr5kph9vIXXqrNqYVwhZvc0FrPOoexMh1_E0YOXEIb7i3NsUlOQf--xX',
    ['playermoney'] = '',
    ['playerinventory'] = 'https://discord.com/api/webhooks/1129470431154417776/o83uZw6uTjznwGPAYjycBBOWvFOw3hqFT8ZFzU0SOu3x92FGfu4tmBtm-GbfRevGNrVe',
    ['robbing'] = '',
    ['cuffing'] = 'https://discord.com/api/webhooks/1249131451723681854/agTl3lh6dZiiGyEaV1xPiL4jJZCY5IOGxZ6BzBvGrNjZk5dJi1zLPQsBN3Fqg1Qg-uLs',
    ['drop'] = '',
    ['trunk'] = 'https://discord.com/api/webhooks/1249132552837398549/AyxDxEfpSJzSG3S0o0lXuowFBSbEhP2G3l0_oN1fUSzxJIiJEYx4B3rxMtWe5rmpJV9K',
    ['stash'] = 'https://discord.com/api/webhooks/1249132651122659398/vTxF8vrXDyBlxcyJqeifhg9OjZb-KFHzzRVvtpHWTMTjO_6f_Axkk1lq7NZA-4DvLybP',
    ['glovebox'] = 'https://discord.com/api/webhooks/1249132323904163951/Djsb32p7POzjci798NJ5A-ZPU9zPQYUuF2Hq_9DnrjzsMWu7sgiZgLqXy7qW77Kvoyw2',
    ['banking'] = 'https://discord.com/api/webhooks/1129471125970227301/MVf1sjLsUNmc7SkFiXTMXfy247TRZQtE0GFd-uQk53i59267EEgZ7_B9SnAaKZ5pMYt9',
    ['vehicleshop'] = '',
    ['vehicleupgrades'] = '',
    ['shops'] = 'https://discord.com/api/webhooks/1150073023387406493/L2SHdVL_QWPVQMIjAlF782j_756wU7sfyZa61FfN7otNSpDdqfnjboxLNZBSYSx0869P',
    ['dealers'] = '',
    ['storerobbery'] = 'https://discord.com/api/webhooks/1151079986225225798/qMKeu0gB9KjJIGXFdf1D3rZxHJU8WxKF87R7bgkTM939MJyJPPX848Asb3c1vFY6gcdK',
    ['bankrobbery'] = '',
    ['powerplants'] = '',
    ['death'] = 'https://discord.com/api/webhooks/1247686776479289376/aLddmhnxXhEm-IYYX8brdKy393O3NRGHxUv6k3a6Pk7iDgzJrINEdCvITbQnO8ssfLBz',
    ['joinleave'] = 'https://discord.com/api/webhooks/1247686192258875463/G4sFpwLexUA3OiWi77ZJMyy1hthQuUJnT3ORgV2bVMt8ObX169FgTPo2UfXW98yTkbqU',
    ['ooc'] = '',
    ['report'] = '',
    ['me'] = '',
    ['pmelding'] = '',
    ['112'] = '',
    ['bans'] = '',
    ['anticheat'] = '',
    ['weather'] = '',
    ['moneysafes'] = '',
    ['bennys'] = '',
    ['bossmenu'] = 'https://discord.com/api/webhooks/1249132438928625775/Pkj_3jkekCjZqzFtd2Qj6iHp4UhHWxc8SdA4PIaAfj_7MEcM3q8WiSWOI7iMPXlGOFGy',
    ['robbery'] = 'https://discord.com/api/webhooks/1249132789635219558/4x6Dxw8ofyBhMOZaCPrvxcta0q4iDFfBeq4r0aL31qek05A5vhC8WUEC40aBkTPJVnWe',
    ['casino'] = '',
    ['traphouse'] = '',
    ['911'] = '',
    ['palert'] = '',
    ['house'] = '',
    ['qbjobs'] = '',
}

local colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ['lightgreen'] = 65309,
}

local logQueue = {}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local postData = {}
    local tag = tagEveryone or false
    if not Webhooks[name] then print('Tried to call a log that isn\'t configured with the name of ' ..name) return end
    local webHook = Webhooks[name] ~= '' and Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = colors[color] or colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://raw.githubusercontent.com/GhzGarage/qb-media-kit/main/Display%20Pictures/Logo%20-%20Display%20Picture%20-%20Stylized%20-%20Red.png',
            },
        }
    }

    if not logQueue[name] then logQueue[name] = {} end
    logQueue[name][#logQueue[name] + 1] = {webhook = webHook, data = embedData}

    if #logQueue[name] >= 10 then
        if tag then
            postData = {username = 'QB Logs', content = '@everyone', embeds = {}}
        else
            postData = {username = 'QB Logs', embeds = {}}
        end
        for i = 1, #logQueue[name] do postData.embeds[#postData.embeds + 1] = logQueue[name][i].data[1] end
        PerformHttpRequest(logQueue[name][1].webhook, function() end, 'POST', json.encode(postData), { ['Content-Type'] = 'application/json' })
        logQueue[name] = {}
    end
end)

Citizen.CreateThread(function()
    local timer = 0
    while true do
        Wait(1000)
        timer = timer + 1
        if timer >= 60 then -- If 60 seconds have passed, post the logs
            timer = 0
            for name, queue in pairs(logQueue) do
                if #queue > 0 then
                    local postData = {username = 'QB Logs', embeds = {}}
                    for i = 1, #queue do
                        postData.embeds[#postData.embeds + 1] = queue[i].data[1]
                    end
                    PerformHttpRequest(queue[1].webhook, function() end, 'POST', json.encode(postData), {['Content-Type'] = 'application/json'})
                    logQueue[name] = {}
                end
            end
        end
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')