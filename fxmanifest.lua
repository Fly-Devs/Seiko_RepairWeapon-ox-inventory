fx_version 'adamant' -- Version FiveM
game 'gta5' -- Version FiveM

lua54 'yes' -- For CFX

Author 'Seiko' -- Script Author

shared_script {
    '@es_extended/imports.lua', -- Only for NewESX
    '@ox_lib/init.lua', -- Importing ox_lib
    "config.lua"
}

client_script {
    'Weapon.lua' -- The Script Client
}

server_script {
    'Repair.lua' -- The Script Server
}