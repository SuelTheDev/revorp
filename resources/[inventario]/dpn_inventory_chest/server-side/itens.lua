local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")
local idgens = Tools.newIDGenerator()
local actived = {}
local bandagem = {}
local pick = {}

cnVRP = Tunnel.getInterface("c2n_taskbar") --funcão de chamar a task aponte ela para o script de task
function taskLockpick2()
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        return cnVRP.taskLockpick(source)
    end
end

function recarregarArma(source, user_id, item, amount, slot)
    local uweapons = vRPclient.getWeapons(source)
    local weaponuse = string.gsub(item, "wammo|", "")
    local weaponusename = "wammo|" .. weaponuse
    local identity = vRP.getUserIdentity(user_id)
    if uweapons[weaponuse] then
        local itemAmount = 0
        local inventory = getPlayerInventory(user_id)
        for k, v in pairs(inventory) do
            if weaponusename == v.item then
                if v.amount > 250 then
                    v.amount = 250
                end

                itemAmount = v.amount

                if vRP.tryGetInventoryItem(user_id, weaponusename, parseInt(amount), slot) then
                    local weapons = {}
                    weapons[weaponuse] = { ammo = amount }
                    itemAmount = amount
                    dPNclient._giveWeapons(source, weapons, false)

                    Discord:SendWebhook(Discord.webhooks['inventory:equip'],
                        ("```prolog\n[ID]: %d - %s %s\n[RECARREGOU]: %s\n[MUNIÇÃO:]: %d\n[DATA]: %s \r```"):format(
                            user_id, identity.name, identity.firstname, item, amount, os.date("%d/%m/%Y %H:%M:%S")),
                        false)                  
                end
            end
        end
    end
end

function equipWeapon(source, user_id, item, amount, slot)
    if vRP.tryGetInventoryItem(user_id, item, 1, slot) then
        local weapons = {}
        local identity = getUserIdentity(user_id)
        weapons[string.gsub(item, "wbody|", "")] = { ammo = 0 }
        dPNclient._giveWeapons(source, weapons, false)
        Discord:SendWebhook(Discord.webhooks['inventory:equip'],
            ("```prolog\n[ID]: %d - %s %s\n[EQUIPOU]: %s\n[DATA]: %s \r```"):format(user_id, identity.name,
                identity.firstname, item, os.date("%d/%m/%Y %H:%M:%S")), false)
    end
end

