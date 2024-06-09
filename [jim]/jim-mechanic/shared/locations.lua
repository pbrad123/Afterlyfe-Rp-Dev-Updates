Config.Locations = Config.Locations or {}

Config.Locations[#Config.Locations+1] = { --[[ Alanta Motorworks ]]--
	Enabled = true,
	job = "mechanic",
	zones = {
		vec2(-356.93, -139.02),
		vec2(-348.15, -153.75),
		vec2(-343.69, -154.78),
		vec2(-332.63, -144.02),
		vec2(-324.3, -119.95),
		vec2(-317.82, -102.62),
		vec2(-333.3, -96.71),
		vec2(-353.57, -84.72),
		vec2(-369.42, -78.9),
		vec2(-376.14, -97.44),
		vec2(-348.71, -109.19),
		vec2(-349.99, -120.06)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(-328.42, -130.54, 38.99, 249.84), w = 3.6, d = 0.8, },
	},
	store = {
		{ coords = vec4(-334.12, -135.68, 38.99, 72.09), w = 3.60, d = 0.8 },
	},
	crafting = {
		{ coords = vec4(-332.04, -140.2, 38.99, 256.48), w = 2.8, d = 1.5 },
	},
	clockin = {
		{ coords = vec4(-350.75, -131.79, 39.24, 341.18), prop = true },
	},
	manualRepair = {
		{ coords = vec4(-356.61, -143.09, 38.25, 122.36), prop = true, },
	},
	carLift = {
        { coords = vec4(-201.85, -1319.65, 31.3, 19.36), useMLOLift = true },
        { coords = vec4(-221.27, -1318.71, 31.3, 352.67), useMLOLift = true },
    },
	garage = {
		spawn = vec4(-376.59, -116.57, 38.7, 206.9),
		out = vec4(-371.02, -107.7, 38.68, 157.04),
		list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
		prop = true
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/b/be/BennysOriginalMotorWorks-GTAO-Logo.png",
		{ coords = vec4(-352.23, -131.24, 39.24, 333.05), prop = true },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(-351.64, -128.3, 54.67),
		label = "Alanta Motorworks",
		color = 1,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/kKC2Mw2.png",
	},
	discord = {
		link = "",
		color = 16711680,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ Auto exotic ]]--
	Enabled = true,
	job = "autoexotics",
	zones = {
		vec2(544.92, -165.91),
		vec2(560.74, -165.99),
		vec2(560.72, -170.74),
		vec2(560.64, -195.39),
		vec2(560.75, -201.47),
		vec2(541.47, -201.86)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(560.19, -181.53, 54.51, 274.44), w = 4.0, d = 1.0, },
	},
	store = {
		{ coords = vec4(560.15, -188.23, 54.51, 266.81), w = 1.2, d = 0.25, },
	},
	crafting = {
		{ coords = vec4(558.88, -172.19, 54.51, 1.18), w = 3.2, d = 1.0, },
	},
	clockin = {
		{ coords = vec4(542.79, -199.66, 54.51, 252.81), prop = true },
	},
	manualRepair = {
		{ coords = vec4(539.61, -148.93, 54.49, 179.39), prop = true, },
	},
	garage = {
		spawn = vec4(529.52, -169.6, 54.48, 175.16),
		out = vec4(535.61, -173.84, 54.47, 176.47),
		list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
		prop = true
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(542.99, -198.24, 54.51, 271.53), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(551.19, -183.73, 62.79),
		label = "Auto exotic",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/J37ogNz.png",
	},
	discord = {
		link = "",
		color = 2571775,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ harmony ]]--
	Enabled = true,
	job = "harmony",
	zones = {
		vec2(1185.1, 2632.01),
		vec2(1167.33, 2631.68),
		vec2(1166.74, 2646.17),
		vec2(1186.02, 2646.69)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(1184.64, 2632.03, 37.65, 185.26), w = 1.6, d = 0.6, },
	},
	store = {
		{ coords = vec4(1177.12, 2632.07, 37.93, 182.98), w = 1.6, d = 0.5, },
	},
	crafting = {
		{ coords = vec4(1185.02, 2634.44, 37.65, 269.45), w = 3.2, d = 1.0, },
	},
	clockin = {
		{ coords = vec4(1188.74, 2640.66, 38.66, 177.82), w = 0.45, d = 0.4, },
	},
	manualRepair = {
		{ coords = vec4(1163.37, 2650.74, 37.65, 268.6), prop = true, },
	},
	carLift = {
		{ coords = vec4(491.54, -1328.32, 29.29, 122.78) },
	},
	garage = {
		spawn = vec4(1185.08, 2656.61, 37.65, 74.59),
		out = vec4(1185.55, 2648.18, 37.65, 359.73),
		list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
		prop = true
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/0/0c/HayesAutoBodyShop-GTAV-Logo.png",
		{ coords = vec4(1186.89, 2640.76, 38.76, 185.96), prop = true },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(1178.6, 2639.78, 43.1),
		label = "Harmony",
		color = 57,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/9SYmv3l.png",
	},
	discord = {
		link = "",
		color = 39135,
	}
}

