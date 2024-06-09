resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

files {
    'vehicles.meta',
    'carvariations.meta',
    'carcols.meta',
    'handling.meta',
    'vehiclelayouts.meta',
   'audioconfig/demonv8_amp.dat10.rel',
 'audioconfig/demonv8_game.dat151.rel',
 'audioconfig/demonv8_sounds.dat54.rel',
 'sfx/dlc_demonv8/demonv8.awc',
 'sfx/dlc_demonv8/demonv8_npc.awc',
}

data_file 'HANDLING_FILE' 'handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'vehicles.meta'
data_file 'CARCOLS_FILE' 'carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'carvariations.meta'
data_file 'VEHICLE_LAYOUTS_FILE' 'vehiclelayouts.meta'
data_file 'AUDIO_SYNTHDATA' 'audioconfig/demonv8_amp.dat'
data_file 'AUDIO_GAMEDATA' 'audioconfig/demonv8_game.dat'
data_file 'AUDIO_SOUNDDATA' 'audioconfig/demonv8_sounds.dat'
data_file 'AUDIO_WAVEPACK' 'sfx/dlc_demonv8'

client_script 'vehicle_names.lua'