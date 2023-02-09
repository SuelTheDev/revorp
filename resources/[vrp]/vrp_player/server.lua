local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
local idgens = Tools.newIDGenerator()
src = {}
Tunnel.bindInterface("vrp_player", src)
vDIAGNOSTIC = Tunnel.getInterface("vrp_diagnostic")
local salariostimes = {}


function src.checkRoupas()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.getInventoryItemAmount(user_id, "roupas") >= 1 or vRP.hasPermission(user_id, "roupas.permissao") then
			return true
		else
			TriggerClientEvent("Notify", source, "negado", "Você não possui <b>Roupas Secundárias</b> na mochila.")
			return false
		end
	end
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- radiopma
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterCommand("radio", function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id then
		TriggerClientEvent("vrp_radio:toggleNui", source, true)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ITEMLIST
-----------------------------------------------------------------------------------------------------------------------------------------
local itemlist = {
	["laranja"] = { index = "laranja", nome = "Laranja" },
	["celular"] = { index = "celular", nome = "Celular" },
	["wbody|WEAPON_ASSAULTRIFLE_MK2"] = { index = "wbody|WEAPON_ASSAULTRIFLE_MK2", nome = "Ak 47" },
	--[ Drinks ]-------------------------------------------------------------------------------------------------------

	["agua"] = { index = "agua", nome = "Água" },
	["leite"] = { index = "leite", nome = "Leite" },
	["cafe"] = { index = "cafe", nome = "Café" },
	["cafecleite"] = { index = "cafecleite", nome = "Café com Leite" },
	["cafeexpresso"] = { index = "cafeexpresso", nome = "Café Expresso" },
	["capuccino"] = { index = "capuccino", nome = "Capuccino" },
	["frappuccino"] = { index = "frappuccino", },
	["cha"] = { index = "cha", nome = "Chá" },
	["icecha"] = { index = "icecha", nome = "Chá Gelado" },
	["sprunk"] = { index = "sprunk", nome = "Sprunk" },
	["cola"] = { index = "cola", nome = "Cola" },
	--[ FastFoods ]----------------------------------------------------------------------------------------------------

	["sanduiche"] = { index = "sanduiche", nome = "Sanduíche" },
	["rosquinha"] = { index = "rosquinha", nome = "Rosquinha" },
	["hotdog"] = { index = "hotdog", nome = "HotDog" },
	["xburguer"] = { index = "xburguer", nome = "xBurguer" },
	["chips"] = { index = "chips", nome = "Batata Chips" },
	["batataf"] = { index = "batataf", nome = "Batata Frita" },
	["pizza"] = { index = "pizza", nome = "Pedaço de Pizza" },
	["bcereal"] = { index = "bcereal", nome = "Barra de Cereal" },
	["bchocolate"] = { index = "bchocolate", nome = "Barra de Chocolate" },
	["taco"] = { index = "taco", nome = "Taco" },
	["nitro"] = { index = "nitro", nome = "Óxido Nitroso" },
	["tartaruga"] = { index = "tartaruga", nome = "Filhote de Tartaruga" },
	["carnedetartaruga"] = { index = "carnedetartaruga", nome = "Carne de Tartaruga" },
	["ferramenta"] = { index = "ferramenta", nome = "Ferramenta" },
	["encomenda"] = { index = "encomenda", nome = "Encomenda" },
	["carta"] = { index = "carta", nome = "Carta" },
	["gas"] = { index = "gas", nome = "gas" },
	["oxigênio"] = { index = "oxigênio", nome = "oxigênio" },
	["carcilindrota"] = { index = "cilindro", nome = "cilindro" },
	["sacodelixo"] = { index = "sacodelixo", nome = "Saco de Lixo" },
	["garrafavazia"] = { index = "garrafavazia", nome = "Garrafa Vazia" },
	["garrafadeleite"] = { index = "garrafadeleite", nome = "Garrafa de Leite" },
	["tora"] = { index = "tora", nome = "Tora de Madeira" },
	["pedacodemadeira"] = { index = "pedacodemadeira", nome = "Pedaço de Madeira" },
	["alianca"] = { index = "alianca", nome = "Aliança" },
	["bandagem"] = { index = "bandagem", nome = "Bandagem" },
	["dorflex"] = { index = "dorflex", nome = "Dorflex" },
	["cicatricure"] = { index = "cicatricure", nome = "Cicatricure" },
	["dipiroca"] = { index = "dipiroca", nome = "Dipiroca" },
	["nocucedin"] = { index = "nocucedin", nome = "Nocucedin" },
	["paracetanal"] = { index = "paracetanal", nome = "Paracetanal" },
	["decupramim"] = { index = "decupramim", nome = "Decupramim" },
	["buscopau"] = { index = "buscopau", nome = "Buscopau" },
	["navagina"] = { index = "navagina", nome = "Navagina" },
	["analdor"] = { index = "analdor", nome = "Analdor" },
	["sefodex"] = { index = "sefodex", nome = "Sefodex" },
	["nokusin"] = { index = "nokusin", nome = "Nokusin" },
	["glicoanal"] = { index = "glicoanal", nome = "Glicoanal" },
	["batata"] = { index = "batata", nome = "Batata" },
	["cerveja"] = { index = "cerveja", nome = "Cerveja" },
	["tequila"] = { index = "tequila", nome = "Tequila" },
	["vodka"] = { index = "vodka", nome = "Vodka" },
	["whisky"] = { index = "whisky", nome = "Whisky" },
	["conhaque"] = { index = "conhaque", nome = "Conhaque" },
	["absinto"] = { index = "absinto", nome = "Absinto" },
	["dinheirosujo"] = { index = "dinheiro-sujo", nome = "Dinheiro Sujo" },
	["dinheiro"] = { index = "dinheiro", nome = "Dinheiro" },
	["repairkit"] = { index = "repairkit", nome = "Kit de Reparos" },
	["algemas"] = { index = "algemas", nome = "Algemas" },
	["capuz"] = { index = "capuz", nome = "Capuz" },
	["lockpick"] = { index = "lockpick", nome = "Lockpick" },
	["pneus"] = { index = "pneus", nome = "Pneus", type = "usar" },
	["ticket"] = { index = "ticket", nome = "ticket", type = "usar" },
	["masterpick"] = { index = "masterpick", nome = "Masterpick" },
	["militec"] = { index = "militec", nome = "Militec-1" },
	["carnedecormorao"] = { index = "carnedecormorao", nome = "Carne de Cormorão" },
	["carnedecorvo"] = { index = "carnedecorvo", nome = "Carne de Corvo" },
	["carnedeaguia"] = { index = "carnedeaguia", nome = "Carne de Águia" },
	["carnedecervo"] = { index = "carnedecervo", nome = "Carne de Cervo" },
	["carnedecoelho"] = { index = "carnedecoelho", nome = "Carne de Coelho" },
	["carnedecoyote"] = { index = "carnedecoyote", nome = "Carne de Coyote" },
	["carnedelobo"] = { index = "carnedelobo", nome = "Carne de Lobo" },
	["carnedepuma"] = { index = "carnedepuma", nome = "Carne de Puma" },
	["carnedejavali"] = { index = "carnedejavali", nome = "Carne de Javali" },
	["amora"] = { index = "amora", nome = "Amora" },
	["cereja"] = { index = "cereja", nome = "Cereja" },
	["graos"] = { index = "graos", nome = "Graos" },
	["graosimpuros"] = { index = "graosimpuros", nome = "Graos Impuros" },
	["keycard"] = { index = "keycard", nome = "Keycard" },
	["isca"] = { index = "isca", nome = "Isca" },
	["dourado"] = { index = "dourado", nome = "Peixe" },
	["corvina"] = { index = "corvina", nome = "Peixe Cozido" },
	["energetico"] = { index = "energetico", nome = "Energético" },
	["mochila"] = { index = "mochila", nome = "Mochila" },
	-- Maconha ------------------------------------------------------------------------------------------------------
	["maconha"] = { index = "maconha", nome = "Maconha" },
	["ramosdemaconha"] = { index = "ramosdemaconha", nome = "Ramo de Maconha" },
	["maconhanaoprocessada"] = { index = "maconhanaoprocessada", nome = "Maconha não Processada" },
	["maconhamisturada"] = { index = "maconhamisturada", nome = "Maconha Misturada" },
	["baseado"] = { index = "baseado", nome = "Baseado" },
	["seda"] = { index = "seda", nome = "Seda" },
	["receita1"] = { index = "receita1", nome = "Receita Médica" },
	["receita2"] = { index = "receita2", nome = "Receita Médica" },
	-- Ecstasy ----------------------------------------------------------------------------------------------------
	["ocitocina"] = { index = "ocitocina", nome = "Ocitocina Sintética" },
	["ociacido"] = { index = "ociacido", nome = "Ácido Anf. Desidratado" },
	["primaecstasy"] = { index = "primaecstasy", nome = "Matéria Prima - Ecstasy" },
	["ecstasy"] = { index = "ecstasy", nome = "Ecstasy" },
	["glicerina"] = { index = "glicerina", nome = "Glicerina" },
	-----------------------------------------------------------------------------------------------------------------
	-- Lavagem de Dinheiro ------------------------------------------------------------------------------------------
	["impostoderenda"] = { index = "impostoderenda", nome = "Imposto de Renda" },
	["impostoderendafalso"] = { index = "impostoderendafalso", nome = "Imposto de Renda Falso" },
	["alvejante"] = { index = "alvejante", nome = "Alvejante" },
	["papel"] = { index = "papel", nome = "Papel" },
	["notafiscalfalsa"] = { index = "notafiscalfalsa", nome = "Nota Fiscal Falsa" },
	-----------------------------------------------------------------------------------------------------------------
	-- DK ------------------------------------------------------------------------------------------

	["fioseletricos"] = { index = "fioseletricos", nome = "Fios Elétricos" },
	["adubo"] = { index = "adubo", nome = "Adubo" },
	["suspensaoar"] = { index = "suspensaoar", nome = "Kit Suspensão a ar" },
	["fertilizante"] = { index = "fertilizante", nome = "Fertilizante de Maconha" },
	["capsula"] = { index = "capsula", nome = "Cápsula" },
	["polvora"] = { index = "polvora", nome = "Pólvora" },
	["lingerie"] = { index = "lingerie", nome = "Lingerie" },
	["tecido"] = { index = "tecido", nome = "Tecido" },
	["pano"] = { index = "pano", nome = "Pano" },
	["linha"] = { index = "linha", nome = "Linha" },
	["orgaos"] = { index = "orgaos", nome = "Órgãos" },
	["orgaobatido"] = { index = "orgaobatido", nome = "Órgão Batido" },
	["pecaeletronica"] = { index = "pecaeletronica", nome = "Peça Eletrônica" },
	["computadormontado"] = { index = "computadormontado", nome = "Computador Montado Roubado" },
	["identidadedigital"] = { index = "identidadedigital", nome = "Identidade Digital Roubada" },
	["identidadefisica"] = { index = "identidadefisica", nome = "Identidade Roubada Física" },
	["etiqueta"] = { index = "etiqueta", nome = "Etiqueta" },
	["pendrive"] = { index = "pendrive", nome = "Pendrive" },
	["notebook"] = { index = "notebook", nome = "Notebook" },
	["placa"] = { index = "placa", nome = "Placa" },
	["relogioroubado"] = { index = "relogioroubado", nome = "Relógio Roubado" },
	["pulseiraroubada"] = { index = "pulseiraroubada", nome = "Pulseira Roubada" },
	["anelroubado"] = { index = "anelroubado", nome = "Anel Roubado" },
	["colarroubado"] = { index = "colarroubado", nome = "Colar Roubado" },
	["brincoroubado"] = { index = "brincoroubado", nome = "Brinco Roubado" },
	["carteiraroubada"] = { index = "carteiraroubada", nome = "Carteira Roubada" },
	["tabletroubado"] = { index = "tabletroubado", nome = "Tablet Roubado" },
	["sapatosroubado"] = { index = "sapatosroubado", nome = "Sapatos Roubado" },
	["vibradorroubado"] = { index = "vibradorroubado", nome = "Vibrador Roubado" },
	["perfumeroubado"] = { index = "perfumeroubado", nome = "Perfume Roubado" },
	----------------------------- COCAÍNA ---------------------------------------
	["folhadecoca"] = { index = "folhadecoca", nome = "Folha de Coca" },
	["pastadecoca"] = { index = "pastadecoca", nome = "Pasta de Coca" },
	["cocamisturada"] = { index = "cocamisturada", nome = "Cocaína Misturada" },
	["cocaina"] = { index = "cocaina", nome = "Cocaína" },
	["ziplock"] = { index = "ziplock", nome = "Saco ZipLock" },
	["lanche"] = { index = "lanche", nome = "lanche" },
	["fungo"] = { index = "fungo", nome = "Fungo" },
	["dietilamina"] = { index = "dietilamina", nome = "Dietilamina" },
	["lsd"] = { index = "lsd", nome = "LSD" },
	["acidoc"] = { index = "acidocorrosivo", nome = "Acido Corrosivo" },
	["acidobateria"] = { index = "acidobateria", nome = "Ácido de Bateria" },
	["anfetamina"] = { index = "anfetamina", nome = "Anfetamina" },
	["metanfetamina"] = { index = "metanfetamina", nome = "Metanfetamina" },
	["cristal"] = { index = "cristal", nome = "Cristal de Metanfetamina" },
	["pipe"] = { index = "pipe", nome = "Pipe" },
	["projetodearma"] = { index = "projetodearma", nome = "Projeto de Arma" },
	["armacaodearma"] = { index = "armacaodearma", nome = "Armação de Arma" },
	["pecadearma"] = { index = "pecadearma", nome = "Peça de Arma" },
	["logsinvasao"] = { index = "logsinvasao", nome = "L. Inv. Banco" },
	["keysinvasao"] = { index = "keysinvasao", nome = "K. Inv. Banco" },
	["pendriveinformacoes"] = { index = "pendriveinformacoes", nome = "P. com Info." },
	["acessodeepweb"] = { index = "acessodeepweb", nome = "P. DeepWeb" },
	["diamante"] = { index = "diamante", nome = "Min. Diamante" },
	["ouro"] = { index = "ouro", nome = "Min. Ouro" },
	["bronze"] = { index = "bronze", nome = "Min. Bronze" },
	["ferro"] = { index = "ferro", nome = "Min. Ferro" },
	["rubi"] = { index = "rubi", nome = "Min. Rubi" },
	["esmeralda"] = { index = "esmeralda", nome = "Min. Esmeralda" },
	["safira"] = { index = "safira", nome = "Min. Safira" },
	["topazio"] = { index = "topazio", nome = "Min. Topazio" },
	["ametista"] = { index = "ametista", nome = "Min. Ametista" },
	["diamante2"] = { index = "diamante2", nome = "Diamante" },
	["ouro2"] = { index = "ouro2", nome = "Ouro" },
	["bronze2"] = { index = "bronze2", nome = "Bronze" },
	["ferro2"] = { index = "ferro2", nome = "Ferro" },
	["rubi2"] = { index = "rubi2", nome = "Rubi" },
	["esmeralda2"] = { index = "esmeralda2", nome = "Esmeralda" },
	["safira2"] = { index = "safira2", nome = "Safira" },
	["topazio2"] = { index = "topazio2", nome = "Topazio" },
	["ametista2"] = { index = "ametista2", nome = "Ametista" },
	["ingresso"] = { index = "ingresso", nome = "Ingresso Eventos" },
	["radio"] = { index = "radio", nome = "Radio" },
	["serra"] = { index = "serra", nome = "Serra" },
	["furadeira"] = { index = "furadeira", nome = "Furadeira" },
	["c4"] = { index = "c4", nome = "C-4" },
	["roupas"] = { index = "roupas", nome = "Roupas" },
	["colete"] = { index = "colete", nome = "Colete" },
	["xerelto"] = { index = "xerelto", nome = "Xerelto" },
	["coumadin"] = { index = "coumadin", nome = "Coumadin" },
	["detonador"] = { index = "detonador", nome = "Detonador" },
	["ferramentas"] = { index = "ferramentas", nome = "Ferramentas Pesadas" },
	["projetoassaultrifle"] = { index = "projetoassaultrifle", nome = "Projeto Ak-47" },
	["projetoassaultsmg"] = { index = "projetoassaultsmg", nome = "Projeto MAG-PDR" },
	["projetobullpuprifle"] = { index = "projetobullpuprifle", nome = "Projeto QBZ" },
	["projetocarbinerifle"] = { index = "projetocarbinerifle", nome = "Projeto M4A1" },
	["projetocombatpdw"] = { index = "projetocombatpdw", nome = "Projeto MPX" },
	["projetocombatpistol"] = { index = "projetocombatpistol", nome = "Projeto Glock 19" },
	["projetogusenberg"] = { index = "projetogusenberg", nome = "Projeto Thompson" },
	["projetopistol"] = { index = "projetopistol", nome = "Projeto M1911" },
	["projetopumpshotgun"] = { index = "projetopumpshotgun", nome = "Projeto Shotgun" },
	["projetosawnoffshotgun"] = { index = "projetosawnoffshotgun", nome = "Projeto Shot Cano Serrado" },
	["projetosmg"] = { index = "projetosmg", nome = "Projeto MP5" },
	["wbody|WEAPON_DAGGER"] = { index = "adaga", nome = "Adaga" },
	["wbody|WEAPON_BAT"] = { index = "beisebol", nome = "Taco de Beisebol" },
	["wbody|WEAPON_BOTTLE"] = { index = "garrafa", nome = "Garrafa" },
	["wbody|WEAPON_CROWBAR"] = { index = "cabra", nome = "Pé de Cabra" },
	["wbody|WEAPON_FLASHLIGHT"] = { index = "lanterna", nome = "Lanterna" },
	["wbody|WEAPON_GOLFCLUB"] = { index = "golf", nome = "Taco de Golf" },
	["wbody|WEAPON_HAMMER"] = { index = "martelo", nome = "Martelo" },
	["wbody|WEAPON_HATCHET"] = { index = "machado", nome = "Machado" },
	["wbody|WEAPON_KNUCKLE"] = { index = "ingles", nome = "Soco-Inglês" },
	["wbody|WEAPON_KNIFE"] = { index = "faca", nome = "Faca" },
	["wbody|WEAPON_MACHETE"] = { index = "machete", nome = "Machete" },
	["wbody|WEAPON_SWITCHBLADE"] = { index = "canivete", nome = "Canivete" },
	["wbody|WEAPON_NIGHTSTICK"] = { index = "cassetete", nome = "Cassetete" },
	["wbody|WEAPON_WRENCH"] = { index = "grifo", nome = "Chave de Grifo" },
	["wbody|WEAPON_BATTLEAXE"] = { index = "batalha", nome = "Machado de Batalha" },
	["wbody|WEAPON_POOLCUE"] = { index = "sinuca", nome = "Taco de Sinuca" },
	["wbody|WEAPON_STONE_HATCHET"] = { index = "pedra", nome = "Machado de Pedra" },
	["wbody|WEAPON_PISTOL"] = { index = "m1911", nome = "M1911" }, -- WEAPON_PISTOL
	["wbody|WEAPON_PISTOL_MK2"] = { index = "fiveseven", nome = "FN Five Seven" },
	["wbody|WEAPON_SPECIALCARBINE_MK2"] = { index = "Carabina-Especial-Mk2", nome = "Carabina-Especial-Mk2",
		type = "equipar" },
	["wbody|WEAPON_SPECIALCARBINE"] = { index = "Carabina-Especial", nome = "Carabina-Especial", type = "equipar" },
	["wbody|WEAPON_RAYPISTOL"] = { index = "raypistol", nome = "Arminha", type = "equipar" },
	["wbody|WEAPON_COMBATPISTOL"] = { index = "glock", nome = "Glock 19" }, -- WEAPON_COMBATPISTOL
	["wbody|WEAPON_STUNGUN"] = { index = "taser", nome = "Taser" },
	["wbody|WEAPON_SNSPISTOL"] = { index = "hkp7m10", nome = "HK P7M10" },
	["wbody|WEAPON_VINTAGEPISTOL"] = { index = "m1922", nome = "M1922" },
	["wbody|WEAPON_REVOLVER"] = { index = "magnum44", nome = "Magnum 44" },
	["wbody|WEAPON_REVOLVER_MK2"] = { index = "magnum357", nome = "Magnum 357" },
	["wbody|WEAPON_MUSKET"] = { index = "winchester22", nome = "Winchester 22" },
	["wbody|WEAPON_FLARE"] = { index = "sinalizador", nome = "Sinalizador" },
	["wbody|GADGET_PARACHUTE"] = { index = "paraquedas", nome = "Paraquedas" },
	["wbody|WEAPON_FIREEXTINGUISHER"] = { index = "extintor", nome = "Extintor" },
	["wbody|WEAPON_MICROSMG"] = { index = "uzi", nome = "Uzi" },
	["wbody|WEAPON_SMG"] = { index = "smg", nome = "SMG" }, -- WEAPON_SMG
	["wbody|WEAPON_ASSAULTSMG"] = { index = "mag-pdr", nome = "MAG-PDR" }, -- WEAPON_ASSAULTSMG
	["wbody|WEAPON_COMBATPDW"] = { index = "sigsauer", nome = "Sig Sauer MPX" }, -- WEAPON_COMBATPDW
	["wbody|WEAPON_PUMPSHOTGUN_MK2"] = { index = "remington", nome = "Remington 870" },
	["wbody|WEAPON_CARBINERIFLE"] = { index = "m4a1", nome = "M4A1" }, -- WEAPON_CARBINERIFLE
	["wbody|WEAPON_ASSAULTRIFLE"] = { index = "ak47", nome = "AK-47" }, -- WEAPON_ASSAULTRIFLE
	["wbody|WEAPON_SPECIALCARBINE"] = { index = "parafall", nome = "Parafall" },
	["wbody|WEAPON_BULLPUPRIFLE"] = { index = "qbz", nome = "QBZ" }, -- WEAPON_BULLPUPRIFLE
	["wbody|WEAPON_BZGAS"] = { index = "gas", nome = "Gas", type = "equipar" },
	["wammo|WEAPON_BULLPUPRIFLE"] = { index = "m-qbz", nome = "M.QBZ" }, -- WEAPON_BULLPUPRIFLE
	["wbody|WEAPON_GUSENBERG"] = { index = "thompson", nome = "Thompson" }, -- WEAPON_GUSENBERG
	["wbody|WEAPON_MACHINEPISTOL"] = { index = "tec9", nome = "Tec-9" },
	["wbody|WEAPON_CARBINERIFLE_MK2"] = { index = "mpx", nome = "MPX" },
	["wbody|WEAPON_COMPACTRIFLE"] = { index = "aks", nome = "AKS-74U" },
	["wbody|WEAPON_PETROLCAN"] = { index = "gasolina", nome = "Galão de Gasolina" },
	["wbody|WEAPON_PUMPSHOTGUN"] = { index = "shotgun", nome = "Shotgun" }, -- WEAPON_PUMPSHOTGUN
	["wbody|WEAPON_SAWNOFFSHOTGUN"] = { index = "sawnoffshotgun", nome = "Shotgun C.Serrado" }, -- WEAPON_SAWNOFFSHOTGUN
	["wammo|WEAPON_SAWNOFFSHOTGUN"] = { index = "m-sawnoffshotgun", nome = "M.Shotgun C.Serrado" }, -- WEAPON_SAWNOFFSHOTGUN
	["wammo|WEAPON_PISTOL"] = { index = "m-m1911", nome = "M.M1911" }, -- WEAPON_PISTOL
	["wammo|WEAPON_PISTOL_MK2"] = { index = "m-fiveseven", nome = "M.Five Seven" },
	["wammo|WEAPON_SPECIALCARBINE_MK2"] = { index = "M-Carabina-Especial-Mk2", nome = "M.Carabina-Especial-Mk2",
		type = "recarregar" },
	["wammo|WEAPON_SPECIALCARBINE"] = { index = "M-Carabina-Especial", nome = "M.Carabina-Especial", type = "recarregar" },
	["wammo|WEAPON_COMBATPISTOL"] = { index = "m-glock", nome = "M.Glock 19" }, -- WEAPON_COMBATPISTOL
	["wammo|WEAPON_STUNGUN"] = { index = "m-taser", nome = "M.Taser" },
	["wammo|WEAPON_SNSPISTOL"] = { index = "m-hkp7m10", nome = "M.HK P7M10" },
	["wammo|WEAPON_VINTAGEPISTOL"] = { index = "m-m1922", nome = "M.M1922" },
	["wammo|WEAPON_REVOLVER"] = { index = "m-magnum44", nome = "M.Magnum 44" },
	["wammo|WEAPON_REVOLVER_MK2"] = { index = "m-magnum357", nome = "M.Magnum 357" },
	["wammo|WEAPON_MUSKET"] = { index = "m-winchester22", nome = "M.Winchester 22" },
	["wammo|WEAPON_FLARE"] = { index = "m-sinalizador", nome = "M.Sinalizador" },
	["wammo|GADGET_PARACHUTE"] = { index = "m-paraquedas", nome = "M.Paraquedas" },
	["wammo|WEAPON_FIREEXTINGUISHER"] = { index = "m-extintor", nome = "M.Extintor" },
	["wammo|WEAPON_MICROSMG"] = { index = "m-uzi", nome = "M.Uzi" },
	["wammo|WEAPON_SMG"] = { index = "m-smg", nome = "M.SMG" }, -- WEAPON_SMG
	["wammo|WEAPON_ASSAULTSMG"] = { index = "m-mag-pdr", nome = "M.MAG-PDR" }, -- WEAPON_ASSAULTSMG
	["wammo|WEAPON_COMBATPDW"] = { index = "m-sigsauer", nome = "M.Sig Sauer MPX" }, -- WEAPON_COMBATPDW
	["wammo|WEAPON_PUMPSHOTGUN"] = { index = "m-shotgun", nome = "M.Shotgun" }, -- WEAPON_PUMPSHOTGUN
	["wammo|WEAPON_PUMPSHOTGUN_MK2"] = { index = "m-remington", nome = "M.Remington 870" },
	["wammo|WEAPON_CARBINERIFLE"] = { index = "m-m4a1", nome = "M.M4A1" }, -- WEAPON_CARBINERIFLE
	["wammo|WEAPON_ASSAULTRIFLE"] = { index = "m-ak47", nome = "M.AK-47" }, -- WEAPON_ASSAULTRIFLE
	["wammo|WEAPON_MACHINEPISTOL"] = { index = "m-tec9", nome = "M.Tec-9" },
	["wammo|WEAPON_CARBINERIFLE_MK2"] = { index = "m-mpx", nome = "M.MPX" },
	["wammo|WEAPON_COMPACTRIFLE"] = { index = "m-aks", nome = "M.AKS-74U" },
	["wammo|WEAPON_GUSENBERG"] = { index = "m-thompson", nome = "M.Thompson" }, -- WEAPON_GUSENBERG
	["wammo|WEAPON_PETROLCAN"] = { index = "combustivel", nome = "Combustível" },
	["kitgps"] = { index = "kitgps", nome = "Kit GPS" },
	["removegps"] = { index = "remove-hps", nome = "Removedor de GPS" }
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- USER VEHS [ADMIN]
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('uservehs', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id, "admin.permissao") then
			local nuser_id = parseInt(args[1])
			if nuser_id > 0 then
				local vehicle = vRP.query("creative/get_vehicle", { user_id = parseInt(nuser_id) })
				local car_names = {}
				for k, v in pairs(vehicle) do
					table.insert(car_names, "<b>" .. vRP.vehicleName(v.vehicle) .. "</b>")
					--TriggerClientEvent("Notify",source,"importante","<b>Modelo:</b> "..v.vehicle,10000)
				end
				car_names = table.concat(car_names, ", ")
				local identity = vRP.getUserIdentity(nuser_id)
				TriggerClientEvent("Notify", source, "importante",
					"Veículos de <b>" ..
					identity.name .. " " .. identity.firstname .. " (" .. #vehicle .. ")</b>: " .. car_names,
					10000)
			end
		end
	end
end)

RegisterCommand('reskin', function(source, rawCommand)
	vRPclient._setCustomization(vRPclient.getCustomization(source))
end)


RegisterCommand('status', function(source, args, rawCommand)

end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ID
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('id', function(source, rawCommand)
	local nplayer = vRPclient.getNearestPlayer(source, 2)
	local nuser_id = vRP.getUserId(nplayer)
	if nuser_id then
		local identity = vRP.getUserIdentity(nuser_id)
		vRPclient.setDiv(source, "completerg",
			".div_completerg { background-color: rgba(0,0,0,0.60); font-size: 13px; font-family: arial; color: #fff; width: 420px; padding: 20px 20px 5px; bottom: 8%; right: 2.5%; position: absolute; border: 1px solid rgba(255,255,255,0.2); letter-spacing: 0.5px; } .local { width: 220px; padding-bottom: 15px; float: left; } .local2 { width: 200px; padding-bottom: 15px; float: left; } .local b, .local2 b { color: #d1257d; }"
			, "<div class=\"local\"><b>Passaporte:</b> ( " .. vRP.format(identity.user_id) .. " )</div>")
		vRP.request(source, "Você deseja fechar o registro geral?", 1000)
		vRPclient.removeDiv(source, "completerg")
	end
end)


RegisterCommand('revistar', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	local nplayer = vRPclient.getNearestPlayer(source, 2)
	local nuser_id = vRP.getUserId(nplayer)
	if nuser_id then
		local weapons = vRPclient.getWeapons(nplayer)
		local money = vRP.getMoney(nuser_id)
		local data = vRP.getUserDataTable(nuser_id)

		TriggerClientEvent('cancelando', source, true)
		TriggerClientEvent('cancelando', nplayer, true)
		TriggerClientEvent('carregar', nplayer, source)
		vRPclient._playAnim(source, false, { { "misscarsteal4@director_grip", "end_loop_grip" } }, true)
		vRPclient._playAnim(nplayer, false, { { "random@mugging3", "handsup_standing_base" } }, true)
		TriggerClientEvent("progress", source, 5000, "revistando")
		SetTimeout(5000, function()
			TriggerClientEvent('chatMessage', source, "", {},
				"^4- -  ^5M O C H I L A^4  - - - - - - - - - - - - - - - - - - - - - - - - - - -  [  ^3" ..
				string.format("%.2f", vRP.getInventoryWeight(nuser_id)) ..
				"kg^4  /  ^3" .. string.format("%.2f", vRP.getInventoryMaxWeight(nuser_id)) .. "kg^4  ]  - -")
			if data and data.inventory then
				for k, v in pairs(data.inventory) do
					TriggerClientEvent('chatMessage', source, "", {},
						"     " .. vRP.format(parseInt(v.amount)) .. "x " .. vRP.itemNameList(v.item))
				end
			end
			TriggerClientEvent('chatMessage', source, "", {},
				"^4- -  ^5E Q U I P A D O^4  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
			for k, v in pairs(weapons) do
				if v.ammo < 1 then
					TriggerClientEvent('chatMessage', source, "", {}, "     1x " .. vRP.itemNameList("wbody|" .. k))
				else
					TriggerClientEvent('chatMessage', source, "", {},
						"     1x " ..
						vRP.itemNameList("wbody|" .. k) .. " | " .. vRP.format(parseInt(v.ammo)) .. "x Munições")
				end
			end

			vRPclient._stopAnim(source, false)
			vRPclient._stopAnim(nplayer, false)
			TriggerClientEvent('cancelando', source, false)
			TriggerClientEvent('cancelando', nplayer, false)
			TriggerClientEvent('carregar', nplayer, source)
			TriggerClientEvent('chatMessage', source, "", {}, "     $" .. vRP.format(parseInt(money)) .. " Dólares")
		end)
		TriggerClientEvent("Notify", nplayer, "aviso", "Você está sendo <b>Revistado</b>.")
	end
end)

RegisterServerEvent('salario:pagamento')
AddEventHandler('salario:pagamento', function()
	local source = source

	if not salariostimes[source] then salariostimes[source] = 0 end

	if not (os.time() - salariostimes[source] >= 3600) then
		return CancelEvent()
	end
	salariostimes[source] = os.time()
	local user_id = vRP.getUserId(source)
	print("Evento de Salário: ", source, GetPlayerName(source), user_id)
	if user_id then
		local groups = vRP.getUserGroups(user_id) or {}
		for group_id, active in next, groups do
			if active then
				local salary = vRP.getGroupSalary(group_id)
				if salary > 0 then
					TriggerClientEvent("vrp_sound:source", source, 'coins', 0.5)
					TriggerClientEvent("Notify", source, "importante",	
						"Obrigado por colaborar com a cidade, seu salario de <b>$" .. vRP.format(salary) .. " reais</b> foi depositado.")
						vRP.giveBankMoney(user_id, parseInt(v.payment))
				end				
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NOCARJACK
-----------------------------------------------------------------------------------------------------------------------------------------
local veiculos = {}
RegisterServerEvent("TryDoorsEveryone")
AddEventHandler("TryDoorsEveryone", function(veh, doors, placa)
	if not veiculos[placa] then
		TriggerClientEvent("SyncDoorsEveryone", -1, veh, doors)
		veiculos[placa] = true
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- AFKSYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("kickAFK")
AddEventHandler("kickAFK", function()
	local source = source
	local user_id = vRP.getUserId(source)
	if not vRP.hasPermission(user_id, "staff.permissao") then
		DropPlayer(source, "Voce foi desconectado por ficar ausente.")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /SEQUESTRO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('sequestro', function(source, args, rawCommand)
	local nplayer = vRPclient.getNearestPlayer(source, 5)
	if nplayer then
		if vRPclient.isHandcuffed(nplayer) then
			if not vRPclient.getNoCarro(source) then
				local vehicle = vRPclient.getNearestVehicle(source, 7)
				if vehicle then
					if vRPclient.getCarroClass(source, vehicle) then
						vRPclient.setMalas(nplayer)
					end
				end
			elseif vRPclient.isMalas(nplayer) then
				vRPclient.setMalas(nplayer)
			end
		else
			TriggerClientEvent("Notify", source, "aviso",
				"A pessoa precisa estar algemada para colocar ou retirar do Porta-Malas.")
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRATAMENTO
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('tratamento', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id, "ems.permissao") then
		local nplayer = vRPclient.getNearestPlayer(source, 3)
		if nplayer then
			if not vRPclient.isComa(nplayer) then
				TriggerClientEvent("tratamento", nplayer)
				TriggerClientEvent("Notify", source, "sucesso", "Tratamento no paciente iniciado com sucesso.", 10000)
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- MOTOR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('motor', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	local mPlaca = vRPclient.ModelName(source, 3)
	local mPlacaUser = vRP.getUserByRegistration(mPlaca)
	if mPlaca then
		if not vRPclient.isInVehicle(source) then
			if vRP.hasPermission(user_id, "mecanico.permissao") then
				if user_id ~= mPlacaUser then
					TriggerClientEvent('cancelando', source, true)
					vRPclient._playAnim(source, false, { { "mini@repair", "fixing_a_player" } }, true)
					TriggerClientEvent("progress", source, 30000, "reparando")
					SetTimeout(30000, function()
						TriggerClientEvent('cancelando', source, false)
						TriggerClientEvent('repararmotor', source)
						vRPclient._stopAnim(source, false)
					end)
				else
					TriggerClientEvent("Notify", source, "aviso", "Não pode efetuar reparos em seu próprio veículo.")
				end
			else
				if vRP.tryGetInventoryItem(user_id, "militec", 1) then
					TriggerClientEvent('cancelando', source, true)
					vRPclient._playAnim(source, false, { { "mini@repair", "fixing_a_player" } }, true)
					TriggerClientEvent("progress", source, 30000, "reparando")
					SetTimeout(30000, function()
						TriggerClientEvent('cancelando', source, false)
						TriggerClientEvent('repararmotor', source)
						vRPclient._stopAnim(source, false)
					end)
				else
					TriggerClientEvent("Notify", source, "negado", "Precisa de um <b>Militec-1</b> para reparar o motor.")
				end
			end
		else
			TriggerClientEvent("Notify", source, "negado",
				"Precisa estar próximo ou fora do veículo para efetuar os reparos.")
		end
	end
end)

RegisterServerEvent("trymotor")
AddEventHandler("trymotor", function(nveh)
	TriggerClientEvent("syncmotor", -1, nveh)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- BEIJAR
-------------------------------------------------------------------------------------------------------------------------------------

RegisterCommand("beijar", function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	local nplayer = vRPclient.getNearestPlayer(source, 2)
	if nplayer then
		local pedido = vRP.request(nplayer, "Deseja iniciar o beijo ?", 10)
		if pedido then
			vRPclient.playAnim(source, true, { { "mp_ped_interaction", "kisses_guy_a" } }, false)
			vRPclient.playAnim(nplayer, true, { { "mp_ped_interaction", "kisses_guy_b" } }, false)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REPARAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('reparar', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if not vRPclient.isInVehicle(source) then
		local vehicle = vRPclient.getNearestVehicle(source, 7)
		if vRP.hasPermission(user_id, "mecanico.permissao") then
			TriggerClientEvent('cancelando', source, true)
			vRPclient._playAnim(source, false, { { "mini@repair", "fixing_a_player" } }, true)
			TriggerClientEvent("progress", source, 30000, "reparando")
			SetTimeout(30000, function()
				TriggerClientEvent('cancelando', source, false)
				TriggerClientEvent('reparar', source, vehicle)
				vRPclient._stopAnim(source, false)
			end)
		else
			if vRP.tryGetInventoryItem(user_id, "repairkit", 1) then
				TriggerClientEvent('cancelando', source, true)
				vRPclient._playAnim(source, false, { { "mini@repair", "fixing_a_player" } }, true)
				TriggerClientEvent("progress", source, 30000, "reparando")
				SetTimeout(30000, function()
					TriggerClientEvent('cancelando', source, false)
					TriggerClientEvent('reparar', source, vehicle)
					vRPclient._stopAnim(source, false)
				end)
			else
				TriggerClientEvent("Notify", source, "negado",
					"Precisa de um <b>Kit de Reparos</b> para reparar o veículo.")
			end
		end
	else
		TriggerClientEvent("Notify", source, "negado",
			"Precisa estar próximo ou fora do veículo para efetuar os reparos.")
	end
end)

RegisterServerEvent("tryreparar")
AddEventHandler("tryreparar", function(nveh)
	TriggerClientEvent("syncreparar", -1, nveh)
end)


RegisterCommand('roubar', function(source, args, rawCommand)
	
end)

RegisterCommand('saquear', function(source, args, rawCommand)
	
end)

RegisterServerEvent("trytow")
AddEventHandler("trytow", function(nveh, rveh)
	TriggerClientEvent("synctow", -1, nveh, rveh)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TRUNK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("trytrunk")
AddEventHandler("trytrunk", function(nveh)
	TriggerClientEvent("synctrunk", -1, nveh)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- WINS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("trywins")
AddEventHandler("trywins", function(nveh)
	TriggerClientEvent("syncwins", -1, nveh)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- capo
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("tryhood")
AddEventHandler("tryhood", function(nveh)
	TriggerClientEvent("synchood", -1, nveh)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- portas
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("trydoors")
AddEventHandler("trydoors", function(nveh, door)
	TriggerClientEvent("syncdoors", -1, nveh, door)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CALL
-----------------------------------------------------------------------------------------------------------------------------------------
local blips = {}
RegisterCommand('call', function(source, args, rawCommand)
	local source = source
	local answered = false
	local user_id = vRP.getUserId(source)
	local uplayer = vRP.getUserSource(user_id)
	vida = vRPclient.getHealth(source)
	vRPclient._CarregarObjeto(source, "cellphone@", "cellphone_call_to_text", "prop_amb_phone", 50, 28422)
	if user_id then
		local descricao = vRP.prompt(source, "Descrição:", "")
		if descricao == "" then
			vRPclient._stopAnim(source, false)
			vRPclient._DeletarObjeto(source)
			return
		end

		local x, y, z = vRPclient.getPosition(source)
		local players = {}
		vRPclient._stopAnim(source, false)
		vRPclient._DeletarObjeto(source)
		local especialidade = false
		if args[1] == "190" then
			players = vRP.getUsersByPermission("policia.permissao")
			especialidade = "policiais"
		elseif args[1] == "192" then
			players = vRP.getUsersByPermission("paramedico.permissao")
			especialidade = "paramédicos"
		elseif args[1] == "mec" then
			players = vRP.getUsersByPermission("mecanico.permissao")
			especialidade = "mecânicos"
		elseif args[1] == "taxi" then
			players = vRP.getUsersByPermission("taxista.permissao")
			especialidade = "taxistas"
		elseif args[1] == "advogado" then
			players = vRP.getUsersByPermission("advogado.permissao")
			especialidade = "advogados"
		elseif args[1] == "juiz" then
			players = vRP.getUsersByPermission("juiz.permissao")
			especialidade = "juizes"
		elseif args[1] == "css" then
			players = vRP.getUsersByPermission("conce.permissao")
			especialidade = "vendedores"
		elseif args[1] == "jornal" then
			players = vRP.getUsersByPermission("news.permissao")
			especialidade = "jornalistas"
		elseif args[1] == "speed" then
			players = vRP.getUsersByPermission("speed.permissao")
			especialidade = "Speed"
		elseif args[1] == "adm" then
			players = vRP.getUsersByPermission("suporte.permissao")
			especialidade = "Administradores"
		end
		local adm = ""
		if especialidade == "Administradores" then
			adm = "[ADM] "
		end

		vRPclient.playSound(source, "Event_Message_Purple", "GTAO_FM_Events_Soundset")
		if #players == 0 and especialidade ~= "policiais" then
			TriggerClientEvent("Notify", source, "importante", "Não há " .. especialidade .. " em serviço.")
		else
			local identitys = vRP.getUserIdentity(user_id)
			TriggerClientEvent("Notify", source, "sucesso", "Chamado enviado com sucesso.")
			for l, w in pairs(players) do
				local player = vRP.getUserSource(parseInt(w))
				local nuser_id = vRP.getUserId(player)
				if player and player ~= uplayer then
					async(function()
						vRPclient.playSound(player, "Out_Of_Area", "DLC_Lowrider_Relay_Race_Sounds")
						TriggerClientEvent('chatMessage', player, "CHAMADO", { 19, 197, 43 },
							adm ..
							"Enviado por ^1" ..
							identitys.name .. " " .. identitys.firstname .. "^0 [" .. user_id .. "], " .. descricao)
						local ok = vRP.request(player,
								"Aceitar o chamado de <b>" .. identitys.name .. " " .. identitys.firstname ..
								"</b>?", 30)
						if ok then
							if not answered then
								answered = true
								local identity = vRP.getUserIdentity(nuser_id)
								TriggerClientEvent("Notify", source, "importante",
									"Chamado atendido por <b>" ..
									identity.name .. " " .. identity.firstname .. "</b>, aguarde no local.")
								vRPclient.playSound(source, "Event_Message_Purple", "GTAO_FM_Events_Soundset")
								vRPclient._setGPS(player, x, y)
							else
								TriggerClientEvent("Notify", player, "importante",
									"Chamado ja foi atendido por outra pessoa.")
								vRPclient.playSound(player, "CHECKPOINT_MISSED", "HUD_MINI_GAME_SOUNDSET")
							end
						end
						local id = idgens:gen()
						blips[id] = vRPclient.addBlip(player, x, y, z, 358, 71, "Chamado", 0.6, false)
						SetTimeout(300000, function()
							vRPclient.removeBlip(player, blips[id])
							idgens:free(id)
						end)
					end)
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MEC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('mec', function(source, args, rawCommand)
	if args[1] then
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		if vRP.hasPermission(user_id, "mecanico.permissao") then
			if user_id then
				TriggerClientEvent('chatMessage', -1, "Central Mecânica", { 255, 128, 0 }, rawCommand:sub(4))
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('mr', function(source, args, rawCommand)
	if args[1] then
		local user_id = vRP.getUserId(source)
		local identity = vRP.getUserIdentity(user_id)
		local permission = "mecanico.permissao"
		if vRP.hasPermission(user_id, permission) then
			local mec = vRP.getUsersByPermission(permission)
			for l, w in pairs(mec) do
				local player = vRP.getUserSource(parseInt(w))
				if player then
					async(function()
						TriggerClientEvent('chatMessage', player, identity.name .. " " .. identity.firstname,
							{ 255, 191, 128 },
							rawCommand:sub(3))
					end)
				end
			end
		end
	end
end)


-- -----------------------------------------------------------------------------------------------------------------------------------------
-- -- ME
-- -----------------------------------------------------------------------------------------------------------------------------------------
-- RegisterCommand('me', function(source, args, rawCommand)
-- 	if args[1] then
-- 		local user_id = vRP.getUserId(source)
-- 		local identity = vRP.getUserIdentity(user_id)
-- 		TriggerClientEvent('chatME', -1, source, identity.name, rawCommand:sub(3))
-- 	end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CARTAS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('card', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		local cd = math.random(1, 13)
		local naipe = math.random(1, 4)
		TriggerClientEvent('CartasMe', -1, source, identity.name, cd, naipe)
	end
end)
----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('ChatRoll')
AddEventHandler('ChatRoll', function(text)
	local user_id = vRP.getUserId(source)
	if user_id then
		TriggerClientEvent('DisplayRoll', -1, text, source)
	end
end)


-----------------------------------------------------------------------------------------------------------------------------------------
-- /card
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('card', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		local cd = math.random(1, 13)
		local naipe = math.random(1, 4)
		TriggerClientEvent('CartasMe', -1, source, identity.name, cd, naipe)
	end
end)

------------------ tratamento
RegisterCommand('cuidar', function(source, args, rawCommand)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local nplayer = vRPclient.getNearestPlayer(source, 3)
	local nuser_id = vRP.getUserId(nplayer)
	local identityu = vRP.getUserIdentity(nuser_id)

	if vRP.hasPermission(user_id, "ems.permissao") then
		if vRP.request(nplayer, "Deseja receber tratamento no valor de <b>$1500</b>?", 30) then
			if vRP.tryFullPayment(nuser_id, 1500, (args[1])) then
				vRP.giveBankMoney(user_id, 1500, (args[1]))
				TriggerClientEvent('Notify', source, "sucesso",
					"Recebeu <b>R$1500</b> de <b>" .. identityu.name .. " " .. identityu.firstname .. "</b>.")
				if nplayer then
					if not vRPclient.isComa(nplayer) then
						TriggerClientEvent("tratamento", nplayer)
						TriggerClientEvent("Notify", source, "sucesso", "Tratamento no paciente iniciado com sucesso.",
							10000)
					end
				end
			else
				TriggerClientEvent("Notify", source, "negado", "Dinheiro insuficiente.")
			end
		end
	end
end)
------------------ tratamento
RegisterCommand('cuidar2', function(source, args, rawCommand)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	local nplayer = vRPclient.getNearestPlayer(source, 3)
	local nuser_id = vRP.getUserId(nplayer)
	local identityu = vRP.getUserIdentity(nuser_id)

	if vRP.hasPermission(user_id, "medico.permissao") then
		if vRP.request(nplayer, "Deseja receber tratamento no valor de <b>$0</b>?", 30) then
			if vRP.tryFullPayment(nuser_id, 0, (args[1])) then
				vRP.giveBankMoney(user_id, 0, (args[1]))
				TriggerClientEvent('Notify', source, "sucesso",
					"Recebeu <b>R$0</b> de <b>" .. identityu.name .. " " .. identityu.firstname .. "</b>.")
				if nplayer then
					if not vRPclient.isComa(nplayer) then
						TriggerClientEvent("tratamento", nplayer)
						TriggerClientEvent("Notify", source, "sucesso", "Tratamento no paciente iniciado com sucesso.",
							10000)
					end
				end
			else
				TriggerClientEvent("Notify", source, "negado", "Dinheiro insuficiente.")
			end
		end
	end
end)
--------
-----------------------------------------------------------------------------------------------------------------------------------------
-- /mascara
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('mascara', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source, user_id) then
				if user_id then
					TriggerClientEvent("setmascara", source, args[1], args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /blusa
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('blusa', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source, user_id) then
				if user_id then
					TriggerClientEvent("setblusa", source, args[1], args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /colete
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('colete', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source, user_id) then
				if user_id then
					TriggerClientEvent("setcolete", source, args[1], args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /jaqueta
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('jaqueta', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source, user_id) then
				if user_id then
					TriggerClientEvent("setjaqueta", source, args[1], args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /maos
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('maos', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source, user_id) then
				if user_id then
					TriggerClientEvent("setmaos", source, args[1], args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /calca
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('calca', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source, user_id) then
				if user_id then
					TriggerClientEvent("setcalca", source, args[1], args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /acessorios
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('acessorios', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source, user_id) then
				if user_id then
					TriggerClientEvent("setacessorios", source, args[1], args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /sapatos
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('sapatos', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source, user_id) then
				if user_id then
					TriggerClientEvent("setsapatos", source, args[1], args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /chapeu
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('chapeu', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source, user_id) then
				if user_id then
					TriggerClientEvent("setchapeu", source, args[1], args[2])
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- /oculos
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand('oculos', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source, user_id) then
				if user_id then
					TriggerClientEvent("setoculos", source, args[1], args[2])
				end
			end
		end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- ROUPAS
-----------------------------------------------------------------------------------------------------------------------------------------
local roupas = {
	["mecanico"] = {
		[1885233650] = {
			[1] = { -1, 0 },
			[3] = { 12, 0 },
			[4] = { 39, 0 },
			[5] = { -1, 0 },
			[6] = { 24, 0 },
			[7] = { 109, 0 },
			[8] = { 89, 0 },
			[9] = { 14, 0 },
			[10] = { -1, 0 },
			[11] = { 66, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 },
			[3] = { 14, 0 },
			[4] = { 38, 0 },
			[5] = { -1, 0 },
			[6] = { 24, 0 },
			[7] = { 2, 0 },
			[8] = { 56, 0 },
			[9] = { 35, 0 },
			[10] = { -1, 0 },
			[11] = { 59, 0 }
		}
	},
	["minerador"] = {
		[1885233650] = {
			[1] = { -1, 0 },
			[3] = { 99, 1 },
			[4] = { 89, 20 },
			[5] = { -1, 0 },
			[6] = { 82, 2 },
			[7] = { -1, 0 },
			[8] = { 90, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 273, 0 },
			["p1"] = { 23, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 },
			[3] = { 114, 1 },
			[4] = { 92, 20 },
			[5] = { -1, 0 },
			[6] = { 86, 2 },
			[7] = { -1, 0 },
			[8] = { 54, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 286, 0 },
			["p1"] = { 25, 0 }
		}
	},
	["lixeiro"] = {
		[1885233650] = {
			[1] = { -1, 0 },
			[3] = { 17, 0 },
			[4] = { 36, 0 },
			[5] = { -1, 0 },
			[6] = { 27, 0 },
			[7] = { -1, 0 },
			[8] = { 59, 0 },
			[10] = { -1, 0 },
			[11] = { 57, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 },
			[3] = { 18, 0 },
			[4] = { 35, 0 },
			[5] = { -1, 0 },
			[6] = { 26, 0 },
			[7] = { -1, 0 },
			[8] = { 36, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 50, 0 }
		}
	},
	["carteiro"] = {
		[1885233650] = {
			[1] = { -1, 0 },
			[3] = { 0, 0 },
			[4] = { 17, 10 },
			[5] = { 40, 0 },
			[6] = { 7, 0 },
			[7] = { -1, 0 },
			[8] = { 15, 0 },
			[10] = { -1, 0 },
			[11] = { 242, 3 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 },
			[3] = { 14, 0 },
			[4] = { 14, 1 },
			[5] = { 40, 0 },
			[6] = { 10, 1 },
			[7] = { -1, 0 },
			[8] = { 6, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 250, 3 }
		}
	},
	["fazendeiro"] = {
		[1885233650] = {
			[1] = { -1, 0 },
			[3] = { 37, 0 },
			[4] = { 7, 0 },
			[5] = { -1, 0 },
			[6] = { 15, 6 },
			[7] = { -1, 0 },
			[8] = { 15, 0 },
			[10] = { -1, 0 },
			[11] = { 95, 2 },
			["p0"] = { 105, 23 },
			["p1"] = { 5, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 },
			[3] = { 45, 0 },
			[4] = { 25, 10 },
			[5] = { -1, 0 },
			[6] = { 21, 1 },
			[7] = { -1, 0 },
			[8] = { 6, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 171, 4 },
			["p0"] = { 104, 23 },
			["p1"] = { 11, 2 }
		}
	},
	["lenhador"] = {
		[1885233650] = {
			[1] = { -1, 0 },
			[3] = { 62, 0 },
			[4] = { 89, 23 },
			[5] = { -1, 0 },
			[6] = { 12, 0 },
			[7] = { -1, 0 },
			[8] = { 15, 0 },
			[10] = { -1, 0 },
			[11] = { 15, 0 },
			["p0"] = { 77, 13 },
			["p1"] = { 23, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 },
			[3] = { 71, 0 },
			[4] = { 92, 23 },
			[5] = { -1, 0 },
			[6] = { 69, 0 },
			[7] = { -1, 0 },
			[8] = { 6, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 15, 0 },
			["p1"] = { 25, 0 }
		}
	},
	["taxista"] = {
		[1885233650] = {
			[1] = { -1, 0 },
			[3] = { 11, 0 },
			[4] = { 35, 0 },
			[5] = { -1, 0 },
			[6] = { 10, 0 },
			[7] = { -1, 0 },
			[8] = { 15, 0 },
			[10] = { -1, 0 },
			[11] = { 13, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 },
			[3] = { 0, 0 },
			[4] = { 112, 0 },
			[5] = { -1, 0 },
			[6] = { 6, 0 },
			[7] = { -1, 0 },
			[8] = { 6, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 27, 0 }
		}
	},
	["caminhoneiro"] = {
		[1885233650] = {
			[1] = { -1, 0 },
			[3] = { 0, 0 },
			[4] = { 63, 0 },
			[5] = { -1, 0 },
			[6] = { 27, 0 },
			[7] = { -1, 0 },
			[8] = { 81, 0 },
			[10] = { -1, 0 },
			[11] = { 173, 3 },
			["p1"] = { 8, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 },
			[3] = { 14, 0 },
			[4] = { 74, 5 },
			[5] = { -1, 0 },
			[6] = { 9, 0 },
			[7] = { -1, 0 },
			[8] = { 92, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 175, 3 },
			["p1"] = { 11, 0 }
		}
	},
	["motocross"] = {
		[1885233650] = {
			[1] = { -1, 0 },
			[3] = { 111, 0 },
			[4] = { 67, 3 },
			[5] = { -1, 0 },
			[6] = { 47, 3 },
			[7] = { -1, 0 },
			[8] = { 15, 0 },
			[10] = { -1, 0 },
			[11] = { 152, 0 },
			["p1"] = { 25, 5 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 },
			[3] = { 128, 0 },
			[4] = { 69, 3 },
			[5] = { -1, 0 },
			[6] = { 48, 3 },
			[7] = { -1, 0 },
			[8] = { 6, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 149, 0 },
			["p1"] = { 27, 5 }
		}
	},
	["mergulho"] = {
		[1885233650] = {
			[1] = { 122, 0 },
			[3] = { 31, 0 },
			[4] = { 94, 0 },
			[5] = { -1, 0 },
			[6] = { 67, 0 },
			[7] = { -1, 0 },
			[8] = { 123, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 243, 0 },
			["p0"] = { -1, 0 },
			["p1"] = { 26, 0 },
			["p2"] = { -1, 0 },
			["p6"] = { -1, 0 },
			["p7"] = { -1, 0 }
		},
		[ -1667301416] = {
			[1] = { 122, 0 },
			[3] = { 18, 0 },
			[4] = { 97, 0 },
			[5] = { -1, 0 },
			[6] = { 70, 0 },
			[7] = { -1, 0 },
			[8] = { 153, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 251, 0 },
			["p0"] = { -1, 0 },
			["p1"] = { 28, 0 },
			["p2"] = { -1, 0 },
			["p6"] = { -1, 0 },
			["p7"] = { -1, 0 }
		}
	},
	["pelado"] = {
		[1885233650] = {
			[1] = { -1, 0 },
			[3] = { 15, 0 },
			[4] = { 21, 0 },
			[5] = { -1, 0 },
			[6] = { 34, 0 },
			[7] = { -1, 0 },
			[8] = { 15, 0 },
			[10] = { -1, 0 },
			[11] = { 15, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 },
			[3] = { 15, 0 },
			[4] = { 21, 0 },
			[5] = { -1, 0 },
			[6] = { 35, 0 },
			[7] = { -1, 0 },
			[8] = { 6, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 82, 0 }
		}
	},
	["paciente"] = {
		[1885233650] = {
			[1] = { -1, 0 },
			[3] = { 15, 0 },
			[4] = { 61, 0 },
			[5] = { -1, 0 },
			[6] = { 16, 0 },
			[7] = { -1, 0 },
			[8] = { 15, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 104, 0 },
			["p0"] = { -1, 0 },
			["p1"] = { -1, 0 },
			["p2"] = { -1, 0 },
			["p6"] = { -1, 0 },
			["p7"] = { -1, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 },
			[3] = { 0, 0 },
			[4] = { 57, 0 },
			[5] = { -1, 0 },
			[6] = { 16, 0 },
			[7] = { -1, 0 },
			[8] = { 7, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 105, 0 },
			["p0"] = { -1, 0 },
			["p1"] = { -1, 0 },
			["p2"] = { -1, 0 },
			["p6"] = { -1, 0 },
			["p7"] = { -1, 0 }
		}
	},
	["gesso"] = {
		[1885233650] = {
			[1] = { -1, 0 },
			[3] = { 1, 0 },
			[4] = { 84, 9 },
			[5] = { -1, 0 },
			[6] = { 13, 0 },
			[7] = { -1, 0 },
			[8] = { -1, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 186, 9 },
			["p0"] = { -1, 0 },
			["p1"] = { -1, 0 },
			["p2"] = { -1, 0 },
			["p6"] = { -1, 0 },
			["p7"] = { -1, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 },
			[3] = { 3, 0 },
			[4] = { 86, 9 },
			[5] = { -1, 0 },
			[6] = { 12, 0 },
			[7] = { -1, 0 },
			[8] = { -1, 0 },
			[9] = { -1, 0 },
			[10] = { -1, 0 },
			[11] = { 188, 9 },
			["p0"] = { -1, 0 },
			["p1"] = { -1, 0 },
			["p2"] = { -1, 0 },
			["p6"] = { -1, 0 },
			["p7"] = { -1, 0 }
		}
	},
	["leiteiro"] = {
		[1885233650] = {
			[1] = { -1, 0 }, -- máscara
			[3] = { 74, 0 }, -- maos
			[4] = { 89, 22 }, -- calça
			[5] = { -1, 0 }, -- mochila
			[6] = { 51, 0 }, -- sapato
			[7] = { -1, 0 }, -- acessorios
			[8] = { -1, 0 }, -- blusa
			[9] = { -1, 0 }, -- colete
			[10] = { -1, 0 }, -- adesivo
			[11] = { 271, 0 }, -- jaqueta
			["p0"] = { 105, 22 }, -- chapeu
			["p1"] = { 23, 0 }, -- oculos
		},
		[ -1667301416] = {
			[1] = { -1, 0 }, -- máscara
			[3] = { 85, 0 }, -- maos
			[4] = { 92, 22 }, -- calça
			[5] = { -1, 0 }, -- mochila
			[6] = { 52, 0 }, -- sapato
			[7] = { -1, 0 }, -- acessorios
			[8] = { -1, 0 }, -- blusa
			[9] = { -1, 0 }, -- colete
			[10] = { -1, 0 }, -- adesivo
			[11] = { 141, 0 }, -- jaqueta
			["p0"] = { -1, 0 }, -- chapeu
			["p1"] = { 3, 9 }, -- oculos
		}
	},
	["motorista"] = {
		[1885233650] = {
			[1] = { -1, 0 }, -- máscara
			[3] = { 0, 0 }, -- maos
			[4] = { 10, 0 }, -- calça
			[5] = { -1, 0 }, -- mochila
			[6] = { 21, 0 }, -- sapato
			[7] = { -1, 0 }, -- acessorios
			[8] = { -1, 0 }, -- blusa
			[9] = { -1, 0 }, -- colete
			[10] = { -1, 0 }, -- adesivo
			[11] = { 242, 1 }, -- jaqueta
			["p0"] = { -1, 0 }, -- chapeu
			["p1"] = { 7, 0 }, -- oculos
			["p2"] = { -1, 0 },
			["p6"] = { -1, 0 },
			["p7"] = { -1, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 }, -- máscara
			[3] = { 14, 0 }, -- maos
			[4] = { 37, 0 }, -- calça
			[5] = { -1, 0 }, -- mochila
			[6] = { 27, 0 }, -- sapato
			[7] = { -1, 0 }, -- acessorios
			[8] = { -1, 0 }, -- blusa
			[9] = { -1, 0 }, -- colete
			[10] = { -1, 0 }, -- adesivo
			[11] = { 250, 1 }, -- jaqueta
			["p0"] = { -1, 0 }, -- chapeu
			["p1"] = { -1, 0 }, -- oculos
			["p2"] = { -1, 0 },
			["p6"] = { -1, 0 },
			["p7"] = { -1, 0 }
		}
	},
	["cacador"] = {
		[1885233650] = {
			[1] = { -1, 0 }, -- máscara
			[3] = { 20, 0 }, -- maos
			[4] = { 97, 18 }, -- calça
			[5] = { -1, 0 }, -- mochila
			[6] = { 24, 0 }, -- sapato
			[7] = { -1, 0 }, -- acessorios
			[8] = { 2, 2 }, -- blusa
			[9] = { -1, 0 }, -- colete
			[10] = { -1, 0 }, -- adesivo
			[11] = { 244, 19 }, -- jaqueta
			["p0"] = { -1, 0 }, -- chapeu
			["p1"] = { 5, 0 }, -- oculos
			["p2"] = { -1, 0 },
			["p6"] = { -1, 0 },
			["p7"] = { -1, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 }, -- máscara
			[3] = { 20, 0 }, -- maos
			[4] = { 100, 18 }, -- calça
			[5] = { -1, 0 }, -- mochila
			[6] = { 24, 0 }, -- sapato
			[7] = { -1, 0 }, -- acessorios
			[8] = { 44, 1 }, -- blusa
			[9] = { -1, 0 }, -- colete
			[10] = { -1, 0 }, -- adesivo
			[11] = { 252, 19 }, -- jaqueta
			["p0"] = { -1, 0 }, -- chapeu
			["p1"] = { -1, 0 }, -- oculos
			["p2"] = { -1, 0 },
			["p6"] = { -1, 0 },
			["p7"] = { -1, 0 }
		}
	},
	["pescador"] = {
		[1885233650] = {
			[1] = { -1, 0 }, -- máscara
			[3] = { 0, 0 }, -- maos
			[4] = { 98, 19 }, -- calça
			[5] = { -1, 0 }, -- mochila
			[6] = { 24, 0 }, -- sapato
			[7] = { -1, 0 }, -- acessorios
			[8] = { 85, 2 }, -- blusa
			[9] = { -1, 0 }, -- colete
			[10] = { -1, 0 }, -- adesivo
			[11] = { 247, 12 }, -- jaqueta
			["p0"] = { 104, 20 }, -- chapeu
			["p1"] = { 5, 0 }, -- oculos
			["p2"] = { -1, 0 },
			["p6"] = { -1, 0 },
			["p7"] = { -1, 0 }
		},
		[ -1667301416] = {
			[1] = { -1, 0 }, -- máscara
			[3] = { 14, 0 }, -- maos
			[4] = { 101, 19 }, -- calça
			[5] = { -1, 0 }, -- mochila
			[6] = { 24, 0 }, -- sapato
			[7] = { -1, 0 }, -- acessorios
			[8] = { 88, 1 }, -- blusa
			[9] = { -1, 0 }, -- colete
			[10] = { -1, 0 }, -- adesivo
			[11] = { 255, 13 }, -- jaqueta
			["p0"] = { -1, 0 }, -- chapeu
			["p1"] = { 11, 0 }, -- oculos
			["p2"] = { -1, 0 },
			["p6"] = { -1, 0 },
			["p7"] = { -1, 0 }
		}
	}
}


RegisterCommand('roupas', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if not vRP.searchReturn(source, user_id) then
				if args[1] then
					local custom = roupas[tostring(args[1])]
					if custom then
						local old_custom = vRPclient.getCustomization(source)
						local idle_copy = {}

						idle_copy = vRP.save_idle_custom(source, old_custom)
						idle_copy.modelhash = nil

						for l, w in pairs(custom[old_custom.modelhash]) do
							idle_copy[l] = w
						end
						vRPclient._playAnim(source, true, { { "clothingshirt", "try_shirt_positive_d" } }, false)
						Citizen.Wait(2500)
						vRPclient._stopAnim(source, true)
						vRPclient._setCustomization(source, idle_copy)
					end
				else
					vRPclient._playAnim(source, true, { { "clothingshirt", "try_shirt_positive_d" } }, false)
					Citizen.Wait(2500)
					vRPclient._stopAnim(source, true)
					vRP.removeCloak(source)
				end
			end
		end
	end
end)

RegisterCommand('roupas2', function(source, args, rawCommand)
	local user_id = vRP.getUserId(source)
	if vRPclient.getHealth(source) > 101 then
		if not vRPclient.isHandcuffed(source) then
			if vRP.hasPermission(user_id, "admin.permissao") or vRP.hasPermission(user_id, "paramedico.permissao") then
				local nplayer = vRPclient.getNearestPlayer(source, 2)
				if not vRP.searchReturn(nplayer, user_id) then
					if nplayer then
						if args[1] then
							local custom = roupas[tostring(args[1])]
							if custom then
								local old_custom = vRPclient.getCustomization(nplayer)
								local idle_copy = {}

								idle_copy = vRP.save_idle_custom(nplayer, old_custom)
								idle_copy.modelhash = nil

								for l, w in pairs(custom[old_custom.modelhash]) do
									idle_copy[l] = w
								end
								vRPclient._setCustomization(nplayer, idle_copy)
							end
						else
							vRP.removeCloak(nplayer)
						end
					end
				end
			end
		end
	end
end)

--------------------------------------------------------------------------------------------------
-------------------------- /cavalinho ------------------------------------------------------------
--------------------------------------------------------------------------------------------------
RegisterServerEvent('cmg2_animations:sync')
AddEventHandler('cmg2_animations:sync',
	function(target, animationLib, animation, animation2, distans, distans2, height, targetSrc, length, spin,
		     controlFlagSrc
		,    controlFlagTarget, animFlagTarget)
		print("got to srv cmg2_animations:sync")
		TriggerClientEvent('cmg2_animations:syncTarget', targetSrc, source, animationLib, animation2, distans, distans2,
			height
			, length, spin, controlFlagTarget, animFlagTarget)
		print("triggering to target: " .. tostring(targetSrc))
		TriggerClientEvent('cmg2_animations:syncMe', source, animationLib, animation, length, controlFlagSrc,
			animFlagTarget)
	end)

RegisterServerEvent('cmg2_animations:stop')
AddEventHandler('cmg2_animations:stop', function(targetSrc)
	TriggerClientEvent('cmg2_animations:cl_stop', targetSrc)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- Carregar
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent('cmg2_animations:sync')
AddEventHandler('cmg2_animations:sync',
	function(target, animationLib, animationLib2, animation, animation2, distans, distans2, height, targetSrc, length,
		     spin
		,    controlFlagSrc, controlFlagTarget, animFlagTarget)
		print("got to srv cmg2_animations:sync")
		TriggerClientEvent('cmg2_animations:syncTarget', targetSrc, source, animationLib2, animation2, distans, distans2,
			height, length, spin, controlFlagTarget, animFlagTarget)
		print("triggering to target: " .. tostring(targetSrc))
		TriggerClientEvent('cmg2_animations:syncMe', source, animationLib, animation, length, controlFlagSrc,
			animFlagTarget)
	end)

RegisterServerEvent('cmg2_animations:stop')
AddEventHandler('cmg2_animations:stop', function(targetSrc)
	TriggerClientEvent('cmg2_animations:cl_stop', targetSrc)
end)

----------------------------------------------------------
-- LIMPAR INVENTARIO -------------------------------------
----------------------------------------------------------
-- RegisterCommand('limpar',function(source,args,rawCommand)
--     local user_id = vRP.getUserId(source)
--     if vRP.hasPermission(user_id,"admin.permissao") then
--         TriggerEvent(user_id,'clearInventory')
--         TriggerClientEvent("Notify",source,"importante","Seu <b>inventario</b> foi limpo.")
--     end
-- end)

local numsrc = nil
local IsCounting = 0


RegisterServerEvent('suricato:source:register')
AddEventHandler('suricato:source:register', function(src)
	numsrc = src
	IsCounting = 14
end)

AddEventHandler("playerDropped", function()
	local source = source
	salariostimes[source] = nil
	if IsCounting > 0 then
		if numsrc == source then
			local idban = vRP.getUserId(numsrc)
			vRP.setBanned(idban, true)
			--garmas?
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if IsCounting > 0 then
			IsCounting = IsCounting - 1
		else
			TriggerEvent('suricato:source:unregister')
		end
	end
end)

function src.getGarmas()
	if IsCounting == 0 then
		return true
	else
		return IsCounting
	end
end

RegisterServerEvent('suricato:source:unregister')
AddEventHandler('suricato:source:unregister', function()
	numsrc = nil
	IsCounting = 0
end)


RegisterServerEvent('garmas:suricato')
AddEventHandler('garmas:suricato', function()
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
	if user_id then
		local weapons = vRPclient.replaceWeapons(source, {})
		for k, v in pairs(weapons) do
			vRP.giveInventoryItem(user_id, "wbody|" .. k, 1)
			if v.ammo > 0 then
				vRP.giveInventoryItem(user_id, "wammo|" .. k, v.ammo)
			end
			SendWebhookMessage(webhookgarmas,
				"```prolog\n[ID]: " ..
				user_id ..
				" " ..
				identity.name ..
				" " ..
				identity.firstname ..
				" \n[GUARDOU]: " ..
				vRP.itemNameList("wbody|" .. k) ..
				" \n[QUANTIDADE]: " .. v.ammo .. " " .. os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```")
			if v.ammo == 250 then
				SendWebhookMessage(webhookgarmas250,
					"```prolog\n[ID]: " ..
					user_id ..
					" " ..
					identity.name ..
					" " ..
					identity.firstname ..
					" \n[TENTOU USAR MONSTERMENU E FOI PEGO NO PULO] \n>>>> [GUARDOU]: " ..
					vRP.itemNameList("wbody|" .. k) ..
					" \n[QUANTIDADE]: " .. v.ammo .. " " ..
					os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S") .. " \r```<@&641048265856647169>")
			end
		end
		TriggerClientEvent("Notify", source, "sucesso", "Guardou seu armamento na mochila.")
	end
end)




-- AddEventHandler("playerDropped", function()
-- 	local source = source
-- 	print('source do jogador: ' .. source)
-- 	if segundos2 > 0 then
-- 		if ppsrc == source then
-- 			local idban = vRP.getUserId(numsrc)
-- 			vRP.setBanned(idban, true)
-- 			local webhookppban = 'https://discord.com/api/webhooks/800995766108815362/8Gha_b97PYViqe0IWzf1TAgLSU73Ivkxibcjk3dZKSLoi3yF2gqib-icHe5aCO9OkxEN'
-- 			SendWebhookMessage(webhookppban,
-- 				"O **ID:** " .. idban .. " mesmo depois de avisado, **TEMOU** em sair no período do **/PAYPAL** e foi banido.")
-- 		end
-- 	end
-- end)


function trim1(s)
	return (s:gsub("^%s*(.-)%s*$", "%1"))
end

RegisterCommand("staffchat", function(source, args, rawCommand)
	local user_id = vRP.getUserId(source ~= 0 and source or 1)
	if user_id then
		if not vRP.hasPermission(user_id, "staff.permissao") then return end
		local message = rawCommand:sub(10)
		if message and trim1(message) ~= "" then
			local identity = vRP.getUserIdentity(user_id)
			local players = vRP.getUsersByPermission("staff.permissao")
			if players and #players > 0 then
				for _, v in pairs(players) do
					async(function()
						local nsource = vRP.getUserSource(v)
						TriggerClientEvent("chatMessage", nsource, "[STAFF]", { 255, 0, 0 },
							("[%d] %s %s diz: %s"):format(user_id, identity.name, identity.firstname, message))
					end)
				end
			end
		end
	end
end)

RegisterCommand("policia", function(source, args, rawCommand)
	local user_id = vRP.getUserId(source ~= 0 and source or 1)
	if user_id then
		if not vRP.hasPermission(user_id, "policia.permissao") then return end
		local message = rawCommand:sub(8)
		TriggerClientEvent('chatMessage', -1, "Polícia: ", { 64, 64, 255 }, message)
	end
end)



RegisterCommand("prefeitura", function(source, args, rawCommand)
	local user_id = vRP.getUserId(source ~= 0 and source or 1)
	if user_id then
		if not vRP.hasPermission(user_id, "mod.permissao") then return end
		local message = rawCommand:sub(11)
		TriggerClientEvent("chatMessage", -1, "Prefeitura: ", { 0, 255, 0 }, message)
	end
end)

--chat command
RegisterCommand("ilegal", function(source, args)
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id, "policia.permissao") then return end
		if vRP.tryPayment(user_id, 5000) then
			local message = vRP.prompt(source, 'Coloque sua mensagem. (Será cobrado R$ 5.000,00', '')
			if message and string.len(message) > 0 then
				local players = vRP.getUsersByPermission("!.not.policia.permissao")
				if players and #players > 0 then
					for _, v in pairs(players) do
						async(function()
							local nsource = vRP.getUserSource(v)
							TriggerClientEvent("chatMessage", nsource, "Mercado Ilegal: ", { 0, 255, 0 }, message)
						end)
					end
				end
			end
		end
	end
end)

local function getEntityType(handle)
	local _type = GetEntityType(handle)
	if _type == 1 then
		local isPlayer = IsPedAPlayer(handle)
		return _type, handle, isPlayer and "Player" or false
	elseif _type == 2 then
		return _type, handle, "Vehicle"
	elseif _type == 3 then
		return _type, handle, "Prop"
	end
end

AddEventHandler("entityCreated", function(handle)
	CreateThread(function()
		local entity = handle
		Wait(3000)
		if DoesEntityExist(entity) then
			if Entity(entity).state.checked then return end
			local _, __, ___ = getEntityType(entity)
			if _ == 1 and ___ then return end
			print('Entidade criada: ', GetEntityModel(entity), json.encode({ _, __, ___ }),
				GetPlayerName(NetworkGetEntityOwner(entity)), NetworkGetEntityOwner(entity))
			DeleteEntity(entity)
			CancelEvent()
		end
	end)
end)
