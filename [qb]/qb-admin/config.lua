Config = {}
Config.DB = {}

-------             CONFIGURATION          --------           
---------------------------------------------------

Config.Framework                            = "qbcore"                  -- "qbcore" or "qbox" or "esx"
Config.FrameworkResourceName                = "qb-core"                 -- "qb-core" for QBCore/QBox or "es_extended" for ESX

-- For QBCore ONLY
Config.IsUsingOverextendedInventory         = false                     -- Whether or not you are using the overextended inventory system. 
                                                                        -- If you are using the default QBCore inventory or one that hooks default QB functions, leave this as false.

-- For QBox ONLY or QBCore with Overextended Inventory (above set to true)
-- If your ox_inventory resource name is different, change it here
Config.OxInventoryResourceName              = "ox_inventory"            -- The name of the ox_inventory resource if you are using QBox framework. Ignore if not.

Config.DefaultDarkMode                      = 1                         -- Whether dark mode should be enabled by default. 1 is on by default, 0 is off

Config.ServerName                           = "Afterlyfe Rp"
Config.ServerDiscord                        = "discord.gg/AfterlyfeRp"     -- For kick/ban messages
Config.ScreenshotWebhook                    = "https://discord.com/api/webhooks/1150064664466698343/dIS52JyU94T31eQlT2ZDKKpDe5H4N5JMIw0lI2Wb7wMcYMFXYouBG_UoGFX7ZHXB3R3m"
Config.LogsWebhook                          = "https://discord.com/api/webhooks/1224222966531887125/1-0I879-95MUkh8rkPsCuJWlR7fg63bVovhu-uODNsmxBB2Xpdl3R9PI6KQ24ixSjCEO"

Config.NoClipKey                            = "INSERT"                  -- The default key to start noclip
Config.AdminPanelKey                        = "PAGEDOWN"                -- The default key to open the admin panel
Config.ShowNamesKey                         = "F7"                      -- The default key to toggle player names

Config.EnableAdminPanelCommand              = true                      -- Whether to enable the admin panel command (/a by default)
Config.AdminPanelCommand                    = "a"

Config.NoClipType                           = 1                         -- 1 (default) NEW txAdmin-like NoClip system, or 2 for old style 919Admin NoClip system, or 3 for default qbcore NoClip system

Config.ShowIPInIdentifiers                  = false                     -- Whether to show player's IPs in the identifiers box in player info view

Config.EnableReportCommand                  = true                      -- Enable or disable the report command if you use another report system (reports tab will still show)
Config.ReportCommand                        = "report"                  -- The command to use for reports (default /report)
Config.MaxReportsPerPlayer                  = 2                         -- The maximum amount of reports a player can place
Config.SaveTOJSON                           = true                      -- Whether to save reports, adminchat, and logs to JSON onResourceStopped (server restarts etc) and load from JSON on resource start

Config.DB.VehiclesTable                     = "player_vehicles"         -- Standards: player_vehicles   for QBCore/QBox     |      owned_vehicles   for ESX
Config.DB.CharactersTable                   = "players"                 -- Standards: players           for QBCore/QBox     |      users            for ESX
Config.DB.BansTable                         = "bans"

Config.LeaderboardCacheTimer                = 60000 * 60                -- How often the leaderboard cache should be updated (in milliseconds, default = 60 minutes)

Config.AnnounceBan                          = false                     -- Whether to announce bans in chat or not
Config.TagEveryone                          = true                      -- Enable to tag everyone in the discord log on ban

Config.EnableNames                          = true                      -- Whether or not to enable the names overhead feature (permissioned only as of 919ADMIN 1.8)

Config.RoleColors = {                                                   -- The colors for the different roles in the admin panel's player list. You can use hex codes or predefined css colors.
    ["god"] = "red",
    ["admin"] = "orange",
    ["mod"] = "blue",
}

