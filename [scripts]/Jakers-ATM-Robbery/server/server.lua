local QBCore = exports['qb-core']:GetCoreObject()
local Cooldown = false


--hackingphone
QBCore.Functions.CreateUseableItem('hackingphone', function(source)
	local Player = QBCore.Functions.GetPlayer(source)
   TriggerClientEvent('hackingphone:hackingphone',source)
end)

--Reward
RegisterServerEvent("Jakers-Atm-Rob:success")
AddEventHandler("Jakers-Atm-Rob:success",function()
	local src = source 
    local Player =  QBCore.Functions.GetPlayer(src)
    local reward = math.random(Config.MinBagReward,Config.MaxBagReward)
    local info = {
        worth = math.random(Config.BagWorthMin, Config.BagWorthMax)
    }
    Player.Functions.AddItem(Config.Rewarditem, reward, false, info)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Rewarditem], "add")

end)

--cooldown
RegisterServerEvent('Jakers-Atm-Rob:Server:BeginCooldown')
AddEventHandler('Jakers-Atm-Rob:Server:BeginCooldown', function()
    Cooldown = true
    local timer = Config.Cooldown * 60000
    while timer > 0 do
        Wait(1000)
        timer = timer - 1000
        if timer == 0 then
            Cooldown = false
        end
    end
end)

--police alerts
RegisterServerEvent('jakers-ATM-heist:server:PoliceAlertMessage')
AddEventHandler('jakers-ATM-heist:server:PoliceAlertMessage', function()
    local src = source
    for k, v in pairs(QBCore.Functions.GetPlayers()) do
        local Player = QBCore.Functions.GetPlayer(v)
        if Player ~= nil then 
            if (Player.PlayerData.job.name == "police") then  
                local data = {displayCode = '10-65', description = 'ATM Robbery', isImportant = 0, recipientList = {'police'}, length = '5000', infoM = 'fas fa-bolt', info = ' Active ATM Robbery ', 
                blipSprite = 769, blipColour = 66, blipScale = 0.7}
                local dispatchData = {dispatchData = data, caller = 'Local', coords = GetEntityCoords(GetPlayerPed(src)), netId = NetworkGetNetworkIdFromEntity(GetPlayerPed(src)), length = 6000}
                TriggerEvent('wf-alerts:svNotify', dispatchData)
           end
       end
   end
end)

QBCore.Functions.CreateCallback("Jakers-Atm-Rob:Cooldown",function(source, cb)
    if Cooldown then
        cb(true)
    else
        cb(false)
        
    end
end)