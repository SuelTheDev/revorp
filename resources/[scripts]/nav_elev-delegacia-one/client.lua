-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION
-----------------------------------------------------------------------------------------------------------------------------------------
local menuactive = false
function ToggleActionMenu()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)
		SendNUIMessage({ showmenu = true })
	else
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ButtonClick",function(data,cb)
	local ped = GetPlayerPed(-1)
	if data == "terraco-elev-one" then
		DoScreenFadeOut(1000)
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
		menuactive = false
		SetTimeout(1400,function()
			SetEntityCoords(PlayerPedId(),566.05902099609,4.7822704315186,103.23460388184) 
			SetEntityHeading(ped,37.08)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			Citizen.Wait(750)
			DoScreenFadeIn(1000)
		end)

	elseif data == "quarto-andar-elev-one" then
		DoScreenFadeOut(1000)
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
		menuactive = false
		SetTimeout(1400,function()
			SetEntityCoords(PlayerPedId(),535.84259033203,-21.603988647461,70.630546569824)
			SetEntityHeading(ped,37.08)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			Citizen.Wait(750)
			DoScreenFadeIn(1000)
		end)

	elseif data == "terceiro-andar-elev-one" then
		DoScreenFadeOut(1000)
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
		menuactive = false
		SetTimeout(1400,function()
			SetEntityCoords(PlayerPedId(),-1096.23,-850.07,30.76-0.50)
			SetEntityHeading(ped,37.08)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			Citizen.Wait(750)
			DoScreenFadeIn(1000)
		end)

	elseif data == "segundo-andar-elev-one" then
		DoScreenFadeOut(1000)
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
		menuactive = false
		SetTimeout(1400,function()
			SetEntityCoords(PlayerPedId(),-1096.23,-850.22,26.83-0.50)
			SetEntityHeading(ped,37.08)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			Citizen.Wait(750)
			DoScreenFadeIn(1000)
		end)

	elseif data == "primeiro-andar-elev-one" then
		DoScreenFadeOut(1000)
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
		menuactive = false
		SetTimeout(1400,function()
			SetEntityCoords(PlayerPedId(),-1096.23,-850.22,23.04-0.50)
			SetEntityHeading(ped,37.08)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			Citizen.Wait(750)
			DoScreenFadeIn(1000)
		end)

	elseif data == "terreo-elev-one" then
		DoScreenFadeOut(1000)
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
		menuactive = false
		SetTimeout(1400,function()
			SetEntityCoords(PlayerPedId(),-1096.23,-850.22,19.0-0.50)
			SetEntityHeading(ped,37.08)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			Citizen.Wait(750)
			DoScreenFadeIn(1000)
		end)

	elseif data == "menos-um-elev-one" then
		DoScreenFadeOut(1000)
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
		menuactive = false
		SetTimeout(1400,function()
			SetEntityCoords(PlayerPedId(),-1096.11,-850.54,13.69-0.50)
			SetEntityHeading(ped,37.08)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			Citizen.Wait(750)
			DoScreenFadeIn(1000)
		end)

	elseif data == "menos-dois-elev-one" then
		DoScreenFadeOut(1000)
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
		menuactive = false
		SetTimeout(1400,function()
			SetEntityCoords(PlayerPedId(),-1096.1,-850.54,10.28-0.50)
			SetEntityHeading(ped,37.08)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			Citizen.Wait(750)
			DoScreenFadeIn(1000)
		end)

	elseif data == "menos-tres-elev-one" then
		DoScreenFadeOut(1000)
		SetNuiFocus(false)
		SendNUIMessage({ hidemenu = true })
		menuactive = false
		SetTimeout(1400,function()
			SetEntityCoords(PlayerPedId(),-1096.1,-850.54,4.89-0.50)
			SetEntityHeading(ped,37.08)
			TriggerEvent("vrp_sound:source",'elevator-bell',0.5)
			Citizen.Wait(750)
			DoScreenFadeIn(1000)
		end)

	elseif data == "fechar" then
		ToggleActionMenu()
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS
-----------------------------------------------------------------------------------------------------------------------------------------
local elevadores = {
	{ ['x'] = 565.69, ['y'] = 4.87, ['z'] = 103.23 }, -- HELIPONTO PMESP;
	{ ['x'] = 535.77, ['y'] = -21.68, ['z'] = 70.63 }, -- GARAGEM PMESP;
}

Citizen.CreateThread(function()
	SetNuiFocus(false,false)
	while true do
		Citizen.Wait(1)

		for k,v in pairs(elevadores) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
			local distance = GetDistanceBetweenCoords(v.x,v.y,cdz,x,y,z,true)
			local elev = elevadores[k]

			if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), elev.x, elev.y, elev.z, true ) <= 2 then
				DrawText3D(elev.x, elev.y, elev.z, "[~g~E~w~] Para acessar o elevador")
			end
			
			if distance <= 10 then
				DrawMarker(23,elev.x,elev.y,elev.z-0.97,0,0,0,0,0,0,1.0,1.0,0.5,20,20,20,240,0,0,0,0)
				if distance <= 1.2 then
					if IsControlJustPressed(0,38) then
						ToggleActionMenu()
					end
				end
			end
		end
	end
end)

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.28, 0.28)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.005+ factor, 0.03, 41, 11, 41, 68)
end