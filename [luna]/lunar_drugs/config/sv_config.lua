SvConfig = {}
SvConfig.Webhook = 'WEBHOOK_HERE' --Webhook for started robberies etc.

Config = {}
Config.RenderDistance = 15.0
Config.Target = 'ox_target' --['ox_target'/'qtarget'/'qb-target'/false]

Config.Weed = {
	IllegalSeller = {
		Label = 'Illegal Seller',
		Coords = vector4(839.5461, 2176.7793, 52.2887, 149.1956),
		Blip = false,
		Ped = `s_m_y_dealer_01`,
		Items = {
			{ name = 'weed_seed', price = 50, account = 'money', icon = 'seedling' },
			{ name = 'plastic_bag', price = 10, account = 'money', icon = 'sheet-plastic' },
			{ name = 'meth_table', price = 50000, account = 'money', icon = 'flask-vial' },
		}
	},
	Gardener = {
		Label = 'Gardener',
		Coords = vector4(-1146.5197, -201.7171, 37.9796, 194.4409),
		Blip = {
			Text = 'Gardener',
			Sprite  = 480,
			Scale   = 0.75,
			Colour  = 21
		},
		Ped = `s_m_m_gardener_01`,
		Items = {
			{ name = 'water_can', price = 10, account = 'money', icon = 'droplet' },
			{ name = 'fertilizer', price = 10, account = 'money', icon = 'mound' },
			{ name = 'trowel', price = 500, account = 'money', icon = 'trowel' }
		}
	},
	PapersItem = 'weed_papers',
	JointItem = 'weed_joint',
	Planting = {
		Props = { --Allowed props
			`prop_pot_plant_01a`,
			`prop_pot_plant_01b`,
			`prop_pot_plant_01c`,
			`prop_pot_plant_01d`,
			`prop_pot_plant_01e`,
			`prop_pot_plant_02a`,
			`prop_pot_plant_02b`,
			`prop_pot_plant_02c`,
			`prop_pot_plant_02d`,
			`prop_pot_plant_03b`,
			`prop_pot_plant_03b_cr2`,
			`prop_pot_plant_03c`,
			`prop_pot_plant_04a`,
			`prop_pot_plant_04b`,
			`prop_pot_plant_04c`,
			`prop_pot_plant_05d`,
			`prop_pot_plant_05d_l1`
		},
		Materials = { --Allowed materials
			[2409420175] = true,
			[3008270349] = true,
			[3833216577] = true,
			[223086562] = true,
			[1333033863] = true,
			[4170197704] = true,
			[3594309083] = true,
			[2461440131] = true,
			[1109728704] = true,
			[2352068586] = true,
			[1144315879] = true,
			[581794674] = true,
			[2128369009] = true,
			[-461750719] = true,
			[-1286696947] = true,
		},
		SeedItem = 'weed_seed',
		Item = 'weed', -- You'll receive this item
		MaxPlants = 0, --Maximum planted (Set to 0 to remove the limit)
		CycleInterval = 30 * 60000, --Refresh all plants every 30 minutes

		--This will give you 10 weed for fully grown and max quality plant. 
		--100.0 (Growth) * 100.0 (Quality) / 1000.0 (ResultDivisor) = 10 weed
		--Lower this value to get more weed.
		ResultDivisor = 1000.0,

		-- Durations
		PlantDuration = 10000,
		HarvestDuration = 10000,
		WaterDuration = 5000,
		FertilizeDuration = 5000,

		--Modify plant per cycle
		Add = {
			['status'] = 10.0,
			['quality']  = 10.0
		},
		Remove = {
			['water'] = 2.0,
			['fertilizer'] = 2.0
		}
	},
}