Config.Locations[#Config.Locations+1] = { -- [[Paleto Mechanic]] --
	Enabled = true,
	job = "paleto",
	zones = {
		vec2(102.24, 6525.35),
		vec2(98.99, 6521.93),
		vec2(94.27, 6526.62),
		vec2(72.05, 6495.22),
		vec2(52.6, 6513.52),
		vec2(83.53, 6544.46)
    },
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(64.97, 6524.53, 31.26, 49.59), w = 1.6, d = 0.6 },
	},
	store = {
		{ coords = vec4(60.09, 6519.65, 31.26, 49.66), w = 0.6, d = 0.5 },
	},
	crafting = {
		{ coords = vec4(77.11, 6501.52, 31.26, 223.11), w = 3.2, d = 1.0 },
	},
	clockin = {
		{ coords = vec4(1183.89, 2635.29, 37.78, 185.0), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(57.38, 6521.74, 31.26, 54.06), prop = true, },
	},
	carLift = {
		{ coords = vec4(1174.78, 2644.54, 37.75, 180.0), },
		{ coords = vec4(1182.22, 2644.75, 37.75, 180.0) },
	},
	garage = {
		spawn = vec4(86.0, 6558.19, 31.26, 314.53),
		out = vec4(86.34, 6544.98, 31.26, 313.89),
		list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
		prop = true,
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(69.02, 6503.32, 31.26, 6.7), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(78.76, 6521.52, 39.77),
		label = "paleto mechanic",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/Zd6V0vI.png",
	},
	discord = {
		link = "",
		color = 2571775,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ bennys at the docks ]]--
	Enabled = true,
	job = "bennys",
	zones = {
		vec2(123.26, -3017.19),
		vec2(145.11, -3017.61),
		vec2(154.67, -3016.43),
		vec2(154.68, -3053.98),
		vec2(146.81, -3053.98),
		vec2(146.81, -3050.35),
		vec2(123.57, -3049.9),
		vec2(122.94, -3016.43)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(132.63, -3017.21, 7.04, 3.31), w = 1.6, d = 1.0, },
	},
	store = {
		{ coords = vec4(128.26, -3028.35, 7.04, 359.23), w = 0.6, d = 0.5, },
	},
	crafting = {
		{ coords = vec4(127.21, -3040.29, 7.04, 184.09), w = 3.2, d = 1.0, },
	},
	clockin = {
		{ coords = vec4(153.09, -3052.75, 7.04, 90.98), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(160.53, -3007.54, 5.99, 273.04), prop = true, },
	},
	carLift = {
		{ coords = vec4(113.7, 6623.79, 31.79, 45.31), },
	},
	garage = {
		spawn = vec4(188.23, -3051.91, 5.78, 354.16),
		out = vec4(159.58, -3049.99, 6.0, 265.79),
		list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
		prop = true,
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/4/40/Beeker%27s_logo_GTA_V.png",
		{ coords = vec4(148.03, -3019.02, 7.11, 271.74), prop = true },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(144.14, -3036.65, 17.74),
		label = "Bennys motorwork",
		color = 52,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/hILnM59.png",
	},
	discord = {
		link = "",
		color = 23552,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ GABZ LS TUNER SHOP ]]--
	Enabled = false,
	job = "mechanic",
	zones = {
		vec2(154.69816589355, -3007.0153808594),
		vec2(120.64015197754, -3006.7275390625),
		vec2(120.48593902588, -3051.8874511719),
		vec2(154.61296081543, -3051.5419921875)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(144.38, -3051.3, 7.04, 0.0), w = 0.6, d = 3.6, },
		{ coords = vec4(128.45, -3007.83, 7.04, 0.0), w = 2.4, d = 3.5, },
	},
	store = {
		{ coords = vec4(128.64, -3014.68, 7.04, 0.0), w = 1.6, d = 3.0, },
	},
	crafting = {
		{ coords = vec4(136.71, -3051.29, 7.04, 0.0), w = 0.6, d = 1.0, },
	},
	clockin = {
		{ coords = vec4(145.29, -3012.93, 6.94, 86.0), prop = true, },
		{ coords = vec4(125.55, -3007.25, 6.94, 350.0), w = 0.4, d = 0.45, },
	},
	manualRepair = {
		{ coords = vec4(121.0, -3047.69, 7.04, 270.11), prop = true, },
	},
	nosrefill = {
		{ coords = vec4(121.17, -3044.73, 7.04, 268.96) },
	},
	carLift = {
		{ coords = vec4(123.0, -3038.0, 7.04, 90.0), useMLOLift = true, },
		{ coords = vec4(123.0, -3044.0, 7.04, 90.0), useMLOLift = true, },
		{ coords = vector4(128.28, -3023.01, 7.04, 90.41) }
	},
	garage = {
		spawn = vec4(163.22, -3009.31, 5.27, 89.72),
		out = vec4(157.37, -3016.57, 7.04, 179.58),
		list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
		prop = true,
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(146.44, -3014.09, 6.94, 195.0), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(139.91, -3023.83, 7.04),
		label = "LS Tuner Shop",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/GEgtjT7.png",
	},
	discord = {
		link = "",
		color = 2571775,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ AIRPORT LS CUSTOMS ]]--
	Enabled = false,
	job = "mechanic",
	zones = {
		vec2(-1118.5782470703, -2017.4730224609),
		vec2(-1143.9351806641, -2042.6685791016),
		vec2(-1172.8060302734, -2014.1071777344),
		vec2(-1147.3665771484, -1988.7028808594)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(-1141.11, -2004.79, 13.18, 45.0), w = 1.6, d = 0.6, },
	},
	store = {
		{ coords = vec4(-1144.2, -2003.91, 13.18, 45.0), w = 1.6, d = 0.6, },
	},
	crafting = {
		{ coords = vec4(-1158.71, -2002.37, 13.18, 45.0), w = 0.6, d = 3.8, },
	},
	clockin = {
		{ coords = vec4(-1155.69, -1998.91, 13.22, 62.0), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(-1154.66, -2023.07, 13.18, 225.81), },
	},
	carLift = {
		{ coords = vec4(-1161.43, -2015.11, 13.18, 133.41) },
	},
	garage = {
		spawn = vec4(-1154.63, -1986.95, 12.5, 315.29),
		out = vec4(-1147.87, -1989.09, 13.16, 45.01),
		list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
		prop = true,
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(-1147.41, -2001.07, 13.18, 285.0), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	nosrefill = {
        { coords = vec4(-1154.25, -1997.88, 13.18, 215.84) }
    },
	blip = {
		coords = vec3(-1150.68, -2002.48, 13.18),
		label = "Los Santos Customs",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/hpIW3c7.png",
	},
	discord = {
		link = "",
		color = 2571775,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ POPULAR STREET LS CUSTOMS ]]--
	Enabled = false,
	job = "mechanic",
	zones = {
		vec2(712.07940673828, -1092.9447021484),
		vec2(712.08245849609, -1052.4462890625),
		vec2(767.2265625, -1053.3394775391),
		vec2(770.71307373047, -1113.0911865234),
		vec2(741.73657226562, -1108.9860839844)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(736.25, -1063.52, 22.17, 87.0), w = 3.2, d = 0.6, },
	},
	store = {
		{ coords = vec4(738.35, -1073.36, 22.17, 359.0), w = 3.8, d = 0.6, },
	},
	crafting = {
		{ coords = vec4(724.49, -1075.09, 22.17, 91.0), w = 0.8, d = 1.0, },
	},
	clockin = {
		{ coords = vec4(738.26, -1087.66, 21.97, 276.0), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(732.89, -1093.79, 22.17, 351.08), prop = true, },
	},
	carLift = {
		{ coords = vec4(734.0, -1071.38, 22.17, 0.0) },
		{ coords = vec4(728.95, -1071.41, 22.17, 0.0)}
	},
	garage = {
		spawn = vec4(716.22, -1069.58, 21.6, 1.08),
		out = vec4(719.63, -1068.84, 22.24, 89.2),
		list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
		prop = true
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(738.34, -1090.52, 21.97, 220.0), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(731.69, -1088.84, 22.17),
		label = "Los Santos Customs",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/Sa8TFE5.png",
	},
	discord = {
		link = "",
		color = 2571775,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ OTTOS AUTOS ]]--
	Enabled = false,
	job = "mechanic",
	zones = {
		vec2(824.64721679688, -802.48284912109),
		vec2(838.40698242188, -802.47802734375),
		vec2(837.53460693359, -830.51928710938),
		vec2(823.86810302734, -830.36676025391)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(836.97, -814.73, 26.33, 90.0), w = 0.6, d = 3.6, },
	},
	store = {
		{ coords = vec4(837.02, -808.22, 26.33, 90.0), w = 1.0, d = 1.4, },
	},
	crafting = {
		{ coords = vec4(837.03, -811.74, 26.33, 90.0), w = 1.4, d = 2.2, },
	},
	clockin = {
		{ coords = vec4(834.63, -829.76, 26.13, 197.67), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(835.0, -801.06, 26.27, 0.25), prop = true, },
	},
	carLift = {
		{ coords = vec4(828.15, -812.69, 26.33, 270.5) },
		{ coords = vec4(828.25, -819.93, 26.33, 270.5) },
		{ coords = vec4(827.96, -805.63, 26.33, 270.5) },
	},
	garage = {
		spawn = vec4(826.59, -793.63, 26.21, 84.34),
		out = vec4(824.3, -801.2, 26.37, 0.65),
		list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
		prop = true
	},
	payments = {
		{ coords = vec4(833.96, -826.79, 26.13, 0.35), prop = true },
		img = "https://i.imgur.com/74UVnCb.jpeg",
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(831.03, -813.01, 26.33),
		label = "Ottos Autos",
		color = 1,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/texIPiV.png",
	},
	discord = {
		link = "",
		color = 16711680,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ HAYES AUTOS ]]--
	Enabled = false,
	job = "mechanic",
	zones = {
		vec2(-1439.9047851563, -443.4548034668),
		vec2(-1426.0206298828, -466.5227355957),
		vec2(-1400.1343994141, -451.71572875977),
		vec2(-1414.7999267578, -427.64019775391)
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(-1414.94, -452.35, 35.91, 302.0), w = 4.0, d = 1.0, },
	},
	store = {
		{ coords = vec4(-1408.04, -448.04, 35.91, 302.0), w = 5.5, d = 1.0, },
	},
	crafting = {
		{ coords = vec4(-1407.68, -442.32, 35.91, 302.0), w = 0.6, d = 1.0, },
	},
	clockin = {
		{ coords = vec4(-1427.19, -457.51, 35.71, 300.0), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(-1421.91, -455.41, 35.91, 33.32), prop = true, },
	},
	carLift = {
		{ coords = vec4(-1418.92, -443.53, 35.91, 211.54) },
	},
	garage = {
		spawn = vec4(-1379.84, -451.82, 34.44, 124.0),
		out = vec4(-1401.57, -451.19, 34.48, 212.71),
		list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/0/0c/HayesAutoBodyShop-GTAV-Logo.png",
		{ coords = vec4(-1429.02, -453.6, 35.97, 350.0), prop = true, },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(-1417.12, -445.9, 35.91),
		label = "Hayes Autos",
		color = 57,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/j823Ss0.png",
	},
	discord = {
		link = "",
		color = 39135,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ BENNYS NEXT TO PDM ]]--
	Enabled = false,
	job = "mechanic",
	zones = {
		vec2(-39.657638549805, -1026.12890625),
		vec2(-54.971218109131, -1066.3665771484),
		vec2(-20.210899353027, -1079.1593017578),
		vec2(-6.8900542259216, -1038.0417480469),
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(-40.9, -1056.62, 28.4, 70.0), w = 3.6, d = 0.6 },
	},
	store = {
		{ coords = vec4(-37.53, -1036.11, 28.6, 340.0), w = 1.6, d = 0.6 },
	},
	crafting = {
		{ coords = vec4(-38.25, -1038.99, 28.6, 340.0), w = 4.0, d = 0.6 },
	},
	clockin = {
		{ coords = vec4(-34.95, -1040.71, 28.59, 8.0), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(-45.11, -1048.54, 28.4, 249.94), prop = true, },
	},
	garage = { -- requires jim-jobgarge
		spawn = vec4(-49.14, -1031.25, 27.76, 339.67),
		out = vec4(-42.38, -1035.11, 28.52, 68.01),
		list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
		prop = true, -- spawn a prop (if there isn't alreaady one available in the current MLO at the location)
	},
	payments = { -- requires jim-payments
		{ coords = vec4(-35.91, -1040.47, 28.6, 340.0), prop = true, },
		img = "https://static.wikia.nocookie.net/gtawiki/images/b/be/BennysOriginalMotorWorks-GTAO-Logo.png",
	},
	Restrictions = { -- Remove what you DON'T what the location to be able to edit
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(-43.05, -1043.99, 28.76),
		label = "Bennys Workshop",
		color = 1,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
	},
	discord = {
		link = "",
		color = 16711680,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ LA MESA IMPORT SHOP ]]--
	Enabled = false,
	job = "mechanic",
	zones = {
		vec2(912.01, -987.16),
		vec2(911.06, -973.9),
		vec2(903.25, -974.3),
		vec2(909.76, -957.19),
		vec2(909.58, -955.95),
		vec2(903.27, -956.28),
		vec2(902.61, -945.22),
		vec2(923.9, -943.79),
		vec2(924.5, -956.21),
		vec2(932.85, -956.09),
		vec2(933.32, -952.66),
		vec2(941.05, -952.19),
		vec2(940.58, -944.6),
		vec2(932.12, -944.41),
		vec2(931.48, -934.47),
		vec2(961.09, -932.64),
		vec2(962.56, -955.52),
		vec2(964.37, -983.87),
	},
	autoClock = { enter = true, exit = true, },
	stash = {
		{ coords = vec4(948.48, -972.38, 39.5, 5.0), w = 1.5, d = 1.0, },
	},
	store = {
		{ coords = vec4(951.14, -979.1, 39.5, 4.0), w = 4.2, d = 1.0, },
	},
	crafting = {
		{ coords = vec4(921.14, -986.24, 39.5, 4.0), w = 1.0, d = 4.0, },
	},
	clockin = {
		{ coords = vec4(952.1, -968.39, 39.31, 273.2), prop = true, },
	},
	manualRepair = {
		{ coords = vec4(952.84, -955.83, 39.5, 182.32), prop = false, },
	},
	carLift = {
		{ coords = vec4(956.32, -953.20, 39.5, 273.65) },
		{ coords = vec4(955.99, -947.97, 39.5, 273.65) },
		{ coords = vec4(955.67, -942.91, 39.5, 273.65) },
		{ coords = vec4(954.56, -939.35, 39.5, 3.65) },
		{ coords = vec4(950.48, -939.61, 39.5, 3.65) },
		{ coords = vec4(946.24, -939.88, 39.5, 3.65) },
		{ coords = vec4(942.15, -940.14, 39.5, 3.65) },
		{ coords = vec4(937.95, -940.41, 39.5, 3.65) },
		{ coords = vec4(933.86, -940.67, 39.5, 3.65) },
		{ coords = vec4(910.62, -951.03, 39.5, 3.65) },
		{ coords = vec4(916.10, -950.68, 39.5, 3.65) },
		{ coords = vec4(921.37, -950.34, 39.5, 3.65) },
		{ coords = vec4(905.41, -951.36, 39.5, 3.65) },
		{ coords = vec4(939.96, -978.72, 39.5, 93.60) },
		{ coords = vec4(938.56, -961.8, 39.5, 93.60) },
	},
	garage = {
		spawn = vec4(937.02, -990.27, 38.34, 93.92),
		out = vec4(936.81, -987.17, 38.34, 184.37),
		list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
		prop = true
	},
	payments = {
		img = "https://static.wikia.nocookie.net/gtawiki/images/f/f2/GTAV-LSCustoms-Logo.png",
		{ coords = vec4(949.46, -968.68, 39.31, 92.0), prop = true },
	},
	Restrictions = {
		Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
		Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
	},
	blip = {
		coords = vec3(932.49, -970.83, 39.5),
		label = "Import Garage",
		color = 81,
		sprite = 446,
		disp = 6,
		scale = 0.7,
		cat = nil,
		previewImg = "https://i.imgur.com/pbl4SjU.png",
	},
	discord = {
		link = "",
		color = 2571775,
	}
}

