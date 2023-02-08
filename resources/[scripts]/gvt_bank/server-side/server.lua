---------------------------------------------------------------------------------------------------------
--VRP
---------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
Gvt = {}
Tunnel.bindInterface("gvt-bank",Gvt)
--local wbhook = 'https://discordapp.com/api/webhooks/711391268537892894/OXwmp94J_bkrEmhQ6aBXIXCHVZB4IR8Mvm83mTlGtIY4Tm12wZDpPtc6ivvE58iDuG4a'
local wbhook = 'https://discord.com/api/webhooks/985244908505927701/dYMc6JBFMSU4CQPtaMBrKWqyS_vBUK5fqc65weMI_aySEn5Rl_28Sv_T-UgVrq7HGPzt'

---------------------------------------------------------------------------------------------------------
-- DB
---------------------------------------------------------------------------------------------------------
vRP._prepare("Gvt/Bank", [[
    CREATE TABLE IF NOT EXISTS `gvt_bank` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `user_id` int(11) DEFAULT NULL,
        `amount` int(11) DEFAULT NULL,
        `title` varchar(255) DEFAULT NULL,
        `idtrans` int(11) DEFAULT NULL,
        PRIMARY KEY (`id`)
      ) 
]] )
---------------------------------------------------------------------------------------------------------
-- PREPARE
---------------------------------------------------------------------------------------------------------
vRP._prepare('Gvt/InsertS', 'INSERT INTO gvt_bank(user_id, title, amount, idtrans) VALUES(@user_id, @title, @amount, @idtrans)')
vRP._prepare('Gvt/GetS', 'SELECT * from gvt_bank WHERE user_id = @user_id ORDER BY id DESC')

---------------------------------------------------------------------------------------------------------
-- EXECUTE
---------------------------------------------------------------------------------------------------------
function Gvt.InsertExtract(user_id, title, amount, idtrans)
    vRP.execute('Gvt/InsertS', {user_id = user_id,title = title, amount = amount, idtrans = idtrans})
end
async(function()
    vRP.execute("Gvt/Bank")
end)
---------------------------------------------------------------------------------------------------------
-- QUERYS
---------------------------------------------------------------------------------------------------------
function Gvt.QueryExtract()
    local source = source
    local user_id = vRP.getUserId(source)
    return vRP.query('Gvt/GetS', {user_id = user_id}) or {}
end

---------------------------------------------------------------------------------------------------------
-- IDENTIFY
---------------------------------------------------------------------------------------------------------
function Gvt.IdentifyUser()
    local source = source
    local user_id = vRP.getUserId(source)
    local identify = vRP.getUserIdentity(user_id)
    if not identify then return; end
    return { 
        user = user_id ,
        ident = identify.name.. ' ' ..identify.firstname, 
        age = identify.age,
        rg = identify.registration, 
        bank = vRP.getBankMoney(user_id),
        money = vRP.getMoney(user_id),
        job = vRP.getGroupTitle(vRP.getUserGroupByType(user_id,'job')),
        multas = vRP.getUData(parseInt(user_id),"vRP:multas")
    }
end
---------------------------------------------------------------------------------------------------------
-- WALLET
---------------------------------------------------------------------------------------------------------
function Gvt.Wallet(qtd)
    local source = source
    local qtd = tonumber(qtd)
    local user_id = vRP.getUserId(source)
    if qtd == nil then
        TriggerClientEvent("Notify", source, "aviso", "Insira um valor de saque")
        return
    end
    if vRP.tryWithdraw(user_id, qtd) then
        TriggerClientEvent("Notify",source,"sucesso", "Você sacou $<b> "..vRP.format(qtd).."</b>")
        Gvt.InsertExtract(user_id, 'Saque', qtd, user_id)
        PerformHttpRequest(wbhook, function(err, text, headers) end, 'POST', json.encode({content =  "**Saque** ```" .. "ID: " .. user_id ..  " \nSacou: " .. qtd .. "\nServidor: " .. GetConvar('sv_name', 'ND') .. "\nData: " .. os.date("%H:%M:%S %d/%m/%Y") .. "```"}), { ['Content-Type'] = 'application/json' })
    end
