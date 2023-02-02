local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

config = {}
Proxy.addInterface("nation_concessionaria", config)

local getVehList = function()
	local list = {}
	local vehglobal = vRP.vehicleGlobal()
	for vehicle, v in pairs(vehglobal) do
		table.insert(list, { 
			name = vehicle, price = v.price, capacidade = v.mala, 
			tipo = v.tipo, modelo = v.name, hash = GetHashKey(vehicle)  
		})
	end
	return list
end
local getVehInfo = function(veh)
	for k,v in ipairs(vehList) do
		if veh == v.name or veh == v.hash then
			return vehList[k]
		end
	end
	return false
end
vehList = getVehList() 
config.getVehicleInfo = function(vehicle)
	return getVehInfo(vehicle) 
end



-------------------------------

local webhook = "" -- link do webbook

function sendWebhookMessage(link, message)
	if link and link ~= "" then
        PerformHttpRequest(link, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

-------------------------------


 --- MYSQL---

 vRP._prepare("nation_conce/createDB",[[
	 CREATE TABLE IF NOT EXISTS `nation_concessionaria` (
	 `vehicle` TEXT,
	 `estoque` INT(11) NOT NULL DEFAULT 0,
	 PRIMARY KEY (`vehicle`(768))
	 )
	 COLLATE='utf8mb4_general_ci'
	 ENGINE=InnoDB
	 ;
 ]])
-----------

function getConceList(cb)
	Citizen.CreateThread(function()
		local vehicles = vRP.query("nation_conce/getConceVehicles") or {}
		cb(vehicles)
	end)
end


function getTopList()
	getConceList(function(list)
		local vehicleList = {}
		for k,v in ipairs(list) do
			local vehInfo = config.getVehicleInfo(v.vehicle)
			if vehInfo then
				vehicleList[#vehicleList+1] = { 
					vehicle = v.vehicle, price = vehInfo.price
				}
			end
		end
		if #vehicleList >= 5 then
			table.sort(vehicleList, function(a, b) return a.price > b.price end)
			for i = 1, 5 do
				local veh = vehicleList[i]
				config.topVehicles[i] = veh.vehicle 
			end
		end
	end)
end


-- LISTA DOS VEÍCULOS EM DESTAQUE

config.topVehicles = {	 
	"i8", 
	"baller250", 
	"nissangtr", 
	"z4", 
	"por911"
}

getTopList() -- pega os veículos mais caros da conce e coloca na lista de destaque (COMENTAR CASO NAO QUEIRA AUTOMATICO)

config.logo = "https://cdn.discordapp.com/attachments/1062810344587800667/1063668474905362482/2171139150173.560c974e07270.png" -- LOGO DO SERVIDOR

config.imgDir = "http://34.95.138.47/imagens/vrp_images/" -- DIRETORIO DAS IMAGENS DOS VEÍCULOS

config.defaultImg = "https://svgsilh.com/svg/160895.svg" -- IMAGEM DEFAULT (SERÁ EXIBIDA QUANDO NÃO EXISTIR A IMAGEM DE ALGUM VEÍCULO NO DIRETÓRIO ESPECIFICADO)

config.openconce_permission = nil -- permissao para abrir a concessionaria

config.updateconce_permission = "dono.permissao" -- permissao para abrir o menu de gerenciamento da conce

config.porcentagem_venda = 10 -- porcentagem de venda dos veículos possuidos

config.porcentagem_testdrive = 0.1 -- porcentagem do valor do veículo paga para a realização do test drive

config.tempo_testdrive = 30 -- tempo de duração do test drive em segundos

config.maxDistance = 300 -- distância máxima (em radius(raio)) que o player poderá ir quando estiver realizando o test drive

config.porcentagem_aluguel = 1 -- porcentagem do valor do veículo paga para alugar


-- NOMES DAS CLASSES DOS VEÍCULOS

config.vehicleClasses = {
	[0] = "compact",  
	[1] = "sedan",  
	[2] = "suv",  
	[3] = "coupé",  
	[4] = "muscle",  
	[5] = "classic",  
	[6] = "sport",  
	[7] = "super",  
	[8] = "moto",  
	[9] = "off-road",  
	[10] = "industrial",  
	[11] = "utility",
	[12] = "van",
	[13] = "cycle",  
	[14] = "boat",  
	[15] = "helicopter",  
	[16] = "plane",  
	[17] = "service", 
	[18] = "emergency",  
	[19] = "military",  
	[20] = "commercial",  
	[21] = "train" 
}


-- CLASSES QUE APARECEM NO MENU DA CONCE

config.conceClasses = {
	{ class = "sedans", img = "https://img.indianautosblog.com/2018/09/25/india-bound-2019-honda-civic-images-front-three-qu-e966.jpg" },
	{ class = "suvs", img = "https://www.otokokpit.com/wp-content/uploads/2017/11/yeni-range-rover-evoque-landmark-edition-1.jpg" },
	{ class = "imports", img = "https://besthqwallpapers.com/Uploads/25-6-2019/97150/thumb2-lamborghini-gallardo-supercars-motion-blur-road-gray-gallardo.jpg" },
	{ class = "trucks", img = "https://images3.alphacoders.com/149/thumb-1920-149257.jpg" },
	{ class = "motos", img = "https://i.pinimg.com/originals/cc/92/dd/cc92dda56f23a2a41682e80e7fe0f744.jpg" },
	{ class = "outros", img = "https://besthqwallpapers.com/Uploads/13-5-2018/52433/thumb2-ford-transit-custom-sport-4k-2018-cars-motion-blur-orange-ford-transit.jpg" },
	{ class = "vip", img = "https://cdn.discordapp.com/attachments/851140884804403200/854875174273024020/2012-Ferrari-458-Italia-RED-4708-4.png" },
	{ class = "br", img = "https://cdn.discordapp.com/attachments/838847862170845277/855220842739531786/afquych1nn5qqjls3vvox9sj8.png" },
}


-- IMAGEM QUE APARECE NA SEÇÃO DE 'MEUS VEÍCULOS'

config.myVehicles_img = "https://www.itl.cat/pngfile/big/50-505834_download-nfs-hot-pursuit.jpg"



-- CLASSES DOS VEÍCULOS INSERIDAS DENTRO DAS CLASSES QUE APARECEM NA CONCE

config.availableClasses = {
	["sedans"] = {"sedan"},
	["suvs"] = {"suv"},
	["imports"] = {"classic", "sport", "super",},  
	["trucks"] = {"industrial", "utility", "commercial"},
	["motos"] = {"moto", "cycle"},
	["outros"] = {"compact", "coupé", "muscle", "off-road",  "boat",  "helicopter",  "plane",  "service", "emergency",  "military",  "train", "van"},
	["vip"] = {"vip"},
	["br"] = {"br"},
}

config.getConceClassFromVehClass= function(vehClass)
	if vehClass then
		for conceClass, t in pairs(config.availableClasses) do
			for i, class in ipairs(t) do
				if class == vehClass then
					return conceClass
				end
			end
		end
	end
end

config.isVehicleClassInConceClass = function(vehClass, conceClass)
	local vehConceClass = config.getConceClassFromVehClass(vehClass)
	if vehConceClass and vehConceClass == conceClass then
		return true
	end
	return false
end


-- ÍCONES DA CONCE

config.miscIcons = {
	{ description = "Força e velocidade necessárias para aquela dose de adrenalina.", img = "https://www.flaticon.com/svg/static/icons/svg/586/586141.svg" },
	{ description = "Incríveis opções econômicas que cabem no seu bolso!", img = "https://www.flaticon.com/svg/static/icons/svg/846/846117.svg" },
	{ description = "Para você que valoriza a eficácia e praticidade.", img = "https://www.flaticon.com/svg/static/icons/svg/1535/1535519.svg" },
}


-- DESCONTOS POR PERMISSAO

config.descontos = {
	{ perm = "dono.permissao", porcentagem =  10 },
	{ perm = "esmeralda.permissao", porcentagem = 10 }
}



	

config.pt_BR = {
	allSlotsOccupied = "Todas as vagas estão ocupadas no momento.",
	testDriveStarted = "Test Drive iniciado. Não saia do veículo e nem vá para muito longe do local.",
	testDriveCanceled = "Test Drive cancelado.",
	testDriveAborted = "Você se afastou muito do local do test.",
	testVehicleUnavailable = "Veículo indisponível para test drive.",
	testFinished = "Test Drive finalizado com sucesso.",
	managementCommand = "conce",
	outStock = "veículo fora de estoque",
	alreadyBought = "veículo já possuído",
	error = "erro inesperado",
	dealerUpdated = "Concessionária atualizada com sucesso!",
	vehicleAdded = function(qtd,vehicle) return "Adicionado(s) <b>"..qtd.." "..vehicle.."</b> à concessionária!" end,
	vehicleRemoved = function(qtd,vehicle) return "Removido(s) <b>"..qtd.." "..vehicle.."</b> à concessionária!" end,
	noIdentifiedVehicle = "Veículo não identificado.",
	invalidQuantity = "Quantidade inválida.",
	success = "sucesso!",
	paymentFailed = "falha no pagamento!",
	cantBeSelled = "Veículo não pode ser vendido",
	rentedVehicle = "veículo alugado ou já vendido",
	testConfirmation = function(price,vehicle) return "deseja pagar <b>$ "..price.."</b> para realizar o test drive em um(a) <b>"..vehicle.."</b> ?" end,
	chargeBack = function(price) return "Você recebeu seus <b>$ "..price.."</b> de volta." end,
	rentConfirmation = function(price,vehicle) return "deseja pagar <b>$ "..price.."</b> para alugar um(a) <b>"..vehicle.."</b> por 1 dia?" end

}

config.lang = config.pt_BR
lang = config.lang

function sendWebhookMessage(webhook, message)
    if webhook then
        PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({content = message}), { ['Content-Type'] = 'application/json' })
    end
