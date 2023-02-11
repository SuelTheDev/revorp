local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
local idgens = Tools.newIDGenerator()
-----------------------------------------------------------------------------------------------------------------------------------------
-- WEBHOOK
-----------------------------------------------------------------------------------------------------------------------------------------
local webhookarsenal =
"https://discord.com/api/webhooks/985242975506403348/l5g4BouXXG_dS9S4e_A_PSS0CIKzcYkdVPPwE8FbjrdTySbx1BoGi5bmGizF7u_t64kh"
local webhookprender =
"https://discord.com/api/webhooks/985242975506403348/l5g4BouXXG_dS9S4e_A_PSS0CIKzcYkdVPPwE8FbjrdTySbx1BoGi5bmGizF7u_t64kh"
local webhookmultas =
"https://discord.com/api/webhooks/985242975506403348/l5g4BouXXG_dS9S4e_A_PSS0CIKzcYkdVPPwE8FbjrdTySbx1BoGi5bmGizF7u_t64kh"
local webhookocorrencias =
"https://discord.com/api/webhooks/985242975506403348/l5g4BouXXG_dS9S4e_A_PSS0CIKzcYkdVPPwE8FbjrdTySbx1BoGi5bmGizF7u_t64kh"
local webhookdetido =
"https://discord.com/api/webhooks/985242975506403348/l5g4BouXXG_dS9S4e_A_PSS0CIKzcYkdVPPwE8FbjrdTySbx1BoGi5bmGizF7u_t64kh"
local webhookponto =
"https://discord.com/api/webhooks/1064556616546000998/em5Z63HX5Z4acupqXR-0h0kFD7u_gzYxzP6Lfan15ZRLhQsUWB4aV9OgVSqa9NXARzzs"
local webhookparamedico =
"https://discord.com/api/webhooks/852270950636322847/N1HddbibtojbiXWZpn24WUrQ-t683Z27RfUUhrTHnuGHNcrbXe2i32T9dP7ZPeQk0hdi"
local webhookmecanico =
"https://discord.com/api/webhooks/852270950636322847/N1HddbibtojbiXWZpn24WUrQ-t683Z27RfUUhrTHnuGHNcrbXe2i32T9dP7ZPeQk0hdi"
local webhookre =
"https://discord.com/api/webhooks/838789605490294815/a5dkpewRgNtisELYV3kXk7r1C9VaUkTtPCZ4d2PA6XojZd0j2RlMEwFIl5KrxL157eIJ"
local webhookpoliciaapreendidos =
"https://discord.com/api/webhooks/1067590093172396072/EeL_LVxL7PfJ9iLBOIKwnesJ_NXh8J4tgJPbeyn4rE7EHc_T0xDzt26hFnUvyhpASRQ_"



local webhookPontoPolicia =
"https://discord.com/api/webhooks/1064556616546000998/em5Z63HX5Z4acupqXR-0h0kFD7u_gzYxzP6Lfan15ZRLhQsUWB4aV9OgVSqa9NXARzzs"
local webhookPontoMecanico =
"https://discord.com/api/webhooks/1064630952271286322/brijOUPkbcjkClu5_uJ3FOPWfgn83ut6bslxInTYmbUZfrZt2ZumGtC87eGWqpgXjssy"
local webhookPontoMedicos =
"https://discord.com/api/webhooks/1064626569643049054/9SKQTUP52E1Mtu4rgdN6EwGlQI8WV9dcvLjmxd3Ib_MJVvzw7cWPvccpbT_nif4K9cZ0"
local webhookPontoPM =
"https://discord.com/api/webhooks/1065690047606689914/V6BVQdSkiy8NK3TrismvEEbFq3tD1h2wYymD-J-fZpUA9wvUxKjd85rxmEo0K4GKbwi2"
local webhookPontoRota =
"https://discord.com/api/webhooks/1069048087571615784/7HQCYnoE42gfJVsHcxG71s-fz5CSXC3gXM2P9O2NbGfxDIb4531AfiFay8J40jST_tT_"

