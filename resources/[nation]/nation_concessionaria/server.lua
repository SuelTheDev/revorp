local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
fclient = Tunnel.getInterface("nation_concessionaria")

func = {}
Tunnel.bindInterface("nation_concessionaria", func)


local webhook_concessionaria = ''

function SendWebhookMessage(webhook,message)
    if webhook ~= nil and webhook ~= "" then
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

local conceVehicles = {}
local userVehicles = {}

local timestamp = {}

function func.getConfig()
    return config
end

RegisterServerEvent('nationConce:getConfig')
AddEventHandler('nationConce:getConfig', function()
    local source = source
    TriggerClientEvent("nationConce:setConfig", source, config)
end)

vRP._prepare("nation_conce/getConceVehicles", "SELECT * FROM nation_concessionaria")

function getDbVehicles()
    conceVehicles = {}
    local vehicles = vRP.query("nation_conce/getConceVehicles") or {}
    for k,v in ipairs(vehicles) do
        local vehInfo = config.getVehicleInfo(v.vehicle)
        if vehInfo then
            conceVehicles[#conceVehicles+1] = { 
                vehicle = v.vehicle, price = vehInfo.price, modelo = vehInfo.modelo, 
                capacidade = vehInfo.capacidade, name = vehInfo.name, estoque = v.estoque
            }
            if vehInfo.class then
                conceVehicles[#conceVehicles].class = vehInfo.class
            end
        end
    end
end

function checkRentedVehicles()
    vRP.execute("nation_conce/deleteRentedVehicles", { data_alugado = os.date("%d/%m/%Y")})
    Wait(60 * 1000 * 60 * 6)
    checkRentedVehicles()
end

Citizen.CreateThread(function()
    vRP.prepare("nation_conce/hasVehicle","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")
    vRP.prepare("nation_conce/getAllMyVehicles","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id")
    vRP.prepare("nation_conce/getMyVehicles","SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND alugado = 0")
    vRP.prepare("nation_conce/isVehicleInConce","SELECT * FROM nation_concessionaria WHERE vehicle = @vehicle")
    vRP.prepare("nation_conce/addVehicle","INSERT IGNORE INTO nation_concessionaria(vehicle,estoque) VALUES(@vehicle,@estoque)")
    vRP.prepare("nation_conce/removeVehicle","DELETE FROM nation_concessionaria WHERE vehicle = @vehicle")
    vRP.prepare("nation_conce/addEstoque","UPDATE nation_concessionaria SET estoque = @estoque WHERE vehicle = @vehicle")
    vRP.prepare("nation_conce/removeEstoque","UPDATE nation_concessionaria SET estoque = @estoque WHERE vehicle = @vehicle")
    vRP.prepare("nation_conce/addCustomEstoque","UPDATE nation_concessionaria SET estoque = @estoque WHERE vehicle = @vehicle")
    vRP.prepare("nation_conce/removeCustomEstoque","UPDATE nation_concessionaria SET estoque = estoque - 1 WHERE vehicle = @vehicle")
    vRP.prepare("nation_conce/addUserVehicle","INSERT IGNORE INTO vrp_user_vehicles (user_id,vehicle,ipva) VALUES(@user_id,@vehicle,@ipva)")
    vRP.prepare("nation_conce/removeUserVehicle", 'DELETE FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle')
    vRP.prepare("nation_conce/addUserRentedVehicle","INSERT IGNORE INTO vrp_user_vehicles (user_id,vehicle,ipva,alugado,data_alugado) VALUES(@user_id,@vehicle,@ipva,1,@data_alugado)")
    vRP.prepare("nation_conce/deleteRentedVehicles", 'DELETE FROM vrp_user_vehicles WHERE alugado = 1 AND data_alugado < @data_alugado')
    getDbVehicles()
    checkRentedVehicles()
end)

function getVehicleInfo(vehicle,list)
    for k,v in ipairs(list) do 
        if v.name == vehicle then
            return list[k]
        end
    end
    return false
end

function func.getVehInfo(veh)
    if veh then
        return config.getVehicleInfo(veh)
    end
end

function func.getConceVehicles()
    return conceVehicles
end

function func.getTopVehicles()
    local list = {}
    if config.topVehicles and type(config.topVehicles == "table") then
        for _,veh in ipairs(config.topVehicles) do 
            local vehInfo = getTopVehicleInfo(veh)
            if vehInfo then
                list[#list+1] = vehInfo
            end
        end
    end
    return list
end

function func.getDiscount(id)
    local source = source
    local user_id = id or vRP.getUserId(source)
    for _, i in pairs(config.descontos) do 
        if vRP.hasPermission(user_id,i.perm) then
            if i.porcentagem > 100 or i.porcentagem < 0 then
                return 0
            end
            return i.porcentagem
        end
    end
    return 0
end

function getTopVehicleInfo(vehicle)
    if vehicle and conceVehicles then
        for k,v in ipairs(conceVehicles) do 
            if (v.name == vehicle) then
                return conceVehicles[k]
            end
        end 
    end
    return false
end

function getVehicleEstoque(vehicle)
    if vehicle then
        for _,veh in ipairs(conceVehicles) do 
            if veh.vehicle == vehicle then
                return veh.estoque
            end
        end
    end
    return 0
end

function getVehiclePrice(vehicle)
    if vehicle then
        for _,veh in ipairs(conceVehicles) do 
            if veh.vehicle == vehicle then
                return veh.price
            end
        end
    end
    return 0
end


function getUserExists(user_id)
    for k,v in pairs(timestamp) do 
        if user_id == v.user_id then
            return true
        end
    end
    table.insert(timestamp, {['user_id'] = user_id, ['time'] = os.time() - 1000})
    return true
end

function getTimeAcess(user_id)
    getUserExists(user_id)
    for k,v in pairs(timestamp) do
        if user_id == v.user_id then
            if os.time() > v.time then
                return true,v.time
            else
                return false,v.time
            end
        end
    end
    return false
end

function updateTimeUser(user_id)
    if getUserExists(user_id) == false then
        local time = os.time() + 15
        table.insert(timestamp, {['user_id'] = user_id, ['time'] = time})
    else
        for k,v in pairs(timestamp) do
            if v.user_id == user_id then
                local time = os.time() + 15
                v.time = time
            end
        end
    end
end

function SecondsToClock(seconds)
    print(seconds, os.time())
	local seconds = seconds - os.time()
	if seconds <= 0 then
	  return "00:00:00";
	else
	  hours = string.format("%02.f", math.floor(seconds/3600));
	  mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
	  secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
	  return mins.." minutos e "..secs.." segundos"
	end
end

function func.buyVehicle(vehicle,color)
    local source = source
    local user_id = vRP.getUserId(source)
    local checktime, expire = getTimeAcess(user_id)
    if checktime == true then
        local estoque = getVehicleEstoque(vehicle)
        if estoque <= 0 then
            return false, "veículo fora de estoque"
        elseif hasVehicle(user_id,vehicle) then
            return false, "veículo já possuído"
        end
        local desconto = func.getDiscount(user_id) / 100
        local price = getVehiclePrice(vehicle)
        price = parseInt(price - (price * desconto))
        local mods = fclient.getVehicleMods(source,vehicle)
        local state, message = config.tryBuyVehicle(source,user_id,vehicle,color,price,mods)
        if state then
            removeEstoque(vehicle)
            updateTimeUser(user_id)
            SendWebhookMessage(webhook_concessionaria,"```prolog\n[COMPRA]\n[ID]: "..user_id.."\n[VEICULO]: "..vehicle.."\n[PRECO]: "..price.."\n" ..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
            local vehInfo = config.getVehicleInfo(vehicle)
            if vehInfo then
                addUserVehicle(user_id,vehInfo)
            end
        end
        return state, message
    else
        if expire then
            local tempo = math.floor(expire)
            return false, "Aguarde "..SecondsToClock(tempo).." para fazer a compra novamente"
        else
            return false, "Erro inexperado, tente novamente!"
        end
    end
    return false, "Erro inexperado, tente novamente!"
end


function func.sellVehicle(vehicle)
    local source = source
    vRP.antiflood(source,'sellVehicle',3)
    local user_id = vRP.getUserId(source)
    local checktime, expire = getTimeAcess(user_id)
    if checktime == true then
        local state, message = false, "erro inesperado"
        local vehInfo = config.getVehicleInfo(vehicle)
        if hasVehicle(user_id,vehicle) and vehInfo then
            local price = vehInfo.price * (config.porcentagem_venda / 100)
            state, message = config.trySellVehicle(source,user_id,vehicle,price)
            if state then
                updateTimeUser(user_id)
                SendWebhookMessage(webhook_concessionaria,"```prolog\n[VENDA]\n[ID]: "..user_id.."\n[VEICULO]: "..vehicle.."\n[PRECO]: "..price.."\n" ..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
                removeUserVehicle(user_id,vehicle)
                addEstoque(vehicle)
            end
        end
        return state, message
    else
        if expire then
            local tempo = math.floor(expire)
            return false, "Aguarde "..SecondsToClock(tempo).." para fazer a compra novamente"
        else
            return false, "Erro inexperado, tente novamente!"
        end
    end
    return false, "Erro inexperado, tente novamente!"
end

function hasVehicle(user_id,vehicle)
    if user_id and vehicle and userVehicles[user_id] then
        for _,veh in ipairs(userVehicles[user_id]) do 
            if veh.vehicle == vehicle then
                return true
            end
        end
    end
    return false
end

function addUserVehicle(user_id,vehInfo)
    if user_id and userVehicles[user_id] then
        local veh = { 
            vehicle = vehInfo.name, price = vehInfo.price * (config.porcentagem_venda / 100),
            modelo = vehInfo.modelo, capacidade = vehInfo.capacidade,
        }
        table.insert(userVehicles[user_id], veh)
    end
end

function removeUserVehicle(user_id,vehicle)
    if user_id and vehicle and userVehicles[user_id] then
        for i,veh in ipairs(userVehicles[user_id]) do
            if veh.vehicle == vehicle then
                table.remove(userVehicles[user_id], i)
                return
            end
        end
    end
end

function removeEstoque(vehicle,qtd)
    if vehicle then
        local qtd = qtd or 1
        for i,veh in ipairs(conceVehicles) do 
            if vehicle == veh.vehicle then
                conceVehicles[i].estoque = conceVehicles[i].estoque - qtd
                qtd = conceVehicles[i].estoque
                if conceVehicles[i].estoque <= 0 then
                    table.remove(conceVehicles, i)
                    qtd = 0
                end
                Citizen.CreateThread(function()
                    vRP.execute("nation_conce/removeEstoque", { vehicle = vehicle, estoque = qtd })
                end)
                return true
            end
        end
    end
    return false
end

function addEstoque(vehicle,qtd)
    if vehicle then
        local qtd = qtd or 1
        for i,veh in ipairs(conceVehicles) do 
            if vehicle == veh.vehicle then
                conceVehicles[i].estoque = conceVehicles[i].estoque + qtd
                qtd = conceVehicles[i].estoque
                Citizen.CreateThread(function()
                    vRP.execute("nation_conce/addEstoque", { vehicle = vehicle, estoque = qtd })
                end)
                return true
            end
        end
        local vehInfo = config.getVehicleInfo(vehicle)
        if vehInfo then
            conceVehicles[#conceVehicles+1] = { 
                vehicle = vehicle, price = vehInfo.price, modelo = vehInfo.modelo, 
                capacidade = vehInfo.capacidade, name = vehInfo.name, estoque = qtd
            }
            Citizen.CreateThread(function()
                local isVehicleInConce = #vRP.query("nation_conce/isVehicleInConce",{ vehicle = vehicle }) > 0
                if isVehicleInConce then
                    vRP.execute("nation_conce/addEstoque", { vehicle = vehicle, estoque = qtd })
                else
                    vRP.execute("nation_conce/addVehicle", { vehicle = vehicle, estoque = qtd })
                end
            end)
            return true
        end
    end
    return false
end

function func.getMyVehicles(force)
    local source = source
    local user_id = vRP.getUserId(source)
    local myVehicles = {}
    if force or not userVehicles[user_id] then
        local data = vRP.query("nation_conce/getMyVehicles", {user_id = user_id})
        for _,veh in ipairs(data) do 
        
            local vehInfo = config.getVehicleInfo(veh.vehicle)
            if vehInfo then
                myVehicles[#myVehicles+1] = { 
                    vehicle = vehInfo.name, price = vehInfo.price * (config.porcentagem_venda / 100),
                    modelo = vehInfo.modelo, capacidade = vehInfo.capacidade, 
                }
            end
        end
    else
        return userVehicles[user_id]
    end
    userVehicles[user_id] = myVehicles
    return myVehicles
end

function func.testDrive(vehicle)
    local source = source
    local user_id = vRP.getUserId(source)
    local state, message, vehInfo = false, "erro inesperado", {}
    vehInfo = config.getVehicleInfo(vehicle)
    if vehInfo then
        state, message = config.tryTestDrive(source,user_id,vehInfo)
    end
    return state, message
end

function func.payTest(vehicle)
    local source = source
    local user_id = vRP.getUserId(source)
    local state, message, vehInfo, price = false, "erro inesperado", {}, 0
    vehInfo = config.getVehicleInfo(vehicle)
    if vehInfo then
        state, message, price = config.payTest(source,user_id,vehInfo)
    end
    return state, message, price
end

function func.rentVehicle(vehicle)
    local source = source
    local user_id = vRP.getUserId(source)
    local state, message, vehInfo = false, "erro inesperado", {}
    local estoque = getVehicleEstoque(vehicle)
    if estoque <= 0 then
        return false, "veículo fora de estoque"
    elseif hasVehicle(user_id,vehicle) then
        return false, "veículo já possuído"
    end
    vehInfo = config.getVehicleInfo(vehicle)
    if vehInfo then
        state, message = config.tryRentVehicle(source,user_id,vehInfo)
    end
    return state, message
end

function func.payRent(vehicle)
    local source = source
    local user_id = vRP.getUserId(source)
    local state, message, vehInfo = false, "erro inesperado", {}
    vehInfo = config.getVehicleInfo(vehicle)
    if vehInfo then
        state, message = config.tryPayRent(source,user_id,vehInfo)
    end
    return state, message
end

function func.hasPermission()
    local source = source
    local user_id = vRP.getUserId(source)
    if config.openconce_permission then
        return vRP.hasPermission(user_id, config.openconce_permission)
    end
    return true
end

function func.chargeBack(price)
    local source = source
    local user_id = vRP.getUserId(source)
    if config.chargeBack then
        config.chargeBack(source,user_id,parseInt(price))
    end
end

function showNotify(source,mode,message,time)
    local time = time
    if not time then
        time = 3000
    end
    if config.notify then
        config.notify(source,mode,message,time)
    else
        TriggerClientEvent("Notify",source,mode,message,time) 
    end
end

local manages = {
    ["update"] = function(source) 
        getDbVehicles()
        showNotify(source,"sucesso","Concessionária atualizada com sucesso!") 
    end,
    ["add"] = function(source,vehicle,qtd)
        local qtd = parseInt(qtd)
        if qtd and qtd > 0 then
            local vehInfo = config.getVehicleInfo(vehicle)
            if vehInfo then
                if addEstoque(vehicle,qtd) then
                    showNotify(source,"sucesso","Adicionado(s) <b>"..qtd.." "..vehInfo.modelo.."</b> à concessionária!") 
                else
                    showNotify(source,"negado","Erro inesperado.")
                end
            else
                showNotify(source,"negado","Veículo não identificado.")
            end
        else
            showNotify(source, "negado", "Quantidade inválida.")
        end
    end,
    ["remove"] = function(source,vehicle,qtd)
        local qtd = parseInt(qtd)
        if qtd and qtd > 0 then
            local vehInfo = config.getVehicleInfo(vehicle)
            if vehInfo then
                if removeEstoque(vehicle,qtd) then
                    showNotify(source,"sucesso","Removido(s) <b>"..qtd.." "..vehInfo.modelo.."</b> da concessionária!") 
                else
                    showNotify(source,"negado","Erro inesperado.")
                end
            else
                showNotify(source,"negado","Veículo não identificado.")
            end
        else
            showNotify(source, "negado", "Quantidade inválida.")
        end
        
    end
}

function func.manageConce(mode,vehicle,qtd)
    local source = source
    local user_id = vRP.getUserId(source)
    if mode and vehicle and qtd and vRP.hasPermission(user_id,config.updateconce_permission) then
        if manages[mode] then
            manages[mode](source,vehicle,qtd)
        end
    end 
end


RegisterCommand('conce',function(source)
    local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,config.updateconce_permission) then
        fclient.showAdminMenu(source)
    end
end)

function func.checkAuth()
    return true 
end