-- ADVANCED CONFIGURATION
Config.LargeEventDataBitrate                = 200000                    -- The bitrate for large events (like the player list, default = 0.2mbps / 200kbps / 200,000bps)
Config.CharactersCacheExpiry                = 300000                    -- How long the main characters cache should last (in milliseconds, default = 5 minutes)
Config.ServerMetricsCacheExpiry             = 300000                    -- How long the server metrics cache should last (in milliseconds, default = 5 minutes)
Config.EnableDebug                          = true                     -- Whether to enable debug prints or not

-- QBox:
--[[

Config.ClientFillVehicleFuel = function(vehicle)
    Entity(vehicle).state.fuel = 100
end

]]

Config.ClientFillVehicleFuel = function(vehicle)
    exports['LegacyFuel']:SetFuel(vehicle, 100)
end

Config.RoleOrder = { -- The order of the roles to check for player list. The first role in the list will be the first to be checked so you don't show up as the wrong role due to ace perms.
    [1] = "god",
    [2] = "admin",
    [3] = "mod",
}

-- For QBCore and QBox
Config.Permissions = {
    ["god"] = {
        AllowedActions = {
            "characterspage", -- Access the All Characters page
            "resourcepage", -- Access the Resource control page
            "deletecharacter", -- Delete a character
            "kickall", -- Kick all players
            "reviveall", -- Revive all players
            "messageall", -- Message all players
            "massdeleteentities", -- Permission to delete ALL vehicles, peds, or objects for all players
            "setViewDistance", -- Set view distance
            "copyEntityInfo", -- Copy entity information
            "freeaimMode", -- Enable free aim mode
            "displayVehicles", -- Display vehicle dev mode
            "displayPeds", -- Display peds dev mode
            "displayObjects", -- Display objects dev mode
            "clearreports", --Clear reports ADVISE TO KEEP TO GOD ONLY!
            "clearadminchat", --Clear adminchat ADVISE TO KEEP TO GOD ONLY!
            "clearlogs", --Clear logslist ADVISE TO KEEP TO GOD ONLY!
            "leaderboardinfo", --Check the leaderboards
            "adminmenu", -- Open the admin menu
            "viewreports", -- Access the reports list
            "claimreport", -- Claim a report
            "deletereport", -- Delete a report
            "adminchat", -- Access the admin chat
            "serverlogs", -- Access the server logs page
            "servermetrics", -- Access the server metrics page
            "jobpage", -- Access the jobs page
            "gangpage", -- Access the gangs page
            "banspage", -- Access the bans page
            "vehiclesinfo", -- Access the vehicle spawn code list page
            "itemsinfo", -- Access the item spawn code list page
            "noclip", -- Noclip
            "teleport", -- Teleport yourself, others, to location
            "kill", -- Kill yourself, others
            "freeze", -- Freeze a player
            "savedata", -- Save player data
            "ban", -- Ban a player from the server
            "unban", -- Unban a player
            "weather", -- Change the server weather
            "time", -- Change the server time
            "givetakemoney", -- Give or take money from a player
            "warn", -- Warn a player
            "checkwarns", -- Check the warnings of a player
            "revive", -- Revive a player
            "foodandwater", -- Feed a player
            "relievestress", -- Relieve stress of a player
            "setpedmodel", -- Set a player's ped model
            "spectate", -- Spectate a player
            "screenshot", -- Screenshot a player
            "spawncar", -- Spawn a vehicle
            "clearinventory", -- Clear inventory
            "openinventory",
            "setjob", -- Set job of a player
            "setgang", -- Set gang of a player
            "firejob", -- Fire a player from their job
            "firegang", -- Fire a player from their gang
            "giveitem", -- Give a player an item, or several thousand
            "skinmenu", -- Give a player the skin menu
            "setmedriver", -- Teleport into nearest vehicle as driver
            "setmepassenger", -- Teleport into nearest vehicle as passenger
            "deleteclosestvehicle", -- Delete closest vehicle
            "repairvehicle", -- Repair a vehicle
            "lockvehicle", -- Lock a vehicle
            "unlockvehicle", -- Unlock a vehicle
            "maxperformanceupgrades", -- Max performance upgrades (vehicle)
            "randomvisualparts", -- Random visual parts (vehicle)
            "setlivery", -- Set liver (vehicle)
            "setcolor", -- Set color (vehicle)
            "forceradar", -- Force minimap on
            "playernames", -- Toggle player location blips
            "invisibility", -- Toggle invisibility
            "deleteclosestped", -- Delete closest ped
            "wetclothes",
            "dryclothes",
            "clearblood",
            "fastrun",
            "godmode",
            "infinitestam",
            "noragdoll",
            "superjump",
            "fillgastank",
            "washvehicle",
            "playerblips",
        },
    },
    ["admin"] = {
        AllowedActions = {
            "resourcepage", -- Access the Resource control page
            "kickall", -- Kick all players
            "reviveall", -- Revive all players
            "messageall", -- Message all players
            "setViewDistance", -- Set view distance
            "copyEntityInfo", -- Copy entity information
            "freeaimMode", -- Enable free aim mode
            "leaderboardinfo", --Check the leaderboards
            "adminmenu", -- Open the admin menu
            "viewreports", -- Access the reports list
            "claimreport", -- Claim a report
            "deletereport", -- Delete a report
            "adminchat", -- Access the admin chat
            "serverlogs", -- Access the server logs page
            "servermetrics", -- Access the server metrics page
            "jobpage", -- Access the jobs page
            "gangpage", -- Access the gangs page
            "banspage", -- Access the bans page
            "vehiclesinfo", -- Access the vehicle spawn code list page
            "itemsinfo", -- Access the item spawn code list page
            "noclip", -- Noclip
            "teleport", -- Teleport yourself, others, to location
            "kill", -- Kill yourself, others
            "freeze", -- Freeze a player
            "savedata", -- Save player data
            "ban", -- Ban a player from the server
            "unban", -- Unban a player
            "weather", -- Change the server weather
            "time", -- Change the server time
            "givetakemoney", -- Give or take money from a player
            "warn", -- Warn a player
            "checkwarns", -- Check the warnings of a player
            "revive", -- Revive a player
            "foodandwater", -- Feed a player
            "relievestress", -- Relieve stress of a player
            "setpedmodel", -- Set a player's ped model
            "spectate", -- Spectate a player
            "screenshot", -- Screenshot a player
            "spawncar", -- Spawn a vehicle
            "clearinventory", -- Clear inventory
            "openinventory",
            "setjob", -- Set job of a player
            "setgang", -- Set gang of a player
            "firejob", -- Fire a player from their job
            "firegang", -- Fire a player from their gang
            "giveitem", -- Give a player an item, or several thousand
            "skinmenu", -- Give a player the skin menu
            "setmedriver", -- Teleport into nearest vehicle as driver
            "setmepassenger", -- Teleport into nearest vehicle as passenger
            "deleteclosestvehicle", -- Delete closest vehicle
            "repairvehicle", -- Repair a vehicle
            "lockvehicle", -- Lock a vehicle
            "unlockvehicle", -- Unlock a vehicle
            "maxperformanceupgrades", -- Max performance upgrades (vehicle)
            "randomvisualparts", -- Random visual parts (vehicle)
            "setlivery", -- Set liver (vehicle)
            "setcolor", -- Set color (vehicle)
            "forceradar", -- Force minimap on
            "playernames", -- Toggle player location blips
            "invisibility", -- Toggle invisibility
            "wetclothes",
            "dryclothes",
            "clearblood",
            "fastrun",
            "godmode",
            "infinitestam",
            "noragdoll",
            "superjump",
            "fillgastank",
            "washvehicle",
            "playerblips",
        },
    },
    ["mod"] = {
        AllowedActions = {
            "adminmenu", -- Open the admin menu
            "viewreports", -- Access the reports list
            "claimreport", -- Claim a report
            "deletereport", -- Delete a report
            "adminchat", -- Access the admin chat
        },
    }
}

