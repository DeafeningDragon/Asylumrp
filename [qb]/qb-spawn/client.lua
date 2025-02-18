local QBCore = exports['qb-core']:GetCoreObject()
local camZPlus1 = 1500
local camZPlus2 = 50
local pointCamCoords = 75
local pointCamCoords2 = 0
local cam1Time = 500
local cam2Time = 1000
local choosingSpawn = false
local Houses = {}
local cam = nil
local cam2 = nil

-- Functions

local function SetDisplay(bool)
    local translations = {}
    for k in pairs(Lang.fallback and Lang.fallback.phrases or Lang.phrases) do
        if k:sub(0, #'ui.') then
            translations[k:sub(#'ui.' + 1)] = Lang:t(k)
        end
    end
    choosingSpawn = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        action = "showUi",
        status = bool,
        translations = translations
    })
end

-- Events

RegisterNetEvent('qb-spawn:client:openUI', function(value)
    SetEntityVisible(PlayerPedId(), false)
    DoScreenFadeOut(250)
    Wait(1000)
    DoScreenFadeIn(250)
    QBCore.Functions.GetPlayerData(function(PlayerData)
        cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", PlayerData.position.x, PlayerData.position.y, PlayerData.position.z + camZPlus1, -85.00, 0.00, 0.00, 100.00, false, 0)
        SetCamActive(cam, true)
        RenderScriptCams(true, false, 1, true, true)
    end)
    Wait(500)
    SetDisplay(value)
end)

RegisterNetEvent('qb-houses:client:setHouseConfig', function(houseConfig)
    Houses = houseConfig
end)

RegisterNetEvent('qb-spawn:client:setupSpawns', function(cData, new, apps)
    if not new then
        QBCore.Functions.TriggerCallback('qb-spawn:server:getOwnedHouses', function(houses)
            local myHouses = {}
            if houses ~= nil then
                for i = 1, (#houses), 1 do
                    myHouses[#myHouses+1] = {
                        house = houses[i].houseName,
                        label = houses[i].houseName,
                    }
                end
            end

            Wait(500)
            SendNUIMessage({
                action = "setupLocations",
                locations = QB.Spawns,
                houses = myHouses,
                isNew = new
            })
        end, cData.citizenid)
    elseif new then
        SendNUIMessage({
            action = "setupAppartements",
            locations = QB.Locations,
            isNew = new
        })
    end
end)

-- NUI Callbacks

RegisterNUICallback("exit", function(_, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "showUi",
        status = false
    })
    choosingSpawn = false
    cb("ok")
end)

local function SetCam(campos)
    cam2 = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus1, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam2, campos.x, campos.y, campos.z + pointCamCoords)
    SetCamActiveWithInterp(cam2, cam, cam1Time, true, true)
    if DoesCamExist(cam) then
        DestroyCam(cam, true)
    end
    Wait(cam1Time)

    cam = CreateCamWithParams("DEFAULT_SCRIPTED_CAMERA", campos.x, campos.y, campos.z + camZPlus2, 300.00,0.00,0.00, 110.00, false, 0)
    PointCamAtCoord(cam, campos.x, campos.y, campos.z + pointCamCoords2)
    SetCamActiveWithInterp(cam, cam2, cam2Time, true, true)
    SetEntityCoords(PlayerPedId(), campos.x, campos.y, campos.z)
end

RegisterNUICallback('setCam', function(data, cb)
    local location = tostring(data.posname)
    local type = tostring(data.type)
    DoScreenFadeOut(200)
    Wait(500)
    DoScreenFadeIn(200)
    if DoesCamExist(cam) then DestroyCam(cam, true) end
    if DoesCamExist(cam2) then DestroyCam(cam2, true) end
    if type == "current" then
        QBCore.Functions.GetPlayerData(function(PlayerData)
            SetCam(PlayerData.position)
        end)
    elseif type == "house" then
        ExecuteFindAction(location, function(housesInfo)
            local result = nil
            for k, v in pairs(housesInfo) do
                if housesInfo[k] then
                    if housesInfo[k].houseName == location then
                        result = housesInfo[k]
                        
                        break
                    end
                end
            end

            if result then
                SetCam(result.doorCoords)
            end
        end)
    elseif type == "normal" then
        SetCam(QB.Spawns[location].coords)
    elseif type == "appartment" then
        SetCam(Apartments.Locations[location].coords.enter)
    end
    cb('ok')
end)

RegisterNUICallback('chooseAppa', function(data, cb)
    local ped = PlayerPedId()
    local appaYeet = data.appType
    SetDisplay(false)
    DoScreenFadeOut(500)

    TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
    TriggerEvent('QBCore:Client:OnPlayerLoaded')

    Wait(5000)

    QBCore.Functions.TriggerCallback('jpr-housingsystem:server:giveStarterApartment', function(houseInfos)
        if houseInfos then
            local infos = {
                args = houseInfos
            }

            TriggerEvent("jpr-housingsystem:client:entrarCasaComprada", infos)

            FreezeEntityPosition(ped, false)
            RenderScriptCams(false, true, 500, true, true)
            SetCamActive(cam, false)
            DestroyCam(cam, true)
            SetCamActive(cam2, false)
            DestroyCam(cam2, true)
            SetEntityVisible(ped, true)

            Wait(3500)
            DoScreenFadeIn(500)
            SetEntityCoords(PlayerPedId(), 260.86, -999.27, -100.01)
            TriggerEvent('qb-clothes:client:CreateFirstCharacter')
        end
    end, appaYeet)

    cb('ok')
end)