Config.Locations[#Config.Locations+1] = { --[[ REDLINE ]]--
    Enabled = true,
    job = "redline",
    zones = {
        vec2(-548.77136230469, -940.03454589844),
        vec2(-541.89007568359, -918.62713623047),
        vec2(-555.16174316406, -918.66186523438),
        vec2(-555.02508544922, -910.86804199219),
        vec2(-581.12786865234, -911.25476074219),
        vec2(-581.49353027344, -913.33721923828),
        vec2(-587.48864746094, -913.96276855469),
        vec2(-587.51678466797, -939.09588623047)
    },
    autoClock = { enter = true, exit = true, },
    stash = {
        { coords = vec4(-589.87, -930.24, 27.92, 0), w = 5.5, d = 1.0 },
        { coords = vec4(-570.3, -911.4, 23.0, 357.94), w = 1.0, d = 4.0 },
        { coords = vec4(-568.68, -939.89, 23.0, 182.12), w = 1.0, d = 4.0 },
    },
    store = {
        { coords = vec4(837.02, -808.22, 26.33, 90.0), w = 1.0, d = 1.4, },
    },
    crafting = {
        { coords = vec4(-584.08, -939.58, 23.0, 270.0), w = 4.0, d = 1.0 },
        { coords = vec4(-587.25, -932.33, 23.0, 88.12), w = 1.0, d = 4.0 },
        { coords = vec4(-587.28, -923.81, 23.0, 91.74), w = 1.0, d = 4.0 },
        { coords = vec4(-583.94, -913.28, 23.0, 3.32), w = 1.0, d = 4.0 },
    },
    clockin = {
        { coords = vec4(-583.15, -928.24, 23.81, 359.22), prop = false, },
        { coords = vec4(-583.15, -928.24, 23.81, 359.22), prop = false, },
    },
    manualRepair = {
        { coords = vec4(-559.75, -937.28, 23.87, 266.17), prop = true, },
    },
    carLift = {
        { coords = vec4(828.15, -812.69, 26.33, 270.5) },
        { coords = vec4(828.25, -819.93, 26.33, 270.5) },
        { coords = vec4(827.96, -805.63, 26.33, 270.5) },
    },
    -- garage = {
    --     spawn = vec4(826.59, -793.63, 26.21, 84.34),
    --     out = vec4(824.3, -801.2, 26.37, 0.65),
    --     list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
    --     prop = true
    -- },
    payments = {
        { coords = vec4(-589.83, -931.48, 23.54, 86.5), prop = false },
        img = "https://cdn.discordapp.com/attachments/769485468965928971/1033370006571995220/logo-performance-redline_1.png",
    },
    Restrictions = {
        Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
        Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
    },
    blip = {
        coords = vec3(-576.77, -922.96, 23.89),
        label = "Redline Performance",
        color = 1,
        sprite = 446,
        disp = 6,
        scale = 0.7,
        cat = 10,
		previewImg = "https://i.imgur.com/ymdVNYF.png",
    },
    discord = {
        link = "",
        color = 16711680,
    }
}

