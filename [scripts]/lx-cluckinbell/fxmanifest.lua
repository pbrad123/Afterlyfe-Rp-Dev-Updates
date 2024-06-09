fx_version 'cerulean'
game 'gta5'

author 'LX'
description 'LX Cluckinbell'
version '1.0.0'

shared_script 'config.lua'
client_scripts {
    'client/main.lua',
    'client/menus.lua'
}
server_script 'server/main.lua'

lua54 'yes'

escrow_ignore {
    'config.lua'
}
dependency '/assetpacks'