fx_version 'cerulean'
name 'nad_rockstar'
description 'Rockstar Editor script, made by Nad#1223.'
author 'Nad#1223'
game 'gta5'

client_scripts {
    '@menuv/menuv.lua',
    'config.lua',
    'cl_rockstar.lua'
}

server_scripts {
    'config.lua',
    'sv_rockstar.lua'
}

dependencies {
    'menuv'
}