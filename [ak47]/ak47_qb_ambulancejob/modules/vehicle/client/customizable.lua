function setVehicleFuel(vehicle, fuel)
    if GetResourceState('LegacyFuel') == 'started' then
        exports['LegacyFuel']:SetFuel(vehicle, fuel + 0.0)
    else
        SetVehicleFuelLevel(vehicle, fuel)
        --custom fuel code here
    end
end

function givekey(vehicle, plate)
    -- give vehicle key here
    if GetResourceState('ak47_qb_vehiclekeys') == 'started' then
        exports['ak47_qb_vehiclekeys']:GiveKey(plate)
    elseif GetResourceState('wasabi_carlock') == 'started' then
        exports['wasabi_carlock']:GiveKey(plate)
    elseif GetResourceState('qs-vehiclekeys') == 'started' then
        exports['qs-vehiclekeys']:GiveKeys(plate, GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
    elseif GetResourceState('cd_garage') == 'started' then
        TriggerEvent('cd_garage:AddKeys', exports['cd_garage']:GetPlate(vehicle))
    elseif GetResourceState('qb-vehiclekeys') == 'started' then
        TriggerEvent("vehiclekeys:client:SetOwner", QBCore.Functions.GetPlate(vehicle))
    else
        --custom code here
    end
end

function removekey(vehicle, plate)
    -- remove vehicle key here
    if GetResourceState('ak47_vehiclekeys') == 'started' then
        exports['ak47_qb_vehiclekeys']:RemoveKey(plate)
    elseif GetResourceState('qs-vehiclekeys') == 'started' then
        exports['qs-vehiclekeys']:RemoveKeys(plate, GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)))
    else
        --custom code here
    end
end

function onSpawnVehicle(vehicle, plate)
    setVehicleFuel(vehicle, 100.0)
    givekey(vehicle, plate)
end

function onRemoveVehicle(vehicle, plate)
    removekey(vehicle, plate)
end