end

-- FUNCÃO DE COMPRA DO VEÍCULO

function checkVagas(user_id) -- verificação de vagas
	local vagas = 5
	if vRP.terPemissao(user_id, "ouro.permissao") then
		vagas = vagas + 5
	elseif vRP.terPemissao(user_id, "platina.permissao") then
		vagas = vagas + 10
	end
	--local vagas = tonumber(vRP.getUData(user_id, "vRP:vagas")) or 0
	local numVeiculos = #vRP.query("nation_conce/getAllMyVehicles", { user_id = user_id })
	return numVeiculos < vagas
end

config.tryBuyVehicle = function(source, user_id, vehicle, color, price, mods)
	if source and user_id and vehicle and color and price and mods then
		local data = vRP.query("nation_conce/hasVehicle", {user_id = user_id, vehicle = vehicle})
		local hasVehicle = #data > 0
		local isRented = data[1] and data[1].alugado > 0
		if hasVehicle and not isRented then
			return false, lang.alreadyBought or "veículo já possuído"
		end
		

		if not checkVagas(user_id) then return false, "garagem cheia" end

		if vRP.tryPayment(user_id,price) then
			Citizen.CreateThread(function()
				if isRented then
					vRP.execute("nation_conce/updateUserVehicle", {
						user_id = user_id, vehicle = vehicle
					})
				else 
					vRP.execute("nation_conce/addUserVehicle", {
						user_id = user_id, vehicle = vehicle, ipva = os.time()
					})
				end
				mods.customPcolor = color
				vRP.setSData("custom:u"..user_id.."veh_"..vehicle,json.encode(mods))
				sendWebhookMessage(webhook, "```prolog\n[PASSAPORTE]: "..user_id.." \n[COMPROU]: "..vehicle.." \n[PREÇO]: "..vRP.format(parseInt(price)).." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			end)
			return true, lang.success or "sucesso!"
		else
			return false, lang.paymentFailed or "falha no pagamento"
		end
	end
	return false, lang.error or "erro inesperado"
end




-- FUNÇÃO DE VENDA DO VEÍCULO

config.trySellVehicle = function(source, user_id, vehicle, price)
	if source and user_id and vehicle and price then
		local vehInfo = config.getVehicleInfo(vehicle)
		--[[ if vehInfo.tipo == "exclusive" then
			return false, lang.cantBeSelled or "esse veículo não pode ser vendido"
		end ]]
		if vehInfo and vehInfo.class and vehInfo.class == "vip" then
			return false, "veículo vip"
		end
		local hasVehicle = #vRP.query("nation_conce/getMyVehicles", {user_id = user_id, vehicle = vehicle}) > 0
		if hasVehicle then
			Citizen.CreateThread(function()
				vRP.execute("nation_conce/removeUserVehicle", {user_id = user_id, vehicle = vehicle})
				vRP.giveMoney(user_id,parseInt(price))
			end)
			sendWebhookMessage(webhook, "```prolog\n[PASSAPORTE]: "..user_id.." \n[VENDEU]: "..vehicle.." \n[PREÇO]: "..vRP.format(parseInt(price)).." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			return true, lang.success or "sucesso!"
		else
			return false, lang.rentedVehicle or "veículo alugado ou já vendido"
		end
	end
	return false, lang.error or "erro inesperado"
end



-- VERIFICAÇÃO DE TEST DRIVE

config.tryTestDrive = function(source, user_id, info)
	if source and user_id and info then
		local price = parseInt(info.price * (config.porcentagem_testdrive / 100))
		return true, lang.testConfirmation(vRP.format(price), info.modelo) or "deseja pagar <b>$ "..vRP.format(price).."</b> para realizar o test drive em um(a) <b>"..info.modelo.."</b> ?"
	end
	return false, lang.error or "erro inesperado"
end



-- VERIFICAÇÃO DO PAGAMENTO DO TEST DRIVE

config.payTest = function(source,user_id, info)
	if source and user_id and info then
		local price = parseInt(info.price * (config.porcentagem_testdrive / 100))
		if vRP.tryPayment(user_id, price) then
			sendWebhookMessage(webhook, "```prolog\n[PASSAPORTE]: "..user_id.." \n[TEST DRIVE]: "..info.name.." \n[PREÇO]: "..vRP.format(parseInt(info.price)).." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			return true, lang.success or "sucesso!", price
		else
			return false, lang.paymentFailed or "falha no pagamento"
		end
	end
	return false, lang.error or "erro inesperado"
end


-- DEVOLVER O DINHEIRO CASO NÃO DÊ PARA FAZER O TEST

config.chargeBack = function(source,user_id, price)
	if source and user_id and price then
		vRP.giveMoney(user_id,price)
		TriggerClientEvent("Notify",source,"aviso", lang.chargeBack(vRP.format(price)) or "Você recebeu seus <b>$ "..vRP.format(price).."</b> de volta.", 3000)
	end
end



-- VERIFICAÇÃO DE ALUGUEL DO VEÍCULO

config.tryRentVehicle = function(source, user_id, info)
	if source and user_id and info then
		local hasVehicle = #vRP.query("nation_conce/hasVehicle", {user_id = user_id, vehicle = info.name}) > 0
		
		if info.class and info.class == "vip" then
			return false, "veículo vip"
		end
		
		if hasVehicle then
			return false, lang.alreadyBought or "veículo já possuído"
		end
		local price = parseInt(info.price * (config.porcentagem_aluguel / 100))
		return true, lang.rentConfirmation(vRP.format(price), info.modelo) or "deseja pagar <b>$ "..vRP.format(price).."</b> para alugar um(a) <b>"..info.modelo.."</b> por 1 dia?"
	end
	return false, lang.error or "erro inesperado"
end




-- VERIFICAÇÃO DO PAGAMENTO DO ALUGUEL DO VEÍCULO

config.tryPayRent = function(source,user_id, info)
	if source and user_id and info then
		local price = parseInt(info.price * (config.porcentagem_aluguel / 100))
		if vRP.tryPayment(user_id, price) then
			Citizen.CreateThread(function()
				vRP.execute("nation_conce/addUserRentedVehicle", {
					user_id = user_id, vehicle = info.name, ipva = os.time(), data_alugado = os.date("%d/%m/%Y")
				})
			end)
			sendWebhookMessage(webhook, "```prolog\n[PASSAPORTE]: "..user_id.." \n[ALUGOU]: "..info.name.." \n[PREÇO]: "..vRP.format(parseInt(info.price)).." "..os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S").." \r```")
			return true, lang.success or "sucesso!"
		else
			return false, lang.paymentFailed or "falha no pagamento"
		end
	end
	return false, lang.error or "erro inesperado"
end


-- SESSAO POR TEST DRIVE
config.testStatus = function(player, status)
	if status then
		SetPlayerRoutingBucket(player, math.random(1000)) 
	else
		SetPlayerRoutingBucket(player, 0) 
	end
end


-- LOCAIS DAS CONCESSIONARIAS E REALIZAÇÃO DE TESTES

config.locais = {
	{ 
		conce = vec3(-40.08,-1097.21,26.42), 
		test_locais = {
			{ coords = vec3(-11.25,-1080.46,26.68), h = 129.4 },
			{ coords = vec3(-14.11,-1079.84,26.67), h = 122.02 },
			{ coords = vec3(-16.43,-1078.62,26.67), h = 126.74 },
			{ coords = vec3(-8.45,-1081.58,26.67), h = 117.45 },
		}
	},
	{ 
		conce = vec3(-1123.49,-1708.12,4.45),
		test_locais = {
			{ coords = vec3(-1177.30,-1743.51,4.04), h = 204.54 },
			{ coords = vec3(-1173.95,-1741.34,4.05), h = 212.41 },
			{ coords = vec3(-1171.41,-1739.55,4.07), h = 210.01 },
		} 
	},
}




config.notify = function(source,mode,message,time)
	TriggerClientEvent("Notify",source,mode,message,time)
end


config.blockAddStock = true -- TRUE PARA NAO ADICIONAR O VEICULO VENDIDO AO ESTOQUE AUTOMATICAMENTE


