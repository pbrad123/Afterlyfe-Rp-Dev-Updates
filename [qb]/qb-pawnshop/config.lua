Config = {}

Config.PawnLocation = {
    [1] = {
            coords = vector3(412.34, 314.81, 103.13),
            length = 1.5,
            width = 1.8,
            heading = 207.0,
            debugPoly = false,
            minZ = 100.97,
            maxZ = 105.42,
            distance = 3.0
        },
    }

Config.BankMoney = false -- Set to true if you want the money to go into the players bank
Config.UseTimes = false -- Set to false if you want the pawnshop open 24/7
Config.TimeOpen = 7 -- Opening Time
Config.TimeClosed = 17 -- Closing Time
Config.SendMeltingEmail = true

Config.UseTarget = GetConvar('UseTarget', 'true') == 'false'

Config.PawnItems = {
    [1] = {
        item = 'goldchain',
        price = math.random(200,400)
    },
    [2] = {
        item = 'diamond_ring',
        price = math.random(200,400)
    },
    [3] = {
        item = 'rolex',
        price = math.random(200,400)
    },
    [4] = {
        item = 'tenkgoldchain',
        price = math.random(200,400)
    },
    [5] = {
        item = 'tablet',
        price = math.random(200,400)
    },
    [6] = {
        item = 'iphone',
        price = math.random(200,400)
    },
    [7] = {
        item = 'samsungphone',
        price = math.random(200,400)
    },
    [8] = {
        item = 'laptop',
        price = math.random(200,400)
    },
    [9] = {
        item = 'diamond',
        price = math.random(200,400)
    },
    [10] = {
        item = 'goldbar',
        price = math.random(200,400)
    }
}

Config.MeltingItems = { -- meltTime is amount of time in minutes per item
    [1] = {
        item = 'goldchain',
        rewards = {
            [1] = {
                item = 'goldbar',
                amount = 2
            }
        },
        meltTime = 0.15
    },
    [2] = {
        item = 'diamond_ring',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 1
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [3] = {
        item = 'rolex',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 1
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            },
            [3] = {
                item = 'electronickit',
                amount = 1
            }
        },
        meltTime = 0.15
    },
    [4] = {
        item = 'tenkgoldchain',
        rewards = {
            [1] = {
                item = 'diamond',
                amount = 5
            },
            [2] = {
                item = 'goldbar',
                amount = 1
            }
        },
        meltTime = 0.15
    },
}
