local QB = exports[Config.core]:GetCoreObject()
-----------------
----- Items -----
-----------------

QB.Functions.CreateUseableItem("citation", function(source, item)
    local src = source
    info = item.metadata
    if not item.metadata.citationid then
        info = CreateNewCitationInfo()
        Player = QB.Functions.GetPlayer(src)
        Player.Functions.RemoveItem("citation", 1, item.slot)
        Player.Functions.AddItem("citation", 1, item.slot, info)
    end
    data = {}
    data.citations = info
    args = {}
    table.insert(args, "notepad")
    TriggerClientEvent("animations:client:PlayEmote", src, args)
    TCE("opencitation", src, data)
end)

QB.Functions.CreateUseableItem("citation_roll", function(source, item)
    src = source

    Player = QB.Functions.GetPlayer(src)

    TCE("useroll", src, item)
end)

--------------------
----- Commands -----
--------------------

if Config.PoliceMenuCommand ~= "" then
    QB.Commands.Add(Config.PoliceMenuCommand, "Open Citation Control Panel", {}, false, function(source)
        src = source
        info = {}
        TCE("opencontrolpanel", src, info)
    end)
end

QB.Commands.Add("convertdatabase", "Converts your database to the updated version", {}, false, function(source)
    src = source
    exports['oxmysql']:execute("SELECT * FROM `citations` WHERE `id` > @id", {
        ['@id'] = 0 -- % wildcard, needed to search for all alike results
    }, function(results)
        for i = 1, #results, 1 do
            c = {}
            c = results[i]
            exports.oxmysql:execute('INSERT INTO `rd_citations` (`citationid`, `offender_firstname`, `offender_surname`, `officer_name`, `street`, `postal`, `comments`, `badge`, `plate`, `make`, `color`, `type`, `agency`, `code_1`, `code_2`, `code_3`, `date`, `active`, `society`) VALUES (@citationid, @offender_firstname, @offender_surname, @officer_name, @street, @postal, @comments, @badge, @plate, @make, @color, @type, @agency, @code_1, @code_2, @code_3, @date, @active, @society)', {
                ['@citationid'] = c.citationid,
                ['@offender_firstname'] = c.offender_firstname,
                ['@offender_surname'] = c.offender_surname,
                ['@officer_name'] = c.officer_firstname.." "..c.officer_surname,
                ['@street'] = c.street,
                ['@postal'] = c.postal,
                ['@comments'] = c.comments,
                ['@badge'] = c.badge,
                ['@plate'] = c.plate,
                ['@make'] = c.make,
                ['@color'] = c.color,
                ['@type'] = c.type,
                ['@agency'] = c.agency,
                ['@code_1'] = c.code_1,
                ['@code_2'] = c.code_2,
                ['@code_3'] = c.code_3,
                ['@date'] = c.date,
                ['@active'] = c.active,
                ['@society'] = c.society,
            })
            exports.oxmysql:execute('DROP TABLE `citations`')
        end
    end)
end, "admin")

-------------------
----- Threads -----
-------------------

---------------------
----- Functions -----
---------------------

function TCE(name, ...)
    TriggerClientEvent(ecp..name, ...)
end

function TSE(name, ...)
    TriggerEvent(esp..name, ...)
end

function RNE(name, f)
    RegisterNetEvent(esp..name, f)
end

function CC(name, ...)
    QB.Functions.CreateCallback(qbcb..name, ...)
end

function GetFineTitleByCode(code)
    for i = 1, #Config.PenalCodes, 1 do
        if Config.PenalCodes[i].code == code then
            return Config.PenalCodes[i].label
        end
    end
    return ""
end