-- For ESX
-- Config.Permissions = {
--     ["admin"] = {
--         AllowedActions = {
--             "characterspage", -- Access the All Characters page
--             "resourcepage", -- Access the Resource control page
--             "deletecharacter", -- Delete a character
--             "kickall", -- Kick all players
--             "reviveall", -- Revive all players
--             "messageall", -- Message all players
--             "massdeleteentities", -- Permission to delete ALL vehicles, peds, or objects for all players
--             "setViewDistance", -- Set view distance
--             "copyEntityInfo", -- Copy entity information
--             "freeaimMode", -- Enable free aim mode
--             "displayVehicles", -- Display vehicle dev mode
--             "displayPeds", -- Display peds dev mode
--             "displayObjects", -- Display objects dev mode
--             "clearreports", --Clear reports ADVISE TO KEEP TO GOD ONLY!
--             "clearadminchat", --Clear adminchat ADVISE TO KEEP TO GOD ONLY!
--             "clearlogs", --Clear logslist ADVISE TO KEEP TO GOD ONLY!
--             "leaderboardinfo", --Check the leaderboards
--             "adminmenu", -- Open the admin menu
--             "viewreports", -- Access the reports list
--             "claimreport", -- Claim a report
--             "deletereport", -- Delete a report
--             "adminchat", -- Access the admin chat
--             "serverlogs", -- Access the server logs page
--             "servermetrics", -- Access the server metrics page
--             "jobpage", -- Access the jobs page
--             "gangpage", -- Access the gangs page
--             "banspage", -- Access the bans page
--             "vehiclesinfo", -- Access the vehicle spawn code list page
--             "itemsinfo", -- Access the item spawn code list page
--             "noclip", -- Noclip
--             "teleport", -- Teleport yourself, others, to location
--             "kill", -- Kill yourself, others
--             "freeze", -- Freeze a player
--             "savedata", -- Save player data
--             "ban", -- Ban a player from the server
--             "unban", -- Unban a player
--             "weather", -- Change the server weather
--             "time", -- Change the server time
--             "givetakemoney", -- Give or take money from a player
--             "warn", -- Warn a player
--             "checkwarns", -- Check the warnings of a player
--             "revive", -- Revive a player
--             "foodandwater", -- Feed a player
--             "relievestress", -- Relieve stress of a player
--             "setpedmodel", -- Set a player's ped model
--             "spectate", -- Spectate a player
--             "screenshot", -- Screenshot a player
--             "spawncar", -- Spawn a vehicle
--             "clearinventory", -- Clear inventory
--             "openinventory",
--             "setjob", -- Set job of a player
--             "setgang", -- Set gang of a player
--             "firejob", -- Fire a player from their job
--             "firegang", -- Fire a player from their gang
--             "giveitem", -- Give a player an item, or several thousand
--             "skinmenu", -- Give a player the skin menu
--             "setmedriver", -- Teleport into nearest vehicle as driver
--             "setmepassenger", -- Teleport into nearest vehicle as passenger
--             "deleteclosestvehicle", -- Delete closest vehicle
--             "repairvehicle", -- Repair a vehicle
--             "lockvehicle", -- Lock a vehicle
--             "unlockvehicle", -- Unlock a vehicle
--             "maxperformanceupgrades", -- Max performance upgrades (vehicle)
--             "randomvisualparts", -- Random visual parts (vehicle)
--             "setlivery", -- Set liver (vehicle)
--             "setcolor", -- Set color (vehicle)
--             "forceradar", -- Force minimap on
--             "playernames", -- Toggle player location blips
--             "invisibility", -- Toggle invisibility
--             "wetclothes",
--             "dryclothes",
--             "clearblood",
--             "fastrun",
--             "godmode",
--             "infinitestam",
--             "noragdoll",
--             "superjump",
--             "fillgastank",
--             "washvehicle",
--             "playerblips",
--         },
--     },
--     ["mod"] = {
--         AllowedActions = {
--             "adminmenu", -- Open the admin menu
--             "viewreports", -- Access the reports list
--             "claimreport", -- Claim a report
--             "deletereport", -- Delete a report
--             "adminchat", -- Access the admin chat
--         },
--     }
-- }

-------                  KEYS              --------           
---------------------------------------------------


Config.Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
}


-------               FUNCTIONS            --------           
---------------------------------------------------

function DebugTrace(message)
    if Config.EnableDebug then
        print("^3[919DESIGN Admin ("..GetCurrentResourceName()..")]^7 "..message)
    end
end