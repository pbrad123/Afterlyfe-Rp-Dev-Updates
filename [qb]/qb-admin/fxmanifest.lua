fx_version 'cerulean'
game 'gta5'

author 'Sinatra#0101'
description '919DESIGN Admin Panel'
version '1.8.2'
lua54 'yes'

ui_page 'html/index.html'

escrow_ignore {
    'config.lua',
    'server/main.lua',
    'server/adminactions.lua',

    -- Compatibility Stuff
    'compat/qbcore.lua',
    'compat/esx18.lua',
    'compat/qbox.lua',

    -- NoClip Stuff
    'client/freecam/utils.lua',
    'client/freecam/config.lua',
    'client/freecam/camera.lua',
    'client/freecam/main.lua',
    'client/noclip_new.lua',

    -- Locale Stuff
    'locales/locale.lua',
    'locales/en.lua',
    'locales/de.lua',
    'locales/nl.lua',
}

files {
	'html/**',
    'json/reports.json',
    'json/adminchat.json',
    'json/logs.json',
}

shared_scripts {
    'locales/locale.lua',
    'locales/en.lua', -- Can change to other languages available in locales folder
    'config.lua',
    'compat/qbcore.lua',
    'compat/esx18.lua',
    'compat/qbox.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/main.lua',
    'server/adminactions.lua',
}

client_scripts {
    'client/main.lua',
    'client/functions.lua',
    'client/freecam/utils.lua',
    'client/freecam/config.lua',
    'client/freecam/camera.lua',
    'client/freecam/main.lua',
    'client/noclip_new.lua',
    'client/DeveloperOptions.lua',
}

dependencies { 'oxmysql' }
dependency '/assetpacks'