Config.Locations[#Config.Locations+1] = { --[[ RISING SUN ]]--
    Enabled = false,
    job = "mechanic",
    zones = {
        vec2(-335.01919555664, -146.61500549316),
        vec2(-352.28985595703, -148.73826599121),
        vec2(-364.41989135742, -155.47727966309),
        vec2(-357.14834594727, -138.28387451172),
        vec2(-342.5309753418, -99.100715637207),
        vec2(-319.55111694336, -106.31680297852)
    },
    autoClock = { enter = true, exit = true, },
    stash = {
        { coords = vec4(-351.85, -127.05, 38.2+0.25, 70.45), w = 2.0, d = 3.0, },
        { coords = vec4(-324.62, -106.69, 38.2+0.25, 343.31), w = 2.0, d = 3.0, },
        { coords = vec4(-337.02, -142.3, 38.2+0.25, 161.49), w = 1.0, d = 6.8, },
    },
    store = {
        { coords = vec4(-347.9, -133.19, 39.01, 340.0), w = 1.2, d = 0.25, },
    },
    crafting = {
        { coords = vec4(-345.65, -119.85, 38.2, 161.81), w = 1.5, d = 2.3, },
        { coords = vec4(-332.87, -140.09, 38.2, 251.29), w = 1.0, d = 4.0, },
        { coords = vec4(-329.41, -131.25, 38.2, 251.5), w = 1.0, d = 4.0, },
        { coords = vec4(-323.61, -115.96, 38.2, 249.84), w = 1.0, d = 4.0, },
        { coords = vec4(-329.57, -126.25, 38.2, 162.2), w = 1.5, d = 2.3, },
        { coords = vec4(-340.43, -112.2, 38.2, 339.05), w = 0.75, d = 0.75, },
    },
    clockin = {
        { coords = vec4(-349.77, -145.85, 39.16, 68.8), prop = false },
    },
    manualRepair = {
        { coords = vec4(-360.59, -153.18, 37.95, 31.05), prop = true, },
    },
    -- garage = {
    --     spawn = vec4(-361.48, -123.14, 38.03, 158.96),
    --     out = vec4(-356.2, -126.55, 39.43, 253.49),
    --     list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
    --     prop = true
    -- },
    payments = {
        img = "https://i.imgur.com/uEFKl2F.png",
        { coords = vec4(-349.79, -140.92, 39.02, 154.07), prop = false, },
    },
    Restrictions = {
        Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
        Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
    },
    blip = {
        coords = vec3(-336.84, -136.39, 39.01),
        label = "Rising Sun Customs",
        color = 46,
        sprite = 446,
        disp = 6,
        scale = 0.7,
        cat = 10,
		previewImg = "https://i.imgur.com/J37ogNz.png",
    },
    discord = {
        link = "",
        color = 2571775,
    }
}

