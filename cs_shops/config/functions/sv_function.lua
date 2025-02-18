if CodeStudio.ServerType == "QB" then 
    QBCore = exports['qb-core']:GetCoreObject()
elseif CodeStudio.ServerType == "ESX" then 
    ESX = exports['es_extended']:getSharedObject()
end


function GetPlayer(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        return Player
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        return Player
    end
end

function GetPlayer_Job(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        local job = Player.PlayerData.job.name
        local grade = Player.PlayerData.job.grade.level
        return job, grade
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        local job = Player.job.name
        local grade = Player.job.grade
        return job, grade
    end
end

function GetPlayer_Gang(src)
    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        local job = Player.PlayerData.gang.name
        local grade = Player.PlayerData.gang.grade.level
        return job, grade
    else
        return false
    end
end

function licenseCheck(src, licenses)
    --Support for Advanced ID Card Script: https://codestudio.tebex.io/package/5478588
    if GetResourceState('cs_idcard') == 'started' then 
        for _, licenseType in ipairs(licenses) do
            local result = exports['cs_idcard']:CheckID(src, licenseType)
            if result and result ~= 0 then
                return true
            end
        end
        return false
    end

    if GetResourceState('cs_license') == 'started' then 
        for _, licenseType in ipairs(licenses) do
            local result = exports['cs_license']:CheckID(source, licenseType)
            if result and result ~= 0 then
                return true
            end
        end
        return false
    end

    if CodeStudio.ServerType == 'QB' then
        local Player = QBCore.Functions.GetPlayer(src)
        local playerLicenses = Player.PlayerData.metadata["licences"]
        for _, license in ipairs(licenses) do
            return playerLicenses[license]
        end
        return false
    elseif CodeStudio.ServerType == 'ESX' then
        local Player = ESX.GetPlayerFromId(src)
        local result = MySQL.query.await('SELECT user_licenses.type FROM user_licenses LEFT JOIN licenses ON user_licenses.type = licenses.type WHERE owner = ?', {Player.identifier})
        if #result > 0 then
            for _, license in ipairs(licenses) do
                for _, fetchType in ipairs(result) do
                    return fetchType.type == license
                end
            end
            return false
        end

    end
end

function RemovePlayerMoney(player, amount, bank)
    local success = false

    if CodeStudio.ServerType == 'QB' then
        local accountType = bank and 'bank' or 'cash'
        if amount <= player.PlayerData.money[accountType] then
            player.Functions.RemoveMoney(accountType, amount)
            success = true
        end
    elseif CodeStudio.ServerType == 'ESX' then
        local account = bank and 'bank' or 'money'
        if amount <= player.getAccount(account).money then
            player.removeAccountMoney(account, amount)
            success = true
        end
    end

    return success
end

function AddItem(src, item, amount, metadata)
    if not metadata then metadata = {} end
    if GetResourceState('ox_inventory') == 'started' then
        exports['ox_inventory']:AddItem(src, item, amount, metadata)
    elseif GetResourceState('qs-inventory') == 'started' then
        exports['qs-inventory']:AddItem(src, item, amount, false, metadata)
    else
        if CodeStudio.ServerType == 'QB' then
            local Player = QBCore.Functions.GetPlayer(src)
            Player.Functions.AddItem(item, amount, nil, metadata)
        elseif CodeStudio.ServerType == 'ESX' then
            local Player = ESX.GetPlayerFromId(src)
            Player.addInventoryItem(item, amount, metadata)
        end
    end
end

function BuyItems(data)
    local item = data.item
    local amount = tonumber(data.amount) or 1
    local metadata = data.itemMetaData
    if not metadata then metadata = {} end
    AddItem(data.player, item, amount, metadata)
end
