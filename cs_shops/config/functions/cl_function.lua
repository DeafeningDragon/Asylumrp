function DisableControls()  --Works if you enable EnableMouseControl in config

    DisableControlAction(0, 24, true) -- Attack
    DisableControlAction(0, 257, true) -- Attack 2
    DisableControlAction(0, 25, true) -- Aim
    DisableControlAction(0, 263, true) -- Melee Attack 1

    DisableControlAction(0, 45, true) -- Reload
    DisableControlAction(0, 22, true) -- Jump
    DisableControlAction(0, 44, true) -- Cover
    DisableControlAction(0, 37, true) -- Select Weapon
    DisableControlAction(0, 23, true) -- Also 'enter'?

    DisableControlAction(0, 288, true) -- Disable phone
    DisableControlAction(0, 289, true) -- Inventory
    DisableControlAction(0, 170, true) -- Animations
    DisableControlAction(0, 167, true) -- Job

    DisableControlAction(0, 26, true) -- Disable looking behind
    DisableControlAction(0, 73, true) -- Disable clearing animation
    DisableControlAction(2, 199, true) -- Disable pause screen

    DisableControlAction(0, 59, true) -- Disable steering in vehicle
    DisableControlAction(0, 71, true) -- Disable driving forward in vehicle
    DisableControlAction(0, 72, true) -- Disable reversing in vehicle

    DisableControlAction(2, 36, true) -- Disable going stealth

    DisableControlAction(0, 264, true) -- Disable melee
    DisableControlAction(0, 257, true) -- Disable melee
    DisableControlAction(0, 140, true) -- Disable melee
    DisableControlAction(0, 141, true) -- Disable melee
    DisableControlAction(0, 142, true) -- Disable melee
    DisableControlAction(0, 143, true) -- Disable melee
    DisableControlAction(0, 75, true)  -- Disable exit vehicle
    DisableControlAction(27, 75, true) -- Disable exit vehicle
end

function Notification(msg, state)
    lib.notify({
        title = 'Shop',
        description = msg,
        type = state
    })
end

function fetchImage(item)
    local img
    if GetResourceState('ox_inventory') == 'started' then
        img = 'ox_inventory/web/images/'
    elseif GetResourceState('qs-inventory') == 'started' then
        img = 'qs-inventory/html/images/'
    else
        img = 'qb-inventory/html/images/'  -- Edit this if you want to put your own Inventory Image Directory
    end

    if CodeStudio.Settings.useInventoryImage then
        if GetResourceState('qb-inventory') == 'started' then
            local QBCore = exports['qb-core']:GetCoreObject()
            if QBCore.Shared.Items[tostring(item)] then
                if string.find(QBCore.Shared.Items[tostring(item)].image, "images/") then
                    img = img..string.sub(QBCore.Shared.Items[tostring(item)].image, 8)
                else
                    img = img..QBCore.Shared.Items[tostring(item)].image
                end
            end
        else
            img = img..tostring(item)..'.png'
        end
    else
        img = 'cs_shops/ui/image/'..tostring(item)..'.png'
    end
    return img
end


function onEnterZone(data)
    lib.showTextUI('[E] '..data.label)
end

function onExitZone()
    lib.hideTextUI()
end


-- This Event Triggers When Shops UI Open --
RegisterNetEvent('cs:shops:opened', function()

end)

-- This Event Triggers When Shops UI Close --
RegisterNetEvent('cs:shops:closeUI', function()

end)


-- This Will Restock ALl Items in Shops --

-- RegisterCommand('restock', function()
--     TriggerServerEvent('cs:shops:reStock')  
-- end)