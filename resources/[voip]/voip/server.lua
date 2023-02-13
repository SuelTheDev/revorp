-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
local cnVRP = {}
Tunnel.bindInterface("voip", cnVRP)
vCLIENT = Tunnel.getInterface("voip")
local config = RadioConfig
-----------------------------------------------------------------------------------------------------------------------------------------
-- ACTIVEFREQUENCY
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.activeFrequency(freq)
	local source = source
	local user_id = vRP.getUserId(source)
	local freq = parseInt(freq)
	if freq > 0 and freq <= 999 then
		if config[freq] then
			if vRP.hasPermission(user_id, config[freq].permissao) then
				vCLIENT._startFrequency(source, freq)
				TriggerClientEvent("hud:channel", source, freq)
				TriggerClientEvent("Notify", source, "sucesso", "Rádio <b>" .. parseInt(freq) .. ".0Mhz</b>.", 5000)
			else
				return TriggerClientEvent("Notify", source, "negado", "Você não tá autorizado entrar na frequência.",
						5000)
			end
		else
			vCLIENT._startFrequency(source, freq)
			TriggerClientEvent("hud:channel", source, freq)
			TriggerClientEvent("Notify", source, "sucesso", "Rádio <b>" .. freq .. ".0Mhz</b>.", 5000)
		end
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKRADIO
-----------------------------------------------------------------------------------------------------------------------------------------
function cnVRP.checkRadio()
	local source = source
	local user_id = vRP.getUserId(source)
	return user_id and vRP.getInventoryItemAmount(user_id, "radio") >= 1
end
