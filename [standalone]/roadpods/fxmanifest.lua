fx_version 'cerulean'

game 'gta5'

author 'RoadShop | https://fivem.roadshop.org'
description 'RoadPods'
version '1.0.0'

lua54 'yes'

ui_page 'public/index.html'

files {
    'public/index.html',
    'public/assets/*.*'
}

client_scripts {
    'client/client.lua'
}

exports {
    'checkPods'
}
dependency '/assetpacks'