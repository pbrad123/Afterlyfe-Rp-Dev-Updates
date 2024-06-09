function canSellDealer(dealer, data) -- if you want to do some additional check, you can place your code here
    return true
end

Config.DrugDealerItems = {
    ['Smoke on the water'] = {                   -- any unique name for this config
        pos = vector3(-1172.06, -1572.18, 4.66), -- position of the dealer
        items = {
            weed_pooch = {                       -- item name
                label = 'Weed Pooch',            -- item label
                price = math.random(600, 600),   -- will be random between those two numbers in every server restart or you can use a fixed value
            },
            spice_pooch = {
                label = 'Spice Pooch',
                price = math.random(400, 500),
            },
            flakka = {
                label = 'Flakka',
                price = math.random(400, 500),
            },
        },
    },
    ['Shroom Dealer'] = {
        pos = vector3(-1146.47, 4940.92, 222.26),
        items = {
            shroom_pooch = {
                label = 'Shroom Pooch',
                price = math.random(280, 350),
            },
        },
    },
    ['White Powder Dealer'] = {
        pos = vector3(180.31, 1112.65, 226.79),
        items = {
            coke_pooch = {
                label = 'Coke Pooch',
                price = math.random(800, 1100),
            },
            crack_pooch = {
                label = 'Coke Pooch',
                price = math.random(550, 750),
            },
            ketamine = {
                label = 'Ketamine',
                price = math.random(550, 750),
            },
            bathsalts = {
                label = 'bath Salts',
                price = math.random(550, 750),
            },
            
        },
    },
    ['Lean Dealer'] = {
        pos = vector3(477.35, -1950.72, 35.87),
        items = {
            lean = {
                label = 'Lean',
                price = math.random(400, 600),
            },
        },
    },
    ['Meth Dealer'] = {
        pos = vector3(-1121.15, 2712.1, 18.87),
        items = {
            meth_pooch = {
                label = 'Meth Pooch',
                price = math.random(750, 850),
            },
            lsd = {
                label = 'lsd',
                price = math.random(750, 900),
            },
        },
    },
    ['Dollar Pills'] = {
        pos = vector3(591.17, 2744.87, 42.04),
        items = {
            perc_pooch = {
                label = 'Perc Pooch',
                price = math.random(200, 300),
            },
            xpills = {
                label = 'X-Pills',
                price = math.random(300, 400),
            },
            fentanyl_pills = {
                label = 'Fentanyl Pills',
                price = math.random(300, 400),
            },
            xanax_box = {
                label = 'Xanax Box',
                price = math.random(400, 600),
            },
            adderall = {
                label = 'Adderall',
                price = math.random(350, 400),
            },
            angeldust = {
                label = 'Angel Dust',
                price = math.random(350, 400),
            },
            oxycodone = {
                label = 'Oxycodone',
                price = math.random(350, 400),
            },
            dab = {
                label = 'Dab',
                price = math.random(350, 400),
            },
            blacklightning = {
                label = 'Black Lightning',
                price = math.random(350, 400),
            },
            
        },
    },
    ['Opium Dealer'] = {
        pos = vector3(41.35, 3705.21, 40.71),
        items = {
            opium_pooch = {
                label = 'Opium Pooch',
                price = math.random(200, 250),
            },
            heroin_shot = {
                label = 'heroin shot',
                price = math.random(800, 1000),
            },
            blacktar = {
                label = 'Black Tar Heroin',
                price = math.random(900, 1050),
            },
        },
    },
    ['Acid Dealer'] = {
        pos = vector3(166.89, 2229.06, 90.77),
        items = {
            acid = {
                label = 'Acid',
                price = math.random(400, 550),
            },
        },
    },
    
}