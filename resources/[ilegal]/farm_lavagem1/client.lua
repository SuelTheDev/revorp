local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
emP = Tunnel.getInterface("farm_lavagem1")
vRP = Proxy.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local blips = false
local servico = false
local selecionado = 0
local wolfx = -2537.45
local wolfy = 2944.06
local wolfz = 37.91
local processo = false
local segundos = 0 -- wa
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS   -1380.3663330078,-584.63806152344,30.102439880371
-----------------------------------------------------------------------------------------------------------------------------------------
local locs = {
	[1] = { ['x'] = 478.32, ['y'] = -107.83, ['z'] = 63.16 },
	[2] = { ['x'] = 879.77, ['y'] = -205.16, ['z'] = 71.98 },
	[3] = { ['x'] = 1247.77, ['y'] = -349.58, ['z'] = 69.21 }, 
	[4] = { ['x'] = -263.05, ['y'] = 202.44, ['z'] = 85.37 }, 
	[5] = { ['x'] = -1402.05, ['y'] = -452.01, ['z'] = 34.49 }, 
	[6] = { ['x'] = -1776.42, ['y'] = -670.95, ['z'] = 10.39 }, 
	[7] = { ['x'] = -3078.06, ['y'] = 658.99, ['z'] = 11.67 }, 
	[8] = { ['x'] = -794.54, ['y'] = 354.05, ['z'] = 87.88 }
 
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRABALHAR
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local Coding = 1000
		if not servico then
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(wolfx,wolfy,wolfz)
			local distance = GetDistanceBetweenCoords(wolfx,wolfy,cdz,x,y,z,true)

			if distance <= 30.0 then
				DrawMarker(21,wolfx,wolfy,wolfz-0.5,0,0,0,0,180.0,130.0,1.0,1.0,0.5,240,0,0,30,1,0,0,1)
				if distance <= 1.5 then
					Coding = 5
					drawTxt("PRESSIONE  ~b~E~w~  PARA INICIAR A ROTA",4,0.5,0.93,0.50,255,255,255,180)
					if IsControlJustPressed(0,38) and emP.checkPermission() then
						servico = true
						selecionado = 1
						CriandoBlip(locs,selecionado)
					end
				end
			end
		end
		Citizen.Wait(Coding)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ENTREGAS
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		local Coding = 1000
		if servico then
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(locs[selecionado].x,locs[selecionado].y,locs[selecionado].z)
			local distance = GetDistanceBetweenCoords(locs[selecionado].x,locs[selecionado].y,cdz,x,y,z,true)

			if distance <= 30.0 then
				DrawMarker(21,locs[selecionado].x,locs[selecionado].y,locs[selecionado].z-0.7,0,0,0,0,180.0,130.0,1.0,1.0,0.5,240,200,80,30,1,0,0,1)
				if distance <= 1.5 then
					Coding = 5
					drawTxt("PRESSIONE  ~b~E~w~  PARA COLETAR OS ITENS",4,0.5,0.93,0.50,255,255,255,180)
               if IsControlJustPressed(0,38) then
                  if emP.checkPayment() then
                     RemoveBlip(blips)
                     if selecionado == #locs then
                        selecionado = 1
                     else
                        selecionado = selecionado + 1
                     end
                     CriandoBlip(locs,selecionado)
                  end
					end
				end
			end
      end
	  Citizen.Wait(Coding)
	end
end)

Citizen.CreateThread(function()
	while true do
      Citizen.Wait(1)
      if servico then
			drawTxt("~y~PRESSIONE ~r~F7 ~w~SE DESEJA FINALIZAR A ROTA ",4,0.270,0.905,0.45,255,255,255,200)
			drawTxt("VA ATÉ O DESTINO PARA COLETAR OS ~g~ITENS",4,0.270,0.93,0.45,255,255,255,200)
      end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCELAR
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(5)
		if servico then
			if IsControlJustPressed(0,168) then
				servico = false
				RemoveBlip(blips)
				TriggerEvent("Notify","aviso","Você saiu de serviço.")
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
	AddTextComponentString("Coleta de Itens")
	EndTextCommandSetBlipName(blips)
end
