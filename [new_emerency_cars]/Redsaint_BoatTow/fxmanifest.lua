fx_version 'cerulean'
games {'gta5'}

name "Redsaint Boat Tow"
description "Tow A Boat"
author "Pokey"
version "1.0.0"
lua54 'yes'

escrow_ignore {
    'config.lua'
}

client_scripts {'client/*.lua'}

shared_script {'config.lua'}
dependency '/assetpacks'