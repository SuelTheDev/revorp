local itemlist = {
	["mochila"] = { index = "mochila", nome = "Mochila", type = "usar" },
	["folhademaconha"] = { index = "folhademaconha", nome = "Folha de Maconha", type = "usar" },
	["maconhatriturada"] = { index = "maconhatriturada", nome = "Maconha Triturada", type = "usar" },
	["malotedemaconha"] = { index = "malotedemaconha", nome = "Malote de Maconha", type = "usar" },
	["armacaodearma"] = { index = "armacaodearma", nome = "armacao de arma", type = "usar" },
	["jbl"] = { index = "jbl", nome = "JBL", type = "usar" },
	["calculadora"] = { index = "calculadora", nome = "Calculadora", type = "usar" },
	["tablet"] = { index = "tablet", nome = "Tablet", type = "usar" },
	["notebook"] = { index = "notebook", nome = "Notebook", type = "usar" },
	["controleremoto"] = { index = "controleremoto", nome = "Controle remoto", type = "usar" },
	["baterias"] = { index = "baterias", nome = "Baterias", type = "usar" },
	["radio"] = { index = "radio", nome = "Radio", type = "usar" },
	["roupas"] = { index = "roupas", nome = "Roupas", type = "usar" },
	["passaporte"] = { index = "passaporte", nome = "Passaporte", type = "usar" },
	["portearmas"] = { index = "portearmas", nome = "Porte de Armas", type = "usar" },
	["identidade"] = { index = "identidade", nome = "Identidade", type = "usar" },
	["cnh"] = { index = "cnh", nome = "CNH", type = "usar" },
	["colete"] = { index = "colete", nome = "Colete Balístico", type = "usar" },
	["repairkit"] = { index = "repairkit", nome = "Kit de Reparos", type = "usar" },
	["caixaferramentas"] = { index = "caixaferramentas", nome = "Caixa de Ferramenta", type = "usar" },
	["dinheiro"] = { index = "dinheiro", nome = "Dinheiro", type = "usar" },
	["cartao-debito"] = { index = "cartao-debito", nome = "Cartão de débito", type = "usar" },
	["maquininha"] = { index = "maquininha", nome = "Maquininha", type = "usar" },
	["paninho"] = { index = "paninho", nome = "Pano de Microfibra", type = "usar" },
	["celular"] = { index = "celular", nome = "Celular", type = "usar" },
	["lsd"] = { index = "lsd", nome = "LSD", type = "usar" },
	["ferramenta"] = { index = "ferramenta", nome = "Ferramenta de Desmanche", type = "usar" },
	["drone-basic1"] = { index = "drone-basic1", nome = "Drone Basico", type = "usar" },
	["drone-basic2"] = { index = "drone-basic2", nome = "Drone Basico", type = "usar" },
	["drone-basic3"] = { index = "drone-basic3", nome = "Drone Basico", type = "usar" },
	["drone-advanced1"] = { index = "drone-advanced1", nome = "Drone Avancado", type = "usar" },
	["drone-advanced2"] = { index = "drone-advanced2", nome = "Drone Avancado", type = "usar" },
	["drone-advanced3"] = { index = "drone-advanced3", nome = "Drone Avancado", type = "usar" },
	["drone-police"] = { index = "drone-police", nome = "Drone da Policia", type = "usar" },
	["carrinho"] = { index = "carrinho", nome = "Carrinho", type = "usar" },

	["camisinha"] = { index = "camisinha", nome = "Camisinha", type = "usar" },
	["vibrador"] = { index = "vibrador", nome = "Vibrador", type = "usar" },
	["kit"] = { index = "kit", nome = "Kit de Sex Shop", type = "usar" },

	--[ Illegal Utilities ]--------------------------------------------------------------------------------------------
	["acessoaobanco"] = { index = "acessoaobanco", nome = "Acesso ao Banco", type = "usar" },
	["pendriveinvasao"] = { index = "pendriveinvasao", nome = "Pen Driver de Invasão", type = "usar" },
	["acessoascontas"] = { index = "acessoascontas", nome = "Contas bancarias laranjas", type = "usar" },
	["dinheiro-sujo"] = { index = "dinheiro-sujo", nome = "Dinheiro", type = "usar" },
	["algema"] = { index = "algema", nome = "Algema", type = "usar" },
	["lockpick"] = { index = "lockpick", nome = "Lockpick", type = "usar" },
	["capuz"] = { index = "capuz", nome = "Capuz", type = "usar" },
	["placa"] = { index = "placa", nome = "Placa", type = "usar" },
	["c4"] = { index = "c4", nome = "C4", type = "usar" },
	["kevlar"] = { index = "kevlar", nome = "Kevlar", type = "usar" },
	["tecido"] = { index = "tecido", nome = "Tecido", type = "usar" },
	["dinheirosujo"] = { index = "dinheirosujo", nome = "Dinheiro Sujo", type = "usar" },
	["pastaimpura"] = { index = "pastaimpura", nome = "Pasta Impura", type = "usar" },
	["acidoc"] = { index = "acidoc", nome = "Acido Corrosivo", type = "usar" },
	["toluene"] = { index = "toluene", nome = "Toluene", type = "usar" },
	["benzoatodes"] = { index = "benzoatodes", nome = "Benzoato de Sódio", type = "usar" },
	["semente"] = { index = "semente", nome = "Semente de maconha", type = "usar" },
	["fioseletricos"] = { index = "fioseletricos", nome = "Fios Elétricos", type = "usar" },


	------- LAVAGEM DINHEIRO -------------------------------------------------------

	["alvejante"] = { index = "alvejante", nome = "Alvejante", type = "usar" },
	["papel"] = { index = "papel", nome = "Papel", type = "usar" },
	["notafiscalfalsa"] = { index = "notafiscalfalsa", nome = "Nota Fiscal Falsa", type = "usar" },

	--[ Tools ] -------------------------------------------------------------------------------------------------------

	["serra"] = { index = "serra", nome = "Serra", type = "usar" },
	["furadeira"] = { index = "furadeira", nome = "Furadeira", type = "usar" },
	["pa-jardinagem"] = { index = "pa-jardinagem", nome = "Pá de Jardinagem", type = "usar" },

	------- Suspensão a AR -------------------------------------------------------

	["suspensaoar"] = { index = "suspensaoar", nome = "Kit Suspensão a ar", type = "usar" },


	--[ Miscs ]--------------------------------------------------------------------------------------------------------

	["garrafa-vazia"] = { index = "garrafa-vazia", nome = "Garrafa vazia", type = "usar" },
	["ponta-britadeira"] = { index = "ponta-britadeira", nome = "Ponta de britadeira", type = "usar" },

	--[ Miner Work ]--------------------------------------------------------------------------------------------------------

	["minerio-diamante"] = { index = "minerio-diamante", nome = "Minerio de Diamante", type = "usar" },
	["minerio-ouro"] = { index = "minerio-ouro", nome = "Minerio de Ouro", type = "usar" },

	["minerio-prata"] = { index = "minerio-ferro", nome = "Minerio de Ferro", type = "usar" },


	["diamante"] = { index = "diamante", nome = "Diamante Bruto", type = "usar" },
	["barra-ouro"] = { index = "barra-ouro", nome = "Barra de Ouro", type = "usar" },
	["barra-prata"] = { index = "barra-prata", nome = "Barra de Prata", type = "usar" },
	["barra-ferro"] = { index = "barra-ferro", nome = "Barra de Ferro", type = "usar" },

	--[ Drinks ]-------------------------------------------------------------------------------------------------------

	["agua"] = { index = "agua", nome = "Água", type = "usar" },

	["leite"] = { index = "leite", nome = "Leite", type = "usar" },
	["cafe"] = { index = "cafe", nome = "Café", type = "usar" },
	["cafecleite"] = { index = "cafecleite", nome = "Café com Leite", type = "usar" },
	["cafeexpresso"] = { index = "cafeexpresso", nome = "Café Expresso", type = "usar" },
	["capuccino"] = { index = "capuccino", nome = "Capuccino", type = "usar" },
	["frappuccino"] = { index = "frappuccino", nome = "Frapuccino", type = "usar" },
	["cha"] = { index = "cha", nome = "Chá", type = "usar" },
	["icecha"] = { index = "icecha", nome = "Chá Gelado", type = "usar" },
	["sprunk"] = { index = "sprunk", nome = "Sprunk", type = "usar" },
	["cola"] = { index = "cola", nome = "Cola", type = "usar" },
	["energetico"] = { index = "energetico", nome = "Energético", type = "usar" },

	--[ Alcoholic Beverages ]------------------------------------------------------------------------------------------

	["pibwassen"] = { index = "pibwassen", nome = "PibWassen", type = "usar" },
	["tequilya"] = { index = "tequilya", nome = "Tequilya", type = "usar" },
	["patriot"] = { index = "patriot", nome = "Patriot", type = "usar" },
	["blarneys"] = { index = "blarneys", nome = "Blarneys", type = "usar" },
	["jakeys"] = { index = "jakeys", nome = "Jakeys", type = "usar" },
	["barracho"] = { index = "barracho", nome = "Barracho", type = "usar" },
	["ragga"] = { index = "ragga", nome = "Ragga", type = "usar" },
	["nogo"] = { index = "nogo", nome = "Nogo", type = "usar" },
	["mount"] = { index = "mount", nome = "Mount", type = "usar" },
	["cherenkov"] = { index = "cherenkov", nome = "Cherenkov", type = "usar" },
	["bourgeoix"] = { index = "bourgeoix", nome = "Bourgeoix", type = "usar" },
	["bleuterd"] = { index = "bleuterd", nome = "Bleuterd", type = "usar" },

	--[ MERCADINHO ]----------------------------------------------------------------------------------------------------
	["salsicha"] = { index = "salsicha", nome = "Salsicha", type = "usar" },
	["pao"] = { index = "pao", nome = "Pão", type = "usar" },
	["ovo"] = { index = "ovo", nome = "Ovo", type = "usar" },
	["paoovo"] = { index = "paoovo", nome = "Pão com Ovo", type = "usar" },
	["massa"] = { index = "massa", nome = "Massa", type = "usar" },
	["trigo"] = { index = "trigo", nome = "Trigo", type = "usar" },
	["lasanha"] = { index = "lasanha", nome = "Lasanha", type = "usar" },
	["molhodetomate"] = { index = "molhodetomate", nome = "Molho de Tomate", type = "usar" },
	["coxinha"] = { index = "coxinha", nome = "Coxinha", type = "usar" },
	["hamburger"] = { index = "hamburger", nome = "Hamburger", type = "usar" },
	["frango"] = { index = "frango", nome = "Frango", type = "usar" },
	["macarrao"] = { index = "macarrao", nome = "Macarrão", type = "usar" },
	["espaguete"] = { index = "espaguete", nome = "Espaguete", type = "usar" },
	["bolodecenoura"] = { index = "bolodecenoura", nome = "Bolo de Cenoura", type = "usar" },
	["peixefrito"] = { index = "peixefrito", nome = "Peixe Frito", type = "usar" },
	["salada"] = { index = "salada", nome = "Salada", type = "usar" },
	["carneassada"] = { index = "carneassada", nome = "Carne Assada", type = "usar" },
	["mistoquente"] = { index = "mistoquente", nome = "Misto Quente", type = "usar" },
	["cenoura"] = { index = "cenoura", nome = "Cenoura", type = "usar" },
	["peixe-cru"] = { index = "peixe-cru", nome = "Peixe Cru", type = "usar" },
	["carne-cru"] = { index = "carne-cru", nome = "Carne Cru", type = "usar" },
	["oleo"] = { index = "oleo", nome = "Oleo", type = "usar" },
	["presunto-queijo"] = { index = "presunto-queijo", nome = "Presunto e Queijo", type = "usar" },
	["dourado"] = { index = "dourado", nome = "Dourado", type = "usar" },
	["corvina"] = { index = "corvina", nome = "Corvina", type = "usar" },
	["salmao"] = { index = "salmao", nome = "Salmao", type = "usar" },
	["pacu"] = { index = "pacu", nome = "Pacu", type = "usar" },
	["pintado"] = { index = "pintado", nome = "Pintado", type = "usar" },
	["pirarucu"] = { index = "pirarucu", nome = "Pirarucu", type = "usar" },
	["tilapia"] = { index = "tilapia", nome = "Tilapia", type = "usar" },
	["tucunare"] = { index = "tucunare", nome = "Tucunare", type = "usar" },












	--[ FastFoods ]----------------------------------------------------------------------------------------------------

	["sanduiche"] = { index = "sanduiche", nome = "Sanduíche", type = "usar" },
	["rosquinha"] = { index = "rosquinha", nome = "Rosquinha", type = "usar" },
	["hotdog"] = { index = "hotdog", nome = "HotDog", type = "usar" },
	["xburguer"] = { index = "xburguer", nome = "xBurguer", type = "usar" },
	["chips"] = { index = "chips", nome = "Batata Chips", type = "usar" },
	["batataf"] = { index = "batataf", nome = "Batata Frita", type = "usar" },
	["pizza"] = { index = "pizza", nome = "Pedaço de Pizza", type = "usar" },
	["bcereal"] = { index = "bcereal", nome = "Barra de Cereal", type = "usar" },
	["bchocolate"] = { index = "bchocolate", nome = "Barra de Chocolate", type = "usar" },
	["taco"] = { index = "taco", nome = "Taco", type = "usar" },

	--[ Drugs ]--------------------------------------------------------------------------------------------------------

	["paracetamil"] = { index = "paracetamil", nome = "Paracetamil", type = "usar" },
	["voltarom"] = { index = "voltarom", nome = "Voltarom", type = "usar" },
	["trandrylux"] = { index = "trandrylux", nome = "Trandrylux", type = "usar" },
	["dorfrex"] = { index = "dorfrex", nome = "Dorfrex", type = "usar" },
	["buscopom"] = { index = "buscopom", nome = "Buscopom", type = "usar" },

	--[ Prescription ]-------------------------------------------------------------------------------------------------

	["r-paracetamil"] = { index = "r-paracetamil", nome = "Receituário Paracetamil", type = "usar" },
	["r-voltarom"] = { index = "r-voltarom", nome = "Receituário Voltarom", type = "usar" },
	["r-trandrylux"] = { index = "r-trandrylux", nome = "Receituário Trandrylux", type = "usar" },
	["r-dorfrex"] = { index = "r-dorfrex", nome = "Receituário Dorfrex", type = "usar" },
	["r-buscopom"] = { index = "r-buscopom", nome = "Receituário Buscopom", type = "usar" },

	--[ By-product ][ Methamphetamine production ]---------------------------------------------------------------------

	["metanfetamina"] = { index = "metanfetamina", nome = "Metanfetamina", type = "usar" },
	["composito"] = { index = "composito", nome = "Compósito", type = "usar" },

	--[ Miscellaneous ][ Methamphetamine production ]------------------------------------------------------------------

	["nitrato-amonia"] = { index = "nitrato-amonia", nome = "Nitrato de Amônia", type = "usar" },
	["hidroxido-sodio"] = { index = "hidroxido-sodio", nome = "Hidróxido de Sódio", type = "usar" },
	["pseudoefedrina"] = { index = "pseudoefedrina", nome = "Pseudoefedrina", type = "usar" },
	["eter"] = { index = "eter", nome = "Éter", type = "usar" },

	--[ By-product ][ Cocaine production ]-----------------------------------------------------------------------------

	["cocaina"] = { index = "cocaina", nome = "Cocaína", type = "usar" },
	["pasta-base"] = { index = "pasta-base", nome = "Pasta Base", type = "usar" },

	--[ Miscellaneous ][ Cocaine production ]--------------------------------------------------------------------------

	["acido-sulfurico"] = { index = "acido-sulfurico", nome = "Heroína", type = "usar" },
	["folhas-coca"] = { index = "folhas-coca", nome = "Folhas de Coca", type = "usar" },
	["calcio-po"] = { index = "calcio-po", nome = "Papoila do Ópio", type = "usar" },
	["querosene"] = { index = "querosene", nome = "Morfina", type = "usar" },

	--[ By-product ][ Marijuana production ]-----------------------------------------------------------------------------

	["maconha"] = { index = "maconha", nome = "Maconha", type = "usar" },

	--[ Miscellaneous ][ Marijuana production ]--------------------------------------------------------------------------

	["fertilizante"] = { index = "fertilizante", nome = "Fertilizante de Maconha", type = "usar" },
	["adubo"] = { index = "adubo", nome = "Adubo", type = "usar" },
	--[ Weapons body ][ Weapons Production ]---------------------------------------------------------------------------
	["pecadearma"] = { index = "pecadearma", nome = "Peças de Armas", type = "usar" },
	["corpo-fuzil"] = { index = "corpo-fuzil", nome = "Corpo de Fuzil", type = "usar" },
	["corpo-smg"] = { index = "corpo-smg", nome = "Corpo de SMG", type = "usar" },
	["corpo-pistola"] = { index = "corpo-pistola", nome = "Corpo de Pistola", type = "usar" },

	--[ Miscellaneous ][ Weapons Production ]--------------------------------------------------------------------------
	["projeto-armas"] = { index = "projeto-armas", nome = "Projeto de Armamento", type = "usar" },
	["fragmento-metal"] = { index = "fragmento-metal", nome = "Fragmento de Metal", type = "usar" },
	["metal-alta-qualidade"] = { index = "metal-alta-qualidade", nome = "Metal de Alta Qualidade", type = "usar" },
	["molas"] = { index = "molas", nome = "Molas", type = "usar" },
	["placa-metal"] = { index = "placa-metal", nome = "Placa de Metal", type = "usar" },
	["gatilho"] = { index = "gatilho", nome = "Gatilho", type = "usar" },
	["capsula"] = { index = "capsula", nome = "Capsula", type = "usar" },
	["polvora"] = { index = "polvora", nome = "Polvora", type = "usar" },

	--[MUNIÇÂO]---
	["carvao-vegetal"] = { index = "carvao-vegetal", nome = "Carvão Vegetal", type = "usar" },
	["enxofre"] = { index = "enxofre", nome = "Enxofre", type = "usar" },
	["nitrato-sodio"] = { index = "nitrato-sodio", nome = "Nitrato de Sódio", type = "usar" },



	--[ Desmanche ]------------------------------------------------------------------------------------------

	["transmissao"] = { index = "transmissao", nome = "Transmissao", type = "usar" },
	["suspensao"] = { index = "suspensao", nome = "Suspensao", type = "usar" },
	["portas"] = { index = "portas", nome = "Portas", type = "usar" },
	["borrachas"] = { index = "borrachas", nome = "Borrachas", type = "usar" },
	["pneus"] = { index = "pneus", nome = "Pneus", type = "usar" },
	["capo"] = { index = "capo", nome = "Capo", type = "usar" },
	["bateria-carro"] = { index = "bateria-carro", nome = "Bateria de Carro", type = "usar" },
	["motor"] = { index = "motor", nome = "Motor", type = "usar" },

	--[ Itens danificados ]--------------------------------------------------------------------------------------------

	["celular-queimado"] = { index = "celular-queimado", nome = "Celular queimado", type = "usar" },
	["jbl-queimada"] = { index = "jbl-queimada", nome = "JBL queimada", type = "usar" },
	["calculadora-queimada"] = { index = "calculadora-queimada", nome = "Calculadora queimada", type = "usar" },
	["tablet-queimado"] = { index = "tablet-queimado", nome = "Tablet queimado", type = "usar" },
	["notebook-queimado"] = { index = "notebook-queimado", nome = "Notebook queimado", type = "usar" },
	["controleremoto-queimado"] = { index = "controleremoto-queimado", nome = "Controle remoto queimado", type = "usar" },
	["baterias-queimadas"] = { index = "baterias-queimadas", nome = "Baterias queimadas", type = "usar" },
	["radio-queimado"] = { index = "radio-queimado", nome = "Rádio queimado", type = "usar" },
	["maquininha-queimada"] = { index = "maquininha-queimada", nome = "Maquininha queimada", type = "usar" },

	['kitgps'] = { index = "kit-gps", nome = "KIT de GPS", type = "usar" },
	['removegps'] = { index = 'remove-gps', nome = 'Removedor de GPS', type = 'usar' },

	--[ Weapons ][ Melee]----------------------------------------------------------------------------------------------

	["wbody|WEAPON_DAGGER"] = { index = "adaga", nome = "Adaga", type = "equipar" },
	["wbody|WEAPON_BAT"] = { index = "tacobaseball", nome = "Taco de Baseball", type = "equipar" },
	["wbody|WEAPON_BOTTLE"] = { index = "garrafaquebrada", nome = "Garrafa quebrada", type = "equipar" },
	["wbody|WEAPON_CROWBAR"] = { index = "pecabra", nome = "Pé de Cabra", type = "equipar" },
	["wbody|WEAPON_FLASHLIGHT"] = { index = "lanterna", nome = "Lanterna", type = "equipar" },
	["wbody|WEAPON_GOLFCLUB"] = { index = "tacogolf", nome = "Taco de Golf", type = "equipar" },
	["wbody|WEAPON_HAMMER"] = { index = "martelo", nome = "Martelo", type = "equipar" },
	["wbody|WEAPON_WEAPON_HATCHET"] = { index = "machado", nome = "Machado", type = "equipar" },
	["wbody|WEAPON_WEAPON_KNUCKLES"] = { index = "socoingles", nome = "Soco Inglês", type = "equipar" },
	["wbody|WEAPON_KNIFE"] = { index = "faca", nome = "Faca", type = "equipar" },
	["wbody|WEAPON_MACHETE"] = { index = "machete", nome = "Taco de Baseball", type = "equipar" },
	["wbody|WEAPON_SWITCHBLADE"] = { index = "canivete", nome = "Canivete", type = "equipar" },
	["wbody|WEAPON_NIGHTSTICK"] = { index = "cassetete", nome = "Cassetete", type = "equipar" },
	["wbody|WEAPON_WHENCH"] = { index = "grifo", nome = "Grifo", type = "equipar" },
	["wbody|WEAPON_BATTLEAXE"] = { index = "machadodebatalha", nome = "Machado De Batalha", type = "equipar" },
	["wbody|WEAPON_POOLCUE"] = { index = "tacosinuca", nome = "Taco de Sinuca", type = "equipar" },
	["wbody|WEAPON_STONE_HATCHET"] = { index = "machadopedra", nome = "Machado de Pedra", type = "equipar" },

	--[ Handguns ][ Weapons ]------------------------------------------------------------------------------------------

	["wbody|WEAPON_PISTOL"] = { index = "pt92af", nome = "PT92AF", type = "equipar" },
	["wbody|WEAPON_PISTOL_MK2"] = { index = "czp09", nome = "Five Seven", type = "equipar" },
	["wbody|WEAPON_COMBATPISTOL"] = { index = "px4", nome = "GLOCK", type = "equipar" },
	["wbody|WEAPON_APPISTOL"] = { index = "x2e1911", nome = "XSE 1911", type = "equipar" },
	["wbody|WEAPON_STUNGUN"] = { index = "taser", nome = "Taser", type = "equipar" },
	["wbody|WEAPON_PISTOL50"] = { index = "derserteagle", nome = "Desert Eagle", type = "equipar" },
	["wbody|WEAPON_SNSPISTOL"] = { index = "waltherppk", nome = "Walther PPK", type = "equipar" },
	["wbody|WEAPON_SNSPISTOL_MK2"] = { index = "waltherppk2", nome = "Walther PPK2", type = "equipar" },
	["wbody|WEAPON_HEAVYPISTOL"] = { index = "wide1911", nome = "Wide 1911", type = "equipar" },
	["wbody|WEAPON_VINTAGEPISTOL"] = { index = "fn1903", nome = "FN 1903", type = "equipar" },
	["wbody|WEAPON_FLAREGUN"] = { index = "sinalizador", nome = "Sinalizador", type = "equipar" },
	["wbody|WEAPON_MARKSMANPISTOL"] = { index = "musketpistol", nome = "Musket Pistol", type = "equipar" },
	["wbody|WEAPON_REVOLVER"] = { index = "asgco2", nome = "ASG CO2", type = "equipar" },
	["wbody|WEAPON_REVOLVER_MK2"] = { index = "ragingbull", nome = "Raging Bull", type = "equipar" },
	["wbody|WEAPON_DOUBLEACTION"] = { index = "python", nome = "Python", type = "equipar" },
	["wbody|WEAPON_RAYPISTOL"] = { index = "raypistol", nome = "Raypistol", type = "equipar" }, --[ Admin Gun ]--------
	["wbody|WEAPON_CERAMICPISTOL"] = { index = "kochp7", nome = "Koch P7", type = "equipar" },
	["wbody|WEAPON_NAVYREVOLVER"] = { index = "colt1851", nome = "Colt 1851", type = "equipar" },

	--[ Handguns ][ Ammo ]---------------------------------------------------------------------------------------------

	["wammo|WEAPON_PISTOL"] = { index = "m-pt92af", nome = "M-PT92AF", type = "recarregar" },
	["wammo|WEAPON_PISTOL_MK2"] = { index = "m-czp09", nome = "M-FIVESEVEN", type = "recarregar" },
	["wammo|WEAPON_COMBATPISTOL"] = { index = "m-px4", nome = "M-GLOCK", type = "recarregar" },
	["wammo|WEAPON_APPISTOL"] = { index = "m-x2e1911", nome = "M-XSE 1911", type = "recarregar" },
	["wammo|WEAPON_STUNGUN"] = { index = "m-taser", nome = "M-Taser", type = "recarregar" },
	["wammo|WEAPON_PISTOL50"] = { index = "m-derserteagle", nome = "M-Desert Eagle", type = "recarregar" },
	["wammo|WEAPON_SNSPISTOL"] = { index = "m-waltherppk", nome = "M-Walther PPK", type = "recarregar" },
	["wammo|WEAPON_SNSPISTOL_MK2"] = { index = "m-waltherppk2", nome = "M-Walther PPK2", type = "recarregar" },
	["wammo|WEAPON_HEAVYPISTOL"] = { index = "m-wide1911", nome = "M-Wide 1911", type = "recarregar" },
	["wammo|WEAPON_VINTAGEPISTOL"] = { index = "m-fn1903", nome = "M-FN 1903", type = "recarregar" },
	["wammo|WEAPON_FLAREGUN"] = { index = "m-sinalizador", nome = "M-Sinalizador", type = "recarregar" },
	["wammo|WEAPON_MARKSMANPISTOL"] = { index = "m-musketpistol", nome = "M-Musket Pistol", type = "recarregar" },
	["wammo|WEAPON_REVOLVER"] = { index = "m-asgco2", nome = "M-ASG CO2", type = "recarregar" },
	["wammo|WEAPON_REVOLVER_MK2"] = { index = "m-ragingbull", nome = "M-Raging Bull", type = "recarregar" },
	["wammo|WEAPON_DOUBLEACTION"] = { index = "m-python", nome = "M-Python", type = "recarregar" },
	["wammo|WEAPON_RAYPISTOL"] = { index = "m-raypistol", nome = "Raygun", type = "recarregar" }, --[ Admin Gun ]-
	["wammo|WEAPON_CERAMICPISTOL"] = { index = "m-kochp7", nome = "M-Koch P7", type = "recarregar" },
	["wammo|WEAPON_NAVYREVOLVER"] = { index = "m-colt1851", nome = "M-Colt 1851", type = "recarregar" },

	--[ Submachine Guns ][ Weapons ]-----------------------------------------------------------------------------------

	["wbody|WEAPON_MICROSMG"] = { index = "microuzi", nome = "Micro Uzi", type = "equipar" },
	["wbody|WEAPON_SMG"] = { index = "mp5", nome = "MP5", type = "equipar" },
	["wbody|WEAPON_SMG_MK2"] = { index = "mp5k", nome = "MP5K", type = "equipar" },
	["wbody|WEAPON_ASSAULTSMG"] = { index = "p90", nome = "P90", type = "equipar" },
	["wbody|WEAPON_COMBATPDW"] = { index = "mpxsd", nome = "MPX-SD", type = "equipar" },
	["wbody|WEAPON_MACHINEPISTOL"] = { index = "tecdc9", nome = "TEC-DC9", type = "equipar" },
	["wbody|WEAPON_MINISMG"] = { index = "vz82", nome = "VZ.82", type = "equipar" },
	["wbody|WEAPON_RAYCARBINE"] = { index = "raycarbine", nome = "Ray Carbine", type = "equipar" },

	--[ Submachine Guns ][ Ammo ]--------------------------------------------------------------------------------------

	["wammo|WEAPON_MICROSMG"] = { index = "m-microuzi", nome = "M-Micro Uzi", type = "recarregar" },
	["wammo|WEAPON_SMG"] = { index = "m-mp5", nome = "M-MP5", type = "recarregar" },
	["wammo|WEAPON_SMG_MK2"] = { index = "m-mp5k", nome = "M-MP5K", type = "recarregar" },
	["wammo|WEAPON_ASSAULTSMG"] = { index = "m-p90", nome = "M-P90", type = "recarregar" },
	["wammo|WEAPON_COMBATPDW"] = { index = "m-mpxsd", nome = "M-MPX-SD", type = "recarregar" },
	["wammo|WEAPON_MACHINEPISTOL"] = { index = "m-tecdc9", nome = "M-TEC-DC9", type = "recarregar" },
	["wammo|WEAPON_MINISMG"] = { index = "m-vz82", nome = "M-VZ.82", type = "recarregar" },
	["wammo|WEAPON_RAYCARBINE"] = { index = "m-raycarbine", nome = "M-Ray Carbine", type = "recarregar" },

	--[ Shotguns ][ Weapons ]------------------------------------------------------------------------------------------

	["wbody|WEAPON_PUMPSHOTGUN"] = { index = "mossberg590", nome = "Mossberg 590", type = "equipar" },
	["wbody|WEAPON_PUMPSHOTGUN_MK2"] = { index = "remington870", nome = "Remington 870", type = "equipar" },
	["wbody|WEAPON_SAWNOFFSHOTGUN"] = { index = "mossberg500", nome = "Mossberg 500", type = "equipar" },
	["wbody|WEAPON_ASSAULTSHOTGUN"] = { index = "uts15", nome = "UTS-15", type = "equipar" },
	["wbody|WEAPON_BULLPUPSHOTGUN"] = { index = "keltecksg", nome = "Kel-Tec KSG ", type = "equipar" },
	["wbody|WEAPON_MUSKET"] = { index = "musket", nome = "Musket", type = "equipar" },
	["wbody|WEAPON_HEAVYSHOTGUN"] = { index = "saiga12", nome = "Saiga 12", type = "equipar" },
	["wbody|WEAPON_DBSHOTGUN"] = { index = "zabala", nome = "Zabala", type = "equipar" },
	["wbody|WEAPON_AUTOSHOTGUN"] = { index = "armselprotecta", nome = "Armsel Protecta", type = "equipar" },

	--[ Shotguns ][ Ammo ]---------------------------------------------------------------------------------------------

	["wammo|WEAPON_PUMPSHOTGUN"] = { index = "m-mossberg590", nome = "M-Mossberg 590", type = "recarregar" },
	["wammo|WEAPON_PUMPSHOTGUN_MK2"] = { index = "m-remington870", nome = "M-Remington 870", type = "recarregar" },
	["wammo|WEAPON_SAWNOFFSHOTGUN"] = { index = "m-mossberg500", nome = "M-Mossberg 500", type = "recarregar" },
	["wammo|WEAPON_ASSAULTSHOTGUN"] = { index = "m-uts15", nome = "M-UTS-15", type = "recarregar" },
	["wammo|WEAPON_BULLPUPSHOTGUN"] = { index = "m-keltecksg", nome = "M-Kel-Tec KSG ", type = "recarregar" },
	["wammo|WEAPON_MUSKET"] = { index = "m-musket", nome = "M-Musket", type = "recarregar" },
	["wammo|WEAPON_HEAVYSHOTGUN"] = { index = "m-saiga12", nome = "M-Saiga 12", type = "recarregar" },
	["wammo|WEAPON_DBSHOTGUN"] = { index = "m-zabala", nome = "M-Zabala", type = "recarregar" },
	["wammo|WEAPON_AUTOSHOTGUN"] = { index = "m-armselprotecta", nome = "M-Armsel Protecta", type = "recarregar" },

	--[ Assault Rifles ][ Weapons ]------------------------------------------------------------------------------------

	["wbody|WEAPON_ASSAULTRIFLE"] = { index = "ak74", nome = "AK-74", type = "equipar" },
	["wbody|WEAPON_ASSAULTRIFLE_MK2"] = { index = "ak47", nome = "AK-47", type = "equipar" },
	["wbody|WEAPON_CARBINERIFLE"] = { index = "ar15", nome = "AR-15", type = "equipar" },
	["wbody|WEAPON_CARBINERIFLE_MK2"] = { index = "m4a1", nome = "M4-A1", type = "equipar" },
	["wbody|WEAPON_ADVANCEDRIFLE"] = { index = "tavorctar21", nome = "Tavor CTAR-21", type = "equipar" },
	["wbody|WEAPON_SPECIALCARBINE"] = { index = "g36c", nome = "G36C", type = "equipar" },
	["wbody|WEAPON_SPECIALCARBINE_MK2"] = { index = "g36k", nome = "G36K", type = "equipar" },
	["wbody|WEAPON_BULLPUPRIFLE"] = { index = "noricon86s", nome = "Norinco 86S", type = "equipar" },
	["wbody|WEAPON_BULLPUPRIFLE_MK2"] = { index = "hsvhsd2", nome = "HS VHS-D2", type = "equipar" },
	["wbody|WEAPON_COMPACTRIFLE"] = { index = "minidraco", nome = "Draco", type = "equipar" },

	--[ Assault Rifles ][ Ammo ]---------------------------------------------------------------------------------------

	["wammo|WEAPON_ASSAULTRIFLE"] = { index = "m-ak74", nome = "M-AK-74", type = "recarregar" },
	["wammo|WEAPON_ASSAULTRIFLE_MK2"] = { index = "m-ak47", nome = "M-AK-47", type = "recarregar" },
	["wammo|WEAPON_CARBINERIFLE"] = { index = "m-ar15", nome = "M-AR-15", type = "recarregar" },
	["wammo|WEAPON_CARBINERIFLE_MK2"] = { index = "m-m4a1", nome = "M-M4-A1", type = "recarregar" },
	["wammo|WEAPON_ADVANCEDRIFLE"] = { index = "m-tavorctar21", nome = "M-Tavor CTAR-21", type = "recarregar" },
	["wammo|WEAPON_SPECIALCARBINE"] = { index = "m-g36c", nome = "M-G36C", type = "recarregar" },
	["wammo|WEAPON_SPECIALCARBINE_MK2"] = { index = "m-g36k", nome = "M-G36K", type = "recarregar" },
	["wammo|WEAPON_BULLPUPRIFLE"] = { index = "m-noricon86s", nome = "M-Norinco 86S", type = "recarregar" },
	["wammo|WEAPON_BULLPUPRIFLE_MK2"] = { index = "m-hsvhsd2", nome = "M-HS VHS-D2", type = "recarregar" },
	["wammo|WEAPON_COMPACTRIFLE"] = { index = "m-minidraco", nome = "M-Draco", type = "recarregar" },

	--[ Light Machine Guns ][ Weapons ]--------------------------------------------------------------------------------

	["wbody|WEAPON_MG"] = { index = "pkm", nome = "PKM", type = "equipar" },
	["wbody|WEAPON_COMBATMG"] = { index = "m60", nome = "M60", type = "equipar" },
	["wbody|WEAPON_COMBATMG_MK2"] = { index = "m6e4", nome = "M60E4", type = "equipar" },
	["wbody|WEAPON_GUSENBERG"] = { index = "thompson", nome = "Thompson", type = "equipar" },

	--[ Light Machine Guns ][ Ammo ]-----------------------------------------------------------------------------------

	["wammo|WEAPON_MG"] = { index = "m-pkm", nome = "M-PKM", type = "recarregar" },
	["wammo|WEAPON_COMBATMG"] = { index = "m-m60", nome = "M-M60", type = "recarregar" },
	["wammo|WEAPON_COMBATMG_MK2"] = { index = "m-m6e4", nome = "M-M60E4", type = "recarregar" },
	["wammo|WEAPON_GUSENBERG"] = { index = "m-thompson", nome = "M-Thompson", type = "recarregar" },

	--[ Sniper Rifles ][ Weapons ]-------------------------------------------------------------------------------------

	["wbody|WEAPON_SNIPERRIFLE"] = { index = "awf", nome = "AW-F", type = "equipar" },
	["wbody|WEAPON_HEAVYSNIPER"] = { index = "barrettm107", nome = "Barrett M107", type = "equipar" },
	["wbody|WEAPON_HEAVYSNIPER_MK2"] = { index = "serbubfg504", nome = "Serbu BFG-50A", type = "equipar" },
	["wbody|WEAPON_MASKMANRIFLE"] = { index = "m39", nome = "M39", type = "equipar" },
	["wbody|WEAPON_MASKMANRIFLE_MK2"] = { index = "m1a", nome = "M1A", type = "equipar" },

	--[ Sniper Rifles ][ Ammo ]----------------------------------------------------------------------------------------

	["wammo|WEAPON_SNIPERRIFLE"] = { index = "m-awf", nome = "M-AW-F", type = "recarregar" },
	["wammo|WEAPON_HEAVYSNIPER"] = { index = "m-barrettm107", nome = "M-Barrett M107", type = "recarregar" },
	["wammo|WEAPON_HEAVYSNIPER_MK2"] = { index = "m-serbubfg504", nome = "M-Serbu BFG-50A", type = "recarregar" },
	["wammo|WEAPON_MASKMANRIFLE"] = { index = "m-m39", nome = "M-M39", type = "recarregar" },
	["wammo|WEAPON_MASKMANRIFLE_MK2"] = { index = "m-m1a", nome = "M-M1A", type = "recarregar" },

	--[ Heavy Weapons ][ Weapons ]-------------------------------------------------------------------------------------

	["wbody|WEAPON_RPG"] = { index = "rpg", nome = "RPG", type = "equipar" },
	["wbody|WEAPON_GRENADELAUNCHER"] = { index = "grenadelauncher", nome = "Lançador de Granadas", type = "equipar" },
	["wbody|WEAPON_GRENADELAUNCHER_SMOKE"] = { index = "grenadelaunchersmoke", nome = "Lançador de Granadas de Smoke",
		type = "equipar" },
	["wbody|WEAPON_MINIGUN"] = { index = "minigun", nome = "Minigun", type = "equipar" },
	["wbody|WEAPON_FIREWORK"] = { index = "firework", nome = "Firework", type = "equipar" },
	["wbody|WEAPON_RAILGUN"] = { index = "railgun", nome = "Railgun", type = "equipar" },
	["wbody|WEAPON_HOMINGLAUNCHER"] = { index = "hominglauncher", nome = "Railgun", type = "equipar" },
	["wbody|WEAPON_COMPACTLAUNCHER"] = { index = "compactlauncher", nome = "Lançador de Granadas Compacto",
		type = "equipar" },
	["wbody|WEAPON_RAYMINIGUN"] = { index = "rayminigun", nome = "Rayminigun", type = "equipar" },

	--[ Heavy Weapons ][ Ammo ]----------------------------------------------------------------------------------------

	["wammo|WEAPON_RPG"] = { index = "m-rpg", nome = "M-RPG", type = "recarregar" },
	["wammo|WEAPON_GRENADELAUNCHER"] = { index = "m-grenadelauncher", nome = "M-Lançador de Granadas", type = "recarregar" },
	["wammo|WEAPON_GRENADELAUNCHER_SMOKE"] = { index = "m-grenadelaunchersmoke", nome = "M-Lançador de Granadas",
		type = "recarregar" },
	["wammo|WEAPON_MINIGUN"] = { index = "m-minigun", nome = "M-Minigun", type = "recarregar" },
	["wammo|WEAPON_FIREWORK"] = { index = "m-firework", nome = "M-Firework", type = "recarregar" },
	["wammo|WEAPON_RAILGUN"] = { index = "m-railgun", nome = "M-Railgun", type = "recarregar" },
	["wammo|WEAPON_HOMINGLAUNCHER"] = { index = "m-hominglauncher", nome = "M-Railgun", type = "recarregar" },
	["wammo|WEAPON_COMPACTLAUNCHER"] = { index = "m-compactlauncher", nome = "M-Lançador de Granadas", type = "recarregar" },
	["wammo|WEAPON_RAYMINIGUN"] = { index = "m-rayminigun", nome = "M-Rayminigun", type = "recarregar" },

	--[ Throwables ]---------------------------------------------------------------------------------------------------

	["wbody|WEAPON_GRANADE"] = { index = "granada", nome = "Granada", type = "equipar" },
	["wbody|WEAPON_BZGAS"] = { index = "gaslacrimogeneo", nome = "Gás Lacrimogêneo", type = "equipar" },
	["wbody|WEAPON_MOLOTOV"] = { index = "coquetelmolotov", nome = "Coquetel Molotov", type = "equipar" },
	["wbody|WEAPON_STICKYBOMB"] = { index = "c4", nome = "C4", type = "equipar" },
	["wbody|WEAPON_PROXMINE"] = { index = "minaproximidade", nome = "Mina de Proximidade", type = "equipar" },
	["wbody|WEAPON_SNOWBALL"] = { index = "bolaneve", nome = "Bola de Neve", type = "equipar" },
	["wbody|WEAPON_PIPEBOMB"] = { index = "bombacano", nome = "Bomba de Cano", type = "equipar" },
	["wbody|WEAPON_BALL"] = { index = "bolabaseball", nome = "Bola de Baseball", type = "equipar" },
	["wbody|WEAPON_SMOKEGRENADE"] = { index = "granadagas", nome = "Granada de Gás", type = "equipar" },
	["wbody|WEAPON_FLARE"] = { index = "flare", nome = "Flare", type = "equipar" },

	--[ Miscellaneous ]------------------------------------------------------------------------------------------------

	["wbody|WEAPON_PETROLCAN"] = { index = "galaogasolina", nome = "Galão de Gasolina", type = "equipar" },
	["wammo|WEAPON_PETROLCAN"] = { index = "galaogasolina", nome = "Galão de Gasolina", type = "recarregar" },
	["wbody|GADGET_PARACHUTE"] = { index = "paraquedas", nome = "Paraquédas", type = "equipar" },
	["wbody|WEAPON_FIREEXTINGUISHER"] = { index = "extintor", nome = "Extintor", type = "equipar" }
}

