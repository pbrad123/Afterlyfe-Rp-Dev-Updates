Config.DebugCircle = true -- enable if you want to see the circle marker coords & size with  command below
Config.Command = 'lab'     -- /lab

Config.LabHelpMarker = true

Config.Anti_AFK = true
Config.Check_AFK = {min = 2, max = 5} -- in minute

function canCollect(data) -- if you want to do some additional check before collect, you can place your code here (client side)
    return true
end

function canProcess(data) -- if you want to do some additional check before process, you can place your code here (client side)
    return true
end

Config.Labs = {
    CollectPoints = {
        {
            item        = "xanax",                               -- Item name
            item_label  = "Xanax",                               -- Item label
            reward      = {min = 1, max = 1},                    -- Minimium & maximum item player will get after each delay
            pos         = vector4(3562.79, 3675.53, 27.14, 1.0), -- if you set the last value to 1.0, it will play animation
            size        = 2.27,                                  -- soze of the circle
            delay = 10,                                          -- delay in second
        },
        {
            item        = "chemicals",
            item_label  = "Chemicals",
            reward      = {min = 1, max = 2},
            pos         = vector4(3562.79, 3669.28, 27.14, 0.0),
            size        = 4.44,
            delay = 3,
        },
        {
            item        = "heroin_brick",
            item_label  = "Heroin Brick",
            reward      = {min = 1, max = 2},
            pos         = vector4(4683.26, -4537.74, 24.0, 276.43),
            size        = 3.01,
            delay = 10,
        },
        {
            item        = "codeine",
            item_label  = "Codeine",
            reward      = {min = 1, max = 2},
            pos         = vector4(-170.24, 6386.89, 30.51, 0.0),
            size        = 2.62,
            delay = 5,
        },
        {
            item        = "molly_tablet",
            item_label  = "Molly Tablet",
            reward      = {min = 1, max = 2},
            pos         = vector4(-176.59, 6382.49, 30.51, 0.0),
            size        = 2.29,
            delay = 5,
        },
        {
            item        = "meth_raw",
            item_label  = "Meth Raw",
            reward      = {min = 1, max = 2},
            pos         = vector4(-2346.0, 3275.78, 37.78, 245.46),
            size        = 7.45,
            delay = 3,
        },
        {
            item        = "perc",
            item_label  = "Perc",
            reward      = {min = 1, max = 2},
            pos         = vector4(449.53, -1975.47, 16.28, 0.0),
            size        = 5.29,
            delay = 5,
        },
        {
            item        = "steroids",
            item_label  = "Steroids",
            reward      = {min = 1, max = 2},
            pos         = vector4(3536.08, 3661.58, 27.12, 0),
            size        = 5.42,
            delay = 7,
        },
    },
    ProcessPoints = {
        {
            item        = "fentanyl_pills",
            item_label  = "Fentanyl Pills",
            reward      = {min = 1, max = 1},
            pos         = vector4(3559.87, 3674.08, 27.14, 0.0),
            size        = 2.17,
            recipe = {
                chemicals = {qty = 5, willremove = true},
                pooch_bag = {qty = 1, willremove = true},
                lighter   = {qty = 1, willremove = false},
            },
            delay = 10,
        },
        {
            item        = "xpills",
            item_label  = "X-Pills",
            reward      = {min = 1, max = 1},
            pos         = vector4(3559.57, 3672.81, 27.14, 0.0),
            size        = 2.38,
            recipe = {
                chemicals    = {qty = 5, willremove = true},
                plastic_wrap = {qty = 1, willremove = true},
            },
            delay = 10,
        },
        {
            item        = "cocaine",
            item_label  = "Cocaine",
            reward      = {min = 1, max = 1},
            pos         = vector4(1092.62, -3194.92, -38.99, 185.7),
            size        = 2.32,
            recipe = {
                coca_leaf    = {qty = 2, willremove = true},
            },
            delay = 8,
        },
        {
            item        = "coke_pooch",
            item_label  = "Coke Pooch",
            reward      = {min = 1, max = 1},
            pos         = vector4(1090.2, -3194.86, -38.99, 181.04),
            size        = 2.44,
            recipe = {
                cocaine    = {qty = 5, willremove = true},
                pooch_bag    = {qty = 1, willremove = true},
            },
            delay = 10,
        },
        {
            item        = "cocaine",
            item_label  = "Cocaine",
            reward      = {min = 1, max = 1},
            pos         = vector4(1101.36, -3198.81, -38.99, 180.2),
            size        = 2.43,
            recipe = {
                cokebrick    = {qty = 1, willremove = true},
            },
            delay = 30,
        },
        {
            item        = "acid",
            item_label  = "Acid",
            reward      = {min = 1, max = 1},
            pos         = vector4(74.96, -817.33, 30.27, 0),
            size        = 3.39,
            recipe = {
                chemicals    = {qty = 1, willremove = true},
                ergot        = {qty = 10, willremove = true},
            },
            delay = 10,
        },
        {
            item        = "adderall",
            item_label  = "Adderall",
            reward      = {min = 1, max = 1},
            pos         = vector4(78.19, -818.40, 30.26, 0),
            size        = 3.29,
            recipe = {
                chemicals    = {qty = 5, willremove = true},
            },
            delay = 15,
        },
        {
            item        = "angeldust",
            item_label  = "Angel Dust",
            reward      = {min = 1, max = 1},
            pos         = vector4(75.65, -812.68, 30.35, 0),
            size        = 2.59,
            recipe = {
                chemicals    = {qty = 5, willremove = true},
            },
            delay = 15,
        },
        {
            item        = "oxycodone",
            item_label  = "Oxycodone",
            reward      = {min = 1, max = 1},
            pos         = vector4(77.97, -813.60, 30.32, 0),
            size        = 2.57,
            recipe = {
                chemicals    = {qty = 5, willremove = true},
            },
            delay = 15,
        },
        {
            item        = "dab",
            item_label  = "DAB",
            reward      = {min = 1, max = 1},
            pos         = vector4(82.80, -814.74, 30.29, 0),
            size        = 3.33,
            recipe = {
                chemicals    = {qty = 5, willremove = true},
            },
            delay = 15,
        },
        {
            item        = "heroin_shot",
            item_label  = "Heroin Shot",
            reward      = {min = 1, max = 1},
            pos         = vector4(-1339.2, -941.39, 15.36, 108.86),
            size        = 2.89,
            recipe = {
                heroin       = {qty = 5, willremove = true},
                syriange     = {qty = 1, willremove = true},
                lighter      = {qty = 1, willremove = false},
            },
            delay = 10,
        },
        {
            item        = "blacktar",
            item_label  = "Black Tar Heroin",
            reward      = {min = 10, max = 25},
            pos         = vector4(-81.05, -2727.3, 8.74, 192.1),
            size        = 3.0,
            recipe = {
                heroin       = {qty = 5, willremove = true},
                syriange     = {qty = 1, willremove = true},
                lighter      = {qty = 1, willremove = true},
            },
            delay = 20,
        },
        {
            item        = "heroin",
            item_label  = "Heroin",
            reward      = {min = 10, max = 25},
            pos         = vector4(2505.82, -429.93, 115.69, 47.64),
            size        = 3.0,
            recipe = {
                heroin_brick = {qty = 1, willremove = true},
                chemicals    = {qty = 2, willremove = true},
            },
            delay = 20,
        },
        {
            item        = "speedball",
            item_label  = "Speed Ball",
            reward      = {min = 10, max = 25},
            pos         = vector4(2022.38, 4926.59, 42.69, 0),
            size        = 3.62,
            recipe = {
                heroin       = {qty = 3, willremove = true},
                cocaine      = {qty = 3, willremove = true},
                syriange     = {qty = 1, willremove = true},
                lighter      = {qty = 1, willremove = true},
            },
            delay = 15,
        },
        {
            item        = "molly_pooch",
            item_label  = "Molly Pooch",
            reward      = {min = 1, max = 1},
            pos         = vector4(-179.58, 6388.09, 30.51, 0.0),
            size        = 3.01,
            recipe = {
                molly_tablet = {qty = 25, willremove = true},
                pooch_bag    = {qty = 1, willremove = true},
                lighter      = {qty = 0, willremove = false},
            },
            delay = 20,
        },
        {
            item        = "xanax_box",
            item_label  = "Xanax Box",
            reward      = {min = 1, max = 1},
            pos         = vector4(-174.06, 6386.45, 30.51, 0.0),
            size        = 4.25,
            recipe = {
                xanax        = {qty = 50, willremove = true},
                plastic_wrap = {qty = 1, willremove = true},
            },
            delay = 25,
        },
        {
            item        = "lean",
            item_label  = "Lean",
            reward      = {min = 1, max = 1},
            pos         = vector4(1656.74, 4.42, 166.11, 216.94),
            size        = 3.01,
            recipe = {
                jolly_candy  = {qty = 3, willremove = true},
                sprite       = {qty = 1, willremove = true},
                double_cup   = {qty = 1, willremove = true},
            },
            delay = 10,
        },
        {
            item        = "LSD",
            item_label  = "lsd",
            reward      = {min = 1, max = 1},
            pos         = vector4(29.48, 3666.81, 40.44, 161.96),
            size        = 2.27,
            recipe = {
                acid_paper  = {qty = 1, willremove = true},
                water       = {qty = 1, willremove = true},
                acid        = {qty = 2, willremove = true},
            },
            delay = 12,
        },
        {
            item        = "meth_pooch",
            item_label  = "Meth Pooch",
            reward      = {min = 1, max = 1},
            pos         = vector4(1009.58, -3194.92, -38.99, 357.85),
            size        = 5.43,
            recipe = {
                meth_raw    = {qty = 10, willremove = true},
                pooch_bag   = {qty = 1, willremove = true},
                lighter     = {qty = 1, willremove = false},
            },
            delay = 12,
        },
        {
            item        = "opium_pooch",
            item_label  = "Opium Pooch",
            reward      = {min = 1, max = 1},
            pos         = vector4(2867.35, 4466.92, 40.34, 0.0),
            size        = 5.26,
            recipe = {
                opium       = {qty = 2, willremove = true},
                pooch_bag   = {qty = 1, willremove = true},
                lighter     = {qty = 1, willremove = false},
            },
            delay = 10,
        },
        {
            item        = "opium",
            item_label  = "Opium",
            reward      = {min = 1, max = 1},
            pos         = vector4(2861.87, 4465.00, 40.34, 0.0),
            size        = 4.97,
            recipe = {
                poppy_tears = {qty = 15, willremove = true},
            },
            delay = 10,
        },
        {
            item        = "perc_pooch",
            item_label  = "Perc Pooch",
            reward      = {min = 1, max = 1},
            pos         = vector4(429.01, -1978.65, 16.28, 0.0),
            size        = 17.75,
            recipe = {
                perc        = {qty = 10, willremove = true},
                pooch_bag   = {qty = 1, willremove = true},
                lighter     = {qty = 1, willremove = false},
            },
            delay = 10,
        },
        {
            item        = "blacklightning",
            item_label  = "Black Lightning",
            reward      = {min = 1, max = 1},
            pos         = vector4(438.15, -1961.32, 16.28, 0),
            size        = 7.42,
            recipe = {
                chemicals   = {qty = 10, willremove = true},
            },
            delay = 10,
        },
        {
            item        = "shroom_pooch",
            item_label  = "Shroom Pooch",
            reward      = {min = 1, max = 1},
            pos         = vector4(1487.00, 1129.89, 113.35, 0.0),
            size        = 4.91,
            recipe = {
                shroom      = {qty = 10, willremove = true},
                pooch_bag   = {qty = 1, willremove = true},
                lighter     = {qty = 1, willremove = false},
            },
            delay = 3,
        },
        {
            item        = "spice_pooch",
            item_label  = "Spice Pooch",
            reward      = {min = 1, max = 1},
            pos         = vector4(2433.24, 4968.71, 41.36, 0.0),
            size        = 7.65,
            recipe = {
                spice_leaf  = {qty = 10, willremove = true},
                pooch_bag   = {qty = 1, willremove = true},
                lighter     = {qty = 1, willremove = false},
            },
            delay = 5,
        },
        {
            item        = "weed_pooch",
            item_label  = "Weed Pooch",
            reward      = {min = 1, max = 1},
            pos         = vector4(1039.17, -3205.02, -38.17, 94.48),
            size        = 2.29,
            recipe = {
                weed_leaf   = {qty = 4, willremove = true},
                pooch_bag   = {qty = 1, willremove = true},
                lighter     = {qty = 1, willremove = false},
            },
            delay = 10,
        },
        {
            item        = "weed_pooch",
            item_label  = "Weed Pooch",
            reward      = {min = 1, max = 1},
            pos         = vector4(1039.17, -3205.02, -38.17, 94.48),
            size        = 2.19,
            recipe = {
                weed_leaf   = {qty = 4, willremove = true},
                pooch_bag   = {qty = 1, willremove = true},
                lighter     = {qty = 1, willremove = false},
            },
            delay = 10,
        },
        {
            item        = "crack",
            item_label  = "Crack",
            reward      = {min = 1, max = 1},
            pos         = vector4(-9.714946, -1428.484, 30.10148, 1.0),
            size        = 1.71,
            recipe = {
                bakingsoda   = {qty = 1, willremove = true},
                water        = {qty = 1, willremove = true},
                cocaine      = {qty = 5, willremove = true},
            },
            delay = 15,
        },
        {
            item        = "crack_pooch",
            item_label  = "Crack Pooch",
            reward      = {min = 1, max = 1},
            pos         = vector4(-10.00385, -1440.852, 30.10155, 0),
            size        = 3.0,
            recipe = {
                crack       = {qty = 1, willremove = true},
                pooch_bag   = {qty = 1, willremove = true},
                lighter     = {qty = 1, willremove = false},
            },
            delay = 15,
        },
        {
            item        = "bathsalts",
            item_label  = "Bath Salts",
            reward      = {min = 1, max = 1},
            pos         = vector4(3535.84, 3668.27, 27.12, 0),
            size        = 4.07,
            recipe = {
                steroids    = {qty = 1, willremove = true},
                chemicals   = {qty = 2, willremove = true},
            },
            delay = 10,
        },
        {
            item        = "ketamine",
            item_label  = "ketamine",
            reward      = {min = 1, max = 1},
            pos         = vector4(3539.74, 3667.5, 27.12, 0),
            size        = 3.75,
            recipe = {
                chemicals   = {qty = 2, willremove = true},
            },
            delay = 10,
        },
        {
            item        = "flakka",
            item_label  = "Flakka",
            reward      = {min = 1, max = 1},
            pos         = vector4(442.14, -1965.65, 16.28, 0),
            size        = 7.06,
            recipe = {
                chemicals   = {qty = 3, willremove = true},
            },
            delay = 10,
        },
    },
}
