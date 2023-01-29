--[[
    PROPOSTA:



]]

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Proxy.getInterface("vRP")

blzr = {}
Tunnel.bindInterface("vrp_desmanche", blzr)

vCLIENT = Tunnel.getInterface("vrp_desmanche")

local desmanche = ""

function SendWebhookMessage(webhook,message)
	if webhook ~= nil and webhook ~= "" then
		PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
	end
end

------------------------------------------------------
-- CONFIG 
------------------------------------------------------
local RestritoParaDesmanche = true -- É restrito para quem tiver só a permissão do desmanche? (TRUE/FALSE)
local PermissaoDesmanche = 'dk.permissao' -- Se RestritoParaDesmanche for TRUE, aqui deverá ter a permissão que será verifiada.

local PrecisaDeItem = true -- Precisa de item para iniciar o desmanche? (TRUE/FALSE)
local ItemNecessario = 'ferramenta' -- Qual item precisa para iniciar o desmanche?
local QtdNecessaria = 1 -- Quantos itens precisará para iniciar o desmanche?


local CarrosDesmanches = {

-------------------------------------------------------------------------|
----- CONCESSIONÁRIA ----------------------------------------------------|
-------------------------------------------------------------------------| 
    
['150'] = 3500,
['biz25'] = 2500,
['pcj'] = 6500,
['xt66'] = 7500,
['PUNTO'] = 9500,
['manchez'] = 9500,
['akuma'] = 9500,
['avarus'] = 9500,
['daemon'] = 9500,
['daemon2'] = 8500,
['gargoyle'] = 8500,
['wolfsbane'] = 8500,
['zombiea'] = 12500,
['zombieb'] = 8500,
['carbonrs'] = 9500,
['bati'] = 11500,
['bati2'] = 12500,
['double'] = 12500,
['xj'] = 8500,
['hornet'] = 8500,
['dm1200'] = 8500,
['hayabusa'] = 8500,
['r1200gs'] = 10000,
['z1000'] = 8500,
['NISSAN GTR'] = 8500,
['BMW M4GTS'] = 12500,
['astra'] = 13500,
['celta'] = 12500,
['CHARGER SRT'] = 8500,
['cronos'] = 20500,
['corsa98'] = 15500,
['golg7'] = 25500,
['jetta'] = 30500,
['PAGANI'] = 8500,
['passat'] = 38500,
['saveirog6'] = 18500,
['brasilia'] = 3500,
['Hillux'] = 28500,
['civic2016'] = 38500,
['clio'] = 18500,
['escort'] = 8500,
['cruze'] = 48500,
['omega'] = 28500,
['HURACAN'] = 38500,
['polo'] = 38500,
['ftoro'] = 48500,
['parati2007'] = 28500,
['veloster'] = 58500,
['panto'] = 18500,
['brioso'] = 28500,
['palio'] = 38500,
['uno'] = 18500,
['MUSTANG'] = 38500,
['fiatstilo'] = 48500,
['versa'] = 48500,
['ORACLE2'] = 68500,
['gb200'] = 68500,
['TESLA'] = 88500,
['rmodmk7'] = 98500,
['s10'] = 128500,
['TRITON'] = 138500,
['hilux2016'] = 158500,
['l200civil'] = 188500,
['baller4'] = 208500,
['toros'] = 198500,
['cayenne'] = 188500,
['fx50s'] = 198500,
['srt8'] = 188500,
['evoque'] = 228500,
['g65amg'] = 288500,
['BUCCANEE'] = 58500,
['RLOADER2'] = 88500,
['kuruma'] = 78500,
['jester'] = 98500,
['neon'] = 98500,
['seven70'] = 88500,
['sultan'] = 98500,
['italigto'] = 508500,
['raiden'] = 88500,
['dominator3'] = 88500,
['comet3'] = 98500,
['comet5'] = 98500,
['ruston'] = 98500,
['schlagen'] = 8500,
['autarch'] = 108500,
['prototipo'] = 118500,
['taipan'] = 128500,
['turismor'] = 108500,
['tyrant'] = 108500,
['vagner'] = 188500,
['visione'] = 188500,
['accord'] = 188500,
['pg8'] = 108500,
['rs318'] = 248500,
['ttrs'] = 258500,
['M2'] = 208500,
['bme6tun'] = 208500,
['gtam21'] = 218500,
['BMWM6'] = 258500,
['MERC GT63'] = 258500,
['LANCEREVO9'] = 258500,
['bmws'] = 258500,
['tiger'] = 258500,
['hcbr17'] = 258500,
['r1'] = 258500,
['r1250'] = 258500,
['zx10r'] = 258500,
['lamborghinihuracan'] = 258500,
['p1'] = 258500,
['senna'] = 258500,
['LAFERRARI APERTA'] = 258500,
['nissangtr'] = 258500,
['911turbos'] = 258500,
['skyline'] = 258500,
['fm488'] = 258500,
['720stc'] = 258500,
['amarok'] = 258500,
['bmwm2'] = 258500,
['19z4S'] = 258500,
['675lt'] = 258500,
['720stc'] = 258500,
['bmwm2'] = 258500,
['bmwm2'] = 258500,
['19z4S'] = 258500,
['675lt'] = 258500,
['720stc'] = 258500,
['911gtrs'] = 258500,
['amv19'] = 258500,
['992t'] = 258500,
['a45amg'] = 258500,
['audirs3'] = 258500,
['bmwi8'] = 258500,
['c7'] = 258500,
['chiron17'] = 258500,
['fm488'] = 258500,
['gtoxx'] = 258500,
['gtr'] = 258500,
['lp610'] = 258500,
['mst'] = 258500,
['r820'] = 258500,
['rmodbacalar'] = 258500,
['rmodbolide'] = 258500,
['rmodbugatti'] = 258500,
['rmodc63amg'] = 258500,
['rmodgt63'] = 258500,
['rmodgtr50'] = 258500,
['rmodi8ks'] = 258500,
['rmodjeep'] = 258500,
['rmodjesko'] = 258500,
['rmodlfa'] = 258500,
['rmodlp670'] = 258500,
['rmodmartin'] = 258500,
['rmodsianr'] = 258500,
['rmodskyline34'] = 258500,
['rmodspeed'] = 258500,
['rmodsuprapandem'] = 258500,
['rmodzl1'] = 258500,
['urus'] = 258500,
['veneno'] = 258500,
['nero'] = 258500,
['nero2'] = 258500,
['jugular'] = 65000,
['cb500x'] = 25000,
['t20'] = 50000,
['civicsi'] = 50000,
['bmwm3f80'] = 50000,
['xtgang'] = 50000,
['lancerevolutionx'] = 100000,
['r1250'] = 100000,
['nissanskyliner34'] = 100000,

}

