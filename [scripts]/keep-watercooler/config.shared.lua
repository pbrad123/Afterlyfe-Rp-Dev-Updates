Config = Config or {}

Config.target = 'qb-target' -- interactionMenu / qb-target / ox_target

Config.hydrationValue = 10
Config.excessiveDrinkCount = 3

AddEventHandler('keep-watercooler:client:emote', function(entity, setDrinkingFlag)
    -- start emote
    -- setDrinkingFlag(true)

    -- wait(x)

    -- end emote
    -- setDrinkingFlag(false)
end)
