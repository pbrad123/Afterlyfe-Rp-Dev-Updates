Config = {}

Config.core = "qb-core" --Your qb-core resource name

Config.PoliceJobs = {"police", "bcso", "sast", "sasp"}

Config.PoliceMenuCommand = "citations"

Config.CitationsPerRoll = 20

Config.PayLocations = {
    [1] = vector3(236.94, -1078.26, 29.29),
}

Config.UseQBTarget = false

Config.TargetLocation = {
    {
        label = "Paying menu",
        icon = "fas fa-sign-in-alt",
        coords = vector3(441.50885, -984.3801, 30.68931),
        heading = 265,
        width = 2,
        length = 2,
        minZ = 29,
        maxZ = 32,
    },
}

Config.ChargesCallback = "" --Leave as "" if you want to use charges by Config.PenalCodes. set to a qbcore callback name if you want it to be used

Config.PenalCodes = {
    { code = "(1)01", label = "Open Contain of Alcohol in MotorVehicle", fine = 130},
    { code = "(1)02", label = "Possession of Alcohol Under 21", fine = 110},
    { code = "(1)03", label = "Underage Consumption of Alcohol", fine = 125},
    { code = "(1)04", label = "Public Intoxication", fine = 55},
    { code = "(1)05", label = "Open Container ETOH (Public)", fine = 80},
    { code = "(1)06", label = "Contributing ETOH to a Minor", fine = 550},
    { code = "(2)01", label = "Possession Marijuana Less 15gr", fine = 200},
    { code = "(2)02", label = "Public Urination", fine = 75},
    { code = "(2)03", label = "Loitering", fine = 50},
    { code = "(2)04", label = "Unlawful Contact", fine = 375},
    { code = "(2)05", label = "Trespassing", fine = 125},
    { code = "(2)06", label = "Reckless Endangerment", fine = 480},
    { code = "(2)07", label = "Fighting in Public", fine = 125},
    { code = "(2)08", label = "Disturbing the Peace", fine = 175},
    { code = "(2)09", label = "Disorderly Conduct", fine = 155},
    { code = "(2)10", label = "Failure to Dispurse", fine = 165},
    { code = "(2)11", label = "Graffiti", fine = 250},
    { code = "(2)12", label = "Indecent Exposure", fine = 480},
    { code = "(2)13", label = "Shoplifting", fine = 160},
    { code = "(2)14", label = "Petit Larceny", fine = 160},
    { code = "(2)15", label = "Public Indecency", fine = 480},
    { code = "(3)01", label = "Littering", fine = 125},
    { code = "(3)02", label = "Illegal Dumpiing", fine = 1000},
    { code = "(3)03", label = "Jaywalking", fine = 30},
    { code = "(3)04", label = "Smoking Violation", fine = 50},
    { code = "(3)05", label = "Camping W/out Permit", fine = 50},
    { code = "(3)06", label = "Camping Prohibited", fine = 90},
    { code = "(3)07", label = "Possession of Fake ID/Drivers License", fine = 120},
    { code = "(3)08", label = "Possession of Expired ID/Drivers License", fine = 60},
    { code = "(3)09", label = "Train Track Trespassing", fine = 150},
    { code = "(3)10", label = "Public Protest Must be Premitted", fine = 280},
    { code = "(3)11", label = "Pedestrian Prohibited of Freeway", fine = 40},
    { code = "(4)01", label = "Dog Must be Leashed in Public", fine = 60},
    { code = "(4)02", label = "Animal Cruely", fine = 460},
    { code = "(4)03", label = "Fishing W/Out License", fine = 130},
    { code = "(4)04", label = "Hunting W/Out License", fine = 180},
    { code = "(4)05", label = "Hunting Restricted Land", fine = 120},
    { code = "(4)06", label = "Excess of Daily Species Limit", fine = 500},
    { code = "(4)07", label = "Fishing Restricted Area", fine = 160},
    { code = "(4)08", label = "Hunting Out of Season", fine = 500},
    { code = "(4)09", label = "Shooting From Vehicle/Roadway", fine = 700},
    { code = "(4)10", label = "Poaching", fine = 1000},
    { code = "(4)11", label = "Open Fire/Restricted Season", fine = 90},
    { code = "(5)01", label = "Too Fast for Road Conditions", fine = 215},
    { code = "(5)02", label = "Excessive Accerleration", fine = 110},
    { code = "(5)03", label = "Left/Passing Lane Less Than Posted Limit", fine = 75},
    { code = "(5)04", label = "Highway Minimum Speed Regulation", fine = 75},
    { code = "(5)05", label = "Impeding (15+ Under)", fine = 75},
    { code = "(5)06", label = "Unlawful Speed 0-9 Over", fine = 75},
    { code = "(5)07", label = "Unlawful Speed 10-14 Over", fine = 90},
    { code = "(5)08", label = "Unlawful Speed 15-20 Over", fine = 140},
    { code = "(5)09", label = "Unlawful Speed 21-26 Over", fine = 170},
    { code = "(5)10", label = "Unlawful Speed 27-29 Over", fine = 240},
    { code = "(5)11", label = "Unlawful Speed (Over 30+)", fine = 500},
    { code = "(6)01", label = "Failure to Stop at Stop Sign", fine = 215},
    { code = "(6)02", label = "Failure to Stop for Traffic Signal", fine = 260},
    { code = "(7)02", label = "Improper Passing", fine = 90},
    { code = "(7)03", label = "Improper Turn", fine = 75},
    { code = "(7)04", label = "Failure to Signal", fine = 60},
    { code = "(7)05", label = "Overtaking/Passing on Shoulder", fine = 330},
    { code = "(7)06", label = "Passing in a No Passing Zone", fine = 360},
    { code = "(7)07", label = "Failure to Make Turn as Direction by Sign/Device", fine = 75},
    { code = "(7)08", label = "Illegal U-Turn", fine = 80},
    { code = "(7)09", label = "Left Turn on Red", fine = 180},
    { code = "(7)10", label = "Failure to Maintain Lane", fine = 120},
    { code = "(7)11", label = "Turning on Curve or Crest Grade Prohibited", fine = 75},
    { code = "(7)12", label = "Crossing Over a Center Divider, Median or Gore", fine = 120},
    { code = "(7)13", label = "Left of Center", fine = 120},
    { code = "(6)03", label = "Failure to Stop at R/R singal/barrier", fine = 230},
    { code = "(6)04", label = "Failure to Comply with Lane Direction", fine = 130},
    { code = "(6)05", label = "Wrong Direction on Posted OneWay", fine = 220},
    { code = "(7)01", label = "Improper Lane Change or Course", fine = 90},
    { code = "(8)01", label = "Failure to MOVEOVER/Yeild to stopped Emergency Vehicle/Personel", fine = 400},
    { code = "(8)02", label = "Failure to Yeild to Emergency Vehicle", fine = 320},
    { code = "(8)03", label = "Failure to Yeild to Pedestrian in Cross Walk", fine = 360},
    { code = "(8)04", label = "Duty to Yeild to Highway Worker", fine = 360},
    { code = "(8)05", label = "Duty to Yeild to Public Transit Vehicle", fine = 160},
    { code = "(8)06", label = "Failure to Yield at Intersection", fine = 130},
    { code = "(8)07", label = "Failure to Yield Entering Roadway/Highway", fine = 130},
    { code = "(8)08", label = "Failure to Yield", fine = 160},
    { code = "(8)09", label = "Failure to Yield When Left of Obstructed Lane", fine = 90},
    { code = "(8)10", label = "Violation to Right of Way", fine = 90},
    { code = "(8)11", label = "Failure to Yield Entering Highway", fine = 90},
    { code = "(9)01", label = "Failure to Maintain Safe Distance (Tailgating)", fine = 215},
    { code = "(9)02", label = "Careless Driving", fine = 200},
    { code = "(9)03", label = "Unsafe Operation on Road/Highway", fine = 215},
    { code = "(9)04", label = "Driving on Shoulder", fine = 160},
    { code = "(9)05", label = "Failure to Maintain Lane", fine = 120},
    { code = "(9)06", label = "Crossing Double Yellow", fine = 170},
    { code = "(9)07", label = "Driving on Sidewalk, Pedestrain/Bicycle Path", fine = 300},
    { code = "(9)08", label = "Obstruction to Drivers View", fine = 75},
    { code = "(9)09", label = "Unlawful for Person to Ride on Exterior of Vehicle", fine = 80},
    { code = "(9)10", label = "Littering From Vehicle", fine = 125},
    { code = "(9)11", label = "Failure to Secure Load to Vehicle or Lorry", fine = 150},
    { code = "(9)12", label = "Failure to Tarp/Cover Load/Debri", fine = 80},
    { code = "(9)13", label = "Load Projecting from Vehicle", fine = 90},
    { code = "(9)14", label = "Operating a Telecommincation Dervice While Driving", fine = 160},
    { code = "(9)15", label = "Stopping on Rail Crossing", fine = 180},
    { code = "(10)01", label = "(C) Driving Wrong Way", fine = 1000},
    { code = "(10)02", label = "(C) Reckless Driving", fine = 500},
    { code = "(10)03", label = "(C) Leaving the Scene of an Accident", fine = 1000},
    { code = "(10)04", label = "(C) Driving While License Suspended", fine = 500},
    { code = "(10)05", label = "(C) Driving Without License", fine = 300},
    { code = "(10)06", label = "(C) Driving W/Out License 1yr +", fine = 300},
    { code = "(10)07", label = "(C) DWI 1st Offense .08%", fine = 500},
    { code = "(10)08", label = "(C) DWI 2nd Offense", fine = 750},
    { code = "(10)09", label = "(C) DWI 1st Offense Motorcycle", fine = 500},
    { code = "(10)10", label = "(C) DWI 2nd Offense Motorcycle", fine = 750},
    { code = "(10)11", label = "(C) DWI 1st Offense Comm. CDL", fine = 750},
    { code = "(10)12", label = "(C) DWI 2nd Offense Comm. CDL", fine = 950},
    { code = "(10)13", label = "(C) DUI Narcotics 1st Offense", fine = 500},
    { code = "(10)14", label = "(C) DUI Narcotics 2nd Offense", fine = 750},
    { code = "(11)01", label = "At Fault Accient", fine = 540},
    { code = "(11)02", label = "Failure to Maintain Control", fine = 860},
    { code = "(11)03", label = "Driver to Exercise Due Care to Avoid Accidnet", fine = 790},
    { code = "(12)01", label = "DOT Approved Helmet Req (Operator)", fine = 120},
    { code = "(12)02", label = "DOT Approved Helmet Req (Passenger)", fine = 120},
    { code = "(12)03", label = "DOT Approved Safety Glasses/Shield Req", fine = 110},
    { code = "(12)04", label = "MotorCycle License Endorsement", fine = 180},
    { code = "(12)05", label = "MotorCycle Lane Splitting", fine = 260},
    { code = "(12)06", label = "Bicycle Must Ride on Right", fine = 50},
    { code = "(12)07", label = "Helmet Required (Paved Road)", fine = 25},
    { code = "(12)08", label = "UnLawful to Operate Bicycle on Highway", fine = 60},
    { code = "(12)09", label = "Offroad Vehicle Must not Drive on Roadway or Shoulder", fine = 120},
    { code = "(12)10", label = "ATV Must not Operate on Roadway or Shoulder", fine = 120},
    { code = "(12)11", label = "Golfcart Prohibited on Road/Highway", fine = 130},
    { code = "(13)01", label = "Obstruction of Public Street", fine = 110},
    { code = "(13)02", label = "Blocking Right of Way", fine = 90},
    { code = "(13)03", label = "Stopping, Standing or Parking Prohibited", fine = 90},
    { code = "(14)01", label = "Defective Equipment", fine = 90},
    { code = "(14)02", label = "Safety Belt Violation", fine = 120},
    { code = "(14)03", label = "UnRoadworthy Vehicle", fine = 160},
    { code = "(14)04", label = "Windshield Damaged Drivers View", fine = 110},
    { code = "(14)05", label = "Windshield Reqired", fine = 110},
    { code = "(14)06", label = "Illegal Window Tint", fine = 120},
    { code = "(14)07", label = "Illuminate Lights as Required", fine = 90},
    { code = "(14)08", label = "Headlights on in Rain", fine = 90},
    { code = "(14)09", label = "Neon/Underglow Prohibited While in Motion", fine = 80},
    { code = "(14)10", label = "Failure to Dim Headlights Oncoming Traf", fine = 50},
    { code = "(14)11", label = "Veh Must Have 2 Headlights", fine = 60},
    { code = "(14)12", label = "Veh Must Have 2 Red Taillights", fine = 60},
    { code = "(14)13", label = "Prohibited Lighting", fine = 100},
    { code = "(15)01", label = "Failure to Insure Vehicle", fine = 250},
    { code = "(15)02", label = "Failure to Insure Vehicle (2nd Offense)", fine = 500},
    { code = "(15)03", label = "Expired Insurance", fine = 250},
    { code = "(15)04", label = "Failure to Reg Veh", fine = 250},
    { code = "(15)05", label = "Expired Vehicle Reg", fine = 250},
    { code = "(15)06", label = "Expired Registration 30+ Days", fine = 500},
    { code = "(15)07", label = "Failure to Display License", fine = 60},
    { code = "(15)08", label = "Expired D/L", fine = 140},
    { code = "(15)09", label = "Expired D/L 30+ Days", fine = 260},
    { code = "(16)01", label = "Parking in Tunnel", fine = 25},
    { code = "(16)02", label = "Parking in Bike Lane", fine = 50},
    { code = "(16)03", label = "Blacking Access to Disabled Spot", fine = 80},
    { code = "(16)04", label = "Double-Parking", fine = 25},
    { code = "(16)05", label = "Parked in Opposite Direction of Traf", fine = 25},
    { code = "(16)06", label = "Parked in Designated Disabled Space", fine = 80},
    { code = "(16)07", label = "Parking in Loading Zone", fine = 30},
    { code = "(16)08", label = "Parking in Front of Fire Hydrant", fine = 80},
    { code = "(16)09", label = "Parking Blocking Driveway", fine = 25},
    { code = "(16)10", label = "Parking in No-Parking Zone", fine = 25},
    { code = "(16)11", label = "Parking Blocking Crosswalk", fine = 30},
    { code = "(16)12", label = "Parking Posted Fire Lane", fine = 80},
    { code = "(16)13", label = "Parking on Sidewalk", fine = 70},
    { code = "(16)14", label = "Parking in Intersection", fine = 80},
    { code = "(16)15", label = "Parking Upon Bridge", fine = 40},
    { code = "(17)01", label = "(W) Unlawful Speed Over Posted Limit", fine = 00},
    { code = "(17)02", label = "(W) Unlawful Speed Under Posted Limit", fine = 00},
    { code = "(17)03", label = "(W) Failure to Stop at Stop Sign", fine = 00},
    { code = "(17)04", label = "(W) Failure to Stop at Traffic Signal", fine = 00},
    { code = "(17)05", label = "(W) Failure to Comply w/ Lane Direction Sign/Device", fine = 00},
    { code = "(17)06", label = "(W) Improper Lane Change", fine = 00},
    { code = "(17)07", label = "(W) Improper Passing", fine = 00},
    { code = "(17)08", label = "(W) Improper Turn", fine = 00},
    { code = "(17)09", label = "(W) Failure to Signal", fine = 00},
    { code = "(17)10", label = "(W) Failure to Make Turn as Directed Sign/Device", fine = 00},
    { code = "(17)11", label = "(W) Illegal U-Turn", fine = 00},
    { code = "(17)12", label = "(W) Failure to Maintain Lane", fine = 00},
    { code = "(17)13", label = "(W) Turning on Curve or Crest of Grade Prohibited", fine = 00},
    { code = "(17)14", label = "(W) Left of Center", fine = 00},
    { code = "(17)15", label = "(W) Failure to Yield at Intersection", fine = 00},
    { code = "(17)16", label = "(W) Failure to Yield Entering Roadway/Highway", fine = 00},
    { code = "(17)17", label = "(W) Failure to Yield", fine = 00},
    { code = "(17)18", label = "(W) Obstruction to Drivers View", fine = 00},
    { code = "(17)19", label = "(W) Unlawful for Person to Ride on Exterior Veh", fine = 00},
    { code = "(17)20", label = "(W) Littering From Veh", fine = 00},
    { code = "(17)21", label = "(W) Failure to Tarp/Cover Load/Debri", fine = 00},
    { code = "(17)22", label = "(W) Operating a Telecommunication Device While Driving", fine = 00},
    { code = "(17)23", label = "(W) Stopping or Rail Crossing", fine = 00},
    { code = "(17)24", label = "(W) Obstruction of Public Street,Highway or Road", fine = 00},
    { code = "(17)25", label = "(W) Failure to Maintain Safe Distance (Tailgating)", fine = 00},
    { code = "(17)26", label = "(W) Left Turn on Red", fine = 00},
    { code = "(17)27", label = "(W) Driving on Shoulder", fine = 00},
    { code = "(17)28", label = "(W) Driving on Sidewalk, Pedestrian/Bicycle Path", fine = 00},
    { code = "(17)29", label = "(W) Crossing Double Yellow", fine = 00},
    { code = "(17)30", label = "(W) Defective Equipment", fine = 00},
    { code = "(17)31", label = "(W) Safety Belt Violation", fine = 00},
    { code = "(17)32", label = "(W) UnRoadworthy Vehicle", fine = 00},
    { code = "(17)33", label = "(W) Windshield Damaged Drivers View", fine = 00},
    { code = "(17)34", label = "(W) Windshield Reqired", fine = 00},
    { code = "(17)35", label = "(W) Illegal Window Tint", fine = 00},
    { code = "(17)36", label = "(W) Illuminate Lights as Required", fine = 00},
    { code = "(17)37", label = "(W) Headlights on in Rain", fine = 00},
    { code = "(17)38", label = "(W) Neon/Underglow Prohibited While in Motion", fine = 00},
    { code = "(17)39", label = "(W) Failure to Dim Headlights Oncoming Traf", fine = 00},
    { code = "(17)40", label = "(W) Veh Must Have 2 Headlights", fine = 00},
    { code = "(17)41", label = "(W) Veh Must Have 2 Red Taillights", fine = 00},
    { code = "(17)42", label = "(W) Prohibited Lighting", fine = 00},
    { code = "(17)43", label = "(W) Failure to Insure Vehicle", fine = 00},
    { code = "(17)44", label = "(W) Expired Insurance", fine = 00},
    { code = "(17)45", label = "(W) Failure to Reg Veh", fine = 00},
    { code = "(17)46", label = "(W) Expired Vehicle Reg", fine = 00},
    { code = "(17)47", label = "(W) Failure to Display License", fine = 00},
    { code = "(17)48", label = "(W) Expired D/L", fine = 00},
    { code = "(17)49", label = "(W) Parking in Tunnel", fine = 00},
    { code = "(17)50", label = "(W) Parking in Bike Lane", fine = 00},
    { code = "(17)51", label = "(W) Blacking Access to Disabled Spot", fine = 00},
    { code = "(17)52", label = "(W) Double-Parking", fine = 00},
    { code = "(17)53", label = "(W) Parked in Opposite Direction of Traf", fine = 00},
    { code = "(17)54", label = "(W) Parked in Designated Disabled Space", fine = 00},
    { code = "(17)55", label = "(W) Parking in Loading Zone", fine = 00},
    { code = "(17)56", label = "(W) Parking in Front of Fire Hydrant", fine = 00},
    { code = "(17)57", label = "(W) Parking Blocking Driveway", fine = 00},
    { code = "(17)58", label = "(W) Parking in No-Parking Zone", fine = 00},
    { code = "(17)59", label = "(W) Parking Blocking Crosswalk", fine = 00},
    { code = "(17)60", label = "(W) Parking Posted Fire Lane", fine = 00},
    { code = "(17)61", label = "(W) Parking on Sidewalk", fine = 00},
    { code = "(17)62", label = "(W) Parking in Intersection", fine = 00},
    { code = "(17)63", label = "(W) Parking Upon Bridge", fine = 00},
    { code = "(17)64", label = "(W) DOT Approved Helmet Req (Operator)", fine = 00},
    { code = "(17)65", label = "(W) DOT Approved Helmet Req (Passenger)", fine = 00},
    { code = "(17)66", label = "(W) DOT Approved Safety Glasses/Shield Req", fine = 00},
    { code = "(17)67", label = "(W) Bicycle Must Ride on Right", fine = 00},
    { code = "(17)68", label = "(W) Helmet Required (Paved Road)", fine = 00},
    { code = "(17)69", label = "(W) UnLawful to Operate Bicycle on Highway", fine = 00},
    { code = "(17)70", label = "(W) Possession of Alcohol Under 21", fine = 00},
    { code = "(17)71", label = "(W) Public Intoxication", fine = 00},
    { code = "(17)72", label = "(W) Open Container ETOH (Public)", fine = 00},
    { code = "(17)73", label = "(W) Public Urination", fine = 00},
    { code = "(17)74", label = "(W) Loitering", fine = 00},
    { code = "(17)75", label = "(W) Trespassing", fine = 00},
    { code = "(17)76", label = "(W) Littering", fine = 00},
    { code = "(17)77", label = "(W) Jaywalking", fine = 00},
    { code = "(17)78", label = "(W) Smoking Violation", fine = 00},
    { code = "(17)79", label = "(W) Camping W/out Permit", fine = 00},
    { code = "(17)80", label = "(W) Pedestrain Prohibited on Freeway", fine = 00},
}

