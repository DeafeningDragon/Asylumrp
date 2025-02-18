if Config.Billing ~= 'okok' then return end

---@param id number
---@return boolean
function PayInvoice(id)
    TriggerServerEvent('okokBilling:PayInvoice', id)
    Wait(250) -- Wait until the server has processed the request (this is a bad way to do it. Use callbacks instead)
    return true
end
