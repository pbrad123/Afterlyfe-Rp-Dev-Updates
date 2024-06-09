Config = {}

Config.Framework = "QBCore"  -- or "ESX"
Config.KeyBind = "HOME"
Config.ServerName = "Afterlyfe RP"
Config.EnableCursor = true
Config.ShowIdsAboveHeads = true -- staff only

Config.ShowHighlightedJobs = true
Config.HighlightedJobs = {
  [1] = {
    jobs = {"police", "sast", "bcso", "fbi"}, -- the name of one or more jobs in QBCore that you want to be counted
    label = "Police", -- this can be any label you choose!
    icon = "shield", -- https://icons.getbootstrap.com/ - paste the name of the icon without the bi- prefix
    color = "#135dd8", -- this must be a hex code
    countOnDutyOnly = false -- only include players set as on duty in the count
  },
  [2] = {
    jobs = {"doj"}, -- the name of one or more jobs in QBCore that you want to be counted
    label = "Judge", -- this can be any label you choose!
    icon = "shield", -- https://icons.getbootstrap.com/ - paste the name of the icon without the bi- prefix
    color = "#135dd8", -- this must be a hex code
    countOnDutyOnly = false -- only include players set as on duty in the count
  },
  [3] = {
    jobs = {"ambulance"},
    label = "Medics",
    icon = "heart-pulse",
    color = "#27ae60",
    countOnDutyOnly = false
  },
  [4] = {
    jobs = {"mechanic"},
    label = "Mechanics",
    icon = "wrench-adjustable",
    color = "#e67e22",
    countOnDutyOnly = false
  },
  [5] = {
    jobs = {"redline"},
    label = "Redline",
    icon = "wrench-adjustable",
    color = "#e67e22",
    countOnDutyOnly = false
  },
  [6] = {
    jobs = {"cardealer"},
    label = "Car Dealers",
    icon = "car-front",
    color = "#c0392b",
    countOnDutyOnly = false
  },
  [7] = {
    jobs = {"fbi"},
    label = "FBI",
    icon = "shield",
    color = "#135dd8",
    countOnDutyOnly = false
  },
  [8] = {
    jobs = {"sport"},
    label = "Sport Mechanics ",
    icon = "wrench-adjustable",
    color = "#e67e22",
    countOnDutyOnly = false
  },
  [9] = {
    jobs = {"autoexotics"},
    label = "Auto Exotics",
    icon = "wrench-adjustable",
    color = "#FFE5B4",
    countOnDutyOnly = false
  },
  [10] = {
    jobs = {"staff"},
    label = "AfterLyfe Staff",
    icon = "shield",
    color = "#fc03f8",
    countOnDutyOnly = false
  },
  [11] = {
    jobs = {"towing"},
    label = "Towing/Sadot",
    icon = "wrench-adjustable",
    color = "#090a0a",
    countOnDutyOnly = false
  },
  [12] = {
    jobs = {"bennys"},
    label = "Bennys Mechanics",
    icon = "wrench-adjustable",
    color = "#e67e25",
    countOnDutyOnly = false
  },
  [13] = {
    jobs = {"paleto"},
    label = "paleto Mechanics",
    icon = "wrench-adjustable",
    color = "#FFC300 ",
    countOnDutyOnly = false
  },
  
}

Config.ShowPlayers = true
Config.UseCharacterNames = true -- if true uses QB character name, if false uses FiveM username
Config.ShowAdminBadges = true
Config.AdminBadgeIcon = "star-fill" -- https://icons.getbootstrap.com/ - paste the name of the icon without the bi- prefix
Config.ShowPlayerIds = true
Config.ShowPlayerJob = true
Config.ShowPlayerJobDutyStatus = false
