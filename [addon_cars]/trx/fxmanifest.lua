fx_version 'cerulean'
games { 'gta5' }

author 'WJM Modifications'
description '2019 Charger'
version '1.0.2'

files {
	'data/handling.meta',
    'data/vehicles.meta',
    'data/carvariations.meta',
    'data/carcols.meta',
}

data_file 'HANDLING_FILE' 'data/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'data/vehicles.meta'
data_file 'CARCOLS_FILE' 'data/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/carvariations.meta'

escrow_ignore {
'config.lua'
}