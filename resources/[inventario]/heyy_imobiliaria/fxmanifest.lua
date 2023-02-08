fx_version 'adamant'
game 'gta5'

author 'HeyyCzer'
description 'Sistema de residências com interiores unificados e dividido por dimensões'

files {
	"src/nui/**",
}

ui_page "src/nui/index.html"

server_script "config/webhooks.lua"

shared_scripts {
	"@vrp/lib/utils.lua",
	"config/config.lua",
	"config/lang.lua",
	
	"config/functions.lua",
	"src/shared.lua",
}

client_script "src/client.lua"
server_script "src/server.lua"