function vRP.returnItemList()
	return itemlist
end

function vRP.itemNameList(item)
	if itemlist[item] ~= nil then
		return itemlist[item].nome
	end
end

function vRP.itemIndexList(item)
	if itemlist[item] ~= nil then
		return itemlist[item].index
	end
end

function vRP.itemTypeList(item)
	if itemlist[item] ~= nil then
		return itemlist[item].type
	end
end

function vRP.itemBodyList(item)
	return itemlist[item]
end

vRP.items = {}

function vRP.defInventoryItem(idname, name, weight)
	if weight == nil then
		weight = 0
	end
	local item = { name = name, weight = weight }
	vRP.items[idname] = item
end

function vRP.computeItemName(item, args)
	if type(item.name) == "string" then
		return item.name
	else
		return item.name(args)
	end
end

function vRP.computeItemWeight(item, args)
	if type(item.weight) == "number" then
		return item.weight
	else
		return item.weight(args)
	end
end

function vRP.parseItem(idname)
	return splitString(idname, "|")
end

function vRP.getItemDefinition(idname)
	local args = vRP.parseItem(idname)
	local item = vRP.items[args[1]]
	if item then
		return vRP.computeItemName(item, args), vRP.computeItemWeight(item, args)
	end
	return nil, nil
end

function vRP.getItemWeight(idname)
	local args = vRP.parseItem(idname)
	local item = vRP.items[args[1]]
	if item then
		return vRP.computeItemWeight(item, args)
	end
	return 0