end

function Gvt.WalletExpress()
    local source = source
    local user_id = vRP.getUserId(source)
    if vRP.tryWithdraw(user_id, 1000) then
        TriggerClientEvent("Notify",source,"sucesso", "Você sacou $1.000")
        Gvt.InsertExtract(user_id, 'Saque', (1000), user_id)
        PerformHttpRequest(wbhook, function(err, text, headers) end, 'POST', json.encode({content =  "**Saque** ```" .. "ID: " .. user_id ..  " \nSacou: " .. 1000 .. "\nServidor: " .. GetConvar('sv_name', 'ND') .. "\nData: " .. os.date("%H:%M:%S %d/%m/%Y") .. "```"}), { ['Content-Type'] = 'application/json' })

    end
end
---------------------------------------------------------------------------------------------------------
-- TRANSFER
---------------------------------------------------------------------------------------------------------
function Gvt.Transfer(qtd, nid)
    local nid = tonumber(nid)
    local qtd = tonumber(qtd)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    if qtd == nil  then
        TriggerClientEvent("Notify", source, "aviso", "Insira um valor")
        return 
    elseif nid == nil then
        TriggerClientEvent("Notify", source, "aviso", "Insira uma conta")
        return 
    end
    if parseInt(user_id) == parseInt(nid) then
        TriggerClientEvent("Notify",source,"negado","Você não pode transferir dinheiro à si mesmo.")
        return
    end
    local nsource = vRP.getUserSource(nid)
    local nidplayer = vRP.getUserId(nsource)
    local bank = vRP.getBankMoney(user_id)
    local nbank = vRP.getBankMoney(nidplayer)
    local identifyPlayer = vRP.getUserIdentity(nidplayer)
    if nidplayer ~= nil then
        if bank >= qtd then
            vRP.setBankMoney(user_id, (bank - qtd))
            vRP.setBankMoney(nidplayer, (nbank + qtd))
            TriggerClientEvent("Notify",source,"sucesso","Você transferiu para a conta " .. nidplayer  .. " O valor de $<b>" ..vRP.format(qtd).. "</b>")
            TriggerClientEvent("Notify",nsource,"sucesso","O usuario <b>".. identifyPlayer.name.."</b> transferiu para você O valor de $<b>" ..vRP.format(qtd).. "</b>")
            Gvt.InsertExtract(user_id, 'Transferencia', qtd, nid)   
            
            TriggerEvent("webhooks","banktrans","```prolog\n[ID]: "..vRP.format(user_id).." "..identity.name.." "..identity.firstname.." \n[TRANSFERIU]: $"..vRP.format(qtd).." \n[PARA O ID]: "..nidplayer.." "..identifyPlayer.name.." "..identifyPlayer.firstname.." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```","TRANSFERIR BANCO")
        else
            TriggerClientEvent("Notify", source, "negado", "Saldo insuficiente")
            return 
        end
    else
        TriggerClientEvent("Notify",source,"sucesso","Usuario Ausente")
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DEPOSIT
-----------------------------------------------------------------------------------------------------------------------------------------
local actived = {}
Citizen.CreateThread(function()
	while true do
		for k,v in pairs(actived) do
			if actived[k] > 0 then
				actived[k] = v - 1
				if actived[k] <= 0 then
					actived[k] = nil
				end
			end
		end
		Citizen.Wait(100)
	end
end)

