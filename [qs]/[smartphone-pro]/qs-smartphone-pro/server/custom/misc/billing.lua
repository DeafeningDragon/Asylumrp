RegisterServerCallback('phone:getBankData', function(source, cb)
    local src = source
    local bankMoney = GetBankMoney(src)
    local invoices = GetInvoices(src)
    cb({
        balance = bankMoney,
        invoices = invoices,
    })
end)

RegisterServerCallback('phone:payInvoice', function(source, cb, invoiceId)
    local src = source
    local bill = MySQL.Sync.fetchAll('SELECT * FROM `phone_bills` WHERE `id` = ?', { invoiceId })
    if not bill[1] then
        TriggerClientEvent('phone:client:sendTextMessage', src, Lang('PHONE_NOTIFICATION_BANK_BILL_NO_DATA'), 'error')
        return cb(false)
    end
    bill = bill[1]
    local price = bill.price
    local sender = bill.sender
    local bankMoney = GetBankMoney(src)
    if bankMoney >= price then
        MySQL.Sync.execute('DELETE FROM `phone_bills` WHERE `id` = ?', { invoiceId })
        RemoveBankMoney(src, price)
        TriggerClientEvent('phone:client:sendTextMessage', src, Lang('PHONE_NOTIFICATION_BANK_BILL_PAID') .. price, 'success')
        cb(true)
    else
        TriggerClientEvent('phone:client:sendTextMessage', src, Lang('PHONE_NOTIFICATION_BANK_BILL_NO_MONEY'), 'error')
        cb(false)
    end
end)
