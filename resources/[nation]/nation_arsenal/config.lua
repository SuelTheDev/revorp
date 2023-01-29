config = {}

config.armas = {
    {"armamentos-equipar-tazer", "WEAPON_STUNGUN", nome = "Tazer"},
	
	{"armamentos-equipar-glock", "WEAPON_COMBATPISTOL", components = {
		"COMPONENT_AT_PI_FLSH", "COMPONENT_COMBATPISTOL_CLIP_02"
	}, nome = "Glock"},
	
	{"armamentos-equipar-mp5", "WEAPON_SMG", components = {
		"COMPONENT_SMG_CLIP_02","COMPONENT_AT_AR_FLSH","COMPONENT_AT_SCOPE_MACRO_02"
	}, nome = "MP5"},
	
	{"armamentos-equipar-mpx", "WEAPON_COMBATPDW", components = {
		"COMPONENT_COMBATPDW_CLIP_02","COMPONENT_AT_AR_FLSH","COMPONENT_AT_SCOPE_SMALL","COMPONENT_AT_AR_AFGRIP"
	}, nome = "MPX"},
	
	{"armamentos-equipar-m4a1", "WEAPON_CARBINERIFLE", components = {
		"COMPONENT_CARBINERIFLE_CLIP_02","COMPONENT_AT_AR_FLSH","COMPONENT_AT_SCOPE_MEDIUM","COMPONENT_AT_AR_AFGRIP"
	}, nome = "M4A1"},
	
	{"armamentos-equipar-remington", "WEAPON_PUMPSHOTGUN_MK2", nome = "Remington"},
	
	{"armamentos-equipar-parafall", "WEAPON_SPECIALCARBINE", nome = "Parafall"},
	
	{"armamentos-equipar-awm", "WEAPON_SNIPERRIFLE", components = {
		"COMPONENT_SNIPERRIFLE_CLIP_01","COMPONENT_AT_AR_SUPP_02","COMPONENT_AT_SCOPE_MAX","COMPONENT_SNIPERRIFLE_VARMOD_LUXE"
	},nome = "AWM", perm = "sniper.permissao"},
	
	{"utilitarios-equipar-colete", "colete"},
	{"utilitarios-equipar-smoke", "WEAPON_BZGAS", nome = "Granada de Fumaça"},
	{"utilitarios-equipar-cassetete", "WEAPON_NIGHTSTICK", nome = "Cassetete"},
	{"utilitarios-equipar-extintor", "WEAPON_FIREEXTINGUISHER", nome = "Extintor"},
	{"utilitarios-equipar-lanterna", "WEAPON_FLASHLIGHT", nome = "Lanterna"},

	{"presets-equipar-lojinha", itens = {"WEAPON_COMBATPISTOL", "colete"}, preset = "Lojinha"},
	{"presets-equipar-acao", itens = {"WEAPON_CARBINERIFLE","WEAPON_SMG","WEAPON_COMBATPISTOL","WEAPON_STUNGUN", "colete"}, preset = "Ação"},
	{"presets-equipar-rocam", itens = {"WEAPON_COMBATPISTOL","WEAPON_STUNGUN", "colete"}, preset = "Rocam"},
	{"presets-equipar-recruta", itens = {"WEAPON_COMBATPISTOL","WEAPON_STUNGUN","WEAPON_NIGHTSTICK", "colete"}, preset = "Recruta"},
	{"presets-equipar-soldado", itens = {"WEAPON_SMG","WEAPON_COMBATPISTOL","WEAPON_STUNGUN","WEAPON_NIGHTSTICK", "colete"}, preset = "Soldado"},
	{"presets-equipar-oficial", itens = {"WEAPON_CARBINERIFLE","WEAPON_COMBATPISTOL","WEAPON_STUNGUN","WEAPON_NIGHTSTICK", "colete"}, preset = "Oficial"},
}

