QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('ak47_qb_ambulancejob:hasmoney', function(source, cb, total)
	local xPlayer = QBCore.Functions.GetPlayer(source)
	local money = xPlayer.PlayerData.money['bank']
	if GetResourceState('m-Insurance') == 'started' and exports['m-Insurance']:haveHealthInsurance(xPlayer.PlayerData.citizenid) then
		local discount = 500 --change this
		local pay = total - discount
		if money >= pay then
			xPlayer.Functions.RemoveMoney("bank", pay > 0 and pay or 0, "respawned-at-hospital")
			addSocietyMoney(pay)
			cb(true)
		else
			cb(false)
		end
		xPlayer.Functions.RemoveMoney("bank", total - 500, "respawned-at-hospital") -- The "500" is the discount, you can change it
	else
		if money >= total then
			xPlayer.Functions.RemoveMoney('bank', total)
			addSocietyMoney(total)
			cb(true)
		else
			cb(false)
		end
	end
end)

function GetItemLabel(item)
    if QBCore.Shared and QBCore.Shared.Items and QBCore.Shared.Items[item] then
	   return QBCore.Shared.Items[item].label
    else
        print('^1Item: ^3['..item..']^1 missing in qb-core/shared/items.lua^0')
        return item
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

function addSocietyMoney(money)
	Citizen.CreateThread(function()
		if Config.SocietyInManagement then
			exports['qb-management']:AddMoney('ambulance', money)
		else
			exports['qb-banking']:AddMoney('ambulance', money)
		end
	end)
end

function exportHandler(exportName, func)
    AddEventHandler(('__cfx_export_qb-ambulancejob_%s'):format(exportName), function(setCB)
        setCB(func)
    end)
end

AddEventHandler('txAdmin:events:healedPlayer', function(eventData)
	TriggerClientEvent('ak47_qb_ambulancejob:revive', eventData.id)
	TriggerClientEvent('ak47_qb_ambulancejob:skellyfix', eventData.id)
end)

QBCore.Functions.CreateCallback('ak47_qb_ambulancejob:getwebhook', function(source, cb)
	cb(ScreenshotWebhook)
end)

QBCore.Commands.Add("kill", _U('killcmd'), {{name = "id", help = _U('playerid')}}, false, function(source, args)
	local src = source
	if args[1] then
		local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
		if Player then
			TriggerClientEvent('hospital:client:KillPlayer', Player.PlayerData.source)
		end
	else
		TriggerClientEvent('hospital:client:KillPlayer', src)
	end
end, "admin")

QBCore.Commands.Add("revive", _U('revivecmd'), {{name = "id", help = _U('playerid')}}, false, function(source, args)
	local src = source
	if args[1] then
		local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
		if Player then
			TriggerClientEvent('ak47_qb_ambulancejob:revive', Player.PlayerData.source)
			TriggerClientEvent('ak47_qb_ambulancejob:skellyfix', Player.PlayerData.source)
		end
	else
		TriggerClientEvent('ak47_qb_ambulancejob:revive', src)
		TriggerClientEvent('ak47_qb_ambulancejob:skellyfix', src)
	end
end, "admin")

QBCore.Commands.Add("skellyfix", _U('skellyfix'), {{name = "id", help = _U('playerid')}}, false, function(source, args)
	local src = source
	if args[1] then
		local Player = QBCore.Functions.GetPlayer(tonumber(args[1]))
		if Player then
			TriggerClientEvent('ak47_qb_ambulancejob:skellyfix', Player.PlayerData.source)
		end
	else
		TriggerClientEvent('ak47_qb_ambulancejob:skellyfix', src)
	end
end, "admin")

QBCore.Commands.Add("reviveall", _U('reviveall'), {}, false, function(source, args)
	TriggerClientEvent('ak47_qb_ambulancejob:revive', -1)
	TriggerClientEvent('ak47_qb_ambulancejob:skellyfix', -1)
end, "admin")

QBCore.Commands.Add("skellyfixall", _U('skellyfixall'), {}, false, function(source, args)
	TriggerClientEvent('ak47_qb_ambulancejob:skellyfix', -1)
end, "admin")