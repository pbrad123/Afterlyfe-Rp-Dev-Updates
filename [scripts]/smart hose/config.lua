-- Please read our documentation before configuring
-- https://docs.londonstudios.net/

main = {
    oxInventory = false,
    quasarInventory = false, -- Enable QB/ESX below aswell
    coreInventory = false, -- Enable QB/ESX below aswell
    alternativeHoseParticles = false, -- If the positioning of the water particles isn't correct, try enabling this. We've noticed this happen with some graphic mods.
    itemEnabled = false, -- Set the command to false if this is true
    itemName = "hose",
    hoseCommand = {
        enabled = true, -- This enables/disables the hose command
        commandName = "hose", -- This is the command name for the hose
        hoseModel = `weapon_hose`, -- This is the model for the hose. This must be wrapped in `` symbols
        acePermissions = {
            enabled = true,
            -- This enables ace permissions on the hose command
        },
        -- We've added ESX integration. All you need to do is enable it below and configure which jobs can use the command
        ESX = {
            enabled = false,
            checkJob = {
                enabled = false, -- Enable this to use ESX job check
                jobs = {"fire", "firefighter"} -- A user can have any of the following jobs, allowing you to add multiple
            }
        },
        -- We've added vRP integration. All you need to do is enable it below. Then, configure if you wish to check for groups or permissions, or even both
        vRP = {
            enabled = false,
            checkGroup = {
                enabled = false, -- Enable this to use vRP group check
                groups = {"fire", "admin"}, -- A user can have any of the following groups, meaning you can add different jobs
            },
            checkPermission = {
                enabled = false, -- Enable this to use vRP permission check
                permissions = {"player.kick"} -- A user can have any of the following permissions, allowing you to add multiple
            },
        },
        -- We've added QBCore integration. All you need to do is enable it below. Then, configure if you wish to check for jobs or permissions, or even both
        QBCore = {
            enabled = true,
            checkJob = {
                enabled = true, -- Enable this to use QBCore job check
                jobs = {"firefighter"}, -- A user can have any of the following jobs, meaning you can add different jobs
            },
            checkPermission = {
                enabled = true, -- Enable this to use QBCore permission check
                permissions = {"god"}, -- A user can have any of the following permissions, allowing you to add multiple
            },
        },
        hoseCooldown = 2, -- This is the cooldown after spraying hose or foam, to prevent any glitches or particle issues
    },
    
    foamCommand = {
        enabled = true, -- This enables or disables the foam command
        commandName = "foam", -- This enables/disables the foam command
        enableFoamEffectOnGround = true, -- This enables or disables the foam effect on the ground
        foamEffectMaxDistance = 10.0, -- This is the maximum distance that the foam effect on the ground can spawn from the hose
    },

    pressure = {
        enabled = true, -- This enables or disables the live pressure settings on the hose
        -- For a list of controls, see here: https://docs.fivem.net/docs/game-references/controls/
        increaseKey = {0, 172}, -- This is the key to increase the pressure
        decreaseKey = {0, 173}, -- This is the key to decrease the pressure
        changeBy = 0.01, -- This is the amount that pressure will change by when increasing or decreasing
        defaultHosePressure = 0.7, -- This is the default pressure for the hose
        defaultFoamPressure = 0.6, -- This is the default pressure for the hose when spraying foam
        maxHosePressureSize = 7.0, -- This is the maximum pressure for the hose
        maxFoamPressureSize = 7.0, -- This is the maximum pressure for the hose when spraying foam
        minHosePressureSize = 0.05, -- This is the minimum pressure for the hose
        minFoamPressureSize = 0.05, -- This is the minimum pressure for the hose when spraying foam
    },
}

translations = {
    foamCommandHelpText = "Toggle foam mode on your fire hose",
    hoseCommandHelpText = "Activate or deactivate your fire hose",
    weaponName = "Hose",
    hoseDisabled = "Fire hose is now ~r~disabled~w~.",
    hoseEnabled = "Fire hose is now ~b~enabled~w~.",
    foamModeDisabled = "Foam mode is now ~r~disabled~w~.",
    foamModeEnabled = "Foam mode is now ~g~enabled~w~.",
}

developer = {
    foam = {
        offSet = {
            0.0, -0.06, 0.6
        },
        rotation = {
            0.0, 60.0, 0.0
        },
    },
    hose = {
        offSet = {
            0.0, -0.1, 0.65
        },
        rotation = {
            -40.0, 0.0, 90.0
        },
    },
}

if main.alternativeHoseParticles then
    developer = {
        foam = {
            offSet = {
                0.0, -0.01, 0.0
            },
            rotation = {
                0.0, 60.0, 0.0
            },
        },
        hose = {
            offSet = {
                0.0, -0.01, 0.0
            },
            rotation = {
                -40.0, 0.0, 90.0
            },
        },
    }
end