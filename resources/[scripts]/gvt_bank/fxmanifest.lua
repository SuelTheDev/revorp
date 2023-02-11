 --Para remover esta pendencia de todos scripts, execute no console o comando "uninstall"

fx_version 'bodacious'
game 'gta5' 

version '1.0.0'

ui_page 'client-side/html/ui.html'
ui_page_preload 'yes'

client_scripts {
    '@vrp/lib/utils.lua',
    '@vrp/lib/utils.lua',
    'client-side/client.lua',
    'client-side/config.lua'
}
server_scripts {
    '@vrp/lib/utils.lua',
    'server-side/server.lua'
}

files {
    'client-side/html/*',
    'client-side/html/ui.js',
    'client-side/html/img/*',
    'client-side/html/img/*.svg',
    'client-side/html/img/*.png',
}              