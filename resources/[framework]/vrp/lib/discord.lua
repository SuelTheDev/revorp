Discord = {}
Discord.webhooks = {
    ['admin:command'] = "https://discord.com/api/webhooks/1073210123574575134/v3WBMmbMCK3DI6hXy_3HAiNC-4Xfb15NEOoq7HyXfznPhrHB-9PCwnXeim7fCkiwtxaI",    
    ['admin:anuncio'] = "https://discord.com/api/webhooks/1073210276469542922/IbVzhC_k8p_tQANZC5eedrlZ_d_qyAb4ivfT7ewTjn4Rln_VMYnQeAOstm3u3AR3JmjD",
    ['admin:addcar'] = "https://discord.com/api/webhooks/1073220221168533536/cpAJxMbj6MA-LiCHON9g0wOWKRQSsjCrIJ7jXV-2eWokweKRzHnHX1gHhZBvYWTK_wNv",
    ['admin:remcar'] = "https://discord.com/api/webhooks/1073220436957073438/fxIcbGwWk6ztSm-4A_dSGgZqL-qKCdP1k6A11GxT7EQe0hQM17w_B9uXWhVyQUHNkDxm",
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

