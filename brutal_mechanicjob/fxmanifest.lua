fx_version 'cerulean'
games { 'gta5' }
lua54 'yes'

author 'Keres & Dév'
description 'Brutal Mechanic Job - store.brutalscripts.com'
version '1.1.3'

client_scripts { 
	'config.lua',
	'core/client-core.lua',
	'cl_utils.lua',
	'client/*.lua'
}

server_scripts { 
	'@mysql-async/lib/MySQL.lua', 
	'config.lua',
	'core/server-core.lua',
	'sv_utils.lua',
	'server/*.lua'
}

shared_script {
	'@ox_lib/init.lua'
}

ui_page "html/index.html"
files {
	"html/index.html",
	"html/style.css",
	"html/script.js",
	"html/assets/**",
	"html/assets/shop_items/**"
}

export 'getAvailableMechanicsCount'

provides { 'esx_mechanicjob', 'qb-mechanicjob' }

dependencies { 
    '/server:5181',     -- ⚠️PLEASE READ⚠️; Requires at least SERVER build 5181
    '/gameBuild:2189',  -- ⚠️PLEASE READ⚠️; Requires at least GAME build 2189.
}

escrow_ignore {
    'config.lua',
    'sv_utils.lua',
    'cl_utils.lua',
    'core/client-core.lua',
    'core/server-core.lua',
}

--[[
-- locked
escrow_ignore {
    'config.lua',
    'sv_utils.lua',
    'cl_utils.lua',
    'core/client-core.lua',
    'core/server-core.lua',
}

-- open
escrow_ignore {
    'config.lua',
    'sv_utils.lua',
    'cl_utils.lua',
    'core/client-core.lua',
    'core/server-core.lua',
    'client/client.lua',
    'client/commands.lua',
    'server/server.lua',
    'server/commands.lua',
    'server/webhook.lua',
}
--]]
dependency '/assetpacks'