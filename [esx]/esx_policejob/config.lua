Config                            = {}

Config.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
Config.MarkerType                 = {Cloakrooms = 3, Armories = 3, BossActions = 3, Vehicles = 36, Helicopters = 34}
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 10, g = 10, b = 10}

Config.EnablePlayerManagement     = true -- Enable if you want society managing.
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- Enable if you're using esx_identity.
Config.EnableLicenses             = true -- Enable if you're using esx_license.

Config.EnableHandcuffTimer        = false -- Enable handcuff timer? will unrestrain player after the time ends.
Config.HandcuffTimer              = 30 * 60000 -- 10 minutes.

Config.EnableJobBlip              = true -- Enable blips for cops on duty, requires esx_society.
Config.EnableCustomPeds           = true -- Enable custom peds in cloak room? See Config.CustomPeds below to customize peds.

Config.EnableESXService           = false -- Enable esx service?
Config.MaxInService               = -1 -- How much people can be in service at once?

Config.Locale                     = 'en'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 1
		},

		Cloakrooms = {
			vector3(450.95, -993.06, 30.68)
		},

		Armories = {
			vector3(457.8, -988.9, 30.6)
		},

		Vehicles = {
			{
				Spawner = vector3(454.6, -1017.4, 28.4),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{coords = vector3(438.4, -1018.3, 27.7), heading = 90.0, radius = 6.0},
					{coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0},
					{coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0},
					{coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0}
				}
			},

			{
				Spawner = vector3(473.3, -1018.8, 28.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0},
					{coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0}
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0}
				}
			}
		},

		BossActions = {
			vector3(448.35, -973.43, 30.68)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
        {weapon = 'WEAPON_POOLCUE', price = 0},
        {weapon = 'WEAPON_SPECIALCARBINE', price = 0},
		{weapon = 'WEAPON_SMG', price = 0},
        {weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
        {weapon = 'WEAPON_ASSAULTSMG', price = 0}
	},

	officer = {
		{weapon = 'WEAPON_POOLCUE', price = 0},
        {weapon = 'WEAPON_SPECIALCARBINE', price = 0},
		{weapon = 'WEAPON_SMG', price = 0},
        {weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
        {weapon = 'WEAPON_ASSAULTSMG', price = 0}
	},

	sergeant = {
		{weapon = 'WEAPON_POOLCUE', price = 0},
        {weapon = 'WEAPON_SPECIALCARBINE', price = 0},
		{weapon = 'WEAPON_SMG', price = 0},
        {weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
        {weapon = 'WEAPON_ASSAULTSMG', price = 0}
	},

	lieutenant = {
		{weapon = 'WEAPON_POOLCUE', price = 0},
        {weapon = 'WEAPON_SPECIALCARBINE', price = 0},
		{weapon = 'WEAPON_SMG', price = 0},
        {weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
        {weapon = 'WEAPON_ASSAULTSMG', price = 0}
	},
	detective = {
		{weapon = 'WEAPON_POOLCUE', price = 0},
        {weapon = 'WEAPON_SPECIALCARBINE', price = 0},
		{weapon = 'WEAPON_SMG', price = 0},
        {weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
        {weapon = 'WEAPON_ASSAULTSMG', price = 0}
	},

	senior = {
		{weapon = 'WEAPON_POOLCUE', price = 0},
        {weapon = 'WEAPON_SPECIALCARBINE', price = 0},
		{weapon = 'WEAPON_SMG', price = 0},
        {weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
        {weapon = 'WEAPON_ASSAULTSMG', price = 0}
	},

	deputy = {
		{weapon = 'WEAPON_POOLCUE', price = 0},
        {weapon = 'WEAPON_SPECIALCARBINE', price = 0},
		{weapon = 'WEAPON_SMG', price = 0},
        {weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
        {weapon = 'WEAPON_ASSAULTSMG', price = 0}
	},

	boss = {
		{weapon = 'WEAPON_POOLCUE', price = 0},
        {weapon = 'WEAPON_SPECIALCARBINE', price = 0},
		{weapon = 'WEAPON_SMG', price = 0},
        {weapon = 'WEAPON_NIGHTSTICK', price = 0},
		{weapon = 'WEAPON_STUNGUN', price = 0},
		{weapon = 'WEAPON_FLASHLIGHT', price = 0},
        {weapon = 'WEAPON_ASSAULTSMG', price = 0}
	}
}

Config.AuthorizedVehicles = {
	car = {
		boss = {
        { model = '2015polstang', label = 'Mustang', price = 10 },
        { model = 'polchiron', label = 'Chiron', price = 10 },
        { model = 'police2', label = 'Charger', price = 10 },
        { model = 'sheriff2', label = 'Punjab Police', price = 10 },
        { model = 'lp770cop', label = 'Centenario', price = 10 },
        { model = 'r1200rtp', label = 'BMW BIKE', price = 10 },
       -- { model = 'gdaq50', label = 'comp', price = 10 },,
       { model = 'chgr', label = 'charger 2.0', price = 10 }, 
       { model = 'chrg', label = 'charger 3.0', price = 10 }, 
       { model = 'tau', label = 'police car 2.0', price = 10 }, 
      { model = 'vic', label = 'police car 3.0', price = 10 }, 


		}
	},

	helicopter = {
		recruit = {},

		officer = {},

		sergeant = {},

		lieutenant = {
			{model = 'polmav', props = {modLivery = 0}, price = 200000}
		},

		boss = {
			{model = 'polmav', props = {modLivery = 0}, price = 100000}
		}
	}
}

Config.CustomPeds = {
    shared = {
	-- {label = 'Sheriff Ped', maleModel = 's_m_y_sheriff_01', femaleModel = 's_f_y_sheriff_01'},
	-- {label = 'Police Ped', maleModel = 's_m_y_cop_01', femaleModel = 's_f_y_cop_01'}
	},

	recruit = {{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
},

	officer = {{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
},

	sergeant = {{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
},

	lieutenant = {{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
},

	detective = {{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
},

	senior = {{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
},

	deputy = {{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
},

	boss = {
		{label = 'SWAT Ped', maleModel = 's_m_y_swat_01', femaleModel = 's_m_y_swat_01'}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {
	recruit = {
	male = {
		['tshirt_1'] = 130,  ['tshirt_2'] = 0,
		['torso_1'] = 55,   ['torso_2'] = 0,
		['decals_1'] = 8,   ['decals_2'] = 2,
		['arms'] = 41,
		['pants_1'] = 24,   ['pants_2'] = 0,
		['shoes_1'] = 25,   ['shoes_2'] = 0,
		['helmet_1'] = 46,  ['helmet_2'] = 0,
		['chain_1'] = 128,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
		['tshirt_1'] = 58,  ['tshirt_2'] = 0,
		['torso_1'] = 55,   ['torso_2'] = 0,
		['decals_1'] = 8,   ['decals_2'] = 2,
		['arms'] = 41,
		['pants_1'] = 25,   ['pants_2'] = 0,
		['shoes_1'] = 25,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 0,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
}
	},

	officer = {
		male = {
			tshirt_1 = 130,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 2,
			arms = 41,
			pants_1 = 24,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 46,  helmet_2 = 0,
			chain_1 = 128,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	sergeant = {
		male = {
			tshirt_1 = 130,  tshirt_2 = 0,
			torso_1 = 95,   torso_2 = 1,
			decals_1 = 8,   decals_2 = 2,
			arms = 26,
			pants_1 = 24,   pants_2 = 5,
			shoes_1 = 10,   shoes_2 = 0,
			helmet_1 = 46,  helmet_2 = 0,
			chain_1 = 128,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	lieutenant = {
		male = {
			tshirt_1 = 130,  tshirt_2 = 0,
			torso_1 = 95,   torso_2 = 1,
			decals_1 = 8,   decals_2 = 2,
			arms = 26,
			pants_1 = 24,   pants_2 = 5,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 46,  helmet_2 = 0,
			chain_1 = 128,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	detective = {
	male = {
		['tshirt_1'] = 130,  ['tshirt_2'] = 0,
		['torso_1'] = 139,   ['torso_2'] = 3,
		['decals_1'] = 8,   ['decals_2'] = 2,
		['arms'] = 22,
		['pants_1'] = 24,   ['pants_2'] = 5,
		['shoes_1'] = 10,   ['shoes_2'] = 0,
		['helmet_1'] = 46,  ['helmet_2'] = 0,
		['chain_1'] = 125,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
		['tshirt_1'] = 31,  ['tshirt_2'] = 2,
		['torso_1'] = 101,   ['torso_2'] = 2,
		['decals_1'] = 8,   ['decals_2'] = 2,
		['arms'] = 4,
		['pants_1'] = 25,   ['pants_2'] = 0,
		['shoes_1'] = 25,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 28,    ['chain_2'] = 14,
		['ears_1'] = 2,     ['ears_2'] = 0
	}
	},

senior = {
	male = {
		['tshirt_1'] = 130,  ['tshirt_2'] = 0,
		['torso_1'] = 139,   ['torso_2'] = 3,
		['decals_1'] = 8,   ['decals_2'] = 2,
		['arms'] = 22,
		['pants_1'] = 24,   ['pants_2'] = 5,
		['shoes_1'] = 10,   ['shoes_2'] = 0,
		['helmet_1'] = 46,  ['helmet_2'] = 0,
		['chain_1'] = 125,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
		['tshirt_1'] = 31,  ['tshirt_2'] = 2,
		['torso_1'] = 101,   ['torso_2'] = 2,
		['decals_1'] = 8,   ['decals_2'] = 2,
		['arms'] = 4,
		['pants_1'] = 25,   ['pants_2'] = 0,
		['shoes_1'] = 25,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 28,    ['chain_2'] = 14,
		['ears_1'] = 2,     ['ears_2'] = 0
	}
	},

	deputy = {
        male = {
		['tshirt_1'] = 90,  ['tshirt_2'] = 0,
		['torso_1'] = 115,   ['torso_2'] = 0,
		['decals_1'] = 8,   ['decals_2'] = 2,
		['arms'] = 22,
		['pants_1'] = 24,   ['pants_2'] = 0,
		['shoes_1'] = 10,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 23,    ['chain_2'] = 2,
		['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
		['tshirt_1'] = 4,  ['tshirt_2'] = 0,
		['torso_1'] = 10,   ['torso_2'] = 0,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 1,
		['pants_1'] = 10,   ['pants_2'] = 0,
		['shoes_1'] = 10,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 20,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
	   }
	},

	boss = {
	male = {
		['tshirt_1'] = 130,  ['tshirt_2'] = 0,
		['torso_1'] = 111,   ['torso_2'] = 3,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 27,
		['pants_1'] = 24,   ['pants_2'] = 0,
		['shoes_1'] = 36,   ['shoes_2'] = 3,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 125,    ['chain_2'] = 14,
		['ears_1'] = 2,     ['ears_2'] = 0
	},
	female = {
		['tshirt_1'] = 4,  ['tshirt_2'] = 1,
		['torso_1'] = 10,   ['torso_2'] = 1,
		['decals_1'] = 0,   ['decals_2'] = 0,
		['arms'] = 1,
		['pants_1'] = 10,   ['pants_2'] = 1,
		['shoes_1'] = 10,   ['shoes_2'] = 0,
		['helmet_1'] = -1,  ['helmet_2'] = 0,
		['chain_1'] = 20,    ['chain_2'] = 0,
		['ears_1'] = 2,     ['ears_2'] = 0
	    }
	},

	bullet_wear = {
		male = {
			bproof_1 = 11,  bproof_2 = 1
		},
		female = {
			bproof_1 = 13,  bproof_2 = 1
		}
	},

	gilet_wear = {
		male = {
			tshirt_1 = 59,  tshirt_2 = 1
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	}
}
