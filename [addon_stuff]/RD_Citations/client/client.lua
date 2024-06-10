local QB = exports[Config.core]:GetCoreObject()
display = false

-------------------
----- Threads -----
-------------------

CreateThread(function()
    Wait(500)
    Sendmsg("resourcename", GetCurrentResourceName())
end)

CreateThread(function()
    Wait(1000)
    if Config.UseQBTarget then
        for i = 1, #Config.TargetLocation, 1 do
            t = Config.TargetLocation[i]
            exports['qb-target']:AddBoxZone("RD_Citation_Paying_Menu:Index"..tostring(i), t.coords, t.width, t.length, {
                name = "RD_Citation_Paying_Menu:Index"..tostring(i),
                heading = t.heading,
                debugPoly = false,
                minZ = t.minZ,
                maxZ = t.maxZ,
            }, {
                options = {
                    {
                        type = "server",
                        event = esp.."openpaylocation",
                        icon = t.icon,
                        label = t.label,
                    },
                },
                distance = 2.5
            })
        end
    else
        while true do
            local sleep = 2000
            local pos = GetEntityCoords(PlayerPedId())
            for k, v in pairs(Config.PayLocations) do
                if #(pos - v) < 2 then
                    sleep = 5
                    if #(pos - v) < 1.0 then
                        DrawText3D(v.x, v.y, v.z, "~g~E~w~ - Citations")
                        if IsControlJustReleased(0, 38) then
                            TSE("openpaylocation")
                        end
                    elseif #(pos - v) < 1.5 then
                        DrawText3D(v.x, v.y, v.z, "Citations")
                    end
                end
            end
            Wait(sleep)
        end
    end
end)

CreateThread(function()
    if Config.ChargesCallback ~= "" then
        QB.Functions.TriggerCallback(Config.ChargesCallback, function(penalcodes)
            Config.PenalCodes = penalcodes
        end)
    end
end)

---------------------
----- Functions -----
---------------------

function TSE(name, ...)
    TriggerServerEvent(esp..name, ...)
end

function TCE(name, ...)
    TriggerEvent(ecp..name, ...)
end

function RNE(name, f)
    RegisterNetEvent(ecp..name, f)
end

function RNC(name, f)
    RegisterNUICallback(name, f)
end

function TC(name, ...)
    QB.Functions.TriggerCallback(qbcb..name, ...)
end

function SetDisplay(bool, pageType, item)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = pageType,
        status = bool,
        info = item,
    })
end

function Sendmsg(pageType, item)
    SendNUIMessage({
        type = pageType,
        info = item,
    })
end

function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

function GetClosestPostal(coords)
    v2 = vec2(coords.x, coords.y)
    closestPIndex = 1
    for i = 2, #Config.Postals, 1 do
        p = Config.Postals[i]
        pv2 = vec2(p.x, p.y)
        cp = Config.Postals[closestPIndex]
        cpv2 = vec2(cp.x, cp.y)
        if #(v2 - pv2) < #(v2 - cpv2) then
            closestPIndex = i
        end
    end
    return closestPIndex
end

function GetVehicleInFront()
    vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
    if vehicle == 0 then vehicle = PlayerPedId() end
    coordA = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, 1.0, 1.0)
    coordB = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, 50.0, 0.0)
    frontcar = StartShapeTestCapsule(coordA, coordB, 1.0, 2, vehicle, 7)
    a, b, c, d, e = GetShapeTestResult(frontcar)
    if b and GetEntityType(e) == 2 then
        return e, c
    else
        return -1
    end
end

function GetVehicleShared(model)
    vehicles = QB.Shared.Vehicles
    for i, v in pairs(vehicles) do
        if GetHashKey(i) == model then
            return v
        end
    end
    return nil
end