end

function vRP.computeItemsWeight(items)
	local weight = 0
	for k, v in pairs(items) do
		local iweight = vRP.getItemWeight(v.item)
		weight = weight + iweight * v.amount
	end
	return weight
end

function returnList(item)
	if itemlist[item] ~= nil then
		return itemlist[item]
	end
end

function vRP.giveInventoryItem(user_id, idname, amount, slot)
	local amount = parseInt(amount)
	local inventory = vRP.getUserDataTable(user_id)
	local data = inventory.inventory
	local stop = false
	local newSlotPlayer = 0

	if data and amount > 0 then
		if tostring(slot) == tostring('true') or tostring(slot) == tostring('false') then
			slot = nil
		end
		if idname then
			if slot then
				if data[tostring(slot)] == nil then
					data[tostring(slot)] = { item = idname, amount = parseInt(amount) }
				else
					if idname == data[tostring(slot)].item then
						data[tostring(slot)].amount = parseInt(data[slot].amount) + parseInt(amount)
					end
				end
			else
				for k, v in pairs(inventory.inventory) do
					if v.item == idname then
						local slot = k
						data[tostring(slot)].amount = parseInt(data[slot].amount) + parseInt(amount)
						stop = true
						break
					end
				end

				if stop == false then
					repeat
						newSlotPlayer = newSlotPlayer + 1
					until data[tostring(newSlotPlayer)] == nil or
						(data[tostring(newSlotPlayer)] and data[tostring(newSlotPlayer)].item == idname)
					newSlotPlayer = tostring(newSlotPlayer)
					data[tostring(newSlotPlayer)] = { item = idname, amount = parseInt(amount) }
				end
			end

			local source = vRP.getUserSource(user_id)
			if source then
				TriggerClientEvent("itensNotify", source, {
					"Recebido",
					idname,
					amount,
					itemlist[idname] and itemlist[idname].nome or idname
				})
			end
		end
	end
end

function vRP.limparInventory(user_id)
	local tbl = vRP.getUserDataTable(user_id)
	if tbl.inventory and next(tbl.inventory) then
		tbl.inventory = {}
	end
end

function vRP.tryGetInventoryItem(user_id, idname, amount, slot)
	local table = vRP.getUserDataTable(user_id)
	local data = table.inventory
	local paraTry = false
	if tostring(slot) == tostring('true') or tostring(slot) == tostring('false') then
		slot = nil
	end
	if slot then
		local slot = tostring(slot)
		if data[slot] then
			if data[slot].amount >= parseInt(amount) then
				data[slot].amount = parseInt(data[slot].amount) - parseInt(amount) -- Tira o amount tendo o slot
				if parseInt(data[tostring(slot)].amount) <= 0 then
					data[tostring(slot)] = nil
				end -- Verifica se é nulo
				local source = vRP.getUserSource(user_id)
				if source then
					TriggerClientEvent("itensNotify", source, {
						"Retirado",
						idname,
						amount,
						itemlist[idname] and itemlist[idname].nome or idname
					})
				end
				return true
			else
				return false
			end
		end

	elseif not slot then
		for k, v in pairs(data) do

			if tostring(v.item) == tostring(idname) then
				local slotRemove = tostring(k)

				if parseInt(data[slotRemove].amount) >= parseInt(amount) then
					print(slotRemove)
					data[slotRemove].amount = parseInt(data[slotRemove].amount) - parseInt(amount) -- Tira o amount

					if parseInt(data[tostring(slotRemove)].amount) <= 0 then
						data[tostring(slotRemove)] = nil
					end -- Verifica se é nulo
					paraTry = true
					local source = vRP.getUserSource(user_id)
					if source then
						TriggerClientEvent("itensNotify", source, {
							"Retirado",
							idname,
							amount,
							itemlist[idname] and itemlist[idname].nome or idname
						})
					end
					return true
				else
					return false
				end
				if paraTry == true then
					break
				end
			end
		end
	end
end

function vRP.delteItem(user_id, idname)
	local table = vRP.getUserDataTable(user_id)
	local data = table.inventory
	for k, v in pairs(data) do
		if tostring(v.item) == tostring(idname) then
			data[tostring(k)] = nil
		end
	end
end

function vRP.updateItens(user_id, idname)
	local table = vRP.getUserDataTable(user_id)
	local data = table.inventory
	for k, v in pairs(data) do
		if tostring(k) == tostring(idname) then
			data[tostring(idname)] = nil
			return true
		end
	end
end

function vRP.getInventoryItemAmount(user_id, idname)
	local data = vRP.getUserDataTable(user_id)
	local quantidade = 0
	if data and data.inventory then
		for k, v in pairs(data.inventory) do
			if v.item == idname then
				quantidade = parseInt(quantidade) + parseInt(v.amount)
			end
		end
		return quantidade
	end
	return 0
end

function vRP.getInventory(user_id)
	local data = vRP.getUserDataTable(user_id)
	if data then
		return data.inventory
	end
end

function vRP.getInventoryWeight(user_id)
	local data = vRP.getUserDataTable(user_id)
	if data and data.inventory then
		return vRP.computeItemsWeight(data.inventory)
	end
	return 0
end

function vRP.getInventoryMaxWeight(user_id)
	return math.floor(vRP.expToLevel(vRP.getExp(user_id, "physical", "strength"))) * 3
end

RegisterServerEvent("clearInventoryTwo")
AddEventHandler("clearInventoryTwo", function()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local data = vRP.getUserDataTable(user_id)
		if data then
			data.inventory = {}
		end

		vRPclient._clearWeapons(source)
	end
end)

RegisterServerEvent("clearInventory")
AddEventHandler("clearInventory", function()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local data = vRP.getUserDataTable(user_id)
		if data then
			data.inventory = {}
		end

		vRPclient._clearWeapons(source)
		vRPclient._setHandcuffed(source, false)

		vRP.setExp(user_id, "physical", "strength", 20)
	end
end)

AddEventHandler("vRP:playerJoin", function(user_id, source, name)
	local data = vRP.getUserDataTable(user_id)
	if not data.inventory then
		data.inventory = {}
	end
end)

--[ VEHGLOBAL ]-----------------------------------------------------------------------------------------------------------------------------------------

