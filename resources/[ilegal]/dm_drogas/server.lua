local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

emP = {}
local idgens = Tools.newIDGenerator()
Tunnel.bindInterface("dm_drogas",emP)

-----------------------------------------------------------------------------------------------------------------------------------------
-- QUANTIDADE
-----------------------------------------------------------------------------------------------------------------------------------------
local quantidade = {}
function emP.Quantidade()
	local source = source
	if quantidade[source] == nil then
		quantidade[source] = math.random(3,5)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITENS
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkItens()
	emP.Quantidade()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then 
        return vRP.getInventoryItemAmount(user_id,"maconha") >= quantidade[source] or  vRP.getInventoryItemAmount(user_id,"cocaina") >= quantidade[source]  or  vRP.getInventoryItemAmount(user_id,"metanfetamina") >= quantidade[source]  or  vRP.getInventoryItemAmount(user_id,"lsd") >= quantidade[source]  or  vRP.getInventoryItemAmount(user_id,"ecstasy") >= quantidade[source]
	end
end


function emP.checkPermissao()
	local source = source
	local user_id = vRP.getUserId(source)
	return not vRP.hasPermission(user_id,"policia.permissao")	
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PAGAMENTO
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkPayment()
	local source = source
	local user_id = vRP.getUserId(source)
	local policia = {}
	policia = vRP.getUsersByPermission("policia.permissao")
	local bonus = 0

	if #policia >= 0 and #policia <= 3 then
        bonus = 10
    elseif #policia >= 4 and #policia <= 6 then
        bonus = 30
    elseif #policia >= 7 and #policia <= 10 then
		bonus = 50
	elseif #policia >= 11 and #policia <= 14 then
        bonus = 80
    elseif #policia > 15 then
        bonus = 90
    end

	if user_id then
		if vRP.tryGetInventoryItem(user_id,"maconha",quantidade[source]) then
			vRP.giveInventoryItem(user_id,"dinheirosujo", (parseInt(500) + bonus) * quantidade[source])
		end
		if vRP.tryGetInventoryItem(user_id,"cocaina",quantidade[source]) then
			vRP.giveInventoryItem(user_id,"dinheirosujo", (parseInt(500) + bonus) * quantidade[source])
		end
		if vRP.tryGetInventoryItem(user_id,"metanfetamina",quantidade[source]) then
			vRP.giveInventoryItem(user_id,"dinheirosujo", (parseInt(500) + bonus) * quantidade[source])
		end
		if vRP.tryGetInventoryItem(user_id,"lsd",quantidade[source]) then
			vRP.giveInventoryItem(user_id,"dinheirosujo", (parseInt(500) + bonus) * quantidade[source])
		end
		if vRP.tryGetInventoryItem(user_id,"ecstasy",quantidade[source]) then
			vRP.giveInventoryItem(user_id,"dinheirosujo", (parseInt(500) + bonus) * quantidade[source])
		end
		quantidade[source] = nil
		return true
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- POLICIA
-----------------------------------------------------------------------------------------------------------------------------------------
local blips = {}
function emP.MarcarOcorrencia()
	local source = source
	local user_id = vRP.getUserId(source)
	local x,y,z = vRPclient.getPosition(source)	
	if user_id then
		local soldado = vRP.getUsersByPermission("policia.permissao")
		for l,w in pairs(soldado) do
			local player = vRP.getUserSource(parseInt(w))
			if player then
				async(function()
					local id = idgens:gen()
					blips[id] = vRPclient.addBlip(player,x,y,z,10,84,"Ocorrência",0.5,false)
					vRPclient._playSound(player,"CONFIRM_BEEP","HUD_MINI_GAME_SOUNDSET")
					TriggerClientEvent('chatMessage',player,"911",{64,64,255},"Recebemos uma denuncia de tráfico, verifique o ocorrido.")
					SetTimeout(20000,function() vRPclient.removeBlip(player,blips[id]) idgens:free(id) end)
				end)
			end
		end		
	end
end