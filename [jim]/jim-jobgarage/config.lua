print("^2Jim^7-^2JobGarage ^7v^41^7.^44^7.^43 ^7- ^2Job Garage Script by ^1Jimathy^7")

Loc = {}

--[[	LIST OF POSSIBLE VEHICLE MODIFIERS   ]]--
-- Using these will change how each vehicle spawns
-- This can be used for making sure the vehicles comes out exactly how you want it to

-- CustomName = "Police Car", this will show a custom override name for your vehicles so you don't need to add them to your vehicles.lua
-- rank = { 2, 4 }, -- This specifes which grades can see it, and only these grades
-- grade = 4, -- This specifies the lowest grade and above that can see the vehicle
-- colors = { 136, 137 }, -- This is the colour index id of the vehicle, Primary and Secondary in that order
-- bulletproof = true, -- This determines if the tyres are bullet proof (don't ask me why, I was asked to add this)
-- livery = 1, -- This sets the livery id of the vehicle, (most mod menus would number them or have them in number order) 0 = stock
-- extras = { 1, 5 }, -- This enables the selected extras on the vehicle
-- performance = "max", this sets the stats to max if available
-- performance = { 2, 3, 3, 2, 4, true }, -- This allows more specific settings for each upgrade level, in order: engine, brakes, suspension, transmission, armour, turbo
-- trunkItems = { }, -- Use this to add items to the trunk of the vehicle when it is spawned

-- ANY VEHICLE, BOATS, POLICE CARS, EMS VEHICLES OR EVEN PLANES CAN BE ADDED.

Config = {
	Debug = false,  -- Enable to use debug features
	Lan = "en",

	Core = "qb-core",
	Menu = "qb",
	Notify = "qb",

	Fuel = "LegacyFuel", -- Set this to your fuel script folder

	CarDespawn = true, -- Sends the vehicle to hell (removal animation)

	DistCheck = false, -- Require the vehicle to be near by to remove it

	Locations = {
		{ 	zoneEnable = true,
			job = "doc",
			garage = {
				spawn = vec4(1789.72, 2603.55, 45.56, 265.95),  -- Where the car will spawn
				out = vec4(1792.1, 2599.68, 45.56, 263.87),	-- Where the parking stand is
				list = {
					["17f150fugitive"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["20f250k9corrections"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["21ramtrx"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["95hoe"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["ccvpi"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["cf150"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["ctaurus"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["cguardgmc"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["leobus"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["suburb"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
				},
			},
		},
		{ 	zoneEnable = true,
			job = "bcso",
			garage = {
				spawn = vec4(1861.55, 3699.61, 33.75, 118.65),  -- Where the car will spawn
				out = vec4(1856.49, 3686.75, 34.33, 290.25),	-- Where the parking stand is
				list = {
					["valor11sedan"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor11sedank9"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor13sedan"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor13suv"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor14sedan"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor16sedan"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor16utility"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["bearcat"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor16utilityk9"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor18sedan"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor18sedank9"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor18suv"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor18suvk9"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor151500"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor162500"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor182500"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor183500"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor191500"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor203500"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valormotor"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["valor20utility"] = {
						colors = { 136, 137 },
						livery = 5,
						extras = { 1, 4 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
				},
			},
		},
		{ 	zoneEnable = true,
			job = "sast",
			garage = {
				spawn = vec4(-515.8, -610.95, 30.3, 174.18),  -- Where the car will spawn
				out = vec4(-520.82, -607.06, 30.44, 274.01),	-- Where the parking stand is
				list = {
					["code310sedan"] = {
						CustomName = "code310sedan",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code311sedan"] = {
						CustomName = "code311sedan",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code313suv"] = {
						CustomName = "code313suv",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3f150k9lcb"] = {
						CustomName = "f150k9",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code314sedan"] = {
						CustomName = "code314sedan",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code316motor"] = {
						CustomName = "code316motor",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code316muscle"] = {
						CustomName = "code316muscle",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code316sedan"] = {
						CustomName = "code316sedan",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3ramlcb"] = {
						CustomName = "code3ramlcb",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code316suv"] = {
						CustomName = "code316suv",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code316utility"] = {
						CustomName = "code316utility",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code318motor"] = {
						CustomName = "code318motor",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code318muscle"] = {
						CustomName = "code318muscle",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code318sedan"] = {
						CustomName = "code318sedan",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code318sedank9"] = {
						CustomName = "code318sedank9",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code318suv"] = {
						CustomName = "code318suv",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code318suvk9"] = {
						CustomName = "code318suvk9",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code320utility"] = {
						CustomName = "code320utility",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3184x4"] = {
						CustomName = "code3184x4",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3151500"] = {
						CustomName = "code3151500",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3161500"] = {
						CustomName = "code3161500",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3161500"] = {
						CustomName = "code3161500",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3162500"] = {
						CustomName = "code3162500",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3182500"] = {
						CustomName = "code3182500",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["2022heavycommand"] = {
						CustomName = "2022heavycommand",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
				},
			},
		},
		{ 	zoneEnable = true,
			job = "police",
			garage = {
				spawn = vec4(-294.64, -1055.85, 23.03, 149.8),
				out = vec4(-299.1, -1053.35, 23.28, 158.51),
				list = {
					["code310sedan"] = {
						CustomName = "code310sedan",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code311sedan"] = {
						CustomName = "code311sedan",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code313suv"] = {
						CustomName = "code313suv",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3f150k9lcb"] = {
						CustomName = "f150k9",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code314sedan"] = {
						CustomName = "code314sedan",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code316motor"] = {
						CustomName = "code316motor",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code316muscle"] = {
						CustomName = "code316muscle",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code316sedan"] = {
						CustomName = "code316sedan",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3ramlcb"] = {
						CustomName = "code3ramlcb",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code316suv"] = {
						CustomName = "code316suv",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code316utility"] = {
						CustomName = "code316utility",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code318motor"] = {
						CustomName = "code318motor",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code318muscle"] = {
						CustomName = "code318muscle",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code318sedan"] = {
						CustomName = "code318sedan",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code318sedank9"] = {
						CustomName = "code318sedank9",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code318suv"] = {
						CustomName = "code318suv",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code318suvk9"] = {
						CustomName = "code318suvk9",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code320utility"] = {
						CustomName = "code320utility",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3184x4"] = {
						CustomName = "code3184x4",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3151500"] = {
						CustomName = "code3151500",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3161500"] = {
						CustomName = "code3161500",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3161500"] = {
						CustomName = "code3161500",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3162500"] = {
						CustomName = "code3162500",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3182500"] = {
						CustomName = "code3182500",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
					["code3191500"] = {
						CustomName = "code3191500",
						livery = 5,
						extras = { 1, 2 },
						performance = "max",
						trunkItems = {
							{ name = "heavyarmor", amount = 2, info = {}, type = "item", slot = 1, },
							{ name = "empty_evidence_bag", amount = 10, info = {}, type = "item", slot = 2, },
							{ name = "police_stormram", amount = 1, info = {}, type = "item", slot = 3, },
						},
					},
				},
			},
		},
		{ 	zoneEnable = true,
			job = "ambulance",
			garage = {
				spawn = vec4(-106.94, -614.07, 36.07, 160.39),
				out = vec4(-115.21, -610.55, 36.28, 253.48),
				list = {
					["amr13utility"] = {
						CustomName = "amr13utility"
					},
					["amr16utility"] = {
						CustomName = "amr16utility"
					},
					["amr18suv"] = {
						CustomName = "amr18suv"
					},
					["amr1500"] = {
						CustomName = "amr1500"
					},
					["amr1500cr"] = {
						CustomName = "amr1500cr"
					},
					["amr2500"] = {
						CustomName = "amr2500"
					},
					["aamr2500cr"] = {
						CustomName = "amr2500cr"
					},
					["23fambo"] = {
						CustomName = "23fambo"
					},
					["23fambo2"] = {
						CustomName = "23fambo2"
					},
					["23r2ambo"] = {
						CustomName = "23r2ambo"
					},
					["23rambo"] = {
						CustomName = "23rambo"
					},
					["23rambo2"] = {
						CustomName = "23rambo2"
					},
					["23fdems16utility"] = {
						CustomName = "23fdems16utility"
					},
					["23fdems18suv"] = {
						CustomName = "23fdems18suv"
					},
					["23fdems18suvsl"] = {
						CustomName = "23fdems18suvsl"
					},
					["23fdems18utility"] = {
						CustomName = "23fdems18utility"
					},
					["23fdems20utility"] = {
						CustomName = "23fdems20utility"
					},
					["23fdems21suv"] = {
						CustomName = "23fdems21suv"
					},
					["23fdems1500"] = {
						CustomName = "23fdems1500"
					},
					["23fdems1500sl"] = {
						CustomName = "23fdems1500sl"
					},
					["23fdems2500"] = {
						CustomName = "23fdems2500"
					},
					["23fdems3500"] = {
						CustomName = "23fdems3500"
					},
					["23fdems3500sl"] = {
						CustomName = "23fdems3500sl"
					},
					["23fdems3500sl"] = {
						CustomName = "23fdems3500sl"
					},
				},
			},
		},
		{ 	zoneEnable = true,
			garage = {
				spawn = vec4(3643.88, -919.4, 32.02, 267.32),
				out = vec4(3642.34, -907.37, 32.02, 172.09),
				list = {
					["crf450"] = {
						CustomName = "crf450"
					},
					["enduromk2"] = {
						CustomName = "enduromk2"
					},
					["supersanchez"] = {
						CustomName = "supersanchez"
					},
				},
			},
		},
		{ 	zoneEnable = true,
			garage = {
				spawn = vec4(3626.05, -756.59, 42.47, 87.02),
				out = vec4(3616.86, -762.41, 42.47, 1.23),
				list = {
					["bigtex20"] = {
						CustomName = "bigtex20"
					},
					["bigtex40"] = {
						CustomName = "bigtex40"
					},
					["bcthauler2"] = {
						CustomName = "bcthauler2"
					},
					["Diamondtriaxle"] = {
						CustomName = "Diamondtriaxle"
					},
					["Diamondtriaxle"] = {
						CustomName = "Diamondtriaxle"
					},
				},
			},
		},
		{ 	zoneEnable = true,
			garage = {
				spawn = vec4(3596.17, -755.69, 42.47, 348.13),
				out = vec4(3602.92, -761.08, 42.47, 352.75),
				list = {
					["actros"] = {
						CustomName = "actros"
					},
					["daf"] = {
						CustomName = "daf"
					},
					["man"] = {
						CustomName = "man"
					},
					["t680"] = {
						CustomName = "t680"
					},
					["vnl780"] = {
						CustomName = "vnl780"
					},
					["W900"] = {
						CustomName = "W900"
					},
					["legacycab"] = {
						CustomName = "legacycab"
					},
				},
			},
		},
		{ 	zoneEnable = true,
			job = "towing",
			garage = {
				spawn = vec4(965.75, -1483.01, 30.93, 178.95),
				out = vec4(961.35, -1475.06, 31.26, 94.9),
				list = {
					["19tahoe"] = {
						CustomName = "19tahoe"
					},
					["c3f350rollback"] = {
						CustomName = "f350rollback"
					},
					["c3navistar"] = {
						CustomName = "navistar"
					},
					["c3pwrollback"] = {
						CustomName = "pwrollback"
					},
					["c3ramwrecker"] = {
						CustomName = "ramwrecker"
					},
					["c3rollback"] = {
						CustomName = "rollback"
					},
					["c3silvrollback"] = {
						CustomName = "silvrollback"
					},
					["c3wrecker"] = {
						CustomName = "wrecker"
					},
					["c320silvwrecker"] = {
						CustomName = "20silvwrecker"
					},
					["rbchgr18b"] = {
						CustomName = "rbchgr18"
					},
					["roadside1"] = {
						CustomName = "roadside"
					},
					["foxwrecker"] = {
						CustomName = "foxwrecker"
					},
					["foxwrecker2"] = {
						CustomName = "foxwrecker2"
					},
					["foxwrecker3"] = {
						CustomName = "foxwrecker3"
					},
					["20162500dot"] = {
						CustomName = "20162500dot"
					},
					["20162500dotcr"] = {
						CustomName = "20162500dotcr"
					},
					["20162500dotut"] = {
						CustomName = "20162500dotut"
					},
					["20162500dotutcr"] = {
						CustomName = "20162500dotutcr"
					},
					["20181500dot"] = {
						CustomName = "20181500dot"
					},
					["20181500dotcr"] = {
						CustomName = "20181500dotcr"
					},
				},
			},
		},
	},
}
