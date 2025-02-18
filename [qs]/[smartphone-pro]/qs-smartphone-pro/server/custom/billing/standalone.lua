if Config.Billing ~= 'standalone' then return end

---@param source number
---@return Invoice[]
function GetInvoices(source)
    local src = source
    local identifier = GetIdentifier(src)
    local invoices = MySQL.Sync.fetchAll('SELECT * FROM phone_bills WHERE `identifier` = ?', { identifier })
    return invoices
end

RegisterCommand('sendbill', function(source, args)
    local job = GetJobName(source)
    local existJob = table.find(Config.BillJobs, function(v)
        return v == job
    end)
    if not existJob then
        return TriggerClientEvent('phone:client:sendTextMessage', source, Lang('PHONE_NOTIFICATION_BANK_BILL_WHITELIST'), 'error')
    end
    local target = tonumber(args[1])
    local price = tonumber(args[2])
    local reason = table.concat(args, ' ', 3)
    reason = reason == '' and Lang('PHONE_NOTIFICATION_BANK_INVOICE_NO_REASON') or reason
    if not target or not price then
        return TriggerClientEvent('phone:client:sendTextMessage', source, Lang('PHONE_NOTIFICATION_BANK_NO_PLAYER'), 'error')
    end
    local identifier = GetIdentifier(target)
    if not identifier then
        return TriggerClientEvent('phone:client:sendTextMessage', source, Lang('PHONE_NOTIFICATION_BANK_NO_PLAYER'), 'error')
    end
    MySQL.Sync.execute('INSERT INTO `phone_bills` (`identifier`, `sender`, `price`, `label`) VALUES (?, ?, ?, ?)', {
        identifier,
        GetIdentifier(source),
        price,
        reason
    })
    TriggerClientEvent('phone:client:sendTextMessage', source, Lang('PHONE_NOTIFICATION_BANK_BILL_SENT') .. ' ' .. GetPlayerName(target), 'success')
    TriggerClientEvent('phone:sendNotificationOld', target, {
        app = 'bank',
        title = Lang('PHONE_NOTIFICATION_BANK_TITLE'),
        text = Lang('PHONE_NOTIFICATION_BANK_BILL_RECEIVED') .. ' ' .. GetPlayerName(source)
    })
end, false)
