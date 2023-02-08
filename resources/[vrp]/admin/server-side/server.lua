local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- Todos os /tp
-----------------------------------------------------------------------------------------------------------------------------------------

-- TPTO

RegisterCommand('tpto', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") or
        vRP.hasPermission(user_id, "suporte.permissao") then
        if args[1] then
            local tplayer = vRP.getUserSource(parseInt(args[1]))
            if tplayer then
                vRPclient.teleport(source, vRPclient.getPosition(tplayer))
            end
        end
    end
end)

-- TPTOME

RegisterCommand('tptome', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") then
        if args[1] then
            local tplayer = vRP.getUserSource(parseInt(args[1]))
            local x, y, z = vRPclient.getPosition(source)
            if tplayer then
                vRPclient.teleport(tplayer, x, y, z)
            end
        end
    end
end)

-- TPWAY

RegisterCommand('tpway', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") or
        vRP.hasPermission(user_id, "suporte.permissao") then
        TriggerClientEvent('tptoway', source)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TPCDS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tpcds', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") or
        vRP.hasPermission(user_id, "suporte.permissao") then
        local fcoords = vRP.prompt(source, "Cordenadas:", "")
        if fcoords == "" then
            return
        end
        local coords = {}
        for coord in string.gmatch(fcoords or "0,0,0", "[^,]+") do
            table.insert(coords, parseInt(coord))
        end
        vRPclient.teleport(source, coords[1] or 0, coords[2] or 0, coords[3] or 0)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ COORDENADAS ]------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cds', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "suporte.permissao") then
        local x, y, z = vRPclient.getPosition(source)
        heading = GetEntityHeading(GetPlayerPed(-1))
        vRP.prompt(source, "Cordenadas:", "['x'] = " .. tD(x) .. ", ['y'] = " .. tD(y) .. ", ['z'] = " .. tD(z))
    end
end)

RegisterCommand('cds2', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "suporte.permissao") then
        local x, y, z = vRPclient.getPosition(source)
        vRP.prompt(source, "Cordenadas:", tD(x) .. ", " .. tD(y) .. ", " .. tD(z))
    end
end)

RegisterCommand('cds3', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "suporte.permissao") then
        local x, y, z = vRPclient.getPosition(source)
        vRP.prompt(source, "Cordenadas:", "{name='ATM', id=277, x=" .. tD(x) .. ", y=" .. tD(y) .. ", z=" .. tD(z) ..
            "},")
    end
end)

RegisterCommand('cds4', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "suporte.permissao") then
        local x, y, z = vRPclient.getPosition(source)
        vRP.prompt(source, "Cordenadas:", "x = " .. tD(x) .. ", y = " .. tD(y) .. ", z = " .. tD(z))
    end
end)

