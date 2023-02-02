ConfigEmprego = module(GetCurrentResourceName(), "cfg/cfg")
coordenadaIniciada = nil
destino = 1
dinheiro_ganho = 0
local blip = nil

CreateThread(function()
    LocalPlayer.state:set("entrou_servico", nil)
end)

function CancelThread()
	Citizen.CreateThread(function()
		while LocalPlayer.state.entrou_servico ~= nil do
			drawTxt('PRESSIONE ~b~F7 ~w~PARA SAIR DE TRABALHO', 2, 0.23, 0.93, 0.40, 255, 255, 255, 180)
			if IsControlJustPressed(0, 168) then				
				RemoveBlip(blip)
				SetNuiFocus(false, false)
				SendNUIMessage({ action = "hideMenu" })
				StopScreenEffect("MenuMGSelectionIn")
				TriggerEvent("Notify", "aviso", "Você saiu de serviço.")
				TriggerEvent("Notify", "aviso", "Você recebeu um total de R$" .. dinheiro_ganho .. " !", 10000)
				coordenadaIniciada = nil
				destino = 1
				dinheiro_ganho = 0
				LocalPlayer.state:set("entrou_servico", nil)
			end
			Citizen.Wait(5)
		end
	end)
end


function DrawText3D(x, y, z, text, r, g, b)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local px, py, pz = table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px, py, pz, x, y, z, 1)

    local scale = (1 / dist) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    local scale = scale * fov

    if onScreen then
        SetTextFont(4)
        SetTextProportional(1)
        SetTextScale(0.0, 0.35)
        SetTextColour(r, g, b, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

function drawTxt(text, font, x, y, scale, r, g, b, a)
    SetTextFont(font)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextOutline()
    SetTextCentre(1)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

function drawText2D(text, font, x, y, scale, r, g, b, a)
    SetTextFont(font)
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextOutline()
    SetTextCentre(1)
    SetTextEntry('STRING')
    AddTextComponentString(text)
    DrawText(x, y)
end

function CriandoBlip(entregas, _destino)
    if DoesBlipExist(blip) then
        RemoveBlip(blip)
    end
    blip = AddBlipForCoord(entregas[_destino].x, entregas[_destino].y, entregas[_destino].z)
    SetBlipSprite(blip, 8)
    SetBlipColour(blip, 2)
    SetBlipScale(blip, 0.4)
    SetBlipAsShortRange(blip, false)
    SetBlipRoute(blip, true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString("Emprego Blip")
    EndTextCommandSetBlipName(blip)
end

RegisterNUICallback("Close", function(_, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({ action = "hideMenu" })
    StopScreenEffect("MenuMGSelectionIn")
    invOpen = false
    cb({ status = true })
end)


RegisterNUICallback("iniciartrampo", function(data, cb)
    TriggerEvent("empregos:client:iniciar", data.emprego_id, cb)
end)


