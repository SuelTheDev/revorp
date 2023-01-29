local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
emP = {}
Tunnel.bindInterface("farm_meta",emP)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECAR DINHEIRO SUJO
-----------------------------------------------------------------------------------------------------------------------------------------
function emP.checkPayment()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        vRP.giveInventoryItem(user_id,"metanfetamina",12) -- ITEM QUE O PLAYER RECEBE
        TriggerClientEvent("Notify",source,"sucesso","Você produziu <b>12x Metanfetamina</b>.")
    end
end

function emP.permMeta()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id,"meta.permissao") then -- PERMISSAO QUE O PLAYER NECESSITA
            return true
        else
            TriggerClientEvent("Notify",source,"negado","Você não tem permissão para <b>produzir metanfetamina</b>.")
            return false
        end
    end
end