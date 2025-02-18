if Config.Billing ~= 'standalone' then return end

---@param id number
---@return boolean
function PayInvoice(id)
    return TriggerServerCallbackSync('phone:payInvoice', id)
end
