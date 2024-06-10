fx_version 'bodacious'

games { 'gta5' }

author 'London Studios'
description 'A realistic star chase experience'
version '1.0.0'
lua54 'yes'

client_scripts {
	'config.lua',
	'cl_utils.lua',
	'cl_starchase.lua',
}

server_scripts {
	-- "@vrp/lib/utils.lua",																									
	'config.lua',
	'sv_utils.lua',
	'sv_starchase.lua',
}

shared_script '@es_extended/imports.lua'

escrow_ignore {
	'stream/*.ytd',
	'stream/*.ytyp',
	'config.lua',
	'sv_utils.lua',
	'cl_utils.lua',
	'sounds/*'
}

files {
    'sounds/index.html',
    'sounds/*.ogg',
	'stream/*.ytyp',
}

ui_page 'sounds/index.html'

data_file 'DLC_ITYP_REQUEST' 'stream/starchase.ytyp'

-- Star Chase created by London Studios.
-- Join our Discord server here: https://discord.gg/htyaZNaG
dependency '/assetpacks'