Config.VehcileColours = {
    ['0'] = "Metallic Black",
    ['1'] = "Metallic Graphite Black",
    ['2'] = "Metallic Black Steel",
    ['3'] = "Metallic Dark Silver",
    ['4'] = "Metallic Silver",
    ['5'] = "Metallic Blue Silver",
    ['6'] = "Metallic Steel Gray",
    ['7'] = "Metallic Shadow Silver",
    ['8'] = "Metallic Stone Silver",
    ['9'] = "Metallic Midnight Silver",
    ['10'] = "Metallic Gun Metal",
    ['11'] = "Metallic Anthracite Grey",
    ['12'] = "Matte Black",
    ['13'] = "Matte Gray",
    ['14'] = "Matte Light Grey",
    ['15'] = "Util Black",
    ['16'] = "Util Black Poly",
    ['17'] = "Util Dark silver",
    ['18'] = "Util Silver",
    ['19'] = "Util Gun Metal",
    ['20'] = "Util Shadow Silver",
    ['21'] = "Worn Black",
    ['22'] = "Worn Graphite",
    ['23'] = "Worn Silver Grey",
    ['24'] = "Worn Silver",
    ['25'] = "Worn Blue Silver",
    ['26'] = "Worn Shadow Silver",
    ['27'] = "Metallic Red",
    ['28'] = "Metallic Torino Red",
    ['29'] = "Metallic Formula Red",
    ['30'] = "Metallic Blaze Red",
    ['31'] = "Metallic Graceful Red",
    ['32'] = "Metallic Garnet Red",
    ['33'] = "Metallic Desert Red",
    ['34'] = "Metallic Cabernet Red",
    ['35'] = "Metallic Candy Red",
    ['36'] = "Metallic Sunrise Orange",
    ['37'] = "Metallic Classic Gold",
    ['38'] = "Metallic Orange",
    ['39'] = "Matte Red",
    ['40'] = "Matte Dark Red",
    ['41'] = "Matte Orange",
    ['42'] = "Matte Yellow",
    ['43'] = "Util Red",
    ['44'] = "Util Bright Red",
    ['45'] = "Util Garnet Red",
    ['46'] = "Worn Red",
    ['47'] = "Worn Golden Red",
    ['48'] = "Worn Dark Red",
    ['49'] = "Metallic Dark Green",
    ['50'] = "Metallic Racing Green",
    ['51'] = "Metallic Sea Green",
    ['52'] = "Metallic Olive Green",
    ['53'] = "Metallic Green",
    ['54'] = "Metallic Gasoline Blue Green",
    ['55'] = "Matte Lime Green",
    ['56'] = "Util Dark Green",
    ['57'] = "Util Green",
    ['58'] = "Worn Dark Green",
    ['59'] = "Worn Green",
    ['60'] = "Worn Sea Wash",
    ['61'] = "Metallic Midnight Blue",
    ['62'] = "Metallic Dark Blue",
    ['63'] = "Metallic Saxony Blue",
    ['64'] = "Metallic Blue",
    ['65'] = "Metallic Mariner Blue",
    ['66'] = "Metallic Harbor Blue",
    ['67'] = "Metallic Diamond Blue",
    ['68'] = "Metallic Surf Blue",
    ['69'] = "Metallic Nautical Blue",
    ['70'] = "Metallic Bright Blue",
    ['71'] = "Metallic Purple Blue",
    ['72'] = "Metallic Spinnaker Blue",
    ['73'] = "Metallic Ultra Blue",
    ['74'] = "Metallic Bright Blue",
    ['75'] = "Util Dark Blue",
    ['76'] = "Util Midnight Blue",
    ['77'] = "Util Blue",
    ['78'] = "Util Sea Foam Blue",
    ['79'] = "Uil Lightning blue",
    ['80'] = "Util Maui Blue Poly",
    ['81'] = "Util Bright Blue",
    ['82'] = "Matte Dark Blue",
    ['83'] = "Matte Blue",
    ['84'] = "Matte Midnight Blue",
    ['85'] = "Worn Dark blue",
    ['86'] = "Worn Blue",
    ['87'] = "Worn Light blue",
    ['88'] = "Metallic Taxi Yellow",
    ['89'] = "Metallic Race Yellow",
    ['90'] = "Metallic Bronze",
    ['91'] = "Metallic Yellow Bird",
    ['92'] = "Metallic Lime",
    ['93'] = "Metallic Champagne",
    ['94'] = "Metallic Pueblo Beige",
    ['95'] = "Metallic Dark Ivory",
    ['96'] = "Metallic Choco Brown",
    ['97'] = "Metallic Golden Brown",
    ['98'] = "Metallic Light Brown",
    ['99'] = "Metallic Straw Beige",
    ['100'] = "Metallic Moss Brown",
    ['101'] = "Metallic Biston Brown",
    ['102'] = "Metallic Beechwood",
    ['103'] = "Metallic Dark Beechwood",
    ['104'] = "Metallic Choco Orange",
    ['105'] = "Metallic Beach Sand",
    ['106'] = "Metallic Sun Bleeched Sand",
    ['107'] = "Metallic Cream",
    ['108'] = "Util Brown",
    ['109'] = "Util Medium Brown",
    ['110'] = "Util Light Brown",
    ['111'] = "Metallic White",
    ['112'] = "Metallic Frost White",
    ['113'] = "Worn Honey Beige",
    ['114'] = "Worn Brown",
    ['115'] = "Worn Dark Brown",
    ['116'] = "Worn straw beige",
    ['117'] = "Brushed Steel",
    ['118'] = "Brushed Black Steel",
    ['119'] = "Brushed Aluminium",
    ['120'] = "Chrome",
    ['121'] = "Worn Off White",
    ['122'] = "Util Off White",
    ['123'] = "Worn Orange",
    ['124'] = "Worn Light Orange",
    ['125'] = "Metallic Securicor Green",
    ['126'] = "Worn Taxi Yellow",
    ['127'] = "Police Car Blue",
    ['128'] = "Matte Green",
    ['129'] = "Matte Brown",
    ['130'] = "Worn Orange",
    ['131'] = "Matte White",
    ['132'] = "Worn White",
    ['133'] = "Worn Olive Army Green",
    ['134'] = "Pure White",
    ['135'] = "Hot Pink",
    ['136'] = "Salmon pink",
    ['137'] = "Metallic Vermillion Pink",
    ['138'] = "Orange",
    ['139'] = "Green",
    ['140'] = "Blue",
    ['141'] = "Mettalic Black Blue",
    ['142'] = "Metallic Black Purple",
    ['143'] = "Metallic Black Red",
    ['144'] = "hunter green",
    ['145'] = "Metallic Purple",
    ['146'] = "Metallic Dark Blue",
    ['147'] = "Black",
    ['148'] = "Matte Purple",
    ['149'] = "Matte Dark Purple",
    ['150'] = "Metallic Lava Red",
    ['151'] = "Matte Forest Green",
    ['152'] = "Matte Olive Drab",
    ['153'] = "Matte Desert Brown",
    ['154'] = "Matte Desert Tan",
    ['155'] = "Matte Foilage Green",
    ['156'] = "Default Alloy Color",
    ['157'] = "Epsilon Blue",
    ['158'] = "Pure Gold",
    ['159'] = "Brushed Gold",
    ['160'] = "MP100"
}

