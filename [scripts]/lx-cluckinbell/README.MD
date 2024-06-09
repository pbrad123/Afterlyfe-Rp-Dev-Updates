# LX Cluckin Bell
- Cluckin Bell Job for QBCore

# Dependencies
- [QBCore](https://github.com/qbcore-framework/qb-core)
- [qb-doorlock](https://github.com/qbcore-framework/qb-doorlock)
- [qb-management](https://github.com/qbcore-framework/qb-management)
- [qb-target](https://github.com/qbcore-framework/qb-target)

# Installation 
- Follow the every steps for the script to work.
- Step 1 : Copy and paste the lines to your qb-core/shared/jobs.lua
- Step 2 : Copy and paste the items to your qb-core/shared/items.lua
- Step 3 : Drag and drop the images folder to your qb-inventory/html/images
- Step 4 : Put the stream file to your stream folder.
- Step 5 : Create a new doorlock file in qb-doorlock/configs as cluckinbell.lua and put the codes below
- Step 6 : Go to qb-management/client/cl_config.lua and put the codes below. Also don't FORGET to create a new row on SQL in the management_funds as cluckinbell.
- Step 7 : Add consumables items to your qb-smallresources/config.lua

# Jobs
```lua
    ["cluckinbell"] = {
        label = "cluckinbell",
        defaultDuty = true,
        offDutyPay = false,
        grades = {
            ['0'] = {name = "Salesman", payment = 500 },
            ['1'] = {name = "Boss", isboss = true, payment = 50 },
        },
    },
```


# Items
```lua
-- LX Cluckinbell
	['c_burger'] 					  = {['name'] = 'c_burger',						['label'] = 'Burger',					['weight'] = 0,			['type'] = 'item',		['image'] = 'c_burger.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_salad'] 			 	 	  = {['name'] = 'c_salad',						['label'] = 'Salad',		    		['weight'] = 0,			['type'] = 'item',  	['image'] = 'c_salad.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_burgerbun'] 				  = {['name'] = 'c_burgerbun',					['label'] = 'Burger Bun',				['weight'] = 0,			['type'] = 'item',		['image'] = 'c_burgerbun.png',			['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_burgerpatty'] 		 	 	  = {['name'] = 'c_burgerpatty',				['label'] = 'Burger Patty',				['weight'] = 0,			['type'] = 'item',		['image'] = 'c_burgerpatty.png',		['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_rawwings'] 					  = {['name'] = 'c_rawwings',					['label'] = 'Raw Wings',				['weight'] = 0,			['type'] = 'item',		['image'] = 'c_rawwings.png',			['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_rawballs'] 				  	  = {['name'] = 'c_rawballs',					['label'] = 'Raw Balls',				['weight'] = 0,			['type'] = 'item',		['image'] = 'c_rawballs.png',			['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_frozennugget'] 			 	  = {['name'] = 'c_frozennugget',				['label'] = 'Frozen Nugget',			['weight'] = 0,			['type'] = 'item',		['image'] = 'c_frozennugget.png',		['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_meat'] 						  = {['name'] = 'c_meat',						['label'] = 'Meat',						['weight'] = 0,			['type'] = 'item',		['image'] = 'c_meat.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_friedwings'] 			 	  = {['name'] = 'c_friedwings',					['label'] = 'Wings Bucket',				['weight'] = 0,			['type'] = 'item',		['image'] = 'c_friedwings.png',			['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_balls'] 					  = {['name'] = 'c_balls',						['label'] = 'Balls',					['weight'] = 0,			['type'] = 'item',		['image'] = 'c_balls.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_friednugget'] 				  = {['name'] = 'c_friednugget',				['label'] = 'Nugget',					['weight'] = 0,			['type'] = 'item',		['image'] = 'c_friednugget.png',		['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_potato'] 					  = {['name'] = 'c_potato',						['label'] = 'Potato',					['weight'] = 0,			['type'] = 'item',		['image'] = 'c_potato.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_onion'] 				 	  = {['name'] = 'c_onion',						['label'] = 'Onion',					['weight'] = 0,			['type'] = 'item',		['image'] = 'c_onion.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_cucumber'] 				 	  = {['name'] = 'c_cucumber',					['label'] = 'Cucumber',					['weight'] = 0,			['type'] = 'item',		['image'] = 'c_cucumber.png',			['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_tomato'] 			 	 	  = {['name'] = 'c_tomato',						['label'] = 'Tomato',					['weight'] = 0,			['type'] = 'item',		['image'] = 'c_tomato.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_lettuce'] 				 	  = {['name'] = 'c_lettuce',					['label'] = 'Lettuce',					['weight'] = 0,			['type'] = 'item',		['image'] = 'c_lettuce.png',			['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_lemon'] 				 	  = {['name'] = 'c_lemon',						['label'] = 'Lemon',					['weight'] = 0,			['type'] = 'item',		['image'] = 'c_lemon.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_corn'] 				 	 	  = {['name'] = 'c_corn',						['label'] = 'Corn',						['weight'] = 0,			['type'] = 'item',		['image'] = 'c_corn.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_slicedpotato'] 		 	 	  = {['name'] = 'c_slicedpotato',				['label'] = 'Sliced Potato',			['weight'] = 0,			['type'] = 'item',		['image'] = 'c_slicedpotato.png',		['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_slicedonion'] 			      = {['name'] = 'c_slicedonion',				['label'] = 'Sliced Onion',	    		['weight'] = 0,			['type'] = 'item',		['image'] = 'c_slicedonion.png',		['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_slicedcucumber'] 	    	  = {['name'] = 'c_slicedcucumber',				['label'] = 'Sliced Cucumber',		 	['weight'] = 0,			['type'] = 'item',		['image'] = 'c_slicedcucumber.png',    	['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_slicedtomato'] 				  = {['name'] = 'c_slicedtomato',				['label'] = 'Sliced Tomato',			['weight'] = 0,			['type'] = 'item',		['image'] = 'c_slicedtomato.png',		['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_cornkernels'] 			 	  = {['name'] = 'c_cornkernels',				['label'] = 'Corn Kernels',				['weight'] = 0,			['type'] = 'item',		['image'] = 'c_cornkernels.png',		['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_friedpotato'] 		 	 	  = {['name'] = 'c_friedpotato',				['label'] = 'Fried Potato',		   		['weight'] = 0,			['type'] = 'item',  	['image'] = 'c_friedpotato.png',		['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_onionrings'] 			 	  = {['name'] = 'c_onionrings',					['label'] = 'Onion Rings',				['weight'] = 0,			['type'] = 'item',		['image'] = 'c_onionrings.png',			['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_coffeebeans'] 				  = {['name'] = 'c_coffeebeans',				['label'] = 'Coffee Beans',				['weight'] = 0,			['type'] = 'item',		['image'] = 'c_coffeebeans.png',		['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_milk'] 				 	 	  = {['name'] = 'c_milk',						['label'] = 'Milk',						['weight'] = 0,			['type'] = 'item',		['image'] = 'c_milk.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_cheapcoffee'] 				  = {['name'] = 'c_cheapcoffee',				['label'] = 'Cheap Coffee',	 	    	['weight'] = 0,			['type'] = 'item',		['image'] = 'c_cheapcoffee.png',	   	['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_milkycoffee'] 			 	  = {['name'] = 'c_milkycoffee',				['label'] = 'Milky Coffee',		    	['weight'] = 0,			['type'] = 'item',		['image'] = 'c_milkycoffee.png',	    ['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_cola'] 			 			  = {['name'] = 'c_cola',						['label'] = 'Cola',	   			        ['weight'] = 0,			['type'] = 'item',		['image'] = 'c_cola.png',			    ['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_sprunk'] 				 	  = {['name'] = 'c_sprunk',						['label'] = 'Sprunk',	  			    ['weight'] = 0,			['type'] = 'item',		['image'] = 'c_sprunk.png',		 	    ['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_emptybottle'] 				  = {['name'] = 'c_emptybottle',				['label'] = 'Empty Bottle',	  		    ['weight'] = 0,			['type'] = 'item',		['image'] = 'c_emptybottle.png',		['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_bag'] 				  		  = {['name'] = 'c_bag',						['label'] = 'Bag',	  		    		['weight'] = 0,			['type'] = 'item',		['image'] = 'c_bag.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
	['c_ticket'] 				  	  = {['name'] = 'c_ticket',						['label'] = 'Cluckin Bell Ticket',	  	['weight'] = 0,			['type'] = 'item',		['image'] = 'c_ticket.png',				['unique'] = false,		['useable'] = true,		['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = ''},
```

# Doorlocks
```lua
Config.DoorList['cluckinbell-1'] = {
    locked = true,
    doorRate = 1.0,
    distance = 2,
    doors = {
        {objName = 1256799287, objYaw = 115.99999237061, objCoords = vec3(-139.336227, -256.493652, 43.705788)},
        {objName = 1256799287, objYaw = 295.0, objCoords = vec3(-138.554031, -258.139191, 43.705788)}
    },
    doorLabel = 'c_first',
    doorType = 'double',
    fixText = false,
    authorizedJobs = { ['cluckinbell'] = 0 },
} 
Config.DoorList['cluckinbell-2'] = {
    doorLabel = 'c_second',
    doorRate = 1.0,
    objName = 1772858245,
    distance = 2,
    doorType = 'door',
    locked = true,
    objCoords = vec3(-142.214996, -255.926346, 43.794731),
    objYaw = 250.00003051758,
    fixText = false,
    authorizedJobs = { ['cluckinbell'] = 0 },
}
Config.DoorList['cluckinbell-3'] = {
    doorLabel = 'c_third',
    doorRate = 1.0,
    objName = 1772858245,
    distance = 2,
    doorType = 'door',
    locked = true,
    objCoords = vec3(-147.879684, -264.747772, 43.835663),
    objYaw = 70.000007629395,
    fixText = false,
    authorizedJobs = { ['cluckinbell'] = 0 },
}
Config.DoorList['cluckinbell-4'] = {
    doorLabel = 'c_fourth',
    doorRate = 1.0,
    objName = 1668008345,
    distance = 2,
    doorType = 'door',
    locked = false,
    objCoords = vec3(-146.852631, -267.104248, 43.808838),
    objYaw = 70.000007629395,
    fixText = false,
    authorizedJobs = { ['cluckinbell'] = 0 },
}
```

# Management
```lua
Config.BossMenus = { 
    ['cluckinbell'] = {
        vector3(-149.87, -262.73, 43.64),
    },
}
Config.BossMenuZones = { 
    ['cluckinbell'] = {
        { coords = vector3(-149.87, -262.73, 43.64), length = 1.2, width = 1.8, heading = 72.0, minZ = 43.30, maxZ = 44.5},
    },
}
```

# Consumables
```lua
--  Eat
    ["c_burger"] = math.random(40, 50),
    ["c_friedwings"] = math.random(40, 50),
    ["c_balls"] = math.random(40, 50),
    ["c_friednugget"] = math.random(40, 50),
    ["c_salad"] = math.random(40, 50),
    ["c_friedpotato"] = math.random(40, 50),
    ["c_onionrings"] = math.random(40, 50),

--  Drink
    ["c_cola"] = math.random(40, 50),
    ["c_sprunk"] = math.random(40, 50),
    ["c_cheapcoffee"] = math.random(40, 50),
    ["c_milkycoffee"] = math.random(40, 50),
```