function GetViolationsBySearch(search, searchType)
    if search == "" then return {} end
    penalCodes = {}
    if searchType == "code" then
        for i = 1, #Config.PenalCodes, 1 do
            if Config.PenalCodes[i].code == search then
                info = {}
                info.name = Config.PenalCodes[i].code.." - "..Config.PenalCodes[i].label
                info.code = Config.PenalCodes[i].code
                info.title = Config.PenalCodes[i].label
                return info
            elseif string.match(RemoveParm(Config.PenalCodes[i].code), RemoveParm(search)) then
                info = {}
                info.name = Config.PenalCodes[i].code.." - "..Config.PenalCodes[i].label
                info.code = Config.PenalCodes[i].code
                info.title = Config.PenalCodes[i].label
                table.insert(penalCodes, info)
                if #penalCodes >= 25 then
                    return penalCodes
                end
            end
        end
    else
        for i = 1, #Config.PenalCodes, 1 do
            if Config.PenalCodes[i].label == search then
                info = {}
                info.name = Config.PenalCodes[i].code.." - "..Config.PenalCodes[i].label
                info.code = Config.PenalCodes[i].code
                info.title = Config.PenalCodes[i].label
                return info
            elseif string.match(RemoveParm(Config.PenalCodes[i].label), RemoveParm(search)) then
                info = {}
                info.name = Config.PenalCodes[i].code.." - "..Config.PenalCodes[i].label
                info.code = Config.PenalCodes[i].code
                info.title = Config.PenalCodes[i].label
                table.insert(penalCodes, info)
                if #penalCodes >= 25 then
                    return penalCodes
                end
            end
        end
    end
    return penalCodes
end

function RemoveParm(text)
    nText = ""
    for i = 1, #text, 1 do
        char = string.sub(text, i, i)
        if char ~= "(" and char ~= ")" then
            nText = nText..char
        end
    end
    return nText
end

function GetPenalCodeFine(code)
    for i = 1, #Config.PenalCodes, 1 do
        p = Config.PenalCodes[i]
        if p.code == code then
            return p.fine
        end
    end
    return 0
end

function GetViolationTitleByCode(code)
    for i = 1, #Config.PenalCodes, 1 do
        if Config.PenalCodes[i].code == code then
            return Config.PenalCodes[i].label
        end
    end
    return ""
end

function IsPoliceJob(job)
    for i = 1, #Config.PoliceJobs, 1 do
        if Config.PoliceJobs[i] == job then
            return true
        end
    end
    return false
end

-------------------------
----- NUI Callbacks -----
-------------------------

RNC("exit", function(data)
    SetDisplay(false, "exit", nil)
    args = {}
    table.insert(args, "c")
    TriggerEvent("animations:client:PlayEmote", args)
    TSE("updatecitationinfo", data)
end)

RNC("print", function(data)
    TSE("print", data.text)
end)

RNC("getpersons", function(data, cb)
    TC("getpersonsbyname", function(persons)
        cb(persons)
    end, data.name, data.nameType or nil)
end)

RNC("getclosestpostal", function(data, cb)
    coords = GetEntityCoords(PlayerPedId())
    index = GetClosestPostal(coords)
    cb(Config.Postals[index].code)
end)

RNC("getcloseststreet", function(data, cb)
    coords = GetEntityCoords(PlayerPedId())
    streetHash = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
    streetName = GetStreetNameFromHashKey(streetHash)
    cb(streetName)
end)

RNC("getvehicleinfront", function(data, cb)
    vehicle = GetVehicleInFront()
    vehModel = GetEntityModel(vehicle)
    vehS = GetVehicleShared(vehModel)
    info = {}
    if vehS then
        info.make = vehS.brand
        info.type = vehS.category
        prim, sec = GetVehicleColours(vehicle)
        info.color = Config.VehcileColours[tostring(prim)]
        info.plate = GetVehicleNumberPlateText(vehicle)
    else
        info.make = ""
        info.type = ""
        info.color = ""
        info.plate = ""
    end
    cb(info)
end)

