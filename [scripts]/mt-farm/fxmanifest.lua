fx_version 'cerulean'

game 'gta5'

author 'Marttins#8421 (mt scripts)  '

description 'mt-farm'

version '2.0'

client_scripts{
    '@PolyZone/client.lua',
	'@PolyZone/BoxZone.lua',
	'@PolyZone/EntityZone.lua',
	'@PolyZone/CircleZone.lua',
	'@PolyZone/ComboZone.lua',
    'client.lua',
    'trees.lua'
}

shared_scripts{
    'config.lua',
}

server_scripts{
    'server.lua',
    '@oxmysql/lib/MySQL.lua',
}