function GetPenalCodeFine(code)
    print(#Config.PenalCodes)
    for i = 1, #Config.PenalCodes, 1 do
        p = Config.PenalCodes[i]
        print(p.code.." =? "..code.." --> "..p.fine)
        if p.code == code then
            return p.fine
        end
    end
    return 0
end

function GetPlayerByCitizenid(citizenid)
    player = QB.Functions.GetPlayerByCitizenId(citizenid)
    if not player then
        gettingData = true
        p = nil
        exports.oxmysql:query("SELECT * FROM players WHERE citizenid = @cid",
        {["@cid"] = citizenid},
            function(result)
                if result[1] then
                    p = result[1]
                    p.charinfo = json.decode(result[1].charinfo)
                    p.job = json.decode(result[1].job)
                    p.metadata = json.decode(result[1].metadata)
                    p.mugshot = result[1].mugshot
                    gettingData = false
                end
            end)
        while gettingData do
            Wait(10)
        end
        return p
    else
        return player.PlayerData
    end
end

function CreateNewCitationInfo()
    info = {}
    info.citationid = tostring(QB.Shared.RandomInt(2) .. QB.Shared.RandomStr(3) .. QB.Shared.RandomInt(1) .. QB.Shared.RandomStr(2) .. QB.Shared.RandomInt(3) .. QB.Shared.RandomStr(4))
    info.lastname = ""
    info.firstname = ""
    info.date = ""
    info.postal = ""
    info.street = ""
    info.plate = ""
    info.make = ""
    info.color = ""
    info.type = ""
    info.officerName = ""
    info.badge = ""
    info.agency = ""
    info.code1 = ""
    info.code2 = ""
    info.code3 = ""
    info.officerSign = ""
    info.susSign = ""
    info.comments = ""
    return info
end

function ScanCitation(info)

end

function GetPersonPendingCitations(citizenid)
    PlayerData = GetPlayerByCitizenid(citizenid)
    ci = PlayerData.charinfo
    rfn = ci.firstname
    rln = ci.lastname
    citations = {}
    gotData = false
    exports['oxmysql']:execute("SELECT * FROM `rd_citations` WHERE `id` > @id", {
        ['@id'] = 0 -- % wildcard, needed to search for all alike results
    }, function(results)
        for i = 1, #results, 1 do
            if results[i].active == 1 then
                r = results[i]
                r.title_1 = GetFineTitleByCode(r.code_1)
                r.title_2 = GetFineTitleByCode(r.code_2)
                r.title_3 = GetFineTitleByCode(r.code_3)
                print(r.code_1.."; "..GetPenalCodeFine(r.code_1))
                r.amount = GetPenalCodeFine(r.code_1) + GetPenalCodeFine(r.code_2) + GetPenalCodeFine(r.code_3)
                if r.offender_firstname:lower() == rfn:lower() then
                    table.insert(citations, r)
                end
            end
        end
        gotData = true
    end)
    while not gotData do
        Wait(10)
    end
    return citations
end

function GetSlotsByItem(items, itemName)
    local slotsFound = {}
    if not items then return slotsFound end
    for slot, item in pairs(items) do
        if item.name:lower() == itemName:lower() then
            slotsFound[#slotsFound+1] = slot
        end
    end
    return slotsFound
end

function GetItemBySlot(source, slot)
	local Player = QB.Functions.GetPlayer(source)
	slot = tonumber(slot)
	return Player.PlayerData.items[slot]
end

---------------------
----- Callbacks -----
---------------------

CC("getpersonsbyname", function(source, cb, name, nameType)
    if name == "" then cb({}) end
    exports['oxmysql']:execute("SELECT * FROM `players` WHERE `id` > @id", {
        ['@id'] = 0 -- % wildcard, needed to search for all alike results
    }, function(results)
        persons = {}
        for i = 1, #results, 1 do
            ci = json.decode(results[i].charinfo)
            lfn = ci.firstname
            fn = string.upper(string.sub(lfn, 1, 1))..string.sub(lfn, 2, #lfn)
            lln = ci.lastname
            ln = string.upper(string.sub(lln, 1, 1))..string.sub(lln, 2, #lln)
            fName = fn.." "..ln
            if (string.match(string.lower(fName), string.lower(name)) and (not nameType and nameType == "both")) or (string.match(string.lower(lfn), string.lower(name)) and nameType == "first") or (string.match(string.lower(lln), string.lower(name)) and nameType == "last") then
                person = {}
                person.citizenid = results[i].citizenid
                person.name = fName
                person.firstname = fn
                person.lastname = ln
                table.insert(persons, person)
            end
        end
        cb(persons)
    end)
end)

CC("getcitationinfo", function(source, cb, citationid)
    exports['oxmysql']:execute("SELECT * FROM `rd_citations` WHERE `citationid` = @citationid", {
        ['@citationid'] = citationid -- % wildcard, needed to search for all alike results
    }, function(results)
        if results[1] then
            r = results[1]
            info = {}
            info.citationid = citationid
            info.lastname = r.offender_surname
            info.firstname = r.offender_firstname
            info.date = r.date
            info.postal = r.postal
            info.street = r.street
            info.plate = r.plate
            info.make = r.make
            info.color = r.color
            info.type = r.type
            info.officerName = r.officer_name
            info.badge = r.badge
            info.agency = r.agency
            info.code1 = r.code_1
            info.code2 = r.code_2
            info.code3 = r.code_3
            ofn = ""
            oln = ""
            foundFN = false
            for i = 1, #info.officerName, 1 do
                if string.sub(info.officerName, i, i) == " " then
                    foundFN = true
                else
                    if foundFN then
                        oln = oln..string.sub(info.officerName, i, i)
                    else
                        ofn = ofn..string.sub(info.officerName, i, i)
                    end
                end
            end
            info.officerSign = string.upper(string.sub(ofn, 1, 1))..string.upper(string.sub(oln, 1, 1))..string.sub(oln, 2, #oln)
            info.susSign = string.upper(string.sub(r.offender_firstname, 1, 1))..string.upper(string.sub(r.offender_surname, 1, 1))..string.sub(r.offender_surname, 2, #r.offender_surname)
            info.comments = r.comments
            info.active = r.active
            cb(info)
        end
    end)
end)

CC("getcitationsbysearch", function(source, cb, search)
    citations = {}
    exports['oxmysql']:execute("SELECT * FROM `rd_citations` WHERE `id` > @id", {
        ['@id'] = 0 -- % wildcard, needed to search for all alike results
    }, function(results)
        for i = 1, #results, 1 do
            r = results[i]
            isMatch = false
            if string.match(r.offender_firstname:lower(), search:lower()) then
                isMatch = true
            elseif string.match(r.offender_surname:lower(), search:lower()) then
                isMatch = true
            elseif string.match(r.citationid:lower(), search:lower()) then
                isMatch = true
            elseif string.match(r.officer_name:lower(), search:lower()) then
                isMatch = true
            elseif string.match(r.plate:lower(), search:lower()) then
                isMatch = true
            end
            if isMatch then
                r.title_1 = GetFineTitleByCode(r.code_1)
                r.title_2 = GetFineTitleByCode(r.code_2)
                r.title_3 = GetFineTitleByCode(r.code_3)
                r.amount = GetPenalCodeFine(r.code_1) + GetPenalCodeFine(r.code_2) + GetPenalCodeFine(r.code_3)
                table.insert(citations, r)
            end
        end
        cb(citations)
    end)
end)

------------------
----- Events -----
------------------

RNE("print", function(msg)
    print(msg)
end)

RNE("openpaylocation", function()
    src = source
    info = {}
    info.citations = GetPersonPendingCitations(QB.Functions.GetPlayer(src).PlayerData.citizenid)
    TCE("openpaymenu", src, info)
end)

RNE("updatecitationinfo", function(info)
    src = source
    Player = QB.Functions.GetPlayer(src)
    slots = GetSlotsByItem(Player.PlayerData.items, "citation")
    for i = 1, #slots, 1 do
        item = GetItemBySlot(src, slots[i])
        if item.metadata.citationid == info.citationid then
            Player.Functions.RemoveItem("citation", 1, item.slot)
            Player.Functions.AddItem("citation", 1, item.slot, info)
        end
    end
end)

RNE("scancitation", function(i)
    src = source
    exports.oxmysql:execute('INSERT INTO `rd_citations` (`citationid`, `offender_firstname`, `offender_surname`, `officer_name`, `street`, `postal`, `comments`, `badge`, `plate`, `make`, `color`, `type`, `agency`, `code_1`, `code_2`, `code_3`, `date`, `active`, `society`) VALUES (@citationid, @offender_firstname, @offender_surname, @officer_name, @street, @postal, @comments, @badge, @plate, @make, @color, @type, @agency, @code_1, @code_2, @code_3, @date, @active, @society)', {
        ['@citationid'] = i.citationid,
        ['@offender_firstname'] = i.firstname,
        ['@offender_surname'] = i.lastname,
        ['@officer_name'] = i.officerName,
        ['@street'] = i.street,
        ['@postal'] = i.postal,
        ['@comments'] = i.comments,
        ['@badge'] = i.badge,
        ['@plate'] = i.plate,
        ['@make'] = i.make,
        ['@color'] = i.color,
        ['@type'] = i.type,
        ['@agency'] = i.agency,
        ['@code_1'] = i.code1,
        ['@code_2'] = i.code2,
        ['@code_3'] = i.code3,
        ['@date'] = i.date,
        ['@active'] = 1,
        ['@society'] = QB.Functions.GetPlayer(src).PlayerData.job.name,
    })
end)

RNE("printcitation",function(citationid)
    src = source
    exports['oxmysql']:execute("SELECT * FROM `rd_citations` WHERE `citationid` = @citationid", {
        ['@citationid'] = citationid -- % wildcard, needed to search for all alike results
    }, function(results)
        if results[1] then
            r = results[1]
            info = {}
            info.citationid = citationid
            info.lastname = r.offender_surname
            info.firstname = r.offender_firstname
            info.date = r.date
            info.postal = r.postal
            info.street = r.street
            info.plate = r.plate
            info.make = r.make
            info.color = r.color
            info.type = r.type
            info.officerName = r.officer_name
            info.badge = r.badge
            info.agency = r.agency
            info.code1 = r.code_1
            info.code2 = r.code_2
            info.code3 = r.code_3
            ofn = ""
            oln = ""
            foundFN = false
            for i = 1, #info.officerName, 1 do
                if string.sub(info.officerName, i, i) == " " then
                    foundFN = true
                else
                    if foundFN then
                        oln = oln..string.sub(info.officerName, i, i)
                    else
                        ofn = ofn..string.sub(info.officerName, i, i)
                    end
                end
            end
            info.officerSign = string.upper(string.sub(ofn, 1, 1))..string.upper(string.sub(oln, 1, 1))..string.sub(oln, 2, #oln)
            info.susSign = string.upper(string.sub(r.offender_firstname, 1, 1))..string.upper(string.sub(r.offender_surname, 1, 1))..string.sub(r.offender_surname, 2, #r.offender_surname)
            info.comments = r.comments
            QB.Functions.GetPlayer(src).Functions.AddItem("citation", 1, nil, info)
        end
    end)
end)

RNE("paycitation", function(citationid, paymethod)
    src = source
    exports['oxmysql']:execute("SELECT * FROM `rd_citations` WHERE `citationid` = @citationid", {
        ['@citationid'] = citationid -- % wildcard, needed to search for all alike results 1A1B
    }, function(result)
        if result[1] then
            totalPrice = GetPenalCodeFine(result[1].code_1) + GetPenalCodeFine(result[1].code_2) + GetPenalCodeFine(result[1].code_3)
            Player = QB.Functions.GetPlayer(src)
            if Player.PlayerData.money[paymethod] >= totalPrice then
                Player.Functions.RemoveMoney(paymethod, totalPrice, "Payed Citation")
                exports.oxmysql:execute('UPDATE rd_citations SET active = ? WHERE citationid = ?',
                {0, citationid})
                AddMoney(result[1].society, totalPrice)
                TCE("notify", "Payed citation", "success")
                info = {}
                info.citations = GetPersonPendingCitations(QB.Functions.GetPlayer(src).PlayerData.citizenid)
                TCE("openpaymenu", src, info)
            else
                TCE("notify", "Need more money to pay", "error")
            end
        end
    end)
end)

RNE("rollcut", function(item)
    src = source

    Player = QB.Functions.GetPlayer(src)

    if item.metadata.amount then
        if item.metadata.amount > 0 then
            info = {}
            info.amount = item.metadata.amount - 1
            Player.Functions.RemoveItem("citation_roll", 1, item.slot)
            Player.Functions.AddItem("citation_roll", 1, item.slot, info)
            Player.Functions.AddItem("citation", 1, nil, {})
            if info.amount <= 0 then
                Player.Functions.RemoveItem("", 1, item.slot)
            end
        end
    else
        info = {}
        info.amount = Config.CitationsPerRoll - 1
        Player.Functions.RemoveItem("citation_roll", 1, item.slot)
        Player.Functions.AddItem("citation_roll", 1, item.slot, info)
        Player.Functions.AddItem("citation", 1, nil, {})
    end
end)