local function PreSpawnPlayer()
    SetDisplay(false)
    DoScreenFadeOut(500)
    Wait(2000)
end

local function PreSpawnPlayerHouse()
    SetDisplay(false)
    DoScreenFadeOut(500)
    Wait(6000)
end

local function PostSpawnPlayer(ped)
    FreezeEntityPosition(ped, false)
    RenderScriptCams(false, true, 500, true, true)
    SetCamActive(cam, false)
    DestroyCam(cam, true)
    SetCamActive(cam2, false)
    DestroyCam(cam2, true)
    SetEntityVisible(PlayerPedId(), true)
    Wait(500)
    DoScreenFadeIn(250)
end

RegisterNUICallback('spawnplayer', function(data, cb)
    local location = tostring(data.spawnloc)
    local type = tostring(data.typeLoc)
    local ped = PlayerPedId()
    local PlayerData = QBCore.Functions.GetPlayerData()
    local insideMeta = PlayerData.metadata["inside"]
    if type == "current" then
        PreSpawnPlayer()
        QBCore.Functions.GetPlayerData(function(pd)
            ped = PlayerPedId()
            SetEntityCoords(ped, pd.position.x, pd.position.y, pd.position.z)
            SetEntityHeading(ped, pd.position.a)
            FreezeEntityPosition(ped, false)
        end)

        if insideMeta.house ~= nil then
            local houseId = insideMeta.house
            TriggerEvent('qb-houses:client:LastLocationHouse', houseId)
        elseif insideMeta.apartment.apartmentType ~= nil or insideMeta.apartment.apartmentId ~= nil then
            local apartmentType = insideMeta.apartment.apartmentType
            local apartmentId = insideMeta.apartment.apartmentId
            TriggerEvent('qb-apartments:client:LastLocationHouse', apartmentType, apartmentId)
        end
        TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
        TriggerEvent('QBCore:Client:OnPlayerLoaded')
        PostSpawnPlayer()
    elseif type == "house" then
        local ped = PlayerPedId()
        PreSpawnPlayerHouse(ped)

        ExecuteFindAction(location, function(housesInfo)
            local result = nil
            for k, v in pairs(housesInfo) do
                if housesInfo[k] then
                    if housesInfo[k].houseName == location then
                        result = housesInfo[k]
                        
                        break
                    end
                end
            end

            if result then
                if not result.mlo then
                    result = {
                        args = result
                    }
            
                    TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
                    TriggerEvent('QBCore:Client:OnPlayerLoaded')
                    Wait(6000)

                    if not result.args.doorInside.isShell then
                        TriggerEvent('jpr-housingsystem:client:entrarCasaComprada', result)
                    else
                        TriggerEvent('jpr-housingsystem:client:entrarCasaCompradaShell', result)
                    end

                    FreezeEntityPosition(PlayerPedId(), false)
                else
                    TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
                    TriggerEvent('QBCore:Client:OnPlayerLoaded')
                    Wait(6000)

                    FreezeEntityPosition(PlayerPedId(), false)
                    SetEntityCoords(PlayerPedId(), result.doorCoords.x, result.doorCoords.y, result.doorCoords.z)
                end

                Wait(1500)
                PostSpawnPlayer(ped)
            else
                PreSpawnPlayer()
                QBCore.Functions.GetPlayerData(function(pd)
                    ped = PlayerPedId()
                    SetEntityCoords(ped, pd.position.x, pd.position.y, pd.position.z)
                    SetEntityHeading(ped, pd.position.a)
                    FreezeEntityPosition(ped, false)
                end)

                TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
                TriggerEvent('QBCore:Client:OnPlayerLoaded')
                PostSpawnPlayer()
            end
        end)
    elseif type == "normal" then
        local pos = QB.Spawns[location].coords
        PreSpawnPlayer()
        SetEntityCoords(ped, pos.x, pos.y, pos.z)
        TriggerServerEvent('QBCore:Server:OnPlayerLoaded')
        TriggerEvent('QBCore:Client:OnPlayerLoaded')
        TriggerServerEvent('qb-houses:server:SetInsideMeta', 0, false)
        TriggerServerEvent('qb-apartments:server:SetInsideMeta', 0, 0, false)
        Wait(500)
        SetEntityCoords(ped, pos.x, pos.y, pos.z)
        SetEntityHeading(ped, pos.w)
        PostSpawnPlayer()
    end
    cb('ok')
end)

-- Threads

CreateThread(function()
    while true do
        Wait(0)
        if choosingSpawn then
            DisableAllControlActions(0)
        else
            Wait(1000)
        end
    end
end)

function ExecuteFindAction(location, callback)
    QBCore.Functions.TriggerCallback('jpr-housingsystem:server:EnviarInfosParaSpawn', function(housesInfo)
        callback(housesInfo)
    end)
end