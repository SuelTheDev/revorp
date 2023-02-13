fx_version 'cerulean'
game 'gta5'

shared_scripts {
    '@vrp/lib/utils.lua',
    'config.lua'
}

client_script{
    'client.lua',    
}

server_script {
    '@vrp/lib/discord.lua',
	'server.lua',   
}

ui_page 'web/index.html'

files {
  'web/**'
}              

lua54 'yes'