function Gvt.tryDeposit(qtd)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if actived[user_id] == nil then
            actived[user_id] = 5

            local qtd = tonumber(qtd)
            if qtd == nil  then
                TriggerClientEvent("Notify", source, "aviso", "Insira um valor")
                return 
            end
            local userWallet = vRP.getMoney(user_id)
            local userBank = vRP.getBankMoney(user_id)
            if qtd > userWallet then
                TriggerClientEvent("Notify", source, "aviso", "Dinheiro Insuficiente")
                return 
            end
            vRP.setBankMoney(user_id, ( userBank + qtd))
            vRP.tryPayment(user_id, qtd)
            TriggerClientEvent("Notify",source,"sucesso", "Você depositou $<b> "..vRP.format(qtd).."</b>")
            Gvt.InsertExtract(user_id, 'Deposito', qtd, user_id)
            PerformHttpRequest(wbhook, function(err, text, headers) end, 'POST', json.encode({content =  "**Deposito** ```" .. "ID: " .. user_id .. "\nDepositou  " .. qtd .. "\nServidor: " .. GetConvar('sv_name', 'ND') .. "\nData: " .. os.date("%H:%M:%S %d/%m/%Y") .. "```"}), { ['Content-Type'] = 'application/json' })
        end
    end
end
---------------------------------------------------------------------------------------------------------
-- FINES  
---------------------------------------------------------------------------------------------------------
function Gvt.Fines()
    local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local value = vRP.getUData(parseInt(user_id),"vRP:multas")
		local multas = json.decode(value) or 0
		if parseInt(multas) > 0 then
			if parseInt(multas) > 0 and parseInt(multas) > 0 and parseInt(multas) <= parseInt(multas) then
				if vRP.tryFullPayment(user_id,parseInt(multas)) then
					vRP.setUData(user_id,"vRP:multas",json.encode(parseInt(0)))
                    TriggerClientEvent("Notify",source,"aviso","Pagou <b>$"..vRP.format(parseInt(multas)).."</b> em multas.")
                    Gvt.InsertExtract(user_id, 'Multas', parseInt(multas), user_id)              
                    PerformHttpRequest(wbhook, function(err, text, headers) end, 'POST', json.encode({content =  "**Multas** ```" .. "ID: " .. user_id ..  "\nPagou suas multas \nServidor: " .. GetConvar('sv_name', 'ND') .. "\nData: " .. os.date("%H:%M:%S %d/%m/%Y") .. "```"}), { ['Content-Type'] = 'application/json' })
				else
					TriggerClientEvent("Notify",source,"aviso","Dinheiro insuficiente.")
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Valor inválido.")
			end
		else
			if parseInt(multas) <= 0 then
				TriggerClientEvent("Notify",source,"aviso","Multas inexistentes.")
			end
		end
	end
end

function Gvt.FinesFast()
    local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local value = vRP.getUData(parseInt(user_id),"vRP:multas")
		local multas = json.decode(value) or 0
		if parseInt(1000) > 0 then
			if parseInt(multas) > 0 and parseInt(1000) > 0 and parseInt(1000) <= parseInt(multas) then
				if vRP.tryFullPayment(user_id,parseInt(1000)) then
					vRP.setUData(user_id,"vRP:multas",json.encode(parseInt(multas)-parseInt(1000)))
                    TriggerClientEvent("Notify",source,"aviso","Pagou <b>$"..vRP.format(parseInt(1000)).."</b> em multas.")
                    PerformHttpRequest(wbhook, function(err, text, headers) end, 'POST', json.encode({content =  "**Multas** ```" .. "ID: " .. user_id ..  "\nPagou suas multas \nServidor: " .. GetConvar('sv_name', 'ND') .. "\nData: " .. os.date("%H:%M:%S %d/%m/%Y") .. "```"}), { ['Content-Type'] = 'application/json' })
                    Gvt.InsertExtract(user_id, 'Multas', 1000, user_id)               
				else
					TriggerClientEvent("Notify",source,"aviso","Dinheiro insuficiente.")
				end
			else
				TriggerClientEvent("Notify",source,"aviso","Valor inválido.")
			end
		else
			if parseInt(multas) <= 0 then
				TriggerClientEvent("Notify",source,"aviso","Multas inexistentes.")
			end
		end
	end
end
