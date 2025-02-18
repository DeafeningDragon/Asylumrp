fx_version 'adamant'
version '1.2.2'
game 'gta5'
author 'CodeStudio'
description 'Shops'

ui_page 'ui/index.html'

shared_scripts {'@ox_lib/init.lua', 'config/config.lua', 'config/language.lua'}
client_scripts {'main/client.lua', 'config/functions/cl_function.lua'}
server_scripts {'@oxmysql/lib/MySQL.lua', 'main/server.lua', 'config/functions/sv_function.lua'}

files {'ui/**'}

escrow_ignore {'config/**'}

dependencies {'ox_lib'}

lua54 'yes'

dependency '/assetpacks'