local QBCore = exports['qb-core']:GetCoreObject()
local CurrentCops = -0
local cangrabcash = false

--Copcount
RegisterNetEvent('police:SetCopCount')
AddEventHandler('police:SetCopCount', function(amount)
    CurrentCops = amount
end)
--unplayerload
RegisterNetEvent('QBCore:Client:OnPlayerUnload')
AddEventHandler('QBCore:Client:OnPlayerUnload', function()
    isLoggedIn = false
end)
--playerload
RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    isLoggedIn = true
    TriggerServerEvent("Jakers-BayCity-heist:server:SetLocations")
end)
--Configlocations
RegisterNetEvent('Jakers-BayCity-heist:client:ConfigLocs')
AddEventHandler('Jakers-BayCity-heist:client:ConfigLocs', function(list)
    Config.Locations = list
end)

-----v-----GateOneTH-----v-----GateOneTH-----v-----GateOneTH-----v-----GateOneTH-----v-----GateOneTH-----v-----GateOneTH-----v-----

RegisterNetEvent('thermiteGateOneTH:UseThermite', function()
	if LocalPlayer.state.isLoggedIn then
        local pos = GetEntityCoords(PlayerPedId())
        if #(pos - vector3(Config.Locations["GateOneTH"].x, Config.Locations["GateOneTH"].y,Config.Locations["GateOneTH"].z)) < 2.5 then
            QBCore.Functions.TriggerCallback("jakers-baycity-heist:Callback:Cooldown",function(isCooldown)
                if not isCooldown then
                    if CurrentCops >= Config.MinimumBayCityHeistPolice then
                        QBCore.Functions.TriggerCallback('QBCore:HasItem', function(hasItem)
                            if hasItem then
                                TriggerServerEvent("Jakers-BayCity-heist:server:SetGateOneTHStatus", "isBusy", true)
                                PoliceCall()
                                exports["memorygame"]:thermiteminigame(Config.MemoryCorrectBlocks, Config.MemoryIncorrectBlocks, Config.MemoryTimeToShow, Config.MemoryTimeToLose,
                                function() -- success
                                   SpawnTrolly()
                                   GateOneTHAnim()
                                   GateOneTHSuccess()	                           
                                end,
                                function() -- failure
                                    GateOneTHFailed()
                                end)
                            else
                                QBCore.Functions.Notify("Locked?", "error")
                            end
                        end, "thermite")
                    else
                        QBCore.Functions.Notify("Not enough Police", "error")
                    end
                else
                    QBCore.Functions.Notify("Bank has recently been robbed, System cooldown active")
                end
            end)
        end      
    else
		Citizen.Wait(3000)
	end
end)
--Efx
RegisterNetEvent("Jakers-BayCityGateOneTH-ptfxparticle")
AddEventHandler("Jakers-BayCityGateOneTH-ptfxparticle", function(method)
    local ptfx

    RequestNamedPtfxAsset("scr_ornate_heist")
    while not HasNamedPtfxAssetLoaded("scr_ornate_heist") do
        Citizen.Wait(1)
    end
    ptfx = vector3(-1305.75, -819.10, 17.25)
    SetPtfxAssetNextCall("scr_ornate_heist")
    local effect = StartParticleFxLoopedAtCoord("scr_heist_ornate_thermal_burn", ptfx, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    Citizen.Wait(4000)
    StopParticleFxLooped(effect, 0)
end)

--Anim
function GateOneTHAnim() 
    RequestAnimDict("anim@heists@ornate_bank@thermal_charge")
    RequestModel("hei_p_m_bag_var22_arm_s")
    RequestNamedPtfxAsset("scr_ornate_heist")
    while not HasAnimDictLoaded("anim@heists@ornate_bank@thermal_charge") and not HasModelLoaded("hei_p_m_bag_var22_arm_s") and not HasNamedPtfxAssetLoaded("scr_ornate_heist") do
        Citizen.Wait(50)
    end
    local ped = PlayerPedId()
    SetEntityHeading(ped, 237)
    Citizen.Wait(100)
    local rotx, roty, rotz = table.unpack(vec3(GetEntityRotation(PlayerPedId())))
    local bagscene = NetworkCreateSynchronisedScene(-1305.75, -820.10, 17.25, rotx, roty, rotz +17, 2, false, false, 1065353216, 0, 1.3)
    local bag = CreateObject(GetHashKey("hei_p_m_bag_var22_arm_s"), -1305.75, -820.10, 17.25,  true,  true, false)

    SetEntityCollision(bag, false, true)
    NetworkAddPedToSynchronisedScene(ped, bagscene, "anim@heists@ornate_bank@thermal_charge", "thermal_charge", 1.2, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, bagscene, "anim@heists@ornate_bank@thermal_charge", "bag_thermal_charge", 4.0, -8.0, 1)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
    NetworkStartSynchronisedScene(bagscene)
    Citizen.Wait(1500)
    local x, y, z = table.unpack(GetEntityCoords(ped))
    local bomba = CreateObject(GetHashKey("hei_prop_heist_thermite"), x, y, z + 0.3,  true,  true, true)

    SetEntityCollision(bomba, false, true)
    AttachEntityToEntity(bomba, ped, GetPedBoneIndex(ped, 28422), 0, 0, 0, 0, 0, 200.0, true, true, false, true, 1, true)
    Citizen.Wait(2000)
    DeleteObject(bag)
    SetPedComponentVariation(ped, 0, Config.eupbag, 0, 0)
    DetachEntity(bomba, 1, 1)
    FreezeEntityPosition(bomba, true)
    TriggerServerEvent("Jakers-BayCityGateOneTH-particleserver", method)
    SetPtfxAssetNextCall("scr_ornate_heist")
    local effect = StartParticleFxLoopedAtCoord("scr_heist_ornate_thermal_burn", ptfx, 0.0, 0.0, 0.0, 1.0, false, false, false, false)

    NetworkStopSynchronisedScene(bagscene)
    TaskPlayAnim(ped, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_intro", 8.0, 8.0, 1000, 36, 1, 0, 0, 0)
    TaskPlayAnim(ped, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_loop", 8.0, 8.0, 3000, 49, 1, 0, 0, 0)
    Citizen.Wait(5000)
    ClearPedTasks(ped)
    DeleteObject(bomba)
    StopParticleFxLooped(effect, 0)
    SetPedComponentVariation(ped, 5, 0, 0, 0)

    TriggerServerEvent('qb-doorlock:server:updateState', "Gateone",  false, false, false, true)
    AddExplosion(
        -1305.75, 
        -820.10, 
        18.35, 
        EXPLOSION_STICKYBOMB,
        4.0,
        true,
        false,
        5.0
    )
end

--SetGateOneTHStatus
RegisterNetEvent('Jakers-BayCity-heist:client:SetGateOneTHStatus')
AddEventHandler('Jakers-BayCity-heist:client:SetGateOneTHStatus', function(stateType, state)
    if stateType == "isBusy" then
        Config.Locations["GateOneTH"].isBusy = state
    elseif stateType == "isDone" then
        Config.Locations["GateOneTH"].isDone = state
    end
end)

--GateOneTHFailed
function GateOneTHFailed()
    QBCore.Functions.Notify("Failed..")
    TriggerServerEvent("Jakers-BayCity-heist:server:SetGateOneTHStatus", "isBusy", false)
    TriggerServerEvent("QBCore:Server:RemoveItem", "thermite", 1)
    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["thermite"], "remove")
    if math.random(1, 100) <= 40 and IsWearingHandshoes() then
		TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
		QBCore.Functions.Notify("You ripped your gloves..")
	end

end

--GateOneTHSuccsess
function GateOneTHSuccess()
    QBCore.Functions.Notify("Well Done One More Door To Go", "success")
    TriggerServerEvent("QBCore:Server:RemoveItem", "thermite", 1)
    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["thermite"], "remove")
    local pos = GetEntityCoords(PlayerPedId())
    if #(pos - vector3(Config.Locations["GateOneTH"].x, Config.Locations["GateOneTH"].y,Config.Locations["GateOneTH"].z)) < 1.5 then
        TriggerServerEvent("Jakers-BayCity-heist:server:SetGateOneTHStatus", "isDone", true)
        TriggerServerEvent("Jakers-BayCity-heist:server:SetGateOneTHStatus", "isBusy", false)
    end
    TriggerServerEvent('jakers-baycity-heist:Server:BeginCooldown')
    Citizen.Wait(2500)
    AlarmSound()	
    QBCore.Functions.Notify('Sh!t Security Lock Down Has Been Activated', 'error')
    TriggerServerEvent('qb-doorlock:server:updateState', "baycitysideexit",  true, false, false, true)
    TriggerServerEvent('qb-doorlock:server:updateState', "baycityfrontexit",  true, false, false, true)

end

--PoliceAlert
function PoliceCall()
    TriggerServerEvent('police:server:policeAlert', 'BankRobbery At BayCity 10-65') -- qbcore default alerts
    TriggerServerEvent('jakers-baycity-heist:server:PoliceAlertMessage') -- linden alerts
end
--Target
exports['qb-target']:AddBoxZone("GateOneTH", vector3(-1305.86, -820.03, 17.15), 0.4, 1.4, {
    name="GateOneTH",
    heading=218,
    debugPoly=false,
    minZ = 16.15,
    maxZ = 18.15,
    }, {
        options = {
            {
                type = "client",
                event = "thermiteGateOneTH:UseThermite",
                icon = "fas fa-user-secret",
                label = "Thermite",
                Locations = "GateOneTH",
                
            },
    },
    distance = 2.5
})
-----^-----GateOneTH-----^-----GateOneTH-----^-----GateOneTH-----^-----GateOneTH-----^-----GateOneTH-----^-----GateOneTH-----^-----

-----v-----GateTwoTH-----v-----GateTwoTH-----v-----GateTwoTH-----v-----GateTwoTH-----v-----GateTwoTH-----v-----GateTwoTH-----v-----
RegisterNetEvent('thermiteGateTwoTH:UseThermite', function()
	if LocalPlayer.state.isLoggedIn then
        local pos = GetEntityCoords(PlayerPedId())
        if #(pos - vector3(Config.Locations["GateTwoTH"].x, Config.Locations["GateTwoTH"].y,Config.Locations["GateTwoTH"].z)) < 2.5 then
            QBCore.Functions.TriggerCallback('QBCore:HasItem', function(hasItem)
                if hasItem then
                    TriggerServerEvent("Jakers-BayCity-heist:server:SetGateTwoTHStatus", "isBusy", true)
                    exports["memorygame"]:thermiteminigame(Config.MemoryCorrectBlocks, Config.MemoryIncorrectBlocks, Config.MemoryTimeToShow, Config.MemoryTimeToLose,
                    function() -- success
                       GateTwoTHAnim()
                       GateTwoTHSuccess()
                    end,
                    function() -- failure
                        GateTwoTHFailed()
                    end)
                else
                    QBCore.Functions.Notify("Locked?", "error")
                end
            end, "thermite")
        end      
    else
		Citizen.Wait(3000)
	end
end)
--Efx
RegisterNetEvent("Jakers-BayCityGateTwoTH-ptfxparticle")
AddEventHandler("Jakers-BayCityGateTwoTH-ptfxparticle", function(method)
    local ptfx

    RequestNamedPtfxAsset("scr_ornate_heist")
    while not HasNamedPtfxAssetLoaded("scr_ornate_heist") do
        Citizen.Wait(1)
    end
    ptfx = vector3(-1308.27, -813.0, 17.25)
    SetPtfxAssetNextCall("scr_ornate_heist")
    local effect = StartParticleFxLoopedAtCoord("scr_heist_ornate_thermal_burn", ptfx, 0.0, 0.0, 0.0, 1.0, false, false, false, false)
    Citizen.Wait(4000)
    StopParticleFxLooped(effect, 0)
end)

--Anim
function GateTwoTHAnim() 
    RequestAnimDict("anim@heists@ornate_bank@thermal_charge")
    RequestModel("hei_p_m_bag_var22_arm_s")
    RequestNamedPtfxAsset("scr_ornate_heist")
    while not HasAnimDictLoaded("anim@heists@ornate_bank@thermal_charge") and not HasModelLoaded("hei_p_m_bag_var22_arm_s") and not HasNamedPtfxAssetLoaded("scr_ornate_heist") do
        Citizen.Wait(50)
    end
    local ped = PlayerPedId()
    SetEntityHeading(ped, 237)
    Citizen.Wait(100)
    local rotx, roty, rotz = table.unpack(vec3(GetEntityRotation(PlayerPedId())))
    local bagscene = NetworkCreateSynchronisedScene(-1308.27, -814.0, 17.25, rotx, roty, rotz +17, 2, false, false, 1065353216, 0, 1.3)
    local bag = CreateObject(GetHashKey("hei_p_m_bag_var22_arm_s"), -1308.27, -814.0, 17.25,  true,  true, false)

    SetEntityCollision(bag, false, true)
    NetworkAddPedToSynchronisedScene(ped, bagscene, "anim@heists@ornate_bank@thermal_charge", "thermal_charge", 1.2, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, bagscene, "anim@heists@ornate_bank@thermal_charge", "bag_thermal_charge", 4.0, -8.0, 1)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
    NetworkStartSynchronisedScene(bagscene)
    Citizen.Wait(1500)
    local x, y, z = table.unpack(GetEntityCoords(ped))
    local bomba = CreateObject(GetHashKey("hei_prop_heist_thermite"), x, y, z + 0.3,  true,  true, true)

    SetEntityCollision(bomba, false, true)
    AttachEntityToEntity(bomba, ped, GetPedBoneIndex(ped, 28422), 0, 0, 0, 0, 0, 200.0, true, true, false, true, 1, true)
    Citizen.Wait(2000)
    DeleteObject(bag)
    SetPedComponentVariation(ped, 0, Config.eupbag, 0, 0)
    DetachEntity(bomba, 1, 1)
    FreezeEntityPosition(bomba, true)
    TriggerServerEvent("Jakers-BayCityGateTwoTH-particleserver", method)
    SetPtfxAssetNextCall("scr_ornate_heist")
    local effect = StartParticleFxLoopedAtCoord("scr_heist_ornate_thermal_burn", ptfx, 0.0, 0.0, 0.0, 1.0, false, false, false, false)

    NetworkStopSynchronisedScene(bagscene)
    TaskPlayAnim(ped, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_intro", 8.0, 8.0, 1000, 36, 1, 0, 0, 0)
    TaskPlayAnim(ped, "anim@heists@ornate_bank@thermal_charge", "cover_eyes_loop", 8.0, 8.0, 3000, 49, 1, 0, 0, 0)
    Citizen.Wait(5000)
    ClearPedTasks(ped)
    DeleteObject(bomba)
    StopParticleFxLooped(effect, 0)

    TriggerServerEvent('qb-doorlock:server:updateState', "Gatetwo",  false, false, false, true)
    AddExplosion(
        -1307.81, 
        -814.12, 
        18.35, 
        EXPLOSION_STICKYBOMB,
        4.0,
        true,
        false,
        5.0
    )
end

--SetGateTwoTHStatus
RegisterNetEvent('Jakers-BayCity-heist:client:SetGateTwoTHStatus')
AddEventHandler('Jakers-BayCity-heist:client:SetGateTwoTHStatus', function(stateType, state)
    if stateType == "isBusy" then
        Config.Locations["GateTwoTH"].isBusy = state
    elseif stateType == "isDone" then
        Config.Locations["GateTwoTH"].isDone = state
    end
end)
--GateTwoTHFailed
function GateTwoTHFailed()
    QBCore.Functions.Notify("Failed..")
    if math.random(1, 100) <= 40 and IsWearingHandshoes() then
		TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
		QBCore.Functions.Notify("You ripped your gloves..")
	end
    TriggerServerEvent("Jakers-BayCity-heist:server:SetGateTwoTHStatus", "isBusy", false)
    TriggerServerEvent("QBCore:Server:RemoveItem", "thermite", 1)
    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["thermite"], "remove")

end
--GateTwoTHSuccsess
function GateTwoTHSuccess()
    QBCore.Functions.Notify("", "success")
    local pos = GetEntityCoords(PlayerPedId())
    if #(pos - vector3(Config.Locations["GateTwoTH"].x, Config.Locations["GateTwoTH"].y,Config.Locations["GateTwoTH"].z)) < 1.5 then
        TriggerServerEvent("qb-doorlock-heist:server:SetGateTwoTHStatus", "isDone", true)
        TriggerServerEvent("qb-doorlock-heist:server:SetGateTwoTHStatus", "isBusy", false)
    end
    TriggerServerEvent("QBCore:Server:RemoveItem", "thermite", 1)
    TriggerEvent('inventory:client:ItemBox', QBCore.Shared.Items["thermite"], "remove")
    cangrabcash = true
end

--Target
exports['qb-target']:AddBoxZone("GateTwoTH", vector3(-1308.03, -813.69, 17.33), 1.2, 0.4, {
    name="GateTwoTH",
    heading=307,
    debugPoly=false,
    minZ=16.13,
    maxZ=18.33
    }, {
        options = {
            {
                type = "client",
                event = "thermiteGateTwoTH:UseThermite",
                icon = "fas fa-user-secret",
                label = "Thermite",
                Locations = "GateTwoTH",
                
            },
    },
        distance = 2.5
})
-----^-----GateTwoTH-----^-----GateTwoTH-----^-----GateTwoTH-----^-----GateTwoTH-----^-----GateTwoTH-----^-----GateTwoTH-----^-----

-----v-----Loot-----v-----Loot-----v-----Loot-----v-----Loot-----v-----Loot-----v-----Loot-----v-----Loot-----v-----Loot-----v-----
function SpawnTrolly()
    RequestModel("hei_prop_hei_cash_trolly_01")
    for k,v in pairs(Config.Trollys) do
        Trolley = CreateObject(269934519, v['Coords']['X'], v['Coords']['Y'], v['Coords']['Z'], 1, 0, 0)
        SetEntityHeading(Trolley, v['Coords']['H'])
	    FreezeEntityPosition(Trolley, true)
	    SetEntityInvincible(Trolley, true)
        PlaceObjectOnGroundProperly(Trolley)
    end
end

exports['qb-target']:AddTargetModel({269934519}, {
	options = {
		{
			event = "BayCity:Client:BeginLooting",
			icon = "fas fa-dollar-sign",
			label = "Grab",
			canInteract = function(entity)
                if not isLooting then
                    return true
                end
            end
		},
	},
	distance = 0.5
})

Trolley = nil
CashModel = "hei_prop_heist_cash_pile"
SavedPhases= {}


RegisterNetEvent('BayCity:Client:BeginLooting', function(data)
    if cangrabcash == true then
    isLooting = true
    disableinput = true
    local ped = PlayerPedId()
    local model = "hei_prop_heist_cash_pile"

    Trolley = GetClosestObjectOfType(GetEntityCoords(ped), 1.0, 269934519, false, false, false)
    local CashAppear = function()
	    local pedCoords = GetEntityCoords(ped)
        local grabmodel = GetHashKey(model)

        RequestModel(grabmodel)
        while not HasModelLoaded(grabmodel) do
            Wait(100)
        end
	    local grabobj = CreateObject(grabmodel, pedCoords, true)

	    FreezeEntityPosition(grabobj, true)
	    SetEntityInvincible(grabobj, true)
	    SetEntityNoCollisionEntity(grabobj, ped)
	    SetEntityVisible(grabobj, false, false)
	    AttachEntityToEntity(grabobj, ped, GetPedBoneIndex(ped, 60309), 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 0, true)
	    local startedGrabbing = GetGameTimer()

	    CreateThread(function()
		    while GetGameTimer() - startedGrabbing < 37000 do
			    Wait(1)
			    DisableControlAction(0, 73, true)
			    if HasAnimEventFired(ped, GetHashKey("CASH_APPEAR")) then
				    if not IsEntityVisible(grabobj) then
					    SetEntityVisible(grabobj, true, false)
				    end
			    end
			    if HasAnimEventFired(ped, GetHashKey("RELEASE_CASH_DESTROY")) then
				    if IsEntityVisible(grabobj) then
                        SetEntityVisible(grabobj, false, false)
                        
				    end
			    end
		    end
		    DeleteObject(grabobj)
	    end)
    end
	local trollyobj = Trolley
    local emptyobj = GetHashKey("hei_prop_hei_cash_trolly_03")

	if IsEntityPlayingAnim(trollyobj, "anim@heists@ornate_bank@grab_cash", "cart_cash_dissapear", 3) then
		return
    end
    local baghash = GetHashKey("hei_p_m_bag_var22_arm_s")

    RequestAnimDict("anim@heists@ornate_bank@grab_cash")
    RequestModel(baghash)
    RequestModel(emptyobj)
    while not HasAnimDictLoaded("anim@heists@ornate_bank@grab_cash") and not HasModelLoaded(emptyobj) and not HasModelLoaded(baghash) do
        Wait(100)
    end
	while not NetworkHasControlOfEntity(trollyobj) do
		Wait(1)
		NetworkRequestControlOfEntity(trollyobj)
	end
	local bag = CreateObject(GetHashKey("hei_p_m_bag_var22_arm_s"), GetEntityCoords(PlayerPedId()), true, false, false)
    local scene1 = NetworkCreateSynchronisedScene(GetEntityCoords(trollyobj), GetEntityRotation(trollyobj), 2, false, false, 1065353216, 0, 1.3)

	NetworkAddPedToSynchronisedScene(ped, scene1, "anim@heists@ornate_bank@grab_cash", "intro", 1.5, -4.0, 1, 16, 1148846080, 0)
    NetworkAddEntityToSynchronisedScene(bag, scene1, "anim@heists@ornate_bank@grab_cash", "bag_intro", 4.0, -8.0, 1)
    SetPedComponentVariation(ped, 5, 0, 0, 0)
	NetworkStartSynchronisedScene(scene1)
	Wait(1500)
	CashAppear()
	local scene2 = NetworkCreateSynchronisedScene(GetEntityCoords(trollyobj), GetEntityRotation(trollyobj), 2, false, false, 1065353216, 0, 1.3)

	NetworkAddPedToSynchronisedScene(ped, scene2, "anim@heists@ornate_bank@grab_cash", "grab", 1.5, -4.0, 1, 16, 1148846080, 0)
	NetworkAddEntityToSynchronisedScene(bag, scene2, "anim@heists@ornate_bank@grab_cash", "bag_grab", 4.0, -8.0, 1)
	NetworkAddEntityToSynchronisedScene(trollyobj, scene2, "anim@heists@ornate_bank@grab_cash", "cart_cash_dissapear", 4.0, -8.0, 1)
	NetworkStartSynchronisedScene(scene2)
	Wait(37000)
	local scene3 = NetworkCreateSynchronisedScene(GetEntityCoords(trollyobj), GetEntityRotation(trollyobj), 2, false, false, 1065353216, 0, 1.3)

	NetworkAddPedToSynchronisedScene(ped, scene3, "anim@heists@ornate_bank@grab_cash", "exit", 1.5, -4.0, 1, 16, 1148846080, 0)
	NetworkAddEntityToSynchronisedScene(bag, scene3, "anim@heists@ornate_bank@grab_cash", "bag_exit", 4.0, -8.0, 1)
	NetworkStartSynchronisedScene(scene3)
    NewTrolley = CreateObject(emptyobj, GetEntityCoords(trollyobj) + vector3(0.0, 0.0, - 0.985), true)
    SetEntityRotation(NewTrolley, GetEntityRotation(trollyobj))
	while not NetworkHasControlOfEntity(trollyobj) do
		Wait(1)
		NetworkRequestControlOfEntity(trollyobj)
	end
	DeleteObject(trollyobj)
    PlaceObjectOnGroundProperly(NewTrolley)
	Wait(1800)
	DeleteObject(bag)
    SetPedComponentVariation(ped, 0, Config.eupbag, 0, 0)
	RemoveAnimDict("anim@heists@ornate_bank@grab_cash")
	SetModelAsNoLongerNeeded(emptyobj)
    SetModelAsNoLongerNeeded(GetHashKey("hei_p_m_bag_var22_arm_s"))
    disableinput = false
    Wait(1500)
    DeleteObject(NewTrolley)
    isLooting = false
    TriggerServerEvent("Jakers-BayCity:Server:RewardCash")
    cangrabcash = false
    elseif cangrabcash == false then
        QBCore.Functions.Notify("", "error")
    end

end)

-----^-----Loot------^-----Loot-----^-----Loot-----^-----Loot-----^-----Loot-----^-----Loot-----^-----Loot-----^-----Loot-----^-----

-----v-----LockDown-----v-----LockDown-----v-----LockDown-----v-----LockDown-----v-----LockDown----v-----LockDown-----v-----LockDown

RegisterNetEvent('Jakers-BayCity:client:petpanther',function()
    loadAnimDict( "creatures@rottweiler@tricks@" )
    TaskPlayAnim( PlayerPedId(), "creatures@rottweiler@tricks@", "petting_franklin", 1.0, 4.0, -1, 48, 0, 0, 0, 0 )
    Wait(1500)
    QBCore.Functions.Notify("Bank Security De-Activated", "success")
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 2.0, 'success-notificationjakers', 0.1)
    ClearPedTasks(PlayerPedId())
    if math.random(1, 100) <= 40 and IsWearingHandshoes() then
		TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
	end
	--lockdowndoors
    TriggerServerEvent('qb-doorlock:server:updateState', "baycitysideexit",  false, false, false, true)
    TriggerServerEvent('qb-doorlock:server:updateState', "baycityfrontexit",  false, false, false, true)
end)

