Discord = {}
Discord.webhooks = {
    
    ['noobi-vip'] = "",
    ['harry-craft'] = "",
    ['cc_mdt:criar-boleto'] = "",
    ['cc_mdt:del-boleto'] = "",
    ['cc_mdt:prender'] = "",
    ['cc_mdt:del-cadastro'] = "",
    ['inventory:revistar'] = "",
    ['inventory:roubar'] = "",
    ['inventory:send'] = "",
    ['inventory:dropar'] = "",
    ['inventory:equip'] = "",
    ['inventory:casa'] = "",
    ['inventory:carro'] = "",
    ['inventory:antidump'] = "",
    ['vrp_roubos:lojadepartamento'] = "",
    ['vrp_roubos:registradora'] = "",
    ['vrp_roubos:caixa'] = "",
    ['vrp_roubos:bancopaleto'] = "",
    ['vrp_roubos:banco'] = "",
    ['vrp_roubos:ammunation'] = "",
    ['vrp_player:garmas'] = "",
    ['vrp_player:money'] = "",  
    ['vrp_player:saquear'] = "",
    ['vrp_player:bancocentral_bug'] = "",
    ['vrp_policia:arsenal'] = "",
    ['vrp_policia:prender'] = "",
    ['vrp_policia:multas'] = "",
    ['vrp_policia:ocorrenccia'] = "",
    ['vrp_policia:detido'] = "",
    ['vrp_policia:policiaponto'] = "",
    ['vrp_policia:policialponto'] = "",
    ['vrp_policia:paramedicoponto'] = "",
    ['vrp_policia:revive'] = "",
    ['vrp_policia:apreendido'] = "",

}



Discord.getTimestamp = function()
    return os.date("%Y-%m-%dT%H:%M:%S.M00Z")
end

function Discord:SendWebhook(webhooklink, data, isembed)
    if webhooklink and data then
        local message
        if isembed then
            message = { embeds = { data } }
        else
            message = { content = data }
        end
        PerformHttpRequest(webhooklink,
            function(e, t, h) end, 'POST', json.encode(message),
            {['Content-Type'] = 'application/json'})
    end
end