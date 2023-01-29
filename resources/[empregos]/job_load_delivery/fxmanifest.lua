fx_version "adamant"
games {"gta5"}

client_scripts {
	'@vrp/lib/utils.lua', 
	"client.lua",
	"config.lua"
}

server_scripts {	
	'@vrp/lib/utils.lua',
	"server.lua",
	"config.lua"
}
ui_page "html/index.html"
ui_page_preload 'yes'

files {		
	'Newtonsoft.Json.dll',
	"html/*",
	"html/**/*"
}