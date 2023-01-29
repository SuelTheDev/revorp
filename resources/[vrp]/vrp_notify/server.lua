-----------------------------------------------------------------------------------------------------------------------------------------
------------ DESENVOLVIDO POR CARIOCA COMMUNITY -- DISCORD: discord.gg/78sERGaWQm -- SCRIPT GRATUITO -- FAVOR NÃO REVENDER! -------------
-----------------------------------------------------------------------------------------------------------------------------------------

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

RegisterCommand('adm',function(source,args,rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id,"mindmaster.permissao")then
        local mensagem = vRP.prompt(source,"Mensagem:","")
        if mensagem == "" then
            return
        end
        TriggerClientEvent("NotifyAdm",-1,identity.name,mensagem)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
------------ DESENVOLVIDO POR CARIOCA COMMUNITY -- DISCORD: discord.gg/78sERGaWQm -- SCRIPT GRATUITO -- FAVOR NÃO REVENDER! -------------
-----------------------------------------------------------------------------------------------------------------------------------------