local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")

vRPclient = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")

func = {}
Tunnel.bindInterface("job_load_delivery", func)
vCLIENT = Tunnel.getInterface("job_load_delivery")
vINVENTORY = Tunnel.getInterface("vrp_inventory")
vehicle = {}
custom = {}

function func.payment(codigo)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        for _,v in ipairs(_config) do
            if v.Code == codigo then
                TriggerEvent("vrp_inventory:updateLevel",user_id,v.Code,v.LevelBonus)
                TriggerEvent("vrp_inventory:givebonus",user_id, v.Code)
                local pagamento = v.Payment 
                vRP.giveMoney(user_id,parseInt(pagamento))
                TriggerClientEvent("Notify",source,"sucesso","Você recebeu R$ "..pagamento.." por essa entrega!")
            end
        end
    end
end

function func.SetClothJob(roupa)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id and roupa then
		--print(cfg[lugar][roupas])

		local old_custom = vRPclient.getCustomization(source)
		local idle_copy = {}
		custom[user_id] = old_custom
		if roupa[old_custom.modelhash] ~= nil then
			for l,w in pairs(roupa[old_custom.modelhash]) do
				idle_copy[l] = w
			end
			vRPclient._setCustomization(source,idle_copy)
		end
	end
end

function func.Remove()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        vRPclient._setCustomization(source,custom[user_id])
    end
end

function func.request(accept,request)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local ok = vRP.request(source,request,60)
        if ok then  TriggerClientEvent("Notify",source,"sucesso",accept) end
        return ok
    end
    return false
end

RegisterServerEvent('loadDelivery:increaseBox')
AddEventHandler('loadDelivery:increaseBox', function(code, veh, prop)
    if vehicle[veh] ~= nil then
        local variavel = #vehicle[veh] + 1
        vehicle[veh][variavel] = prop
        TriggerClientEvent("loadDelivery:sync",-1, vehicle)
    else
        vehicle[veh] = {}
        vehicle[veh][1] = prop
        TriggerClientEvent("loadDelivery:sync",-1, vehicle)
    end
end)

RegisterServerEvent('loadDelivery:sync')
AddEventHandler('loadDelivery:sync', function(code, veh, prop)
    if vehicle ~= nil then
        TriggerClientEvent("loadDelivery:sync",-1, vehicle)
    end
end)

RegisterServerEvent('loadDelivery:decreaseBox')
AddEventHandler('loadDelivery:decreaseBox', function(code, veh, prop)
    if vehicle[veh] ~= nil then
        local variavel = #vehicle[veh]
        TriggerClientEvent("syncdeleteobj",-1,vehicle[veh][variavel])
        vehicle[veh][variavel] = nil
        TriggerClientEvent("loadDelivery:sync",-1, vehicle)
    end
end)

RegisterServerEvent("trydeleteobj")
AddEventHandler("trydeleteobj",function(index)
    TriggerClientEvent("syncdeleteobj",-1,index)
end)

----------------------- remove pos sair

AddEventHandler("vRP:playerLeave",function(user_id,source)
	custom[user_id] = nil
end)