fx_version 'cerulean'
game 'gta5'

shared_scripts {
	"@vrp/lib/utils.lua",
}

client_scripts {	
	"client.lua"
}

server_scripts {
	"@vrp/lib/discord.lua",
	"server.lua"
}

lua54 'yes'