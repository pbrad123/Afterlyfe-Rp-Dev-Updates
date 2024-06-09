Draw3DText = function(x, y, z, text)
	local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())

	if onScreen then
		SetTextScale(0.35, 0.35)
		SetTextFont(8)
		SetTextProportional(1)
		SetTextColour(255, 255, 255, 215)
		SetTextDropShadow(0, 0, 0, 55)
		SetTextEdge(0, 0, 0, 150)
		SetTextDropShadow()
		SetTextOutline()
		SetTextEntry("STRING")
		SetTextCentre(1)
		AddTextComponentString(text)
		DrawText(_x,_y)
	end
end

Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
	    local pedCoords = GetEntityCoords(ped)
        local sleep = 1000
        inDistance = false
                    
        if Config.NeedJob then
            local Player = QBCore.Functions.GetPlayerData()
            local jobName = Player.job.name
            if jobName == Config.JobName then
                if Vdist(pedCoords.x, pedCoords.y, pedCoords.z, Markers.Coords.AccessMenu.x, Markers.Coords.AccessMenu.y, Markers.Coords.AccessMenu.z) < 10.0 and (not inMenu) then
                    Draw3DText(Markers.Coords.AccessMenu.x, Markers.Coords.AccessMenu.y, Markers.Coords.AccessMenu.z, Translation.AccessMenu)
                    sleep = 5
                    DrawMarker(Markers.Types.AccessMenu, Markers.Coords.AccessMenu.x, Markers.Coords.AccessMenu.y, Markers.Coords.AccessMenu.z - 1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, Markers.Colors.AccessMenu.r, Markers.Colors.AccessMenu.g, Markers.Colors.AccessMenu.b, 100, false, true, 2, nil, nil, false)
                    if Vdist(pedCoords.x, pedCoords.y, pedCoords.z, Markers.Coords.AccessMenu.x, Markers.Coords.AccessMenu.y, Markers.Coords.AccessMenu.z) < 1.0 then
                        inDistance = true
                    end
                    if not shown and inDistance then
                        showUI(true, true)
                        shown = true
                    elseif shown and not inDistance then
                        showUI(false)
                        shown = false
                    end
                end
            end
        else
            if Vdist(pedCoords.x, pedCoords.y, pedCoords.z, Markers.Coords.AccessMenu.x, Markers.Coords.AccessMenu.y, Markers.Coords.AccessMenu.z) < 10.0 and (not inMenu) then
                Draw3DText(Markers.Coords.AccessMenu.x, Markers.Coords.AccessMenu.y, Markers.Coords.AccessMenu.z, Translation.AccessMenu)
                sleep = 5
                DrawMarker(Markers.Types.AccessMenu, Markers.Coords.AccessMenu.x, Markers.Coords.AccessMenu.y, Markers.Coords.AccessMenu.z - 1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, Markers.Colors.AccessMenu.r, Markers.Colors.AccessMenu.g, Markers.Colors.AccessMenu.b, 100, false, true, 2, nil, nil, false)
                if Vdist(pedCoords.x, pedCoords.y, pedCoords.z, Markers.Coords.AccessMenu.x, Markers.Coords.AccessMenu.y, Markers.Coords.AccessMenu.z) < 1.0 then
                    inDistance = true
                end
                if not shown and inDistance then
                    showUI(true, true)
                    shown = true
                elseif shown and not inDistance then
                    showUI(false)
                    shown = false
                end
            end
        end

        Citizen.Wait(sleep)
    end
end)