function tD(n)
    n = math.ceil(n * 100) / 100
    return n
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- CDSH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('cdsh', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        local x, y, z = vRPclient.getPosition(source)
        local lugar = vRP.prompt(source, "Lugar:", "")
        if lugar == "" then
            return
        end
        SendWebhookMessage(webhookcds,
            "```prolog\n[PASSAPORTE]: " ..
            user_id ..
            " \n[LUGAR]: " ..
            lugar ..
            " \n[CDSH]: ['x'] = " .. tD(x) .. ", ['y'] = " ..
            tD(y) .. ", ['z'] = " .. tD(z) .. ", ['name'] = " .. lugar .. ", \r```")
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CDS CORRIDAS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("cds:corridas")
AddEventHandler("cds:corridas", function()
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        local x, y, z = vRPclient.getPosition(source)
        SendWebhookMessage(webhookcds,
            "```prolog\n[] = { ['x'] = " .. tD(x) .. ", ['y'] = " .. tD(y) .. ", ['z'] = " .. tD(z) .. " }, \r```")
    end
end)

function tD(n)
    n = math.ceil(n * 100) / 100
    return n
end

-----------------------------------------------------------------------------------------------------------------------------------------
--[ MONEY ]------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('money', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "dono.permissao") then
        if args[1] then
            vRP.giveMoney(user_id, parseInt(args[1]))

            local identity = vRP.getUserIdentity(user_id)
            PerformHttpRequest(webhook_money, function(err, text, headers) end, 'POST', json.encode({
                embeds = {
                    { ------------------------------------------------------------
                        title = "Money",
                        thumbnail = {
                            url = "https://cdn.discordapp.com/attachments/755933469955195015/951639146357735464/gardencity.png"
                        },
                        fields = {
                            {
                                name = "Log\n",
                                value = "Nome: " ..
                                    identity.name ..
                                    " " .. identity.firstname .. " [" .. user_id .. "]\nUsou: /money " .. args[1] .. ""
                            }
                        },
                        footer = {
                            text = "Data e hora: " .. os.date("%d/%m/%Y | %H:%M:%S"),
                            icon_url = "https://www.autoriafacil.com/wp-content/uploads/2019/01/icone-data-hora.png"
                        },
                        color = Webhook_Color
                    }
                }
            }), { ['Content-Type'] = 'application/json' })
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('adm', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") then
        local mensagem = vRP.prompt(source, "Mensagem:", "")
        if mensagem == "" then
            return
        end
        SendWebhookMessage(webhookadmin,
            "```prolog\n[ID]: " ..
            user_id ..
            " " ..
            identity.name ..
            " " ..
            identity.firstname ..
            " \n[MENSAGEM]: " .. mensagem .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
        vRPclient.setDiv(-1, "anuncio",
            ".div_anuncio { background: rgba(255,50,50,0.8); font-size: 11px; font-family: arial; color: #fff; padding: 20px; bottom: 10%; right: 5%; max-width: 500px; position: absolute; -webkit-border-radius: 5px; } bold { font-size: 16px; }"
            , "<bold>" .. mensagem .. "</bold><br><br>Mensagem enviada por: Administrador")
        SetTimeout(60000, function()
            vRPclient.removeDiv(-1, "anuncio")
        end)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYERSON
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('pon', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        local users = vRP.getUsers()
        local players = {}
        for k in next, users do
            players[#players + 1] = k
        end

        TriggerClientEvent('chatMessage', source, "TOTAL ONLINE", { 255, 160, 0 }, #players)
        TriggerClientEvent('chatMessage', source, "ID's ONLINE", { 255, 160, 0 }, table.concat(players, ", "))
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Tudo relacionado a cordenada
-----------------------------------------------------------------------------------------------------------------------------------------

-- TPCDS

RegisterCommand('tpcds', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") then
        local fcoords = vRP.prompt(source, "Cordenadas:", "")
        if fcoords == "" then
            return
        end
        local coords = {}
        for coord in string.gmatch(fcoords or "0,0,0", "[^,]+") do
            table.insert(coords, parseInt(coord))
        end
        vRPclient.teleport(source, coords[1] or 0, coords[2] or 0, coords[3] or 0)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Tudo relacionado a vehs
-----------------------------------------------------------------------------------------------------------------------------------------

-- FIX

RegisterCommand('fix', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local vehicle = vRPclient.getNearestVehicle(source, 11)
    if vehicle then
        if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") then
            TriggerClientEvent('reparar', source)
        end
    end
end)

-- HASH

RegisterCommand('hash', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        TriggerClientEvent('vehash', source)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Tudo relacionado a groups
-----------------------------------------------------------------------------------------------------------------------------------------

-- GROUP

RegisterCommand('group', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") or
        vRP.hasPermission(user_id, "suporte.permissao") then
        if args[1] and args[2] then
            vRP.addUserGroup(parseInt(args[1]), args[2])
        end
    end
end)

-- UNGROUP

RegisterCommand('ungroup', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") then
        if args[1] and args[2] then
            vRP.removeUserGroup(parseInt(args[1]), args[2])
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Tudo relacionado a wl
-----------------------------------------------------------------------------------------------------------------------------------------

-- WL

RegisterCommand('wl', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "suporte.permissao") or
        vRP.hasPermission(user_id, "mod.permissao") then
        if args[1] then
            vRP.setWhitelisted(parseInt(args[1]), true)
        end
    end
end)

-- UNWL

RegisterCommand('unwl', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "suporte.permissao") or
        vRP.hasPermission(user_id, "mod.permissao") then
        if args[1] then
            vRP.setWhitelisted(parseInt(args[1]), false)
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Tudo relacionado a ban
-----------------------------------------------------------------------------------------------------------------------------------------

-- BAN

RegisterCommand('ban', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") then
        if args[1] then
            print('ID: ', user_id, 'BANIU', args[1])
            vRP.setBanned(parseInt(args[1]), true)
        end
    end
end)

-- UNBAN

RegisterCommand('unban', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") then
        if args[1] then
            vRP.setBanned(parseInt(args[1]), false)
            print('ID: ', user_id, 'DESBANIU', args[1])
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Tudo relacionado a kick
-----------------------------------------------------------------------------------------------------------------------------------------

-- KICK ALL

RegisterCommand('kickall', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        local users = vRP.getUsers()
        for k, v in pairs(users) do
            local id = vRP.getUserSource(parseInt(k))
            if id then
                vRP.kick(id, "Você foi vitima do terremoto.")
                print('ID: ', user_id, 'QUICOU', args[1])
            end
        end
    end
end)

-- KICK

RegisterCommand('kick', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") then
        if args[1] then
            local id = vRP.getUserSource(parseInt(args[1]))
            if id then
                print('ID: ', user_id, 'QUICOU', args[1])
                vRP.kick(id, "Você foi expulso da cidade.")
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VROUPAS
-----------------------------------------------------------------------------------------------------------------------------------------
local player_customs = {}
RegisterCommand('vroupas', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local custom = vRPclient.getCustomization(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        if player_customs[source] then
            player_customs[source] = nil
            vRPclient._removeDiv(source, "customization")
        else
            local content = ""
            for k, v in pairs(custom) do
                content = content .. k .. " => " .. json.encode(v) .. "<br/>"
            end

            player_customs[source] = true
            vRPclient._setDiv(source, "customization",
                ".div_customization{ margin: auto; padding: 4px; width: 250px; margin-top: 200px; margin-right: 50px; background: rgba(15,15,15,0.7); color: #ffff; font-weight: bold; }"
                , content)
        end
    end
end)
-------------- bagulho das armas
local qtdAmmunition = 250 --// Quantidade de balas
local itemlist = {
    ["WEAPON_COMPACTRIFLE"] = { arg = "akcompacta" }, --// pra adicionais mais armas s처 pegar id modelo em https://wiki.rage.mp/index.php?title=Weapons // em arg= "nome spawn que vai ser a arma"
    ["WEAPON_PISTOL_MK2"] = { arg = "fiveseven" },
    ["weapon_raypistol"] = { arg = "ray" },
    ["WEAPON_ASSAULTSMG"] = { arg = "smg" },
    ["WEAPON_SPECIALCARBINE"] = { arg = "parafal" },
    ["WEAPON_COMBATPISTOL"] = { arg = "glock" }, --// n찾o esquece, ultima arma n찾o tem virgula e as demais sim
    ["WEAPON_ASSAULTRIFLE"] = { arg = "ak" }
}
RegisterCommand('arma', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "dono.permissao") then --// troca a permiss찾o de quem pode usar o comando // pra ter log, so copiar uma log do vrp_admin la bo inicio e subistituir por "webhookarma" e o link
        if args[1] then
            for k, v in pairs(itemlist) do
                if v.arg == args[1] then
                    result = k
                    vRPclient.giveWeapons(source, { [result] = { ammo = qtdAmmunition } })
                    SendWebhookMessage(webhookarma,
                        "```prolog\n[ID]: " ..
                        user_id ..
                        " " ..
                        identity.name ..
                        " " ..
                        identity.firstname ..
                        " \n[SPAWNOU]: " .. (args[1]) .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") ..
                        " \r```")
                end
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DM (MENSAGEM PRIVADA)
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('dm', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local nplayer = vRP.getUserSource(parseInt(args[1]))
    if vRP.hasPermission(user_id, "admin.permissao") then
        if args[1] == nil then
            TriggerClientEvent("Notify", source, "negado", "Necessário passar o ID após o comando, exemplo: <b>/dm 1</b>")
            return
        elseif nplayer == nil then
            TriggerClientEvent("Notify", source, "negado", "O jogador não está online!")
            return
        end
        local mensagem = vRP.prompt(source, "Digite a mensagem:", "")
        if mensagem == "" then
            return
        end
        TriggerClientEvent("Notify", source, "sucesso", "Mensagem enviada com sucesso!")
        TriggerClientEvent('chatMessage', nplayer, "MENSAGEM DA ADMINISTRAÇÃO:", { 50, 205, 50 }, mensagem)
        TriggerClientEvent("Notify", nplayer, "aviso", "<b>Mensagem da Administração:</b> " .. mensagem .. "", 30000)
    end
end)



-----------------------------
--VROUPAS2
-----------------------------
function IsNumber(numero)
    return tonumber(numero) ~= nil
end

RegisterCommand('vroupas2', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local custom = vRPclient.getCustomization(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") then
        if player_customs[source] then
            player_customs[source] = nil
            vRPclient._removeDiv(source, "customization")
        else
            local content = ""
            for k, v in pairs(custom) do
                if (IsNumber(k) and k <= 11) or k == "p0" or k == "p1" or k == "p2" or k == "p6" or k == "p7" then
                    if IsNumber(k) then
                        content = content .. '[' .. k .. '] = {'
                    else
                        content = content .. '["' .. k .. '"] = {'
                    end
                    local contador = 1
                    for y, x in pairs(v) do
                        if contador < #v then
                            content = content .. x .. ','
                        else
                            content = content .. x
                        end
                        contador = contador + 1
                    end
                    content = content .. "},\n"
                end
            end
            player_customs[source] = true
            vRPclient.prompt(source, 'vRoupas: ', content)
        end
    end
end)
---------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------
----[Resetar Personagem  /reset "id"     (colocar no vrp_admin/server)]
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterCommand('reset', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, "dono.permissao") then
            if args[1] then
                local nplayer = vRP.getUserSource(parseInt(args[1]))
                local id = vRP.getUserId(nplayer)
                if id then
                    vRP.setUData(id, "vRP:spawnController", json.encode(1))
                    TriggerClientEvent("Notify", user_id, "sucesso",
                        "Você <b>resetou</b> o personagem do passaporte <b>" .. vRP.format(parseInt(args[1])) .. "</b>."
                        , 5000)
                end
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Blips
-----------------------------------------------------------------------------------------------------------------------------------------
local blips = {}
AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
    if first_spawn then
        blips[source] = { source }
        TriggerClientEvent("blips:updateBlips", -1, blips)
        if vRP.hasPermission(user_id, "blips.permissao") then
            TriggerClientEvent("blips:adminStart", source)
        end
    end
end)

AddEventHandler("playerDropped", function()
    if blips[source] then
        blips[source] = nil
        TriggerClientEvent("blips:updateBlips", -1, blips)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KILL
-- -----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('kill', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "dono.permissao") or vRP.hasPermission(user_id, "admin.permissao") then
        if args[1] then
            local nplayer = vRP.getUserSource(parseInt(args[1]))
            if nplayer then
                vRPclient.setHealth(nplayer, 0)
                TriggerClientEvent("Notify", source, "importante", "Você matou o passaporte " .. args[1])
            end
        else
            args[1] = user_id
            vRPclient.setHealth(source, 0)
        end
        SendWebhookMessage(webhook_registro,
            "```prolog\n[ID]: " ..
            user_id ..
            " " ..
            identity.name ..
            " " .. identity.name2 ..
            " \n[KILL]: " .. args[1] .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ESTOQUE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('estoque', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        if args[1] and args[2] then
            vRP.execute("creative/set_estoque", { vehicle = args[1], quantidade = args[2] })
            TriggerClientEvent("Notify", source, "sucesso",
                "Voce colocou mais <b>" .. args[2] .. "</b> no estoque, para o carro <b>" .. args[1] .. "</b>.")
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADD CAR
-----------------------------------------------------------------------------------------------------------------------------------------

local wlogaddcar = "https://canary.discord.com/api/webhooks/881117224398630925/A_Yk-fXCdQgLcbIbdw6M8IBABIgx5XLqA4XM7lpYXJN5-s8r2KNjCtFGdERZR3T-Rp3m"

RegisterCommand('addcar', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local nplayer = vRP.getUserId(parseInt(args[2]))
    if vRP.hasPermission(user_id, "dono.permissao") then
        if args[1] and args[2] then
            local nuser_id = vRP.getUserId(nplayer)
            local identity = vRP.getUserIdentity(user_id)
            local identitynu = vRP.getUserIdentity(nuser_id)
            vRP.execute("creative/add_vehicle",
                { user_id = parseInt(args[2]), vehicle = args[1], ipva = parseInt(os.time()) })
            --vRP.execute("creative/set_ipva",{ user_id = parseInt(args[2]), vehicle = args[1], ipva = parseInt(os.time()) })
            TriggerClientEvent("Notify", source, "sucesso",
                "Voce adicionou o veículo <b>" .. args[1] .. "</b> para o Passaporte: <b>" .. parseInt(args[2]) ..
                "</b>.")
            SendWebhookMessage(wlogaddcar,
                "```prolog\n[ID]: " ..
                user_id ..
                " " ..
                identity.name ..
                " " ..
                identity.firstname ..
                " \n[ADICIONOU]: " ..
                args[1] ..
                " \n[PARA O ID]: " ..
                nuser_id ..
                " " ..
                identitynu.name ..
                " " .. identitynu.firstname .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
        end
    end
end)
----------------------------------------------------------------------------------------------------------------------------
-- REM CAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('remcar', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local nplayer = vRP.getUserId(parseInt(args[2]))
    if vRP.hasPermission(user_id, "dono.permissao") then
        if args[1] and args[2] then
            local nuser_id = vRP.getUserId(nplayer)
            local identity = vRP.getUserIdentity(user_id)
            local identitynu = vRP.getUserIdentity(nuser_id)
            vRP.execute("creative/rem_vehicle",
                { user_id = parseInt(args[2]), vehicle = args[1], ipva = parseInt(os.time()) })
            TriggerClientEvent("Notify", source, "sucesso",
                "Voce removeu o veículo <b>" .. args[1] .. "</b> do Passaporte: <b>" .. parseInt(args[2]) .. "</b>.")
            SendWebhookMessage(webhookadmin,
                "```prolog\n[ID]: " ..
                user_id ..
                " " ..
                identity.name ..
                " " ..
                identity.firstname ..
                " \n[REMOVEU]: " ..
                args[1] ..
                " \n[PARA O ID]: " ..
                nuser_id ..
                " " ..
                identitynu.name ..
                " " .. identitynu.firstname .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ESTOQUE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('estoque', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        if args[1] and args[2] then
            vRP.execute("creative/set_estoque", { vehicle = args[1], quantidade = args[2] })
            TriggerClientEvent("Notify", source, "sucesso",
                "Voce colocou mais <b>" .. args[2] .. "</b> no estoque, para o veículo <b>" .. args[1] .. "</b>.")
        end
    end
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- UNCUFF
------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('uncuff', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, "admin.permissao") then
            TriggerClientEvent("admcuff", source)
            SendWebhookMessage(webhook_registro,
                "```prolog\n[ID]: " ..
                user_id ..
                "\n[INFO]: Utilizou o comando /uncuff" .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
        end
    end
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUEL
------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('admfuel', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id then
        if vRP.hasPermission(user_id, "dono.permissao") then
            TriggerClientEvent("admfuel", source)
            SendWebhookMessage(webhook_registro,
                "```prolog\n[ID]: " ..
                user_id ..
                "\n[INFO]: Utilizou o comando /admfuel" .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
        end
    end
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- SYNCAREA
------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('limpararea', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local x, y, z = vRPclient.getPosition(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "suporte.permissao") then
        TriggerClientEvent("syncarea", -1, x, y, z)
        SendWebhookMessage(webhook_registro,
            "```prolog\n[ID]: " ..
            user_id ..
            "\n[INFO]: Utilizou o comando /limparea" .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
    end
end)

RegisterCommand('limparinv', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "suporte.permissao") then
        vRP.limparInventory(user_id)
        TriggerClientEvent("Notify", source, "sucesso", "Você <b>limpou seu inventário</b> com sucesso!")
        SendWebhookMessage(webhook_registro,
            "```prolog\n[ID]: " ..
            user_id ..
            "\n[INFO]: Utilizou o comando /limparinv" .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
    end
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- APAGAO
------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('apagao', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id ~= nil then
        local player = vRP.getUserSource(user_id)
        if vRP.hasPermission(user_id, "admin.permissao") and args[1] ~= nil then
            local cond = tonumber(args[1])
            --TriggerEvent("cloud:setApagao",cond)
            TriggerClientEvent("cloud:setApagao", -1, cond)
            SendWebhookMessage(webhook_registro,
                "```prolog\n[ID]: " ..
                user_id ..
                "\n[INFO]: Utilizou o comando /apagao" .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
        end
    end
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- RAIOS
------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('raios', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id ~= nil then
        local player = vRP.getUserSource(user_id)
        if vRP.hasPermission(user_id, "admin.permissao") and args[1] ~= nil then
            local vezes = tonumber(args[1])
            TriggerClientEvent("cloud:raios", -1, vezes)
            SendWebhookMessage(webhook_registro,
                "```prolog\n[ID]: " ..
                user_id ..
                "\n[INFO]: Utilizou o comando /raios" .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
        end
    end
end)
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- TROCAR SEXO
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('skin', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "dono.permissao") then
        if parseInt(args[1]) then
            local nplayer = vRP.getUserSource(parseInt(args[1]))
            if nplayer then
                TriggerClientEvent("skinmenu", nplayer, args[2])
                TriggerClientEvent("Notify", source, "sucesso",
                    "Voce setou a skin <b>" .. args[2] .. "</b> no passaporte <b>" .. parseInt(args[1]) .. "</b>.")
                SendWebhookMessage(webhook_registro,
                    "```prolog\n[ID]: " ..
                    user_id ..
                    "\n[INFO]: Utilizou o comando /skin no usuario " ..
                    args[1] .. "" .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
            end
        end
    end
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- DEBUG
------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('debug', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id ~= nil then
        local player = vRP.getUserSource(user_id)
        if vRP.hasPermission(user_id, "admin.permissao") then
            TriggerClientEvent("ToggleDebug", player)
            SendWebhookMessage(webhook_registro,
                "```prolog\n[ID]: " ..
                user_id ..
                "\n[INFO]: Utilizou o comando /debug" .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
        end
    end
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Combustível
------------------------------------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('gas', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if user_id ~= nil then
        local player = vRP.getUserSource(user_id)
        if (vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "platina.permissao")) then
            TriggerClientEvent("admfuel", player)
            TriggerClientEvent("Notify", source, "sucesso", "Tanque cheio")
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DV
-----------------------------------------------------------------------------------------------------------------------------------------
--[[  RegisterCommand('dv',function(source,args,rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"admin.permissao") or vRP.hasPermission(user_id,"polpar.permissao") or vRP.hasPermission(user_id,"mecanico.permissao") or vRP.hasPermission(user_id,"conce.permissao") then
		local vehicle = vRPclient.getNearestVehicle(source,7)
		if vehicle then
			print(vehicle)
			--TriggerEvent("nation:deleteVehicleSync",VehToNet(vehicle))
			TriggerEvent("nation:deleteVehicleSync",vehicle)
		end
	end
end)  ]]
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRYDELETEVEH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("trydeleteveh")
AddEventHandler("trydeleteveh", function(index)
    TriggerClientEvent("syncdeleteveh", -1, index)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRYDELETEOBJ
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("trydeleteobj")
AddEventHandler("trydeleteobj", function(index)
    TriggerClientEvent("syncdeleteobj", -1, index)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GOD ALL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('godall', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "dono.permissao") then
        SendWebhookMessage(webhook_registro,
            "```prolog\n[ID]: " ..
            user_id .. "\n[INFO]: Utilizou o comando /godall" .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") ..
            " \r```")
        local users = vRP.getUsers()
        for k, v in pairs(users) do
            local id = vRP.getUserSource(parseInt(k))
            if id then
                vRPclient.killGod(id)
                vRPclient.setHealth(id, 400)
                TriggerClientEvent("resetBleeding", nplayer)
                TriggerClientEvent("resetDiagnostic", nplayer)
                print(id)
            end
        end
    end
end)
--[ HASH ]--------------------------------------------------------------------------------------------------------------------

RegisterCommand('hash', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        TriggerClientEvent('vehash', source)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FESTINHA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('festinha', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "mod.permissao") or vRP.hasPermission(user_id, "admin.permissao") then
        local identity = vRP.getUserIdentity(user_id)
        local mensagem = vRP.prompt(source, "Mensagem:", "")
        if mensagem == "" then
            return
        end
        vRPclient.setDiv(-1, "festinha",
            " @keyframes blinking {    0%{ background-color: #ff3d50; border: 2px solid #871924; opacity: 0.8; } 25%{ background-color: #d22d99; border: 2px solid #901f69; opacity: 0.8; } 50%{ background-color: #55d66b; border: 2px solid #126620; opacity: 0.8; } 75%{ background-color: #22e5e0; border: 2px solid #15928f; opacity: 0.8; } 100%{ background-color: #222291; border: 2px solid #6565f2; opacity: 0.8; }  } .div_festinha { font-size: 11px; font-family: arial; color: rgba(255, 255, 255,1); padding: 30px; bottom: 23%; right: 0%; max-width: 500px; position: absolute; -webkit-border-radius: 5px; animation: blinking 1s infinite; } bold { font-size: 16px; }"
            , "<bold>" .. mensagem .. "</bold><br><br>Festeiro(a): " .. identity.name .. " " .. identity.firstname)
        SetTimeout(10000, function()
            vRPclient.removeDiv(-1, "festinha")
        end)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('festa', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "convite.permissao") then
        if user_id then
            local fcoords = vRP.prompt(source, "Quer ir para o festa?(Digite: SIM)", "")
            if fcoords ~= "SIM" or "sim" then
                return
            end
            vRPclient.teleport(source, -182.75, 969.12, 236.13)
        end
        vRP.removeUserGroup(user_id, "Convite")
    end
end)

RegisterCommand('convidar', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if args[1] then
        vRP.addUserGroup(parseInt(args[1]), "Convite")
        SendWebhookMessage(webhookconvite,
            "```prolog\n[ID]: " ..
            user_id ..
            " " ..
            identity.name ..
            " " ..
            identity.firstname ..
            " \n[CONVIDOU]:" ..
            parseInt(args[1]) .. " \n[FESTA]: Magnum " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CAR cor
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('carcolor', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") then
        local vehicle = vRPclient.getNearestVehicle(source, 7)
        if vehicle then
            local rgb = vRP.prompt(source, "RGB Color(255 255 255):", "")
            rgb = sanitizeString(rgb, "\"[]{}+=?!_()#@%/\\|,.", false)
            local r, g, b = table.unpack(splitString(rgb, " "))
            TriggerClientEvent('vcolorv', source, vehicle, tonumber(r), tonumber(g), tonumber(b))

            TriggerClientEvent('chatMessage', source, "ALERTA", { 255, 70, 50 }, "Cor ^1alterada")
        end
    end
end)
----------------
--REMOVER ARMA--
----------------
RegisterCommand('removearmas', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "dono.permissao") then
        local users = vRP.getUsers()
        for k, v in pairs(users) do
            local id = vRP.getUserSource(parseInt(k))
            if id then
                TriggerClientEvent('limparArmas', id)
                print(id)
            end
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TUNING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tuning', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") then
        TriggerClientEvent('vehtuning', source)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- WL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('wl', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "suporte.permissao") or
        vRP.hasPermission(user_id, "wl.permissao") or vRP.hasPermission(user_id, "mod.permissao") then
        if args[1] then
            vRP.setWhitelisted(parseInt(args[1]), true)
            TriggerClientEvent("Notify", source, "sucesso",
                "Voce aprovou o passaporte <b>" .. args[1] .. "</b> na whitelist.")
            SendWebhookMessage(webhook_registro,
                "```prolog\n[ID]: " ..
                user_id ..
                " " ..
                identity.name ..
                " " ..
                identity.firstname ..
                " \n[APROVOU WL]: " .. args[1] .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UNWL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('unwl', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "suporte.permissao") or
        vRP.hasPermission(user_id, "mod.permissao") then
        if args[1] then
            vRP.setWhitelisted(parseInt(args[1]), false)
            TriggerClientEvent("Notify", source, "sucesso",
                "Voce retirou o passaporte <b>" .. args[1] .. "</b> da whitelist.")
            SendWebhookMessage(webhook_registro,
                "```prolog\n[ID]: " ..
                user_id ..
                " " ..
                identity.name ..
                " " ..
                identity.firstname ..
                " \n[RETIROU WL]: " .. args[1] .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Comandos que eu não separei
-----------------------------------------------------------------------------------------------------------------------------------------

-- GOD

RegisterCommand('god', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") or
        vRP.hasPermission(user_id, "suporte.permissao") then
        if args[1] then
            local nplayer = vRP.getUserSource(parseInt(args[1]))
            if nplayer then
                vRPclient.killGod(nplayer)
                vRPclient.setHealth(nplayer, 400)
            end
        else
            vRPclient.killGod(source)
            vRPclient.setHealth(source, 400)
        end
    end
end)

-- NC

RegisterCommand('nc', function(source, args, rawCommand)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "mod.permissao") or
        vRP.hasPermission(user_id, "suporte.permissao") then
        vRPclient.toggleNoclip(source)
    end
end)
