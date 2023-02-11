local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local cFG = module("nxgroup-bank", "config")

vRP = Proxy.getInterface("vRP")
NexusClient = Tunnel.getInterface("nxgroup-bank")

Nexus = {}
Tunnel.bindInterface("nxgroup-bank", Nexus)

vRP.prepare("bank/getinfos","SELECT * FROM vrp_user_identities WHERE user_id = @user_id")
vRP.prepare("bank/setpix","UPDATE vrp_user_identities SET pix = @pix WHERE user_id = @user_id")
vRP.prepare("bank/setransacoes","UPDATE vrp_user_identities SET transacoes = @transacoes WHERE user_id = @user_id")

function Nexus.checkAuth()
    return true
end

function Nexus.getIdentity()
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
    local multas = tonumber(vRP.getUData(user_id,'vRP:multas')) or 0
    return 
        identity.name.. " " ..identity.firstname, 
        vRP.getBankMoney(user_id), 
        vRP.getMoney(user_id),
        multas
end

function Nexus.Pixcadastrado()
    local source = source
    local user_id = vRP.getUserId(source)
    local pix = vRP.query("bank/getinfos",{user_id = user_id})
    return json.decode(pix[1].pix) or {}
end

function Nexus.getGraph()
    local source = source
    return {
        100000,
        2000,
        10
    }
end

function Nexus.getTransacoes()
    local source = source
    local user_id = vRP.getUserId(source)
    local transacoes = vRP.query("bank/getinfos",{user_id = user_id})?[1]?.transacoes
    return transacoes and json.decode(transacoes) or {}
end

function setTransacoes(user_id,valor,tipo)
    local transacoes = json.decode(vRP.query("bank/getinfos",{user_id = user_id})[1].transacoes) or {}
    transacoes[#transacoes+1] = {
        data = os.date("%Y-%m-%d"), 
        valor = valor, 
        tipo = tipo
    }
    vRP.execute("bank/setransacoes",{user_id = user_id, transacoes = json.encode(transacoes)})
end

function Nexus.depositar(amount)
    local source = source
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)
	if amount == nil or amount <= 0 or amount > vRP.getMoney(user_id) then
		TriggerClientEvent("Notify",source,"nNexusado","Valor inválido")
	else
		vRP.tryDeposit(user_id, tonumber(amount))
        setTransacoes(user_id,amount,"Depósito")
		TriggerClientEvent("Notify",source,"sucesso","Você depositou <b>$"..vRP.format(parseInt(amount)).." dólares</b>.")
	end
end

function Nexus.sacar(amount)
    local source = source
    local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if amount == nil or amount <= 0 or amount > vRP.getBankMoney(user_id) then
		TriggerClientEvent("Notify",source,"nNexusado","Valor inválido")
	else
		vRP.tryWithdraw(user_id,amount)
        setTransacoes(user_id,amount,"Saque")
		TriggerClientEvent("Notify",source,"sucesso","Você sacou <b>$"..vRP.format(parseInt(amount)).." dólares</b>.")
	end
end

function Nexus.transferir(id, amount)
    local source = source
    local user_id = vRP.getUserId(source)
    local _nplayer = vRP.getUserSource(parseInt(id))
    local nuser_id = vRP.getUserId(_nplayer)
    local identitynu = vRP.getUserIdentity(nuser_id)
    local bank = 0

    if nuser_id == nil then
        TriggerClientEvent("Notify",source,"negado","Passaporte inválido ou indisponível.")
    else
        if nuser_id == user_id then
            TriggerClientEvent("Notify",source,"negado","Você não pode transferir dinheiro para sí mesmo.")	
        else
            local bank = vRP.getBankMoney(user_id)
            local banknu = vRP.getBankMoney(nuser_id)
            
            if bank <= 0 or bank < tonumber(amount) or tonumber(amount) <= 0 then
                TriggerClientEvent("Notify",source,"negado","Dinheiro Insuficiente")
            else
                vRP.setBankMoney(user_id,bank-tonumber(amount))
                vRP.setBankMoney(nuser_id,banknu+tonumber(amount))

                TriggerClientEvent("Notify",_nplayer,"sucesso","<b>"..identity.name.." "..identity.firstname.."</b> depositou <b>$"..amount.." dólares</b> na sua conta.")
                setTransacoes(nuser_id,amount,"Transferencia Recebida")
                TriggerClientEvent("Notify",source,"sucesso","Você transferiu <b>$"..amount.." dólares</b> para conta de <b>"..identitynu.name.." "..identitynu.firstname.."</b>.")
                setTransacoes(user_id,amount,"Transferencia Enviada")
            end
        end
    end
end

function Nexus.pagarMultas(amount)
    local source = source
    local user_id = vRP.getUserId(source)
    local valor = vRP.getUData(user_id,"vRP:multas") or 0
    local int = parseInt(valor)
    if amount < 1000 then TriggerClientEvent("Notify", source, "aviso","Você só pode pagar multas acima de <b>$1000</b> dolares") return end
    local rounded = math.ceil(amount)
    local novamulta = int - rounded
    if vRP.tryFullPayment(user_id,rounded) then
        vRP.setUData(user_id,"vRP:multas",json.encode(novamulta))
        TriggerClientEvent("Notify",source,"sucesso","Você pagou <b>$"..amount.." dólares de multas.</b>.")
        setTransacoes(user_id,amount,"Multas")
    end
end

function Nexus.cadastrarPix(pix)
    local source = source
    local user_id = vRP.getUserId(source)
    local listpix = json.decode(vRP.query("bank/getinfos",{user_id = user_id})[1].pix)
    for k,v in pairs(vRP.query("bank/getinfos",{user_id = user_id})) do
        for _,p in pairs(json.decode(v.pix)) do
            if pix == p.pix then
                TriggerClientEvent("Notify",source,"negado","Já existe um pix com o nome de <b>"..pix.."<b>.")
                return
            end
        end
    end
    if #listpix < 4 then
        listpix[#listpix+1] = {
            pix = pix
        }
        vRP.execute("bank/setpix",{user_id = user_id, pix = json.encode(listpix)})
    else
        TriggerClientEvent("Notify",source,"negado","Já possui os 4 pix.")
    end
end

function Nexus.deletarPix(pix)
    local source = source
    local user_id = vRP.getUserId(source)
    local listpix = json.decode(vRP.query("bank/getinfos",{user_id = user_id})[1].pix)
    for k,v in pairs(listpix) do
        if pix == v.pix then
            table.remove(listpix,k)
        end
    end
    vRP.execute("bank/setpix",{user_id = user_id, pix = json.encode(listpix)})
end

for k in pairs(_ENV) do
    print(k)
end
