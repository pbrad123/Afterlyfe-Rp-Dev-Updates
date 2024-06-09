Config = {}

Config.Notify = 'qb' -- 'qb' or 'ox' or 'none'
Config.Target = 'qb' -- 'qb' or 'ox' or 'interact' [https://github.com/darktrovx/interact]
Config.InterctView = 7.5 -- Only used if Config.Target == 'interact' | Does not affect 'qb' or 'ox'
Config.InteractDist = 2.5 -- Only used if Config.Target == 'interact' | Does not affect 'qb' or 'ox'
Config.Menu = 'qb' -- 'qb' or 'ox'
Config.Progressbar = 'qb' -- 'qb' or 'ox'
Config.Inventory = 'qb' -- 'qb' or 'ox'
Config.Skillcheck = 'qb' -- 'ps' or 'ox'

Config.FuelResource = 'LegacyFuel'

-- Looking for GiveKeys config?
-- Check: config_cl.lua

Config.StartDeliveryPed = {
    Coords = vector4(-4.22, -659.18, 32.48, 183.34),
    Label = "Jimmy From Gruppe 6",
    Model = 'mp_s_m_armoured_01',
    Icon = 'fas fa-briefcase',
}

Config.BagItemName = 'cash_bag'
Config.InkedItemName = 'inked_cash_bag'

Config.Vehicle = 'rbchgr18b'

Config.Use3DMarker = true

Config.MinRunsToDone = 1
Config.MaxRunsToDone = 3

Config.VehicleSpawns = {
    vector4(-32.41, -670.52, 31.34, 187.86),
    vector4(-36.74, -671.4, 31.34, 186.63),
    vector4(-21.22, -670.17, 31.34, 184.74),
    vector4(-17.77, -669.95, 31.34, 185.03),
    vector4(-6.85, -668.34, 31.34, 183.4),
    vector4(-2.73, -667.9, 31.34, 187.8),
    vector4(3.22, -669.83, 31.34, 187.06),
}

Config.MinBagsPerDestination = 1 -- minimum bags per location
Config.MaxBagsPerDestination = 4 -- maximum bags per location

Config.BagSpawns = {
    -- ADD MORE IN THE SAME FORMAT
    --vector4(-12.45, -678.57, 32.34, 206.6) --for test 
    ---all banks
    vector4(240.46197, 225.80572, 105.2869, 165.49162),
    vector4(-354.3628, -53.91887, 48.03651, 247.68736),
    vector4(-1212.502, -336.1436, 36.780963, 292.10525),
    vector4(-2957.656, 480.38278, 14.697005, 333.28643),
    vector4(146.06887, -1044.604, 28.368, 242.84365),
    vector4(1177.191, 2711.5874, 37.087966, 78.774597),
    vector4(-106.9418, 6468.7456, 30.626705, 51.005558),
}

Config.DropSpot = vector3(-9.58, -654.66, 32.91)



Config.MoneyType = 'bank'
Config.MoneyPerBagMin = 100
Config.MoneyPerBagMax = 300


Config.MinWaitTime = 5000
Config.MaxWaitTime = 15000



-- Organizer Job

Config.OrganizerLocations = {
    { coords = vector4(8.25, -658.0, 33.45, 335.71), width = 3, length = 1, height = 1, active = false },
    { coords = vector4(2.74, -659.47, 33.45, 93.25), width = 3, length = 1, height = 1, active = false },
}

Config.OrganizerGuyCoords = vector4(4.39, -656.41, 33.45, 165.4)

Config.OrganizerPed = {
    Coords = vector4(4.39, -656.41, 32.45, 165.4),
    Label = "Kyle From Gruppe 6",
    Model = 'mp_s_m_armoured_01',
    Icon = 'fas fa-briefcase',
}

Config.OrganizerMarker = true

Config.MoneyPerOrganizedMin = 300
Config.MoneyPerOrganizedMax = 400

Config.MinOrganizeWaitTime = 2000
Config.MaxOrganizeWaitTime = 6500



Config.RobberySettings = {
    StockadeModels = {
        'stockade'
    },
    ThermiteParticle = 'proj_flare_trail',
    ExplosionPaticle = 'exp_grd_grenade_lod',
    WaitTimeForThermite = 10000,
    ThermiteItemName = 'thermite',
    IgnitionItemName = 'lighter',
    MinBags = 2, -- ONLY NPC STOCKADES
    MaxBags = 5, -- ONLY NPC STOCKADES
}

