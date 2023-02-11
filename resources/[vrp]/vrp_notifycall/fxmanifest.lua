fx_version "cerulean"
game "gta5"

files { "web-side/index.html" }
ui_page "web-side/index.html"

client_scripts {
	"@vrp/lib/utils.lua",
	"client-side/*"
}

files {
	"web-side/*"
}
