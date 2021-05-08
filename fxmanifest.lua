--Skrypt stworzony zostal przez https://github.com/verkus1337, po ewentualną pomoc zapraszam na discord https://discord.gg/3HYD723RBf
fx_version 'cerulean'
game 'gta5'

author 'verkus'
description 'Skrypt pozwalajacy na zmiane kodu zagrozenia poprzez LSPD oraz wyslanie komunikatu o tym zarowno na serwerze, jak i na discordzie.'
version '1.0.0'

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'server.lua',
    'config.lua'
}

client_scripts {
    'client.lua'
}
--Skrypt stworzony zostal przez https://github.com/verkus1337, po ewentualną pomoc zapraszam na discord https://discord.gg/3HYD723RBf