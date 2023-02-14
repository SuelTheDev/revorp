local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
emP = Tunnel.getInterface("dm_farme")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local blips = false
local servico = false
local selecionado = 0
local processo = false
local segundos = 0
-------------------------------------------------------------------------------------------------
--[ DM ] LOCAIS 
-------------------------------------------------------------------------------------------------
local locais = {
	{ ['x'] = -1520.1, ['y'] = 835.63, ['z'] = 186.16, ['perm'] = "yakuza.permissao" },
	{ ['x'] = -1365.9, ['y'] = -616.31, ['z'] = 30.32, ['perm'] = "bahamas.permissao" },
	{ ['x'] = 129.91, ['y'] = -1277.66, ['z'] = 29.26, ['perm'] = "vanilla.permissao" },
	{ ['x'] = 1991.0, ['y'] = 3049.6, ['z'] = 47.22, ['perm'] = "yellow.permissao" },
	{ ['x'] = 157.89, ['y'] = 854.34, ['z'] = 209.38, ['perm'] = "dk.permissao" }, ------DK FARM
	{ ['x'] = -1545.05, ['y'] = 139.98, ['z'] = 55.66, ['perm'] = "mafia.permissao" }, -----FS FARM
	{ ['x'] = 398.98, ['y'] = -18.2, ['z'] = 91.94, ['perm'] = "cartel.permissao" }, -----CARTEL FARM
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- RESIDENCIAS
-----------------------------------------------------------------------------------------------------------------------------------------
local locs = {
    [1] = { ['x'] = -1119.43, ['y'] = -1549.13, ['z'] = 5.7},
    [2] = { ['x'] = -1021.65, ['y'] = -1123.94, ['z'] = 2.22},
	[3] = { ['x'] = -1452.63, ['y'] = -540.81, ['z'] = 34.75},
	[4] = { ['x'] = -108.53, ['y'] = -352.37, ['z'] = 38.73},
	[5] = { ['x'] = 246.87, ['y'] = -413.37, ['z'] = 47.93},
	[6] = { ['x'] = -592.82, ['y'] = -980.52, ['z'] = 22.33},
	[7] = { ['x'] = -1235.76, ['y'] = -1238.16, ['z'] = 11.03},
	[8] = { ['x'] = -1231.4, ['y'] = -1405.94, ['z'] = 4.22},
	[9] = { ['x'] = -1174.13, ['y'] = -1597.91, ['z'] = 4.38},
	[10] = { ['x'] = -1265.94, ['y'] = -1104.12, ['z'] = 7.77},
	[11] = { ['x'] = -1121.25, ['y'] = -1045.63, ['z'] = 2.16},
	[12] = { ['x'] = -849.96, ['y'] = -588.14, ['z'] = 29.23},
	[13] = { ['x'] = -851.63, ['y'] = -121.03, ['z'] = 37.72},
	[14] = { ['x'] = -632.65, ['y'] = -233.63, ['z'] = 38.06},
	[15] = { ['x'] = -1339.1, ['y'] = -941.43, ['z'] = 15.36},
	[16] = { ['x'] = -1114.22, ['y'] = -1579.8, ['z'] = 8.68},
	[17] = { ['x'] = -1112.1, ['y'] = -1578.34, ['z'] = 8.68},
	[18] = { ['x'] = -869.74, ['y'] = -1217.24, ['z'] = 5.62},
	[19] = { ['x'] = -827.11, ['y'] = -713.91, ['z'] = 28.06},
	[20] = { ['x'] = -1247.39, ['y'] = 458.51, ['z'] = 93.35},
	[21] = { ['x'] = -901.12, ['y'] = -143.53, ['z'] = 37.9},
	[22] = { ['x'] = -1234.85, ['y'] = -1056.0, ['z'] = 8.42},
	[23] = { ['x'] = -1093.3, ['y'] = -1662.3, ['z'] = 4.62},
	[24] = { ['x'] = -1061.88, ['y'] = -1663.41, ['z'] = 4.57},
	[25] = { ['x'] = -1065.89, ['y'] = -1055.45, ['z'] = 6.42},
	[26] = { ['x'] = -1064.6, ['y'] = -1057.57, ['z'] = 6.42},
	[27] = { ['x'] = -1372.91, ['y'] = -499.26, ['z'] = 33.16},
	[28] = { ['x'] = -889.18, ['y'] = -853.99, ['z'] = 20.57},
	[29] = { ['x'] = -746.31, ['y'] = -2551.2, ['z'] = 14.08},
	[30] = { ['x'] = -850.17, ['y'] = -2683.95, ['z'] = 13.92},
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRABALHAR
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local dmshop = 1000
		for _,v in pairs(locais) do
			if not servico then
			    local ped = PlayerPedId()
			    local x,y,z = table.unpack(v)
			    local distance = GetDistanceBetweenCoords(GetEntityCoords(ped),v.x,v.y,v.z)
			    if distance <= 2  then
				    dmshop = 5
				    DrawMarker(3,v.x,v.y,v.z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,25,25,157,50,0,0,0,1)
				    if distance <= 1 and IsControlJustPressed(0,38) then
					    dmshop = 5
					    if emP.checkPermission(v.perm) then
							servico = true
							selecionado = math.random(30)
							CriandoBlip(locs,selecionado)
							TriggerEvent("Notify","sucesso","Você entrou em serviço.")
						end
					end
				end
			end
		end
		Citizen.Wait(dmshop)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ENTREGAS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local sleep = 1000
		if servico then
			
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(locs[selecionado].x,locs[selecionado].y,locs[selecionado].z)
			local distance = GetDistanceBetweenCoords(locs[selecionado].x,locs[selecionado].y,cdz,x,y,z,true)

			if distance <= 10 then
				sleep = 1 
				DrawMarker(3,locs[selecionado].x,locs[selecionado].y,locs[selecionado].z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,25,25,157,50,0,0,0,1)
				if distance <= 1.2 then
					drawTxt("PRESSIONE  ~r~E~w~  PARA COLETAR",4,0.5,0.93,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) and not IsPedInAnyVehicle(ped) then
						if emP.checkPayment() then

							TriggerEvent('cancelando',true)
							RemoveBlip(blips)
							backentrega = selecionado
							processo = true
							segundos = 5
							vRP._playAnim(true,{{"pickup_object","pickup_low"}},false)

							local randomv2 = math.random(100)
							if randomv2 >= 70 then
								emP.MarcarOcorrencia()
							end

							while true do
								if backentrega == selecionado then
									selecionado = math.random(30)
								else
									break
								end
								Citizen.Wait(1)
							end
							CriandoBlip(locs,selecionado)
						else
							TriggerEvent("Notify", "negado", "Você não pode pegar esta encomenda ")
						end
					end
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCELAR
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local sleep = 1000
		if servico then
			sleep = 1
			if IsControlJustPressed(0,168) then
				servico = false
				RemoveBlip(blips)
				TriggerEvent("Notify","aviso","Você saiu de serviço.")
			end
		end
		Citizen.Wait(sleep)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TIMERS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if segundos > 0 then
			segundos = segundos - 1
			if segundos == 0 then
				processo = false
				TriggerEvent('cancelando',false)
				ClearPedTasks(PlayerPedId())
				vRP._DeletarObjeto()
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

function CriandoBlip(locs,selecionado)
	blips = AddBlipForCoord(locs[selecionado].x,locs[selecionado].y,locs[selecionado].z)
	SetBlipSprite(blips,1)
	SetBlipColour(blips,5)
	SetBlipScale(blips,0.4)
	SetBlipAsShortRange(blips,false)
	SetBlipRoute(blips,true)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString("Entregar Farme")
	EndTextCommandSetBlipName(blips)
end

--[[  ]]