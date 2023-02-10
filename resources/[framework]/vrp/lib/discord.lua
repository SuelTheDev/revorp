Discord = {}
Discord.webhooks = {
    ['admin:command'] = "https://discord.com/api/webhooks/1073210123574575134/v3WBMmbMCK3DI6hXy_3HAiNC-4Xfb15NEOoq7HyXfznPhrHB-9PCwnXeim7fCkiwtxaI",    
    ['admin:anuncio'] = "https://discord.com/api/webhooks/1073210276469542922/IbVzhC_k8p_tQANZC5eedrlZ_d_qyAb4ivfT7ewTjn4Rln_VMYnQeAOstm3u3AR3JmjD",
    ['admin:addcar'] = "https://discord.com/api/webhooks/1073220221168533536/cpAJxMbj6MA-LiCHON9g0wOWKRQSsjCrIJ7jXV-2eWokweKRzHnHX1gHhZBvYWTK_wNv",
    ['admin:remcar'] = "https://discord.com/api/webhooks/1073220436957073438/fxIcbGwWk6ztSm-4A_dSGgZqL-qKCdP1k6A11GxT7EQe0hQM17w_B9uXWhVyQUHNkDxm",
    ['noobi-vip'] = "https://discord.com/api/webhooks/1071739401576656967/3MEb8jsgag3XzazcyntEn1EyEMcY5beVKTRAbyHJuCUkUv9fI03sewsDa0rs0FBmfh07",
    ['harry-craft'] = "",
    ['cc_mdt:criar-boleto'] = "",
    ['cc_mdt:del-boleto'] = "",
    ['cc_mdt:prender'] = "",
    ['cc_mdt:del-cadastro'] = "",
    
    ['inventory:revistar'] = "",
    ['inventory:roubar'] = "",
    ['inventory:send'] = "https://discord.com/api/webhooks/1073694095266029569/mdo_6G-wWH28RGVeejrbpkatxA2pALEOZRSk8rMHOicO9rmAvWRho0ffytbG8YlZL9jM",
    ['inventory:dropar'] = "https://discord.com/api/webhooks/1073694169723314226/2Oiqdx3A-77citTRWAZkuifTi4CJcbmIoaLxkpScQsiPTRXMn4tVUQiD-ftZoC-dose3",
    ['inventory:equip'] = "https://discord.com/api/webhooks/1073694295036538940/QnofvGRjfzgU52mbCuoDZxiOFhqAcwem2KBs4fwEbxk5BmnCqc1ywEBPo8srV3UnP7Wz",
    ['inventory:casa'] = "https://discord.com/api/webhooks/1073694401576042540/InMHlBw8hO2BtFAXMgGzONPcqa4jsVYRP7yhyTxX_Zsx59GlEPtRtz3I7wrrqOptBKvo",
    ['inventory:carro'] = "https://discord.com/api/webhooks/1073693873999724644/n6o9NObvHLBqp-D6QJpDyBh0cH2aguNRYEWArhji4jd8beP0WdCEmVRe1Yk1m0onYUS4",
    ['inventory:antidump'] = "https://discord.com/api/webhooks/1073694484568739980/9u2c-Oa2RUVSiT2uVp69pPEErKN124DGYco-PbFUVcHTZL6-RbuUZDehb7VgEoGMkBBO",
    
    
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

    ['bloods'] = "", 
    ['ballas'] = "", 
    ['families'] = "", 
    ['yakuza'] = "", 
    ['driftking'] = "", 
    ['motoclub'] = "", 
    ['bratva'] = "", 
    ['cartel'] = "", 
    ['mafia'] = "", 
    ['vagos'] = "", 
    ['triads'] = "", 
    ['vanilla'] = "", 
    ['bahamas'] = "",
    ['policia-rota'] = "",
    ['policia-civil'] = "",
    ['policia-pm'] = ""


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