function SendWebhookMessage(webhook, message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers)
		end, 'POST', json.encode({ content = message }),
			{ ['Content-Type'] = 'application/json' })
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- PLACA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('placa', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "policia.permissao") or
		vRP.hasPermission(user_id, "desmanche.permissao") then
		if args[1] then
			local user_id = vRP.getUserByRegistration(args[1])
			if user_id then
				local identity = vRP.getUserIdentity(user_id)
				if identity then
					vRPclient.playSound(source, "Event_Message_Purple", "GTAO_FM_Events_Soundset")
					TriggerClientEvent('chatMessage', source, "911", { 64, 64, 255 },
						"^1Passaporte: ^0" ..
						identity.user_id ..
						"   ^2|   ^1Placa: ^0" ..
						identity.registration ..
						"   ^2|   ^1Proprietário: ^0" ..
						identity.name ..
						" " .. identity.firstname .. "   ^2|   ^1Idade: ^0" ..
						identity.age .. " anos   ^2|   ^1Telefone: ^0" .. identity.phone)
				end
			else
				TriggerClientEvent("Notify", source, "importante", "Placa inválida ou veículo de americano.")
			end
		else
			local vehicle, vnetid, placa, vname, lock, banned = vRPclient.vehList(source, 7)
			local placa_user = vRP.getUserByRegistration(placa)
			if placa then
				if placa_user then
					local identity = vRP.getUserIdentity(placa_user)
					if identity then
						local vehicleName = vRP.vehicleName(vname)
						vRPclient.playSound(source, "Event_Message_Purple", "GTAO_FM_Events_Soundset")
						TriggerClientEvent('chatMessage', source, "911", { 64, 64, 255 },
							"^1Passaporte: ^0" ..
							identity.user_id ..
							"   ^2|   ^1Placa: ^0" ..
							identity.registration ..
							"   ^2|   ^1Placa: ^0" ..
							identity.registration ..
							"   ^2|   ^1Proprietário: ^0" ..
							identity.name ..
							" " ..
							identity.firstname ..
							"   ^2|   ^1Modelo: ^0" ..
							vehicleName .. "   ^2|   ^1Idade: ^0" ..
							identity.age .. " anos   ^2|   ^1Telefone: ^0" ..
							identity.phone)
					end
				else
					TriggerClientEvent("Notify", source, "importante", "Placa inválida ou veículo de americano.")
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- bvida
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterCommand('Sintonia', function(source, rawCommand)
	local user_id = vRP.getUserId(source)
	vRPclient._setCustomization(source, vRPclient.getCustomization(source))
	vRP.removeCloak(source)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- PTR
----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ptr2', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local oficiais = vRP.getUsersByPermission("policia.permissao")
	local paramedicos = 0
	local oficiais_nomes = ""
	if vRP.hasPermission(user_id, "policia.permissao") or vRP.hasPermission(user_id, "admin.permissao") then
		for k, v in ipairs(oficiais) do
			local identity = vRP.getUserIdentity(parseInt(v))
			oficiais_nomes = oficiais_nomes ..
				"<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
			paramedicos = paramedicos + 1
		end
		TriggerClientEvent("Notify", source, "importante", "Atualmente <b>" .. paramedicos .. " Oficiais</b> em serviço.")
		if parseInt(paramedicos) > 0 then
			TriggerClientEvent("Notify", source, "importante", oficiais_nomes)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PTR
----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ptr', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local oficiais = vRP.getUsersByPermission("policia.permissao")
	local paramedicos = 0
	local oficiais_nomes = ""
	--if vRP.hasPermission(user_id,"policia.permissao") or vRP.hasPermission(user_id,"admin.permissao") then
	for k, v in ipairs(oficiais) do
		--local identity = vRP.getUserIdentity(parseInt(v))
		--oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
		paramedicos = paramedicos + 1
	end
	vRP.tryFullPayment(user_id, 150)
	TriggerClientEvent("Notify", source, "importante", "Atualmente <b>" .. paramedicos .. " Oficiais</b> em serviço.")
	TriggerClientEvent("Notify", source, "negado", "Você gastou <b>150$</b>.", 5000)
	TriggerClientEvent("vrp_sound:source", source, 'message', 0.5)
	if parseInt(paramedicos) > 0 then
		TriggerClientEvent("Notify", source, "importante", oficiais_nomes)
	end
	--end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- EMS
----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ems', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local oficiais = vRP.getUsersByPermission("paramedico.permissao")
	local paramedicos = 0
	local paramedicos_nomes = ""
	--if vRP.hasPermission(user_id,"paramedico.permissao") or vRP.hasPermission(user_id,"admin.permissao") then
	for k, v in ipairs(oficiais) do
		local identity = vRP.getUserIdentity(parseInt(v))
		paramedicos_nomes = paramedicos_nomes ..
			"<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
		paramedicos = paramedicos + 1
	end
	TriggerClientEvent("Notify", source, "importante", "Atualmente <b>" .. paramedicos .. " Paramédicos</b> em serviço.")
	TriggerClientEvent("vrp_sound:source", source, 'message', 0.5)
	if parseInt(paramedicos) > 0 then
		TriggerClientEvent("Notify", source, "importante", paramedicos_nomes)
	end
	--end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MECANICOS
----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('mecs', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	local player = vRP.getUserSource(user_id)
	local oficiais = vRP.getUsersByPermission("callmec.permissao")
	local paramedicos = 0
	local oficiais_nomes = ""
	--if vRP.hasPermission(user_id,"mecanicolider.permissao") or vRP.hasPermission(user_id,"admin.permissao") then
	for k, v in ipairs(oficiais) do
		local identity = vRP.getUserIdentity(parseInt(v))
		oficiais_nomes = oficiais_nomes .. "<b>" .. v .. "</b>: " .. identity.name .. " " .. identity.firstname .. "<br>"
		paramedicos = paramedicos + 1
	end
	TriggerClientEvent("Notify", source, "importante", "Atualmente <b>" .. paramedicos .. " Mecânicos</b> em serviço.")
	if parseInt(paramedicos) > 0 then
		TriggerClientEvent("Notify", source, "importante", oficiais_nomes)
		TriggerClientEvent("vrp_sound:source", source, 'message', 0.5)
	end
	--end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- P
-----------------------------------------------------------------------------------------------------------------------------------------
local policia = {}
RegisterCommand('p', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	local uplayer = vRP.getUserSource(user_id)
	local identity = vRP.getUserIdentity(user_id)
	local x, y, z = vRPclient.getPosition(source)
	if vRPclient.getHealth(source) > 100 then
		if vRP.hasPermission(user_id, "policia.permissao") then
			local soldado = vRP.getUsersByPermission("policia.permissao")
			for l, w in pairs(soldado) do
				local player = vRP.getUserSource(parseInt(w))
				if player and player ~= uplayer then
					async(function()
						local id = idgens:gen()
						policia[id] = vRPclient.addBlip(player, x, y, z, 153, 84, "Localização de " ..
							identity.name .. " " .. identity.firstname, 0.5, false)
						TriggerClientEvent("NotifyPush", player,
							{
								code = 31,
								title = "Localização recebida de <b>" .. identity.name .. " " .. identity.firstname .. "</b>.",
								x = x,
								y = y,
								z = z,
								badge = "Localização."
							})
						vRPclient._playSound(player, "Out_Of_Bounds_Timer", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS")
						SetTimeout(60000, function()
							vRPclient.removeBlip(player, policia[id])
							idgens:free(id)
						end)
					end)
				end
			end
			TriggerClientEvent("Notify", source, "sucesso", "Localização enviada com sucesso.")
			vRPclient.playSound(source, "Event_Message_Purple", "GTAO_FM_Events_Soundset")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 911
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('911', function(source, args, rawCommand)
	if args[1] then
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		if vRP.hasPermission(user_id, "policia.permissao") or vRP.hasPermission(user_id, "juiz.permissao") or
			vRP.hasPermission(user_id, "advogado.permissao") then
			if user_id then
				TriggerClientEvent('chatMessage', -1, identity.name .. " " .. identity.firstname, { 64, 64, 255 },
					rawCommand:sub(4))
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('pd', function(source, args, rawCommand)
	if args[1] then
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		local permission = "policia.permissao"
		if vRP.hasPermission(user_id, permission) then
			local soldado = vRP.getUsersByPermission(permission)
			for l, w in pairs(soldado) do
				local player = vRP.getUserSource(parseInt(w))
				if player then
					async(function()
						TriggerClientEvent('chatMessage', player, identity.name .. " " .. identity.firstname,
							{ 64, 179, 255 },
							rawCommand:sub(3))
					end)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- 112
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('112', function(source, args, rawCommand)
	if args[1] then
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		if vRP.hasPermission(user_id, "paramedico.permissao") then
			if user_id then
				TriggerClientEvent('chatMessage', -1, identity.name .. " " .. identity.firstname, { 255, 70, 135 },
					rawCommand:sub(4))
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('pr', function(source, args, rawCommand)
	if args[1] then
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		local permission = "paramedico.permissao"
		if vRP.hasPermission(user_id, permission) then
			local soldado = vRP.getUsersByPermission(permission)
			for l, w in pairs(soldado) do
				local player = vRP.getUserSource(parseInt(w))
				if player then
					async(function()
						TriggerClientEvent('chatMessage', player, identity.name .. " " .. identity.firstname,
							{ 255, 175, 175 },
							rawCommand:sub(3))
					end)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAYTOW
-----------------------------------------------------------------------------------------------------------------------------------------
--[[RegisterCommand('paytow',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"policia.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source,2)
		if nplayer then
			local nuser_id = vRP.getUserId(nplayer)
			if nuser_id then
				vRP.giveMoney(nuser_id,200)
				vRPclient._playAnim(source,true,{{"mp_common","givetake1_a"}},false)
				vRPclient._playAnim(nplayer,true,{{"mp_common","givetake1_a"}},false)
				TriggerClientEvent("Notify",source,"sucesso","Efetuou o pagamento pelo serviço do mecânico.")
				TriggerClientEvent("Notify",nplayer,"sucesso","Recebeu <b>$200 dólares</b> pelo serviço de mecânico.") as
			end
		end
	end
end)]]
-----------------------------------------------------------------------------------------------------------------------------------------
-- TOOGLE
-----------------------------------------------------------------------------------------------------------------------------------------
-- local blips = {
-- 	PolicialBlip = { name = "Policial", color = 47 },
-- 	MecanicoBlip = { name = "Mecanico", color = 54 },
-- 	HospitalBlip = { name = "Hospital", color = 1 },
-- 	PMBlip = { name = "PM", color = 25 },
-- }

local function toogleStaff(source, user_id)

end

RegisterCommand('toogle', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if args[1] == "staff" then
		return toogleStaff(source, user_id)
	end

	local groupid, group = vRP.getUserGroupDefByGtype(user_id, "job")
	if groupid and group then
		local cargonome = ""
		if group.__config and (group.__config.on or group.__config.off) then
			if group.__config.on then -- tá off
				cargonome = vRP.getGroupTitle(group.__config.on)
				vRP.addUserGroup(user_id, group.__config.on)
				TriggerClientEvent("Notify", source, "aviso", "Você entrou em serviço como " .. cargonome .. ".", 10000)
			elseif group.__config.off then -- tá on
				cargonome = group.__config.title
				vRP.addUserGroup(user_id, group.__config.off)
				TriggerClientEvent("Notify", source, "aviso", "Você saiu do serviço de " .. cargonome .. ".", 10000)
				TriggerEvent('eblips:remove', source)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
--[[ REANIMAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('reanimar',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"medico.permissao") then
		TriggerClientEvent('reanimar',source)
	end
end)

RegisterServerEvent("reanimar:pagamento")
AddEventHandler("reanimar:pagamento",function()
	local user_id = vRP.getUserId(source)
	if user_id then
		pagamento = math.random(50,80)
		vRP.giveMoney(user_id,pagamento)
		TriggerClientEvent("Notify",source,"sucesso","Recebeu <b>$"..pagamento.." dólares</b> de gorjeta do americano.")
	end
end)]]
-----------------------------------------------------------------------------------------------------------------------------------------
-- MULTAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('multar', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "policia.permissao") then
		local id = vRP.prompt(source, "Passaporte:", "")
		local valor = vRP.prompt(source, "Valor:", "")
		local motivo = vRP.prompt(source, "Motivo:", "")
		if id == "" or valor == "" or motivo == "" then
			return
		end
		local value = vRP.getUData(parseInt(id), "vRP:multas")
		local multas = json.decode(value) or 0
		vRP.setUData(parseInt(id), "vRP:multas", json.encode(parseInt(multas) + parseInt(valor)))
		local oficialid = vRP.getUserIdentity(user_id)
		local identity = vRP.getUserIdentity(parseInt(id))
		local nplayer = vRP.getUserSource(parseInt(id))
		SendWebhookMessage(webhookmultas,
			"```prolog\n[OFICIAL]: " ..
			user_id ..
			" " ..
			oficialid.name ..
			" " ..
			oficialid.firstname ..
			" \n[==============MULTOU==============] \n[PASSAPORTE]: " ..
			id ..
			" " ..
			identity.name ..
			" " ..
			identity.firstname ..
			" \n[VALOR]: $" ..
			vRP.format(parseInt(valor)) .. " \n[MOTIVO]: " ..
			motivo .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")

		randmoney = math.random(90, 150)
		vRP.giveMoney(user_id, parseInt(randmoney))
		TriggerClientEvent("Notify", source, "sucesso", "Multa aplicada com sucesso.")
		TriggerClientEvent("Notify", source, "importante",
			"Você recebeu <b>$" .. vRP.format(parseInt(randmoney)) .. " dólares</b> de bonificação.")
		TriggerClientEvent("Notify", nplayer, "importante",
			"Você foi multado em <b>$" ..
			vRP.format(parseInt(valor)) .. " dólares</b>.<br><b>Motivo:</b> " .. motivo .. ".")
		vRPclient.playSound(source, "Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- OCORRENCIA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('ocorrencia', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "policia.permissao") then
		local id = vRP.prompt(source, "Passaporte:", "")
		local ocorrencia = vRP.prompt(source, "Ocorrência:", "")
		if id == "" or ocorrencia == "" then
			return
		end
		local oficialid = vRP.getUserIdentity(user_id)
		local identity = vRP.getUserIdentity(parseInt(id))
		local nplayer = vRP.getUserSource(parseInt(id))
		SendWebhookMessage(webhookocorrencias,
			"```prolog\n[OFICIAL]: " ..
			user_id ..
			" " ..
			oficialid.name ..
			" " ..
			oficialid.firstname ..
			" \n[==============OCORRENCIA==============] \n[PASSAPORTE]: " ..
			id ..
			" " ..
			identity.name ..
			" " ..
			identity.firstname ..
			"\n[IDENTIDADE]: " ..
			identity.registration ..
			" \n[TELEFONE]: " ..
			identity.phone ..
			" \n[OCORRENCIA]: " .. ocorrencia .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") ..
			" \r```")

		TriggerClientEvent("Notify", source, "sucesso", "Ocorrência registrada com sucesso.")
		TriggerClientEvent("Notify", nplayer, "importante", "Sua <b>Ocorrência</b> foi registrada com sucesso.")
		vRPclient.playSound(source, "Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DETIDO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('detido', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "policia.permissao") then
		local vehicle, vnetid, placa, vname, lock, banned = vRPclient.vehList(source, 5)
		local motivo = vRP.prompt(source, "Motivo:", "")
		if motivo == "" then
			return
		end
		local oficialid = vRP.getUserIdentity(user_id)
		if vehicle then
			local puser_id = vRP.getUserByRegistration(placa)
			local rows = vRP.query("vRP/getVehicle", { user_id = user_id, vehicle = vehicle })
			if vehicleInfo and #vehicleInfo > 0 then
				if (vehicleInfo[1].detido and vehicleInfo[1].detido == 0) or (vehicleInfo[1].arrest and vehicleInfo[1].arrest == 0) then
					TriggerClientEvent("Notify", source, "importante", "Este veículo já se encontra detido.", 8000)
				else
					local identity = vRP.getUserIdentity(puser_id)
					local nplayer = vRP.getUserSource(parseInt(puser_id))
					SendWebhookMessage(webhookdetido,
						"```prolog\n[OFICIAL]: " ..
						user_id ..
						" " ..
						oficialid.name ..
						" " ..
						oficialid.firstname ..
						" \n[==============PRENDEU==============] \n[CARRO]: " ..
						vname ..
						" \n[PASSAPORTE]: " ..
						puser_id ..
						" " ..
						identity.name ..
						" " .. identity.firstname .. " \n[MOTIVO]: " ..
						motivo .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
					vRP.execute("creative/set_detido",
						{ user_id = parseInt(puser_id), vehicle = vname, detido = 1, time = parseInt(os.time()) })

					randmoney = math.random(90, 150)
					vRP.giveMoney(user_id, parseInt(randmoney))
					TriggerClientEvent("Notify", source, "sucesso", "Carro apreendido com sucesso.")
					TriggerClientEvent("Notify", source, "importante",
						"Você recebeu <b>$" .. vRP.format(parseInt(randmoney)) .. " dólares</b> de bonificação.")
					TriggerClientEvent("Notify", nplayer, "importante",
						"Seu Veículo foi <b>Detido</b>.<br><b>Motivo:</b> " ..
						motivo .. ".")
					vRPclient.playSound(source, "Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRENDER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('prender', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "policia.permissao") then
		local crimes = vRP.prompt(source, "Crimes:", "")
		if crimes == "" then
			return
		end

		local player = vRP.getUserSource(parseInt(args[1]))
		if player then
			vRP.setUData(parseInt(args[1]), "vRP:prisao", json.encode(parseInt(args[2])))
			vRPclient.setHandcuffed(player, false)
			TriggerClientEvent('prisioneiro', player, true)
			vRPclient.teleport(player, 1680.1, 2513.0, 45.5)
			prison_lock(parseInt(args[1]))
			TriggerClientEvent('removealgemas', player)
			TriggerClientEvent("vrp_sound:source", player, 'jaildoor', 0.7)
			TriggerClientEvent("vrp_sound:source", source, 'jaildoor', 0.7)


			local oficialid = vRP.getUserIdentity(user_id)
			local identity = vRP.getUserIdentity(parseInt(args[1]))
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			SendWebhookMessage(webhookprender,
				"```prolog\n[OFICIAL]: " ..
				user_id ..
				" " ..
				oficialid.name ..
				" " ..
				oficialid.firstname ..
				" \n[==============PRENDEU==============] \n[PASSAPORTE]: " ..
				(args[1]) ..
				" " ..
				identity.name ..
				" " ..
				identity.firstname ..
				" \n[TEMPO]: " ..
				vRP.format(parseInt(args[2])) ..
				" Meses \n[CRIMES]: " .. crimes .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")

			randmoney = math.random(90, 150)
			vRP.giveMoney(user_id, parseInt(randmoney))
			TriggerClientEvent("Notify", source, "sucesso", "Prisão efetuada com sucesso.")
			TriggerClientEvent("Notify", source, "importante",
				"Você recebeu <b>$" .. vRP.format(parseInt(randmoney)) .. " dólares</b> de bonificação.")
			TriggerClientEvent("Notify", nplayer, "importante",
				"Você foi preso por <b>" ..
				vRP.format(parseInt(args[2])) .. " meses</b>.<br><b>Motivo:</b> " .. crimes .. ".")
			vRPclient.playSound(source, "Hack_Success", "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RG
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rg', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "polpar.permissao") or
		vRP.hasPermission(user_id, "conce.permissao") or vRP.hasPermission(user_id, "juiz.permissao") then
		if args[1] then
			local nplayer = vRP.getUserSource(parseInt(args[1]))
			if nplayer == nil then
				TriggerClientEvent("Notify", source, "aviso", "Passaporte <b>" ..
				vRP.format(args[1]) .. "</b> indisponível no momento.")
				return
			end
			nuser_id = vRP.getUserId(nplayer)
			if nuser_id then
				local value = vRP.getUData(nuser_id, "vRP:multas")
				local valormultas = json.decode(value) or 0
				local identity = vRP.getUserIdentity(nuser_id)
				local carteira = vRP.getMoney(nuser_id)
				local banco = vRP.getBankMoney(nuser_id)
				vRPclient.setDiv(source, "completerg",
					".div_completerg { background-color: rgba(0,0,0,0.60); font-size: 13px; font-family: arial; color: #fff; width: 420px; padding: 20px 20px 5px; bottom: 8%; right: 2.5%; position: absolute; border: 1px solid rgba(255,255,255,0.2); letter-spacing: 0.5px; } .local { width: 220px; padding-bottom: 15px; float: left; } .local2 { width: 200px; padding-bottom: 15px; float: left; } .local b, .local2 b { color: #d1257d; }"
					,
					"<div class=\"local\"><b>Nome:</b> " ..
					identity.name ..
					" " ..
					identity.firstname ..
					" ( " ..
					vRP.format(identity.user_id) ..
					" )</div><div class=\"local2\"><b>Identidade:</b> " ..
					identity.registration ..
					"</div><div class=\"local\"><b>Idade:</b> " ..
					identity.age ..
					" Anos</div><div class=\"local2\"><b>Telefone:</b> " ..
					identity.phone ..
					"</div><div class=\"local\"><b>Multas pendentes:</b> " ..
					vRP.format(parseInt(valormultas)) ..
					"</div><div class=\"local2\"><b>Carteira:</b> " .. vRP.format(parseInt(carteira)) .. "</div>")
				vRP.request(source, "Você deseja fechar o registro geral?", 1000)
				vRPclient.removeDiv(source, "completerg")
			end
		else
			local nplayer = vRPclient.getNearestPlayer(source, 2)
			local nuser_id = vRP.getUserId(nplayer)
			if nuser_id then
				local value = vRP.getUData(nuser_id, "vRP:multas")
				local valormultas = json.decode(value) or 0
				local identityv = vRP.getUserIdentity(user_id)
				local identity = vRP.getUserIdentity(nuser_id)
				local carteira = vRP.getMoney(nuser_id)
				local banco = vRP.getBankMoney(nuser_id)
				TriggerClientEvent("Notify", nplayer, "importante",
					"Seu documento está sendo verificado por <b>" ..
					identityv.name .. " " .. identityv.firstname .. "</b>.")
				vRPclient.setDiv(source, "completerg",
					".div_completerg { background-color: rgba(0,0,0,0.60); font-size: 13px; font-family: arial; color: #fff; width: 420px; padding: 20px 20px 5px; bottom: 8%; right: 2.5%; position: absolute; border: 1px solid rgba(255,255,255,0.2); letter-spacing: 0.5px; } .local { width: 220px; padding-bottom: 15px; float: left; } .local2 { width: 200px; padding-bottom: 15px; float: left; } .local b, .local2 b { color: #d1257d; }"
					,
					"<div class=\"local\"><b>Nome:</b> " ..
					identity.name ..
					" " ..
					identity.firstname ..
					" ( " ..
					vRP.format(identity.user_id) ..
					" )</div><div class=\"local2\"><b>Identidade:</b> " ..
					identity.registration ..
					"</div><div class=\"local\"><b>Idade:</b> " ..
					identity.age ..
					" Anos</div><div class=\"local2\"><b>Telefone:</b> " ..
					identity.phone ..
					"</div><div class=\"local\"><b>Multas pendentes:</b> " ..
					vRP.format(parseInt(valormultas)) ..
					"</div><div class=\"local2\"><b>Carteira:</b> " .. vRP.format(parseInt(carteira)) .. "</div>")
				vRP.request(source, "Você deseja fechar o registro geral?", 1000)
				vRPclient.removeDiv(source, "completerg")
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ALGEMAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("vrp_policia:algemar")
AddEventHandler("vrp_policia:algemar", function()
	local source = source
	local user_id = vRP.getUserId(source)
	local nplayer = vRPclient.getNearestPlayer(source, 2)
	if nplayer then
		if not vRPclient.isHandcuffed(source) then
			if vRP.getInventoryItemAmount(user_id, "algemas") >= 1 then
				if vRPclient.isHandcuffed(nplayer) then
					TriggerClientEvent('carregar', nplayer, source)
					vRPclient._playAnim(source, false, { { "mp_arresting", "a_uncuff" } }, false)
					SetTimeout(5000, function()
						vRPclient.toggleHandcuff(nplayer)
						TriggerClientEvent('carregar', nplayer, source)
						TriggerClientEvent("vrp_sound:source", source, 'uncuff', 0.1)
						TriggerClientEvent("vrp_sound:source", nplayer, 'uncuff', 0.1)
						TriggerClientEvent('removealgemas', nplayer)
					end)
				else
					TriggerClientEvent('cancelando', source, true)
					TriggerClientEvent('cancelando', nplayer, true)
					TriggerClientEvent('carregar', nplayer, source)
					vRPclient._playAnim(source, false, { { "mp_arrest_paired", "cop_p2_back_left" } }, false)
					vRPclient._playAnim(nplayer, false, { { "mp_arrest_paired", "crook_p2_back_left" } }, false)
					SetTimeout(3500, function()
						vRPclient._stopAnim(source, false)
						vRPclient.toggleHandcuff(nplayer)
						TriggerClientEvent('carregar', nplayer, source)
						TriggerClientEvent('cancelando', source, false)
						TriggerClientEvent('cancelando', nplayer, false)
						TriggerClientEvent("vrp_sound:source", source, 'cuff', 0.1)
						TriggerClientEvent("vrp_sound:source", nplayer, 'cuff', 0.1)
						TriggerClientEvent('setalgemas', nplayer)
					end)
				end
			else
				if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "policia.permissao") then
					if vRPclient.isHandcuffed(nplayer) then
						TriggerClientEvent('carregar', nplayer, source)
						vRPclient._playAnim(source, false, { { "mp_arresting", "a_uncuff" } }, false)
						SetTimeout(5000, function()
							vRPclient.toggleHandcuff(nplayer)
							TriggerClientEvent('carregar', nplayer, source)
							TriggerClientEvent("vrp_sound:source", source, 'uncuff', 0.1)
							TriggerClientEvent("vrp_sound:source", nplayer, 'uncuff', 0.1)
							TriggerClientEvent('removealgemas', nplayer)
						end)
					else
						TriggerClientEvent('cancelando', source, true)
						TriggerClientEvent('cancelando', nplayer, true)
						TriggerClientEvent('carregar', nplayer, source)
						vRPclient._playAnim(source, false, { { "mp_arrest_paired", "cop_p2_back_left" } }, false)
						vRPclient._playAnim(nplayer, false, { { "mp_arrest_paired", "crook_p2_back_left" } }, false)
						SetTimeout(3500, function()
							vRPclient._stopAnim(source, false)
							vRPclient.toggleHandcuff(nplayer)
							TriggerClientEvent('carregar', nplayer, source)
							TriggerClientEvent('cancelando', source, false)
							TriggerClientEvent('cancelando', nplayer, false)
							TriggerClientEvent("vrp_sound:source", source, 'cuff', 0.1)
							TriggerClientEvent("vrp_sound:source", nplayer, 'cuff', 0.1)
							TriggerClientEvent('setalgemas', nplayer)
						end)
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CARREGAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("vrp_policia:carregar")
AddEventHandler("vrp_policia:carregar", function()
	local source = source
	local user_id = vRP.getUserId(source)
	local nplayer = vRPclient.getNearestPlayer(source, 2)
	if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "polpar.permissao") then
		if nplayer then
			if not vRPclient.isHandcuffed(source) then
				TriggerClientEvent('carregar', nplayer, source)
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RMASCARA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rmascara', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "policia.permissao") or vRP.hasPermission(user_id, "medico.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source, 2)
		if nplayer then
			TriggerClientEvent('rmascara', nplayer)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RCHAPEU
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rchapeu', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "polpar.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source, 2)
		if nplayer then
			TriggerClientEvent('rchapeu', nplayer)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RCAPUZ
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rcapuz', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "polpar.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source, 2)
		if nplayer then
			if vRPclient.isCapuz(nplayer) then
				vRPclient.setCapuz(nplayer)
				TriggerClientEvent("Notify", source, "sucesso", "Capuz colocado com sucesso.")
			else
				TriggerClientEvent("Notify", source, "importante", "A pessoa não está com o capuz na cabeça.")
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('re', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "medico.permissao") or
		vRP.hasPermission(user_id, "policia.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source, 2)
		if nplayer then
			if vRPclient.isInComa(nplayer) then
				local identity_user = vRP.getUserIdentity(user_id)
				local nuser_id = vRP.getUserId(nplayer)
				local identity_coma = vRP.getUserIdentity(nuser_id)
				local set_user = "Policia"
				if vRP.hasPermission(user_id, "paramedico.permissao") then
					set_user = "Paramedico"
				end
				TriggerClientEvent('cancelando', source, true)
				vRPclient._playAnim(source, false,
					{ { "amb@medic@standing@tendtodead@base", "base" }, { "mini@cpr@char_a@cpr_str", "cpr_pumpchest" } },
					true)
				TriggerClientEvent("progress", source, 30000, "reanimando")
				SetTimeout(30000, function()
					SendWebhookMessage(webhookre,
						"```prolog\n[ID]: " ..
						user_id ..
						" " ..
						identity_user.name ..
						" " ..
						identity_user.firstname ..
						" \n[REVIVEU]: " ..
						nuser_id ..
						" " ..
						identity_coma.name ..
						" " .. identity_coma.firstname .. "\n[SET]: " .. set_user ..
						os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
					vRPclient.killGod(nplayer)
					vRPclient._stopAnim(source, false)
					vRP.giveMoney(user_id, 200)
					TriggerClientEvent("resetBleeding", nplayer)
					TriggerClientEvent('cancelando', source, false)
				end)
			else
				TriggerClientEvent("Notify", source, "importante", "A pessoa precisa estar em coma para prosseguir.")
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CV
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cv', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "dono.permissao") or vRP.hasPermission(user_id, "policia.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source, 10)
		if nplayer then
			vRPclient.putInNearestVehicleAsPassenger(nplayer, 7)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RV
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('rv', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "polpar.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source, 10)
		if nplayer then
			vRPclient.ejectVehicle(nplayer)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- APREENDER
-----------------------------------------------------------------------------------------------------------------------------------------
local itemlist = {
	["dinheirosujo"] = 1,
	["capsula"] = 1,
	["algemas"] = 1,
	["capuz"] = 1,
	["lockpick"] = 1,
	["masterpick"] = 1,
	["orgao"] = 1,
	["orgaobatido"] = 1,
	["orgaos"] = 1,
	-- "pecaeletronica",
	-- "computadormontado",
	-- "identidadedigital",
	["identidadefisica"] = 1,
	-- "tartaruga",
	-- "carnedetartaruga",
	-- "etiqueta",
	-- "pendrive",
	["relogioroubado"] = 1,
	["pulseiraroubada"] = 1,
	["anelroubado"] = 1,
	["colarroubado"] = 1,
	["vibradorroubado"] = 1,
	["perfumeroubado"] = 1,
	["brincoroubado"] = 1,
	["carteiraroubada"] = 1,
	["tabletroubado"] = 1,
	["sapatosroubado"] = 1,
	-- "armacaodearma",
	-- "pecadearma",
	-- Maconha ------------------
	["maconha"] = 1,
	["ramosdemaconha"] = 1,
	["maconhanaoprocessada"] = 1,
	["maconhamisturada"] = 1,
	["baseado"] = 1,
	["seda"] = 1,
	-- "receita1",
	-- "receita2",
	-----------------------------
	-- Ecstasy ------------------
	["ecstasy"] = 1,
	["ociacido"] = 1,
	["ocitocina"] = 1,
	["primaecstasy"] = 1,
	-----------------------------
	-- Cocaína ------------------
	["folhadecoca"] = 1,
	["pastadecoca"] = 1,
	["cocamisturada"] = 1,
	["cocaina"] = 1,
	-- "impostoderendafalso",
	-----------------------------
	["metanfetamina"] = 1,
	["anfetamina"] = 1,
	["cristal"] = 1,
	["lsd"] = 1,
	-- "logsinvasao",
	-- "acessodeepweb",
	-- "keysinvasao",
	-- "pendriveinformacoes",
	-- "radio",
	-- "keycard",
	["c4"] = 1,
	-- "serra",
	-- "furadeira",
	-- "wbody|WEAPON_DAGGER",
	-- "wbody|WEAPON_BAT",
	-- "wbody|WEAPON_BOTTLE",
	-- "wbody|WEAPON_CROWBAR",
	-- "wbody|WEAPON_FLASHLIGHT",
	-- "wbody|WEAPON_GOLFCLUB",
	-- "wbody|WEAPON_HAMMER",
	-- "wbody|WEAPON_HATCHET",
	-- "wbody|WEAPON_KNUCKLE",
	-- "wbody|WEAPON_KNIFE",
	-- "wbody|WEAPON_MACHETE",
	-- "wbody|WEAPON_SWITCHBLADE",
	-- "wbody|WEAPON_NIGHTSTICK",
	-- "wbody|WEAPON_WRENCH",
	-- "wbody|WEAPON_BATTLEAXE",
	-- "wbody|WEAPON_POOLCUE",
	-- "wbody|WEAPON_STONE_HATCHET",
	["wbody|WEAPON_PISTOL"] = 1,
	["wbody|WEAPON_COMBATPISTOL"] = 1,
	["wbody|WEAPON_CARBINERIFLE"] = 1,
	["wbody|WEAPON_SMG"] = 1,
	["wbody|WEAPON_PUMPSHOTGUN_MK2"] = 1,
	["wbody|WEAPON_STUNGUN"] = 1,
	["wbody|WEAPON_NIGHTSTICK"] = 1,
	["wbody|WEAPON_SNSPISTOL"] = 1,
	["wbody|WEAPON_MICROSMG"] = 1,
	["wbody|WEAPON_ASSAULTRIFLE"] = 1,
	["wbody|WEAPON_SPECIALCARBINE"] = 1,
	["wbody|WEAPON_BZGAS"] = 1,
	["wbody|WEAPON_FIREEXTINGUISHER"] = 1,
	["wbody|WEAPON_FLARE"] = 1,
	["wbody|WEAPON_REVOLVER"] = 1,
	["wbody|WEAPON_PISTOL_MK2"] = 1,
	["wbody|WEAPON_VINTAGEPISTOL"] = 1,
	["wbody|WEAPON_MUSKET"] = 1,
	["wbody|WEAPON_GUSENBERG"] = 1,
	["wbody|WEAPON_ASSAULTSMG"] = 1,
	["wbody|WEAPON_COMBATPDW"] = 1,
	["wbody|WEAPON_COMPACTRIFLE"] = 1,
	["wbody|WEAPON_CARBINERIFLE_MK2"] = 1,
	["wbody|WEAPON_MACHINEPISTOL"] = 1,
	["wbody|WEAPON_PUMPSHOTGUN"] = 1,
	["wbody|WEAPON_SAWNOFFSHOTGUN"] = 1,
	["wbody|WEAPON_BULLPUPRIFLE"] = 1,
	["wammo|WEAPON_SAWNOFFSHOTGUN"] = 1,
	["wammo|WEAPON_BULLPUPRIFLE"] = 1,
	["wammo|WEAPON_DAGGER"] = 1,
	["wammo|WEAPON_BAT"] = 1,
	["wammo|WEAPON_BOTTLE"] = 1,
	["wammo|WEAPON_CROWBAR"] = 1,
	["wammo|WEAPON_FLASHLIGHT"] = 1,
	["wammo|WEAPON_GOLFCLUB"] = 1,
	["wammo|WEAPON_HAMMER"] = 1,
	["wammo|WEAPON_HATCHET"] = 1,
	["wammo|WEAPON_KNUCKLE"] = 1,
	["wammo|WEAPON_KNIFE"] = 1,
	["wammo|WEAPON_MACHETE"] = 1,
	["wammo|WEAPON_SWITCHBLADE"] = 1,
	["wammo|WEAPON_WRENCH"] = 1,
	["wammo|WEAPON_BATTLEAXE"] = 1,
	["wammo|WEAPON_POOLCUE"] = 1,
	["wammo|WEAPON_STONE_HATCHET"] = 1,
	["wammo|WEAPON_PISTOL"] = 1,
	["wammo|WEAPON_COMBATPISTOL"] = 1,
	["wammo|WEAPON_CARBINERIFLE"] = 1,
	["wammo|WEAPON_SMG"] = 1,
	["wammo|WEAPON_PUMPSHOTGUN"] = 1,
	["wammo|WEAPON_PUMPSHOTGUN_MK2"] = 1,
	["wammo|WEAPON_STUNGUN"] = 1,
	["wammo|WEAPON_NIGHTSTICK"] = 1,
	["wammo|WEAPON_SNSPISTOL"] = 1,
	["wammo|WEAPON_MICROSMG"] = 1,
	["wammo|WEAPON_ASSAULTRIFLE"] = 1,
	["wammo|WEAPON_SPECIALCARBINE"] = 1,
	["wammo|WEAPON_FIREEXTINGUISHER"] = 1,
	["wammo|WEAPON_FLARE"] = 1,
	["wammo|WEAPON_REVOLVER"] = 1,
	["wammo|WEAPON_PISTOL_MK2"] = 1,
	["wammo|WEAPON_VINTAGEPISTOL"] = 1,
	["wammo|WEAPON_MUSKET"] = 1,
	["wammo|WEAPON_GUSENBERG"] = 1,
	["wammo|WEAPON_ASSAULTSMG"] = 1,
	["wammo|WEAPON_COMBATPDW"] = 1,
	["wammo|WEAPON_MACHINEPISTOL"] = 1,
	["wammo|WEAPON_CARBINERIFLE_MK2"] = 1,
	["wammo|WEAPON_COMPACTRIFLE"] = 1,
	["projetoassaultrifle"] = 1,
	["projetoassaultsmg"] = 1,
	["projetobullpuprifle"] = 1,
	["projetocarbinerifle"] = 1,
	["projetocombatpdw"] = 1,
	["projetocombatpistol"] = 1,
	["projetogusenberg"] = 1,
	["projetopistol"] = 1,
	["projetopumpshotgun"] = 1,
	["projetosawnoffshotgun"] = 1,
	["projetosmg"] = 1,
	["ferramentas"] = 1,
	["detonador"] = 1
}


RegisterCommand('tirarfome', function(source, args)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "admin.permissao") then
		vRP.setHunger(user_id, 0)
		vRP.setThirst(user_id, 0)
	end
end)


RegisterCommand('apreender', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)

	if vRP.hasPermission(user_id, "policia.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source, 2)

		if nplayer then
			local identity = vRP.getUserIdentity(user_id)
			local nuser_id = vRP.getUserId(nplayer)
			if nuser_id then
				local nidentity = vRP.getUserIdentity(nuser_id)
				local weapons = vRPclient.replaceWeapons(nplayer, {})

				for k, v in pairs(weapons) do
					vRP.giveInventoryItem(nuser_id, "wbody|" .. k, 1)
					if v.ammo > 0 then
						vRP.giveInventoryItem(nuser_id, "wammo|" .. k, v.ammo)
					end
				end

				local inv = vRP.getInventory(nuser_id)

				local itemsApreendidos = {}

				for _, v in pairs(inv) do
					local itemId = v.item
					local amount = v.amount
					if itemlist[itemId] then
						local itemdef = vRP.getItemDefinition(itemId)
						if itemdef and amount > 0 then
							if vRP.tryGetInventoryItem(nuser_id, itemId, amount, true) then
								itemsApreendidos[#itemsApreendidos + 1] = ("[%s] %s - %d"):format(itemId, itemdef, amount)
							end
						end
					end
				end

				if #itemsApreendidos > 0 then
					local apreendidos = table.concat(itemsApreendidos, "\n")

					local content = {
						author      = { name = "Apreensão" },
						title       = "Itens",
						description = apreendidos,
						fields      = {
							{ name = "Oficial",  value = ("%d - %s %s"):format(user_id, identity.name, identity.firstname) },
							{ name = "Cidadão", value = ("%d - %s %s"):format(nuser_id, nidentity.name, nidentity.firstname) },
						},
						color       = 3447003,
						timestamp   = Discord.timestamp()
					}


					Discord:SendWebhook(webhookpoliciaapreendidos, {
						embeds = { content }
					})

					TriggerClientEvent("Notify", nplayer, "importante", "Todos os seus pertences foram apreendidos.")
					TriggerClientEvent("Notify", source, "importante", "Apreendeu todos os pertences da pessoa.")
				else
					TriggerClientEvent("Notify", source, "importante", "Não há nada de ilegal.")
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARSENAL
-----------------------------------------------------------------------------------------------------------------------------------------
-- RegisterCommand('arsenal', function(source, args, rawCommand)
-- 	local user_id = vRP.getUserId(source)
-- 	if vRP.hasPermission(user_id, "policia.permissao") then
-- 		TriggerClientEvent('arsenal', source)
-- 	end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- EXTRAS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('extras', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "policia.permissao") then
		if vRPclient.isInVehicle(source) then
			TriggerClientEvent('extras', source)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRYEXTRAS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("tryextras")
AddEventHandler("tryextras", function(index, extra)
	TriggerClientEvent("syncextras", -1, index, parseInt(extra))
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cone', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "polpar.permissao") or vRP.hasPermission(user_id, "speed.permissao") or
		vRP.hasPermission(user_id, "mecanico.permissao") or vRP.hasPermission(user_id, "speed.permissao") then
		TriggerClientEvent('cone', source, args[1])
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BARREIRA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('barreira', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "polpar.permissao") or vRP.hasPermission(user_id, "speed.permissao") or
		vRP.hasPermission(user_id, "mecanico.permissao") or vRP.hasPermission(user_id, "speed.permissao") then
		TriggerClientEvent('barreira', source, args[1])
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPIKE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('spike', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "policia.permissao") then
		TriggerClientEvent('spike', source, args[1])
	end
end)
--------------------------------------------------------------------------------------------------------------------------------------------------
-- DISPAROS
--------------------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('atirando')
AddEventHandler('atirando', function(x, y, z, infos)
	local user_id = vRP.getUserId(source)
	if user_id then
		if not vRP.hasPermission(user_id, "policia.permissao") then
			local policiais = vRP.getUsersByPermission("policia.permissao")
			for l, w in pairs(policiais) do
				local player = vRP.getUserSource(w)
				if player then
					TriggerClientEvent('notificacao', player, x, y, z, user_id, infos)
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ANUNCIO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('anuncio', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "policia.permissao") or
		vRP.hasPermission(user_id, "conce.permissao") or vRP.hasPermission(user_id, "news.permissao") then
		local identity = vRP.getUserIdentity(user_id)
		local mensagem = vRP.prompt(source, "Mensagem:", "")
		if mensagem == "" then
			return
		end
		vRPclient.setDiv( -1, "anuncio",
			".div_anuncio { background: rgba(0,128,192,0.8); font-size: 11px; font-family: arial; color: #fff; padding: 20px; bottom: 7%; right: 5%; max-width: 500px; position: absolute; -webkit-border-radius: 5px; } bold { font-size: 15px; }"
			, "<bold>" ..
		mensagem .. "</bold><br><br>Mensagem enviada por: " .. identity.name .. " " .. identity.firstname)
		SetTimeout(30000, function()
			vRPclient.removeDiv( -1, "anuncio")
		end)
	end
end)
--------------------------------------------------------------------------------------------------------------------------------------------------
-- PRISÃO
--------------------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
	local player = vRP.getUserSource(parseInt(user_id))
	if player then
		SetTimeout(30000, function()
			local value = vRP.getUData(parseInt(user_id), "vRP:prisao")
			local tempo = json.decode(value) or -1

			if tempo == -1 then
				return
			end

			if tempo > 0 then
				TriggerClientEvent('prisioneiro', player, true)
				vRPclient.teleport(player, 1680.1, 2513.0, 46.5)
				prison_lock(parseInt(user_id))
			end
		end)
	end
end)

function prison_lock(target_id)
	local player = vRP.getUserSource(parseInt(target_id))
	if player then
		SetTimeout(60000, function()
			local value = vRP.getUData(parseInt(target_id), "vRP:prisao")
			local tempo = json.decode(value) or 0
			if parseInt(tempo) >= 1 then
				TriggerClientEvent("Notify", player, "importante",
					"Ainda vai passar <b>" .. parseInt(tempo) .. " meses</b> preso.")
				vRP.setUData(parseInt(target_id), "vRP:prisao", json.encode(parseInt(tempo) - 1))
				prison_lock(parseInt(target_id))
			elseif parseInt(tempo) == 0 then
				TriggerClientEvent('prisioneiro', player, false)
				vRPclient.teleport(player, 1850.5, 2604.0, 45.5)
				vRP.setUData(parseInt(target_id), "vRP:prisao", json.encode( -1))
				TriggerClientEvent("Notify", player, "importante",
					"Sua sentença terminou, esperamos não ve-lo novamente.")
			end
			vRPclient.PrisionGod(player)
		end)
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- DIMINUIR PENA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("diminuirpena")
AddEventHandler("diminuirpena", function()
	local source = source
	local user_id = vRP.getUserId(source)
	local value = vRP.getUData(parseInt(user_id), "vRP:prisao")
	local tempo = value or 0
	if tempo >= 2 then
		vRP.setUData(parseInt(user_id), "vRP:prisao", parseInt(tempo) - 2)
		TriggerClientEvent("Notify", source, "importante",
			"Sua pena foi reduzida em <b>2 meses</b>, continue o trabalho.")
	else
		TriggerClientEvent("Notify", source, "importante",
			"Atingiu o limite da redução de pena, não precisa mais trabalhar.")
	end
end)
