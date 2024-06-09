fx_version 'adamant'
game 'gta5'
description 'Ak47 Drug Manager'
version '2.7'

ui_page 'nui/index.html'

files {
    'nui/**/*'
}

server_scripts {
	'@mysql-async/lib/MySQL.lua',

	'config.lua',
    'config-*.lua',
    'locales/locale.lua',
    'locales/en.lua',

	'server/utils.lua',
	'server/field.lua',
	'server/lab.lua',
	'server/drugdealer.lua',
	'server/npc_sell.lua',
	'server/usable.lua',
}

client_scripts {	
	'@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    '@menuv/menuv.lua',

    'config.lua',
    'config-*.lua',
    'locales/locale.lua',
    'locales/en.lua',

	'client/utils.lua',
	'client/field.lua',
	'client/lab.lua',
	'client/drugdealer.lua',
	'client/npc_sell.lua',
	'client/teleport.lua',
	'client/usable/*.lua',
}

dependencies {
    '/onesync',
}

escrow_ignore {
	"INSTALL ME FIRST/**/*",
    "config*.lua",
    "shops/*.lua",
    "locales/*.lua",
    "server/utils.lua",
    "client/utils.lua",
}

lua54 'yes'
dependency '/assetpacks'