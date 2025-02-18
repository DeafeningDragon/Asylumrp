if Config.Billing ~= 'qs' then return end

---@param id number
---@return boolean
function PayInvoice(id)
        TriggerEvent('qs-billing:client:Notify', 'You must go to pay it presentialy or in your invoice tablet', 'info')
    return true
end