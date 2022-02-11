Config = {}
Config.Locale = 'en'
Config.NumberOfCopsRequired = 7

Banks = {
	["humane_labs"] = {
         position = { ['x'] = 3536.86, ['y'] = 3660.29, ['z'] = 28.12 },
		reward = 600000,
		-- reward = math.random(400000,400000),
		nameofbank = "Humane Labs",
		lastrobbed = 0
	},
	["Aircraft_labs"] = {
	position = { ['x'] = 3083.05, ['y'] = -4686.85, ['z'] = 27.25 },
	reward = math.random(100000,180000),
	nameofbank = "Aircraft Carrier",
	lastrobbed = 0
	},
        ["Metro_Heist"] = {
	position = { ['x'] = -842.21, ['y'] = -124.72, ['z'] = 28.18 },
	reward = math.random(100000,180000),
	nameofbank = "Metro Heist",
	lastrobbed = 0
	},
        ["Military_Town"] = {
	position = { ['x'] = -2351.53, ['y'] = 3257.64, ['z'] = 92.90 },
	reward = math.random(100000,180000),
	nameofbank = "Military Town",
	lastrobbed = 0
	},
         ["Chicken_Labs"] = {
	position = { ['x'] = -90.61, ['y'] = 6240.95, ['z'] = 31.08 },
	reward = math.random(100000,180000),
	nameofbank = "Chicken Labs",
	lastrobbed = 0
	},
}
