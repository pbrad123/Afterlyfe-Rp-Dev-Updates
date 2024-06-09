local QBCore = exports['qb-core']:GetCoreObject()
local MoneyType = Config.MoneyType
local lenpcsspawned = false

RegisterServerEvent("qb-lifeinvader:gatherlenpc")
AddEventHandler("qb-lifeinvader:gatherlenpc", function() 
    if lenpcsspawned == false then
		local _source = source
		TriggerClientEvent("qb-lifeinvader:SpawnleGuards", _source)
		lenpcsspawned = true
	end
end)

RegisterNetEvent('qb-lifeinvader:ResetGuardsle', function()
    if lenpcsspawned == true then
        lenpcsspawned = false
    end
end)

RegisterNetEvent('qb-lifeinvader:leFinalDone', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem(Config.HackItem, 1)
    Player.Functions.AddItem('data_usb', 1)
end)

RegisterNetEvent('qb-lifeinvader:ReceivePaymentle', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local required = 'data_usb'
    local item = Config.leRewards[math.random(1, #Config.leRewards)]
    local amount = Config.leRewardAmount
    local chance = math.random(100)
    
    Player.Functions.RemoveItem(required, 1)
    Player.Functions.AddMoney(MoneyType, math.random(Config.PaymentleMin, Config.PaymentleMax))
    
    if chance<=Config.leItemChance then
        Player.Functions.AddItem(item, amount)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[item], 'add')
    end
end)
