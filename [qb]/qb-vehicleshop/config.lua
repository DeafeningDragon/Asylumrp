Config = {}
Config.UsingTarget = GetConvar('UseTarget', 'false') == 'true'
Config.Commission = 0.10                              -- Percent that goes to sales person from a full car sale 10%
Config.FinanceCommission = 0.05                       -- Percent that goes to sales person from a finance sale 5%
Config.PaymentWarning = 10                            -- time in minutes that player has to make payment before repo
Config.PaymentInterval = 24                           -- time in hours between payment being due
Config.MinimumDown = 10                               -- minimum percentage allowed down
Config.MaximumPayments = 24                           -- maximum payments allowed
Config.PreventFinanceSelling = true                  -- allow/prevent players from using /transfervehicle if financed
Config.Shops = {
    ['pdm'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-53.9, -1069.55),
                vector2(-72.77, -1122.18),
                vector2(-15.74, -1120.55),
                vector2(-1.59, -1081.62),
            },
            ['minZ'] = 25.0,                                         -- min height of the shop zone
            ['maxZ'] = 28.0,                                         -- max height of the shop zone
            ['size'] = 2.75                                          -- size of the vehicles zones
        },
        ['Job'] = 'none',                                            -- Name of job or none
        ['ShopLabel'] = 'Premium Deluxe Motorsport',                 -- Blip name
        ['Categories'] = { -- Categories available to browse
            ['sedans'] = 'Sedans',
            ['coupes'] = 'Coupes',
            ['suvs'] = 'SUVs',
            ['muscle'] = 'Muscle',
            ['compacts'] = 'Compacts',
            ['vans'] = 'Vans'
        },
        ['showBlip'] = true,                                         -- true or false
        ['blipSprite'] = 326,                                        -- Blip sprite
        ['blipColor'] = 3,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-45.67, -1098.34, 26.42),             -- Blip Location
        ['ReturnLocation'] = vector3(-17.11, -1098.39, 26.95),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-23.36, -1094.05, 27.31, 333.85),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-14.96, -1081.41, 27.05, 64.0), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-28.36, -1103.76, 27.27),          -- Where the finance menu is located
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-37.07, -1093.17, 27.3, 95.12), -- where the vehicle will spawn on display
                defaultVehicle = 'r82012',                       -- Default display vehicle
                chosenVehicle = 'r82012',                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-42.55, -1101.63, 27.3, 131.28),
                defaultVehicle = 'm2ac',
                chosenVehicle = 'm2ac'
            },
            [3] = {
                coords = vector4(-47.72, -1092.33, 27.3, 122.54),
                defaultVehicle = 'wrx19',
                chosenVehicle = 'wrx19'
            },
            [4] = {
                coords = vector4(-55.08, -1096.56, 27.3, 121.3),
                defaultVehicle = 'offbaseq50',
                chosenVehicle = 'offbaseq50'
            },
            [5] = {
                coords = vector4(-49.83, -1083.96, 27.3, 322.38),
                defaultVehicle = 'stkshiftcat',
                chosenVehicle = 'stkshiftcat'
            }
        },
    },
    ['luxury'] = {
        ['Type'] = 'free-use', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(-1260.6973876953, -349.21334838867),
                vector2(-1268.6248779297, -352.87365722656),
                vector2(-1274.1533203125, -358.29794311523),
                vector2(-1273.8425292969, -362.73715209961),
                vector2(-1270.5701904297, -368.6716003418),
                vector2(-1266.0561523438, -375.14080810547),
                vector2(-1244.3684082031, -362.70278930664),
                vector2(-1249.8704833984, -352.03326416016),
                vector2(-1252.9503173828, -345.85726928711)
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 37.516143798828,
            ['size'] = 2.75    -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Luxury Vehicle Shop',
        ['Categories'] = { -- Categories available to browse
            ['super'] = 'Super',
            ['sportclassics'] = 'Sport Classics',
        },        
        ['showBlip'] = true,   -- true or false
        ['blipSprite'] = 326,  -- Blip sprite
        ['blipColor'] = 3,     -- Blip color
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(-1255.6, -361.16, 36.91),
        ['ReturnLocation'] = vector3(-1231.46, -349.86, 37.33),
        ['VehicleSpawn'] = vector4(-1231.46, -349.86, 37.33, 26.61),
        ['TestDriveSpawn'] = vector4(-1232.81, -347.99, 37.33, 23.28), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-1256.18, -368.23, 36.91),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1265.31, -354.44, 35.91, 205.08),
                defaultVehicle = 'gtr50',
                chosenVehicle = 'gtr50'
            },
            [2] = {
                coords = vector4(-1270.06, -358.55, 35.91, 247.08),
                defaultVehicle = 'cullinanbb',
                chosenVehicle = 'cullinanbb'
            },
            [3] = {
                coords = vector4(-1269.21, -365.03, 35.91, 297.12),
                defaultVehicle = 'chiron',
                chosenVehicle = 'chiron'
            },
            [4] = {
                coords = vector4(-1252.07, -364.2, 35.91, 56.44),
                defaultVehicle = 'evija',
                chosenVehicle = 'evija'
            },
            [5] = {
                coords = vector4(-1255.49, -365.91, 35.91, 55.63),
                defaultVehicle = 'huayrar',
                chosenVehicle = 'huayrar'
            },
            [6] = {
                coords = vector4(-1249.21, -362.97, 35.91, 53.24),
                defaultVehicle = 'merclady',
                chosenVehicle = 'merclady'
            },
        }
    },                         -- Add your next table under this comma
    ['boats'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-729.39, -1315.84),
                vector2(-766.81, -1360.11),
                vector2(-754.21, -1371.49),
                vector2(-716.94, -1326.88)
            },
            ['minZ'] = 0.0,                                            -- min height of the shop zone
            ['maxZ'] = 5.0,                                            -- max height of the shop zone
            ['size'] = 6.2                                             -- size of the vehicles zones
        },
        ['Job'] = 'none',                                              -- Name of job or none
        ['ShopLabel'] = 'Marina Shop',                                 -- Blip name
        ['Categories'] = { -- Categories available to browse
            ['boats'] = 'boats',
        },
        ['showBlip'] = true,                                           -- true or false
        ['blipSprite'] = 410,                                          -- Blip sprite
        ['blipColor'] = 3,                                             -- Blip color
        ['TestDriveTimeLimit'] = 1.5,                                  -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-738.25, -1334.38, 1.6),                -- Blip Location
        ['ReturnLocation'] = vector3(-714.34, -1343.31, 0.0),          -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-727.87, -1353.1, -0.17, 137.09),   -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-722.23, -1351.98, 0.14, 135.33), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-729.86, -1319.13, 1.6),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-727.05, -1326.59, 0.00, 229.5), -- where the vehicle will spawn on display
                defaultVehicle = 'seashark',                      -- Default display vehicle
                chosenVehicle = 'seashark'                        -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-732.84, -1333.5, -0.50, 229.5),
                defaultVehicle = 'dinghy',
                chosenVehicle = 'dinghy'
            },
            [3] = {
                coords = vector4(-737.84, -1340.83, -0.50, 229.5),
                defaultVehicle = 'speeder',
                chosenVehicle = 'speeder'
            },
            [4] = {
                coords = vector4(-741.53, -1349.7, -2.00, 229.5),
                defaultVehicle = 'marquis',
                chosenVehicle = 'marquis'
            },
        },
    },
    ['air'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a vehicle
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(-1607.58, -3141.7),
                vector2(-1672.54, -3103.87),
                vector2(-1703.49, -3158.02),
                vector2(-1646.03, -3190.84)
            },
            ['minZ'] = 12.99,                                            -- min height of the shop zone
            ['maxZ'] = 16.99,                                            -- max height of the shop zone
            ['size'] = 7.0,                                              -- size of the vehicles zones
        },
        ['Job'] = 'none',                                                -- Name of job or none
        ['ShopLabel'] = 'Air Shop',                                      -- Blip name
        ['Categories'] = { -- Categories available to browse
            ['air'] = 'air',
        },
        ['showBlip'] = true,                                             -- true or false
        ['blipSprite'] = 251,                                            -- Blip sprite
        ['blipColor'] = 3,                                               -- Blip color
        ['TestDriveTimeLimit'] = 1.5,                                    -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(-1652.76, -3143.4, 13.99),                -- Blip Location
        ['ReturnLocation'] = vector3(-1628.44, -3104.7, 13.94),          -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(-1617.49, -3086.17, 13.94, 329.2),    -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(-1625.19, -3103.47, 13.94, 330.28), -- Spawn location for test drive
        ['FinanceZone'] = vector3(-1619.52, -3152.64, 14.0),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(-1651.36, -3162.66, 12.99, 346.89), -- where the vehicle will spawn on display
                defaultVehicle = 'volatus',                          -- Default display vehicle
                chosenVehicle = 'volatus'                            -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(-1668.53, -3152.56, 12.99, 303.22),
                defaultVehicle = 'luxor2',
                chosenVehicle = 'luxor2'
            },
            [3] = {
                coords = vector4(-1632.02, -3144.48, 12.99, 31.08),
                defaultVehicle = 'nimbus',
                chosenVehicle = 'nimbus'
            },
            [4] = {
                coords = vector4(-1663.74, -3126.32, 12.99, 275.03),
                defaultVehicle = 'frogger',
                chosenVehicle = 'frogger'
            },
        },
    },
    ['truck'] = {
        ['Type'] = 'free-use', -- no player interaction is required to purchase a car
        ['Zone'] = {
            ['Shape'] = {      --polygon that surrounds the shop
                vector2(856.91046142578, -1181.4660644532),
                vector2(922.666015625, -1178.8934326172),
                vector2(921.7074584961, -1153.4362792968),
                vector2(894.02233886718, -1153.185180664),
                vector2(894.08135986328, -1154.2734375),
                vector2(887.91284179688, -1154.3431396484),
                vector2(887.76403808594, -1155.2556152344),
                vector2(872.04608154296, -1155.3488769532),
                vector2(872.05163574218, -1139.1412353516),
                vector2(857.6060180664, -1139.501953125)
            },
            ['minZ'] = 22.0,                                         -- min height of the shop zone
            ['maxZ'] = 28.0,                                         -- max height of the shop zone
            ['size'] = 5.75                                          -- size of the vehicles zones
        },
        ['Job'] = 'none',                                            -- Name of job or none
        ['ShopLabel'] = 'Truck Motor Shop',                          -- Blip name
        ['showBlip'] = true,                                         -- true or false
        ['blipSprite'] = 477,                                        -- Blip sprite
        ['blipColor'] = 2,                                           -- Blip color
        ['TestDriveTimeLimit'] = 0.5,                                -- Time in minutes until the vehicle gets deleted
        ['Location'] = vector3(900.47, -1155.74, 25.16),             -- Blip Location
        ['ReturnLocation'] = vector3(900.47, -1155.74, 25.16),       -- Location to return vehicle, only enables if the vehicleshop has a job owned
        ['VehicleSpawn'] = vector4(909.35, -1181.58, 25.55, 177.57), -- Spawn location when vehicle is bought
        ['TestDriveSpawn'] = vector4(867.65, -1192.4, 25.37, 95.72), -- Spawn location for test drive
        ['FinanceZone'] = vector3(900.46, -1154.86, 25.16),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(890.84, -1170.92, 25.08, 269.58), -- where the vehicle will spawn on display
                defaultVehicle = 'hauler',                         -- Default display vehicle
                chosenVehicle = 'hauler',                          -- Same as default but is dynamically changed when swapping vehicles
            },
            [2] = {
                coords = vector4(878.45, -1171.04, 25.05, 273.08),
                defaultVehicle = 'phantom',
                chosenVehicle = 'phantom'
            },
            [3] = {
                coords = vector4(880.44, -1163.59, 24.87, 273.08),
                defaultVehicle = 'mule',
                chosenVehicle = 'mule'
            },
            [4] = {
                coords = vector4(896.95, -1162.62, 24.98, 273.08),
                defaultVehicle = 'mixer',
                chosenVehicle = 'mixer'
            },
        },
    },
    ['motorcycles'] = {
        ['Type'] = 'free-use', -- meaning a real player has to sell the car
        ['Zone'] = {
            ['Shape'] = {
                vector2(365.96, -1168.37),
                vector2(366.04, -1144.05),
                vector2(230.58, -1142.65),
                vector2(235.99, -1172.57),
                vector2(268.87, -1175.68),
                vector2(268.97, -1177.9),
                vector2(307.02, -1187.86),
                vector2(308.05, -1168.28),
            },
            ['minZ'] = 36.646457672119,
            ['maxZ'] = 37.516143798828,
            ['size'] = 2.75    -- size of the vehicles zones
        },
        ['Job'] = 'none', -- Name of job or none
        ['ShopLabel'] = 'Sanders Motorcycles',
        ['Categories'] = { -- Categories available to browse
            ['motorcycles'] = 'motorcycles',
        },
        ['showBlip'] = true,   -- true or false
        ['blipSprite'] = 226,  -- Blip sprite
        ['blipColor'] = 3,     -- Blip color
        ['TestDriveTimeLimit'] = 0.5,
        ['Location'] = vector3(286.79, -1159.26, 30.37),
        ['ReturnLocation'] = vector3(308.94, -1162.92, 29.29),
        ['VehicleSpawn'] = vector4(273.98, -1159.46, 29.27, 69.27),
        ['TestDriveSpawn'] = vector4(313.44, -1156.03, 29.29, 341.58), -- Spawn location for test drive
        ['FinanceZone'] = vector3(295.85, -1167.75, 29.67),
        ['ShowroomVehicles'] = {
            [1] = {
                coords = vector4(290.68, -1150.68, 29.47, 44.43),
                defaultVehicle = 'avarus',
                chosenVehicle = 'avarus'
            },
            [2] = {
                coords = vector4(294.86, -1150.38, 28.93, 37.12),
                defaultVehicle = 'zombieb',
                chosenVehicle = 'zombieb'
            },
            [3] = {
                coords = vector4(299.54, -1150.73, 28.94, 36.3),
                defaultVehicle = 'hakuchou',
                chosenVehicle = 'hakuchou'
            },
            [4] = {
                coords = vector4(303.54, -1153.85, 28.94, 304.63),
                defaultVehicle = 'nightblade',
                chosenVehicle = 'nightblade'
            },
            [5] = {
                coords = vector4(303.35, -1157.67, 28.94, 312.51),
                defaultVehicle = 'sanctus',
                chosenVehicle = 'sanctus'
            },
            [6] = {
                coords = vector4(287.42, -1155.13, 28.94, 87.31),
                defaultVehicle = 'shotaro',
                chosenVehicle = 'shotaro'
            },
        },
    }, 
}
