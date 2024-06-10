-- This section allows you to configure the vehicles that will work with the resource.
-- You must set the offSet of each vehicle to ensure the star chaser is in the optimum position
-- We recommend either using the "engine" (more central) bone index or "bumper_f" (may be closer to the front) - both are good locations.
vehicles = {
    [`police4`] = { -- These are examples, please edit these and add your own vehicles. The name is for logging purposes
        name = "Response Car",
        boneName = "engine",
        offSet = {0.0, 0.76, -0.4},
        rotation = {0.0, 0.0, 0.0},
    },
    -- [`police2`] = { -- These are examples, please edit these and add your own vehicles. The name is for logging purposes
    --     name = "Response Car",
    --     boneName = "engine",
    --     offSet = {0.0, 0.76, -0.4},
    --     rotation = {0.0, 0.0, 0.0},
    -- },
}

-- This allows you to edit the controls of the resource
-- If you wish to change it, view the controls page here: https://docs.fivem.net/docs/game-references/controls/
controls = {
    ready = {0, 73}, -- X by default
    deploy = {0, 246}, -- Y by default
}

-- Here you can change the blip settings of the GPS locations
-- Use this FiveM document for blip ID's: https://docs.fivem.net/docs/game-references/blips/
blipSettings = {
    blipID = 596, -- This is the icon
    blipColour = 46, -- This is the colour
    blipScale = 1.5, -- This is the size
    blipName = "License:" -- This is the text
}

-- This is the configuration section for the /starchase command
starChaseCommand = {
    enabled = true,
    commandName = "starchase",
    install = "install",
    load = "load",
    remove = "remove",
    removeTracker = "removetracker",
}

main = {
    soundVolume = 0.7, -- Max of 1.0
    disableBeeps = true,
    timeBetweenUpdates = 5, -- Time between coordinate updates.
    cartridgeItemName = "starchase_cartridge", -- If you're using a framework, you'll need to add this as an item. See our documentation for more info on this.
    starChaseItemName = "starchase",
    developerMode = false,
    oxInventory = false,
    quasarInventory = false, -- Make sure to enable QB/ESX below
    coreInventory = false, -- Make sure to enable QB/ESX below
    acePermissions = {
        enabled = false,
        permsToCheck = {"starchase.use", "starchase.police"}
        -- This enables ace permissions on the starchaser
    },
    -- We've added ESX integration. All you need to do is enable it below and configure which jobs can use the command
    ESX = {
        enabled = false,
        groupsToCheck = {"police"}
    },
    -- We've added vRP integration. All you need to do is enable it below. Then, configure if you wish to check for groups or permissions, or even both
    vRP = {
        enabled = false,
        groupsToCheck = {"cop"}
    },
    -- We've added QBCore integration. All you need to do is enable it below. Then, configure if you wish to check for jobs or permissions, or even both
    QBCore = {
        enabled = true,
        groupsToCheck = {"police", "sast", "bcso", "sasp"}
    },
}

-- This allows you to enable Discord logging
-- You must add your webhook in sv_utils.lua
logging = {
    enabled = true,
    displayName = "Star Chase",
    colour = 31487,
    title = "**New Log**",
    icon = "https://i.imgur.com/n3n7JNW.png",
    footerIcon = "https://i.imgur.com/n3n7JNW.png",
    dateFormat = "%d-%m-%Y %H:%M:%S", -- Day-Month-Year Hour-Minute-Second
}

translations = {
    starChaseCommandHelp = "Install, load and remove star chase",
    starChaseParameterOne = "Action",
    starChaseParameterOneHelp = "install/load/remove/removetracker",
    invalidStarChaseArguments = "~r~Error~w~: Invalid command arguments.",
    noPermission = "~r~Error~w~: You do not have permission to access this command.",
    inVehicle = "~r~Error~w~: You must not be in a vehicle.",
    noVehicleFound = "~r~Error~w~: No vehicle found.",
    vehicleNotAllowed = "~r~Error~w~: This vehicle does not support StarChase.",
    cannotPerformAction = "~r~Error~w~: You are unable to perform that action.",
    installed = "~g~Success~w~: StarChase installed.",
    installedStarChase = "Installed and Loaded StarChase",
    vehicle = "Vehicle: ",
    noStarChaseFound = "~r~Error~w~: No star chase found to load, or full.",
    noStarChaseFoundToRemove = "~r~Error~w~: No star chase found to remove.",
    starChaseRemovedPolice = "~r~Tracker Issue~w~: Tracker has not moved in 20 seconds for the vehicle with the plate: ",
    starChaseRemovedCriminal = "~g~Success~w~: Tracker removed from vehicle.",
    recentlyReloaded = "~r~Error~w~: Please wait for the cooldown to finish.",
    loadedStarChase = "Loaded StarChase",
    removedStarChase = "Removed StarChase",
    press = "Press",
}

-- This is the animation for installing the star chase
animation = {
    enabled = false,
    dict = "mini@repair",
    name = "fixing_a_ped"
}

-- These are the props used by the resource.
-- We do not recommend editing this section
props = {
    starChaseClosed = `prop_starchaserclose`,
    starChaseOpen = `prop_starchaseropen`,
    tracker = `prop_starchaserdart`,
}