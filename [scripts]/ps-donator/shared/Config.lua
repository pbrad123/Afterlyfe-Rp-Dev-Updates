Config = {}

Config.NPC = vector4(185.29, -916.61, 30.69, 148.52) -- Location for the NPC to spawn.
Config.Model = "cs_fbisuit_01" -- NPC Model.
Config.VehicleSpawn = vector4(180.45, -923.15, 30.69, 230.33) -- Location for car to spawn.
Config.Garage = "garage1" -- Default garage for the car to be tagged too.

Config.CoinShop = {
    [1] = {
        cost = 1, -- Coin Cost to purchase item.
        header = "Buy items / weapon packages", -- Header Text.
        text = "Buy items / weapon.", -- Sub Text.
    },
    [2] = {
        type = "car", -- Item/Car
        name = "ec176door", -- Model of the vehicle to spawn.
        cost = 1, -- Coin Cost to purchase item.
        header = "Buy Donor", -- Header Text.
        text = "Buy a Donor Car for 1 coin.", -- Sub Text.
    },
    [3] = {
        cost = 1, -- Coin Cost to purchase item.
        name = "Money Pachages", -- amount to be given from tebex.
        header = "Buy Money Pachages", -- Header Text.
        text = "Buy Money Pachages", -- Sub Text.
    },
}

Config.Packages = {
    ["Vehicles Package 1"] = 1, -- Number of coins given on redemption.
    ["Vehicles Package 2"] = 1, -- Number of coins given on redemption.
    ["Weapon Package"] = 1, -- Number of coins given on redemption.
    ["Item Package Tier 1"] = 1, -- Number of coins given on redemption.
    ["Item Package Tier 2"] = 1, -- Number of coins given on redemption.
    ["Item Package Tier 3"] = 1, -- Number of coins given on redemption.
    ["Item Package Tier 4"] = 1, -- Number of coins given on redemption.
    ["Money Package 1"] = 0, -- Number of coins given on redemption.
    ["Money Package 2"] = 0, -- Number of coins given on redemption.
}