exports['qb-target']:AddBoxZone("Panther", vector3(-1291.05, -825.03, 17.15), 0.2, 0.8, {
    name="Panther",
    heading=307,
    debugPoly=false,
    minZ=16.75,
    maxZ=17.55
    }, {
        options = {
            {
                type = "function",
                event = "Jakers-BayCity:client:petpanther",
                icon = "fas fa-hands",
			    label = "Pet",  
            },
    },
        distance = 1
})

function AlarmSound()
    local alarmDistance = #(GetEntityCoords(PlayerPedId()) - Config.AlarmLocation.AlarmCoords)
    if(alarmDistance < 100)then

        if(alarmDistance > 0 and alarmDistance < 7)then
            volumeMultiplier = 0.4
        elseif(alarmDistance > 7 and alarmDistance < 14)then
            volumeMultiplier = 0.36
        elseif(alarmDistance > 14 and alarmDistance < 21)then
            volumeMultiplier = 0.32
        elseif(alarmDistance > 21 and alarmDistance < 28)then
            volumeMultiplier = 0.28
        elseif(alarmDistance > 28 and alarmDistance < 35)then
            volumeMultiplier = 0.24
        elseif(alarmDistance > 35 and alarmDistance < 42)then
            volumeMultiplier = 0.20
        elseif(alarmDistance > 42 and alarmDistance < 49)then
            volumeMultiplier = 0.16
        elseif(alarmDistance > 49 and alarmDistance < 56)then
            volumeMultiplier = 0.12
        elseif(alarmDistance > 56 and alarmDistance < 63)then
            volumeMultiplier = 0.08
        elseif(alarmDistance > 63 and alarmDistance < 70)then
            volumeMultiplier = 0.05
        elseif(alarmDistance > 70 and alarmDistance < 77)then
            volumeMultiplier = 0.03
        elseif(alarmDistance > 77 and alarmDistance < 84)then
            volumeMultiplier = 0.01
        elseif(alarmDistance > 84 and alarmDistance < 91)then
            volumeMultiplier = 0.05
        elseif(alarmDistance > 91 and alarmDistance < 100)then
            volumeMultiplier = 0.025
        end
        TriggerEvent('InteractSound_CL:PlayOnOne','BankAlarmJakers', volumeMultiplier)
    end
