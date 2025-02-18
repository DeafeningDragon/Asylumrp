ESX = Core
QBCore = Core

local YourWebhook = 'WEBHOOK-HERE'  -- help: https://docs.brutalscripts.com/site/others/discord-webhook

function GetWebhook()
    return YourWebhook
end

function SocietyAddMoney(job, price)
    if Config['Core']:upper() == 'ESX' then
        local society = exports['esx_society']:GetSociety(job)
        TriggerEvent('esx_addonaccount:getSharedAccount', society.account, function(account)
            account.addMoney(price)
        end)
    else
        exports['qb-management']:AddMoney(job, price)
    end
end