QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateUseableItem('acamprosate', function(source)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.RemoveItem('acamprosate', 1)
    TriggerClientEvent('ak47_qb_drugmanager:onmed', source, 10) -- will reduce addiction 10 from each drug
end)

QBCore.Functions.CreateUseableItem('lofexidine', function(source)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    xPlayer.Functions.RemoveItem('lofexidine', 1)
    TriggerClientEvent('ak47_qb_drugmanager:onmed', source, 15) -- will reduce addiction 15 from each drug
end)

AddEventHandler('ak47_qb_drugmanager:ondrugsell:seccess', function(source, item, quantity)
    -- you can add your gang script export here to increase loyalty
    -- TriggerEvent('rcore_gangs:server:increase_loyalty', source, 'DRUGS', exports['gangs']:getIncreaseMultipliers('DRUGS'))
end)

function hasEnoughItem(source, item, quantity)
    local quantity = quantity or 1
    local xPlayer = QBCore.Functions.GetPlayer(source)
    local inv = xPlayer.Functions.GetItemByName(item)
    if inv and ((inv.amount and inv.amount >= quantity) or (inv.count and inv.count >= quantity)) then
        return true
    end
    return false
end

function GetItemLabel(item)
    if QBCore.Shared and QBCore.Shared.Items and QBCore.Shared.Items[item] then
       return QBCore.Shared.Items[item].label
    else
        print('^1Item: ^3['..item..']^1 missing in qb-core/shared/items.lua^0')
        return item
    end
end

function GetPlayerFromId(id)
    return QBCore.Functions.GetPlayer(id).Functions
end

function addMoney(source, money)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    if Config.GiveBlack then
        if Config.HasMetaData then
            xPlayer.Functions.AddItem(Config.Item, 1, false, {worth = money})
        else
            xPlayer.Functions.AddItem(Config.Item, money)
        end
    else
        xPlayer.Functions.AddMoney('cash', money)
    end
end

function CanCarryItem(id, item, amount)
    return true -- There is no way to check can caryy item in latest qb.
end