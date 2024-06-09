QBCore = exports['qb-core']:GetCoreObject()

TimeoutCount = -1
CancelledTimeouts = {}

setTimeout = function(msec, cb)
    local id = TimeoutCount + 1
    SetTimeout(msec, function()
        if CancelledTimeouts[id] then
            CancelledTimeouts[id] = nil
        else
            cb()
        end
    end)
    TimeoutCount = id
    return id
end

clearTimeout = function(id)
    CancelledTimeouts[id] = true
end

function addMoney(source, money)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    if Config.GiveBlack then
        xPlayer.Functions.AddItem('markedbills', 1, false, {worth = money})
    else
        xPlayer.Functions.AddMoney('cash', money)
    end
end

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

function getMoney(id)
	local xPlayer = QBCore.Functions.GetPlayer(id)
	return xPlayer.PlayerData.money['cash']
end

function AddItem(source, item, amount)
    local xPlayer = QBCore.Functions.GetPlayer(source)
    if xPlayer.Functions.AddItem(item, amount) then
        return true
    else
        return false
    end
end

