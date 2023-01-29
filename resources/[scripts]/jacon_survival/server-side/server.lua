-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
cRP = {}
Tunnel.bindInterface("jacon_survival",cRP)
vCLIENT = Tunnel.getInterface("jacon_survival")
-----------------------------------------------------------------------------------------------------------------------------------------
-- GG
-----------------------------------------------------------------------------------------------------------------------------------------
function cRP.ResetPedToHospital()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local clear = vRP.clearInventory(user_id)
			if clear then
				vRPclient._clearWeapons(source)
				Wait(2000)
			end
		end
	end