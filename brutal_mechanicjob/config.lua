----------------------------------------------------------------------------------------------
----------------------------------| BRUTAL MECHANIC JOB :) |----------------------------------
----------------------------------------------------------------------------------------------

--[[
Hi, thank you for buying our script, We are very grateful!

For help join our Discord server:     https://discord.gg/85u2u5c8q9
More informations about the script:   https://docs.brutalscripts.com
--]]

Config = {
    Core = 'qb',  -- 'ESX' / 'QBCORE' | Other core setting on the 'core' folder.
    Inventory = 'qb_inventory', -- 'ox_inventory' / 'qb_inventory' / 'quasar_inventory' / 'chezza_inventory' / 'codem_inventory' / 'core_inventory' // Custom can be add in the cl_utils.lua!!!
    Billing = 'false', -- 'brutal_billing' / 'okokBilling' / 'esx_billing' / 'jaksam_billing' / 'codem_billing' / 'quasar_billing' | false = immediate deduction from the player's bank account
    TextUI = 'QBDrawText', -- 'brutal_textui' / 'ox_lib' / 'okokTextUI' / 'ESXTextUI' / 'QBDrawText' // Custom can be add in the cl_utils.lua!!!
    ProgressBar = '', -- 'progressBars' / 'pogressBar' / 'mythic_progbar' // Custom can be add in the cl_utils.lua!!!
    BrutalNotify = false, -- Buy here: (4€+VAT) https://store.brutalscripts.com | Or set up your own notify >> cl_utils.lua
    SteamName = false, -- true = Steam name | false = character name
    DateFormat = '%d/%m/%Y', -- Date format
    CustomOutfitMenu = false, -- If it's true, it will open a custom outfit menu, what you can edit in the cl_utils.lua line 103.
    
    MechanicJobs = {
        ["Benny's"] = {
            Job = 'mechanic', -- Job name

            Blip = {use = true, coords = vector3(-206.8119, -1339.2422, 34.8944), color = 5, sprite = 446, size = 0.8}, -- Job blip
            Marker = {use = true, marker = 20, rgb = {15, 100, 210}, bobUpAndDown = true, rotate = false}, -- Job marker

            Duty = vector3(-206.8119, -1339.2422, 34.8944), -- Duty ON / OFF coords
            DutyBlips = true, -- With this the mechanicers can see the other mechanicers on the map.

            Cloakrooms = {
                vector3(-212.0843, -1331.6995, 23.1426),
                -- You can add more...
            },

            Armorys = {
                vector3(-241.7455, -1333.1143, 30.9028),
                -- You can add more...
            },

            BossMenu = {
                grades = {4},
                coords = {
                    vector3(-196.1315, -1340.1720, 34.8994),
                    -- You can add more...
                }
            },

            Garages = {
                {
                    Label = 'Garage I.', -- Gargae Label
                    menu = vector3(-196.9752, -1308.9575, 31.2943), -- Garage menu open coords
                    spawn = vector4(-192.3368, -1303.9343, 31.2601, 87.7941), -- Vehicle spawn coords
                    deposit = vector3(-192.3368, -1303.9343, 31.2601), -- Vehicle deposit place

                    vehicles = {
                        --['MODEL'] = {
                        --    Label = 'VEHICLE-LABEL',
                        --    minRank = MINIMUM-GRADE
                        --},

                        ['flatbed'] = {
                            Label = 'Flatbed',
                            minRank = 1
                        },
        
                        ['towtruck2'] = {
                            Label = 'Towtruck',
                            minRank = 2
                        },
                    }
                },

                -- You can add more...
            },

            RepairVehicles = {'flatbed', 'towtruck2'}, -- Add here the all mechanic vehicles.

            OtherLocations = {
                ToolBox = vector3(-241.2709, -1326.3794, 30.9028),
                Doors = vector3(-221.6548, -1332.9108, 30.8902),
                Windows = vector3(-219.4136, -1320.6279, 30.8902),
                Tyre = vector3(-227.7675, -1333.9160, 30.8902),
                Suspension = vector3(-241.4563, -1323.2102, 30.9028),
            },

            Shop = {
                -- minGrade = The minimum grade to access to buy the item.
                {item = 'radio', label = 'Radio', price = 20, minGrade = 0},
                {item = 'tool_box', label = 'Tool Box', price = 250, minGrade = 0},
                {item = 'vehicle_door', label = 'Vehicle Door', price = 1250, minGrade = 0},
                {item = 'vehicle_window', label = 'Window', price = 350, minGrade = 0},
                {item = 'vehicle_tyre', label = 'Vehicle Tyre', price = 640, minGrade = 0},
                {item = 'suspension', label = 'Suspension', price = 1500, minGrade = 0},
            },
        },

        -----------------------------------------------------------
        --------------------------| LSC |--------------------------
        -----------------------------------------------------------

        ["LS Customs"] = {
            Job = 'mechanic2', -- Job name

            Blip = {use = true, coords = vector3(-347.0996, -133.5243, 39.0096), color = 5, sprite = 446, size = 0.8}, -- Job blip
            Marker = {use = true, marker = 20, rgb = {15, 100, 210}, bobUpAndDown = true, rotate = false}, --Job marker

            Duty = vector3(-347.0996, -133.5243, 39.0096), -- Duty ON / OFF coords
            DutyBlips = true, -- With this the mechanicers can see the other mechanicers in the map.

            Cloakrooms = {
                vector3(-345.2404, -123.1227, 39.0097),
                -- You can add more...
            },

            Armorys = {
                vector3(-344.2655, -139.7523, 39.0097),
                -- You can add more...
            },

            BossMenu = {
                grades = {4},
                coords = {
                    vector3(-345.3236, -131.3823, 39.0097),
                    -- You can add more...
                }
            },

            Garages = {
                {
                    Label = 'Garage I.', -- Gargae Label
                    menu = vector3(-356.2040, -121.5005, 38.6962), -- Garage menu open coords
                    spawn = vector4(-366.5953, -118.6167, 38.6962, 167.8944), -- Vehicle spawn coords
                    deposit = vector3(-366.5974, -118.6033, 38.6962), -- Vehicle deposit place

                    vehicles = {
                        --['MODEL'] = {
                        --    Label = 'VEHICLE-LABEL',
                        --    minRank = MINIMUM-GRADE
                        --},

                        ['flatbed'] = {
                            Label = 'Flatbed',
                            minRank = 1
                        },
        
                        ['towtruck2'] = {
                            Label = 'Towtruck',
                            minRank = 2
                        },
                    }
                },

                -- You can add more...
            },

            RepairVehicles = {'flatbed', 'towtruck2'}, -- Add here the all mechanic vehicles.

            OtherLocations = {
                ToolBox = vector3(-323.4086, -129.6655, 39.0059),
                Doors = vector3(-329.3019, -127.9275, 39.0096),
                Windows = vector3(-331.2965, -127.1661, 39.0096),
                Tyre = vector3(-334.3046, -126.1228, 39.0097),
                Suspension = vector3(-341.5007, -140.6323, 39.0261),
            },

            Shop = {
                -- minGrade = The minimum grade to access to buy the item.
                {item = 'radio', label = 'Radio', price = 20, minGrade = 0},
                {item = 'tool_box', label = 'Tool Box', price = 250, minGrade = 0},
                {item = 'vehicle_door', label = 'Vehicle Door', price = 1250, minGrade = 0},
                {item = 'vehicle_window', label = 'Window', price = 350, minGrade = 0},
                {item = 'vehicle_tyre', label = 'Vehicle Tyre', price = 640, minGrade = 0},
                {item = 'suspension', label = 'Suspension', price = 1500, minGrade = 0},
            },
        },

    },

    VehicleLifts = {
        
        {
            menu = vector3(-226.7121, -1324.0067, 30.8902),
            elements = {
                {type = 'lifting', coords = {-223.763, -1321.936, 29.955}, rotations = {0.040, 0.040, -179.287}},
                {type = 'scaffolding', coords = {-223.770, -1321.929, 29.881}, rotations = {0.040, 0.040, 0.040}},
                {type = 'control-panel', coords = {-229.589, -1321.930, 31.407}, rotations = {0.040, 0.040, 0.040}},
            },
        },

        -- You can add more...
    },

    TowingVehicles = {
        ['flatbed'] = {
            OffsetCoords = {x = 0.0, y = -2.5},
            Ramp = {x = 0.0, y = -9.0, z = -1.25},
            BlackListedVehicles = {'bmx', 'bf400'},
        },

        -- You can add more...
    },

    MechanicItems = {
        -- You must create these items on the server!
        
        ["tool_box"] = {
            name = "tool_box",
            label = "Tool Box",
        },

        ["vehicle_door"] = {
            name = "vehicle_door",
            label = "Vehicle Door",
        },

        ["vehicle_window"] = {
            name = "vehicle_window",
            label = "Vehicle Window",
        },

        ["vehicle_tyre"] = {
            name = "vehicle_tyre",
            label = "Vehicle Tyre"
        },

        ["suspension"] = {
            name = "suspension",
            label = "Suspension",
        },

    },

    NPCJobBlips = {label = 'NPC JOB', color = 2, sprite = 1, size = 0.7},
    NPCJobs = {
        {vehicle = 'baller', npc = 'a_m_m_bevhills_02', pay = {100, 300}, coords = vector4(1145.6260, -275.3784, 68.3996, 273.6313)},
        {vehicle = 'rhapsody', npc = 'a_m_m_bevhills_02', pay = {100, 300}, coords = vector4(-713.7045, -174.2154, 36.2662, 26.3143)},
        {vehicle = 'regina', npc = 'a_m_m_bevhills_02', pay = {100, 300}, coords = vector4(1576.8358, 952.5146, 77.5703, 336.9504)},
        {vehicle = 'comet7', npc = 'a_m_m_bevhills_02', pay = {100, 300}, coords = vector4(-1932.8256, -534.3582, 11.2592, 292.5941)},
        {vehicle = 'futo', npc = 'a_m_m_bevhills_02', pay = {100, 300}, coords = vector4(-1186.1283, -742.4856, 19.5467, 307.2391)},
    },

    QuickRepairPoints = {
        {coords = vector3(-233.8778, -1316.5942, 30.8805), jobs = {'mechanic', 'ambulance'}, price = 5000, time = 10, marker = {use = true, type = 42, rgb = {15, 100, 210}, rotate = true}},
        -- You can add more...
    },

    VehiclesWithoutWindows = {
        'kamacho', 'dune'
    },

    Commands = {
        
        Duty = {
            Use = true,
            Command = 'mduty', 
            Suggestion = 'Entering/Exiting duty'
        },

        JobMenu = {
            Command = 'mjobmenu', 
            Control = '',  -- Controls list:  https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
            Suggestion = 'Open Job Menu'
        },

        DiagnosticTablet = {
            Command = 'mtablet', 
            Control = '',  -- Controls list:  https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
            Suggestion = 'Open Diagnostic Tablet',
            LoadingTime = 8, -- (sec) This is how long it takes to open the menu. For example 8 = fast, 12 = slow
        },

        BillingMenu = {
            Use = true,
            Command = 'mbilling', 
            Suggestion = 'To open the Billing menu',

            MaxBillingAmount = 100000, -- The billing amount cannot be higher than this value.
            BasicBillTypes = {
                ['mechanic'] = {
                    {'Vehicle Clean', 25},
                    {'Vehicle Fix', 500},
                    {'Engine Fix', 1000},
                    {'Door Fix', 250},
                    {'Window Fix', 100},
                },

                ['mechanic2'] = {
                    {'Vehicle Clean', 25},
                    {'Vehicle Fix', 500},
                    {'Engine Fix', 1000},
                    {'Door Fix', 250},
                    {'Window Fix', 100},
                },
            }
        },

        MechanicCalls = {
            Command = 'mcalls',
            Control = '',  -- Controls list:  https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
            Suggestion = 'Show Mechanic Calls'
        },

        VehicleTowing = {
            Use = true,
            Command = 'towing', 
            Suggestion = 'Towing of vehicle'
        },

        NPCJobs = {
            Use = true,
            Command = 'mnpcjobs', 
            Suggestion = 'Start an NPC Job'
        },

        TaskMenu = {
            Command = 'taskmenu', 
            Suggestion = 'To Hide/Show the task menu'
        },

        -- For Civils

        CreateMechanicCall = {
            Command = 'mcall',
            Control = '',  -- Controls list:  https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
            Suggestion = 'Create Call Menu'
        },

        VehiclePushing = {
            Use = true,
            Command = 'vpushing', 
            Suggestion = 'To push the Vehicle'
        },

        MechanicAnimation = {
            Command = 'manimation', 
            Suggestion = 'To use a mechanic animation'
        },
    },

    -----------------------------------------------------------
    -----------------------| TRANSLATE |-----------------------
    -----------------------------------------------------------

    MoneyForm = '$', -- Money form

    Locales = {
        VehiclePushing = '~b~Vehicle Pushing\n~w~Rotate with ~INPUT_CELLPHONE_LEFT~ & ~INPUT_CELLPHONE_RIGHT~\n~r~Cancel~w~ ~INPUT_FRONTEND_RRIGHT~',

        CloakRoom = 'Cloak Room',
        GarageMenu = 'Garage Menu',

        Vehicle = 'Vehicle',
        Objects = 'Objects',
        NPCJobs = 'NPC Jobs',
        Billing = 'Billing',
        DiagnosticTablet = 'Diagnostic Tablet',
        Impound = 'Impound',
        Cleaning = 'Cleaning',
        Open = 'Open',
        Towing = 'Towing',
        Ramp = 'Ramp',

        Seconds = 'second(s)',
        BlipName = 'Call #',
        Colleague = 'Colleague',
    },

    Progressbar = {
        DutyOFF = 'Duty OFF...',
        DutyON = 'Duty ON...',
        Impound = 'Impound...',
        Cleaning = 'Cleaning...',
        Openning = 'Openning...',
        ObjectPlacing = 'Placing the Object...',
        Repair = 'Repair...',
    },

    Texts = {
        [1] = {'[E] - To open the dress menu', 38},
        [2] = {'[E] - To open the armory menu', 38},
        [3] = {'[E] - To open the garage menu', 38},
        [4] = {'[E] - To deposit the vehicle', 38},
        [5] = {'[E] - To Duty ON', '[E] - To Duty OFF', 38},
        [6] = {'[E] - To open the Boss Menu', 38},
        [7] = {'[E] - Vehicle Lift Control', 38},
        [8] = {'[E] - To pick up/put down the Object', 38},
        [9] = {'[E] - To quick fix the Vehicle', 38},
        [10] = {'[E] - To get your stuff', 38},
        [11] = {'[E] - To fix the issue', 38},
        [12] = {'[E] - To get the money', 38},
    },
    
    -- Notify function EDITABLE >> cl_utils.lua
    Notify = {
        [1] = {"MECHANIC JOB", "No vehicle available for your rank.", 5000, "error"},
        [2] = {"MECHANIC JOB", "You can't deposit this Vehicle.", 5000, "error"},
        [3] = {"MECHANIC JOB", "Duty status: <b>ON", 5000, "info"},
        [4] = {"MECHANIC JOB", "Duty status: <b>OFF", 5000, "info"},
        [5] = {"MECHANIC JOB", "You don't have enough money!", 5000, "error"},
        [6] = {"MECHANIC JOB", "Please DO NOT SPAM!", 8000, "error"},
        [7] = {"MECHANIC JOB", "You must be in Vehicle!", 5000, "error"},
        [8] = {"MECHANIC JOB", "You must be in the driver's seat.", 5000, "error"},
        [9] = {"MECHANIC JOB", "This is not a Tow Vehicle!", 5000, "error"},
        [10] = {"MECHANIC JOB", "There is no vehicle near you!", 5000, "error"},
        [11] = {"MECHANIC JOB", "This Vehicle cannot be used!", 5000, "error"},
        [12] = {"MECHANIC JOB", "You cannot be in the Vehicle!", 5000, "error"},
        [13] = {"MECHANIC JOB", "The vehicle must be free!", 5000, "error"},
        [14] = {"MECHANIC JOB", "There isn't any mechanic car near you!", 5000, "error"},
        [15] = {"MECHANIC JOB", "You paid the mechanic:", 5000, "info"},
        [16] = {"MECHANIC JOB", "You have successfully created a fine!", 6000, "success"},
        [17] = {"MECHANIC JOB", "You have successfully fixed the Vehicle! Grab the money from the Client!", 6000, "success"},
        [18] = {"MECHANIC JOB", "You got:<b>", 6000, "success"},
        [19] = {"MECHANIC JOB", "New Mechanic Call has arrived.", 6000, "info"},
        [20] = {"MECHANIC JOB", "You have successfully submitted!", 6000, "success"},
        [21] = {"MECHANIC JOB", "You have closed the Call!", 6000, "success"},
        [22] = {"MECHANIC JOB", "<br>You spent:<b>", 5000, "info"},
        [23] = {"MECHANIC JOB", "Stop with the vehicle!", 5000, "info"},
        [24] = {"MECHANIC JOB", "You have <b>started</b> the job!<br>Drive to the designated place!", 5000, "info"},
        [25] = {"MECHANIC JOB", "You have <b>finished</b> the job!", 5000, "info"},
        [26] = {"MECHANIC JOB", "Fix the client's car! Go to the back of the car!", 5000, "info"},
        [27] = {"MECHANIC JOB", "You have to sit in a mechanic car.", 5000, "error"},
        [28] = {"MECHANIC JOB", "Attached: <b>ON", 5000, "error"},
        [29] = {"MECHANIC JOB", "Attached: <b>OFF", 5000, "error"},
        [30] = {"MECHANIC JOB", "Vehicle is: <b>unlocked", 5000, "info"},
        [31] = {"MECHANIC JOB", "The billing amount <b>cannot be higher</b> than", 5000, "info"},
        [32] = {"MECHANIC JOB", "You paid:", 5000, "info"},
        [33] = {"MECHANIC JOB", "You have to wait", 5000, "error"},
        [34] = {"MECHANIC JOB", "You must have:", 5000, "error"},
        [35] = {"MECHANIC JOB", "The vehicle must not move!", 5000, "error"},
        [36] = {"MECHANIC JOB", "Something is already in progress!", 5000, "error"},
        [37] = {"MECHANIC JOB", "You need to fix the suspension first!", 5000, "error"},
        [38] = {"MECHANIC JOB", "You have to wait to open the menu.", 5000, "error"},
        [39] = {"MECHANIC JOB", "Task Menu: <b>ON", 5000, "info"},
        [40] = {"MECHANIC JOB", "Task Menu: <b>OFF", 5000, "info"},
    },

    DiagnosticTablet = {
        {"To repair the engine use one of the engine repair items."},
        {"To repair the chassis use one of the chassis repair items."},
        {"To repair the tyres use one of the tyre repair items."},
        {"To repair the suspension use one of the suspension replaces."},
        {"There isn't any problem with this part."},
    },

    Tasks = {
        Engine = {"Pick up the toolbox", "Repair the engine", "Put down the toolbox"},
        Chassis = {"Pick up the toolbox", "Fix the vehicle's body", "Put down the toolbox", "Repair the door(s)", "Repair the window(s)"},
        Tyres = {"Pick up the Car Jack", "Position the Car Jack", "Remove the tire", "Take off the old tire", "Pick up the new tire", "Place the tire", "Pick up the Car Jack", "Put down the Car Jack"},
        Suspension = {"Pick up the toolbox", "Suspension repair", "Put down the toolbox"},
    },

    VehicleClasses = {
        [0] = "Compacts",  
        [1] = "Sedans", 
        [2] = "SUVs",   
        [3] = "Coupes",   
        [4] = "Muscle",   
        [5] = "Sports Classics",   
        [6] = "Sports",   
        [7] = "Super",   
        [8] = "Motorcycles",   
        [9] = "Off-road",   
        [10] = "Industrial",   
        [11] = "Utility",   
        [12] = "Vans",   
        [13] = "Cycles",   
        [14] = "Boats",   
        [15] = "Helicopters",   
        [16] = "Planes",   
        [17] = "Service",   
        [18] = "Emergency",   
        [19] = "Military",   
        [20] = "Commercial",   
        [21] = "Trains",   
        [22] = "Open Wheel", 
    },
    
    Webhooks = {
        Use = true, -- Use webhooks? true / false
        Locale = {
            ['ItemBought'] = 'Item Bought',
            ['InvoiceCreated'] = 'Invoice Created',
            ['CallOpen'] = 'Call - Open',
            ['CallClose'] = 'Call - Close',

            ['PlayerName'] = 'Player Name',
            ['AdminName'] = 'Admin Name',
            ['Identifier'] = 'Identifier',
            ['Items'] = 'Items',
            ['Text'] = 'Text',
            ['Callid'] = 'Call ID',
            ['Coords'] = 'Coords',
            ['Assistant'] = 'Assistant',
            ['Receiver'] = 'Receiver',
            ['Amount'] = 'Amount',
            ['Job'] = 'Job',

            ['Time'] = 'Time ⏲️'
        },

        -- To change a webhook color you need to set the decimal value of a color, you can use this website to do that - https://www.mathsisfun.com/hexadecimal-decimal-colors.html
        Colors = {
            ['CallOpen'] = 3145631, 
            ['CallClose'] = 16711680,
            ['ItemBought'] = 14261503,
            ['InvoiceCreated'] = 3130783
        }
    },

    -----------------------------------------------------------
    -----------------------| UNIFORMS |------------------------
    -----------------------------------------------------------

    CitizenWear = {label = "Citizen Wear"},

    Uniforms = {
        {
            label = 'Mechanic Dress', -- Uniform Label
            jobs = {
                -- Job = job name, grades = grades
                {job = 'mechanic', grades = {0,1,2,3}},
                -- More jobs
            },
            male = {
                ['t-shirt'] = {item = 15, texture = 0},
                ['torso2'] = {item = 0, texture = 2},
                ['arms'] = {item = 0, texture = 0},
                ['pants'] = {item = 9, texture = 2},
                ['shoes'] = {item = 51, texture = 0},
                ['hat'] = {item = -1, texture = 0},
                ['accessory'] = {item = 0, texture = 0},
                ['ear'] = {item = -1, texture = 0},
                ['decals'] = {item = 0, texture = 0},
                ['mask'] = {item = 0, texture = 0}
            },
            female = {
                ['t-shirt'] = {item = 15, texture = 0},
                ['torso2'] = {item = 0, texture = 2},
                ['arms'] = {item = 0, texture = 2},
                ['pants'] = {item = 45, texture = 0},
                ['shoes'] = {item = 52, texture = 0},
                ['hat'] = {item = -1, texture = 0},
                ['accessory'] = {item = 0, texture = 0},
                ['ear'] = {item = -1, texture = 0},
                ['decals'] = {item = 0, texture = 0},
                ['mask'] = {item = 0, texture = 0}
            },
        },
    },
}