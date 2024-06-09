# mt-farm2.0
QBCore farm system with seeds and some more things

##

# Preview:

<div>
  <a href="https://youtu.be/PA3UjOw83y4" target="_blank"><img src="https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white">
</div>

# Instalation:

- Run SQL File

- Add to qb-target/init.lua at Config.TargetModels:

```
    ["farm_vaca"] = {
        models = {
            "a_c_cow",
        },
        options = {
            {
                type = "client",
                event = "mt-farm:client:OrdenharVacas",
                icon = "fas fa-cow", 
                label = "Milk Cow",
            }
        },
        distance = 2.5,
    },
```

- Add to qb-core/shared/items.lua

```
	--mt-farm 2.0
	["farm_fertilizante"]     	= {["name"] = "farm_fertilizante", 				["label"] = "Agricultural Fertilizer", 			["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_fertilizante.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_tomate"]     		= {["name"] = "farm_tomate", 				    ["label"] = "Tomato Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_tomate.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_trigo"]     			= {["name"] = "farm_trigo", 				    ["label"] = "Wheat Seeds", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_trigo.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_batatas"]    		= {["name"] = "farm_batatas", 				    ["label"] = "Potato Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_batatas.png", 		    	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_pepino"]     		= {["name"] = "farm_pepino", 				    ["label"] = "Cucumber Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_pepino.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_cebola"]     		= {["name"] = "farm_cebola", 				    ["label"] = "Onion Seeds", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_cebola.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_cove"]     			= {["name"] = "farm_cove", 				    	["label"] = "Cabbage Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_cove.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_alface"]     		= {["name"] = "farm_alface", 				    ["label"] = "Lettuce Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_alface.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_cenora"]     		= {["name"] = "farm_cenora", 				    ["label"] = "Carrot Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_cenora.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_beterraba"]     		= {["name"] = "farm_beterraba", 				["label"] = "Beet Seeds", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_beterraba.png", 		    	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_nabo"]     			= {["name"] = "farm_nabo", 				    	["label"] = "Turnip Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_nabo.png", 		    		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_cogumelos"]     		= {["name"] = "farm_cogumelos", 				["label"] = "Mushrooms Seeds", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_cogumelos.png", 		    	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_regador"]     		= {["name"] = "farm_regador", 				    ["label"] = "Empty Watering Can", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_regador.png", 		    	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_regador_cheio"]     	= {["name"] = "farm_regador_cheio", 		 	["label"] = "Full Watering Can", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_regador.png", 		    	["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_pa"]     			= {["name"] = "farm_pa", 				    	["label"] = "Shovel", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_pa.png", 		    			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_trigo_colhido"]     	= {["name"] = "farm_trigo_colhido", 			["label"] = "Wheat", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_trigo_colhido.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_tomate_colhido"]     = {["name"] = "farm_tomate_colhido", 			["label"] = "Tomato", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_tomate_colhido.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_nabo_colhido"]     	= {["name"] = "farm_nabo_colhido", 				["label"] = "Turnip", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_nabo_colhido.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_batatas_colhido"]    = {["name"] = "farm_batatas_colhido", 			["label"] = "Potato", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_batatas_colhido.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_pepino_colhido"]     = {["name"] = "farm_pepino_colhido", 			["label"] = "Cucumber", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_pepino_colhido.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_cebola_colhido"]     = {["name"] = "farm_cebola_colhido", 			["label"] = "Onion", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_cebola_colhido.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_cove_colhido"]     	= {["name"] = "farm_cove_colhido", 				["label"] = "Cabbage", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_cove_colhido.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_alface_colhido"]     = {["name"] = "farm_alface_colhido", 			["label"] = "Lettuce", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_alface_colhido.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_cenora_colhido"]     = {["name"] = "farm_cenora_colhido", 			["label"] = "Carrot", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_cenora_colhido.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_cogumelos_colhido"]  = {["name"] = "farm_cogumelos_colhido", 		["label"] = "Mushrooms", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_cogumelos_colhido.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_leite"]  			= {["name"] = "farm_leite", 					["label"] = "Fresh Milk", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_leite.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_maca"]  				= {["name"] = "farm_maca", 						["label"] = "Apple", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_maca.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_pessego"]  			= {["name"] = "farm_pessego", 					["label"] = "Peach", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_pessego.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_pera"]  				= {["name"] = "farm_pera", 						["label"] = "Pear", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_pera.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_manga"]  			= {["name"] = "farm_manga", 					["label"] = "Mango", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_manga.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_laranja"]  			= {["name"] = "farm_laranja", 					["label"] = "Orange", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_laranja.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_limao"]  			= {["name"] = "farm_limao", 					["label"] = "Limon", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_limao.png", 					["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_tesoura"]  			= {["name"] = "farm_tesoura", 					["label"] = "Farm Scisors", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_tesoura.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_sumo_tomate"]  		= {["name"] = "farm_sumo_tomate", 				["label"] = "Tomato Juice", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_sumo_tomate.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_farinha"]  			= {["name"] = "farm_farinha", 					["label"] = "Wheat Flour", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_farinha.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_sumo_laranja"]  		= {["name"] = "farm_sumo_laranja", 				["label"] = "Orange Juice", 					["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_sumo_laranja.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_sumo_pessego"]  		= {["name"] = "farm_sumo_pessego", 				["label"] = "Peach Juice", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_sumo_pessego.png", 			["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_sumo_maca"]  		= {["name"] = "farm_sumo_maca", 				["label"] = "Apple Juice", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_sumo_maca.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_sumo_manga"]  		= {["name"] = "farm_sumo_manga", 				["label"] = "Mango Juice", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_sumo_manga.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_sumo_pera"]  		= {["name"] = "farm_sumo_pera", 				["label"] = "Pear Juice", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_sumo_pera.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["farm_sumo_limao"]  		= {["name"] = "farm_sumo_limao", 				["label"] = "Lemon Juice", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "farm_sumo_limao.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

```

- Add images to qb-inventory/html/images

##

# Credits:
Some code used from: https://github.com/dojwun/doj-marijuana

# Dependicies:
- qb-core: https://github.com/qbcore-framework/qb-core
- qb-target: https://github.com/qbcore-framework/qb-target
- qb-menu: https://github.com/qbcore-framework/qb-menu
- dpemotes: https://github.com/qbcore-framework/dpemotes
