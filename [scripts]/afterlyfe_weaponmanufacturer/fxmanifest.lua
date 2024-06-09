-- █████╗ ██████╗ ███████╗██╗  ██╗    ███████╗████████╗██╗   ██╗██████╗ ██╗ ██████╗ ███████╗
--██╔══██╗██╔══██╗██╔════╝╚██╗██╔╝    ██╔════╝╚══██╔══╝██║   ██║██╔══██╗██║██╔═══██╗██╔════╝
--███████║██████╔╝█████╗   ╚███╔╝     ███████╗   ██║   ██║   ██║██║  ██║██║██║   ██║███████╗
--██╔══██║██╔═══╝ ██╔══╝   ██╔██╗     ╚════██║   ██║   ██║   ██║██║  ██║██║██║   ██║╚════██║
--██║  ██║██║     ███████╗██╔╝ ██╗    ███████║   ██║   ╚██████╔╝██████╔╝██║╚██████╔╝███████║
--╚═╝  ╚═╝╚═╝     ╚══════╝╚═╝  ╚═╝    ╚══════╝   ╚═╝    ╚═════╝ ╚═════╝ ╚═╝ ╚═════╝ ╚══════╝
                                                                                          
fx_version 'cerulean'
game 'gta5'

author 'Afterlyfe Roleplay'
description 'Weapon Manufacturer | Business Script'
version '1.0.1'
lua54 'yes'

shared_scripts { '@apex_lib/shared/locale.lua', '@ox_lib/init.lua', 'locales/en.lua', 'config/*.lua' }

client_scripts { 'source/client/*.lua', 'open-source/client.lua', '@PolyZone/client.lua', '@PolyZone/BoxZone.lua', '@PolyZone/EntityZone.lua', '@PolyZone/CircleZone.lua', '@PolyZone/ComboZone.lua' }

server_scripts { 'source/server/*.lua', 'open-source/server.lua' }

escrow_ignore { 'open-source/*.lua', 'locales/*.lua', 'config/*.lua' }

dependency 'apex_lib'
dependency '/assetpacks'