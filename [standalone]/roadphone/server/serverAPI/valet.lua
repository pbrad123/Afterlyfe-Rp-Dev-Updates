QBCore.Functions.CreateCallback("roadphone:valet:getCars", function(source, cb)

    local xPlayer = QBCore.Functions.GetPlayer(source)

    if not xPlayer then
        return;
    end

    MySQL.Async.fetchAll("SELECT * FROM " .. Config.OwnedVehiclesTable .. " WHERE `citizenid` = @citizenid", {
        ['@citizenid'] = xPlayer.PlayerData.citizenid
    }, function(result)
        local cachedvehicles = {}

        for i = 1, #result do

            table.insert(cachedvehicles, {
                plate = result[i].plate,
                vehicle = result[i].vehicle, -- result[i].vehicle,
                type = 'car',
                hash = result[i].hash,
                garage = result[i].garage,
                stored = result[i].state
            })

        end

        cb(cachedvehicles)

    end)

end)

QBCore.Functions.CreateCallback('roadphone:valet:loadVehicle', function(source, cb, plate)

    local valetCheck = valetServerSideCheck(plate)

    if valetCheck ~= false then
        cb(false, valetCheck)
        return;
    end

    MySQL.Async.fetchAll('SELECT * FROM ' .. Config.OwnedVehiclesTable .. ' WHERE `plate` = @plate', {
        ['@plate'] = plate
    }, function(vehicle)
        cb(vehicle)
    end)
end)

QBCore.Functions.CreateCallback('roadphone:valet:checkMoney', function(source, cb)
    local xPlayer = QBCore.Functions.GetPlayer(source)

    if not xPlayer then
        return;
    end

    if xPlayer.Functions.GetMoney('bank') > Config.ValetDeliveryPrice then
        xPlayer.Functions.RemoveMoney('bank', Config.ValetDeliveryPrice, 'Car delivered')

        local number = getNumberFromIdentifier(xPlayer.PlayerData.citizenid)

        TriggerEvent("roadphone:addBankTransfer", number, 0,  Lang:t('info.valet_car_delivered'), Config.ValetDeliveryPrice)

        TriggerClientEvent("roadphone:sendNotification", source, {
            apptitle = "APP_VALET_NAME",
            title = "APP_VALET_CAR_ONTHEWAY",
            img = "/public/img/Apps/valet.jpg"
        })

        discordLog("9807270", "Valet", xPlayer.PlayerData.name .. ' ' .. Lang:t('info.valet_car_delivered_2', { value = Config.ValetDeliveryPrice }), 'RoadPhone - Valet', nil, Cfg.ValetWebhook)
        cb(true)
        return;
    else
        TriggerClientEvent("roadphone:sendNotification", source, {
            apptitle = "APP_VALET_NAME",
            title = "APP_VALET_NOTENOUGHMONEY",
            img = "/public/img/Apps/valet.jpg"
        })

        cb(false)
        return;
    end

end)

RegisterServerEvent("roadphone:valetCarSetOutside")
AddEventHandler("roadphone:valetCarSetOutside", function(plate)
    
    if Config.cdGarages then
        MySQL.Async.execute('UPDATE '..Config.OwnedVehiclesTable..' SET `in_garage` = @in_garage WHERE `plate` = @plate', {
          ['@plate'] = plate,
          ['@in_garage'] = 0,
        })
        return
    end

    MySQL.Async.execute("UPDATE " .. Config.OwnedVehiclesTable .. " SET `state` = @stored WHERE `plate` = @plate", {
        ["@plate"] = plate,
        ["@stored"] = 0
    })
end)