Config.Locations[#Config.Locations+1] = { --[[ FLYWHEELS ]]--
    Enabled = false,
    job = "mechanic",
	zones = {
		vec2(1737.6037597656, 3335.5266113281),
        vec2(1772.2158203125, 3355.8051757812),
        vec2(1794.5047607422, 3321.3020019531),
        vec2(1751.0029296875, 3294.0798339844)
    },
    autoClock = { enter = true, exit = true, },
    stash = {
        { coords = vec4(1763.4, 3324.25, 41.43-1, 118.9), w = 1.0, d = 3.5,}
    },
    store = {
        { coords = vector4(1768.43, 3320.26, 41.44-1, 118.0), w = 0.5, d = 2.0, },
    },
    crafting = {
        { coords = vec4(1763.45, 3332.2, 41.33-1, 28.9), w = 1.0, d = 8.0, },
    },
    clockin = {
        { coords = vec4(1767.37, 3324.13, 41.52, 205.63), prop = true, },
        { coords = vec4(1770.06, 3323.12, 41.35, 29.69), prop = false, },

    },
    manualRepair = {
        { coords = vec4(1776.98, 3320.63, 41.43, 210.0), prop = true, },
    },
    carLift = {
        { coords = vector4(1756.04, 3320.41, 41.27, 298.86) },
    },
    -- garage = {
    --     spawn = vec4(826.59, -793.63, 26.21, 84.34),
    --     out = vec4(824.3, -801.2, 26.37, 0.65),
    --     list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
    --     prop = true
    -- },
    payments = {
        { coords = vec4(1770.95, 3323.61, 41.44, 207.25), prop = false },
        img = "https://https://static.wikia.nocookie.net/gtawiki/images/c/c6/Flywheels-GTAV-Logo-0.png",
    },
    Restrictions = {
        Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
        Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
    },
    blip = {
        coords = vec3(1774.36, 3331.67, 41.35),
        label = "Flywheels",
        color = 57,
        sprite = 446,
        disp = 6,
        scale = 0.7,
        cat = nil,
		previewImg = "https://i.imgur.com/rH2aI8o.png",
    },
    discord = {
        link = "",
        color = 16711680,
    }
}

