fx_version "adamant"
games {"gta5"}

client_scripts {
	"@vrp/lib/utils.lua",
	"client.lua"
}

server_scripts {
	"@vrp/lib/utils.lua",
	"config.lua",
	"server.lua",
}

ui_page 'html/index.html'

files {	
	'html/**/*'	
}

-- dependencies {
-- 	'common'
-- }