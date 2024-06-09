Config.Locations =  {
    ["Centres"] = {
        ["RecycleCity"] = {
            Enable = true,
            Job = nil,
            Blip = {
                blipEnable = true,
                name = "Recycle Center",
                coords = vector4(750.18, -1401.9, 26.54, 193.75),
                blipTrue = true,
                sprite = 365,
                col = 2,
                model = `G_M_M_ChemWork_01`,
                scenario = "WORLD_HUMAN_CLIPBOARD",
            },
            Zone = {
                vector2(772.44, -1366.18),
                vector2(772.43, -1389.90),
                vector2(734.93, -1390.59),
                vector2(736.34, -1366.38)
            },
            JobLocations = {
                Enter = { coords = vec4(746.82, -1398.93, 25.55, 0.0), w = 0.4, d = 1.6, tele = vec4(736.95, -1374.25, 12.63, 266.58) },
                Exit = { coords = vec4(736.27, -1374.31, 11.64, 0.0), w = 1.5, d = 0.6, tele = vec4(746.77, -1399.53, 26.61, 181.16) },
                Duty = { coords = vec4(739.55, -1376.5, 12.14, 0.0), w = 0.5, d = 0.5, },
                Trolly = { coords = vec4(743.86, -1369.56, 11.57, 256.38), prop = "ex_Prop_Crate_Closed_BC" },
                Trade = {
                    { coords = vec4(742.36, -1373.96, 12.63, 234.4), w = 1.0, d = 1.0, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
                },
            },
            SearchLocations = {
                vec4(748.01, -1368.06, 11.60, 0.0),
                vec4(750.44, -1368.08, 11.60, 0.0),
                vec4(752.81, -1368.07, 11.60, 0.0),
                vec4(755.25, -1367.98, 11.60, 0.0),
                vec4(757.68, -1368.05, 11.60, 0.0),
                vec4(760.04, -1368.12, 11.60, 0.0),
                vec4(762.48, -1367.97, 11.60, 0.0),
                vec4(771.20, -1368.09, 11.60, -90.0),
                vec4(771.23, -1370.57, 11.60, -90.0),
                vec4(771.24, -1372.94, 11.60, -90.0),
                vec4(771.32, -1383.10, 11.60, -90.0),
                vec4(771.31, -1385.54, 11.60, -90.0),
                vec4(771.136, -1387.91, 11.60, -90.0),
                vec4(748.03, -1373.44, 11.60, 0.0),
                vec4(750.42, -1373.42, 11.60, 0.0),
                vec4(752.90, -1373.42, 11.60, 0.0),
                vec4(755.28, -1373.42, 11.60, 0.0),
                vec4(757.66, -1373.43, 11.60, 0.0),
                vec4(760.08, -1373.40, 11.60, 0.0),
                vec4(762.49, -1373.47, 11.60, 0.0),
                vec4(748.02, -1379.29, 11.60, 0.0),
                vec4(750.451, -1379.24, 11.60, 0.0),
                vec4(752.83, -1379.26, 11.60, 0.0),
                vec4(755.21, -1379.29, 11.60, 0.0),
                vec4(757.65, -1379.25, 11.60, 0.0),
                vec4(760.07, -1379.27, 11.60, 0.0),
                vec4(762.54, -1379.20, 11.60, 0.0),
                vec4(747.98, -1384.97, 11.60, 0.0),
                vec4(750.42, -1384.87, 11.60, 0.0),
                vec4(752.81, -1385.01, 11.60, 0.0),
                vec4(755.25, -1384.99, 11.60, 0.0),
                vec4(757.65, -1384.96, 11.60, 0.0),
                vec4(760.05, -1384.80, 11.60, 0.0),
                vec4(762.55, -1384.95, 11.60, 0.0),
                vec4(737.57, -1383.00, 11.60, 90.0),
                vec4(737.55, -1385.40, 11.60, 90.0),
                vec4(737.56, -1387.86, 11.60, 90.0)
            },
            ExtraPropLocations = {
                vec4(748.01, -1368.06, 13.8, 0.0),
                vec4(750.44, -1368.08, 13.8, 0.0),
                vec4(752.81, -1368.07, 13.8, 0.0),
                vec4(755.25, -1367.98, 13.8, 0.0),
                vec4(757.68, -1368.05, 13.8, 0.0),
                vec4(760.04, -1368.12, 13.8, 0.0),
                vec4(762.48, -1367.97, 13.8, 0.0),
                vec4(771.20, -1368.09, 13.8, -90.0),
                vec4(771.23, -1370.57, 13.8, -90.0),
                vec4(771.22, -1372.94, 13.8, -90.0),
                vec4(771.32, -1383.10, 13.8, -90.0),
                vec4(771.31, -1385.54, 13.8, -90.0),
                vec4(771.13, -1387.91, 13.8, -90.0),
                vec4(748.03, -1373.44, 13.8, 0.0),
                vec4(750.42, -1373.42, 13.8, 0.0),
                vec4(752.90, -1373.42, 13.8, 0.0),
                vec4(755.28, -1373.42, 13.8, 0.0),
                vec4(757.66, -1373.43, 13.8, 0.0),
                vec4(760.08, -1373.40, 13.8, 0.0),
                vec4(762.49, -1373.47, 13.8, 0.0),
                vec4(748.02, -1379.29, 13.8, 0.0),
                vec4(752.83, -1379.26, 13.8, 0.0),
                vec4(755.21, -1379.29, 13.8, 0.0),
                vec4(757.65, -1379.25, 13.8, 0.0),
                vec4(760.07, -1379.27, 13.8, 0.0),
                vec4(762.54, -1379.20, 13.8, 0.0),
                vec4(747.98, -1384.97, 13.8, 0.0),
                vec4(750.42, -1384.87, 13.8, 0.0),
                vec4(752.81, -1385.01, 13.8, 0.0),
                vec4(755.25, -1384.99, 13.8, 0.0),
                vec4(757.65, -1384.96, 13.8, 0.0),
                vec4(760.05, -1384.80, 13.8, 0.0),
                vec4(762.55, -1384.95, 13.8, 0.0),
                vec4(737.57, -1383.00, 13.8, 90.0),
                vec4(737.55, -1385.40, 13.8, 90.0),
                vec4(737.56, -1387.86, 13.8, 90.0),
                vec4(748.01, -1368.06, 15.9, 0.0),
                vec4(750.44, -1368.08, 15.9, 0.0),
                vec4(752.81, -1368.07, 15.9, 0.0),
                vec4(755.25, -1367.98, 15.9, 0.0),
                vec4(757.65, -1368.05, 15.9, 0.0),
                vec4(760.04, -1368.12, 15.9, 0.0),
                vec4(762.45, -1367.97, 15.9, 0.0),
                vec4(771.20, -1368.09, 15.9, -90.0),
                vec4(771.23, -1370.57, 15.9, -90.0),
                vec4(771.24, -1372.94, 15.9, -90.0),
                vec4(771.32, -1383.10, 15.9, -90.0),
                vec4(771.31, -1385.54, 15.9, -90.0),
                vec4(771.13, -1387.91, 15.9, -90.0),
                vec4(748.03, -1373.44, 15.9, 0.0),
                vec4(750.42, -1373.42, 15.9, 0.0),
                vec4(752.90, -1373.42, 15.9, 0.0),
                vec4(755.25, -1373.42, 15.9, 0.0),
                vec4(757.66, -1373.43, 15.9, 0.0),
                vec4(760.08, -1373.40, 15.9, 0.0),
                vec4(762.49, -1373.47, 15.9, 0.0),
                vec4(748.02, -1379.29, 15.9, 0.0),
                vec4(752.83, -1379.26, 15.9, 0.0),
                vec4(755.21, -1379.29, 15.9, 0.0),
                vec4(757.65, -1379.25, 15.9, 0.0),
                vec4(760.07, -1379.27, 15.9, 0.0),
                vec4(762.54, -1379.20, 15.9, 0.0),
                vec4(747.98, -1384.97, 15.9, 0.0),
                vec4(750.42, -1384.87, 15.9, 0.0),
                vec4(752.81, -1385.01, 15.9, 0.0),
                vec4(755.25, -1384.99, 15.9, 0.0),
                vec4(757.65, -1384.96, 15.9, 0.0),
                vec4(760.05, -1384.80, 15.9, 0.0),
                vec4(762.55, -1384.95, 15.9, 0.0),
                vec4(737.57, -1383.00, 15.9, 90.0),
                vec4(737.55, -1385.40, 15.9, 90.0),
                vec4(737.56, -1387.86, 15.9, 90.0)
            },
        },
        ["RecycleNorth"] = {
            Enable = true,
            Job = nil,
            Blip = {
                blipEnable = true,
                name = "Recycle Center",
                coords = vector4(57.76, 6470.24, 31.43, 228.33),
                blipTrue = true,
                sprite = 365,
                col = 2,
                model = `G_M_M_ChemWork_01`,
                scenario = "WORLD_HUMAN_CLIPBOARD",
            },
            JobLocations = {
                Enter = { coords = vec4(55.55, 6472.18, 30.43, 44.0), w = 1, d = 4, tele = vec4(1072.87, -3102.52, -39.0, 88.85) },
                Exit = { coords = vec4(1073.0, -3102.49, -40.0, 266.61), w = 1, d = 4, tele = vec4(55.6, 6472.05, 31.43, 223.95) },
                Duty = { coords = vector4(1048.47, -3100.73, -39.18, 270.81), w = 0.5, d = 0.5, },
                Trade = {
                    { coords = vector4(1048.36, -3097.48, -39.0, 270.3), w = 1.0, d = 1.0, model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
                },

                Trolly = { coords = vector4(1049.82, -3095.22, -40.0, 191.88), prop = "ex_Prop_Crate_Closed_BC" },
            },
            Zone = {
                vec2(1048.12, -3111.27),
                vec2(1047.72, -3093.55),
                vec2(1074.02, -3093.66),
                vec2(1073.61, -3111.58)
            },
            SearchLocations = {
                vec4(1067.68, -3095.57, -39.9, 180.0),
                vec4(1065.20, -3095.57, -39.9, 180.0),
                vec4(1062.73, -3095.57, -39.9, 180.0),
                vec4(1060.37, -3095.57, -39.9, 180.0),
                vec4(1057.95, -3095.57, -39.9, 180.0),
                vec4(1055.58, -3095.57, -39.9, 180.0),
                vec4(1053.09, -3095.57, -39.9, 180.0),

                vec4(1053.07, -3102.62, -39.9, 0.0),
                vec4(1055.49, -3102.62, -39.9, 180.0),
                vec4(1057.93, -3102.62, -39.9, 0.0),
                vec4(1060.19, -3102.62, -39.9, 180.0),
                vec4(1062.71, -3102.62, -39.9, 0.0),
                vec4(1065.19, -3102.62, -39.9, 180.0),
                vec4(1067.46, -3102.62, -39.9, 0.0),

                vec4(1067.69, -3109.71, -39.9, 0.0),
                vec4(1065.13, -3109.71, -39.9, 0.0),
                vec4(1062.70, -3109.71, -39.9, 0.0),
                vec4(1060.24, -3109.71, -39.9, 0.0),
                vec4(1057.76, -3109.71, -39.9, 0.0),
                vec4(1055.52, -3109.71, -39.9, 0.0),
                vec4(1053.16, -3109.71, -39.9, 0.0),
            },
            ExtraPropLocations = { },
        },
    },
    ['Recycle'] = {
        { coords = vec4(744.68, -1401.77, 26.55, 248.73),
            Ped = { model = "G_M_M_ChemWork_01", scenario = "WORLD_HUMAN_CLIPBOARD", },
            Blip = { blipEnable = false, name = "Recycle Buyer", sprite = 642, col = 2, },
        },
        { coords = vec4(59.19, 6475.47, 31.43, 226.74),
            Ped = { model = "G_M_M_ChemWork_01", scenario = "WORLD_HUMAN_CLIPBOARD", },
            Blip = { blipEnable = false, name = "Recycle Buyer", sprite = 642, col = 2, },
        }
    },
    ['BottleBanks'] = {
        {  coords = vec4(757.06, -1399.68, 26.57 , 178.1),
            Ped = { model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
            Blip = { blipEnable = true, name = "Bottle Bank", sprite = 642, col = 2, },
        },
        {  coords = vec4(84.01, -220.32, 54.64 , 337.89),
            Ped = { model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
            Blip = { blipEnable = true, name = "Bottle Bank", sprite = 642, col = 2, },
        },
        {  coords = vec4(31.88, -1315.58, 29.52 , 357.19),
            Ped = { model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
            Blip = { blipEnable = true, name = "Bottle Bank", sprite = 642, col = 2, },
        },
        {  coords = vec4(60.42, -1579.75, 29.6, 51.03),
            Ped = { model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
            Blip = { blipEnable = true, name = "Bottle Bank", sprite = 642, col = 2, },
        },
        {  coords = vec4(394.08, -877.48, 29.35 , 310.12),
            Ped = { model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
            Blip = { blipEnable = true, name = "Bottle Bank", sprite = 642, col = 2, },
        },
        {  coords = vec4(-1267.97, -812.08, 17.11 , 128.12),
            Ped = { model = `G_M_M_ChemWork_01`, scenario = "WORLD_HUMAN_CLIPBOARD", },
            Blip = { blipEnable = true, name = "Bottle Bank", sprite = 642, col = 2, },
        },
    },
}