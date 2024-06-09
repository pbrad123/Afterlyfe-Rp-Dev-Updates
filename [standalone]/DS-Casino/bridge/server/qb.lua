if GetResourceState('qb-core') ~= 'started' then return end

Core = exports['qb-core']:GetCoreObject()
Framework = {}

function Framework.GetPlayer(source)
    return Core.Functions.GetPlayer(source)
end

function Framework.CanCarryItem(src, item, amount)
    return true
end

if GetResourceState('ox_inventory') == 'started' then

    function Framework.GetItem(src, item)
        local item = exports.ox_inventory:GetItem(src, item, nil, false)
        return item.count or 0
    end
    
else

    function Framework.GetItem(src, item)
        local player = Framework.GetPlayer(src)
        if player.Functions.GetItemByName(item) then
            return math.floor(player.Functions.GetItemByName(item).amount)
        else
            return 0
        end
    end

end

function Framework.GetMoney(src)
    local player = Framework.GetPlayer(src)
    return player.PlayerData.money['cash']
end

function Framework.GetJob(src)
    local player = Framework.GetPlayer(src)
    return player.PlayerData.job.name
end

function Framework.AddMoney(source, type, amount)
    if type == 'money' then type = 'cash' end
    local player = Framework.GetPlayer(source)
    player.Functions.AddMoney(type, amount)
end

function Framework.RemoveMoney(source, type, amount)
    if type == 'money' then type = 'cash' end
    local player = Framework.GetPlayer(source)
    player.Functions.RemoveMoney(type, amount)
end

if GetResourceState('ox_inventory') == 'started' then

    function Framework.AddItem(source, item, quantity)
        exports.ox_inventory:AddItem(source, item, quantity)
        if item == DS_Casino_System_Main_Config.ChipsItemName then
            TriggerClientEvent('chipsUpdated_buysell', source, math.floor(quantity), true)
        end
    end

    function Framework.RemoveItem(source, item, quantity)
        exports.ox_inventory:RemoveItem(source, item, quantity)
        if item == DS_Casino_System_Main_Config.ChipsItemName then
            TriggerClientEvent('chipsUpdated_buysell', source, quantity, false)
        end
    end

else

    function Framework.AddItem(source, item, quantity)
        local player = Framework.GetPlayer(source)
        player.Functions.AddItem(item, quantity)
        if item == DS_Casino_System_Main_Config.ChipsItemName then
            TriggerClientEvent('chipsUpdated_buysell', source, math.floor(quantity), true)
        end
    end
    
    function Framework.RemoveItem(source, item, quantity)
        local player = Framework.GetPlayer(source)
        player.Functions.RemoveItem(item, quantity)
        if item == DS_Casino_System_Main_Config.ChipsItemName then
            TriggerClientEvent('chipsUpdated_buysell', source, quantity, false)
        end
    end

end

function Framework.getIdentifier(source)
    local player = Framework.GetPlayer(source)
    return player.PlayerData.citizenid
end

RegisterServerEvent('DS-Casino_Wheel:giveWinCar', function(props)
	local src = source
	local xPlayer = Framework.GetPlayer(src)
	MySQL.Async.insert('INSERT INTO player_vehicles (license, citizenid, vehicle, hash, mods, plate, garage, state) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
	{
		xPlayer.PlayerData.license,
		xPlayer.PlayerData.citizenid,
		DS_Casino_System_LuckWheel.Vehicle,
        GetHashKey(DS_Casino_System_LuckWheel.Vehicle),
        json.encode(props),
        props.plate,
        'pillboxgarage',
        0
	})
end)

Standalone.RegisterServerCallback('DS-Casino:IsPlateTaken', function(src, cb, plate)
	MySQL.Async.fetchAll('SELECT * FROM player_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function (result)
		cb(result[1] ~= nil)
	end)
end)