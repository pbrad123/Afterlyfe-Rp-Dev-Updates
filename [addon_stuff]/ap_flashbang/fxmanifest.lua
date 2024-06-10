fx_version 'cerulean'
game 'gta5'
lua54 'yes'
description 'AP Flashbang'

shared_scripts {
	'shared/cfg_main.lua',
}

client_scripts {
	'client/cl_lib.lua',
	'client/cl_effect.lua',
}

server_scripts {
	'server/sv_effect.lua'
}

escrow_ignore {
	'shared/cfg_main.lua',
	'stream/*.ydr',
	'stream/*.ytd',
	'meta/*.meta',
}

ui_page 'html/index.html'

files {
	'meta/*.meta',
	'html/index.html',
	'html/sounds/*.ogg',
}

data_file 'PED_PERSONALITY_FILE' 'meta/pedpersonality.meta'
data_file 'WEAPONCOMPONENTSINFO_FILE' 'meta/weaponcomponents.meta'
data_file 'WEAPON_METADATA_FILE' 'meta/weaponarchetypes.meta'
data_file 'WEAPON_ANIMATIONS_FILE' 'meta/weaponanimations.meta'
data_file 'WEAPONINFO_FILE' 'meta/weapons.meta'
data_file 'LOADOUTS_FILE' 'meta/loadouts.meta'
dependency '/assetpacks'