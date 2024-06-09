fx_version 'cerulean'
games {'gta5'}
lua54 'yes'

files {
  'metas/*vehiclelayouts.meta',
  'metas/*vehicles.meta',
  'metas/*carvariations.meta',
  'metas/*carcols.meta',
  'metas/*handling.meta',
  }
  
  escrow_ignore {
    'data/*',
}


data_file 'VEHICLE_LAYOUTS_FILE' 'metas/*vehiclelayouts.meta'
data_file 'HANDLING_FILE' 'metas/*handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'metas/*vehicles.meta'
data_file 'CARCOLS_FILE' 'metas/*carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'metas/*carvariations.meta'
