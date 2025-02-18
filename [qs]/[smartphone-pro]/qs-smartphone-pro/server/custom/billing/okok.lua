if Config.Billing ~= 'okok' then return end


---@param source number
---@return Invoice[]
function GetInvoices(source)
    local src = source
    local identifier = GetIdentifier(src)
    local invoices = MySQL.Sync.fetchAll('SELECT * FROM okokbilling WHERE receiver_identifier = ? ORDER BY CASE WHEN status = "unpaid" THEN 1 WHEN status = "autopaid" THEN 2 WHEN status = "paid" THEN 3 WHEN status = "cancelled" THEN 4 END ASC, id DESC', { identifier })
    local data = {}
    for k, v in pairs(invoices) do
        if v.status == 'unpaid' then goto continue end
        table.insert(data, {
            id = v.id,
            price = v.invoice_value,
            label = v.notes or 'No reason',
        })
        ::continue::
    end
    return data
end
