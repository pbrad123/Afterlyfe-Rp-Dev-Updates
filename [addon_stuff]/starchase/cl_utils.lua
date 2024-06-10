function loadPtfx(dict)
    RequestNamedPtfxAsset(dict)
    while not HasNamedPtfxAssetLoaded(dict) do Wait(0) end
end

function topNotification(text)
    SetTextComponentFormat('STRING')
    AddTextComponentString(text)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function showNotification(message)
    SetNotificationTextEntry("STRING")
	AddTextComponentString(message)
	DrawNotification(0,1)
end

RegisterNetEvent("Client:starChaseNotification")
AddEventHandler("Client:starChaseNotification", function(message)
    showNotification(message)
end)

function loadModel(model)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end
end

function requestAnim(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do 
        Wait(0) 
    end
end

function isVehicleModelAllowed(model)
    if vehicles[model] == nil then
        return false
    else
        return true
    end
end

if main.developerMode then
	TriggerEvent('chat:addSuggestion', '/'.."installstarchase", "Find positioning of the starchase on any vehicle", {
		{name="Bone Name", help="Engine"}
	})
	RegisterCommand("installstarchase", function(source, args)
		local boneName = args[1]
		if boneName == nil then
			boneName = "engine"
		end
		loadModel(props.starChaseClosed)
        local starchaseProp = CreateObject(props.starChaseClosed, coords, false, false, false)
        while not DoesEntityExist(starchaseProp) do Wait(0) end
        local targetVehicle = raycast()

        SetModelAsNoLongerNeeded(props.starChaseClosed)
        local offSet = {0.0, 0.0, 0.0}
        local rotation = {0.0, 0.0, 0.0}
		local offSetComplete = false
        local rotationComplete = false
        local bone = GetEntityBoneIndexByName(targetVehicle, boneName)
        SetEntityAlpha(targetVehicle, 200, true)
		while not offSetComplete do
            if targetVehicle ~= nil and targetVehicle ~= 0 then
                DetachEntity(starchaseProp, 1, false)
                AttachEntityToEntity(starchaseProp, targetVehicle, bone, offSet[1], offSet[2], offSet[3], rotation[1], rotation[2], rotation[3], true, false, true, false, 1, true)
                if not IsControlReleased(0, 207) then --page down
                    offSet = {offSet[1], offSet[2], offSet[3] - 0.01}
                end

                if not IsControlReleased(0, 208) then --page up
                    offSet = {offSet[1], offSet[2], offSet[3] + 0.01}
                end

                if not IsControlReleased(0, 173) then --arrow down
                    offSet = {offSet[1], offSet[2] - 0.01, offSet[3]}
                end

                if not IsControlReleased(0, 172) then --arrow up
                    offSet = {offSet[1], offSet[2] + 0.01, offSet[3]}
                end

                if not IsControlReleased(0, 174) then --arrow left
                    offSet = {offSet[1] - 0.01, offSet[2], offSet[3]}
                end

                if not IsControlReleased(0, 175) then --arrow right
                    offSet = {offSet[1] + 0.01, offSet[2], offSet[3]}
                end

                if IsControlJustPressed(0, 191) then -- enter - finish
                    offSetComplete = true
                end
            end

			Wait(0)
		end

        while not rotationComplete do
            Wait(0)
            DetachEntity(starchaseProp, 1, false)
            AttachEntityToEntity(starchaseProp, targetVehicle, bone, offSet[1], offSet[2], offSet[3], rotation[1], rotation[2], rotation[3], true, false, true, false, 1, true)
            if not IsControlReleased(0, 207) then --page down
                rotation = {rotation[1], rotation[2], rotation[3] - 0.1}
            end

            if not IsControlReleased(0, 208) then --page up
                rotation = {rotation[1], rotation[2], rotation[3] + 0.1}
            end

            if not IsControlReleased(0, 173) then --arrow down
                rotation = {rotation[1], rotation[2] - 0.1, rotation[3]}
            end

            if not IsControlReleased(0, 172) then --arrow up
                rotation = {rotation[1], rotation[2] + 0.1, rotation[3]}
            end

            if not IsControlReleased(0, 174) then --arrow left
                rotation = {rotation[1] - 0.1, rotation[2], rotation[3]}
            end

            if not IsControlReleased(0, 175) then --arrow right
                rotation = {rotation[1] + 0.1, rotation[2], rotation[3]}
            end


            if IsControlJustPressed(0, 191) then -- enter - finish
                rotationComplete = true
            end
        end
        SetEntityAlpha(targetVehicle, 255, true)

        showNotification("~b~Coords~w~: {"..offSet[1]..", "..offSet[2]..", "..offSet[3].."}")
        showNotification("~b~Rotation~w~: {"..rotation[1]..", ".. rotation[2]..", " .. rotation[3].."}")
        DeleteEntity(starchaseProp)
	end, false)
end