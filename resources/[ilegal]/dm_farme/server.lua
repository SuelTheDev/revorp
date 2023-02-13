local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
emP = {}
local idgens = Tools.newIDGenerator()
Tunnel.bindInterface("dm_farme",emP)
vRPclient = Tunnel.getInterface("vRP")

-----------------------------------------------------------------------------------------------------------------------------------------
-- QUANTIDADE
-----------------------------------------------------------------------------------------------------------------------------------------
local quantidade = {}
function emP.Quantidade()
	local source = source
	if quantidade[source] == nil then
			quantidade[source] = math.random(1,2)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PERMISSAO
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkPermission(perm)
	local source = source
	local user_id = vRP.getUserId(source)
	return vRP.hasPermission(user_id,perm)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAGAMENTO
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkPayment()
	emP.Quantidade()
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		if vRP.hasPermission(user_id,"bahamas.permissao") then
		    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("linha")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("pano")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("alvejante")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("papel")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("fioseletricos")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("ferro")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) then
			    vRP.giveInventoryItem(user_id,"linha",math.random(2,2))
			    vRP.giveInventoryItem(user_id,"pano",math.random(2,2))
				vRP.giveInventoryItem(user_id,"ferro",math.random(4,6))
				vRP.giveInventoryItem(user_id,"fioseletricos",math.random(2,2))
				vRP.giveInventoryItem(user_id,"alvejante",math.random(1,3))
				vRP.giveInventoryItem(user_id,"papel",math.random(1,3))
				-- SendWebhookMessage(webhookfarme,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[ROTA FARME RECEBEU]: LINHA E PANO "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
				quantidade[source] = nil
				return true
			end

		elseif vRP.hasPermission(user_id,"yakuza.permissao") then
		    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("ferro")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("polvora")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("capsula")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("pecadearma")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("armacaodearma")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) then
			vRP.giveInventoryItem(user_id,"ferro",math.random(1,8))
			vRP.giveInventoryItem(user_id,"polvora",math.random(1,8))
			vRP.giveInventoryItem(user_id,"capsula",math.random(1,8))
			vRP.giveInventoryItem(user_id,"armacaodearma",math.random(1,8))
			vRP.giveInventoryItem(user_id,"pecadearma",math.random(1,8))
			-- SendWebhookMessage(webhookfarme,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[ROTA FARME RECEBEU]: FERRO , POLVORA E LOG DE INVASAO "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		    quantidade[source] = nil
			return true
			end
			

		elseif vRP.hasPermission(user_id,"mafia.permissao") then
		    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("polvora")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("capsula")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) then
			vRP.giveInventoryItem(user_id,"polvora",math.random(5,6))
			vRP.giveInventoryItem(user_id,"capsula",math.random(5,6))
			-- SendWebhookMessage(webhookfarme,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[ROTA FARME RECEBEU]: POLVORA E CAPSULA "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		    quantidade[source] = nil
			return true
		    end
		elseif vRP.hasPermission(user_id,"lavagem.permissao") or vRP.hasPermission(user_id,"lavagem.permissao") then
		    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("alvejante")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("papel")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) then
			vRP.giveInventoryItem(user_id,"alvejante",math.random(1,3))
			vRP.giveInventoryItem(user_id,"papel",math.random(1,3))
			-- SendWebhookMessage(webhookfarme,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[ROTA FARME RECEBEU]: POLVORA E CAPSULA "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		    quantidade[source] = nil
			return true
		    end

		elseif vRP.hasPermission(user_id,"dk.permissao") then
		    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("fioseletricos")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("ferro")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) then
			vRP.giveInventoryItem(user_id,"fioseletricos",math.random(2,3))
			vRP.giveInventoryItem(user_id,"ferro",math.random(2,3))
			-- SendWebhookMessage(webhookfarme,"```prolog\n[ID]: "..user_id.." "..identity.name.." "..identity.firstname.." \n[ROTA FARME RECEBEU]: ARMACAO DE ARMA E PEÇA DE ARMA "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
		    quantidade[source] = nil
			return true
			end


		elseif vRP.hasPermission(user_id,"cartel.permissao") then
		    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("armacaodearma")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) and vRP.getInventoryWeight(user_id)+vRP.getItemWeight("pecadearma")*quantidade[source] <= vRP.getInventoryMaxWeight(user_id) then
			vRP.giveInventoryItem(user_id,"armacaodearma",math.random(4,6))
			vRP.giveInventoryItem(user_id,"pecadearma",math.random(4,6))			
		    quantidade[source] = nil
			return true
			end
		end
	end
	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA
-----------------------------------------------------------------------------------------------------------------------------------------
local blips = {}
function emP.MarcarOcorrencia()
	local source = source
	local user_id = vRP.getUserId(source)
	local x,y,z = vRPclient.getPosition(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		local soldado = vRP.getUsersByPermission("policia.permissao")
		for l,w in pairs(soldado) do
			local player = vRP.getUserSource(parseInt(w))
			if player then
				async(function()
					local id = idgens:gen()
					blips[id] = vRPclient.addBlip(player,x,y,z,10,84,"Ocorrência",0.5,false)
					vRPclient._playSound(player,"CONFIRM_BEEP","HUD_MINI_GAME_SOUNDSET")
					TriggerClientEvent('chatMessage',player,"911",{64,64,255},"Recebemos uma denuncia de itens ilegais sendo comerciado, verifique o ocorrido.")
					SetTimeout(30000,function() vRPclient.removeBlip(player,blips[id]) idgens:free(id) end)
				end)
			end
		end
	end
end

