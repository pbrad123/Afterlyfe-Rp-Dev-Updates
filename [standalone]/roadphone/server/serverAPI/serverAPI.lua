-- ==================================================================================== --
--                               RoadToSix ( orignal Creator )
--                               Dachlatti ( ESX to QBCore )             
-- ==================================================================================== --
QBCore.Functions.CreateCallback('roadphone:getItemAmount', function(source, cb)

    local hasItem = nil

    if Config.NeedItem then
        if #Config.Items == 0 then
            cb(nil)
            return
        end
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if not xPlayer then
            return;
        end
        for i = 1, #Config.Items, 1 do
            if Config.codeMInventory then

                local hasItem = exports['codem-inventory']:HasItem(source, Config.Items[i], 1)

                if hasItem then
                    cb(Config.Items[i])
                    return
                end

            else

                local items = xPlayer.Functions.GetItemByName(Config.Items[i])

                if items and items.count ~= 0 then
                    hasItem = items.name
                    cb(hasItem)
                    return
                end
            end
        end
        cb(nil)
    else
        cb(true)
    end
end)

QBCore.Functions.CreateCallback('roadphone:getRadioAmount', function(source, cb)
    if Config.RadioNeedItem then
        if #Config.RadioItems == 0 then
            cb(nil)
            return
        end
        local xPlayer = QBCore.Functions.GetPlayer(source)
        if not xPlayer then
            return;
        end
        for i = 1, #Config.RadioItems, 1 do
            if Config.codeMInventory then

                local hasItem = exports['codem-inventory']:HasItem(source, Config.RadioItems[i], 1)

                if hasItem then
                    cb(true)
                    return
                end

            else

                local items = xPlayer.Functions.GetItemByName(Config.RadioItems[i])
                if not items then
                    print("Error: Item " .. Config.RadioItems[i] ..
                              " not found in database. Please add this item in your database.")
                    cb(nil)
                    return
                end
                if items.count ~= 0 then
                    cb(true)
                    return
                end
            end
        end
        cb(nil)
    else
        cb(true)
    end
end)

function getPhoneRandomNumber()
    local numBase = math.random(1000000, 9999999)
    return string.format("%07d", numBase)
end

CreateThread(function()
    for i = 1, #Config.Items do
        QBCore.Functions.CreateUseableItem(Config.Items[i], function(source)
            TriggerClientEvent('roadphone:use', source)
        end)
    end
end)

RegisterCommand('fixphone', function(source)
    TriggerEvent('roadphone:playerLoad', source)
end)

function GetPlayerFromPhone(number)
    local identifier = MySQL.Sync.fetchScalar('SELECT citizenid FROM ' .. Config.UserTable ..
                                                  ' WHERE phone_number = @phone_number', {
        ['@phone_number'] = number
    })

    return QBCore.Functions.GetPlayerByCitizenId(identifier)
end

function getJobName(identifier)

    local xPlayer = QBCore.Functions.GetPlayerByCitizenId(identifier)

    if xPlayer then
        return xPlayer.job.name        
    end

    return nil

end

function getNumberFromIdentifier(identifier)

    local phone_number = MySQL.Sync.fetchScalar('SELECT phone_number FROM ' .. Config.UserTable ..
                                                    ' WHERE citizenid = @identifier', {
        ['@identifier'] = identifier
    })

    return phone_number

end

function getIdentifierFromNumber(number)

    local identifier = MySQL.Sync.fetchScalar('SELECT citizenid FROM ' .. Config.UserTable ..
                                                  ' WHERE phone_number = @phone_number', {
        ['@phone_number'] = number
    })

    return identifier

end

function getNameFromIdentifier(identifier)

    local xPlayer = QBCore.Functions.GetPlayerByCitizenId(identifier)

    if xPlayer then
        return xPlayer.PlayerData.charinfo.firstname .. ' ' .. xPlayer.PlayerData.charinfo.lastname        
    end

    return nil

end

function getPlayersByJob(job)

    local players = {}

    for k, playerId in pairs(QBCore.Functions.GetPlayers()) do
        local Player = QBCore.Functions.GetPlayer(playerId)

        if Player and Player.PlayerData.job.name == job then
            table.insert(players, {
                id = Player.PlayerData.source
            })
        end
    end

    return players
end