end

-----^-----LockDown-----^-----LockDown-----^-----LockDown-----^-----LockDown-----^-----LockDown----^-----LockDown-----^-----LockDown

function loadAnimDict( dict )
    while ( not HasAnimDictLoaded( dict ) ) do
        RequestAnimDict( dict )
        Citizen.Wait( 5 )
    end
end 

function IsWearingHandshoes()
    local armIndex = GetPedDrawableVariation(PlayerPedId(), 3)
    local model = GetEntityModel(PlayerPedId())
    local retval = true
    if model == GetHashKey("mp_m_freemode_01") then
        if Config.MaleNoHandshoes[armIndex] ~= nil and Config.MaleNoHandshoes[armIndex] then
            retval = false
        end
    else
        if Config.FemaleNoHandshoes[armIndex] ~= nil and Config.FemaleNoHandshoes[armIndex] then
            retval = false
        end
    end
    return retval
end

RegisterNetEvent("jakers-baycity-heist:CleanUpBayCity")
AddEventHandler("jakers-baycity-heist:CleanUpBayCity", function()
    Count = 0
    for k, v in pairs(Config.Trollys) do
        local ObjectOne = GetClosestObjectOfType(v["Coords"]["X"], v["Coords"]["Y"], v["Coords"]["Z"], 20.0, 269934519, false, false, false)
        local ObjectTwo = GetClosestObjectOfType(v["Coords"]["X"], v["Coords"]["Y"], v["Coords"]["Z"], 20.0, 769923921, false, false, false)
        DeleteEntity(ObjectOne)
        DeleteObject(ObjectOne)
        DeleteEntity(ObjectTwo)
        DeleteObject(ObjectTwo)
    end
    for k,v in pairs(Config.Trollys) do 
        v['Open-State'] = false
    end
    TriggerServerEvent('qb-doorlock:server:updateState', "Gateone",  true, false, false, true)
    TriggerServerEvent('qb-doorlock:server:updateState', "Gatetwo",  true, false, false, true)
     --lockdowndoors
    TriggerServerEvent('qb-doorlock:server:updateState', "baycitysideexit",  false, false, false, true)
    TriggerServerEvent('qb-doorlock:server:updateState', "baycityfrontexit",  false, false, false, true)
end)

