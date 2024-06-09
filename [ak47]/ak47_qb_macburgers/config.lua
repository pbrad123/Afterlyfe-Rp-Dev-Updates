Config = {}
Config.Locale = "en"
Config.format = {
	currency = 'USD',								-- This is the format of the currency, so that your currency sign appears correctly
	location = 'en-US'								-- This is the location of your country, to format the decimal places according to your standard
}									
Config.UseProgressBar = true						-- If true then set your progress bar in client/utils.lua

Config.SocietyInManagement = false --enable if your society is inside qb-management

Config.ManagementRank = 2                          -- Minimum job rank who can update item price & stock form shop management

Config.Shop = {
	blip = {enable = true, name = 'McDonalds', sprite = 124, color = 5, size = 1.0, radius = 0.0, radius_color = 4},
	management = vector3(91.99, 291.8, 110.21),
	crafting = {
		menu = vector3(92.45, 293.22, 110.21),
		data = {
			big_mac = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(91.95, 295.56, 110.21, 339.74),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(93.43, 295.04, 110.21, 338.26),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(95.29, 294.32, 110.21, 341.4),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			crispy_chicken_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(91.95, 295.56, 110.21, 339.74),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(93.43, 295.04, 110.21, 338.26),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(95.29, 294.32, 110.21, 341.4),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			double_quarter_pounder = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(91.95, 295.56, 110.21, 339.74),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(93.43, 295.04, 110.21, 338.26),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(95.29, 294.32, 110.21, 341.4),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			egg_mcmuffin = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(91.95, 295.56, 110.21, 339.74),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(93.43, 295.04, 110.21, 338.26),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(95.29, 294.32, 110.21, 341.4),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			quarter_pounder = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(91.95, 295.56, 110.21, 339.74),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(93.43, 295.04, 110.21, 338.26),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(95.29, 294.32, 110.21, 341.4),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			quarter_pounder_cheese = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(91.95, 295.56, 110.21, 339.74),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(93.43, 295.04, 110.21, 338.26),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(95.29, 294.32, 110.21, 341.4),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			sausage_biscuit = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(91.95, 295.56, 110.21, 339.74),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(93.43, 295.04, 110.21, 338.26),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(95.29, 294.32, 110.21, 341.4),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			sausage_burrito = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(91.95, 295.56, 110.21, 339.74),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(93.43, 295.04, 110.21, 338.26),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(95.29, 294.32, 110.21, 341.4),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			spicy_crispy_chicken_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(91.95, 295.56, 110.21, 339.74),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(93.43, 295.04, 110.21, 338.26),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(95.29, 294.32, 110.21, 341.4),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			spicy_deluxe_sandwich = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(91.95, 295.56, 110.21, 339.74),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(93.43, 295.04, 110.21, 338.26),  delay = 20, msg = 'Working...'},	-- x, y, z, heading, second, message
					{pos = vector4(95.29, 294.32, 110.21, 341.4),  delay = 30, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			

			hot_fudge_sundae = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_cappuccino = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_coca_cola = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_diet_coke = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_dr_pepper = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_fanta_orange = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_fanta_orange = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_flurry_candies = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_flurry_cookies = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_fruit_punch = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_hot_chocolate = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_iced_coffee = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_iced_tea = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_sprite = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_strawberry_shake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			mc_vanilla_shake = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			orange_juice = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			strawberry_watermelon_slushie = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},
			tropical_mango_slushie = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting

				},
				steps = {
					{pos = vector4(94.88, 290.63, 110.21, 251.05),  delay = 5, msg = 'Working...'},	-- x, y, z, heading, second, message
				}
			},

			big_mac_combo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'big_mac', quantity = 1, willremove = true},
					{item = 'world_famous_fries', quantity = 1, willremove = true},
					{item = 'mc_coca_cola', quantity = 1, willremove = true},
				},
				steps = {

				}
			},
			cheeseburger_combo_meal = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'quarter_pounder', quantity = 2, willremove = true},
					{item = 'world_famous_fries', quantity = 1, willremove = true},
					{item = 'mc_coca_cola', quantity = 1, willremove = true},
				},
				steps = {
					
				}
			},
			deluxe_crispy_sandwich_combo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'spicy_deluxe_sandwich', quantity = 1, willremove = true},
					{item = 'world_famous_fries', quantity = 1, willremove = true},
					{item = 'mc_sprite', quantity = 1, willremove = true},
				},
				steps = {
					
				}
			},
			double_quarter_combo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'double_quarter_pounder', quantity = 1, willremove = true},
					{item = 'world_famous_fries', quantity = 1, willremove = true},
					{item = 'mc_dr_pepper', quantity = 1, willremove = true},
				},
				steps = {
					
				}
			},
			egg_cheese_biscuit = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'sausage_biscuit', quantity = 1, willremove = true},
					{item = 'mc_cappuccino', quantity = 1, willremove = true},
					{item = 'chicken_mcnuggets', quantity = 1, willremove = true},
				},
				steps = {
					
				}
			},
			mc_combo_chicken = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'mc_coca_cola', quantity = 1, willremove = true},
					{item = 'world_famous_fries', quantity = 1, willremove = true},
					{item = 'chicken_mcnuggets', quantity = 1, willremove = true},
				},
				steps = {
					
				}
			},
			spicy_chicken_sandwich_combo = { 										-- reward item name
				reward = 1,										-- reward item amount
				required = {									-- required items for crafting
					{item = 'spicy_crispy_chicken_sandwich', quantity = 1, willremove = true},
					{item = 'world_famous_fries', quantity = 1, willremove = true},
					{item = 'mc_iced_tea', quantity = 1, willremove = true},
				},
				steps = {
					
				}
			},
			


		}
	},
	storage = {
		pos = vector4(89.81, 296.74, 110.21, 69.22), 		-- x, y, z, heading
		prop = nil,
		items = {
			world_famous_fries = {
                name = 'World Famous Fries',                        	-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            chicken_mcnuggets = {
                name = 'Chicken Mc Nuggets',                        	-- item name
                price = 10,                                     -- price of the item. set it 0 if you don't want to buy with society money
                slots = 20,                                     -- container size
                available = 20,                                 -- available in stock
                regeneration = 60,                              -- in second
            },
            
		}
	},
	sell_coords = {											-- The coordinates where customes will buy things on this store (coordinates composed of x, y, z)
		vector3(87.84, 283.59, 110.21),
		vector3(88.77, 285.93, 110.21),
		vector3(89.5, 288.15, 110.21),
		vector3(89.37, 289.53, 110.21),
		vector3(87.71, 290.05, 110.21)

	},
	data = {
		market_items = {					-- Here you configure the items definitions
			big_mac = {				-- The item ID
				name = "Mega Mac",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			crispy_chicken_sandwich = {				-- The item ID
				name = "Cispy Chicken Sandwich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			double_quarter_pounder = {				-- The item ID
				name = "Double Quarter King",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			egg_mcmuffin = {				-- The item ID
				name = "Morning Egg Muffin",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			quarter_pounder = {				-- The item ID
				name = "Quarter King",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			quarter_pounder_cheese = {				-- The item ID
				name = "Quarter King Cheese",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			sausage_biscuit = {				-- The item ID
				name = "Hearty Sausage Biscuit",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			sausage_burrito = {				-- The item ID
				name = "Savory Sausage Wrap",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			spicy_crispy_chicken_sandwich = {				-- The item ID
				name = "Fiery Crispy Chicken Sandwich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			spicy_deluxe_sandwich = {				-- The item ID
				name = "Fiery Deluxe Sandwich",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = true
			},
			chicken_mcnuggets = {				-- The item ID
				name = "Chicken Nuggets",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = false
			},
			world_famous_fries = {				-- The item ID
				name = "Legendary Crispy Fries",	-- The item display name
				page = 0,					-- Set on which page this item will appear
				process = false
			},
			
			big_mac_combo = {				-- The item ID
				name = "Big Mac Combo",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			cheeseburger_combo_meal = {				-- The item ID
				name = "Cheeseburger Combo Meal",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			deluxe_crispy_sandwich_combo = {				-- The item ID
				name = "Deluxe Crispy Sandwich Combo",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			double_quarter_combo = {				-- The item ID
				name = "Double Quarter Combo",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			egg_cheese_biscuit = {				-- The item ID
				name = "Egg Cheese Biscuit",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			mc_combo_chicken = {				-- The item ID
				name = "Combo Chicken",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			mc_nuggets_happy_meal = {				-- The item ID
				name = "Nuggets Happy Meal",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			spicy_chicken_sandwich_combo = {				-- The item ID
				name = "Sicy Chicken Sandwich Combo",	-- The item display name
				page = 1,					-- Set on which page this item will appear
				process = true
			},
			
			hot_fudge_sundae = {				-- The item ID
				name = "Hot Fudge Sundae",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			mc_flurry_candies = {				-- The item ID
				name = "Flurry Candies",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			mc_flurry_cookies = {				-- The item ID
				name = "Flurry Cookies",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			mc_cappuccino = {				-- The item ID
				name = "Cappuccino",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			mc_hot_chocolate = {				-- The item ID
				name = "Hot Chocolate",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			mc_strawberry_shake = {				-- The item ID
				name = "Strawberry Shake",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			mc_vanilla_shake = {				-- The item ID
				name = "Vanilla Shake",	-- The item display name
				page = 2,					-- Set on which page this item will appear
				process = true
			},
			
			mc_iced_coffee = {				-- The item ID
				name = "Iced Coffee",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			mc_coca_cola = {				-- The item ID
				name = "Coca Cola",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			mc_diet_coke = {				-- The item ID
				name = "Diet Coke",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			mc_dr_pepper = {				-- The item ID
				name = "Dr Pepper",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			mc_fanta_orange = {				-- The item ID
				name = "Fanta Orange",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			mc_fruit_punch = {				-- The item ID
				name = "Fruit Punch",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			mc_iced_tea = {				-- The item ID
				name = "Iced Tea",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			mc_sprite = {				-- The item ID
				name = "Sprite",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			orange_juice = {				-- The item ID
				name = "Orange Juice",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			strawberry_watermelon_slushie = {				-- The item ID
				name = "Strawberry Watermelon Slushie",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			tropical_mango_slushie = {				-- The item ID
				name = "Tropical Mango Slushie",	-- The item display name
				page = 3,					-- Set on which page this item will appear
				process = true
			},
			
		},
		pagination = {						-- Create pages to your market items (max 10 pages)
			[0] = {name = "Burger", icon = 'fa-basket-shopping'},
			[1] = {name = "Combo", icon = 'fa-basket-shopping'},
			[2] = {name = "Shakes", icon = 'fa-basket-shopping'},
			[3] = {name = "Drinks", icon = 'fa-basket-shopping'},
		},
	},
}