RegisterNetEvent('roadphone:sendDispatch')
AddEventHandler('roadphone:sendDispatch', function(source, message, job, coords, anonym, image)

    local _source = tonumber(source)
    local xPlayer = QBCore.Functions.GetPlayer(_source)

    if not job or not message then
        return
    end

    if xPlayer then
        local myPhone = getNumberFromIdentifier(xPlayer.PlayerData.citizenid)

        if not coords then
            coords = GetEntityCoords(GetPlayerPed(_source))
        end

        local targetmessage = addServiceDispatch(myPhone, job, message, 0, 0, image, coords)
        local mymessage = addServiceDispatch(job, myPhone, message, 1, 1, image, coords)

        local targets = getPlayersByJob(job)

        for _, target in ipairs(targets) do
            TriggerClientEvent("roadphone:service:receiveMessage:job", target.id, targetmessage, 0)
        end

        TriggerClientEvent("roadphone:service:receiveMessage", _source, mymessage, 1)

        discordLog("15158332", "Service", 'Number: ' .. myPhone .. '\n' .. 'Message: ' .. message .. '\n' .. 'Received Job: ' .. job, "RoadPhone", nil, Cfg.ServiceWebhook, "Service")


    end
end)


RegisterCommand(Config.WaveVerifyCommand, function(source, args)
    local src = source

    if #args < 2 then
        TriggerClientEvent('roadphone:sendOffNotification', src, Lang:t('info.command_required_information'))
        return
    end

    local auth = args[1]
    table.remove(args, 1)

    local label = table.concat(args, ' ')

    local verifyValue = auth == "true" and 1 or 0
    local query =
        "UPDATE `roadshop_tweetwave_accounts` SET `verify`= @verifyValue WHERE roadshop_tweetwave_accounts.username = @username"

    MySQL.Async.execute(query, {
        ['@verifyValue'] = verifyValue,
        ['@username'] = label
    }, function(result)
        if (result == 1) then
            local message = verifyValue == 1 and Lang:t('info.wave_verify') or Lang:t('info.wave_remove_verify')
            TriggerClientEvent('roadphone:sendOffNotification', src, message)
        else
            TriggerClientEvent('roadphone:sendOffNotification', src, Lang:t('info.command_required_information'))
        end
    end)
end, true)

RegisterCommand(Config.ConnectVerifyCommand, function(source, args)
    local src = source

    if #args < 2 then
        TriggerClientEvent('roadphone:sendOffNotification', src, Lang:t('info.command_required_information'))
        return
    end

    local auth = args[1]
    table.remove(args, 1)

    local label = table.concat(args, ' ')

    local verifyValue = auth == "true" and 1 or 0

    MySQL.Async.execute(
        "UPDATE `roadshop_connect_accounts` SET `verify`= @verifyValue WHERE roadshop_connect_accounts.username = @username",
        {
            ['@verifyValue'] = verifyValue,
            ['@username'] = label
        }, function(result)
            if (result == 1) then
                local message = verifyValue == 1 and Lang:t('info.connect_verify') or
                                    Lang:t('info.connect_remove_verify')
                TriggerClientEvent('roadphone:sendOffNotification', src, message)
            else
                TriggerClientEvent('roadphone:sendOffNotification', src, Lang:t('info.command_required_information'))
            end
        end)
end, true)

RegisterServerEvent("roadphone:server:call:eventnumber")
AddEventHandler("roadphone:server:call:eventnumber", function(number)

    if tostring(number) == "77777" then -- CHECK WHICH NUMBER IS CALLED

        -- YOUR CODE

    end

end)

QBCore.Functions.CreateCallback('roadphone:server:getEmployees', function(source, cb, society)

    local users = QBCore.Functions.GetQBPlayers()
    local newusers = {}

    for k, v in pairs(users) do
        if v.PlayerData.job.name == society then
            table.insert(newusers, {
                firstname = v.PlayerData.charinfo.firstname,
                lastname = v.PlayerData.charinfo.lastname,
                job_grade = v.PlayerData.job.grade.level,
                phone_number = v.PlayerData.phone_number,
                online = true
            })
        end
    end

    cb(newusers)

end)

function getPlayerFromIban(iban) -- okokBanking support

    local identifier = MySQL.Sync.fetchScalar('SELECT citizenid FROM bank_accounts WHERE iban = @iban', {
        ['@iban'] = iban
    })

    return QBCore.Functions.GetPlayerByCitizenId(identifier)