Config.Postals = {
    {
        x = 2325.4345703125,
        y = 5147.21484375,
        code = "2000"
    },
    {
        x = 2151.2138671875,
        y = 5166.0888671875,
        code = "2001"
    },
    {
        x = 2059.6528320313,
        y = 5105.8408203125,
        code = "2002"
    },
    {
        x = 1932.6868896484,
        y = 5103.4384765625,
        code = "2003"
    },
    {
        x = 1874.1627197266,
        y = 5058.5385742188,
        code = "2004"
    },
    {
        x = 1790.8677978516,
        y = 4980.5830078125,
        code = "2005"
    },
    {
        x = 1722.9151611328,
        y = 4922.7026367188,
        code = "2006"
    },
    {
        x = 1618.3675537109,
        y = 4869.5747070313,
        code = "2007"
    },
    {
        x = 1720.4150390625,
        y = 4869.5498046875,
        code = "2008"
    },
    {
        x = 1626.4921875,
        y = 4812.8330078125,
        code = "2009"
    },
    {
        x = 1724.9730224609,
        y = 4815.1616210938,
        code = "2010"
    },
    {
        x = 1640.4869384766,
        y = 4758.4838867188,
        code = "2011"
    },
    {
        x = 1740.1538085938,
        y = 4759.6303710938,
        code = "2012"
    },
    {
        x = 1647.4232177734,
        y = 4705.2939453125,
        code = "2013"
    },
    {
        x = 1749.4649658203,
        y = 4707.6118164063,
        code = "2014"
    },
    {
        x = 1652.0007324219,
        y = 4648.5717773438,
        code = "2015"
    },
    {
        x = 1751.7038574219,
        y = 4654.4521484375,
        code = "2016"
    },
    {
        x = 1798.2783203125,
        y = 4607.2275390625,
        code = "2017"
    },
    {
        x = 1880.2452392578,
        y = 4613.1025390625,
        code = "2018"
    },
    {
        x = 1956.2924804688,
        y = 4631.9892578125,
        code = "2019"
    },
    {
        x = 2006.3699951172,
        y = 4681.5327148438,
        code = "2020"
    },
    {
        x = 1945.4973144531,
        y = 4801.9169921875,
        code = "2021"
    },
    {
        x = 1905.84765625,
        y = 4860.9282226563,
        code = "2022"
    },
    {
        x = 1850.8508300781,
        y = 4918.7465820313,
        code = "2023"
    },
    {
        x = 1964.7199707031,
        y = 4997.796875,
        code = "2024"
    },
    {
        x = 2037.2509765625,
        y = 4908.0278320313,
        code = "2025"
    },
    {
        x = 2195.98046875,
        y = 5039.0419921875,
        code = "2026"
    },
    {
        x = 2399.5415039063,
        y = 4988.2368164063,
        code = "2027"
    },
    {
        x = 2263.0915527344,
        y = 4912.6440429688,
        code = "2028"
    },
    {
        x = 2141.9887695313,
        y = 4841.7666015625,
        code = "2029"
    },
    {
        x = 2071.6528320313,
        y = 4763.8330078125,
        code = "2030"
    },
    {
        x = 2242.1860351563,
        y = 4777.966796875,
        code = "2031"
    },
    {
        x = 2328.8666992188,
        y = 4865.3110351563,
        code = "2032"
    },
    {
        x = 2337.6499023438,
        y = 4748.4252929688,
        code = "2033"
    },
    {
        x = 2417.2333984375,
        y = 4790.8999023438,
        code = "2034"
    },
    {
        x = 2421.2778320313,
        y = 4689.322265625,
        code = "2035"
    },
    {
        x = 2484.35546875,
        y = 4735.341796875,
        code = "2036"
    },
    {
        x = 2510.8581542969,
        y = 4840.3696289063,
        code = "2037"
    },
    {
        x = 2609.3720703125,
        y = 4881.6694335938,
        code = "2038"
    },
    {
        x = 2635.8583984375,
        y = 4718.7333984375,
        code = "2039"
    },
    {
        x = 2571.4553222656,
        y = 4651.408203125,
        code = "2040"
    },
    {
        x = 2509.4165039063,
        y = 4591.1923828125,
        code = "2041"
    },
    {
        x = 2552.4360351563,
        y = 4526.2192382813,
        code = "2042"
    },
    {
        x = 2643.8388671875,
        y = 4604.1171875,
        code = "2043"
    },
    {
        x = 2662.0444335938,
        y = 4487.2250976563,
        code = "2044"
    },
    {
        x = 2596.4248046875,
        y = 4426.9912109375,
        code = "2045"
    },
    {
        x = 2526.1025390625,
        y = 4358.4770507813,
        code = "2046"
    },
    {
        x = 2516.0109863281,
        y = 4252.19921875,
        code = "2047"
    },
    {
        x = 2432.7163085938,
        y = 4130.552734375,
        code = "2048"
    },
    {
        x = 2688.2358398438,
        y = 4275.7583007813,
        code = "2049"
    },
    {
        x = 2879.9858398438,
        y = 4385.541015625,
        code = "2050"
    },
    {
        x = 2928.888671875,
        y = 4517.7216796875,
        code = "2051"
    },
    {
        x = 2876.2612304688,
        y = 4626.3110351563,
        code = "2052"
    },
    {
        x = 2811.85546875,
        y = 4745.5366210938,
        code = "2053"
    },
    {
        x = 2774.6083984375,
        y = 4863.5556640625,
        code = "2054"
    },
    {
        x = 2731.4553222656,
        y = 5025.2856445313,
        code = "2055"
    },
    {
        x = 3051.9165039063,
        y = 5011.0834960938,
        code = "2056"
    },
    {
        x = 3318.0610351563,
        y = 5191.6752929688,
        code = "2057"
    },
    {
        x = 3392.9614257813,
        y = 5463.1772460938,
        code = "2058"
    },
    {
        x = 3751.1640625,
        y = 4490.3896484375,
        code = "2059"
    },
    {
        x = 3523.6528320313,
        y = 3685.2565917969,
        code = "2060"
    },
    {
        x = 1698.5841064453,
        y = 3599.630859375,
        code = "3000"
    },
    {
        x = 1664.0155029297,
        y = 3657.4467773438,
        code = "3001"
    },
    {
        x = 1763.7017822266,
        y = 3637.3305664063,
        code = "3002"
    },
    {
        x = 1732.3602294922,
        y = 3697.5083007813,
        code = "3003"
    },
    {
        x = 1845.0377197266,
        y = 3686.875,
        code = "3004"
    },
    {
        x = 1804.2158203125,
        y = 3741.1557617188,
        code = "3005"
    },
    {
        x = 1909.8052978516,
        y = 3723.4416503906,
        code = "3006"
    },
    {
        x = 1874.7437744141,
        y = 3775.328125,
        code = "3007"
    },
    {
        x = 1980.3048095703,
        y = 3761.1333007813,
        code = "3008"
    },
    {
        x = 1947.779296875,
        y = 3821.3081054688,
        code = "3009"
    },
    {
        x = 2068.7026367188,
        y = 3803.5920410156,
        code = "3010"
    },
    {
        x = 2032.6301269531,
        y = 3863.7858886719,
        code = "3011"
    },
    {
        x = 1915.0797119141,
        y = 3900.3471679688,
        code = "3012"
    },
    {
        x = 1811.0383300781,
        y = 3910.880859375,
        code = "3013"
    },
    {
        x = 1837.5073242188,
        y = 3849.4609375,
        code = "3014"
    },
    {
        x = 1729.4243164063,
        y = 3867.1586914063,
        code = "3015"
    },
    {
        x = 1764.1710205078,
        y = 3803.3999023438,
        code = "3016"
    },
    {
        x = 1632.4604492188,
        y = 3877.7250976563,
        code = "3017"
    },
    {
        x = 1695.5550537109,
        y = 3753.7414550781,
        code = "3018"
    },
    {
        x = 1659.4842529297,
        y = 3815.0869140625,
        code = "3019"
    },
    {
        x = 1635.1939697266,
        y = 3720.60546875,
        code = "3020"
    },
    {
        x = 1586.1025390625,
        y = 3754.8356933594,
        code = "3021"
    },
    {
        x = 1550.0340576172,
        y = 3805.5637207031,
        code = "3022"
    },
    {
        x = 1532.8271484375,
        y = 3702.8420410156,
        code = "3023"
    },
    {
        x = 1500.2799072266,
        y = 3660.2998046875,
        code = "3024"
    },
    {
        x = 1406.3410644531,
        y = 3649.625,
        code = "3025"
    },
    {
        x = 1370.5953369141,
        y = 3610.6567382813,
        code = "3026"
    },
    {
        x = 1155.3911132813,
        y = 3585.2182617188,
        code = "3027"
    },
    {
        x = 1002.1698608398,
        y = 3586.970703125,
        code = "3028"
    },
    {
        x = 890.87438964844,
        y = 3664.8664550781,
        code = "3029"
    },
    {
        x = 868.12127685547,
        y = 3584.5717773438,
        code = "3030"
    },
    {
        x = 464.05184936523,
        y = 3546.1821289063,
        code = "3031"
    },
    {
        x = 354.55065917969,
        y = 3571.5322265625,
        code = "3032"
    },
    {
        x = 12.16725730896,
        y = 3624.5874023438,
        code = "3033"
    },
    {
        x = 106.29637908936,
        y = 3715.4526367188,
        code = "3034"
    },
    {
        x = 1512.6649169922,
        y = 3571.7692871094,
        code = "3035"
    },
    {
        x = 1619.1922607422,
        y = 3549.9096679688,
        code = "3036"
    },
    {
        x = 1772.3302001953,
        y = 3271.2485351563,
        code = "3037"
    },
    {
        x = 1898.9097900391,
        y = 3274.7416992188,
        code = "3038"
    },
    {
        x = 1971.7969970703,
        y = 3237.5124511719,
        code = "3039"
    },
    {
        x = 1982.0775146484,
        y = 3340.2080078125,
        code = "3040"
    },
    {
        x = 2054.947265625,
        y = 3439.3666992188,
        code = "3041"
    },
    {
        x = 2165.5749511719,
        y = 3509.5932617188,
        code = "3042"
    },
    {
        x = 2194.1762695313,
        y = 3343.0915527344,
        code = "3043"
    },
    {
        x = 2117.1166992188,
        y = 3171.2788085938,
        code = "3044"
    },
    {
        x = 1994.0245361328,
        y = 3027.2221679688,
        code = "3045"
    },
    {
        x = 2019.6750488281,
        y = 2948.1025390625,
        code = "3046"
    },
    {
        x = 2127.9638671875,
        y = 2936.8850097656,
        code = "3047"
    },
    {
        x = 2385.0139160156,
        y = 3089.1416015625,
        code = "3048"
    },
    {
        x = 2466.7514648438,
        y = 3296.2875976563,
        code = "3049"
    },
    {
        x = 2578.60546875,
        y = 3170.5209960938,
        code = "3050"
    },
    {
        x = 2649.7263183594,
        y = 3283.2431640625,
        code = "3051"
    },
    {
        x = 2715.1831054688,
        y = 3490.3386230469,
        code = "3052"
    },
    {
        x = 2620.7888183594,
        y = 2748.8625488281,
        code = "3053"
    },
    {
        x = 2892.5708007813,
        y = 2871.037109375,
        code = "3054"
    },
    {
        x = 3092.947265625,
        y = 2850.3403320313,
        code = "3055"
    },
    {
        x = 2529.4777832031,
        y = 2624.2233886719,
        code = "3056"
    },
    {
        x = 2347.9375,
        y = 2562.8107910156,
        code = "3057"
    },
    {
        x = 2090.8237304688,
        y = 2307.1806640625,
        code = "3058"
    },
    {
        x = 2435.2250976563,
        y = 2136.5595703125,
        code = "3059"
    },
    {
        x = 2129.7290039063,
        y = 1824.2932128906,
        code = "3060"
    },
    {
        x = 2498.9165039063,
        y = 1638.3122558594,
        code = "3061"
    },
    {
        x = 2748.8806152344,
        y = 1728.0220947266,
        code = "3062"
    },
    {
        x = 2743.240234375,
        y = 1360.8472900391,
        code = "3063"
    },
    {
        x = 2411.7565917969,
        y = 1215.591796875,
        code = "3064"
    },
    {
        x = 1698.2772216797,
        y = 2577.6418457031,
        code = "4000"
    },
    {
        x = 1558.7576904297,
        y = 2204.5749511719,
        code = "4001"
    },
    {
        x = 1572.5209960938,
        y = 1671.529296875,
        code = "4002"
    },
    {
        x = 1232.7921142578,
        y = 1878.6875,
        code = "4003"
    },
    {
        x = 1115.5771484375,
        y = 2102.9555664063,
        code = "4004"
    },
    {
        x = 1126.4464111328,
        y = 2505.4987792969,
        code = "4005"
    },
    {
        x = 738.87951660156,
        y = 2552.6716308594,
        code = "4006"
    },
    {
        x = 851.88513183594,
        y = 2287.615234375,
        code = "4007"
    },
    {
        x = 979.0517578125,
        y = 2060.93359375,
        code = "4008"
    },
    {
        x = 850.06805419922,
        y = 2171.275390625,
        code = "4009"
    },
    {
        x = 248.26159667969,
        y = 2579.158203125,
        code = "4010"
    },
    {
        x = 72.049034118652,
        y = 2791.0595703125,
        code = "4011"
    },
    {
        x = -24.513399124146,
        y = 2883.7233886719,
        code = "4012"
    },
    {
        x = 171.71435546875,
        y = 3051.9291992188,
        code = "4013"
    },
    {
        x = 199.73529052734,
        y = 2784.50390625,
        code = "4014"
    },
    {
        x = 359.95733642578,
        y = 2622.1733398438,
        code = "4015"
    },
    {
        x = 393.29782104492,
        y = 2578.4697265625,
        code = "4016"
    },
    {
        x = 481.49340820313,
        y = 2645.1513671875,
        code = "4017"
    },
    {
        x = 481.83526611328,
        y = 2596.1435546875,
        code = "4018"
    },
    {
        x = 567.63238525391,
        y = 2659.2497558594,
        code = "4019"
    },
    {
        x = 596.22540283203,
        y = 2766.0400390625,
        code = "4020"
    },
    {
        x = 932.36022949219,
        y = 2656.7985839844,
        code = "4021"
    },
    {
        x = 976.32257080078,
        y = 2712.8264160156,
        code = "4022"
    },
    {
        x = 1035.6104736328,
        y = 2652.38671875,
        code = "4023"
    },
    {
        x = 1202.3509521484,
        y = 2708.0361328125,
        code = "4024"
    },
    {
        x = 1135.3509521484,
        y = 2647.7917480469,
        code = "4025"
    },
    {
        x = -432.455078125,
        y = 2847.0344238281,
        code = "5000"
    },
    {
        x = -111.16876983643,
        y = 1904.4890136719,
        code = "5001"
    },
    {
        x = -827.80084228516,
        y = 1729.7996826172,
        code = "5002"
    },
    {
        x = -1298.4808349609,
        y = 2482.5209960938,
        code = "5004"
    },
    {
        x = -1612.5933837891,
        y = 2825.9462890625,
        code = "5005"
    },
    {
        x = -2401.2626953125,
        y = 3522.0424804688,
        code = "5006"
    },
    {
        x = -1695.5712890625,
        y = 2431.4914550781,
        code = "5007"
    },
    {
        x = -1763.189453125,
        y = 2228.3947753906,
        code = "5008"
    },
    {
        x = -1912.8382568359,
        y = 1929.0791015625,
        code = "5009"
    },
    {
        x = -2059.5356445313,
        y = 2296.7932128906,
        code = "5010"
    },
    {
        x = -2556.2705078125,
        y = 2323.9028320313,
        code = "5011"
    },
    {
        x = -2583.1748046875,
        y = 1905.3527832031,
        code = "5012"
    },
    {
        x = -2798.3693847656,
        y = 1436.0512695313,
        code = "5013"
    },
    {
        x = -2614.8747558594,
        y = 1119.2763671875,
        code = "5014"
    },
    {
        x = -2127.6206054688,
        y = 965.19665527344,
        code = "5015"
    },
    {
        x = -1789.1284179688,
        y = 830.56616210938,
        code = "5016"
    },
    {
        x = -1497.2863769531,
        y = 1452.0844726563,
        code = "5017"
    },
    {
        x = -1544.8598632813,
        y = 973.00732421875,
        code = "5018"
    },
    {
        x = -794.03955078125,
        y = 1043.3806152344,
        code = "5019"
    },
    {
        x = -423.65374755859,
        y = 1130.7108154297,
        code = "5020"
    },
    {
        x = -190.8380279541,
        y = 1450.0402832031,
        code = "5021"
    },
    {
        x = 139.99778747559,
        y = 1421.6665039063,
        code = "5022"
    },
    {
        x = 808.36334228516,
        y = 1729.169921875,
        code = "5023"
    },
    {
        x = 1420.1495361328,
        y = 1236.8513183594,
        code = "5024"
    },
    {
        x = 767.54479980469,
        y = 1282.3012695313,
        code = "5025"
    },
    {
        x = 145.04937744141,
        y = 1134.1402587891,
        code = "5026"
    },
    {
        x = -3209.5334472656,
        y = 1289.7377929688,
        code = "5027"
    },
    {
        x = -3219.8818359375,
        y = 1252.5125732422,
        code = "5028"
    },
    {
        x = -3219.6066894531,
        y = 1214.1319580078,
        code = "5029"
    },
    {
        x = -3225.259765625,
        y = 1180.4542236328,
        code = "5030"
    },
    {
        x = -3231.5,
        y = 1150.9360351563,
        code = "5031"
    },
    {
        x = -3258.41015625,
        y = 1107.2193603516,
        code = "5032"
    },
    {
        x = -3159.5808105469,
        y = 1115.4633789063,
        code = "5033"
    },
    {
        x = -3181.7373046875,
        y = 1054.6513671875,
        code = "5034"
    },
    {
        x = -3265.2766113281,
        y = 1080.0319824219,
        code = "5035"
    },
    {
        x = -3268.5485839844,
        y = 1050.4859619141,
        code = "5036"
    },
    {
        x = -3267.6665039063,
        y = 1017.9842529297,
        code = "5037"
    },
    {
        x = -3271.5385742188,
        y = 986.66461181641,
        code = "5038"
    },
    {
        x = -3427.08984375,
        y = 965.98327636719,
        code = "5039"
    },
    {
        x = -3252.6755371094,
        y = 912.82080078125,
        code = "5040"
    },
    {
        x = -3049.3513183594,
        y = 800.64678955078,
        code = "5041"
    },
    {
        x = -3139.1105957031,
        y = 751.76202392578,
        code = "5042"
    },
    {
        x = -3140.0373535156,
        y = 714.55914306641,
        code = "5043"
    },
    {
        x = -3124.9997558594,
        y = 679.12921142578,
        code = "5044"
    },
    {
        x = -3104.8137207031,
        y = 648.91979980469,
        code = "5045"
    },
    {
        x = -3082.5166015625,
        y = 621.79669189453,
        code = "5046"
    },
    {
        x = -3072.2216796875,
        y = 595.18688964844,
        code = "5047"
    },
    {
        x = -3063.6931152344,
        y = 564.455078125,
        code = "5048"
    },
    {
        x = -3062.8161621094,
        y = 537.88696289063,
        code = "5049"
    },
    {
        x = -3059.60546875,
        y = 510.1064453125,
        code = "5050"
    },
    {
        x = -3068.2106933594,
        y = 481.17578125,
        code = "5051"
    },
    {
        x = -3082.7136230469,
        y = 451.04525756836,
        code = "5052"
    },
    {
        x = -3100.7553710938,
        y = 401.41351318359,
        code = "5053"
    },
    {
        x = -3115.8542480469,
        y = 368.93173217773,
        code = "5054"
    },
    {
        x = -3122.6906738281,
        y = 340.56274414063,
        code = "5055"
    },
    {
        x = -3133.6220703125,
        y = 310.44152832031,
        code = "5056"
    },
    {
        x = -3140.4401855469,
        y = 279.70132446289,
        code = "5057"
    },
    {
        x = -3137.7958984375,
        y = 247.23010253906,
        code = "5058"
    },
    {
        x = -3117.4375,
        y = 215.91195678711,
        code = "5059"
    },
    {
        x = -3084.1052246094,
        y = 157.45587158203,
        code = "5060"
    },
    {
        x = -3067.9194335938,
        y = 109.04676818848,
        code = "5061"
    },
    {
        x = -3029.8791503906,
        y = 68.267807006836,
        code = "5062"
    },
    {
        x = -2972.9401855469,
        y = 34.603740692139,
        code = "5063"
    },
    {
        x = -2881.1638183594,
        y = 12.759202003479,
        code = "5064"
    },
    {
        x = -2947.6696777344,
        y = 371.97171020508,
        code = "5065"
    },
    {
        x = -3033.5871582031,
        y = 384.34530639648,
        code = "5066"
    },
    {
        x = -2946.5361328125,
        y = 401.41748046875,
        code = "5067"
    },
    {
        x = -2941.5354003906,
        y = 428.54724121094,
        code = "5068"
    },
    {
        x = -2938.8955078125,
        y = 459.24383544922,
        code = "5069"
    },
    {
        x = -2940.3774414063,
        y = 486.94250488281,
        code = "5070"
    },
    {
        x = -2199.2092285156,
        y = -389.80383300781,
        code = "7000"
    },
    {
        x = -2116.3181152344,
        y = -332.00323486328,
        code = "7001"
    },
    {
        x = -2116.6474609375,
        y = -431.80743408203,
        code = "7002"
    },
    {
        x = -2082.7109375,
        y = -254.1768951416,
        code = "7003"
    },
    {
        x = -2048.8107910156,
        y = -473.78384399414,
        code = "7004"
    },
    {
        x = -2019.6340332031,
        y = -223.5227355957,
        code = "7005"
    },
    {
        x = -2018.7672119141,
        y = -498.02963256836,
        code = "7006"
    },
    {
        x = -1963.6116943359,
        y = -266.07138061523,
        code = "7007"
    },
    {
        x = -1984.607421875,
        y = -523.46142578125,
        code = "7008"
    },
    {
        x = -2009.7395019531,
        y = -342.28518676758,
        code = "7009"
    },
    {
        x = -1958.1031494141,
        y = -548.30725097656,
        code = "7010"
    },
    {
        x = -1884.072265625,
        y = -328.76721191406,
        code = "7011"
    },
    {
        x = -1932.2103271484,
        y = -571.99481201172,
        code = "7012"
    },
    {
        x = -1950.8552246094,
        y = -386.65811157227,
        code = "7013"
    },
    {
        x = -1903.9252929688,
        y = -598.01983642578,
        code = "7014"
    },
    {
        x = -1825.1501464844,
        y = -371.97402954102,
        code = "7015"
    },
    {
        x = -1871.4891357422,
        y = -619.91717529297,
        code = "7016"
    },
    {
        x = -1888.3256835938,
        y = -430.47146606445,
        code = "7017"
    },
    {
        x = -1852.6398925781,
        y = -650.08361816406,
        code = "7018"
    },
    {
        x = -1792.1490478516,
        y = -422.84359741211,
        code = "7019"
    },
    {
        x = -1821.3714599609,
        y = -674.30865478516,
        code = "7020"
    },
    {
        x = -1824.0679931641,
        y = -477.79266357422,
        code = "7021"
    },
    {
        x = -1781.3073730469,
        y = -705.05755615234,
        code = "7022"
    },
    {
        x = -1713.1843261719,
        y = -476.66754150391,
        code = "7023"
    },
    {
        x = -1648.576171875,
        y = -516.84448242188,
        code = "7024"
    },
    {
        x = -1686.0948486328,
        y = -437.1676940918,
        code = "7025"
    },
    {
        x = -1597.8563232422,
        y = -444.87408447266,
        code = "7026"
    },
    {
        x = -1648.9616699219,
        y = -395.31716918945,
        code = "7027"
    },
    {
        x = -1566.0848388672,
        y = -403.62777709961,
        code = "7028"
    },
    {
        x = -1611.2490234375,
        y = -351.30529785156,
        code = "7029"
    },
    {
        x = -1507.6091308594,
        y = -331.92144775391,
        code = "7030"
    },
    {
        x = -1563.4343261719,
        y = -273.51312255859,
        code = "7031"
    },
    {
        x = -1489.373046875,
        y = -190.91166687012,
        code = "7032"
    },
    {
        x = -1549.9063720703,
        y = -102.99909973145,
        code = "7033"
    },
    {
        x = -1484.7360839844,
        y = -53.421825408936,
        code = "7034"
    },
    {
        x = -1593.6586914063,
        y = -46.95739364624,
        code = "7035"
    },
    {
        x = -1485.3869628906,
        y = 23.832782745361,
        code = "7036"
    },
    {
        x = -1562.4373779297,
        y = 13.172778129578,
        code = "7037"
    },
    {
        x = -1654.2404785156,
        y = 26.725975036621,
        code = "7038"
    },
    {
        x = -1699.4086914063,
        y = 65.067581176758,
        code = "7039"
    },
    {
        x = -1622.4224853516,
        y = 103.41746520996,
        code = "7040"
    },
    {
        x = -1564.8999023438,
        y = 80.378746032715,
        code = "7041"
    },
    {
        x = -1493.7747802734,
        y = 74.446685791016,
        code = "7042"
    },
    {
        x = -1554.8959960938,
        y = 137.55923461914,
        code = "7043"
    },
    {
        x = -1487.9063720703,
        y = 120.43137359619,
        code = "7044"
    },
    {
        x = -1481.1636962891,
        y = 165.26069641113,
        code = "7045"
    },
    {
        x = -1447.2622070313,
        y = 207.74937438965,
        code = "7046"
    },
    {
        x = -1396.8343505859,
        y = 272.08969116211,
        code = "7047"
    },
    {
        x = -1311.5577392578,
        y = 252.57038879395,
        code = "7048"
    },
    {
        x = -1362.6612548828,
        y = 327.51477050781,
        code = "7049"
    },
    {
        x = -1314.5948486328,
        y = 360.55511474609,
        code = "7050"
    },
    {
        x = -1288.3446044922,
        y = 314.5029296875,
        code = "7051"
    },
    {
        x = -1243.1960449219,
        y = 368.21478271484,
        code = "7052"
    },
    {
        x = -1217.525390625,
        y = 267.8522644043,
        code = "7053"
    },
    {
        x = -1211.3543701172,
        y = 321.56488037109,
        code = "7054"
    },
    {
        x = -1133.1903076172,
        y = 359.32727050781,
        code = "7055"
    },
    {
        x = -1117.5603027344,
        y = 299.68145751953,
        code = "7056"
    },
    {
        x = -1037.6297607422,
        y = 225.86000061035,
        code = "7057"
    },
    {
        x = -1029.6843261719,
        y = 157.37721252441,
        code = "7058"
    },
    {
        x = -996.35229492188,
        y = 110.71755218506,
        code = "7059"
    },
    {
        x = -916.42034912109,
        y = 103.61616516113,
        code = "7060"
    },
    {
        x = -920.28967285156,
        y = 154.36337280273,
        code = "7061"
    },
    {
        x = -927.09112548828,
        y = 199.21054077148,
        code = "7062"
    },
    {
        x = -807.57794189453,
        y = 164.95886230469,
        code = "7063"
    },
    {
        x = -823.84216308594,
        y = 107.6879196167,
        code = "7064"
    },
    {
        x = -701.96051025391,
        y = 190.87864685059,
        code = "7065"
    },
    {
        x = -701.70788574219,
        y = 145.39820861816,
        code = "7066"
    },
    {
        x = -599.33984375,
        y = 212.64114379883,
        code = "7067"
    },
    {
        x = -600.82861328125,
        y = 156.52317810059,
        code = "7068"
    },
    {
        x = -493.72451782227,
        y = 211.39082336426,
        code = "7069"
    },
    {
        x = -498.17999267578,
        y = 158.81488037109,
        code = "7070"
    },
    {
        x = -418.12149047852,
        y = 206.01795959473,
        code = "7071"
    },
    {
        x = -419.13818359375,
        y = 154.64540100098,
        code = "7072"
    },
    {
        x = -339.17007446289,
        y = 208.31494140625,
        code = "7073"
    },
    {
        x = -342.44937133789,
        y = 150.45230102539,
        code = "7074"
    },
    {
        x = -267.19244384766,
        y = 216.56059265137,
        code = "7075"
    },
    {
        x = -269.85913085938,
        y = 156.34120178223,
        code = "7076"
    },
    {
        x = -164.54524230957,
        y = 220.63507080078,
        code = "7077"
    },
    {
        x = -170.33535766602,
        y = 156.90377807617,
        code = "7078"
    },
    {
        x = -51.261993408203,
        y = 224.14115905762,
        code = "7079"
    },
    {
        x = -59.861751556396,
        y = 156.80795288086,
        code = "7080"
    },
    {
        x = -71.413513183594,
        y = 97.181373596191,
        code = "7081"
    },
    {
        x = 3.8074636459351,
        y = 47.566139221191,
        code = "7082"
    },
    {
        x = 24.751974105835,
        y = 99.49405670166,
        code = "7083"
    },
    {
        x = 41.28279876709,
        y = 148.3278503418,
        code = "7084"
    },
    {
        x = 57.770198822021,
        y = 197.98307800293,
        code = "7085"
    },
    {
        x = 86.936210632324,
        y = 272.8330078125,
        code = "7086"
    },
    {
        x = 185.22845458984,
        y = 388.5940246582,
        code = "7087"
    },
    {
        x = 151.84634399414,
        y = 320.07727050781,
        code = "7088"
    },
    {
        x = 166.25904846191,
        y = 251.57748413086,
        code = "7089"
    },
    {
        x = 265.88671875,
        y = 213.06823730469,
        code = "7090"
    },
    {
        x = 293.73529052734,
        y = 289.29541015625,
        code = "7091"
    },
    {
        x = 310.46026611328,
        y = 358.32046508789,
        code = "7092"
    },
    {
        x = 379.85479736328,
        y = 336.45932006836,
        code = "7093"
    },
    {
        x = 363.01657104492,
        y = 267.38198852539,
        code = "7094"
    },
    {
        x = 339.67346191406,
        y = 191.19873046875,
        code = "7095"
    },
    {
        x = 422.00445556641,
        y = 153.41694641113,
        code = "7096"
    },
    {
        x = 449.39508056641,
        y = 237.2190246582,
        code = "7097"
    },
    {
        x = 517.52410888672,
        y = 218.90100097656,
        code = "7098"
    },
    {
        x = 487.09075927734,
        y = 133.30479431152,
        code = "7099"
    },
    {
        x = 579.41821289063,
        y = 96.697784423828,
        code = "7100"
    },
    {
        x = 607.43518066406,
        y = 184.6509552002,
        code = "7101"
    },
    {
        x = 709.21997070313,
        y = 156.31629943848,
        code = "7102"
    },
    {
        x = 678.79772949219,
        y = 76.612144470215,
        code = "7103"
    },
    {
        x = 587.54901123047,
        y = -7.8100380897522,
        code = "7104"
    },
    {
        x = 502.20208740234,
        y = -47.399017333984,
        code = "7105"
    },
    {
        x = 470.02700805664,
        y = -118.2336807251,
        code = "7106"
    },
    {
        x = 441.36865234375,
        y = -190.85466003418,
        code = "7107"
    },
    {
        x = 426.8782043457,
        y = -250.52320861816,
        code = "7108"
    },
    {
        x = 331.12322998047,
        y = -223.47969055176,
        code = "7109"
    },
    {
        x = 356.57424926758,
        y = -160.24067687988,
        code = "7110"
    },
    {
        x = 386.94644165039,
        y = -76.430992126465,
        code = "7111"
    },
    {
        x = 422.60900878906,
        y = -16.83233833313,
        code = "7112"
    },
    {
        x = 451.68350219727,
        y = 54.277870178223,
        code = "7113"
    },
    {
        x = 391.29364013672,
        y = 71.067588806152,
        code = "7114"
    },
    {
        x = 361.43807983398,
        y = 5.528687953949,
        code = "7115"
    },
    {
        x = 337.4909362793,
        y = -54.708728790283,
        code = "7116"
    },
    {
        x = 304.0458984375,
        y = -145.77757263184,
        code = "7117"
    },
    {
        x = 283.68252563477,
        y = -198.23512268066,
        code = "7118"
    },
    {
        x = 202.48402404785,
        y = -174.63926696777,
        code = "7119"
    },
    {
        x = 223.40191650391,
        y = -113.85186767578,
        code = "7120"
    },
    {
        x = 250.84468078613,
        y = -39.525653839111,
        code = "7121"
    },
    {
        x = 275.28668212891,
        y = 33.049011230469,
        code = "7122"
    },
    {
        x = 297.97344970703,
        y = 101.52397155762,
        code = "7123"
    },
    {
        x = 228.58941650391,
        y = 126.29117584229,
        code = "7124"
    },
    {
        x = 201.09918212891,
        y = 50.693996429443,
        code = "7125"
    },
    {
        x = 182.45341491699,
        y = -9.5587949752808,
        code = "7126"
    },
    {
        x = 147.91889953613,
        y = -91.046058654785,
        code = "7127"
    },
    {
        x = 126.35182189941,
        y = -145.99638366699,
        code = "7128"
    },
    {
        x = 46.364261627197,
        y = -112.9450302124,
        code = "7129"
    },
    {
        x = 67.301887512207,
        y = -61.006088256836,
        code = "7130"
    },
    {
        x = 95.328193664551,
        y = 20.40322303772,
        code = "7131"
    },
    {
        x = 108.54914855957,
        y = 64.059242248535,
        code = "7132"
    },
    {
        x = 127.78938293457,
        y = 116.97310638428,
        code = "7133"
    },
    {
        x = 141.61860656738,
        y = 167.12309265137,
        code = "7134"
    },
    {
        x = -8.0422210693359,
        y = -24.743330001831,
        code = "7135"
    },
    {
        x = -21.934183120728,
        y = -90.271217346191,
        code = "7136"
    },
    {
        x = -124.36614227295,
        y = -49.571273803711,
        code = "7137"
    },
    {
        x = -106.42967224121,
        y = 18.787809371948,
        code = "7138"
    },
    {
        x = -182.25309753418,
        y = 59.578884124756,
        code = "7139"
    },
    {
        x = -197.94508361816,
        y = -24.859977722168,
        code = "7140"
    },
    {
        x = -290.69509887695,
        y = 8.1253080368042,
        code = "7141"
    },
    {
        x = -282.97415161133,
        y = 90.788482666016,
        code = "7142"
    },
    {
        x = -354.13092041016,
        y = 91.340026855469,
        code = "7143"
    },
    {
        x = -353.85736083984,
        y = 35.223419189453,
        code = "7144"
    },
    {
        x = -435.06552124023,
        y = 38.151237487793,
        code = "7145"
    },
    {
        x = -434.21737670898,
        y = 94.225944519043,
        code = "7146"
    },
    {
        x = -505.97164916992,
        y = 95.970291137695,
        code = "7147"
    },
    {
        x = -506.88833618164,
        y = 33.970352172852,
        code = "7148"
    },
    {
        x = -605.18395996094,
        y = 31.588443756104,
        code = "7149"
    },
    {
        x = -604.90783691406,
        y = 93.528701782227,
        code = "7150"
    },
    {
        x = -698.51153564453,
        y = 68.708045959473,
        code = "7151"
    },
    {
        x = -691.76470947266,
        y = 9.6718225479126,
        code = "7152"
    },
    {
        x = -774.73699951172,
        y = -9.2394599914551,
        code = "7153"
    },
    {
        x = -796.29791259766,
        y = 52.13858795166,
        code = "7154"
    },
    {
        x = -914.65380859375,
        y = 39.113334655762,
        code = "7155"
    },
    {
        x = -865.41485595703,
        y = -48.261569976807,
        code = "7156"
    },
    {
        x = -1132.5535888672,
        y = -204.72421264648,
        code = "7157"
    },
    {
        x = -1226.751953125,
        y = -143.95236206055,
        code = "7158"
    },
    {
        x = -1293.2147216797,
        y = -117.44091796875,
        code = "7159"
    },
    {
        x = -1364.3817138672,
        y = 51.36882019043,
        code = "7160"
    },
    {
        x = -1361.15625,
        y = -105.07413482666,
        code = "7161"
    },
    {
        x = -1357.9561767578,
        y = -183.01718139648,
        code = "7162"
    },
    {
        x = -1240.8408203125,
        y = -194.26989746094,
        code = "7163"
    },
    {
        x = -1204.5501708984,
        y = -248.015625,
        code = "7164"
    },
    {
        x = -1278.6323242188,
        y = -284.64767456055,
        code = "7165"
    },
    {
        x = -1429.4681396484,
        y = -253.36561584473,
        code = "7166"
    },
    {
        x = -1307.0205078125,
        y = -241.00469970703,
        code = "7167"
    },
    {
        x = -1375.2297363281,
        y = -329.00192260742,
        code = "7168"
    },
    {
        x = -1459.9578857422,
        y = -376.86303710938,
        code = "7169"
    },
    {
        x = -1532.3116455078,
        y = -437.10891723633,
        code = "7170"
    },
    {
        x = -1588.7243652344,
        y = -587.67156982422,
        code = "7171"
    },
    {
        x = -1508.1793212891,
        y = -526.90173339844,
        code = "7172"
    },
    {
        x = -1406.3796386719,
        y = -456.11715698242,
        code = "7173"
    },
    {
        x = -1324.1636962891,
        y = -406.97958374023,
        code = "7174"
    },
    {
        x = -1237.5474853516,
        y = -361.89862060547,
        code = "7175"
    },
    {
        x = -1162.9831542969,
        y = -321.61190795898,
        code = "7176"
    },
    {
        x = -1085.3809814453,
        y = -308.07412719727,
        code = "7177"
    },
    {
        x = -1074.4820556641,
        y = -249.66285705566,
        code = "7178"
    },
    {
        x = -934.90258789063,
        y = -178.86724853516,
        code = "7179"
    },
    {
        x = -831.94970703125,
        y = -125.18535614014,
        code = "7180"
    },
    {
        x = -743.11566162109,
        y = -75.616943359375,
        code = "7181"
    },
    {
        x = -627.16333007813,
        y = -31.379716873169,
        code = "7182"
    },
    {
        x = -516.63244628906,
        y = -29.634790420532,
        code = "7183"
    },
    {
        x = -438.34127807617,
        y = -28.469976425171,
        code = "7184"
    },
    {
        x = -341.84225463867,
        y = -60.965557098389,
        code = "7185"
    },
    {
        x = -210.51528930664,
        y = -109.40273284912,
        code = "7186"
    },
    {
        x = -140.60443115234,
        y = -129.51954650879,
        code = "7187"
    },
    {
        x = -45.913478851318,
        y = -164.96725463867,
        code = "7188"
    },
    {
        x = 21.043941497803,
        y = -190.9725189209,
        code = "7189"
    },
    {
        x = 108.06352233887,
        y = -221.10440063477,
        code = "7190"
    },
    {
        x = 172.09213256836,
        y = -242.99082946777,
        code = "7191"
    },
    {
        x = 257.93273925781,
        y = -279.00726318359,
        code = "7192"
    },
    {
        x = 304.82440185547,
        y = -295.57809448242,
        code = "7193"
    },
    {
        x = 390.09271240234,
        y = -323.34320068359,
        code = "7194"
    },
    {
        x = 377.35684204102,
        y = -358.76672363281,
        code = "7195"
    },
    {
        x = 294.26147460938,
        y = -339.58251953125,
        code = "7196"
    },
    {
        x = 239.05592346191,
        y = -321.30206298828,
        code = "7197"
    },
    {
        x = 156.11320495605,
        y = -286.52401733398,
        code = "7198"
    },
    {
        x = 89.100494384766,
        y = -264.71020507813,
        code = "7199"
    },
    {
        x = 4.9829225540161,
        y = -230.5140838623,
        code = "7200"
    },
    {
        x = -51.424247741699,
        y = -212.25173950195,
        code = "7201"
    },
    {
        x = -147.44256591797,
        y = -180.49078369141,
        code = "7202"
    },
    {
        x = -225.07437133789,
        y = -158.06991577148,
        code = "7203"
    },
    {
        x = -347.58557128906,
        y = -115.0101776123,
        code = "7204"
    },
    {
        x = -473.03695678711,
        y = -66.647735595703,
        code = "7205"
    },
    {
        x = -616.19506835938,
        y = -90.261505126953,
        code = "7206"
    },
    {
        x = -711.53289794922,
        y = -125.12683105469,
        code = "7207"
    },
    {
        x = -801.57043457031,
        y = -168.83096313477,
        code = "7208"
    },
    {
        x = -871.07830810547,
        y = -233.84226989746,
        code = "7209"
    },
    {
        x = -985.2216796875,
        y = -281.61315917969,
        code = "7210"
    },
    {
        x = -1075.2819824219,
        y = -346.12161254883,
        code = "7211"
    },
    {
        x = -1133.4451904297,
        y = -373.1533203125,
        code = "7212"
    },
    {
        x = -1221.6993408203,
        y = -396.22146606445,
        code = "7213"
    },
    {
        x = -1291.6506347656,
        y = -448.19494628906,
        code = "7214"
    },
    {
        x = -1372.2003173828,
        y = -499.12393188477,
        code = "7215"
    },
    {
        x = -1442.7905273438,
        y = -547.9931640625,
        code = "7216"
    },
    {
        x = -1529.2775878906,
        y = -612.9306640625,
        code = "7217"
    },
    {
        x = -1468.208984375,
        y = -668.4365234375,
        code = "7218"
    },
    {
        x = -1397.7141113281,
        y = -616.50567626953,
        code = "7219"
    },
    {
        x = -1319.4672851563,
        y = -570.59692382813,
        code = "7220"
    },
    {
        x = -1236.9929199219,
        y = -500.71939086914,
        code = "7221"
    },
    {
        x = -1192.6867675781,
        y = -456.6296081543,
        code = "7222"
    },
    {
        x = -1116.26171875,
        y = -437.17132568359,
        code = "7223"
    },
    {
        x = -1038.6811523438,
        y = -405.91580200195,
        code = "7224"
    },
    {
        x = -950.45629882813,
        y = -358.13793945313,
        code = "7225"
    },
    {
        x = -863.43701171875,
        y = -337.49066162109,
        code = "7226"
    },
    {
        x = -773.43572998047,
        y = -220.03509521484,
        code = "7227"
    },
    {
        x = -683.05572509766,
        y = -174.72058105469,
        code = "7228"
    },
    {
        x = -593.42590332031,
        y = -132.69073486328,
        code = "7229"
    },
    {
        x = -434.96331787109,
        y = -129.74906921387,
        code = "7230"
    },
    {
        x = -333.77029418945,
        y = -148.63935852051,
        code = "7231"
    },
    {
        x = -229.61874389648,
        y = -210.62959289551,
        code = "7232"
    },
    {
        x = -158.52439880371,
        y = -230.71984863281,
        code = "7233"
    },
    {
        x = -85.653625488281,
        y = -286.23663330078,
        code = "7234"
    },
    {
        x = -24.609064102173,
        y = -305.72967529297,
        code = "7235"
    },
    {
        x = 65.954689025879,
        y = -339.39633178711,
        code = "7236"
    },
    {
        x = 128.22149658203,
        y = -363.60174560547,
        code = "7237"
    },
    {
        x = 214.67274475098,
        y = -389.03237915039,
        code = "7238"
    },
    {
        x = 271.01861572266,
        y = -432.14071655273,
        code = "7239"
    },
    {
        x = 200.45906066895,
        y = -447.49761962891,
        code = "7240"
    },
    {
        x = 112.20059967041,
        y = -415.62548828125,
        code = "7241"
    },
    {
        x = 39.297740936279,
        y = -399.71298217773,
        code = "7242"
    },
    {
        x = -50.179836273193,
        y = -367.28509521484,
        code = "7243"
    },
    {
        x = -102.442527771,
        y = -343.09912109375,
        code = "7244"
    },
    {
        x = -205.45635986328,
        y = -308.86437988281,
        code = "7245"
    },
    {
        x = -335.06890869141,
        y = -247.51156616211,
        code = "7246"
    },
    {
        x = -407.41165161133,
        y = -173.76556396484,
        code = "7247"
    },
    {
        x = -552.95635986328,
        y = -198.59223937988,
        code = "7248"
    },
    {
        x = -527.32592773438,
        y = -246.41288757324,
        code = "7249"
    },
    {
        x = -609.56915283203,
        y = -290.55505371094,
        code = "7250"
    },
    {
        x = -637.74108886719,
        y = -238.21565246582,
        code = "7251"
    },
    {
        x = -708.29119873047,
        y = -317.93792724609,
        code = "7252"
    },
    {
        x = -772.34887695313,
        y = -376.9787902832,
        code = "7253"
    },
    {
        x = -907.90661621094,
        y = -380.63442993164,
        code = "7254"
    },
    {
        x = -1033.8917236328,
        y = -440.162109375,
        code = "7255"
    },
    {
        x = -1117.4270019531,
        y = -482.70053100586,
        code = "7256"
    },
    {
        x = -1196.8448486328,
        y = -540.54779052734,
        code = "7257"
    },
    {
        x = -1296.7912597656,
        y = -608.94848632813,
        code = "7258"
    },
    {
        x = -1380.4765625,
        y = -661.00457763672,
        code = "7259"
    },
    {
        x = -1435.6938476563,
        y = -699.41857910156,
        code = "7260"
    },
    {
        x = -1330.3391113281,
        y = -708.89611816406,
        code = "7261"
    },
    {
        x = -1252.6789550781,
        y = -665.22430419922,
        code = "7262"
    },
    {
        x = -1178.6728515625,
        y = -595.59741210938,
        code = "7263"
    },
    {
        x = -1124.1014404297,
        y = -556.05163574219,
        code = "7264"
    },
    {
        x = -1063.0361328125,
        y = -525.39495849609,
        code = "7265"
    },
    {
        x = -994.33551025391,
        y = -492.98516845703,
        code = "7266"
    },
    {
        x = -894.89099121094,
        y = -439.87539672852,
        code = "7267"
    },
    {
        x = -790.12915039063,
        y = -438.1298828125,
        code = "7268"
    },
    {
        x = -696.00360107422,
        y = -413.35885620117,
        code = "7269"
    },
    {
        x = -576.52172851563,
        y = -348.46997070313,
        code = "7270"
    },
    {
        x = -575.54638671875,
        y = -422.2868347168,
        code = "7271"
    },
    {
        x = -467.97714233398,
        y = -427.6130065918,
        code = "7272"
    },
    {
        x = -504.89535522461,
        y = -330.84494018555,
        code = "7273"
    },
    {
        x = -447.94088745117,
        y = -303.10745239258,
        code = "7274"
    },
    {
        x = -380.36608886719,
        y = -360.9977722168,
        code = "7275"
    },
    {
        x = -374.79534912109,
        y = -429.47268676758,
        code = "7276"
    },
    {
        x = -291.27841186523,
        y = -443.0768737793,
        code = "7277"
    },
    {
        x = -121.00784301758,
        y = -415.94769287109,
        code = "7278"
    },
    {
        x = -72.945343017578,
        y = -445.46435546875,
        code = "7279"
    },
    {
        x = 51.300407409668,
        y = -445.50051879883,
        code = "7280"
    },
    {
        x = 379.78671264648,
        y = -442.5491027832,
        code = "7281"
    },
    {
        x = 571.29211425781,
        y = -230.64088439941,
        code = "7282"
    },
    {
        x = 573.90319824219,
        y = -141.51860046387,
        code = "7283"
    },
    {
        x = 684.57373046875,
        y = -62.453575134277,
        code = "7284"
    },
    {
        x = 775.15447998047,
        y = 68.541107177734,
        code = "7285"
    },
    {
        x = 751.83099365234,
        y = 225.51345825195,
        code = "7286"
    },
    {
        x = 1265.6342773438,
        y = 318.17315673828,
        code = "7287"
    },
    {
        x = 1091.7604980469,
        y = 237.2815246582,
        code = "7288"
    },
    {
        x = 1031.2438964844,
        y = 153.43008422852,
        code = "7289"
    },
    {
        x = 1132.4299316406,
        y = 102.0453338623,
        code = "7290"
    },
    {
        x = 990.43524169922,
        y = 78.978652954102,
        code = "7291"
    },
    {
        x = 951.14349365234,
        y = 15.789879798889,
        code = "7292"
    },
    {
        x = 897.08648681641,
        y = -47.410163879395,
        code = "7293"
    },
    {
        x = 802.30731201172,
        y = -129.49909973145,
        code = "7294"
    },
    {
        x = 883.87591552734,
        y = -179.1529083252,
        code = "7295"
    },
    {
        x = 737.31951904297,
        y = -303.07089233398,
        code = "7296"
    },
    {
        x = 858.00885009766,
        y = -284.80178833008,
        code = "7297"
    },
    {
        x = 956.86846923828,
        y = -228.18383789063,
        code = "7298"
    },
    {
        x = 1004.9545288086,
        y = -132.57548522949,
        code = "7299"
    },
    {
        x = 1112.0799560547,
        y = -198.71315002441,
        code = "7300"
    },
    {
        x = 1056.8569335938,
        y = -283.15243530273,
        code = "7301"
    },
    {
        x = 1159.2609863281,
        y = -309.76162719727,
        code = "7302"
    },
    {
        x = 1106.41796875,
        y = -339.31286621094,
        code = "7303"
    },
    {
        x = 998.08197021484,
        y = -368.86080932617,
        code = "7304"
    },
    {
        x = 1025.4958496094,
        y = -396.64190673828,
        code = "7305"
    },
    {
        x = 1032.5069580078,
        y = -482.85696411133,
        code = "7306"
    },
    {
        x = 984.22222900391,
        y = -421.69152832031,
        code = "7307"
    },
    {
        x = 1004.5624389648,
        y = -507.33633422852,
        code = "7308"
    },
    {
        x = 952.30828857422,
        y = -451.27035522461,
        code = "7309"
    },
    {
        x = 961.44720458984,
        y = -530.39605712891,
        code = "7310"
    },
    {
        x = 919.19305419922,
        y = -474.91271972656,
        code = "7311"
    },
    {
        x = 920.62359619141,
        y = -553.45599365234,
        code = "7312"
    },
    {
        x = 861.27502441406,
        y = -498.60314941406,
        code = "7313"
    },
    {
        x = 837.93188476563,
        y = -534.06561279297,
        code = "7314"
    },
    {
        x = 834.6513671875,
        y = -571.2861328125,
        code = "7315"
    },
    {
        x = 868.69256591797,
        y = -606.81170654297,
        code = "7316"
    },
    {
        x = 910.16247558594,
        y = -639.21429443359,
        code = "7317"
    },
    {
        x = 984.22778320313,
        y = -609.14489746094,
        code = "7318"
    },
    {
        x = 940.15533447266,
        y = -673.52618408203,
        code = "7319"
    },
    {
        x = 962.33331298828,
        y = -711.86682128906,
        code = "7320"
    },
    {
        x = 1029.8846435547,
        y = -682.97528076172,
        code = "7321"
    },
    {
        x = 988.23333740234,
        y = -743.79754638672,
        code = "7322"
    },
    {
        x = 1059.9173583984,
        y = -716.05279541016,
        code = "7323"
    },
    {
        x = 1048.3874511719,
        y = -790.47393798828,
        code = "7324"
    },
    {
        x = 1112.9832763672,
        y = -743.86700439453,
        code = "7325"
    },
    {
        x = 1146.2985839844,
        y = -792.89196777344,
        code = "7326"
    },
    {
        x = 1151.85546875,
        y = -710.85028076172,
        code = "7327"
    },
    {
        x = 1241.865234375,
        y = -712.66967773438,
        code = "7328"
    },
    {
        x = 1302.3513183594,
        y = -757.56036376953,
        code = "7329"
    },
    {
        x = 1375.2471923828,
        y = -778.2587890625,
        code = "7330"
    },
    {
        x = 1418.5832519531,
        y = -719.27124023438,
        code = "7331"
    },
    {
        x = 1348.0096435547,
        y = -695.68811035156,
        code = "7332"
    },
    {
        x = 1243.8138427734,
        y = -663.23425292969,
        code = "7333"
    },
    {
        x = 1141.3553466797,
        y = -664.12512207031,
        code = "7334"
    },
    {
        x = 1133.3791503906,
        y = -611.91491699219,
        code = "7335"
    },
    {
        x = 1233.3999023438,
        y = -624.34521484375,
        code = "7336"
    },
    {
        x = 1130.3444824219,
        y = -556.46697998047,
        code = "7337"
    },
    {
        x = 1226.7858886719,
        y = -581.15197753906,
        code = "7338"
    },
    {
        x = 1316.2248535156,
        y = -592.51257324219,
        code = "7339"
    },
    {
        x = 1383.7846679688,
        y = -620.29193115234,
        code = "7340"
    },
    {
        x = 1404.7026367188,
        y = -562.45245361328,
        code = "7341"
    },
    {
        x = 1347.1457519531,
        y = -532.98547363281,
        code = "7342"
    },
    {
        x = 1235.8304443359,
        y = -493.45098876953,
        code = "7343"
    },
    {
        x = 1131.0235595703,
        y = -484.64471435547,
        code = "7344"
    },
    {
        x = 1248.1322021484,
        y = -443.09335327148,
        code = "7345"
    },
    {
        x = 1138.6513671875,
        y = -445.71017456055,
        code = "7346"
    },
    {
        x = 1264.6722412109,
        y = -363.70111083984,
        code = "7347"
    },
    {
        x = 1146.2971191406,
        y = -399.16549682617,
        code = "7348"
    },
    {
        x = 1374.98046875,
        y = -149.51196289063,
        code = "7349"
    },
    {
        x = 1635.5555419922,
        y = -30.312574386597,
        code = "7350"
    },
    {
        x = 2178.0,
        y = 73.750213623047,
        code = "7351"
    },
    {
        x = 1859.2497558594,
        y = 335.0166015625,
        code = "7352"
    },
    {
        x = 2424.0,
        y = 570.25042724609,
        code = "7353"
    },
    {
        x = 2565.1499023438,
        y = 291.29028320313,
        code = "7354"
    },
    {
        x = 2579.5817871094,
        y = 465.62487792969,
        code = "7355"
    },
    {
        x = 2407.4816894531,
        y = 631.80883789063,
        code = "7356"
    },
    {
        x = 1532.5715332031,
        y = 815.74157714844,
        code = "7357"
    },
    {
        x = 1975.5415039063,
        y = 846.99938964844,
        code = "7358"
    },
    {
        x = 2291.591796875,
        y = 939.62420654297,
        code = "7359"
    },
    {
        x = 2013.2316894531,
        y = 1271.3271484375,
        code = "7360"
    },
    {
        x = -1830.291015625,
        y = -1214.4635009766,
        code = "8000"
    },
    {
        x = -1678.4899902344,
        y = -1117.2708740234,
        code = "8001"
    },
    {
        x = -1620.734375,
        y = -1045.5661621094,
        code = "8002"
    },
    {
        x = -1559.7967529297,
        y = -974.66320800781,
        code = "8003"
    },
    {
        x = -1613.6203613281,
        y = -830.43530273438,
        code = "8004"
    },
    {
        x = -1484.1507568359,
        y = -918.12463378906,
        code = "8005"
    },
    {
        x = -1415.4753417969,
        y = -876.10388183594,
        code = "8006"
    },
    {
        x = -1343.1877441406,
        y = -793.85461425781,
        code = "8007"
    },
    {
        x = -1273.4790039063,
        y = -786.72662353516,
        code = "8008"
    },
    {
        x = -1232.4600830078,
        y = -836.15246582031,
        code = "8009"
    },
    {
        x = -1168.3585205078,
        y = -793.15966796875,
        code = "8010"
    },
    {
        x = -1199.9035644531,
        y = -756.53601074219,
        code = "8011"
    },
    {
        x = -1165.298828125,
        y = -727.05938720703,
        code = "8012"
    },
    {
        x = -1131.4459228516,
        y = -761.37280273438,
        code = "8013"
    },
    {
        x = -1075.2786865234,
        y = -708.79516601563,
        code = "8014"
    },
    {
        x = -1031.8812255859,
        y = -672.93310546875,
        code = "8015"
    },
    {
        x = -977.32299804688,
        y = -642.66235351563,
        code = "8016"
    },
    {
        x = -920.38171386719,
        y = -621.97686767578,
        code = "8017"
    },
    {
        x = -806.84155273438,
        y = -609.24731445313,
        code = "8018"
    },
    {
        x = -690.900390625,
        y = -616.42333984375,
        code = "8019"
    },
    {
        x = -551.08923339844,
        y = -611.66772460938,
        code = "8020"
    },
    {
        x = -314.0,
        y = -598.94732666016,
        code = "8021"
    },
    {
        x = -179.7685546875,
        y = -579.82098388672,
        code = "8022"
    },
    {
        x = -200.94201660156,
        y = -643.61340332031,
        code = "8023"
    },
    {
        x = -134.41723632813,
        y = -615.75347900391,
        code = "8024"
    },
    {
        x = -63.135009765625,
        y = -698.6923828125,
        code = "8025"
    },
    {
        x = -40.45458984375,
        y = -641.31292724609,
        code = "8026"
    },
    {
        x = -17.804565429688,
        y = -581.57183837891,
        code = "8027"
    },
    {
        x = 47.885620117188,
        y = -593.5556640625,
        code = "8028"
    },
    {
        x = 25.114074707031,
        y = -653.37811279297,
        code = "8029"
    },
    {
        x = 6.3492431640625,
        y = -716.36633300781,
        code = "8030"
    },
    {
        x = 87.976623535156,
        y = -750.6728515625,
        code = "8031"
    },
    {
        x = 112.23950195313,
        y = -680.56030273438,
        code = "8032"
    },
    {
        x = 133.30133056641,
        y = -620.82183837891,
        code = "8033"
    },
    {
        x = 188.67425537109,
        y = -647.15240478516,
        code = "8034"
    },
    {
        x = 173.08740234375,
        y = -702.19592285156,
        code = "8035"
    },
    {
        x = 143.93762207031,
        y = -769.15155029297,
        code = "8036"
    },
    {
        x = 246.29974365234,
        y = -812.24029541016,
        code = "8037"
    },
    {
        x = 270.53942871094,
        y = -742.11029052734,
        code = "8038"
    },
    {
        x = 290.00720214844,
        y = -677.58953857422,
        code = "8039"
    },
    {
        x = 326.24517822266,
        y = -609.85137939453,
        code = "8040"
    },
    {
        x = 462.87261962891,
        y = -636.20239257813,
        code = "8041"
    },
    {
        x = 374.75653076172,
        y = -729.50396728516,
        code = "8042"
    },
    {
        x = 358.39038085938,
        y = -824.39807128906,
        code = "8043"
    },
    {
        x = 457.5615234375,
        y = -716.79925537109,
        code = "8044"
    },
    {
        x = 456.33410644531,
        y = -805.27172851563,
        code = "8045"
    },
    {
        x = 456.67822265625,
        y = -907.32147216797,
        code = "8046"
    },
    {
        x = 464.20166015625,
        y = -993.43060302734,
        code = "8047"
    },
    {
        x = 359.36865234375,
        y = -1011.7819824219,
        code = "8048"
    },
    {
        x = 362.11944580078,
        y = -927.90307617188,
        code = "8049"
    },
    {
        x = 325.01721191406,
        y = -887.50073242188,
        code = "8050"
    },
    {
        x = 292.69952392578,
        y = -983.19506835938,
        code = "8051"
    },
    {
        x = 273.89923095703,
        y = -1028.6313476563,
        code = "8052"
    },
    {
        x = 171.40972900391,
        y = -991.18896484375,
        code = "8053"
    },
    {
        x = 221.99188232422,
        y = -881.20806884766,
        code = "8054"
    },
    {
        x = 77.266540527344,
        y = -821.47180175781,
        code = "8055"
    },
    {
        x = 68.063781738281,
        y = -884.46630859375,
        code = "8056"
    },
    {
        x = 48.502136230469,
        y = -940.29296875,
        code = "8057"
    },
    {
        x = -61.113586425781,
        y = -900.44781494141,
        code = "8058"
    },
    {
        x = -43.23681640625,
        y = -842.26586914063,
        code = "8059"
    },
    {
        x = -26.1337890625,
        y = -788.89819335938,
        code = "8060"
    },
    {
        x = -81.564697265625,
        y = -764.98870849609,
        code = "8061"
    },
    {
        x = -106.72705078125,
        y = -816.0107421875,
        code = "8062"
    },
    {
        x = -129.48596191406,
        y = -875.82818603516,
        code = "8063"
    },
    {
        x = -223.96990966797,
        y = -843.17120361328,
        code = "8064"
    },
    {
        x = -207.68090820313,
        y = -786.60998535156,
        code = "8065"
    },
    {
        x = -187.39575195313,
        y = -731.65405273438,
        code = "8066"
    },
    {
        x = -301.76251220703,
        y = -694.13153076172,
        code = "8067"
    },
    {
        x = -301.71411132813,
        y = -693.98406982422,
        code = "8068"
    },
    {
        x = -324.98895263672,
        y = -816.22521972656,
        code = "8069"
    },
    {
        x = -460.11907958984,
        y = -819.43811035156,
        code = "8070"
    },
    {
        x = -468.53918457031,
        y = -758.87475585938,
        code = "8071"
    },
    {
        x = -494.47418212891,
        y = -701.51293945313,
        code = "8072"
    },
    {
        x = -588.96990966797,
        y = -696.76776123047,
        code = "8073"
    },
    {
        x = -579.85424804688,
        y = -758.00122070313,
        code = "8074"
    },
    {
        x = -549.23425292969,
        y = -808.41369628906,
        code = "8075"
    },
    {
        x = -697.12164306641,
        y = -813.23229980469,
        code = "8076"
    },
    {
        x = -695.17755126953,
        y = -755.06591796875,
        code = "8077"
    },
    {
        x = -693.22772216797,
        y = -692.9306640625,
        code = "8078"
    },
    {
        x = -777.00115966797,
        y = -688.97875976563,
        code = "8079"
    },
    {
        x = -780.63635253906,
        y = -755.92938232422,
        code = "8080"
    },
    {
        x = -778.72772216797,
        y = -811.79296875,
        code = "8081"
    },
    {
        x = -820.61395263672,
        y = -784.72058105469,
        code = "8082"
    },
    {
        x = -825.85101318359,
        y = -725.76879882813,
        code = "8083"
    },
    {
        x = -901.24066162109,
        y = -693.91833496094,
        code = "8084"
    },
    {
        x = -901.66876220703,
        y = -759.30755615234,
        code = "8085"
    },
    {
        x = -904.50994873047,
        y = -811.95483398438,
        code = "8086"
    },
    {
        x = -963.15289306641,
        y = -804.82659912109,
        code = "8087"
    },
    {
        x = -966.00994873047,
        y = -723.55163574219,
        code = "8088"
    },
    {
        x = -1023.8558959961,
        y = -769.82843017578,
        code = "8089"
    },
    {
        x = -1084.8941650391,
        y = -830.42523193359,
        code = "8090"
    },
    {
        x = -1111.6213378906,
        y = -879.06958007813,
        code = "8091"
    },
    {
        x = -1175.83203125,
        y = -916.56103515625,
        code = "8092"
    },
    {
        x = -1234.453125,
        y = -950.07574462891,
        code = "8093"
    },
    {
        x = -1329.7668457031,
        y = -965.24383544922,
        code = "8094"
    },
    {
        x = -1354.1298828125,
        y = -919.81860351563,
        code = "8095"
    },
    {
        x = -1410.3618164063,
        y = -987.5986328125,
        code = "8096"
    },
    {
        x = -1504.8696289063,
        y = -1076.0716552734,
        code = "8097"
    },
    {
        x = -1435.9759521484,
        y = -1114.3579101563,
        code = "8098"
    },
    {
        x = -1421.2749023438,
        y = -1197.2924804688,
        code = "8099"
    },
    {
        x = -1339.2521972656,
        y = -1182.1665039063,
        code = "8100"
    },
    {
        x = -1338.125,
        y = -1134.3774414063,
        code = "8101"
    },
    {
        x = -1359.2917480469,
        y = -1065.0572509766,
        code = "8102"
    },
    {
        x = -1313.4952392578,
        y = -1006.940246582,
        code = "8103"
    },
    {
        x = -1293.9929199219,
        y = -1054.7724609375,
        code = "8104"
    },
    {
        x = -1276.4588623047,
        y = -1109.0532226563,
        code = "8105"
    },
    {
        x = -1266.6072998047,
        y = -1152.8873291016,
        code = "8106"
    },
    {
        x = -1224.0283203125,
        y = -1014.2146606445,
        code = "8107"
    },
    {
        x = -1195.8745117188,
        y = -1078.5490722656,
        code = "8108"
    },
    {
        x = -1179.4812011719,
        y = -1129.8607177734,
        code = "8109"
    },
    {
        x = -1156.8045654297,
        y = -1180.1136474609,
        code = "8110"
    },
    {
        x = -1153.2834472656,
        y = -1244.7104492188,
        code = "8111"
    },
    {
        x = -1103.5051269531,
        y = -1283.8050537109,
        code = "8112"
    },
    {
        x = -1010.8887939453,
        y = -1222.5776367188,
        code = "8113"
    },
    {
        x = -1038.3781738281,
        y = -1174.7432861328,
        code = "8114"
    },
    {
        x = -1063.4271240234,
        y = -1130.8625488281,
        code = "8115"
    },
    {
        x = -1090.2277832031,
        y = -1077.0704345703,
        code = "8116"
    },
    {
        x = -1117.7211914063,
        y = -1037.6478271484,
        code = "8117"
    },
    {
        x = -1150.8475341797,
        y = -980.26293945313,
        code = "8118"
    },
    {
        x = -1062.0001220703,
        y = -934.07153320313,
        code = "8119"
    },
    {
        x = -1028.1959228516,
        y = -990.69000244141,
        code = "8120"
    },
    {
        x = -1007.8956298828,
        y = -1029.7551269531,
        code = "8121"
    },
    {
        x = -974.84289550781,
        y = -1076.8254394531,
        code = "8122"
    },
    {
        x = -954.54565429688,
        y = -1117.4990234375,
        code = "8123"
    },
    {
        x = -940.62219238281,
        y = -1179.6693115234,
        code = "8124"
    },
    {
        x = -890.05810546875,
        y = -1156.5856933594,
        code = "8125"
    },
    {
        x = -829.146484375,
        y = -1114.3566894531,
        code = "8126"
    },
    {
        x = -851.08880615234,
        y = -1068.1715087891,
        code = "8127"
    },
    {
        x = -884.19775390625,
        y = -1023.565612793,
        code = "8128"
    },
    {
        x = -912.38952636719,
        y = -975.99487304688,
        code = "8129"
    },
    {
        x = -940.86529541016,
        y = -925.58642578125,
        code = "8130"
    },
    {
        x = -977.18560791016,
        y = -880.96557617188,
        code = "8131"
    },
    {
        x = -886.755859375,
        y = -861.07391357422,
        code = "8132"
    },
    {
        x = -804.32641601563,
        y = -868.27331542969,
        code = "8133"
    },
    {
        x = -803.1748046875,
        y = -917.71661376953,
        code = "8134"
    },
    {
        x = -806.00982666016,
        y = -967.96362304688,
        code = "8135"
    },
    {
        x = -770.52813720703,
        y = -1026.1676025391,
        code = "8136"
    },
    {
        x = -750.345703125,
        y = -1071.6313476563,
        code = "8137"
    },
    {
        x = -700.55529785156,
        y = -1031.0007324219,
        code = "8138"
    },
    {
        x = -718.55364990234,
        y = -984.82147216797,
        code = "8139"
    },
    {
        x = -693.51342773438,
        y = -933.83929443359,
        code = "8140"
    },
    {
        x = -696.35992431641,
        y = -871.6806640625,
        code = "8141"
    },
    {
        x = -586.82690429688,
        y = -870.10583496094,
        code = "8142"
    },
    {
        x = -545.82250976563,
        y = -894.85827636719,
        code = "8143"
    },
    {
        x = -563.00665283203,
        y = -940.42175292969,
        code = "8144"
    },
    {
        x = -472.60583496094,
        y = -1056.7182617188,
        code = "8145"
    },
    {
        x = -492.99487304688,
        y = -1006.5607299805,
        code = "8146"
    },
    {
        x = -485.44836425781,
        y = -946.77185058594,
        code = "8147"
    },
    {
        x = -470.01870727539,
        y = -886.9052734375,
        code = "8148"
    },
    {
        x = -327.6982421875,
        y = -884.65887451172,
        code = "8149"
    },
    {
        x = -336.88616943359,
        y = -946.072265625,
        code = "8150"
    },
    {
        x = -338.91271972656,
        y = -1003.4870605469,
        code = "8151"
    },
    {
        x = -334.58642578125,
        y = -1068.0604248047,
        code = "8152"
    },
    {
        x = -317.48376464844,
        y = -1119.9077148438,
        code = "8153"
    },
    {
        x = -287.63110351563,
        y = -1033.0723876953,
        code = "8154"
    },
    {
        x = -272.1279296875,
        y = -969.33654785156,
        code = "8155"
    },
    {
        x = -254.23693847656,
        y = -907.1806640625,
        code = "8156"
    },
    {
        x = -159.82067871094,
        y = -943.06695556641,
        code = "8157"
    },
    {
        x = -180.19482421875,
        y = -1006.8634033203,
        code = "8158"
    },
    {
        x = -201.34191894531,
        y = -1066.6782226563,
        code = "8159"
    },
    {
        x = -228.0712890625,
        y = -1123.2899169922,
        code = "8160"
    },
    {
        x = -138.45300292969,
        y = -1123.2999267578,
        code = "8161"
    },
    {
        x = -118.19567871094,
        y = -1063.5217285156,
        code = "8162"
    },
    {
        x = -100.28674316406,
        y = -1007.7569580078,
        code = "8163"
    },
    {
        x = -89.623161315918,
        y = -964.93267822266,
        code = "8164"
    },
    {
        x = -3.1412353515625,
        y = -999.86987304688,
        code = "8165"
    },
    {
        x = -20.306701660156,
        y = -1061.2722167969,
        code = "8166"
    },
    {
        x = -43.883117675781,
        y = -1123.4693603516,
        code = "8167"
    },
    {
        x = 24.226928710938,
        y = -1091.6182861328,
        code = "8168"
    },
    {
        x = 50.932918548584,
        y = -1026.1612548828,
        code = "8169"
    },
    {
        x = 131.72967529297,
        y = -1048.6171875,
        code = "8170"
    },
    {
        x = 109.76110839844,
        y = -1108.4281005859,
        code = "8171"
    },
    {
        x = 173.09448242188,
        y = -1106.0588378906,
        code = "8172"
    },
    {
        x = 175.8193359375,
        y = -1071.8271484375,
        code = "8173"
    },
    {
        x = 268.63513183594,
        y = -1071.8500976563,
        code = "8174"
    },
    {
        x = 265.79010009766,
        y = -1110.1579589844,
        code = "8175"
    },
    {
        x = 357.78820800781,
        y = -1110.9970703125,
        code = "8176"
    },
    {
        x = 356.53411865234,
        y = -1071.1478271484,
        code = "8177"
    },
    {
        x = 453.3203125,
        y = -1070.3530273438,
        code = "8178"
    },
    {
        x = 453.67822265625,
        y = -1111.8461914063,
        code = "8179"
    },
    {
        x = 746.54296875,
        y = -1136.5583496094,
        code = "8180"
    },
    {
        x = 749.26934814453,
        y = -1074.4306640625,
        code = "8181"
    },
    {
        x = 744.84594726563,
        y = -985.97827148438,
        code = "8182"
    },
    {
        x = 739.59899902344,
        y = -935.78637695313,
        code = "8183"
    },
    {
        x = 735.94299316406,
        y = -887.18041992188,
        code = "8184"
    },
    {
        x = 729.90185546875,
        y = -820.24847412109,
        code = "8185"
    },
    {
        x = 731.87231445313,
        y = -760.47180175781,
        code = "8186"
    },
    {
        x = 739.40161132813,
        y = -709.4892578125,
        code = "8187"
    },
    {
        x = 817.798828125,
        y = -746.24493408203,
        code = "8188"
    },
    {
        x = 813.44592285156,
        y = -788.44323730469,
        code = "8189"
    },
    {
        x = 813.77825927734,
        y = -821.92578125,
        code = "8190"
    },
    {
        x = 816.51934814453,
        y = -884.91625976563,
        code = "8191"
    },
    {
        x = 829.63092041016,
        y = -937.55480957031,
        code = "8192"
    },
    {
        x = 831.572265625,
        y = -986.21954345703,
        code = "8193"
    },
    {
        x = 841.68493652344,
        y = -1033.2755126953,
        code = "8194"
    },
    {
        x = 834.65478515625,
        y = -1109.8161621094,
        code = "8195"
    },
    {
        x = 904.37091064453,
        y = -1130.5729980469,
        code = "8196"
    },
    {
        x = 911.10461425781,
        y = -1051.8024902344,
        code = "8197"
    },
    {
        x = 926.62200927734,
        y = -969.60461425781,
        code = "8198"
    },
    {
        x = 918.21075439453,
        y = -897.119140625,
        code = "8199"
    },
    {
        x = -1406.5347900391,
        y = -1268.6197509766,
        code = "8200"
    },
    {
        x = -1362.576171875,
        y = -1344.2043457031,
        code = "8201"
    },
    {
        x = -1387.0986328125,
        y = -1421.5750732422,
        code = "8202"
    },
    {
        x = -1367.3278808594,
        y = -1516.0430908203,
        code = "8203"
    },
    {
        x = -1320.4248046875,
        y = -1607.5413818359,
        code = "8204"
    },
    {
        x = -1255.2265625,
        y = -1700.8128662109,
        code = "8205"
    },
    {
        x = -1198.8803710938,
        y = -1793.5231933594,
        code = "8206"
    },
    {
        x = -1084.0930175781,
        y = -1662.5076904297,
        code = "8207"
    },
    {
        x = -1110.9595947266,
        y = -1617.0979003906,
        code = "8208"
    },
    {
        x = -1156.7485351563,
        y = -1553.349609375,
        code = "8209"
    },
    {
        x = -1192.4637451172,
        y = -1499.6339111328,
        code = "8210"
    },
    {
        x = -1238.2485351563,
        y = -1430.5867919922,
        code = "8211"
    },
    {
        x = -1275.7347412109,
        y = -1366.8492431641,
        code = "8212"
    },
    {
        x = -1289.033203125,
        y = -1317.2657470703,
        code = "8213"
    },
    {
        x = -1312.3676757813,
        y = -1265.9447021484,
        code = "8214"
    },
    {
        x = -1322.7319335938,
        y = -1232.3039550781,
        code = "8215"
    },
    {
        x = -1253.39453125,
        y = -1208.1477050781,
        code = "8216"
    },
    {
        x = -1244.6705322266,
        y = -1239.3704833984,
        code = "8217"
    },
    {
        x = -1218.5848388672,
        y = -1304.3797607422,
        code = "8218"
    },
    {
        x = -1205.9111328125,
        y = -1337.4548339844,
        code = "8219"
    },
    {
        x = -1176.1430664063,
        y = -1392.3951416016,
        code = "8220"
    },
    {
        x = -1135.0238037109,
        y = -1453.1245117188,
        code = "8221"
    },
    {
        x = -1105.3430175781,
        y = -1501.0115966797,
        code = "8222"
    },
    {
        x = -1058.4248046875,
        y = -1572.4730224609,
        code = "8223"
    },
    {
        x = -1038.6776123047,
        y = -1604.9644775391,
        code = "8224"
    },
    {
        x = -964.03210449219,
        y = -1584.3395996094,
        code = "8225"
    },
    {
        x = -914.76403808594,
        y = -1520.599609375,
        code = "8226"
    },
    {
        x = -1004.2291870117,
        y = -1528.86328125,
        code = "8227"
    },
    {
        x = -1028.7485351563,
        y = -1495.8439941406,
        code = "8228"
    },
    {
        x = -944.04754638672,
        y = -1430.3278808594,
        code = "8229"
    },
    {
        x = -1042.3331298828,
        y = -1393.162109375,
        code = "8230"
    },
    {
        x = -1112.3000488281,
        y = -1360.1431884766,
        code = "8231"
    },
    {
        x = -983.37646484375,
        y = -1289.3161621094,
        code = "8232"
    },
    {
        x = -954.77386474609,
        y = -1328.3073730469,
        code = "8233"
    },
    {
        x = -885.44458007813,
        y = -1302.3771972656,
        code = "8234"
    },
    {
        x = -891.65002441406,
        y = -1248.0938720703,
        code = "8235"
    },
    {
        x = -811.63067626953,
        y = -1199.6518554688,
        code = "8236"
    },
    {
        x = -791.92803955078,
        y = -1242.7899169922,
        code = "8237"
    },
    {
        x = -802.2822265625,
        y = -1308.3205566406,
        code = "8238"
    },
    {
        x = -698.70843505859,
        y = -1307.7591552734,
        code = "8239"
    },
    {
        x = -714.98480224609,
        y = -1416.4106445313,
        code = "8240"
    },
    {
        x = -754.84582519531,
        y = -1469.5748291016,
        code = "8241"
    },
    {
        x = -742.16125488281,
        y = -1519.7728271484,
        code = "8242"
    },
    {
        x = -692.91424560547,
        y = -1492.0563964844,
        code = "8243"
    },
    {
        x = -686.75427246094,
        y = -1440.7452392578,
        code = "8244"
    },
    {
        x = -638.69464111328,
        y = -1235.3330078125,
        code = "8245"
    },
    {
        x = -676.18487548828,
        y = -1187.5369873047,
        code = "8246"
    },
    {
        x = -697.74755859375,
        y = -1155.0841064453,
        code = "8247"
    },
    {
        x = -717.52648925781,
        y = -1124.4047851563,
        code = "8248"
    },
    {
        x = -586.21545410156,
        y = -986.32403564453,
        code = "8249"
    },
    {
        x = -588.90850830078,
        y = -1026.4881591797,
        code = "8250"
    },
    {
        x = -606.36547851563,
        y = -1065.4576416016,
        code = "8251"
    },
    {
        x = -623.22509765625,
        y = -1110.3604736328,
        code = "8252"
    },
    {
        x = -612.92242431641,
        y = -1160.5725097656,
        code = "8253"
    },
    {
        x = -529.42797851563,
        y = -1234.3839111328,
        code = "8254"
    },
    {
        x = -554.15460205078,
        y = -1292.1862792969,
        code = "8255"
    },
    {
        x = -2262.1477050781,
        y = 297.61862182617,
        code = "6000"
    },
    {
        x = -1994.5190429688,
        y = 648.20050048828,
        code = "6001"
    },
    {
        x = -1887.9575195313,
        y = 641.11657714844,
        code = "6002"
    },
    {
        x = -2014.0268554688,
        y = 599.19030761719,
        code = "6003"
    },
    {
        x = -1912.8198242188,
        y = 590.29577636719,
        code = "6004"
    },
    {
        x = -2021.7159423828,
        y = 547.93298339844,
        code = "6005"
    },
    {
        x = -1927.6529541016,
        y = 532.35278320313,
        code = "6006"
    },
    {
        x = -2030.7054443359,
        y = 493.98202514648,
        code = "6007"
    },
    {
        x = -1943.0958251953,
        y = 472.10983276367,
        code = "6008"
    },
    {
        x = -2031.3487548828,
        y = 436.68328857422,
        code = "6009"
    },
    {
        x = -1928.3488769531,
        y = 418.35144042969,
        code = "6010"
    },
    {
        x = -2014.828125,
        y = 388.83602905273,
        code = "6011"
    },
    {
        x = -1919.5220947266,
        y = 366.36947631836,
        code = "6012"
    },
    {
        x = -2003.0770263672,
        y = 323.84991455078,
        code = "6013"
    },
    {
        x = -1908.953125,
        y = 298.46801757813,
        code = "6014"
    },
    {
        x = -1997.8389892578,
        y = 268.93615722656,
        code = "6015"
    },
    {
        x = -1893.6683349609,
        y = 249.42088317871,
        code = "6016"
    },
    {
        x = -1978.9973144531,
        y = 213.98333740234,
        code = "6017"
    },
    {
        x = -1952.7348632813,
        y = 159.64445495605,
        code = "6018"
    },
    {
        x = -1897.5489501953,
        y = 112.38739013672,
        code = "6019"
    },
    {
        x = -1869.5643310547,
        y = 207.38467407227,
        code = "6020"
    },
    {
        x = -1737.0852050781,
        y = 214.4333190918,
        code = "6021"
    },
    {
        x = -1700.2106933594,
        y = 159.50413513184,
        code = "6022"
    },
    {
        x = -1660.9986572266,
        y = 246.86109924316,
        code = "6023"
    },
    {
        x = -1625.8809814453,
        y = 186.05140686035,
        code = "6024"
    },
    {
        x = -1563.6281738281,
        y = 213.79307556152,
        code = "6025"
    },
    {
        x = -1849.6419677734,
        y = 304.65264892578,
        code = "6026"
    },
    {
        x = -1795.0516357422,
        y = 427.42770385742,
        code = "6027"
    },
    {
        x = -1794.806640625,
        y = 322.92083740234,
        code = "6028"
    },
    {
        x = -1737.2999267578,
        y = 355.95559692383,
        code = "6029"
    },
    {
        x = -1669.1251220703,
        y = 365.39450073242,
        code = "6030"
    },
    {
        x = -1569.6906738281,
        y = 403.12774658203,
        code = "6031"
    },
    {
        x = -1492.6707763672,
        y = 541.81518554688,
        code = "6032"
    },
    {
        x = -1481.1917724609,
        y = 427.87646484375,
        code = "6033"
    },
    {
        x = -1470.8723144531,
        y = 485.10702514648,
        code = "6034"
    },
    {
        x = -1389.7387695313,
        y = 578.95404052734,
        code = "6035"
    },
    {
        x = -1319.8041992188,
        y = 649.19311523438,
        code = "6036"
    },
    {
        x = -1313.0637207031,
        y = 597.20562744141,
        code = "6037"
    },
    {
        x = -1262.6334228516,
        y = 679.24865722656,
        code = "6038"
    },
    {
        x = -1251.7319335938,
        y = 618.4013671875,
        code = "6039"
    },
    {
        x = -1191.8388671875,
        y = 650.865234375,
        code = "6040"
    },
    {
        x = -1146.6955566406,
        y = 714.00988769531,
        code = "6041"
    },
    {
        x = -1123.3859863281,
        y = 807.26391601563,
        code = "6042"
    },
    {
        x = -1096.5444335938,
        y = 745.27099609375,
        code = "6043"
    },
    {
        x = -1007.7152099609,
        y = 762.95837402344,
        code = "6044"
    },
    {
        x = -910.65142822266,
        y = 761.17913818359,
        code = "6045"
    },
    {
        x = -846.13549804688,
        y = 771.1787109375,
        code = "6046"
    },
    {
        x = -786.77917480469,
        y = 790.03894042969,
        code = "6047"
    },
    {
        x = -663.72924804688,
        y = 783.50695800781,
        code = "6048"
    },
    {
        x = -613.87359619141,
        y = 829.54168701172,
        code = "6049"
    },
    {
        x = -556.94104003906,
        y = 807.65979003906,
        code = "6050"
    },
    {
        x = -604.46942138672,
        y = 765.74035644531,
        code = "6051"
    },
    {
        x = -657.92224121094,
        y = 717.29736328125,
        code = "6052"
    },
    {
        x = -577.37915039063,
        y = 705.44445800781,
        code = "6053"
    },
    {
        x = -535.78741455078,
        y = 740.81671142578,
        code = "6054"
    },
    {
        x = -514.25689697266,
        y = 780.93884277344,
        code = "6055"
    },
    {
        x = -485.08337402344,
        y = 686.45562744141,
        code = "6056"
    },
    {
        x = -464.73760986328,
        y = 633.91528320313,
        code = "6057"
    },
    {
        x = -350.533203125,
        y = 687.02502441406,
        code = "6058"
    },
    {
        x = -401.02182006836,
        y = 642.13891601563,
        code = "6059"
    },
    {
        x = -291.67199707031,
        y = 648.49810791016,
        code = "6060"
    },
    {
        x = -341.48052978516,
        y = 601.91802978516,
        code = "6061"
    },
    {
        x = -239.08898925781,
        y = 624.33056640625,
        code = "6062"
    },
    {
        x = -277.17504882813,
        y = 579.43884277344,
        code = "6063"
    },
    {
        x = -168.29577636719,
        y = 625.44171142578,
        code = "6064"
    },
    {
        x = -204.01466369629,
        y = 572.865234375,
        code = "6065"
    },
    {
        x = -123.47906494141,
        y = 574.03063964844,
        code = "6066"
    },
    {
        x = -96.05509185791,
        y = 814.24304199219,
        code = "6067"
    },
    {
        x = -166.05004882813,
        y = 880.9013671875,
        code = "6068"
    },
    {
        x = -203.5856628418,
        y = 980.06671142578,
        code = "6069"
    },
    {
        x = -80.529174804688,
        y = 1000.1196289063,
        code = "6070"
    },
    {
        x = -44.25,
        y = 922.18334960938,
        code = "6071"
    },
    {
        x = 153.15551757813,
        y = 735.05572509766,
        code = "6072"
    },
    {
        x = 243.75549316406,
        y = 761.61242675781,
        code = "6073"
    },
    {
        x = 375.67501831055,
        y = 793.47485351563,
        code = "6074"
    },
    {
        x = 677.57409667969,
        y = 638.79724121094,
        code = "6075"
    },
    {
        x = 808.29443359375,
        y = 554.34033203125,
        code = "6076"
    },
    {
        x = 656.84167480469,
        y = 492.91119384766,
        code = "6077"
    },
    {
        x = 360.77349853516,
        y = 414.39306640625,
        code = "6078"
    },
    {
        x = 308.50833129883,
        y = 453.89862060547,
        code = "6079"
    },
    {
        x = 295.21667480469,
        y = 504.61383056641,
        code = "6080"
    },
    {
        x = 249.45138549805,
        y = 658.66259765625,
        code = "6081"
    },
    {
        x = 239.11804199219,
        y = 589.58752441406,
        code = "6082"
    },
    {
        x = 175.05268859863,
        y = 555.31396484375,
        code = "6083"
    },
    {
        x = 95.065246582031,
        y = 548.21667480469,
        code = "6084"
    },
    {
        x = 31.002807617188,
        y = 528.72082519531,
        code = "6085"
    },
    {
        x = 39.556945800781,
        y = 488.56109619141,
        code = "6086"
    },
    {
        x = 101.82203674316,
        y = 501.5361328125,
        code = "6087"
    },
    {
        x = 170.56524658203,
        y = 513.30560302734,
        code = "6088"
    },
    {
        x = 198.58605957031,
        y = 465.48751831055,
        code = "6089"
    },
    {
        x = 130.96112060547,
        y = 448.33193969727,
        code = "6090"
    },
    {
        x = 62.770755767822,
        y = 434.7236328125,
        code = "6091"
    },
    {
        x = -1.2972412109375,
        y = 447.09588623047,
        code = "6092"
    },
    {
        x = -66.628433227539,
        y = 468.28079223633,
        code = "6093"
    },
    {
        x = -119.97309112549,
        y = 482.46658325195,
        code = "6094"
    },
    {
        x = -175.78332519531,
        y = 485.40130615234,
        code = "6095"
    },
    {
        x = -232.74758911133,
        y = 470.56115722656,
        code = "6096"
    },
    {
        x = -291.53466796875,
        y = 474.73196411133,
        code = "6097"
    },
    {
        x = -369.76379394531,
        y = 455.81115722656,
        code = "6098"
    },
    {
        x = -331.13897705078,
        y = 511.28619384766,
        code = "6099"
    },
    {
        x = -402.87100219727,
        y = 492.36114501953,
        code = "6100"
    },
    {
        x = -360.69793701172,
        y = 541.34301757813,
        code = "6101"
    },
    {
        x = -439.50415039063,
        y = 518.86938476563,
        code = "6102"
    },
    {
        x = -410.33340454102,
        y = 567.25268554688,
        code = "6103"
    },
    {
        x = -492.69583129883,
        y = 531.83337402344,
        code = "6104"
    },
    {
        x = -459.35787963867,
        y = 578.43200683594,
        code = "6105"
    },
    {
        x = -528.75988769531,
        y = 594.927734375,
        code = "6106"
    },
    {
        x = -558.10064697266,
        y = 628.72186279297,
        code = "6107"
    },
    {
        x = -601.43756103516,
        y = 648.56945800781,
        code = "6108"
    },
    {
        x = -648.38018798828,
        y = 667.43884277344,
        code = "6109"
    },
    {
        x = -718.94104003906,
        y = 695.73327636719,
        code = "6110"
    },
    {
        x = -654.31750488281,
        y = 630.17919921875,
        code = "6111"
    },
    {
        x = -664.091796875,
        y = 580.56677246094,
        code = "6112"
    },
    {
        x = -713.98077392578,
        y = 631.90423583984,
        code = "6113"
    },
    {
        x = -717.83959960938,
        y = 572.28198242188,
        code = "6114"
    },
    {
        x = -766.55902099609,
        y = 589.95812988281,
        code = "6115"
    },
    {
        x = -775.70361328125,
        y = 620.64440917969,
        code = "6116"
    },
    {
        x = -789.62451171875,
        y = 648.34301757813,
        code = "6117"
    },
    {
        x = -806.47595214844,
        y = 677.22369384766,
        code = "6118"
    },
    {
        x = -862.28363037109,
        y = 677.79028320313,
        code = "6119"
    },
    {
        x = -918.67370605469,
        y = 673.61810302734,
        code = "6120"
    },
    {
        x = -974.53161621094,
        y = 672.35675048828,
        code = "6121"
    },
    {
        x = -1026.2021484375,
        y = 675.30151367188,
        code = "6122"
    },
    {
        x = -1065.5067138672,
        y = 708.35546875,
        code = "6123"
    },
    {
        x = -1338.2426757813,
        y = 541.27087402344,
        code = "6124"
    },
    {
        x = -1388.7254638672,
        y = 508.19418334961,
        code = "6125"
    },
    {
        x = -1410.8890380859,
        y = 438.9221496582,
        code = "6126"
    },
    {
        x = -1343.9058837891,
        y = 476.67770385742,
        code = "6127"
    },
    {
        x = -1351.9217529297,
        y = 434.14993286133,
        code = "6128"
    },
    {
        x = -1230.0601806641,
        y = 443.54446411133,
        code = "6129"
    },
    {
        x = -1284.1134033203,
        y = 488.95129394531,
        code = "6130"
    },
    {
        x = -1212.4343261719,
        y = 494.26245117188,
        code = "6131"
    },
    {
        x = -1212.158203125,
        y = 563.90283203125,
        code = "6132"
    },
    {
        x = -1140.2407226563,
        y = 527.28747558594,
        code = "6133"
    },
    {
        x = -1158.8768310547,
        y = 573.85028076172,
        code = "6134"
    },
    {
        x = -1115.4670410156,
        y = 595.69030761719,
        code = "6135"
    },
    {
        x = -1085.6940917969,
        y = 547.24731445313,
        code = "6136"
    },
    {
        x = -1037.5952148438,
        y = 565.49865722656,
        code = "6137"
    },
    {
        x = -954.66888427734,
        y = 609.72082519531,
        code = "6138"
    },
    {
        x = -972.70709228516,
        y = 558.93609619141,
        code = "6139"
    },
    {
        x = -895.13220214844,
        y = 582.51110839844,
        code = "6140"
    },
    {
        x = -922.60095214844,
        y = 537.04864501953,
        code = "6141"
    },
    {
        x = -854.97277832031,
        y = 554.59283447266,
        code = "6142"
    },
    {
        x = -892.58575439453,
        y = 498.03335571289,
        code = "6143"
    },
    {
        x = -831.50915527344,
        y = 513.93762207031,
        code = "6144"
    },
    {
        x = -884.38293457031,
        y = 452.51110839844,
        code = "6145"
    },
    {
        x = -823.89910888672,
        y = 466.66662597656,
        code = "6146"
    },
    {
        x = -814.16357421875,
        y = 409.9831237793,
        code = "6147"
    },
    {
        x = -773.17822265625,
        y = 481.37347412109,
        code = "6148"
    },
    {
        x = -756.38006591797,
        y = 412.8776550293,
        code = "6149"
    },
    {
        x = -724.23278808594,
        y = 499.6208190918,
        code = "6150"
    },
    {
        x = -712.74206542969,
        y = 441.16241455078,
        code = "6151"
    },
    {
        x = -671.13714599609,
        y = 517.88616943359,
        code = "6152"
    },
    {
        x = -659.64196777344,
        y = 466.4958190918,
        code = "6153"
    },
    {
        x = -607.41296386719,
        y = 531.97094726563,
        code = "6154"
    },
    {
        x = -598.89373779297,
        y = 476.46380615234,
        code = "6155"
    },
    {
        x = -558.46899414063,
        y = 553.77642822266,
        code = "6156"
    },
    {
        x = -521.02032470703,
        y = 494.13180541992,
        code = "6157"
    },
    {
        x = -510.1328125,
        y = 452.78060913086,
        code = "6158"
    },
    {
        x = -590.72540283203,
        y = 387.22906494141,
        code = "6159"
    },
    {
        x = -498.37484741211,
        y = 374.80413818359,
        code = "6160"
    },
    {
        x = -477.44799804688,
        y = 418.48046875,
        code = "6161"
    },
    {
        x = -422.26184082031,
        y = 419.63055419922,
        code = "6162"
    },
    {
        x = -437.25512695313,
        y = 367.65478515625,
        code = "6163"
    },
    {
        x = -462.48934936523,
        y = 328.10137939453,
        code = "6164"
    },
    {
        x = -393.73489379883,
        y = 328.10000610352,
        code = "6165"
    },
    {
        x = -369.84939575195,
        y = 390.66912841797,
        code = "6166"
    },
    {
        x = -323.51623535156,
        y = 347.55966186523,
        code = "6167"
    },
    {
        x = -316.17437744141,
        y = 405.98754882813,
        code = "6168"
    },
    {
        x = -266.91488647461,
        y = 369.94305419922,
        code = "6169"
    },
    {
        x = -207.63012695313,
        y = 388.1985168457,
        code = "6170"
    },
    {
        x = -157.18350219727,
        y = 410.58056640625,
        code = "6171"
    },
    {
        x = -84.303298950195,
        y = 439.47348022461,
        code = "6172"
    },
    {
        x = -86.418128967285,
        y = 357.40148925781,
        code = "6173"
    },
    {
        x = -6.4694213867188,
        y = 404.0319519043,
        code = "6174"
    },
    {
        x = -42.2138671875,
        y = 334.93740844727,
        code = "6175"
    },
    {
        x = 49.536071777344,
        y = 376.21939086914,
        code = "6176"
    },
    {
        x = 12.605529785156,
        y = 310.67916870117,
        code = "6177"
    },
    {
        x = -149.43428039551,
        y = 291.76098632813,
        code = "6178"
    },
    {
        x = -217.6293182373,
        y = 297.13497924805,
        code = "6179"
    },
    {
        x = -269.89212036133,
        y = 289.37637329102,
        code = "6180"
    },
    {
        x = -359.32946777344,
        y = 272.82220458984,
        code = "6181"
    },
    {
        x = -425.75863647461,
        y = 271.02914428711,
        code = "6182"
    },
    {
        x = -494.56964111328,
        y = 286.93753051758,
        code = "6183"
    },
    {
        x = -568.09265136719,
        y = 335.89297485352,
        code = "6184"
    },
    {
        x = -571.34918212891,
        y = 290.98889160156,
        code = "6185"
    },
    {
        x = -634.80773925781,
        y = 294.49157714844,
        code = "6186"
    },
    {
        x = -698.30737304688,
        y = 314.51943969727,
        code = "6187"
    },
    {
        x = -781.28607177734,
        y = 319.22219848633,
        code = "6188"
    },
    {
        x = -756.80535888672,
        y = 260.7624206543,
        code = "6189"
    },
    {
        x = -830.34216308594,
        y = 254.25691223145,
        code = "6190"
    },
    {
        x = -882.001953125,
        y = 285.53472900391,
        code = "6191"
    },
    {
        x = -873.49456787109,
        y = 340.39581298828,
        code = "6192"
    },
    {
        x = -945.36529541016,
        y = 389.28802490234,
        code = "6193"
    },
    {
        x = -933.15216064453,
        y = 473.7096862793,
        code = "6194"
    },
    {
        x = -980.72039794922,
        y = 433.56103515625,
        code = "6195"
    },
    {
        x = -951.53369140625,
        y = 509.10546875,
        code = "6196"
    },
    {
        x = -997.88922119141,
        y = 468.37091064453,
        code = "6197"
    },
    {
        x = -1015.9061889648,
        y = 521.47497558594,
        code = "6198"
    },
    {
        x = -1069.9627685547,
        y = 478.95004272461,
        code = "6199"
    },
    {
        x = -1041.3735351563,
        y = 419.33206176758,
        code = "6200"
    },
    {
        x = -1041.6975097656,
        y = 368.53604125977,
        code = "6201"
    },
    {
        x = -962.31048583984,
        y = 326.0,
        code = "6202"
    },
    {
        x = -1037.6130371094,
        y = 308.8818359375,
        code = "6203"
    },
    {
        x = -1112.3223876953,
        y = 419.82232666016,
        code = "6204"
    },
    {
        x = -1133.8972167969,
        y = 487.09161376953,
        code = "6205"
    },
    {
        x = -1164.3012695313,
        y = 446.32086181641,
        code = "6206"
    },
    {
        x = -617.99291992188,
        y = -1779.3375244141,
        code = "9000"
    },
    {
        x = -557.49957275391,
        y = -1797.0583496094,
        code = "9001"
    },
    {
        x = -512.93701171875,
        y = -1739.8428955078,
        code = "9002"
    },
    {
        x = -455.40063476563,
        y = -1752.8360595703,
        code = "9003"
    },
    {
        x = -442.17102050781,
        y = -1722.7446289063,
        code = "9004"
    },
    {
        x = -425.97006225586,
        y = -1691.4652099609,
        code = "9005"
    },
    {
        x = -325.95092773438,
        y = -1964.2082519531,
        code = "9006"
    },
    {
        x = -82.513252258301,
        y = -2016.1943359375,
        code = "9007"
    },
    {
        x = -111.77169799805,
        y = -2131.8942871094,
        code = "9008"
    },
    {
        x = -401.33639526367,
        y = -2141.3444824219,
        code = "9009"
    },
    {
        x = -581.68414306641,
        y = -2153.1555175781,
        code = "9010"
    },
    {
        x = -508.21328735352,
        y = -2211.6374511719,
        code = "9011"
    },
    {
        x = -432.40249633789,
        y = -2189.2194824219,
        code = "9012"
    },
    {
        x = -354.24099731445,
        y = -2189.8400878906,
        code = "9013"
    },
    {
        x = -284.30514526367,
        y = -2220.5444335938,
        code = "9014"
    },
    {
        x = -223.84916687012,
        y = -2240.029296875,
        code = "9015"
    },
    {
        x = -110.22423553467,
        y = -2227.6540527344,
        code = "9016"
    },
    {
        x = -13.152498245239,
        y = -2228.2902832031,
        code = "9017"
    },
    {
        x = -79.018424987793,
        y = -2191.7026367188,
        code = "9018"
    },
    {
        x = -10.2855052948,
        y = -2171.6804199219,
        code = "9019"
    },
    {
        x = 125.16636657715,
        y = -2105.5888671875,
        code = "9020"
    },
    {
        x = 125.44242095947,
        y = -2155.1833496094,
        code = "9021"
    },
    {
        x = 189.44230651855,
        y = -2152.2485351563,
        code = "9022"
    },
    {
        x = 134.2064666748,
        y = -2217.1804199219,
        code = "9023"
    },
    {
        x = 135.67269897461,
        y = -2261.470703125,
        code = "9024"
    },
    {
        x = 219.17179870605,
        y = -2221.9514160156,
        code = "9025"
    },
    {
        x = 299.72015380859,
        y = -2211.375,
        code = "9026"
    },
    {
        x = 267.52749633789,
        y = -2170.0803222656,
        code = "9027"
    },
    {
        x = -366.77319335938,
        y = -1601.0847167969,
        code = "9028"
    },
    {
        x = -351.75268554688,
        y = -1568.6346435547,
        code = "9029"
    },
    {
        x = -329.61773681641,
        y = -1542.0874023438,
        code = "9030"
    },
    {
        x = -317.55230712891,
        y = -1515.5374755859,
        code = "9031"
    },
    {
        x = -314.94671630859,
        y = -1491.3485107422,
        code = "9032"
    },
    {
        x = -314.65774536133,
        y = -1465.9680175781,
        code = "9033"
    },
    {
        x = -314.99819946289,
        y = -1401.6596679688,
        code = "9034"
    },
    {
        x = -318.24963378906,
        y = -1349.7554931641,
        code = "9035"
    },
    {
        x = -315.59759521484,
        y = -1301.3970947266,
        code = "9036"
    },
    {
        x = -222.04414367676,
        y = -1279.5596923828,
        code = "9037"
    },
    {
        x = -221.16809082031,
        y = -1332.1346435547,
        code = "9038"
    },
    {
        x = -225.03984069824,
        y = -1369.3374023438,
        code = "9039"
    },
    {
        x = -223.5772857666,
        y = -1394.7319335938,
        code = "9040"
    },
    {
        x = -143.6206817627,
        y = -1279.6457519531,
        code = "9041"
    },
    {
        x = -144.53955078125,
        y = -1332.1846923828,
        code = "9042"
    },
    {
        x = -58.668151855469,
        y = -1296.7834472656,
        code = "9043"
    },
    {
        x = -54.275856018066,
        y = -1341.6610107422,
        code = "9044"
    },
    {
        x = 2.6582078933716,
        y = -1293.2971191406,
        code = "9045"
    },
    {
        x = 25.372587203979,
        y = -1341.7027587891,
        code = "9046"
    },
    {
        x = 118.90602874756,
        y = -1300.4305419922,
        code = "9047"
    },
    {
        x = 139.26152038574,
        y = -1345.3110351563,
        code = "9048"
    },
    {
        x = 169.05590820313,
        y = -1313.4749755859,
        code = "9049"
    },
    {
        x = 182.32823181152,
        y = -1281.0345458984,
        code = "9050"
    },
    {
        x = 269.36267089844,
        y = -1264.5220947266,
        code = "9051"
    },
    {
        x = 328.66967773438,
        y = -1277.5358886719,
        code = "9052"
    },
    {
        x = 400.36538696289,
        y = -1320.0499267578,
        code = "9053"
    },
    {
        x = 467.93350219727,
        y = -1294.66796875,
        code = "9054"
    },
    {
        x = 461.69897460938,
        y = -1327.1652832031,
        code = "9055"
    },
    {
        x = 437.15036010742,
        y = -1358.4846191406,
        code = "9056"
    },
    {
        x = 456.33099365234,
        y = -1382.1110839844,
        code = "9057"
    },
    {
        x = 497.3212890625,
        y = -1406.9416503906,
        code = "9058"
    },
    {
        x = 497.59185791016,
        y = -1353.8249511719,
        code = "9059"
    },
    {
        x = 486.0364074707,
        y = -1468.3637695313,
        code = "9060"
    },
    {
        x = 561.10925292969,
        y = -1605.8107910156,
        code = "9061"
    },
    {
        x = 532.02807617188,
        y = -1641.95703125,
        code = "9062"
    },
    {
        x = 454.37530517578,
        y = -1575.2985839844,
        code = "9063"
    },
    {
        x = 475.89196777344,
        y = -1511.5500488281,
        code = "9064"
    },
    {
        x = 401.17672729492,
        y = -1529.8985595703,
        code = "9065"
    },
    {
        x = 363.94625854492,
        y = -1456.7110595703,
        code = "9066"
    },
    {
        x = 397.12634277344,
        y = -1431.9426269531,
        code = "9067"
    },
    {
        x = 330.79077148438,
        y = -1417.8332519531,
        code = "9068"
    },
    {
        x = 352.29205322266,
        y = -1384.2041015625,
        code = "9069"
    },
    {
        x = 264.00042724609,
        y = -1344.7014160156,
        code = "9070"
    },
    {
        x = 237.13723754883,
        y = -1387.8402099609,
        code = "9071"
    },
    {
        x = 93.363952636719,
        y = -1409.0999755859,
        code = "9072"
    },
    {
        x = 57.044925689697,
        y = -1454.5513916016,
        code = "9073"
    },
    {
        x = 20.694875717163,
        y = -1403.2456054688,
        code = "9074"
    },
    {
        x = 10.90746307373,
        y = -1437.4860839844,
        code = "9075"
    },
    {
        x = -40.752319335938,
        y = -1401.4930419922,
        code = "9076"
    },
    {
        x = -52.313407897949,
        y = -1441.0485839844,
        code = "9077"
    },
    {
        x = -113.44661712646,
        y = -1419.9624023438,
        code = "9078"
    },
    {
        x = -116.69929504395,
        y = -1468.9930419922,
        code = "9079"
    },
    {
        x = -155.96124267578,
        y = -1441.2569580078,
        code = "9080"
    },
    {
        x = -231.85336303711,
        y = -1510.3624267578,
        code = "9081"
    },
    {
        x = -170.21907043457,
        y = -1542.2749023438,
        code = "9082"
    },
    {
        x = -200.65257263184,
        y = -1574.7651367188,
        code = "9083"
    },
    {
        x = -214.57510375977,
        y = -1620.2512207031,
        code = "9084"
    },
    {
        x = -215.48867797852,
        y = -1674.0151367188,
        code = "9085"
    },
    {
        x = -187.46504211426,
        y = -1731.8972167969,
        code = "9086"
    },
    {
        x = -118.73623657227,
        y = -1580.1986083984,
        code = "9087"
    },
    {
        x = -147.97245788574,
        y = -1617.9775390625,
        code = "9088"
    },
    {
        x = -82.77734375,
        y = -1615.6389160156,
        code = "9089"
    },
    {
        x = -107.89018249512,
        y = -1649.8861083984,
        code = "9090"
    },
    {
        x = -130.62887573242,
        y = -1685.9069824219,
        code = "9091"
    },
    {
        x = -16.434553146362,
        y = -1670.6027832031,
        code = "9092"
    },
    {
        x = -102.92967224121,
        y = -1804.6430664063,
        code = "9093"
    },
    {
        x = -52.484455108643,
        y = -1760.3791503906,
        code = "9094"
    },
    {
        x = -38.371166229248,
        y = -1865.0164794922,
        code = "9095"
    },
    {
        x = -27.483112335205,
        y = -1783.0012207031,
        code = "9096"
    },
    {
        x = -17.173496246338,
        y = -1886.9387207031,
        code = "9097"
    },
    {
        x = 3.1609797477722,
        y = -1805.4915771484,
        code = "9098"
    },
    {
        x = 9.3448152542114,
        y = -1910.5693359375,
        code = "9099"
    },
    {
        x = 27.890850067139,
        y = -1832.0930175781,
        code = "9100"
    },
    {
        x = 47.030918121338,
        y = -1930.6762695313,
        code = "9101"
    },
    {
        x = 59.687953948975,
        y = -1859.2763671875,
        code = "9102"
    },
    {
        x = 85.914276123047,
        y = -1978.5360107422,
        code = "9103"
    },
    {
        x = 108.62252044678,
        y = -2008.6540527344,
        code = "9104"
    },
    {
        x = 139.58644104004,
        y = -1971.5124511719,
        code = "9105"
    },
    {
        x = 154.00888061523,
        y = -1946.7583007813,
        code = "9106"
    },
    {
        x = 137.76422119141,
        y = -1922.5985107422,
        code = "9107"
    },
    {
        x = 109.70868682861,
        y = -1900.1694335938,
        code = "9108"
    },
    {
        x = 86.381195068359,
        y = -1822.8734130859,
        code = "9109"
    },
    {
        x = 20.531059265137,
        y = -1737.8999023438,
        code = "9110"
    },
    {
        x = 125.27146148682,
        y = -1781.5804443359,
        code = "9111"
    },
    {
        x = 160.95896911621,
        y = -1860.1069335938,
        code = "9112"
    },
    {
        x = 205.51319885254,
        y = -1877.2679443359,
        code = "9113"
    },
    {
        x = 188.67405700684,
        y = -1832.4387207031,
        code = "9114"
    },
    {
        x = 270.400390625,
        y = -1812.3804931641,
        code = "9115"
    },
    {
        x = 296.07427978516,
        y = -1784.06640625,
        code = "9116"
    },
    {
        x = 321.7243347168,
        y = -1755.7664794922,
        code = "9117"
    },
    {
        x = 287.75616455078,
        y = -1728.6472167969,
        code = "9118"
    },
    {
        x = 254.39649963379,
        y = -1755.8026123047,
        code = "9119"
    },
    {
        x = 232.21168518066,
        y = -1778.2803955078,
        code = "9120"
    },
    {
        x = 179.36712646484,
        y = -1731.6680908203,
        code = "9121"
    },
    {
        x = 213.28810119629,
        y = -1700.4151611328,
        code = "9122"
    },
    {
        x = 236.56298828125,
        y = -1672.70703125,
        code = "9123"
    },
    {
        x = 194.93222045898,
        y = -1640.8748779297,
        code = "9124"
    },
    {
        x = 150.92175292969,
        y = -1654.4763183594,
        code = "9125"
    },
    {
        x = 115.18550872803,
        y = -1679.8818359375,
        code = "9126"
    },
    {
        x = 139.05323791504,
        y = -1704.1013183594,
        code = "9127"
    },
    {
        x = 177.12002563477,
        y = -1681.1290283203,
        code = "9128"
    },
    {
        x = 124.26740264893,
        y = -1600.2818603516,
        code = "9129"
    },
    {
        x = 92.077140808105,
        y = -1578.4597167969,
        code = "9130"
    },
    {
        x = 69.900650024414,
        y = -1556.0500488281,
        code = "9131"
    },
    {
        x = 43.629463195801,
        y = -1594.4680175781,
        code = "9132"
    },
    {
        x = -32.327224731445,
        y = -1556.0760498047,
        code = "9133"
    },
    {
        x = -62.70182800293,
        y = -1518.9624023438,
        code = "9134"
    },
    {
        x = -23.499725341797,
        y = -1489.4859619141,
        code = "9135"
    },
    {
        x = 12.798816680908,
        y = -1521.9652099609,
        code = "9136"
    },
    {
        x = 112.20829772949,
        y = -1510.1943359375,
        code = "9137"
    },
    {
        x = 141.41571044922,
        y = -1531.4499511719,
        code = "9138"
    },
    {
        x = 172.38650512695,
        y = -1560.9638671875,
        code = "9139"
    },
    {
        x = 213.37115478516,
        y = -1538.5693359375,
        code = "9140"
    },
    {
        x = 181.76721191406,
        y = -1504.3637695313,
        code = "9141"
    },
    {
        x = 153.11860656738,
        y = -1473.7055664063,
        code = "9142"
    },
    {
        x = 181.72525024414,
        y = -1446.0069580078,
        code = "9143"
    },
    {
        x = 222.1319732666,
        y = -1474.9735107422,
        code = "9144"
    },
    {
        x = 257.80902099609,
        y = -1508.0555419922,
        code = "9145"
    },
    {
        x = 302.36294555664,
        y = -1466.7805175781,
        code = "9146"
    },
    {
        x = 327.43359375,
        y = -1572.4595947266,
        code = "9147"
    },
    {
        x = 376.68545532227,
        y = -1613.8193359375,
        code = "9148"
    },
    {
        x = 264.19937133789,
        y = -1599.6833496094,
        code = "9149"
    },
    {
        x = 296.95776367188,
        y = -1631.5750732422,
        code = "9150"
    },
    {
        x = 336.20071411133,
        y = -1661.7042236328,
        code = "9151"
    },
    {
        x = 371.90850830078,
        y = -1688.9027099609,
        code = "9152"
    },
    {
        x = 408.19897460938,
        y = -1652.3526611328,
        code = "9153"
    },
    {
        x = 482.81744384766,
        y = -1695.4899902344,
        code = "9154"
    },
    {
        x = 444.13436889648,
        y = -1715.5695800781,
        code = "9155"
    },
    {
        x = 415.75253295898,
        y = -1750.6276855469,
        code = "9156"
    },
    {
        x = 381.80648803711,
        y = -1806.7263183594,
        code = "9157"
    },
    {
        x = 359.66192626953,
        y = -1832.7221679688,
        code = "9158"
    },
    {
        x = 337.51217651367,
        y = -1857.5415039063,
        code = "9159"
    },
    {
        x = 283.48712158203,
        y = -1913.0360107422,
        code = "9160"
    },
    {
        x = 257.18014526367,
        y = -1937.8416748047,
        code = "9161"
    },
    {
        x = 239.14413452148,
        y = -1966.7734375,
        code = "9162"
    },
    {
        x = 216.37110900879,
        y = -1992.1818847656,
        code = "9163"
    },
    {
        x = 196.4766998291,
        y = -2023.4451904297,
        code = "9164"
    },
    {
        x = 234.02917480469,
        y = -2044.75,
        code = "9165"
    },
    {
        x = 251.40965270996,
        y = -2019.3680419922,
        code = "9166"
    },
    {
        x = 277.07366943359,
        y = -1992.8375244141,
        code = "9167"
    },
    {
        x = 296.23071289063,
        y = -1963.3359375,
        code = "9168"
    },
    {
        x = 311.83898925781,
        y = -1937.9681396484,
        code = "9169"
    },
    {
        x = 362.85647583008,
        y = -1890.7777099609,
        code = "9170"
    },
    {
        x = 393.24688720703,
        y = -1865.4180908203,
        code = "9171"
    },
    {
        x = 421.23541259766,
        y = -1838.8874511719,
        code = "9172"
    },
    {
        x = 463.40255737305,
        y = -1775.1500244141,
        code = "9173"
    },
    {
        x = 464.87399291992,
        y = -1739.7834472656,
        code = "9174"
    },
    {
        x = 571.39288330078,
        y = -1684.9041748047,
        code = "9175"
    },
    {
        x = 543.89892578125,
        y = -1736.8942871094,
        code = "9176"
    },
    {
        x = 541.19067382813,
        y = -1762.2819824219,
        code = "9177"
    },
    {
        x = 542.03228759766,
        y = -1794.7651367188,
        code = "9178"
    },
    {
        x = 526.35394287109,
        y = -1823.7244873047,
        code = "9179"
    },
    {
        x = 530.18414306641,
        y = -1853.2639160156,
        code = "9180"
    },
    {
        x = 466.10235595703,
        y = -1886.9458007813,
        code = "9181"
    },
    {
        x = 432.15661621094,
        y = -1916.4638671875,
        code = "9182"
    },
    {
        x = 352.16525268555,
        y = -1992.0555419922,
        code = "9183"
    },
    {
        x = 296.36557006836,
        y = -2062.3430175781,
        code = "9184"
    },
    {
        x = 329.69763183594,
        y = -2095.4055175781,
        code = "9185"
    },
    {
        x = 431.13494873047,
        y = -2068.9138183594,
        code = "9186"
    },
    {
        x = 476.84338378906,
        y = -1957.9775390625,
        code = "9187"
    },
    {
        x = 524.31469726563,
        y = -1937.3402099609,
        code = "9188"
    },
    {
        x = 568.86346435547,
        y = -1911.3776855469,
        code = "9189"
    },
    {
        x = 601.60778808594,
        y = -1886.6081542969,
        code = "9190"
    },
    {
        x = 600.12127685547,
        y = -1936.2330322266,
        code = "9191"
    },
    {
        x = 569.69812011719,
        y = -1959.2707519531,
        code = "9192"
    },
    {
        x = 470.78228759766,
        y = -1987.6180419922,
        code = "9193"
    },
    {
        x = 548.95880126953,
        y = -1988.240234375,
        code = "9194"
    },
    {
        x = 509.10345458984,
        y = -2015.9930419922,
        code = "9195"
    },
    {
        x = 433.83679199219,
        y = -2069.7150878906,
        code = "9196"
    },
    {
        x = 384.50933837891,
        y = -2129.9582519531,
        code = "9197"
    },
    {
        x = 404.27166748047,
        y = -2222.0832519531,
        code = "9198"
    },
    {
        x = 470.06311035156,
        y = -2186.6831054688,
        code = "9199"
    },
    {
        x = 488.64047241211,
        y = -2285.2763671875,
        code = "9200"
    },
    {
        x = 550.28009033203,
        y = -2390.9594726563,
        code = "9201"
    },
    {
        x = 551.72241210938,
        y = -2349.0900878906,
        code = "9202"
    },
    {
        x = 553.7626953125,
        y = -2314.2734375,
        code = "9203"
    },
    {
        x = 551.09069824219,
        y = -2248.7790527344,
        code = "9204"
    },
    {
        x = 552.52258300781,
        y = -2219.2861328125,
        code = "9205"
    },
    {
        x = 560.46600341797,
        y = -2189.7861328125,
        code = "9206"
    },
    {
        x = 558.97125244141,
        y = -2160.2861328125,
        code = "9207"
    },
    {
        x = 559.83239746094,
        y = -2131.3762207031,
        code = "9208"
    },
    {
        x = 557.73120117188,
        y = -2103.06640625,
        code = "9209"
    },
    {
        x = 675.45660400391,
        y = -2450.7734375,
        code = "9210"
    },
    {
        x = 681.64501953125,
        y = -2418.3347167969,
        code = "9211"
    },
    {
        x = 686.61383056641,
        y = -2390.6101074219,
        code = "9212"
    },
    {
        x = 687.48236083984,
        y = -2362.31640625,
        code = "9213"
    },
    {
        x = 690.10327148438,
        y = -2331.0654296875,
        code = "9214"
    },
    {
        x = 698.06634521484,
        y = -2294.5026855469,
        code = "9215"
    },
    {
        x = 698.34210205078,
        y = -2269.16796875,
        code = "9216"
    },
    {
        x = 699.18249511719,
        y = -2238.5056152344,
        code = "9217"
    },
    {
        x = 703.57458496094,
        y = -2207.85546875,
        code = "9218"
    },
    {
        x = 703.25238037109,
        y = -2178.9763183594,
        code = "9219"
    },
    {
        x = 704.72296142578,
        y = -2150.6665039063,
        code = "9220"
    },
    {
        x = 706.17254638672,
        y = -2125.3178710938,
        code = "9221"
    },
    {
        x = 709.99371337891,
        y = -2094.5502929688,
        code = "9222"
    },
    {
        x = 717.91540527344,
        y = -2035.6749267578,
        code = "9223"
    },
    {
        x = 724.09515380859,
        y = -2005.595703125,
        code = "9224"
    },
    {
        x = 726.11364746094,
        y = -1980.8083496094,
        code = "9225"
    },
    {
        x = 731.1142578125,
        y = -1946.6137695313,
        code = "9226"
    },
    {
        x = 733.75372314453,
        y = -1918.3166503906,
        code = "9227"
    },
    {
        x = 742.89678955078,
        y = -1889.4262695313,
        code = "9228"
    },
    {
        x = 751.99627685547,
        y = -1860.5263671875,
        code = "9229"
    },
    {
        x = 757.55535888672,
        y = -1835.16796875,
        code = "9230"
    },
    {
        x = 766.69635009766,
        y = -1808.6374511719,
        code = "9231"
    },
    {
        x = 766.94219970703,
        y = -1780.9069824219,
        code = "9232"
    },
    {
        x = 779.58880615234,
        y = -1710.7069091797,
        code = "9233"
    },
    {
        x = 782.20367431641,
        y = -1682.4166259766,
        code = "9234"
    },
    {
        x = 793.11779785156,
        y = -1654.1166992188,
        code = "9235"
    },
    {
        x = 794.57348632813,
        y = -1621.0943603516,
        code = "9236"
    },
    {
        x = 800.15460205078,
        y = -1594.5374755859,
        code = "9237"
    },
    {
        x = 769.15734863281,
        y = -1517.2236328125,
        code = "9238"
    },
    {
        x = 757.63647460938,
        y = -1492.4582519531,
        code = "9239"
    },
    {
        x = 750.80926513672,
        y = -1464.7569580078,
        code = "9240"
    },
    {
        x = 759.35656738281,
        y = -1407.5430908203,
        code = "9241"
    },
    {
        x = 760.82312011719,
        y = -1376.2651367188,
        code = "9242"
    },
    {
        x = 756.37023925781,
        y = -1330.2581787109,
        code = "9243"
    },
    {
        x = 758.41387939453,
        y = -1304.3277587891,
        code = "9244"
    },
    {
        x = 760.4638671875,
        y = -1271.2944335938,
        code = "9245"
    },
    {
        x = 841.01965332031,
        y = -1301.9943847656,
        code = "9246"
    },
    {
        x = 900.31994628906,
        y = -1251.2360839844,
        code = "9247"
    },
    {
        x = 962.57122802734,
        y = -1268.3680419922,
        code = "9248"
    },
    {
        x = 916.81060791016,
        y = -1304.9971923828,
        code = "9249"
    },
    {
        x = 905.87719726563,
        y = -1339.2360839844,
        code = "9250"
    },
    {
        x = 869.23614501953,
        y = -1366.6544189453,
        code = "9251"
    },
    {
        x = 846.77093505859,
        y = -1394.1931152344,
        code = "9252"
    },
    {
        x = 930.86163330078,
        y = -1485.1027832031,
        code = "9253"
    },
    {
        x = 901.62854003906,
        y = -1528.8305664063,
        code = "9254"
    },
    {
        x = 932.58679199219,
        y = -1561.9053955078,
        code = "9255"
    },
    {
        x = 898.01599121094,
        y = -1591.4638671875,
        code = "9256"
    },
    {
        x = 913.63989257813,
        y = -1631.0485839844,
        code = "9257"
    },
    {
        x = 908.58026123047,
        y = -1680.0430908203,
        code = "9258"
    },
    {
        x = 908.25177001953,
        y = -1726.0915527344,
        code = "9259"
    },
    {
        x = 914.44543457031,
        y = -1796.9332275391,
        code = "9260"
    },
    {
        x = 875.14385986328,
        y = -1819.970703125,
        code = "9261"
    },
    {
        x = 913.17010498047,
        y = -1844.7916259766,
        code = "9262"
    },
    {
        x = 870.888671875,
        y = -1868.0417480469,
        code = "9263"
    },
    {
        x = 911.90606689453,
        y = -1888.6846923828,
        code = "9264"
    },
    {
        x = 856.70599365234,
        y = -1910.9805908203,
        code = "9265"
    },
    {
        x = 910.48345947266,
        y = -1934.7833251953,
        code = "9266"
    },
    {
        x = 849.00329589844,
        y = -1950.0068359375,
        code = "9267"
    },
    {
        x = 903.59759521484,
        y = -1964.8068847656,
        code = "9268"
    },
    {
        x = 842.453125,
        y = -1985.509765625,
        code = "9269"
    },
    {
        x = 900.58935546875,
        y = -2003.2583007813,
        code = "9270"
    },
    {
        x = 842.40466308594,
        y = -2021.5987548828,
        code = "9271"
    },
    {
        x = 896.99774169922,
        y = -2044.6206054688,
        code = "9272"
    },
    {
        x = 829.95080566406,
        y = -2106.62890625,
        code = "9273"
    },
    {
        x = 890.45043945313,
        y = -2134.9833984375,
        code = "9274"
    },
    {
        x = 827.58190917969,
        y = -2155.8142089844,
        code = "9275"
    },
    {
        x = 884.50866699219,
        y = -2178.1303710938,
        code = "9276"
    },
    {
        x = 825.17401123047,
        y = -2192.6745605469,
        code = "9277"
    },
    {
        x = 880.33807373047,
        y = -2221.8735351563,
        code = "9278"
    },
    {
        x = 817.43304443359,
        y = -2269.1223144531,
        code = "9279"
    },
    {
        x = 878.49090576172,
        y = -2281.5456542969,
        code = "9280"
    },
    {
        x = 809.67956542969,
        y = -2294.5361328125,
        code = "9281"
    },
    {
        x = 874.87359619141,
        y = -2310.4873046875,
        code = "9282"
    },
    {
        x = 813.75372314453,
        y = -2327.0275878906,
        code = "9283"
    },
    {
        x = 863.62548828125,
        y = -2348.8903808594,
        code = "9284"
    },
    {
        x = 805.45458984375,
        y = -2355.9831542969,
        code = "9285"
    },
    {
        x = 860.04772949219,
        y = -2377.25,
        code = "9286"
    },
    {
        x = 806.87121582031,
        y = -2393.8037109375,
        code = "9287"
    },
    {
        x = 801.77374267578,
        y = -2427.5217285156,
        code = "9288"
    },
    {
        x = 950.17541503906,
        y = -2436.9929199219,
        code = "9289"
    },
    {
        x = 994.12274169922,
        y = -2416.9306640625,
        code = "9290"
    },
    {
        x = 961.46490478516,
        y = -2391.5678710938,
        code = "9291"
    },
    {
        x = 1003.6517944336,
        y = -2362.6762695313,
        code = "9292"
    },
    {
        x = 964.39349365234,
        y = -2337.3178710938,
        code = "9293"
    },
    {
        x = 1010.0933837891,
        y = -2314.3291015625,
        code = "9294"
    },
    {
        x = 964.29998779297,
        y = -2289.5583496094,
        code = "9295"
    },
    {
        x = 1013.585144043,
        y = -2265.3984375,
        code = "9296"
    },
    {
        x = 964.84912109375,
        y = -2245.3303222656,
        code = "9297"
    },
    {
        x = 1012.9049682617,
        y = -2221.7387695313,
        code = "9298"
    },
    {
        x = 979.58270263672,
        y = -2181.4865722656,
        code = "9299"
    },
    {
        x = 1020.4531860352,
        y = -2158.0944824219,
        code = "9300"
    },
    {
        x = 979.57885742188,
        y = -2133.8581542969,
        code = "9301"
    },
    {
        x = 1023.3827514648,
        y = -2115.6013183594,
        code = "9302"
    },
    {
        x = 985.86437988281,
        y = -2051.3095703125,
        code = "9303"
    },
    {
        x = 1059.4138183594,
        y = -2050.6486816406,
        code = "9304"
    },
    {
        x = 1133.3771972656,
        y = -2048.4389648438,
        code = "9305"
    },
    {
        x = 1099.4060058594,
        y = -2003.5888671875,
        code = "9306"
    },
    {
        x = 992.85186767578,
        y = -2015.4055175781,
        code = "9307"
    },
    {
        x = 1004.9475708008,
        y = -1976.4914550781,
        code = "9308"
    },
    {
        x = 1080.1566162109,
        y = -1966.4652099609,
        code = "9309"
    },
    {
        x = 1001.9356689453,
        y = -1938.7569580078,
        code = "9310"
    },
    {
        x = 1068.3026123047,
        y = -1934.0775146484,
        code = "9311"
    },
    {
        x = 1003.0715942383,
        y = -1870.3498535156,
        code = "9312"
    },
    {
        x = 1054.6960449219,
        y = -1853.2316894531,
        code = "9313"
    },
    {
        x = 998.73413085938,
        y = -1835.5299072266,
        code = "9314"
    },
    {
        x = 1054.0369873047,
        y = -1817.8415527344,
        code = "9315"
    },
    {
        x = 996.44519042969,
        y = -1804.2734375,
        code = "9316"
    },
    {
        x = 1002.0046386719,
        y = -1738.1887207031,
        code = "9317"
    },
    {
        x = 1007.0152587891,
        y = -1692.7485351563,
        code = "9318"
    },
    {
        x = 1009.063659668,
        y = -1639.0346679688,
        code = "9319"
    },
    {
        x = 1007.5717163086,
        y = -1587.1055908203,
        code = "9320"
    },
    {
        x = 1007.8425292969,
        y = -1538.1569824219,
        code = "9321"
    },
    {
        x = 1009.8638305664,
        y = -1490.3873291016,
        code = "9322"
    },
    {
        x = 991.84326171875,
        y = -1392.4138183594,
        code = "9323"
    },
    {
        x = 1206.3765869141,
        y = -1256.6513671875,
        code = "9324"
    },
    {
        x = 1151.7459716797,
        y = -1287.9846191406,
        code = "9325"
    },
    {
        x = 1204.5270996094,
        y = -1311.0207519531,
        code = "9326"
    },
    {
        x = 1149.8963623047,
        y = -1334.0708007813,
        code = "9327"
    },
    {
        x = 1200.9064941406,
        y = -1357.1208496094,
        code = "9328"
    },
    {
        x = 1147.4772949219,
        y = -1384.3026123047,
        code = "9329"
    },
    {
        x = 1196.14453125,
        y = -1406.1903076172,
        code = "9330"
    },
    {
        x = 1140.3162841797,
        y = -1481.7553710938,
        code = "9331"
    },
    {
        x = 1221.4600830078,
        y = -1483.5708007813,
        code = "9332"
    },
    {
        x = 1153.2701416016,
        y = -1523.1486816406,
        code = "9333"
    },
    {
        x = 1230.2770996094,
        y = -1527.8721923828,
        code = "9334"
    },
    {
        x = 1164.4307861328,
        y = -1565.0875244141,
        code = "9335"
    },
    {
        x = 1237.6911621094,
        y = -1575.8647460938,
        code = "9336"
    },
    {
        x = 1162.5869140625,
        y = -1613.5277099609,
        code = "9337"
    },
    {
        x = 1262.0091552734,
        y = -1637.7512207031,
        code = "9338"
    },
    {
        x = 1227.4664306641,
        y = -1736.3762207031,
        code = "9339"
    },
    {
        x = 1288.5411376953,
        y = -1704.5250244141,
        code = "9340"
    },
    {
        x = 1351.3620605469,
        y = -1743.5083007813,
        code = "9341"
    },
    {
        x = 1282.580078125,
        y = -1772.4735107422,
        code = "9342"
    },
    {
        x = 1215.5510253906,
        y = -1794.3403320313,
        code = "9343"
    },
    {
        x = 1228.8289794922,
        y = -1861.0512695313,
        code = "9344"
    },
    {
        x = 1301.6967773438,
        y = -1830.4056396484,
        code = "9345"
    },
    {
        x = 1385.7624511719,
        y = -1801.5263671875,
        code = "9346"
    },
    {
        x = 1390.1739501953,
        y = -1865.3000488281,
        code = "9347"
    },
    {
        x = 1313.1165771484,
        y = -1870.0721435547,
        code = "9348"
    },
    {
        x = 1263.2192382813,
        y = -1922.0444335938,
        code = "9349"
    },
    {
        x = 1360.8887939453,
        y = -1945.6610107422,
        code = "9350"
    },
    {
        x = 1290.3082275391,
        y = -2001.7761230469,
        code = "9351"
    },
    {
        x = 1127.673828125,
        y = -2132.865234375,
        code = "9352"
    },
    {
        x = 1107.8725585938,
        y = -2171.2678222656,
        code = "9353"
    },
    {
        x = 1138.2448730469,
        y = -2210.8486328125,
        code = "9354"
    },
    {
        x = 1098.9436035156,
        y = -2242.7248535156,
        code = "9355"
    },
    {
        x = 1143.4632568359,
        y = -2276.9858398438,
        code = "9356"
    },
    {
        x = 1103.0340576172,
        y = -2302.9584960938,
        code = "9357"
    },
    {
        x = 1147.5634765625,
        y = -2335.4653320313,
        code = "9358"
    },
    {
        x = 1090.5855712891,
        y = -2360.8818359375,
        code = "9359"
    },
    {
        x = 1087.3000488281,
        y = -2401.6291503906,
        code = "9360"
    },
    {
        x = 1175.5441894531,
        y = -2396.927734375,
        code = "9361"
    },
    {
        x = 1205.8970947266,
        y = -2355.6303710938,
        code = "9362"
    },
    {
        x = 1227.3927001953,
        y = -2301.9345703125,
        code = "9363"
    },
    {
        x = 1199.8991699219,
        y = -2245.8735351563,
        code = "9364"
    },
    {
        x = 1180.0726318359,
        y = -2176.2470703125,
        code = "9365"
    },
    {
        x = 1306.0710449219,
        y = -2080.625,
        code = "9366"
    },
    {
        x = 1348.8416748047,
        y = -2168.0109863281,
        code = "9367"
    },
    {
        x = 1380.3765869141,
        y = -2258.9526367188,
        code = "9368"
    },
    {
        x = 1390.6770019531,
        y = -2358.1665039063,
        code = "9369"
    },
    {
        x = 1366.7409667969,
        y = -2466.8110351563,
        code = "9370"
    },
    {
        x = 1296.7493896484,
        y = -2558.3432617188,
        code = "9371"
    },
    {
        x = 1413.8663330078,
        y = -2606.1623535156,
        code = "9372"
    },
    {
        x = 1594.7663574219,
        y = -2508.2138671875,
        code = "9373"
    },
    {
        x = 1583.8277587891,
        y = -2363.6318359375,
        code = "9374"
    },
    {
        x = 1603.5710449219,
        y = -2279.240234375,
        code = "9375"
    },
    {
        x = 1614.4672851563,
        y = -2189.5275878906,
        code = "9376"
    },
    {
        x = 1540.9575195313,
        y = -2138.7861328125,
        code = "9377"
    },
    {
        x = 1599.6800537109,
        y = -2038.4526367188,
        code = "9378"
    },
    {
        x = 1484.8383789063,
        y = -1946.4165039063,
        code = "9379"
    },
    {
        x = 1661.1246337891,
        y = -1895.2449951172,
        code = "9380"
    },
    {
        x = 1486.3830566406,
        y = -1781.7891845703,
        code = "9381"
    },
    {
        x = 1592.4521484375,
        y = -1723.3624267578,
        code = "9382"
    },
    {
        x = 1699.5831298828,
        y = -1697.4276123047,
        code = "9383"
    },
    {
        x = 1725.2248535156,
        y = -1630.7484130859,
        code = "9384"
    },
    {
        x = 1454.5555419922,
        y = -1683.2845458984,
        code = "9385"
    },
    {
        x = 1714.5651855469,
        y = -1546.9458007813,
        code = "9386"
    },
    {
        x = 1733.7318115234,
        y = -1469.6234130859,
        code = "9387"
    },
    {
        x = 1584.0625,
        y = -1536.9415283203,
        code = "9388"
    },
    {
        x = 1781.4957275391,
        y = -1350.4221191406,
        code = "9389"
    },
    {
        x = 1938.7570800781,
        y = -1018.7138671875,
        code = "9390"
    },
    {
        x = -1021.8845825195,
        y = -1994.0374755859,
        code = "10000"
    },
    {
        x = -946.05133056641,
        y = -2059.5708007813,
        code = "10001"
    },
    {
        x = -846.64013671875,
        y = -2153.4541015625,
        code = "10002"
    },
    {
        x = -720.03704833984,
        y = -2267.4235839844,
        code = "10003"
    },
    {
        x = -567.19012451172,
        y = -2297.6831054688,
        code = "10005"
    },
    {
        x = -643.64276123047,
        y = -2397.4567871094,
        code = "10006"
    },
    {
        x = -710.05786132813,
        y = -2500.2082519531,
        code = "10007"
    },
    {
        x = -788.90386962891,
        y = -2397.5417480469,
        code = "10008"
    },
    {
        x = -778.62176513672,
        y = -2611.2302246094,
        code = "10009"
    },
    {
        x = -848.00964355469,
        y = -2760.0,
        code = "10010"
    },
    {
        x = -873.72888183594,
        y = -2863.2985839844,
        code = "10011"
    },
    {
        x = -949.60260009766,
        y = -3003.7858886719,
        code = "10012"
    },
    {
        x = -1184.2764892578,
        y = -3463.6401367188,
        code = "10013"
    },
    {
        x = -1284.3541259766,
        y = -3403.44140625,
        code = "10014"
    },
    {
        x = -1358.4816894531,
        y = -3354.45703125,
        code = "10015"
    },
    {
        x = -1407.7902832031,
        y = -3296.6528320313,
        code = "10016"
    },
    {
        x = -1471.8472900391,
        y = -3266.0051269531,
        code = "10017"
    },
    {
        x = -1573.0844726563,
        y = -3227.0913085938,
        code = "10018"
    },
    {
        x = -1573.0844726563,
        y = -3227.0913085938,
        code = "10019"
    },
    {
        x = -1930.2440185547,
        y = -3038.2138671875,
        code = "10020"
    },
    {
        x = -1804.8181152344,
        y = -2797.4165039063,
        code = "10021"
    },
    {
        x = -1332.3444824219,
        y = -2632.7375488281,
        code = "10022"
    },
    {
        x = -1237.0220947266,
        y = -2800.9790039063,
        code = "10023"
    },
    {
        x = -1070.2985839844,
        y = -2798.6389160156,
        code = "10024"
    },
    {
        x = -941.36663818359,
        y = -2652.2802734375,
        code = "10025"
    },
    {
        x = -1019.6137084961,
        y = -2617.4733886719,
        code = "10026"
    },
    {
        x = -1037.0651855469,
        y = -2457.5346679688,
        code = "10027"
    },
    {
        x = -1207.3972167969,
        y = -2458.1403808594,
        code = "10028"
    },
    {
        x = -1280.8916015625,
        y = -2363.7055664063,
        code = "10029"
    },
    {
        x = -1156.0582275391,
        y = -2324.7915039063,
        code = "10030"
    },
    {
        x = -1142.8206787109,
        y = -2122.3347167969,
        code = "10031"
    },
    {
        x = -1141.9665527344,
        y = -2022.0026855469,
        code = "10032"
    },
    {
        x = -1057.8874511719,
        y = -2146.0083007813,
        code = "10033"
    },
    {
        x = -1086.5305175781,
        y = -2231.6403808594,
        code = "10034"
    },
    {
        x = -984.72900390625,
        y = -2211.5805664063,
        code = "10035"
    },
    {
        x = -1057.0612792969,
        y = -2364.4816894531,
        code = "10036"
    },
    {
        x = -964.13317871094,
        y = -2296.6179199219,
        code = "10037"
    },
    {
        x = -903.05792236328,
        y = -2382.240234375,
        code = "10038"
    },
    {
        x = -917.56365966797,
        y = -2530.4096679688,
        code = "10039"
    },
    {
        x = -474.59829711914,
        y = -2845.0678710938,
        code = "10040"
    },
    {
        x = -504.41088867188,
        y = -2782.5302734375,
        code = "10041"
    },
    {
        x = -424.00668334961,
        y = -2731.7861328125,
        code = "10042"
    },
    {
        x = -459.76351928711,
        y = -2650.931640625,
        code = "10043"
    },
    {
        x = -352.66604614258,
        y = -2647.4084472656,
        code = "10044"
    },
    {
        x = -297.56530761719,
        y = -2684.6904296875,
        code = "10045"
    },
    {
        x = -209.89566040039,
        y = -2661.62890625,
        code = "10046"
    },
    {
        x = -236.75959777832,
        y = -2585.5043945313,
        code = "10047"
    },
    {
        x = -244.77053833008,
        y = -2511.7653808594,
        code = "10048"
    },
    {
        x = -301.76354980469,
        y = -2463.3969726563,
        code = "10049"
    },
    {
        x = -169.87484741211,
        y = -2423.2609863281,
        code = "10050"
    },
    {
        x = -145.40510559082,
        y = -2464.0290527344,
        code = "10051"
    },
    {
        x = -74.323204040527,
        y = -2423.9111328125,
        code = "10052"
    },
    {
        x = -114.78554534912,
        y = -2489.470703125,
        code = "10053"
    },
    {
        x = -12.978828430176,
        y = -2471.2014160156,
        code = "10054"
    },
    {
        x = 54.585052490234,
        y = -2498.4028320313,
        code = "10055"
    },
    {
        x = 56.023921966553,
        y = -2579.3178710938,
        code = "10056"
    },
    {
        x = -133.77590942383,
        y = -2585.8427734375,
        code = "10057"
    },
    {
        x = -124.0620880127,
        y = -2680.87890625,
        code = "10058"
    },
    {
        x = -47.660713195801,
        y = -2703.9208984375,
        code = "10059"
    },
    {
        x = 60.614250183105,
        y = -2704.5400390625,
        code = "10060"
    },
    {
        x = 151.79632568359,
        y = -2609.5153808594,
        code = "10061"
    },
    {
        x = 218.74485778809,
        y = -2508.0222167969,
        code = "10062"
    },
    {
        x = 216.63217163086,
        y = -2449.0222167969,
        code = "10063"
    },
    {
        x = 232.24067687988,
        y = -2581.2719726563,
        code = "10064"
    },
    {
        x = 319.8544921875,
        y = -2603.1403808594,
        code = "10065"
    },
    {
        x = 343.10870361328,
        y = -2727.7387695313,
        code = "10066"
    },
    {
        x = 342.80514526367,
        y = -2806.2565917969,
        code = "10067"
    },
    {
        x = 222.08653259277,
        y = -2809.841796875,
        code = "10068"
    },
    {
        x = 139.70875549316,
        y = -2845.6511230469,
        code = "10069"
    },
    {
        x = 140.58364868164,
        y = -2956.08203125,
        code = "10070"
    },
    {
        x = 142.61405944824,
        y = -3027.5231933594,
        code = "10071"
    },
    {
        x = 136.99057006836,
        y = -3082.4460449219,
        code = "10072"
    },
    {
        x = 134.88229370117,
        y = -3140.8874511719,
        code = "10073"
    },
    {
        x = 134.55319213867,
        y = -3196.9763183594,
        code = "10074"
    },
    {
        x = 137.20489501953,
        y = -3256.5334472656,
        code = "10075"
    },
    {
        x = 136.90292358398,
        y = -3309.1843261719,
        code = "10076"
    },
    {
        x = 231.04737854004,
        y = -3296.2138671875,
        code = "10077"
    },
    {
        x = 231.29327392578,
        y = -3237.2219238281,
        code = "10078"
    },
    {
        x = 233.31416320801,
        y = -3179.9929199219,
        code = "10079"
    },
    {
        x = 220.00987243652,
        y = -3124.4958496094,
        code = "10080"
    },
    {
        x = 253.93916320801,
        y = -3047.2236328125,
        code = "10081"
    },
    {
        x = 240.0265045166,
        y = -2994.1252441406,
        code = "10082"
    },
    {
        x = 253.2794342041,
        y = -2944.5668945313,
        code = "10083"
    },
    {
        x = 501.31994628906,
        y = -2587.4873046875,
        code = "10085"
    },
    {
        x = 501.59371948242,
        y = -2646.5278320313,
        code = "10086"
    },
    {
        x = 621.66955566406,
        y = -2626.48046875,
        code = "10087"
    },
    {
        x = 657.95031738281,
        y = -2702.6457519531,
        code = "10088"
    },
    {
        x = 557.25573730469,
        y = -2723.8996582031,
        code = "10089"
    },
    {
        x = 480.21716308594,
        y = -2771.1220703125,
        code = "10090"
    },
    {
        x = 548.96545410156,
        y = -2798.8928222656,
        code = "10091"
    },
    {
        x = 620.66687011719,
        y = -2840.8093261719,
        code = "10092"
    },
    {
        x = 486.93087768555,
        y = -2918.7470703125,
        code = "10093"
    },
    {
        x = 477.15866088867,
        y = -2961.25,
        code = "10094"
    },
    {
        x = 581.92266845703,
        y = -2960.0693359375,
        code = "10095"
    },
    {
        x = 475.35305786133,
        y = -3007.3217773438,
        code = "10096"
    },
    {
        x = 581.89324951172,
        y = -3002.6276855469,
        code = "10097"
    },
    {
        x = 473.53244018555,
        y = -3084.1081542969,
        code = "10098"
    },
    {
        x = 564.69610595703,
        y = -3063.4899902344,
        code = "10099"
    },
    {
        x = 549.59582519531,
        y = -3117.8054199219,
        code = "10100"
    },
    {
        x = 548.07312011719,
        y = -3252.4333496094,
        code = "10101"
    },
    {
        x = 761.43371582031,
        y = -3197.5541992188,
        code = "10102"
    },
    {
        x = 780.36627197266,
        y = -3267.2524414063,
        code = "10103"
    },
    {
        x = 858.76013183594,
        y = -3309.2094726563,
        code = "10104"
    },
    {
        x = 983.59204101563,
        y = -3308.0690917969,
        code = "10105"
    },
    {
        x = 1113.1137695313,
        y = -3305.1486816406,
        code = "10106"
    },
    {
        x = 1216.6917724609,
        y = -3325.2189941406,
        code = "10107"
    },
    {
        x = 1218.1235351563,
        y = -3249.6943359375,
        code = "10108"
    },
    {
        x = 1114.5041503906,
        y = -3259.1442871094,
        code = "10109"
    },
    {
        x = 983.85168457031,
        y = -3255.2136230469,
        code = "10110"
    },
    {
        x = 894.91137695313,
        y = -3256.23046875,
        code = "10111"
    },
    {
        x = 845.85693359375,
        y = -3202.8271484375,
        code = "10112"
    },
    {
        x = 937.34619140625,
        y = -3203.740234375,
        code = "10113"
    },
    {
        x = 1026.1749267578,
        y = -3202.5693359375,
        code = "10114"
    },
    {
        x = 1127.9708251953,
        y = -3201.4191894531,
        code = "10115"
    },
    {
        x = 1218.5554199219,
        y = -3197.3176269531,
        code = "10116"
    },
    {
        x = 1218.8428955078,
        y = -3125.3359375,
        code = "10117"
    },
    {
        x = 1130.5513916016,
        y = -3150.1416015625,
        code = "10118"
    },
    {
        x = 1029.3150634766,
        y = -3148.3669433594,
        code = "10119"
    },
    {
        x = 935.14862060547,
        y = -3147.8098144531,
        code = "10120"
    },
    {
        x = 845.08093261719,
        y = -3150.8015136719,
        code = "10121"
    },
    {
        x = 846.52368164063,
        y = -3091.5949707031,
        code = "10122"
    },
    {
        x = 937.10565185547,
        y = -3094.2111816406,
        code = "10123"
    },
    {
        x = 1029.4763183594,
        y = -3095.4301757813,
        code = "10124"
    },
    {
        x = 1127.7114257813,
        y = -3093.1330566406,
        code = "10125"
    },
    {
        x = 1141.5694580078,
        y = -3041.7458496094,
        code = "10126"
    },
    {
        x = 1032.0513916016,
        y = -3041.75,
        code = "10127"
    },
    {
        x = 936.71813964844,
        y = -3043.4118652344,
        code = "10128"
    },
    {
        x = 847.27087402344,
        y = -3042.9594726563,
        code = "10129"
    },
    {
        x = 796.18920898438,
        y = -2985.1528320313,
        code = "10130"
    },
    {
        x = 936.33923339844,
        y = -2988.7416992188,
        code = "10131"
    },
    {
        x = 1031.6276855469,
        y = -2989.3403320313,
        code = "10132"
    },
    {
        x = 1140.5041503906,
        y = -2988.7595214844,
        code = "10133"
    },
    {
        x = 1249.4041748047,
        y = -2968.1401367188,
        code = "10134"
    },
    {
        x = 1141.6721191406,
        y = -2930.9624023438,
        code = "10135"
    },
    {
        x = 1032.1513671875,
        y = -2929.2290039063,
        code = "10136"
    },
    {
        x = 936.22802734375,
        y = -2931.6108398438,
        code = "10137"
    },
    {
        x = 833.19458007813,
        y = -2920.4348144531,
        code = "10138"
    },
    {
        x = 867.67919921875,
        y = -2876.1791992188,
        code = "10139"
    },
    {
        x = 1049.1584472656,
        y = -2876.1999511719,
        code = "10140"
    },
    {
        x = 1644.1221923828,
        y = 6456.0561523438,
        code = "1000"
    },
    {
        x = 1538.3503417969,
        y = 6344.6381835938,
        code = "1001"
    },
    {
        x = 1579.3702392578,
        y = 6591.4409179688,
        code = "1002"
    },
    {
        x = 1409.5551757813,
        y = 6563.380859375,
        code = "1003"
    },
    {
        x = 525.22381591797,
        y = 6591.1264648438,
        code = "1004"
    },
    {
        x = 664.33813476563,
        y = 6472.9379882813,
        code = "1005"
    },
    {
        x = 529.42224121094,
        y = 6483.48828125,
        code = "1006"
    },
    {
        x = 529.42248535156,
        y = 6483.48828125,
        code = "1007"
    },
    {
        x = 264.91348266602,
        y = 6651.58203125,
        code = "1008"
    },
    {
        x = 350.6750793457,
        y = 6493.5786132813,
        code = "1009"
    },
    {
        x = 268.71212768555,
        y = 6608.3237304688,
        code = "1010"
    },
    {
        x = 251.9838104248,
        y = 6486.3271484375,
        code = "1011"
    },
    {
        x = 162.81225585938,
        y = 6609.9672851563,
        code = "1012"
    },
    {
        x = 159.21286010742,
        y = 6470.6127929688,
        code = "1013"
    },
    {
        x = 94.202827453613,
        y = 6532.0102539063,
        code = "1014"
    },
    {
        x = 123.64725494385,
        y = 6432.8974609375,
        code = "1015"
    },
    {
        x = 58.179302215576,
        y = 6489.2016601563,
        code = "1016"
    },
    {
        x = 94.797012329102,
        y = 6396.873046875,
        code = "1017"
    },
    {
        x = 17.470808029175,
        y = 6448.9428710938,
        code = "1018"
    },
    {
        x = 51.979454040527,
        y = 6359.1142578125,
        code = "1019"
    },
    {
        x = -23.21159362793,
        y = 6411.6162109375,
        code = "1020"
    },
    {
        x = 7.8913064002991,
        y = 6316.7319335938,
        code = "1021"
    },
    {
        x = -64.347145080566,
        y = 6370.0634765625,
        code = "1022"
    },
    {
        x = -39.561515808105,
        y = 6268.4052734375,
        code = "1023"
    },
    {
        x = -99.09156036377,
        y = 6333.6215820313,
        code = "1024"
    },
    {
        x = -82.781867980957,
        y = 6226.4506835938,
        code = "1025"
    },
    {
        x = -148.220703125,
        y = 6284.8950195313,
        code = "1026"
    },
    {
        x = -133.62596130371,
        y = 6179.8168945313,
        code = "1027"
    },
    {
        x = -190.1768951416,
        y = 6245.0219726563,
        code = "1028"
    },
    {
        x = -174.72891235352,
        y = 6134.8852539063,
        code = "1029"
    },
    {
        x = -230.4298248291,
        y = 6202.61328125,
        code = "1030"
    },
    {
        x = -217.51998901367,
        y = 6094.6030273438,
        code = "1031"
    },
    {
        x = -279.58258056641,
        y = 6155.5864257813,
        code = "1032"
    },
    {
        x = -267.09341430664,
        y = 6047.9760742188,
        code = "1033"
    },
    {
        x = -330.22689819336,
        y = 6108.1186523438,
        code = "1034"
    },
    {
        x = -307.57904052734,
        y = 6003.4912109375,
        code = "1035"
    },
    {
        x = -378.52648925781,
        y = 6057.66015625,
        code = "1036"
    },
    {
        x = -352.06726074219,
        y = 5955.1591796875,
        code = "1037"
    },
    {
        x = -469.18984985352,
        y = 6007.6665039063,
        code = "1038"
    },
    {
        x = -469.39916992188,
        y = 6099.9770507813,
        code = "1039"
    },
    {
        x = -392.09533691406,
        y = 6090.6328125,
        code = "1040"
    },
    {
        x = -433.38018798828,
        y = 6151.5864257813,
        code = "1041"
    },
    {
        x = -346.1640625,
        y = 6137.7934570313,
        code = "1042"
    },
    {
        x = -374.97473144531,
        y = 6208.701171875,
        code = "1043"
    },
    {
        x = -305.74212646484,
        y = 6179.0537109375,
        code = "1044"
    },
    {
        x = -310.18420410156,
        y = 6285.7768554688,
        code = "1045"
    },
    {
        x = -254.49468994141,
        y = 6231.5395507813,
        code = "1046"
    },
    {
        x = -275.02786254883,
        y = 6317.8974609375,
        code = "1047"
    },
    {
        x = -210.02728271484,
        y = 6272.1098632813,
        code = "1048"
    },
    {
        x = -242.01275634766,
        y = 6353.8388671875,
        code = "1049"
    },
    {
        x = -175.75666809082,
        y = 6312.71875,
        code = "1050"
    },
    {
        x = -196.32781982422,
        y = 6388.9331054688,
        code = "1051"
    },
    {
        x = -123.28033447266,
        y = 6359.677734375,
        code = "1052"
    },
    {
        x = -167.09519958496,
        y = 6425.7084960938,
        code = "1053"
    },
    {
        x = -85.186561584473,
        y = 6396.4775390625,
        code = "1054"
    },
    {
        x = -119.70399475098,
        y = 6479.458984375,
        code = "1055"
    },
    {
        x = -42.021728515625,
        y = 6441.3334960938,
        code = "1056"
    },
    {
        x = -76.130386352539,
        y = 6520.498046875,
        code = "1057"
    },
    {
        x = -4.3509998321533,
        y = 6476.8276367188,
        code = "1058"
    },
    {
        x = -37.633438110352,
        y = 6558.9624023438,
        code = "1059"
    },
    {
        x = 34.14892578125,
        y = 6519.5629882813,
        code = "1060"
    },
    {
        x = 12.325073242188,
        y = 6597.4770507813,
        code = "1061"
    },
    {
        x = 74.358093261719,
        y = 6555.9448242188,
        code = "1062"
    },
    {
        x = 86.009437561035,
        y = 6652.0385742188,
        code = "1063"
    },
    {
        x = 10.838283538818,
        y = 6674.4462890625,
        code = "1064"
    },
    {
        x = -58.855964660645,
        y = 6644.7534179688,
        code = "1065"
    },
    {
        x = -112.46115112305,
        y = 6602.3979492188,
        code = "1066"
    },
    {
        x = -165.63864135742,
        y = 6555.3393554688,
        code = "1067"
    },
    {
        x = -270.03433227539,
        y = 6632.380859375,
        code = "1068"
    },
    {
        x = -201.63911437988,
        y = 6511.2241210938,
        code = "1069"
    },
    {
        x = -234.45983886719,
        y = 6465.0366210938,
        code = "1070"
    },
    {
        x = -273.66256713867,
        y = 6420.53125,
        code = "1071"
    },
    {
        x = -334.03851318359,
        y = 6390.0073242188,
        code = "1072"
    },
    {
        x = -386.79467773438,
        y = 6351.9189453125,
        code = "1073"
    },
    {
        x = -429.35076904297,
        y = 6311.615234375,
        code = "1074"
    },
    {
        x = -451.35699462891,
        y = 6268.455078125,
        code = "1075"
    },
    {
        x = -452.24588012695,
        y = 6208.68359375,
        code = "1076"
    },
    {
        x = -625.66784667969,
        y = 6126.9111328125,
        code = "1077"
    },
    {
        x = -568.72412109375,
        y = 5962.5751953125,
        code = "1078"
    },
    {
        x = -663.3935546875,
        y = 5785.9438476563,
        code = "1079"
    },
    {
        x = -745.76141357422,
        y = 5593.6225585938,
        code = "1080"
    },
    {
        x = -549.91040039063,
        y = 5539.8134765625,
        code = "1081"
    },
    {
        x = -521.32379150391,
        y = 5301.9467773438,
        code = "1082"
    },
    {
        x = -866.71606445313,
        y = 5274.794921875,
        code = "1083"
    },
    {
        x = -933.44134521484,
        y = 5172.6826171875,
        code = "1084"
    },
    {
        x = -1107.71484375,
        y = 4918.1157226563,
        code = "1085"
    },
    {
        x = -475.41387939453,
        y = 4956.7563476563,
        code = "1086"
    },
    {
        x = 460.43829345703,
        y = 5615.6508789063,
        code = "1087"
    },
    {
        x = -110.91479492188,
        y = 4656.4223632813,
        code = "1088"
    },
    {
        x = -133.98173522949,
        y = 4332.919921875,
        code = "1089"
    },
    {
        x = -257.10409545898,
        y = 4196.37890625,
        code = "1090"
    },
    {
        x = -238.30830383301,
        y = 4471.0419921875,
        code = "1091"
    },
    {
        x = -371.33514404297,
        y = 4337.6025390625,
        code = "1092"
    },
    {
        x = -447.29046630859,
        y = 4500.8354492188,
        code = "1093"
    },
    {
        x = -605.73547363281,
        y = 4384.0766601563,
        code = "1094"
    },
    {
        x = -648.34130859375,
        y = 4479.708984375,
        code = "1095"
    },
    {
        x = -837.50177001953,
        y = 4377.8969726563,
        code = "1096"
    },
    {
        x = -845.03680419922,
        y = 4481.4077148438,
        code = "1097"
    },
    {
        x = -1145.6888427734,
        y = 4329.6235351563,
        code = "1098"
    },
    {
        x = -1209.3537597656,
        y = 4432.23046875,
        code = "1099"
    },
    {
        x = -1674.9997558594,
        y = 4365.5014648438,
        code = "1100"
    },
    {
        x = -1623.6866455078,
        y = 4518.2045898438,
        code = "1101"
    },
    {
        x = -1918.1656494141,
        y = 4536.6293945313,
        code = "1102"
    },
    {
        x = -1742.2661132813,
        y = 4626.1162109375,
        code = "1103"
    },
    {
        x = -2160.5085449219,
        y = 4566.4223632813,
        code = "1104"
    },
    {
        x = -2372.5200195313,
        y = 4271.5224609375,
        code = "1105"
    },
    {
        x = 2170.171875,
        y = -639.21948242188,
        code = "9391"
    },
    {
        x = 2319.8759765625,
        y = -512.19512939453,
        code = "9392"
    },
    {
        x = 2502.6103515625,
        y = -386.83917236328,
        code = "9393"
    },
    {
        x = 2582.0139160156,
        y = -645.29943847656,
        code = "9394"
    },
    {
        x = 2790.5947265625,
        y = -753.72619628906,
        code = "9395"
    }
}