------------------------------------------------------
------------------------------------------------------
------------------------------------------------------


-- RETORNA VEICULOS PERMITIDOS
function blzr.GetVehs()
    return CarrosDesmanches
end


-- FUNÇÃO VERIFICAR PERMISSÃO DO DESMANCHE
function blzr.CheckPerm()
    local source = source
    local user_id = vRP.getUserId(source)
    if RestritoParaDesmanche then    
        if vRP.hasPermission(user_id, PermissaoDesmanche) then
            return true
        end
        return false
    end
    return true
end

-- FUNÇÃO PRA VERIFICAR SE POSSUI O ITEM
function blzr.CheckItem()
    local source = source
    local user_id = vRP.getUserId(source)
    if PrecisaDeItem then
        if vRP.tryGetInventoryItem(user_id,ItemNecessario,QtdNecessaria) then
            return true
        end
        return false
    end
    return true
end


-- FUNÇÃO PARA GERAR O PAGAMENTO E OS ITENS
function blzr.GerarPagamento(placa, nomeFeio, nomeBonito)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    for k, v in pairs(CarrosDesmanches) do
        if string.upper(k) == string.upper(nomeFeio) then
            local pagamento = v
            -- vRP.giveMoney(user_id,pagamento) -- DINHEIRO LIMPO
            vRP.giveInventoryItem(user_id,'dinheirosujo',pagamento) -- DINHEIRO SUJO

            local puser_id = vRP.getUserByRegistration(placa)
            if puser_id then
               local value = vRP.getUData(puser_id,'vRP:multas')
               vRP.execute ("vRP/setDetido",{user_id = puser_id,vehicle = nomeFeio,detido = 1, time = parseInt(os.time()),ipva = parseInt(os.time())})
                local multas = json.decode(value) or 0
                multas = multas + pagamento
                vRP.setUData(puser_id,'vRP:multas',json.encode(parseInt(multas)))
                local nsource = vRP.getUserSource(puser_id)
                if nsource then
                    TriggerClientEvent('Notify', nsource, 'aviso', 'AVISO SEGURADORA \n Você foi multado em <b>R$' .. vRP.format(pagamento) .. '</b> referente ao seguro do veículo <b>' .. nomeBonito .. ' (' .. nomeFeio .. ')</b>.')
                end
            end
            TriggerClientEvent("vrp_sound:source",source,'coins',0.3)
            TriggerClientEvent('Notify', source, 'sucesso', 'Vendedor Desmanche \n Você recebeu <b>R$'..vRP.format(pagamento)..'</b> pelo desmanche de um <b>'..nomeBonito..' ('.. nomeFeio..' - PLACA [' .. placa .. '])</b>.' )
            SendWebhookMessage(desmanche,"```prolog\n[PASSAPORTE]: "..user_id.." \n[NOME]: "..identity.name.." "..identity.firstname.." \n[DESMANCHOU]: "..nomeBonito.."  \n[PLACA]: ".. placa .." \n[E RECEBEU]: ".. vRP.format(pagamento) .." "..os.date("\n[Data]: %d/%m/%y \n[Hora]: %H/%M/%S").." \r```")
        end
    end
end


