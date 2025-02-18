CodeStudio = {}
CodeStudio.Debug = false

-- 'QB' = For QBCore Framework
-- 'ESX' = For ESX Framework

CodeStudio.ServerType = 'QB'

CodeStudio.Settings = {
    Interaction = {
        useTextUI = true,         --Use TextUI
        openKey = 38,             --TextUI Interaction Key

        useTarget = false,         --Use Target System
        Target = 'qb-target',     --qb-target/ox_target
    },

    AllItemsTab = {     --All Items Section in Shops
        Enable = true,
        categoryName = 'All Items',
        categoryLogo = 'fa-globe'
    },

    stockFeature = true,  --Enable Disable Item Stock Feature 
    useInventoryImage = true,    --Use Images from Inventroy Folder, If false it will fetch images from 'cs_shops/ui/image'
    EnableMouseControl = false    --Use UI with Mouse Constols
}



CodeStudio.Products = {
    ['normal'] = {
        categoryName = "Items",
        categoryLogo = "fa-burger",
        items = {
            ['tosti'] = {
                itemName = "Tosti",     --Item Label
                itemStock = 50,      --Item Available Stock
                itemPrice = 5,          --Item Price
                itemInfo = "Delicious grilled sandwich",    --Item Description

                --  OPTIONAL --
                itemMetaData = {},         --Supports For Item Meta Data
                requiredJob = false,       --Supports Multiple Jobs Restriction with job grades               Example: requiredJob = {['police'] = {1,2}, ['taxi'] = {1}}
                requiredGang = false,      --Supports Multiple Gangs Restriction with gang grades [*Only QB]  Example: requiredGang  = {['ballas'] = {1,2}, ['lostmc'] = {1}}
                requiredLicense = false    --Supports License Check                                           Example: requiredLicense = {'weapon', 'driver'}
            },
            ['water_bottle'] = {
                itemName = "Water Bottle",
                itemStock = 50,
                itemPrice = 2,
                itemInfo = "Refreshing water",
            },
            ['kurkakola'] = {
                itemName = "Kurkakola",
                itemStock = 50,
                itemPrice = 2,
                itemInfo = "Fizzy cola with a twist",
            },
            ['twerks_candy'] = {
                itemName = "Twerks Candy",
                itemStock = 50,
                itemPrice = 2,
                itemInfo = "Sweet and chewy candy",
            },
            ['snikkel_candy'] = {
                itemName = "Snikkel Candy",
                itemStock = 50,
                itemPrice = 2,
                itemInfo = "Candy with a kick",
            },
            ['sandwich'] = {
                itemName = "Sandwich",
                itemStock = 50,
                itemPrice = 2,
                itemInfo = "Classic sandwich",
            },
            ['bandage'] = {
                itemName = "Bandage",
                itemStock = 50,
                itemPrice = 100,
                itemInfo = "Medical bandage",
            },
            ['lighter'] = {
                itemName = "Lighter",
                itemStock = 50,
                itemPrice = 2,
                itemInfo = "Pocket-sized lighter",
            },
            ['rolling_paper'] = {
                itemName = "Rolling Paper",
                itemStock = 5000,
                itemPrice = 2,
                itemInfo = "Rolling papers for smoking",
            },
        }
    },
    ['liquor'] = {
        categoryName = "Liquor",
        categoryLogo = "fa-glass-whiskey",
        items = {
            ['beer'] = {
                itemName = "Beer",
                itemStock = 50,
                itemPrice = 7,
                itemInfo = "Ice-cold beer",
            },
            ['whiskey'] = {
                itemName = "Whiskey",
                itemStock = 50,
                itemPrice = 10,
                itemInfo = "Premium whiskey",
            },
            ['vodka'] = {
                itemName = "Vodka",
                itemStock = 50,
                itemPrice = 12,
                itemInfo = "Smooth vodka",
            },
        }
    },
    ['hardware'] = {
        categoryName = "Hardware",
        categoryLogo = "fa-tools",
        items = {
            ['lockpick'] = {
                itemName = "Lockpick",
                itemStock = 50,
                itemPrice = 200,
                itemInfo = "Lockpicking tool",
            },
            ['weapon_wrench'] = {
                itemName = "Weapon Wrench",
                itemStock = 250,
                itemPrice = 250,
                itemInfo = "Tool for weapon maintenance",
            },
            ['weapon_hammer'] = {
                itemName = "Weapon Hammer",
                itemStock = 250,
                itemPrice = 250,
                itemInfo = "Tool for weapon modifications",
            },
            ['repairkit'] = {
                itemName = "Repair Kit",
                itemStock = 50,
                itemPrice = 1500,
                itemInfo = "Basic repair kit",
            },
            ['screwdriverset'] = {
                itemName = "Screwdriver Set",
                itemStock = 50,
                itemPrice = 350,
                itemInfo = "Set of screwdrivers",
            },
            ['phone'] = {
                itemName = "Phone",
                itemStock = 50,
                itemPrice = 850,
                itemInfo = "Smartphone",
            },
            ['radio'] = {
                itemName = "Radio",
                itemStock = 50,
                itemPrice = 250,
                itemInfo = "Portable radio",
            },
            ['binoculars'] = {
                itemName = "Binoculars",
                itemStock = 50,
                itemPrice = 50,
                itemInfo = "Zooming binoculars",
            },
            ['firework1'] = {
                itemName = "Firework 1",
                itemStock = 50,
                itemPrice = 50,
                itemInfo = "Colorful firework",
            },
            ['firework2'] = {
                itemName = "Firework 2",
                itemStock = 50,
                itemPrice = 50,
                itemInfo = "Sparkling firework",
            },
            ['firework3'] = {
                itemName = "Firework 3",
                itemStock = 50,
                itemPrice = 50,
                itemInfo = "Loud firework",
            },
            ['firework4'] = {
                itemName = "Firework 4",
                itemStock = 50,
                itemPrice = 50,
                itemInfo = "Crackling firework",
            },
            ['fitbit'] = {
                itemName = "Fitbit",
                itemStock = 150,
                itemPrice = 175,
                itemInfo = "Fitness tracker",
            },
            ['cleaningkit'] = {
                itemName = "Cleaning Kit",
                itemStock = 150,
                itemPrice = 150,
                itemInfo = "Kit for cleaning equipment",
            },
            ['advancedrepairkit'] = {
                itemName = "Advanced Repair Kit",
                itemStock = 50,
                itemPrice = 3000,
                itemInfo = "Advanced kit for repairs",
            },
        }
    },
    ['weapons'] = {
        categoryName = "Weapons",
        categoryLogo = "fa-gun",
        items = {
            ['weapon_knife'] = {
                itemName = "Knife",
                itemStock = 250,
                itemPrice = 250,
                itemInfo = "Sharp and versatile",
            },
            ['weapon_bat'] = {
                itemName = "Baseball Bat",
                itemStock = 250,
                itemPrice = 100,
                itemInfo = "Sturdy baseball bat",
            },
            ['weapon_hatchet'] = {
                itemName = "Hatchet",
                itemStock = 250,
                itemPrice = ,
                itemInfo = "Sharp cutting tool",
            },
            ['weapon_pistol'] = {
                itemName = "Pistol",
                itemStock = 5,
                itemPrice = 3000,
                itemInfo = "Compact and reliable",
                requiredLicense = {'weapon'},
            },
            ['weapon_snspistol'] = {
                itemName = "SNS Pistol",
                itemStock = 5,
                itemPrice = 2000,
                itemInfo = "Sleek and concealable",
                requiredLicense = {'weapon'},
            },
            ['weapon_vintagepistol'] = {
                itemName = "Vintage Pistol",
                itemStock = 5,
                itemPrice = 4000,
                itemInfo = "Classic and stylish",
                requiredLicense = {'weapon'},
            },
            ['weapon_smg'] = {
                itemName = "SMG",
                itemStock = 5,
                itemPrice = 6000,
                itemInfo = "Strong and stylish",
                requiredLicense = {'weapon'},
            },
        }
    },
    ['ammo'] = {
        categoryName = "Ammunition",
        categoryLogo = "fa-wand-sparkles",
        items = {
            ['pistol_ammo'] = {
                itemName = "Pistol Ammo",
                itemStock = 250,
                itemPrice = 250,
                itemInfo = "Ammo for pistols",
                requiredLicense = {'weapon'},
            },
            ['smg_ammo'] = {
                itemName = "SMG Ammo",
                itemStock = 250,
                itemPrice = 250,
                itemInfo = "Ammo for submachine guns",
                requiredLicense = {'weapon'},
            },
            ['shotgun_ammo'] = {
                itemName = "Shotgun Ammo",
                itemStock = 250,
                itemPrice = 250,
                itemInfo = "Ammo for shotguns",
                requiredLicense = {'weapon'},
            },
            ['rifle_ammo'] = {
                itemName = "Rifle Ammo",
                itemStock = 250,
                itemPrice = 250,
                itemInfo = "Ammo for rifles",
                requiredLicense = {'weapon'},
            },
        }
    },

    ['police_items'] = {
        categoryName = "Items",
        categoryLogo = "fa-shopping-basket",
        items = {
            ['handcuffs'] = {
                itemName = "Handcuffs",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Restrain suspects",
            },
            ['empty_evidence_bag'] = {
                itemName = "Empty Evidence Bag",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "For collecting evidence",
            },
            ['police_stormram'] = {
                itemName = "Police Stormram",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Battering ram for forced entry",
            },
            ['armor'] = {
                itemName = "Armor",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Protective body armor",
            },
            ['radio'] = {
                itemName = "Radio",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Communication device for officers",
            },
            ['heavyarmor'] = {
                itemName = "Heavy Armor",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Durable heavy body armor",
            },
        }
    },
    ['police_weapons'] = {
        categoryName = "Weapons",
        categoryLogo = "fa-gun",
        items = {
            ['weapon_pistol'] = {
                itemName = "Pistol",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Standard issue police sidearm",
            },
            ['weapon_stungun'] = {
                itemName = "Stun Gun",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Non-lethal electric weapon",
            },
            ['weapon_pumpshotgun'] = {
                itemName = "Pump Shotgun",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Powerful shotgun for close encounters",
            },
            ['weapon_smg'] = {
                itemName = "SMG",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Submachine gun for rapid fire",
                requiredJob = {
                    ['police'] = {4,5,6,7,8,9,10,11,12,13,14,15,16,17}
                },
            },
            ['weapon_sniperrifle'] = {
                itemName = "Sniper Rifle",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Sniper for Long Range",
                requiredJob = {
                    ['police'] = {4,5,6,7,8,9,10,11,12,13,14,15,16,17}
                },
            },
            ['weapon_carbinerifle'] = {
                itemName = "Carbine Rifle",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Versatile rifle with attachments",
                requiredJob = {
                    ['police'] = {3,4,5,6,7,8,9,10,11,12,13,14,15,16,17}
                },
                itemMetaData = {   -- Also Supports Adding Attachement's [Example: For QBCore Server]
                    attachments = {
                        { component = 'COMPONENT_AT_AR_FLSH',      label = 'Flashlight' },
                        { component = 'COMPONENT_AT_SCOPE_MEDIUM', label = '3x Scope' },
                    }
                }
            },
            ['weapon_nightstick'] = {
                itemName = "Nightstick",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Extendable baton for self-defense",
            },
            ['weapon_flashlight'] = {
                itemName = "Flashlight",
                itemStock = 50,
                itemPrice = 0,
                itemInfo = "Handheld flashlight",
            },
        }
    },
}