end

function getIbanFromPlayer(identifier) --okokBanking support
    
    local iban = MySQL.Sync.fetchScalar('SELECT iban FROM bank_accounts WHERE citizenid = @iban', {['@iban'] = identifier})

    return iban
    
end

QBCore.Functions.CreateCallback('roadphone:okokBanking:getIban', function(source, cb)

    local xPlayer = QBCore.Functions.GetPlayer(source)

    if not xPlayer then
        return
    end

    local iban = getIbanFromPlayer(xPlayer.PlayerData.citizenid)

    cb(iban)
 
end)


-- WEBHOOKS

function discordLog(color, name, message, footer, image, webhook, username)

    if not message then
        message = ''
    end

    if not username then
        username = 'RoadPhone'
    end

    local embed;

    if image then
        embed = {{
            ["color"] = color,
            ["title"] = "**" .. name .. "**",
            ["description"] = message,
            ["image"] = {
                url = image
            },
            ["footer"] = {
                ["text"] = footer
            }
        }}
    else
        embed = {{
            ["color"] = color,
            ["title"] = "**" .. name .. "**",
            ["description"] = message,
            ["footer"] = {
                ["text"] = footer
            }
        }}
    end

    if webhook == 'DISCORD WEBHOOK' then
        return
    end

    PerformHttpRequest(webhook, function(err, text, headers)
    end, 'POST', json.encode({
        username = username,
        embeds = embed
    }), {
        ['Content-Type'] = 'application/json'
    })

end

function getWeather()

    local weather = {
        ExtraSunny = {90, 110},
        Clear = {80, 95},
        Neutral = {80, 95},
        Smog = {90, 95},
        Foggy = {80, 90},
        Clouds = {80, 90},
        Overcast = {80, 80},
        Clearing = {75, 85},
        Raining = {75, 90},
        ThunderStorm = {75, 90},
        Blizzard = {-15, 10},
        Snowing = {0, 32},
        Snowlight = {0, 32},
        Christmas = {-5, 15},
        Halloween = {50, 80}
    }

    return weather

end

function addServiceMessage(sender, receiver, message, isRead, isOwner)

    local id = MySQL.Sync.insert(
        'INSERT INTO roadshop_service_messages (sender, receiver, message, isRead, isOwner) VALUES (@sender, @receiver, @message, @isRead, @isOwner)',
        {
            ['@sender'] = sender,
            ['@receiver'] = receiver,
            ['@message'] = message,
            ['@isRead'] = isRead,
            ['@isOwner'] = isOwner
        })

    local data = {
        id = id,
        sender = sender,
        receiver = receiver,
        message = message,
        isRead = isRead,
        isOwner = isOwner,
        date = tonumber(os.time() .. "000.0")
    }

    return data

end

function addServiceDispatch(sender, receiver, message, isRead, isOwner, image, coords) --You can add your own dispatch system for the service app.

    local id = MySQL.Sync.insert(
        'INSERT INTO roadshop_service_messages (sender, receiver, message, isRead, isOwner, isDispatch, image, coords) VALUES (@sender, @receiver, @message, @isRead, @isOwner, @isDispatch, @image, @coords)',
        {
            ['@sender'] = sender,
            ['@receiver'] = receiver,
            ['@message'] = message,
            ['@isRead'] = isRead,
            ['@isOwner'] = isOwner,
            ['@isDispatch'] = 1,
            ['@image'] = image,
            ['@coords'] = json.encode(coords)
        })

    local data = {
        id = id,
        sender = sender,
        receiver = receiver,
        message = message,
        isRead = isRead,
        isOwner = isOwner,
        date = tonumber(os.time() .. "000.0"),
        image = image,
        isDispatch = 1,
        isAccepted = 0,
        isFinished = 0,
        isDeclined = 0,
        coords = coords
    }

    return data

end

function testMailServer(identifier)
    local data = {
        sender = 'RoadShop',
        subject = "RoadShop TEST",
        message = "Mails from scripts come back even better than before now even with <span style='color: red'>Color</span> support. <br> <br> + Support for line breaks and button support ^^",
        button = {
            buttonEvent = "qb-drugs:client:setLocation",
            buttonData = "test",
            buttonname = "test"
          }
    }

    exports['roadphone']:sendMailOffline(identifier, data)
end