Config.Locations[#Config.Locations+1] = { --[[ Super Mechanic ]]--
    Enabled = true,
    job = "sport",
    zones = {
        vector2(24.55, -1778.6),
        vector2(44.41, -1794.45),
        vector2(53.0, -1784.21),
        vector2(53.82, -1783.16),
        vector2(62.57, -1772.77),
        vector2(63.46, -1771.74),
        vector2(66.61, -1767.85),
        vector2(69.95, -1763.9),
        vector2(72.72, -1760.68),
        vector2(73.57, -1759.69),
        vector2(83.04, -1748.28),
        vector2(83.37, -1747.7),
        vector2(90.78, -1738.67),
        vector2(83.19, -1732.77),
        vector2(77.29, -1739.72),
        vector2(64.94, -1729.86),
        vector2(63.2, -1731.97),
        vector2(53.83, -1743.22)
    },
    autoClock = { enter = true, exit = true, },
    stash = {
        { coords = vec4(25.07, -1777.83, 29.33, 50.43), w = 0.6, d = 3.6, },
        { coords = vec4(51.0, -1780.2, 29.29, 146.1), w = 0.6, d = 3.6, },
    },
    store = {
		{ coords = vector4(59.4, -1770.7, 29.29, 328.41), w = 1.0, d = 1.4, },
	},
    crafting = {
        { coords = vec4(48.67, -1788.43, 29.29, 236.99), w = 1.4, d = 2.2, },
        { coords = vec4(57.98, -1777.18, 29.29, 230.69), w = 1.4, d = 2.2, },
        { coords = vec4(68.33, -1764.87, 29.29, 232.19), w = 1.4, d = 2.2, },
    },
    clockin     = {
        { coords = vec4(57.2, -1739.59, 29.31, 49.3), prop = true, },
    },
    carLift = {
        -- { coords = vec4(-334.65, -136.87, 39.00, 340), useMLOLift = false }, -- Bay 4 [GTA Prop]
        { coords = vector4(63.48, -1739.4, 29.5, 149.78), useMLOLift = true }, -- Bay 3 [GTA Prop]
        { coords = vector4(59.01, -1744.74, 29.51, 145.7), useMLOLift = true }, -- Bay 2 [GTA Prop]
        { coords = vector4(35.96, -1772.33, 29.51, 315.41), useMLOLift = true }, -- Bay 1 [GTA Prop]
    },
    manualRepair = {
        { coords = vec4(58.84, -1733.29, 29.31, 50.49), prop = true, },
    },
	garage = { -- requires jim-jobgarge
        spawn = vec4(39.63, -1732.52, 29.3, 234.81),
        out = vec4(54.52, -1738.81, 29.31, 50.58),
        list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3","energyraptor" },
        prop = true, -- spawn a prop (if there isn't alreaady one available in the current MLO at the location)
    },
    payments = {
        img = "<center><p><img src=https://i.imgur.com/74UVnCb.jpeg width=150px></p>",
        { coords = vec4(55.29, -1741.98, 29.31, 54.34), prop = true },
    },
    Restrictions = { -- Remove what you DON'T what the location to be able to edit
        Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
        Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
    },
    nosrefill = {
        { coords = vec4(59.95, -1736.4, 29.31, 63.0) }
    },
    blip = {
        coords = vec3(55.05, -1760.93, 29.3),
        label = "Super Mechanic",
        color = 1,
        sprite = 446,
        disp = 6,
        scale = 0.7,
        cat = nil,
		previewImg = "https://i.imgur.com/J37ogNz.png",
    },
    discord = {
        link = "",
        color = 16711680,
    }
}

Config.Locations[#Config.Locations+1] = { --[[ RFC LS CUSTOMS ]]--
    Enabled = false,
    job = "mechanic",
    zones = {
        vec2(-357.11694335938, -138.5697479248),
        vec2(-350.16461181641, -150.59289550781),
        vec2(-350.35028076172, -151.14776611328),
        vec2(-349.26226806641, -151.57026672363),
        vec2(-353.04995727539, -161.36512756348),
        vec2(-345.96157836914, -163.96807861328),
        vec2(-342.69039916992, -155.07688903809),
        vec2(-341.96646118164, -155.39378356934),
        vec2(-345.19152832031, -164.26715087891),
        vec2(-338.00445556641, -166.9347076416),
        vec2(-334.79922485352, -157.95303344727),
        vec2(-334.67324829102, -156.9211730957),
        vec2(-333.49572753906, -157.36219787598),
        vec2(-337.83312988281, -169.46090698242),
        vec2(-315.77774047852, -163.20722961426),
        vec2(-304.49011230469, -132.14988708496),
        vec2(-309.84133911133, -130.18266296387),
        vec2(-307.64532470703, -123.81855010986),
        vec2(-320.4919128418, -118.1721496582),
        vec2(-316.2926940918, -106.99356842041),
        vec2(-316.73837280273, -106.22454071045),
        vec2(-313.30139160156, -95.538734436035),
        vec2(-351.69564819336, -81.245178222656),
        vec2(-359.94036865234, -103.92008209229),
        vec2(-334.56372070312, -113.00981140137),
        vec2(-330.22259521484, -101.34365844727),
        vec2(-329.94000244141, -102.03875732422),
        vec2(-334.04333496094, -113.31317901611),
        vec2(-334.67007446289, -113.93590545654),
        vec2(-346.6354675293, -109.56227111816)
    },
    autoClock = { enter = true, exit = true, },
    stash = {
        { coords = vec4(-329.54, -112.39, 39.0-0.4, 340.92), w = 0.6, d = 3.6, },
        { coords = vec4(-322.47, -114.78, 38.95-0.4, 343.93), w = 0.6, d = 3.6, },
    },
    store = {
		{ coords = vec4(-334.64, -164.61, 39.01-0.4, 70.08), w = 1.0, d = 1.4, },
	},
    crafting = {
        { coords = vec4(-314.61, -157.33, 39.04-0.4, 253.75), w = 1.4, d = 2.2, },
        { coords = vec4(-310.28, -145.19, 39.12-0.4, 255.76), w = 1.4, d = 2.2, },
        { coords = vec4(-306.29, -135.03, 39.11-0.4, 258.35), w = 1.4, d = 2.2, },
        { coords = vec4(-319.82, -119.97, 38.81-0.4, 335.43), w = 1.4, d = 2.2, },
    },
    clockin     = {
        { coords = vec4(-345.9, -130.4, 38.94, 244.06), prop = false, },
        { coords = vec4(-350.0, -150.9, 39.31, 160.92), prop = false, },
        { coords = vec4(-347.52, -130.47, 41.9, 250), prop = false, },
    },
    carLift = {
        -- { coords = vec4(-334.65, -136.87, 39.00, 340), useMLOLift = false }, -- Bay 4 [GTA Prop]
        { coords = vec4(-324.56, -155.07, 39.00, 250), useMLOLift = true }, -- Bay 3 [GTA Prop]
        { coords = vec4(-320.22, -144.26, 39.00, 250), useMLOLift = true }, -- Bay 2 [GTA Prop]
        { coords = vec4(-316.65, -133.79, 39.00, 250), useMLOLift = true }, -- Bay 1 [GTA Prop]
    },
    manualRepair = {
        { coords = vector4(-337.34, -132.77, 38.98, 250), prop = false, },
    },
	-- garage = { -- requires jim-jobgarge
    --     spawn = vec4(-49.14, -1031.25, 27.76, 339.67),
    --     out = vec4(-42.38, -1035.11, 28.52, 68.01),
    --     list = { "hvywrecker", "petewreck", "slamtruck", "cheburek", "utillitruck3" },
    --     prop = true, -- spawn a prop (if there isn't alreaady one available in the current MLO at the location)
    -- },
    payments = {
        img = "<center><p><img src=https://i.imgur.com/74UVnCb.jpeg width=150px></p>",
        { coords = vec4(-346.42, -131.81, 39.01, 340), prop = false },
        { coords = vec4(-344.19, -125.77, 39.01, 340), prop = false },
        { coords = vec4(-361.8, -100.09, 39.55, 340), prop = false },
    },
    Restrictions = { -- Remove what you DON'T what the location to be able to edit
        Vehicle = { "Compacts", "Sedans", "SUVs", "Coupes", "Muscle", "Sports Classics", "Sports", "Super", "Motorcycles", "Off-road", "Industrial", "Utility", "Vans", "Cycles", "Service", "Emergency", "Commercial", },
        Allow = { "tools", "cosmetics", "repairs", "nos", "perform" },
    },
    nosrefill = {
        { coords = vec4(-334.52, -114.66, 39.00, 161.14) }
    },
    blip = {
        coords = vec3(-360.24, -124.11, 38.09),
        label = "Bennys Workshop",
        color = 1,
        sprite = 446,
        disp = 6,
        scale = 0.7,
        cat = nil,
		previewImg = "https://i.imgur.com/J37ogNz.png",
    },
    discord = {
        link = "",
        color = 16711680,
    }
}