CodeStudio.Shops = {
    [1] = {
        ShopName = 'General Store',
        Category = {
            [1] = 'normal',
            [2] = 'liquor',
            [3] = 'hardware'
        },
        Locations = {
            -- 24/7 Locations
            vector4(24.47, -1346.62, 29.5, 271.66),
            vector4(-3039.54, 584.38, 7.91, 17.27),
            vector4(-3242.97, 1000.01, 12.83, 357.57),
            vector4(1728.07, 6415.63, 35.04, 242.95),
            vector4(1959.82, 3740.48, 32.34, 301.57),
            vector4(549.13, 2670.85, 42.16, 99.39),
            vector4(2677.47, 3279.76, 55.24, 335.08),
            vector4(2556.66, 380.84, 108.62, 356.67),
            vector4(372.66, 326.98, 103.57, 253.73),

            -- LTD Gasoline Locations
            vector4(-47.02, -1758.23, 29.42, 45.05),
            vector4(-706.06, -913.97, 19.22, 88.04),
            vector4(-1820.02, 794.03, 138.09, 135.45),
            vector4(1164.71, -322.94, 69.21, 101.72),
            vector4(1697.87, 4922.96, 42.06, 324.71),

            -- Rob's Liquor Locations
            vector4(-1221.58, -908.15, 12.33, 35.49),
            vector4(-1486.59, -377.68, 40.16, 139.51),
            vector4(-2966.39, 391.42, 15.04, 87.48),
            vector4(1165.17, 2710.88, 38.16, 179.43),
            vector4(1134.2, -982.91, 46.42, 277.24),
        },
        Interaction = {
            targetIcon = 'fas fa-shopping-basket',
            targetLabel = 'Open General Store',
            spawnPed = 'mp_m_shopkeep_01',  -- Put false if you dont need ped
            scenario = 'WORLD_HUMAN_STAND_MOBILE',  --Ped Scenario Animation put false if you dont need
            radius = 2.5,
        },
        Blips = {
            Enable = true,
            blipsprite = 52,
            blipscale = 0.6,
            blipcolor = 0,
        }
    },
    [2] = {
        ShopName = 'Weapon Store',  --Shop Name
        Category = {        --Category with Order
            [1] = 'weapons',
            [2] = 'ammo'
        },
        Locations = {       --You Can Add Multiple Locations
            vector4(-661.96, -933.53, 21.83, 177.05),
            vector4(809.68, -2159.13, 29.62, 1.43),
            vector4(1692.67, 3761.38, 34.71, 227.65),
            vector4(-331.23, 6085.37, 31.45, 228.02),
            vector4(253.63, -51.02, 69.94, 72.91),
            vector4(23.0, -1105.67, 29.8, 162.91),
            vector4(2567.48, 292.59, 108.73, 349.68),
            vector4(-1118.59, 2700.05, 18.55, 221.89),
            vector4(841.92, -1035.32, 28.19, 1.56),
            vector4(-1304.19, -395.12, 36.7, 75.03),
            vector4(-3173.31, 1088.85, 20.84, 244.18),
        },
        Interaction = {
            targetIcon = 'fas fa-gun',      --Target Icon
            targetLabel = 'Open Weapon Store',  --Shop Target/Text Label
            radius = 2.5,   --Interaction Radius
            spawnPed = 's_m_y_ammucity_01',  -- Put false if you dont need ped
            scenario = 'WORLD_HUMAN_COP_IDLES',  --Ped Scenario Animation put false if you dont need
        },
        Blips = {
            Enable = true,      --Enable/Disable Blips
            blipsprite = 110,
            blipscale = 0.6,
            blipcolor = 0,
        }
    },
    [3] = {
        ShopName = 'Police Armoury',
        Category = {
            [1] = 'police_weapons',
            [2] = 'police_items',
            [3] = 'ammo'
        },
        requiredJob = {
            ['police'] = {2,3,4}
        },
        Locations = {
            vector4(458.04, -979.08, 30.69, 3)
        },
        Interaction = {
            targetIcon = 'fas fa-gun',
            targetLabel = 'Open Police Armoury',
            radius = 2.5,
            spawnPed = false,  -- Put false if you dont need ped
        },
    },
}


