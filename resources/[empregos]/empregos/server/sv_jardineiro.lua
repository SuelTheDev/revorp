local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local vRP = Proxy.getInterface("vRP")
local db = Emprego
local src = {}

Tunnel.bindInterface("empJardineiro", src)
vCLIENT = Tunnel.getInterface("empJardineiro")

local emprego_nome <const> = "jardineiro"

local cfg = ConfigEmprego[emprego_nome]


AddEventHandler("vRP:playerSpawn", function(user_id)
    async(function()
        Wait(250 + math.random(1, 5) * 1000)        
        db.create(user_id, emprego_nome)
    end)    
end)

src.CheckLevel = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        local info = db.getEmpregoInfo(user_id, emprego_nome)
        return info.rc, info.level, info.exp
    end
end

src.return_dinheiro = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        return vRP.getMoney(user_id) or 0
    end
end

src.checkItem = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if not user_id then return false end
    if cfg.need_item then
        return vRP.getInventoryItemAmount(user_id, cfg.item_necessario) > 0
    end
    return true
end

src.pagar = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        return FazerPagamento(user_id, emprego_nome, source)
    end
end

src.addRota = function()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        db.updateRota(user_id, 1, emprego_nome)
    end
end