fx_version 'adamant'
game 'gta5'

client_scripts {
    '@vrp/lib/utils.lua',
    'client/**/*',
    'client/*',
    'config/*'
}

server_scripts {
    '@vrp/lib/utils.lua',
    'server/*.lua',
    'server/**/*.lua',
    'config/*'
}

shared_script 'shared/*.lua'

ui_page 'html/index.html'

files {
    'html/index.html',
    'html/js/*.js',
    'html/DEP/*.js',
    'html/img/**',
    'html/ProximaNova.woff'
}
