-- These setup the foundations for ESX / vRP / QBCore permissions
if main.hoseCommand.ESX.enabled then
    ESX = nil
    ESX = exports["es_extended"]:getSharedObject()
end

if main.hoseCommand.vRP.enabled then
    Proxy = module("vrp", "lib/Proxy")
    vRP = Proxy.getInterface("vRP")
end

if main.hoseCommand.QBCore.enabled then
    QBCore = exports["qb-core"]:GetCoreObject()
end
-- End of permissions setup

function ToggleHose(id)
    handleHoseToggle(id)
end

exports("ToggleHose", ToggleHose)

function ToggleFoam(id)
    if usingSmartFires then
        toggleFoamNew(id)
    else
        toggleFoamOld(id)
    end
end

exports("ToggleFoam", ToggleFoam)

-- Permission Checks for Hose Command
-- Feel free to edit below if you feel confident
function userHasPermission(source, location)
    local permission = false
    local usingPermissions = false
    -- Ace Permissions
    if location.acePermissions.enabled then
        usingPermissions = true
        -- Ace Permission Validation (if enabled in config)
        if IsPlayerAceAllowed(source, "command."..location.commandName) then
            permission = true
        end
    end

    -- ESX Permissions
    if location.ESX.enabled then
        local xPlayer = ESX.GetPlayerFromId(source)
        if location.ESX.checkJob.enabled then
            usingPermissions = true
            for k, v in pairs(location.ESX.checkJob.jobs) do
                if xPlayer.job.name == v then
                    permission = true
                end
            end
        end
    end

    -- vRP Permission
    if location.vRP.enabled then
        if location.vRP.checkPermission.enabled then
            usingPermissions = true
            for k, v in pairs(location.vRP.checkPermission.permissions) do
                if vRP.hasPermission({vRP.getUserId({source}),v}) then
                    permission = true
                end
            end
        end

        if location.vRP.checkGroup.enabled then
            usingPermissions = true
            for k, v in pairs(location.vRP.checkGroup.groups) do
                if vRP.hasGroup({vRP.getUserId({source}),v}) then
                    permission = true
                end
            end
        end
    end

    -- QBCore Permission
    if location.QBCore.enabled then
        local player = QBCore.Functions.GetPlayer(source)
        if location.QBCore.checkJob.enabled then
            usingPermissions = true
            for k, v in pairs(location.QBCore.checkJob.jobs) do
                if player.PlayerData.job.name == v then
                    permission = true
                end
            end
        end
        if location.QBCore.checkPermission.enabled then
            usingPermissions = true
            for k, v in pairs(location.QBCore.checkPermission.permissions) do
                if QBCore.Functions.HasPermission(source, v) then
                    permission = true
                end
            end
        end
    end

    if not usingPermissions then
        permission = true
    end
    return permission
end