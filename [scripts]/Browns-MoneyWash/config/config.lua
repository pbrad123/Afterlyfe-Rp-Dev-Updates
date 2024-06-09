config = {}

config.framework = 'qb-core' -- 'qb-core' or 'esx'

config.inventory = 'qb-inventory' -- 'qb-inventory', 'ox_inventory', 'qs-inventory', 'ps-inventory', or 'lj-inventory'

config.target = 'qb-target' -- 'qb-target', 'ox_target', or 'qtarget'

config.percentage = 70 -- the percentage of washed money you receive out of the dirty money you wash

config.dirtymoney = {

    UsingMarkedMoney = true, -- if using Marked Money (QBCore) then set this to true and ignore "DirtyMoneyItem" & "DirtyMoneyName"

    MarkedMoneyName = 'markedbills', -- the name of your Marked Money (QBCore) only change if "UsingMarkedMoney" is true

    DirtyMoneyItem = false, -- (true/false) is dirty money an item

    -- if DirtyMoneyItem = false then put the account name ('cash', 'bank', 'dirtymoney', etc.) for DirtyMoneyName
    -- if DirtyMoneyItem = true then put your dirty money item name for DirtyMoneyName
    DirtyMoneyName = 'black_money' 

}

config.washlocations = { -- creates a targetable washing machine to wash money
    {coords = vector3(715.54, 1293.73, 360.3), heading = 0},
    {coords = vector3(-582.39, -1610.78, 27.01), heading = 0},
    {coords = vector3(-1026.74, -408.70, 33.41), heading = 0},
    {coords = vector3(988.88, -1665.24, 37.14), heading = 0},
    -- {coords = vector3(0, 0, 0), heading = 0}, -- add as many as you want...
}

config.blip_settings  = {
    enable = false, -- enable or disable money wash blip (true/false)
    sprite = 500, -- blip sprite/icon (see ref: https://docs.fivem.net/docs/game-references/blips/#blips)
    color = 2, -- blip color (see ref: https://docs.fivem.net/docs/game-references/blips/#blip-colors)
    scale = 0.7, -- blip scale/size (0.1 - 1.0)
    label = 'Money Wash' -- blip label/name
}
