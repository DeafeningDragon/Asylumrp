Config = {}

Config.Framework = 'qb' -- esx/qb
Config.NotificationType = 'qb' -- esx/qb/mythic
Config.Locale = 'en' -- en/fi
Config.ImagePath = 'nui://ox_inventory/web/images' -- path for images used in trading (for QB: nui://qb-inventory/html/images) (for ox_inventory: nui://ox_inventory/web/images)
Config.DebugMode = false -- false/true

Config.Inventory = 'default' -- default / ox / quasar
Config.JailCigaretteItem = 'jail_cigarette'

Config.HelpNotification = false -- false / true, use help notification (top left) instead of the 3D text (only used if ox_lib and ox_target set to false) !! if set to true, go to locales/en.lua and change interact_button = '[E] ' to interact_button = '~INPUT_CONTEXT~ '
Config.UseOxLib = false -- false / true, remember to add " shared_script '@ox_lib/init.lua' " to fxmanifest.lua if set to true
Config.UseOxTarget = false -- false / true

Config.InteractKey = 38 -- key used for interactions (https://docs.fivem.net/docs/game-references/controls/)
Config.CancelKey = 73 -- key used for canceling stuff (exiting bed, getting rid of broom in hand, etc.) (https://docs.fivem.net/docs/game-references/controls/)

Config.EnableLockup = true -- true / false

Config.Command = {
    enable = true, -- false / true, enable the /jailmdt command
    needItem = true, -- true/false, should you need Config.TabletItem when using the /jailmdt command
}
Config.TabletItem = 'prison_mdt'
Config.TabletAnim = {
    dict = 'amb@world_human_seat_wall_tablet@female@base',
    name = 'base',
    model = `prop_cs_tablet`,
}
Config.MDTTimeMultiplier = 1 -- multiplier to use for time set in jail mdt
Config.MDTCoords = { -- coords where you can open the prison MDT (you won't need the item)
    --vec3(-1419.87, -436.3, 36.05)
}

Config.AdminGroups = { -- group names that count as admins (can use jail commands, etc.)
    admin = true,
}
Config.TeleportIfAdmin = true -- should you be teleported back to prison when going too far even if you are an admin

Config.PoliceJobs = {
    jail = { -- jobs that can use jail command
        police = 0, -- job name, min grade
    },
    lockup = { -- jobs that can use lockup command
        police = 0,
    },
    unjail = { -- jobs that can use unjail command
        police = 0,
    },
    other = {
        police = 0,
    },
}

Config.Coords = {
    jail = {
        inside = vec4(1772.89, 2492.36, 45.74, 118.0),
        outside = vec4(1846.2214, 2585.8623, 45.6726, 272.8506),
        beds = {
            vec4(1761.9, 2597.57, 45.8, 85.55),
            vec4(1761.9, 2594.52, 45.8, 85.55),
            vec4(1761.9, 2591.51, 45.8, 85.55),
            vec4(1772.1, 2591.77, 45.8, 271.24),
            vec4(1772.1, 2595.01, 45.8, 271.24),
            vec4(1772.1, 2598.02, 45.8, 271.24),
        },
        search = {
            vec3(1776.8221, 2562.8843, 45.3099),
            vec3(1764.4167, 2566.9897, 45.3023),
            vec3(1763.4050, 2572.0200, 45.2097),
            vec3(1767.1844, 2599.0605, 45.7834),
            vec3(1763.8901, 2569.5757, 45.2690),
            vec3(1736.3815, 2541.7976, 43.4069),
            vec3(1738.3336, 2537.9814, 43.3589),
            vec3(1740.2850, 2534.2139, 43.3941),
            vec3(1687.3887, 2550.9116, 45.5389),
            vec3(1688.8385, 2551.9128, 45.9692),
            vec3(1768.8286, 2489.9512, 45.6504),
            vec3(1763.6466, 2486.9514, 45.5007),
            vec3(1759.0250, 2484.2949, 45.5028),
            vec3(1753.5374, 2474.1794, 45.7511),
            vec3(1747.0890, 2484.9143, 45.3524),
            vec3(1632.3378, 2546.3098, 45.3820),
            vec3(1637.3354, 2551.6101, 45.3826),
            vec3(1631.0641, 2549.4153, 45.3690),
            vec3(1659.0682, 2553.9102, 45.3723),
            vec3(1664.6868, 2548.4031, 45.3742),
            vec3(1670.3734, 2553.9272, 45.3788),
            vec3(1664.8718, 2554.2913, 45.3869),
            vec3(1715.4652, 2554.5100, 45.3874),
            vec3(1706.6936, 2550.4895, 45.4205),
            vec3(1704.1810, 2553.9080, 45.3863),
        },
        chooseTask = {
            {coords = vec4(1774.0673, 2493.4102, 45.7407, 300.0), obj = `tr_prop_tr_planning_board_01a`}
        },
        trading = {
            {coords = vec4(1665.0571, 2568.6677, 45.5648, 180.2381), ped = `s_m_y_prisoner_01`}
        },
        takeTray = {
            vec3(1783.43, 2560.09, 46.08),
        },
        takeFood = {
            vec3(1779.4739, 2560.7786, 45.6731),
            vec3(1782.4733, 2560.7842, 45.673),
        },
        deliverFood = {
            vec3(1782.8297, 2555.2859, 45.6731),
            vec3(1781.3303, 2555.8284, 45.673),
            vec3(1779.7972, 2555.2937, 45.6731),
            vec3(1779.7560, 2553.5784, 45.6731),
            vec3(1781.2913, 2553.1187, 45.6731),
            vec3(1782.8505, 2553.5081, 45.6731),
            vec3(1782.7983, 2551.7637, 45.6731),
            vec3(1781.3292, 2552.2065, 45.6731),
            vec3(1779.6619, 2551.6665, 45.6731),
            vec3(1779.8456, 2549.7922, 45.6731),
            vec3(1781.3091, 2549.5134, 45.673),
            vec3(1782.8348, 2549.9097, 45.673),
            vec3(1782.6749, 2548.3601, 45.8217),
            vec3(1782.6749, 2548.3601, 45.8217),
            vec3(1779.8156, 2548.1628, 45.6731),
            vec3(1779.7734, 2546.3916, 45.6731),
            vec3(1779.7734, 2546.3916, 45.67),
            vec3(1782.8329, 2546.3420, 45.6731),
            vec3(1785.6154, 2546.4043, 45.673),
            vec3(1787.1287, 2546.0640, 45.6731),
            vec3(1788.6650, 2546.3977, 45.6731),
            vec3(1788.7493, 2548.1299, 45.6731),
            vec3(1787.1278, 2548.6479, 45.67),
            vec3(1785.5581, 2548.1912, 45.6731),
            vec3(1785.5491, 2549.9758, 45.6731),
            vec3(1785.5491, 2549.9758, 45.673),
            vec3(1788.6212, 2549.9187, 45.6731),
            vec3(1788.6648, 2551.8503, 45.6731),
            vec3(1787.1755, 2552.2354, 45.6731),
            vec3(1785.6082, 2551.7493, 45.6731),
            vec3(1785.5676, 2553.5828, 45.6731),
            vec3(1787.1282, 2553.1257, 45.6731),
            vec3(1788.6934, 2553.6221, 45.6731),
            vec3(1787.1273, 2555.8113, 45.6731),
        },
        takeBroom = {
            vec3(1772.0981, 2567.7214, 45.7298)
        },
        clean = {
            vec3(1767.8353, 2569.7979, 45.7298),
            vec3(1764.6693, 2572.0317, 45.7298),
            vec3(1763.6234, 2578.1389, 45.72),
            vec3(1765.8783, 2583.5518, 45.7299),
            vec3(1764.1002, 2587.5994, 45.7299),
            vec3(1767.7788, 2591.5566, 45.7299),
            vec3(1768.0974, 2594.2473, 45.7299),
            vec3(1768.1294, 2598.2178, 45.7299),
            vec3(1764.2571, 2596.0361, 45.7299),
            vec3(1784.3690, 2547.7505, 45.6731),
            vec3(1789.8611, 2550.3455, 45.6731),
            vec3(1787.5378, 2557.7688, 45.6731),
            vec3(1780.1475, 2557.4224, 45.6731),
            vec3(1784.1819, 2562.8774, 45.6731),
            vec3(1778.9541, 2563.0095, 45.6731),
            vec3(1769.2477, 2492.0256, 45.7407),
            vec3(1772.4758, 2487.0525, 45.7407),
            vec3(1762.4956, 2483.2825, 45.7408),
            vec3(1753.4225, 2484.1365, 45.7407),
        },
        washDishes = {
            vec3(1778.23, 2565.02, 45.63),
            vec3(1778.99, 2565.11, 45.46),
        },
        cell = {
            vec3(1767.5325, 2500.6448, 45.7407),
            vec3(1764.5188, 2499.1646, 45.740),
            vec3(1761.2380, 2497.2229, 45.7407),
            vec3(1754.9872, 2493.6626, 45.7408),
            vec3(1748.5961, 2490.1318, 45.7407),
            vec3(1767.4425, 2500.9846, 49.6931),
            vec3(1764.2953, 2499.2556, 49.6931),
            vec3(1761.2988, 2496.9270, 49.6931),
            vec3(1751.7939, 2491.8601, 49.6931),
            vec3(1777.3286, 2483.4863, 45.7408),
            vec3(1774.2783, 2481.8013, 45.7408),
            vec3(1771.0818, 2480.1594, 45.7407),
            vec3(1765.0996, 2476.2805, 45.740),
            vec3(1761.7012, 2474.5095, 45.7407),
            vec3(1758.5164, 2472.4426, 45.7407),
            vec3(1758.6259, 2472.3647, 49.6931),
            vec3(1761.5879, 2474.5513, 49.6931),
            vec3(1765.0359, 2476.3682, 49.6931),
            vec3(1767.9963, 2478.0190, 49.6931),
            vec3(1771.0972, 2479.6506, 49.6931),
            vec3(1777.4313, 2483.7429, 49.6931),
        },
        electricalWork = {
            vec3(1761.5117, 2540.8027, 47.1108),
            vec3(1761.4066, 2518.8247, 46.9999),
            vec3(1737.3110, 2504.3884, 47.0522),
            vec3(1707.2166, 2480.8879, 47.0189),
            vec3(1679.3022, 2479.9329, 46.9875),
            vec3(1643.9613, 2489.9995, 46.9797),
            vec3(1621.9634, 2507.7200, 46.9986),
            vec3(1609.6356, 2539.4805, 47.0384),
            vec3(1608.6882, 2567.3462, 47.0526),
            vec3(1625.1127, 2577.4458, 47.0508),
            vec3(1629.9108, 2564.9685, 46.6720),
            vec3(1652.4489, 2564.9478, 46.7644),
            vec3(1756.9913, 2569.0688, 47.7239),
            vec3(1695.2709, 2536.1528, 47.0971),
            vec3(1685.9692, 2554.1279, 46.3525),
            vec3(1626.8365, 2518.3789, 50.8674),
            vec3(1664.8413, 2501.9978, 47.2958),
            vec3(1718.0925, 2527.6250, 47.3007),
            vec3(1790.8546, 2561.7654, 46.6963),
            vec3(1763.0988, 2582.1550, 47.2560),
            vec3(1764.4302, 2599.7107, 47.6370),
            vec3(1770.5934, 2599.8318, 47.1930),
        },
        garden = {
            vec3(1616.9448, 2562.9756, 45.6823),
            vec3(1641.9528, 2553.4963, 45.9736),
            vec3(1635.6991, 2549.6699, 45.8274),
            vec3(1632.3007, 2509.0305, 45.8244),
            vec3(1622.3058, 2505.8877, 46.0262),
            vec3(1640.9818, 2490.0872, 46.0582),
            vec3(1751.4694, 2557.4385, 45.8295),
            vec3(1712.5735, 2518.3770, 45.7019),
            vec3(1759.0126, 2511.4717, 45.9128),
            vec3(1757.1182, 2504.9094, 45.8884),
            vec3(1722.0966, 2544.7039, 43.6773),
            vec3(1725.0048, 2527.1775, 43.7249),
            vec3(1756.7070, 2549.1790, 45.8961),
            vec3(1662.3674, 2501.7522, 45.7782),
            vec3(1676.4095, 2541.3611, 46.0582),
        },
        trash = {
            {coords = vec3(1698.1238, 2500.6812, 45.5648), obj = `prop_pile_dirt_03`, offset = vec3(0.0, 0.0, -0.4), dist = 5.0},
            {coords = vec3(1653.0190, 2511.9290, 45.5648), obj = `prop_rub_pile_01`, offset = vec3(0.0, 0.0, -0.4)},
            {coords = vec3(1605.0726, 2558.5869, 45.5649), obj = `prop_pile_dirt_03`, offset = vec3(0.0, 0.0, -0.4), dist = 5.0},
            {coords = vec3(1756.7240, 2554.4441, 45.5650), obj = `prop_rub_pile_02`, offset = vec3(0.0, 0.0, -0.4)},
            {coords = vec3(1803.1504, 2557.8848, 45.4887), obj = `prop_pile_dirt_07_cr`, offset = vec3(0.0, 0.0, -0.4)},
            {coords = vec3(1803.5133, 2586.4871, 45.5033), obj = `prop_pile_dirt_06`, offset = vec3(0.0, 0.0, -0.4)},
        },
        farm = {
            {coords = vec4(1736.0011, 2513.4644, 45.5650, 353.2136), obj = `prop_plant_int_06b`},
            {coords = vec4(1754.1221, 2520.8467, 45.5650, 75.2968), obj = `prop_plant_int_06b`},
        },
        gymEquipment = {
            {coords = vec4(1643.2102, 2527.9575, 45.5649, 233.1983), anim = 'chinup'},
            {coords = vec4(1648.9636, 2529.7866, 45.5649, 231.4831), anim = 'chinup'},
            {coords = vec4(1746.5917, 2481.6497, 45.7407, 117.2088), anim = 'chinup'},
            {coords = vec4(1744.0376, 2479.3667, 45.7593, 124.2948), anim = 'yoga'},
            {coords = vec4(1743.0878, 2480.7957, 45.7593, 119.2467), anim = 'yoga'},
            {coords = vec4(1744.8198, 2477.8904, 45.7592, 123.7085), anim = 'yoga'},
            {coords = vec4(1744.0696, 2482.7209, 45.7406, 35.2196), anim = 'weights'},
            {coords = vec4(1748.9055, 2539.2463, 43.5854, 118.1770), anim = 'weights'},
            {coords = vec4(1747.6646, 2541.4792, 43.5855, 121.2392), anim = 'weights'},
            {coords = vec4(1746.4828, 2543.7578, 43.5855, 119.8471), anim = 'weights'},
            {coords = vec4(1638.9906, 2527.9548, 45.5648, 9.8168), anim = 'weights'},
        },
        tattoo = {
            {coords = vec4(1751.9268, 2472.0725, 45.7406, 32.2275), ped = `u_m_y_tattoo_01`}
        },
        distanceChecks = {
            {coords = vec3(1691.0688, 2581.4453, 45.5648), dist = 185}
        }
    },
    lockup = {
        cells = {
            {coords = vec4(478.0039, -1014.0449, 26.2732, 0.0), dist = 2.0, name = 'PD Cell 1', outside = vec4(489.9900, -1007.8348, 27.9475, 265.9652)}, -- you can add specific outside coords for certain cells with "outside", if not set, the outside value below will be used
            {coords = vec4(480.9711, -1013.9343, 26.2732, 0.0), dist = 2.0},
            {coords = vec4(483.8827, -1013.8624, 26.2732, 0.0), dist = 2.0},
            {coords = vec4(487.1088, -1013.9053, 26.2732, 0.0), dist = 2.0},
            {coords = vec4(485.4856, -1005.9135, 26.2732, 190.0), dist = 4.0},
        },
        outside = vec4(491.2402, -1002.3777, 27.8318, 270.3093),
    },
}

Config.Interact = { -- interact distances for different actions
    plant = 2,
    explosive = 2,
    fence = 2,
    utensils = 2,
    beds = 2,
    search = 2,
    takeTray = 2,
    takeFood = 2,
    deliverFood = 2,
    takeBroom = 2,
    clean = 2,
    electricalWork = 2,
    washDishes = 2,
    garden = 2,
    cell = 2,
    reclaim = 2,
    gym = 2,
    drug = 1.5,
    hack = 2,
    chooseTask = 2,
    trading = 2,
    trash = 2,
    ped = 2,
    roulette = 2,
    tattoo = 2,
    ankleMonitor = 2,
    mdt = 2,
}

Config.Tasks = { -- settings for tasks
    serve_food = {
        reward = {
            money = {chance = 25, amount = {min = 10, max = 50}, account = 'money'}, -- chance to find money, amount, account money goes to
            time = {chance = 100, amount = {min = 1, max = 2}}, -- chance to get time off sentence when task completed, amount
            item = {
                chance = 25, -- change to find an item when task completed
                items = {
                    {name = 'jail_cigarette', chance = 25, amount = {min = 1, max = 3}}, -- name, chance to find this item, amount
                    {name = 'burger', chance = 25, amount = {min = 1, max = 1}},
                    {name = 'water', chance = 25, amount = {min = 1, max = 1}},
                    {name = 'jail_chemicals', chance = 5, amount = {min = 1, max = 2}},
                    {name = 'plastic_knife', chance = 25, amount = {min = 1, max = 1}},
                    {name = 'plastic_spoon', chance = 25, amount = {min = 1, max = 1}},
                    {name = 'plastic_fork', chance = 25, amount = {min = 1, max = 1}},
                }
            },
        },
        complete = {
            tasksNeeded = #Config.Coords.jail.deliverFood, -- tasks needed to complete (dont change)
            timeBonus = {min = 1, max = 3}, -- how many minutes should be deducted from all players doing this task when all task spots are done
        },
        blip = {
            coords = Config.Coords.jail.deliverFood, -- coords for blips
            remove = true, -- should blip be removed when a spot is done
        },
        maxPlayers = 10, -- max players in group
        kickIfIdle = true, -- should players that are doing any tasks be kicked
    },
    sweep_floors = {
        reward = {
            money = {chance = 25, amount = {min = 10, max = 50}, account = 'money'},
            time = {chance = 100, amount = {min = 1, max = 2}},
            item = {
                chance = 25,
                items = {
                    {name = 'jail_cigarette', chance = 25, amount = {min = 1, max = 3}},
                    {name = 'jail_chemicals', chance = 5, amount = {min = 1, max = 3}},
                    {name = 'phone', chance = 5, amount = {min = 1, max = 1}},
                    {name = 'battery', chance = 0.5, amount = {min = 1, max = 1}},
                    {name = 'weapon_flashlight', chance = 1, amount = {min = 1, max = 1}},
                    {name = 'plastic_scrap', chance = 50, amount = {min = 1, max = 1}},
                },
            },
        },
        complete = {
            tasksNeeded = #Config.Coords.jail.clean,
            timeBonus = {min = 1, max = 3},
        },
        blip = {
            coords = Config.Coords.jail.clean,
            remove = true,
        },
        maxPlayers = 10,
        kickIfIdle = true,
    },
    electrical = {
        reward = {
            money = {chance = 25, amount = {min = 10, max = 50}, account = 'money'},
            time = {chance = 100, amount = {min = 1, max = 2}},
            item = {
                chance = 25,
                items = {
                    {name = 'jail_cigarette', chance = 25, amount = {min = 1, max = 3}},
                    {name = 'electric_cable', chance = 25, amount = {min = 1, max = 2}},
                    {name = 'battery', chance = 1, amount = {min = 1, max = 1}},
                    {name = 'tape', chance = 10, amount = {min = 1, max = 2}},
                    {name = 'weapon_flashlight', chance = 1, amount = {min = 1, max = 1}},
                    {name = 'metal_pipe', chance = 0.5, amount = {min = 1, max = 1}},
                    {name = 'radio', chance = 0.1, amount = {min = 1, max = 1}},
                    {name = 'electronic_scrap', chance = 50, amount = {min = 1, max = 1}},
                }
            },
        },
        complete = {
            tasksNeeded = #Config.Coords.jail.electricalWork,
            timeBonus = {min = 1, max = 3},
        },
        blip = {
            coords = Config.Coords.jail.electricalWork,
            remove = true,
        },
        maxPlayers = 10,
        kickIfIdle = true,
    },
    wash_dishes = {
        reward = {
            money = {chance = 25, amount = {min = 10, max = 50}, account = 'money'},
            time = {chance = 100, amount = {min = 1, max = 2}},
            item = {
                chance = 25,
                items = {
                    {name = 'jail_cigarette', chance = 25, amount = {min = 1, max = 3}},
                    {name = 'plastic_spoon', chance = 25, amount = {min = 1, max = 1}},
                    {name = 'plastic_knife', chance = 25, amount = {min = 1, max = 1}},
                    {name = 'plastic_fork', chance = 25, amount = {min = 1, max = 1}},
                    {name = 'plastic_scrap', chance = 50, amount = {min = 1, max = 2}},
                    {name = 'jail_chemicals', chance = 5, amount = {min = 1, max = 2}},
                },
            },
        },
        complete = {
            tasksNeeded = 10,
            timeBonus = {min = 1, max = 3},
        },
        blip = {
            coords = Config.Coords.jail.washDishes,
            remove = false,
        },
        dontRemoveSpots = true,
        maxPlayers = 10,
        kickIfIdle = true,
    },
    trash = {
        reward = {
            money = {chance = 25, amount = {min = 10, max = 50}, account = 'money'},
            time = {chance = 100, amount = {min = 1, max = 2}},
            item = {
                chance = 25,
                items = {
                    {name = 'jail_cigarette', chance = 25, amount = {min = 1, max = 3}},
                    {name = 'battery', chance = 1, amount = {min = 1, max = 1}},
                    {name = 'jail_lighter', chance = 0.01, amount = {min = 1, max = 1}},
                    {name = 'metal_scrap', chance = 25, amount = {min = 1, max = 1}},
                    {name = 'plastic_scrap', chance = 50, amount = {min = 1, max = 1}},
                    {name = 'electronic_scrap', chance = 25, amount = {min = 1, max = 1}},
                    {name = 'chemicals', chance = 5, amount = {min = 1, max = 1}},
                    {name = 'weapon_flashlight', chance = 1, amount = {min = 1, max = 1}},
                    {name = 'slammer', chance = 5, amount = {min = 1, max = 1}},
                    {name = 'tape', chance = 5, amount = {min = 1, max = 1}},
                },
            },
        },
        complete = {
            tasksNeeded = #Config.Coords.jail.trash,
            timeBonus = {min = 1, max = 3},
        },
        blip = {
            coords = Config.Coords.jail.trash,
            remove = true,
        },
        maxPlayers = 10,
        kickIfIdle = true,
    },
    garden = {
        reward = {
            money = {chance = 25, amount = {min = 10, max = 50}, account = 'money'},
            time = {chance = 100, amount = {min = 1, max = 2}},
            item = {
                chance = 25,
                items = {
                    {name = 'jail_cigarette', chance = 25, amount = {min = 1, max = 3}},
                    {name = 'weapon_knife', chance = 0.5, amount = {min = 1, max = 1}},
                    {name = 'tape', chance = 10, amount = {min = 1, max = 1}},
                    {name = 'gunpowder', chance = 10, amount = {min = 1, max = 1}},
                    {name = 'prisunflower_seed', chance = 10, amount = {min = 1, max = 1}},
                    {name = 'plastic_scrap', chance = 50, amount = {min = 1, max = 1}},
                },
            },
        },
        complete = {
            tasksNeeded = #Config.Coords.jail.garden,
            timeBonus = {min = 1, max = 3},
        },
        blip = {
            coords = Config.Coords.jail.garden,
            remove = true,
        },
        maxPlayers = 10,
        kickIfIdle = true,
    },
}

Config.PassTimeOffline = { -- should jail time pass offline
    jail = false,
    lockup = false,
}

Config.Reward = { -- give money rewards to player for jailing
    --[[jail {
        account = 'bank',
        amount = 100,
    },
    lockup = {
        account = 'bank',
        amount = 100,
    },]]
}

Config.TeleportAnim = { -- change teleport anim
    jail = 'mugshot', -- switchout / mugshot / none
    lockup = 'switchout',
}
Config.TeleportOnlyNearby = false -- false / true, should you only be able to use teleport option in jail MDT when jailing the closest player
Config.TeleportOnUnjail = true -- true / false, should you be teleported outside when unjailed

Config.Mugshot = { -- settings for mugshot
    coords = vec4(1844.1984, 2594.4229, 45.0162, 93.1018),
    anim = {
        dict = 'mp_character_creation@lineup@male_a',
        name = 'loop_raised'
    }
}

Config.TakeItems = { -- should items be taken from the player when put in jail
    jail = true,
    lockup = true,
}

Config.ItemsToNotTake = {
    --id = true,
}

Config.ItemsToNotReturn = {
    --WEAPON_PISTOL = true,
}

Config.Reclaim = {
    allowWithSentence = true,  -- should you be able to reclaim items when you have an active sentence
    coords = { -- coords where you can reclaim your items from
        vec3(1840.4368, 2579.3962, 46.0143),
    }
}

if Config.Framework == 'qb' then
    Config.Clothes = { -- clothes for jail and lockup (qb)
        jail = {
            male = {
                outfitData = {
                    ['t-shirt'] = {item = 15, texture = 0},
                    ['torso2'] = {item = 146, texture = 0},
                    ['decals'] = {item = 0, texture = 0},
                    ['arms'] = {item = 0, texture = 0},
                    ['pants'] = {item = 3, texture = 7},
                    ['shoes'] = {item = 12, texture = 12},
                    ['vest'] = {item = 0, texture = 0},
                    ['accessory'] = {item = 0, texture = 0},
                },
            },
            female = {
                outfitData = {
                    ['t-shirt'] = {item = 3, texture = 0},
                    ['torso2'] = {item = 38, texture = 3},
                    ['decals'] = {item = 0, texture = 0},
                    ['arms'] = {item = 2, texture = 0},
                    ['pants'] = {item = 3, texture = 15},
                    ['shoes'] = {item = 66, texture = 5},
                },
            },
        },
        lockup = {
            male = {
                outfitData = {
                    ['t-shirt'] = {item = 15, texture = 0},
                    ['torso2'] = {item = 146, texture = 0},
                    ['decals'] = {item = 0, texture = 0},
                    ['arms'] = {item = 0, texture = 0},
                    ['pants'] = {item = 3, texture = 7},
                    ['shoes'] = {item = 12, texture = 12},
                },
            },
            female = {
                outfitData = {
                    ['t-shirt'] = {item = 3, texture = 0},
                    ['torso2'] = {item = 38, texture = 3},
                    ['decals'] = {item = 0, texture = 0},
                    ['arms'] = {item = 2, texture = 0},
                    ['pants'] = {item = 3, texture = 15},
                    ['shoes'] = {item = 66, texture = 5},
                },
            },
        }
    }
else
    Config.Clothes = { -- clothes for jail and lockup (esx)
        jail = {
            male = {
                tshirt_1 = 15,  tshirt_2 = 0,
                torso_1  = 146, torso_2  = 0,
                decals_1 = 0,   decals_2 = 0,
                arms     = 0,   pants_1  = 3,
                pants_2  = 7,   shoes_1  = 12,
                shoes_2  = 12, 	helmet_1 = -1,
                helmet_2 = 0, 	bags_1 = -1,
                mask_1 = 0, 	mask_2 = 0,
                bproof_1 = 0, 	bproof_2 = 0,
            },
            female = {
                tshirt_1 = 3,   tshirt_2 = 0,
                torso_1  = 38,  torso_2  = 3,
                decals_1 = 0,   decals_2 = 0,
                arms     = 2,   pants_1  = 3,
                pants_2  = 15,  shoes_1  = 66,
                shoes_2  = 5,
            },
        },
        lockup = {
            male = {
                tshirt_1 = 15,  tshirt_2 = 0,
                torso_1  = 146, torso_2  = 0,
                decals_1 = 0,   decals_2 = 0,
                arms     = 0,   pants_1  = 3,
                pants_2  = 7,   shoes_1  = 12,
                shoes_2  = 12, 	helmet_1 = -1,
                helmet_2 = 0, 	bags_1 = -1,
                mask_1 = 0, 	mask_2 = 0,
                bproof_1 = 0, 	bproof_2 = 0,
            },
            female = {
                tshirt_1 = 3,   tshirt_2 = 0,
                torso_1  = 38,  torso_2  = 3,
                decals_1 = 0,   decals_2 = 0,
                arms     = 2,   pants_1  = 3,
                pants_2  = 15,  shoes_1  = 66,
                shoes_2  = 5,
            },
        }
    }
end

Config.UseCommandWhenDead = { -- should you be able to use commands when dead
    jail = false,
    lockup = false,
    unjail = false,
}

Config.Beds = { -- jail bed settings
    healInterval = 2000, -- how often should the bed heal the player, in milliseconds
    healDone = 1000 * 120 -- how long to wait before calling HealingDone function, last number time in minutes
}

Config.Anims = { -- animation settings
    collectFood = {
        duration = 2000,
    },
    sweepFloor = {
        dict = 'missfbi_s4mop',
        name = 'idle_scrub_small_player',
        duration = 5000,
    },
    electricalWork = {
        scenario = 'WORLD_HUMAN_WELDING',
        duration = 5000,
    },
    washDishes = {
        dict = 'timetable@floyd@clean_kitchen@base',
        name = 'base',
        duration = 5000,
        prop = {
            model = `prop_sponge_01`,
            bone = 28422,
            pos = vec3(0.0, 0.0, -0.01),
            rot = vec3(90.0, 0.0, 0.0),
        }
    },
    trashWork = {
        dict = 'random@burial',
        name = 'a_burial',
        duration = 5000,
        prop = {
            model = `prop_tool_shovel`,
            bone = 28422,
            pos = vec3(0.0, 0.0, 0.24),
            rot = vec3(0.0, 0.0, 0.0),
        }
    },
    gardenWork = {
        {
            dict = 'amb@world_human_gardener_leaf_blower@base',
            name = 'base',
            duration = 5000,
            prop = {
                model = `prop_leaf_blower_01`,
                bone = 28422,
                pos = vec3(0.0, 0.0, 0.0),
                rot = vec3(0.0, 0.0, 0.0),
            }
        },
        {
            dict = 'anim@amb@drug_field_workers@rake@male_a@base',
            name = 'base',
            duration = 5000,
            prop = {
                model = `prop_tool_rake`,
                bone = 28422,
                pos = vec3(0.0, 0.0, -0.03),
                rot = vec3(0.0, 0.0, 0.0),
            }
        },
    },
    chinup = {
        scenario = 'PROP_HUMAN_MUSCLE_CHIN_UPS',
        duration = 10000,
    },
    yoga = {
        scenario = 'WORLD_HUMAN_YOGA',
        duration = 10000,
    },
    weights = {
        dict = 'amb@world_human_muscle_free_weights@male@barbell@base',
        name = 'base',
        duration = 10000,
        prop = {
            model = `prop_curl_bar_01`,
            bone = 28422,
            pos = vec3(0.0, 0.0, 0.0),
            rot = vec3(0.0, 0.0, 0.0),
        }
    },
}

Config.TradingItems = { -- items in the trading shop
    {
        name = 'burger', amount = 1,
        neededItems = {
            {name = 'jail_cigarette', amount = 1},
        }
    },
    {
        name = 'water',
        amount = 1,
        neededItems = {
            {name = 'jail_cigarette', amount = 1},
        }
    },
    {
        name = 'money',
        amount = 5,
        neededItems = {
            {name = 'jail_cigarette', amount = 1},
        }
    },
    {
        name = 'WEAPON_KNIFE',
        amount = 1,
        neededItems = {
            {name = 'jail_cigarette', amount = 500},
        }
    },
    {
        name = 'WEAPON_CROWBAR',
        amount = 1,
        neededItems = {
            {name = 'jail_cigarette', amount = 250},
        }
    },
    {
        name = 'jail_lab_tools',
        amount = 1,
        neededItems = {
            {name = 'jail_cigarette', amount = 500},
        }
    },
    {
        name = 'jail_lighter',
        amount = 1,
        neededItems = {
            {name = 'jail_cigarette', amount = 2500},
        }
    },
    {
        name = 'jail_explosive',
        amount = 1,
        neededItems = {
            {name = 'jail_cigarette', amount = 5000},
        }
    },
    {
        name = 'electronic_scrap',
        amount = 10,
        neededItems = {
            {name = 'battery', amount = 1},
        }
    },
    {
        name = 'electronic_scrap',
        amount = 4,
        neededItems = {
            {name = 'electric_cable', amount = 1},
        }
    },
    {
        name = 'metal_scrap',
        amount = 5,
        neededItems = {
            {name = 'metal_pipe', amount = 1},
        }
    },
    {
        name = 'jail_lighter',
        amount = 1,
        neededItems = {
            {name = 'tin_foil', amount = 5},
            {name = 'tape', amount = 5},
            {name = 'plastic_scrap', amount = 50},
        }
    },
    {
        name = 'jail_explosive',
        amount = 1,
        neededItems = {
            {name = 'plastic_scrap', amount = 50},
            {name = 'electronic_scrap', amount = 50},
            {name = 'gunpowder', amount = 25},
            {name = 'tape', amount = 5},
            {name = 'electric_cable', amount = 6},
        }
    },
    {
        name = 'jail_shovel',
        amount = 1,
        neededItems = {
            {name = 'metal_scrap', amount = 50},
            {name = 'metal_pipe', amount = 5},
            {name = 'tape', amount = 5},
        }
    },
    {
        name = 'fence_cutters',
        amount = 1,
        neededItems = {
            {name = 'metal_scrap', amount = 25},
            {name = 'metal_pipe', amount = 5},
            {name = 'tape', amount = 5},
        }
    },
    {
        name = 'freedom_chip',
        amount = 1,
        neededItems = {
            {name = 'metal_scrap', amount = 25},
            {name = 'metal_pipe', amount = 5},
            {name = 'tape', amount = 5},
        }
    },
}

Config.MissionPeds = { -- settings for the peds that you can talk to
    {
        coords = vec4(1750.3644, 2535.4270, 43.5854, 3.8527),
        ped = `s_m_y_prismuscl_01`,
        name = 'Deacon Lowe', -- name to show in UI
        options = {
            description = 'What do you want?', -- initial description for ped
            buttons = {
                {
                    label = 'How do I grow my muscles like you?', -- button label
                    onClick = { -- change text with onClick
                        description = 'Try getting your hands on slammer, I have used that myself but I have run out of it.', -- new description when button is clicked
                        buttons = {
                            {
                                label = 'Where can I get that?',
                                onClick = {
                                    description = 'I can not tell you.',
                                    buttons = {
                                        {
                                            label = 'Alright, thank you',
                                            close = true, -- should ui be closed
                                        },
                                    }
                                },
                            },
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Is the gym equipment good?',
                    onClick = {
                        description = 'Try it out, it can help you build up strength.',
                        buttons = {
                            {
                                label = 'Alright, thank you',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Wanna buy some slammer?',
                    onClick = {
                        description = 'Sure, how much you got?',
                        buttons = {
                            {
                                label = 'Sell 10x slammer',
                                need = {
                                    {name = 'slammer', amount = 10},
                                },
                                get = {
                                    {name = 'jail_cigarette', amount = 10},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Nothing, sorry...',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1753.0610, 2494.2703, 49.6931, 298.8349),
        ped = `ig_rashcosvki`,
        name = '?',
        options = {
            description = 'What do you want?',
            buttons = {
                {
                    label = 'Could you help me get out of here?',
                    onClick = {
                        description = 'No, go away.',
                        buttons = {
                            {
                                label = 'What if I give you some cigarettes?',
                                onClick = {
                                    description = 'Alright, get me 50 cigarettes and I\'ll help you out.',
                                    buttons = {
                                        {
                                            label = 'Give cigarettes',
                                            need = { -- items needed to run event
                                                {name = 'jail_cigarette', amount = 50},
                                            },
                                            event = 'guardName', -- nui callback name to run
                                            close = true,
                                        },
                                        {
                                            label = 'Leave',
                                            close = true,
                                        },
                                    },
                                }
                            },
                            {
                                label = 'My apologies',
                                close = true,
                            },
                        },
                    },
                },
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1749.2681, 2491.4119, 49.6931, 134.5436),
        ped = `s_m_y_prisoner_01`,
        name = 'Zac Russell',
        options = {
            description = 'What do you want?',
            buttons = {
                {
                    label = 'Why are you here?',
                    onClick = {
                        description = 'I got a sentence for drug trafficking.',
                        buttons = {
                            {
                                label = 'Can you help me get drugs?',
                                onClick = {
                                    description = 'Possibly, bring me 50 cigarettes and we can talk.',
                                    buttons = {
                                        {
                                            label = 'Give cigarettes',
                                            need = {
                                                {name = 'jail_cigarette', amount = 50},
                                            },
                                            event = 'drugLocation',
                                            close = true,
                                        },
                                        {
                                            label = 'Leave',
                                            close = true,
                                        },
                                    },
                                }
                            },
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'What should I do here?',
                    onClick = {
                        description = 'People often like doing the jobs as that makes the guards happy and you might get out earlier. However, I have heard that would be able to bribe one of the guards to get access to a security card that might help you escape.',
                        buttons = {
                            {
                                label = 'What is the name of the guard?',
                                onClick = {
                                    description = 'I unfortunately do not know.',
                                    buttons = {
                                        {
                                            label = 'Alright, thank you',
                                            close = true,
                                        },
                                    },
                                }
                            },
                            {
                                label = 'What do I need to give him?',
                                onClick = {
                                    description = 'That\'s something that I haven\'t been told.',
                                    buttons = {
                                        {
                                            label = 'Alright, thank you',
                                            close = true,
                                        },
                                    },
                                }
                            },
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1776.0874, 2481.0474, 49.6930, 116.7120),
        ped = `csb_rashcosvki`,
        name = 'Rayan',
        options = {
            description = 'What do you want?',
            buttons = {
                {
                    label = 'Can you make me an explosive?',
                    onClick = {
                        description = 'Get me 2500 cigarettes and I you will have your hands on an explosive that can get you out of here.',
                        buttons = {
                            {
                                label = 'Give cigarettes',
                                need = {
                                    {name = 'jail_cigarette', amount = 2500},
                                },
                                get = {
                                    {name = 'jail_explosive', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1775.5137, 2540.6643, 45.5651, 97.6614),
        ped = `u_m_y_prisoner_01`,
        name = 'Bennett',
        options = {
            description = 'What do you want?',
            buttons = {
                {
                    label = 'I have some stuff for sale',
                    onClick = {
                        description = 'Go ahead.',
                        buttons = {
                            {
                                label = 'Sell 3x spoon',
                                need = {
                                    {name = 'plastic_spoon', amount = 3},
                                },
                                get = {
                                    {name = 'jail_cigarette', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Sell 3x fork',
                                need = {
                                    {name = 'plastic_fork', amount = 3},
                                },
                                get = {
                                    {name = 'jail_cigarette', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Sell 3x knife',
                                need = {
                                    {name = 'plastic_knife', amount = 3},
                                },
                                get = {
                                    {name = 'jail_cigarette', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1694.8303, 2538.7893, 45.5648, 270.5960),
        ped = `u_m_y_prisoner_01`,
        name = 'Ayden Mosley',
        options = {
            description = 'What do you want?',
            buttons = {
                {
                    label = 'I have some stuff for sale',
                    onClick = {
                        description = 'Go ahead.',
                        buttons = {
                            {
                                label = 'Sell 2x electric cable',
                                need = {
                                    {name = 'electric_cable', amount = 2},
                                },
                                get = {
                                    {name = 'jail_cigarette', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Sell 1x battery',
                                need = {
                                    {name = 'battery', amount = 1},
                                },
                                get = {
                                    {name = 'jail_cigarette', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1616.4855, 2524.2119, 45.5648, 273.9997),
        ped = `u_m_y_prisoner_01`,
        name = 'Schneider',
        options = {
            description = 'What do you want?',
            buttons = {
                {
                    label = 'I have some stuff for sale',
                    onClick = {
                        description = 'Go ahead.',
                        buttons = {
                            {
                                label = 'Sell 5x metal scrap',
                                need = {
                                    {name = 'metal_scrap', amount = 5},
                                },
                                get = {
                                    {name = 'jail_cigarette', amount = 5},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Sell 5x plastic scrap',
                                need = {
                                    {name = 'plastic_scrap', amount = 5},
                                },
                                get = {
                                    {name = 'jail_cigarette', amount = 5},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Sell 5x electronical scrap',
                                need = {
                                    {name = 'electronical_scrap', amount = 5},
                                },
                                get = {
                                    {name = 'jail_cigarette', amount = 5},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1705.9189, 2522.2810, 45.5648, 21.9905),
        ped = `u_m_y_prisoner_01`,
        name = 'Roberto Mayer',
        options = {
            description = 'What do you want?',
            buttons = {
                {
                    label = 'I have some stuff for sale',
                    onClick = {
                        description = 'Go ahead.',
                        buttons = {
                            {
                                label = 'Sell 1x phone',
                                need = {
                                    {name = 'phone', amount = 1},
                                },
                                get = {
                                    {name = 'jail_cigarette', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Sell 1x flashlight',
                                need = {
                                    {name = 'weapon_flashlight', amount = 1},
                                },
                                get = {
                                    {name = 'jail_cigarette', amount = 5},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Sell 5x knife',
                                need = {
                                    {name = 'weapon_knife', amount = 1},
                                },
                                get = {
                                    {name = 'jail_cigarette', amount = 10},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1768.1965, 2476.2056, 45.7407, 13.7707),
        ped = `u_m_y_prisoner_01`,
        name = 'Jayson Curtis',
        options = {
            description = 'What do you want?',
            buttons = {
                {
                    label = 'Trade cigarettes for cash',
                    onClick = {
                        description = 'Sounds good, give me all your cigarettes and I will give you a fair price for them.',
                        buttons = {
                            {
                                label = 'Hand over all cigarettes',
                                event = 'tradeCigarettesForCash',
                                close = true,
                            },
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1775.7355, 2489.5977, 45.7407, 100.9153),
        ped = `mp_m_securoguard_01`,
        name = 'Freddie Mason',
        options = {
            description = 'I am working, do not bother me.',
            buttons = {
                {
                    label = 'I got something you might want',
                    onClick = {
                        description = 'And what would that be?',
                        buttons = {
                            {
                                label = 'Give items',
                                need = {
                                    {name = 'money', amount = 25000},
                                    {name = 'ifak', amount = 1},
                                },
                                get = {
                                    {name = 'jail_security_card', amount = 1},
                                },
                                event = 'sellItems',
                                close = true,
                            },
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1790.9510, 2546.2805, 45.6731, 43.9006),
        ped = `csb_prolsec`,
        name = 'Nicholas Morris',
        options = {
            description = 'Get back to work kid....',
            buttons = {
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1767.7284, 2573.5088, 45.7299, 140.9021),
        ped = `s_m_y_autopsy_01`,
        name = 'Dr. Jamie Dawson',
        options = {
            description = 'How can I help you?',
            buttons = {
                {
                    label = 'Can you help me with an injury?',
                    onClick = {
                        description = 'I am busy right now, go lay in on of the beds.',
                        buttons = {
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Who are you?',
                    onClick = {
                        description = 'I am Dr. Jamie Dawson, I am the leading doctor in this prison.',
                        buttons = {
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Can you sell me equipment?',
                    onClick = {
                        description = 'I have a IFAK on sale for 1000€.',
                        buttons = {
                            {
                                label = 'Purchase IFAK',
                                need = {
                                    {name = 'money', amount = 1000},
                                },
                                get = {
                                    {name = 'ifak', amount = 1},
                                },
                                event = 'sellItems',
                                close = true,
                            },
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'How do I escape?',
                    onClick = {
                        description = 'You really think that I would know that?',
                        buttons = {
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1751.0955, 2500.4792, 45.5650, 13.4505),
        ped = `s_m_m_gardener_01`,
        name = 'Gardener',
        options = {
            description = 'How can I help you?',
            buttons = {
                {
                    label = 'Sell & buy',
                    onClick = {
                        description = 'I can sell you prisunflower seeds for 50€ each and a watering can for 250€. I can also buy your prisunflowers for 50€ each.',
                        buttons = {
                            {
                                label = 'Purchase 1x prisunflower seed',
                                need = {
                                    {name = 'money', amount = 50},
                                },
                                get = {
                                    {name = 'prisunflower_seed', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Purchase 1x watering can',
                                need = {
                                    {name = 'money', amount = 250},
                                },
                                get = {
                                    {name = 'watering_can', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Sell 1x prisunflower',
                                need = {
                                    {name = 'prisunflower', amount = 1},
                                },
                                get = {
                                    {name = 'money', amount = 50},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Leave',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Tips',
                    onClick = {
                        description = 'I am glad you asked. Listen carefully! First, purchase some prisunflower seeds from me. After that, just plant them in the soil next to the trees. Make sure to the water your plants or they might die. When they look ready, just pick them up and come talk to me. I can purchase prisunflowers from you for a fair price!',
                        buttons = {
                            {
                                label = 'Alright, thank you',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Leave',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(2519.8687, 2614.1741, 37.9569, 184.1309),
        ped = `ig_g`,
        name = '?',
        canInteractAnywhere = true,
        options = {
            description = 'Who are you? What do you want?',
            buttons = {
                {
                    label = 'I heard that you are selling a chip?',
                    onClick = {
                        description = 'That is right, 40k€ and you will get your hands on one of them.',
                        buttons = {
                            {
                                label = 'Purchase 1x chip',
                                need = {
                                    {name = 'money', amount = 40000},
                                },
                                get = {
                                    {name = 'freedom_chip', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'I\'m afraid I dont have enough money...',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Sorry for bothering...',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1771.5732, 2495.7097, 45.7408, 165.3098),
        ped = `ig_floyd`,
        name = 'Bobby Reynolds',
        options = {
            description = 'Want to learn about the different jobs? I got you!',
            buttons = {
                {
                    label = 'Trash work',
                    onClick = {
                        description = 'Go outside and look for the big trash piles and dig through them. Sometimes you might event find something useful.',
                        buttons = {
                            {
                                label = 'Thank you!',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Electrical work',
                    onClick = {
                        description = 'The prison electricity is sometimes not working quite right, go to the electrical boxes and get the electricity fixed.',
                        buttons = {
                            {
                                label = 'Thank you!',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Food delivering',
                    onClick = {
                        description = 'Prisoners are hungry, go to the cafeteria, grab a tray and some food and serve it to the tables.',
                        buttons = {
                            {
                                label = 'Thank you!',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Dish washing',
                    onClick = {
                        description = 'Go to the cafeteria, find the sink and start washing the dishes.',
                        buttons = {
                            {
                                label = 'Thank you!',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Sweeping the floors',
                    onClick = {
                        description = 'Inmates leave all kinds of trash behind. Frist, get a broom from the cafeteria. After that, start sweeping the floors.',
                        buttons = {
                            {
                                label = 'Thank you!',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'Garden work',
                    onClick = {
                        description = 'The prison\'s vegetation needs care; go outside and take care of it.',
                        buttons = {
                            {
                                label = 'Thank you!',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'I\'m good, thanks',
                    close = true,
                },
            }
        }
    },
    {
        coords = vec4(1787.7001, 2564.3413, 45.6731, 91.0833),
        ped = `u_m_y_prisoner_01`,
        name = '?',
        options = {
            description = 'What do you want?',
            buttons = {
                {
                    label = 'Who are you?',
                    onClick = {
                        description = 'I am not giving you my name. However, if you have any items that you want to sharpen, let me know. I can sharpen your knives, spoons and forks for a small price.',
                        buttons = {
                            {
                                label = 'Sharpen 1x knife',
                                need = {
                                    {name = 'plastic_knife', amount = 1},
                                    {name = 'jail_cigarette', amount = 1},
                                },
                                get = {
                                    {name = 'sharpened_plastic_knife', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Sharpen 1x spoon',
                                need = {
                                    {name = 'plastic_spoon', amount = 1},
                                    {name = 'jail_cigarette', amount = 1},
                                },
                                get = {
                                    {name = 'sharpened_plastic_spoon', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'Sharpen 1x fork',
                                need = {
                                    {name = 'plastic_fork', amount = 1},
                                    {name = 'jail_cigarette', amount = 1},
                                },
                                get = {
                                    {name = 'sharpened_plastic_fork', amount = 1},
                                },
                                event = 'sellItems',
                            },
                            {
                                label = 'I\'m good, thanks',
                                close = true,
                            },
                        }
                    },
                },
                {
                    label = 'I\'m sorry, nothing',
                    close = true,
                },
            }
        }
    },
}

Config.Blips = { -- settings for blips
    prison = {
        enable = true, -- true / false, do you want to have a blip for the prison
        sprite = 189, -- https://docs.fivem.net/docs/game-references/blips/
        scale = 1.0, -- this needs to be a float (eg. 1.0, 1.2, 2.0)
        color = 29, -- https://docs.fivem.net/docs/game-references/blips/ (Scroll to the bottom)
        display = 6, -- https://docs.fivem.net/natives/?_0x9029B2F3DA924928
        coords = vec3(1846.1117, 2585.8928, 46.5308),
    },
    task = {
        enable = true,
        sprite = 8,
        scale = 0.7,
        color = 3,
        display = 6,
    },
    ankleMonitor = {
        enable = true,
        sprite = 58,
        scale = 0.8,
        color = 1,
        display = 6,
    },
    escape = {
        enable = true,
        sprite = 119,
        scale = 1.0,
        color = 1,
        display = 6,
        duration = 1000 * 30, -- how long should the escape blip show for, last number time in seconds
    },
}

Config.AnkleMonitor = { -- ankle monitor settings
    item = 'ankle_monitor',
    anim = {
        dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
        name = 'machinic_loop_mechandplayer',
        duration = 5000,
        flag = 1,
    },
    prop = {
        model = `v_serv_radio`,
        bone = 14201,
        pos = vec3(0.0038271505184184, 0.10174279978602, -0.0449863487731),
        rot = vec3(16.094871808607, 5.1044700929328, -80.033455665855),
    },
    remove = {
        item = 'power_saw',
        anim = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            name = 'machinic_loop_mechandplayer',
            duration = 10000,
            flag = 1,
        },
    }
}

Config.Farming = { -- farming settings
    plant = {
        item = 'prisunflower_seed',
        stages = {
            {model = `prop_plant_fern_01a`, offset = vec3(0.0, 0.0, -1.35), time = 1000 * 60 * 10}, -- time = time it takes to grow to next stage, last number time in minutes
            {model = `prop_plant_fern_01b`, offset = vec3(0.0, 0.0, -1.35), time = 1000 * 60 * 10},
            {model = `prop_plant_fern_02a`, offset = vec3(0.0, 0.0, -1.1), time = 1000 * 60 * 10},
            {model = `prop_plant_fern_02b`, offset = vec3(0.0, 0.0, -1.1), time = 1000 * 60 * 10},
        },
        anim = {
            scenario = 'WORLD_HUMAN_GARDENER_PLANT',
            duration = 5000,
        },
    },
    watering = {
        item = 'watering_can',
        key = 38,
        dieTime = 1000 * 60 * 15, -- how fast should the plant die if it isn't watered
        anim = {
            dict = 'missfbi3_waterboard',
            name = 'waterboard_loop_player',
            duration = 10000,
            prop = {
                model = `prop_wateringcan`,
                bone = 0x8CBD,
                pos = vec3(0.15, 0.0, 0.4),
                rot = vec3(0.0, -180.0, -140.0),
            }
        }
    },
    collect = {
        item = {name = 'prisunflower', amount = {min = 1, max = 3}},
        key = 47,
        anim = {
            dict = 'amb@prop_human_movie_studio_light@base',
            name = 'base',
            duration = 10000,
        }
    },
}

Config.Drug = { -- settings for making drug
    coords = {
        vec4(1767.7545, 2578.0681, 45.5609, 199.3035),
    },
    item = 'slammer',
    itemsNeeded = {
        {name = 'jail_lab_tools', amount = 1, keep = true},
        {name = 'jail_chemicals', amount = 3},
    },
    anim = {
        dict = 'anim@amb@business@coc@coc_unpack_cut@',
        name = 'fullcut_cycle_cokecutter',
        duration = 10000,
    },
    showTextWithoutItems = false, -- should make drug text show even when you dont have items needed
}

Config.Roulette = { -- roulette settings
    coords = {
        {coords = vec4(1738.7531, 2543.9873, 43.5855, 116.0), obj = `vw_prop_casino_roulette_01b`},
        {coords = vec4(1743.0519, 2546.2114, 43.5854, 116.0), obj = `vw_prop_casino_roulette_01b`},
    },
    item = 'jail_cigarette',
    maxAmount = 50, -- max bet
    cooldown = 1000 * 3, -- how fast should roulette table roll when first bet placed
    rollDisplayTime = 1000 * 3, -- how long should the table show the "rolling..." text
    winDisplayTime = 1000 * 3, -- how long should the table show the "table rolled" text
    pay = { -- pay multipliers for red, black and green
        r = 2,
        b = 2,
        g = 14,
    }
}

Config.Escape = { -- escape settings
    enable = true, -- enable escaping
    explosive = {
        item = 'jail_explosive',
        policeNeeded = 1,
        locations = { -- you can restrict where you should be able to place the explosive
            --{coords = vec3(1742.46, 2517.01, 45.56), dist = 2.0}
        },
        model = `ch_prop_ch_explosive_01a`,
        anim = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            name = 'machinic_loop_mechandplayer',
            duration = 3000,
            flag = 1,
        },
        blowUpTime = 5000,
        fadeScreen = true,
        outCoords = {
            vec4(1822.1707, 2515.6523, 44.7389, 253.6780),
            vec4(1831.7644, 2645.9795, 44.4536, 251.0934),
            vec4(1796.0201, 2745.1492, 44.4197, 333.2970),
            vec4(1638.7908, 2749.9583, 44.3950, 46.7884),
            vec4(1535.1233, 2593.5588, 44.4146, 70.4930),
            vec4(1535.4878, 2570.2229, 44.4932, 98.3105),
            vec4(1616.6733, 2419.1238, 44.4937, 171.4810),
            vec4(1741.7479, 2405.6733, 44.5366, 206.7959),
            vec4(1817.6090, 2466.7288, 44.4183, 227.8322),
        },
        escapeAnim = {
            dict = 'move_injured_ground',
            name = 'front_loop',
            duration = 5000,
            flag = 1,
        },
    },
    lighter = {
        item = 'jail_lighter',
        ptfx = {
            asset = 'scr_ornate_heist',
            name = 'scr_heist_ornate_thermal_burn',
        },
        anim = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            name = 'machinic_loop_mechandplayer',
            duration = 3000,
            flag = 1,
        },
    },
    utensils = {
        items = {'sharpened_plastic_fork', 'sharpened_plastic_knife', 'sharpened_plastic_spoon'},
        policeNeeded = 1,
        amountNeeded = 150,
        anim = {
            dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@',
            name = 'machinic_loop_mechandplayer',
            duration = 10000,
            flag = 1,
        },
        fadeScreen = true,
        outCoords = {
            vec4(1822.1707, 2515.6523, 44.7389, 253.6780),
            vec4(1831.7644, 2645.9795, 44.4536, 251.0934),
            vec4(1796.0201, 2745.1492, 44.4197, 333.2970),
            vec4(1638.7908, 2749.9583, 44.3950, 46.7884),
            vec4(1535.1233, 2593.5588, 44.4146, 70.4930),
            vec4(1535.4878, 2570.2229, 44.4932, 98.3105),
            vec4(1616.6733, 2419.1238, 44.4937, 171.4810),
            vec4(1741.7479, 2405.6733, 44.5366, 206.7959),
            vec4(1817.6090, 2466.7288, 44.4183, 227.8322),
        },
        escapeAnim = {
            dict = 'move_injured_ground',
            name = 'front_loop',
            duration = 5000,
            flag = 1,
        },
    },
    hack = {
        policeNeeded = 1,
        items = {'jail_security_card', 'freedom_chip'},
        locations = {
            {coords = vec3(1772.8054, 2491.2681, 49.6660), item = 'jail_security_card'},
            {coords = vec3(1841.8787, 2615.5002, 45.6371), item = 'freedom_chip'},
        },
        anim = {
            dict = 'amb@prop_human_movie_studio_light@base',
            name = 'base',
            duration = 10000,
        },
        disabledTime = 1000 * 60 * 15,
        showTextWithoutItems = false,
    },
    fence = {
        items = {'jail_shovel', 'fence_cutters'},
        locations = {
            {inCoords = vec3(1720.6711, 2488.3921, 45.5648), outCoords = vec4(1721.7970, 2487.7800, 45.5649, 225.8444), item = 'jail_shovel', removeItem = true},
            {inCoords = vec3(1746.3358, 2420.2395, 45.4316), outCoords = vec4(1747.1479, 2419.0269, 45.1142, 196.3225), item = 'fence_cutters', removeItem = true},
            {inCoords = vec3(1752.8929, 2411.2341, 45.4062), outCoords = vec4(1753.1614, 2409.9746, 45.4518, 191.5596), item = 'fence_cutters', removeItem = true, escape = true},
        },
        outCoords = {
            vec4(1753.1614, 2409.9746, 45.4518, 191.5596),
        },
        anim = {
            jail_shovel = {
                dict = 'random@burial',
                name = 'a_burial',
                duration = 10000,
                prop = {
                    model = `prop_tool_shovel`,
                    bone = 28422,
                    pos = vec3(0.0, 0.0, 0.24),
                    rot = vec3(0.0, 0.0, 0.0),
                },
            },
            fence_cutters = {
                dict = 'amb@prop_human_movie_studio_light@base',
                name = 'base',
                duration = 5000,
            },
        }
    },
}

Config.Search = {
    cooldown = 1000 * 60 * 5,
    anim = {
        dict = 'missexile3',
        name = 'ex03_dingy_search_case_base_michael',
        duration = 5000,
        flag = 1,
    },
    findChance = 50,
    items = {
        {name = 'jail_cigarette', amount = {min = 1, max = 2}, chance = 50},
        {name = 'phone', amount = {min = 1, max = 1}, chance = 1},
        {name = 'radio', amount = {min = 1, max = 1}, chance = 0.01},
        {name = 'metal_pipe', amount = {min = 1, max = 1}, chance = 0.01},
        {name = 'gunpowder', amount = {min = 1, max = 1}, chance = 5},
        {name = 'slammer', amount = {min = 1, max = 1}, chance = 1},
        {name = 'burger', amount = {min = 1, max = 1}, chance = 5},
        {name = 'water', amount = {min = 1, max = 1}, chance = 5},
        {name = 'plastic_scrap', amount = {min = 1, max = 1}, chance = 25},
        {name = 'metal_scrap', amount = {min = 1, max = 1}, chance = 25},
        {name = 'electronic_scrap', amount = {min = 1, max = 1}, chance = 25},
    }
}