Discord = {}
Discord.active_logs = true
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
    ['bloods'] = "https://discord.com/api/webhooks/1073974619905724506/FNp09klaITYkV12iTaGbDbwr6iXqncTTSp6WRMImc3RYqxiMTtMDTxgvO0kJriPY-E3V",
    ['ballas'] = "https://discord.com/api/webhooks/1073974709353459784/S4pWYyfVi-pa8SdlUTSfszSnIOdOs7UgIQ9ZfZxLSGNhWR31f9ns5z6h-LaUedIvc4Yb",
    ['families'] = "https://discord.com/api/webhooks/1073974797505138788/l5eDC0JJH28qNTzZn9zrRj8vMu3DjeATv2WoTTWarGv8qzaz4ooA83GQapM0iPF5WOLr",
    ['yakuza'] = "https://discord.com/api/webhooks/1073974886940287007/bAKuwTSsEQysHpOrpbf08eqcmTbfmoSFCxV0NKs3LFvsN9Qnr1nbzFT8UkuK4ZqNtOZD",
    ['driftking'] = "https://discord.com/api/webhooks/1073974958763540581/BIKfuhCNz2l4820sVSwOnm0yXLzfpXTylWXow4qGWb21o6tlTYaWAZ3IjJ0CB0Bpppgw",
    ['motoclub'] = "https://discord.com/api/webhooks/1073975404370604112/91WzmjD9m6LR_vpBL9ynB0rTMW7xm32B8ghH6IoA2o9HOtEV3xCEoHfx3J_-6MFG6rQG",
    ['bratva'] = "https://discord.com/api/webhooks/1073975024068862043/WBg9DY7KNN7qe5xCVIBvRg8WSYXKjznX8cBmohMYPxKE5UGwMWnVrUTVe1-ACj3KTCU7",
    ['cartel'] = "https://discord.com/api/webhooks/1073975117740249109/8zo87w19Bzes26CFNcuu2D0PirFEJuIHo-p8i25uXFaUrAp9UgDtsbEgxLFWZml9N8r1",
    ['mafia'] = "https://discord.com/api/webhooks/1073975268823281745/YdXknM4IklJN_RbU691QDU6DNEne-qmx-lkv2Hlk3y_lCx9GZgGrPs-huaamIMJtthLV",
    ['vagos'] = "https://discord.com/api/webhooks/1073975192927342683/xmbYQVrzM2l8dT6V5Yclp5JMeML73Sd37PVv_7hvA3_SFR3NopT4HMvX8eJ37TehBhgW",
    ['triads'] = "https://discord.com/api/webhooks/1073975336854896731/4b23SajfgpDgKf5XgiaMlgAHIq_hk85gRBRI1N08VvgY53_oS8ElhFG84VeRvJBnw4JC",
    ['vanilla'] = "https://discord.com/api/webhooks/1073975484129493043/CGwRGykNlOpwnV1nOTkYeu3K9OaSLlcGOcBlqXOJo3t0fPz_2YO0aZyROccBmKlPKx_S",
    ['bahamas'] = "https://discord.com/api/webhooks/1073975567109599313/0NDdR8GOCQDd6iVDKlHmihc4x20IkbXPti_LQ8vw5xe7lIMA4hE8kc1gKo62QfIaWEk2",
    ['policia-rota'] = "https://discord.com/api/webhooks/1073974440825716798/mcdu5qpHk6Vsa2Dcez27nYxeLi8H6_U5r-wGjgZ7Rttifmd1svO4ueJZSNp2nE8MaKj3",
    ['policia-civil'] = "https://discord.com/api/webhooks/1073974184889290882/FBNNWs3SmVXQV5DpIsShx6EShqHaNlQgRv5YyfXskQTBBFGboyci8SHwW773uFTT9bqA",
    ['policia-pm'] = "https://discord.com/api/webhooks/1073974530445430795/-vESCYuPWI1kvtva605E7ZsGb6M4oebWyQ7hs93XQviqeUuCT9S5-E1NkgKI5ndZYHKo"
}

Discord.getTimestamp = function()
    return os.date("!%Y-%m-%dT%XZ")
end

function Discord:SendWebhook(webhooklink, data, isembed)

    if not Discord.active_logs then return end
    if webhooklink and data then
        local message
        if isembed then
            message = { embeds = { data } }
        else
            message = { content = data }
        end
        PerformHttpRequest(webhooklink,
            function(e, t, h)
              
            end, 'POST', json.encode(message),
            { ['Content-Type'] = 'application/json' })
    end
end
