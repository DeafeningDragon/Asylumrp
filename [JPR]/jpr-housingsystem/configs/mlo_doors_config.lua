MLOConfig = {}
MLOConfig.DistanceChecks = 100 -- thats meters
MLOConfig.EnableSounds = true -- Enable sounds when unlocking/locking doors (doors triggered by scripts can have the sound manually disabled)
MLOConfig.EnableAnimation = true -- Enable the animation when unlocking/locking doors (doors triggered by scripts can have the animation manually disabled)
MLOConfig.UseDoorLabelText = true -- Will use the LABEL field as the nui text instead of locked/unlocked

MLOConfig.MLOHouseDoorsDoorStates = {}
MLOConfig.MLOHouseDoors = {
    {
        houseName = "mloTestingHouse",
        propName = "prop_ld_garaged_01",
        propCoords = vector3(-814.48, 186.28, 74.51),
        propTextCoords = vector3(-815.44, 185.44, 72.48),
        locked = true,
        distance = 4
    },
    {
        houseName = "mloTestingHouse",
		propTextCoords = vector3(-816.31, 178.47, 72.22),
		locked = true,
		distance = 2.0,
		doors = {
			{
				propName = 'v_ilev_mm_doorm_l',
				propYam = 291.0,
				propCoords = vector3(-816.72, 179.1, 72.83)
			},

			{
				propName = 'v_ilev_mm_doorm_r',
				propYam = 291.0,
				propCoords = vector3(-816.11, 177.51, 72.83)
			}
		}
	},
    {
        houseName = "mloTestingHouse",
		propTextCoords = vector3(-795.61, 177.8, 72.83),
		locked = true,
		distance = 2.0,
		doors = {
			{
				propName = 'prop_bh1_48_backdoor_r',
				propYam = 21.0,
				propCoords = vector3(-794.51, 178.01, 73.04)
			},

			{
				propName = 'prop_bh1_48_backdoor_l',
				propYam = 21.0,
				propCoords = vector3(-796.57, 177.22, 73.04)
			}
		}
	},
    {
        houseName = "mloTestingHouse",
		propTextCoords = vector3(-793.75, 181.62, 72.84),
		locked = true,
		distance = 2.0,
		doors = {
			{
				propName = 'prop_bh1_48_backdoor_r',
				propYam = 111.0,
				propCoords = vector3(-794.19, 182.57, 73.04)
			},

			{
				propName = 'prop_bh1_48_backdoor_l',
				propYam = 111.0,
				propCoords = vector3(-793.39, 180.51, 73.04)
			}
		}
	},
	{
        houseName = "Josives House",
        propHash = -1154592059,
        propCoords = vector3(-1660.72, 436.95, 130.32),
        propTextCoords = vector3(-1660.72, 436.95, 130.32),
        locked = true,
        distance = 4
    },
	{
        houseName = "Josives House",
        propHash = -1154592059,
        propCoords = vector3(-1666.28, 428.65, 130.33),
        propTextCoords = vector3(-1666.28, 428.65, 130.33),
        locked = true,
        distance = 4
    },
	{
        houseName = "Josives House",
        propHash = -1154592059,
        propCoords = vector3(-1669.13, 444.6, 130.32),
        propTextCoords = vector3(-1669.13, 444.6, 130.32),
        locked = true,
        distance = 4
    },
	{
        houseName = "Josives House",
        propHash = -1154592059,
        propCoords = vector3(-1669.37, 448.99, 130.31),
        propTextCoords = vector3(-1669.37, 448.99, 130.31),
        locked = true,
        distance = 4
    },
	{
        houseName = "Josives House",
        propHash = -1154592059,
        propCoords = vector3(-1681.5, 455.12, 130.31),
        propTextCoords = vector3(-1681.5, 455.12, 130.31),
        locked = true,
        distance = 4
    },
	{
        houseName = "Josives House",
        propHash = 1764111426,
        propCoords = vector3(-1665.34, 462.34, 130.31),
        propTextCoords = vector3(-1665.34, 462.34, 130.31),
        locked = true,
        distance = 4
    },
    {
        houseName = "Saras House",
        propHash = 1901183774,
        propCoords = vector3(177.78, 1700.55, 227.39),
        propTextCoords = vector3(177.78, 1700.55, 227.39),
        locked = true,
        distance = 4
    },
    {
        houseName = "killien House",
        propHash = -2095590320,
        propCoords = vector3(1407.21, 4723.17, 134.98),
        propTextCoords = vector3(1407.21, 4723.17, 134.98),
        locked = true,
        distance = 4
    },
    {
        houseName = "killien House",
        propHash = -1988589759,
        propCoords = vector3(1386.67, 4722.5, 131.13),
        propTextCoords = vector3(1386.67, 4722.5, 131.13),
        locked = true,
        distance = 4
    },
}