local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
func = {}
Tunnel.bindInterface("nation_arsenal",func)

function func.hasPermission(perm)
    local source = source
    local user_id = vRP.getUserId(source)
    return vRP.hasPermission(user_id,perm)
end
