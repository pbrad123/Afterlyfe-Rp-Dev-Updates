fx_version 'cerulean'
game 'gta5'

author 'JAKERS'

description 'BayCity Bank Robbery'

version '1.0'


shared_scripts {
    'config.lua',
    'qb-core/import.lua'
} 


-----example------example------example------example------example------example------example------example------
--[[client_scripts {
    "config.lua",
    "nuiclient/client.lua", put this (--) on which client you want to disable depending on which doorlock you use 
    "qbclient/client.lua", -- example leave this blank if you use nui-doorlock and visversa
}]]
-----example------example------example------example------example------example------example------example------

client_scripts {
    "config.lua",
    "nuiclient/client.lua",
    --"qbclient/client.lua",
}

server_scripts { 
    "config.lua",
    "server/server.lua"
}

escrow_ignore {
    "config.lua",
    "BayCityBank.lua",
    "nuiclient/client.lua",
    "qbclient/client.lua",
}

lua54 'yes'
dependency '/assetpacks'