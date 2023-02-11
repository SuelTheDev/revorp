local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
emP = {}
Tunnel.bindInterface("farm_lavagem1",emP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PERMISSAO / FARM DE ENERGETICO
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkPermission()
	local source = source
	local user_id = vRP.getUserId(source)
	return vRP.hasPermission(user_id,"lavar.dinheiro") -- Permissao de quem vai poder acessar o blip da rota
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkPayment()
	local source = source
   local user_id = vRP.getUserId(source)
   local quantp = math.random(4,7) -- quantidade Alvejante 
   local quantl = math.random(4,7) -- quantidade energetico 
	if user_id then
		if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("alvejante") <= vRP.getInventoryMaxWeight(user_id) then
         vRP.giveInventoryItem(user_id,"alvejante",quantp) --Aqui vc muda o item que vai dar pro cara 
		 vRP.giveInventoryItem(user_id,"alvejante",quantl)
         TriggerClientEvent("Notify",source,"sucesso","<b>Você Recebeu "..quantp.."x Alvejante</b>") -- Se for usar outro Item mude aqui 
         return true
      else
         TriggerClientEvent("Notify",source,"negado","<b>Inventário Cheio</b>.")
		end
	end
end
math.random(2)
