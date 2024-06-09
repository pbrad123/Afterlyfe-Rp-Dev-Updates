local IsAnimated = false

RegisterNetEvent('ak47_dominos:onEat')
AddEventHandler('ak47_dominos:onEat', function()
    if not IsAnimated then
        IsAnimated = true
        Citizen.CreateThread(function()
            local playerPed = PlayerPedId()
            QBCore.Functions.RequestAnimDict('mp_player_inteat@burger')
            TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
            Citizen.Wait(3000)
            IsAnimated = false
            ClearPedSecondaryTask(playerPed)
        end)
    end
end)

RegisterNetEvent('ak47_dominos:onDrink')
AddEventHandler('ak47_dominos:onDrink', function()
    if not IsAnimated then
        IsAnimated = true
        Citizen.CreateThread(function()
            local playerPed = PlayerPedId()
            QBCore.Functions.RequestAnimDict('mp_player_intdrink')
            TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 49, 0, 0, 0, 0)
            Citizen.Wait(3000)
            IsAnimated = false
            ClearPedSecondaryTask(playerPed)
        end)
    end
end)

RegisterNetEvent('ak47_dominos:add')
AddEventHandler('ak47_dominos:add', function(type, value)
    TriggerServerEvent("ak47_dominos:SetMetaData", type, QBCore.Functions.GetPlayerData().metadata[type] + value)
end)