RNC("getofficerinfo", function(data, cb)
    PlayerData = QB.Functions.GetPlayerData()
    info = {}
    ci = PlayerData.charinfo
    rfn = ci.firstname
    fn = string.upper(string.sub(rfn, 1, 1))..string.sub(rfn, 2, #rfn)
    rln = ci.lastname
    ln = string.upper(string.sub(rln, 1, 1))..string.sub(rln, 2, #rln)
    info.name = fn.." "..ln
    info.badge = PlayerData.metadata["callsign"]
    info.agency = GetOfficerAgency(PlayerData)
    cb(info)
end)

RNC("getviolations", function(data, cb)
    penalCodes = GetViolationsBySearch(data.search, data.searchType)
    cb(penalCodes)
end)

RNC("getcitationamount", function(data, cb)
    amount = GetPenalCodeFine(data.code1) + GetPenalCodeFine(data.code2) + GetPenalCodeFine(data.code3)
    cb(amount)
end)

RNC("getsignuture", function(data, cb)
    PlayerData = QB.Functions.GetPlayerData()
    ci = PlayerData.charinfo
    rfn = ci.firstname
    fn = string.upper(string.sub(rfn, 1, 1))
    rln = ci.lastname
    ln = string.upper(string.sub(rln, 1, 1))..string.sub(rln, 2, #rln)
    sign = fn..ln
    cb(sign)
end)

RNC("getviolationtitles", function(data, cb)
    titles = {}
    title1 = GetViolationTitleByCode(data.code1)
    title2 = GetViolationTitleByCode(data.code2)
    title2 = GetViolationTitleByCode(data.code2)
    table.insert(titles, title1)
    table.insert(titles, title2)
    table.insert(titles, title3)
    cb(titles)
end)

RNC("getcitationinfo", function(data, cb)
    TC("getcitationinfo", function(info)
        cb(info)
    end, data.citationid)
end)

RNC("scancitation", function(data)
    TSE("scancitation", data)
    TSE("updatecitationinfo", data)
    QB.Functions.Notify("Scanned Citation", "success")
    SetDisplay(false, "exit", nil)
end)

RNC("printcitation", function(data)
    TSE("printcitation", data.citationid)
    QB.Functions.Notify("Printed Citation", "success")
    SetDisplay(false, "exit", nil)
end)

RNC("paycitation", function(data)
    TSE("paycitation", data.citationid, data.paymethod)
end)

RNC("getcitationsbysearch", function(data, cb)
    TC("getcitationsbysearch", function(citations)
        cb(citations)
    end, data.search)
end)

------------------
----- Events -----
------------------

RNE("opencitation", function(info)
    info.isCopInCar = false
    if IsPoliceJob(QB.Functions.GetPlayerData().job.name) then
        if GetVehiclePedIsIn(PlayerPedId(), false) ~= 0 then
            info.isCopInCar = true
        end
    end
    SetDisplay(true, "citation", info)
end)

RNE("openpaymenu", function(info)
    if #info.citations <= 0 then
        QB.Functions.Notify("No Citations Registered", "success")
        SetDisplay(false, "exit", nil)
    else
        SetDisplay(true, "paymenu", info)
    end
end)

RNE("notify", function(msg, ntype)
    QB.Functions.Notify(msg, ntype)
end)

RNE("opencontrolpanel", function()
    SetDisplay(true, "controlpanel", nil)
end)

RNE("useroll", function(item)
    ped = PlayerPedId()
    QB.Functions.Progressbar("use_citation_roll", "Tearing new sheet..", 4000, false, true, {
		disableMovement = true,
		disableCarMovement = true,
		disableMouse = false,
		disableCombat = true,
	}, {
		animDict = "mp_arresting",
		anim = "a_uncuff",
		flags = 16,
	}, {}, {}, function() -- Done
		StopAnimTask(ped, "mini@repair", "fixing_a_player", 0.0)
        TSE("rollcut", item)
        TriggerEvent('inventory:client:ItemBox', QB.Shared.Items["citation"], 'add')
	end, function() -- Cancel
		StopAnimTask(ped, "mini@repair", "fixing_a_player", 1.0)
        QB.Functions.Notify("Failed", "error")
    end)
end)