Config.Cocaine = {
	Spawning = {
		Locations = {
			{
				Coords = vector3(1570.2491, 2139.9065, 80.0015),
				Radius = 20.0
			}
		},
		Limit = 25, --Max spawn plant limit
		Model = `prop_plant_01a`,
		Item = 'coke_leaf',
		GiveAmount = { min = 1, max = 4 },
		Duration = 3 * 60000, --Time between new coca plant spawn
		HarvestDuration = 10000
	},
	Teleport = {
		Enter = { coords = vector4(2545.3186, 2592.0464, 37.9575, 113.3682), target = vector3(2545.5535, 2592.0950, 38.1316) },
		Exit = { coords = vector4(1088.6548, -3188.1760, -38.9935, 180.0), target = vector3(1088.7278, -3186.9387, -38.7989) }
	},
	Processing = {
		{
			Radius = 1.5,
			Prompt = 'Make cocaine',
			Icon = 'hand',
			Progress = {
				Message = 'Making cocaine...',
				Duration = 7500
			},
			Animation = {
				Dict = 'anim@amb@business@coc@coc_unpack_cut_left@',
				Name = 'coke_cut_coccutter'
			},
			RequiredItems = {
				{ name = 'coke_leaf', count = 1 }
			},
			GiveItems = {
				{ name = 'coke', min = 1, max = 5 }
			},
			ErrorMessage = 'You need coca leafs.',
			ForceVisible = false, -- Force visible when outside of the lab
			Locations = {
				vector3(1090.3375, -3195.6648, -39.1302),
				vector3(1093.0880, -3195.6848, -39.1307),
				vector3(1095.4169, -3195.6785, -39.1301),
			}
		},
		{
			Radius = 1.5,
			Prompt = 'Package cocaine',
			Icon = 'hand',
			Progress = {
				Message = 'Packaging cocaine...',
				Duration = 12500
			},
			Animation = {
				Dict = 'anim@amb@business@meth@meth_smash_weight_check@',
				Name = 'break_weigh_v2_char01'
			},
			RequiredItems = {
				{ name = 'coke', count = 10 }
			},
			GiveItems = {
				{ name = 'coke_bag', count = 1 }
			},
			ErrorMessage = 'You need 10 grams of cocaine.',
			ForceVisible = false, -- Force visible when outside of the lab
			Locations = {
				vector3(1100.3899, -3199.4888, -39.1922),
			}
		}
	}
}

Config.Meth = {
	Teleport = {
		Enter = { coords = vector4(905.7838, 3586.1545, 33.5459, 357.8882), target = vector3(905.7555, 3585.8103, 33.6322) },
		Exit = { coords = vector4(997.6501, -3200.7190, -36.3937, 275.0), target = vector3(996.4160, -3200.6804, -36.1011) }
	},
	Processing = {
		{
			Radius = 1.5,
			Prompt = 'Cook meth',
			Icon = 'flask-vial',
			Progress = {
				Message = 'Cooking meth...',
				Duration = 7500
			},
			Animation = {
				Dict = 'mp_car_bomb',
				Name = 'car_bomb_mechanic'
			},
			RequiredItems = {
				{ name = 'ammonia', count = 1 },
				{ name = 'chemicals', count = 1 },
			},
			GiveItems = {
				--{ name, count?, min?, max? } count or min and max have to defined
				{ name = 'meth', min = 1, max = 8 }
			},
			ErrorMessage = 'You need ammonia and chemicals.',
			ForceVisible = false, -- Force visible when outside of the lab
			Locations = {
				vector3(1005.7476, -3200.9053, -38.2096),
				vector3(1012.4822, -3199.3823, -39.1922),
			},
		},
		{
			Radius = 1.5,
			Prompt = 'Package meth',
			Icon = 'hand',
			Progress = {
				Message = 'Packaging meth...',
				Duration = 5000
			},
			Animation = {
				Dict = 'anim@amb@business@meth@meth_smash_weight_check@',
				Name = 'break_weigh_v2_char01'
			},
			RequiredItems = {
				{ name = 'meth', count = 10 }
			},
			GiveItems = {
				{ name = 'meth_bag', count = 1 }
			},
			ErrorMessage = 'You need 10 grams of meth.',
			ForceVisible = false, -- Force visible when outside of the lab
			Locations = {
				vector3(1012.1431, -3194.0732, -39.1922),
				vector3(1014.2859, -3194.1279, -39.1922),
				vector3(1016.5646, -3194.1484, -39.1922),
			}
		}
	},
	Chemist = {
		Label = 'Chemist',
		Coords = vector4(213.8155, -1835.3658, 27.5606, 322.3721),
		Blip = {
			Text = 'Chemist',
			Sprite  = 480,
			Scale   = 0.75,
			Colour  = 15
		},
		Ped = `s_m_m_doctor_01`,
		Items = {
			{ name = 'ammonia', price = 50, account = 'money', icon = 'vial' },
			{ name = 'chemicals', price = 100, account = 'money', icon = 'vial' }
		}
	},
	Table = {
		Model = `bkr_prop_meth_table01a`,
		Zones = {
			Enabled = false, -- You can place it anywhere if disabled
			Locations = {
				{
					Coords = vector3(4799.5366, -5887.6201, 23.1907),
					Radius = 50.0
				}
			}
		},
		RequiredItems = {
			{ name = 'ammonia', count = 1 },
			{ name = 'chemicals', count = 1 },
		},
		GiveItems = {
			--{ name, count?, min?, max? } count or min and max have to defined
			{ name = 'meth', min = 1, max = 5 }
		},
		Progress = {
			Message = 'Cooking meth...',
			Duration = 10000
		},
		Animation = {
			Dict = 'mp_car_bomb',
			Name = 'car_bomb_mechanic'
		},
		ErrorMessage = 'You need ammonia and chemicals.'
	}
}

