Config = {}
Config.Locale = 'en'
Config.Debug = false

Config.TargetScript = 'qb-target'  --don't change the name if you are using ox_target
Config.SocietyInManagement = true --enable if your society is inside qb-management

Config.JobNames  = {
    ['ambulance'] = true,
    ['firefighter'] = true,
}

Config.BleedOutTime = 60 * 4 --seconds
Config.BrainDeadTime = 60 * 10 --seconds
Config.ForceRespawnWait = 60 * 3 --seconds
Config.AutoRespawnAfterBrainDead = true

Config.CrawlEnabled = true --crawl when down

Config.Blips = {
    {label = 'Arcadius Hospital', pos = vector3(-130.16, -599.33, 37.43), sprite = 61, size = 1.2, color = 2},
}

Config.DisableForceRespawnWhenOnlineEms = 3

Config.CombatLogAutoRespawn = true
Config.CombatLogPunishment = { --after relog
    RemoveMoney         = false,
    RemoveItems         = true,
    RemoveWeapons       = true,
    IgnoreItemList = {
        water       = true,
        bread       = true,
        money       = true,
        black_money = true,
    },
    IgnoreLoadoutList = {
        WEAPON_PISTOL = true,
    },
}

Config.ForceRespawnPunishment = { --hold E to respawn
    RemoveMoney         = false,
    RemoveItems         = true,
    RemoveWeapons       = true,
    IgnoreItemList = {
        water       = true,
        bread       = true,
        money       = true,
        black_money = true,
    },
    IgnoreLoadoutList = {
        WEAPON_PISTOL = true,
    },
}

Config.AutoRespawnPunishment = { --after brain dead
    RemoveMoney         = false,
    RemoveItems         = true,
    RemoveWeapons       = true,
    IgnoreItemList = {
        water       = true,
        bread       = true,
        money       = true,
        black_money = true,
    },
    IgnoreLoadoutList = {
        WEAPON_PISTOL = true,
    },
}

Config.RespawnOptions = {
    {
        Name = 'Arcadius Hospital',
        Description = 'Transport Fee: $500 | Medical Fee: $2500',
        TotalCost = 3000,
        Transport = true,
        Vehicle = 'ambulance',
        Offset = vector3(0.0, -2.5, -0.4), --attach offset
        Gps = vector3(-133.45, -603.78, 37.43),
        TransportTimeOut = 60 * 5,
    },
    --[[
    {
        Name = 'Central Hospital',
        Description = 'Transport Fee: $800 | Medical Fee: $3000',
        TotalCost = 3800,
        Transport = true,
        Vehicle = 'fordambo',
        Offset = vector3(0.0, -3.0, 0.4), --attach offset
        Gps = vector3(295.49, -1440.09, 29.8),
        TransportTimeOut = 60 * 5,
    },
    ]]
}

Config.PlayForTask = {
    revive      = 1000,
    cpr         = 1000,
    cpradvanced = 500,
    bandage     = 200,
    neckbrace   = 200,
    bodybandage = 200,
    armbrace    = 200,
    legbrace    = 200,
    morphine30  = 200,
    saline      = 100,
}

Config.IgnoreAnims = { --death & down animation will be skiped if player using animations below
    {dir = 'missfinale_c2mcs_1', anim = 'fin_c2_mcs_1_camman'}, --carry
}


