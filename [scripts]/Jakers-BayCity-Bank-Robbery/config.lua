Config = {}

Config.MinimumBayCityHeistPolice = 0   --<< Minium Ammount of Police need to be on duty.                    
Config.Cooldown = 60 -- Minuets        --<< Bank Robbery Cool Down Timer, i.e everyone will wait 1 hour for the next baycity bank to become avaiable to rob.
Config.MinBagReward = 150			         --<< Minium Ammount of Reward Item.
Config.MaxBagReward = 250			         --<< Maxium Ammount of Reward Item.
Config.BagWorthMin = 1000              --<< Minium Ammount of MarkedBillsWorth.
Config.BagWorthMax = 1500              --<< Maxium Ammount of MarkedBillsWorth.
Config.Rewarditem = "markedbills"      --<< If success you will get this item. You can change this.

--memorygame
Config.MemoryCorrectBlocks = 10
Config.MemoryIncorrectBlocks = 3
Config.MemoryTimeToShow = 3
Config.MemoryTimeToLose = 10

--bag for animation
Config.eupbag = 45

Config.AlarmLocation = {
  AlarmCoords = vector3(-1305.32, -825.59, 17.15),
}

Config.Locations = {
  ["GateOneTH"] = {
      x = -1305.68,
      y = -820.48,
      z = 17.15,
      isDone = false,
      isBusy = false,
  },
  ["GateTwoTH"] = {
    x = -1307.82,
    y = -814.05,
    z = 17.15,
    isDone = false,
    isBusy = false,
  },
}


Config.Trollys = {
  [1] = {
    ['Type'] = 'Money',
    ['Open-State'] = false,
    ['Grab-Coords'] = {['X'] = -1309.59, ['Y'] = -813.69, ['Z'] = 16.15},
    ['Coords'] = {
      ['X'] = -1309.59,
      ['Y'] = -813.69,
      ['Z'] = 16.15,
      ['H'] = 165
    },
  },
}

--For Evidence
Config.MaleNoHandshoes = {
  [0] = true,
  [1] = true,
  [2] = true,
  [3] = true,
  [4] = true,
  [5] = true,
  [6] = true,
  [7] = true,
  [8] = true,
  [9] = true,
  [10] = true,
  [11] = true,
  [12] = true,
  [13] = true,
  [14] = true,
  [15] = true,
  [18] = true,
  [26] = true,
  [52] = true,
  [53] = true,
  [54] = true,
  [55] = true,
  [56] = true,
  [57] = true,
  [58] = true,
  [59] = true,
  [60] = true,
  [61] = true,
  [62] = true,
  [112] = true,
  [113] = true,
  [114] = true,
  [118] = true,
  [125] = true,
  [132] = true,
}

Config.FemaleNoHandshoes = {
  [0] = true,
  [1] = true,
  [2] = true,
  [3] = true,
  [4] = true,
  [5] = true,
  [6] = true,
  [7] = true,
  [8] = true,
  [9] = true,
  [10] = true,
  [11] = true,
  [12] = true,
  [13] = true,
  [14] = true,
  [15] = true,
  [19] = true,
  [59] = true,
  [60] = true,
  [61] = true,
  [62] = true,
  [63] = true,
  [64] = true,
  [65] = true,
  [66] = true,
  [67] = true,
  [68] = true,
  [69] = true,
  [70] = true,
  [71] = true,
  [129] = true,
  [130] = true,
  [131] = true,
  [135] = true,
  [142] = true,
  [149] = true,
  [153] = true,
  [157] = true,
  [161] = true,
  [165] = true,
}