local vehglobal = {

	["lp770cop"] = { ['name'] = "Lambo Policia", ['price'] = 0, ['tipo'] = "work" },
	["cdapassat"] = { ['name'] = "Passat Policia", ['price'] = 0, ['tipo'] = "work" },
	["cdaranger"] = { ['name'] = "Ranger Policia", ['price'] = 0, ['tipo'] = "work" },
	["cdac7"] = { ['name'] = "cdac7", ['price'] = 0, ['tipo'] = "work" },
	["r1250policia"] = { ['name'] = "R1250GS Policia", ['price'] = 0, ['tipo'] = "work" },

	["blazerbope"] = { ['name'] = "Blazer BOPE", ['price'] = 5000, ['tipo'] = "work" },
	["hiluxsrvbope"] = { ['name'] = "HILUX BOPE", ['price'] = 5000, ['tipo'] = "work" },
	["s10bope"] = { ['name'] = "S10 BOPE", ['price'] = 5000, ['tipo'] = "work" },
	["trailblazerbope"] = { ['name'] = "TRAIL BOPE", ['price'] = 5000, ['tipo'] = "work" },
	["helibope"] = { ['name'] = "CAVEIRAO BOPE", ['price'] = 5000, ['tipo'] = "work" },
	["riot"] = { ['name'] = "BLINDADO BOPE", ['price'] = 5000, ['tipo'] = "work" },
	["corollaprf"] = { ['name'] = "Corolla PRF", ['price'] = 5000, ['tipo'] = "work" },
	["anpc_l200"] = { ['name'] = "L200 PRF", ['price'] = 5000, ['tipo'] = "work" },
	["trailprf"] = { ['name'] = "TRAIL BLAZER PRF", ['price'] = 5000, ['tipo'] = "work" },
	["as350prf"] = { ['name'] = "ÀGUIA PRF", ['price'] = 5000, ['tipo'] = "work" },
	["xreprf"] = { ['name'] = "XTREM PRF", ['price'] = 5000, ['tipo'] = "work" },
	["hiluxpf"] = { ['name'] = "Hilux PF", ['price'] = 5000, ['tipo'] = "work" },
	["trailpf"] = { ['name'] = "Trail PF", ['price'] = 5000, ['tipo'] = "work" },
	["s10pmerj"] = { ['name'] = "S10 PMERJ", ['price'] = 5000, ['tipo'] = "work" },
	["mk1rabbit"] = { ['name'] = "Quadradao", ['price'] = 60000, ['tipo'] = "sedan" },
	["corollapmerj"] = { ['name'] = "COROLLA PMERJ", ['price'] = 5000, ['tipo'] = "work" },
	["dusterpc"] = { ['name'] = "Duster PC", ['price'] = 5000, ['tipo'] = "work" },
	["corollapc"] = { ['name'] = "Corolla PC", ['price'] = 5000, ['tipo'] = "work" },
	["voyagepc"] = { ['name'] = "Voyage PC", ['price'] = 5000, ['tipo'] = "work" },
	["helipc"] = { ['name'] = "Águia PC", ['price'] = 5000, ['tipo'] = "work" },
	["versapmerj"] = { ['name'] = "VERSA PMERJ", ['price'] = 5000, ['tipo'] = "work" },
	["loganpmerj"] = { ['name'] = "LOGAN PMERJ", ['price'] = 5000, ['tipo'] = "work" },
	["voyagepmerj"] = { ['name'] = "VOYAGE PMERJ", ['price'] = 5000, ['tipo'] = "work" },
	["xrepmerj"] = { ['name'] = "XRE PMERJ", ['price'] = 5000, ['tipo'] = "work" },
	["amarokpolicia"] = { ['name'] = "Amarok Policia", ['price'] = 60000, ['tipo'] = "work" },
	["ambulance"] = { ['name'] = "Ambulancia", ['price'] = 6000, ['tipo'] = "work" },
	["motosamu"] = { ['name'] = "Moto SAMU", ['price'] = 6000, ['tipo'] = "work" },
	["samumav"] = { ['name'] = "Heli SAMU", ['price'] = 6000, ['tipo'] = "work" },


	["corolla"] = { ['name'] = "Corolla", ['price'] = 455500, ['tipo'] = "carros", ['mala'] = 300, ['slots'] = 15,
		['hash'] = -1702326766, ['banned'] = false },
	["xre300"] = { ['name'] = "XRE 300", ['price'] = 800000, ['tipo'] = "motos", ['mala'] = 50, ['slots'] = 5,
		['hash'] = -883244519, ['banned'] = false },
	["xtgang"] = { ['name'] = "XT GANG", ['price'] = 1600000, ['tipo'] = "motos", ['mala'] = 50, ['slots'] = 5,
		['hash'] = 1343190773, ['banned'] = false },
	["amggt63"] = { ['amggt63'] = "AMG GT", ['price'] = 3000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 15,
		['hash'] = -970634648, ['banned'] = false },
	["amarok"] = { ['name'] = "Amarok", ['price'] = 455500, ['tipo'] = "carros", ['mala'] = 300, ['slots'] = 10,
		['hash'] = 493030188, ['banned'] = false },
	["c7"] = { ['name'] = "Corvette", ['price'] = 3000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 874739883, ['banned'] = false },
	["golquadrado"] = { ['name'] = "Gol Quadrado Turbo", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 10,
		['slots'] = 10, ['hash'] = 77673261, ['banned'] = false },
	["jetta2017"] = { ['name'] = "Jetta", ['price'] = 800000, ['tipo'] = "carros", ['mala'] = 20, ['slots'] = 10,
		['hash'] = -440972578, ['banned'] = false },
	["kadett"] = { ['name'] = "Kaddet", ['price'] = 18000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1078573354, ['banned'] = false },
	["a45amg"] = { ['name'] = "Mercedes A45 AMG", ['price'] = 1200000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -2136030678, ['banned'] = false },
	["c63w205"] = { ['name'] = "Mercedes C63", ['price'] = 1300000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = 1769548661, ['banned'] = false },
	["saveiro"] = { ['name'] = "Saveiro", ['price'] = 600000, ['tipo'] = "carros", ['mala'] = 100, ['slots'] = 10,
		['hash'] = 1451518270, ['banned'] = false },
	["voyage"] = { ['name'] = "Voyage", ['price'] = 230000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 134028651, ['banned'] = false },
	["audia3"] = { ['name'] = "Audi A3", ['price'] = 1300000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = 109912402, ['banned'] = false },
	["tts"] = { ['name'] = "Audi TT", ['price'] = 2000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 796235489, ['banned'] = false },
	["19z4S"] = { ['name'] = "Bmw Z4", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1622832325, ['banned'] = false },
	["corolla2017"] = { ['name'] = "Corolla", ['price'] = 750000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = 1988219689, ['banned'] = false },
	["azera"] = { ['name'] = "Azera", ['price'] = 750000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = 1988219689, ['banned'] = false },
	["mazdarx7"] = { ['name'] = "Mazda RX7", ['price'] = 1400000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 2034235290, ['banned'] = false },
	["golfgti"] = { ['name'] = "Golf GTI", ['price'] = 2000000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -2019386221, ['banned'] = false },
	["l200civil"] = { ['name'] = "L200", ['price'] = 10000000, ['tipo'] = "carros", ['mala'] = 200, ['slots'] = 10,
		['hash'] = 1847017357, ['banned'] = false },
	["mst"] = { ['name'] = "Mustang Shelby", ['price'] = 2000000, ['tipo'] = "vip", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 162432206, ['banned'] = false },
	["s500w222"] = { ['name'] = "Mercedes S500", ['price'] = 750000, ['tipo'] = "vip", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 859560111, ['banned'] = false },
	["pturismo"] = { ['name'] = "Porsche Panamera", ['price'] = 2000000, ['tipo'] = "vip", ['mala'] = 100, ['slots'] = 10,
		['hash'] = -1296077726, ['banned'] = false },
	["astra"] = { ['name'] = "Astra", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 515734555, ['banned'] = false },
	["celta"] = { ['name'] = "Celta", ['price'] = 100000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1995020435, ['banned'] = false },
	["chevette"] = { ['name'] = "Chevette", ['price'] = 36500, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1456558572, ['banned'] = false },
	["uno"] = { ['name'] = "Uno", ['price'] = 80500, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1062355240, ['banned'] = false },
	["p207"] = { ['name'] = "peugeot 207", ['price'] = 100500, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1062355240, ['banned'] = false },
	["brasilia"] = { ['name'] = "Brasilia", ['price'] = 220000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 46103174, ['banned'] = false },
	["palio"] = { ['name'] = "Palio", ['price'] = 100000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 46103174, ['banned'] = false },

	["paganihuayra"] = { ['name'] = "Pagani Huayra", ['price'] = 53000000, ['tipo'] = "carros", ['mala'] = 50,
		['slots'] = 10,
		['hash'] = 46103174, ['banned'] = false },

	["punto"] = { ['name'] = "Punto", ['price'] = 500000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 46103174, ['banned'] = false },
	["audirs6"] = { ['name'] = "Audi RS6", ['price'] = 500000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1676738519, ['banned'] = false },
	["bmwm3f80"] = { ['name'] = "Bmw M3", ['price'] = 1500000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = -157095615, ['banned'] = false },
	["compass"] = { ['name'] = "Jeep Compass", ['price'] = 500000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = -556794296, ['banned'] = false },
	["bmwm4gts"] = { ['name'] = "Bmw M4", ['price'] = 10000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -13524981, ['banned'] = false },
	["2013LP560"] = { ['name'] = "Lamborghini Galardo", ['price'] = 8000000, ['tipo'] = "carros", ['mala'] = 30,
		['slots'] = 10, ['hash'] = -2109805185, ['banned'] = false },
	["amggtc"] = { ['name'] = "Mercedes AMG", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -217995216, ['banned'] = false },
	["opala"] = { ['name'] = "Opala", ['price'] = 1000000, ['tipo'] = "work", ['mala'] = 100, ['slots'] = 10,
		['hash'] = 637861346, ['banned'] = false },
	["16ss"] = { ['name'] = "Camaro SS", ['price'] = 800000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1485709732, ['banned'] = false },
	["2016rs7"] = { ['name'] = "Audi RS7", ['price'] = 260000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1071770374, ['banned'] = false },
	["ix35"] = { ['name'] = "ix35", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 713340065, ['banned'] = false },
	["minicooper"] = { ['name'] = "MinI Cooper", ['price'] = 562500, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1794393272, ['banned'] = false },
	["s10"] = { ['name'] = "S10", ['price'] = 305000, ['tipo'] = "carros", ['mala'] = 100, ['slots'] = 10,
		['hash'] = -110704625, ['banned'] = false },
	["hilux2022"] = { ['name'] = "Hilux", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 100, ['slots'] = 10,
		['hash'] = -110704625, ['banned'] = false },
	["spacefox"] = { ['name'] = "Space Fox", ['price'] = 50000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 572850486, ['banned'] = false },
	["sandero"] = { ['name'] = "Sandero", ['price'] = 35000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -516616829, ['banned'] = false },
	["virtus"] = { ['name'] = "Virtus", ['price'] = 200000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = -729507163, ['banned'] = false },
	["335i"] = { ['name'] = "Bmw 320i", ['price'] = 500000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = 2136674195, ['banned'] = false },
	["jettagli"] = { ['name'] = "Jetta Gli", ['price'] = 500000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = -622126799, ['banned'] = false },
	["civicsi"] = { ['name'] = "Civic Si", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = -716824881, ['banned'] = false },
	["a6"] = { ['name'] = "Audi A6", ['price'] = 3000000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -494839908, ['banned'] = false },
	["bmwm5"] = { ['name'] = "Bmw M5", ['price'] = 170000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1705203962, ['banned'] = false },
	["porsche918"] = { ['name'] = "Porsche 918", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 2147061729, ['banned'] = false },
	["mbgle"] = { ['name'] = "Begle", ['price'] = 250000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1752384486, ['banned'] = false },
	["hummer"] = { ['name'] = "Hummer", ['price'] = 180000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1315660899, ['banned'] = false },
	["rrphantom"] = { ['name'] = "Rollys Royce", ['price'] = 220000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1724630220, ['banned'] = false },
	["raptor150"] = { ['name'] = "Raptor 150", ['price'] = 2500000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 284310455, ['banned'] = false },

	["vsgran"] = { ['name'] = "VS GRAN", ['price'] = 5000000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 913030392, ['banned'] = false },
	["mvisiongt"] = { ['name'] = "MVISION GT", ['price'] = 5000000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 913030392, ['banned'] = false },

	["jesko2020"] = { ['name'] = "Jesko", ['price'] = 250000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1571820021, ['banned'] = false },

	["fmgt"] = { ['name'] = "fmgt", ['price'] = 220000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -372000475, ['banned'] = false },
	["fc15"] = { ['name'] = "Ferrari California", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 580861919, ['banned'] = false },
	["z4bmw"] = { ['name'] = "Bmw Z4", ['price'] = 350000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 745393879, ['banned'] = false },
	["bolide"] = { ['name'] = "Bolide", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1975081724, ['banned'] = false },
	["sianr"] = { ['name'] = "Sian", ['price'] = 170000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1659548258, ['banned'] = false },

	["sf90"] = { ['name'] = "Ferrari SF90", ['price'] = 320000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1820996020, ['banned'] = false },
	["maserati"] = { ['name'] = "Maserati", ['price'] = 170000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1006322770, ['banned'] = false },
	["gtrlb"] = { ['name'] = "Nissan GTR Libery Walk", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50,
		['slots'] = 10, ['hash'] = -1333690661, ['banned'] = false },
	["r1v2"] = { ['name'] = "R1", ['price'] = 250000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -2035248379, ['banned'] = false },
	["btsupra94"] = { ['name'] = "Supra", ['price'] = 180000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1828026872, ['banned'] = false },


	["amggt63s"] = { ['name'] = "Mercedes GT63S", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1437054386, ['banned'] = false },
	["fuscatsi"] = { ['name'] = "Fusca TSI", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 284310455, ['banned'] = false },
	["golfsportline"] = { ['name'] = "Golf Sportline", ['price'] = 205000, ['tipo'] = "carros", ['mala'] = 50,
		['slots'] = 10, ['hash'] = -865546683, ['banned'] = false },
	["rmodmk7"] = { ['name'] = "Golf MK7 MOD", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 50,
		['slots'] = 10, ['hash'] = -1222347999, ['banned'] = false },
	["golg2"] = { ['name'] = "Gol Paredao", ['price'] = 54000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1883881780, ['banned'] = false },
	["jettamk5"] = { ['name'] = "Jetta MK5", ['price'] = 105000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -228009297, ['banned'] = false },
	["saveirog4surf"] = { ['name'] = "Saveiro Surf", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 2109544351, ['banned'] = false },
	["bmwx1"] = { ['name'] = "Bmw X1m", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -125152048, ['banned'] = false },


	["f350offroadspec"] = { ['name'] = "F350 Road EXCLUSIVO", ['price'] = 250000, ['tipo'] = "carros", ['mala'] = 50,
		['slots'] = 10, ['hash'] = -1949561338, ['banned'] = false },
	["amels200"] = { ['name'] = "Amells 200", ['price'] = 250000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -861217386, ['banned'] = false },
	["teslapd"] = { ['name'] = "Tesla Prior", ['price'] = 250000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -435728526, ['banned'] = false },
	["senna2"] = { ['name'] = "Senna", ['price'] = 250000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1949561338, ['banned'] = false },
	["bnsgtr99"] = { ['name'] = "bnsgtr99 EXCLUSIVO", ['price'] = 250000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -726956308, ['banned'] = false },
	["gt63samg"] = { ['name'] = "Mercedes GT63", ['price'] = 220000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1073239791, ['banned'] = false },
	["rs6c8"] = { ['name'] = "RS6 C8", ['price'] = 220000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -560848940, ['banned'] = false },
	["wildtrak"] = { ['name'] = "Wild", ['price'] = 350000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1180922538, ['banned'] = false },
	["centuria"] = { ['name'] = "Centuria", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 389821046, ['banned'] = false },
	["zondar"] = { ['name'] = "Zonda", ['price'] = 170000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1584771067, ['banned'] = false },
	["pm19"] = { ['name'] = "PM 19", ['price'] = 320000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1560751994, ['banned'] = false },
	["gt86trust"] = { ['name'] = "GT 86", ['price'] = 320000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1276173343, ['banned'] = false },
	["s15mak"] = { ['name'] = "S15", ['price'] = 320000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -552400939, ['banned'] = false },
	["chiron17"] = { ['name'] = "Bugatti Chiron", ['price'] = 500000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 10019767, ['banned'] = false },
	["rmodp1gtr"] = { ['name'] = "McLaren P1", ['price'] = 170000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1414722888, ['banned'] = false },
	["velociraptor"] = { ['name'] = "Veloci Raptor", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 310570430, ['banned'] = false },
	["xc90"] = { ['name'] = "Volvo XC90", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 284310455, ['banned'] = false },

	["brabusd30"] = { ['name'] = "Brabus D30", ['price'] = 220000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1879443632, ['banned'] = false },
	["mvisiongt"] = { ['name'] = "MVision GT", ['price'] = 350000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 913030392, ['banned'] = false },

	---------------- MOTOS---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	["quadriciclo"] = { ['name'] = "Quadriciclo", ['price'] = 180000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1734822922, ['banned'] = false },
	["bros"] = { ['name'] = "Bros 160", ['price'] = 220000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1517584463, ['banned'] = false },
	["falcon"] = { ['name'] = "Falcon 400", ['price'] = 105000, ['tipo'] = "carros", ['mala'] = 20, ['slots'] = 10,
		['hash'] = -1065246059, ['banned'] = false },
	["hornet"] = { ['name'] = "Hornet 600", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1761239425, ['banned'] = false },
	["mt17"] = { ['name'] = "MT 07", ['price'] = 355000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -276187291, ['banned'] = false },
	["sr1"] = { ['name'] = "Bmw S1000r", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -423677691, ['banned'] = false },
	["160"] = { ['name'] = "Titan 160", ['price'] = 38000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -2023876491, ['banned'] = false },
	["150"] = { ['name'] = "Fan 150", ['price'] = 20000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1987109409, ['banned'] = false },
	["transalp"] = { ['name'] = "Transalp 700", ['price'] = 300000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -591868813, ['banned'] = false },
	["xj6"] = { ['name'] = "Xj6", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 342059638, ['banned'] = false },
	["xrepcr"] = { ['name'] = "Xre 300", ['price'] = 110000, ['tipo'] = "carros", ['mala'] = 20, ['slots'] = 10,
		['hash'] = 642762300, ['banned'] = false },
	["xre2012"] = { ['name'] = "Xre 300 Adventure", ['price'] = 80000, ['tipo'] = "carros", ['mala'] = 20, ['slots'] = 10,
		['hash'] = -1129117794, ['banned'] = false },
	["gs1"] = { ['name'] = "Stalion2", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -611302634, ['banned'] = false },
	["xt660vip"] = { ['name'] = "XT 660", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1378825203, ['banned'] = false },
	["gs650"] = { ['name'] = "GS 650", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 703607519, ['banned'] = false },
	["biz"] = { ['name'] = "Biz 125", ['price'] = 28000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1556226045, ['banned'] = false },
	["pop110"] = { ['name'] = "POP 110", ['price'] = 27000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -234700505, ['banned'] = false },
	["450crf"] = { ['name'] = "450 CRF", ['price'] = 110000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1639924411, ['banned'] = false },
	["africa"] = { ['name'] = "Africa Twin 1100", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 1258059543, ['banned'] = false },
	["f800"] = { ['name'] = "Bmw F800", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -475284513, ['banned'] = false },
	["f800r"] = { ['name'] = "Bmw F800R", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 1300207027, ['banned'] = false },
	["cgmontadinha"] = { ['name'] = "CG Montadinha", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -558848462, ['banned'] = false },
	["250"] = { ['name'] = "CG 250", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -916334124, ['banned'] = false },
	["moby"] = { ['name'] = "Mobilete", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1667151882, ['banned'] = false },
	["sxr"] = { ['name'] = "S1000 XR", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1990820579, ['banned'] = false },
	["pinigale"] = { ['name'] = "Ducati Pinigale", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -628496438, ['banned'] = false },
	["hcbr17"] = { ['name'] = "CBR 1000", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1265899455, ['banned'] = false },
	["gs310"] = { ['name'] = "Bmw Gs310", ['price'] = 140000, ['tipo'] = "carros", ['mala'] = 20, ['slots'] = 10,
		['hash'] = 1305247149, ['banned'] = false },
	["cb500x"] = { ['name'] = "CB 500X", ['price'] = 500000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 494265960, ['banned'] = false },
	["300"] = { ['name'] = "CB 300", ['price'] = 80000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1874309937, ['banned'] = false },
	["cbtwister"] = { ['name'] = "CB Twister 250", ['price'] = 48000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 321407703, ['banned'] = false },
	["dt200"] = { ['name'] = "DT 200", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 89762412, ['banned'] = false },
	["PCX"] = { ['name'] = "PCX", ['price'] = 320000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -217120366, ['banned'] = false },
	["start160"] = { ['name'] = "CG Start 160", ['price'] = 33000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1591433303, ['banned'] = false },
	["biz08"] = { ['name'] = "Biz 125", ['price'] = 28000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1090539832, ['banned'] = false },
	["bbros"] = { ['name'] = "Bros 160", ['price'] = 55000, ['tipo'] = "carros", ['mala'] = 20, ['slots'] = 10,
		['hash'] = -913575190, ['banned'] = false },
	["mt099"] = { ['name'] = "MT 09", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1575628331, ['banned'] = false },
	["milgrau"] = { ['name'] = "Hornet Carburada 600", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 10,
		['slots'] = 10, ['hash'] = -1183641544, ['banned'] = false },
	["bate"] = { ['name'] = "Bate Bate", ['price'] = 220000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1268855214, ['banned'] = false },
	["r1250adv"] = { ['name'] = "Bmw R1250 Adventure", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 1058674908, ['banned'] = false },
	["f800adventure"] = { ['name'] = "Bmw F800 Adventure", ['price'] = 350000, ['tipo'] = "carros", ['mala'] = 50,
		['slots'] = 10, ['hash'] = -571452898, ['banned'] = false },
	["z1000"] = { ['name'] = "Kawasaki Z1000", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1744543800, ['banned'] = false },
	["tiger"] = { ['name'] = "Tiger 800", ['price'] = 2000000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1156537658, ['banned'] = false },
	["tiger2021"] = { ['name'] = "Tiger 800 2021", ['price'] = 5000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1156537658, ['banned'] = false },
	["tigerlow"] = { ['name'] = "Tiger XRLOW", ['price'] = 3000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1156537658, ['banned'] = false },
	["tiger900"] = { ['name'] = "Tiger 900", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 1298078286, ['banned'] = false },
	["r1200rally"] = { ['name'] = "R1200 Rally", ['price'] = 10000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 531955362, ['banned'] = false },
	["s10002017"] = { ['name'] = "S1000RR 2017", ['price'] = 10000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 531955362, ['banned'] = false },
	["r1200gs"] = { ['name'] = "BMW R1200 GS", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1532432776, ['banned'] = false },
	["dm1200"] = { ['name'] = "Ducati 1260", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -486920242, ['banned'] = false },
	["cbr"] = { ['name'] = "CBR 1000", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -207910398, ['banned'] = false },
	["xjturbo"] = { ['name'] = "XJ6 Turbo", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -16839848, ['banned'] = false },
	["tenere"] = { ['name'] = "Super Tenere 1100", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -982569566, ['banned'] = false },
	["cb2020"] = { ['name'] = "CB 1000 2020", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1029452368, ['banned'] = false },
	["cbb"] = { ['name'] = "CB 1000", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1935444402, ['banned'] = false },
	["tiger1200"] = { ['name'] = "Tiger 1200", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1775453271, ['banned'] = false },
	["s1000docandidato"] = { ['name'] = "Bmw S1000RR", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -293031363, ['banned'] = false },

	["m3gtr"] = { ['name'] = "Bmw M3", ['price'] = 500000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -2123405935, ['banned'] = false },
	["santafe"] = { ['name'] = "Santa Fe", ['price'] = 1500000, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -404110988, ['banned'] = false },
	------------------------------EXCLUSIVOS----------------------------------------------------------------------------------------------------------------------------
	["19raptor"] = { ['name'] = "Raptor 150", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 1000, ['slots'] = 10,
		['hash'] = 898224721, ['banned'] = false },
	["aventsvjr"] = { ['name'] = "Lamborghini SVJ", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 1888878629, ['banned'] = false },
	["gcm992gt3"] = { ['name'] = "Porsche GT3", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1487934236, ['banned'] = false },
	["laferrari"] = { ['name'] = "La Ferrari", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -548280172, ['banned'] = false },
	--------------------------------------import-------------------------------------------------------------------------------------------------------------------------
	["r820"] = { ['name'] = "Audi R8", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -143695728, ['banned'] = false },
	["ram2500"] = { ['name'] = "Dodge RAM 2500", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -143695728, ['banned'] = false },
	["teslamodels"] = { ['name'] = "Tesla Model", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -979071501, ['banned'] = false },
	["i8"] = { ['name'] = "Bmw i8", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 1718441594, ['banned'] = false },
	["Carreta"] = { ['name'] = "Carreta Paredao", ['price'] = 320000, ['tipo'] = "vip", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 358580688, ['banned'] = false },
	["Treme"] = { ['name'] = "Paredao TREME", ['price'] = 170000, ['tipo'] = "vip", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1038274186, ['banned'] = false },
	["TremeTreme"] = { ['name'] = "Paredao TREME TREME", ['price'] = 150000, ['tipo'] = "vip", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1680938805, ['banned'] = false },
	["Hilux2019"] = { ['name'] = "Hillux", ['price'] = 250000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1270846222, ['banned'] = false },
	["ix35"] = { ['name'] = "Hyundai ix35", ['price'] = 250000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 713340065, ['banned'] = false },
	["PAREDAOG8"] = { ['name'] = "Paredao G8", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 0, ['slots'] = 10,
		['hash'] = -2130828118, ['banned'] = false },
	["SomHulk"] = { ['name'] = "Som Hulk", ['price'] = 75000, ['tipo'] = "carros", ['mala'] = 0, ['slots'] = 10,
		['hash'] = 2046350883, ['banned'] = false },
	["carretinhajetski"] = { ['name'] = "Carretinha Jetski", ['price'] = 200000, ['tipo'] = "carros", ['mala'] = 0,
		['slots'] = 10, ['hash'] = -721804238, ['banned'] = false },
	["carretinham"] = { ['name'] = "Carretinha Moto", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 0, ['slots'] = 10,
		['hash'] = 524108981, ['banned'] = false },
	["carretinhacarro"] = { ['name'] = "Carretinha Carro", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 0,
		['slots'] = 10, ['hash'] = 524108981, ['banned'] = false },
	["lp610"] = { ['name'] = "Lamborghini LP 610", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1796140063, ['banned'] = false },
	["675lt"] = { ['name'] = "MCLaren 675 LT", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1088481501, ['banned'] = false },
	["gtr"] = { ['name'] = "Nissan GTR", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1752116803, ['banned'] = false },
	["urus"] = { ['name'] = "Lamborghini URUS", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 250, ['slots'] = 10,
		['hash'] = -520214134, ['banned'] = false },
	["veneno"] = { ['name'] = "Lamvorghini Aventador", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -42051018, ['banned'] = false },
	["ferrariitalia"] = { ['name'] = "Ferrari Italia", ['price'] = 3000000, ['tipo'] = "vip", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1173768715, ['banned'] = false },
	["lamborghinihuracan"] = { ['name'] = "Lamvorghini Huracan", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30,
		['slots'] = 10, ['hash'] = 1114244595, ['banned'] = false },
	["evoque"] = { ['name'] = "Evoque Conversivel", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 250, ['slots'] = 10,
		['hash'] = 1663453404, ['banned'] = false },
	["cayenne"] = { ['name'] = "Porsche Cayenne", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 300, ['slots'] = 10,
		['hash'] = -1382835569, ['banned'] = false },
	["ramlh20"] = { ['name'] = "Dodge Ram", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -608300537, ['banned'] = false },
	["x6m"] = { ['name'] = "Bmw X6M", ['price'] = 3000000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -506359117, ['banned'] = false },
	["nissanskyliner34"] = { ['name'] = "Nissan SKYLINE R34", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 50,
		['slots'] = 10, ['hash'] = -4816535, ['banned'] = false },
	["toyotasupra"] = { ['name'] = "Toyota Supra", ['price'] = 10000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 723779872, ['banned'] = false },
	["718b"] = { ['name'] = "Porsche 718b", ['price'] = 3000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -1528734685, ['banned'] = false },
	["18Velar"] = { ['name'] = "Land Rover Velar", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 300, ['slots'] = 10,
		['hash'] = -984938540, ['banned'] = false },
	["911vip"] = { ['name'] = "Porsche 911", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 1375882916, ['banned'] = false },
	["pistaspider19"] = { ['name'] = "Ferrari Pista Spider", ['price'] = 220000, ['tipo'] = "carros", ['mala'] = 30,
		['slots'] = 10, ['hash'] = 1289935896, ['banned'] = false },
	["mclarenovo"] = { ['name'] = "Mc Laren", ['price'] = 350000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1724630220, ['banned'] = false },
	["harley"] = { ['name'] = "Harley", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -2018756422, ['banned'] = false },
	["fusca"] = { ['name'] = "Fusca", ['price'] = 170000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1724630220, ['banned'] = false },
	["tcross"] = { ['name'] = "TCross", ['price'] = 200000, ['tipo'] = "carros", ['mala'] = 100, ['slots'] = 10,
		['hash'] = -1366968483, ['banned'] = false },
	["370z"] = { ['name'] = "Nissan 370z", ['price'] = 10000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -992812151, ['banned'] = false },
	["Mb400"] = { ['name'] = "Mercedes MB 400", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1208421772, ['banned'] = false },
	["gto2"] = { ['name'] = "Ferari GTO 2", ['price'] = 30000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -578553462, ['banned'] = false },
	["g65amg"] = { ['name'] = "Mercedes G65 AMG", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 300, ['slots'] = 10,
		['hash'] = 104532066, ['banned'] = false },
	["impala67"] = { ['name'] = "Impala 67", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 100, ['slots'] = 10,
		['hash'] = 820120452, ['banned'] = false },
	["RollsRoyceCP"] = { ['name'] = "Rollys Royce CP", ['price'] = 500000, ['tipo'] = "vip", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -2035480284, ['banned'] = false },
	["fiattoro"] = { ['name'] = "Fiat Toro", ['price'] = 350000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -182003596, ['banned'] = false },
	["polo"] = { ['name'] = "Gol SOM", ['price'] = 57000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1125130375, ['banned'] = false },
	["x6m"] = { ['name'] = "Bmw X6m", ['price'] = 3000000, ['tipo'] = "carros", ['mala'] = 250, ['slots'] = 10,
		['hash'] = -506359117, ['banned'] = false },
	["veloster"] = { ['name'] = "Veloster", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1876694905, ['banned'] = false },
	["f250deboxe"] = { ['name'] = "F250", ['price'] = 400000, ['tipo'] = "carros", ['mala'] = 250, ['slots'] = 10,
		['hash'] = -1686080635, ['banned'] = false },
	["parati"] = { ['name'] = "Parati Turbo", ['price'] = 1000000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = 1942984893, ['banned'] = false },
	["lancerevolutionx"] = { ['name'] = "Lancer Evolution", ['price'] = 500000, ['tipo'] = "carros", ['mala'] = 80,
		['slots'] = 10, ['hash'] = 1978088379, ['banned'] = false },
	["zx10r"] = { ['name'] = "Kawasaki ZX10 R", ['price'] = 150000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -714386060, ['banned'] = false },
	["vw"] = { ['name'] = "Kombi", ['price'] = 100000, ['tipo'] = "carros", ['mala'] = 250, ['slots'] = 10,
		['hash'] = -714386060, ['banned'] = false },

	-- carros
	["miljet"] = { ['name'] = "Miljet", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 165154707, ['banned'] = false },
	["dinghy"] = { ['name'] = "Jestki", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1033245328, ['banned'] = false },
	["jetmax"] = { ['name'] = "Jetmax", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 861409633, ['banned'] = false },
	["marquis"] = { ['name'] = "Marquis", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1043459709, ['banned'] = false },
	["seashark3"] = { ['name'] = "Jestki Executivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -311022263, ['banned'] = false },
	["speeder"] = { ['name'] = "Speeder", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 231083307, ['banned'] = false },
	["yaluxe"] = { ['name'] = "Iate", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 2086119546, ['banned'] = false },
	["speeder2"] = { ['name'] = "Speeder 2", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 437538602, ['banned'] = false },
	["frogger2"] = { ['name'] = "Frogger 2", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1949211328, ['banned'] = false },
	["squalo"] = { ['name'] = "Squalo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 400514754, ['banned'] = false },
	["suntrap"] = { ['name'] = "Sun Trap", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -282946103, ['banned'] = false },
	["toro"] = { ['name'] = "Toro", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1070967343, ['banned'] = false },
	["submersible"] = { ['name'] = "Submersible", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 771711535, ['banned'] = false },
	["toro2"] = { ['name'] = "Toro 2", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 908897389, ['banned'] = false },
	["tropic"] = { ['name'] = "Tropic", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 290013743, ['banned'] = false },
	["tropic2"] = { ['name'] = "Tropic 2", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1448677353, ['banned'] = false },

	["tug"] = { ['name'] = "Tug", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10, ['hash'] = -
		2100640717, ['banned'] = false },
	["supervolito2"] = { ['name'] = "Super Volito 2", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1671539132, ['banned'] = false },
	["cuban800"] = { ['name'] = "Cuban 800", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -644710429, ['banned'] = false },
	["mammatus"] = { ['name'] = "Mammatus", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1746576111, ['banned'] = false },
	["vestra"] = { ['name'] = "Vestra", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1341619767, ['banned'] = false },

	["buzzard2"] = { ['name'] = "Buzzard 2", ['price'] = 500000, ['tipo'] = "work", ['mala'] = 300, ['slots'] = 10,
		['hash'] = 745926877, ['banned'] = false },
	["velum2"] = { ['name'] = "Velum", ['price'] = 15000000, ['tipo'] = "work", ['mala'] = 1000, ['slots'] = 10,
		['hash'] = 1077420264, ['banned'] = false },
	["stunt"] = { ['name'] = "Velum", ['price'] = 10000000, ['tipo'] = "work", ['mala'] = 1000, ['slots'] = 10,
		['hash'] = -2122757008, ['banned'] = false },
	["microlight"] = { ['name'] = "microlight", ['price'] = 10000000, ['tipo'] = "work", ['mala'] = 1000, ['slots'] = 10,
		['hash'] = -1763555241, ['banned'] = false },
	["luxor2"] = { ['name'] = "Luxor 2", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1214293858, ['banned'] = false },
	["shamal"] = { ['name'] = "Shamal", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1214505995, ['banned'] = false },
	["luxor"] = { ['name'] = "Luxor", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 621481054, ['banned'] = false },
	["havok"] = { ['name'] = "Havok", ['price'] = 12000000, ['tipo'] = "work", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1984275979, ['banned'] = false },
	["swift2"] = { ['name'] = "Swift 2", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1075432268, ['banned'] = false },
	["swift"] = { ['name'] = "Swift", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -339587598, ['banned'] = false },
	["dodo"] = { ['name'] = "Dodo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -901163259, ['banned'] = false },
	["nimbus"] = { ['name'] = "Nimbus", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1295027632, ['banned'] = false },
	["seabreeze"] = { ['name'] = "Seabreeze", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -392675425, ['banned'] = false },
	["rogue"] = { ['name'] = "Rogue", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -975345305, ['banned'] = false },
	["dinghy3"] = { ['name'] = "Dighny 3", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 509498602, ['banned'] = false },
	["seashark"] = { ['name'] = "Jetski", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1030275036, ['banned'] = false },

	------- EXCLUSIVO
	["2f2fgts"] = { ['name'] = "Fast Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 92242942, ['banned'] = false },
	["bcps"] = { ['name'] = "Bugatti Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1601332792, ['banned'] = false },
	["bmeclipse95"] = { ['name'] = "Eclipse Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 2117036029, ['banned'] = false },
	["fnfmk4"] = { ['name'] = "Fast Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1324588753, ['banned'] = false },
	["fnfrx7dom"] = { ['name'] = "fnfrx7dom Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 703912902, ['banned'] = false },
	["mk8"] = { ['name'] = "mk8 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 987421730, ['banned'] = false },
	["tr22"] = { ['name'] = "Tesla Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1197361861, ['banned'] = false },
	["chargerf8"] = { ['name'] = "Dodge Charger Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10,
		['slots'] = 10, ['hash'] = -698663530, ['banned'] = false },
	["911turbos"] = { ['name'] = "Porsche 911 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 2046572318, ['banned'] = false },
	["rx7veilside"] = { ['name'] = "Mazda RX7 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1752384486, ['banned'] = false },

	["excf250"] = { ['name'] = "CRF 250 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1293242969, ['banned'] = false },
	["evo9"] = { ['name'] = "Lancer Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -228528329, ['banned'] = false },
	["r1"] = { ['name'] = "R1 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1474015055, ['banned'] = false },

	["2f2fgtr34"] = { ['name'] = "Fast Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -530596092, ['banned'] = false },
	["rx7fdbn"] = { ['name'] = "rx7fdbn Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -329262787, ['banned'] = false },
	["skyline"] = { ['name'] = "skyline Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 2117711508, ['banned'] = false },
	["rt70"] = { ['name'] = "Dodge Charger Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1025737310, ['banned'] = false },
	["macacovisk"] = { ['name'] = "Velociraptor Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10,
		['slots'] = 10, ['hash'] = 624514487, ['banned'] = false },
	["exclusivo"] = { ['name'] = "Maserati Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -861971455, ['banned'] = false },
	["exclusivo1"] = { ['name'] = "Hilux Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -114747311, ['banned'] = false },
	["rampage10"] = { ['name'] = "Dodge Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 829927215, ['banned'] = false },
	["stancedr32"] = { ['name'] = "Skyline Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 2057654793, ['banned'] = false },
	["turs21"] = { ['name'] = "Porsche Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -553255445, ['banned'] = false },
	["brz"] = { ['name'] = "Rocket Bunny Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1458362510, ['banned'] = false },
	["gtam21"] = { ['name'] = "Alfa Romeo Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 916419324, ['banned'] = false },
	["granlb"] = { ['name'] = "Maserati Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1907071539, ['banned'] = false },
	["kia"] = { ['name'] = "Kia Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1987733033, ['banned'] = false },
	["ym1"] = { ['name'] = "YZR M1 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 87143912, ['banned'] = false },
	["fc16"] = { ['name'] = "Civic 2016", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 200970902, ['banned'] = false },
	["992t"] = { ['name'] = "Porsche 992t EXCLUSIVO", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -2121899031, ['banned'] = false },
	["a80"] = { ['name'] = "a80 exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 905399718, ['banned'] = false },
	["diavel"] = { ['name'] = "Diavel", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1942465847, ['banned'] = false },
	["fpace"] = { ['name'] = "FPace", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -526109060, ['banned'] = false },
	["gle63s"] = { ['name'] = "Mercedes GLE 63S", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -736224571, ['banned'] = false },
	["hellcatlb"] = { ['name'] = "Mercedes GLE 63S", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1624886479, ['banned'] = false },
	["rsq8m"] = { ['name'] = "Audi RSQ8", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -361307062, ['banned'] = false },
	["bmwg07"] = { ['name'] = "BMW Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 497572160, ['banned'] = false },
	["mache"] = { ['name'] = "mache", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 497572160, ['banned'] = false },
	["bs17"] = { ['name'] = "bs17", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1352072853, ['banned'] = false },
	["duke690"] = { ['name'] = "duke690", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1295766656, ['banned'] = false },
	["pcx"] = { ['name'] = "pcx", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10, ['hash'] = -217120366,
		['banned'] = false },
	["z419"] = { ['name'] = "z419", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10, ['hash'] = 392244532,
		['banned'] = false },
	["grsupra"] = { ['name'] = "Supra Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1450160047, ['banned'] = false },
	["fiat500"] = { ['name'] = "Fiat 500 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -952357832, ['banned'] = false },
	["h2carb"] = { ['name'] = "H2R Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1371768796, ['banned'] = false },
	["m4comp"] = { ['name'] = "M4 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 191208755, ['banned'] = false },

	["20xmax"] = { ['name'] = "20xmax Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -353436188, ['banned'] = false },
	["jza80"] = { ['name'] = "jza80 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -624987558, ['banned'] = false },
	["can"] = { ['name'] = "can Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1337524170, ['banned'] = false },
	["21sierra"] = { ['name'] = "21sierra Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 638600285, ['banned'] = false },
	["senna"] = { ['name'] = "senna Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -433961724, ['banned'] = false },
	--- VEICULOS DO GTA PADRAO
	["weevil"] = { ['name'] = "Fusca", ['price'] = 100000, ['tipo'] = "carros", ['mala'] = 300, ['slots'] = 10,
		['hash'] = 1644055914, ['banned'] = false },
	["bmx"] = { ['name'] = "Bmw", ['price'] = 1000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 1131912276, ['banned'] = false },
	["cruiser"] = { ['name'] = "Cruiser", ['price'] = 1500, ['tipo'] = "carros", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 448402357, ['banned'] = false },
	["fixter"] = { ['name'] = "Fixter", ['price'] = 2000, ['tipo'] = "carros", ['mala'] = 20, ['slots'] = 10,
		['hash'] = -836512833, ['banned'] = false },
	["scorcher"] = { ['name'] = "Scorcher", ['price'] = 2500, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -186537451, ['banned'] = false },
	["tribike"] = { ['name'] = "Tribike", ['price'] = 5000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 1127861609, ['banned'] = false },
	["tribike2"] = { ['name'] = "Tribike 2", ['price'] = 7500, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = -1233807380, ['banned'] = false },
	["tribike3"] = { ['name'] = "Tribike 3", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 100, ['slots'] = 10,
		['hash'] = -400295096, ['banned'] = false },
	["outlaw"] = { ['name'] = "Buggy Can Am", ['price'] = 1200000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = 408825843, ['banned'] = false },
	["verus"] = { ['name'] = "Quadriciclo 2", ['price'] = 110000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = 298565713, ['banned'] = false },
	["stafford"] = { ['name'] = "Stafford", ['price'] = 30000000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = -578553462, ['banned'] = false },
	["patriot2"] = { ['name'] = "Hummer Limousine", ['price'] = 10000000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -420911112, ['banned'] = false },
	["coquette4"] = { ['name'] = "Corvette 2022", ['price'] = 8500000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = -1728685474, ['banned'] = false },
	["jugular"] = { ['name'] = "Jaguar", ['price'] = 2000000, ['tipo'] = "carros", ['mala'] = 100, ['slots'] = 10,
		['hash'] = -208911803, ['banned'] = false },
	["neon"] = { ['name'] = "Porsche Taycan", ['price'] = 7500000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1848994066, ['banned'] = false },
	["monza"] = { ['name'] = "Monza", ['price'] = 35000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -1848994066, ['banned'] = false },
	["sugoi"] = { ['name'] = "Civic Type R", ['price'] = 4500000, ['tipo'] = "carros", ['mala'] = 80, ['slots'] = 10,
		['hash'] = 987469656, ['banned'] = false },
	["vstr"] = { ['name'] = "Cadilac", ['price'] = 450000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 1456336509, ['banned'] = false },
	["gauntlet4"] = { ['name'] = "Dodge Challenger", ['price'] = 800000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 1934384720, ['banned'] = false },
	["asbo"] = { ['name'] = "Corsa", ['price'] = 22000, ['tipo'] = "carros", ['mala'] = 30, ['slots'] = 10,
		['hash'] = 1118611807, ['banned'] = false },
	["mule4"] = { ['name'] = "Caminhao Bau", ['price'] = 1500000, ['tipo'] = "carros", ['mala'] = 1000, ['slots'] = 1000,
		['hash'] = 1945374990, ['banned'] = false },
	------- EXCLUSIVO 2.0

	["rs62"] = { ['name'] = "RS6 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1583080498, ['banned'] = false },
	["m8f91"] = { ['name'] = "M8 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1583080498, ['banned'] = false },

	["675"] = { ['name'] = "675 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1583080498, ['banned'] = false },
	["audiq3"] = { ['name'] = "audiq3 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1442411655, ['banned'] = false },
	["cbr600"] = { ['name'] = "cbr600 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 286775762, ['banned'] = false },

	["clkgtr"] = { ['name'] = "clkgtr Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1618909092, ['banned'] = false },
	["f850gs"] = { ['name'] = "f850gs Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1857264616, ['banned'] = false },
	["fortuner"] = { ['name'] = "fortuner Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1150411492, ['banned'] = false },
	["golf8gti"] = { ['name'] = "golf8gti Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1933250471, ['banned'] = false },
	["gt86panv2"] = { ['name'] = "gt86panv2 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -768155952, ['banned'] = false },
	["gtcl"] = { ['name'] = "gtcl Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1031306507, ['banned'] = false },
	["hilux2019"] = { ['name'] = "hilux2019 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1270846222, ['banned'] = false },
	["ksd"] = { ['name'] = "Hilux Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1965249326, ['banned'] = false },
	["mansm8"] = { ['name'] = "mansm8 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 340487520, ['banned'] = false },
	["mv2019"] = { ['name'] = "mv2019 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1239016987, ['banned'] = false },
	["nissantitan17"] = { ['name'] = "nissantitan17 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10,
		['slots'] = 10, ['hash'] = 1221510024, ['banned'] = false },
	["r33"] = { ['name'] = "r33 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1579285622, ['banned'] = false },
	["rs6avant20"] = { ['name'] = "rs6avant20 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1311755301, ['banned'] = false },
	["rs7c8"] = { ['name'] = "rs7c8 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -843911039, ['banned'] = false },
	["serv_electricscooter"] = { ['name'] = "serv_electricscooter Exclusivo", ['price'] = 1000, ['tipo'] = "work",
		['mala'] = 10, ['slots'] = 10, ['hash'] = 114079392, ['banned'] = false },
	["skylinekaira"] = { ['name'] = "skylinekaira Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10,
		['slots'] = 10, ['hash'] = -1922799480, ['banned'] = false },
	["srt8"] = { ['name'] = "srt8 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1003581048, ['banned'] = false },
	["subarusti7"] = { ['name'] = "subarusti7 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 2418039, ['banned'] = false },
	["trx"] = { ['name'] = "trx Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 909518807, ['banned'] = false },
	["z4alchemist"] = { ['name'] = "z4alchemist Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10,
		['slots'] = 10, ['hash'] = -1670780519, ['banned'] = false },
	["bikelete"] = { ['name'] = "bikelete Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1252186237, ['banned'] = false },
	["divo"] = { ['name'] = "divo Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1503141430, ['banned'] = false },
	["mk3"] = { ['name'] = "mk3 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -497997000, ['banned'] = false },
	["hornet2k14"] = { ['name'] = "hornet2k14 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -725388817, ['banned'] = false },
	["bc"] = { ['name'] = "bc Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -402398867, ['banned'] = false },
	["q60"] = { ['name'] = "q60 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 481213993, ['banned'] = false },
	["fpacehm"] = { ['name'] = "fpacehm Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1919297986, ['banned'] = false },
	["fd"] = { ['name'] = "fd Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1589129298, ['banned'] = false },
	["evo9mr"] = { ['name'] = "evo9mr Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1775908443, ['banned'] = false },
	["taycan"] = { ['name'] = "taycan Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1295777722, ['banned'] = false },
	["a90sh"] = { ['name'] = "a90sh Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 558347990, ['banned'] = false },


	["nh2r "] = { ['name'] = "nh2r  Exclusivo", ['price'] = 2900000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -1667727259, ['banned'] = false },
	["q820"] = { ['name'] = "q820 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = -2006731729, ['banned'] = false },
	["rs6abt20"] = { ['name'] = "rs6abt20 Exclusivo", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 294222463, ['banned'] = false },

	-- VIATURAS
	["corollapmba"] = { ['name'] = "Corolla PMBA", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 157859067, ['banned'] = false },
	["corollapd"] = { ['name'] = "Corolla PD", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 157859067, ['banned'] = false },
	["xt660garra"] = { ['name'] = "XT 660 GARRA", ['price'] = 260000, ['tipo'] = "carros", ['mala'] = 50, ['slots'] = 10,
		['hash'] = -167416484, ['banned'] = false },
	["transalpgarra"] = { ['name'] = "Transalp 700 GARRA", ['price'] = 260000, ['tipo'] = "carros", ['mala'] = 50,
		['slots'] = 10, ['hash'] = -262985052, ['banned'] = false },
	["policiaamarok"] = { ['name'] = "Amarok PMBA", ['price'] = 1000, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 1676764891, ['banned'] = false },
	["s10pmba"] = { ['name'] = "S10 PETO", ['price'] = 0, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10,
		['hash'] = 1170300547, ['banned'] = false },
	["rangerrondesp"] = { ['name'] = "Ranger RONDESP", ['price'] = 0, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10,
		['hash'] = 2080229555, ['banned'] = false },
	["as350rondesp"] = { ['name'] = "Helicoptero RONDESP", ['price'] = 0, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10,
		['hash'] = 1808996261, ['banned'] = false },
	["rangercivil"] = { ['name'] = "Ranger Civil", ['price'] = 0, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10,
		['hash'] = 175203531, ['banned'] = false },

	["rangerbope"] = { ['name'] = "Ranger BOPE", ['price'] = 0, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10,
		['hash'] = 1808996261, ['banned'] = false },
	["f150bope"] = { ['name'] = "F150 BOPE", ['price'] = 0, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10,
		['hash'] = 1808996261, ['banned'] = false },
	["hiluxsamu"] = { ['name'] = "Hilux SAMU", ['price'] = 0, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10,
		['hash'] = 589296660, ['banned'] = false },
	["xt660samu"] = { ['name'] = "XT660 SAMU", ['price'] = 0, ['tipo'] = "work", ['mala'] = 10, ['slots'] = 10,
		['hash'] = 326368980, ['banned'] = false },
	---------------------------------------baby
	["r1250baby"] = { ['name'] = "r1250 baby", ['price'] = 0, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10,
		['hash'] = 1829259168, ['banned'] = false },
	-----------------------------EMPREGOS
	["brioso2"] = { ['name'] = "Uno Coelba", ['price'] = 0, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10,
		['hash'] = -1045541610, ['banned'] = false },
	["phantom3"] = { ['name'] = "Volkwagen", ['price'] = 1500000, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10,
		['hash'] = 177270108, ['banned'] = false },
	["hauler2"] = { ['name'] = "Scania", ['price'] = 1500000, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10,
		['hash'] = 387748548, ['banned'] = false },
	["hauler"] = { ['name'] = "Volvo", ['price'] = 0, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10, ['hash'] = 1518533038,
		['banned'] = false },
	["mi4"] = { ['name'] = "Onibus", ['price'] = 0, ['tipo'] = "work", ['mala'] = 0, ['slots'] = 10, ['hash'] = 1136652372,
		['banned'] = false },



	---------------------[vtr]---------------
	["basePM"] = { ['name'] = "basePM", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["sw4grau1"] = { ['name'] = "sw4grau1", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["sprinter"] = { ['name'] = "sprinter", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["spinaegis"] = { ['name'] = " spinaegis", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["spineng"] = { ['name'] = " spineng", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["spinlegion"] = { ['name'] = " spinlegion", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["tral21pm"] = { ['name'] = " tral21pm", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["tral17pm"] = { ['name'] = " tral17pm", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["xre19rpm"] = { ['name'] = " xre19rpm", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["outlandersap"] = { ['name'] = " outlandersap", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["corollarod"] = { ['name'] = " corollarod", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["xt2017pm"] = { ['name'] = " xt2017pm", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["trail21pm"] = { ['name'] = " trail21pm", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["trail17pm"] = { ['name'] = " trail17pm", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["s10sap"] = { ['name'] = " s10sap", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["trail19iope1"] = { ['name'] = " trail19iope1", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["duster21gcm1"] = { ['name'] = " duster21gcm1", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["basepm"] = { ['name'] = " basepm", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["xregcm"] = { ['name'] = " xregcm", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["trail21pc"] = { ['name'] = "trail21pc", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["sw4pm"] = { ['name'] = " sw4pm", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["tral20pm"] = { ['name'] = " tral20pm", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },
	["traildope3"] = { ['name'] = " traildope3", ['price'] = 10000, ['tipo'] = "carros", ['mala'] = 20 },




	------------------------------------ carros br---------------------------------------------------

	["corsa"] = { ['name'] = "Corsa98", ['price'] = 20000, ['tipo'] = "carros", ['mala'] = 20 },
	["cronos"] = { ['name'] = "Cronos", ['price'] = 170000, ['tipo'] = "carros", ['mala'] = 40 },
	["jetta"] = { ['name'] = "Jetta", ['price'] = 175000, ['tipo'] = "carros", ['mala'] = 40 },
	["passat"] = { ['name'] = "Passat", ['price'] = 180000, ['tipo'] = "carros", ['mala'] = 40 },
	["tritonhpe"] = { ['name'] = "Triton", ['price'] = 400000, ['tipo'] = "carros", ['mala'] = 70 },
	--	["phantom"] = { ['name'] = "Caminhão-Phantom", ['price'] = 22000, ['tipo'] = "carros", ['mala'] = 20 },
	--["corvette"] = { ['name'] = "Corvette", ['price'] = 22000, ['tipo'] = "carros", ['mala'] = 20 },
	["fiesta"] = { ['name'] = "Fiesta", ['price'] = 45000, ['tipo'] = "carros", ['mala'] = 25 },
	["civic2010"] = { ['name'] = "Honda Civic", ['price'] = 180000, ['tipo'] = "carros", ['mala'] = 50 },

	------------------------------------------------------------------------------------------------------------------
	["blista"] = { ['name'] = "Blista", ['price'] = 22000, ['tipo'] = "carros", ['mala'] = 20 },
	["brioso"] = { ['name'] = "Brioso", ['price'] = 35000, ['tipo'] = "carros", ['mala'] = 30 },
	["emperor"] = { ['name'] = "Emperor", ['price'] = 7000, ['tipo'] = "carros", ["mala"] = 50 },
	["emperor2"] = { ['name'] = "Emperor 2", ['price'] = 50000, ['tipo'] = "carros", ["mala"] = 50 },
	["dilettante"] = { ['name'] = "Dilettante", ['price'] = 17000, ['tipo'] = "carros", ["mala"] = 50 },
	["issi2"] = { ['name'] = "Issi2", ['price'] = 90000, ['tipo'] = "carros", ["mala"] = 50 },
	["panto"] = { ['name'] = "Panto", ['price'] = 12000, ['tipo'] = "carros", ["mala"] = 50 },
	["prairie"] = { ['name'] = "Prairie", ['price'] = 27000, ['tipo'] = "carros", ["mala"] = 50 },
	["rhapsody"] = { ['name'] = "Rhapsody", ['price'] = 10000, ['tipo'] = "carros", ["mala"] = 50 },
	["cogcabrio"] = { ['name'] = "Cogcabrio", ['price'] = 130000, ['tipo'] = "carros", ["mala"] = 50 },
	["exemplar"] = { ['name'] = "Exemplar", ['price'] = 80000, ['tipo'] = "carros", ["mala"] = 50 },
	["f620"] = { ['name'] = "F620", ['price'] = 55000, ['tipo'] = "carros", ["mala"] = 50 },
	["felon"] = { ['name'] = "Felon", ['price'] = 70000, ['tipo'] = "carros", ["mala"] = 50 },
	["ingot"] = { ['name'] = "Ingot", ['price'] = 160000, ['tipo'] = "carros", ["mala"] = 50 },
	["jackal"] = { ['name'] = "Jackal", ['price'] = 60000, ['tipo'] = "carros", ["mala"] = 50 },
	["oracle"] = { ['name'] = "Oracle", ['price'] = 28000, ['tipo'] = "carros", ["mala"] = 50 },
	["oracle2"] = { ['name'] = "Oracle2", ['price'] = 80000, ['tipo'] = "carros", ["mala"] = 50 },
	["sentinel"] = { ['name'] = "Sentinel", ['price'] = 50000, ['tipo'] = "carros", ["mala"] = 50 },
	["sentinel2"] = { ['name'] = "Sentinel2", ['price'] = 60000, ['tipo'] = "carros", ["mala"] = 50 },
	["windsor"] = { ['name'] = "Windsor", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["windsor2"] = { ['name'] = "Windsor2", ['price'] = 170000, ['tipo'] = "carros", ["mala"] = 50 },
	["zion"] = { ['name'] = "Zion", ['price'] = 50000, ['tipo'] = "carros", ["mala"] = 50 },
	["zion2"] = { ['name'] = "Zion2", ['price'] = 60000, ['tipo'] = "carros", ["mala"] = 50 },
	["blade"] = { ['name'] = "Blade", ['price'] = 110000, ['tipo'] = "carros", ["mala"] = 50 },
	["buccaneer"] = { ['name'] = "Buccaneer", ['price'] = 130000, ['tipo'] = "carros", ["mala"] = 50 },
	["buccaneer2"] = { ['name'] = "Buccaneer2", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["primo"] = { ['name'] = "Primo", ['price'] = 9500, ['tipo'] = "carros", ["mala"] = 50 },
	["chino"] = { ['name'] = "Chino", ['price'] = 130000, ['tipo'] = "carros", ["mala"] = 50 },
	["coquette3"] = { ['name'] = "Coquette3", ['price'] = 195000, ['tipo'] = "carros", ["mala"] = 50 },
	["dukes"] = { ['name'] = "Dukes", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["faction"] = { ['name'] = "Faction", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["faction3"] = { ['name'] = "Faction3", ['price'] = 350000, ['tipo'] = "carros", ["mala"] = 50 },
	["gauntlet"] = { ['name'] = "Gauntlet", ['price'] = 165000, ['tipo'] = "carros", ["mala"] = 50 },
	["gauntlet2"] = { ['name'] = "Gauntlet2", ['price'] = 165000, ['tipo'] = "carros", ["mala"] = 50 },
	["hermes"] = { ['name'] = "Hermes", ['price'] = 280000, ['tipo'] = "carros", ["mala"] = 50 },
	["hotknife"] = { ['name'] = "Hotknife", ['price'] = 180000, ['tipo'] = "carros", ["mala"] = 50 },
	["moonbeam"] = { ['name'] = "Moonbeam", ['price'] = 220000, ['tipo'] = "carros", ["mala"] = 50 },
	["moonbeam2"] = { ['name'] = "Moonbeam2", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["nightshade"] = { ['name'] = "Nightshade", ['price'] = 270000, ['tipo'] = "carros", ["mala"] = 50 },
	["ruiner"] = { ['name'] = "Ruiner", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["sabregt"] = { ['name'] = "Sabregt", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["sabregt2"] = { ['name'] = "Sabregt2", ['price'] = 130000, ['tipo'] = "carros", ["mala"] = 50 },
	["slamvan"] = { ['name'] = "Slamvan", ['price'] = 180000, ['tipo'] = "carros", ["mala"] = 50 },
	["slamvan3"] = { ['name'] = "Slamvan3", ['price'] = 230000, ['tipo'] = "carros", ["mala"] = 50 },
	["stalion"] = { ['name'] = "Stalion", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["stalion2"] = { ['name'] = "Stalion2", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["tampa"] = { ['name'] = "Tampa", ['price'] = 170000, ['tipo'] = "carros", ["mala"] = 50 },
	["vigero"] = { ['name'] = "Vigero", ['price'] = 170000, ['tipo'] = "carros", ["mala"] = 50 },
	["virgo"] = { ['name'] = "Virgo", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["virgo2"] = { ['name'] = "Virgo2", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["virgo3"] = { ['name'] = "Virgo3", ['price'] = 180000, ['tipo'] = "carros", ["mala"] = 50 },
	["voodoo"] = { ['name'] = "Voodoo", ['price'] = 220000, ['tipo'] = "carros", ["mala"] = 50 },
	["voodoo2"] = { ['name'] = "Voodoo2", ['price'] = 220000, ['tipo'] = "carros", ["mala"] = 50 },
	["yosemite"] = { ['name'] = "Yosemite", ['price'] = 350000, ['tipo'] = "carros", ["mala"] = 50 },
	["bfinjection"] = { ['name'] = "Bfinjection", ['price'] = 80000, ['tipo'] = "carros", ["mala"] = 50 },
	["bifta"] = { ['name'] = "Bifta", ['price'] = 190000, ['tipo'] = "carros", ["mala"] = 50 },
	["bodhi2"] = { ['name'] = "Bodhi2", ['price'] = 170000, ['tipo'] = "carros", ["mala"] = 50 },
	["brawler"] = { ['name'] = "Brawler", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["trophytruck"] = { ['name'] = "Trophytruck", ['price'] = 400000, ['tipo'] = "carros", ["mala"] = 50 },
	["trophytruck2"] = { ['name'] = "Trophytruck2", ['price'] = 400000, ['tipo'] = "carros", ["mala"] = 50 },
	["dubsta3"] = { ['name'] = "Dubsta3", ['price'] = 300000, ['tipo'] = "carros", ["mala"] = 50 },
	["mesa3"] = { ['name'] = "Mesa3", ['price'] = 200000, ['tipo'] = "carros", ["mala"] = 50 },
	["rancherxl"] = { ['name'] = "Rancherxl", ['price'] = 220000, ['tipo'] = "carros", ["mala"] = 50 },
	["rebel2"] = { ['name'] = "Rebel2", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["riata"] = { ['name'] = "Riata", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["dloader"] = { ['name'] = "Dloader", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["sandking"] = { ['name'] = "Sandking", ['price'] = 400000, ['tipo'] = "carros", ["mala"] = 50 },
	["sandking2"] = { ['name'] = "Sandking2", ['price'] = 370000, ['tipo'] = "carros", ["mala"] = 50 },
	["baller"] = { ['name'] = "Baller", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["baller2"] = { ['name'] = "Baller2", ['price'] = 160000, ['tipo'] = "carros", ["mala"] = 50 },
	["baller3"] = { ['name'] = "Baller3", ['price'] = 175000, ['tipo'] = "carros", ["mala"] = 50 },
	["baller4"] = { ['name'] = "Baller4", ['price'] = 185000, ['tipo'] = "carros", ["mala"] = 50 },
	["baller5"] = { ['name'] = "Baller5", ['price'] = 270000, ['tipo'] = "carros", ["mala"] = 50 },
	["baller6"] = { ['name'] = "Baller6", ['price'] = 280000, ['tipo'] = "carros", ["mala"] = 50 },
	["bjxl"] = { ['name'] = "Bjxl", ['price'] = 110000, ['tipo'] = "carros", ["mala"] = 50 },
	["cavalcade"] = { ['name'] = "Cavalcade", ['price'] = 110000, ['tipo'] = "carros", ["mala"] = 50 },
	["cavalcade2"] = { ['name'] = "Cavalcade2", ['price'] = 130000, ['tipo'] = "carros", ["mala"] = 50 },
	["contender"] = { ['name'] = "Contender", ['price'] = 300000, ['tipo'] = "carros", ["mala"] = 50 },
	["dubsta"] = { ['name'] = "Dubsta", ['price'] = 210000, ['tipo'] = "carros", ["mala"] = 50 },
	["dubsta2"] = { ['name'] = "Dubsta2", ['price'] = 240000, ['tipo'] = "carros", ["mala"] = 50 },
	["fq2"] = { ['name'] = "Fq2", ['price'] = 110000, ['tipo'] = "carros", ["mala"] = 50 },
	["granger"] = { ['name'] = "Granger", ['price'] = 345000, ['tipo'] = "carros", ["mala"] = 50 },
	["gresley"] = { ['name'] = "Gresley", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["habanero"] = { ['name'] = "Habanero", ['price'] = 110000, ['tipo'] = "carros", ["mala"] = 50 },
	["seminole"] = { ['name'] = "Seminole", ['price'] = 49000, ['tipo'] = "carros", ["mala"] = 50 },
	["serrano"] = { ['name'] = "Serrano", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["xls"] = { ['name'] = "Xls", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["xls2"] = { ['name'] = "Xls2", ['price'] = 350000, ['tipo'] = "carros", ["mala"] = 50 },
	["asea"] = { ['name'] = "Asea", ['price'] = 32000, ['tipo'] = "carros", ["mala"] = 50 },
	["asterope"] = { ['name'] = "Asterope", ['price'] = 49000, ['tipo'] = "carros", ["mala"] = 50 },
	["cog552"] = { ['name'] = "Cog552", ['price'] = 400000, ['tipo'] = "carros", ["mala"] = 50 },
	["cognoscenti"] = { ['name'] = "Cognoscenti", ['price'] = 280000, ['tipo'] = "carros", ["mala"] = 50 },
	["cognoscenti2"] = { ['name'] = "Cognoscenti2", ['price'] = 400000, ['tipo'] = "carros", ["mala"] = 50 },
	["stanier"] = { ['name'] = "Stanier", ['price'] = 18000, ['tipo'] = "carros", ["mala"] = 50 },
	["stratum"] = { ['name'] = "Stratum", ['price'] = 90000, ['tipo'] = "carros", ["mala"] = 50 },
	["surge"] = { ['name'] = "Surge", ['price'] = 110000, ['tipo'] = "carros", ["mala"] = 50 },
	["tailgater"] = { ['name'] = "Tailgater", ['price'] = 110000, ['tipo'] = "carros", ["mala"] = 50 },
	["warrener"] = { ['name'] = "Warrener", ['price'] = 90000, ['tipo'] = "carros", ["mala"] = 50 },
	["washington"] = { ['name'] = "Washington", ['price'] = 130000, ['tipo'] = "carros", ["mala"] = 50 },
	["alpha"] = { ['name'] = "Alpha", ['price'] = 230000, ['tipo'] = "carros", ["mala"] = 50 },
	["banshee"] = { ['name'] = "Banshee", ['price'] = 300000, ['tipo'] = "carros", ["mala"] = 50 },
	["bestiagts"] = { ['name'] = "Bestiagts", ['price'] = 290000, ['tipo'] = "carros", ["mala"] = 50 },
	["blista2"] = { ['name'] = "Blista2", ['price'] = 55000, ['tipo'] = "carros", ["mala"] = 50 },
	["blista3"] = { ['name'] = "Blista3", ['price'] = 80000, ['tipo'] = "carros", ["mala"] = 50 },
	["buffalo"] = { ['name'] = "Buffalo", ['price'] = 300000, ['tipo'] = "carros", ["mala"] = 50 },
	["buffalo2"] = { ['name'] = "Buffalo2", ['price'] = 300000, ['tipo'] = "carros", ["mala"] = 50 },
	["buffalo3"] = { ['name'] = "Buffalo3", ['price'] = 300000, ['tipo'] = "carros", ["mala"] = 50 },
	["carbonizzare"] = { ['name'] = "Carbonizzare", ['price'] = 290000, ['tipo'] = "carros", ["mala"] = 50 },
	["comet2"] = { ['name'] = "Comet2", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["comet3"] = { ['name'] = "Comet3", ['price'] = 290000, ['tipo'] = "carros", ["mala"] = 50 },
	["comet5"] = { ['name'] = "Comet5", ['price'] = 300000, ['tipo'] = "carros", ["mala"] = 50 },
	["coquette"] = { ['name'] = "Coquette", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["elegy"] = { ['name'] = "Elegy", ['price'] = 350000, ['tipo'] = "carros", ["mala"] = 50 },
	["elegy2"] = { ['name'] = "Elegy2", ['price'] = 355000, ['tipo'] = "carros", ["mala"] = 50 },
	["feltzer2"] = { ['name'] = "Feltzer2", ['price'] = 255000, ['tipo'] = "carros", ["mala"] = 50 },
	["furoregt"] = { ['name'] = "Furoregt", ['price'] = 290000, ['tipo'] = "carros", ["mala"] = 50 },
	["fusilade"] = { ['name'] = "Fusilade", ['price'] = 210000, ['tipo'] = "carros", ["mala"] = 50 },
	["futo"] = { ['name'] = "Futo", ['price'] = 170000, ['tipo'] = "carros", ["mala"] = 50 },
	["jester"] = { ['name'] = "Jester", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["khamelion"] = { ['name'] = "Khamelion", ['price'] = 210000, ['tipo'] = "carros", ["mala"] = 50 },
	["kuruma"] = { ['name'] = "Kuruma", ['price'] = 330000, ['tipo'] = "carros", ["mala"] = 50 },
	["massacro"] = { ['name'] = "Massacro", ['price'] = 330000, ['tipo'] = "carros", ["mala"] = 50 },
	["massacro2"] = { ['name'] = "Massacro2", ['price'] = 1330000, ['tipo'] = "carros", ["mala"] = 50 },
	["ninef"] = { ['name'] = "Ninef", ['price'] = 290000, ['tipo'] = "carros", ["mala"] = 50 },
	["ninef2"] = { ['name'] = "Ninef2", ['price'] = 290000, ['tipo'] = "carros", ["mala"] = 50 },
	["omnis"] = { ['name'] = "Omnis", ['price'] = 240000, ['tipo'] = "carros", ["mala"] = 50 },
	["pariah"] = { ['name'] = "Pariah", ['price'] = 1500000, ['tipo'] = "carros", ["mala"] = 50 },
	["penumbra"] = { ['name'] = "Penumbra", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["raiden"] = { ['name'] = "Raiden", ['price'] = 1240000, ['tipo'] = "carros", ["mala"] = 50 },
	["rapidgt"] = { ['name'] = "Rapidgt", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["rapidgt2"] = { ['name'] = "Rapidgt2", ['price'] = 300000, ['tipo'] = "carros", ["mala"] = 50 },
	["ruston"] = { ['name'] = "Ruston", ['price'] = 2370000, ['tipo'] = "carros", ["mala"] = 50 },
	["schafter3"] = { ['name'] = "Schafter3", ['price'] = 275000, ['tipo'] = "carros", ["mala"] = 50 },
	["schafter4"] = { ['name'] = "Schafter4", ['price'] = 275000, ['tipo'] = "carros", ["mala"] = 50 },
	["schafter5"] = { ['name'] = "Schafter5", ['price'] = 275000, ['tipo'] = "carros", ["mala"] = 50 },
	["schwarzer"] = { ['name'] = "Schwarzer", ['price'] = 170000, ['tipo'] = "carros", ["mala"] = 50 },
	["sentinel3"] = { ['name'] = "Sentinel3", ['price'] = 170000, ['tipo'] = "carros", ["mala"] = 50 },
	["seven70"] = { ['name'] = "Seven70", ['price'] = 370000, ['tipo'] = "carros", ["mala"] = 50 },
	["specter"] = { ['name'] = "Specter", ['price'] = 320000, ['tipo'] = "carros", ["mala"] = 50 },
	["specter2"] = { ['name'] = "Specter2", ['price'] = 355000, ['tipo'] = "carros", ["mala"] = 50 },
	["streiter"] = { ['name'] = "Streiter", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["sultan"] = { ['name'] = "Sultan", ['price'] = 210000, ['tipo'] = "carros", ["mala"] = 50 },
	["surano"] = { ['name'] = "Surano", ['price'] = 310000, ['tipo'] = "carros", ["mala"] = 50 },
	["tampa2"] = { ['name'] = "Tampa2", ['price'] = 200000, ['tipo'] = "carros", ["mala"] = 50 },
	["tropos"] = { ['name'] = "Tropos", ['price'] = 170000, ['tipo'] = "carros", ["mala"] = 50 },
	["verlierer2"] = { ['name'] = "Verlierer2", ['price'] = 380000, ['tipo'] = "carros", ["mala"] = 50 },
	["btype2"] = { ['name'] = "Btype2", ['price'] = 460000, ['tipo'] = "carros", ["mala"] = 50 },
	["btype3"] = { ['name'] = "Btype3", ['price'] = 390000, ['tipo'] = "carros", ["mala"] = 50 },
	["casco"] = { ['name'] = "Casco", ['price'] = 355000, ['tipo'] = "carros", ["mala"] = 50 },
	["cheetah"] = { ['name'] = "Cheetah", ['price'] = 425000, ['tipo'] = "carros", ["mala"] = 50 },
	["coquette2"] = { ['name'] = "Coquette2", ['price'] = 285000, ['tipo'] = "carros", ["mala"] = 50 },
	["feltzer3"] = { ['name'] = "Feltzer3", ['price'] = 220000, ['tipo'] = "carros", ["mala"] = 50 },
	["gt500"] = { ['name'] = "Gt500", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["infernus2"] = { ['name'] = "Infernus2", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["jb700"] = { ['name'] = "Jb700", ['price'] = 1220000, ['tipo'] = "carros", ["mala"] = 50 },
	["mamba"] = { ['name'] = "Mamba", ['price'] = 300000, ['tipo'] = "carros", ["mala"] = 50 },
	["manana"] = { ['name'] = "Manana", ['price'] = 130000, ['tipo'] = "carros", ["mala"] = 50 },
	["monroe"] = { ['name'] = "Monroe", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["peyote"] = { ['name'] = "Peyote", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["pigalle"] = { ['name'] = "Pigalle", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["rapidgt3"] = { ['name'] = "Rapidgt3", ['price'] = 220000, ['tipo'] = "carros", ["mala"] = 50 },
	["retinue"] = { ['name'] = "Retinue", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["stinger"] = { ['name'] = "Stinger", ['price'] = 220000, ['tipo'] = "carros", ["mala"] = 50 },
	["stingergt"] = { ['name'] = "Stingergt", ['price'] = 230000, ['tipo'] = "carros", ["mala"] = 50 },
	["torero"] = { ['name'] = "Torero", ['price'] = 160000, ['tipo'] = "carros", ["mala"] = 50 },
	["tornado"] = { ['name'] = "Tornado", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["tornado2"] = { ['name'] = "Tornado2", ['price'] = 160000, ['tipo'] = "carros", ["mala"] = 50 },
	["tornado6"] = { ['name'] = "Tornado6", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["turismo2"] = { ['name'] = "Turismo2", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["ztype"] = { ['name'] = "Ztype", ['price'] = 400000, ['tipo'] = "carros", ["mala"] = 50 },
	["adder"] = { ['name'] = "Adder", ['price'] = 5000000, ['tipo'] = "carros", ["mala"] = 50 },
	["autarch"] = { ['name'] = "Autarch", ['price'] = 2760000, ['tipo'] = "carros", ["mala"] = 50 },
	["banshee2"] = { ['name'] = "Banshee2", ['price'] = 370000, ['tipo'] = "carros", ["mala"] = 50 },
	["bullet"] = { ['name'] = "Bullet", ['price'] = 400000, ['tipo'] = "carros", ["mala"] = 50 },
	["cheetah2"] = { ['name'] = "Cheetah2", ['price'] = 240000, ['tipo'] = "carros", ["mala"] = 50 },
	["entityxf"] = { ['name'] = "Entityxf", ['price'] = 460000, ['tipo'] = "carros", ["mala"] = 50 },
	["fmj"] = { ['name'] = "Fmj", ['price'] = 520000, ['tipo'] = "carros", ["mala"] = 50 },
	["gp1"] = { ['name'] = "Gp1", ['price'] = 495000, ['tipo'] = "carros", ["mala"] = 50 },
	["infernus"] = { ['name'] = "Infernus", ['price'] = 470000, ['tipo'] = "carros", ["mala"] = 50 },
	["nero"] = { ['name'] = "Nero", ['price'] = 2000000, ['tipo'] = "carros", ["mala"] = 50 },
	["nero2"] = { ['name'] = "Nero2", ['price'] = 4160000, ['tipo'] = "carros", ["mala"] = 50 },
	["osiris"] = { ['name'] = "Osiris", ['price'] = 4400000, ['tipo'] = "carros", ["mala"] = 50 },
	["penetrator"] = { ['name'] = "Penetrator", ['price'] = 4160000, ['tipo'] = "carros", ["mala"] = 50 },
	["pfister811"] = { ['name'] = "Pfister811", ['price'] = 2530000, ['tipo'] = "carros", ["mala"] = 50 },
	["reaper"] = { ['name'] = "Reaper", ['price'] = 1620000, ['tipo'] = "carros", ["mala"] = 50 },
	["sc1"] = { ['name'] = "Sc1", ['price'] = 2495000, ['tipo'] = "carros", ["mala"] = 50 },
	["sultanrs"] = { ['name'] = "Sultan RS", ['price'] = 450000, ['tipo'] = "carros", ["mala"] = 50 },
	["t20"] = { ['name'] = "T20", ['price'] = 3400000, ['tipo'] = "carros", ["mala"] = 50 },
	["tempesta"] = { ['name'] = "Tempesta", ['price'] = 2600000, ['tipo'] = "carros", ["mala"] = 50 },
	["turismor"] = { ['name'] = "Turismor", ['price'] = 620000, ['tipo'] = "carros", ["mala"] = 50 },
	["tyrus"] = { ['name'] = "Tyrus", ['price'] = 620000, ['tipo'] = "carros", ["mala"] = 50 },
	["vacca"] = { ['name'] = "Vacca", ['price'] = 620000, ['tipo'] = "carros", ["mala"] = 50 },
	["visione"] = { ['name'] = "Visione", ['price'] = 690000, ['tipo'] = "carros", ["mala"] = 50 },
	["voltic"] = { ['name'] = "Voltic", ['price'] = 440000, ['tipo'] = "carros", ["mala"] = 50 },
	["zentorno"] = { ['name'] = "Zentorno", ['price'] = 920000, ['tipo'] = "carros", ["mala"] = 50 },
	["sadler"] = { ['name'] = "Sadler", ['price'] = 180000, ['tipo'] = "carros", ["mala"] = 50 },
	["bison"] = { ['name'] = "Bison", ['price'] = 220000, ['tipo'] = "carros", ["mala"] = 50 },
	["bison2"] = { ['name'] = "Bison2", ['price'] = 180000, ['tipo'] = "carros", ["mala"] = 50 },
	["bobcatxl"] = { ['name'] = "Bobcatxl", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["burrito"] = { ['name'] = "Burrito", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["burrito2"] = { ['name'] = "Burrito2", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["burrito3"] = { ['name'] = "Burrito3", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["burrito4"] = { ['name'] = "Burrito4", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["rallytruck"] = { ['name'] = "Burrito4", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["minivan"] = { ['name'] = "Minivan", ['price'] = 110000, ['tipo'] = "carros", ["mala"] = 50 },
	["minivan2"] = { ['name'] = "Minivan2", ['price'] = 220000, ['tipo'] = "carros", ["mala"] = 50 },
	["paradise"] = { ['name'] = "Paradise", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["pony"] = { ['name'] = "Pony", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["pony2"] = { ['name'] = "Pony2", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["rumpo"] = { ['name'] = "Rumpo", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["rumpo2"] = { ['name'] = "Rumpo2", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["rumpo3"] = { ['name'] = "Rumpo3", ['price'] = 350000, ['tipo'] = "carros", ["mala"] = 50 },
	["surfer"] = { ['name'] = "Surfer", ['price'] = 55000, ['tipo'] = "carros", ["mala"] = 50 },
	["youga"] = { ['name'] = "Youga", ['price'] = 260000, ['tipo'] = "carros", ["mala"] = 50 },
	["huntley"] = { ['name'] = "Huntley", ['price'] = 110000, ['tipo'] = "carros", ["mala"] = 50 },
	["landstalker"] = { ['name'] = "Landstalker", ['price'] = 130000, ['tipo'] = "carros", ["mala"] = 50 },
	["mesa"] = { ['name'] = "Mesa", ['price'] = 90000, ['tipo'] = "carros", ["mala"] = 50 },
	["patriot"] = { ['name'] = "Patriot", ['price'] = 2500000, ['tipo'] = "carros", ["mala"] = 50 },
	["radi"] = { ['name'] = "Radi", ['price'] = 110000, ['tipo'] = "carros", ["mala"] = 50 },
	["rocoto"] = { ['name'] = "Rocoto", ['price'] = 110000, ['tipo'] = "carros", ["mala"] = 50 },
	["tyrant"] = { ['name'] = "Tyrant", ['price'] = 690000, ['tipo'] = "carros", ["mala"] = 50 },
	["entity2"] = { ['name'] = "Entity2", ['price'] = 550000, ['tipo'] = "carros", ["mala"] = 50 },
	["cheburek"] = { ['name'] = "Cheburek", ['price'] = 170000, ['tipo'] = "carros", ["mala"] = 50 },
	["hotring"] = { ['name'] = "Hotring", ['price'] = 300000, ['tipo'] = "carros", ["mala"] = 50 },
	["jester3"] = { ['name'] = "Jester3", ['price'] = 345000, ['tipo'] = "carros", ["mala"] = 50 },
	["flashgt"] = { ['name'] = "Flashgt", ['price'] = 370000, ['tipo'] = "carros", ["mala"] = 50 },
	["ellie"] = { ['name'] = "Ellie", ['price'] = 320000, ['tipo'] = "carros", ["mala"] = 50 },
	["michelli"] = { ['name'] = "Michelli", ['price'] = 160000, ['tipo'] = "carros", ["mala"] = 50 },
	["fagaloa"] = { ['name'] = "Fagaloa", ['price'] = 320000, ['tipo'] = "carros", ["mala"] = 50 },
	["dominator"] = { ['name'] = "Dominator", ['price'] = 230000, ['tipo'] = "carros", ["mala"] = 50 },
	["dominator2"] = { ['name'] = "Dominator2", ['price'] = 230000, ['tipo'] = "carros", ["mala"] = 50 },
	["dominator3"] = { ['name'] = "Dominator3", ['price'] = 370000, ['tipo'] = "carros", ["mala"] = 50 },
	["issi3"] = { ['name'] = "Issi3", ['price'] = 190000, ['tipo'] = "carros", ["mala"] = 50 },
	["taipan"] = { ['name'] = "Taipan", ['price'] = 620000, ['tipo'] = "carros", ["mala"] = 50 },
	["gb200"] = { ['name'] = "Gb200", ['price'] = 195000, ['tipo'] = "carros", ["mala"] = 50 },
	["stretch"] = { ['name'] = "Stretch", ['price'] = 520000, ['tipo'] = "carros", ["mala"] = 50 },
	["guardian"] = { ['name'] = "Guardian", ['price'] = 540000, ['tipo'] = "carros", ["mala"] = 50 },
	["kamacho"] = { ['name'] = "Kamacho", ['price'] = 2460000, ['tipo'] = "carros", ["mala"] = 50 },
	["italigtb"] = { ['name'] = "Italigtb", ['price'] = 7600000, ['tipo'] = "carros", ["mala"] = 50 },
	["italigtb2"] = { ['name'] = "Italigtb2", ['price'] = 5610000, ['tipo'] = "carros", ["mala"] = 50 },
	["vagner"] = { ['name'] = "Vagner", ['price'] = 680000, ['tipo'] = "carros", ["mala"] = 50 },
	["xa21"] = { ['name'] = "Xa21", ['price'] = 630000, ['tipo'] = "carros", ['mala'] = 50 },
	["tezeract"] = { ['name'] = "Tezeract", ['price'] = 920000, ['tipo'] = "carros", ["mala"] = 50 },
	["prototipo"] = { ['name'] = "Prototipo", ['price'] = 2500000, ['tipo'] = "carros", ["mala"] = 50 },
	["swinger"] = { ['name'] = "Swinger", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["clique"] = { ['name'] = "Clique", ['price'] = 360000, ['tipo'] = "carros", ["mala"] = 50 },
	["deveste"] = { ['name'] = "Deveste", ['price'] = 920000, ['tipo'] = "carros", ["mala"] = 50 },
	["deviant"] = { ['name'] = "Deviant", ['price'] = 370000, ['tipo'] = "carros", ["mala"] = 50 },
	["impaler"] = { ['name'] = "Impaler", ['price'] = 320000, ['tipo'] = "carros", ["mala"] = 50 },
	["italigto"] = { ['name'] = "Italigto", ['price'] = 300000, ['tipo'] = "carros", ["mala"] = 50 },
	["schlagen"] = { ['name'] = "Schlagen", ['price'] = 690000, ['tipo'] = "carros", ["mala"] = 50 },
	["toros"] = { ['name'] = "Toros", ['price'] = 3000000, ['tipo'] = "carros", ["mala"] = 50 },
	["tulip"] = { ['name'] = "Tulip", ['price'] = 320000, ['tipo'] = "carros", ["mala"] = 50 },
	["vamos"] = { ['name'] = "Vamos", ['price'] = 320000, ['tipo'] = "carros", ["mala"] = 50 },
	["freecrawler"] = { ['name'] = "Freecrawler", ['price'] = 350000, ['tipo'] = "carros", ["mala"] = 50 },
	["fugitive"] = { ['name'] = "Fugitive", ['price'] = 50000, ['tipo'] = "carros", ["mala"] = 50 },
	["glendale"] = { ['name'] = "Glendale", ['price'] = 70000, ['tipo'] = "carros", ["mala"] = 50 },
	["intruder"] = { ['name'] = "Intruder", ['price'] = 11000, ['tipo'] = "carros", ["mala"] = 50 },
	["le7b"] = { ['name'] = "Le7b", ['price'] = 2700000, ['tipo'] = "carros", ["mala"] = 50 },
	["lurcher"] = { ['name'] = "Lurcher", ['price'] = 150000, ['tipo'] = "carros", ["mala"] = 50 },
	["lynx"] = { ['name'] = "Lynx", ['price'] = 1370000, ['tipo'] = "carros", ["mala"] = 50 },
	["phoenix"] = { ['name'] = "Phoenix", ['price'] = 250000, ['tipo'] = "carros", ["mala"] = 50 },
	["premier"] = { ['name'] = "Premier", ['price'] = 37000, ['tipo'] = "carros", ["mala"] = 50 },
	["raptor"] = { ['name'] = "Raptor", ['price'] = 300000, ['tipo'] = "carros", ["mala"] = 50 },
	["sheava"] = { ['name'] = "Sheava", ['price'] = 700000, ['tipo'] = "carros", ["mala"] = 50 },
	["z190"] = { ['name'] = "Z190", ['price'] = 350000, ['tipo'] = "carros", ["mala"] = 50 },

	--MOTOS

	["cbrr"]        = { ['name'] = "CBRR", ['price'] = 900000, ['tipo'] = "motos", ["mala"] = 10 },
	["r6"]          = { ['name'] = "r6", ['price'] = 2600000, ['tipo'] = "motos", ["mala"] = 10 },
	["cg160"]       = { ['name'] = "CG 160", ['price'] = 15000, ['tipo'] = "motos", ["mala"] = 10 },
	["hayabusa	"]   = { ['name'] = "Hayabusa", ['price'] = 700000, ['tipo'] = "motos", ["mala"] = 10 },
	["tmax"]        = { ['name'] = "Tmax", ['price'] = 20000, ['tipo'] = "motos", ["mala"] = 10 },
	["akuma"]       = { ['name'] = "Akuma", ['price'] = 500000, ['tipo'] = "motos", ["mala"] = 10 },
	["avarus"]      = { ['name'] = "Avarus", ['price'] = 440000, ['tipo'] = "motos", ["mala"] = 10 },
	["bagger"]      = { ['name'] = "Bagger", ['price'] = 300000, ['tipo'] = "motos", ["mala"] = 10 },
	["bati"]        = { ['name'] = "Bati", ['price'] = 5000000, ['tipo'] = "motos", ["mala"] = 10 },
	["bati2"]       = { ['name'] = "Bati2", ['price'] = 300000, ['tipo'] = "motos", ["mala"] = 10 },
	["bf400"]       = { ['name'] = "Bf400", ['price'] = 320000, ['tipo'] = "motos", ["mala"] = 10 },
	["carbonrs"]    = { ['name'] = "Carbonrs", ['price'] = 370000, ['tipo'] = "motos", ["mala"] = 10 },
	["chimera"]     = { ['name'] = "Chimera", ['price'] = 345000, ['tipo'] = "motos", ["mala"] = 10 },
	["cliffhanger"] = { ['name'] = "Cliffhanger", ['price'] = 310000, ['tipo'] = "motos", ["mala"] = 10 },
	["daemon2"]     = { ['name'] = "Daemon2", ['price'] = 240000, ['tipo'] = "motos", ["mala"] = 10 },
	["defiler"]     = { ['name'] = "Defiler", ['price'] = 460000, ['tipo'] = "motos", ["mala"] = 10 },
	["diablous"]    = { ['name'] = "Diablous", ['price'] = 430000, ['tipo'] = "motos", ["mala"] = 10 },
	["diablous2"]   = { ['name'] = "Diablous2", ['price'] = 460000, ['tipo'] = "motos", ["mala"] = 10 },
	["double"]      = { ['name'] = "Double", ['price'] = 370000, ['tipo'] = "motos", ["mala"] = 10 },
	["enduro"]      = { ['name'] = "Enduro", ['price'] = 28000, ['tipo'] = "motos", ["mala"] = 10 },
	["esskey"]      = { ['name'] = "Esskey", ['price'] = 320000, ['tipo'] = "motos", ["mala"] = 10 },
	["faggio"]      = { ['name'] = "Faggio", ['price'] = 5000, ['tipo'] = "motos", ["mala"] = 10 },
	["faggio2"]     = { ['name'] = "Faggio2", ['price'] = 5000, ['tipo'] = "motos", ["mala"] = 10 },
	["faggio3"]     = { ['name'] = "Faggio3", ['price'] = 5000, ['tipo'] = "motos", ["mala"] = 10 },
	["fcr"]         = { ['name'] = "Fcr", ['price'] = 390000, ['tipo'] = "motos", ["mala"] = 10 },
	["fcr2"]        = { ['name'] = "Fcr2", ['price'] = 390000, ['tipo'] = "motos", ["mala"] = 10 },
	["gargoyle"]    = { ['name'] = "Gargoyle", ['price'] = 345000, ['tipo'] = "motos", ["mala"] = 10 },
	["hakuchou"]    = { ['name'] = "Hakuchou", ['price'] = 380000, ['tipo'] = "motos", ["mala"] = 10 },
	["hakuchou2"]   = { ['name'] = "Hakuchou2", ['price'] = 550000, ['tipo'] = "motos", ["mala"] = 10 },
	["hexer"]       = { ['name'] = "Hexer", ['price'] = 250000, ['tipo'] = "motos", ["mala"] = 10 },
	["innovation"]  = { ['name'] = "Innovation", ['price'] = 250000, ['tipo'] = "motos", ["mala"] = 10 },
	["lectro"]      = { ['name'] = "Lectro", ['price'] = 380000, ['tipo'] = "motos", ["mala"] = 10 },
	["manchez"]     = { ['name'] = "Manchez", ['price'] = 355000, ['tipo'] = "motos", ["mala"] = 10 },
	["nemesis"]     = { ['name'] = "Nemesis", ['price'] = 345000, ['tipo'] = "motos", ["mala"] = 10 },
	["nightblade"]  = { ['name'] = "Nightblade", ['price'] = 415000, ['tipo'] = "motos", ["mala"] = 10 },
	["pcj"]         = { ['name'] = "Pcj", ['price'] = 332000, ['tipo'] = "motos", ["mala"] = 10 },
	["ruffian"]     = { ['name'] = "Ruffian", ['price'] = 345000, ['tipo'] = "motos", ["mala"] = 10 },
	["sanchez"]     = { ['name'] = "Sanchez", ['price'] = 185000, ['tipo'] = "motos", ["mala"] = 10 },
	["sanchez2"]    = { ['name'] = "Sanchez2", ['price'] = 185000, ['tipo'] = "motos", ["mala"] = 10 },
	["sovereign"]   = { ['name'] = "Sovereign", ['price'] = 285000, ['tipo'] = "motos", ["mala"] = 10 },
	["thrust"]      = { ['name'] = "Thrust", ['price'] = 375000, ['tipo'] = "motos", ["mala"] = 10 },
	["vader"]       = { ['name'] = "Vader", ['price'] = 345000, ['tipo'] = "motos", ["mala"] = 10 },
	["vindicator"]  = { ['name'] = "Vindicator", ['price'] = 340000, ['tipo'] = "motos", ["mala"] = 10 },
	["vortex"]      = { ['name'] = "Vortex", ['price'] = 375000, ['tipo'] = "motos", ["mala"] = 10 },
	["wolfsbane"]   = { ['name'] = "Wolfsbane", ['price'] = 290000, ['tipo'] = "motos", ["mala"] = 10 },
	["zombiea"]     = { ['name'] = "Zombiea", ['price'] = 290000, ['tipo'] = "motos", ["mala"] = 10 },
	["zombieb"]     = { ['name'] = "Zombieb", ['price'] = 300000, ['tipo'] = "motos", ["mala"] = 10 },
	["shotaro"]     = { ['name'] = "Shotaro", ['price'] = 1000000, ['tipo'] = "motos", ["mala"] = 10 },
	["ratbike"]     = { ['name'] = "Ratbike", ['price'] = 230000, ['tipo'] = "motos", ["mala"] = 10 },
	["blazer"]      = { ['name'] = "Blazer", ['price'] = 230000, ['tipo'] = "motos", ["mala"] = 10 },
	["blazer4"]     = { ['name'] = "Blazer4", ['price'] = 370000, ['tipo'] = "motos", ["mala"] = 10 },

	--TRABALHO
	["pbus"] = { ['name'] = "Echo", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["as350"] = { ['name'] = "Delta", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["policiabearcat"] = { ['name'] = "Bravo", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["picador"] = { ['name'] = "Carro do Gaz", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },

	-------POLICIA

	["policiacharger2018"] = { ['name'] = "Dodge Charger 2018", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["policiasilverado"] = { ['name'] = "Chevrolet Silverado", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["policiatahoe"] = { ['name'] = "Chevrolet Tahoe", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["policiataurus"] = { ['name'] = "Ford Taurus", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["xre2019"] = { ['name'] = "XRE ROCAM", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["paliopmrp1"] = { ['name'] = "PALIO RPM", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["trailcfp"] = { ['name'] = "BLAZER COMANDO", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["sw4pm1"] = { ['name'] = "SW4 FORÇA T.", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["trailpm1"] = { ['name'] = "T.B FORÇA T.", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["rota4"] = { ['name'] = "COMAND. ROTA", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["trailrota2"] = { ['name'] = "BLAZER ROTA", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["pajerodesc"] = { ['name'] = "PAJERO DESCARACTER.", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["sw4pc1"] = { ['name'] = "SW4 CIVIL", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["trailgarra1"] = { ['name'] = "SW4 GARRA", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["trailcivileie"] = { ['name'] = "SW4 EIE", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["africaprf"] = { ['name'] = "AFRICAN TWIN PRF", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["corprf"] = { ['name'] = "COROLA PRF", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["l200prf"] = { ['name'] = "L200 PRF", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },




	["coach"] = { ['name'] = "Coach", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["bus"] = { ['name'] = "Ônibus", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["flatbed"] = { ['name'] = "Reboque", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["towtruck2"] = { ['name'] = "Towtruck2", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["ratloader"] = { ['name'] = "Caminhão", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["ratloader2"] = { ['name'] = "Ratloader2", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["rubble"] = { ['name'] = "Caminhão", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["taxi"] = { ['name'] = "Taxi", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["boxville2"] = { ['name'] = "Caminhão", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["boxville4"] = { ['name'] = "Caminhão", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["trash2"] = { ['name'] = "Caminhão", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["tiptruck"] = { ['name'] = "Tiptruck", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["phantom"] = { ['name'] = "Phantom", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["packer"] = { ['name'] = "Packer", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["supervolito"] = { ['name'] = "Supervolito", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["frogger"] = { ['name'] = "Frogger", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["maverick"] = { ['name'] = "Maverick", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["tanker2"] = { ['name'] = "Gas", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["armytanker"] = { ['name'] = "Diesel", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["tvtrailer"] = { ['name'] = "Show", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["trailerlogs"] = { ['name'] = "Woods", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["tr4"] = { ['name'] = "Cars", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["speedo"] = { ['name'] = "Speedo", ['price'] = 200000, ['tipo'] = "work", ["mala"] = 10 },
	["primo2"] = { ['name'] = "Primo2", ['price'] = 200000, ['tipo'] = "work", ["mala"] = 10 },
	["faction2"] = { ['name'] = "Faction2", ['price'] = 200000, ['tipo'] = "work", ["mala"] = 10 },
	["chino2"] = { ['name'] = "Chino2", ['price'] = 200000, ['tipo'] = "work", ["mala"] = 10 },
	["tornado5"] = { ['name'] = "Tornado5", ['price'] = 200000, ['tipo'] = "work", ["mala"] = 10 },
	["daemon"] = { ['name'] = "Daemon", ['price'] = 200000, ['tipo'] = "work", ["mala"] = 10 },
	["sanctus"] = { ['name'] = "Sanctus", ['price'] = 200000, ['tipo'] = "work", ["mala"] = 10 },
	["gburrito"] = { ['name'] = "GBurrito", ['price'] = 200000, ['tipo'] = "work", ["mala"] = 10 },
	["slamvan2"] = { ['name'] = "Slamvan2", ['price'] = 200000, ['tipo'] = "work", ["mala"] = 10 },
	["cog55"] = { ['name'] = "Cog55", ['price'] = 200000, ['tipo'] = "work", ["mala"] = 10 },
	["superd"] = { ['name'] = "Superd", ['price'] = 200000, ['tipo'] = "work", ["mala"] = 10 },
	["btype"] = { ['name'] = "Btype", ['price'] = 200000, ['tipo'] = "work", ["mala"] = 10 },
	["tractor2"] = { ['name'] = "Tractor2", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["rebel"] = { ['name'] = "Rebel", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["flatbed3"] = { ['name'] = "flatbed3", ['price'] = 1000, ['tipo'] = "work", ["mala"] = 10 },
	["volatus"] = { ['name'] = "Volatus", ['price'] = 1000000, ['tipo'] = "work", ["mala"] = 10 },
	["cargobob2"] = { ['name'] = "Cargo Bob", ['price'] = 1000000, ['tipo'] = "work", ["mala"] = 10 },

	--IMPORTADOS

	["dodgechargersrt"] = { ['name'] = "Dodge Charger SRT", ['price'] = 1500000, ['tipo'] = "import", ["mala"] = 50 },


	["fordmustang"] = { ['name'] = "Ford Mustang", ['price'] = 1490000, ['tipo'] = "import", ["mala"] = 50 },
	["lancerevolution9"] = { ['name'] = "Lancer Evolution 9", ['price'] = 1800000, ['tipo'] = "import", ["mala"] = 50 },
	["focusrs"] = { ['name'] = "Focus RS", ['price'] = 1300000, ['tipo'] = "import", ["mala"] = 50 },
	["mercedesa45"] = { ['name'] = "Mercedes A45", ['price'] = 1800000, ['tipo'] = "import", ["mala"] = 50 },
	["mustangmach1"] = { ['name'] = "Mustang Mach 1", ['price'] = 1100000, ['tipo'] = "import", ["mala"] = 50 },
	["porsche930"] = { ['name'] = "Porsche 930", ['price'] = 3300000, ['tipo'] = "import", ["mala"] = 50 },
	["teslaprior"] = { ['name'] = "Tesla Prior", ['price'] = 4450000, ['tipo'] = "import", ["mala"] = 50 },
	--["type263"] = { ['name'] = "Kombi 63", ['price'] = 500000, ['tipo'] = "import", ["mala"] = 50 },
	--["beetle74"] = { ['name'] = "Fusca 74", ['price'] = 500000, ['tipo'] = "import", ["mala"] = 50 },
	--["fe86"] = { ['name'] = "Escorte", ['price'] = 500000, ['tipo'] = "import", ["mala"] = 50 },
	["nissangtrnismo"] = { ['name'] = "Nissan GTR Nismo", ['price'] = 10000000, ['tipo'] = "import", ["mala"] = 50 },
	["nissan370z"] = { ['name'] = "Nissan 370Z", ['price'] = 2800000, ['tipo'] = "import", ["mala"] = 50 },

	--EXCLUSIVE
	["audirs7"] = { ['name'] = "Audi RS7", ['price'] = 1800000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["hondafk8"] = { ['name'] = "Honda FK8", ['price'] = 1700000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["raptor2017"] = { ['name'] = "Ford Raptor 2017", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 100 },
	["nissangtr"] = { ['name'] = "Nissan GTR", ['price'] = 10000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["488gtb"] = { ['name'] = "Ferrari 488 GTB", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["fxxkevo"] = { ['name'] = "Ferrari FXXK Evo", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["m2"] = { ['name'] = "BMW M2", ['price'] = 1000000, ['tipo'] = "import", ["mala"] = 50 },
	["p1"] = { ['name'] = "Mclaren P1", ['price'] = 15000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["bme6tun"] = { ['name'] = "BMW M5", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["aperta"] = { ['name'] = "La Ferrari", ['price'] = 15000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["bettle"] = { ['name'] = "New Bettle", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["rmodx6"] = { ['name'] = "BMW X6", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["bnteam"] = { ['name'] = "Bentley", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["rmodlp770"] = { ['name'] = "Lamborghini Centenario", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["s15"] = { ['name'] = "Nissan Silvia S15", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["amggtr"] = { ['name'] = "Mercedes AMG", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["slsamg"] = { ['name'] = "Mercedes SLS", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["lamtmc"] = { ['name'] = "Lamborghini Terzo", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["vantage"] = { ['name'] = "Aston Martin Vantage", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["palameila"] = { ['name'] = "Porsche Panamera", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["panamera17turbo"] = { ['name'] = "Porsche Panamera 17 Turbo", ['price'] = 5900000, ['tipo'] = "exclusive",
		["mala"] = 50 },

	["rsvr16"] = { ['name'] = "Ranger Rover", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["veneno"] = { ['name'] = "Lamborghini Veneno", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["eleanor"] = { ['name'] = "Mustang Eleanor", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["rmodamgc63"] = { ['name'] = "Mercedes AMG C63", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["19ramdonk"] = { ['name'] = "Dodge Ram Donk", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["silv86"] = { ['name'] = "Silverado Donk", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["ninjah2"] = { ['name'] = "Ninja H2", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["70camarofn"] = { ['name'] = "camaro Z28 1970", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["agerars"] = { ['name'] = "Koenigsegg Agera RS", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["msohs"] = { ['name'] = "Mclaren 688 HS", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["gt17"] = { ['name'] = "Ford GT 17", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["19ftype"] = { ['name'] = "Jaguar F-Type", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["bbentayga"] = { ['name'] = "Bentley Bentayga", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["911r"] = { ['name'] = "Porsche 911R", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["trr"] = { ['name'] = "KTM TRR", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["bmws"] = { ['name'] = "BMW S1000", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["r1250"] = { ['name'] = "BMW R1250GS", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 10 },
	["s1000rr"] = { ['name'] = "BMW s1000rr", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 10 },
	["defiant"] = { ['name'] = "AMC Javelin 72", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["f12tdf"] = { ['name'] = "Ferrari F12 TDF", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["71gtx"] = { ['name'] = "Plymouth 71 GTX", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["porsche992"] = { ['name'] = "Porsche 992", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["18macan"] = { ['name'] = "Porsche Macan", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["m6e63"] = { ['name'] = "BMW M6 E63", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["africat"] = { ['name'] = "Honda CRF 1000", ['price'] = 300000, ['tipo'] = "motos", ["mala"] = 50 },
	["regera"] = { ['name'] = "Koenigsegg Regera", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["180sx"] = { ['name'] = "Nissan 180SX", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["filthynsx"] = { ['name'] = "Honda NSX", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["2018zl1"] = { ['name'] = "Camaro ZL1", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["eclipse"] = { ['name'] = "Mitsubishi Eclipse", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["lp700r"] = { ['name'] = "Lamborghini LP700R", ['price'] = 10000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["db11"] = { ['name'] = "Aston Martin DB11", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["SVR14"] = { ['name'] = "Ranger Rover", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["Bimota"] = { ['name'] = "Ducati Bimota", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["r8ppi"] = { ['name'] = "Audi R8 PPI Razor", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["20r1"] = { ['name'] = "Yamaha YZF R1", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["mt03"] = { ['name'] = "Yamaha MT 03", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["yzfr125"] = { ['name'] = "Yamaha YZF R125", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["pistas"] = { ['name'] = "Ferrari Pista", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["bobbes2"] = { ['name'] = "Harley D. Bobber S", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["bobber"] = { ['name'] = "Harley D. Bobber ", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["911tbs"] = { ['name'] = "Porsche 911S", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["rc"] = { ['name'] = "KTM RC", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["fox600lt"] = { ['name'] = "McLaren 600LT", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["foxbent1"] = { ['name'] = "Bentley Liter 1931", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["foxevo"] = { ['name'] = "Lamborghini EVO", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["jeepg"] = { ['name'] = "Jeep Gladiator", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["foxharley1"] = { ['name'] = "Harley-Davidson Softail F.B.", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["foxharley2"] = { ['name'] = "2016 Harley-Davidson Road Glide", ['price'] = 1000000, ['tipo'] = "exclusive",
		["mala"] = 50 },
	["foxleggera"] = { ['name'] = "Aston Martin Leggera", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["foxrossa"] = { ['name'] = "Ferrari Rossa", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["foxshelby"] = { ['name'] = "Ford Shelby GT500", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["foxsian"] = { ['name'] = "Lamborghini Sian", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["foxsterrato"] = { ['name'] = "Lamborghini Sterrato", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["foxsupra"] = { ['name'] = "Toyota Supra", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["m6x6"] = { ['name'] = "Mercedes Benz 6x6", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["m6gt3"] = { ['name'] = "BMW M6 GT3", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["w900"] = { ['name'] = "Kenworth W900", ['price'] = 1000000, ['tipo'] = "exclusive", ["mala"] = 50 },

	["pounder"] = { ['name'] = "Pounder", ['price'] = 1000000, ['tipo'] = "work", ["mala"] = 10 },
	["youga2"] = { ['name'] = "Youga XL", ['price'] = 1000000, ['tipo'] = "work", ["mala"] = 10 },

	["thrax"] = { ['name'] = "Thrax", ['price'] = 12000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["zorrusso"] = { ['name'] = "Zorrusso", ['price'] = 12000000, ['tipo'] = "exclusive", ["mala"] = 50 },
	["krieger"] = { ['name'] = "Krieger", ['price'] = 12000000, ['tipo'] = "exclusive", ["mala"] = 50 },



	-----------------CARROS NOVOS --------------------------------------------
	["amarokf"] = { ['name'] = "amarokf", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["savag6"] = { ['name'] = "savag6", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["vwfusca"] = { ['name'] = "vwfusca", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["18Velar"] = { ['name'] = "18Velar", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["BENTAYGAST"] = { ['name'] = "BENTAYGAST", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["BMCI"] = { ['name'] = "BMCI", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["bmwg07"] = { ['name'] = "bmwg07", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["golfmk6"] = { ['name'] = "golfmk6", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["golfmk7"] = { ['name'] = "golfmk7", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["MERS63C"] = { ['name'] = "MERS63C", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["pgt34"] = { ['name'] = "pgt34", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["pts21"] = { ['name'] = "pts21", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["rrst"] = { ['name'] = "rrst", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["RS7C8"] = { ['name'] = "RS7C8", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["mercedesamgc63"] = { ['name'] = "Mercedes AMG C63", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["488"] = { ['name'] = "Ferrari F488", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["acs8"] = { ['name'] = "BMW i8", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },
	["sti12"] = { ['name'] = "Subaru STI 2012", ['price'] = 500000, ['tipo'] = "vip", ["mala"] = 70 },



}

--[ VEHICLEGLOBAL ]-------------------------------------------------------------------------------------------------------------------------------------

function vRP.vehicleGlobal()
	return vehglobal
end

--[ VEHICLENAME ]---------------------------------------------------------------------------------------------------------------------------------------

function vRP.vehicleName(vname)
	return vehglobal[vname].name
end

--[ VEHICLECHEST ]--------------------------------------------------------------------------------------------------------------------------------------

function vRP.vehicleChest(vname)
	return vehglobal[vname].mala
end

--[ VEHICLEPRICE ]--------------------------------------------------------------------------------------------------------------------------------------

function vRP.vehiclePrice(vname)
	return vehglobal[vname].price
end

--[ VEHICLETYPE ]---------------------------------------------------------------------------------------------------------------------------------------

function vRP.vehicleType(vname)
	return vehglobal[vname].tipo
end

--[ ACTIVED ]-------------------------------------------------------------------------------------------------------------------------------------------

local actived = {}
local activedAmount = {}
Citizen.CreateThread(function()
	while true do
		for k, v in pairs(actived) do
			if actived[k] > 0 then
				actived[k] = v - 1
				if actived[k] <= 0 then
					actived[k] = nil
					activedAmount[k] = nil
				end
			end
		end
		Citizen.Wait(100)
	end
end)

--[ STORE CHEST ]---------------------------------------------------------------------------------------------------------------------------------------

function vRP.storeChestItem(user_id, chestData, itemName, amount, chestWeight)
	if actived[user_id] == nil then
		actived[user_id] = 1
		local data = vRP.getSData(chestData)
		local items = json.decode(data) or {}
		if data and items ~= nil then

			if parseInt(amount) > 0 then
				activedAmount[user_id] = parseInt(amount)
			else
				return false
			end

			local new_weight = vRP.computeItemsWeight(items) + vRP.getItemWeight(itemName) * parseInt(activedAmount[user_id])
			if new_weight <= parseInt(chestWeight) then
				if vRP.tryGetInventoryItem(parseInt(user_id), itemName, parseInt(activedAmount[user_id])) then
					if items[itemName] ~= nil then
						items[itemName].amount = parseInt(items[itemName].amount) + parseInt(activedAmount[user_id])
					else
						items[itemName] = { amount = parseInt(activedAmount[user_id]) }
					end

					vRP.setSData(chestData, json.encode(items))
					return true
				end
			end
		end
	end
	return false
end

--[ TAKE CHEST ]----------------------------------------------------------------------------------------------------------------------------------------

function vRP.tryChestItem(user_id, chestData, itemName, amount)
	if actived[user_id] == nil then
		actived[user_id] = 1
		local data = vRP.getSData(chestData)
		local items = json.decode(data) or {}
		if data and items ~= nil then
			if items[itemName] ~= nil and parseInt(items[itemName].amount) >= parseInt(amount) then

				if parseInt(amount) > 0 then
					activedAmount[user_id] = parseInt(amount)
				else
					return false
				end

				local new_weight = vRP.getInventoryWeight(parseInt(user_id)) +
					vRP.getItemWeight(itemName) * parseInt(activedAmount[user_id])
				if new_weight <= vRP.getInventoryMaxWeight(parseInt(user_id)) then
					vRP.giveInventoryItem(parseInt(user_id), itemName, parseInt(activedAmount[user_id]))

					items[itemName].amount = parseInt(items[itemName].amount) - parseInt(activedAmount[user_id])

					if parseInt(items[itemName].amount) <= 0 then
						items[itemName] = nil
					end

					vRP.setSData(chestData, json.encode(items))
					return true
				end
			end
		end
	end
	return false
end

function vRP.updateSlot(user_id, item, oldSlot, newSlot, amount)
	local inventory = vRP.getUserDataTable(user_id)
	local data = inventory.inventory
	if data and parseInt(amount) > -1 then
		local amountTotal = vRP.getInventoryItemAmountSlot(user_id, tostring(newSlot))
		local amountTotalAntiga = vRP.getInventoryItemAmountSlot(user_id, tostring(oldSlot))

		if data[tostring(newSlot)] then
			local entrada = data[tostring(newSlot)]
			if entrada.item == item then
				local fixo = vRP.getInventoryItemAmountSlot(user_id, tostring(newSlot))
				if parseInt(amount) <= parseInt(amountTotalAntiga) then
					data[tostring(oldSlot)].amount = parseInt(amountTotalAntiga) - parseInt(amount)
					data[tostring(newSlot)].amount = parseInt(amount) + parseInt(fixo)
				end
				if parseInt(data[tostring(oldSlot)].amount) <= 0 then
					data[tostring(oldSlot)] = nil
				end
			end
		else
			if parseInt(amountTotalAntiga) == parseInt(amount) then
				local temp = data[tostring(oldSlot)]
				data[tostring(oldSlot)] = data[tostring(newSlot)]
				data[tostring(newSlot)] = temp
			elseif parseInt(amountTotalAntiga) ~= parseInt(amount) then
				if parseInt(amount) <= parseInt(amountTotalAntiga) then
					data[tostring(oldSlot)].amount = parseInt(amountTotalAntiga) - parseInt(amount)
					data[tostring(newSlot)] = { item = item, amount = parseInt(amount) }
				end
			end
		end

	end
end

function vRP.getInventoryItemAmountSlot(user_id, slot)
	local data = vRP.getUserDataTable(user_id)
	if data and data.inventory then
		local item = data.inventory[slot]
		if item then
			return item.amount
		end
	end
	return 0
end
