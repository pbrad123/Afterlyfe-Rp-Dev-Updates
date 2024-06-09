--[[

    To give access to admins for ambient peds creator you should add this in your server.cfg:  add_ace group.admin casino_peds allow

    To get support join https://discord.gg/MKWSGPcryY

]]


DS_Casino_System_Main_Config = {

    MapBlip = { --MAP BLIP CONFIG
        enable = true,
        coords = vec3(922.110, 47.567, 81.103),
        id = 617,
        color = 26,
        size = 0.8,
        name = "Diamond Casino & Resort"
    },

    MapType = 'AUTODETECT', --AUTODETECT / 0 = IPL / 1 = UNCLEJUST / 2 = K4MB1 / 3 = GABZ / 4 = CUSTOM MAP (CHECK config_custom_map) / 5 = forum.cfx.re/t/the-diamond-casino-enterable-mlo / 6 = PATOCHE UNDERGROUND

    MapNames = { --RESOURCE NAME : MAP NUMBER (DON'T EDIT THE NUMBER)
        ["patoche_casino"] = 6,
        ["k4mb1-casino"] = 2,
        ["uj_casino"] = 1,
        ["cfx-gabz-casino"] = 3,
        ["casinointerior"] = 5,
    },

    Target = false, --false or 'qtarget' / 'ox_target' / 'qb-target'
    
    EnableInsideBlips = true, --ENABLE SOME INSIDE CASINO MAP BLIPS? (LIKE CASHIER, BLACKJACK, INSIDETRACK ETC POSITIONS)

    EnableChipsHud = true, --ENABLE GTA:O CHIPS HUD?

    AmbientSounds = true, --ENABLE CASINO SOUNDS IN BACKGROUND?

    SafeZone = true, --WILL DISABLE ALL COMBAT CONTROLS AND JUMP (KEYS CONFIGURABLE BELOW IN SafeZoneKeys FUNCTION)

    MenuType = "DEFAULT", --DEFAULT = RageUI // MENU = esx_menu_default // OX = ox_lib (check also fxmanifest)

    ChipsItemName = "casino_chips", --IF YOU CHANGE YOU NEED TO INSERT THE NEW ITEM IN YOUR DATABASE/INVENTORY

    ChipsPrice = 1, --CHIPS BUY PRICE

    ChipsSellPrice = 1, --CHIPS SELL PRICE

    TextUIMode = 'DARK', --DARK OR LIGHT

    DailyBonus = {
        enable = true,
        amount = 1000
    },

    AnimatedCasino = { --ANIMATED WALLS CASINO CONFIG
        enable = true, --ANIMATE CASINO WALLS?
        type = "CASINO_DIA_PL" --YOU CAN CHOOSE BETWEEN: CASINO_DIA_PL (DIAMONDS) || CASINO_HLW_PL (SKULLS) || CASINO_SNWFLK_PL (SNOWFLAKES)
    },

    EnableSociety = true, --ENABLING THAT CASINO WILL RECEIVE ALL THE BETS MONEY IN SOCIETY (THIS IS NOT USING ESX_SOCIETY OR ESX_ADDONACCOUNT)

    EnableCams = true, --REQUIRES EnableSociety = true

    JobName = "casino", --NEEDED JOB NAME (INCLUDED IN INSTALL_ME FOLDER FILES)

    CashierRestricted = false, --ONLY JOB CAN OPEN CASHIER MENU?
}

DS_Casino_System_Main_Config.GiveKeys = function(plate)
    --EXAMPLE: TriggerEvent('vehiclekeys:givekeys', plate)
end

DS_Casino_System_Main_Config.HelpText = function(msg) --ONLY FOR CCTV ACTUALLY
	AddTextEntry("helptext", msg)
	DisplayHelpTextThisFrame("helptext", false)
end

DS_Casino_System_Main_Config.Draw3DText = function(x, y, z, text)
    SetTextScale(0.325, 0.325)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 68)
    ClearDrawOrigin()
end

DS_Casino_System_Main_Config.Notification = function(msg)
    BeginTextCommandThefeedPost('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandThefeedPostTicker(0, 1)
end

DS_Casino_System_Main_Config.SafeZoneKeys = function()
    DisablePlayerFiring(PlayerId(), true)
    DisableControlAction(0, 22, true)
    DisableControlAction(0, 140, true) 
    DisableControlAction(0, 141, true) 
    DisableControlAction(0, 142, true)
end

DS_Casino_System_Main_Config.IsDead = function(ped)
    return IsEntityDead(ped)
end