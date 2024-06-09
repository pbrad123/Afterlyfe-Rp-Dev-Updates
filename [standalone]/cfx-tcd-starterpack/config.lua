Config = {}

--[[
▀█▀ █▀▀ █▀▀ ▀█ █▄█   █▀▀ █▀█ █▀█ █▀▀   █▀▄ █▀▀ █░█ █▀▀ █░░ █▀█ █▀█ █▀▄▀█ █▀▀ █▄░█ ▀█▀
░█░ ██▄ ██▄ █▄ ░█░   █▄▄ █▄█ █▀▄ ██▄   █▄▀ ██▄ ▀▄▀ ██▄ █▄▄ █▄█ █▀▀ █░▀░█ ██▄ █░▀█ ░█░
]]

Config.Lang = 'en'
Config.Debug = false                      -- if you want to see debug messages in console

Config.TargetResource = 'qb-target'       -- supported: ox_target, qb-target
Config.InventoryResource = 'qb-inventory' -- supported: ox_inventory, qb-inventory, ps-inventory
Config.SQLResource = 'oxmysql'            -- supported: oxmysql, mysql-async, ghmattimysql

Config.UseCommand = true                  -- if you want to use command to give starter pack to player
Config.Command = 'starterpack'            -- command to give starter package to player

Config.UseTarget = true                   -- if you want to use target script to give starter pack to player
Config.Target = {
    ped = 's_m_y_casino_01',            -- https://docs.fivem.net/docs/game-references/ped-models/
    label = 'Get your starter pack',
    coords = vector4(214.66, -806.74, 30.81, 338.95),
    distance = 2.0,
}

Config.StarterPackItems = { -- items that will be given to player
    { item = 'sandwich',    amount = 20 },
    { item = 'water_bottle',    amount = 20 },
    { item = 'advancedlockpick',    amount = 5 },
    { item = 'lockpick', amount = 5 },
    { item = 'cdl_license',    amount = 1 },
}

Config.EnableStarterVehicle = true -- if you want to give starter vehicle to player
Config.StarterVehicle = {
    model = 'buffalo',               -- https://wiki.rage.mp/index.php?title=Vehicles
    teleport_player = true,        -- player will be teleported to the vehicle
    vehicle_spawn = vec4(216.96, -785.08, 30.82, 154.54),
    fuel = 100.0,                  -- fuel level of the vehicle
}

---@param vehicle any
---@param fuel number
---@decription Set fuel level of the vehicle by default it uses LegacyFuel
Config.SetFuel = function(vehicle, fuel)
    exports.LegacyFuel:SetFuel(vehicle, fuel)
end

Config.Notification = function(message, type, is_server, src)
    local Core, Framework = GetCore()
    if is_server then
        if Framework == "QBCore" then
            TriggerClientEvent("esx:showNotification", src, message)
        else
            TriggerClientEvent('QBCore:Notify', src, message, type, 5000)
        end
    else
        if Framework == "QBCore" then
            TriggerEvent("esx:showNotification", message)
        else
            TriggerEvent('QBCore:Notify', message, type, 5000)
        end
    end
end

Config.Locale = {
    ['en'] = {
        ['received'] = 'You have already received your starter pack',
        ['success'] = 'You have received your starter pack, Enjoy!',
        ['canceled'] = 'You have canceled the starter pack',
        ['not_near_receiving_point'] = 'You are not near the receiving point',
    },
}
