shared_script '@WaveShield/resource/waveshield.lua' --this line was automatically written by WaveShield

resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
files {
    "*.meta",

}

data_file 'HANDLING_FILE' '*handling.meta'
data_file 'VEHICLE_METADATA_FILE' '*vehicles.meta'
data_file 'CARCOLS_FILE' '*carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' '*carvariations.meta'
data_file 'PED_METADATA_FILE' '*peds.meta'
data_file 'VEHICLE_LAYOUTS_FILE' '*vehiclelayouts.meta'


data_file "WEAPON_METADATA_FILE" "*weaponarchetypes.meta"
data_file "WEAPONINFO_FILE" "*vehicleweapon.meta"
data_file "EXPLOSION_INFO_FILE" "*explosion.meta"

client_script "WJRUKUPvg.lua"


client_script '@Jamie_leocarpack/client/main.lua'