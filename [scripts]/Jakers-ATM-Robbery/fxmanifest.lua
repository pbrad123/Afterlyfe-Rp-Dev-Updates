fx_version 'cerulean'
game 'gta5'

author 'JAKERS'

description 'ATM ROBBERY'

version '1.0'


shared_scripts {
    'config.lua',
    'qb-core/import.lua'
} 


client_scripts {
    "config.lua",
    "client/client.lua",
}

server_scripts { 
    "config.lua",
    "server/server.lua"
}

escrow_ignore {
    "config.lua",
    "client/client.lua",
    "server/server.lua"

}

lua54 'yes'
dependency '/assetpacks'