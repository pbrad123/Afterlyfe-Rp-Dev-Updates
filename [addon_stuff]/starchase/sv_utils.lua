-- Add your Discord webhook here if you have enabled logging
logging.webhook = ""

-- These setup the foundations for ESX / vRP / QBCore permissions
QBCore = nil
vRP = nil
ESX = nil
if main.ESX.enabled then
    ESX = exports["es_extended"]:getSharedObject()
end

if main.vRP.enabled then
    Proxy = module("vrp", "lib/Proxy")
    vRP = Proxy.getInterface("vRP")
end

if main.QBCore.enabled then
    QBCore = exports["qb-core"]:GetCoreObject()
end
-- End of permissions setup

function userHasPermission(source, location)
    local permission = false
    local usingPermissions = false
    if main.ESX.enabled then
        usingPermissions = true
        local xPlayer = ESX.GetPlayerFromId(source)
        for k, v in pairs(main.ESX.groupsToCheck) do
            if xPlayer.job.name == v then
                permission = true
                break
            end
        end
        
    end
    if main.QBCore.enabled then
        usingPermissions = true
        local Player = QBCore.Functions.GetPlayer(source)
        local jobName = Player.PlayerData.job.name
        for k, v in pairs(main.QBCore.groupsToCheck) do
            if jobName == v then
                permission = true
                break
            end
        end
        
    end
    if main.vRP.enabled then
        usingPermissions = true
        for k, v in pairs(main.vRP.groupsToCheck) do
            local userid = vRP.getUserId({source})
            if vRP.hasGroup({userid, v}) then
                permission = true
                break
            end
        end
    end

    if main.acePermissions.enabled then
        usingPermissions = true
        for k, v in pairs(main.acePermissions.permsToCheck) do
            if IsPlayerAceAllowed(source, v) then
                permission = true
                break
            end
            
        end
    end

    if not usingPermissions then
        permission = true
    end
    return permission
end

-- This handles the Discord logging system
function normalLog(source, action, data)
    if not logging.enabled then return nil end
    local embed = {
        {
            ["fields"] = {
              {
                  ["name"] = "**Player:**",
                  ["value"] = GetPlayerName(source).." ("..source..")",
                  ["inline"] = true
              },
              {
                  ["name"] = "**Action:**",
                  ["value"] = action,
                  ["inline"] = false
              },
              {
                  ["name"] = "**Data:**",
                  ["value"] = tostring(data),
                  ["inline"] = false
              },
            },
            ["color"] = logging.colour,
            ["title"] = logging.title,
            ["description"] = "",
            ["footer"] = {
                ["text"] = "Timestamp: "..os.date(logging.dateFormat),
                ["icon_url"] = logging.footerIcon,
            },
            ["thumbnail"] = {
                ["url"] = logging.icon,
            },
        }
    }
    PerformHttpRequest(logging.webhook, function(err, text, headers) end, 'POST', json.encode({username = logging.displayName, embeds = embed}), { ['Content-Type'] = 'application/json' })
end