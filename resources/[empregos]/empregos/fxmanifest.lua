fx_version "cerulean"
game "gta5"

shared_script {
    "@vrp/lib/utils.lua",
    "cfg/cfg.lua"
}
server_scripts {
    "sv_common.lua",
    "server/*.lua",
}
client_scripts {
    "cl_common.lua",
    "client/*.lua"
}
files {
    "ui/**",
}
ui_page "ui/index.html"


lua54 'yes'
