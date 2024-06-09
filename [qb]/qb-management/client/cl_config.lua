-- Zones for Menues
Config = Config or {}

Config.UseTarget = GetConvar('UseTarget', 'false') == 'true' -- Use qb-target interactions (don't change this, go to your server.cfg and add `setr UseTarget true` to use this and just that from true to false or the other way around)

Config.BossMenus = {
    ['police'] = {
        vector3(-305.48, -1044.9, 31.26),
    },
    ['ambulance'] = {
        vector3(334.72, -594.41, 43.28),
    },
    ['realestate'] = {
        vector3(-716.11, 261.21, 84.14),
    },
    ['taxi'] = {
        vector3(894.96, -179.07, 74.7),
    },
    ['cardealer'] = {
        vector3(-27.47, -1107.13, 27.27),
    },
    ['mechanic'] = {
        vector3(-339.53, -156.44, 44.59),
    },
    ['redline'] = {
        vector3(-605.46, -919.76, 23.89),
    },
    ['sast'] = {
        vector3(-548.63, -616.45, 45.11),
    },
    ['doj'] = {
        vector3(250.63, -1099.81, 36.15),
    },
    ['dunkin'] = {
        vector3(-584.77, -883.61, 25.95), --place this in qb-management/client/cl_config.lua
    },
    ['uwu'] = {
        vector3(-595.61, -1053.29, 22.34), --place this in qb-management/client/cl_config.lua
    },
    ['bcso'] = {
        vector3(1843.81, 3684.92, 38.93), --place this in qb-management/client/cl_config.lua
    },
    ['towing'] = {
        vector3(939.32, -1462.19, 31.62),
    },
    ['harmony'] = {
        vector3(1188.31, 2637.5, 37.65),
    },
    ['taco'] = {
        vector3(20.22, -1602.11, 29.38), --place this in qb-management/client/cl_config.lua
    },
    ['burgershot'] = {
        vector3(-1196.71, -891.91, 14.0), --place this in qb-management/client/cl_config.lua
    },
    ['judge'] = {
        vector3(-588.38, -205.86, 38.23), --place this in qb-management/client/cl_config.lua
    },
    ['lawyer'] = {
        vector3(-531.85, -192.42, 38.23), --place this in qb-management/client/cl_config.lua
    },
    ['cluckinbell'] = {
        vector3(-149.87, -262.73, 43.64),
    },
    ['mcdonalds'] = {
        vector3(84.36, 293.48, 110.21), --place this in qb-management/client/cl_config.lua
    },
    ['dominos'] = {
        vector3(541.36, 114.08, 96.57), --place this in qb-management/client/cl_config.lua
    },
}

Config.BossMenuZones = {
    ['police'] = {
        { coords = vector3(-305.48, -1044.9, 31.26), length = 1.35, width = 1.45, heading = 351.0, minZ = 30.00, maxZ = 31.73 }, },
    ['ambulance'] = {
        { coords = vector3(334.72, -594.41, 43.28), length = 1.2, width = 0.6, heading = 341.0, minZ = 43.13, maxZ = 43.73 },
    },
    ['realestate'] = {
        { coords = vector3(-716.11, 261.21, 84.14), length = 0.6, width = 1.0, heading = 25.0, minZ = 83.943, maxZ = 84.74 },
    },
    ['taxi'] = {
        { coords = vector3(894.96, -179.07, 74.7), length = 1.0, width = 3.4, heading = 327.0, minZ = 73.17, maxZ = 74.57 },
    },
    ['cardealer'] = {
        { coords = vector3(-27.47, -1107.13, 27.27), length = 2.4, width = 1.05, heading = 340.0, minZ = 27.07, maxZ = 27.67 },
    },
    ['mechanic'] = {
        { coords = vector3(-339.53, -156.44, 44.59), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
    ['sast'] = {
        { coords = vector3(-548.63, -616.45, 45.11), length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
    ['dunkin'] = {
        vector3(-584.77, -883.61, 25.95), --place this in qb-management/client/cl_config.lua
    },
    ['uwu'] = {
        vector3(-595.61, -1053.29, 22.34), --place this in qb-management/client/cl_config.lua
    },
    ['bcso'] = {
        vector3(1843.81, 3684.92, 38.93), --place this in qb-management/client/cl_config.lua
    },
    ['doj'] = {
        vector3(250.63, -1099.81, 36.15),
    },
    ['towing'] = {
        vector3(939.32, -1462.19, 31.62),
    },
    ['harmony'] = {
        vector3(1188.31, 2637.5, 37.65),
    },
    ['taco'] = {
        vector3(20.22, -1602.11, 29.38), --place this in qb-management/client/cl_config.lua
    },
    ['burgershot'] = {
        vector3(-1196.71, -891.91, 14.0), --place this in qb-management/client/cl_config.lua
    },
    ['judge'] = {
        vector3(-588.38, -205.86, 38.23), --place this in qb-management/client/cl_config.lua
    },
    ['lawyer'] = {
        vector3(-531.85, -192.42, 38.23), --place this in qb-management/client/cl_config.lua
    },
    ['cluckinbell'] = {
        { coords = vector3(-149.87, -262.73, 43.64), length = 1.2, width = 1.8, heading = 72.0, minZ = 43.30, maxZ = 44.5},
    },
    ['mcdonalds'] = {
        vector3(84.36, 293.48, 110.21), --place this in qb-management/client/cl_config.lua
    },
    ['dominos'] = {
        vector3(541.36, 114.08, 96.57), --place this in qb-management/client/cl_config.lua
    },
}

Config.GangMenus = {
    ['voodomc'] = {
        vector3(-443.55, 264.29, 86.2),
    },
    ['ballas'] = {
        vector3(0, 0, 0),
    },
    ['vagos'] = {
        vector3(0, 0, 0),
    },
    ['cartel'] = {
        vector3(0, 0, 0),
    },
    ['wolves'] = {
        vector3(-2179.56, 4294.43, 53.58),
    },
}

Config.GangMenuZones = {
    ['voodomc'] = {
        { vector3(-443.55, 264.29, 86.2),length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
    ['wolves'] = {
        { vector3(-2179.56, 4294.43, 53.58),length = 1.15, width = 2.6, heading = 353.0, minZ = 43.59, maxZ = 44.99 },
    },
}
