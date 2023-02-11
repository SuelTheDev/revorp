local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

func = Tunnel.getInterface("nation_arsenal")

-------------------------------------------------------------------------------------------------
--[ MENU ]---------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
local menuactive = false

function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		TransitionToBlurred(1000)
		SendNUIMessage({ showmenu = true })
	else
		SetNuiFocus(false)
		TransitionFromBlurred(1000)
		SendNUIMessage({ hidemenu = true })
	end
end


local armas = {
	
	{"armamentos-equipar-tazer", "WEAPON_STUNGUN", nome = "Tazer", municao = 250},
	
	{"armamentos-equipar-glock", "WEAPON_COMBATPISTOL", components = {
		"COMPONENT_AT_PI_FLSH", "COMPONENT_COMBATPISTOL_CLIP_02"
	}, nome = "Glock", municao = 250},
	
	{"armamentos-equipar-mp5", "WEAPON_SMG", components = {
		"COMPONENT_SMG_CLIP_02","COMPONENT_AT_AR_FLSH","COMPONENT_AT_SCOPE_MACRO_02"
	}, nome = "MP5", municao = 250},
	
	{"armamentos-equipar-mpx", "WEAPON_COMBATPDW", components = {
		"COMPONENT_COMBATPDW_CLIP_02","COMPONENT_AT_AR_FLSH","COMPONENT_AT_SCOPE_SMALL","COMPONENT_AT_AR_AFGRIP"
	}, nome = "MPX", municao = 250},
	
	{"armamentos-equipar-m4a1", "WEAPON_CARBINERIFLE", components = {
		"COMPONENT_CARBINERIFLE_CLIP_02","COMPONENT_AT_AR_FLSH","COMPONENT_AT_SCOPE_MEDIUM","COMPONENT_AT_AR_AFGRIP"
	}, nome = "M4A1", municao = 250},
	
	{"armamentos-equipar-remington", "WEAPON_PUMPSHOTGUN_MK2", nome = "Remington", municao = 250},
	
	{"armamentos-equipar-parafall", "WEAPON_SPECIALCARBINE", nome = "Parafall", municao = 250},
	
	{"armamentos-equipar-awm", "WEAPON_SNIPERRIFLE", components = {
		"COMPONENT_SNIPERRIFLE_CLIP_01","COMPONENT_AT_AR_SUPP_02","COMPONENT_AT_SCOPE_MAX","COMPONENT_SNIPERRIFLE_VARMOD_LUXE"
	},nome = "AWM", perm = "sniper.permissao", municao = 250},
	
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
-------------------------------------------------------------------------------------------------
--[ BOTÕES ]-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	if data == "fechar" then
		ToggleActionMenu()
		return
	elseif data == "limpar" then
		RemoveAllPedWeapons(PlayerPedId(),true)
		TriggerEvent("Notify","importante","Armamentos guardados.")
	end
	for _,i in pairs(armas) do
		if i[1] == data then
			if i.perm then
				if func.hasPermission(i.perm) then
					if i.itens then
						RemoveAllPedWeapons(PlayerPedId(),true)
						getItens(i.itens)
						TriggerEvent("Notify","sucesso","Preset <b>"..i.preset.."</b> equipado com sucesso.")
					else
						if i.municao then
							GiveWeaponToPed(PlayerPedId(),GetHashKey(i[2]),i.municao,0,1)
						else
							GiveWeaponToPed(PlayerPedId(),GetHashKey(i[2]),250,0,1)
						end
						if i.components then
							getComponents(i[2],i.components)
						end
						TriggerEvent("Notify","sucesso","<b>"..i.nome.."</b> equipado com sucesso.")
					end
				else
					TriggerEvent("Notify","aviso","Você não tem permissão.")
				end
			else
				if i[2] == "colete" then
					vRP.setArmour(100)
					TriggerEvent("Notify","sucesso","<b>Colete</b> equipado com sucesso.")
					break
				end
				if i.itens then
					RemoveAllPedWeapons(PlayerPedId(),true)
					getItens(i.itens)
					TriggerEvent("Notify","sucesso","Preset <b>"..i.preset.."</b> equipado com sucesso.")
				else
					if i.municao then
						GiveWeaponToPed(PlayerPedId(),GetHashKey(i[2]),i.municao,0,1)
					else
						GiveWeaponToPed(PlayerPedId(),GetHashKey(i[2]),250,0,1)
					end
					if i.components then
						getComponents(i[2],i.components)
					end
					TriggerEvent("Notify","sucesso","<b>"..i.nome.."</b> equipado com sucesso.")
				end
			end
		end
	end
end)

function getComponents(item,components)
	for k,v in pairs(components) do
		GiveWeaponComponentToPed(PlayerPedId(),GetHashKey(item),GetHashKey(v))
	end
end

function getItens(itens)
	for k,v in pairs(itens) do
		if v == "colete" then
			vRP.setArmour(100)
		else
			for _,i in pairs(armas) do
				if v == i[2] then
					if i.municao then
						GiveWeaponToPed(PlayerPedId(),GetHashKey(v),i.municao,0,1)
					else
						GiveWeaponToPed(PlayerPedId(),GetHashKey(v),250,0,1)
					end
					if i.components then
						getComponents(v,i.components)
					end
				end
			end
		end
	end
end


local arsenal = {
	{ 482.74, -996.71, 30.69 }, --CIVIL/SP
	{ -2066.23, -489.06, 12.5 }, --beap
	{ 370.53, -1597.9, 29.3 }, -- PF
	{ -2042.76, -581.64, 12.5 },
	{ 625.87, -22.07, 82.78 },
	{ 621.77, -27.34, 82.79 },
	{ 626.0, -28.89, 82.78 }
}

Citizen.CreateThread(function()
	while true do
		local idle = 500
		local ped = PlayerPedId()
		local playercoords = GetEntityCoords(ped)
		if not menuactive then
			for k,v in pairs(arsenal) do
				local coords = vec3(v[1],v[2],v[3])
				local distance = #(playercoords - coords)
				if distance < 10 then
					idle = 0
					DrawMarker(25,v[1],v[2],v[3]-0.9,0,0,0,0,180.0,130.0,2.0,2.0,1.0,25,25,122,50,0,0,0,0)
					if distance <= 2 then
						DrawText3Ds(v[1],v[2],v[3]+0.5,"Pressione ~p~E~s~ para abrir o ~p~Arsenal.")
						if IsControlJustPressed(0, 51) then
							if func.hasPermission("policia.permissao") then
								ToggleActionMenu()
							else
								TriggerEvent("Notify","aviso","Você não tem permissão.")
							end
						end
					end
				end
			end
		end
		Citizen.Wait(idle)
	end
end)

function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.55, 0.55)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 270
    DrawRect(_x,_y+0.0185, 0.015+ factor, 0.03, 41, 11, 41, 68)
end