function itensUse(source, user_id, item, amount, type, slot)
    if amount > 0 and not actived[user_id] then
        if item == "bandagem" then
            if vRPclient.getHealth(source) > 101 and vRPclient.getHealth(source) < 250 then
                if bandagem[user_id] == 0 or not bandagem[user_id] then
                    if vRP.tryGetInventoryItem(user_id, "bandagem", 1, slot) then
                        bandagem[user_id] = 120
                        actived[user_id] = true
                        dPNclient._CarregarObjeto(source, "amb@world_human_clipboard@male@idle_a", "idle_c",
                            "v_ret_ta_firstaid", 49, 60309)
                        dPNclient.updateInventory(source)
                        TriggerClientEvent('cancelando', source, true)
                        TriggerClientEvent("progress", source, 20000, "bandagem")
                        SetTimeout(20000, function()
                            actived[user_id] = nil
                            TriggerClientEvent('bandagem', source)
                            TriggerClientEvent('cancelando', source, false)
                            dPNclient._DeletarObjeto(source)
                            TriggerClientEvent("Notify", source, "sucesso", "Bandagem utilizada com sucesso.", 8000)
                            Citizen.Wait(10000)
                        end)
                    end
                else
                    TriggerClientEvent("Notify", source, "importante",
                        "Aguarde " .. vRPclient.getTimeFunction(source, parseInt(bandagem[user_id])) .. ".", 8000)
                end
            else
                TriggerClientEvent("Notify", source, "aviso", "Você não pode utilizar de vida cheia ou nocauteado.",
                    8000)
            end
        elseif item == "xerelto" then
            if vRP.tryGetInventoryItem(user_id, "xerelto", 1, slot) then
                dPNclient._CarregarObjeto(source, "mp_player_intdrink", "loop_bottle", "ng_proc_drug01a002", 49, 60309)
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                TriggerClientEvent("progress", source, 20500, "xerelto")
                SetTimeout(20500, function()
                    TriggerClientEvent('cancelando', source, false)
                    TriggerClientEvent("resetBleeding", source)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "xerelto utilizado com sucesso.", 8000)
                end)
            end
        elseif item == "coumadin" then
            if vRP.tryGetInventoryItem(user_id, "coumadin", 1, slot) then
                dPNclient._CarregarObjeto(source, "mp_player_intdrink", "loop_bottle", "ng_proc_drug01a002", 49, 60309)
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                TriggerClientEvent("progress", source, 20500, "coumadin")
                SetTimeout(20500, function()
                    TriggerClientEvent('cancelando', source, false)
                    TriggerClientEvent("resetBleeding", source)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "Coumadin utilizado com sucesso.", 8000)
                end)
            end
        elseif item == "dorflex" or item == "cicatricure" or item == "dipiroca" or item == "nocucedin" or
            item == "paracetanal" or item == "decupramim" or item == "buscopau" or item == "navagina" or
            item == "analdor" or item == "sefodex" or item == "nokusin" or item == "glicoanal" then
            if (
                vRP.tryGetInventoryItem(user_id, "dorflex", 1, slot) or
                vRP.tryGetInventoryItem(user_id, "cicatricure", 1, slot) or
                vRP.tryGetInventoryItem(user_id, "dipiroca", 1, slot) or
                vRP.tryGetInventoryItem(user_id, "nocucedin", 1, slot) or
                vRP.tryGetInventoryItem(user_id, "paracetanal", 1, slot) or
                vRP.tryGetInventoryItem(user_id, "decupramim", 1, slot) or
                vRP.tryGetInventoryItem(user_id, "buscopau", 1, slot) or
                vRP.tryGetInventoryItem(user_id, "navagina", 1, slot) or
                vRP.tryGetInventoryItem(user_id, "analdor", 1, slot) or
                vRP.tryGetInventoryItem(user_id, "sefodex", 1, slot) or
                vRP.tryGetInventoryItem(user_id, "nokusin", 1, slot) or
                vRP.tryGetInventoryItem(user_id, "glicoanal", 1, slot)) then
                dPNclient.updateInventory(source)
                vRPclient._playAnim(source, true, { { "mp_player_intdrink", "loop_bottle" } }, true)
                TriggerClientEvent('cancelando', source, true)
                TriggerClientEvent("progress", source, 5000, "remedio")
                SetTimeout(5000, function()
                    vRPclient._stopAnim(source, false)
                    TriggerClientEvent('cancelando', source, false)
                    TriggerClientEvent("Notify", source, "sucesso", "Remédio utilizado com sucesso.", 8000)
                end)
            end
        elseif item == "mochila" then
            if vRP.tryGetInventoryItem(user_id, "mochila", 1, slot) then
                dPNclient.updateInventory(source)
                vRP.varyExp(user_id, "physical", "strength", 650)
                TriggerClientEvent("Notify", source, "sucesso", "Mochila utilizada com sucesso.", 8000)
            end
        elseif item == "cerveja" then
            if vRP.tryGetInventoryItem(user_id, "cerveja", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                dPNclient._CarregarObjeto(source, "amb@world_human_drinking@beer@male@idle_a", "idle_a",
                    "prop_amb_beer_bottle", 49, 28422)
                TriggerClientEvent("progress", source, 30000, "bebendo")
                SetTimeout(30000, function()
                    actived[user_id] = nil
                    dPNclient.playScreenEffect(source, "RaceTurbo", 180)
                    dPNclient.playScreenEffect(source, "DrugsTrevorClownsFight", 180)
                    TriggerClientEvent('cancelando', source, false)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "Cerveja utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "tequila" then
            if vRP.tryGetInventoryItem(user_id, "tequila", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                dPNclient._CarregarObjeto(source, "amb@world_human_drinking@beer@male@idle_a", "idle_a",
                    "prop_amb_beer_bottle", 49, 28422)
                TriggerClientEvent("progress", source, 30000, "bebendo")
                SetTimeout(30000, function()
                    actived[user_id] = nil
                    dPNclient.playScreenEffect(source, "RaceTurbo", 180)
                    dPNclient.playScreenEffect(source, "DrugsTrevorClownsFight", 180)
                    TriggerClientEvent('cancelando', source, false)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "Tequila utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "hotdog" then
            if vRP.tryGetInventoryItem(user_id, "hotdog", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                TriggerClientEvent("emotes", source, "comer2")
                TriggerClientEvent("progress", source, 10000)
                SetTimeout(10000, function()
                    actived[user_id] = nil
                    vRP.varyThirst(user_id, 0)
                    vRP.varyHunger(user_id, -40)
                    TriggerClientEvent('cancelando', source, false)
                    vRPclient._DeletarObjeto(source, "one")
                    TriggerClientEvent("Notify", source, "sucesso", "Hot-Dog utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "pizza" then
            if vRP.tryGetInventoryItem(user_id, "pizza", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                dPNclient._CarregarObjeto(source, "amb@code_human_wander_eating_donut@male@idle_a", "idle_c",
                    "v_res_tt_pizzaplate", 49, 28422)
                TriggerClientEvent("progress", source, 30000, "Comendo")
                SetTimeout(30000, function()
                    actived[user_id] = nil
                    vRP.varyThirst(user_id, 0)
                    vRP.varyHunger(user_id, -40)
                    TriggerClientEvent('cancelando', source, false)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "Pizza utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "salgadinho" then
            if vRP.tryGetInventoryItem(user_id, "salgadinho", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                dPNclient._CarregarObjeto(source, "amb@code_human_wander_eating_donut@male@idle_a", "idle_c",
                    "v_ret_ml_chips4", 49, 28422)
                TriggerClientEvent("progress", source, 30000, "Comendo")
                SetTimeout(30000, function()
                    actived[user_id] = nil
                    vRP.varyThirst(user_id, 0)
                    vRP.varyHunger(user_id, -40)
                    TriggerClientEvent('cancelando', source, false)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "salgadinho utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "chocolate" then
            if vRP.tryGetInventoryItem(user_id, "chocolate", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                dPNclient._CarregarObjeto(source, "amb@code_human_wander_eating_donut@male@idle_a", "idle_c",
                    "prop_choc_ego", 49, 28422)
                TriggerClientEvent("progress", source, 30000, "Comendo")
                SetTimeout(30000, function()
                    actived[user_id] = nil
                    vRP.varyThirst(user_id, 0)
                    vRP.varyHunger(user_id, -40)
                    TriggerClientEvent('cancelando', source, false)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "chocolate utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "hamburger" then
            if vRP.tryGetInventoryItem(user_id, "hamburger", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                dPNclient._CarregarObjeto(source, "amb@code_human_wander_eating_donut@male@idle_a", "idle_c",
                    "prop_cs_burger_01", 49, 28422)
                TriggerClientEvent("progress", source, 30000, "Comendo")
                SetTimeout(30000, function()
                    actived[user_id] = nil
                    vRP.varyThirst(user_id, 0)
                    vRP.varyHunger(user_id, -40)
                    TriggerClientEvent('cancelando', source, false)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "hamburger utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "sanduiche" then
            if vRP.tryGetInventoryItem(user_id, "sanduiche", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                TriggerClientEvent("progress", source, 10000)
                vRPclient._CarregarObjeto(source, "mp_player_inteat@burger", "mp_player_int_eat_burger",
                    "prop_sandwich_01", 49, 28422)
                SetTimeout(10000, function()
                    actived[user_id] = nil
                    vRP.varyThirst(user_id, 0)
                    vRP.varyHunger(user_id, -40)
                    TriggerClientEvent('cancelando', source, false)
                    vRPclient._DeletarObjeto(source, "one")
                    TriggerClientEvent("Notify", source, "sucesso", "Sanduiche utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "pao" then
            if vRP.tryGetInventoryItem(user_id, "pao", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                TriggerClientEvent("progress", source, 10000)
                vRPclient._CarregarObjeto(source, "mp_player_inteat@burger", "mp_player_int_eat_burger",
                    "v_ret_247_bread1", 49, 28422)
                SetTimeout(10000, function()
                    actived[user_id] = nil
                    vRP.varyThirst(user_id, 0)
                    vRP.varyHunger(user_id, -40)
                    TriggerClientEvent('cancelando', source, false)
                    vRPclient._DeletarObjeto(source, "one")
                    TriggerClientEvent("Notify", source, "sucesso", "pao utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "rosquinha" then
            if vRP.tryGetInventoryItem(user_id, "rosquinha", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                dPNclient._CarregarObjeto(source, "amb@code_human_wander_eating_donut@male@idle_a", "idle_c",
                    "prop_donut_02", 49, 28422)
                TriggerClientEvent("progress", source, 30000, "Comendo")
                SetTimeout(30000, function()
                    actived[user_id] = nil
                    vRP.varyThirst(user_id, 0)
                    vRP.varyHunger(user_id, -40)
                    TriggerClientEvent('cancelando', source, false)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "rosquinha utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "agua" then
            if vRP.tryGetInventoryItem(user_id, "agua", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                TriggerClientEvent("emotes", source, "beber7")
                TriggerClientEvent("progress", source, 10000, "bebendo")
                SetTimeout(10000, function()
                    actived[user_id] = nil
                    vRP.varyThirst(user_id, -40)
                    vRP.varyHunger(user_id, 0)
                    TriggerClientEvent('cancelando', source, false)
                    vRPclient._DeletarObjeto(source, "one")
                    TriggerClientEvent("Notify", source, "sucesso", "Água utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "vodka" then
            if vRP.tryGetInventoryItem(user_id, "vodka", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                dPNclient._CarregarObjeto(source, "amb@world_human_drinking@beer@male@idle_a", "idle_a",
                    "prop_amb_beer_bottle", 49, 28422)
                TriggerClientEvent("progress", source, 30000, "bebendo")
                SetTimeout(30000, function()
                    actived[user_id] = nil
                    dPNclient.playScreenEffect(source, "RaceTurbo", 180)
                    dPNclient.playScreenEffect(source, "DrugsTrevorClownsFight", 180)
                    TriggerClientEvent('cancelando', source, false)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "Vodka utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "whisky" then
            if vRP.tryGetInventoryItem(user_id, "whisky", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                TriggerClientEvent("emotes", source, "beber4")
                TriggerClientEvent("progress", source, 10000, "bebendo")
                SetTimeout(10000, function()
                    actived[user_id] = nil
                    dPNclient.playScreenEffect(source, "RaceTurbo", 180)
                    dPNclient.playScreenEffect(source, "DrugsTrevorClownsFight", 180)
                    TriggerClientEvent('cancelando', source, false)
                    vRPclient._DeletarObjeto(source, "one")
                    TriggerClientEvent("Notify", source, "sucesso", "Whisky utilizado com sucesso.", 8000)
                end)
            end
        elseif item == "conhaque" then
            if vRP.tryGetInventoryItem(user_id, "conhaque", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                TriggerClientEvent("emotes", source, "beber")
                TriggerClientEvent("progress", source, 10000, "bebendo")
                SetTimeout(10000, function()
                    actived[user_id] = nil
                    dPNclient.playScreenEffect(source, "RaceTurbo", 180)
                    dPNclient.playScreenEffect(source, "DrugsTrevorClownsFight", 180)
                    TriggerClientEvent('cancelando', source, false)
                    vRPclient._DeletarObjeto(source, "one")
                    TriggerClientEvent("Notify", source, "sucesso", "Conhaque utilizado com sucesso.", 8000)
                end)
            end
        elseif item == "absinto" then
            if vRP.tryGetInventoryItem(user_id, "absinto", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                dPNclient._CarregarObjeto(source, "amb@world_human_drinking@beer@male@idle_a", "idle_a",
                    "prop_amb_beer_bottle", 49, 28422)
                TriggerClientEvent("progress", source, 30000, "bebendo")
                SetTimeout(30000, function()
                    actived[user_id] = nil
                    dPNclient.playScreenEffect(source, "RaceTurbo", 180)
                    dPNclient.playScreenEffect(source, "DrugsTrevorClownsFight", 180)
                    TriggerClientEvent('cancelando', source, false)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "Absinto utilizado com sucesso.", 8000)
                end)
            end
        elseif item == "maconha" then
            if vRP.tryGetInventoryItem(user_id, "maconha", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                vRPclient._playAnim(source, true, { { "mp_player_int_uppersmoke", "mp_player_int_smoke" } }, true)
                TriggerClientEvent("progress", source, 10000, "fumando")
                SetTimeout(10000, function()
                    actived[user_id] = nil
                    vRPclient._stopAnim(source, false)
                    dPNclient.playScreenEffect(source, "RaceTurbo", 180)
                    dPNclient.playScreenEffect(source, "DrugsTrevorClownsFight", 180)
                    TriggerClientEvent("Notify", source, "sucesso", "Maconha utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "cocaina" then
            if vRP.tryGetInventoryItem(user_id, "cocaina", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                vRPclient._playAnim(source, true, { { "mp_player_int_uppersmoke", "mp_player_int_smoke" } }, true)
                TriggerClientEvent('cancelando', source, true)
                TriggerClientEvent("progress", source, 10000, "cheirando")
                SetTimeout(10000, function()
                    actived[user_id] = nil
                    vRPclient._stopAnim(source, false)
                    TriggerClientEvent('cancelando', source, false)
                    dPNclient.playScreenEffect(source, "RaceTurbo", 120)
                    dPNclient.playScreenEffect(source, "DrugsTrevorClownsFight", 120)
                    TriggerClientEvent("Notify", source, "sucesso", "Cocaína utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "metanfetamina" then
            if vRP.tryGetInventoryItem(user_id, "metanfetamina", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                vRPclient._playAnim(source, true, { { "mp_player_int_uppersmoke", "mp_player_int_smoke" } }, true)
                TriggerClientEvent("progress", source, 10000, "fumando")
                SetTimeout(10000, function()
                    actived[user_id] = nil
                    vRPclient._stopAnim(source, false)
                    dPNclient.playScreenEffect(source, "RaceTurbo", 180)
                    dPNclient.playScreenEffect(source, "DrugsTrevorClownsFight", 180)
                    TriggerClientEvent("Notify", source, "sucesso", "Metanfetamina utilizada com sucesso.", 8000)
                end)
            end
        elseif item == "lsd" then
            if vRP.tryGetInventoryItem(user_id, "lsd", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                vRPclient._playAnim(source, true, { { "mp_player_int_uppersmoke", "mp_player_int_smoke" } }, true)
                TriggerClientEvent("progress", source, 10000, "tomando")
                SetTimeout(10000, function()
                    actived[user_id] = nil
                    vRPclient._stopAnim(source, false)
                    dPNclient.playScreenEffect(source, "RaceTurbo", 180)
                    dPNclient.playScreenEffect(source, "DrugsTrevorClownsFight", 180)
                    TriggerClientEvent("Notify", source, "sucesso", "LSD utilizado com sucesso.", 8000)
                end)
            end
        elseif item == "rebite" then
            if vRP.tryGetInventoryItem(user_id, "rebite", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                dPNclient._CarregarObjeto(source, "amb@world_human_drinking@beer@male@idle_a", "idle_a",
                    "prop_energy_drink", 49, 28422)
                TriggerClientEvent("progress", source, 10000, "bebendo")
                SetTimeout(10000, function()
                    actived[user_id] = nil
                    dPNclient.playScreenEffect(source, "RaceTurbo", 90)
                    dPNclient.playScreenEffect(source, "DrugsTrevorClownsFight", 90)
                    TriggerClientEvent('energeticos', source, true)
                    TriggerClientEvent('cancelando', source, false)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "Rebite utilizado com sucesso.", 8000)
                end)
                SetTimeout(90000, function()
                    TriggerClientEvent('energeticos', source, false)
                    TriggerClientEvent("Notify", source, "aviso",
                        "O efeito do rebite passou e o coração voltou a bater normalmente.", 8000)
                end)
            end
        elseif item == "capuz" then
            if vRP.getInventoryItemAmount(user_id, "capuz") >= 1 then
                local nplayer = vRPclient.getNearestPlayer(source, 2)
                if nplayer then
                    vRPclient.setCapuz(nplayer)
                    vRP.closeMenu(nplayer)
                    TriggerClientEvent("Notify", source, "sucesso", "Capuz utilizado com sucesso.", 8000)
                end
            end
        elseif item == "energetico" then
            if vRP.tryGetInventoryItem(user_id, "energetico", 1, slot) then
                actived[user_id] = true
                dPNclient.updateInventory(source)
                TriggerClientEvent('cancelando', source, true)
                dPNclient._CarregarObjeto(source, "amb@world_human_drinking@beer@male@idle_a", "idle_a",
                    "prop_energy_drink", 49, 28422)
                TriggerClientEvent("progress", source, 20000, "bebendo")
                SetTimeout(20000, function()
                    actived[user_id] = nil
                    TriggerClientEvent('energeticos', source, true)
                    TriggerClientEvent('cancelando', source, false)
                    dPNclient._DeletarObjeto(source)
                    TriggerClientEvent("Notify", source, "sucesso", "Energético utilizado com sucesso.", 8000)
                end)
                SetTimeout(60000, function()
                    TriggerClientEvent('energeticos', source, false)
                    TriggerClientEvent("Notify", source, "aviso",
                        "O efeito do energético passou e o coração voltou a bater normalmente.", 8000)
                end)
            end
        elseif item == "masterpick" then
            local vehicle, vnetid, placa, lock = vRPclient.vehList(source, 7)
            local policia = vRP.getUsersByPermission(ConfigServer['policiaPermissao'])

            if #policia < 0 then
                TriggerClientEvent("Notify", source, "aviso",
                    "Número insuficiente de policiais no momento para iniciar o roubo.")
                return false
            end

            if vRP.getInventoryItemAmount(user_id, item) >= 1 and vRP.tryGetInventoryItem(user_id, item, 1, slot) and
                vehicle and not lockpickuse then
                actived[user_id] = true
                lockpickuse = true

                vRPclient._playAnim(source, false, { { "missfbi_s4mop", "clean_mop_back_player" } }, true)

                if vRP.hasPermission(user_id, "policia.permissao") then
                    lockpickuse = false
                    actived[user_id] = nil
                    TriggerEvent("setPlateEveryone", placa)
                    TriggerClientEvent('nation:syncLock', source, vnetid)
                    --TriggerClientEvent("vehicleClientLock",-1,vnetid,lock)
                    TriggerClientEvent("vrp_sound:source", source, 'lock', 0.5)
                    return true
                end

                dPNclient.closeInventoryPlayer(source)

                SetTimeout(5000, function()
                    local x, y, z = vRPclient.getPosition(source)
                    for k, v in pairs(policia) do
                        local player = vRP.getUserSource(parseInt(v))
                        if player then
                            async(function()
                                local id = idgens:gen()
                                vRPclient._playSound(player, "CONFIRM_BEEP", "HUD_MINI_GAME_SOUNDSET")
                                TriggerClientEvent("NotifyPush", player,
                                    {
                                        time = os.date("%H:%M:%S - %d/%m/%Y"),
                                        code = 31,
                                        title = "Roubo de Veículo",
                                        x = x,
                                        y = y,
                                        z = z,
                                        rgba = { 0, 0, 0 }
                                    })
                                pick[id] = vRPclient.addBlip(player, x, y, z, 10, 5, "Ocorrência", 0.5, false)
                                SetTimeout(20000, function()
                                    vRPclient.removeBlip(player, pick[id])
                                    idgens:free(id)
                                end)
                            end)
                        end
                    end
                end)

                SetTimeout(10000, function()
                    vRPclient._stopAnim(source, false)
                    TriggerEvent("setPlateEveryone", placa)
                    TriggerClientEvent('nation:syncLock', source, vnetid)
                    --TriggerClientEvent("vehicleClientLock",-1,vnetid,lock)
                    TriggerClientEvent("vrp_sound:source", source, 'lock', 0.5)
                    TriggerClientEvent('cancelando', source, false)
                    lockpickuse = false
                    actived[user_id] = nil
                end)
            end
            return true
        elseif item == "lockpick" then
            local vehicle, vnetid, placa, lock = vRPclient.vehList(source, 7)
            local policia = vRP.getUsersByPermission(ConfigServer['policiaPermissao'])
            local lockpick = false
            if #policia < 0 then
                TriggerClientEvent("Notify", source, "aviso",
                    "Número insuficiente de policiais no momento para iniciar o roubo.")
                return true
            end
            if vRP.hasPermission(user_id, ConfigServer['policiaPermissao']) then
                TriggerEvent("setPlateEveryone", placa)
                TriggerClientEvent('nation:syncLock', source, vnetid)
                --TriggerClientEvent("vehicleClientLock",-1,vnetid,lock)
                TriggerClientEvent("vrp_sound:source", source, 'lock', 0.5)
                return
            end
            if vRP.getInventoryItemAmount(user_id, "lockpick") >= 1 and
                vRP.tryGetInventoryItem(user_id, "lockpick", 1, slot) and vehicle and not lockpickuse then
                actived[user_id] = true
                lockpickuse = true
                if vRP.hasPermission(user_id, "policia.permissao") then
                    lockpickuse = false
                    actived[user_id] = nil
                    TriggerEvent("setPlateEveryone", placa)
                    TriggerClientEvent('nation:syncLock', source, vnetid)
                    --TriggerClientEvent("vehicleClientLock",-1,vnetid,lock)
                    TriggerClientEvent("vrp_sound:source", source, 'lock', 0.5)
                    return true
                end
                dPNclient.closeInventoryPlayer(source)
                TriggerClientEvent('cancelando', source, true)
                vRPclient._playAnim(source, false, { { "missfbi_s4mop", "clean_mop_back_player" } }, true)
                local taskResult = exports['c2n_taskbar']:getTaskBar(source, "facil", "Roubando")

                if taskResult then
                    TriggerEvent("setPlateEveryone", placa)
                    TriggerClientEvent('nation:syncLock', source, vnetid)
                    TriggerClientEvent("vehicleClientLock", -1, vnetid, lock)
                    TriggerClientEvent("vrp_sound:source", source, 'lock', 0.5)
                    vRPclient._stopAnim(source, false)
                    lockpickuse = false
                else
                    TriggerClientEvent('cancelando', source, false)
                    vRPclient._stopAnim(source, false)
                    lockpickuse = false
                    TriggerClientEvent("Notify", source, "negado",
                        "Roubo do veículo falhou e as autoridades foram acionadas.", 8000)
                    local policia = vRP.getUsersByPermission(ConfigServer['policiaPermissao'])
                    local x, y, z = vRPclient.getPosition(source)
                    for k, v in pairs(policia) do
                        local player = vRP.getUserSource(parseInt(v))
                        if player then
                            async(function()
                                local id = idgens:gen()
                                vRPclient._playSound(player, "CONFIRM_BEEP", "HUD_MINI_GAME_SOUNDSET")
                                TriggerClientEvent("NotifyPush", player,
                                    {
                                        time = os.date("%H:%M:%S - %d/%m/%Y"),
                                        code = 31,
                                        title = "Roubo de Veículo",
                                        x = x,
                                        y = y,
                                        z = z,
                                        rgba = { 0, 0, 0 }
                                    })
                                pick[id] = vRPclient.addBlip(player, x, y, z, 10, 5, "Ocorrência", 0.5, false)
                                SetTimeout(20000, function()
                                    vRPclient.removeBlip(player, pick[id])
                                    idgens:free(id)
                                end)
                            end)
                        end
                    end
                end
                actived[user_id] = nil
                return true
            end
        elseif item == "militec" then
            if not vRPclient.isInVehicle(source) then
                local vehicle = vRPclient.getNearestVehicle(source, 3.5)
                if vehicle then
                    if hasPermission(user_id, "mecanico.permissao") then
                        actived[user_id] = true
                        TriggerClientEvent('cancelando', source, true)
                        vRPclient._playAnim(source, false, { { "mini@repair", "fixing_a_player" } }, true)
                        TriggerClientEvent("progress", source, 30000, "reparando motor")
                        SetTimeout(30000, function()
                            actived[user_id] = nil
                            TriggerClientEvent('cancelando', source, false)
                            TriggerClientEvent('repararmotor', source, vehicle)
                            vRPclient._stopAnim(source, false)
                        end)
                    else
                        if vRP.tryGetInventoryItem(user_id, "militec", 1, slot) then
                            actived[user_id] = true
                            dPNclient.updateInventory(source)
                            TriggerClientEvent('cancelando', source, true)
                            vRPclient._playAnim(source, false, { { "mini@repair", "fixing_a_player" } }, true)
                            TriggerClientEvent("progress", source, 30000, "reparando motor")
                            SetTimeout(30000, function()
                                actived[user_id] = nil
                                TriggerClientEvent('cancelando', source, false)
                                TriggerClientEvent('repararmotor', source, vehicle)
                                vRPclient._stopAnim(source, false)
                            end)
                        end
                    end
                end
            end
        elseif item == "repairkit" then
            if not vRPclient.isInVehicle(source) then
                local vehicle = vRPclient.getNearestVehicle(source, 3.5)
                if vehicle then
                    if hasPermission(user_id, "mecanico.permissao") then
                        actived[user_id] = true
                        TriggerClientEvent('cancelando', source, true)
                        vRPclient._playAnim(source, false, { { "mini@repair", "fixing_a_player" } }, true)
                        TriggerClientEvent("progress", source, 30000, "reparando veículo")
                        SetTimeout(30000, function()
                            actived[user_id] = nil
                            TriggerClientEvent('cancelando', source, false)
                            TriggerClientEvent('reparar', source)
                            vRPclient._stopAnim(source, false)
                        end)
                    else
                        if vRP.tryGetInventoryItem(user_id, "repairkit", 1, slot) then
                            actived[user_id] = true
                            dPNclient.updateInventory(source)
                            TriggerClientEvent('cancelando', source, true)
                            vRPclient._playAnim(source, false, { { "mini@repair", "fixing_a_player" } }, true)
                            TriggerClientEvent("progress", source, 30000, "reparando veículo")
                            SetTimeout(30000, function()
                                actived[user_id] = nil
                                TriggerClientEvent('cancelando', source, false)
                                TriggerClientEvent('reparar', source)
                                vRPclient._stopAnim(source, false)
                            end)
                        end
                    end
                end
            end
        elseif item == "pneus" then
            if not vRPclient.isInVehicle(source) then
                local vehicle = vRPclient.getNearestVehicle(source, 3)
                if vehicle then
                    if hasPermission(user_id, "mecanico.permissao") then
                        actived[user_id] = true
                        TriggerClientEvent('cancelando', source, true)
                        vRPclient._playAnim(source, false, { { "mini@repair", "fixing_a_player" } }, true)
                        TriggerClientEvent("progress", source, 30000, "reparando pneus")
                        SetTimeout(30000, function()
                            actived[user_id] = nil
                            TriggerClientEvent('cancelando', source, false)
                            TriggerClientEvent('repararpneus', source, vehicle)
                            vRPclient._stopAnim(source, false)
                        end)
                    else
                        if vRP.tryGetInventoryItem(user_id, "pneus", 1, slot) then
                            actived[user_id] = true
                            dPNclient.updateInventory(source)
                            TriggerClientEvent('cancelando', source, true)
                            vRPclient._playAnim(source, false, { { "mini@repair", "fixing_a_player" } }, true)
                            TriggerClientEvent("progress", source, 30000, "reparando pneus")
                            SetTimeout(30000, function()
                                actived[user_id] = nil
                                TriggerClientEvent('cancelando', source, false)
                                TriggerClientEvent('repararpneus', source, vehicle)
                                vRPclient._stopAnim(source, false)
                            end)
                        end
                    end
                end
            end
        elseif item == "notebook" then
            if vRPclient.isInVehicle(source) then
                local vehicle, vnetid, placa, vname, lock, banned = vRPclient.vehList(source, 7)
                if vehicle and placa then
                    actived[user_id] = true
                    vGARAGE.freezeVehicleNotebook(source, vehicle)
                    TriggerClientEvent('cancelando', source, true)
                    TriggerClientEvent("progress", source, 59500, "removendo rastreador")
                    SetTimeout(60000, function()
                        actived[user_id] = nil
                        TriggerClientEvent('cancelando', source, false)
                        local placa_user_id = vRP.getUserByRegistration(placa)
                        if placa_user_id then
                            local player = vRP.getUserSource(placa_user_id)
                            if player then
                                vGARAGE.removeGpsVehicle(player, vname)
                            end
                        end
                    end)
                end
            end
        elseif item == "placa" then
            if vRPclient.GetVehicleSeat(source) then
                if vRP.tryGetInventoryItem(user_id, "placa", 1, slot) then
                    local placa = vRP.generatePlate()
                    dPNclient.updateInventory(source)
                    TriggerClientEvent('cancelando', source, true)
                    TriggerClientEvent("vehicleanchor", source)
                    TriggerClientEvent("progress", source, 59500, "clonando")
                    SetTimeout(60000, function()
                        TriggerClientEvent('cancelando', source, false)
                        TriggerClientEvent("cloneplates", source, placa)
                        --TriggerEvent("setPlateEveryone",placa)
                        TriggerClientEvent("Notify", source, "sucesso", "Placa clonada com sucesso.", 8000)
                    end)
                end
            end
        elseif item == "colete" then
            if vRP.tryGetInventoryItem(user_id, "colete", 1, slot) then
                vRPclient.setArmour(source, 200)
                dPNclient.updateInventory(source)
            end
        elseif item == "kitgps" then
            if vRP.hasPermission(user_id, "mecanico.permissao") then
                local vehicle = GetVehiclePedIsIn(GetPlayerPed(source), false)
                if vehicle and GetPedInVehicleSeat(vehicle, -1) == GetPlayerPed(source) then
                    local vehicleinfo = exports.nation_garages:GetVehicleInfo(GetEntityModel(vehicle))
                    if not vehicleinfo then
                        TriggerClientEvent("Notify", source, "negado",
                            "GPS não pode ser adicionado.", 8000)
                        return
                    end

                    local modelName = vehicleinfo.name
                    local vehicleOwnerId = vRP.getUserByRegistration(GetVehicleNumberPlateText(vehicle)) or 0
                    local vehicledb = exports.oxmysql:single_async(
                            "SELECT * FROM vrp_user_vehicles WHERE user_id = ? AND vehicle = ?"
                            , { vehicleOwnerId, modelName })
                    if not vehicledb or vehicledb and vehicledb.user_id ~= vehicleOwnerId then
                        TriggerClientEvent("Notify", source, "negado",
                            "Veículo alugado ou de governo não podem ter GPS instalado.", 8000)
                        return
                    end

                    if vehicledb.gps or vehicledb.gps == 1 then
                        TriggerClientEvent("Notify", source, "negado",
                            "Já existe um KIT de GPS instaldo", 8000)
                        return
                    end

                    if vRP.tryGetInventoryItem(user_id, "kitgps", 1, slot) then
                        dPNclient.updateInventory(source)
                        TriggerClientEvent('cancelando', source, true)
                        TriggerClientEvent("progress", source, 30000, "Instalando GPS")
                        FreezeEntityPosition(vehicle, true)
                        FreezeEntityPosition(GetPlayerPed(source), true)

                        SetTimeout(30000, function()
                            FreezeEntityPosition(vehicle, false)
                            FreezeEntityPosition(GetPlayerPed(source), false)
                            TriggerClientEvent('cancelando', source, false)
                            TriggerClientEvent("Notify", source, "sucesso", "KIT de GPS instalado com sucesso.", 8000)
                            exports.nation_garages:EnableGps(vehicle)
                            exports.oxmysql:update_async(
                                "UPDATE vrp_user_vehicles SET gps = 1 WHERE user_id = ? AND vehicle = ?"
                                , { vehicleOwnerId, modelName })
                        end)
                    end
                else
                    TriggerClientEvent("Notify", source, "negado",
                        "Você precisa estar como motorista no veículo que deseja instalar o GPS.", 8000)
                end
                return
            end
            TriggerClientEvent("Notify", source, "negado",
                "Procure um mecânico para instalar o KIT.", 8000)
        elseif item == 'removegps' then
            local vehicle = GetVehiclePedIsIn(GetPlayerPed(source), false)

            if not vehicle or vehicle == 0 then
                TriggerClientEvent("Notify", source, "negado",
                    "Você precisa estar como motorista no veículo que deseja desativar o GPS.", 8000)
                return
            end

            if not Entity(vehicle).state.gps then
                TriggerClientEvent("Notify", source, "negado", "Veículo não tem GPS instalado.", 8000)
                return
            end


            local plate = GetVehicleNumberPlateText(vehicle)
            local vehicleOwnerId = vRP.getUserByRegistration(plate)

            if not vehicleOwnerId then
                TriggerClientEvent("Notify", source, "negado",
                    "Veículo teve seu GPS danificado, não é possível removê-lo", 8000)
                return
            end

            local vehicleinfo = exports.nation_garages:GetVehicleInfo(GetEntityModel(vehicle))
            if not vehicleinfo then
                TriggerClientEvent("Notify", source, "negado",
                    "Problemas na remoção do GPS, veículo possui um outro modelo.", 8000)
                return
            end

            if vRP.tryGetInventoryItem(user_id, "removegps", 1, slot) then
                dPNclient.updateInventory(source)
                local modelName = vehicleinfo.name
                TriggerClientEvent('cancelando', source, true)
                TriggerClientEvent("progress", source, 60000, "Desativando GPS")
                FreezeEntityPosition(vehicle, true)
                FreezeEntityPosition(GetPlayerPed(source), true)
                SetTimeout(60000, function()
                    FreezeEntityPosition(vehicle, false)
                    FreezeEntityPosition(GetPlayerPed(source), false)
                    TriggerClientEvent('cancelando', source, false)
                    TriggerClientEvent("Notify", source, "sucesso", "KIT de GPS desinstalado com sucesso.", 8000)
                    exports.nation_garages:DisableGPS(vehicle)
                    exports.oxmysql:update_async(
                        "UPDATE vrp_user_vehicles SET gps = 0 WHERE user_id = ? AND vehicle = ?",
                        { vehicleOwnerId, modelName })
                end)
            end
        end
    end
end
