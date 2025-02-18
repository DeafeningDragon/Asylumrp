function Notify(src, text, notifyType)
    if Config.NotificationType == 'mythic' then
        TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = notifyType, text = text})
    else
        ShowNotification(src, text, notifyType)
    end
end

local webhookLink = ''
local policeWebhookLink = '' -- can be used to send a prison escape alert to police discord

function Webhook(message, police)
    local link = police and policeWebhookLink or webhookLink
    if not link or link == '' then return end

    local msg = {{["color"] = Config.WebhookColor, ["title"] = "**".. _U('webhook_title') .."**", ["description"] = message, ["footer"] = { ["text"] = os.date("%d.%m.%y Time: %X")}}}
    PerformHttpRequest(link, function(err, text, headers) end, 'POST', json.encode({embeds = msg}), { ['Content-Type'] = 'application/json' })
end

function CreateCommands()
    RegisterCommand('jail', function(source, args, raw)
        local targetId = tonumber(args[1])
        local time = tonumber(args[2])

        JailCommand(source, targetId, time, 'jail')
    end, false)

    RegisterCommand('unjail', function(source, args, raw)
        local targetId = tonumber(args[1])
        UnjailCommand(source, targetId)
    end, false)

    if not Config.EnableLockup then return end

    RegisterCommand('lockup', function(source, args, raw)
        local targetId = tonumber(args[1])
        local time = tonumber(args[2])
        local cellIndex = tonumber(args[3])

        if cellIndex and not Config.Coords.lockup.cells[cellIndex] then return end

        JailCommand(source, targetId, time, 'lockup', cellIndex)
    end, false)
end

function PlayerJailed(jailerId, targetId, time, sentenceType) -- called when a player is jailed

end

function PlayerUnjailed(jailerId, targetId, sentenceType) -- called when a player is unjailed
    if Config.DebugMode then print('PlayerUnjailed called', jailerId, targetId, sentenceType) end
end

function TaskRemoveTime(playerId, amount, timeLeft)
    RemoveJailTime(playerId, amount)
end

function TaskBonusRemoveTime(playerId, amount, timeLeft)
    RemoveJailTime(playerId, amount)
end

function RegisterOxStash(identifier)
    if Config.Inventory ~= 'ox' then return end

    local name = ('jail_stash_%s'):format(identifier)
    exports.ox_inventory:RegisterStash(name, _U('stash'), 24, 100000)
end

RegisterNetEvent('tk_jail:missionPedEvent', function(pedIndex, indexes, buttonIndex, eventType)
    local src = source
    local xPlayer = GetPlayerFromId(src)
    local pedData = GetPedData(pedIndex, indexes, buttonIndex)

    if pedData.need then
        for _,v in pairs(pedData.need) do
            if GetItemAmount(xPlayer, v.name) < v.amount then
                Notify(src, _U('missing_items'), 'error')
                return
            end
        end

        for _,v in pairs(pedData.need) do
            RemoveItem(xPlayer, v.name, v.amount)
        end
    end

    if pedData.get then
        for _,v in pairs(pedData.get) do
            AddItem(xPlayer, v.name, v.amount)
        end
    end

    if eventType == 'drugLocation' then
        Notify(src, 'Prisoner: Don\'t trust everyone around here', 'error')
    elseif eventType == 'guardName' then
        Notify(src, 'Prisoner: Guard named Freddie Mason, he is located in the cell block. Get him a medkit and a lot of money and he might help you with getting out.', 'inform')
    end
end)