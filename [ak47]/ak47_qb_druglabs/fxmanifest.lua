fx_version 'adamant'
game 'gta5'
description 'Ak47 Drug Labs'
version '1.5'

server_scripts {
	'locales/en.lua',
	'config.lua',
	'server/utils.lua',
	'server/main.lua',
}

client_scripts {
	'@menuv/menuv.lua',
	'locales/en.lua',
	'config.lua',
	'client/utils.lua',
	'client/main.lua',
	'client/drugdealer.lua',
	'client/teleport.lua',
}

escrow_ignore {
    'locales/*.lua',
    'config*.lua',
    'server/utils.lua',
    'client/utils.lua',
    'client/drugdealer.lua',
    'client/teleport.lua',
    'INSTALL ME FIRST/**/*',
}

lua54 'yes'

dependencies {
	'menuv',
	'qb-core',
    '/server:5181', -- requires at least server build 5181
}
dependency '/assetpacks'