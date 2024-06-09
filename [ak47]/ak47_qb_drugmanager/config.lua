Config = {}
Config.Locale = 'en'
Config.Webhook = 'https://discord.com/api/webhooks/'
Config.UseProgressBar = true

Config.Marker = {
    Collect = {
        enable = false,
        color = {r = 0, g = 255, b = 0, a = 50},
    },
    Process = {
        enable = false,
        color = {r = 0, g = 0, b = 255, a = 50},
    },
}

Config.Blips = {
    {name = 'Chemical Lab', enable = false,  pos = vector3(3560.83, 3669.24, 28.12), id = 499, size = 0.9, color = 1, radius = 0.0},
    {name = 'Coke Lab', enable = false,  pos = vector3(1331.802, -1644.15, 52.24), id = 497, size = 0.9, color = 1, radius = 0.0},
    {name = 'Illegal Pharmacy', enable = false,  pos = vector3(-3418.33, 971.22, 11.94), id = 51, size = 0.9, color = 1, radius = 0.0},
    {name = 'Heroin Lab', enable = false,  pos = vector3(2018.12, 4925.99, 43.69), id = 514, size = 0.9, color = 0, radius = 0.0},
    {name = 'Heroin Supplier', enable = false,  pos = vector3(1977.82, -2609.23, 3.55), id = 514, size = 0.9, color = 0, radius = 0.0},
    {name = 'Coke Supplier', enable = false,  pos = vector3(3414.56, 5157.54, 2.36), id = 514, size = 0.9, color = 0, radius = 0.0},
    {name = 'Illegal Pharmacy', enable = false,  pos = vector3(-174.42, 6384.31, 31.5), id = 51, size = 0.9, color = 1, radius = 0.0},
    {name = 'Lean Bar', enable = false,  pos = vector3(1656.73, 4.42, 166.12), id = 93, size = 0.9, color = 27, radius = 0.0},
    {name = 'LSD Lab', enable = false,  pos = vector3(29.48, 3666.81, 40.44), id = 304, size = 0.9, color = 24, radius = 0.0},
    {name = 'Meth Lab', enable = false,  pos = vector3(2521.36, 4124.30, 38.63), id = 501, size = 0.9, color = 30, radius = 0.0},
    {name = 'Opium Lab', enable = false,  pos = vector3(2863.13, 4457.24, 41.32), id = 103, size = 0.9, color = 61, radius = 0.0},
    {name = 'Perc Lab', enable = false,  pos = vector3(450.35, -1981.92, 24.40), id = 51, size = 0.9, color = 42, radius = 0.0},
    {name = 'Shroom Lab', enable = false,  pos = vector3(1486.51, 1128.38, 114.33), id = 417, size = 0.9, color = 31, radius = 0.0},
    {name = 'Spice Lab', enable = false,  pos = vector3(2433.24, 4968.71, 42.34), id = 496, size = 0.9, color = 25, radius = 0.0},
    {name = 'Weed Lab', enable = false,  pos = vector3(1039.17, -3205.13, -38.17), id = 496, size = 0.9, color = 25, radius = 0.0},
    {name = 'Crack House', enable = false,  pos = vector3(-14.66, -1433.68, 31.12), id = 497, size = 0.9, color = 0, radius = 0.0},

    {name = 'Weed Field', enable = false,  pos = vector3(5245.4, -5758.46, 21.14), id = 496, size = 0.9, color = 25, radius = 30.0},
    {name = 'Coca Field', enable = false,  pos = vector3(1553.53, -2657.42, 38.70), id = 496, size = 0.9, color = 0, radius = 30.0},
    {name = 'Ergot Field', enable = false,  pos = vector3(448.75, 1698.83, 260.01), id = 539, size = 0.9, color = 16, radius = 30.0},
    {name = 'Poppy Field', enable = false,  pos = vector3(2130.28, 5174.33, 53.65), id = 103, size = 0.9, color = 61, radius = 30.0},
    {name = 'Shroom Field', enable = false,  pos = vector3(2445.81, 4760.90, 33.31), id = 417, size = 0.9, color = 31, radius = 15.0},
    {name = 'Spice Field', enable = false,  pos = vector3(-2194.36, 5178.96, 14.59), id = 496, size = 0.9, color = 25, radius = 16.0},

    {name = 'Smoke on the water', enable = false,  pos = vector3(-1172.06, -1572.18, 4.66), id = 496, size = 0.9, color = 25, radius = 0.0},
    {name = 'Shroom Dealer', enable = false,  pos = vector3(-1146.47, 4940.92, 222.26), id = 417, size = 0.9, color = 31, radius = 0.0},
    {name = 'Lean Dealer', enable = false,  pos = vector3(-10.02, -1827.75, 25.38), id = 93, size = 0.9, color = 27, radius = 0.0},
    {name = 'Meth Dealer', enable = false,  pos = vector3(1019.25, -2511.71, 28.48), id = 501, size = 0.9, color = 30, radius = 0.0},
    {name = 'Dollar Pills', enable = false,  pos = vector3(591.17, 2744.87, 42.04), id = 51, size = 0.9, color = 1, radius = 0.0},
    {name = 'Opium Dealer', enable = false,  pos = vector3(41.35, 3705.21, 40.71), id = 103, size = 0.9, color = 61, radius = 0.0},
    {name = 'Acid Dealer', enable = false,  pos = vector3(166.89, 2229.06, 90.77), id = 539, size = 0.9, color = 16, radius = 0.0},
}

Config.Teleports = {
    ['Coke Lab'] = {enter = vector3(-1579.83, -3223.57, 26.34),  exit = vector3(1088.61, -3188.4, -39.96)},   -- required bob74_ipl
    ['Weed Lab'] = {enter = vector3(3426.93, 5174.63, 7.41), exit = vector3(1065.92, -3183.51, -40.13)},  -- required bob74_ipl
    ['Meth Lab'] = {enter = vector3(2483.83, 3445.8, 51.07),   exit = vector3(997.13, -3200.64, -37.36)},   -- required bob74_ipl
}

