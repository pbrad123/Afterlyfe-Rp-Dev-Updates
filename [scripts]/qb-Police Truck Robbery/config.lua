Config = {}
Config.HackerModel = 's_m_y_westsec_01'
Config.HackerLocation = vector4(-63.63, 172.95, 81.49, 211.19)
Config.HackerScenario = 'WORLD_HUMAN_DRUG_DEALER_HARD'
Config.VehicleSpawn = { -- below the coordinates for random vehicle responses
    vector3(495.1, -1001.59, 27.67),
    vector3(-433.61, 6043.4, 31.33),
    vector3(1865.48, 3675.17, 33.79),
    vector3(579.42, -66.54, 71.74),
    vector3(399.91, -1598.57, 29.14),
    vector3(-1565.66, 2767.16, 17.45),
    vector3(-2332.0, 3409.02, 30.21)
}

Config.DriverWeap = `weapon_specialcarbine_mk2` -- Weapon for truck driver to spawn with
Config.NavWeap = `weapon_specialcarbine_mk2` -- Weapon for navigator to spawn with
Config.TimeToBlow = 30 -- bomb detonation time after planting, in seconds
Config.ActivePolice = 0 -- needed policemen to activate the mission
Config.Rewards = {
    ["item"] = "markedbills",
    ["amount"] ={
        ["min"] = 1,
        ["max"] = 3
    },
}

Config.ActivationCost = 15000 -- how much is the activation of the mission (clean from the bank)
Config.Currency = "$"
Config.ResetTimer = 600 -- cooldown for mission in seconds