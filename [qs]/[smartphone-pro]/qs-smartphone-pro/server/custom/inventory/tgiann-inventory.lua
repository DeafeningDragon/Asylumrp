---@diagnostic disable
if Config.Inventory ~= 'tgiann-inventory' then
    return
end

function GetUserData(identifier)
    local str = ([[
        SELECT %s FROM %s WHERE %s = ?
    ]]):format(Config.Framework == 'esx' and 'firstname, lastname, phone_number' or 'charinfo', userColumn, identifierTable)
    local result = MySQL.Sync.fetchAll(str, {
        identifier
    })
    result = result[1]
    if not result then return false end
    local firstname, lastname, phone
    if Config.Framework == 'esx' then
        firstname = result.firstname
        lastname = result.lastname
        phone = result.phone_number
    elseif Config.Framework == 'qb' then
        local data = json.decode(result.charinfo)
        firstname = data.firstname
        lastname = data.lastname
        phone = data.phone
    end
    if not phone and Config.Framework == 'esx' then
        phone = Config.Prefix .. math.random(StartDigit, FinishDigit)
        MySQL.Sync.execute('UPDATE `users` SET `phone_number` = ? WHERE `identifier` = ?', {
            phone,
            identifier
        })
    end
    return firstname, lastname, phone
end

function InitPhoneMeta(src, slot, info)
    local item = exports["tgiann-inventory"]:GetItemBySlot(src, slot)
    if not item then return end
    exports["tgiann-inventory"]:UpdateItemMetadata(src, item.name, item.slot, info)
    Debug('Init phone meta', src, json.encode(item))
end

function SaveMetadataToInventory(src, customNumber)
    local items = exports["tgiann-inventory"]:GetPlayerItems(src)
    if not items then return end
    local phone = customNumber or MetaData[src].phoneNumber
    for _, v in pairs(items) do
        local meta = v.info
        if meta.phoneNumber == phone and PhoneIsUseable(meta.uniqueId) then
            exports["tgiann-inventory"]:UpdateItemMetadata(src, v.name, v.slot, MetaData[src])
            break
        end
    end
end

function RegisterItems()
    for k, v in pairs(Config.Phones) do
        print(k, "registired")
        RegisterUsableItem(k, function(source, item)
            if not item?.info or not item?.info?.phoneNumber then
                local identifier = GetIdentifier(source)
                local firstname, lastname = GetUserData(identifier)
                local info = CreatePhoneMetaData({
                    firstname = firstname,
                    lastname = lastname,
                    identifier = identifier,
                })
                item.info = info
                InitPhoneMeta(source, item.slot, info)
                Debug('Created phone meta')
                print('Created phone meta')
            end
            print("open")
            print(json.encode(item))
            TriggerClientEvent('phone:openPhone', source, v, k, item.info)
        end)
    end
end

exports('handleDeleteItem', function(source, itemData)
    if itemData then
        local metaPhone = MetaData[source]?.phoneNumber
        local itemIsPhone = ItemIsPhone(itemData.name)
        if not itemIsPhone then return end
        local itemPhoneNumber = itemData.info.phoneNumber
        if metaPhone and itemPhoneNumber and itemPhoneNumber == metaPhone then
            MetaData[source] = nil
            TriggerClientEvent('phone:UpdatedMeta', source, nil)
            Debug('Cleared metadata. for: ' .. source)
        end
    else
        local metaPhone = MetaData[source]?.phoneNumber
        local existPhone = FindUserExistPhone(source, metaPhone)
        if not existPhone then
            MetaData[source] = nil
            TriggerClientEvent('phone:UpdatedMeta', source, nil)
            Debug('Cleared metadata. for: ' .. source)
        end
    end
end)