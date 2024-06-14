Config = {}

Config.NewQBVersion = true

if Config.NewQBVersion then
     QBCore = exports['qb-core']:GetCoreObject()
else
     TriggerEvent("QBCore:GetObject", function(obj) QBCore = obj end)
end

Config.RoadPad = false --Set to true if you use RoadPad / Sync with RoadPad!
Config.RoadCarPlay = false--Set to true if you use RoadCarPlay / Sync with RoadCarPlay!	
Config.SimCardDLC = false --Set to true if you use RoadPhone SimCard DLC

Config.PhoneCommand = "TogglePhone"

Config.QBCoreName = "QBCore"

Config.Fahrenheit = false --Set to true if you want to use Fahrenheit instead of Celsius

Config.SyncFlashlight = true --Set to true if you want to sync the flashlight with other players ( may take higher client performance )

Config.Items = {
     "phone",
     "purple_phone",
     "green_phone",
     "red_phone",
     "blue_phone",
     "black_phone"
}

Config.NeedItem = true --Need Item to open the phone (true/false) / If you set this to false you can open the phone without an item and the phone props dont work!
Config.RegisterKeyMapping = true --If you set RegisterKeyMapping to false you can only close the phone with ESC.
Config.OpenKey = 'f1' --Works only with RegisterKeyMapping true / https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.OpenKeyNumber = 288 --Works only with RegisterKeyMapping false / https://docs.fivem.net/docs/game-references/controls/

--CONFIGURATE YOUR VOICECHAT HERE

Config.MumbleExport = "mumble-voip" --exports["mumble-voip"]
Config.PMAVoiceExport = "pma-voice" --exports["pma-voice"]
Config.SaltyExport = "saltychat" --exports["saltychat"]


Config.UsePmaVoice = false --We recommend: https://github.com/AvarianKnight/pma-voice
Config.UseMumbleVoip = false --OLD AND KNOWN BROKEN, Please use PMAVoice
Config.UseSaltyChat = false --Works perfect with SaltyChat 2.6
Config.UseTokoVoip = false


Config.SaltyChatFix = false --Set it to true if you have problems with SaltyChat


Config.EventNumbers = { --PLEASE READ OUR DEVELOPER DOCUMENTATION FOR MORE INFORMATION
     ['77777'] = false
}

---Commands
Config.WaveVerifyCommand = "waveverify"
Config.ConnectVerifyCommand = "connectverify"

--Addons

Config.Addons = {
     ['leitstelle'] = true
}

Config.ValetServerSideCheck = true
Config.ValetPedModel = "s_m_y_valet_01"
Config.ValetRadius = 500.0 --Radius the car spawned and drive to the player
Config.ValetDeliveryPrice = 500 --How much it costs to have your car delivered
Config.OwnedVehiclesTable = "player_vehicles" --Change this if you use a different table name for owned vehicles


-------Camera-------

Config.WalkableCamera = true --Set to false if you want to disable the walkable camera

-------Crypto-------

Config.Crypto = true

-------Radio-------

Config.RemoveFromRadioWhenDead = true
Config.RadioNeedItem = false

Config.RadioItems = {
     "radio"
}

Config.lockedRadioChannels = { --Lock Radio Channels for Jobs
     { frq = 1, jobhasaccess = {"police"}},
     { frq = 2, jobhasaccess = {"ambulance"}},
     { frq = 3, jobhasaccess = {"police", "ambulance"}}, --Multiple Jobs
}


-------Billings-------

Config.myBilling = false 
Config.okokBilling = false
Config.JaksamBilling = false
Config.bcsCompanyManager = false
Config.codemBilling = false


-------Inventory-------

Config.codeMInventory = false --Set to true if you use codeM_inventory script

----------Banking----------

Config.okokBanking = false



Config.VisnAre = false --Set to true if you use VisnAre script
Config.cdGarages = false --Set to true if you use cdGarages script

Config.UsePhoneProps = true --Do you want to use custom RoadPhone props?

Config.UserTable = "players" --Change if you use different table name
Config.CarDebug = false --Debug for car spawn name ( vehicle_names.lua )


--If you see pictures that are not loaded, you can change value to true

Config.clearDataTwoWeeks = true --Clear all data with pictures after 2 weeks / perfect for big servers with a lot of data

--


Config.ShowServerInfo = true --Set to false if you want to remove Phone: RoadPhone in your server info
