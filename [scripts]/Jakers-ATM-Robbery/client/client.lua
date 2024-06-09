local QBCore = exports['qb-core']:GetCoreObject()
local CurrentCops = -0

RegisterNetEvent('police:SetCopCount')
AddEventHandler('police:SetCopCount', function(amount)
    CurrentCops = amount
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload')
AddEventHandler('QBCore:Client:OnPlayerUnload', function()
    isLoggedIn = false
end)

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    isLoggedIn = true
end)

RegisterNetEvent('qb-police:SetCopCount')
AddEventHandler('qb-police:SetCopCount', function(Amount)
    CurrentCops = Amount
end)
	
RegisterNetEvent('Jakers-Atm-Rob:Night')
AddEventHandler('Jakers-Atm-Rob:Night', function()
	if not RobbingATM then
		if Config.Night then 
			if isNight() then
				local src = source
				RobATM()
				
			else
				QBCore.Functions.Notify("Shhhh, come back at night time")
			end

		else
			local src = source
			RobATM()
			
		end
	end
end)

function RobATM()
	local pos = GetEntityCoords(PlayerPedId())
	if LocalPlayer.state.isLoggedIn then
		QBCore.Functions.TriggerCallback("Jakers-Atm-Rob:Cooldown", function(cooldown)
			if not cooldown then
				if CurrentCops >= Config.MinimumAtmRobberyPolice then
					QBCore.Functions.TriggerCallback('QBCore:HasItem', function(hasItem)
						if hasItem then
							QBCore.Functions.Progressbar("power_hack", "Connecting", (5000), false, true, {
								useWhileDead = false,
								canCancel = false,
								controlDisables = {
									disableMovement = true,
									disableCarMovement = false,
									disableMouse = false,
									disableCombat = false,
								},
							})
							PoliceCall()
							TaskStartScenarioInPlace(PlayerPedId(), 'WORLD_HUMAN_STAND_MOBILE', -1, true)
							Citizen.Wait(5000)
							local minigame = exports['hackingminigame']:Open()   
                               if(minigame == true) then -- success
							   ClearPedTasksImmediately(PlayerPedId())
							   HackSuccess() 
							else
								Citizen.Wait(1000)
							    ClearPedTasksImmediately(PlayerPedId())
								HackFailed()
							end
						else
							QBCore.Functions.Notify("Brute force wont work here ", "error")
						end
					end, "hackingphone")
				else
					QBCore.Functions.Notify("Not enough Police", "error")
				end
			else
				QBCore.Functions.Notify("A ATM has recently been robbed, System cooldown active")
			end
		end)
	else
		Citizen.Wait(3000)
	end
end

function RobbingTheMoney()
    Anim = true
    QBCore.Functions.Progressbar("power_hack", "Grabbing Money", (7500), false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "anim@heists@ornate_bank@grab_cash_heels",
        anim = "grab",
        flags = 16,
    }, {
       model = "prop_cs_heist_bag_02",
       bone = 57005,
       coords = { x = -0.005, y = 0.00, z = -0.16 },
       rotation = { x = 250.0, y = -30.0, z = 0.0 },


    }, {}, function() -- Done
        Anim = false
        StopAnimTask(PlayerPedId(), "anim@heists@ornate_bank@grab_cash_heels", "grab", 1.0)
		SetPedComponentVariation((PlayerPedId()), 5, 47, 0, 0)

    end, function() -- Cancel
        Anim = false
        StopAnimTask(PlayerPedId(), "anim@heists@ornate_bank@grab_cash_heels", "grab", 1.0)
		
    end)
    
    Citizen.CreateThread(function()
        while Anim do
            TriggerServerEvent('qb-hud:Server:gain:stress', math.random(2, 3))
            Citizen.Wait(12000)
        end
    end)
end

function HackFailed()
	QBCore.Functions.Notify("Failed..")
    if math.random(1, 100) <= 40 and IsWearingHandshoes() then
		TriggerServerEvent("evidence:server:CreateFingerDrop", pos)
		QBCore.Functions.Notify("You ripped your gloves..")
	end
end

function HackSuccess()
	QBCore.Functions.Notify("Success!")
    ClearPedTasksImmediately(PlayerPedId())
	RobbingTheMoney()
	TriggerServerEvent("Jakers-Atm-Rob:success")	
    TriggerServerEvent('Jakers-Atm-Rob:Server:BeginCooldown')
end

function isNight()
	local hour = GetClockHours()
	if hour >= 0 and hour <= 6 then
	return true
	end
end

function PoliceCall()
    TriggerServerEvent('police:server:policeAlert', 'Attempted ATM Robbery')
    TriggerServerEvent('jakers-ATM-heist:server:PoliceAlertMessage') -- linden alerts
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

local prop = {
    "prop_atm_01",
    "prop_atm_02",
    "prop_atm_03",
    "prop_fleeca_atm",
}
  exports['qb-target']:AddTargetModel(prop, {
      options = {
          {
              type = "client",
              event = "Jakers-Atm-Rob:Night",
              icon = "fas fa-user-secret",
              label = "Hack ATM",
        },
    },
        distance = 2.0    
})