Config.Heroin = {
	Spawning = {
		--You can add more locations
		Locations = {
			{
				Coords = vector3(2077.2207, 4841.3877, 41.8293),
				Radius = 50.0,
			}
		},
		Limit = 40, --Max spawn plant limit
		Item = 'poppy_plant',
		GiveAmount = { min = 1, max = 2 },
		Model = `prop_plant_01b`,
		Duration = 3 * 60000, --Time between new poppy plant spawn
		HarvestDuration = 10000
	},
	Processing = {
		{
			Radius = 1.5,
			Prompt = 'Cook heroin',
			Icon = 'flask-vial',
			Progress = {
				Message = 'Cooking heroin...',
				Duration = 7500
			},
			Animation = {
				Dict = 'mp_car_bomb',
				Name = 'car_bomb_mechanic'
			},
			RequiredItems = {
				{ name = 'ammonia', count = 1 },
				{ name = 'poppy_plant', count = 1 },
			},
			GiveItems = {
				--{ name, count?, min?, max? } count or min and max have to defined
				{ name = 'heroin_bag', count = 1 }
			},
			ErrorMessage = 'You need ammonia and poppy plant.',
			Locations = {
				vector3(1391.3687, 3605.7266, 38.7758),
			}
		}
	}
}

Config.Selling = {
	Command = 'dealer', -- You can set this to nil and use the event 'lunar_drugs:dealer' in some other script
	MinPolice = 0,
	Zones = {
		{
			Coords = vector3(224.5, -1668.5, 29.0),
        	Size = vector3(706.5, 933.5, 30.0),
			Rotation = 50.0,
			Debug = false
		},
		{
			Coords = vec3(905.0, -1356.0, 31.0),
        	Size = vec3(454.0, 2154.0, 30.0),
			Rotation = 0.0,
			Debug = false
		}
	},
	Items = {
		{
			Name = 'meth_bag',
			Account = 'money',
			Price = { min = 2000, max = 2500 },
			Count = { min = 1, max = 5 }
		},
		{
			Name = 'coke_bag',
			Account = 'money',
			Price = { min = 2500, max = 3000 },
			Count = { min = 1, max = 5 }
		},
		{
			Name = 'weed_bag',
			Account = 'money',
			Price = { min = 1500, max = 2000 },
			Count = { min = 1, max = 5 }
		},
		{
			Name = 'heroin_bag',
			Account = 'money',
			Price = { min = 1500, max = 2500 },
			Count = { min = 1, max = 5 }
		}
	},
	--The client blip.
	Blip = {
		Text = 'Client',
		Sprite  = 280,
		Scale   = 1.0,
		Colour  = 74
	},
	ReportChance = 20, --percentage
	Dispatch = {
		Code = '10-14',
		Title = 'Drug Dealing',
		Message = 'A person is dealing drugs!'
	}
}

Config.DoorSales = {
	Locations = {
		vector3(2889.1775, 4391.1294, 50.6453),
		vector3(-1121.0839, -1625.2677, 4.5333)
	},
	Items = {
		{
			Name = 'meth_bag',
			Account = 'money',
			Price = 1150
		},
		{
			Name = 'coke_bag',
			Account = 'money',
			Price = 1250
		},
		{
			Name = 'weed_bag',
			Account = 'money',
			Price = 1150
		},
		{
			Name = 'heroin_bag',
			Account = 'money',
			Price = 1150
		}
	},
}

--You can add your own effects here
Config.UsableDrugs = {
	['weed_joint'] = {
		Progress = 'You\'re enjoying a joint...',
		Animation = { --ox_lib progress animation table
			scenario = 'WORLD_HUMAN_SMOKING_POT'
		},
		Duration = 60000 --Effect duration
	},
}

-- In inventory packaging/crafting
Config.Packaging = {
	PlasticBag = true, -- Allow drugs to be packaged in inventory with plastic bag
	Joint = true -- Allow joint to be packaged with weed papers
}