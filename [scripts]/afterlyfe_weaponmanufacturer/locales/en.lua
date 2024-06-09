--██╗      █████╗ ███╗   ██╗ ██████╗ ██╗   ██╗ █████╗  ██████╗ ███████╗
--██║     ██╔══██╗████╗  ██║██╔════╝ ██║   ██║██╔══██╗██╔════╝ ██╔════╝
--██║     ███████║██╔██╗ ██║██║  ███╗██║   ██║███████║██║  ███╗█████╗  
--██║     ██╔══██║██║╚██╗██║██║   ██║██║   ██║██╔══██║██║   ██║██╔══╝  
--███████╗██║  ██║██║ ╚████║╚██████╔╝╚██████╔╝██║  ██║╚██████╔╝███████╗
--╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚══════╝

local Translations = {
    --[[ General ]]--
    error = {
        missing_materials = 'You don\'t have all the materials',
        cancelled = 'You changed your mind',
    },
    warning = {
    },
    info = {
    },
    success = {
    },
    --[[ Commands ]]--
    commands = {
    },
    --[[ Menu ]]--
    menu = {
        orderingboard = 'Ordering Laptop',
        orderingboardicon = 'fas fa-laptop',
        cuttingstation = 'Cutting Station',
        cuttingstationicon = 'fas fa-tablet',
        ammostation = 'Ammo Station',
        ammostationicon = 'fas fa-hamburger',
        drillstation = 'Drill Station',
        drillstationicon = 'fas fa-fire-burner',
        assemblingstation = 'Assembling Station',
        assemblingstationicon= 'fas fa-temperature-high',
        exit = 'Return',
        exiticon = 'fas fa-circle-arrow-left',
    },
    --[[ Input ]]--

    --[[ Progressbar ]]--
    progressbar = {
        makingweapons = 'Making weapons...',
    },
    
    --[[ Functions ]]--
    functions = {
    },

    --[[ Targets ]]--
    target = {
        orderingboard = 'Use Laptop',
        orderingboardicon = 'fas fa-laptop',
        cuttingstation = 'Use Cutting Station',
        cuttingstationicon = 'fas fa-tablet',
        ammostation = 'Use Ammo Station',
        ammostationicon = 'fas fa-hamburger',
        drillstation = 'Use Drill Station',
        drillstationicon = 'fas fa-fire-burner',
        assemblingstation = 'Use Assembling Station',
        assemblingstationicon = 'fas fa-temperature-high',
        materials = 'Ingredients',
        materialsicon = 'fas fa-temperature-low',
    },
    --[[ Other ]]--
    other = {
        requirements = 'Requirements:',
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})